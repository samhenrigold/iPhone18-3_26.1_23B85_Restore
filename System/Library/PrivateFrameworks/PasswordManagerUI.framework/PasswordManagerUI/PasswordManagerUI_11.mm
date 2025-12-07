uint64_t sub_21C839AC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  result = sub_21C839A24(*a1, a2, a3);
  v10 = result;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    return *(v7 + 16);
  }

  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v12 = *(v7 + 16);
    if (v11 == v12)
    {
      return v10;
    }

    v13 = 32 * result + 88;
    v25 = a1;
    while (v11 < v12)
    {
      v14 = v7 + v13;
      result = *(v7 + v13 - 24);
      if (result != a2 || *(v7 + v13 - 16) != a3)
      {
        result = sub_21CB86344();
        if ((result & 1) == 0)
        {
          if (v11 != v10)
          {
            if (v10 >= v12)
            {
              goto LABEL_24;
            }

            v16 = v7 + 32 + 32 * v10;
            v28 = *(v16 + 8);
            v29 = *v16;
            v27 = *(v16 + 16);
            v17 = *(v16 + 24);
            v18 = *(v14 - 16);
            v31 = *(v14 - 24);
            v30 = *(v7 + v13 - 8);
            v19 = *(v7 + v13);

            v26 = v17;

            v20 = v19;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_21CAA10B4(v7);
              v7 = result;
            }

            if (v10 >= *(v7 + 16))
            {
              goto LABEL_25;
            }

            v21 = v7 + 32 * v10;
            v22 = *(v21 + 56);
            *(v21 + 32) = v31;
            *(v21 + 40) = v18;
            *(v21 + 48) = v30;
            *(v21 + 56) = v20;

            if (v11 >= *(v7 + 16))
            {
              goto LABEL_26;
            }

            v23 = (v7 + v13);
            v24 = *(v7 + v13);
            *(v23 - 3) = v29;
            *(v23 - 2) = v28;
            *(v23 - 8) = v27;
            *v23 = v26;

            *v25 = v7;
          }

          ++v10;
        }
      }

      ++v11;
      v12 = *(v7 + 16);
      v13 += 32;
      if (v11 == v12)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Scene.pmDisableSceneRestoration()(uint64_t a1, uint64_t a2)
{
  v2 = sub_21CB83984();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB83974();
  sub_21CB84CD4();
  return (*(v3 + 8))(v5, v2);
}

void sub_21C839E10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v28 = a1;
  *(&v28 + 1) = a2;
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB84B34();
  v9 = sub_21CB83FB4();
  v11 = v10;
  v13 = v12;

  sub_21C74A72C(v4, v6, v8 & 1);

  sub_21CB83D64();
  v14 = sub_21CB84024();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_21C74A72C(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath(byte_21CBA7B08);
  sub_21CB85214();
  sub_21CB82AC4();
  *&v27[55] = v31;
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[7] = v28;
  *&v27[23] = v29;
  LOBYTE(v11) = v18 & 1;
  *&v27[39] = v30;
  v22 = sub_21CB83CE4();
  sub_21CB81F24();
  *(a3 + 105) = *&v27[64];
  *(a3 + 121) = *&v27[80];
  *(a3 + 137) = *&v27[96];
  *(a3 + 41) = *v27;
  *(a3 + 57) = *&v27[16];
  *(a3 + 73) = *&v27[32];
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v11;
  *(a3 + 24) = v20;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 152) = *(&v34 + 1);
  *(a3 + 89) = *&v27[48];
  *(a3 + 160) = v22;
  *(a3 + 168) = v23;
  *(a3 + 176) = v24;
  *(a3 + 184) = v25;
  *(a3 + 192) = v26;
  *(a3 + 200) = 0;
}

unint64_t sub_21C83A028()
{
  result = qword_27CDED830;
  if (!qword_27CDED830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED838, &qword_21CBA7B38);
    sub_21C83A0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED830);
  }

  return result;
}

unint64_t sub_21C83A0B4()
{
  result = qword_27CDED840;
  if (!qword_27CDED840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED848, &unk_21CBA7B40);
    sub_21C83A140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED840);
  }

  return result;
}

unint64_t sub_21C83A140()
{
  result = qword_27CDED850;
  if (!qword_27CDED850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED858, &qword_21CBB3E50);
    sub_21C83A1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED850);
  }

  return result;
}

unint64_t sub_21C83A1CC()
{
  result = qword_27CDED860;
  if (!qword_27CDED860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED860);
  }

  return result;
}

uint64_t sub_21C83A230@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(aX_36);
  swift_getKeyPath(aH_62);
  sub_21CB81DB4();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21C83A2B0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_getKeyPath(aX_36);
  swift_getKeyPath(aH_62);

  sub_21CB81DC4();
  sub_21C8185F8();
  swift_getKeyPath(byte_21CBA8220, v3, v2);
  swift_getKeyPath(byte_21CBA8248);

  return sub_21CB81DC4();
}

void *PMAccountsView.init()@<X0>(uint64_t a1@<X8>)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v30);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v30 - v6;
  KeyPath = swift_getKeyPath(asc_21CBA7B78, v5, v30);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v32);

  type metadata accessor for PMAccountsState(0);
  sub_21C705EB0(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v9 = sub_21CB82674();
  v11 = v10;

  *a1 = v9;
  *(a1 + 8) = v11;
  v12 = swift_getKeyPath(asc_21CBA7BA0);
  sub_21CB86544();
  sub_21C704000(v12, v32);

  type metadata accessor for PMTipsStore(0);
  sub_21C705EB0(&qword_27CDED870, type metadata accessor for PMTipsStore, &unk_21CBCD9D8);
  v13 = sub_21CB82674();
  v15 = v14;

  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  *(a1 + 32) = sub_21CB82B84();
  *(a1 + 40) = v16;
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  *(a1 + 48) = sub_21CB82B84();
  *(a1 + 56) = v17;
  v18 = swift_getKeyPath(byte_21CBA7BC0);
  sub_21CB86544();
  sub_21C7073E8(v18, v32);

  type metadata accessor for PMGroupsStore(0);
  sub_21C705EB0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v19 = sub_21CB82674();
  v21 = v20;

  *(a1 + 64) = v19;
  *(a1 + 72) = v21;
  LOBYTE(v31) = 0;
  sub_21CB84D44();
  v22 = v33;
  *(a1 + 80) = v32;
  *(a1 + 88) = v22;
  v23 = type metadata accessor for PMAccountsView(0);
  v24 = sub_21CB85C44();
  v25 = *(*(v24 - 8) + 56);
  v25(v7, 1, 1, v24);
  sub_21C6EDBAC(v7, v3, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CB84D44();
  sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
  v26 = a1 + *(v23 + 44);
  *(v26 + 8) = 0;
  v27 = (a1 + *(v23 + 48));
  v25(v7, 1, 1, v24);
  type metadata accessor for PMGroupInvitationsListModel(0);
  swift_allocObject();
  v31 = sub_21C9C6E08(v7);
  result = sub_21CB84D44();
  v29 = v33;
  *v27 = v32;
  v27[1] = v29;
  return result;
}

uint64_t PMAccountsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v150 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED878, &unk_21CBAA6A0);
  MEMORY[0x28223BE20](v2 - 8);
  v149 = &v123 - v3;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED880, &qword_21CBA7C10);
  MEMORY[0x28223BE20](v148);
  v161 = &v123 - v4;
  v147 = type metadata accessor for PMAccountsView(0);
  v163 = *(v147 - 8);
  v138 = *(v163 + 64);
  MEMORY[0x28223BE20](v147);
  v153 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_21CB81024();
  v166 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_21CB830D4();
  v152 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v151 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB83554();
  v129 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_21CB83584();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED888, &qword_21CBA7C18);
  v130 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v14 = &v123 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED890, &qword_21CBA7C20);
  v139 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v124 = &v123 - v15;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED898, &qword_21CBA7C28);
  MEMORY[0x28223BE20](v135);
  v131 = &v123 - v16;
  v136 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8A0, &qword_21CBA7C30) - 8);
  MEMORY[0x28223BE20](v136);
  v164 = &v123 - v17;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8A8, &qword_21CBA7C38);
  MEMORY[0x28223BE20](v137);
  v154 = &v123 - v18;
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8B0, &qword_21CBA7C40);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v155 = &v123 - v19;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8B8, &qword_21CBA7C48);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v157 = &v123 - v20;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8C0, &qword_21CBA7C50);
  v142 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v158 = &v123 - v21;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8C8, &qword_21CBA7C58);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v143 = &v123 - v22;
  v168 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8D0, &qword_21CBA7C60);
  sub_21C6EADEC(&qword_27CDED8D8, &qword_27CDED8D0, &qword_21CBA7C60, MEMORY[0x277CE14C0]);
  v23 = v14;
  sub_21CB83EF4();
  v24 = v1;
  v25 = *(v1 + 56);
  v127 = *(v1 + 48);
  v126 = v25;
  v125 = type metadata accessor for PMAccountsListModel(0);
  v123 = sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  sub_21CB82B54();
  swift_getKeyPath(aX_36);
  sub_21CB82B74();

  sub_21CB83544();
  v26 = v12;
  sub_21CB83534();
  (*(v129 + 8))(v10, v8);
  v27 = sub_21C6EADEC(&qword_27CDED8E0, &qword_27CDED888, &qword_21CBA7C18, MEMORY[0x277CDE580]);
  v28 = v128;
  v29 = v124;
  sub_21CB84114();

  (*(v132 + 8))(v26, v133);
  (*(v130 + 8))(v23, v28);
  v167 = v24;
  v30 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8E8, &qword_21CBA7C90);
  v169 = v28;
  v170 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8F0, &qword_21CBA7C98);
  v32 = sub_21C8435A8();
  v169 = v31;
  v170 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v131;
  v34 = v134;
  sub_21CB84894();
  v139[1](v29, v34);
  v35 = v151;
  sub_21CB830A4();
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED920, &qword_21CBA7CB0) + 36);
  v37 = v152;
  v38 = v165;
  (*(v152 + 16))(v33 + v36, v35, v165);
  v39 = v37;
  v40 = *(v37 + 56);
  v40(v33 + v36, 0, 1, v38);
  KeyPath = swift_getKeyPath(byte_21CBA7CB8);
  v42 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED928, &unk_21CBA7CE8) + 36));
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v39 + 32))(v42 + v43, v35, v38);
  v40(v42 + v43, 0, 1, v38);
  *v42 = KeyPath;
  v45 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED930, &qword_21CBA7D28) + 36));
  *v45 = v44;
  v45[1] = 0x4049000000000000;
  v46 = swift_getKeyPath(byte_21CBA7D30);
  v47 = (v33 + *(v135 + 36));
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  sub_21CB82B54();
  swift_getKeyPath(aX_18);
  sub_21CB82B74();

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v49 - 8) + 56))(v47 + v48, 0, 1, v49);
  *v47 = v46;
  v50 = v159;
  sub_21CB81014();
  v51 = sub_21CB81004();
  v53 = v52;
  v54 = *(v166 + 8);
  v166 += 8;
  v139 = v54;
  (v54)(v50, v160);
  v177 = v51;
  v178 = v53;
  v55 = *(v30 + 88);
  LOBYTE(v179) = *(v30 + 80);
  v180 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  sub_21C843A80();
  v165 = sub_21C71F3FC();
  v56 = v164;
  sub_21CB84754();

  sub_21C6EA794(v33, &qword_27CDED898, &qword_21CBA7C28);
  v162 = v30;
  swift_getKeyPath(aH_35);
  swift_getKeyPath(asc_21CBA7DC8);
  sub_21CB81DB4();

  v57 = v169;
  v58 = v153;
  sub_21C84467C(v30, v153, type metadata accessor for PMAccountsView);
  v59 = *(v163 + 80);
  v60 = (v59 + 16) & ~v59;
  v61 = v60 + v138;
  v62 = swift_allocObject();
  sub_21C844998(v58, v62 + v60, type metadata accessor for PMAccountsView);
  v63 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED980, &qword_21CBA7DF0) + 36));
  *v63 = v57;
  v63[1] = sub_21C843E74;
  v63[2] = v62;
  swift_getKeyPath(byte_21CBA7DF8);
  swift_getKeyPath(byte_21CBA7E20);
  sub_21CB81DB4();

  LOBYTE(v62) = v169;
  v64 = v162;
  sub_21C84467C(v162, v58, type metadata accessor for PMAccountsView);
  v65 = swift_allocObject();
  sub_21C844998(v58, v65 + v60, type metadata accessor for PMAccountsView);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED988, &qword_21CBA7E40);
  v67 = v164;
  v68 = v164 + *(v66 + 36);
  *v68 = v62;
  *(v68 + 8) = sub_21C843EE4;
  *(v68 + 16) = v65;
  sub_21C84467C(v64, v58, type metadata accessor for PMAccountsView);
  v152 = v59;
  v163 = v61;
  v69 = swift_allocObject();
  v70 = v69 + v60;
  v71 = v58;
  sub_21C844998(v58, v70, type metadata accessor for PMAccountsView);
  v72 = (v67 + *(v136 + 11));
  *v72 = sub_21C843EE8;
  v72[1] = v69;
  v72[2] = 0;
  v72[3] = 0;
  v73 = *(v64 + 32);
  v138 = *(v64 + 40);
  if (v73)
  {
    swift_getKeyPath(byte_21CBA7E48);
    swift_getKeyPath(byte_21CBA7E70);
    v74 = v154;
    v75 = v154 + *(v137 + 9);
    v76 = v73;
    v135 = v73;
    v77 = v76;
    sub_21CB81DB4();

    v137 = type metadata accessor for PMAccountsView;
    sub_21C84467C(v64, v71, type metadata accessor for PMAccountsView);
    v78 = swift_allocObject();
    v151 = ((v59 + 16) & ~v59);
    v136 = type metadata accessor for PMAccountsView;
    sub_21C844998(v71, &v151[v78], type metadata accessor for PMAccountsView);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED990, &qword_21CBA7E90);
    v80 = (v75 + *(v79 + 36));
    *v80 = sub_21C844CA4;
    v80[1] = v78;
    sub_21C716934(v164, v74, &qword_27CDED8A0, &qword_21CBA7C30);
    swift_getKeyPath(byte_21CBA7E98);
    swift_getKeyPath(asc_21CBA7EC0);
    v81 = v155;
    v82 = &v155[*(OpaqueTypeConformance2 + 36)];
    v83 = v77;
    sub_21CB81DB4();

    sub_21C84467C(v162, v71, type metadata accessor for PMAccountsView);
    v84 = swift_allocObject();
    sub_21C844998(v71, &v151[v84], type metadata accessor for PMAccountsView);
    v85 = &v82[*(v79 + 36)];
    *v85 = sub_21C843F44;
    v85[1] = v84;
    sub_21C716934(v154, v81, &qword_27CDED8A8, &qword_21CBA7C38);
    swift_getKeyPath(aH_36);
    swift_getKeyPath(asc_21CBA7F08);
    v86 = v83;
    sub_21CB81DB4();

    v87 = sub_21C7C2A6C(v169);
    v89 = v88;

    v177 = v87;
    v178 = v89;
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    v90 = sub_21CB82B54();
    swift_getKeyPath(byte_21CBA7F28);
    sub_21CB82B74();

    v164 = sub_21C843FB4();
    v91 = OpaqueTypeConformance2;
    v92 = v155;
    sub_21CB84754();

    sub_21C6EA794(v92, &qword_27CDED8B0, &qword_21CBA7C40);
    swift_getKeyPath(byte_21CBA7F60);
    swift_getKeyPath(byte_21CBA7F88);
    v93 = v86;
    sub_21CB81DB4();

    v94 = sub_21C7C2A6C(v169);
    v96 = v95;

    v179 = v94;
    v180 = v96;
    v97 = sub_21CB82B54();
    swift_getKeyPath(byte_21CBA7FA8);
    sub_21CB82B74();

    v169 = v91;
    v98 = MEMORY[0x277D837D0];
    v170 = MEMORY[0x277D837D0];
    v99 = MEMORY[0x277CE1428];
    v171 = MEMORY[0x277CE1428];
    v172 = MEMORY[0x277CE0BD8];
    v173 = v164;
    v100 = v165;
    v174 = v165;
    v175 = MEMORY[0x277CE1410];
    v176 = MEMORY[0x277CE0BC8];
    v164 = MEMORY[0x277CDEDF8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v101 = v100;
    v102 = v99;
    v103 = v141;
    v104 = v157;
    sub_21CB84754();

    (*(v140 + 8))(v104, v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
    v105 = v162;
    sub_21CB84D74();
    v106 = v153;
    sub_21C84467C(v105, v153, v137);
    v107 = swift_allocObject();
    sub_21C844998(v106, &v151[v107], v136);
    swift_getKeyPath(byte_21CBA7FD0);
    v108 = v149;
    sub_21CB84F44();

    v109 = swift_allocObject();
    *(v109 + 16) = sub_21C8443A0;
    *(v109 + 24) = v107;
    v163 = _s19IdentifiableGroupIDVMa(0);

    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED9E8, &qword_21CBA7FF8);
    v169 = v103;
    v170 = v98;
    v171 = v102;
    v172 = MEMORY[0x277CE0BD8];
    v173 = OpaqueTypeConformance2;
    v174 = v101;
    v175 = MEMORY[0x277CE1410];
    v176 = MEMORY[0x277CE0BC8];
    v111 = swift_getOpaqueTypeConformance2();
    v121 = sub_21C705EB0(&qword_27CDED9F0, _s19IdentifiableGroupIDVMa, &unk_21CBB32D4);
    v122 = sub_21C844448();
    v112 = v143;
    v113 = v144;
    v114 = v158;
    sub_21CB847C4();

    sub_21C6EA794(v108, &qword_27CDED878, &unk_21CBAA6A0);
    sub_21C6EA794(v161, &qword_27CDED880, &qword_21CBA7C10);
    (*(v142 + 8))(v114, v113);
    v115 = v159;
    sub_21CB81014();
    v116 = sub_21CB81004();
    v118 = v117;
    (v139)(v115, v160);
    v177 = v116;
    v178 = v118;
    v169 = v113;
    v170 = v163;
    v171 = v110;
    v172 = v111;
    v173 = v121;
    v174 = v122;
    swift_getOpaqueTypeConformance2();
    v119 = v146;
    sub_21CB842F4();

    return (*(v145 + 8))(v112, v119);
  }

  else
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83C334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAC0, &qword_21CBA8300);
  v85 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v80 = &v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAC8, &qword_21CBA8308);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v86 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAD0, &qword_21CBA8310);
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x28223BE20](v9);
  v87 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v73 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAD8, &qword_21CBA8318);
  v82 = *(v14 - 8);
  v83 = v14;
  MEMORY[0x28223BE20](v14);
  v79 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAE0, &qword_21CBA8320);
  MEMORY[0x28223BE20](v16 - 8);
  v78 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  MEMORY[0x28223BE20](v21);
  v76 = &v73 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAE8, &qword_21CBA8328);
  MEMORY[0x28223BE20](v23 - 8);
  v77 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v92 = &v73 - v26;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAF0, &qword_21CBA8330);
  v27 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v81 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v73 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAF8, &qword_21CBA8338);
  MEMORY[0x28223BE20](v32 - 8);
  v84 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v35 = MEMORY[0x28223BE20](v34).n128_u64[0];
  v95 = &v73 - v36;
  v93 = a1;
  if (*(a1 + 48))
  {
    swift_getKeyPath(aX_36, v35);
    swift_getKeyPath(aH_62);

    sub_21CB81DB4();

    v38 = v96;
    v37 = v97;

    v39 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v39 = v38 & 0xFFFFFFFFFFFFLL;
    }

    v40 = 1;
    v94 = v13;
    if (!v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB38, &qword_21CBA8358);
      sub_21C6EADEC(&qword_27CDEDB40, &qword_27CDEDB38, &qword_21CBA8358, MEMORY[0x277CE14C0]);
      sub_21CB85054();
      v41 = v93;
      sub_21C83CF68(v92);
      v42 = sub_21C84170C();
      v74 = v3;
      if (v42)
      {
        MEMORY[0x28223BE20](v42);
        *(&v73 - 2) = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB58, &unk_21CBA8370);
        sub_21C6EADEC(&qword_27CDEDB60, &qword_27CDEDB58, &unk_21CBA8370, MEMORY[0x277CE14C0]);
        sub_21CB85054();
        v43 = 0;
      }

      else
      {
        v43 = 1;
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB48, &qword_21CBA8360);
      (*(*(v44 - 8) + 56))(v20, v43, 1, v44);
      v45 = v76;
      sub_21C716934(v20, v76, &qword_27CDEDAE0, &qword_21CBA8320);
      v46 = *(v27 + 16);
      v47 = v81;
      v73 = v31;
      v48 = v31;
      v49 = v75;
      v46(v81, v48, v75);
      v50 = v77;
      sub_21C6EDBAC(v92, v77, &qword_27CDEDAE8, &qword_21CBA8328);
      v51 = v78;
      sub_21C6EDBAC(v45, v78, &qword_27CDEDAE0, &qword_21CBA8320);
      v52 = v79;
      v46(v79, v47, v49);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB50, &qword_21CBA8368);
      sub_21C6EDBAC(v50, v52 + *(v53 + 48), &qword_27CDEDAE8, &qword_21CBA8328);
      sub_21C6EDBAC(v51, v52 + *(v53 + 64), &qword_27CDEDAE0, &qword_21CBA8320);
      sub_21C6EA794(v45, &qword_27CDEDAE0, &qword_21CBA8320);
      sub_21C6EA794(v92, &qword_27CDEDAE8, &qword_21CBA8328);
      v54 = *(v27 + 8);
      v54(v73, v49);
      sub_21C6EA794(v51, &qword_27CDEDAE0, &qword_21CBA8320);
      sub_21C6EA794(v50, &qword_27CDEDAE8, &qword_21CBA8328);
      v54(v81, v49);
      sub_21C716934(v52, v95, &qword_27CDEDAD8, &qword_21CBA8318);
      v40 = 0;
      v3 = v74;
      v13 = v94;
    }

    (*(v82 + 56))(v95, v40, 1, v83);
    v55 = v93;
    v56 = sub_21C83D2A0();
    v96 = 0;
    LOBYTE(v97) = (v56 & 1) == 0;
    BYTE1(v97) = v56 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB00, &qword_21CBA8340);
    sub_21C844858();
    sub_21C8448AC();
    sub_21CB85064();
    v57 = sub_21C83D2A0();
    if (v57)
    {
      MEMORY[0x28223BE20](v57);
      *(&v73 - 2) = v55;
      v96 = 0;
      LOBYTE(v97) = 1;
      type metadata accessor for PMGeneratedPasswordsSearchResultsRow(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB20, &qword_21CBA8348);
      sub_21C705EB0(&qword_27CDEDB30, type metadata accessor for PMGeneratedPasswordsSearchResultsRow, &unk_21CBB8038);
      sub_21C6EADEC(&qword_27CDEDB18, &qword_27CDEDB20, &qword_21CBA8348, MEMORY[0x277CE14C0]);
      v58 = v80;
      sub_21CB85064();
      v59 = v85;
      v60 = v86;
      (*(v85 + 32))(v86, v58, v3);
      (*(v59 + 56))(v60, 0, 1, v3);
    }

    else
    {
      v60 = v86;
      (*(v85 + 56))(v86, 1, 1, v3);
    }

    v61 = v84;
    sub_21C6EDBAC(v95, v84, &qword_27CDEDAF8, &qword_21CBA8338);
    v63 = v87;
    v62 = v88;
    v64 = *(v88 + 16);
    v65 = v13;
    v66 = v89;
    v64(v87, v65, v89);
    v67 = v90;
    sub_21C6EDBAC(v60, v90, &qword_27CDEDAC8, &qword_21CBA8308);
    v68 = v91;
    sub_21C6EDBAC(v61, v91, &qword_27CDEDAF8, &qword_21CBA8338);
    v69 = v60;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB28, &qword_21CBA8350);
    v64((v68 + *(v70 + 48)), v63, v66);
    sub_21C6EDBAC(v67, v68 + *(v70 + 64), &qword_27CDEDAC8, &qword_21CBA8308);
    sub_21C6EA794(v69, &qword_27CDEDAC8, &qword_21CBA8308);
    v71 = *(v62 + 8);
    v71(v94, v66);
    sub_21C6EA794(v95, &qword_27CDEDAF8, &qword_21CBA8338);
    sub_21C6EA794(v67, &qword_27CDEDAC8, &qword_21CBA8308);
    v71(v63, v66);
    return sub_21C6EA794(v61, &qword_27CDEDAF8, &qword_21CBA8338);
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83CF68@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBF0, &qword_21CBA84B0);
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v10 - v5;
  swift_getKeyPath(byte_21CBA84B8, v4);
  swift_getKeyPath(byte_21CBA84E0);
  sub_21CB81DB4();

  v20 = v14;
  v21 = v15;
  v22 = v16;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  if (*(&v11 + 1))
  {
    *&v11 = v17;
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v13 = v19;
    v12 = v18;
    MEMORY[0x28223BE20](v7);
    *(&v10 - 2) = &v11;
    type metadata accessor for PMTipView(0);
    sub_21C705EB0(&qword_27CDEDBF8, type metadata accessor for PMTipView, &unk_21CBCDCB4);
    sub_21CB85054();
    sub_21C6EA794(&v17, &unk_27CDED230, &unk_21CBA6460);
    (*(v3 + 32))(a1, v6, v2);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return (*(v3 + 56))(a1, v8, 1, v2);
}

uint64_t sub_21C83D1D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  v2 = sub_21CB82B84();
  v4 = v3;
  v5 = [objc_opt_self() safari_browserDefaults];
  result = sub_21CB81E74();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  return result;
}

uint64_t sub_21C83D2A0()
{
  if (*(v0 + 48))
  {
    swift_getKeyPath(aX_36);
    swift_getKeyPath(aH_62);

    sub_21CB81DB4();

    v1 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v1 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    return v1 != 0;
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83D3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48))
  {
    swift_getKeyPath(aX_36);
    swift_getKeyPath(aH_62);

    sub_21CB81DB4();

    *(a2 + 24) = 0;
    v3 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow(0);
    v4 = v3[6];
    *(a2 + v4) = swift_getKeyPath(aH_63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    v5 = (a2 + v3[7]);
    *v5 = v9;
    v5[1] = v10;
    type metadata accessor for PMGeneratedPasswordsSearchResultsModel();
    swift_allocObject();

    sub_21C7D56B0(v9, v10);
    sub_21C705EB0(&qword_27CDEDC18, type metadata accessor for PMGeneratedPasswordsSearchResultsModel, &unk_21CBA2038);
    result = sub_21CB82674();
    *a2 = result;
    *(a2 + 8) = v7;
    v8 = (a2 + v3[8]);
    *v8 = nullsub_1;
    v8[1] = 0;
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83D594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA78, &qword_21CBC1740);
  MEMORY[0x28223BE20](v56);
  v54 = &v50 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED918, &qword_21CBC1710);
  v62 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v50 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA88, &qword_21CBAEF10);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v50 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA90, &unk_21CBA81F0);
  v52 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v51 = &v50 - v8;
  v9 = sub_21CB83604();
  MEMORY[0x28223BE20](v9 - 8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED900, &unk_21CBA7CA0);
  v50 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v11 = &v50 - v10;
  v12 = sub_21CB85114();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8F0, &qword_21CBA7C98);
  *&v19 = MEMORY[0x28223BE20](v65).n128_u64[0];
  v63 = &v50 - v20;
  v21 = a1;
  if (*(a1 + 48))
  {
    swift_getKeyPath(aX_18, v19);
    swift_getKeyPath(aP_48);

    sub_21CB81DB4();

    (*(v13 + 104))(v15, *MEMORY[0x277CDF0D8], v12);
    v22 = sub_21CB850F4();
    v23 = *(v13 + 8);
    v23(v15, v12);
    v23(v18, v12);
    if (v22)
    {
      v24 = sub_21CB835A4();
      MEMORY[0x28223BE20](v24);
      *(&v50 - 2) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAA8, &qword_21CBA8210);
      sub_21C6EADEC(&qword_27CDEDAB0, &qword_27CDEDAA8, &qword_21CBA8210, MEMORY[0x277CE14C0]);
      sub_21CB82AA4();
      v25 = sub_21C6EADEC(&qword_27CDED908, &qword_27CDED900, &unk_21CBA7CA0, MEMORY[0x277CDDB60]);
      v26 = v51;
      v27 = v64;
      MEMORY[0x21CF131E0](v11, v64, v25);
      v69 = v27;
      v70 = v25;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v29 = sub_21C6EADEC(&qword_27CDED910, &qword_27CDED918, &qword_21CBC1710, MEMORY[0x277CDDF68]);
      v30 = v63;
      v31 = v66;
      MEMORY[0x21CF131F0](v26, v66, v67, OpaqueTypeConformance2, v29);
      (*(v52 + 8))(v26, v31);
      (*(v50 + 8))(v11, v27);
    }

    else
    {
      v32 = sub_21CB83594();
      MEMORY[0x28223BE20](v32);
      v33 = v21;
      *(&v50 - 2) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
      sub_21C844588();
      v34 = v53;
      sub_21CB82194();
      v35 = sub_21CB835A4();
      MEMORY[0x28223BE20](v35);
      *(&v50 - 2) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
      sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
      v36 = v58;
      sub_21CB82194();
      v37 = v55;
      v38 = *(v56 + 48);
      v39 = v54;
      v40 = v57;
      (*(v55 + 16))(v54, v34, v57);
      v42 = v59;
      v41 = v60;
      (*(v59 + 16))(&v39[v38], v36, v60);
      v43 = v61;
      sub_21CB83394();
      v44 = sub_21C6EADEC(&qword_27CDED908, &qword_27CDED900, &unk_21CBA7CA0, MEMORY[0x277CDDB60]);
      v69 = v64;
      v70 = v44;
      v45 = swift_getOpaqueTypeConformance2();
      v46 = sub_21C6EADEC(&qword_27CDED910, &qword_27CDED918, &qword_21CBC1710, MEMORY[0x277CDDF68]);
      v30 = v63;
      v47 = v67;
      MEMORY[0x21CF13200](v43, v66, v67, v45, v46);
      (*(v62 + 8))(v43, v47);
      (*(v42 + 8))(v36, v41);
      (*(v37 + 8))(v34, v40);
    }

    v48 = sub_21C8435A8();
    MEMORY[0x21CF131E0](v30, v65, v48);
    return sub_21C6EA794(v30, &qword_27CDED8F0, &qword_21CBA7C98);
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83DF80@<X0>(_OWORD *a2@<X8>)
{
  v3 = type metadata accessor for PMAccountsListOverflowButton(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  sub_21C815BC4(&v19);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  sub_21CB82B54();
  swift_getKeyPath(aX_18);
  sub_21CB82B74();

  *v8 = sub_21CB82B84();
  *(v8 + 1) = v9;
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  *(v8 + 2) = sub_21CB82B84();
  *(v8 + 3) = v10;
  LOBYTE(v25[0]) = 0;
  sub_21CB84D44();
  v11 = *(&v26[0] + 1);
  v8[32] = v26[0];
  *(v8 + 5) = v11;
  sub_21C84467C(v8, v5, type metadata accessor for PMAccountsListOverflowButton);
  v12 = v22;
  v25[2] = v21;
  v25[3] = v22;
  v13 = v23;
  v14 = v24;
  v25[4] = v23;
  v25[5] = v24;
  v15 = v19;
  v16 = v20;
  v25[0] = v19;
  v25[1] = v20;
  a2[2] = v21;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  *a2 = v15;
  a2[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAB8, &qword_21CBA8218);
  sub_21C84467C(v5, a2 + *(v17 + 48), type metadata accessor for PMAccountsListOverflowButton);
  sub_21C8155F0(v25, v26);
  sub_21C8446E4(v8, type metadata accessor for PMAccountsListOverflowButton);
  sub_21C8446E4(v5, type metadata accessor for PMAccountsListOverflowButton);
  v26[2] = v21;
  v26[3] = v22;
  v26[4] = v23;
  v26[5] = v24;
  v26[0] = v19;
  v26[1] = v20;
  return sub_21C844744(v26);
}

uint64_t sub_21C83E238(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21CB85114();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath(aX_18);
  swift_getKeyPath(aP_48);
  (v11)(v6, v10, v3);

  sub_21CB81DC4();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_21C83E3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for PMAccountsView(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v24 - v10;
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v28 = v12;
  v29 = v14;
  sub_21C84467C(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountsView);
  v15 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v16 = swift_allocObject();
  sub_21C844998(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PMAccountsView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  if (*(a1 + 48))
  {
    swift_getKeyPath(byte_21CBA8220);
    swift_getKeyPath(byte_21CBA8248);

    sub_21CB81DB4();

    v17 = *(v28 + 16);

    v18 = v17 == 0;
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v21 = v27;
    (*(v9 + 32))(v27, v11, v26);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
    v23 = (v21 + *(result + 36));
    *v23 = KeyPath;
    v23[1] = sub_21C735744;
    v23[2] = v20;
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83E788(uint64_t a1)
{
  if (*(a1 + 48))
  {
    swift_getKeyPath(byte_21CBA8220);
    swift_getKeyPath(byte_21CBA8248);

    sub_21CB81DB4();

    v1 = sub_21C818A9C(v3);

    sub_21C87E898(v1);
    swift_getKeyPath(byte_21CBA8298);
    swift_getKeyPath(byte_21CBA82C0);
    return sub_21CB81DC4();
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83E8DC(uint64_t a1)
{
  v2 = type metadata accessor for PMAccountsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v15[0] = v9;
  v15[1] = v11;
  sub_21C84467C(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountsView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_21C844998(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PMAccountsView);
  sub_21C71F3FC();
  return sub_21CB84DE4();
}

uint64_t sub_21C83EAF4(uint64_t a1)
{
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C83EB60(uint64_t a1)
{
  v2 = sub_21CB85114();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - v7;
  if (*(a1 + 48))
  {
    (*(v3 + 104))(&v11 - v7, *MEMORY[0x277CDF0D8], v2, v8);
    swift_getKeyPath(aX_18);
    swift_getKeyPath(aP_48);
    (*(v3 + 16))(v5, v9, v2);

    sub_21CB81DC4();
    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83EDDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C83EF08(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA50, &unk_21CBA8100);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = v59 - v5;
  v65 = type metadata accessor for PMSystemSettingsNavigationDestination(0);
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v67 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = v59 - v9;
  v10 = type metadata accessor for PMSharingGroup(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB85C44();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v73 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = v59 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v59 - v20;
  v22 = *a1;
  v23 = *(*a1 + 16);
  v24 = MEMORY[0x277D84F90];
  v77 = v15;
  v66 = a2;
  v63 = v22;
  v69 = v6;
  if (v23)
  {
    v78 = MEMORY[0x277D84F90];
    sub_21C7B0BC8(0, v23, 0);
    v24 = v78;
    v25 = v11;
    v26 = v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v76 = *(v25 + 72);
    v27 = (v15 + 16);
    do
    {
      sub_21C84467C(v26, v13, type metadata accessor for PMSharingGroup);
      (*v27)(v21, v13, v14);
      sub_21C8446E4(v13, type metadata accessor for PMSharingGroup);
      v78 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_21C7B0BC8((v28 > 1), v29 + 1, 1);
        v24 = v78;
      }

      *(v24 + 16) = v29 + 1;
      v15 = v77;
      (*(v77 + 32))(v24 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v77 + 72) * v29, v21, v14);
      v26 += v76;
      --v23;
    }

    while (v23);
    a2 = v66;
    v6 = v69;
  }

  v76 = sub_21CB00D70(v24);

  v30 = a2[4];
  v31 = v67;
  v32 = v75;
  if (!v30)
  {
LABEL_32:
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
    return result;
  }

  swift_getKeyPath(byte_21CBA8110);
  v33 = v30;
  sub_21CB81DB4();

  v62 = v33;

  v34 = v78;
  v70 = *(v78 + 16);
  if (!v70)
  {

    v35 = 0;
    v38 = v34;
    if (*(v34 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v35 = 0;
  v71 = v78 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v60 = v78;
  v61 = (v15 + 32);
  v74 = v76 + 56;
  v72 = v15 + 16;
  v36 = (v15 + 8);
  v59[1] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37 = v68;
  v38 = v78;
  while (1)
  {
    if (v35 >= *(v38 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    sub_21C84467C(v71 + *(v6 + 72) * v35, v37, type metadata accessor for PMSystemSettingsNavigationDestination);
    sub_21C84467C(v37, v31, type metadata accessor for PMSystemSettingsNavigationDestination);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    sub_21C8446E4(v37, type metadata accessor for PMSystemSettingsNavigationDestination);
    v39 = v31;
LABEL_20:
    sub_21C8446E4(v39, type metadata accessor for PMSystemSettingsNavigationDestination);
    if (++v35 == v70)
    {

      v35 = v70;
      goto LABEL_23;
    }
  }

  (*v61)(v32, v31, v14);
  if (*(v76 + 16))
  {
    sub_21C705EB0(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
    v40 = sub_21CB85484();
    v41 = v76;
    v42 = -1 << *(v76 + 32);
    v43 = v40 & ~v42;
    if ((*(v74 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
    {
      v44 = ~v42;
      v45 = *(v77 + 72);
      v46 = *(v77 + 16);
      while (1)
      {
        v47 = v73;
        v46(v73, *(v41 + 48) + v45 * v43, v14);
        sub_21C705EB0(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
        v48 = sub_21CB85574();
        v49 = *v36;
        (*v36)(v47, v14);
        if (v48)
        {
          break;
        }

        v43 = (v43 + 1) & v44;
        v41 = v76;
        if (((*(v74 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
        {
          v37 = v68;
          v6 = v69;
          v38 = v60;
          v49(v75, v14);
          goto LABEL_22;
        }
      }

      v32 = v75;
      v49(v75, v14);
      v37 = v68;
      v6 = v69;
      v39 = v68;
      v31 = v67;
      v38 = v60;
      goto LABEL_20;
    }
  }

  (*v36)(v32, v14);
LABEL_22:
  sub_21C8446E4(v37, type metadata accessor for PMSystemSettingsNavigationDestination);

LABEL_23:
  a2 = v66;
  v50 = *(v38 + 16);
  if (v50 < v35)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v50 == v35)
  {
    goto LABEL_26;
  }

LABEL_25:
  sub_21CAC8DB4(v38, v38 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, (2 * v35) | 1);
  v52 = v51;

  v38 = v52;
LABEL_26:
  swift_getKeyPath(byte_21CBA8110);
  v78 = v38;
  sub_21CB81DC4();
  v53 = (a2[3] + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider);
  v54 = v53[3];
  v55 = v53[4];
  __swift_project_boxed_opaque_existential_0(v53, v54);
  (*(v55 + 40))(v54, v55);
  sub_21C83F7E0();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v57 = v64;
  (*(*(v56 - 8) + 56))(v64, 1, 1, v56);
  sub_21C83FF40(v57, v63);
  return sub_21C6EA794(v57, &qword_27CDEDA50, &unk_21CBA8100);
}

uint64_t sub_21C83F7E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = sub_21CB85C44();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBA7DF8, v12);
  swift_getKeyPath(byte_21CBA7E20);
  sub_21CB81DB4();

  if (v42 == 1)
  {
    v40 = v3;
    v16 = *(v0 + 32);
    if (v16)
    {
      v17 = v10;
      swift_getKeyPath(byte_21CBA7E48);
      swift_getKeyPath(byte_21CBA7E70);
      v18 = v16;
      sub_21CB81DB4();

      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        return sub_21C6EA794(v9, &unk_27CDF20B0, &unk_21CBA0090);
      }

      else
      {
        v19 = v14;
        (*(v11 + 32))(v14, v9, v17);
        swift_getKeyPath(byte_21CBA8160);
        swift_getKeyPath(byte_21CBA8188);
        sub_21CB81DB4();

        v20 = sub_21C7A120C(v14, v42);

        if (v20)
        {
          v21 = *(v11 + 56);
          v38 = v17;
          v39 = v21;
          (v21)(v6, 1, 1, v17);
          swift_getKeyPath(byte_21CBA7E48);
          swift_getKeyPath(byte_21CBA7E70);
          v22 = v11;
          v23 = v40;
          v37 = v19;
          sub_21C6EDBAC(v6, v40, &unk_27CDF20B0, &unk_21CBA0090);
          v24 = v18;
          sub_21CB81DC4();
          sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
          swift_getKeyPath(byte_21CBA8110);
          v42 = MEMORY[0x277D84F90];
          v25 = v24;
          sub_21CB81DC4();
          v27 = v37;
          v26 = v38;
          (*(v22 + 16))(v6, v37, v38);
          (v39)(v6, 0, 1, v26);
          type metadata accessor for PMAccountsView(0);
          sub_21C6EDBAC(v6, v23, &unk_27CDF20B0, &unk_21CBA0090);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
          sub_21CB84D64();
          sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
          return (*(v22 + 8))(v27, v26);
        }

        else
        {
          swift_getKeyPath(aH_35);
          swift_getKeyPath(asc_21CBA7DC8);
          sub_21CB81DB4();

          LODWORD(v37) = sub_21C7A120C(v14, v42);

          (*(v11 + 56))(v6, 1, 1, v17);
          swift_getKeyPath(byte_21CBA7E48);
          swift_getKeyPath(byte_21CBA7E70);
          v39 = v11;
          sub_21C6EDBAC(v6, v40, &unk_27CDF20B0, &unk_21CBA0090);
          v28 = v18;
          sub_21CB81DC4();
          sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
          if (v37)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
            v29 = *(type metadata accessor for PMSystemSettingsNavigationDestination(0) - 8);
            v30 = v17;
            v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
            v32 = swift_allocObject();
            *(v32 + 16) = xmmword_21CBA0690;
            v33 = v39;
            v39[2](v32 + v31, v19, v30);
            swift_storeEnumTagMultiPayload();
            swift_getKeyPath(byte_21CBA8110);
            v42 = v32;
            v34 = v28;
            sub_21CB81DC4();
            return (v33[1])(v19, v30);
          }

          else
          {
            v35 = *(v0 + 88);
            LOBYTE(v42) = *(v0 + 80);
            v43 = v35;
            v41 = 1;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
            sub_21CB84D64();
            (v39[1])(v14, v17);
          }
        }
      }
    }

    else
    {
      type metadata accessor for PMPasswordManagerState(0);
      sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
      result = sub_21CB82B64();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21C83FF40(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PMSystemSettingsNavigationDestination(0);
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA58, &qword_21CBC6B90);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA50, &unk_21CBA8100);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - v17;
  v79 = sub_21CB85C44();
  v19 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v71 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v77 = v2;
  v78 = &v70 - v23;
  v80 = v19;
  if (a2)
  {
    v24 = a2;
  }

  else
  {
    swift_getKeyPath(aH_35, v22);
    swift_getKeyPath(asc_21CBA7DC8);
    sub_21CB81DB4();

    v19 = v80;

    v24 = v81[0];
  }

  sub_21C6EDBAC(a1, v14, &qword_27CDEDA50, &unk_21CBA8100);
  v25 = *(v16 + 48);
  if (v25(v14, 1, v15) != 1)
  {
    sub_21C716934(v14, v18, &unk_27CDF20B0, &unk_21CBA0090);

    goto LABEL_9;
  }

  v70 = v24;
  v73 = v11;
  v26 = *(v77 + 32);
  if (v26)
  {
    swift_getKeyPath(byte_21CBA7E98);
    swift_getKeyPath(asc_21CBA7EC0);

    v27 = v26;
    sub_21CB81DB4();

    v28 = v25(v14, 1, v15);
    v11 = v73;
    v19 = v80;
    v24 = v70;
    if (v28 != 1)
    {
      sub_21C6EA794(v14, &qword_27CDEDA50, &unk_21CBA8100);
    }

LABEL_9:
    v29 = v79;
    if ((*(v19 + 48))(v18, 1, v79) == 1)
    {

      return sub_21C6EA794(v18, &unk_27CDF20B0, &unk_21CBA0090);
    }

    v31 = *(v19 + 32);
    v32 = v78;
    v31(v78, v18, v29);
    v33 = sub_21C7A120C(v32, v24);

    if (!v33)
    {
      return (*(v19 + 8))(v32, v29);
    }

    v34 = *(v77 + 32);
    if (!v34)
    {
      goto LABEL_37;
    }

    swift_getKeyPath(byte_21CBA8110);
    v35 = v34;
    sub_21CB81DB4();

    v36 = *(v81[0] + 16);
    if (v36)
    {
      v37 = v75;
      v38 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v70 = *(v75 + 72);
      sub_21C84467C(v81[0] + v38 + v70 * (v36 - 1), v11, type metadata accessor for PMSystemSettingsNavigationDestination);

      (*(v37 + 56))(v11, 0, 1, v76);
      v39 = v74;
      sub_21C6EDBAC(v11, v74, &qword_27CDEDA58, &qword_21CBC6B90);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 6)
        {
          swift_getKeyPath(byte_21CBA8160);
          swift_getKeyPath(byte_21CBA8188);
          sub_21CB81DB4();

          MEMORY[0x28223BE20](v41);
          v42 = v78;
          *(&v70 - 2) = v78;
          sub_21CAE853C(sub_21C844560, (&v70 - 4), v43);
          v45 = *(v44 + 16);

          v46 = v70;
          v73 = v11;
          if (v45)
          {
LABEL_21:
            (*(v80 + 16))(v72, v42, v29);
            swift_storeEnumTagMultiPayload();
            swift_getKeyPath(byte_21CBA8110);
            v54 = v35;
            v55 = sub_21CB81DA4();
            v57 = v56;
            v58 = *v56;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v57 = v58;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v58 = sub_21CA4F6AC(0, v58[2] + 1, 1, v58);
              *v57 = v58;
            }

            v61 = v58[2];
            v60 = v58[3];
            if (v61 >= v60 >> 1)
            {
              v58 = sub_21CA4F6AC((v60 > 1), v61 + 1, 1, v58);
              *v57 = v58;
            }

            v62 = v78;
            v58[2] = v61 + 1;
            sub_21C844998(v72, v58 + v38 + v61 * v46, type metadata accessor for PMSystemSettingsNavigationDestination);
            v55(v81, 0);

            v11 = v73;
            v29 = v79;
            v63 = v80;
            goto LABEL_32;
          }

          swift_getKeyPath(byte_21CBA8110);
          v47 = v35;
          v48 = sub_21CB81DA4();
          v50 = *v49;
          if (*(*v49 + 16))
          {
            v42 = v48;
            v19 = v49;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v51 = v50[2];
              if (v51)
              {
LABEL_20:
                v52 = v51 - 1;
                sub_21C8446E4(v50 + v38 + (v51 - 1) * v46, type metadata accessor for PMSystemSettingsNavigationDestination);
                v50[2] = v52;
                *v19 = v50;
                v42(v81, 0);

                swift_getKeyPath(byte_21CBA8110);
                v53 = v47;
                sub_21CB81DB4();

                v42 = v78;
                v29 = v79;
                goto LABEL_21;
              }

              goto LABEL_35;
            }
          }

          else
          {
            __break(1u);
          }

          v50 = sub_21CAA112C(v50);
          v51 = v50[2];
          if (v51)
          {
            goto LABEL_20;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        sub_21C8446E4(v39, type metadata accessor for PMSystemSettingsNavigationDestination);
        v63 = v80;
        v62 = v78;
      }

      else
      {
        v77 = v38;
        v65 = v71;
        v31(v71, v39, v29);
        sub_21C705EB0(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
        v62 = v78;
        v66 = sub_21CB85574();
        v63 = v80;
        v67 = v65;
        v38 = v77;
        (*(v80 + 8))(v67, v29);
        if (v66)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {

      v64 = v75 + 56;
      (*(v75 + 56))(v11, 1, 1, v76);
      v38 = (*(v64 + 24) + 32) & ~*(v64 + 24);
      v63 = v80;
      v62 = v78;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_21CBA0690;
    (*(v63 + 16))(v68 + v38, v62, v29);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath(byte_21CBA8110);
    v81[0] = v68;
    v69 = v35;
    v63 = v80;
    sub_21CB81DC4();
LABEL_32:
    sub_21C6EA794(v11, &qword_27CDEDA58, &qword_21CBC6B90);
    return (*(v63 + 8))(v62, v29);
  }

LABEL_36:
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);

  sub_21CB82B64();
  __break(1u);
LABEL_37:
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  result = sub_21CB82B64();
  __break(1u);
  return result;
}

uint64_t sub_21C840AF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA50, &unk_21CBA8100);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_21C6EDBAC(a1, &v7 - v3, &unk_27CDF20B0, &unk_21CBA0090);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_21C83FF40(v4, 0);
  return sub_21C6EA794(v4, &qword_27CDEDA50, &unk_21CBA8100);
}

uint64_t sub_21C840C5C(char *a1, void **a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v7 = *a2;
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);
  v8 = v7;
  return sub_21CB81DC4();
}

uint64_t sub_21C840CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C840DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PMGroupInvitationSheetContent(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA38, &qword_21CBA8080);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28[-v11];
  v13 = (a2 + *(type metadata accessor for PMAccountsView(0) + 48));
  v15 = *v13;
  v14 = v13[1];
  v31 = v15;
  v32 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA40, &qword_21CBA8088);
  sub_21CB84D54();
  v16 = v30;
  swift_getKeyPath(aP_49);
  v31 = v16;
  sub_21C705EB0(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  v17 = *(v16 + 24);
  v29 = a1;

  sub_21C9691D4(sub_21C844540, v17, v12);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  if ((*(*(v18 - 8) + 48))(v12, 1, v18) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEDA38, &qword_21CBA8080);
    v19 = 1;
  }

  else
  {
    v20 = *&v12[*(v18 + 48)];
    sub_21C8446E4(v12, type metadata accessor for PMSharingGroup);
    v21 = sub_21CB85C44();
    (*(*(v21 - 8) + 16))(v9, a1, v21);
    *&v9[*(v6 + 20)] = v20;
    v22 = &v9[*(v6 + 24)];
    KeyPath = swift_getKeyPath(byte_21CBA7BC0);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7073E8(KeyPath, v31);

    type metadata accessor for PMGroupsStore(0);
    sub_21C705EB0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
    v24 = sub_21CB82674();
    v26 = v25;

    *v22 = v24;
    v22[1] = v26;
    sub_21C844998(v9, a3, type metadata accessor for PMGroupInvitationSheetContent);
    v19 = 0;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

uint64_t sub_21C8411EC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDC00, &qword_21CBA8508);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDC08, &qword_21CBA8510);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  type metadata accessor for PMSystemSettingsNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v15 = &v14[v9[21]];
  v15[8] = 0;
  v16 = &v14[v9[20]];
  *v16 = sub_21C8414B8;
  *(v16 + 1) = 0;
  v17 = &v14[v9[19]];
  *v17 = sub_21C844CA0;
  v17[1] = 0;
  swift_storeEnumTagMultiPayload();
  v18 = &v7[v2[21]];
  v18[8] = 0;
  v19 = &v7[v2[20]];
  *v19 = sub_21C8414BC;
  v19[1] = 0;
  v20 = &v7[v2[19]];
  *v20 = sub_21C8414C0;
  v20[1] = 0;
  sub_21C6EDBAC(v14, v11, &qword_27CDEDC08, &qword_21CBA8510);
  sub_21C6EDBAC(v7, v4, &qword_27CDEDC00, &qword_21CBA8508);
  v21 = v25;
  sub_21C6EDBAC(v11, v25, &qword_27CDEDC08, &qword_21CBA8510);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDC10, &qword_21CBA8518);
  sub_21C6EDBAC(v4, v21 + *(v22 + 48), &qword_27CDEDC00, &qword_21CBA8508);
  sub_21C6EA794(v7, &qword_27CDEDC00, &qword_21CBA8508);
  sub_21C6EA794(v14, &qword_27CDEDC08, &qword_21CBA8510);
  sub_21C6EA794(v4, &qword_27CDEDC00, &qword_21CBA8508);
  return sub_21C6EA794(v11, &qword_27CDEDC08, &qword_21CBA8510);
}

uint64_t sub_21C8414C0@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath(asc_21CBA8420);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_21C8414F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 88) = xmmword_21CBA7B60;
  *(a2 + 104) = 0;
  KeyPath = swift_getKeyPath(asc_21CBA7BA0);
  sub_21C844C40(a1, v13);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C704000(KeyPath, v13[0]);

  type metadata accessor for PMTipsStore(0);
  sub_21C705EB0(&qword_27CDED870, type metadata accessor for PMTipsStore, &unk_21CBCD9D8);
  v7 = sub_21CB82674();
  v9 = v8;

  *(a2 + 112) = v7;
  *(a2 + 120) = v9;
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  *(a2 + 128) = sub_21CB82B84();
  *(a2 + 136) = v10;
  sub_21CB84D44();
  v11 = v13[1];
  *(a2 + 144) = v13[0];
  *(a2 + 152) = v11;
  type metadata accessor for PMTipView(0);
  type metadata accessor for PMAppRootNavigationModel(0);
  sub_21C705EB0(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  return sub_21CB821F4();
}

BOOL sub_21C84170C()
{
  swift_getKeyPath(byte_21CBA83D0);
  swift_getKeyPath(asc_21CBA83F8);
  sub_21CB81DB4();

  v0 = *(v4 + 16);

  if (v0)
  {
    return 1;
  }

  swift_getKeyPath(byte_21CBA8160);
  swift_getKeyPath(byte_21CBA8188);
  sub_21CB81DB4();

  v1 = *(v4 + 16);

  if (v1)
  {
    return 1;
  }

  swift_getKeyPath(aH_35);
  swift_getKeyPath(asc_21CBA7DC8);
  sub_21CB81DB4();

  v3 = *(v4 + 16);

  return v3 != 0;
}

uint64_t sub_21C841848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB68, &qword_21CBB8730);
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v87 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB70, &qword_21CBA8380);
  MEMORY[0x28223BE20](v5 - 8);
  v96 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v99 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB78, &qword_21CBA8388);
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x28223BE20](v9);
  v86 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB80, &qword_21CBA8390);
  v84 = *(v11 - 8);
  v85 = v11;
  MEMORY[0x28223BE20](v11);
  v83 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v79 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB88, &qword_21CBA8398);
  MEMORY[0x28223BE20](v80);
  v81 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB90, &qword_21CBA83A0);
  MEMORY[0x28223BE20](v18 - 8);
  v93 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v92 = &v79 - v21;
  v22 = type metadata accessor for PMAccountsView(0);
  v100 = *(v22 - 8);
  v23 = *(v100 + 8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB98, &qword_21CBA83A8);
  v25 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v27 = &v79 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA0, &unk_21CBA83B0);
  MEMORY[0x28223BE20](v28 - 8);
  v91 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = MEMORY[0x28223BE20](v30).n128_u64[0];
  v33 = &v79 - v32;
  v34 = a1;
  v35 = *(a1 + 72);
  swift_getKeyPath(byte_21CBA8160, v31);
  swift_getKeyPath(byte_21CBA8188);
  v88 = v35;
  sub_21CB81DB4();

  v36 = *(v101 + 16);

  if (v36)
  {
    type metadata accessor for PMSystemSettingsNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    sub_21C84467C(v34, &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountsView);
    v37 = (v100[80] + 16) & ~v100[80];
    v38 = swift_allocObject();
    sub_21C844998(&v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37, type metadata accessor for PMAccountsView);
    v39 = &v27[v24[19]];
    v39[8] = 0;
    v40 = &v27[v24[18]];
    *v40 = sub_21C84496C;
    v40[1] = v38;
    v41 = &v27[v24[17]];
    *v41 = sub_21C8426EC;
    v41[1] = 0;
    sub_21C716934(v27, v33, &qword_27CDEDB98, &qword_21CBA83A8);
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = v34;
  v44 = *(v25 + 56);
  v45 = 1;
  v100 = v33;
  v44(v33, v42, 1, v24);
  swift_getKeyPath(aH_35);
  swift_getKeyPath(asc_21CBA7DC8);
  sub_21CB81DB4();

  v46 = *(v101 + 16);

  v47 = v99;
  if (v46)
  {
    type metadata accessor for PMSystemSettingsNavigationDestination(0);
    v48 = v98;
    swift_storeEnumTagMultiPayload();
    v49 = v80;
    v50 = v48 + *(v80 + 76);
    *(v50 + 8) = 0;
    v51 = (v48 + *(v49 + 72));
    *v51 = nullsub_1;
    v51[1] = 0;
    v52 = (v48 + *(v49 + 68));
    *v52 = sub_21C844CA0;
    v52[1] = 0;
    swift_getKeyPath(aH_35);
    swift_getKeyPath(asc_21CBA7DC8);
    sub_21CB81DB4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
    sub_21CB85C44();
    v88 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBB0, &qword_21CBA83C0);
    sub_21C6EADEC(&qword_27CDEDBB8, &qword_27CDEDBA8, &qword_21CBA9380, MEMORY[0x277D83980]);
    sub_21C6EADEC(&qword_27CDEDBC0, &qword_27CDEDBB0, &qword_21CBA83C0, &unk_21CBA7010);
    sub_21C705EB0(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup, &unk_21CBCAC0C);
    v53 = v82;
    sub_21CB84FF4();
    v54 = v81;
    sub_21C6EDBAC(v48, v81, &qword_27CDEDB88, &qword_21CBA8398);
    v56 = v83;
    v55 = v84;
    v57 = *(v84 + 16);
    v58 = v85;
    v57(v83, v53, v85);
    v59 = v86;
    sub_21C6EDBAC(v54, v86, &qword_27CDEDB88, &qword_21CBA8398);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBD0, &qword_21CBA83C8);
    v57((v59 + *(v60 + 48)), v56, v58);
    v61 = *(v55 + 8);
    v61(v53, v58);
    sub_21C6EA794(v98, &qword_27CDEDB88, &qword_21CBA8398);
    v62 = v58;
    v47 = v99;
    v61(v56, v62);
    sub_21C6EA794(v54, &qword_27CDEDB88, &qword_21CBA8398);
    v63 = v59;
    v64 = v92;
    sub_21C716934(v63, v92, &qword_27CDEDB78, &qword_21CBA8388);
    v45 = 0;
  }

  else
  {
    v64 = v92;
  }

  v65 = 1;
  (*(v89 + 56))(v64, v45, 1, v90);
  swift_getKeyPath(byte_21CBA83D0);
  swift_getKeyPath(asc_21CBA83F8);
  sub_21CB81DB4();

  v66 = *(v101 + 16);

  if (v66)
  {
    v67 = sub_21CB85C44();
    v68 = v87;
    (*(*(v67 - 8) + 56))(v87, 1, 2, v67);
    type metadata accessor for PMSystemSettingsNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    v69 = v95;
    v70 = v68 + *(v95 + 76);
    *(v70 + 8) = 0;
    v71 = (v68 + *(v69 + 72));
    *v71 = sub_21C842CA0;
    v71[1] = 0;
    v72 = (v68 + *(v69 + 68));
    *v72 = sub_21C842D5C;
    v72[1] = 0;
    sub_21C716934(v68, v47, &qword_27CDEDB68, &qword_21CBB8730);
    v65 = 0;
  }

  else
  {
    v69 = v95;
  }

  (*(v94 + 56))(v47, v65, 1, v69);
  v73 = v91;
  sub_21C6EDBAC(v100, v91, &qword_27CDEDBA0, &unk_21CBA83B0);
  v74 = v93;
  sub_21C6EDBAC(v64, v93, &qword_27CDEDB90, &qword_21CBA83A0);
  v75 = v96;
  sub_21C6EDBAC(v47, v96, &qword_27CDEDB70, &qword_21CBA8380);
  v76 = v97;
  sub_21C6EDBAC(v73, v97, &qword_27CDEDBA0, &unk_21CBA83B0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBD8, &qword_21CBA8418);
  sub_21C6EDBAC(v74, v76 + *(v77 + 48), &qword_27CDEDB90, &qword_21CBA83A0);
  sub_21C6EDBAC(v75, v76 + *(v77 + 64), &qword_27CDEDB70, &qword_21CBA8380);
  sub_21C6EA794(v47, &qword_27CDEDB70, &qword_21CBA8380);
  sub_21C6EA794(v64, &qword_27CDEDB90, &qword_21CBA83A0);
  sub_21C6EA794(v100, &qword_27CDEDBA0, &unk_21CBA83B0);
  sub_21C6EA794(v75, &qword_27CDEDB70, &qword_21CBA8380);
  sub_21C6EA794(v74, &qword_27CDEDB90, &qword_21CBA83A0);
  return sub_21C6EA794(v73, &qword_27CDEDBA0, &unk_21CBA83B0);
}

uint64_t sub_21C8424C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = (a1 + *(type metadata accessor for PMAccountsView(0) + 48));
  v12 = *v10;
  v11 = v10[1];
  v19[2] = v12;
  v19[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA40, &qword_21CBA8088);
  sub_21CB84D54();
  *a2 = v19[1];
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  a2[1] = sub_21CB82B84();
  a2[2] = v13;
  v14 = type metadata accessor for PMGroupInvitationsList(0);
  v15 = *(v14 + 24);
  *(a2 + v15) = swift_getKeyPath(byte_21CBA8480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  swift_storeEnumTagMultiPayload();
  v16 = sub_21CB85C44();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  sub_21C6EDBAC(v9, v6, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CB84D44();
  sub_21C6EA794(v9, &unk_27CDF20B0, &unk_21CBA0090);
  v17 = a2 + *(v14 + 32);
  *v17 = result;
  v17[8] = 0;
  return result;
}

uint64_t sub_21C8426EC@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath(byte_21CBA7BC0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v7);

  type metadata accessor for PMGroupsStore(0);
  sub_21C705EB0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v3 = sub_21CB82674();
  v5 = v4;

  result = swift_getKeyPath(asc_21CBA8420);
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_21C842800@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath(asc_21CBA7B78);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v7);

  type metadata accessor for PMAccountsState(0);
  sub_21C705EB0(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v3 = sub_21CB82674();
  v5 = v4;

  result = swift_getKeyPath(asc_21CBA8420);
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_21C842914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMSharingGroup(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21CB85C44();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  type metadata accessor for PMSystemSettingsNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  sub_21C84467C(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSharingGroup);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_21C844998(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PMSharingGroup);
  sub_21C84467C(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSharingGroup);
  v10 = swift_allocObject();
  sub_21C844998(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v8, type metadata accessor for PMSharingGroup);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBB0, &qword_21CBA83C0);
  v12 = a2 + v11[19];
  *v12 = result;
  *(v12 + 8) = 0;
  v14 = (a2 + v11[18]);
  *v14 = sub_21C844A00;
  v14[1] = v9;
  v15 = (a2 + v11[17]);
  *v15 = sub_21C844B80;
  v15[1] = v10;
  return result;
}

uint64_t sub_21C842B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C84467C(a1, a2, type metadata accessor for PMSharingGroup);
  v3 = type metadata accessor for PMGroupRow(0);
  v4 = v3[5];
  KeyPath = swift_getKeyPath(asc_21CBA7B78);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a2 + v4);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v13);

  type metadata accessor for PMAccountsState(0);
  sub_21C705EB0(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = a2 + v3[6];
  *v10 = swift_getKeyPath(asc_21CBA8420);
  *(v10 + 8) = 0;
  v11 = a2 + v3[7];
  result = swift_getKeyPath(byte_21CBA8450);
  *v11 = result;
  *(v11 + 8) = 0;
  return result;
}

void *sub_21C842CA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 1, 2, v2);
  v3 = (a1 + *(type metadata accessor for PMRecentlyDeletedAccountsView(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE0, &qword_21CBB8760);
  *(swift_allocObject() + 16) = 0;
  result = sub_21CB84D44();
  *v3 = v5;
  v3[1] = v6;
  return result;
}

uint64_t sub_21C842D5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 1, 2, v2);
  v3 = type metadata accessor for PMRecentlyDeletedRow(0);
  v4 = *(v3 + 20);
  KeyPath = swift_getKeyPath(asc_21CBA7B78);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a1 + v4);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v12);

  type metadata accessor for PMAccountsState(0);
  sub_21C705EB0(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = a1 + *(v3 + 24);
  result = swift_getKeyPath(asc_21CBA8420);
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

BOOL sub_21C842ED4(uint64_t a1, uint64_t a2)
{
  sub_21CB85C44();
  sub_21C705EB0(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
  return (sub_21CB85574() & 1) == 0;
}

double sub_21C842F6C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_21CBA8298);
  swift_getKeyPath(byte_21CBA82C0);
  sub_21CB81DB4();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_21C842FF4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  swift_getKeyPath(byte_21CBA8298);
  swift_getKeyPath(byte_21CBA82C0);

  sub_21C7FB8AC(v2, v3, v4);
  return sub_21CB81DC4();
}

uint64_t sub_21C843088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_21C6EDBAC(a1, &v12 - v5, &unk_27CDF20B0, &unk_21CBA0090);
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  v9 = 1;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(a2, v6, v7);
    v9 = 0;
  }

  v10 = _s19IdentifiableGroupIDVMa(0);
  return (*(*(v10 - 8) + 56))(a2, v9, 1, v10);
}

uint64_t sub_21C8431E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA30, &qword_21CBA8078);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_21C6EA794(a2, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a1, v9, &qword_27CDEDA30, &qword_21CBA8078);
  v10 = _s19IdentifiableGroupIDVMa(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_21C6EA794(v9, &qword_27CDEDA30, &qword_21CBA8078);
    v11 = sub_21CB85C44();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  else
  {
    v12 = sub_21CB85C44();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, v9, v12);
    sub_21C8446E4(v9, _s19IdentifiableGroupIDVMa);
    (*(v13 + 56))(v6, 0, 1, v12);
  }

  return sub_21C716934(v6, a2, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C843494(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aH_35);
  swift_getKeyPath(asc_21CBA7DC8);

  return sub_21CB81DC4();
}

uint64_t sub_21C843524(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBA7DF8);
  swift_getKeyPath(byte_21CBA7E20);

  return sub_21CB81DC4();
}

unint64_t sub_21C8435A8()
{
  result = qword_27CDED8F8;
  if (!qword_27CDED8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8F0, &qword_21CBA7C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED900, &unk_21CBA7CA0);
    sub_21C6EADEC(&qword_27CDED908, &qword_27CDED900, &unk_21CBA7CA0, MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED910, &qword_27CDED918, &qword_21CBC1710, MEMORY[0x277CDDF68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED8F8);
  }

  return result;
}

uint64_t sub_21C84370C(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, ...)
{
  swift_getKeyPath(a4, a2, a3);
  swift_getKeyPath(a5);
  sub_21CB81DB4();
}

uint64_t sub_21C843798(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_21C6EDBAC(a1, &v19 - v14, &unk_27CDF20B0, &unk_21CBA0090);
  v16 = *a2;
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);
  sub_21C6EDBAC(v15, v12, &unk_27CDF20B0, &unk_21CBA0090);
  v17 = v16;
  sub_21CB81DC4();
  return sub_21C6EA794(v15, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C843914(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v7 = *a2;
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);

  v8 = v7;
  return sub_21CB81DC4();
}

uint64_t sub_21C8439D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_21C6EDBAC(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

unint64_t sub_21C843A80()
{
  result = qword_27CDED940;
  if (!qword_27CDED940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED898, &qword_21CBA7C28);
    sub_21C843B38();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED940);
  }

  return result;
}

unint64_t sub_21C843B38()
{
  result = qword_27CDED948;
  if (!qword_27CDED948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED930, &qword_21CBA7D28);
    sub_21C843BF0();
    sub_21C6EADEC(&qword_27CDED960, &qword_27CDED968, &unk_21CBAEC20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED948);
  }

  return result;
}

unint64_t sub_21C843BF0()
{
  result = qword_27CDED950;
  if (!qword_27CDED950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED928, &unk_21CBA7CE8);
    sub_21C843CA8();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED950);
  }

  return result;
}

unint64_t sub_21C843CA8()
{
  result = qword_27CDED958;
  if (!qword_27CDED958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED920, &qword_21CBA7CB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED890, &qword_21CBA7C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8E8, &qword_21CBA7C90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED888, &qword_21CBA7C18);
    sub_21C6EADEC(&qword_27CDED8E0, &qword_27CDED888, &qword_21CBA7C18, MEMORY[0x277CDE580]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8F0, &qword_21CBA7C98);
    sub_21C8435A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED958);
  }

  return result;
}

uint64_t sub_21C843E74(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMAccountsView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_21C83EF08(a1, v4);
}

uint64_t sub_21C843F44(uint64_t a1)
{
  type metadata accessor for PMAccountsView(0);

  return sub_21C840AF4(a1);
}

unint64_t sub_21C843FB4()
{
  result = qword_27CDED998;
  if (!qword_27CDED998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8B0, &qword_21CBA7C40);
    sub_21C84406C();
    sub_21C6EADEC(&qword_27CDED9E0, &qword_27CDED990, &qword_21CBA7E90, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED998);
  }

  return result;
}

unint64_t sub_21C84406C()
{
  result = qword_27CDED9A0;
  if (!qword_27CDED9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8A8, &qword_21CBA7C38);
    sub_21C844124();
    sub_21C6EADEC(&qword_27CDED9E0, &qword_27CDED990, &qword_21CBA7E90, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED9A0);
  }

  return result;
}

unint64_t sub_21C844124()
{
  result = qword_27CDED9A8;
  if (!qword_27CDED9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8A0, &qword_21CBA7C30);
    sub_21C8441B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED9A8);
  }

  return result;
}

unint64_t sub_21C8441B0()
{
  result = qword_27CDED9B0;
  if (!qword_27CDED9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED988, &qword_21CBA7E40);
    sub_21C844268();
    sub_21C6EADEC(&qword_27CDED9D0, &qword_27CDED9D8, &unk_21CBB96E0, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED9B0);
  }

  return result;
}

unint64_t sub_21C844268()
{
  result = qword_27CDED9B8;
  if (!qword_27CDED9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED980, &qword_21CBA7DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED898, &qword_21CBA7C28);
    sub_21C843A80();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED9C0, &qword_27CDED9C8, &unk_21CBA7F50, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED9B8);
  }

  return result;
}

uint64_t sub_21C8443A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAccountsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C840DF4(a1, v6, a2);
}

unint64_t sub_21C844448()
{
  result = qword_27CDED9F8;
  if (!qword_27CDED9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED9E8, &qword_21CBA7FF8);
    sub_21C705EB0(&qword_27CDEDA00, type metadata accessor for PMGroupInvitationSheetContent, &unk_21CBB9710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED9F8);
  }

  return result;
}

unint64_t sub_21C844588()
{
  result = qword_27CDEDAA0;
  if (!qword_27CDEDAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDA98, &unk_21CBABCB0);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDAA0);
  }

  return result;
}

uint64_t sub_21C84467C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8446E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C8447E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAccountsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21C844858()
{
  result = qword_27CDEDB08;
  if (!qword_27CDEDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDB08);
  }

  return result;
}

unint64_t sub_21C8448AC()
{
  result = qword_27CDEDB10;
  if (!qword_27CDEDB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDB00, &qword_21CBA8340);
    sub_21C6EADEC(&qword_27CDEDB18, &qword_27CDEDB20, &qword_21CBA8348, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDB10);
  }

  return result;
}

uint64_t sub_21C844998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_165Tm()
{
  v1 = *(type metadata accessor for PMSharingGroup(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C844BAC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t type metadata accessor for PMAccountsViewAccountCell(uint64_t a1)
{
  result = qword_27CDEDC20;
  if (!qword_27CDEDC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C844D1C(uint64_t a1)
{
  sub_21C844DA8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMAccount(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C844DA8(uint64_t a1)
{
  if (!qword_27CDEDC30)
  {
    type metadata accessor for PMAccountDetailsSheetController(255);
    sub_21C84544C(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController, &unk_21CBA1C68);
    v1 = sub_21CB82B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEDC30);
    }
  }
}

uint64_t sub_21C844E58@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAccountsViewAccountCell(0);
  sub_21C8453E4(v1 + *(v3 + 20), a1, type metadata accessor for PMAccount);
  v4 = (v1 + *(v3 + 24));
  v6 = *v4;
  v5 = v4[1];

  v7 = sub_21CB837E4();
  v8 = type metadata accessor for PMAccountRow(0);
  v9 = a1 + v8[7];
  v10 = MEMORY[0x277CE04E8];
  *(v9 + 24) = MEMORY[0x277CE04F8];
  *(v9 + 32) = v10;
  *v9 = v7;
  v11 = v8[9];
  KeyPath = swift_getKeyPath(asc_21CBA85F0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v13 = (a1 + v11);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v26);

  type metadata accessor for PMGroupsStore(0);
  sub_21C84544C(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v14 = sub_21CB82674();
  v16 = v15;

  *v13 = v14;
  v13[1] = v16;
  v17 = a1 + v8[10];
  *v17 = swift_getKeyPath(byte_21CBA8610);
  *(v17 + 8) = 0;
  v18 = a1 + v8[11];
  *v18 = swift_getKeyPath(byte_21CBA8638);
  *(v18 + 8) = 0;
  v19 = v8[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v20 = v8[13];
  *(a1 + v20) = swift_getKeyPath(byte_21CBA86A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v21 = v8[14];
  result = swift_getKeyPath(aH_64);
  *(a1 + v21) = result;
  v23 = (a1 + v8[5]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (a1 + v8[6]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (a1 + v8[8]);
  *v25 = v6;
  v25[1] = v5;
  return result;
}

uint64_t sub_21C8450C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v8 = (v2 + *(v7 + 28));
  v9 = v8[1];
  *a2 = *v8;
  a2[1] = v9;
  type metadata accessor for PMSystemSettingsNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  sub_21C8453E4(v3, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountsViewAccountCell);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_21C84529C(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_21C8453E4(v3, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountsViewAccountCell);
  v12 = swift_allocObject();
  sub_21C84529C(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDC38, &qword_21CBA85C0);
  v14 = a2 + v13[19];
  *v14 = swift_getKeyPath(aH_65);
  v14[8] = 0;
  v15 = (a2 + v13[18]);
  *v15 = sub_21C845300;
  v15[1] = v11;
  v16 = (a2 + v13[17]);
  *v16 = sub_21C845380;
  v16[1] = v12;
}

uint64_t sub_21C84529C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccountsViewAccountCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C8453E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C84544C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C845494()
{
  result = qword_27CDEDC40[0];
  if (!qword_27CDEDC40[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDC38, &qword_21CBA85C0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDEDC40);
  }

  return result;
}

uint64_t sub_21C8454F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v95 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCC8, &unk_21CBA87F0);
  v6 = *(a1 + 16);
  v7 = a1;
  v97 = a1;
  v99 = v6;
  OpaqueTypeConformance2 = v6;
  v8 = sub_21CB828F4();
  v9 = sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  *&v111 = v5;
  *(&v111 + 1) = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D837D0];
  *&v112 = v8;
  *(&v112 + 1) = v9;
  v113 = MEMORY[0x277D837E0];
  v11 = MEMORY[0x277D837E0];
  v12 = sub_21CB85004();
  v98 = *(v7 + 32);
  v118 = v98;
  v119 = sub_21C6EADEC(&qword_27CDEDCD0, &qword_27CDEDCC8, &unk_21CBA87F0, MEMORY[0x277CE04A0]);
  WitnessTable = swift_getWitnessTable();
  *&v111 = v10;
  *(&v111 + 1) = v12;
  v13 = v10;
  *&v112 = v11;
  *(&v112 + 1) = swift_getWitnessTable();
  sub_21CB83F44();
  v86 = *(&v99 + 1);
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  v14 = sub_21CB84B94();
  v82 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v80 = v75 - v15;
  v16 = sub_21CB828F4();
  v79 = v16;
  v83 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v77 = v75 - v17;
  v116 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v81 = v18;
  v19 = sub_21C72EC3C();
  v114 = v18;
  v115 = v19;
  v78 = swift_getWitnessTable();
  *&v111 = v16;
  *(&v111 + 1) = v13;
  *&v112 = v78;
  *(&v112 + 1) = MEMORY[0x277D837E0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v96 = v75 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCD8, &unk_21CBB0390);
  v85 = OpaqueTypeMetadata2;
  v22 = sub_21CB828F4();
  v90 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v87 = v75 - v23;
  v91 = v24;
  v25 = sub_21CB828F4();
  v92 = *(v25 - 8);
  v93 = v25;
  MEMORY[0x28223BE20](v25);
  v88 = v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v89 = v75 - v28;
  v100 = v99;
  v29 = v97;
  v30 = v98;
  v31 = *(v97 + 40);
  v101 = v98;
  v102 = v31;
  v103 = v3;
  sub_21CB84B84();
  v32 = *(v3 + 8);
  v76 = *v3;
  v75[1] = v32;
  v75[2] = type metadata accessor for PMAccountsListModel(0);
  v75[0] = sub_21C7134A8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  sub_21CB82B54();
  sub_21CB82B74();

  v123 = v120;
  v124 = v121;
  v125 = v122;
  v33 = swift_allocObject();
  *(v33 + 16) = v99;
  *(v33 + 32) = v30;
  *(v33 + 40) = v31;
  v34 = *(v3 + 48);
  *(v33 + 80) = *(v3 + 32);
  *(v33 + 96) = v34;
  *(v33 + 112) = *(v3 + 64);
  v35 = *(v3 + 16);
  *(v33 + 48) = *v3;
  *(v33 + 64) = v35;
  v36 = *(v29 - 8);
  v37 = *(v36 + 16);
  v38 = v36 + 16;
  v39 = v29;
  (v37)(&v111, v3, v29);
  v40 = v77;
  v41 = v80;
  sub_21C80D0D4(&v123, &unk_21CBA8830, v33, v14, v81);
  v42 = v39;

  v126 = v123;
  sub_21C7509C4(&v126);

  v127 = v124;
  v128 = v125;
  sub_21C847CDC(&v127);
  v82[1](v41, v14);
  v43 = swift_allocObject();
  *(v43 + 16) = v99;
  *(v43 + 32) = v98;
  *(v43 + 40) = v31;
  v80 = v31;
  v81 = v38;
  v45 = v78;
  v44 = v79;
  v46 = *(v3 + 48);
  *(v43 + 80) = *(v3 + 32);
  *(v43 + 96) = v46;
  *(v43 + 112) = *(v3 + 64);
  v47 = *(v3 + 16);
  *(v43 + 48) = *v3;
  *(v43 + 64) = v47;
  v82 = v37;
  (v37)(&v111, v3, v42);
  sub_21CB84214();

  (*(v83 + 8))(v40, v44);
  v48 = v76;
  sub_21CB82B54();
  sub_21CB82B74();

  v120 = v111;
  v121 = v112;
  v122 = v113;
  if (v48)
  {
    v49 = v98;
    v50 = v80;
    v51 = sub_21C847480(v3, OpaqueTypeConformance2, v86, v98, v80);
    v53 = v52;

    *&v108 = v44;
    v54 = MEMORY[0x277D837D0];
    *(&v108 + 1) = MEMORY[0x277D837D0];
    v109 = v45;
    v55 = MEMORY[0x277D837E0];
    v110 = MEMORY[0x277D837E0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v74 = v55;
    v56 = v87;
    v57 = v51;
    v58 = v85;
    v59 = v96;
    sub_21C807C3C(&v120, sub_21C847D90, v48, v57, v53, v85, v54, v87, OpaqueTypeConformance2, v74);

    v129[0] = v120;
    sub_21C7509C4(v129);

    v108 = v121;
    v109 = v122;
    sub_21C847CDC(&v108);
    (*(v84 + 8))(v59, v58);
    v60 = swift_allocObject();
    *&v61 = v49;
    *(&v61 + 1) = v50;
    *(v60 + 32) = v61;
    *(v60 + 16) = v99;
    v62 = *(v3 + 48);
    *(v60 + 80) = *(v3 + 32);
    *(v60 + 96) = v62;
    *(v60 + 112) = *(v3 + 64);
    v63 = *(v3 + 16);
    *(v60 + 48) = *v3;
    *(v60 + 64) = v63;
    (v82)(&v111, v3, v97);
    v64 = sub_21C6EADEC(&qword_27CDEDCE0, &qword_27CDEDCD8, &unk_21CBB0390, &unk_21CBA4A50);
    v106 = OpaqueTypeConformance2;
    v107 = v64;
    v65 = v91;
    v66 = swift_getWitnessTable();
    v67 = v88;
    sub_21CA50200(sub_21C847D94, v60, v65);

    (*(v90 + 8))(v56, v65);
    v68 = sub_21C847DA4();
    v104 = v66;
    v105 = v68;
    v69 = v93;
    v70 = swift_getWitnessTable();
    v71 = v89;
    sub_21C72BE10(v67, v69, v70);
    v72 = *(v92 + 8);
    v72(v67, v69);
    sub_21C72BE10(v71, v69, v70);
    return (v72)(v71, v69);
  }

  else
  {
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C846008@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a4;
  v43 = a2;
  v44 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCC8, &unk_21CBA87F0);
  sub_21CB828F4();
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  v10 = MEMORY[0x277D837D0];
  v57 = MEMORY[0x277D837E0];
  v11 = MEMORY[0x277D837E0];
  v40 = sub_21CB85004();
  v52[3] = a4;
  v52[4] = sub_21C6EADEC(&qword_27CDEDCD0, &qword_27CDEDCC8, &unk_21CBA87F0, MEMORY[0x277CE04A0]);
  v52[2] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v53 = v10;
  v54 = v40;
  v55 = v11;
  v56 = WitnessTable;
  v12 = sub_21CB83F44();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v36 = &v33 - v16;
  v34 = *(a3 - 8);
  v17 = v34;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v35 = &v33 - v23;
  (a1[7])(v22);
  v24 = a3;
  sub_21C72BE10(v20, a3, a5);
  v25 = *(v17 + 8);
  v38 = v17 + 8;
  v39 = v25;
  v25(v20, a3);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C7134A8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  sub_21CB82B54();
  swift_getKeyPath(byte_21CBA8840);
  sub_21CB82B74();

  v45 = v43;
  v46 = a3;
  v47 = v42;
  v48 = a5;
  v33 = a5;
  v49 = a1;
  sub_21CB83F14();
  v26 = swift_getWitnessTable();
  v27 = v36;
  sub_21C72BE10(v14, v12, v26);
  v28 = v41;
  v29 = *(v41 + 8);
  v29(v14, v12);
  v30 = v35;
  (*(v34 + 16))(v20, v35, v24);
  v53 = v20;
  (*(v28 + 16))(v14, v27, v12);
  v54 = v14;
  v52[0] = v24;
  v52[1] = v12;
  v50 = v33;
  v51 = v26;
  sub_21C74A55C(&v53, 2uLL, v52);
  v29(v27, v12);
  v31 = v39;
  v39(v30, v24);
  v29(v14, v12);
  return v31(v20, v24);
}

uint64_t sub_21C846578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCC8, &unk_21CBA87F0);
  v27 = sub_21CB828F4();
  v28 = sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  v34 = v29;
  v35 = MEMORY[0x277D837D0];
  v36 = v27;
  v37 = v28;
  v38 = MEMORY[0x277D837E0];
  v11 = sub_21CB85004();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v39 = *(a1 + 32);
  v40 = v39;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  v19 = *(a1 + 48);
  *(v18 + 80) = *(a1 + 32);
  *(v18 + 96) = v19;
  *(v18 + 112) = *(a1 + 64);
  v20 = *(a1 + 16);
  *(v18 + 48) = *a1;
  *(v18 + 64) = v20;
  sub_21C847FA4(&v40, &v34);
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v21 = type metadata accessor for PMAccountsViewAccountsSection(0, &v34);
  (*(*(v21 - 8) + 16))(&v34, a1, v21);
  v22 = sub_21C6EADEC(&qword_27CDEDCD0, &qword_27CDEDCC8, &unk_21CBA87F0, MEMORY[0x277CE04A0]);
  v32 = a4;
  v33 = v22;
  WitnessTable = swift_getWitnessTable();
  sub_21C7134A8(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  sub_21CB84FF4();
  v31 = WitnessTable;
  v24 = swift_getWitnessTable();
  sub_21C72BE10(v14, v11, v24);
  v25 = *(v12 + 8);
  v25(v14, v11);
  sub_21C72BE10(v17, v11, v24);
  return (v25)(v17, v11);
}

uint64_t sub_21C8468E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v31 = a4;
  v32 = a5;
  v30 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v30);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCC8, &unk_21CBA87F0);
  v14 = sub_21CB828F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v29 - v20;
  (*(a2 + 40))(a1, v19);
  v22 = type metadata accessor for PMAccount(0);
  sub_21C80EABC(a1 + *(v22 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7190C0(v9, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v23 = *v9;
    [*v9 canUserEditSavedAccount];
  }

  v24 = v31;
  sub_21CB84284();
  (*(v10 + 8))(v13, a3);
  v25 = sub_21C6EADEC(&qword_27CDEDCD0, &qword_27CDEDCC8, &unk_21CBA87F0, MEMORY[0x277CE04A0]);
  v33 = v24;
  v34 = v25;
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v17, v14, WitnessTable);
  v27 = *(v15 + 8);
  v27(v17, v14);
  sub_21C72BE10(v21, v14, WitnessTable);
  return (v27)(v21, v14);
}

uint64_t sub_21C846C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v6[21] = swift_task_alloc();
  v6[22] = sub_21CB858B4();
  v6[23] = sub_21CB858A4();
  v8 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C846CF8, v8, v7);
}

uint64_t sub_21C846CF8()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];

  v8 = sub_21CB858E4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v0[11] = v6;
  v0[12] = v4;
  v0[13] = v3;
  v0[14] = v2;
  v9 = type metadata accessor for PMAccountsViewAccountsSection(0, (v0 + 11));
  (*(*(v9 - 8) + 16))(v0 + 2, v5, v9);

  v10 = sub_21CB858A4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v6;
  *(v11 + 40) = v4;
  *(v11 + 48) = v3;
  *(v11 + 56) = v2;
  *(v11 + 64) = *v5;
  v13 = *(v5 + 16);
  v14 = *(v5 + 48);
  v15 = *(v5 + 64);
  *(v11 + 96) = *(v5 + 32);
  *(v11 + 112) = v14;
  *(v11 + 80) = v13;
  *(v11 + 128) = v15;
  *(v11 + 136) = v7;
  sub_21C98B308(0, 0, v1, &unk_21CBA8900, v11);

  v16 = swift_task_alloc();
  v16[2] = v6;
  v16[3] = v4;
  v16[4] = v3;
  v16[5] = v2;
  v16[6] = v5;
  sub_21CB85254();
  sub_21CB82524();

  v17 = v0[1];

  return v17();
}

uint64_t sub_21C846EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21CB858B4();
  v5[4] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21C846F98, v7, v6);
}

uint64_t sub_21C846F98()
{
  v1 = v0[2];
  v2 = *v1;
  v0[7] = *v1;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_21C8470BC;
    v4 = v0[3];

    return sub_21C818D98(v4);
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C7134A8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);

    return sub_21CB82B64();
  }
}

uint64_t sub_21C8470BC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21C7EF5D4, v3, v2);
}

uint64_t sub_21C847200(uint64_t *a1)
{
  v2 = sub_21CB85114();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - v7;
  if (*a1)
  {
    (*(v3 + 104))(&v11 - v7, *MEMORY[0x277CDF0D8], v2, v8);
    swift_getKeyPath(byte_21CBA8908);
    (*(v3 + 16))(v5, v9, v2);

    sub_21CB81DC4();
    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C7134A8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C8473DC(uint64_t result, uint64_t a2)
{
  if (*(result + 16) == 1)
  {
    v2 = result;
    v3 = sub_21CB85F24();
    v4 = sub_21CAA206C(v3, *(v2 + 36), 0, v2);
    v6 = v5;

    sub_21C847560(v4, v6);
  }

  return result;
}

uint64_t (*sub_21C847480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, uint64_t a2)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = *(a1 + 48);
  *(v10 + 80) = *(a1 + 32);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(a1 + 64);
  v12 = *(a1 + 16);
  *(v10 + 48) = *a1;
  *(v10 + 64) = v12;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v13 = type metadata accessor for PMAccountsViewAccountsSection(0, v15);
  (*(*(v13 - 8) + 16))(v15, a1, v13);
  return sub_21C847DF8;
}

uint64_t sub_21C847560(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    swift_getKeyPath(aH_66);
    swift_getKeyPath(asc_21CBA88D0);

    return sub_21CB81DC4();
  }

  else
  {
    type metadata accessor for PMAccountDetailsSheetController(0);
    sub_21C7134A8(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController, &unk_21CBA1C68);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C847648(uint64_t *a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*a1)
  {
    swift_getKeyPath(byte_21CBA8840, v7);
    swift_getKeyPath(aX_37);
    swift_retain_n();
    sub_21CB81DB4();

    v11 = sub_21C818A9C(v26);

    v12 = *(v11 + 16);

    if (!v12)
    {
    }

    swift_getKeyPath(byte_21CBA8840);
    swift_getKeyPath(aX_37);
    sub_21CB81DB4();

    v13 = sub_21C818A9C(v26);
    v25 = v10;

    v14 = *(v13 + 16);
    if (!v14)
    {
LABEL_11:

      swift_getKeyPath(byte_21CBA8840);
      swift_getKeyPath(aX_37);
      sub_21CB81DB4();

      v18 = sub_21C818A9C(v26);

      v19 = sub_21C87E898(v18);
      v21 = v20;
      v23 = v22;
      swift_getKeyPath(asc_21CBA8888);
      v26 = v19;
      v27 = v21;
      v28 = v23;
      return sub_21CB81DC4();
    }

    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      sub_21C80EABC(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, type metadata accessor for PMAccount);
      sub_21C80EABC(&v9[*(v5 + 24)], v4, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7190C0(v4, type metadata accessor for PMAccount.Storage);
        sub_21C7190C0(v9, type metadata accessor for PMAccount);
      }

      else
      {
        v16 = *v4;
        v17 = [*v4 canUserEditSavedAccount];

        sub_21C7190C0(v9, type metadata accessor for PMAccount);
        if ((v17 & 1) == 0)
        {
        }
      }

      if (v14 == ++v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  type metadata accessor for PMAccountsListModel(0);
  sub_21C7134A8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  result = sub_21CB82B64();
  __break(1u);
  return result;
}

uint64_t sub_21C847AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C847B10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C847B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C847C1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C846C1C(a1, (v1 + 6), v4, v5, v6, v7);
}

uint64_t sub_21C847CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAEF8, &unk_21CBA0740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C847D44(uint64_t a1)
{
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for PMAccountsViewAccountsSection(0, v6);
  return sub_21C8473DC(a1, v4);
}

unint64_t sub_21C847DA4()
{
  result = qword_27CDEDCE8;
  if (!qword_27CDEDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDCE8);
  }

  return result;
}

uint64_t sub_21C847DF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v7[0] = *(v2 + 16);
  v7[1] = v5;
  type metadata accessor for PMAccountsViewAccountsSection(0, v7);
  return sub_21C847560(a1, a2);
}

uint64_t sub_21C847E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[17];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21C846EFC(a1, v4, v5, (v1 + 8), v6);
}

uint64_t sub_21C847FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C848014(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v65 = a3;
  v63 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v48 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD78, &qword_21CBA89E8);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v48 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD80, &unk_21CBA89F0);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v48 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v67 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v48 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD88, &qword_21CBA8A00);
  v56 = *(v66 - 8);
  v10 = v56;
  MEMORY[0x28223BE20](v66);
  v12 = &v48 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v59);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__groupID;
  v53 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__groupID;
  v19 = sub_21CB85C44();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v54 = v17;
  sub_21C6EDBAC(v17, v14, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CB81D74();
  sub_21C6EA794(v17, &unk_27CDF20B0, &unk_21CBA0090);
  (*(v10 + 32))(v3 + v18, v12, v66);
  v20 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__usernameInput;
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v21 = *(v67 + 32);
  v22 = v48;
  v21(v3 + v20, v9, v48);
  v23 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__passwordInput;
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v21(v3 + v23, v9, v22);
  v24 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__notesInput;
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v21(v3 + v24, v9, v22);
  v25 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__titleInput;
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v21(v3 + v25, v9, v22);
  v26 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__canSaveUserAlertConfiguration;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD58, &unk_21CBA8970);
  v27 = v49;
  sub_21CB81D74();
  (*(v50 + 32))(v3 + v26, v27, v51);
  v28 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__userNameSuggestions;
  *&v70 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED0, &unk_21CBA1A60);
  v29 = v52;
  sub_21CB81D74();
  (*(v55 + 32))(v3 + v28, v29, v57);
  v30 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__accountWasSubmitted;
  LOBYTE(v70) = 0;
  v31 = v60;
  sub_21CB81D74();
  (*(v61 + 32))(v3 + v30, v31, v62);
  v32 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__accountsState;
  *(v3 + v32) = swift_getKeyPath(byte_21CBA8A08);
  v33 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_bundleIDForFallbackIcon);
  *v33 = 0;
  v33[1] = 0;
  v34 = v63;
  sub_21C84ABC4(v63, v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_configuration, type metadata accessor for PMAddAccountModel.Configuration);
  v36 = *v34;
  v35 = v34[1];
  swift_beginAccess();
  v37 = *(v67 + 8);

  v37(v3 + v25, v22);
  v68 = v36;
  v69 = v35;
  sub_21CB81D74();
  swift_endAccess();
  v39 = v34[2];
  v38 = v34[3];
  swift_beginAccess();

  v37(v3 + v23, v22);
  v68 = v39;
  v69 = v38;
  sub_21CB81D74();
  swift_endAccess();
  v40 = type metadata accessor for PMAddAccountModel.Configuration(0);
  v41 = (v34 + *(v40 + 28));
  v42 = v41[1];
  *v33 = *v41;
  v33[1] = v42;

  v43 = v54;
  sub_21C6EDBAC(v34 + *(v40 + 24), v54, &unk_27CDF20B0, &unk_21CBA0090);
  v44 = v53;
  swift_beginAccess();
  (*(v56 + 8))(v3 + v44, v66);
  sub_21C6EDBAC(v43, v58, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CB81D74();
  sub_21C6EA794(v43, &unk_27CDF20B0, &unk_21CBA0090);
  swift_endAccess();
  sub_21C84AC2C(v34, type metadata accessor for PMAddAccountModel.Configuration);
  v45 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_completion);
  v46 = v65;
  *v45 = v64;
  v45[1] = v46;
  return v3;
}

uint64_t sub_21C848830@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v32 - v8);
  v10 = type metadata accessor for PMAddAccountModel.Configuration(0);
  v11 = *(v10 + 24);
  v12 = sub_21CB85C44();
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v10 + 28)];
  v14 = type metadata accessor for PMGeneratedPassword(0);
  *v13 = 0;
  *(v13 + 1) = 0;
  v15 = *(v14 + 20);
  sub_21C84ABC4(a1 + v15, v9, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *v9;
  if (EnumCaseMultiPayload == 1)
  {

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v19 = sub_21CB80DD4();
    (*(*(v19 - 8) + 8))(v9 + v18, v19);
LABEL_4:
    v21 = [v17 host];

    v20 = sub_21CB855C4();
    v23 = v22;

    goto LABEL_5;
  }

  v20 = [*v9 protectionSpace];

  v17 = v20;
  if (v20)
  {
    goto LABEL_4;
  }

  v23 = 0xE000000000000000;
LABEL_5:
  *a2 = v20;
  *(a2 + 1) = v23;
  sub_21C84ABC4(a1 + v15, v6, type metadata accessor for PMGeneratedPassword.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C84AC2C(a1, type metadata accessor for PMGeneratedPassword);

    v24 = *(v6 + 1);
    v25 = *(v6 + 2);
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v27 = sub_21CB80DD4();
    result = (*(*(v27 - 8) + 8))(&v6[v26], v27);
  }

  else
  {
    v29 = *v6;
    v30 = [v29 password];
    v24 = sub_21CB855C4();
    v25 = v31;

    result = sub_21C84AC2C(a1, type metadata accessor for PMGeneratedPassword);
  }

  *(a2 + 2) = v24;
  *(a2 + 3) = v25;
  return result;
}

uint64_t sub_21C848B44()
{
  swift_getKeyPath(byte_21CBA8C70);
  swift_getKeyPath(aX_38);
  sub_21CB81DB4();
}

uint64_t sub_21C848BBC(uint64_t *a1)
{
  swift_getKeyPath(byte_21CBA8C70);
  swift_getKeyPath(aX_38);
  sub_21CB81DB4();
}

uint64_t sub_21C848C38(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_21C6EDBAC(a1, &v10 - v7, &unk_27CDF20B0, &unk_21CBA0090);
  swift_getKeyPath(byte_21CBA8C70);
  swift_getKeyPath(aX_38);
  sub_21C6EDBAC(v8, v5, &unk_27CDF20B0, &unk_21CBA0090);

  sub_21CB81DC4();
  return sub_21C6EA794(v8, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C848D68()
{
  v0[2] = sub_21CB858B4();
  v0[3] = sub_21CB858A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21C74FDC4;

  return sub_21C848E14();
}

uint64_t sub_21C848E14()
{
  v1[19] = v0;
  sub_21CB858B4();
  v1[20] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x2822009F8](sub_21C848EAC, v3, v2);
}

uint64_t sub_21C848EAC()
{
  v1 = [objc_opt_self() sharedProvider];
  v0[23] = v1;
  swift_getKeyPath(aP_50);
  swift_getKeyPath(aP_51);
  sub_21CB81DB4();

  v2 = sub_21CB85584();
  v0[24] = v2;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21C84906C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD90, &qword_21CBA8BD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C84A858;
  v0[13] = &block_descriptor_5;
  v0[14] = v3;
  [v1 suggestedUsersOfType:0 matchingText:v2 limit:3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C84906C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_21C849174, v2, v1);
}

uint64_t sub_21C849174()
{
  v1 = v0[24];

  v2 = v0[18];

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_21CB85FA4();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CF15BD0](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if ([v7 usageFrequency] > 3)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v9 = v5;
    v10 = [v8 value];
    v11 = sub_21CB855C4();
    v20 = v12;
    v21 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_21CA4F2EC(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v13 = *(v9 + 3);
    v15 = v9;
    if (v14 >= v13 >> 1)
    {
      v15 = sub_21CA4F2EC((v13 > 1), v14 + 1, 1, v9);
    }

    *(v15 + 2) = v14 + 1;
    v16 = &v15[16 * v14];
    v5 = v15;
    *(v16 + 4) = v21;
    *(v16 + 5) = v20;
  }

  while (v4 != v3);
LABEL_23:
  v17 = v0[23];

  swift_getKeyPath(byte_21CBA8BD8);
  swift_getKeyPath(byte_21CBA8C00);
  v0[10] = v5;

  sub_21CB81DC4();

  v18 = v0[1];

  return v18();
}

uint64_t sub_21C8493C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = v15 - v8;
  swift_getKeyPath(aP_50, v7);
  swift_getKeyPath(aP_51);
  v15[0] = a1;
  v15[1] = a2;

  sub_21CB81DC4();
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21CB858B4();

  v11 = sub_21CB858A4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v3;
  sub_21C98B308(0, 0, v9, &unk_21CBA8BC0, v12);
}

uint64_t sub_21C84957C(const char *a1, const char *a2, ...)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_21CB81DB4();

  return v4;
}

double sub_21C8495E8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(asc_21CBA8A38);
  swift_getKeyPath(asc_21CBA8A60);
  sub_21CB81DB4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21C84966C()
{
  swift_getKeyPath(byte_21CBA8BD8);
  swift_getKeyPath(byte_21CBA8C00);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C8496E0()
{
  swift_getKeyPath(byte_21CBA8AC8);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C849754()
{
  v1[13] = v0;
  type metadata accessor for PMSaveAccountRequest(0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = sub_21CB858B4();
  v1[17] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[18] = v3;
  v1[19] = v2;

  return MEMORY[0x2822009F8](sub_21C849828, v3, v2);
}

uint64_t sub_21C849828()
{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__accountsState;
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__accountsState);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[15];
  sub_21CB86544();
  v6 = sub_21C7072A8(v3, v0[9]);

  sub_21C84A088(v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = v0[15];
    v8 = *(v6 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v7, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = v0[14];
  sub_21C84AC2C(v0[15], type metadata accessor for PMSaveAccountRequest);
  v11 = *(v1 + v2);

  sub_21CB86544();
  v0[20] = sub_21C7072A8(v11, v0[12]);

  sub_21C84A088(v10);
  v0[21] = sub_21CB858A4();
  v13 = sub_21CB85874();
  v0[22] = v13;
  v0[23] = v12;

  return MEMORY[0x2822009F8](sub_21C849C78, v13, v12);
}

uint64_t sub_21C849C78()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v2 = *(v0[20] + 24);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 24) + **(v2 + 24));
    v4 = swift_task_alloc();
    v0[25] = v4;
    *v4 = v0;
    v4[1] = sub_21C849E1C;
    v5 = v0[14];

    return v9(v5, ObjectType, v2);
  }

  else
  {

    sub_21C84AC2C(v0[14], type metadata accessor for PMSaveAccountRequest);
    v7 = v0[18];
    v8 = v0[19];

    return MEMORY[0x2822009F8](sub_21C849FE8, v7, v8);
  }
}

uint64_t sub_21C849E1C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_21C849F60, v3, v2);
}

uint64_t sub_21C849F60()
{

  sub_21C84AC2C(v0[14], type metadata accessor for PMSaveAccountRequest);
  v1 = v0[18];
  v2 = v0[19];

  return MEMORY[0x2822009F8](sub_21C849FE8, v1, v2);
}

uint64_t sub_21C849FE8()
{
  v1 = *(v0 + 104);

  (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_completion))(1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C84A088@<X0>(void *a1@<X8>)
{
  swift_getKeyPath(asc_21CBA8A80);
  swift_getKeyPath(asc_21CBA8AA8);
  sub_21CB81DB4();

  v2 = sub_21CB85584();

  v3 = [v2 safari_stringByTrimmingWhitespace];

  v4 = v3;
  if (!v3)
  {
    sub_21CB855C4();
    v4 = sub_21CB85584();
  }

  v5 = sub_21CB855C4();
  v7 = v6;
  v8 = [objc_opt_self() userTypedTitleShouldBeTreatedAsAWebsiteWhenAddingNewAccount_];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE000000000000000;
  if (v8)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = v7;
  }

  v16 = v11;
  v17 = v9;
  if (v8)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v10 = v7;
  }

  swift_getKeyPath(aP_50, v10, v12);
  swift_getKeyPath(aP_51);
  sub_21CB81DB4();

  swift_getKeyPath(byte_21CBA8B10);
  swift_getKeyPath(byte_21CBA8B38);
  sub_21CB81DB4();

  swift_getKeyPath(byte_21CBA8C50);
  sub_21CB81DB4();

  swift_getKeyPath(byte_21CBA8C70);
  swift_getKeyPath(aX_38);
  type metadata accessor for PMSaveAccountRequest(0);
  sub_21CB81DB4();

  *a1 = v18;
  a1[1] = v19;
  a1[2] = v18;
  a1[3] = v19;
  a1[4] = v15;
  a1[5] = v14;
  a1[6] = v18;
  a1[7] = v19;
  a1[8] = v17;
  a1[9] = v16;
  return result;
}

uint64_t sub_21C84A308()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v19 - v8;
  swift_getKeyPath(asc_21CBA8A80, v7);
  swift_getKeyPath(asc_21CBA8AA8);
  sub_21CB81DB4();

  v10 = sub_21CB85584();

  v11 = [v10 safari_bestURLForUserTypedString];

  if (v11)
  {
    sub_21CB80B94();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_21CB80BE4();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v5, v12, 1, v13);
  sub_21C79C3F4(v5, v9);
  sub_21C6EDBAC(v9, v2, &qword_27CDEC300, &qword_21CBA3ED0);
  if ((*(v14 + 48))(v2, 1, v13) == 1)
  {
    sub_21C6EA794(v2, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  else
  {
    v15 = sub_21CB80BB4();
    v17 = v16;
    (*(v14 + 8))(v2, v13);
    if (v17)
    {
      sub_21C6EA794(v9, &qword_27CDEC300, &qword_21CBA3ED0);
      return v15;
    }
  }

  swift_getKeyPath(asc_21CBA8A80);
  swift_getKeyPath(asc_21CBA8AA8);
  sub_21CB81DB4();

  sub_21C6EA794(v9, &qword_27CDEC300, &qword_21CBA3ED0);

  return v19;
}

BOOL sub_21C84A604()
{
  swift_getKeyPath(asc_21CBA8A80);
  swift_getKeyPath(asc_21CBA8AA8);
  sub_21CB81DB4();

  v1 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v1 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    swift_getKeyPath(asc_21CBA8A80);
    swift_getKeyPath(asc_21CBA8AA8);
    sub_21CB81DB4();

    if (v8 == *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_configuration) && v9 == *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_configuration + 8))
    {
    }

    else
    {
      v3 = sub_21CB86344();

      if ((v3 & 1) == 0)
      {
        return 1;
      }
    }
  }

  swift_getKeyPath(aP_50);
  swift_getKeyPath(aP_51);
  sub_21CB81DB4();

  v4 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v4 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    return 1;
  }

  swift_getKeyPath(byte_21CBA8B10);
  swift_getKeyPath(byte_21CBA8B38);
  sub_21CB81DB4();

  v5 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v5 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    return 1;
  }

  swift_getKeyPath(byte_21CBA8C50);
  sub_21CB81DB4();

  v7 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v7 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

uint64_t sub_21C84A858(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_21C6E8F4C(0, &qword_27CDF4D80, 0x277D49E00);
  **(*(v2 + 64) + 40) = sub_21CB85824();

  return MEMORY[0x282200948](v2);
}

uint64_t sub_21C84A8DC()
{
  sub_21C84AC2C(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_configuration, type metadata accessor for PMAddAccountModel.Configuration);

  v1 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__groupID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD88, &qword_21CBA8A00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__usernameInput;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__passwordInput, v4);
  v5(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__notesInput, v4);
  v5(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__titleInput, v4);
  v6 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__canSaveUserAlertConfiguration;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD80, &unk_21CBA89F0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__userNameSuggestions;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD78, &qword_21CBA89E8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__accountWasSubmitted;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return v0;
}

uint64_t sub_21C84AB3C()
{
  sub_21C84A8DC();

  return swift_deallocClassInstance();
}

uint64_t sub_21C84ABC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C84AC2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C84ACA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C8493C8(v1, v2);
}

uint64_t sub_21C84ACF4@<X0>(const char *a1@<X3>, const char *a3@<X4>, void *a4@<X8>, ...)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a3);
  sub_21CB81DB4();

  *a4 = v7;
  a4[1] = v8;
  return result;
}

uint64_t sub_21C84AD70(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBA8C50);

  return sub_21CB81DC4();
}

uint64_t sub_21C84ADF4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBA8BD8);
  swift_getKeyPath(byte_21CBA8C00);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C84AE74(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBA8BD8);
  swift_getKeyPath(byte_21CBA8C00);

  return sub_21CB81DC4();
}

uint64_t sub_21C84AEF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21C702EFC;

  return sub_21C848D68();
}

uint64_t type metadata accessor for PMWiFiNetworkRow(uint64_t a1)
{
  result = qword_27CDEDD98;
  if (!qword_27CDEDD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C84B018(uint64_t a1)
{
  type metadata accessor for PMWiFiNetwork(319);
  if (v1 <= 0x3F)
  {
    sub_21C72C81C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C84B0D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v29 = sub_21CB83A34();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccountRowLabelStyle(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDA8, &qword_21CBA8D48);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDB0, &qword_21CBA8D50);
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v22 = &v22 - v11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDB8, &qword_21CBA8D58);
  MEMORY[0x28223BE20](v23);
  v13 = &v22 - v12;
  v31 = v2;
  v30 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDC0, &qword_21CBA8D60);
  type metadata accessor for PMWiFiIcon(0);
  sub_21C6EADEC(&qword_27CDEDDC8, &qword_27CDEDDC0, &qword_21CBA8D60, MEMORY[0x277CE1198]);
  sub_21C84BD8C(&qword_27CDEDDD0, type metadata accessor for PMWiFiIcon, &unk_21CBBA264);
  sub_21CB84C84();
  *v6 = swift_getKeyPath(a8_18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v14 = *(v4 + 20);
  *(v6 + v14) = sub_21CB83074();
  sub_21C6EADEC(&qword_27CDEDDD8, &qword_27CDEDDA8, &qword_21CBA8D48, MEMORY[0x277CDEFF0]);
  sub_21C84BD8C(&qword_27CDEC650, type metadata accessor for PMAccountRowLabelStyle, &unk_21CBA50A8);
  v15 = v22;
  sub_21CB840E4();
  sub_21C84BDD4(v6);
  (*(v8 + 8))(v10, v7);
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  (*(v24 + 32))(v13, v15, v25);
  v16 = &v13[*(v23 + 36)];
  v17 = v37;
  *(v16 + 4) = v36;
  *(v16 + 5) = v17;
  *(v16 + 6) = v38;
  v18 = v33;
  *v16 = v32;
  *(v16 + 1) = v18;
  v19 = v35;
  *(v16 + 2) = v34;
  *(v16 + 3) = v19;
  v20 = v26;
  sub_21CB83A24();
  sub_21C84BE30();
  sub_21CB844F4();
  (*(v27 + 8))(v20, v29);
  return sub_21C75EEC8(v13);
}

uint64_t sub_21C84B658@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB832F4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDE8, &qword_21CBA8DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDF0, &qword_21CBA8DE0);
  sub_21C6EADEC(&qword_27CDEDDF8, &qword_27CDEDDF0, &qword_21CBA8DE0, MEMORY[0x277CE14C0]);
  return sub_21CB81FC4();
}

uint64_t sub_21C84B730@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v48 = sub_21CB82834();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v5 = &object - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE00, &qword_21CBA8DE8);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &object - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &object - v9;
  v10 = *(a1 + 24);
  object = *(a1 + 16);
  v11 = type metadata accessor for PMWiFiNetworkRow(0);
  v12 = *(v11 + 20);
  v13 = v11;
  countAndFlagsBits = v11;
  v14 = (a1 + v12);
  v15 = v14[1];
  v45 = *v14;
  v16 = v45;
  sub_21C805AD8();
  v17 = v15;
  v44 = v15;
  swift_bridgeObjectRetain_n();

  v18 = sub_21CB83314();
  v43 = *(v13 + 28);
  sub_21C7448E0(v5);
  v19 = sub_21CB82824();
  v42 = *(v3 + 8);
  v42(v5, v48);
  KeyPath = swift_getKeyPath(byte_21CBA8DF0);
  v64 = v19 & 1;
  *&v56 = object;
  *(&v56 + 1) = v10;
  *&v57 = v16;
  *(&v57 + 1) = v17;
  *&v58 = 4;
  *(&v58 + 1) = v18;
  *&v59 = sub_21C7902AC;
  *(&v59 + 1) = 0;
  *&v60 = KeyPath;
  *(&v60 + 1) = (v19 & 1) == 0;
  v61 = v19 & 1;
  sub_21CB85184();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE08, &qword_21CBA8E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE10, &qword_21CBA8E28);
  v22 = sub_21C84BFE8();
  *&v62[0] = v21;
  *(&v62[0] + 1) = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v47;
  sub_21CB84974();
  v62[2] = v58;
  v62[3] = v59;
  v62[4] = v60;
  v63 = v61;
  v62[0] = v56;
  v62[1] = v57;
  sub_21C6EA794(v62, &qword_27CDEDE08, &qword_21CBA8E20);
  v24 = PMWiFiNetwork.userVisibleType(isActive:)(*(a1 + *(countAndFlagsBits + 24)));
  object = v24._object;
  countAndFlagsBits = v24._countAndFlagsBits;
  sub_21C7448E0(v5);
  LOBYTE(v21) = sub_21CB82824();
  v42(v5, v48);
  v25 = (v21 & 1) == 0;
  v26 = swift_getKeyPath(byte_21CBA8DF0);
  v48 = v26;
  LOBYTE(v21) = v21 & 1;
  v55 = v21;
  v27 = v49;
  v28 = *(v50 + 16);
  v29 = v51;
  v28(v49, v23, v51);
  v30 = v46;
  v28(v46, v27, v29);
  v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE30, &qword_21CBA8E40) + 48)];
  v32 = object;
  v33 = countAndFlagsBits;
  *&v52 = countAndFlagsBits;
  *(&v52 + 1) = object;
  v35 = v44;
  v34 = v45;
  *&v53 = v45;
  *(&v53 + 1) = v44;
  *&v54[0] = 4;
  *(&v54[0] + 1) = v26;
  *&v54[1] = v25;
  BYTE8(v54[1]) = v21;
  LOBYTE(v26) = v21;
  v36 = v53;
  *v31 = v52;
  *(v31 + 1) = v36;
  *(v31 + 2) = v54[0];
  *(v31 + 41) = *(v54 + 9);
  sub_21C84C12C(&v52, &v56);
  v37 = v51;
  v38 = *(v50 + 8);
  v38(v47, v51);
  *&v56 = v33;
  *(&v56 + 1) = v32;
  *&v57 = v34;
  *(&v57 + 1) = v35;
  *&v58 = 4;
  *(&v58 + 1) = v48;
  *&v59 = v25;
  BYTE8(v59) = v26;
  sub_21C6EA794(&v56, &qword_27CDEDE38, &qword_21CBA8E48);
  return (v38)(v49, v37);
}

uint64_t sub_21C84BBF0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_21CB83E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE08, &qword_21CBA8E20);
  sub_21C84BFE8();
  return sub_21CB840D4();
}

uint64_t sub_21C84BC80@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for PMWiFiIcon(0);
  v5 = v4[5];
  sub_21C84BF7C(a1, &a2[v5]);
  v6 = type metadata accessor for PMWiFiNetwork(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 0, 1, v6);
  v7 = *(a1 + *(type metadata accessor for PMWiFiNetworkRow(0) + 24));
  *a2 = xmmword_21CBA8CC0;
  *(a2 + 1) = xmmword_21CBA8CD0;
  a2[v4[6]] = v7;
  v8 = v4[7];
  *&a2[v8] = swift_getKeyPath(asc_21CBA8DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C84BD8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C84BDD4(uint64_t a1)
{
  v2 = type metadata accessor for PMAccountRowLabelStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C84BE30()
{
  result = qword_27CDEDDE0;
  if (!qword_27CDEDDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDDB8, &qword_21CBA8D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDDA8, &qword_21CBA8D48);
    type metadata accessor for PMAccountRowLabelStyle(255);
    sub_21C6EADEC(&qword_27CDEDDD8, &qword_27CDEDDA8, &qword_21CBA8D48, MEMORY[0x277CDEFF0]);
    sub_21C84BD8C(&qword_27CDEC650, type metadata accessor for PMAccountRowLabelStyle, &unk_21CBA50A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDDE0);
  }

  return result;
}

uint64_t sub_21C84BF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiNetwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C84BFE8()
{
  result = qword_27CDEDE18;
  if (!qword_27CDEDE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDE08, &qword_21CBA8E20);
    sub_21C84C0A0();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDE18);
  }

  return result;
}

unint64_t sub_21C84C0A0()
{
  result = qword_27CDEDE20;
  if (!qword_27CDEDE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDE28, &unk_21CBA8E30);
    sub_21C805EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDE20);
  }

  return result;
}

uint64_t sub_21C84C12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE38, &qword_21CBA8E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C84C19C()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI35PMGlobalAnimationNamespaceContainer___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMGlobalAnimationNamespaceContainer(uint64_t a1)
{
  result = qword_27CDEDE48;
  if (!qword_27CDEDE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C84C28C(uint64_t a1)
{
  result = sub_21CB81114();
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

uint64_t sub_21C84C3A4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);

  return sub_21CB81DC4();
}

double sub_21C84C440@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v108 = a2;
  *&v105 = sub_21CB82704();
  *&v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAddAccountView(0);
  v102 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v106 = v5;
  v107 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21CB829D4();
  v99 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21CB81024();
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v76 - v10;
  v11 = sub_21CB82FD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEE8, &qword_21CBA8FD8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v76 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEE0, &qword_21CBA8FD0);
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v20 = &v76 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDED8, &qword_21CBA8FC8);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v22 = &v76 - v21;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDED0, &qword_21CBA8FC0);
  v88 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v78 = &v76 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEC0, &qword_21CBA8FB0);
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v79 = &v76 - v24;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF08, &qword_21CBA8FE0);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v81 = &v76 - v25;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEB8, &qword_21CBA8FA8);
  MEMORY[0x28223BE20](v91);
  v95 = &v76 - v26;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEA0, &qword_21CBA8FA0);
  MEMORY[0x28223BE20](v96);
  v97 = &v76 - v27;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF10, &qword_21CBA8FE8);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v109 = &v76 - v28;
  v111 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF18, &qword_21CBA8FF0);
  sub_21C852918();
  sub_21CB83EF4();
  (*(v12 + 104))(v14, *MEMORY[0x277CDDDC0], v11);
  v29 = sub_21C6EADEC(&qword_27CDEDEF0, &qword_27CDEDEE8, &qword_21CBA8FD8, MEMORY[0x277CDE580]);
  sub_21CB84684();
  (*(v12 + 8))(v14, v11);
  (*(v16 + 8))(v18, v15);
  v30 = v77;
  sub_21CB81014();
  sub_21CB81014();
  v31 = sub_21CB80FF4();
  v33 = v32;
  v34 = *(v85 + 8);
  v35 = v8;
  v36 = v87;
  v34(v35, v87);
  v34(v30, v36);
  *&v117 = v31;
  *(&v117 + 1) = v33;
  v112 = v15;
  v113 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_21C71F3FC();
  v39 = MEMORY[0x277D837D0];
  v40 = v80;
  sub_21CB842F4();

  (*(v82 + 8))(v20, v40);
  v41 = v76;
  v87 = v76[1];
  sub_21C84A604();
  *&v117 = v40;
  *(&v117 + 1) = v39;
  v42 = v41;
  *&v118 = OpaqueTypeConformance2;
  *(&v118 + 1) = v38;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v78;
  v45 = v83;
  sub_21CB84644();
  (*(v84 + 8))(v22, v45);
  v46 = v94;
  sub_21CB85294();
  *&v117 = v45;
  *(&v117 + 1) = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_21C7219B4(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v49 = v79;
  v50 = v86;
  v51 = v98;
  sub_21CB849C4();
  (*(v99 + 8))(v46, v51);
  (*(v88 + 8))(v44, v50);
  v110 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEC8, &qword_21CBA8FB8);
  *&v117 = v50;
  *(&v117 + 1) = v51;
  v52 = v81;
  *&v118 = v47;
  *(&v118 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDEDEF8, &qword_27CDEDEC8, &qword_21CBA8FB8, MEMORY[0x277CDDF68]);
  v53 = v89;
  sub_21CB84894();
  (*(v90 + 8))(v49, v53);
  sub_21CB85214();
  sub_21CB82AC4();
  v54 = v95;
  (*(v92 + 32))(v95, v52, v93);
  v55 = &v54[*(v91 + 36)];
  v56 = v122;
  *(v55 + 4) = v121;
  *(v55 + 5) = v56;
  *(v55 + 6) = v123;
  v57 = v118;
  *v55 = v117;
  *(v55 + 1) = v57;
  v58 = v120;
  *(v55 + 2) = v119;
  *(v55 + 3) = v58;
  v59 = v107;
  sub_21C8529DC(v42, v107);
  v60 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v61 = swift_allocObject();
  sub_21C852A40(v59, v61 + v60);
  v62 = v54;
  v63 = v97;
  sub_21C75F114(v62, v97);
  v64 = (v63 + *(v96 + 36));
  *v64 = sub_21C852AA4;
  v64[1] = v61;
  v64[2] = 0;
  v64[3] = 0;
  sub_21C8529DC(v42, v59);
  v65 = swift_allocObject();
  sub_21C852A40(v59, v65 + v60);
  v66 = v103;
  sub_21CB826F4();
  sub_21C852580();
  sub_21CB84944();

  (*(v104 + 8))(v66, v105);
  sub_21C6EA794(v63, &qword_27CDEDEA0, &qword_21CBA8FA0);
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel, &unk_21CBA89A8);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBA9008);
  sub_21CB82694();

  v67 = v112;
  v68 = v113;
  v69 = v116;
  v105 = v114;
  v104 = v115;
  sub_21C8529DC(v42, v59);
  v70 = swift_allocObject();
  sub_21C852A40(v59, v70 + v60);
  v71 = swift_allocObject();
  *(v71 + 16) = sub_21C852B10;
  *(v71 + 24) = v70;
  v72 = v108;
  (*(v100 + 32))(v108, v109, v101);
  v73 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE90, &qword_21CBA8F98) + 36);
  *v73 = v67;
  *(v73 + 8) = v68;
  v74 = v104;
  result = *&v105;
  *(v73 + 16) = v105;
  *(v73 + 32) = v74;
  *(v73 + 48) = v69;
  *(v73 + 56) = sub_21C852B90;
  *(v73 + 64) = v71;
  return result;
}

uint64_t sub_21C84D46C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF30, &unk_21CBA8FF8);
  sub_21C6EADEC(&qword_27CDEDF28, &qword_27CDEDF30, &unk_21CBA8FF8, MEMORY[0x277CE14C0]);
  return sub_21CB85034();
}

uint64_t sub_21C84D520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF80, &qword_21CBA91B8);
  v107 = *(v3 - 8);
  v108 = v3;
  MEMORY[0x28223BE20](v3);
  v94 = &v77[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v105 = &v77[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF88, &qword_21CBA91C0);
  MEMORY[0x28223BE20](v7 - 8);
  v106 = &v77[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v104 = &v77[-v10];
  v93 = sub_21CB82184();
  v92 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v91 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PMAddAccountView(0);
  v13 = v12 - 8;
  v83 = *(v12 - 8);
  v14 = *(v83 + 64);
  MEMORY[0x28223BE20](v12);
  v82 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for PMPasswordField(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF90, &qword_21CBA91C8);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v77[-v18];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF98, &qword_21CBA91D0);
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v77[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFA0, &qword_21CBA91D8);
  MEMORY[0x28223BE20](v20 - 8);
  v100 = &v77[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v98 = &v77[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFA8, &qword_21CBA91E0);
  MEMORY[0x28223BE20](v24 - 8);
  v99 = &v77[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v28 = &v77[-v27];
  v101 = &v77[-v27];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFB0, &qword_21CBA91E8);
  v103 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v77[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v102 = &v77[-v31];
  sub_21C84E268(&v77[-v31]);
  sub_21C84E964(v28);
  v84 = "ame constraints specified.";
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel, &unk_21CBA89A8);
  sub_21CB82684();
  swift_getKeyPath(asc_21CBA90D8);
  sub_21CB82694();

  v81 = v113;
  v80 = v114;
  v79 = v115;
  swift_getKeyPath(asc_21CBA90D8);
  swift_getKeyPath(byte_21CBA9100);
  sub_21CB81DB4();

  v32 = v111;

  v33 = HIBYTE(*(&v32 + 1)) & 0xFLL;
  if ((*(&v32 + 1) & 0x2000000000000000) == 0)
  {
    v33 = v32 & 0xFFFFFFFFFFFFLL;
  }

  v78 = v33 == 0;
  swift_getKeyPath(aX_19);
  swift_getKeyPath(aX_39);
  sub_21CB81DB4();

  v34 = v111;
  v35 = v82;
  sub_21C8529DC(a1, v82);
  v36 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v37 = swift_allocObject();
  sub_21C852A40(v35, v37 + v36);
  v38 = v15[11];
  *&v17[v38] = swift_getKeyPath(byte_21CBA91F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v39 = v15[12];
  *&v17[v39] = swift_getKeyPath(byte_21CBA9228);
  v40 = &v17[v15[13]];
  LOBYTE(v109) = 0;
  sub_21CB84D44();
  v41 = *(&v111 + 1);
  *v40 = v111;
  *(v40 + 1) = v41;
  v42 = &v17[v15[14]];
  v109 = 0;
  v110 = 0xE000000000000000;
  sub_21CB84D44();
  v43 = v112;
  *v42 = v111;
  *(v42 + 2) = v43;
  v44 = &v17[v15[15]];
  v109 = 0;
  v110 = 0xE000000000000000;
  sub_21CB84D44();
  v45 = v112;
  *v44 = v111;
  *(v44 + 2) = v45;
  *v17 = v81;
  v46 = v79;
  *(v17 + 2) = v80;
  *(v17 + 3) = v46;
  v17[32] = 1;
  v17[33] = v78;
  *(v17 + 17) = 256;
  *(v17 + 40) = v34;
  *(v17 + 7) = sub_21C853560;
  *(v17 + 8) = v37;
  v47 = a1 + *(v13 + 36);
  v48 = *v47;
  v49 = *(v47 + 1);
  LOBYTE(v47) = v47[16];
  LOBYTE(v113) = v48;
  *(&v113 + 1) = v49;
  LOBYTE(v114) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  sub_21CB81F74();
  v113 = v111;
  LOBYTE(v114) = v112;
  LOBYTE(v111) = 2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE78, &qword_21CBA8ED8);
  v51 = sub_21C7219B4(&qword_27CDEDFB8, type metadata accessor for PMPasswordField, &unk_21CBC49E8);
  v52 = sub_21C721AD4();
  v53 = v85;
  sub_21CB84824();

  sub_21C853500(v17, type metadata accessor for PMPasswordField);
  v54 = v91;
  sub_21CB82174();
  *&v113 = v15;
  *(&v113 + 1) = v50;
  v114 = v51;
  v115 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v86;
  v57 = v87;
  sub_21CB841A4();
  (*(v92 + 8))(v54, v93);
  (*(v88 + 8))(v53, v57);
  *&v113 = v57;
  *(&v113 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v58 = v98;
  v59 = v89;
  sub_21CB845C4();
  (*(v90 + 8))(v56, v59);
  v60 = v104;
  sub_21C84F1AC(v104);
  v61 = v105;
  sub_21C84F828(v105);
  v93 = *(v103 + 16);
  v62 = v96;
  v63 = v97;
  (v93)(v96, v102, v97);
  v64 = v99;
  sub_21C6EDBAC(v101, v99, &qword_27CDEDFA8, &qword_21CBA91E0);
  v65 = v100;
  sub_21C6EDBAC(v58, v100, &qword_27CDEDFA0, &qword_21CBA91D8);
  v66 = v60;
  v67 = v106;
  sub_21C6EDBAC(v66, v106, &qword_27CDEDF88, &qword_21CBA91C0);
  v68 = *(v107 + 16);
  v69 = v94;
  v68(v94, v61, v108);
  v70 = v95;
  (v93)(v95, v62, v63);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC0, &unk_21CBA9250);
  sub_21C6EDBAC(v64, v70 + v71[12], &qword_27CDEDFA8, &qword_21CBA91E0);
  sub_21C6EDBAC(v65, v70 + v71[16], &qword_27CDEDFA0, &qword_21CBA91D8);
  sub_21C6EDBAC(v67, v70 + v71[20], &qword_27CDEDF88, &qword_21CBA91C0);
  v72 = v108;
  v68((v70 + v71[24]), v69, v108);
  v73 = *(v107 + 8);
  v73(v105, v72);
  sub_21C6EA794(v104, &qword_27CDEDF88, &qword_21CBA91C0);
  sub_21C6EA794(v98, &qword_27CDEDFA0, &qword_21CBA91D8);
  sub_21C6EA794(v101, &qword_27CDEDFA8, &qword_21CBA91E0);
  v74 = *(v103 + 8);
  v75 = v97;
  v74(v102, v97);
  v73(v69, v72);
  sub_21C6EA794(v106, &qword_27CDEDF88, &qword_21CBA91C0);
  sub_21C6EA794(v100, &qword_27CDEDFA0, &qword_21CBA91D8);
  sub_21C6EA794(v99, &qword_27CDEDFA8, &qword_21CBA91E0);
  return (v74)(v96, v75);
}

uint64_t sub_21C84E268@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE080, &qword_21CBD0220);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v57 - v4;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE088, &qword_21CBA93D0);
  MEMORY[0x28223BE20](v60);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE090, &qword_21CBA93D8);
  v15 = *(v14 - 8);
  v65 = v14;
  v66 = v15;
  MEMORY[0x28223BE20](v14);
  v63 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE098, &unk_21CBA93E0);
  v18 = *(v17 - 8);
  v67 = v17;
  v68 = v18;
  *&v19 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v64 = &v57 - v20;
  swift_getKeyPath(aX_19, v19);
  swift_getKeyPath(aX_39);
  sub_21CB81DB4();

  v61 = v75;
  v62 = v74;
  sub_21CB81014();
  sub_21CB81014();
  v21 = sub_21CB80FF4();
  v58 = v22;
  v59 = v21;
  v23 = *(v6 + 8);
  v23(v8, v5);
  v23(v11, v5);
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel, &unk_21CBA89A8);
  sub_21CB82684();
  swift_getKeyPath(aX_19);
  sub_21CB82694();

  v24 = v74;
  v25 = v75;
  v26 = v76;
  v27 = v77;
  v28 = *MEMORY[0x277D49D48];
  swift_getKeyPath(aX_19);
  swift_getKeyPath(aX_39);
  sub_21CB81DB4();

  v29 = sub_21CB85694();

  if (v29 <= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = sub_21C91A0A0(v30, v24, v25, v26, v27);
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = (v2 + *(type metadata accessor for PMAddAccountView(0) + 28));
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v38) = v38[16];
  LOBYTE(v74) = v39;
  v75 = v40;
  LOBYTE(v76) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  sub_21CB81F74();
  v41 = v72;
  v42 = v73;
  *(v13 + 11) = v71;
  *(v13 + 12) = v41;
  *(v13 + 52) = v42;
  v43 = v60;
  v44 = *(v60 + 80);
  *&v13[v44] = swift_getKeyPath(byte_21CBA91F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v45 = v61;
  *v13 = v62;
  *(v13 + 1) = v45;
  v46 = v58;
  *(v13 + 2) = v59;
  *(v13 + 3) = v46;
  *(v13 + 4) = v31;
  *(v13 + 5) = v33;
  *(v13 + 6) = v35;
  *(v13 + 7) = v37;
  *(v13 + 8) = 0;
  *(v13 + 9) = 0;
  v13[80] = 1;
  v47 = v43;
  sub_21C851920(&v13[*(v43 + 76)]);
  v48 = sub_21C6EADEC(&qword_27CDEE0A0, &qword_27CDEE088, &qword_21CBA93D0, &unk_21CBAC900);
  v49 = v63;
  MEMORY[0x21CF14040](1, v47, v48);
  sub_21C6EA794(v13, &qword_27CDEE088, &qword_21CBA93D0);
  v50 = v69;
  sub_21CB83A84();
  v51 = sub_21CB83A94();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v74 = v47;
  v75 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v64;
  v53 = v65;
  sub_21CB84664();
  sub_21C6EA794(v50, &qword_27CDEE080, &qword_21CBD0220);
  (*(v66 + 8))(v49, v53);
  v74 = v53;
  v75 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v55 = v67;
  sub_21CB841D4();
  return (*(v68 + 8))(v54, v55);
}

uint64_t sub_21C84E964@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v58 = type metadata accessor for PMAdapativeStackLabeledContentStyle(0);
  MEMORY[0x28223BE20](v58);
  v54 = (&v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for PMAddAccountView(0);
  v4 = v3 - 8;
  v49 = *(v3 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE068, &qword_21CBA9390);
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v43 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE070, &qword_21CBA9398);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v43 - v14;
  v52 = "nt group picker)";
  v46 = v1;
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel, &unk_21CBA89A8);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBA93A0);
  sub_21CB82694();

  v45 = v68;
  v43 = *(&v69 + 1);
  v44 = v69;
  sub_21CB81014();
  v15 = sub_21CB81004();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v12, v6);
  sub_21CB81014();
  sub_21CB81014();
  v19 = sub_21CB80FF4();
  v21 = v20;
  v18(v9, v6);
  v18(v12, v6);
  v22 = v46;
  v23 = v47;
  sub_21C8529DC(v46, v47);
  v24 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v25 = swift_allocObject();
  sub_21C852A40(v23, v25 + v24);
  v61 = v45;
  *&v62 = v44;
  *(&v62 + 1) = v43;
  *&v63 = v15;
  *(&v63 + 1) = v17;
  *&v64 = v19;
  *(&v64 + 1) = v21;
  v65 = 0uLL;
  *&v66 = sub_21C853454;
  *(&v66 + 1) = v25;
  v67 = 0;
  v26 = v22 + *(v4 + 36);
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v26) = *(v26 + 16);
  LOBYTE(v68) = v27;
  *(&v68 + 1) = v28;
  LOBYTE(v69) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  sub_21CB81F74();
  v60 = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE78, &qword_21CBA8ED8);
  v30 = sub_21C853458();
  v31 = sub_21C721AD4();
  v32 = v50;
  sub_21CB84824();

  v72 = v65;
  v73 = v66;
  v74 = v67;
  v68 = v61;
  v69 = v62;
  v70 = v63;
  v71 = v64;
  sub_21C8534AC(&v68);
  v33 = sub_21CB83034();
  v34 = v54;
  *v54 = v33;
  *(v34 + 8) = 1;
  v35 = v58;
  v36 = *(v58 + 24);
  *(v34 + v36) = swift_getKeyPath(byte_21CBA91F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  *&v61 = &type metadata for PMTextFieldWithSuggestions;
  *(&v61 + 1) = v29;
  *&v62 = v30;
  *(&v62 + 1) = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_21C7219B4(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle, &unk_21CBCBE04);
  v39 = v51;
  v40 = v53;
  sub_21CB844C4();
  sub_21C853500(v34, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  (*(v55 + 8))(v32, v40);
  *&v61 = v40;
  *(&v61 + 1) = v35;
  *&v62 = OpaqueTypeConformance2;
  *(&v62 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v41 = v56;
  sub_21CB845C4();
  return (*(v57 + 8))(v39, v41);
}

uint64_t sub_21C84F1AC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED880, &qword_21CBA7C10);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v31 - v3;
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE020, &qword_21CBA92E8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v35 = &v31 - v12;
  v13 = sub_21CB82F84();
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + *(type metadata accessor for PMAddAccountView(0) + 36);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    LOBYTE(v39) = *v16;
  }

  else
  {

    sub_21CB85B04();
    v33 = v7;
    v18 = sub_21CB83C94();
    v32 = v13;
    v19 = v18;
    v7 = v33;
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v17, 0);
    (*(v37 + 8))(v15, v32);
    LOBYTE(v17) = v39;
  }

  if (v17 == 1)
  {
  }

  else
  {
    v20 = sub_21CB86344();

    if ((v20 & 1) == 0)
    {
LABEL_9:
      v29 = 1;
      return (*(v11 + 56))(v38, v29, 1, v10);
    }
  }

  swift_getKeyPath(a8_19);
  swift_getKeyPath(byte_21CBA9318);
  sub_21CB81DB4();

  v21 = *(v39 + 16);

  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = v34;
  sub_21CB81014();
  sub_21CB81014();
  v23 = sub_21CB80FF4();
  v25 = v24;
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v22, v4);
  v39 = v23;
  v40 = v25;
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel, &unk_21CBA89A8);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBA9338);
  sub_21CB82694();

  MEMORY[0x28223BE20](v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE028, &qword_21CBA9368);
  sub_21C8532F0();
  sub_21C6EADEC(&qword_27CDEE038, &qword_27CDEE028, &qword_21CBA9368, MEMORY[0x277CDDFA0]);
  sub_21C71F3FC();
  v28 = v35;
  sub_21CB84E44();
  (*(v11 + 32))(v38, v28, v10);
  v29 = 0;
  return (*(v11 + 56))(v38, v29, 1, v10);
}

uint64_t sub_21C84F828@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v57 = v51 - v2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFD0, &qword_21CBA9260);
  MEMORY[0x28223BE20](v61);
  v58 = v51 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFD8, &qword_21CBA9268);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v59 = v51 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFE0, &qword_21CBA9270);
  MEMORY[0x28223BE20](v66);
  v60 = v51 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFE8, &qword_21CBA9278);
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v62 = v51 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFF0, &qword_21CBA9280);
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v63 = v51 - v7;
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v51 - v13;
  sub_21CB81014();
  sub_21CB81014();
  v15 = sub_21CB80FF4();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  *&v82 = v15;
  *(&v82 + 1) = v17;
  sub_21C71F3FC();
  v19 = sub_21CB84054();
  v21 = v20;
  LOBYTE(v14) = v22;
  v74 = v23;
  v54 = sub_21CB83134();
  v53 = v24;
  v51[1] = v25;
  v52 = v26;
  v56 = v1;
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel, &unk_21CBA89A8);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBA9288);
  sub_21CB82694();

  sub_21C91A0A0(*MEMORY[0x277D49D50], v82, *(&v82 + 1), v83, *(&v83 + 1));

  LOBYTE(v14) = v14 & 1;
  v55 = v21;
  sub_21C79B058(v19, v21, v14);

  v27 = v19;
  v28 = v57;
  sub_21CB85334();
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  v29 = v58;
  v30 = v64;
  sub_21CB845C4();
  (*(v65 + 8))(v28, v30);
  KeyPath = swift_getKeyPath(aP_52);
  v32 = v29 + *(v61 + 36);
  *v32 = KeyPath;
  *(v32 + 8) = 0;
  sub_21C853080();
  v33 = v59;
  sub_21CB849E4();
  sub_21C6EA794(v29, &qword_27CDEDFD0, &qword_21CBA9260);
  sub_21CB85224();
  sub_21CB82AC4();
  v34 = v60;
  (*(v67 + 32))(v60, v33, v68);
  v35 = v66;
  v36 = (v34 + *(v66 + 36));
  v37 = v87;
  v38 = v88;
  v36[4] = v86;
  v36[5] = v37;
  v36[6] = v38;
  v39 = v83;
  *v36 = v82;
  v36[1] = v39;
  v40 = v85;
  v36[2] = v84;
  v36[3] = v40;
  v41 = sub_21C853220();
  v42 = v62;
  sub_21CB841E4();
  sub_21C6EA794(v34, &qword_27CDEDFE0, &qword_21CBA9270);
  v79 = v35;
  v80 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v63;
  v45 = v69;
  sub_21CB84314();
  (*(v70 + 8))(v42, v45);
  v46 = (v56 + *(type metadata accessor for PMAddAccountView(0) + 28));
  v47 = *v46;
  v48 = *(v46 + 1);
  LOBYTE(v46) = v46[16];
  LOBYTE(v79) = v47;
  v80 = v48;
  v81 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  sub_21CB81F74();
  v79 = v76;
  v80 = v77;
  v81 = v78;
  v75 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE78, &qword_21CBA8ED8);
  v76 = v45;
  v77 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21C721AD4();
  v49 = v71;
  sub_21CB84824();
  sub_21C74A72C(v27, v55, v14);

  return (*(v72 + 8))(v44, v49);
}

uint64_t sub_21C8501D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF40, &qword_21CBA90A0);
  MEMORY[0x28223BE20](v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF48, &qword_21CBA90A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = sub_21CB83604();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF50, &unk_21CBA90B0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  sub_21CB835C4();
  v16[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF58, &unk_21CBA96B0);
  sub_21C852CFC();
  sub_21CB82194();
  sub_21CB835D4();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF68, &unk_21CBA90C0);
  sub_21C852DF0();
  sub_21CB82194();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  sub_21CB83394();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_21C8504EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a1;
  v19[1] = a2;
  v2 = type metadata accessor for PMAddAccountView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMPlatformRoleButton(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  sub_21CB81EF4();
  sub_21C8529DC(v19[0], v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_21C852A40(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *v11 = v12;
  v11[1] = v14;
  v17 = (v11 + *(v9 + 24));
  *v17 = sub_21C853060;
  v17[1] = v16;
  sub_21C7219B4(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  sub_21CB845C4();
  return sub_21C853500(v11, type metadata accessor for PMPlatformRoleButton);
}

uint64_t sub_21C850798(uint64_t a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAddAccountView(0);
  sub_21C95B2C8(v5);
  sub_21CB823A4();
  (*(v3 + 8))(v5, v2);
  return (*(*(a1 + 8) + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_completion))(0);
}

uint64_t sub_21C8508A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v62 = a2;
  v2 = sub_21CB82A04();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAddAccountView(0);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_21CB81024();
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v47 = type metadata accessor for PMPlatformRoleButton(0);
  MEMORY[0x28223BE20](v47);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF58, &unk_21CBA96B0);
  MEMORY[0x28223BE20](v53);
  v49 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF78, &qword_21CBA90D0);
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x28223BE20](v15);
  v48 = &v47 - v16;
  v17 = sub_21CB81F14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81F04();
  sub_21CB81014();
  sub_21CB81014();
  v21 = sub_21CB80FF4();
  v23 = v22;
  v24 = *(v6 + 8);
  v25 = v8;
  v26 = v55;
  v24(v25, v55);
  v24(v11, v26);
  v27 = v18;
  v28 = v47;
  v29 = *(v18 + 16);
  v30 = v13 + *(v47 + 20);
  v55 = v20;
  v50 = v17;
  v29(v30, v20, v17);
  v31 = v51;
  sub_21C8529DC(v56, v51);
  v32 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v33 = swift_allocObject();
  sub_21C852A40(v31, v33 + v32);
  *v13 = v21;
  v13[1] = v23;
  v34 = (v13 + *(v28 + 24));
  *v34 = sub_21C852EE4;
  v34[1] = v33;
  sub_21C7219B4(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  v36 = v48;
  v35 = v49;
  sub_21CB845C4();
  sub_21C853500(v13, type metadata accessor for PMPlatformRoleButton);
  v37 = v57;
  sub_21CB829F4();
  sub_21C852CFC();
  sub_21CB84334();
  (*(v58 + 8))(v37, v59);
  sub_21C6EA794(v35, &qword_27CDEDF58, &unk_21CBA96B0);
  swift_getKeyPath(asc_21CBA90D8);
  swift_getKeyPath(byte_21CBA9100);
  sub_21CB81DB4();

  v39 = v63;
  v38 = v64;

  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    swift_getKeyPath(byte_21CBA9148);
    sub_21CB81DB4();

    (*(v27 + 8))(v55, v50);
    v41 = v63;
  }

  else
  {
    (*(v27 + 8))(v55, v50);
    v41 = 1;
  }

  KeyPath = swift_getKeyPath(byte_21CBA9168);
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  v44 = v62;
  (*(v60 + 32))(v62, v36, v61);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF68, &unk_21CBA90C0);
  v46 = (v44 + *(result + 36));
  *v46 = KeyPath;
  v46[1] = sub_21C735744;
  v46[2] = v43;
  return result;
}

uint64_t sub_21C850F7C(uint64_t a1)
{
  v2 = type metadata accessor for PMAddAccountView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = &v16[-v8];
  swift_getKeyPath(byte_21CBA9148);
  v16[15] = 1;

  sub_21CB81DC4();
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21C8529DC(a1, v5);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21C852A40(v5, v13 + v12);
  sub_21C98B308(0, 0, v9, &unk_21CBA91A8, v13);
}

uint64_t sub_21C851188()
{
  v0[2] = sub_21CB858B4();
  v0[3] = sub_21CB858A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21C74FDC4;

  return sub_21C851234();
}

uint64_t sub_21C851234()
{
  v1[2] = v0;
  v2 = sub_21CB823B4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21CB858B4();
  v1[6] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21C851328, v4, v3);
}

uint64_t sub_21C851328()
{
  v0[9] = *(v0[2] + 8);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_21C8513C0;

  return sub_21C849754();
}

uint64_t sub_21C8513C0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_21C8515AC;
  }

  else
  {
    v5 = sub_21C8514FC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C8514FC()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  type metadata accessor for PMAddAccountView(0);
  sub_21C95B2C8(v1);
  sub_21CB823A4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21C8515AC()
{
  v1 = *(v0 + 88);

  swift_getKeyPath(byte_21CBA9148);
  *(v0 + 96) = 0;

  sub_21CB81DC4();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C851678(uint64_t a1)
{
  swift_getKeyPath(aX_19);
  swift_getKeyPath(aX_39);
  sub_21CB81DB4();

  type metadata accessor for PMAddAccountView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  return sub_21CB81F64();
}

double sub_21C851764@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_21CBA9008);
  swift_getKeyPath(byte_21CBA9038);
  sub_21CB81DB4();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_21C8517EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_getKeyPath(byte_21CBA9008);
  swift_getKeyPath(byte_21CBA9038);
  sub_21C852CB0(v2, v3, v4);

  return sub_21CB81DC4();
}

uint64_t sub_21C851898(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0 && result == 1)
  {
    type metadata accessor for PMAddAccountView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
    return sub_21CB81F64();
  }

  return result;
}

double sub_21C851920@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB80E34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  MEMORY[0x28223BE20](v9 - 8);
  v41 = &v33 - v10;
  v11 = *(v1 + 8);
  v12 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_bundleIDForFallbackIcon + 8);
  v38 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_bundleIDForFallbackIcon);
  v39 = v12;

  sub_21C84A308();
  v13 = sub_21CB85584();

  v14 = [v13 safari_highLevelDomainForPasswordManager];

  if (!v14)
  {
    sub_21CB855C4();
    v14 = sub_21CB85584();
  }

  v15 = [v14 _lp_userVisibleHost];

  v16 = sub_21CB855C4();
  v36 = v17;
  v37 = v16;

  swift_getKeyPath(aX_19);
  swift_getKeyPath(aX_39);
  sub_21CB81DB4();

  v34 = *(&v43 + 1);
  v35 = v43;
  v18 = sub_21CB85B74();
  v19 = *(*(v18 - 8) + 56);
  v19(v41, 1, 1, v18);
  KeyPath = swift_getKeyPath(aX_40);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v43);

  type metadata accessor for PMAccountsState(0);
  sub_21C7219B4(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v21 = sub_21CB82674();
  v23 = v22;

  *a1 = v21;
  *(a1 + 8) = v23;
  *(a1 + 16) = swift_getKeyPath(byte_21CBA9228);
  *(a1 + 24) = swift_getKeyPath(a8_20);
  *(a1 + 32) = swift_getKeyPath(byte_21CBA9440);
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
  sub_21CB84D44();
  *(a1 + 40) = v43;
  v24 = type metadata accessor for PMAccountIcon(0);
  v25 = v24[11];
  v19(a1 + v25, 1, 1, v18);
  v26 = a1 + v24[16];
  v27 = a1 + v24[17];
  *v27 = sub_21C7E79A0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  sub_21CB80E24();
  (*(v4 + 16))(v40, v8, v3);
  sub_21CB84D44();
  (*(v4 + 8))(v8, v3);
  v28 = v34;
  *(a1 + 56) = v35;
  *(a1 + 64) = v28;
  v29 = v36;
  *(a1 + 72) = v37;
  *(a1 + 80) = v29;
  sub_21C805878(v41, a1 + v25);
  *(a1 + v24[12]) = 1;
  *(a1 + v24[13]) = 0;
  *(a1 + v24[14]) = 0;
  v30 = a1 + v24[15];
  v31 = v39;
  *v30 = v38;
  *(v30 + 8) = v31;
  *(v30 + 16) = 1;
  result = 0.0;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *v26 = 0u;
  *(v26 + 48) = 1;
  return result;
}

void *sub_21C851DC0(uint64_t a1)
{
  type metadata accessor for PMAddAccountView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  result = sub_21CB81F54();
  if (v2 <= 2u)
  {
    return sub_21CB81F64();
  }

  return result;
}

uint64_t sub_21C851EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v18 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE040, &qword_21CBA9370);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE048, &qword_21CBA9378);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  if (qword_27CDEA498 != -1)
  {
    swift_once();
  }

  v20[0] = qword_27CE18748;
  v20[1] = qword_27CE18750;
  v11 = sub_21CB85C44();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = sub_21C8532F0();
  v13 = sub_21C71F3FC();

  MEMORY[0x21CF11D00](v20, v6, v4, MEMORY[0x277D837D0], v12, v13);
  type metadata accessor for PMAddAccountView(0);
  swift_getKeyPath(a8_19);
  swift_getKeyPath(byte_21CBA9318);
  sub_21CB81DB4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
  sub_21C6EADEC(&qword_27CDEDBB8, &qword_27CDEDBA8, &qword_21CBA9380, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDEE050, &qword_27CDEE048, &qword_21CBA9378, MEMORY[0x277CDD7E8]);
  sub_21C7219B4(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup, &unk_21CBCAC0C);
  sub_21CB84FE4();
  sub_21CB82494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE058, &qword_21CBA9388);
  sub_21C8533A4();
  v14 = v19;
  sub_21CB82494();
  (*(v17 + 8))(v3, v14);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21C8522E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - v3;
  v5 = (a1 + *(type metadata accessor for PMSharingGroup(0) + 20));
  v6 = v5[1];
  v12[0] = *v5;
  v12[1] = v6;
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, a1, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = sub_21C8532F0();
  v10 = sub_21C71F3FC();

  return MEMORY[0x21CF11D00](v12, v4, v2, MEMORY[0x277D837D0], v9, v10);
}

uint64_t sub_21C852440()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE90, &qword_21CBA8F98);
  sub_21C8524B8();
  return sub_21CB82924();
}

unint64_t sub_21C8524B8()
{
  result = qword_27CDEDE98;
  if (!qword_27CDEDE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDE90, &qword_21CBA8F98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEA0, &qword_21CBA8FA0);
    sub_21C852580();
    swift_getOpaqueTypeConformance2();
    sub_21C8528BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDE98);
  }

  return result;
}

unint64_t sub_21C852580()
{
  result = qword_27CDEDEA8;
  if (!qword_27CDEDEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEA0, &qword_21CBA8FA0);
    sub_21C85260C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDEA8);
  }

  return result;
}

unint64_t sub_21C85260C()
{
  result = qword_27CDEDEB0;
  if (!qword_27CDEDEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEB8, &qword_21CBA8FA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEC0, &qword_21CBA8FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEC8, &qword_21CBA8FB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDED0, &qword_21CBA8FC0);
    sub_21CB829D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDED8, &qword_21CBA8FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEE0, &qword_21CBA8FD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEE8, &qword_21CBA8FD8);
    sub_21C6EADEC(&qword_27CDEDEF0, &qword_27CDEDEE8, &qword_21CBA8FD8, MEMORY[0x277CDE580]);
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C7219B4(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEDEF8, &qword_27CDEDEC8, &qword_21CBA8FB8, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDEB0);
  }

  return result;
}

unint64_t sub_21C8528BC()
{
  result = qword_27CDEDF00;
  if (!qword_27CDEDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDF00);
  }

  return result;
}

unint64_t sub_21C852918()
{
  result = qword_27CDEDF20;
  if (!qword_27CDEDF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF18, &qword_21CBA8FF0);
    sub_21C6EADEC(&qword_27CDEDF28, &qword_27CDEDF30, &unk_21CBA8FF8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDF20);
  }

  return result;
}

uint64_t sub_21C8529DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAddAccountView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C852A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAddAccountView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C852B10(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for PMAddAccountView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C851898(a1, a2 & 1, v6);
}

uint64_t sub_21C852BBC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_21CBA9148);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C852C3C(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBA9148);

  return sub_21CB81DC4();
}

uint64_t sub_21C852CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_21C852CFC()
{
  result = qword_27CDEDF60;
  if (!qword_27CDEDF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF58, &unk_21CBA96B0);
    sub_21C7219B4(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
    sub_21C7219B4(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDF60);
  }

  return result;
}

unint64_t sub_21C852DF0()
{
  result = qword_27CDEDF70;
  if (!qword_27CDEDF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF68, &unk_21CBA90C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF58, &unk_21CBA96B0);
    sub_21C852CFC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDF70);
  }

  return result;
}

uint64_t sub_21C852EFC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAddAccountView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C852F70()
{
  type metadata accessor for PMAddAccountView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21C702EFC;

  return sub_21C851188();
}

unint64_t sub_21C853080()
{
  result = qword_27CDEE000;
  if (!qword_27CDEE000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFD0, &qword_21CBA9260);
    sub_21C853138();
    sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE000);
  }

  return result;
}

unint64_t sub_21C853138()
{
  result = qword_27CDEE008;
  if (!qword_27CDEE008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE010, &qword_21CBA92E0);
    sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
    sub_21C7219B4(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE008);
  }

  return result;
}

unint64_t sub_21C853220()
{
  result = qword_27CDEE018;
  if (!qword_27CDEE018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFE0, &qword_21CBA9270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFD0, &qword_21CBA9260);
    sub_21C853080();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE018);
  }

  return result;
}

unint64_t sub_21C8532F0()
{
  result = qword_27CDEE030;
  if (!qword_27CDEE030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7219B4(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE030);
  }

  return result;
}

unint64_t sub_21C8533A4()
{
  result = qword_27CDEE060;
  if (!qword_27CDEE060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE040, &qword_21CBA9370);
    sub_21C6EADEC(&qword_27CDEE050, &qword_27CDEE048, &qword_21CBA9378, MEMORY[0x277CDD7E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE060);
  }

  return result;
}

unint64_t sub_21C853458()
{
  result = qword_27CDEE078;
  if (!qword_27CDEE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE078);
  }

  return result;
}

uint64_t sub_21C853500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C853590@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v9 = *(v8 - 8);
  v22 = v8;
  v23 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  sub_21CB81014();
  sub_21CB81014();
  v12 = sub_21CB80FF4();
  v14 = v13;
  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v7, v1);
  v25 = v12;
  v26 = v14;
  sub_21C71F3FC();
  sub_21CB84CB4();
  sub_21CB81014();
  sub_21CB81014();
  v16 = sub_21CB80FF4();
  v18 = v17;
  v15(v4, v1);
  v15(v7, v1);
  v25 = v16;
  v26 = v18;
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v19 = v22;
  sub_21CB846E4();

  return (*(v23 + 8))(v11, v19);
}

uint64_t sub_21C853898@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_21C7335A8(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0B8, &unk_21CBA9530);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v7 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v8 = sub_21C71F3FC();
  v13 = MEMORY[0x277D837D0];
  v14 = v8;
  swift_getOpaqueTypeConformance2();
  sub_21CB84DA4();
  KeyPath = swift_getKeyPath(byte_21CBA9540, v6, v13, v7, v14);
  v10 = swift_allocObject();
  *(v10 + 16) = v4 == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0C0, &qword_21CBA9570);
  v12 = (a1 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = sub_21C735744;
  v12[2] = v10;
  return result;
}

unint64_t sub_21C853A44()
{
  result = qword_27CDEE0C8;
  if (!qword_27CDEE0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE0C0, &qword_21CBA9570);
    sub_21C6EADEC(&qword_27CDEE0D0, &qword_27CDEE0D8, &qword_21CBA9578, MEMORY[0x277CDF028]);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE0C8);
  }

  return result;
}

uint64_t type metadata accessor for PMEditAccountWebsitesView(uint64_t a1)
{
  result = qword_27CDEE0E8;
  if (!qword_27CDEE0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C853B9C(uint64_t a1)
{
  type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    sub_21C853D10(319, &qword_27CDEE0F8, &qword_27CDEE100, &unk_21CBA95B0, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_21C853D10(319, &qword_27CDEE108, &qword_27CDEE110, &qword_21CBB2150, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_21C70D9C4(319, &qword_27CDEB178, MEMORY[0x277CDD848]);
        if (v4 <= 0x3F)
        {
          sub_21C70D9C4(319, &qword_27CDEBD50, MEMORY[0x277CDF708]);
          if (v5 <= 0x3F)
          {
            sub_21C853D74(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21C853D10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21C853D74(uint64_t a1)
{
  if (!qword_27CDEE118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE120, &qword_21CBA95C0);
    sub_21C853DE4();
    v1 = sub_21CB81FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEE118);
    }
  }
}

unint64_t sub_21C853DE4()
{
  result = qword_27CDEE128;
  if (!qword_27CDEE128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE120, &qword_21CBA95C0);
    sub_21C8589EC(&qword_27CDEE130, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE128);
  }

  return result;
}

void *sub_21C853EB4(uint64_t a1, uint64_t *a2)
{
  v59[9] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B8, &qword_21CBA96C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45[-v5];
  v7 = type metadata accessor for PMEditableWebsite(0);
  MEMORY[0x28223BE20](v7);
  v54 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v49 = &v45[-v11];
  v53 = *(a1 + 16);
  if (v53)
  {
    v12 = 0;
    v48 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v51 = a1 + v48;
    v56 = *(v10 + 72);
    v52 = (v10 + 56);
    v47 = (v10 + 48);
    v57 = MEMORY[0x277D84F90];
    v55 = v7;
    v50 = a2;
    while (1)
    {
      v13 = v51 + v56 * v12;
      v14 = *a2;
      v15 = (v13 + *(v7 + 20));
      v16 = *v15;
      v17 = v15[1];
      if (*(*a2 + 16))
      {
        sub_21CB86484();

        sub_21CB854C4();
        v18 = sub_21CB864D4();
        v19 = -1 << *(v14 + 32);
        v20 = v18 & ~v19;
        if ((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          while (1)
          {
            v22 = (*(v14 + 48) + 16 * v20);
            v23 = *v22 == v16 && v22[1] == v17;
            if (v23 || (sub_21CB86344() & 1) != 0)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v7 = v55;
          (*v52)(v6, 1, 1, v55);
          a2 = v50;
          goto LABEL_4;
        }

LABEL_15:

        a2 = v50;
        v7 = v55;
      }

      sub_21CA94078(v59, v16, v17);

      v24 = (v13 + *(v7 + 24));
      v25 = v24[1];
      if (v25 >= 2)
      {
        sub_21C85838C(v13, v6, type metadata accessor for PMEditableWebsite);
        (*v52)(v6, 0, 1, v7);
LABEL_25:
        v39 = v49;
        sub_21C858324(v6, v49, type metadata accessor for PMEditableWebsite);
        sub_21C858324(v39, v54, type metadata accessor for PMEditableWebsite);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_21CA4F590(0, v57[2] + 1, 1, v57);
        }

        v41 = v57[2];
        v40 = v57[3];
        if (v41 >= v40 >> 1)
        {
          v57 = sub_21CA4F590((v40 > 1), v41 + 1, 1, v57);
        }

        v42 = v56;
        v43 = v57;
        v57[2] = v41 + 1;
        sub_21C858324(v54, v43 + v48 + v41 * v42, type metadata accessor for PMEditableWebsite);
        v7 = v55;
        goto LABEL_5;
      }

      v26 = *v24;
      v27 = objc_opt_self();
      v28 = sub_21CB85584();
      v58 = 0;
      v59[0] = 0;
      v29 = [v27 getProtectionSpaceAndHighLevelDomainForUserTypedSite:v28 protectionSpace:v59 highLevelDomain:&v58 mode:1];

      v30 = v59[0];
      if (v29)
      {
        v31 = v59[0] == 0;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        (*v52)(v6, 1, 1, v7);
      }

      else
      {
        v46 = v58;
        v32 = v30;
        v33 = [v32 safari_userVisibleSiteForProtectionSpace];
        v34 = sub_21CB855C4();
        v36 = v35;

        sub_21C7EC3F4(v26, v25);
        sub_21CB80E24();
        v37 = &v6[*(v55 + 20)];
        *v37 = v34;
        v37[1] = v36;
        v7 = v55;
        v38 = &v6[*(v55 + 24)];
        *v38 = v26;
        v38[1] = v25;
        (*v52)(v6, 0, 1, v7);
      }

      if ((*v47)(v6, 1, v7) != 1)
      {
        goto LABEL_25;
      }

LABEL_4:
      sub_21C6EA794(v6, &qword_27CDEE1B8, &qword_21CBA96C8);
LABEL_5:
      if (++v12 == v53)
      {
        return v57;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21C85446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v79 = a2;
  v3 = sub_21CB82FD4();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21CB85114();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21CB829D4();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE188, &unk_21CBA9650);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE170, &qword_21CBA9648);
  MEMORY[0x28223BE20](v57);
  v16 = &v56 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE160, &qword_21CBA9640);
  MEMORY[0x28223BE20](v58);
  v18 = &v56 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE158, &qword_21CBA9638);
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = &v56 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE150, &qword_21CBA9630);
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v62 = &v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE140, &qword_21CBA9620);
  v22 = *(v21 - 8);
  v74 = v21;
  v75 = v22;
  MEMORY[0x28223BE20](v21);
  v63 = &v56 - v23;
  v81 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1A0, &qword_21CBA9670);
  sub_21C6EADEC(&qword_27CDEE1A8, &qword_27CDEE1A0, &qword_21CBA9670, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  sub_21C6EADEC(&qword_27CDEE180, &qword_27CDEE188, &unk_21CBA9650, MEMORY[0x277CDE580]);
  sub_21CB845C4();
  (*(v12 + 8))(v14, v11);
  sub_21CB85294();
  sub_21C8581A8();
  sub_21C8589EC(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v24 = v59;
  sub_21CB849C4();
  (*(v60 + 8))(v10, v24);
  sub_21C6EA794(v16, &qword_27CDEE170, &qword_21CBA9648);
  KeyPath = swift_getKeyPath(byte_21CBA9678);
  v26 = v58;
  v27 = &v18[*(v58 + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v29 = v65;
  v30 = v66;
  (*(v65 + 104))(v8, *MEMORY[0x277CDF0D0], v66);
  sub_21CB84F74();
  (*(v29 + 8))(v8, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v31 - 8) + 56))(v27 + v28, 0, 1, v31);
  *v27 = KeyPath;
  v32 = v71;
  sub_21CB81014();
  v33 = sub_21CB81004();
  v35 = v34;
  (*(v72 + 8))(v32, v73);
  v82 = v33;
  v83 = v35;
  v36 = sub_21C858064();
  v37 = sub_21C71F3FC();
  v38 = MEMORY[0x277D837D0];
  v39 = v61;
  v40 = v26;
  sub_21CB842F4();

  sub_21C6EA794(v18, &qword_27CDEE160, &qword_21CBA9640);
  v41 = v76;
  v42 = v77;
  v43 = v78;
  (*(v77 + 104))(v76, *MEMORY[0x277CDDDC0], v78);
  v82 = v40;
  v83 = v38;
  v84 = v36;
  v85 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v62;
  v46 = v67;
  sub_21CB84684();
  (*(v42 + 8))(v41, v43);
  (*(v68 + 8))(v39, v46);
  v82 = v46;
  v83 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v63;
  v49 = v69;
  sub_21CB84644();
  (*(v70 + 8))(v45, v49);
  v80 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE148, &qword_21CBA9628);
  v82 = v49;
  v83 = v47;
  swift_getOpaqueTypeConformance2();
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE190, &unk_21CBA9660);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF50, &unk_21CBA90B0);
  v52 = sub_21C6EADEC(&qword_27CDEE198, &qword_27CDEDF50, &unk_21CBA90B0, MEMORY[0x277CDD7A8]);
  v82 = v51;
  v83 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  v82 = v50;
  v83 = v53;
  swift_getOpaqueTypeConformance2();
  v54 = v74;
  sub_21CB84894();
  return (*(v75 + 8))(v48, v54);
}

uint64_t sub_21C854F20@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1C0, &unk_21CBA96D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v9 + 8))(v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21CBA0690;
  v13 = PMAccount.effectiveTitle.getter();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21C7C0050();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = sub_21CB85594();
  v18 = v17;

  sub_21C8551A4(v7);
  sub_21C6EDBAC(v7, v4, &qword_27CDEE1C0, &unk_21CBA96D0);
  *a1 = v16;
  a1[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1C8, &qword_21CBA96E0);
  sub_21C6EDBAC(v4, a1 + *(v19 + 48), &qword_27CDEE1C0, &unk_21CBA96D0);

  sub_21C6EA794(v7, &qword_27CDEE1C0, &unk_21CBA96D0);
  sub_21C6EA794(v4, &qword_27CDEE1C0, &unk_21CBA96D0);
}

uint64_t sub_21C8551A4@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v49 = sub_21CB81024();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x28223BE20](v3);
  v48 = v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = v40 - v9;
  v10 = type metadata accessor for PMEditAccountWebsitesView(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v40[1] = v13;
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1D0, &qword_21CBA96E8) - 8;
  MEMORY[0x28223BE20](v43);
  v44 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v40 - v17;
  v19 = *(v11 + 32);
  v41 = v1;
  v20 = v1 + v19;
  v56 = *v20;
  v57 = *(v20 + 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  sub_21CB84F54();
  v56 = v54;
  v57 = v55;
  sub_21C85838C(v1, v14, type metadata accessor for PMEditAccountWebsitesView);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  sub_21C858324(v14, v22 + v21, type metadata accessor for PMEditAccountWebsitesView);
  sub_21CB80E34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1D8, &qword_21CBA96F0);
  sub_21C858474();
  sub_21C858560();
  sub_21C858780();
  sub_21CB84FF4();
  v23 = v41;
  sub_21C85838C(v41, v14, type metadata accessor for PMEditAccountWebsitesView);
  v24 = swift_allocObject();
  sub_21C858324(v14, v24 + v21, type metadata accessor for PMEditAccountWebsitesView);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_21C858834;
  *(v25 + 24) = v24;
  v26 = &v18[*(v43 + 44)];
  *v26 = sub_21C8588A4;
  v26[1] = v25;
  v27 = v45;
  sub_21CB81014();
  v28 = sub_21CB81004();
  v30 = v29;
  (*(v46 + 8))(v27, v49);
  v56 = v28;
  *&v57 = v30;
  sub_21C85838C(v23, v14, type metadata accessor for PMEditAccountWebsitesView);
  v31 = swift_allocObject();
  sub_21C858324(v14, v31 + v21, type metadata accessor for PMEditAccountWebsitesView);
  sub_21C71F3FC();
  v32 = v48;
  sub_21CB84DE4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v33 = v47;
  v34 = v51;
  sub_21CB845C4();
  (*(v52 + 8))(v32, v34);
  v35 = v44;
  sub_21C6EDBAC(v18, v44, &qword_27CDEE1D0, &qword_21CBA96E8);
  v36 = v50;
  sub_21C6EDBAC(v33, v50, &qword_27CDEC948, &qword_21CBA4E30);
  v37 = v53;
  sub_21C6EDBAC(v35, v53, &qword_27CDEE1D0, &qword_21CBA96E8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE230, &qword_21CBA9710);
  sub_21C6EDBAC(v36, v37 + *(v38 + 48), &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v33, &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v18, &qword_27CDEE1D0, &qword_21CBA96E8);
  sub_21C6EA794(v36, &qword_27CDEC948, &qword_21CBA4E30);
  return sub_21C6EA794(v35, &qword_27CDEE1D0, &qword_21CBA96E8);
}

uint64_t sub_21C855828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_21CB83604();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF50, &unk_21CBA90B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE190, &unk_21CBA9660);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  sub_21CB835D4();
  v15[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF58, &unk_21CBA96B0);
  sub_21C852CFC();
  sub_21CB82194();
  v12 = sub_21C6EADEC(&qword_27CDEE198, &qword_27CDEDF50, &unk_21CBA90B0, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF131E0](v7, v4, v12);
  (*(v5 + 8))(v7, v4);
  v15[6] = v4;
  v15[7] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v11, v8, OpaqueTypeConformance2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21C855ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v87 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE240, &qword_21CBA9718);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v68 - v5;
  v72 = sub_21CB80E34();
  v90 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE248, &qword_21CBA9720);
  MEMORY[0x28223BE20](v71);
  v8 = &v68 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE120, &qword_21CBA95C0);
  MEMORY[0x28223BE20](v80);
  v79 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = &v68 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  MEMORY[0x28223BE20](v15);
  v88 = (&v68 - v16);
  v17 = type metadata accessor for PMEditableWebsite(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v86 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v68 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE220, &qword_21CBA9708);
  MEMORY[0x28223BE20](v26);
  v28 = &v68 - v27;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE250, &qword_21CBA9728);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v81 = &v68 - v29;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE208, &unk_21CBA96F8);
  MEMORY[0x28223BE20](v83);
  v82 = &v68 - v30;
  sub_21CB84F54();
  swift_getKeyPath(aH_67);
  sub_21CB84F44();

  sub_21C6EA794(v28, &qword_27CDEE220, &qword_21CBA9708);
  v76 = v100;
  v75 = v101;
  v74 = v102;
  v73 = v103;
  MEMORY[0x21CF14A20](v26);
  v31 = *(v18 + 28);
  v77 = v25;
  v32 = &v25[v31];
  v34 = *v32;
  v33 = *(v32 + 1);
  v35 = v34 & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v36 = v35;
  }

  v91 = a1;
  v89 = v26;
  if (v36)
  {
    type metadata accessor for PMEditAccountWebsitesView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0E0, &unk_21CBA9580);
    v37 = v88;
    sub_21CB81F54();
    MEMORY[0x21CF14A20](v26);
    v38 = v90;
    v39 = v72;
    (*(v90 + 16))(v14, v22, v72);
    sub_21C858938(v22, type metadata accessor for PMEditableWebsite);
    (*(v38 + 56))(v14, 0, 1, v39);
    v40 = *(v71 + 48);
    sub_21C6EDBAC(v37, v8, &qword_27CDEE120, &qword_21CBA95C0);
    sub_21C6EDBAC(v14, &v8[v40], &qword_27CDEE120, &qword_21CBA95C0);
    v41 = *(v38 + 48);
    v42 = v8;
    if (v41(v8, 1, v39) == 1)
    {
      sub_21C6EA794(v14, &qword_27CDEE120, &qword_21CBA95C0);
      sub_21C6EA794(v88, &qword_27CDEE120, &qword_21CBA95C0);
      v43 = &v8[v40];
      v44 = v39;
      if (v41(v43, 1, v39) == 1)
      {
        sub_21C6EA794(v42, &qword_27CDEE120, &qword_21CBA95C0);
        v45 = 1;
LABEL_13:
        v26 = v89;
        goto LABEL_14;
      }
    }

    else
    {
      v46 = v38;
      v47 = v88;
      v48 = v8;
      v49 = v70;
      sub_21C6EDBAC(v48, v70, &qword_27CDEE120, &qword_21CBA95C0);
      if (v41((v42 + v40), 1, v39) != 1)
      {
        v51 = v42 + v40;
        v52 = v69;
        (*(v46 + 32))(v69, v51, v39);
        sub_21C8589EC(&qword_27CDEE260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v53 = v46;
        v45 = sub_21CB85574();
        v54 = *(v53 + 8);
        v54(v52, v39);
        sub_21C6EA794(v14, &qword_27CDEE120, &qword_21CBA95C0);
        sub_21C6EA794(v47, &qword_27CDEE120, &qword_21CBA95C0);
        v55 = v49;
        v44 = v39;
        v54(v55, v39);
        sub_21C6EA794(v42, &qword_27CDEE120, &qword_21CBA95C0);
        goto LABEL_13;
      }

      sub_21C6EA794(v14, &qword_27CDEE120, &qword_21CBA95C0);
      sub_21C6EA794(v47, &qword_27CDEE120, &qword_21CBA95C0);
      v50 = v49;
      v44 = v39;
      (*(v46 + 8))(v50, v39);
    }

    sub_21C6EA794(v42, &qword_27CDEE248, &qword_21CBA9720);
    v45 = 0;
    goto LABEL_13;
  }

  v44 = v72;
  v45 = 1;
LABEL_14:
  v88 = type metadata accessor for PMEditableWebsite;
  sub_21C858938(v77, type metadata accessor for PMEditableWebsite);
  KeyPath = swift_getKeyPath(a0_31);
  v97 = 0;
  v93 = KeyPath;
  LOBYTE(v94) = 0;
  *(&v94 + 1) = v76;
  *&v95 = v75;
  *(&v95 + 1) = v74;
  *v96 = v73;
  *&v96[8] = 0x697261666173;
  *&v96[16] = 0xE600000000000000;
  v96[24] = 1;
  v96[25] = v45 & 1;
  type metadata accessor for PMEditAccountWebsitesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0E0, &unk_21CBA9580);
  v57 = v78;
  sub_21CB81F74();
  v58 = v86;
  MEMORY[0x21CF14A20](v26);
  v59 = v90;
  v60 = *(v90 + 16);
  v61 = v79;
  v60(v79, v58, v44);
  sub_21C858938(v58, type metadata accessor for PMEditableWebsite);
  (*(v59 + 56))(v61, 0, 1, v44);
  sub_21C85872C();
  sub_21C853DE4();
  v62 = v81;
  sub_21CB84824();
  sub_21C6EA794(v61, &qword_27CDEE120, &qword_21CBA95C0);
  sub_21C6EA794(v57, &qword_27CDEE240, &qword_21CBA9718);
  *v99 = *v96;
  *&v99[10] = *&v96[10];
  v98[1] = v94;
  v98[2] = v95;
  v98[0] = v93;
  sub_21C858998(v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE258, &qword_21CBA9778);
  v63 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_21CBA0690;
  MEMORY[0x21CF14A20](v89);
  v60((v64 + v63), v58, v44);
  sub_21C858938(v58, v88);
  v65 = sub_21C8D7F80(v64);
  swift_setDeallocating();
  (*(v59 + 8))(v64 + v63, v44);
  swift_deallocClassInstance();
  LOBYTE(v64) = sub_21C856698(v65);

  v66 = v82;
  (*(v84 + 32))(v82, v62, v85);
  *(v66 + *(v83 + 36)) = (v64 & 1) == 0;
  sub_21C85861C();
  sub_21CB845C4();
  return sub_21C6EA794(v66, &qword_27CDEE208, &unk_21CBA96F8);
}

uint64_t sub_21C856698(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMEditableWebsite(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(a1 + 16))
  {
    return 0;
  }

  v8 = v1 + *(type metadata accessor for PMEditAccountWebsitesView(0) + 24);
  v24[1] = *v8;
  v25 = *(v8 + 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](v24, v9);
  v10 = *(v24[0] + 16);
  if (v10)
  {
    v11 = 0;
    v12 = &v7[*(v4 + 24)];
    v13 = v24[0] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    while (1)
    {
      sub_21C85838C(v13, v7, type metadata accessor for PMEditableWebsite);
      if (*(v12 + 1) >= 2uLL && __OFADD__(v11++, 1))
      {
        break;
      }

      sub_21C858938(v7, type metadata accessor for PMEditableWebsite);
      v13 += v14;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_9:
  }

  else
  {

    v11 = 0;
  }

  MEMORY[0x28223BE20](v16);
  *&v23[-16] = v1;
  *&v23[-8] = v11;
  v18 = sub_21C8A1508(sub_21C858A34, &v23[-32], a1);
  v19 = v18;
  MEMORY[0x28223BE20](v18);
  *&v23[-16] = v2;
  v20 = sub_21C857710(0, sub_21C858A54, &v23[-32], a1);
  v22 = v20 < 1 || v11 != v20;
  return v22 & (v19 ^ 1u);
}

uint64_t sub_21C856904(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PMEditAccountWebsitesView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE100, &unk_21CBA95B0);
  sub_21C6EADEC(&qword_27CDEE1E8, &qword_27CDEE100, &unk_21CBA95B0, MEMORY[0x277D83960]);
  sub_21C6EADEC(&qword_27CDEE238, &qword_27CDEE100, &unk_21CBA95B0, MEMORY[0x277D83990]);
  sub_21CB85AA4();
  sub_21CB84F34();
}

uint64_t sub_21C856A70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE120, &qword_21CBA95C0);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for PMEditableWebsite(0);
  v8 = v7 - 8;
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  sub_21CB80E24();
  v14 = &v13[*(v8 + 28)];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *&v13[*(v8 + 32)] = xmmword_21CBA4340;
  sub_21C85838C(v13, v10, type metadata accessor for PMEditableWebsite);
  v27 = type metadata accessor for PMEditAccountWebsitesView(0);
  v15 = *(v27 + 24);
  v29 = a1;
  v16 = (a1 + v15);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v34 = *v16;
  v35 = v18;
  v36 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](&v37);
  v20 = v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_21CA4F590(0, v20[2] + 1, 1, v20);
  }

  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = sub_21CA4F590((v21 > 1), v22 + 1, 1, v20);
  }

  v20[2] = v22 + 1;
  sub_21C858324(v10, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, type metadata accessor for PMEditableWebsite);
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v30 = v20;
  sub_21CB84F34();

  v23 = sub_21CB80E34();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v6, v13, v23);
  (*(v24 + 56))(v6, 0, 1, v23);
  sub_21C6EDBAC(v6, v28, &qword_27CDEE120, &qword_21CBA95C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0E0, &unk_21CBA9580);
  sub_21CB81F64();
  sub_21C6EA794(v6, &qword_27CDEE120, &qword_21CBA95C0);
  return sub_21C858938(v13, type metadata accessor for PMEditableWebsite);
}

uint64_t sub_21C856E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v2 = type metadata accessor for PMEditAccountWebsitesView(0);
  v26 = *(v2 - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMPlatformRoleButton(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_21CB81F14();
  v23 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81F04();
  sub_21CB81014();
  v15 = sub_21CB81004();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  (*(v12 + 16))(v10 + *(v8 + 20), v14, v11);
  v18 = v24;
  sub_21C85838C(v27, v24, type metadata accessor for PMEditAccountWebsitesView);
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = swift_allocObject();
  sub_21C858324(v18, v20 + v19, type metadata accessor for PMEditAccountWebsitesView);
  *v10 = v15;
  v10[1] = v17;
  v21 = (v10 + *(v8 + 24));
  *v21 = sub_21C8582A8;
  v21[1] = v20;
  sub_21C8589EC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  sub_21CB845C4();
  sub_21C858938(v10, type metadata accessor for PMPlatformRoleButton);
  return (*(v12 + 8))(v14, v23);
}

uint64_t sub_21C8571B8(uint64_t a1)
{
  v19[1] = a1;
  v2 = sub_21CB823B4();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB853D4();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85404();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMEditAccountWebsitesView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_21C8582C0();
  v13 = sub_21CB85CF4();
  sub_21C85838C(a1, v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditAccountWebsitesView);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_21C858324(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMEditAccountWebsitesView);
  aBlock[4] = sub_21C85830C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C8589EC(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v9, v6, v16);
  _Block_release(v16);

  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
  v17 = v23;
  sub_21C95B2C8(v23);
  sub_21CB823A4();
  return (*(v24 + 8))(v17, v25);
}

uint64_t sub_21C8575F8(uint64_t a1)
{
  v14 = MEMORY[0x277D84FA0];
  v2 = type metadata accessor for PMEditAccountWebsitesView(0);
  v3 = (a1 + *(v2 + 24));
  v5 = v3[1];
  v6 = v3[2];
  v12 = *v3;
  v4 = v12;
  *&v13 = v5;
  *(&v13 + 1) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](&v11);
  v8 = sub_21C853EB4(v11, &v14);

  v12 = v4;
  *&v13 = v5;
  *(&v13 + 1) = v6;
  v11 = v8;
  sub_21CB84F34();
  v12 = v4;
  *&v13 = v5;
  *(&v13 + 1) = v6;
  MEMORY[0x21CF14A20](&v11, v7);
  v9 = (a1 + *(v2 + 20));
  v12 = *v9;
  v13 = *(v9 + 1);
  sub_21CB84F34();
}

uint64_t sub_21C857710(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v22 = sub_21CB80E34();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v10 = a4 + 56;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;
  v19[1] = v7 + 16;
  v21 = (v7 + 8);
  v23 = a4;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
      v18 = v22;
LABEL_9:
      (*(v7 + 16))(v9, *(v23 + 48) + *(v7 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v18);
      v20(&v24, v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v21)(v9, v18);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v21)(v9, v18);
  }

  else
  {
LABEL_5:
    v18 = v22;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return v24;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_21C857928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B8, &qword_21CBA96C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = (a2 + *(type metadata accessor for PMEditAccountWebsitesView(0) + 24));
  v14 = *v13;
  v15 = v13[1];
  v31 = v13[2];
  v32 = v14;
  v36 = v14;
  v37 = v15;
  v38 = v31;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](&v39);
  v33 = a1;
  v35 = a1;
  sub_21C969390(sub_21C858AA4, v39, v12);
  v34 = v3;

  v17 = type metadata accessor for PMEditableWebsite(0);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v12, 1, v17) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEE1B8, &qword_21CBA96C8);
  }

  else
  {
    v30 = a3;
    v19 = &v12[*(v17 + 24)];
    v20 = *v19;
    v21 = v19[1];
    sub_21C7EC3F4(*v19, v21);
    sub_21C858938(v12, type metadata accessor for PMEditableWebsite);
    if (!v21)
    {
      return 1;
    }

    sub_21C858A90(v20, v21);
    a3 = v30;
  }

  v36 = v32;
  v37 = v15;
  v38 = v31;
  v22 = MEMORY[0x21CF14A20](&v39, v16);
  v23 = v39;
  MEMORY[0x28223BE20](v22);
  *(&v29 - 2) = v33;
  sub_21C969390(sub_21C858AA4, v23, v9);

  if (v18(v9, 1, v17) == 1)
  {
    sub_21C6EA794(v9, &qword_27CDEE1B8, &qword_21CBA96C8);
    return 0;
  }

  else
  {
    v25 = &v9[*(v17 + 24)];
    v26 = *v25;
    v27 = v25[1];
    sub_21C7EC3F4(*v25, v27);
    sub_21C858938(v9, type metadata accessor for PMEditableWebsite);
    sub_21C858A90(v26, v27);
    return v27 > 1 && a3 < 2;
  }
}

uint64_t sub_21C857C3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B8, &qword_21CBA96C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  v9 = a3 + *(type metadata accessor for PMEditAccountWebsitesView(0) + 24);
  v18[1] = *v9;
  v19 = *(v9 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](v18, v10);
  v17 = a2;
  sub_21C969390(sub_21C858A70, v18[0], v8);

  v11 = type metadata accessor for PMEditableWebsite(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    return sub_21C6EA794(v8, &qword_27CDEE1B8, &qword_21CBA96C8);
  }

  v13 = &v8[*(v11 + 24)];
  v14 = *v13;
  v15 = v13[1];
  sub_21C7EC3F4(*v13, v15);
  sub_21C858938(v8, type metadata accessor for PMEditableWebsite);
  result = sub_21C858A90(v14, v15);
  if (v15 >= 2)
  {
    if (__OFADD__(*a1, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a1;
    }
  }

  return result;
}

uint64_t sub_21C857E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE138, &qword_21CBA9618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE140, &qword_21CBA9620);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE148, &qword_21CBA9628);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE150, &qword_21CBA9630);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE158, &qword_21CBA9638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE160, &qword_21CBA9640);
  sub_21C858064();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE190, &unk_21CBA9660);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF50, &unk_21CBA90B0);
  sub_21C6EADEC(&qword_27CDEE198, &qword_27CDEDF50, &unk_21CBA90B0, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

unint64_t sub_21C858064()
{
  result = qword_27CDEE168;
  if (!qword_27CDEE168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE160, &qword_21CBA9640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE170, &qword_21CBA9648);
    sub_21CB829D4();
    sub_21C8581A8();
    sub_21C8589EC(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE168);
  }

  return result;
}

unint64_t sub_21C8581A8()
{
  result = qword_27CDEE178;
  if (!qword_27CDEE178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE170, &qword_21CBA9648);
    sub_21C6EADEC(&qword_27CDEE180, &qword_27CDEE188, &unk_21CBA9650, MEMORY[0x277CDE580]);
    sub_21C8589EC(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE178);
  }

  return result;
}

unint64_t sub_21C8582C0()
{
  result = qword_27CDEBE70;
  if (!qword_27CDEBE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEBE70);
  }

  return result;
}

uint64_t sub_21C858324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C85838C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8583F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMEditAccountWebsitesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C855ABC(a1, v6, a2);
}

unint64_t sub_21C858474()
{
  result = qword_27CDEE1E0;
  if (!qword_27CDEE1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE1B0, &qword_21CBA96C0);
    sub_21C6EADEC(&qword_27CDEE1E8, &qword_27CDEE100, &unk_21CBA95B0, MEMORY[0x277D83960]);
    sub_21C6EADEC(&qword_27CDEE1F0, &qword_27CDEE100, &unk_21CBA95B0, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE1E0);
  }

  return result;
}

unint64_t sub_21C858560()
{
  result = qword_27CDEE1F8;
  if (!qword_27CDEE1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE1D8, &qword_21CBA96F0);
    sub_21C85861C();
    sub_21C8589EC(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE1F8);
  }

  return result;
}

unint64_t sub_21C85861C()
{
  result = qword_27CDEE200;
  if (!qword_27CDEE200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE208, &unk_21CBA96F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE120, &qword_21CBA95C0);
    sub_21C85872C();
    sub_21C853DE4();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEDCD0, &qword_27CDEDCC8, &unk_21CBA87F0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE200);
  }

  return result;
}

unint64_t sub_21C85872C()
{
  result = qword_27CDEE210;
  if (!qword_27CDEE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE210);
  }

  return result;
}

unint64_t sub_21C858780()
{
  result = qword_27CDEE218;
  if (!qword_27CDEE218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE220, &qword_21CBA9708);
    sub_21C8589EC(&qword_27CDEE228, type metadata accessor for PMEditableWebsite, &unk_21CBC90A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE218);
  }

  return result;
}

uint64_t sub_21C858834(uint64_t a1)
{
  v3 = *(type metadata accessor for PMEditAccountWebsitesView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C856904(a1, v4);
}

uint64_t sub_21C8588C4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMEditAccountWebsitesView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C858938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C8589EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C858A90(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_21C858AC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  KeyPath = swift_getKeyPath(byte_21CBA9790);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v22);

  type metadata accessor for PMAccountsState(0);
  sub_21C705EF8(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v9 = sub_21CB82674();
  v11 = v10;

  *a4 = v9;
  a4[1] = v11;
  v12 = type metadata accessor for PMOnboardingRootView(0);
  v13 = v12[5];
  *(a4 + v13) = swift_getKeyPath(byte_21CBA97B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v14 = v12[6];
  *(a4 + v14) = swift_getKeyPath(byte_21CBA97F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v15 = v12[7];
  *(a4 + v15) = swift_getKeyPath(byte_21CBA9828);
  v16 = v12[8];
  *(a4 + v16) = swift_getKeyPath(aH_68);
  v17 = v12[9];
  *(a4 + v17) = swift_getKeyPath(aP_53);
  v18 = (a4 + v12[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE278, &qword_21CBA9888);
  sub_21CB84D44();
  *v18 = v22;
  v19 = v12[12];
  type metadata accessor for UNAuthorizationStatus(0);
  sub_21CB84D44();
  result = *&v22;
  *(a4 + v19) = v22;
  v21 = a4 + v12[10];
  *v21 = a1;
  *(v21 + 1) = a2;
  v21[16] = a3 & 1;
  return result;
}

uint64_t sub_21C858D10@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v40 = sub_21CB83524();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v32 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PMOnboardingRootView(0);
  v4 = v3 - 8;
  v37 = *(v3 - 8);
  v36 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2C8, &qword_21CBA9988);
  v7 = *(v6 - 8);
  v33 = v6;
  v34 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v29 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D0, &qword_21CBA9990);
  MEMORY[0x28223BE20](v31);
  v11 = v29 - v10;
  v12 = *(v4 + 52);
  v30 = v1;
  v13 = (v1 + v12);
  v15 = *v13;
  v14 = v13[1];
  v47 = v15;
  *&v48 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D8, &qword_21CBA9998);
  sub_21CB84D74();
  v47 = v42;
  v48 = v43;
  v41 = v1;
  v29[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE278, &qword_21CBA9888);
  v29[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2E0, &qword_21CBA99A0);
  v29[0] = sub_21C6EADEC(&qword_27CDEE2E8, &qword_27CDEE278, &qword_21CBA9888, MEMORY[0x277D83960]);
  sub_21C6EADEC(&qword_27CDEE2F0, &qword_27CDEE278, &qword_21CBA9888, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDEE2F8, &qword_27CDEE278, &qword_21CBA9888, MEMORY[0x277D83990]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE300, &qword_21CBA99A8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE308, &qword_21CBA99B0);
  v18 = sub_21C85B574();
  v19 = sub_21C85B65C();
  v20 = sub_21C85B768(&qword_27CDEE338, &qword_27CDEE308, &qword_21CBA99B0, sub_21C85B6B0);
  v42 = v16;
  *&v43 = &type metadata for PMOnboardingRootView.NavigationLocation;
  *(&v43 + 1) = v17;
  v44 = v18;
  v21 = v32;
  v45 = v19;
  v46 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v31;
  sub_21CB82914();
  sub_21C6EADEC(&qword_27CDEE378, &qword_27CDEE2C8, &qword_21CBA9988, MEMORY[0x277CDDA18]);
  v23 = v33;
  sub_21CB84644();
  (*(v34 + 8))(v9, v23);
  v24 = v35;
  sub_21C85B8C8(v30, v35);
  v25 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v26 = swift_allocObject();
  sub_21C85B92C(v24, v26 + v25);
  v27 = &v11[*(v22 + 36)];
  *v27 = sub_21C85B990;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  sub_21CB83514();
  LOBYTE(v25) = sub_21CB83CC4();
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v25)
  {
    sub_21CB83CB4();
  }

  sub_21C85B9F0();
  sub_21CB84534();
  (*(v38 + 8))(v21, v40);
  return sub_21C6EA794(v11, &qword_27CDEE2D0, &qword_21CBA9990);
}

uint64_t sub_21C8592A8(uint64_t a1)
{
  v2 = type metadata accessor for PMOnboardingRootView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE300, &qword_21CBA99A8);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v17 - v7;
  *v8 = swift_getKeyPath(asc_21CBA99E0, v6);
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = *(type metadata accessor for PMAppOnboardingView(0) + 20);
  *&v8[v9] = swift_getKeyPath(asc_21CBA9A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath(asc_21CBA99E0);
  sub_21C85B8C8(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_21C85B92C(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21C85BEBC;
  *(v13 + 24) = v12;
  v14 = &v8[*(v5 + 36)];
  *v14 = KeyPath;
  v14[1] = sub_21C85BB5C;
  v14[2] = v13;
  sub_21C85B8C8(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_21C85B92C(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE308, &qword_21CBA99B0);
  sub_21C85B574();
  sub_21C85B65C();
  sub_21C85B768(&qword_27CDEE338, &qword_27CDEE308, &qword_21CBA99B0, sub_21C85B6B0);
  sub_21CB84564();

  return sub_21C85BBE4(v8);
}

uint64_t sub_21C859578(void *a1)
{
  sub_21C7ECAF4();

  return sub_21CB82FA4();
}

uint64_t sub_21C8595D8()
{
  v1 = v0;
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21C85AD74();
  v7 = type metadata accessor for PMOnboardingRootView(0);
  v8 = v7;
  if (v6 == 5)
  {
    v9 = *(v0 + *(v7 + 36));
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v10 = sub_21C725C3C(v9, aBlock);

    v11 = *&v10[OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager_notificationManager];
    if (v11)
    {
      v31 = sub_21C85AE9C;
      v32 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v29 = sub_21CB031D0;
      v30 = &block_descriptor_63;
      v12 = _Block_copy(&aBlock);

      [v11 requestPermissionToSendNotificationsProvisionally:0 withCompletionHandler:v12];
      _Block_release(v12);
    }

    v13 = v1 + *(v8 + 40);
    v14 = *v13;
    v15 = *(v13 + 8);
    LOBYTE(v13) = *(v13 + 16);
    aBlock = v14;
    v28 = v15;
    LOBYTE(v29) = v13;
    LOBYTE(v24) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    sub_21CB84F34();
    sub_21C95B2C8(v5);
    sub_21CB823A4();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v17 = (v0 + *(v7 + 44));
    v18 = *v17;
    v19 = v17[1];
    aBlock = *v17;
    v28 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D8, &qword_21CBA9998);
    sub_21CB84D54();
    v20 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_21CA4F6D4(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_21CA4F6D4((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v20[v22 + 32] = v6;
    v24 = v18;
    v25 = v19;
    v23 = v20;
    sub_21CB84D64();
  }
}

uint64_t sub_21C85990C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v104 = a3;
  v89 = sub_21CB81024();
  v4 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for PMOnboardingView(0);
  MEMORY[0x28223BE20](v100);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE390, &qword_21CBA9A40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v96 = &v76 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE398, &qword_21CBA9A48);
  MEMORY[0x28223BE20](v102);
  v103 = &v76 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE3A0, &qword_21CBA9A50);
  MEMORY[0x28223BE20](v92);
  v94 = &v76 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE3A8, &qword_21CBA9A58);
  MEMORY[0x28223BE20](v90);
  v91 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE358, &qword_21CBA99C8);
  MEMORY[0x28223BE20](v15);
  v93 = &v76 - v16;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE348, &qword_21CBA99C0);
  MEMORY[0x28223BE20](v101);
  v95 = &v76 - v17;
  v18 = type metadata accessor for PMOnboardingRootView(0);
  v98 = *(v18 - 8);
  v19 = *(v98 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE300, &qword_21CBA99A8);
  *&v22 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v24 = &v76 - v23;
  v25 = *a1;
  if (v25 > 1)
  {
    v97 = v10;
    v88 = v9;
    if (v25 == 4)
    {
      v95 = sub_21CB84BB4();
      sub_21CB81014();
      v36 = sub_21CB81004();
      v93 = v37;
      v94 = v36;
      v38 = *(v4 + 8);
      v39 = v89;
      v38(v6, v89);
      sub_21CB81014();
      v40 = sub_21CB81004();
      v92 = v41;
      v38(v6, v39);
      sub_21CB81014();
      v42 = sub_21CB81004();
      v44 = v43;
      v38(v6, v39);
      sub_21C85B8C8(v99, &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v45 = (*(v98 + 80) + 16) & ~*(v98 + 80);
      v46 = swift_allocObject();
      sub_21C85B92C(&v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v45);
      v47 = v94;
      *v8 = v95;
      *(v8 + 1) = v47;
      v48 = v92;
      *(v8 + 2) = v93;
      *(v8 + 3) = v40;
      *(v8 + 4) = v48;
      *(v8 + 5) = 0;
      *(v8 + 24) = 2;
      *(v8 + 7) = v42;
      *(v8 + 8) = v44;
      *(v8 + 9) = sub_21C85BEB8;
      *(v8 + 10) = v46;
      v8[88] = 0;
      *(v8 + 6) = 0u;
      *(v8 + 7) = 0u;
      v8[128] = 0;
      v49 = v100;
      v50 = *(v100 + 28);
      *&v8[v50] = swift_getKeyPath(byte_21CBA9A60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
      swift_storeEnumTagMultiPayload();
      v51 = sub_21C705EF8(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
      v52 = v96;
      sub_21CB84674();
      sub_21C85BC4C(v8);
      v53 = v97;
      v54 = v88;
      (*(v97 + 16))(v103, v52, v88);
      swift_storeEnumTagMultiPayload();
      sub_21C85B6B0();
      v105 = v49;
      v106 = v51;
      swift_getOpaqueTypeConformance2();
      sub_21CB83494();
      return (*(v53 + 8))(v52, v54);
    }

    else
    {
      result = sub_21CB861C4();
      __break(1u);
    }
  }

  else
  {
    v86 = v21;
    v87 = v15;
    if (v25)
    {
      v88 = v9;
      v85 = sub_21CB84BB4();
      sub_21CB81014();
      v84 = sub_21CB81004();
      v83 = v55;
      v56 = *(v4 + 8);
      v57 = v89;
      v56(v6, v89);
      sub_21CB81014();
      v82 = sub_21CB81004();
      v81 = v58;
      v56(v6, v57);
      sub_21CB81014();
      v80 = sub_21CB81004();
      v79 = v59;
      v56(v6, v57);
      v60 = v99;
      sub_21C85B8C8(v99, &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v97 = v10;
      v61 = (*(v98 + 80) + 16) & ~*(v98 + 80);
      v98 = swift_allocObject();
      sub_21C85B92C(&v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v98 + v61);
      sub_21CB81014();
      v78 = sub_21CB81004();
      v77 = v62;
      v56(v6, v57);
      sub_21C85B8C8(v60, &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v63 = swift_allocObject();
      sub_21C85B92C(&v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v63 + v61);
      v64 = v84;
      *v8 = v85;
      *(v8 + 1) = v64;
      v65 = v82;
      *(v8 + 2) = v83;
      *(v8 + 3) = v65;
      *(v8 + 4) = v81;
      *(v8 + 5) = 0;
      *(v8 + 24) = 2;
      v66 = v79;
      *(v8 + 7) = v80;
      *(v8 + 8) = v66;
      v67 = v98;
      *(v8 + 9) = sub_21C85BCA8;
      *(v8 + 10) = v67;
      v8[88] = 0;
      v68 = v77;
      *(v8 + 12) = v78;
      *(v8 + 13) = v68;
      *(v8 + 14) = sub_21C85BCC0;
      *(v8 + 15) = v63;
      v8[128] = 0;
      v69 = v100;
      v70 = *(v100 + 28);
      *&v8[v70] = swift_getKeyPath(byte_21CBA9A60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
      swift_storeEnumTagMultiPayload();
      v71 = sub_21C705EF8(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
      v72 = v96;
      sub_21CB84674();
      sub_21C85BC4C(v8);
      v73 = v88;
      (*(v97 + 16))(v91, v72, v88);
      swift_storeEnumTagMultiPayload();
      sub_21C85B574();
      v105 = v69;
      v106 = v71;
      swift_getOpaqueTypeConformance2();
      v74 = v93;
      sub_21CB83494();
      sub_21C6EDBAC(v74, v94, &qword_27CDEE358, &qword_21CBA99C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE370, &qword_21CBA99D0);
      sub_21C85B768(&qword_27CDEE350, &qword_27CDEE358, &qword_21CBA99C8, sub_21C85B574);
      sub_21C85B84C();
      v75 = v95;
      sub_21CB83494();
      sub_21C6EA794(v74, &qword_27CDEE358, &qword_21CBA99C8);
      sub_21C6EDBAC(v75, v103, &qword_27CDEE348, &qword_21CBA99C0);
      swift_storeEnumTagMultiPayload();
      sub_21C85B6B0();
      sub_21CB83494();
      sub_21C6EA794(v75, &qword_27CDEE348, &qword_21CBA99C0);
      return (*(v97 + 8))(v72, v73);
    }

    else
    {
      *v24 = swift_getKeyPath(asc_21CBA99E0, v22);
      *(v24 + 1) = 0;
      v24[16] = 0;
      v26 = *(type metadata accessor for PMAppOnboardingView(0) + 20);
      *&v24[v26] = swift_getKeyPath(asc_21CBA9A08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
      swift_storeEnumTagMultiPayload();
      KeyPath = swift_getKeyPath(asc_21CBA99E0);
      sub_21C85B8C8(v99, &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = (*(v98 + 80) + 16) & ~*(v98 + 80);
      v29 = swift_allocObject();
      sub_21C85B92C(&v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
      v30 = swift_allocObject();
      *(v30 + 16) = sub_21C85BEBC;
      *(v30 + 24) = v29;
      v31 = &v24[*(v86 + 36)];
      *v31 = KeyPath;
      v31[1] = sub_21C85BEC4;
      v31[2] = v30;
      sub_21C85BD3C(v24, v91);
      swift_storeEnumTagMultiPayload();
      sub_21C85B574();
      v32 = sub_21C705EF8(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
      v105 = v100;
      v106 = v32;
      swift_getOpaqueTypeConformance2();
      v33 = v93;
      sub_21CB83494();
      sub_21C6EDBAC(v33, v94, &qword_27CDEE358, &qword_21CBA99C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE370, &qword_21CBA99D0);
      sub_21C85B768(&qword_27CDEE350, &qword_27CDEE358, &qword_21CBA99C8, sub_21C85B574);
      sub_21C85B84C();
      v34 = v95;
      sub_21CB83494();
      sub_21C6EA794(v33, &qword_27CDEE358, &qword_21CBA99C8);
      sub_21C6EDBAC(v34, v103, &qword_27CDEE348, &qword_21CBA99C0);
      swift_storeEnumTagMultiPayload();
      sub_21C85B6B0();
      sub_21CB83494();
      sub_21C6EA794(v34, &qword_27CDEE348, &qword_21CBA99C0);
      return sub_21C85BBE4(v24);
    }
  }

  return result;
}

uint64_t sub_21C85A7EC()
{
  v1 = v0;
  v2 = type metadata accessor for PMOnboardingRootView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = (v1 + *(v3 + 52));
  v11 = *v9;
  v10 = v9[1];
  v22 = v11;
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D8, &qword_21CBA9998);
  sub_21CB84D54();
  v12 = *(v21 + 16);
  if (!v12)
  {

    return sub_21C8595D8();
  }

  v13 = *(v21 + v12 + 31);

  if (v13 <= 1)
  {
    if (v13)
    {
      v14 = sub_21CB858E4();
      (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
      sub_21C85B8C8(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_21CB858B4();
      v15 = sub_21CB858A4();
      v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      *(v17 + 16) = v15;
      *(v17 + 24) = v18;
      sub_21C85B92C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
      sub_21C98B308(0, 0, v8, &unk_21CBA9AA8, v17);
    }

    return sub_21C8595D8();
  }

  if (v13 == 4)
  {
    return sub_21C8595D8();
  }

  result = sub_21CB861C4();
  __break(1u);
  return result;
}

void sub_21C85AA74(uint64_t a1)
{
  v2 = type metadata accessor for PMOnboardingRootView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (a1 + *(v3 + 52));
  v8 = *v6;
  v7 = v6[1];
  aBlock = v8;
  v18 = v7;
  v23 = &unk_282E48CD8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D8, &qword_21CBA9998);
  sub_21CB84D64();
  v9 = *(a1 + *(v3 + 44));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v10 = sub_21C725C3C(v9, aBlock);

  sub_21C85B8C8(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_21C85B92C(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = *&v10[OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager_notificationManager];
  if (v13)
  {
    v21 = sub_21C85BAEC;
    v22 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_21C85B33C;
    v20 = &block_descriptor_7;
    v14 = _Block_copy(&aBlock);

    [v13 requestStatusWithCompletionHandler_];

    _Block_release(v14);
  }

  else
  {
  }

  sub_21CB86544();
  v15 = sub_21C725C3C(v9, aBlock);

  [*&v15[OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager_notificationManager] removeDeliveredTakeATourNotification];
}

uint64_t sub_21C85AD0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PMOnboardingRootView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE388, &qword_21CBA99D8);
  return sub_21CB84D64();
}

uint64_t sub_21C85AD74()
{
  type metadata accessor for PMOnboardingRootView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D8, &qword_21CBA9998);
  sub_21CB84D54();
  v0 = *(v5 + 16);
  if (v0)
  {
    v1 = *(v5 + v0 + 31);

    if ((v1 - 1) < 3)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE388, &qword_21CBA99D8);
      sub_21CB84D54();
      if ((v5 - 3) < 0xFFFFFFFFFFFFFFFELL)
      {
        return 4;
      }

      return 5;
    }

    if (!v1)
    {
      v3 = [objc_opt_self() sharedFeatureManager];
      v4 = [v3 shouldAutoFillPasswordsFromKeychain];

      if (!v4)
      {
        return 1;
      }

      goto LABEL_3;
    }
  }

  else
  {
  }

  return 5;
}

void sub_21C85AE9C(char a1)
{
  if (a1)
  {
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v1 = sub_21CB81C84();
    __swift_project_value_buffer(v1, qword_27CE186E0);
    oslog = sub_21CB81C64();
    v2 = sub_21CB85B14();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "User granted permission to send notifications";
LABEL_10:
      _os_log_impl(&dword_21C6E5000, oslog, v2, v4, v3, 2u);
      MEMORY[0x21CF16D90](v3, -1, -1);
    }
  }

  else
  {
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v5 = sub_21CB81C84();
    __swift_project_value_buffer(v5, qword_27CE186E0);
    oslog = sub_21CB81C64();
    v2 = sub_21CB85B14();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "User did not grant permission to send notifications";
      goto LABEL_10;
    }
  }
}

uint64_t sub_21C85B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_21CB858B4();
  v4[19] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x2822009F8](sub_21C85B0A4, v6, v5);
}

uint64_t sub_21C85B0A4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_21C85B1CC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3310, &unk_21CBA9AB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C7A1808;
  v0[13] = &block_descriptor_70;
  v0[14] = v2;
  [v1 requestToTurnOnCredentialProviderExtensionWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C85B1CC()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x2822009F8](sub_21C85B2D4, v2, v1);
}

uint64_t sub_21C85B2D4()
{

  sub_21C8595D8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C85B33C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t getEnumTagSinglePayload for PMOnboardingRootView.NavigationLocation(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PMOnboardingRootView.NavigationLocation(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21C85B4FC()
{
  result = qword_27CDEE2C0;
  if (!qword_27CDEE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE2C0);
  }

  return result;
}

unint64_t sub_21C85B574()
{
  result = qword_27CDEE310;
  if (!qword_27CDEE310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE300, &qword_21CBA99A8);
    sub_21C705EF8(&qword_27CDEE318, type metadata accessor for PMAppOnboardingView, &protocol conformance descriptor for PMAppOnboardingView);
    sub_21C6EADEC(&qword_27CDEE320, &qword_27CDEE328, &qword_21CBA99B8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE310);
  }

  return result;
}

unint64_t sub_21C85B65C()
{
  result = qword_27CDEE330;
  if (!qword_27CDEE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE330);
  }

  return result;
}

unint64_t sub_21C85B6B0()
{
  result = qword_27CDEE340;
  if (!qword_27CDEE340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE348, &qword_21CBA99C0);
    sub_21C85B768(&qword_27CDEE350, &qword_27CDEE358, &qword_21CBA99C8, sub_21C85B574);
    sub_21C85B84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE340);
  }

  return result;
}

uint64_t sub_21C85B768(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    type metadata accessor for PMOnboardingView(255);
    sub_21C705EF8(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C85B84C()
{
  result = qword_27CDEE368;
  if (!qword_27CDEE368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE370, &qword_21CBA99D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE368);
  }

  return result;
}

uint64_t sub_21C85B8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOnboardingRootView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85B92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOnboardingRootView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21C85B990()
{
  v1 = *(type metadata accessor for PMOnboardingRootView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21C85AA74(v2);
}

unint64_t sub_21C85B9F0()
{
  result = qword_27CDEE380;
  if (!qword_27CDEE380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE2D0, &qword_21CBA9990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE2C8, &qword_21CBA9988);
    sub_21C6EADEC(&qword_27CDEE378, &qword_27CDEE2C8, &qword_21CBA9988, MEMORY[0x277CDDA18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE380);
  }

  return result;
}

uint64_t sub_21C85BAEC(uint64_t a1)
{
  v3 = *(type metadata accessor for PMOnboardingRootView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C85AD0C(a1, v4);
}

uint64_t sub_21C85BB64@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMOnboardingRootView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C85990C(a1, v6, a2);
}

uint64_t sub_21C85BBE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE300, &qword_21CBA99A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C85BC4C(uint64_t a1)
{
  v2 = type metadata accessor for PMOnboardingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C85BD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE300, &qword_21CBA99A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85BDAC(uint64_t a1)
{
  v4 = *(type metadata accessor for PMOnboardingRootView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C85B00C(a1, v6, v7, v1 + v5);
}

id sub_21C85BFB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMAddGroupMembersView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21C85C05C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v2, 0);
    v3 = v16;
    v4 = (v1 + 72);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v15 = v3;
      v7 = *(v3 + 16);
      v8 = *(v3 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_21C7B0C0C((v8 > 1), v7 + 1, 1);
      }

      *(v3 + 16) = v7 + 1;
      v9 = v3 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 14;
      --v2;
    }

    while (v2);
  }

  sub_21CB009AC(v3);

  v10 = objc_allocWithZone(PMSharedAccountsGroupMemberPickerViewController);
  v11 = sub_21CB859D4();

  v12 = [v10 initWithAlreadyAddedAddresses_];

  v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE488, &unk_21CBA9C50);
  sub_21CB83C84();
  [v12 setDelegate_];

  return v13;
}

uint64_t sub_21C85C1FC(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_21CB823B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAddGroupMembersView(0);
  sub_21C7B8998(a1 + *(v13 + 24), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_21CB85B04();
    v14 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_21CB823A4();
  return (*(v10 + 8))(v12, v9);
}

id sub_21C85C474@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  sub_21C85CAFC(v2, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_21C85CB60(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = type metadata accessor for PMAddGroupMembersView.Coordinator();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator_selection];
  *v12 = v7;
  *(v12 + 1) = v6;
  v13 = &v11[OBJC_IVAR____TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator_dismissAction];
  *v13 = sub_21C85CBC4;
  v13[1] = v9;
  v15.receiver = v11;
  v15.super_class = v10;

  result = objc_msgSendSuper2(&v15, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_21C85C5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C85CAB8(&qword_27CDEE478, &unk_21CBA9B80);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21C85C63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C85CAB8(&qword_27CDEE478, &unk_21CBA9B80);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21C85C6BC(uint64_t a1)
{
  sub_21C85CAB8(&qword_27CDEE478, &unk_21CBA9B80);
  sub_21CB83B44();
  __break(1u);
}

char *sub_21C85C700(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    goto LABEL_16;
  }

  v3 = [objc_opt_self() sharedManager];
  sub_21C6E8F4C(0, &qword_27CDEE438, 0x277CFBCA0);

  v4 = sub_21CB85814();

  v5 = [v3 groupMemberDataForRecipients_];

  sub_21C6E8F4C(0, &qword_27CDEE440, 0x277CBAA00);
  v6 = sub_21CB85824();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:

    v10 = MEMORY[0x277D84F90];
LABEL_15:
    v18 = *(v2 + OBJC_IVAR____TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator_selection);

    v18(v10);

LABEL_16:
    v19 = *(v2 + OBJC_IVAR____TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator_dismissAction);

    v19(v20);
  }

  v7 = sub_21CB85FA4();
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
  v23 = MEMORY[0x277D84F90];
  result = sub_21C7B11CC(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v21 = v3;
    v22 = v2;
    v9 = 0;
    v10 = v23;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CF15BD0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      sub_21C9DCC64(v11, v24);

      v13 = v25;
      v14 = v26;

      sub_21C7A344C(v24);
      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21C7B11CC((v15 > 1), v16 + 1, 1);
      }

      ++v9;
      *(v23 + 16) = v16 + 1;
      v17 = v23 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
    }

    while (v7 != v9);

    v3 = v21;
    v2 = v22;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}
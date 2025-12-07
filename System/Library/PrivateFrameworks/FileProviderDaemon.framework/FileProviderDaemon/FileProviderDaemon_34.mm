uint64_t sub_1CF3D63B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + qword_1EDEBBDD8);
  if (v2)
  {
    v3 = *(a2 + qword_1EDEBBDD8 + 8);
    MEMORY[0x1EEE9AC00](result);
    v7[2] = v4;
    v7[3] = v5;
    v8 = v6 & 1;

    v2(sub_1CF480044, v7);
    return sub_1CEFF7124(v2, v3);
  }

  return result;
}

uint64_t sub_1CF3D6468(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + qword_1EDEBBDD8);
  if (v2)
  {
    v3 = *(a2 + qword_1EDEBBDD8 + 8);
    MEMORY[0x1EEE9AC00](result);
    v10[1] = *(v4 + 2632);
    v11 = v5;
    v12 = *(v4 + 2648);
    v13 = v7;
    v14 = v6;
    v15 = v8;
    v16 = v9 & 1;

    v2(sub_1CF484AB0, v10);
    return sub_1CEFF7124(v2, v3);
  }

  return result;
}

uint64_t sub_1CF3D6560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF0, &qword_1CFA05330);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  sub_1CEFCCBDC(a1, a4, &qword_1EC4C1B40, &unk_1CF9FCB70);
  sub_1CEFCCBDC(a2, a4 + v9, &qword_1EC4C1B40, &unk_1CF9FCB70);
  *(a4 + v10) = a3;
  return (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
}

uint64_t sub_1CF3D6648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  type metadata accessor for SnapshotItem(255, a4, a5, a4);
  v9 = sub_1CF9E75D8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = *(TupleTypeMetadata3 + 48);
  v12 = *(TupleTypeMetadata3 + 64);
  v13 = *(*(v9 - 8) + 16);
  v13(a6, a1, v9);
  v13(a6 + v11, a2, v9);
  *(a6 + v12) = a3;
  return (*(*(TupleTypeMetadata3 - 8) + 56))(a6, 0, 1, TupleTypeMetadata3);
}

uint64_t sub_1CF3D6774(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + qword_1EDEBBDD8);
  if (v2)
  {
    v3 = *(a2 + qword_1EDEBBDD8 + 8);
    MEMORY[0x1EEE9AC00](result);
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = v7;
    v9[5] = v6;
    v9[6] = v8;

    v2(sub_1CF484B78, v9);
    return sub_1CEFF7124(v2, v3);
  }

  return result;
}

void sub_1CF3D6824(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  if (v4 == 255)
  {
    v8 = a1[31];
    if (v8)
    {
      v14 = a1[31];
      v9 = a2[3];
      v10 = a2[4];
      v11 = __swift_project_boxed_opaque_existential_1(a2, v9);
      v12 = v8;
      sub_1CF3CA63C(&v14, 0, v11, v9, v10, a3);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF0, &qword_1CFA05330);
      (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
    }
  }

  else
  {
    v14 = *a1;
    v15 = v4;
    v5 = a2[3];
    v6 = a2[4];
    v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
    sub_1CF3CA2D8(&v14, 0, v7, v5, v6, a3);
  }
}

uint64_t sub_1CF3D6964@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a2;
  v57 = a4;
  v5 = *a3;
  v6 = *(*a3 + 2656);
  v47 = *(*a3 + 2640);
  v48 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v9;
  v53 = AssociatedTypeWitness;
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v46 - v11;
  v12 = *(v5 + 2648);
  v54 = *(v5 + 2632);
  v55 = v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v18 = *(v13 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  v23 = a1;
  (*(v15 + 16))(v17, a1, v14, v20);
  if ((*(v18 + 48))(v17, 1, v13) == 1)
  {
    v24 = v56;
    v25 = v57;
    (*(v15 + 8))(v17, v14);
    *&v26 = v54;
    *&v27 = v55;
    *(&v26 + 1) = v47;
    *(&v27 + 1) = v48;
    v58[0] = v26;
    v58[1] = v27;
    v28 = type metadata accessor for ItemReconciliation(0, v58);
    v30 = v50;
    v29 = v51;
    v31 = v23 + *(v28 + 52);
    v32 = v49;
    (*(v50 + 16))(v49, v31, v51);
    v34 = v52;
    v33 = v53;
    if ((*(v52 + 48))(v32, 1, v53) == 1)
    {
      (*(v30 + 8))(v32, v29);
      type metadata accessor for SnapshotItem(255, v54, v55, v35);
      sub_1CF9E75D8();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      return (*(*(TupleTypeMetadata3 - 8) + 56))(v25, 1, 1, TupleTypeMetadata3);
    }

    else
    {
      v41 = v46;
      (*(v34 + 32))(v46, v32, v33);
      v42 = v24;
      v43 = v24[3];
      v44 = v42[4];
      v45 = __swift_project_boxed_opaque_existential_1(v42, v43);
      sub_1CF3CA63C(v41, 0, v45, v43, v44, v25);
      return (*(v34 + 8))(v41, v33);
    }
  }

  else
  {
    (*(v18 + 32))(v22, v17, v13);
    v38 = v56[3];
    v39 = v56[4];
    v40 = __swift_project_boxed_opaque_existential_1(v56, v38);
    sub_1CF3CA2D8(v22, 0, v40, v38, v39, v57);
    return (*(v18 + 8))(v22, v13);
  }
}

uint64_t sub_1CF3D6E74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + qword_1EDEBBDD8);
  if (v6)
  {
    v8 = *(a2 + qword_1EDEBBDD8 + 8);
    MEMORY[0x1EEE9AC00](result);
    v14[2] = v9;
    v14[3] = v10;
    v14[4] = v11;
    v14[5] = v12;
    v14[6] = v13;

    v6(a6, v14);
    return sub_1CEFF7124(v6, v8);
  }

  return result;
}

uint64_t sub_1CF3D6F20(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA46BF0, v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF48540C, v2, v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

void sub_1CF3D6FE0(void *a1, uint64_t a2)
{
  v648 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v639 = *(v648 - 8);
  MEMORY[0x1EEE9AC00](v648);
  v651 = &v629[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v638 = &v629[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04D0, &unk_1CFA12B00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v653 = &v629[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v647 = &v629[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v645 = &v629[-v12];
  v654 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v644 = *(v654 - 8);
  MEMORY[0x1EEE9AC00](v654);
  v652 = &v629[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v643 = &v629[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04F0, &qword_1CFA12B10);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v650 = &v629[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v649 = &v629[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v646 = &v629[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v23 = *v22[-1].tester;
  MEMORY[0x1EEE9AC00](v22);
  *&v676 = &v629[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v657 = &v629[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v673 = &v629[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v672 = &v629[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v670 = &v629[-v32];
  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v634 = *(v636 - 8);
  MEMORY[0x1EEE9AC00](v636);
  v671 = &v629[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v633 = &v629[-v35];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06C0, &qword_1CFA05AD0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v637 = &v629[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v629[-v39];
  v41 = qword_1EDEBBC70;
  swift_beginAccess();
  v630 = a2;
  v42 = *(a2 + v41);
  v43 = *(v42 + 64);
  v632 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & v43;
  v631 = (v44 + 63) >> 6;
  v679 = (v23 + 56);
  v661 = v23;
  *&v678 = v23 + 48;
  v666 = 0x80000001CFA45580;
  v665 = 0x80000001CFA455B0;
  v664 = 0x80000001CFA455D0;
  v635 = v42;

  v47 = 0;
  v662 = a1;
  v694 = v22;
  v640 = v40;
LABEL_6:
  if (!v46)
  {
    if (v631 <= v47 + 1)
    {
      v50 = v47 + 1;
    }

    else
    {
      v50 = v631;
    }

    v49 = v673;
    v51 = v637;
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v631)
      {
        v641 = v50 - 1;
        v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06C8, &qword_1CFA05AD8);
        (*(*(v161 - 8) + 56))(v51, 1, 1, v161);
        v642 = 0;
        goto LABEL_16;
      }

      v46 = *(v632 + 8 * v48);
      ++v47;
      if (v46)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v48 = v47;
  v49 = v673;
LABEL_15:
  v642 = (v46 - 1) & v46;
  v52 = __clz(__rbit64(v46)) | (v48 << 6);
  v53 = *(v635 + 56);
  v54 = *(v635 + 48) + 16 * v52;
  *&v677 = *v54;
  v55 = *(v54 + 8);
  v56 = v633;
  sub_1CEFCCBDC(v53 + *(v634 + 72) * v52, v633, &unk_1EC4C04C0, &qword_1CFA07B10);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06C8, &qword_1CFA05AD8);
  v58 = *(v57 + 48);
  v51 = v637;
  *v637 = v677;
  *(v51 + 8) = v55;
  sub_1CEFE55D0(v56, v51 + v58, &unk_1EC4C04C0, &qword_1CFA07B10);
  (*(*(v57 - 8) + 56))(v51, 0, 1, v57);
  v641 = v48;
  v40 = v640;
LABEL_16:
  sub_1CEFE55D0(v51, v40, &qword_1EC4C06C0, &qword_1CFA05AD0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06C8, &qword_1CFA05AD8);
  if ((*(*(v59 - 8) + 48))(v40, 1, v59) != 1)
  {
    v60 = *(v59 + 48);
    v61 = *v40;
    LODWORD(v669) = v40[8];
    v62 = v671;
    sub_1CEFE55D0(&v40[v60], v671, &unk_1EC4C04C0, &qword_1CFA07B10);
    v63 = *(&v62->super.isa + *(v636 + 56));
    v64 = *(v63 + 64);
    v656 = v63 + 64;
    v65 = 1 << *(v63 + 32);
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    else
    {
      v66 = -1;
    }

    v67 = v66 & v64;
    v655 = (v65 + 63) >> 6;
    v660 = v61;
    v68 = 0x6873617274;
    if (!v61)
    {
      v68 = 1953460082;
    }

    v659 = v68;
    v69 = 0xE500000000000000;
    if (!v61)
    {
      v69 = 0xE400000000000000;
    }

    v658 = v69;
    v663 = v63;

    v70 = 0;
    while (v67)
    {
      v122 = v70;
LABEL_51:
      v124 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      sub_1CEFCCBDC(*(v663 + 56) + *(v661 + 72) * (v124 | (v122 << 6)), v49, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v125 = 0;
      *&v677 = v122;
LABEL_52:
      isa = v679->super.isa;
      v127 = 1;
      (v679->super.isa)(v49, v125, 1, v22);
      v128 = *v678;
      if ((*v678)(v49, 1, v22) != 1)
      {
        v129 = *v694[2].tree;
        isa_low = SLODWORD(v694[3].super.isa);
        v130 = v673;
        v674 = *v673;
        v668 = *(v673 + 2);
        v131 = sub_1CF9E6448();
        v132 = *(*(v131 - 8) + 32);
        v133 = v657;
        v132(&v657[v129], &v130[v129], v131);
        v134 = swift_allocObject();
        *&v675 = v128;
        v135 = v134;
        *(v134 + 16) = *&v130[isa_low];
        v136 = *v694[2].tree;
        v137 = v672;
        v138 = (v672 + SLODWORD(v694[3].super.isa));
        *v672 = v674;
        *(v137 + 16) = v668;
        v139 = &v133[v129];
        v22 = v694;
        v132((v137 + v136), v139, v131);
        a1 = v662;
        v127 = 0;
        *v138 = sub_1CF485B60;
        v138[1] = v135;
        v128 = v675;
      }

      v140 = v672;
      isa(v672, v127, 1, v22);
      v141 = v670;
      sub_1CEFE55D0(v140, v670, &qword_1EC4BE1C0, &unk_1CFA058B0);
      if (v128(v141, 1, v22) == 1)
      {

        sub_1CEFCCC44(v671, &unk_1EC4C04C0, &qword_1CFA07B10);
        v47 = v641;
        v40 = v640;
        v46 = v642;
        goto LABEL_6;
      }

      v142 = *(v141 + 2);
      v143 = *v22[2].tree;
      v144 = v141;
      v145 = SLODWORD(v22[3].super.isa);
      v146 = v676;
      v675 = *v144;
      *v676 = v675;
      *(v146 + 16) = v142;
      v147 = sub_1CF9E6448();
      v148 = *(*(v147 - 8) + 32);
      v674 = *(v144 + v145);
      v148(v146 + v143, v144 + v143, v147);
      *(v146 + v145) = v674;
      v149 = a1[3];
      v150 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v149);
      v692 = 0;
      v693 = 0xE000000000000000;
      if (v669)
      {
        v81 = v659;
        v82 = v658;
        v49 = v673;
        if (v669 == 1)
        {
          v690 = 0x284449656C6966;
          v691 = 0xE700000000000000;
          v688 = v660;
          v151 = sub_1CF9E7F98();
          v153 = v152;
          MEMORY[0x1D3868CC0](v151);
          v153, v154, v155, v156, v157, v158, v159, v160;
          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v81 = v690;
          v82 = v691;
        }
      }

      else
      {
        v690 = 0x284449636F64;
        v691 = 0xE600000000000000;
        LODWORD(v688) = v660;
        v71 = sub_1CF9E7F98();
        v73 = v72;
        MEMORY[0x1D3868CC0](v71);
        v73, v74, v75, v76, v77, v78, v79, v80;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v81 = v690;
        v82 = v691;
        v49 = v673;
      }

      MEMORY[0x1D3868CC0](v81, v82);
      v82, v83, v84, v85, v86, v87, v88, v89;
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v90 = LOBYTE(v671->super.isa);
      v91 = 0xD000000000000016;
      if (v90 != 3)
      {
        v91 = 0xD000000000000022;
      }

      v92 = v666;
      if (v90 == 3)
      {
        v92 = v665;
      }

      if (v90 == 2)
      {
        v91 = 0xD000000000000013;
        v92 = v664;
      }

      v93 = 0x7463697665;
      if (!LOBYTE(v671->super.isa))
      {
        v93 = 0x6C6169726574616DLL;
      }

      v94 = 0xE500000000000000;
      if (!LOBYTE(v671->super.isa))
      {
        v94 = 0xEB00000000657A69;
      }

      if (LOBYTE(v671->super.isa) <= 1u)
      {
        v95 = v93;
      }

      else
      {
        v95 = v91;
      }

      if (LOBYTE(v671->super.isa) <= 1u)
      {
        v96 = v94;
      }

      else
      {
        v96 = v92;
      }

      MEMORY[0x1D3868CC0](v95, v96);
      v96, v97, v98, v99, v100, v101, v102, v103;
      MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
      v104 = sub_1CEFD11AC(v675);
      v106 = v105;
      MEMORY[0x1D3868CC0](v104);
      v106, v107, v108, v109, v110, v111, v112, v113;
      v114 = v693;
      sub_1CF4FB2BC(v692, v693, v149, v150);
      v114, v115, v116, v117, v118, v119, v120, v121;
      sub_1CEFCCC44(v676, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v70 = v677;
      v22 = v694;
    }

    if (v655 <= v70 + 1)
    {
      v123 = v70 + 1;
    }

    else
    {
      v123 = v655;
    }

    while (1)
    {
      v122 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v122 >= v655)
      {
        *&v677 = v123 - 1;
        v67 = 0;
        v125 = 1;
        goto LABEL_52;
      }

      v67 = *(v656 + 8 * v122);
      ++v70;
      if (v67)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
  }

  v162 = qword_1EC4EBD70;
  v163 = v630;
  swift_beginAccess();
  v164 = *(v163 + v162);
  v165 = v164 + 64;
  v166 = 1 << *(v164 + 32);
  v167 = -1;
  if (v166 < 64)
  {
    v167 = ~(-1 << v166);
  }

  v669 = v167 & *(v164 + 64);
  v665 = (v166 + 63) >> 6;
  v694 = (v644 + 56);
  v679 = (v644 + 48);
  v672 = *MEMORY[0x1E6967258];
  v670 = *MEMORY[0x1E6967298];
  v668 = *MEMORY[0x1E6967280];
  *&v675 = "+ processing requests";
  v664 = v164;

  v168 = 0;
  v169 = v654;
  v170 = v650;
  v663 = v165;
LABEL_65:
  v171 = v669;
  if (v669)
  {
    v172 = v168;
LABEL_70:
    v669 = (v171 - 1) & v171;
    isa_low = v172;
    v173 = (v172 << 9) | (8 * __clz(__rbit64(v171)));
    v174 = *(*(v664 + 56) + v173);
    v175 = *v174->tree;
    *&v674 = *(*(v664 + 48) + v173);
    v666 = v674;
    v671 = v174;

    v176 = 0;
    v673 = v175;
    while (1)
    {
      if (v176 == v175)
      {
        v211 = 1;
        *&v678 = v175;
      }

      else
      {
        if ((v176 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        if (v176 >= *v671->tree)
        {
          goto LABEL_176;
        }

        sub_1CEFCCBDC(v671 + ((*(v644 + 80) + 32) & ~*(v644 + 80)) + *(v644 + 72) * v176, v170, &qword_1EC4BE670, &qword_1CF9FE4D0);
        v211 = 0;
        *&v678 = v176 + 1;
      }

      v212 = v694->super.isa;
      v213 = 1;
      (v694->super.isa)(v170, v211, 1, v169);
      v214 = v679->super.isa;
      if ((v679->super.isa)(v170, 1, v169) != 1)
      {
        v215 = *(v169 + 64);
        v216 = *(v169 + 80);
        v217 = v170[1];
        *&v677 = *v170;
        *&v676 = v217;
        v218 = sub_1CF9E6448();
        v219 = *(*(v218 - 8) + 32);
        v220 = v643;
        v219(&v643[v215], &v650[v215], v218);
        v221 = swift_allocObject();
        *(v221 + 16) = *&v650[v216];
        v222 = *(v654 + 64);
        v223 = v649;
        v224 = (v649 + *(v654 + 80));
        v225 = v676;
        *v649 = v677;
        v223[1] = v225;
        v226 = &v220[v215];
        v170 = v650;
        v219(v223 + v222, v226, v218);
        v169 = v654;
        v213 = 0;
        *v224 = sub_1CF485B44;
        v224[1] = v221;
        a1 = v662;
      }

      v227 = v649;
      (v212)(v649, v213, 1, v169);
      v228 = v646;
      sub_1CEFE55D0(v227, v646, &unk_1EC4C04F0, &qword_1CFA12B10);
      if (v214(v228, 1, v169) == 1)
      {
        v671, v229, v230, v231, v232, v233, v234, v235;

        v168 = isa_low;
        v165 = v663;
        goto LABEL_65;
      }

      v236 = v169;
      v237 = *(v169 + 64);
      v238 = v228;
      v239 = *(v236 + 80);
      v240 = v652;
      v677 = *v238;
      *v652 = v677;
      v241 = sub_1CF9E6448();
      v242 = *(*(v241 - 8) + 32);
      v676 = *(v238 + v239);
      v242(&v240[v237], v238 + v237, v241);
      *&v240[v239] = v676;
      v243 = a1[3];
      v244 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v243);
      v690 = 0;
      v691 = 0xE000000000000000;
      sub_1CF9E7948();
      v245 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v247 = v246;
      v249 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v255 = v248;
      if (v245 == v249 && v247 == v248)
      {
        v247, v248, v249, v250, v251, v252, v253, v254;
        v255, v177, v178, v179, v180, v181, v182, v183;
        v184 = 0xE500000000000000;
        v185 = 0x746F6F722ELL;
        v169 = v654;
        goto LABEL_72;
      }

      v256 = sub_1CF9E8048();
      v247, v257, v258, v259, v260, v261, v262, v263;
      v255, v264, v265, v266, v267, v268, v269, v270;
      v169 = v654;
      if (v256)
      {
        v184 = 0xE500000000000000;
        v185 = 0x746F6F722ELL;
        goto LABEL_72;
      }

      v271 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v273 = v272;
      v275 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v281 = v271;
      v282 = v274;
      if (v281 == v275 && v273 == v274)
      {
        v273, v274, v275, v276, v277, v278, v279, v280;
        v282, v283, v284, v285, v286, v287, v288, v289;
        v185 = 0x676E696B726F772ELL;
        v184 = 0xEB00000000746553;
        goto LABEL_72;
      }

      v290 = sub_1CF9E8048();
      v273, v291, v292, v293, v294, v295, v296, v297;
      v282, v298, v299, v300, v301, v302, v303, v304;
      v185 = 0x676E696B726F772ELL;
      v184 = 0xEB00000000746553;
      if ((v290 & 1) == 0)
      {
        v305 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v307 = v306;
        v309 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v315 = v305;
        v316 = v308;
        if (v315 == v309 && v307 == v308)
        {
          v307, v308, v309, v310, v311, v312, v313, v314;
          v316, v317, v318, v319, v320, v321, v322, v323;
LABEL_93:
          v184 = 0xE600000000000000;
          v185 = 0x68736172742ELL;
          goto LABEL_72;
        }

        v324 = sub_1CF9E8048();
        v307, v325, v326, v327, v328, v329, v330, v331;
        v316, v332, v333, v334, v335, v336, v337, v338;
        if (v324)
        {
          goto LABEL_93;
        }

        v185 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v184 = v339;
      }

LABEL_72:
      MEMORY[0x1D3868CC0](v185, v184);
      v184, v186, v187, v188, v189, v190, v191, v192;
      MEMORY[0x1D3868CC0](0xD000000000000012, v675 | 0x8000000000000000);
      v193 = sub_1CF913458(v677);
      v195 = v194;
      MEMORY[0x1D3868CC0](v193);
      v195, v196, v197, v198, v199, v200, v201, v202;
      v203 = v691;
      sub_1CF4FB2BC(v690, v691, v243, v244);
      v203, v204, v205, v206, v207, v208, v209, v210;
      sub_1CEFCCC44(v652, &qword_1EC4BE670, &qword_1CF9FE4D0);
      a1 = v662;
      v175 = v673;
      v176 = v678;
    }
  }

  while (1)
  {
    v172 = v168 + 1;
    if (__OFADD__(v168, 1))
    {
      goto LABEL_179;
    }

    if (v172 >= v665)
    {
      break;
    }

    v171 = *(v165 + 8 * v172);
    ++v168;
    if (v171)
    {
      goto LABEL_70;
    }
  }

  v340 = qword_1EC4EBD78;
  v341 = v630;
  swift_beginAccess();
  v342 = *(v341 + v340);
  v343 = *(v342 + 64);
  v664 = v342 + 64;
  v344 = 1 << *(v342 + 32);
  v345 = -1;
  if (v344 < 64)
  {
    v345 = ~(-1 << v344);
  }

  isa_low = v345 & v343;
  v668 = (v344 + 63) >> 6;
  v346 = (v639 + 56);
  v694 = (v639 + 48);
  v665 = v342;

  v347 = 0;
  v348 = v653;
  v349 = v648;
  v669 = v346;
LABEL_99:
  v350 = isa_low;
  if (isa_low)
  {
    v351 = v347;
LABEL_104:
    v352 = __clz(__rbit64(v350)) | (v351 << 6);
    v353 = *(v665 + 56);
    v354 = *(v665 + 48) + 16 * v352;
    v355 = *v354;
    LODWORD(v674) = *(v354 + 8);
    v356 = *(v353 + 8 * v352);

    if (v356)
    {
      v666 = v351;
      v357 = 0;
      isa_low = (v350 - 1) & v350;
      v358 = *(v356 + 16);
      v359 = 0x6873617274;
      if (!v355)
      {
        v359 = 1953460082;
      }

      v671 = v359;
      v360 = 0xE500000000000000;
      if (!v355)
      {
        v360 = 0xE400000000000000;
      }

      v670 = v360;
      v672 = v355;
      v673 = v358;
      *&v676 = v356;
      while (1)
      {
        if (v357 == v358)
        {
          v398 = 1;
          v679 = v358;
        }

        else
        {
          if ((v357 & 0x8000000000000000) != 0)
          {
            goto LABEL_177;
          }

          if (v357 >= *(v356 + 16))
          {
            goto LABEL_178;
          }

          sub_1CEFCCBDC(v356 + ((*(v639 + 80) + 32) & ~*(v639 + 80)) + *(v639 + 72) * v357, v348, &unk_1EC4C5230, &unk_1CF9FE4C0);
          v398 = 0;
          v679 = (&v357->super.isa + 1);
        }

        v399 = *v346;
        v400 = 1;
        (*v346)(v348, v398, 1, v349);
        v401 = v694->super.isa;
        if ((v694->super.isa)(v348, 1, v349) != 1)
        {
          v402 = *(v349 + 64);
          v403 = *(v349 + 80);
          v404 = v348[1];
          *&v678 = *v348;
          *&v677 = v404;
          v405 = sub_1CF9E6448();
          v406 = *(*(v405 - 8) + 32);
          v407 = v638;
          v406(&v638[v402], &v653[v402], v405);
          v408 = swift_allocObject();
          *(v408 + 16) = *&v653[v403];
          v409 = *(v648 + 64);
          v410 = v647;
          v411 = (v647 + *(v648 + 80));
          v412 = v677;
          *v647 = v678;
          v410[1] = v412;
          v413 = &v407[v402];
          v346 = v669;
          v406(v410 + v409, v413, v405);
          v348 = v653;
          v349 = v648;
          v400 = 0;
          *v411 = sub_1CF485B44;
          v411[1] = v408;
          a1 = v662;
        }

        v414 = v647;
        v399(v647, v400, 1, v349);
        v415 = v645;
        sub_1CEFE55D0(v414, v645, &unk_1EC4C04D0, &unk_1CFA12B00);
        if ((v401)(v415, 1, v349) == 1)
        {
          v676, v416, v417, v418, v419, v420, v421, v422;
          v347 = v666;
          goto LABEL_99;
        }

        v423 = *(v349 + 64);
        v424 = *(v349 + 80);
        v425 = v651;
        v678 = *v415;
        *v651 = v678;
        v426 = sub_1CF9E6448();
        v427 = *(*(v426 - 8) + 32);
        v677 = *(v415 + v424);
        v427(&v425[v423], v415 + v423, v426);
        *&v425[v424] = v677;
        v428 = a1[3];
        v429 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v428);
        v688 = 0;
        v689 = 0xE000000000000000;
        sub_1CF9E7948();
        if (!v674)
        {
          break;
        }

        v371 = v671;
        v372 = v670;
        if (v674 == 1)
        {
          v686 = 0x284449656C6966;
          v687 = 0xE700000000000000;
          v684 = v672;
          goto LABEL_111;
        }

LABEL_112:
        MEMORY[0x1D3868CC0](v371, v372);
        v372, v373, v374, v375, v376, v377, v378, v379;
        MEMORY[0x1D3868CC0](0xD000000000000012, v675 | 0x8000000000000000);
        v380 = sub_1CEFD11AC(v678);
        v382 = v381;
        MEMORY[0x1D3868CC0](v380);
        v382, v383, v384, v385, v386, v387, v388, v389;
        v390 = v689;
        sub_1CF4FB2BC(v688, v689, v428, v429);
        v390, v391, v392, v393, v394, v395, v396, v397;
        sub_1CEFCCC44(v651, &unk_1EC4C5230, &unk_1CF9FE4C0);
        v348 = v653;
        v356 = v676;
        v357 = v679;
        v358 = v673;
      }

      v686 = 0x284449636F64;
      v687 = 0xE600000000000000;
      LODWORD(v684) = v672;
LABEL_111:
      v361 = sub_1CF9E7F98();
      v363 = v362;
      MEMORY[0x1D3868CC0](v361);
      v363, v364, v365, v366, v367, v368, v369, v370;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v371 = v686;
      v372 = v687;
      goto LABEL_112;
    }

LABEL_124:

    v430 = qword_1EC4EBD80;
    v431 = v630;
    swift_beginAccess();
    v432 = *(v431 + v430);
    v433 = (v432 + 64);
    v434 = 1 << *(v432 + 32);
    v435 = -1;
    if (v434 < 64)
    {
      v435 = ~(-1 << v434);
    }

    v436 = v435 & *(v432 + 64);
    v437 = (v434 + 63) >> 6;
    v671 = v432;

    v438 = 0;
    v670 = v433;
    v669 = v437;
    while (1)
    {
      if (!v436)
      {
        do
        {
          v439 = v438 + 1;
          if (__OFADD__(v438, 1))
          {
            goto LABEL_183;
          }

          if (v439 >= v437)
          {
            goto LABEL_147;
          }

          v436 = *&v433[8 * v439];
          ++v438;
        }

        while (!v436);
        v438 = v439;
      }

      v440 = *v671[1].tree + 16 * (__clz(__rbit64(v436)) | (v438 << 6));
      *&v677 = *v440;
      v441 = *(v440 + 8);

      if (!v442)
      {
        break;
      }

      v672 = v436;
      v673 = v438;
      *&v674 = v442;
      v450 = *(v442 + 16);
      if (v450)
      {
        v451 = 0x6873617274;
        if (!v677)
        {
          v451 = 1953460082;
        }

        *&v676 = v451;
        v452 = 0xE500000000000000;
        if (!v677)
        {
          v452 = 0xE400000000000000;
        }

        *&v675 = v452;
        v453 = v674 + 64;
        LODWORD(v678) = v441;
        do
        {
          v498 = *(v453 - 32);
          v499 = sub_1CF19F384(*(v453 - 24));
          v500 = (*(v499 + 176))();
          v502 = v501;
          v504 = v662[3];
          v503 = v662[4];
          v505 = __swift_project_boxed_opaque_existential_1(v662, v504);
          v686 = 0;
          v687 = 0xE000000000000000;
          v694 = v503;
          v679 = v505;
          if (v441)
          {
            if (v441 != 1)
            {
              sub_1CEFD09A0(v498);

              v464 = v676;
              v465 = v675;
              goto LABEL_142;
            }

            v684 = 0x284449656C6966;
            v685 = 0xE700000000000000;
            v682 = v677;
            sub_1CEFD09A0(v498);
          }

          else
          {
            v684 = 0x284449636F64;
            v685 = 0xE600000000000000;
            LODWORD(v682) = v677;
            sub_1CEFD09A0(v498);
          }

          v454 = sub_1CF9E7F98();
          v456 = v455;
          MEMORY[0x1D3868CC0](v454);
          v456, v457, v458, v459, v460, v461, v462, v463;
          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v464 = v684;
          v465 = v685;
LABEL_142:
          MEMORY[0x1D3868CC0](v464, v465);
          v465, v466, v467, v468, v469, v470, v471, v472;
          MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
          MEMORY[0x1D3868CC0](v500, v502);
          v502, v473, v474, v475, v476, v477, v478, v479;
          MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
          v480 = sub_1CEFD11AC(v498);
          v482 = v481;
          MEMORY[0x1D3868CC0](v480);
          v482, v483, v484, v485, v486, v487, v488, v489;
          v490 = v687;
          sub_1CF4FB2BC(v686, v687, v504, v694);
          v490, v491, v492, v493, v494, v495, v496, v497;
          sub_1CEFD0A98(v498);

          v453 += 40;
          --v450;
          v441 = v678;
        }

        while (v450);
      }

      v436 = (v672 - 1) & v672;
      v674, v443, v444, v445, v446, v447, v448, v449;
      v433 = v670;
      v437 = v669;
      v438 = v673;
    }

LABEL_147:

    v506 = qword_1EDEBBC90;
    v507 = v630;
    swift_beginAccess();
    v694 = *(v507 + v506);
    v508 = *v694->tree;
    if (v508)
    {
      v679 = 0x80000001CFA46C30;

      v509 = 1;
      v510 = v662;
      do
      {
        v511 = v694[v509].super.isa;
        v512 = v510[3];
        v513 = v510[4];
        __swift_project_boxed_opaque_existential_1(v510, v512);
        v684 = 0;
        v685 = 0xE000000000000000;
        sub_1CEFD09A0(v511);
        sub_1CF9E7948();
        v685, v514, v515, v516, v517, v518, v519, v520;
        v684 = 0xD000000000000012;
        v685 = v679;
        v521 = sub_1CEFD11AC(v511);
        v523 = v522;
        MEMORY[0x1D3868CC0](v521);
        v523, v524, v525, v526, v527, v528, v529, v530;
        v531 = v685;
        sub_1CF4FB2BC(v684, v685, v512, v513);
        v531, v532, v533, v534, v535, v536, v537, v538;
        sub_1CEFD0A98(v511);
        ++v509;
        --v508;
      }

      while (v508);
      v694, v539, v540, v541, v542, v543, v544, v545;
    }

    v546 = qword_1EDEBBCC0;
    v547 = v630;
    swift_beginAccess();
    v548 = *(v547 + v546);
    v549 = v548 + 56;
    v550 = 1 << *(v548 + 32);
    v551 = -1;
    if (v550 < 64)
    {
      v551 = ~(-1 << v550);
    }

    v552 = v551 & *(v548 + 56);
    v553 = (v550 + 63) >> 6;
    v679 = v548;

    v554 = 0;
    while (v552)
    {
      v555 = v554;
LABEL_159:
      v556 = __clz(__rbit64(v552));
      v552 &= v552 - 1;
      v557 = *(*v679[1].tree + ((v555 << 9) | (8 * v556)));
      v558 = v662[3];
      v694 = v662[4];
      __swift_project_boxed_opaque_existential_1(v662, v558);
      v682 = 0;
      v683 = 0xE000000000000000;
      sub_1CEFD09A0(v557);
      sub_1CF9E7948();
      v683, v559, v560, v561, v562, v563, v564, v565;
      v682 = 0x6972726162205346;
      v683 = 0xEF20726F66207265;
      v566 = sub_1CEFD11AC(v557);
      v568 = v567;
      MEMORY[0x1D3868CC0](v566);
      v568, v569, v570, v571, v572, v573, v574, v575;
      v576 = v683;
      sub_1CF4FB2BC(v682, v683, v558, v694);
      v576, v577, v578, v579, v580, v581, v582, v583;
      sub_1CEFD0A98(v557);
    }

    while (1)
    {
      v555 = v554 + 1;
      if (__OFADD__(v554, 1))
      {
        goto LABEL_180;
      }

      if (v555 >= v553)
      {

        v584 = qword_1EDEBBCC8;
        v585 = v630;
        swift_beginAccess();
        v586 = *(v585 + v584);
        v589 = *(v586 + 56);
        v588 = v586 + 56;
        v587 = v589;
        v590 = 1 << *(*(v585 + v584) + 32);
        v591 = -1;
        if (v590 < 64)
        {
          v591 = ~(-1 << v590);
        }

        v592 = v591 & v587;
        v593 = (v590 + 63) >> 6;
        v679 = *(v585 + v584);

        v594 = 0;
        while (v592)
        {
          v595 = v594;
LABEL_169:
          v596 = __clz(__rbit64(v592));
          v592 &= v592 - 1;
          v597 = *(*v679[1].tree + ((v595 << 9) | (8 * v596)));
          v598 = v662[3];
          v694 = v662[4];
          __swift_project_boxed_opaque_existential_1(v662, v598);
          v680 = 0;
          v681 = 0xE000000000000000;
          sub_1CEFD09A0(v597);
          sub_1CF9E7948();
          v681, v599, v600, v601, v602, v603, v604, v605;
          v680 = 0x6972726162205046;
          v681 = 0xEF20726F66207265;
          v606 = sub_1CEFD11AC(v597);
          v608 = v607;
          MEMORY[0x1D3868CC0](v606);
          v608, v609, v610, v611, v612, v613, v614, v615;
          v616 = v681;
          sub_1CF4FB2BC(v680, v681, v598, v694);
          v616, v617, v618, v619, v620, v621, v622, v623;
          sub_1CEFD0A98(v597);
        }

        while (1)
        {
          v595 = v594 + 1;
          if (__OFADD__(v594, 1))
          {
            goto LABEL_181;
          }

          if (v595 >= v593)
          {

            v624 = *(v630 + 32);
            v625 = *(**(v624 + 16) + 856);

            v626 = v662;
            v625(v662);

            if ((*(v624 + 33) & 1) == 0)
            {
              v627 = v626[3];
              v628 = v626[4];
              __swift_project_boxed_opaque_existential_1(v626, v627);
              sub_1CF4FB2BC(0xD000000000000036, 0x80000001CFA46C50, v627, v628);
            }

            return;
          }

          v592 = *(v588 + 8 * v595);
          ++v594;
          if (v592)
          {
            v594 = v595;
            goto LABEL_169;
          }
        }
      }

      v552 = *(v549 + 8 * v555);
      ++v554;
      if (v552)
      {
        v554 = v555;
        goto LABEL_159;
      }
    }
  }

  while (1)
  {
    v351 = &v347->super.isa + 1;
    if (__OFADD__(v347, 1))
    {
      break;
    }

    if (v351 >= v668)
    {
      goto LABEL_124;
    }

    v350 = *(v664 + 8 * v351);
    v347 = (v347 + 1);
    if (v350)
    {
      goto LABEL_104;
    }
  }

LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
}

void sub_1CF3D95AC(void *a1, uint64_t a2)
{
  v543 = a1;
  v4 = *(*a2 + 2640);
  v5 = *(*a2 + 2648);
  v6 = *(*a2 + 2656);
  v557 = *(*a2 + 2632);
  v3 = v557;
  v558 = v4;
  v559 = v5;
  v560 = v6;
  v557 = type metadata accessor for UserRequest(255, &v557);
  v558 = &type metadata for NSecTimestamp;
  v7 = sub_1CF9E6448();
  v559 = v7;
  v560 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v493 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v512 = (&v443 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v444 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v492 = &v443 - v11;
  v539 = v12;
  v501 = sub_1CF9E75D8();
  v448 = *(v501 - 8);
  MEMORY[0x1EEE9AC00](v501);
  v527 = (&v443 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v513 = (&v443 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v494 = (&v443 - v17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v557 = v3;
  v558 = v4;
  v559 = v5;
  v560 = v6;
  v557 = type metadata accessor for UserRequest(255, &v557);
  v558 = &type metadata for JobCode;
  v559 = &type metadata for NSecTimestamp;
  v560 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v490 = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  v535 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v454 = sub_1CF9E75D8();
  v446 = *(v454 - 8);
  MEMORY[0x1EEE9AC00](v454);
  v453 = &v443 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v452 = &v443 - v21;
  v557 = v4;
  v558 = v3;
  v559 = v6;
  v560 = v5;
  v557 = type metadata accessor for UserRequest(255, &v557);
  v558 = &type metadata for NSecTimestamp;
  v559 = v7;
  v560 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  v22 = swift_getTupleTypeMetadata();
  v496 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v526 = &v443 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v445 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v495 = &v443 - v25;
  v529 = v26;
  v505 = sub_1CF9E75D8();
  v450 = *(v505 - 8);
  MEMORY[0x1EEE9AC00](v505);
  v532 = (&v443 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v528 = (&v443 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v504 = &v443 - v31;
  v557 = v3;
  v558 = v4;
  v559 = v5;
  v560 = v6;
  v557 = type metadata accessor for UserRequest(255, &v557);
  v558 = &type metadata for NSecTimestamp;
  v559 = v7;
  v560 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v502 = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  v461 = swift_getTupleTypeMetadata2();
  v460 = sub_1CF9E75D8();
  v447 = *(v460 - 8);
  MEMORY[0x1EEE9AC00](v460);
  v459 = &v443 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v458 = &v443 - v34;
  v35 = v5;
  v36 = swift_getAssociatedTypeWitness();
  v463 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v509 = &v443 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v462 = &v443 - v39;
  v557 = v3;
  v558 = v4;
  v559 = v35;
  v560 = v6;
  v557 = type metadata accessor for UserRequest(255, &v557);
  v558 = &type metadata for MaterializationRequestOptions;
  v473 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v559 = v473;
  v560 = v7;
  v561 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  v40 = swift_getTupleTypeMetadata();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v500 = &v443 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v499 = &v443 - v44;
  v523 = sub_1CF9E75D8();
  v536 = *(v523 - 1);
  MEMORY[0x1EEE9AC00](v523);
  v531 = &v443 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v530 = (&v443 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v522 = (&v443 - v49);
  v557 = v4;
  v558 = v3;
  v559 = v6;
  v560 = v35;
  v541 = v35;
  v557 = type metadata accessor for UserRequest(255, &v557);
  v558 = &type metadata for NSecTimestamp;
  v559 = v7;
  v474 = v7;
  v560 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v508 = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  v510 = v36;
  v467 = swift_getTupleTypeMetadata2();
  v466 = sub_1CF9E75D8();
  v449 = *(v466 - 8);
  MEMORY[0x1EEE9AC00](v466);
  v465 = &v443 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v464 = &v443 - v52;
  v557 = v3;
  v558 = v4;
  v542 = v4;
  v559 = v35;
  v560 = v6;
  v540 = v6;
  v53 = type metadata accessor for ConcreteDatabase.MaterializationRequest(0, &v557);
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v525 = &v443 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v469 = &v443 - v57;
  v58 = *(v535 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v491 = &v443 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v503 = &v443 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v524 = &v443 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v487 = &v443 - v66;
  v488 = v67;
  v68 = swift_getTupleTypeMetadata2();
  v477 = sub_1CF9E75D8();
  v69 = *(v477 - 8);
  MEMORY[0x1EEE9AC00](v477);
  v479 = &v443 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v478 = &v443 - v72;
  v73 = qword_1EDEBBC70;
  swift_beginAccess();
  v451 = a2;
  v74 = *(a2 + v73);
  v75 = v500;
  v76 = *(v74 + 64);
  v457 = v74 + 64;
  v77 = 1 << *(v74 + 32);
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  else
  {
    v78 = -1;
  }

  v79 = v78 & v76;
  v456 = (v77 + 63) >> 6;
  v480 = v68;
  v80 = v68 - 8;
  v81 = v3;
  v476 = v80;
  v481 = v58 + 16;
  v468 = v54 + 16;
  v489 = (v58 + 32);
  v486 = (v54 + 32);
  v475 = (v69 + 32);
  v538 = (v41 + 56);
  v506 = v41 + 16;
  v537 = (v41 + 48);
  v521 = (v536 + 32);
  v517 = 0x80000001CFA45580;
  v516 = 0x80000001CFA455B0;
  v515 = 0x80000001CFA455D0;
  v507 = v41;
  v514 = v41 + 8;
  v482 = v58;
  v483 = (v58 + 8);
  v470 = v54;
  v472 = (v54 + 8);
  v471 = v74;

  v82 = 0;
  v544 = v3;
  while (1)
  {
    if (!v79)
    {
      if (v456 <= v82 + 1)
      {
        v85 = v82 + 1;
      }

      else
      {
        v85 = v456;
      }

      v86 = v529;
      v84 = v531;
      v87 = v480;
      v88 = v479;
      v89 = v478;
      while (1)
      {
        v83 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          break;
        }

        if (v83 >= v456)
        {
          v484 = v85 - 1;
          v485 = 0;
          v100 = 1;
          goto LABEL_16;
        }

        v79 = *(v457 + 8 * v83);
        ++v82;
        if (v79)
        {
          goto LABEL_15;
        }
      }

LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v83 = v82;
    v84 = v531;
LABEL_15:
    v485 = (v79 - 1) & v79;
    v90 = __clz(__rbit64(v79)) | (v83 << 6);
    v91 = v471;
    v92 = v482;
    v93 = v535;
    (*(v482 + 16))(v487, *(v471 + 48) + *(v482 + 72) * v90, v535);
    v94 = v470;
    v95 = *(v91 + 56) + *(v470 + 72) * v90;
    v96 = v469;
    v97 = v488;
    (*(v470 + 16))(v469, v95, v488);
    v87 = v480;
    v536 = *(v480 + 48);
    v98 = *(v92 + 32);
    v99 = v479;
    v98(v479, v487, v93);
    (*(v94 + 32))(&v99[v536], v96, v97);
    v88 = v99;
    v100 = 0;
    v484 = v83;
    v86 = v529;
    v75 = v500;
    v89 = v478;
    v81 = v544;
LABEL_16:
    v101 = *(v87 - 8);
    (*(v101 + 56))(v88, v100, 1, v87);
    (*v475)(v89, v88, v477);
    if ((*(v101 + 48))(v89, 1, v87) == 1)
    {
      goto LABEL_54;
    }

    v102 = *(v87 + 48);
    (*v489)(v524, v89, v535);
    (*v486)(v525, &v89[v102], v488);
    v557 = v81;
    v558 = v542;
    v559 = v541;
    v560 = v540;
    v557 = type metadata accessor for UserRequest(255, &v557);
    v558 = &type metadata for MaterializationRequestOptions;
    v559 = v473;
    v560 = v474;
    v561 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    swift_getTupleTypeMetadata();
    nullsub_1();
    v104 = *(v103 + 64);
    v498 = v103 + 64;
    v105 = 1 << *(v103 + 32);
    v106 = v105 < 64 ? ~(-1 << v105) : -1;
    v86 = v106 & v104;
    v497 = (v105 + 63) >> 6;
    v511 = v103;

    v107 = 0;
    if (!v86)
    {
      break;
    }

    while (1)
    {
      v108 = v107;
      v81 = v544;
LABEL_29:
      v110 = __clz(__rbit64(v86));
      v86 &= v86 - 1;
      (*(v507 + 16))(v84, *(v511 + 56) + *(v507 + 72) * (v110 | (v108 << 6)), v40);
      v111 = 0;
      v536 = v108;
LABEL_30:
      v112 = *v538;
      v113 = 1;
      (*v538)(v84, v111, 1, v40);
      v114 = *v537;
      if ((*v537)(v84, 1, v40) != 1)
      {
        *&v533 = v112;
        v115 = *(v40 + 80);
        v518 = *(v40 + 96);
        *&v534 = v114;
        v116 = v531;
        v520 = *v531;
        v519 = *(v531 + 16);
        v117 = sub_1CF9E6448();
        v118 = *(*(v117 - 8) + 32);
        v119 = v499;
        v118(&v499[v115], v116 + v115, v117);
        v120 = swift_allocObject();
        *(v120 + 16) = *(v116 + v518);
        v121 = *(v40 + 80);
        v122 = v530;
        v123 = (v530 + *(v40 + 96));
        *&v530->super.isa = v520;
        *v122->tree = v519;
        v124 = &v119[v115];
        v112 = v533;
        v118(v122 + v121, v124, v117);
        v81 = v544;
        v113 = 0;
        *v123 = sub_1CF485B60;
        v123[1] = v120;
        v114 = v534;
        v75 = v500;
      }

      v125 = v530;
      v112(v530, v113, 1, v40);
      v126 = v522;
      (*v521)(v522, v125, v523);
      if (v114(v126, 1, v40) == 1)
      {
        break;
      }

      v127 = v126[2];
      v128 = *(v40 + 80);
      v129 = *(v40 + 96);
      v533 = *v126;
      *v75 = v533;
      *(v75 + 2) = v127;
      v130 = sub_1CF9E6448();
      v131 = *(*(v130 - 8) + 32);
      v534 = *(v126 + v129);
      v131(&v75[v128], v126 + v128, v130);
      *&v75[v129] = v534;
      v132 = v40;
      v133 = v543[3];
      *&v534 = v543[4];
      __swift_project_boxed_opaque_existential_1(v543, v133);
      v555 = 0;
      v556 = 0xE000000000000000;
      v134 = v541;
      v135 = v81;
      swift_getAssociatedConformanceWitness();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v136 = *v525;
      v137 = 0xD000000000000016;
      if (v136 != 3)
      {
        v137 = 0xD000000000000022;
      }

      v138 = v517;
      if (v136 == 3)
      {
        v138 = v516;
      }

      if (v136 == 2)
      {
        v137 = 0xD000000000000013;
        v138 = v515;
      }

      v139 = 0x7463697665;
      if (!*v525)
      {
        v139 = 0x6C6169726574616DLL;
      }

      v140 = 0xE500000000000000;
      if (!*v525)
      {
        v140 = 0xEB00000000657A69;
      }

      if (*v525 <= 1u)
      {
        v141 = v139;
      }

      else
      {
        v141 = v137;
      }

      if (*v525 <= 1u)
      {
        v142 = v140;
      }

      else
      {
        v142 = v138;
      }

      MEMORY[0x1D3868CC0](v141, v142);
      v142, v143, v144, v145, v146, v147, v148, v149;
      MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
      v553 = v533;
      v557 = v135;
      v558 = v542;
      v559 = v134;
      v560 = v540;
      type metadata accessor for UserRequest(0, &v557);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      v150 = v556;
      sub_1CF4FB2BC(v555, v556, v133, v534);
      v150, v151, v152, v153, v154, v155, v156, v157;
      (*v514)(v75, v132);
      v107 = v536;
      v40 = v132;
      v84 = v531;
      if (!v86)
      {
        goto LABEL_22;
      }
    }

    (*v483)(v524, v535);

    (*v472)(v525, v488);
    v82 = v484;
    v79 = v485;
  }

LABEL_22:
  if (v497 <= v107 + 1)
  {
    v109 = v107 + 1;
  }

  else
  {
    v109 = v497;
  }

  v81 = v544;
  while (1)
  {
    v108 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      break;
    }

    if (v108 >= v497)
    {
      v536 = v109 - 1;
      v86 = 0;
      v111 = 1;
      goto LABEL_30;
    }

    v86 = *(v498 + 8 * v108);
    v107 = (v107 + 1);
    if (v86)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_54:

  v158 = qword_1EC4EBD70;
  v159 = v451;
  swift_beginAccess();
  v160 = *(v159 + v158);
  v161 = *(v160 + 64);
  v507 = v160 + 64;
  v162 = 1 << *(v160 + 32);
  v163 = -1;
  if (v162 < 64)
  {
    v163 = ~(-1 << v162);
  }

  v164 = v163 & v161;
  v506 = (v162 + 63) >> 6;
  v517 = v467 - 8;
  v511 = v463 + 16;
  v518 = v463 + 32;
  v516 = v449 + 1;
  v522 = (v496 + 16);
  v521 = (v496 + 32);
  v538 = (v496 + 56);
  v537 = (v496 + 48);
  v525 = (v450 + 32);
  v531 = "+ processing requests";
  v523 = (v496 + 8);
  v515 = (v463 + 8);
  v514 = v160;

  v165 = 0;
LABEL_58:
  v173 = v494;
  if (!v164)
  {
    if (v506 <= v165 + 1)
    {
      v175 = v165 + 1;
    }

    else
    {
      v175 = v506;
    }

    v176 = v175 - 1;
    while (1)
    {
      v174 = v165 + 1;
      if (__OFADD__(v165, 1))
      {
        break;
      }

      if (v174 >= v506)
      {
        v185 = v467;
        v187 = *(v467 - 8);
        v235 = v465;
        (*(v187 + 56))(v465, 1, 1, v467);
        v188 = v235;
        *&v520 = 0;
        goto LABEL_68;
      }

      v164 = *(v507 + 8 * v174);
      ++v165;
      if (v164)
      {
        goto LABEL_67;
      }
    }

LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v174 = v165;
LABEL_67:
  *&v520 = (v164 - 1) & v164;
  v177 = __clz(__rbit64(v164)) | (v174 << 6);
  v178 = v514;
  v179 = v463;
  v180 = v462;
  v181 = v510;
  (*(v463 + 16))(v462, *(v514 + 48) + *(v463 + 72) * v177, v510);
  v182 = *(*(v178 + 56) + 8 * v177);
  v183 = *(v467 + 48);
  v184 = *(v179 + 32);
  v185 = v467;
  v186 = v465;
  v184(v465, v180, v181);
  *&v186[v183] = v182;
  v187 = *(v185 - 8);
  (*(v187 + 56))(v186, 0, 1, v185);

  v176 = v174;
  v188 = v186;
LABEL_68:
  v189 = v464;
  (v516->super.isa)(v464, v188, v466);
  if ((*(v187 + 48))(v189, 1, v185) != 1)
  {
    v519 = v176;
    v190 = *&v189[*(v185 + 48)];
    (*v518)(v509, v189, v510);
    v191 = 0;
    v530 = v190;
    while (1)
    {
      if (v191 == sub_1CF9E6DF8())
      {
        v536 = v191;
        v192 = 1;
        v193 = v543;
      }

      else
      {
        v194 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        v193 = v543;
        if (v194)
        {
          v195 = v495;
          (*(v496 + 16))(v495, v190 + ((*(v496 + 80) + 32) & ~*(v496 + 80)) + *(v496 + 72) * v191, v86);
        }

        else
        {
          v234 = sub_1CF9E7998();
          if (v445 != 8)
          {
            goto LABEL_175;
          }

          v557 = v234;
          v195 = v495;
          (*v522)(v495, &v557, v86);
          swift_unknownObjectRelease();
        }

        (*v521)(v532, v195, v86);
        v196 = __OFADD__(v191, 1);
        v197 = (v191 + 1);
        if (v196)
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          sub_1CF9E7998();
          __break(1u);
          goto LABEL_166;
        }

        v536 = v197;
        v192 = 0;
      }

      v198 = *v538;
      v199 = 1;
      v200 = v532;
      (*v538)(v532, v192, 1, v86);
      v201 = *v537;
      if ((*v537)(v200, 1, v86) != 1)
      {
        v202 = *(v86 + 64);
        v524 = *(v86 + 80);
        v203 = v532;
        v204 = *v532->_anon_8;
        *&v534 = v532->super.isa;
        *&v533 = v204;
        v205 = sub_1CF9E6448();
        v206 = *(*(v205 - 8) + 32);
        v207 = v526;
        v206(&v526[v202], v203 + v202, v205);
        v208 = swift_allocObject();
        *(v208 + 16) = *(&v203->super.isa + v524);
        v209 = *(v529 + 64);
        v210 = v528;
        v211 = (v528 + *(v529 + 80));
        v212 = v533;
        v528->super.isa = v534;
        *v210->_anon_8 = v212;
        v206(v210 + v209, &v207[v202], v205);
        v86 = v529;
        v193 = v543;
        v199 = 0;
        *v211 = sub_1CF485B44;
        v211[1] = v208;
      }

      v213 = v528;
      v198(v528, v199, 1, v86);
      v214 = v504;
      (*v525)(v504, v213, v505);
      if (v201(v214, 1, v86) == 1)
      {
        (*v515)(v509, v510);
        v530, v166, v167, v168, v169, v170, v171, v172;
        v165 = v519;
        v164 = v520;
        goto LABEL_58;
      }

      v215 = v214;
      v216 = *(v86 + 64);
      v217 = *(v86 + 80);
      v534 = *v215;
      v218 = v193;
      v219 = v526;
      *v526 = v534;
      v220 = sub_1CF9E6448();
      v221 = *(*(v220 - 8) + 32);
      v533 = *(v215 + v217);
      v221(&v219[v216], v215 + v216, v220);
      *&v219[v217] = v533;
      v223 = v218[3];
      v222 = v218[4];
      __swift_project_boxed_opaque_existential_1(v218, v223);
      v557 = 0;
      v558 = 0xE000000000000000;
      sub_1CF9E7948();
      v553 = v557;
      v554 = v558;
      v224 = v540;
      v225 = v542;
      swift_getAssociatedConformanceWitness();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0xD000000000000012, v531 | 0x8000000000000000);
      v551 = v534;
      v557 = v225;
      v558 = v544;
      v559 = v224;
      v560 = v541;
      type metadata accessor for UserRequest(0, &v557);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      v226 = v554;
      sub_1CF4FB2BC(v553, v554, v223, v222);
      v226, v227, v228, v229, v230, v231, v232, v233;
      (*v523)(v219, v86);
      v190 = v530;
      v191 = v536;
    }
  }

  v236 = qword_1EC4EBD78;
  v237 = v451;
  swift_beginAccess();
  v238 = *(v237 + v236);
  v239 = *(v238 + 64);
  v519 = v238 + 64;
  v240 = 1 << *(v238 + 32);
  v241 = -1;
  if (v240 < 64)
  {
    v241 = ~(-1 << v240);
  }

  v242 = v241 & v239;
  v518 = (v240 + 63) >> 6;
  v522 = (v461 - 8);
  v521 = (v447 + 32);
  v526 = (v493 + 16);
  v525 = (v493 + 32);
  v538 = (v493 + 56);
  v537 = (v493 + 48);
  v530 = v448 + 1;
  v528 = (v493 + 8);
  *&v520 = v238;

  v243 = 0;
  while (v242)
  {
    v251 = v243;
LABEL_96:
    v524 = (v242 - 1) & v242;
    v254 = __clz(__rbit64(v242)) | (v251 << 6);
    v255 = v520;
    v256 = v482;
    v257 = v487;
    v258 = v535;
    (*(v482 + 16))(v487, *(v520 + 48) + *(v482 + 72) * v254, v535);
    v259 = *(*(v255 + 56) + 8 * v254);
    v260 = v461;
    v261 = *(v461 + 48);
    v262 = *(v256 + 32);
    v263 = v459;
    v262(v459, v257, v258);
    *&v263[v261] = v259;
    v264 = *(v260 - 8);
    (*(v264 + 56))(v263, 0, 1, v260);

    v253 = v251;
    v265 = v263;
    v266 = v260;
LABEL_97:
    v267 = v458;
    (*v521)(v458, v265, v460);
    v268 = (*(v264 + 48))(v267, 1, v266);
    v269 = v539;
    if (v268 == 1)
    {

      v312 = qword_1EC4EBD80;
      v313 = v451;
      swift_beginAccess();
      v314 = *(v313 + v312);
      v315 = v314 + 2;
      v316 = 1 << LOBYTE(v314[1].super.isa);
      v317 = -1;
      if (v316 < 64)
      {
        v317 = ~(-1 << v316);
      }

      v318 = v317 & v314[2].super.isa;
      v525 = ((v316 + 63) >> 6);
      v529 = TupleTypeMetadata2 - 8;
      v528 = v446 + 1;
      v526 = v314;

      v319 = 0;
      v527 = v315;
      while (1)
      {
        if (!v318)
        {
          if (v525 <= (v319 + 1))
          {
            v321 = (v319 + 1);
          }

          else
          {
            v321 = v525;
          }

          v322 = v321 - 1;
          while (1)
          {
            v320 = (v319 + 1);
            if (__OFADD__(v319, 1))
            {
              goto LABEL_170;
            }

            if (v320 >= v525)
            {
              v329 = TupleTypeMetadata2;
              v332 = *(TupleTypeMetadata2 - 8);
              v331 = v453;
              (*(v332 + 56))(v453, 1, 1, TupleTypeMetadata2);
              v530 = 0;
              v531 = v322;
              goto LABEL_127;
            }

            v318 = *(&v315->super.isa + v320);
            ++v319;
            if (v318)
            {
              v531 = v320;
              goto LABEL_126;
            }
          }
        }

        v531 = v319;
        v320 = v319;
LABEL_126:
        v530 = ((v318 - 1) & v318);
        v323 = __clz(__rbit64(v318)) | (v320 << 6);
        v324 = v526;
        v325 = v482;
        v326 = v487;
        v327 = v535;
        (*(v482 + 16))(v487, *(v526 + 6) + *(v482 + 72) * v323, v535);
        v328 = *(*(v324 + 7) + 8 * v323);
        v329 = TupleTypeMetadata2;
        v330 = *(TupleTypeMetadata2 + 48);
        v331 = v453;
        (*(v325 + 32))(v453, v326, v327);
        *&v331[v330] = v328;
        v332 = *(v329 - 8);
        (*(v332 + 56))(v331, 0, 1, v329);

LABEL_127:
        v333 = v452;
        (v528->super.isa)(v452, v331, v454);
        if ((*(v332 + 48))(v333, 1, v329) == 1)
        {
          break;
        }

        v334 = *&v333[*(v329 + 48)];
        (*v489)(v491, v333, v535);
        if (sub_1CF9E6DF8())
        {
          v557 = v544;
          v558 = v542;
          v559 = v541;
          v560 = v540;
          v532 = type metadata accessor for Job(0, &v557);
          v342 = 0;
          v343 = v334 + 2;
          *&v533 = v334;
          while (1)
          {
            v344 = sub_1CF9E6DC8();
            sub_1CF9E6D78();
            if ((v344 & 1) == 0)
            {
              goto LABEL_165;
            }

            if (__OFADD__(v342, 1))
            {
              break;
            }

            isa = v343[-1].super.isa;
            v346 = v343[-1]._anon_8[0];
            v539 = v342 + 1;
            v347 = sub_1CF05194C(v346);
            *&v534 = (*(v347 + 176))();
            v349 = v348;
            v537 = v543[3];
            v538 = v543[4];
            v536 = __swift_project_boxed_opaque_existential_1(v543, v537);
            v549 = 0;
            v550 = 0xE000000000000000;
            sub_1CEFD09A0(isa);
            v350 = v541;
            v351 = v544;
            swift_getAssociatedConformanceWitness();

            sub_1CF9E7FE8();
            MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
            MEMORY[0x1D3868CC0](v534, v349);
            v349, v352, v353, v354, v355, v356, v357, v358;
            MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
            v547 = isa;
            v557 = v351;
            v558 = v542;
            v559 = v350;
            v560 = v540;
            type metadata accessor for UserRequest(0, &v557);
            swift_getWitnessTable();
            sub_1CF9E7FE8();
            v359 = v550;
            sub_1CF4FB2BC(v549, v550, v537, v538);
            v334 = v533;
            v359, v360, v361, v362, v363, v364, v365, v366;
            sub_1CEFD0A98(isa);

            ++v342;
            v343 = (v343 + 40);
            if (v539 == sub_1CF9E6DF8())
            {
              goto LABEL_115;
            }
          }

LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

LABEL_115:
        v334, v335, v336, v337, v338, v339, v340, v341;
        (*v483)(v491, v535);
        v315 = v527;
        v319 = v531;
        v318 = v530;
      }

      v367 = qword_1EDEBBC90;
      v368 = v451;
      swift_beginAccess();
      v369 = *(v368 + v367);

      v557 = v544;
      v558 = v542;
      v559 = v541;
      v560 = v540;
      v370 = type metadata accessor for UserRequest(255, &v557);
      type metadata accessor for FPStabilizationMode(255);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
      v541 = v370;
      swift_getTupleTypeMetadata3();
      if (!sub_1CF9E6DF8())
      {
LABEL_140:
        v369, v371, v372, v373, v374, v375, v376, v377;
        v392 = qword_1EDEBBCC0;
        v393 = v451;
        swift_beginAccess();
        v394 = *(v393 + v392);
        v397 = *(v394 + 56);
        v396 = v394 + 56;
        v395 = v397;
        v398 = 1 << *(*(v393 + v392) + 32);
        v399 = -1;
        if (v398 < 64)
        {
          v399 = ~(-1 << v398);
        }

        v400 = v399 & v395;
        v401 = (v398 + 63) >> 6;
        v542 = *(v393 + v392);

        v402 = 0;
        while (v400)
        {
          v403 = v402;
LABEL_148:
          v404 = __clz(__rbit64(v400));
          v400 &= v400 - 1;
          v405 = *(v542[3].Kind + ((v403 << 9) | (8 * v404)));
          v406 = v543[3];
          v544 = v543[4];
          __swift_project_boxed_opaque_existential_1(v543, v406);
          v547 = 0;
          v548 = 0xE000000000000000;
          sub_1CEFD09A0(v405);
          sub_1CF9E7948();
          MEMORY[0x1D3868CC0](0x6972726162205346, 0xEF20726F66207265);
          v545 = v405;
          swift_getWitnessTable();
          sub_1CF9E7FE8();
          v407 = v548;
          sub_1CF4FB2BC(v547, v548, v406, v544);
          v407, v408, v409, v410, v411, v412, v413, v414;
          sub_1CEFD0A98(v405);
        }

        while (1)
        {
          v403 = v402 + 1;
          if (__OFADD__(v402, 1))
          {
            goto LABEL_171;
          }

          if (v403 >= v401)
          {

            v415 = qword_1EDEBBCC8;
            v416 = v451;
            swift_beginAccess();
            v417 = *(v416 + v415);
            v420 = *(v417 + 56);
            v419 = v417 + 56;
            v418 = v420;
            v421 = 1 << *(*(v416 + v415) + 32);
            v422 = -1;
            if (v421 < 64)
            {
              v422 = ~(-1 << v421);
            }

            v423 = v422 & v418;
            v424 = (v421 + 63) >> 6;
            v542 = *(v416 + v415);

            v425 = 0;
            while (v423)
            {
              v426 = v425;
LABEL_158:
              v427 = __clz(__rbit64(v423));
              v423 &= v423 - 1;
              v428 = *(v542[3].Kind + ((v426 << 9) | (8 * v427)));
              v429 = v543[3];
              v544 = v543[4];
              __swift_project_boxed_opaque_existential_1(v543, v429);
              v545 = 0;
              v546 = 0xE000000000000000;
              sub_1CEFD09A0(v428);
              sub_1CF9E7948();
              MEMORY[0x1D3868CC0](0x6972726162205046, 0xEF20726F66207265);
              v562 = v428;
              swift_getWitnessTable();
              sub_1CF9E7FE8();
              v430 = v546;
              sub_1CF4FB2BC(v545, v546, v429, v544);
              v430, v431, v432, v433, v434, v435, v436, v437;
              sub_1CEFD0A98(v428);
            }

            while (1)
            {
              v426 = v425 + 1;
              if (__OFADD__(v425, 1))
              {
                goto LABEL_172;
              }

              if (v426 >= v424)
              {

                v438 = *(v451 + 32);
                v439 = *(**(v438 + 16) + 856);

                v440 = v543;
                v439(v543);

                if ((*(v438 + 33) & 1) == 0)
                {
                  v441 = v440[3];
                  v442 = v440[4];
                  __swift_project_boxed_opaque_existential_1(v440, v441);
                  sub_1CF4FB2BC(0xD000000000000036, 0x80000001CFA46C50, v441, v442);
                }

                return;
              }

              v423 = *(v419 + 8 * v426);
              ++v425;
              if (v423)
              {
                v425 = v426;
                goto LABEL_158;
              }
            }
          }

          v400 = *(v396 + 8 * v403);
          ++v402;
          if (v400)
          {
            v402 = v403;
            goto LABEL_148;
          }
        }
      }

      v378 = 0;
      v540 = ": propagation for ";
      v379 = 1;
      while (1)
      {
        v380 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if ((v380 & 1) == 0)
        {
          goto LABEL_173;
        }

        v381 = v378 + 1;
        if (__OFADD__(v378, 1))
        {
          goto LABEL_174;
        }

        v382 = v369[v379].super.isa;
        v383 = v543[3];
        v544 = v543[4];
        v542 = __swift_project_boxed_opaque_existential_1(v543, v383);
        v557 = 0;
        v558 = 0xE000000000000000;
        sub_1CEFD09A0(v382);
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD000000000000012, v540 | 0x8000000000000000);
        v547 = v382;
        swift_getWitnessTable();
        sub_1CF9E7FE8();
        v384 = v558;
        sub_1CF4FB2BC(v557, v558, v383, v544);
        v384, v385, v386, v387, v388, v389, v390, v391;
        sub_1CEFD0A98(v382);
        ++v378;
        ++v379;
        if (v381 == sub_1CF9E6DF8())
        {
          goto LABEL_140;
        }
      }
    }

    v523 = v253;
    v270 = *&v267[*(v266 + 48)];
    (*v489)(v503, v267, v535);
    v271 = 0;
    v532 = v270;
    while (1)
    {
      if (v271 == sub_1CF9E6DF8())
      {
        v536 = v271;
        v272 = 1;
      }

      else
      {
        v273 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v273)
        {
          v274 = v492;
          (*(v493 + 16))(v492, v270 + ((*(v493 + 80) + 32) & ~*(v493 + 80)) + *(v493 + 72) * v271, v269);
        }

        else
        {
          v310 = sub_1CF9E7998();
          if (v444 != 8)
          {
            goto LABEL_176;
          }

          v557 = v310;
          v274 = v492;
          (*v526)(v492, &v557, v269);
          swift_unknownObjectRelease();
        }

        (*v525)(v527, v274, v269);
        v196 = __OFADD__(v271, 1);
        v275 = (v271 + 1);
        if (v196)
        {
          goto LABEL_164;
        }

        v536 = v275;
        v272 = 0;
      }

      v276 = *v538;
      v277 = 1;
      v278 = v527;
      (*v538)(v527, v272, 1, v269);
      v279 = *v537;
      if ((*v537)(v278, 1, v269) != 1)
      {
        v280 = *(v269 + 64);
        v529 = *(v269 + 80);
        v281 = v527;
        v282 = *v527->_anon_8;
        *&v534 = v527->super.isa;
        *&v533 = v282;
        v283 = sub_1CF9E6448();
        v284 = *(*(v283 - 8) + 32);
        v285 = v512;
        v284(v512 + v280, v281 + v280, v283);
        v286 = swift_allocObject();
        *(v286 + 16) = *(&v281->super.isa + v529);
        v287 = *(v539 + 64);
        v288 = v513;
        v289 = (v513 + *(v539 + 80));
        v290 = v533;
        v513->super.isa = v534;
        *v288->_anon_8 = v290;
        v291 = v285 + v280;
        v173 = v494;
        v284(v288 + v287, v291, v283);
        v277 = 0;
        *v289 = sub_1CF485B44;
        v289[1] = v286;
        v269 = v539;
      }

      v292 = v513;
      v276(v513, v277, 1, v269);
      (v530->super.isa)(v173, v292, v501);
      if (v279(v173, 1, v269) == 1)
      {
        break;
      }

      v293 = *(v269 + 64);
      v294 = *(v539 + 80);
      v534 = *&v173->super.isa;
      v295 = v512;
      *v512 = v534;
      v296 = sub_1CF9E6448();
      v297 = *(*(v296 - 8) + 32);
      v533 = *(&v173->super.isa + v294);
      v297(&v295[v293], v173 + v293, v296);
      *&v295[v294] = v533;
      v298 = v543[3];
      v299 = v543[4];
      __swift_project_boxed_opaque_existential_1(v543, v298);
      v557 = 0;
      v558 = 0xE000000000000000;
      sub_1CF9E7948();
      v551 = v557;
      v552 = v558;
      v300 = v541;
      v301 = v544;
      swift_getAssociatedConformanceWitness();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0xD000000000000012, v531 | 0x8000000000000000);
      v549 = v534;
      v557 = v301;
      v558 = v542;
      v559 = v300;
      v560 = v540;
      type metadata accessor for UserRequest(0, &v557);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      v302 = v552;
      sub_1CF4FB2BC(v551, v552, v298, v299);
      v269 = v539;
      v302, v303, v304, v305, v306, v307, v308, v309;
      (v528->super.isa)(v295, v269);
      v270 = v532;
      v271 = v536;
    }

    (*v483)(v503, v535);
    v532, v244, v245, v246, v247, v248, v249, v250;
    v243 = v523;
    v242 = v524;
  }

  if (v518 <= (v243 + 1))
  {
    v252 = (v243 + 1);
  }

  else
  {
    v252 = v518;
  }

  v253 = (v252 - 1);
  while (1)
  {
    v251 = (v243 + 1);
    if (__OFADD__(v243, 1))
    {
      break;
    }

    if (v251 >= v518)
    {
      v266 = v461;
      v264 = *(v461 - 8);
      v311 = v459;
      (*(v264 + 56))(v459, 1, 1, v461);
      v265 = v311;
      v524 = 0;
      goto LABEL_97;
    }

    v242 = *(v519 + 8 * v251);
    ++v243;
    if (v242)
    {
      goto LABEL_96;
    }
  }

LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  sub_1CF9E7998();
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
}

void sub_1CF3DCD30(uint64_t a1, void *a2, int a3, int a4, void (*a5)(uint64_t (*)(), char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v73 = a4;
  v72 = a3;
  v16 = *v8;
  v70 = sub_1CF9E6118();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v17 = v16[330];
  v18 = v16[331];
  v19 = v16[332];
  v68 = v16[329];
  v88[0] = v68;
  v88[1] = v17;
  v76 = v17;
  v74 = v18;
  v88[2] = v18;
  v88[3] = v19;
  v75 = v19;
  type metadata accessor for SQLSyncStateTable(0, v88);
  swift_dynamicCastClassUnconditional();
  sub_1CF341B50(a1, a2, a7, a8);
  v84 = a7;
  v85 = a8;
  v86 = v9;
  v87 = a2;
  v71 = a6;
  a5(sub_1CF485234, v83);
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46440, v20, v21);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  v79 = a7;
  v80 = a8;
  v81 = v9;
  v82 = a1;
  v77 = a1;
  v24 = sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF485240, v78, v22, MEMORY[0x1E69E7CA8] + 8, v23);
  v69 = 0;
  v25 = MEMORY[0x1EEE9AC00](v24);
  *(&v67 - 4) = a7;
  *(&v67 - 3) = a8;
  v65 = v9;
  v66 = a2;
  v26 = v71;
  v27 = a5;
  (a5)(sub_1CF485264, v25);
  sub_1CF4818C0();

  LOBYTE(a1) = v72;
  v28 = v77;
  sub_1CF217B18(v77, a2, v72 & 1, a7, a8);

  v29 = a2[3];
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  sub_1CF4FB2BC(0, 0xE000000000000000, v29, v30);
  sub_1CF478C28();

  v70 = v27;
  sub_1CF4D02A8(0, v28, a2, v27, v26, a7, a8);

  sub_1CF47FA34();

  sub_1CF4878A0(v28, a2, a1 & 1, a7, a8);

  v31 = *(**(v9[4] + 16) + 936);

  v31(a2);

  if (v73)
  {
    v32 = a2[3];
    v33 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v32);
    sub_1CF4FB2BC(0x662065657274202BLL, 0xEA00000000003A73, v32, v33);
    v34 = a2[3];
    v35 = a2[4];
    v36 = __swift_project_boxed_opaque_existential_1(a2, v34);
    MEMORY[0x1EEE9AC00](v36);
    *(&v67 - 4) = a7;
    *(&v67 - 3) = a8;
    v65 = v9;
    v37 = v69;
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4852F8, (&v67 - 6), v34, MEMORY[0x1E69E7CA8] + 8, v35);
    v38 = v75;
    v39 = v74;
  }

  else
  {
    v38 = v75;
    v39 = v74;
    v37 = v69;
  }

  v40 = v9 + qword_1EDEBBC20;
  os_unfair_lock_lock((v9 + qword_1EDEBBC20));
  v41 = v38;
  v42 = v68;
  sub_1CF3DECAC((v40 + 8), a2, v68, v76, a7, v39, v41, a8);
  type metadata accessor for FileTreeChangeAggregator(255, v42, v39, v43);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7068();
  sub_1CF9E6708();
  swift_getTupleTypeMetadata2();
  v44 = MEMORY[0x1E69E7CA8];
  j__os_unfair_lock_unlock(v40);
  v45 = a2[3];
  v46 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v45);
  sub_1CF4FB2BC(0, 0xE000000000000000, v45, v46);
  sub_1CF478C28();

  v47 = v77;
  sub_1CF4D02A8(1, v77, a2, v70, v71, a7, a8);

  sub_1CF47F85C();

  sub_1CF4878A0(v47, a2, v72 & 1, a7, a8);

  if (v73)
  {
    v48 = a2[3];
    v49 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v48);
    sub_1CF4FB2BC(0x662065657274202BLL, 0xEA00000000003A70, v48, v49);
    v50 = a2[3];
    v51 = a2[4];
    v52 = __swift_project_boxed_opaque_existential_1(a2, v50);
    MEMORY[0x1EEE9AC00](v52);
    *(&v67 - 4) = a7;
    *(&v67 - 3) = a8;
    v65 = v9;
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4852AC, (&v67 - 6), v50, v44 + 8, v51);
  }

  v53 = v9 + qword_1EDEBBC28;
  os_unfair_lock_lock((v9 + qword_1EDEBBC28));
  v54 = v42;
  v55 = v76;
  v56 = v75;
  sub_1CF3DF5DC((v53 + 8), a2, v54, v76, a7, v74, v75, a8);
  type metadata accessor for FileTreeChangeAggregator(0, v55, v56, v57);
  j__os_unfair_lock_unlock(v53);
  if (v37)
  {
    __break(1u);
  }

  else
  {
    v58 = a2[3];
    v59 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v58);
    sub_1CF4FB2BC(0, 0xE000000000000000, v58, v59);
    v60 = a2[3];
    v61 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v60);
    sub_1CF4FB2BC(0xD000000000000027, 0x80000001CFA46460, v60, v61);
    v62 = a2[3];
    v63 = a2[4];
    v64 = __swift_project_boxed_opaque_existential_1(a2, v62);
    MEMORY[0x1EEE9AC00](v64);
    *(&v67 - 4) = a7;
    *(&v67 - 3) = a8;
    v65 = v9;
    v66 = v77;
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF48528C, (&v67 - 6), v62, v44 + 8, v63);
  }
}

unint64_t sub_1CF3DD7B8()
{
  result = qword_1EDEAD410;
  if (!qword_1EDEAD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD410);
  }

  return result;
}

unint64_t sub_1CF3DD810()
{
  result = qword_1EC4BFB08;
  if (!qword_1EC4BFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFB08);
  }

  return result;
}

void sub_1CF3DD864(char *a1, void *a2)
{
  v4 = objc_sync_enter(a1);
  if (v4)
  {
    goto LABEL_24;
  }

  v5 = a1[qword_1EDEADAA8];
  v6 = objc_sync_exit(a1);
  if (v6)
  {
    goto LABEL_25;
  }

  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  if (v5)
  {
    v113 = 0;
    sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA46D90, v7, v8);
    v9 = a2[3];
    v10 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v9);
    sub_1CF9E7948();
    0xE000000000000000, v11, v12, v13, v14, v15, v16, v17;
    v114 = 0x65686373202D2020;
    v115 = 0xEF203A72656C7564;
    v4 = objc_sync_enter(a1);
    if (!v4)
    {
      v18 = *&a1[qword_1EDEADB40];
      v6 = objc_sync_exit(a1);
      if (!v6)
      {
        v19 = [v18 description];
        v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v22 = v21;

        MEMORY[0x1D3868CC0](v20, v22);
        v22, v23, v24, v25, v26, v27, v28, v29;

        sub_1CF4FB2BC(v114, v115, v9, v10);
        v115, v30, v31, v32, v33, v34, v35, v36;
        v37 = a2[3];
        v38 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v37);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06D0, &qword_1CFA05AE0);
        sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484474, a1, v37, v39, v38);
        goto LABEL_8;
      }

LABEL_25:
      MEMORY[0x1EEE9AC00](v6);
      v112 = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v111, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

LABEL_24:
    MEMORY[0x1EEE9AC00](v4);
    v112 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v111, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA46C90, v7, v8);
LABEL_8:
  v40 = a1[qword_1EDEBBCE0];
  v41 = a2[3];
  v42 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v41);
  if (v40 == 1)
  {
    sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46D70, v41, v42);
    v43 = a2[3];
    v44 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v43);
    sub_1CF9E7948();
    0xE000000000000000, v45, v46, v47, v48, v49, v50, v51;
    v114 = 0x65686373202D2020;
    v115 = 0xEF203A72656C7564;
    if (qword_1EDEACC50 != -1)
    {
      swift_once();
    }

    v52 = [qword_1EDEBBB28 description];
    v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v55 = v54;

    MEMORY[0x1D3868CC0](v53, v55);
    v55, v56, v57, v58, v59, v60, v61, v62;
    sub_1CF4FB2BC(v114, v115, v43, v44);
    v115, v63, v64, v65, v66, v67, v68, v69;
  }

  else
  {
    sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA46CB0, v41, v42);
  }

  v70 = *&a1[qword_1EDEBBC98];
  v71 = MEMORY[0x1E69E7CA8];
  if (v70)
  {
    v72 = a2[3];
    v73 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v72);

    sub_1CF4FB2BC(0xD00000000000001DLL, 0x80000001CFA46D50, v72, v73);
    v74 = a2[3];
    v75 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v74);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF48444C, v70, v74, v71 + 8, v75);
  }

  v76 = *&a1[qword_1EDEBBC88];
  if (v76)
  {
    v77 = a2[3];
    v78 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v77);

    sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA46D30, v77, v78);
    v79 = a2[3];
    v80 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v79);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484424, v76, v79, v71 + 8, v80);
  }

  v81 = a1[qword_1EDEBBC48];
  v82 = a2[3];
  v83 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v82);
  if (v81 == 1)
  {
    sub_1CF4FB2BC(0xD000000000000021, 0x80000001CFA46D00, v82, v83);
    v84 = a2[3];
    v85 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v84);
    sub_1CF9E7948();
    0xE000000000000000, v86, v87, v88, v89, v90, v91, v92;
    v114 = 0x65686373202D2020;
    v115 = 0xEF203A72656C7564;
    if (qword_1EDEA5A98 != -1)
    {
      swift_once();
    }

    v93 = [qword_1EDEBB818 description];
    v94 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v96 = v95;

    MEMORY[0x1D3868CC0](v94, v96);
    v96, v97, v98, v99, v100, v101, v102, v103;
    sub_1CF4FB2BC(v114, v115, v84, v85);
    v115, v104, v105, v106, v107, v108, v109, v110;
  }

  else
  {
    sub_1CF4FB2BC(0xD000000000000020, 0x80000001CFA46CD0, v82, v83);
  }
}

void sub_1CF3DE008(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v123 = a4;
  v121 = 0;
  v7 = sub_1CF04590C();
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v7)
  {
    sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA46D90, v8, v9);
    v10 = a2[3];
    v11 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v10);
    sub_1CF9E7948();
    0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
    v124 = 0x65686373202D2020;
    v125 = 0xEF203A72656C7564;
    v19 = sub_1CF5A0F38();
    v20 = [v19 description];
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

    MEMORY[0x1D3868CC0](v21, v23);
    v23, v24, v25, v26, v27, v28, v29, v30;

    sub_1CF4FB2BC(0x65686373202D2020, 0xEF203A72656C7564, v10, v11);
    0xEF203A72656C7564, v31, v32, v33, v34, v35, v36, v37;
    v38 = a2[3];
    v39 = a2[4];
    v40 = __swift_project_boxed_opaque_existential_1(a2, v38);
    MEMORY[0x1EEE9AC00](v40);
    v118 = a3;
    v119 = v123;
    v120 = a1;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06D0, &qword_1CFA05AE0);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4853EC, v117, v38, v41, v39);
  }

  else
  {
    sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA46C90, v8, v9);
  }

  v42 = *(a1 + qword_1EDEBBCE0);
  v43 = a2[3];
  v44 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v43);
  v122 = a3;
  if (v42 == 1)
  {
    sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46D70, v43, v44);
    v45 = a2[3];
    v46 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v45);
    v124 = 0;
    v125 = 0xE000000000000000;
    sub_1CF9E7948();
    v125, v47, v48, v49, v50, v51, v52, v53;
    v124 = 0x65686373202D2020;
    v125 = 0xEF203A72656C7564;
    if (qword_1EDEACC50 != -1)
    {
      swift_once();
    }

    v54 = [qword_1EDEBBB28 description];
    v55 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v57 = v56;

    MEMORY[0x1D3868CC0](v55, v57);
    v57, v58, v59, v60, v61, v62, v63, v64;
    v65 = v125;
    sub_1CF4FB2BC(v124, v125, v45, v46);
    v65, v66, v67, v68, v69, v70, v71, v72;
  }

  else
  {
    sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA46CB0, v43, v44);
  }

  v73 = *(a1 + qword_1EDEBBC98);
  v74 = MEMORY[0x1E69E7CA8];
  if (v73)
  {
    v75 = a2[3];
    v76 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v75);

    sub_1CF4FB2BC(0xD00000000000001DLL, 0x80000001CFA46D50, v75, v76);
    v77 = a2[3];
    v78 = a2[4];
    v79 = __swift_project_boxed_opaque_existential_1(a2, v77);
    MEMORY[0x1EEE9AC00](v79);
    v118 = v122;
    v119 = v123;
    v120 = v73;
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4853C0, v117, v77, v74 + 8, v78);
  }

  v80 = *(a1 + qword_1EDEBBC88);
  if (v80)
  {
    v81 = a2[3];
    v82 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v81);

    sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA46D30, v81, v82);
    v83 = a2[3];
    v84 = a2[4];
    v85 = __swift_project_boxed_opaque_existential_1(a2, v83);
    MEMORY[0x1EEE9AC00](v85);
    v118 = v122;
    v119 = v123;
    v120 = v80;
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF485394, v117, v83, v74 + 8, v84);
  }

  v86 = *(a1 + qword_1EDEBBC48);
  v87 = a2[3];
  v88 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v87);
  if (v86 == 1)
  {
    sub_1CF4FB2BC(0xD000000000000021, 0x80000001CFA46D00, v87, v88);
    v89 = a2[3];
    v90 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v89);
    v124 = 0;
    v125 = 0xE000000000000000;
    sub_1CF9E7948();
    v125, v91, v92, v93, v94, v95, v96, v97;
    v124 = 0x65686373202D2020;
    v125 = 0xEF203A72656C7564;
    if (qword_1EDEA5A98 != -1)
    {
      swift_once();
    }

    v98 = [qword_1EDEBB818 description];
    v99 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v101 = v100;

    MEMORY[0x1D3868CC0](v99, v101);
    v101, v102, v103, v104, v105, v106, v107, v108;
    v109 = v125;
    sub_1CF4FB2BC(v124, v125, v89, v90);
    v109, v110, v111, v112, v113, v114, v115, v116;
  }

  else
  {
    sub_1CF4FB2BC(0xD000000000000020, 0x80000001CFA46CD0, v87, v88);
  }
}

void sub_1CF3DE6FC(void *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = *(a2 + qword_1EDEBBCB8);
  if (v4)
  {

    sub_1CF973C0C(a1);
  }

  *a3 = v4 == 0;
}

uint64_t sub_1CF3DE768(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA46BF0, v4, v5);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484408, a1, v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

uint64_t sub_1CF3DE82C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v62 = a6;
  v7 = v6;
  v61 = a4;
  v66 = a1;
  v67 = a2;
  v9 = sub_1CF7D5474(a5, v6, a1, a2);
  if ([v9 next])
  {
    v10 = [v9 longAtIndex_];
  }

  else
  {

    v10 = 0;
  }

  v60 = 0;
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  sub_1CF9E7948();
  0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;
  v64 = 0x687370616E73202BLL;
  v65 = 0xEB0000000020746FLL;
  v20 = sub_1CF9E6958();
  v22 = v21;
  0xE200000000000000, v21, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](v20, v22);
  v22, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  v63 = v10;
  sub_1CF056E98();
  v36 = sub_1CF9E7718();
  v38 = v37;
  MEMORY[0x1D3868CC0](v36, v37);
  v38, v39, v40, v41, v42, v43, v44, v45;
  MEMORY[0x1D3868CC0](0x73656972746E6520, 0xEA00000000003A29);
  sub_1CF4FB2BC(0x687370616E73202BLL, 0xEB0000000020746FLL, v11, v12);
  0xEB0000000020746FLL, v46, v47, v48, v49, v50, v51, v52;
  v53 = a3[3];
  v54 = a3[4];
  v55 = __swift_project_boxed_opaque_existential_1(a3, v53);
  MEMORY[0x1EEE9AC00](v55);
  v57[16] = v61 & 1;
  v58 = v7;
  v59 = &v66;
  return sub_1CF4FB38C(8224, 0xE200000000000000, v62, v57, v53, MEMORY[0x1E69E7CA8] + 8, v54);
}

void sub_1CF3DEAA4(void *a1, uint64_t a2)
{
  v3 = *(*(a2 + 32) + 16);
  (*(*v3 + 96))(&v7);
  v4 = v7;
  v5 = v8;

  v6 = sub_1CF38A928(a1, v4, v5);
  (*(*v3 + 104))(&v7, v6);
  sub_1CF38A928(a1, v7, v8);
}

uint64_t sub_1CF3DEB6C(uint64_t result, void *a2)
{
  v3 = result;
  if (*(*(result + 16) + 16))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(result + 32) == 2;
  }

  v6 = v4 && *(result + 65) == 0 && *(result + 64) == 0;
  if (!v6 || (*(result + 66) & 1) != 0 || *(*(result + 80) + 16) || *(*(result + 8) + 16))
  {
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    sub_1CF4FB2BC(0x73746E657665202BLL, 0xEC0000003A736620, v7, v8);
    v9 = a2[3];
    v10 = a2[4];
    v11 = __swift_project_boxed_opaque_existential_1(a2, v9);
    MEMORY[0x1EEE9AC00](v11);
    v12[2] = v3;
    return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483E50, v12, v9, MEMORY[0x1E69E7CA8] + 8, v10);
  }

  return result;
}

uint64_t sub_1CF3DECAC(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a1[3];
  v29 = a1[2];
  v30 = v16;
  v17 = a1[5];
  v31 = a1[4];
  v32 = v17;
  v18 = a1[1];
  v27 = *a1;
  v28 = v18;
  v19 = type metadata accessor for FileTreeChangeAggregator(0, a3, a6, a4);
  result = sub_1CF5A08AC(v19);
  if ((result & 1) == 0)
  {
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    sub_1CF4FB2BC(0x73746E657665202BLL, 0xEC0000003A736620, v21, v22);
    v23 = a2[3];
    v24 = a2[4];
    v25 = __swift_project_boxed_opaque_existential_1(a2, v23);
    MEMORY[0x1EEE9AC00](v25);
    v26[2] = a3;
    v26[3] = a4;
    v26[4] = a5;
    v26[5] = a6;
    v26[6] = a7;
    v26[7] = a8;
    v26[8] = a1;
    return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF48536C, v26, v23, MEMORY[0x1E69E7CA8] + 8, v24);
  }

  return result;
}

uint64_t sub_1CF3DEE0C(void *a1, _OWORD *a2)
{
  v3 = a2[3];
  v8[2] = a2[2];
  v8[3] = v3;
  v4 = a2[5];
  v8[4] = a2[4];
  v8[5] = v4;
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  sub_1CEFCCBDC(v8, &v7, &unk_1EC4C0680, &qword_1CFA05A88);
  sub_1CF3DEFA8(a1, sub_1CF483E6C, sub_1CF483E88);
  return sub_1CEFCCC44(v8, &unk_1EC4C0680, &qword_1CFA05A88);
}

uint64_t sub_1CF3DEECC(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[1];
  v14[0] = *a2;
  v14[1] = v9;
  v10 = type metadata accessor for FileTreeChangeAggregator(0, a3, a6, a4);
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v13, v14, v10);
  sub_1CF5A09CC(a1, v10);
  return (*(v11 + 8))(v14, v10);
}

void sub_1CF3DEFA8(void *result, void (*a2)(void *), void (*a3)(void *))
{
  v79 = a3;
  v5 = v3;
  v7 = *(v3 + 32);
  if (v7 != 2)
  {
    v8 = *(v3 + 48);
    v9 = *(v3 + 40);
    v10 = result[3];
    v11 = result[4];
    __swift_project_boxed_opaque_existential_1(result, v10);
    sub_1CF9E7948();
    0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
    v82 = 0x3A7465736572202BLL;
    v83 = 0xE900000000000020;
    v19 = sub_1CF953A9C(v9, v8 & 1);
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x6579616C6564202CLL, 0xEB00000000203A64);
    if (v7)
    {
      v29 = 1702195828;
    }

    else
    {
      v29 = 0x65736C6166;
    }

    if (v7)
    {
      v30 = 0xE400000000000000;
    }

    else
    {
      v30 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v29, v30);
    v30, v31, v32, v33, v34, v35, v36, v37;
    sub_1CF4FB2BC(v82, v83, v10, v11);
    v83, v38, v39, v40, v41, v42, v43, v44;
  }

  v45 = *(v3 + 64);
  if (*(v3 + 64))
  {
    v46 = 0;
  }

  else
  {
    v46 = *(v3 + 65) == 0;
  }

  if (!v46)
  {
    v82 = 0;
    v83 = 0xE000000000000000;
    if (v45)
    {
      MEMORY[0x1D3868CC0](0x6B636F6C626E75, 0xE700000000000000);
      if (v45 == 2)
      {
        MEMORY[0x1D3868CC0](0x6472616373696428, 0xEB00000000296465);
      }
    }

    v47 = *(v3 + 65);
    if (*(v3 + 65))
    {
      if ((v83 & 0xF00000000000000) != 0)
      {
        MEMORY[0x1D3868CC0](44, 0xE100000000000000);
      }

      MEMORY[0x1D3868CC0](0x6E6163736572, 0xE600000000000000);
      if (v47 == 2)
      {
        MEMORY[0x1D3868CC0](0x6472616373696428, 0xEB00000000296465);
      }
    }

    v48 = result[3];
    v49 = result[4];
    __swift_project_boxed_opaque_existential_1(result, v48);
    v80 = 0x3A656C6469202BLL;
    v81 = 0xE700000000000000;
    MEMORY[0x1D3868CC0](v82, v83);
    v83, v50, v51, v52, v53, v54, v55, v56;
    sub_1CF4FB2BC(0x3A656C6469202BLL, 0xE700000000000000, v48, v49);
    0xE700000000000000, v57, v58, v59, v60, v61, v62, v63;
  }

  if (*(v3 + 66))
  {
    v64 = result[3];
    v65 = result[4];
    __swift_project_boxed_opaque_existential_1(result, v64);
    sub_1CF4FB2BC(0x6C616E676973202BLL, 0xEA00000000006465, v64, v65);
  }

  v66 = MEMORY[0x1E69E7CA8];
  if (*(*(v5 + 16) + 16))
  {
    v67 = result[3];
    v68 = result[4];
    __swift_project_boxed_opaque_existential_1(result, v67);
    sub_1CF4FB2BC(0x65676E616863202BLL, 0xEA00000000003A73, v67, v68);
    v69 = result[3];
    v70 = result[4];
    v71 = __swift_project_boxed_opaque_existential_1(result, v69);
    MEMORY[0x1EEE9AC00](v71);
    v78 = v5;
    sub_1CF4FB38C(8224, 0xE200000000000000, a2, v77, v69, v66 + 8, v70);
  }

  if (*(*(v5 + 24) + 16))
  {
    v72 = result[3];
    v73 = result[4];
    __swift_project_boxed_opaque_existential_1(result, v72);
    sub_1CF4FB2BC(0x697469736F70202BLL, 0xEC0000003A736E6FLL, v72, v73);
    v74 = result[3];
    v75 = result[4];
    v76 = __swift_project_boxed_opaque_existential_1(result, v74);
    MEMORY[0x1EEE9AC00](v76);
    v78 = v5;
    sub_1CF4FB38C(8224, 0xE200000000000000, v79, v77, v74, v66 + 8, v75);
  }
}

double sub_1CF3DF3D4(void *a1, uint64_t a2)
{
  v3 = *(*(a2 + 40) + 16);
  (*(*v3 + 96))(&v7);
  v4 = v7;

  sub_1CF38A594(a1, v4);

  (*(*v3 + 104))(&v7);
  v5 = v7;
  sub_1CF38A594(a1, v7);

  return result;
}

uint64_t sub_1CF3DF49C(uint64_t result, void *a2)
{
  v3 = result;
  if (*(*(result + 16) + 16))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(result + 32) == 2;
  }

  v6 = v4 && *(result + 65) == 0 && *(result + 64) == 0;
  if (!v6 || (*(result + 66) & 1) != 0 || *(*(result + 80) + 16) || *(*(result + 8) + 16))
  {
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    sub_1CF4FB2BC(0x73746E657665202BLL, 0xEC0000003A706620, v7, v8);
    v9 = a2[3];
    v10 = a2[4];
    v11 = __swift_project_boxed_opaque_existential_1(a2, v9);
    MEMORY[0x1EEE9AC00](v11);
    v12[2] = v3;
    return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483D14, v12, v9, MEMORY[0x1E69E7CA8] + 8, v10);
  }

  return result;
}

uint64_t sub_1CF3DF5DC(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a1[3];
  v30 = a1[2];
  v31 = v16;
  v17 = a1[5];
  v32 = a1[4];
  v33 = v17;
  v18 = a1[1];
  v28 = *a1;
  v29 = v18;
  v19 = type metadata accessor for FileTreeChangeAggregator(0, a4, a7, a4);
  result = sub_1CF5A08AC(v19);
  if ((result & 1) == 0)
  {
    v27 = a8;
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    sub_1CF4FB2BC(0x73746E657665202BLL, 0xEC0000003A706620, v21, v22);
    v23 = a2[3];
    v24 = a2[4];
    v25 = __swift_project_boxed_opaque_existential_1(a2, v23);
    MEMORY[0x1EEE9AC00](v25);
    v26[2] = a3;
    v26[3] = a4;
    v26[4] = a5;
    v26[5] = a6;
    v26[6] = a7;
    v26[7] = v27;
    v26[8] = a1;
    return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF485344, v26, v23, MEMORY[0x1E69E7CA8] + 8, v24);
  }

  return result;
}

uint64_t sub_1CF3DF750(void *a1, _OWORD *a2)
{
  v3 = a2[3];
  v8[2] = a2[2];
  v8[3] = v3;
  v4 = a2[5];
  v8[4] = a2[4];
  v8[5] = v4;
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  sub_1CEFCCBDC(v8, &v7, &qword_1EC4C0668, &unk_1CFA05A70);
  sub_1CF3DEFA8(a1, sub_1CF483D30, sub_1CF485904);
  return sub_1CEFCCC44(v8, &qword_1EC4C0668, &unk_1CFA05A70);
}

uint64_t sub_1CF3DF810(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2[3];
  v15[2] = a2[2];
  v15[3] = v8;
  v9 = a2[5];
  v15[4] = a2[4];
  v15[5] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = type metadata accessor for FileTreeChangeAggregator(0, a4, a7, a4);
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v14, v15, v11);
  sub_1CF5A09CC(a1, v11);
  return (*(v12 + 8))(v15, v11);
}

double sub_1CF3DF8EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), const char *a5)
{
  sub_1CF4818C0();

  sub_1CF21838C(a3, a1, a4, a5);

  return result;
}

void sub_1CF3DF95C(void *a1, uint64_t a2, void *a3, int a4, int a5)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1CF3DCD30(v11, a3, a4, a5, sub_1CF483A2C, a2, v9, v10);
}

void sub_1CF3DF9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 64);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CEFFD05C;
  *(v7 + 24) = v6;
  v9[4] = sub_1CF1C0B54;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CEFFD02C;
  v9[3] = &block_descriptor_1357;
  v8 = _Block_copy(v9);

  dispatch_async_and_wait(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

void sub_1CF3DFB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 64);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF485970;
  *(v7 + 24) = v6;
  v9[4] = sub_1CF1C0B54;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CEFFD02C;
  v9[3] = &block_descriptor_1482_0;
  v8 = _Block_copy(v9);

  dispatch_async_and_wait(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

void sub_1CF3DFC88(void *a1, uint64_t a2, void *a3, int a4, int a5)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1CF3DCD30(v10, a3, a4, a5, sub_1CF3DFD14, 0, v8, v9);
}

void sub_1CF3DFD3C(unint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a2;
  v442 = a2;
  v443 = a3;
  if (a1 <= 0x2F0E3B77C2)
  {
    sub_1CF7D5920(sub_1CF3E3210, 0, a2);
    if (v5)
    {
      return;
    }

    goto LABEL_5;
  }

  if (a1 <= 0x2F145EF754)
  {
LABEL_5:
    v9 = v5;
    (*(**(*(v4 + 32) + 16) + 96))(&v440);
    v10 = sub_1CF93DAB0();
    v12 = v11;
    v13 = v440;
    v14 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C8, &qword_1CF9FAD50);
    v15 = swift_allocObject();
    *(v15 + 152) = v14;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 1;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0;
    *(v15 + 96) = xmmword_1CF9FEC30;
    *(v15 + 112) = 0;
    *(v15 + 120) = v10;
    *(v15 + 128) = v12;
    *(v15 + 136) = 0;
    *(v15 + 144) = v13;
    v16 = sub_1CF4D3BC0();
    sub_1CF902E70(v15, v16, v8, v7);
    if (v5)
    {
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  if (a1 < 0x2F145F20ADLL)
  {
    v9 = v5;
LABEL_9:
    (*(**(*(v6 + 32) + 16) + 96))(&v440, a1);
    v17 = sub_1CF93DAB0();
    v19 = v18;
    v20 = v440;
    v21 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0060, &qword_1CF9FAD48);
    v22 = swift_allocObject();
    *(v22 + 152) = v21;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 1;
    *(v22 + 56) = 0u;
    *(v22 + 72) = 0u;
    *(v22 + 88) = 0;
    *(v22 + 96) = xmmword_1CF9FEC30;
    *(v22 + 112) = 0;
    *(v22 + 120) = v17;
    *(v22 + 128) = v19;
    *(v22 + 136) = 0;
    *(v22 + 144) = v20;
    v23 = sub_1CF4D3BC0();
    sub_1CF902E70(v22, v23, v8, v7);
    if (v9)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  if (a1 < 0x2F145F2311)
  {
    v9 = v5;
LABEL_13:
    (*(**(*(v6 + 32) + 16) + 96))(&v440, a1);
    v24 = sub_1CF93DAB0();
    v26 = v25;
    v27 = v440;
    v28 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
    v29 = swift_allocObject();
    *(v29 + 152) = v28;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 1;
    *(v29 + 56) = 0u;
    *(v29 + 72) = 0u;
    *(v29 + 88) = 0;
    *(v29 + 96) = xmmword_1CF9FEC30;
    *(v29 + 112) = 0;
    *(v29 + 120) = v24;
    *(v29 + 128) = v26;
    *(v29 + 136) = 0;
    *(v29 + 144) = v27;
    v30 = sub_1CF4D3BC0();
    sub_1CF902E70(v29, v30, v8, v7);
    if (v9)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (a1 <= 0x2F145F4708)
  {
    v9 = v5;
LABEL_17:
    v31 = *(v6 + 32);
    (*(**(v31 + 16) + 96))(&v440, a1);
    v32 = sub_1CF93DAB0();
    v34 = v33;
    v444 = v6;
    v35 = v440;
    v36 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0070, &qword_1CF9FAD38);
    v37 = swift_allocObject();
    *(v37 + 152) = v36;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 0u;
    *(v37 + 48) = 1;
    *(v37 + 56) = 0u;
    *(v37 + 72) = 0u;
    *(v37 + 88) = 0;
    v439 = xmmword_1CF9FEC30;
    *(v37 + 96) = xmmword_1CF9FEC30;
    *(v37 + 112) = 0;
    *(v37 + 120) = v32;
    *(v37 + 128) = v34;
    *(v37 + 136) = 0;
    *(v37 + 144) = v35;
    v38 = sub_1CF4D3BC0();
    sub_1CF902E70(v37, v38, v8, v7);
    if (!v9)
    {

      (*(**(v31 + 16) + 96))(&v440, v39);
      v40 = sub_1CF93DAB0();
      v42 = v41;
      v43 = v440;
      v44 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9B8, &qword_1CF9FAD30);
      v45 = swift_allocObject();
      *(v45 + 152) = v44;
      *(v45 + 16) = 0u;
      *(v45 + 32) = 0u;
      *(v45 + 48) = 1;
      *(v45 + 56) = 0u;
      *(v45 + 72) = 0u;
      *(v45 + 88) = 0;
      *(v45 + 96) = v439;
      *(v45 + 112) = 0;
      *(v45 + 120) = v40;
      *(v45 + 128) = v42;
      *(v45 + 136) = 0;
      *(v45 + 144) = v43;
      v6 = v444;
      v46 = sub_1CF4D3BC0();
      sub_1CF902E70(v45, v46, v8, v7);
      v47 = v8;
      v48 = v7;

LABEL_21:
      (*(**(*(v6 + 32) + 16) + 96))(&v440, a1);
      v49 = sub_1CF93DAB0();
      v51 = v50;
      v52 = v6;
      v53 = v440;
      v54 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9A8, &qword_1CF9FAD10);
      v55 = swift_allocObject();
      *(v55 + 152) = v54;
      *(v55 + 16) = 0u;
      *(v55 + 32) = 0u;
      *(v55 + 48) = 1;
      *(v55 + 56) = 0u;
      *(v55 + 72) = 0u;
      *(v55 + 88) = 0;
      *(v55 + 96) = xmmword_1CF9FEC30;
      *(v55 + 112) = 0;
      *(v55 + 120) = v49;
      *(v55 + 128) = v51;
      *(v55 + 136) = 0;
      *(v55 + 144) = v53;
      v6 = v52;
      v56 = sub_1CF4D3BC0();
      sub_1CF902E70(v55, v56, v47, v48);
      if (v9)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

LABEL_22:

    return;
  }

  if (a1 <= 0x2F147BCFB8)
  {
    v47 = a2;
    v48 = a3;
    v9 = v5;
    goto LABEL_21;
  }

  if (a1 <= 0x2F1489DA32)
  {
    v47 = a2;
    v48 = a3;
    v9 = v5;
LABEL_27:
    (*(**(*(v6 + 32) + 16) + 96))(&v440, a1, a4);
    v57 = sub_1CF93DAB0();
    v59 = v58;
    v60 = v6;
    v61 = v440;
    v62 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0080, &qword_1CF9FAD28);
    v63 = swift_allocObject();
    *(v63 + 152) = v62;
    *(v63 + 16) = 0u;
    *(v63 + 32) = 0u;
    *(v63 + 48) = 1;
    *(v63 + 56) = 0u;
    *(v63 + 72) = 0u;
    *(v63 + 88) = 0;
    *(v63 + 96) = xmmword_1CF9FEC30;
    *(v63 + 112) = 0;
    *(v63 + 120) = v57;
    *(v63 + 128) = v59;
    *(v63 + 136) = 0;
    *(v63 + 144) = v61;
    v6 = v60;
    v64 = sub_1CF4D3BC0();
    v7 = v48;
    v5 = v9;
    sub_1CF902E70(v63, v64, v47, v48);
    if (v9)
    {

      return;
    }

    v8 = v47;
LABEL_34:
    sub_1CF3E32A8(v6, v8, v7);
    if (v5)
    {
      return;
    }

    goto LABEL_35;
  }

  if (a1 <= 0x2F148D35F8)
  {
    goto LABEL_34;
  }

  if (a1 <= 0x2F14994317)
  {
LABEL_35:
    v65 = v8;
    v66 = v7;
    v67 = v5;
    (*(**(*(v6 + 32) + 16) + 96))(&v440);
    v68 = sub_1CF93DAB0();
    v70 = v69;
    v71 = v6;
    v72 = v440;
    v73 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9B0, &qword_1CF9FAD20);
    v74 = swift_allocObject();
    *(v74 + 152) = v73;
    *(v74 + 16) = 0u;
    *(v74 + 32) = 0u;
    *(v74 + 48) = 1;
    *(v74 + 56) = 0u;
    *(v74 + 72) = 0u;
    *(v74 + 88) = 0;
    *(v74 + 96) = xmmword_1CF9FEC30;
    *(v74 + 112) = 0;
    *(v74 + 120) = v68;
    *(v74 + 128) = v70;
    *(v74 + 136) = 0;
    *(v74 + 144) = v72;
    v6 = v71;
    v75 = sub_1CF4D3BC0();
    sub_1CF902E70(v74, v75, v65, v66);
    if (v5)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

  if (a1 <= 0x2F14A923B6)
  {
    v65 = a2;
    v66 = a3;
    v67 = v5;
LABEL_37:
    (*(**(*(v6 + 32) + 16) + 96))(&v440, a1, a4);
    v76 = sub_1CF93DAB0();
    v78 = v77;
    v79 = v6;
    v80 = v440;
    v81 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0090, &qword_1CF9FAD18);
    v82 = swift_allocObject();
    *(v82 + 152) = v81;
    *(v82 + 16) = 0u;
    *(v82 + 32) = 0u;
    *(v82 + 48) = 1;
    *(v82 + 56) = 0u;
    *(v82 + 72) = 0u;
    *(v82 + 88) = 0;
    *(v82 + 96) = xmmword_1CF9FEC30;
    *(v82 + 112) = 0;
    *(v82 + 120) = v76;
    *(v82 + 128) = v78;
    *(v82 + 136) = 0;
    *(v82 + 144) = v80;
    v6 = v79;
    v83 = sub_1CF4D3BC0();
    sub_1CF902E70(v82, v83, v65, v66);
    if (v67)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

  if (a1 <= 0x2F14B83BBDLL)
  {
    v65 = a2;
    v66 = a3;
    v67 = v5;
LABEL_41:
    sub_1CF033A74();
    (*(**(*(v6 + 40) + 16) + 96))(&v440);
    v84 = v6;
    v85 = v440;
    v86 = sub_1CF93DAB0();
    v88 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0350, &qword_1CF9FB320);
    v89 = swift_allocObject();
    *(v89 + 16) = 0u;
    *(v89 + 32) = 0u;
    *(v89 + 48) = 1;
    *(v89 + 56) = 0u;
    *(v89 + 72) = 0u;
    *(v89 + 88) = 0;
    *(v89 + 96) = xmmword_1CF9FEC30;
    *(v89 + 112) = 0;
    *(v89 + 120) = v86;
    *(v89 + 128) = v88;
    *(v89 + 136) = 0;
    *(v89 + 144) = v85;
    v90 = sub_1CF4D3BC0();
    sub_1CF902E70(v89, v90, v65, v66);
    if (v67)
    {

      goto LABEL_22;
    }

    v6 = v84;
    goto LABEL_47;
  }

  if (a1 <= 0x2F14BA3A3FLL)
  {
    v65 = a2;
    v66 = a3;
    v67 = v5;
LABEL_47:
    (*(**(*(v6 + 32) + 16) + 96))(&v440, a1);
    v91 = sub_1CF93DAB0();
    v93 = v92;
    v94 = v6;
    v95 = v440;
    v96 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
    v97 = swift_allocObject();
    *(v97 + 152) = v96;
    *(v97 + 16) = 0u;
    *(v97 + 32) = 0u;
    *(v97 + 48) = 1;
    *(v97 + 56) = 0u;
    *(v97 + 72) = 0u;
    *(v97 + 88) = 0;
    *(v97 + 96) = xmmword_1CF9FEC30;
    *(v97 + 112) = 0;
    *(v97 + 120) = v91;
    *(v97 + 128) = v93;
    *(v97 + 136) = 0;
    *(v97 + 144) = v95;
    v6 = v94;
    v98 = sub_1CF4D3BC0();
    sub_1CF902E70(v97, v98, v65, v66);
    if (v67)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

  if (a1 <= 0x2F1A17D070)
  {
    v65 = a2;
    v66 = a3;
    v67 = v5;
LABEL_51:
    (*(**(*(v6 + 32) + 16) + 96))(&v440, a1);
    v99 = sub_1CF93DAB0();
    v101 = v100;
    v7 = v6;
    v102 = v440;
    v103 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00A0, &qword_1CF9FAD08);
    v104 = swift_allocObject();
    *(v104 + 152) = v103;
    *(v104 + 16) = 0u;
    *(v104 + 32) = 0u;
    *(v104 + 48) = 1;
    *(v104 + 56) = 0u;
    *(v104 + 72) = 0u;
    *(v104 + 88) = 0;
    *(v104 + 96) = xmmword_1CF9FEC30;
    *(v104 + 112) = 0;
    *(v104 + 120) = v99;
    *(v104 + 128) = v101;
    *(v104 + 136) = 0;
    *(v104 + 144) = v102;
    v6 = v7;
    v105 = sub_1CF4D3BC0();
    LODWORD(v7) = v66;
    sub_1CF902E70(v104, v105, v65, v66);
    *&v439 = v67;
    if (v67)
    {
LABEL_60:

      return;
    }

    v8 = v65;
    goto LABEL_54;
  }

  *&v439 = v5;
  if (a1 <= 0x2F1A256322)
  {
LABEL_54:
    sub_1CF033A74();
    v444 = v6;
    (*(**(*(v6 + 40) + 16) + 96))(&v440);
    v106 = v440;
    v107 = sub_1CF93DAB0();
    v109 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0350, &qword_1CF9FB320);
    v110 = swift_allocObject();
    *(v110 + 16) = 0u;
    *(v110 + 32) = 0u;
    *(v110 + 48) = 1;
    *(v110 + 56) = 0u;
    *(v110 + 72) = 0u;
    *(v110 + 88) = 0;
    *(v110 + 96) = xmmword_1CF9FEC30;
    *(v110 + 112) = 0;
    *(v110 + 120) = v107;
    *(v110 + 128) = v109;
    *(v110 + 136) = 0;
    *(v110 + 144) = v106;
    v111 = sub_1CF4D3BC0();
    sub_1CF902E70(v110, v111, v8, v7);
    if (v439)
    {
LABEL_55:

      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v437 = a2;
  v438 = a3;
  v444 = v4;
  if (a1 <= 0x2F1A267888)
  {
    LODWORD(v7) = v438;
    v8 = v437;
LABEL_59:
    (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
    v112 = sub_1CF93DAB0();
    v114 = v113;
    v115 = v440;
    v116 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9A0, &qword_1CF9FAD00);
    v117 = swift_allocObject();
    *(v117 + 152) = v116;
    *(v117 + 16) = 0u;
    *(v117 + 32) = 0u;
    *(v117 + 48) = 1;
    *(v117 + 56) = 0u;
    *(v117 + 72) = 0u;
    *(v117 + 88) = 0;
    *(v117 + 96) = xmmword_1CF9FEC30;
    *(v117 + 112) = 0;
    *(v117 + 120) = v112;
    *(v117 + 128) = v114;
    *(v117 + 136) = 0;
    *(v117 + 144) = v115;
    v118 = sub_1CF4D3BC0();
    v437 = v8;
    v438 = v7;
    sub_1CF902E70(v117, v118, v8, v7);
    if (v439)
    {
      goto LABEL_60;
    }

    goto LABEL_64;
  }

  if (a1 <= 0x2F1A33BC33)
  {
LABEL_64:
    v119 = *(v444 + 32);
    (*(**(v119 + 16) + 96))(&v440, a1);
    v120 = sub_1CF93DAB0();
    v122 = v121;
    v123 = v440;
    v124 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
    v125 = swift_allocObject();
    *(v125 + 152) = v124;
    *(v125 + 16) = 0u;
    *(v125 + 32) = 0u;
    *(v125 + 48) = 1;
    *(v125 + 56) = 0u;
    *(v125 + 72) = 0u;
    *(v125 + 88) = 0;
    *(v125 + 120) = v120;
    *(v125 + 128) = v122;
    *(v125 + 136) = 0x8000;
    *(v125 + 144) = v123;
    v436 = xmmword_1CFA04E30;
    *(v125 + 96) = xmmword_1CFA04E30;
    *(v125 + 112) = 0;
    v126 = sub_1CF4D3BC0();
    sub_1CF902E70(v125, v126, v437, v438);
    if (v439)
    {
      goto LABEL_22;
    }

    (*(**(v119 + 16) + 104))(&v440, v127);
    v128 = sub_1CF93DAB0();
    v130 = v129;
    v131 = v440;
    v132 = v441;
    v133 = swift_allocObject();
    *(v133 + 152) = v132;
    *(v133 + 16) = 0u;
    *(v133 + 32) = 0u;
    *(v133 + 48) = 1;
    *(v133 + 56) = 0u;
    *(v133 + 72) = 0u;
    *(v133 + 88) = 0;
    *(v133 + 120) = v128;
    *(v133 + 128) = v130;
    *(v133 + 136) = 0x8000;
    *(v133 + 144) = v131;
    *(v133 + 96) = v436;
    *(v133 + 112) = 0;
    v134 = sub_1CF4D3BC0();
    sub_1CF902E70(v133, v134, v437, v438);
    *&v439 = 0;

    goto LABEL_67;
  }

  if (a1 <= 0x2F1A371793)
  {
LABEL_67:
    (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
    v135 = sub_1CF93DAB0();
    v137 = v136;
    v138 = v440;
    v139 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00A0, &qword_1CF9FAD08);
    v140 = swift_allocObject();
    *(v140 + 152) = v139;
    *(v140 + 16) = 0u;
    *(v140 + 32) = 0u;
    *(v140 + 48) = 1;
    *(v140 + 56) = 0u;
    *(v140 + 72) = 0u;
    *(v140 + 88) = 0;
    *(v140 + 96) = xmmword_1CF9FEC30;
    *(v140 + 112) = 0;
    *(v140 + 120) = v135;
    *(v140 + 128) = v137;
    *(v140 + 136) = 0;
    *(v140 + 144) = v138;
    v141 = sub_1CF4D3BC0();
    sub_1CF902E70(v140, v141, v437, v438);
    if (v439)
    {
      goto LABEL_60;
    }

    goto LABEL_70;
  }

  if (a1 <= 0x2F1A37422DLL)
  {
LABEL_70:
    (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
    v142 = sub_1CF93DAB0();
    v144 = v143;
    v145 = v440;
    v146 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00B0, &qword_1CF9FACF8);
    v147 = swift_allocObject();
    *(v147 + 152) = v146;
    *(v147 + 16) = 0u;
    *(v147 + 32) = 0u;
    *(v147 + 48) = 1;
    *(v147 + 56) = 0u;
    *(v147 + 72) = 0u;
    *(v147 + 88) = 0;
    *(v147 + 96) = xmmword_1CF9FEC30;
    *(v147 + 112) = 0;
    *(v147 + 120) = v142;
    *(v147 + 128) = v144;
    *(v147 + 136) = 0;
    *(v147 + 144) = v145;
    v148 = sub_1CF4D3BC0();
    sub_1CF902E70(v147, v148, v437, v438);
    if (v439)
    {
      goto LABEL_60;
    }

    goto LABEL_73;
  }

  if (a1 <= 0x2F1A378FC6)
  {
LABEL_73:
    v149 = *(v444 + 32);
    (*(**(v149 + 16) + 96))(&v440, a1);
    v150 = sub_1CF93DAB0();
    v152 = v151;
    v153 = v440;
    v154 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD998, &qword_1CF9FACF0);
    v155 = swift_allocObject();
    *(v155 + 152) = v154;
    *(v155 + 16) = 0u;
    *(v155 + 32) = 0u;
    *(v155 + 48) = 1;
    *(v155 + 56) = 0u;
    *(v155 + 72) = 0u;
    *(v155 + 88) = 0;
    v436 = xmmword_1CF9FEC30;
    *(v155 + 96) = xmmword_1CF9FEC30;
    *(v155 + 112) = 0;
    *(v155 + 120) = v150;
    *(v155 + 128) = v152;
    *(v155 + 136) = 0;
    *(v155 + 144) = v153;
    v156 = sub_1CF4D3BC0();
    sub_1CF902E70(v155, v156, v437, v438);
    if (v439)
    {
      goto LABEL_22;
    }

    (*(**(v149 + 16) + 96))(&v440, v157);
    v158 = sub_1CF93DAB0();
    v160 = v159;
    v161 = v440;
    v162 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00C0, &qword_1CF9FACE8);
    v163 = swift_allocObject();
    *(v163 + 152) = v162;
    *(v163 + 16) = 0u;
    *(v163 + 32) = 0u;
    *(v163 + 48) = 1;
    *(v163 + 56) = 0u;
    *(v163 + 72) = 0u;
    *(v163 + 88) = 0;
    *(v163 + 96) = v436;
    *(v163 + 112) = 0;
    *(v163 + 120) = v158;
    *(v163 + 128) = v160;
    *(v163 + 136) = 0;
    *(v163 + 144) = v161;
    v164 = sub_1CF4D3BC0();
    sub_1CF902E70(v163, v164, v437, v438);

    v165 = v444;
    sub_1CF033A74();
    (*(**(*(v165 + 40) + 16) + 96))(&v440);
    v166 = v440;
    v167 = sub_1CF93DAB0();
    v169 = v168;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEA0, &qword_1CF9FB2E8);
    v170 = swift_allocObject();
    *(v170 + 16) = 0u;
    *(v170 + 32) = 0u;
    *(v170 + 48) = 1;
    *(v170 + 56) = 0u;
    *(v170 + 72) = 0u;
    *(v170 + 88) = 0;
    *(v170 + 96) = v436;
    *(v170 + 112) = 0;
    *(v170 + 120) = v167;
    *(v170 + 128) = v169;
    *(v170 + 136) = 0;
    *(v170 + 144) = v166;
    v171 = sub_1CF4D3BC0();
    sub_1CF902E70(v170, v171, v437, v438);

    (*(**(v149 + 16) + 96))(&v440, v172);
    v173 = sub_1CF93DAB0();
    v175 = v174;
    v176 = v440;
    LOBYTE(v169) = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD990, &qword_1CF9FACE0);
    v177 = swift_allocObject();
    *(v177 + 152) = v169;
    *(v177 + 16) = 0u;
    *(v177 + 32) = 0u;
    *(v177 + 48) = 1;
    *(v177 + 56) = 0u;
    *(v177 + 72) = 0u;
    *(v177 + 88) = 0;
    *(v177 + 96) = v436;
    *(v177 + 112) = 0;
    *(v177 + 120) = v173;
    *(v177 + 128) = v175;
    *(v177 + 136) = 0;
    *(v177 + 144) = v176;
    v178 = sub_1CF4D3BC0();
    sub_1CF902E70(v177, v178, v437, v438);
    *&v439 = 0;

    goto LABEL_76;
  }

  if (a1 <= 0x2F1A5500F8)
  {
LABEL_76:
    (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
    v179 = sub_1CF93DAB0();
    v181 = v180;
    v182 = v440;
    v183 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD988, &qword_1CF9FACD0);
    v184 = swift_allocObject();
    *(v184 + 152) = v183;
    *(v184 + 16) = 0u;
    *(v184 + 32) = 0u;
    *(v184 + 48) = 1;
    *(v184 + 56) = 0u;
    *(v184 + 72) = 0u;
    *(v184 + 88) = 0;
    *(v184 + 96) = xmmword_1CF9FEC30;
    *(v184 + 112) = 0;
    *(v184 + 120) = v179;
    *(v184 + 128) = v181;
    *(v184 + 136) = 0;
    *(v184 + 144) = v182;
    v185 = sub_1CF4D3BC0();
    sub_1CF902E70(v184, v185, v437, v438);
    if (v439)
    {
      goto LABEL_60;
    }

    goto LABEL_79;
  }

  if (a1 <= 0x2F1A552752)
  {
LABEL_79:
    (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
    v186 = sub_1CF93DAB0();
    v188 = v187;
    v189 = v440;
    v190 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
    v191 = swift_allocObject();
    *(v191 + 152) = v190;
    *(v191 + 16) = 0u;
    *(v191 + 32) = 0u;
    *(v191 + 48) = 1;
    *(v191 + 56) = 0u;
    *(v191 + 72) = 0u;
    *(v191 + 88) = 0;
    *(v191 + 96) = xmmword_1CF9FEC30;
    *(v191 + 112) = 0;
    *(v191 + 120) = v186;
    *(v191 + 128) = v188;
    *(v191 + 136) = 0;
    *(v191 + 144) = v189;
    v192 = sub_1CF4D3BC0();
    sub_1CF902E70(v191, v192, v437, v438);
    if (v439)
    {
      goto LABEL_60;
    }

    goto LABEL_82;
  }

  if (a1 <= 0x2F1A630CBELL)
  {
LABEL_82:
    v193 = (*(**(v444 + 16) + 448))(&v442, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (v439)
    {
      return;
    }

    if (v193)
    {
      v194 = *(v444 + 32);
      (*(**(v194 + 16) + 96))(&v440);
      v195 = sub_1CF93DAB0();
      v197 = v196;
      v198 = v440;
      v199 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
      v200 = swift_allocObject();
      *(v200 + 152) = v199;
      *(v200 + 16) = 0u;
      *(v200 + 32) = 0u;
      *(v200 + 48) = 1;
      *(v200 + 56) = 0u;
      *(v200 + 72) = 0u;
      *(v200 + 88) = 0;
      *(v200 + 120) = v195;
      *(v200 + 128) = v197;
      *(v200 + 136) = 0x8000;
      *(v200 + 144) = v198;
      v436 = xmmword_1CFA04E30;
      *(v200 + 96) = xmmword_1CFA04E30;
      *(v200 + 112) = 0;
      v201 = sub_1CF4D3BC0();
      sub_1CF902E70(v200, v201, v437, v438);
      if (v439)
      {
        goto LABEL_22;
      }

      (*(**(v194 + 16) + 104))(&v440, v202);
      v203 = sub_1CF93DAB0();
      v205 = v204;
      v206 = v440;
      v207 = v441;
      v208 = swift_allocObject();
      *(v208 + 152) = v207;
      *(v208 + 16) = 0u;
      *(v208 + 32) = 0u;
      *(v208 + 48) = 1;
      *(v208 + 56) = 0u;
      *(v208 + 72) = 0u;
      *(v208 + 88) = 0;
      *(v208 + 120) = v203;
      *(v208 + 128) = v205;
      *(v208 + 136) = 0x8000;
      *(v208 + 144) = v206;
      *(v208 + 96) = v436;
      *(v208 + 112) = 0;
      v209 = sub_1CF4D3BC0();
      sub_1CF902E70(v208, v209, v437, v438);
      *&v439 = 0;
    }

    goto LABEL_87;
  }

  if (a1 <= 0x2F1A705238)
  {
LABEL_87:
    (*(**(*(v444 + 32) + 16) + 96))(&v440);
    v210 = sub_1CF93DAB0();
    v212 = v211;
    v213 = v440;
    v214 = v441;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
    v215 = swift_allocObject();
    *(v215 + 152) = v214;
    *(v215 + 16) = 0u;
    *(v215 + 32) = 0u;
    *(v215 + 48) = 1;
    *(v215 + 56) = 0u;
    *(v215 + 72) = 0u;
    *(v215 + 88) = 0;
    *(v215 + 96) = xmmword_1CF9FEC30;
    *(v215 + 112) = 0;
    *(v215 + 120) = v210;
    *(v215 + 128) = v212;
    *(v215 + 136) = 0;
    *(v215 + 144) = v213;
    v216 = sub_1CF4D3BC0();
    sub_1CF902E70(v215, v216, v437, v438);
    if (v439)
    {
      goto LABEL_60;
    }

    goto LABEL_90;
  }

  if (a1 <= 0x2F1A709DF7)
  {
LABEL_90:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
    v217 = swift_dynamicCastClassUnconditional();

    sub_1CF7D5920(sub_1CF485AAC, v217, v437);
    if (v439)
    {
      goto LABEL_22;
    }

    sub_1CF7D5920(sub_1CF485AB0, v217, v437);
    *&v439 = 0;

    goto LABEL_122;
  }

  if (a1 > 0x2F1A70ED7CLL)
  {
    if (a1 <= 0x2F1A73ACDFLL)
    {
      goto LABEL_125;
    }

    if (a1 <= 0x2F1A838B1ALL)
    {
LABEL_128:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v232 = sub_1CF93DAB0();
      v234 = v233;
      v235 = v440;
      v236 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00F0, &qword_1CF9FACB8);
      v237 = swift_allocObject();
      *(v237 + 152) = v236;
      *(v237 + 16) = 0u;
      *(v237 + 32) = 0u;
      *(v237 + 48) = 1;
      *(v237 + 56) = 0u;
      *(v237 + 72) = 0u;
      *(v237 + 88) = 0;
      *(v237 + 96) = xmmword_1CF9FEC30;
      *(v237 + 112) = 0;
      *(v237 + 120) = v232;
      *(v237 + 128) = v234;
      *(v237 + 136) = 0;
      *(v237 + 144) = v235;
      v238 = sub_1CF4D3BC0();
      v239 = v439;
      sub_1CF902E70(v237, v238, v437, v438);
      *&v439 = v239;
      if (v239)
      {
        goto LABEL_60;
      }

      goto LABEL_130;
    }

    if (a1 <= 0x2F1A8ED457)
    {
LABEL_130:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
      v240 = swift_dynamicCastClassUnconditional();

      v241 = v439;
      sub_1CF7D5920(sub_1CF482D3C, v240, v437);
      if (v241)
      {
        goto LABEL_22;
      }

      sub_1CF7D5920(sub_1CF482D58, v240, v437);
      *&v439 = 0;

      goto LABEL_132;
    }

    if (a1 <= 0x2F1A91953DLL)
    {
LABEL_132:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v242 = sub_1CF93DAB0();
      v244 = v243;
      v245 = v440;
      v246 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
      v247 = swift_allocObject();
      *(v247 + 152) = v246;
      *(v247 + 16) = 0u;
      *(v247 + 32) = 0u;
      *(v247 + 48) = 1;
      *(v247 + 56) = 0u;
      *(v247 + 72) = 0u;
      *(v247 + 88) = 0;
      *(v247 + 96) = xmmword_1CF9FEC30;
      *(v247 + 112) = 0;
      *(v247 + 120) = v242;
      *(v247 + 128) = v244;
      *(v247 + 136) = 0;
      *(v247 + 144) = v245;
      v248 = sub_1CF4D3BC0();
      v249 = v439;
      sub_1CF902E70(v247, v248, v437, v438);
      *&v439 = v249;
      if (v249)
      {
        goto LABEL_60;
      }

      goto LABEL_134;
    }

    if (a1 <= 0x2F1A91B69FLL)
    {
LABEL_134:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v250 = sub_1CF93DAB0();
      v252 = v251;
      v253 = v440;
      v254 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0100, &qword_1CF9FACA8);
      v255 = swift_allocObject();
      *(v255 + 152) = v254;
      *(v255 + 16) = 0u;
      *(v255 + 32) = 0u;
      *(v255 + 48) = 1;
      *(v255 + 56) = 0u;
      *(v255 + 72) = 0u;
      *(v255 + 88) = 0;
      *(v255 + 96) = xmmword_1CF9FEC30;
      *(v255 + 112) = 0;
      *(v255 + 120) = v250;
      *(v255 + 128) = v252;
      *(v255 + 136) = 0;
      *(v255 + 144) = v253;
      v256 = sub_1CF4D3BC0();
      v257 = v439;
      sub_1CF902E70(v255, v256, v437, v438);
      *&v439 = v257;
      if (v257)
      {
        goto LABEL_60;
      }

      goto LABEL_136;
    }

    if (a1 <= 0x2F1A9204BFLL)
    {
LABEL_136:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v258 = sub_1CF93DAB0();
      v260 = v259;
      v261 = v440;
      v262 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD970, &qword_1CF9FACA0);
      v263 = swift_allocObject();
      *(v263 + 152) = v262;
      *(v263 + 16) = 0u;
      *(v263 + 32) = 0u;
      *(v263 + 48) = 1;
      *(v263 + 56) = 0u;
      *(v263 + 72) = 0u;
      *(v263 + 88) = 0;
      *(v263 + 96) = xmmword_1CF9FEC30;
      *(v263 + 112) = 0;
      *(v263 + 120) = v258;
      *(v263 + 128) = v260;
      *(v263 + 136) = 0;
      *(v263 + 144) = v261;
      v264 = sub_1CF4D3BC0();
      v265 = v439;
      sub_1CF902E70(v263, v264, v437, v438);
      *&v439 = v265;
      if (v265)
      {
        goto LABEL_60;
      }

      goto LABEL_138;
    }

    if (a1 <= 0x2F200DACAFLL)
    {
LABEL_138:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v266 = sub_1CF93DAB0();
      v268 = v267;
      v269 = v440;
      v270 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0100, &qword_1CF9FACA8);
      v271 = swift_allocObject();
      *(v271 + 152) = v270;
      *(v271 + 16) = 0u;
      *(v271 + 32) = 0u;
      *(v271 + 48) = 1;
      *(v271 + 56) = 0u;
      *(v271 + 72) = 0u;
      *(v271 + 88) = 0;
      *(v271 + 96) = xmmword_1CF9FEC30;
      *(v271 + 112) = 0;
      *(v271 + 120) = v266;
      *(v271 + 128) = v268;
      *(v271 + 136) = 0;
      *(v271 + 144) = v269;
      v272 = sub_1CF4D3BC0();
      v273 = v439;
      sub_1CF902E70(v271, v272, v437, v438);
      *&v439 = v273;
      if (v273)
      {
        goto LABEL_60;
      }

      goto LABEL_140;
    }

    if (a1 <= 0x2F2029720FLL)
    {
LABEL_140:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v274 = sub_1CF93DAB0();
      v276 = v275;
      v277 = v440;
      v278 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0110, &qword_1CF9FAC88);
      v279 = swift_allocObject();
      *(v279 + 152) = v278;
      *(v279 + 16) = 0u;
      *(v279 + 32) = 0u;
      *(v279 + 48) = 1;
      *(v279 + 56) = 0u;
      *(v279 + 72) = 0u;
      *(v279 + 88) = 0;
      *(v279 + 96) = xmmword_1CF9FEC30;
      *(v279 + 112) = 0;
      *(v279 + 120) = v274;
      *(v279 + 128) = v276;
      *(v279 + 136) = 0;
      *(v279 + 144) = v277;
      v280 = sub_1CF4D3BC0();
      v281 = v439;
      sub_1CF902E70(v279, v280, v437, v438);
      *&v439 = v281;
      if (v281)
      {
        goto LABEL_60;
      }

      goto LABEL_142;
    }

    if (a1 <= 0x2F202C84DDLL)
    {
LABEL_142:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v282 = sub_1CF93DAB0();
      v284 = v283;
      v285 = v440;
      v286 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0090, &qword_1CF9FAD18);
      v287 = swift_allocObject();
      *(v287 + 152) = v286;
      *(v287 + 16) = 0u;
      *(v287 + 32) = 0u;
      *(v287 + 48) = 1;
      *(v287 + 56) = 0u;
      *(v287 + 72) = 0u;
      *(v287 + 88) = 0;
      *(v287 + 96) = xmmword_1CF9FEC30;
      *(v287 + 112) = 0;
      *(v287 + 120) = v282;
      *(v287 + 128) = v284;
      *(v287 + 136) = 0;
      *(v287 + 144) = v285;
      v288 = sub_1CF4D3BC0();
      v289 = v439;
      sub_1CF902E70(v287, v288, v437, v438);
      *&v439 = v289;
      if (v289)
      {
        goto LABEL_60;
      }

      goto LABEL_144;
    }

    if (a1 <= 0x2F203A6804)
    {
LABEL_144:
      v290 = v444;
      sub_1CF033A74();
      (*(**(*(v290 + 40) + 16) + 96))(&v440);
      v291 = v440;
      v292 = sub_1CF93DAB0();
      v294 = v293;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE68, &qword_1CF9FB278);
      v295 = swift_allocObject();
      *(v295 + 16) = 0u;
      *(v295 + 32) = 0u;
      *(v295 + 48) = 1;
      *(v295 + 56) = 0u;
      *(v295 + 72) = 0u;
      *(v295 + 88) = 0;
      *(v295 + 96) = xmmword_1CF9FEC30;
      *(v295 + 112) = 0;
      *(v295 + 120) = v292;
      *(v295 + 128) = v294;
      *(v295 + 136) = 0;
      *(v295 + 144) = v291;
      v296 = sub_1CF4D3BC0();
      v297 = v439;
      sub_1CF902E70(v295, v296, v437, v438);
      *&v439 = v297;
      if (v297)
      {
        goto LABEL_55;
      }

      goto LABEL_146;
    }

    if (a1 <= 0x2F2075297CLL)
    {
LABEL_146:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v298 = sub_1CF93DAB0();
      v300 = v299;
      v301 = v440;
      v302 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00A0, &qword_1CF9FAD08);
      v303 = swift_allocObject();
      *(v303 + 152) = v302;
      *(v303 + 16) = 0u;
      *(v303 + 32) = 0u;
      *(v303 + 48) = 1;
      *(v303 + 56) = 0u;
      *(v303 + 72) = 0u;
      *(v303 + 88) = 0;
      *(v303 + 96) = xmmword_1CF9FEC30;
      *(v303 + 112) = 0;
      *(v303 + 120) = v298;
      *(v303 + 128) = v300;
      *(v303 + 136) = 0;
      *(v303 + 144) = v301;
      v304 = sub_1CF4D3BC0();
      v305 = v439;
      sub_1CF902E70(v303, v304, v437, v438);
      *&v439 = v305;
      if (v305)
      {
        goto LABEL_60;
      }

      goto LABEL_148;
    }

    if (a1 <= 0x2F2077E55FLL)
    {
LABEL_148:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v306 = sub_1CF93DAB0();
      v308 = v307;
      v309 = v440;
      v310 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0030, &qword_1CF9FAD78);
      v311 = swift_allocObject();
      *(v311 + 152) = v310;
      *(v311 + 16) = 0u;
      *(v311 + 32) = 0u;
      *(v311 + 48) = 1;
      *(v311 + 56) = 0u;
      *(v311 + 72) = 0u;
      *(v311 + 88) = 0;
      *(v311 + 96) = xmmword_1CF9FEC30;
      *(v311 + 112) = 0;
      *(v311 + 120) = v306;
      *(v311 + 128) = v308;
      *(v311 + 136) = 0x4000000;
      *(v311 + 144) = v309;
      v312 = sub_1CF4D3BC0();
      v313 = v439;
      sub_1CF902E70(v311, v312, v437, v438);
      *&v439 = v313;
      if (v313)
      {
        goto LABEL_60;
      }

      goto LABEL_150;
    }

    if (a1 <= 0x2F20972DA2)
    {
LABEL_150:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v314 = sub_1CF93DAB0();
      v316 = v315;
      v317 = v440;
      v318 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0090, &qword_1CF9FAD18);
      v319 = swift_allocObject();
      *(v319 + 152) = v318;
      *(v319 + 16) = 0u;
      *(v319 + 32) = 0u;
      *(v319 + 48) = 1;
      *(v319 + 56) = 0u;
      *(v319 + 72) = 0u;
      *(v319 + 88) = 0;
      *(v319 + 96) = xmmword_1CF9FEC30;
      *(v319 + 112) = 0;
      *(v319 + 120) = v314;
      *(v319 + 128) = v316;
      *(v319 + 136) = 0;
      *(v319 + 144) = v317;
      v320 = sub_1CF4D3BC0();
      v321 = v439;
      sub_1CF902E70(v319, v320, v437, v438);
      *&v439 = v321;
      if (v321)
      {
        goto LABEL_60;
      }

      goto LABEL_152;
    }

    if (a1 <= 0x2F20A3D946)
    {
LABEL_152:
      v322 = v444;
      sub_1CF033A74();
      (*(**(*(v322 + 40) + 16) + 96))(&v440);
      v323 = v440;
      v324 = sub_1CF93DAB0();
      v326 = v325;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03F0, &qword_1CF9FB260);
      v327 = swift_allocObject();
      *(v327 + 16) = 0u;
      *(v327 + 32) = 0u;
      *(v327 + 48) = 1;
      *(v327 + 56) = 0u;
      *(v327 + 72) = 0u;
      *(v327 + 88) = 0;
      *(v327 + 96) = xmmword_1CF9FEC30;
      *(v327 + 112) = 0;
      *(v327 + 120) = v324;
      *(v327 + 128) = v326;
      *(v327 + 136) = 0;
      *(v327 + 144) = v323;
      v328 = sub_1CF4D3BC0();
      v329 = v439;
      sub_1CF902E70(v327, v328, v437, v438);
      *&v439 = v329;
      if (v329)
      {
        goto LABEL_55;
      }

      goto LABEL_154;
    }

    if (a1 <= 0x2F20A4EC0ELL)
    {
LABEL_154:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v330 = sub_1CF93DAB0();
      v332 = v331;
      v333 = v440;
      v334 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD950, &unk_1CFA056B0);
      v335 = swift_allocObject();
      *(v335 + 152) = v334;
      *(v335 + 16) = 0u;
      *(v335 + 32) = 0u;
      *(v335 + 48) = 1;
      *(v335 + 56) = 0u;
      *(v335 + 72) = 0u;
      *(v335 + 88) = 0;
      *(v335 + 96) = xmmword_1CF9FEC30;
      *(v335 + 112) = 0;
      *(v335 + 120) = v330;
      *(v335 + 128) = v332;
      *(v335 + 136) = 0;
      *(v335 + 144) = v333;
      v336 = sub_1CF4D3BC0();
      v337 = v439;
      sub_1CF902E70(v335, v336, v437, v438);
      *&v439 = v337;
      if (v337)
      {
        goto LABEL_60;
      }

      goto LABEL_156;
    }

    if (a1 <= 0x2F20A6235DLL)
    {
LABEL_156:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v338 = sub_1CF93DAB0();
      v340 = v339;
      v341 = v440;
      v342 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0140, &unk_1CF9FAC50);
      v343 = swift_allocObject();
      *(v343 + 152) = v342;
      *(v343 + 16) = 0u;
      *(v343 + 32) = 0u;
      *(v343 + 48) = 1;
      *(v343 + 56) = 0u;
      *(v343 + 72) = 0u;
      *(v343 + 88) = 0;
      *(v343 + 96) = xmmword_1CF9FEC30;
      *(v343 + 112) = 0;
      *(v343 + 120) = v338;
      *(v343 + 128) = v340;
      *(v343 + 136) = 0;
      *(v343 + 144) = v341;
      v344 = sub_1CF4D3BC0();
      v345 = v439;
      sub_1CF902E70(v343, v344, v437, v438);
      *&v439 = v345;
      if (v345)
      {
        goto LABEL_60;
      }

      goto LABEL_158;
    }

    if (a1 <= 0x2F20A6BC4FLL)
    {
LABEL_158:
      v346 = v444;
      sub_1CF033A74();
      (*(**(*(v346 + 40) + 16) + 96))(&v440);
      v347 = v440;
      v348 = sub_1CF93DAB0();
      v350 = v349;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE50, &qword_1CF9FB248);
      v351 = swift_allocObject();
      *(v351 + 16) = 0u;
      *(v351 + 32) = 0u;
      *(v351 + 48) = 1;
      *(v351 + 56) = 0u;
      *(v351 + 72) = 0u;
      *(v351 + 88) = 0;
      *(v351 + 96) = xmmword_1CF9FEC30;
      *(v351 + 112) = 0;
      *(v351 + 120) = v348;
      *(v351 + 128) = v350;
      *(v351 + 136) = 0;
      *(v351 + 144) = v347;
      v352 = sub_1CF4D3BC0();
      v353 = v439;
      sub_1CF902E70(v351, v352, v437, v438);
      *&v439 = v353;
      if (v353)
      {
        goto LABEL_55;
      }

      goto LABEL_160;
    }

    if (a1 < 0x2F260259ADLL)
    {
LABEL_160:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v354 = sub_1CF93DAB0();
      v356 = v355;
      v357 = v440;
      v358 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD940, &qword_1CF9FAC30);
      v359 = swift_allocObject();
      *(v359 + 152) = v358;
      *(v359 + 16) = 0u;
      *(v359 + 32) = 0u;
      *(v359 + 48) = 1;
      *(v359 + 56) = 0u;
      *(v359 + 72) = 0u;
      *(v359 + 88) = 0;
      *(v359 + 96) = xmmword_1CF9FEC30;
      *(v359 + 112) = 0;
      *(v359 + 120) = v354;
      *(v359 + 128) = v356;
      *(v359 + 136) = 0;
      *(v359 + 144) = v357;
      v360 = sub_1CF4D3BC0();
      v361 = v439;
      sub_1CF902E70(v359, v360, v437, v438);
      *&v439 = v361;
      if (v361)
      {
        goto LABEL_60;
      }

      goto LABEL_162;
    }

    if (a1 < 0x2F26025BD7)
    {
LABEL_162:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
      swift_dynamicCastClassUnconditional();

      sub_1CF39E3AC();

      goto LABEL_163;
    }

    if (a1 <= 0x2F2603BA49)
    {
LABEL_163:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v362 = sub_1CF93DAB0();
      v364 = v363;
      v365 = v440;
      v366 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0160, &qword_1CF9FAC28);
      v367 = swift_allocObject();
      *(v367 + 152) = v366;
      *(v367 + 16) = 0u;
      *(v367 + 32) = 0u;
      *(v367 + 48) = 1;
      *(v367 + 56) = 0u;
      *(v367 + 72) = 0u;
      *(v367 + 88) = 0;
      *(v367 + 96) = xmmword_1CF9FEC30;
      *(v367 + 112) = 0;
      *(v367 + 120) = v362;
      *(v367 + 128) = v364;
      *(v367 + 136) = 0;
      *(v367 + 144) = v365;
      v368 = sub_1CF4D3BC0();
      v369 = v439;
      sub_1CF902E70(v367, v368, v437, v438);
      *&v439 = v369;
      if (v369)
      {
        goto LABEL_60;
      }

      goto LABEL_165;
    }

    if (a1 <= 0x2F260FEDC9)
    {
LABEL_165:
      v370 = *(v444 + 32);
      (*(**(v370 + 16) + 96))(&v440, a1);
      v371 = sub_1CF93DAB0();
      v373 = v372;
      v374 = v440;
      v375 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
      v376 = swift_allocObject();
      *(v376 + 152) = v375;
      *(v376 + 16) = 0u;
      *(v376 + 32) = 0u;
      *(v376 + 48) = 1;
      *(v376 + 56) = 0u;
      *(v376 + 72) = 0u;
      *(v376 + 88) = 0;
      *(v376 + 120) = v371;
      *(v376 + 128) = v373;
      *(v376 + 136) = 0x8000;
      *(v376 + 144) = v374;
      v436 = xmmword_1CFA04E30;
      *(v376 + 96) = xmmword_1CFA04E30;
      *(v376 + 112) = 0;
      v377 = sub_1CF4D3BC0();
      v378 = v439;
      sub_1CF902E70(v376, v377, v437, v438);
      if (v378)
      {
        goto LABEL_22;
      }

      (*(**(v370 + 16) + 104))(&v440, v379);
      v380 = sub_1CF93DAB0();
      v382 = v381;
      v383 = v440;
      v384 = v441;
      v385 = swift_allocObject();
      *(v385 + 152) = v384;
      *(v385 + 16) = 0u;
      *(v385 + 32) = 0u;
      *(v385 + 48) = 1;
      *(v385 + 56) = 0u;
      *(v385 + 72) = 0u;
      *(v385 + 88) = 0;
      *(v385 + 120) = v380;
      *(v385 + 128) = v382;
      *(v385 + 136) = 0x8000;
      *(v385 + 144) = v383;
      *(v385 + 96) = v436;
      *(v385 + 112) = 0;
      v386 = sub_1CF4D3BC0();
      sub_1CF902E70(v385, v386, v437, v438);
      *&v439 = 0;

      goto LABEL_167;
    }

    if (a1 <= 0x2F2610178CLL)
    {
LABEL_167:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v387 = sub_1CF93DAB0();
      v389 = v388;
      v390 = v440;
      v391 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD938, &qword_1CF9FAC20);
      v392 = swift_allocObject();
      *(v392 + 152) = v391;
      *(v392 + 16) = 0u;
      *(v392 + 32) = 0u;
      *(v392 + 48) = 1;
      *(v392 + 56) = 0u;
      *(v392 + 72) = 0u;
      *(v392 + 88) = 0;
      *(v392 + 96) = xmmword_1CF9FEC30;
      *(v392 + 112) = 0;
      *(v392 + 120) = v387;
      *(v392 + 128) = v389;
      *(v392 + 136) = 0;
      *(v392 + 144) = v390;
      v393 = sub_1CF4D3BC0();
      v394 = v439;
      sub_1CF902E70(v392, v393, v437, v438);
      *&v439 = v394;
      if (v394)
      {
        goto LABEL_60;
      }

      goto LABEL_169;
    }

    if (a1 <= 0x2F263048E5)
    {
LABEL_169:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v395 = sub_1CF93DAB0();
      v397 = v396;
      v398 = v440;
      v399 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD998, &qword_1CF9FACF0);
      v400 = swift_allocObject();
      *(v400 + 152) = v399;
      *(v400 + 16) = 0u;
      *(v400 + 32) = 0u;
      *(v400 + 48) = 1;
      *(v400 + 56) = 0u;
      *(v400 + 72) = 0u;
      *(v400 + 88) = 0;
      *(v400 + 96) = xmmword_1CF9FEC30;
      *(v400 + 112) = 0;
      *(v400 + 120) = v395;
      *(v400 + 128) = v397;
      *(v400 + 136) = 0;
      *(v400 + 144) = v398;
      v401 = sub_1CF4D3BC0();
      v402 = v439;
      sub_1CF902E70(v400, v401, v437, v438);
      *&v439 = v402;
      if (v402)
      {
        goto LABEL_60;
      }

      goto LABEL_171;
    }

    if (a1 <= 0x2F263E2A11)
    {
LABEL_171:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v403 = sub_1CF93DAB0();
      v405 = v404;
      v406 = v440;
      v407 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD930, &qword_1CF9FAC10);
      v408 = swift_allocObject();
      *(v408 + 152) = v407;
      *(v408 + 16) = 0u;
      *(v408 + 32) = 0u;
      *(v408 + 48) = 1;
      *(v408 + 56) = 0u;
      *(v408 + 72) = 0u;
      *(v408 + 88) = 0;
      *(v408 + 96) = xmmword_1CF9FEC30;
      *(v408 + 112) = 0;
      *(v408 + 120) = v403;
      *(v408 + 128) = v405;
      *(v408 + 136) = 0;
      *(v408 + 144) = v406;
      v409 = sub_1CF4D3BC0();
      v410 = v439;
      sub_1CF902E70(v408, v409, v437, v438);
      *&v439 = v410;
      if (v410)
      {
        goto LABEL_60;
      }

      goto LABEL_173;
    }

    if (a1 < 0x2F264D4758)
    {
LABEL_173:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v411 = sub_1CF93DAB0();
      v413 = v412;
      v414 = v440;
      v415 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0180, &qword_1CF9FAC08);
      v416 = swift_allocObject();
      *(v416 + 152) = v415;
      *(v416 + 16) = 0u;
      *(v416 + 32) = 0u;
      *(v416 + 48) = 1;
      *(v416 + 56) = 0u;
      *(v416 + 72) = 0u;
      *(v416 + 88) = 0;
      *(v416 + 96) = xmmword_1CF9FEC30;
      *(v416 + 112) = 0;
      *(v416 + 120) = v411;
      *(v416 + 128) = v413;
      *(v416 + 136) = 0;
      *(v416 + 144) = v414;
      v417 = sub_1CF4D3BC0();
      v418 = v439;
      sub_1CF902E70(v416, v417, v437, v438);
      *&v439 = v418;
      if (v418)
      {
        goto LABEL_60;
      }

      goto LABEL_175;
    }

    if (a1 == 0x2F264D4758)
    {
LABEL_175:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1);
      v419 = sub_1CF93DAB0();
      v421 = v420;
      v422 = v440;
      v423 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0190, &unk_1CF9FABE0);
      v424 = swift_allocObject();
      *(v424 + 152) = v423;
      *(v424 + 16) = 0u;
      *(v424 + 32) = 0u;
      *(v424 + 48) = 1;
      *(v424 + 56) = 0u;
      *(v424 + 72) = 0u;
      *(v424 + 88) = 0;
      *(v424 + 96) = xmmword_1CF9FEC30;
      *(v424 + 112) = 0;
      *(v424 + 120) = v419;
      *(v424 + 128) = v421;
      *(v424 + 136) = 0;
      *(v424 + 144) = v422;
      v425 = sub_1CF4D3BC0();
      v426 = v439;
      sub_1CF902E70(v424, v425, v437, v438);
      *&v439 = v426;
      if (v426)
      {
        goto LABEL_60;
      }

LABEL_177:
      (*(**(*(v444 + 32) + 16) + 96))(&v440, a1, a4);
      v427 = sub_1CF93DAB0();
      v429 = v428;
      v430 = v440;
      v431 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD920, &unk_1CFA056D0);
      v432 = swift_allocObject();
      *(v432 + 152) = v431;
      *(v432 + 16) = 0u;
      *(v432 + 32) = 0u;
      *(v432 + 48) = 1;
      *(v432 + 56) = 0u;
      *(v432 + 72) = 0u;
      *(v432 + 88) = 0;
      *(v432 + 96) = xmmword_1CF9FEC30;
      *(v432 + 112) = 0;
      *(v432 + 120) = v427;
      *(v432 + 128) = v429;
      *(v432 + 136) = 0;
      *(v432 + 144) = v430;
      v433 = sub_1CF4D3BC0();
      v434 = v439;
      sub_1CF902E70(v432, v433, v437, v438);
      *&v439 = v434;
      goto LABEL_60;
    }

    if (a1 <= 0x2F265CD7B9)
    {
      goto LABEL_177;
    }

    return;
  }

LABEL_122:
  MEMORY[0x1EEE9AC00](a1);
  v435[2] = 0x6F74736552443244;
  v435[3] = 0xEA00000000006572;
  v218 = v439;
  v219 = sub_1CF7D55FC(sub_1CF482D74, v435, v437, v438);
  *&v439 = v218;
  if (!v218)
  {
    v220 = v219;
    v221 = [v219 next];

    if (v221)
    {
      sub_1CF24CD3C();
      swift_allocError();
      *v222 = 2;
      *(v222 + 8) = 0u;
      *(v222 + 24) = 0u;
      *(v222 + 40) = 0;
      *(v222 + 48) = 9;
      swift_willThrow();
      return;
    }

LABEL_125:
    v223 = *(*(v444 + 32) + 16);
    if (*(v223[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 16) == 1)
    {
      (*(*v223 + 96))(&v440);
      v224 = sub_1CF93DAB0();
      v226 = v225;
      v227 = v440;
      v228 = v441;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9A0, &qword_1CF9FAD00);
      v229 = swift_allocObject();
      *(v229 + 152) = v228;
      *(v229 + 16) = 0u;
      *(v229 + 32) = 0u;
      *(v229 + 48) = 1;
      *(v229 + 56) = 0u;
      *(v229 + 72) = 0u;
      *(v229 + 88) = 0;
      *(v229 + 96) = xmmword_1CF9FEC30;
      *(v229 + 112) = 0;
      *(v229 + 120) = v224;
      *(v229 + 128) = v226;
      *(v229 + 136) = 0;
      *(v229 + 144) = v227;
      v230 = sub_1CF4D3BC0();
      v231 = v439;
      sub_1CF902E70(v229, v230, v437, v438);
      *&v439 = v231;
      if (v231)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_128;
  }
}

uint64_t sub_1CF3E3210()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000061, 0x80000001CFA46190);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  return 0;
}

void sub_1CF3E32A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = *(a1 + 32);
  (*(**(v7 + 16) + 96))(&v8);
  sub_1CF3F9764(v8, v9, a1, a2, v4);
  if (!v3)
  {
    (*(**(v7 + 16) + 104))(&v8);
    sub_1CF3F9764(v8, v9, a1, a2, v4);
  }
}

uint64_t sub_1CF3E3388(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 < 0)
  {
    v4 = (a1 & 0x7FFFFFFFFFFFFFFFLL) + 56;
  }

  else
  {
    v4 = a1 + 56;
  }

  swift_beginAccess();
  sub_1CEFCCBDC(v4, v36, &unk_1EC4C1BE0, &unk_1CF9FD400);
  if (!v37)
  {
    sub_1CEFCCC44(v36, &unk_1EC4C1BE0, &unk_1CF9FD400);

    return v3;
  }

  __swift_project_boxed_opaque_existential_1(v36, v37);
  v5 = sub_1CF9E7F98();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v36);
  v8 = objc_sync_enter(v2);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v35 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v34, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  v9 = v2[24];
  if (!*v9->tree)
  {
    goto LABEL_11;
  }

  v10 = sub_1CEFE4328(v5, v7);
  if ((v11 & 1) == 0)
  {
    v9, v11, v12, v13, v14, v15, v16, v17;
LABEL_11:

    goto LABEL_12;
  }

  v3 = *(*v9[1].tester + 8 * v10);

  v9, v18, v19, v20, v21, v22, v23, v24;
LABEL_12:
  v25 = objc_sync_exit(v2);
  if (v25)
  {
    MEMORY[0x1EEE9AC00](v25);
    v35 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v34, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v7, v26, v27, v28, v29, v30, v31, v32;
  return v3;
}

void sub_1CF3E3598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E6118();
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  sub_1CF407FF8(0, &v41 - v11);
  swift_beginAccess();
  v13 = sub_1CF1CE9E8(v12);
  sub_1CEFCCC44(v12, &unk_1EC4BF650, &unk_1CF9FCB40);
  swift_endAccess();
  if (v13)
  {
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFCCBDC(a1, v9, &unk_1EC4BF650, &unk_1CF9FCB40);
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E7298();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v42 = v4;
      v18 = v17;
      v41 = swift_slowAlloc();
      v44[0] = v41;
      *v18 = 136315138;
      sub_1CEFCCBDC(v9, v12, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCC44(v9, &unk_1EC4BF650, &unk_1CF9FCB40);
      v19 = sub_1CF46B374();
      v21 = v20;
      sub_1CEFCCC44(v12, &unk_1EC4BF650, &unk_1CF9FCB40);
      v22 = sub_1CEFD0DF0(v19, v21, v44);
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v18 + 4) = v22;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "unblocking waiters on %s", v18, 0xCu);
      v30 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1D386CDC0](v30, -1, -1);
      MEMORY[0x1D386CDC0](v18, -1, -1);

      (*(v43 + 8))(v6, v42);
    }

    else
    {
      sub_1CEFCCC44(v9, &unk_1EC4BF650, &unk_1CF9FCB40);

      (*(v43 + 8))(v6, v4);
    }

    v38 = *v13->tree;
    if (v38)
    {
      anon_8 = v13[1]._anon_8;
      do
      {
        v40 = *(anon_8 - 1);
        v44[0] = a2;

        v40(v44);

        anon_8 += 16;
        --v38;
      }

      while (v38);
    }

    v13, v31, v32, v33, v34, v35, v36, v37;
  }
}

void sub_1CF3E3914(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 64);
  v4 = fpfs_current_log();
  v5 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v73 = v6;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v7 = sub_1CF9E7988();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  sub_1CF9E6978();
  v73, v17, v18, v19, v20, v21, v22, v23;
  v24 = __fp_log_fork();

  v80 = v24;
  v81 = 0;
  v64 = v4;
  v65 = &v80;
  v66 = v3;
  v67 = "invalidateSource()";
  v68 = 18;
  v69 = 2;
  v70 = sub_1CF47FB8C;
  v71 = v2;
  v79 = 1;
  v78 = 0;
  v25 = swift_allocObject();
  v25[2] = &v79;
  v25[3] = sub_1CF2B1698;
  v25[4] = &v63;
  v25[5] = &v78;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1CF2B16B0;
  *(v26 + 24) = v25;
  v76 = sub_1CEFFD054;
  v77 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_1CEFFD02C;
  v75 = &block_descriptor_21_0;
  v27 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v3, v27);
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v78)
  {
LABEL_12:
    swift_willThrow();

    v57 = fpfs_adopt_log();
    __break(1u);
    goto LABEL_13;
  }

  if (v79)
  {
    goto LABEL_10;
  }

  v28 = fpfs_adopt_log();

  v29 = fpfs_current_log();
  v30 = fpfs_adopt_log();
  v80 = 0;
  v81 = 1;
  aBlock = sub_1CF9E73C8();
  v73 = v31;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v32 = sub_1CF9E7988();
  v34 = v33;
  MEMORY[0x1D3868CC0](v32);
  v34, v35, v36, v37, v38, v39, v40, v41;
  v42 = v73;
  sub_1CF9E6978();
  v42, v43, v44, v45, v46, v47, v48, v49;
  v50 = __fp_log_fork();

  v80 = v50;
  v81 = 0;
  MEMORY[0x1EEE9AC00](v51);
  v59[2] = v29;
  v59[3] = &v80;
  v59[4] = v3;
  v59[5] = "invalidateSource()";
  v59[6] = 18;
  v60 = 2;
  v61 = nullsub_1;
  v62 = 0;
  v79 = 1;
  v78 = 0;
  v52 = swift_allocObject();
  v52[2] = &v79;
  v52[3] = sub_1CF2BA13C;
  v52[4] = v59;
  v52[5] = &v78;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1CF2BA170;
  *(v53 + 24) = v52;
  v76 = sub_1CF1C0B54;
  v77 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_1CEFFD02C;
  v75 = &block_descriptor_33;
  v54 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v3, v54);
  _Block_release(v54);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v78)
  {
    if ((v79 & 1) == 0)
    {

      v56 = fpfs_adopt_log();

      return;
    }

    goto LABEL_11;
  }

LABEL_13:
  swift_willThrow();

  v58 = fpfs_adopt_log();
  __break(1u);
}

uint64_t sub_1CF3E3E48(uint64_t result, char a2)
{
  v5 = result;
  LOBYTE(v6) = a2;
  v4 = qword_1EDEBBCE0;
  if (*(v2 + qword_1EDEBBCE0) == 1 && !*(v2 + qword_1EDEADA98))
  {
    result = (*(**(v2 + 24) + 584))(&v5, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v3 && (result & 1) == 0)
    {
      if (qword_1EDEACC50 != -1)
      {
        swift_once();
      }

      result = [qword_1EDEBBB28 removeWatcher_];
      *(v2 + v4) = 0;
    }
  }

  return result;
}

void sub_1CF3E3F48(_BOOL4 a1, _BOOL4 a2, char a3)
{
  v5 = a2;
  if (a1 == 2)
  {
    v6 = *(v3 + 200) == 0;
  }

  else
  {
    v6 = a1;
  }

  if (a2 == 2)
  {
    os_unfair_lock_lock((v3 + 208));
    v5 = *(v3 + 216) == 0;
    os_unfair_lock_unlock((v3 + 208));
  }

  if (a3 == 2)
  {
    v7 = v3 + qword_1EDEBBC20;
    os_unfair_lock_lock((v3 + qword_1EDEBBC20));
    v8 = *(v7 + 96);
    os_unfair_lock_unlock(v7);
    if (v8)
    {
      return;
    }

    v9 = v3 + qword_1EDEBBC28;
    os_unfair_lock_lock((v3 + qword_1EDEBBC28));
    a3 = *(v9 + 96) == 0;
    os_unfair_lock_unlock(v9);
  }

  if (v6 && v5 && (a3 & 1) != 0)
  {
    v10 = *(*v3 + 2512);

    v10();
  }
}

void sub_1CF3E407C(char a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(void, unint64_t))
{
  v11 = v6;
  v14 = type metadata accessor for PaginatedContinuation();
  sub_1CF387D24(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1CF387D24(v15);
  if (a1)
  {
    v16 = 20550;
  }

  else
  {
    v16 = 21318;
  }

  MEMORY[0x1D3868CC0](v16, 0xE200000000000000);
  0xE200000000000000, v17, v18, v19, v20, v21, v22, v23;
  v24 = MEMORY[0x1D3868CC0](0x6F687370616E735FLL, 0xE900000000000074);
  v25 = (v6 + qword_1EDEBBD78);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = a5(v24);
  v27 = *v26->tree;
  v26, v28, v29, v30, v31, v32, v33, v34;
  if (v27 >> 31)
  {
    __break(1u);
  }

  else
  {
    *(v11 + qword_1EDEBBD90) = v27;
    v35 = a6(0, 0xE000000000000000);
    v36 = (v11 + qword_1EDEBBD98);
    *v36 = v35;
    v36[1] = v37;
    v38 = sub_1CEFE91F8(0x697461726F636564uLL, 0xEB000000005F6E6FLL);
    v39 = (v11 + qword_1EDEBBD88);
    *v39 = v38;
    v39[1] = v40;
    v41 = sub_1CEFF12E8();
    v42 = *v41->tree;
    v41, v43, v44, v45, v46, v47, v48, v49;
    if (!(v42 >> 31))
    {
      *(v11 + qword_1EDEBBD80) = v42;
      v50 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
      *(v11 + qword_1EDEAE5C0) = v50;
      [v50 setCountLimit_];
      swift_weakInit();
      *(v11 + 33) = 1;
      v51 = (v11 + qword_1EDEBBA48);
      type metadata accessor for SnapshotCounters(0);
      v51[1] = 0;
      v51[2] = 0;
      *v51 = 0;
      sub_1CF9E5CC8();
      *(v11 + 32) = a1 & 1;
      *(v11 + 16) = a2;
      return;
    }
  }

  __break(1u);
}

void sub_1CF3E4284(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  LODWORD(v69) = a3;
  v68 = a2;
  v70 = a4;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v73 = a1;
  v67 = v4;
  if (*(v4 + 32))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 1;
  }

  else
  {
    v62 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = v5;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDEBBE40;
    (*(v8 + 56))(v15, 1, 1, v7);
    v71 = 0x2070756B6F6F6CLL;
    v72 = 0xE700000000000000;
    v24 = NSFileProviderItemIdentifier.description.getter(a1);
    v26 = v25;
    MEMORY[0x1D3868CC0](v24);
    v26, v27, v28, v29, v30, v31, v32, v33;
    v63 = v72;
    v64 = v71;
    v61 = v15;
    sub_1CEFCCBDC(v15, v12, &unk_1EC4BED20, &unk_1CFA00700);
    v34 = *(v8 + 48);
    if (v34(v12, 1, v7) == 1)
    {
      v35 = v23;
      v36 = v23;
      v37 = v66;
      sub_1CF9E6048();
      if (v34(v12, 1, v7) != 1)
      {
        sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v35 = v23;
      v37 = v66;
      (*(v8 + 32))(v66, v12, v7);
    }

    v38 = v62;
    (*(v8 + 16))(v62, v37, v7);
    *(v38 + *(v16 + 20)) = v35;
    v39 = v38 + *(v16 + 24);
    *v39 = "SQLDB: Lookup FS recursive properties";
    *(v39 + 8) = 37;
    *(v39 + 16) = 2;
    v40 = v35;
    v41 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1CF9FA450;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1CEFD51C4();
    v43 = v63;
    *(v42 + 32) = v64;
    *(v42 + 40) = v43;
    v59 = v42;
    v58 = 2;
    sub_1CF9E6028(v41, &dword_1CEFC7000, v40, "SQLDB: Lookup FS recursive properties", 37, 2, v38, "%s", 2);
    v42, v44, v45, v46, v47, v48, v49, v50;
    (*(v8 + 8))(v37, v7);
    v51 = sub_1CEFCCC44(v61, &unk_1EC4BED20, &unk_1CFA00700);
    MEMORY[0x1EEE9AC00](v51);
    v59 = v67;
    v60 = &v73;
    v52 = v65;
    v53 = sub_1CF7D5474(sub_1CF483D90, &v57, v68, v69);
    if (v52)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CEFD5278(v38, type metadata accessor for Signpost);
      return;
    }

    v54 = v53;
    v69 = v40;
    v55 = [v53 next];
    if (v55)
    {
      v18 = [v54 unsignedLongAtIndex_];
      v19 = [v54 unsignedLongAtIndex_];
      v20 = [v54 unsignedLongAtIndex_];
      v21 = [v54 unsignedLongAtIndex_];
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    v22 = v55 ^ 1;

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v38, type metadata accessor for Signpost);
  }

  v56 = v70;
  *v70 = v18;
  v56[1] = v19;
  v56[2] = v20;
  v56[3] = v21;
  *(v56 + 32) = v22;
}

void sub_1CF3E4858(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  v72 = a4;
  v71 = a3;
  v73 = a5;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a1;
  v79 = a2;
  v70 = v5;
  if (*(v5 + 32))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
  }

  else
  {
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v68 = v19;
    v25 = qword_1EDEBBE40;
    v26 = (*(v9 + 56))(v16, 1, 1, v8);
    v76 = 0x2070756B6F6F6CLL;
    v77 = 0xE700000000000000;
    v74 = v78;
    v75 = v79;
    v27 = VFSItemID.description.getter(v26);
    v29 = v28;
    MEMORY[0x1D3868CC0](v27);
    v29, v30, v31, v32, v33, v34, v35, v36;
    v66 = v77;
    v67 = v76;
    sub_1CEFCCBDC(v16, v13, &unk_1EC4BED20, &unk_1CFA00700);
    v37 = *(v9 + 48);
    if (v37(v13, 1, v8) == 1)
    {
      v38 = v25;
      v39 = v25;
      v40 = v69;
      sub_1CF9E6048();
      if (v37(v13, 1, v8) != 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v38 = v25;
      v40 = v69;
      (*(v9 + 32))(v69, v13, v8);
    }

    v41 = v68;
    (*(v9 + 16))(v68, v40, v8);
    *(v41 + *(v17 + 20)) = v38;
    v42 = v41 + *(v17 + 24);
    *v42 = "SQLDB: Lookup FS recursive properties";
    *(v42 + 8) = 37;
    *(v42 + 16) = 2;
    v43 = v38;
    v44 = v41;
    v45 = v43;
    v46 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1CF9FA450;
    *(v47 + 56) = MEMORY[0x1E69E6158];
    *(v47 + 64) = sub_1CEFD51C4();
    v48 = v66;
    *(v47 + 32) = v67;
    *(v47 + 40) = v48;
    v64 = v47;
    v63 = 2;
    sub_1CF9E6028(v46, &dword_1CEFC7000, v45, "SQLDB: Lookup FS recursive properties", 37, 2, v44, "%s", 2);
    v47, v49, v50, v51, v52, v53, v54, v55;
    (*(v9 + 8))(v40, v8);
    v56 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
    MEMORY[0x1EEE9AC00](v56);
    v64 = v70;
    v65 = &v78;
    v57 = v80;
    v58 = sub_1CF7D5474(sub_1CF483F34, &v62, v71, v72);
    if (v57)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CEFD5278(v44, type metadata accessor for Signpost);
      return;
    }

    v59 = v58;
    v80 = v45;
    v60 = [v58 next];
    if (v60)
    {
      v20 = [v59 unsignedLongAtIndex_];
      v21 = [v59 unsignedLongAtIndex_];
      v22 = [v59 unsignedLongAtIndex_];
      v23 = [v59 unsignedLongAtIndex_];
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    v24 = v60 ^ 1;

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v44, type metadata accessor for Signpost);
  }

  v61 = v73;
  *v73 = v20;
  v61[1] = v21;
  v61[2] = v22;
  v61[3] = v23;
  *(v61 + 32) = v24;
}

uint64_t sub_1CF3E4E44(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CF9E6938();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA46520);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  sub_1CF9E6918();
  v11 = sub_1CF9E68C8();
  v13 = v12;
  v10, v12, v14, v15, v16, v17, v18, v19;
  result = (*(v6 + 8))(v8, v5);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v21 = sub_1CF9E5B48();
    sub_1CEFE48D8(v11, v13);
    v22 = [a1 bindObjectParameter_];

    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v24;

    MEMORY[0x1D3868CC0](v23, v25);
    v25, v26, v27, v28, v29, v30, v31, v32;
    return v33[0];
  }

  return result;
}

uint64_t sub_1CF3E504C(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA46520);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  if (!a4)
  {
    goto LABEL_5;
  }

  if (a4 != 1)
  {
    a3 = (a3 != 0) << 63;
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a3 = -a3;
  }

LABEL_7:
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  return v20;
}

id sub_1CF3E518C(uint64_t a1, void *a2, unsigned int a3)
{
  v64 = a3;
  v63 = a2;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v15);
  v67 = a1;
  v62 = v3;
  if (*(v3 + 32) != 1)
  {
    return 0;
  }

  v57 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v4;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBBE40;
  (*(v7 + 56))(v14, 1, 1, v6);
  v65 = 0x2070756B6F6F6CLL;
  v66 = 0xE700000000000000;
  v18 = NSFileProviderItemIdentifier.description.getter(a1);
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  v58 = v66;
  v59 = v65;
  v56 = v14;
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BED20, &unk_1CFA00700);
  v28 = *(v7 + 48);
  if (v28(v11, 1, v6) == 1)
  {
    v29 = v17;
    v30 = v17;
    v31 = v61;
    sub_1CF9E6048();
    if (v28(v11, 1, v6) != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v29 = v17;
    v31 = v61;
    (*(v7 + 32))(v61, v11, v6);
  }

  v33 = v57;
  (*(v7 + 16))(v57, v31, v6);
  *(v33 + *(v15 + 20)) = v29;
  v34 = v33 + *(v15 + 24);
  *v34 = "SQLDB: Lookup FP recursive properties";
  *(v34 + 8) = 37;
  *(v34 + 16) = 2;
  v35 = v29;
  v36 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CF9FA450;
  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = sub_1CEFD51C4();
  v38 = v58;
  *(v37 + 32) = v59;
  *(v37 + 40) = v38;
  v53 = v37;
  v52 = 2;
  sub_1CF9E6028(v36, &dword_1CEFC7000, v35, "SQLDB: Lookup FP recursive properties", 37, 2, v33, "%s", 2);
  v37, v39, v40, v41, v42, v43, v44, v45;
  (*(v7 + 8))(v31, v6);
  v46 = sub_1CEFCCC44(v56, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v46);
  v53 = v62;
  v54 = &v67;
  v47 = v60;
  v48 = sub_1CF7D5474(sub_1CF483D9C, &v51, v63, v64);
  if (v47)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CEFD5278(v33, type metadata accessor for Signpost);
  }

  else
  {
    v49 = v48;
    if ([v48 next])
    {
      v50 = [v49 unsignedLongAtIndex_];
      [v49 unsignedLongAtIndex_];
    }

    else
    {
      v50 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v33, type metadata accessor for Signpost);
    return v50;
  }
}

id sub_1CF3E571C(uint64_t a1, char a2, void *a3, unsigned int a4)
{
  v64 = a4;
  v63 = a3;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v70 = a2;
  v62 = v4;
  if (*(v4 + 32) != 1)
  {
    return 0;
  }

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDEBBE40;
  v20 = (*(v8 + 56))(v15, 1, 1, v7);
  v67 = 0x2070756B6F6F6CLL;
  v68 = 0xE700000000000000;
  v65 = v69;
  v66 = v70;
  v21 = VFSItemID.description.getter(v20);
  v23 = v22;
  MEMORY[0x1D3868CC0](v21);
  v23, v24, v25, v26, v27, v28, v29, v30;
  v58 = v68;
  v59 = v67;
  v60 = v15;
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = *(v8 + 48);
  if (v31(v12, 1, v7) == 1)
  {
    v32 = v19;
    v33 = v19;
    v34 = v61;
    sub_1CF9E6048();
    if (v31(v12, 1, v7) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v32 = v19;
    v34 = v61;
    (*(v8 + 32))(v61, v12, v7);
  }

  (*(v8 + 16))(v18, v34, v7);
  *&v18[*(v16 + 20)] = v32;
  v36 = &v18[*(v16 + 24)];
  *v36 = "SQLDB: Lookup FP recursive properties";
  *(v36 + 1) = 37;
  v36[16] = 2;
  v37 = v32;
  v38 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1CF9FA450;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1CEFD51C4();
  v40 = v58;
  *(v39 + 32) = v59;
  *(v39 + 40) = v40;
  v55 = v39;
  v54 = 2;
  sub_1CF9E6028(v38, &dword_1CEFC7000, v37, "SQLDB: Lookup FP recursive properties", 37, 2, v18, "%s", 2);
  v39, v41, v42, v43, v44, v45, v46, v47;
  (*(v8 + 8))(v34, v7);
  v48 = sub_1CEFCCC44(v60, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v48);
  v55 = v62;
  v56 = &v69;
  v49 = v71;
  v50 = sub_1CF7D5474(sub_1CF483F44, &v53, v63, v64);
  if (v49)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CEFD5278(v18, type metadata accessor for Signpost);
  }

  else
  {
    v51 = v50;
    if ([v50 next])
    {
      v52 = [v51 unsignedLongAtIndex_];
      [v51 unsignedLongAtIndex_];
    }

    else
    {
      v52 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v18, type metadata accessor for Signpost);
    return v52;
  }
}

uint64_t sub_1CF3E5CB8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CF9E6938();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA465E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  sub_1CF9E6918();
  v11 = sub_1CF9E68C8();
  v13 = v12;
  v10, v12, v14, v15, v16, v17, v18, v19;
  result = (*(v6 + 8))(v8, v5);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v21 = sub_1CF9E5B48();
    sub_1CEFE48D8(v11, v13);
    v22 = [a1 bindObjectParameter_];

    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v24;

    MEMORY[0x1D3868CC0](v23, v25);
    v25, v26, v27, v28, v29, v30, v31, v32;
    return v33[0];
  }

  return result;
}

uint64_t sub_1CF3E5EC0(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA465E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  if (!a4)
  {
    goto LABEL_5;
  }

  if (a4 != 1)
  {
    a3 = (a3 != 0) << 63;
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a3 = -a3;
  }

LABEL_7:
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  return v20;
}

uint64_t sub_1CF3E6000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v70 = a2;
  v71 = a3;
  v65 = a4;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  v15 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBBE40;
  (*(v6 + 56))(v14, 1, 1, v5);
  v73 = 0x2070756B6F6F6CLL;
  v74 = 0xE700000000000000;
  v18 = NSFileProviderItemIdentifier.description.getter(a1);
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  v66 = v74;
  v67 = v73;
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BED20, &unk_1CFA00700);
  v28 = *(v6 + 48);
  if (v28(v11, 1, v5) == 1)
  {
    v29 = v17;
    sub_1CF9E6048();
    v30 = v28(v11, 1, v5);
    v31 = v8;
    if (v30 != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v31 = v8;
    (*(v6 + 32))(v8, v11, v5);
  }

  v32 = v68;
  (*(v6 + 16))(v68, v31, v5);
  *(v32 + *(v15 + 20)) = v17;
  v33 = v32 + *(v15 + 24);
  *v33 = "SQLDB: Lookup item by ID";
  *(v33 + 8) = 24;
  *(v33 + 16) = 2;
  v34 = v17;
  v35 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CF9FA450;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1CEFD51C4();
  v37 = v66;
  *(v36 + 32) = v67;
  *(v36 + 40) = v37;
  v63 = v36;
  v62 = 2;
  sub_1CF9E6028(v35, &dword_1CEFC7000, v34, "SQLDB: Lookup item by ID", 24, 2, v32, "%s", 2);
  v36, v38, v39, v40, v41, v42, v43, v44;
  (*(v6 + 8))(v31, v5);
  v45 = sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v45);
  v63 = v69;
  v64 = &v75;
  v46 = v72;
  v47 = sub_1CF7D5474(sub_1CF483E18, &v61, v70, v71);
  if (!v46)
  {
    v48 = v47;
    if ([v47 next])
    {
      v49 = sub_1CF1CC7A8();
      v50 = v65;
      sub_1CF241018(v48, v49, 0, v65);
      v49, v52, v53, v54, v55, v56, v57, v58;

      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      (*(*(v59 - 8) + 56))(v50, 0, 1, v59);
    }

    else
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      (*(*(v51 - 8) + 56))(v65, 1, 1, v51);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5278(v32, type metadata accessor for Signpost);
}

uint64_t sub_1CF3E65B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v74 = a3;
  v75 = a4;
  v69 = a5;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - v15;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  v81 = a2;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDEBBE40;
  v20 = (*(v8 + 56))(v16, 1, 1, v7);
  v78 = 0x2070756B6F6F6CLL;
  v79 = 0xE700000000000000;
  v76 = v80;
  v77 = v81;
  v21 = VFSItemID.description.getter(v20);
  v23 = v22;
  MEMORY[0x1D3868CC0](v21);
  v23, v24, v25, v26, v27, v28, v29, v30;
  v70 = v79;
  v71 = v78;
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = *(v8 + 48);
  if (v31(v13, 1, v7) == 1)
  {
    v32 = v19;
    sub_1CF9E6048();
    v33 = v31(v13, 1, v7);
    v34 = v10;
    if (v33 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v34 = v10;
    (*(v8 + 32))(v10, v13, v7);
  }

  v35 = v72;
  (*(v8 + 16))(v72, v34, v7);
  *(v35 + *(v17 + 20)) = v19;
  v36 = v35 + *(v17 + 24);
  *v36 = "SQLDB: Lookup item by ID";
  *(v36 + 8) = 24;
  *(v36 + 16) = 2;
  v37 = v19;
  v38 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1CF9FA450;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1CEFD51C4();
  v40 = v70;
  *(v39 + 32) = v71;
  *(v39 + 40) = v40;
  v66 = v39;
  v65 = 2;
  sub_1CF9E6028(v38, &dword_1CEFC7000, v37, "SQLDB: Lookup item by ID", 24, 2, v35, "%s", 2);
  v39, v41, v42, v43, v44, v45, v46, v47;
  (*(v8 + 8))(v34, v7);
  v48 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v48);
  v66 = v73;
  v67 = &v80;
  v49 = v82;
  v50 = sub_1CF7D5474(sub_1CF483FDC, &v64, v74, v75);
  if (!v49)
  {
    v51 = v50;
    if ([v50 next])
    {
      v52 = sub_1CF1CBB20();
      v53 = v69;
      sub_1CF2408F8(v52, v51, 0, v69);
      v52, v55, v56, v57, v58, v59, v60, v61;

      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      (*(*(v62 - 8) + 56))(v53, 0, 1, v62);
    }

    else
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      (*(*(v54 - 8) + 56))(v69, 1, 1, v54);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5278(v35, type metadata accessor for Signpost);
}

void sub_1CF3E6B78(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v68 = a2;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v64 - v15;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = a1;
  v67 = v4;
  if (v4[32] != 1)
  {
    sub_1CEFE528C(&v88);
    v24 = v101;
    *(a4 + 192) = v100;
    *(a4 + 208) = v24;
    *(a4 + 224) = v102;
    *(a4 + 240) = v103;
    v25 = v97;
    *(a4 + 128) = v96;
    *(a4 + 144) = v25;
    v26 = v99;
    *(a4 + 160) = v98;
    *(a4 + 176) = v26;
    v27 = v93;
    *(a4 + 64) = v92;
    *(a4 + 80) = v27;
    v28 = v95;
    *(a4 + 96) = v94;
    *(a4 + 112) = v28;
    v29 = v89;
    *a4 = v88;
    *(a4 + 16) = v29;
    v30 = v91;
    *(a4 + 32) = v90;
    *(a4 + 48) = v30;
    return;
  }

  v65 = a3;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEBBE40;
  v19 = v70;
  (*(v9 + 56))(v70, 1, 1, v8);
  sub_1CEFCCBDC(v19, v13, &unk_1EC4BED20, &unk_1CFA00700);
  v20 = *(v9 + 48);
  v21 = v20(v13, 1, v8);
  v64 = v18;
  if (v21 == 1)
  {
    v22 = v18;
    v23 = v66;
    sub_1CF9E6048();
    if (v20(v13, 1, v8) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v23 = v66;
    (*(v9 + 32))(v66, v13, v8);
  }

  v31 = v69;
  (*(v9 + 16))(v69, v23, v8);
  v32 = v64;
  *&v31[*(v16 + 20)] = v64;
  v33 = &v31[*(v16 + 24)];
  *v33 = "SQLDB: Lookup item non syncable attributes";
  *(v33 + 1) = 42;
  v33[16] = 2;
  v34 = v32;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v9 + 8))(v23, v8);
  v35 = sub_1CEFCCC44(v70, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v35);
  v36 = v68;
  *(&v64 - 2) = v67;
  *(&v64 - 1) = &v104;
  v37 = v71;
  v38 = sub_1CF7D5474(sub_1CF483DA8, (&v64 - 4), v36, v65);
  if (v37)
  {
    goto LABEL_13;
  }

  v39 = v38;
  if (([v38 next] & 1) == 0)
  {

    sub_1CEFE528C(&v88);
    v41 = v101;
    *(a4 + 192) = v100;
    *(a4 + 208) = v41;
    *(a4 + 224) = v102;
    *(a4 + 240) = v103;
    v42 = v97;
    *(a4 + 128) = v96;
    *(a4 + 144) = v42;
    v43 = v99;
    *(a4 + 160) = v98;
    *(a4 + 176) = v43;
    v44 = v93;
    *(a4 + 64) = v92;
    *(a4 + 80) = v44;
    v45 = v95;
    *(a4 + 96) = v94;
    *(a4 + 112) = v45;
    v46 = v89;
    *a4 = v88;
    *(a4 + 16) = v46;
    v47 = v91;
    *(a4 + 32) = v90;
    *(a4 + 48) = v47;
LABEL_13:
    sub_1CF9E7458();
    sub_1CF9E6038();
    v63 = v31;
    goto LABEL_14;
  }

  v40 = sub_1CEFF12E8();
  sub_1CEFF14E0(v40, v39, 0, &v88);

  v40, v48, v49, v50, v51, v52, v53, v54;
  v84 = v100;
  v85 = v101;
  v86 = v102;
  v87 = v103;
  v80 = v96;
  v81 = v97;
  v82 = v98;
  v83 = v99;
  v76 = v92;
  v77 = v93;
  v78 = v94;
  v79 = v95;
  v72 = v88;
  v73 = v89;
  v74 = v90;
  v75 = v91;
  nullsub_1();
  v55 = v85;
  *(a4 + 192) = v84;
  *(a4 + 208) = v55;
  *(a4 + 224) = v86;
  *(a4 + 240) = v87;
  v56 = v81;
  *(a4 + 128) = v80;
  *(a4 + 144) = v56;
  v57 = v83;
  *(a4 + 160) = v82;
  *(a4 + 176) = v57;
  v58 = v77;
  *(a4 + 64) = v76;
  *(a4 + 80) = v58;
  v59 = v79;
  *(a4 + 96) = v78;
  *(a4 + 112) = v59;
  v60 = v73;
  *a4 = v72;
  *(a4 + 16) = v60;
  v61 = v75;
  *(a4 + 32) = v74;
  *(a4 + 48) = v61;
  sub_1CF9E7458();
  v62 = v69;
  sub_1CF9E6038();
  v63 = v62;
LABEL_14:
  sub_1CEFD5278(v63, type metadata accessor for Signpost);
}

void sub_1CF3E7180(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v67 = a3;
  v9 = sub_1CF9E6068();
  v66 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v63 - v15;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a1;
  v104 = a2;
  v65 = v5;
  if (v5[32] == 1)
  {
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDEBBE40;
    v19 = v66;
    v20 = v69;
    (*(v66 + 56))(v69, 1, 1, v9);
    sub_1CEFCCBDC(v20, v13, &unk_1EC4BED20, &unk_1CFA00700);
    v21 = *(v19 + 48);
    if (v21(v13, 1, v9) == 1)
    {
      v22 = v18;
      v63 = v18;
      v23 = v64;
      sub_1CF9E6048();
      v24 = v21(v13, 1, v9);
      v25 = v23;
      v18 = v63;
      if (v24 != 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v25 = v64;
      (*(v19 + 32))(v64, v13, v9);
    }

    v33 = v70;
    (*(v19 + 16))(v70, v25, v9);
    *&v33[*(v16 + 20)] = v18;
    v34 = &v33[*(v16 + 24)];
    *v34 = "SQLDB: Lookup item non syncable attributes";
    *(v34 + 1) = 42;
    v34[16] = 2;
    v35 = v18;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v19 + 8))(v25, v9);
    v36 = sub_1CEFCCC44(v69, &unk_1EC4BED20, &unk_1CFA00700);
    MEMORY[0x1EEE9AC00](v36);
    *(&v63 - 2) = v65;
    *(&v63 - 1) = &v103;
    v37 = v105;
    v38 = sub_1CF7D5474(sub_1CF483F54, (&v63 - 4), v67, v68);
    if (!v37)
    {
      v39 = v38;
      if ([v38 next])
      {
        v40 = sub_1CEFF12E8();
        sub_1CEFF14E0(v40, v39, 0, &v87);

        v40, v47, v48, v49, v50, v51, v52, v53;
        v83 = v99;
        v84 = v100;
        v85 = v101;
        v86 = v102;
        v79 = v95;
        v80 = v96;
        v81 = v97;
        v82 = v98;
        v75 = v91;
        v76 = v92;
        v77 = v93;
        v78 = v94;
        v71 = v87;
        v72 = v88;
        v73 = v89;
        v74 = v90;
        nullsub_1();
        v54 = v84;
        *(a5 + 192) = v83;
        *(a5 + 208) = v54;
        *(a5 + 224) = v85;
        *(a5 + 240) = v86;
        v55 = v80;
        *(a5 + 128) = v79;
        *(a5 + 144) = v55;
        v56 = v82;
        *(a5 + 160) = v81;
        *(a5 + 176) = v56;
        v57 = v76;
        *(a5 + 64) = v75;
        *(a5 + 80) = v57;
        v58 = v78;
        *(a5 + 96) = v77;
        *(a5 + 112) = v58;
        v59 = v72;
        *a5 = v71;
        *(a5 + 16) = v59;
        v60 = v73;
        v61 = v74;
      }

      else
      {

        sub_1CEFE528C(&v87);
        v41 = v100;
        *(a5 + 192) = v99;
        *(a5 + 208) = v41;
        *(a5 + 224) = v101;
        *(a5 + 240) = v102;
        v42 = v96;
        *(a5 + 128) = v95;
        *(a5 + 144) = v42;
        v43 = v98;
        *(a5 + 160) = v97;
        *(a5 + 176) = v43;
        v44 = v92;
        *(a5 + 64) = v91;
        *(a5 + 80) = v44;
        v45 = v94;
        *(a5 + 96) = v93;
        *(a5 + 112) = v45;
        v46 = v88;
        *a5 = v87;
        *(a5 + 16) = v46;
        v60 = v89;
        v61 = v90;
      }

      *(a5 + 32) = v60;
      *(a5 + 48) = v61;
    }

    sub_1CF9E7458();
    v62 = v70;
    sub_1CF9E6038();
    sub_1CEFD5278(v62, type metadata accessor for Signpost);
  }

  else
  {
    sub_1CEFE528C(&v87);
    v26 = v100;
    *(a5 + 192) = v99;
    *(a5 + 208) = v26;
    *(a5 + 224) = v101;
    *(a5 + 240) = v102;
    v27 = v96;
    *(a5 + 128) = v95;
    *(a5 + 144) = v27;
    v28 = v98;
    *(a5 + 160) = v97;
    *(a5 + 176) = v28;
    v29 = v92;
    *(a5 + 64) = v91;
    *(a5 + 80) = v29;
    v30 = v94;
    *(a5 + 96) = v93;
    *(a5 + 112) = v30;
    v31 = v88;
    *a5 = v87;
    *(a5 + 16) = v31;
    v32 = v90;
    *(a5 + 32) = v89;
    *(a5 + 48) = v32;
  }
}

uint64_t sub_1CF3E7768(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1CF9E6938();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_1CF9E7948();
  v43, v11, v12, v13, v14, v15, v16, v17;
  v42 = 0x205443454C4553;
  v43 = 0xE700000000000000;
  MEMORY[0x1D3868CC0](*(a2 + *a4), *(a2 + *a4 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;
  sub_1CF9E6918();
  v20 = sub_1CF9E68C8();
  v22 = v21;
  v19, v21, v23, v24, v25, v26, v27, v28;
  result = (*(v8 + 8))(v10, v7);
  if (v22 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v30 = sub_1CF9E5B48();
    sub_1CEFE48D8(v20, v22);
    v31 = [a1 bindObjectParameter_];

    v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v34 = v33;

    MEMORY[0x1D3868CC0](v32, v34);
    v34, v35, v36, v37, v38, v39, v40, v41;
    return v42;
  }

  return result;
}

uint64_t sub_1CF3E7998(void *a1, uint64_t a2, unint64_t a3, char a4, void *a5)
{
  sub_1CF9E7948();
  0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](*(a2 + *a5), *(a2 + *a5 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  if (!a4)
  {
    goto LABEL_5;
  }

  if (a4 != 1)
  {
    a3 = (a3 != 0) << 63;
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a3 = -a3;
  }

LABEL_7:
  v17 = [a1 bindLongParameter_];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  MEMORY[0x1D3868CC0](v18, v20);
  v20, v21, v22, v23, v24, v25, v26, v27;
  return 0x205443454C4553;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF3E7B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v103) = a5;
  v99 = a2;
  v100 = a4;
  v105 = a3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v106 = *(v104 - 1);
  MEMORY[0x1EEE9AC00](v104);
  v107 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v108 = v97 - v8;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v97 - v17;
  v19 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v19);
  v101 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = a1;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v10 + 56))(v18, 1, 1, v9);
  v98 = v18;
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v22 = *(v10 + 48);
  if (v22(v15, 1, v9) == 1)
  {
    v23 = v21;
    sub_1CF9E6048();
    if (v22(v15, 1, v9) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
  }

  v24 = v101;
  (*(v10 + 16))(v101, v12, v9);
  *(v24 + *(v19 + 20)) = v21;
  v25 = v24 + *(v19 + 24);
  *v25 = "SQLDB: Scan directory";
  *(v25 + 8) = 21;
  *(v25 + 16) = 2;
  v26 = v21;
  sub_1CF9E7468();
  v97[1] = v26;
  sub_1CF9E6038();
  (*(v10 + 8))(v12, v9);
  v27 = sub_1CEFCCC44(v98, &unk_1EC4BED20, &unk_1CFA00700);
  if (v99)
  {
    type metadata accessor for PaginatedContinuation();
    v27 = swift_dynamicCastClass();
    v28 = v102;
    v29 = v105;
    v30 = v108;
    if (!v27)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v28 = v102;
    v29 = v105;
    v30 = v108;
  }

  v31 = v109;
  MEMORY[0x1EEE9AC00](v27);
  v97[-6] = v28;
  LOBYTE(v97[-5]) = v29 & 1;
  v97[-4] = &v130;
  v97[-3] = v32;
  v95 = 200;
  v35 = sub_1CF7D5474(sub_1CF483E00, &v97[-8], v33, v34);
  if (v31)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CEFD5278(v24, type metadata accessor for Signpost);
  }

  v37 = v35;
  v100 = qword_1EDEBBD90;
  v99 = qword_1EDEBBD80;
  if (![v35 next])
  {
    v93 = 0;
    v94 = MEMORY[0x1E69E7CC0];
LABEL_37:

    if (*v94->tree == 200)
    {
      if (__OFADD__(v93, 1))
      {
        goto LABEL_49;
      }

      type metadata accessor for PaginatedContinuation();
      *(swift_allocObject() + 16) = v93 + 1;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v24, type metadata accessor for Signpost);
    return v94;
  }

  v109 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v38 = objc_autoreleasePoolPush();
    v103 = [v37 longAtIndex_];
    v39 = sub_1CF1CC7A8();
    sub_1CF241018(v37, v39, 1, v30);
    v39, v40, v41, v42, v43, v44, v45, v46;
    if (*(v28 + 32))
    {
      break;
    }

    if (v29)
    {
      v79 = *(v28 + v100);
      v80 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        goto LABEL_42;
      }

      v81 = [v37 unsignedLongAtIndex_];
      if (__OFADD__(v80, 1))
      {
        goto LABEL_43;
      }

      v82 = v81;
      v83 = [v37 unsignedLongAtIndex_];
      if (__OFADD__(v80, 2))
      {
        goto LABEL_44;
      }

      v84 = v83;
      v85 = [v37 unsignedLongAtIndex_];
      if (__OFADD__(v80, 3))
      {
        goto LABEL_45;
      }

      v86 = v85;
      v87 = [v37 unsignedLongAtIndex_];
      v30 = v108;
      v88 = v108 + v104[14];
      *v88 = v82;
      *(v88 + 8) = v84;
      *(v88 + 16) = v86;
      *(v88 + 24) = v87;
      *(v88 + 32) = 0;
      v28 = v102;
      goto LABEL_28;
    }

LABEL_29:
    sub_1CEFCCBDC(v30, v107, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v89 = v109;
    }

    else
    {
      v89 = sub_1CF1F7924(0, *v109->tree + 1, 1, v109);
    }

    v91 = *v89->tree;
    v90 = *v89->tester;
    if (v91 >= v90 >> 1)
    {
      v89 = sub_1CF1F7924((v90 > 1), v91 + 1, 1, v89);
    }

    *v89->tree = v91 + 1;
    v92 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v109 = v89;
    sub_1CEFE55D0(v107, v89 + v92 + *(v106 + 72) * v91, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v30 = v108;
    sub_1CEFCCC44(v108, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    objc_autoreleasePoolPop(v38);
    if (([v37 next] & 1) == 0)
    {
      v24 = v101;
      v93 = v103;
      v94 = v109;
      goto LABEL_37;
    }
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_29;
  }

  v47 = *(v28 + v100);
  if (!__OFADD__(v47, 1))
  {
    v48 = sub_1CEFF12E8();
    sub_1CEFF14E0(v48, v37, v47 + 1, v128);
    v48, v49, v50, v51, v52, v53, v54, v55;
    v122 = v128[12];
    v123 = v128[13];
    v124 = v128[14];
    v125 = v129;
    v118 = v128[8];
    v119 = v128[9];
    v120 = v128[10];
    v121 = v128[11];
    v114 = v128[4];
    v115 = v128[5];
    v116 = v128[6];
    v117 = v128[7];
    v110 = v128[0];
    v111 = v128[1];
    v112 = v128[2];
    v113 = v128[3];
    nullsub_1();
    v56 = v108 + v104[13];
    v57 = *(v56 + 208);
    v126[12] = *(v56 + 192);
    v126[13] = v57;
    v126[14] = *(v56 + 224);
    v127 = *(v56 + 240);
    v58 = *(v56 + 144);
    v126[8] = *(v56 + 128);
    v126[9] = v58;
    v59 = *(v56 + 176);
    v126[10] = *(v56 + 160);
    v126[11] = v59;
    v60 = *(v56 + 80);
    v126[4] = *(v56 + 64);
    v126[5] = v60;
    v61 = *(v56 + 112);
    v126[6] = *(v56 + 96);
    v126[7] = v61;
    v62 = *(v56 + 16);
    v126[0] = *v56;
    v126[1] = v62;
    v63 = *(v56 + 48);
    v126[2] = *(v56 + 32);
    v126[3] = v63;
    sub_1CEFCCC44(v126, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v64 = v123;
    *(v56 + 192) = v122;
    *(v56 + 208) = v64;
    *(v56 + 224) = v124;
    *(v56 + 240) = v125;
    v65 = v119;
    *(v56 + 128) = v118;
    *(v56 + 144) = v65;
    v66 = v121;
    *(v56 + 160) = v120;
    *(v56 + 176) = v66;
    v67 = v115;
    *(v56 + 64) = v114;
    *(v56 + 80) = v67;
    v68 = v117;
    *(v56 + 96) = v116;
    *(v56 + 112) = v68;
    v69 = v111;
    *v56 = v110;
    *(v56 + 16) = v69;
    v70 = v113;
    *(v56 + 32) = v112;
    *(v56 + 48) = v70;
    v71 = *(v28 + v99);
    v72 = __OFADD__(v47, v71);
    v73 = v47 + v71;
    if (v72)
    {
      goto LABEL_46;
    }

    v74 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_47;
    }

    v75 = [v37 unsignedLongAtIndex_];
    if (__OFADD__(v74, 1))
    {
      goto LABEL_48;
    }

    v76 = v75;
    v77 = [v37 unsignedLongAtIndex_];
    v30 = v108;
    v78 = v108 + v104[15];
    *v78 = v76;
    *(v78 + 8) = v77;
    *(v78 + 16) = 0;
LABEL_28:
    v29 = v105;
    goto LABEL_29;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v96 = 0;
  v95 = 1155;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF3E8548(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  LODWORD(v105) = a6;
  v101 = a3;
  v102 = a5;
  v107 = a4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v108 = *(v106 - 1);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v99 - v10;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v99 - v19;
  v21 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = a1;
  v132 = a2;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDEBBE40;
  (*(v12 + 56))(v20, 1, 1, v11);
  v100 = v20;
  sub_1CEFCCBDC(v20, v17, &unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(v12 + 48);
  if (v24(v17, 1, v11) == 1)
  {
    v25 = v23;
    sub_1CF9E6048();
    if (v24(v17, 1, v11) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
  }

  v26 = v103;
  (*(v12 + 16))(v103, v14, v11);
  *(v26 + *(v21 + 20)) = v23;
  v27 = v26 + *(v21 + 24);
  *v27 = "SQLDB: Scan directory";
  *(v27 + 8) = 21;
  *(v27 + 16) = 2;
  v28 = v23;
  sub_1CF9E7468();
  v99 = v28;
  sub_1CF9E6038();
  (*(v12 + 8))(v14, v11);
  v29 = sub_1CEFCCC44(v100, &unk_1EC4BED20, &unk_1CFA00700);
  if (v101)
  {
    type metadata accessor for PaginatedContinuation();
    v29 = swift_dynamicCastClass();
    v30 = v104;
    v31 = v107;
    v32 = v110;
    if (!v29)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v30 = v104;
    v31 = v107;
    v32 = v110;
  }

  v33 = v133;
  MEMORY[0x1EEE9AC00](v29);
  *(&v99 - 6) = v30;
  *(&v99 - 40) = v31 & 1;
  *(&v99 - 4) = &v131;
  *(&v99 - 3) = v34;
  v97 = 200;
  v37 = sub_1CF7D5474(sub_1CF483FC0, (&v99 - 8), v35, v36);
  if (v33)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CEFD5278(v26, type metadata accessor for Signpost);
  }

  v39 = v37;
  v102 = qword_1EDEBBD90;
  v101 = qword_1EDEBBD80;
  if (![v37 next])
  {
    v95 = 0;
    v96 = MEMORY[0x1E69E7CC0];
LABEL_37:

    if (*v96->tree == 200)
    {
      if (__OFADD__(v95, 1))
      {
        goto LABEL_49;
      }

      type metadata accessor for PaginatedContinuation();
      *(swift_allocObject() + 16) = v95 + 1;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v26, type metadata accessor for Signpost);
    return v96;
  }

  v133 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v40 = objc_autoreleasePoolPush();
    v105 = [v39 longAtIndex_];
    v41 = sub_1CF1CBB20();
    sub_1CF2408F8(v41, v39, 1, v32);
    v41, v42, v43, v44, v45, v46, v47, v48;
    if (v30[32])
    {
      break;
    }

    if (v31)
    {
      v81 = *&v30[v102];
      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_42;
      }

      v83 = [v39 unsignedLongAtIndex_];
      if (__OFADD__(v82, 1))
      {
        goto LABEL_43;
      }

      v84 = v83;
      v85 = [v39 unsignedLongAtIndex_];
      if (__OFADD__(v82, 2))
      {
        goto LABEL_44;
      }

      v86 = v85;
      v87 = [v39 unsignedLongAtIndex_];
      if (__OFADD__(v82, 3))
      {
        goto LABEL_45;
      }

      v88 = v87;
      v89 = [v39 unsignedLongAtIndex_];
      v32 = v110;
      v90 = v110 + v106[14];
      *v90 = v84;
      *(v90 + 8) = v86;
      *(v90 + 16) = v88;
      *(v90 + 24) = v89;
      *(v90 + 32) = 0;
      v30 = v104;
      goto LABEL_28;
    }

LABEL_29:
    sub_1CEFCCBDC(v32, v109, &unk_1EC4BE360, &qword_1CF9FE650);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v91 = v133;
    }

    else
    {
      v91 = sub_1CF1F7948(0, *v133->tree + 1, 1, v133);
    }

    v93 = *v91->tree;
    v92 = *v91->tester;
    if (v93 >= v92 >> 1)
    {
      v91 = sub_1CF1F7948((v92 > 1), v93 + 1, 1, v91);
    }

    *v91->tree = v93 + 1;
    v94 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v133 = v91;
    sub_1CEFE55D0(v109, v91 + v94 + *(v108 + 72) * v93, &unk_1EC4BE360, &qword_1CF9FE650);
    v32 = v110;
    sub_1CEFCCC44(v110, &unk_1EC4BE360, &qword_1CF9FE650);
    objc_autoreleasePoolPop(v40);
    if (([v39 next] & 1) == 0)
    {
      v26 = v103;
      v95 = v105;
      v96 = v133;
      goto LABEL_37;
    }
  }

  if ((v31 & 1) == 0)
  {
    goto LABEL_29;
  }

  v49 = *&v30[v102];
  if (!__OFADD__(v49, 1))
  {
    v50 = sub_1CEFF12E8();
    sub_1CEFF14E0(v50, v39, v49 + 1, v129);
    v50, v51, v52, v53, v54, v55, v56, v57;
    v123 = v129[12];
    v124 = v129[13];
    v125 = v129[14];
    v126 = v130;
    v119 = v129[8];
    v120 = v129[9];
    v121 = v129[10];
    v122 = v129[11];
    v115 = v129[4];
    v116 = v129[5];
    v117 = v129[6];
    v118 = v129[7];
    v111 = v129[0];
    v112 = v129[1];
    v113 = v129[2];
    v114 = v129[3];
    nullsub_1();
    v58 = v110 + v106[13];
    v59 = *(v58 + 208);
    v127[12] = *(v58 + 192);
    v127[13] = v59;
    v127[14] = *(v58 + 224);
    v128 = *(v58 + 240);
    v60 = *(v58 + 144);
    v127[8] = *(v58 + 128);
    v127[9] = v60;
    v61 = *(v58 + 176);
    v127[10] = *(v58 + 160);
    v127[11] = v61;
    v62 = *(v58 + 80);
    v127[4] = *(v58 + 64);
    v127[5] = v62;
    v63 = *(v58 + 112);
    v127[6] = *(v58 + 96);
    v127[7] = v63;
    v64 = *(v58 + 16);
    v127[0] = *v58;
    v127[1] = v64;
    v65 = *(v58 + 48);
    v127[2] = *(v58 + 32);
    v127[3] = v65;
    sub_1CEFCCC44(v127, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v66 = v124;
    *(v58 + 192) = v123;
    *(v58 + 208) = v66;
    *(v58 + 224) = v125;
    *(v58 + 240) = v126;
    v67 = v120;
    *(v58 + 128) = v119;
    *(v58 + 144) = v67;
    v68 = v122;
    *(v58 + 160) = v121;
    *(v58 + 176) = v68;
    v69 = v116;
    *(v58 + 64) = v115;
    *(v58 + 80) = v69;
    v70 = v118;
    *(v58 + 96) = v117;
    *(v58 + 112) = v70;
    v71 = v112;
    *v58 = v111;
    *(v58 + 16) = v71;
    v72 = v114;
    *(v58 + 32) = v113;
    *(v58 + 48) = v72;
    v73 = *&v30[v101];
    v74 = __OFADD__(v49, v73);
    v75 = v49 + v73;
    if (v74)
    {
      goto LABEL_46;
    }

    v76 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      goto LABEL_47;
    }

    v77 = [v39 unsignedLongAtIndex_];
    if (__OFADD__(v76, 1))
    {
      goto LABEL_48;
    }

    v78 = v77;
    v79 = [v39 unsignedLongAtIndex_];
    v32 = v110;
    v80 = v110 + v106[15];
    *v80 = v78;
    *(v80 + 8) = v79;
    *(v80 + 16) = 0;
LABEL_28:
    v31 = v107;
    goto LABEL_29;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v98 = 0;
  v97 = 1155;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

unint64_t sub_1CF3E8F9C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a6;
  v10 = sub_1CF9E6938();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 32) == 1)
  {
    v14 = 0xE000000000000000;
    if (a3)
    {
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
      MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD88), *(a2 + qword_1EDEBBD88 + 8));
      MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA46800);
      v15 = v71;
      v14 = v72;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v15 = 0xD000000000000079;
    }

    else
    {
      v15 = 0;
    }

    if (a3)
    {
      v14 = 0x80000001CFA46780;
    }

    else
    {
      v14 = 0xE000000000000000;
    }
  }

  v71 = 0;
  v72 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](v15, v14);
  v14, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;
  sub_1CF9E6918();
  v25 = sub_1CF9E68C8();
  v27 = v26;
  v24, v26, v28, v29, v30, v31, v32, v33;
  result = (*(v11 + 8))(v13, v10);
  if (v27 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v35 = sub_1CF9E5B48();
    sub_1CEFE48D8(v25, v27);
    v36 = [a1 bindObjectParameter_];

    v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v39 = v38;

    MEMORY[0x1D3868CC0](v37, v39);
    v39, v40, v41, v42, v43, v44, v45, v46;
    MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA46750);
    v47 = [a1 bindLongParameter_];
    v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v50 = v49;

    MEMORY[0x1D3868CC0](v48, v50);
    v50, v51, v52, v53, v54, v55, v56, v57;
    MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA3B360);
    v58 = [a1 bindLongParameter_];
    v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v61 = v60;

    MEMORY[0x1D3868CC0](v59, v61);
    v61, v62, v63, v64, v65, v66, v67, v68;
    return v71;
  }

  return result;
}

uint64_t sub_1CF3E9360(void *a1, uint64_t a2, char a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (*(a2 + 32) == 1)
  {
    v13 = 0xE000000000000000;
    if (a3)
    {
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
      MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD88), *(a2 + qword_1EDEBBD88 + 8));
      MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA46800);
      v14 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v14 = 0xD000000000000079;
    }

    else
    {
      v14 = 0;
    }

    if (a3)
    {
      v13 = 0x80000001CFA46780;
    }

    else
    {
      v13 = 0xE000000000000000;
    }
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](v14, v13);
  v13, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  if (!a5)
  {
    goto LABEL_15;
  }

  if (a5 != 1)
  {
    a4 = (a4 != 0) << 63;
    goto LABEL_17;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    a4 = -a4;
  }

LABEL_17:
  v22 = [a1 bindLongParameter_];
  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v25 = v24;

  MEMORY[0x1D3868CC0](v23, v25);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA46750);
  v33 = [a1 bindLongParameter_];
  v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v36 = v35;

  MEMORY[0x1D3868CC0](v34, v36);
  v36, v37, v38, v39, v40, v41, v42, v43;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA3B360);
  v44 = [a1 bindLongParameter_];
  v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v47 = v46;

  MEMORY[0x1D3868CC0](v45, v47);
  v47, v48, v49, v50, v51, v52, v53, v54;
  return v56;
}

unint64_t sub_1CF3E9678(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  return 0xD000000000000017;
}

uint64_t sub_1CF3E96F8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA46200);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA46260);
  return 0;
}

uint64_t sub_1CF3E97A0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA46200);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA46240);
  return 0;
}

void *sub_1CF3E9848(void *a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CF9FA440;
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDEA34B8;
  *(v8 + 32) = qword_1EDEA34B8;
  v10 = qword_1EDEA3498;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDEA34A0;
  *(v8 + 40) = qword_1EDEA34A0;
  v13 = v12;
  if ((a3 & 1) == 0)
  {
    v14 = sub_1CF7D5474(sub_1CF483E40, v3, a1, a2);
    if (v4)
    {
      v8, v15, v16, v17, v18, v19, v20, v21;
    }

    else
    {
      v22 = v14;
      v64 = a2;
      if ([v14 next])
      {
        do
        {
          v23 = objc_autoreleasePoolPush();
          v24 = [v22 stringAtIndex_];
          if (!v24)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v30 = v29;
            v31 = sub_1CF9E6888();
            v30, v32, v33, v34, v35, v36, v37, v38;
            v24 = v31;
          }

          v40 = *(v8 + 16);
          v39 = *(v8 + 24);
          if (v40 >= v39 >> 1)
          {
            v63 = v24;
            v8 = sub_1CF1F72E0((v39 > 1), (v40 + 1), 1, v8, v25, v26, v27, v28);
            v24 = v63;
          }

          *(v8 + 16) = v40 + 1;
          *(v8 + 8 * v40 + 32) = v24;
          objc_autoreleasePoolPop(v23);
        }

        while (([v22 next] & 1) != 0);
      }

      v41 = sub_1CF7D5474(sub_1CF483E48, v3, a1, v64);
      v43 = v41;
      if ([v41 next])
      {
        do
        {
          v44 = objc_autoreleasePoolPush();
          v45 = [v43 stringAtIndex_];
          if (!v45)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v51 = v50;
            v52 = sub_1CF9E6888();
            v51, v53, v54, v55, v56, v57, v58, v59;
            v45 = v52;
          }

          v61 = *(v8 + 16);
          v60 = *(v8 + 24);
          if (v61 >= v60 >> 1)
          {
            v62 = v45;
            v8 = sub_1CF1F72E0((v60 > 1), (v61 + 1), 1, v8, v46, v47, v48, v49);
            v45 = v62;
          }

          *(v8 + 16) = v61 + 1;
          *(v8 + 8 * v61 + 32) = v45;
          objc_autoreleasePoolPop(v44);
        }

        while (([v43 next] & 1) != 0);
      }
    }
  }

  return v8;
}

char *sub_1CF3E9B60(void *a1, uint64_t a2, char a3)
{
  v8 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5268();
  v75 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE628, &qword_1CF9FE460);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1CF9FA440;
  *(v14 + 32) = 0;
  *(v14 + 40) = 2;
  *(v14 + 48) = 1;
  *(v14 + 56) = 2;
  if (a3)
  {
    return v14;
  }

  v15 = sub_1CF7D5474(sub_1CF484008, v3, a1, a2);
  if (v4)
  {
    v14, v16, v17, v18, v19, v20, v21, v22;
    return v14;
  }

  v23 = a2;
  v24 = v15;
  v70 = v11;
  v71 = a1;
  v72 = v23;
  v73 = v3;
  v74 = 0;
  v68[1] = v10;
  v69 = v13;
  if ([v15 next])
  {
    do
    {
      v25 = objc_autoreleasePoolPush();
      v26 = [v24 longAtIndex_];
      if (v26 == 0x8000000000000000)
      {
        v32 = 2;
        v31 = 1;
      }

      else
      {
        v31 = v26;
        if (v26)
        {
          if (v26 < 0)
          {
            v31 = -v26;
            if (-v26 >> 32)
            {
              sub_1CF9E51B8();
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
              v58 = v69;
              v57 = v70;
              sub_1CF9E57D8();
              sub_1CF9E50D8();
              (*(v75 + 8))(v58, v57);
              swift_willThrow();
              objc_autoreleasePoolPop(v25);
LABEL_17:
              v14, v38, v39, v40, v41, v42, v43, v44;

              return v14;
            }

            v32 = 0;
          }

          else
          {
            v32 = 1;
          }
        }

        else
        {
          v32 = 2;
        }
      }

      v34 = *(v14 + 16);
      v33 = *(v14 + 24);
      if (v34 >= v33 >> 1)
      {
        v14 = sub_1CF1F67E4((v33 > 1), v34 + 1, 1, v14, v27, v28, v29, v30);
      }

      *(v14 + 16) = v34 + 1;
      v35 = v14 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v32;
      objc_autoreleasePoolPop(v25);
    }

    while (([v24 next] & 1) != 0);
  }

  v36 = v74;
  v37 = sub_1CF7D5474(sub_1CF484010, v73, v71, v72);
  if (v36)
  {
    goto LABEL_17;
  }

  v46 = v37;
  v74 = 0;
  if ([v37 next])
  {
    do
    {
      v47 = objc_autoreleasePoolPush();
      v48 = [v46 longAtIndex_];
      if (v48 == 0x8000000000000000)
      {
        v53 = 2;
        v48 = 1;
      }

      else if (v48)
      {
        if ((v48 & 0x8000000000000000) != 0)
        {
          v48 = -v48;
          if (HIDWORD(v48))
          {
            sub_1CF9E51B8();
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
            v60 = v69;
            v59 = v70;
            sub_1CF9E57D8();
            sub_1CF9E50D8();
            (*(v75 + 8))(v60, v59);
            swift_willThrow();
            objc_autoreleasePoolPop(v47);
            v14, v61, v62, v63, v64, v65, v66, v67;

            return v14;
          }

          v53 = 0;
        }

        else
        {
          v53 = 1;
        }
      }

      else
      {
        v53 = 2;
      }

      v55 = *(v14 + 16);
      v54 = *(v14 + 24);
      if (v55 >= v54 >> 1)
      {
        v73 = v48;
        v14 = sub_1CF1F67E4((v54 > 1), v55 + 1, 1, v14, v49, v50, v51, v52);
        v48 = v73;
      }

      *(v14 + 16) = v55 + 1;
      v56 = v14 + 16 * v55;
      *(v56 + 32) = v48;
      *(v56 + 40) = v53;
      objc_autoreleasePoolPop(v47);
    }

    while (([v46 next] & 1) != 0);
  }

  return v14;
}

uint64_t sub_1CF3EA078(void *a1, uint64_t a2)
{
  v4 = sub_1CF9E6938();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[0] = 0;
  v59[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  v8 = a2 + qword_1EDEBBD78;
  v9 = *(a2 + qword_1EDEBBD78);
  v10 = *(v8 + 8);
  MEMORY[0x1D3868CC0](v9, v10);
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA46A80);
  MEMORY[0x1D3868CC0](v9, v10);
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA46AA0);
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;
  sub_1CF9E6918();
  v13 = sub_1CF9E68C8();
  v15 = v14;
  v12, v14, v16, v17, v18, v19, v20, v21;
  v22 = *(v5 + 8);
  result = v22(v7, v4);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v24 = sub_1CF9E5B48();
    sub_1CEFE48D8(v13, v15);
    v25 = [a1 bindObjectParameter_];

    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v28 = v27;

    MEMORY[0x1D3868CC0](v26, v28);
    v28, v29, v30, v31, v32, v33, v34, v35;
    MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
    if (qword_1EDEA3498 != -1)
    {
      swift_once();
    }

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v37 = v36;
    sub_1CF9E6918();
    v38 = sub_1CF9E68C8();
    v40 = v39;
    v37, v39, v41, v42, v43, v44, v45, v46;
    result = v22(v7, v4);
    if (v40 >> 60 != 15)
    {
      v47 = sub_1CF9E5B48();
      sub_1CEFE48D8(v38, v40);
      v48 = [a1 bindObjectParameter_];

      v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v51 = v50;

      MEMORY[0x1D3868CC0](v49, v51);
      v51, v52, v53, v54, v55, v56, v57, v58;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      return v59[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3EA3F4(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  v4 = a2 + qword_1EDEBBD78;
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(v4 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA46A80);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA46AA0);
  v7 = [a1 bindLongParameter_];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v18 = [a1 bindLongParameter_];
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;

  MEMORY[0x1D3868CC0](v19, v21);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF3EA590(void *a1, uint64_t a2)
{
  v4 = sub_1CF9E6938();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[0] = 0;
  v59[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000099, 0x80000001CFA46870);
  v8 = a2 + qword_1EDEBBD78;
  v9 = *(a2 + qword_1EDEBBD78);
  v10 = *(v8 + 8);
  MEMORY[0x1D3868CC0](v9, v10);
  MEMORY[0x1D3868CC0](0xD0000000000000BFLL, 0x80000001CFA46910);
  MEMORY[0x1D3868CC0](v9, v10);
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA469D0);
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;
  sub_1CF9E6918();
  v13 = sub_1CF9E68C8();
  v15 = v14;
  v12, v14, v16, v17, v18, v19, v20, v21;
  v22 = *(v5 + 8);
  result = v22(v7, v4);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v24 = sub_1CF9E5B48();
    sub_1CEFE48D8(v13, v15);
    v25 = [a1 bindObjectParameter_];

    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v28 = v27;

    MEMORY[0x1D3868CC0](v26, v28);
    v28, v29, v30, v31, v32, v33, v34, v35;
    MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
    if (qword_1EDEA3498 != -1)
    {
      swift_once();
    }

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v37 = v36;
    sub_1CF9E6918();
    v38 = sub_1CF9E68C8();
    v40 = v39;
    v37, v39, v41, v42, v43, v44, v45, v46;
    result = v22(v7, v4);
    if (v40 >> 60 != 15)
    {
      v47 = sub_1CF9E5B48();
      sub_1CEFE48D8(v38, v40);
      v48 = [a1 bindObjectParameter_];

      v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v51 = v50;

      MEMORY[0x1D3868CC0](v49, v51);
      v51, v52, v53, v54, v55, v56, v57, v58;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      return v59[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3EA910(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000099, 0x80000001CFA46870);
  v4 = a2 + qword_1EDEBBD78;
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(v4 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD0000000000000BFLL, 0x80000001CFA46910);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA469D0);
  v7 = [a1 bindLongParameter_];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v18 = [a1 bindLongParameter_];
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;

  MEMORY[0x1D3868CC0](v19, v21);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF3EAAB0(uint64_t a1, uint64_t a2, int a3)
{
  v11 = MEMORY[0x1E69E7CC0];
  v6 = sub_1CF3E7B04(a1, 0, 1, a2, a3);
  for (i = v7; ; i = v9)
  {

    sub_1CF1E8F14(v6);

    if (!i)
    {
      break;
    }

    v6 = sub_1CF3E7B04(a1, i, 1, a2, a3);
  }

  return v11;
}

uint64_t sub_1CF3EABC4(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v13 = MEMORY[0x1E69E7CC0];
  v8 = sub_1CF3E8548(a1, a2, 0, 1, a3, a4);
  for (i = v9; ; i = v11)
  {

    sub_1CF1E8F38(v8);

    if (!i)
    {
      break;
    }

    v8 = sub_1CF3E8548(a1, a2, i, 1, a3, a4);
  }

  return v13;
}

void sub_1CF3EACE4(void *a1, uint64_t a2, id *a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v304 = a8;
  v316 = a7;
  v345 = a6;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v14 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312);
  v305 = (&v296 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v310 = &v296 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v319 = &v296 - v19;
  v311 = a3;
  v20 = *a3;
  v307 = a4;
  v308 = a5;
  v301 = a2;
  v21 = sub_1CF3EAAB0(v20, a4, a5);

  v318 = *v21->tree;
  if (!v318)
  {
LABEL_52:
    v21, v22, v23, v24, v25, v26, v27, v28;
    return;
  }

  v309 = v8;
  v29 = 0;
  v30 = v14;
  v317 = v21 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v303 = "♻️ Cycle -> <s:";
  v306 = v316 + 1;
  v31 = __OFADD__(v316, 1);
  v302 = v31;
  v297 = "ted in Global Progress:";
  v314 = 0x80000001CFA46670;
  v313 = *MEMORY[0x1E6967258];
  v298 = *MEMORY[0x1E6967298];
  v296 = *MEMORY[0x1E6967280];
  v32 = 1;
  v33 = v319;
  v315 = v21;
  v316 = v14;
  while (v29 < *v21->tree)
  {
    sub_1CEFCCBDC(&v317[*(v30 + 72) * v29], v33, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (v32)
    {
      v58 = v310;
      sub_1CEFCCBDC(v311, v310, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v59 = *(v58 + *(v312 + 48));
      v33 = v319;
      sub_1CEFCCC44(v58, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if (v59 != 1)
      {
        v60 = a1[3];
        v61 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v60);
        sub_1CF4FB2BC(0x1000000000000025, v303 | 0x8000000000000000, v60, v61);
      }
    }

    v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v64 = v63;
    v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v72 = v62;
    v73 = v65;
    if (v72 == v66 && v64 == v65)
    {
      v64, v65, v66, v67, v68, v69, v70, v71;
      v73, v95, v96, v97, v98, v99, v100, v101;
    }

    else
    {
      v75 = sub_1CF9E8048();
      v64, v76, v77, v78, v79, v80, v81, v82;
      v73, v83, v84, v85, v86, v87, v88, v89;
      if ((v75 & 1) == 0)
      {
        v90 = objc_autoreleasePoolPush();
        if (v302)
        {
          goto LABEL_55;
        }

        v342 = v345;
        v340 = v307;
        v341 = v308;
        if (v306 >= 61)
        {
          v91 = a1[3];
          v92 = a1[4];
          v93 = v90;
          __swift_project_boxed_opaque_existential_1(a1, v91);
          sub_1CF4FB2BC(0xD000000000000018, v297 | 0x8000000000000000, v91, v92);
          v94 = v93;
LABEL_50:
          objc_autoreleasePoolPop(v94);
          goto LABEL_9;
        }

        if (*v304 <= 0)
        {
          v286 = a1[3];
          v287 = a1[4];
          v288 = v90;
          __swift_project_boxed_opaque_existential_1(a1, v286);
          sub_1CF4FB2BC(0xD00000000000001BLL, 0x80000001CFA464D0, v286, v287);
          objc_autoreleasePoolPop(v288);
          v21, v289, v290, v291, v292, v293, v294, v295;
          sub_1CEFCCC44(v33, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          return;
        }

        v299 = *v304;
        v300 = v90;
        v156 = v305;
        sub_1CEFCCBDC(v33, v305, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v157 = *v156;
        v158 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v160 = v159;
        v162 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v168 = v158;
        v169 = v161;
        if (v168 == v162 && v160 == v161)
        {
          v160, v161, v162, v163, v164, v165, v166, v167;
          v169, v170, v171, v172, v173, v174, v175, v176;
          goto LABEL_38;
        }

        v211 = sub_1CF9E8048();
        v160, v212, v213, v214, v215, v216, v217, v218;
        v169, v219, v220, v221, v222, v223, v224, v225;
        if (v211)
        {
LABEL_38:
          v226 = v301;
          v227 = v309;
          sub_1CF3E6B78(v157, v307, v308, v322);
          v228 = v312;
          if (v227)
          {

            sub_1CEFE528C(&v324);
          }

          else
          {
            v336 = v322[12];
            v337 = v322[13];
            v338 = v322[14];
            v339 = v323;
            v332 = v322[8];
            v333 = v322[9];
            v334 = v322[10];
            v335 = v322[11];
            v328 = v322[4];
            v329 = v322[5];
            v330 = v322[6];
            v331 = v322[7];
            v324 = v322[0];
            v325 = v322[1];
            v326 = v322[2];
            v327 = v322[3];
          }

          v229 = v305 + v228[13];
          v230 = *(v229 + 13);
          v320[12] = *(v229 + 12);
          v320[13] = v230;
          v320[14] = *(v229 + 14);
          v321 = *(v229 + 30);
          v231 = *(v229 + 9);
          v320[8] = *(v229 + 8);
          v320[9] = v231;
          v232 = *(v229 + 11);
          v320[10] = *(v229 + 10);
          v320[11] = v232;
          v233 = *(v229 + 5);
          v320[4] = *(v229 + 4);
          v320[5] = v233;
          v234 = *(v229 + 7);
          v320[6] = *(v229 + 6);
          v320[7] = v234;
          v235 = *(v229 + 1);
          v320[0] = *v229;
          v320[1] = v235;
          v236 = *(v229 + 3);
          v320[2] = *(v229 + 2);
          v320[3] = v236;
          sub_1CEFCCC44(v320, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          v237 = v337;
          *(v229 + 12) = v336;
          *(v229 + 13) = v237;
          *(v229 + 14) = v338;
          *(v229 + 30) = v339;
          v238 = v333;
          *(v229 + 8) = v332;
          *(v229 + 9) = v238;
          v239 = v335;
          *(v229 + 10) = v334;
          *(v229 + 11) = v239;
          v240 = v329;
          *(v229 + 4) = v328;
          *(v229 + 5) = v240;
          v241 = v331;
          *(v229 + 6) = v330;
          *(v229 + 7) = v241;
          v242 = v325;
          *v229 = v324;
          *(v229 + 1) = v242;
          v243 = v327;
          *(v229 + 2) = v326;
          *(v229 + 3) = v243;
          if (*(v226 + 32))
          {
            v244 = sub_1CF3E518C(v157, v307, v308);
            v309 = 0;
            v156 = v305;
            v260 = v305 + v228[15];
            *v260 = v244;
            *(v260 + 1) = v261;
            v260[16] = v262 & 1;
          }

          else
          {
            sub_1CF3E4284(v157, v307, v308, v343);
            v309 = 0;
            v263 = v343[1];
            v264 = v344;
            v156 = v305;
            v265 = v305 + v228[14];
            *v265 = v343[0];
            *(v265 + 1) = v263;
            v265[32] = v264;
          }
        }

        else
        {
          v228 = v312;
        }

        if (*(v156 + v228[12]) != 1)
        {
          v266 = v156 + v228[14];
          *v266 = 0u;
          *(v266 + 1) = 0u;
          v266[32] = 1;
          v267 = v156 + v228[15];
          *v267 = 0;
          *(v267 + 1) = 0;
          v267[16] = 1;
        }

        v268 = a1[3];
        v269 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v268);
        v270 = sub_1CF814244();
        v272 = v271;
        sub_1CF4FB2BC(v270, v271, v268, v269);
        v272, v273, v274, v275, v276, v277, v278, v279;
        v280 = v304;
        *v304 = v299 - 1;
        v281 = a1[3];
        v282 = a1[4];
        v283 = __swift_project_boxed_opaque_existential_1(a1, v281);
        MEMORY[0x1EEE9AC00](v283);
        *(&v296 - 6) = v301;
        *(&v296 - 5) = v156;
        *(&v296 - 4) = &v340;
        *(&v296 - 3) = &v342;
        *(&v296 - 2) = v306;
        *(&v296 - 1) = v280;
        v284 = v309;
        sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF4858A8, (&v296 - 8), v281, MEMORY[0x1E69E7CA8] + 8, v282);
        v309 = v284;
        sub_1CEFCCC44(v156, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v33 = v319;
        v21 = v315;
        v30 = v316;
        v94 = v300;
        goto LABEL_50;
      }
    }

    v102 = a1[3];
    v103 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v102);
    *&v324 = 0;
    *(&v324 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v324 + 1), v104, v105, v106, v107, v108, v109, v110;
    *&v324 = 0x1000000000000013;
    *(&v324 + 1) = v314;
    v111 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v113 = v112;
    v115 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v121 = v114;
    if (v111 == v115 && v113 == v114)
    {
      v113, v114, v115, v116, v117, v118, v119, v120;
      v121, v34, v35, v36, v37, v38, v39, v40;
LABEL_7:
      v41 = 0xE500000000000000;
      v42 = 0x746F6F722ELL;
      goto LABEL_8;
    }

    v122 = sub_1CF9E8048();
    v113, v123, v124, v125, v126, v127, v128, v129;
    v121, v130, v131, v132, v133, v134, v135, v136;
    if (v122)
    {
      goto LABEL_7;
    }

    v137 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v139 = v138;
    v141 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v147 = v137;
    v148 = v140;
    if (v147 == v141 && v139 == v140)
    {
      v139, v140, v141, v142, v143, v144, v145, v146;
      v148, v149, v150, v151, v152, v153, v154, v155;
      v42 = 0x676E696B726F772ELL;
      v41 = 0xEB00000000746553;
    }

    else
    {
      v177 = sub_1CF9E8048();
      v139, v178, v179, v180, v181, v182, v183, v184;
      v148, v185, v186, v187, v188, v189, v190, v191;
      v42 = 0x676E696B726F772ELL;
      v41 = 0xEB00000000746553;
      if ((v177 & 1) == 0)
      {
        v192 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v194 = v193;
        v196 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v202 = v192;
        v203 = v195;
        if (v202 == v196 && v194 == v195)
        {
          v194, v195, v196, v197, v198, v199, v200, v201;
          v203, v204, v205, v206, v207, v208, v209, v210;
        }

        else
        {
          v245 = sub_1CF9E8048();
          v194, v246, v247, v248, v249, v250, v251, v252;
          v203, v253, v254, v255, v256, v257, v258, v259;
          if ((v245 & 1) == 0)
          {
            v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v41 = v285;
            goto LABEL_8;
          }
        }

        v41 = 0xE600000000000000;
        v42 = 0x68736172742ELL;
      }
    }

LABEL_8:
    MEMORY[0x1D3868CC0](v42, v41);
    v41, v43, v44, v45, v46, v47, v48, v49;
    MEMORY[0x1D3868CC0](0x3E2E2E2E20, 0xE500000000000000);
    v50 = *(&v324 + 1);
    sub_1CF4FB2BC(v324, *(&v324 + 1), v102, v103);
    v50, v51, v52, v53, v54, v55, v56, v57;
    v33 = v319;
    v21 = v315;
    v30 = v316;
LABEL_9:
    ++v29;
    sub_1CEFCCC44(v33, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v32 = 0;
    if (v318 == v29)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_1CF3EB7C4(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, int a7, char *a8, uint64_t *a9)
{
  v175 = a8;
  LODWORD(v10) = a7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v18 = *(v17 - 8);
  v172 = v17;
  v173 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v158 = &v152[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v166 = &v152[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v174 = &v152[-v23];
  v24 = *a3;
  v167 = a3;
  v25 = *(a3 + 8);
  v170 = a4;
  v171 = a5;
  v165 = a2;
  v26 = sub_1CF3EABC4(v24, v25, a4, a5);
  v178 = *v26->tree;
  if (!v178)
  {
    v26, v27, v28, v29, v30, v31, v32, v33;
    return;
  }

  v169 = v9;
  v34 = 0;
  v162 = a9;
  v35 = v173;
  v177 = v26 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
  v36 = v10 == 2;
  v37 = a6 == 1 && v10 == 2;
  v168 = (v175 + 1);
  v38 = __OFADD__(v175, 1);
  v164 = v38;
  v156 = "ted in Global Progress:";
  v157 = "♻️ Cycle -> <s:";
  if (a6)
  {
    v36 = 0;
  }

  v153 = v36;
  v154 = v37;
  v163 = 0x80000001CFA46670;
  if (a6)
  {
    v39 = 0x6873617274;
  }

  else
  {
    v39 = 1953460082;
  }

  v40 = 0xE500000000000000;
  if (!a6)
  {
    v40 = 0xE400000000000000;
  }

  v159 = v40;
  v160 = v39;
  v41 = 1;
  v205 = a6;
  v42 = v174;
  v176 = v26;
  v155 = v10;
  while (v34 < *v26->tree)
  {
    sub_1CEFCCBDC(&v177[*(v35 + 72) * v34], v42, &unk_1EC4BE360, &qword_1CF9FE650);
    if (v41)
    {
      v52 = v166;
      sub_1CEFCCBDC(v167, v166, &unk_1EC4BE360, &qword_1CF9FE650);
      v53 = v52[v172[12]];
      sub_1CEFCCC44(v52, &unk_1EC4BE360, &qword_1CF9FE650);
      if (v53 != 1)
      {
        v54 = a1[3];
        v55 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v54);
        sub_1CF4FB2BC(0x1000000000000025, v157 | 0x8000000000000000, v54, v55);
      }
    }

    v56 = *v42;
    if (*(v42 + 8))
    {
      v57 = v205;
      if (*(v42 + 8) == 1)
      {
        if (v10 == 1 && v56 == v205)
        {
          goto LABEL_30;
        }
      }

      else if (v56)
      {
        if (v154)
        {
          goto LABEL_30;
        }
      }

      else if (v153)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v57 = v205;
      if (!v10 && v56 == v205)
      {
LABEL_30:
        v58 = a1[3];
        v59 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v58);
        *&v183 = 0;
        *(&v183 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v183 + 1), v60, v61, v62, v63, v64, v65, v66;
        *&v183 = 0x1000000000000013;
        *(&v183 + 1) = v163;
        if (v10)
        {
          v68 = v159;
          v67 = v160;
          if (v10 == 1)
          {
            *&v181[0] = 0x284449656C6966;
            *(&v181[0] + 1) = 0xE700000000000000;
            *&v179[0] = v205;
            goto LABEL_44;
          }
        }

        else
        {
          *&v181[0] = 0x284449636F64;
          *(&v181[0] + 1) = 0xE600000000000000;
          LODWORD(v179[0]) = v205;
LABEL_44:
          v75 = sub_1CF9E7F98();
          v77 = v76;
          MEMORY[0x1D3868CC0](v75);
          v77, v78, v79, v80, v81, v82, v83, v84;
          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v68 = *(&v181[0] + 1);
          v67 = *&v181[0];
        }

        MEMORY[0x1D3868CC0](v67, v68);
        v68, v85, v86, v87, v88, v89, v90, v91;
        MEMORY[0x1D3868CC0](0x3E2E2E2E20, 0xE500000000000000);
        v92 = *(&v183 + 1);
        sub_1CF4FB2BC(v183, *(&v183 + 1), v58, v59);
        v92, v93, v94, v95, v96, v97, v98, v99;
        v35 = v173;
        v42 = v174;
        goto LABEL_18;
      }
    }

    v69 = objc_autoreleasePoolPush();
    if (v164)
    {
      goto LABEL_70;
    }

    v201 = v57;
    v202 = v10;
    v199 = v170;
    v200 = v171;
    v175 = v69;
    if (v168 < 61)
    {
      if (*v162 <= 0)
      {
        v143 = a1[3];
        v144 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v143);
        sub_1CF4FB2BC(0xD00000000000001BLL, 0x80000001CFA464D0, v143, v144);
        objc_autoreleasePoolPop(v175);
        v176, v145, v146, v147, v148, v149, v150, v151;
        sub_1CEFCCC44(v42, &unk_1EC4BE360, &qword_1CF9FE650);
        return;
      }

      v161 = *v162;
      v70 = v42;
      v71 = v158;
      sub_1CEFCCBDC(v70, v158, &unk_1EC4BE360, &qword_1CF9FE650);
      v72 = *v71;
      v73 = v71[8];
      if (v71[8])
      {
        v74 = v172;
        if (v73 == 1)
        {
          if (v202 != 1 || v72 != v201)
          {
            goto LABEL_63;
          }

LABEL_57:
          v100 = v169;
          sub_1CF3E7180(v72, v73, v170, v171, v181);
          if (v100)
          {

            sub_1CEFE528C(&v183);
          }

          else
          {
            v195 = v181[12];
            v196 = v181[13];
            v197 = v181[14];
            v198 = v182;
            v191 = v181[8];
            v192 = v181[9];
            v193 = v181[10];
            v194 = v181[11];
            v187 = v181[4];
            v188 = v181[5];
            v189 = v181[6];
            v190 = v181[7];
            v183 = v181[0];
            v184 = v181[1];
            v185 = v181[2];
            v186 = v181[3];
          }

          v101 = &v71[v74[13]];
          v102 = *(v101 + 13);
          v179[12] = *(v101 + 12);
          v179[13] = v102;
          v179[14] = *(v101 + 14);
          v180 = *(v101 + 30);
          v103 = *(v101 + 9);
          v179[8] = *(v101 + 8);
          v179[9] = v103;
          v104 = *(v101 + 11);
          v179[10] = *(v101 + 10);
          v179[11] = v104;
          v105 = *(v101 + 5);
          v179[4] = *(v101 + 4);
          v179[5] = v105;
          v106 = *(v101 + 7);
          v179[6] = *(v101 + 6);
          v179[7] = v106;
          v107 = *(v101 + 1);
          v179[0] = *v101;
          v179[1] = v107;
          v108 = *(v101 + 3);
          v179[2] = *(v101 + 2);
          v179[3] = v108;
          sub_1CEFCCC44(v179, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          v109 = v196;
          *(v101 + 12) = v195;
          *(v101 + 13) = v109;
          *(v101 + 14) = v197;
          *(v101 + 30) = v198;
          v110 = v192;
          *(v101 + 8) = v191;
          *(v101 + 9) = v110;
          v111 = v194;
          *(v101 + 10) = v193;
          *(v101 + 11) = v111;
          v112 = v188;
          *(v101 + 4) = v187;
          *(v101 + 5) = v112;
          v113 = v190;
          *(v101 + 6) = v189;
          *(v101 + 7) = v113;
          v114 = v184;
          *v101 = v183;
          *(v101 + 1) = v114;
          v115 = v186;
          *(v101 + 2) = v185;
          *(v101 + 3) = v115;
          v116 = *v71;
          v117 = v71[8];
          if (*(v165 + 32))
          {
            v118 = sub_1CF3E571C(v116, v117, v170, v171);
            v169 = 0;
            v119 = &v71[v74[15]];
            *v119 = v118;
            *(v119 + 1) = v120;
            v119[16] = v121 & 1;
          }

          else
          {
            sub_1CF3E4858(v116, v117, v170, v171, v203);
            v169 = 0;
            v122 = v203[1];
            v123 = v204;
            v124 = &v71[v74[14]];
            *v124 = v203[0];
            *(v124 + 1) = v122;
            v124[32] = v123;
          }

          goto LABEL_63;
        }

        if (v72)
        {
          if (v202 == 2 && v201 == 1)
          {
            goto LABEL_57;
          }
        }

        else if (v202 == 2 && !v201)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v74 = v172;
        if (!v202 && v72 == v201)
        {
          goto LABEL_57;
        }
      }

LABEL_63:
      if (v71[v74[12]] != 1)
      {
        v125 = &v71[v74[14]];
        *v125 = 0u;
        *(v125 + 1) = 0u;
        v125[32] = 1;
        v126 = &v71[v74[15]];
        *v126 = 0;
        *(v126 + 1) = 0;
        v126[16] = 1;
      }

      v127 = a1[3];
      v128 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v127);
      v129 = sub_1CF814758();
      v131 = v130;
      sub_1CF4FB2BC(v129, v130, v127, v128);
      v131, v132, v133, v134, v135, v136, v137, v138;
      v10 = v162;
      *v162 = v161 - 1;
      v139 = a1[3];
      v140 = a1[4];
      v141 = __swift_project_boxed_opaque_existential_1(a1, v139);
      MEMORY[0x1EEE9AC00](v141);
      *&v152[-48] = v165;
      *&v152[-40] = v71;
      *&v152[-32] = &v199;
      *&v152[-24] = &v201;
      v142 = v169;
      *&v152[-16] = v168;
      *&v152[-8] = v10;
      sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF4858C0, &v152[-64], v139, MEMORY[0x1E69E7CA8] + 8, v140);
      v169 = v142;
      sub_1CEFCCC44(v71, &unk_1EC4BE360, &qword_1CF9FE650);
      LOBYTE(v10) = v155;
      v35 = v173;
      v42 = v174;
      goto LABEL_17;
    }

    v43 = a1[3];
    v44 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v43);
    sub_1CF4FB2BC(0xD000000000000018, v156 | 0x8000000000000000, v43, v44);
LABEL_17:
    objc_autoreleasePoolPop(v175);
LABEL_18:
    ++v34;
    sub_1CEFCCC44(v42, &unk_1EC4BE360, &qword_1CF9FE650);
    v41 = 0;
    v26 = v176;
    if (v178 == v34)
    {
      v176, v45, v46, v47, v48, v49, v50, v51;
      return;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
}

void sub_1CF3EC154(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v158 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v152 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v164 = *(v13 - 8);
  v165 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v160 = (&v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v159 = &v152 - v16;
  v17 = type metadata accessor for SnapshotCounters(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v152 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 3000;
  if ((a2 & 1) == 0)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v191 = v19;
  v166 = a5;
  v167 = a3;
  v20 = sub_1CF3E9848(a4, a5, a2);
  if (v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1CF9FA440;
    if (qword_1EDEA34B0 != -1)
    {
      swift_once();
    }

    v29 = qword_1EDEA34B8;
    *(v28 + 32) = qword_1EDEA34B8;
    v30 = qword_1EDEA3498;
    v31 = v29;
    v32 = v164;
    if (v30 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDEA34A0;
    *(v28 + 40) = qword_1EDEA34A0;
    v34 = v33;
    v194 = 0;
    v35 = 2;
    v20 = v28;
    v36 = a4;
    goto LABEL_11;
  }

  v35 = *v20->tree;
  v194 = 0;
  if (v35)
  {
    v36 = a4;
    v32 = v164;
LABEL_11:
    tree = v32[1].tree;
    tester = v32[1].tester;
    v153 = "should fetch updated item ";
    v154 = v12;
    v37 = 32;
    v157 = v36;
    v164 = v20;
    do
    {
      v38 = *(&v20->super.isa + v37);
      v39 = v36;
      v40 = v194;
      sub_1CF3E6000(v38, v36, v166, v12);
      if (v40)
      {

        (*tester)(v12, 1, 1, v165);
        v194 = 0;
      }

      else
      {
        v194 = 0;
        v163 = v38;
        if ((*tree)(v12, 1, v165) != 1)
        {
          v41 = v12;
          v42 = v159;
          sub_1CEFE55D0(v41, v159, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v190 = v163;
          v188 = v36;
          v189 = v166;
          if (v191 > 0)
          {
            v156 = v191;
            v43 = v160;
            sub_1CEFCCBDC(v42, v160, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v44 = *v43;
            v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v47 = v46;
            v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v56 = v49;
            if (v45 == v48 && v47 == v49)
            {
              v47, v49, v50, v51, v52, v53, v54, v55;
              v56, v79, v80, v81, v82, v83, v84, v85;
            }

            else
            {
              v58 = sub_1CF9E8048();
              v47, v59, v60, v61, v62, v63, v64, v65;
              v56, v66, v67, v68, v69, v70, v71, v72;
              if ((v58 & 1) == 0)
              {
                v73 = v165;
                v74 = v160;
LABEL_33:
                if (*(v74 + v73[12]) != 1)
                {
                  v110 = v74 + v73[14];
                  *v110 = 0u;
                  *(v110 + 16) = 0u;
                  *(v110 + 32) = 1;
                  v111 = v74 + v73[15];
                  *v111 = 0;
                  *(v111 + 8) = 0;
                  *(v111 + 16) = 1;
                }

                v112 = v158;
                v113 = v158[3];
                v155 = v158[4];
                __swift_project_boxed_opaque_existential_1(v158, v113);
                v114 = sub_1CF814244();
                v115 = v74;
                v117 = v116;
                sub_1CF4FB2BC(v114, v116, v113, v155);
                v117, v118, v119, v120, v121, v122, v123, v124;
                v191 = v156 - 1;
                v125 = v112[3];
                v126 = v112[4];
                v127 = __swift_project_boxed_opaque_existential_1(v112, v125);
                MEMORY[0x1EEE9AC00](v127);
                *(&v152 - 6) = v167;
                *(&v152 - 5) = v115;
                *(&v152 - 4) = &v188;
                *(&v152 - 3) = &v190;
                *(&v152 - 2) = 1;
                *(&v152 - 1) = &v191;
                v128 = v194;
                sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF483D78, (&v152 - 8), v125, MEMORY[0x1E69E7CA8] + 8, v126);
                v194 = v128;
                sub_1CEFCCC44(v159, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                v78 = v115;
                v36 = v157;
LABEL_36:
                sub_1CEFCCC44(v78, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

                v12 = v154;
                v20 = v164;
                goto LABEL_14;
              }
            }

            v86 = v157;
            v87 = v194;
            sub_1CF3E6B78(v44, v157, v166, v170);
            if (v87)
            {

              sub_1CEFE528C(&v172);
            }

            else
            {
              v184 = v170[12];
              v185 = v170[13];
              v186 = v170[14];
              v187 = v171;
              v180 = v170[8];
              v181 = v170[9];
              v182 = v170[10];
              v183 = v170[11];
              v176 = v170[4];
              v177 = v170[5];
              v178 = v170[6];
              v179 = v170[7];
              v172 = v170[0];
              v173 = v170[1];
              v174 = v170[2];
              v175 = v170[3];
            }

            v73 = v165;
            v88 = v160 + v165[13];
            v89 = *(v88 + 13);
            v168[12] = *(v88 + 12);
            v168[13] = v89;
            v168[14] = *(v88 + 14);
            v169 = *(v88 + 30);
            v90 = *(v88 + 9);
            v168[8] = *(v88 + 8);
            v168[9] = v90;
            v91 = *(v88 + 11);
            v168[10] = *(v88 + 10);
            v168[11] = v91;
            v92 = *(v88 + 5);
            v168[4] = *(v88 + 4);
            v168[5] = v92;
            v93 = *(v88 + 7);
            v168[6] = *(v88 + 6);
            v168[7] = v93;
            v94 = *(v88 + 1);
            v168[0] = *v88;
            v168[1] = v94;
            v95 = *(v88 + 3);
            v168[2] = *(v88 + 2);
            v168[3] = v95;
            sub_1CEFCCC44(v168, &qword_1EC4BECF0, &unk_1CF9FEEB0);
            v96 = v185;
            *(v88 + 12) = v184;
            *(v88 + 13) = v96;
            *(v88 + 14) = v186;
            *(v88 + 30) = v187;
            v97 = v181;
            *(v88 + 8) = v180;
            *(v88 + 9) = v97;
            v98 = v183;
            *(v88 + 10) = v182;
            *(v88 + 11) = v98;
            v99 = v177;
            *(v88 + 4) = v176;
            *(v88 + 5) = v99;
            v100 = v179;
            *(v88 + 6) = v178;
            *(v88 + 7) = v100;
            v101 = v173;
            *v88 = v172;
            *(v88 + 1) = v101;
            v102 = v175;
            *(v88 + 2) = v174;
            *(v88 + 3) = v102;
            if (*(v167 + 32))
            {
              v103 = sub_1CF3E518C(v44, v86, v166);
              v194 = 0;
              v74 = v160;
              v104 = v160 + v73[15];
              *v104 = v103;
              *(v104 + 1) = v105;
              v104[16] = v106 & 1;
            }

            else
            {
              sub_1CF3E4284(v44, v86, v166, v192);
              v194 = 0;
              v107 = v192[1];
              v108 = v193;
              v74 = v160;
              v109 = v160 + v73[14];
              *v109 = v192[0];
              *(v109 + 1) = v107;
              v109[32] = v108;
            }

            goto LABEL_33;
          }

          v75 = v42;
          v76 = v158[3];
          v77 = v158[4];
          __swift_project_boxed_opaque_existential_1(v158, v76);
          sub_1CF4FB2BC(0xD00000000000001BLL, v153 | 0x8000000000000000, v76, v77);
          v36 = v39;
          v78 = v75;
          goto LABEL_36;
        }
      }

      sub_1CEFCCC44(v12, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v20 = v164;
LABEL_14:
      v37 += 8;
      --v35;
    }

    while (v35);
  }

  v20, v21, v22, v23, v24, v25, v26, v27;
  v129 = v158[3];
  v130 = v158[4];
  __swift_project_boxed_opaque_existential_1(v158, v129);
  strcpy(v170, "+ counters: ");
  BYTE13(v170[0]) = 0;
  HIWORD(v170[0]) = -5120;
  v131 = qword_1EDEBBA48;
  v132 = v167;
  swift_beginAccess();
  v133 = v152;
  sub_1CEFDA214(v132 + v131, v152, type metadata accessor for SnapshotCounters);
  v134 = sub_1CF6866E8();
  v136 = v135;
  MEMORY[0x1D3868CC0](v134);
  v136, v137, v138, v139, v140, v141, v142, v143;
  sub_1CEFD5278(v133, type metadata accessor for SnapshotCounters);
  v144 = *(&v170[0] + 1);
  sub_1CF4FB2BC(*&v170[0], *(&v170[0] + 1), v129, v130);
  v144, v145, v146, v147, v148, v149, v150, v151;
}
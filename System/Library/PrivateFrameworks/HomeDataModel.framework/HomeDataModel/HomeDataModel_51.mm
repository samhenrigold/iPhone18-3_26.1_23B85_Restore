uint64_t sub_1D1B5A834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v143 = type metadata accessor for TilesFilter(0);
  v3 = MEMORY[0x1EEE9AC00](v143);
  v144 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v142 = &v136 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v138 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v137 = &v136 - v9;
  v140 = type metadata accessor for IconTextValueStringDataHolder(0);
  v10 = MEMORY[0x1EEE9AC00](v140);
  v139 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v141 = &v136 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v147 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v146 = &v136 - v16;
  v161 = type metadata accessor for StaticService(0);
  v151 = *(v161 - 8);
  v17 = MEMORY[0x1EEE9AC00](v161);
  v19 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v150 = &v136 - v20;
  v21 = sub_1D1E66A7C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v136 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v148 = &v136 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v159 = &v136 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29);
  v34 = &v136 - v33;
  v35 = 0;
  v154 = a1;
  v38 = *(a1 + 64);
  v37 = a1 + 64;
  v36 = v38;
  v39 = 1 << *(v37 - 32);
  v167 = MEMORY[0x1E69E7CD0];
  v168 = MEMORY[0x1E69E7CD0];
  v166 = MEMORY[0x1E69E7CD0];
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v36;
  v42 = (v39 + 63) >> 6;
  v152 = v22;
  v153 = (v22 + 32);
  v163 = v31;
  v164 = 0x80000001D1EB2FE0;
  v157 = (v22 + 8);
  v158 = (v22 + 16);
  v160 = v19;
  v162 = &v136 - v33;
  v155 = v21;
  v156 = v37;
  v149 = v42;
  if ((v40 & v36) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v45 = v35;
LABEL_17:
    v48 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v49 = v48 | (v45 << 6);
    v50 = v154;
    v51 = v152;
    (*(v152 + 16))(v159, *(v154 + 48) + *(v152 + 72) * v49, v21);
    v52 = v150;
    sub_1D1B615D8(*(v50 + 56) + *(v151 + 72) * v49, v150, type metadata accessor for StaticService);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v54 = *(v53 + 48);
    v55 = *(v51 + 32);
    v31 = v163;
    v46 = v21;
    v55();
    sub_1D1B61510(v52, &v31[v54], type metadata accessor for StaticService);
    (*(*(v53 - 8) + 56))(v31, 0, 1, v53);
    v34 = v162;
    v42 = v149;
LABEL_18:
    sub_1D1741A90(v31, v34, &qword_1EC643C68, &unk_1D1E764C0);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v56 - 8) + 48))(v34, 1, v56) == 1)
    {
      break;
    }

    v57 = v160;
    sub_1D1B61510(&v34[*(v56 + 48)], v160, type metadata accessor for StaticService);
    v58 = *(v161 + 104);
    LOBYTE(v165) = *(v57 + v58);
    v59 = v165;
    ServiceKind.rawValue.getter();

    LOBYTE(v165) = v59;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v164 == v60)
    {
    }

    else
    {
      v61 = sub_1D1E6904C();

      if ((v61 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    LOBYTE(v165) = *(v57 + v58);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v164 == v62)
    {
    }

    else
    {
      v63 = sub_1D1E6904C();

      if ((v63 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v64 = *(v57 + *(v161 + 128));
    if (*(v64 + 16) && (v65 = sub_1D171D140(3), (v66 & 1) != 0))
    {
      v67 = v65;
      v68 = *(v64 + 56);
      v69 = type metadata accessor for StaticCharacteristic(0);
      v70 = *(v69 - 8);
      v71 = v68 + *(v70 + 72) * v67;
      v72 = v146;
      sub_1D1B615D8(v71, v146, type metadata accessor for StaticCharacteristic);
      (*(v70 + 56))(v72, 0, 1, v69);
    }

    else
    {
      v69 = type metadata accessor for StaticCharacteristic(0);
      v72 = v146;
      (*(*(v69 - 8) + 56))(v146, 1, 1, v69);
    }

    v73 = v147;
    sub_1D1741A90(v72, v147, &qword_1EC643630, &qword_1D1E71D10);
    type metadata accessor for StaticCharacteristic(0);
    result = (*(*(v69 - 8) + 48))(v73, 1, v69);
    if (result == 1)
    {
      sub_1D1741A30(v73, &qword_1EC643630, &qword_1D1E71D10);
      v57 = v160;
      goto LABEL_55;
    }

    v74 = v73 + *(v69 + 24);
    v75 = *v74;
    v76 = *(v74 + 16);
    v57 = v160;
    if (v76 > 2)
    {
      if (v76 > 4)
      {
        if (v76 != 6 && v76 != 5)
        {
          goto LABEL_54;
        }

        v75 = v75;
        if (v75 > 1)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v76 == 3)
        {
          v75 = v75;
        }

        else if ((v75 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        if (v75 > 1)
        {
LABEL_54:
          sub_1D1B61578(v73, type metadata accessor for StaticCharacteristic);
          goto LABEL_55;
        }
      }

LABEL_50:
      sub_1D1B61578(v73, type metadata accessor for StaticCharacteristic);
      if (v75 != 1)
      {
        goto LABEL_55;
      }

      goto LABEL_51;
    }

    if (v76)
    {
      if (v76 == 1)
      {
        v75 = v75;
        if (v75 > 1uLL)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v75 = v75;
        if (v75 > 1uLL)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_50;
    }

    sub_1D1B61578(v73, type metadata accessor for StaticCharacteristic);
    if ((v75 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_51:
    if (sub_1D1B4D4D4(v57))
    {
      goto LABEL_60;
    }

LABEL_55:
    LOBYTE(v165) = v59;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v164 == v77)
    {

      goto LABEL_59;
    }

    v78 = sub_1D1E6904C();

    if (v78)
    {
LABEL_59:
      if ((sub_1D1B4D4D4(v57) & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_60:
      v21 = v155;
      v31 = v163;
LABEL_66:
      v81 = v148;
      (*v158)(v148, v57, v21);
      v82 = v159;
      sub_1D1762CB8(v159, v81);
      v83 = *v157;
      (*v157)(v82, v21);
      sub_1D1B61578(v57, type metadata accessor for StaticService);
      v34 = v162;
      result = v83(v162, v21);
      v37 = v156;
      if (!v41)
      {
LABEL_7:
        if (v42 <= v35 + 1)
        {
          v43 = v35 + 1;
        }

        else
        {
          v43 = v42;
        }

        v44 = v43 - 1;
        while (1)
        {
          v45 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v45 >= v42)
          {
            v46 = v21;
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
            (*(*(v47 - 8) + 56))(v31, 1, 1, v47);
            v41 = 0;
            v35 = v44;
            goto LABEL_18;
          }

          v41 = *(v37 + 8 * v45);
          ++v35;
          if (v41)
          {
            v35 = v45;
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }
    }

    else
    {
LABEL_61:
      LOBYTE(v165) = v59;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v164 == v79)
      {

        v21 = v155;
        v31 = v163;
      }

      else
      {
        v80 = sub_1D1E6904C();

        v21 = v155;
        v31 = v163;
        if ((v80 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (sub_1D1B4D080(v57))
      {
        goto LABEL_66;
      }

LABEL_6:
      sub_1D1B61578(v57, type metadata accessor for StaticService);
      v34 = v162;
      result = (*v157)(v162, v21);
      v37 = v156;
      if (!v41)
      {
        goto LABEL_7;
      }
    }
  }

  v85 = v167;
  v84 = v168;
  v86 = *(v168 + 16);
  v87 = *(v167 + 16);
  v88 = __OFADD__(v86, v87);
  v89 = v86 + v87;
  if (v88)
  {
    goto LABEL_87;
  }

  v90 = v166;
  v91 = *(v166 + 16);
  v92 = v89 + v91;
  if (__OFADD__(v89, v91))
  {
LABEL_88:
    __break(1u);
    return result;
  }

  v93 = v46;

  v94 = sub_1D18C02C0(v85, v84);
  v95 = sub_1D18C02C0(v90, v94);
  v96 = sub_1D18C02C0(MEMORY[0x1E69E7CD0], v95);
  if (v92 <= 0)
  {

    v105 = type metadata accessor for FaucetStatusItem(0);
    return (*(*(v105 - 8) + 56))(v145, 1, 1, v105);
  }

  else
  {
    v97 = *(v85 + 16);
    if (v97 && v97 == v92)
    {

      static String.hfLocalized(_:)(0xD000000000000029, 0x80000001D1EC5580);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1D1E739C0;
      v99 = *(v85 + 16);

      v100 = MEMORY[0x1E69E65A8];
      *(v98 + 56) = MEMORY[0x1E69E6530];
      *(v98 + 64) = v100;
      *(v98 + 32) = v99;
      v164 = sub_1D1E6783C();
      v102 = v101;
      v103 = v138;
      v104 = v152;
    }

    else
    {

      v106 = *(v90 + 16);
      v103 = v138;
      v104 = v152;
      if (v106 && v106 == v92)
      {
        static String.hfLocalized(_:)(0xD000000000000029, 0x80000001D1EC5550);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_1D1E739C0;
        v108 = *(v90 + 16);

        v109 = MEMORY[0x1E69E65A8];
        *(v107 + 56) = MEMORY[0x1E69E6530];
        *(v107 + 64) = v109;
        *(v107 + 32) = v108;
      }

      else
      {

        static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5520);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v110 = swift_allocObject();
        v111 = MEMORY[0x1E69E6530];
        *(v110 + 16) = xmmword_1D1E739C0;
        v112 = MEMORY[0x1E69E65A8];
        *(v110 + 56) = v111;
        *(v110 + 64) = v112;
        *(v110 + 32) = v92;
      }

      v164 = sub_1D1E6783C();
      v102 = v113;
    }

    v114 = v137;
    (*(v104 + 56))(v137, 1, 1, v46);
    v115 = v114;
    v116 = static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EBD2D0);
    v118 = v117;
    sub_1D1741C08(v114, v103, &qword_1EC642590, qword_1D1E71260);
    v119 = *(v104 + 48);
    if (v119(v103, 1, v93) == 1)
    {
      v120 = v96;
      v121 = v136;
      sub_1D1E66A6C();
      v122 = v115;
      v123 = v121;
      v96 = v120;
      sub_1D1741A30(v122, &qword_1EC642590, qword_1D1E71260);
      if (v119(v103, 1, v93) != 1)
      {
        sub_1D1741A30(v103, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v115, &qword_1EC642590, qword_1D1E71260);
      v123 = v136;
      (*v153)(v136, v103, v93);
    }

    v124 = v139;
    (*v153)(v139, v123, v93);
    v125 = v140;
    v126 = (v124 + *(v140 + 20));
    *v126 = 0x662E746F67697073;
    v126[1] = 0xEB000000006C6C69;
    v127 = (v124 + v125[6]);
    *v127 = v116;
    v127[1] = v118;
    v128 = (v124 + v125[7]);
    *v128 = v164;
    v128[1] = v102;
    v129 = v124 + v125[8];
    *v129 = 0;
    *(v129 + 8) = 0;
    *(v129 + 16) = 0;
    *(v129 + 24) = -1;
    v130 = v141;
    v131 = sub_1D1B61510(v124, v141, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v131);
    *(&v136 - 2) = v96;
    v165 = v161;
    v132 = v142;
    sub_1D1E66C8C();

    swift_storeEnumTagMultiPayload();
    v133 = v144;
    sub_1D1B61510(v132, v144, type metadata accessor for TilesFilter);
    v134 = type metadata accessor for FaucetStatusItem(0);
    v135 = v145;
    *(v145 + v134[6]) = 6;
    *(v135 + v134[7]) = 3;
    sub_1D1B61510(v130, v135, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B61510(v133, v135 + v134[5], type metadata accessor for TilesFilter);
    return (*(*(v134 - 1) + 56))(v135, 0, 1, v134);
  }
}

uint64_t sub_1D1B5BAA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1741A90(*a1, a2, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B838, &qword_1D1E9AD38);
  sub_1D1741A90(a1[1], a2 + v4[12], &qword_1EC64B7A8, &qword_1D1E9ACA8);
  sub_1D1741A90(a1[2], a2 + v4[16], &qword_1EC64B840, &qword_1D1E9AD40);
  sub_1D1741A90(a1[3], a2 + v4[20], &qword_1EC64B848, &qword_1D1E9AD48);
  sub_1D1741A90(a1[4], a2 + v4[24], &qword_1EC64B850, &qword_1D1E9AD50);
  sub_1D1741A90(a1[5], a2 + v4[28], &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A90(a1[6], a2 + v4[32], &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A90(a1[7], a2 + v4[36], &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A90(a1[8], a2 + v4[40], &qword_1EC64B858, &qword_1D1E9AD58);
  sub_1D1741A90(a1[9], a2 + v4[44], &qword_1EC64B860, &qword_1D1E9AD60);
  return sub_1D1741A90(a1[10], a2 + v4[48], &qword_1EC64B868, &qword_1D1E9AD68);
}

uint64_t sub_1D1B5BC44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1741A90(*a1, a2, &qword_1EC64B768, &qword_1D1E9AC68);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B778, &qword_1D1E9AC78);
  sub_1D1741A90(a1[1], a2 + v4[12], &qword_1EC64B760, &qword_1D1E9AC60);
  sub_1D1741A90(a1[2], a2 + v4[16], &qword_1EC64B758, &qword_1D1E9AC58);
  sub_1D1741A90(a1[3], a2 + v4[20], &qword_1EC64B780, &qword_1D1E9AC80);
  sub_1D1741A90(a1[4], a2 + v4[24], &qword_1EC64B748, &qword_1D1E9AC48);
  sub_1D1741A90(a1[5], a2 + v4[28], &qword_1EC64B740, &qword_1D1E9AC40);
  sub_1D1741A90(a1[6], a2 + v4[32], &qword_1EC64B788, &qword_1D1E9AC88);
  sub_1D1741A90(a1[7], a2 + v4[36], &qword_1EC64B790, &qword_1D1E9AC90);
  sub_1D1741A90(a1[8], a2 + v4[40], &qword_1EC64B798, &qword_1D1E9AC98);
  sub_1D1741A90(a1[9], a2 + v4[44], &qword_1EC64B7A0, &qword_1D1E9ACA0);
  sub_1D1741A90(a1[10], a2 + v4[48], &qword_1EC64B7A8, &qword_1D1E9ACA8);
  sub_1D1741A90(a1[11], a2 + v4[52], &qword_1EC64B7B0, &qword_1D1E9ACB0);
  sub_1D1741A90(a1[12], a2 + v4[56], &qword_1EC64B7B8, &qword_1D1E9ACB8);
  sub_1D1741A90(a1[13], a2 + v4[60], &qword_1EC64B7C0, &qword_1D1E9ACC0);
  sub_1D1741A90(a1[14], a2 + v4[64], &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A90(a1[15], a2 + v4[68], &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A90(a1[16], a2 + v4[72], &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A90(a1[17], a2 + v4[76], &qword_1EC64B7E0, &qword_1D1E9ACE0);
  sub_1D1741A90(a1[18], a2 + v4[80], &qword_1EC64B7E8, &qword_1D1E9ACE8);
  sub_1D1741A90(a1[19], a2 + v4[84], &qword_1EC64B7F0, &qword_1D1E9ACF0);
  sub_1D1741A90(a1[20], a2 + v4[88], &qword_1EC64B7F8, &qword_1D1E9ACF8);
  sub_1D1741A90(a1[21], a2 + v4[92], &qword_1EC64B800, &qword_1D1E9AD00);
  sub_1D1741A90(a1[22], a2 + v4[96], &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A90(a1[23], a2 + v4[100], &qword_1EC64B810, &qword_1D1E9AD10);
  sub_1D1741A90(a1[24], a2 + v4[104], &qword_1EC64B818, &qword_1D1E9AD18);
  sub_1D1741A90(a1[25], a2 + v4[108], &qword_1EC64B820, &qword_1D1E9AD20);
  return sub_1D1741A90(a1[26], a2 + v4[112], &qword_1EC64B828, &qword_1D1E9AD28);
}

uint64_t sub_1D1B5BFE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B870, &qword_1D1E9AD70);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  sub_1D1741C08(*a1, &v14 - v6, &qword_1EC64B768, &qword_1D1E9AC68);
  v8 = v5[14];
  sub_1D1741C08(a1[1], &v7[v8], &qword_1EC64B760, &qword_1D1E9AC60);
  v9 = v5[18];
  sub_1D1741C08(a1[2], &v7[v9], &qword_1EC64B758, &qword_1D1E9AC58);
  v10 = v5[22];
  sub_1D1741C08(a1[3], &v7[v10], &qword_1EC64B750, &qword_1D1E9AC50);
  v11 = v5[26];
  sub_1D1741C08(a1[4], &v7[v11], &qword_1EC64B748, &qword_1D1E9AC48);
  v12 = v5[30];
  sub_1D1741C08(a1[5], &v7[v12], &qword_1EC64B740, &qword_1D1E9AC40);
  sub_1D1741A90(v7, a2, &qword_1EC64B768, &qword_1D1E9AC68);
  sub_1D1741A90(&v7[v8], a2 + v5[14], &qword_1EC64B760, &qword_1D1E9AC60);
  sub_1D1741A90(&v7[v9], a2 + v5[18], &qword_1EC64B758, &qword_1D1E9AC58);
  sub_1D1741A90(&v7[v10], a2 + v5[22], &qword_1EC64B750, &qword_1D1E9AC50);
  sub_1D1741A90(&v7[v11], a2 + v5[26], &qword_1EC64B748, &qword_1D1E9AC48);
  return sub_1D1741A90(&v7[v12], a2 + v5[30], &qword_1EC64B740, &qword_1D1E9AC40);
}

uint64_t sub_1D1B5C1F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B838, &qword_1D1E9AD38);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-1] - v6;
  sub_1D1741C08(*a1, &v20[-1] - v6, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  v20[0] = v7;
  v8 = &v7[v5[14]];
  sub_1D1741C08(a1[1], v8, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  v20[1] = v8;
  v9 = &v7[v5[18]];
  sub_1D1741C08(a1[2], v9, &qword_1EC64B840, &qword_1D1E9AD40);
  v20[2] = v9;
  v10 = &v7[v5[22]];
  sub_1D1741C08(a1[3], v10, &qword_1EC64B848, &qword_1D1E9AD48);
  v20[3] = v10;
  v11 = &v7[v5[26]];
  sub_1D1741C08(a1[4], v11, &qword_1EC64B850, &qword_1D1E9AD50);
  v20[4] = v11;
  v12 = &v7[v5[30]];
  sub_1D1741C08(a1[5], v12, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  v20[5] = v12;
  v13 = &v7[v5[34]];
  sub_1D1741C08(a1[6], v13, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  v20[6] = v13;
  v14 = &v7[v5[38]];
  sub_1D1741C08(a1[7], v14, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  v20[7] = v14;
  v15 = &v7[v5[42]];
  sub_1D1741C08(a1[8], v15, &qword_1EC64B858, &qword_1D1E9AD58);
  v20[8] = v15;
  v16 = &v7[v5[46]];
  sub_1D1741C08(a1[9], v16, &qword_1EC64B860, &qword_1D1E9AD60);
  v20[9] = v16;
  v17 = &v7[v5[50]];
  sub_1D1741C08(a1[10], v17, &qword_1EC64B868, &qword_1D1E9AD68);
  v20[10] = v17;
  return sub_1D1B5BAA4(v20, a2);
}

uint64_t sub_1D1B5C43C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B830, &qword_1D1E9AD30);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  sub_1D1741C08(*a1, &v11 - v6, &qword_1EC64B810, &qword_1D1E9AD10);
  v8 = *(v5 + 56);
  sub_1D1741C08(a1[1], &v7[v8], &qword_1EC64B818, &qword_1D1E9AD18);
  v9 = *(v5 + 72);
  sub_1D1741C08(a1[2], &v7[v9], &qword_1EC64B820, &qword_1D1E9AD20);
  sub_1D1741A90(v7, a2, &qword_1EC64B810, &qword_1D1E9AD10);
  sub_1D1741A90(&v7[v8], a2 + *(v5 + 56), &qword_1EC64B818, &qword_1D1E9AD18);
  return sub_1D1741A90(&v7[v9], a2 + *(v5 + 72), &qword_1EC64B820, &qword_1D1E9AD20);
}

uint64_t sub_1D1B5C58C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B778, &qword_1D1E9AC78);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36[-1] - v6;
  sub_1D1741C08(*a1, &v36[-1] - v6, &qword_1EC64B768, &qword_1D1E9AC68);
  v36[0] = v7;
  v8 = &v7[v5[14]];
  sub_1D1741C08(a1[1], v8, &qword_1EC64B760, &qword_1D1E9AC60);
  v36[1] = v8;
  v9 = &v7[v5[18]];
  sub_1D1741C08(a1[2], v9, &qword_1EC64B758, &qword_1D1E9AC58);
  v36[2] = v9;
  v10 = &v7[v5[22]];
  sub_1D1741C08(a1[3], v10, &qword_1EC64B780, &qword_1D1E9AC80);
  v36[3] = v10;
  v11 = &v7[v5[26]];
  sub_1D1741C08(a1[4], v11, &qword_1EC64B748, &qword_1D1E9AC48);
  v36[4] = v11;
  v12 = &v7[v5[30]];
  sub_1D1741C08(a1[5], v12, &qword_1EC64B740, &qword_1D1E9AC40);
  v36[5] = v12;
  v13 = &v7[v5[34]];
  sub_1D1741C08(a1[6], v13, &qword_1EC64B788, &qword_1D1E9AC88);
  v36[6] = v13;
  v14 = &v7[v5[38]];
  sub_1D1741C08(a1[7], v14, &qword_1EC64B790, &qword_1D1E9AC90);
  v36[7] = v14;
  v15 = &v7[v5[42]];
  sub_1D1741C08(a1[8], v15, &qword_1EC64B798, &qword_1D1E9AC98);
  v36[8] = v15;
  v16 = &v7[v5[46]];
  sub_1D1741C08(a1[9], v16, &qword_1EC64B7A0, &qword_1D1E9ACA0);
  v36[9] = v16;
  v17 = &v7[v5[50]];
  sub_1D1741C08(a1[10], v17, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  v36[10] = v17;
  v18 = &v7[v5[54]];
  sub_1D1741C08(a1[11], v18, &qword_1EC64B7B0, &qword_1D1E9ACB0);
  v36[11] = v18;
  v19 = &v7[v5[58]];
  sub_1D1741C08(a1[12], v19, &qword_1EC64B7B8, &qword_1D1E9ACB8);
  v36[12] = v19;
  v20 = &v7[v5[62]];
  sub_1D1741C08(a1[13], v20, &qword_1EC64B7C0, &qword_1D1E9ACC0);
  v36[13] = v20;
  v21 = &v7[v5[66]];
  sub_1D1741C08(a1[14], v21, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  v36[14] = v21;
  v22 = &v7[v5[70]];
  sub_1D1741C08(a1[15], v22, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  v36[15] = v22;
  v23 = &v7[v5[74]];
  sub_1D1741C08(a1[16], v23, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  v36[16] = v23;
  v24 = &v7[v5[78]];
  sub_1D1741C08(a1[17], v24, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  v36[17] = v24;
  v25 = &v7[v5[82]];
  sub_1D1741C08(a1[18], v25, &qword_1EC64B7E8, &qword_1D1E9ACE8);
  v36[18] = v25;
  v26 = &v7[v5[86]];
  sub_1D1741C08(a1[19], v26, &qword_1EC64B7F0, &qword_1D1E9ACF0);
  v36[19] = v26;
  v27 = &v7[v5[90]];
  sub_1D1741C08(a1[20], v27, &qword_1EC64B7F8, &qword_1D1E9ACF8);
  v36[20] = v27;
  v28 = &v7[v5[94]];
  sub_1D1741C08(a1[21], v28, &qword_1EC64B800, &qword_1D1E9AD00);
  v36[21] = v28;
  v29 = &v7[v5[98]];
  sub_1D1741C08(a1[22], v29, &qword_1EC64B808, &qword_1D1E9AD08);
  v36[22] = v29;
  v30 = &v7[v5[102]];
  sub_1D1741C08(a1[23], v30, &qword_1EC64B810, &qword_1D1E9AD10);
  v36[23] = v30;
  v31 = &v7[v5[106]];
  sub_1D1741C08(a1[24], v31, &qword_1EC64B818, &qword_1D1E9AD18);
  v36[24] = v31;
  v32 = &v7[v5[110]];
  sub_1D1741C08(a1[25], v32, &qword_1EC64B820, &qword_1D1E9AD20);
  v36[25] = v32;
  v33 = &v7[v5[114]];
  sub_1D1741C08(a1[26], v33, &qword_1EC64B828, &qword_1D1E9AD28);
  v36[26] = v33;
  return sub_1D1B5BC44(v36, a2);
}

uint64_t UmbrellaCategoryInformation.climateStatus(stateSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v121 = a2;
  v5 = sub_1D1E66A7C();
  v127 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v134 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B740, &qword_1D1E9AC40);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v120 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B748, &qword_1D1E9AC48);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v119 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v111 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B750, &qword_1D1E9AC50);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v117 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v114 = &v111 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B758, &qword_1D1E9AC58);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v115 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v113 = &v111 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B760, &qword_1D1E9AC60);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v125 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v111 - v26;
  v27 = type metadata accessor for StatusItemLocation(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v112 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B768, &qword_1D1E9AC68);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v124 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v122 = &v111 - v32;
  v33 = type metadata accessor for StaticService(0);
  v133 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v132 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v129 = &v111 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v126 = &v111 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v111 - v40;
  v42 = type metadata accessor for StaticAccessory(0);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v111 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v3 + 8);
  v47 = *(v3 + 24);
  v48 = MEMORY[0x1E69E7CC0];
  v49 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v138 = a1;
  v111 = sub_1D190104C(v49, sub_1D1B61450, v137, v47);
  v136 = a1;
  v50 = sub_1D1788F9C(sub_1D1B6146C, v135, v46);
  v139[0] = v48;
  v51 = v50[2];
  v131 = v5;
  if (v51)
  {
    v130 = v33;
    v52 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v128 = v50;
    v53 = v50 + v52;
    v54 = *(v43 + 72);
    do
    {
      v55 = sub_1D1B615D8(v53, v45, type metadata accessor for StaticAccessory);
      MEMORY[0x1EEE9AC00](v55);
      *(&v111 - 2) = v45;
      v57 = sub_1D17868B8(sub_1D1820ECC, (&v111 - 4), v56);
      sub_1D1B61578(v45, type metadata accessor for StaticAccessory);
      sub_1D17A54D8(v57);
      v53 += v54;
      v51 = (v51 - 1);
    }

    while (v51);

    v58 = v139[0];
    v33 = v130;
    v59 = v131;
  }

  else
  {

    v58 = MEMORY[0x1E69E7CC0];
    v59 = v5;
  }

  v60 = *(v58 + 16);
  v61 = v129;
  if (!v60)
  {
    v63 = MEMORY[0x1E69E7CC0];
LABEL_18:

    v69 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
    v130 = *(v63 + 16);
    if (!v130)
    {
LABEL_33:

      v91 = *(v127 + 56);
      v92 = v112;
      v91(v112, 1, 1, v59);

      v94 = v122;
      sub_1D1B34554(v93, v92, v122);
      v91(v92, 1, 1, v59);
      v95 = v123;
      sub_1D1B35B48(v69, v92, v123);
      v96 = v111;

      v98 = v113;
      sub_1D1B37208(v97, v113);

      v100 = v114;
      sub_1D1B53CE8(v99, v114);

      v102 = v116;
      sub_1D1B37BA0(v101, v116);
      v103 = v118;
      sub_1D1B38748(v96, v118);
      v104 = v124;
      sub_1D1741C08(v94, v124, &qword_1EC64B768, &qword_1D1E9AC68);
      v139[0] = v104;
      v105 = v125;
      sub_1D1741C08(v95, v125, &qword_1EC64B760, &qword_1D1E9AC60);
      v139[1] = v105;
      v106 = v115;
      sub_1D1741C08(v98, v115, &qword_1EC64B758, &qword_1D1E9AC58);
      v139[2] = v106;
      v107 = v117;
      sub_1D1741C08(v100, v117, &qword_1EC64B750, &qword_1D1E9AC50);
      v139[3] = v107;
      v108 = v119;
      sub_1D1741C08(v102, v119, &qword_1EC64B748, &qword_1D1E9AC48);
      v139[4] = v108;
      v109 = v120;
      sub_1D1741C08(v103, v120, &qword_1EC64B740, &qword_1D1E9AC40);
      v139[5] = v109;
      sub_1D1B5BFE4(v139, v121);
      sub_1D1741A30(v103, &qword_1EC64B740, &qword_1D1E9AC40);
      sub_1D1741A30(v102, &qword_1EC64B748, &qword_1D1E9AC48);
      sub_1D1741A30(v100, &qword_1EC64B750, &qword_1D1E9AC50);
      sub_1D1741A30(v98, &qword_1EC64B758, &qword_1D1E9AC58);
      sub_1D1741A30(v123, &qword_1EC64B760, &qword_1D1E9AC60);
      sub_1D1741A30(v122, &qword_1EC64B768, &qword_1D1E9AC68);
      sub_1D1741A30(v109, &qword_1EC64B740, &qword_1D1E9AC40);
      sub_1D1741A30(v108, &qword_1EC64B748, &qword_1D1E9AC48);
      sub_1D1741A30(v107, &qword_1EC64B750, &qword_1D1E9AC50);
      sub_1D1741A30(v106, &qword_1EC64B758, &qword_1D1E9AC58);
      sub_1D1741A30(v125, &qword_1EC64B760, &qword_1D1E9AC60);
      return sub_1D1741A30(v124, &qword_1EC64B768, &qword_1D1E9AC68);
    }

    v70 = 0;
    v129 = (v63 + ((*(v133 + 80) + 32) & ~*(v133 + 80)));
    v71 = (v127 + 16);
    v128 = (v127 + 8);
    v72 = v126;
    while (1)
    {
      if (v70 >= *(v63 + 16))
      {
        goto LABEL_35;
      }

      v73 = *(v133 + 72);
      sub_1D1B615D8(&v129[v73 * v70], v72, type metadata accessor for StaticService);
      v74 = *v71;
      (*v71)(v134, v72, v59);
      sub_1D1B615D8(v72, v132, type metadata accessor for StaticService);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139[0] = v69;
      v76 = sub_1D1742188();
      v78 = v69[2];
      v79 = (v77 & 1) == 0;
      v80 = __OFADD__(v78, v79);
      v81 = v78 + v79;
      if (v80)
      {
        goto LABEL_36;
      }

      v82 = v77;
      if (v69[3] < v81)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v90 = v76;
      sub_1D1735934();
      v76 = v90;
      v69 = v139[0];
      if (v82)
      {
LABEL_20:
        sub_1D1B61488(v132, v69[7] + v76 * v73);
        v59 = v131;
        (*v128)(v134, v131);
        sub_1D1B61578(v72, type metadata accessor for StaticService);
        goto LABEL_21;
      }

LABEL_29:
      v69[(v76 >> 6) + 8] |= 1 << v76;
      v84 = v127;
      v85 = v76;
      v86 = v134;
      v59 = v131;
      v74((v69[6] + *(v127 + 72) * v76), v134, v131);
      sub_1D1B61510(v132, v69[7] + v85 * v73, type metadata accessor for StaticService);
      v87 = *(v84 + 8);
      v72 = v126;
      v87(v86, v59);
      sub_1D1B61578(v72, type metadata accessor for StaticService);
      v88 = v69[2];
      v80 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v80)
      {
        goto LABEL_37;
      }

      v69[2] = v89;
LABEL_21:
      if (v130 == ++v70)
      {
        goto LABEL_33;
      }
    }

    sub_1D1723194(v81, isUniquelyReferenced_nonNull_native);
    v76 = sub_1D1742188();
    if ((v82 & 1) != (v83 & 1))
    {
      goto LABEL_38;
    }

LABEL_28:
    v69 = v139[0];
    if (v82)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  v62 = 0;
  v63 = MEMORY[0x1E69E7CC0];
  v130 = *(v58 + 16);
  while (v62 < *(v58 + 16))
  {
    v64 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    v65 = *(v133 + 72);
    sub_1D1B615D8(v58 + v64 + v65 * v62, v41, type metadata accessor for StaticService);
    if (v41[*(v33 + 96)] == 1)
    {
      sub_1D1B61510(v41, v61, type metadata accessor for StaticService);
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v139[0] = v63;
      if ((v66 & 1) == 0)
      {
        sub_1D17915E0(0, *(v63 + 16) + 1, 1);
        v61 = v129;
        v63 = v139[0];
      }

      v68 = *(v63 + 16);
      v67 = *(v63 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_1D17915E0(v67 > 1, v68 + 1, 1);
        v61 = v129;
        v63 = v139[0];
      }

      *(v63 + 16) = v68 + 1;
      sub_1D1B61510(v61, v63 + v64 + v68 * v65, type metadata accessor for StaticService);
      v60 = v130;
      v59 = v131;
    }

    else
    {
      sub_1D1B61578(v41, type metadata accessor for StaticService);
    }

    if (v60 == ++v62)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

void *UmbrellaCategoryInformation.climateStatusGaugeData(stateSnapshot:)(uint64_t a1)
{
  v3 = type metadata accessor for IconTextValueStringDataHolder(0);
  v73 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v75 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v5 = *(v69 - 8);
  v6 = MEMORY[0x1EEE9AC00](v69);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v74 = v67 - v9;
  v10 = *(v1 + 16);
  v11 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
  v77 = a1;
  v72 = sub_1D190104C(v11, sub_1D1B614EC, v76, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B770, &qword_1D1E9AC70);
  v12 = *(v5 + 72);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v68 = swift_allocObject();
  v14 = v68 + v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v16 = swift_allocObject();
  v70 = xmmword_1D1E739C0;
  *(v16 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642168 != -1)
  {
    swift_once();
  }

  v17 = *algn_1EC644B98;
  v18 = qword_1EC644BA0;
  v19 = unk_1EC644BA8;
  v20 = qword_1EC644BB0;
  *(v16 + 32) = qword_1EC644B90;
  *(v16 + 40) = v17;
  *(v16 + 48) = v18;
  *(v16 + 56) = v19;
  *(v16 + 64) = v20;

  v21 = v72;
  v22 = sub_1D1828A0C(v16, 1, 1, 1, v72);

  v78 = 1;
  static ClimateSummarizer._temperatureGaugeData(context:from:)(v22, v14);

  v71 = v14;
  v23 = v14 + v12;
  v67[1] = v15;
  v24 = swift_allocObject();
  *(v24 + 16) = v70;
  v25 = v12;
  if (qword_1EC642178 != -1)
  {
    swift_once();
  }

  v26 = *algn_1EC644BE8;
  v27 = qword_1EC644BF0;
  v28 = unk_1EC644BF8;
  v29 = qword_1EC644C00;
  *(v24 + 32) = qword_1EC644BE0;
  *(v24 + 40) = v26;
  *(v24 + 48) = v27;
  *(v24 + 56) = v28;
  *(v24 + 64) = v29;

  v30 = sub_1D1828A0C(v24, 1, 1, 1, v21);

  v31 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v30);

  v32 = *(v31 + 2);
  if (!v32)
  {
    (*(v73 + 56))(v23, 1, 1, v3);

    goto LABEL_15;
  }

  if (v32 > 3)
  {
    v34 = v32 & 0x7FFFFFFFFFFFFFFCLL;
    v36 = (v31 + 48);
    v35 = 0.0;
    v37 = v32 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v35 = v35 + *(v36 - 2) + *(v36 - 1) + *v36 + v36[1];
      v36 += 4;
      v37 -= 4;
    }

    while (v37);
    v33 = v23;
    if (v32 == v34)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v33 = v23;
    v34 = 0;
    v35 = 0.0;
  }

  v38 = v32 - v34;
  v39 = &v31[8 * v34 + 32];
  do
  {
    v40 = *v39++;
    v35 = v35 + v40;
    --v38;
  }

  while (v38);
LABEL_14:
  v41 = v35 / v32;
  v42 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
  v44 = v43;
  v45 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v31, 1);
  v47 = v46;

  sub_1D1E66A6C();
  v48 = v33 + v3[5];
  strcpy(v48, "humidity.fill");
  *(v48 + 14) = -4864;
  v49 = (v33 + v3[6]);
  *v49 = v42;
  v49[1] = v44;
  v50 = (v33 + v3[7]);
  *v50 = v45;
  v50[1] = v47;
  v51 = v33 + v3[8];
  *v51 = v41;
  *(v51 + 8) = xmmword_1D1E774F0;
  *(v51 + 24) = 1;
  (*(v73 + 56))(v33, 0, 1, v3);
LABEL_15:
  v52 = v71;
  v53 = swift_allocObject();
  *(v53 + 16) = v70;
  if (qword_1EC642170 != -1)
  {
    swift_once();
  }

  v54 = unk_1EC644BC0;
  v55 = qword_1EC644BC8;
  v56 = unk_1EC644BD0;
  v57 = qword_1EC644BD8;
  *(v53 + 32) = qword_1EC644BB8;
  *(v53 + 40) = v54;
  *(v53 + 48) = v55;
  *(v53 + 56) = v56;
  *(v53 + 64) = v57;

  v58 = sub_1D1828A0C(v53, 1, 1, 0, v72);

  static ClimateSummarizer._airQualityGaugeData(from:)(v52 + 2 * v25, v58);

  v59 = (v73 + 48);
  v60 = MEMORY[0x1E69E7CC0];
  v61 = 3;
  v62 = v52;
  v72 = v3;
  do
  {
    v63 = v74;
    sub_1D1741C08(v62, v74, &qword_1EC644C58, &unk_1D1E77530);
    sub_1D1741A90(v63, v8, &qword_1EC644C58, &unk_1D1E77530);
    if ((*v59)(v8, 1, v3) == 1)
    {
      sub_1D1741A30(v8, &qword_1EC644C58, &unk_1D1E77530);
    }

    else
    {
      sub_1D1B61510(v8, v75, type metadata accessor for IconTextValueStringDataHolder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1D177F6FC(0, v60[2] + 1, 1, v60);
      }

      v65 = v60[2];
      v64 = v60[3];
      if (v65 >= v64 >> 1)
      {
        v60 = sub_1D177F6FC((v64 > 1), v65 + 1, 1, v60);
      }

      v60[2] = v65 + 1;
      sub_1D1B61510(v75, v60 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v65, type metadata accessor for IconTextValueStringDataHolder);
      v3 = v72;
    }

    v62 += v25;
    --v61;
  }

  while (v61);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v60;
}

uint64_t sub_1D1B5DFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (*(v12 + 16) && (v13 = sub_1D1742188(), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for StaticAccessory(0);
    v18 = *(v17 - 8);
    sub_1D1B615D8(v16 + *(v18 + 72) * v15, v7, type metadata accessor for StaticAccessory);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for StaticAccessory(0);
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  return sub_1D1B0CF04(v7, v10);
}

uint64_t sub_1D1B5E234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v12 + 16) && (v13 = sub_1D1742188(), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for StaticService(0);
    v18 = *(v17 - 8);
    sub_1D1B615D8(v16 + *(v18 + 72) * v15, v7, type metadata accessor for StaticService);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for StaticService(0);
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  return sub_1D1B0D124(v7, v10);
}

void *UmbrellaCategoryInformation.climateStatusActivatedStaticAccessories(stateSnapshot:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v154 = &v127 - v4;
  v138 = type metadata accessor for IconTextValueStringDataHolder(0);
  v136 = *(v138 - 8);
  v5 = MEMORY[0x1EEE9AC00](v138);
  v137 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v131 = &v127 - v7;
  v162 = type metadata accessor for StaticService(0);
  v8 = *(v162 - 8);
  v9 = MEMORY[0x1EEE9AC00](v162);
  v150 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v127 = &v127 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v161 = &v127 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v152 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v127 - v17;
  v19 = sub_1D1E66A7C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v135 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v145 = (&v127 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v147 = (&v127 - v29);
  MEMORY[0x1EEE9AC00](v28);
  v156 = &v127 - v30;
  v31 = type metadata accessor for StaticAccessory(0);
  v160 = *(v31 - 8);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v143 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v128 = &v127 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v159 = &v127 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v155 = &v127 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v149 = (&v127 - v40);
  v41 = *(v1 + 16);
  v164 = a1;
  v42 = 0;
  v43 = sub_1D1788F9C(sub_1D1B61994, v163, v41);
  v130 = 0;
  v44 = v43[2];
  v148 = v8;
  v151 = v19;
  v146 = v27;
  v153 = v31;
  v144 = v44;
  v129 = v20;
  if (v44)
  {
    v45 = 0;
    v141 = (v20 + 48);
    v133 = (v20 + 32);
    v132 = (v20 + 8);
    v140 = (v8 + 56);
    v46 = MEMORY[0x1E69E7CC0];
    v139 = (v8 + 48);
    v47 = v145;
    v48 = v149;
    v134 = v18;
    v142 = v43;
    while (1)
    {
      if (v45 >= v43[2])
      {
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

        sub_1D1B61578(v19, type metadata accessor for StaticService);

        __break(1u);
        goto LABEL_121;
      }

      v158 = ((*(v160 + 80) + 32) & ~*(v160 + 80));
      v157 = *(v160 + 72);
      sub_1D1B615D8(&v158[v43 + v157 * v45], v48, type metadata accessor for StaticAccessory);
      sub_1D1741C08(v48 + *(v31 + 88), v18, &qword_1EC642590, qword_1D1E71260);
      if ((*v141)(v18, 1, v19) == 1)
      {
        sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        (*v133)(v47, v18, v19);
        v49 = *(v48 + *(v31 + 80));
        if (*(v49 + 16))
        {
          v50 = sub_1D1742188();
          if (v51)
          {
            sub_1D1B615D8(*(v49 + 56) + *(v148 + 72) * v50, v147, type metadata accessor for StaticService);
            (*v132)(v47, v19);
            v52 = 0;
            goto LABEL_14;
          }
        }

        (*v132)(v47, v19);
      }

      v52 = 1;
LABEL_14:
      v53 = v147;
      v54 = v162;
      (*v140)(v147, v52, 1, v162);
      v55 = v53;
      v56 = v156;
      sub_1D1741A90(v55, v156, &qword_1EC6436F0, &qword_1D1E99BC0);
      if ((*v139)(v56, 1, v54) == 1)
      {
        sub_1D1741A30(v56, &qword_1EC6436F0, &qword_1D1E99BC0);
        v42 = v152;
      }

      else
      {
        if (qword_1EE07AB30 != -1)
        {
          swift_once();
        }

        v57 = off_1EE07AB38;
        if (*(off_1EE07AB38 + 2))
        {
          v58 = v156[*(v162 + 104)];
          sub_1D1E6920C();
          v165 = v58;
          ServiceKind.rawValue.getter();
          sub_1D1E678EC();

          v59 = sub_1D1E6926C();
          v60 = -1 << v57[32];
          v61 = v59 & ~v60;
          if ((*&v57[((v61 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v61))
          {
            v62 = ~v60;
            while (1)
            {
              LOBYTE(v166[0]) = *(*(v57 + 6) + v61);
              v165 = v58;
              v63 = ServiceKind.rawValue.getter();
              v65 = v64;
              if (v63 == ServiceKind.rawValue.getter() && v65 == v66)
              {
                break;
              }

              v68 = sub_1D1E6904C();

              if (v68)
              {
                goto LABEL_4;
              }

              v61 = (v61 + 1) & v62;
              if (((*&v57[((v61 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v61) & 1) == 0)
              {
                goto LABEL_27;
              }
            }

LABEL_4:
            sub_1D1B61578(v156, type metadata accessor for StaticService);
            v48 = v149;
            sub_1D1B61578(v149, type metadata accessor for StaticAccessory);
            v42 = v152;
            v19 = v151;
            v27 = v146;
            v31 = v153;
            v18 = v134;
            goto LABEL_5;
          }
        }

LABEL_27:
        sub_1D1B61578(v156, type metadata accessor for StaticService);
        v42 = v152;
        v27 = v146;
        v31 = v153;
        v18 = v134;
      }

      v48 = v149;
      sub_1D1B61510(v149, v155, type metadata accessor for StaticAccessory);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v167 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D178CEB8(0, *(v46 + 16) + 1, 1);
        v48 = v149;
        v46 = v167;
      }

      v71 = *(v46 + 16);
      v70 = *(v46 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1D178CEB8((v70 > 1), v71 + 1, 1);
        v48 = v149;
        v46 = v167;
      }

      *(v46 + 16) = v71 + 1;
      sub_1D1B61510(v155, &v158[v46 + v71 * v157], type metadata accessor for StaticAccessory);
      v19 = v151;
LABEL_5:
      ++v45;
      v47 = v145;
      v43 = v142;
      if (v45 == v144)
      {
        goto LABEL_34;
      }
    }
  }

  v46 = MEMORY[0x1E69E7CC0];
  v42 = v152;
LABEL_34:

  v72 = MEMORY[0x1E69E7CC0];
  v156 = *(v46 + 16);
  if (v156)
  {
    v73 = 0;
    v155 = (v129 + 48);
    v147 = (v129 + 32);
    v145 = (v129 + 8);
    v149 = (v148 + 56);
    v144 = (v148 + 48);
    do
    {
      if (v73 >= *(v46 + 16))
      {
        goto LABEL_115;
      }

      v74 = v159;
      v158 = ((*(v160 + 80) + 32) & ~*(v160 + 80));
      v157 = *(v160 + 72);
      sub_1D1B615D8(&v158[v46 + v157 * v73], v159, type metadata accessor for StaticAccessory);
      v75 = v153;
      sub_1D1741C08(&v74[*(v153 + 22)], v42, &qword_1EC642590, qword_1D1E71260);
      if ((*v155)(v42, 1, v19) == 1)
      {
        sub_1D1741A30(v42, &qword_1EC642590, qword_1D1E71260);
        (*v149)(v27, 1, 1, v162);
        goto LABEL_47;
      }

      v76 = v135;
      (*v147)(v135, v42, v19);
      v77 = *&v74[*(v75 + 20)];
      if (*(v77 + 16))
      {

        v78 = sub_1D1742188();
        if (v79)
        {
          sub_1D1B615D8(*(v77 + 56) + *(v148 + 72) * v78, v146, type metadata accessor for StaticService);
          (*v145)(v76, v19);

          v80 = 0;
          goto LABEL_46;
        }
      }

      (*v145)(v76, v19);
      v80 = 1;
LABEL_46:
      v27 = v146;
      v81 = v162;
      (*v149)(v146, v80, 1, v162);
      if ((*v144)(v27, 1, v81) != 1)
      {
        v83 = v27[*(v162 + 104)];
        sub_1D1B61578(v27, type metadata accessor for StaticService);
        v82 = v83;
        goto LABEL_49;
      }

LABEL_47:
      sub_1D1741A30(v27, &qword_1EC6436F0, &qword_1D1E99BC0);
      v82 = 53;
LABEL_49:
      if (sub_1D17C5508(v82, &unk_1F4D65E18))
      {
        sub_1D1B61578(v159, type metadata accessor for StaticAccessory);
      }

      else
      {
        sub_1D1B61510(v159, v143, type metadata accessor for StaticAccessory);
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v166[0] = v72;
        if ((v84 & 1) == 0)
        {
          sub_1D178CEB8(0, *(v72 + 2) + 1, 1);
          v72 = v166[0];
        }

        v86 = *(v72 + 2);
        v85 = *(v72 + 3);
        if (v86 >= v85 >> 1)
        {
          sub_1D178CEB8((v85 > 1), v86 + 1, 1);
          v72 = v166[0];
        }

        *(v72 + 2) = v86 + 1;
        sub_1D1B61510(v143, &v158[v72 + v86 * v157], type metadata accessor for StaticAccessory);
        v42 = v152;
        v19 = v151;
      }

      ++v73;
    }

    while (v156 != v73);
  }

  v166[0] = MEMORY[0x1E69E7CC0];
  v87 = *(v72 + 2);
  if (v87)
  {
    v19 = *(v153 + 21);
    v88 = &v72[(*(v160 + 80) + 32) & ~*(v160 + 80)];
    v89 = *(v160 + 72);
    v42 = v130;
    v90 = v128;
    do
    {
      v91 = sub_1D1B615D8(v88, v90, type metadata accessor for StaticAccessory);
      MEMORY[0x1EEE9AC00](v91);
      *(&v127 - 2) = v90;
      v93 = sub_1D17868B8(sub_1D1823318, (&v127 - 4), v92);
      sub_1D1B61578(v90, type metadata accessor for StaticAccessory);
      sub_1D17A54D8(v93);
      v88 += v89;
      --v87;
    }

    while (v87);
  }

  else
  {

    v42 = v130;
  }

  v130 = v42;
  v94 = v166[0];
  v95 = v154;
  v160 = *(v166[0] + 2);
  if (v160)
  {
    v96 = 0;
    v159 = "00-8000-0026BB765291";
    v97 = MEMORY[0x1E69E7CC0];
    v157 = "73-8FBD-0E8978A33403";
    v158 = "17-A590-755E1AAC02AE";
    v156 = "60-AD68-D91053B75F44";
    v155 = "7E-BE63-1D00B1500545";
    v153 = "73-A058-C5E64BC487B2";
    v152 = "CE-986D-63B28F62C9E3";
    while (1)
    {
      if (v96 >= *(v94 + 2))
      {
        goto LABEL_116;
      }

      v98 = (*(v148 + 80) + 32) & ~*(v148 + 80);
      v19 = *(v148 + 72);
      v99 = v161;
      sub_1D1B615D8(&v94[v98 + v19 * v96], v161, type metadata accessor for StaticService);
      v100 = *(v99 + *(v162 + 112));
      if (v100 == 53)
      {
        LOBYTE(v100) = *(v161 + *(v162 + 104));
      }

      ++v96;
      LOBYTE(v167) = v100;
      ServiceKind.umbrellaCategory.getter(&v165);
      v101 = v158;
      if (v165 != 6)
      {
        v101 = v157;
      }

      v102 = v156;
      if (v165 != 4)
      {
        v102 = v155;
      }

      if (v165 <= 5u)
      {
        v101 = v102;
      }

      v103 = v153;
      if (v165 != 2)
      {
        v103 = v152;
      }

      v104 = v159;
      if (v165)
      {
        v104 = "13-AA62-01754F256DD5";
      }

      if (v165 <= 1u)
      {
        v103 = v104;
      }

      v105 = v165 <= 3u ? v103 : v101;
      if ((v105 | 0x8000000000000000) == 0x80000001D1EB36A0)
      {
        break;
      }

      v106 = sub_1D1E6904C();

      if (v106)
      {
        goto LABEL_85;
      }

      sub_1D1B61578(v161, type metadata accessor for StaticService);
LABEL_63:
      v95 = v154;
      if (v160 == v96)
      {
        goto LABEL_91;
      }
    }

LABEL_85:
    sub_1D1B61510(v161, v150, type metadata accessor for StaticService);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v166[0] = v97;
    if ((v107 & 1) == 0)
    {
      sub_1D17915E0(0, *(v97 + 2) + 1, 1);
      v97 = v166[0];
    }

    v42 = *(v97 + 2);
    v108 = *(v97 + 3);
    if (v42 >= v108 >> 1)
    {
      sub_1D17915E0(v108 > 1, v42 + 1, 1);
      v97 = v166[0];
    }

    *(v97 + 2) = v42 + 1;
    sub_1D1B61510(v150, &v97[v98 + v42 * v19], type metadata accessor for StaticService);
    goto LABEL_63;
  }

  v97 = MEMORY[0x1E69E7CC0];
LABEL_91:

  v166[0] = MEMORY[0x1E69E7CC8];
  v109 = *(v97 + 2);
  v42 = v130;
  if (v109)
  {
    v110 = 0;
    v111 = v148;
    v19 = v127;
    while (v110 < *(v97 + 2))
    {
      sub_1D1B615D8(&v97[((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v110], v19, type metadata accessor for StaticService);
      sub_1D1B5FBAC(v166, v19);
      if (v42)
      {
        goto LABEL_120;
      }

      ++v110;
      sub_1D1B61578(v19, type metadata accessor for StaticService);
      if (v109 == v110)
      {
        goto LABEL_96;
      }
    }

    goto LABEL_117;
  }

LABEL_96:

  v112 = v166[0];
  v113 = *(v166[0] + 2);
  if (v113)
  {
    v114 = sub_1D180446C(*(v166[0] + 2), 0);
    v115 = sub_1D1805BB4(v166, v114 + 32, v113, v112);
    v116 = v166[0];
    v19 = v166[1];
    swift_bridgeObjectRetain_n();
    sub_1D1716918(v116);
    if (v115 != v113)
    {
      goto LABEL_119;
    }

    v95 = v154;
  }

  else
  {

    v114 = MEMORY[0x1E69E7CC0];
  }

  v166[0] = v114;
  sub_1D1B60900(v166);
  if (v42)
  {
LABEL_121:

    __break(1u);
  }

  else
  {

    v117 = v166[0];
    v118 = *(v166[0] + 2);
    if (v118)
    {
      v119 = 0;
      v120 = (v136 + 48);
      v121 = MEMORY[0x1E69E7CC0];
      while (v119 < *(v117 + 2))
      {
        LOBYTE(v166[0]) = v117[v119 + 32];
        sub_1D1B60088(v166, v112, v95);
        if ((*v120)(v95, 1, v138) == 1)
        {
          sub_1D1741A30(v95, &qword_1EC644C58, &unk_1D1E77530);
        }

        else
        {
          v122 = v95;
          v123 = v131;
          sub_1D1B61510(v122, v131, type metadata accessor for IconTextValueStringDataHolder);
          sub_1D1B61510(v123, v137, type metadata accessor for IconTextValueStringDataHolder);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_1D177F6FC(0, v121[2] + 1, 1, v121);
          }

          v125 = v121[2];
          v124 = v121[3];
          v19 = v125 + 1;
          if (v125 >= v124 >> 1)
          {
            v121 = sub_1D177F6FC((v124 > 1), v125 + 1, 1, v121);
          }

          v121[2] = v19;
          sub_1D1B61510(v137, v121 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v125, type metadata accessor for IconTextValueStringDataHolder);
          v95 = v154;
        }

        if (v118 == ++v119)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_118;
    }

    v121 = MEMORY[0x1E69E7CC0];
LABEL_113:

    return v121;
  }

  return result;
}

uint64_t sub_1D1B5FA6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (*(v3 + 16) && (v4 = sub_1D1742188(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for StaticAccessory(0);
    v9 = *(v8 - 8);
    sub_1D1B615D8(v7 + *(v9 + 72) * v6, a2, type metadata accessor for StaticAccessory);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v11 = type metadata accessor for StaticAccessory(0);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_1D1B5FBAC(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v48 - v10;
  result = StaticService.isActivated.getter();
  if (result)
  {
    v48[0] = v6;
    v48[1] = v2;
    v13 = *(v5 + 112);
    v14 = *(a2 + v13);
    if (v14 == 53)
    {
      LOBYTE(v14) = *(a2 + *(v5 + 104));
    }

    v15 = 0xD000000000000024;
    LOBYTE(v49) = v14;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB2FB0 == v16)
    {
      goto LABEL_6;
    }

    v17 = sub_1D1E6904C();

    if (v17)
    {
      goto LABEL_8;
    }

    v33 = *(a2 + v13);
    if (v33 == 53)
    {
      LOBYTE(v33) = *(a2 + *(v5 + 104));
    }

    LOBYTE(v49) = v33;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB35B0 == v34)
    {
LABEL_6:

LABEL_8:
      sub_1D1B615D8(a2, v11, type metadata accessor for StaticService);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *a1;
      v19 = v49;
      v21 = sub_1D171E1AC(16);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        __break(1u);
LABEL_41:
        v19 = sub_1D177D048(0, v19[2] + 1, 1, v19);
        *(v15 + 8 * v21) = v19;
LABEL_17:
        v30 = v19[2];
        v29 = v19[3];
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v19 = sub_1D177D048((v29 > 1), v30 + 1, 1, v19);
          *(v15 + 8 * v21) = v19;
        }

LABEL_19:
        v32 = v48[0];
        v19[2] = v31;
        return sub_1D1B61510(v11, v19 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v30, type metadata accessor for StaticService);
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          *a1 = v19;
          if (v20)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_1D173CFF4();
          v19 = v49;
          *a1 = v49;
          if (v25)
          {
LABEL_16:
            v15 = v19[7];
            v19 = *(v15 + 8 * v21);
            v28 = swift_isUniquelyReferenced_nonNull_native();
            *(v15 + 8 * v21) = v19;
            if (v28)
            {
              goto LABEL_17;
            }

            goto LABEL_41;
          }
        }

LABEL_15:
        sub_1D19DD7E4();
        goto LABEL_16;
      }

      sub_1D172FBBC(v24, isUniquelyReferenced_nonNull_native);
      v19 = v49;
      v26 = sub_1D171E1AC(16);
      if ((v25 & 1) == (v27 & 1))
      {
        v21 = v26;
        *a1 = v19;
        if (v25)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_48:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }

    v35 = sub_1D1E6904C();

    if (v35)
    {
      goto LABEL_8;
    }

    v36 = *(a2 + v13);
    if (v36 == 53)
    {
      v36 = *(a2 + *(v5 + 104));
    }

    sub_1D1B615D8(a2, v9, type metadata accessor for StaticService);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v49 = *a1;
    v19 = v49;
    v39 = sub_1D171E1AC(v36);
    v40 = v19[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      __break(1u);
      goto LABEL_45;
    }

    v43 = v38;
    if (v19[3] >= v42)
    {
      if (v37)
      {
        *a1 = v19;
        if (v38)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_1D173CFF4();
        v19 = v49;
        *a1 = v49;
        if (v43)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      sub_1D172FBBC(v42, v37);
      v19 = v49;
      v44 = sub_1D171E1AC(v36);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_48;
      }

      v39 = v44;
      *a1 = v19;
      if (v43)
      {
LABEL_36:
        v15 = v19[7];
        v19 = *(v15 + 8 * v39);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *(v15 + 8 * v39) = v19;
        if (v46)
        {
LABEL_37:
          v30 = v19[2];
          v47 = v19[3];
          v31 = v30 + 1;
          if (v30 >= v47 >> 1)
          {
            v19 = sub_1D177D048((v47 > 1), v30 + 1, 1, v19);
            *(v15 + 8 * v39) = v19;
          }

          v11 = v9;
          goto LABEL_19;
        }

LABEL_45:
        v19 = sub_1D177D048(0, v19[2] + 1, 1, v19);
        *(v15 + 8 * v39) = v19;
        goto LABEL_37;
      }
    }

    sub_1D19DD7E4();
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1D1B60088@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = sub_1D1E66A7C();
  v6 = *(v84 - 8);
  v7 = MEMORY[0x1EEE9AC00](v84);
  v79 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v68 - v9;
  v10 = type metadata accessor for IconTextValueStringDataHolder(0);
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v68 - v16;
  v17 = type metadata accessor for StaticService(0);
  v87 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v68 - v21;
  if (!*(a2 + 16))
  {
    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  v22 = sub_1D171E1AC(*a1);
  if ((v23 & 1) == 0)
  {
    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  v24 = *(*(a2 + 56) + 8 * v22);
  if (!*(v24 + 16))
  {
    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  v88 = v6;
  v25 = v24 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
  v26 = v85;
  sub_1D1B615D8(v25, v85, type metadata accessor for StaticService);
  v86 = *(v17 + 104);
  v91[1] = *(v26 + v86);

  v27 = ServiceKind.serviceStatusCountString.getter();
  if (!v28)
  {
    sub_1D1B61578(v26, type metadata accessor for StaticService);

    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  v29 = v28;
  v30 = v27;
  (*(v88 + 56))(v83, 1, 1, v84);
  LOBYTE(v89) = *(v26 + v86);
  v91[0] = 5;
  Icon.init(serviceKind:serviceSubKind:)(&v90, &v89, v91);
  countAndFlagsBits = v90.accessoryControlOnStateIconInfo.name._countAndFlagsBits;
  object = v90.accessoryControlOnStateIconInfo.name._object;

  sub_1D18A98A0(&v90);
  v74 = v24;
  v31 = *(v24 + 16);
  if (v31 == 1)
  {

    v32 = v86;
    LOBYTE(v89) = *(v85 + v86);
    v73 = ServiceKind.localizedDescription.getter();
    v72 = v33;
    v34 = v32;
  }

  else
  {
    static String.hfLocalized(_:)(v30, v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E6530];
    *(v36 + 16) = xmmword_1D1E739C0;
    v38 = MEMORY[0x1E69E65A8];
    *(v36 + 56) = v37;
    *(v36 + 64) = v38;
    *(v36 + 32) = v31;
    v73 = sub_1D1E6784C();
    v72 = v39;

    v34 = v86;
  }

  v40 = *(v85 + v34);
  v41 = v82;
  if (v40 == 48)
  {
    v42 = StaticService.ventilationFanSimple.getter();
  }

  else if (v40 == 16)
  {
    v42 = StaticService.fanStringSimple.getter();
  }

  else
  {
    LOBYTE(v89) = 1;
    v91[0] = 0;
    v44 = StaticService.characteristicStateString(context:temperatureScale:)(&v89, v91);
    v43 = v44.value._object;
    v42 = v44.value._countAndFlagsBits;
  }

  v71 = v42;
  v70 = v43;
  v77 = v11;
  v78 = a3;
  if (v31)
  {
    v69 = v10;
    v89 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v31, 0);
    v45 = *(v87 + 72);
    v46 = v89;
    v47 = (v88 + 16);
    v86 = v88 + 32;
    v87 = v45;
    v48 = v84;
    v49 = v79;
    do
    {
      sub_1D1B615D8(v25, v20, type metadata accessor for StaticService);
      (*v47)(v49, v20, v48);
      sub_1D1B61578(v20, type metadata accessor for StaticService);
      v89 = v46;
      v51 = *(v46 + 16);
      v50 = *(v46 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1D178CEFC((v50 > 1), v51 + 1, 1);
        v46 = v89;
      }

      *(v46 + 16) = v51 + 1;
      (*(v88 + 32))(v46 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v51, v49, v48);
      v25 += v87;
      --v31;
    }

    while (v31);

    v10 = v69;
    v41 = v82;
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v52 = v83;
  sub_1D1741C08(v83, v41, &qword_1EC642590, qword_1D1E71260);
  v53 = v88;
  v54 = *(v88 + 48);
  v55 = v84;
  v56 = v54(v41, 1, v84);
  v57 = v80;
  if (v56 == 1)
  {
    sub_1D1E66A6C();
    sub_1D1741A30(v52, &qword_1EC642590, qword_1D1E71260);
    sub_1D1B61578(v85, type metadata accessor for StaticService);
    if (v54(v41, 1, v55) != 1)
    {
      sub_1D1741A30(v41, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    sub_1D1741A30(v52, &qword_1EC642590, qword_1D1E71260);
    sub_1D1B61578(v85, type metadata accessor for StaticService);
    (*(v53 + 32))(v57, v41, v55);
  }

  v58 = v81;
  (*(v53 + 32))(v81, v57, v55);
  v59 = &v58[v10[5]];
  v60 = object;
  *v59 = countAndFlagsBits;
  v59[1] = v60;
  v61 = &v58[v10[6]];
  v62 = v72;
  *v61 = v73;
  v61[1] = v62;
  v63 = &v58[v10[7]];
  v64 = v70;
  *v63 = v71;
  v63[1] = v64;
  v65 = &v58[v10[8]];
  *(v65 + 1) = 0;
  *(v65 + 2) = 0;
  *v65 = v46;
  v65[24] = 2;
  v66 = v58;
  v67 = v78;
  sub_1D1B61510(v66, v78, type metadata accessor for IconTextValueStringDataHolder);
  return (*(v77 + 56))(v67, 0, 1, v10);
}

uint64_t sub_1D1B60900(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1E0C0E4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1D1B6096C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D1B6096C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D1E67C8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D1B60B54(v7, v8, a1, v4);
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
    return sub_1D1B60A64(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1B60A64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + a3);
    v7 = result - a3;
LABEL_5:
    result = *(v5 + v4);
    v8 = v7;
    v9 = v6;
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = sub_1D18E44D0(result, &unk_1F4D65DF0);
      v13 = (v12 & 1) != 0 ? 0 : v11;
      result = sub_1D18E44D0(v10, &unk_1F4D65DF0);
      if (v14)
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= result)
      {
        goto LABEL_4;
      }

      if (!v5)
      {
        break;
      }

      result = *v9;
      *v9 = *(v9 - 1);
      *--v9 = result;
      if (__CFADD__(v8++, 1))
      {
LABEL_4:
        ++v4;
        ++v6;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B60B54(uint64_t result, uint64_t a2, unsigned __int8 **a3, uint64_t a4)
{
  v6 = v4;
  v98 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v90 = v6;
      v91 = *(v9 + 2);
      if (v91 >= 2)
      {
        while (*a3)
        {
          v6 = *&v9[16 * v91];
          v92 = *&v9[16 * v91 + 24];
          sub_1D1B611CC(&(*a3)[v6], &(*a3)[*&v9[16 * v91 + 16]], &(*a3)[v92], v5);
          if (v90)
          {
          }

          if (v92 < v6)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D1E0BE44(v9);
          }

          if (v91 - 2 >= *(v9 + 2))
          {
            goto LABEL_137;
          }

          v93 = &v9[16 * v91];
          *v93 = v6;
          *(v93 + 1) = v92;
          result = sub_1D1E0BDB8(v91 - 1);
          v91 = *(v9 + 2);
          if (v91 <= 1)
          {
          }
        }

        goto LABEL_147;
      }
    }

LABEL_143:
    result = sub_1D1E0BE44(v9);
    v9 = result;
    goto LABEL_112;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v5 = *a3;
      v12 = (*a3)[v8];
      v13 = sub_1D18E44D0((*a3)[v11], &unk_1F4D65DF0);
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13;
      }

      v100 = v15;
      result = sub_1D18E44D0(v12, &unk_1F4D65DF0);
      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = result;
      }

      v18 = v8 + 2;
      if (v8 + 2 < v7)
      {
        v95 = v8;
        do
        {
          v19 = v18;
          v20 = &v5[v18];
          v21 = *(v20 - 1);
          v22 = sub_1D18E44D0(*v20, &unk_1F4D65DF0);
          if (v23)
          {
            v24 = 0;
          }

          else
          {
            v24 = v22;
          }

          result = sub_1D18E44D0(v21, &unk_1F4D65DF0);
          if (v25)
          {
            if (v100 < v17 == v24 >= 0)
            {
              goto LABEL_20;
            }
          }

          else if (v100 < v17 == v24 >= result)
          {
LABEL_20:
            v18 = v19;
            goto LABEL_22;
          }

          v18 = v19 + 1;
        }

        while (v7 != v19 + 1);
        v18 = v7;
LABEL_22:
        v10 = v95;
      }

      if (v100 >= v17)
      {
        goto LABEL_33;
      }

      if (v18 < v10)
      {
        goto LABEL_140;
      }

      if (v10 >= v18)
      {
LABEL_33:
        v11 = v18;
      }

      else
      {
        v11 = v18;
        v26 = v18 - 1;
        v27 = v10;
        do
        {
          if (v27 != v26)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_146;
            }

            v28 = v30[v27];
            v30[v27] = v30[v26];
            v30[v26] = v28;
          }
        }

        while (++v27 < v26--);
      }
    }

    v31 = a3[1];
    v8 = v11;
    if (v11 >= v31)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_139;
    }

    if (v11 - v10 >= a4)
    {
LABEL_42:
      v8 = v11;
LABEL_43:
      if (v8 < v10)
      {
        goto LABEL_138;
      }

      goto LABEL_44;
    }

    v32 = (v10 + a4);
    if (__OFADD__(v10, a4))
    {
      goto LABEL_141;
    }

    if (v32 >= v31)
    {
      v32 = a3[1];
    }

    if (v32 < v10)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v11 == v32)
    {
      goto LABEL_42;
    }

    v94 = v6;
    v96 = v10;
    v5 = *a3;
    v79 = &(*a3)[v11];
    v80 = v10 - v11;
    v99 = v32;
LABEL_95:
    v101 = v11;
    v81 = v5[v11];
    v82 = v80;
    v83 = v79;
LABEL_96:
    v84 = *(v83 - 1);
    v85 = sub_1D18E44D0(v81, &unk_1F4D65DF0);
    v87 = (v86 & 1) != 0 ? 0 : v85;
    result = sub_1D18E44D0(v84, &unk_1F4D65DF0);
    if (v88)
    {
      if ((v87 & 0x8000000000000000) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (v87 >= result)
    {
      goto LABEL_94;
    }

    if (!v5)
    {
      break;
    }

    v81 = *v83;
    *v83 = *(v83 - 1);
    *--v83 = v81;
    if (!__CFADD__(v82++, 1))
    {
      goto LABEL_96;
    }

LABEL_94:
    v11 = v101 + 1;
    ++v79;
    --v80;
    if ((v101 + 1) != v99)
    {
      goto LABEL_95;
    }

    v8 = v99;
    v6 = v94;
    v10 = v96;
    if (v99 < v96)
    {
      goto LABEL_138;
    }

LABEL_44:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v34 = *(v9 + 2);
    v33 = *(v9 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_1D177D070((v33 > 1), v34 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v35;
    v36 = &v9[16 * v34];
    *(v36 + 4) = v10;
    *(v36 + 5) = v8;
    v37 = *v98;
    if (!*v98)
    {
      goto LABEL_148;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v9 + 4);
          v40 = *(v9 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_63:
          if (v42)
          {
            goto LABEL_127;
          }

          v55 = &v9[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_130;
          }

          v61 = &v9[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_134;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v65 = &v9[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_77:
        if (v60)
        {
          goto LABEL_129;
        }

        v68 = &v9[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_132;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_84:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
          __break(1u);
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v5 = *&v9[16 * v76 + 32];
        v77 = *&v9[16 * v38 + 40];
        sub_1D1B611CC(&v5[*a3], &(*a3)[*&v9[16 * v38 + 32]], &(*a3)[v77], v37);
        if (v6)
        {
        }

        if (v77 < v5)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D1E0BE44(v9);
        }

        if (v76 >= *(v9 + 2))
        {
          goto LABEL_124;
        }

        v78 = &v9[16 * v76];
        *(v78 + 4) = v5;
        *(v78 + 5) = v77;
        result = sub_1D1E0BDB8(v38);
        v35 = *(v9 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v9[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_125;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_126;
      }

      v50 = &v9[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_128;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_131;
      }

      if (v54 >= v46)
      {
        v72 = &v9[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_135;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_110;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_1D1B611CC(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      v33 = v4;
LABEL_30:
      v20 = v6 - 1;
      --v5;
      v21 = v10;
      v22 = v10;
      do
      {
        v23 = *--v22;
        v24 = v20;
        v25 = *v20;
        v26 = sub_1D18E44D0(v23, &unk_1F4D65DF0);
        if (v27)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        v29 = sub_1D18E44D0(v25, &unk_1F4D65DF0);
        if (v30)
        {
          if (v28 < 0)
          {
            goto LABEL_43;
          }
        }

        else if (v28 < v29)
        {
LABEL_43:
          v31 = v24;
          if (v5 + 1 < v6 || v5 >= v6)
          {
            *v5 = *v24;
          }

          v4 = v33;
          v10 = v21;
          if (v21 <= v33 || (v6 = v31, v31 <= v7))
          {
            v6 = v31;
            goto LABEL_50;
          }

          goto LABEL_30;
        }

        v20 = v24;
        if ((v5 + 1) < v21 || v5 >= v21)
        {
          *v5 = *v22;
        }

        --v5;
        v21 = v22;
        v4 = v33;
      }

      while (v22 > v33);
      v10 = v22;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v12 = sub_1D18E44D0(*v6, &unk_1F4D65DF0);
        if (v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }

        v15 = sub_1D18E44D0(v11, &unk_1F4D65DF0);
        if (v16)
        {
          if (v14 < 0)
          {
            goto LABEL_16;
          }
        }

        else if (v14 < v15)
        {
LABEL_16:
          v19 = v6 + 1;
          v18 = v6;
          if (v7 >= v6 && v7 < v19)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        v17 = v4 + 1;
        v18 = v4;
        v19 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v17)
          {
            goto LABEL_21;
          }
        }

LABEL_20:
        *v7 = *v18;
LABEL_21:
        ++v7;
        if (v4 < v10)
        {
          v6 = v19;
          if (v19 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
  }

LABEL_50:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_1D1B61488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B61510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B61578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B615D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B61640(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  LOBYTE(v12) = *(a1 + *(v2 + 104));
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3670 == v3)
  {
  }

  else
  {
    v4 = sub_1D1E6904C();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v12 = *(a1 + *(v2 + 128));
  v6 = v12;
  v11 = 40;
  v13 = StaticCharacteristicsBag.int(for:)(&v11);
  value = v13.value;
  is_nil = v13.is_nil;
  v12 = v6;
  v11 = -98;
  v14 = StaticCharacteristicsBag.int(for:)(&v11);
  v9 = (value == v14.value) & ~v14.is_nil;
  if (is_nil)
  {
    v9 = v14.is_nil;
  }

  v5 = v9 ^ 1;
  return v5 & 1;
}

uint64_t sub_1D1B6175C(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  LOBYTE(v12) = *(a1 + *(v2 + 104));
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB2F50 == v3)
  {
  }

  else
  {
    v4 = sub_1D1E6904C();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v12 = *(a1 + *(v2 + 128));
  v6 = v12;
  v11 = 40;
  v13 = StaticCharacteristicsBag.int(for:)(&v11);
  value = v13.value;
  is_nil = v13.is_nil;
  v12 = v6;
  v11 = -98;
  v14 = StaticCharacteristicsBag.int(for:)(&v11);
  v9 = (value == v14.value) & ~v14.is_nil;
  if (is_nil)
  {
    v9 = v14.is_nil;
  }

  v5 = v9 ^ 1;
  return v5 & 1;
}

uint64_t sub_1D1B61878(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  LOBYTE(v12) = *(a1 + *(v2 + 104));
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3640 == v3)
  {
  }

  else
  {
    v4 = sub_1D1E6904C();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v12 = *(a1 + *(v2 + 128));
  v6 = v12;
  v11 = 40;
  v13 = StaticCharacteristicsBag.int(for:)(&v11);
  value = v13.value;
  is_nil = v13.is_nil;
  v12 = v6;
  v11 = -98;
  v14 = StaticCharacteristicsBag.int(for:)(&v11);
  v9 = (value == v14.value) & ~v14.is_nil;
  if (is_nil)
  {
    v9 = v14.is_nil;
  }

  v5 = v9 ^ 1;
  return v5 & 1;
}

uint64_t UmbrellaCategoryInformation.lightStatus(stateSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a1;
  v64 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B878, &qword_1D1E9AD78);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B880, &qword_1D1E9AD80);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B888, &qword_1D1E9AD88);
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B790, &qword_1D1E9AC90);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v52 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B890, &qword_1D1E9AD90);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v51 - v24;
  v26 = type metadata accessor for LightsStatusItem(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B898, &qword_1D1E9AD98);
  v30 = MEMORY[0x1EEE9AC00](v58);
  v59 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v51 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v51 - v35;
  v37 = *(v3 + 24);
  v38 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v66 = v57;
  v39 = sub_1D190104C(v38, sub_1D1B670BC, v65, v37);

  sub_1D1B3AE7C(v40, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1D1741A30(v25, &qword_1EC64B890, &qword_1D1E9AD90);
    sub_1D1B3B878(v39, v12);
    v41 = v54;
    sub_1D1741C08(v12, v54, &qword_1EC64B880, &qword_1D1E9AD80);
    v42 = v53;
    sub_1D1741C08(v41, v53, &qword_1EC64B880, &qword_1D1E9AD80);
    v43 = v42;
    v44 = v56;
    sub_1D1741A90(v43, v56, &qword_1EC64B880, &qword_1D1E9AD80);
    sub_1D1741A30(v12, &qword_1EC64B880, &qword_1D1E9AD80);
    sub_1D1741A30(v41, &qword_1EC64B880, &qword_1D1E9AD80);
    (*(v60 + 56))(v36, 1, 1, v61);
    v45 = *(v58 + 52);
    sub_1D1741A90(v44, &v36[v45], &qword_1EC64B878, &qword_1D1E9AD78);
    (*(v62 + 56))(&v36[v45], 0, 1, v63);
  }

  else
  {

    sub_1D1B670D8(v25, v29, type metadata accessor for LightsStatusItem);
    sub_1D1B67588(v29, v22, type metadata accessor for LightsStatusItem);
    (*(v27 + 56))(v22, 0, 1, v26);
    sub_1D1741C08(v22, v20, &qword_1EC64B790, &qword_1D1E9AC90);
    v46 = v52;
    sub_1D1741C08(v20, v52, &qword_1EC64B790, &qword_1D1E9AC90);
    v47 = v46;
    v48 = v55;
    sub_1D1741A90(v47, v55, &qword_1EC64B790, &qword_1D1E9AC90);
    sub_1D1741A30(v22, &qword_1EC64B790, &qword_1D1E9AC90);
    sub_1D1B67528(v29, type metadata accessor for LightsStatusItem);
    sub_1D1741A30(v20, &qword_1EC64B790, &qword_1D1E9AC90);
    sub_1D1741A90(v48, v36, &qword_1EC64B888, &qword_1D1E9AD88);
    (*(v60 + 56))(v36, 0, 1, v61);
    (*(v62 + 56))(&v36[*(v58 + 52)], 1, 1, v63);
  }

  sub_1D1741C08(v36, v34, &qword_1EC64B898, &qword_1D1E9AD98);
  v49 = v59;
  sub_1D1741C08(v34, v59, &qword_1EC64B898, &qword_1D1E9AD98);
  sub_1D1741A90(v49, v64, &qword_1EC64B898, &qword_1D1E9AD98);
  sub_1D1741A30(v36, &qword_1EC64B898, &qword_1D1E9AD98);
  return sub_1D1741A30(v34, &qword_1EC64B898, &qword_1D1E9AD98);
}

uint64_t UmbrellaCategoryInformation.lightContextMenuLabelsAndActions(stateSnapshot:)(uint64_t a1)
{
  v42 = a1;
  v2 = type metadata accessor for StateSnapshot(0);
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[3];
  v49 = v1[2];
  v50 = v5;
  v6 = v1[5];
  v51 = v1[4];
  v52 = v6;
  v7 = v1[1];
  v47 = *v1;
  v48 = v7;
  v46 = MEMORY[0x1E69E7CC0];
  v8 = *(&v49 + 1);
  v9 = *(*(&v49 + 1) + 16);
  v10 = &dword_1D1E72F94[27];
  if (!v9)
  {
    v25 = *(&v50 + 1);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643268, &qword_1D1E716C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  v43 = 0x66664F206E727554;
  v44 = 0xE900000000000020;
  v45 = v9;
  v12 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v12);

  MEMORY[0x1D3890F70](32, 0xE100000000000000);
  v13 = "erviceTypeCapitalizedPlural";
  if (v9 == 1)
  {
    v13 = "erviceTypeCapitalized";
    v14 = 0xD000000000000020;
  }

  else
  {
    v14 = 0xD000000000000026;
  }

  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static String.hfLocalized(_:)(v14, v13 | 0x8000000000000000);
  MEMORY[0x1D3890F70](v15);

  v16 = v43;
  v17 = v44;
  v18 = v41;
  sub_1D1B67588(v42, v4, type metadata accessor for StateSnapshot);
  v19 = (*(v18 + 80) + 112) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v21 = v50;
  v20[3] = v49;
  v20[4] = v21;
  v22 = v52;
  v20[5] = v51;
  v20[6] = v22;
  v23 = v48;
  v20[1] = v47;
  v20[2] = v23;
  sub_1D1B670D8(v4, v20 + v19, type metadata accessor for StateSnapshot);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D1B671CC;
  *(v24 + 24) = v20;
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  *(inited + 48) = sub_1D1B676E8;
  *(inited + 56) = v24;
  sub_1D1741914(&v47, &v43);
  sub_1D17A5504(inited);
  v25 = *(&v50 + 1);
  if (*(v8 + 16) <= *(*(&v50 + 1) + 16) >> 3)
  {
    v10 = &dword_1D1E72F94[27];
LABEL_10:
    v43 = v25;

    sub_1D1B646F8(v8);
    v27 = v43;
    v28 = *(v43 + 16);
    if (!v28)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v26 = *(&v50 + 1);

  v27 = sub_1D1B64B1C(v8, v26);
  v10 = dword_1D1E72F94 + 108;
  v28 = *(v27 + 16);
  if (!v28)
  {
LABEL_7:

    return v46;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643268, &qword_1D1E716C0);
  v29 = swift_initStackObject();
  *(v29 + 16) = *(v10 + 156);
  v43 = 0x206E4F206E727554;
  v44 = 0xE800000000000000;
  v45 = v28;
  v30 = sub_1D1E68FAC();
  v40[1] = v3;
  MEMORY[0x1D3890F70](v30);

  MEMORY[0x1D3890F70](32, 0xE100000000000000);
  v31 = "erviceTypeCapitalizedPlural";
  if (v28 == 1)
  {
    v31 = "erviceTypeCapitalized";
    v32 = 0xD000000000000020;
  }

  else
  {
    v32 = 0xD000000000000026;
  }

  v33 = static String.hfLocalized(_:)(v32, v31 | 0x8000000000000000);
  MEMORY[0x1D3890F70](v33);

  v34 = v43;
  v35 = v44;
  sub_1D1B67588(v42, v4, type metadata accessor for StateSnapshot);
  v36 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v27;
  sub_1D1B670D8(v4, v37 + v36, type metadata accessor for StateSnapshot);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1D1B67140;
  *(v38 + 24) = v37;
  *(v29 + 32) = v34;
  *(v29 + 40) = v35;
  *(v29 + 48) = sub_1D1B671A4;
  *(v29 + 56) = v38;
  sub_1D17A5504(v29);
  return v46;
}

uint64_t sub_1D1B62588(_OWORD *a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = sub_1D1E67E7C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1D1B67588(a2, &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for StateSnapshot);
  v11 = (*(v5 + 80) + 128) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = a1[3];
  *(v12 + 64) = a1[2];
  *(v12 + 80) = v13;
  v14 = a1[5];
  *(v12 + 96) = a1[4];
  *(v12 + 112) = v14;
  v15 = a1[1];
  *(v12 + 32) = *a1;
  *(v12 + 48) = v15;
  sub_1D1B670D8(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for StateSnapshot);
  sub_1D1741914(a1, v17);
  sub_1D17C6EF0(0, 0, v9, &unk_1D1E9ADB0, v12);
}

uint64_t sub_1D1B62778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1B6279C, 0, 0);
}

uint64_t sub_1D1B6279C()
{
  v1 = v0[4];
  v2 = *(v0[3] + 40);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1D1AE793C;
  v5 = v0[2];
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v5, v6, v7, 0, 0, &unk_1D1E9ADC0, v3, v8);
}

uint64_t sub_1D1B62894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(type metadata accessor for StateSnapshot(0) - 8);
  v4[12] = v5;
  v4[13] = *(v5 + 64);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v4[19] = *(v7 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B62A10, 0, 0);
}

void sub_1D1B62A10()
{
  v34 = *(v0 + 96);
  v35 = *(v0 + 144);
  v1 = *(v0 + 80);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;

  v9 = 0;
  v32 = v8;
  v33 = v3;
  while (v7)
  {
LABEL_11:
    v13 = *(v0 + 160);
    v38 = *(v0 + 168);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 112);
    v42 = *(v0 + 120);
    v37 = v16;
    v41 = *(v0 + 104);
    v17 = *(v0 + 88);
    v36 = v14;
    (*(v35 + 16))();
    v40 = v15;
    sub_1D1E67E3C();
    v18 = sub_1D1E67E7C();
    v39 = *(v18 - 8);
    (*(v39 + 56))(v15, 0, 1, v18);
    sub_1D1B67588(v17, v16, type metadata accessor for StateSnapshot);
    v19 = *(v35 + 32);
    v19(v13, v38, v14);
    v20 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v21 = (v41 + *(v35 + 80) + v20) & ~*(v35 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v23 = (v22 + 16);
    *(v22 + 24) = 0;
    sub_1D1B670D8(v37, v22 + v20, type metadata accessor for StateSnapshot);
    v19(v22 + v21, v13, v36);
    sub_1D1741C08(v40, v42, &unk_1EC6442C0, &qword_1D1E741A0);
    v24 = (*(v39 + 48))(v42, 1, v18);
    v25 = *(v0 + 120);
    if (v24 == 1)
    {
      sub_1D1741A30(*(v0 + 120), &unk_1EC6442C0, &qword_1D1E741A0);
      if (*v23)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D1E67E6C();
      (*(v39 + 8))(v25, v18);
      if (*v23)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = sub_1D1E67D4C();
        v28 = v27;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v26 = 0;
    v28 = 0;
LABEL_16:
    v29 = **(v0 + 72);
    v30 = swift_allocObject();
    *(v30 + 16) = &unk_1D1E9ADD0;
    *(v30 + 24) = v22;

    if (v28 | v26)
    {
      v10 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v26;
      *(v0 + 40) = v28;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 128);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v10;
    *(v0 + 64) = v29;
    swift_task_create();

    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
    v8 = v32;
    v3 = v33;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  v31 = *(v0 + 8);

  v31();
}

uint64_t sub_1D1B62E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B62F7C, 0, 0);
}

uint64_t sub_1D1B62F7C()
{
  v1 = *(v0 + 160);
  v2 = type metadata accessor for StateSnapshot(0);
  v3 = *(v1 + *(v2 + 60));
  if (*(v3 + 16))
  {
    v4 = sub_1D1742188();
    v5 = *(v0 + 192);
    if (v6)
    {
      v7 = v4;
      v8 = *(v3 + 56);
      v9 = type metadata accessor for StaticService(0);
      v10 = *(v9 - 8);
      sub_1D1B67588(v8 + *(v10 + 72) * v7, v5, type metadata accessor for StaticService);
      (*(v10 + 56))(v5, 0, 1, v9);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(v0 + 192);
  }

  v9 = type metadata accessor for StaticService(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
LABEL_6:
  v11 = *(v0 + 184);
  sub_1D1741C08(*(v0 + 192), v11, &qword_1EC6436F0, &qword_1D1E99BC0);
  type metadata accessor for StaticService(0);
  if ((*(*(v9 - 8) + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v0 + 184);
    v13 = *(v0 + 176);
    sub_1D1741A30(*(v0 + 192), &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1741A30(v12, &qword_1EC6436F0, &qword_1D1E99BC0);
    (*(*(v2 - 8) + 56))(v13, 1, 1, v2);
    sub_1D1741A30(v13, &unk_1EC649E30, &unk_1D1E91250);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    *(v0 + 112) = MEMORY[0x1E69E6530];
    *(v0 + 88) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = 105;
    sub_1D1741970(v0 + 88, inited + 40);
    v17 = sub_1D18DAC64(inited);
    *(v0 + 200) = v17;
    swift_setDeallocating();
    sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
    *(v0 + 152) = 2;
    *(v0 + 120) = xmmword_1D1E88490;
    *(v0 + 136) = 0;
    *(v0 + 144) = 0;
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = sub_1D1B6332C;
    v19 = *(v0 + 176);

    return StaticService.set(for:options:context:)(v19, v17, (v0 + 152), (v0 + 120));
  }
}

uint64_t sub_1D1B6332C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);

  sub_1D1741A30(v3, &unk_1EC649E30, &unk_1D1E91250);
  __swift_destroy_boxed_opaque_existential_1((v1 + 88));
  sub_1D1B67528(v2, type metadata accessor for StaticService);

  return MEMORY[0x1EEE6DFA0](sub_1D1B634B0, 0, 0);
}

uint64_t sub_1D1B634B0()
{
  sub_1D1741A30(*(v0 + 192), &qword_1EC6436F0, &qword_1D1E99BC0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B6353C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  sub_1D1E67E3C();
  v10 = sub_1D1E67E7C();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_1D1B67588(a2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateSnapshot);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  sub_1D1B670D8(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for StateSnapshot);

  sub_1D1B1DFC0(0, 0, v9, &unk_1D1E9ADE8, v12);

  return sub_1D1741A30(v9, &unk_1EC6442C0, &qword_1D1E741A0);
}

uint64_t sub_1D1B63738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B63880, 0, 0);
}

void sub_1D1B63880()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 32);
  *(v0 + 264) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 56);

  v6 = 0;
  if (v5)
  {
    while (1)
    {
      v7 = *(v0 + 160);
LABEL_10:
      *(v0 + 232) = v5;
      *(v0 + 240) = v6;
      v10 = *(v0 + 216);
      v9 = *(v0 + 224);
      v12 = *(v0 + 200);
      v11 = *(v0 + 208);
      v13 = *(v0 + 168);
      (*(v11 + 16))(v9, *(v7 + 48) + *(v11 + 72) * (__clz(__rbit64(v5)) | (v6 << 6)), v12);
      v14 = type metadata accessor for StateSnapshot(0);
      v15 = *(v13 + *(v14 + 60));
      (*(v11 + 32))(v10, v9, v12);
      if (*(v15 + 16))
      {
        v16 = sub_1D1742188();
        v17 = *(v0 + 216);
        v18 = *(v0 + 192);
        v19 = *(v0 + 200);
        v20 = (*(v0 + 208) + 8);
        if (v21)
        {
          v22 = v16;
          v34 = *(v15 + 56);
          v23 = type metadata accessor for StaticService(0);
          v24 = *(v23 - 8);
          sub_1D1B67588(v34 + *(v24 + 72) * v22, v18, type metadata accessor for StaticService);
          (*v20)(v17, v19);
          (*(v24 + 56))(v18, 0, 1, v23);
        }

        else
        {
          (*v20)(*(v0 + 216), *(v0 + 200));
          v23 = type metadata accessor for StaticService(0);
          (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
        }
      }

      else
      {
        v25 = *(v0 + 192);
        (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
        v23 = type metadata accessor for StaticService(0);
        (*(*(v23 - 8) + 56))(v25, 1, 1, v23);
      }

      v26 = *(v0 + 184);
      sub_1D1741C08(*(v0 + 192), v26, &qword_1EC6436F0, &qword_1D1E99BC0);
      type metadata accessor for StaticService(0);
      if ((*(*(v23 - 8) + 48))(v26, 1, v23) != 1)
      {
        break;
      }

      v27 = *(v0 + 184);
      v28 = *(v0 + 176);
      sub_1D1741A30(*(v0 + 192), &qword_1EC6436F0, &qword_1D1E99BC0);
      sub_1D1741A30(v27, &qword_1EC6436F0, &qword_1D1E99BC0);
      (*(*(v14 - 8) + 56))(v28, 1, 1, v14);
      sub_1D1741A30(v28, &unk_1EC649E30, &unk_1D1E91250);
      v6 = *(v0 + 240);
      v5 = (*(v0 + 232) - 1) & *(v0 + 232);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    *(v0 + 112) = MEMORY[0x1E69E6530];
    *(v0 + 88) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = 105;
    sub_1D1741970(v0 + 88, inited + 40);
    v31 = sub_1D18DAC64(inited);
    *(v0 + 248) = v31;
    swift_setDeallocating();
    sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
    *(v0 + 152) = 2;
    *(v0 + 120) = xmmword_1D1E88490;
    *(v0 + 136) = 0;
    *(v0 + 144) = 0;
    v32 = swift_task_alloc();
    *(v0 + 256) = v32;
    *v32 = v0;
    v32[1] = sub_1D1B63DEC;
    v33 = *(v0 + 176);

    StaticService.set(for:options:context:)(v33, v31, (v0 + 152), (v0 + 120));
  }

  else
  {
    while (1)
    {
LABEL_6:
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= (((1 << *(v0 + 264)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v0 + 160);
      v5 = *(v7 + 8 * v8 + 56);
      ++v6;
      if (v5)
      {
        v6 = v8;
        goto LABEL_10;
      }
    }

    v29 = *(v0 + 8);

    v29();
  }
}

uint64_t sub_1D1B63DEC()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);

  sub_1D1741A30(v3, &unk_1EC649E30, &unk_1D1E91250);
  __swift_destroy_boxed_opaque_existential_1((v1 + 88));
  sub_1D1B67528(v2, type metadata accessor for StaticService);

  return MEMORY[0x1EEE6DFA0](sub_1D1B63F70, 0, 0);
}

uint64_t sub_1D1B63F70()
{
  for (result = sub_1D1741A30(*(v0 + 192), &qword_1EC6436F0, &qword_1D1E99BC0); ; result = sub_1D1741A30(v25, &unk_1EC649E30, &unk_1D1E91250))
  {
    v2 = *(v0 + 240);
    v3 = (*(v0 + 232) - 1) & *(v0 + 232);
    if (!v3)
    {
      break;
    }

    v4 = *(v0 + 160);
LABEL_8:
    *(v0 + 232) = v3;
    *(v0 + 240) = v2;
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 168);
    (*(v8 + 16))(v6, *(v4 + 48) + *(v8 + 72) * (__clz(__rbit64(v3)) | (v2 << 6)), v9);
    v11 = type metadata accessor for StateSnapshot(0);
    v12 = *(v10 + *(v11 + 60));
    (*(v8 + 32))(v7, v6, v9);
    if (*(v12 + 16))
    {
      v13 = sub_1D1742188();
      v14 = *(v0 + 216);
      v15 = *(v0 + 192);
      v16 = *(v0 + 200);
      v17 = (*(v0 + 208) + 8);
      if (v18)
      {
        v19 = v13;
        v31 = *(v12 + 56);
        v20 = type metadata accessor for StaticService(0);
        v21 = *(v20 - 8);
        sub_1D1B67588(v31 + *(v21 + 72) * v19, v15, type metadata accessor for StaticService);
        (*v17)(v14, v16);
        (*(v21 + 56))(v15, 0, 1, v20);
      }

      else
      {
        (*v17)(*(v0 + 216), *(v0 + 200));
        v20 = type metadata accessor for StaticService(0);
        (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
      }
    }

    else
    {
      v22 = *(v0 + 192);
      (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
      v20 = type metadata accessor for StaticService(0);
      (*(*(v20 - 8) + 56))(v22, 1, 1, v20);
    }

    v23 = *(v0 + 184);
    sub_1D1741C08(*(v0 + 192), v23, &qword_1EC6436F0, &qword_1D1E99BC0);
    type metadata accessor for StaticService(0);
    if ((*(*(v20 - 8) + 48))(v23, 1, v20) != 1)
    {
      *(v0 + 112) = MEMORY[0x1E69E6530];
      *(v0 + 88) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = 105;
      sub_1D1741970(v0 + 88, inited + 40);
      v28 = sub_1D18DAC64(inited);
      *(v0 + 248) = v28;
      swift_setDeallocating();
      sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
      *(v0 + 152) = 2;
      *(v0 + 120) = xmmword_1D1E88490;
      *(v0 + 136) = 0;
      *(v0 + 144) = 0;
      v29 = swift_task_alloc();
      *(v0 + 256) = v29;
      *v29 = v0;
      v29[1] = sub_1D1B63DEC;
      v30 = *(v0 + 176);

      return StaticService.set(for:options:context:)(v30, v28, (v0 + 152), (v0 + 120));
    }

    v24 = *(v0 + 184);
    v25 = *(v0 + 176);
    sub_1D1741A30(*(v0 + 192), &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1741A30(v24, &qword_1EC6436F0, &qword_1D1E99BC0);
    (*(*(v11 - 8) + 56))(v25, 1, 1, v11);
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v5 >= (((1 << *(v0 + 264)) + 63) >> 6))
    {
      break;
    }

    v4 = *(v0 + 160);
    v3 = *(v4 + 8 * v5 + 56);
    ++v2;
    if (v3)
    {
      v2 = v5;
      goto LABEL_8;
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D1B644C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v12 + 16) && (v13 = sub_1D1742188(), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for StaticService(0);
    v18 = *(v17 - 8);
    sub_1D1B67588(v16 + *(v18 + 72) * v15, v7, type metadata accessor for StaticService);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for StaticService(0);
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  return sub_1D1B0D124(v7, v10);
}

void sub_1D1B646F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1D1AE04A0(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1D1B64914(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A0, &qword_1D1E9ADA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_1D1B67588(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D1AE1958(v9, v5);
      sub_1D1B67528(v9, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D1741A30(v5, &qword_1EC64B8A0, &qword_1D1E9ADA0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D1B64B1C(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v68 - v9);
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v88 = (&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v68 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v83 = (&v68 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v69 = v10;
  v71 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v82 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v90 = (v22 & v19);
  v74 = (63 - v21) >> 6;
  v89 = v12 + 2;
  v79 = (v12 + 6);
  v80 = (v12 + 7);
  v78 = (v12 + 4);
  v85 = (a2 + 56);
  v91 = (v12 + 1);
  v81 = a1;

  v24 = 0;
  v70 = v12;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v90;
    v26 = v24;
    if (v90)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v81;
      v31 = *(v81 + 48) + v12[9] * (__clz(__rbit64(v25)) | (v26 << 6));
      v32 = v12[2];
      v33 = v69;
      v32(v69, v31, v11);
      v34 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v74 <= (v24 + 1) ? v24 + 1 : v74;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v74)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v34 = 1;
      v33 = v69;
      v30 = v81;
    }

    v76 = *v80;
    v76(v33, v34, 1, v11);
    v92 = v30;
    v93 = v20;
    v94 = v82;
    v95 = v28;
    v96 = v2;
    v75 = *v79;
    if (v75(v33, 1, v11) == 1)
    {
      sub_1D1741A30(v33, &qword_1EC642590, qword_1D1E71260);
      v62 = v30;
      goto LABEL_53;
    }

    v73 = *v78;
    v73(v83, v33, v11);
    v72 = sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
    v35 = sub_1D1E676DC();
    v36 = -1 << *(a2 + 32);
    v24 = v35 & ~v36;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) != 0)
    {
      break;
    }

    v12 = v70;
    (*v91)(v83, v11);
LABEL_22:
    v24 = v28;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = v70[9];
  v86 = v70[2];
  v87 = v37;
  while (1)
  {
    v86(v17, *(a2 + 48) + v87 * v24, v11);
    v38 = sub_1D174A5FC(&qword_1EE07D170, MEMORY[0x1E69695C8]);
    v39 = sub_1D1E6775C();
    v90 = *v91;
    v90(v17, v11);
    if (v39)
    {
      break;
    }

    v24 = (v24 + 1) & v84;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) == 0)
    {
      v12 = v70;
      v90(v83, v11);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v11);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v23 = 8 * v68;
  v12 = v81;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v69 = &v68;
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v26] & ~v20;
    v45 = *(a2 + 16);
    v83 = v43;
    *&v43[8 * v26] = v44;
    v46 = v45 - 1;
    v24 = v71;
    v47 = i;
    v48 = v74;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v28;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v24, v12[6] + (v52 | (v49 << 6)) * v87, v11);
      v53 = 0;
LABEL_39:
      v76(v24, v53, 1, v11);
      v92 = v12;
      v93 = v47;
      v94 = v82;
      v95 = v28;
      v96 = v2;
      if (v75(v24, 1, v11) == 1)
      {
        sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
        a2 = sub_1D19E13B0(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v73(v88, v24, v11);
      v54 = sub_1D1E676DC();
      v55 = a2;
      v56 = -1 << *(a2 + 32);
      v57 = v54 & ~v56;
      v26 = v57 >> 6;
      v20 = 1 << v57;
      if (((1 << v57) & v85[v57 >> 6]) != 0)
      {
        v86(v17, *(v55 + 48) + v57 * v87, v11);
        v58 = sub_1D1E6775C();
        v90(v17, v11);
        if ((v58 & 1) == 0)
        {
          v59 = ~v56;
          do
          {
            v57 = (v57 + 1) & v59;
            v26 = v57 >> 6;
            v20 = 1 << v57;
            if (((1 << v57) & v85[v57 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v17, *(v55 + 48) + v57 * v87, v11);
            v60 = sub_1D1E6775C();
            v90(v17, v11);
          }

          while ((v60 & 1) == 0);
        }

        v90(v88, v11);
        v61 = v83[v26];
        v83[v26] = v61 & ~v20;
        a2 = v55;
        v12 = v81;
        v24 = v71;
        v47 = i;
        v48 = v74;
        if ((v61 & v20) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v11);
        a2 = v55;
        v12 = v81;
        v24 = v71;
        v47 = i;
        v48 = v74;
      }
    }

    if (v48 <= (v28 + 1))
    {
      v50 = v28 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v28 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v28;
      if (v2)
      {
        v28 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v64 = v23;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_1D1B664B0(v67, v68, v83, v24, &v92);

  MEMORY[0x1D3893640](v67, -1, -1);
LABEL_52:
  v62 = v92;
LABEL_53:
  sub_1D1716918(v62);
  return a2;
}

uint64_t sub_1D1B65564(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v59[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v3 = a1;
    v59[0] = a1;
    v51 = *(a1 + 16);
    if (v51)
    {
      v4 = (a2 + 56);
      v5 = a1 + 32;

      v6 = 0;
      v56 = v4;
      v53 = v5;
      while (1)
      {
        v7 = *(v6 + v5);
        v55 = (v6 + 1);
        sub_1D1E6920C();
        v54 = v7;
        v57 = v7;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v8 = sub_1D1E6926C();
        v9 = -1 << *(v2 + 32);
        v10 = v8 & ~v9;
        v11 = v10 >> 6;
        v12 = 1 << v10;
        if (((1 << v10) & v4[v10 >> 6]) != 0)
        {
          break;
        }

LABEL_4:
        v6 = v55;
        v4 = v56;
        v5 = v53;
        if (v55 == v51)
        {
LABEL_124:

          return v2;
        }
      }

      v13 = ~v9;
      while (1)
      {
        v14 = "takeSnaphotsWhenBusy";
        switch(*(*(v2 + 48) + v10))
        {
          case 1:
            v15 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 2:
            v15 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 3:
            v15 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 4:
            v15 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 5:
            v15 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 6:
            v15 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 7:
            v15 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 8:
            v15 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 9:
            v15 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xA:
            v15 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xB:
            v15 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xC:
            v15 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xD:
            v15 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xE:
            v15 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xF:
            v15 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x10:
            v15 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x11:
            v15 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x12:
            v15 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x13:
            v15 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x14:
            v15 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x15:
            v15 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x16:
            v15 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x17:
            v15 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x18:
            v15 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x19:
            v15 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1A:
            v15 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1B:
            v15 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1C:
            v15 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1D:
            v15 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1E:
            v15 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1F:
            v15 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x20:
            v15 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x21:
            v15 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x22:
            v15 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x23:
            v15 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x24:
            v15 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x25:
            v15 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x26:
            v15 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x27:
            v15 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x28:
            v15 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x29:
            v15 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2A:
            v15 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2B:
            v15 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2C:
            v15 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2D:
            v15 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2E:
            v15 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2F:
            v15 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x30:
            v15 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x31:
            v15 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x32:
            v15 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x33:
            v15 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x34:
            v15 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_60:
            v14 = v15 - 32;
            break;
          default:
            break;
        }

        v16 = v14 | 0x8000000000000000;
        v17 = "takeSnaphotsWhenBusy";
        switch(v54)
        {
          case 1:
            v18 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 2:
            v18 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 3:
            v18 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 4:
            v18 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 5:
            v18 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 6:
            v18 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 7:
            v18 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 8:
            v18 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 9:
            v18 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 10:
            v18 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 11:
            v18 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 12:
            v18 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 13:
            v18 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 14:
            v18 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 15:
            v18 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 16:
            v18 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 17:
            v18 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 18:
            v18 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 19:
            v18 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 20:
            v18 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 21:
            v18 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 22:
            v18 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 23:
            v18 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 24:
            v18 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 25:
            v18 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 26:
            v18 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 27:
            v18 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 28:
            v18 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 29:
            v18 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 30:
            v18 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 31:
            v18 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 32:
            v18 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 33:
            v18 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 34:
            v18 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 35:
            v18 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 36:
            v18 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 37:
            v18 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 38:
            v18 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 39:
            v18 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 40:
            v18 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 41:
            v18 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 42:
            v18 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 43:
            v18 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 44:
            v18 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 45:
            v18 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 46:
            v18 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 47:
            v18 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 48:
            v18 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 49:
            v18 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 50:
            v18 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 51:
            v18 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 52:
            v18 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_114:
            v17 = v18 - 32;
            break;
          default:
            break;
        }

        if (v16 == (v17 | 0x8000000000000000))
        {
          break;
        }

        v19 = sub_1D1E6904C();

        if (v19)
        {
          goto LABEL_121;
        }

        v10 = (v10 + 1) & v13;
        v11 = v10 >> 6;
        v12 = 1 << v10;
        if ((v56[v10 >> 6] & (1 << v10)) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_121:
      v21 = v55;
      v59[1] = v55;
      v22 = *(v2 + 32);
      v49 = ((1 << v22) + 63) >> 6;
      v23 = 8 * v49;
      if ((v22 & 0x3Fu) > 0xD)
      {
        goto LABEL_251;
      }

      while (1)
      {
        v50 = &v48;
        MEMORY[0x1EEE9AC00](v20);
        v10 = &v48 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v10, v56, v24);
        v25 = *(v2 + 16);
        v26 = *(v10 + 8 * v11) & ~v12;
        v51 = v10;
        *(v10 + 8 * v11) = v26;
        v54 = v25 - 1;
        v27 = *(v3 + 16);
        if (v21 == v27)
        {
LABEL_123:
          v2 = sub_1D19E2038(v51, v49, v54, v2);
          goto LABEL_124;
        }

        v29 = v21;
        v12 = v56;
        v52 = v3;
        while (v29 < v27)
        {
          v55 = v29;
          v31 = *(v29 + v53);
          sub_1D1E6920C();
          v57 = v31;
          ServiceKind.rawValue.getter();
          sub_1D1E678EC();

          v10 = v58;
          v32 = sub_1D1E6926C();
          v33 = -1 << *(v2 + 32);
          v34 = v32 & ~v33;
          v35 = v34 >> 6;
          v36 = 1 << v34;
          if (((1 << v34) & *(v12 + 8 * (v34 >> 6))) == 0)
          {
            goto LABEL_127;
          }

          v37 = ~v33;
          while (1)
          {
            v38 = "takeSnaphotsWhenBusy";
            switch(*(*(v2 + 48) + v34))
            {
              case 1:
                v39 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 2:
                v39 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 3:
                v39 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 4:
                v39 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 5:
                v39 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 6:
                v39 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 7:
                v39 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 8:
                v39 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 9:
                v39 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xA:
                v39 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xB:
                v39 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xC:
                v39 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xD:
                v39 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xE:
                v39 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xF:
                v39 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x10:
                v39 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x11:
                v39 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x12:
                v39 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x13:
                v39 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x14:
                v39 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x15:
                v39 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x16:
                v39 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x17:
                v39 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x18:
                v39 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x19:
                v39 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1A:
                v39 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1B:
                v39 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1C:
                v39 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1D:
                v39 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1E:
                v39 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1F:
                v39 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x20:
                v39 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x21:
                v39 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x22:
                v39 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x23:
                v39 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x24:
                v39 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x25:
                v39 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x26:
                v39 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x27:
                v39 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x28:
                v39 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x29:
                v39 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2A:
                v39 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2B:
                v39 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2C:
                v39 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2D:
                v39 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2E:
                v39 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2F:
                v39 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x30:
                v39 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x31:
                v39 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x32:
                v39 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x33:
                v39 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x34:
                v39 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_185:
                v38 = v39 - 32;
                break;
              default:
                break;
            }

            v10 = v38 | 0x8000000000000000;
            v40 = "takeSnaphotsWhenBusy";
            switch(v31)
            {
              case 1:
                v41 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 2:
                v41 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 3:
                v41 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 4:
                v41 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 5:
                v41 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 6:
                v41 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 7:
                v41 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 8:
                v41 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 9:
                v41 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 10:
                v41 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 11:
                v41 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 12:
                v41 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 13:
                v41 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 14:
                v41 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 15:
                v41 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 16:
                v41 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 17:
                v41 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 18:
                v41 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 19:
                v41 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 20:
                v41 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 21:
                v41 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 22:
                v41 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 23:
                v41 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 24:
                v41 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 25:
                v41 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 26:
                v41 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 27:
                v41 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 28:
                v41 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 29:
                v41 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 30:
                v41 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 31:
                v41 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 32:
                v41 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 33:
                v41 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 34:
                v41 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 35:
                v41 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 36:
                v41 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 37:
                v41 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 38:
                v41 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 39:
                v41 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 40:
                v41 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 41:
                v41 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 42:
                v41 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 43:
                v41 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 44:
                v41 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 45:
                v41 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 46:
                v41 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 47:
                v41 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 48:
                v41 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 49:
                v41 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 50:
                v41 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 51:
                v41 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 52:
                v41 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_239:
                v40 = v41 - 32;
                break;
              default:
                break;
            }

            if (v10 == (v40 | 0x8000000000000000))
            {
              break;
            }

            v11 = sub_1D1E6904C();

            if (v11)
            {
              goto LABEL_245;
            }

            v34 = (v34 + 1) & v37;
            v35 = v34 >> 6;
            v12 = v56;
            v36 = 1 << v34;
            if ((v56[v34 >> 6] & (1 << v34)) == 0)
            {
              v3 = v52;
              goto LABEL_127;
            }
          }

LABEL_245:
          v3 = v52;
          v42 = v51[v35];
          v51[v35] = v42 & ~v36;
          v12 = v56;
          if ((v42 & v36) != 0)
          {
            v30 = v55;
            v43 = v54 - 1;
            if (__OFSUB__(v54, 1))
            {
              goto LABEL_250;
            }

            --v54;
            if (!v43)
            {

              v2 = MEMORY[0x1E69E7CD0];
              goto LABEL_124;
            }
          }

          else
          {
LABEL_127:
            v30 = v55;
          }

          v29 = (v30 + 1);
          v27 = *(v3 + 16);
          if (v29 == v27)
          {
            goto LABEL_123;
          }
        }

        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        v44 = v23;

        v45 = v44;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }

        v21 = v55;
      }

      v46 = swift_slowAlloc();
      memcpy(v46, v56, v45);
      v47 = sub_1D1B6695C(v46, v49, v2, v10, v59);

      MEMORY[0x1D3893640](v46, -1, -1);

      return v47;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D1B664B0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1D1E66A7C();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v24 = *a5;
        v23 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v23 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v24 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v24;
        a5[1] = v23;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
          v45 = v61;

          return sub_1D19E13B0(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
        v35 = sub_1D1E676DC();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1D174A5FC(&qword_1EE07D170, MEMORY[0x1E69695C8]);
        v43 = sub_1D1E6775C();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D1B6695C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v24 = result;
  v25 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 == v9)
  {
LABEL_2:

    return sub_1D19E2038(v24, a2, v25, a3);
  }

  else
  {
    v28 = a3 + 56;
    v26 = a5;
    while ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 >= v9)
      {
        goto LABEL_128;
      }

      v10 = *(v7 + v8 + 32);
      a5[1] = v8 + 1;
      sub_1D1E6920C();
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v11 = -1 << *(a3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = 1 << v12;
      if (((1 << v12) & *(v28 + 8 * (v12 >> 6))) == 0)
      {
        goto LABEL_4;
      }

      v27 = ~v11;
      while (1)
      {
        v15 = "takeSnaphotsWhenBusy";
        switch(*(*(a3 + 48) + v12))
        {
          case 1:
            v16 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 2:
            v16 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 3:
            v16 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 4:
            v16 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 5:
            v16 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 6:
            v16 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 7:
            v16 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 8:
            v16 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 9:
            v16 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xA:
            v16 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xB:
            v16 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xC:
            v16 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xD:
            v16 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xE:
            v16 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xF:
            v16 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x10:
            v16 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x11:
            v16 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x12:
            v16 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x13:
            v16 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x14:
            v16 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x15:
            v16 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x16:
            v16 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x17:
            v16 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x18:
            v16 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x19:
            v16 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1A:
            v16 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1B:
            v16 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1C:
            v16 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1D:
            v16 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1E:
            v16 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1F:
            v16 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x20:
            v16 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x21:
            v16 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x22:
            v16 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x23:
            v16 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x24:
            v16 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x25:
            v16 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x26:
            v16 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x27:
            v16 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x28:
            v16 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x29:
            v16 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2A:
            v16 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2B:
            v16 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2C:
            v16 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2D:
            v16 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2E:
            v16 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2F:
            v16 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x30:
            v16 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x31:
            v16 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x32:
            v16 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x33:
            v16 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x34:
            v16 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_63:
            v15 = v16 - 32;
            break;
          default:
            break;
        }

        v17 = v15 | 0x8000000000000000;
        v18 = "takeSnaphotsWhenBusy";
        switch(v10)
        {
          case 1:
            v19 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 2:
            v19 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 3:
            v19 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 4:
            v19 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 5:
            v19 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 6:
            v19 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 7:
            v19 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 8:
            v19 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 9:
            v19 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 10:
            v19 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 11:
            v19 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 12:
            v19 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 13:
            v19 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 14:
            v19 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 15:
            v19 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 16:
            v19 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 17:
            v19 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 18:
            v19 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 19:
            v19 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 20:
            v19 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 21:
            v19 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 22:
            v19 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 23:
            v19 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 24:
            v19 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 25:
            v19 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 26:
            v19 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 27:
            v19 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 28:
            v19 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 29:
            v19 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 30:
            v19 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 31:
            v19 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 32:
            v19 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 33:
            v19 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 34:
            v19 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 35:
            v19 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 36:
            v19 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 37:
            v19 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 38:
            v19 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 39:
            v19 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 40:
            v19 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 41:
            v19 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 42:
            v19 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 43:
            v19 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 44:
            v19 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 45:
            v19 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 46:
            v19 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 47:
            v19 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 48:
            v19 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 49:
            v19 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 50:
            v19 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 51:
            v19 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 52:
            v19 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_117:
            v18 = v19 - 32;
            break;
          default:
            break;
        }

        if (v17 == (v18 | 0x8000000000000000))
        {
          break;
        }

        v20 = sub_1D1E6904C();

        if (v20)
        {
          goto LABEL_123;
        }

        v12 = (v12 + 1) & v27;
        v13 = v12 >> 6;
        v14 = 1 << v12;
        if ((*(v28 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_123:
      v21 = v24[v13];
      v24[v13] = v21 & ~v14;
      if ((v21 & v14) != 0)
      {
        a5 = v26;
        v22 = v25 - 1;
        if (__OFSUB__(v25, 1))
        {
          goto LABEL_129;
        }

        --v25;
        if (!v22)
        {
          return MEMORY[0x1E69E7CD0];
        }
      }

      else
      {
LABEL_4:
        a5 = v26;
      }

      v7 = *a5;
      v8 = a5[1];
      v9 = *(*a5 + 16);
      if (v8 == v9)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B670D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B67140()
{
  v1 = *(type metadata accessor for StateSnapshot(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D1B6353C(v2, v3);
}

uint64_t sub_1D1B671CC()
{
  v1 = *(type metadata accessor for StateSnapshot(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 112) & ~*(v1 + 80));

  return sub_1D1B62588((v0 + 16), v2);
}

uint64_t sub_1D1B67230(uint64_t a1)
{
  v4 = *(type metadata accessor for StateSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 128) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1B62778(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1D1B67324(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1B62894(a1, a2, v7, v6);
}

uint64_t sub_1D1B673D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for StateSnapshot(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1D1E66A7C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1B62E9C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1D1B67528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B67588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B675F0(uint64_t a1)
{
  v4 = *(type metadata accessor for StateSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1B63738(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D1B676EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = sub_1D1E66A7C();
  v6 = *(v94 - 8);
  v7 = MEMORY[0x1EEE9AC00](v94);
  v92 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v79 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v96 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v79 - v14;
  v86 = type metadata accessor for TilesFilter(0);
  MEMORY[0x1EEE9AC00](v86);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for IconTextValueStringDataHolder(0);
  v17 = MEMORY[0x1EEE9AC00](v84);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v79 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v21 = MEMORY[0x1EEE9AC00](v91);
  v90 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v79 - v23;
  v24 = sub_1D1B6DBBC(a1, 37, 127);

  if (*(v24 + 2))
  {
    v79 = v19;
    v80 = v10;
    v81 = v16;
    v82 = a2;
    v83 = a3;
    v97 = v6;
    v98 = MEMORY[0x1E69E7CD0];
    v25 = v24 + 64;
    v26 = 1 << v24[32];
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 8);
    v29 = (v26 + 63) >> 6;
    v87 = v6 + 8;
    v88 = v6 + 16;
    v93 = v24;

    v31 = 0;
    v32 = v95;
    for (i = v96; v28; i = v96)
    {
      v34 = v31;
      v35 = v97;
      v36 = v93;
LABEL_11:
      v37 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v38 = v37 | (v34 << 6);
      v39 = v89;
      v40 = v94;
      (*(v35 + 16))(v89, *(v36 + 48) + *(v35 + 72) * v38, v94);
      v41 = *(v36 + 56);
      v42 = v41 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v38;
      v43 = v91;
      sub_1D1B733D4(v42, v39 + *(v91 + 48), type metadata accessor for StaticService);
      v44 = v90;
      sub_1D1741C08(v39, v90, &qword_1EC642DB0, &unk_1D1E6F360);
      v45 = *(v43 + 48);
      v46 = v92;
      sub_1D1762CB8(v92, v44);
      (*(v97 + 8))(v46, v40);
      sub_1D1741A30(v39, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v44[v45], type metadata accessor for StaticService);
      v32 = v95;
    }

    v35 = v97;
    v36 = v93;
    while (1)
    {
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v34 >= v29)
      {
        break;
      }

      v28 = *&v25[8 * v34];
      ++v31;
      if (v28)
      {
        v31 = v34;
        goto LABEL_11;
      }
    }

    v92 = v98;
    v47 = v82;
    sub_1D1B7145C(v36, v82);
    v49 = v48;
    v51 = v50;

    v52 = v94;
    (*(v35 + 56))(v32, 1, 1, v94);
    v53 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC5D10);
    v93 = v54;
    sub_1D1741C08(v32, i, &qword_1EC642590, qword_1D1E71260);
    v55 = *(v35 + 48);
    if (v55(i, 1, v52) == 1)
    {
      v91 = v53;
      v56 = v51;
      v57 = v49;
      v58 = v47;
      v59 = v32;
      v60 = v80;
      sub_1D1E66A6C();
      v61 = v59;
      v47 = v58;
      v49 = v57;
      v51 = v56;
      v53 = v91;
      sub_1D1741A30(v61, &qword_1EC642590, qword_1D1E71260);
      v62 = v55(i, 1, v52);
      v63 = v83;
      v64 = v81;
      v65 = v52;
      if (v62 != 1)
      {
        sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
        v65 = v52;
        v35 = v97;
      }
    }

    else
    {
      sub_1D1741A30(v32, &qword_1EC642590, qword_1D1E71260);
      v60 = v80;
      (*(v35 + 32))(v80, i, v52);
      v63 = v83;
      v64 = v81;
      v65 = v52;
    }

    v68 = v79;
    (*(v35 + 32))(v79, v60, v65);
    v69 = v84;
    v70 = (v68 + *(v84 + 20));
    *v70 = 0x69662E656B6F6D73;
    v70[1] = 0xEA00000000006C6CLL;
    v71 = (v68 + v69[6]);
    v72 = v93;
    *v71 = v53;
    v71[1] = v72;
    v73 = (v68 + v69[7]);
    *v73 = v49;
    v73[1] = v51;
    v74 = v68 + v69[8];
    *v74 = 0;
    *(v74 + 8) = 0;
    *(v74 + 16) = 0;
    *(v74 + 24) = -1;
    v75 = v68;
    v76 = v85;
    v77 = sub_1D1B7336C(v75, v85, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v77);
    *(&v79 - 32) = 0;
    *(&v79 - 3) = v92;
    *(&v79 - 16) = 37;
    v98 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    sub_1D1B70478(v47, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v78 = type metadata accessor for SmokeAlarmStatusItem(0);
    *(v63 + v78[6]) = 0;
    *(v63 + v78[7]) = 4;
    *(v63 + v78[8]) = 0;
    sub_1D1B7336C(v76, v63, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v64, v63 + v78[5], type metadata accessor for TilesFilter);
    return (*(*(v78 - 1) + 56))(v63, 0, 1, v78);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v66 = type metadata accessor for SmokeAlarmStatusItem(0);
    v67 = *(*(v66 - 8) + 56);

    return v67(a3, 1, 1, v66);
  }
}

uint64_t sub_1D1B67F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v85 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v70 - v15;
  v76 = type metadata accessor for TilesFilter(0);
  MEMORY[0x1EEE9AC00](v76);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for IconTextValueStringDataHolder(0);
  v18 = MEMORY[0x1EEE9AC00](v73);
  v74 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v70 - v20;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v21 = MEMORY[0x1EEE9AC00](v84);
  v83 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v70 - v23;
  v24 = sub_1D1B6DBBC(a1, 9, 18);

  if (*(v24 + 2))
  {
    v88 = v6;
    v70 = v17;
    v71 = a3;
    v78 = a2;
    v89 = MEMORY[0x1E69E7CD0];
    v25 = v24 + 64;
    v26 = 1 << v24[32];
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 8);
    v29 = (v26 + 63) >> 6;
    v86 = v7;
    v87 = v24;
    v79 = v7 + 8;
    v80 = v7 + 16;

    v31 = 0;
    for (i = v14; v28; v14 = i)
    {
      v32 = v31;
      v33 = v87;
      v34 = v88;
LABEL_11:
      v35 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v36 = v35 | (v32 << 6);
      v37 = v86;
      v38 = v82;
      (*(v86 + 16))(v82, *(v33 + 48) + *(v86 + 72) * v36, v34);
      v39 = *(v33 + 56);
      v40 = v39 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v36;
      v41 = v84;
      sub_1D1B733D4(v40, v38 + *(v84 + 48), type metadata accessor for StaticService);
      v42 = v83;
      sub_1D1741C08(v38, v83, &qword_1EC642DB0, &unk_1D1E6F360);
      v43 = *(v41 + 48);
      v44 = v85;
      sub_1D1762CB8(v85, v42);
      (*(v37 + 8))(v44, v88);
      sub_1D1741A30(v38, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v42[v43], type metadata accessor for StaticService);
    }

    v33 = v87;
    v34 = v88;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v32 >= v29)
      {
        break;
      }

      v28 = *&v25[8 * v32];
      ++v31;
      if (v28)
      {
        v31 = v32;
        goto LABEL_11;
      }
    }

    v85 = v89;
    sub_1D1B71C20(v33, v78);
    v83 = v46;
    v84 = v45;

    v47 = v86;
    v48 = v72;
    (*(v86 + 56))(v72, 1, 1, v34);
    v49 = static String.hfLocalized(_:)(0xD000000000000015, 0x80000001D1EC5CC0);
    v51 = v50;
    sub_1D1741C08(v48, v14, &qword_1EC642590, qword_1D1E71260);
    v52 = *(v47 + 48);
    if (v52(v14, 1, v34) == 1)
    {
      v53 = v14;
      v54 = v77;
      sub_1D1E66A6C();
      sub_1D1741A30(v48, &qword_1EC642590, qword_1D1E71260);
      v55 = v54;
      if (v52(v53, 1, v34) != 1)
      {
        sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v48, &qword_1EC642590, qword_1D1E71260);
      v55 = v77;
      (*(v47 + 32))(v77, v14, v34);
    }

    v58 = v74;
    (*(v47 + 32))(v74, v55, v34);
    v59 = v73;
    v60 = (v58 + *(v73 + 20));
    *v60 = 0xD000000000000019;
    v60[1] = 0x80000001D1EBDE40;
    v61 = (v58 + v59[6]);
    *v61 = v49;
    v61[1] = v51;
    v62 = (v58 + v59[7]);
    v63 = v83;
    *v62 = v84;
    v62[1] = v63;
    v64 = v58 + v59[8];
    *v64 = 0;
    *(v64 + 8) = 0;
    *(v64 + 16) = 0;
    *(v64 + 24) = -1;
    v65 = v75;
    v66 = sub_1D1B7336C(v58, v75, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v66);
    *(&v70 - 32) = 0;
    *(&v70 - 3) = v85;
    *(&v70 - 16) = 9;
    v89 = type metadata accessor for StaticService(0);
    v67 = v70;
    sub_1D1E66C8C();

    sub_1D1B70478(v78, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v68 = type metadata accessor for CarbonDioxideAlarmStatusItem(0);
    v69 = v71;
    *(v71 + v68[6]) = 0;
    *(v69 + v68[7]) = 4;
    *(v69 + v68[8]) = 0;
    sub_1D1B7336C(v67, v69 + v68[5], type metadata accessor for TilesFilter);
    sub_1D1B7336C(v65, v69, type metadata accessor for IconTextValueStringDataHolder);
    return (*(*(v68 - 1) + 56))(v69, 0, 1, v68);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v56 = type metadata accessor for CarbonDioxideAlarmStatusItem(0);
    v57 = *(*(v56 - 8) + 56);

    return v57(a3, 1, 1, v56);
  }
}

uint64_t sub_1D1B687F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v85 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v70 - v15;
  v76 = type metadata accessor for TilesFilter(0);
  MEMORY[0x1EEE9AC00](v76);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for IconTextValueStringDataHolder(0);
  v18 = MEMORY[0x1EEE9AC00](v73);
  v74 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v70 - v20;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v21 = MEMORY[0x1EEE9AC00](v84);
  v83 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v70 - v23;
  v24 = sub_1D1B6DBBC(a1, 10, 21);

  if (*(v24 + 2))
  {
    v88 = v6;
    v70 = v17;
    v71 = a3;
    v78 = a2;
    v89 = MEMORY[0x1E69E7CD0];
    v25 = v24 + 64;
    v26 = 1 << v24[32];
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 8);
    v29 = (v26 + 63) >> 6;
    v86 = v7;
    v87 = v24;
    v79 = v7 + 8;
    v80 = v7 + 16;

    v31 = 0;
    for (i = v14; v28; v14 = i)
    {
      v32 = v31;
      v33 = v87;
      v34 = v88;
LABEL_11:
      v35 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v36 = v35 | (v32 << 6);
      v37 = v86;
      v38 = v82;
      (*(v86 + 16))(v82, *(v33 + 48) + *(v86 + 72) * v36, v34);
      v39 = *(v33 + 56);
      v40 = v39 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v36;
      v41 = v84;
      sub_1D1B733D4(v40, v38 + *(v84 + 48), type metadata accessor for StaticService);
      v42 = v83;
      sub_1D1741C08(v38, v83, &qword_1EC642DB0, &unk_1D1E6F360);
      v43 = *(v41 + 48);
      v44 = v85;
      sub_1D1762CB8(v85, v42);
      (*(v37 + 8))(v44, v88);
      sub_1D1741A30(v38, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v42[v43], type metadata accessor for StaticService);
    }

    v33 = v87;
    v34 = v88;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v32 >= v29)
      {
        break;
      }

      v28 = *&v25[8 * v32];
      ++v31;
      if (v28)
      {
        v31 = v32;
        goto LABEL_11;
      }
    }

    v85 = v89;
    sub_1D1B723E4(v33, v78);
    v83 = v46;
    v84 = v45;

    v47 = v86;
    v48 = v72;
    (*(v86 + 56))(v72, 1, 1, v34);
    v49 = static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EC5C70);
    v51 = v50;
    sub_1D1741C08(v48, v14, &qword_1EC642590, qword_1D1E71260);
    v52 = *(v47 + 48);
    if (v52(v14, 1, v34) == 1)
    {
      v53 = v14;
      v54 = v77;
      sub_1D1E66A6C();
      sub_1D1741A30(v48, &qword_1EC642590, qword_1D1E71260);
      v55 = v54;
      if (v52(v53, 1, v34) != 1)
      {
        sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v48, &qword_1EC642590, qword_1D1E71260);
      v55 = v77;
      (*(v47 + 32))(v77, v14, v34);
    }

    v58 = v74;
    (*(v47 + 32))(v74, v55, v34);
    v59 = v73;
    v60 = (v58 + *(v73 + 20));
    *v60 = 0xD00000000000001ALL;
    v60[1] = 0x80000001D1EBDE20;
    v61 = (v58 + v59[6]);
    *v61 = v49;
    v61[1] = v51;
    v62 = (v58 + v59[7]);
    v63 = v83;
    *v62 = v84;
    v62[1] = v63;
    v64 = v58 + v59[8];
    *v64 = 0;
    *(v64 + 8) = 0;
    *(v64 + 16) = 0;
    *(v64 + 24) = -1;
    v65 = v75;
    v66 = sub_1D1B7336C(v58, v75, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v66);
    *(&v70 - 32) = 0;
    *(&v70 - 3) = v85;
    *(&v70 - 16) = 10;
    v89 = type metadata accessor for StaticService(0);
    v67 = v70;
    sub_1D1E66C8C();

    sub_1D1B70478(v78, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v68 = type metadata accessor for CarbonMonoxideAlarmStatusItem(0);
    v69 = v71;
    *(v71 + v68[6]) = 0;
    *(v69 + v68[7]) = 4;
    *(v69 + v68[8]) = 0;
    sub_1D1B7336C(v65, v69, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v67, v69 + v68[5], type metadata accessor for TilesFilter);
    return (*(*(v68 - 1) + 56))(v69, 0, 1, v68);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v56 = type metadata accessor for CarbonMonoxideAlarmStatusItem(0);
    v57 = *(*(v56 - 8) + 56);

    return v57(a3, 1, 1, v56);
  }
}

uint64_t sub_1D1B69058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = sub_1D1E66A7C();
  v6 = *(v93 - 8);
  v7 = MEMORY[0x1EEE9AC00](v93);
  v89 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v75 - v14;
  v15 = type metadata accessor for TilesFilter(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for IconTextValueStringDataHolder(0);
  v18 = MEMORY[0x1EEE9AC00](v79);
  v81 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v75 - v20;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v21 = MEMORY[0x1EEE9AC00](v88);
  v87 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v75 - v23;
  v24 = sub_1D1B6DD3C(a1, 11, sub_1D1B6E3C8, sub_1D1B6E3C8);

  if (*(v24 + 2))
  {
    v75 = v15;
    v76 = v17;
    v77 = a2;
    v78 = a3;
    v94 = MEMORY[0x1E69E7CD0];
    v25 = v24 + 64;
    v26 = 1 << v24[32];
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 8);
    v29 = (v26 + 63) >> 6;
    v90 = v6;
    v91 = v24;
    v83 = v6 + 8;
    v84 = v6 + 16;

    v31 = 0;
    v85 = v13;
    v32 = v87;
    for (i = v92; v28; i = v92)
    {
      v34 = v31;
      v35 = v91;
LABEL_11:
      v36 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v37 = v36 | (v34 << 6);
      v38 = v90;
      v39 = v86;
      (*(v90 + 16))(v86, v35[6] + *(v90 + 72) * v37, v93);
      v40 = v35[7];
      v41 = type metadata accessor for StaticService(0);
      v42 = v88;
      sub_1D1B733D4(v40 + *(*(v41 - 8) + 72) * v37, v39 + *(v88 + 48), type metadata accessor for StaticService);
      sub_1D1741C08(v39, v32, &qword_1EC642DB0, &unk_1D1E6F360);
      v43 = *(v42 + 48);
      v44 = v89;
      sub_1D1762CB8(v89, v32);
      (*(v38 + 8))(v44, v93);
      sub_1D1741A30(v39, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v32[v43], type metadata accessor for StaticService);
      v13 = v85;
    }

    v35 = v91;
    while (1)
    {
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v34 >= v29)
      {
        break;
      }

      v28 = *&v25[8 * v34];
      ++v31;
      if (v28)
      {
        v31 = v34;
        goto LABEL_11;
      }
    }

    v89 = v94;
    static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EC5C40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D1E739C0;
    v46 = v35[2];
    v47 = MEMORY[0x1E69E65A8];
    *(v45 + 56) = MEMORY[0x1E69E6530];
    *(v45 + 64) = v47;
    *(v45 + 32) = v46;
    v48 = sub_1D1E6783C();
    v87 = v49;
    v88 = v48;

    v50 = v90;
    v51 = v93;
    (*(v90 + 56))(i, 1, 1, v93);
    v52 = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC5B40);
    v54 = v53;
    sub_1D1741C08(i, v13, &qword_1EC642590, qword_1D1E71260);
    v55 = v13;
    v56 = *(v50 + 48);
    if (v56(v13, 1, v51) == 1)
    {
      v57 = i;
      v58 = v82;
      sub_1D1E66A6C();
      sub_1D1741A30(v57, &qword_1EC642590, qword_1D1E71260);
      v59 = v56(v13, 1, v51);
      v60 = v58;
      v61 = v81;
      if (v59 != 1)
      {
        sub_1D1741A30(v55, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
      v60 = v82;
      (*(v50 + 32))(v82, v55, v51);
      v61 = v81;
    }

    (*(v50 + 32))(v61, v60, v51);
    v64 = v79;
    v65 = (v61 + *(v79 + 20));
    *v65 = 0xD000000000000013;
    v65[1] = 0x80000001D1EB5C00;
    v66 = (v61 + v64[6]);
    *v66 = v52;
    v66[1] = v54;
    v67 = (v61 + v64[7]);
    v68 = v87;
    *v67 = v88;
    v67[1] = v68;
    v69 = v61 + v64[8];
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = -1;
    v70 = v80;
    v71 = sub_1D1B7336C(v61, v80, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v71);
    *(&v75 - 32) = 1;
    *(&v75 - 3) = v89;
    *(&v75 - 16) = 11;
    v94 = type metadata accessor for StaticService(0);
    v72 = v76;
    sub_1D1E66C8C();

    sub_1D1B70478(v77, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v73 = type metadata accessor for ContactSensorStatusItem(0);
    v74 = v78;
    *(v78 + v73[6]) = 2;
    *(v74 + v73[7]) = 4;
    *(v74 + v73[8]) = 4;
    sub_1D1B7336C(v70, v74, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v72, v74 + v73[5], type metadata accessor for TilesFilter);
    return (*(*(v73 - 1) + 56))(v74, 0, 1, v73);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v62 = type metadata accessor for ContactSensorStatusItem(0);
    v63 = *(*(v62 - 8) + 56);

    return v63(a3, 1, 1, v62);
  }
}

uint64_t sub_1D1B69978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = sub_1D1E66A7C();
  v6 = *(v88 - 8);
  v7 = MEMORY[0x1EEE9AC00](v88);
  v83 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v70 - v13;
  v14 = type metadata accessor for TilesFilter(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for IconTextValueStringDataHolder(0);
  v17 = MEMORY[0x1EEE9AC00](v73);
  v74 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v70 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v20 = MEMORY[0x1EEE9AC00](v82);
  v81 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v70 - v22;
  v23 = sub_1D1B6DD3C(a1, 32, sub_1D1B6E8DC, sub_1D1B6E8DC);

  if (*(v23 + 2))
  {
    v70 = v14;
    v71 = v16;
    v77 = a2;
    v72 = a3;
    v89 = MEMORY[0x1E69E7CD0];
    v24 = v23 + 64;
    v25 = 1 << v23[32];
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v23 + 8);
    v28 = (v25 + 63) >> 6;
    v84 = v6;
    v85 = v23;
    v78 = v6 + 8;
    v79 = v6 + 16;

    v30 = 0;
    v31 = v81;
    v33 = v86;
    for (i = v87; v27; i = v87)
    {
      v34 = v30;
      v35 = v85;
LABEL_11:
      v36 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v37 = v36 | (v34 << 6);
      v38 = v84;
      v39 = v80;
      (*(v84 + 16))(v80, *(v35 + 48) + *(v84 + 72) * v37, v88);
      v40 = *(v35 + 56);
      v41 = v40 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v37;
      v42 = v82;
      sub_1D1B733D4(v41, v39 + *(v82 + 48), type metadata accessor for StaticService);
      sub_1D1741C08(v39, v31, &qword_1EC642DB0, &unk_1D1E6F360);
      v43 = *(v42 + 48);
      v44 = v83;
      sub_1D1762CB8(v83, v31);
      (*(v38 + 8))(v44, v88);
      sub_1D1741A30(v39, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v31[v43], type metadata accessor for StaticService);
      v33 = v86;
    }

    v35 = v85;
    while (1)
    {
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        return result;
      }

      if (v34 >= v28)
      {
        break;
      }

      v27 = *&v24[8 * v34];
      ++v30;
      if (v27)
      {
        v30 = v34;
        goto LABEL_11;
      }
    }

    v83 = v89;
    sub_1D1B70C9C(v35, v77);
    v81 = v46;
    v82 = v45;

    v47 = v84;
    v48 = v88;
    (*(v84 + 56))(v33, 1, 1, v88);
    v49 = static String.hfLocalized(_:)(0xD000000000000018, 0x80000001D1EC5AF0);
    v51 = v50;
    sub_1D1741C08(v33, i, &qword_1EC642590, qword_1D1E71260);
    v52 = *(v47 + 48);
    if (v52(i, 1, v48) == 1)
    {
      v53 = i;
      v54 = v76;
      sub_1D1E66A6C();
      sub_1D1741A30(v33, &qword_1EC642590, qword_1D1E71260);
      v55 = v54;
      if (v52(v53, 1, v48) != 1)
      {
        sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v33, &qword_1EC642590, qword_1D1E71260);
      v55 = v76;
      (*(v47 + 32))(v76, i, v48);
    }

    v58 = v74;
    (*(v47 + 32))(v74, v55, v48);
    v59 = v73;
    v60 = (v58 + *(v73 + 20));
    *v60 = 0xD000000000000012;
    v60[1] = 0x80000001D1EC5AD0;
    v61 = (v58 + v59[6]);
    *v61 = v49;
    v61[1] = v51;
    v62 = (v58 + v59[7]);
    v63 = v81;
    *v62 = v82;
    v62[1] = v63;
    v64 = v58 + v59[8];
    *v64 = 0;
    *(v64 + 8) = 0;
    *(v64 + 16) = 0;
    *(v64 + 24) = -1;
    v65 = v75;
    v66 = sub_1D1B7336C(v58, v75, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v66);
    *(&v70 - 32) = 1;
    *(&v70 - 3) = v83;
    *(&v70 - 16) = 32;
    v89 = type metadata accessor for StaticService(0);
    v67 = v71;
    sub_1D1E66C8C();

    sub_1D1B70478(v77, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v68 = type metadata accessor for MotionSensorStatusItem(0);
    v69 = v72;
    *(v72 + v68[6]) = 2;
    *(v69 + v68[7]) = 4;
    *(v69 + v68[8]) = 4;
    sub_1D1B7336C(v65, v69, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v67, v69 + v68[5], type metadata accessor for TilesFilter);
    return (*(*(v68 - 1) + 56))(v69, 0, 1, v68);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v56 = type metadata accessor for MotionSensorStatusItem(0);
    v57 = *(*(v56 - 8) + 56);

    return v57(a3, 1, 1, v56);
  }
}

uint64_t sub_1D1B6A208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = sub_1D1E66A7C();
  v6 = *(v96 - 8);
  v7 = MEMORY[0x1EEE9AC00](v96);
  v94 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v81 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v81 - v14;
  v88 = type metadata accessor for TilesFilter(0);
  MEMORY[0x1EEE9AC00](v88);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for IconTextValueStringDataHolder(0);
  v17 = MEMORY[0x1EEE9AC00](v86);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v81 - v20;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v21 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v81 - v23;
  v24 = sub_1D1B6DBBC(a1, 33, 89);

  if (*(v24 + 2))
  {
    v81 = v19;
    v82 = v10;
    v83 = v16;
    v84 = a2;
    v85 = a3;
    v99 = v6;
    v100 = MEMORY[0x1E69E7CD0];
    v25 = v24 + 64;
    v26 = 1 << v24[32];
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 8);
    v29 = (v26 + 63) >> 6;
    v89 = v6 + 8;
    v90 = v6 + 16;
    v95 = v24;

    v31 = 0;
    v32 = v97;
    for (i = v98; v28; i = v98)
    {
      v34 = v31;
      v35 = v99;
      v36 = v95;
LABEL_11:
      v37 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v38 = v37 | (v34 << 6);
      v39 = v91;
      v40 = v96;
      (*(v35 + 16))(v91, *(v36 + 48) + *(v35 + 72) * v38, v96);
      v41 = *(v36 + 56);
      v42 = v41 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v38;
      v43 = v93;
      sub_1D1B733D4(v42, v39 + *(v93 + 48), type metadata accessor for StaticService);
      v44 = v92;
      sub_1D1741C08(v39, v92, &qword_1EC642DB0, &unk_1D1E6F360);
      v45 = *(v43 + 48);
      v46 = v94;
      sub_1D1762CB8(v94, v44);
      (*(v99 + 8))(v46, v40);
      sub_1D1741A30(v39, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v44[v45], type metadata accessor for StaticService);
      v32 = v97;
    }

    v35 = v99;
    v36 = v95;
    while (1)
    {
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v34 >= v29)
      {
        break;
      }

      v28 = *&v25[8 * v34];
      ++v31;
      if (v28)
      {
        v31 = v34;
        goto LABEL_11;
      }
    }

    v47 = v100;
    v48 = v84;
    sub_1D1B704D8(v36, v84);
    v50 = v49;
    v52 = v51;

    v53 = v96;
    (*(v35 + 56))(v32, 1, 1, v96);
    v54 = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EC5A80);
    v94 = v55;
    v95 = v54;
    sub_1D1741C08(v32, i, &qword_1EC642590, qword_1D1E71260);
    v56 = *(v35 + 48);
    if (v56(i, 1, v53) == 1)
    {
      v93 = v52;
      v57 = v50;
      v58 = v47;
      v59 = v48;
      v60 = v32;
      v61 = v82;
      sub_1D1E66A6C();
      v62 = v60;
      v48 = v59;
      v47 = v58;
      v50 = v57;
      v52 = v93;
      sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
      v63 = v56(i, 1, v53);
      v64 = v85;
      v65 = v83;
      v66 = v53;
      if (v63 != 1)
      {
        sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
        v66 = v53;
        v35 = v99;
      }
    }

    else
    {
      sub_1D1741A30(v32, &qword_1EC642590, qword_1D1E71260);
      v61 = v82;
      (*(v35 + 32))(v82, i, v53);
      v64 = v85;
      v65 = v83;
      v66 = v53;
    }

    v69 = v81;
    (*(v35 + 32))(v81, v61, v66);
    v70 = v86;
    v71 = (v69 + *(v86 + 20));
    *v71 = 0x772E657275676966;
    v71[1] = 0xEB000000006B6C61;
    v72 = (v69 + v70[6]);
    v73 = v94;
    *v72 = v95;
    v72[1] = v73;
    v74 = (v69 + v70[7]);
    *v74 = v50;
    v74[1] = v52;
    v75 = v69 + v70[8];
    *v75 = 0;
    *(v75 + 8) = 0;
    *(v75 + 16) = 0;
    *(v75 + 24) = -1;
    v76 = v69;
    v77 = v87;
    v78 = sub_1D1B7336C(v76, v87, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v78);
    *(&v81 - 32) = 1;
    *(&v81 - 3) = v47;
    *(&v81 - 16) = v79;
    v100 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    sub_1D1B70478(v48, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v80 = type metadata accessor for OccupancySensorStatusItem(0);
    *(v64 + v80[6]) = 2;
    *(v64 + v80[7]) = 4;
    *(v64 + v80[8]) = 4;
    sub_1D1B7336C(v77, v64, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v65, v64 + v80[5], type metadata accessor for TilesFilter);
    return (*(*(v80 - 1) + 56))(v64, 0, 1, v80);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v67 = type metadata accessor for OccupancySensorStatusItem(0);
    v68 = *(*(v67 - 8) + 56);

    return v68(a3, 1, 1, v67);
  }
}

uint64_t sub_1D1B6AAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = sub_1D1E66A7C();
  v6 = *(v88 - 8);
  v7 = MEMORY[0x1EEE9AC00](v88);
  v84 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v70 - v14;
  v15 = type metadata accessor for TilesFilter(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for IconTextValueStringDataHolder(0);
  v18 = MEMORY[0x1EEE9AC00](v73);
  v74 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v70 - v20;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v21 = MEMORY[0x1EEE9AC00](v83);
  v82 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v70 - v23;
  v24 = sub_1D1B6DBBC(a1, 26, 74);

  if (*(v24 + 2))
  {
    v70 = v15;
    v71 = v17;
    v77 = a2;
    v72 = a3;
    v89 = MEMORY[0x1E69E7CD0];
    v25 = v24 + 64;
    v26 = 1 << v24[32];
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 8);
    v29 = (v26 + 63) >> 6;
    v85 = v6;
    v86 = v24;
    v78 = v6 + 8;
    v79 = v6 + 16;

    v31 = 0;
    v80 = v13;
    v32 = v82;
    for (i = v87; v28; i = v87)
    {
      v34 = v31;
      v35 = v86;
LABEL_11:
      v36 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v37 = v36 | (v34 << 6);
      v38 = v85;
      v39 = v81;
      (*(v85 + 16))(v81, *(v35 + 48) + *(v85 + 72) * v37, v88);
      v40 = *(v35 + 56);
      v41 = v40 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v37;
      v42 = v83;
      sub_1D1B733D4(v41, v39 + *(v83 + 48), type metadata accessor for StaticService);
      sub_1D1741C08(v39, v32, &qword_1EC642DB0, &unk_1D1E6F360);
      v43 = *(v42 + 48);
      v44 = v84;
      sub_1D1762CB8(v84, v32);
      (*(v38 + 8))(v44, v88);
      sub_1D1741A30(v39, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v32[v43], type metadata accessor for StaticService);
      v13 = v80;
    }

    v35 = v86;
    while (1)
    {
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v34 >= v29)
      {
        break;
      }

      v28 = *&v25[8 * v34];
      ++v31;
      if (v28)
      {
        v31 = v34;
        goto LABEL_11;
      }
    }

    v84 = v89;
    sub_1D1B72BA8(v35, v77);
    v82 = v46;
    v83 = v45;

    v47 = v85;
    v48 = v88;
    (*(v85 + 56))(i, 1, 1, v88);
    v49 = static String.hfLocalized(_:)(0xD000000000000016, 0x80000001D1EC5B60);
    v51 = v50;
    sub_1D1741C08(i, v13, &qword_1EC642590, qword_1D1E71260);
    v52 = *(v47 + 48);
    if (v52(v13, 1, v48) == 1)
    {
      v53 = v13;
      v54 = v76;
      sub_1D1E66A6C();
      sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
      v55 = v54;
      if (v52(v53, 1, v48) != 1)
      {
        sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
      v55 = v76;
      (*(v47 + 32))(v76, v13, v48);
    }

    v58 = v74;
    (*(v47 + 32))(v74, v55, v48);
    v59 = v73;
    v60 = (v58 + *(v73 + 20));
    *v60 = 0xD000000000000012;
    v60[1] = 0x80000001D1EB5DD0;
    v61 = (v58 + v59[6]);
    *v61 = v49;
    v61[1] = v51;
    v62 = (v58 + v59[7]);
    v63 = v82;
    *v62 = v83;
    v62[1] = v63;
    v64 = v58 + v59[8];
    *v64 = 0;
    *(v64 + 8) = 0;
    *(v64 + 16) = 0;
    *(v64 + 24) = -1;
    v65 = v75;
    v66 = sub_1D1B7336C(v58, v75, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v66);
    *(&v70 - 32) = 0;
    *(&v70 - 3) = v84;
    *(&v70 - 16) = 26;
    v89 = type metadata accessor for StaticService(0);
    v67 = v71;
    sub_1D1E66C8C();

    sub_1D1B70478(v77, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v68 = type metadata accessor for LeakAlarmStatusItem(0);
    v69 = v72;
    *(v72 + v68[6]) = 0;
    *(v69 + v68[7]) = 6;
    *(v69 + v68[8]) = 0;
    sub_1D1B7336C(v65, v69, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v67, v69 + v68[5], type metadata accessor for TilesFilter);
    return (*(*(v68 - 1) + 56))(v69, 0, 1, v68);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v56 = type metadata accessor for LeakAlarmStatusItem(0);
    v57 = *(*(v56 - 8) + 56);

    return v57(a3, 1, 1, v56);
  }
}

uint64_t sub_1D1B6B318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = sub_1D1E66A7C();
  v6 = *(v93 - 8);
  v7 = MEMORY[0x1EEE9AC00](v93);
  v89 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v75 - v14;
  v15 = type metadata accessor for TilesFilter(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for IconTextValueStringDataHolder(0);
  v18 = MEMORY[0x1EEE9AC00](v79);
  v81 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v75 - v20;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v21 = MEMORY[0x1EEE9AC00](v88);
  v87 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v75 - v23;
  v24 = sub_1D1B6DD3C(a1, 11, sub_1D1B6F0B8, sub_1D1B6F0B8);

  if (*(v24 + 2))
  {
    v75 = v15;
    v76 = v17;
    v77 = a2;
    v78 = a3;
    v94 = MEMORY[0x1E69E7CD0];
    v25 = v24 + 64;
    v26 = 1 << v24[32];
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 8);
    v29 = (v26 + 63) >> 6;
    v90 = v6;
    v91 = v24;
    v83 = v6 + 8;
    v84 = v6 + 16;

    v31 = 0;
    v85 = v13;
    v32 = v87;
    for (i = v92; v28; i = v92)
    {
      v34 = v31;
      v35 = v91;
LABEL_11:
      v36 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v37 = v36 | (v34 << 6);
      v38 = v90;
      v39 = v86;
      (*(v90 + 16))(v86, v35[6] + *(v90 + 72) * v37, v93);
      v40 = v35[7];
      v41 = type metadata accessor for StaticService(0);
      v42 = v88;
      sub_1D1B733D4(v40 + *(*(v41 - 8) + 72) * v37, v39 + *(v88 + 48), type metadata accessor for StaticService);
      sub_1D1741C08(v39, v32, &qword_1EC642DB0, &unk_1D1E6F360);
      v43 = *(v42 + 48);
      v44 = v89;
      sub_1D1762CB8(v89, v32);
      (*(v38 + 8))(v44, v93);
      sub_1D1741A30(v39, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v32[v43], type metadata accessor for StaticService);
      v13 = v85;
    }

    v35 = v91;
    while (1)
    {
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v34 >= v29)
      {
        break;
      }

      v28 = *&v25[8 * v34];
      ++v31;
      if (v28)
      {
        v31 = v34;
        goto LABEL_11;
      }
    }

    v89 = v94;
    static String.hfLocalized(_:)(0xD00000000000002ELL, 0x80000001D1EC5B10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D1E739C0;
    v46 = v35[2];
    v47 = MEMORY[0x1E69E65A8];
    *(v45 + 56) = MEMORY[0x1E69E6530];
    *(v45 + 64) = v47;
    *(v45 + 32) = v46;
    v48 = sub_1D1E6783C();
    v87 = v49;
    v88 = v48;

    v50 = v90;
    v51 = v93;
    (*(v90 + 56))(i, 1, 1, v93);
    v52 = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC5B40);
    v54 = v53;
    sub_1D1741C08(i, v13, &qword_1EC642590, qword_1D1E71260);
    v55 = v13;
    v56 = *(v50 + 48);
    if (v56(v13, 1, v51) == 1)
    {
      v57 = i;
      v58 = v82;
      sub_1D1E66A6C();
      sub_1D1741A30(v57, &qword_1EC642590, qword_1D1E71260);
      v59 = v56(v13, 1, v51);
      v60 = v58;
      v61 = v81;
      if (v59 != 1)
      {
        sub_1D1741A30(v55, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
      v60 = v82;
      (*(v50 + 32))(v82, v55, v51);
      v61 = v81;
    }

    (*(v50 + 32))(v61, v60, v51);
    v64 = v79;
    v65 = (v61 + *(v79 + 20));
    *v65 = 0xD000000000000013;
    v65[1] = 0x80000001D1EB5C00;
    v66 = (v61 + v64[6]);
    *v66 = v52;
    v66[1] = v54;
    v67 = (v61 + v64[7]);
    v68 = v87;
    *v67 = v88;
    v67[1] = v68;
    v69 = v61 + v64[8];
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = -1;
    v70 = v80;
    v71 = sub_1D1B7336C(v61, v80, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v71);
    *(&v75 - 32) = 1;
    *(&v75 - 3) = v89;
    *(&v75 - 16) = 11;
    v94 = type metadata accessor for StaticService(0);
    v72 = v76;
    sub_1D1E66C8C();

    sub_1D1B70478(v77, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v73 = type metadata accessor for IdleContactSensorStatusItem(0);
    v74 = v78;
    *(v78 + v73[6]) = 2;
    *(v74 + v73[7]) = 4;
    *(v74 + v73[8]) = 4;
    sub_1D1B7336C(v70, v74, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v72, v74 + v73[5], type metadata accessor for TilesFilter);
    return (*(*(v73 - 1) + 56))(v74, 0, 1, v73);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v62 = type metadata accessor for IdleContactSensorStatusItem(0);
    v63 = *(*(v62 - 8) + 56);

    return v63(a3, 1, 1, v62);
  }
}

uint64_t sub_1D1B6BC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = sub_1D1E66A7C();
  v6 = *(v88 - 8);
  v7 = MEMORY[0x1EEE9AC00](v88);
  v84 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v70 - v13;
  v14 = type metadata accessor for TilesFilter(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for IconTextValueStringDataHolder(0);
  v17 = MEMORY[0x1EEE9AC00](v75);
  v76 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v70 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v20 = MEMORY[0x1EEE9AC00](v83);
  v82 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v70 - v22;
  v23 = sub_1D1B6DD3C(a1, 32, sub_1D1B6F5C8, sub_1D1B6F5C8);

  if (*(v23 + 2))
  {
    v70 = v14;
    v71 = v16;
    v72 = a2;
    v73 = a3;
    v89 = MEMORY[0x1E69E7CD0];
    v24 = v23 + 64;
    v25 = 1 << v23[32];
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v23 + 8);
    v28 = (v25 + 63) >> 6;
    v85 = v6;
    v86 = v23;
    v79 = v6 + 8;
    v80 = v6 + 16;

    v30 = 0;
    v31 = v82;
    for (i = v87; v27; i = v87)
    {
      v33 = v30;
      v34 = v86;
LABEL_11:
      v35 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v36 = v35 | (v33 << 6);
      v37 = v85;
      v38 = v81;
      (*(v85 + 16))(v81, *(v34 + 6) + *(v85 + 72) * v36, v88);
      v39 = *(v34 + 7);
      v40 = v39 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v36;
      v41 = v83;
      sub_1D1B733D4(v40, v38 + *(v83 + 48), type metadata accessor for StaticService);
      sub_1D1741C08(v38, v31, &qword_1EC642DB0, &unk_1D1E6F360);
      v42 = *(v41 + 48);
      v43 = v84;
      sub_1D1762CB8(v84, v31);
      (*(v37 + 8))(v43, v88);
      sub_1D1741A30(v38, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v31[v42], type metadata accessor for StaticService);
    }

    v34 = v86;
    while (1)
    {
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        return result;
      }

      if (v33 >= v28)
      {
        break;
      }

      v27 = *&v24[8 * v33];
      ++v30;
      if (v27)
      {
        v30 = v33;
        goto LABEL_11;
      }
    }

    v86 = v89;
    v44 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC5AA0);
    v83 = v45;
    v84 = v44;
    v46 = v85;
    v47 = v74;
    v48 = v88;
    (*(v85 + 56))(v74, 1, 1, v88);
    v49 = static String.hfLocalized(_:)(0xD000000000000018, 0x80000001D1EC5AF0);
    v51 = v50;
    sub_1D1741C08(v47, i, &qword_1EC642590, qword_1D1E71260);
    v52 = *(v46 + 48);
    if (v52(i, 1, v48) == 1)
    {
      v53 = i;
      v54 = v78;
      sub_1D1E66A6C();
      sub_1D1741A30(v47, &qword_1EC642590, qword_1D1E71260);
      v55 = v54;
      if (v52(v53, 1, v48) != 1)
      {
        sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v47, &qword_1EC642590, qword_1D1E71260);
      v55 = v78;
      (*(v46 + 32))(v78, i, v48);
    }

    v58 = v76;
    (*(v46 + 32))(v76, v55, v48);
    v59 = v75;
    v60 = (v58 + *(v75 + 20));
    *v60 = 0xD000000000000012;
    v60[1] = 0x80000001D1EC5AD0;
    v61 = (v58 + v59[6]);
    *v61 = v49;
    v61[1] = v51;
    v62 = (v58 + v59[7]);
    v63 = v83;
    *v62 = v84;
    v62[1] = v63;
    v64 = v58 + v59[8];
    *v64 = 0;
    *(v64 + 8) = 0;
    *(v64 + 16) = 0;
    *(v64 + 24) = -1;
    v65 = v77;
    v66 = sub_1D1B7336C(v58, v77, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v66);
    *(&v70 - 32) = 1;
    *(&v70 - 3) = v86;
    *(&v70 - 16) = 32;
    v89 = type metadata accessor for StaticService(0);
    v67 = v71;
    sub_1D1E66C8C();

    sub_1D1B70478(v72, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v68 = type metadata accessor for IdleMotionSensorStatusItem(0);
    v69 = v73;
    *(v73 + v68[6]) = 3;
    *(v69 + v68[7]) = 4;
    *(v69 + v68[8]) = 3;
    sub_1D1B7336C(v65, v69, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v67, v69 + v68[5], type metadata accessor for TilesFilter);
    return (*(*(v68 - 1) + 56))(v69, 0, 1, v68);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v56 = type metadata accessor for IdleMotionSensorStatusItem(0);
    v57 = *(*(v56 - 8) + 56);

    return v57(a3, 1, 1, v56);
  }
}

uint64_t sub_1D1B6C4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = sub_1D1E66A7C();
  v6 = *(v92 - 8);
  v7 = MEMORY[0x1EEE9AC00](v92);
  v89 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v77 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v74 - v14;
  v81 = type metadata accessor for TilesFilter(0);
  MEMORY[0x1EEE9AC00](v81);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for IconTextValueStringDataHolder(0);
  v18 = MEMORY[0x1EEE9AC00](v78);
  v79 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v74 - v20;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v21 = MEMORY[0x1EEE9AC00](v88);
  v87 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v74 - v23;
  v24 = sub_1D1B6DD3C(a1, 33, sub_1D1B6FDD8, sub_1D1B6FDD8);

  if (*(v24 + 2))
  {
    v74 = v17;
    v75 = a2;
    v76 = a3;
    v93 = MEMORY[0x1E69E7CD0];
    v25 = v24 + 64;
    v26 = 1 << v24[32];
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 8);
    v29 = (v26 + 63) >> 6;
    v90 = v24;
    v91 = v6;
    v82 = v6 + 8;
    v83 = v6 + 16;

    v31 = 0;
    v84 = v15;
    for (i = v10; v28; v10 = i)
    {
      v32 = v31;
      v33 = v90;
LABEL_11:
      v34 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v35 = v34 | (v32 << 6);
      v36 = v91;
      v37 = v86;
      (*(v91 + 16))(v86, *(v33 + 6) + *(v91 + 72) * v35, v92);
      v38 = *(v33 + 7);
      v39 = v38 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v35;
      v40 = v88;
      sub_1D1B733D4(v39, v37 + *(v88 + 48), type metadata accessor for StaticService);
      v41 = v87;
      sub_1D1741C08(v37, v87, &qword_1EC642DB0, &unk_1D1E6F360);
      v42 = *(v40 + 48);
      v43 = v89;
      sub_1D1762CB8(v89, v41);
      (*(v36 + 8))(v43, v92);
      sub_1D1741A30(v37, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v41[v42], type metadata accessor for StaticService);
      v15 = v84;
    }

    v33 = v90;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v32 >= v29)
      {
        break;
      }

      v28 = *&v25[8 * v32];
      ++v31;
      if (v28)
      {
        v31 = v32;
        goto LABEL_11;
      }
    }

    v44 = v15;
    v45 = v93;
    v46 = static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5A50);
    v89 = v47;
    v90 = v46;
    v49 = v91;
    v48 = v92;
    (*(v91 + 56))(v44, 1, 1, v92);
    v50 = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EC5A80);
    v52 = v51;
    v53 = v77;
    sub_1D1741C08(v44, v77, &qword_1EC642590, qword_1D1E71260);
    v54 = *(v49 + 48);
    if (v54(v53, 1, v48) == 1)
    {
      sub_1D1E66A6C();
      sub_1D1741A30(v44, &qword_1EC642590, qword_1D1E71260);
      v55 = v54(v53, 1, v48);
      v57 = v75;
      v56 = v76;
      v58 = v48;
      v59 = v74;
      if (v55 != 1)
      {
        v60 = v58;
        sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
        v58 = v60;
        v10 = i;
      }
    }

    else
    {
      sub_1D1741A30(v44, &qword_1EC642590, qword_1D1E71260);
      (*(v49 + 32))(v10, v53, v48);
      v57 = v75;
      v56 = v76;
      v58 = v48;
      v59 = v74;
    }

    v63 = v79;
    (*(v91 + 32))(v79, v10, v58);
    v64 = v78;
    v65 = (v63 + *(v78 + 20));
    *v65 = 0x772E657275676966;
    v65[1] = 0xEB000000006B6C61;
    v66 = (v63 + v64[6]);
    *v66 = v50;
    v66[1] = v52;
    v67 = (v63 + v64[7]);
    v68 = v89;
    *v67 = v90;
    v67[1] = v68;
    v69 = v63 + v64[8];
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = -1;
    v70 = v80;
    v71 = sub_1D1B7336C(v63, v80, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v71);
    *(&v74 - 32) = 1;
    *(&v74 - 3) = v45;
    *(&v74 - 16) = v72;
    v93 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    sub_1D1B70478(v57, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v73 = type metadata accessor for IdleOccupancySensorStatusItem(0);
    *(v56 + v73[6]) = 3;
    *(v56 + v73[7]) = 4;
    *(v56 + v73[8]) = 4;
    sub_1D1B7336C(v70, v56, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v59, v56 + v73[5], type metadata accessor for TilesFilter);
    return (*(*(v73 - 1) + 56))(v56, 0, 1, v73);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v61 = type metadata accessor for IdleOccupancySensorStatusItem(0);
    v62 = *(*(v61 - 8) + 56);

    return v62(a3, 1, 1, v61);
  }
}

uint64_t UmbrellaCategoryInformation.securityStatus(stateSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v89 = a1;
  v95 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B868, &qword_1D1E9AD68);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v94 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B860, &qword_1D1E9AD60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B858, &qword_1D1E9AD58);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v112 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v89 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7D8, &qword_1D1E9ACD8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v111 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v89 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7D0, &qword_1D1E9ACD0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v110 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v106 = &v89 - v23;
  v24 = type metadata accessor for StatusItemLocation(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7C8, &qword_1D1E9ACC8);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v109 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v100 = &v89 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B850, &qword_1D1E9AD50);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v107 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v89 - v34;
  v101 = &v89 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B848, &qword_1D1E9AD48);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v105 = &v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v89 - v39;
  v102 = &v89 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B840, &qword_1D1E9AD40);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v103 = &v89 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v89 - v44;
  v104 = &v89 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7A8, &qword_1D1E9ACA8);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v99 = &v89 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v89 - v49;
  v96 = &v89 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7E0, &qword_1D1E9ACE0);
  v52 = MEMORY[0x1EEE9AC00](v51 - 8);
  v98 = &v89 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v89 - v54;
  v97 = &v89 - v54;
  v56 = *(v3 + 24);
  v57 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v114 = v89;
  v58 = sub_1D190104C(v57, sub_1D1B7044C, v113, v56);

  sub_1D1B4468C(v59, v55);

  sub_1D1B55400(v60, v50);

  sub_1D1B56598(v61, v45);

  sub_1D1B57AD4(v62, v40);

  sub_1D1B59184(v63, v35);
  v64 = sub_1D1E66A7C();
  v65 = *(*(v64 - 8) + 56);
  v65(v26, 1, 1, v64);

  v67 = v100;
  sub_1D1B676EC(v66, v26, v100);
  v65(v26, 1, 1, v64);

  v69 = v106;
  sub_1D1B67F90(v68, v26, v106);
  v65(v26, 1, 1, v64);

  v71 = v108;
  sub_1D1B687F4(v70, v26, v108);
  v65(v26, 1, 1, v64);

  v73 = v90;
  sub_1D1B69058(v72, v26, v90);
  v65(v26, 1, 1, v64);

  v75 = v91;
  sub_1D1B69978(v74, v26, v91);
  v65(v26, 1, 1, v64);
  v76 = v92;
  sub_1D1B6A208(v58, v26, v92);
  v77 = v98;
  sub_1D1741C08(v97, v98, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  v115[0] = v77;
  v78 = v99;
  sub_1D1741C08(v96, v99, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  v115[1] = v78;
  v79 = v103;
  sub_1D1741C08(v104, v103, &qword_1EC64B840, &qword_1D1E9AD40);
  v115[2] = v79;
  v80 = v105;
  sub_1D1741C08(v102, v105, &qword_1EC64B848, &qword_1D1E9AD48);
  v115[3] = v80;
  v81 = v107;
  sub_1D1741C08(v101, v107, &qword_1EC64B850, &qword_1D1E9AD50);
  v115[4] = v81;
  v82 = v109;
  sub_1D1741C08(v67, v109, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  v115[5] = v82;
  v83 = v110;
  sub_1D1741C08(v69, v110, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  v115[6] = v83;
  v84 = v111;
  sub_1D1741C08(v71, v111, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  v115[7] = v84;
  v85 = v112;
  sub_1D1741C08(v73, v112, &qword_1EC64B858, &qword_1D1E9AD58);
  v115[8] = v85;
  v86 = v93;
  sub_1D1741C08(v75, v93, &qword_1EC64B860, &qword_1D1E9AD60);
  v115[9] = v86;
  v87 = v94;
  sub_1D1741C08(v76, v94, &qword_1EC64B868, &qword_1D1E9AD68);
  v115[10] = v87;
  sub_1D1B5C1F4(v115, v95);
  sub_1D1741A30(v76, &qword_1EC64B868, &qword_1D1E9AD68);
  sub_1D1741A30(v75, &qword_1EC64B860, &qword_1D1E9AD60);
  sub_1D1741A30(v73, &qword_1EC64B858, &qword_1D1E9AD58);
  sub_1D1741A30(v108, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A30(v106, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A30(v100, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A30(v101, &qword_1EC64B850, &qword_1D1E9AD50);
  sub_1D1741A30(v102, &qword_1EC64B848, &qword_1D1E9AD48);
  sub_1D1741A30(v104, &qword_1EC64B840, &qword_1D1E9AD40);
  sub_1D1741A30(v96, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  sub_1D1741A30(v97, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  sub_1D1741A30(v87, &qword_1EC64B868, &qword_1D1E9AD68);
  sub_1D1741A30(v86, &qword_1EC64B860, &qword_1D1E9AD60);
  sub_1D1741A30(v112, &qword_1EC64B858, &qword_1D1E9AD58);
  sub_1D1741A30(v111, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A30(v110, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A30(v109, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A30(v107, &qword_1EC64B850, &qword_1D1E9AD50);
  sub_1D1741A30(v105, &qword_1EC64B848, &qword_1D1E9AD48);
  sub_1D1741A30(v103, &qword_1EC64B840, &qword_1D1E9AD40);
  sub_1D1741A30(v99, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  return sub_1D1741A30(v98, &qword_1EC64B7E0, &qword_1D1E9ACE0);
}

uint64_t sub_1D1B6D984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v12 + 16) && (v13 = sub_1D1742188(), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for StaticService(0);
    v18 = *(v17 - 8);
    sub_1D1B733D4(v16 + *(v18 + 72) * v15, v7, type metadata accessor for StaticService);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for StaticService(0);
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  return sub_1D1B0D124(v7, v10);
}

void *sub_1D1B6DBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v10 = v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1D1B6DEC0(v10, v8, v6, v5, v4);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1D1B7032C(v12, v8, v6, v5, v4);
  result = MEMORY[0x1D3893640](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void *sub_1D1B6DD3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v11 = v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v10);
    result = a3(v11, v9, v7, a2);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v14 = swift_slowAlloc();
  v15 = sub_1D1B703BC(v14, v9, v7, a2, a4);
  result = MEMORY[0x1D3893640](v14, -1, -1);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1D1B6DEC0(unint64_t *a1, uint64_t a2, void *a3, int a4, int a5)
{
  v50 = a5;
  v47 = a2;
  v67 = a4;
  v48 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = MEMORY[0x1EEE9AC00](v57);
  v64 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v47 - v8;
  v59 = type metadata accessor for StaticService(0);
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v65);
  v61 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v13 = 0;
  v58 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v54 = v11 + 16;
  v55 = v11;
  v52 = (v11 + 8);
  v53 = v20;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v60 = (v19 - 1) & v19;
LABEL_12:
    v24 = v21 | (v13 << 6);
    v25 = v58;
    v26 = *(v55 + 16);
    v27 = v61;
    v28 = v65;
    v26(v61, v58[6] + *(v55 + 72) * v24, v65);
    v29 = v25[7];
    v30 = *(v56 + 72);
    v51 = v24;
    v31 = v29 + v30 * v24;
    v32 = v62;
    sub_1D1B733D4(v31, v62, type metadata accessor for StaticService);
    v33 = v63;
    v26(v63, v27, v28);
    v34 = v57;
    v35 = v33 + *(v57 + 48);
    sub_1D1B733D4(v32, v35, type metadata accessor for StaticService);
    v36 = v64;
    sub_1D1741C08(v33, v64, &qword_1EC642DB0, &unk_1D1E6F360);
    v37 = v36 + *(v34 + 48);
    LOBYTE(v36) = *(v37 + *(v59 + 104));
    sub_1D1B70478(v37, type metadata accessor for StaticService);
    v68[2] = v36;
    v68[1] = v67;
    v38 = ServiceKind.rawValue.getter();
    v40 = v39;
    if (v38 == ServiceKind.rawValue.getter() && v40 == v41)
    {
      v42 = 1;
    }

    else
    {
      v42 = sub_1D1E6904C();
    }

    v43 = v52;

    v44 = *v43;
    (*v43)(v64, v65);
    if ((v42 & 1) == 0 || (v66 = *(v35 + *(v59 + 128)), v68[0] = v50, v69 = StaticCharacteristicsBag.int(for:)(v68), v69.is_nil))
    {
      sub_1D1741A30(v63, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v62, type metadata accessor for StaticService);
      result = (v44)(v61, v65);
      v20 = v53;
      v19 = v60;
    }

    else
    {
      value = v69.value;
      sub_1D1741A30(v63, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v62, type metadata accessor for StaticService);
      result = (v44)(v61, v65);
      v20 = v53;
      v19 = v60;
      if (value == 1)
      {
        *(v48 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        if (__OFADD__(v49++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v48, v47, v49, v58);
        }
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_1D188B1C8(v48, v47, v49, v58);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v60 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B6E3C8(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v47 = a2;
  v66 = a4;
  v48 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = MEMORY[0x1EEE9AC00](v56);
  v63 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v46 - v7;
  v58 = type metadata accessor for StaticService(0);
  v55 = *(v58 - 1);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v64);
  v60 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v12 = 0;
  v57 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v53 = v10 + 16;
  v54 = v10;
  v51 = (v10 + 8);
  v52 = v19;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v59 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v12 << 6);
    v24 = v57;
    v25 = *(v54 + 16);
    v26 = v60;
    v27 = v64;
    v25(v60, v57[6] + *(v54 + 72) * v23, v64);
    v28 = v24[7];
    v29 = *(v55 + 72);
    v50 = v23;
    v30 = v28 + v29 * v23;
    v31 = v61;
    sub_1D1B733D4(v30, v61, type metadata accessor for StaticService);
    v32 = v62;
    v25(v62, v26, v27);
    v33 = v56;
    v34 = v32 + *(v56 + 48);
    sub_1D1B733D4(v31, v34, type metadata accessor for StaticService);
    v35 = v63;
    sub_1D1741C08(v32, v63, &qword_1EC642DB0, &unk_1D1E6F360);
    v36 = v35 + *(v33 + 48);
    LOBYTE(v35) = *(v36 + v58[26]);
    sub_1D1B70478(v36, type metadata accessor for StaticService);
    v67[2] = v35;
    v67[1] = v66;
    v37 = ServiceKind.rawValue.getter();
    v39 = v38;
    if (v37 == ServiceKind.rawValue.getter() && v39 == v40)
    {
      v41 = 1;
    }

    else
    {
      v41 = sub_1D1E6904C();
    }

    v42 = v51;

    v43 = *v42;
    (*v42)(v63, v64);
    if ((v41 & 1) != 0 && (v65 = *(v34 + v58[32]), v67[0] = 28, v68 = StaticCharacteristicsBag.int(for:)(v67), !v68.is_nil) && v68.value == 1)
    {
      v44 = *(v34 + v58[28]);
      sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v61, type metadata accessor for StaticService);
      result = (v43)(v60, v64);
      v19 = v52;
      v18 = v59;
      if (v44 == 53)
      {
        *(v48 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        if (__OFADD__(v49++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v48, v47, v49, v57);
        }
      }
    }

    else
    {
      sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v61, type metadata accessor for StaticService);
      result = (v43)(v60, v64);
      v19 = v52;
      v18 = v59;
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_1D188B1C8(v48, v47, v49, v57);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v59 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B6E8DC(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v63 = a2;
  v83 = a4;
  v64 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v61 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v9 = MEMORY[0x1EEE9AC00](v74);
  v82 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v61 - v11;
  v78 = type metadata accessor for StaticService(0);
  v73 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v76 = v17;
  v77 = a3;
  v19 = *(a3 + 64);
  v67 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v65 = 0;
  v66 = (v20 + 63) >> 6;
  v71 = v15 + 16;
  v72 = v15;
  v70 = (v15 + 8);
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v79 = (v22 - 1) & v22;
LABEL_14:
    v27 = v24 | (v18 << 6);
    v28 = v77;
    v29 = *(v72 + 16);
    v29(v17, v77[6] + *(v72 + 72) * v27, v13);
    v30 = v28[7];
    v31 = *(v73 + 72);
    v69 = v27;
    v32 = v80;
    sub_1D1B733D4(v30 + v31 * v27, v80, type metadata accessor for StaticService);
    v33 = v13;
    v34 = v81;
    v35 = v33;
    (v29)(v81, v17);
    v36 = v74;
    v37 = v34 + *(v74 + 48);
    sub_1D1B733D4(v32, v37, type metadata accessor for StaticService);
    v38 = v82;
    sub_1D1741C08(v34, v82, &qword_1EC642DB0, &unk_1D1E6F360);
    v39 = v38 + *(v36 + 48);
    LOBYTE(v36) = *(v39 + *(v78 + 104));
    sub_1D1B70478(v39, type metadata accessor for StaticService);
    v85 = v36;
    v84 = v83;
    v40 = ServiceKind.rawValue.getter();
    v42 = v41;
    if (v40 == ServiceKind.rawValue.getter() && v42 == v43)
    {
      v44 = 1;
    }

    else
    {
      v44 = sub_1D1E6904C();
    }

    v45 = v75;
    v46 = v70;

    v23 = *v46;
    v13 = v35;
    (*v46)(v82, v35);
    if (v44)
    {
      v47 = v23;
      v48 = *(v37 + *(v78 + 128));
      if (*(v48 + 16) && (v49 = sub_1D171D140(83), (v50 & 1) != 0))
      {
        v51 = v49;
        v62 = *(v48 + 56);
        v52 = type metadata accessor for StaticCharacteristic(0);
        v53 = *(v52 - 8);
        sub_1D1B733D4(v62 + *(v53 + 72) * v51, v45, type metadata accessor for StaticCharacteristic);
        (*(v53 + 56))(v45, 0, 1, v52);
      }

      else
      {
        v52 = type metadata accessor for StaticCharacteristic(0);
        (*(*(v52 - 8) + 56))(v45, 1, 1, v52);
      }

      v54 = v45;
      v55 = v68;
      sub_1D1741A90(v54, v68, &qword_1EC643630, &qword_1D1E71D10);
      type metadata accessor for StaticCharacteristic(0);
      result = (*(*(v52 - 8) + 48))(v55, 1, v52);
      if (result == 1)
      {
        sub_1D1741A30(v55, &qword_1EC643630, &qword_1D1E71D10);
LABEL_5:
        v23 = v47;
        goto LABEL_6;
      }

      v56 = v55 + *(v52 + 24);
      v57 = *v56;
      v58 = *(v56 + 16);
      if (v58 > 2)
      {
        if (v58 > 4)
        {
          if (v58 == 5 || v58 == 6)
          {
            v59 = v57 == 1;
            if (v57 <= 1)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          if (v58 == 3)
          {
            v57 = v57;
          }

          else if ((v57 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v59 = v57 == 1;
          if (v57 <= 1)
          {
LABEL_39:
            LOBYTE(v57) = v59;
            v17 = v76;
            goto LABEL_43;
          }
        }

        goto LABEL_48;
      }

      v17 = v76;
      if (v58)
      {
        if (v58 == 1)
        {
          v59 = v57 == 1;
          if (v57 <= 1uLL)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v59 = v57 == 1;
          if (v57 <= 1uLL)
          {
            goto LABEL_39;
          }
        }

LABEL_48:
        sub_1D1B70478(v55, type metadata accessor for StaticCharacteristic);
        goto LABEL_5;
      }

LABEL_43:
      sub_1D1B70478(v55, type metadata accessor for StaticCharacteristic);
      sub_1D1741A30(v81, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v80, type metadata accessor for StaticService);
      result = v47(v17, v13);
      v22 = v79;
      if (v57)
      {
        *(v64 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
        if (__OFADD__(v65++, 1))
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
LABEL_6:
      sub_1D1741A30(v81, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v80, type metadata accessor for StaticService);
      v17 = v76;
      result = v23(v76, v13);
      v22 = v79;
    }
  }

  v25 = v18;
  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v18 >= v66)
    {
      return sub_1D188B1C8(v64, v63, v65, v77);
    }

    v26 = *(v67 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v79 = (v26 - 1) & v26;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1D1B6F0B8(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v47 = a2;
  v66 = a4;
  v48 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = MEMORY[0x1EEE9AC00](v56);
  v63 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v46 - v7;
  v58 = type metadata accessor for StaticService(0);
  v55 = *(v58 - 1);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v64);
  v60 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v12 = 0;
  v57 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v53 = v10 + 16;
  v54 = v10;
  v51 = (v10 + 8);
  v52 = v19;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v59 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v12 << 6);
    v24 = v57;
    v25 = *(v54 + 16);
    v26 = v60;
    v27 = v64;
    v25(v60, v57[6] + *(v54 + 72) * v23, v64);
    v28 = v24[7];
    v29 = *(v55 + 72);
    v50 = v23;
    v30 = v28 + v29 * v23;
    v31 = v61;
    sub_1D1B733D4(v30, v61, type metadata accessor for StaticService);
    v32 = v62;
    v25(v62, v26, v27);
    v33 = v56;
    v34 = v32 + *(v56 + 48);
    sub_1D1B733D4(v31, v34, type metadata accessor for StaticService);
    v35 = v63;
    sub_1D1741C08(v32, v63, &qword_1EC642DB0, &unk_1D1E6F360);
    v36 = v35 + *(v33 + 48);
    LOBYTE(v35) = *(v36 + v58[26]);
    sub_1D1B70478(v36, type metadata accessor for StaticService);
    v67[2] = v35;
    v67[1] = v66;
    v37 = ServiceKind.rawValue.getter();
    v39 = v38;
    if (v37 == ServiceKind.rawValue.getter() && v39 == v40)
    {
      v41 = 1;
    }

    else
    {
      v41 = sub_1D1E6904C();
    }

    v42 = v51;

    v43 = *v42;
    (*v42)(v63, v64);
    if ((v41 & 1) != 0 && ((v65 = *(v34 + v58[32]), v67[0] = 28, v68 = StaticCharacteristicsBag.int(for:)(v67), v68.is_nil) || !v68.value))
    {
      v44 = *(v34 + v58[28]);
      sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v61, type metadata accessor for StaticService);
      result = (v43)(v60, v64);
      v19 = v52;
      v18 = v59;
      if (v44 == 53)
      {
        *(v48 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        if (__OFADD__(v49++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v48, v47, v49, v57);
        }
      }
    }

    else
    {
      sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v61, type metadata accessor for StaticService);
      result = (v43)(v60, v64);
      v19 = v52;
      v18 = v59;
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_1D188B1C8(v48, v47, v49, v57);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v59 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B6F5C8(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v62 = a2;
  v82 = a4;
  v63 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v62 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v10 = MEMORY[0x1EEE9AC00](v74);
  v81 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v62 - v12;
  v77 = type metadata accessor for StaticService(0);
  v73 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v75 = a3;
  v20 = *(a3 + 64);
  v66 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v64 = 0;
  v65 = (v21 + 63) >> 6;
  v71 = v16 + 16;
  v72 = v16;
  v76 = (v16 + 8);
  v68 = v8;
  v70 = v18;
  do
  {
    do
    {
      while (1)
      {
        if (!v23)
        {
          v25 = v19;
          while (1)
          {
            v19 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v19 >= v65)
            {
              return sub_1D188B1C8(v63, v62, v64, v75);
            }

            v26 = *(v66 + 8 * v19);
            ++v25;
            if (v26)
            {
              v24 = __clz(__rbit64(v26));
              v78 = (v26 - 1) & v26;
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_47:
          __break(1u);
          return result;
        }

        v24 = __clz(__rbit64(v23));
        v78 = (v23 - 1) & v23;
LABEL_12:
        v27 = v24 | (v19 << 6);
        v28 = v75;
        v29 = *(v72 + 16);
        v29(v18, v75[6] + *(v72 + 72) * v27, v14);
        v30 = v28[7];
        v31 = *(v73 + 72);
        v69 = v27;
        v32 = v14;
        v33 = v79;
        sub_1D1B733D4(v30 + v31 * v27, v79, type metadata accessor for StaticService);
        v34 = v80;
        v35 = v18;
        v36 = v32;
        v29(v80, v35, v32);
        v37 = v74;
        v38 = v34 + *(v74 + 48);
        sub_1D1B733D4(v33, v38, type metadata accessor for StaticService);
        v39 = v81;
        sub_1D1741C08(v34, v81, &qword_1EC642DB0, &unk_1D1E6F360);
        v40 = v39 + *(v37 + 48);
        LOBYTE(v37) = *(v40 + *(v77 + 104));
        sub_1D1B70478(v40, type metadata accessor for StaticService);
        v84 = v37;
        v83 = v82;
        v41 = ServiceKind.rawValue.getter();
        v43 = v42;
        if (v41 == ServiceKind.rawValue.getter() && v43 == v44)
        {
          v45 = 1;
        }

        else
        {
          v45 = sub_1D1E6904C();
        }

        v46 = *v76;
        v14 = v36;
        (*v76)(v81, v36);
        if (v45)
        {
          break;
        }

        sub_1D1741A30(v80, &qword_1EC642DB0, &unk_1D1E6F360);
        sub_1D1B70478(v79, type metadata accessor for StaticService);
        v18 = v70;
        result = v46(v70, v14);
        v23 = v78;
      }

      v47 = *(v38 + *(v77 + 128));
      v18 = v70;
      if (*(v47 + 16) && (v48 = sub_1D171D140(83), (v49 & 1) != 0))
      {
        v50 = v48;
        v51 = *(v47 + 56);
        v52 = type metadata accessor for StaticCharacteristic(0);
        v53 = *(v52 - 8);
        v54 = v51 + *(v53 + 72) * v50;
        v55 = v67;
        sub_1D1B733D4(v54, v67, type metadata accessor for StaticCharacteristic);
        (*(v53 + 56))(v55, 0, 1, v52);
      }

      else
      {
        v52 = type metadata accessor for StaticCharacteristic(0);
        v55 = v67;
        (*(*(v52 - 8) + 56))(v67, 1, 1, v52);
      }

      v56 = v55;
      v57 = v68;
      sub_1D1741A90(v56, v68, &qword_1EC643630, &qword_1D1E71D10);
      type metadata accessor for StaticCharacteristic(0);
      result = (*(*(v52 - 8) + 48))(v57, 1, v52);
      if (result == 1)
      {
        sub_1D1741A30(v57, &qword_1EC643630, &qword_1D1E71D10);
LABEL_41:
        sub_1D1741A30(v80, &qword_1EC642DB0, &unk_1D1E6F360);
        sub_1D1B70478(v79, type metadata accessor for StaticService);
        result = v46(v18, v14);
        v23 = v78;
        break;
      }

      v58 = v57 + *(v52 + 24);
      v59 = *v58;
      v60 = *(v58 + 16);
      if (v60 <= 2)
      {
        if (!v60)
        {
          goto LABEL_37;
        }

        if (v60 == 1)
        {
          v59 = v59;
        }

        else
        {
          v59 = v59;
        }
      }

      else if (v60 > 4)
      {
        if (v60 != 5 && v60 != 6)
        {
LABEL_40:
          sub_1D1B70478(v57, type metadata accessor for StaticCharacteristic);
          goto LABEL_41;
        }

        v59 = v59;
      }

      else if (v60 == 3)
      {
        v59 = v59;
      }

      else if ((v59 & 0x8000000000000000) != 0)
      {
        goto LABEL_47;
      }

      if (v59 > 1)
      {
        goto LABEL_40;
      }

      LOBYTE(v59) = v59 == 1;
LABEL_37:
      sub_1D1B70478(v57, type metadata accessor for StaticCharacteristic);
      sub_1D1741A30(v80, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v79, type metadata accessor for StaticService);
      result = v46(v18, v14);
      v23 = v78;
    }

    while ((v59 & 1) != 0);
    *(v63 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
  }

  while (!__OFADD__(v64++, 1));
  __break(1u);
  return sub_1D188B1C8(v63, v62, v64, v75);
}

uint64_t sub_1D1B6FDD8(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v46 = a2;
  v65 = a4;
  v47 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = MEMORY[0x1EEE9AC00](v56);
  v63 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v45 - v7;
  v58 = type metadata accessor for StaticService(0);
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v9);
  v60 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v57 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v48 = 0;
  v49 = (v17 + 63) >> 6;
  v52 = v11 + 16;
  v53 = v11;
  v54 = result;
  v51 = (v11 + 8);
  while (v19)
  {
    v20 = __clz(__rbit64(v19));
    v59 = (v19 - 1) & v19;
LABEL_12:
    v23 = v20 | (v13 << 6);
    v24 = v57;
    v25 = *(v53 + 16);
    v26 = v60;
    v25(v60, v57[6] + *(v53 + 72) * v23, v9);
    v27 = v24[7];
    v28 = *(v55 + 72);
    v50 = v23;
    v29 = v9;
    v30 = v61;
    sub_1D1B733D4(v27 + v28 * v23, v61, type metadata accessor for StaticService);
    v31 = v62;
    v25(v62, v26, v29);
    v32 = v56;
    v33 = v31 + *(v56 + 48);
    sub_1D1B733D4(v30, v33, type metadata accessor for StaticService);
    v34 = v63;
    sub_1D1741C08(v31, v63, &qword_1EC642DB0, &unk_1D1E6F360);
    v35 = v34 + *(v32 + 48);
    LOBYTE(v34) = *(v35 + *(v58 + 104));
    sub_1D1B70478(v35, type metadata accessor for StaticService);
    v66[2] = v34;
    v66[1] = v65;
    v36 = ServiceKind.rawValue.getter();
    v38 = v37;
    if (v36 == ServiceKind.rawValue.getter() && v38 == v39)
    {
      v40 = 1;
    }

    else
    {
      v40 = sub_1D1E6904C();
    }

    v41 = v51;

    v42 = *v41;
    v9 = v54;
    (*v41)(v63, v54);
    if (v40)
    {
      v64 = *(v33 + *(v58 + 128));
      v66[0] = 89;
      v67 = StaticCharacteristicsBag.int(for:)(v66);
      if (v67.is_nil)
      {
        sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
        sub_1D1B70478(v61, type metadata accessor for StaticService);
        result = (v42)(v60, v9);
        v19 = v59;
LABEL_21:
        *(v47 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        if (__OFADD__(v48++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v47, v46, v48, v57);
        }
      }

      else
      {
        value = v67.value;
        sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
        sub_1D1B70478(v61, type metadata accessor for StaticService);
        result = (v42)(v60, v9);
        v19 = v59;
        if (!value)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v61, type metadata accessor for StaticService);
      result = (v42)(v60, v9);
      v19 = v59;
    }
  }

  v21 = v13;
  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v49)
    {
      return sub_1D188B1C8(v47, v46, v48, v57);
    }

    v22 = v15[v13];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v59 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1B7032C(void *result, uint64_t a2, void *a3, int a4, int a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1D1B6DEC0(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

void *sub_1D1B703BC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_1D1B70478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1B704D8(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v57[0] = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = v57 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = *(v76 - 8);
  v8 = MEMORY[0x1EEE9AC00](v76);
  v71 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v57 - v10;
  v69 = type metadata accessor for StaticService(0);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D1E66A7C();
  v12 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v63 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = v57 - v17;
  v18 = *(a1 + 64);
  v60 = a1 + 64;
  v19 = -1 << *(a1 + 32);
  v79 = MEMORY[0x1E69E7CD0];
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v57[1] = v19;
  v22 = (63 - v19) >> 6;
  v61 = v12 + 32;
  v62 = v12 + 16;
  v72 = (v7 + 48);
  v73 = (v7 + 56);
  v66 = v12;
  v67 = a1;
  v68 = (v12 + 8);
  swift_bridgeObjectRetain_n();
  v23 = 0;
  while (1)
  {
    if (!v21)
    {
      if (v22 <= v23 + 1)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v22;
      }

      v27 = v26 - 1;
      v29 = v75;
      v28 = v76;
      v25 = v74;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v22)
        {
          v21 = 0;
          v39 = 1;
          v23 = v27;
          goto LABEL_16;
        }

        v21 = *(v60 + 8 * v24);
        ++v23;
        if (v21)
        {
          v23 = v24;
          goto LABEL_15;
        }
      }

      __break(1u);
      return;
    }

    v24 = v23;
    v25 = v74;
LABEL_15:
    v30 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v31 = v30 | (v24 << 6);
    v33 = v66;
    v32 = v67;
    v34 = v63;
    v35 = v77;
    (*(v66 + 16))(v63, *(v67 + 48) + *(v66 + 72) * v31, v77);
    v36 = v64;
    sub_1D1B733D4(*(v32 + 56) + *(v65 + 72) * v31, v64, type metadata accessor for StaticService);
    v28 = v76;
    v37 = *(v76 + 48);
    v38 = *(v33 + 32);
    v29 = v75;
    v38(v75, v34, v35);
    sub_1D1B7336C(v36, v29 + v37, type metadata accessor for StaticService);
    v39 = 0;
LABEL_16:
    (*v73)(v29, v39, 1, v28);
    sub_1D1741A90(v29, v25, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v72)(v25, 1, v28) == 1)
    {
      break;
    }

    v40 = v70;
    sub_1D1741A90(v25, v70, &qword_1EC642DB0, &unk_1D1E6F360);
    v41 = v71;
    sub_1D1741C08(v40, v71, &qword_1EC642DB0, &unk_1D1E6F360);
    v42 = v41 + *(v28 + 48);
    v43 = (v42 + *(v69 + 80));
    v44 = *v43;
    v45 = v43[1];

    sub_1D1B70478(v42, type metadata accessor for StaticService);
    (*v68)(v41, v77);
    sub_1D1741A30(v40, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v45)
    {
      sub_1D1762FC4(&v78, v44, v45);
    }
  }

  v46 = v67;

  sub_1D1716918(v46);
  v47 = v79;
  v48 = v59;
  v49 = v58;
  sub_1D1B733D4(v59, v58, type metadata accessor for StatusItemLocation);
  v50 = *(v66 + 48);
  LODWORD(v46) = v50(v49, 1, v77);
  sub_1D1B70478(v49, type metadata accessor for StatusItemLocation);
  if (v46 == 1 && *(v47 + 16) == 1)
  {
    sub_1D1772608(v47);
    if (v51)
    {
      goto LABEL_25;
    }
  }

  v52 = v48;
  v53 = v57[0];
  sub_1D1B733D4(v52, v57[0], type metadata accessor for StatusItemLocation);
  if (v50(v53, 1, v77) == 1)
  {
    static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1D1E739C0;
    v55 = *(v47 + 16);

    v56 = MEMORY[0x1E69E65A8];
    *(v54 + 56) = MEMORY[0x1E69E6530];
    *(v54 + 64) = v56;
    *(v54 + 32) = v55;
    sub_1D1E6783C();

LABEL_25:

    return;
  }

  static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EC5BE0);
  sub_1D1B70478(v53, type metadata accessor for StatusItemLocation);
}
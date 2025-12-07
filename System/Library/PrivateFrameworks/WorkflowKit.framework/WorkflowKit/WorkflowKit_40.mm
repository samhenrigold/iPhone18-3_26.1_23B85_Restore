uint64_t sub_1CA68267C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F00, &qword_1CA991B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA6826E4(unint64_t *a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v35 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F00, &qword_1CA991B40);
  v4 = MEMORY[0x1EEE9AC00](v46);
  v45 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v33 - v6;
  v42 = sub_1CA9486C8();
  result = MEMORY[0x1EEE9AC00](v42);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v47 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v36 = 0;
  v37 = (v14 + 63) >> 6;
  v40 = v8 + 16;
  v43 = v8;
  v38 = v12;
  v39 = v8 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v48 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v10 << 6);
    v21 = v47;
    v22 = v42;
    v23 = v43;
    v24 = *(v43 + 16);
    v25 = v41;
    v24(v41, v47[6] + *(v43 + 72) * v20, v42);
    v26 = v20;
    LOBYTE(v21) = *(v21[7] + v20);
    v27 = v44;
    v24(v44, v25, v22);
    v28 = v46;
    v27[*(v46 + 48)] = v21;
    v29 = v27;
    v30 = v45;
    sub_1CA682124(v29, v45);
    LODWORD(v28) = *(v30 + *(v28 + 48));
    v31 = *(v23 + 8);
    v31(v30, v22);
    result = (v31)(v25, v22);
    v16 = v48;
    if (v28 == 1)
    {
      *(v35 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_1CA6829D8(v35, v34, v36, v47);
      }
    }
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v37)
    {
      return sub_1CA6829D8(v35, v34, v36, v47);
    }

    v19 = v38[v10];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v48 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA6829D8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = sub_1CA9486C8();
  v45 = *(v47 - 8);
  v8 = MEMORY[0x1EEE9AC00](v47);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v36 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F18, &qword_1CA991B50);
  result = sub_1CA94D688();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = v45 + 16;
  v39 = result;
  v46 = v45 + 32;
  v16 = result + 64;
  v40 = a1;
  v37 = a4;
  v17 = v47;
  while (v14)
  {
    v18 = v10;
    v19 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v45;
    v44 = *(v45 + 72);
    v25 = v41;
    (*(v45 + 16))(v41, v23 + v44 * v22, v17);
    v43 = *(a4[7] + v22);
    v26 = *(v24 + 32);
    v10 = v18;
    v26(v18, v25, v17);
    v13 = v39;
    sub_1CA6820DC(&qword_1EC4443A8, MEMORY[0x1E6996C28], MEMORY[0x1E6996C30]);
    result = sub_1CA94C288();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v40;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v40;
LABEL_25:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = (v26)(*(v13 + 48) + v30 * v44, v10, v47);
    *(*(v13 + 56) + v30) = v43;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v37;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v10;
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

id sub_1CA682D9C()
{
  v190 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9DDB50;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("select|photo|from|library|picture", 33);
  v7 = v6;
  v8 = sub_1CA94C438("select|photo|from|library|picture", 33);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v199 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v200 = v12;
  v13 = v182 - v199;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v198 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v197 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v201 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v182 - v201;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v196 = v20;
  v21 = v2;
  v2[10] = v19;
  v2[13] = v20;
  v2[14] = @"AppDefinition";
  v22 = @"AppDefinition";
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v189 = v24;
  v2[15] = v23;
  v2[18] = v24;
  v2[19] = @"Description";
  v194 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1CA97EDF0;
  *(v25 + 32) = @"DescriptionResult";
  v26 = @"Description";
  v27 = @"DescriptionResult";
  v28 = sub_1CA94C438("The selected photos/videos", 26);
  v191 = v29;
  v192 = v28;
  v30 = sub_1CA94C438("The selected photos/videos", 26);
  v32 = v31;
  v193 = v182;
  MEMORY[0x1EEE9AC00](v30);
  v33 = v182 - v199;
  sub_1CA948D98();
  v34 = v198;
  v35 = [v198 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = v182 - v201;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v25 + 40) = sub_1CA2F9F14(v192, v191, v30, v32, 0, 0, v33, v36);
  v38 = v196;
  *(v25 + 64) = v196;
  *(v25 + 72) = @"DescriptionSummary";
  v39 = @"DescriptionSummary";
  v40 = sub_1CA94C438("Prompts to choose photos and videos from your photo library.", 60);
  v191 = v41;
  v192 = v40;
  v42 = sub_1CA94C438("Prompts to choose photos and videos from your photo library.", 60);
  v44 = v43;
  v193 = v182;
  MEMORY[0x1EEE9AC00](v42);
  v45 = v182 - v199;
  sub_1CA948D98();
  v46 = [v34 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = v182 - v201;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v49 = sub_1CA2F9F14(v192, v191, v42, v44, 0, 0, v45, v47);
  *(v25 + 104) = v38;
  *(v25 + 80) = v49;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v50 = sub_1CA94C1E8();
  v51 = v194;
  v21[20] = sub_1CA6B3784(v50);
  v21[23] = v51;
  v21[24] = @"DisabledOnPlatforms";
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v194 = v52;
  v195 = v21;
  v21[25] = &unk_1F4A0BB10;
  v21[28] = v52;
  v21[29] = @"LocallyProcessesData";
  v53 = MEMORY[0x1E69E6370];
  *(v21 + 240) = 1;
  v21[33] = v53;
  v21[34] = @"Name";
  v54 = @"DisabledOnPlatforms";
  v55 = @"LocallyProcessesData";
  v56 = @"Name";
  v192 = sub_1CA94C438("Select Photos (Action Name)", 27);
  v58 = v57;
  v59 = sub_1CA94C438("Select Photos", 13);
  v61 = v60;
  v193 = v182;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v182 - v199;
  sub_1CA948D98();
  v63 = [v198 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v182 - v201;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v192, v58, v59, v61, 0, 0, v62, v64);
  v67 = v195;
  v68 = v196;
  v195[35] = v66;
  v67[38] = v68;
  v67[39] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_1CA9813C0;
  *(v69 + 32) = 0x656C7069746C754DLL;
  *(v69 + 40) = 0xE800000000000000;
  *(v69 + 48) = 1;
  *(v69 + 72) = MEMORY[0x1E69E6370];
  *(v69 + 80) = 0x614E74757074754FLL;
  *(v69 + 88) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438("Photos (Default Output Name)", 28);
  v191 = v72;
  v192 = v71;
  v73 = sub_1CA94C438("Photos", 6);
  v75 = v74;
  v193 = v182;
  MEMORY[0x1EEE9AC00](v73);
  v76 = v182 - v199;
  sub_1CA948D98();
  v77 = [v198 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = v182 - v201;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v192, v191, v73, v75, 0, 0, v76, v78);
  v81 = v194;
  *(v69 + 96) = v80;
  *(v69 + 120) = v68;
  *(v69 + 128) = 0x7365707954;
  *(v69 + 168) = v81;
  *(v69 + 136) = 0xE500000000000000;
  *(v69 + 144) = &unk_1F4A0BB40;
  v82 = MEMORY[0x1E69E6158];
  v83 = sub_1CA94C1E8();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v85 = v195;
  v195[40] = v83;
  v85[43] = v84;
  v85[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v193 = swift_allocObject();
  *(v193 + 1) = xmmword_1CA981360;
  v192 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1CA981380;
  *(v86 + 32) = @"AllowsMultipleValues";
  *(v86 + 40) = 1;
  *(v86 + 64) = MEMORY[0x1E69E6370];
  *(v86 + 72) = @"Class";
  *(v86 + 80) = 0xD000000000000016;
  *(v86 + 88) = 0x80000001CA99C4A0;
  *(v86 + 104) = v82;
  *(v86 + 112) = @"DefaultValue";
  *(v86 + 120) = &unk_1F4A0BB70;
  *(v86 + 144) = v81;
  *(v86 + 152) = @"Items";
  v191 = swift_allocObject();
  *(v191 + 1) = xmmword_1CA981470;
  v187 = @"Class";
  v87 = @"Parameters";
  v88 = @"AllowsMultipleValues";
  v89 = @"DefaultValue";
  v90 = @"Items";
  v91 = sub_1CA94C438("Images (WFPhotoPickerTypes)", 27);
  v184 = v92;
  v185 = v91;
  v93 = sub_1CA94C438("Images", 6);
  v183 = v94;
  v186 = v182;
  MEMORY[0x1EEE9AC00](v93);
  v95 = v199;
  sub_1CA948D98();
  v96 = [v198 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v182 - v201;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99 = sub_1CA2F9F14(v185, v184, v93, v183, 0, 0, v182 - v95, v97);
  v100 = v191;
  v191[4] = v99;
  v101 = sub_1CA94C438("Live Photos (WFPhotoPickerTypes)", 32);
  v184 = v102;
  v185 = v101;
  v103 = sub_1CA94C438("Live Photos", 11);
  v183 = v104;
  v186 = v182;
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948D98();
  v105 = v198;
  v106 = [v198 bundleURL];
  v182[1] = v182;
  MEMORY[0x1EEE9AC00](v106);
  v107 = v201;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 40) = sub_1CA2F9F14(v185, v184, v103, v183, 0, 0, v182 - v95, v182 - v107);
  v109 = sub_1CA94C438("Videos (WFPhotoPickerTypes)", 27);
  v184 = v110;
  v185 = v109;
  v111 = sub_1CA94C438("Videos", 6);
  v183 = v112;
  v186 = v182;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948D98();
  v113 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v185, v184, v111, v183, 0, 0, v182 - v95, v182 - v107);
  v116 = v191;
  v191[6] = v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v86 + 160) = v116;
  *(v86 + 184) = v117;
  *(v86 + 192) = @"Key";
  *(v86 + 200) = 0xD000000000000012;
  *(v86 + 208) = 0x80000001CA9DDCE0;
  *(v86 + 224) = MEMORY[0x1E69E6158];
  *(v86 + 232) = @"Label";
  v118 = @"Key";
  v119 = @"Label";
  v184 = v118;
  v185 = v119;
  v120 = sub_1CA94C438("Include (WFPhotoPickerTypes)", 28);
  v186 = v121;
  v122 = sub_1CA94C438("Include", 7);
  v124 = v123;
  v191 = v182;
  MEMORY[0x1EEE9AC00](v122);
  v125 = v182 - v199;
  sub_1CA948D98();
  v126 = [v198 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = v182 - v201;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v120, v186, v122, v124, 0, 0, v125, v127);
  *(v86 + 264) = v196;
  *(v86 + 240) = v129;
  _s3__C3KeyVMa_0(0);
  v191 = v130;
  v186 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v131 = sub_1CA94C1E8();
  v132 = sub_1CA2F864C(v131);
  v193[4] = v132;
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_1CA981350;
  *(v133 + 32) = v187;
  *(v133 + 40) = 0xD000000000000011;
  *(v133 + 48) = 0x80000001CA99E620;
  v134 = MEMORY[0x1E69E6158];
  v135 = v184;
  *(v133 + 64) = MEMORY[0x1E69E6158];
  *(v133 + 72) = v135;
  *(v133 + 80) = 0xD000000000000016;
  *(v133 + 88) = 0x80000001CA9DDD20;
  v136 = v185;
  *(v133 + 104) = v134;
  *(v133 + 112) = v136;
  v187 = sub_1CA94C438("Select Multiple (WFSelectMultiplePhotos)", 40);
  v185 = v137;
  v138 = sub_1CA94C438("Select Multiple", 15);
  v184 = v139;
  v188 = v182;
  MEMORY[0x1EEE9AC00](v138);
  v140 = v199;
  sub_1CA948D98();
  v141 = v198;
  v142 = [v198 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = v182 - v201;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v133 + 120) = sub_1CA2F9F14(v187, v185, v138, v184, 0, 0, v182 - v140, v143);
  *(v133 + 144) = v196;
  *(v133 + 152) = @"Prompt";
  v145 = @"Prompt";
  v146 = sub_1CA94C438("Select Multiple Images (WFSelectMultiplePhotos)", 47);
  v187 = v147;
  v148 = sub_1CA94C438("Select Multiple Images", 22);
  v150 = v149;
  v188 = v182;
  MEMORY[0x1EEE9AC00](v148);
  v151 = v182 - v140;
  sub_1CA948D98();
  v152 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = v182 - v201;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v155 = sub_1CA2F9F14(v146, v187, v148, v150, 0, 0, v151, v153);
  *(v133 + 184) = v196;
  *(v133 + 160) = v155;
  v156 = sub_1CA94C1E8();
  v157 = sub_1CA2F864C(v156);
  v158 = v193;
  v193[5] = v157;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v160 = v195;
  v195[45] = v158;
  v160[48] = v159;
  v160[49] = @"ParameterSummary";
  v161 = @"ParameterSummary";
  v162 = sub_1CA94C438("Select photos (Parameter Summary)", 33);
  v164 = v163;
  v165 = sub_1CA94C438("Select photos", 13);
  v167 = v166;
  v196 = v182;
  MEMORY[0x1EEE9AC00](v165);
  v168 = v182 - v199;
  sub_1CA948D98();
  v169 = [v198 bundleURL];
  MEMORY[0x1EEE9AC00](v169);
  v170 = v182 - v201;
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v172 = sub_1CA2F9F14(v162, v164, v165, v167, 0, 0, v168, v170);
  v173 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v174 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v160[50] = v173;
  v160[53] = v174;
  v160[54] = @"RequiredResources";
  v160[55] = &unk_1F4A0BBC0;
  v175 = v194;
  v160[58] = v194;
  v160[59] = @"RequiresUnlock";
  *(v160 + 480) = 1;
  v160[63] = MEMORY[0x1E69E6370];
  v160[64] = @"UserInterfaceClasses";
  v176 = @"RequiredResources";
  v177 = @"RequiresUnlock";
  v178 = @"UserInterfaceClasses";
  v179 = sub_1CA94C1E8();
  v160[68] = v189;
  v160[65] = v179;
  v160[69] = @"UserInterfaces";
  v160[73] = v175;
  v160[70] = &unk_1F4A0BC60;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v180 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static LNDurationBridge.duration(with:)(uint64_t a1)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (sub_1CA323E28())
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    v2 = v1 != 0;
    if (v1)
    {
      [v1 longLongValue];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1CA323E28();

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 longLongValue];
      swift_unknownObjectRelease();
      return 0;
    }

    swift_unknownObjectRelease();
  }

  if (v2)
  {
    return 0;
  }

  sub_1CA94CCC8();
  sub_1CA94D9E8();
  return sub_1CA94CCA8();
}

id sub_1CA6843F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = static LNDurationBridge.duration(with:)(a3);
  swift_unknownObjectRelease();

  return v4;
}

id sub_1CA684444(void *a1)
{
  v1 = a1;
  v2 = LNDurationBridge.serializedRepresentation.getter();

  return v2;
}

uint64_t LNDurationBridge.serializedRepresentation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v0 = sub_1CA94C1E8();
  sub_1CA94CCB8();
  if ((v1 & 1) == 0)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v0;
    sub_1CA32EA0C(v2, 0x73646E6F636573, 0xE700000000000000, isUniquelyReferenced_nonNull_native, &v10);

    v4 = v10;
    sub_1CA94D9C8();
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    swift_unknownObjectRetain();
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v10 = v4;
    sub_1CA32EA0C(v6, 0x6F6365736F747461, 0xEB0000000073646ELL, v7, &v10);
  }

  v8 = sub_1CA94C1A8();

  return v8;
}

id sub_1CA684640()
{
  v107 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DDE00;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("whitespace|trim|regex|newline|format", 36);
  v6 = v5;
  v7 = sub_1CA94C438("whitespace|trim|regex|newline|format", 36);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = v11;
  v114 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v100 - v114;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v111 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v113 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v110 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v100 - v110;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v109 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  *&v108 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Removes whitespace and newlines from both ends of the text passed into the action.", 82);
  v105 = v24;
  v25 = sub_1CA94C438("Removes whitespace and newlines from both ends of the text passed into the action.", 82);
  v27 = v26;
  v106 = &v100;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v100 - v114;
  sub_1CA948D98();
  v29 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v100 - v110;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v105, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v109;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v108;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconName";
  *(inited + 160) = 1954047316;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"Input";
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v108 = xmmword_1CA981350;
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x7475706E494657;
  *(v36 + 104) = 0xE700000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  v38 = v37;
  *(v36 + 184) = 0xE500000000000000;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v106;
  *(v36 + 192) = &unk_1F4A0BCA0;
  v39 = @"IconName";
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v105 = v42;
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 0;
  *(inited + 264) = v38;
  *(inited + 272) = @"Name";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438("Trim Whitespace (Action Name)", 29);
  v101 = v46;
  v102 = v45;
  v47 = sub_1CA94C438("Trim Whitespace", 15);
  v100 = v48;
  v103 = &v100;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v100 - v114;
  sub_1CA948D98();
  v50 = v111;
  v51 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v110;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v102, v101, v47, v100, 0, 0, v49, &v100 - v52);
  v54 = v109;
  *(inited + 304) = v109;
  *(inited + 312) = @"Output";
  v55 = swift_initStackObject();
  *(v55 + 16) = v108;
  *(v55 + 32) = 0x75736F6C63736944;
  *(v55 + 40) = 0xEF6C6576654C6572;
  *(v55 + 48) = 0x63696C627550;
  *(v55 + 56) = 0xE600000000000000;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0x656C7069746C754DLL;
  *(v55 + 88) = 0xE800000000000000;
  *(v55 + 96) = 1;
  *(v55 + 120) = MEMORY[0x1E69E6370];
  *(v55 + 128) = 0x614E74757074754FLL;
  *(v55 + 136) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438("Updated Text (Default Output Name)", 34);
  v102 = v58;
  v103 = v57;
  v101 = sub_1CA94C438("Updated Text", 12);
  v60 = v59;
  v104 = &v100;
  MEMORY[0x1EEE9AC00](v101);
  v61 = &v100 - v114;
  sub_1CA948D98();
  v62 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v103, v102, v101, v60, 0, 0, v61, &v100 - v52);
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v106;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F4A0BCD0;
  v64 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v105;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v106 = swift_allocObject();
  *(v106 + 1) = xmmword_1CA9813B0;
  v105 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_allocObject();
  *(v65 + 16) = v108;
  *(v65 + 32) = @"Class";
  *(v65 + 40) = 0xD000000000000014;
  *(v65 + 48) = 0x80000001CA99B500;
  *(v65 + 64) = v64;
  *(v65 + 72) = @"Key";
  *(v65 + 80) = 0x7475706E494657;
  *(v65 + 88) = 0xE700000000000000;
  *(v65 + 104) = v64;
  *(v65 + 112) = @"Label";
  v66 = @"Parameters";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v70 = sub_1CA94C438("Text (WFInput)", 14);
  v104 = v71;
  v72 = sub_1CA94C438("Text", 4);
  v74 = v73;
  *&v108 = &v100;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v100 - v114;
  sub_1CA948D98();
  v76 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v100 - v110;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 120) = sub_1CA2F9F14(v70, v104, v72, v74, 0, 0, v75, v77);
  *(v65 + 144) = v109;
  *(v65 + 152) = @"Multiline";
  *(v65 + 184) = MEMORY[0x1E69E6370];
  *(v65 + 160) = 1;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v79 = @"Multiline";
  v80 = sub_1CA94C1E8();
  v81 = sub_1CA2F864C(v80);
  v82 = v106;
  v106[4] = v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v82;
  *(inited + 384) = v83;
  *(inited + 392) = @"ParameterSummary";
  v84 = @"ParameterSummary";
  v85 = sub_1CA94C438("Trim whitespace from ${WFInput} (Parameter Summary)", 51);
  v87 = v86;
  v88 = sub_1CA94C438("Trim whitespace from ${WFInput}", 31);
  v90 = v89;
  v109 = &v100;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v100 - v114;
  sub_1CA948D98();
  v92 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v100 - v110;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v85, v87, v88, v90, 0, 0, v91, v93);
  v96 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v97 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v96;
  *(inited + 424) = v97;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v98 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA685440()
{
  v29[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 120) = 0x68746C616548;
  *(inited + 128) = 0xE600000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v6;
  *(inited + 192) = @"Name";
  v7 = @"IconName";
  v8 = @"LocallyProcessesData";
  v9 = @"Name";
  v10 = sub_1CA94C438("Get Details of Health Sample (Action Name)", 42);
  v12 = v11;
  v13 = sub_1CA94C438("Get Details of Health Sample", 28);
  v15 = v14;
  v16 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v10, v12, v13, v15, 0, 0, v18, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v24;
  *(inited + 224) = v25;
  *(inited + 232) = @"RequiredResources";
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 240) = &unk_1F4A0BD40;
  v26 = @"RequiredResources";
  v27 = sub_1CA94C368();
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v27;
  *(inited + 280) = 0xD000000000000015;
  *(inited + 288) = 0x80000001CA9941B0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA68584C()
{
  v0 = sub_1CA949D18();
  v183 = *(v0 - 8);
  v184 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v182 = v174 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9DDFE0;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v6 = sub_1CA94C438("crypto", 6);
  v8 = v7;
  v9 = sub_1CA94C438("crypto", 6);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v193 = v13;
  v197 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v174 - v197;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v196 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v194 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v195 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v174 - v195;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v191 = v21;
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"Description";
  v190 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  v181 = xmmword_1CA981310;
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438("Generates a MD5/SHA1 hash from the input.", 41);
  v27 = v26;
  v28 = sub_1CA94C438("Generates a MD5/SHA1 hash from the input.", 41);
  v30 = v29;
  v189 = v174;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v174 - v197;
  sub_1CA948D98();
  v32 = [v196 bundleURL];
  v192 = inited;
  MEMORY[0x1EEE9AC00](v32);
  v33 = v174 - v195;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v25, v27, v28, v30, 0, 0, v31, v33);
  *(v22 + 64) = v191;
  *(v22 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v190;
  v38 = sub_1CA6B3784(v36);
  v39 = v192;
  *(v192 + 15) = v38;
  *(v39 + 18) = v37;
  *(v39 + 19) = @"IconColor";
  *(v39 + 20) = 2036429383;
  *(v39 + 21) = 0xE400000000000000;
  v40 = MEMORY[0x1E69E6158];
  *(v39 + 23) = MEMORY[0x1E69E6158];
  *(v39 + 24) = @"IconSymbol";
  strcpy(v39 + 200, "hexagon.fill");
  v39[213] = 0;
  *(v39 + 107) = -5120;
  *(v39 + 28) = v40;
  *(v39 + 29) = @"Input";
  v41 = v40;
  v42 = v39;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v43 = swift_initStackObject();
  v188 = xmmword_1CA981350;
  *(v43 + 16) = xmmword_1CA981350;
  *(v43 + 32) = 0x656C7069746C754DLL;
  *(v43 + 40) = 0xE800000000000000;
  v44 = MEMORY[0x1E69E6370];
  *(v43 + 48) = 1;
  *(v43 + 72) = v44;
  strcpy((v43 + 80), "ParameterKey");
  *(v43 + 93) = 0;
  *(v43 + 94) = -5120;
  *(v43 + 96) = 0x7475706E494657;
  *(v43 + 104) = 0xE700000000000000;
  *(v43 + 120) = v41;
  *(v43 + 128) = 0x6465726975716552;
  *(v43 + 136) = 0xE800000000000000;
  *(v43 + 144) = 1;
  *(v43 + 168) = v44;
  *(v43 + 176) = 0x7365707954;
  *(v43 + 184) = 0xE500000000000000;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v43 + 216) = v189;
  *(v43 + 192) = &unk_1F4A0BD70;
  v45 = @"IconColor";
  v46 = @"IconSymbol";
  v47 = @"Input";
  v48 = sub_1CA94C1E8();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v190 = v49;
  *(v42 + 30) = v48;
  *(v42 + 33) = v49;
  *(v42 + 34) = @"Name";
  v50 = @"Name";
  v180 = sub_1CA94C438("Generate Hash (Action Name)", 27);
  v52 = v51;
  v53 = sub_1CA94C438("Generate Hash", 13);
  v55 = v54;
  v186 = v174;
  MEMORY[0x1EEE9AC00](v53);
  v56 = v174 - v197;
  sub_1CA948D98();
  v57 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = v174 - v195;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v180, v52, v53, v55, 0, 0, v56, v58);
  v62 = v191;
  v61 = v192;
  *(v192 + 35) = v60;
  *(v61 + 38) = v62;
  *(v61 + 39) = @"Output";
  v63 = swift_initStackObject();
  *(v63 + 16) = v188;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 1;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438("Hash (Default Output Name)", 26);
  v186 = v66;
  v67 = sub_1CA94C438("Hash", 4);
  v69 = v68;
  v187 = v174;
  MEMORY[0x1EEE9AC00](v67);
  v70 = v174 - v197;
  sub_1CA948D98();
  v71 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = v174 - v195;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v65, v186, v67, v69, 0, 0, v70, v72);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v189;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A0BDA0;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = v192;
  *(v192 + 40) = v75;
  *(v76 + 43) = v190;
  *(v76 + 44) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v187 = swift_allocObject();
  *(v187 + 1) = xmmword_1CA981360;
  v186 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1CA981370;
  *(v77 + 32) = @"Class";
  *(v77 + 40) = 0xD000000000000016;
  *(v77 + 48) = 0x80000001CA99C4A0;
  *(v77 + 64) = v74;
  *(v77 + 72) = @"DefaultValue";
  *(v77 + 80) = 3490893;
  *(v77 + 88) = 0xE300000000000000;
  *(v77 + 104) = v74;
  *(v77 + 112) = @"Items";
  v190 = swift_allocObject();
  *(v190 + 1) = xmmword_1CA981570;
  v179 = @"Class";
  v78 = @"Parameters";
  v79 = @"DefaultValue";
  v80 = @"Items";
  v81 = sub_1CA94C438("MD5 (WFHashType)", 16);
  v176 = v82;
  v177 = v81;
  v83 = sub_1CA94C438("MD5", 3);
  v175 = v84;
  v178 = v174;
  MEMORY[0x1EEE9AC00](v83);
  v85 = v197;
  sub_1CA948D98();
  v86 = v196;
  v87 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v174 - v195;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v177, v176, v83, v175, 0, 0, v174 - v85, v88);
  v91 = v190;
  v190[4] = v90;
  v92 = sub_1CA94C438("SHA1 (WFHashType)", 17);
  v176 = v93;
  v177 = v92;
  v94 = sub_1CA94C438("SHA1", 4);
  v175 = v95;
  v178 = v174;
  MEMORY[0x1EEE9AC00](v94);
  sub_1CA948D98();
  v96 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v195;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v91[5] = sub_1CA2F9F14(v177, v176, v94, v175, 0, 0, v174 - v85, v174 - v97);
  v99 = sub_1CA94C438("SHA256 (WFHashType)", 19);
  v176 = v100;
  v177 = v99;
  v101 = sub_1CA94C438("SHA256", 6);
  v175 = v102;
  v178 = v174;
  MEMORY[0x1EEE9AC00](v101);
  v103 = v174 - v197;
  sub_1CA948D98();
  v104 = v196;
  v105 = [v196 bundleURL];
  v174[1] = v174;
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v177, v176, v101, v175, 0, 0, v103, v174 - v97);
  v190[6] = v107;
  v108 = sub_1CA94C438("SHA512 (WFHashType)", 19);
  v176 = v109;
  v177 = v108;
  v110 = sub_1CA94C438("SHA512", 6);
  v175 = v111;
  v178 = v174;
  MEMORY[0x1EEE9AC00](v110);
  v112 = v197;
  sub_1CA948D98();
  v113 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v177, v176, v110, v175, 0, 0, v174 - v112, v174 - v97);
  v116 = v190;
  v190[7] = v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v77 + 120) = v116;
  *(v77 + 144) = v117;
  *(v77 + 152) = @"Key";
  *(v77 + 160) = 0x7954687361484657;
  *(v77 + 168) = 0xEA00000000006570;
  *(v77 + 184) = MEMORY[0x1E69E6158];
  *(v77 + 192) = @"Label";
  v118 = @"Key";
  v119 = @"Label";
  v177 = v118;
  v176 = v119;
  v178 = sub_1CA94C438("Type (WFHashType)", 17);
  v121 = v120;
  v122 = sub_1CA94C438("Type", 4);
  v124 = v123;
  v190 = v174;
  MEMORY[0x1EEE9AC00](v122);
  sub_1CA948D98();
  v125 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = v174 - v195;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v178, v121, v122, v124, 0, 0, v174 - v112, v126);
  *(v77 + 224) = v191;
  *(v77 + 200) = v128;
  _s3__C3KeyVMa_0(0);
  v190 = v129;
  v178 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v130 = sub_1CA94C1E8();
  v131 = sub_1CA2F864C(v130);
  v187[4] = v131;
  v132 = swift_allocObject();
  *(v132 + 16) = v188;
  *(v132 + 32) = v179;
  *(v132 + 40) = 0xD000000000000019;
  *(v132 + 48) = 0x80000001CA99B030;
  v133 = MEMORY[0x1E69E6158];
  v134 = v177;
  *(v132 + 64) = MEMORY[0x1E69E6158];
  *(v132 + 72) = v134;
  *(v132 + 80) = 0x7475706E494657;
  *(v132 + 88) = 0xE700000000000000;
  v135 = v176;
  *(v132 + 104) = v133;
  *(v132 + 112) = v135;
  v136 = sub_1CA94C438("Input (WFInput)", 15);
  v138 = v137;
  v139 = sub_1CA94C438("Input", 5);
  v141 = v140;
  *&v188 = v174;
  MEMORY[0x1EEE9AC00](v139);
  v142 = v174 - v197;
  sub_1CA948D98();
  v143 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = v174 - v195;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 120) = sub_1CA2F9F14(v136, v138, v139, v141, 0, 0, v142, v144);
  *(v132 + 144) = v191;
  *(v132 + 152) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v146 = swift_allocObject();
  *(v146 + 16) = v181;
  v147 = @"PreferredTypes";
  v148 = v182;
  sub_1CA949CA8();
  v149 = sub_1CA949C68();
  v151 = v150;
  (*(v183 + 8))(v148, v184);
  *(v146 + 32) = v149;
  *(v146 + 40) = v151;
  *(v132 + 184) = v189;
  *(v132 + 160) = v146;
  v152 = sub_1CA94C1E8();
  v153 = sub_1CA2F864C(v152);
  v154 = v187;
  v187[5] = v153;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v156 = v192;
  *(v192 + 45) = v154;
  *(v156 + 48) = v155;
  *(v156 + 49) = @"ParameterSummary";
  v157 = @"ParameterSummary";
  v158 = sub_1CA94C438("Generate ${WFHashType} hash of ${WFInput} (Parameter Summary)", 61);
  v160 = v159;
  v161 = sub_1CA94C438("Generate ${WFHashType} hash of ${WFInput}", 41);
  v163 = v162;
  MEMORY[0x1EEE9AC00](v161);
  v164 = v174 - v197;
  sub_1CA948D98();
  v165 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = v174 - v195;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v168 = sub_1CA2F9F14(v158, v160, v161, v163, 0, 0, v164, v166);
  v169 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v170 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v171 = v192;
  *(v192 + 50) = v169;
  *(v171 + 53) = v170;
  *(v171 + 54) = @"ResidentCompatible";
  *(v171 + 58) = MEMORY[0x1E69E6370];
  v171[440] = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v172 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA686DB4()
{
  v425 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  v443 = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9DE1B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("email|e-mail|mail|send|gmail|yahoo|hotmail|icloud|aol", 53);
  v6 = v5;
  v7 = sub_1CA94C438("email|e-mail|mail|send|gmail|yahoo|hotmail|icloud|aol", 53);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v455 = v11;
  *&v457 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v411 - v457;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v456 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v453 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v454 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v411 - v454;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v452 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v424 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v451 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v446 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Pass text into the action to set the email body. Other types of input are added as attachments.", 95);
  v449 = v27;
  v28 = sub_1CA94C438("Pass text into the action to set the email body. Other types of input are added as attachments.", 95);
  v30 = v29;
  v450 = v411;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v411 - v457;
  sub_1CA948D98();
  v32 = inited;
  v33 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v411 - v454;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v26, v449, v28, v30, 0, 0, v31, v34);
  *(v23 + 64) = v452;
  *(v23 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v451;
  *(v32 + 160) = sub_1CA6B3784(v37);
  *(v32 + 184) = v38;
  *(v32 + 192) = @"Input";
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v422 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  v427 = 0x80000001CA9DE270;
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0xD000000000000021;
  *(v39 + 104) = 0x80000001CA9DE270;
  v41 = MEMORY[0x1E69E6158];
  *(v39 + 120) = MEMORY[0x1E69E6158];
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 0;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v42 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v423;
  *(v39 + 192) = &unk_1F4A0BE10;
  v43 = @"Input";
  v44 = sub_1CA94C1E8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v32 + 200) = v44;
  *(v32 + 224) = v45;
  *(v32 + 232) = @"InputPassthrough";
  *(v32 + 264) = v42;
  *(v32 + 240) = 1;
  v46 = @"InputPassthrough";
  v444 = 0xD000000000000010;
  v47 = sub_1CA94C368();
  v441 = v32;
  *(v32 + 272) = v47;
  *(v32 + 280) = 0xD00000000000003CLL;
  *(v32 + 288) = 0x80000001CA9DE2A0;
  *(v32 + 304) = v41;
  *(v32 + 312) = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438("Send Email (Action Name)", 24);
  v51 = v50;
  v52 = sub_1CA94C438("Send Email", 10);
  v54 = v53;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v411 - v457;
  sub_1CA948D98();
  v56 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v411 - v454;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  v60 = v441;
  v441[40] = v59;
  v60[43] = v452;
  v60[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v451 = swift_allocObject();
  *(v451 + 16) = xmmword_1CA981720;
  v450 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_allocObject();
  v426 = xmmword_1CA981370;
  *(v61 + 16) = xmmword_1CA981370;
  v442 = 0xD00000000000001BLL;
  *(v61 + 32) = @"Class";
  *(v61 + 40) = 0xD00000000000001BLL;
  *(v61 + 48) = 0x80000001CA9DE300;
  v62 = MEMORY[0x1E69E6158];
  *(v61 + 64) = MEMORY[0x1E69E6158];
  *(v61 + 72) = @"IntentSlotName";
  *(v61 + 80) = 0x7265646E6573;
  *(v61 + 88) = 0xE600000000000000;
  *(v61 + 104) = v62;
  *(v61 + 112) = @"Key";
  *(v61 + 120) = 0xD000000000000023;
  *(v61 + 128) = 0x80000001CA9DE320;
  *(v61 + 144) = v62;
  *(v61 + 152) = @"Label";
  v63 = @"Class";
  v64 = @"IntentSlotName";
  v65 = @"Key";
  v66 = @"Label";
  v67 = v63;
  v68 = v64;
  v69 = v65;
  v70 = v66;
  v429 = v67;
  v428 = v68;
  v433 = v69;
  *&v435 = v70;
  v71 = @"Parameters";
  v72 = sub_1CA94C438("From (WFEmailAccountActionSelectedAccount)", 42);
  v74 = v73;
  v75 = sub_1CA94C438("From", 4);
  v77 = v76;
  v448 = v411;
  MEMORY[0x1EEE9AC00](v75);
  v78 = v411 - v457;
  sub_1CA948D98();
  v79 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = v411 - v454;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 160) = sub_1CA2F9F14(v72, v74, v75, v77, 0, 0, v78, v80);
  *(v61 + 184) = v452;
  *(v61 + 192) = @"RequiredResources";
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v82 = swift_allocObject();
  *(v82 + 16) = v446;
  v83 = swift_allocObject();
  v440 = xmmword_1CA9813C0;
  *(v83 + 16) = xmmword_1CA9813C0;
  strcpy((v83 + 32), "WFParameterKey");
  *(v83 + 47) = -18;
  v436 = 0x80000001CA9DE380;
  *(v83 + 48) = 0xD000000000000021;
  *(v83 + 56) = 0x80000001CA9DE380;
  v439 = 0x80000001CA993570;
  v84 = MEMORY[0x1E69E6158];
  v85 = v444;
  *(v83 + 72) = MEMORY[0x1E69E6158];
  *(v83 + 80) = v85;
  *(v83 + 88) = 0x80000001CA993570;
  *(v83 + 96) = 0;
  *(v83 + 120) = MEMORY[0x1E69E6370];
  *(v83 + 128) = 0x72756F7365524657;
  v438 = 0x80000001CA993590;
  *(v83 + 168) = v84;
  v86 = v442;
  *(v83 + 136) = 0xEF7373616C436563;
  *(v83 + 144) = v86;
  *(v83 + 152) = 0x80000001CA993590;
  v432 = @"RequiredResources";
  *(v82 + 32) = sub_1CA94C1E8();
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v61 + 224) = v434;
  *(v61 + 200) = v82;
  _s3__C3KeyVMa_0(0);
  v448 = v87;
  v447 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v88 = sub_1CA94C1E8();
  v89 = sub_1CA2F864C(v88);
  *(v451 + 32) = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1CA981420;
  *(v90 + 32) = @"AutocapitalizationType";
  *(v90 + 40) = 1701736270;
  *(v90 + 48) = 0xE400000000000000;
  v91 = v429;
  *(v90 + 64) = v84;
  *(v90 + 72) = v91;
  v430 = 0xD000000000000014;
  v431 = 0x80000001CA99B500;
  *(v90 + 80) = 0xD000000000000014;
  *(v90 + 88) = 0x80000001CA99B500;
  *(v90 + 104) = v84;
  *(v90 + 112) = @"Description";
  v421 = v91;
  v92 = @"AutocapitalizationType";
  v93 = @"Description";
  v94 = sub_1CA94C438("The email address to send from. This must be an email address that is set up in the Mail app. (WFSendEmailActionFrom)", 117);
  v96 = v95;
  v97 = sub_1CA94C438("The email address to send from. This must be an email address that is set up in the Mail app.", 93);
  v99 = v98;
  v429 = v411;
  MEMORY[0x1EEE9AC00](v97);
  v100 = v411 - v457;
  sub_1CA948D98();
  v101 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = v411 - v454;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 120) = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  *(v90 + 144) = v452;
  *(v90 + 152) = @"DisableAutocorrection";
  *(v90 + 160) = 1;
  v104 = v433;
  *(v90 + 184) = MEMORY[0x1E69E6370];
  *(v90 + 192) = v104;
  *(v90 + 200) = 0xD000000000000015;
  *(v90 + 208) = 0x80000001CA9DE490;
  v105 = MEMORY[0x1E69E6158];
  *(v90 + 224) = MEMORY[0x1E69E6158];
  *(v90 + 232) = @"KeyboardType";
  strcpy((v90 + 240), "EmailAddress");
  *(v90 + 253) = 0;
  *(v90 + 254) = -5120;
  v106 = v435;
  *(v90 + 264) = v105;
  *(v90 + 272) = v106;
  v417 = v104;
  v418 = v106;
  v107 = @"DisableAutocorrection";
  v108 = @"KeyboardType";
  v433 = sub_1CA94C438("From (WFSendEmailActionFrom)", 28);
  v429 = v109;
  v110 = sub_1CA94C438("From", 4);
  v420 = v111;
  *&v435 = v411;
  MEMORY[0x1EEE9AC00](v110);
  v112 = v457;
  sub_1CA948D98();
  v113 = v456;
  v114 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  v115 = v411 - v454;
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 280) = sub_1CA2F9F14(v433, v429, v110, v420, 0, 0, v411 - v112, v115);
  v117 = v452;
  *(v90 + 304) = v452;
  *(v90 + 312) = @"Placeholder";
  v419 = @"Placeholder";
  v433 = sub_1CA94C438("optional (WFSendEmailActionFrom)", 32);
  v429 = v118;
  v420 = sub_1CA94C438("optional", 8);
  v120 = v119;
  *&v435 = v411;
  MEMORY[0x1EEE9AC00](v420);
  sub_1CA948D98();
  v121 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = v411 - v454;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 320) = sub_1CA2F9F14(v433, v429, v420, v120, 0, 0, v411 - v112, v122);
  v124 = v432;
  *(v90 + 344) = v117;
  *(v90 + 352) = v124;
  v125 = swift_allocObject();
  *(v125 + 16) = v446;
  v126 = swift_allocObject();
  *(v126 + 16) = v440;
  strcpy((v126 + 32), "WFParameterKey");
  *(v126 + 47) = -18;
  *(v126 + 48) = 0xD000000000000021;
  *(v126 + 56) = v436;
  v127 = MEMORY[0x1E69E6158];
  v128 = v444;
  *(v126 + 72) = MEMORY[0x1E69E6158];
  *(v126 + 80) = v128;
  *(v126 + 88) = v439;
  *(v126 + 96) = 1;
  v129 = MEMORY[0x1E69E6370];
  *(v126 + 120) = MEMORY[0x1E69E6370];
  *(v126 + 128) = 0x72756F7365524657;
  *(v126 + 168) = v127;
  *(v126 + 136) = 0xEF7373616C436563;
  v130 = v438;
  *(v126 + 144) = v442;
  *(v126 + 152) = v130;
  v131 = v127;
  *(v125 + 32) = sub_1CA94C1E8();
  *(v90 + 360) = v125;
  *(v90 + 384) = v434;
  *(v90 + 392) = @"TextContentType";
  *(v90 + 424) = v131;
  strcpy((v90 + 400), "EmailAddress");
  *(v90 + 413) = 0;
  *(v90 + 414) = -5120;
  v132 = @"TextContentType";
  v133 = sub_1CA94C1E8();
  v134 = sub_1CA2F864C(v133);
  *(v451 + 40) = v134;
  v135 = swift_allocObject();
  v435 = xmmword_1CA981400;
  *(v135 + 16) = xmmword_1CA981400;
  *(v135 + 32) = @"AllowsMultipleValues";
  *(v135 + 40) = 1;
  v136 = v421;
  *(v135 + 64) = v129;
  *(v135 + 72) = v136;
  v429 = 0x80000001CA9CB060;
  v433 = 0xD00000000000001CLL;
  *(v135 + 80) = 0xD00000000000001CLL;
  *(v135 + 88) = 0x80000001CA9CB060;
  v137 = v428;
  *(v135 + 104) = v131;
  *(v135 + 112) = v137;
  *(v135 + 120) = 28532;
  *(v135 + 128) = 0xE200000000000000;
  v138 = v417;
  *(v135 + 144) = v131;
  *(v135 + 152) = v138;
  v420 = 0xD00000000000001DLL;
  *(v135 + 160) = 0xD00000000000001DLL;
  *(v135 + 168) = 0x80000001CA9DE500;
  *(v135 + 184) = v131;
  v139 = v418;
  *(v135 + 192) = v418;
  v140 = @"AllowsMultipleValues";
  v416 = v136;
  v415 = v137;
  v417 = v138;
  v418 = v139;
  v428 = v140;
  v141 = sub_1CA94C438("Recipients (WFSendEmailActionToRecipients)", 42);
  v413 = v142;
  v414 = v141;
  v143 = sub_1CA94C438("Recipients", 10);
  v412 = v144;
  v421 = v411;
  MEMORY[0x1EEE9AC00](v143);
  v145 = v411 - v457;
  sub_1CA948D98();
  v146 = v456;
  v147 = [v456 bundleURL];
  v411[1] = v411;
  MEMORY[0x1EEE9AC00](v147);
  v148 = v454;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v135 + 200) = sub_1CA2F9F14(v414, v413, v143, v412, 0, 0, v145, v411 - v148);
  v150 = v452;
  v151 = v419;
  *(v135 + 224) = v452;
  *(v135 + 232) = v151;
  v421 = v151;
  v152 = sub_1CA94C438("Recipients (WFSendEmailActionToRecipients)", 42);
  v413 = v153;
  v414 = v152;
  v154 = sub_1CA94C438("Recipients", 10);
  v412 = v155;
  v419 = v411;
  MEMORY[0x1EEE9AC00](v154);
  v156 = v411 - v457;
  sub_1CA948D98();
  v157 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v135 + 240) = sub_1CA2F9F14(v414, v413, v154, v412, 0, 0, v156, v411 - v148);
  *(v135 + 264) = v150;
  *(v135 + 272) = @"Prompt";
  v419 = @"Prompt";
  v159 = sub_1CA94C438("Who do you want to send it to? (WFSendEmailActionToRecipients)", 62);
  v161 = v160;
  v162 = sub_1CA94C438("Who do you want to send it to?", 30);
  v164 = v163;
  v414 = v411;
  MEMORY[0x1EEE9AC00](v162);
  v165 = v411 - v457;
  sub_1CA948D98();
  v166 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  v167 = v411 - v454;
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v159, v161, v162, v164, 0, 0, v165, v167);
  *(v135 + 304) = v452;
  *(v135 + 280) = v169;
  v170 = sub_1CA94C1E8();
  v171 = sub_1CA2F864C(v170);
  *(v451 + 48) = v171;
  v172 = swift_allocObject();
  *(v172 + 16) = v435;
  *(v172 + 32) = v428;
  *(v172 + 40) = 1;
  v174 = v415;
  v173 = v416;
  *(v172 + 64) = MEMORY[0x1E69E6370];
  *(v172 + 72) = v173;
  v175 = v429;
  *(v172 + 80) = v433;
  *(v172 + 88) = v175;
  v176 = MEMORY[0x1E69E6158];
  *(v172 + 104) = MEMORY[0x1E69E6158];
  *(v172 + 112) = v174;
  *(v172 + 120) = 25443;
  *(v172 + 128) = 0xE200000000000000;
  v177 = v417;
  v178 = v418;
  *(v172 + 144) = v176;
  *(v172 + 152) = v177;
  *(v172 + 160) = v420;
  *(v172 + 168) = 0x80000001CA9DE590;
  *(v172 + 184) = v176;
  *(v172 + 192) = v178;
  v416 = v173;
  v415 = v174;
  v417 = v177;
  v418 = v178;
  v179 = sub_1CA94C438("Cc (WFSendEmailActionCcRecipients)", 34);
  v413 = v180;
  v414 = v179;
  v181 = sub_1CA94C438("Cc", 2);
  v412 = v182;
  v420 = v411;
  MEMORY[0x1EEE9AC00](v181);
  v183 = v457;
  sub_1CA948D98();
  v184 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = v411 - v454;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v172 + 200) = sub_1CA2F9F14(v414, v413, v181, v412, 0, 0, v411 - v183, v185);
  v187 = v421;
  *(v172 + 224) = v452;
  *(v172 + 232) = v187;
  v421 = v187;
  v188 = sub_1CA94C438("Email addresses (WFSendEmailActionCcRecipients)", 47);
  v413 = v189;
  v414 = v188;
  v190 = sub_1CA94C438("Email addresses", 15);
  v412 = v191;
  v420 = v411;
  MEMORY[0x1EEE9AC00](v190);
  sub_1CA948D98();
  v192 = v456;
  v193 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v193);
  v194 = v454;
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v172 + 240) = sub_1CA2F9F14(v414, v413, v190, v412, 0, 0, v411 - v183, v411 - v194);
  v196 = v452;
  v197 = v419;
  *(v172 + 264) = v452;
  *(v172 + 272) = v197;
  v420 = v197;
  v198 = sub_1CA94C438("Who do you want to Cc? (WFSendEmailActionCcRecipients)", 54);
  v413 = v199;
  v414 = v198;
  v200 = sub_1CA94C438("Who do you want to Cc?", 22);
  v412 = v201;
  v419 = v411;
  MEMORY[0x1EEE9AC00](v200);
  v202 = v411 - v457;
  sub_1CA948D98();
  v203 = [v192 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v205 = sub_1CA2F9F14(v414, v413, v200, v412, 0, 0, v202, v411 - v194);
  *(v172 + 304) = v196;
  *(v172 + 280) = v205;
  v206 = sub_1CA94C1E8();
  v207 = sub_1CA2F864C(v206);
  *(v451 + 56) = v207;
  v208 = swift_allocObject();
  *(v208 + 16) = v435;
  *(v208 + 32) = v428;
  *(v208 + 40) = 1;
  v210 = v415;
  v209 = v416;
  *(v208 + 64) = MEMORY[0x1E69E6370];
  *(v208 + 72) = v209;
  v211 = v429;
  *(v208 + 80) = v433;
  *(v208 + 88) = v211;
  v212 = MEMORY[0x1E69E6158];
  *(v208 + 104) = MEMORY[0x1E69E6158];
  *(v208 + 112) = v210;
  *(v208 + 120) = 6513506;
  *(v208 + 128) = 0xE300000000000000;
  v213 = v417;
  v214 = v418;
  *(v208 + 144) = v212;
  *(v208 + 152) = v213;
  *(v208 + 160) = 0xD00000000000001ELL;
  *(v208 + 168) = 0x80000001CA9DE680;
  *(v208 + 184) = v212;
  *(v208 + 192) = v214;
  v416 = v209;
  v429 = v210;
  v417 = v213;
  v419 = v214;
  v418 = sub_1CA94C438("Bcc (WFSendEmailActionBccRecipients)", 36);
  v415 = v215;
  v216 = sub_1CA94C438("Bcc", 3);
  v414 = v217;
  v428 = v411;
  MEMORY[0x1EEE9AC00](v216);
  v218 = v457;
  sub_1CA948D98();
  v219 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v219);
  v220 = v454;
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v208 + 200) = sub_1CA2F9F14(v418, v415, v216, v414, 0, 0, v411 - v218, v411 - v220);
  v222 = v421;
  *(v208 + 224) = v452;
  *(v208 + 232) = v222;
  v428 = v222;
  v418 = sub_1CA94C438("Email addresses (WFSendEmailActionBccRecipients)", 48);
  v415 = v223;
  v224 = sub_1CA94C438("Email addresses", 15);
  v414 = v225;
  v421 = v411;
  MEMORY[0x1EEE9AC00](v224);
  v226 = v411 - v218;
  sub_1CA948D98();
  v227 = v456;
  v228 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  sub_1CA948B68();

  v229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v208 + 240) = sub_1CA2F9F14(v418, v415, v224, v414, 0, 0, v226, v411 - v220);
  v230 = v452;
  v231 = v420;
  *(v208 + 264) = v452;
  *(v208 + 272) = v231;
  v421 = v231;
  v418 = sub_1CA94C438("Who do you want to Bcc? (WFSendEmailActionBccRecipients)", 56);
  v415 = v232;
  v233 = sub_1CA94C438("Who do you want to Bcc?", 23);
  v235 = v234;
  v420 = v411;
  MEMORY[0x1EEE9AC00](v233);
  v236 = v411 - v457;
  sub_1CA948D98();
  v237 = [v227 bundleURL];
  MEMORY[0x1EEE9AC00](v237);
  v238 = v411 - v454;
  sub_1CA948B68();

  v239 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v240 = sub_1CA2F9F14(v418, v415, v233, v235, 0, 0, v236, v238);
  *(v208 + 304) = v230;
  *(v208 + 280) = v240;
  v241 = sub_1CA94C1E8();
  v242 = sub_1CA2F864C(v241);
  *(v451 + 64) = v242;
  v243 = swift_allocObject();
  *(v243 + 16) = v426;
  v244 = v416;
  v245 = v417;
  v247 = v430;
  v246 = v431;
  *(v243 + 32) = v416;
  *(v243 + 40) = v247;
  *(v243 + 48) = v246;
  v248 = MEMORY[0x1E69E6158];
  v249 = v429;
  *(v243 + 64) = MEMORY[0x1E69E6158];
  *(v243 + 72) = v249;
  *(v243 + 80) = 0x7463656A627573;
  *(v243 + 88) = 0xE700000000000000;
  *(v243 + 104) = v248;
  *(v243 + 112) = v245;
  *(v243 + 120) = 0xD000000000000018;
  *(v243 + 128) = 0x80000001CA9DE770;
  v250 = v419;
  *(v243 + 144) = v248;
  *(v243 + 152) = v250;
  v418 = v244;
  v417 = v245;
  v420 = v250;
  v419 = sub_1CA94C438("Subject (WFSendEmailActionSubject)", 34);
  v416 = v251;
  v252 = sub_1CA94C438("Subject", 7);
  v415 = v253;
  *&v426 = v411;
  MEMORY[0x1EEE9AC00](v252);
  v254 = v411 - v457;
  sub_1CA948D98();
  v255 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v255);
  v256 = v454;
  sub_1CA948B68();

  v257 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v243 + 160) = sub_1CA2F9F14(v419, v416, v252, v415, 0, 0, v254, v411 - v256);
  v258 = v452;
  v259 = v421;
  *(v243 + 184) = v452;
  *(v243 + 192) = v259;
  *&v426 = v259;
  v419 = sub_1CA94C438("What’s the subject? (WFSendEmailActionSubject)", 48);
  v416 = v260;
  v261 = sub_1CA94C438("What’s the subject?", 21);
  v263 = v262;
  v421 = v411;
  MEMORY[0x1EEE9AC00](v261);
  v264 = v411 - v457;
  sub_1CA948D98();
  v265 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v265);
  sub_1CA948B68();

  v266 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v267 = sub_1CA2F9F14(v419, v416, v261, v263, 0, 0, v264, v411 - v256);
  *(v243 + 224) = v258;
  *(v243 + 200) = v267;
  v268 = sub_1CA94C1E8();
  v269 = sub_1CA2F864C(v268);
  *(v451 + 72) = v269;
  v270 = swift_allocObject();
  *(v270 + 16) = v435;
  v272 = v417;
  v271 = v418;
  v274 = v430;
  v273 = v431;
  *(v270 + 32) = v418;
  *(v270 + 40) = v274;
  *(v270 + 48) = v273;
  v275 = MEMORY[0x1E69E6158];
  *(v270 + 64) = MEMORY[0x1E69E6158];
  *(v270 + 72) = v272;
  *(v270 + 80) = 0xD000000000000021;
  *(v270 + 88) = v427;
  v276 = v420;
  *(v270 + 104) = v275;
  *(v270 + 112) = v276;
  v427 = v271;
  v431 = v272;
  v430 = v276;
  v277 = sub_1CA94C438("Message (WFSendEmailActionInputAttachments)", 43);
  v419 = v278;
  v420 = v277;
  v279 = sub_1CA94C438("Message", 7);
  v281 = v280;
  v421 = v411;
  MEMORY[0x1EEE9AC00](v279);
  v282 = v457;
  sub_1CA948D98();
  v283 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v283);
  v284 = v411 - v454;
  sub_1CA948B68();

  v285 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v270 + 120) = sub_1CA2F9F14(v420, v419, v279, v281, 0, 0, v411 - v282, v284);
  *(v270 + 144) = v452;
  *(v270 + 152) = @"Multiline";
  *(v270 + 160) = 1;
  v286 = v428;
  *(v270 + 184) = MEMORY[0x1E69E6370];
  *(v270 + 192) = v286;
  v287 = @"Multiline";
  v288 = sub_1CA94C438("Message (WFSendEmailActionInputAttachments)", 43);
  v419 = v289;
  v420 = v288;
  v418 = sub_1CA94C438("Message", 7);
  v291 = v290;
  v421 = v411;
  MEMORY[0x1EEE9AC00](v418);
  sub_1CA948D98();
  v292 = v456;
  v293 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v293);
  v294 = v454;
  sub_1CA948B68();

  v295 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v296 = sub_1CA2F9F14(v420, v419, v418, v291, 0, 0, v411 - v282, v411 - v294);
  v297 = v452;
  *(v270 + 224) = v452;
  *(v270 + 200) = v296;
  *(v270 + 232) = sub_1CA94C368();
  *(v270 + 240) = 1;
  v298 = v426;
  *(v270 + 264) = MEMORY[0x1E69E6370];
  *(v270 + 272) = v298;
  v299 = sub_1CA94C438("What’s the message? (WFSendEmailActionInputAttachments)", 57);
  v419 = v300;
  v420 = v299;
  v301 = sub_1CA94C438("What’s the message?", 21);
  v418 = v302;
  v421 = v411;
  MEMORY[0x1EEE9AC00](v301);
  v303 = v411 - v457;
  sub_1CA948D98();
  v304 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v304);
  sub_1CA948B68();

  v305 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v306 = sub_1CA2F9F14(v420, v419, v301, v418, 0, 0, v303, v411 - v294);
  *(v270 + 304) = v297;
  *(v270 + 280) = v306;
  v307 = sub_1CA94C1E8();
  v308 = sub_1CA2F864C(v307);
  *(v451 + 80) = v308;
  v309 = swift_allocObject();
  *(v309 + 16) = v435;
  *&v435 = 0x80000001CA99E620;
  v310 = v443;
  *(v309 + 32) = v427;
  *(v309 + 40) = v310;
  *(v309 + 48) = 0x80000001CA99E620;
  v311 = MEMORY[0x1E69E6158];
  v312 = v429;
  *(v309 + 64) = MEMORY[0x1E69E6158];
  *(v309 + 72) = v312;
  *(v309 + 80) = 0x74666172447369;
  *(v309 + 88) = 0xE700000000000000;
  v313 = v431;
  *(v309 + 104) = v311;
  *(v309 + 112) = v313;
  *(v309 + 120) = v433;
  *(v309 + 128) = 0x80000001CA9DE8C0;
  v314 = v430;
  *(v309 + 144) = v311;
  *(v309 + 152) = v314;
  v429 = sub_1CA94C438("Save as Draft (WFSendEmailActionSaveAsDraft)", 44);
  v421 = v315;
  v316 = sub_1CA94C438("Save as Draft", 13);
  v420 = v317;
  v433 = v411;
  MEMORY[0x1EEE9AC00](v316);
  v318 = v457;
  sub_1CA948D98();
  v319 = v456;
  v320 = [v456 bundleURL];
  v419 = v411;
  MEMORY[0x1EEE9AC00](v320);
  v321 = v294;
  sub_1CA948B68();

  v322 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v309 + 160) = sub_1CA2F9F14(v429, v421, v316, v420, 0, 0, v411 - v318, v411 - v294);
  v323 = v428;
  *(v309 + 184) = v452;
  *(v309 + 192) = v323;
  v324 = sub_1CA94C438("Save as Draft (WFSendEmailActionSaveAsDraft)", 44);
  v428 = v325;
  v429 = v324;
  v326 = sub_1CA94C438("Save as Draft", 13);
  v421 = v327;
  v433 = v411;
  MEMORY[0x1EEE9AC00](v326);
  v328 = v411 - v318;
  sub_1CA948D98();
  v329 = [v319 bundleURL];
  MEMORY[0x1EEE9AC00](v329);
  sub_1CA948B68();

  v330 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v309 + 200) = sub_1CA2F9F14(v429, v428, v326, v421, 0, 0, v328, v411 - v294);
  v331 = v452;
  v332 = v426;
  *(v309 + 224) = v452;
  *(v309 + 232) = v332;
  v333 = sub_1CA94C438("Did you want to save this as a draft? (WFSendEmailActionSaveAsDraft)", 68);
  v428 = v334;
  v429 = v333;
  v335 = sub_1CA94C438("Did you want to save this as a draft?", 37);
  *&v426 = v336;
  v433 = v411;
  MEMORY[0x1EEE9AC00](v335);
  v337 = v411 - v457;
  sub_1CA948D98();
  v338 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v338);
  sub_1CA948B68();

  v339 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v309 + 240) = sub_1CA2F9F14(v429, v428, v335, v426, 0, 0, v337, v411 - v321);
  v340 = v432;
  *(v309 + 264) = v331;
  *(v309 + 272) = v340;
  v341 = swift_allocObject();
  *(v341 + 16) = v446;
  v342 = swift_allocObject();
  *(v342 + 16) = v440;
  strcpy((v342 + 32), "WFParameterKey");
  *(v342 + 47) = -18;
  *(v342 + 48) = 0xD000000000000021;
  v343 = v436;
  *(v342 + 56) = v436;
  v344 = MEMORY[0x1E69E6158];
  v345 = v444;
  *(v342 + 72) = MEMORY[0x1E69E6158];
  *(v342 + 80) = v345;
  *(v342 + 88) = v439;
  *(v342 + 96) = 0;
  v346 = MEMORY[0x1E69E6370];
  *(v342 + 120) = MEMORY[0x1E69E6370];
  *(v342 + 128) = 0x72756F7365524657;
  *(v342 + 168) = v344;
  *(v342 + 136) = 0xEF7373616C436563;
  v347 = v438;
  *(v342 + 144) = v442;
  *(v342 + 152) = v347;
  v348 = v344;
  *(v341 + 32) = sub_1CA94C1E8();
  *(v309 + 304) = v434;
  *(v309 + 280) = v341;
  v349 = sub_1CA94C1E8();
  v350 = sub_1CA2F864C(v349);
  *(v451 + 88) = v350;
  v351 = swift_allocObject();
  *(v351 + 16) = v422;
  v352 = v443;
  *(v351 + 32) = v427;
  *(v351 + 40) = v352;
  *(v351 + 48) = v435;
  *(v351 + 64) = v348;
  *(v351 + 72) = @"DefaultValue";
  *(v351 + 80) = 1;
  v353 = v430;
  v354 = v431;
  *(v351 + 104) = v346;
  *(v351 + 112) = v354;
  *(v351 + 120) = 0xD000000000000021;
  *(v351 + 128) = v343;
  *(v351 + 144) = v348;
  *(v351 + 152) = v353;
  v355 = @"DefaultValue";
  v356 = sub_1CA94C438("Show Compose Sheet (WFSendEmailActionShowComposeSheet)", 54);
  v358 = v357;
  v359 = sub_1CA94C438("Show Compose Sheet", 18);
  v361 = v360;
  v449 = v411;
  MEMORY[0x1EEE9AC00](v359);
  v362 = v411 - v457;
  sub_1CA948D98();
  v363 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v363);
  v364 = v411 - v454;
  sub_1CA948B68();

  v365 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v366 = sub_1CA2F9F14(v356, v358, v359, v361, 0, 0, v362, v364);
  *(v351 + 184) = v452;
  *(v351 + 160) = v366;
  v367 = sub_1CA94C1E8();
  v368 = sub_1CA2F864C(v367);
  v369 = v451;
  *(v451 + 96) = v368;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v371 = v441;
  v441[45] = v369;
  v371[48] = v370;
  v371[49] = @"ParameterSummary";
  v372 = @"ParameterSummary";
  v373 = sub_1CA94C438("Send ${WFSendEmailActionInputAttachments} as ${WFSendEmailActionSubject} to ${WFSendEmailActionToRecipients} (Parameter Summary)", 128);
  v375 = v374;
  v376 = sub_1CA94C438("Send ${WFSendEmailActionInputAttachments} with ${WFSendEmailActionSubject} to ${WFSendEmailActionToRecipients}", 110);
  v378 = v377;
  MEMORY[0x1EEE9AC00](v376);
  v379 = v411 - v457;
  sub_1CA948D98();
  v380 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v380);
  v381 = v411 - v454;
  sub_1CA948B68();

  v382 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v383 = sub_1CA2F9F14(v373, v375, v376, v378, 0, 0, v379, v381);
  v384 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v385 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v386 = v441;
  v441[50] = v384;
  v386[53] = v385;
  v386[54] = @"RequiredResources";
  v456 = swift_allocObject();
  v457 = xmmword_1CA97EDF0;
  *(v456 + 1) = xmmword_1CA97EDF0;
  v387 = swift_initStackObject();
  *(v387 + 16) = v457;
  v455 = 0x80000001CA99B240;
  *(v387 + 32) = v443;
  *(v387 + 40) = 0x80000001CA99B240;
  v388 = swift_allocObject();
  *(v388 + 16) = v446;
  v389 = swift_allocObject();
  *(v389 + 16) = v440;
  strcpy((v389 + 32), "WFParameterKey");
  *(v389 + 47) = -18;
  *(v389 + 48) = 0xD000000000000021;
  *(v389 + 56) = v436;
  v390 = MEMORY[0x1E69E6158];
  v391 = v444;
  *(v389 + 72) = MEMORY[0x1E69E6158];
  *(v389 + 80) = v391;
  *(v389 + 88) = v439;
  *(v389 + 96) = 1;
  *(v389 + 120) = MEMORY[0x1E69E6370];
  *(v389 + 128) = 0x72756F7365524657;
  *(v389 + 168) = v390;
  v392 = v442;
  *(v389 + 136) = 0xEF7373616C436563;
  *(v389 + 144) = v392;
  *(v389 + 152) = v438;
  v393 = @"RequiredResources";
  *(v388 + 32) = sub_1CA94C1E8();
  *(v387 + 48) = v388;
  v394 = v434;
  *(v387 + 72) = v434;
  *(v387 + 80) = 0x72756F7365524657;
  *(v387 + 120) = v390;
  v454 = 0xD000000000000019;
  *(v387 + 88) = 0xEF7373616C436563;
  *(v387 + 96) = 0xD000000000000019;
  *(v387 + 104) = 0x80000001CA9932D0;
  v395 = sub_1CA94C1E8();
  v396 = v456;
  *(v456 + 4) = v395;
  v397 = swift_allocObject();
  *(v397 + 16) = v457;
  v398 = v455;
  *(v397 + 32) = v443;
  *(v397 + 40) = v398;
  v399 = swift_allocObject();
  *(v399 + 16) = v446;
  v400 = swift_allocObject();
  *(v400 + 16) = v440;
  strcpy((v400 + 32), "WFParameterKey");
  *(v400 + 47) = -18;
  *(v400 + 48) = 0xD000000000000021;
  *(v400 + 56) = v436;
  v401 = v444;
  *(v400 + 72) = v390;
  *(v400 + 80) = v401;
  v402 = v438;
  *(v400 + 88) = v439;
  *(v400 + 96) = 0;
  *(v400 + 120) = MEMORY[0x1E69E6370];
  *(v400 + 128) = 0x72756F7365524657;
  *(v400 + 168) = v390;
  *(v400 + 136) = 0xEF7373616C436563;
  *(v400 + 144) = v392;
  *(v400 + 152) = v402;
  *(v399 + 32) = sub_1CA94C1E8();
  *(v397 + 48) = v399;
  v403 = v394;
  *(v397 + 72) = v394;
  *(v397 + 80) = 0x72756F7365524657;
  *(v397 + 120) = v390;
  v404 = v454;
  *(v397 + 88) = 0xEF7373616C436563;
  *(v397 + 96) = v404;
  *(v397 + 104) = 0x80000001CA9DEAD0;
  v396[5] = sub_1CA94C1E8();
  v405 = v441;
  v441[55] = v396;
  v405[58] = v403;
  v405[59] = @"SuggestedAsInitialAction";
  *(v405 + 480) = 1;
  v405[63] = MEMORY[0x1E69E6370];
  v405[64] = @"UserInterfaceClasses";
  v406 = @"SuggestedAsInitialAction";
  v407 = @"UserInterfaceClasses";
  v408 = sub_1CA94C1E8();
  v405[68] = v424;
  v405[65] = v408;
  v405[69] = @"UserInterfaces";
  v405[73] = v423;
  v405[70] = &unk_1F4A0BEB0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v409 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA689E64()
{
  v237 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9DEB00;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("maps|directions|calculate|estimated|arrival|eta|driving|walking|transit", 71);
  v6 = v5;
  v7 = sub_1CA94C438("maps|directions|calculate|estimated|arrival|eta|driving|walking|transit", 71);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v253 = v11;
  v251 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v228 - v251;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v252 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v249 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v250 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v228 - v250;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v248 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v245 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v246 = xmmword_1CA981350;
  *(v23 + 16) = xmmword_1CA981350;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("The destination", 15);
  v242 = v27;
  v243 = v26;
  v28 = sub_1CA94C438("The destination", 15);
  v30 = v29;
  v244 = v228;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v251;
  sub_1CA948D98();
  v32 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v247 = inited;
  v33 = v250;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v243, v242, v28, v30, 0, 0, v228 - v31, v228 - v33);
  *(v23 + 64) = v248;
  *(v23 + 72) = @"DescriptionNote";
  v35 = @"DescriptionNote";
  v36 = sub_1CA94C438("Travel times are provided by Apple Maps and take into account current traffic conditions.", 89);
  v242 = v37;
  v243 = v36;
  v241 = sub_1CA94C438("Travel times are provided by Apple Maps and take into account current traffic conditions.", 89);
  v39 = v38;
  v244 = v228;
  MEMORY[0x1EEE9AC00](v241);
  v40 = v228 - v31;
  sub_1CA948D98();
  v41 = v252;
  v42 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 80) = sub_1CA2F9F14(v243, v242, v241, v39, 0, 0, v40, v228 - v33);
  *(v23 + 104) = v248;
  *(v23 + 112) = @"DescriptionResult";
  v44 = @"DescriptionResult";
  v45 = sub_1CA94C438("The amount of time it will take to get to the destination. If passed into an action expecting a date, this will be the date and time of arrival if you leave now.", 161);
  v242 = v46;
  v243 = v45;
  v47 = sub_1CA94C438("The amount of time it will take to get to the destination. If passed into an action expecting a date, this will be the date and time of arrival if you leave now.", 161);
  v49 = v48;
  v244 = v228;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v228 - v251;
  sub_1CA948D98();
  v51 = [v41 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v250;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 120) = sub_1CA2F9F14(v243, v242, v47, v49, 0, 0, v50, v228 - v52);
  v54 = v248;
  *(v23 + 144) = v248;
  *(v23 + 152) = @"DescriptionSummary";
  v55 = @"DescriptionSummary";
  v56 = sub_1CA94C438("Estimates the amount of time it will take to travel to the location passed into this action.", 92);
  v242 = v57;
  v243 = v56;
  v241 = sub_1CA94C438("Estimates the amount of time it will take to travel to the location passed into this action.", 92);
  v59 = v58;
  v244 = v228;
  MEMORY[0x1EEE9AC00](v241);
  v60 = v228 - v251;
  sub_1CA948D98();
  v61 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v243, v242, v241, v59, 0, 0, v60, v228 - v52);
  *(v23 + 184) = v54;
  *(v23 + 160) = v63;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v64 = sub_1CA94C1E8();
  v65 = v245;
  v66 = sub_1CA6B3784(v64);
  v67 = v247;
  v247[20] = v66;
  v67[23] = v65;
  v67[24] = @"IconColor";
  v67[25] = 1953392980;
  v67[26] = 0xE400000000000000;
  v68 = MEMORY[0x1E69E6158];
  v67[28] = MEMORY[0x1E69E6158];
  v67[29] = @"IconSymbol";
  v67[30] = 0x69662E6B636F6C63;
  v67[31] = 0xEA00000000006C6CLL;
  v67[33] = v68;
  v67[34] = @"IconSymbolColor";
  v67[35] = 0x6E65657247;
  v67[36] = 0xE500000000000000;
  v67[38] = v68;
  v67[39] = @"Input";
  v69 = v68;
  v70 = v67;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v71 = swift_initStackObject();
  *(v71 + 16) = v246;
  *(v71 + 32) = 0x656C7069746C754DLL;
  *(v71 + 40) = 0xE800000000000000;
  v72 = MEMORY[0x1E69E6370];
  *(v71 + 48) = 0;
  *(v71 + 72) = v72;
  strcpy((v71 + 80), "ParameterKey");
  *(v71 + 93) = 0;
  *(v71 + 94) = -5120;
  strcpy((v71 + 96), "WFDestination");
  *(v71 + 110) = -4864;
  *(v71 + 120) = v69;
  *(v71 + 128) = 0x6465726975716552;
  *(v71 + 136) = 0xE800000000000000;
  *(v71 + 144) = 1;
  *(v71 + 168) = v72;
  *(v71 + 176) = 0x7365707954;
  *(v71 + 184) = 0xE500000000000000;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v71 + 216) = v243;
  *(v71 + 192) = &unk_1F4A0BF30;
  v73 = @"IconColor";
  v74 = @"IconSymbol";
  v75 = @"IconSymbolColor";
  v76 = @"Input";
  v77 = sub_1CA94C1E8();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v245 = v78;
  v70[40] = v77;
  v70[43] = v78;
  v70[44] = @"Name";
  v79 = @"Name";
  v80 = sub_1CA94C438("Get Travel Time (Action Name)", 29);
  v241 = v81;
  v82 = sub_1CA94C438("Get Travel Time", 15);
  v84 = v83;
  v242 = v228;
  MEMORY[0x1EEE9AC00](v82);
  v85 = v251;
  sub_1CA948D98();
  v86 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = v228 - v250;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v80, v241, v82, v84, 0, 0, v228 - v85, v87);
  v90 = v247;
  v91 = v248;
  v247[45] = v89;
  v90[48] = v91;
  v90[49] = @"Output";
  v92 = swift_allocObject();
  *(v92 + 16) = v246;
  *(v92 + 32) = 0x75736F6C63736944;
  *(v92 + 40) = 0xEF6C6576654C6572;
  *(v92 + 48) = 0x63696C627550;
  *(v92 + 56) = 0xE600000000000000;
  *(v92 + 72) = MEMORY[0x1E69E6158];
  *(v92 + 80) = 0x656C7069746C754DLL;
  *(v92 + 88) = 0xE800000000000000;
  *(v92 + 96) = 0;
  *(v92 + 120) = MEMORY[0x1E69E6370];
  *(v92 + 128) = 0x614E74757074754FLL;
  *(v92 + 136) = 0xEA0000000000656DLL;
  v93 = @"Output";
  v244 = sub_1CA94C438("Travel Time (Default Output Name)", 33);
  v242 = v94;
  v95 = sub_1CA94C438("Travel Time", 11);
  v97 = v96;
  *&v246 = v228;
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948D98();
  v98 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = v228 - v250;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 144) = sub_1CA2F9F14(v244, v242, v95, v97, 0, 0, v228 - v85, v99);
  *(v92 + 168) = v91;
  *(v92 + 176) = 0x7365707954;
  *(v92 + 216) = v243;
  *(v92 + 184) = 0xE500000000000000;
  *(v92 + 192) = &unk_1F4A0BF80;
  v101 = MEMORY[0x1E69E6158];
  v102 = sub_1CA94C1E8();
  v103 = v247;
  v247[50] = v102;
  v103[53] = v245;
  v103[54] = @"Parameters";
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v246 = swift_allocObject();
  *(v246 + 16) = xmmword_1CA981470;
  v245 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1CA981380;
  *(v104 + 64) = v101;
  v234 = 0xD000000000000013;
  v235 = 0x80000001CA99B730;
  *(v104 + 32) = @"Class";
  *(v104 + 40) = 0xD000000000000013;
  *(v104 + 48) = 0x80000001CA99B730;
  v238 = @"Class";
  v105 = @"Parameters";
  *(v104 + 72) = sub_1CA94C368();
  *(v104 + 80) = 1;
  *(v104 + 104) = MEMORY[0x1E69E6370];
  *(v104 + 112) = @"Key";
  *(v104 + 120) = 0xD00000000000001DLL;
  *(v104 + 128) = 0x80000001CA99C3E0;
  *(v104 + 144) = v101;
  *(v104 + 152) = @"Label";
  v106 = @"Key";
  v107 = @"Label";
  v108 = v106;
  v109 = v107;
  v241 = v108;
  v242 = v109;
  v239 = sub_1CA94C438("Start Location (WFGetDirectionsCustomLocation)", 46);
  v233 = v110;
  v111 = sub_1CA94C438("Start Location", 14);
  v232 = v112;
  v240 = v228;
  MEMORY[0x1EEE9AC00](v111);
  v113 = v228 - v251;
  sub_1CA948D98();
  v114 = v252;
  v115 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = v250;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v104 + 160) = sub_1CA2F9F14(v239, v233, v111, v232, 0, 0, v113, v228 - v116);
  v118 = v248;
  *(v104 + 184) = v248;
  *(v104 + 192) = @"Prompt";
  v233 = @"Prompt";
  v239 = sub_1CA94C438("What’s the starting point? (WFGetDirectionsCustomLocation)", 60);
  v232 = v119;
  v120 = sub_1CA94C438("What’s the starting point?", 28);
  *&v231 = v121;
  v240 = v228;
  MEMORY[0x1EEE9AC00](v120);
  v122 = v228 - v251;
  sub_1CA948D98();
  v123 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v239, v232, v120, v231, 0, 0, v122, v228 - v116);
  *(v104 + 224) = v118;
  *(v104 + 200) = v125;
  v232 = "ustomLocation)";
  *(v104 + 232) = sub_1CA94C368();
  *(v104 + 264) = MEMORY[0x1E69E6370];
  *(v104 + 240) = 1;
  _s3__C3KeyVMa_0(0);
  v240 = v126;
  v239 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v127 = sub_1CA94C1E8();
  v128 = sub_1CA2F864C(v127);
  *(v246 + 32) = v128;
  v129 = swift_allocObject();
  v231 = xmmword_1CA981370;
  *(v129 + 16) = xmmword_1CA981370;
  v131 = v234;
  v130 = v235;
  *(v129 + 32) = v238;
  *(v129 + 40) = v131;
  *(v129 + 48) = v130;
  v132 = MEMORY[0x1E69E6158];
  v133 = v241;
  *(v129 + 64) = MEMORY[0x1E69E6158];
  *(v129 + 72) = v133;
  strcpy((v129 + 80), "WFDestination");
  *(v129 + 94) = -4864;
  v134 = v242;
  *(v129 + 104) = v132;
  *(v129 + 112) = v134;
  v234 = sub_1CA94C438("End Location (WFDestination)", 28);
  v230 = v135;
  v136 = sub_1CA94C438("End Location", 12);
  v229 = v137;
  v235 = v228;
  MEMORY[0x1EEE9AC00](v136);
  v138 = v251;
  sub_1CA948D98();
  v139 = [v252 bundleURL];
  v228[1] = v228;
  MEMORY[0x1EEE9AC00](v139);
  v140 = v250;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 120) = sub_1CA2F9F14(v234, v230, v136, v229, 0, 0, v228 - v138, v228 - v140);
  v142 = v248;
  v143 = v233;
  *(v129 + 144) = v248;
  *(v129 + 152) = v143;
  v144 = sub_1CA94C438("What’s the destination? (WFDestination)", 41);
  v233 = v145;
  v234 = v144;
  v146 = sub_1CA94C438("What’s the destination?", 25);
  v230 = v147;
  v235 = v228;
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948D98();
  v148 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v234, v233, v146, v230, 0, 0, v228 - v138, v228 - v140);
  *(v129 + 184) = v142;
  *(v129 + 160) = v150;
  *(v129 + 192) = sub_1CA94C368();
  *(v129 + 224) = MEMORY[0x1E69E6370];
  *(v129 + 200) = 1;
  v151 = sub_1CA94C1E8();
  v152 = sub_1CA2F864C(v151);
  *(v246 + 40) = v152;
  v153 = swift_allocObject();
  *(v153 + 16) = v231;
  *(v153 + 32) = v238;
  *(v153 + 40) = 0xD000000000000016;
  *(v153 + 48) = 0x80000001CA99C4A0;
  v154 = MEMORY[0x1E69E6158];
  *(v153 + 64) = MEMORY[0x1E69E6158];
  *(v153 + 72) = @"DefaultValue";
  *(v153 + 80) = 0x676E6976697244;
  *(v153 + 88) = 0xE700000000000000;
  *(v153 + 104) = v154;
  *(v153 + 112) = @"Items";
  v244 = swift_allocObject();
  *(v244 + 1) = xmmword_1CA981570;
  v155 = @"DefaultValue";
  v156 = @"Items";
  v157 = sub_1CA94C438("Driving (WFGetDirectionsActionMode)", 35);
  v235 = v158;
  v236 = v157;
  v159 = sub_1CA94C438("Driving", 7);
  v234 = v160;
  v238 = v228;
  MEMORY[0x1EEE9AC00](v159);
  sub_1CA948D98();
  v161 = v252;
  v162 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = v228 - v250;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v236, v235, v159, v234, 0, 0, v228 - v138, v163);
  v244[4] = v165;
  v166 = sub_1CA94C438("Walking (WFGetDirectionsActionMode)", 35);
  v235 = v167;
  v236 = v166;
  v168 = sub_1CA94C438("Walking", 7);
  v234 = v169;
  v238 = v228;
  MEMORY[0x1EEE9AC00](v168);
  sub_1CA948D98();
  v170 = [v161 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = v250;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v236, v235, v168, v234, 0, 0, v228 - v138, v228 - v171);
  v174 = v244;
  v244[5] = v173;
  v175 = sub_1CA94C438("Transit (WFGetDirectionsActionMode)", 35);
  v235 = v176;
  v236 = v175;
  v177 = sub_1CA94C438("Transit", 7);
  v234 = v178;
  v238 = v228;
  MEMORY[0x1EEE9AC00](v177);
  v179 = v228 - v138;
  sub_1CA948D98();
  v180 = v252;
  v181 = [v252 bundleURL];
  v233 = v228;
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v174 + 48) = sub_1CA2F9F14(v236, v235, v177, v234, 0, 0, v179, v228 - v171);
  v183 = sub_1CA94C438("Biking (WFGetDirectionsActionMode)", 34);
  v235 = v184;
  v236 = v183;
  v234 = sub_1CA94C438("Biking", 6);
  v186 = v185;
  v238 = v228;
  MEMORY[0x1EEE9AC00](v234);
  v187 = v228 - v251;
  sub_1CA948D98();
  v188 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  v189 = v250;
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v191 = sub_1CA2F9F14(v236, v235, v234, v186, 0, 0, v187, v228 - v189);
  v192 = v244;
  v244[7] = v191;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v153 + 120) = v192;
  v194 = v241;
  *(v153 + 144) = v193;
  *(v153 + 152) = v194;
  *(v153 + 160) = 0xD000000000000019;
  *(v153 + 168) = 0x80000001CA99C580;
  v195 = v242;
  *(v153 + 184) = MEMORY[0x1E69E6158];
  *(v153 + 192) = v195;
  v196 = sub_1CA94C438("Mode (WFGetDirectionsActionMode)", 32);
  v241 = v197;
  v242 = v196;
  v198 = sub_1CA94C438("Mode", 4);
  v200 = v199;
  v244 = v228;
  MEMORY[0x1EEE9AC00](v198);
  v201 = v228 - v251;
  sub_1CA948D98();
  v202 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v204 = sub_1CA2F9F14(v242, v241, v198, v200, 0, 0, v201, v228 - v189);
  *(v153 + 224) = v248;
  *(v153 + 200) = v204;
  v205 = sub_1CA94C1E8();
  v206 = sub_1CA2F864C(v205);
  v207 = v246;
  *(v246 + 48) = v206;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v209 = v247;
  v247[55] = v207;
  v209[58] = v208;
  v209[59] = @"ParameterSummary";
  v210 = @"ParameterSummary";
  v211 = sub_1CA94C438("Get ${WFGetDirectionsActionMode} time from ${WFGetDirectionsCustomLocation} to ${WFDestination} (Parameter Summary)", 115);
  v213 = v212;
  v214 = sub_1CA94C438("Get ${WFGetDirectionsActionMode} time from ${WFGetDirectionsCustomLocation} to ${WFDestination}", 95);
  v216 = v215;
  MEMORY[0x1EEE9AC00](v214);
  v217 = v228 - v251;
  sub_1CA948D98();
  v218 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v218);
  v219 = v228 - v250;
  sub_1CA948B68();

  v220 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v221 = sub_1CA2F9F14(v211, v213, v214, v216, 0, 0, v217, v219);
  v222 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v223 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v224 = v247;
  v247[60] = v222;
  v224[63] = v223;
  v224[64] = @"RequiredResources";
  v224[68] = v243;
  v224[65] = &unk_1F4A0BFB0;
  v224[69] = @"ResidentCompatible";
  v224[73] = MEMORY[0x1E69E6370];
  *(v224 + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v225 = @"RequiredResources";
  v226 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

BOOL sub_1CA68BAD4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1CA94D328();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

id sub_1CA68BD48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, Class *a6)
{
  *(v6 + *a4) = a1;
  v7 = (v6 + *a5);
  *v7 = a2;
  v7[1] = a3;
  v9.super_class = *a6;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_1CA68BEA8(void *a1@<X8>)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() fetchRequest];
  sub_1CA25B3D0(0, &qword_1EC441AA8, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CA981310;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1CA282DB4();
  *(v3 + 32) = 0xD000000000000018;
  *(v3 + 40) = 0x80000001CA99AA20;
  v5 = sub_1CA94CBA8();
  [v2 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 56) = v4;
  *(v6 + 32) = 0x776F6C666B726F77;
  *(v6 + 40) = 0xEA00000000004449;
  v7 = sub_1CA94C648();

  [v2 setPropertiesToFetch_];

  v29[0] = 0;
  v8 = [v2 execute_];
  v9 = v29[0];
  if (v8)
  {
    v10 = v8;
    v26 = v2;
    v27 = a1;
    sub_1CA25B3D0(0, &unk_1EC441990, off_1E836E138);
    v11 = sub_1CA94C658();
    v12 = v9;

    v13 = sub_1CA25B410(v11);
    v14 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    while (v13 != v14)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1CCAA22D0](v14, v11);
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
      }

      v18 = sub_1CA3F132C(v15, &selRef_workflowID);
      v20 = v19;

      ++v14;
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA26DADC();
          v28 = v23;
        }

        v21 = *(v28 + 16);
        if (v21 >= *(v28 + 24) >> 1)
        {
          sub_1CA26DADC();
          v28 = v24;
        }

        *(v28 + 16) = v21 + 1;
        v22 = v28 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v20;
        v14 = v17;
      }
    }

    *v27 = v28;
  }

  else
  {
    v25 = v29[0];
    sub_1CA948AD8();

    swift_willThrow();
  }
}

void sub_1CA68C2E8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, NSObject *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v187 = a5;
  v188 = a7;
  v185 = a6;
  v186 = a4;
  v189 = a8;
  v190[1] = *MEMORY[0x1E69E9840];
  v12 = sub_1CA949F78();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v170 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = (v170 - v20);
  v22 = sub_1CA68D518(a2, a3, 0, 0);
  if (v8)
  {
    return;
  }

  v23 = v22;
  v177 = v19;
  v178 = v21;
  v176 = v16;
  v181 = a3;
  v182 = a2;
  v183 = v13;
  v184 = a1;
  v179 = v12;
  v24 = &selRef_setWantedEncryptedSchemaVersion_;
  if (!v22)
  {
    v38 = 0;
    v39 = v184;
    v23 = sub_1CA68D80C(v182, v181);
    v180 = 0;
    goto LABEL_37;
  }

  v180 = 0;
  v25 = sub_1CA68EF10(v22);
  if (v26 >> 60 == 15)
  {
LABEL_23:
    v39 = v184;
LABEL_24:
    v54 = [v23 tombstoned];
    v55 = v183;
    if (v54)
    {
      v56 = objc_allocWithZone(WFDatabaseFetchedRecordResult);
      v57 = sub_1CA68EAB8(0, 0x20796C6C61636F6CLL, 0xEF646574656C6564);

      *v189 = v57;
      return;
    }

    if ([v39 allowCreatingConflicts])
    {
      v58 = [v23 v24[471]];
      if (v58 != [v23 lastSyncedHash])
      {
        v59 = [objc_allocWithZone(WFWorkflowRecord) initWithStorage_];
        if (v59)
        {
          v60 = v59;
          v61 = v188;
          v62 = [v39 reasonsForConflictWithLocalWorkflow:v59 remoteWorkflow:v188];
          v63 = sub_1CA94C658();

          if (v63[2].isa)
          {
            v186 = v63;
            v187 = v60;
            v64 = v176;
            sub_1CA949C58();
            v65 = v181;
            sub_1CA94C218();
            v66 = sub_1CA949F68();
            v67 = sub_1CA94CC38();

            if (os_log_type_enabled(v66, v67))
            {
              v68 = v23;
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v190[0] = v70;
              *v69 = 136446210;
              *(v69 + 4) = sub_1CA26B54C(v182, v65, v190);
              _os_log_impl(&dword_1CA256000, v66, v67, "Found conflict for workflow with identifier %{public}s", v69, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v70);
              MEMORY[0x1CCAA4BF0](v70, -1, -1);
              v71 = v69;
              v23 = v68;
              MEMORY[0x1CCAA4BF0](v71, -1, -1);
            }

            (*(v55 + 8))(v64, v179);
            v72 = v188;
            v175 = v23;
            v73 = sub_1CA68EDCC(v23);
            if (v73 && (v74 = sub_1CA2ED070(v73), , v74))
            {
              v190[0] = 0;
              if ([v72 writeToStorage:v74 error:v190])
              {
                v75 = v190[0];
                v76 = v189;
                v77 = v175;
                v78 = v187;
LABEL_91:

                v190[0] = v186;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
                sub_1CA26E4D4();
                v166 = sub_1CA94C308();
                v168 = v167;

                v169 = objc_allocWithZone(WFDatabaseFetchedRecordResult);
                v103 = sub_1CA68EAB8(3, v166, v168);

LABEL_72:
                *v76 = v103;
                return;
              }

              v163 = v190[0];

              sub_1CA948AD8();

              swift_willThrow();
            }

            else
            {
              sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
              v144 = sub_1CA948D28();
              v145 = *(v144 - 8);
              MEMORY[0x1EEE9AC00](v144);
              v147 = v170 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1CA948D18();
              v148 = sub_1CA948CC8();
              v150 = v149;
              (*(v145 + 8))(v147, v144);
              v151 = sub_1CA623D0C(v148, v150, 0);
              if (![v184 objectForDescriptor:v151 properties:0 createIfNecessary:1])
              {
                __break(1u);
                return;
              }

              objc_opt_self();
              v152 = swift_dynamicCastObjCClassUnconditional();
              v190[0] = 0;
              v153 = v188;
              v154 = [v188 writeToStorage:v152 error:v190];
              v78 = v187;
              if (v154)
              {
                v155 = v190[0];
                [v152 setConflictOf_];
                v156 = sub_1CA68EF10(v153);
                if (v157 >> 60 == 15)
                {
                  v74 = 0;
                }

                else
                {
                  v164 = v156;
                  v165 = v157;
                  v74 = sub_1CA948BF8();
                  sub_1CA39F318(v164, v165);
                }

                v76 = v189;
                v77 = v175;
                [v175 setCloudKitRecordMetadata_];

                swift_unknownObjectRelease();
                goto LABEL_91;
              }

              v162 = v190[0];

              sub_1CA948AD8();

              swift_willThrow();
              swift_unknownObjectRelease();
            }

            v23 = v175;
LABEL_67:

            return;
          }

          [v39 mergeChangesFrom:v60 into:v61];

          v38 = v23;
LABEL_38:
          v79 = sub_1CA3F132C(v61, &selRef_name);
          v76 = v189;
          if (!v80)
          {
LABEL_58:
            v99 = 0;
            goto LABEL_59;
          }

          v81 = v79;
          v82 = v80;
          v83 = [v23 name];
          if (!v83)
          {
            goto LABEL_45;
          }

          v84 = v83;
          v85 = sub_1CA94C3A8();
          v87 = v86;

          if (v81 == v85 && v82 == v87)
          {
          }

          else
          {
            v89 = sub_1CA94D7F8();

            if ((v89 & 1) == 0)
            {
LABEL_45:
              v90 = sub_1CA94C368();

              v39 = v184;
              v91 = [v184 suggestedWorkflowNameForName_];

              v92 = sub_1CA94C3A8();
              v94 = v93;

              sub_1CA94C218();
              v95 = sub_1CA3F132C(v61, &selRef_name);
              if (v96)
              {
                if (v92 == v95 && v96 == v94)
                {
                  swift_bridgeObjectRelease_n();
LABEL_57:

                  goto LABEL_58;
                }

                v98 = sub_1CA94D7F8();

                if (v98)
                {
                  goto LABEL_57;
                }
              }

              else
              {
              }

              sub_1CA68ED68(v92, v94, v61);
              v99 = 1;
LABEL_59:
              [v39 setIsSavingWorkflowRecordForSync_];
              v190[0] = 0;
              if ([v61 writeToStorage:v23 error:v190])
              {
                v100 = v190[0];
                [v39 setIsSavingWorkflowRecordForSync_];
                if ((v99 & 1) == 0)
                {
                  [v23 setLastSyncedHash_];
                  [v23 setLastSyncedEncryptedSchemaVersion_];
                }

                if (v38)
                {
                  v101 = 2;
                }

                else
                {
                  v101 = 1;
                }

                v102 = objc_allocWithZone(WFDatabaseFetchedRecordResult);
                v103 = sub_1CA68EAB8(v101, 0, 0);

                goto LABEL_72;
              }

              v104 = v190[0];
              sub_1CA948AD8();

              swift_willThrow();
              goto LABEL_67;
            }
          }

          v99 = 0;
          v39 = v184;
          goto LABEL_59;
        }
      }
    }

    v38 = v23;
LABEL_37:
    v61 = v188;
    goto LABEL_38;
  }

  v27 = v26;
  v175 = v23;
  v28 = v25;
  v29 = objc_opt_self();
  v30 = sub_1CA948BF8();
  v190[0] = 0;
  v31 = [v29 recordFromSystemFieldsData:v30 error:v190];

  if (!v31)
  {
    v40 = v190[0];
    v41 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA39F318(v28, v27);

    v180 = 0;
LABEL_22:
    v23 = v175;
    goto LABEL_23;
  }

  v174 = v28;
  v32 = v190[0];
  v33 = sub_1CA3F132C(v31, &selRef_recordChangeTag);
  if (v34)
  {
    v35 = v182;
    if (v187)
    {
      if (v33 == v186 && v34 == v187)
      {

LABEL_69:
        v105 = v31;
        v106 = v178;
        sub_1CA949C58();
        v107 = v181;
        sub_1CA94C218();
        v108 = sub_1CA949F68();
        v109 = sub_1CA94CBF8();

        v110 = os_log_type_enabled(v108, v109);
        v111 = v179;
        if (v110)
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v114 = v107;
          v115 = v27;
          v116 = v113;
          v190[0] = v113;
          *v112 = 136446210;
          *(v112 + 4) = sub_1CA26B54C(v35, v114, v190);
          _os_log_impl(&dword_1CA256000, v108, v109, "Local WFWorkflowRecord with identifier %{public}s has the same recordChangeTag as fetched record, this is likely our own change, discarding it.", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v116);
          v117 = v116;
          v27 = v115;
          MEMORY[0x1CCAA4BF0](v117, -1, -1);
          MEMORY[0x1CCAA4BF0](v112, -1, -1);
        }

        (*(v183 + 8))(v106, v111);
        v76 = v189;
        v118 = v175;
        v119 = objc_allocWithZone(WFDatabaseFetchedRecordResult);
        v103 = sub_1CA68EAB8(0, 0xD000000000000010, 0x80000001CA9DF230);
        sub_1CA39F318(v174, v27);

        goto LABEL_72;
      }

      v37 = sub_1CA94D7F8();

      if (v37)
      {
        goto LABEL_69;
      }
    }

    else
    {
    }
  }

  else
  {
    v35 = v182;
    if (!v187)
    {
      goto LABEL_69;
    }
  }

  v187 = sub_1CA948CB8();
  v42 = *(v187 - 1);
  isa = v42[8].isa;
  MEMORY[0x1EEE9AC00](v187);
  v44 = (isa + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v170 - v44;
  v46 = [v31 modificationDate];
  if (!v46)
  {
    sub_1CA39F318(v174, v27);

    goto LABEL_22;
  }

  v47 = v46;
  v178 = v170;
  v186 = v42;
  sub_1CA948C78();

  MEMORY[0x1EEE9AC00](v48);
  v49 = v170 - v44;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  v173 = v170;
  MEMORY[0x1EEE9AC00](v50 - 8);
  v52 = v170 - v51;
  sub_1CA6102B4(v185, v170 - v51, &qword_1EC4466D0, &qword_1CA991AA0);
  v53 = v187;
  if (__swift_getEnumTagSinglePayload(v52, 1, v187) == 1)
  {
    (v186[1].isa)(v45, v53);
    sub_1CA39F318(v174, v27);

    sub_1CA633484(v52);
    v23 = v175;
    v39 = v184;
LABEL_83:
    v24 = &selRef_setWantedEncryptedSchemaVersion_;
    goto LABEL_24;
  }

  v185 = v170;
  (v186[4].isa)(v49, v52, v53);
  v120 = sub_1CA948C98();
  v39 = v184;
  if (v120 == -1)
  {
    sub_1CA39F318(v174, v27);

    v158 = v186[1].isa;
    (v158)(v49, v53);
    (v158)(v45, v53);
    v23 = v175;
    goto LABEL_83;
  }

  v188 = v31;
  v121 = sub_1CA949C58();
  v181 = v170;
  MEMORY[0x1EEE9AC00](v121);
  v122 = (isa + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v45;
  v124 = v49;
  v125 = v186[2].isa;
  v173 = (v170 - v122);
  v182 = v124;
  v126 = v125();
  v176 = v170;
  MEMORY[0x1EEE9AC00](v126);
  v127 = v170 - v122;
  v184 = v123;
  (v125)(v170 - v122, v123, v53);
  v128 = sub_1CA949F68();
  v129 = sub_1CA94CC28();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v190[0] = v172;
    *v130 = 136315394;
    v170[1] = sub_1CA3F177C();
    v171 = v129;
    v131 = v173;
    v132 = v187;
    v170[0] = sub_1CA94D798();
    v134 = v133;
    v135 = v186[1].isa;
    v186 = v128;
    (v135)(v131, v132);
    v136 = sub_1CA26B54C(v170[0], v134, v190);
    v137 = v135;

    *(v130 + 4) = v136;
    *(v130 + 12) = 2080;
    v138 = sub_1CA94D798();
    v140 = v139;
    (v137)(v127, v132);
    v141 = sub_1CA26B54C(v138, v140, v190);

    *(v130 + 14) = v141;
    v142 = v186;
    _os_log_impl(&dword_1CA256000, v186, v171, "Remote record modification date %s is not greater than local record modification date %s", v130, 0x16u);
    v143 = v172;
    swift_arrayDestroy();
    MEMORY[0x1CCAA4BF0](v143, -1, -1);
    MEMORY[0x1CCAA4BF0](v130, -1, -1);
  }

  else
  {

    v132 = v187;
    v137 = v186[1].isa;
    (v137)(v127, v187);
    (v137)(v173, v132);
  }

  (*(v183 + 8))(v177, v179);
  v159 = v189;
  v160 = objc_allocWithZone(WFDatabaseFetchedRecordResult);
  v161 = sub_1CA68EAB8(0, 0xD000000000000017, 0x80000001CA9DF210);
  sub_1CA39F318(v174, v27);

  (v137)(v182, v132);
  (v137)(v184, v132);
  *v159 = v161;
}

id sub_1CA68D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = [objc_opt_self() fetchRequest];
  sub_1CA25B3D0(0, &qword_1EC441AA8, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CA97EDF0;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1CA282DB4();
  *(v9 + 32) = 0x776F6C666B726F77;
  *(v9 + 40) = 0xEA00000000004449;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = a1;
  *(v9 + 80) = a2;
  sub_1CA94C218();
  v12 = sub_1CA94CBA8();
  [v8 setPredicate_];

  [v8 setFetchLimit_];
  if (a3)
  {
    sub_1CA360FF0(a3);
    v13 = sub_1CA94C648();
  }

  else
  {
    v13 = 0;
  }

  [v8 setPropertiesToFetch_];

  if (a4)
  {
    v14 = sub_1CA94C648();
  }

  else
  {
    v14 = 0;
  }

  [v8 setRelationshipKeyPathsForPrefetching_];

  v23[0] = 0;
  v15 = [v8 execute_];
  v16 = v23[0];
  if (v15)
  {
    v17 = v15;
    sub_1CA25B3D0(0, &unk_1EC441990, off_1E836E138);
    v18 = sub_1CA94C658();
    v19 = v16;

    if (sub_1CA25B410(v18))
    {
      sub_1CA275D70(0, (v18 & 0xC000000000000001) == 0, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1CCAA22D0](0, v18);
      }

      else
      {
        v20 = *(v18 + 32);
      }

      v16 = v20;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v21 = v23[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  return v16;
}

id sub_1CA68D80C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1CA68D518(a1, a2, 0, 0);
  v7 = v6;
  if (!v3 && !v6)
  {
    v8 = [v2 context];
    v7 = [objc_allocWithZone(WFCoreDataWorkflow) initWithContext_];

    sub_1CA68ED10(a1, a2, v7);
    v9 = sub_1CA94C368();
    [v2 objectWasCreated:v7 identifier:v9];
  }

  return v7;
}

id sub_1CA68DBC0(void *a1, void *a2)
{
  result = [a1 actions];
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [a2 actions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444050, &unk_1CA9842E0);
  v7 = sub_1CA94C658();

  sub_1CA361420(v7);

  v8 = sub_1CA94C648();

  LOBYTE(v6) = [v5 isEqualToArray_];

  if (v6)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA26DADC();
    v9 = v10;
    v11 = *(v10 + 16);
    if (v11 >= *(v10 + 24) >> 1)
    {
      sub_1CA26DADC();
      v9 = v19;
    }

    *(v9 + 16) = v11 + 1;
    v12 = v9 + 16 * v11;
    *(v12 + 32) = 0x736E6F69746361;
    *(v12 + 40) = 0xE700000000000000;
  }

  result = [a1 importQuestions];
  if (!result)
  {
    goto LABEL_16;
  }

  v13 = result;
  v14 = [a2 importQuestions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
  v15 = sub_1CA94C658();

  sub_1CA361434(v15);

  v16 = sub_1CA94C648();

  LOBYTE(v14) = [v13 isEqualToArray_];

  if ((v14 & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA26DADC();
      v9 = v20;
    }

    v17 = *(v9 + 16);
    if (v17 >= *(v9 + 24) >> 1)
    {
      sub_1CA26DADC();
      v9 = v21;
    }

    *(v9 + 16) = v17 + 1;
    v18 = v9 + 16 * v17;
    *(v18 + 32) = 0xD000000000000010;
    *(v18 + 40) = 0x80000001CA9DF180;
  }

  return v9;
}

void sub_1CA68DEF0(void *a1, void *a2)
{
  v21 = sub_1CA949F78();
  v4 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v7 = [a1 modificationDate];
  v8 = sub_1CA948CB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1CA948C78();

  v23 = a2;
  v12 = [a2 modificationDate];
  MEMORY[0x1EEE9AC00](v12);
  sub_1CA948C78();

  v13 = sub_1CA948C98();
  v14 = *(v9 + 8);
  v14(&v20 - v11, v8);
  v14(&v20 - v11, v8);
  if (v13 == 1)
  {
    sub_1CA949C58();
    v15 = sub_1CA949F68();
    v16 = sub_1CA94CC38();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1CA256000, v15, v16, "Fetched authorizations are older than local, will ignore them and overwrite them with local.", v17, 2u);
      MEMORY[0x1CCAA4BF0](v17, -1, -1);
    }

    (*(v4 + 8))(v6, v21);
    v18 = [v22 smartPromptPerWorkflowStates];
    sub_1CA25B3D0(0, &qword_1EC447F50, off_1E836F1D0);
    sub_1CA68EE68(&qword_1EC447F58, &qword_1EC447F50, off_1E836F1D0);
    sub_1CA94C8F8();

    v19 = sub_1CA94C8E8();

    [v23 setSmartPromptPerWorkflowStates_];
  }
}

void sub_1CA68E2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1CA68D518(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
  if (!v7)
  {
    v13 = v12;
    if (v12)
    {
      sub_1CA68EF70(a4, a5, v12);
      [v13 setLastSyncedHash_];
      [v13 setLastSyncedEncryptedSchemaVersion_];
    }

    else
    {
      type metadata accessor for WFDatabaseError(0);
      sub_1CA68EB2C(MEMORY[0x1E69E7CC0]);
      sub_1CA68EEB8();
      sub_1CA948AB8();
      swift_willThrow();
    }
  }
}

void sub_1CA68E56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = sub_1CA68D518(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
  if (!v5)
  {
    v8 = v7;
    if (v7)
    {
      if (a5 >> 60 == 15)
      {
        v9 = 0;
      }

      else
      {
        v9 = sub_1CA948BF8();
      }

      [v8 setCloudKitRecordMetadata_];
    }

    else
    {
      type metadata accessor for WFDatabaseError(0);
      sub_1CA68EB2C(MEMORY[0x1E69E7CC0]);
      sub_1CA68EEB8();
      sub_1CA948AB8();
      swift_willThrow();
    }
  }
}

uint64_t WFDatabase.desiredSyncOperation(forWorkflow:)()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_25();
  return sub_1CA3EFC40(0xD000000000000023, v0, v1, v2);
}

void sub_1CA68E7F4(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = sub_1CA68D518(a1, a2, &unk_1F4A0BFF0, &unk_1F4A0C050);
  v6 = v4;
  if (v4)
  {
    v7 = [v4 hiddenFromLibraryAndSync];
    if ((v7 & 1) == 0)
    {
      v8 = [v6 tombstoned];
      if (v8)
      {
        type metadata accessor for WFDatabaseRecordSyncOperation(v8);
        v9 = 2;
LABEL_10:
        v5 = sub_1CA3EB330(v9);

        goto LABEL_11;
      }

      v10 = [v6 conflictOf];
      if (v10)
      {
      }

      else
      {
        v11 = sub_1CA68EDCC(v6);
        if (!v11 || (v12 = sub_1CA68BAD4(v11), v7 = , v12))
        {
          v13 = [v6 syncHash];
          v14 = [v6 lastSyncedHash];
          type metadata accessor for WFDatabaseRecordSyncOperation(v14);
          v9 = v13 != v14;
          goto LABEL_10;
        }
      }
    }

    type metadata accessor for WFDatabaseRecordSyncOperation(v7);
    v9 = 0;
    goto LABEL_10;
  }

  type metadata accessor for WFDatabaseRecordSyncOperation(0);
  v5 = sub_1CA3EB330(0);
LABEL_11:
  *a3 = v5;
}

id sub_1CA68EAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1CA94C368();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithResultType:a1 reason:v5];

  return v6;
}

unint64_t sub_1CA68EB2C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444278, qword_1CA982C98);
  v2 = sub_1CA94D688();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1CA6102B4(v6, &v15, &unk_1EC447F60, &unk_1CA991B60);
    v7 = v15;
    v8 = v16;
    result = sub_1CA68EC80(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1CA2C0A20(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1CA68EC80(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  sub_1CA94C458();
  v4 = sub_1CA94D968();

  return sub_1CA271C6C(a1, a2, v4);
}

void sub_1CA68ED10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();
  [a3 setWorkflowID_];
}

void sub_1CA68ED68(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();

  [a3 setName_];
}

uint64_t sub_1CA68EDCC(void *a1)
{
  v1 = [a1 conflicts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &unk_1EC441990, off_1E836E138);
  sub_1CA68EE68(&qword_1EC441988, &unk_1EC441990, off_1E836E138);
  v3 = sub_1CA94C8F8();

  return v3;
}

uint64_t sub_1CA68EE68(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CA25B3D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CA68EEB8()
{
  result = qword_1EC443698;
  if (!qword_1EC443698)
  {
    type metadata accessor for WFDatabaseError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443698);
  }

  return result;
}

uint64_t sub_1CA68EF10(void *a1)
{
  v1 = [a1 cloudKitRecordMetadata];
  if (v1)
  {
    v2 = v1;
    sub_1CA948C08();
  }

  return OUTLINED_FUNCTION_23();
}

void sub_1CA68EF70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA948BF8();
  [a3 setCloudKitRecordMetadata_];
}

id sub_1CA68F000()
{
  v143 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9B2AD0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v148 = sub_1CA94C438("ipod|track|music|itunes|previous", 32);
  v5 = v4;
  v6 = sub_1CA94C438("ipod|track|music|itunes|previous", 32);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v151 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v152 = v10;
  v11 = &v134 - v151;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v147 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v150 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v149 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v134 - v149;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v148, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v148 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v146 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Skips to the previous song in the current music queue.", 54);
  v144 = v24;
  v25 = sub_1CA94C438("Skips to the previous song in the current music queue.", 54);
  v27 = v26;
  v145 = &v134;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v134 - v151;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v134 - v149;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v144, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v148;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v146;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 6579538;
  *(inited + 168) = 0xE300000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "backward.fill");
  *(inited + 214) = -4864;
  *(inited + 224) = v35;
  *(inited + 232) = @"InputPassthrough";
  v36 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"IconColor";
  v38 = @"IconSymbol";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438("Skip Back (Action Name)", 23);
  v43 = v42;
  v44 = sub_1CA94C438("Skip Back", 9);
  v46 = v45;
  v146 = &v134;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v134 - v151;
  sub_1CA948D98();
  v48 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v134 - v149;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v148;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v146 = swift_allocObject();
  v142 = xmmword_1CA981360;
  *(v146 + 1) = xmmword_1CA981360;
  v145 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981370;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD000000000000016;
  *(v51 + 48) = 0x80000001CA99C4A0;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"DefaultValue";
  *(v51 + 80) = 0x6E696E6E69676542;
  *(v51 + 88) = 0xE900000000000067;
  *(v51 + 104) = v52;
  *(v51 + 112) = @"Items";
  v144 = swift_allocObject();
  *(v144 + 1) = v142;
  v53 = @"Class";
  v54 = @"DefaultValue";
  v140 = v53;
  v139 = v54;
  v55 = @"Parameters";
  v56 = @"Items";
  v57 = sub_1CA94C438("Beginning (WFSkipBackBehavior)", 30);
  v136 = v58;
  v137 = v57;
  v59 = sub_1CA94C438("Beginning", 9);
  v135 = v60;
  v138 = &v134;
  *&v142 = inited;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v134 - v151;
  sub_1CA948D98();
  v62 = v147;
  v63 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v149;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v137, v136, v59, v135, 0, 0, v61, &v134 - v64);
  v144[4] = v66;
  v67 = sub_1CA94C438("Previous Song (WFSkipBackBehavior)", 34);
  v136 = v68;
  v137 = v67;
  v69 = sub_1CA94C438("Previous Song", 13);
  v135 = v70;
  v138 = &v134;
  MEMORY[0x1EEE9AC00](v69);
  v71 = v151;
  sub_1CA948D98();
  v72 = [v62 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v137, v136, v69, v135, 0, 0, &v134 - v71, &v134 - v64);
  v75 = v144;
  v144[5] = v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v51 + 120) = v75;
  *(v51 + 144) = v76;
  *(v51 + 152) = @"Key";
  *(v51 + 160) = 0xD000000000000012;
  *(v51 + 168) = 0x80000001CA9DF360;
  *(v51 + 184) = MEMORY[0x1E69E6158];
  *(v51 + 192) = @"Label";
  v77 = @"Key";
  v78 = @"Label";
  v135 = v77;
  v136 = v78;
  v79 = sub_1CA94C438("Skip To (WFSkipBackBehavior)", 28);
  v138 = v80;
  v81 = sub_1CA94C438("Skip To", 7);
  v83 = v82;
  v144 = &v134;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v134 - v71;
  sub_1CA948D98();
  v85 = v147;
  v86 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v134 - v149;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v79, v138, v81, v83, 0, 0, v84, v87);
  *(v51 + 224) = v148;
  *(v51 + 200) = v89;
  _s3__C3KeyVMa_0(0);
  v138 = v90;
  v137 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v91 = sub_1CA94C1E8();
  v92 = sub_1CA2F864C(v91);
  v146[4] = v92;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1CA981380;
  *(v93 + 32) = v140;
  *(v93 + 40) = 0xD00000000000001BLL;
  *(v93 + 48) = 0x80000001CA9A1EB0;
  v94 = MEMORY[0x1E69E6158];
  v95 = v139;
  *(v93 + 64) = MEMORY[0x1E69E6158];
  *(v93 + 72) = v95;
  *(v93 + 80) = 0x6C61636F4CLL;
  *(v93 + 88) = 0xE500000000000000;
  *(v93 + 104) = v94;
  *(v93 + 112) = @"DisallowedVariableTypes";
  v96 = v94;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v144 = v97;
  *(v93 + 120) = &unk_1F4A0C090;
  v98 = v135;
  *(v93 + 144) = v97;
  *(v93 + 152) = v98;
  strcpy((v93 + 160), "WFMediaRoute");
  *(v93 + 173) = 0;
  *(v93 + 174) = -5120;
  v99 = v136;
  *(v93 + 184) = v96;
  *(v93 + 192) = v99;
  v100 = @"DisallowedVariableTypes";
  v101 = sub_1CA94C438("Device (WFMediaRoute)", 21);
  v140 = v102;
  v103 = sub_1CA94C438("Device", 6);
  v105 = v104;
  v141 = &v134;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v134 - v151;
  sub_1CA948D98();
  v107 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v134 - v149;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v101, v140, v103, v105, 0, 0, v106, v108);
  *(v93 + 224) = v148;
  *(v93 + 200) = v110;
  v111 = sub_1CA94C368();
  *(v93 + 264) = MEMORY[0x1E69E6158];
  *(v93 + 232) = v111;
  *(v93 + 240) = 0x746E696F70646E45;
  *(v93 + 248) = 0xE800000000000000;
  v112 = sub_1CA94C1E8();
  v113 = sub_1CA2F864C(v112);
  v114 = v146;
  v146[5] = v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v116 = v142;
  *(v142 + 320) = v114;
  v116[43] = v115;
  v116[44] = @"ParameterSummary";
  v117 = @"ParameterSummary";
  v118 = sub_1CA94C438("Skip back to the ${WFSkipBackBehavior} on ${WFMediaRoute} (Parameter Summary)", 77);
  v120 = v119;
  v121 = sub_1CA94C438("Skip back to the ${WFSkipBackBehavior} on ${WFMediaRoute}", 57);
  v123 = v122;
  v148 = &v134;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v134 - v151;
  sub_1CA948D98();
  v125 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v134 - v149;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v118, v120, v121, v123, 0, 0, v124, v126);
  v129 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v130 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v116[45] = v129;
  v116[48] = v130;
  v116[49] = @"RequiredResources";
  v116[53] = v144;
  v116[50] = &unk_1F4A0C0C0;
  v131 = @"RequiredResources";
  v132 = sub_1CA94C368();
  v116[58] = MEMORY[0x1E69E6158];
  v116[54] = v132;
  v116[55] = 1801675074;
  v116[56] = 0xE400000000000000;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA69002C()
{
  v130 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DF450;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("current|song|ipod|track|music|itunes|library|listening|playing", 62);
  v6 = v5;
  v7 = sub_1CA94C438("current|song|ipod|track|music|itunes|library|listening|playing", 62);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v137 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v138 = v11;
  v12 = v122 - v137;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v136 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v135 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v133 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v122 - v133;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v134 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v131 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Returns the song that is currently playing in the Music app, if any.", 68);
  v128 = v27;
  v28 = sub_1CA94C438("Returns the song that is currently playing in the Music app, if any.", 68);
  v30 = v29;
  v129 = v122;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v122 - v137;
  sub_1CA948D98();
  v32 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v122 - v133;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v128, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v134;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v131;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 0;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  *(inited + 240) = 1;
  *(inited + 264) = v38;
  *(inited + 272) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"LocallyProcessesData";
  v41 = @"Name";
  v42 = sub_1CA94C438("Get Current Song (Action Name)", 30);
  v44 = v43;
  v45 = sub_1CA94C438("Get Current Song", 16);
  v47 = v46;
  v131 = v122;
  MEMORY[0x1EEE9AC00](v45);
  v48 = v122 - v137;
  sub_1CA948D98();
  v49 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = v122 - v133;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v42, v44, v45, v47, 0, 0, v48, v50);
  *(inited + 304) = v134;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x75736F6C63736944;
  *(v52 + 40) = 0xEF6C6576654C6572;
  *(v52 + 48) = 0x63696C627550;
  *(v52 + 56) = 0xE600000000000000;
  *(v52 + 72) = MEMORY[0x1E69E6158];
  *(v52 + 80) = 0x656C7069746C754DLL;
  *(v52 + 88) = 0xE800000000000000;
  *(v52 + 96) = 0;
  *(v52 + 120) = MEMORY[0x1E69E6370];
  *(v52 + 128) = 0x614E74757074754FLL;
  *(v52 + 136) = 0xEA0000000000656DLL;
  v53 = @"Output";
  v54 = sub_1CA94C438("Current Song (Default Output Name)", 34);
  v129 = v55;
  v56 = sub_1CA94C438("Current Song", 12);
  v58 = v57;
  v131 = v122;
  MEMORY[0x1EEE9AC00](v56);
  v59 = v122 - v137;
  sub_1CA948D98();
  v60 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = v122 - v133;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v52 + 144) = sub_1CA2F9F14(v54, v129, v56, v58, 0, 0, v59, v61);
  *(v52 + 168) = v134;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 184) = 0xE500000000000000;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v129;
  *(v52 + 192) = &unk_1F4A0C130;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_1CA9813B0;
  v127 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_1CA981370;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000016;
  *(v66 + 48) = 0x80000001CA99C4A0;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"DefaultValue";
  strcpy((v66 + 80), "Current Song");
  *(v66 + 93) = 0;
  *(v66 + 94) = -5120;
  *(v66 + 104) = v63;
  *(v66 + 112) = @"Items";
  v131 = swift_allocObject();
  *(v131 + 1) = xmmword_1CA981360;
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"DefaultValue";
  v70 = @"Items";
  v71 = sub_1CA94C438("Current Song (Subject)", 22);
  v124 = v72;
  v125 = v71;
  v73 = sub_1CA94C438("Current Song", 12);
  v123 = v74;
  v126 = v122;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v122 - v137;
  sub_1CA948D98();
  v76 = v136;
  v77 = [v136 bundleURL];
  v122[1] = v122;
  MEMORY[0x1EEE9AC00](v77);
  v132 = inited;
  v78 = v133;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v125, v124, v73, v123, 0, 0, v75, v122 - v78);
  v131[4] = v80;
  v81 = sub_1CA94C438("Current Playback Time (Subject)", 31);
  v124 = v82;
  v125 = v81;
  v123 = sub_1CA94C438("Current Playback Time", 21);
  v84 = v83;
  v126 = v122;
  MEMORY[0x1EEE9AC00](v123);
  v85 = v137;
  sub_1CA948D98();
  v86 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v125, v124, v123, v84, 0, 0, v122 - v85, v122 - v78);
  v89 = v131;
  v131[5] = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v66 + 120) = v89;
  *(v66 + 144) = v90;
  *(v66 + 152) = @"Key";
  *(v66 + 160) = 0x7463656A627553;
  *(v66 + 168) = 0xE700000000000000;
  *(v66 + 184) = MEMORY[0x1E69E6158];
  *(v66 + 192) = @"Label";
  v91 = @"Key";
  v92 = @"Label";
  v93 = sub_1CA94C438("Get (Subject)", 13);
  v126 = v94;
  v95 = sub_1CA94C438("Get", 3);
  v97 = v96;
  v131 = v122;
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948D98();
  v98 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v93, v126, v95, v97, 0, 0, v122 - v85, v122 - v78);
  *(v66 + 224) = v134;
  *(v66 + 200) = v100;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v101 = sub_1CA94C1E8();
  v102 = sub_1CA2F864C(v101);
  v103 = v128;
  *(v128 + 32) = v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v105 = v132;
  v132[45] = v103;
  v105[48] = v104;
  v105[49] = @"ParameterSummary";
  v106 = @"ParameterSummary";
  v107 = sub_1CA94C438("Get ${Subject} (Parameter Summary)", 34);
  v109 = v108;
  v110 = sub_1CA94C438("Get ${Subject}", 14);
  v112 = v111;
  v134 = v122;
  MEMORY[0x1EEE9AC00](v110);
  v113 = v122 - v137;
  sub_1CA948D98();
  v114 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v107, v109, v110, v112, 0, 0, v113, v122 - v78);
  v117 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v118 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v119 = v132;
  v132[50] = v117;
  v119[53] = v118;
  v119[54] = @"RequiredResources";
  v119[58] = v129;
  v119[55] = &unk_1F4A0C170;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v120 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA690FD0()
{
  v0 = sub_1CA949D18();
  v123 = *(v0 - 8);
  v124 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v122 = v114 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x6F72447269414657;
  *(inited + 48) = 0xEF6E6F6974634170;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v6 = sub_1CA94C438("airdrop|file|document|send|share", 32);
  v8 = v7;
  v9 = sub_1CA94C438("airdrop|file|document|send|share", 32);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v131 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v132 = v13;
  v14 = v114 - v131;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v130 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v128 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v129 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v114 - v129;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v127 = v21;
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"Description";
  v126 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  v121 = xmmword_1CA981310;
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438("Prompts to share the specified content via AirDrop.", 51);
  v119 = v26;
  v27 = sub_1CA94C438("Prompts to share the specified content via AirDrop.", 51);
  v29 = v28;
  v120 = v114;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v114 - v131;
  sub_1CA948D98();
  v31 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = v114 - v129;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v25, v119, v27, v29, 0, 0, v30, v32);
  *(v22 + 64) = v127;
  *(v22 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v126;
  *(inited + 120) = sub_1CA6B3784(v35);
  *(inited + 144) = v36;
  *(inited + 152) = @"DisabledOnPlatforms";
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A0C1B0;
  *(inited + 184) = v37;
  *(inited + 192) = @"IconName";
  v38 = v37;
  v126 = v37;
  *(inited + 200) = 0x706F7244726941;
  *(inited + 208) = 0xE700000000000000;
  v39 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x7475706E494657;
  *(v40 + 104) = 0xE700000000000000;
  *(v40 + 120) = v39;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 216) = v38;
  *(v40 + 184) = 0xE500000000000000;
  *(v40 + 192) = &unk_1F4A0C1E0;
  v42 = @"DisabledOnPlatforms";
  v43 = @"IconName";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v45;
  *(inited + 264) = v46;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v41;
  *(inited + 312) = @"Name";
  v47 = @"InputPassthrough";
  v48 = @"Name";
  v49 = sub_1CA94C438("AirDrop (Action Name)", 21);
  v51 = v50;
  v52 = sub_1CA94C438("AirDrop", 7);
  v54 = v53;
  v120 = v114;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v114 - v131;
  sub_1CA948D98();
  v56 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v114 - v129;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  *(inited + 344) = v127;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v120 = swift_allocObject();
  *(v120 + 1) = xmmword_1CA9813B0;
  v119 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CA981370;
  *(v59 + 32) = @"Class";
  *(v59 + 40) = 0xD000000000000019;
  *(v59 + 48) = 0x80000001CA99B030;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 64) = MEMORY[0x1E69E6158];
  *(v59 + 72) = @"Key";
  *(v59 + 80) = 0x7475706E494657;
  *(v59 + 88) = 0xE700000000000000;
  *(v59 + 104) = v60;
  *(v59 + 112) = @"Label";
  v61 = @"Parameters";
  v62 = @"Class";
  v63 = @"Key";
  v64 = @"Label";
  v65 = sub_1CA94C438("Content (WFInput)", 17);
  v116 = v66;
  v117 = v65;
  v67 = sub_1CA94C438("Content", 7);
  v115 = v68;
  v118 = v114;
  MEMORY[0x1EEE9AC00](v67);
  v69 = v114 - v131;
  sub_1CA948D98();
  v70 = v130;
  v71 = [v130 bundleURL];
  v114[1] = v114;
  MEMORY[0x1EEE9AC00](v71);
  v72 = v129;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 120) = sub_1CA2F9F14(v117, v116, v67, v115, 0, 0, v69, v114 - v72);
  v74 = v127;
  *(v59 + 144) = v127;
  *(v59 + 152) = @"Placeholder";
  v75 = @"Placeholder";
  v76 = sub_1CA94C438("Content (WFInput)", 17);
  v116 = v77;
  v117 = v76;
  v115 = sub_1CA94C438("Content", 7);
  v79 = v78;
  v118 = v114;
  MEMORY[0x1EEE9AC00](v115);
  v80 = v114 - v131;
  sub_1CA948D98();
  v81 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 160) = sub_1CA2F9F14(v117, v116, v115, v79, 0, 0, v80, v114 - v72);
  *(v59 + 184) = v74;
  *(v59 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v83 = swift_allocObject();
  *(v83 + 16) = v121;
  v84 = @"PreferredTypes";
  v85 = v122;
  sub_1CA949CA8();
  v86 = sub_1CA949C68();
  v88 = v87;
  (*(v123 + 8))(v85, v124);
  *(v83 + 32) = v86;
  *(v83 + 40) = v88;
  *(v59 + 224) = v126;
  *(v59 + 200) = v83;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v89 = sub_1CA94C1E8();
  v90 = sub_1CA2F864C(v89);
  v91 = v120;
  v120[4] = v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v91;
  *(inited + 384) = v92;
  *(inited + 392) = @"ParameterSummary";
  v93 = @"ParameterSummary";
  v94 = sub_1CA94C438("AirDrop ${WFInput} (Parameter Summary)", 38);
  v96 = v95;
  v97 = sub_1CA94C438("AirDrop ${WFInput}", 18);
  v99 = v98;
  v127 = v114;
  MEMORY[0x1EEE9AC00](v97);
  v100 = v114 - v131;
  sub_1CA948D98();
  v101 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = v114 - v129;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  v105 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v105;
  *(inited + 424) = v106;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F4A0C210;
  v107 = v126;
  *(inited + 464) = v126;
  *(inited + 472) = @"UserInterfaceClasses";
  v108 = @"RequiredResources";
  v109 = @"UserInterfaceClasses";
  v110 = sub_1CA94C1E8();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 480) = v110;
  *(inited + 504) = v111;
  *(inited + 512) = @"UserInterfaces";
  *(inited + 544) = v107;
  *(inited + 520) = &unk_1F4A0C2A0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v112 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA691E3C()
{
  v56 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9DF750;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v55 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v54 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v9 = sub_1CA94C438("Opens the Quick Reminder view.", 30);
  v57 = v10;
  v58 = v9;
  v11 = sub_1CA94C438("Opens the Quick Reminder view.", 30);
  v49 = v12;
  v50 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v53 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v49 - v53;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v51 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v49 - v51;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v58, v57, v50, v49, 0, 0, v15, v19);
  v58 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v58;
  *(v6 + 40) = v21;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v22 = sub_1CA94C1E8();
  v23 = v54;
  *(inited + 120) = sub_1CA6B3784(v22);
  *(inited + 144) = v23;
  *(inited + 152) = @"Discoverable";
  v24 = MEMORY[0x1E69E6370];
  *(inited + 160) = 0;
  *(inited + 184) = v24;
  *(inited + 192) = @"InputPassthrough";
  *(inited + 200) = 0;
  *(inited + 224) = v24;
  *(inited + 232) = @"Name";
  v25 = @"Discoverable";
  v26 = @"InputPassthrough";
  v27 = @"Name";
  v28 = sub_1CA94C438("Show Quick Reminder (Action Name)", 33);
  v30 = v29;
  v31 = sub_1CA94C438("Show Quick Reminder", 19);
  v33 = v32;
  v57 = &v49;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v49 - v53;
  sub_1CA948D98();
  v35 = [v52 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v49 - v51;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v28, v30, v31, v33, 0, 0, v34, v36);
  v39 = v58;
  *(inited + 240) = v38;
  *(inited + 264) = v39;
  *(inited + 272) = @"Output";
  v40 = @"Output";
  *(inited + 280) = sub_1CA94C1E8();
  v41 = v55;
  *(inited + 304) = v55;
  *(inited + 312) = @"Parameters";
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 320) = MEMORY[0x1E69E7CC0];
  *(inited + 344) = v42;
  *(inited + 352) = @"RequiredResources";
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 360) = &unk_1F4A0C350;
  *(inited + 384) = v43;
  *(inited + 392) = @"UserInterfaceClasses";
  v44 = @"Parameters";
  v45 = @"RequiredResources";
  v46 = @"UserInterfaceClasses";
  v47 = sub_1CA94C1E8();
  *(inited + 424) = v41;
  *(inited + 400) = v47;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA692498()
{
  v127 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DF7F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("dmg", 3);
  v6 = v5;
  v7 = sub_1CA94C438("dmg", 3);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v134 = v11;
  v135 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v121 - v135;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v133 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v131 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v132 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v121 - v132;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v129 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  *&v128 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v26 = sub_1CA94C438("The mounted volume", 18);
  v124 = v27;
  *&v125 = v26;
  v123 = sub_1CA94C438("The mounted volume", 18);
  v29 = v28;
  v126 = &v121;
  MEMORY[0x1EEE9AC00](v123);
  v30 = &v121 - v135;
  sub_1CA948D98();
  v31 = v133;
  v32 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v130 = inited;
  v33 = v132;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v125, v124, v123, v29, 0, 0, v30, &v121 - v33);
  v35 = v129;
  *(v23 + 64) = v129;
  *(v23 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v37 = sub_1CA94C438("Mounts a disk image (.dmg) file on your desktop.", 48);
  v124 = v38;
  *&v125 = v37;
  v123 = sub_1CA94C438("Mounts a disk image (.dmg) file on your desktop.", 48);
  v40 = v39;
  v126 = &v121;
  MEMORY[0x1EEE9AC00](v123);
  v41 = &v121 - v135;
  sub_1CA948D98();
  v42 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v125, v124, v123, v40, 0, 0, v41, &v121 - v33);
  *(v23 + 104) = v35;
  *(v23 + 80) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v45 = sub_1CA94C1E8();
  v46 = v128;
  v47 = sub_1CA6B3784(v45);
  v48 = v130;
  v130[20] = v47;
  v48[23] = v46;
  v48[24] = @"Input";
  *&v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v128 = xmmword_1CA981350;
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 1;
  *(v49 + 72) = v50;
  strcpy((v49 + 80), "ParameterKey");
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 96) = 0x7475706E494657;
  *(v49 + 104) = 0xE700000000000000;
  *(v49 + 120) = MEMORY[0x1E69E6158];
  *(v49 + 128) = 0x6465726975716552;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 144) = 1;
  *(v49 + 168) = v50;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v124;
  *(v49 + 192) = &unk_1F4A0C400;
  v51 = @"Input";
  v52 = sub_1CA94C1E8();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v126 = v53;
  v48[25] = v52;
  v48[28] = v53;
  v48[29] = @"Name";
  v54 = @"Name";
  v122 = sub_1CA94C438("Mount Disk Image (Action Name)", 30);
  v56 = v55;
  v57 = sub_1CA94C438("Mount Disk Image", 16);
  v59 = v58;
  v123 = &v121;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v121 - v135;
  sub_1CA948D98();
  v61 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v121 - v132;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v122, v56, v57, v59, 0, 0, v60, v62);
  v66 = v129;
  v65 = v130;
  v130[30] = v64;
  v65[33] = v66;
  v65[34] = @"Output";
  v67 = swift_initStackObject();
  *(v67 + 16) = v128;
  *(v67 + 32) = 0x75736F6C63736944;
  *(v67 + 40) = 0xEF6C6576654C6572;
  *(v67 + 48) = 0x63696C627550;
  *(v67 + 56) = 0xE600000000000000;
  *(v67 + 72) = MEMORY[0x1E69E6158];
  *(v67 + 80) = 0x656C7069746C754DLL;
  *(v67 + 88) = 0xE800000000000000;
  *(v67 + 96) = 0;
  *(v67 + 120) = MEMORY[0x1E69E6370];
  *(v67 + 128) = 0x614E74757074754FLL;
  *(v67 + 136) = 0xEA0000000000656DLL;
  v68 = @"Output";
  v69 = sub_1CA94C438("Mounted Volume (Default Output Name)", 36);
  v122 = v70;
  v123 = v69;
  v121 = sub_1CA94C438("Mounted Volume", 14);
  v72 = v71;
  *&v125 = &v121;
  MEMORY[0x1EEE9AC00](v121);
  v73 = &v121 - v135;
  sub_1CA948D98();
  v74 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = v132;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v123, v122, v121, v72, 0, 0, v73, &v121 - v75);
  v78 = v124;
  *(v67 + 144) = v77;
  *(v67 + 168) = v66;
  *(v67 + 176) = 0x7365707954;
  *(v67 + 216) = v78;
  *(v67 + 184) = 0xE500000000000000;
  *(v67 + 192) = &unk_1F4A0C430;
  v79 = MEMORY[0x1E69E6158];
  v80 = sub_1CA94C1E8();
  v81 = v130;
  v130[35] = v80;
  v81[38] = v126;
  v81[39] = @"Parameters";
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v123 = swift_allocObject();
  v125 = xmmword_1CA9813B0;
  *(v123 + 1) = xmmword_1CA9813B0;
  v122 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v82 = swift_allocObject();
  *(v82 + 16) = v128;
  *(v82 + 32) = @"Class";
  *(v82 + 40) = 0xD000000000000015;
  *(v82 + 48) = 0x80000001CA99B1E0;
  *(v82 + 64) = v79;
  *(v82 + 72) = @"FilePickerSupportedTypes";
  *(v82 + 80) = &unk_1F4A0C460;
  *(v82 + 104) = v78;
  *(v82 + 112) = @"Key";
  *(v82 + 120) = 0x7475706E494657;
  *(v82 + 128) = 0xE700000000000000;
  *(v82 + 144) = v79;
  *(v82 + 152) = @"Label";
  v83 = @"Parameters";
  v84 = @"Class";
  v85 = @"FilePickerSupportedTypes";
  v86 = @"Key";
  v87 = @"Label";
  v88 = sub_1CA94C438("File (WFInput)", 14);
  v124 = v89;
  v90 = sub_1CA94C438("File", 4);
  v92 = v91;
  *&v128 = &v121;
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v121 - v135;
  sub_1CA948D98();
  v94 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v88, v124, v90, v92, 0, 0, v93, &v121 - v75);
  *(v82 + 184) = v129;
  *(v82 + 160) = v96;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v97 = sub_1CA94C1E8();
  v98 = sub_1CA2F864C(v97);
  v99 = v123;
  v123[4] = v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v101 = v130;
  v130[40] = v99;
  v101[43] = v100;
  v101[44] = @"ParameterSummary";
  v102 = @"ParameterSummary";
  v103 = sub_1CA94C438("Mount disk image ${WFInput} (Parameter Summary)", 47);
  v105 = v104;
  v106 = sub_1CA94C438("Mount disk image ${WFInput}", 27);
  v108 = v107;
  v129 = &v121;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v121 - v135;
  sub_1CA948D98();
  v110 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v121 - v132;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, v111);
  v114 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v115 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v101[45] = v114;
  v101[48] = v115;
  v101[49] = @"RequiredResources";
  v116 = swift_allocObject();
  *(v116 + 16) = v125;
  v136 = 2;
  v137 = 0;
  v117 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v118 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v136);
  *(v116 + 32) = v119;
  v101[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v101[50] = v116;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA693404()
{
  v537 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9DF950;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v536 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v541 = inited;
  v559 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  v540 = xmmword_1CA97EDF0;
  *(v6 + 16) = xmmword_1CA97EDF0;
  *(v6 + 32) = @"DescriptionResult";
  v7 = @"Description";
  v8 = @"DescriptionResult";
  v9 = sub_1CA94C438("The URL of the new blog post", 28);
  v11 = v10;
  v12 = sub_1CA94C438("The URL of the new blog post", 28);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v561 = v16;
  v564 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v524 - v564;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v565 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v563 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v562 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v524 - v562;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 40) = v23;
  *(v6 + 64) = v24;
  *(v6 + 72) = @"DescriptionSummary";
  v560 = v24;
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Posts the input to a WordPress blog as a new post or page.", 58);
  v557 = v27;
  v28 = sub_1CA94C438("Posts the input to a WordPress blog as a new post or page.", 58);
  v30 = v29;
  v558 = v524;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v524 - v564;
  sub_1CA948D98();
  v32 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v524 - v562;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v557, v28, v30, 0, 0, v31, v33);
  *(v6 + 104) = v24;
  *(v6 + 80) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v559;
  v38 = sub_1CA6B3784(v36);
  v39 = v541;
  v541[15] = v38;
  v39[18] = v37;
  v39[19] = @"Input";
  v553 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v547 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x7475706E494657;
  *(v40 + 104) = 0xE700000000000000;
  *(v40 + 120) = MEMORY[0x1E69E6158];
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  *&v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v554;
  *(v40 + 192) = &unk_1F4A0C510;
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v559 = v44;
  v39[20] = v43;
  v39[23] = v44;
  v39[24] = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438("Post to WordPress (Action Name)", 31);
  v556 = v47;
  v557 = v46;
  v48 = sub_1CA94C438("Post to WordPress", 17);
  v50 = v49;
  v558 = v524;
  MEMORY[0x1EEE9AC00](v48);
  v51 = v564;
  sub_1CA948D98();
  v52 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v524 - v562;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39[25] = sub_1CA2F9F14(v557, v556, v48, v50, 0, 0, v524 - v51, v53);
  v55 = v560;
  v39[28] = v560;
  v39[29] = @"Output";
  v56 = swift_initStackObject();
  *(v56 + 16) = v547;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = MEMORY[0x1E69E6158];
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 0;
  *(v56 + 120) = MEMORY[0x1E69E6370];
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438("WordPress Post URL (Default Output Name)", 40);
  v556 = v59;
  v557 = v58;
  v60 = sub_1CA94C438("WordPress Post URL", 18);
  v555 = v61;
  v558 = v524;
  MEMORY[0x1EEE9AC00](v60);
  v62 = v524 - v51;
  sub_1CA948D98();
  v63 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v524 - v562;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 144) = sub_1CA2F9F14(v557, v556, v60, v555, 0, 0, v62, v64);
  *(v56 + 168) = v55;
  *(v56 + 176) = 0x7365707954;
  v66 = v554;
  *(v56 + 216) = v554;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 192) = &unk_1F4A0C560;
  v67 = MEMORY[0x1E69E6158];
  v39[30] = sub_1CA94C1E8();
  v39[33] = v559;
  v39[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v556 = swift_allocObject();
  *(v556 + 16) = xmmword_1CA991B70;
  v557 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  v545 = xmmword_1CA981370;
  *(v68 + 16) = xmmword_1CA981370;
  v69 = @"Parameters";
  *(v68 + 32) = sub_1CA94C368();
  *(v68 + 40) = 0xD000000000000012;
  *(v68 + 48) = 0x80000001CA99AAC0;
  *(v68 + 64) = v67;
  *(v68 + 72) = @"Class";
  *(v68 + 80) = 0xD000000000000018;
  *(v68 + 88) = 0x80000001CA9A3950;
  *(v68 + 104) = v67;
  *(v68 + 112) = @"DisallowedVariableTypes";
  *(v68 + 120) = &unk_1F4A0C590;
  *(v68 + 144) = v66;
  *(v68 + 152) = @"Key";
  *(v68 + 160) = 0x6E756F6363414657;
  *(v68 + 168) = 0xE900000000000074;
  *(v68 + 184) = v67;
  *(v68 + 192) = @"Label";
  v70 = @"Key";
  v71 = @"Label";
  v72 = @"Class";
  v73 = @"DisallowedVariableTypes";
  v74 = v70;
  v75 = v71;
  v76 = v72;
  v551 = v73;
  v550 = v74;
  v552 = v75;
  v549 = v76;
  v77 = sub_1CA94C438("Account (WFAccount)", 19);
  v79 = v78;
  v80 = sub_1CA94C438("Account", 7);
  v82 = v81;
  v559 = v524;
  MEMORY[0x1EEE9AC00](v80);
  v83 = v524 - v564;
  sub_1CA948D98();
  v84 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = v524 - v562;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v77, v79, v80, v82, 0, 0, v83, v85);
  *(v68 + 224) = v560;
  *(v68 + 200) = v87;
  _s3__C3KeyVMa_0(0);
  v559 = v88;
  v558 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v89 = sub_1CA94C1E8();
  v90 = sub_1CA2F864C(v89);
  *(v556 + 32) = v90;
  v91 = swift_allocObject();
  *(v91 + 16) = v547;
  v92 = v549;
  v93 = v550;
  *(v91 + 32) = v549;
  *(v91 + 40) = 0xD00000000000001DLL;
  v542 = 0x80000001CA99FB10;
  v543 = 0xD00000000000001DLL;
  *(v91 + 48) = 0x80000001CA99FB10;
  v94 = MEMORY[0x1E69E6158];
  v95 = v551;
  v96 = v552;
  *(v91 + 64) = MEMORY[0x1E69E6158];
  *(v91 + 72) = v95;
  *(v91 + 80) = &unk_1F4A0C5D0;
  *(v91 + 104) = v554;
  *(v91 + 112) = v93;
  *(v91 + 120) = 1735355458;
  *(v91 + 128) = 0xE400000000000000;
  *(v91 + 144) = v94;
  *(v91 + 152) = v96;
  v551 = v92;
  v550 = v93;
  *&v554 = v96;
  v97 = sub_1CA94C438("Blog (Blog)", 11);
  v99 = v98;
  v100 = sub_1CA94C438("Blog", 4);
  v102 = v101;
  v552 = v524;
  MEMORY[0x1EEE9AC00](v100);
  v103 = v524 - v564;
  sub_1CA948D98();
  v104 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = v524 - v562;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v97, v99, v100, v102, 0, 0, v103, v105);
  *(v91 + 184) = v560;
  *(v91 + 160) = v107;
  v108 = sub_1CA94C1E8();
  v109 = sub_1CA2F864C(v108);
  *(v556 + 40) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = v545;
  v544 = 0xD000000000000014;
  v112 = v550;
  v111 = v551;
  *(v110 + 32) = v551;
  *(v110 + 40) = 0xD000000000000014;
  v539 = 0x80000001CA99B500;
  *(v110 + 48) = 0x80000001CA99B500;
  v113 = MEMORY[0x1E69E6158];
  *(v110 + 64) = MEMORY[0x1E69E6158];
  *(v110 + 72) = v112;
  *(v110 + 80) = 0x656C746954;
  *(v110 + 88) = 0xE500000000000000;
  v114 = v554;
  *(v110 + 104) = v113;
  *(v110 + 112) = v114;
  v549 = v111;
  v548 = v112;
  v550 = v114;
  v115 = sub_1CA94C438("Title (Title)", 13);
  v551 = v116;
  v552 = v115;
  *&v546 = sub_1CA94C438("Title", 5);
  v118 = v117;
  *&v554 = v524;
  MEMORY[0x1EEE9AC00](v546);
  v119 = v524 - v564;
  sub_1CA948D98();
  v120 = v565;
  v121 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = v562;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v110 + 120) = sub_1CA2F9F14(v552, v551, v546, v118, 0, 0, v119, v524 - v122);
  v124 = v560;
  *(v110 + 144) = v560;
  *(v110 + 152) = @"Placeholder";
  v552 = @"Placeholder";
  v551 = sub_1CA94C438("Title (Title)", 13);
  *&v546 = v125;
  v126 = sub_1CA94C438("Title", 5);
  v128 = v127;
  *&v554 = v524;
  MEMORY[0x1EEE9AC00](v126);
  v129 = v524 - v564;
  sub_1CA948D98();
  v130 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v110 + 160) = sub_1CA2F9F14(v551, v546, v126, v128, 0, 0, v129, v524 - v122);
  *(v110 + 184) = v124;
  *(v110 + 192) = @"TextAlignment";
  v132 = MEMORY[0x1E69E6158];
  *(v110 + 224) = MEMORY[0x1E69E6158];
  *(v110 + 200) = 0x7468676952;
  *(v110 + 208) = 0xE500000000000000;
  v551 = @"TextAlignment";
  v133 = sub_1CA94C1E8();
  v134 = sub_1CA2F864C(v133);
  *(v556 + 48) = v134;
  v135 = swift_allocObject();
  v554 = xmmword_1CA9813C0;
  *(v135 + 16) = xmmword_1CA9813C0;
  v137 = v548;
  v136 = v549;
  v138 = v542;
  v139 = v543;
  *(v135 + 32) = v549;
  *(v135 + 40) = v139;
  *(v135 + 48) = v138;
  *(v135 + 64) = v132;
  *(v135 + 72) = v137;
  *(v135 + 80) = 1701869908;
  *(v135 + 88) = 0xE400000000000000;
  *(v135 + 104) = v132;
  v140 = v550;
  *(v135 + 112) = v550;
  v549 = v136;
  v548 = v137;
  v550 = v140;
  v141 = sub_1CA94C438("Type (Type)", 11);
  v143 = v142;
  v144 = sub_1CA94C438("Type", 4);
  v146 = v145;
  *&v546 = v524;
  MEMORY[0x1EEE9AC00](v144);
  v147 = v524 - v564;
  sub_1CA948D98();
  v148 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = v524 - v562;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v141, v143, v144, v146, 0, 0, v147, v149);
  *(v135 + 144) = v560;
  *(v135 + 120) = v151;
  v152 = sub_1CA94C1E8();
  v153 = sub_1CA2F864C(v152);
  *(v556 + 56) = v153;
  v154 = swift_allocObject();
  *(v154 + 16) = v554;
  v156 = v548;
  v155 = v549;
  v157 = v542;
  v158 = v543;
  *(v154 + 32) = v549;
  *(v154 + 40) = v158;
  *(v154 + 48) = v157;
  v159 = MEMORY[0x1E69E6158];
  *(v154 + 64) = MEMORY[0x1E69E6158];
  *(v154 + 72) = v156;
  *(v154 + 80) = 0x74616D726F46;
  *(v154 + 88) = 0xE600000000000000;
  v160 = v550;
  *(v154 + 104) = v159;
  *(v154 + 112) = v160;
  v549 = v155;
  v548 = v156;
  v550 = v160;
  v161 = sub_1CA94C438("Format (Format)", 15);
  v538 = v162;
  v163 = sub_1CA94C438("Format", 6);
  v165 = v164;
  *&v546 = v524;
  MEMORY[0x1EEE9AC00](v163);
  v166 = v524 - v564;
  sub_1CA948D98();
  v167 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  v168 = v524 - v562;
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v170 = sub_1CA2F9F14(v161, v538, v163, v165, 0, 0, v166, v168);
  *(v154 + 144) = v560;
  *(v154 + 120) = v170;
  v171 = sub_1CA94C1E8();
  v172 = sub_1CA2F864C(v171);
  v173 = v556;
  *(v556 + 64) = v172;
  v174 = swift_allocObject();
  *(v174 + 16) = v554;
  v176 = v548;
  v175 = v549;
  v177 = v542;
  v178 = v543;
  *(v174 + 32) = v549;
  *(v174 + 40) = v178;
  *(v174 + 48) = v177;
  v179 = MEMORY[0x1E69E6158];
  *(v174 + 64) = MEMORY[0x1E69E6158];
  *(v174 + 72) = v176;
  *(v174 + 80) = 0x737574617453;
  *(v174 + 88) = 0xE600000000000000;
  v180 = v550;
  *(v174 + 104) = v179;
  *(v174 + 112) = v180;
  *&v546 = v175;
  v538 = v176;
  v548 = v180;
  v181 = sub_1CA94C438("Status (Status)", 15);
  v549 = v182;
  v183 = sub_1CA94C438("Status", 6);
  v185 = v184;
  v550 = v524;
  MEMORY[0x1EEE9AC00](v183);
  v186 = v524 - v564;
  sub_1CA948D98();
  v187 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  v188 = v524 - v562;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v190 = sub_1CA2F9F14(v181, v549, v183, v185, 0, 0, v186, v188);
  *(v174 + 144) = v560;
  *(v174 + 120) = v190;
  v191 = sub_1CA94C1E8();
  *(v173 + 72) = sub_1CA2F864C(v191);
  v192 = swift_allocObject();
  *(v192 + 16) = v545;
  v193 = v546;
  *(v192 + 32) = v546;
  *(v192 + 40) = 0xD00000000000001ALL;
  v549 = 0x80000001CA9DFAC0;
  v550 = 0xD00000000000001ALL;
  *(v192 + 48) = 0x80000001CA9DFAC0;
  v194 = MEMORY[0x1E69E6158];
  v195 = v538;
  *(v192 + 64) = MEMORY[0x1E69E6158];
  *(v192 + 72) = v195;
  *(v192 + 80) = 0x69726F6765746143;
  *(v192 + 88) = 0xEA00000000007365;
  v196 = v548;
  *(v192 + 104) = v194;
  *(v192 + 112) = v196;
  *&v546 = v193;
  v538 = v195;
  v548 = v196;
  v534 = sub_1CA94C438("Categories (Categories)", 23);
  *&v533 = v197;
  v198 = sub_1CA94C438("Categories", 10);
  v532 = v199;
  v535 = v524;
  MEMORY[0x1EEE9AC00](v198);
  v200 = v524 - v564;
  sub_1CA948D98();
  v201 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  v202 = v562;
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v192 + 120) = sub_1CA2F9F14(v534, v533, v198, v532, 0, 0, v200, v524 - v202);
  v204 = v560;
  v205 = v552;
  *(v192 + 144) = v560;
  *(v192 + 152) = v205;
  v552 = v205;
  v534 = sub_1CA94C438("Finance, News (Categories)", 26);
  *&v533 = v206;
  v207 = sub_1CA94C438("Finance, News", 13);
  v209 = v208;
  v535 = v524;
  MEMORY[0x1EEE9AC00](v207);
  v210 = v524 - v564;
  sub_1CA948D98();
  v211 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v192 + 160) = sub_1CA2F9F14(v534, v533, v207, v209, 0, 0, v210, v524 - v202);
  v213 = v551;
  *(v192 + 184) = v204;
  *(v192 + 192) = v213;
  v214 = MEMORY[0x1E69E6158];
  *(v192 + 224) = MEMORY[0x1E69E6158];
  *(v192 + 200) = 0x7468676952;
  *(v192 + 208) = 0xE500000000000000;
  v551 = v213;
  v215 = sub_1CA94C1E8();
  v216 = sub_1CA2F864C(v215);
  *(v556 + 80) = v216;
  v217 = swift_allocObject();
  *(v217 + 16) = v545;
  v218 = v546;
  v219 = v549;
  v220 = v550;
  *(v217 + 32) = v546;
  *(v217 + 40) = v220;
  *(v217 + 48) = v219;
  v221 = v538;
  *(v217 + 64) = v214;
  *(v217 + 72) = v221;
  *(v217 + 80) = 1936154964;
  *(v217 + 88) = 0xE400000000000000;
  *(v217 + 104) = v214;
  v222 = v548;
  *(v217 + 112) = v548;
  v549 = v218;
  *&v546 = v221;
  v550 = v222;
  v538 = sub_1CA94C438("Tags (Tags)", 11);
  v535 = v223;
  v534 = sub_1CA94C438("Tags", 4);
  v225 = v224;
  v548 = v524;
  MEMORY[0x1EEE9AC00](v534);
  v226 = v524 - v564;
  sub_1CA948D98();
  v227 = v565;
  v228 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  v229 = v524 - v562;
  sub_1CA948B68();

  v230 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v217 + 120) = sub_1CA2F9F14(v538, v535, v534, v225, 0, 0, v226, v229);
  v231 = v560;
  v232 = v552;
  *(v217 + 144) = v560;
  *(v217 + 152) = v232;
  v534 = v232;
  v548 = sub_1CA94C438("stock market, trends (Tags)", 27);
  v538 = v233;
  v234 = sub_1CA94C438("stock market, trends", 20);
  v236 = v235;
  v552 = v524;
  MEMORY[0x1EEE9AC00](v234);
  v237 = v524 - v564;
  sub_1CA948D98();
  v238 = [v227 bundleURL];
  MEMORY[0x1EEE9AC00](v238);
  v239 = v524 - v562;
  sub_1CA948B68();

  v240 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v241 = sub_1CA2F9F14(v548, v538, v234, v236, 0, 0, v237, v239);
  v242 = v551;
  *(v217 + 160) = v241;
  *(v217 + 184) = v231;
  *(v217 + 192) = v242;
  v243 = MEMORY[0x1E69E6158];
  *(v217 + 224) = MEMORY[0x1E69E6158];
  *(v217 + 200) = 0x7468676952;
  *(v217 + 208) = 0xE500000000000000;
  v538 = v242;
  v244 = sub_1CA94C1E8();
  v245 = sub_1CA2F864C(v244);
  *(v556 + 88) = v245;
  v246 = swift_allocObject();
  *(v246 + 16) = v554;
  v535 = 0x80000001CA9B2600;
  v247 = v549;
  v248 = v544;
  *(v246 + 32) = v549;
  *(v246 + 40) = v248;
  *(v246 + 48) = 0x80000001CA9B2600;
  v249 = v546;
  *(v246 + 64) = v243;
  *(v246 + 72) = v249;
  *(v246 + 80) = 0x6465636E61766441;
  *(v246 + 88) = 0xE800000000000000;
  *(v246 + 104) = v243;
  v250 = v550;
  *(v246 + 112) = v550;
  v551 = v247;
  v549 = v249;
  v552 = v250;
  v251 = sub_1CA94C438("Advanced (Advanced)", 19);
  v548 = v252;
  v253 = sub_1CA94C438("Advanced", 8);
  v255 = v254;
  v550 = v524;
  MEMORY[0x1EEE9AC00](v253);
  v256 = v524 - v564;
  sub_1CA948D98();
  v257 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v257);
  v258 = v524 - v562;
  sub_1CA948B68();

  v259 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v260 = sub_1CA2F9F14(v251, v548, v253, v255, 0, 0, v256, v258);
  *(v246 + 144) = v560;
  *(v246 + 120) = v260;
  v261 = sub_1CA94C1E8();
  v262 = sub_1CA2F864C(v261);
  *(v556 + 96) = v262;
  v263 = swift_allocObject();
  *(v263 + 16) = v547;
  v264 = v551;
  *(v263 + 32) = v551;
  *(v263 + 40) = 0xD000000000000011;
  *(v263 + 48) = 0x80000001CA99E620;
  v265 = MEMORY[0x1E69E6158];
  v266 = v549;
  *(v263 + 64) = MEMORY[0x1E69E6158];
  *(v263 + 72) = v266;
  strcpy((v263 + 80), "AllowComments");
  *(v263 + 94) = -4864;
  v267 = v552;
  *(v263 + 104) = v265;
  *(v263 + 112) = v267;
  v532 = v264;
  v530 = v266;
  v531 = v267;
  v268 = sub_1CA94C438("Allow Comments (AllowComments)", 30);
  v270 = v269;
  v271 = sub_1CA94C438("Allow Comments", 14);
  v273 = v272;
  v552 = v524;
  MEMORY[0x1EEE9AC00](v271);
  v274 = v524 - v564;
  sub_1CA948D98();
  v275 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v275);
  v276 = v524 - v562;
  sub_1CA948B68();

  v277 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v263 + 120) = sub_1CA2F9F14(v268, v270, v271, v273, 0, 0, v274, v276);
  *(v263 + 144) = v560;
  *(v263 + 152) = @"RequiredResources";
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v278 = swift_allocObject();
  v546 = xmmword_1CA981310;
  *(v278 + 16) = xmmword_1CA981310;
  v279 = swift_allocObject();
  *(v279 + 16) = v554;
  strcpy((v279 + 32), "WFParameterKey");
  *(v279 + 47) = -18;
  *(v279 + 48) = 0x6465636E61766441;
  *(v279 + 56) = 0xE800000000000000;
  v550 = 0x80000001CA993570;
  v280 = MEMORY[0x1E69E6158];
  *(v279 + 72) = MEMORY[0x1E69E6158];
  *(v279 + 80) = 0xD000000000000010;
  *(v279 + 88) = 0x80000001CA993570;
  *(v279 + 96) = 1;
  *(v279 + 120) = MEMORY[0x1E69E6370];
  *(v279 + 128) = 0x72756F7365524657;
  *(v279 + 168) = v280;
  v548 = 0xD00000000000001BLL;
  v549 = 0x80000001CA993590;
  *(v279 + 136) = 0xEF7373616C436563;
  *(v279 + 144) = 0xD00000000000001BLL;
  *(v279 + 152) = 0x80000001CA993590;
  v529 = @"RequiredResources";
  *(v278 + 32) = sub_1CA94C1E8();
  v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v263 + 184) = v551;
  *(v263 + 160) = v278;
  v281 = sub_1CA94C1E8();
  v282 = sub_1CA2F864C(v281);
  *(v556 + 104) = v282;
  v283 = swift_allocObject();
  v533 = xmmword_1CA981380;
  *(v283 + 16) = xmmword_1CA981380;
  v285 = v531;
  v284 = v532;
  v286 = v544;
  *(v283 + 32) = v532;
  *(v283 + 40) = v286;
  *(v283 + 48) = v539;
  v287 = v530;
  *(v283 + 64) = v280;
  *(v283 + 72) = v287;
  *(v283 + 80) = 1735748691;
  *(v283 + 88) = 0xE400000000000000;
  *(v283 + 104) = v280;
  *(v283 + 112) = v285;
  v532 = v284;
  v530 = v287;
  v531 = v285;
  v288 = sub_1CA94C438("Slug (Slug)", 11);
  v526 = v289;
  v527 = v288;
  v525 = sub_1CA94C438("Slug", 4);
  v291 = v290;
  v528 = v524;
  MEMORY[0x1EEE9AC00](v525);
  v292 = v564;
  sub_1CA948D98();
  v293 = v565;
  v294 = [v565 bundleURL];
  v524[1] = v524;
  MEMORY[0x1EEE9AC00](v294);
  v295 = v562;
  sub_1CA948B68();

  v296 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v283 + 120) = sub_1CA2F9F14(v527, v526, v525, v291, 0, 0, v524 - v292, v524 - v295);
  v297 = v560;
  v298 = v534;
  *(v283 + 144) = v560;
  *(v283 + 152) = v298;
  v534 = v298;
  v299 = sub_1CA94C438("quarterly-results (Slug)", 24);
  v526 = v300;
  v527 = v299;
  v301 = sub_1CA94C438("quarterly-results", 17);
  v303 = v302;
  v528 = v524;
  MEMORY[0x1EEE9AC00](v301);
  sub_1CA948D98();
  v304 = [v293 bundleURL];
  MEMORY[0x1EEE9AC00](v304);
  sub_1CA948B68();

  v305 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v283 + 160) = sub_1CA2F9F14(v527, v526, v301, v303, 0, 0, v524 - v292, v524 - v295);
  *(v283 + 184) = v297;
  v306 = v529;
  *(v283 + 192) = v529;
  v307 = swift_allocObject();
  *(v307 + 16) = v546;
  v308 = swift_allocObject();
  *(v308 + 16) = v554;
  strcpy((v308 + 32), "WFParameterKey");
  *(v308 + 47) = -18;
  *(v308 + 48) = 0x6465636E61766441;
  *(v308 + 56) = 0xE800000000000000;
  v309 = MEMORY[0x1E69E6158];
  *(v308 + 72) = MEMORY[0x1E69E6158];
  *(v308 + 80) = 0xD000000000000010;
  *(v308 + 88) = v550;
  *(v308 + 96) = 1;
  *(v308 + 120) = MEMORY[0x1E69E6370];
  *(v308 + 128) = 0x72756F7365524657;
  *(v308 + 168) = v309;
  *(v308 + 136) = 0xEF7373616C436563;
  v310 = v549;
  *(v308 + 144) = v548;
  *(v308 + 152) = v310;
  v529 = v306;
  *(v307 + 32) = sub_1CA94C1E8();
  *(v283 + 200) = v307;
  v311 = v538;
  *(v283 + 224) = v551;
  *(v283 + 232) = v311;
  *(v283 + 264) = v309;
  *(v283 + 240) = 0x7468676952;
  *(v283 + 248) = 0xE500000000000000;
  v538 = v311;
  v312 = sub_1CA94C1E8();
  v313 = sub_1CA2F864C(v312);
  *(v556 + 112) = v313;
  v314 = swift_allocObject();
  *(v314 + 16) = v533;
  v316 = v531;
  v315 = v532;
  v317 = v544;
  *(v314 + 32) = v532;
  *(v314 + 40) = v317;
  *(v314 + 48) = v539;
  v318 = v530;
  *(v314 + 64) = v309;
  *(v314 + 72) = v318;
  *(v314 + 80) = 0x74707265637845;
  *(v314 + 88) = 0xE700000000000000;
  *(v314 + 104) = v309;
  *(v314 + 112) = v316;
  *&v533 = v315;
  v532 = v318;
  v531 = v316;
  v530 = sub_1CA94C438("Excerpt (Excerpt)", 17);
  v528 = v319;
  v527 = sub_1CA94C438("Excerpt", 7);
  v321 = v320;
  v539 = v524;
  MEMORY[0x1EEE9AC00](v527);
  v322 = v564;
  sub_1CA948D98();
  v323 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v323);
  v324 = v524 - v562;
  sub_1CA948B68();

  v325 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v314 + 120) = sub_1CA2F9F14(v530, v528, v527, v321, 0, 0, v524 - v322, v324);
  v326 = v560;
  v327 = v534;
  *(v314 + 144) = v560;
  *(v314 + 152) = v327;
  v539 = v327;
  v530 = sub_1CA94C438("An overall great quarter (Excerpt)", 34);
  v528 = v328;
  v329 = sub_1CA94C438("An overall great quarter", 24);
  v331 = v330;
  v534 = v524;
  MEMORY[0x1EEE9AC00](v329);
  sub_1CA948D98();
  v332 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v332);
  v333 = v524 - v562;
  sub_1CA948B68();

  v334 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v314 + 160) = sub_1CA2F9F14(v530, v528, v329, v331, 0, 0, v524 - v322, v333);
  v335 = v529;
  *(v314 + 184) = v326;
  *(v314 + 192) = v335;
  v336 = swift_allocObject();
  *(v336 + 16) = v546;
  v337 = swift_allocObject();
  *(v337 + 16) = v554;
  strcpy((v337 + 32), "WFParameterKey");
  *(v337 + 47) = -18;
  *(v337 + 48) = 0x6465636E61766441;
  *(v337 + 56) = 0xE800000000000000;
  v338 = MEMORY[0x1E69E6158];
  *(v337 + 72) = MEMORY[0x1E69E6158];
  *(v337 + 80) = 0xD000000000000010;
  *(v337 + 88) = v550;
  *(v337 + 96) = 1;
  *(v337 + 120) = MEMORY[0x1E69E6370];
  *(v337 + 128) = 0x72756F7365524657;
  *(v337 + 168) = v338;
  *(v337 + 136) = 0xEF7373616C436563;
  v339 = v549;
  *(v337 + 144) = v548;
  *(v337 + 152) = v339;
  v530 = v335;
  *(v336 + 32) = sub_1CA94C1E8();
  *(v314 + 200) = v336;
  v340 = v538;
  *(v314 + 224) = v551;
  *(v314 + 232) = v340;
  *(v314 + 264) = v338;
  *(v314 + 240) = 0x7468676952;
  *(v314 + 248) = 0xE500000000000000;
  v341 = sub_1CA94C1E8();
  v342 = sub_1CA2F864C(v341);
  *(v556 + 120) = v342;
  v343 = swift_allocObject();
  *(v343 + 16) = xmmword_1CA981400;
  v345 = v532;
  v344 = v533;
  v346 = v544;
  *(v343 + 32) = v533;
  *(v343 + 40) = v346;
  *(v343 + 48) = 0x80000001CA9AB710;
  *(v343 + 64) = v338;
  *(v343 + 72) = v345;
  *(v343 + 80) = 1702125892;
  *(v343 + 88) = 0xE400000000000000;
  v347 = v531;
  *(v343 + 104) = v338;
  *(v343 + 112) = v347;
  *&v533 = v344;
  v532 = v345;
  v534 = v347;
  v348 = sub_1CA94C438("Publish Date (Date)", 19);
  v528 = v349;
  v529 = v348;
  v527 = sub_1CA94C438("Publish Date", 12);
  v351 = v350;
  v531 = v524;
  MEMORY[0x1EEE9AC00](v527);
  v352 = v564;
  sub_1CA948D98();
  v353 = [v565 bundleURL];
  v526 = v524;
  MEMORY[0x1EEE9AC00](v353);
  v354 = v562;
  sub_1CA948B68();

  v355 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v343 + 120) = sub_1CA2F9F14(v529, v528, v527, v351, 0, 0, v524 - v352, v524 - v354);
  v356 = v539;
  *(v343 + 144) = v560;
  *(v343 + 152) = v356;
  v539 = v356;
  v357 = sub_1CA94C438("optional (Date)", 15);
  v528 = v358;
  v529 = v357;
  v359 = sub_1CA94C438("optional", 8);
  v527 = v360;
  v531 = v524;
  MEMORY[0x1EEE9AC00](v359);
  sub_1CA948D98();
  v361 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v361);
  sub_1CA948B68();

  v362 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v363 = sub_1CA2F9F14(v529, v528, v359, v527, 0, 0, v524 - v352, v524 - v354);
  v364 = v530;
  *(v343 + 160) = v363;
  *(v343 + 184) = v560;
  *(v343 + 192) = v364;
  v365 = swift_allocObject();
  *(v365 + 16) = v546;
  v366 = swift_allocObject();
  *(v366 + 16) = v554;
  strcpy((v366 + 32), "WFParameterKey");
  *(v366 + 47) = -18;
  *(v366 + 48) = 0x6465636E61766441;
  *(v366 + 56) = 0xE800000000000000;
  v367 = MEMORY[0x1E69E6158];
  *(v366 + 72) = MEMORY[0x1E69E6158];
  *(v366 + 80) = 0xD000000000000010;
  *(v366 + 88) = v550;
  *(v366 + 96) = 1;
  *(v366 + 120) = MEMORY[0x1E69E6370];
  *(v366 + 128) = 0x72756F7365524657;
  *(v366 + 168) = v367;
  *(v366 + 136) = 0xEF7373616C436563;
  v368 = v549;
  *(v366 + 144) = v548;
  *(v366 + 152) = v368;
  v531 = v364;
  *(v365 + 32) = sub_1CA94C1E8();
  *(v343 + 200) = v365;
  *(v343 + 224) = v551;
  *(v343 + 232) = @"ResultType";
  *(v343 + 240) = 0x676E69727453;
  *(v343 + 248) = 0xE600000000000000;
  v369 = v538;
  *(v343 + 264) = v367;
  *(v343 + 272) = v369;
  *(v343 + 304) = v367;
  *(v343 + 280) = 0x7468676952;
  *(v343 + 288) = 0xE500000000000000;
  v370 = @"ResultType";
  v371 = sub_1CA94C1E8();
  v372 = sub_1CA2F864C(v371);
  *(v556 + 128) = v372;
  v373 = swift_allocObject();
  *(v373 + 16) = v547;
  v375 = v532;
  v374 = v533;
  v376 = v542;
  v377 = v543;
  *(v373 + 32) = v533;
  *(v373 + 40) = v377;
  *(v373 + 48) = v376;
  *(v373 + 64) = v367;
  *(v373 + 72) = v375;
  *(v373 + 80) = 0x6574616C706D6554;
  *(v373 + 88) = 0xE800000000000000;
  v378 = v534;
  *(v373 + 104) = v367;
  *(v373 + 112) = v378;
  v543 = v374;
  v532 = v375;
  v542 = v378;
  v379 = sub_1CA94C438("Template (Template)", 19);
  v381 = v380;
  v382 = sub_1CA94C438("Template", 8);
  v384 = v383;
  v538 = v524;
  MEMORY[0x1EEE9AC00](v382);
  v385 = v524 - v564;
  sub_1CA948D98();
  v386 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v386);
  v387 = v524 - v562;
  sub_1CA948B68();

  v388 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v373 + 120) = sub_1CA2F9F14(v379, v381, v382, v384, 0, 0, v385, v387);
  v389 = v531;
  *(v373 + 144) = v560;
  *(v373 + 152) = v389;
  v390 = swift_allocObject();
  *(v390 + 16) = v546;
  v391 = swift_allocObject();
  *(v391 + 16) = v554;
  strcpy((v391 + 32), "WFParameterKey");
  *(v391 + 47) = -18;
  *(v391 + 48) = 0x6465636E61766441;
  *(v391 + 56) = 0xE800000000000000;
  v392 = MEMORY[0x1E69E6158];
  *(v391 + 72) = MEMORY[0x1E69E6158];
  *(v391 + 80) = 0xD000000000000010;
  *(v391 + 88) = v550;
  *(v391 + 96) = 1;
  *(v391 + 120) = MEMORY[0x1E69E6370];
  *(v391 + 128) = 0x72756F7365524657;
  *(v391 + 168) = v392;
  *(v391 + 136) = 0xEF7373616C436563;
  v393 = v549;
  *(v391 + 144) = v548;
  *(v391 + 152) = v393;
  v538 = v389;
  *(v390 + 32) = sub_1CA94C1E8();
  *(v373 + 184) = v551;
  *(v373 + 160) = v390;
  v394 = sub_1CA94C1E8();
  v395 = sub_1CA2F864C(v394);
  *(v556 + 136) = v395;
  v396 = swift_allocObject();
  *(v396 + 16) = v545;
  v534 = 0xD000000000000019;
  v398 = v542;
  v397 = v543;
  *(v396 + 32) = v543;
  *(v396 + 40) = 0xD000000000000019;
  *&v533 = 0x80000001CA99B030;
  *(v396 + 48) = 0x80000001CA99B030;
  v399 = v532;
  *(v396 + 64) = v392;
  *(v396 + 72) = v399;
  strcpy((v396 + 80), "ThumbnailImage");
  *(v396 + 95) = -18;
  *(v396 + 104) = v392;
  *(v396 + 112) = v398;
  v543 = v397;
  v532 = v399;
  v542 = v398;
  v400 = sub_1CA94C438("Featured Image (ThumbnailImage)", 31);
  v529 = v401;
  v530 = v400;
  v402 = sub_1CA94C438("Featured Image", 14);
  v528 = v403;
  v531 = v524;
  MEMORY[0x1EEE9AC00](v402);
  v404 = v564;
  sub_1CA948D98();
  v405 = v565;
  v406 = [v565 bundleURL];
  v527 = v524;
  MEMORY[0x1EEE9AC00](v406);
  v407 = v562;
  sub_1CA948B68();

  v408 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v396 + 120) = sub_1CA2F9F14(v530, v529, v402, v528, 0, 0, v524 - v404, v524 - v407);
  v409 = v560;
  v410 = v539;
  *(v396 + 144) = v560;
  *(v396 + 152) = v410;
  v411 = sub_1CA94C438("Choose Variable (ThumbnailImage)", 32);
  v529 = v412;
  v530 = v411;
  v413 = sub_1CA94C438("Choose Variable", 15);
  v415 = v414;
  v531 = v524;
  MEMORY[0x1EEE9AC00](v413);
  sub_1CA948D98();
  v416 = [v405 bundleURL];
  MEMORY[0x1EEE9AC00](v416);
  sub_1CA948B68();

  v417 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v396 + 160) = sub_1CA2F9F14(v530, v529, v413, v415, 0, 0, v524 - v404, v524 - v407);
  v418 = v538;
  *(v396 + 184) = v409;
  *(v396 + 192) = v418;
  v419 = swift_allocObject();
  *(v419 + 16) = v546;
  v420 = swift_allocObject();
  *(v420 + 16) = v554;
  strcpy((v420 + 32), "WFParameterKey");
  *(v420 + 47) = -18;
  *(v420 + 48) = 0x6465636E61766441;
  *(v420 + 56) = 0xE800000000000000;
  v421 = MEMORY[0x1E69E6158];
  *(v420 + 72) = MEMORY[0x1E69E6158];
  *(v420 + 80) = 0xD000000000000010;
  *(v420 + 88) = v550;
  *(v420 + 96) = 1;
  *(v420 + 120) = MEMORY[0x1E69E6370];
  *(v420 + 128) = 0x72756F7365524657;
  *(v420 + 168) = v421;
  *(v420 + 136) = 0xEF7373616C436563;
  v422 = v549;
  *(v420 + 144) = v548;
  *(v420 + 152) = v422;
  v538 = v418;
  *(v419 + 32) = sub_1CA94C1E8();
  *(v396 + 224) = v551;
  *(v396 + 200) = v419;
  v423 = sub_1CA94C1E8();
  v424 = sub_1CA2F864C(v423);
  *(v556 + 144) = v424;
  v425 = swift_allocObject();
  *(v425 + 16) = v547;
  v427 = v543;
  v426 = v544;
  *(v425 + 32) = v543;
  *(v425 + 40) = v426;
  *(v425 + 48) = v535;
  v428 = v532;
  *(v425 + 64) = v421;
  *(v425 + 72) = v428;
  v535 = 0x80000001CA9DFD80;
  *(v425 + 80) = 0xD000000000000010;
  *(v425 + 88) = 0x80000001CA9DFD80;
  v429 = v542;
  *(v425 + 104) = v421;
  *(v425 + 112) = v429;
  v544 = v427;
  v543 = v428;
  v542 = v429;
  v430 = sub_1CA94C438("Custom Fields (ShowCustomFields)", 32);
  v432 = v431;
  v433 = sub_1CA94C438("Custom Fields", 13);
  v435 = v434;
  v532 = v524;
  MEMORY[0x1EEE9AC00](v433);
  v436 = v524 - v564;
  sub_1CA948D98();
  v437 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v437);
  v438 = v524 - v562;
  sub_1CA948B68();

  v439 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v425 + 120) = sub_1CA2F9F14(v430, v432, v433, v435, 0, 0, v436, v438);
  v440 = v538;
  *(v425 + 144) = v560;
  *(v425 + 152) = v440;
  v441 = swift_allocObject();
  *(v441 + 16) = v546;
  v442 = swift_allocObject();
  *(v442 + 16) = v554;
  strcpy((v442 + 32), "WFParameterKey");
  *(v442 + 47) = -18;
  *(v442 + 48) = 0x6465636E61766441;
  *(v442 + 56) = 0xE800000000000000;
  v443 = MEMORY[0x1E69E6158];
  *(v442 + 72) = MEMORY[0x1E69E6158];
  *(v442 + 80) = 0xD000000000000010;
  *(v442 + 88) = v550;
  *(v442 + 96) = 1;
  *(v442 + 120) = MEMORY[0x1E69E6370];
  *(v442 + 128) = 0x72756F7365524657;
  *(v442 + 168) = v443;
  *(v442 + 136) = 0xEF7373616C436563;
  v444 = v549;
  *(v442 + 144) = v548;
  *(v442 + 152) = v444;
  v445 = v443;
  *(v441 + 32) = sub_1CA94C1E8();
  *(v425 + 184) = v551;
  *(v425 + 160) = v441;
  v446 = sub_1CA94C1E8();
  v447 = sub_1CA2F864C(v446);
  *(v556 + 152) = v447;
  v448 = swift_allocObject();
  *(v448 + 16) = v545;
  *(v448 + 32) = @"AllowedValueTypes";
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
  *(v448 + 40) = &unk_1F4A0C610;
  v450 = v544;
  *(v448 + 64) = v449;
  *(v448 + 72) = v450;
  *(v448 + 80) = 0xD000000000000015;
  *(v448 + 88) = 0x80000001CA9CE7F0;
  v451 = v543;
  *(v448 + 104) = v445;
  *(v448 + 112) = v451;
  strcpy((v448 + 120), "CustomFields");
  *(v448 + 133) = 0;
  *(v448 + 134) = -5120;
  v452 = v542;
  *(v448 + 144) = v445;
  *(v448 + 152) = v452;
  v453 = @"AllowedValueTypes";
  v454 = sub_1CA94C438("Custom Fields (CustomFields)", 28);
  v456 = v455;
  v457 = sub_1CA94C438("Custom Fields", 13);
  v459 = v458;
  *&v546 = v524;
  MEMORY[0x1EEE9AC00](v457);
  v460 = v524 - v564;
  sub_1CA948D98();
  v461 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v461);
  v462 = v524 - v562;
  sub_1CA948B68();

  v463 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v448 + 160) = sub_1CA2F9F14(v454, v456, v457, v459, 0, 0, v460, v462);
  v464 = v538;
  *(v448 + 184) = v560;
  *(v448 + 192) = v464;
  v465 = swift_allocObject();
  *(v465 + 16) = v540;
  v466 = swift_allocObject();
  *(v466 + 16) = v554;
  strcpy((v466 + 32), "WFParameterKey");
  *(v466 + 47) = -18;
  *(v466 + 48) = 0x6465636E61766441;
  *(v466 + 56) = 0xE800000000000000;
  v467 = MEMORY[0x1E69E6158];
  *(v466 + 72) = MEMORY[0x1E69E6158];
  *(v466 + 80) = 0xD000000000000010;
  v468 = v549;
  v469 = v550;
  *(v466 + 88) = v550;
  *(v466 + 96) = 1;
  *(v466 + 120) = MEMORY[0x1E69E6370];
  *(v466 + 128) = 0x72756F7365524657;
  *(v466 + 168) = v467;
  v470 = v548;
  *(v466 + 136) = 0xEF7373616C436563;
  *(v466 + 144) = v470;
  *(v466 + 152) = v468;
  *(v465 + 32) = sub_1CA94C1E8();
  v471 = swift_allocObject();
  *(v471 + 16) = v554;
  strcpy((v471 + 32), "WFParameterKey");
  *(v471 + 47) = -18;
  v472 = v535;
  *(v471 + 48) = 0xD000000000000010;
  *(v471 + 56) = v472;
  v473 = MEMORY[0x1E69E6158];
  *(v471 + 72) = MEMORY[0x1E69E6158];
  *(v471 + 80) = 0xD000000000000010;
  *(v471 + 88) = v469;
  *(v471 + 96) = 1;
  *(v471 + 120) = MEMORY[0x1E69E6370];
  *(v471 + 128) = 0x72756F7365524657;
  *(v471 + 168) = v473;
  *(v471 + 136) = 0xEF7373616C436563;
  *(v471 + 144) = v470;
  *(v471 + 152) = v468;
  v474 = v473;
  *(v465 + 40) = sub_1CA94C1E8();
  *(v448 + 224) = v551;
  *(v448 + 200) = v465;
  v475 = sub_1CA94C1E8();
  v476 = sub_1CA2F864C(v475);
  *(v556 + 160) = v476;
  v477 = swift_allocObject();
  *(v477 + 16) = v547;
  v478 = v534;
  *(v477 + 32) = v544;
  *(v477 + 40) = v478;
  *(v477 + 48) = v533;
  v479 = v543;
  *(v477 + 64) = v474;
  *(v477 + 72) = v479;
  *(v477 + 80) = 0x7475706E494657;
  *(v477 + 88) = 0xE700000000000000;
  v480 = v542;
  *(v477 + 104) = v474;
  *(v477 + 112) = v480;
  v481 = sub_1CA94C438("Content (WFInput)", 17);
  v553 = v482;
  *&v554 = v481;
  v483 = sub_1CA94C438("Content", 7);
  v552 = v484;
  v555 = v524;
  MEMORY[0x1EEE9AC00](v483);
  v485 = v564;
  sub_1CA948D98();
  v486 = [v565 bundleURL];
  v551 = v524;
  MEMORY[0x1EEE9AC00](v486);
  v487 = v562;
  sub_1CA948B68();

  v488 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v477 + 120) = sub_1CA2F9F14(v554, v553, v483, v552, 0, 0, v524 - v485, v524 - v487);
  v489 = v560;
  v490 = v539;
  *(v477 + 144) = v560;
  *(v477 + 152) = v490;
  v491 = sub_1CA94C438("Content (WFInput)", 17);
  v553 = v492;
  *&v554 = v491;
  v493 = sub_1CA94C438("Content", 7);
  v552 = v494;
  v555 = v524;
  MEMORY[0x1EEE9AC00](v493);
  v495 = v524 - v485;
  sub_1CA948D98();
  v496 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v496);
  sub_1CA948B68();

  v497 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v498 = sub_1CA2F9F14(v554, v553, v493, v552, 0, 0, v495, v524 - v487);
  *(v477 + 184) = v489;
  *(v477 + 160) = v498;
  v499 = sub_1CA94C1E8();
  v500 = sub_1CA2F864C(v499);
  v501 = v556;
  *(v556 + 168) = v500;
  v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v503 = v541;
  v541[35] = v501;
  v503[38] = v502;
  v503[39] = @"ParameterSummary";
  v504 = @"ParameterSummary";
  v505 = sub_1CA94C438("Post ${WFInput} as ${Title} (Parameter Summary)", 47);
  v507 = v506;
  v508 = sub_1CA94C438("Post ${WFInput} as ${Title}", 27);
  v510 = v509;
  MEMORY[0x1EEE9AC00](v508);
  v511 = v524 - v564;
  sub_1CA948D98();
  v512 = [v565 bundleURL];
  MEMORY[0x1EEE9AC00](v512);
  v513 = v524 - v562;
  sub_1CA948B68();

  v514 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v515 = sub_1CA2F9F14(v505, v507, v508, v510, 0, 0, v511, v513);
  v516 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v517 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v518 = v541;
  v541[40] = v516;
  v518[43] = v517;
  v518[44] = @"RequiredResources";
  v519 = v518;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v520 = swift_allocObject();
  *(v520 + 16) = v540;
  v521 = @"RequiredResources";
  v522 = MEMORY[0x1E69E6158];
  *(v520 + 32) = sub_1CA94C1E8();
  *(v520 + 88) = v522;
  *(v520 + 56) = v536;
  *(v520 + 64) = 0xD00000000000001CLL;
  *(v520 + 72) = 0x80000001CA993620;
  v519[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v519[45] = v520;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA697280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1CA271524(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_1CA4FCA38(a1);
    v12 = 0;
    v13 = a1 + 64;
    v34 = v7;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(a1 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_24;
        }

        v35 = v10;
        v36 = v12;
        v37 = v9;
        v15 = (*(a1 + 56) + 16 * v11);
        v16 = *v15;
        v17 = v15[1];
        v19 = *(v38 + 16);
        v18 = *(v38 + 24);
        sub_1CA94C218();
        if (v19 >= v18 >> 1)
        {
          sub_1CA271524(v18 > 1, v19 + 1, 1, v20, v21, v22, v23);
        }

        *(v38 + 16) = v19 + 1;
        v24 = v38 + 16 * v19;
        *(v24 + 32) = v16;
        *(v24 + 40) = v17;
        v25 = 1 << *(a1 + 32);
        if (v11 >= v25)
        {
          goto LABEL_25;
        }

        v13 = a1 + 64;
        v26 = *(a1 + 64 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v37)
        {
          goto LABEL_27;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
          v28 = v34;
        }

        else
        {
          v29 = v14 << 6;
          v30 = v14 + 1;
          v28 = v34;
          v31 = (a1 + 72 + 8 * v14);
          while (v30 < (v25 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              sub_1CA2974B8(v11, v37, v35 & 1);
              v25 = __clz(__rbit64(v32)) + v29;
              goto LABEL_18;
            }
          }

          sub_1CA2974B8(v11, v37, v35 & 1);
        }

LABEL_18:
        v12 = v36 + 1;
        if (v36 + 1 == v28)
        {
          return;
        }

        v10 = 0;
        v9 = *(a1 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

id WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v14 = &v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
  v15 = MEMORY[0x1E69E7CC0];
  *v14 = 1;
  *(v14 + 1) = v15;
  v14[16] = 0;
  *&v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_preprocessedEntity] = 0;
  *&v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___addButtonParameter] = 0;
  *&v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___tableParameter] = 0;
  *&v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___batchExecutor] = 0;
  *&v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier] = a4;
  v16 = sub_1CA94C368();

  if (a6)
  {
    sub_1CA94C218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v17 = sub_1CA94C1A8();
  }

  else
  {
    v17 = 0;
  }

  v47.receiver = v8;
  v47.super_class = type metadata accessor for WFEntityUpdatingAction();
  v18 = objc_msgSendSuper2(&v47, sel_initWithIdentifier_metadata_definition_serializedParameters_appIntentDescriptor_fullyQualifiedActionIdentifier_, v16, a3, a5, v17, a7, a8);
  v19 = v18;

  if (v19)
  {

    if (a6)
    {
      v20 = sub_1CA323E28();

      if (v20)
      {
        v21 = v19;
        v22 = sub_1CA697948();
        v23 = sub_1CA697BC8(v20, v18, v22, &v40);
        v24 = *(&v40 + 1);
        if (*(&v40 + 1))
        {
          v25 = v41;
          v26 = v40;
          v27 = &v21[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
          OUTLINED_FUNCTION_9_40(v23, v36);
          *v27 = v26;
          *(v27 + 1) = v24;
          v27[16] = v25 & 1;
        }
      }
    }

    v28 = &v19[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
    OUTLINED_FUNCTION_27_2(&v19[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState], v46);
    if (!*(*(v28 + 1) + 16))
    {
      WFEntityUpdatingAction.createTableRow()(&v40);
      v43 = v40;
      v44 = v41;
      v45 = *v42;
      if (*&v42[16])
      {
        v35 = *&v42[24];
        v34 = *&v42[16];
        swift_beginAccess();
        v38[0] = v40;
        v38[1] = v41;
        v39[0] = *v42;
        *(v39 + 12) = *&v42[12];
        sub_1CA2DBDB8(v38, v37);
        sub_1CA69AF00(sub_1CA2E5064);
        v29 = *(*(v28 + 1) + 16);
        sub_1CA69B140(v29, sub_1CA2E5064);
        v30 = *(v28 + 1);
        *(v30 + 16) = v29 + 1;
        v31 = v30 + (v29 << 6);
        v32 = v44;
        *(v31 + 32) = v43;
        *(v31 + 48) = v32;
        *(v31 + 64) = v45;
        *(v31 + 80) = v34;
        *(v31 + 88) = v35;
        *(v28 + 1) = v30;
        swift_endAccess();
        sub_1CA69AF8C(&v40);
      }
    }
  }

  else
  {

    return 0;
  }

  return v18;
}

uint64_t sub_1CA697814@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState;
  result = OUTLINED_FUNCTION_27_2(v3, v18);
  v5 = *(v3 + 8);
  if (*(v5 + 16) == 1)
  {
    v6 = *(v5 + 48);
    v16[0] = *(v5 + 32);
    v16[1] = v6;
    *v17 = *(v5 + 64);
    *&v17[12] = *(v5 + 76);
    v13 = v16[0];
    v14 = v6;
    v8 = *&v17[8];
    v7 = *v17;
    v9 = *&v17[16];
    v10 = *&v17[24];
    result = sub_1CA2DBDB8(v16, v15);
    v11 = v13;
    v12 = v14;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  return result;
}

id sub_1CA6978DC()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___addButtonParameter;
  v2 = *(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___addButtonParameter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___addButtonParameter);
  }

  else
  {
    swift_getObjectType();
    v4 = OUTLINED_FUNCTION_5_3();
    v5 = sub_1CA6988E0(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1CA697948()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___tableParameter;
  v2 = *(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___tableParameter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___tableParameter);
  }

  else
  {
    v4 = v0;
    v5 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    *(inited + 64) = MEMORY[0x1E69E6158];
    *(inited + 32) = @"Key";
    strcpy((inited + 40), "tableTemplate");
    *(inited + 54) = -4864;
    _s3__C3KeyVMa_0(0);
    sub_1CA69B488(&qword_1EDB9F780, _s3__C3KeyVMa_0);
    v7 = @"Key";
    v8 = sub_1CA94C1E8();
    sub_1CA2F864C(v8);
    OUTLINED_FUNCTION_40();
    v9 = [objc_allocWithZone(type metadata accessor for WFTableTemplateEntityUpdaterParameter()) initWithDefinition_];

    v10 = &v9[OBJC_IVAR____TtC11WorkflowKit37WFTableTemplateEntityUpdaterParameter_delegate];
    OUTLINED_FUNCTION_9_40(v11, &v15);
    *(v10 + 1) = &protocol witness table for WFEntityUpdatingAction;
    swift_unknownObjectWeakAssign();
    v12 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_1CA697B04()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___batchExecutor;
  v2 = *&v0[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___batchExecutor];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___batchExecutor];
  }

  else
  {
    v4 = [v0 executorOptions];
    v5 = [v0 progress];
    v6 = objc_allocWithZone(type metadata accessor for BatchActionExecutor(0));
    v7 = sub_1CA69B350(v4, v5, v0, v6);
    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1CA697BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *&v33 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (!swift_dynamicCast())
  {
    goto LABEL_23;
  }

  sub_1CA94C3A8();
  v7 = sub_1CA323E28();

  if (!v7)
  {
    goto LABEL_23;
  }

  *&v33 = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!sub_1CA323E28())
  {
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

LABEL_23:
    swift_unknownObjectRelease();
LABEL_24:

    result = swift_unknownObjectRelease();
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v8 = sub_1CA94C978();
  v9 = sub_1CA323E28();
  if (!v9 || (*&v33 = v9, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E60, &qword_1CA985F80), (swift_dynamicCast() & 1) == 0))
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v27 = v8;
  v10 = v30;
  result = sub_1CA25B410(v30);
  if (!result)
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v8 = v27;
LABEL_30:
    v24 = sub_1CA323E28();

    if (v24)
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v26 = [v25 BOOLValue];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_35:
        result = swift_unknownObjectRelease();
        *a4 = v8;
        *(a4 + 8) = v14;
        *(a4 + 16) = v26;
        return result;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v26 = 0;
    goto LABEL_35;
  }

  v12 = result;
  if (result >= 1)
  {
    v13 = 0;
    v29 = v30 & 0xC000000000000001;
    v14 = MEMORY[0x1E69E7CC0];
    v28 = v30;
    do
    {
      if (v29)
      {
        v15 = MEMORY[0x1CCAA22D0](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v16 = a3;
      RowTemplatePropertySetterParameterState.init(serializedRepresentation:variableProvider:parameter:)(v15, a2, a3, &v33);
      if (*&v35[16])
      {
        v30 = v33;
        v31 = v34;
        v32[0] = *v35;
        *(v32 + 12) = *&v35[12];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E5064();
          v14 = v22;
        }

        v17 = *(v14 + 16);
        if (v17 >= *(v14 + 24) >> 1)
        {
          sub_1CA2E5064();
          v14 = v23;
        }

        swift_unknownObjectRelease();
        *(v14 + 16) = v17 + 1;
        v18 = (v14 + (v17 << 6));
        v19 = v30;
        v20 = v31;
        v21 = v32[0];
        *(v18 + 76) = *(v32 + 12);
        v18[3] = v20;
        v18[4] = v21;
        v18[2] = v19;
        v10 = v28;
      }

      else
      {
        swift_unknownObjectRelease();
        v30 = v33;
        v31 = v34;
        v32[0] = *v35;
        *(v32 + 12) = *&v35[12];
        sub_1CA69AF8C(&v30);
      }

      ++v13;
    }

    while (v12 != v13);

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA698020@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  OUTLINED_FUNCTION_7_43();
  if (!swift_dynamicCast())
  {
    goto LABEL_23;
  }

  sub_1CA94C3A8();
  v6 = sub_1CA323E28();

  if (!v6)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_43();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_13_37();
  if (!sub_1CA323E28())
  {
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

LABEL_23:
    swift_unknownObjectRelease();
LABEL_24:

    result = swift_unknownObjectRelease();
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v23 = sub_1CA94C978();
  v7 = sub_1CA323E28();
  if (!v7 || (v26 = v7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E60, &qword_1CA985F80), OUTLINED_FUNCTION_7_43(), (swift_dynamicCast() & 1) == 0))
  {
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v8 = v32;
  result = sub_1CA25B410(v32);
  if (!result)
  {

    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v10 = result;
  if (result >= 1)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v24 = a3;
    v25 = result;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCAA22D0](v11, v8);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v13 = a3;
      RowTemplateConditionalParameterState.init(serializedRepresentation:variableProvider:parameter:)();
      if (v27)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E63D4(0, *(v12 + 16) + 1, 1, v12);
          v12 = v18;
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        v16 = v12;
        if (v15 >= v14 >> 1)
        {
          sub_1CA2E63D4(v14 > 1, v15 + 1, 1, v12);
          v16 = v19;
        }

        swift_unknownObjectRelease();
        *(v16 + 16) = v15 + 1;
        v12 = v16;
        v17 = v16 + 48 * v15;
        *(v17 + 32) = v26;
        *(v17 + 40) = v27;
        *(v17 + 48) = v28 & 1;
        *(v17 + 56) = v29;
        *(v17 + 64) = v30;
        *(v17 + 72) = v31;
        v8 = v32;
        a3 = v24;
        v10 = v25;
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1CA43EFAC(v26, 0, v28, v29, v30, v31);
      }

      ++v11;
    }

    while (v10 != v11);

LABEL_28:
    OUTLINED_FUNCTION_13_37();
    v20 = sub_1CA323E28();

    if (v20)
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = [v21 BOOLValue];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_34:
        result = swift_unknownObjectRelease();
        *a4 = v23;
        *(a4 + 8) = v12;
        *(a4 + 16) = v22;
        return result;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v22 = 0;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_1CA698450()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_7();
  v1 = (*(v0 + 192))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 systemProtocolMetadata];

    type metadata accessor for LNSystemEntityProtocolIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447100, &unk_1CA989ED0);
    sub_1CA69B488(&qword_1EC4436B0, type metadata accessor for LNSystemEntityProtocolIdentifier);
    v4 = sub_1CA94C1C8();

    OUTLINED_FUNCTION_5_5();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    sub_1CA94C218();
    v10 = 0;
    while (v7)
    {
LABEL_8:
      v12 = sub_1CA94C3A8();
      v14 = v13;
      if (v12 == sub_1CA94C3A8() && v14 == v15)
      {

        goto LABEL_16;
      }

      v7 &= v7 - 1;
      OUTLINED_FUNCTION_187();
      v17 = sub_1CA94D7F8();

      if (v17)
      {

LABEL_16:

        goto LABEL_17;
      }
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        goto LABEL_17;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_36();
  }
}

void *sub_1CA69865C()
{
  OUTLINED_FUNCTION_7();
  result = (*(v0 + 192))();
  if (result)
  {
    v2 = result;
    v3 = [result properties];

    sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
    OUTLINED_FUNCTION_5_3();
    v4 = sub_1CA94C658();

    v5 = sub_1CA25B410(v4);

    return (v5 == 1);
  }

  return result;
}

id sub_1CA698744(uint64_t a1)
{
  v2 = sub_1CA94C368();
  v3 = [v1 parameterStateForKey_];

  return v3;
}

id sub_1CA6988E0(uint64_t a1)
{
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = 1937075312;
  *(inited + 48) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA69B488(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v3 = @"Key";
  v4 = sub_1CA94C1E8();
  v5 = sub_1CA2F864C(v4);
  v6 = [objc_allocWithZone(WFAddButtonParameter) initWithDefinition_];

  [v6 setDelegate_];
  return v6;
}

void WFEntityUpdatingAction.__allocating_init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_allocWithZone(v0);
  WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(v16, v14, v12, v10, v8, v6, v4, v2);
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA698BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  v13 = v12;
  v15 = v14;
  swift_getObjectType();
  v16 = [v12 identifier];
  v17 = sub_1CA94C3A8();
  v19 = v18;

  v20 = [v13 metadata];
  v21 = *&v13[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier];
  sub_1CA94C218();
  v22 = [v13 definition];
  if (!v22)
  {
    sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
    v23 = OUTLINED_FUNCTION_40();
    type metadata accessor for Key(v23);
    sub_1CA69B488(&qword_1EDB9FB10, type metadata accessor for Key);
    sub_1CA94C1E8();
    v22 = sub_1CA332510();
  }

  sub_1CA94C218();
  v24 = [v13 appIntentDescriptor];
  v25 = [v13 fullyQualifiedLinkActionIdentifier];
  v26 = objc_allocWithZone(type metadata accessor for WFEntityUpdatingAction());
  v27 = WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(v17, v19, v20, v21, v22, v15, v24, v25);
  if (v27)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6BE00](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

id sub_1CA698E70()
{
  OUTLINED_FUNCTION_7();
  v2 = (*(v1 + 192))();
  if (v2 && (v3 = sub_1CA69B188(v2), v4))
  {
    v5 = v3;
    v6 = v4;
    v7 = objc_allocWithZone(MEMORY[0x1E696E720]);
    return sub_1CA5679E4(v5, v6);
  }

  else
  {
    v9.receiver = v0;
    v9.super_class = type metadata accessor for WFEntityUpdatingAction();
    return objc_msgSendSuper2(&v9, sel_displayableAppDescriptor);
  }
}

void *sub_1CA698F20(void *a1)
{
  OUTLINED_FUNCTION_7();
  v3 = (*(v2 + 192))();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayRepresentation];

    v6 = [v5 name];
    v7 = [a1 locale];
    OUTLINED_FUNCTION_40();
    sub_1CA948E58();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_2_63();

    sub_1CA948D48();
    v9 = OUTLINED_FUNCTION_69();
    v10(v9);
    v11 = sub_1CA94C368();

    v12 = [v6 localizedStringForLocaleIdentifier_];

    v4 = sub_1CA94C3A8();
  }

  return v4;
}

void sub_1CA699168()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v90 = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 192);
  v80 = v0;
  v5 = v4();
  v6 = &selRef_isInputParameter;
  if (v5)
  {
    v7 = v5;
    v8 = [v5 displayRepresentation];

    v9 = [v8 name];
    v10 = [v2 locale];
    OUTLINED_FUNCTION_40();
    sub_1CA948E58();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_2_63();

    sub_1CA948D48();
    v12 = OUTLINED_FUNCTION_69();
    v13(v12);
    v14 = sub_1CA94C368();

    v15 = [v9 localizedStringForLocaleIdentifier_];

    v16 = sub_1CA94C3A8();
    v18 = v17;

    sub_1CA368948(v89, v16, v18);
  }

  v79 = *(v80 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier) + 64;
  OUTLINED_FUNCTION_5_5();
  v21 = v20 & v19;
  v78 = (v22 + 63) >> 6;
  v83 = v23;
  swift_bridgeObjectRetain_n();
  v24 = 0;
  v77 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v21)
      {
        while (1)
        {
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v26 >= v78)
          {
            goto LABEL_36;
          }

          v21 = *(v79 + 8 * v26);
          ++v24;
          if (v21)
          {
            v24 = v26;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

LABEL_9:
      v27 = *(*(v83 + 56) + ((v24 << 9) | (8 * __clz(__rbit64(v21)))));
      v28 = [v27 descriptionMetadata];
      v84 = v24;
      v85 = v21;
      if (!v28)
      {

        goto LABEL_24;
      }

      v29 = v28;
      v30 = [v28 searchKeywords];

      sub_1CA25B3D0(0, &qword_1EC441780, 0x1E69AC9E0);
      OUTLINED_FUNCTION_5_3();
      v31 = sub_1CA94C658();

      if (v31 >> 62)
      {
        v36 = sub_1CA94D328();
        if (v36)
        {
          goto LABEL_12;
        }

LABEL_23:

LABEL_24:
        v39 = MEMORY[0x1E69E7CC0];
        goto LABEL_25;
      }

      v36 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_23;
      }

LABEL_12:
      v89[0] = MEMORY[0x1E69E7CC0];
      v37 = v89;
      sub_1CA271524(0, v36 & ~(v36 >> 63), 0, v32, v33, v34, v35);
      if (v36 < 0)
      {
        goto LABEL_40;
      }

      v81 = v27;
      v82 = v25;
      v38 = 0;
      v39 = v89[0];
      v86 = v31 & 0xC000000000000001;
      v87 = v36;
      v88 = v31;
      do
      {
        if (v86)
        {
          v40 = MEMORY[0x1CCAA22D0](v38, v31);
        }

        else
        {
          v40 = *(v31 + 8 * v38 + 32);
        }

        v41 = v40;
        v42 = v2;
        v43 = [v2 v6[255]];
        OUTLINED_FUNCTION_40();
        v44 = sub_1CA948E58();
        OUTLINED_FUNCTION_1_0();
        v46 = v45;
        MEMORY[0x1EEE9AC00](v47);
        v49 = &v77 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1CA948DA8();

        sub_1CA948D48();
        (*(v46 + 8))(v49, v44);
        v37 = sub_1CA94C368();

        v50 = [v41 localizedStringForLocaleIdentifier_];

        v51 = sub_1CA94C3A8();
        v53 = v52;

        v89[0] = v39;
        v59 = *(v39 + 16);
        v58 = *(v39 + 24);
        if (v59 >= v58 >> 1)
        {
          v37 = v89;
          sub_1CA271524(v58 > 1, v59 + 1, 1, v54, v55, v56, v57);
          v39 = v89[0];
        }

        ++v38;
        *(v39 + 16) = v59 + 1;
        v60 = v39 + 16 * v59;
        *(v60 + 32) = v51;
        *(v60 + 40) = v53;
        v31 = v88;
        v2 = v42;
        v6 = &selRef_isInputParameter;
      }

      while (v87 != v38);

      v25 = v82;
LABEL_25:
      v61 = *(v39 + 16);
      v62 = *(v25 + 16);
      if (__OFADD__(v62, v61))
      {
        goto LABEL_38;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v62 + v61 > *(v25 + 24) >> 1)
      {
        sub_1CA26DADC();
        v25 = v63;
      }

      v21 = (v85 - 1) & v85;
      if (!*(v39 + 16))
      {
        break;
      }

      if ((*(v25 + 24) >> 1) - *(v25 + 16) < v61)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      v24 = v84;
      if (v61)
      {
        v64 = *(v25 + 16);
        v65 = __OFADD__(v64, v61);
        v66 = v64 + v61;
        if (v65)
        {
          goto LABEL_41;
        }

        *(v25 + 16) = v66;
      }
    }

    v24 = v84;
  }

  while (!v61);
  __break(1u);
LABEL_36:

  sub_1CA342798(v25);
  OUTLINED_FUNCTION_7();
  v68 = (*(v67 + 200))();
  sub_1CA697280(v68, v69, v70, v71, v72, v73, v74);
  v76 = v75;

  sub_1CA342798(v76);
  sub_1CA438D04(v90);
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA699848()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for WFEntityUpdatingAction();
  v1 = objc_msgSendSuper2(&v14, sel_serializedParameters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v2 = sub_1CA94C1C8();

  v3 = v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState;
  OUTLINED_FUNCTION_27_2(v3, v13);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  sub_1CA94C218();
  v7 = sub_1CA4388E8(v4, v5, v6);

  if (v7)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v2;
    ObjectType = swift_getObjectType();
    sub_1CA32EB34(v7, 0x54656C6261544657, 0xEF6574616C706D65, isUniquelyReferenced_nonNull_native, &v12, ObjectType);
    return v12;
  }

  else
  {
    sub_1CA271BF8(0x54656C6261544657, 0xEF6574616C706D65);
    if (v10)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v12 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      sub_1CA94D588();

      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  return v2;
}

void sub_1CA699AA4(void *a1)
{
  v26.receiver = v1;
  v26.super_class = type metadata accessor for WFEntityUpdatingAction();
  objc_msgSendSuper2(&v26, sel_configureParameter_, a1);
  type metadata accessor for WFUpdatableParameter();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = v3 + OBJC_IVAR___WFUpdatableParameter_stateDataSource;
    swift_beginAccess();
    *(v5 + 8) = &protocol witness table for WFEntityUpdatingAction;
    swift_unknownObjectWeakAssign();
    v6 = *&v4[OBJC_IVAR___WFUpdatableParameter_underlyingParameter];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = a1;
      v10 = v6;
      v11 = [v4 key];
      sub_1CA94C3A8();

      v12 = sub_1CA323E2C();

      if (v12)
      {
        v23 = v8;
        v25 = v10;
        v24 = v12;
        v13 = [v12 parameters];
        sub_1CA25B3D0(0, &unk_1EC445EB0, 0x1E69AC680);
        v14 = sub_1CA94C658();

        v15 = sub_1CA25B410(v14);
        for (i = 0; ; ++i)
        {
          if (v15 == i)
          {

            return;
          }

          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1CCAA22D0](i, v14);
          }

          else
          {
            if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v17 = *(v14 + 8 * i + 32);
          }

          v18 = v17;
          if (__OFADD__(i, 1))
          {
            break;
          }

          v19 = sub_1CA4FC8DC(v17);
          if (v20)
          {
            if (v19 == 0x79747265706F7270 && v20 == 0xE800000000000000)
            {

LABEL_21:

              [v23 setAction_];
              [v23 setDataSource_];
              [v23 setParameterMetadata_];

              return;
            }

            v22 = sub_1CA94D7F8();

            if (v22)
            {
              goto LABEL_21;
            }
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
      }

      else
      {
      }
    }
  }
}

id sub_1CA699E18(uint64_t a1, void *a2)
{
  [v2 configureParameter_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = sub_1CA94D7D8();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for WFEntityUpdatingAction();
  v6 = objc_msgSendSuper2(&v8, sel_createStateForParameter_fromSerializedRepresentation_, a1, v5);
  swift_unknownObjectRelease();
  return v6;
}

id sub_1CA699F48()
{
  OUTLINED_FUNCTION_1_54();
  v5 = v3 == v4 && v1 == v2;
  if (!v5 && (sub_1CA94D7F8() & 1) == 0)
  {
    sub_1CA697814(v23);
    if (v26)
    {
      v14 = v24;
      v12 = v25;
      sub_1CA94C218();
      v15._countAndFlagsBits = OUTLINED_FUNCTION_69();
      RowTemplateLayoutElement.init(rawValue:)(v15);
      switch(v21)
      {
        case 3:
          swift_unknownObjectRetain();
          sub_1CA69AF8C(v23);
          return v14;
        case 1:
          v18 = sub_1CA94C988();
          v12 = [objc_allocWithZone(WFNumberSubstitutableState) initWithNumber_];

          goto LABEL_15;
        case 0:
          v16 = v12;
LABEL_15:
          sub_1CA69AF8C(v23);
          return v12;
      }

      OUTLINED_FUNCTION_69();
      v17 = sub_1CA94C368();
      v20.receiver = v0;
      v20.super_class = type metadata accessor for WFEntityUpdatingAction();
      v12 = objc_msgSendSuper2(&v20, sel_parameterStateForKey_, v17);
      sub_1CA69AF8C(v23);
    }

    else
    {
      OUTLINED_FUNCTION_69();
      v17 = sub_1CA94C368();
      v22.receiver = v0;
      v22.super_class = type metadata accessor for WFEntityUpdatingAction();
      v12 = objc_msgSendSuper2(&v22, sel_parameterStateForKey_, v17);
    }

    return v12;
  }

  v6 = &v0[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
  OUTLINED_FUNCTION_27_2(&v0[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState], v23);
  v8 = *v6;
  v7 = *(v6 + 1);
  v9 = v6[16];
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446590, &qword_1CA98B5B0));
  v11 = v10 + *((*MEMORY[0x1E69E7D40] & *v10) + 0x60);
  *v11 = v8;
  *(v11 + 1) = v7;
  v11[16] = v9;
  sub_1CA94C218();
  v19.receiver = v10;
  v19.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477C0, &unk_1CA98B5B8);
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_1CA69A1D4(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_1_54();
  v10 = v8 == v9 && a3 == v7;
  if (v10 || (OUTLINED_FUNCTION_187(), (sub_1CA94D7F8() & 1) != 0))
  {
    if (a1)
    {
      swift_getObjectType();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FA0, &qword_1CA991B80);
      v12 = sub_1CA69B258();
      v13 = WFParameterState.swiftParameterState<A>(_:)(v11, v12, v47);
      v14 = v48;
      if (v48)
      {
        v15 = &v3[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
        OUTLINED_FUNCTION_9_40(v13, v47);
        *(v15 + 1) = v14;

LABEL_35:
        sub_1CA69A518(v4);
        return;
      }
    }
  }

  sub_1CA697814(v47);
  if (!v49)
  {
LABEL_16:
    OUTLINED_FUNCTION_187();
    v26 = sub_1CA94C368();
    v46.receiver = v4;
    v46.super_class = type metadata accessor for WFEntityUpdatingAction();
    objc_msgSendSuper2(&v46, sel_setParameterState_forKey_, a1, v26);

    return;
  }

  sub_1CA69AF8C(v47);
  sub_1CA94C218();
  v16._countAndFlagsBits = OUTLINED_FUNCTION_187();
  LOBYTE(v17) = RowTemplateLayoutElement.init(rawValue:)(v16);
  if (v45 == 3)
  {
    OUTLINED_FUNCTION_10_37(v17, v18, v19, v20, v21, v22, v23, v24, v44);
    v25 = *(v3 + 1);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 1) = v25;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_28:
      if (!*(v25 + 16))
      {
        __break(1u);
LABEL_39:
        sub_1CA42B3C8();
        v39 = v43;
        *(a1 + 1) = v43;
        goto LABEL_33;
      }

      *(v25 + 48) = a1;
      *(v3 + 1) = v25;
      swift_endAccess();
LABEL_30:
      swift_unknownObjectRelease();
      goto LABEL_35;
    }

LABEL_37:
    sub_1CA42B3C8();
    v25 = v42;
    *(v3 + 1) = v42;
    goto LABEL_28;
  }

  if (v45 == 1)
  {
    if (!a1 || (objc_opt_self(), (v3 = [swift_dynamicCastObjCClass() number]) == 0))
    {
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      OUTLINED_FUNCTION_40();
      v3 = sub_1CA94CFB8();
    }

    v27 = sub_1CA94C978();

    if (v27 >= 5)
    {
      v36 = 0;
    }

    else
    {
      v36 = v27;
    }

    OUTLINED_FUNCTION_10_37(v28, v29, v30, v31, v32, v33, v34, v35, v44);
    a1 = *(v3 + 1);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 1) = a1;
    if ((v37 & 1) == 0)
    {
      sub_1CA42B3C8();
      a1 = v41;
      *(v3 + 1) = v41;
    }

    if (*(a1 + 2))
    {
      a1[64] = v36;
      *(a1 + 6) = 0;
      *(v3 + 1) = a1;
      swift_endAccess();
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v45)
  {
    goto LABEL_16;
  }

  if (a1)
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v25 = 0;
  }

  a1 = &v3[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
  swift_beginAccess();
  v39 = *(a1 + 1);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 1) = v39;
  if ((v40 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  if (*(v39 + 16))
  {
    RowTemplatePropertySetterParameterState.subject.setter(v25);
    *(a1 + 1) = v39;
    swift_endAccess();
    goto LABEL_35;
  }

  __break(1u);
}

uint64_t sub_1CA69A518(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  v55 = sub_1CA94C1E8();
  v53 = a1;
  v2 = &a1[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
  swift_beginAccess();
  v3 = *(v2 + 1);
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_21:
    v28 = [v53 parameters];
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    v29 = sub_1CA94C658();

    v30 = sub_1CA25B410(v29);
    if (!v30)
    {
LABEL_43:

      return 1;
    }

    v31 = v30;
    if (v30 < 1)
    {
      goto LABEL_47;
    }

    v32 = 0;
    while (1)
    {
      v33 = (v29 & 0xC000000000000001) != 0 ? MEMORY[0x1CCAA22D0](v32, v29) : *(v29 + 8 * v32 + 32);
      v34 = v33;
      v35 = [v33 key];
      v36 = sub_1CA94C3A8();
      v38 = v37;

      if (v36 != 0x797469746E65 || v38 != 0xE600000000000000)
      {
        break;
      }

LABEL_42:
      if (v31 == ++v32)
      {
        goto LABEL_43;
      }
    }

    v40 = sub_1CA94D7F8();

    if (v40)
    {
LABEL_41:

      goto LABEL_42;
    }

    v41 = [v34 key];
    v42 = sub_1CA94C3A8();
    v44 = v43;

    if (*(v55 + 16))
    {
      v45 = sub_1CA271BF8(v42, v44);
      v47 = v46;

      if (v47)
      {
        v48 = *(*(v55 + 56) + 8 * v45);
        swift_unknownObjectRetain();
LABEL_38:
        v49 = [v34 key];
        if (!v49)
        {
          sub_1CA94C3A8();
          v49 = sub_1CA94C368();
        }

        v50 = type metadata accessor for WFEntityUpdatingAction();
        v63.receiver = v53;
        v63.super_class = v50;
        objc_msgSendSuper2(&v63, sel_setParameterState_forKey_, v48, v49);
        swift_unknownObjectRelease();

        goto LABEL_41;
      }
    }

    else
    {
    }

    v48 = 0;
    goto LABEL_38;
  }

  sub_1CA94C218();
  v5 = 0;
  v6 = v3 + 80;
  v52 = v3;
  v54 = v4;
  while (v5 < *(v3 + 16))
  {
    v7 = *(v6 - 24);
    if (v7)
    {
      v8 = *(v6 - 16);
      v56 = *(v6 - 48);
      v58 = *(v6 - 32);
      swift_unknownObjectRetain();
      v9 = v7;
      sub_1CA94C218();
      swift_unknownObjectRetain();
      v10 = [v9 value];
      if (v10)
      {
        v11 = v10;
        v61 = 0;
        v62 = 0;
        sub_1CA94C398();

        v12 = v62;
        if (v62)
        {
          v13 = v61;
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CE0, &qword_1CA982160);
          v15 = objc_allocWithZone(v14);
          v16 = &v15[*((*MEMORY[0x1E69E7D40] & *v15) + 0x60)];
          *v16 = v56;
          *(v16 + 1) = v58;
          v16[32] = v8;
          v60.receiver = v15;
          v60.super_class = v14;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v59 = v9;
          v57 = objc_msgSendSuper2(&v60, sel_init);
          swift_isUniquelyReferenced_nonNull_native();
          v61 = v55;
          v17 = sub_1CA271BF8(v13, v12);
          if (__OFADD__(*(v55 + 16), (v18 & 1) == 0))
          {
            goto LABEL_45;
          }

          v19 = v17;
          v20 = v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
          if (sub_1CA94D588())
          {
            v21 = sub_1CA271BF8(v13, v12);
            v3 = v52;
            if ((v20 & 1) != (v22 & 1))
            {
              goto LABEL_48;
            }

            v19 = v21;
            if ((v20 & 1) == 0)
            {
LABEL_11:
              v23 = v61;
              v61[(v19 >> 6) + 8] |= 1 << v19;
              v24 = (v23[6] + 16 * v19);
              *v24 = v13;
              v24[1] = v12;
              *(v23[7] + 8 * v19) = v57;

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v25 = v23[2];
              v26 = __OFADD__(v25, 1);
              v27 = v25 + 1;
              if (v26)
              {
                goto LABEL_46;
              }

              v55 = v23;
              v23[2] = v27;
              goto LABEL_18;
            }
          }

          else
          {
            v3 = v52;
            if ((v20 & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v55 = v61;
          *(v61[7] + 8 * v19) = v57;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
LABEL_18:
        v4 = v54;
        goto LABEL_19;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

LABEL_19:
    ++v5;
    v6 += 64;
    if (v4 == v5)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

id WFEntityUpdatingAction.__allocating_init(identifier:metadata:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v14 = sub_1CA94C368();

  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v15 = sub_1CA94C1A8();
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(v8) initWithIdentifier:v14 metadata:a3 definition:a4 serializedParameters:v15 appIntentDescriptor:a6 fullyQualifiedActionIdentifier:a7];

  return v16;
}

id WFEntityUpdatingAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFEntityUpdatingAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA69AF00(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1CA69AF8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FA0, &unk_1CA98B5A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA69B0E4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1CA94C698();
  }

  return result;
}

uint64_t sub_1CA69B140(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1CA69B188(void *a1)
{
  v2 = [a1 attributionBundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA69B1F8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1CA94D5B8();
  }

  else
  {
    return sub_1CA94D2B8();
  }
}

unint64_t sub_1CA69B258()
{
  result = qword_1EC447FA8;
  if (!qword_1EC447FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447FA0, &qword_1CA991B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447FA8);
  }

  return result;
}

id sub_1CA69B350(void *a1, void *a2, void *a3, char *a4)
{
  *&a4[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_queuedActionIdentifiers] = MEMORY[0x1E69E7CC0];
  *&a4[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_connection] = 0;
  swift_unknownObjectWeakInit();
  v8 = &a4[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_provider];
  *&a4[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_provider + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
  __swift_storeEnumTagSinglePayload(&a4[v9], 1, 1, v10);
  *&a4[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_options] = a1;
  *(v8 + 1) = &off_1F4A12308;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v14.receiver = a4;
  v14.super_class = type metadata accessor for BatchActionExecutor(0);
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

uint64_t sub_1CA69B488(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA69B4E4()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v1, v2, v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_13_2(v5);

  return v7(v6);
}

uint64_t sub_1CA69B5D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2AD9FC;

  return sub_1CA69B4E4();
}

uint64_t sub_1CA69B694(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a3;
  *(v5 + 224) = *a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA69B6B4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA69B7A4;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC444760, &unk_1CA983EF0);
  OUTLINED_FUNCTION_3_0(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_3();
  [v1 getStringRepresentation_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA69B7A4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA69B8A4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7_44();
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_10_38(v1);

  return v3(v2);
}

uint64_t sub_1CA69B990(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v7[34] = v2;

  if (!v2)
  {
    v7[35] = a2;
    v7[36] = a1;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA69BAB0()
{
  OUTLINED_FUNCTION_59_0();
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[32];
  v4 = v0[27];
  v5 = v0[25];
  v0[20] = v0[31];
  v0[21] = v3;
  v0[22] = v1;
  v0[23] = v2;
  v6 = *(v4 + *(v5 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
  v7 = swift_task_alloc();
  v8 = sub_1CA948E58();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_1CA27BAF0();
  OUTLINED_FUNCTION_14_33((v0 + 22), v6, v9, v10, v11, v12, MEMORY[0x1E69E6158]);
  v14 = v13;
  sub_1CA69C610(v7);

  OUTLINED_FUNCTION_2_4();

  return v15(v16 & ~v14);
}

uint64_t sub_1CA69BBF0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA3D3884;

  return sub_1CA69B694(a1, a2, a3, v8);
}

uint64_t sub_1CA69BCC0()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v1, v2, v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_13_2(v5);

  return v7(v6);
}

uint64_t sub_1CA69BDB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2AD81C;

  return sub_1CA69BCC0();
}

uint64_t sub_1CA69BE70(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a3;
  *(v5 + 224) = *a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA69BE90()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA69BF80;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC444760, &unk_1CA983EF0);
  OUTLINED_FUNCTION_3_0(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_3();
  [v1 getStringRepresentation_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA69BF80()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA69C080()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7_44();
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_10_38(v1);

  return v3(v2);
}

uint64_t sub_1CA69C16C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v7[34] = v2;

  if (!v2)
  {
    v7[35] = a2;
    v7[36] = a1;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA69C28C()
{
  OUTLINED_FUNCTION_59_0();
  v1 = *(v0[27] + *(v0[25] + 36));
  v0[20] = v0[31];
  v3 = v0[35];
  v2 = v0[36];
  if (v1)
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  v0[21] = v0[32];
  v0[22] = v2;
  v0[23] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
  v5 = swift_task_alloc();
  v6 = sub_1CA948E58();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_1CA27BAF0();
  OUTLINED_FUNCTION_14_33((v0 + 22), v4, v7, v8, v9, v10, MEMORY[0x1E69E6158]);
  sub_1CA69C610(v5);

  OUTLINED_FUNCTION_2_4();

  return v11();
}

uint64_t sub_1CA69C3FC()
{
  OUTLINED_FUNCTION_14();
  swift_willThrow();
  OUTLINED_FUNCTION_2_4();

  return v0(0);
}

uint64_t sub_1CA69C464()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_2_4();

  return v0(0);
}

uint64_t sub_1CA69C4C4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA3D2984;

  return sub_1CA69BE70(a1, a2, a3, v8);
}

uint64_t sub_1CA69C580(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA69C5BC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA69C610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA69C690(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_1CA69C7FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

id sub_1CA69CA98()
{
  v330 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9E0080;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v355 = sub_1CA94C438("xcallback", 9);
  v5 = v4;
  v6 = sub_1CA94C438("xcallback", 9);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v360 = v10;
  v358 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v318 - v358;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v356 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v359 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v357 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v318 - v357;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v355, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v355 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v354 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionResult";
  v21 = @"Description";
  v22 = @"DescriptionResult";
  v23 = sub_1CA94C438("When the app that's opened calls back to Shortcuts using x-success, it may include parameters in the URL. These will be passed as output to the next action, as text if there is just one parameter, or as a dictionary if there are multiple (use Get Dictionary Value to access it).", 278);
  v351 = v24;
  v352 = v23;
  v25 = sub_1CA94C438("When the app that's opened calls back to Shortcuts using x-success, it may include parameters in the URL. These will be passed as output to the next action, as text if there is just one parameter, or as a dictionary if there are multiple (use Get Dictionary Value to access it).", 278);
  v27 = v26;
  v353 = &v318;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v318 - v358;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  v348 = inited;
  v30 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v357;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v352, v351, v25, v27, 0, 0, v28, &v318 - v31);
  v33 = v355;
  *(v20 + 64) = v355;
  *(v20 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v35 = sub_1CA94C438("Performs the specified x-callback-url action. The x-success, x-cancel, and x-error parameters will be added automatically.", 122);
  v351 = v36;
  v352 = v35;
  v350 = sub_1CA94C438("Performs the specified x-callback-url action. The x-success, x-cancel, and x-error parameters will be added automatically.", 122);
  v38 = v37;
  v353 = &v318;
  MEMORY[0x1EEE9AC00](v350);
  v39 = &v318 - v358;
  sub_1CA948D98();
  v40 = [v356 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v352, v351, v350, v38, 0, 0, v39, &v318 - v31);
  *(v20 + 104) = v33;
  *(v20 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v354;
  v45 = sub_1CA6B3784(v43);
  v46 = v348;
  v348[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconColor";
  v46[20] = 1953392980;
  v46[21] = 0xE400000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"IconSymbol";
  v46[25] = 0xD000000000000016;
  v46[26] = 0x80000001CA9E0250;
  v46[28] = v47;
  v46[29] = @"IconSymbolColor";
  v46[30] = 1702194242;
  v46[31] = 0xE400000000000000;
  v46[33] = v47;
  v46[34] = @"Input";
  v48 = v47;
  v49 = v46;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v345 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 0;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  strcpy((v50 + 96), "WFXCallbackURL");
  *(v50 + 111) = -18;
  *(v50 + 120) = v48;
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v335;
  *(v50 + 192) = &unk_1F4A0C698;
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"IconSymbolColor";
  v55 = @"Input";
  v56 = sub_1CA94C1E8();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v354 = v57;
  v49[35] = v56;
  v49[38] = v57;
  v49[39] = @"Name";
  v58 = @"Name";
  v59 = sub_1CA94C438("Open X-Callback URL (Action Name)", 33);
  v61 = v60;
  v62 = sub_1CA94C438("Open X-Callback URL", 19);
  v64 = v63;
  v353 = &v318;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v318 - v358;
  sub_1CA948D98();
  v66 = [v356 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v318 - v357;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v59, v61, v62, v64, 0, 0, v65, v67);
  v70 = v348;
  v348[40] = v69;
  v71 = v355;
  v70[43] = v355;
  v70[44] = @"Output";
  v72 = swift_allocObject();
  *(v72 + 16) = v345;
  *(v72 + 32) = 0x75736F6C63736944;
  *(v72 + 40) = 0xEF6C6576654C6572;
  *(v72 + 48) = 0x63696C627550;
  *(v72 + 56) = 0xE600000000000000;
  *(v72 + 72) = MEMORY[0x1E69E6158];
  *(v72 + 80) = 0x656C7069746C754DLL;
  *(v72 + 88) = 0xE800000000000000;
  *(v72 + 96) = 0;
  *(v72 + 120) = MEMORY[0x1E69E6370];
  *(v72 + 128) = 0x614E74757074754FLL;
  *(v72 + 136) = 0xEA0000000000656DLL;
  v73 = @"Output";
  v74 = sub_1CA94C438("X-Callback Result (Default Output Name)", 39);
  v352 = v75;
  v76 = sub_1CA94C438("X-Callback Result", 17);
  v78 = v77;
  v353 = &v318;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v318 - v358;
  sub_1CA948D98();
  v80 = [v356 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v318 - v357;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 144) = sub_1CA2F9F14(v74, v352, v76, v78, 0, 0, v79, v81);
  *(v72 + 168) = v71;
  *(v72 + 176) = 0x7365707954;
  *(v72 + 216) = v335;
  *(v72 + 184) = 0xE500000000000000;
  *(v72 + 192) = &unk_1F4A0C6C8;
  v83 = MEMORY[0x1E69E6158];
  v84 = sub_1CA94C1E8();
  v85 = v348;
  v348[45] = v84;
  v85[48] = v354;
  v85[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v354 = swift_allocObject();
  *(v354 + 16) = xmmword_1CA98B2D0;
  v353 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v86 = swift_allocObject();
  *(v86 + 16) = v345;
  v328 = 0xD000000000000011;
  v329 = 0x80000001CA99E620;
  *(v86 + 32) = @"Class";
  *(v86 + 40) = 0xD000000000000011;
  *(v86 + 48) = 0x80000001CA99E620;
  *(v86 + 64) = v83;
  *(v86 + 72) = @"Description";
  v87 = @"Class";
  v88 = @"Description";
  v89 = v87;
  v90 = v88;
  v344 = v89;
  v334 = v90;
  v91 = @"Parameters";
  v92 = sub_1CA94C438("Turn this on if you want to open a callback URL that is not x-callback-url compliant and uses keys other than “x-success”, “x-error”, and “x-cancel”. (WFXCallbackCustomCallbackEnabled)", 196);
  v350 = v93;
  v94 = sub_1CA94C438("Turn this on if you want to open a callback URL that is not x-callback-url compliant and uses keys other than “x-success”, “x-error”, and “x-cancel”.", 161);
  v96 = v95;
  v351 = &v318;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v318 - v358;
  sub_1CA948D98();
  v98 = v356;
  v99 = [v356 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v318 - v357;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 80) = sub_1CA2F9F14(v92, v350, v94, v96, 0, 0, v97, v100);
  v102 = v355;
  *(v86 + 104) = v355;
  *(v86 + 112) = @"Key";
  v336 = 0xD000000000000020;
  v337 = 0x80000001CA9E0490;
  *(v86 + 120) = 0xD000000000000020;
  *(v86 + 128) = 0x80000001CA9E0490;
  *(v86 + 144) = MEMORY[0x1E69E6158];
  *(v86 + 152) = @"Label";
  v103 = @"Key";
  v104 = @"Label";
  v105 = v103;
  v106 = v104;
  *&v342 = v105;
  *&v343 = v106;
  v107 = sub_1CA94C438("Custom Callback (WFXCallbackCustomCallbackEnabled)", 50);
  v350 = v108;
  v109 = sub_1CA94C438("Custom Callback", 15);
  v111 = v110;
  v351 = &v318;
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v318 - v358;
  sub_1CA948D98();
  v113 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v318 - v357;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v107, v350, v109, v111, 0, 0, v112, v114);
  *(v86 + 184) = v102;
  *(v86 + 160) = v116;
  _s3__C3KeyVMa_0(0);
  v351 = v117;
  v350 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v118 = sub_1CA94C1E8();
  v119 = sub_1CA2F864C(v118);
  *(v354 + 32) = v119;
  v120 = swift_allocObject();
  v332 = xmmword_1CA981380;
  *(v120 + 16) = xmmword_1CA981380;
  v346 = 0x80000001CA99B500;
  v121 = v344;
  *(v120 + 32) = v344;
  *(v120 + 40) = 0xD000000000000014;
  *(v120 + 48) = 0x80000001CA99B500;
  v122 = MEMORY[0x1E69E6158];
  *(v120 + 64) = MEMORY[0x1E69E6158];
  *(v120 + 72) = @"DefaultValue";
  *(v120 + 80) = 0x7365636375732D78;
  *(v120 + 88) = 0xE900000000000073;
  v123 = v342;
  *(v120 + 104) = v122;
  *(v120 + 112) = v123;
  v347 = 0xD00000000000001BLL;
  *(v120 + 120) = 0xD00000000000001BLL;
  *(v120 + 128) = 0x80000001CA9E0510;
  *(v120 + 144) = v122;
  *(v120 + 152) = @"KeyboardType";
  *(v120 + 160) = 5001813;
  *(v120 + 168) = 0xE300000000000000;
  v124 = v343;
  *(v120 + 184) = v122;
  *(v120 + 192) = v124;
  v125 = @"KeyboardType";
  v126 = @"DefaultValue";
  v325 = v121;
  v326 = v123;
  v333 = v124;
  v323 = v125;
  v327 = v126;
  v127 = sub_1CA94C438("Success Key (WFXCallbackCustomSuccessKey)", 41);
  v129 = v128;
  v130 = sub_1CA94C438("Success Key", 11);
  v132 = v131;
  v344 = &v318;
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v318 - v358;
  sub_1CA948D98();
  v134 = [v356 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v318 - v357;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v120 + 200) = sub_1CA2F9F14(v127, v129, v130, v132, 0, 0, v133, v135);
  *(v120 + 224) = v355;
  *(v120 + 232) = @"RequiredResources";
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v137 = swift_allocObject();
  v343 = xmmword_1CA981310;
  *(v137 + 16) = xmmword_1CA981310;
  v138 = swift_initStackObject();
  v342 = xmmword_1CA9813C0;
  *(v138 + 16) = xmmword_1CA9813C0;
  strcpy((v138 + 32), "WFParameterKey");
  *(v138 + 47) = -18;
  v139 = v337;
  *(v138 + 48) = v336;
  *(v138 + 56) = v139;
  v340 = 0xD000000000000010;
  v341 = 0x80000001CA993570;
  v140 = MEMORY[0x1E69E6158];
  *(v138 + 72) = MEMORY[0x1E69E6158];
  *(v138 + 80) = 0xD000000000000010;
  *(v138 + 88) = 0x80000001CA993570;
  *(v138 + 96) = 1;
  *(v138 + 120) = MEMORY[0x1E69E6370];
  *(v138 + 128) = 0x72756F7365524657;
  v339 = 0x80000001CA993590;
  *(v138 + 168) = v140;
  v141 = v347;
  *(v138 + 136) = 0xEF7373616C436563;
  *(v138 + 144) = v141;
  *(v138 + 152) = 0x80000001CA993590;
  v331 = @"RequiredResources";
  *(v137 + 32) = sub_1CA94C1E8();
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v120 + 264) = v338;
  *(v120 + 240) = v137;
  v142 = sub_1CA94C1E8();
  v143 = sub_1CA2F864C(v142);
  *(v354 + 40) = v143;
  v144 = swift_allocObject();
  *(v144 + 16) = v332;
  v145 = v325;
  v146 = v326;
  *(v144 + 32) = v325;
  *(v144 + 40) = 0xD000000000000014;
  *(v144 + 48) = v346;
  *(v144 + 64) = v140;
  *(v144 + 72) = v146;
  *(v144 + 80) = 0xD00000000000001ALL;
  *(v144 + 88) = 0x80000001CA9E0570;
  v147 = v323;
  *(v144 + 104) = v140;
  *(v144 + 112) = v147;
  *(v144 + 120) = 5001813;
  *(v144 + 128) = 0xE300000000000000;
  v148 = v333;
  *(v144 + 144) = v140;
  *(v144 + 152) = v148;
  v324 = v145;
  v325 = v146;
  v326 = v148;
  v323 = v147;
  v149 = sub_1CA94C438("Cancel Key (WFXCallbackCustomCancelKey)", 39);
  v321 = v150;
  v322 = v149;
  v320 = sub_1CA94C438("Cancel Key", 10);
  v152 = v151;
  v333 = &v318;
  MEMORY[0x1EEE9AC00](v320);
  v153 = v358;
  sub_1CA948D98();
  v154 = [v356 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = v357;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v144 + 160) = sub_1CA2F9F14(v322, v321, v320, v152, 0, 0, &v318 - v153, &v318 - v155);
  *(v144 + 184) = v355;
  *(v144 + 192) = @"Placeholder";
  v333 = @"Placeholder";
  v157 = sub_1CA94C438("optional (WFXCallbackCustomCancelKey)", 37);
  v320 = v158;
  v321 = v157;
  v159 = sub_1CA94C438("optional", 8);
  v319 = v160;
  v322 = &v318;
  MEMORY[0x1EEE9AC00](v159);
  v161 = &v318 - v153;
  sub_1CA948D98();
  v162 = v356;
  v163 = [v356 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v144 + 200) = sub_1CA2F9F14(v321, v320, v159, v319, 0, 0, v161, &v318 - v155);
  v165 = v331;
  *(v144 + 224) = v355;
  *(v144 + 232) = v165;
  v166 = swift_allocObject();
  *(v166 + 16) = v343;
  v167 = swift_allocObject();
  *(v167 + 16) = v342;
  strcpy((v167 + 32), "WFParameterKey");
  *(v167 + 47) = -18;
  v168 = v337;
  *(v167 + 48) = v336;
  *(v167 + 56) = v168;
  v169 = MEMORY[0x1E69E6158];
  v171 = v340;
  v170 = v341;
  *(v167 + 72) = MEMORY[0x1E69E6158];
  *(v167 + 80) = v171;
  *(v167 + 88) = v170;
  *(v167 + 96) = 1;
  *(v167 + 120) = MEMORY[0x1E69E6370];
  *(v167 + 128) = 0x72756F7365524657;
  *(v167 + 168) = v169;
  *(v167 + 136) = 0xEF7373616C436563;
  v172 = v339;
  *(v167 + 144) = v347;
  *(v167 + 152) = v172;
  v331 = v165;
  *(v166 + 32) = sub_1CA94C1E8();
  *(v144 + 264) = v338;
  *(v144 + 240) = v166;
  v173 = sub_1CA94C1E8();
  v174 = sub_1CA2F864C(v173);
  *(v354 + 48) = v174;
  v175 = swift_allocObject();
  *(v175 + 16) = v332;
  v176 = v324;
  v177 = v325;
  *(v175 + 32) = v324;
  *(v175 + 40) = 0xD000000000000014;
  *(v175 + 48) = v346;
  v178 = v169;
  *(v175 + 64) = v169;
  *(v175 + 72) = v177;
  *(v175 + 80) = 0xD000000000000019;
  *(v175 + 88) = 0x80000001CA9E0600;
  *(v175 + 104) = v169;
  v179 = v323;
  *(v175 + 112) = v323;
  *(v175 + 120) = 5001813;
  *(v175 + 128) = 0xE300000000000000;
  v180 = v326;
  *(v175 + 144) = v178;
  *(v175 + 152) = v180;
  v324 = v176;
  v325 = v177;
  v326 = v180;
  *&v332 = v179;
  v181 = sub_1CA94C438("Error Key (WFXCallbackCustomErrorKey)", 37);
  v321 = v182;
  v322 = v181;
  v183 = sub_1CA94C438("Error Key", 9);
  v320 = v184;
  v323 = &v318;
  MEMORY[0x1EEE9AC00](v183);
  v185 = v358;
  sub_1CA948D98();
  v186 = [v162 bundleURL];
  v319 = &v318;
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v318 - v357;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v175 + 160) = sub_1CA2F9F14(v322, v321, v183, v320, 0, 0, &v318 - v185, v187);
  v189 = v355;
  v190 = v333;
  *(v175 + 184) = v355;
  *(v175 + 192) = v190;
  v191 = sub_1CA94C438("optional (WFXCallbackCustomErrorKey)", 36);
  v321 = v192;
  v322 = v191;
  v193 = sub_1CA94C438("optional", 8);
  v320 = v194;
  v323 = &v318;
  MEMORY[0x1EEE9AC00](v193);
  sub_1CA948D98();
  v195 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v195);
  v196 = v357;
  sub_1CA948B68();

  v197 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v175 + 200) = sub_1CA2F9F14(v322, v321, v193, v320, 0, 0, &v318 - v185, &v318 - v196);
  v198 = v331;
  *(v175 + 224) = v189;
  *(v175 + 232) = v198;
  v199 = swift_allocObject();
  *(v199 + 16) = v343;
  v200 = swift_allocObject();
  *(v200 + 16) = v342;
  strcpy((v200 + 32), "WFParameterKey");
  *(v200 + 47) = -18;
  v201 = v337;
  *(v200 + 48) = v336;
  *(v200 + 56) = v201;
  v202 = MEMORY[0x1E69E6158];
  v204 = v340;
  v203 = v341;
  *(v200 + 72) = MEMORY[0x1E69E6158];
  *(v200 + 80) = v204;
  *(v200 + 88) = v203;
  *(v200 + 96) = 1;
  *(v200 + 120) = MEMORY[0x1E69E6370];
  *(v200 + 128) = 0x72756F7365524657;
  *(v200 + 168) = v202;
  *(v200 + 136) = 0xEF7373616C436563;
  v205 = v339;
  *(v200 + 144) = v347;
  *(v200 + 152) = v205;
  v206 = v202;
  *(v199 + 32) = sub_1CA94C1E8();
  *(v175 + 264) = v338;
  *(v175 + 240) = v199;
  v207 = sub_1CA94C1E8();
  v208 = sub_1CA2F864C(v207);
  *(v354 + 56) = v208;
  v209 = swift_allocObject();
  *(v209 + 16) = v345;
  v210 = v324;
  v212 = v328;
  v211 = v329;
  *(v209 + 32) = v324;
  *(v209 + 40) = v212;
  *(v209 + 48) = v211;
  v213 = v334;
  *(v209 + 64) = v206;
  *(v209 + 72) = v213;
  *&v345 = v210;
  v336 = sub_1CA94C438("If enabled, Shortcuts will use a custom success callback URL. This is useful if the app you are calling uses placeholders in the x-success URL to pass output. (WFXCallbackCustomSuccessURLEnabled)", 195);
  v329 = v214;
  v215 = sub_1CA94C438("If enabled, Shortcuts will use a custom success callback URL. This is useful if the app you are calling uses placeholders in the x-success URL to pass output.", 158);
  v217 = v216;
  v337 = &v318;
  MEMORY[0x1EEE9AC00](v215);
  v218 = v358;
  sub_1CA948D98();
  v219 = [v356 bundleURL];
  MEMORY[0x1EEE9AC00](v219);
  sub_1CA948B68();

  v220 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v209 + 80) = sub_1CA2F9F14(v336, v329, v215, v217, 0, 0, &v318 - v218, &v318 - v196);
  v221 = v355;
  v222 = v325;
  v223 = v326;
  *(v209 + 104) = v355;
  *(v209 + 112) = v222;
  v328 = 0xD000000000000022;
  v329 = 0x80000001CA9E07F0;
  *(v209 + 120) = 0xD000000000000022;
  *(v209 + 128) = 0x80000001CA9E07F0;
  *(v209 + 144) = MEMORY[0x1E69E6158];
  *(v209 + 152) = v223;
  v336 = v222;
  v337 = v223;
  v224 = sub_1CA94C438("Custom X-Success URL (WFXCallbackCustomSuccessURLEnabled)", 57);
  v324 = v225;
  v325 = v224;
  v226 = sub_1CA94C438("Custom X-Success URL", 20);
  v228 = v227;
  v326 = &v318;
  MEMORY[0x1EEE9AC00](v226);
  sub_1CA948D98();
  v229 = [v356 bundleURL];
  MEMORY[0x1EEE9AC00](v229);
  sub_1CA948B68();

  v230 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v231 = sub_1CA2F9F14(v325, v324, v226, v228, 0, 0, &v318 - v218, &v318 - v196);
  *(v209 + 184) = v221;
  *(v209 + 160) = v231;
  v232 = sub_1CA94C1E8();
  v233 = sub_1CA2F864C(v232);
  *(v354 + 64) = v233;
  v234 = swift_allocObject();
  *(v234 + 16) = xmmword_1CA981400;
  *(v234 + 32) = v345;
  *(v234 + 40) = 0xD000000000000014;
  *(v234 + 48) = v346;
  v235 = MEMORY[0x1E69E6158];
  v236 = v327;
  *(v234 + 64) = MEMORY[0x1E69E6158];
  *(v234 + 72) = v236;
  *(v234 + 80) = 0xD000000000000014;
  *(v234 + 88) = 0x80000001CA9E0880;
  v237 = v334;
  *(v234 + 104) = v235;
  *(v234 + 112) = v237;
  v238 = sub_1CA94C438("For example, you might use shortcuts://callback?result=[[output]] (WFXCallbackCustomSuccessURL)", 95);
  v326 = v239;
  v327 = v238;
  v240 = sub_1CA94C438("For example, you might use shortcuts://callback?result=[[output]]", 65);
  v325 = v241;
  v334 = &v318;
  MEMORY[0x1EEE9AC00](v240);
  v242 = v358;
  sub_1CA948D98();
  v243 = v356;
  v244 = [v356 bundleURL];
  MEMORY[0x1EEE9AC00](v244);
  v245 = &v318 - v357;
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v234 + 120) = sub_1CA2F9F14(v327, v326, v240, v325, 0, 0, &v318 - v242, v245);
  v247 = v336;
  *(v234 + 144) = v355;
  *(v234 + 152) = v247;
  *(v234 + 160) = v347;
  *(v234 + 168) = 0x80000001CA9E0950;
  v248 = MEMORY[0x1E69E6158];
  v249 = v332;
  *(v234 + 184) = MEMORY[0x1E69E6158];
  *(v234 + 192) = v249;
  *(v234 + 200) = 5001813;
  *(v234 + 208) = 0xE300000000000000;
  v250 = v337;
  *(v234 + 224) = v248;
  *(v234 + 232) = v250;
  v251 = sub_1CA94C438("X-Success URL (WFXCallbackCustomSuccessURL)", 43);
  v326 = v252;
  v327 = v251;
  v253 = sub_1CA94C438("X-Success URL", 13);
  v325 = v254;
  v334 = &v318;
  MEMORY[0x1EEE9AC00](v253);
  v255 = &v318 - v242;
  sub_1CA948D98();
  v256 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v256);
  v257 = v357;
  sub_1CA948B68();

  v258 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v234 + 240) = sub_1CA2F9F14(v327, v326, v253, v325, 0, 0, v255, &v318 - v257);
  v259 = v331;
  *(v234 + 264) = v355;
  *(v234 + 272) = v259;
  v260 = swift_allocObject();
  *(v260 + 16) = v343;
  v261 = swift_allocObject();
  *(v261 + 16) = v342;
  strcpy((v261 + 32), "WFParameterKey");
  *(v261 + 47) = -18;
  v262 = v329;
  *(v261 + 48) = v328;
  *(v261 + 56) = v262;
  v263 = MEMORY[0x1E69E6158];
  v265 = v340;
  v264 = v341;
  *(v261 + 72) = MEMORY[0x1E69E6158];
  *(v261 + 80) = v265;
  *(v261 + 88) = v264;
  *(v261 + 96) = 1;
  v266 = MEMORY[0x1E69E6370];
  *(v261 + 120) = MEMORY[0x1E69E6370];
  *(v261 + 128) = 0x72756F7365524657;
  *(v261 + 168) = v263;
  *(v261 + 136) = 0xEF7373616C436563;
  v267 = v339;
  *(v261 + 144) = v347;
  *(v261 + 152) = v267;
  v268 = v263;
  *(v260 + 32) = sub_1CA94C1E8();
  *(v234 + 304) = v338;
  *(v234 + 280) = v260;
  v269 = sub_1CA94C1E8();
  v270 = sub_1CA2F864C(v269);
  *(v354 + 72) = v270;
  v271 = swift_allocObject();
  *(v271 + 16) = xmmword_1CA981300;
  *(v271 + 32) = @"AutocapitalizationType";
  *(v271 + 40) = 1701736270;
  *(v271 + 48) = 0xE400000000000000;
  v272 = v345;
  *(v271 + 64) = v268;
  *(v271 + 72) = v272;
  *(v271 + 80) = 0xD000000000000014;
  *(v271 + 88) = v346;
  *(v271 + 104) = v268;
  *(v271 + 112) = @"DisableAutocorrection";
  *(v271 + 120) = 1;
  v273 = v336;
  *(v271 + 144) = v266;
  *(v271 + 152) = v273;
  strcpy((v271 + 160), "WFXCallbackURL");
  *(v271 + 175) = -18;
  v274 = v332;
  *(v271 + 184) = v268;
  *(v271 + 192) = v274;
  *(v271 + 200) = 5001813;
  *(v271 + 208) = 0xE300000000000000;
  v275 = v337;
  *(v271 + 224) = v268;
  *(v271 + 232) = v275;
  v276 = @"AutocapitalizationType";
  v277 = @"DisableAutocorrection";
  v349 = sub_1CA94C438("X-Callback URL (WFXCallbackURL)", 31);
  v347 = v278;
  v279 = sub_1CA94C438("X-Callback URL", 14);
  v346 = v280;
  v352 = &v318;
  MEMORY[0x1EEE9AC00](v279);
  v281 = v358;
  sub_1CA948D98();
  v282 = v356;
  v283 = [v356 bundleURL];
  *&v345 = &v318;
  MEMORY[0x1EEE9AC00](v283);
  v284 = v257;
  sub_1CA948B68();

  v285 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v271 + 240) = sub_1CA2F9F14(v349, v347, v279, v346, 0, 0, &v318 - v281, &v318 - v257);
  v286 = v355;
  v287 = v333;
  *(v271 + 264) = v355;
  *(v271 + 272) = v287;
  v349 = sub_1CA94C438("X-Callback URL (WFXCallbackURL)", 31);
  v347 = v288;
  v289 = sub_1CA94C438("X-Callback URL", 14);
  v291 = v290;
  v352 = &v318;
  MEMORY[0x1EEE9AC00](v289);
  v292 = &v318 - v281;
  sub_1CA948D98();
  v293 = [v282 bundleURL];
  MEMORY[0x1EEE9AC00](v293);
  sub_1CA948B68();

  v294 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v271 + 280) = sub_1CA2F9F14(v349, v347, v289, v291, 0, 0, v292, &v318 - v284);
  *(v271 + 304) = v286;
  *(v271 + 312) = @"TextContentType";
  *(v271 + 344) = MEMORY[0x1E69E6158];
  *(v271 + 320) = 5001813;
  *(v271 + 328) = 0xE300000000000000;
  v295 = @"TextContentType";
  v296 = sub_1CA94C1E8();
  v297 = sub_1CA2F864C(v296);
  v298 = v354;
  *(v354 + 80) = v297;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v300 = v348;
  v348[50] = v298;
  v300[53] = v299;
  v300[54] = @"ParameterSummary";
  v301 = @"ParameterSummary";
  v302 = sub_1CA94C438("Open ${WFXCallbackURL} with x-callback (Parameter Summary)", 58);
  v304 = v303;
  v305 = sub_1CA94C438("Open ${WFXCallbackURL} with x-callback", 38);
  v307 = v306;
  MEMORY[0x1EEE9AC00](v305);
  v308 = &v318 - v358;
  sub_1CA948D98();
  v309 = [v356 bundleURL];
  MEMORY[0x1EEE9AC00](v309);
  v310 = &v318 - v357;
  sub_1CA948B68();

  v311 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v312 = sub_1CA2F9F14(v302, v304, v305, v307, 0, 0, v308, v310);
  v313 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v314 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v315 = v348;
  v348[55] = v313;
  v315[58] = v314;
  v315[59] = @"RequiredResources";
  v315[63] = v335;
  v315[60] = &unk_1F4A0C708;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v316 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}
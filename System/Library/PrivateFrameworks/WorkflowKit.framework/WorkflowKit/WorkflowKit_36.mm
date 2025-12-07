void sub_1CA61596C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v47 = 0;
    v24 = 0;
    v40 = a3 + 56;
    v25 = 1 << *(a3 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(a3 + 56);
    v28 = (v25 + 63) >> 6;
    v29 = a4 + 56;
    v43 = v28;
LABEL_24:
    while (v27)
    {
      v30 = __clz(__rbit64(v27));
      v49 = (v27 - 1) & v27;
LABEL_31:
      v46 = v30 | (v24 << 6);
      v33 = *(*(v5 + 48) + 8 * v46);
      v34 = sub_1CA94CFC8();
      v35 = ~(-1 << *(v4 + 32));
      do
      {
        v36 = v34 & v35;
        if (((*(v29 + (((v34 & v35) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v34 & v35)) & 1) == 0)
        {

          v4 = a4;
          v28 = v43;
          v27 = v49;
          goto LABEL_24;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        v37 = *(*(a4 + 48) + 8 * v36);
        v38 = sub_1CA94CFD8();

        v34 = v36 + 1;
      }

      while ((v38 & 1) == 0);

      *(a1 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v27 = v49;
      v23 = __OFADD__(v47++, 1);
      v4 = a4;
      v28 = v43;
      if (v23)
      {
        goto LABEL_42;
      }
    }

    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v24 >= v28)
      {
LABEL_38:

        sub_1CA6B0874(a1, a2, v47, v5);
        return;
      }

      v32 = *(v40 + 8 * v24);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v49 = (v32 - 1) & v32;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v6 = 0;
    v39 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v47 = 0;
    v48 = a3 + 56;
    v42 = v10;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v45 = (v9 - 1) & v9;
LABEL_13:
      v14 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
      v15 = sub_1CA94CFC8();
      v16 = v5;
      v17 = ~(-1 << *(v5 + 32));
      do
      {
        v18 = v15 & v17;
        v19 = (v15 & v17) >> 6;
        v20 = 1 << (v15 & v17);
        if ((v20 & *(v48 + 8 * v19)) == 0)
        {

          v5 = v16;
          v4 = a4;
          v10 = v42;
          v9 = v45;
          goto LABEL_6;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        v21 = *(*(v16 + 48) + 8 * v18);
        v22 = sub_1CA94CFD8();

        v15 = v18 + 1;
      }

      while ((v22 & 1) == 0);

      v10 = v42;
      *(a1 + 8 * v19) |= v20;
      v9 = v45;
      v23 = __OFADD__(v47++, 1);
      v5 = v16;
      v4 = a4;
      if (v23)
      {
        goto LABEL_41;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v13 = *(v39 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v45 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1CA615D04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_19:
    v36 = 0;
    v21 = 0;
    v22 = 1 << *(a3 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(a3 + 56);
    v25 = (v22 + 63) >> 6;
LABEL_23:
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_30:
      v29 = v26 | (v21 << 6);
      v30 = *(*(a3 + 48) + 8 * v29);
      v31 = sub_1CA94D908();
      v32 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v33 = v31 & v32;
        if (((*(a4 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
        {
          break;
        }

        v31 = v33 + 1;
        if (*(*(a4 + 48) + 8 * v33) == v30)
        {
          *(result + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
          v20 = __OFADD__(v36++, 1);
          if (!v20)
          {
            goto LABEL_23;
          }

          __break(1u);
          goto LABEL_36;
        }
      }
    }

    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {
        goto LABEL_36;
      }

      v28 = *(a3 + 56 + 8 * v21);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v35 = 0;
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
      v15 = sub_1CA94D908();
      v16 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v17 = v15 & v16;
        v18 = (v15 & v16) >> 6;
        v19 = 1 << (v15 & v16);
        if ((v19 & *(a3 + 56 + 8 * v18)) == 0)
        {
          break;
        }

        v15 = v17 + 1;
        if (*(*(a3 + 48) + 8 * v17) == v14)
        {
          *(result + 8 * v18) |= v19;
          v20 = __OFADD__(v35++, 1);
          if (!v20)
          {
            goto LABEL_6;
          }

          __break(1u);
          goto LABEL_19;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
LABEL_36:

        sub_1CA6B0888();
        return;
      }

      v13 = *(a4 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1CA615FC8()
{
  v140 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9D5C90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v143 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v9 = sub_1CA94C438("Adds the input to Pocket.", 25);
  v144 = v10;
  v11 = sub_1CA94C438("Adds the input to Pocket.", 25);
  v13 = v12;
  v14 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v147 = v15;
  v149 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v128 - v149;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v145 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v146 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v148 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v128 - v148;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v9, v144, v11, v13, 0, 0, v16, v20);
  v144 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v144;
  *(v6 + 40) = v22;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v23 = sub_1CA94C1E8();
  v24 = v143;
  *(inited + 120) = sub_1CA6B3784(v23);
  *(inited + 144) = v24;
  *(inited + 152) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1CA981350;
  *(v25 + 32) = 0x656C7069746C754DLL;
  *(v25 + 40) = 0xE800000000000000;
  v26 = MEMORY[0x1E69E6370];
  *(v25 + 48) = 1;
  *(v25 + 72) = v26;
  strcpy((v25 + 80), "ParameterKey");
  *(v25 + 93) = 0;
  *(v25 + 94) = -5120;
  *(v25 + 96) = 0x557475706E494657;
  *(v25 + 104) = 0xEA00000000004C52;
  *(v25 + 120) = MEMORY[0x1E69E6158];
  *(v25 + 128) = 0x6465726975716552;
  *(v25 + 136) = 0xE800000000000000;
  *(v25 + 144) = 1;
  *(v25 + 168) = v26;
  *(v25 + 176) = 0x7365707954;
  v27 = v26;
  *(v25 + 184) = 0xE500000000000000;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v25 + 216) = v139;
  *(v25 + 192) = &unk_1F4A09698;
  v28 = @"Input";
  v29 = sub_1CA94C1E8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 160) = v29;
  *(inited + 184) = v30;
  *(inited + 192) = @"InputPassthrough";
  *(inited + 200) = 1;
  *(inited + 224) = v27;
  *(inited + 232) = @"Name";
  v31 = @"InputPassthrough";
  v32 = @"Name";
  v33 = sub_1CA94C438("Add to Pocket (Action Name)", 27);
  v35 = v34;
  v36 = sub_1CA94C438("Add to Pocket", 13);
  v38 = v37;
  v143 = &v128;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v128 - v149;
  sub_1CA948D98();
  v40 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v128 - v148;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v33, v35, v36, v38, 0, 0, v39, v41);
  *(inited + 264) = v144;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v143 = swift_allocObject();
  *(v143 + 1) = xmmword_1CA981360;
  v142 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_1CA981370;
  v138 = 0x80000001CA99B500;
  *(v43 + 32) = @"Class";
  *(v43 + 40) = 0xD000000000000014;
  *(v43 + 48) = 0x80000001CA99B500;
  *(v43 + 64) = MEMORY[0x1E69E6158];
  *(v43 + 72) = @"Description";
  v136 = @"Class";
  v44 = @"Parameters";
  v45 = @"Description";
  v46 = sub_1CA94C438("A comma-separated list of tags to apply to the items added to Pocket. (WFPocketTags)", 84);
  v133 = v47;
  v134 = v46;
  v48 = sub_1CA94C438("A comma-separated list of tags to apply to the items added to Pocket.", 69);
  v50 = v49;
  v135 = &v128;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v128 - v149;
  sub_1CA948D98();
  v52 = [v145 bundleURL];
  v141 = inited;
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v128 - v148;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v43 + 80) = sub_1CA2F9F14(v134, v133, v48, v50, 0, 0, v51, v53);
  *(v43 + 104) = v144;
  *(v43 + 112) = @"Key";
  strcpy((v43 + 120), "WFPocketTags");
  *(v43 + 133) = 0;
  *(v43 + 134) = -5120;
  *(v43 + 144) = MEMORY[0x1E69E6158];
  *(v43 + 152) = @"Label";
  v55 = @"Key";
  v56 = @"Label";
  v133 = v55;
  v135 = v56;
  v57 = sub_1CA94C438("Tags (WFPocketTags)", 19);
  v131 = v58;
  v132 = v57;
  v59 = sub_1CA94C438("Tags", 4);
  v130 = v60;
  v134 = &v128;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v128 - v149;
  sub_1CA948D98();
  v62 = v145;
  v63 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v148;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v43 + 160) = sub_1CA2F9F14(v132, v131, v59, v130, 0, 0, v61, &v128 - v64);
  v66 = v144;
  *(v43 + 184) = v144;
  *(v43 + 192) = @"Placeholder";
  v134 = @"Placeholder";
  v67 = sub_1CA94C438("example, tags (WFPocketTags)", 28);
  v130 = v68;
  v131 = v67;
  v69 = sub_1CA94C438("example, tags", 13);
  v129 = v70;
  v132 = &v128;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v128 - v149;
  sub_1CA948D98();
  v72 = [v62 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v131, v130, v69, v129, 0, 0, v71, &v128 - v64);
  *(v43 + 224) = v66;
  *(v43 + 200) = v74;
  _s3__C3KeyVMa_0(0);
  v132 = v75;
  v131 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v76 = sub_1CA94C1E8();
  v77 = sub_1CA2F864C(v76);
  v143[4] = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1CA981300;
  *(v78 + 32) = @"AutocapitalizationType";
  *(v78 + 40) = 1701736270;
  *(v78 + 48) = 0xE400000000000000;
  v79 = MEMORY[0x1E69E6158];
  v80 = v136;
  *(v78 + 64) = MEMORY[0x1E69E6158];
  *(v78 + 72) = v80;
  *(v78 + 80) = 0xD000000000000014;
  *(v78 + 88) = v138;
  *(v78 + 104) = v79;
  *(v78 + 112) = @"DisableAutocorrection";
  *(v78 + 120) = 1;
  v81 = v133;
  *(v78 + 144) = MEMORY[0x1E69E6370];
  *(v78 + 152) = v81;
  *(v78 + 160) = 0x557475706E494657;
  *(v78 + 168) = 0xEA00000000004C52;
  *(v78 + 184) = v79;
  *(v78 + 192) = @"KeyboardType";
  *(v78 + 200) = 5001813;
  *(v78 + 208) = 0xE300000000000000;
  v82 = v135;
  *(v78 + 224) = v79;
  *(v78 + 232) = v82;
  v83 = @"AutocapitalizationType";
  v84 = @"DisableAutocorrection";
  v85 = @"KeyboardType";
  v86 = sub_1CA94C438("URL (WFInputURL)", 16);
  v136 = v87;
  v137 = v86;
  v135 = sub_1CA94C438("URL", 3);
  v89 = v88;
  v138 = &v128;
  MEMORY[0x1EEE9AC00](v135);
  v90 = v149;
  sub_1CA948D98();
  v91 = v62;
  v92 = [v62 bundleURL];
  v133 = &v128;
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v128 - v148;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 240) = sub_1CA2F9F14(v137, v136, v135, v89, 0, 0, &v128 - v90, v93);
  v95 = v144;
  v96 = v134;
  *(v78 + 264) = v144;
  *(v78 + 272) = v96;
  v97 = sub_1CA94C438("URL (WFInputURL)", 16);
  v136 = v98;
  v137 = v97;
  v99 = sub_1CA94C438("URL", 3);
  v101 = v100;
  v138 = &v128;
  MEMORY[0x1EEE9AC00](v99);
  sub_1CA948D98();
  v102 = [v91 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v128 - v148;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 280) = sub_1CA2F9F14(v137, v136, v99, v101, 0, 0, &v128 - v90, v103);
  *(v78 + 304) = v95;
  *(v78 + 312) = @"TextContentType";
  *(v78 + 344) = MEMORY[0x1E69E6158];
  *(v78 + 320) = 5001813;
  *(v78 + 328) = 0xE300000000000000;
  v105 = @"TextContentType";
  v106 = sub_1CA94C1E8();
  v107 = sub_1CA2F864C(v106);
  v108 = v143;
  v143[5] = v107;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v110 = v141;
  v141[35] = v108;
  v110[38] = v109;
  v110[39] = @"ParameterSummary";
  v111 = @"ParameterSummary";
  v112 = sub_1CA94C438("Add ${WFInputURL} (Parameter Summary)", 37);
  v114 = v113;
  v115 = sub_1CA94C438("Add ${WFInputURL}", 17);
  v117 = v116;
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v128 - v149;
  sub_1CA948D98();
  v119 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v128 - v148;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = sub_1CA2F9F14(v112, v114, v115, v117, 0, 0, v118, v120);
  v123 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v124 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v125 = v141;
  v141[40] = v123;
  v125[43] = v124;
  v125[44] = @"RequiredResources";
  v125[48] = v139;
  v125[45] = &unk_1F4A096C8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v126 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA61705C()
{
  v162 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9D5E40;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v169 = inited;
  *&v166 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1CA97EDF0;
  *(v2 + 32) = @"DescriptionResult";
  v3 = @"ActionClass";
  v4 = @"Description";
  v5 = @"DescriptionResult";
  v167 = sub_1CA94C438("CloudApp URL", 12);
  v168 = v6;
  v7 = sub_1CA94C438("CloudApp URL", 12);
  v165 = v8;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v174 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v155 - v174;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v172 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v171 = v15;
  v173 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v155 - v173;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v167, v168, v7, v165, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v2 + 40) = v18;
  *(v2 + 64) = v19;
  *(v2 + 72) = @"DescriptionSummary";
  v168 = v19;
  v20 = @"DescriptionSummary";
  v21 = sub_1CA94C438("Uploads the input to CloudApp and returns the CloudApp URL.", 59);
  v165 = v22;
  v23 = sub_1CA94C438("Uploads the input to CloudApp and returns the CloudApp URL.", 59);
  v25 = v24;
  v167 = v155;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v155 - v174;
  sub_1CA948D98();
  v27 = [v12 bundleURL];
  v170 = v10;
  MEMORY[0x1EEE9AC00](v27);
  v28 = v155 - v173;
  sub_1CA948B68();

  v29 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v30 = sub_1CA2F9F14(v21, v165, v23, v25, 0, 0, v26, v28);
  *(v2 + 104) = v19;
  *(v2 + 80) = v30;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v31 = sub_1CA94C1E8();
  v32 = v166;
  v33 = sub_1CA6B3784(v31);
  v34 = v169;
  v169[10] = v33;
  v34[13] = v32;
  v34[14] = @"Discoverable";
  v35 = MEMORY[0x1E69E6370];
  *(v34 + 120) = 0;
  v34[18] = v35;
  v34[19] = @"IconName";
  v36 = v35;
  v34[20] = 0x70704164756F6C43;
  v34[21] = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6158];
  v34[23] = MEMORY[0x1E69E6158];
  v34[24] = @"Input";
  v38 = v37;
  v39 = v34;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v166 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  *(v40 + 48) = 1;
  *(v40 + 72) = v36;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x7475706E494657;
  *(v40 + 104) = 0xE700000000000000;
  *(v40 + 120) = v38;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v36;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v167;
  *(v40 + 192) = &unk_1F4A09708;
  v41 = @"Discoverable";
  v42 = @"IconName";
  v43 = @"Input";
  v44 = sub_1CA94C1E8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v165 = v45;
  v39[25] = v44;
  v39[28] = v45;
  v39[29] = @"Name";
  v46 = @"Name";
  v47 = sub_1CA94C438("Upload to CloudApp (Action Name)", 32);
  v49 = v48;
  v50 = sub_1CA94C438("Upload to CloudApp", 18);
  v52 = v51;
  v163 = v155;
  MEMORY[0x1EEE9AC00](v50);
  v53 = v155 - v174;
  sub_1CA948D98();
  v54 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = v155 - v173;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  v59 = v168;
  v58 = v169;
  v169[30] = v57;
  v58[33] = v59;
  v58[34] = @"Output";
  v60 = swift_initStackObject();
  *(v60 + 16) = v166;
  *(v60 + 32) = 0x75736F6C63736944;
  *(v60 + 40) = 0xEF6C6576654C6572;
  *(v60 + 48) = 0x63696C627550;
  *(v60 + 56) = 0xE600000000000000;
  *(v60 + 72) = MEMORY[0x1E69E6158];
  *(v60 + 80) = 0x656C7069746C754DLL;
  *(v60 + 88) = 0xE800000000000000;
  *(v60 + 96) = 1;
  *(v60 + 120) = MEMORY[0x1E69E6370];
  *(v60 + 128) = 0x614E74757074754FLL;
  *(v60 + 136) = 0xEA0000000000656DLL;
  v61 = @"Output";
  v163 = sub_1CA94C438("CloudApp URLs (Default Output Name)", 35);
  v161 = v62;
  v63 = sub_1CA94C438("CloudApp URLs", 13);
  v65 = v64;
  v164 = v155;
  MEMORY[0x1EEE9AC00](v63);
  v66 = v155 - v174;
  sub_1CA948D98();
  v67 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = v155 - v173;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 144) = sub_1CA2F9F14(v163, v161, v63, v65, 0, 0, v66, v68);
  *(v60 + 168) = v59;
  *(v60 + 176) = 0x7365707954;
  *(v60 + 216) = v167;
  *(v60 + 184) = 0xE500000000000000;
  *(v60 + 192) = &unk_1F4A09748;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = v169;
  v169[35] = v71;
  v72[38] = v165;
  v72[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v165 = swift_allocObject();
  v160 = xmmword_1CA981360;
  *(v165 + 16) = xmmword_1CA981360;
  v164 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1CA981370;
  *(v73 + 32) = @"Class";
  *(v73 + 40) = 0xD000000000000016;
  *(v73 + 48) = 0x80000001CA99C4A0;
  *(v73 + 64) = v70;
  *(v73 + 72) = @"DefaultValue";
  *(v73 + 80) = 0x65746176697250;
  *(v73 + 88) = 0xE700000000000000;
  *(v73 + 104) = v70;
  *(v73 + 112) = @"Items";
  v163 = swift_allocObject();
  *(v163 + 1) = v160;
  *&v160 = @"Class";
  v74 = @"Parameters";
  v75 = @"DefaultValue";
  v76 = @"Items";
  v77 = sub_1CA94C438("Private (WFCloudAppPrivacyType)", 31);
  v157 = v78;
  v158 = v77;
  v79 = sub_1CA94C438("Private", 7);
  v156 = v80;
  v159 = v155;
  MEMORY[0x1EEE9AC00](v79);
  v81 = v174;
  sub_1CA948D98();
  v82 = v172;
  v83 = [v172 bundleURL];
  v155[1] = v155;
  MEMORY[0x1EEE9AC00](v83);
  v84 = v173;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v158, v157, v79, v156, 0, 0, v155 - v81, v155 - v84);
  v163[4] = v86;
  v87 = sub_1CA94C438("Public (WFCloudAppPrivacyType)", 30);
  v157 = v88;
  v158 = v87;
  v89 = sub_1CA94C438("Public", 6);
  v156 = v90;
  v159 = v155;
  MEMORY[0x1EEE9AC00](v89);
  sub_1CA948D98();
  v91 = [v82 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v158, v157, v89, v156, 0, 0, v155 - v81, v155 - v84);
  v94 = v163;
  v163[5] = v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v73 + 120) = v94;
  *(v73 + 144) = v95;
  *(v73 + 152) = @"Key";
  *(v73 + 160) = 0xD000000000000015;
  *(v73 + 168) = 0x80000001CA9D5F80;
  *(v73 + 184) = MEMORY[0x1E69E6158];
  *(v73 + 192) = @"Label";
  v96 = @"Key";
  v97 = @"Label";
  v158 = v96;
  v157 = v97;
  v98 = sub_1CA94C438("Link Privacy (WFCloudAppPrivacyType)", 36);
  v100 = v99;
  v101 = sub_1CA94C438("Link Privacy", 12);
  v103 = v102;
  v163 = v155;
  MEMORY[0x1EEE9AC00](v101);
  v104 = v155 - v174;
  sub_1CA948D98();
  v105 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = v155 - v173;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v98, v100, v101, v103, 0, 0, v104, v106);
  *(v73 + 224) = v168;
  *(v73 + 200) = v108;
  _s3__C3KeyVMa_0(0);
  v163 = v109;
  v159 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v110 = sub_1CA94C1E8();
  v111 = sub_1CA2F864C(v110);
  *(v165 + 32) = v111;
  v112 = swift_allocObject();
  *(v112 + 16) = v166;
  *(v112 + 32) = v160;
  *(v112 + 40) = 0xD000000000000019;
  *(v112 + 48) = 0x80000001CA99B030;
  v113 = MEMORY[0x1E69E6158];
  v114 = v158;
  *(v112 + 64) = MEMORY[0x1E69E6158];
  *(v112 + 72) = v114;
  *(v112 + 80) = 0x7475706E494657;
  *(v112 + 88) = 0xE700000000000000;
  v115 = v157;
  *(v112 + 104) = v113;
  *(v112 + 112) = v115;
  v161 = sub_1CA94C438("Content (WFInput)", 17);
  *&v160 = v116;
  v117 = sub_1CA94C438("Content", 7);
  v158 = v118;
  *&v166 = v155;
  MEMORY[0x1EEE9AC00](v117);
  v119 = v174;
  sub_1CA948D98();
  v120 = v172;
  v121 = [v172 bundleURL];
  v157 = v155;
  MEMORY[0x1EEE9AC00](v121);
  v122 = v173;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v112 + 120) = sub_1CA2F9F14(v161, v160, v117, v158, 0, 0, v155 - v119, v155 - v122);
  v124 = v168;
  *(v112 + 144) = v168;
  *(v112 + 152) = @"Placeholder";
  v125 = @"Placeholder";
  v161 = sub_1CA94C438("Content (WFInput)", 17);
  *&v160 = v126;
  v127 = sub_1CA94C438("Content", 7);
  v129 = v128;
  *&v166 = v155;
  MEMORY[0x1EEE9AC00](v127);
  sub_1CA948D98();
  v130 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v161, v160, v127, v129, 0, 0, v155 - v119, v155 - v122);
  *(v112 + 184) = v124;
  *(v112 + 160) = v132;
  v133 = sub_1CA94C1E8();
  v134 = sub_1CA2F864C(v133);
  v135 = v165;
  *(v165 + 40) = v134;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v137 = v169;
  v169[40] = v135;
  v137[43] = v136;
  v137[44] = @"ParameterSummary";
  v138 = @"ParameterSummary";
  v139 = sub_1CA94C438("Upload ${WFInput} (Parameter Summary)", 37);
  v141 = v140;
  v142 = sub_1CA94C438("Upload ${WFInput}", 17);
  v144 = v143;
  MEMORY[0x1EEE9AC00](v142);
  v145 = v155 - v174;
  sub_1CA948D98();
  v146 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  v147 = v155 - v173;
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v149 = sub_1CA2F9F14(v139, v141, v142, v144, 0, 0, v145, v147);
  v150 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v151 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v152 = v169;
  v169[45] = v150;
  v152[48] = v151;
  v152[49] = @"RequiredResources";
  v152[53] = v167;
  v152[50] = &unk_1F4A09778;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v153 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6183A4@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = sub_1CA94C3A8();
  v10[3] = v11;
  sub_1CA25B3D0(0, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10[4] = sub_1CA94C408();
  v10[5] = v12;
  *a5 = v10;
  v13 = *MEMORY[0x1E69DB098];
  sub_1CA94ADC8();
  OUTLINED_FUNCTION_52();
  return (*(v14 + 104))(a5, v13);
}

void static WFCalendarSubstitutableState.typeDefinition(context:)()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_30_18(v1);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  v3 = sub_1CA94B5D8();
  v4 = OUTLINED_FUNCTION_18_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  v46 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = (v9 - v8);
  v11 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_2();
  v47 = *v0;
  v48 = v15;
  sub_1CA6183A4(&unk_1EC446DA0, off_1E836DEF0, &qword_1EC4476F0, &qword_1CA98FB78, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F18, qword_1CA982590);
  v16 = sub_1CA94B538();
  OUTLINED_FUNCTION_12(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1CA981310;
  v18 = swift_allocBox();
  v20 = v19;
  sub_1CA94AD98();
  v21 = swift_allocBox();
  OUTLINED_FUNCTION_39();
  (*(v22 + 104))();
  *v20 = v21;
  (*(v13 + 104))(v20, *MEMORY[0x1E69DB0B0], v11);
  *v10 = v18;
  (*(v6 + 104))(v10, *MEMORY[0x1E69DAF30], v46);
  sub_1CA94B528();
  v23 = sub_1CA94C438("Calendar", 8);
  v25 = v24;
  v26 = sub_1CA94C438("Calendar", 8);
  v28 = v27;
  v29 = sub_1CA948E58();
  v30 = OUTLINED_FUNCTION_18_0(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6_0();
  v33 = v32 - v31;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v34 = [qword_1EDB9F690 bundleURL];
  v35 = sub_1CA948BA8();
  v36 = OUTLINED_FUNCTION_18_0(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6_0();
  v39 = v38 - v37;
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v41 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v33, v39);
  v42 = [v47 localize_];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_5_44();
  sub_1CA94B5C8();
  sub_1CA61CCF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468D0, &qword_1CA98BEE8);
  v43 = sub_1CA61CD4C();
  OUTLINED_FUNCTION_8_29(v43);
  OUTLINED_FUNCTION_31_12(v48, v17);
  sub_1CA94AD48();
  OUTLINED_FUNCTION_52();
  v44 = OUTLINED_FUNCTION_3_3();
  v45(v44);
  OUTLINED_FUNCTION_36();
}

void static WFCalendarSubstitutableState.parameterState(from:)()
{
  OUTLINED_FUNCTION_108();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37_1();
  v6 = sub_1CA94AC88();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  v13 = sub_1CA94A9A8();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  (*(v8 + 16))(v12, v3, v6);
  if ((*(v8 + 88))(v12, v6) == *MEMORY[0x1E69DAE58])
  {
    (*(v8 + 96))(v12, v6);
    v17 = swift_projectBox();
    (*(v15 + 16))(v0, v17, v13);

    sub_1CA94A978();
    v18 = sub_1CA94B458();
    OUTLINED_FUNCTION_49(v1, 1, v18);
    if (v19)
    {
      sub_1CA27080C(v1, &qword_1EC4468C0, &qword_1CA988C00);
    }

    else
    {
      sub_1CA94B378();
      OUTLINED_FUNCTION_39();
      v22 = OUTLINED_FUNCTION_4_37();
      v23(v22);
    }

    v24 = sub_1CA94A898();
    v26 = v25;
    v27 = objc_allocWithZone(WFEKCalendarDescriptor);
    v28 = OUTLINED_FUNCTION_72_0();
    v30 = sub_1CA61CE04(v28, v29, v24, v26, 0);
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

    (*(v15 + 8))(v0, v13);
  }

  else
  {
    (*(v8 + 8))(v12, v6);
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    v20 = swift_allocError();
    OUTLINED_FUNCTION_17_19(v20, v21);
  }

  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_107();
}

uint64_t WFCalendarSubstitutableState.typedValue(with:)()
{
  OUTLINED_FUNCTION_0();
  v2 = v0;
  v4 = v3;
  v1[2] = v5;
  v1[3] = v2;
  v1[4] = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v6);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v7);
  v1[6] = OUTLINED_FUNCTION_45();
  v8 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_18_0(v8);
  v9 = OUTLINED_FUNCTION_45();
  v10 = *(v4 + 8);
  v1[7] = v9;
  v1[8] = v10;
  v11 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA618D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_43_12();
  v23 = [*(v22 + 24) value];
  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_1CA40F058(v23, &selRef_calendarIdentifier);
  if (!v26)
  {

LABEL_10:
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    v47 = swift_allocError();
    OUTLINED_FUNCTION_20_29(v47, v48);
    swift_willThrow();

    OUTLINED_FUNCTION_5();
    goto LABEL_16;
  }

  a17 = v26;
  a18 = v25;
  a16 = v24;
  v27 = sub_1CA40F058(v24, &selRef_calendarTitle);
  v29 = v28;
  sub_1CA94C438("Untitled", 8);
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v30 = qword_1EDB9F690;
  v31 = sub_1CA94C368();
  v32 = sub_1CA94C368();

  v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

  v34 = sub_1CA94C3A8();
  v36 = v35;

  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {
    goto LABEL_12;
  }

  v38 = v37;
  v39 = *(v22 + 64);
  v40 = [v38 dataSource];
  if (!v40 || (v41 = v40, v42 = WFVariableSubstitutableParameterStateUpcast(*(v22 + 24)), v43 = [v41 enumeration:v38 localizedLabelForPossibleState:v42], swift_unknownObjectRelease(), v42, !v43))
  {

LABEL_12:
    if (v29)
    {

      v46 = v29;
    }

    else
    {
      v27 = v34;
      v46 = v36;
    }

    goto LABEL_15;
  }

  v44 = *(v22 + 64);
  v27 = sub_1CA94C3A8();
  v46 = v45;

LABEL_15:
  v49 = *(v22 + 56);
  a11 = *(v22 + 48);
  a12 = v49;
  a10 = *(v22 + 40);
  a15 = *(v22 + 16);
  sub_1CA94A9A8();
  v50 = swift_allocBox();
  a13 = v51;
  a14 = v50;
  static TypedValueRepresentableParameterState.typeIdentifier.getter(v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447020, &unk_1CA98E5C0);
  v52 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447028, &qword_1CA98FA30) - 8);
  v53 = (*(*v52 + 80) + 32) & ~*(*v52 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1CA981310;
  v55 = v54 + v53;
  v56 = v52[14];
  strcpy((v54 + v53), "calendarTitle");
  *(v54 + v53 + 14) = -4864;
  sub_1CA94AC18();
  v57 = swift_allocBox();
  *v58 = v27;
  v58[1] = v46;
  OUTLINED_FUNCTION_39();
  (*(v59 + 104))();
  *(v55 + v56) = v57;
  v60 = *MEMORY[0x1E69DAE70];
  v61 = sub_1CA94AC88();
  OUTLINED_FUNCTION_52();
  v63 = *(v62 + 104);
  (v63)(v55 + v56, v60, v61);
  sub_1CA94C218();
  sub_1CA94C1E8();
  sub_1CA94B2E8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  OUTLINED_FUNCTION_72_0();
  sub_1CA94B338();
  sub_1CA94B458();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  sub_1CA94A988();

  *a15 = a14;
  v63();

  OUTLINED_FUNCTION_5();
LABEL_16:
  OUTLINED_FUNCTION_202();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1CA6192B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA308FE0;

  return WFCalendarSubstitutableState.typedValue(with:)();
}

void static WFPodcastSubstitutableState.typeDefinition(context:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  sub_1CA94AED8();
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  v3 = sub_1CA94B5D8();
  v4 = OUTLINED_FUNCTION_18_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v61 = v5;
  v62 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v9 = (v8 - v7);
  v10 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_2();
  v57 = *v1;
  v59 = v14;
  sub_1CA6183A4(&qword_1EC446DB8, off_1E836EE48, &qword_1EC4476E8, &qword_1CA98FB70, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F18, qword_1CA982590);
  v15 = sub_1CA94B538();
  OUTLINED_FUNCTION_12(v15);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1CA9813C0;
  v58 = v16;
  v17 = swift_allocBox();
  v19 = v18;
  v20 = sub_1CA94AD98();
  v21 = swift_allocBox();
  v56 = *MEMORY[0x1E69DB060];
  OUTLINED_FUNCTION_39();
  v55 = *(v22 + 104);
  v55();
  *v19 = v21;
  v60 = *MEMORY[0x1E69DB0B0];
  v53 = *(v12 + 104);
  v53(v19);
  *v9 = v17;
  v23 = *MEMORY[0x1E69DAF30];
  v52 = *(v62 + 104);
  v54 = *MEMORY[0x1E69DAF30];
  v52(v9, v23, v61);
  sub_1CA94B528();
  v24 = swift_allocBox();
  v26 = v25;
  v27 = swift_allocBox();
  (v55)(v28, v56, v20);
  *v26 = v27;
  (v53)(v26, v60, v10);
  *v9 = v24;
  v52(v9, v23, v61);
  OUTLINED_FUNCTION_16_30();
  sub_1CA94B528();
  v29 = swift_allocBox();
  v31 = v30;
  v32 = swift_allocBox();
  (v55)(v33, *MEMORY[0x1E69DB028], v20);
  *v31 = v32;
  (v53)(v31, v60, v10);
  *v9 = v29;
  v52(v9, v54, v61);
  OUTLINED_FUNCTION_40_9();
  sub_1CA94B528();
  sub_1CA94C438("Podcast", 7);
  OUTLINED_FUNCTION_69_1();
  v34 = sub_1CA94C438("Podcast", 7);
  v36 = v35;
  v37 = sub_1CA948E58();
  v38 = OUTLINED_FUNCTION_18_0(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_20();
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v39 = [qword_1EDB9F690 bundleURL];
  v40 = sub_1CA948BA8();
  v41 = OUTLINED_FUNCTION_18_0(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6_0();
  v44 = v43 - v42;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = OUTLINED_FUNCTION_23();
  v48 = sub_1CA2F9F14(v46, v47, v34, v36, 0, 0, "Podcast", v44);
  v49 = [v57 localize_];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_5_44();
  sub_1CA94B5C8();
  sub_1CA61CCF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468D0, &qword_1CA98BEE8);
  sub_1CA61CD4C();
  sub_1CA94D2A8();
  OUTLINED_FUNCTION_31_12(v59, v58);
  sub_1CA94AD48();
  OUTLINED_FUNCTION_52();
  v50 = OUTLINED_FUNCTION_3_3();
  v51(v50);
  OUTLINED_FUNCTION_36();
}

void static WFPodcastSubstitutableState.parameterState(from:)()
{
  OUTLINED_FUNCTION_108();
  v100 = v0;
  v5 = v4;
  sub_1CA94AC18();
  OUTLINED_FUNCTION_1_0();
  v102 = v7;
  v103 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_2();
  v101 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  v10 = OUTLINED_FUNCTION_18_0(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_1();
  v98 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v99 = &v91 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v91 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_1();
  v18 = sub_1CA94AC88();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_1();
  v97 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v91 - v24;
  v26 = sub_1CA94A9A8();
  OUTLINED_FUNCTION_1_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v30 = v5;
  v31 = v20;
  (*(v20 + 16))(v25, v30, v18);
  v32 = *(v20 + 88);
  v33 = OUTLINED_FUNCTION_18_2();
  if (v32(v33) != *MEMORY[0x1E69DAE58])
  {
    v41 = OUTLINED_FUNCTION_18_2();
    v42(v41);
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    v43 = swift_allocError();
    OUTLINED_FUNCTION_17_19(v43, v44);
LABEL_11:
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_107();
    return;
  }

  v94 = v31;
  v34 = OUTLINED_FUNCTION_18_2();
  v92 = v35;
  v93 = v31 + 96;
  v35(v34);
  v36 = swift_projectBox();
  v95 = v28;
  v96 = v26;
  (*(v28 + 16))(v3, v36, v26);

  sub_1CA94A978();
  v37 = sub_1CA94B458();
  OUTLINED_FUNCTION_49(v2, 1, v37);
  if (v52)
  {
    v38 = &qword_1EC4468C0;
    v39 = &qword_1CA988C00;
    v40 = v2;
LABEL_9:
    sub_1CA27080C(v40, v38, v39);
LABEL_10:
    v54 = v95;
    v53 = v96;
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    v55 = swift_allocError();
    OUTLINED_FUNCTION_20_29(v55, v56);
    swift_willThrow();
    (*(v54 + 8))(v3, v53);
    goto LABEL_11;
  }

  v45 = sub_1CA94B378();
  v47 = v46;
  OUTLINED_FUNCTION_39();
  (*(v48 + 8))(v2, v37);
  v49 = sub_1CA94A968();
  v50 = OUTLINED_FUNCTION_16_30();
  sub_1CA3118CC(v50, v51, v49, v105);

  OUTLINED_FUNCTION_49(v105, 1, v18);
  if (v52)
  {

    v38 = &qword_1EC444C60;
    v39 = &qword_1CA9827D0;
    v40 = v105;
    goto LABEL_9;
  }

  v57 = OUTLINED_FUNCTION_18_2();
  v58 = v32(v57);
  if (v58 != *MEMORY[0x1E69DAE70])
  {

    v77 = OUTLINED_FUNCTION_18_2();
    v78(v77);
    goto LABEL_10;
  }

  v91 = v45;
  v59 = OUTLINED_FUNCTION_18_2();
  v92(v59);
  v60 = swift_projectBox();
  v62 = v101;
  v61 = v102;
  v63 = v103;
  (*(v102 + 16))(v101, v60, v103);
  if ((*(v61 + 88))(v62, v63) != *MEMORY[0x1E69DADF0])
  {

    (*(v61 + 8))(v62, v63);

    goto LABEL_10;
  }

  v106 = v47;
  (*(v61 + 96))(v62, v63);
  v64 = *v62;
  v101 = v62[1];
  v102 = v64;

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  v66 = OUTLINED_FUNCTION_18_0(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_37_1();
  v69 = sub_1CA94A968();
  v70 = OUTLINED_FUNCTION_40_9();
  v71 = v99;
  sub_1CA3118CC(v70, 0xE700000000000000, v69, v99);

  v72 = v98;
  sub_1CA4FCCB0(v71, v98, &qword_1EC444C60, &qword_1CA9827D0);
  OUTLINED_FUNCTION_49(v72, 1, v18);
  v103 = &v91;
  if (v52)
  {
    sub_1CA27080C(v71, &qword_1EC444C60, &qword_1CA9827D0);
    sub_1CA948BA8();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
LABEL_21:
    v82 = sub_1CA94A898();
    v84 = v83;
    MEMORY[0x1EEE9AC00](v82);
    v85 = &v91 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA4FCCB0(v32, v85, &qword_1EC444A90, &qword_1CA9827C0);
    v86 = objc_allocWithZone(WFiTunesPodcastObject);
    v87 = @"podcast";
    v88 = sub_1CA61CEB0(v91, v106, v82, v84, v102, v101, v85, v87);
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

    sub_1CA27080C(v32, &qword_1EC444A90, &qword_1CA9827C0);
    (*(v95 + 8))(v3, v96);
    goto LABEL_11;
  }

  v79 = v97;
  (*(v94 + 32))(v97, v72, v18);
  sub_1CA61A1A4(v79, v32);
  if (!v1)
  {
    v104 = 0;
    v80 = OUTLINED_FUNCTION_72_0();
    v81(v80);
    sub_1CA27080C(v71, &qword_1EC444C60, &qword_1CA9827D0);
    goto LABEL_21;
  }

  v89 = OUTLINED_FUNCTION_72_0();
  v90(v89);
  __break(1u);
}

uint64_t sub_1CA61A1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CA94AC18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CA94AC88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) != *MEMORY[0x1E69DAE70])
  {
    (*(v9 + 8))(v11, v8);
LABEL_6:
    v16 = sub_1CA948BA8();
    v14 = a2;
    v15 = 1;
    return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
  }

  (*(v9 + 96))(v11, v8);
  v12 = swift_projectBox();
  (*(v5 + 16))(v7, v12, v4);
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x1E69DADB8])
  {
    (*(v5 + 8))(v7, v4);

    goto LABEL_6;
  }

  (*(v5 + 96))(v7, v4);
  v13 = sub_1CA948BA8();
  (*(*(v13 - 8) + 32))(a2, v7, v13);

  v14 = a2;
  v15 = 0;
  v16 = v13;
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t WFPodcastSubstitutableState.typedValue(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v3);
  v1[5] = OUTLINED_FUNCTION_45();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v4);
  v1[6] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_18_0(v5);
  v1[7] = OUTLINED_FUNCTION_45();
  v6 = sub_1CA94AC88();
  v1[8] = v6;
  OUTLINED_FUNCTION_12(v6);
  v1[9] = v7;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA61AC38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA308C60;

  return WFPodcastSubstitutableState.typedValue(with:)();
}

void static WFTimeZonePickerParameterState.typeDefinition(context:)()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_30_18(v2);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  v4 = sub_1CA94B5D8();
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_18_1();
  v6 = sub_1CA94ADC8();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v19 = *v0;
  sub_1CA6183A4(&qword_1EC4476D8, off_1E836F3C0, &qword_1EC4476E0, &qword_1CA98FB68, v1);
  sub_1CA94C438("Time Zone", 9);
  sub_1CA94C438("Time Zone", 9);
  v8 = sub_1CA948E58();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v10 = [qword_1EDB9F690 bundleURL];
  v11 = sub_1CA948BA8();
  v12 = OUTLINED_FUNCTION_18_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_20();
  sub_1CA948B68();

  v13 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v14 = OUTLINED_FUNCTION_13_34();
  v15 = [v19 localize_];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_5_44();
  sub_1CA94B5C8();
  sub_1CA61CCF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468D0, &qword_1CA98BEE8);
  v16 = sub_1CA61CD4C();
  OUTLINED_FUNCTION_8_29(v16);
  OUTLINED_FUNCTION_15_24();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_52();
  v17 = OUTLINED_FUNCTION_3_3();
  v18(v17);
  OUTLINED_FUNCTION_36();
}

void static WFTimeZonePickerParameterState.parameterState(from:)()
{
  OUTLINED_FUNCTION_108();
  v87 = v0;
  v88 = v1;
  v4 = v3;
  sub_1CA94AC18();
  OUTLINED_FUNCTION_1_0();
  v90 = v6;
  v91 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_2();
  v89 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v13 = sub_1CA94AC88();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v19 = v18 - v17;
  v20 = sub_1CA94A9A8();
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_0();
  v26 = v25 - v24;
  (*(v15 + 16))(v19, v4, v13);
  v27 = *(v15 + 88);
  v28 = OUTLINED_FUNCTION_4_37();
  if ((v27)(v28) == *MEMORY[0x1E69DAE58])
  {
    v29 = OUTLINED_FUNCTION_4_37();
    v79 = v30;
    v80 = v27;
    v78 = v31;
    (v31)(v29);
    v32 = swift_projectBox();
    v85 = v22;
    v86 = v20;
    (*(v22 + 16))(v26, v32, v20);

    sub_1CA94A978();
    v33 = sub_1CA94B458();
    OUTLINED_FUNCTION_49(v2, 1, v33);
    v34 = v26;
    if (v50)
    {
      sub_1CA27080C(v2, &qword_1EC4468C0, &qword_1CA988C00);
      v77 = sub_1CA94A898();
      v83 = v35;
    }

    else
    {
      v77 = sub_1CA94B378();
      v83 = v40;
      OUTLINED_FUNCTION_39();
      (*(v41 + 8))(v2, v33);
    }

    v42 = sub_1CA949248();
    v84 = &v76;
    OUTLINED_FUNCTION_1_0();
    v81 = v43;
    MEMORY[0x1EEE9AC00](v44);
    v76 = v45;
    v46 = &v76 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476C8, &qword_1CA98FA40);
    OUTLINED_FUNCTION_18_0(v47);
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v48);
    OUTLINED_FUNCTION_37_1();
    sub_1CA94A898();
    sub_1CA949208();

    OUTLINED_FUNCTION_49(v33, 1, v42);
    v82 = v34;
    if (v50)
    {

      sub_1CA27080C(v33, &qword_1EC4476C8, &qword_1CA98FA40);
    }

    else
    {
      (*(v81 + 32))(v46, v33, v42);
      v49 = sub_1CA94A968();
      sub_1CA3118CC(0xD000000000000010, 0x80000001CA9D6010, v49, v92);

      OUTLINED_FUNCTION_49(v92, 1, v13);
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_121();
        v52(v51);

        sub_1CA27080C(v92, &qword_1EC444C60, &qword_1CA9827D0);
      }

      else
      {
        v53 = v81;
        if (v80(v92, v13) == *MEMORY[0x1E69DAE70])
        {
          v78(v92, v13);
          v54 = swift_projectBox();
          v56 = v89;
          v55 = v90;
          v57 = v91;
          (*(v90 + 16))(v89, v54, v91);
          v58 = (*(v55 + 88))(v56, v57);
          v59 = v85;
          if (v58 == *MEMORY[0x1E69DADB0])
          {
            (*(v55 + 96))(v56, v57);
            v60 = *v56;

            MEMORY[0x1EEE9AC00](v61);
            v63 = &v76 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v53 + 16))(v63, v46, v42);
            v64 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            v65 = objc_allocWithZone(WFTimeZoneDescriptor);
            v66 = sub_1CA61CFF8(v63, v77, v83, v64);
            [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

            v67 = OUTLINED_FUNCTION_121();
            v68(v67);
            (*(v59 + 8))(v82, v86);
            goto LABEL_18;
          }

          v74 = OUTLINED_FUNCTION_121();
          v75(v74);

          (*(v55 + 8))(v56, v57);

          v71 = v86;
LABEL_17:
          sub_1CA61CDB0();
          OUTLINED_FUNCTION_4_0();
          v72 = swift_allocError();
          OUTLINED_FUNCTION_20_29(v72, v73);
          swift_willThrow();
          (*(v59 + 8))(v82, v71);
          goto LABEL_18;
        }

        v69 = OUTLINED_FUNCTION_121();
        v70(v69);

        (*(v15 + 8))(v92, v13);
      }
    }

    v59 = v85;
    v71 = v86;
    goto LABEL_17;
  }

  v36 = OUTLINED_FUNCTION_4_37();
  v37(v36);
  sub_1CA61CDB0();
  OUTLINED_FUNCTION_4_0();
  v38 = swift_allocError();
  OUTLINED_FUNCTION_17_19(v38, v39);
LABEL_18:
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_107();
}

uint64_t WFTimeZonePickerParameterState.typedValue(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v3);
  v1[5] = OUTLINED_FUNCTION_45();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v4);
  v1[6] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_18_0(v5);
  v1[7] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA61B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_43_12();
  v23 = [*(v22 + 24) value];
  if (v23)
  {
    v24 = v23;
    v25 = *(v22 + 56);
    a14 = *(v22 + 48);
    a15 = v25;
    a13 = *(v22 + 40);
    a18 = *(v22 + 16);
    sub_1CA94A9A8();
    v26 = swift_allocBox();
    a16 = v27;
    a17 = v26;
    static TypedValueRepresentableParameterState.typeIdentifier.getter(v25);
    v28 = [v24 timeZone];
    v29 = sub_1CA949248();
    OUTLINED_FUNCTION_1_0();
    v31 = v30;
    a12 = OUTLINED_FUNCTION_45();
    sub_1CA949238();

    v32 = sub_1CA949218();
    a10 = v33;
    a11 = v32;
    (*(v31 + 8))(a12, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447020, &unk_1CA98E5C0);
    v34 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447028, &qword_1CA98FA30) - 8);
    v35 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1CA981310;
    v37 = (v36 + v35);
    v38 = v34[14];
    *v37 = 0xD000000000000010;
    v37[1] = 0x80000001CA9D6010;
    sub_1CA94AC18();
    v39 = swift_allocBox();
    v41 = v40;
    v42 = [v24 alCityIdentifier];
    v43 = [v42 integerValue];

    *v41 = v43;
    OUTLINED_FUNCTION_39();
    (*(v44 + 104))(v41);
    *(v37 + v38) = v39;
    v45 = *MEMORY[0x1E69DAE70];
    v46 = sub_1CA94AC88();
    OUTLINED_FUNCTION_52();
    v48 = *(v47 + 104);
    (v48)(v37 + v38, v45, v46);
    sub_1CA94C1E8();
    v49 = [v24 localizedCityName];
    sub_1CA94C3A8();

    sub_1CA94B2E8();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    sub_1CA94B338();
    sub_1CA94B458();
    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    sub_1CA94A988();

    *a18 = a17;
    v48();
  }

  else
  {
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    v58 = swift_allocError();
    OUTLINED_FUNCTION_20_29(v58, v59);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_202();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1CA61BC80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA308FE0;

  return WFTimeZonePickerParameterState.typedValue(with:)();
}

void static WFAppDescriptorParameterState.typeDefinition(context:)()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_30_18(v2);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  v4 = sub_1CA94B5D8();
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_18_1();
  v6 = sub_1CA94ADC8();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v19 = *v0;
  sub_1CA6183A4(&qword_1EC446DE0, off_1E836DE00, &qword_1EC4476D0, &qword_1CA98FB60, v1);
  sub_1CA94C438("App", 3);
  sub_1CA94C438("App", 3);
  v8 = sub_1CA948E58();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v10 = [qword_1EDB9F690 bundleURL];
  v11 = sub_1CA948BA8();
  v12 = OUTLINED_FUNCTION_18_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_20();
  sub_1CA948B68();

  v13 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v14 = OUTLINED_FUNCTION_13_34();
  v15 = [v19 localize_];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_5_44();
  sub_1CA94B5C8();
  sub_1CA61CCF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468D0, &qword_1CA98BEE8);
  v16 = sub_1CA61CD4C();
  OUTLINED_FUNCTION_8_29(v16);
  OUTLINED_FUNCTION_15_24();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_52();
  v17 = OUTLINED_FUNCTION_3_3();
  v18(v17);
  OUTLINED_FUNCTION_36();
}

void static WFAppDescriptorParameterState.parameterState(from:)()
{
  OUTLINED_FUNCTION_108();
  v69 = v0;
  v2 = v1;
  sub_1CA94AC18();
  OUTLINED_FUNCTION_1_0();
  v66 = v4;
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_2();
  v65 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  OUTLINED_FUNCTION_18_0(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v58 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  v14 = sub_1CA94AC88();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  v20 = v19 - v18;
  v21 = sub_1CA94A9A8();
  OUTLINED_FUNCTION_1_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  v27 = v26 - v25;
  (*(v16 + 16))(v20, v2, v14);
  v68 = *(v16 + 88);
  if (v68(v20, v14) != *MEMORY[0x1E69DAE58])
  {
    (*(v16 + 8))(v20, v14);
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
    goto LABEL_18;
  }

  v59 = *(v16 + 96);
  v60 = v16 + 96;
  v59(v20, v14);
  v28 = swift_projectBox();
  v63 = v23;
  v64 = v21;
  (*(v23 + 16))(v27, v28, v21);

  sub_1CA94A978();
  v29 = sub_1CA94B458();
  OUTLINED_FUNCTION_49(v13, 1, v29);
  v30 = v27;
  if (v31)
  {
    sub_1CA27080C(v13, &qword_1EC4468C0, &qword_1CA988C00);
    v61 = 0;
    v62 = 0;
  }

  else
  {
    v33 = sub_1CA94B378();
    v61 = v34;
    v62 = v33;
    OUTLINED_FUNCTION_39();
    (*(v35 + 8))(v13, v29);
  }

  v36 = sub_1CA94A968();
  sub_1CA3118CC(0xD000000000000019, 0x80000001CA9D6030, v36, v9);

  OUTLINED_FUNCTION_49(v9, 1, v14);
  if (v31)
  {
    sub_1CA27080C(v9, &qword_1EC444C60, &qword_1CA9827D0);
LABEL_14:
    v41 = 0;
    v42 = 0;
    goto LABEL_15;
  }

  if (v68(v9, v14) != *MEMORY[0x1E69DAE70])
  {
    (*(v16 + 8))(v9, v14);
    goto LABEL_14;
  }

  v59(v9, v14);
  v36 = *v9;
  v37 = swift_projectBox();
  v39 = v65;
  v38 = v66;
  v40 = v67;
  (*(v66 + 16))(v65, v37, v67);
  if ((*(v38 + 88))(v39, v40) != *MEMORY[0x1E69DADF0])
  {
    (*(v38 + 8))(v39, v40);

    goto LABEL_14;
  }

  (*(v38 + 96))(v39, v40);
  v41 = *v39;
  v42 = v39[1];

LABEL_15:
  v43 = v63;
  v44 = v30;
  sub_1CA94A898();
  OUTLINED_FUNCTION_69_1();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  OUTLINED_FUNCTION_18_0(v45);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v46);
  v47 = v30;
  v49 = &v58 - v48;
  sub_1CA948BA8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  v54 = objc_allocWithZone(MEMORY[0x1E696E720]);
  v55 = sub_1CA61D0C0(v62, v61, v36, v44, v41, v42, 0, 0, 0, 0, v49, 0);
  v56 = [objc_opt_self() sharedResolver];
  v57 = [v56 resolvedAppMatchingDescriptor_];

  if (!v57)
  {
    v57 = v55;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

  (*(v43 + 8))(v47, v64);
LABEL_18:
  OUTLINED_FUNCTION_107();
}

uint64_t WFAppDescriptorParameterState.typedValue(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v3 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_18_0(v3);
  v1[5] = OUTLINED_FUNCTION_45();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v4);
  v1[6] = OUTLINED_FUNCTION_45();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A78, &qword_1CA985618);
  OUTLINED_FUNCTION_18_0(v5);
  v1[7] = OUTLINED_FUNCTION_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v6);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = sub_1CA94AC88();
  v1[10] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[11] = v8;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA61C784()
{
  v1 = [*(v0 + 24) value];
  if (v1)
  {
    v2 = v1;
    sub_1CA40F058(v1, &selRef_bundleIdentifier);
    if (v3)
    {
      sub_1CA94C1E8();
      v4 = sub_1CA40F058(v2, &selRef_extensionBundleIdentifier);
      v52 = v2;
      if (v5)
      {
        v6 = v4;
        v7 = v5;
        v9 = *(v0 + 96);
        v8 = *(v0 + 104);
        v11 = *(v0 + 80);
        v10 = *(v0 + 88);
        sub_1CA94AC18();
        v12 = swift_allocBox();
        *v13 = v6;
        v13[1] = v7;
        OUTLINED_FUNCTION_39();
        (*(v14 + 104))();
        *v8 = v12;
        (*(v10 + 104))(v8, *MEMORY[0x1E69DAE70], v11);
        (*(v10 + 32))(v9, v8, v11);
        v2 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1CA322244(v9, 0xD000000000000019, 0x80000001CA9D6030, isUniquelyReferenced_nonNull_native, v16, v17, v18, v19, v49, v50);
      }

      sub_1CA40F058(v2, &selRef_localizedName);
      if (v20)
      {
        v21 = objc_opt_self();
        v22 = sub_1CA94C368();
        v23 = [v21 applicationIconImageForBundleIdentifier_];

        if (v23)
        {
          v24 = sub_1CA3A4EE8(v23);
          if (v25 >> 60 != 15)
          {
            v38 = *(v0 + 56);
            *v38 = v24;
            v38[1] = v25;
            v39 = *MEMORY[0x1E69DB380];
            v40 = sub_1CA94B318();
            OUTLINED_FUNCTION_52();
            (*(v41 + 104))(v38, v39, v40);
            OUTLINED_FUNCTION_89();
            __swift_storeEnumTagSinglePayload(v42, v43, v44, v40);
            sub_1CA94B2E8();
            OUTLINED_FUNCTION_46();
            __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
            sub_1CA94B358();
            v26 = 0;
            goto LABEL_10;
          }
        }
      }

      v26 = 1;
LABEL_10:
      v27 = *(v0 + 88);
      v51 = *(v0 + 80);
      v29 = *(v0 + 64);
      v28 = *(v0 + 72);
      v30 = *(v0 + 40);
      v31 = *(v0 + 16);
      v32 = sub_1CA94B458();
      __swift_storeEnumTagSinglePayload(v28, v26, 1, v32);
      sub_1CA94A9A8();
      v33 = swift_allocBox();
      static TypedValueRepresentableParameterState.typeIdentifier.getter(v30);
      sub_1CA4FCCB0(v28, v29, &qword_1EC4468C0, &qword_1CA988C00);
      sub_1CA94A988();

      sub_1CA27080C(v28, &qword_1EC4468C0, &qword_1CA988C00);
      *v31 = v33;
      (*(v27 + 104))(v31, *MEMORY[0x1E69DAE58], v51);

      OUTLINED_FUNCTION_5();
      goto LABEL_13;
    }
  }

  sub_1CA61CDB0();
  OUTLINED_FUNCTION_4_0();
  v35 = swift_allocError();
  OUTLINED_FUNCTION_20_29(v35, v36);
  swift_willThrow();

  OUTLINED_FUNCTION_5();
LABEL_13:

  return v34();
}

uint64_t sub_1CA61CC5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA308FE0;

  return WFAppDescriptorParameterState.typedValue(with:)();
}

unint64_t sub_1CA61CCF4()
{
  result = qword_1EC4468C8;
  if (!qword_1EC4468C8)
  {
    sub_1CA94AED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4468C8);
  }

  return result;
}

unint64_t sub_1CA61CD4C()
{
  result = qword_1EC4468D8;
  if (!qword_1EC4468D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4468D0, &qword_1CA98BEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4468D8);
  }

  return result;
}

unint64_t sub_1CA61CDB0()
{
  result = qword_1EC4476C0;
  if (!qword_1EC4476C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4476C0);
  }

  return result;
}

id sub_1CA61CE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1CA94C368();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1CA94C368();

LABEL_6:
  v10 = [v5 initWithCalendarTitle:v8 identifier:v9 RGBAValue:a5];

  return v10;
}

id sub_1CA61CEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v13 = sub_1CA94C368();

  v14 = sub_1CA94C368();

  if (a6)
  {
    v15 = sub_1CA94C368();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1CA948BA8();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v16) != 1)
  {
    v17 = sub_1CA948B48();
    (*(*(v16 - 8) + 8))(a7, v16);
  }

  v18 = [v9 initWithName:v13 identifier:v14 podcastUUID:v15 feedURL:v17 kind:a8];

  return v18;
}

id sub_1CA61CFF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = sub_1CA949228();
  v9 = sub_1CA94C368();

  v10 = [v5 initWithTimeZone:v8 localizedCityName:v9 alCityIdentifier:a4];

  v11 = sub_1CA949248();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

id sub_1CA61D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    v15 = sub_1CA94C368();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v15 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = sub_1CA94C368();

  if (a6)
  {
LABEL_4:
    v17 = sub_1CA94C368();

    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  if (a7)
  {
    v18 = sub_1CA94C8E8();
  }

  else
  {
    v18 = 0;
  }

  if (a9)
  {
    v19 = sub_1CA94C368();

    if (a10)
    {
LABEL_13:
      v20 = sub_1CA94C8E8();

      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0;
    if (a10)
    {
      goto LABEL_13;
    }
  }

  v20 = 0;
LABEL_16:
  v21 = sub_1CA948BA8();
  v22 = 0;
  if (__swift_getEnumTagSinglePayload(a11, 1, v21) != 1)
  {
    v22 = sub_1CA948B48();
    (*(*(v21 - 8) + 8))(a11, v21);
  }

  if (a12)
  {
    v23 = sub_1CA94C8E8();
  }

  else
  {
    v23 = 0;
  }

  v24 = [v26 initWithLocalizedName:v15 bundleIdentifier:v16 extensionBundleIdentifier:v17 counterpartIdentifiers:v18 teamIdentifier:v19 supportedIntents:v20 bundleURL:v22 documentTypes:v23];

  return v24;
}

uint64_t sub_1CA61D30C(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

id sub_1CA61D3B0()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  *(inited + 120) = 0xD000000000000017;
  *(inited + 128) = 0x80000001CA9D60A0;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000001CA9D60C0;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA61D5D8()
{
  v120 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9A9740;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("video|camera|roll|movie", 23);
  v6 = v5;
  v7 = sub_1CA94C438("video|camera|roll|movie", 23);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v126 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v127 = v11;
  v12 = &v116 - v126;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v125 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v116 - v123;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v122 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v121 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets the most recent videos from the photo library.", 51);
  v118 = v27;
  v28 = sub_1CA94C438("Gets the most recent videos from the photo library.", 51);
  v30 = v29;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v116 - v126;
  sub_1CA948D98();
  v32 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v116 - v123;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v118, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v122;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v121;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v121 = v38;
  *(inited + 200) = &unk_1F4A09868;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v43 = sub_1CA94C438("Get Latest Videos (Action Name)", 31);
  v117 = v44;
  v118 = v43;
  v45 = sub_1CA94C438("Get Latest Videos", 17);
  v47 = v46;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v116 - v126;
  sub_1CA948D98();
  v49 = v124;
  v50 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v123;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v118, v117, v45, v47, 0, 0, v48, &v116 - v51);
  v53 = v122;
  *(inited + 304) = v122;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA9813C0;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  *(v54 + 48) = 1;
  *(v54 + 72) = MEMORY[0x1E69E6370];
  *(v54 + 80) = 0x614E74757074754FLL;
  *(v54 + 88) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438("Latest Videos (Default Output Name)", 35);
  v117 = v57;
  v118 = v56;
  v58 = sub_1CA94C438("Latest Videos", 13);
  v116 = v59;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v116 - v126;
  sub_1CA948D98();
  v61 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 96) = sub_1CA2F9F14(v118, v117, v58, v116, 0, 0, v60, &v116 - v51);
  *(v54 + 120) = v53;
  *(v54 + 128) = 0x7365707954;
  *(v54 + 168) = v121;
  *(v54 + 136) = 0xE500000000000000;
  *(v54 + 144) = &unk_1F4A09898;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v119 = swift_allocObject();
  *(v119 + 1) = xmmword_1CA9813B0;
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CA981370;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000012;
  *(v66 + 48) = 0x80000001CA99B980;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"DefaultValue";
  v67 = MEMORY[0x1E69E6530];
  *(v66 + 80) = 1;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Key";
  *(v66 + 120) = 0xD000000000000015;
  *(v66 + 128) = 0x80000001CA9A9870;
  *(v66 + 144) = v63;
  *(v66 + 152) = @"StepperDescription";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"DefaultValue";
  v71 = @"Key";
  v72 = @"StepperDescription";
  v73 = sub_1CA94C438("Number of Videos (WFGetLatestPhotoCount)", 40);
  v116 = v74;
  v75 = sub_1CA94C438("Number of Videos", 16);
  v77 = v76;
  v117 = &v116;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v116 - v126;
  sub_1CA948D98();
  v79 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v116 - v123;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 160) = sub_1CA2F9F14(v73, v116, v75, v77, 0, 0, v78, v80);
  *(v66 + 184) = v122;
  *(v66 + 192) = @"StepperNoun";
  v82 = @"StepperNoun";
  v83 = sub_1CA94C438("%d Videos", v116);
  v116 = v84;
  v117 = v83;
  v85 = v84;
  v132 = 0;
  v133 = 0xE000000000000000;
  sub_1CA94D408();

  v132 = v83;
  v133 = v85;
  v130 = 10;
  v131 = 0xE100000000000000;
  v128 = 32;
  v129 = 0xE100000000000000;
  sub_1CA27BAF0();
  v132 = sub_1CA94D1B8();
  v133 = v86;
  v87 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v88 = v132;
  v89 = v133;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v116 - v126;
  sub_1CA948D98();
  v91 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v116 - v123;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v88, v89, v117, v116, 0, 0, v90, v92);
  *(v66 + 224) = v122;
  *(v66 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v95 = sub_1CA94C1E8();
  v96 = sub_1CA2F864C(v95);
  v97 = v119;
  v119[4] = v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v97;
  *(inited + 384) = v98;
  *(inited + 392) = @"ParameterSummary";
  v99 = @"ParameterSummary";
  v100 = sub_1CA94C438("Get the latest ${WFGetLatestPhotoCount} (Parameter Summary)", 59);
  v102 = v101;
  v103 = sub_1CA94C438("Get the latest ${WFGetLatestPhotoCount}", 39);
  v105 = v104;
  v122 = &v116;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v116 - v126;
  sub_1CA948D98();
  v107 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v116 - v123;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  v111 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v112 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v111;
  *(inited + 424) = v112;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v121;
  *(inited + 440) = &unk_1F4A098C8;
  v113 = @"RequiredResources";
  v114 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v114;
  *(inited + 480) = 0x6F65646956;
  *(inited + 488) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA61E4B0()
{
  v66 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9D6260;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("messenger|facebook|fb|send|text|gif|image|video", 47);
  v6 = v5;
  v7 = sub_1CA94C438("messenger|facebook|fb|send|text|gif|image|video", 47);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v71 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v11;
  v12 = &v60 - v71;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v70 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v68 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v69 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v60 - v69;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v67 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981350;
  v21 = MEMORY[0x1E69E6370];
  *(v20 + 32) = 0xD00000000000001DLL;
  *(v20 + 40) = 0x80000001CA99DA80;
  *(v20 + 48) = 1;
  *(v20 + 72) = v21;
  *(v20 + 80) = 0xD000000000000010;
  *(v20 + 88) = 0x80000001CA993290;
  *(v20 + 96) = 0xD000000000000016;
  *(v20 + 104) = 0x80000001CA9D62B0;
  v22 = MEMORY[0x1E69E6158];
  *(v20 + 120) = MEMORY[0x1E69E6158];
  *(v20 + 128) = 1701667150;
  *(v20 + 136) = 0xE400000000000000;
  *(v20 + 144) = 0x65676E657373654DLL;
  *(v20 + 152) = 0xE900000000000072;
  *(v20 + 168) = v22;
  strcpy((v20 + 176), "TeamIdentifier");
  *(v20 + 216) = v22;
  *(v20 + 191) = -18;
  *(v20 + 192) = 0x4642505454573956;
  *(v20 + 200) = 0xEA0000000000394BLL;
  v23 = @"AppDefinition";
  v24 = sub_1CA94C1E8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v64 = v25;
  *(inited + 120) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = @"Description";
  v63 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1CA981310;
  *(v26 + 32) = @"DescriptionSummary";
  v27 = @"Description";
  v28 = @"DescriptionSummary";
  v29 = sub_1CA94C438("Sends the input via Facebook Messenger", 38);
  v61 = v30;
  v31 = sub_1CA94C438("Sends the input via Facebook Messenger", 38);
  v33 = v32;
  v62 = &v60;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v60 - v71;
  sub_1CA948D98();
  v35 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v60 - v69;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v29, v61, v31, v33, 0, 0, v34, v36);
  *(v26 + 64) = v67;
  *(v26 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v39 = sub_1CA94C1E8();
  v40 = v63;
  *(inited + 160) = sub_1CA6B3784(v39);
  *(inited + 184) = v40;
  *(inited + 192) = @"Input";
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA9813C0;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  *(v41 + 48) = 0;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 72) = MEMORY[0x1E69E6370];
  *(v41 + 80) = 0x6465726975716552;
  *(v41 + 88) = 0xE800000000000000;
  *(v41 + 96) = 1;
  *(v41 + 120) = v42;
  *(v41 + 128) = 0x7365707954;
  v43 = v42;
  *(v41 + 136) = 0xE500000000000000;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 168) = v44;
  *(v41 + 144) = &unk_1F4A098F8;
  v45 = @"Input";
  *(inited + 200) = sub_1CA94C1E8();
  *(inited + 224) = v64;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v43;
  *(inited + 272) = @"Name";
  v46 = @"InputPassthrough";
  v47 = @"Name";
  v48 = sub_1CA94C438("Send via Messenger (Action Name)", 32);
  v64 = v49;
  v50 = sub_1CA94C438("Send via Messenger", 18);
  v52 = v51;
  v65 = &v60;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v60 - v71;
  sub_1CA948D98();
  v54 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v60 - v69;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v48, v64, v50, v52, 0, 0, v53, v55);
  *(inited + 304) = v67;
  *(inited + 312) = @"RequiredResources";
  *(inited + 320) = &unk_1F4A09948;
  *(inited + 344) = v44;
  *(inited + 352) = @"UserInterfaces";
  *(inited + 384) = v44;
  *(inited + 360) = &unk_1F4A09988;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v57 = @"RequiredResources";
  v58 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA61ED8C()
{
  v1 = sub_1CA61F3E4(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = objc_allocWithZone(WFUserVisibleString);
  return sub_1CA5920A8(v3, v4, 1, 0xD00000000000001FLL, 0x80000001CA9D63B0);
}

void sub_1CA61EE08(uint64_t a1)
{
  v2 = v1;
  v19[1] = MEMORY[0x1E69E7CD0];
  if ([v1 customOutputString])
  {
    sub_1CA368D08(v19);
  }

  v3 = [v1 parametersByKey];
  sub_1CA2C2738();
  v4 = sub_1CA94C1C8();

  v5 = 0;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_11:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(v4 + 56) + 8 * (v11 | (v10 << 6)));
    sub_1CA94C218();
    v13 = v12;
    v14 = sub_1CA94C368();

    v15 = [v2 parameterStateForKey_];

    if (v15)
    {
      v16 = [v13 userVisibleStringsInParameterState:v15 forUseCase:a1];
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v17 = sub_1CA94C8F8();

      sub_1CA342840(v17);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    v5 = v10;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(v4 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1CA61F0AC(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 customOutputString];
  if (v3)
  {
    v4 = v3;
    sub_1CA311D98(v3, a1);
    if (v5 || (sub_1CA61F3E4(v1), v6))
    {
      v7 = sub_1CA94C368();
    }

    else
    {
      v7 = 0;
    }

    [v1 setOutputName_];
  }

  v8 = [v1 parametersByKey];
  sub_1CA2C2738();
  v9 = sub_1CA94C1C8();

  v10 = 0;
  v12 = v9 + 64;
  v11 = *(v9 + 64);
  v29 = v9;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  if ((v14 & v11) != 0)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v17);
    ++v10;
    if (v15)
    {
      v10 = v17;
      do
      {
LABEL_13:
        v18 = *(*(v29 + 56) + 8 * (__clz(__rbit64(v15)) | (v10 << 6)));
        sub_1CA94C218();
        v19 = v18;
        v20 = sub_1CA94C368();
        v21 = [v2 parameterStateForKey_];

        if (v21)
        {
          type metadata accessor for WFUserVisibleString();
          sub_1CA3434EC();
          v22 = sub_1CA94C1A8();
          v23 = [v19 rewriteParameterState:v21 withStrings:v22];
          v28 = v19;
          v24 = v2;
          v25 = v23;

          swift_unknownObjectRetain();
          v26 = sub_1CA94C368();

          [v24 setParameterState:v25 forKey:v26];

          swift_unknownObjectRelease();
          v2 = v24;
          swift_unknownObjectRelease_n();
          v19 = v26;
        }

        else
        {
        }

        v15 &= v15 - 1;
      }

      while (v15);
    }
  }
}

uint64_t sub_1CA61F3E4(void *a1)
{
  v1 = [a1 customOutputName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

id sub_1CA61F47C()
{
  v32 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v31 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 0x65676E61724FLL;
  *(inited + 128) = 0xE600000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0xD000000000000026;
  *(inited + 168) = 0x80000001CA9D3340;
  *(inited + 184) = v1;
  *(inited + 192) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v6;
  *(inited + 232) = @"Name";
  v7 = @"IconColor";
  v8 = @"IconSymbol";
  v9 = @"LocallyProcessesData";
  v10 = @"Name";
  v11 = sub_1CA94C438("Filter Articles (Action Name)", 29);
  v30 = v12;
  v13 = sub_1CA94C438("Filter Articles", 15);
  v15 = v14;
  v16 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v11, v30, v13, v15, 0, 0, v18, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 240) = v24;
  *(inited + 264) = v25;
  *(inited + 272) = @"Output";
  v26 = @"Output";
  v27 = sub_1CA94C1E8();
  *(inited + 304) = v31;
  *(inited + 280) = v27;
  v28 = sub_1CA94C368();
  *(inited + 344) = v1;
  *(inited + 312) = v28;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = 0x80000001CA993510;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static AppNameCache.shared.getter()
{
  if (qword_1EDB9F960 != -1)
  {
    swift_once();
  }
}

uint64_t AppNameCache.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1CA61F9A4()
{
  v106 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9D6450;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("gps|map|place|address", 21);
  v6 = v5;
  v7 = sub_1CA94C438("gps|map|place|address", 21);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = v11;
  v12 = &v100 - v111;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v110 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v108 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v109 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v100 - v109;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v107 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v105 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Gets the current location of the device.", 40);
  v103 = v24;
  v25 = sub_1CA94C438("Gets the current location of the device.", 40);
  v27 = v26;
  *&v104 = &v100;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v100 - v111;
  sub_1CA948D98();
  v29 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v100 - v109;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v103, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v107;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v105;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "location.fill");
  *(inited + 214) = -4864;
  *(inited + 224) = v35;
  *(inited + 232) = @"Name";
  v36 = @"IconColor";
  v37 = @"IconSymbol";
  v38 = @"Name";
  v39 = sub_1CA94C438("Get Current Location (Action Name)", 34);
  v41 = v40;
  v42 = sub_1CA94C438("Get Current Location", 20);
  v44 = v43;
  v105 = &v100;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v100 - v111;
  sub_1CA948D98();
  v46 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v100 - v109;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v39, v41, v42, v44, 0, 0, v45, v47);
  *(inited + 264) = v107;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v104 = xmmword_1CA9813C0;
  *(v49 + 16) = xmmword_1CA9813C0;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 0;
  *(v49 + 72) = v50;
  *(v49 + 80) = 0x614E74757074754FLL;
  *(v49 + 88) = 0xEA0000000000656DLL;
  v51 = @"Output";
  v52 = sub_1CA94C438("Current Location (Default Output Name)", 38);
  v103 = v53;
  v54 = sub_1CA94C438("Current Location", 16);
  v56 = v55;
  v105 = &v100;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v100 - v111;
  sub_1CA948D98();
  v58 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v100 - v109;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 96) = sub_1CA2F9F14(v52, v103, v54, v56, 0, 0, v57, v59);
  *(v49 + 120) = v107;
  *(v49 + 128) = 0x7365707954;
  *(v49 + 136) = 0xE500000000000000;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 168) = v105;
  *(v49 + 144) = &unk_1F4A09A38;
  v61 = MEMORY[0x1E69E6158];
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v62;
  *(inited + 304) = v63;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_1CA9813B0;
  v102 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_initStackObject();
  *(v64 + 16) = v104;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD00000000000001BLL;
  *(v64 + 48) = 0x80000001CA99C680;
  *(v64 + 64) = v61;
  *(v64 + 72) = @"Key";
  *(v64 + 80) = 0x7963617275636341;
  *(v64 + 88) = 0xE800000000000000;
  *(v64 + 104) = v61;
  *(v64 + 112) = @"Label";
  v65 = @"Parameters";
  v66 = @"Class";
  v67 = @"Key";
  v68 = @"Label";
  v69 = sub_1CA94C438("Precision (Accuracy)", 20);
  v101 = v70;
  v71 = sub_1CA94C438("Precision", 9);
  v73 = v72;
  *&v104 = &v100;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v100 - v111;
  sub_1CA948D98();
  v75 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v100 - v109;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v69, v101, v71, v73, 0, 0, v74, v76);
  *(v64 + 144) = v107;
  *(v64 + 120) = v78;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v79 = sub_1CA94C1E8();
  v80 = sub_1CA2F864C(v79);
  v81 = v103;
  *(v103 + 32) = v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v81;
  *(inited + 344) = v82;
  *(inited + 352) = @"ParameterSummary";
  v83 = @"ParameterSummary";
  v84 = sub_1CA94C438("Get current location (Parameter Summary)", 40);
  v86 = v85;
  v87 = sub_1CA94C438("Get current location", 20);
  v89 = v88;
  v107 = &v100;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v100 - v111;
  sub_1CA948D98();
  v91 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v100 - v109;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v84, v86, v87, v89, 0, 0, v90, v92);
  v95 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v96 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v95;
  *(inited + 384) = v96;
  *(inited + 392) = @"RequiredResources";
  *(inited + 400) = &unk_1F4A09A68;
  *(inited + 424) = v105;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v97 = @"RequiredResources";
  v98 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA620678()
{
  v295 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9D65C0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v307 = sub_1CA94C438("photos|transform|overlay|clip|corner|radius", 43);
  v5 = v4;
  v6 = sub_1CA94C438("photos|transform|overlay|clip|corner|radius", 43);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v309 = v10;
  v311 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v285 - v311;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v312 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v308 = v14;
  v310 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = v285 - v310;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v307, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v307 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"Description";
  v305 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CA9813C0;
  *(v19 + 32) = @"DescriptionInput";
  v20 = @"Description";
  v21 = @"DescriptionInput";
  v22 = sub_1CA94C438("Images to mask", 14);
  *&v303 = v23;
  v24 = sub_1CA94C438("Images to mask", 14);
  v26 = v25;
  v304 = v285;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v285 - v311;
  sub_1CA948D98();
  v28 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v306 = inited;
  v29 = v310;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v19 + 40) = sub_1CA2F9F14(v22, v303, v24, v26, 0, 0, v27, v285 - v29);
  *(v19 + 64) = v307;
  *(v19 + 72) = @"DescriptionResult";
  v31 = @"DescriptionResult";
  v32 = sub_1CA94C438("The masked images", 17);
  v302 = v33;
  *&v303 = v32;
  v301 = sub_1CA94C438("The masked images", 17);
  v35 = v34;
  v304 = v285;
  MEMORY[0x1EEE9AC00](v301);
  v36 = v311;
  sub_1CA948D98();
  v37 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v37);
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v19 + 80) = sub_1CA2F9F14(v303, v302, v301, v35, 0, 0, v285 - v36, v285 - v29);
  v39 = v307;
  *(v19 + 104) = v307;
  *(v19 + 112) = @"DescriptionSummary";
  v40 = @"DescriptionSummary";
  v41 = sub_1CA94C438("Applies a mask to each image passed into the action. For example, you can cut images into a rounded rectangle, ellipse or icon shape, or provide a custom alpha mask.", 165);
  v302 = v42;
  *&v303 = v41;
  v43 = sub_1CA94C438("Applies a mask to each image passed into the action. For example, you can cut images into a rounded rectangle, ellipse or icon shape, or provide a custom alpha mask.", 165);
  v45 = v44;
  v304 = v285;
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948D98();
  v46 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = v285 - v310;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v49 = sub_1CA2F9F14(v303, v302, v43, v45, 0, 0, v285 - v36, v47);
  *(v19 + 144) = v39;
  *(v19 + 120) = v49;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v50 = sub_1CA94C1E8();
  v51 = v305;
  v52 = sub_1CA6B3784(v50);
  v53 = v306;
  v306[15] = v52;
  v53[18] = v51;
  v53[19] = @"IconColor";
  v53[20] = 1702194242;
  v53[21] = 0xE400000000000000;
  v54 = MEMORY[0x1E69E6158];
  v53[23] = MEMORY[0x1E69E6158];
  v53[24] = @"IconSymbol";
  v53[25] = 0x69662E6F746F6870;
  v53[26] = 0xEA00000000006C6CLL;
  v53[28] = v54;
  v53[29] = @"Input";
  v55 = v53;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v56 = swift_initStackObject();
  v303 = xmmword_1CA981350;
  *(v56 + 16) = xmmword_1CA981350;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 48) = 1;
  *(v56 + 72) = v57;
  strcpy((v56 + 80), "ParameterKey");
  *(v56 + 93) = 0;
  *(v56 + 94) = -5120;
  *(v56 + 96) = 0x7475706E494657;
  *(v56 + 104) = 0xE700000000000000;
  *(v56 + 120) = v54;
  *(v56 + 128) = 0x6465726975716552;
  *(v56 + 136) = 0xE800000000000000;
  *(v56 + 144) = 1;
  *(v56 + 168) = v57;
  *(v56 + 176) = 0x7365707954;
  v58 = v57;
  *(v56 + 184) = 0xE500000000000000;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v56 + 216) = v300;
  *(v56 + 192) = &unk_1F4A09AA8;
  v59 = @"IconColor";
  v60 = @"IconSymbol";
  v61 = @"Input";
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v305 = v63;
  v55[30] = v62;
  v55[33] = v63;
  v55[34] = @"InputPassthrough";
  *(v55 + 280) = 0;
  v55[38] = v58;
  v55[39] = @"Name";
  v64 = @"InputPassthrough";
  v65 = @"Name";
  v66 = sub_1CA94C438("Mask Image (Action Name)", 24);
  v301 = v67;
  v68 = sub_1CA94C438("Mask Image", 10);
  v70 = v69;
  v302 = v285;
  MEMORY[0x1EEE9AC00](v68);
  v71 = v285 - v311;
  sub_1CA948D98();
  v72 = v312;
  v73 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = v310;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v66, v301, v68, v70, 0, 0, v71, v285 - v74);
  v77 = v306;
  v78 = v307;
  v306[40] = v76;
  v77[43] = v78;
  v77[44] = @"Output";
  v79 = swift_allocObject();
  *(v79 + 16) = v303;
  *(v79 + 32) = 0x75736F6C63736944;
  *(v79 + 40) = 0xEF6C6576654C6572;
  *(v79 + 48) = 0x63696C627550;
  *(v79 + 56) = 0xE600000000000000;
  *(v79 + 72) = MEMORY[0x1E69E6158];
  *(v79 + 80) = 0x656C7069746C754DLL;
  *(v79 + 88) = 0xE800000000000000;
  *(v79 + 96) = 1;
  *(v79 + 120) = MEMORY[0x1E69E6370];
  *(v79 + 128) = 0x614E74757074754FLL;
  *(v79 + 136) = 0xEA0000000000656DLL;
  v80 = @"Output";
  v81 = sub_1CA94C438("Masked Image (Default Output Name)", 34);
  v301 = v82;
  v302 = v81;
  v83 = sub_1CA94C438("Masked Image", 12);
  v85 = v84;
  v304 = v285;
  MEMORY[0x1EEE9AC00](v83);
  v86 = v285 - v311;
  sub_1CA948D98();
  v87 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 144) = sub_1CA2F9F14(v302, v301, v83, v85, 0, 0, v86, v285 - v74);
  *(v79 + 168) = v78;
  *(v79 + 176) = 0x7365707954;
  *(v79 + 216) = v300;
  *(v79 + 184) = 0xE500000000000000;
  *(v79 + 192) = &unk_1F4A09AD8;
  v89 = MEMORY[0x1E69E6158];
  v90 = sub_1CA94C1E8();
  v91 = v306;
  v306[45] = v90;
  v91[48] = v305;
  v91[49] = @"Parameters";
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v305 = swift_allocObject();
  v297 = xmmword_1CA981570;
  *(v305 + 16) = xmmword_1CA981570;
  v304 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v92 = swift_allocObject();
  *(v92 + 16) = v303;
  v293 = 0xD000000000000019;
  v294 = 0x80000001CA99B030;
  *(v92 + 32) = @"Class";
  *(v92 + 40) = 0xD000000000000019;
  *(v92 + 48) = 0x80000001CA99B030;
  *(v92 + 64) = v89;
  *(v92 + 72) = @"Key";
  *(v92 + 80) = 0x7475706E494657;
  *(v92 + 88) = 0xE700000000000000;
  *(v92 + 104) = v89;
  *(v92 + 112) = @"Label";
  v93 = @"Class";
  v94 = @"Key";
  v95 = @"Label";
  v96 = v93;
  v97 = v94;
  v98 = v95;
  v289 = v96;
  v296 = v97;
  v291 = v98;
  v99 = @"Parameters";
  v302 = sub_1CA94C438("Image (WFInput)", 15);
  v298 = v100;
  v101 = sub_1CA94C438("Image", 5);
  *&v292 = v102;
  *&v303 = v285;
  MEMORY[0x1EEE9AC00](v101);
  v103 = v285 - v311;
  sub_1CA948D98();
  v104 = v312;
  v105 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = v285 - v310;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 120) = sub_1CA2F9F14(v302, v298, v101, v292, 0, 0, v103, v106);
  v108 = v307;
  *(v92 + 144) = v307;
  *(v92 + 152) = @"Placeholder";
  v298 = @"Placeholder";
  v302 = sub_1CA94C438("Image (WFInput)", 15);
  *&v292 = v109;
  v110 = sub_1CA94C438("Image", 5);
  v290 = v111;
  *&v303 = v285;
  MEMORY[0x1EEE9AC00](v110);
  v112 = v311;
  sub_1CA948D98();
  v113 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = v285 - v310;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v302, v292, v110, v290, 0, 0, v285 - v112, v114);
  *(v92 + 184) = v108;
  *(v92 + 160) = v116;
  _s3__C3KeyVMa_0(0);
  *&v303 = v117;
  v302 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v118 = sub_1CA94C1E8();
  v119 = sub_1CA2F864C(v118);
  *(v305 + 32) = v119;
  v120 = swift_allocObject();
  v292 = xmmword_1CA981380;
  *(v120 + 16) = xmmword_1CA981380;
  v290 = 0xD000000000000016;
  v121 = v289;
  *(v120 + 32) = v289;
  *(v120 + 40) = 0xD000000000000016;
  *(v120 + 48) = 0x80000001CA99C4A0;
  v122 = MEMORY[0x1E69E6158];
  *(v120 + 64) = MEMORY[0x1E69E6158];
  *(v120 + 72) = @"DefaultValue";
  *(v120 + 80) = 0xD000000000000011;
  *(v120 + 88) = 0x80000001CA99A730;
  *(v120 + 104) = v122;
  *(v120 + 112) = @"DisallowedVariableTypes";
  *(v120 + 120) = &unk_1F4A09B08;
  *(v120 + 144) = v300;
  *(v120 + 152) = @"Items";
  v300 = swift_allocObject();
  *&v300->data = v297;
  *&v297 = v121;
  v123 = @"DefaultValue";
  v124 = @"DisallowedVariableTypes";
  v125 = @"Items";
  v126 = sub_1CA94C438("Rounded Rectangle (WFMaskType)", 30);
  v287 = v127;
  *&v288 = v126;
  v128 = sub_1CA94C438("Rounded Rectangle", 17);
  v286 = v129;
  v289 = v285;
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948D98();
  v130 = v312;
  v131 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  v132 = v285 - v310;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v134 = sub_1CA2F9F14(v288, v287, v128, v286, 0, 0, v285 - v112, v132);
  v135 = v300;
  v300[1].isa = v134;
  v136 = sub_1CA94C438("Ellipse (WFMaskType)", 20);
  v287 = v137;
  *&v288 = v136;
  v286 = sub_1CA94C438("Ellipse", 7);
  v139 = v138;
  v289 = v285;
  MEMORY[0x1EEE9AC00](v286);
  sub_1CA948D98();
  v140 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = v310;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135[1].info = sub_1CA2F9F14(v288, v287, v286, v139, 0, 0, v285 - v112, v285 - v141);
  v143 = sub_1CA94C438("Icon (WFMaskType)", 17);
  v287 = v144;
  *&v288 = v143;
  v145 = sub_1CA94C438("Icon", 4);
  v286 = v146;
  v289 = v285;
  MEMORY[0x1EEE9AC00](v145);
  v147 = v311;
  sub_1CA948D98();
  v148 = v312;
  v149 = [v312 bundleURL];
  v285[1] = v285;
  MEMORY[0x1EEE9AC00](v149);
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v288, v287, v145, v286, 0, 0, v285 - v147, v285 - v141);
  v300[1].data = v151;
  v152 = sub_1CA94C438("Custom Image (WFMaskType)", 25);
  v287 = v153;
  *&v288 = v152;
  v154 = sub_1CA94C438("Custom Image", 12);
  v286 = v155;
  v289 = v285;
  MEMORY[0x1EEE9AC00](v154);
  v156 = v285 - v147;
  sub_1CA948D98();
  v157 = [v148 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  v158 = v310;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160 = sub_1CA2F9F14(v288, v287, v154, v286, 0, 0, v156, v285 - v158);
  v161 = v300;
  v300[1].length = v160;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v120 + 160) = v161;
  v163 = v296;
  *(v120 + 184) = v162;
  *(v120 + 192) = v163;
  *(v120 + 200) = 0x79546B73614D4657;
  *(v120 + 208) = 0xEA00000000006570;
  v164 = v291;
  *(v120 + 224) = MEMORY[0x1E69E6158];
  *(v120 + 232) = v164;
  v296 = v163;
  v300 = v164;
  v289 = sub_1CA94C438("Type (WFMaskType)", 17);
  v166 = v165;
  v167 = sub_1CA94C438("Type", 4);
  v169 = v168;
  v291 = v285;
  MEMORY[0x1EEE9AC00](v167);
  v170 = v285 - v311;
  sub_1CA948D98();
  v171 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v171);
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v289, v166, v167, v169, 0, 0, v170, v285 - v158);
  *(v120 + 264) = v307;
  *(v120 + 240) = v173;
  v174 = sub_1CA94C1E8();
  v175 = sub_1CA2F864C(v174);
  *(v305 + 40) = v175;
  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_1CA981400;
  v177 = v290;
  *(v176 + 32) = v297;
  *(v176 + 40) = v177;
  *(v176 + 48) = 0x80000001CA99C180;
  *(v176 + 64) = MEMORY[0x1E69E6158];
  *(v176 + 72) = @"Description";
  v290 = @"Description";
  v289 = sub_1CA94C438("A radius to apply to each corner of the source image in pixels. (WFMaskCornerRadius)", 84);
  *&v288 = v178;
  v179 = sub_1CA94C438("A radius to apply to each corner of the source image in pixels.", 63);
  v287 = v180;
  v291 = v285;
  MEMORY[0x1EEE9AC00](v179);
  v181 = v311;
  sub_1CA948D98();
  v182 = v312;
  v183 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v183);
  v184 = v285 - v310;
  sub_1CA948B68();

  v185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v176 + 80) = sub_1CA2F9F14(v289, v288, v179, v287, 0, 0, v285 - v181, v184);
  v186 = v296;
  *(v176 + 104) = v307;
  *(v176 + 112) = v186;
  v291 = 0xD000000000000012;
  *(v176 + 120) = 0xD000000000000012;
  *(v176 + 128) = 0x80000001CA9D68A0;
  v187 = v300;
  *(v176 + 144) = MEMORY[0x1E69E6158];
  *(v176 + 152) = v187;
  v188 = sub_1CA94C438("Corner Radius (WFMaskCornerRadius)", 34);
  v287 = v189;
  *&v288 = v188;
  v190 = sub_1CA94C438("Corner Radius", 13);
  v286 = v191;
  v289 = v285;
  MEMORY[0x1EEE9AC00](v190);
  sub_1CA948D98();
  v192 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v192);
  v193 = v310;
  sub_1CA948B68();

  v194 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v176 + 160) = sub_1CA2F9F14(v288, v287, v190, v286, 0, 0, v285 - v181, v285 - v193);
  v195 = v307;
  v196 = v298;
  *(v176 + 184) = v307;
  *(v176 + 192) = v196;
  v197 = sub_1CA94C438("0 (WFMaskCornerRadius)", 22);
  v287 = v198;
  *&v288 = v197;
  v286 = sub_1CA94C438("0", 1);
  v200 = v199;
  v289 = v285;
  MEMORY[0x1EEE9AC00](v286);
  v201 = v285 - v311;
  sub_1CA948D98();
  v202 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v176 + 200) = sub_1CA2F9F14(v288, v287, v286, v200, 0, 0, v201, v285 - v193);
  *(v176 + 224) = v195;
  *(v176 + 232) = @"RequiredResources";
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v204 = swift_allocObject();
  v288 = xmmword_1CA981310;
  *(v204 + 16) = xmmword_1CA981310;
  v287 = @"RequiredResources";
  v205 = MEMORY[0x1E69E6158];
  *(v204 + 32) = sub_1CA94C1E8();
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v286 = v206;
  *(v176 + 240) = v204;
  *(v176 + 264) = v206;
  *(v176 + 272) = @"TextAlignment";
  *(v176 + 304) = v205;
  *(v176 + 280) = 0x7468676952;
  *(v176 + 288) = 0xE500000000000000;
  v207 = @"TextAlignment";
  v208 = sub_1CA94C1E8();
  v209 = sub_1CA2F864C(v208);
  *(v305 + 48) = v209;
  v210 = swift_allocObject();
  *(v210 + 16) = v292;
  v212 = v293;
  v211 = v294;
  *(v210 + 32) = v297;
  *(v210 + 40) = v212;
  *(v210 + 48) = v211;
  v213 = v290;
  *(v210 + 64) = v205;
  *(v210 + 72) = v213;
  *&v297 = sub_1CA94C438("An alpha mask to apply to the source image, where darker colors become transparent and lighter colors remain opaque. If the mask is sized differently than the source image, the mask is resized to match the dimensions of the source image. (WFCustomMaskImage)", 257);
  v294 = v214;
  v215 = sub_1CA94C438("An alpha mask to apply to the source image, where darker colors become transparent and lighter colors remain opaque. If the mask is sized differently than the source image, the mask is resized to match the dimensions of the source image.", 237);
  v217 = v216;
  v301 = v285;
  MEMORY[0x1EEE9AC00](v215);
  v218 = v285 - v311;
  sub_1CA948D98();
  v219 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v219);
  v220 = v285 - v310;
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v210 + 80) = sub_1CA2F9F14(v297, v294, v215, v217, 0, 0, v218, v220);
  v222 = v296;
  *(v210 + 104) = v307;
  *(v210 + 112) = v222;
  *(v210 + 120) = 0xD000000000000011;
  *(v210 + 128) = 0x80000001CA9D6B20;
  v223 = v300;
  *(v210 + 144) = MEMORY[0x1E69E6158];
  *(v210 + 152) = v223;
  v300 = sub_1CA94C438("Custom Image (WFCustomMaskImage)", 32);
  *&v297 = v224;
  v225 = sub_1CA94C438("Custom Image", 12);
  v296 = v226;
  v301 = v285;
  MEMORY[0x1EEE9AC00](v225);
  v227 = v311;
  sub_1CA948D98();
  v228 = v312;
  v229 = [v312 bundleURL];
  v294 = v285;
  MEMORY[0x1EEE9AC00](v229);
  v230 = v310;
  sub_1CA948B68();

  v231 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v210 + 160) = sub_1CA2F9F14(v300, v297, v225, v296, 0, 0, v285 - v227, v285 - v230);
  v232 = v298;
  *(v210 + 184) = v307;
  *(v210 + 192) = v232;
  v300 = sub_1CA94C438("Image (WFCustomMaskImage)", 25);
  v298 = v233;
  v234 = sub_1CA94C438("Image", 5);
  *&v297 = v235;
  v301 = v285;
  MEMORY[0x1EEE9AC00](v234);
  sub_1CA948D98();
  v236 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v236);
  sub_1CA948B68();

  v237 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v210 + 200) = sub_1CA2F9F14(v300, v298, v234, v297, 0, 0, v285 - v227, v285 - v230);
  v238 = v287;
  *(v210 + 224) = v307;
  *(v210 + 232) = v238;
  v239 = swift_allocObject();
  *(v239 + 16) = v288;
  *(v239 + 32) = sub_1CA94C1E8();
  *(v210 + 264) = v286;
  *(v210 + 240) = v239;
  v240 = sub_1CA94C1E8();
  v241 = sub_1CA2F864C(v240);
  v242 = v305;
  *(v305 + 56) = v241;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v244 = v306;
  v306[50] = v242;
  v244[53] = v243;
  v244[54] = @"ParameterSummary";
  v305 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v307 = swift_allocObject();
  *(v307 + 16) = xmmword_1CA981470;
  v304 = "Image (WFCustomMaskImage)";
  v245 = @"ParameterSummary";
  v246 = sub_1CA94C438("Mask ${WFInput} with ${WFMaskType} shape", 40);
  v301 = v247;
  v302 = v246;
  v248 = sub_1CA94C438("Mask ${WFInput} with ${WFMaskType} shape", 40);
  v300 = v249;
  *&v303 = v285;
  MEMORY[0x1EEE9AC00](v248);
  v250 = v311;
  sub_1CA948D98();
  v251 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v251);
  v252 = v310;
  sub_1CA948B68();

  v253 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v254 = sub_1CA2F9F14(v302, v301, v248, v300, 0, 0, v285 - v250, v285 - v252);
  v255 = objc_allocWithZone(WFActionParameterSummaryValue);
  v256 = sub_1CA65DD78(v291, v304 | 0x8000000000000000, v254);
  *(v307 + 32) = v256;
  v304 = "with ${WFMaskType} shape";
  v257 = sub_1CA94C438("Mask ${WFInput} with ${WFMaskType} ${WFCustomMaskImage}", 55);
  v301 = v258;
  v302 = v257;
  v259 = sub_1CA94C438("Mask ${WFInput} with ${WFMaskType} ${WFCustomMaskImage}", 55);
  v261 = v260;
  *&v303 = v285;
  MEMORY[0x1EEE9AC00](v259);
  sub_1CA948D98();
  v262 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v262);
  sub_1CA948B68();

  v263 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v264 = sub_1CA2F9F14(v302, v301, v259, v261, 0, 0, v285 - v250, v285 - v252);
  v265 = objc_allocWithZone(WFActionParameterSummaryValue);
  v266 = sub_1CA65DD78(0xD000000000000032, v304 | 0x8000000000000000, v264);
  v267 = v307;
  *(v307 + 40) = v266;
  v304 = "e} ${WFCustomMaskImage}";
  v268 = sub_1CA94C438("Mask ${WFInput} with ${WFMaskType} shape", 40);
  v270 = v269;
  v271 = sub_1CA94C438("Mask ${WFInput} with ${WFMaskType} shape", 40);
  v273 = v272;
  *&v303 = v285;
  MEMORY[0x1EEE9AC00](v271);
  v274 = v285 - v311;
  sub_1CA948D98();
  v275 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v275);
  v276 = v285 - v310;
  sub_1CA948B68();

  v277 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v278 = sub_1CA2F9F14(v268, v270, v271, v273, 0, 0, v274, v276);
  v279 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v267 + 48) = sub_1CA65DD78(0xD000000000000038, v304 | 0x8000000000000000, v278);
  v280 = v305;
  v281 = sub_1CA65AF90(v267);
  v282 = v306;
  v306[55] = v281;
  v282[58] = v280;
  v282[59] = @"ResidentCompatible";
  v282[63] = MEMORY[0x1E69E6370];
  *(v282 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v283 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6229BC(uint64_t a1)
{
  v3 = sub_1CA62E6C4(a1, *v1, *(v1 + 8), *(v1 + 16));
  v4 = *(v1 + 40);
  sub_1CA623CA4(a1, v11);
  v5 = swift_allocObject();
  v6 = v11[1];
  *(v5 + 16) = v11[0];
  *(v5 + 32) = v6;
  *(v5 + 48) = v11[2];
  v7 = *(v1 + 16);
  *(v5 + 72) = *v1;
  *(v5 + 64) = v12;
  *(v5 + 88) = v7;
  *(v5 + 104) = *(v1 + 32);
  swift_bridgeObjectRetain_n();
  sub_1CA94C218();
  sub_1CA94C218();
  v8 = RowTemplateParameterOptions.variablesDisabled.getter();
  v9 = objc_allocWithZone(type metadata accessor for CalendarUnitPickerParameter());
  sub_1CA623500(1953066613, 0xE400000000000000, v4, sub_1CA623D00, v5, v8 & 1);
  swift_isUniquelyReferenced_nonNull_native();
  *&v11[0] = v3;
  sub_1CA3225FC();
  return *&v11[0];
}

uint64_t sub_1CA622B04(uint64_t a1, void *a2)
{
  sub_1CA43FE30(a1, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 160))(*a2, a2[1], v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
    if (v5)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1CA444194(v7);
  }

  return 0;
}

uint64_t sub_1CA622BBC(uint64_t a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = *a2;
  v5 = a2[1];
  v3[4] = *a2;
  v3[5] = v5;
  v6 = *v2;
  v7 = v2[1];
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_1CA622C80;

  return sub_1CA62EC48(v4, v5, v6, v7);
}

uint64_t sub_1CA622C80(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = a1;
    v11 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1CA622DB4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 56);
  [*(v0 + 16) setNumber_];

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1CA622E64;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  return sub_1CA623008(v4, v3);
}

uint64_t sub_1CA622E64(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 72) = a1;
    v11 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1CA622F98()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  [*(v0 + 16) setCalendarUnit_];

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA623008(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CA62302C, 0, 0);
}

uint64_t sub_1CA62302C()
{
  if (*(v0[2] + 16) && (v1 = sub_1CA271BF8(*(v0[4] + 24), *(v0[4] + 32)), (v2 & 1) != 0))
  {
    v3 = *(*(v0[2] + 56) + 8 * v1);
    v0[5] = v3;
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v4 = swift_task_alloc();
      v0[6] = v4;
      *v4 = v0;
      v4[1] = sub_1CA6231F4;
      v5 = v0[3];

      return sub_1CA32BB60(v5);
    }

    else
    {
      sub_1CA2A741C();
      swift_allocError();
      *v8 = v3;
      *(v8 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v9();
    }
  }

  else
  {
    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_1CA6231F4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;
  *(v2 + 64) = v0;

  if (v0)
  {
    v5 = sub_1CA2BCF10;
  }

  else
  {
    v5 = sub_1CA6232FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA6232FC()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    swift_unknownObjectRelease();
    v3 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRelease();
LABEL_5:
    swift_unknownObjectRelease();
    v4 = *(v0 + 8);

    return v4(v3);
  }

  sub_1CA2A741C();
  swift_allocError();
  v7 = v6;
  *(v6 + 24) = swift_getObjectType();
  *v7 = v1;
  *(v7 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA623444(uint64_t a1, uint64_t *a2)
{
  v6 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = v2[2];
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_1CA5C5FA8;

  return sub_1CA622BBC(a1, a2);
}

id sub_1CA623500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  *&v6[OBJC_IVAR____TtC11WorkflowKitP33_AD767BEAA88C93AB9397AB9AE1AC0E0B27CalendarUnitPickerParameter_units] = a3;
  v11 = &v6[OBJC_IVAR____TtC11WorkflowKitP33_AD767BEAA88C93AB9397AB9AE1AC0E0B27CalendarUnitPickerParameter_associatedNumberState];
  *v11 = a4;
  *(v11 + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  v13 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 64) = v13;
  *(inited + 72) = @"HideClearButton";
  v14 = MEMORY[0x1E69E6370];
  *(inited + 80) = 1;
  *(inited + 104) = v14;
  *(inited + 112) = @"DisallowedVariableTypes";
  if (a6)
  {
    sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v16 = v7;
    v17 = @"Key";
    v18 = @"HideClearButton";
    v19 = @"DisallowedVariableTypes";
    v20 = [ObjCClassFromMetadata allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA514750(&qword_1EC441A60, type metadata accessor for WFVariableType, &unk_1CA9804C8);
    v21 = sub_1CA94C8F8();

    sub_1CA3E4650(v21, v22, v23, v24, v25, v26, v27);
    v29 = v28;
  }

  else
  {

    v30 = @"Key";
    v31 = @"HideClearButton";
    v32 = @"DisallowedVariableTypes";
    v29 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 120) = v29;
  _s3__C3KeyVMa_0(0);
  sub_1CA514750(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v33 = sub_1CA94C1E8();
  v34 = sub_1CA2F864C(v33);
  v37.receiver = v7;
  v37.super_class = type metadata accessor for CalendarUnitPickerParameter();
  v35 = objc_msgSendSuper2(&v37, sel_initWithDefinition_, v34);

  return v35;
}

uint64_t sub_1CA62385C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_AD767BEAA88C93AB9397AB9AE1AC0E0B27CalendarUnitPickerParameter_units);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v4 = v1 + 32;
    do
    {
      v4 += 8;
      v5 = sub_1CA94D168();
      v6 = [objc_allocWithZone(WFCalendarUnitSubstitutableState) initWithNumber_];

      v7 = WFVariableSubstitutableParameterStateUpcast(v6);
      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1CA623950(void *a1)
{
  sub_1CA25B3D0(0, &qword_1EC447708, off_1E836DEF8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (!WFVariableSubstitutableParameterStateDowncast(a1, ObjCClassFromMetadata))
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4 || (v5 = [v4 number]) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = v5;
  v7 = sub_1CA94D158();
  v8 = (*(v1 + OBJC_IVAR____TtC11WorkflowKitP33_AD767BEAA88C93AB9397AB9AE1AC0E0B27CalendarUnitPickerParameter_associatedNumberState))();
  v9 = v8;
  if (v8 && (v10 = [v8 decimalNumber]) != 0)
  {
    v11 = v10;
    [v10 decimalValue];
    v12 = v23;
    v13 = v24;
    v14 = v25;

    v15 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
  }

  v17 = MEMORY[0x1CCAA1E90](1);
  if (v15)
  {
    v20 = 0;
  }

  else
  {
    v20 = MEMORY[0x1CCAA1EB0](v12, v13, v14, v17, v18, v19);
  }

  v21 = WFLabelForCalendarUnit(v7, v9, v20 & 1);
  v16 = sub_1CA94C3A8();
  swift_unknownObjectRelease();

  return v16;
}

id sub_1CA623BE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarUnitPickerParameter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA623D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1CA94C368();

  v6 = [v4 initWithIdentifier:v5 objectType:a3];

  return v6;
}

uint64_t sub_1CA623D88(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1CA296348();
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1CA94C218();
  sub_1CA62660C(v8, a2);
  sub_1CA94D4E8();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1CA623E2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
  }

  else
  {
    v12[5] = v4;
    v12[6] = v5;
    v8 = result;
    if (a3 - a2 >= *(result + 16))
    {
      v9 = *(result + 16);
    }

    else
    {
      v9 = a3 - a2;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446BE0, &qword_1CA98FFF0);
      v10 = sub_1CA94D688();
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC8];
    }

    v12[0] = v10;
    sub_1CA62641C(v8, a2, a3, 1, v12);
    v11 = v12[0];
    if (v3)
    {
    }

    return v11;
  }

  return result;
}

id sub_1CA624010(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void *a5)
{
  a3();
  sub_1CA25B3D0(0, a4, a5);
  v7 = sub_1CA94C648();

  return v7;
}

id sub_1CA6240D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&v4[*a3] = a1;
  *&v4[*a4] = a2;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_1CA6241C8(uint64_t a1, uint64_t a2)
{
  sub_1CA94D6E8();
  OUTLINED_FUNCTION_87();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1CA624210(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x776F6C666B726F77;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x456E75527473616CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1CA6242C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA6241C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1CA6242F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CA624210(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1CA624334(void *a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char a12, char a13)
{
  ObjectType = swift_getObjectType();
  v20 = &v13[OBJC_IVAR___WFLibraryWorkflowsQuery_limit];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v13[OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v13[OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v13[OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier];
  *v23 = 0;
  v23[1] = 0;
  *&v13[OBJC_IVAR___WFLibraryWorkflowsQuery_workflowQuery] = a1;
  v13[OBJC_IVAR___WFLibraryWorkflowsQuery_sortBy] = a2;
  *v20 = a3;
  v20[8] = a4 & 1;
  *v21 = a5;
  v21[1] = a6;
  *v22 = a7;
  v22[1] = a8;
  v13[OBJC_IVAR___WFLibraryWorkflowsQuery_hasAssociatedAppBundleIdentifier] = a9;
  *v23 = a10;
  v23[1] = a11;
  v24 = a1;

  v13[OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyModified] = a12;
  v13[OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyRun] = a13;
  v30.receiver = v13;
  v30.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v30, sel_init);

  return v25;
}

uint64_t LibraryWorkflowsQuery.debugDescription.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CA981310;
  sub_1CA94D408();

  OUTLINED_FUNCTION_6_5();
  v27 = v3;
  v4 = [*(v0 + OBJC_IVAR___WFLibraryWorkflowsQuery_workflowQuery) description];
  v5 = sub_1CA94C3A8();
  v7 = v6;

  MEMORY[0x1CCAA1300](v5, v7);

  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = v27;
  if ((*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_limit + 8) & 1) == 0)
  {
    v8 = sub_1CA94D798();
    MEMORY[0x1CCAA1300](v8);

    OUTLINED_FUNCTION_2_58();
    if (v9)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v23;
    }

    OUTLINED_FUNCTION_3_52();
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining + 8))
  {
    OUTLINED_FUNCTION_6_44();
    sub_1CA94D408();

    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_8_30();

    OUTLINED_FUNCTION_2_58();
    if (v9)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v20;
    }

    OUTLINED_FUNCTION_3_52();
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing + 8))
  {
    OUTLINED_FUNCTION_6_44();
    sub_1CA94D408();

    OUTLINED_FUNCTION_8_30();

    OUTLINED_FUNCTION_2_58();
    if (v9)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v21;
    }

    OUTLINED_FUNCTION_3_52();
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_hasAssociatedAppBundleIdentifier) == 1)
  {
    v10 = *(v2 + 16);
    if (v10 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v24;
    }

    OUTLINED_FUNCTION_6_5();
    *(v2 + 16) = v10 + 1;
    v11 = v2 + 16 * v10;
    *(v11 + 32) = 0xD000000000000024;
    *(v11 + 40) = v12;
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier + 8))
  {
    OUTLINED_FUNCTION_6_44();
    sub_1CA94D408();

    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_8_30();

    OUTLINED_FUNCTION_2_58();
    if (v9)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v22;
    }

    OUTLINED_FUNCTION_3_52();
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyModified) == 1)
  {
    v13 = *(v2 + 16);
    if (v13 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v25;
    }

    OUTLINED_FUNCTION_6_5();
    *(v2 + 16) = v13 + 1;
    v14 = v2 + 16 * v13;
    *(v14 + 32) = 0xD000000000000014;
    *(v14 + 40) = v15;
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyRun) == 1)
  {
    v16 = *(v2 + 16);
    if (v16 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v26;
    }

    *(v2 + 16) = v16 + 1;
    v17 = v2 + 16 * v16;
    *(v17 + 32) = 0x6E65636572207369;
    *(v17 + 40) = 0xEF6E757220796C74;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v18 = sub_1CA94C308();

  return v18;
}

id LibraryWorkflowsQuery.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return v3;
}

void sub_1CA62490C(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = sub_1CA949F78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Library.performShortcutQuery(query:)(*(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_workflowQuery));
  if (!v3)
  {
    v53 = v6;
    v10 = v58[0];
    v57 = v58[1];
    sub_1CA94C218();
    v55 = sub_1CA94C648();
    v54 = sub_1CA2718A8(*(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_sortBy));
    if (*(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining + 8))
    {
      sub_1CA94C218();
      OUTLINED_FUNCTION_134();
      v11 = sub_1CA94C368();
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing + 8);
    v52 = v7;
    v56 = a2;
    if (v12)
    {
      sub_1CA94C218();
      OUTLINED_FUNCTION_134();
      v13 = sub_1CA94C368();
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_hasAssociatedAppBundleIdentifier);
    if (*(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier + 8))
    {
      sub_1CA94C218();
      v15 = sub_1CA94C368();
    }

    else
    {
      v15 = 0;
    }

    OUTLINED_FUNCTION_15_25();
    BYTE1(v51) = v16;
    LOBYTE(v51) = v17;
    v18 = v55;
    v20 = [v56 visibleReferencesForWorkflowIDs:v55 sortBy:v54 nameContaining:v11 nameEqualing:v13 hasAssociatedAppBundleIdentifier:v14 associatedAppBundleIdentifier:v15 isRecentlyModified:v51 isRecentlyRun:v19 limitTo:?];

    v21 = *(v10 + 16);
    v22 = sub_1CA94C218();
    v23 = sub_1CA623E2C(v22, 0, v21);
    if (*(v23 + 16) != v21)
    {
      sub_1CA949C58();
      v24 = sub_1CA949F68();
      v25 = sub_1CA94CC18();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1CA256000, v24, v25, "Duplicate shortcut identifiers found in the library, this should not happen", v26, 2u);
        MEMORY[0x1CCAA4BF0](v26, -1, -1);
      }

      (*(v52 + 8))(v9, v53);
    }

    v27 = [v20 descriptors];
    sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
    sub_1CA94C658();

    sub_1CA94C218();
    v28 = sub_1CA94C218();
    v58[0] = sub_1CA27295C(v28);
    sub_1CA623D88(v58, v23);

    v29 = v58[0];
    if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
    {
      sub_1CA2E8D58(MEMORY[0x1E69E7CC0], v30, v31, v32, v33, v34, v35, v36, v52, v53);
    }

    else
    {
      v37 = MEMORY[0x1E69E7CD0];
    }

    v58[0] = v37;
    v38 = *(v10 + 16);
    if (v38)
    {
      sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
      v39 = v10 + 40;
      do
      {
        sub_1CA94C218();
        v40 = OUTLINED_FUNCTION_134();
        v42 = sub_1CA623D0C(v40, v41, 0);
        sub_1CA369DB0(&v59, v42);

        v39 += 16;
        --v38;
      }

      while (v38);
    }

    swift_bridgeObjectRelease_n();
    v43 = v57;
    v44 = *(v57 + 16);
    if (v44)
    {
      sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
      v45 = v43 + 40;
      do
      {
        sub_1CA94C218();
        v46 = OUTLINED_FUNCTION_134();
        v48 = sub_1CA623D0C(v46, v47, 2);
        sub_1CA369DB0(&v59, v48);

        v45 += 16;
        --v44;
      }

      while (v44);
    }

    sub_1CA25B3D0(0, &qword_1EC441848, 0x1E69E0A70);
    v49 = sub_1CA624E64(0, v58[0]);
    v50 = objc_allocWithZone(type metadata accessor for LibraryWorkflowsQueryResult());
    sub_1CA6240D4(v29, v49, &OBJC_IVAR___WFLibraryWorkflowsQueryResult_descriptors, &OBJC_IVAR___WFLibraryWorkflowsQueryResult_state);
  }
}

id sub_1CA624E64(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  sub_1CA627754();
  v4 = sub_1CA94C8E8();

  v5 = [v3 initWithObjectType:a1 state:v4];

  return v5;
}

void sub_1CA624F18(uint64_t a1, void *a2)
{
  v4 = v2;
  Library.performShortcutQuery(query:)(*(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_workflowQuery));
  if (!v3)
  {
    v6 = sub_1CA94C648();

    v16 = sub_1CA2718A8(*(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_sortBy));
    if (*(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining + 8))
    {
      sub_1CA94C218();
      v7 = sub_1CA94C368();
    }

    else
    {
      v7 = 0;
    }

    if (*(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing + 8))
    {
      sub_1CA94C218();
      v8 = sub_1CA94C368();
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_hasAssociatedAppBundleIdentifier);
    if (*(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier + 8))
    {
      sub_1CA94C218();
      v10 = sub_1CA94C368();
    }

    else
    {
      v10 = 0;
    }

    OUTLINED_FUNCTION_15_25();
    BYTE1(v15) = v11;
    LOBYTE(v15) = v12;
    v14 = [a2 visibleReferencesForWorkflowIDs:v6 sortBy:v16 nameContaining:v7 nameEqualing:v8 hasAssociatedAppBundleIdentifier:v9 associatedAppBundleIdentifier:v10 isRecentlyModified:v15 isRecentlyRun:v13 limitTo:?];

    [v14 count];
    sub_1CA94C988();
  }
}

id sub_1CA625140(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(id, id))
{
  v9 = a3;
  v10 = a4;
  v11 = a1;
  v12 = a6(v9, v10);

  return v12;
}

id sub_1CA62521C(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1;
  OUTLINED_FUNCTION_13_35();
  OUTLINED_FUNCTION_1_48();
  return OUTLINED_FUNCTION_11_33(v5, v6, v7, v8, v9, v10, v11, v12, v14, 0, 0, v15, SHIBYTE(v15));
}

id sub_1CA6252B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  v7 = a1;
  OUTLINED_FUNCTION_13_35();
  return OUTLINED_FUNCTION_11_33(v8, v9, a3, 0, 0, 0, v10, v11, v13, 0, 0, v14, SHIBYTE(v14));
}

id sub_1CA62538C(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1;
  OUTLINED_FUNCTION_1_48();
  return OUTLINED_FUNCTION_11_33(v5, v6, v7, v8, v9, v10, v11, v12, 1, 0, 0, 0, 0);
}

id sub_1CA625454()
{
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_87();
  sub_1CA94C218();
  v3 = v2;
  OUTLINED_FUNCTION_1_48();
  return OUTLINED_FUNCTION_11_33(v4, v5, v6, v7, v8, v9, v10, v11, 1, v1, v0, 0, 0);
}

id sub_1CA6254CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(v5);
  sub_1CA94C218();
  v11 = a1;
  OUTLINED_FUNCTION_13_35();
  return OUTLINED_FUNCTION_11_33(v12, v13, a5, 0, a3, a4, v14, v15, v17, 0, 0, v18, SHIBYTE(v18));
}

id sub_1CA6255E8()
{
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_87();
  sub_1CA94C218();
  v3 = v2;
  OUTLINED_FUNCTION_13_35();
  OUTLINED_FUNCTION_1_48();
  return sub_1CA624334(v4, v5, v6, v7, v8, v9, v1, v0, v11, 0, 0, v12, SHIBYTE(v12));
}

id sub_1CA625660(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_1CA94C3A8();
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a6();

  return v9;
}

id LibraryWorkflowsQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1CA625808@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_56();
  *a1 = result;
  return result;
}

uint64_t sub_1CA62583C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA298470(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA62586C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA528440(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA62589C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA2984E0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA6258D4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA2984E8(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1CA625908@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA298510(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1CA625954@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA298540(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA6259C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA297E38(a1);
  *a2 = result;
  return result;
}

id sub_1CA625A08(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1CA94C368();

  return v5;
}

uint64_t LibraryCollectionsQuery.debugDescription.getter()
{
  sub_1CA94D408();

  v0 = sub_1CA94C408();
  MEMORY[0x1CCAA1300](v0);

  return 0x676E6970756F7267;
}

uint64_t sub_1CA625B30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  a4(v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1CA94D7D8();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

uint64_t sub_1CA625B8C(id a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + OBJC_IVAR___WFLibraryCollectionsQuery_groupingType);
  if ((v3 & 2) != 0)
  {
    v4 = [a1 collections];
    sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
    v5 = sub_1CA94C658();

    sub_1CA27E3C0(v5);
  }

  if ((v3 & 4) != 0)
  {
    v6 = [a1 folders];
    sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
    v7 = sub_1CA94C658();

    sub_1CA27E3C0(v7);
  }

  return v9;
}

id sub_1CA625C88(void *a1)
{
  v1 = sub_1CA625B8C(a1);
  if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
  {
    sub_1CA2E8D58(MEMORY[0x1E69E7CC0], v2, v3, v4, v5, v6, v7, v8, v26, v27);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  v27 = v9;
  v10 = sub_1CA25B410(v1);
  if (!v10)
  {
LABEL_11:
    sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
    v21 = sub_1CA94C3A8();
    v23 = sub_1CA623D0C(v21, v22, 2);
    sub_1CA369DB0(&v26, v23);

    sub_1CA25B3D0(0, &qword_1EC441848, 0x1E69E0A70);
    v24 = sub_1CA624E64(2, v27);
    v25 = objc_allocWithZone(type metadata accessor for LibraryCollectionsQueryResult());
    return sub_1CA6240D4(v1, v24, &OBJC_IVAR___WFLibraryCollectionsQueryResult_descriptors, &OBJC_IVAR___WFLibraryCollectionsQueryResult_state);
  }

  v11 = v10;
  result = sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1CCAA22D0](v13, v1);
      }

      else
      {
        v14 = *(v1 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      v16 = [v14 identifier];
      v17 = sub_1CA94C3A8();
      v19 = v18;

      v20 = sub_1CA623D0C(v17, v19, 2);
      sub_1CA369DB0(&v26, v20);
    }

    while (v11 != v13);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA625EE0(void *a1)
{
  v1 = sub_1CA625B8C(a1);
  sub_1CA25B410(v1);
  OUTLINED_FUNCTION_87();

  return sub_1CA94C988();
}

id sub_1CA625FC8(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___WFLibraryCollectionsQuery_groupingType] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

_BYTE *storeEnumTagSinglePayload for LibraryWorkflowsQuery.SortKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CA626268()
{
  result = qword_1EC447780;
  if (!qword_1EC447780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447780);
  }

  return result;
}

unint64_t sub_1CA6262C0()
{
  result = qword_1EC447788;
  if (!qword_1EC447788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447788);
  }

  return result;
}

unint64_t sub_1CA626318()
{
  result = qword_1EC447790;
  if (!qword_1EC447790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447790);
  }

  return result;
}

unint64_t sub_1CA626370()
{
  result = qword_1EC447798;
  if (!qword_1EC447798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447798);
  }

  return result;
}

unint64_t sub_1CA6263C8()
{
  result = qword_1EC4477A0;
  if (!qword_1EC4477A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4477A0);
  }

  return result;
}

uint64_t sub_1CA62660C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  result = sub_1CA94D778();
  if (result < v5)
  {
    v7 = result;
    v8 = sub_1CA2B8B60(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);
    sub_1CA94C218();
    result = sub_1CA6268EC(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1CA626738(0, v5, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

void sub_1CA626738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v35 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v33 = v6;
      v34 = a3;
      v8 = *(v35 + 8 * a3);
      v32 = v7;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v36 = v10;
        v12 = [v10 identifier];
        v13 = sub_1CA94C3A8();
        v15 = v14;

        v16 = [v11 identifier];
        v17 = sub_1CA94C3A8();
        v19 = v18;

        if (*(a5 + 16) && (v20 = sub_1CA271BF8(v13, v15), (v21 & 1) != 0))
        {
          v22 = *(*(a5 + 56) + 8 * v20);
          v23 = 1;
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }

        if (*(a5 + 16) && (v24 = sub_1CA271BF8(v17, v19), (v25 & 1) != 0))
        {
          v26 = *(*(a5 + 56) + 8 * v24);
          v27 = 1;
        }

        else
        {
          v26 = 0;
          v27 = 0;
        }

        if ((v23 & v27) != 1 || v22 >= v26)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return;
        }

        v29 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v29;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      a3 = v34 + 1;
      v6 = v33 + 8;
      v7 = v32 - 1;
      if (v34 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1CA6268EC(void ***a1, uint64_t a2, void ***a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v164 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_116:
      v132 = v8 + 16;
      v133 = *(v8 + 2);
      for (i = v8; ; v8 = i)
      {
        if (v133 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v134 = *a3;
        if (!*a3)
        {
          goto LABEL_154;
        }

        v135 = &v8[16 * v133];
        v136 = *v135;
        v137 = v132;
        v138 = &v132[16 * v133];
        v139 = *(v138 + 1);
        v140 = &v134[*v135];
        v141 = &v134[*v138];
        v169 = &v134[v139];
        sub_1CA94C218();
        sub_1CA62725C(v140, v141, v169, v164, a5);
        if (v158)
        {
          break;
        }

        if (v139 < v136)
        {
          goto LABEL_142;
        }

        if (v133 - 2 >= *v137)
        {
          goto LABEL_143;
        }

        v132 = v137;
        *v135 = v136;
        *(v135 + 1) = v139;
        v142 = *v137 - v133;
        if (*v137 < v133)
        {
          goto LABEL_144;
        }

        v133 = *v137 - 1;
        memmove(v138, v138 + 16, 16 * v142);
        *v137 = v133;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_151:
    v8 = sub_1CA627610();
    goto LABEL_116;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v159 = a5;
  while (2)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_32;
    }

    v150 = v8;
    v10 = *a3;
    v155 = v6;
    v11 = (*a3)[v9];
    v165 = (*a3)[v7];
    v160 = v7;
    v12 = v11;
    v13 = [v165 identifier];
    v14 = sub_1CA94C3A8();
    v16 = v15;

    v17 = [v12 identifier];
    v18 = sub_1CA94C3A8();
    v20 = v19;

    v21 = sub_1CA311A0C(v14, v16, a5);
    LOBYTE(v14) = v22;

    v23 = sub_1CA311A0C(v18, v20, a5);
    LODWORD(v18) = v24;

    v7 = v160;

    v25 = v155;
    v26 = (v21 < v23) & ~v18;
    if (v14)
    {
      v26 = 0;
    }

    v153 = v26;
    v145 = v9;
    v27 = &v10[v9 + 2];
    v148 = 8 * v9;
    for (j = 8 * v9 + 8; ; j += 8)
    {
      v161 = v7++;
      if (v7 >= v25)
      {
        break;
      }

      v29 = *(v27 - 1);
      v166 = v27;
      v30 = *v27;
      v31 = v29;
      v164 = v30;
      v32 = [v30 identifier];
      v33 = sub_1CA94C3A8();
      v35 = v34;

      v36 = [v31 identifier];
      v37 = sub_1CA94C3A8();
      v39 = v38;

      if (*(a5 + 16) && (v40 = sub_1CA271BF8(v33, v35), (v41 & 1) != 0))
      {
        v42 = 0;
        v43 = *(*(a5 + 56) + 8 * v40);
      }

      else
      {
        v43 = 0;
        v42 = 1;
      }

      if (!*(a5 + 16) || (v44 = sub_1CA271BF8(v37, v39), a5 = v159, (v45 & 1) == 0))
      {

LABEL_18:
        v25 = v155;
        v47 = v166;
        if (v153)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v46 = *(*(v159 + 56) + 8 * v44);

      if (v42)
      {
        goto LABEL_18;
      }

      v25 = v155;
      v47 = v166;
      if (((v153 ^ (v43 >= v46)) & 1) == 0)
      {
        break;
      }

LABEL_19:
      v27 = v47 + 1;
    }

    if (!v153)
    {
      v8 = v150;
      goto LABEL_31;
    }

LABEL_21:
    v48 = v161;
    v7 = v161 + 1;
    v49 = v145;
    if (v161 + 1 < v145)
    {
      goto LABEL_148;
    }

    if (v145 >= v7)
    {
      v8 = v150;
      v9 = v145;
      goto LABEL_32;
    }

    v50 = v148;
    v8 = v150;
    do
    {
      if (v49 != v48)
      {
        v51 = *a3;
        if (!*a3)
        {
          goto LABEL_155;
        }

        v52 = *(v51 + v50);
        *(v51 + v50) = *(v51 + j);
        *(v51 + j) = v52;
      }

      ++v49;
      j -= 8;
      v50 += 8;
      v79 = v49 < v48--;
    }

    while (v79);
LABEL_31:
    v9 = v145;
LABEL_32:
    v53 = a3[1];
    if (v7 >= v53)
    {
      goto LABEL_60;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_147;
    }

    if (v7 - v9 >= a4)
    {
LABEL_60:
      if (v7 < v9)
      {
        goto LABEL_146;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E49C0(0, *(v8 + 2) + 1, 1, v8);
        v8 = v130;
      }

      v83 = *(v8 + 2);
      v82 = *(v8 + 3);
      v84 = v83 + 1;
      if (v83 >= v82 >> 1)
      {
        sub_1CA2E49C0(v82 > 1, v83 + 1, 1, v8);
        v8 = v131;
      }

      *(v8 + 2) = v84;
      v85 = (v8 + 32);
      v86 = &v8[16 * v83 + 32];
      *v86 = v9;
      *(v86 + 1) = v7;
      v168 = *a1;
      if (!*a1)
      {
        goto LABEL_156;
      }

      if (!v83)
      {
LABEL_110:
        v6 = a3[1];
        if (v7 >= v6)
        {
          goto LABEL_114;
        }

        continue;
      }

      v163 = v7;
      v164 = (v8 + 32);
      while (1)
      {
        v87 = v84 - 1;
        v88 = &v85[2 * v84 - 2];
        v89 = &v8[16 * v84];
        if (v84 >= 4)
        {
          break;
        }

        if (v84 == 3)
        {
          v90 = *(v8 + 4);
          v91 = *(v8 + 5);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_81:
          if (v93)
          {
            goto LABEL_133;
          }

          v105 = *v89;
          v104 = *(v89 + 1);
          v106 = __OFSUB__(v104, v105);
          v107 = v104 - v105;
          v108 = v106;
          if (v106)
          {
            goto LABEL_136;
          }

          v109 = v88[1];
          v110 = v109 - *v88;
          if (__OFSUB__(v109, *v88))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v107, v110))
          {
            goto LABEL_141;
          }

          if (v107 + v110 >= v92)
          {
            if (v92 < v110)
            {
              v87 = v84 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v84 < 2)
        {
          goto LABEL_135;
        }

        v112 = *v89;
        v111 = *(v89 + 1);
        v100 = __OFSUB__(v111, v112);
        v107 = v111 - v112;
        v108 = v100;
LABEL_96:
        if (v108)
        {
          goto LABEL_138;
        }

        v114 = *v88;
        v113 = v88[1];
        v100 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v100)
        {
          goto LABEL_140;
        }

        if (v115 < v107)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v87 - 1 >= v84)
        {
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
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
          goto LABEL_150;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v120 = v8;
        v121 = &v85[2 * v87 - 2];
        v122 = *v121;
        v123 = v87;
        v124 = &v85[2 * v87];
        v125 = v124[1];
        v126 = &v119[*v121];
        v127 = &v119[*v124];
        v128 = &v119[v125];
        a5 = v159;
        sub_1CA94C218();
        sub_1CA62725C(v126, v127, v128, v168, v159);
        if (v158)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v125 < v122)
        {
          goto LABEL_128;
        }

        v129 = *(v120 + 2);
        if (v123 > v129)
        {
          goto LABEL_129;
        }

        *v121 = v122;
        v121[1] = v125;
        if (v123 >= v129)
        {
          goto LABEL_130;
        }

        v84 = v129 - 1;
        memmove(v124, v124 + 2, 16 * (v129 - 1 - v123));
        v8 = v120;
        *(v120 + 2) = v129 - 1;
        v7 = v163;
        v85 = v164;
        a5 = v159;
        if (v129 <= 2)
        {
          goto LABEL_110;
        }
      }

      v94 = &v85[2 * v84];
      v95 = *(v94 - 8);
      v96 = *(v94 - 7);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_131;
      }

      v99 = *(v94 - 6);
      v98 = *(v94 - 5);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_132;
      }

      v101 = *(v89 + 1);
      v102 = v101 - *v89;
      if (__OFSUB__(v101, *v89))
      {
        goto LABEL_134;
      }

      v100 = __OFADD__(v92, v102);
      v103 = v92 + v102;
      if (v100)
      {
        goto LABEL_137;
      }

      if (v103 >= v97)
      {
        v117 = *v88;
        v116 = v88[1];
        v100 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v100)
        {
          goto LABEL_145;
        }

        if (v92 < v118)
        {
          v87 = v84 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

    break;
  }

  v54 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_149;
  }

  if (v54 >= v53)
  {
    v54 = a3[1];
  }

  if (v54 < v9)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v7 == v54)
  {
    goto LABEL_60;
  }

  v149 = v54;
  v151 = v8;
  v164 = *a3;
  v55 = &(*a3)[v7 - 1];
  v146 = v9;
  v56 = v9 - v7;
LABEL_41:
  v162 = v7;
  v57 = v55;
  v58 = v164[v7];
  v154 = v56;
  v156 = v57;
  v59 = v57;
  while (1)
  {
    v60 = *v59;
    v61 = v58;
    v62 = v60;
    v167 = v61;
    v63 = [v61 identifier];
    v64 = sub_1CA94C3A8();
    v66 = v65;

    v67 = [v62 identifier];
    v68 = sub_1CA94C3A8();
    v70 = v69;

    if (*(a5 + 16) && (v71 = sub_1CA271BF8(v64, v66), (v72 & 1) != 0))
    {
      v73 = *(*(a5 + 56) + 8 * v71);
      v74 = 1;
    }

    else
    {
      v73 = 0;
      v74 = 0;
    }

    if (*(a5 + 16) && (v75 = sub_1CA271BF8(v68, v70), (v76 & 1) != 0))
    {
      v77 = *(*(a5 + 56) + 8 * v75);
      v78 = 1;
    }

    else
    {
      v77 = 0;
      v78 = 0;
    }

    v79 = (v74 & v78) == 1 && v73 < v77;
    if (!v79)
    {
LABEL_58:
      v7 = v162 + 1;
      v55 = v156 + 8;
      v56 = v154 - 1;
      if (v162 + 1 == v149)
      {
        v7 = v149;
        v8 = v151;
        v9 = v146;
        goto LABEL_60;
      }

      goto LABEL_41;
    }

    if (!v164)
    {
      break;
    }

    v80 = *v59;
    v58 = *(v59 + 8);
    *v59 = v58;
    *(v59 + 8) = v80;
    v59 -= 8;
    if (__CFADD__(v56++, 1))
    {
      goto LABEL_58;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_153:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_154:

  __break(1u);
LABEL_155:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_156:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1CA62725C(char *a1, id *a2, id *a3, void **a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 8;
  v11 = a3 - a2;
  if (v10 >= v11)
  {
    sub_1CA440434(a2, a3 - a2, a4);
    v12 = &v6[v11];
    v70 = v9;
    v72 = v6;
LABEL_25:
    v37 = v8 - 1;
    v38 = v7 - 1;
    v74 = v8;
    v64 = v8 - 1;
    while (v12 > v6 && v8 > v9)
    {
      v66 = v12;
      v68 = v38;
      v40 = v12 - 1;
      v41 = *v37;
      v42 = *(v12 - 1);
      v43 = v41;
      v44 = [v42 identifier];
      v45 = sub_1CA94C3A8();
      v47 = v46;

      v48 = [v43 identifier];
      v49 = sub_1CA94C3A8();
      v51 = v50;

      if (*(a5 + 16) && (v52 = sub_1CA271BF8(v45, v47), (v53 & 1) != 0))
      {
        v54 = *(*(a5 + 56) + 8 * v52);
        v55 = 1;
      }

      else
      {
        v54 = 0;
        v55 = 0;
      }

      if (*(a5 + 16) && (v56 = sub_1CA271BF8(v49, v51), (v57 & 1) != 0))
      {
        v58 = *(*(a5 + 56) + 8 * v56);
        v59 = 1;
      }

      else
      {
        v58 = 0;
        v59 = 0;
      }

      if ((v55 & v59) == 1 && v54 < v58)
      {
        v7 = v68;
        v9 = v70;
        v12 = v66;
        v8 = v64;
        v6 = v72;
        if (v68 + 1 != v74)
        {
          *v68 = *v64;
          v8 = v64;
        }

        goto LABEL_25;
      }

      v8 = v74;
      v9 = v70;
      v37 = v64;
      if (v66 != v68 + 1)
      {
        *v68 = *v40;
      }

      v38 = v68 - 1;
      v12 = v40;
      v6 = v72;
    }
  }

  else
  {
    sub_1CA440434(a1, (a2 - a1) / 8, a4);
    v12 = &v6[v10];
    v65 = v12;
    v67 = v7;
    while (v6 < v12 && v8 < v7)
    {
      v69 = v9;
      v73 = v8;
      v14 = *v6;
      v15 = *v8;
      v16 = v14;
      v17 = [v15 identifier];
      v18 = sub_1CA94C3A8();
      v20 = v19;

      v21 = [v16 identifier];
      v22 = sub_1CA94C3A8();
      v24 = v23;

      v71 = v6;
      if (*(a5 + 16) && (v25 = sub_1CA271BF8(v18, v20), (v26 & 1) != 0))
      {
        v27 = *(*(a5 + 56) + 8 * v25);
        v28 = 1;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      v8 = v73;

      if (*(a5 + 16) && (v29 = sub_1CA271BF8(v22, v24), (v30 & 1) != 0))
      {
        v31 = *(*(a5 + 56) + 8 * v29);
        v32 = 1;
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      if ((v28 & v32) == 1 && v27 < v31)
      {
        v35 = v73;
        v34 = v69;
        v6 = v71;
        v36 = v69 == v73;
        v8 = v73 + 1;
      }

      else
      {
        v34 = v69;
        v35 = v71;
        v6 = v71 + 1;
        v36 = v69 == v71;
      }

      v12 = v65;
      v7 = v67;
      if (!v36)
      {
        *v34 = *v35;
      }

      v9 = v34 + 8;
    }

    v8 = v9;
  }

  v61 = v12 - v6;
  if (v8 != v6 || v8 >= &v6[v61])
  {
    memmove(v8, v6, 8 * v61);
  }

  return 1;
}

char *sub_1CA627628(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1CA627654(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E48, &qword_1CA9824B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_1CA627754()
{
  result = qword_1EC4417B8;
  if (!qword_1EC4417B8)
  {
    sub_1CA25B3D0(255, &qword_1EC4417C0, 0x1E69E0A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4417B8);
  }

  return result;
}

uint64_t WFEntityUpdatingAction.getValueForParameterData(_:ofProcessedParameters:)()
{
  OUTLINED_FUNCTION_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = sub_1CA94C838();
  v1[7] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v5 = sub_1CA94C7C8();
  v1[8] = v5;
  v1[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CA627980, v5, v4);
}

uint64_t sub_1CA627980(uint64_t a1)
{
  v2 = v1[5];
  v4 = v1[3];
  v3 = v1[4];
  v5 = sub_1CA94C828();
  v1[10] = v5;
  v6 = swift_task_alloc();
  v1[11] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v1[12] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477B0, &qword_1CA98E7A8);
  *v7 = v1;
  v7[1] = sub_1CA627AA8;
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v1 + 2, v5, v9, 0xD000000000000032, 0x80000001CA9D7100, sub_1CA62B23C, v6, v8);
}

uint64_t sub_1CA627AA8()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1();
  *v3 = v2;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1CA627C00, v5, v4);
}

uint64_t sub_1CA627C00()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_2_4();

  return v0();
}

uint64_t sub_1CA627C60()
{
  v0 = sub_1CA697814(v19);
  if (!v21)
  {
    return 2;
  }

  OUTLINED_FUNCTION_11_34(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19[0], v19[1], v19[2], v19[3], v20);
  v8 = RowTemplatePropertySetterParameterState.operators.getter();
  sub_1CA532E30(v19, &qword_1EC445FA0, &unk_1CA98B5A0);
  v9 = *(v8 + 16);

  return v9 == 1;
}

double WFEntityUpdatingAction.createTableRow()@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 availableSubjectValues];
  v4 = sub_1CA94C658();

  if (!*(v4 + 16) || (sub_1CA94C218(), , v5 = sub_1CA94C368(), v6 = [v1 parameterForKey_], v5, !v6))
  {

    goto LABEL_7;
  }

  type metadata accessor for WFUpdatableParameter();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = v7;
  sub_1CA94C1E8();
  sub_1CA94C1A8();

  v9 = v1;
  v10 = v6;
  UpdatableParameterState.init(serializedRepresentation:variableProvider:parameter:)(v8, v49);
  v11 = v49[0];
  if (v49[0] == 1)
  {

LABEL_7:
    result = 0.0;
    *(a1 + 44) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  v38 = v10;
  v34 = v49[1];
  v13 = v49[3];
  HIDWORD(v33) = v50;
  v14 = sub_1CA948D28();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v13;
  v36 = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1CA948D18();
  v18 = sub_1CA948CC8();
  v20 = v19;
  v21 = v14;
  v22 = v18;
  (*(v15 + 8))(v17, v21);
  v23 = BYTE4(v33);
  v24 = v34;
  v25 = sub_1CA94C368();

  v26 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

  swift_unknownObjectRelease();
  v39 = v11;
  v40 = v24;
  v41 = 0;
  v42 = v26;
  v43 = v23;
  *v44 = *v48;
  *&v44[3] = *&v48[3];
  v45 = v22;
  v46 = v20;
  v36 = v20;
  *&v27 = 16842752;
  v35 = v27;
  v47 = 16842752;
  v28 = sub_1CA5C8D08();
  v29 = [objc_opt_self() BOOLValueType];
  if (!v28)
  {

    OUTLINED_FUNCTION_25_19();
    goto LABEL_13;
  }

  sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
  v30 = sub_1CA94CFD8();

  OUTLINED_FUNCTION_25_19();
  if ((v30 & 1) == 0)
  {
LABEL_13:
    v31 = 0;
    goto LABEL_14;
  }

  v31 = 1;
LABEL_14:
  *a1 = v11;
  *(a1 + 8) = v24;
  *(a1 + 16) = 0;
  *(a1 + 24) = v26;
  *(a1 + 32) = v31;
  *(a1 + 33) = *v48;
  *(a1 + 36) = *&v48[3];
  v32 = v36;
  *(a1 + 40) = v22;
  *(a1 + 48) = v32;
  result = *&v35;
  *(a1 + 56) = v35;
  return result;
}

uint64_t sub_1CA6280B0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a2)
  {
    sub_1CA94C1C8();
  }

  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = OUTLINED_FUNCTION_26_21();
  v8(v12);
}

void sub_1CA628188(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id WFEntityUpdatingAction.parameterSummary.getter()
{
  v1 = sub_1CA697814(v18);
  if (v20)
  {
    OUTLINED_FUNCTION_11_34(v1, v2, v3, v4, v5, v6, v7, v8, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v18[0], v18[1], v18[2], v18[3], v19);
    sub_1CA628420(v17);
    v10 = v9;
    sub_1CA532E30(v18, &qword_1EC445FA0, &unk_1CA98B5A0);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    sub_1CA698450();
    if (v12)
    {
      v13 = [v0 localizedName];
    }

    else
    {
      v14 = sub_1CA94C438("Edit ${entity}", 14);
      if (qword_1EDB9F5F0 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDB9F690;
      v16 = sub_1CA94C368();
      sub_1CA94C368();
      OUTLINED_FUNCTION_87();

      v13 = [v15 localizedStringForKey:v16 value:v14 table:0];
    }

    sub_1CA94C3A8();
  }

  sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  return sub_1CA43AE20();
}

id sub_1CA628420(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 value];
  if (v2)
  {
    sub_1CA94C398();

    return 0;
  }

  return v2;
}

BOOL sub_1CA629C28()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  result = 0;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 properties];

    sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
    v4 = sub_1CA94C658();

    sub_1CA25B410(v4);
    OUTLINED_FUNCTION_87();

    if (v3 == 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1CA629CEC()
{
  sub_1CA697814(v2);
  if (!v3)
  {
    return 2;
  }

  v0 = v2[32] > 1u;
  sub_1CA532E30(v2, &qword_1EC445FA0, &unk_1CA98B5A0);
  return 2 * v0;
}

uint64_t WFEntityUpdatingAction.visibleParameters(withProcessing:)(char a1)
{
  v2 = v1;
  if (a1)
  {
    v13.receiver = v1;
    v13.super_class = type metadata accessor for WFEntityUpdatingAction();
    v3 = objc_msgSendSuper2(&v13, sel_visibleParametersWithProcessing_, 1);
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    v4 = sub_1CA94C658();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
    v5 = [v1 parametersByKey];
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    sub_1CA94C1C8();

    OUTLINED_FUNCTION_31();
    v6 = sub_1CA323E2C();

    if (v6)
    {
      if ([v2 entityVisibility])
      {
      }

      else
      {
        MEMORY[0x1CCAA1490]();
        OUTLINED_FUNCTION_8_8();
        if (v8)
        {
          OUTLINED_FUNCTION_64(v7);
          sub_1CA94C698();
        }

        sub_1CA94C6E8();
      }
    }

    sub_1CA697814(&v16);
    v19[0] = *v18;
    *(v19 + 7) = *&v18[7];
    if (*&v18[15])
    {
      if (v17)
      {
        v9 = [v17 value];
        if (v9)
        {
          v10 = v9;
          v14 = 0;
          v15 = 0;
          sub_1CA94C398();
        }
      }

      sub_1CA532E30(&v16, &qword_1EC445FA0, &unk_1CA98B5A0);
    }

    sub_1CA697948();
    MEMORY[0x1CCAA1490]();
    OUTLINED_FUNCTION_8_8();
    if (v8)
    {
      OUTLINED_FUNCTION_64(v11);
      sub_1CA94C698();
    }

    OUTLINED_FUNCTION_116();
    sub_1CA94C6E8();
    return v20;
  }

  return v4;
}

void __swiftcall WFEntityUpdatingAction.makeValueParameter(for:)(WFParameter *__return_ptr retstr, Swift::String a2)
{
  v3 = [v2 parametersByKey];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  sub_1CA94C1C8();

  OUTLINED_FUNCTION_116();
  v4 = sub_1CA323E2C();

  if (v4)
  {
    type metadata accessor for WFUpdatableParameter();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      [v2 configureParameter_];
      *(v6 + OBJC_IVAR___WFUpdatableParameter_underlyingParameter);

      return;
    }
  }

  sub_1CA94D408();

  v7 = OUTLINED_FUNCTION_116();
  MEMORY[0x1CCAA1300](v7);
  sub_1CA94D5F8();
  __break(1u);
}

BOOL WFEntityUpdatingAction.showsAddButton.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState;
  swift_beginAccess();
  v2 = *(*(v1 + 8) + 16);
  WFEntityUpdatingAction.possibleSubjectValues.getter();
  v4 = *(v3 + 16);

  return v2 < v4;
}

void WFEntityUpdatingAction.possibleSubjectValues.getter()
{
  v1 = [v0 parameterDefinitions];
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v2 = sub_1CA94C658();

  v3 = sub_1CA25B410(v2);
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCAA22D0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    if ([v6 objectForKey_])
    {
      sub_1CA94D258();
      swift_unknownObjectRelease();
    }

    else
    {

      v39 = 0u;
      v40 = 0u;
    }

    v41[0] = v39;
    v41[1] = v40;
    if (!*(&v40 + 1))
    {
      sub_1CA532E30(v41, &unk_1EC444650, &unk_1CA981C70);
      goto LABEL_19;
    }

    if ((swift_dynamicCast() & 1) != 0 && (v8 = v43) != 0)
    {
      v37 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_66();
        sub_1CA26DADC();
        v5 = v11;
      }

      v9 = *(v5 + 16);
      if (v9 >= *(v5 + 24) >> 1)
      {
        sub_1CA26DADC();
        v5 = v12;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 16 * v9;
      *(v10 + 32) = v37;
      *(v10 + 40) = v8;
      ++v4;
    }

    else
    {
LABEL_19:
      ++v4;
    }
  }

  v13 = 0;
  v14 = *(v5 + 16);
  v15 = v5 + 40;
  v16 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v17 = (v15 + 16 * v13);
  while (v14 != v13)
  {
    if (v13 >= *(v5 + 16))
    {
      goto LABEL_39;
    }

    v18 = *(v17 - 1);
    v19 = *v17;
    v20 = v18 == 0x797469746E65 && v19 == 0xE600000000000000;
    if (!v20 && (sub_1CA94D7F8() & 1) == 0)
    {
      sub_1CA94C218();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v41[0] = v16;
      v38 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_66();
        sub_1CA271524(v22, v23, v24, v25, v26, v27, v28);
        v16 = *&v41[0];
      }

      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      if (v30 >= v29 >> 1)
      {
        v32 = OUTLINED_FUNCTION_64(v29);
        sub_1CA271524(v32, v30 + 1, 1, v33, v34, v35, v36);
        v16 = *&v41[0];
      }

      ++v13;
      *(v16 + 16) = v30 + 1;
      v31 = v16 + 16 * v30;
      *(v31 + 32) = v18;
      *(v31 + 40) = v19;
      v15 = v38;
      goto LABEL_22;
    }

    v17 += 2;
    ++v13;
  }
}

Swift::Bool __swiftcall WFEntityUpdatingAction.showsAddButton(for:)(WFParameter *a1)
{
  v2 = v1;
  sub_1CA697814(v27);
  v33 = v27[0];
  v34 = v27[1];
  v3 = v28;
  v32[0] = *v29;
  v4 = v30;
  *(v32 + 7) = *&v29[7];
  if (!v30)
  {
    return 0;
  }

  v5 = v31;
  v6 = &v1[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
  swift_beginAccess();
  v7 = *(*(v6 + 1) + 16);
  WFEntityUpdatingAction.possibleSubjectValues.getter();
  v9 = *(v8 + 16);

  if (v3 > 1)
  {
    goto LABEL_8;
  }

  v23 = v33;
  v24 = v34;
  v25[0] = v3;
  *&v25[1] = v32[0];
  *&v25[8] = *(v32 + 7);
  LODWORD(v26) = v5;
  v10 = sub_1CA5C8D08();
  v11 = [objc_opt_self() BOOLValueType];
  v12 = v11;
  if (v10)
  {
    sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
    v13 = sub_1CA94CFD8();

    v14 = v13 ^ 1;
  }

  else
  {

    v14 = 1;
  }

  v15 = sub_1CA94C368();
  v16 = [v2 parameterStateForKey_];

  if (v16)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v14 = 0;
  }

  sub_1CA698450();
  if ((v17 & 1) == 0)
  {
    OUTLINED_FUNCTION_31();
    v18 = sub_1CA94C368();
    v19 = OUTLINED_FUNCTION_50_6();
    v21 = [v19 v20];
    sub_1CA532E30(v27, &qword_1EC445FA0, &unk_1CA98B5A0);

    if (!v21)
    {
      return 0;
    }

    swift_unknownObjectRelease();
    return !((v7 >= v9) | v14 & 1);
  }

  sub_1CA532E30(v27, &qword_1EC445FA0, &unk_1CA98B5A0);
  return !((v7 >= v9) | v14 & 1);
}

WFAddButtonParameterStateUpdate_optional __swiftcall WFEntityUpdatingAction.parameterStateUpdateForPlusButton(for:)(WFParameter *a1)
{
  WFEntityUpdatingAction.createTableRow()(&v26);
  v29 = v26;
  v30 = v27;
  v31 = *v28;
  v5 = *&v28[16];
  if (*&v28[16])
  {
    v6 = *&v28[24];
    v7 = (v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState);
    swift_beginAccess();
    v24[0] = v26;
    v24[1] = v27;
    v25[0] = *v28;
    *(v25 + 12) = *&v28[12];
    sub_1CA2DBDB8(v24, v23);
    sub_1CA69ADC8();
    v8 = *(v7[1] + 16);
    sub_1CA69AF74(v8);
    v9 = v7[1];
    *(v9 + 16) = v8 + 1;
    v10 = v9 + (v8 << 6);
    v11 = v30;
    *(v10 + 32) = v29;
    *(v10 + 48) = v11;
    *(v10 + 64) = v31;
    *(v10 + 80) = v5;
    *(v10 + 88) = v6;
    v7[1] = v9;
    swift_endAccess();
    v13 = *v7;
    v12 = v7[1];
    v14 = *(v7 + 16);
    v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446590, &qword_1CA98B5B0));
    v16 = v15 + *((*MEMORY[0x1E69E7D40] & *v15) + 0x60);
    *v16 = v13;
    *(v16 + 1) = v12;
    v16[16] = v14;
    sub_1CA94C218();
    v22.receiver = v15;
    v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477C0, &unk_1CA98B5B8);
    v17 = [(WFParameter *)&v22 init];
    v18 = objc_allocWithZone(WFAddButtonParameterStateUpdate);
    v19 = sub_1CA94C368();
    v20 = [v18 initWithParameterKey:v19 parameterState:v17];

    sub_1CA532E30(&v26, &qword_1EC445FA0, &unk_1CA98B5A0);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  result.value._parameterState = v3;
  result.value._parameterKey = v2;
  result.value.super.isa = v21;
  result.is_nil = v4;
  return result;
}

void WFEntityUpdatingAction.availableSubjectValues.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState;
  swift_beginAccess();
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  sub_1CA94C218();
  v37 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  v35 = v2 + 48;
  v5 = v2 + 48;
  while (v3 != v4)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v6 = *(v5 + 8);
    if (v6)
    {
      swift_unknownObjectRetain();
      v7 = v6;
      sub_1CA94C218();
      swift_unknownObjectRetain();
      v8 = [v7 value];
      if (v8)
      {
        v9 = v8;
        v39 = 0;
        v40 = 0;
        sub_1CA94C398();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    v5 += 64;
    ++v4;
  }

  WFEntityUpdatingAction.possibleSubjectValues.getter();
  v11 = isUniquelyReferenced_nonNull_native;
  v12 = 0;
  v13 = *(isUniquelyReferenced_nonNull_native + 16);
  v14 = isUniquelyReferenced_nonNull_native + 40;
  v35 = isUniquelyReferenced_nonNull_native + 40;
  v36 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v15 = (v14 + 16 * v12);
  while (v13 != v12)
  {
    if (v12 >= *(v11 + 16))
    {
      goto LABEL_22;
    }

    v17 = *(v15 - 1);
    v16 = *v15;
    v39 = v17;
    v40 = v16;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v34[2] = &v39;
    sub_1CA94C218();
    if (!sub_1CA2BFD14(sub_1CA2E9370, v34, v37))
    {
      v18 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = OUTLINED_FUNCTION_66();
        sub_1CA271524(v19, v20, v21, v22, v23, v24, v25);
        v18 = v38;
      }

      v14 = v35;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = OUTLINED_FUNCTION_64(v26);
        sub_1CA271524(v29, v27 + 1, 1, v30, v31, v32, v33);
        v14 = v35;
        v18 = v38;
      }

      ++v12;
      *(v18 + 16) = v27 + 1;
      v36 = v18;
      v28 = v18 + 16 * v27;
      *(v28 + 32) = v17;
      *(v28 + 40) = v16;
      goto LABEL_10;
    }

    v15 += 2;
    ++v12;
  }
}

id WFEntityUpdatingAction.makeValueParameterState(for:serializedRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, WFParameter *a3@<X8>)
{
  WFEntityUpdatingAction.makeValueParameter(for:)(a3, *&a1);
  v7 = v6;
  [v6 stateClass];
  swift_getObjCClassMetadata();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSerializedRepresentation:a2 variableProvider:v4 parameter:v7];

  return v8;
}

void sub_1CA62B044(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  if (a4)
  {
    a4 = sub_1CA94C1A8();
  }

  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  aBlock[4] = sub_1CA62E2A8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA4F60DC;
  aBlock[3] = &block_descriptor_26_0;
  v14 = _Block_copy(aBlock);

  [a2 getValueForParameterData:a3 ofProcessedParameters:a4 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_1CA62B248(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  return sub_1CA94C7E8();
}

uint64_t WFEntityUpdatingAction.getEntityPropertyValue(for:context:)()
{
  OUTLINED_FUNCTION_14();
  v1[50] = v2;
  v1[51] = v0;
  v1[48] = v3;
  v1[49] = v4;
  v5 = sub_1CA94CEF8();
  v1[52] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[53] = v6;
  v1[54] = swift_task_alloc();
  v7 = sub_1CA94CF08();
  v1[55] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[56] = v8;
  v1[57] = swift_task_alloc();
  v1[58] = sub_1CA94C838();
  v1[59] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v9 = sub_1CA94C7C8();
  v1[60] = v9;
  v1[61] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1CA62B40C, v9, v10);
}

uint64_t sub_1CA62B40C()
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 408)) + 0xC0))();
  *(v0 + 496) = v3;
  if (!v3)
  {

    goto LABEL_28;
  }

  v4 = v3;
  sub_1CA698450();
  if (v5)
  {
    v6 = [v4 identifier];
    sub_1CA94C3A8();

    v7 = [v4 identifier];
    sub_1CA94C3A8();

    MEMORY[0x1CCAA1300](0x657571696E753ALL, 0xE700000000000000);
    v8 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
    v9 = sub_1CA320B2C();
    *(v0 + 568) = v9;
    v4 = *(v0 + 496);
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_self();
      v12 = v10;
      v13 = [v11 policyWithEntityMetadata_];
      *(v0 + 336) = 0;
      v14 = [v13 connectionWithError_];
      *(v0 + 576) = v14;

      v15 = *(v0 + 336);
      if (!v14)
      {
        v45 = *(v0 + 496);
        v46 = v15;

        sub_1CA948AD8();

        swift_willThrow();
        OUTLINED_FUNCTION_24_20();

        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_202();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_3_53();
      v61 = sub_1CA25B3D0(0, &unk_1EC445BB0, 0x1E69ACE00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_21_22(v16, xmmword_1CA9813B0);
      v17 = OUTLINED_FUNCTION_20_30();
      v18(v17);
      *v1 = v2;
      v19 = OUTLINED_FUNCTION_18_28();
      v20(v19);
      v21 = objc_allocWithZone(MEMORY[0x1E69ACFD8]);
      v22 = v12;
      v23 = v15;
      v24 = v2;
      v25 = OUTLINED_FUNCTION_14_31([v21 init]);
      v26 = OUTLINED_FUNCTION_19_24(v25);
      *(v0 + 16) = v27;
      OUTLINED_FUNCTION_2_59(v26, v28, v29, v30, v31, v32, v33, v34, v59, v60, v61, v62);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D0, &qword_1CA988F20);
      OUTLINED_FUNCTION_0_67(v35);
      *(v0 + 88) = 1107296256;
      OUTLINED_FUNCTION_1_49();
      v36 = OUTLINED_FUNCTION_50_6();
      [v36 v37];
      OUTLINED_FUNCTION_202();

      return MEMORY[0x1EEE6DEC8](v38);
    }

    goto LABEL_27;
  }

  v40 = [*(v0 + 408) parameterIdentifiersNeedingValues];
  *(v0 + 304) = 0x797469746E65;
  *(v0 + 312) = 0xE600000000000000;
  v41 = [v40 __swift_objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (v41)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  *(v0 + 144) = v63;
  *(v0 + 160) = v64;
  if (*(v0 + 168))
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v42 = *(v0 + 368);
      *(v0 + 504) = v42;
      if ([v42 BOOLValue])
      {
        v43 = swift_task_alloc();
        *(v0 + 512) = v43;
        *v43 = v0;
        v43[1] = sub_1CA62BA9C;
        OUTLINED_FUNCTION_202();

        return sub_1CA62D1C0();
      }
    }
  }

  else
  {
    sub_1CA532E30(v0 + 144, &unk_1EC444650, &unk_1CA981C70);
  }

  v49 = *(v0 + 408);
  v50 = sub_1CA94C368();
  v51 = [v49 parameterStateForKey_];
  *(v0 + 536) = v51;

  if (!v51)
  {
LABEL_27:

LABEL_28:
    OUTLINED_FUNCTION_24_20();

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_23_19();
    OUTLINED_FUNCTION_202();

    __asm { BRAA            X2, X16 }
  }

  swift_getObjectType();
  v52 = swift_task_alloc();
  *(v0 + 544) = v52;
  *v52 = v0;
  v52[1] = sub_1CA62BFE0;
  OUTLINED_FUNCTION_202();

  return WFParameterState.process(context:)(v53, v54);
}

uint64_t sub_1CA62BA9C()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  *(v8 + 520) = v7;
  *(v8 + 528) = v0;

  v9 = *(v2 + 488);
  v10 = *(v2 + 480);
  if (v0)
  {
    v11 = sub_1CA62CF94;
  }

  else
  {
    v11 = sub_1CA62BC04;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1CA62BFE0()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  *(v8 + 552) = v7;
  *(v8 + 560) = v0;

  v9 = *(v2 + 488);
  v10 = *(v2 + 480);
  if (v0)
  {
    v11 = sub_1CA62D03C;
  }

  else
  {
    v11 = sub_1CA62C148;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1CA62C544()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 592) = v4;
  v5 = v3[61];
  v6 = v3[60];
  if (v4)
  {
    v7 = sub_1CA62D0EC;
  }

  else
  {
    v7 = sub_1CA62C698;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CA62C698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_147();
  v83 = *MEMORY[0x1E69E9840];
  v19 = v18[73];
  v20 = v18[72];
  v21 = v18[41];
  v22 = &selRef_temporaryDirectoryURL;
  v23 = [v21 value];
  v18[75] = v23;

  v24 = [v23 value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447110, &qword_1CA98E7A0);
  if (!swift_dynamicCast())
  {
    v42 = v18[71];
    v43 = v18[62];

LABEL_41:
    OUTLINED_FUNCTION_24_20();

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_23_19();
    OUTLINED_FUNCTION_68();

    return v76(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, v83, a16, a17, a18);
  }

  a12 = v23;
  v25 = v18[43];
  if (!sub_1CA25B410(v25))
  {
    v44 = v18[71];
    v45 = v18[62];

    goto LABEL_41;
  }

  sub_1CA275D70(0, (v25 & 0xC000000000000001) == 0, v25);
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  for (i = *(v25 + 32); ; i = MEMORY[0x1CCAA22D0](0, v25))
  {
    v27 = i;
    v18[76] = i;
    v28 = v18[51];

    v29 = *&v28[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_preprocessedEntity];
    *&v28[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_preprocessedEntity] = v27;
    v25 = v27;

    v30 = [v28 parameterIdentifiersNeedingValues];
    OUTLINED_FUNCTION_31();
    v31 = sub_1CA94C368();
    [v30 removeObjectForKey_];

    a11 = v25;
    v32 = [v25 v22[278]];
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    v33 = swift_dynamicCast() ? v18[44] : 0;
    sub_1CA698450();
    if (v34)
    {
      break;
    }

    if (!v33)
    {
LABEL_31:
      v57 = v18[71];
      v58 = v18[62];

LABEL_40:

      goto LABEL_41;
    }

LABEL_18:
    a10 = v33;
    v46 = [v33 properties];
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    v47 = sub_1CA94C658();

    v22 = sub_1CA25B410(v47);
    v48 = 0;
    a13 = v47 & 0xFFFFFFFFFFFFFF8;
    a14 = v47 & 0xC000000000000001;
    while (1)
    {
      if (v22 == v48)
      {

        v59 = v18[71];
        v33 = v18[62];

        v60 = a10;
        goto LABEL_39;
      }

      if (a14)
      {
        v49 = MEMORY[0x1CCAA22D0](v48, v47);
      }

      else
      {
        if (v48 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v49 = *(v47 + 8 * v48 + 32);
      }

      v41 = v49;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v50 = v18[48];
      v51 = v18[49];
      v52 = [v49 identifier];
      v53 = sub_1CA94C3A8();
      v55 = v54;

      if (v53 == v50 && v55 == v51)
      {

LABEL_34:

        v33 = a10;
        goto LABEL_35;
      }

      v25 = sub_1CA94D7F8();

      if (v25)
      {
        goto LABEL_34;
      }

      v48 = (v48 + 1);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  if (!v33)
  {
    goto LABEL_31;
  }

  v35 = [v33 properties];
  sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
  v36 = sub_1CA94C658();

  v37 = sub_1CA25B410(v36);

  if (v37 != 1)
  {
    goto LABEL_18;
  }

  v38 = [v33 properties];
  v39 = sub_1CA94C658();

  if (!sub_1CA25B410(v39))
  {
    v73 = v18[71];
    v60 = v18[62];

LABEL_39:
    goto LABEL_40;
  }

  sub_1CA275D70(0, (v39 & 0xC000000000000001) == 0, v39);
  if ((v39 & 0xC000000000000001) != 0)
  {
    v40 = MEMORY[0x1CCAA22D0](0, v39);
  }

  else
  {
    v40 = *(v39 + 32);
  }

  v41 = v40;

LABEL_35:
  v18[78] = v41;
  v18[77] = v33;
  v61 = v18[62];
  v18[79] = sub_1CA94C828();
  v62 = swift_task_alloc();
  v18[80] = v62;
  v62[2] = v41;
  v62[3] = v33;
  v62[4] = v61;
  v63 = swift_task_alloc();
  v18[81] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477B0, &qword_1CA98E7A8);
  *v63 = v18;
  v63[1] = sub_1CA62CD14;
  OUTLINED_FUNCTION_68();

  return MEMORY[0x1EEE6DDE0](v64, v65, v66, v67, v68, v69, v70, v71);
}

uint64_t sub_1CA62CD14()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1();
  *v3 = v2;

  v4 = *(v1 + 488);
  v5 = *(v1 + 480);

  return MEMORY[0x1EEE6DFA0](sub_1CA62CEA4, v5, v4);
}

uint64_t sub_1CA62CEA4()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[71];
  v6 = v0[62];

  v7 = v0[45];
  OUTLINED_FUNCTION_31_13();

  OUTLINED_FUNCTION_2_4();

  return v8(v7);
}

uint64_t sub_1CA62CF94()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);

  OUTLINED_FUNCTION_31_13();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA62D03C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 496);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_31_13();

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA62D0EC()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[62];

  swift_willThrow();

  OUTLINED_FUNCTION_31_13();

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA62D1C0()
{
  v1[3] = v0;
  v1[4] = sub_1CA94C838();
  v1[5] = sub_1CA94C828();
  v3 = sub_1CA94C7C8();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CA62D25C, v3, v2);
}

uint64_t sub_1CA62D25C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_31();
  v2 = sub_1CA94C368();
  v3 = [v1 parameterForKey_];
  *(v0 + 64) = v3;

  if (v3)
  {
    v4 = [*(v0 + 24) workQueue];
    *(v0 + 72) = v4;
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + 24);
      *(v0 + 80) = sub_1CA94C828();
      v7 = swift_task_alloc();
      *(v0 + 88) = v7;
      v7[2] = v6;
      v7[3] = v3;
      v7[4] = v5;
      v8 = swift_task_alloc();
      *(v0 + 96) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477B0, &qword_1CA98E7A8);
      *v8 = v0;
      v8[1] = sub_1CA62D430;

      return MEMORY[0x1EEE6DE38](v0 + 16);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_4();
  v9 = OUTLINED_FUNCTION_23_19();

  return v10(v9);
}

uint64_t sub_1CA62D430()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  v2[13] = v0;

  if (v0)
  {
    v6 = v2[6];
    v7 = v2[7];
    v8 = sub_1CA62D5B8;
  }

  else
  {

    v6 = v2[6];
    v7 = v2[7];
    v8 = sub_1CA62D548;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1CA62D548()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_2_4();

  return v2();
}

uint64_t sub_1CA62D5B8()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_5();

  return v3();
}

void sub_1CA62D63C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  aBlock[4] = sub_1CA62E1A4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA628188;
  aBlock[3] = &block_descriptor_20_0;
  v14 = _Block_copy(aBlock);

  [a2 wf:a3 getValueForEntity:a4 entityMetadata:v14 completionHandler:?];
  _Block_release(v14);
}

void sub_1CA62D804(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v22 = a2;
  v23 = a4;
  v21 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D8, &qword_1CA990048);
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v20 - v7;
  v25 = sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  aBlock[0] = a3;
  v9 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v10 = a3;
  v11 = sub_1CA62E034(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  sub_1CA94C1E8();
  v12 = sub_1CA94C1A8();

  sub_1CA25B3D0(0, &unk_1EC447130, off_1E836EDC8);
  sub_1CA94C1E8();
  v13 = sub_1CA94C1A8();

  v14 = v20;
  (*(v5 + 16))(v8, v21, v20);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v8, v14);
  v17 = v22;
  *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v26 = sub_1CA62E0D0;
  v27 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA6280B0;
  v25 = &block_descriptor_14_0;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  [v19 askForValuesOfParameters:v11 withDefaultStates:v12 prompts:v13 input:0 workQueue:v23 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_1CA62DAF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA949F78();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1CA311C0C(0x797469746E65, 0xE600000000000000, a1, &v17);
    if (v18)
    {
      sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
      v9 = swift_dynamicCast();
      v10 = v16[1];
      if (!v9)
      {
        v10 = 0;
      }
    }

    else
    {
      sub_1CA532E30(&v17, &unk_1EC444650, &unk_1CA981C70);
      v10 = 0;
    }

    *&v17 = v10;
  }

  else
  {
    if (a3)
    {
      *&v17 = a3;
      v11 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D8, &qword_1CA990048);
      return sub_1CA94C7D8();
    }

    sub_1CA949C58();
    v13 = sub_1CA949F68();
    v14 = sub_1CA94CC18();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1CA256000, v13, v14, "askForValues failed with no error", v15, 2u);
      MEMORY[0x1CCAA4BF0](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    *&v17 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D8, &qword_1CA990048);
  return sub_1CA94C7E8();
}

uint64_t sub_1CA62DD48()
{
  v1 = [v0 availableSubjectValues];
  v2 = sub_1CA94C658();

  return v2;
}

uint64_t sub_1CA62DDA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA62DE44;

  return WFEntityUpdatingAction.getValueForParameterData(_:ofProcessedParameters:)();
}

uint64_t sub_1CA62DE44()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;

  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

id sub_1CA62DF3C(uint64_t a1)
{
  v2 = sub_1CA94C368();
  v3 = [v1 parameterMetadataForIdentifier_];

  return v3;
}

uint64_t sub_1CA62DF88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA62E340;

  return WFEntityUpdatingAction.getEntityPropertyValue(for:context:)();
}

id sub_1CA62E034(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_1CA62E0D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D8, &qword_1CA990048);
  OUTLINED_FUNCTION_12(v0);
  v1 = OUTLINED_FUNCTION_26_21();

  return sub_1CA62DAF8(v1, v2, v3);
}

uint64_t block_copy_helper_12_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA62E1A4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);

  return sub_1CA5F6140(a1);
}

uint64_t objectdestroy_16Tm_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  OUTLINED_FUNCTION_7_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CA62E2A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  v0 = OUTLINED_FUNCTION_116();

  return sub_1CA62B248(v0);
}

id sub_1CA62E378()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  *(inited + 120) = 0xD000000000000011;
  *(inited + 128) = 0x80000001CA9D7560;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD00000000000001CLL;
  *(inited + 168) = 0x80000001CA9D7580;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA62E5F4(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void *a5)
{
  v8 = a1;
  a3();

  sub_1CA25B3D0(0, a4, a5);
  v9 = sub_1CA94C648();

  return v9;
}

uint64_t sub_1CA62E6C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v60 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  v62 = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1CA981370;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v61 = a1;
  v11 = MEMORY[0x1E69E6158];
  *(v8 + 32) = @"Key";
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 64) = v11;
  *(v8 + 72) = @"Label";
  sub_1CA94C218();
  v12 = @"Key";
  sub_1CA94C218();
  v13 = @"Label";
  v14 = sub_1CA94C438("Number (Parameter Label)", 24);
  v58 = v15;
  v59 = v14;
  v16 = sub_1CA94C438("Number", 6);
  v56 = v17;
  v57 = v16;
  v18 = sub_1CA948E58();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDB9F690;
  v22 = [qword_1EDB9F690 bundleURL];
  v23 = sub_1CA948BA8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v55 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v55 - v55;
  sub_1CA948B68();

  v26 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v27 = sub_1CA2F9F14(v59, v58, v57, v56, 0, 0, &v55 - v20, v25);
  v28 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v8 + 80) = v27;
  *(v8 + 104) = v28;
  *(v8 + 112) = @"Placeholder";
  v29 = @"Placeholder";
  v30 = sub_1CA94C438("Number (Parameter Placeholder)", 30);
  v58 = v31;
  v32 = sub_1CA94C438("Number", 6);
  v34 = v33;
  v59 = &v55;
  MEMORY[0x1EEE9AC00](v32);
  sub_1CA948D98();
  v35 = [v21 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v55 - v55;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v8 + 120) = sub_1CA2F9F14(v30, v58, v32, v34, 0, 0, &v55 - v20, v36);
  *(v8 + 144) = v28;
  *(v8 + 152) = @"AllowsDecimalNumbers";
  v38 = MEMORY[0x1E69E6370];
  *(v8 + 160) = v60 & 1;
  *(v8 + 184) = v38;
  *(v8 + 192) = @"DisallowedVariableTypes";
  v39 = @"AllowsDecimalNumbers";
  v40 = @"DisallowedVariableTypes";
  if (RowTemplateParameterOptions.variablesDisabled.getter())
  {
    sub_1CA25B3D0(0, &unk_1EC4477F0, off_1E836EC08);
    v41 = [swift_getObjCClassFromMetadata() allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA43FD98(&qword_1EC441A60, type metadata accessor for WFVariableType);
    v42 = sub_1CA94C8F8();

    sub_1CA3E4650(v42, v43, v44, v45, v46, v47, v48);
    v50 = v49;
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(v8 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v8 + 200) = v50;
  _s3__C3KeyVMa_0(0);
  sub_1CA43FD98(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v51 = sub_1CA94C1E8();
  v52 = sub_1CA2F864C(v51);
  v53 = [objc_allocWithZone(WFNumberFieldParameter) initWithDefinition_];

  *(v62 + 48) = v53;
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  return sub_1CA94C1E8();
}

uint64_t sub_1CA62EC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA62EC60()
{
  OUTLINED_FUNCTION_6();
  if (*(v0[2] + 16) && (v1 = sub_1CA271BF8(v0[4], v0[5]), (v2 & 1) != 0))
  {
    v0[6] = *(*(v0[2] + 56) + 8 * v1);
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_7_39();
      v3 = swift_task_alloc();
      v0[7] = v3;
      *v3 = v0;
      v3[1] = sub_1CA62EDDC;
      v4 = OUTLINED_FUNCTION_11_2(v0[3]);

      return v5(v4);
    }

    else
    {
      v8 = sub_1CA2A741C();
      v9 = OUTLINED_FUNCTION_127(&unk_1F4A11410, v8);
      OUTLINED_FUNCTION_8_31(v9, v10);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v11();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v7(0);
  }
}

uint64_t sub_1CA62EDDC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA62EEE0()
{
  OUTLINED_FUNCTION_6();
  if (!*(v0 + 64))
  {
    swift_unknownObjectRelease();
    v2 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRelease();
LABEL_5:
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_4();

    return v3(v2);
  }

  v5 = sub_1CA2A741C();
  OUTLINED_FUNCTION_127(&unk_1F4A11410, v5);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_9_36(ObjectType);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA62F000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA62F01C()
{
  OUTLINED_FUNCTION_6();
  if (*(v0[2] + 16) && (v1 = sub_1CA271BF8(v0[5], v0[6]), (v2 & 1) != 0))
  {
    v0[7] = *(*(v0[2] + 56) + 8 * v1);
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_7_39();
      v3 = swift_task_alloc();
      v0[8] = v3;
      *v3 = v0;
      v3[1] = sub_1CA62F198;
      v4 = OUTLINED_FUNCTION_11_2(v0[4]);

      return v5(v4);
    }

    else
    {
      v8 = sub_1CA2A741C();
      v9 = OUTLINED_FUNCTION_127(&unk_1F4A11410, v8);
      OUTLINED_FUNCTION_8_31(v9, v10);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v11();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v7(1);
  }
}

uint64_t sub_1CA62F198()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA62F29C()
{
  OUTLINED_FUNCTION_6();
  if (v0[9])
  {
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v1 = swift_dynamicCastObjCClass();
    v0[11] = v1;
    if (v1)
    {
      swift_unknownObjectRelease_n();
      v2 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v3 = swift_task_alloc();
      v0[12] = v3;
      *v3 = v0;
      v3[1] = sub_1CA62F4A8;

      return MEMORY[0x1EEDF81A0](v2);
    }

    else
    {
      v5 = sub_1CA2A741C();
      OUTLINED_FUNCTION_127(&unk_1F4A11410, v5);
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_9_36(ObjectType);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v7();
    }
  }

  else
  {
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_2_4();

    return v4(1);
  }
}

uint64_t sub_1CA62F444()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA62F4A8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA62F5B8()
{
  OUTLINED_FUNCTION_14();
  if (*(v0 + 104))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = [v1 compare_];
      swift_unknownObjectRelease_n();
      goto LABEL_7;
    }

    swift_unknownObjectRelease_n();
  }

  v2 = -1;
LABEL_7:
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v3(v2);
}

uint64_t sub_1CA62F68C()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA62F6E8()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v4 = v3;
  *(v0 + 16) = v5;
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_1CA62F79C;

  return sub_1CA62EC48(v7, v8, v4, v2);
}

uint64_t sub_1CA62F79C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1CA62F8D4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 32);
  [*(v0 + 16) setNumber_];

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA62F944()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 88) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = *v4;
  v5 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1CA62FA04;

  return MEMORY[0x1EEDF81A0](v5);
}

uint64_t sub_1CA62FA04()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v5(0);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1CA62FB34()
{
  OUTLINED_FUNCTION_0();
  if (v0[7])
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v1 = swift_dynamicCastObjCClass();
    v0[8] = v1;
    if (v1)
    {
      v2 = swift_task_alloc();
      v0[9] = v2;
      *v2 = v0;
      v2[1] = sub_1CA62FC38;
      v4 = v0[4];
      v3 = v0[5];
      v5 = v0[2];
      v6 = v0[3];

      return sub_1CA62EC48(v4, v3, v5, v6);
    }

    swift_unknownObjectRelease_n();
  }

  OUTLINED_FUNCTION_2_4();

  return v8(0);
}

uint64_t sub_1CA62FC38()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v5;

  if (v0)
  {

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA62FD50()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 80);
  if (v1)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
    v2 = sub_1CA94CFD8();
  }

  else
  {
    v2 = 0;
  }

  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_2_4();

  return v3(v2 & 1);
}

uint64_t sub_1CA62FE08()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v0(0);
}

uint64_t sub_1CA62FE68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2C756C;

  return sub_1CA62F6E8();
}

uint64_t sub_1CA62FF1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2A715C;

  return sub_1CA62F944();
}

uint64_t sub_1CA62FFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CA2A731C;

  return sub_1CA62F000(a1, a2, a3, v9, v8);
}

uint64_t sub_1CA6300F8(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_1CA630134@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA6300F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA630160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA6300EC(*v1);
  *a1 = result;
  return result;
}

void (*sub_1CA630388(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___WFRunningProgressSuppressionStateMachine_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1CA63040C;
}

void sub_1CA63040C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id RunningProgressSuppressionStateMachine.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1CA6304C0(void *a1, id a2)
{
  v3 = v2;
  v5 = [a2 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v6 = sub_1CA94C658();

  v7 = sub_1CA25B410(v6);

  if (v7 != 1)
  {
    goto LABEL_7;
  }

  v8 = [a1 identifier];
  v9 = sub_1CA94C3A8();
  v11 = v10;

  if (v9 == 0xD000000000000029 && 0x80000001CA9D7670 == v11)
  {
  }

  else
  {
    v13 = sub_1CA94D7F8();

    if ((v13 & 1) == 0)
    {
LABEL_7:
      v14 = objc_allocWithZone(type metadata accessor for RunningProgressSuppressionStateMachine.State());
      v15 = sub_1CA282CB0(2);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447828, &unk_1CA990120);
      sub_1CA6308E8();
      v16 = sub_1CA94A108();

      *(v3 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_waitingCancellable) = v16;

      v17 = v15;
      v18 = sub_1CA94C368();
      v19 = OUTLINED_FUNCTION_50_6();
      [v19 v20];

      return;
    }
  }

  sub_1CA28C7C4(0, 0xD000000000000033);
}

uint64_t sub_1CA630700(void *a1)
{
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_stage) == 2)
  {
    sub_1CA949C58();
    v7 = sub_1CA949F68();
    v8 = sub_1CA94CC28();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = 0x4024000000000000;
      _os_log_impl(&dword_1CA256000, v7, v8, "Action timed out, and did not report whether or not it wants progress in %f, do you have a bug in the action?", v9, 0xCu);
      MEMORY[0x1CCAA4BF0](v9, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

unint64_t sub_1CA6308E8()
{
  result = qword_1EC447830;
  if (!qword_1EC447830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447828, &unk_1CA990120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447830);
  }

  return result;
}

id sub_1CA6309D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for RunningProgressSuppressionStateMachine.State.Stage(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CA630C34()
{
  result = qword_1EC447910;
  if (!qword_1EC447910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447910);
  }

  return result;
}

id sub_1CA630CC0()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v6 = MEMORY[0x1E69E6370];
  *(inited + 104) = v5;
  *(inited + 112) = @"Discoverable";
  *(inited + 144) = v6;
  *(inited + 120) = 0;
  v7 = @"Discoverable";
  v8 = sub_1CA94C368();
  *(inited + 184) = v1;
  *(inited + 152) = v8;
  *(inited + 160) = 0xD00000000000005BLL;
  *(inited + 168) = 0x80000001CA9D7A70;
  v9 = sub_1CA94C368();
  *(inited + 224) = v1;
  *(inited + 192) = v9;
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x80000001CA9D7AD0;
  *(inited + 232) = sub_1CA94C368();
  *(inited + 264) = v6;
  *(inited + 240) = 1;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA630F0C()
{
  v287 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA990270;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9D7B20;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("save|file|document|icloud|cloud|upload|copy", 43);
  v6 = v5;
  v7 = sub_1CA94C438("save|file|document|icloud|cloud|upload|copy", 43);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v315 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v316 = v11;
  v12 = &v277 - v315;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v314 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v312 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v313 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v277 - v313;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v311 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v286 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v309 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v285 = xmmword_1CA97EDF0;
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v26 = sub_1CA94C438("The saved files", 15);
  v306 = v27;
  v307 = v26;
  v28 = sub_1CA94C438("The saved files", 15);
  v30 = v29;
  v308 = &v277;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v277 - v315;
  sub_1CA948D98();
  v32 = [v314 bundleURL];
  v310 = inited;
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v313;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v307, v306, v28, v30, 0, 0, v31, &v277 - v34);
  v36 = v311;
  *(v23 + 64) = v311;
  *(v23 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438("Saves files to a specified folder. You can also use this action to copy a file.", 79);
  v306 = v39;
  v307 = v38;
  v305 = sub_1CA94C438("Saves files to a specified folder. You can also use this action to copy a file.", 79);
  v41 = v40;
  v308 = &v277;
  MEMORY[0x1EEE9AC00](v305);
  v42 = &v277 - v315;
  sub_1CA948D98();
  v43 = [v314 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v307, v306, v305, v41, 0, 0, v42, &v277 - v34);
  *(v23 + 104) = v36;
  *(v23 + 80) = v45;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v46 = sub_1CA94C1E8();
  v47 = v309;
  v48 = sub_1CA6B3784(v46);
  v49 = v310;
  v310[20] = v48;
  v49[23] = v47;
  v49[24] = @"IconColor";
  v49[25] = 1953392980;
  v49[26] = 0xE400000000000000;
  v50 = MEMORY[0x1E69E6158];
  v49[28] = MEMORY[0x1E69E6158];
  v49[29] = @"IconSymbol";
  v284 = 0xD000000000000013;
  v49[30] = 0xD000000000000013;
  v49[31] = 0x80000001CA9D7BD0;
  v49[33] = v50;
  v49[34] = @"IconSymbolColor";
  v49[35] = 1702194242;
  v49[36] = 0xE400000000000000;
  v49[38] = v50;
  v49[39] = @"Input";
  v51 = v50;
  v52 = v49;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  v302 = xmmword_1CA981350;
  *(v53 + 16) = xmmword_1CA981350;
  *(v53 + 32) = 0x656C7069746C754DLL;
  *(v53 + 40) = 0xE800000000000000;
  v54 = MEMORY[0x1E69E6370];
  *(v53 + 48) = 1;
  *(v53 + 72) = v54;
  strcpy((v53 + 80), "ParameterKey");
  *(v53 + 93) = 0;
  *(v53 + 94) = -5120;
  *(v53 + 96) = 0x7475706E494657;
  *(v53 + 104) = 0xE700000000000000;
  *(v53 + 120) = v51;
  *(v53 + 128) = 0x6465726975716552;
  *(v53 + 136) = 0xE800000000000000;
  *(v53 + 144) = 1;
  *(v53 + 168) = v54;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 184) = 0xE500000000000000;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 216) = v306;
  *(v53 + 192) = &unk_1F4A09DE0;
  v55 = @"IconColor";
  v56 = @"IconSymbol";
  v57 = @"IconSymbolColor";
  v58 = @"Input";
  v59 = sub_1CA94C1E8();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v309 = v60;
  v52[40] = v59;
  v52[43] = v60;
  v52[44] = @"Name";
  v61 = @"Name";
  v62 = sub_1CA94C438("Save File (Action Name)", 23);
  v64 = v63;
  v65 = sub_1CA94C438("Save File", 9);
  v67 = v66;
  v308 = &v277;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v277 - v315;
  sub_1CA948D98();
  v69 = [v314 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v277 - v313;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v72 = sub_1CA2F9F14(v62, v64, v65, v67, 0, 0, v68, v70);
  v73 = v310;
  v74 = v311;
  v310[45] = v72;
  v73[48] = v74;
  v73[49] = @"Output";
  v75 = swift_allocObject();
  *(v75 + 16) = v302;
  *(v75 + 32) = 0x75736F6C63736944;
  *(v75 + 40) = 0xEF6C6576654C6572;
  *(v75 + 48) = 0x63696C627550;
  *(v75 + 56) = 0xE600000000000000;
  *(v75 + 72) = MEMORY[0x1E69E6158];
  *(v75 + 80) = 0x656C7069746C754DLL;
  *(v75 + 88) = 0xE800000000000000;
  *(v75 + 96) = 1;
  *(v75 + 120) = MEMORY[0x1E69E6370];
  *(v75 + 128) = 0x614E74757074754FLL;
  *(v75 + 136) = 0xEA0000000000656DLL;
  v76 = @"Output";
  v77 = sub_1CA94C438("Saved File (Default Output Name)", 32);
  v305 = v78;
  v79 = sub_1CA94C438("Saved File", 10);
  v81 = v80;
  v308 = &v277;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v277 - v315;
  sub_1CA948D98();
  v83 = [v314 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v277 - v313;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 144) = sub_1CA2F9F14(v77, v305, v79, v81, 0, 0, v82, v84);
  *(v75 + 168) = v74;
  *(v75 + 176) = 0x7365707954;
  v86 = v306;
  *(v75 + 216) = v306;
  *(v75 + 184) = 0xE500000000000000;
  *(v75 + 192) = &unk_1F4A09E10;
  v87 = MEMORY[0x1E69E6158];
  v88 = sub_1CA94C1E8();
  v89 = v310;
  v310[50] = v88;
  v89[53] = v309;
  v89[54] = @"Parameters";
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v309 = swift_allocObject();
  *(v309 + 16) = xmmword_1CA981560;
  v308 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1CA981370;
  *&v301 = 0x80000001CA99B1E0;
  v293 = 0xD000000000000015;
  *(v90 + 32) = @"Class";
  *(v90 + 40) = 0xD000000000000015;
  *(v90 + 48) = 0x80000001CA99B1E0;
  *(v90 + 64) = v87;
  *(v90 + 72) = @"FilePickerSupportedTypes";
  *(v90 + 80) = &unk_1F4A09E40;
  *(v90 + 104) = v86;
  *(v90 + 112) = @"Key";
  *(v90 + 120) = 0x7475706E494657;
  *(v90 + 128) = 0xE700000000000000;
  *(v90 + 144) = v87;
  *(v90 + 152) = @"Label";
  v91 = @"Class";
  v92 = @"Key";
  v93 = @"Label";
  v94 = v91;
  v95 = v92;
  v96 = v93;
  v97 = @"FilePickerSupportedTypes";
  v297 = v94;
  v299 = v95;
  *&v300 = v96;
  v298 = v97;
  v98 = @"Parameters";
  v303 = sub_1CA94C438("File (WFInput)", 14);
  v296 = v99;
  v100 = sub_1CA94C438("File", 4);
  v295 = v101;
  v304 = &v277;
  MEMORY[0x1EEE9AC00](v100);
  v102 = v315;
  sub_1CA948D98();
  v103 = v314;
  v104 = [v314 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = v313;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 160) = sub_1CA2F9F14(v303, v296, v100, v295, 0, 0, &v277 - v102, &v277 - v105);
  v107 = v311;
  *(v90 + 184) = v311;
  *(v90 + 192) = @"Placeholder";
  v291 = @"Placeholder";
  v303 = sub_1CA94C438("File (WFInput)", 14);
  v296 = v108;
  v109 = sub_1CA94C438("File", 4);
  v295 = v110;
  v304 = &v277;
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948D98();
  v111 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v303, v296, v109, v295, 0, 0, &v277 - v102, &v277 - v105);
  *(v90 + 224) = v107;
  *(v90 + 200) = v113;
  _s3__C3KeyVMa_0(0);
  v304 = v114;
  v303 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v115 = sub_1CA94C1E8();
  v116 = sub_1CA2F864C(v115);
  *(v309 + 32) = v116;
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1CA981300;
  v118 = v297;
  v119 = v293;
  *(v117 + 32) = v297;
  *(v117 + 40) = v119;
  *(v117 + 48) = v301;
  v120 = MEMORY[0x1E69E6158];
  *(v117 + 64) = MEMORY[0x1E69E6158];
  *(v117 + 72) = @"DefaultsToShortcutsFolder";
  *(v117 + 80) = 1;
  v121 = MEMORY[0x1E69E6370];
  *(v117 + 104) = MEMORY[0x1E69E6370];
  *(v117 + 112) = @"Optional";
  *(v117 + 120) = 0;
  v122 = v298;
  v123 = v299;
  *(v117 + 144) = v121;
  *(v117 + 152) = v122;
  *(v117 + 160) = &unk_1F4A09E70;
  *(v117 + 184) = v306;
  *(v117 + 192) = v123;
  *(v117 + 200) = 0x7265646C6F464657;
  *(v117 + 208) = 0xE800000000000000;
  v124 = v300;
  *(v117 + 224) = v120;
  *(v117 + 232) = v124;
  v289 = v118;
  v290 = v123;
  v280 = v124;
  v125 = @"DefaultsToShortcutsFolder";
  v126 = @"Optional";
  v127 = sub_1CA94C438("Folder (WFFolder)", 17);
  v299 = v128;
  *&v300 = v127;
  v129 = sub_1CA94C438("Folder", 6);
  v298 = v130;
  *&v301 = &v277;
  MEMORY[0x1EEE9AC00](v129);
  v131 = v315;
  sub_1CA948D98();
  v132 = v314;
  v133 = [v314 bundleURL];
  v297 = &v277;
  MEMORY[0x1EEE9AC00](v133);
  v134 = &v277 - v313;
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 240) = sub_1CA2F9F14(v300, v299, v129, v298, 0, 0, &v277 - v131, v134);
  v136 = v311;
  v137 = v291;
  *(v117 + 264) = v311;
  *(v117 + 272) = v137;
  v138 = sub_1CA94C438("Folder (WFFolder)", 17);
  v299 = v139;
  *&v300 = v138;
  v140 = sub_1CA94C438("Folder", 6);
  v298 = v141;
  *&v301 = &v277;
  MEMORY[0x1EEE9AC00](v140);
  sub_1CA948D98();
  v142 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v277 - v313;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 280) = sub_1CA2F9F14(v300, v299, v140, v298, 0, 0, &v277 - v131, v143);
  *(v117 + 304) = v136;
  *(v117 + 312) = @"RequiredResources";
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v145 = swift_allocObject();
  v301 = xmmword_1CA981310;
  *(v145 + 16) = xmmword_1CA981310;
  v146 = swift_allocObject();
  v300 = xmmword_1CA9813C0;
  *(v146 + 16) = xmmword_1CA9813C0;
  strcpy((v146 + 32), "WFParameterKey");
  *(v146 + 47) = -18;
  *(v146 + 48) = 0xD000000000000010;
  *(v146 + 56) = 0x80000001CA9C77C0;
  v294 = 0x80000001CA9C77C0;
  v299 = 0x80000001CA993570;
  v147 = MEMORY[0x1E69E6158];
  *(v146 + 72) = MEMORY[0x1E69E6158];
  *(v146 + 80) = 0xD000000000000010;
  *(v146 + 88) = 0x80000001CA993570;
  *(v146 + 96) = 0;
  v148 = MEMORY[0x1E69E6370];
  *(v146 + 120) = MEMORY[0x1E69E6370];
  *(v146 + 128) = 0x72756F7365524657;
  *(v146 + 168) = v147;
  v297 = 0xD00000000000001BLL;
  v298 = 0x80000001CA993590;
  *(v146 + 136) = 0xEF7373616C436563;
  *(v146 + 144) = 0xD00000000000001BLL;
  *(v146 + 152) = 0x80000001CA993590;
  v281 = @"RequiredResources";
  *(v145 + 32) = sub_1CA94C1E8();
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v117 + 344) = v295;
  *(v117 + 320) = v145;
  v149 = sub_1CA94C1E8();
  v150 = sub_1CA2F864C(v149);
  *(v309 + 40) = v150;
  v151 = swift_allocObject();
  *(v151 + 16) = v302;
  v282 = 0x80000001CA99E620;
  v292 = 0xD000000000000011;
  v152 = v289;
  v153 = v290;
  *(v151 + 32) = v289;
  *(v151 + 40) = 0xD000000000000011;
  *(v151 + 48) = 0x80000001CA99E620;
  *(v151 + 64) = v147;
  *(v151 + 72) = @"DefaultValue";
  *(v151 + 80) = 1;
  *(v151 + 104) = v148;
  *(v151 + 112) = v153;
  *(v151 + 120) = 0xD000000000000010;
  *(v151 + 128) = 0x80000001CA9C77C0;
  v154 = v280;
  *(v151 + 144) = v147;
  *(v151 + 152) = v154;
  v155 = @"DefaultValue";
  v288 = v152;
  v289 = v153;
  v290 = v154;
  v280 = v155;
  v156 = sub_1CA94C438("Ask Where To Save (WFAskWhereToSave)", 36);
  v158 = v157;
  v159 = sub_1CA94C438("Ask Where To Save", 17);
  v161 = v160;
  v279 = &v277;
  MEMORY[0x1EEE9AC00](v159);
  v162 = &v277 - v315;
  sub_1CA948D98();
  v163 = [v314 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  v164 = &v277 - v313;
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v166 = sub_1CA2F9F14(v156, v158, v159, v161, 0, 0, v162, v164);
  *(v151 + 184) = v311;
  *(v151 + 160) = v166;
  v167 = sub_1CA94C1E8();
  v168 = sub_1CA2F864C(v167);
  *(v309 + 48) = v168;
  v169 = swift_allocObject();
  *(v169 + 16) = xmmword_1CA9813E0;
  *(v169 + 32) = @"AutocapitalizationType";
  *(v169 + 40) = 1701736270;
  *(v169 + 48) = 0xE400000000000000;
  v170 = MEMORY[0x1E69E6158];
  v171 = v288;
  *(v169 + 64) = MEMORY[0x1E69E6158];
  *(v169 + 72) = v171;
  *(v169 + 80) = 0xD000000000000014;
  *(v169 + 88) = 0x80000001CA99B500;
  *(v169 + 104) = v170;
  *(v169 + 112) = @"Description";
  v172 = @"AutocapitalizationType";
  v173 = @"Description";
  v174 = sub_1CA94C438("The path to save to, such as /folder/file.txt (WFFileDestinationPath)", 71);
  v277 = v175;
  v278 = v174;
  v176 = sub_1CA94C438("The path to save to, such as /folder/file.txt", 47);
  v178 = v177;
  v279 = &v277;
  MEMORY[0x1EEE9AC00](v176);
  v179 = &v277 - v315;
  sub_1CA948D98();
  v180 = [v314 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v277 - v313;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 120) = sub_1CA2F9F14(v278, v277, v176, v178, 0, 0, v179, v181);
  *(v169 + 144) = v311;
  *(v169 + 152) = @"DisableAutocorrection";
  *(v169 + 160) = 1;
  v183 = v289;
  *(v169 + 184) = MEMORY[0x1E69E6370];
  *(v169 + 192) = v183;
  *(v169 + 200) = v293;
  *(v169 + 208) = 0x80000001CA9C78B0;
  v184 = v290;
  *(v169 + 224) = MEMORY[0x1E69E6158];
  *(v169 + 232) = v184;
  v185 = @"DisableAutocorrection";
  v186 = sub_1CA94C438("Subpath (WFFileDestinationPath)", 31);
  v278 = v187;
  v279 = v186;
  v188 = sub_1CA94C438("Subpath", 7);
  v277 = v189;
  v293 = &v277;
  MEMORY[0x1EEE9AC00](v188);
  v190 = v315;
  sub_1CA948D98();
  v191 = v314;
  v192 = [v314 bundleURL];
  MEMORY[0x1EEE9AC00](v192);
  v193 = v313;
  sub_1CA948B68();

  v194 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 240) = sub_1CA2F9F14(v279, v278, v188, v277, 0, 0, &v277 - v190, &v277 - v193);
  v195 = v311;
  v196 = v291;
  *(v169 + 264) = v311;
  *(v169 + 272) = v196;
  v291 = sub_1CA94C438("/Folder/File.txt (WFFileDestinationPath)", 40);
  v279 = v197;
  v198 = sub_1CA94C438("/Folder/File.txt", 16);
  v278 = v199;
  v293 = &v277;
  MEMORY[0x1EEE9AC00](v198);
  sub_1CA948D98();
  v200 = [v191 bundleURL];
  MEMORY[0x1EEE9AC00](v200);
  sub_1CA948B68();

  v201 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 280) = sub_1CA2F9F14(v291, v279, v198, v278, 0, 0, &v277 - v190, &v277 - v193);
  v202 = v281;
  *(v169 + 304) = v195;
  *(v169 + 312) = v202;
  v203 = swift_allocObject();
  *(v203 + 16) = v301;
  v204 = swift_allocObject();
  *(v204 + 16) = v300;
  strcpy((v204 + 32), "WFParameterKey");
  *(v204 + 47) = -18;
  v205 = v294;
  *(v204 + 48) = 0xD000000000000010;
  *(v204 + 56) = v205;
  v206 = MEMORY[0x1E69E6158];
  *(v204 + 72) = MEMORY[0x1E69E6158];
  *(v204 + 80) = 0xD000000000000010;
  *(v204 + 88) = v299;
  *(v204 + 96) = 0;
  v207 = MEMORY[0x1E69E6370];
  *(v204 + 120) = MEMORY[0x1E69E6370];
  *(v204 + 128) = 0x72756F7365524657;
  *(v204 + 168) = v206;
  *(v204 + 136) = 0xEF7373616C436563;
  v208 = v298;
  *(v204 + 144) = v297;
  *(v204 + 152) = v208;
  v209 = v206;
  *(v203 + 32) = sub_1CA94C1E8();
  *(v169 + 320) = v203;
  *(v169 + 344) = v295;
  *(v169 + 352) = @"TextAlignment";
  *(v169 + 384) = v209;
  *(v169 + 360) = 1952867660;
  *(v169 + 368) = 0xE400000000000000;
  v210 = @"TextAlignment";
  v211 = sub_1CA94C1E8();
  v212 = sub_1CA2F864C(v211);
  *(v309 + 56) = v212;
  v213 = swift_allocObject();
  *(v213 + 16) = v302;
  v214 = v292;
  *(v213 + 32) = v288;
  *(v213 + 40) = v214;
  *(v213 + 48) = v282;
  v215 = v280;
  *(v213 + 64) = v209;
  *(v213 + 72) = v215;
  *(v213 + 80) = 0;
  v216 = v289;
  *(v213 + 104) = v207;
  *(v213 + 112) = v216;
  *(v213 + 120) = v284;
  *(v213 + 128) = 0x80000001CA9C7920;
  v217 = v290;
  *(v213 + 144) = v209;
  *(v213 + 152) = v217;
  v218 = sub_1CA94C438("Overwrite If File Exists (WFSaveFileOverwrite)", 46);
  v220 = v219;
  v221 = sub_1CA94C438("Overwrite If File Exists", 24);
  v223 = v222;
  v305 = &v277;
  MEMORY[0x1EEE9AC00](v221);
  v224 = &v277 - v315;
  sub_1CA948D98();
  v225 = [v314 bundleURL];
  MEMORY[0x1EEE9AC00](v225);
  v226 = &v277 - v313;
  sub_1CA948B68();

  v227 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v228 = sub_1CA2F9F14(v218, v220, v221, v223, 0, 0, v224, v226);
  *(v213 + 184) = v311;
  *(v213 + 160) = v228;
  v229 = sub_1CA94C1E8();
  v230 = sub_1CA2F864C(v229);
  v231 = v309;
  *(v309 + 64) = v230;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v233 = v310;
  v310[55] = v231;
  v233[58] = v232;
  v233[59] = @"ParameterSummary";
  v311 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v309 = swift_allocObject();
  *(v309 + 16) = xmmword_1CA981360;
  v308 = "Overwrite If File Exists";
  v234 = @"ParameterSummary";
  v235 = sub_1CA94C438("Save ${WFInput} to ${WFFolder}", 30);
  v237 = v236;
  v238 = sub_1CA94C438("Save ${WFInput} to ${WFFolder}", 30);
  v240 = v239;
  v305 = &v277;
  MEMORY[0x1EEE9AC00](v238);
  v241 = &v277 - v315;
  sub_1CA948D98();
  v242 = [v314 bundleURL];
  MEMORY[0x1EEE9AC00](v242);
  v243 = &v277 - v313;
  sub_1CA948B68();

  v244 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v245 = sub_1CA2F9F14(v235, v237, v238, v240, 0, 0, v241, v243);
  v246 = objc_allocWithZone(WFActionParameterSummaryValue);
  v247 = sub_1CA65DD78(0xD00000000000004ELL, v308 | 0x8000000000000000, v245);
  v248 = v309;
  *(v309 + 32) = v247;
  v308 = "Save ${WFInput} to ${WFFolder}";
  v249 = sub_1CA94C438("Save ${WFInput}", 15);
  v304 = v250;
  v251 = sub_1CA94C438("Save ${WFInput}", 15);
  v253 = v252;
  v305 = &v277;
  MEMORY[0x1EEE9AC00](v251);
  v254 = &v277 - v315;
  sub_1CA948D98();
  v255 = [v314 bundleURL];
  MEMORY[0x1EEE9AC00](v255);
  v256 = &v277 - v313;
  sub_1CA948B68();

  v257 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v258 = sub_1CA2F9F14(v249, v304, v251, v253, 0, 0, v254, v256);
  v259 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v248 + 40) = sub_1CA65DD78(0xD00000000000002FLL, v308 | 0x8000000000000000, v258);
  v260 = v311;
  v261 = sub_1CA65AF90(v248);
  v262 = v310;
  v310[60] = v261;
  v262[63] = v260;
  v262[64] = @"RemoteExecuteOnPlatforms";
  v262[68] = v306;
  v262[65] = &unk_1F4A09EA0;
  v262[69] = @"RequiredResources";
  v263 = swift_allocObject();
  *(v263 + 16) = v301;
  v264 = swift_allocObject();
  *(v264 + 16) = v285;
  *(v264 + 32) = v292;
  *(v264 + 40) = 0x80000001CA99B240;
  v265 = swift_allocObject();
  *(v265 + 16) = v301;
  v266 = swift_allocObject();
  *(v266 + 16) = v300;
  strcpy((v266 + 32), "WFParameterKey");
  *(v266 + 47) = -18;
  v267 = v294;
  *(v266 + 48) = 0xD000000000000010;
  *(v266 + 56) = v267;
  v268 = MEMORY[0x1E69E6158];
  *(v266 + 72) = MEMORY[0x1E69E6158];
  *(v266 + 80) = 0xD000000000000010;
  *(v266 + 88) = v299;
  *(v266 + 96) = 1;
  *(v266 + 120) = MEMORY[0x1E69E6370];
  *(v266 + 128) = 0x72756F7365524657;
  *(v266 + 168) = v268;
  *(v266 + 136) = 0xEF7373616C436563;
  v269 = v298;
  *(v266 + 144) = v297;
  *(v266 + 152) = v269;
  v270 = @"RemoteExecuteOnPlatforms";
  v271 = @"RequiredResources";
  *(v265 + 32) = sub_1CA94C1E8();
  *(v264 + 48) = v265;
  v272 = v295;
  *(v264 + 72) = v295;
  *(v264 + 80) = 0x72756F7365524657;
  *(v264 + 120) = v268;
  *(v264 + 88) = 0xEF7373616C436563;
  *(v264 + 96) = 0xD000000000000019;
  *(v264 + 104) = 0x80000001CA9932D0;
  *(v263 + 32) = sub_1CA94C1E8();
  v262[73] = v272;
  v262[70] = v263;
  v262[74] = @"UserInterfaceClasses";
  v273 = @"UserInterfaceClasses";
  v274 = sub_1CA94C1E8();
  v262[78] = v286;
  v262[75] = v274;
  v262[79] = @"UserInterfaces";
  v262[83] = v306;
  v262[80] = &unk_1F4A09F30;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v275 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}
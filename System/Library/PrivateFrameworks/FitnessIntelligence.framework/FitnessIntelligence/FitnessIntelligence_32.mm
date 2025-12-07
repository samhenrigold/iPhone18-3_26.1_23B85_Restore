uint64_t sub_1B4C91D08(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v66 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v9 = *(v8 - 8);
  v56[2] = v8;
  v57 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v58 = v56 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v63 = v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v13 = *(v12 - 8);
  v64 = v12;
  v65 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v62 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70);
  v60 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v56 - v19;
  v21 = *(a1 + 216);
  v73[4] = *(a1 + 200);
  v73[5] = v21;
  v22 = *(a1 + 248);
  v73[6] = *(a1 + 232);
  v73[7] = v22;
  v23 = *(a1 + 152);
  v73[0] = *(a1 + 136);
  v73[1] = v23;
  v24 = *(a1 + 184);
  v73[2] = *(a1 + 168);
  v73[3] = v24;
  v25 = *a2;
  v26 = *a3;
  if (sub_1B4B6F478(v73) == 1)
  {
    return 0;
  }

  v28 = v73 - 24 * v25;
  v56[1] = *(v28 + 13);
  v29 = *(v28 + 15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1A800;
  *(inited + 32) = v66;
  if (v26 > 17)
  {
    if (v26 == 18)
    {
      v69[0] = MEMORY[0x1E69E7CC0];
      v69[1] = MEMORY[0x1E69E7CC0];
      v69[2] = MEMORY[0x1E69E7CC0];
      v69[3] = inited;
      v69[4] = MEMORY[0x1E69E7CC0];
      v69[5] = MEMORY[0x1E69E7CC0];

      sub_1B4CE8AA4(v69, v29, v67);
      if (!v4)
      {

        swift_bridgeObjectRelease_n();
        if (v67[0])
        {
          v44 = *(v67[0] + 16);
          if (v44)
          {
            sub_1B4974FBC(v67[0] + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v17, &qword_1EB8A6818, &unk_1B4D1AB30);

            if (v44 < 3)
            {
              v33 = &qword_1EB8A6818;
              v34 = &unk_1B4D1AB30;
              v36 = v17;
              goto LABEL_39;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
            sub_1B4D1742C();
            v46 = v53;
            sub_1B4D1779C();
            v47 = &qword_1EB8A6818;
            v48 = &unk_1B4D1AB30;
            v50 = v17;
            goto LABEL_51;
          }

          goto LABEL_40;
        }

        return 0;
      }

      goto LABEL_22;
    }

    if (v26 == 19)
    {
      v71[0] = MEMORY[0x1E69E7CC0];
      v71[1] = MEMORY[0x1E69E7CC0];
      v71[2] = MEMORY[0x1E69E7CC0];
      v71[3] = inited;
      v71[4] = MEMORY[0x1E69E7CC0];
      v71[5] = MEMORY[0x1E69E7CC0];

      sub_1B4CE9F8C(v71, v29, v67);
      if (!v4)
      {

        swift_bridgeObjectRelease_n();
        if (v67[0])
        {
          v35 = *(v67[0] + 16);
          if (v35)
          {
            v32 = v63;
            sub_1B4974FBC(v67[0] + ((*(v61 + 80) + 32) & ~*(v61 + 80)), v63, &qword_1EB8A6CF8, &unk_1B4D1BC80);

            if (v35 < 3)
            {
              v33 = &qword_1EB8A6CF8;
              v34 = &unk_1B4D1BC80;
              goto LABEL_18;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
            sub_1B4D1742C();
            v46 = v49;
            sub_1B4D1779C();
            v47 = &qword_1EB8A6CF8;
            v48 = &unk_1B4D1BC80;
            goto LABEL_48;
          }

LABEL_40:
        }

        return 0;
      }

LABEL_22:

      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (v26 == 16)
    {
      v68[0] = MEMORY[0x1E69E7CC0];
      v68[1] = MEMORY[0x1E69E7CC0];
      v68[2] = MEMORY[0x1E69E7CC0];
      v68[3] = inited;
      v68[4] = MEMORY[0x1E69E7CC0];
      v68[5] = MEMORY[0x1E69E7CC0];

      sub_1B4CE8030(v68, v29, v67);
      if (!v4)
      {

        swift_bridgeObjectRelease_n();
        if (v67[0])
        {
          v43 = *(v67[0] + 16);
          if (v43)
          {
            sub_1B4974FBC(v67[0] + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v20, &qword_1EB8A6CF0, &unk_1B4D1BC70);

            if (v43 >= 3)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
              sub_1B4D1742C();
              v52 = v51;
              sub_1B4D1779C();
              sub_1B4975024(v20, &qword_1EB8A6CF0, &unk_1B4D1BC70);
              return v52;
            }

            sub_1B4975024(v20, &qword_1EB8A6CF0, &unk_1B4D1BC70);
          }

          else
          {
          }
        }

        return 0;
      }

      goto LABEL_22;
    }

    if (v26 == 17)
    {
      v70[0] = MEMORY[0x1E69E7CC0];
      v70[1] = MEMORY[0x1E69E7CC0];
      v70[2] = MEMORY[0x1E69E7CC0];
      v70[3] = inited;
      v70[4] = MEMORY[0x1E69E7CC0];
      v70[5] = MEMORY[0x1E69E7CC0];

      sub_1B4CE9518(v70, v29, v67);
      if (!v4)
      {

        swift_bridgeObjectRelease_n();
        if (v67[0])
        {
          v31 = *(v67[0] + 16);
          if (v31)
          {
            v32 = v62;
            sub_1B4974FBC(v67[0] + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v62, &qword_1EB8A6818, &unk_1B4D1AB30);

            if (v31 < 3)
            {
              v33 = &qword_1EB8A6818;
              v34 = &unk_1B4D1AB30;
LABEL_18:
              v36 = v32;
LABEL_39:
              sub_1B4975024(v36, v33, v34);
              return 0;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
            sub_1B4D1742C();
            v46 = v45;
            sub_1B4D1779C();
            v47 = &qword_1EB8A6818;
            v48 = &unk_1B4D1AB30;
LABEL_48:
            v50 = v32;
LABEL_51:
            sub_1B4975024(v50, v47, v48);
            return v46;
          }

          goto LABEL_40;
        }

        return 0;
      }

      goto LABEL_22;
    }
  }

  v72[0] = MEMORY[0x1E69E7CC0];
  v72[1] = MEMORY[0x1E69E7CC0];
  v72[2] = MEMORY[0x1E69E7CC0];
  v72[3] = inited;
  v72[4] = MEMORY[0x1E69E7CC0];
  v72[5] = MEMORY[0x1E69E7CC0];

  sub_1B4CEAA00(v72, v29, v67);

  result = swift_bridgeObjectRelease_n();
  if (!v4)
  {
    v37 = v67[0];
    if (!v67[0])
    {
      return 0;
    }

    if (*(v67[0] + 16) && (v38 = sub_1B49E9CA4(v26), (v39 & 1) != 0) && (v40 = *(*(v37 + 56) + 8 * v38), , , (v41 = *(v40 + 16)) != 0))
    {
      v42 = v58;
      sub_1B4974FBC(v40 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v58, &qword_1EB8A6CE8, &qword_1B4D44B80);

      if (v41 >= 3)
      {
        type metadata accessor for DistanceSampleIntervalRecord(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        sub_1B4D1742C();
        v55 = v54;
        sub_1B4D1779C();
        sub_1B4975024(v42, &qword_1EB8A6CE8, &qword_1B4D44B80);
        return v55;
      }

      sub_1B4975024(v42, &qword_1EB8A6CE8, &qword_1B4D44B80);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t static WorkoutMetricsFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49C016C;

  return (sub_1B4C98A0C)(a1, a2, a3, a4);
}

uint64_t sub_1B4C927EC()
{
  v1 = type metadata accessor for WorkoutState(0);
  v2 = sub_1B4BAE58C(*(v0 + *(v1 + 112)));
  v3 = sub_1B4D1818C();
  if (!v2[2])
  {

    goto LABEL_7;
  }

  v5 = sub_1B49E9EC4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_1B4955D64(v2[7] + 32 * v5, v10);

  sub_1B498AFB8(0, &qword_1EDC36E00, 0x1E696C348);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t WorkoutMetricsFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4C92958@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

unint64_t WorkoutMetricsFact.makePrompt(promptFormatter:)(uint64_t a1)
{
  v192 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v191 = &v167 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v196 = &v167 - v4;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v202 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v180 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v178 = &v167 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v184 = &v167 - v9;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v167 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v201 = &v167 - v12;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v198 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v168 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v183 = &v167 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v194 = &v167 - v17;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v176 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v179 = &v167 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v167 - v22;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v186 = *(v187 - 1);
  MEMORY[0x1EEE9AC00](v187);
  v173 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v181 = &v167 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v175 = &v167 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v174 = &v167 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v177 = &v167 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v185 = &v167 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v167 - v36;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v197 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v167 = &v167 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v172 = &v167 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v182 = &v167 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v167 - v44;
  v205 = 0xD00000000000004FLL;
  v206 = 0x80000001B4D668A0;
  v46 = type metadata accessor for WorkoutMetricsFact(0);
  v47 = *(v46 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  sub_1B4D18F8C();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1B4D1B2D0;
  sub_1B4D18F4C();
  sub_1B4D18F5C();
  sub_1B4D18F6C();
  sub_1B4D18F7C();
  v49 = sub_1B4BCA7BC(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v50 = v203;
  v51 = sub_1B4D15F5C(v203 + v47, v49);
  v53 = v52;

  v200 = v46;
  if (*(v50 + *(v46 + 32)) == 1)
  {
    v204[0] = 0;
    v204[1] = 0xE000000000000000;
    sub_1B4D1896C();

    v54 = 0x80000001B4D66A00;
    v55 = 0xD000000000000010;
  }

  else
  {
    v204[0] = 0;
    v204[1] = 0xE000000000000000;
    sub_1B4D1896C();

    v54 = 0x80000001B4D668F0;
    v55 = 0xD000000000000017;
  }

  v204[0] = v55;
  v204[1] = v54;
  MEMORY[0x1B8C7C620](v51, v53);

  MEMORY[0x1B8C7C620](10, 0xE100000000000000);
  MEMORY[0x1B8C7C620](v204[0], v204[1]);

  v56 = v200;
  v57 = v203;
  sub_1B4974FBC(v203 + v200[5], v37, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v58 = v197;
  v59 = v199;
  v193 = v197[6];
  v60 = v193(v37, 1, v199);
  v61 = v198;
  if (v60 == 1)
  {
    sub_1B4975024(v37, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  }

  else
  {
    (v58[4])(v45, v37, v59);
    sub_1B4D1742C();
    if (v62 != 0.0)
    {
      v63 = sub_1B4D133E8(v45, *v57, 0, 1);
      v65 = v64;
      v204[0] = 0;
      v204[1] = 0xE000000000000000;
      sub_1B4D1896C();

      v204[0] = 0xD000000000000019;
      v204[1] = 0x80000001B4D669E0;
      MEMORY[0x1B8C7C620](v63, v65);
      v56 = v200;

      MEMORY[0x1B8C7C620](10, 0xE100000000000000);
      MEMORY[0x1B8C7C620](v204[0], v204[1]);
      v57 = v203;
    }

    (v58[1])(v45, v59);
  }

  v66 = v201;
  v67 = v187;
  v68 = v186;
  sub_1B4974FBC(v57 + v56[9], v23, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v69 = (*(v68 + 6))(v23, 1, v67);
  v70 = v196;
  v71 = v194;
  if (v69 == 1)
  {
    sub_1B4975024(v23, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  else
  {
    v72 = v181;
    (*(v68 + 4))();
    sub_1B4D1742C();
    if (v74 == 0.0)
    {
      (*(v68 + 1))(v72, v67);
    }

    else
    {
      FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v73);
      v76 = v75;
      v77 = v173;
      sub_1B4D1745C();
      v78 = sub_1B4D12160();
      v79 = sub_1B4D12A28(v77);
      v81 = v80;

      v82 = *(v68 + 1);
      (v82)(v77, v67);
      v204[0] = 0;
      v204[1] = 0xE000000000000000;
      sub_1B4D1896C();

      v204[0] = 0x6220796772656E45;
      v204[1] = 0xEF203A64656E7275;
      v83 = v79;
      v56 = v200;
      MEMORY[0x1B8C7C620](v83, v81);

      MEMORY[0x1B8C7C620](10, 0xE100000000000000);
      MEMORY[0x1B8C7C620](v204[0], v204[1]);
      v57 = v203;

      (v82)(v181, v67);
      v61 = v198;
    }

    v66 = v201;
  }

  v84 = v185;
  sub_1B4974FBC(v57 + v56[10], v185, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v85 = v199;
  if (v193(v84, 1, v199) == 1)
  {
    sub_1B4975024(v84, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v86 = v190;
  }

  else
  {
    v87 = v197;
    v88 = v182;
    v89 = v84;
    v90 = v197[4];
    v90(v182, v89, v85);
    sub_1B4D1742C();
    if (v91 != 0.0)
    {
      v186 = v90;
      v187 = v87[7];
      v97 = v177;
      (v187)(v177, 1, 1, v85);
      [*v57 effectiveTypeIdentifier];
      v98 = [objc_opt_self() feet];
      v99 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      v100 = v174;
      v185 = v99;
      sub_1B4D1741C();
      sub_1B4975024(v97, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      (v187)(v100, 0, 1, v85);
      sub_1B498B270(v100, v97, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v101 = v175;
      sub_1B4974FBC(v97, v175, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      if (v193(v101, 1, v85) == 1)
      {
        sub_1B4975024(v97, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        (v87[1])(v182, v85);
        sub_1B4975024(v101, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        v57 = v203;
        v70 = v196;
        v56 = v200;
        v66 = v201;
        v86 = v190;
        v61 = v198;
        v92 = v194;
      }

      else
      {
        v123 = v172;
        v186(v172, v101, v85);
        sub_1B49A2254();
        v124 = v182;
        v125 = sub_1B4D1810C();
        v92 = v194;
        if (v125)
        {
          v127 = v194;
          FIUnitManager.userMeasurementUnitForElevation()(v126);
          v129 = v128;
          v130 = v167;
          sub_1B4D1745C();
          v131 = sub_1B4D12160();
          v132 = sub_1B4D1878C();
          v134 = v133;

          v135 = v197[1];
          v135(v130, v85);
          v204[0] = 0;
          v204[1] = 0xE000000000000000;
          sub_1B4D1896C();

          v204[0] = 0xD000000000000016;
          v204[1] = 0x80000001B4D669C0;
          MEMORY[0x1B8C7C620](v132, v134);
          v92 = v127;

          MEMORY[0x1B8C7C620](10, 0xE100000000000000);
          MEMORY[0x1B8C7C620](v204[0], v204[1]);

          v135(v172, v85);
          sub_1B4975024(v177, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          v135(v124, v85);
        }

        else
        {
          v166 = v197[1];
          v166(v123, v85);
          sub_1B4975024(v177, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          v166(v124, v85);
        }

        v57 = v203;
        v70 = v196;
        v56 = v200;
        v66 = v201;
        v86 = v190;
        v61 = v198;
      }

      goto LABEL_20;
    }

    (v87[1])(v88, v85);
    v86 = v190;
    v61 = v198;
    v66 = v201;
  }

  v92 = v71;
LABEL_20:
  sub_1B4974FBC(v57 + v56[11], v92, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v93 = v188;
  v94 = v189;
  if ((*(v188 + 48))(v92, 1, v189) == 1)
  {
    sub_1B4975024(v92, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  }

  else
  {
    v95 = v179;
    (*(v93 + 32))(v179, v92, v94);
    sub_1B4D1742C();
    if (v96 == 0.0)
    {
      (*(v93 + 8))(v95, v94);
    }

    else
    {
      v102 = sub_1B4D12160();
      v103 = [objc_opt_self() watts];
      v104 = v176;
      sub_1B4D1745C();

      sub_1B498AFB8(0, &qword_1EB8A7990, 0x1E696B068);
      v105 = sub_1B4D1878C();
      v107 = v106;

      v108 = *(v93 + 8);
      v108(v104, v94);
      v204[0] = 0;
      v204[1] = 0xE000000000000000;
      sub_1B4D1896C();

      v204[0] = 0x2065676172657641;
      v204[1] = 0xEF203A7265776F50;
      v109 = v105;
      v56 = v200;
      MEMORY[0x1B8C7C620](v109, v107);
      v70 = v196;

      MEMORY[0x1B8C7C620](10, 0xE100000000000000);
      MEMORY[0x1B8C7C620](v204[0], v204[1]);
      v57 = v203;

      v108(v95, v94);
      v61 = v198;
    }

    v66 = v201;
  }

  sub_1B4974FBC(v57 + v56[6], v66, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v110 = (*(v61 + 48))(v66, 1, v86);
  v111 = v195;
  if (v110 == 1)
  {
    sub_1B4975024(v66, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  }

  else
  {
    v112 = v66;
    v113 = v183;
    (*(v61 + 32))(v183, v112, v86);
    sub_1B4D1742C();
    if (v114 == 0.0)
    {
      (*(v61 + 8))(v113, v86);
    }

    else
    {
      v115 = *v57;
      if ([*v57 effectiveTypeIdentifier] == 13)
      {
        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v116 = v168;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v117 = *(v61 + 8);
        v117(v116, v86);
        v118 = [objc_opt_self() metersPerSecond];
        sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
        v119 = v169;
        sub_1B4D1741C();
        v120 = sub_1B4D13D94(v119, v115, 1);
        v122 = v121;
        v204[0] = 0;
        v204[1] = 0xE000000000000000;
        sub_1B4D1896C();

        v204[0] = 0x2065676172657641;
        v204[1] = 0xEF203A6465657053;
        MEMORY[0x1B8C7C620](v120, v122);

        MEMORY[0x1B8C7C620](10, 0xE100000000000000);
        MEMORY[0x1B8C7C620](v204[0], v204[1]);

        (*(v170 + 8))(v119, v171);
        v117(v183, v86);
        v57 = v203;
      }

      else
      {
        v136 = v183;
        v137 = sub_1B4D13AE8(v183, v115, 2);
        v139 = v138;
        v204[0] = 0;
        v204[1] = 0xE000000000000000;
        sub_1B4D1896C();

        strcpy(v204, "Average Pace: ");
        HIBYTE(v204[1]) = -18;
        MEMORY[0x1B8C7C620](v137, v139);

        MEMORY[0x1B8C7C620](10, 0xE100000000000000);
        MEMORY[0x1B8C7C620](v204[0], v204[1]);
        v57 = v203;

        (*(v61 + 8))(v136, v86);
      }

      v70 = v196;
      v56 = v200;
    }
  }

  sub_1B4974FBC(v57 + v56[12], v70, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v140 = *(v202 + 48);
  if (v140(v70, 1, v111) == 1)
  {
    sub_1B4975024(v70, &qword_1EB8A6CC8, &unk_1B4D464B0);
LABEL_44:
    v143 = v191;
    goto LABEL_45;
  }

  v141 = v184;
  (*(v202 + 32))();
  sub_1B4D1742C();
  if (v142 == 0.0)
  {
    (*(v202 + 8))(v141, v111);
    goto LABEL_44;
  }

  v146 = sub_1B4D12160();
  if (qword_1EDC36DD8 != -1)
  {
    swift_once();
  }

  v147 = v178;
  v148 = v195;
  sub_1B4D1745C();
  sub_1B4D14174(v147);
  v150 = v149;
  v152 = v151;

  v153 = *(v202 + 8);
  v154 = v147;
  v111 = v148;
  v153(v154, v148);
  v204[0] = 0;
  v204[1] = 0xE000000000000000;
  sub_1B4D1896C();

  v204[0] = 0xD000000000000014;
  v204[1] = 0x80000001B4D669A0;
  MEMORY[0x1B8C7C620](v150, v152);

  MEMORY[0x1B8C7C620](10, 0xE100000000000000);
  MEMORY[0x1B8C7C620](v204[0], v204[1]);

  v153(v184, v148);
  v57 = v203;
  v143 = v191;
  v56 = v200;
LABEL_45:
  sub_1B4974FBC(v57 + v56[13], v143, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v140(v143, 1, v111) == 1)
  {
    sub_1B4975024(v143, &qword_1EB8A6CC8, &unk_1B4D464B0);
  }

  else
  {
    v144 = v180;
    (*(v202 + 32))(v180, v143, v111);
    sub_1B4D1742C();
    if (v145 == 0.0)
    {
      (*(v202 + 8))(v144, v111);
    }

    else
    {
      v155 = sub_1B4D12160();
      if (qword_1EDC36DD8 != -1)
      {
        swift_once();
      }

      v156 = v178;
      sub_1B4D1745C();
      sub_1B4D14174(v156);
      v158 = v157;
      v160 = v159;

      v161 = *(v202 + 8);
      v161(v156, v111);
      v204[0] = 0;
      v204[1] = 0xE000000000000000;
      sub_1B4D1896C();

      v204[0] = 0xD000000000000014;
      v204[1] = 0x80000001B4D66980;
      MEMORY[0x1B8C7C620](v158, v160);

      MEMORY[0x1B8C7C620](10, 0xE100000000000000);
      MEMORY[0x1B8C7C620](v204[0], v204[1]);

      v161(v144, v111);
      v57 = v203;
      v56 = v200;
    }
  }

  v162 = (v57 + v56[14]);
  if ((v162[1] & 1) == 0)
  {
    if (*v162 >= 9.0)
    {
      v204[0] = 0;
      v204[1] = 0xE000000000000000;
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D66910);
      sub_1B4D185EC();
      v163 = " which corresponds to Hard\n";
      v164 = 0xD000000000000020;
      goto LABEL_60;
    }

    if (*v162 >= 7.0)
    {
      v204[0] = 0;
      v204[1] = 0xE000000000000000;
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D66910);
      sub_1B4D185EC();
      v163 = "Estimated Effort: ";
      v164 = 0xD00000000000001DLL;
LABEL_60:
      MEMORY[0x1B8C7C620](v164, v163 | 0x8000000000000000);
      MEMORY[0x1B8C7C620](v204[0], v204[1]);
    }
  }

  MEMORY[0x1B8C7C620](62, 0xE100000000000000);
  return v205;
}

uint64_t sub_1B4C944F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49C0344;

  return (sub_1B4C98A0C)(a1, a2, a3, a4);
}

unint64_t sub_1B4C945C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6890, &qword_1B4D1ABA8);
    v3 = sub_1B4D18AEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B4974FBC(v4, &v13, &qword_1EB8AB120, &qword_1B4D32FD0);
      v5 = v13;
      v6 = v14;
      result = sub_1B49E9EC4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B498B060(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C946F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC90, &qword_1B4D44DD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6908, &qword_1B4D1AC20);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8ADC90, &qword_1B4D44DD0);
      result = sub_1B49E9FEC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C948D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A6AA8, &qword_1B4D1B1D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC88, &qword_1B4D44DC8);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, qword_1EB8A6AA8, &qword_1B4D1B1D8);
      result = sub_1B49EECB4();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C94A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B48, &unk_1B4D1B2C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6900, &qword_1B4D1AC18);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8A6B48, &unk_1B4D1B2C0);
      result = sub_1B49EA0C0(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(&v5[v8], v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C94C80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C8, &qword_1B4D1ABE0);
    v3 = sub_1B4D18AEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1B49EA180(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C94D74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC78, &qword_1B4D44DB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC80, &qword_1B4D44DC0);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8ADC78, &qword_1B4D44DB8);
      result = sub_1B49EF0B4();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C94F64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EA0, &qword_1B4D1C2A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC68, &qword_1B4D44DA8);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8A6EA0, &qword_1B4D1C2A8);
      result = sub_1B49EED40();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C9512C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC58, &qword_1B4D44D98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC60, &qword_1B4D44DA0);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8ADC58, &qword_1B4D44D98);
      result = sub_1B49EF0B4();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C952F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7268, &qword_1B4D1D590);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC50, &qword_1B4D44D90);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8A7268, &qword_1B4D1D590);
      result = sub_1B49EA31C(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(&v5[v8], v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC08, &qword_1B4D44D48);
    v3 = sub_1B4D18AEC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1B49EA3C0(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = (v3[7] + 24 * result);
      *v11 = v6;
      v11[1] = v7;
      v11[2] = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC40, &qword_1B4D44D80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC48, &qword_1B4D44D88);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8ADC40, &qword_1B4D44D80);
      result = sub_1B49EF0B4();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC38, &qword_1B4D44D78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E0, &qword_1B4D1ABF8);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8ADC38, &qword_1B4D44D78);
      result = sub_1B49EA4A8(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for WorkoutState(0);
      result = sub_1B4C99A00(&v5[v8], v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for WorkoutState);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95A38(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1B4D18AEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95B30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D8, &qword_1B4D1ABF0);
    v3 = sub_1B4D18AEC();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[1];
      v17[0] = *v4;
      v17[1] = v6;
      v7 = v4[3];
      v18 = v4[2];
      v19 = v7;
      v8 = *(&v7 + 1);
      v20 = v17[0];
      v21 = v6;
      v22 = v18;
      v23 = *(v4 + 6);
      sub_1B4974FBC(v17, &v16, &qword_1EB8ADBD8, &qword_1B4D44D18);
      result = sub_1B49EA514(&v20);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 56 * result;
      v12 = v21;
      *v11 = v20;
      *(v11 + 16) = v12;
      *(v11 + 32) = v22;
      *(v11 + 48) = v23;
      *(v3[7] + 8 * result) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_11;
      }

      v3[2] = v15;
      if (!i)
      {

        return v3;
      }

      v4 += 4;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D0, &qword_1B4D1ABE8);
    v3 = sub_1B4D18AEC();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v8 = *(v4 + 1);

      result = sub_1B49EA598(v5 | (v6 << 8) | (v7 << 16));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 3 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95DAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBB8, &qword_1B4D44CF8);
    v3 = sub_1B4D18AEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B4974FBC(v4, &v11, &qword_1EB8ABC98, &qword_1B4D38660);
      v5 = v11;
      result = sub_1B49EA618(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B498B060(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B4C95EE8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1B4D18AEC();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_1B49EF0C0();
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 7);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_1B49EF0C0();
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B4C95FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF60, &qword_1B4D325F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC10, &qword_1B4D44D50);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8AAF60, &qword_1B4D325F0);
      result = sub_1B49EA69C(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(&v5[v8], v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C961CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD648, &unk_1B4D42040);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB98, &qword_1B4D44CD8);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8AD648, &unk_1B4D42040);
      result = sub_1B49EEDA8();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C96394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D8, &qword_1B4D2F408);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB70, &qword_1B4D44CB0);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8AA5D8, &qword_1B4D2F408);
      result = sub_1B49EF0B8();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C9655C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD558, &unk_1B4D419D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCA8, &qword_1B4D44DE8);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8AD558, &unk_1B4D419D0);
      result = sub_1B49EF0B8();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C96724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC18, &qword_1B4D44D58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC20, &qword_1B4D44D60);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8ADC18, &qword_1B4D44D58);
      result = sub_1B49EF0B4();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C968EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EB8, &qword_1B4D25A68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCD0, &qword_1B4D44E08);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8A8EB8, &qword_1B4D25A68);
      v11 = *v5;
      result = sub_1B49EA7A0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(&v5[v8], v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C96AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD20, &unk_1B4D388B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBA8, &qword_1B4D44CE8);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8ABD20, &unk_1B4D388B0);
      result = sub_1B49EF0B8();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C96C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCC0, &qword_1B4D47930);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCC8, &qword_1B4D44E00);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8ADCC0, &qword_1B4D47930);
      result = sub_1B49EEE34();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C96E60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4F0, &qword_1B4D3C6C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCB0, &qword_1B4D44DF0);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8AC4F0, &qword_1B4D3C6C0);
      v11 = *v5;
      result = sub_1B49EA874(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(&v5[v8], v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C97044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD228, &unk_1B4D40278);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC98, &qword_1B4D44DD8);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8AD228, &unk_1B4D40278);
      result = sub_1B49EEE9C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C9720C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE20, &qword_1B4D39078);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCB8, &qword_1B4D44DF8);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8ABE20, &qword_1B4D39078);
      v11 = *v5;
      result = sub_1B49EA90C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(&v5[v8], v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C973F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB88, &qword_1B4D44CC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB90, &qword_1B4D44CD0);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8ADB88, &qword_1B4D44CC8);
      result = sub_1B49EEF04();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C975B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5A8, &unk_1B4D2F380);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCA0, &qword_1B4D44DE0);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8AA5A8, &unk_1B4D2F380);
      v11 = *v5;
      result = sub_1B49EA9AC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(&v5[v8], v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C9779C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1B0, &unk_1B4D364C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBE0, &qword_1B4D44D20);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8AB1B0, &unk_1B4D364C0);
      result = sub_1B49EF0C4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(&v5[v8], v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C97980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFD0, &qword_1B4D39840);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBD0, &qword_1B4D44D10);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8ABFD0, &qword_1B4D39840);
      result = sub_1B49EF0C4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(&v5[v8], v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C97B64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCC8, &unk_1B4D38758);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBB0, &qword_1B4D44CF0);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, &qword_1EB8ABCC8, &unk_1B4D38758);
      result = sub_1B49EAAF0(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(&v5[v8], v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C97D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC28, &qword_1B4D44D68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC30, &qword_1B4D44D70);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8ADC28, &qword_1B4D44D68);
      result = sub_1B49EF0B4();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C97F10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBC0, &qword_1B4D44D00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBC8, &qword_1B4D44D08);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8ADBC0, &qword_1B4D44D00);
      result = sub_1B49EF0B4();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C980D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB60, &qword_1B4D44CA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB68, &qword_1B4D44CA8);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8ADB60, &qword_1B4D44CA0);
      result = sub_1B49EF0B4();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C982A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8ABE40, &qword_1B4D390F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBA0, &qword_1B4D44CE0);
    v7 = sub_1B4D18AEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v5, qword_1EB8ABE40, &qword_1B4D390F8);
      result = sub_1B49EF0C4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(&v5[v8], v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C98484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6910, &qword_1B4D1AC28);
    v3 = sub_1B4D18AEC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B49EF0C0();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C98560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E8, &unk_1B4D1AC00);
    v3 = sub_1B4D18AEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_1B49E9F3C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C9864C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6878, &unk_1B4D1AB90);
    v3 = sub_1B4D18AEC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B49EF0B0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C98750(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1B4D18AEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C98844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB78, &qword_1B4D44CB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB80, &qword_1B4D44CC0);
    v7 = sub_1B4D18AEC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v8, v5, &qword_1EB8ADB78, &qword_1B4D44CB8);
      result = sub_1B49EF0B4();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      result = sub_1B4C99A00(v5, v13 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B4C98A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v3[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutSplit(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for WorkoutState(0);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C98D30, 0, 0);
}

uint64_t sub_1B4C98D30()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_1B4974FBC(v0[3], v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = v0[21];
    sub_1B4C99A00(v0[18], v4, type metadata accessor for WorkoutState);
    v5 = sub_1B4CAC70C(v4);
    v6 = 0;
    v7 = *(v5 + 2);
    do
    {
      v8 = v6;
      if (v7 == v6)
      {
        break;
      }

      ++v6;
    }

    while (*&v5[8 * v8 + 32] != 1);
    v9 = 0;
    do
    {
      v10 = v9;
      if (v7 == v9)
      {
        break;
      }

      ++v9;
    }

    while (*&v5[8 * v10 + 32] != 8);
    v11 = 0;
    do
    {
      v12 = v11;
      if (v7 == v11)
      {
        break;
      }

      ++v11;
    }

    while (*&v5[8 * v12 + 32] != 2);
    v13 = 0;
    do
    {
      v14 = v13;
      if (v7 == v13)
      {
        break;
      }

      ++v13;
    }

    while (*&v5[8 * v14 + 32] != 10);
    v15 = 0;
    while (v7 != v15)
    {
      v16 = &v5[8 * v15++];
      if (*(v16 + 4) == 12)
      {
        v17 = v5;
        v18 = [*(v0[21] + *(v0[19] + 24)) effectiveTypeIdentifier];
        v5 = v17;
        v82 = v18 == 13;
        v19 = *(v17 + 2);
        goto LABEL_20;
      }
    }

    v82 = 0;
    v19 = *(v5 + 2);
LABEL_20:
    v20 = 32;
    do
    {
      v21 = v19;
      if (!v19)
      {
        break;
      }

      v22 = *&v5[v20];
      v20 += 8;
      --v19;
    }

    while (v22 != 5);
    v23 = v0[21];
    v24 = v0[19];
    v25 = v0[2];

    v80 = *(v23 + *(v24 + 24));
    v26 = [v25 userDistanceHKUnitForActivityType_];
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    v27 = [objc_opt_self() mileUnit];
    LOBYTE(v25) = sub_1B4D187AC();

    v28 = objc_opt_self();
    v29 = &selRef_miles;
    if ((v25 & 1) == 0)
    {
      v29 = &selRef_kilometers;
    }

    v30 = [v28 *v29];

    v86 = v30;
    v31 = sub_1B4B95894(v30);
    if (v31[2] < 2uLL)
    {

      v85 = 0;
    }

    else
    {
      v32 = v0[17];
      v33 = v0[15];
      v34 = *(v0[16] + 80);
      sub_1B49E4B98(v31 + ((v34 + 32) & ~v34), v32);

      v85 = *(v32 + *(v33 + 48));
      sub_1B4B99808(v32, type metadata accessor for WorkoutSplit);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC70, &qword_1B4D44DB0);
    v84 = type metadata accessor for WorkoutMetricsFact(0);
    v78 = (*(*(v84 - 1) + 80) + 32) & ~*(*(v84 - 1) + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1B4D1A800;
    if (v7 == v8)
    {
      v35 = v0[14];
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
      if (v7 != v10)
      {
LABEL_30:
        sub_1B4974FBC(v0[21] + *(v0[19] + 68), v0[12], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
        goto LABEL_33;
      }
    }

    else
    {
      sub_1B4974FBC(v0[21] + *(v0[19] + 60), v0[14], &qword_1EB8A6CC0, &unk_1B4D1BC00);
      if (v7 != v10)
      {
        goto LABEL_30;
      }
    }

    v37 = v0[12];
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
LABEL_33:
    v39 = v0[21];
    v40 = v0[19];
    v41 = v0[8];
    v42 = objc_opt_self();
    v81 = v80;
    v43 = [v42 seconds];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    sub_1B4974FBC(v39 + *(v40 + 44), v41, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v44 = sub_1B4D1777C();
    v45 = (*(*(v44 - 8) + 48))(v41, 1, v44);
    sub_1B4975024(v41, &qword_1EB8A6790, &qword_1B4D1BBC0);
    if (v7 == v12)
    {
      v46 = v0[7];
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
      if (v7 != v14)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_1B4974FBC(v0[21] + *(v0[19] + 72), v0[7], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      if (v7 != v14)
      {
LABEL_35:
        sub_1B4974FBC(v0[21] + *(v0[19] + 104), v0[13], &qword_1EB8A6CC0, &unk_1B4D1BC00);
        if (!v82)
        {
LABEL_36:
          v48 = v0[6];
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
          (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
LABEL_40:
          v52 = (v87 + v78);
          if (v21)
          {
            v53 = v0[21];
            v54 = v0[19];
            v55 = v0[4];
            sub_1B4974FBC(v53 + *(v54 + 80), v0[5], &qword_1EB8A6CC8, &unk_1B4D464B0);
            sub_1B4974FBC(v53 + *(v54 + 92), v55, &qword_1EB8A6CC8, &unk_1B4D464B0);
          }

          else
          {
            v57 = v0[4];
            v56 = v0[5];
            v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
            (*(*(v58 - 8) + 56))(v56, 1, 1, v58);
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
            (*(*(v59 - 8) + 56))(v57, 1, 1, v59);
          }

          v60 = sub_1B4C927EC();
          v61 = v60;
          if (v60)
          {
            [v60 _value];
            v63 = v62;
          }

          else
          {
            v63 = 0;
          }

          v83 = v0[21];
          v79 = v61 == 0;
          v64 = v45 != 1;
          v66 = v0[13];
          v65 = v0[14];
          v68 = v0[11];
          v67 = v0[12];
          v69 = v0[9];
          v70 = v0[10];
          v71 = v0[7];
          v75 = v0[6];
          v76 = v0[5];
          v77 = v0[4];
          *v52 = v81;
          sub_1B498B270(v65, &v52[v84[5]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B498B270(v67, &v52[v84[6]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
          (*(v70 + 32))(&v52[v84[7]], v68, v69);
          v52[v84[8]] = v64;
          sub_1B498B270(v71, &v52[v84[9]], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          sub_1B498B270(v66, &v52[v84[10]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B498B270(v75, &v52[v84[11]], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
          sub_1B498B270(v76, &v52[v84[12]], &qword_1EB8A6CC8, &unk_1B4D464B0);
          sub_1B498B270(v77, &v52[v84[13]], &qword_1EB8A6CC8, &unk_1B4D464B0);
          v72 = &v52[v84[14]];
          *v72 = v63;
          v72[8] = v79;
          v52[v84[15]] = v85;

          sub_1B4B99808(v83, type metadata accessor for WorkoutState);
          goto LABEL_47;
        }

LABEL_39:
        sub_1B4974FBC(v0[21] + *(v0[19] + 100), v0[6], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
        goto LABEL_40;
      }
    }

    v50 = v0[13];
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
    if (!v82)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  sub_1B4975024(v0[18], &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v87 = MEMORY[0x1E69E7CC0];
LABEL_47:

  v73 = v0[1];

  return v73(v87);
}

unint64_t sub_1B4C99818()
{
  result = qword_1EB8ADB30;
  if (!qword_1EB8ADB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADB30);
  }

  return result;
}

unint64_t sub_1B4C9986C(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C9989C();
  result = sub_1B4C998F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C9989C()
{
  result = qword_1EB8ADB38;
  if (!qword_1EB8ADB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADB38);
  }

  return result;
}

unint64_t sub_1B4C998F0()
{
  result = qword_1EB8ADB40;
  if (!qword_1EB8ADB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADB40);
  }

  return result;
}

uint64_t sub_1B4C99944(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C999AC(&qword_1EB8ADB48, &protocol conformance descriptor for WorkoutMetricsFact);
  result = sub_1B4C999AC(&qword_1EB8ADB50, &protocol conformance descriptor for WorkoutMetricsFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4C999AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutMetricsFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C99A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static RingsPropertySerialization.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v212 = a1;
  v210 = a2;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v205 = (&v191 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v206 = &v191 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v203 = (&v191 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v204 = &v191 - v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v201 = (&v191 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v202 = &v191 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v199 = (&v191 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v200 = &v191 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v197 = (&v191 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v198 = &v191 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v195 = (&v191 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v196 = &v191 - v25;
  v26 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v207 = (&v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v208 = &v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v209 = &v191 - v31;
  v32 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v193 = (&v191 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v194 = &v191 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v191 - v37);
  MEMORY[0x1EEE9AC00](v39);
  v192 = &v191 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v191 - v42);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v191 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = (&v191 - v48);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v191 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v55 = &v191 - v54;
  sub_1B4974FBC(v212, &v191 - v54, &qword_1EB8A9A50, &qword_1B4D29F70);
  v56 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
  {
    sub_1B4C9BB70();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1B4CA3874(v55, v46, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        sub_1B4CA380C(v46, v43, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v129 = v211;
        StreakPropertyValue.init(_:)(v43, v215);
        result = sub_1B4CA38DC(v46, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        if (!v129)
        {
          v130 = v210;
          v210[3] = &type metadata for ExerciseStreakProperty;
          v130[4] = sub_1B4CA279C();
          result = swift_allocObject();
          *v130 = result;
          v131 = v215[7];
          *(result + 112) = v215[6];
          *(result + 128) = v131;
          *(result + 144) = v216;
          v132 = v215[3];
          *(result + 48) = v215[2];
          *(result + 64) = v132;
          v133 = v215[5];
          *(result + 80) = v215[4];
          *(result + 96) = v133;
          v64 = v215[0];
          v63 = v215[1];
          goto LABEL_23;
        }

        return result;
      case 2u:
        v102 = v192;
        sub_1B4CA3874(v55, v192, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        sub_1B4CA380C(v102, v38, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v103 = v211;
        StreakPropertyValue.init(_:)(v38, v217);
        result = sub_1B4CA38DC(v102, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        if (!v103)
        {
          v104 = v210;
          v210[3] = &type metadata for StandStreakProperty;
          v104[4] = sub_1B4CA2748();
          result = swift_allocObject();
          *v104 = result;
          v105 = v217[7];
          *(result + 112) = v217[6];
          *(result + 128) = v105;
          *(result + 144) = v218;
          v106 = v217[3];
          *(result + 48) = v217[2];
          *(result + 64) = v106;
          v107 = v217[5];
          *(result + 80) = v217[4];
          *(result + 96) = v107;
          v64 = v217[0];
          v63 = v217[1];
          goto LABEL_23;
        }

        return result;
      case 3u:
        v115 = v194;
        sub_1B4CA3874(v55, v194, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v116 = v193;
        sub_1B4CA380C(v115, v193, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v117 = v211;
        StreakPropertyValue.init(_:)(v116, v219);
        result = sub_1B4CA38DC(v115, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        if (!v117)
        {
          v118 = v210;
          v210[3] = &type metadata for AllThreeRingStreakProperty;
          v118[4] = sub_1B4CA26F4();
          result = swift_allocObject();
          *v118 = result;
          v119 = v219[7];
          *(result + 112) = v219[6];
          *(result + 128) = v119;
          *(result + 144) = v220;
          v120 = v219[3];
          *(result + 48) = v219[2];
          *(result + 64) = v120;
          v121 = v219[5];
          *(result + 80) = v219[4];
          *(result + 96) = v121;
          v64 = v219[0];
          v63 = v219[1];
          goto LABEL_23;
        }

        return result;
      case 4u:
        v65 = v209;
        sub_1B4CA3874(v55, v209, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v66 = v208;
        sub_1B4CA380C(v65, v208, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v212 = *(v66 + 8);
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v82 = [ObjCClassFromMetadata baseUnit];
        v83 = type metadata accessor for MoveRingStatisticsProperty(0);
        v84 = v210;
        v210[3] = v83;
        v84[4] = sub_1B4CA3240(&qword_1EDC38BB8, type metadata accessor for MoveRingStatisticsProperty, &protocol conformance descriptor for MoveRingStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
        sub_1B4D1741C();
        v85 = [ObjCClassFromMetadata baseUnit];
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
        sub_1B4D1741C();
        v86 = [ObjCClassFromMetadata baseUnit];
        sub_1B4D1741C();
        v87 = [ObjCClassFromMetadata baseUnit];
        sub_1B4D1741C();
        v76 = [ObjCClassFromMetadata baseUnit];
        goto LABEL_36;
      case 5u:
        v65 = v209;
        sub_1B4CA3874(v55, v209, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v66 = v208;
        sub_1B4CA380C(v65, v208, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v212 = *(v66 + 8);
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        v145 = swift_getObjCClassFromMetadata();
        v146 = [v145 baseUnit];
        v147 = type metadata accessor for MoveMinutesRingStatisticsProperty(0);
        v148 = v210;
        v210[3] = v147;
        v148[4] = sub_1B4CA3240(&qword_1EDC38170, type metadata accessor for MoveMinutesRingStatisticsProperty, &protocol conformance descriptor for MoveMinutesRingStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v148);
        sub_1B4D1741C();
        v149 = [v145 baseUnit];
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        sub_1B4D1741C();
        v150 = [v145 baseUnit];
        sub_1B4D1741C();
        v151 = [v145 baseUnit];
        sub_1B4D1741C();
        v76 = [v145 baseUnit];
        goto LABEL_36;
      case 6u:
        v65 = v209;
        sub_1B4CA3874(v55, v209, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v66 = v208;
        sub_1B4CA380C(v65, v208, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v212 = *(v66 + 8);
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        v155 = swift_getObjCClassFromMetadata();
        v156 = [v155 baseUnit];
        v157 = type metadata accessor for ExerciseRingStatisticsProperty(0);
        v158 = v210;
        v210[3] = v157;
        v158[4] = sub_1B4CA3240(&qword_1EDC38540, type metadata accessor for ExerciseRingStatisticsProperty, &protocol conformance descriptor for ExerciseRingStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v158);
        sub_1B4D1741C();
        v159 = [v155 baseUnit];
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        sub_1B4D1741C();
        v160 = [v155 baseUnit];
        sub_1B4D1741C();
        v161 = [v155 baseUnit];
        sub_1B4D1741C();
        v76 = [v155 baseUnit];
        goto LABEL_36;
      case 7u:
        v65 = v209;
        sub_1B4CA3874(v55, v209, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v66 = v208;
        sub_1B4CA380C(v65, v208, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v212 = *(v66 + 8);
        type metadata accessor for UnitCount();
        v122 = swift_getObjCClassFromMetadata();
        v123 = [v122 baseUnit];
        v124 = type metadata accessor for StandRingStatisticsProperty(0);
        v125 = v210;
        v210[3] = v124;
        v125[4] = sub_1B4CA3240(&qword_1EDC38998, type metadata accessor for StandRingStatisticsProperty, &protocol conformance descriptor for StandRingStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v125);
        sub_1B4D1741C();
        v126 = [v122 baseUnit];
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
        sub_1B4D1741C();
        v127 = [v122 baseUnit];
        sub_1B4D1741C();
        v128 = [v122 baseUnit];
        sub_1B4D1741C();
        v76 = [v122 baseUnit];
        goto LABEL_36;
      case 8u:
        v65 = v209;
        sub_1B4CA3874(v55, v209, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v66 = v208;
        sub_1B4CA380C(v65, v208, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v212 = *(v66 + 8);
        type metadata accessor for UnitCount();
        v176 = swift_getObjCClassFromMetadata();
        v177 = [v176 baseUnit];
        v178 = type metadata accessor for StepsStatisticsProperty(0);
        v179 = v210;
        v210[3] = v178;
        v179[4] = sub_1B4CA3240(&qword_1EDC39000, type metadata accessor for StepsStatisticsProperty, &protocol conformance descriptor for StepsStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v179);
        sub_1B4D1741C();
        v180 = [v176 baseUnit];
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
        sub_1B4D1741C();
        v181 = [v176 baseUnit];
        sub_1B4D1741C();
        v182 = [v176 baseUnit];
        sub_1B4D1741C();
        v76 = [v176 baseUnit];
        goto LABEL_36;
      case 9u:
        v65 = v209;
        sub_1B4CA3874(v55, v209, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v66 = v208;
        sub_1B4CA380C(v65, v208, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v212 = *(v66 + 8);
        type metadata accessor for UnitCount();
        v89 = swift_getObjCClassFromMetadata();
        v90 = [v89 baseUnit];
        v91 = type metadata accessor for FlightsStatisticsProperty(0);
        v92 = v210;
        v210[3] = v91;
        v92[4] = sub_1B4CA3240(&qword_1EDC38E58, type metadata accessor for FlightsStatisticsProperty, &protocol conformance descriptor for FlightsStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
        sub_1B4D1741C();
        v93 = [v89 baseUnit];
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
        sub_1B4D1741C();
        v94 = [v89 baseUnit];
        sub_1B4D1741C();
        v95 = [v89 baseUnit];
        sub_1B4D1741C();
        v76 = [v89 baseUnit];
        goto LABEL_36;
      case 0xAu:
        v65 = v209;
        sub_1B4CA3874(v55, v209, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v66 = v208;
        sub_1B4CA380C(v65, v208, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v212 = *(v66 + 8);
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v169 = swift_getObjCClassFromMetadata();
        v170 = [v169 baseUnit];
        v171 = type metadata accessor for DistanceStatisticsProperty(0);
        v172 = v210;
        v210[3] = v171;
        v172[4] = sub_1B4CA3240(&qword_1EDC38C88, type metadata accessor for DistanceStatisticsProperty, &protocol conformance descriptor for DistanceStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v172);
        sub_1B4D1741C();
        v173 = [v169 baseUnit];
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
        sub_1B4D1741C();
        v174 = [v169 baseUnit];
        sub_1B4D1741C();
        v175 = [v169 baseUnit];
        sub_1B4D1741C();
        v76 = [v169 baseUnit];
        goto LABEL_36;
      case 0xBu:
        v80 = v207;
        sub_1B4CA3874(v55, v207, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v78 = *v80;
        sub_1B4CA38DC(v80, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v79 = v210;
        v210[3] = &type metadata for MoveGoalAchievedCountProperty;
        result = sub_1B4C9E514();
        goto LABEL_31;
      case 0xCu:
        v88 = v207;
        sub_1B4CA3874(v55, v207, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v78 = *v88;
        sub_1B4CA38DC(v88, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v79 = v210;
        v210[3] = &type metadata for ExerciseGoalAchievedCountProperty;
        result = sub_1B4C9E4C0();
        goto LABEL_31;
      case 0xDu:
        v154 = v207;
        sub_1B4CA3874(v55, v207, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v78 = *v154;
        sub_1B4CA38DC(v154, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v79 = v210;
        v210[3] = &type metadata for StandGoalAchievedCountProperty;
        result = sub_1B4C9E46C();
        goto LABEL_31;
      case 0xEu:
        v77 = v207;
        sub_1B4CA3874(v55, v207, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v78 = *v77;
        sub_1B4CA38DC(v77, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v79 = v210;
        v210[3] = &type metadata for AllThreeRingsGoalAchievedCountProperty;
        result = sub_1B4C9E418();
        goto LABEL_31;
      case 0xFu:
        v65 = v209;
        sub_1B4CA3874(v55, v209, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v66 = v208;
        sub_1B4CA380C(v65, v208, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v212 = *(v66 + 8);
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        v108 = swift_getObjCClassFromMetadata();
        v109 = [v108 baseUnit];
        v110 = type metadata accessor for MoveGoalDeltaProperty(0);
        v111 = v210;
        v210[3] = v110;
        v111[4] = sub_1B4CA3240(&qword_1EDC39498, type metadata accessor for MoveGoalDeltaProperty, &protocol conformance descriptor for MoveGoalDeltaProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v111);
        sub_1B4D1741C();
        v112 = [v108 baseUnit];
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
        sub_1B4D1741C();
        v113 = [v108 baseUnit];
        sub_1B4D1741C();
        v114 = [v108 baseUnit];
        sub_1B4D1741C();
        v76 = [v108 baseUnit];
        goto LABEL_36;
      case 0x10u:
        v65 = v209;
        sub_1B4CA3874(v55, v209, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v66 = v208;
        sub_1B4CA380C(v65, v208, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v212 = *(v66 + 8);
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        v67 = swift_getObjCClassFromMetadata();
        v68 = [v67 baseUnit];
        v69 = type metadata accessor for MoveMinutesGoalDeltaProperty(0);
        v70 = v210;
        v210[3] = v69;
        v70[4] = sub_1B4CA3240(&qword_1EDC38808, type metadata accessor for MoveMinutesGoalDeltaProperty, &protocol conformance descriptor for MoveMinutesGoalDeltaProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
        sub_1B4D1741C();
        v72 = [v67 baseUnit];
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        sub_1B4D1741C();
        v74 = [v67 baseUnit];
        sub_1B4D1741C();
        v75 = [v67 baseUnit];
        sub_1B4D1741C();
        v76 = [v67 baseUnit];
        goto LABEL_36;
      case 0x11u:
        v65 = v209;
        sub_1B4CA3874(v55, v209, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v66 = v208;
        sub_1B4CA380C(v65, v208, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v212 = *(v66 + 8);
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        v134 = swift_getObjCClassFromMetadata();
        v135 = [v134 baseUnit];
        v136 = type metadata accessor for ExerciseGoalDeltaProperty(0);
        v137 = v210;
        v210[3] = v136;
        v137[4] = sub_1B4CA3240(&qword_1EDC38F28, type metadata accessor for ExerciseGoalDeltaProperty, &protocol conformance descriptor for ExerciseGoalDeltaProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v137);
        sub_1B4D1741C();
        v138 = [v134 baseUnit];
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        sub_1B4D1741C();
        v139 = [v134 baseUnit];
        sub_1B4D1741C();
        v140 = [v134 baseUnit];
        sub_1B4D1741C();
        v76 = [v134 baseUnit];
        goto LABEL_36;
      case 0x12u:
        v65 = v209;
        sub_1B4CA3874(v55, v209, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v66 = v208;
        sub_1B4CA380C(v65, v208, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v212 = *(v66 + 8);
        type metadata accessor for UnitCount();
        v162 = swift_getObjCClassFromMetadata();
        v163 = [v162 baseUnit];
        v164 = type metadata accessor for StandGoalDeltaProperty(0);
        v165 = v210;
        v210[3] = v164;
        v165[4] = sub_1B4CA3240(&qword_1EDC39200, type metadata accessor for StandGoalDeltaProperty, &protocol conformance descriptor for StandGoalDeltaProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v165);
        sub_1B4D1741C();
        v166 = [v162 baseUnit];
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
        sub_1B4D1741C();
        v167 = [v162 baseUnit];
        sub_1B4D1741C();
        v168 = [v162 baseUnit];
        sub_1B4D1741C();
        v76 = [v162 baseUnit];
LABEL_36:
        v183 = v76;
        sub_1B4D1741C();
        sub_1B4CA38DC(v66, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        result = sub_1B4CA38DC(v65, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        *(boxed_opaque_existential_1 + *(v73 + 28)) = v212;
        return result;
      case 0x13u:
        v97 = v196;
        sub_1B4CA3874(v55, v196, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v186 = v195;
        sub_1B4CA380C(v97, v195, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v187 = v211;
        RingsMilestonePropertyValue.init(_:)(v186, &v221);
        if (v187)
        {
          goto LABEL_40;
        }

        sub_1B4CA38DC(v97, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v143 = v221;
        v144 = v210;
        v210[3] = &type metadata for MoveGoalMilestoneProperty;
        result = sub_1B4C9E3C4();
        goto LABEL_45;
      case 0x14u:
        v97 = v198;
        sub_1B4CA3874(v55, v198, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v141 = v197;
        sub_1B4CA380C(v97, v197, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v142 = v211;
        RingsMilestonePropertyValue.init(_:)(v141, &v221);
        if (v142)
        {
          goto LABEL_40;
        }

        sub_1B4CA38DC(v97, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v143 = v221;
        v144 = v210;
        v210[3] = &type metadata for ExerciseGoalMilestoneProperty;
        result = sub_1B4C9E370();
        goto LABEL_45;
      case 0x15u:
        v97 = v200;
        sub_1B4CA3874(v55, v200, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v152 = v199;
        sub_1B4CA380C(v97, v199, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v153 = v211;
        RingsMilestonePropertyValue.init(_:)(v152, &v221);
        if (v153)
        {
          goto LABEL_40;
        }

        sub_1B4CA38DC(v97, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v143 = v221;
        v144 = v210;
        v210[3] = &type metadata for StandGoalMilestoneProperty;
        result = sub_1B4C9E31C();
        goto LABEL_45;
      case 0x16u:
        v97 = v202;
        sub_1B4CA3874(v55, v202, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v184 = v201;
        sub_1B4CA380C(v97, v201, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v185 = v211;
        RingsMilestonePropertyValue.init(_:)(v184, &v221);
        if (v185)
        {
LABEL_40:
          v188 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue;
          goto LABEL_43;
        }

        sub_1B4CA38DC(v97, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v143 = v221;
        v144 = v210;
        v210[3] = &type metadata for AllThreeRingsGoalMilestoneProperty;
        result = sub_1B4C9E2C8();
LABEL_45:
        v144[4] = result;
        *v144 = v143;
        *(v144 + 1) = v222;
        break;
      case 0x17u:
        v97 = v204;
        sub_1B4CA3874(v55, v204, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        v189 = v203;
        sub_1B4CA380C(v97, v203, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        v190 = v211;
        sub_1B4C9CBD8(v189, &v221);
        if (v190)
        {
          goto LABEL_42;
        }

        sub_1B4CA38DC(v97, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        v100 = v221;
        v101 = v210;
        v210[3] = &type metadata for HighestDailyStepCountProperty;
        result = sub_1B4C9E274();
        goto LABEL_47;
      case 0x18u:
        v97 = v206;
        sub_1B4CA3874(v55, v206, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        v98 = v205;
        sub_1B4CA380C(v97, v205, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        v99 = v211;
        sub_1B4C9D6F4(v98, &v221);
        if (v99)
        {
LABEL_42:
          v188 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue;
LABEL_43:
          result = sub_1B4CA38DC(v97, v188);
        }

        else
        {
          sub_1B4CA38DC(v97, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
          v100 = v221;
          v101 = v210;
          v210[3] = &type metadata for HighestDailyDistanceProperty;
          result = sub_1B4C9E220();
LABEL_47:
          v101[4] = result;
          *v101 = v100;
        }

        break;
      case 0x19u:
        v96 = v207;
        sub_1B4CA3874(v55, v207, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v78 = *v96;
        sub_1B4CA38DC(v96, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v79 = v210;
        v210[3] = &type metadata for RingsTotalCountProperty;
        result = sub_1B4C9BBC4();
LABEL_31:
        v79[4] = result;
        *v79 = v78;
        return result;
      default:
        sub_1B4CA3874(v55, v52, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        sub_1B4CA380C(v52, v49, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v58 = v211;
        StreakPropertyValue.init(_:)(v49, v213);
        result = sub_1B4CA38DC(v52, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        if (!v58)
        {
          v59 = v210;
          v210[3] = &type metadata for MoveStreakProperty;
          v59[4] = sub_1B4CA27F0();
          result = swift_allocObject();
          *v59 = result;
          v60 = v213[7];
          *(result + 112) = v213[6];
          *(result + 128) = v60;
          *(result + 144) = v214;
          v61 = v213[3];
          *(result + 48) = v213[2];
          *(result + 64) = v61;
          v62 = v213[5];
          *(result + 80) = v213[4];
          *(result + 96) = v62;
          v64 = v213[0];
          v63 = v213[1];
LABEL_23:
          *(result + 16) = v64;
          *(result + 32) = v63;
        }

        return result;
    }
  }

  return result;
}

unint64_t sub_1B4C9BB70()
{
  result = qword_1EB8ADCD8;
  if (!qword_1EB8ADCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADCD8);
  }

  return result;
}

unint64_t sub_1B4C9BBC4()
{
  result = qword_1EDC390D0;
  if (!qword_1EDC390D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390D0);
  }

  return result;
}

uint64_t RingsProperty.protobuf()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C9BD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C9BEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C9C078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C9C27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C9C404(double *a1, double *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = *a2;
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C8, &unk_1B4D1D780) + 28);
  sub_1B4CA3240(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17DAC();
  v17 = v2;
  v12 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v12, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4CA3874(v11, a1 + v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v9 + 56))(a1 + v12, 0, 1, v8);
  type metadata accessor for UnitCount();
  v13 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v15 = v14;
  result = (*(v18 + 8))(v7, v5);
  *(a1 + 1) = v15;
  return result;
}

uint64_t sub_1B4C9C6B8(double *a1, double *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = *a2;
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C0, &unk_1B4D1D770) + 28);
  sub_1B4CA3240(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17DAC();
  v17 = v2;
  v12 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v12, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4CA3874(v11, a1 + v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v9 + 56))(a1 + v12, 0, 1, v8);
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v13 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v15 = v14;
  result = (*(v18 + 8))(v7, v5);
  *(a1 + 1) = v15;
  return result;
}

void sub_1B4C9CB04(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1B4D1742C();
  *a1 = v10;
  a1[1] = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) + 28));
  sub_1B4D1742C();
  a1[3] = v11;
  sub_1B4D1742C();
  a1[4] = v12;
  sub_1B4D1742C();
  a1[2] = v13;
  sub_1B4D1742C();
  a1[5] = v14;
}

uint64_t sub_1B4C9CBD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v74 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v72 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v72 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v93 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for LocalizedDate(0);
  MEMORY[0x1EEE9AC00](v87);
  v97 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B98, &unk_1B4D2B438);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v91 = &v72 - v20;
  v90 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v92 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v96 = (&v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v95 = &v72 - v25;
  v26 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C8, &unk_1B4D1D780);
  v84 = *(v30 - 8);
  v85 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v94 = (&v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v83 = &v72 - v33;
  v34 = *a1;
  v35 = *(*a1 + 16);
  if (v35)
  {
    v72 = v2;
    v73 = a1;
    v100 = MEMORY[0x1E69E7CC0];
    v88 = v35;
    v89 = v34;
    result = sub_1B4BCEEBC(0, v35, 0);
    v37 = 0;
    v38 = v89;
    v80 = v89 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v39 = v100;
    v81 = (v92 + 56);
    v76 = (v93 + 48);
    v92 = v9;
    v93 = v10;
    v79 = v18;
    v82 = v29;
    v78 = v27;
    v77 = v6;
    while (v37 < *(v38 + 16))
    {
      sub_1B4CA380C(v80 + *(v27 + 72) * v37, v29, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      v40 = v91;
      sub_1B4974FBC(v29, v91, &qword_1EB8A7E30, &unk_1B4D29F60);
      v41 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {
        v98 = 0u;
        v99 = 0u;
        v42 = v90;
      }

      else
      {
        v43 = v40;
        v44 = v75;
        sub_1B4CA3874(v43, v75, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
        v42 = v90;
        *(&v99 + 1) = v90;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v9 = v92;
        sub_1B4CA3874(v44, boxed_opaque_existential_1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
      v46 = swift_dynamicCast();
      v47 = *v81;
      if (!v46)
      {
        v47(v18, 1, 1, v42);
        sub_1B4975024(v18, &qword_1EB8A9B98, &unk_1B4D2B438);
        sub_1B4C4B318();
        swift_allocError();
        *v71 = 1;
        swift_willThrow();
        sub_1B4CA38DC(v82, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
        sub_1B4CA38DC(v73, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      }

      v47(v18, 0, 1, v42);
      v48 = v18;
      v49 = v95;
      sub_1B4CA3874(v48, v95, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      v50 = v49;
      v51 = v96;
      sub_1B4CA380C(v50, v96, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      *v94 = *v51;
      sub_1B4974FBC(v51 + *(v42 + 28), v9, &qword_1EB8A7158, &unk_1B4D20310);
      v52 = *v76;
      if ((*v76)(v9, 1, v10) == 1)
      {
        *v12 = 0;
        *(v12 + 1) = 0;
        *(v12 + 4) = 0;
        sub_1B4D17BBC();
        v53 = &v12[*(v10 + 40)];
        *v53 = 0;
        *(v53 + 1) = 0;
        v54 = v52(v9, 1, v10);
        v55 = v77;
        v29 = v82;
        if (v54 != 1)
        {
          sub_1B4975024(v9, &qword_1EB8A7158, &unk_1B4D20310);
        }
      }

      else
      {
        sub_1B4CA3874(v9, v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v55 = v77;
        v29 = v82;
      }

      v56 = *(v12 + 1);
      *&v57 = *v12;
      *(&v57 + 1) = HIDWORD(*v12);
      v58 = v57;
      *&v57 = v56;
      *(&v57 + 1) = SHIDWORD(v56);
      v59 = v97;
      *v97 = v58;
      v59[1] = v57;
      *(v59 + 4) = *(v12 + 4);
      if (*&v12[*(v93 + 40) + 8])
      {

        sub_1B4D1797C();

        sub_1B4CA38DC(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      }

      else
      {
        sub_1B4CA38DC(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v60 = sub_1B4D179BC();
        (*(*(v60 - 8) + 56))(v55, 1, 1, v60);
      }

      v61 = v97;
      sub_1B498B270(v55, v97 + *(v87 + 36), &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v62 = v61;
      v63 = v86;
      sub_1B4CA3874(v62, v86, type metadata accessor for LocalizedDate);
      v64 = v94;
      sub_1B4CA3874(v63, v94 + *(v85 + 28), type metadata accessor for LocalizedDate);
      v65 = v96;
      type metadata accessor for UnitCount();
      v66 = [swift_getObjCClassFromMetadata() baseUnit];
      sub_1B4D1741C();
      sub_1B4CA38DC(v65, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4CA38DC(v95, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4CA38DC(v29, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      v67 = v64;
      v68 = v83;
      sub_1B498B270(v67, v83, &qword_1EB8A72C8, &unk_1B4D1D780);
      v100 = v39;
      v70 = *(v39 + 16);
      v69 = *(v39 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1B4BCEEBC((v69 > 1), v70 + 1, 1);
        v39 = v100;
      }

      ++v37;
      *(v39 + 16) = v70 + 1;
      result = sub_1B498B270(v68, v39 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v70, &qword_1EB8A72C8, &unk_1B4D1D780);
      v38 = v89;
      v9 = v92;
      v10 = v93;
      v18 = v79;
      v27 = v78;
      if (v88 == v37)
      {
        result = sub_1B4CA38DC(v73, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        *v74 = v39;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4CA38DC(a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    *v74 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B4C9D6F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v74 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v72 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v72 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v93 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for LocalizedDate(0);
  MEMORY[0x1EEE9AC00](v87);
  v97 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B98, &unk_1B4D2B438);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v91 = &v72 - v20;
  v90 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v92 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v96 = (&v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v95 = &v72 - v25;
  v26 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C0, &unk_1B4D1D770);
  v84 = *(v30 - 8);
  v85 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v94 = (&v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v83 = &v72 - v33;
  v34 = *a1;
  v35 = *(*a1 + 16);
  if (v35)
  {
    v72 = v2;
    v73 = a1;
    v100 = MEMORY[0x1E69E7CC0];
    v88 = v35;
    v89 = v34;
    result = sub_1B4BCEE9C(0, v35, 0);
    v37 = 0;
    v38 = v89;
    v80 = v89 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v39 = v100;
    v81 = (v92 + 56);
    v76 = (v93 + 48);
    v92 = v9;
    v93 = v10;
    v79 = v18;
    v82 = v29;
    v78 = v27;
    v77 = v6;
    while (v37 < *(v38 + 16))
    {
      sub_1B4CA380C(v80 + *(v27 + 72) * v37, v29, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      v40 = v91;
      sub_1B4974FBC(v29, v91, &qword_1EB8A7E30, &unk_1B4D29F60);
      v41 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {
        v98 = 0u;
        v99 = 0u;
        v42 = v90;
      }

      else
      {
        v43 = v40;
        v44 = v75;
        sub_1B4CA3874(v43, v75, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
        v42 = v90;
        *(&v99 + 1) = v90;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v9 = v92;
        sub_1B4CA3874(v44, boxed_opaque_existential_1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
      v46 = swift_dynamicCast();
      v47 = *v81;
      if (!v46)
      {
        v47(v18, 1, 1, v42);
        sub_1B4975024(v18, &qword_1EB8A9B98, &unk_1B4D2B438);
        sub_1B4C4B318();
        swift_allocError();
        *v71 = 1;
        swift_willThrow();
        sub_1B4CA38DC(v82, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
        sub_1B4CA38DC(v73, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      }

      v47(v18, 0, 1, v42);
      v48 = v18;
      v49 = v95;
      sub_1B4CA3874(v48, v95, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      v50 = v49;
      v51 = v96;
      sub_1B4CA380C(v50, v96, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      *v94 = *v51;
      sub_1B4974FBC(v51 + *(v42 + 28), v9, &qword_1EB8A7158, &unk_1B4D20310);
      v52 = *v76;
      if ((*v76)(v9, 1, v10) == 1)
      {
        *v12 = 0;
        *(v12 + 1) = 0;
        *(v12 + 4) = 0;
        sub_1B4D17BBC();
        v53 = &v12[*(v10 + 40)];
        *v53 = 0;
        *(v53 + 1) = 0;
        v54 = v52(v9, 1, v10);
        v55 = v77;
        v29 = v82;
        if (v54 != 1)
        {
          sub_1B4975024(v9, &qword_1EB8A7158, &unk_1B4D20310);
        }
      }

      else
      {
        sub_1B4CA3874(v9, v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v55 = v77;
        v29 = v82;
      }

      v56 = *(v12 + 1);
      *&v57 = *v12;
      *(&v57 + 1) = HIDWORD(*v12);
      v58 = v57;
      *&v57 = v56;
      *(&v57 + 1) = SHIDWORD(v56);
      v59 = v97;
      *v97 = v58;
      v59[1] = v57;
      *(v59 + 4) = *(v12 + 4);
      if (*&v12[*(v93 + 40) + 8])
      {

        sub_1B4D1797C();

        sub_1B4CA38DC(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      }

      else
      {
        sub_1B4CA38DC(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v60 = sub_1B4D179BC();
        (*(*(v60 - 8) + 56))(v55, 1, 1, v60);
      }

      v61 = v97;
      sub_1B498B270(v55, v97 + *(v87 + 36), &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v62 = v61;
      v63 = v86;
      sub_1B4CA3874(v62, v86, type metadata accessor for LocalizedDate);
      v64 = v94;
      sub_1B4CA3874(v63, v94 + *(v85 + 28), type metadata accessor for LocalizedDate);
      v65 = v96;
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      v66 = [swift_getObjCClassFromMetadata() baseUnit];
      sub_1B4D1741C();
      sub_1B4CA38DC(v65, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4CA38DC(v95, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4CA38DC(v29, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      v67 = v64;
      v68 = v83;
      sub_1B498B270(v67, v83, &qword_1EB8A72C0, &unk_1B4D1D770);
      v100 = v39;
      v70 = *(v39 + 16);
      v69 = *(v39 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1B4BCEE9C((v69 > 1), v70 + 1, 1);
        v39 = v100;
      }

      ++v37;
      *(v39 + 16) = v70 + 1;
      result = sub_1B498B270(v68, v39 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v70, &qword_1EB8A72C0, &unk_1B4D1D770);
      v38 = v89;
      v9 = v92;
      v10 = v93;
      v18 = v79;
      v27 = v78;
      if (v88 == v37)
      {
        result = sub_1B4CA38DC(v73, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        *v74 = v39;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4CA38DC(a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    *v74 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1B4C9E220()
{
  result = qword_1EDC38828;
  if (!qword_1EDC38828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38828);
  }

  return result;
}

unint64_t sub_1B4C9E274()
{
  result = qword_1EDC38610;
  if (!qword_1EDC38610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38610);
  }

  return result;
}

unint64_t sub_1B4C9E2C8()
{
  result = qword_1EDC37EA8;
  if (!qword_1EDC37EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37EA8);
  }

  return result;
}

unint64_t sub_1B4C9E31C()
{
  result = qword_1EDC38B08;
  if (!qword_1EDC38B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38B08);
  }

  return result;
}

unint64_t sub_1B4C9E370()
{
  result = qword_1EDC38638;
  if (!qword_1EDC38638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38638);
  }

  return result;
}

unint64_t sub_1B4C9E3C4()
{
  result = qword_1EDC38D88;
  if (!qword_1EDC38D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38D88);
  }

  return result;
}

unint64_t sub_1B4C9E418()
{
  result = qword_1EDC37A78;
  if (!qword_1EDC37A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A78);
  }

  return result;
}

unint64_t sub_1B4C9E46C()
{
  result = qword_1EDC383A8;
  if (!qword_1EDC383A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383A8);
  }

  return result;
}

unint64_t sub_1B4C9E4C0()
{
  result = qword_1EDC38190;
  if (!qword_1EDC38190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38190);
  }

  return result;
}

unint64_t sub_1B4C9E514()
{
  result = qword_1EDC385F0;
  if (!qword_1EDC385F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC385F0);
  }

  return result;
}

uint64_t sub_1B4C9E568(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v32 = a5;
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
  v30 = *(v15 - 8);
  v31 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  if (v18)
  {
    v27 = a1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF6DC(0, v18, 0);
    v35 = v36;
    v19 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v28 = *(v12 + 72);
    v29 = v14;
    while (1)
    {
      v34 = v18;
      v20 = sub_1B4974FBC(v19, v14, a3, a4);
      MEMORY[0x1EEE9AC00](v20);
      *(&v26 - 2) = v14;
      sub_1B4CA3240(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      sub_1B4D17DAC();
      if (v8)
      {
        break;
      }

      v33 = 0;
      sub_1B4975024(v14, a3, a4);
      v21 = v35;
      v36 = v35;
      v23 = *(v35 + 16);
      v22 = *(v35 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B4BCF6DC((v22 > 1), v23 + 1, 1);
        v21 = v36;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v35 = v21;
      sub_1B4CA3874(v17, v21 + v24 + *(v30 + 72) * v23, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      v19 += v28;
      v18 = v34 - 1;
      v14 = v29;
      v8 = v33;
      if (v34 == 1)
      {
        a1 = v27;
        goto LABEL_10;
      }
    }

    sub_1B4975024(v14, a3, a4);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_10:

    *a1 = v35;
  }

  return result;
}

uint64_t sub_1B4C9E894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  v15 = a2;
  sub_1B4CA3240(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  result = sub_1B4D17DAC();
  if (!v3)
  {
    sub_1B4CA3874(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    sub_1B4975024(a1, &qword_1EB8A7E30, &unk_1B4D29F60);
    sub_1B4CA3874(v8, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  return result;
}

uint64_t sub_1B4C9EA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for MoveRingStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B4CA380C(a2, v9, type metadata accessor for MoveRingStatisticsProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6D68, &qword_1B4D208D0);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v9, type metadata accessor for MoveRingStatisticsProperty);
  sub_1B4975024(v6, &qword_1EB8A6D68, &qword_1B4D208D0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B4CA2F78(v12, a1);
}

uint64_t sub_1B4C9ECA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for MoveMinutesRingStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B4CA380C(a2, v9, type metadata accessor for MoveMinutesRingStatisticsProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6858, &qword_1B4D1AB70);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v9, type metadata accessor for MoveMinutesRingStatisticsProperty);
  sub_1B4975024(v6, &qword_1EB8A6858, &qword_1B4D1AB70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B4CA2F78(v12, a1);
}

uint64_t sub_1B4C9EF04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for ExerciseRingStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B4CA380C(a2, v9, type metadata accessor for ExerciseRingStatisticsProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6858, &qword_1B4D1AB70);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v9, type metadata accessor for ExerciseRingStatisticsProperty);
  sub_1B4975024(v6, &qword_1EB8A6858, &qword_1B4D1AB70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B4CA2F78(v12, a1);
}

uint64_t sub_1B4C9F168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for StandRingStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B4CA380C(a2, v9, type metadata accessor for StandRingStatisticsProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6928, &qword_1B4D20480);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v9, type metadata accessor for StandRingStatisticsProperty);
  sub_1B4975024(v6, &qword_1EB8A6928, &qword_1B4D20480);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B4CA2F78(v12, a1);
}

uint64_t sub_1B4C9F3CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for StepsStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B4CA380C(a2, v9, type metadata accessor for StepsStatisticsProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6928, &qword_1B4D20480);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v9, type metadata accessor for StepsStatisticsProperty);
  sub_1B4975024(v6, &qword_1EB8A6928, &qword_1B4D20480);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B4CA2F78(v12, a1);
}

uint64_t sub_1B4C9F630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for FlightsStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B4CA380C(a2, v9, type metadata accessor for FlightsStatisticsProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6928, &qword_1B4D20480);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v9, type metadata accessor for FlightsStatisticsProperty);
  sub_1B4975024(v6, &qword_1EB8A6928, &qword_1B4D20480);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B4CA2F78(v12, a1);
}

uint64_t sub_1B4C9F894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for DistanceStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B4CA380C(a2, v9, type metadata accessor for DistanceStatisticsProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6840, &unk_1B4D20FA0);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v9, type metadata accessor for DistanceStatisticsProperty);
  sub_1B4975024(v6, &qword_1EB8A6840, &unk_1B4D20FA0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B4CA2F78(v12, a1);
}

uint64_t sub_1B4C9FAF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for MoveGoalDeltaProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B4CA380C(a2, v9, type metadata accessor for MoveGoalDeltaProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6D68, &qword_1B4D208D0);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v9, type metadata accessor for MoveGoalDeltaProperty);
  sub_1B4975024(v6, &qword_1EB8A6D68, &qword_1B4D208D0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B4CA2F78(v12, a1);
}

uint64_t sub_1B4C9FD5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for MoveMinutesGoalDeltaProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B4CA380C(a2, v9, type metadata accessor for MoveMinutesGoalDeltaProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6858, &qword_1B4D1AB70);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v9, type metadata accessor for MoveMinutesGoalDeltaProperty);
  sub_1B4975024(v6, &qword_1EB8A6858, &qword_1B4D1AB70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B4CA2F78(v12, a1);
}

uint64_t sub_1B4C9FFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for ExerciseGoalDeltaProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B4CA380C(a2, v9, type metadata accessor for ExerciseGoalDeltaProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6858, &qword_1B4D1AB70);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v9, type metadata accessor for ExerciseGoalDeltaProperty);
  sub_1B4975024(v6, &qword_1EB8A6858, &qword_1B4D1AB70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B4CA2F78(v12, a1);
}

uint64_t sub_1B4CA0224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for StandGoalDeltaProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B4CA380C(a2, v9, type metadata accessor for StandGoalDeltaProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6928, &qword_1B4D20480);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v9, type metadata accessor for StandGoalDeltaProperty);
  sub_1B4975024(v6, &qword_1EB8A6928, &qword_1B4D20480);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B4CA2F78(v12, a1);
}

uint64_t sub_1B4CA0488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v216 = a4;
  v214 = a1;
  v179 = type metadata accessor for StandGoalDeltaProperty(0);
  MEMORY[0x1EEE9AC00](v179);
  v180 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for ExerciseGoalDeltaProperty(0);
  MEMORY[0x1EEE9AC00](v182);
  v183 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for MoveMinutesGoalDeltaProperty(0);
  MEMORY[0x1EEE9AC00](v185);
  v186 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for MoveGoalDeltaProperty(0);
  MEMORY[0x1EEE9AC00](v188);
  v189 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for DistanceStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v196);
  v197 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for FlightsStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v199);
  v200 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for StepsStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v202);
  v203 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for StandRingStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v205);
  v206 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for ExerciseRingStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v208);
  v209 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for MoveMinutesRingStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v210);
  v211 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for MoveRingStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v212);
  v213 = &v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v172 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v171 = &v169 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v170 = &v169 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v173 = &v169 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v174 = &v169 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v175 = &v169 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v176 = &v169 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v177 = &v169 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v178 = &v169 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v181 = &v169 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v184 = &v169 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v187 = &v169 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v191 = &v169 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v192 = &v169 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v193 = &v169 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v194 = &v169 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v195 = &v169 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v198 = &v169 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v201 = &v169 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v204 = &v169 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v207 = &v169 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v169 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v169 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v169 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v169 - v69;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v169 - v72;
  v75 = MEMORY[0x1EEE9AC00](v74);
  v77 = &v169 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = v78;
  (*(v78 + 16))(v77, a2, a3, v75);
  if (!swift_dynamicCast())
  {
    v190 = a2;
    v82 = a3;
    if (swift_dynamicCast())
    {
      v223 = v232;
      v224 = v233;
      v225 = v234;
      v219 = v228;
      v220 = v229;
      v221 = v230;
      v222 = v231;
      v217 = v226;
      v218 = v227;
      sub_1B4C056C4(&v217);
      v83 = sub_1B4CA279C();
      v84 = v235;
      sub_1B4CA2150(a3, &type metadata for ExerciseStreakProperty, v83, v70);
      if (v84)
      {
        return (*(v215 + 8))(v77, v82);
      }

      v85 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v85 - 8) + 56))(v70, 0, 1, v85);
      v86 = v70;
LABEL_15:
      sub_1B4CA2F78(v86, v214);
      return (*(v215 + 8))(v77, v82);
    }

    if (swift_dynamicCast())
    {
      v223 = v232;
      v224 = v233;
      v225 = v234;
      v219 = v228;
      v220 = v229;
      v221 = v230;
      v222 = v231;
      v217 = v226;
      v218 = v227;
      sub_1B4CA3670(&v217);
      v87 = sub_1B4CA2748();
      v88 = v235;
      sub_1B4CA2150(a3, &type metadata for StandStreakProperty, v87, v67);
      if (v88)
      {
        return (*(v215 + 8))(v77, v82);
      }

      v89 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
      goto LABEL_11;
    }

    if (swift_dynamicCast())
    {
      v223 = v232;
      v224 = v233;
      v225 = v234;
      v219 = v228;
      v220 = v229;
      v221 = v230;
      v222 = v231;
      v217 = v226;
      v218 = v227;
      sub_1B4C05280(&v217);
      v90 = sub_1B4CA26F4();
      v91 = v235;
      sub_1B4CA2150(a3, &type metadata for AllThreeRingStreakProperty, v90, v64);
      if (v91)
      {
        return (*(v215 + 8))(v77, v82);
      }

      v92 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v92 - 8) + 56))(v64, 0, 1, v92);
      v86 = v64;
      goto LABEL_15;
    }

    v94 = v212;
    v93 = v213;
    if (swift_dynamicCast())
    {
      v95 = sub_1B4CA3240(&qword_1EDC38BB8, type metadata accessor for MoveRingStatisticsProperty, &protocol conformance descriptor for MoveRingStatisticsProperty);
      v96 = v235;
      sub_1B4CA2150(v82, v94, v95, v61);
      if (!v96)
      {
        v97 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v97 - 8) + 56))(v61, 0, 1, v97);
        sub_1B4CA2F78(v61, v214);
      }

      v98 = type metadata accessor for MoveRingStatisticsProperty;
LABEL_44:
      sub_1B4CA38DC(v93, v98);
      return (*(v215 + 8))(v77, v82);
    }

    v99 = v210;
    v93 = v211;
    if (swift_dynamicCast())
    {
      v100 = sub_1B4CA3240(&qword_1EDC38170, type metadata accessor for MoveMinutesRingStatisticsProperty, &protocol conformance descriptor for MoveMinutesRingStatisticsProperty);
      v101 = v207;
      v102 = v235;
      sub_1B4CA2150(v82, v99, v100, v207);
      if (!v102)
      {
        v111 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v111 - 8) + 56))(v101, 0, 1, v111);
        sub_1B4CA2F78(v101, v214);
      }

      v98 = type metadata accessor for MoveMinutesRingStatisticsProperty;
      goto LABEL_44;
    }

    v103 = v208;
    v93 = v209;
    v104 = swift_dynamicCast();
    v105 = v235;
    if (v104)
    {
      v106 = sub_1B4CA3240(&qword_1EDC38540, type metadata accessor for ExerciseRingStatisticsProperty, &protocol conformance descriptor for ExerciseRingStatisticsProperty);
      v107 = v204;
      sub_1B4CA2150(v82, v103, v106, v204);
      if (!v105)
      {
        v116 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v116 - 8) + 56))(v107, 0, 1, v116);
        sub_1B4CA2F78(v107, v214);
      }

      v98 = type metadata accessor for ExerciseRingStatisticsProperty;
      goto LABEL_44;
    }

    v108 = v205;
    v93 = v206;
    if (swift_dynamicCast())
    {
      v109 = sub_1B4CA3240(&qword_1EDC38998, type metadata accessor for StandRingStatisticsProperty, &protocol conformance descriptor for StandRingStatisticsProperty);
      v110 = v201;
      sub_1B4CA2150(v82, v108, v109, v201);
      if (!v105)
      {
        v121 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v121 - 8) + 56))(v110, 0, 1, v121);
        sub_1B4CA2F78(v110, v214);
      }

      v98 = type metadata accessor for StandRingStatisticsProperty;
      goto LABEL_44;
    }

    v112 = v202;
    v93 = v203;
    if (swift_dynamicCast())
    {
      v113 = sub_1B4CA3240(&qword_1EDC39000, type metadata accessor for StepsStatisticsProperty, &protocol conformance descriptor for StepsStatisticsProperty);
      v114 = v198;
      sub_1B4CA2150(v82, v112, v113, v198);
      if (!v105)
      {
        v115 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
        sub_1B4CA2F78(v114, v214);
      }

      v98 = type metadata accessor for StepsStatisticsProperty;
      goto LABEL_44;
    }

    v117 = v199;
    v93 = v200;
    if (swift_dynamicCast())
    {
      v118 = sub_1B4CA3240(&qword_1EDC38E58, type metadata accessor for FlightsStatisticsProperty, &protocol conformance descriptor for FlightsStatisticsProperty);
      v119 = v195;
      sub_1B4CA2150(v82, v117, v118, v195);
      if (!v105)
      {
        v120 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
        sub_1B4CA2F78(v119, v214);
      }

      v98 = type metadata accessor for FlightsStatisticsProperty;
      goto LABEL_44;
    }

    v122 = v196;
    v93 = v197;
    if (swift_dynamicCast())
    {
      v123 = sub_1B4CA3240(&qword_1EDC38C88, type metadata accessor for DistanceStatisticsProperty, &protocol conformance descriptor for DistanceStatisticsProperty);
      v124 = v194;
      sub_1B4CA2150(v82, v122, v123, v194);
      if (!v105)
      {
        v125 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
        sub_1B4CA2F78(v124, v214);
      }

      v98 = type metadata accessor for DistanceStatisticsProperty;
      goto LABEL_44;
    }

    if (swift_dynamicCast())
    {
      v127 = sub_1B4C9E514();
      v128 = v193;
      sub_1B4CA2150(v82, &type metadata for MoveGoalAchievedCountProperty, v127, v193);
      if (v105)
      {
        return (*(v215 + 8))(v77, v82);
      }

      goto LABEL_51;
    }

    if (swift_dynamicCast())
    {
      v129 = sub_1B4C9E4C0();
      v128 = v192;
      sub_1B4CA2150(v82, &type metadata for ExerciseGoalAchievedCountProperty, v129, v192);
      if (v105)
      {
        return (*(v215 + 8))(v77, v82);
      }

LABEL_51:
      v130 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v130 - 8) + 56))(v128, 0, 1, v130);
      v86 = v128;
      goto LABEL_15;
    }

    if (swift_dynamicCast())
    {
      v131 = sub_1B4C9E46C();
      sub_1B4CA2150(v82, &type metadata for StandGoalAchievedCountProperty, v131, v191);
      if (v105)
      {
        return (*(v215 + 8))(v77, v82);
      }

      v89 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
      v67 = v191;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      (*(*(v89 - 8) + 56))(v67, 0, 1, v89);
      v86 = v67;
      goto LABEL_15;
    }

    if (swift_dynamicCast())
    {
      v132 = sub_1B4C9E418();
      v133 = v82;
      v134 = v235;
      sub_1B4CA2150(v82, &type metadata for AllThreeRingsGoalAchievedCountProperty, v132, v187);
      if (!v134)
      {
        v135 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        v136 = v187;
LABEL_58:
        swift_storeEnumTagMultiPayload();
        (*(*(v135 - 8) + 56))(v136, 0, 1, v135);
        sub_1B4CA2F78(v136, v214);
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    v133 = v82;
    if (swift_dynamicCast())
    {
      v137 = sub_1B4CA3240(&qword_1EDC39498, type metadata accessor for MoveGoalDeltaProperty, &protocol conformance descriptor for MoveGoalDeltaProperty);
      v138 = v235;
      sub_1B4CA2150(v82, v188, v137, v184);
      if (!v138)
      {
        v139 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        v140 = v184;
        swift_storeEnumTagMultiPayload();
        (*(*(v139 - 8) + 56))(v140, 0, 1, v139);
        sub_1B4CA2F78(v140, v214);
      }

      v141 = type metadata accessor for MoveGoalDeltaProperty;
      v142 = v189;
    }

    else if (swift_dynamicCast())
    {
      v143 = sub_1B4CA3240(&qword_1EDC38808, type metadata accessor for MoveMinutesGoalDeltaProperty, &protocol conformance descriptor for MoveMinutesGoalDeltaProperty);
      v144 = v235;
      sub_1B4CA2150(v82, v185, v143, v181);
      if (!v144)
      {
        v145 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        v146 = v181;
        swift_storeEnumTagMultiPayload();
        (*(*(v145 - 8) + 56))(v146, 0, 1, v145);
        sub_1B4CA2F78(v146, v214);
      }

      v141 = type metadata accessor for MoveMinutesGoalDeltaProperty;
      v142 = v186;
    }

    else if (swift_dynamicCast())
    {
      v147 = sub_1B4CA3240(&qword_1EDC38F28, type metadata accessor for ExerciseGoalDeltaProperty, &protocol conformance descriptor for ExerciseGoalDeltaProperty);
      v148 = v235;
      sub_1B4CA2150(v82, v182, v147, v178);
      if (!v148)
      {
        v149 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        v150 = v178;
        swift_storeEnumTagMultiPayload();
        (*(*(v149 - 8) + 56))(v150, 0, 1, v149);
        sub_1B4CA2F78(v150, v214);
      }

      v141 = type metadata accessor for ExerciseGoalDeltaProperty;
      v142 = v183;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {

          v155 = sub_1B4C9E3C4();
          v156 = v235;
          sub_1B4CA2150(v82, &type metadata for MoveGoalMilestoneProperty, v155, v176);
          if (v156)
          {
            goto LABEL_76;
          }

          v135 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v136 = v176;
          goto LABEL_58;
        }

        if (swift_dynamicCast())
        {

          v157 = sub_1B4C9E370();
          v158 = v235;
          sub_1B4CA2150(v82, &type metadata for ExerciseGoalMilestoneProperty, v157, v175);
          if (v158)
          {
            goto LABEL_76;
          }

          v135 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v136 = v175;
          goto LABEL_58;
        }

        if (swift_dynamicCast())
        {

          v159 = sub_1B4C9E31C();
          v160 = v235;
          sub_1B4CA2150(v82, &type metadata for StandGoalMilestoneProperty, v159, v174);
          if (v160)
          {
            goto LABEL_76;
          }

          v135 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v136 = v174;
          goto LABEL_58;
        }

        if (swift_dynamicCast())
        {

          v161 = sub_1B4C9E2C8();
          v162 = v235;
          sub_1B4CA2150(v82, &type metadata for AllThreeRingsGoalMilestoneProperty, v161, v173);
          if (v162)
          {
            goto LABEL_76;
          }

          v135 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v136 = v173;
          goto LABEL_58;
        }

        if (swift_dynamicCast())
        {

          v163 = sub_1B4C9E274();
          v164 = v235;
          sub_1B4CA2150(v82, &type metadata for HighestDailyStepCountProperty, v163, v170);
          if (v164)
          {
            goto LABEL_76;
          }

          v135 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v136 = v170;
          goto LABEL_58;
        }

        if (swift_dynamicCast())
        {

          v165 = sub_1B4C9E220();
          v166 = v235;
          sub_1B4CA2150(v82, &type metadata for HighestDailyDistanceProperty, v165, v171);
          if (v166)
          {
            goto LABEL_76;
          }

          v135 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v136 = v171;
          goto LABEL_58;
        }

        if (!swift_dynamicCast())
        {
          sub_1B4C9BB70();
          swift_allocError();
          swift_willThrow();
          goto LABEL_76;
        }

        v167 = sub_1B4C9BBC4();
        v168 = v235;
        sub_1B4CA2150(v82, &type metadata for RingsTotalCountProperty, v167, v172);
        if (!v168)
        {
          v135 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v136 = v172;
          goto LABEL_58;
        }

LABEL_76:
        v82 = v133;
        return (*(v215 + 8))(v77, v82);
      }

      v151 = sub_1B4CA3240(&qword_1EDC39200, type metadata accessor for StandGoalDeltaProperty, &protocol conformance descriptor for StandGoalDeltaProperty);
      v152 = v235;
      sub_1B4CA2150(v82, v179, v151, v177);
      if (!v152)
      {
        v153 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        v154 = v177;
        swift_storeEnumTagMultiPayload();
        (*(*(v153 - 8) + 56))(v154, 0, 1, v153);
        sub_1B4CA2F78(v154, v214);
      }

      v141 = type metadata accessor for StandGoalDeltaProperty;
      v142 = v180;
    }

    sub_1B4CA38DC(v142, v141);
    goto LABEL_76;
  }

  v223 = v232;
  v224 = v233;
  v225 = v234;
  v219 = v228;
  v220 = v229;
  v221 = v230;
  v222 = v231;
  v217 = v226;
  v218 = v227;
  sub_1B4C0522C(&v217);
  v79 = sub_1B4CA27F0();
  v80 = v235;
  sub_1B4CA2150(a3, &type metadata for MoveStreakProperty, v79, v73);
  if (!v80)
  {
    v81 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v81 - 8) + 56))(v73, 0, 1, v81);
    sub_1B4CA2F78(v73, v214);
  }

  v82 = a3;
  return (*(v215 + 8))(v77, v82);
}

uint64_t sub_1B4CA2150@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v34 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29[1] = swift_getAssociatedConformanceWitness();
  v31 = AssociatedTypeWitness;
  v8 = swift_getAssociatedTypeWitness();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v30 = v29 - v9;
  v10 = sub_1B4D1880C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v16, v35, a1, v19);
  v23 = swift_dynamicCast();
  v24 = *(v17 + 56);
  if (v23)
  {
    v24(v13, 0, 1, a2);
    (*(v17 + 32))(v21, v13, a2);
    v25 = v30;
    (*(v6 + 64))(a2, v6);
    v26 = v33;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 32))(v26);
    (*(v32 + 8))(v25, v26);
    return (*(v17 + 8))(v21, a2);
  }

  else
  {
    v24(v13, 1, 1, a2);
    (*(v11 + 8))(v13, v10);
    sub_1B4C9BB70();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t static RingsPropertySerialization.from(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = a2;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperty);
  result = sub_1B4D17D7C();
  if (!v3)
  {
    static RingsPropertySerialization.from(_:)(v10, a3);
    return sub_1B4CA38DC(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  }

  return result;
}

unint64_t sub_1B4CA26F4()
{
  result = qword_1EDC38CA8;
  if (!qword_1EDC38CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CA8);
  }

  return result;
}

unint64_t sub_1B4CA2748()
{
  result = qword_1EDC39580;
  if (!qword_1EDC39580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39580);
  }

  return result;
}

unint64_t sub_1B4CA279C()
{
  result = qword_1EDC392D0;
  if (!qword_1EDC392D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC392D0);
  }

  return result;
}

unint64_t sub_1B4CA27F0()
{
  result = qword_1EDC395D8;
  if (!qword_1EDC395D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395D8);
  }

  return result;
}

unint64_t sub_1B4CA2888()
{
  result = qword_1EB8ADCE0;
  if (!qword_1EB8ADCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADCE0);
  }

  return result;
}

uint64_t sub_1B4CA28DC(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, _OWORD *), uint64_t (*a4)(_OWORD *), uint64_t a5)
{
  v43 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  v12 = *(a2 + 80);
  v13 = *(a2 + 112);
  v40 = *(a2 + 96);
  v41 = v13;
  v14 = *(a2 + 16);
  v15 = *(a2 + 48);
  v36 = *(a2 + 32);
  v37 = v15;
  v16 = *(a2 + 48);
  v17 = *(a2 + 80);
  v38 = *(a2 + 64);
  v39 = v17;
  v18 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v18;
  v19 = *(a2 + 112);
  v32 = v40;
  v33 = v19;
  v28 = v36;
  v29 = v16;
  v30 = v38;
  v31 = v12;
  v42 = *(a2 + 128);
  v34 = *(a2 + 128);
  v26 = v35[0];
  v27 = v14;
  v20 = sub_1B4CA351C();
  v21 = *(v20 + 32);
  a3(v35, v24);
  a3(v35, v24);
  v21(&type metadata for StreakPropertyValue, v20);
  v24[6] = v32;
  v24[7] = v33;
  v25 = v34;
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  sub_1B4BA87C4(v24);
  if (v5)
  {
    return a4(v35);
  }

  a4(v35);
  v23 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  return sub_1B4CA2F78(v11, v43);
}

uint64_t sub_1B4CA2B18(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = a2[1];
  v9 = a2[2];
  v14[1] = *a2;
  v14[2] = v8;
  v14[3] = v9;
  v10 = sub_1B4C6CEA4();
  v11 = *(v10 + 32);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v11(&type metadata for RingsMilestonePropertyValue, v10);

  if (!v3)
  {
    v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    return sub_1B4CA2F78(v7, v15);
  }

  return result;
}

uint64_t sub_1B4CA2CA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13[-v8];
  v10 = *a2;
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  v14 = v10;
  sub_1B4CA3240(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);

  sub_1B4D17DAC();

  if (!v4)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
    return sub_1B4CA2F78(v9, a1);
  }

  return result;
}

uint64_t sub_1B4CA2E28(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v12 - v7;
  v12[1] = *a2;
  v9 = sub_1B49A69C0();
  result = (*(v9 + 32))(&type metadata for CountPropertyValue, v9);
  if (!v3)
  {
    v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    return sub_1B4CA2F78(v8, a1);
  }

  return result;
}

uint64_t sub_1B4CA2F78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CA3240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4CA351C()
{
  result = qword_1EDC39558;
  if (!qword_1EDC39558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39558);
  }

  return result;
}

uint64_t sub_1B4CA380C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4CA3874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4CA38DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WorkoutVoiceFastestRecordFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutVoiceFastestRecordFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000066;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000086;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000064;
  }
}

uint64_t sub_1B4CA3A44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "of <formatted_pace>.";
  v4 = 0xD000000000000066;
  if (v2 == 1)
  {
    v5 = 0xD000000000000066;
  }

  else
  {
    v5 = 0xD000000000000086;
  }

  if (v2 == 1)
  {
    v6 = "of <formatted_pace>.";
  }

  else
  {
    v6 = " of <formatted_speed>.";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000064;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "thisMonthWorkoutProperties";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000086;
    v3 = " of <formatted_speed>.";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000064;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "thisMonthWorkoutProperties";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4CA3B1C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CA3BB8(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4CA3C40(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4CA3CE4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000064;
  v3 = "of <formatted_pace>.";
  v4 = 0xD000000000000066;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000086;
    v3 = " of <formatted_speed>.";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "thisMonthWorkoutProperties";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

id WorkoutVoiceFastestRecordFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D223E0;
  [*(v0 + *(v2 + 44)) effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v7 = result;
    v8 = sub_1B4D1818C();
    v10 = v9;

    strcpy((v5 + 32), "activity_type");
    *(v5 + 46) = -4864;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v5 + 48) = sub_1B4993DFC;
    *(v5 + 56) = v11;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    v12 = sub_1B4CA40B0();
    v14 = v13;
    *(v5 + 80) = 0xD000000000000015;
    *(v5 + 88) = 0x80000001B4D4EFE0;
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v5 + 96) = sub_1B4994004;
    *(v5 + 104) = v15;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    sub_1B4C73654(v0, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v17 = swift_allocObject();
    sub_1B4CA4FD8(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    strcpy((v5 + 128), "formatted_pace");
    *(v5 + 143) = -18;
    *(v5 + 144) = sub_1B4CA503C;
    *(v5 + 152) = v17;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    sub_1B4C73654(v0, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = swift_allocObject();
    sub_1B4CA4FD8(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16);
    *(v5 + 176) = 0x657474616D726F66;
    *(v5 + 184) = 0xEF64656570735F64;
    *(v5 + 192) = sub_1B4CA5054;
    *(v5 + 200) = v18;
    *(v5 + 208) = 0;
    *(v5 + 216) = 0;
    sub_1B4C73654(v0, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = swift_allocObject();
    sub_1B4CA4FD8(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v16);
    *(v5 + 224) = 0xD000000000000012;
    *(v5 + 232) = 0x80000001B4D62360;
    *(v5 + 240) = sub_1B4CA506C;
    *(v5 + 248) = v19;
    *(v5 + 256) = 0;
    *(v5 + 264) = 0;
    sub_1B4C73654(v0, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = swift_allocObject();
    sub_1B4CA4FD8(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v16);
    *(v5 + 272) = 0xD000000000000012;
    *(v5 + 280) = 0x80000001B4D62340;
    *(v5 + 288) = sub_1B4CA52D8;
    *(v5 + 296) = v20;
    *(v5 + 304) = 0;
    *(v5 + 312) = 0;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4CA40B0()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceFastestRecordFact(0) + 32));
  if (v1 < 4)
  {
    v3 = sub_1B4D18DCC();

    if (v3)
    {
      return 0x6365722065762749;
    }

    else if (v1 > 1)
    {
      if (v1 == 2)
      {
        return 0x6E6F6D2073696874;
      }

      else
      {
        return 0x6165792073696874;
      }
    }

    else if (v1)
    {
      return 0x6565772073696874;
    }

    else
    {
      return 0x7961642073696874;
    }
  }

  else
  {

    return 0x6365722065762749;
  }
}

uint64_t sub_1B4CA422C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  sub_1B4974FBC(a2 + *(v10 + 28), v5, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_1B4D13AE8(v9, *(a2 + *(v10 + 36)), 2);
    (*(v7 + 8))(v9, v6);
    return v12;
  }
}

uint64_t sub_1B4CA4414(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  sub_1B4974FBC(a2 + *(v15 + 28), v7, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D1742C();
    v17 = *(v9 + 8);
    v17(v11, v8);
    v18 = [objc_opt_self() metersPerSecond];
    sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    sub_1B4D1741C();
    v19 = sub_1B4D13D94(v4, *(a2 + *(v15 + 36)), 1);
    (*(v21 + 8))(v4, v23);
    v17(v14, v8);
    return v19;
  }
}

uint64_t sub_1B4CA479C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  sub_1B4974FBC(a2 + *(v10 + 24), v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_1B4D1232C();
    sub_1B4BC79D0();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v12 = sub_1B4D1878C();
    (*(v7 + 8))(v9, v6);

    return v12;
  }
}

uint64_t sub_1B4CA49A8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  sub_1B4974FBC(a2 + *(v10 + 20), v5, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v13 = sub_1B4BCA7BC(v12);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v14 = sub_1B4D15F5C(v9, v13);

    (*(v7 + 8))(v9, v6);
    return v14;
  }
}

void WorkoutVoiceFastestRecordFact.selectTemplate(formatter:)(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = *v1;
  if (v12 == 19)
  {
    v23 = a1;
    v13 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
    sub_1B4974FBC(&v1[*(v13 + 28)], v11, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    v15 = (*(*(v14 - 8) + 48))(v11, 1, v14);
    sub_1B4975024(v11, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    if (v15 != 1)
    {
      v21 = FIPaceFormatForWorkoutActivityType() == 4;
      a1 = v23;
      goto LABEL_10;
    }

    LOBYTE(v12) = *v1;
    a1 = v23;
  }

  if ((v12 & 0xFC) == 0x10 || (v16 = type metadata accessor for WorkoutVoiceFastestRecordFact(0), sub_1B4974FBC(&v1[*(v16 + 24)], v8, &qword_1EB8A6CC0, &unk_1B4D1BC00), v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40), v18 = (*(*(v17 - 8) + 48))(v8, 1, v17), sub_1B4975024(v8, &qword_1EB8A6CC0, &unk_1B4D1BC00), v18 == 1) || (sub_1B4974FBC(&v1[*(v16 + 20)], v5, &qword_1EB8A6C90, &unk_1B4D1BBD0), v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10), v20 = (*(*(v19 - 8) + 48))(v5, 1, v19), sub_1B4975024(v5, &qword_1EB8A6C90, &unk_1B4D1BBD0), v20 == 1))
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

LABEL_10:
  *a1 = v21;
}

uint64_t sub_1B4CA4FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = v1[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4CA52F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutVoiceFastestRecordFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1B4CA5378()
{
  result = qword_1EB8ADCE8;
  if (!qword_1EB8ADCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADCE8);
  }

  return result;
}

unint64_t sub_1B4CA53D0()
{
  result = qword_1EB8ADCF0;
  if (!qword_1EB8ADCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ADCF8, &qword_1B4D44F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADCF0);
  }

  return result;
}

unint64_t sub_1B4CA5438()
{
  result = qword_1EB8ADD00;
  if (!qword_1EB8ADD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD00);
  }

  return result;
}

unint64_t sub_1B4CA5490()
{
  result = qword_1EB8ADD08;
  if (!qword_1EB8ADD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD08);
  }

  return result;
}

unint64_t sub_1B4CA54E4(uint64_t a1)
{
  result = sub_1B4CA550C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4CA550C()
{
  result = qword_1EB8ADD10;
  if (!qword_1EB8ADD10)
  {
    type metadata accessor for WorkoutVoiceFastestRecordFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD10);
  }

  return result;
}

void __swiftcall FitnessContextDemoConfig.RingProgress.init(moveValue:moveGoal:exerciseValue:exerciseGoal:standValue:standGoal:steps:distance:flights:)(FitnessIntelligence::FitnessContextDemoConfig::RingProgress *__return_ptr retstr, Swift::Double moveValue, Swift::Double moveGoal, Swift::Double exerciseValue, Swift::Double exerciseGoal, Swift::Double standValue, Swift::Double standGoal, Swift::Double steps, Swift::Double distance, Swift::Double flights)
{
  retstr->moveValue = moveValue;
  retstr->moveGoal = moveGoal;
  retstr->exerciseValue = exerciseValue;
  retstr->exerciseGoal = exerciseGoal;
  retstr->standValue = standValue;
  retstr->standGoal = standGoal;
  retstr->steps = steps;
  retstr->distance = distance;
  retstr->flights = flights;
}

uint64_t sub_1B4CA55D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x756C615665766F6DLL;
    if (a1)
    {
      v5 = 0x6C616F4765766F6DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return 0x6573696372657865;
    }
  }

  else
  {
    v1 = 0x7370657473;
    v2 = 0x65636E6174736964;
    if (a1 != 7)
    {
      v2 = 0x73746867696C66;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C6156646E617473;
    if (a1 != 4)
    {
      v3 = 0x616F47646E617473;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B4CA5714@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4CA7A78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4CA573C(uint64_t a1)
{
  v2 = sub_1B4CA5A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4CA5778(uint64_t a1)
{
  v2 = sub_1B4CA5A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FitnessContextDemoConfig.RingProgress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD18, &qword_1B4D45010);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA5A48();
  sub_1B4D18EFC();
  v18 = 0;
  sub_1B4D18CDC();
  if (!v2)
  {
    v17 = 1;
    sub_1B4D18CDC();
    v16 = 2;
    sub_1B4D18CDC();
    v15 = 3;
    sub_1B4D18CDC();
    v14 = 4;
    sub_1B4D18CDC();
    v13 = 5;
    sub_1B4D18CDC();
    v12 = 6;
    sub_1B4D18CDC();
    v11 = 7;
    sub_1B4D18CDC();
    v10 = 8;
    sub_1B4D18CDC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B4CA5A48()
{
  result = qword_1EB8ADD20;
  if (!qword_1EB8ADD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD20);
  }

  return result;
}

uint64_t FitnessContextDemoConfig.RingProgress.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD28, &qword_1B4D45018);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA5A48();
  sub_1B4D18EEC();
  if (!v2)
  {
    v37 = 0;
    sub_1B4D18BDC();
    v10 = v9;
    v36 = 1;
    sub_1B4D18BDC();
    v12 = v11;
    v35 = 2;
    sub_1B4D18BDC();
    v14 = v13;
    v34 = 3;
    sub_1B4D18BDC();
    v16 = v15;
    v33 = 4;
    sub_1B4D18BDC();
    v18 = v17;
    v32 = 5;
    sub_1B4D18BDC();
    v20 = v19;
    v31 = 6;
    sub_1B4D18BDC();
    v22 = v21;
    v30 = 7;
    sub_1B4D18BDC();
    v28 = v24;
    v29 = 8;
    sub_1B4D18BDC();
    v26 = v25;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
    *(a2 + 2) = v14;
    *(a2 + 3) = v16;
    *(a2 + 4) = v18;
    *(a2 + 5) = v20;
    v27 = v28;
    *(a2 + 6) = v22;
    *(a2 + 7) = v27;
    *(a2 + 8) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void __swiftcall FitnessContextDemoConfig.WorkoutHistory.init(countThisWeek:countLastWeek:additionalWorkoutsPerDayThisWeek:distancePerWorkoutThisWeek:distancePerWorkoutLastWeek:)(FitnessIntelligence::FitnessContextDemoConfig::WorkoutHistory *__return_ptr retstr, Swift::Int countThisWeek, Swift::Int countLastWeek, Swift::Double additionalWorkoutsPerDayThisWeek, Swift::Double_optional distancePerWorkoutThisWeek, Swift::Double_optional distancePerWorkoutLastWeek)
{
  retstr->countThisWeek = countThisWeek;
  retstr->countLastWeek = countLastWeek;
  retstr->additionalWorkoutsPerDayThisWeek = additionalWorkoutsPerDayThisWeek;
  retstr->distancePerWorkoutThisWeek.value = *&distancePerWorkoutThisWeek.is_nil;
  retstr->distancePerWorkoutThisWeek.is_nil = distancePerWorkoutLastWeek.is_nil;
  *(&retstr->distancePerWorkoutLastWeek.value + 7) = v6;
  LOBYTE(retstr[1].countThisWeek) = v7 & 1;
}

unint64_t sub_1B4CA5DD8()
{
  v1 = 0x696854746E756F63;
  v2 = 0xD000000000000020;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0x73614C746E756F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4CA5E8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4CA7D6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4CA5EB4(uint64_t a1)
{
  v2 = sub_1B4CA614C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4CA5EF0(uint64_t a1)
{
  v2 = sub_1B4CA614C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FitnessContextDemoConfig.WorkoutHistory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD30, &qword_1B4D45020);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 8);
  v12 = *(v1 + 24);
  v13 = v7;
  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA614C();
  sub_1B4D18EFC();
  v19 = 0;
  v8 = v14;
  sub_1B4D18CEC();
  if (!v8)
  {
    v18 = 1;
    sub_1B4D18CEC();
    v17 = 2;
    sub_1B4D18CDC();
    v16 = 3;
    sub_1B4D18C8C();
    v15 = 4;
    sub_1B4D18C8C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B4CA614C()
{
  result = qword_1EB8ADD38;
  if (!qword_1EB8ADD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD38);
  }

  return result;
}

uint64_t FitnessContextDemoConfig.WorkoutHistory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD40, &qword_1B4D45028);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA614C();
  sub_1B4D18EEC();
  if (!v2)
  {
    v27 = 0;
    v9 = sub_1B4D18BEC();
    v26 = 1;
    v10 = sub_1B4D18BEC();
    v25 = 2;
    sub_1B4D18BDC();
    v12 = v11;
    v24 = 3;
    v13 = sub_1B4D18B8C();
    v22 = v14;
    v21 = v13;
    v23 = 4;
    v16 = sub_1B4D18B8C();
    v17 = v8;
    v19 = v18;
    (*(v6 + 8))(v17, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 24) = v21;
    *(a2 + 32) = v22 & 1;
    *(a2 + 40) = v16;
    *(a2 + 48) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 FitnessContextDemoConfig.todayRingProgress.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 72);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

__n128 FitnessContextDemoConfig.yesterdayRingProgress.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 32) = *(v1 + 112);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 144);
  result = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = result;
  return result;
}

uint64_t static FitnessContextDemoConfig.load(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v7 = sub_1B4D1767C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4D17F6C();
  __swift_project_value_buffer(v11, qword_1EDC3CED0);
  (*(v8 + 16))(v10, a1, v7);
  v12 = sub_1B4D17F5C();
  v13 = sub_1B4D1873C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v3;
    v17 = v16;
    v30 = v16;
    *v15 = 136315138;
    sub_1B4CA7240(COERCE_DOUBLE(136315138));
    v18 = sub_1B4D18D5C();
    v27[1] = a1;
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_1B49558AC(v18, v20, &v30);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1B4953000, v12, v13, "Loading demo config from %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v22 = v17;
    v4 = v28;
    MEMORY[0x1B8C7DDA0](v22, -1, -1);
    MEMORY[0x1B8C7DDA0](v15, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  result = sub_1B4D1768C();
  if (!v4)
  {
    v25 = result;
    v26 = v24;
    sub_1B4D173AC();
    swift_allocObject();
    sub_1B4D1739C();
    sub_1B4CA6778();
    sub_1B4D1738C();

    return sub_1B49DDD2C(v25, v26);
  }

  return result;
}

unint64_t sub_1B4CA6778()
{
  result = qword_1EB8ADD48;
  if (!qword_1EB8ADD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD48);
  }

  return result;
}

void __swiftcall FitnessContextDemoConfig.init(workoutHistoryByActivityType:todayRingProgress:yesterdayRingProgress:totalWorkoutDistanceThisYear:averageWorkoutDistanceLastSixWeeks:longestWorkoutDistanceEver:longestWorkoutDistanceThisYear:longestWorkoutDistanceThisMonth:averageWorkoutDurationThisWeek:)(FitnessIntelligence::FitnessContextDemoConfig *__return_ptr retstr, Swift::OpaquePointer workoutHistoryByActivityType, FitnessIntelligence::FitnessContextDemoConfig::RingProgress *todayRingProgress, FitnessIntelligence::FitnessContextDemoConfig::RingProgress *yesterdayRingProgress, Swift::Double totalWorkoutDistanceThisYear, Swift::Double averageWorkoutDistanceLastSixWeeks, Swift::Double longestWorkoutDistanceEver, Swift::Double longestWorkoutDistanceThisYear, Swift::Double longestWorkoutDistanceThisMonth, Swift::Double averageWorkoutDurationThisWeek)
{
  v10 = *&todayRingProgress->moveValue;
  *&retstr->todayRingProgress.exerciseValue = *&todayRingProgress->exerciseValue;
  v11 = *&todayRingProgress->steps;
  *&retstr->todayRingProgress.standValue = *&todayRingProgress->standValue;
  retstr->workoutHistoryByActivityType = workoutHistoryByActivityType;
  *&retstr->todayRingProgress.steps = v11;
  retstr->todayRingProgress.flights = todayRingProgress->flights;
  *&retstr->todayRingProgress.moveValue = v10;
  v12 = *&yesterdayRingProgress->steps;
  *&retstr->yesterdayRingProgress.standValue = *&yesterdayRingProgress->standValue;
  *&retstr->yesterdayRingProgress.steps = v12;
  retstr->yesterdayRingProgress.flights = yesterdayRingProgress->flights;
  v13 = *&yesterdayRingProgress->exerciseValue;
  *&retstr->yesterdayRingProgress.moveValue = *&yesterdayRingProgress->moveValue;
  *&retstr->yesterdayRingProgress.exerciseValue = v13;
  retstr->totalWorkoutDistanceThisYear = totalWorkoutDistanceThisYear;
  retstr->averageWorkoutDistanceLastSixWeeks = averageWorkoutDistanceLastSixWeeks;
  retstr->longestWorkoutDistanceEver = longestWorkoutDistanceEver;
  retstr->longestWorkoutDistanceThisYear = longestWorkoutDistanceThisYear;
  retstr->longestWorkoutDistanceThisMonth = longestWorkoutDistanceThisMonth;
  retstr->averageWorkoutDurationThisWeek = averageWorkoutDurationThisWeek;
}

unint64_t sub_1B4CA6818(unsigned __int8 a1)
{
  v1 = 0xD00000000000001CLL;
  if (a1 <= 3u)
  {
    v6 = 0xD000000000000015;
    if (a1 != 2)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001ELL;
    v3 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v3 = 0xD00000000000001ELL;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v4 = 0xD000000000000022;
    }

    if (a1 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B4CA691C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4CA7F30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4CA6944(uint64_t a1)
{
  v2 = sub_1B4CA7298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4CA6980(uint64_t a1)
{
  v2 = sub_1B4CA7298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FitnessContextDemoConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD58, &qword_1B4D45030);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = *v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA7298();

  sub_1B4D18EFC();
  *&v15 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD68, &qword_1B4D45038);
  sub_1B4CA7394(&qword_1EB8ADD70, sub_1B4CA72EC, MEMORY[0x1E69E6818], MEMORY[0x1E69E5E38]);
  sub_1B4D18D0C();
  if (v2)
  {
  }

  else
  {

    v10 = *(v3 + 3);
    v11 = *(v3 + 7);
    v17 = *(v3 + 5);
    v18 = v11;
    v19 = v3[9];
    v15 = *(v3 + 1);
    v16 = v10;
    v20 = 1;
    sub_1B4CA7340();
    sub_1B4D18D0C();
    v12 = *(v3 + 8);
    v17 = *(v3 + 7);
    v18 = v12;
    v19 = v3[18];
    v13 = *(v3 + 6);
    v15 = *(v3 + 5);
    v16 = v13;
    v20 = 2;
    sub_1B4D18D0C();
    LOBYTE(v15) = 3;
    sub_1B4D18CDC();
    LOBYTE(v15) = 4;
    sub_1B4D18CDC();
    LOBYTE(v15) = 5;
    sub_1B4D18CDC();
    LOBYTE(v15) = 6;
    sub_1B4D18CDC();
    LOBYTE(v15) = 7;
    sub_1B4D18CDC();
    LOBYTE(v15) = 8;
    sub_1B4D18CDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FitnessContextDemoConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD88, &qword_1B4D45040);
  v5 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v7 = &v30 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA7298();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD68, &qword_1B4D45038);
  LOBYTE(v32[0]) = 0;
  sub_1B4CA7394(&qword_1EB8ADD90, sub_1B4CA7418, MEMORY[0x1E69E6840], MEMORY[0x1E69E5E58]);
  sub_1B4D18C0C();
  v9 = v41;
  v65 = 1;
  sub_1B4CA746C();
  sub_1B4D18C0C();
  v31 = v9;
  v78 = v68;
  v79 = v69;
  v80 = v70;
  v76 = v66;
  v77 = v67;
  v59 = 2;
  sub_1B4D18C0C();
  v73 = v62;
  v74 = v63;
  v75 = v64;
  v71 = v60;
  v72 = v61;
  LOBYTE(v41) = 3;
  sub_1B4D18BDC();
  v11 = v10;
  LOBYTE(v41) = 4;
  sub_1B4D18BDC();
  v12 = v31;
  v14 = v13;
  LOBYTE(v41) = 5;
  sub_1B4D18BDC();
  v16 = v15;
  LOBYTE(v41) = 6;
  sub_1B4D18BDC();
  v18 = v17;
  LOBYTE(v41) = 7;
  sub_1B4D18BDC();
  v20 = v19;
  v58 = 8;
  sub_1B4D18BDC();
  v22 = v21;
  (*(v8 + 8))(v7, v81);
  *(&v32[1] + 8) = v77;
  *(&v32[2] + 8) = v78;
  *&v32[0] = v12;
  *(&v32[3] + 8) = v79;
  *(&v32[4] + 1) = v80;
  *(v32 + 8) = v76;
  v35 = v73;
  v36 = v74;
  *&v37 = v75;
  v33 = v71;
  v34 = v72;
  *(&v37 + 1) = v11;
  *&v38 = v14;
  *(&v38 + 1) = v16;
  *&v39 = v18;
  *(&v39 + 1) = v20;
  v40 = v22;
  v23 = v73;
  *(a2 + 96) = v72;
  *(a2 + 112) = v23;
  v24 = v33;
  *(a2 + 64) = v32[4];
  *(a2 + 80) = v24;
  v25 = v32[3];
  *(a2 + 32) = v32[2];
  *(a2 + 48) = v25;
  v26 = v32[1];
  *a2 = v32[0];
  *(a2 + 16) = v26;
  v27 = v37;
  *(a2 + 128) = v36;
  *(a2 + 144) = v27;
  v28 = v39;
  *(a2 + 160) = v38;
  *(a2 + 176) = v28;
  *(a2 + 192) = v40;
  sub_1B4CA74C0(v32, &v41);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v43 = v77;
  v44 = v78;
  v45 = v79;
  v41 = v12;
  v46 = v80;
  v42 = v76;
  v49 = v73;
  v50 = v74;
  v51 = v75;
  v47 = v71;
  v48 = v72;
  v52 = v11;
  v53 = v14;
  v54 = v16;
  v55 = v18;
  v56 = v20;
  v57 = v22;
  return sub_1B4CA74F8(&v41);
}

unint64_t sub_1B4CA7240(double a1)
{
  result = qword_1EB8ADD50;
  if (!qword_1EB8ADD50)
  {
    sub_1B4D1767C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD50);
  }

  return result;
}

unint64_t sub_1B4CA7298()
{
  result = qword_1EB8ADD60;
  if (!qword_1EB8ADD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD60);
  }

  return result;
}

unint64_t sub_1B4CA72EC()
{
  result = qword_1EB8ADD78;
  if (!qword_1EB8ADD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD78);
  }

  return result;
}

unint64_t sub_1B4CA7340()
{
  result = qword_1EB8ADD80;
  if (!qword_1EB8ADD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD80);
  }

  return result;
}

uint64_t sub_1B4CA7394(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ADD68, &qword_1B4D45038);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4CA7418()
{
  result = qword_1EB8ADD98;
  if (!qword_1EB8ADD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD98);
  }

  return result;
}

unint64_t sub_1B4CA746C()
{
  result = qword_1EB8ADDA0;
  if (!qword_1EB8ADDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDA0);
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1B4CA756C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_1B4CA75B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4CA7658(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4CA7678(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1B4CA76C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4CA76E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

unint64_t sub_1B4CA7764()
{
  result = qword_1EB8ADDA8;
  if (!qword_1EB8ADDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDA8);
  }

  return result;
}

unint64_t sub_1B4CA77BC()
{
  result = qword_1EB8ADDB0;
  if (!qword_1EB8ADDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDB0);
  }

  return result;
}

unint64_t sub_1B4CA7814()
{
  result = qword_1EB8ADDB8;
  if (!qword_1EB8ADDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDB8);
  }

  return result;
}

unint64_t sub_1B4CA786C()
{
  result = qword_1EB8ADDC0;
  if (!qword_1EB8ADDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDC0);
  }

  return result;
}

unint64_t sub_1B4CA78C4()
{
  result = qword_1EB8ADDC8;
  if (!qword_1EB8ADDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDC8);
  }

  return result;
}

unint64_t sub_1B4CA791C()
{
  result = qword_1EB8ADDD0;
  if (!qword_1EB8ADDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDD0);
  }

  return result;
}

unint64_t sub_1B4CA7974()
{
  result = qword_1EB8ADDD8;
  if (!qword_1EB8ADDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDD8);
  }

  return result;
}

unint64_t sub_1B4CA79CC()
{
  result = qword_1EB8ADDE0;
  if (!qword_1EB8ADDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDE0);
  }

  return result;
}

unint64_t sub_1B4CA7A24()
{
  result = qword_1EB8ADDE8;
  if (!qword_1EB8ADDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDE8);
  }

  return result;
}

uint64_t sub_1B4CA7A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756C615665766F6DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616F4765766F6DLL && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xED000065756C6156 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xEC0000006C616F47 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6156646E617473 && a2 == 0xEA00000000006575 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616F47646E617473 && a2 == 0xE90000000000006CLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7370657473 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73746867696C66 && a2 == 0xE700000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B4CA7D6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696854746E756F63 && a2 == 0xED00006B65655773;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73614C746E756F63 && a2 == 0xED00006B65655774 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B4D66A20 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B4D66A50 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B4D66A70 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B4CA7F30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x80000001B4D66A90 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D66AB0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4D66AD0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B4D66AF0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001B4D66B10 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B4D66B40 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B4D66B60 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B4D66B80 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B4D66BA0 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

double WorkoutReplayMoment.moment.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return result;
}

char *WorkoutReplayMoment.init(elapsedTime:moment:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  v4 = *(result + 1);
  v5 = result[16];
  v6 = *(result + 24);
  v7 = *(result + 5);
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t WorkoutReplayMoments.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D177CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutReplayMoments.workout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutReplayMoments(0) + 20);

  return sub_1B4992854(v3, a1);
}

uint64_t type metadata accessor for WorkoutReplayMoments(uint64_t a1)
{
  result = qword_1EB8ADDF0;
  if (!qword_1EB8ADDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double WorkoutReplayMoments.replays.getter()
{
  type metadata accessor for WorkoutReplayMoments(0);

  return result;
}

uint64_t WorkoutReplayMoments.init(uuid:workout:activityType:replays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B4D177CC();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for WorkoutReplayMoments(0);
  result = sub_1B49B46E0(a2, a5 + v11[5]);
  *(a5 + v11[6]) = a3;
  *(a5 + v11[7]) = a4;
  return result;
}

uint64_t sub_1B4CA84B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B4CA84F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B4CA857C(uint64_t a1)
{
  sub_1B4D177CC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WorkoutState(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HKWorkoutActivityType(319);
      if (v3 <= 0x3F)
      {
        sub_1B4CA8630();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4CA8630()
{
  if (!qword_1EB8ADE00)
  {
    v0 = sub_1B4D184BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8ADE00);
    }
  }
}

uint64_t FitnessIntelligenceConnection.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADE08, &unk_1B4D455F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v12 - v8);
  *v9 = 0xD00000000000001ELL;
  v9[1] = 0x80000001B4D66BC0;
  (*(v3 + 104))(&v12 - v8, *MEMORY[0x1E699DCF8], v2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB860, &qword_1B4D35CF0);
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_1B4D17B2C();
  result = (*(v3 + 8))(v9, v2);
  *a1 = v10;
  return result;
}

uint64_t FitnessIntelligenceConnection.init(serviceType:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADE08, &unk_1B4D455F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB860, &qword_1B4D35CF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_1B4D17B2C();
  result = (*(v5 + 8))(a1, v4);
  *a2 = v8;
  return result;
}

FitnessIntelligence::WorkoutPropertyKind_optional __swiftcall WorkoutPropertyKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18DFC();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WorkoutPropertyKind.rawValue.getter()
{
  result = 0x7461745365636170;
  switch(*v0)
  {
    case 1:
    case 6:
    case 7:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 8:
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0xD000000000000018;
      break;
    case 0xE:
      result = 0xD000000000000017;
      break;
    case 0xF:
      result = 0xD000000000000017;
      break;
    case 0x10:
      result = 0xD000000000000017;
      break;
    case 0x11:
      result = 0xD000000000000016;
      break;
    case 0x12:
      result = 0x756F436C61746F74;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1B4CA8B88()
{
  v0 = WorkoutPropertyKind.rawValue.getter();
  v2 = v1;
  if (v0 == WorkoutPropertyKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4D18DCC();
  }

  return v5 & 1;
}

uint64_t sub_1B4CA8C28()
{
  sub_1B4D18E8C();
  WorkoutPropertyKind.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CA8C90(uint64_t a1)
{
  WorkoutPropertyKind.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4CA8CF4(uint64_t a1)
{
  sub_1B4D18E8C();
  WorkoutPropertyKind.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4CA8D64@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutPropertyKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B4CA8D8C(void *a1)
{
  a1[1] = sub_1B4CA8DC4();
  a1[2] = sub_1B4CA8E18();
  result = sub_1B4CA8E6C();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4CA8DC4()
{
  result = qword_1EB8ADE10;
  if (!qword_1EB8ADE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE10);
  }

  return result;
}

unint64_t sub_1B4CA8E18()
{
  result = qword_1EB8ADE18;
  if (!qword_1EB8ADE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE18);
  }

  return result;
}

unint64_t sub_1B4CA8E6C()
{
  result = qword_1EB8ADE20;
  if (!qword_1EB8ADE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE20);
  }

  return result;
}

unint64_t sub_1B4CA8EC4()
{
  result = qword_1EB8A74D8;
  if (!qword_1EB8A74D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A74D0, &qword_1B4D1E2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A74D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPropertyKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPropertyKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AverageWorkoutPaceFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t AverageWorkoutPaceFact.TemplateString.rawValue.getter()
{
  v1 = 0xD0000000000000AELL;
  if (*v0 == 2)
  {
    v1 = 0xD0000000000000A5;
  }

  if (*v0)
  {
    v2 = 0xD0000000000000AFLL;
  }

  else
  {
    v2 = 0xD0000000000000A6;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B4CA916C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CA9220(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4CA92C0(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4CA937C(unint64_t *a1@<X8>)
{
  v2 = "y and the day before.";
  v3 = "<duration_delta_from_baseline>.";
  v4 = 0xD0000000000000AELL;
  if (*v1 == 2)
  {
    v4 = 0xD0000000000000A5;
  }

  else
  {
    v3 = "delta_from_baseline>.";
  }

  if (*v1)
  {
    v5 = 0xD0000000000000AFLL;
  }

  else
  {
    v5 = 0xD0000000000000A6;
  }

  if (*v1)
  {
    v2 = "_delta_from_baseline>.";
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v5 = v4;
    v6 = v3;
  }

  *a1 = v5;
  a1[1] = v6 | 0x8000000000000000;
}

id AverageWorkoutPaceFact.placeholders()()
{
  v1 = type metadata accessor for AverageWorkoutPaceFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  [*v0 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v6 = result;
    v7 = sub_1B4D1818C();
    v9 = v8;

    strcpy((v4 + 32), "activity_type");
    *(v4 + 46) = -4864;
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v4 + 48) = sub_1B4993DFC;
    *(v4 + 56) = v10;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    sub_1B49BEB50(v0, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v12 = swift_allocObject();
    sub_1B4CA9E44(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1B4CA9EA8;
    *(v13 + 24) = v12;
    *(v4 + 80) = 0xD00000000000001CLL;
    *(v4 + 88) = 0x80000001B4D66BE0;
    *(v4 + 96) = sub_1B4AF87E4;
    *(v4 + 104) = v13;
    *(v4 + 112) = 0;
    *(v4 + 120) = 0;
    sub_1B49BEB50(v0, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = swift_allocObject();
    sub_1B4CA9E44(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v11);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B4CAA05C;
    *(v15 + 24) = v14;
    *(v4 + 128) = 0xD000000000000019;
    *(v4 + 136) = 0x80000001B4D66C00;
    *(v4 + 144) = sub_1B4AF8C58;
    *(v4 + 152) = v15;
    *(v4 + 160) = 0;
    *(v4 + 168) = 0;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4CA9688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  sub_1B4CA9884(a1, &v10 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  sub_1B4D18F8C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B4D1B2D0;
  sub_1B4D18F4C();
  sub_1B4D18F5C();
  sub_1B4D18F6C();
  sub_1B4D18F7C();
  v7 = sub_1B4BCA7BC(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v8 = sub_1B4D15F5C(v5, v7);

  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_1B4CA9884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v21 = *(type metadata accessor for AverageWorkoutPaceFact(0) + 20);
  v13 = [*(a1 + 16) userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v14 = [objc_opt_self() mileUnit];
  LOBYTE(a1) = sub_1B4D187AC();

  if (a1)
  {
    if (qword_1EB8A6478 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EB8AC490;
  }

  else
  {
    if (qword_1EB8A6480 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EB8AC498;
  }

  v16 = *v15;

  sub_1B4D1745C();
  sub_1B4D1742C();
  (*(v6 + 8))(v8, v5);
  v17 = objc_opt_self();
  v18 = [v17 minutes];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  v19 = [v17 seconds];
  sub_1B4D1745C();

  return (*(v10 + 8))(v12, v9);
}

uint64_t AverageWorkoutPaceFact.selectTemplate(formatter:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  if ([*v2 effectiveTypeIdentifier] == 13)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
    type metadata accessor for AverageWorkoutPaceFact(0);
    if (qword_1EB8A6008 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_1EB8F3AE8);
    sub_1B49B0578(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0, MEMORY[0x1E6968088]);
    result = sub_1B4D1810C();
    if (result)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    sub_1B4CA9884(a1, v9);
    if (qword_1EB8A5FF8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, qword_1EB8F3AB8);
    sub_1B49B0578(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968088]);
    v13 = sub_1B4D1810C();
    result = (*(v6 + 8))(v9, v5);
    v12 = (v13 & 1) == 0;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1B4CA9E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AverageWorkoutPaceFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CA9EA8(uint64_t a1)
{
  type metadata accessor for AverageWorkoutPaceFact(0);

  return sub_1B4CA9688(a1);
}

uint64_t objectdestroy_3Tm_2()
{
  v1 = (type metadata accessor for AverageWorkoutPaceFact(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4CAA05C()
{
  v1 = type metadata accessor for AverageWorkoutPaceFact(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  return sub_1B4D13D94(v2 + *(v1 + 24), *v2, 1);
}

unint64_t sub_1B4CAA0D4()
{
  result = qword_1EB8ADE28;
  if (!qword_1EB8ADE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE28);
  }

  return result;
}

unint64_t sub_1B4CAA170()
{
  result = qword_1EB8ADE40;
  if (!qword_1EB8ADE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE40);
  }

  return result;
}

unint64_t sub_1B4CAA1C8()
{
  result = qword_1EB8ADE48;
  if (!qword_1EB8ADE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE48);
  }

  return result;
}

unint64_t sub_1B4CAA21C(uint64_t a1)
{
  result = sub_1B4CAA244();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4CAA244()
{
  result = qword_1EB8ADE50;
  if (!qword_1EB8ADE50)
  {
    type metadata accessor for AverageWorkoutPaceFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE50);
  }

  return result;
}

uint64_t WorkoutVoiceMostCaloriesFact.init(value:timescale:workoutActivityType:identifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a2;
  *a6 = 18;
  v12 = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  v13 = v12[5];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  result = (*(*(v14 - 8) + 32))(&a6[v13], a1, v14);
  a6[v12[6]] = v11;
  *&a6[v12[7]] = a3;
  v16 = &a6[v12[8]];
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t type metadata accessor for WorkoutVoiceMostCaloriesFact(uint64_t a1)
{
  result = qword_1EB8ADE70;
  if (!qword_1EB8ADE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceMostCaloriesFact.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutVoiceMostCaloriesFact(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutVoiceMostCaloriesFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WorkoutVoiceMostCaloriesFact.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceMostCaloriesFact(0) + 32));

  return v1;
}

uint64_t sub_1B4CAA4F0(uint64_t a1)
{
  v2 = sub_1B4CAAF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4CAA52C(uint64_t a1)
{
  v2 = sub_1B4CAAF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceMostCaloriesFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADE58, &qword_1B4D458D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CAAF78();
  sub_1B4D18EFC();
  v18 = *v3;
  v17 = 0;
  sub_1B4B59AD0();
  sub_1B4D18D0C();
  if (!v2)
  {
    v11[0] = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
    v9 = v11[0];
    v15 = v3[*(v11[0] + 24)];
    v14 = 2;
    sub_1B4B59B24();
    sub_1B4D18D0C();
    v11[1] = *&v3[*(v9 + 28)];
    v13 = 3;
    type metadata accessor for HKWorkoutActivityType(0);
    sub_1B4CAAFCC(&qword_1EB8AAFB8, &protocol conformance descriptor for HKWorkoutActivityType);
    sub_1B4D18D0C();
    v12 = 4;
    sub_1B4D18CBC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WorkoutVoiceMostCaloriesFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADE68, &qword_1B4D458E0);
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v21 - v7;
  v9 = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B4CAAF78();
  v25 = v8;
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  v13 = v11;
  v15 = v23;
  v14 = v24;
  v34 = 0;
  sub_1B4B59B78();
  sub_1B4D18C0C();
  *v13 = v35;
  v33 = 1;
  sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968098]);
  sub_1B4D18C0C();
  (*(v14 + 32))(&v13[v9[5]], v6, v4);
  v31 = 2;
  sub_1B4B59BCC();
  sub_1B4D18C0C();
  v13[v9[6]] = v32;
  type metadata accessor for HKWorkoutActivityType(0);
  v30 = 3;
  sub_1B4CAAFCC(&qword_1EB8AAFD8, &protocol conformance descriptor for HKWorkoutActivityType);
  sub_1B4D18C0C();
  *&v13[v9[7]] = v28;
  v29 = 4;
  v16 = sub_1B4D18BBC();
  v18 = v17;
  (*(v15 + 8))(v25, v26);
  v19 = &v13[v9[8]];
  *v19 = v16;
  v19[1] = v18;
  sub_1B4A6C1F0(v13, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return sub_1B4CAB010(v13);
}

uint64_t _s19FitnessIntelligence28WorkoutVoiceMostCaloriesFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24[-v10];
  v12 = *a1;
  v13 = *a2;
  if (v12 > 0x11)
  {
    if (v12 == 18)
    {
      if (v13 == 18)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v12 != 19)
      {
        goto LABEL_10;
      }

      if (v13 == 19)
      {
        goto LABEL_16;
      }
    }

LABEL_22:
    v22 = 0;
    return v22 & 1;
  }

  if (v12 == 16)
  {
    if (v13 == 16)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v12 != 17)
  {
LABEL_10:
    if ((v13 & 0xFC) == 0x10)
    {
      goto LABEL_22;
    }

    v24[15] = v12;
    v24[14] = v13;
    v14 = v9;
    DistanceReference.rawValue.getter();
    DistanceReference.rawValue.getter();
    sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
    v15 = sub_1B4D1816C();
    v16 = *(v5 + 8);
    v16(v7, v14);
    v16(v11, v14);
    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v13 != 17)
  {
    goto LABEL_22;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v17 = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4975E34(a1[v17[6]], a2[v17[6]]) & 1) == 0 || *&a1[v17[7]] != *&a2[v17[7]])
  {
    goto LABEL_22;
  }

  v18 = v17[8];
  v19 = *&a1[v18];
  v20 = *&a1[v18 + 8];
  v21 = &a2[v18];
  if (v19 == *v21 && v20 == *(v21 + 1))
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_1B4D18DCC();
  }

  return v22 & 1;
}

unint64_t sub_1B4CAAF78()
{
  result = qword_1EB8ADE60;
  if (!qword_1EB8ADE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE60);
  }

  return result;
}

uint64_t sub_1B4CAAFCC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKWorkoutActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4CAB010(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4CAB094(uint64_t a1)
{
  sub_1B4CAB138(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKWorkoutActivityType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4CAB138(uint64_t a1)
{
  if (!qword_1EB8A9F50)
  {
    sub_1B4BBBFA0();
    v1 = sub_1B4D1746C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB8A9F50);
    }
  }
}

unint64_t sub_1B4CAB1A4()
{
  result = qword_1EB8ADE80;
  if (!qword_1EB8ADE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE80);
  }

  return result;
}

unint64_t sub_1B4CAB1FC()
{
  result = qword_1EB8ADE88;
  if (!qword_1EB8ADE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE88);
  }

  return result;
}

unint64_t sub_1B4CAB254()
{
  result = qword_1EB8ADE90;
  if (!qword_1EB8ADE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE90);
  }

  return result;
}

uint64_t static SignificantDistanceDuringWorkoutFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49C016C;

  return sub_1B4CAC990(a1, a2, a3, a4);
}

uint64_t SignificantDistanceDuringWorkoutFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4CAB408@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t SignificantDistanceDuringWorkoutFact.makePrompt(promptFormatter:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - v3;
  LOBYTE(v9[0]) = *(v0 + 8);
  DistanceReference.rawValue.getter();
  sub_1B4D1232C();
  sub_1B4BC79D0();
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v5 = sub_1B4D1878C();
  v7 = v6;
  (*(v2 + 8))(v4, v1);

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD000000000000021, 0x80000001B4D66C20);
  MEMORY[0x1B8C7C620](v5, v7);

  MEMORY[0x1B8C7C620](0xD000000000000011, 0x80000001B4D66C50);
  return v9[0];
}

uint64_t sub_1B4CAB608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49C0344;

  return sub_1B4CAC990(a1, a2, a3, a4);
}

void sub_1B4CAB6D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE4F4(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1B4CAB744(v4);
  *a1 = v2;
}

void sub_1B4CAB744(int64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4D18D4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B4D1844C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1B4CABA28(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B4CAB83C(0, v2, 1, a1);
  }
}

void sub_1B4CAB83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v26 = a2;
  if (a3 != a2)
  {
    v15 = *a4;
    v16 = (v12 + 8);
    v17 = (v15 + a3);
    v18 = a1 - a3;
LABEL_5:
    v28 = v17;
    v29 = a3;
    v19 = *(v15 + a3);
    v27 = v18;
    v20 = v17;
    while (1)
    {
      v21 = *(v20 - 1);
      v31 = v19;
      DistanceReference.rawValue.getter();
      v30 = v21;
      DistanceReference.rawValue.getter();
      sub_1B49A2254();
      v22 = sub_1B4D180EC();
      v23 = *v16;
      (*v16)(v10, v8);
      v23(v14, v8);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v29 + 1;
        v17 = v28 + 1;
        v18 = v27 - 1;
        if (v29 + 1 == v26)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v15)
      {
        break;
      }

      v19 = *v20;
      *v20 = *(v20 - 1);
      *--v20 = v19;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4CABA28(char **a1, uint64_t a2, int64_t *a3, uint64_t a4)
{
  v105 = a4;
  v106 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v102 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v102 - v14;
  v113 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v4 = *v106;
    if (!*v106)
    {
      goto LABEL_130;
    }

    v16 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v114;
    if (isUniquelyReferenced_nonNull_native)
    {
      v97 = v16;
    }

    else
    {
LABEL_124:
      v97 = sub_1B4CDDE84(v16);
    }

    v124 = v97;
    v16 = *(v97 + 2);
    if (v16 >= 2)
    {
      while (*v113)
      {
        v98 = *&v97[16 * v16];
        v99 = v97;
        v100 = *&v97[16 * v16 + 24];
        sub_1B4CAC2D8((*v113 + v98), (*v113 + *&v97[16 * v16 + 16]), (*v113 + v100), v4);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v100 < v98)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_1B4CDDE84(v99);
        }

        if ((v16 - 2) >= *(v99 + 2))
        {
          goto LABEL_118;
        }

        v101 = &v99[16 * v16];
        *v101 = v98;
        *(v101 + 1) = v100;
        v124 = v99;
        sub_1B4CDDDF8(v16 - 1);
        v97 = v124;
        v16 = *(v124 + 2);
        if (v16 <= 1)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_128;
    }

LABEL_102:

    return;
  }

  v16 = 0;
  v118 = (v13 + 8);
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v104 = v17;
      v19 = *(*v113 + v16);
      v5 = v15;
      v110 = *v113;
      v20 = *(v110 + v18);
      v123 = v19;
      v21 = v111;
      DistanceReference.rawValue.getter();
      v122 = v20;
      v22 = v112;
      DistanceReference.rawValue.getter();
      sub_1B49A2254();
      v23 = v119;
      LODWORD(v117) = sub_1B4D180EC();
      v24 = v18;
      v25 = *v118;
      (*v118)(v22, v23);
      v25(v21, v23);
      v109 = v5;
      v26 = (v5 - 2);
      v103 = v24;
      v4 = v24;
      while (v26 != v4)
      {
        v27 = v111;
        v28 = *(v110 + v4 + 1);
        v121 = *(v110 + v4 + 2);
        DistanceReference.rawValue.getter();
        v120 = v28;
        v5 = v112;
        DistanceReference.rawValue.getter();
        v29 = v119;
        v30 = sub_1B4D180EC() & 1;
        v25(v5, v29);
        v25(v27, v29);
        ++v4;
        if ((v117 & 1) != v30)
        {
          v16 = v4 + 1;
          goto LABEL_10;
        }
      }

      v16 = v109;
LABEL_10:
      v17 = v104;
      v31 = v105;
      v18 = v103;
      if ((v117 & 1) == 0)
      {
        goto LABEL_21;
      }

      if (v16 < v103)
      {
        goto LABEL_121;
      }

      if (v103 >= v16)
      {
        goto LABEL_21;
      }

      v32 = v16 - 1;
      v33 = v103;
      do
      {
        if (v33 != v32)
        {
          v36 = *v113;
          if (!*v113)
          {
            goto LABEL_127;
          }

          v34 = *(v36 + v33);
          *(v36 + v33) = *(v36 + v32);
          *(v36 + v32) = v34;
        }
      }

      while (++v33 < v32--);
    }

    v31 = v105;
LABEL_21:
    v37 = v113[1];
    if (v16 < v37)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_120;
      }

      if (v16 - v18 < v31)
      {
        v38 = v18 + v31;
        if (__OFADD__(v18, v31))
        {
          goto LABEL_122;
        }

        if (v38 >= v37)
        {
          v38 = v113[1];
        }

        if (v38 < v18)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v16 != v38)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v16 < v18)
    {
      goto LABEL_119;
    }

    v49 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = v49;
    }

    else
    {
      v17 = sub_1B4A1D58C(0, *(v49 + 2) + 1, 1, v49);
    }

    v4 = *(v17 + 2);
    v50 = *(v17 + 3);
    v51 = v4 + 1;
    if (v4 >= v50 >> 1)
    {
      v17 = sub_1B4A1D58C((v50 > 1), v4 + 1, 1, v17);
    }

    *(v17 + 2) = v51;
    v52 = &v17[16 * v4];
    *(v52 + 4) = v18;
    *(v52 + 5) = v16;
    v53 = *v106;
    if (!*v106)
    {
      goto LABEL_129;
    }

    if (v4)
    {
      while (1)
      {
        v5 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v17 + 4);
          v55 = *(v17 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_58:
          if (v57)
          {
            goto LABEL_108;
          }

          v70 = &v17[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_111;
          }

          v76 = &v17[16 * v5 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_115;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v5 = v51 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v80 = &v17[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_72:
        if (v75)
        {
          goto LABEL_110;
        }

        v83 = &v17[16 * v5];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_113;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_79:
        v4 = v5 - 1;
        if (v5 - 1 >= v51)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v113)
        {
          goto LABEL_126;
        }

        v91 = v17;
        v92 = *&v17[16 * v4 + 32];
        v93 = *&v17[16 * v5 + 40];
        v94 = v114;
        sub_1B4CAC2D8((*v113 + v92), (*v113 + *&v17[16 * v5 + 32]), (*v113 + v93), v53);
        v114 = v94;
        if (v94)
        {
          goto LABEL_102;
        }

        if (v93 < v92)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1B4CDDE84(v91);
        }

        if (v4 >= *(v91 + 2))
        {
          goto LABEL_105;
        }

        v95 = &v91[16 * v4];
        *(v95 + 4) = v92;
        *(v95 + 5) = v93;
        v124 = v91;
        sub_1B4CDDDF8(v5);
        v17 = v124;
        v51 = *(v124 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v17[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_106;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_107;
      }

      v65 = &v17[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_109;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_112;
      }

      if (v69 >= v61)
      {
        v87 = &v17[16 * v5 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_116;
        }

        if (v56 < v90)
        {
          v5 = v51 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v15 = v113[1];
    if (v16 >= v15)
    {
      goto LABEL_91;
    }
  }

  v103 = v18;
  v104 = v17;
  v117 = *v113;
  v4 = v117 + v16;
  v39 = v18 - v16;
  v107 = v38;
LABEL_31:
  v109 = v4;
  v110 = v16;
  v40 = *(v117 + v16);
  v108 = v39;
  while (1)
  {
    v41 = *(v4 - 1);
    v42 = [objc_opt_self() *off_1E7C11D18[v40]];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v43 = v115;
    sub_1B4D1741C();
    v44 = [objc_opt_self() *off_1E7C11D18[v41]];
    v45 = v116;
    sub_1B4D1741C();
    sub_1B49A2254();
    v5 = v119;
    v46 = sub_1B4D180EC();
    v47 = *v118;
    (*v118)(v45, v5);
    v47(v43, v5);
    if ((v46 & 1) == 0)
    {
LABEL_30:
      v16 = v110 + 1;
      v4 = (v109 + 1);
      v39 = v108 - 1;
      if (v110 + 1 != v107)
      {
        goto LABEL_31;
      }

      v16 = v107;
      v18 = v103;
      v17 = v104;
      goto LABEL_38;
    }

    if (!v117)
    {
      break;
    }

    v40 = *v4;
    *v4 = *(v4 - 1);
    *--v4 = v40;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_30;
    }
  }

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
}
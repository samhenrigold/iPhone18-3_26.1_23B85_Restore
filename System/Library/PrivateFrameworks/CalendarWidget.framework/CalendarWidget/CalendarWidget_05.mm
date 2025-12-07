uint64_t sub_1E47EF72C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a3;
  v24 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEA8, &qword_1E487FA28);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEB0, &qword_1E487FA30);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(a1 + 72);
  *v18 = sub_1E4877F6C();
  *(v18 + 1) = v19;
  v18[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEB8, &qword_1E487FA38);
  sub_1E47EF9D0(a1, &v18[*(v20 + 44)]);
  sub_1E47ED570(a1, v23, v24, v12);
  sub_1E4773850(v18, v16, &qword_1ECF7CEB0, &qword_1E487FA30);
  sub_1E4773850(v12, v10, &qword_1ECF7CEA8, &qword_1E487FA28);
  sub_1E4773850(v16, a5, &qword_1ECF7CEB0, &qword_1E487FA30);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEC0, &qword_1E487FA40);
  sub_1E4773850(v10, a5 + *(v21 + 48), &qword_1ECF7CEA8, &qword_1E487FA28);
  sub_1E47738B8(v12, &qword_1ECF7CEA8, &qword_1E487FA28);
  sub_1E47738B8(v18, &qword_1ECF7CEB0, &qword_1E487FA30);
  sub_1E47738B8(v10, &qword_1ECF7CEA8, &qword_1E487FA28);
  sub_1E47738B8(v16, &qword_1ECF7CEB0, &qword_1E487FA30);
}

uint64_t sub_1E47EF9D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF18, &qword_1E487FAA8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE38, &qword_1E487F9B8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47ECAAC(a1, v14);
  sub_1E487883C();
  sub_1E487889C();
  sub_1E4877BCC();
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF20, &qword_1E487FAB0) + 36)];
  v16 = v25;
  *v15 = v24;
  *(v15 + 1) = v16;
  *(v15 + 2) = v26;
  v17 = *(a1 + 64);
  v18 = &v8[*(v3 + 36)];
  *v18 = 0;
  *(v18 + 1) = v17;
  sub_1E4773850(v14, v12, &qword_1ECF7CE38, &qword_1E487F9B8);
  sub_1E4773850(v8, v6, &qword_1ECF7CF18, &qword_1E487FAA8);
  v19 = v23;
  sub_1E4773850(v12, v23, &qword_1ECF7CE38, &qword_1E487F9B8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF28, &qword_1E487FAB8);
  sub_1E4773850(v6, v19 + *(v20 + 48), &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v8, &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v14, &qword_1ECF7CE38, &qword_1E487F9B8);
  sub_1E47738B8(v6, &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v12, &qword_1ECF7CE38, &qword_1E487F9B8);
}

uint64_t sub_1E47EFCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a3;
  v74 = a2;
  v71 = a5;
  v72 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF60, &qword_1E487FB58);
  v6 = MEMORY[0x1EEE9AC00](v65);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF68, &qword_1E487FB60);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v59 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF18, &qword_1E487FAA8);
  v13 = MEMORY[0x1EEE9AC00](v60);
  v64 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF70, &qword_1E487FB68);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v62 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF78, &qword_1E487FB70);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v68 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF80, &qword_1E487FB78);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v67 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v75 = (&v59 - v29);
  sub_1E4878D2C();
  v66 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = v72;
  v31 = *(v72 + 72);
  v32 = sub_1E4877F6C();
  v33 = v75;
  *v75 = v32;
  v33[1] = v31;
  *(v33 + 16) = 0;
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF88, &qword_1E487FB80) + 44);
  v35 = v30;
  sub_1E47F040C(v30, v34);
  v73 = v25;
  if (a4)
  {
    sub_1E47ED570(v30, v61, a4, v20);
    v36 = *(v30 + 128);
    v37 = &v20[*(v16 + 36)];
    *v37 = 0;
    *(v37 + 1) = v36;
    v38 = v63;
    sub_1E487883C();
    sub_1E487889C();
    sub_1E4877BCC();
    v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF20, &qword_1E487FAB0) + 36));
    v40 = v77;
    *v39 = v76;
    v39[1] = v40;
    v39[2] = v78;
    v41 = *(v35 + 64);
    v42 = (v38 + *(v60 + 36));
    *v42 = 0;
    v42[1] = v41;
    v43 = v62;
    sub_1E4773850(v20, v62, &qword_1ECF7CF70, &qword_1E487FB68);
    v61 = v10;
    v60 = v9;
    v44 = v64;
    sub_1E4773850(v38, v64, &qword_1ECF7CF18, &qword_1E487FAA8);
    sub_1E4773850(v43, v12, &qword_1ECF7CF70, &qword_1E487FB68);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF98, &qword_1E487FB90);
    sub_1E4773850(v44, &v12[*(v45 + 48)], &qword_1ECF7CF18, &qword_1E487FAA8);
    sub_1E47738B8(v38, &qword_1ECF7CF18, &qword_1E487FAA8);
    sub_1E47738B8(v20, &qword_1ECF7CF70, &qword_1E487FB68);
    v46 = v44;
    v35 = v72;
    v25 = v73;
    v9 = v60;
    v10 = v61;
    sub_1E47738B8(v46, &qword_1ECF7CF18, &qword_1E487FAA8);
    sub_1E47738B8(v43, &qword_1ECF7CF70, &qword_1E487FB68);
    sub_1E477372C(v12, v25, &qword_1ECF7CF68, &qword_1E487FB60);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  (*(v10 + 56))(v25, v47, 1, v9);
  v48 = v25;
  v49 = v69;
  sub_1E47ECAAC(v35, v69);
  v50 = *(v35 + 40);
  v51 = (v49 + *(v65 + 36));
  *v51 = 0;
  v51[1] = v50;
  v52 = v75;
  v53 = v67;
  sub_1E4773850(v75, v67, &qword_1ECF7CF80, &qword_1E487FB78);
  v54 = v68;
  sub_1E4773850(v48, v68, &qword_1ECF7CF78, &qword_1E487FB70);
  v55 = v70;
  sub_1E4773850(v49, v70, &qword_1ECF7CF60, &qword_1E487FB58);
  v56 = v71;
  sub_1E4773850(v53, v71, &qword_1ECF7CF80, &qword_1E487FB78);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF90, &qword_1E487FB88);
  sub_1E4773850(v54, v56 + *(v57 + 48), &qword_1ECF7CF78, &qword_1E487FB70);
  sub_1E4773850(v55, v56 + *(v57 + 64), &qword_1ECF7CF60, &qword_1E487FB58);
  sub_1E47738B8(v49, &qword_1ECF7CF60, &qword_1E487FB58);
  sub_1E47738B8(v73, &qword_1ECF7CF78, &qword_1E487FB70);
  sub_1E47738B8(v52, &qword_1ECF7CF80, &qword_1E487FB78);
  sub_1E47738B8(v55, &qword_1ECF7CF60, &qword_1E487FB58);
  sub_1E47738B8(v54, &qword_1ECF7CF78, &qword_1E487FB70);
  sub_1E47738B8(v53, &qword_1ECF7CF80, &qword_1E487FB78);
}

uint64_t sub_1E47F040C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF18, &qword_1E487FAA8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE20, &qword_1E487F9A0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47EDEA8(a1, v14);
  sub_1E487883C();
  sub_1E487889C();
  sub_1E4877BCC();
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF20, &qword_1E487FAB0) + 36)];
  v16 = v25;
  *v15 = v24;
  *(v15 + 1) = v16;
  *(v15 + 2) = v26;
  v17 = *(a1 + 64);
  v18 = &v8[*(v3 + 36)];
  *v18 = 0;
  *(v18 + 1) = v17;
  sub_1E4773850(v14, v12, &qword_1ECF7CE20, &qword_1E487F9A0);
  sub_1E4773850(v8, v6, &qword_1ECF7CF18, &qword_1E487FAA8);
  v19 = v23;
  sub_1E4773850(v12, v23, &qword_1ECF7CE20, &qword_1E487F9A0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA0, &qword_1E487FB98);
  sub_1E4773850(v6, v19 + *(v20 + 48), &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v8, &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v14, &qword_1ECF7CE20, &qword_1E487F9A0);
  sub_1E47738B8(v6, &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v12, &qword_1ECF7CE20, &qword_1E487F9A0);
}

uint64_t sub_1E47F06F8(uint64_t a1)
{
  v2 = sub_1E4877D0C();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E4877DFC();
}

uint64_t sub_1E47F07C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a8@<D3>)
{
  v202 = a3;
  v203 = a2;
  v206 = a1;
  v199 = a4;
  v11 = sub_1E487757C();
  v179 = *(v11 - 8);
  v180 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v178 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v182 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v181 = &v173 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v184 = &v173 - v18;
  v189 = sub_1E487751C();
  v191 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E487739C();
  v21 = *(v20 - 8);
  v197 = v20;
  v198 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v185 = &v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFB0, &qword_1E487FBA8);
  v23 = MEMORY[0x1EEE9AC00](v196);
  v192 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v183 = &v173 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v195 = &v173 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD8, &qword_1E487F920);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v186 = (&v173 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v193 = &v173 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v177 = &v173 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v187 = &v173 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v194 = &v173 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v190 = &v173 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFB8, &qword_1E487FBB0);
  v41 = (v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v173 - v42;
  v44 = sub_1E48782AC();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v173 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD38, &qword_1E48827C0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v50 = &v173 - v49;
  sub_1E487826C();
  v51 = sub_1E487821C();
  v52 = *(v51 - 8);
  v174 = *(v52 + 56);
  v175 = v51;
  v173 = v52 + 56;
  v174(v50, 1, 1);
  v200 = sub_1E487828C();
  v176 = v50;
  sub_1E47738B8(v50, &qword_1ECF7BD38, &qword_1E48827C0);
  sub_1E48782DC();
  (*(v45 + 104))(v47, *MEMORY[0x1E6980EA0], v44);
  sub_1E48782CC();

  (*(v45 + 8))(v47, v44);
  v201 = sub_1E48781FC();

  sub_1E48782DC();
  sub_1E487827C();
  v205 = sub_1E487829C();

  v53 = _AXSPrefersHorizontalTextLayout();
  v54 = sub_1E4877A5C();
  v56 = v55;
  v57 = v55 != 0;
  v58 = v43;
  v59 = &v43[v41[14]];
  v60 = v41[18];
  v61 = v41[22];
  sub_1E4773850(v206, v58, &qword_1ECF7CDD8, &qword_1E487F920);
  v204 = v54;
  *v59 = v54;
  v59[1] = v56;
  v62 = v58;
  *(v58 + v60) = v53 != 0;
  *(v58 + v61) = v57;
  if (v56)
  {

    v63 = v205;
    if (!v53)
    {
      v64 = v193;
      sub_1E487738C();
      v65 = v197;
      v66 = v198;
      (*(v198 + 56))(v64, 0, 1, v197);
      v67 = *(v196 + 48);
      v68 = v192;
      sub_1E4773850(v64, v192, &qword_1ECF7CDD8, &qword_1E487F920);
      sub_1E4773850(v62, v68 + v67, &qword_1ECF7CDD8, &qword_1E487F920);
      v69 = *(v66 + 48);
      if (v69(v68, 1, v65) == 1)
      {
        sub_1E47738B8(v64, &qword_1ECF7CDD8, &qword_1E487F920);
        v70 = v69(v68 + v67, 1, v65);
        v63 = v205;
        if (v70 == 1)
        {
          sub_1E47738B8(v68, &qword_1ECF7CDD8, &qword_1E487F920);
          goto LABEL_24;
        }

        goto LABEL_13;
      }

      v91 = v186;
      sub_1E4773850(v68, v186, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v69(v68 + v67, 1, v65) == 1)
      {
        sub_1E47738B8(v193, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v198 + 8))(v91, v65);
        v63 = v205;
LABEL_13:
        sub_1E47738B8(v68, &qword_1ECF7CFB0, &qword_1E487FBA8);
        goto LABEL_14;
      }

      v109 = v68;
      v110 = v198;
      v111 = v185;
      (*(v198 + 32))(v185, v109 + v67, v65);
      sub_1E47F2C98(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      LODWORD(v196) = sub_1E4878AFC();
      v112 = *(v110 + 8);
      v112(v111, v65);
      sub_1E47738B8(v193, &qword_1ECF7CDD8, &qword_1E487F920);
      v112(v91, v65);
      sub_1E47738B8(v109, &qword_1ECF7CDD8, &qword_1E487F920);
      v63 = v205;
      if (v196)
      {
LABEL_24:
        if (v204 == 0x6573656E696863 && v56 == 0xE700000000000000 || (sub_1E48790EC() & 1) != 0)
        {
          v193 = v56;

          v82 = 3.0;
          goto LABEL_32;
        }
      }
    }

LABEL_14:
    v92 = sub_1E487732C();
    (*(*(v92 - 8) + 8))(v202, v92);
    v93 = sub_1E487753C();
    (*(*(v93 - 8) + 8))(v203, v93);
    sub_1E47738B8(v206, &qword_1ECF7CDD8, &qword_1E487F920);

    sub_1E47738B8(v62, &qword_1ECF7CDD8, &qword_1E487F920);
    v75 = 0;
    v76 = 0;
    v82 = 4.0;
    v79 = 0xE200000000000000;
    v77 = 0.0;
    v80 = 17733;
    v78 = 0;
    v81 = 0.0;
    v83 = 4.0;
    goto LABEL_15;
  }

  v72 = v194;
  v71 = v195;
  v63 = v205;
  if (v53)
  {
LABEL_7:
    v73 = sub_1E487732C();
    (*(*(v73 - 8) + 8))(v202, v73);
    v74 = sub_1E487753C();
    (*(*(v74 - 8) + 8))(v203, v74);
    sub_1E47738B8(v206, &qword_1ECF7CDD8, &qword_1E487F920);
    sub_1E47738B8(v62, &qword_1ECF7CFB8, &qword_1E487FBB0);
    v75 = 0;
    v76 = 0;
    v77 = 0.0;
    v78 = 0;
    v79 = 0xE400000000000000;
    v80 = 1162167621;
    a8 = 0.0;
    v81 = 0.0;
    v82 = 0.0;
    v83 = 0.0;
LABEL_15:
    v94 = 0;
    v95 = 0.0;
    v96 = v199;
    v97 = v200;
    v98 = v201;
    goto LABEL_16;
  }

  v193 = 0;
  v84 = v190;
  sub_1E487738C();
  v86 = v197;
  v85 = v198;
  v87 = *(v198 + 56);
  v192 = v198 + 56;
  v186 = v87;
  (v87)(v84, 0, 1, v197);
  v88 = *(v196 + 48);
  sub_1E4773850(v84, v71, &qword_1ECF7CDD8, &qword_1E487F920);
  v89 = v71;
  sub_1E4773850(v62, v71 + v88, &qword_1ECF7CDD8, &qword_1E487F920);
  v90 = *(v85 + 48);
  if (v90(v89, 1, v86) == 1)
  {
    sub_1E47738B8(v84, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v90(v89 + v88, 1, v86) == 1)
    {
      sub_1E47738B8(v89, &qword_1ECF7CDD8, &qword_1E487F920);
      v82 = 4.0;
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  sub_1E4773850(v89, v72, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v90(v89 + v88, 1, v86) == 1)
  {
    sub_1E47738B8(v190, &qword_1ECF7CDD8, &qword_1E487F920);
    (*(v198 + 8))(v72, v86);
LABEL_19:
    sub_1E47738B8(v89, &qword_1ECF7CFB0, &qword_1E487FBA8);
    goto LABEL_20;
  }

  v116 = v72;
  v117 = v198;
  v118 = v89 + v88;
  v119 = v185;
  (*(v198 + 32))(v185, v118, v86);
  sub_1E47F2C98(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
  v120 = sub_1E4878AFC();
  v121 = *(v117 + 8);
  v121(v119, v197);
  sub_1E47738B8(v190, &qword_1ECF7CDD8, &qword_1E487F920);
  v121(v116, v197);
  v86 = v197;
  sub_1E47738B8(v195, &qword_1ECF7CDD8, &qword_1E487F920);
  v82 = 4.0;
  if ((v120 & 1) == 0)
  {
LABEL_20:
    v104 = v187;
    sub_1E487738C();
    (v186)(v104, 0, 1, v86);
    v105 = *(v196 + 48);
    v106 = v183;
    sub_1E4773850(v104, v183, &qword_1ECF7CDD8, &qword_1E487F920);
    v107 = v106;
    sub_1E4773850(v62, v106 + v105, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v90(v106, 1, v86) == 1)
    {
      sub_1E47738B8(v104, &qword_1ECF7CDD8, &qword_1E487F920);
      v108 = v90(v106 + v105, 1, v86);
      v63 = v205;
      v56 = v193;
      if (v108 == 1)
      {
        sub_1E47738B8(v107, &qword_1ECF7CDD8, &qword_1E487F920);
        goto LABEL_49;
      }
    }

    else
    {
      v113 = v106;
      v114 = v177;
      sub_1E4773850(v113, v177, &qword_1ECF7CDD8, &qword_1E487F920);
      v115 = v90(v107 + v105, 1, v86);
      v63 = v205;
      if (v115 != 1)
      {
        v162 = v198;
        v163 = v185;
        (*(v198 + 32))(v185, v107 + v105, v86);
        sub_1E47F2C98(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
        v164 = sub_1E4878AFC();
        v165 = *(v162 + 8);
        v165(v163, v86);
        sub_1E47738B8(v187, &qword_1ECF7CDD8, &qword_1E487F920);
        v165(v114, v86);
        sub_1E47738B8(v183, &qword_1ECF7CDD8, &qword_1E487F920);
        v56 = v193;
        if ((v164 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_49:
        sub_1E487826C();
        v75 = 1;
        v166 = v176;
        (v174)(v176, 1, 1, v175);
        v167 = sub_1E487828C();
        sub_1E47738B8(v166, &qword_1ECF7BD38, &qword_1E48827C0);

        sub_1E48782DC();
        sub_1E487827C();
        v168 = sub_1E487829C();

        v169 = sub_1E487732C();
        (*(*(v169 - 8) + 8))(v202, v169);
        v170 = sub_1E487753C();
        (*(*(v170 - 8) + 8))(v203, v170);
        sub_1E47738B8(v206, &qword_1ECF7CDD8, &qword_1E487F920);

        sub_1E47738B8(v62, &qword_1ECF7CDD8, &qword_1E487F920);
        v76 = 0;
        v94 = 0;
        v82 = 4.0;
        v81 = -1.0;
        v79 = 0xE400000000000000;
        v77 = -1.5;
        v78 = 0x3FF6666666666666;
        v80 = 1162167621;
        v98 = v168;
        v97 = v167;
        a8 = a6;
        v83 = 4.0;
        v95 = 0.0;
        v96 = v199;
        goto LABEL_16;
      }

      sub_1E47738B8(v187, &qword_1ECF7CDD8, &qword_1E487F920);
      (*(v198 + 8))(v114, v86);
      v56 = v193;
    }

    sub_1E47738B8(v107, &qword_1ECF7CFB0, &qword_1E487FBA8);
    goto LABEL_7;
  }

LABEL_32:
  sub_1E47738B8(v62, &qword_1ECF7CDD8, &qword_1E487F920);
  sub_1E48781AC();
  sub_1E487826C();
  v97 = sub_1E487829C();

  sub_1E48782DC();
  sub_1E487827C();
  v200 = sub_1E487829C();

  v201 = sub_1E481E288(&unk_1F5E7B248);
  v122 = *MEMORY[0x1E6969AB0];
  v123 = v191;
  v125 = v188;
  v124 = v189;
  v197 = *(v191 + 104);
  v197(v188, v122, v189);
  v126 = v202;
  v127 = sub_1E487752C();
  v130 = *(v123 + 8);
  v128 = v123 + 8;
  v129 = v130;
  v130(v125, v124);
  result = v127 - 1;
  if (!__OFSUB__(v127, 1))
  {
    v56 = v193;
    if (v193)
    {
      v196 = v127 - 1;
      v198 = v97;
      v131 = objc_opt_self();
      v132 = v56;
      v133 = sub_1E4878B9C();
      v134 = v178;
      sub_1E487750C();
      v135 = sub_1E487756C();
      (*(v179 + 8))(v134, v180);
      v136 = [v131 overlayCalendarForCalendarIdentifier:v133 timezone:v135];

      v191 = v128;
      if (v136)
      {
        v137 = v181;
        sub_1E487749C();

        v138 = 0;
        v139 = v184;
      }

      else
      {
        v138 = 1;
        v139 = v184;
        v137 = v181;
      }

      v97 = v198;
      v147 = sub_1E487753C();
      v148 = *(v147 - 8);
      (*(v148 + 56))(v137, v138, 1, v147);
      sub_1E47F2A10(v137, v139);
      v149 = v182;
      sub_1E4773850(v139, v182, &qword_1ECF7CFA8, &qword_1E487FBA0);
      v150 = v139;
      v56 = v132;
      if ((*(v148 + 48))(v149, 1, v147) == 1)
      {

        v151 = sub_1E487732C();
        (*(*(v151 - 8) + 8))(v202, v151);
        (*(v148 + 8))(v203, v147);
        sub_1E47738B8(v206, &qword_1ECF7CDD8, &qword_1E487F920);
        sub_1E47738B8(v150, &qword_1ECF7CFA8, &qword_1E487FBA0);
        sub_1E47738B8(v149, &qword_1ECF7CFA8, &qword_1E487FBA0);
        v83 = 4.0;
        v81 = -2.0;
        v75 = 1;
        v79 = 0xE200000000000000;
        v77 = -0.5;
        v78 = 0x4006666666666666;
        v80 = 17733;
        v98 = v200;
      }

      else
      {
        v153 = v188;
        v152 = v189;
        v197(v188, *MEMORY[0x1E6969A48], v189);
        v154 = v202;
        v155 = v149;
        v156 = sub_1E487752C();
        v129(v153, v152);
        v157 = *(v148 + 8);
        v157(v155, v147);
        if (v196 == v156 % 10)
        {
          v158 = v201;
          v63 = v205;
          if (*(v201 + 16) && (v159 = sub_1E481DD30(v196), (v160 & 1) != 0))
          {
            v77 = *(*(v158 + 56) + 8 * v159);
            v161 = sub_1E487732C();
            (*(*(v161 - 8) + 8))(v154, v161);
            v157(v203, v147);
            sub_1E47738B8(v206, &qword_1ECF7CDD8, &qword_1E487F920);
            sub_1E47738B8(v184, &qword_1ECF7CFA8, &qword_1E487FBA0);

            v83 = 4.0;
            v75 = 1;
            v79 = 0xE200000000000000;
            v81 = -2.0;
            v78 = 0x4006666666666666;
            v80 = 17733;
            v96 = v199;
            v98 = v200;
            v97 = v198;
            a8 = a5;
            v94 = 0x4006666666666666;
            v76 = 1;
            v95 = v77;
          }

          else
          {

            v172 = sub_1E487732C();
            (*(*(v172 - 8) + 8))(v154, v172);
            v157(v203, v147);
            sub_1E47738B8(v206, &qword_1ECF7CDD8, &qword_1E487F920);
            sub_1E47738B8(v184, &qword_1ECF7CFA8, &qword_1E487FBA0);
            v83 = 4.0;
            v81 = -2.0;
            v75 = 1;
            v79 = 0xE200000000000000;
            v77 = -0.5;
            v78 = 0x4006666666666666;
            v80 = 17733;
            v96 = v199;
            v98 = v200;
            v97 = v198;
            a8 = a5;
            v94 = 0x4006666666666666;
            v76 = 1;
            v95 = -0.5;
          }

          goto LABEL_16;
        }

        v171 = sub_1E487732C();
        (*(*(v171 - 8) + 8))(v154, v171);
        v157(v203, v147);
        sub_1E47738B8(v206, &qword_1ECF7CDD8, &qword_1E487F920);
        sub_1E47738B8(v184, &qword_1ECF7CFA8, &qword_1E487FBA0);
        v83 = 4.0;
        v81 = -2.0;
        v75 = 1;
        v79 = 0xE200000000000000;
        v77 = -0.5;
        v78 = 0x4006666666666666;
        v80 = 17733;
        v98 = v200;
        v97 = v198;
      }

      a8 = a5;
      v94 = 0x4006666666666666;
      v76 = 1;
      v95 = -0.5;
    }

    else
    {
      v140 = v201;
      if (*(v201 + 16) && (v141 = sub_1E481DD30(result), (v142 & 1) != 0))
      {
        v77 = *(*(v140 + 56) + 8 * v141);
        v143 = sub_1E487732C();
        (*(*(v143 - 8) + 8))(v126, v143);
        v144 = sub_1E487753C();
        (*(*(v144 - 8) + 8))(v203, v144);
        sub_1E47738B8(v206, &qword_1ECF7CDD8, &qword_1E487F920);

        v95 = 0.0;
        v83 = 4.0;
        v75 = 1;
        v79 = 0xE200000000000000;
        v78 = 0x4006666666666666;
        v80 = 17733;
        v98 = v200;
        v81 = -2.0;
      }

      else
      {

        v145 = sub_1E487732C();
        (*(*(v145 - 8) + 8))(v126, v145);
        v146 = sub_1E487753C();
        (*(*(v146 - 8) + 8))(v203, v146);
        sub_1E47738B8(v206, &qword_1ECF7CDD8, &qword_1E487F920);
        v95 = 0.0;
        v83 = 4.0;
        v81 = -2.0;
        v75 = 1;
        v79 = 0xE200000000000000;
        v78 = 0x4006666666666666;
        v80 = 17733;
        v98 = v200;
        v77 = -0.5;
      }

      a8 = a5;
      v94 = 0x4006666666666666;
      v76 = 1;
    }

    v96 = v199;
    v63 = v205;
LABEL_16:
    LOBYTE(v208) = v75;
    *(&v208 + 1) = v237[0];
    DWORD1(v208) = *(v237 + 3);
    *(&v208 + 1) = v97;
    *&v209 = v98;
    *(&v209 + 1) = v80;
    *&v210 = v79;
    *(&v210 + 1) = v77;
    *&v211 = v78;
    *(&v211 + 1) = a8;
    *&v212 = v81;
    *(&v212 + 1) = v82;
    *&v213 = v83;
    *(&v213 + 1) = v204;
    *&v214 = v56;
    *(&v214 + 1) = v63;
    *&v215 = v94;
    BYTE8(v215) = v76;
    *(&v215 + 9) = *v236;
    HIDWORD(v215) = *&v236[3];
    v216 = v95;
    v217 = v75;
    *v218 = v237[0];
    *&v218[3] = *(v237 + 3);
    v219 = v97;
    v220 = v98;
    v221 = v80;
    v222 = v79;
    v223 = v77;
    v224 = v78;
    v225 = a8;
    v226 = v81;
    v227 = v82;
    v228 = v83;
    v229 = v204;
    v230 = v56;
    v231 = v63;
    v232 = v94;
    v233 = v76;
    *&v234[3] = *&v236[3];
    *v234 = *v236;
    v235 = v95;
    sub_1E47F29D8(&v208, &v207);
    result = sub_1E47F2274(&v217);
    v100 = v215;
    *(v96 + 96) = v214;
    *(v96 + 112) = v100;
    *(v96 + 128) = v216;
    v101 = v211;
    *(v96 + 32) = v210;
    *(v96 + 48) = v101;
    v102 = v213;
    *(v96 + 64) = v212;
    *(v96 + 80) = v102;
    v103 = v209;
    *v96 = v208;
    *(v96 + 16) = v103;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1E47F22A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

void sub_1E47F22F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

unint64_t sub_1E47F2344()
{
  result = qword_1EE2B11E0;
  if (!qword_1EE2B11E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE38, &qword_1E487F9B8);
    sub_1E47F23D0();
    sub_1E47F256C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11E0);
  }

  return result;
}

unint64_t sub_1E47F23D0()
{
  result = qword_1EE2B1350;
  if (!qword_1EE2B1350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE48, &qword_1E487F9C8);
    sub_1E47F2488();
    sub_1E4773680(&qword_1EE2B1278, &qword_1ECF7CE68, &qword_1E487F9E8, MEMORY[0x1E697F550]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1350);
  }

  return result;
}

unint64_t sub_1E47F2488()
{
  result = qword_1EE2B1468;
  if (!qword_1EE2B1468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE50, &qword_1E487F9D0);
    sub_1E4773680(&qword_1EE2B0F50, &qword_1ECF7CE58, &qword_1E487F9D8, MEMORY[0x1E6981808]);
    sub_1E4773680(&qword_1EE2B1108, &qword_1ECF7CE60, &qword_1E487F9E0, MEMORY[0x1E697FDC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1468);
  }

  return result;
}

unint64_t sub_1E47F256C()
{
  result = qword_1EE2B13F8;
  if (!qword_1EE2B13F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE70, &qword_1E487F9F0);
    sub_1E47F2624();
    sub_1E4773680(&qword_1EE2B10B8, &qword_1ECF7CE90, &qword_1E487FA10, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13F8);
  }

  return result;
}

unint64_t sub_1E47F2624()
{
  result = qword_1EE2B1558;
  if (!qword_1EE2B1558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE78, &qword_1E487F9F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE80, &qword_1E487FA00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE88, &qword_1E487FA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E477A490();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1558);
  }

  return result;
}

unint64_t sub_1E47F276C()
{
  result = qword_1ECF7CF00;
  if (!qword_1ECF7CF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CEF0, &qword_1E487FA70);
    sub_1E47F2824();
    sub_1E4773680(&qword_1EE2B1278, &qword_1ECF7CE68, &qword_1E487F9E8, MEMORY[0x1E697F550]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CF00);
  }

  return result;
}

unint64_t sub_1E47F2824()
{
  result = qword_1ECF7CF08;
  if (!qword_1ECF7CF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CEE8, &qword_1E487FA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CED8, &qword_1E487FA58);
    sub_1E4773680(&qword_1ECF7CEF8, &qword_1ECF7CED8, &qword_1E487FA58, MEMORY[0x1E6981808]);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B1108, &qword_1ECF7CE60, &qword_1E487F9E0, MEMORY[0x1E697FDC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CF08);
  }

  return result;
}

unint64_t sub_1E47F294C()
{
  result = qword_1ECF7CF10;
  if (!qword_1ECF7CF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CEC8, &qword_1E487FA48);
    sub_1E47F276C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CF10);
  }

  return result;
}

uint64_t sub_1E47F2A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1E47F2AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E47F2AFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E47F2B6C()
{
  result = qword_1EE2B1520;
  if (!qword_1EE2B1520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CDD0, &qword_1E487F918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CDC0, &qword_1E487F908);
    sub_1E4773680(&qword_1EE2B0FA0, &qword_1ECF7CDC0, &qword_1E487F908, MEMORY[0x1E6981800]);
    swift_getOpaqueTypeConformance2();
    sub_1E47F2C98(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1520);
  }

  return result;
}

uint64_t sub_1E47F2C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E47F2CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7CFC0;
  if (!qword_1ECF7CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CFC0);
  }

  return result;
}

uint64_t type metadata accessor for DayEvents(uint64_t a1)
{
  result = qword_1EE2B47A0;
  if (!qword_1EE2B47A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47F2DBC(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47F2E50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E47F2E50(uint64_t a1)
{
  if (!qword_1EE2B0DE0)
  {
    type metadata accessor for Event(255);
    v1 = sub_1E4878CFC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2B0DE0);
    }
  }
}

uint64_t sub_1E47F2EA8()
{
  v1 = v0;
  v2 = type metadata accessor for DayEvents(0);
  v3 = v2;
  v4 = *(v0 + *(v2 + 20));
  if (*(v4 + 16) || *(*(v0 + *(v2 + 24)) + 16))
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1E4878F9C();
    v33 = 0;
    v34 = 0xE000000000000000;
    v32 = v3;
    v5 = __swift_allocate_boxed_opaque_existential_0(&v30);
    sub_1E47F3A28(v0, v5, type metadata accessor for DayEvents);
    __swift_project_boxed_opaque_existential_0(&v30, v32);
    swift_getDynamicType();
    swift_getMetatypeMetadata();
    v6 = sub_1E4878BFC();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(&v30);
    MEMORY[0x1E69192D0](v6, v8);

    MEMORY[0x1E69192D0](0x5B20796164203ALL, 0xE700000000000000);
    if (qword_1EE2B1880 != -1)
    {
      swift_once();
    }

    v9 = qword_1EE2B1888;
    v10 = sub_1E48772BC();
    v11 = [v9 stringFromDate_];

    v12 = sub_1E4878BDC();
    v14 = v13;

    MEMORY[0x1E69192D0](v12, v14);

    MEMORY[0x1E69192D0](1528835165, 0xE400000000000000);
    v30 = *(v4 + 16);
    v15 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v15);

    MEMORY[0x1E69192D0](0x73746E657665205DLL, 0xEB000000005B202CLL);
    v30 = *(*(v1 + *(v3 + 24)) + 16);
    v16 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v16);

    MEMORY[0x1E69192D0](0xD00000000000002ALL, 0x80000001E48A81D0);
    if (*(v1 + *(v3 + 28)))
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (*(v1 + *(v3 + 28)))
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1E4878F9C();
    v33 = 0;
    v34 = 0xE000000000000000;
    v32 = v3;
    v20 = __swift_allocate_boxed_opaque_existential_0(&v30);
    sub_1E47F3A28(v0, v20, type metadata accessor for DayEvents);
    __swift_project_boxed_opaque_existential_0(&v30, v32);
    swift_getDynamicType();
    swift_getMetatypeMetadata();
    v21 = sub_1E4878BFC();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v30);
    MEMORY[0x1E69192D0](v21, v23);

    MEMORY[0x1E69192D0](0x5B20796164203ALL, 0xE700000000000000);
    if (qword_1EE2B1880 != -1)
    {
      swift_once();
    }

    v24 = qword_1EE2B1888;
    v25 = sub_1E48772BC();
    v26 = [v24 stringFromDate_];

    v27 = sub_1E4878BDC();
    v29 = v28;

    MEMORY[0x1E69192D0](v27, v29);

    MEMORY[0x1E69192D0](0xD000000000000026, 0x80000001E48A8200);
    if (*(v1 + *(v3 + 28)))
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (*(v1 + *(v3 + 28)))
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }
  }

  MEMORY[0x1E69192D0](v17, v18);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  return v33;
}

uint64_t sub_1E47F3320(int *a1)
{
  sub_1E487914C();
  sub_1E487732C();
  sub_1E47F35A0(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E4878AAC();
  sub_1E47F3784(v4, *(v1 + a1[5]));
  sub_1E47F3784(v4, *(v1 + a1[6]));
  sub_1E487916C();
  return sub_1E487917C();
}

uint64_t sub_1E47F33E4(uint64_t a1, int *a2)
{
  sub_1E487732C();
  sub_1E47F35A0(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E4878AAC();
  sub_1E47F3784(a1, *(v2 + a2[5]));
  sub_1E47F3784(a1, *(v2 + a2[6]));
  return sub_1E487916C();
}

uint64_t sub_1E47F3490(uint64_t a1, int *a2)
{
  sub_1E487914C();
  sub_1E487732C();
  sub_1E47F35A0(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E4878AAC();
  sub_1E47F3784(v5, *(v2 + a2[5]));
  sub_1E47F3784(v5, *(v2 + a2[6]));
  sub_1E487916C();
  return sub_1E487917C();
}

uint64_t sub_1E47F35A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E47F35E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1E47F3A28(v13, v10, type metadata accessor for Event);
        sub_1E47F3A28(v14, v7, type metadata accessor for Event);
        v16 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_1E47710AC(v7);
        sub_1E47710AC(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1E47F3784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for Event(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v24[1] = a1;
  result = MEMORY[0x1E6919800](v11);
  if (v11)
  {
    v24[0] = *(v7 + 44);
    v13 = *(v7 + 52);
    v14 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    do
    {
      sub_1E47F3A28(v14, v10, type metadata accessor for Event);
      v24[2] = 0;
      v24[3] = 0xE000000000000000;
      sub_1E4771108(&v10[v24[0]], v6);
      v20 = sub_1E487725C();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v6, 1, v20) == 1)
      {
        sub_1E479D2F4(v6);
        v16 = 0;
        v17 = 0xE000000000000000;
      }

      else
      {
        v22 = sub_1E487723C();
        v17 = v23;
        (*(v21 + 8))(v6, v20);
        v16 = v22;
      }

      MEMORY[0x1E69192D0](v16, v17);

      MEMORY[0x1E69192D0](45, 0xE100000000000000);
      if (v10[v13])
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (v10[v13])
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      MEMORY[0x1E69192D0](v18, v19);

      sub_1E4878C0C();

      result = sub_1E47710AC(v10);
      v14 += v15;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1E47F3A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47F3A90(uint64_t a1, uint64_t a2)
{
  if (sub_1E48772EC() & 1) != 0 && (v4 = type metadata accessor for DayEvents(0), (sub_1E47F35E8(*(a1 + v4[5]), *(a2 + v4[5]))) && (sub_1E47F35E8(*(a1 + v4[6]), *(a2 + v4[6])))
  {
    v5 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1E47F3BC4(double a1, double a2)
{
  v3 = sub_1E487757C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487732C();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v14 = &v20 - v13;
  if (__OFSUB__(*(v2 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow), *(v2 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow)))
  {
    __break(1u);
  }

  else
  {
    v20 = v12;
    v21 = result;
    sub_1E48772AC();
    sub_1E487750C();
    v15 = sub_1E487754C();
    v16 = *(v4 + 8);
    v16(v6, v3);
    sub_1E487750C();
    v17 = sub_1E487754C();
    result = (v16)(v6, v3);
    if (!__OFSUB__(v15, v17))
    {
      sub_1E48772AC();
      sub_1E487727C();
      v18 = v21;
      v19 = *(v20 + 8);
      v19(v10, v21);
      return (v19)(v14, v18);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47F3EA0(double a1)
{
  v2 = v1;
  v3 = sub_1E48770FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487757C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487732C();
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow);
  v17 = *(v2 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow);
  v18 = __OFSUB__(v16, v17);
  v19 = v16 - v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_7;
  }

  v31 = v19;
  v32 = v13;
  v33 = result;
  v34 = v4;
  v35 = v3;
  v36 = v6;
  sub_1E487726C();
  sub_1E487750C();
  v20 = sub_1E487754C();
  v21 = *(v8 + 8);
  v21(v10, v7);
  sub_1E487750C();
  v22 = sub_1E487754C();
  result = (v21)(v10, v7);
  v18 = __OFSUB__(v20, v22);
  v23 = v20 - v22;
  if (v18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v24 = sub_1E487751C();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E487A7E0;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x1E6969A98], v24);
  sub_1E486B81C(v27);
  swift_setDeallocating();
  (*(v25 + 8))(v27 + v26, v24);
  swift_deallocClassInstance();
  v28 = v36;
  sub_1E487746C();

  result = sub_1E48770DC();
  if (v29)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v30 = result;
  (*(v34 + 8))(v28, v35);
  result = (*(v32 + 8))(v15, v33);
  if (__OFSUB__(v30, v23))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1E47F4470(uint64_t a1)
{
  result = sub_1E487732C();
  if (v2 <= 0x3F)
  {
    result = sub_1E487753C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

double sub_1E47F4B30()
{
  v1 = v0;
  v2 = sub_1E487732C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  v7 = v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  v8 = v7 + *(type metadata accessor for Event(0) + 20);
  sub_1E47A7308();
  if (sub_1E4878ADC())
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  (*(v3 + 16))(v5, v9, v2);
  sub_1E487727C();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  sub_1E47F3EA0(v11);
  v13 = v12 - CGRectGetMinY(*(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame));
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  return *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_lineHeight) + v13;
}

uint64_t sub_1E47F4E00()
{
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  sub_1E4878F9C();
  v12 = v10;
  *(&v11 + 1) = type metadata accessor for SpatialEventViewModel(0);
  *&v10 = v0;
  __swift_project_boxed_opaque_existential_0(&v10, *(&v11 + 1));
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v1 = v0;
  v2 = sub_1E4878BFC();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v10);
  MEMORY[0x1E69192D0](v2, v4);

  MEMORY[0x1E69192D0](2108704, 0xE300000000000000);
  v5 = sub_1E47CC708();
  MEMORY[0x1E69192D0](v5);

  MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48A86E0);
  v6 = sub_1E4878D3C();
  MEMORY[0x1E69192D0](v6);

  MEMORY[0x1E69192D0](0xD000000000000011, 0x80000001E48A8700);
  v7 = sub_1E4878D3C();
  MEMORY[0x1E69192D0](v7);

  MEMORY[0x1E69192D0](0x646567617473202CLL, 0xEF203A656D617246);
  v10 = *&v1[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame];
  v11 = *&v1[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame + 16];
  type metadata accessor for CGRect(0);
  sub_1E487902C();
  MEMORY[0x1E69192D0](0x6548656E696C202CLL, 0xEE00203A74686769);
  v8 = sub_1E4878D3C();
  MEMORY[0x1E69192D0](v8);

  return v12;
}

id sub_1E47F5088(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E47F51D0(uint64_t a1)
{
  result = type metadata accessor for Event(319);
  if (v2 <= 0x3F)
  {
    result = sub_1E487732C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeSpatialContentView(uint64_t a1)
{
  result = qword_1EE2B2470;
  if (!qword_1EE2B2470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E47F5378()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LargeSpatialContentView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E47F54D0()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for LargeSpatialContentView(0) + 32));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E47F5620@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MultiDaySpatialView(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC00, &qword_1E487B5C0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = sub_1E487732C();
  (*(*(v10 - 8) + 16))(v6, v1, v10);
  v11 = *(v1 + *(type metadata accessor for LargeSpatialContentView(0) + 20));
  *&v6[v4[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *&v6[v4[7]] = v11;
  *&v6[v4[8]] = 2;
  v6[v4[9]] = 0;
  v13 = &v6[v4[11]];
  *v13 = KeyPath;
  v13[8] = 0;

  v14 = sub_1E487813C();
  if (sub_1E47F5378())
  {
    sub_1E47F54D0();
  }

  sub_1E4877B0C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1E47836C4(v6, v9);
  v23 = &v9[*(v7 + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = *MEMORY[0x1E697F638];
  v25 = sub_1E4877F9C();
  v26 = *(v25 - 8);
  (*(v26 + 104))(a1, v24, v25);
  (*(v26 + 56))(a1, 0, 1, v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC08, &qword_1E487FE80);
  sub_1E4783728(v9, a1 + *(v27 + 36));
  *(a1 + *(v27 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E47F590C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E47F5954(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E47F59A0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E48790EC();
  }
}

uint64_t type metadata accessor for WideTextHeaderView(uint64_t a1)
{
  result = qword_1EE2B2E80;
  if (!qword_1EE2B2E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47F5A44(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47F5B1C(319);
    if (v2 <= 0x3F)
    {
      sub_1E478305C();
      if (v3 <= 0x3F)
      {
        sub_1E47EBD80(319, v3, v4);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E47F5B1C(uint64_t a1)
{
  if (!qword_1EE2B16B8)
  {
    sub_1E487753C();
    v1 = sub_1E4877B4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2B16B8);
    }
  }
}

uint64_t sub_1E47F5B90@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideTextHeaderView(0);
  sub_1E4773850(v1 + *(v10 + 24), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47F5D98()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for WideTextHeaderView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E47F5EF0()
{
  v1 = sub_1E4877F1C();
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = sub_1E487753C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WideTextHeaderView(0);
  sub_1E4773850(v0 + *(v11 + 24), v6, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    v12 = sub_1E4878DDC();
    v13 = sub_1E48780FC();
    sub_1E4877AAC(v12, &dword_1E475C000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v16 + 8))(v3, v17);
  }

  v14 = sub_1E48774CC();
  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

uint64_t sub_1E47F6188(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v34 - v3;
  v34 = sub_1E487757C();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487753C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v34 - v12);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E47F5B90(v13);
  v15 = sub_1E487748C();
  v16 = *(v8 + 8);
  v16(v13, v7);
  [v14 setCalendar_];

  sub_1E47F5B90(v13);
  sub_1E487750C();
  v16(v13, v7);
  v17 = sub_1E487756C();
  (*(v4 + 8))(v6, v34);
  [v14 setTimeZone_];

  sub_1E47F5B90(v11);
  v18 = v35;
  sub_1E48774EC();
  v16(v11, v7);
  v19 = v18;
  v20 = sub_1E487744C();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    v22 = sub_1E48773DC();
    (*(v21 + 8))(v19, v20);
  }

  [v14 setLocale_];

  v23 = sub_1E4878B9C();
  [v14 setLocalizedDateFormatFromTemplate_];

  type metadata accessor for WideTextHeaderView(0);
  v24 = sub_1E48772BC();
  v25 = [v14 stringFromDate_];

  v26 = sub_1E4878BDC();
  v28 = v27;

  v38 = v26;
  v39 = v28;
  sub_1E477A374(v29, v30, v31);
  v32 = sub_1E4878E8C();

  return v32;
}

uint64_t sub_1E47F6578(int a1)
{
  v2 = sub_1E487757C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E487753C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v47 = v43 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v43 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v49 = v43 - v18;
  result = sub_1E4877A5C();
  if (v20)
  {
    v45 = a1;
    v21 = v2;
    v44 = objc_opt_self();
    v22 = sub_1E4878B9C();

    sub_1E47F5B90(v9);
    sub_1E487750C();
    v23 = *(v7 + 8);
    v46 = v6;
    v43[0] = v23;
    v43[1] = v7 + 8;
    v23(v9, v6);
    v24 = sub_1E487756C();
    (*(v3 + 8))(v5, v21);
    v25 = [v44 overlayCalendarForCalendarIdentifier:v22 timezone:v24];

    if (v25)
    {
      sub_1E487749C();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v49;
    v28 = v46;
    (*(v7 + 56))(v17, v26, 1, v46);
    sub_1E47F2A10(v17, v27);
    type metadata accessor for WideTextHeaderView(0);
    v29 = sub_1E48772BC();
    v30 = (v7 + 48);
    if (v45)
    {
      v31 = v47;
      sub_1E4773850(v27, v47, &qword_1ECF7CFA8, &qword_1E487FBA0);
      if ((*v30)(v31, 1, v28) == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = sub_1E487748C();
        (v43[0])(v31, v28);
      }

      v34 = [objc_opt_self() monthDayStringForDate:v29 inCalendar:v32];
    }

    else
    {
      v33 = v48;
      sub_1E4773850(v27, v48, &qword_1ECF7CFA8, &qword_1E487FBA0);
      if ((*v30)(v33, 1, v28) == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = sub_1E487748C();
        (v43[0])(v33, v28);
      }

      v34 = [objc_opt_self() yearMonthDayStringForDate:v29 inCalendar:v32];
    }

    v35 = v34;

    if (v35)
    {
      v36 = sub_1E4878BDC();
      v38 = v37;

      v50 = v36;
      v51 = v38;
      sub_1E477A374(v39, v40, v41);
      v42 = sub_1E4878E8C();
      sub_1E47738B8(v27, &qword_1ECF7CFA8, &qword_1E487FBA0);

      return v42;
    }

    else
    {
      sub_1E47738B8(v27, &qword_1ECF7CFA8, &qword_1E487FBA0);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E47F6A74()
{
  v1 = type metadata accessor for WideTextHeaderView(0);
  if (sub_1E4871B7C())
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    v9 = sub_1E48771EC();
    sub_1E477A374(v9, v2, v3);
    v4 = sub_1E4878E8C();

    return v4;
  }

  else
  {
    v6 = (v0 + *(v1 + 36));
    v7 = *v6;
    v8 = v6[1];

    return sub_1E47F6188(v7, v8);
  }
}

uint64_t sub_1E47F6BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0C0, &qword_1E487FFA8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_1E4877FBC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0C8, &qword_1E487FFB0);
  sub_1E47F6E38(a1, &v9[*(v10 + 44)]);
  if (sub_1E47F5EF0() & 1) != 0 && (sub_1E47F5D98())
  {
    v11 = sub_1E487874C();
    v12 = sub_1E48786BC();
    KeyPath = swift_getKeyPath();

    v14 = 1;
  }

  else
  {
    v14 = 0;
    v11 = 0;
    KeyPath = 0;
    v12 = 0;
  }

  sub_1E4773850(v9, v7, &qword_1ECF7D0C0, &qword_1E487FFA8);
  sub_1E4773850(v7, a2, &qword_1ECF7D0C0, &qword_1E487FFA8);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0D0, &qword_1E487FFB8) + 48));
  sub_1E47F22A4(0, v14, v11, KeyPath, v12);
  sub_1E47F22F4(0, v14, v11, KeyPath, v12);
  *v15 = 0;
  v15[1] = v14;
  v15[2] = v11;
  v15[3] = KeyPath;
  v15[4] = v12;
  sub_1E47738B8(v9, &qword_1ECF7D0C0, &qword_1E487FFA8);
  sub_1E47F22F4(0, v14, v11, KeyPath, v12);
  sub_1E47738B8(v7, &qword_1ECF7D0C0, &qword_1E487FFA8);
}

uint64_t sub_1E47F6E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0D8, &qword_1E487FFF8);
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v82 - v3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0E0, &qword_1E4880000);
  MEMORY[0x1EEE9AC00](v97);
  v83 = (&v82 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0E8, &unk_1E4880008);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v100 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v82 - v8;
  v91 = sub_1E48780BC();
  v88 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v82 - v11;
  v84 = sub_1E487753C();
  v13 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v15 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F0, &qword_1E4880018);
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v82 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F8, &qword_1E4880020);
  v17 = MEMORY[0x1EEE9AC00](v102);
  v89 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v82 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D100, &qword_1E4880028);
  v104 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v82 - v21;
  sub_1E4878D2C();
  v95 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v109 = sub_1E47F6A74();
  v110 = v22;
  v86 = sub_1E477A374(v109, v22, v23);
  v24 = sub_1E487848C();
  v26 = v25;
  v28 = v27;
  v29 = sub_1E47F5EF0();
  v105 = v20;
  if (v29)
  {
    sub_1E47F5B90(v15);
    sub_1E48774EC();
    (*(v13 + 8))(v15, v84);
    MEMORY[0x1E6918080](v12);
    sub_1E47738B8(v12, &qword_1ECF7BE58, &unk_1E487DDB0);
  }

  else
  {
    sub_1E48786FC();
  }

  v30 = sub_1E48783FC();
  v32 = v31;
  v34 = v33;

  sub_1E477A3C8(v24, v26, v28 & 1);

  v35 = type metadata accessor for WideTextHeaderView(0);
  v85 = a1;
  v36 = sub_1E487842C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v84 = v41;
  sub_1E477A3C8(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v109 = v36;
  v110 = v38;
  LOBYTE(v111) = v40 & 1;
  v112 = v42;
  v113 = KeyPath;
  v114 = 1;
  v115 = 0;
  v44 = v87;
  sub_1E487809C();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  v46 = sub_1E477A490();
  v47 = v90;
  sub_1E48785AC();
  (*(v88 + 8))(v44, v91);
  sub_1E477A3C8(v36, v38, v40 & 1);

  v91 = v35;
  v109 = sub_1E47F6188(*(v85 + *(v35 + 40)), *(v85 + *(v35 + 40) + 8));
  v110 = v48;
  v49 = sub_1E487848C();
  v51 = v50;
  LOBYTE(v38) = v52;
  v109 = v45;
  v110 = v46;
  swift_getOpaqueTypeConformance2();
  v53 = v89;
  v54 = v94;
  sub_1E487856C();
  sub_1E477A3C8(v49, v51, v38 & 1);

  (*(v92 + 8))(v47, v54);
  v55 = v93;
  sub_1E4877C7C();
  sub_1E47738B8(v53, &qword_1ECF7D0F8, &qword_1E4880020);
  sub_1E47F5EF0();
  v56 = sub_1E47F82D8();
  v57 = v103;
  sub_1E48784AC();
  sub_1E47738B8(v55, &qword_1ECF7D0F8, &qword_1E4880020);
  v58 = sub_1E47F6578(1);
  v60 = v99;
  v61 = v104;
  v62 = v105;
  if (!v59)
  {
    goto LABEL_10;
  }

  v63 = v58;
  v64 = v59;
  v65 = sub_1E47F6578(0);
  if (!v66)
  {

LABEL_10:
    (*(v61 + 16))(v98, v57, v62);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0FF8, &qword_1ECF7D0E0, &qword_1E4880000, MEMORY[0x1E6981800]);
    v109 = v102;
    v110 = v56;
    swift_getOpaqueTypeConformance2();
    sub_1E487803C();
    goto LABEL_11;
  }

  v67 = v65;
  v68 = v66;
  v69 = sub_1E4877F6C();
  v70 = v83;
  *v83 = v69;
  *(v70 + 8) = 0x4010000000000000;
  *(v70 + 16) = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D110, &unk_1E4880068);
  sub_1E47F79D8(v57, v63, v64, v67, v68, (v70 + *(v71 + 44)));

  sub_1E4773850(v70, v98, &qword_1ECF7D0E0, &qword_1E4880000);
  swift_storeEnumTagMultiPayload();
  sub_1E4773680(&qword_1EE2B0FF8, &qword_1ECF7D0E0, &qword_1E4880000, MEMORY[0x1E6981800]);
  v109 = v102;
  v110 = v56;
  swift_getOpaqueTypeConformance2();
  sub_1E487803C();
  sub_1E47738B8(v70, &qword_1ECF7D0E0, &qword_1E4880000);
LABEL_11:
  sub_1E487889C();
  sub_1E4877BCC();
  v102 = v109;
  v98 = v111;
  v72 = v113;
  v73 = v114;
  v108 = 1;
  v107 = v110;
  v106 = v112;
  v74 = v100;
  sub_1E4773850(v60, v100, &qword_1ECF7D0E8, &unk_1E4880008);
  v75 = v60;
  v76 = v108;
  v77 = v107;
  v78 = v106;
  v79 = v101;
  sub_1E4773850(v74, v101, &qword_1ECF7D0E8, &unk_1E4880008);
  v80 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D108, &qword_1E4880060) + 48);
  *v80 = 0;
  *(v80 + 8) = v76;
  *(v80 + 16) = v102;
  *(v80 + 24) = v77;
  *(v80 + 32) = v98;
  *(v80 + 40) = v78;
  *(v80 + 48) = v72;
  *(v80 + 56) = v73;
  sub_1E47738B8(v75, &qword_1ECF7D0E8, &unk_1E4880008);
  sub_1E47738B8(v74, &qword_1ECF7D0E8, &unk_1E4880008);
  (*(v104 + 8))(v103, v105);
}

uint64_t sub_1E47F79D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, char *a6@<X8>)
{
  v73 = a5;
  v72 = a4;
  v77 = a1;
  v78 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D100, &qword_1E4880028);
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v63 - v9;
  v67 = sub_1E48780BC();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F0, &qword_1E4880018);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v12 = &v63 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F8, &qword_1E4880020);
  v13 = MEMORY[0x1EEE9AC00](v69);
  v68 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF20, &qword_1E487FAB0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v75 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v63 - v19;
  sub_1E4878D2C();
  v74 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E487883C();
  type metadata accessor for WideTextHeaderView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
  sub_1E4877B7C();
  sub_1E487889C();
  v21 = sub_1E4877BCC();
  v22 = &v20[*(v16 + 36)];
  v23 = v90;
  *v22 = v89;
  *(v22 + 1) = v23;
  *(v22 + 2) = v91;
  v82 = a2;
  v83 = a3;
  v63 = sub_1E477A374(v21, v24, v25);

  v26 = sub_1E487848C();
  v28 = v27;
  v30 = v29;
  sub_1E48786FC();
  v64 = v20;
  v31 = sub_1E48783FC();
  v33 = v32;
  v35 = v34;

  sub_1E477A3C8(v26, v28, v30 & 1);

  sub_1E48782EC();
  sub_1E487827C();
  sub_1E487829C();

  v36 = sub_1E487842C();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_1E477A3C8(v31, v33, v35 & 1);

  KeyPath = swift_getKeyPath();
  v82 = v36;
  v83 = v38;
  LOBYTE(v33) = v40 & 1;
  v84 = v40 & 1;
  v85 = v42;
  v86 = KeyPath;
  v87 = 1;
  v88 = 0;
  v44 = v65;
  sub_1E487809C();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  v46 = sub_1E477A490();
  sub_1E48785AC();
  (*(v66 + 8))(v44, v67);
  sub_1E477A3C8(v36, v38, v33);

  v82 = v72;
  v83 = v73;

  v47 = sub_1E487848C();
  v49 = v48;
  LOBYTE(v33) = v50;
  v82 = v45;
  v83 = v46;
  swift_getOpaqueTypeConformance2();
  v51 = v68;
  v52 = v71;
  sub_1E487856C();
  sub_1E477A3C8(v47, v49, v33 & 1);

  (*(v70 + 8))(v12, v52);
  v53 = v76;
  sub_1E4877C7C();
  sub_1E47738B8(v51, &qword_1ECF7D0F8, &qword_1E4880020);
  v54 = v79;
  v55 = v80;
  v56 = *(v80 + 16);
  v57 = v81;
  v56(v79, v77, v81);
  v58 = v64;
  v59 = v75;
  sub_1E4773850(v64, v75, &qword_1ECF7CF20, &qword_1E487FAB0);
  sub_1E4773850(v53, v51, &qword_1ECF7D0F8, &qword_1E4880020);
  v60 = v78;
  v56(v78, v54, v57);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D118, &unk_1E4880078);
  sub_1E4773850(v59, &v60[*(v61 + 48)], &qword_1ECF7CF20, &qword_1E487FAB0);
  sub_1E4773850(v51, &v60[*(v61 + 64)], &qword_1ECF7D0F8, &qword_1E4880020);
  sub_1E47738B8(v53, &qword_1ECF7D0F8, &qword_1E4880020);
  sub_1E47738B8(v58, &qword_1ECF7CF20, &qword_1E487FAB0);
  sub_1E47738B8(v51, &qword_1ECF7D0F8, &qword_1E4880020);
  sub_1E47738B8(v59, &qword_1ECF7CF20, &qword_1E487FAB0);
  (*(v55 + 8))(v54, v57);
}

uint64_t sub_1E47F81E0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E4877FBC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0B0, &qword_1E487FF98) + 44);
  *v4 = sub_1E4877F5C();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0B8, &qword_1E487FFA0);
  sub_1E47F6BA4(v2, v4 + *(v5 + 44));
}

unint64_t sub_1E47F82D8()
{
  result = qword_1EE2B1518;
  if (!qword_1EE2B1518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D0F8, &qword_1E4880020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E477A490();
    swift_getOpaqueTypeConformance2();
    sub_1E47F83A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1518);
  }

  return result;
}

unint64_t sub_1E47F83A0()
{
  result = qword_1EE2B10A8;
  if (!qword_1EE2B10A8)
  {
    sub_1E48780EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B10A8);
  }

  return result;
}

uint64_t CalendarEventsTimelineEntry.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v18 = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_1E47F8B5C(v0, boxed_opaque_existential_0, type metadata accessor for CalendarEventsTimelineEntry);
  __swift_project_boxed_opaque_existential_0(v17, v18);
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v4 = sub_1E4878BFC();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v17);
  v17[0] = v4;
  v17[1] = v6;
  MEMORY[0x1E69192D0](23328, 0xE200000000000000);
  if (qword_1EE2B1868 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2B1870;
  v8 = sub_1E48772BC();
  v9 = [v7 stringFromDate_];

  v10 = sub_1E4878BDC();
  v12 = v11;

  MEMORY[0x1E69192D0](v10, v12);

  MEMORY[0x1E69192D0](2112093, 0xE300000000000000);
  v13 = *(v1 + *(v2 + 24));
  v14 = type metadata accessor for DayEvents(0);
  v15 = MEMORY[0x1E6919360](v13, v14);
  MEMORY[0x1E69192D0](v15);

  return v17[0];
}

uint64_t CalendarEventsTimelineEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E487732C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CalendarEventsTimelineEntry.date.setter(uint64_t a1)
{
  v3 = sub_1E487732C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1E47F86AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v18 - v3;
  v5 = type metadata accessor for CalendarDateTimelineEntry(0);
  v20 = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  sub_1E47F8B5C(v0, boxed_opaque_existential_0, type metadata accessor for CalendarDateTimelineEntry);
  __swift_project_boxed_opaque_existential_0(v19, v20);
  v18[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v7 = sub_1E4878BFC();
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1(v19);
  v19[0] = v7;
  v19[1] = v9;
  MEMORY[0x1E69192D0](23328, 0xE200000000000000);
  if (qword_1EE2B1868 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE2B1870;
  v11 = sub_1E48772BC();
  v12 = [v10 stringFromDate_];

  v13 = sub_1E4878BDC();
  v15 = v14;

  MEMORY[0x1E69192D0](v13, v15);

  MEMORY[0x1E69192D0](5972061, 0xE300000000000000);
  sub_1E47F8BC4(v1 + *(v5 + 24), v4);
  v16 = sub_1E4878BFC();
  MEMORY[0x1E69192D0](v16);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  return v19[0];
}

uint64_t sub_1E47F88AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E487732C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1E47F8940(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47F8AF8(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E47F8A44(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47F8AF8(319, &qword_1EE2B4640, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E47F8AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47F8B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47F8BC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E47F8C54(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E47F8CFC(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

uint64_t sub_1E47F8E3C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v24 = a5;
  v11 = a3(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v22 = v13;
    v23 = a6;
    v17 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = *(v12 + 72);
    while (1)
    {
      sub_1E47FD4A8(v17, v15, a4);
      v19 = a1(v15);
      if (v6)
      {
        return sub_1E47FD510(v15, a4);
      }

      if (v19)
      {
        break;
      }

      sub_1E47FD510(v15, a4);
      v17 += v18;
      if (!--v16)
      {
        v20 = 1;
        a6 = v23;
        goto LABEL_10;
      }
    }

    a6 = v23;
    sub_1E47FD5D4(v15, v23, v24);
    v20 = 0;
LABEL_10:
    v13 = v22;
  }

  else
  {
    v20 = 1;
  }

  return (*(v12 + 56))(a6, v20, 1, v13);
}

uint64_t sub_1E47F8FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  sub_1E47FA41C(a1, a3, v10);
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_0(a3, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 BOOLValue];
  }

  else
  {
    v15 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BED0, &qword_1E487BF80);
  v16 = sub_1E487732C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E487A7E0;
  (*(v17 + 16))(v19 + v18, a1, v16);
  v20 = *(v5 + 64);

  v21 = sub_1E47FBE3C(v19, v20, a2, v15);

  swift_setDeallocating();
  (*(v17 + 8))(v19 + v18, v16);
  result = swift_deallocClassInstance();
  if (v21[2])
  {
    v23 = *(type metadata accessor for CalendarEventsTimelineEntry(0) - 8);
    sub_1E47FD4A8(v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), a4, type metadata accessor for CalendarEventsTimelineEntry);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E47F9228(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for CalendarEventsTimelineEntry(0);
  *&v55 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E487753C();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  sub_1E47FA41C(a1, a4, v18);
  v19 = sub_1E47FC9F4(a1, a2);
  v21 = a4[3];
  v20 = a4[4];
  __swift_project_boxed_opaque_existential_0(a4, v21);
  v22 = (*(v20 + 8))(v21, v20);
  if (v22)
  {
    v23 = v22;
    v24 = [v22 BOOLValue];
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v6 + 64);

  v26 = sub_1E47FBE3C(v19, v25, a3, v24);

  sub_1E4877A7C();
  if (!v26[2])
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  sub_1E47FD4A8(v26 + v27, v14, type metadata accessor for CalendarEventsTimelineEntry);
  sub_1E47F970C(v14, a5, v17);
  v29 = v28;
  v30 = sub_1E47FD510(v14, type metadata accessor for CalendarEventsTimelineEntry);
  v31 = v26[2];
  v32 = v31 != 0;
  v33 = (2 * v31) | 1;
  MEMORY[0x1EEE9AC00](v30);
  *(&v53 - 4) = v6;
  *(&v53 - 3) = a5;
  *(&v53 - 2) = v17;

  v34 = sub_1E4858EE0(sub_1E47FD570, (&v53 - 6), v26 + v27, v32, v33);

  v35 = 0;
  v36 = *(v34 + 16);
  while (1)
  {
    v37 = v29;
    if (v36 == v35)
    {
      break;
    }

    v38 = v35 + 1;
    v29 = v29 + *(v34 + 8 * v35++ + 32);
    if (v29 > 9000.0)
    {
      v36 = v38 - 1;
      break;
    }
  }

  v39 = sub_1E4878DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v40 = swift_allocObject();
  v41 = MEMORY[0x1E69E63B0];
  v55 = xmmword_1E487A7E0;
  *(v40 + 16) = xmmword_1E487A7E0;
  v42 = MEMORY[0x1E69E6438];
  *(v40 + 56) = v41;
  *(v40 + 64) = v42;
  *(v40 + 32) = v37;
  sub_1E478E80C();
  v43 = sub_1E4878E4C();
  sub_1E4877AAC(v39, &dword_1E475C000, v43, "Estimated timeline size: %f", v53);

  v44 = v26[2] - 1;
  v45 = v44 - v36;
  if (__OFSUB__(v44, v36))
  {
    goto LABEL_19;
  }

  if (v45 >= 1)
  {
    v46 = sub_1E4878DEC();
    v47 = swift_allocObject();
    v48 = MEMORY[0x1E69E6530];
    *(v47 + 16) = v55;
    v49 = MEMORY[0x1E69E65A8];
    *(v47 + 56) = v48;
    *(v47 + 64) = v49;
    *(v47 + 32) = v45;
    v50 = sub_1E4878E4C();
    sub_1E4877AAC(v46, &dword_1E475C000, v50, "Pruning %d entries from the end of the returned timeline because including them would cause the timeline to take up too much disk space", LODWORD(v53));
  }

  v51 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    goto LABEL_20;
  }

  if ((v51 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v52 = v26[2];
  if (v52 < v51)
  {
LABEL_22:
    __break(1u);
    return;
  }

  if (v52 != v51)
  {
    sub_1E4861044(v26, v26 + v27, 0, (2 * v51) | 1);
  }

  (*(*&v53 + 8))(v17, v54);
}

uint64_t sub_1E47F970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a3;
  v92 = a2;
  v95 = a1;
  v103 = type metadata accessor for Event(0);
  v3 = *(v103 - 8);
  v4 = MEMORY[0x1EEE9AC00](v103);
  v96 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v97 = &v85 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v98 = &v85 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v99 = &v85 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v100 = &v85 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v101 = &v85 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v102 = &v85 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v85 - v18;
  v94 = type metadata accessor for DayEvents(0);
  v90 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E487894C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v93) = *MEMORY[0x1E6985810];
  v25 = *(v22 + 104);
  v25(v24);
  v26 = sub_1E47FD63C(&qword_1EE2B4708, MEMORY[0x1E6985840], MEMORY[0x1E6985850]);
  sub_1E4878C7C();
  sub_1E4878C7C();
  v27 = *(v22 + 8);
  v27(v24, v21);
  v28 = 2;
  if (v105 == v104)
  {
    v28 = 4;
  }

  v88 = v28;
  (v25)(v24, v93, v21);
  v29 = v95;
  sub_1E4878C7C();
  v30 = v24;
  sub_1E4878C7C();
  v27(v24, v21);
  if (v105 == v104)
  {
    v31 = 77.0;
  }

  else
  {
    v31 = 73.0;
  }

  v32 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v33 = *(v29 + *(v32 + 24));
  if (!*(v33 + 16))
  {
    goto LABEL_82;
  }

  v34 = *(v32 + 20);
  v35 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v87 = *(v29 + *(v32 + 24));
  v86 = v35;
  v36 = v91;
  sub_1E47FD4A8(v33 + v35, v91, type metadata accessor for DayEvents);
  v30 = sub_1E4842D5C(v29 + v34, v36, v89);
  sub_1E47FD510(v36, type metadata accessor for DayEvents);
  v93 = *(v30 + 16);
  if (v93)
  {
    v37 = 0;
    v38 = *(type metadata accessor for TimeScalingEngine.SpatialViewParameters(0) - 8);
    v91 = v30 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v92 = v38;
    v26 = v101;
    v90 = v30;
    do
    {
      if (v37 >= *(v30 + 16))
      {
        goto LABEL_80;
      }

      v42 = *(v92 + 72);
      v95 = v37;
      v21 = *(v91 + v42 * v37 + *(v94 + 20));
      v43 = *(v21 + 16);
      if (v43)
      {
        v44 = 0;
        v30 = MEMORY[0x1E69E7CC0];
        while (v44 < *(v21 + 16))
        {
          v45 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v46 = *(v3 + 72);
          sub_1E47FD4A8(v21 + v45 + v46 * v44, v19, type metadata accessor for Event);
          if (v19[*(v103 + 56)] - 1 < 2)
          {
            sub_1E47FD510(v19, type metadata accessor for Event);
          }

          else
          {
            sub_1E47FD5D4(v19, v102, type metadata accessor for Event);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105 = v30;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E4858038(0, *(v30 + 16) + 1, 1);
              v30 = v105;
            }

            v49 = *(v30 + 16);
            v48 = *(v30 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_1E4858038((v48 > 1), v49 + 1, 1);
              v30 = v105;
            }

            *(v30 + 16) = v49 + 1;
            sub_1E47FD5D4(v102, v30 + v45 + v49 * v46, type metadata accessor for Event);
            v26 = v101;
          }

          if (v43 == ++v44)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_77;
      }

      v30 = MEMORY[0x1E69E7CC0];
LABEL_24:
      v50 = *(v30 + 16);

      v51 = *(v21 + 16);

      if (v51)
      {
        v52 = 0;
        v30 = MEMORY[0x1E69E7CC0];
        while (v52 < *(v21 + 16))
        {
          v53 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v54 = *(v3 + 72);
          sub_1E47FD4A8(v21 + v53 + v54 * v52, v26, type metadata accessor for Event);
          if (*(v26 + *(v103 + 56)) - 1 > 1)
          {
            sub_1E47FD510(v26, type metadata accessor for Event);
          }

          else
          {
            sub_1E47FD5D4(v26, v100, type metadata accessor for Event);
            v55 = swift_isUniquelyReferenced_nonNull_native();
            v105 = v30;
            if ((v55 & 1) == 0)
            {
              sub_1E4858038(0, *(v30 + 16) + 1, 1);
              v30 = v105;
            }

            v57 = *(v30 + 16);
            v56 = *(v30 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_1E4858038((v56 > 1), v57 + 1, 1);
              v30 = v105;
            }

            *(v30 + 16) = v57 + 1;
            sub_1E47FD5D4(v100, v30 + v53 + v57 * v54, type metadata accessor for Event);
            v26 = v101;
          }

          if (v51 == ++v52)
          {
            goto LABEL_10;
          }
        }

LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v30 = MEMORY[0x1E69E7CC0];
LABEL_10:
      v37 = v95 + 1;
      v39 = v31 + v50 * 22.0;

      v40 = *(v30 + 16);

      v31 = v39 + v40 * 26.0;
      v41 = v99;
      v30 = v90;
    }

    while (v37 != v93);
    v58 = *(v90 + 16);
  }

  else
  {
    v58 = 0;
    v41 = v99;
  }

  v26 = sub_1E47F8C54(v88 - v58, v87, v87 + v86, *(v87 + 16) != 0, (2 * *(v87 + 16)) | 1);
  v30 = v59;
  v19 = v60;
  v21 = v61;
  if (v61)
  {
    sub_1E487910C();
    swift_unknownObjectRetain_n();

    v64 = swift_dynamicCastClass();
    if (!v64)
    {
      swift_unknownObjectRelease();
      v64 = MEMORY[0x1E69E7CC0];
    }

    v65 = *(v64 + 16);

    if (__OFSUB__(v21 >> 1, v19))
    {
      goto LABEL_83;
    }

    if (v65 != (v21 >> 1) - v19)
    {
      goto LABEL_84;
    }

    v30 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v41 = v99;
    v63 = v89;
    if (v30)
    {
      goto LABEL_47;
    }

    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  while (1)
  {
    sub_1E4860ED0(v26, v30, v19, v21);
    v30 = v62;
    v63 = v89;
LABEL_46:
    swift_unknownObjectRelease();
LABEL_47:
    v66 = sub_1E483F168(v30, v63);

    v102 = *(v66 + 16);
    if (!v102)
    {
    }

    v67 = 0;
    v68 = *(type metadata accessor for TimeScalingEngine.SpatialViewParameters(0) - 8);
    v100 = v66 + ((v68[80] + 32) & ~v68[80]);
    v101 = v68;
    v26 = v97;
    v95 = v66;
    while (v67 < *(v66 + 16))
    {
      v21 = *(v100 + *(v101 + 9) * v67 + *(v94 + 20));
      v19 = *(v21 + 16);
      if (v19)
      {
        v71 = 0;
        v30 = MEMORY[0x1E69E7CC0];
        while (v71 < *(v21 + 16))
        {
          v72 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v73 = *(v3 + 72);
          sub_1E47FD4A8(v21 + v72 + v73 * v71, v41, type metadata accessor for Event);
          if (*(v41 + *(v103 + 56)) - 1 < 2)
          {
            sub_1E47FD510(v41, type metadata accessor for Event);
          }

          else
          {
            sub_1E47FD5D4(v41, v98, type metadata accessor for Event);
            v74 = swift_isUniquelyReferenced_nonNull_native();
            v105 = v30;
            if ((v74 & 1) == 0)
            {
              sub_1E4858038(0, *(v30 + 16) + 1, 1);
              v30 = v105;
            }

            v76 = *(v30 + 16);
            v75 = *(v30 + 24);
            if (v76 >= v75 >> 1)
            {
              sub_1E4858038((v75 > 1), v76 + 1, 1);
              v30 = v105;
            }

            *(v30 + 16) = v76 + 1;
            sub_1E47FD5D4(v98, v30 + v72 + v76 * v73, type metadata accessor for Event);
            v26 = v97;
            v41 = v99;
          }

          if (v19 == ++v71)
          {
            goto LABEL_64;
          }
        }

        goto LABEL_78;
      }

      v30 = MEMORY[0x1E69E7CC0];
LABEL_64:
      v77 = *(v30 + 16);

      v19 = *(v21 + 16);

      if (v19)
      {
        v78 = 0;
        v30 = MEMORY[0x1E69E7CC0];
        while (v78 < *(v21 + 16))
        {
          v79 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v80 = *(v3 + 72);
          sub_1E47FD4A8(v21 + v79 + v80 * v78, v26, type metadata accessor for Event);
          if (*(v26 + *(v103 + 56)) - 1 > 1)
          {
            sub_1E47FD510(v26, type metadata accessor for Event);
          }

          else
          {
            sub_1E47FD5D4(v26, v96, type metadata accessor for Event);
            v81 = swift_isUniquelyReferenced_nonNull_native();
            v105 = v30;
            if ((v81 & 1) == 0)
            {
              sub_1E4858038(0, *(v30 + 16) + 1, 1);
              v30 = v105;
            }

            v83 = *(v30 + 16);
            v82 = *(v30 + 24);
            if (v83 >= v82 >> 1)
            {
              sub_1E4858038((v82 > 1), v83 + 1, 1);
              v30 = v105;
            }

            *(v30 + 16) = v83 + 1;
            sub_1E47FD5D4(v96, v30 + v79 + v83 * v80, type metadata accessor for Event);
            v26 = v97;
            v41 = v99;
          }

          if (v19 == ++v78)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_79;
      }

      v30 = MEMORY[0x1E69E7CC0];
LABEL_50:
      ++v67;
      v69 = v31 + v77 * 22.0;

      v70 = *(v30 + 16);

      v31 = v69 + v70 * 26.0;
      v66 = v95;
      if (v67 == v102)
      {
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    swift_unknownObjectRelease();
    v41 = v99;
  }
}

uint64_t sub_1E47FA41C(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v7 = sub_1E487753C();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E487732C();
  v10 = *(v30 - 8);
  v11 = MEMORY[0x1EEE9AC00](v30);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v29 - v14);
  sub_1E48772AC();
  sub_1E4877A7C();
  sub_1E487745C();
  v16 = *__swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
  v18 = a2[3];
  v17 = a2[4];
  v19 = __swift_project_boxed_opaque_existential_0(a2, v18);
  v20 = sub_1E4847E44(v13, v15, v19, v16, v18, v17);
  v34 = a1;

  v21 = sub_1E48560AC(sub_1E47A72B0, v33, v20);
  type metadata accessor for Utils();
  v4[8] = sub_1E485B794(v21, v15);

  v22 = *(v20 + 16);

  v23 = *(v21 + 16);

  v24 = v4[8];

  v25 = sub_1E486C514(v22 != v23, v13, v24);

  v26 = *(v10 + 8);
  v27 = v30;
  v26(v13, v30);
  (*(v31 + 8))(v9, v32);
  v26(v15, v27);
  v4[8] = v25;
}

uint64_t sub_1E47FA6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E487732C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a3, v4);
  LOBYTE(a3) = sub_1E48774CC();
  (*(v5 + 8))(v7, v4);
  return a3 & 1;
}

uint64_t sub_1E47FA7F8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1E47FA8A4(uint64_t *a1)
{
  v2 = *(sub_1E487732C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E48478A0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E47FA94C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E47FA94C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E48790BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E487732C();
        v6 = sub_1E4878CDC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E487732C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E47FAD3C(v8, v9, a1, v4);
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
    return sub_1E47FAA78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E47FAA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E487732C();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1E47FD63C(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v26 = sub_1E4878ACC();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E47FAD3C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1E4847788(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1E47FB764(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1E4847788(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_1E48476FC(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_1E47FD63C(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      LODWORD(v133) = sub_1E4878ACC();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_1E4878ACC() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E484779C(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_1E484779C((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1E47FB764(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1E4847788(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_1E48476FC(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1E47FD63C(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v109 = sub_1E4878ACC();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1E47FB764(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_1E487732C();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x1EEE9AC00](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_1E47FD63C(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          LOBYTE(v35) = sub_1E4878ACC();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_1E47FD63C(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        LOBYTE(v22) = sub_1E4878ACC();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_1E47FBD58(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_1E47FBD58(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1E487732C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_1E47FBE3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v96 = a3;
  v93 = a2;
  v92 = sub_1E487751C();
  v6 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v68 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C380, &qword_1E4882C20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v68 - v12;
  v90 = type metadata accessor for DayEvents(0);
  v94 = *(v90 - 8);
  v14 = MEMORY[0x1EEE9AC00](v90);
  v89 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v88 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v68 - v18;
  v98 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v73 = *(v98 - 8);
  v19 = MEMORY[0x1EEE9AC00](v98);
  v75 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v68 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v68 - v24;
  v25 = sub_1E487732C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v86 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v68 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v99 = &v68 - v32;
  v69 = sub_1E487753C();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  if ((a4 & 1) != 0 && (v35 = [objc_opt_self() unselectedCalendarIdentifiersForFocusMode]) != 0)
  {

    v97 = 1;
  }

  else
  {
    v97 = 0;
  }

  v72 = *(a1 + 16);
  if (v72)
  {
    v103 = 0;
    v37 = *(v26 + 16);
    v36 = v26 + 16;
    v101 = v37;
    v71 = a1 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v84 = (v94 + 48);
    v77 = (v36 - 8);
    v83 = *MEMORY[0x1E6969A48];
    v82 = (v6 + 104);
    v81 = (v6 + 8);
    v80 = (v36 + 32);
    v78 = (v36 + 24);
    v102 = v36;
    v70 = *(v36 + 56);
    v76 = MEMORY[0x1E69E7CC0];
    v85 = v10;
    v38 = 0;
    v79 = v13;
    v39 = v99;
    v40 = v100;
    while (1)
    {
      v74 = v38;
      v41 = v101;
      v101(v39, (v71 + v70 * v38), v25);
      v41(v40, v39, v25);
      v42 = v98;
      v41(v40 + *(v98 + 20), v39, v25);
      v95 = *(v42 + 24);
      *(v40 + v95) = MEMORY[0x1E69E7CC0];
      *(v40 + *(v42 + 28)) = v97;
      v43 = (v41)(v31, v39, v25);
      if (v96 >= 1)
      {
        break;
      }

LABEL_23:
      sub_1E47FD4A8(v40, v75, type metadata accessor for CalendarEventsTimelineEntry);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_1E4860B5C(0, v76[2] + 1, 1, v76);
      }

      v65 = v76[2];
      v64 = v76[3];
      v95 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v76 = sub_1E4860B5C((v64 > 1), v65 + 1, 1, v76);
      }

      v38 = v74 + 1;
      v66 = *v77;
      v39 = v99;
      (*v77)(v99, v25);
      v67 = v76;
      v76[2] = v95;
      sub_1E47FD5D4(v75, v67 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v65, type metadata accessor for CalendarEventsTimelineEntry);
      v40 = v100;
      sub_1E47FD510(v100, type metadata accessor for CalendarEventsTimelineEntry);
      v66(v31, v25);
      if (v38 == v72)
      {
        goto LABEL_30;
      }
    }

    v44 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      MEMORY[0x1EEE9AC00](v43);
      *(&v68 - 2) = v34;
      *(&v68 - 1) = v31;
      v45 = v103;
      sub_1E47F8E3C(sub_1E47FD5B4, v93, type metadata accessor for DayEvents, type metadata accessor for DayEvents, type metadata accessor for DayEvents, v13);
      v103 = v45;
      v46 = v90;
      if ((*v84)(v13, 1, v90) == 1)
      {
        sub_1E47738B8(v13, &qword_1ECF7C380, &qword_1E4882C20);
        v47 = v86;
        sub_1E487745C();
        v48 = v89;
        v101(v89, v47, v25);
        v49 = MEMORY[0x1E69E7CC0];
        *&v48[v46[5]] = MEMORY[0x1E69E7CC0];
        *&v48[v46[6]] = v49;
        v48[v46[7]] = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1E4860B34(0, v44[2] + 1, 1, v44);
        }

        v50 = v99;
        v52 = v44[2];
        v51 = v44[3];
        v53 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v44 = sub_1E4860B34((v51 > 1), v52 + 1, 1, v44);
        }

        (*v77)(v86, v25);
        v54 = v89;
      }

      else
      {
        v55 = v87;
        sub_1E47FD5D4(v13, v87, type metadata accessor for DayEvents);
        sub_1E47FD4A8(v55, v88, type metadata accessor for DayEvents);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1E4860B34(0, v44[2] + 1, 1, v44);
        }

        v50 = v99;
        v52 = v44[2];
        v56 = v44[3];
        v53 = v52 + 1;
        if (v52 >= v56 >> 1)
        {
          v44 = sub_1E4860B34((v56 > 1), v52 + 1, 1, v44);
        }

        sub_1E47FD510(v87, type metadata accessor for DayEvents);
        v54 = v88;
      }

      v44[2] = v53;
      sub_1E47FD5D4(v54, v44 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v52, type metadata accessor for DayEvents);
      v57 = v101;
      v101(v23, v50, v25);
      v58 = v98;
      v57(&v23[*(v98 + 20)], v50, v25);
      *&v23[*(v58 + 24)] = v44;
      v23[*(v58 + 28)] = v97;

      v59 = v100;
      sub_1E47FD510(v100, type metadata accessor for CalendarEventsTimelineEntry);
      sub_1E47FD5D4(v23, v59, type metadata accessor for CalendarEventsTimelineEntry);
      v60 = v91;
      v61 = v92;
      (*v82)(v91, v83, v92);
      v62 = v85;
      sub_1E48774BC();
      (*v81)(v60, v61);
      result = (*v80)(v62, 1, v25);
      if (result == 1)
      {
        break;
      }

      v43 = (*v78)(v31, v62, v25);
      v13 = v79;
      if (*(*(v59 + v95) + 16) >= v96)
      {

        v40 = v100;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v76 = MEMORY[0x1E69E7CC0];
LABEL_30:
    (*(v68 + 8))(v34, v69);
    return v76;
  }

  return result;
}

uint64_t sub_1E47FC9F4(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v105 = sub_1E487751C();
  v111 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v103 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v88 - v7;
  v108 = sub_1E487706C();
  v8 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487732C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v110 = &v88 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v93 = &v88 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v88 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v88 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v88 - v26;
  v92 = sub_1E487753C();
  v88 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v113 = MEMORY[0x1E69E7CD0];
  v109 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  v102 = type metadata accessor for Utils();
  v90 = a1;
  sub_1E4870D68(v10);
  sub_1E487701C();
  (*(v8 + 8))(v10, v108);
  v29 = v12 + 16;
  v30 = *(v12 + 16);
  v30(v22, a1, v11);
  sub_1E4862374(v25, v22);
  v31 = v12;
  v32 = v12 + 8;
  v33 = *(v12 + 8);
  v33(v25, v11);
  v106 = v27;
  v34 = v27;
  v35 = v29;
  v36 = v31;
  v30(v22, v34, v11);
  v97 = v22;
  sub_1E4862374(v25, v22);
  v96 = v25;
  v107 = v33;
  v108 = v32;
  v33(v25, v11);
  v37 = v90;
  v38 = v100;
  sub_1E48711A4(v90, 600, v100);
  v39 = v38;
  v40 = *(v36 + 48);
  v41 = v40(v38, 1, v11);
  v101 = v40;
  v102 = v36 + 48;
  if (v41 == 1)
  {
    v42 = v93;
    v30(v93, v37, v11);
    v43 = v42;
    if (v40(v39, 1, v11) != 1)
    {
      sub_1E47738B8(v39, &unk_1ECF7C880, &qword_1E4882710);
    }
  }

  else
  {
    v43 = v93;
    (*(v36 + 32))(v93, v39, v11);
  }

  v95 = v35;
  v94 = v30;
  v30(v110, v43, v11);
  LODWORD(v100) = *MEMORY[0x1E6969A98];
  v99 = *(v111 + 104);
  v111 += 104;
  v44 = (v111 - 96);
  v91 = v36;
  v98 = (v36 + 32);
  v45 = v103;
  while (1)
  {
    v47 = v104;
    v46 = v105;
    v99(v104, v100, v105);
    sub_1E48774BC();
    (*v44)(v47, v46);
    if (v101(v45, 1, v11) == 1)
    {
      break;
    }

    (*v98)(v15, v45, v11);
    if ((sub_1E48772CC() & 1) == 0 || (sub_1E48772DC() & 1) == 0)
    {
      v107(v15, v11);
      goto LABEL_12;
    }

    v48 = v110;
    v49 = v37;
    v50 = v107;
    v107(v110, v11);
    v51 = v94;
    v94(v48, v15, v11);
    v52 = v97;
    v51(v97, v15, v11);
    v53 = v11;
    v54 = v96;
    sub_1E4862374(v96, v52);
    v55 = v54;
    v11 = v53;
    v50(v55, v53);
    v50(v15, v53);
    v45 = v103;
    v37 = v49;
  }

  sub_1E47738B8(v45, &unk_1ECF7C880, &qword_1E4882710);
  v56 = sub_1E4878DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1E487AC40;
  v58 = MEMORY[0x1E69E65A8];
  *(v57 + 56) = MEMORY[0x1E69E6530];
  *(v57 + 64) = v58;
  *(v57 + 32) = 600;
  sub_1E47FD63C(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v59 = sub_1E48790CC();
  v61 = v60;
  v62 = MEMORY[0x1E69E6158];
  *(v57 + 96) = MEMORY[0x1E69E6158];
  v64 = sub_1E478B950(v59, v60, v63);
  *(v57 + 104) = v64;
  *(v57 + 72) = v59;
  *(v57 + 80) = v61;
  sub_1E47FD63C(&qword_1ECF7CC98, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B10]);
  v65 = sub_1E48790CC();
  *(v57 + 136) = v62;
  *(v57 + 144) = v64;
  *(v57 + 112) = v65;
  *(v57 + 120) = v66;
  sub_1E478E80C();
  v67 = sub_1E4878E4C();
  sub_1E4877AAC(v56, &dword_1E475C000, v67, "Date generated by adding %lu minutes to %@ is nil, calendar: %@", 63, 2, v57);

LABEL_12:
  v68 = v113;
  v69 = *(v113 + 16);
  v70 = v91;
  if (v69)
  {
    v71 = sub_1E4846B50(*(v113 + 16), 0);
    v72 = sub_1E4869E88(&v112, &v71[(*(v70 + 80) + 32) & ~*(v70 + 80)], v69, v68);
    v73 = v112;

    sub_1E47A7300(v73);
    if (v72 == v69)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v71 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v112 = v71;
  sub_1E47FA8A4(&v112);
  v74 = v93;

  v78 = sub_1E47F8CFC(v89, v112, MEMORY[0x1E6969530]);
  if ((v77 & 1) == 0)
  {
LABEL_17:
    sub_1E4860EF8(v78, v75, v76, v77);
    v80 = v79;
LABEL_24:
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v81 = v77;
  v82 = v76;
  v83 = v75;
  sub_1E487910C();
  swift_unknownObjectRetain_n();
  v84 = swift_dynamicCastClass();
  if (!v84)
  {
    swift_unknownObjectRelease();
    v84 = MEMORY[0x1E69E7CC0];
  }

  v85 = *(v84 + 16);

  if (__OFSUB__(v81 >> 1, v82))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v85 != (v81 >> 1) - v82)
  {
LABEL_27:
    swift_unknownObjectRelease();
    v77 = v81;
    v76 = v82;
    v75 = v83;
    goto LABEL_17;
  }

  v80 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v80)
  {
    v80 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_25:
  v86 = v107;
  v107(v110, v11);
  v86(v74, v11);
  v86(v106, v11);
  (*(v88 + 8))(v109, v92);
  return v80;
}

uint64_t sub_1E47FD4A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47FD510(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47FD570@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1E47F970C(a1, *(v2 + 24), *(v2 + 32));
  *a2 = v5;
  return result;
}

uint64_t sub_1E47FD5D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47FD63C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E47FD684@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SpatialEventView(0);
  sub_1E4773850(v1 + *(v10 + 36), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1E47FD88C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SpatialEventView(0) + 40));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  v8 = sub_1E4878DDC();
  v9 = sub_1E48780FC();
  sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1E4877F0C();
  swift_getAtKeyPath();
  sub_1E477A484(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v10[1];
}

uint64_t sub_1E47FD9E8@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SpatialEventView(0);
  sub_1E4773850(v1 + *(v10 + 44), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47FDBF0@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SpatialEventView(0);
  sub_1E4773850(v1 + *(v10 + 48), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47FDDF8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SpatialEventView(0) + 52));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E47FDF48()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48782DC();
  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA0], v0);
  sub_1E48782CC();

  (*(v1 + 8))(v3, v0);
  v4 = sub_1E48781FC();

  qword_1EE2BAEE0 = v4;
  return result;
}

uint64_t type metadata accessor for SpatialEventView(uint64_t a1)
{
  result = qword_1EE2B3728;
  if (!qword_1EE2B3728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47FE0E0(uint64_t a1)
{
  type metadata accessor for SpatialEventViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1E47BD3A0(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
    if (v2 <= 0x3F)
    {
      sub_1E477D33C();
      if (v3 <= 0x3F)
      {
        sub_1E47BD3A0(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v4 <= 0x3F)
        {
          sub_1E47BD3A0(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
          if (v5 <= 0x3F)
          {
            sub_1E47BD3A0(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
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

double sub_1E47FE274()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SpatialEventView(0) + 52));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 48);

  return v10 + v10 + 2.0;
}

uint64_t sub_1E47FE3E0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = sub_1E487753C();
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v21 = (v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - v11;
  v20[1] = type metadata accessor for Utils();
  v13 = *v1;
  v14 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  v15 = type metadata accessor for Event(0);
  v16 = *(v7 + 16);
  v16(v12, v13 + *(v15 + 20) + v14, v6);
  (*(v7 + 56))(v5, 1, 1, v6);
  v16(v10, *(v13 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startDate, v6);
  v17 = v21;
  sub_1E47FD684(v21);
  sub_1E485CFF8(v12, v5, v10, v1[4], v23);
  (*(v22 + 8))(v17, v24);
  v18 = *(v7 + 8);
  v18(v10, v6);
  sub_1E47738B8(v5, &unk_1ECF7C880, &qword_1E4882710);
  return (v18)(v12, v6);
}

uint64_t sub_1E47FE6B8()
{
  v1 = sub_1E487753C();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v24 = (&v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - v6);
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = *v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  v14 = type metadata accessor for Event(0);
  v15 = *(v9 + 16);
  v15(v11, v13 + *(v14 + 20), v8);
  v15(v7, v13 + *(v14 + 24), v8);
  v16 = *(v9 + 56);
  v16(v7, 0, 1, v8);
  v17 = *(v12 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startDate;
  v18 = v23;
  v15(v23, v17, v8);
  v19 = v18;
  v16(v18, 0, 1, v8);
  v20 = v24;
  sub_1E47FD684(v24);
  v21 = sub_1E486D148(v11, v7, v19, v20);
  (*(v25 + 8))(v20, v26);
  sub_1E47738B8(v19, &unk_1ECF7C880, &qword_1E4882710);
  sub_1E47738B8(v7, &unk_1ECF7C880, &qword_1E4882710);
  (*(v9 + 8))(v11, v8);
  return v21;
}

void sub_1E47FE9CC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate);
  v2 = *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow);
  v3 = *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow);
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame;
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v10 = *v6;
    v9 = *(v6 + 8);
    r2 = vmulq_n_f64(vcvtq_f64_s64(*(v0 + 8)), *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect + 24) / v5);
    v16.origin.x = *v6;
    v16.origin.y = v9;
    v16.size.width = v8;
    v16.size.height = v7;
    v20.size.width = CGRectGetWidth(v16);
    *&v20.size.height = *&vsubq_f64(vdupq_laneq_s64(r2, 1), r2);
    v20.origin.y = r2.f64[0];
    v17.origin.x = v10;
    v17.origin.y = v9;
    v17.size.width = v8;
    v17.size.height = v7;
    v20.origin.x = v10;
    v18 = CGRectIntersection(v17, v20);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    CGRectGetWidth(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    CGRectGetHeight(v19);
    sub_1E47FD88C();
  }
}

BOOL sub_1E47FEB64()
{
  v1 = v0[3];
  v2 = v1 + sub_1E47FE274();
  v3 = *v0;
  v4 = *(*v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E47FE9CC();
  Height = CGRectGetHeight(v13);
  if (Height >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = Height;
  }

  sub_1E47FE9CC();
  v7 = CGRectGetHeight(v14);
  v8 = *(*&v3 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v9 = sub_1E47FD88C();
  v10 = round(v8 * v9) / v9;
  if (v10 >= v7)
  {
    v10 = v7;
  }

  v11 = v6 - v10;
  return vabdd_f64(v11, v2) <= 1.0 || v2 <= v11;
}

BOOL sub_1E47FEC10()
{
  v1 = v0[3] + v0[3];
  v2 = v1 + sub_1E47FE274();
  v3 = *v0;
  v4 = *(*v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E47FE9CC();
  Height = CGRectGetHeight(v13);
  if (Height >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = Height;
  }

  sub_1E47FE9CC();
  v7 = CGRectGetHeight(v14);
  v8 = *(*&v3 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v9 = sub_1E47FD88C();
  v10 = round(v8 * v9) / v9;
  if (v10 >= v7)
  {
    v10 = v7;
  }

  v11 = v6 - v10;
  return vabdd_f64(v11, v2) <= 1.0 || v2 <= v11;
}

BOOL sub_1E47FECC0()
{
  v1 = v0[3] * 3.0;
  v2 = v1 + sub_1E47FE274();
  v3 = *v0;
  v4 = *(*v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E47FE9CC();
  Height = CGRectGetHeight(v13);
  if (Height >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = Height;
  }

  sub_1E47FE9CC();
  v7 = CGRectGetHeight(v14);
  v8 = *(*&v3 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v9 = sub_1E47FD88C();
  v10 = round(v8 * v9) / v9;
  if (v10 >= v7)
  {
    v10 = v7;
  }

  v11 = v6 - v10;
  return vabdd_f64(v11, v2) <= 1.0 || v2 <= v11;
}

uint64_t sub_1E47FED74@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = sub_1E487732C();
  v91 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v80 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v77 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v77 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v89 = v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v77 - v13;
  v79 = type metadata accessor for EventBackgroundView(0);
  MEMORY[0x1EEE9AC00](v79);
  v16 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D170, &qword_1E4880298);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v77 - v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D168, &qword_1E4880290);
  MEMORY[0x1EEE9AC00](v81);
  v84 = v77 - v21;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D160, &qword_1E4880288);
  MEMORY[0x1EEE9AC00](v85);
  v86 = v77 - v22;
  v23 = *(sub_1E47FDDF8() + 72);

  *v20 = sub_1E4877F6C();
  *(v20 + 1) = v23;
  v20[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D188, &qword_1E48802C0);
  sub_1E47FF58C(v1, &v20[*(v24 + 44)]);
  v25 = sub_1E487817C();
  sub_1E47FDDF8();

  sub_1E4877B0C();
  v26 = *(v18 + 44);
  v83 = v20;
  v27 = &v20[v26];
  *v27 = v25;
  v28 = v10;
  *(v27 + 1) = v29;
  *(v27 + 2) = v30;
  *(v27 + 3) = v31;
  *(v27 + 4) = v32;
  v27[40] = 0;
  v87 = v1;
  v33 = *v1;
  v34 = *v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  sub_1E47707EC(v34, v14);
  v35 = type metadata accessor for Event(0);
  v36 = *(*(v35 - 8) + 56);
  v82 = v14;
  v36(v14, 0, 1, v35);
  v37 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  v90 = v35;
  sub_1E48772AC();
  v77[1] = sub_1E4803648(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1E4878ADC())
  {
    v38 = v2;
    (*(v91 + 32))(v89, v28, v2);
  }

  else
  {
    v39 = v91;
    (*(v91 + 8))(v28, v2);
    v38 = v2;
    (*(v39 + 16))(v89, *&v33 + v37, v2);
  }

  sub_1E48772AC();
  v40 = v89;
  v41 = sub_1E48772EC();
  v42 = v34;
  v78 = v34;
  v43 = v91;
  v44 = *(v91 + 8);
  v45 = v38;
  v44(v7, v38);
  v44(v40, v38);
  v46 = *&v33 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewEndDate;
  v47 = v42 + *(v90 + 24);
  if (sub_1E4878ACC())
  {
    v48 = v47;
  }

  else
  {
    v48 = v46;
  }

  v49 = v80;
  (*(v43 + 16))(v80, v48, v45);
  v50 = v41 & 1;
  v51 = sub_1E48772EC();
  v44(v49, v45);
  if (v51)
  {
    v50 = v41 & 1 | 2;
  }

  KeyPath = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v54 = v79;
  *&v16[*(v79 + 32)] = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v16[v54[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v16[v54[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v55 = swift_getKeyPath();
  sub_1E477372C(v82, v16, &qword_1ECF7B950, &unk_1E487AE90);
  *&v16[v54[5]] = v50;
  v16[v54[6]] = 1;
  v56 = &v16[v54[7]];
  *v56 = KeyPath;
  v56[8] = 0;
  v57 = &v16[v54[11]];
  *v57 = v55;
  v57[8] = 0;
  v58 = sub_1E487889C();
  v60 = v59;
  v61 = v84;
  v62 = &v84[*(v81 + 36)];
  sub_1E48035E0(v16, v62, type metadata accessor for EventBackgroundView);
  v63 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v63 = v58;
  v63[1] = v60;
  sub_1E477372C(v83, v61, &qword_1ECF7D170, &qword_1E4880298);
  v64 = sub_1E487889C();
  v66 = v65;
  v67 = v86;
  v68 = &v86[*(v85 + 36)];
  sub_1E4802258(v87, v68);
  v69 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D180, &unk_1E48802B0) + 36));
  *v69 = v64;
  v69[1] = v66;
  sub_1E477372C(v61, v67, &qword_1ECF7D168, &qword_1E4880290);
  v92 = sub_1E47CC9E8(*(v78 + *(v90 + 56)));
  v93 = v70;
  sub_1E477A374(v92, v70, v71);
  v72 = sub_1E487848C();
  v74 = v73;
  LOBYTE(v68) = v75;
  sub_1E48033B0();
  sub_1E487857C();
  sub_1E477A3C8(v72, v74, v68 & 1);

  return sub_1E47738B8(v67, &qword_1ECF7D160, &qword_1E4880288);
}

uint64_t sub_1E47FF58C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1A8, &unk_1E48803F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v96 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v94 = (&v78 - v6);
  v7 = sub_1E487732C();
  v97 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v85 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v78 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v78 - v16;
  v81 = sub_1E4877B3C();
  v17 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v19 = (&v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v98);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ColorBarView.Styling(0);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ColorBarView(0);
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBF8, &qword_1E487F000);
  v24 = MEMORY[0x1EEE9AC00](v88);
  v92 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v87 = &v78 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v78 - v28;
  sub_1E4878D2C();
  v91 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = *a1;
  v30 = *a1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  sub_1E47707EC(v30, v21);
  sub_1E47FDBF0(v19);
  v80 = sub_1E4770A7C(v21, v19);
  (*(v17 + 8))(v19, v81);
  sub_1E4803690(v21, type metadata accessor for Event);
  v31 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  sub_1E48772AC();
  sub_1E4803648(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v32 = sub_1E4878ADC();
  v93 = a1;
  if (v32)
  {
    v33 = v82;
    (*(v97 + 32))(v82, v15, v7);
  }

  else
  {
    v34 = v97;
    (*(v97 + 8))(v15, v7);
    v35 = *&v29 + v31;
    v33 = v82;
    (*(v34 + 16))(v82, v35, v7);
  }

  v36 = v29;
  sub_1E48772AC();
  v37 = sub_1E48772EC();
  v38 = v97;
  v39 = *(v97 + 8);
  v39(v12, v7);
  v39(v33, v7);
  v79 = v36;
  v40 = *&v36 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewEndDate;
  v41 = v30 + *(v98 + 24);
  if (sub_1E4878ACC())
  {
    v42 = v41;
  }

  else
  {
    v42 = v40;
  }

  v43 = v85;
  (*(v38 + 16))(v85, v42, v7);
  v44 = sub_1E48772EC();
  v39(v43, v7);
  if (v44)
  {
    v45 = v37 & 1 | 2;
  }

  else
  {
    v45 = v37 & 1;
  }

  v46 = v93;
  sub_1E47FE9CC();
  Height = CGRectGetHeight(v99);
  v48 = *(*&v79 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v49 = sub_1E47FD88C();
  v50 = round(v48 * v49) / v49;
  if (v50 >= Height)
  {
    v50 = Height;
  }

  v51 = v50 + -2.0;
  if (v51 < 0.0)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = v51;
  }

  v53 = v84;
  sub_1E487735C();
  *(v53 + 48) = 1;
  *v53 = v80;
  *(v53 + 8) = 0;
  *(v53 + 16) = 1;
  *(v53 + 24) = v45;
  *(v53 + 32) = v52;
  *(v53 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v55 = v86;
  v56 = v89;
  *&v89[*(v86 + 20)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v57 = swift_getKeyPath();
  sub_1E48035E0(v53, v56, type metadata accessor for ColorBarView.Styling);
  v58 = v56 + *(v55 + 24);
  *v58 = v57;
  *(v58 + 8) = 0;
  LOBYTE(v57) = sub_1E487819C();
  sub_1E47FDDF8();

  sub_1E4877B0C();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v87;
  sub_1E48035E0(v56, v87, type metadata accessor for ColorBarView);
  v68 = v67 + *(v88 + 36);
  *v68 = v57;
  *(v68 + 8) = v60;
  *(v68 + 16) = v62;
  *(v68 + 24) = v64;
  *(v68 + 32) = v66;
  *(v68 + 40) = 0;
  v69 = v90;
  sub_1E477372C(v67, v90, &qword_1ECF7CBF8, &qword_1E487F000);
  v70 = sub_1E4877F6C();
  v71 = v94;
  *v94 = v70;
  *(v71 + 8) = 0;
  *(v71 + 16) = 0;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1B0, &qword_1E4880400);
  sub_1E47FFEA0(v46, v71 + *(v72 + 44));
  v73 = v92;
  sub_1E4773850(v69, v92, &qword_1ECF7CBF8, &qword_1E487F000);
  v74 = v96;
  sub_1E4773850(v71, v96, &qword_1ECF7D1A8, &unk_1E48803F0);
  v75 = v95;
  sub_1E4773850(v73, v95, &qword_1ECF7CBF8, &qword_1E487F000);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1B8, &qword_1E4880408);
  sub_1E4773850(v74, v75 + *(v76 + 48), &qword_1ECF7D1A8, &unk_1E48803F0);
  sub_1E47738B8(v71, &qword_1ECF7D1A8, &unk_1E48803F0);
  sub_1E47738B8(v69, &qword_1ECF7CBF8, &qword_1E487F000);
  sub_1E47738B8(v74, &qword_1ECF7D1A8, &unk_1E48803F0);
  sub_1E47738B8(v73, &qword_1ECF7CBF8, &qword_1E487F000);
}

uint64_t sub_1E47FFEA0@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1C0, &qword_1E4880410);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_1E4877FBC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1C8, &qword_1E4880418);
  sub_1E480005C(a1, &v9[*(v10 + 44)]);
  sub_1E4773850(v9, v7, &qword_1ECF7D1C0, &qword_1E4880410);
  sub_1E4773850(v7, a2, &qword_1ECF7D1C0, &qword_1E4880410);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1D0, &qword_1E4880420) + 48);
  *v11 = 0;
  *(v11 + 8) = 0;
  sub_1E47738B8(v9, &qword_1ECF7D1C0, &qword_1E4880410);
  sub_1E47738B8(v7, &qword_1ECF7D1C0, &qword_1E4880410);
}

uint64_t sub_1E480005C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1D8, &qword_1E4880428);
  MEMORY[0x1EEE9AC00](v68);
  v4 = &v67 - v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1E0, &qword_1E4880430);
  v5 = MEMORY[0x1EEE9AC00](v73);
  v75 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v72 = &v67 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v67 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1E8, &qword_1E4880438);
  MEMORY[0x1EEE9AC00](v67);
  v11 = &v67 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1F0, &qword_1E4880440);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1F8, &qword_1E4880448);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v71 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v67 - v22;
  sub_1E4878D2C();
  v70 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47FE9CC();
  Height = CGRectGetHeight(v84);
  v24 = *a1;
  v77 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight;
  v25 = *(*&v24 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v26 = sub_1E47FD88C();
  v27 = round(v25 * v26) / v26;
  if (v27 >= Height)
  {
    v27 = Height;
  }

  if (v27 <= 0.0)
  {
    v37 = v69;
    (*(v13 + 56))(v69, 1, 1, v12);
  }

  else
  {
    *v11 = sub_1E4877FBC();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D218, &qword_1E4880468);
    sub_1E480080C(a1, &v11[*(v28 + 44)]);
    v29 = sub_1E487818C();
    sub_1E47FDDF8();

    sub_1E4877B0C();
    v30 = &v11[*(v67 + 36)];
    *v30 = v29;
    *(v30 + 1) = v31;
    *(v30 + 2) = v32;
    *(v30 + 3) = v33;
    *(v30 + 4) = v34;
    v30[40] = 0;
    sub_1E47FE9CC();
    CGRectGetHeight(v85);
    sub_1E47FD88C();
    sub_1E487889C();
    sub_1E4877BCC();
    sub_1E477372C(v11, v16, &qword_1ECF7D1E8, &qword_1E4880438);
    v35 = &v16[*(v12 + 36)];
    v36 = v79;
    *v35 = v78;
    *(v35 + 1) = v36;
    *(v35 + 2) = v80;
    sub_1E477372C(v16, v18, &qword_1ECF7D1F0, &qword_1E4880440);
    v37 = v69;
    sub_1E477372C(v18, v69, &qword_1ECF7D1F0, &qword_1E4880440);
    (*(v13 + 56))(v37, 0, 1, v12);
  }

  *v4 = sub_1E4877FBC();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D200, &qword_1E4880450);
  sub_1E4800F3C(a1, &v4[*(v38 + 44)]);
  v39 = sub_1E487819C();
  sub_1E47FDDF8();

  sub_1E4877B0C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D208, &qword_1E4880458) + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = sub_1E487818C();
  sub_1E47FDDF8();

  sub_1E4877B0C();
  v50 = &v4[*(v68 + 36)];
  *v50 = v49;
  *(v50 + 1) = v51;
  *(v50 + 2) = v52;
  *(v50 + 3) = v53;
  *(v50 + 4) = v54;
  v50[40] = 0;
  sub_1E47FE9CC();
  CGRectGetHeight(v86);
  sub_1E47FE9CC();
  CGRectGetHeight(v87);
  sub_1E47FD88C();
  sub_1E487889C();
  sub_1E4877BCC();
  v55 = v72;
  sub_1E477372C(v4, v72, &qword_1ECF7D1D8, &qword_1E4880428);
  v56 = v74;
  v57 = (v55 + *(v73 + 36));
  v58 = v82;
  *v57 = v81;
  v57[1] = v58;
  v57[2] = v83;
  sub_1E477372C(v55, v56, &qword_1ECF7D1E0, &qword_1E4880430);
  v59 = v37;
  v60 = v37;
  v61 = v71;
  sub_1E4773850(v59, v71, &qword_1ECF7D1F8, &qword_1E4880448);
  v62 = v75;
  sub_1E4773850(v56, v75, &qword_1ECF7D1E0, &qword_1E4880430);
  v63 = v76;
  sub_1E4773850(v61, v76, &qword_1ECF7D1F8, &qword_1E4880448);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D210, &qword_1E4880460);
  sub_1E4773850(v62, v63 + *(v64 + 48), &qword_1ECF7D1E0, &qword_1E4880430);
  v65 = v63 + *(v64 + 64);
  *v65 = 0;
  *(v65 + 8) = 0;
  sub_1E47738B8(v56, &qword_1ECF7D1E0, &qword_1E4880430);
  sub_1E47738B8(v60, &qword_1ECF7D1F8, &qword_1E4880448);
  sub_1E47738B8(v62, &qword_1ECF7D1E0, &qword_1E4880430);
  sub_1E47738B8(v61, &qword_1ECF7D1F8, &qword_1E4880448);
}

uint64_t sub_1E480080C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = sub_1E4877B3C();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1E48782AC();
  v7 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC28, &unk_1E4880470);
  MEMORY[0x1EEE9AC00](v64);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC30, &qword_1E487F030);
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D220, &qword_1E4880480);
  v68 = *(v14 - 8);
  v69 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D228, &qword_1E4880488);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  sub_1E4878D2C();
  v67 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = a1[3];
  v23 = v22 + sub_1E47FE274();
  sub_1E47FE9CC();
  Height = CGRectGetHeight(v72);
  v25 = *a1;
  v26 = *(*a1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v27 = sub_1E47FD88C();
  v28 = round(v26 * v27) / v27;
  if (v28 >= Height)
  {
    v28 = Height;
  }

  v30 = v23 > v28;
  v29 = vabdd_f64(v28, v23);
  v30 = v30 && v29 > 1.0;
  if (v30)
  {
    (*(v68 + 56))(v21, 1, 1, v69);
  }

  else
  {
    v56 = v19;
    v31 = a2;
    v32 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
    sub_1E47707EC(v25 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, v11);
    sub_1E48782DC();
    v33 = v7;
    v34 = *(v7 + 104);
    v35 = v57;
    v34(v9, *MEMORY[0x1E6980EA0], v57);
    v55 = sub_1E48782CC();

    (*(v33 + 8))(v9, v35);
    v36 = v25 + v32;
    a2 = v31;
    v37 = v58;
    sub_1E47707EC(v36, v58);
    v38 = v59;
    sub_1E47FDBF0(v59);
    sub_1E476F0D0(v37, v38);
    v39 = sub_1E48785FC();
    (*(v60 + 8))(v38, v62);
    sub_1E4803690(v37, type metadata accessor for Event);
    KeyPath = swift_getKeyPath();
    v41 = type metadata accessor for NarrowEventTravelTimeText(0);
    *&v11[v41[8]] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *&v11[v41[5]] = v55;
    *&v11[v41[6]] = v39;
    v42 = &v11[v41[7]];
    *v42 = 0;
    v42[8] = 1;
    LOBYTE(KeyPath) = sub_1E487819C();
    sub_1E47FDDF8();

    sub_1E4877B0C();
    v43 = v64;
    v44 = &v11[*(v64 + 36)];
    *v44 = KeyPath;
    v19 = v56;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    v49 = sub_1E47E348C();
    v50 = v63;
    sub_1E48784AC();
    sub_1E47738B8(v11, &qword_1ECF7CC28, &unk_1E4880470);
    v70 = v43;
    v71 = v49;
    swift_getOpaqueTypeConformance2();
    v51 = v61;
    v52 = v66;
    sub_1E48785BC();
    (*(v65 + 8))(v50, v52);
    sub_1E477372C(v51, v21, &qword_1ECF7D220, &qword_1E4880480);
    (*(v68 + 56))(v21, 0, 1, v69);
  }

  sub_1E4773850(v21, v19, &qword_1ECF7D228, &qword_1E4880488);
  sub_1E4773850(v19, a2, &qword_1ECF7D228, &qword_1E4880488);
  v53 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D230, &unk_1E4880490) + 48);
  *v53 = 0;
  *(v53 + 8) = 0;
  sub_1E47738B8(v21, &qword_1ECF7D228, &qword_1E4880488);
  sub_1E47738B8(v19, &qword_1ECF7D228, &qword_1E4880488);
}

uint64_t sub_1E4800F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v135 = sub_1E48782AC();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for LocationView(0);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAF0, &qword_1E487ED30);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v138 = &v111 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D238, &qword_1E48804A0);
  v151 = *(v6 - 8);
  v152 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v136 = &v111 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D240, &unk_1E48804A8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v153 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v154 = &v111 - v11;
  v12 = sub_1E4877B3C();
  v148 = *(v12 - 8);
  v149 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v146 = (&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_1E487846C();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Event(0);
  v15 = MEMORY[0x1EEE9AC00](v117);
  v145 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v111 - v17;
  v18 = sub_1E487719C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v115 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB30, &qword_1E487B130);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v111 - v20;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB38, &qword_1E487B138);
  MEMORY[0x1EEE9AC00](v118);
  v122 = &v111 - v21;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB40, &qword_1E487B140);
  MEMORY[0x1EEE9AC00](v129);
  v123 = &v111 - v22;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D248, &qword_1E48804B8);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v111 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D250, &qword_1E48804C0);
  v142 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v128 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v127 = &v111 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D258, &qword_1E48804C8);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v147 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v111 - v31;
  v33 = type metadata accessor for NarrowEventTitleText(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D260, &qword_1E48804D0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v111 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D268, &qword_1E48804D8);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v144 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v155 = &v111 - v43;
  sub_1E4878D2C();
  v143 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_1E47FEB64())
  {
    sub_1E47707EC(*a1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, v35);
    if (qword_1EE2B3748 != -1)
    {
      swift_once();
    }

    v44 = qword_1EE2BAEE0;
    *&v35[v33[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *&v35[v33[5]] = v44;
    v45 = &v35[v33[6]];
    *v45 = 0;
    v45[8] = 1;
    *&v35[v33[7]] = 0;
    sub_1E4803648(&qword_1EE2B2A10, type metadata accessor for NarrowEventTitleText, &unk_1E487B0D8);

    sub_1E48785BC();
    sub_1E4803690(v35, type metadata accessor for NarrowEventTitleText);
    v46 = v155;
    sub_1E477372C(v39, v155, &qword_1ECF7D260, &qword_1E48804D0);
    (*(v37 + 56))(v46, 0, 1, v36);
  }

  else
  {
    (*(v37 + 56))(v155, 1, 1, v36);
  }

  v47 = sub_1E47FEC10();
  v156 = v32;
  if (v47)
  {
    sub_1E47FE3E0(v115);
    v48 = sub_1E487847C();
    v112 = v48;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v113 = v53;
    KeyPath = swift_getKeyPath();
    v157 = v48;
    v158 = v50;
    LOBYTE(v48) = v52 & 1;
    v159 = v52 & 1;
    v160 = v54;
    v161 = KeyPath;
    v162 = 0;
    v115 = *a1;
    v114 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
    v56 = v116;
    sub_1E47707EC(v115 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, v116);
    v117 = type metadata accessor for Event;
    sub_1E4803690(v56, type metadata accessor for Event);
    v57 = v124;
    sub_1E487845C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB58, &unk_1E487F1D0);
    sub_1E4780E40();
    v58 = v119;
    sub_1E487853C();
    (*(v125 + 8))(v57, v126);
    sub_1E477A3C8(v112, v50, v48);

    v59 = a1[4];
    v60 = swift_getKeyPath();
    v61 = v122;
    (*(v120 + 32))(v122, v58, v121);
    v62 = (v61 + *(v118 + 36));
    *v62 = v60;
    v62[1] = v59;
    v63 = v145;
    sub_1E47707EC(v115 + v114, v145);

    v64 = v146;
    sub_1E47FDBF0(v146);
    sub_1E476F0D0(v63, v64);
    v65 = sub_1E48785FC();
    (*(v148 + 8))(v64, v149);
    sub_1E4803690(v63, v117);
    v66 = swift_getKeyPath();
    v67 = v123;
    sub_1E477372C(v61, v123, &qword_1ECF7BB38, &qword_1E487B138);
    v68 = v129;
    v69 = (v67 + *(v129 + 36));
    *v69 = v66;
    v69[1] = v65;
    v70 = sub_1E4780FB0();
    v71 = v130;
    sub_1E48784AC();
    sub_1E47738B8(v67, &qword_1ECF7BB40, &qword_1E487B140);
    v157 = sub_1E47FE6B8();
    v158 = v72;
    sub_1E477A374(v157, v72, v73);
    v74 = sub_1E487848C();
    v76 = v75;
    LOBYTE(v61) = v77;
    v157 = v68;
    v158 = v70;
    swift_getOpaqueTypeConformance2();
    v78 = v128;
    v79 = v132;
    sub_1E487856C();
    v80 = v76;
    v32 = v156;
    sub_1E477A3C8(v74, v80, v61 & 1);

    (*(v131 + 8))(v71, v79);
    v81 = v127;
    sub_1E4877C8C();
    sub_1E47738B8(v78, &qword_1ECF7D250, &qword_1E48804C0);
    sub_1E477372C(v81, v32, &qword_1ECF7D250, &qword_1E48804C0);
    v82 = 0;
  }

  else
  {
    v82 = 1;
  }

  v83 = v154;
  v84 = 1;
  (*(v142 + 56))(v32, v82, 1, v24);
  if (sub_1E47FECC0())
  {
    v85 = *a1;
    v86 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
    v87 = v139;
    v88 = v137;
    sub_1E47707EC(v85 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, &v137[*(v139 + 20)]);
    sub_1E48782DC();
    v89 = v134;
    v90 = v133;
    v91 = v135;
    (*(v134 + 104))(v133, *MEMORY[0x1E6980EA0], v135);
    v142 = sub_1E48782CC();

    (*(v89 + 8))(v90, v91);
    v92 = v85 + v86;
    v93 = v145;
    sub_1E47707EC(v92, v145);
    v94 = v146;
    sub_1E47FDBF0(v146);
    sub_1E476F0D0(v93, v94);
    v95 = sub_1E48785FC();
    (*(v148 + 8))(v94, v149);
    sub_1E4803690(v93, type metadata accessor for Event);
    *v88 = swift_getKeyPath();
    *(v88 + 8) = 0;
    v96 = v87[11];
    *(v88 + v96) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *(v88 + v87[6]) = v142;
    *(v88 + v87[7]) = 1;
    *(v88 + v87[8]) = v95;
    *(v88 + v87[9]) = 1;
    *(v88 + v87[10]) = 0;
    v97 = sub_1E4803648(qword_1EE2B3E90, type metadata accessor for LocationView, &unk_1E487F2D0);
    v98 = v138;
    sub_1E48784AC();
    sub_1E4803690(v88, type metadata accessor for LocationView);
    v157 = v87;
    v158 = v97;
    swift_getOpaqueTypeConformance2();
    v99 = v136;
    v100 = v141;
    sub_1E48785BC();
    v101 = v98;
    v83 = v154;
    (*(v140 + 8))(v101, v100);
    v102 = v99;
    v32 = v156;
    sub_1E477372C(v102, v83, &qword_1ECF7D238, &qword_1E48804A0);
    v84 = 0;
  }

  (*(v151 + 56))(v83, v84, 1, v152);
  v103 = v155;
  v104 = v144;
  sub_1E4773850(v155, v144, &qword_1ECF7D268, &qword_1E48804D8);
  v105 = v147;
  sub_1E4773850(v32, v147, &qword_1ECF7D258, &qword_1E48804C8);
  v106 = v153;
  sub_1E4773850(v83, v153, &qword_1ECF7D240, &unk_1E48804A8);
  v107 = v150;
  sub_1E4773850(v104, v150, &qword_1ECF7D268, &qword_1E48804D8);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D270, &qword_1E48804E0);
  sub_1E4773850(v105, v107 + v108[12], &qword_1ECF7D258, &qword_1E48804C8);
  sub_1E4773850(v106, v107 + v108[16], &qword_1ECF7D240, &unk_1E48804A8);
  v109 = v107 + v108[20];
  *v109 = 0;
  *(v109 + 8) = 0;
  sub_1E47738B8(v83, &qword_1ECF7D240, &unk_1E48804A8);
  sub_1E47738B8(v156, &qword_1ECF7D258, &qword_1E48804C8);
  sub_1E47738B8(v103, &qword_1ECF7D268, &qword_1E48804D8);
  sub_1E47738B8(v106, &qword_1ECF7D240, &unk_1E48804A8);
  sub_1E47738B8(v105, &qword_1ECF7D258, &qword_1E48804C8);
  sub_1E47738B8(v104, &qword_1ECF7D268, &qword_1E48804D8);
}

uint64_t sub_1E4802258@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_1E4877B3C();
  v58 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D190, &qword_1E48803C8);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v57 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D198, &qword_1E48803D0);
  v10 = *(v64 - 8);
  v11 = MEMORY[0x1EEE9AC00](v64);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1A0, &qword_1E48803D8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v57 - v15;
  sub_1E4878D2C();
  v63 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47FE9CC();
  Height = CGRectGetHeight(v73);
  v18 = *a1;
  v19 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight;
  v20 = *(*a1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v21 = sub_1E47FD88C();
  v22 = round(v20 * v21) / v21;
  if (v22 >= Height)
  {
    v22 = Height;
  }

  if (v22 <= 0.0)
  {
    goto LABEL_21;
  }

  v23 = *(v18 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E47FE9CC();
  v24 = CGRectGetHeight(v74);
  if (v24 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  sub_1E47FE9CC();
  v26 = CGRectGetHeight(v75);
  v27 = *(v18 + v19);
  v28 = sub_1E47FD88C();
  v29 = round(v27 * v28) / v28;
  if (v29 >= v26)
  {
    v29 = v26;
  }

  if (v25 <= v29)
  {
LABEL_21:
    (*(v10 + 56))(v16, 1, 1, v64);
  }

  else
  {
    sub_1E47707EC(v18 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, v8);
    sub_1E47FDBF0(v5);
    v30 = sub_1E4770A7C(v8, v5);
    (*(v58 + 8))(v5, v3);
    sub_1E4803690(v8, type metadata accessor for Event);
    *&v66 = v30;
    WORD4(v66) = 256;
    *&v67 = 0x3FE0000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAE0, &unk_1E48803E0);
    sub_1E477F484();
    v31 = v62;
    sub_1E48784AC();

    sub_1E487889C();
    sub_1E4877CEC();
    v32 = (v31 + *(v59 + 36));
    v33 = v71;
    v32[4] = v70;
    v32[5] = v33;
    v32[6] = v72;
    v34 = v67;
    *v32 = v66;
    v32[1] = v34;
    v35 = v69;
    v32[2] = v68;
    v32[3] = v35;
    sub_1E47FE9CC();
    Width = CGRectGetWidth(v76);
    sub_1E47FE9CC();
    MaxX = CGRectGetMaxX(v77);
    if (MaxX == CGRectGetMaxX(*(*(v18 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect)))
    {
      v38 = 0.0;
    }

    else
    {
      v38 = 2.0;
    }

    sub_1E47FE9CC();
    v39 = CGRectGetHeight(v78);
    v40 = *(v18 + v19);
    v41 = sub_1E47FD88C();
    v42 = round(v40 * v41) / v41;
    if (v42 >= v39)
    {
      v42 = v39;
    }

    v43 = v42 + -2.0;
    if (v43 < 0.0)
    {
      v44 = 0.0;
    }

    else
    {
      v44 = v43;
    }

    v45 = (Width - v38) * 0.5;
    v46 = *(sub_1E47FDDF8() + 48);

    v47 = v46 + v44;
    v48 = *(sub_1E47FDDF8() + 64);

    v49 = sub_1E47FD88C();
    v50 = round(v49 * (v47 - v48 * 0.5)) / v49;
    v51 = v61;
    sub_1E477372C(v31, v61, &qword_1ECF7D190, &qword_1E48803C8);
    v52 = v64;
    v53 = (v51 + *(v64 + 36));
    *v53 = v45;
    v53[1] = v50;
    v54 = v51;
    v55 = v60;
    sub_1E477372C(v54, v60, &qword_1ECF7D198, &qword_1E48803D0);
    sub_1E477372C(v55, v16, &qword_1ECF7D198, &qword_1E48803D0);
    (*(v10 + 56))(v16, 0, 1, v52);
  }

  sub_1E477372C(v16, v65, &qword_1ECF7D1A0, &qword_1E48803D8);
}

uint64_t sub_1E48028D4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D128, &qword_1E4880248);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D130, &qword_1E4880250);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  sub_1E4802B4C(v1, v5);
  sub_1E47FE9CC();
  CGRectGetWidth(v26);
  sub_1E47FE9CC();
  CGRectGetMaxX(v27);
  v10 = *v1;
  v11 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate;
  CGRectGetMaxX(*(*(*v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect));
  sub_1E47FE9CC();
  CGRectGetHeight(v28);
  sub_1E487887C();
  sub_1E4877BCC();
  sub_1E477372C(v5, v9, &qword_1ECF7D128, &qword_1E4880248);
  v12 = &v9[*(v7 + 44)];
  v13 = v25[1];
  *v12 = v25[0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v25[2];
  sub_1E47FE9CC();
  v15 = v14;
  sub_1E47FE9CC();
  Width = CGRectGetWidth(v29);
  sub_1E47FE9CC();
  MaxX = CGRectGetMaxX(v30);
  if (MaxX == CGRectGetMaxX(*(*(v10 + v11) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect)))
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 2.0;
  }

  v19 = v15 + (Width - v18) * 0.5;
  sub_1E47FE9CC();
  v21 = v20;
  sub_1E47FE9CC();
  v22 = v21 + CGRectGetHeight(v31) * 0.5;
  sub_1E477372C(v9, a1, &qword_1ECF7D130, &qword_1E4880250);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D138, &qword_1E4880258);
  v24 = (a1 + *(result + 36));
  *v24 = v19;
  v24[1] = v22;
  return result;
}

uint64_t sub_1E4802B4C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v51 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D140, &qword_1E4880260);
  MEMORY[0x1EEE9AC00](v50);
  v44 = &v38 - v2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D148, &qword_1E4880268);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v38 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D150, &unk_1E4880270);
  v41 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v40 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_1E487725C();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v38 - v11;
  v12 = sub_1E4877CCC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D158, &qword_1E4880280);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v38 - v20;
  sub_1E4878D2C();
  v45 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = v47;
  sub_1E47FD9E8(v18);
  sub_1E4877CAC();
  sub_1E4803648(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v23 = sub_1E4878EAC();
  v24 = *(v13 + 8);
  v24(v16, v12);
  v25 = v22;
  v24(v18, v12);
  if ((v23 & 1) == 0)
  {
    v26 = *v22;
    v27 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
    v28 = type metadata accessor for Event(0);
    sub_1E4773850(v26 + *(v28 + 44) + v27, v7, &unk_1ECF7B688, &qword_1E487C160);
    v30 = v42;
    v29 = v43;
    if ((*(v42 + 48))(v7, 1, v43) != 1)
    {
      v32 = v39;
      (*(v30 + 32))(v39, v7, v29);
      v33 = (*(v30 + 16))(v38, v32, v29);
      MEMORY[0x1EEE9AC00](v33);
      *(&v38 - 2) = v25;
      sub_1E48032F4();
      v34 = v40;
      sub_1E487831C();
      v35 = v41;
      v36 = v49;
      (*(v41 + 16))(v46, v34, v49);
      swift_storeEnumTagMultiPayload();
      sub_1E4773680(&qword_1EE2B1078, &qword_1ECF7D150, &unk_1E4880270, MEMORY[0x1E697CD08]);
      sub_1E487803C();
      (*(v35 + 8))(v34, v36);
      (*(v30 + 8))(v32, v29);
      goto LABEL_8;
    }

    sub_1E47738B8(v7, &unk_1ECF7B688, &qword_1E487C160);
  }

  v31 = v44;
  sub_1E47FED74(v44);
  sub_1E4773850(v31, v46, &qword_1ECF7D140, &qword_1E4880260);
  swift_storeEnumTagMultiPayload();
  sub_1E4773680(&qword_1EE2B1078, &qword_1ECF7D150, &unk_1E4880270, MEMORY[0x1E697CD08]);
  sub_1E48032F4();
  sub_1E487803C();
  sub_1E47738B8(v31, &qword_1ECF7D140, &qword_1E4880260);
LABEL_8:
  sub_1E477372C(v21, v51, &qword_1ECF7D158, &qword_1E4880280);
}

uint64_t sub_1E4803240@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47FED74(a1);
}

unint64_t sub_1E48032F4()
{
  result = qword_1EE2B12B8;
  if (!qword_1EE2B12B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D140, &qword_1E4880260);
    sub_1E48033B0();
    sub_1E4803648(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B12B8);
  }

  return result;
}

unint64_t sub_1E48033B0()
{
  result = qword_1EE2B12F0;
  if (!qword_1EE2B12F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D160, &qword_1E4880288);
    sub_1E4803468();
    sub_1E4773680(&qword_1EE2B1288, &qword_1ECF7D180, &unk_1E48802B0, MEMORY[0x1E697EC10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B12F0);
  }

  return result;
}

unint64_t sub_1E4803468()
{
  result = qword_1EE2B1378;
  if (!qword_1EE2B1378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D168, &qword_1E4880290);
    sub_1E4803520();
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0, MEMORY[0x1E697F938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1378);
  }

  return result;
}

unint64_t sub_1E4803520()
{
  result = qword_1EE2B1490;
  if (!qword_1EE2B1490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D170, &qword_1E4880298);
    sub_1E4773680(&qword_1EE2B0FE8, &qword_1ECF7D178, &unk_1E48802A0, MEMORY[0x1E6981800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1490);
  }

  return result;
}

uint64_t sub_1E48035E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4803648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4803690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E48036F0()
{
  result = qword_1EE2B13C0;
  if (!qword_1EE2B13C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D138, &qword_1E4880258);
    sub_1E480377C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13C0);
  }

  return result;
}

unint64_t sub_1E480377C()
{
  result = qword_1EE2B14F8;
  if (!qword_1EE2B14F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D130, &qword_1E4880250);
    sub_1E4803808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14F8);
  }

  return result;
}

unint64_t sub_1E4803808()
{
  result = qword_1EE2B1048;
  if (!qword_1EE2B1048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D128, &qword_1E4880248);
    sub_1E480388C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1048);
  }

  return result;
}

unint64_t sub_1E480388C()
{
  result = qword_1EE2B11A8;
  if (!qword_1EE2B11A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D158, &qword_1E4880280);
    sub_1E4773680(&qword_1EE2B1078, &qword_1ECF7D150, &unk_1E4880270, MEMORY[0x1E697CD08]);
    sub_1E48032F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11A8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E4803964(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E48039B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E4803A28(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1E48782AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1E4877F1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E487A7E0;
  if ((a3 & 1) == 0)
  {

    v14 = sub_1E4878DDC();
    v15 = sub_1E48780FC();
    sub_1E4877AAC(v14, &dword_1E475C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(a2, 0);
    (*(v10 + 8))(v12, v9);
    if (v18[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E48781BC();
    goto LABEL_6;
  }

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E48782FC();
LABEL_6:
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA0], v5);
  v16 = sub_1E48782CC();

  (*(v6 + 8))(v8, v5);
  *(v13 + 32) = v16;
  return v13;
}

uint64_t sub_1E4803C9C@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 & 0x100) == 0;
  v9 = sub_1E4877F6C();
  sub_1E4803E04(a1 & 1, a2, a3 & 1, v17);
  v10 = v17[0];
  v11 = v17[1];
  v12 = v18;
  v14 = v19;
  v13 = v20;
  v15 = v21;
  LOBYTE(v17[0]) = 0;
  v23 = v18;
  v22 = v21;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 9) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = v10;
  *(a4 + 48) = v11;
  *(a4 + 56) = v12;
  *(a4 + 64) = v14;
  *(a4 + 72) = v13;
  *(a4 + 80) = v15;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 97) = v8;
  sub_1E478B8E0(v10, v11, v12);

  sub_1E477A3C8(v10, v11, v12);
}

void sub_1E4803E04(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v7 = sub_1E48782AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4877F1C();
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v13 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E486E640((a1 & 1) == 0, 1);
  if (v14[2])
  {
    v44 = v11;
    v15 = a2;
    v50 = v7;
    v51 = v13;
    v17 = v14[4];
    v16 = v14[5];

    v53 = v17;
    v54 = v16;
    sub_1E477A374(v18, v19, v20);
    v21 = sub_1E487848C();
    v23 = v22;
    LOBYTE(v17) = v24;
    sub_1E48786FC();
    v25 = sub_1E48783FC();
    v47 = v26;
    v48 = v25;
    v28 = v27;
    v49 = v29;

    sub_1E477A3C8(v21, v23, v17 & 1);

    if (v52)
    {
      if ((v15 & 1) == 0)
      {
LABEL_6:
        sub_1E48782FC();
LABEL_9:
        v33 = v50;
        (*(v8 + 104))(v10, *MEMORY[0x1E6980EA0], v50);
        sub_1E48782CC();

        (*(v8 + 8))(v10, v33);
        v35 = v47;
        v34 = v48;
        v36 = sub_1E487842C();
        v38 = v37;
        v40 = v39;
        v42 = v41;

        sub_1E477A3C8(v34, v35, v28 & 1);

        *a4 = v36;
        *(a4 + 8) = v38;
        *(a4 + 16) = v40 & 1;
        *(a4 + 24) = v42;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        sub_1E478B8E0(v36, v38, v40 & 1);

        sub_1E477A3C8(v36, v38, v40 & 1);

        return;
      }
    }

    else
    {

      v30 = sub_1E4878DDC();
      v31 = sub_1E48780FC();
      sub_1E4877AAC(v30, &dword_1E475C000, v31, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v32 = v45;
      sub_1E4877F0C();
      swift_getAtKeyPath();
      sub_1E477A484(v15, 0);
      (*(v46 + 8))(v32, v44);
      if (v53 != 1)
      {
        goto LABEL_6;
      }
    }

    sub_1E48781BC();
    goto LABEL_9;
  }

  __break(1u);
}

double sub_1E4804208@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 1);
  v7 = v2[16];
  v8 = sub_1E4877FBC();
  v24 = 0;
  if (v5)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  sub_1E4803C9C(v9 | v4, v6, v7, &v16);
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v32[0] = v16;
  v32[1] = v17;
  v32[2] = v18;
  v32[3] = v19;
  v32[4] = v20;
  v32[5] = v21;
  v33 = v22;
  sub_1E4804330(&v25, &v15);
  sub_1E48043A0(v32);
  *(&v23[3] + 7) = v28;
  *(&v23[4] + 7) = v29;
  *(&v23[5] + 7) = v30;
  *(&v23[6] + 7) = v31;
  *(v23 + 7) = v25;
  *(&v23[1] + 7) = v26;
  *(&v23[2] + 7) = v27;
  v10 = v23[2];
  *(a2 + 65) = v23[3];
  v11 = v23[5];
  *(a2 + 81) = v23[4];
  *(a2 + 97) = v11;
  *(a2 + 106) = *(&v23[5] + 9);
  result = *v23;
  v13 = v23[1];
  *(a2 + 17) = v23[0];
  *(a2 + 33) = v13;
  v14 = v24;
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  *(a2 + 49) = v10;
  return result;
}

uint64_t sub_1E4804330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D278, &qword_1E4880668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48043A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D278, &qword_1E4880668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4804408()
{
  result = qword_1EE2B0EC0;
  if (!qword_1EE2B0EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D280, &unk_1E4880670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0EC0);
  }

  return result;
}

uint64_t sub_1E480446C()
{
  v191 = sub_1E487751C();
  v209 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v186 = &v166 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v167 = &v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v168 = &v166 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v169 = &v166 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v171 = &v166 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v170 = &v166 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v176 = &v166 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v183 = &v166 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v192 = &v166 - v16;
  v187 = sub_1E487753C();
  v194 = *(v187 - 8);
  v17 = MEMORY[0x1EEE9AC00](v187);
  v175 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v193 = &v166 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v179 = &v166 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v166 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v166 - v25;
  v27 = type metadata accessor for Event(0);
  v28 = *(v27 - 1);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v174 = &v166 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v212 = &v166 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v166 - v33;
  v197 = sub_1E487736C();
  v201 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v36 = &v166 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1E487732C();
  v188 = *(v195 - 8);
  v37 = MEMORY[0x1EEE9AC00](v195);
  v172 = &v166 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v177 = &v166 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v166 - v41;
  v190 = sub_1E487706C();
  v200 = *(v190 - 8);
  v43 = MEMORY[0x1EEE9AC00](v190);
  v173 = &v166 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v178 = &v166 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v166 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v213 = *(v28 + 72);
  v50 = *(v28 + 80);
  v51 = (v50 + 32) & ~v50;
  v207 = v49;
  v208 = 2 * v213;
  v206 = v50;
  v52 = swift_allocObject();
  v214 = v51;
  v205 = v52;
  v53 = (v52 + v51);
  v196 = 0x80000001E48A89F0;
  v198 = v42;
  sub_1E4806788(v42);
  sub_1E487703C();
  v54 = sub_1E487863C();
  sub_1E487735C();
  sub_1E487733C();
  v55 = *(v201 + 8);
  v201 += 8;
  v189 = v55;
  v55(v36, v197);
  sub_1E487724C();

  v56 = v27[15];
  v217 = type metadata accessor for Location(0);
  v57 = *(v217 - 8);
  v58 = *(v57 + 56);
  v215 = v57 + 56;
  v216 = v58;
  (v58)(v53 + v56, 1, 1, v217);
  *v53 = 0xD00000000000001CLL;
  v53[1] = v196;
  sub_1E487704C();
  sub_1E487701C();
  v185 = *(v200 + 1);
  v200 += 2;
  v59 = v190;
  v185(v48, v190);
  *(v53 + v27[7]) = 0;
  *(v53 + v27[8]) = 0;
  *(v53 + v27[9]) = v54;
  v60 = (v53 + v27[10]);
  *v60 = 0;
  v60[1] = 0;
  *(v53 + v27[12]) = 0;
  *(v53 + v27[13]) = 0;
  v61 = (v53 + v27[16]);
  *v61 = 0;
  v61[1] = 0;
  *(v53 + v27[14]) = 0;
  *(v53 + v27[17]) = 0;
  *(v53 + v27[18]) = 0;
  *(v53 + v27[19]) = 1;
  v62 = (v53 + v213);
  sub_1E4806788(v198);
  sub_1E487703C();
  v211 = sub_1E48786AC();
  sub_1E487735C();
  sub_1E487733C();
  v189(v36, v197);
  sub_1E487724C();

  (v216)(v62 + v27[15], 1, 1, v217);
  *v62 = 0xD00000000000001CLL;
  v62[1] = v196;
  sub_1E487704C();
  sub_1E487701C();
  v63 = v59;
  v64 = v185;
  v185(v48, v63);
  *(v62 + v27[7]) = 0;
  *(v62 + v27[8]) = 0;
  *(v62 + v27[9]) = v211;
  v65 = (v62 + v27[10]);
  *v65 = 0;
  v65[1] = 0;
  *(v62 + v27[12]) = 0;
  *(v62 + v27[13]) = 0;
  v66 = (v62 + v27[16]);
  *v66 = 0;
  v66[1] = 0;
  *(v62 + v27[14]) = 0;
  *(v62 + v27[17]) = 0;
  *(v62 + v27[18]) = 0;
  *(v62 + v27[19]) = 1;
  v67 = (v53 + v208);
  sub_1E4806788(v198);
  sub_1E487703C();
  v211 = sub_1E48786CC();
  sub_1E487735C();
  sub_1E487733C();
  v182 = v36;
  v189(v36, v197);
  sub_1E487724C();

  (v216)(v67 + v27[15], 1, 1, v217);
  *v67 = 0xD00000000000001CLL;
  v67[1] = v196;
  sub_1E487704C();
  sub_1E487701C();
  v64(v48, v190);
  *(v67 + v27[7]) = 0;
  *(v67 + v27[8]) = 0;
  *(v67 + v27[9]) = v211;
  v68 = (v67 + v27[10]);
  *v68 = 0;
  v68[1] = 0;
  *(v67 + v27[12]) = 0;
  *(v67 + v27[13]) = 0;
  v69 = (v67 + v27[16]);
  *v69 = 0;
  v69[1] = 0;
  *(v67 + v27[14]) = 0;
  *(v67 + v27[17]) = 0;
  *(v67 + v27[18]) = 0;
  *(v67 + v27[19]) = 1;
  v218 = MEMORY[0x1E69E7CC0];
  v70 = 3;
  sub_1E4858038(0, 3, 0);
  v71 = v27;
  v72 = v218;
  v204 = v53;
  v73 = v53;
  do
  {
    v74 = v212;
    sub_1E47707EC(v73, v212);
    sub_1E47707EC(v74, v34);
    if (qword_1EE2B41F8 != -1)
    {
      swift_once();
    }

    v75 = sub_1E487719C();
    v76 = __swift_project_value_buffer(v75, qword_1EE2BAF00);
    v77 = *(v75 - 8);
    v78 = *(v77 + 16);
    v210 = v77 + 16;
    v211 = v78;
    v78(v26, v76, v75);
    sub_1E47710AC(v74);
    v79 = &v26[*(v217 + 20)];
    *v79 = 0;
    *(v79 + 1) = 0;
    (v216)(v26, 0, 1);
    sub_1E47A14B4(v26, &v34[v71[15]]);
    v218 = v72;
    v81 = *(v72 + 16);
    v80 = *(v72 + 24);
    if (v81 >= v80 >> 1)
    {
      sub_1E4858038((v80 > 1), v81 + 1, 1);
      v72 = v218;
    }

    *(v72 + 16) = v81 + 1;
    v82 = v213;
    sub_1E4770850(v34, v72 + v214 + v81 * v213);
    v73 += v82;
    --v70;
  }

  while (v70);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v181 = swift_allocObject();
  sub_1E4877A7C();
  v83 = v209;
  v84 = *(v209 + 104);
  v85 = v186;
  LODWORD(v208) = *MEMORY[0x1E6969A48];
  v199 = v209 + 104;
  v207 = v84;
  v84(v186);
  v86 = v198;
  sub_1E4806788(v198);
  v87 = v71;
  sub_1E48774BC();
  v88 = v188;
  v89 = v86;
  v90 = v195;
  v205 = *(v188 + 8);
  v206 = v188 + 8;
  v205(v89, v195);
  v91 = *(v83 + 8);
  v92 = v85;
  v93 = v192;
  v209 = v83 + 8;
  v204 = v91;
  v91(v92, v191);
  v202 = *(v88 + 48);
  v203 = v88 + 48;
  result = v202(v93, 1, v90);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v95 = (v181 + v214);
  v96 = *(v194 + 8);
  v97 = v184;
  v194 += 8;
  v184 = v96;
  (v96)(v97, v187);
  v98 = *(v88 + 32);
  v188 = v88 + 32;
  v192 = v98;
  (v98)(v177, v93, v195);
  v99 = v178;
  sub_1E487703C();
  v177 = sub_1E487868C();
  v100 = v182;
  sub_1E487735C();
  sub_1E487733C();
  v189(v100, v197);
  sub_1E487724C();

  (v216)(v95 + v87[15], 1, 1, v217);
  *v95 = 0xD00000000000001CLL;
  v95[1] = v196;
  sub_1E487704C();
  sub_1E487701C();
  v185(v99, v190);
  *(v95 + v87[7]) = 0;
  *(v95 + v87[8]) = 0;
  *(v95 + v87[9]) = v177;
  v101 = (v95 + v87[10]);
  *v101 = 0;
  v101[1] = 0;
  *(v95 + v87[12]) = 0;
  *(v95 + v87[13]) = 0;
  v102 = (v95 + v87[16]);
  *v102 = 0;
  v102[1] = 0;
  *(v95 + v87[14]) = 0;
  *(v95 + v87[17]) = 0;
  *(v95 + v87[18]) = 0;
  *(v95 + v87[19]) = 1;
  v103 = v179;
  sub_1E4877A7C();
  v104 = v186;
  v105 = v191;
  v207(v186, v208, v191);
  v106 = v198;
  sub_1E4806788(v198);
  sub_1E48774BC();
  v107 = v106;
  v108 = v195;
  v205(v107, v195);
  v109 = v105;
  v110 = v183;
  v204(v104, v109);
  result = v202(v110, 1, v108);
  if (result == 1)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v180 = v95;
  v111 = (v95 + v213);
  (v184)(v103, v187);
  (v192)(v172, v110, v195);
  v112 = v173;
  sub_1E487703C();
  v183 = sub_1E487864C();
  v113 = v182;
  sub_1E487735C();
  sub_1E487733C();
  v189(v113, v197);
  sub_1E487724C();

  (v216)(v111 + v87[15], 1, 1, v217);
  *v111 = 0xD00000000000001CLL;
  v111[1] = v196;
  sub_1E487704C();
  sub_1E487701C();
  v185(v112, v190);
  *(v111 + v87[7]) = 0;
  *(v111 + v87[8]) = 0;
  *(v111 + v87[9]) = v183;
  v114 = (v111 + v87[10]);
  *v114 = 0;
  v114[1] = 0;
  *(v111 + v87[12]) = 0;
  *(v111 + v87[13]) = 0;
  v115 = (v111 + v87[16]);
  *v115 = 0;
  v115[1] = 0;
  *(v111 + v87[14]) = 0;
  *(v111 + v87[17]) = 0;
  *(v111 + v87[18]) = 0;
  *(v111 + v87[19]) = 1;
  v218 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, 2, 0);
  v116 = v218;
  v117 = v212;
  sub_1E47707EC(v180, v212);
  v118 = v174;
  sub_1E47707EC(v117, v174);
  v211(v26, v76, v75);
  sub_1E47710AC(v117);
  v119 = v216;
  v120 = &v26[*(v217 + 20)];
  *v120 = 0;
  *(v120 + 1) = 0;
  v119(v26, 0, 1);
  sub_1E47A14B4(v26, v118 + v87[15]);
  v218 = v116;
  v122 = *(v116 + 16);
  v121 = *(v116 + 24);
  v200 = v87;
  v201 = v116;
  v123 = v122 + 1;
  if (v122 >= v121 >> 1)
  {
    sub_1E4858038((v121 > 1), v122 + 1, 1);
    v123 = v122 + 1;
    v201 = v218;
  }

  v124 = v201;
  *(v201 + 16) = v123;
  v125 = v213;
  sub_1E4770850(v118, v124 + v214 + v122 * v213);
  sub_1E47707EC(v111, v117);
  sub_1E47707EC(v117, v118);
  v211(v26, v76, v75);
  sub_1E47710AC(v117);
  v126 = &v26[*(v217 + 20)];
  *v126 = 0;
  *(v126 + 1) = 0;
  (v216)(v26, 0, 1);
  sub_1E47A14B4(v26, v118 + v200[15]);
  v218 = v124;
  v128 = *(v124 + 16);
  v127 = *(v124 + 24);
  if (v128 >= v127 >> 1)
  {
    sub_1E4858038((v127 > 1), v128 + 1, 1);
    v201 = v218;
  }

  v129 = v201;
  *(v201 + 16) = v128 + 1;
  sub_1E4770850(v118, v129 + v214 + v128 * v125);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E4877A7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v130 = type metadata accessor for DayEvents(0);
  v131 = *(*(v130 - 1) + 72);
  v132 = (*(*(v130 - 1) + 80) + 32) & ~*(*(v130 - 1) + 80);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_1E48806A0;
  v215 = v133;
  v134 = (v133 + v132);
  v135 = v175;
  sub_1E4877A7C();
  v136 = v198;
  sub_1E4806788(v198);
  sub_1E487745C();
  v137 = v195;
  v138 = v205;
  v205(v136, v195);
  (v184)(v135, v187);
  *&v134[v130[5]] = v72;
  v139 = MEMORY[0x1E69E7CC0];
  *&v134[v130[6]] = MEMORY[0x1E69E7CC0];
  v134[v130[7]] = 0;
  v216 = v134;
  v217 = v131;
  v140 = &v134[v131];
  sub_1E4806C28(&v134[v131]);
  *&v140[v130[5]] = v201;
  *&v140[v130[6]] = v139;
  v140[v130[7]] = 0;
  v141 = v186;
  v142 = v191;
  v207(v186, v208, v191);
  sub_1E4806C28(v136);
  v143 = v176;
  sub_1E48774BC();
  v138(v136, v137);
  v204(v141, v142);
  result = v202(v143, 1, v137);
  if (result == 1)
  {
    goto LABEL_22;
  }

  v144 = &v216[2 * v217];
  (v192)(v144, v143, v137);
  v145 = MEMORY[0x1E69E7CC0];
  *&v144[v130[5]] = MEMORY[0x1E69E7CC0];
  *&v144[v130[6]] = v145;
  v144[v130[7]] = 0;
  v207(v141, v208, v142);
  sub_1E4806C28(v136);
  v146 = v136;
  v147 = v170;
  sub_1E48774BC();
  v205(v146, v137);
  v204(v141, v142);
  result = v202(v147, 1, v137);
  v148 = v142;
  v149 = v137;
  v150 = v171;
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v151 = &v216[3 * v217];
  v152 = v192;
  (v192)(v151, v147, v149);
  v153 = MEMORY[0x1E69E7CC0];
  *&v151[v130[5]] = MEMORY[0x1E69E7CC0];
  *&v151[v130[6]] = v153;
  v151[v130[7]] = 0;
  v207(v141, v208, v148);
  sub_1E4806C28(v146);
  sub_1E48774BC();
  v205(v146, v149);
  v204(v141, v148);
  result = v202(v150, 1, v149);
  if (result == 1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v154 = v146;
  v155 = &v216[4 * v217];
  v152(v155, v150, v149);
  v156 = MEMORY[0x1E69E7CC0];
  *&v155[v130[5]] = MEMORY[0x1E69E7CC0];
  *&v155[v130[6]] = v156;
  v155[v130[7]] = 0;
  v207(v141, v208, v148);
  sub_1E4806C28(v154);
  v157 = v169;
  sub_1E48774BC();
  v205(v154, v149);
  v204(v141, v148);
  result = v202(v157, 1, v149);
  if (result == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v158 = &v216[5 * v217];
  v152(v158, v157, v149);
  *&v158[v130[5]] = v156;
  *&v158[v130[6]] = v156;
  v158[v130[7]] = 0;
  v207(v141, v208, v148);
  sub_1E4806C28(v154);
  v159 = v168;
  sub_1E48774BC();
  v205(v154, v149);
  v204(v141, v148);
  result = v202(v159, 1, v149);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v160 = &v216[6 * v217];
  (v192)(v160, v159, v149);
  v161 = MEMORY[0x1E69E7CC0];
  *&v160[v130[5]] = MEMORY[0x1E69E7CC0];
  *&v160[v130[6]] = v161;
  v160[v130[7]] = 0;
  v207(v141, v208, v148);
  sub_1E4806C28(v154);
  v162 = v167;
  v163 = v193;
  sub_1E48774BC();
  v205(v154, v149);
  v204(v141, v148);
  result = v202(v162, 1, v149);
  if (result != 1)
  {
    v164 = v163;
    v165 = &v216[8 * v217 - v217];
    (v192)(v165, v162, v149);
    *(v165 + v130[5]) = v161;
    *(v165 + v130[6]) = v161;
    *(v165 + v130[7]) = 0;
    (v184)(v164, v187);
    return v215;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E48060FC@<X0>(char *a1@<X8>)
{
  v2 = sub_1E487736C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E487732C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E487706C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E487731C();
  sub_1E487703C();
  v11 = sub_1E487864C();
  sub_1E487735C();
  sub_1E487733C();
  (*(v3 + 8))(v5, v2);
  v12 = type metadata accessor for Event(0);
  sub_1E487724C();

  v13 = v12[15];
  v14 = type metadata accessor for Location(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  *a1 = 0x7265646E696D6552;
  *(a1 + 1) = 0xE800000000000000;
  sub_1E487704C();
  sub_1E487701C();
  result = (*(v8 + 8))(v10, v7);
  *&a1[v12[7]] = 0;
  *&a1[v12[8]] = 0;
  *&a1[v12[9]] = v11;
  v16 = &a1[v12[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  a1[v12[12]] = 0;
  a1[v12[13]] = 0;
  v17 = &a1[v12[16]];
  *v17 = 0;
  *(v17 + 1) = 0;
  a1[v12[14]] = 7;
  a1[v12[17]] = 0;
  a1[v12[18]] = 0;
  a1[v12[19]] = 1;
  return result;
}

uint64_t sub_1E48063E8@<X0>(char *a1@<X8>, double a2@<D0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1E487736C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487732C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v24 = sub_1E487706C();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E487731C();
  sub_1E487703C();
  v23 = sub_1E487868C();
  sub_1E487735C();
  sub_1E487733C();
  (*(v8 + 8))(v10, v7);
  v15 = type metadata accessor for Event(0);
  sub_1E487724C();

  v16 = v15[15];
  v17 = type metadata accessor for Location(0);
  v18 = *(*(v17 - 8) + 56);
  v18(&a1[v16], 1, 1, v17);
  *a1 = 0x3120746E657645;
  *(a1 + 1) = 0xE700000000000000;
  sub_1E487704C();
  sub_1E487701C();
  (*(v12 + 8))(v14, v24);
  *&a1[v15[7]] = a2;
  *&a1[v15[8]] = 0;
  *&a1[v15[9]] = v23;
  v19 = &a1[v15[10]];
  *v19 = 0;
  *(v19 + 1) = 0;
  a1[v15[12]] = 0;
  a1[v15[13]] = 0;
  v20 = &a1[v15[16]];
  *v20 = 0;
  *(v20 + 1) = 0;
  a1[v15[14]] = 0;
  a1[v15[17]] = 0;
  a1[v15[18]] = 0;
  a1[v15[19]] = 1;
  sub_1E487712C();
  v21 = &v6[*(v17 + 20)];
  *v21 = 0;
  *(v21 + 1) = 0;
  v18(v6, 0, 1, v17);
  return sub_1E47A14B4(v6, &a1[v16]);
}

uint64_t sub_1E4806788@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_1E487753C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C558, qword_1E487D928);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1E48770FC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 56))(v13, 1, 1, v4);
  v18 = sub_1E487757C();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_1E48770EC();
  sub_1E4877A7C();
  sub_1E48774AC();
  v19 = sub_1E487732C();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v3, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    (*(v15 + 8))(v17, v14);
    return (*(v20 + 32))(v23, v3, v19);
  }

  return result;
}

uint64_t sub_1E4806B60()
{
  v0 = sub_1E487719C();
  __swift_allocate_value_buffer(v0, qword_1EE2BAEE8);
  __swift_project_value_buffer(v0, qword_1EE2BAEE8);
  return sub_1E487712C();
}

uint64_t sub_1E4806BC4()
{
  v0 = sub_1E487719C();
  __swift_allocate_value_buffer(v0, qword_1EE2BAF00);
  __swift_project_value_buffer(v0, qword_1EE2BAF00);
  return sub_1E487712C();
}

uint64_t sub_1E4806C28@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_1E487751C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v28 = &v24 - v13;
  v14 = sub_1E487753C();
  v26 = *(v14 - 8);
  v27 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1E4877A7C();
  sub_1E4877A7C();
  (*(v2 + 104))(v4, *MEMORY[0x1E6969A48], v1);
  sub_1E4806788(v12);
  sub_1E48774BC();
  v25 = *(v9 + 8);
  v25(v12, v8);
  (*(v2 + 8))(v4, v1);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = v27;
    v22 = *(v26 + 8);
    v22(v17, v27);
    v23 = v28;
    (*(v9 + 32))(v28, v7, v8);
    sub_1E487745C();
    v25(v23, v8);
    return (v22)(v19, v21);
  }

  return result;
}

uint64_t sub_1E4806FA8()
{
  v0 = sub_1E487753C();
  v57 = *(v0 - 8);
  v58 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v56 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = &v43 - v3;
  v59 = sub_1E487736C();
  v4 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E487732C();
  v62 = *(v60 - 8);
  v7 = MEMORY[0x1EEE9AC00](v60);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - v9;
  v51 = sub_1E487706C();
  v61 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v13 = (type metadata accessor for Event(0) - 8);
  v14 = *v13;
  v52 = *(*v13 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v53 = xmmword_1E487A7F0;
  v55 = v16;
  *(v16 + 16) = xmmword_1E487A7F0;
  v17 = v16 + v15;
  v45 = 0x80000001E48A8A30;
  sub_1E4806788(v10);
  sub_1E487703C();
  v18 = sub_1E487863C();
  sub_1E487735C();
  sub_1E487733C();
  v19 = *(v4 + 8);
  v48 = v4 + 8;
  v49 = v19;
  v19(v6, v59);
  sub_1E487724C();

  v20 = v13[17];
  v21 = type metadata accessor for Location(0);
  v22 = *(v21 - 8);
  v46 = *(v22 + 56);
  v47 = v22 + 56;
  v46(v17 + v20, 1, 1, v21);
  *v17 = 0xD00000000000001ELL;
  *(v17 + 8) = 0x80000001E48A8A30;
  sub_1E487704C();
  sub_1E487701C();
  v23 = *(v61 + 8);
  v61 += 8;
  v44 = v23;
  v24 = v51;
  v23(v12, v51);
  *(v17 + v13[9]) = 0;
  *(v17 + v13[10]) = 0;
  *(v17 + v13[11]) = v18;
  v25 = (v17 + v13[12]);
  *v25 = 0;
  v25[1] = 0;
  *(v17 + v13[14]) = 0;
  *(v17 + v13[15]) = 0;
  v26 = (v17 + v13[18]);
  *v26 = 0;
  v26[1] = 0;
  *(v17 + v13[16]) = 0;
  *(v17 + v13[19]) = 0;
  *(v17 + v13[20]) = 0;
  *(v17 + v13[21]) = 1;
  v27 = &v52[v17];
  v28 = v50;
  sub_1E4806788(v50);
  sub_1E48772AC();
  v29 = *(v62 + 8);
  v62 += 8;
  v52 = v29;
  (v29)(v28, v60);
  sub_1E487703C();
  v30 = sub_1E48786AC();
  sub_1E487735C();
  sub_1E487733C();
  v49(v6, v59);
  v31 = v54;
  sub_1E487724C();

  v46(&v27[v13[17]], 1, 1, v21);
  *v27 = 0xD00000000000001ELL;
  *(v27 + 1) = v45;
  sub_1E487704C();
  sub_1E487701C();
  v44(v12, v24);
  *&v27[v13[9]] = 0;
  *&v27[v13[10]] = 0;
  *&v27[v13[11]] = v30;
  v32 = &v27[v13[12]];
  *v32 = 0;
  *(v32 + 1) = 0;
  sub_1E47A1444(v31, &v27[v13[13]]);
  v27[v13[14]] = 0;
  v27[v13[15]] = 0;
  v33 = &v27[v13[18]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v27[v13[16]] = 0;
  v27[v13[19]] = 0;
  v27[v13[20]] = 0;
  v27[v13[21]] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v34 = (type metadata accessor for DayEvents(0) - 8);
  v35 = *(*v34 + 72);
  v36 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v53;
  v38 = v37 + v36;
  v39 = v56;
  sub_1E4877A7C();
  sub_1E4806788(v10);
  sub_1E487745C();
  (v52)(v10, v60);
  (*(v57 + 8))(v39, v58);
  *(v38 + v34[7]) = v55;
  v40 = MEMORY[0x1E69E7CC0];
  *(v38 + v34[8]) = MEMORY[0x1E69E7CC0];
  *(v38 + v34[9]) = 0;
  v41 = v38 + v35;
  sub_1E4806C28(v38 + v35);
  *(v41 + v34[7]) = v40;
  *(v41 + v34[8]) = v40;
  *(v41 + v34[9]) = 0;
  return v37;
}

char *sub_1E480774C()
{
  v114 = sub_1E487751C();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v102 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v102 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v103 = &v102 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v106 = &v102 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v104 = &v102 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v105 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v102 - v12;
  v115 = sub_1E487753C();
  v121 = *(v115 - 8);
  v13 = MEMORY[0x1EEE9AC00](v115);
  v110 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v102 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v102 - v17;
  v19 = type metadata accessor for Event(0);
  v20 = *(v19 - 1);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v102 - v24;
  v125 = sub_1E487736C();
  v128 = *(v125 - 1);
  MEMORY[0x1EEE9AC00](v125);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1E487732C();
  v131 = *(v124 - 8);
  v28 = MEMORY[0x1EEE9AC00](v124);
  v117 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v102 - v30;
  v32 = sub_1E487706C();
  v33 = *(v32 - 8);
  v126 = v32;
  v127 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v134 = *(v20 + 72);
  v36 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v108 = 2 * v134;
  v109 = swift_allocObject();
  v133 = v36;
  v37 = (v109 + v36);
  v119 = 0x80000001E48A8A30;
  v123 = v31;
  sub_1E4806788(v31);
  sub_1E487703C();
  v130 = sub_1E487863C();
  sub_1E487735C();
  v116 = v27;
  sub_1E487733C();
  v38 = *(v128 + 1);
  v128 = (v128 + 8);
  v120 = v38;
  v38(v27, v125);
  sub_1E487724C();

  v39 = v19[15];
  v137 = type metadata accessor for Location(0);
  v40 = *(v137 - 8);
  v41 = *(v40 + 56);
  v135 = v40 + 56;
  v136 = v41;
  (v41)(v37 + v39, 1, 1, v137);
  *v37 = 0xD00000000000001ELL;
  v37[1] = 0x80000001E48A8A30;
  sub_1E487704C();
  v122 = v35;
  sub_1E487701C();
  v42 = *(v127 + 8);
  v127 += 8;
  v118 = v42;
  v42(v35, v126);
  *(v37 + v19[7]) = 0;
  *(v37 + v19[8]) = 0;
  *(v37 + v19[9]) = v130;
  v43 = (v37 + v19[10]);
  *v43 = 0;
  v43[1] = 0;
  *(v37 + v19[12]) = 0;
  *(v37 + v19[13]) = 0;
  v44 = (v37 + v19[16]);
  *v44 = 0;
  v44[1] = 0;
  *(v37 + v19[14]) = 0;
  *(v37 + v19[17]) = 0;
  *(v37 + v19[18]) = 0;
  *(v37 + v19[19]) = 1;
  v45 = (v37 + v134);
  v46 = v117;
  sub_1E4806788(v117);
  sub_1E48772AC();
  v47 = v131 + 8;
  v130 = *(v131 + 8);
  v130(v46, v124);
  sub_1E487703C();
  v107 = sub_1E48786AC();
  v48 = v116;
  sub_1E487735C();
  sub_1E487733C();
  v120(v48, v125);
  sub_1E487724C();

  (v136)(v45 + v19[15], 1, 1, v137);
  *v45 = 0xD00000000000001ELL;
  v45[1] = v119;
  v49 = v122;
  sub_1E487704C();
  sub_1E487701C();
  v118(v49, v126);
  *(v45 + v19[7]) = 0;
  *(v45 + v19[8]) = 0;
  *(v45 + v19[9]) = v107;
  v50 = (v45 + v19[10]);
  *v50 = 0;
  v50[1] = 0;
  *(v45 + v19[12]) = 0;
  *(v45 + v19[13]) = 0;
  v51 = (v45 + v19[16]);
  *v51 = 0;
  v51[1] = 0;
  *(v45 + v19[14]) = 0;
  *(v45 + v19[17]) = 0;
  *(v45 + v19[18]) = 0;
  *(v45 + v19[19]) = 1;
  v52 = (v37 + v108);
  v53 = v117;
  sub_1E4806788(v117);
  sub_1E48772AC();
  v129 = v47;
  v130(v53, v124);
  v54 = v122;
  sub_1E487703C();
  v117 = sub_1E48786CC();
  v55 = v116;
  sub_1E487735C();
  sub_1E487733C();
  v120(v55, v125);
  sub_1E487724C();

  (v136)(v52 + v19[15], 1, 1, v137);
  *v52 = 0xD00000000000001ELL;
  v52[1] = v119;
  sub_1E487704C();
  sub_1E487701C();
  v118(v54, v126);
  *(v52 + v19[7]) = 0;
  *(v52 + v19[8]) = 0;
  *(v52 + v19[9]) = v117;
  v56 = (v52 + v19[10]);
  *v56 = 0;
  v56[1] = 0;
  *(v52 + v19[12]) = 0;
  *(v52 + v19[13]) = 0;
  v57 = (v52 + v19[16]);
  *v57 = 0;
  v57[1] = 0;
  *(v52 + v19[14]) = 0;
  *(v52 + v19[17]) = 0;
  *(v52 + v19[18]) = 0;
  *(v52 + v19[19]) = 1;
  v138 = MEMORY[0x1E69E7CC0];
  v58 = 3;
  sub_1E4858038(0, 3, 0);
  v59 = v138;
  v128 = v37;
  do
  {
    sub_1E47707EC(v37, v23);
    sub_1E47707EC(v23, v25);
    if (qword_1EE2B41F0 != -1)
    {
      swift_once();
    }

    v60 = sub_1E487719C();
    v61 = __swift_project_value_buffer(v60, qword_1EE2BAEE8);
    (*(*(v60 - 8) + 16))(v18, v61, v60);
    sub_1E47710AC(v23);
    v62 = &v18[*(v137 + 20)];
    *v62 = 0;
    *(v62 + 1) = 0;
    (v136)(v18, 0, 1);
    sub_1E47A14B4(v18, &v25[v19[15]]);
    v138 = v59;
    v64 = *(v59 + 16);
    v63 = *(v59 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_1E4858038((v63 > 1), v64 + 1, 1);
      v59 = v138;
    }

    *(v59 + 16) = v64 + 1;
    v65 = v134;
    sub_1E4770850(v25, v133 + v59 + v64 * v134);
    v37 = (v37 + v65);
    --v58;
  }

  while (v58);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E4877A7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v66 = type metadata accessor for DayEvents(0);
  v67 = *(*(v66 - 1) + 72);
  v68 = (*(*(v66 - 1) + 80) + 32) & ~*(*(v66 - 1) + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1E48806A0;
  v122 = v69;
  v70 = (v69 + v68);
  v71 = v110;
  sub_1E4877A7C();
  v72 = v123;
  sub_1E4806788(v123);
  sub_1E487745C();
  v73 = v124;
  v74 = v130;
  v130(v72, v124);
  v120 = *(v121 + 8);
  v121 += 8;
  v120(v71, v115);
  *&v70[v66[5]] = v59;
  v75 = MEMORY[0x1E69E7CC0];
  *&v70[v66[6]] = MEMORY[0x1E69E7CC0];
  v70[v66[7]] = 0;
  v136 = v70;
  v137 = v67;
  v76 = &v70[v67];
  sub_1E4806C28(&v70[v67]);
  *&v76[v66[5]] = v75;
  *&v76[v66[6]] = v75;
  v76[v66[7]] = 0;
  v77 = v113;
  v78 = *(v113 + 104);
  v79 = v112;
  LODWORD(v134) = *MEMORY[0x1E6969A48];
  v80 = v114;
  v135 = v113 + 104;
  v133 = v78;
  v78(v112);
  sub_1E4806C28(v72);
  v81 = v111;
  sub_1E48774BC();
  v74(v72, v73);
  v128 = *(v77 + 8);
  v128(v79, v80);
  v82 = v131;
  v126 = *(v131 + 48);
  v127 = v131 + 48;
  result = v126(v81, 1, v73);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v84 = &v136[2 * v137];
  v85 = *(v82 + 32);
  v131 = v82 + 32;
  v125 = v85;
  v85(v84, v81, v73);
  v86 = MEMORY[0x1E69E7CC0];
  *&v84[v66[5]] = MEMORY[0x1E69E7CC0];
  *&v84[v66[6]] = v86;
  v84[v66[7]] = 0;
  v133(v79, v134, v80);
  sub_1E4806C28(v72);
  v87 = v105;
  sub_1E48774BC();
  v130(v72, v73);
  v128(v79, v80);
  result = v126(v87, 1, v73);
  v88 = v106;
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v89 = &v136[3 * v137];
  v125(v89, v87, v73);
  v90 = MEMORY[0x1E69E7CC0];
  *&v89[v66[5]] = MEMORY[0x1E69E7CC0];
  *&v89[v66[6]] = v90;
  v89[v66[7]] = 0;
  v133(v79, v134, v80);
  sub_1E4806C28(v72);
  v91 = v104;
  sub_1E48774BC();
  v130(v72, v73);
  v128(v79, v80);
  result = v126(v91, 1, v73);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v92 = &v136[4 * v137];
  v125(v92, v91, v73);
  v93 = MEMORY[0x1E69E7CC0];
  *&v92[v66[5]] = MEMORY[0x1E69E7CC0];
  *&v92[v66[6]] = v93;
  v92[v66[7]] = 0;
  v133(v79, v134, v80);
  sub_1E4806C28(v72);
  sub_1E48774BC();
  v130(v72, v73);
  v128(v79, v80);
  result = v126(v88, 1, v73);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v94 = &v136[5 * v137];
  v125(v94, v88, v73);
  *&v94[v66[5]] = v93;
  *&v94[v66[6]] = v93;
  v94[v66[7]] = 0;
  v133(v79, v134, v80);
  sub_1E4806C28(v72);
  v95 = v72;
  v96 = v93;
  v97 = v103;
  sub_1E48774BC();
  v130(v95, v73);
  v128(v79, v80);
  result = v126(v97, 1, v73);
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v98 = &v136[6 * v137];
  v125(v98, v97, v73);
  *&v98[v66[5]] = v96;
  *&v98[v66[6]] = v96;
  v98[v66[7]] = 0;
  v133(v79, v134, v80);
  sub_1E4806C28(v95);
  v99 = v96;
  v100 = v102;
  sub_1E48774BC();
  v130(v95, v73);
  v128(v79, v80);
  result = v126(v100, 1, v73);
  if (result != 1)
  {
    v101 = &v136[8 * v137 - v137];
    v125(v101, v100, v73);
    *(v101 + v66[5]) = v99;
    *(v101 + v66[6]) = v99;
    *(v101 + v66[7]) = 0;
    v120(v132, v115);
    return v122;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1E4808A90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v257 = &v203 - v1;
  v2 = type metadata accessor for Event(0);
  v3 = *(v2 - 1);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v222 = &v203 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v256 = &v203 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v228 = (&v203 - v8);
  v242 = sub_1E487751C();
  v254 = *(v242 - 8);
  v9 = MEMORY[0x1EEE9AC00](v242);
  v224 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v240 = &v203 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v204 = &v203 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v206 = &v203 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v205 = &v203 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v208 = &v203 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v207 = &v203 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v211 = &v203 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v217 = &v203 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v214 = &v203 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v220 = &v203 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v246 = &v203 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v255 = &v203 - v33;
  v238 = sub_1E487736C();
  v244 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v35 = &v203 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_1E487732C();
  v251 = *(v239 - 8);
  v36 = MEMORY[0x1EEE9AC00](v239);
  v213 = &v203 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v215 = &v203 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v203 - v40;
  v237 = sub_1E487706C();
  v243 = *(v237 - 8);
  v42 = MEMORY[0x1EEE9AC00](v237);
  v209 = &v203 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v216 = &v203 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v218 = &v203 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v248 = &v203 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v203 - v50;
  v231 = sub_1E487753C();
  v235 = *(v231 - 8);
  v52 = MEMORY[0x1EEE9AC00](v231);
  v210 = &v203 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v223 = &v203 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v245 = &v203 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v203 - v58;
  sub_1E4877A7C();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v61 = *(v3 + 80);
  v62 = (v61 + 32) & ~v61;
  v259 = *(v3 + 72);
  v221 = v61;
  v227 = v60;
  v63 = swift_allocObject();
  v258 = v62;
  v219 = v63;
  v64 = (v63 + v62);
  sub_1E4806788(v41);
  sub_1E487703C();
  v253 = sub_1E487863C();
  sub_1E487735C();
  sub_1E487733C();
  v65 = *(v244 + 8);
  v230 = v35;
  v244 += 8;
  v233 = v65;
  v65(v35, v238);
  sub_1E487724C();

  v66 = v2[15];
  v67 = type metadata accessor for Location(0);
  v68 = *(v67 - 8);
  v69 = &v64[v66];
  v70 = v64;
  v261 = *(v68 + 56);
  v262 = v67;
  v260 = v68 + 56;
  (v261)(v69, 1, 1);
  *v64 = 0xD00000000000001CLL;
  *(v64 + 1) = 0x80000001E48A89F0;
  v234 = 0x80000001E48A89F0;
  sub_1E487704C();
  sub_1E487701C();
  v71 = *(v243 + 8);
  v243 += 8;
  v232 = v71;
  v71(v51, v237);
  *&v64[v2[7]] = 0;
  *&v64[v2[8]] = 0;
  *&v64[v2[9]] = v253;
  v72 = &v64[v2[10]];
  *v72 = 0;
  *(v72 + 1) = 0;
  v64[v2[12]] = 0;
  v64[v2[13]] = 0;
  v73 = &v64[v2[16]];
  *v73 = 0;
  *(v73 + 1) = 0;
  v64[v2[14]] = 0;
  v64[v2[17]] = 0;
  v64[v2[18]] = 0;
  v64[v2[19]] = 1;
  v74 = v254;
  v75 = *(v254 + 104);
  v76 = v240;
  LODWORD(v225) = *MEMORY[0x1E6969A58];
  v77 = v242;
  v236 = v254 + 104;
  v241 = v75;
  v75(v240);
  sub_1E4806788(v41);
  v78 = v255;
  v79 = v76;
  v247 = v59;
  sub_1E48774BC();
  v80 = v78;
  v81 = v251;
  v82 = v251 + 8;
  v83 = v239;
  v250 = *(v251 + 8);
  v250(v41, v239);
  v84 = *(v74 + 8);
  v254 = v74 + 8;
  v252 = v84;
  v84(v79, v77);
  v85 = (v81 + 48);
  v253 = *(v81 + 48);
  result = v253(v80, 1, v83);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v87 = v70;
  v88 = &v70[v259];
  v89 = v248;
  sub_1E487703C();
  v255 = sub_1E48786AC();
  v90 = v230;
  sub_1E487735C();
  sub_1E487733C();
  v233(v90, v238);
  sub_1E487724C();

  (v261)(&v88[v2[15]], 1, 1, v262);
  *v88 = 0xD00000000000001CLL;
  *(v88 + 1) = v234;
  sub_1E487704C();
  sub_1E487701C();
  v232(v89, v237);
  *&v88[v2[7]] = 0;
  *&v88[v2[8]] = 0;
  *&v88[v2[9]] = v255;
  v91 = &v88[v2[10]];
  *v91 = 0;
  *(v91 + 1) = 0;
  v88[v2[12]] = 0;
  v88[v2[13]] = 0;
  v92 = &v88[v2[16]];
  *v92 = 0;
  *(v92 + 1) = 0;
  v88[v2[14]] = 0;
  v88[v2[17]] = 0;
  v88[v2[18]] = 0;
  v88[v2[19]] = 1;
  v93 = v240;
  v94 = v242;
  (v241)(v240, v225, v242);
  sub_1E4806788(v41);
  v95 = v246;
  sub_1E48774BC();
  v229 = v41;
  v96 = v239;
  v249 = v82;
  v250(v41, v239);
  v252(v93, v94);
  result = v253(v95, 1, v96);
  if (result == 1)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v248 = v85;
  v212 = 2 * v259;
  v97 = &v87[2 * v259];
  v98 = v218;
  sub_1E487703C();
  v99 = sub_1E48786CC();
  sub_1E487735C();
  sub_1E487733C();
  v233(v90, v238);
  sub_1E487724C();

  (v261)(&v97[v2[15]], 1, 1, v262);
  *v97 = 0xD00000000000001CLL;
  *(v97 + 1) = v234;
  sub_1E487704C();
  sub_1E487701C();
  v232(v98, v237);
  *&v97[v2[7]] = 0;
  *&v97[v2[8]] = 0;
  *&v97[v2[9]] = v99;
  v100 = &v97[v2[10]];
  *v100 = 0;
  *(v100 + 1) = 0;
  v97[v2[12]] = 0;
  v97[v2[13]] = 0;
  v101 = &v97[v2[16]];
  *v101 = 0;
  *(v101 + 1) = 0;
  v97[v2[14]] = 0;
  v97[v2[17]] = 0;
  v97[v2[18]] = 0;
  v97[v2[19]] = 1;
  v263 = MEMORY[0x1E69E7CC0];
  v102 = 3;
  sub_1E4858038(0, 3, 0);
  v103 = v263;
  v246 = v87;
  v104 = v87;
  v105 = v228;
  do
  {
    v106 = v256;
    sub_1E47707EC(v104, v256);
    sub_1E47707EC(v106, v105);
    v107 = v257;
    if (qword_1EE2B41F8 != -1)
    {
      swift_once();
    }

    v108 = sub_1E487719C();
    v109 = __swift_project_value_buffer(v108, qword_1EE2BAF00);
    v255 = *(*(v108 - 8) + 16);
    (v255)(v107, v109, v108);
    sub_1E47710AC(v106);
    v110 = (v107 + *(v262 + 20));
    *v110 = 0;
    v110[1] = 0;
    (v261)(v107, 0, 1);
    sub_1E47A14B4(v107, v105 + v2[15]);
    v263 = v103;
    v112 = *(v103 + 16);
    v111 = *(v103 + 24);
    if (v112 >= v111 >> 1)
    {
      sub_1E4858038((v111 > 1), v112 + 1, 1);
      v103 = v263;
    }

    *(v103 + 16) = v112 + 1;
    v113 = v259;
    sub_1E4770850(v105, v103 + v258 + v112 * v259);
    v104 += v113;
    --v102;
  }

  while (v102);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v221 = swift_allocObject();
  sub_1E4877A7C();
  v114 = v240;
  LODWORD(v246) = *MEMORY[0x1E6969A48];
  v115 = v242;
  v241(v240);
  v116 = v229;
  sub_1E4806788(v229);
  v117 = v220;
  sub_1E48774BC();
  v118 = v239;
  v250(v116, v239);
  v252(v114, v115);
  result = v253(v117, 1, v118);
  if (result == 1)
  {
    goto LABEL_25;
  }

  v119 = (v221 + v258);
  v120 = *(v235 + 8);
  v235 += 8;
  v227 = v120;
  v120(v245, v231);
  v121 = *(v251 + 32);
  v251 += 32;
  v245 = v121;
  (v121)(v215, v117, v118);
  v122 = v216;
  sub_1E487703C();
  v228 = sub_1E487868C();
  v123 = v230;
  sub_1E487735C();
  sub_1E487733C();
  v233(v123, v238);
  sub_1E487724C();

  (v261)(v119 + v2[15], 1, 1, v262);
  *v119 = 0xD00000000000001CLL;
  v119[1] = v234;
  sub_1E487704C();
  sub_1E487701C();
  v232(v122, v237);
  *(v119 + v2[7]) = 0;
  *(v119 + v2[8]) = 0;
  *(v119 + v2[9]) = v228;
  v124 = (v119 + v2[10]);
  *v124 = 0;
  v124[1] = 0;
  *(v119 + v2[12]) = 0;
  *(v119 + v2[13]) = 0;
  v125 = (v119 + v2[16]);
  *v125 = 0;
  v125[1] = 0;
  *(v119 + v2[14]) = 0;
  *(v119 + v2[17]) = 0;
  *(v119 + v2[18]) = 0;
  v226 = v2;
  v126 = v2[19];
  v228 = v119;
  *(v119 + v126) = 1;
  v127 = v242;
  v128 = v241;
  (v241)(v224, v225, v242);
  sub_1E4877A7C();
  v129 = v240;
  v128(v240, v246, v127);
  v130 = v229;
  sub_1E4806788(v229);
  v131 = v217;
  sub_1E48774BC();
  v132 = v130;
  v133 = v239;
  v134 = v250;
  v250(v132, v239);
  v135 = v127;
  v136 = v131;
  v252(v129, v135);
  result = v253(v131, 1, v133);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v227(v223, v231);
  v137 = v213;
  v138 = v136;
  v139 = v133;
  (v245)(v213, v138, v133);
  v140 = v214;
  v141 = v224;
  sub_1E48774BC();
  v134(v137, v139);
  v252(v141, v242);
  result = v253(v140, 1, v139);
  if (result == 1)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v142 = (v228 + v259);
  v143 = v209;
  sub_1E487703C();
  v225 = sub_1E487864C();
  v144 = v230;
  sub_1E487735C();
  sub_1E487733C();
  v233(v144, v238);
  v145 = v226;
  sub_1E487724C();

  (v261)(v142 + v145[15], 1, 1, v262);
  *v142 = 0xD00000000000001CLL;
  v142[1] = v234;
  sub_1E487704C();
  sub_1E487701C();
  v232(v143, v237);
  *(v142 + v145[7]) = 0;
  *(v142 + v145[8]) = 0;
  *(v142 + v145[9]) = v225;
  v146 = (v142 + v145[10]);
  *v146 = 0;
  v146[1] = 0;
  *(v142 + v145[12]) = 0;
  *(v142 + v145[13]) = 0;
  v147 = (v142 + v145[16]);
  *v147 = 0;
  v147[1] = 0;
  *(v142 + v145[14]) = 0;
  *(v142 + v145[17]) = 0;
  *(v142 + v145[18]) = 0;
  *(v142 + v145[19]) = 1;
  v263 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, 2, 0);
  v148 = v263;
  v149 = v256;
  sub_1E47707EC(v228, v256);
  v150 = v222;
  sub_1E47707EC(v149, v222);
  v151 = v257;
  (v255)(v257, v109, v108);
  sub_1E47710AC(v149);
  v152 = v261;
  v153 = (v151 + *(v262 + 20));
  *v153 = 0;
  v153[1] = 0;
  v152(v151, 0, 1);
  sub_1E47A14B4(v151, v150 + v145[15]);
  v263 = v148;
  v155 = *(v148 + 16);
  v154 = *(v148 + 24);
  v244 = v148;
  v156 = v155 + 1;
  if (v155 >= v154 >> 1)
  {
    sub_1E4858038((v154 > 1), v155 + 1, 1);
    v156 = v155 + 1;
    v244 = v263;
  }

  v157 = v244;
  *(v244 + 16) = v156;
  v158 = v259;
  v159 = v157 + v258 + v155 * v259;
  v160 = v222;
  sub_1E4770850(v222, v159);
  sub_1E47707EC(v142, v149);
  sub_1E47707EC(v149, v160);
  (v255)(v151, v109, v108);
  sub_1E47710AC(v149);
  v161 = (v151 + *(v262 + 20));
  *v161 = 0;
  v161[1] = 0;
  (v261)(v151, 0, 1);
  sub_1E47A14B4(v151, v160 + v226[15]);
  v263 = v157;
  v163 = *(v157 + 16);
  v162 = *(v157 + 24);
  if (v163 >= v162 >> 1)
  {
    sub_1E4858038((v162 > 1), v163 + 1, 1);
    v244 = v263;
  }

  v164 = v244;
  *(v244 + 16) = v163 + 1;
  sub_1E4770850(v160, v164 + v258 + v163 * v158);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v165 = type metadata accessor for DayEvents(0);
  v166 = *(*(v165 - 1) + 72);
  v167 = (*(*(v165 - 1) + 80) + 32) & ~*(*(v165 - 1) + 80);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_1E48806A0;
  v260 = v168;
  v169 = (v168 + v167);
  v170 = v210;
  sub_1E4877A7C();
  v171 = v229;
  sub_1E4806788(v229);
  sub_1E487745C();
  v172 = v239;
  v173 = v250;
  v250(v171, v239);
  v227(v170, v231);
  *&v169[v165[5]] = v103;
  v174 = v171;
  v175 = MEMORY[0x1E69E7CC0];
  *&v169[v165[6]] = MEMORY[0x1E69E7CC0];
  v169[v165[7]] = 0;
  v261 = v169;
  v262 = v166;
  v176 = &v169[v166];
  sub_1E4806C28(&v169[v166]);
  *&v176[v165[5]] = v244;
  *&v176[v165[6]] = v175;
  v176[v165[7]] = 0;
  v177 = v240;
  v178 = v242;
  (v241)(v240, v246, v242);
  sub_1E4806C28(v171);
  v179 = v211;
  sub_1E48774BC();
  v173(v171, v172);
  v180 = v252;
  v252(v177, v178);
  result = v253(v179, 1, v172);
  if (result == 1)
  {
    goto LABEL_28;
  }

  v181 = &v261[2 * v262];
  (v245)(v181, v179, v172);
  v182 = MEMORY[0x1E69E7CC0];
  *&v181[v165[5]] = MEMORY[0x1E69E7CC0];
  *&v181[v165[6]] = v182;
  v181[v165[7]] = 0;
  (v241)(v177, v246, v178);
  sub_1E4806C28(v174);
  v183 = v207;
  sub_1E48774BC();
  v250(v174, v172);
  v180(v177, v178);
  result = v253(v183, 1, v172);
  v184 = v208;
  if (result == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v185 = &v261[3 * v262];
  (v245)(v185, v183, v172);
  v186 = MEMORY[0x1E69E7CC0];
  *&v185[v165[5]] = MEMORY[0x1E69E7CC0];
  *&v185[v165[6]] = v186;
  v185[v165[7]] = 0;
  v187 = v241;
  (v241)(v177, v246, v178);
  sub_1E4806C28(v174);
  sub_1E48774BC();
  v250(v174, v172);
  v252(v177, v178);
  result = v253(v184, 1, v172);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v188 = &v261[4 * v262];
  (v245)(v188, v184, v172);
  v189 = MEMORY[0x1E69E7CC0];
  *&v188[v165[5]] = MEMORY[0x1E69E7CC0];
  *&v188[v165[6]] = v189;
  v188[v165[7]] = 0;
  v187(v177, v246, v178);
  sub_1E4806C28(v174);
  v190 = v174;
  v191 = v205;
  sub_1E48774BC();
  v250(v190, v172);
  v252(v177, v178);
  result = v253(v191, 1, v172);
  v192 = v206;
  if (result == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v193 = &v261[5 * v262];
  (v245)(v193, v191, v172);
  v194 = MEMORY[0x1E69E7CC0];
  *&v193[v165[5]] = MEMORY[0x1E69E7CC0];
  *&v193[v165[6]] = v194;
  v193[v165[7]] = 0;
  v187(v177, v246, v178);
  sub_1E4806C28(v190);
  v195 = v247;
  sub_1E48774BC();
  v250(v190, v172);
  v252(v177, v178);
  result = v253(v192, 1, v172);
  if (result == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v196 = &v261[6 * v262];
  (v245)(v196, v192, v172);
  v197 = MEMORY[0x1E69E7CC0];
  *&v196[v165[5]] = MEMORY[0x1E69E7CC0];
  *&v196[v165[6]] = v197;
  v196[v165[7]] = 0;
  v187(v177, v246, v178);
  sub_1E4806C28(v190);
  v198 = v204;
  sub_1E48774BC();
  v250(v190, v172);
  v252(v177, v178);
  result = v253(v198, 1, v172);
  v199 = v172;
  v200 = v231;
  if (result != 1)
  {
    v201 = &v261[8 * v262 - v262];
    (v245)(v201, v198, v199);
    v202 = MEMORY[0x1E69E7CC0];
    *(v201 + v165[5]) = MEMORY[0x1E69E7CC0];
    *(v201 + v165[6]) = v202;
    *(v201 + v165[7]) = 0;
    v227(v195, v200);
    return v260;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1E480AA84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v281 = &v250 - v1;
  v2 = type metadata accessor for Event(0);
  v3 = *(v2 - 1);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v257 = &v250 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v261 = &v250 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v268 = &v250 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v311 = &v250 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v250 - v12;
  v297 = sub_1E487751C();
  v307 = *(v297 - 8);
  v14 = MEMORY[0x1EEE9AC00](v297);
  v274 = &v250 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v295 = &v250 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v252 = &v250 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v255 = &v250 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v251 = &v250 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v253 = &v250 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v254 = &v250 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v258 = &v250 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v259 = &v250 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v260 = &v250 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v262 = &v250 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v267 = &v250 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v264 = &v250 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v300 = &v250 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v310 = &v250 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v312 = (&v250 - v44);
  v293 = sub_1E487736C();
  v296 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v46 = &v250 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_1E487732C();
  v283 = *(v290 - 8);
  v47 = MEMORY[0x1EEE9AC00](v290);
  v269 = &v250 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v263 = &v250 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v276 = &v250 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v265 = &v250 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v250 - v55;
  v292 = sub_1E487706C();
  v57 = *(v292 - 8);
  v58 = MEMORY[0x1EEE9AC00](v292);
  v266 = &v250 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v308 = &v250 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v309 = (&v250 - v63);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v250 - v64;
  v280 = sub_1E487753C();
  v282 = *(v280 - 8);
  v66 = MEMORY[0x1EEE9AC00](v280);
  v256 = &v250 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v273 = &v250 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v298 = &v250 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v289 = &v250 - v72;
  sub_1E4877A7C();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v74 = *(v3 + 72);
  v75 = *(v3 + 80);
  v76 = (v75 + 32) & ~v75;
  v315 = v74;
  v277 = v75;
  v278 = v73;
  v77 = swift_allocObject();
  v314 = v76;
  v291 = v77;
  v78 = (v77 + v76);
  v294 = v56;
  sub_1E4806788(v56);
  sub_1E487703C();
  v79 = sub_1E487863C();
  sub_1E487735C();
  sub_1E487733C();
  v80 = *(v296 + 8);
  v288 = v46;
  v296 += 8;
  v285 = v80;
  v80(v46, v293);
  sub_1E487724C();

  v81 = v2[15];
  v82 = type metadata accessor for Location(0);
  v83 = *(v82 - 8);
  v84 = *(v83 + 56);
  v313 = v82;
  v316 = v83 + 56;
  v317 = v84;
  (v84)(v78 + v81, 1, 1);
  *v78 = 0xD00000000000001CLL;
  v78[1] = 0x80000001E48A89F0;
  v286 = 0x80000001E48A89F0;
  sub_1E487704C();
  sub_1E487701C();
  v85 = *(v57 + 8);
  v271 = v65;
  v287 = v57 + 8;
  v284 = v85;
  v85(v65, v292);
  *(v78 + v2[7]) = 0;
  *(v78 + v2[8]) = 0;
  *(v78 + v2[9]) = v79;
  v86 = (v78 + v2[10]);
  *v86 = 0;
  v86[1] = 0;
  *(v78 + v2[12]) = 0;
  *(v78 + v2[13]) = 0;
  v87 = (v78 + v2[16]);
  *v87 = 0;
  v87[1] = 0;
  *(v78 + v2[14]) = 0;
  *(v78 + v2[17]) = 0;
  *(v78 + v2[18]) = 0;
  *(v78 + v2[19]) = 1;
  v88 = v307;
  v89 = *(v307 + 104);
  v90 = v295;
  LODWORD(v279) = *MEMORY[0x1E6969A58];
  v91 = v297;
  v303 = v89;
  v305 = v307 + 104;
  v89(v295);
  v92 = v294;
  sub_1E4806788(v294);
  v93 = v312;
  v94 = v90;
  sub_1E48774BC();
  v95 = v283;
  v96 = v283[1];
  v97 = v290;
  v299 = v283 + 1;
  v302 = v96;
  v96(v92, v290);
  v98 = *(v88 + 8);
  v307 = v88 + 8;
  v304 = v98;
  v98(v94, v91);
  v99 = v95 + 6;
  v306 = v95[6];
  result = v306(v93, 1, v97);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v101 = v78 + v315;
  v102 = v309;
  sub_1E487703C();
  v103 = sub_1E48786AC();
  v104 = v288;
  sub_1E487735C();
  sub_1E487733C();
  v105 = v78;
  v285(v104, v293);
  sub_1E487724C();

  v317(&v101[v2[15]], 1, 1, v313);
  *v101 = 0xD00000000000001CLL;
  *(v101 + 1) = v286;
  sub_1E487704C();
  sub_1E487701C();
  v284(v102, v292);
  *&v101[v2[7]] = 0;
  *&v101[v2[8]] = 0;
  *&v101[v2[9]] = v103;
  v106 = &v101[v2[10]];
  *v106 = 0;
  *(v106 + 1) = 0;
  v101[v2[12]] = 0;
  v101[v2[13]] = 0;
  v107 = &v101[v2[16]];
  *v107 = 0;
  *(v107 + 1) = 0;
  v101[v2[14]] = 0;
  v101[v2[17]] = 0;
  v101[v2[18]] = 0;
  v101[v2[19]] = 1;
  v108 = v295;
  v109 = v297;
  (v303)(v295, v279, v297);
  v110 = v294;
  sub_1E4806788(v294);
  v111 = v310;
  sub_1E48774BC();
  v112 = v290;
  v302(v110, v290);
  v304(v108, v109);
  v301 = v99;
  result = v306(v111, 1, v112);
  if (result == 1)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v113 = v105 + 2 * v315;
  v114 = v105;
  v115 = v308;
  sub_1E487703C();
  v116 = sub_1E48786CC();
  v117 = v288;
  sub_1E487735C();
  sub_1E487733C();
  v285(v117, v293);
  sub_1E487724C();

  v118 = v313;
  v317(&v113[v2[15]], 1, 1, v313);
  *v113 = 0xD00000000000001CLL;
  *(v113 + 1) = v286;
  sub_1E487704C();
  sub_1E487701C();
  v284(v115, v292);
  *&v113[v2[7]] = 0;
  *&v113[v2[8]] = 0;
  *&v113[v2[9]] = v116;
  v119 = &v113[v2[10]];
  *v119 = 0;
  *(v119 + 1) = 0;
  v113[v2[12]] = 0;
  v113[v2[13]] = 0;
  v120 = &v113[v2[16]];
  *v120 = 0;
  *(v120 + 1) = 0;
  v113[v2[14]] = 0;
  v113[v2[17]] = 0;
  v113[v2[18]] = 0;
  v312 = v2;
  v113[v2[19]] = 1;
  v318 = MEMORY[0x1E69E7CC0];
  v121 = 3;
  sub_1E4858038(0, 3, 0);
  v122 = v318;
  v275 = v114;
  v123 = v281;
  v124 = v118;
  do
  {
    v125 = v311;
    sub_1E47707EC(v114, v311);
    sub_1E47707EC(v125, v13);
    if (qword_1EE2B41F8 != -1)
    {
      swift_once();
    }

    v126 = sub_1E487719C();
    v127 = __swift_project_value_buffer(v126, qword_1EE2BAF00);
    v128 = *(v126 - 8);
    v309 = *(v128 + 16);
    v310 = v127;
    v308 = (v128 + 16);
    v309(v123);
    sub_1E47710AC(v125);
    v129 = (v123 + *(v124 + 20));
    *v129 = 0;
    v129[1] = 0;
    v317(v123, 0, 1, v124);
    sub_1E47A14B4(v123, &v13[v312[15]]);
    v318 = v122;
    v131 = *(v122 + 2);
    v130 = *(v122 + 3);
    if (v131 >= v130 >> 1)
    {
      sub_1E4858038((v130 > 1), v131 + 1, 1);
      v123 = v281;
      v122 = v318;
    }

    *(v122 + 2) = v131 + 1;
    v132 = v315;
    sub_1E4770850(v13, &v122[v314 + v131 * v315]);
    v114 += v132;
    --v121;
    v124 = v313;
  }

  while (v121);
  swift_setDeallocating();
  v133 = v312;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v134 = v314;
  v270 = v314 + v315;
  v272 = swift_allocObject();
  v135 = v298;
  sub_1E4877A7C();
  v136 = v295;
  LODWORD(v291) = *MEMORY[0x1E6969A48];
  v137 = v297;
  v303(v295);
  v138 = v294;
  sub_1E4806788(v294);
  v139 = v300;
  sub_1E48774BC();
  v140 = v290;
  v302(v138, v290);
  v304(v136, v137);
  result = v306(v139, 1, v140);
  if (result == 1)
  {
    goto LABEL_30;
  }

  v141 = (v272 + v134);
  v142 = *(v282 + 8);
  v282 += 8;
  v275 = v142;
  v142(v135, v280);
  v143 = v283[4];
  v300 = (v283 + 4);
  v298 = v143;
  (v143)(v265, v139, v140);
  v144 = v266;
  sub_1E487703C();
  v145 = sub_1E487868C();
  v146 = v288;
  sub_1E487735C();
  sub_1E487733C();
  v285(v146, v293);
  sub_1E487724C();

  v147 = v313;
  v317(&v141[v133[15]], 1, 1, v313);
  *v141 = 0xD00000000000001CLL;
  *(v141 + 1) = v286;
  sub_1E487704C();
  sub_1E487701C();
  v284(v144, v292);
  *&v141[v133[7]] = 0;
  *&v141[v133[8]] = 0;
  *&v141[v133[9]] = v145;
  v148 = &v141[v133[10]];
  *v148 = 0;
  *(v148 + 1) = 0;
  v141[v133[12]] = 0;
  v141[v133[13]] = 0;
  v149 = &v141[v133[16]];
  *v149 = 0;
  *(v149 + 1) = 0;
  v141[v133[14]] = 0;
  v141[v133[17]] = 0;
  v141[v133[18]] = 0;
  v141[v133[19]] = 1;
  v318 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, 1, 0);
  v150 = v318;
  v151 = v311;
  sub_1E47707EC(v141, v311);
  v152 = v268;
  sub_1E47707EC(v151, v268);
  v153 = v281;
  (v309)(v281, v310, v126);
  sub_1E47710AC(v151);
  v154 = (v153 + *(v147 + 20));
  *v154 = 0;
  v154[1] = 0;
  v317(v153, 0, 1, v147);
  sub_1E47A14B4(v153, v152 + v133[15]);
  v318 = v150;
  v156 = *(v150 + 2);
  v155 = *(v150 + 3);
  if (v156 >= v155 >> 1)
  {
    sub_1E4858038((v155 > 1), v156 + 1, 1);
    v150 = v318;
  }

  *(v150 + 2) = v156 + 1;
  v266 = v150;
  sub_1E4770850(v152, &v150[v314 + v156 * v315]);
  swift_setDeallocating();
  sub_1E47710AC(v141);
  swift_deallocClassInstance();
  v157 = v291;
  v158 = v297;
  v159 = v303;
  (v303)(v274, v291, v297);
  sub_1E4877A7C();
  v160 = v295;
  v159(v295, v157, v158);
  v161 = v294;
  sub_1E4806788(v294);
  v162 = v267;
  sub_1E48774BC();
  v163 = v290;
  v164 = v302;
  v302(v161, v290);
  v304(v160, v158);
  v165 = v306;
  result = v306(v162, 1, v163);
  if (result == 1)
  {
    goto LABEL_31;
  }

  v275(v273, v280);
  v166 = v263;
  (v298)(v263, v162, v163);
  v167 = v264;
  v168 = v274;
  sub_1E48774BC();
  v164(v166, v163);
  v169 = v168;
  v170 = v304;
  v304(v169, v297);
  result = v165(v167, 1, v163);
  v171 = v276;
  if (result == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  (v298)(v276, v167, v163);
  v172 = v295;
  v173 = v297;
  (v303)(v295, v279, v297);
  v174 = v262;
  sub_1E48774BC();
  v170(v172, v173);
  result = v306(v174, 1, v163);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v302(v171, v163);
  (v298)(v171, v174, v163);
  v274 = swift_allocObject();
  v175 = &v274[v314];
  v176 = v283[2];
  v283 += 2;
  v273 = v176;
  (v176)(v294, v171, v163);
  v177 = v271;
  sub_1E487703C();
  v178 = sub_1E487864C();
  v179 = v288;
  sub_1E487735C();
  sub_1E487733C();
  v285(v179, v293);
  v180 = v312;
  sub_1E487724C();

  v181 = v313;
  v317(&v175[v180[15]], 1, 1, v313);
  *v175 = 0xD00000000000001CLL;
  *(v175 + 1) = v286;
  sub_1E487704C();
  sub_1E487701C();
  v284(v177, v292);
  *&v175[v180[7]] = 0;
  *&v175[v180[8]] = 0;
  *&v175[v180[9]] = v178;
  v182 = &v175[v180[10]];
  *v182 = 0;
  *(v182 + 1) = 0;
  v175[v180[12]] = 0;
  v175[v180[13]] = 0;
  v183 = &v175[v180[16]];
  *v183 = 0;
  *(v183 + 1) = 0;
  v175[v180[14]] = 0;
  v175[v180[17]] = 0;
  v175[v180[18]] = 0;
  v175[v180[19]] = 1;
  v318 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, 1, 0);
  v184 = v318;
  v185 = v311;
  sub_1E47707EC(v175, v311);
  v186 = v261;
  sub_1E47707EC(v185, v261);
  v187 = v281;
  (v309)(v281, v310, v126);
  sub_1E47710AC(v185);
  v188 = (v187 + *(v181 + 20));
  *v188 = 0;
  v188[1] = 0;
  v317(v187, 0, 1, v181);
  sub_1E47A14B4(v187, v186 + v180[15]);
  v318 = v184;
  v190 = *(v184 + 16);
  v189 = *(v184 + 24);
  if (v190 >= v189 >> 1)
  {
    sub_1E4858038((v189 > 1), v190 + 1, 1);
    v184 = v318;
  }

  *(v184 + 16) = v190 + 1;
  v272 = v184;
  sub_1E4770850(v186, v184 + v314 + v190 * v315);
  swift_setDeallocating();
  sub_1E47710AC(v175);
  swift_deallocClassInstance();
  v191 = v295;
  v192 = v297;
  v193 = v303;
  (v303)(v295, v291, v297);
  v194 = v260;
  sub_1E48774BC();
  v195 = v304;
  v304(v191, v192);
  v196 = v290;
  result = v306(v194, 1, v290);
  if (result == 1)
  {
    goto LABEL_34;
  }

  v197 = v269;
  v198 = v194;
  v199 = v298;
  (v298)(v269, v198, v196);
  v193(v191, v279, v192);
  v200 = v259;
  sub_1E48774BC();
  v195(v191, v192);
  result = v306(v200, 1, v196);
  if (result == 1)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v302(v197, v196);
  v199(v197, v200, v196);
  v279 = swift_allocObject();
  v201 = (v279 + v314);
  (v273)(v294, v197, v196);
  v202 = v271;
  sub_1E487703C();
  v203 = sub_1E48786BC();
  v204 = v288;
  sub_1E487735C();
  sub_1E487733C();
  v205 = v196;
  v285(v204, v293);
  v206 = v312;
  sub_1E487724C();

  v207 = v313;
  v317(&v201[v206[15]], 1, 1, v313);
  *v201 = 0xD00000000000001CLL;
  *(v201 + 1) = v286;
  sub_1E487704C();
  sub_1E487701C();
  v284(v202, v292);
  *&v201[v206[7]] = 0;
  *&v201[v206[8]] = 0;
  *&v201[v206[9]] = v203;
  v208 = &v201[v206[10]];
  *v208 = 0;
  *(v208 + 1) = 0;
  v201[v206[12]] = 0;
  v201[v206[13]] = 0;
  v209 = &v201[v206[16]];
  *v209 = 0;
  *(v209 + 1) = 0;
  v201[v206[14]] = 0;
  v201[v206[17]] = 0;
  v201[v206[18]] = 0;
  v201[v206[19]] = 1;
  v318 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, 1, 0);
  v210 = v318;
  v211 = v311;
  sub_1E47707EC(v201, v311);
  v212 = v257;
  sub_1E47707EC(v211, v257);
  v213 = v281;
  (v309)(v281, v310, v126);
  sub_1E47710AC(v211);
  v214 = (v213 + *(v207 + 20));
  *v214 = 0;
  v214[1] = 0;
  v317(v213, 0, 1, v207);
  sub_1E47A14B4(v213, v212 + v206[15]);
  v318 = v210;
  v216 = *(v210 + 16);
  v215 = *(v210 + 24);
  if (v216 >= v215 >> 1)
  {
    sub_1E4858038((v215 > 1), v216 + 1, 1);
    v210 = v318;
  }

  *(v210 + 16) = v216 + 1;
  v313 = v210;
  sub_1E4770850(v212, v210 + v314 + v216 * v315);
  swift_setDeallocating();
  sub_1E47710AC(v201);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v217 = type metadata accessor for DayEvents(0);
  v218 = *(*(v217 - 1) + 72);
  v219 = (*(*(v217 - 1) + 80) + 32) & ~*(*(v217 - 1) + 80);
  v220 = swift_allocObject();
  *(v220 + 16) = xmmword_1E48806A0;
  v315 = v220;
  v221 = v220 + v219;
  v222 = v256;
  sub_1E4877A7C();
  v223 = v294;
  sub_1E4806788(v294);
  sub_1E487745C();
  v224 = v302;
  v302(v223, v205);
  v275(v222, v280);
  *(v221 + v217[5]) = v122;
  v225 = MEMORY[0x1E69E7CC0];
  *(v221 + v217[6]) = MEMORY[0x1E69E7CC0];
  *(v221 + v217[7]) = 0;
  v316 = v221;
  v317 = v218;
  v226 = v218 + v221;
  sub_1E4806C28(v218 + v221);
  *&v226[v217[5]] = v266;
  *&v226[v217[6]] = v225;
  v226[v217[7]] = 0;
  v227 = v295;
  v228 = v291;
  v229 = v297;
  (v303)(v295, v291, v297);
  sub_1E4806C28(v223);
  v230 = v258;
  v231 = v289;
  sub_1E48774BC();
  v224(v223, v205);
  v304(v227, v229);
  result = v306(v230, 1, v205);
  if (result == 1)
  {
    goto LABEL_36;
  }

  v232 = v316 + 2 * v317;
  (v298)(v232, v230, v205);
  *(v232 + v217[5]) = v272;
  *(v232 + v217[6]) = MEMORY[0x1E69E7CC0];
  *(v232 + v217[7]) = 0;
  (v303)(v227, v228, v229);
  sub_1E4806C28(v223);
  v233 = v254;
  sub_1E48774BC();
  v302(v223, v205);
  v304(v227, v229);
  result = v306(v233, 1, v205);
  v234 = v255;
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v235 = v316 + 3 * v317;
  (v298)(v235, v233, v205);
  *(v235 + v217[5]) = v313;
  *(v235 + v217[6]) = MEMORY[0x1E69E7CC0];
  *(v235 + v217[7]) = 0;
  (v303)(v227, v228, v229);
  sub_1E4806C28(v223);
  v236 = v253;
  sub_1E48774BC();
  v302(v223, v205);
  v304(v227, v229);
  result = v306(v236, 1, v205);
  if (result == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v237 = v231;
  v238 = v316 + 4 * v317;
  (v298)(v238, v236, v205);
  v239 = MEMORY[0x1E69E7CC0];
  *(v238 + v217[5]) = MEMORY[0x1E69E7CC0];
  *(v238 + v217[6]) = v239;
  *(v238 + v217[7]) = 0;
  (v303)(v227, v291, v229);
  sub_1E4806C28(v223);
  v240 = v251;
  sub_1E48774BC();
  v302(v223, v205);
  v304(v227, v229);
  result = v306(v240, 1, v205);
  v241 = v252;
  if (result == 1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v242 = v316 + 5 * v317;
  (v298)(v242, v240, v205);
  v243 = MEMORY[0x1E69E7CC0];
  *(v242 + v217[5]) = MEMORY[0x1E69E7CC0];
  *(v242 + v217[6]) = v243;
  *(v242 + v217[7]) = 0;
  (v303)(v227, v291, v229);
  sub_1E4806C28(v223);
  sub_1E48774BC();
  v302(v223, v205);
  v304(v227, v229);
  result = v306(v234, 1, v205);
  if (result == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v244 = v316 + 6 * v317;
  (v298)(v244, v234, v205);
  v245 = MEMORY[0x1E69E7CC0];
  *(v244 + v217[5]) = MEMORY[0x1E69E7CC0];
  *(v244 + v217[6]) = v245;
  *(v244 + v217[7]) = 0;
  (v303)(v227, v291, v229);
  sub_1E4806C28(v223);
  sub_1E48774BC();
  v246 = v223;
  v247 = v302;
  v302(v246, v205);
  v304(v227, v229);
  result = v306(v241, 1, v205);
  if (result != 1)
  {
    v248 = v316 - v317 + 8 * v317;
    (v298)(v248, v241, v205);
    v249 = MEMORY[0x1E69E7CC0];
    *(v248 + v217[5]) = MEMORY[0x1E69E7CC0];
    *(v248 + v217[6]) = v249;
    *(v248 + v217[7]) = 0;
    v247(v269, v205);
    v247(v276, v205);
    v275(v237, v280);
    return v315;
  }

LABEL_41:
  __break(1u);
  return result;
}
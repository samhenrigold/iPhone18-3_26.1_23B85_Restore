uint64_t sub_1E62FE8A0()
{
  v1 = sub_1E65D76F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1E65E2AF8();
  sub_1E65E2AD8();
  sub_1E65E2AE8();
  sub_1E65E2B18();
  sub_1E6144294();
  sub_1E65D8008();
  sub_1E65E2B28();
  v2 = sub_1E65E2B08();
  v3 = v2;
  v4 = v2 + 56;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      sub_1E600C434(v11);

      return sub_1E65DA2E8();
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      do
      {
LABEL_8:
        v13 = *(*(v3 + 48) + (__clz(__rbit64(v7)) | (v10 << 6)));
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1E64F6ADC(0, *(v11 + 16) + 1, 1, v11);
          v11 = result;
        }

        v15 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_1E64F6ADC((v14 > 1), v15 + 1, 1, v11);
          v11 = result;
        }

        v7 &= v7 - 1;
        *(v11 + 16) = v15 + 1;
        *(v11 + v15 + 32) = v13;
      }

      while (v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62FEAC0@<X0>(uint64_t a1@<X0>, BOOL *a3@<X8>)
{
  v5 = sub_1E65DA2A8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  v12 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1D34C(a1, v14, type metadata accessor for BrowsingIdentity);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    type metadata accessor for AppComposer(0);
    v16 = sub_1E65DAE38();
    result = sub_1E65DAE38();
    *a3 = v16 != result;
  }

  else
  {
    (*(v6 + 32))(v11, &v14[*(v15 + 48)], v5);
    sub_1E65DA278();
    sub_1E6305744(&qword_1ED071E28, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCC10]);
    v18 = sub_1E65E6718();
    v19 = *(v6 + 8);
    v19(v9, v5);
    v19(v11, v5);
    *a3 = v18 & 1;
    return sub_1E630578C(v14, type metadata accessor for RemoteParticipantScope);
  }

  return result;
}

uint64_t sub_1E62FED68(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v32 = a4;
  v33 = a5;
  v30 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078158, &qword_1E65FB788);
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v29[-v9];
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1E65E1F28();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1E65E1EE8();
  v34 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *a1;
  sub_1E5E1D34C(a1, v13, type metadata accessor for AppComposer);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = v18 + v12;
  v20 = swift_allocObject();
  sub_1E5E1FA80(v13, v20 + v18);
  sub_1E65E1F18();
  LOBYTE(v12) = v30;
  sub_1E65E1ED8();
  sub_1E5E1D34C(a1, v13, type metadata accessor for AppComposer);
  v21 = swift_allocObject();
  sub_1E5E1FA80(v13, v21 + v18);
  *(v21 + v19) = v12;
  v22 = v21 + (v19 & 0xFFFFFFFFFFFFFFF8);
  v23 = v33;
  *(v22 + 8) = v32;
  *(v22 + 16) = v23;
  v24 = (v21 + (((v19 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v25 = v36;
  *v24 = v35;
  v24[1] = v25;
  type metadata accessor for AppFeature(0);
  sub_1E6305744(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E6305744(&qword_1EE2D62D8, MEMORY[0x1E699F138], MEMORY[0x1E699F130]);

  v26 = v37;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v27 = sub_1E65E4F08();
  (*(v38 + 8))(v26, v39);
  (*(v34 + 8))(v17, v15);
  return v27;
}

uint64_t sub_1E62FF190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v55 = a7;
  v56 = a6;
  v57 = a5;
  v59 = a4;
  v58 = a3;
  v50 = a1;
  v54 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v40 - v12;
  v49 = sub_1E65D7848();
  v43 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v40 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v40 - v15;
  v16 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v61 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753D0, &qword_1E65F1A50);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v60 = &v40 - v19;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  MEMORY[0x1EEE9AC00](v41);
  v21 = &v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v40 - v28;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v23 + 8))(v25, v22);
  v62 = a2;
  v47 = v29;
  sub_1E65E4DA8();
  v30 = v21;
  v31 = v43;
  sub_1E5DFE50C(v30, &qword_1ED071E58, &qword_1E65EA150);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  sub_1E65E4C98();
  sub_1E65E0768();
  swift_getKeyPath();
  v32 = v42;
  sub_1E65E4EC8();
  v33 = v49;

  v34 = v46;
  v35 = v44;
  sub_1E65E4C98();
  (*(v45 + 8))(v32, v35);
  sub_1E65E4DA8();
  v36 = v51;
  sub_1E5DFE50C(v34, &qword_1ED072958, &qword_1E65EC0F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v37 = v52;
  sub_1E65E4C98();
  sub_1E5E1F544(v36);
  sub_1E5DFE50C(v37, &qword_1ED071F78, &unk_1E65EA3F0);
  v38 = *(v31 + 48);
  if (v38(v36, 1, v33) == 1)
  {
    sub_1E65D77C8();
    if (v38(v36, 1, v33) != 1)
    {
      sub_1E5DFE50C(v36, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v31 + 32))(v53, v36, v33);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();

  return sub_1E65E1EC8();
}

uint64_t sub_1E62FF938(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 256) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753D0, &qword_1E65F1A50);
  *(v5 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B88, &qword_1E65F7878);
  *(v5 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  *(v5 + 112) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  *(v5 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  *(v5 + 144) = swift_task_alloc();
  v9 = sub_1E65D8F28();
  *(v5 + 152) = v9;
  *(v5 + 160) = *(v9 - 8);
  *(v5 + 168) = swift_task_alloc();
  sub_1E65D7848();
  *(v5 + 176) = swift_task_alloc();
  sub_1E65E5C28();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = type metadata accessor for PageMetricsClick(0);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62FFCB8, 0, 0);
}

uint64_t sub_1E62FFCB8()
{
  v1 = v0[27];
  v2 = v0[25];
  v86 = v0[19];
  v87 = v0[20];
  v83 = v0[21];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  sub_1E65D86A8();
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1E65EA670;
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v76 = objc_opt_self();
  v77 = ObjCClassFromMetadata;
  v5 = [v76 bundleForClass_];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E5D48();
  v75 = *(v87 + 104);
  v75(v83, *MEMORY[0x1E69CBCD8], v86);
  v55 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  sub_1E5DFD1CC(v3, v1, &qword_1ED073578, &qword_1E65F0E60);
  v6 = v2[5];
  v80 = v1 + v6;
  v74 = sub_1E65D8C68();
  v72 = *(*(v74 - 8) + 16);
  v72(v1 + v6, v3 + v6);
  v7 = v2[6];
  v70 = v1 + v7;
  sub_1E5DFD1CC(v3 + v7, v1 + v7, &qword_1ED072340, &qword_1E65EA410);
  v89 = *(v3 + v2[7]);

  sub_1E5FAA0F0(v82);
  v8 = v2[8];
  v69 = v1 + v8;
  sub_1E5DFD1CC(v3 + v8, v1 + v8, &qword_1ED073570, &unk_1E65F4570);
  v9 = (v3 + v2[9]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (v3 + v2[10]);
  v13 = v2[12];
  v84 = v10;
  v85 = *(v3 + v2[11]);
  v15 = *v12;
  v14 = v12[1];
  v16 = *(v3 + v13);
  v17 = *(v3 + v13 + 8);
  v18 = v2[14];
  v19 = (v3 + v2[13]);
  v21 = *v19;
  v20 = v19[1];
  v68 = v1 + v18;
  v67 = *(v87 + 16);
  v67(v1 + v18, v3 + v18, v86, v22, v23);
  v24 = v2[15];
  v66 = v1 + v24;
  sub_1E5DFD1CC(v3 + v24, v1 + v24, &qword_1ED072330, &qword_1E65EAB70);
  *(v1 + v2[7]) = v89;
  v25 = (v1 + v2[9]);
  *v25 = v11;
  v25[1] = v84;
  v26 = (v1 + v2[10]);
  v73 = v15;
  *v26 = v15;
  v26[1] = v14;
  *(v1 + v2[11]) = v85;
  v27 = (v1 + v2[12]);
  v79 = v16;
  *v27 = v16;
  v27[1] = v17;
  v64 = v2;
  v28 = (v1 + v2[13]);
  v71 = v21;
  *v28 = v21;
  v28[1] = v20;

  if (sub_1E65E1EF8())
  {
    v62 = v14;
    v63 = v20;
    v81 = v17;
    v29 = v78[17];
    v30 = v78[18];
    v32 = v78[15];
    v31 = v78[16];
    v33 = v78[14];
    v60 = v78[13];
    v61 = v78[11];
    v34 = v78[9];
    v56 = v78[12];
    v58 = v78[10];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEC44(v30);
    sub_1E5DFE50C(v33, &qword_1ED072958, &qword_1E65EC0F0);
    (*(v31 + 8))(v29, v32);
    v35 = sub_1E65D7EB8();
    (*(*(v35 - 8) + 48))(v30, 1, v35);
    sub_1E5DFE50C(v30, &qword_1ED072968, &unk_1E6609800);
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEA00(v60);
    sub_1E5DFE50C(v34, &qword_1ED0753D0, &qword_1E65F1A50);
    (*(v61 + 8))(v56, v58);
    v36 = sub_1E65E1F68();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 48))(v60, 1, v36);
    v39 = v78[13];
    if (v38 == 1)
    {
      sub_1E5DFE50C(v78[13], &qword_1ED076B88, &qword_1E65F7878);
    }

    else
    {
      sub_1E65E1F48();
      (*(v37 + 8))(v39, v36);
    }

    v43 = v78[7];
    v42 = v78[8];
    v44 = v78[6];
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1E65EA670;
    sub_1E65E28D8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E0678();
    (*(v43 + 8))(v42, v44);
    sub_1E65E07C8();
    sub_1E65E5BA8();
    v45 = v78[26];
    v57 = v78[27];
    v46 = v78[21];
    v47 = v78[19];
    v65 = *(v78[5] + 48);
    v48 = [v76 bundleForClass_];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    v75(v46, *MEMORY[0x1E69CBCB0], v47);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E5DFD1CC(v57, v45, &qword_1ED073578, &qword_1E65F0E60);
    (v72)(v45 + v64[5], v80, v74);
    sub_1E5DFD1CC(v70, v45 + v64[6], &qword_1ED072340, &qword_1E65EA410);

    sub_1E5FAA0F0(v59);
    sub_1E5DFD1CC(v69, v45 + v64[8], &qword_1ED073570, &unk_1E65F4570);
    (v67)(v45 + v64[14], v68, v47);
    sub_1E5DFD1CC(v66, v45 + v64[15], &qword_1ED072330, &qword_1E65EAB70);
    *(v45 + v64[7]) = v89;
    v49 = (v45 + v64[9]);
    *v49 = v11;
    v49[1] = v84;
    v50 = (v45 + v64[10]);
    *v50 = v73;
    v50[1] = v62;
    *(v45 + v64[11]) = v85;
    v51 = (v45 + v64[12]);
    *v51 = v79;
    v51[1] = v81;
    v52 = (v45 + v64[13]);
    *v52 = v71;
    v52[1] = v63;

    v88 = (v65 + *v65);
    v53 = swift_task_alloc();
    v78[28] = v53;
    *v53 = v78;
    v53[1] = sub_1E63007F4;
    v41 = v78[26];
  }

  else
  {
    v88 = (*(v78[5] + 48) + **(v78[5] + 48));
    v40 = swift_task_alloc();
    v78[30] = v40;
    *v40 = v78;
    v40[1] = sub_1E6300938;
    v41 = v78[27];
  }

  return v88(v41);
}

uint64_t sub_1E63007F4()
{
  v2 = *(*v1 + 208);
  *(*v1 + 232) = v0;

  sub_1E630578C(v2, type metadata accessor for PageMetricsClick);
  if (v0)
  {
    v3 = sub_1E63075B4;
  }

  else
  {
    v3 = sub_1E63075B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6300938()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1E63075B0;
  }

  else
  {
    v2 = sub_1E63075B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6300A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v31 = a8;
  v29 = a6;
  v30 = a7;
  v32 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E65EA670;
  sub_1E5DFD1CC(a1, v16, &qword_1ED073718, &qword_1E65ED978);
  v18 = sub_1E65E20A8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    v20 = sub_1E5DFE50C(v16, &qword_1ED073718, &qword_1E65ED978);
    v21 = 0x80000001E66155A0;
    v22 = 0xD000000000000016;
  }

  else
  {
    v23 = sub_1E65E2088();
    v20 = (*(v19 + 8))(v16, v18);
    if (v23)
    {
      if (v23 == 1)
      {
        v21 = 0x80000001E66155E0;
        v22 = 0xD000000000000015;
      }

      else
      {
        v22 = 0xD000000000000012;
        v21 = 0x80000001E66155C0;
      }
    }

    else
    {
      v21 = 0xED00006E616C5072;
      v22 = 0x756F59646C697542;
    }
  }

  *(v17 + 32) = v22;
  *(v17 + 40) = v21;
  MEMORY[0x1EEE9AC00](v20);
  *(&v29 - 8) = a5;
  *(&v29 - 7) = a1;
  *(&v29 - 6) = a2;
  *(&v29 - 5) = a3;
  v25 = v29;
  v24 = v30;
  *(&v29 - 4) = a4;
  *(&v29 - 3) = v25;
  *(&v29 - 2) = v24;
  *(&v29 - 8) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EF0, &qword_1E65EEEA8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v27 = sub_1E60731B0();
  v33 = v26;
  v34 = v27;
  swift_getOpaqueTypeConformance2();
  sub_1E65DC258();
}

uint64_t sub_1E6300D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  LODWORD(v44) = a8;
  v42 = a6;
  v37 = a4;
  v38 = a5;
  v36 = a3;
  v35 = a2;
  v34[1] = a1;
  v43 = a9;
  v11 = type metadata accessor for AppComposer(0);
  *&v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v34 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v34 - v16;
  v17 = type metadata accessor for ActionButtonDescriptor(0);
  v18 = &v15[*(v17 + 20)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
  v20 = v19[12];
  v21 = (v18 + v19[16]);
  v22 = (v18 + v19[20]);
  sub_1E5DFD1CC(v35, v18, &qword_1ED073718, &qword_1E65ED978);
  *(v18 + v20) = v36;
  v23 = v38;
  *v21 = v37;
  v21[1] = v23;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  *v22 = 0;
  v22[1] = 0;
  swift_storeEnumTagMultiPayload();

  sub_1E65D76E8();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  v24 = *(a7 + 2);
  v25 = *(a7 + 5);
  v26 = *(a7 + 8);
  v38 = *(a7 + 7);
  v27 = *(a7 + 9);
  sub_1E5E1D34C(a1, v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v28 = (*(v39 + 80) + 104) & ~*(v39 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v44;
  v39 = *a7;
  v44 = *(a7 + 24);
  v30 = *a7;
  *(v29 + 40) = a7[1];
  v31 = a7[3];
  *(v29 + 56) = a7[2];
  *(v29 + 72) = v31;
  *(v29 + 88) = a7[4];
  *(v29 + 24) = v30;
  sub_1E5E1FA80(v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v45 = v39;
  v46 = v24;
  v47 = v44;
  v48 = v25;
  v49 = &unk_1E65FB7C8;
  v50 = v29;
  v51 = v26;
  v52 = v27;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v32 = v40;
  sub_1E6034CCC(v15, v42, &v45, v40);

  swift_unknownObjectRelease();
  sub_1E5DFE50C(v15, &qword_1ED072638, &qword_1E65EB950);
  sub_1E60731B0();
  sub_1E65E4708();
  return sub_1E5EF70C0(v32);
}

uint64_t sub_1E6301134(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 160) = a2;
  *(v4 + 16) = a1;
  v5 = sub_1E65D8F28();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_1E65D7848();
  *(v4 + 64) = swift_task_alloc();
  sub_1E65E5C28();
  *(v4 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  *(v4 + 80) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = type metadata accessor for PageMetricsClick(0);
  *(v4 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E630135C, 0, 0);
}

uint64_t sub_1E630135C()
{
  if (sub_1E65E1EF8())
  {
    v2 = v0[15];
    v1 = v0[16];
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[12];
    v6 = v0[10];
    v36 = v0[7];
    v37 = v0[11];
    v40 = v0[6];
    v41 = v0[5];
    v39 = v0[3];
    v7 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1E65EA670;
    sub_1E65E28E8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEC44(v3);
    sub_1E5DFE50C(v6, &qword_1ED072958, &qword_1E65EC0F0);
    (*(v5 + 8))(v4, v37);
    v8 = sub_1E65D7EB8();
    (*(*(v8 - 8) + 48))(v3, 1, v8);
    v38 = *(v39 + 48);
    sub_1E5DFE50C(v3, &qword_1ED072968, &unk_1E6609800);
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    (*(v40 + 104))(v36, *MEMORY[0x1E69CBCB0], v41);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E5DFD1CC(v7, v1, &qword_1ED073578, &qword_1E65F0E60);
    v11 = v2[5];
    v12 = sub_1E65D8C68();
    (*(*(v12 - 8) + 16))(v1 + v11, v7 + v11, v12);
    sub_1E5DFD1CC(v7 + v2[6], v1 + v2[6], &qword_1ED072340, &qword_1E65EA410);
    v43 = *(v7 + v2[7]);

    sub_1E5FAA0F0(v32);
    sub_1E5DFD1CC(v7 + v2[8], v1 + v2[8], &qword_1ED073570, &unk_1E65F4570);
    v13 = (v7 + v2[9]);
    v14 = *v13;
    v15 = v13[1];
    v16 = (v7 + v2[10]);
    v17 = v16[1];
    v34 = v14;
    v35 = *v16;
    v18 = *(v7 + v2[11]);
    v19 = (v7 + v2[12]);
    v20 = v19[1];
    v33 = *v19;
    v21 = (v7 + v2[13]);
    v23 = *v21;
    v22 = v21[1];
    (*(v40 + 16))(v1 + v2[14], v7 + v2[14], v41);
    sub_1E5DFD1CC(v7 + v2[15], v1 + v2[15], &qword_1ED072330, &qword_1E65EAB70);
    *(v1 + v2[7]) = v43;
    v24 = (v1 + v2[9]);
    *v24 = v34;
    v24[1] = v15;
    v25 = (v1 + v2[10]);
    *v25 = v35;
    v25[1] = v17;
    *(v1 + v2[11]) = v18;
    v26 = (v1 + v2[12]);
    *v26 = v33;
    v26[1] = v20;
    v27 = (v1 + v2[13]);
    *v27 = v23;
    v27[1] = v22;

    v42 = (v38 + *v38);
    v28 = swift_task_alloc();
    v0[17] = v28;
    *v28 = v0;
    v28[1] = sub_1E63019A4;
    v29 = v0[16];
  }

  else
  {
    v42 = (*(v0[3] + 48) + **(v0[3] + 48));
    v30 = swift_task_alloc();
    v0[19] = v30;
    *v30 = v0;
    v30[1] = sub_1E63075D4;
    v29 = v0[2];
  }

  return v42(v29);
}

uint64_t sub_1E63019A4()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 144) = v0;

  sub_1E630578C(v2, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63075D8, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6301B68(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v32 = a4;
  v33 = a5;
  v30 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078158, &qword_1E65FB788);
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v29[-v9];
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1E65E1F28();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1E65E1EE8();
  v34 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *a1;
  sub_1E5E1D34C(a1, v13, type metadata accessor for AppComposer);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = v18 + v12;
  v20 = swift_allocObject();
  sub_1E5E1FA80(v13, v20 + v18);
  sub_1E65E1F18();
  LOBYTE(v12) = v30;
  sub_1E65E1ED8();
  sub_1E5E1D34C(a1, v13, type metadata accessor for AppComposer);
  v21 = swift_allocObject();
  sub_1E5E1FA80(v13, v21 + v18);
  *(v21 + v19) = v12;
  v22 = v21 + (v19 & 0xFFFFFFFFFFFFFFF8);
  v23 = v33;
  *(v22 + 8) = v32;
  *(v22 + 16) = v23;
  v24 = (v21 + (((v19 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v25 = v36;
  *v24 = v35;
  v24[1] = v25;
  type metadata accessor for AppFeature(0);
  sub_1E6305744(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E6305744(&qword_1EE2D62D8, MEMORY[0x1E699F138], MEMORY[0x1E699F130]);

  v26 = v37;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v27 = sub_1E65E4F08();
  (*(v38 + 8))(v26, v39);
  (*(v34 + 8))(v17, v15);
  return v27;
}

uint64_t sub_1E6301F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = a7;
  v59 = a6;
  v60 = a5;
  v62 = a4;
  v61 = a3;
  v49 = a1;
  v57 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = v43 - v12;
  v13 = sub_1E65D7848();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v56 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  MEMORY[0x1EEE9AC00](v50);
  v48 = v43 - v15;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v43 - v16;
  v17 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v43[2] = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753D0, &qword_1E65F1A50);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v43 - v20;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  MEMORY[0x1EEE9AC00](v53);
  v23 = v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v43 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v43[1] = v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v43 - v31;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v25 + 8))(v27, v24);
  v63 = a2;
  v46 = v32;
  sub_1E65E4DA8();
  sub_1E5DFE50C(v23, &qword_1ED071E58, &qword_1E65EA150);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  v53 = v21;
  sub_1E65E4C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  swift_getKeyPath();
  v33 = v44;
  sub_1E65E4EC8();

  v34 = v48;
  v35 = v45;
  sub_1E65E4C98();
  v36 = v33;
  v37 = v51;
  (*(v47 + 8))(v36, v35);
  sub_1E65E4DA8();
  v38 = v52;
  sub_1E5DFE50C(v34, &qword_1ED072958, &qword_1E65EC0F0);
  v39 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v40 = v55;
  sub_1E65E4C98();
  sub_1E5E1F544(v39);
  sub_1E5DFE50C(v40, &qword_1ED071F78, &unk_1E65EA3F0);
  v41 = *(v37 + 48);
  if (v41(v39, 1, v38) == 1)
  {
    sub_1E65D77C8();
    if (v41(v39, 1, v38) != 1)
    {
      sub_1E5DFE50C(v39, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v37 + 32))(v56, v39, v38);
  }

  sub_1E65E0708();

  return sub_1E65E1EC8();
}

uint64_t sub_1E6302730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v42 = a3;
  v43 = a8;
  LODWORD(v44) = a7;
  v46 = a9;
  v47 = a5;
  v41 = a4;
  v45 = a10;
  v14 = type metadata accessor for AppComposer(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v38 - v19;
  v21 = type metadata accessor for ActionButtonDescriptor(0);
  v22 = &v20[*(v21 + 20)];
  *v22 = 2;
  *(v22 + 1) = a1;
  *(v22 + 2) = a2;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();

  sub_1E65D76E8();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_1E5E1D34C(a4, v17, type metadata accessor for AppComposer);
  v23 = *(a6 + 2);
  v24 = *(a6 + 5);
  v25 = *(a6 + 8);
  v40 = *(a6 + 7);
  v39 = v25;
  v26 = *(a6 + 9);
  v27 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v28 = v27 + v16;
  v29 = (v27 + v16) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v42;
  sub_1E5E1FA80(v17, v30 + v27);
  *(v30 + v28) = v44;
  v31 = v30 + v29;
  v32 = a6[1];
  *(v31 + 8) = *a6;
  v33 = a6[3];
  *(v31 + 72) = a6[4];
  v34 = a6[2];
  *(v31 + 56) = v33;
  v35 = *a6;
  *(v31 + 40) = v34;
  v44 = *(a6 + 24);
  v36 = v44;
  *(v31 + 24) = v32;
  v48 = v35;
  v49 = v23;
  v50 = v36;
  v51 = v24;
  v52 = v45;
  v53 = v30;
  v54 = v39;
  v55 = v26;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E6034CCC(v20, v47, &v48, v46);

  swift_unknownObjectRelease();
  return sub_1E5DFE50C(v20, &qword_1ED072638, &qword_1E65EB950);
}

uint64_t sub_1E6302A44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 256) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753D0, &qword_1E65F1A50);
  *(v5 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B88, &qword_1E65F7878);
  *(v5 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  *(v5 + 112) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  *(v5 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  *(v5 + 144) = swift_task_alloc();
  v9 = sub_1E65D8F28();
  *(v5 + 152) = v9;
  *(v5 + 160) = *(v9 - 8);
  *(v5 + 168) = swift_task_alloc();
  sub_1E65D7848();
  *(v5 + 176) = swift_task_alloc();
  sub_1E65E5C28();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = type metadata accessor for PageMetricsClick(0);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6302DC4, 0, 0);
}

uint64_t sub_1E6302DC4()
{
  v1 = v0[27];
  v2 = v0[25];
  v86 = v0[19];
  v87 = v0[20];
  v83 = v0[21];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  sub_1E65D86A8();
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1E65EA670;
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v76 = objc_opt_self();
  v77 = ObjCClassFromMetadata;
  v5 = [v76 bundleForClass_];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E5D48();
  v75 = *(v87 + 104);
  v75(v83, *MEMORY[0x1E69CBCD8], v86);
  v55 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  sub_1E5DFD1CC(v3, v1, &qword_1ED073578, &qword_1E65F0E60);
  v6 = v2[5];
  v80 = v1 + v6;
  v74 = sub_1E65D8C68();
  v72 = *(*(v74 - 8) + 16);
  v72(v1 + v6, v3 + v6);
  v7 = v2[6];
  v70 = v1 + v7;
  sub_1E5DFD1CC(v3 + v7, v1 + v7, &qword_1ED072340, &qword_1E65EA410);
  v89 = *(v3 + v2[7]);

  sub_1E5FAA0F0(v82);
  v8 = v2[8];
  v69 = v1 + v8;
  sub_1E5DFD1CC(v3 + v8, v1 + v8, &qword_1ED073570, &unk_1E65F4570);
  v9 = (v3 + v2[9]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (v3 + v2[10]);
  v13 = v2[12];
  v84 = v10;
  v85 = *(v3 + v2[11]);
  v15 = *v12;
  v14 = v12[1];
  v16 = *(v3 + v13);
  v17 = *(v3 + v13 + 8);
  v18 = v2[14];
  v19 = (v3 + v2[13]);
  v21 = *v19;
  v20 = v19[1];
  v68 = v1 + v18;
  v67 = *(v87 + 16);
  v67(v1 + v18, v3 + v18, v86, v22, v23);
  v24 = v2[15];
  v66 = v1 + v24;
  sub_1E5DFD1CC(v3 + v24, v1 + v24, &qword_1ED072330, &qword_1E65EAB70);
  *(v1 + v2[7]) = v89;
  v25 = (v1 + v2[9]);
  *v25 = v11;
  v25[1] = v84;
  v26 = (v1 + v2[10]);
  v73 = v15;
  *v26 = v15;
  v26[1] = v14;
  *(v1 + v2[11]) = v85;
  v27 = (v1 + v2[12]);
  v79 = v16;
  *v27 = v16;
  v27[1] = v17;
  v64 = v2;
  v28 = (v1 + v2[13]);
  v71 = v21;
  *v28 = v21;
  v28[1] = v20;

  if (sub_1E65E1EF8())
  {
    v62 = v14;
    v63 = v20;
    v81 = v17;
    v29 = v78[17];
    v30 = v78[18];
    v32 = v78[15];
    v31 = v78[16];
    v33 = v78[14];
    v60 = v78[13];
    v61 = v78[11];
    v34 = v78[9];
    v56 = v78[12];
    v58 = v78[10];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEC44(v30);
    sub_1E5DFE50C(v33, &qword_1ED072958, &qword_1E65EC0F0);
    (*(v31 + 8))(v29, v32);
    v35 = sub_1E65D7EB8();
    (*(*(v35 - 8) + 48))(v30, 1, v35);
    sub_1E5DFE50C(v30, &qword_1ED072968, &unk_1E6609800);
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEA00(v60);
    sub_1E5DFE50C(v34, &qword_1ED0753D0, &qword_1E65F1A50);
    (*(v61 + 8))(v56, v58);
    v36 = sub_1E65E1F68();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 48))(v60, 1, v36);
    v39 = v78[13];
    if (v38 == 1)
    {
      sub_1E5DFE50C(v78[13], &qword_1ED076B88, &qword_1E65F7878);
    }

    else
    {
      sub_1E65E1F48();
      (*(v37 + 8))(v39, v36);
    }

    v43 = v78[7];
    v42 = v78[8];
    v44 = v78[6];
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1E65EA670;
    sub_1E65E28D8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E0678();
    (*(v43 + 8))(v42, v44);
    sub_1E65E07C8();
    sub_1E65E5BA8();
    v45 = v78[26];
    v57 = v78[27];
    v46 = v78[21];
    v47 = v78[19];
    v65 = *(v78[5] + 48);
    v48 = [v76 bundleForClass_];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    v75(v46, *MEMORY[0x1E69CBCB0], v47);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E5DFD1CC(v57, v45, &qword_1ED073578, &qword_1E65F0E60);
    (v72)(v45 + v64[5], v80, v74);
    sub_1E5DFD1CC(v70, v45 + v64[6], &qword_1ED072340, &qword_1E65EA410);

    sub_1E5FAA0F0(v59);
    sub_1E5DFD1CC(v69, v45 + v64[8], &qword_1ED073570, &unk_1E65F4570);
    (v67)(v45 + v64[14], v68, v47);
    sub_1E5DFD1CC(v66, v45 + v64[15], &qword_1ED072330, &qword_1E65EAB70);
    *(v45 + v64[7]) = v89;
    v49 = (v45 + v64[9]);
    *v49 = v11;
    v49[1] = v84;
    v50 = (v45 + v64[10]);
    *v50 = v73;
    v50[1] = v62;
    *(v45 + v64[11]) = v85;
    v51 = (v45 + v64[12]);
    *v51 = v79;
    v51[1] = v81;
    v52 = (v45 + v64[13]);
    *v52 = v71;
    v52[1] = v63;

    v88 = (v65 + *v65);
    v53 = swift_task_alloc();
    v78[28] = v53;
    *v53 = v78;
    v53[1] = sub_1E6303900;
    v41 = v78[26];
  }

  else
  {
    v88 = (*(v78[5] + 48) + **(v78[5] + 48));
    v40 = swift_task_alloc();
    v78[30] = v40;
    *v40 = v78;
    v40[1] = sub_1E6303B68;
    v41 = v78[27];
  }

  return v88(v41);
}

uint64_t sub_1E6303900()
{
  v2 = *(*v1 + 208);
  *(*v1 + 232) = v0;

  sub_1E630578C(v2, type metadata accessor for PageMetricsClick);
  if (v0)
  {
    v3 = sub_1E6303DA8;
  }

  else
  {
    v3 = sub_1E6303A44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6303A44()
{
  sub_1E630578C(*(v0 + 216), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6303B68()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1E6303C7C;
  }

  else
  {
    v2 = sub_1E63075B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6303C7C()
{
  sub_1E630578C(*(v0 + 216), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6303DA8()
{
  sub_1E630578C(*(v0 + 216), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6303ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v34 = a6;
  v35 = a8;
  v32 = a4;
  v33 = a5;
  v36 = a9;
  v31 = a11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30[-v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E65EA670;
  sub_1E5DFD1CC(a1, v17, &qword_1ED073718, &qword_1E65ED978);
  v19 = sub_1E65E20A8();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    v21 = sub_1E5DFE50C(v17, &qword_1ED073718, &qword_1E65ED978);
    v22 = 0x80000001E66155A0;
    v23 = 0xD000000000000016;
  }

  else
  {
    v24 = sub_1E65E2088();
    v21 = (*(v20 + 8))(v17, v19);
    if (v24)
    {
      if (v24 == 1)
      {
        v22 = 0x80000001E66155E0;
        v23 = 0xD000000000000015;
      }

      else
      {
        v23 = 0xD000000000000012;
        v22 = 0x80000001E66155C0;
      }
    }

    else
    {
      v22 = 0xED00006E616C5072;
      v23 = 0x756F59646C697542;
    }
  }

  *(v18 + 32) = v23;
  *(v18 + 40) = v22;
  MEMORY[0x1EEE9AC00](v21);
  *&v30[-80] = a7;
  *&v30[-72] = a1;
  *&v30[-64] = a2;
  *&v30[-56] = a3;
  v25 = v33;
  *&v30[-48] = v32;
  *&v30[-40] = v25;
  v26 = v35;
  *&v30[-32] = v34;
  *&v30[-24] = v26;
  *&v30[-16] = a10;
  v30[-8] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EF0, &qword_1E65EEEA8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v28 = sub_1E60731B0();
  v37 = v27;
  v38 = v28;
  swift_getOpaqueTypeConformance2();
  sub_1E65DC258();
}

uint64_t sub_1E63041D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, unsigned __int8 a11)
{
  v44 = a8;
  v40 = a7;
  v39 = a6;
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v47 = a1;
  v45 = a9;
  LODWORD(v46) = a11;
  v12 = type metadata accessor for AppComposer(0);
  *&v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v35 - v17;
  v18 = type metadata accessor for ActionButtonDescriptor(0);
  v19 = &v16[*(v18 + 20)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
  v21 = v20[12];
  v22 = (v19 + v20[16]);
  v23 = (v19 + v20[20]);
  sub_1E5DFD1CC(v36, v19, &qword_1ED073718, &qword_1E65ED978);
  *(v19 + v21) = v37;
  *v22 = v38;
  v22[1] = a5;
  v24 = v40;
  *v23 = v39;
  v23[1] = v24;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();

  sub_1E65D76E8();
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  v25 = *(a10 + 2);
  v26 = *(a10 + 5);
  v27 = *(a10 + 8);
  v40 = *(a10 + 7);
  v28 = *(a10 + 9);
  sub_1E5E1D34C(v47, &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v29 = (*(v41 + 80) + 104) & ~*(v41 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v46;
  v41 = *a10;
  v46 = *(a10 + 24);
  v31 = *a10;
  *(v30 + 40) = a10[1];
  v32 = a10[3];
  *(v30 + 56) = a10[2];
  *(v30 + 72) = v32;
  *(v30 + 88) = a10[4];
  *(v30 + 24) = v31;
  sub_1E5E1FA80(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  v48 = v41;
  v49 = v25;
  v50 = v46;
  v51 = v26;
  v52 = &unk_1E65FB6E8;
  v53 = v30;
  v54 = v27;
  v55 = v28;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v33 = v42;
  sub_1E6034CCC(v16, v44, &v48, v42);

  swift_unknownObjectRelease();
  sub_1E5DFE50C(v16, &qword_1ED072638, &qword_1E65EB950);
  sub_1E60731B0();
  sub_1E65E4708();
  return sub_1E5EF70C0(v33);
}

uint64_t sub_1E6304640(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 160) = a2;
  *(v4 + 16) = a1;
  v5 = sub_1E65D8F28();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_1E65D7848();
  *(v4 + 64) = swift_task_alloc();
  sub_1E65E5C28();
  *(v4 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  *(v4 + 80) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = type metadata accessor for PageMetricsClick(0);
  *(v4 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6304868, 0, 0);
}

uint64_t sub_1E6304868()
{
  if (sub_1E65E1EF8())
  {
    v2 = v0[15];
    v1 = v0[16];
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[12];
    v6 = v0[10];
    v36 = v0[7];
    v37 = v0[11];
    v40 = v0[6];
    v41 = v0[5];
    v39 = v0[3];
    v7 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1E65EA670;
    sub_1E65E28E8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEC44(v3);
    sub_1E5DFE50C(v6, &qword_1ED072958, &qword_1E65EC0F0);
    (*(v5 + 8))(v4, v37);
    v8 = sub_1E65D7EB8();
    (*(*(v8 - 8) + 48))(v3, 1, v8);
    v38 = *(v39 + 48);
    sub_1E5DFE50C(v3, &qword_1ED072968, &unk_1E6609800);
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    (*(v40 + 104))(v36, *MEMORY[0x1E69CBCB0], v41);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E5DFD1CC(v7, v1, &qword_1ED073578, &qword_1E65F0E60);
    v11 = v2[5];
    v12 = sub_1E65D8C68();
    (*(*(v12 - 8) + 16))(v1 + v11, v7 + v11, v12);
    sub_1E5DFD1CC(v7 + v2[6], v1 + v2[6], &qword_1ED072340, &qword_1E65EA410);
    v43 = *(v7 + v2[7]);

    sub_1E5FAA0F0(v32);
    sub_1E5DFD1CC(v7 + v2[8], v1 + v2[8], &qword_1ED073570, &unk_1E65F4570);
    v13 = (v7 + v2[9]);
    v14 = *v13;
    v15 = v13[1];
    v16 = (v7 + v2[10]);
    v17 = v16[1];
    v34 = v14;
    v35 = *v16;
    v18 = *(v7 + v2[11]);
    v19 = (v7 + v2[12]);
    v20 = v19[1];
    v33 = *v19;
    v21 = (v7 + v2[13]);
    v23 = *v21;
    v22 = v21[1];
    (*(v40 + 16))(v1 + v2[14], v7 + v2[14], v41);
    sub_1E5DFD1CC(v7 + v2[15], v1 + v2[15], &qword_1ED072330, &qword_1E65EAB70);
    *(v1 + v2[7]) = v43;
    v24 = (v1 + v2[9]);
    *v24 = v34;
    v24[1] = v15;
    v25 = (v1 + v2[10]);
    *v25 = v35;
    v25[1] = v17;
    *(v1 + v2[11]) = v18;
    v26 = (v1 + v2[12]);
    *v26 = v33;
    v26[1] = v20;
    v27 = (v1 + v2[13]);
    *v27 = v23;
    v27[1] = v22;

    v42 = (v38 + *v38);
    v28 = swift_task_alloc();
    v0[17] = v28;
    *v28 = v0;
    v28[1] = sub_1E6304EB0;
    v29 = v0[16];
  }

  else
  {
    v42 = (*(v0[3] + 48) + **(v0[3] + 48));
    v30 = swift_task_alloc();
    v0[19] = v30;
    *v30 = v0;
    v30[1] = sub_1E6305074;
    v29 = v0[2];
  }

  return v42(v29);
}

uint64_t sub_1E6304EB0()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 144) = v0;

  sub_1E630578C(v2, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6305244, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6305074()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6305244()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63052FC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6304640(a1, v6, v1 + 24, v1 + v5);
}

uint64_t sub_1E6305400()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63054B0, v3, v2);
}

uint64_t sub_1E63054B0()
{

  sub_1E5E20198(18, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080D24, 0, 0);
}

uint64_t sub_1E6305528(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v1 + v6);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6302A44(a1, v7, v1 + v5, v9, v8 + 8);
}

uint64_t sub_1E6305644()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E63053E0(v0 + v3);
}

uint64_t sub_1E6305744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E630578C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6305804(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6301134(a1, v6, v1 + 24, v1 + v5);
}

uint64_t objectdestroy_13Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 24) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E63065E8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v1 + v6);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E62FF938(a1, v7, v1 + v5, v9, v8 + 8);
}

uint64_t sub_1E6306704()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E63053E0(v0 + v3);
}

uint64_t objectdestroy_28Tm_1()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E63074DC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = (v2 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v6);

  return a2(a1, v2 + v5, v13, v8, v9, v11, v12);
}

uint64_t QueuedSessionType.hash(into:)(uint64_t a1)
{
  v3 = sub_1E65D8B08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (v1[2])
  {
    v8 = v1[1];
    MEMORY[0x1E694E740](1);

    return MEMORY[0x1EEE374E8](a1, v7, v8);
  }

  else
  {
    MEMORY[0x1E694E740](0);
    result = MEMORY[0x1E694E740](*(v7 + 16));
    v9 = *(v7 + 16);
    if (v9)
    {
      v12 = *(v4 + 16);
      v10 = v4 + 16;
      v11 = v12;
      v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v14 = *(v10 + 56);
      do
      {
        v11(v6, v13, v3);
        sub_1E6307998();
        sub_1E65E5B48();
        result = (*(v10 - 8))(v6, v3);
        v13 += v14;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t QueuedSessionType.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1E65E6D28();
  QueuedSessionType.hash(into:)(v3);
  return sub_1E65E6D78();
}

uint64_t sub_1E63077D4()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1E65E6D28();
  QueuedSessionType.hash(into:)(v3);
  return sub_1E65E6D78();
}

uint64_t sub_1E630782C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1E65E6D28();
  QueuedSessionType.hash(into:)(v4);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17QueuedSessionTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_1E626F21C(*a2, *(a2 + 8), 0);
      sub_1E626F21C(v2, v3, 0);
      v8 = sub_1E61B7998(v2, v5);
      v4 = 0;
      v7 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!*(a2 + 16))
  {
LABEL_5:
    sub_1E626F21C(*a2, *(a2 + 8), v7);
    sub_1E626F21C(v2, v3, v4);
    v8 = 0;
    goto LABEL_7;
  }

  v4 = 1;
  sub_1E626F21C(*a2, *(a2 + 8), 1);
  sub_1E626F21C(v2, v3, 1);
  v8 = sub_1E65DAF38();
  v7 = 1;
LABEL_7:
  sub_1E5F94E14(v2, v3, v4);
  sub_1E5F94E14(v5, v6, v7);
  return v8 & 1;
}

unint64_t sub_1E6307998()
{
  result = qword_1ED078160;
  if (!qword_1ED078160)
  {
    sub_1E65D8B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078160);
  }

  return result;
}

unint64_t sub_1E63079F4()
{
  result = qword_1ED078168;
  if (!qword_1ED078168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078168);
  }

  return result;
}

id sub_1E6307A64()
{
  v1 = [*(v0 + qword_1EE2D9180) navigationItem];

  return v1;
}

void sub_1E6307AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ScrollHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EE2D87B0), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EE2D87B0 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, sel_setContentScrollView_forEdge_, a1, a2);
  v8 = [v4 parentViewController];
  [v8 setContentScrollView:a1 forEdge:a2];
}

void sub_1E6307B70(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v9 = a1;
  sub_1E6307AA4(a3, a4, v9, v8);
}

uint64_t sub_1E6307BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E5E1F174(a1, a2, a3, a4);
  (*(*(*(v4 + qword_1EE2D87B0) - 8) + 8))(a1);
  return v6;
}

void *sub_1E6307C94(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EE2D87B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_1E65E4038();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_1E6307DCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ScrollHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EE2D87B0), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EE2D87B0 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1E6307EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ScrollHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EE2D87B0), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EE2D87B0 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_1E6307F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = (v4 + qword_1ED078170);
  *v7 = a1;
  v7[1] = a2;
  v8 = type metadata accessor for HostingViewController.ContentScrollViewObserver(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  v10.receiver = v4;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1E6307FE4(uint64_t result)
{
  if (result)
  {
    return (*(v1 + qword_1ED078170))();
  }

  __break(1u);
  return result;
}

void sub_1E6308020(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1E6307FE4(a3);
}

id sub_1E63080CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HostingViewController.ContentScrollViewObserver(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_1E6308150(void *a1)
{
  v1 = a1;
  v2 = sub_1E63081D0();

  if (v2)
  {
    sub_1E5DEF738(0, &unk_1ED078270, 0x1E69DCBA0);
    v3 = sub_1E65E5EF8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1E63081D0()
{
  v1 = [*(v0 + qword_1EE2D9180) keyCommands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E5DEF738(0, &unk_1ED078270, 0x1E69DCBA0);
  v3 = sub_1E65E5F18();

  return v3;
}

id sub_1E630824C()
{
  sub_1E63082B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078268, &qword_1E65FBB30);
  v0 = sub_1E65E5EF8();

  return v0;
}

uint64_t sub_1E63082B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E65EA660;
  v2 = *(v0 + qword_1EE2D9180);
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

id sub_1E630834C(void *a1)
{
  v1 = a1;
  v2 = sub_1E6308380();

  return v2;
}

uint64_t sub_1E6308398(void *a1)
{
  v1 = a1;
  v2 = sub_1E63083CC();

  return v2 & 1;
}

id sub_1E63083F8(void *a1)
{
  v1 = a1;
  v2 = sub_1E6307A64();

  return v2;
}

void sub_1E630843C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E6308498();
  }
}

void sub_1E6308498()
{
  v1 = sub_1E65E07B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + qword_1EE2D9180) navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  sub_1E65E0798();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  [v5 setLargeTitleInsets_];
}

void sub_1E630860C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v4 = *&v0[qword_1EE2D9180];
  [v0 addChildViewController_];
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v4 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v6 addSubview_];

  v9 = [v4 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = [v4 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = objc_opt_self();
  sub_1E65E6518();

  sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
  v16 = sub_1E65E5EF8();

  [v15 activateConstraints_];

  [v4 didMoveToParentViewController_];
  sub_1E630899C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E65EA670;
  v18 = sub_1E65E3BA8();
  v19 = MEMORY[0x1E69DC2B0];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1E65E6388();
  swift_unknownObjectRelease();

  sub_1E6308B40();
  if (*&v1[qword_1EE2D9198])
  {
    v20 = [v4 navigationItem];
    v21 = sub_1E65E5C48();
    [v20 setTitle_];
  }
}

uint64_t sub_1E630899C()
{
  v10 = sub_1E65E3B88();
  result = MEMORY[0x1EEE9AC00](v10);
  v2 = v0;
  v3 = *&v0[qword_1EE2D9140];
  if (v3 >> 62)
  {
    result = sub_1E65E67C8();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E694E2D0](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v2 traitCollection];
      v9 = [v8 preferredContentSizeCategory];

      sub_1E65E6368();
      sub_1E65E3B78();
      sub_1E65E6378();
    }

    while (v4 != v5);
  }

  return result;
}

void sub_1E6308B40()
{
  v1 = sub_1E65DEEA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, &v0[qword_1EE2D9160], v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x1E699CE10])
  {
    if ((_UISolariumEnabled() & 1) != 0 || (v6 = [v0 traitCollection], v7 = objc_msgSend(v6, sel_userInterfaceIdiom), v6, v7))
    {
      if (_UISolariumEnabled())
      {
        v8 = v0[qword_1EE2D9118];
        v9 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
        v10 = v9;
        if (v8 == 1)
        {
          goto LABEL_10;
        }

LABEL_13:
        [v9 configureWithDefaultBackground];
        v18 = [*&v0[qword_1EE2D9180] navigationItem];
        [v18 setScrollEdgeAppearance_];

        v16 = [*&v0[qword_1EE2D9180] navigationItem];
        goto LABEL_18;
      }

      v10 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
      [v10 configureWithTransparentBackground];
      v17 = [*&v0[qword_1EE2D9180] navigationItem];
      [v17 setScrollEdgeAppearance_];

      v16 = [*&v0[qword_1EE2D9180] navigationItem];
      goto LABEL_18;
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
    [v10 configureWithTransparentBackground];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1E65EA660;
    v20 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v21 = swift_allocObject();
    v21[1] = vdupq_n_s64(0x4059000000000000uLL);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1E630B700;
    *(v22 + 24) = v21;
    aBlock[4] = sub_1E630B704;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E630A48C;
    aBlock[3] = &block_descriptor_35;
    v23 = _Block_copy(aBlock);

    v24 = [v20 imageWithActions_];

    _Block_release(v23);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if (v20)
    {
      __break(1u);
    }

    else
    {
      v25 = [objc_opt_self() effectWithVariableBlurRadius:v24 imageMask:25.0];

      if (v25)
      {
        *(v19 + 32) = v25;
        sub_1E5DEF738(0, &qword_1EE2D4690, 0x1E69DD290);
        v26 = sub_1E65E5EF8();

        [v10 setBackgroundEffects_];

        [v10 setBackgroundImageContentMode_];
        v27 = [objc_opt_self() clearColor];
        [v10 setShadowColor_];

        v28 = [*&v0[qword_1EE2D9180] navigationItem];
        [v28 setScrollEdgeAppearance_];

        v16 = [*&v0[qword_1EE2D9180] navigationItem];
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else if (v5 == *MEMORY[0x1E699CE18])
  {
    if (_UISolariumEnabled())
    {
      v11 = v0[qword_1EE2D9118];
      v9 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
      v10 = v9;
      if (v11 == 1)
      {
LABEL_10:
        [v9 configureWithTransparentBackground];
        v12 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
        [v12 configureWithDefaultBackground];
        v13 = [*&v0[qword_1EE2D9180] navigationItem];
        [v13 setScrollEdgeAppearance_];

        v14 = [*&v0[qword_1EE2D9180] navigationItem];
        [v14 setStandardAppearance_];

        v10 = v12;
LABEL_19:

        return;
      }

      goto LABEL_13;
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
    [v10 configureWithDefaultBackground];
    v15 = [*&v0[qword_1EE2D9180] navigationItem];
    [v15 setScrollEdgeAppearance_];

    v16 = [*&v0[qword_1EE2D9180] navigationItem];
LABEL_18:
    v14 = v16;
    [v14 setStandardAppearance_];
    goto LABEL_19;
  }

  sub_1E65E6C08();
  __break(1u);
}

void sub_1E63092F0(void *a1)
{
  v1 = a1;
  sub_1E630860C();
}

void sub_1E6309338()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v2 = *&v0[qword_1EE2D9198];
  if (v2)
  {
    v3 = *&v0[qword_1EE2D9180];
    v4 = v2;
    v5 = [v3 navigationItem];
    v6 = [v5 _bottomPalette];

    if (v6)
    {
      [v4 intrinsicContentSize];
      [v6 setPreferredHeight_];
    }

    v8 = [*&v1[qword_1EE2D9180] navigationItem];
    [v8 _setBottomPaletteNeedsUpdate];
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1E65DF028();
    swift_unknownObjectRelease();
  }

  sub_1E63094C4();
  if (*&v1[qword_1EE2D9120])
  {
    v9 = [v1 contentScrollViewForEdge_];
    if (v9)
    {
      v13 = v9;
      sub_1E6309B54(v9, v10, v11, v12);
    }
  }
}

void sub_1E63094C4()
{
  v2 = sub_1E65DEEA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, &v0[qword_1EE2D9160], v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != *MEMORY[0x1E699CE10])
  {
    if (v6 == *MEMORY[0x1E699CE18])
    {
      return;
    }

    sub_1E65E6C08();
    __break(1u);
LABEL_14:
    v11 = sub_1E65E67C8();
    if (v11)
    {
LABEL_6:
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (v12)
      {
        __break(1u);
      }

      else if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v13 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v14 = *(v2 + 8 * v13 + 32);
LABEL_11:
          v15 = v14;

          goto LABEL_17;
        }

        __break(1u);
        goto LABEL_37;
      }

      v14 = MEMORY[0x1E694E2D0](v13, v2);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v1 = &_OBJC_LABEL_PROTOCOL___AMSBagProtocol;
  v7 = [v0 navigationController];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v7 navigationBar];

  v10 = [v9 items];
  if (!v10)
  {
    goto LABEL_16;
  }

  sub_1E5DEF738(0, &qword_1EE2D4648, 0x1E69DCCE0);
  v2 = sub_1E65E5F18();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    goto LABEL_6;
  }

LABEL_15:

LABEL_16:
  v15 = 0;
LABEL_17:
  v16 = [*&v0[qword_1EE2D9180] navigationItem];
  if (!v15)
  {
    goto LABEL_31;
  }

  sub_1E5DEF738(0, &qword_1EE2D4648, 0x1E69DCCE0);
  v17 = v0;
  v18 = sub_1E65E65A8();

  if ((v18 & 1) == 0)
  {
    return;
  }

  v19 = [*&v17[qword_1EE2D9180] navigationItem];
  v20 = [v19 standardAppearance];

  if (v20)
  {
    v21 = [v20 backgroundImage];

    if (v21)
    {
      [v21 size];
      v23 = v22;
      v24 = [v17 view];
      if (!v24)
      {
LABEL_40:
        __break(1u);
        return;
      }

      v25 = v24;
      v26 = floor(v23);
      [v24 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v70.origin.x = v28;
      v70.origin.y = v30;
      v70.size.width = v32;
      v70.size.height = v34;
      Width = CGRectGetWidth(v70);

      if (v26 == floor(Width))
      {
        return;
      }
    }
  }

  v36 = [*&v17[qword_1EE2D9180] navigationItem];
  v37 = [v36 standardAppearance];

  if (v37)
  {
    v38 = [v17 view];
    if (!v38)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v39 = v38;
    [v38 bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v71.origin.x = v41;
    v71.origin.y = v43;
    v71.size.width = v45;
    v71.size.height = v47;
    v48 = CGRectGetWidth(v71);
    v49 = [v17 view];
    if (!v49)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v50 = v49;
    [v49 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v72.origin.x = v52;
    v72.origin.y = v54;
    v72.size.width = v56;
    v72.size.height = v58;
    v59 = CGRectGetWidth(v72);
    v60 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v61 = swift_allocObject();
    *(v61 + 16) = v48;
    *(v61 + 24) = v59;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1E630B6B8;
    *(v62 + 24) = v61;
    aBlock[4] = sub_1E630B6C0;
    aBlock[5] = v62;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E630A48C;
    aBlock[3] = &block_descriptor_14;
    v63 = _Block_copy(aBlock);

    v64 = [v60 imageWithActions_];

    _Block_release(v63);
    LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

    if ((v60 & 1) == 0)
    {
      [v37 setBackgroundImage_];

      goto LABEL_28;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_28:
  v65 = [*&v17[qword_1EE2D9180] navigationItem];
  v16 = [v65 standardAppearance];

  if (!v16)
  {
    return;
  }

  v66 = [v17 v1[208]];
  if (v66)
  {
    v67 = v66;
    v68 = [v66 navigationBar];

    [v68 setStandardAppearance_];
  }

LABEL_31:
}

void sub_1E6309B54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  v8 = qword_1EE2D91A8;
  v9 = *(v4 + qword_1EE2D91A8);
  if (v9)
  {
    v24 = *(v4 + qword_1EE2D91A8);
  }

  else
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
    v11 = *(v7 + 88);
    v12 = type metadata accessor for HostingViewController.ContentScrollViewObserver(0, *(v7 + 80), v11, a4);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v10;
    v14[3] = v11;
    v14[4] = v13;
    v15 = objc_allocWithZone(v12);
    v18 = sub_1E6307F64(sub_1E630B6AC, v14, v16, v17);
    v19 = *(v5 + v8);
    *(v5 + v8) = v18;
    v24 = v18;

    v9 = 0;
  }

  v20 = v9;
  v21 = [a1 _isScrollViewScrollObserver_];

  if (v21)
  {
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      [Strong _removeScrollViewScrollObserver_];
    }

    [a1 _addScrollViewScrollObserver_];

    swift_unknownObjectWeakAssign();
  }
}

void sub_1E6309D40(void *a1)
{
  v1 = a1;
  sub_1E6309338();
}

void sub_1E6309D88(char a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  v3 = [*&v1[qword_1EE2D9180] navigationItem];
  [v3 setTitleView_];

  v4 = *&v1[qword_1EE2D9198];
  if (v4)
  {
    v5 = v4;
    [v5 removeFromSuperview];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DD5E0]) initWithContentView_];
    [v6 setClipsToBounds_];
    v7 = [*&v1[qword_1EE2D9180] navigationItem];
    [v7 _setBottomPalette_];
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1E65DF028();
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong contentOffset];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  sub_1E6309F30(v11);
}

void sub_1E6309F30(double a1)
{
  v2 = *(v1 + qword_1EE2D9120);
  if (v2)
  {
    if (a1 <= 0.0)
    {
      v6 = *(v1 + qword_1EE2D9120 + 8);
      v5 = v2;
    }

    else
    {
      v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v4 = v2;
      v5 = [v3 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      v6 = 0;
    }

    v7 = v5;
    sub_1E630A544(v5, v6);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    sub_1E630A544(v7, 0);
  }
}

void sub_1E630A024(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1E6309D88(a3);
}

void sub_1E630A078(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewIsAppearing_, a1 & 1);
  v3 = *&v1[qword_1EE2D9198];
  if (v3)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = v3;
      sub_1E65DC468();
    }
  }
}

void sub_1E630A128(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1E630A078(a3);
}

void sub_1E630A17C(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v5 setTintColor_];
  }
}

void sub_1E630A24C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1E630A17C(a3);
}

void sub_1E630A2A0(void *a1, double a2, CGFloat a3)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E65F3310;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 clearColor];
  v13 = [v12 CGColor];

  *(v7 + 40) = v13;
  type metadata accessor for CGColor(0);
  v14 = sub_1E65E5EF8();

  v15 = CGGradientCreateWithColors(DeviceRGB, v14, dbl_1F5FA8930);

  if (v15)
  {
    v16 = [a1 CGContext];
    v18.y = 0.0;
    v18.x = a2 * 0.5;
    v19.x = a2 * 0.5;
    v19.y = a3;
    CGContextDrawLinearGradient(v16, v15, v18, v19, 0);
  }
}

void sub_1E630A48C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1E630A4D8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [a1 contentOffset];
    sub_1E6309F30(v5);
  }
}

id sub_1E630A544(uint64_t a1, uint64_t a2)
{
  v5 = [v2 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setTintColor_];
  }

  *&v2[qword_1EE2D9130] = a2;

  return [v2 setNeedsStatusBarAppearanceUpdate];
}

double sub_1E630A5F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v21 = v3;
  sub_1E6259ACC(a1, ObjectType, &off_1F5FBCF98);
  if (v9)
  {
    v10 = v9;
    *(a3 + 24) = sub_1E5DEF738(0, &qword_1EE2D46A0, &off_1E8792438);
    *a3 = v10;
  }

  else
  {
    sub_1E630B63C(a2, &v21);
    v12 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      v13 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
      v14 = *(v12 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v16);
      v17 = sub_1E65E6BF8();
      (*(v14 + 8))(v16, v12);
      __swift_destroy_boxed_opaque_existential_1(&v21);
    }

    else
    {
      v17 = 0;
    }

    v20.receiver = v4;
    v20.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v20, sel_targetForAction_withSender_, a1, v17);
    swift_unknownObjectRelease();
    if (v18)
    {
      sub_1E65E6708();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    result = *&v21;
    v19 = v22;
    *a3 = v21;
    *(a3 + 16) = v19;
  }

  return result;
}

id sub_1E630A7E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1E65E6708();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v7 = a1;
  }

  sub_1E630A5F4(a3, v15, v16);

  sub_1E62FD0F8(v15);
  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_1E65E6BF8();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1E630A964(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1E630B60C();
}

uint64_t sub_1E630A9D4(uint64_t a1)
{
  sub_1E5E0BE48(a1 + qword_1EE2D9170);

  v2 = qword_1EE2D9160;
  v3 = sub_1E65DEEA8();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  MEMORY[0x1E694F2D0](a1 + qword_1EE2D9190);
}

uint64_t sub_1E630ABA4()
{
  sub_1E630B4A8();
}

char *sub_1E630ABD8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v64 = a8;
  v65 = a7;
  v66 = a5;
  v67 = a6;
  v72 = a2;
  v73 = a4;
  ObjectType = swift_getObjectType();
  v18 = *v15;
  v19 = *MEMORY[0x1E69E7D40];
  v20 = sub_1E65E43B8();
  MEMORY[0x1EEE9AC00](v20);
  v21 = &v15[qword_1EE2D9170];
  *(v21 + 1) = 0;
  v63 = v21;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v22 = *((v19 & v18) + 0x50);
  v68 = *((v19 & v18) + 0x58);
  v69 = v22;
  v24 = type metadata accessor for ScrollHostingController(0, v22, v68, v23);
  v27 = sub_1E5E1F174(a1, v24, v25, v26);
  *&v15[qword_1EE2D9180] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v70 = xmmword_1E65EB9E0;
  *(swift_allocObject() + 16) = xmmword_1E65EB9E0;
  v28 = v27;
  sub_1E65E4398();
  sub_1E65E43A8();
  sub_1E630B450(&qword_1EE2D4BC0, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70, MEMORY[0x1E69E6328]);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v72;
  v75 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v29 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_20:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v29 = sub_1E65E67C8();
  if (!v29)
  {
    goto LABEL_20;
  }

LABEL_3:
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  do
  {
    v32 = v30;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1E694E2D0](v32, a3);
      }

      else
      {
        if (v32 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v33 = *(a3 + 8 * v32 + 32);
      }

      v34 = v33;
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v32;
      if (v30 == v29)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v31 = v75;
  }

  while (v30 != v29);
LABEL_21:
  v61[0] = a13;
  v61[1] = a10;
  *&v15[qword_1EE2D9140] = v31;
  v35 = qword_1EE2D9160;
  v62 = sub_1E65DEEA8();
  v72 = *(v62 - 8);
  (*(v72 + 16))(&v15[v35], v73, v62);
  v36 = v66;
  v37 = v67;
  *&v15[qword_1EE2D9188] = v66;
  *&v15[qword_1EE2D9198] = v37;
  v38 = &v15[qword_1EE2D9120];
  v39 = v64;
  v40 = v65;
  *v38 = v65;
  *(v38 + 1) = v39;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v63 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v41 = &v15[qword_1EE2D9108];
  *v41 = v61[0];
  *(v41 + 1) = a14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  swift_allocObject();
  v42 = v40;

  v43 = v36;
  v44 = v37;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v45 = ObjectType;
  v74.receiver = v15;
  v74.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v74, sel_initWithNibName_bundle_, 0, 0);
  v47 = *&v46[qword_1EE2D9180];
  v48 = v46;
  v49 = [v47 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v50 = sub_1E65E5EF8();

  [v49 setRightBarButtonItems_];

  KeyPath = swift_getKeyPath();
  v61[-2] = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v53 = swift_allocObject();
  v54 = v68;
  v53[2] = v69;
  v53[3] = v54;
  v53[4] = v52;
  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0, MEMORY[0x1E699D8F8]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v55 = swift_allocObject();
  *(v55 + 16) = v70;
  v56 = sub_1E65E3B98();
  v57 = MEMORY[0x1E69DC0A0];
  *(v55 + 32) = v56;
  *(v55 + 40) = v57;
  v58 = sub_1E65E3BA8();
  v59 = MEMORY[0x1E69DC2B0];
  *(v55 + 48) = v58;
  *(v55 + 56) = v59;
  *(swift_allocObject() + 16) = v45;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v72 + 8))(v73, v62);
  return v48;
}

uint64_t sub_1E630B450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E630B4E8(uint64_t a1)
{
  v1 = [*(a1 + qword_1EE2D9180) navigationItem];
  [v1 _setBottomPaletteNeedsUpdate];
}

void sub_1E630B548()
{
  *(v0 + qword_1EE2D9170 + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + qword_1EE2D91A8) = 0;
  *(v0 + qword_1EE2D9130) = 0;
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E630B63C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1E630B7AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC10Blackbeard18BlurViewController_blurView;
  v8 = [objc_opt_self() effectWithStyle_];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v10 = sub_1E65E6508();
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC10Blackbeard18BlurViewController_snapshot] = a2;
  *&v3[OBJC_IVAR____TtC10Blackbeard18BlurViewController_viewController] = a1;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1E630B96C()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = result;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor_];

  v6 = *&v1[OBJC_IVAR____TtC10Blackbeard18BlurViewController_snapshot];
  if (v6)
  {
    v7 = v6;
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [v1 view];
    if (!result)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v8 = result;
    [result addSubview_];
  }

  result = [v1 view];
  if (!result)
  {
    goto LABEL_18;
  }

  v9 = result;
  [result addSubview_];

  v10 = *&v1[OBJC_IVAR____TtC10Blackbeard18BlurViewController_viewController];
  result = [v10 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  v12 = [v4 clearColor];
  [v11 setBackgroundColor_];

  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = result;
  result = [v10 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  [v13 addSubview_];

  [v1 addChildViewController_];
  [v10 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782A0, &qword_1E65FBB28);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E65EA8E0;
  if (!v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *(v15 + 32) = v17;
    result = [v1 view];
    if (result)
    {
      v18 = result;
      v19 = sub_1E65E6518();

      *(v15 + 40) = v19;
      result = [v10 view];
      if (result)
      {
        v20 = result;
        result = [v1 view];
        if (result)
        {
          v21 = result;
          sub_1E6094C88();
          v22 = sub_1E65E6518();

          *(v15 + 48) = v22;
          sub_1E65E6408();
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = [v1 view];
  if (result)
  {
    v16 = result;
    v17 = sub_1E65E6518();

    goto LABEL_13;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1E630BE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v3 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D7848();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075900, &qword_1E65F21B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1E65E5C28();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v34 = v2;
  v18 = sub_1E65D8E68();
  v20 = v19;
  v37 = v18;
  v38 = v19;
  v22 = v21 & 1;
  v39 = v21 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782A8, &qword_1E65FBB38);
  sub_1E65D7FB8();
  sub_1E5F87058(v18, v20, v22);
  if (v36 == 2)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v23 = v35;
  }

  else
  {
    if (v36)
    {
      v24 = 1;
    }

    else
    {
      sub_1E65E5BA8();
      v24 = 0;
    }

    v23 = v35;
    (*(v12 + 56))(v10, v24, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v17, v10, v11);
      (*(v12 + 16))(v15, v17, v11);
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v27 = [objc_opt_self() bundleForClass_];
      (*(v30 + 16))(v7, v32, v31);
      sub_1E65E5D48();
      sub_1E65D8E58();
      sub_1E65E33E8();
      (*(v12 + 8))(v17, v11);
      v25 = 0;
      goto LABEL_9;
    }
  }

  sub_1E6132BD8(v10);
  v25 = 1;
LABEL_9:
  v28 = sub_1E65E33F8();
  return (*(*(v28 - 8) + 56))(v23, v25, 1, v28);
}

uint64_t sub_1E630C2AC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E630FCD4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E5F8711C(v4, v5);
}

uint64_t sub_1E630C340(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E630FCC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 120);
  v9 = *(v7 + 128);
  *(v7 + 120) = v6;
  *(v7 + 128) = v5;
  sub_1E5F8711C(v3, v4);
  return sub_1E5F9169C(v8, v9);
}

uint64_t AppSceneCoordinator.onRequestApplicationTermination.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  sub_1E5F8711C(v1, *(v0 + 128));
  return v1;
}

uint64_t AppSceneCoordinator.onRequestApplicationTermination.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  v6 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return sub_1E5F9169C(v5, v6);
}

uint64_t sub_1E630C4F4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 136);
  v5 = *(v3 + 144);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E630FB20;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E5F8711C(v4, v5);
}

uint64_t sub_1E630C588(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E630FB18;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 136);
  v9 = *(v7 + 144);
  *(v7 + 136) = v6;
  *(v7 + 144) = v5;
  sub_1E5F8711C(v3, v4);
  return sub_1E5F9169C(v8, v9);
}

uint64_t AppSceneCoordinator.onRequestApplicationDeactivation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  sub_1E5F8711C(v1, *(v0 + 144));
  return v1;
}

uint64_t AppSceneCoordinator.onRequestApplicationDeactivation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  v6 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return sub_1E5F9169C(v5, v6);
}

uint64_t AppSceneCoordinator.__allocating_init(dependencies:)(uint64_t a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = swift_allocObject();
  AppSceneCoordinator.init(dependencies:journalRotator:)(a1, v4);
  return v2;
}

uint64_t AppSceneCoordinator.__allocating_init(dependencies:journalRotator:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AppSceneCoordinator.init(dependencies:journalRotator:)(a1, a2);
  return v4;
}

uint64_t AppSceneCoordinator.init(dependencies:journalRotator:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 108) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782B0, &unk_1E65FBB40);
  sub_1E65D7F18();
  sub_1E5DF599C(v17, v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782B8, &qword_1E660CD20);
  sub_1E65D7F18();
  sub_1E5DF599C(v17, v2 + 64);
  sub_1E65D7F18();
  *(v2 + 104) = v17[0];
  sub_1E630CA50(a2, v17);
  type metadata accessor for AppCoordinator(0);
  swift_allocObject();
  v6 = sub_1E5DED3A0(a1, v17);

  sub_1E5DFE50C(a2, &qword_1ED0782C0, &qword_1E65FBB50);
  *(v3 + 56) = v6;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = (v6 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_onDeactivateApplication);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = sub_1E630F670;
  v8[1] = v7;

  sub_1E5F9169C(v9, v10);

  v11 = *(v3 + 56);
  v12 = swift_allocObject();
  swift_weakInit();

  v13 = (v11 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_onTerminateApplication);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = sub_1E630F678;
  v13[1] = v12;

  sub_1E5F9169C(v14, v15);

  return v3;
}

uint64_t sub_1E630CA50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782C0, &qword_1E65FBB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E630CAC0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + 136);
    if (v3)
    {
      v4 = *(v2 + 144);
      sub_1E5F8711C(*(v2 + 136), v4);

      v3(v5);
      return sub_1E5F9169C(v3, v4);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E630CB68(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + 120);
    if (v3)
    {
      v4 = *(v2 + 128);
      sub_1E5F8711C(*(v2 + 120), v4);

      v3(v5);
      return sub_1E5F9169C(v3, v4);
    }

    else
    {
    }
  }

  return result;
}

uint64_t AppSceneCoordinator.activate(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1E65E6058();
  v2[4] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E630CCA8, v4, v3);
}

uint64_t sub_1E630CCA8()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1E630CDCC;
  v3 = *(v0 + 16);

  return AppCoordinator.activate(with:)(v3);
}

uint64_t sub_1E630CDCC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1E5FD0AD0;
  }

  else
  {
    v5 = sub_1E5FA1DB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t AppSceneCoordinator.routeSceneConnectionOptions(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1E65E6058();
  v2[4] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E630CFA0, v4, v3);
}

uint64_t sub_1E630CFA0()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v0[7] = *(v2 + 56);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E630D0D0;

  return AppCoordinator.onAppLaunch(connectionOptions:)((v0 + 10), v1);
}

uint64_t sub_1E630D0D0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1E630D2B0;
  }

  else
  {
    v5 = sub_1E630D20C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E630D20C()
{

  if (!*(v0 + 80))
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), *(*(v0 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24));
    sub_1E65E57E8();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E630D2B0()
{

  v1 = *(v0 + 8);

  return v1();
}

void *AppSceneCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_1E5F9169C(v0[15], v0[16]);
  sub_1E5F9169C(v0[17], v0[18]);
  return v0;
}

uint64_t AppSceneCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_1E5F9169C(v0[15], v0[16]);
  sub_1E5F9169C(v0[17], v0[18]);

  return swift_deallocClassInstance();
}

uint64_t AppSceneCoordinator.openURLContexts(_:source:)(uint64_t a1)
{
  sub_1E63775C0(a1);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = "Blackbeard/AppSceneCoordinator.swift";
  *(v4 + 24) = 36;
  *(v4 + 32) = 2;
  *(v4 + 40) = 82;
  *(v4 + 48) = &unk_1E65FBB70;
  *(v4 + 56) = v3;

  return sub_1E65DACA8();
}

uint64_t sub_1E630D494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3[4] = swift_task_alloc();
  v4 = sub_1E65D74E8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E630D58C, 0, 0);
}

uint64_t sub_1E630D58C()
{
  v1 = sub_1E6059B14(v0[2]);
  v0[8] = v1;
  if (v1)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v2 = v0[3];
    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    sub_1E65E3B18();
    v0[9] = *(v2 + 56);
    sub_1E65E6058();
    v0[10] = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E630D778, v5, v4);
  }

  else
  {
    v6 = sub_1E65E5218();
    sub_1E630F72C();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69CD6E8], v6);
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E630D778()
{
  v1 = *(v0 + 64);

  *(v0 + 88) = [v1 URL];

  return MEMORY[0x1EEE6DFA0](sub_1E630D800, 0, 0);
}

uint64_t sub_1E630D800()
{
  v1 = v0[11];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  sub_1E65D7478();

  (*(v2 + 56))(v4, 1, 1, v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E630D8F0;
  v6 = v0[7];
  v7 = v0[4];
  v8 = MEMORY[0x1E69E7CD0];

  return AppCoordinator.routeURL(_:referrerURL:sourceApplication:annotation:)(v6, v7, 0, 0, v8);
}

uint64_t sub_1E630D8F0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 104) = v0;

  sub_1E5DFE50C(v5, &qword_1ED072340, &qword_1E65EA410);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = sub_1E630DB0C;
  }

  else
  {
    v6 = sub_1E630DA94;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E630DA94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E630DB0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AppSceneCoordinator.continueUserActivity(_:source:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  if (sub_1E65DB738())
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_1E65DB728();
  }

  v4 = [a1 activityType];
  v5 = sub_1E65E5C78();
  v7 = v6;

  if (v5 == sub_1E65E5C78() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E65E6C18();

    if ((v10 & 1) == 0)
    {
      v11 = sub_1E65E5218();
      sub_1E630F72C();
      v12 = swift_allocError();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69CD6F0], v11);
      *(swift_allocObject() + 16) = v12;

      return sub_1E65DACB8();
    }
  }

  __swift_project_boxed_opaque_existential_1((*(v2 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), *(*(v2 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24));
  sub_1E65E5828();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = "Blackbeard/AppSceneCoordinator.swift";
  *(v16 + 24) = 36;
  *(v16 + 32) = 2;
  *(v16 + 40) = 102;
  *(v16 + 48) = &unk_1E65FBB80;
  *(v16 + 56) = v15;

  v17 = a1;

  return sub_1E65DACA8();
}

uint64_t sub_1E630DE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E630DE58, 0, 0);
}

uint64_t sub_1E630DE58()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1E630DF80;
  v3 = *(v0 + 24);
  v4 = MEMORY[0x1E69E7CD0];

  return AppCoordinator.routeUserActivity(_:annotation:)(v3, v4);
}

uint64_t sub_1E630DF80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void AppSceneCoordinator.scene(_:with:willConnectTo:options:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  os_unfair_lock_lock((v5 + 108));
  if (!*(v5 + 112))
  {
    *(v5 + 112) = 1;
    v12 = sub_1E65E60A8();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_1E65E6058();

    v13 = a1;
    v14 = a2;
    v15 = a4;
    v16 = sub_1E65E6048();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v5;
    v17[5] = v13;
    v17[6] = v14;
    v17[7] = v15;
    sub_1E6059EAC(0, 0, v11, &unk_1E65FBB98, v17);
  }

  os_unfair_lock_unlock((v5 + 108));
}

uint64_t sub_1E630E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_1E65E6058();
  v7[7] = sub_1E65E6048();
  v9 = sub_1E65E5FC8();
  v7[8] = v9;
  v7[9] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E630E294, v9, v8);
}

uint64_t sub_1E630E294()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  v0[10] = __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v0[11] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v0[12] = v3;
  v0[13] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E630E3A0, v3, v2);
}

uint64_t sub_1E630E3A0()
{
  v1 = v0[2];
  sub_1E65E3B18();
  v0[14] = *(v1 + 56);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1E630E484;
  v3 = v0[3];

  return AppCoordinator.activate(with:)(v3);
}

uint64_t sub_1E630E484()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1E630E8B8;
  }

  else
  {
    v5 = sub_1E630E5C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E630E5C0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E630E628, 0, 0);
}

uint64_t sub_1E630E628(uint64_t a1)
{
  *(v1 + 136) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E630E6B4, v3, v2);
}

uint64_t sub_1E630E6B4()
{
  v1 = v0[14];
  v2 = v0[4];

  [v2 setRootViewController_];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1E630E77C;
  v4 = v0[5];

  return AppSceneCoordinator.routeSceneConnectionOptions(_:)(v4);
}

uint64_t sub_1E630E77C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1E630EA60;
  }

  else
  {
    v5 = sub_1E630E980;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E630E8B8()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E630E91C, v1, v2);
}

uint64_t sub_1E630E91C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E630E980()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[2];

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), *(v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24));
  sub_1E65E5808();
  os_unfair_lock_lock((v3 + 108));
  sub_1E630EAC4((v3 + 112));
  os_unfair_lock_unlock((v3 + 108));
  if (!v1)
  {
    v4 = v0[1];

    v4();
  }
}

uint64_t sub_1E630EA60()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E630EAC4(_BYTE *a1)
{
  if (*a1 == 1)
  {
    *a1 = 2;
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v1 = sub_1E65E3B68();
    __swift_project_value_buffer(v1, qword_1EE2EA2A0);
    v2 = sub_1E65E3B48();
    v3 = sub_1E65E6328();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      v6 = sub_1E65E5CE8();
      v8 = sub_1E5DFD4B0(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1E5DE9000, v2, v3, "Unexpected State for switching to an activated state: %{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x1E694F1C0](v5, -1, -1);
      MEMORY[0x1E694F1C0](v4, -1, -1);
    }
  }
}

uint64_t sub_1E630EC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E630ECD4, v6, v5);
}

uint64_t sub_1E630ECD4()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v0[6] = *(v1 + 56);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E630EDF0;

  return AppCoordinator.onAppActive()();
}

uint64_t sub_1E630EDF0()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1E630EFC8;
  }

  else
  {
    v5 = sub_1E630EF2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E630EF2C()
{
  v1 = *(v0 + 48);

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24));
  sub_1E65E5808();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E630EFC8()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall AppSceneCoordinator.sceneDidDisconnect(_:)(UIScene *a1)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  __swift_project_boxed_opaque_existential_1((*(v1 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), *(*(v1 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24));
  sub_1E65E57F8();
}

Swift::Void __swiftcall AppSceneCoordinator.sceneDidEnterBackground(_:)(UIScene *a1)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  __swift_project_boxed_opaque_existential_1((*(v1 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), *(*(v1 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24));
  sub_1E65E5818();
}

uint64_t sub_1E630F1E4()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  sub_1E5F8711C(v1, *(v0 + 128));
  return v1;
}

uint64_t sub_1E630F234(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  v6 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return sub_1E5F9169C(v5, v6);
}

uint64_t sub_1E630F2D8()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  sub_1E5F8711C(v1, *(v0 + 144));
  return v1;
}

uint64_t sub_1E630F328(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  v6 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return sub_1E5F9169C(v5, v6);
}

uint64_t sub_1E630F3D0()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  __swift_project_boxed_opaque_existential_1((*(v0 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), *(*(v0 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24));
  return sub_1E65E57F8();
}

uint64_t sub_1E630F4AC()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  __swift_project_boxed_opaque_existential_1((*(v0 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), *(*(v0 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24));
  return sub_1E65E5818();
}

uint64_t sub_1E630F584(uint64_t a1)
{
  sub_1E63775C0(a1);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = "Blackbeard/AppSceneCoordinator.swift";
  *(v4 + 24) = 36;
  *(v4 + 32) = 2;
  *(v4 + 40) = 82;
  *(v4 + 48) = &unk_1E65FBD10;
  *(v4 + 56) = v3;

  return sub_1E65DACA8();
}

uint64_t sub_1E630F680(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E630D494(a1, v5, v4);
}

unint64_t sub_1E630F72C()
{
  result = qword_1ED0782C8;
  if (!qword_1ED0782C8)
  {
    sub_1E65E5218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0782C8);
  }

  return result;
}

uint64_t sub_1E630F7A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E630DE38(a1, v5, v4);
}

uint64_t sub_1E630F84C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E630E1F4(a1, v4, v5, v6, v7, v9, v8);
}

void _s10Blackbeard19AppSceneCoordinatorC20sceneDidBecomeActiveyySo7UISceneCF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  os_unfair_lock_lock((v0 + 108));
  if (*(v0 + 112) == 2)
  {
    v5 = sub_1E65E60A8();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_1E65E6058();

    v6 = sub_1E65E6048();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E85E0];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v1;
    sub_1E6059EAC(0, 0, v4, &unk_1E65FBD20, v7);
  }

  os_unfair_lock_unlock(v1 + 27);
}

unint64_t sub_1E630FAC4()
{
  result = qword_1ED0782D8;
  if (!qword_1ED0782D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0782D8);
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1E630FB68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E630D494(a1, v5, v4);
}

uint64_t sub_1E630FC14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E630EC3C(a1, v4, v5, v6);
}

uint64_t sub_1E630FCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v32 = a2;
  v33 = a3;
  v23 = a2;
  v24 = a3;
  v26 = MEMORY[0x1E69E3B38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v8 = &v22 - v7;
  v9 = sub_1E65E3DE8();
  v28 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  sub_1E5E1EC14(*a1, *(a1 + 8), a2, a3);
  v22 = *(a1 + 72);
  v15 = swift_allocObject();
  v16 = *(a1 + 48);
  v15[3] = *(a1 + 32);
  v15[4] = v16;
  v15[5] = *(a1 + 64);
  v17 = *(a1 + 16);
  v15[1] = *a1;
  v15[2] = v17;
  swift_unknownObjectRetain();

  v32 = v23;
  v33 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = OpaqueTypeMetadata2;
  sub_1E65E4828();

  (*(v27 + 8))(v8, v19);
  v30 = OpaqueTypeConformance2;
  v31 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  v20 = *(v28 + 8);
  v20(v12, v9);
  sub_1E5FEE4C8();
  return (v20)(v14, v9);
}

uint64_t sub_1E630FFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  *&v47 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  *&v57[0] = v10;
  *(&v57[0] + 1) = v11;
  v53 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v14 = &v40 - v13;
  v15 = sub_1E65E3DE8();
  v44 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v40 - v19;
  v51 = sub_1E65E4148();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v40 - v20;
  v21 = *a1;
  if (*a1)
  {
    v22 = *(a1 + 72);
    v40 = *(a1 + 8);
    v23 = v40;
    v45 = *(a1 + 24);
    v46 = *(a1 + 40);
    v47 = *(a1 + 56);
    v24 = *(a1 + 16);
    v25 = *(a1 + 48);
    v57[2] = *(a1 + 32);
    v57[3] = v25;
    v57[4] = *(a1 + 64);
    v57[0] = *a1;
    v57[1] = v24;
    sub_1E618A994(v57, v56);
    v26 = v53;
    sub_1E5E1EC14(v21, v23, a2, v53);
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    *(v27 + 24) = v40;
    *(v27 + 40) = v45;
    *(v27 + 56) = v46;
    *(v27 + 72) = v47;
    v41 = v22;
    *(v27 + 88) = v22;
    swift_unknownObjectRetain();
    v48 = v45;

    v56[0] = a2;
    v56[1] = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E65E4828();

    (*(v43 + 8))(v14, OpaqueTypeMetadata2);
    v54 = OpaqueTypeConformance2;
    v29 = MEMORY[0x1E69805D0];
    v55 = MEMORY[0x1E69805D0];
    WitnessTable = swift_getWitnessTable();
    v31 = v42;
    sub_1E5FEE4C8();
    v32 = *(v44 + 8);
    v32(v18, v15);
    sub_1E5FEE4C8();
    v33 = v49;
    sub_1E62DFC6C(v18, v15, a2, WitnessTable, v53);

    swift_unknownObjectRelease();
    v32(v18, v15);
    v32(v31, v15);
  }

  else
  {
    v34 = v53;
    sub_1E5FEE4C8();
    sub_1E5FEE4C8();
    *&v57[0] = a2;
    *(&v57[0] + 1) = v34;
    v62 = swift_getOpaqueTypeConformance2();
    v29 = MEMORY[0x1E69805D0];
    v63 = MEMORY[0x1E69805D0];
    v35 = swift_getWitnessTable();
    v33 = v49;
    sub_1E62DFB74(v7, v15, a2, v35, v34);
    v36 = *(v47 + 8);
    v36(v7, a2);
    v36(v9, a2);
  }

  v37 = v53;
  *&v57[0] = a2;
  *(&v57[0] + 1) = v53;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v29;
  v58 = swift_getWitnessTable();
  v59 = v37;
  v38 = v51;
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  return (*(v50 + 8))(v33, v38);
}

uint64_t sub_1E631073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v8 = (*(a4 + 32) + **(a4 + 32));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1E5F9D470;

  return v8();
}

uint64_t sub_1E6310844(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1E65E6058();
  swift_unknownObjectRetain();

  v9 = sub_1E65E6048();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = *(a1 + 3);
  *(v10 + 64) = *(a1 + 2);
  *(v10 + 80) = v12;
  *(v10 + 96) = *(a1 + 4);
  v13 = *(a1 + 1);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v13;
  sub_1E6059EAC(0, 0, v7, a3, v10);
}

uint64_t sub_1E63109C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v8 = (*(a4 + 32) + **(a4 + 32));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1E5F9DFE8;

  return v8();
}

uint64_t sub_1E6310AC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_1E65E50A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E5088();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E6310BA4()
{
  v0 = sub_1E65E50A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E5098();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1E6310D00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63109C0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6310DE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E631073C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6310EA8(uint64_t a1)
{
  v1 = sub_1E65E5108();
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782E0, &qword_1E65FBE18);

  sub_1E65E50F8();
  return sub_1E65E5188();
}

uint64_t sub_1E6310F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  v8 = sub_1E65E1858();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 1u)
  {
    if (a3)
    {
      *a4 = a1;
    }

    else
    {
      *a4 = a1;
    }

    sub_1E65E17E8();
  }

  else if (a3 == 2)
  {
    *a4 = a1;
    sub_1E65E17E8();
  }

  else
  {
    if (a3 == 3)
    {
      v13 = MEMORY[0x1E699F100];
      if ((a1 & 1) == 0)
      {
        v13 = MEMORY[0x1E699F108];
      }

      v14 = v10;
      (*(v9 + 104))(v12, *v13, v10);
      (*(v9 + 32))(a4, v12, v14);
      sub_1E65E17E8();
      return swift_storeEnumTagMultiPayload();
    }

    *a4 = a1;
    a4[1] = a2;
    sub_1E65E17E8();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6311130@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a1;
  v93 = a2;
  v100 = a3;
  v4 = sub_1E65D7D18();
  v99 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65D72D8();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v81 - v9;
  v96 = sub_1E65DC488();
  v83 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v81 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073550, &qword_1E65ED510);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v98 = &v81 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v89 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v81 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v22 = sub_1E65DAC98();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1E65E1B68();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v95 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E65D8BB8();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E65DA0B8();
  v87 = *(v30 - 8);
  v88 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v94 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E65D7C18();
  if (v34 != -1)
  {
    if (v34)
    {
      v101 = v32;
      v99 = v11;
      sub_1E65D7C88();
      sub_1E65D8BA8();
      sub_1E625B0B0(v29);
      sub_1E65DA098();
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65E1B58();
      v82 = *(v23 + 8);
      v82(v25, v22);
      v104 = sub_1E65DA0A8();
      v105 = v35;
      sub_1E6311C30();
      sub_1E65E1748();
      v36 = v86;
      sub_1E65D7C48();
      if ((*(v23 + 48))(v36, 1, v22) == 1)
      {
        sub_1E609595C(v36);
        v37 = 1;
        v38 = v98;
      }

      else
      {
        sub_1E65DAC38();
        sub_1E65DC2D8();
        sub_1E65DAC78();
        sub_1E65D74C8();

        v38 = v98;
        sub_1E65E1B58();
        v82(v36, v22);
        v37 = 0;
      }

      v55 = v99;
      (*(v84 + 56))(v38, v37, 1, v85);
      v56 = sub_1E65D7CA8();
      v58 = v96;
      if (!v57)
      {
        v59 = v83;
        (*(v83 + 104))(v55, *MEMORY[0x1E699DC58], v96);
        v60 = sub_1E65DC478();
        v62 = v61;
        (*(v59 + 8))(v55, v58);
        v57 = v62;
        v56 = v60;
      }

      v104 = v56;
      v105 = v57;
      sub_1E65E1748();
      sub_1E65D7BF8();
      v63 = MEMORY[0x1E6940B70](v101);
      v65 = v64;
      if (v63 != MEMORY[0x1E6940B70](4) || v65 != v66)
      {
        v67 = sub_1E65E6C18();

        if (v67)
        {
          goto LABEL_19;
        }

        v77 = MEMORY[0x1E6940B70](v101);
        v79 = v78;
        if (v77 != MEMORY[0x1E6940B70](5) || v79 != v80)
        {
          sub_1E65E6C18();
        }
      }

LABEL_19:
      v68 = sub_1E65D7D08();
      v69 = v92;
      v70 = v93;
      sub_1E63C4134(v92, v93, v68, v91);

      v71 = sub_1E65D7BE8();
      sub_1E63C4134(v69, v70, v71, v90);

      v72 = v100;
      sub_1E65E1B98();
      (*(v87 + 8))(v94, v88);
      v73 = 0;
      goto LABEL_23;
    }

    sub_1E5F87158(v32, v33, v34);
  }

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v39 = sub_1E65E3B68();
  __swift_project_value_buffer(v39, qword_1EE2EA2A0);
  v40 = v99;
  v41 = v101;
  (*(v99 + 2))(v101, v3, v4);
  v42 = sub_1E65E3B48();
  v43 = sub_1E65E6338();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v107 = v45;
    *v44 = 136315138;
    v46 = sub_1E65D7C18();
    if (v48 == -1)
    {
      v53 = 0xE300000000000000;
      v54 = 7104878;
    }

    else
    {
      v104 = v46;
      v105 = v47;
      v106 = v48 & 1;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
      sub_1E65D7F98();
      v52 = v50;
      v40 = v99;
      sub_1E5F87158(v49, v52, v51);
      v54 = v102;
      v53 = v103;
    }

    v40[1](v101, v4);
    v74 = sub_1E5DFD4B0(v54, v53, &v107);

    *(v44 + 4) = v74;
    _os_log_impl(&dword_1E5DE9000, v42, v43, "[Onboarding] Dropping modality tile with unknown kind: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1E694F1C0](v45, -1, -1);
    MEMORY[0x1E694F1C0](v44, -1, -1);
  }

  else
  {

    v40[1](v41, v4);
  }

  v73 = 1;
  v72 = v100;
LABEL_23:
  v75 = sub_1E65E1BA8();
  return (*(*(v75 - 8) + 56))(v72, v73, 1, v75);
}

unint64_t sub_1E6311C30()
{
  result = qword_1EE2D6B60;
  if (!qword_1EE2D6B60)
  {
    sub_1E65DC488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6B60);
  }

  return result;
}

uint64_t sub_1E6311C88(uint64_t a1)
{
  v46 = sub_1E65DAEF8();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65E1088();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v41 = v7;
    v33[1] = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601CE38(0, v8, 0);
    v49 = v50;
    v10 = a1 + 56;
    result = sub_1E65E6748();
    v11 = v3;
    v12 = result;
    v13 = 0;
    v42 = v5;
    v43 = v11;
    v39 = v11 + 8;
    v40 = v11 + 16;
    v37 = a1;
    v38 = v5 + 32;
    v34 = a1 + 64;
    v35 = v8;
    v36 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 36);
      v47 = v13;
      v48 = v16;
      v17 = v43;
      v18 = *(a1 + 48) + *(v43 + 72) * v12;
      v19 = v45;
      v20 = v46;
      (*(v43 + 16))(v45, v18, v46);
      sub_1E65DAED8();
      sub_1E65DAEE8();
      v21 = v41;
      sub_1E65E1078();
      (*(v17 + 8))(v19, v20);
      v22 = v49;
      v50 = v49;
      v24 = *(v49 + 16);
      v23 = *(v49 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601CE38((v23 > 1), v24 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v49 = v22;
      result = (*(v42 + 32))(v22 + v25 + *(v42 + 72) * v24, v21, v44);
      a1 = v37;
      v14 = 1 << *(v37 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v36;
      v26 = *(v36 + 8 * v15);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v48 != *(v37 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v34 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1E5F87098(v12, v48, 0);
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v12, v48, 0);
      }

LABEL_4:
      v13 = v47 + 1;
      v12 = v14;
      if (v47 + 1 == v35)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E631207C(uint64_t a1)
{
  v2 = v1;
  v43 = sub_1E65D9538();
  v4 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E65E0D28();
  v6 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1E601CDF4(0, v8, 0);
    v50 = a1 + 56;
    v51 = v52;
    result = sub_1E65E6748();
    v10 = result;
    v11 = 0;
    v36 = v4 + 8;
    v37 = v4 + 16;
    v34 = a1;
    v35 = v6 + 32;
    v32 = a1 + 64;
    v33 = v8;
    v38 = v6;
    v39 = v4;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v50 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v44 = v11;
      v46 = *(a1 + 36);
      v47 = 1 << v10;
      v15 = v42;
      v14 = v43;
      (*(v4 + 16))(v42, *(a1 + 48) + *(v4 + 72) * v10, v43);
      v16 = sub_1E65D94F8();
      v48 = v17;
      v49 = v16;
      sub_1E65D9508();
      sub_1E65D9528();
      v18 = sub_1E65D9518();
      sub_1E6314220(v18);
      v45 = v2;

      v19 = v40;
      v4 = v39;
      sub_1E65E0D18();
      (*(v4 + 8))(v15, v14);
      v20 = v51;
      v52 = v51;
      v22 = *(v51 + 16);
      v21 = *(v51 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1E601CDF4((v21 > 1), v22 + 1, 1);
        v20 = v52;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v51 = v20;
      result = (*(v38 + 32))(v20 + v23 + *(v38 + 72) * v22, v19, v41);
      a1 = v34;
      v12 = 1 << *(v34 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v24 = *(v50 + 8 * v13);
      if ((v24 & v47) == 0)
      {
        goto LABEL_24;
      }

      if (v46 != *(v34 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v10 & 0x3F));
      if (v25)
      {
        v12 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v2 = v45;
      }

      else
      {
        v26 = v13 << 6;
        v27 = v13 + 1;
        v28 = (v32 + 8 * v13);
        v2 = v45;
        while (v27 < (v12 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1E5F87098(v10, v46, 0);
            v12 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v10, v46, 0);
      }

LABEL_4:
      v11 = v44 + 1;
      v10 = v12;
      if (v44 + 1 == v33)
      {
        return v51;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63124A8(uint64_t a1)
{
  v41 = sub_1E65D8368();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E65E0FD8();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v30 = v1;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1E601CDB0(0, v8, 0);
    v44 = a1 + 56;
    v45 = v46;
    result = sub_1E65E6748();
    v10 = result;
    v11 = 0;
    v37 = v5;
    v38 = v3;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v33 = a1;
    v34 = v5 + 32;
    v31 = a1 + 64;
    v32 = v8;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v44 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v15 = *(a1 + 36);
      v42 = v11;
      v43 = v15;
      v16 = v38;
      v17 = v40;
      v18 = v41;
      (*(v38 + 16))(v40, *(a1 + 48) + *(v38 + 72) * v10, v41);
      sub_1E65D8328();
      sub_1E65D8358();
      sub_1E65D8338();
      sub_1E65D8348();
      sub_1E65E0F88();
      (*(v16 + 8))(v17, v18);
      v19 = v45;
      v46 = v45;
      v21 = *(v45 + 16);
      v20 = *(v45 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E601CDB0((v20 > 1), v21 + 1, 1);
        v19 = v46;
      }

      *(v19 + 16) = v21 + 1;
      v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v45 = v19;
      result = (*(v37 + 32))(v19 + v22 + *(v37 + 72) * v21, v7, v39);
      a1 = v33;
      v12 = 1 << *(v33 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v23 = *(v44 + 8 * v14);
      if ((v23 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v43 != *(v33 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v10 & 0x3F));
      if (v24)
      {
        v12 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v32;
      }

      else
      {
        v25 = v14 << 6;
        v26 = v14 + 1;
        v13 = v32;
        v27 = (v31 + 8 * v14);
        while (v26 < (v12 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1E5F87098(v10, v43, 0);
            v12 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v10, v43, 0);
      }

LABEL_4:
      v11 = v42 + 1;
      v10 = v12;
      if (v42 + 1 == v13)
      {
        return v45;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6312898(uint64_t a1)
{
  v46 = sub_1E65DAF28();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65E10D8();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v41 = v7;
    v33[1] = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601CD6C(0, v8, 0);
    v49 = v50;
    v10 = a1 + 56;
    result = sub_1E65E6748();
    v11 = v3;
    v12 = result;
    v13 = 0;
    v42 = v5;
    v43 = v11;
    v39 = v11 + 8;
    v40 = v11 + 16;
    v37 = a1;
    v38 = v5 + 32;
    v34 = a1 + 64;
    v35 = v8;
    v36 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 36);
      v47 = v13;
      v48 = v16;
      v17 = v43;
      v18 = *(a1 + 48) + *(v43 + 72) * v12;
      v19 = v45;
      v20 = v46;
      (*(v43 + 16))(v45, v18, v46);
      sub_1E65DAF08();
      sub_1E65DAF18();
      v21 = v41;
      sub_1E65E10C8();
      (*(v17 + 8))(v19, v20);
      v22 = v49;
      v50 = v49;
      v24 = *(v49 + 16);
      v23 = *(v49 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601CD6C((v23 > 1), v24 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v49 = v22;
      result = (*(v42 + 32))(v22 + v25 + *(v42 + 72) * v24, v21, v44);
      a1 = v37;
      v14 = 1 << *(v37 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v36;
      v26 = *(v36 + 8 * v15);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v48 != *(v37 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v34 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1E5F87098(v12, v48, 0);
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v12, v48, 0);
      }

LABEL_4:
      v13 = v47 + 1;
      v12 = v14;
      if (v47 + 1 == v35)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6312C8C(uint64_t a1)
{
  v42 = sub_1E65D91F8();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v35 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E65E0E08();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v25 = v1;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1E601CD28(0, v8, 0);
  v9 = v43;
  v41 = a1 + 56;
  result = sub_1E65E6748();
  v11 = result;
  v12 = 0;
  v31 = v3 + 8;
  v32 = v3 + 16;
  v29 = v7;
  v30 = v5 + 32;
  v26 = a1 + 64;
  v27 = v8;
  v33 = v5;
  v28 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    if ((*(v41 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v38 = 1 << v11;
    v39 = v11 >> 6;
    v14 = *(a1 + 36);
    v36 = v12;
    v37 = v14;
    v15 = v35;
    (*(v3 + 16))(v35, *(a1 + 48) + *(v3 + 72) * v11, v42);
    v40 = sub_1E65D91A8();
    sub_1E65D91C8();
    sub_1E65D91B8();
    sub_1E65D91D8();
    sub_1E65D91E8();
    sub_1E65E0DD8();
    (*(v3 + 8))(v15, v42);
    v43 = v9;
    v17 = *(v9 + 16);
    v16 = *(v9 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1E601CD28((v16 > 1), v17 + 1, 1);
      v9 = v43;
    }

    *(v9 + 16) = v17 + 1;
    result = (*(v33 + 32))(v9 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v17, v29, v34);
    a1 = v28;
    v13 = 1 << *(v28 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v18 = *(v41 + 8 * v39);
    if ((v18 & v38) == 0)
    {
      goto LABEL_23;
    }

    if (v37 != *(v28 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v11 & 0x3F));
    if (v19)
    {
      v13 = __clz(__rbit64(v19)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v39 << 6;
      v21 = v39 + 1;
      v22 = (v26 + 8 * v39);
      while (v21 < (v13 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1E5F87098(v11, v37, 0);
          v13 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v11, v37, 0);
    }

LABEL_4:
    v12 = v36 + 1;
    v11 = v13;
    if (v36 + 1 == v27)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6313090(uint64_t a1)
{
  v43 = sub_1E65D9D28();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E65E1038();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x1E69E7CC0];
    v33 = a1;
    sub_1E601CCE4(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_1E65E6748();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_1E6364CE8();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1E601CCE4((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1E5F87098(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_1E5F87098(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
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
  }

  return result;
}

uint64_t sub_1E6313454(uint64_t a1)
{
  v46 = sub_1E65D7A68();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65E0BC8();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v41 = v7;
    v33[1] = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601CCA0(0, v8, 0);
    v49 = v50;
    v10 = a1 + 56;
    result = sub_1E65E6748();
    v11 = v3;
    v12 = result;
    v13 = 0;
    v42 = v5;
    v43 = v11;
    v39 = v11 + 8;
    v40 = v11 + 16;
    v37 = a1;
    v38 = v5 + 32;
    v34 = a1 + 64;
    v35 = v8;
    v36 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 36);
      v47 = v13;
      v48 = v16;
      v17 = v43;
      v18 = *(a1 + 48) + *(v43 + 72) * v12;
      v19 = v45;
      v20 = v46;
      (*(v43 + 16))(v45, v18, v46);
      sub_1E65D7A48();
      sub_1E65D7A58();
      v21 = v41;
      sub_1E65E0BB8();
      (*(v17 + 8))(v19, v20);
      v22 = v49;
      v50 = v49;
      v24 = *(v49 + 16);
      v23 = *(v49 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601CCA0((v23 > 1), v24 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v49 = v22;
      result = (*(v42 + 32))(v22 + v25 + *(v42 + 72) * v24, v21, v44);
      a1 = v37;
      v14 = 1 << *(v37 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v36;
      v26 = *(v36 + 8 * v15);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v48 != *(v37 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v34 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1E5F87098(v12, v48, 0);
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v12, v48, 0);
      }

LABEL_4:
      v13 = v47 + 1;
      v12 = v14;
      if (v47 + 1 == v35)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6313848(uint64_t a1)
{
  v37 = sub_1E65D7B18();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E65E0C18();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v26 = v1;
  v44 = MEMORY[0x1E69E7CC0];
  sub_1E601CC5C(0, v8, 0);
  v9 = v44;
  v43 = a1 + 56;
  result = sub_1E65E6748();
  v11 = result;
  v12 = 0;
  v32 = v3 + 8;
  v33 = v3 + 16;
  v30 = a1;
  v31 = v5 + 32;
  v27 = a1 + 64;
  v28 = v8;
  v34 = v5;
  v29 = v7;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    if ((*(v43 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v40 = 1 << v11;
    v41 = v11 >> 6;
    v14 = *(a1 + 36);
    v38 = v12;
    v39 = v14;
    v15 = v36;
    v16 = v37;
    (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v11, v37);
    v42 = sub_1E65D7AE8();
    sub_1E65D7AF8();
    sub_1E65D7B08();
    sub_1E65E0C08();
    (*(v3 + 8))(v15, v16);
    v44 = v9;
    v18 = *(v9 + 16);
    v17 = *(v9 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1E601CC5C((v17 > 1), v18 + 1, 1);
      v9 = v44;
    }

    *(v9 + 16) = v18 + 1;
    result = (*(v34 + 32))(v9 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v18, v29, v35);
    a1 = v30;
    v13 = 1 << *(v30 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v19 = *(v43 + 8 * v41);
    if ((v19 & v40) == 0)
    {
      goto LABEL_23;
    }

    if (v39 != *(v30 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v11 & 0x3F));
    if (v20)
    {
      v13 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v41 << 6;
      v22 = v41 + 1;
      v23 = (v27 + 8 * v41);
      while (v22 < (v13 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1E5F87098(v11, v39, 0);
          v13 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v11, v39, 0);
    }

LABEL_4:
    v12 = v38 + 1;
    v11 = v13;
    if (v38 + 1 == v28)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6313C54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65E0F18();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v70 = sub_1E65D8B68();
  v11 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E65E0F68();
  v13 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v49 = v10;
    v57 = v15;
    v74 = MEMORY[0x1E69E7CC0];
    v52 = v16;
    sub_1E601CC18(0, v16, 0);
    v71 = v74;
    v68 = a1 + 56;
    result = sub_1E65E6748();
    v18 = 0;
    v56 = v11 + 16;
    v51 = v5;
    v19 = v13;
    v20 = (v5 + 8);
    v58 = v19;
    v54 = v19 + 32;
    v55 = (v11 + 8);
    v48 = a1 + 64;
    v59 = a1;
    v53 = v11;
    v50 = v5 + 16;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v68 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_27;
      }

      v65 = 1 << result;
      v66 = result >> 6;
      v62 = v18;
      v64 = *(a1 + 36);
      v22 = *(a1 + 48);
      v23 = *(v11 + 72);
      v67 = result;
      (*(v11 + 16))(v69, v22 + v23 * result, v70);
      v24 = sub_1E65D8B58();
      v25 = sub_1E6314624(v24);
      v63 = v2;

      v26 = *(v25 + 16);
      v27 = sub_1E6314D98();
      v73 = MEMORY[0x1E694DC60](v26, v4, v27);
      if (v26)
      {
        v28 = *(v51 + 80);
        v61 = v25;
        v29 = v25 + ((v28 + 32) & ~v28);
        v72 = *(v51 + 72);
        v30 = *(v51 + 16);
        v31 = v20;
        v32 = v49;
        do
        {
          v30(v8, v29, v4);
          sub_1E60F864C(v32, v8);
          (*v31)(v32, v4);
          v29 += v72;
          --v26;
        }

        while (v26);

        v20 = v31;
      }

      else
      {
      }

      v33 = v69;
      sub_1E65D8B28();
      v72 = v34;
      sub_1E65D8B38();
      sub_1E65D8B48();
      v35 = v57;
      sub_1E65E0F58();
      (*v55)(v33, v70);
      v36 = v71;
      v74 = v71;
      v38 = *(v71 + 16);
      v37 = *(v71 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1E601CC18((v37 > 1), v38 + 1, 1);
        v36 = v74;
      }

      *(v36 + 16) = v38 + 1;
      v39 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v71 = v36;
      (*(v58 + 32))(v36 + v39 + *(v58 + 72) * v38, v35, v60);
      a1 = v59;
      v21 = 1 << *(v59 + 32);
      result = v67;
      if (v67 >= v21)
      {
        goto LABEL_28;
      }

      v40 = *(v68 + 8 * v66);
      if ((v40 & v65) == 0)
      {
        goto LABEL_29;
      }

      if (v64 != *(v59 + 36))
      {
        goto LABEL_30;
      }

      v41 = v40 & (-2 << (v67 & 0x3F));
      if (v41)
      {
        v21 = __clz(__rbit64(v41)) | v67 & 0x7FFFFFFFFFFFFFC0;
        v2 = v63;
      }

      else
      {
        v42 = v66 << 6;
        v43 = v66 + 1;
        v44 = (v48 + 8 * v66);
        v2 = v63;
        while (v43 < (v21 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            sub_1E5F87098(v67, v64, 0);
            v21 = __clz(__rbit64(v45)) + v42;
            goto LABEL_4;
          }
        }

        sub_1E5F87098(v67, v64, 0);
      }

LABEL_4:
      v18 = v62 + 1;
      result = v21;
      v11 = v53;
      if (v62 + 1 == v52)
      {
        return v71;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6314220(uint64_t a1)
{
  v37 = sub_1E65D7F08();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E65E0E98();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v26 = v1;
  v44 = MEMORY[0x1E69E7CC0];
  sub_1E601CE7C(0, v8, 0);
  v9 = v44;
  v43 = a1 + 56;
  result = sub_1E65E6748();
  v11 = result;
  v12 = 0;
  v32 = v3 + 8;
  v33 = v3 + 16;
  v30 = a1;
  v31 = v5 + 32;
  v27 = a1 + 64;
  v28 = v8;
  v34 = v5;
  v29 = v7;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    if ((*(v43 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v40 = 1 << v11;
    v41 = v11 >> 6;
    v14 = *(a1 + 36);
    v38 = v12;
    v39 = v14;
    v15 = v36;
    v16 = v37;
    (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v11, v37);
    v42 = sub_1E65D7ED8();
    sub_1E65D7EE8();
    sub_1E65D7EF8();
    sub_1E65E0E88();
    (*(v3 + 8))(v15, v16);
    v44 = v9;
    v18 = *(v9 + 16);
    v17 = *(v9 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1E601CE7C((v17 > 1), v18 + 1, 1);
      v9 = v44;
    }

    *(v9 + 16) = v18 + 1;
    result = (*(v34 + 32))(v9 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v18, v29, v35);
    a1 = v30;
    v13 = 1 << *(v30 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v19 = *(v43 + 8 * v41);
    if ((v19 & v40) == 0)
    {
      goto LABEL_23;
    }

    if (v39 != *(v30 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v11 & 0x3F));
    if (v20)
    {
      v13 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v41 << 6;
      v22 = v41 + 1;
      v23 = (v27 + 8 * v41);
      while (v22 < (v13 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1E5F87098(v11, v39, 0);
          v13 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v11, v39, 0);
    }

LABEL_4:
    v12 = v38 + 1;
    v11 = v13;
    if (v38 + 1 == v28)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6314624(uint64_t a1)
{
  v55 = sub_1E65D9A78();
  v3 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = v42 - v9;
  v10 = sub_1E65DAC98();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1E65E0F18();
  v13 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v57 = v10;
    v50 = v15;
    v42[1] = v1;
    v62 = MEMORY[0x1E69E7CC0];
    sub_1E601CEC0(0, v16, 0);
    v61 = v62;
    v58 = a1 + 56;
    result = sub_1E65E6748();
    v18 = result;
    v19 = 0;
    v48 = (v3 + 8);
    v49 = v11 + 16;
    v51 = v13;
    v52 = a1;
    v46 = v13 + 32;
    v47 = (v11 + 8);
    v43 = a1 + 64;
    v44 = v16;
    v45 = v11;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
    {
      v22 = v18 >> 6;
      if ((*(v58 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_24;
      }

      v56 = *(a1 + 36);
      (*(v11 + 16))(v59, *(a1 + 48) + *(v11 + 72) * v18, v57);
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      v23 = v7;
      sub_1E65D74C8();

      v24 = v54;
      sub_1E65DAC48();
      v25 = sub_1E65D9A68();
      v27 = v26;
      v29 = v28;
      (*v48)(v24, v55);
      if ((v29 & 1) == 0)
      {
        sub_1E5F87058(v25, v27, 0);
      }

      v30 = v50;
      sub_1E65E0F08();
      (*v47)(v59, v57);
      v31 = v61;
      v62 = v61;
      v33 = *(v61 + 16);
      v32 = *(v61 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1E601CEC0((v32 > 1), v33 + 1, 1);
        v31 = v62;
      }

      *(v31 + 16) = v33 + 1;
      v34 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v61 = v31;
      result = (*(v51 + 32))(v31 + v34 + *(v51 + 72) * v33, v30, v53);
      a1 = v52;
      v20 = 1 << *(v52 + 32);
      if (v18 >= v20)
      {
        goto LABEL_25;
      }

      v35 = *(v58 + 8 * v22);
      if ((v35 & (1 << v18)) == 0)
      {
        goto LABEL_26;
      }

      if (v56 != *(v52 + 36))
      {
        goto LABEL_27;
      }

      v36 = v35 & (-2 << (v18 & 0x3F));
      if (v36)
      {
        v20 = __clz(__rbit64(v36)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v7 = v23;
        v21 = v44;
      }

      else
      {
        v37 = v22 << 6;
        v38 = v22 + 1;
        v39 = (v43 + 8 * v22);
        v7 = v23;
        v21 = v44;
        while (v38 < (v20 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = sub_1E5F87098(v18, v56, 0);
            v20 = __clz(__rbit64(v40)) + v37;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v18, v56, 0);
      }

LABEL_4:
      ++v19;
      v18 = v20;
      v11 = v45;
      if (v19 == v21)
      {
        return v61;
      }
    }

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

  return result;
}

uint64_t sub_1E6314B98(uint64_t a1)
{
  v1 = sub_1E65D93D8();
  v2 = sub_1E6311C88(v1);

  sub_1E600CE74(v2);

  v3 = sub_1E65D93A8();
  v4 = sub_1E631207C(v3);

  sub_1E600D010(v4);

  v5 = sub_1E65D9438();
  v6 = sub_1E63124A8(v5);

  sub_1E600D1AC(v6);

  v7 = sub_1E65D9448();
  v8 = sub_1E6312898(v7);

  sub_1E600D348(v8);

  v9 = sub_1E65D9408();
  v10 = sub_1E6312C8C(v9);

  sub_1E600D4E4(v10);

  v11 = sub_1E65D93B8();
  v12 = sub_1E6313090(v11);

  sub_1E600D680(v12);

  v13 = sub_1E65D93E8();
  v14 = sub_1E6313454(v13);

  sub_1E600D81C(v14);

  v15 = sub_1E65D93F8();
  v16 = sub_1E6313848(v15);

  sub_1E600D9B8(v16);

  v17 = sub_1E65D9418();
  v18 = sub_1E6313C54(v17);

  sub_1E600DB54(v18);

  return sub_1E65E0CF8();
}

unint64_t sub_1E6314D98()
{
  result = qword_1ED075438;
  if (!qword_1ED075438)
  {
    sub_1E65E0F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075438);
  }

  return result;
}

uint64_t sub_1E6314DF0@<X0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for RemoteBrowsingService();
  Description = v2[-1].Description;
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = v3;
  v48 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &KeyPath - v5;
  v6 = type metadata accessor for CatalogService();
  v7 = v6[-1].Description;
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782E8, &qword_1E65FBE20);
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v43 = v13;
  v44 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &KeyPath - v14;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v15 = sub_1E65E3B68();
  __swift_project_value_buffer(v15, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v16 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v41 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v17 = type metadata accessor for AppEnvironment(0);
  v42 = v17[25];
  v18 = v17[12];
  v19 = v17[34];
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  swift_weakInit();
  (v7[2])(&KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v18, v6);
  sub_1E5DF650C(v16 + v19, v54);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (v7[4])(v23 + v21, v9, v6);
  *(v23 + v22) = v20;
  sub_1E5DF599C(v54, v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));

  v24 = v51;
  sub_1E65E4E08();
  v25 = v53;
  v26 = v45;
  v53[3] = v45;
  v25[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  v28 = v46;
  v29 = *(v46 + 16);
  v29(boxed_opaque_existential_1, v24, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E65EA670;
  v31 = sub_1E65E60A8();
  (*(*(v31 - 8) + 56))(v52, 1, 1, v31);
  v33 = v48;
  v32 = Description;
  v34 = v50;
  Description[2](v48, v41 + v42, v50);
  v35 = v44;
  v29(v44, v24, v26);
  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v37 = (v47 + *(v28 + 80) + v36) & ~*(v28 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  (v32)[4]((v38 + v36), v33, v34);
  (*(v28 + 32))(v38 + v37, v35, v26);
  *(v30 + 32) = sub_1E6059EAC(0, 0, v52, &unk_1E65FBE60, v38);
  result = (*(v28 + 8))(v51, v26);
  v53[5] = v30;
  return result;
}

uint64_t sub_1E6315390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65DA248();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6315454, 0, 0);
}

uint64_t sub_1E6315454()
{
  v1 = CatalogService.fetchRemoteNavigationEditorialContent.getter();
  v0[9] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1E6315550;
  v4 = v0[8];

  return v6(v4);
}

uint64_t sub_1E6315550()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1E6315780;
  }

  else
  {
    v2 = sub_1E6315680;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6315680()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  v10 = *(v0 + 32);
  v5 = sub_1E65DA228();
  (*(v2 + 8))(v1, v3);
  v6 = swift_task_alloc();
  *(v6 + 16) = v10;
  v7 = sub_1E6406778(sub_1E63164E0, v6, v5);

  *v4 = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E6315780()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63157E4(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 16) & ~*(Description + 80);
  v6 = (Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E6315390(a1, v1 + v5, v8, v1 + v7);
}

uint64_t sub_1E6315904@<X0>(void *a3@<X2>, uint64_t x8_0@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1E65D7848();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    v15 = v9;
    sub_1E65E4EC8();

    v9 = v15;

    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_1E65D77C8();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_1E5DFE50C(v8, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  sub_1E6442628(v12, a3, x8_0);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E6315B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6315D04, 0, 0);
}

uint64_t sub_1E6315D04()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6315E00;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6315E00()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6315F18, 0, 0);
}

uint64_t sub_1E6315F18()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6315FF4;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6315FF4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63160F0, 0, 0);
}

uint64_t sub_1E63160F0()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6316240, v6, v5);
  }
}

uint64_t sub_1E6316240()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782E8, &qword_1E65FBE20);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E63162C4, 0, 0);
}

uint64_t sub_1E63162C4()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6315FF4;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E6316384(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782E8, &qword_1E65FBE20) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6315B98(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63164FC()
{
  v0 = sub_1E65E07B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65E2EB8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  sub_1E65E0798();
  sub_1E65E07A8();
  sub_1E65E2EA8();
  (*(v1 + 8))(v3, v0);
  sub_1E65E0678();
  sub_1E65E0708();
  return sub_1E65E2F48();
}

unint64_t sub_1E63166B0()
{
  result = qword_1ED0782F0;
  if (!qword_1ED0782F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0782F0);
  }

  return result;
}

uint64_t sub_1E6316704(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1E5DF650C(a3, v19);
  sub_1E65E6058();

  sub_1E5FA9D20(a4, a5);
  v14 = sub_1E65E6048();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  sub_1E5DF599C(v19, v15 + 32);
  *(v15 + 72) = a1;
  *(v15 + 80) = a2;
  *(v15 + 88) = a4;
  *(v15 + 96) = a5;
  sub_1E6059EAC(0, 0, v12, &unk_1E65FBF58, v15);
}

uint64_t sub_1E631687C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 26) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 64) = type metadata accessor for RouteSource(0);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = type metadata accessor for RouteDestination(0);
  *(v8 + 88) = swift_task_alloc();
  sub_1E65E6058();
  *(v8 + 96) = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  *(v8 + 104) = v10;
  *(v8 + 112) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E631697C, v10, v9);
}

uint64_t sub_1E631697C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = v6[3];
  v13 = v6[4];
  v9 = *(v0 + 26);
  __swift_project_boxed_opaque_existential_1(v6, v8);
  swift_storeEnumTagMultiPayload();
  *v2 = v7;
  *(v2 + 8) = v5;
  *(v2 + 16) = v4;
  *(v2 + 24) = v9;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E6094E10(v3, v2 + *(v1 + 20));

  sub_1E5FA9D20(v4, v9);
  sub_1E613DBE4(v3, type metadata accessor for RouteSource);
  *(v2 + *(v1 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = v4;
  *(v0 + 24) = v9;
  sub_1E600F5B0((v0 + 25));
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_1E6316B14;
  v11 = *(v0 + 88);

  return RoutingContext.presentDestination(_:style:priority:)(v11, (v0 + 16), (v0 + 25), v8, v13);
}

uint64_t sub_1E6316B14()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 128) = v0;

  sub_1E613DBE4(v3, type metadata accessor for RouteDestination);
  v4 = *(v2 + 104);
  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1E6316CD8;
  }

  else
  {
    v6 = sub_1E6316C60;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E6316C60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6316CD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6316D50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E631687C(a1, v4, v5, v1 + 32, v6, v7, v8, v9);
}

uint64_t sub_1E6316E2C(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E6316EC4, v3, v2);
}

uint64_t sub_1E6316EC4()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AccountService.makeSubscriptionManagementViewController.getter();
  *(v0 + 48) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E614B548;

  return v5();
}

uint64_t sub_1E631700C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782F8, &qword_1E65FBF68);
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v16 - v2;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1E65DEC58();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E65DE918();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *v0;
  sub_1E5E1D7C4(v0, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1E5E1E180(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for AppComposer);
  sub_1E65DEC48();
  sub_1E65DE908();
  type metadata accessor for AppFeature(0);
  sub_1E631830C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E631830C(&qword_1ED078300, MEMORY[0x1E699CCB0], MEMORY[0x1E699CCA8]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v14 = sub_1E65E4F08();
  (*(v17 + 8))(v3, v18);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_1E63173C8()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  active = RemoteBrowsingService.requireActiveWorkoutPlan.getter();
  *(v0 + 24) = v2;
  v5 = (active + *active);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E60102EC;

  return v5();
}

uint64_t sub_1E63174DC()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E63173A8(v0 + v3);
}

uint64_t sub_1E63175A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = type metadata accessor for BrowsingIdentity(0);
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v40 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v36 - v19;
  v21 = sub_1E65D7848();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v20);
  sub_1E5DFE50C(v17, &qword_1ED071F78, &unk_1E65EA3F0);
  v25 = *(v22 + 48);
  v26 = v25(v20, 1, v21);
  v37 = v24;
  if (v26 == 1)
  {
    sub_1E65D77C8();
    if (v25(v20, 1, v21) != 1)
    {
      sub_1E5DFE50C(v20, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  v36[1] = sub_1E65E2358();
  v36[0] = sub_1E65E2388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  sub_1E65E4C98();
  sub_1E60EE7BC(v9);
  sub_1E5DFE50C(v4, &qword_1ED071E58, &qword_1E65EA150);
  v27 = v39;
  v28 = *(v38 + 48);
  v29 = v28(v9, 1, v39);
  v30 = v40;
  if (v29 == 1)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    if (v28(v9, 1, v27) != 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED071E60, &qword_1E65EA158);
    }
  }

  else
  {
    sub_1E5E1E180(v9, v14, type metadata accessor for BrowsingIdentity);
  }

  sub_1E6317C24();
  v38 = v32;
  sub_1E5E00674(v14, type metadata accessor for BrowsingIdentity);
  sub_1E65E4C98();
  v33 = v41;
  sub_1E60EE7BC(v41);
  sub_1E5DFE50C(v4, &qword_1ED071E58, &qword_1E65EA150);
  if (v28(v33, 1, v27) == 1)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    (*(*(v34 - 8) + 56))(v30, 1, 1, v34);
    if (v28(v33, 1, v27) != 1)
    {
      sub_1E5DFE50C(v33, &qword_1ED071E60, &qword_1E65EA158);
    }
  }

  else
  {
    sub_1E5E1E180(v33, v30, type metadata accessor for BrowsingIdentity);
  }

  sub_1E6317F34();
  sub_1E5E00674(v30, type metadata accessor for BrowsingIdentity);
  return sub_1E65DE898();
}

uint64_t sub_1E6317C24()
{
  v1 = v0;
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RemoteParticipantScope(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  sub_1E5E1D7C4(v1, v11, type metadata accessor for BrowsingIdentity);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
  {
    sub_1E5E00674(v11, type metadata accessor for BrowsingIdentity);
    return 0;
  }

  else
  {
    v20 = *(v18 + 48);
    sub_1E5E1E180(v11, v17, type metadata accessor for RemoteParticipantScope);
    v21 = sub_1E65DA2A8();
    (*(*(v21 - 8) + 8))(&v11[v20], v21);
    sub_1E5E1D7C4(v17, v15, type metadata accessor for RemoteParticipantScope);
    v22 = *(v3 + 32);
    v22(v6, v15, v2);
    v22(v8, v6, v2);
    v23 = sub_1E65D8DC8();
    (*(v3 + 8))(v8, v2);
    sub_1E5E00674(v17, type metadata accessor for RemoteParticipantScope);
    return v23;
  }
}

uint64_t sub_1E6317F34()
{
  v1 = v0;
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RemoteParticipantScope(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  sub_1E5E1D7C4(v1, v11, type metadata accessor for BrowsingIdentity);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
  {
    sub_1E5E00674(v11, type metadata accessor for BrowsingIdentity);
    return 2;
  }

  v20 = *(v18 + 48);
  sub_1E5E1E180(v11, v17, type metadata accessor for RemoteParticipantScope);
  v21 = sub_1E65DA2A8();
  (*(*(v21 - 8) + 8))(&v11[v20], v21);
  sub_1E5E1D7C4(v17, v15, type metadata accessor for RemoteParticipantScope);
  v22 = *(v3 + 32);
  v22(v6, v15, v2);
  v22(v8, v6, v2);
  v23 = sub_1E65D8D88();
  (*(v3 + 8))(v8, v2);
  if (v23 == 4)
  {
    sub_1E5E00674(v17, type metadata accessor for RemoteParticipantScope);
  }

  else
  {
    v24 = sub_1E65DA3A8();
    v25 = sub_1E65DA3A8();
    sub_1E5E00674(v17, type metadata accessor for RemoteParticipantScope);
    if (v24 == v25)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1E631828C()
{
  sub_1E65DE878();
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  sub_1E65E2368();
  sub_1E65DE888();
  return sub_1E65E2398();
}

uint64_t sub_1E631830C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6318354@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  LODWORD(v69) = a1;
  v72 = a2;
  v67 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v2 = MEMORY[0x1EEE9AC00](v67);
  v60 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v59 = (&v58 - v4);
  v5 = sub_1E65D7268();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1E65D7348();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - v9;
  v11 = sub_1E65D72D8();
  v71 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1E65DFB98();
  v13 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v58 - v17;
  v19 = sub_1E65DFA88();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v58 - v24;
  sub_1E65DF928();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v26 = &qword_1ED0758C8;
    v27 = &qword_1E65F1FD0;
    v28 = v18;
  }

  else
  {
    sub_1E6318D78(v18, v25, MEMORY[0x1E699D4A0]);
    sub_1E6318DE0(v25, v23);
    (*(v13 + 32))(v15, v23, v70);
    sub_1E65DF848();
    if ((*(v71 + 48))(v10, 1, v11) != 1)
    {
      (*(v71 + 32))(v68, v10, v11);
      v69 = type metadata accessor for ActionButtonDescriptor(0);
      v37 = v72 + *(v69 + 20);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
      v59 = (v37 + *(v38 + 48));
      v60 = *(v38 + 64);
      v39 = v61;
      sub_1E65D7338();
      v73 = sub_1E65E44A8();
      sub_1E608F9E4();
      sub_1E65D7358();
      v40 = v65;
      v41 = v66;
      v42 = v63;
      (*(v65 + 104))(v63, *MEMORY[0x1E69686E8], v66);
      sub_1E6258850();
      v58 = v11;
      v43 = v68;
      sub_1E65D73C8();
      (*(v40 + 8))(v42, v41);
      (*(v62 + 8))(v39, v64);
      v44 = sub_1E65DFB68();
      v45 = v59;
      *v59 = v44;
      v45[1] = v46;
      sub_1E65DFB78();
      swift_storeEnumTagMultiPayload();
      v47 = v72;
      sub_1E65D76E8();
      (*(v71 + 8))(v43, v58);
      (*(v13 + 8))(v15, v70);
      sub_1E6318E44(v25);
      return (*(*(v69 - 8) + 56))(v47, 0, 1, v69);
    }

    (*(v13 + 8))(v15, v70);
    sub_1E6318E44(v25);
    v26 = &qword_1ED072D90;
    v27 = &qword_1E66040F0;
    v28 = v10;
  }

  sub_1E5DFE50C(v28, v26, v27);
  v29 = sub_1E65DAE38();
  if (v29 != sub_1E65DAE38())
  {
    goto LABEL_20;
  }

  v30 = sub_1E65DF878();
  if (v30 <= 3)
  {
    if (v30 > 1 || !v30)
    {
      goto LABEL_20;
    }

    v49 = sub_1E65DF8C8();
    v51 = v50;
    v52 = byte_1E65FBF82[sub_1E65DF878()];
    v53 = v59;
    goto LABEL_18;
  }

  if (v30 <= 5)
  {
    if (v30 != 4)
    {
LABEL_20:
      v57 = type metadata accessor for ActionButtonDescriptor(0);
      v35 = *(*(v57 - 8) + 56);
      v36 = v72;
      v56 = 1;
      return v35(v36, v56, 1, v57);
    }

    v49 = sub_1E65DF8C8();
    v51 = v54;
    v52 = byte_1E65FBF82[sub_1E65DF878()];
    v53 = v60;
LABEL_18:
    *v53 = v49;
    *(v53 + 8) = v51;
    *(v53 + 16) = v52;
    swift_storeEnumTagMultiPayload();
    v55 = v72;
    sub_1E65D76E8();
    v31 = type metadata accessor for ActionButtonDescriptor(0);
    sub_1E6318D78(v53, v55 + *(v31 + 20), type metadata accessor for ActionButtonDescriptor.Kind);
    v35 = *(*(v31 - 8) + 56);
    v36 = v55;
    goto LABEL_19;
  }

  if (v30 == 6 || v30 == 7)
  {
    goto LABEL_20;
  }

  v31 = type metadata accessor for ActionButtonDescriptor(0);
  v32 = v72;
  v33 = v72 + *(v31 + 20);
  *v33 = sub_1E65DF8C8();
  *(v33 + 8) = v34;
  *(v33 + 16) = 12;
  swift_storeEnumTagMultiPayload();
  sub_1E65D76E8();
  v35 = *(*(v31 - 8) + 56);
  v36 = v32;
LABEL_19:
  v56 = 0;
  v57 = v31;
  return v35(v36, v56, 1, v57);
}

uint64_t sub_1E6318BB8@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DAE38();
  if (v6 == sub_1E65DAE38() && sub_1E65DF878() == 8)
  {
    v7 = sub_1E65DF8C8();
    v9 = v8;
    v10 = byte_1E65FBF82[sub_1E65DF878()];
    *v5 = v7;
    *(v5 + 1) = v9;
    v5[16] = v10;
    swift_storeEnumTagMultiPayload();
    sub_1E65D76E8();
    v11 = type metadata accessor for ActionButtonDescriptor(0);
    sub_1E6318D78(v5, a2 + *(v11 + 20), type metadata accessor for ActionButtonDescriptor.Kind);
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for ActionButtonDescriptor(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_1E6318D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6318DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DFA88();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6318E44(uint64_t a1)
{
  v2 = sub_1E65DFA88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6318EA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for AppComposer(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  sub_1E65E5148();
  v14 = sub_1E65E5138();
  sub_1E5E1DEAC(v2, v13);
  v15 = *(v4 + 80);
  v16 = ((v15 + 32) & ~v15) + v5;
  v43 = (v15 + 32) & ~v15;
  v41 = v16;
  v17 = swift_allocObject();
  v40 = &unk_1E65FBFB8;
  *(v17 + 16) = &unk_1E65FBFB8;
  *(v17 + 24) = 0;
  sub_1E5E1FA80(v13, v17 + ((v15 + 32) & ~v15));
  *(v17 + v16) = 0;
  v18 = v17 + (v16 & 0xFFFFFFFFFFFFFFF8);
  v39 = sub_1E6172524;
  *(v18 + 8) = sub_1E6172524;
  *(v18 + 16) = 0;
  v19 = (v17 + (((v16 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v20 = MEMORY[0x1E69AB380];
  *v19 = v14;
  v19[1] = v20;
  v21 = v14;
  v22 = v46;
  v23 = v11;
  sub_1E5E1DEAC(v46, v11);
  v24 = (v15 + 48) & ~v15;
  v25 = v24 + v5;
  v26 = (v24 + v5) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v40;
  v27[2] = v40;
  v27[3] = 0;
  v27[4] = v21;
  v27[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v23, v27 + v24);
  *(v27 + v25) = 0;
  v29 = v27 + v26;
  v30 = v39;
  *(v29 + 1) = v39;
  *(v29 + 2) = 0;
  v31 = v22;
  v32 = v44;
  sub_1E5E1DEAC(v31, v44);
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = 0;
  v33[4] = v21;
  v33[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v32, v33 + v24);
  v34 = v33 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v34 = v30;
  *(v34 + 1) = 0;
  v34[16] = 0;
  v35 = v45;
  sub_1E5E1DEAC(v46, v45);
  v36 = swift_allocObject();
  *(v36 + 16) = v28;
  *(v36 + 24) = 0;
  sub_1E5E1FA80(v35, v36 + v43);
  result = swift_retain_n();
  v38 = v42;
  *v42 = v21;
  v38[1] = MEMORY[0x1E69AB380];
  v38[2] = &unk_1E65EB918;
  v38[3] = v17;
  v38[4] = &unk_1E65FA770;
  v38[5] = v27;
  v38[6] = &unk_1E65EB920;
  v38[7] = v33;
  v38[8] = &unk_1E65FA780;
  v38[9] = v36;
  return result;
}

uint64_t sub_1E63191FC(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6319340, 0, 0);
}

uint64_t sub_1E6319340()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *MEMORY[0x1E69CBD98];
  v7 = sub_1E65D8F38();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = sub_1E65D74E8();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = sub_1E65D9908();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = sub_1E65D9F88();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_1E65D7A28();
  v12 = sub_1E65D7A38();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E63195A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for PageMetricsClick(0);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v6 = sub_1E65E1668();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63196A0, 0, 0);
}

uint64_t sub_1E63196A0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699E908] || v4 == *MEMORY[0x1E699E918])
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  else
  {
    if (v4 == *MEMORY[0x1E699E928])
    {
      v8 = v0[6];
      v9 = v0[3];
      v10 = v0[4];
      v11 = sub_1E65D9D78();
      (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
      v12 = v10[5];
      v13 = *MEMORY[0x1E69CBA88];
      v14 = sub_1E65D8C68();
      (*(*(v14 - 8) + 104))(v8 + v12, v13, v14);
      v15 = v10[6];
      v16 = sub_1E65D74E8();
      (*(*(v16 - 8) + 56))(v8 + v15, 1, 1, v16);
      v17 = v10[8];
      v18 = sub_1E65DA208();
      (*(*(v18 - 8) + 56))(v8 + v17, 1, 1, v18);
      v19 = v10[14];
      v20 = *MEMORY[0x1E69CBCC8];
      v21 = sub_1E65D8F28();
      (*(*(v21 - 8) + 104))(v8 + v19, v20, v21);
      v22 = v10[15];
      v23 = sub_1E65D9908();
      (*(*(v23 - 8) + 56))(v8 + v22, 1, 1, v23);
      v24 = MEMORY[0x1E69E7CC0];
      v25 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v8 + v10[7]) = v24;
      v26 = (v8 + v10[9]);
      *v26 = 0;
      v26[1] = 0;
      v27 = (v8 + v10[10]);
      *v27 = 0;
      v27[1] = 0;
      *(v8 + v10[11]) = v25;
      v28 = (v8 + v10[12]);
      *v28 = 0;
      v28[1] = 0;
      *(v8 + v10[13]) = xmmword_1E65FBFA0;
      v54 = (*(v9 + 48) + **(v9 + 48));
      v29 = swift_task_alloc();
      v0[10] = v29;
      *v29 = v0;
      v29[1] = sub_1E6319E5C;
      v30 = v0[6];
LABEL_14:

      return v54(v30);
    }

    if (v4 == *MEMORY[0x1E699E930])
    {
      v32 = v0[4];
      v31 = v0[5];
      v33 = v0[3];
      v34 = sub_1E65D9D78();
      (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
      v35 = v32[5];
      v36 = *MEMORY[0x1E69CBA90];
      v37 = sub_1E65D8C68();
      (*(*(v37 - 8) + 104))(v31 + v35, v36, v37);
      v38 = v32[6];
      v39 = sub_1E65D74E8();
      (*(*(v39 - 8) + 56))(v31 + v38, 1, 1, v39);
      v40 = v32[8];
      v41 = sub_1E65DA208();
      (*(*(v41 - 8) + 56))(v31 + v40, 1, 1, v41);
      v42 = v32[14];
      v43 = *MEMORY[0x1E69CBCC8];
      v44 = sub_1E65D8F28();
      (*(*(v44 - 8) + 104))(v31 + v42, v43, v44);
      v45 = v32[15];
      v46 = sub_1E65D9908();
      (*(*(v46 - 8) + 56))(v31 + v45, 1, 1, v46);
      v47 = MEMORY[0x1E69E7CC0];
      v48 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v31 + v32[7]) = v47;
      v49 = (v31 + v32[9]);
      *v49 = 0;
      v49[1] = 0;
      v50 = (v31 + v32[10]);
      *v50 = 0;
      v50[1] = 0;
      *(v31 + v32[11]) = v48;
      v51 = (v31 + v32[12]);
      *v51 = 0;
      v51[1] = 0;
      *(v31 + v32[13]) = xmmword_1E65FBF90;
      v54 = (*(v33 + 48) + **(v33 + 48));
      v52 = swift_task_alloc();
      v0[12] = v52;
      *v52 = v0;
      v52[1] = sub_1E6319FF0;
      v30 = v0[5];
      goto LABEL_14;
    }

    if (v4 != *MEMORY[0x1E699E910])
    {
      if (v4 == *MEMORY[0x1E699E920])
      {
        v55 = (*(v0[3] + 16) + **(v0[3] + 16));
        v53 = swift_task_alloc();
        v0[14] = v53;
        *v53 = v0;
        v53[1] = sub_1E631A184;

        return v55();
      }

      else
      {

        return sub_1E65E6C08();
      }
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6319E5C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1E631A310;
  }

  else
  {
    v2 = sub_1E6319F70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6319F70()
{
  sub_1E5FC0990(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6319FF0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E631A398;
  }

  else
  {
    v2 = sub_1E631A104;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E631A104()
{
  sub_1E5FC0990(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E631A184()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E631A420;
  }

  else
  {
    v2 = sub_1E631A298;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E631A298()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E631A310()
{
  sub_1E5FC0990(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E631A398()
{
  sub_1E5FC0990(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E631A420()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AwardDetailItemContext.identifier.getter()
{
  v1 = *v0;
  sub_1E61DA5E0(*v0, v0[1]);
  return v1;
}

uint64_t sub_1E631A4E4(uint64_t a1)
{
  v2 = sub_1E631AF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E631A520(uint64_t a1)
{
  v2 = sub_1E631AF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E631A55C(uint64_t a1)
{
  v2 = sub_1E631AFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E631A598(uint64_t a1)
{
  v2 = sub_1E631AFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E631A5D4(uint64_t a1)
{
  v2 = sub_1E631AF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E631A610(uint64_t a1)
{
  v2 = sub_1E631AF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AwardDetailItemContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078308, &qword_1E65FBFC0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078310, &qword_1E65FBFC8);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078318, &qword_1E65FBFD0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E631AF14();
  sub_1E65E6DA8();
  if (v13)
  {
    v26 = 1;
    sub_1E631AF68();
    v14 = v20;
    sub_1E65E6B18();
    v15 = v22;
    sub_1E65E6B48();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_1E631AFBC();
    sub_1E65E6B18();
    v16 = v19;
    sub_1E65E6B48();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t AwardDetailItemContext.hash(into:)(uint64_t a1)
{
  MEMORY[0x1E694E740](*(v1 + 16));

  return sub_1E65E5D78();
}

uint64_t AwardDetailItemContext.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t AwardDetailItemContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078338, &qword_1E65FBFD8);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078340, &qword_1E65FBFE0);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078348, &unk_1E65FBFE8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E631AF14();
  v13 = v34;
  sub_1E65E6D98();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_1E65E6AF8();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_1E5FBE3F0();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_1E65E68F8();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
      *v26 = &type metadata for AwardDetailItemContext;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_1E631AF68();
        sub_1E65E6A68();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_1E65E6AA8();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_1E631AFBC();
        v28 = v7;
        sub_1E65E6A68();
        v19 = v33;
        v18 = v34;
        v21 = sub_1E65E6AA8();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

unint64_t sub_1E631AF14()
{
  result = qword_1ED078320;
  if (!qword_1ED078320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078320);
  }

  return result;
}

unint64_t sub_1E631AF68()
{
  result = qword_1ED078328;
  if (!qword_1ED078328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078328);
  }

  return result;
}

unint64_t sub_1E631AFBC()
{
  result = qword_1ED078330;
  if (!qword_1ED078330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078330);
  }

  return result;
}

unint64_t sub_1E631B014()
{
  result = qword_1ED078350;
  if (!qword_1ED078350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078350);
  }

  return result;
}

unint64_t sub_1E631B0B8()
{
  result = qword_1ED078358;
  if (!qword_1ED078358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078358);
  }

  return result;
}

unint64_t sub_1E631B110()
{
  result = qword_1ED078360;
  if (!qword_1ED078360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078360);
  }

  return result;
}

unint64_t sub_1E631B168()
{
  result = qword_1ED078368;
  if (!qword_1ED078368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078368);
  }

  return result;
}

unint64_t sub_1E631B1C0()
{
  result = qword_1ED078370;
  if (!qword_1ED078370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078370);
  }

  return result;
}

unint64_t sub_1E631B218()
{
  result = qword_1ED078378;
  if (!qword_1ED078378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078378);
  }

  return result;
}

unint64_t sub_1E631B270()
{
  result = qword_1ED078380;
  if (!qword_1ED078380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078380);
  }

  return result;
}

unint64_t sub_1E631B2C8()
{
  result = qword_1ED078388;
  if (!qword_1ED078388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078388);
  }

  return result;
}

unint64_t sub_1E631B320()
{
  result = qword_1ED078390;
  if (!qword_1ED078390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078390);
  }

  return result;
}

unint64_t sub_1E631B378()
{
  result = qword_1ED078398;
  if (!qword_1ED078398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078398);
  }

  return result;
}

uint64_t sub_1E631B3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v177 = a3;
  v184 = a1;
  v144 = a5;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v172 = v121 - v10;
  v189 = sub_1E65D76F8();
  v170 = *(v189 - 8);
  v137 = *(v170 + 64);
  v11 = MEMORY[0x1EEE9AC00](v189);
  v188 = v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v169 = v121 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v171 = v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v186 = v121 - v17;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v143 = *(v142 - 8);
  v18 = MEMORY[0x1EEE9AC00](v142);
  v138 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v139 = v121 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v140 = v121 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v141 = v121 - v24;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v133 = *(v134 - 1);
  MEMORY[0x1EEE9AC00](v134);
  v131 = v121 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v148 = v121 - v27;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v132 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = v121 - v28;
  v29 = type metadata accessor for AppComposer(0);
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v127 = v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v185 = v121 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v152 = v121 - v36;
  v38 = v37;
  v123 = v37;
  MEMORY[0x1EEE9AC00](v35);
  v40 = v121 - v39;
  *&v193 = 0;
  *(&v193 + 1) = 0xE000000000000000;
  sub_1E65E68A8();

  *&v193 = 0xD000000000000010;
  *(&v193 + 1) = 0x80000001E6615E10;
  v41 = a1;
  v42 = a2;
  v121[0] = a2;
  MEMORY[0x1E694D7C0](v41, a2);
  v125 = v193;
  sub_1E5DF650C(a3, &v193);
  v147 = swift_allocObject();
  sub_1E5DF599C(&v193, v147 + 16);
  v129 = v40;
  sub_1E5E1D82C(v5, v40, type metadata accessor for AppComposer);
  v187 = *a4;
  v178 = a4[3];
  v43 = a4[7];
  v179 = a4[5];
  v180 = v43;
  v181 = a4[9];
  v44 = a4;
  v122 = *(v30 + 80);
  v45 = (v122 + 16) & ~v122;
  v151 = v45 + v38;
  v46 = (v45 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = v122 | 7;
  v48 = swift_allocObject();
  v126 = v48;
  sub_1E5E1E660(v40, v48 + v45, type metadata accessor for AppComposer);
  v49 = (v48 + v46);
  v150 = v44;
  v50 = *(v44 + 3);
  v49[2] = *(v44 + 2);
  v49[3] = v50;
  v49[4] = *(v44 + 4);
  v51 = *(v44 + 1);
  *v49 = *v44;
  v49[1] = v51;
  v52 = v152;
  v174 = type metadata accessor for AppComposer;
  sub_1E5E1D82C(v5, v152, type metadata accessor for AppComposer);
  v176 = v46;
  v121[1] = v47;
  v53 = swift_allocObject();
  v146 = v53;
  v175 = v45;
  v149 = type metadata accessor for AppComposer;
  sub_1E5E1E660(v52, v53 + v45, type metadata accessor for AppComposer);
  v54 = (v53 + v46);
  *v54 = v184;
  v54[1] = v42;
  v173 = v5;
  v55 = v185;
  sub_1E5E1D82C(v5, v185, type metadata accessor for AppComposer);
  v145 = swift_allocObject();
  sub_1E5E1E660(v55, v145 + v45, type metadata accessor for AppComposer);
  v124 = *v5;
  v160 = type metadata accessor for ActionButtonDescriptor(0);
  v159 = type metadata accessor for ArtworkDescriptor(0);
  v156 = type metadata accessor for ContextMenu(0);
  v154 = type metadata accessor for ItemContext(0);
  v153 = type metadata accessor for ItemMetrics(0);
  v184 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v182 = type metadata accessor for SectionMetrics(0);
  v183 = type metadata accessor for ViewDescriptor(0);
  v155 = sub_1E632143C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v185 = sub_1E632143C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v158 = sub_1E632143C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v157 = sub_1E632143C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v168 = sub_1E632143C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v167 = sub_1E632143C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v166 = sub_1E632143C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  v165 = sub_1E632143C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v164 = sub_1E632143C(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  v163 = sub_1E5DF11E0();
  v162 = sub_1E5DF1338();
  v161 = sub_1E632143C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v57 = sub_1E65DC168();
  v191 = v56;
  v192 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70, MEMORY[0x1E699D718]);
  *&v190 = v57;
  v58 = v128;
  sub_1E65DC248();
  v59 = v127;
  sub_1E5E1D82C(v173, v127, v174);
  v60 = (v122 + 32) & ~v122;
  v61 = (v123 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  v63 = v125;
  *(v62 + 16) = v125;
  sub_1E5E1E660(v59, v62 + v60, v149);
  v64 = (v62 + v61);
  *v64 = sub_1E5F8AA74;
  v64[1] = 0;
  *(swift_allocObject() + 16) = v63;
  type metadata accessor for AppFeature(0);
  sub_1E632143C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98, MEMORY[0x1E699D758]);

  v65 = v131;
  v66 = v130;
  sub_1E65E4DE8();
  v67 = swift_allocObject();
  v68 = v126;
  *(v67 + 16) = sub_1E631D818;
  *(v67 + 24) = v68;

  sub_1E65E4CC8();
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1E5FE9CE8;
  *(v69 + 24) = v67;

  v148 = sub_1E65E4F08();

  (*(v133 + 8))(v65, v134);
  (*(v132 + 8))(v58, v66);
  v70 = v173;
  v71 = v129;
  v72 = v174;
  sub_1E5E1D82C(v173, v129, v174);
  sub_1E5DF650C(v177, &v193);
  v73 = v176;
  v147 = (v176 + 47) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v146 = v74;
  v75 = v175;
  v76 = v149;
  sub_1E5E1E660(v71, v74 + v175, v149);
  sub_1E5DF599C(&v193, v74 + v73);
  v77 = (v74 + ((v73 + 47) & 0xFFFFFFFFFFFFFFF8));
  v78 = v150;
  v79 = *(v150 + 3);
  v77[2] = *(v150 + 2);
  v77[3] = v79;
  v77[4] = *(v78 + 4);
  v80 = *(v78 + 1);
  *v77 = *v78;
  v77[1] = v80;
  v81 = sub_1E65E3E08();
  (*(*(v81 - 8) + 56))(v186, 1, 1, v81);
  swift_unknownObjectRetain();

  v82 = v169;
  sub_1E65D76E8();
  (*(v135 + 104))(v172, *MEMORY[0x1E699D720], v136);
  v83 = v152;
  sub_1E5E1D82C(v70, v152, v72);
  v145 = swift_allocObject();
  sub_1E5E1E660(v83, v145 + v75, v76);
  sub_1E5E1D82C(v70, v83, v72);
  v136 = swift_allocObject();
  v84 = v75;
  v85 = v136 + v75;
  v86 = v76;
  sub_1E5E1E660(v83, v85, v76);
  sub_1E5E1D82C(v70, v83, v72);
  v135 = swift_allocObject();
  sub_1E5E1E660(v83, v135 + v84, v76);
  sub_1E5E1D82C(v70, v83, v72);
  sub_1E5DF650C(v177, &v190);
  v87 = v170;
  v88 = *(v170 + 16);
  v133 = v170 + 16;
  v134 = v88;
  v89 = v188;
  v90 = v189;
  v88(v188, v82, v189);
  v91 = v147;
  v92 = (v147 + 87) & 0xFFFFFFFFFFFFFFF8;
  v132 = v92 + 8;
  v93 = (v92 + 8 + *(v87 + 80)) & ~*(v87 + 80);
  v94 = swift_allocObject();
  sub_1E5E1E660(v83, v94 + v175, v86);
  sub_1E5DF599C(&v190, v94 + v176);
  v95 = (v94 + v91);
  v96 = v94;
  v137 = v94;
  v97 = v150;
  v98 = *(v150 + 3);
  v95[2] = *(v150 + 2);
  v95[3] = v98;
  v95[4] = *(v97 + 4);
  v99 = *(v97 + 1);
  *v95 = *v97;
  v95[1] = v99;
  v100 = v148;
  *(v96 + v92) = v148;
  (*(v87 + 32))(v96 + v93, v89, v90);
  v101 = v173;
  v102 = v174;
  sub_1E5E1D82C(v173, v83, v174);
  sub_1E5DF650C(v177, &v190);
  v103 = swift_allocObject();
  v104 = v175;
  sub_1E5E1E660(v83, v103 + v175, v86);
  sub_1E5DF599C(&v190, v103 + v176);
  v132 = v103;
  v105 = (v103 + v147);
  v106 = *(v97 + 3);
  v105[2] = *(v97 + 2);
  v105[3] = v106;
  v105[4] = *(v97 + 4);
  v107 = *(v97 + 1);
  *v105 = *v97;
  v105[1] = v107;
  *(v103 + v92) = v100;
  sub_1E5E1D82C(v101, v83, v102);
  v177 = swift_allocObject();
  sub_1E5E1E660(v83, v177 + v104, v86);
  sub_1E5DFD1CC(v186, v171, &qword_1ED074410, &qword_1E65F0B78);
  v108 = v169;
  v134(v188, v169, v189);
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  sub_1E60731B0();
  sub_1E5FEB2FC();
  sub_1E60C08DC();
  sub_1E60C15C0();
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v111 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  *&v190 = v110;
  *(&v190 + 1) = v111;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v190 = v109;
  *(&v190 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E60C217C();
  v113 = v138;
  sub_1E65DC198();
  (*(v170 + 8))(v108, v189);
  sub_1E5DFE50C(v186, &qword_1ED074410, &qword_1E65F0B78);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
  v114 = v139;
  v115 = v113;
  v116 = v142;
  sub_1E5FEE4C8();
  v117 = *(v143 + 8);
  v117(v115, v116);
  v118 = v140;
  sub_1E5FEE4C8();
  v117(v114, v116);
  v119 = v141;
  sub_1E5FEE4C8();
  v117(v118, v116);
  sub_1E5FEE4C8();
  return (v117)(v119, v116);
}

uint64_t sub_1E631CE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v52 = a1;
  v53 = a3;
  v48 = type metadata accessor for CanvasTaskIdentifier(0);
  v3 = MEMORY[0x1EEE9AC00](v48);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v43 - v5;
  v6 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RouteDestination(0);
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v43 - v12);
  v14 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E3498();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1D82C(v52, v16, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v21 = *(v18 + 32);
    v44 = v20;
    v45 = v17;
    v21(v20, v16, v17);
    v22 = sub_1E65E3478();
    v24 = v23;
    swift_storeEnumTagMultiPayload();
    *v13 = v22;
    v13[1] = v24;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E5E1E660(v8, v13 + *(v9 + 20), type metadata accessor for RouteSource);
    *(v13 + *(v9 + 24)) = MEMORY[0x1E69E7CD0];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
    v52 = v25[12];
    v26 = v25[16];
    v27 = v25[20];
    v28 = v53;
    v29 = (v53 + v25[24]);
    v30 = v47;
    sub_1E5E1D82C(v13, v47, type metadata accessor for RouteDestination);
    sub_1E5E1D82C(v30, v46, type metadata accessor for CanvasTaskIdentifier);
    sub_1E632143C(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier, &unk_1E65F55A8);
    sub_1E65E6848();
    sub_1E6321560(v30, type metadata accessor for CanvasTaskIdentifier);
    v31 = *MEMORY[0x1E6999B50];
    v32 = sub_1E65E4EB8();
    (*(*(v32 - 8) + 104))(v28 + v26, v31, v32);
    v33 = *MEMORY[0x1E6999B48];
    v34 = sub_1E65E4EA8();
    (*(*(v34 - 8) + 104))(v28 + v27, v33, v34);
    sub_1E5DF650C(v51, v54);
    v35 = v50;
    sub_1E5E1D82C(v13, v50, type metadata accessor for RouteDestination);
    v36 = (*(v49 + 80) + 56) & ~*(v49 + 80);
    v37 = swift_allocObject();
    sub_1E5DF599C(v54, v37 + 16);
    sub_1E5E1E660(v35, v37 + v36, type metadata accessor for RouteDestination);
    *v29 = &unk_1E65FC550;
    v29[1] = v37;
    sub_1E65E6068();
    sub_1E6321560(v13, type metadata accessor for RouteDestination);
    (*(v18 + 8))(v44, v45);
    v38 = *MEMORY[0x1E6999AD8];
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    v40 = *(v39 - 8);
    (*(v40 + 104))(v28, v38, v39);
    return (*(v40 + 56))(v28, 0, 1, v39);
  }

  else
  {
    sub_1E6321560(v16, type metadata accessor for ItemContext);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
  }
}

uint64_t sub_1E631D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v29 - v16;
  v32 = v29 - v16;
  v31 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1E5DFD1CC(a1, v14, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 16))(v10, v33, v6);
  v19 = a4[3];
  v29[0] = *a4;
  v29[1] = v19;
  v20 = a4[7];
  v29[2] = a4[5];
  v29[3] = v20;
  v33 = a4[9];
  v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v22 = (v12 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1E5FAB460(v14, v24 + v21, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 32))(v24 + v22, v10, v6);
  *(v24 + v23) = v31;
  v25 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = *(a4 + 4);
  v25[3] = *(a4 + 3);
  v25[4] = v26;
  v27 = *(a4 + 2);
  v25[1] = *(a4 + 1);
  v25[2] = v27;
  *v25 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v32, &unk_1E65EC0C8, v24);
}

uint64_t sub_1E631D818(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E631D4C0(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E631D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v4[5] = sub_1E65E03F8();
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for ItemContext(0);
  v4[8] = swift_task_alloc();
  v5 = sub_1E65D9CC8();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_1E65E0438();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  v4[20] = swift_task_alloc();
  sub_1E65D72D8();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  v4[22] = swift_task_alloc();
  v4[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v4[24] = swift_task_alloc();
  sub_1E65D7848();
  v4[25] = swift_task_alloc();
  sub_1E65E5C28();
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E631DC4C, 0, 0);
}

uint64_t sub_1E631DC4C()
{
  *(v0 + 248) = *(type metadata accessor for AppComposer(0) + 20);
  type metadata accessor for AppEnvironment(0);
  v1 = RecommendationService.queryRelatedCatalogWorkoutPlaceholders.getter();
  *(v0 + 216) = v2;
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  *v3 = v0;
  v3[1] = sub_1E631DD6C;
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);

  return v7(v5, v4);
}

uint64_t sub_1E631DD6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_1E631E94C;
  }

  else
  {
    v4 = sub_1E631DE80;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E631DE80()
{
  v1 = v0[24];

  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v4 = sub_1E65E5D48();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073018, &qword_1E65ECE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1E65EA670;
  v7 = sub_1E65DAE38();
  if (v7 == sub_1E65DAE38())
  {
    v8 = 2;
  }

  else
  {
    v8 = 5;
  }

  *v1 = v8;
  swift_storeEnumTagMultiPayload();
  if (qword_1EE2D7270 != -1)
  {
    swift_once();
  }

  v9 = v0[29];
  v10 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v13 = sub_1E65D7348();
  __swift_project_value_buffer(v13, qword_1EE2EA268);
  v42 = v6;
  sub_1E65E5D38();
  v14 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = type metadata accessor for ActionButtonDescriptor(0);
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_1E632143C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E632143C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  sub_1E65E0458();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  v17 = *(v9 + 16);
  v18 = v0[29];
  if (v17)
  {
    v49 = v0[13];
    v19 = v0[10];
    v48 = v0[8];
    v53 = MEMORY[0x1E69E7CC0];
    sub_1E601BE24(0, v17, 0);
    v52 = v53;
    v20 = *(v19 + 16);
    v19 += 16;
    v21 = v18 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v46 = *(v19 + 56);
    v47 = v20;
    v45 = (v19 - 8);
    v44 = *MEMORY[0x1E699EC88];
    do
    {
      v22 = v0[11];
      v51 = v17;
      v23 = v0[8];
      v50 = v0[9];
      v47(v22, v21);
      *v23 = sub_1E65D9C98();
      *(v48 + 8) = v24;
      v25 = sub_1E65E3498();
      (*(*(v25 - 8) + 104))(v23, v44, v25);
      swift_storeEnumTagMultiPayload();
      sub_1E65E0A68();
      swift_storeEnumTagMultiPayload();
      sub_1E632143C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E632143C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      v26 = v0;
      sub_1E632143C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E65E04D8();
      (*v45)(v22, v50);
      swift_storeEnumTagMultiPayload();
      v28 = *(v52 + 16);
      v27 = *(v52 + 24);
      v29 = v52;
      if (v28 >= v27 >> 1)
      {
        sub_1E601BE24((v27 > 1), v28 + 1, 1);
        v29 = v52;
      }

      v52 = v29;
      v30 = v26[14];
      *(v29 + 16) = v28 + 1;
      sub_1E5FAB460(v30, v29 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v28, &qword_1ED0720A8, &qword_1E65EA790);
      v21 += v46;
      --v17;
      v0 = v26;
    }

    while (v51 != 1);
  }

  v31 = v0[17];
  v32 = v0[18];
  v33 = v0[15];
  v34 = v0[16];
  v35 = type metadata accessor for SectionMetrics(0);
  v36 = *(v35 + 24);
  v37 = *MEMORY[0x1E69CBCB0];
  v38 = sub_1E65D8F28();
  (*(*(v38 - 8) + 104))(&v32[v36], v37, v38);
  v39 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  *v32 = 0x20646574616C6552;
  *(v32 + 1) = 0xEF6E6F6974636553;
  *(v32 + 2) = v4;
  *(v32 + 3) = v42;
  *&v32[*(v35 + 32)] = v39;
  (*(*(v35 - 8) + 56))(v32, 0, 1, v35);
  (*(v34 + 104))(v31, *MEMORY[0x1E699D7D8], v33);
  type metadata accessor for ArtworkDescriptor(0);
  type metadata accessor for ContextMenu(0);
  type metadata accessor for ItemMetrics(0);
  type metadata accessor for ViewDescriptor(0);
  sub_1E632143C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E632143C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E632143C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E632143C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E632143C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E632143C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E632143C(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E632143C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  sub_1E65E0418();

  v40 = v0[1];

  return v40(v43);
}

uint64_t sub_1E631E94C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E631EA60(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5FE99E8;

  return sub_1E631D8C4(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E631EB78(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for ItemContext(0);
  v2[14] = swift_task_alloc();
  v4 = sub_1E65E3498();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = sub_1E65D9CC8();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E631EDE8, 0, 0);
}

uint64_t sub_1E631EDE8()
{
  v1 = v0[23];
  v2 = v0[5];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[5] + 32);
  v8 = v0[16];
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v9 = v6 & v3;
  v10 = (63 - v7) >> 6;
  v35 = (v1 + 8);
  v31 = (v8 + 8);
  v32 = (v8 + 32);
  v33 = v0[19];
  v34 = (v33 + 32);
  v36 = v0[5];

  v12 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v12;
    v0[25] = v38;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v1 + 16))(v0[24], *(v36 + 48) + *(v1 + 72) * (v14 | (v12 << 6)), v0[22]);
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v16 = v0[20];
      v17 = v0[17];
      v29 = v0[18];
      v30 = v0[21];
      v18 = v0[15];
      v28 = v0[24];
      v19 = v0[22];
      (*v32)(v17, v0[14], v18);
      sub_1E65E3478();
      sub_1E65D9C88();
      (*v31)(v17, v18);
      (*v35)(v28, v19);
      v20 = *v34;
      (*v34)(v30, v16, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1E64F610C(0, v38[2] + 1, 1, v38);
      }

      v22 = v38[2];
      v21 = v38[3];
      if (v22 >= v21 >> 1)
      {
        v38 = sub_1E64F610C((v21 > 1), v22 + 1, 1, v38);
      }

      v23 = v0[21];
      v24 = v0[18];
      v38[2] = v22 + 1;
      result = v20(v38 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v22, v23, v24);
    }

    else
    {
      v15 = v0[14];
      (*v35)(v0[24], v0[22]);
      result = sub_1E6321560(v15, type metadata accessor for ItemContext);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v4 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v25 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[26] = v26;
  v37 = (v25 + *v25);
  v27 = swift_task_alloc();
  v0[27] = v27;
  *v27 = v0;
  v27[1] = sub_1E631F1D4;

  return (v37)(33, v38);
}
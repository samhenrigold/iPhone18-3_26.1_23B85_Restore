void *sub_1C6EC394C(uint64_t a1, uint64_t a2)
{
  v36 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7780, &unk_1C6EE6930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v34 - v18);
  v20 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (*(v21 + 16) && (v22 = sub_1C6DEC784(a1, a2), (v23 & 1) != 0))
  {
    v24 = v22;
    v25 = *(v21 + 56);
    v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    v27 = *(v26 - 8);
    v35 = v7;
    v28 = v27;
    sub_1C6ECEC70(v25 + *(v27 + 72) * v24, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    (*(v28 + 56))(v10, 0, 1, v26);
    v7 = v35;
  }

  else
  {
    v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  }

  v29 = v36;
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  if ((*(*(v26 - 8) + 48))(v10, 1, v26))
  {
    sub_1C6ECEEAC(v10, &qword_1EC1F7780, &unk_1C6EE6930);
    swift_endAccess();
    v30 = 1;
  }

  else
  {
    sub_1C6ECEE44(&v10[*(v26 + 20)], v17, &qword_1EC1F7D68, &unk_1C6EE89B0);
    v31 = *(v5 + 48);
    if (v31(v17, 1, v29) == 1)
    {
      *v19 = sub_1C6E0B978(MEMORY[0x1E69E7CC0]);
      sub_1C6EE4420();
      if (v31(v17, 1, v29) != 1)
      {
        sub_1C6ECEEAC(v17, &qword_1EC1F7D68, &unk_1C6EE89B0);
      }
    }

    else
    {
      sub_1C6ECEF0C(v17, v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    }

    sub_1C6ECEEAC(v10, &qword_1EC1F7780, &unk_1C6EE6930);
    swift_endAccess();
    v30 = 0;
  }

  (*(v5 + 56))(v19, v30, 1, v29);
  sub_1C6ECEE44(v19, v14, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v5 + 48))(v14, 1, v29) == 1)
  {
    v32 = 0;
  }

  else
  {
    sub_1C6ECEF0C(v14, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v32 = sub_1C6E29CBC(v7);
    sub_1C6ECEC10(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  }

  sub_1C6ECEEAC(v19, &qword_1EC1F7D68, &unk_1C6EE89B0);
  return v32;
}

uint64_t sub_1C6EC3E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a2;
  v57 = a4;
  v55 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9860, &qword_1C6EF6B30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v48 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v49 = *(v51 - 8);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v53 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9868, &unk_1C6EF6B40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v50 = &v48 - v14;
  v15 = sub_1C6EE42C0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7780, &unk_1C6EE6930);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v48 - v23;
  v25 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_1C6ECED54(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  sub_1C6EE4600();
  v28 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v52 = v27;
  v58 = v27;
  v59 = v57;
  sub_1C6ECED54(&qword_1EDEF6320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures, &unk_1C6EF3EE8);
  sub_1C6EE4600();
  v48 = 0;
  (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
  swift_beginAccess();
  v29 = v55;

  sub_1C6E02148(v24, v56, v29);
  swift_endAccess();
  swift_beginAccess();
  v30 = *(v5 + 56);
  if (*(v30 + 16))
  {
    sub_1C6ECEE44(v30 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v12, &unk_1EC1F9A30, &qword_1C6EF6B38);

    v31 = v51;
    v32 = *(v51 + 48);
    v33 = v50;
    sub_1C6EE43B0();
    v34 = sub_1C6EE43E0();
    (*(*(v34 - 8) + 8))(&v12[v32], v34);
    (*(v16 + 56))(v33, 0, 1, v15);
    (*(v16 + 32))(v21, v33, v15);
  }

  else
  {
    v35 = v50;
    (*(v16 + 56))(v50, 1, 1, v15);
    sub_1C6EE4250();
    v36 = (*(v16 + 48))(v35, 1, v15);
    v31 = v51;
    if (v36 != 1)
    {
      sub_1C6ECEEAC(v35, &qword_1EC1F9868, &unk_1C6EF6B40);
    }
  }

  v37 = v57;
  sub_1C6EE43B0();
  v38 = sub_1C6EE4280();
  v39 = *(v16 + 8);
  v39(v19, v15);
  v39(v21, v15);
  v40 = *(v31 + 48);
  v41 = v55;
  v42 = v53;
  *v53 = v56;
  *(v42 + 8) = v41;
  v43 = sub_1C6EE43E0();
  (*(*(v43 - 8) + 16))(v42 + v40, v37, v43);
  swift_beginAccess();
  v44 = v54;
  sub_1C6ECEF74(v42, v54, &unk_1EC1F9A30, &qword_1C6EF6B38);

  sub_1C6EC8770(0, 0, v44);
  swift_endAccess();
  if ((v38 & 1) == 0)
  {
    if (qword_1EDEF8458 != -1)
    {
      swift_once();
    }

    v45 = qword_1EDEF8460;
    v46 = sub_1C6EE4ED0();
    sub_1C6EE4730("Observed FeaturesStoreData.featureKeysAndSizesByDate out of order, resorting to be correct order", 96, 2, &dword_1C6DE9000, v45, v46, MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    sub_1C6EC1F70((v5 + 56));
    swift_endAccess();
  }

  sub_1C6EC4D7C();
  return sub_1C6ECEC10(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

void sub_1C6EC457C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6ECEC70(a2, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v13 = *(v12 + 20);
  sub_1C6ECEEAC(a1 + v13, &qword_1EC1F7D68, &unk_1C6EE89B0);
  sub_1C6ECEF0C(v11, a1 + v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  (*(v9 + 56))(a1 + v13, 0, 1, v8);
  v25 = v23;
  v26 = a2;
  sub_1C6ECED54(&qword_1EDEF62C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata, &unk_1C6EF3420);
  v14 = v24;
  sub_1C6EE4600();
  if (v14)
  {
    if (qword_1EDEF8458 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDEF8460;
    v16 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C6EE6590;
    v27 = 0;
    v28 = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v18 = v27;
    v19 = v28;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1C6DF10E0();
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    sub_1C6EE4730("Failed to store feature with error %{public}@", 45, 2, &dword_1C6DE9000, v15, v16, v17);
  }

  else
  {
    v20 = *(v12 + 24);
    sub_1C6ECEEAC(a1 + v20, &qword_1EC1F7D58, &qword_1C6EE89A0);
    sub_1C6ECEF0C(v7, a1 + v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    (*(v22 + 56))(a1 + v20, 0, 1, v5);
  }
}

unint64_t sub_1C6EC4908(char *a1, uint64_t a2)
{
  v5 = sub_1C6EE43E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a2, v5);
  v9 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0) + 24);
  sub_1C6ECEEAC(&a1[v9], &qword_1EC1F7D48, &qword_1C6EE8990);
  (*(v6 + 32))(&a1[v9], v8, v5);
  (*(v6 + 56))(&a1[v9], 0, 1, v5);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6ECED54(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  result = sub_1C6EE45C0();
  if (!v2)
  {
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        result = sub_1C6DF1134(result, v11);
        v14 = 0;
        goto LABEL_12;
      }

      v16 = *(result + 16);
      v15 = *(result + 24);
      result = sub_1C6DF1134(result, v11);
      v14 = v15 - v16;
      if (!__OFSUB__(v15, v16))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = BYTE6(v11);
      result = sub_1C6DF1134(result, v11);
      v14 = v13;
LABEL_12:
      *a1 = v14;
      return result;
    }

    v17 = HIDWORD(result);
    v18 = result;
    result = sub_1C6DF1134(result, v11);
    LODWORD(v14) = v17 - v18;
    if (__OFSUB__(v17, v18))
    {
      __break(1u);
      return result;
    }

    v14 = v14;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C6EC4B1C(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_1C6EE42C0();
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v9 = v8 - 8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  sub_1C6ECEE44(a1, &v23 - v13, &unk_1EC1F9A30, &qword_1C6EF6B38);

  v15 = *(v9 + 56);
  sub_1C6EE43B0();
  v16 = sub_1C6EE43E0();
  v17 = *(*(v16 - 8) + 8);
  v17(&v14[v15], v16);
  sub_1C6ECEE44(v24, v12, &unk_1EC1F9A30, &qword_1C6EF6B38);

  v18 = *(v9 + 56);
  v19 = v23;
  sub_1C6EE43B0();
  v17((v12 + v18), v16);
  LOBYTE(v12) = sub_1C6EE4270();
  v20 = v26;
  v21 = *(v25 + 8);
  v21(v19, v26);
  v21(v7, v20);
  return v12 & 1;
}

uint64_t sub_1C6EC4D7C()
{
  if (qword_1EDEF8458 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v1 = swift_allocObject();
  *(&v9 + 1) = 2;
  *(v1 + 16) = xmmword_1C6EE6590;
  v2 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
  swift_beginAccess();
  v3 = MEMORY[0x1E69E6530];
  v4 = *(*(v0 + v2) + 16);
  v5 = MEMORY[0x1E69E65A8];
  *(v1 + 56) = MEMORY[0x1E69E6530];
  *(v1 + 64) = v5;
  *(v1 + 32) = v4;
  sub_1C6EE4EE0();
  sub_1C6EE4730("Pruning store starting with %lu entries", 1);

  sub_1C6EC4F00();
  sub_1C6EC5934();
  v6 = swift_allocObject();
  *(v6 + 16) = v9;
  v7 = *(*(v0 + v2) + 16);
  *(v6 + 56) = v3;
  *(v6 + 64) = v5;
  *(v6 + 32) = v7;
  sub_1C6EE4EE0();
  sub_1C6EE4730("Pruning store finished with %lu entries", v9);
}

uint64_t sub_1C6EC4F00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7780, &unk_1C6EE6930);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v89 = &v88 - v3;
  v99 = sub_1C6EE42C0();
  v4 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v97 = *(v101 - 8);
  v6 = MEMORY[0x1EEE9AC00](v101);
  v94 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v88 - v8;
  if (qword_1EDEF8458 != -1)
  {
LABEL_38:
    swift_once();
  }

  v9 = qword_1EDEF8460;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v10 = swift_allocObject();
  v90 = xmmword_1C6EE6590;
  *(v10 + 16) = xmmword_1C6EE6590;
  v107 = 0;
  v108 = 0xE000000000000000;
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v11);
  (*(v12 + 32))(v11, v12);
  sub_1C6EE4DD0();
  v13 = v107;
  v14 = v108;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v92 = sub_1C6DF10E0();
  *(v10 + 64) = v92;
  *(v10 + 32) = v13;
  *(v10 + 40) = v14;
  v15 = sub_1C6EE4EE0();
  v93 = v9;
  sub_1C6EE4730("Pruning stores old features with maxCacheAge=%{public}@", 55, 2, &dword_1C6DE9000, v9, v15, v10);

  swift_beginAccess();
  v102 = v1;
  v16 = *(*(v1 + 56) + 16);

  v96 = v16;
  if (!v16)
  {
LABEL_7:

    v30 = swift_allocObject();
    *(v30 + 16) = v90;
    v105 = 0;
    v106 = 0xE000000000000000;
    v31 = v102[5];
    v32 = v102[6];
    __swift_project_boxed_opaque_existential_1(v102 + 2, v31);
    (*(v32 + 32))(v31, v32);
    sub_1C6EE4DD0();
    v33 = v105;
    v34 = v106;
    v35 = v92;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = v35;
    *(v30 + 32) = v33;
    *(v30 + 40) = v34;
    v36 = sub_1C6EE4EE0();
    sub_1C6EE4730("Found nothing to prune in features store with maxCacheAge=%{public}@", 68, 2, &dword_1C6DE9000, v93, v36, v30);
  }

  v18 = 0;
  v95 = (v4 + 8);
  v19 = 1;
  while (1)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v103 = v19;
    v20 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v21 = v17;
    v4 = *(v97 + 72);
    v22 = v100;
    sub_1C6ECEE44(v17 + v20 + v4 * v18, v100, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v23 = v98;
    sub_1C6EE43B0();
    sub_1C6EE4290();
    v25 = v24;
    (*v95)(v23, v99);
    v26 = -v25;
    v27 = v102;
    v1 = v102[5];
    v28 = v102[6];
    __swift_project_boxed_opaque_existential_1(v102 + 2, v1);
    v29 = (*(v28 + 32))(v1, v28);
    sub_1C6ECEEAC(v22, &unk_1EC1F9A30, &qword_1C6EF6B38);
    if (v29 <= v26)
    {
      break;
    }

    ++v18;
    v19 = v103 + 2;
    v17 = v21;
    if (v96 == v18)
    {
      goto LABEL_7;
    }
  }

  v97 = v20;

  v38 = v27[7];
  v98 = v18;
  v99 = v38;
  v39 = *(v38 + 16);
  v1 = &v39[-v18];
  if (v39 < v18)
  {
    __break(1u);
    goto LABEL_40;
  }

  v40 = MEMORY[0x1E69E7CC0];
  if (v39 == v18)
  {
LABEL_17:
    v100 = v40;
    v52 = *(v40 + 16);
    v53 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
    v4 = v89;
    if (v52)
    {
      v54 = 0;
      v55 = (v100 + 40);
      v99 = v52;
      while (v54 < *(v100 + 16))
      {
        v61 = *(v55 - 1);
        v60 = *v55;
        swift_beginAccess();

        v101 = v61;
        v102 = v60;
        v62 = sub_1C6DEC784(v61, v60);
        if (v63)
        {
          v64 = v62;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v53;
          v67 = *(v27 + v53);
          v104 = v67;
          *(v27 + v66) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1C6E0A74C();
            v67 = v104;
          }

          v68 = *(v67 + 56);
          v69 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
          v70 = *(v69 - 8);
          v71 = v68 + *(v70 + 72) * v64;
          v4 = v89;
          sub_1C6ECEF0C(v71, v89, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          sub_1C6ECE140(v64, v67);
          *(v27 + v66) = v67;

          v72 = *(v70 + 56);
          v1 = v70 + 56;
          v72(v4, 0, 1, v69);
          v53 = v66;
          v52 = v99;
        }

        else
        {
          v69 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
          (*(*(v69 - 8) + 56))(v4, 1, 1, v69);
        }

        swift_endAccess();
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
        if ((*(*(v69 - 8) + 48))(v4, 1, v69) == 1)
        {
          sub_1C6ECEEAC(v4, &qword_1EC1F7780, &unk_1C6EE6930);
          v56 = sub_1C6EE4ED0();
          v57 = swift_allocObject();
          *(v57 + 16) = v90;
          v58 = v92;
          *(v57 + 56) = MEMORY[0x1E69E6158];
          *(v57 + 64) = v58;
          v59 = v102;
          *(v57 + 32) = v101;
          *(v57 + 40) = v59;

          sub_1C6EE4730("Old features to prune specified prunning id that wasn't present in the store %{public}@", 87, 2, &dword_1C6DE9000, v93, v56, v57);
        }

        else
        {

          sub_1C6ECEEAC(v4, &qword_1EC1F7780, &unk_1C6EE6930);
        }

        ++v54;
        v55 += 2;
        if (v52 == v54)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_36;
    }

LABEL_29:
    result = v27[7];
    v73 = *(result + 16);
    if (v73 >= v98)
    {
      if (v73 == v98)
      {
      }

      else
      {
        sub_1C6EC8EB8(result, result + v97, 0, v103);
        v75 = v74;
      }

      v27[7] = v75;

      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1C6EE65B0;
      v77 = MEMORY[0x1E69E6530];
      v78 = v100;
      v79 = *(v100 + 16);
      v80 = MEMORY[0x1E69E65A8];
      *(v76 + 56) = MEMORY[0x1E69E6530];
      *(v76 + 64) = v80;
      *(v76 + 32) = v79;
      swift_beginAccess();
      v81 = *(*(v27 + v53) + 16);
      *(v76 + 96) = v77;
      *(v76 + 104) = v80;
      *(v76 + 72) = v81;
      v82 = MEMORY[0x1E69E6158];
      v83 = MEMORY[0x1CCA580B0](v78, MEMORY[0x1E69E6158]);
      v85 = v84;

      v86 = v92;
      *(v76 + 136) = v82;
      *(v76 + 144) = v86;
      *(v76 + 112) = v83;
      *(v76 + 120) = v85;
      v87 = sub_1C6EE4EE0();
      sub_1C6EE4730("Found %lu old features to prune %lu features remaining, prunedIDs=%{public}@", 76, 2, &dword_1C6DE9000, v93, v87, v76);
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v105 = MEMORY[0x1E69E7CC0];
  v41 = v99;

  result = sub_1C6E15A10(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v40 = v105;
    v42 = v4;
    v43 = v41 + v97 + v4 * v98;
    while (v1)
    {
      v44 = v100;
      sub_1C6ECEE44(v43, v100, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v45 = v94;
      sub_1C6ECEF74(v44, v94, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v47 = *v45;
      v46 = *(v45 + 1);
      v48 = *(v101 + 48);
      v49 = sub_1C6EE43E0();
      (*(*(v49 - 8) + 8))(&v45[v48], v49);
      v105 = v40;
      v4 = *(v40 + 16);
      v50 = *(v40 + 24);
      if (v4 >= v50 >> 1)
      {
        sub_1C6E15A10((v50 > 1), v4 + 1, 1);
        v40 = v105;
      }

      *(v40 + 16) = v4 + 1;
      v51 = v40 + 16 * v4;
      *(v51 + 32) = v47;
      *(v51 + 40) = v46;
      v43 += v42;
      --v1;
      v27 = v102;
      if (!v1)
      {

        goto LABEL_17;
      }
    }

    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1C6EC5934()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7780, &unk_1C6EE6930);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v104 = &v93 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v93 - v7;
  v103 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v8 = *(v103 - 8);
  v9 = MEMORY[0x1EEE9AC00](v103);
  v11 = (&v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v97 = (&v93 - v12);
  v108 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v105 = *(v108 - 8);
  v13 = MEMORY[0x1EEE9AC00](v108);
  v96 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v93 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v18 = *(v17 - 8);
  v115 = v17;
  v116 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v106 = (&v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19);
  v114 = (&v93 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v93 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v113 = &v93 - v26;
  if (qword_1EDEF8458 != -1)
  {
LABEL_46:
    swift_once();
  }

  v27 = qword_1EDEF8460;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v28 = swift_allocObject();
  v117 = xmmword_1C6EE6590;
  *(v28 + 16) = xmmword_1C6EE6590;
  v29 = v1[5];
  v30 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v29);
  v31 = (*(v30 + 24))(v29, v30);
  v32 = MEMORY[0x1E69E65A8];
  *(v28 + 56) = MEMORY[0x1E69E6530];
  *(v28 + 64) = v32;
  *(v28 + 32) = v31;
  sub_1C6EE4EE0();
  v119 = v27;
  sub_1C6EE4730("Pruning store to size with maxCacheSize=%lu", v93);

  swift_beginAccess();
  v33 = v1[7];
  v34 = *(v33 + 16);
  if (!v34)
  {
    v35 = 0;
LABEL_40:
    if (v34 == v35)
    {
    }

    else
    {
      sub_1C6EC8EB8(v33, v33 + ((*(v116 + 80) + 32) & ~*(v116 + 80)), 0, (2 * v35) | 1);
    }

    v1[7] = v89;

    v90 = swift_allocObject();
    *(v90 + 16) = v117;
    v91 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
    swift_beginAccess();
    v92 = *(*(v1 + v91) + 16);
    *(v90 + 56) = MEMORY[0x1E69E6530];
    *(v90 + 64) = MEMORY[0x1E69E65A8];
    *(v90 + 32) = v92;
    sub_1C6EE4EE0();
    sub_1C6EE4730("Finished pruning store to size %lu remaining items", v93);
  }

  v112 = *(v115 + 48);
  v111 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
  v94 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v110 = v33 + v94;

  v35 = 0;
  v107 = 0;
  v125 = v1;
  v102 = v16;
  v109 = v34;
  v101 = (v8 + 48);
  v123 = v33;
  while (1)
  {
    if (v35 >= *(v33 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v38 = v11;
    v122 = *(v116 + 72);
    v39 = v113;
    v1 = &qword_1C6EF6B38;
    sub_1C6ECEE44(v110 + v122 * v35, v113, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v40 = *(v39 + 1);
    v41 = v115;
    v42 = *(v115 + 48);
    *v25 = *v39;
    *(v25 + 1) = v40;
    v43 = sub_1C6EE43E0();
    v8 = *(v43 - 8);
    (*(v8 + 32))(&v25[v42], &v39[v112], v43);
    v44 = v114;
    sub_1C6ECEE44(v25, v114, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v45 = *v44;
    v46 = v44[1];
    v47 = *(v8 + 8);
    v48 = v44 + *(v41 + 48);
    v124 = v43;
    v120 = v47;
    v121 = v8 + 8;
    v47(v48, v43);
    v49 = v125;
    v16 = v111;
    swift_beginAccess();
    v50 = *(v16 + v49);
    if (!*(v50 + 16) || (v51 = sub_1C6DEC784(v45, v46), (v52 & 1) == 0))
    {
      swift_endAccess();
      v36 = sub_1C6EE4ED0();
      v8 = swift_allocObject();
      *(v8 + 16) = v117;
      *(v8 + 56) = MEMORY[0x1E69E6158];
      *(v8 + 64) = sub_1C6DF10E0();
      *(v8 + 32) = v45;
      *(v8 + 40) = v46;
      sub_1C6EE4730("When pruning features store to size found item ID %{public}@ in featureKeysAndSizesByDate not present in store.", 111, 2, &dword_1C6DE9000, v119, v36, v8);

      sub_1C6ECEEAC(v25, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v11 = v38;
      v33 = v123;
      goto LABEL_5;
    }

    v53 = *(v50 + 56) + v105[9] * v51;
    v54 = v96;
    sub_1C6ECEC70(v53, v96, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    v55 = v54;
    v56 = v102;
    sub_1C6ECEF0C(v55, v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    swift_endAccess();

    v99 = *(v108 + 24);
    v57 = v56 + v99;
    v58 = v98;
    sub_1C6ECEE44(v57, v98, &qword_1EC1F7D58, &qword_1C6EE89A0);
    v59 = *v101;
    v60 = v103;
    v61 = (*v101)(v58, 1, v103);
    v11 = v38;
    v100 = v59;
    if (v61 == 1)
    {
      v16 = v97;
      *v97 = 0;
      sub_1C6EE4420();
      (*(v8 + 56))(v16 + *(v60 + 24), 1, 1, v124);
      v62 = (v59)(v58, 1, v60);
      v33 = v123;
      if (v62 != 1)
      {
        sub_1C6ECEEAC(v58, &qword_1EC1F7D58, &qword_1C6EE89A0);
      }
    }

    else
    {
      v16 = v97;
      sub_1C6ECEF0C(v58, v97, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      v33 = v123;
    }

    v63 = *v16;
    sub_1C6ECEC10(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    v1 = (v107 + v63);
    if (__OFADD__(v107, v63))
    {
      goto LABEL_45;
    }

    v64 = v125[5];
    v65 = v125[6];
    __swift_project_boxed_opaque_existential_1(v125 + 2, v64);
    if ((*(v65 + 24))(v64, v65) < v1)
    {

      sub_1C6ECEC10(v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
      result = sub_1C6ECEEAC(v25, &unk_1EC1F9A30, &qword_1C6EF6B38);
      goto LABEL_25;
    }

    v16 = v102;
    v66 = v95;
    sub_1C6ECEE44(v102 + v99, v95, &qword_1EC1F7D58, &qword_1C6EE89A0);
    v67 = v103;
    v1 = v100;
    if ((v100)(v66, 1, v103) == 1)
    {
      *v11 = 0;
      sub_1C6EE4420();
      sub_1C6ECEC10(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
      sub_1C6ECEEAC(v25, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v68 = *(v8 + 56);
      v8 += 56;
      v68(v11 + *(v67 + 24), 1, 1, v124);
      if ((v1)(v66, 1, v67) != 1)
      {
        sub_1C6ECEEAC(v66, &qword_1EC1F7D58, &qword_1C6EE89A0);
      }
    }

    else
    {
      sub_1C6ECEC10(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
      sub_1C6ECEEAC(v25, &unk_1EC1F9A30, &qword_1C6EF6B38);
      sub_1C6ECEF0C(v66, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    }

    v37 = *v11;
    sub_1C6ECEC10(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    v69 = __OFADD__(v107, v37);
    v107 += v37;
    if (v69)
    {
      break;
    }

LABEL_5:
    ++v35;
    v37 = v109;
    if (v109 == v35)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:

  v35 = v37;
LABEL_25:
  v1 = v125;
  v33 = v125[7];
  v71 = *(v33 + 16);
  if (v71 < v35)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v71 == v35)
  {
LABEL_39:
    v34 = *(v33 + 16);
    if (v34 >= v35)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

  v72 = v71 - v35;
  if (v71 > v35)
  {
    v115 = *(v115 + 48);
    v73 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
    v113 = (v105 + 6);
    v114 = v105 + 7;

    v74 = v33 + v94 + v35 * v122;
    v75 = v106;
    v123 = v33;
    do
    {
      v78 = v104;
      sub_1C6ECEE44(v74, v75, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v79 = *v75;
      v80 = v75[1];
      v81 = v125;
      swift_beginAccess();
      v82 = sub_1C6DEC784(v79, v80);
      if (v83)
      {
        v84 = v82;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = *(v81 + v73);
        v126 = v86;
        *(v81 + v73) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C6E0A74C();
          v86 = v126;
        }

        sub_1C6ECEF0C(*(v86 + 56) + v105[9] * v84, v78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
        sub_1C6ECE140(v84, v86);
        *(v81 + v73) = v86;

        v87 = 0;
      }

      else
      {
        v87 = 1;
      }

      v88 = v108;
      (*v114)(v78, v87, 1, v108);
      swift_endAccess();
      if ((*v113)(v78, 1, v88) == 1)
      {
        sub_1C6ECEEAC(v78, &qword_1EC1F7780, &unk_1C6EE6930);
        v76 = sub_1C6EE4ED0();
        v77 = swift_allocObject();
        *(v77 + 16) = v117;
        *(v77 + 56) = MEMORY[0x1E69E6158];
        *(v77 + 64) = sub_1C6DF10E0();
        *(v77 + 32) = v79;
        *(v77 + 40) = v80;
        sub_1C6EE4730("Pruning to size specified prunning id that wasn't present in the store %{public}@", 81, 2, &dword_1C6DE9000, v119, v76, v77);
      }

      else
      {

        sub_1C6ECEEAC(v78, &qword_1EC1F7780, &unk_1C6EE6930);
      }

      v75 = v106;
      v120(v106 + v115, v124);
      v74 += v122;
      --v72;
    }

    while (v72);

    v1 = v125;
    v33 = v125[7];
    goto LABEL_39;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1C6EC6794()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_1C6ECEC10(v0 + OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6EC681C()
{
  swift_beginAccess();

  return sub_1C6E0D450();
}

uint64_t sub_1C6EC68B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE42C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1C6EE43E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EE42B0();
  sub_1C6EE43C0();
  sub_1C6EC3E24(a1, a2, a3, v10);
  return (*(v8 + 8))(v10, v7);
}

void sub_1C6EC69F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a3;
  v5 = v4;
  v74 = a1;
  v75 = a4;
  v77 = a2;
  v64 = sub_1C6EE3ED0();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = &v62 - v8;
  v9 = sub_1C6EE41A0();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6EE4F20();
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6EE4F00();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C6EE48C0();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F98A8, &qword_1C6EF6BA8);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  v4[4] = v15;
  v67 = OBJC_IVAR____TtC18ComputationalGraph13FeaturesStore_writeQueue;
  v16 = sub_1C6DEC5E8();
  v65 = "Keys should not be requested";
  v66 = v16;
  sub_1C6EE48A0();
  v80 = MEMORY[0x1E69E7CC0];
  sub_1C6ECED54(&qword_1EDEF6770, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE8, &qword_1C6EE9E10);
  sub_1C6DEC6D0(&qword_1EDEF67A8, &qword_1EC1F7FE8, &qword_1C6EE9E10);
  sub_1C6EE50C0();
  (*(v69 + 104))(v68, *MEMORY[0x1E69E8090], v70);
  v17 = v71;
  v18 = v75;
  v19 = sub_1C6EE4F50();
  v21 = v78;
  v20 = v79;
  *(v5 + v67) = v19;
  v5[3] = v72;
  swift_unknownObjectWeakAssign();
  sub_1C6ECEE44(v18, v5 + OBJC_IVAR____TtC18ComputationalGraph13FeaturesStore_url, &unk_1EC1F9AB0, &qword_1C6EE9250);
  sub_1C6ECEE44(v18, v17, &unk_1EC1F9AB0, &qword_1C6EE9250);
  if ((*(v21 + 48))(v17, 1, v20) != 1)
  {
    (*(v21 + 32))(v76, v17, v20);
    v26 = v73;
    v27 = sub_1C6EE41C0();
    if (v26)
    {
      v39 = v26;
      v40 = v62;
      sub_1C6EE3EC0();
      sub_1C6ECED54(&qword_1EDEF66E8, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
      v41 = v64;
      v42 = sub_1C6EE4030();

      (*(v63 + 8))(v40, v41);
      if (v42)
      {

        if (qword_1EDEF8458 != -1)
        {
          swift_once();
        }

        v43 = qword_1EDEF8460;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1C6EE6590;
        sub_1C6ECED54(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v45 = v79;
        v46 = sub_1C6EE5460();
        v48 = v47;
        *(v44 + 56) = MEMORY[0x1E69E6158];
        *(v44 + 64) = sub_1C6DF10E0();
        *(v44 + 32) = v46;
        *(v44 + 40) = v48;
        v49 = sub_1C6EE4EE0();
        sub_1C6EE4730("See no store at url, creating store at %{public}@", 49, 2, &dword_1C6DE9000, v43, v49, v44);

        v51 = v5[4];
        MEMORY[0x1EEE9AC00](v50);
        v24 = v74;
        *(&v62 - 2) = v74;
        os_unfair_lock_lock((v51 + 24));
        sub_1C6ECED9C((v51 + 16));
        os_unfair_lock_unlock((v51 + 24));
        swift_unknownObjectRelease();
        sub_1C6ECEEAC(v18, &unk_1EC1F9AB0, &qword_1C6EE9250);
        (*(v78 + 8))(v76, v45);
        goto LABEL_16;
      }

      v73 = v5;
      if (qword_1EDEF8458 != -1)
      {
        swift_once();
      }

      v72 = qword_1EDEF8460;
      LODWORD(v71) = sub_1C6EE4ED0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1C6EE6B40;
      sub_1C6ECED54(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v53 = v76;
      v54 = v79;
      v55 = sub_1C6EE5460();
      v57 = v56;
      v58 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v59 = sub_1C6DF10E0();
      *(v52 + 64) = v59;
      *(v52 + 32) = v55;
      *(v52 + 40) = v57;
      v80 = 0;
      v81 = 0xE000000000000000;
      swift_getErrorValue();
      sub_1C6EE5480();
      v60 = v80;
      v61 = v81;
      *(v52 + 96) = v58;
      *(v52 + 104) = v59;
      *(v52 + 72) = v60;
      *(v52 + 80) = v61;
      sub_1C6EE4730("Error getting store from supplied url %{public}@. Error=%{public}@", 66, 2, &dword_1C6DE9000, v72, v71, v52);
      swift_unknownObjectRelease();

      sub_1C6ECEEAC(v75, &unk_1EC1F9AB0, &qword_1C6EE9250);
      (*(v78 + 8))(v53, v54);
    }

    else
    {
      v29 = v27;
      v30 = v28;
      if (qword_1EDEF8458 != -1)
      {
        swift_once();
      }

      v31 = qword_1EDEF8460;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C6EE6590;
      sub_1C6ECED54(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v33 = sub_1C6EE5460();
      v35 = v34;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = sub_1C6DF10E0();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      v36 = sub_1C6EE4EE0();
      sub_1C6EE4730("Creating features store from data at %{public}@", 47, 2, &dword_1C6DE9000, v31, v36, v32);

      v38 = v5[4];
      MEMORY[0x1EEE9AC00](v37);
      *(&v62 - 4) = v74;
      *(&v62 - 3) = v29;
      *(&v62 - 2) = v30;

      os_unfair_lock_lock((v38 + 24));
      sub_1C6ECEDB8((v38 + 16));
      os_unfair_lock_unlock((v38 + 24));
      swift_unknownObjectRelease();
      sub_1C6DF1134(v29, v30);
      sub_1C6ECEEAC(v18, &unk_1EC1F9AB0, &qword_1C6EE9250);
      (*(v78 + 8))(v76, v79);
    }

    v24 = v74;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v24);
    return;
  }

  v22 = sub_1C6ECEEAC(v17, &unk_1EC1F9AB0, &qword_1C6EE9250);
  v23 = v5[4];
  MEMORY[0x1EEE9AC00](v22);
  v24 = v74;
  *(&v62 - 2) = v74;
  os_unfair_lock_lock((v23 + 24));
  v25 = v73;
  sub_1C6ECEFDC((v23 + 16));
  if (!v25)
  {
    os_unfair_lock_unlock((v23 + 24));
    swift_unknownObjectRelease();
    sub_1C6ECEEAC(v18, &unk_1EC1F9AB0, &qword_1C6EE9250);
    goto LABEL_16;
  }

  os_unfair_lock_unlock((v23 + 24));
  __break(1u);
}

void *sub_1C6EC7524(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1C6EE4450();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6ECEDD8(a2, v19);
  v17 = a3;
  v18 = a4;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1C6E00D18(a3, a4);
  sub_1C6EE4440();
  sub_1C6ECED54(&qword_1EDEF62F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore, &unk_1C6EF4050);
  sub_1C6EE45D0();
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  type metadata accessor for FeaturesStore.FeaturesStoreData(0);
  v14 = swift_allocObject();
  result = sub_1C6EC2060(v19, v12);
  *a1 = v14;
  return result;
}

void *sub_1C6EC76E8(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_1C6ECEDD8(a2, v10);
  *v6 = sub_1C6E0CA44(MEMORY[0x1E69E7CC0]);
  sub_1C6EE4420();
  type metadata accessor for FeaturesStore.FeaturesStoreData(0);
  v7 = swift_allocObject();
  result = sub_1C6EC2060(v10, v6);
  *a1 = v7;
  return result;
}

uint64_t sub_1C6EC77CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9868, &unk_1C6EF6B40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  if (*a1)
  {
    sub_1C6EC3220(a2, a3, &v16 - v9);
    v11 = sub_1C6EE42C0();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v10, 0, 1, v11);
    return (*(v12 + 32))(a4, v10, v11);
  }

  else
  {
    v14 = sub_1C6EE42C0();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v10, 1, 1, v14);
    sub_1C6EE4250();
    result = (*(v15 + 48))(v10, 1, v14);
    if (result != 1)
    {
      return sub_1C6ECEEAC(v10, &qword_1EC1F9868, &unk_1C6EF6B40);
    }
  }

  return result;
}

uint64_t sub_1C6EC79A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1)
  {

    v7 = sub_1C6EC394C(a2, a3);
  }

  else
  {
    if (qword_1EDEF8458 != -1)
    {
      swift_once();
    }

    v9 = qword_1EDEF8460;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C6EE6590;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1C6DF10E0();
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;

    v11 = sub_1C6EE4EE0();
    sub_1C6EE4730("Tried get features for key %{public}@ but found nil store data", 62, 2, &dword_1C6DE9000, v9, v11, v10);

    v7 = 0;
  }

  *a4 = v7;
  return result;
}

void sub_1C6EC7AD8()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1C6EC874C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C6EC7B58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a3;
  v27 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_1C6EE41A0();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6EE42C0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1C6EE43E0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (v18)
  {

    sub_1C6EE42B0();
    sub_1C6EE43C0();
    sub_1C6EC3E24(v27, a2, v30, v17);
    (*(v15 + 8))(v17, v14);
    v19 = v29;
    sub_1C6ECEE44(v29 + OBJC_IVAR____TtC18ComputationalGraph13FeaturesStore_url, v9, &unk_1EC1F9AB0, &qword_1C6EE9250);
    v20 = v28;
    if ((*(v28 + 48))(v9, 1, v10) == 1)
    {

      return sub_1C6ECEEAC(v9, &unk_1EC1F9AB0, &qword_1C6EE9250);
    }

    else
    {
      (*(v20 + 32))(v12, v9, v10);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1C6ECE40C(Strong, *(v19 + 24), *(v19 + OBJC_IVAR____TtC18ComputationalGraph13FeaturesStore_writeQueue), v18, v12);
      swift_unknownObjectRelease();

      return (*(v20 + 8))(v12, v10);
    }
  }

  else
  {
    v22 = v30;
    if (qword_1EDEF8458 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDEF8460;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C6EE6590;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1C6DF10E0();
    *(v24 + 32) = a2;
    *(v24 + 40) = v22;

    v25 = sub_1C6EE4EE0();
    sub_1C6EE4730("Tried set features for key %{public}@ but found nil store data", 62, 2, &dword_1C6DE9000, v23, v25, v24, v27);
  }
}

uint64_t sub_1C6EC7F34(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDEF8458 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDEF8460;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6EE6590;
  sub_1C6EE41A0();
  sub_1C6ECED54(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v8 = sub_1C6EE5460();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C6DF10E0();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v12 = sub_1C6EE4EE0();
  sub_1C6EE4730("Writing store to disk at %{public}@", 35, 2, &dword_1C6DE9000, v6, v12, v7);

  sub_1C6EE4230();
  v13 = MEMORY[0x1E69E6158];
  if (a4)
  {
    ObjectType = swift_getObjectType();
    (*(a5 + 8))(ObjectType);
  }

  result = swift_allocObject();
  v16 = result;
  *(result + 16) = xmmword_1C6EE6B40;
  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v18 = v6;
      v19 = 0;
      goto LABEL_14;
    }

    v21 = *(a2 + 16);
    v20 = *(a2 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      v18 = v6;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v17)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      v18 = v6;
      v19 = HIDWORD(a2) - a2;
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v18 = v6;
  v19 = BYTE6(a3);
LABEL_14:
  v22 = v13;
  v23 = [objc_opt_self() stringFromByteCount:v19 countStyle:0];
  v24 = sub_1C6EE4A90();
  v26 = v25;

  v16[7] = v22;
  v16[8] = v11;
  v16[4] = v24;
  v16[5] = v26;
  v27 = sub_1C6EE5460();
  v16[12] = v22;
  v16[13] = v11;
  v16[9] = v27;
  v16[10] = v28;
  v29 = sub_1C6EE4EE0();
  sub_1C6EE4730("Store serialized and written to disk with size %{public}@ at %{public}@", 71, 2, &dword_1C6DE9000, v18, v29, v16);
}

uint64_t sub_1C6EC82D0()
{
  sub_1C6ECED2C(v0 + 16);

  sub_1C6ECEEAC(v0 + OBJC_IVAR____TtC18ComputationalGraph13FeaturesStore_url, &unk_1EC1F9AB0, &qword_1C6EE9250);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6EC8394(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore(319);
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

uint64_t sub_1C6EC843C()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    swift_beginAccess();

    v2 = sub_1C6E0D450();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_1C6EC84C4()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1C6ECED10((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_1C6EC8524(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 32);
  os_unfair_lock_lock((v3 + 24));
  sub_1C6ECECF4((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

unint64_t sub_1C6EC8770(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1C6ED98A8(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1C6EC8904(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1C6EC8844(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1C6EC8904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1C6ECEEAC(a4, &qword_1EC1F9860, &qword_1C6EF6B30);
  }

  if (v17 < 1)
  {
    return sub_1C6ECEEAC(a4, &qword_1EC1F9860, &qword_1C6EF6B30);
  }

  result = sub_1C6ECEE44(a4, v15, &unk_1EC1F9A30, &qword_1C6EF6B38);
  if (v12 >= v17)
  {
    return sub_1C6ECEEAC(a4, &qword_1EC1F9860, &qword_1C6EF6B30);
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_1C6EC8A98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_2(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6EC8B68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79C8, &qword_1C6EE6C38);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_2(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6EC8C38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AD0, &qword_1C6EE6C30);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_2(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6EC8D08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_2(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6EC8DE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A60, &qword_1C6EE6950);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_2(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6EC8EB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9870, &unk_1C6EF7590);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_2(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1C6EC9070(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1C6EE5450();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_1C6EE4D00();
        *(v14 + 16) = v13;
      }

      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
      v16[0] = v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v16[1] = v13;
      a4(v16, v17, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_1C6EC91C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
  v9 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v34 = -v19;
    v35 = v18;
    v21 = a1 - a3;
    v28 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v32 = v20;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v20;
    while (1)
    {
      sub_1C6ECEE44(v22, v17, &qword_1EC1F77F8, &unk_1C6EE69B0);
      sub_1C6ECEE44(v23, v13, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v24 = sub_1C6EC2920(v17, v13);
      sub_1C6ECEEAC(v13, &qword_1EC1F77F8, &unk_1C6EE69B0);
      result = sub_1C6ECEEAC(v17, &qword_1EC1F77F8, &unk_1C6EE69B0);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v25 = v36;
        sub_1C6ECEF74(v22, v36, &qword_1EC1F77F8, &unk_1C6EE69B0);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1C6ECEF74(v25, v23, &qword_1EC1F77F8, &unk_1C6EE69B0);
        v23 += v34;
        v22 += v34;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v20 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1C6EC9424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v58 = sub_1C6EE42C0();
  v8 = *(v58 - 8);
  v9 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v44 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v12 = MEMORY[0x1EEE9AC00](v59);
  v53 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v44 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v55 = &v44 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v62 = &v44 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v61 = &v44 - v22;
  v46 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v54 = (v8 + 8);
    v25 = v23 + v24 * (a3 - 1);
    v51 = -v24;
    v52 = v23;
    v26 = a1 - a3;
    v45 = v24;
    v27 = v23 + v24 * a3;
LABEL_5:
    v49 = v25;
    v50 = a3;
    v47 = v27;
    v48 = v26;
    v60 = v26;
    v28 = v59;
    while (1)
    {
      v29 = v61;
      sub_1C6ECEE44(v27, v61, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v30 = v62;
      sub_1C6ECEE44(v25, v62, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v31 = v55;
      sub_1C6ECEE44(v29, v55, &unk_1EC1F9A30, &qword_1C6EF6B38);

      v32 = *(v28 + 48);
      sub_1C6EE43B0();
      v33 = sub_1C6EE43E0();
      v34 = *(*(v33 - 8) + 8);
      v34(v31 + v32, v33);
      v35 = v56;
      sub_1C6ECEE44(v30, v56, &unk_1EC1F9A30, &qword_1C6EF6B38);

      v36 = *(v28 + 48);
      v37 = v57;
      sub_1C6EE43B0();
      v34(v35 + v36, v33);
      v38 = v63;
      v39 = sub_1C6EE4270();
      v40 = *v54;
      v41 = v58;
      v28 = v59;
      (*v54)(v37, v58);
      v40(v38, v41);
      sub_1C6ECEEAC(v62, &unk_1EC1F9A30, &qword_1C6EF6B38);
      result = sub_1C6ECEEAC(v61, &unk_1EC1F9A30, &qword_1C6EF6B38);
      if ((v39 & 1) == 0)
      {
LABEL_4:
        a3 = v50 + 1;
        v25 = v49 + v45;
        v26 = v48 - 1;
        v27 = v47 + v45;
        if (v50 + 1 == v46)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v42 = v53;
      sub_1C6ECEF74(v27, v53, &unk_1EC1F9A30, &qword_1C6EF6B38);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1C6ECEF74(v42, v25, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v25 += v51;
      v27 += v51;
      if (__CFADD__(v60++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6EC9890(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v178 = a1;
  v208 = sub_1C6EE42C0();
  v6 = *(v208 - 8);
  v7 = MEMORY[0x1EEE9AC00](v208);
  v207 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v219 = &v173 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v206 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v173 - v13;
  v205 = sub_1C6EE43E0();
  v15 = *(v205 - 8);
  v16 = MEMORY[0x1EEE9AC00](v205);
  v18 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v204 = &v173 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v203 = &v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v202 = &v173 - v23;
  v221 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v24 = *(v221 - 8);
  v25 = MEMORY[0x1EEE9AC00](v221);
  v201 = &v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v200 = &v173 - v27;
  v218 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v28 = MEMORY[0x1EEE9AC00](v218);
  v220 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v217 = &v173 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
  v187 = *(v31 - 8);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v179 = &v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v193 = &v173 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v199 = &v173 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v216 = &v173 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v173 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v183 = &v173 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v176 = &v173 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v175 = &v173 - v48;
  result = MEMORY[0x1EEE9AC00](v47);
  v174 = &v173 - v50;
  v189 = a3;
  v51 = *(a3 + 8);
  if (v51 < 1)
  {
    v53 = MEMORY[0x1E69E7CC0];
LABEL_115:
    a3 = *v178;
    if (!*v178)
    {
      goto LABEL_160;
    }

    v6 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4 = v190;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_151;
    }

    result = v6;
LABEL_118:
    v222 = result;
    v6 = *(result + 16);
    if (v6 >= 2)
    {
      while (*v189)
      {
        v168 = *(result + 16 * v6);
        v169 = result;
        v170 = *(result + 16 * (v6 - 1) + 40);
        sub_1C6ECBAB8(*v189 + *(v187 + 72) * v168, *v189 + *(v187 + 72) * *(result + 16 * (v6 - 1) + 32), *v189 + *(v187 + 72) * v170, a3);
        if (a4)
        {
        }

        if (v170 < v168)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = sub_1C6ECCA74(v169);
        }

        if (v6 - 2 >= *(v169 + 2))
        {
          goto LABEL_147;
        }

        v171 = &v169[16 * v6];
        *v171 = v168;
        *(v171 + 1) = v170;
        v222 = v169;
        sub_1C6ECC9E8(v6 - 1);
        result = v222;
        v6 = *(v222 + 16);
        if (v6 <= 1)
        {
        }
      }

      goto LABEL_157;
    }
  }

  v52 = 0;
  v211 = (v24 + 48);
  v197 = (v15 + 56);
  v215 = (v15 + 48);
  v196 = (v15 + 32);
  v214 = (v15 + 8);
  v195 = (v6 + 8);
  v53 = MEMORY[0x1E69E7CC0];
  v177 = a4;
  v198 = v18;
  v209 = v14;
  v210 = v31;
  while (1)
  {
    v54 = v52;
    v182 = v53;
    if (v52 + 1 >= v51)
    {
      v79 = v52 + 1;
      goto LABEL_25;
    }

    v55 = v52;
    v188 = v51;
    v56 = *v189;
    a3 = *(v187 + 72);
    v57 = *v189 + a3 * (v52 + 1);
    v58 = v174;
    sub_1C6ECEE44(v57, v174, &qword_1EC1F77F8, &unk_1C6EE69B0);
    v59 = v55;
    v213 = v56;
    v60 = v56 + a3 * v55;
    v6 = &qword_1EC1F77F8;
    v61 = v175;
    sub_1C6ECEE44(v60, v175, &qword_1EC1F77F8, &unk_1C6EE69B0);
    v62 = v190;
    LODWORD(v212) = sub_1C6EC2920(v58, v61);
    v190 = v62;
    v63 = v176;
    if (v62)
    {
      sub_1C6ECEEAC(v61, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v172 = v58;
LABEL_129:
      sub_1C6ECEEAC(v172, &qword_1EC1F77F8, &unk_1C6EE69B0);
    }

    sub_1C6ECEEAC(v61, &qword_1EC1F77F8, &unk_1C6EE69B0);
    result = sub_1C6ECEEAC(v58, &qword_1EC1F77F8, &unk_1C6EE69B0);
    v173 = v59;
    v64 = v59 + 2;
    v65 = v213 + a3 * (v59 + 2);
    v66 = a3;
    v213 = a3;
    do
    {
      v79 = v188;
      if (v188 == v64)
      {
        goto LABEL_12;
      }

      sub_1C6ECEE44(v65, v63, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v67 = v183;
      sub_1C6ECEE44(v57, v183, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v68 = v190;
      v69 = sub_1C6EC2920(v63, v67);
      a3 = v63;
      v190 = v68;
      if (v68)
      {
        sub_1C6ECEEAC(v67, &qword_1EC1F77F8, &unk_1C6EE69B0);
        v172 = v63;
        goto LABEL_129;
      }

      v70 = v69;
      v71 = v67;
      v6 = &qword_1EC1F77F8;
      sub_1C6ECEEAC(v71, &qword_1EC1F77F8, &unk_1C6EE69B0);
      result = sub_1C6ECEEAC(a3, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v72 = v212 ^ v70;
      ++v64;
      v66 = v213;
      v65 += v213;
      v57 += v213;
      v63 = a3;
    }

    while ((v72 & 1) == 0);
    v79 = v64 - 1;
LABEL_12:
    a4 = v177;
    v14 = v209;
    v54 = v173;
    if (v212)
    {
      break;
    }

LABEL_25:
    v80 = v189[1];
    if (v79 >= v80)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v79, v54))
    {
      goto LABEL_150;
    }

    if (v79 - v54 >= a4)
    {
      goto LABEL_34;
    }

    if (__OFADD__(v54, a4))
    {
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    if (v54 + a4 >= v80)
    {
      v81 = v189[1];
    }

    else
    {
      v81 = v54 + a4;
    }

    a4 = &unk_1C6EE69B0;
    if (v81 < v54)
    {
      goto LABEL_153;
    }

    if (v79 == v81)
    {
LABEL_34:
      v82 = v79;
      if (v79 < v54)
      {
        goto LABEL_149;
      }
    }

    else
    {
      v129 = *v189;
      v130 = *(v187 + 72);
      v131 = *v189 + v130 * (v79 - 1);
      v191 = -v130;
      v173 = v54;
      v132 = v54 - v79;
      v192 = v129;
      v180 = v130;
      v6 = v129 + v79 * v130;
      v194 = v42;
      v181 = v81;
      do
      {
        v188 = v79;
        v184 = v6;
        v185 = v132;
        v133 = v132;
        v186 = v131;
        v134 = v131;
        while (1)
        {
          v212 = v6;
          v213 = v133;
          v135 = v14;
          sub_1C6ECEE44(v6, v42, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v136 = v216;
          sub_1C6ECEE44(v134, v216, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v137 = v42;
          v138 = v199;
          sub_1C6ECEE44(v137, v199, &qword_1EC1F77F8, &unk_1C6EE69B0);

          v139 = v217;
          sub_1C6ECEF0C(v138 + *(v31 + 48), v217, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          v140 = v211;
          sub_1C6ECEE44(v136, v138, &qword_1EC1F77F8, &unk_1C6EE69B0);

          sub_1C6ECEF0C(v138 + *(v31 + 48), v220, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          v141 = v202;
          sub_1C6ECEE44(v139 + *(v218 + 24), v202, &qword_1EC1F7D58, &qword_1C6EE89A0);
          v142 = *v140;
          v143 = v221;
          if ((*v140)(v141, 1, v221) == 1)
          {
            v144 = v200;
            *v200 = 0;
            sub_1C6EE4420();
            v145 = v205;
            (*v197)(&v144[*(v143 + 24)], 1, 1, v205);
            v146 = v135;
            if (v142(v141, 1, v143) != 1)
            {
              sub_1C6ECEEAC(v141, &qword_1EC1F7D58, &qword_1C6EE89A0);
            }
          }

          else
          {
            v144 = v200;
            sub_1C6ECEF0C(v141, v200, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            v145 = v205;
            v146 = v135;
          }

          sub_1C6ECEE44(&v144[*(v143 + 24)], v146, &qword_1EC1F7D48, &qword_1C6EE8990);
          v147 = *v215;
          if ((*v215)(v146, 1, v145) == 1)
          {
            v148 = v204;
            sub_1C6EE43D0();
            sub_1C6ECEC10(v144, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            v149 = v148;
            if (v147(v146, 1, v145) != 1)
            {
              sub_1C6ECEEAC(v146, &qword_1EC1F7D48, &qword_1C6EE8990);
            }
          }

          else
          {
            sub_1C6ECEC10(v144, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            v149 = v204;
            (*v196)(v204, v146, v145);
          }

          sub_1C6EE43B0();
          v150 = *v214;
          (*v214)(v149, v145);
          v151 = v203;
          sub_1C6ECEE44(v220 + *(v218 + 24), v203, &qword_1EC1F7D58, &qword_1C6EE89A0);
          v152 = v221;
          if (v142(v151, 1, v221) == 1)
          {
            v153 = v201;
            *v201 = 0;
            sub_1C6EE4420();
            (*v197)(&v153[*(v152 + 24)], 1, 1, v145);
            v154 = v152;
            v155 = v153;
            a4 = &unk_1C6EE69B0;
            if (v142(v151, 1, v154) != 1)
            {
              sub_1C6ECEEAC(v151, &qword_1EC1F7D58, &qword_1C6EE89A0);
            }
          }

          else
          {
            v155 = v201;
            sub_1C6ECEF0C(v151, v201, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            a4 = &unk_1C6EE69B0;
          }

          v156 = v206;
          sub_1C6ECEE44(&v155[*(v221 + 24)], v206, &qword_1EC1F7D48, &qword_1C6EE8990);
          if (v147(v156, 1, v145) == 1)
          {
            v157 = v198;
            sub_1C6EE43D0();
            sub_1C6ECEC10(v155, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            if (v147(v156, 1, v145) != 1)
            {
              sub_1C6ECEEAC(v156, &qword_1EC1F7D48, &qword_1C6EE8990);
            }
          }

          else
          {
            sub_1C6ECEC10(v155, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            v157 = v198;
            (*v196)(v198, v156, v145);
          }

          v158 = v207;
          sub_1C6EE43B0();
          v150(v157, v145);
          v159 = v219;
          v160 = sub_1C6EE4270();
          v161 = *v195;
          v162 = v158;
          v163 = v208;
          (*v195)(v162, v208);
          v161(v159, v163);
          a3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures;
          sub_1C6ECEC10(v220, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          sub_1C6ECEC10(v217, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          sub_1C6ECEEAC(v216, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v42 = v194;
          result = sub_1C6ECEEAC(v194, &qword_1EC1F77F8, &unk_1C6EE69B0);
          if ((v160 & 1) == 0)
          {
            break;
          }

          v14 = v209;
          v31 = v210;
          v164 = v213;
          if (!v192)
          {
            goto LABEL_155;
          }

          v165 = v212;
          a3 = v193;
          sub_1C6ECEF74(v212, v193, &qword_1EC1F77F8, &unk_1C6EE69B0);
          swift_arrayInitWithTakeFrontToBack();
          sub_1C6ECEF74(a3, v134, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v134 += v191;
          v6 = v165 + v191;
          v166 = __CFADD__(v164, 1);
          v133 = v164 + 1;
          if (v166)
          {
            goto LABEL_87;
          }
        }

        v14 = v209;
        v31 = v210;
LABEL_87:
        v79 = v188 + 1;
        v131 = v186 + v180;
        v132 = v185 - 1;
        v6 = v184 + v180;
        v82 = v181;
      }

      while (v188 + 1 != v181);
      v54 = v173;
      if (v181 < v173)
      {
        goto LABEL_149;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v53 = v182;
    }

    else
    {
      result = sub_1C6ED92D4(0, *(v182 + 2) + 1, 1, v182);
      v53 = result;
    }

    a3 = *(v53 + 2);
    v83 = *(v53 + 3);
    v6 = a3 + 1;
    if (a3 >= v83 >> 1)
    {
      result = sub_1C6ED92D4((v83 > 1), a3 + 1, 1, v53);
      v53 = result;
    }

    *(v53 + 2) = v6;
    v84 = &v53[16 * a3];
    *(v84 + 4) = v54;
    *(v84 + 5) = v82;
    v85 = v82;
    v86 = *v178;
    if (!*v178)
    {
      goto LABEL_159;
    }

    if (a3)
    {
      while (1)
      {
        a4 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v87 = *(v53 + 4);
          v88 = *(v53 + 5);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_54:
          if (v90)
          {
            goto LABEL_138;
          }

          v103 = &v53[16 * v6];
          v105 = *v103;
          v104 = *(v103 + 1);
          v106 = __OFSUB__(v104, v105);
          v107 = v104 - v105;
          v108 = v106;
          if (v106)
          {
            goto LABEL_141;
          }

          v109 = &v53[16 * a4 + 32];
          v111 = *v109;
          v110 = *(v109 + 1);
          v97 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v97)
          {
            goto LABEL_144;
          }

          if (__OFADD__(v107, v112))
          {
            goto LABEL_145;
          }

          if (v107 + v112 >= v89)
          {
            if (v89 < v112)
            {
              a4 = v6 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v113 = &v53[16 * v6];
        v115 = *v113;
        v114 = *(v113 + 1);
        v97 = __OFSUB__(v114, v115);
        v107 = v114 - v115;
        v108 = v97;
LABEL_68:
        if (v108)
        {
          goto LABEL_140;
        }

        v116 = &v53[16 * a4];
        v118 = *(v116 + 4);
        v117 = *(v116 + 5);
        v97 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v97)
        {
          goto LABEL_143;
        }

        if (v119 < v107)
        {
          goto LABEL_3;
        }

LABEL_75:
        a3 = a4 - 1;
        if (a4 - 1 >= v6)
        {
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
LABEL_150:
          __break(1u);
LABEL_151:
          result = sub_1C6ECCA74(v6);
          goto LABEL_118;
        }

        if (!*v189)
        {
          goto LABEL_156;
        }

        v124 = v53;
        v6 = *&v53[16 * a3 + 32];
        v125 = *&v53[16 * a4 + 40];
        v126 = v190;
        sub_1C6ECBAB8(*v189 + *(v187 + 72) * v6, *v189 + *(v187 + 72) * *&v53[16 * a4 + 32], *v189 + *(v187 + 72) * v125, v86);
        v190 = v126;
        if (v126)
        {
        }

        if (v125 < v6)
        {
          goto LABEL_134;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v127 = v124;
        }

        else
        {
          v127 = sub_1C6ECCA74(v124);
        }

        v31 = v210;
        if (a3 >= *(v127 + 2))
        {
          goto LABEL_135;
        }

        v128 = &v127[16 * a3];
        *(v128 + 4) = v6;
        *(v128 + 5) = v125;
        v222 = v127;
        result = sub_1C6ECC9E8(a4);
        v53 = v222;
        v6 = *(v222 + 16);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v91 = &v53[16 * v6 + 32];
      v92 = *(v91 - 64);
      v93 = *(v91 - 56);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_136;
      }

      v96 = *(v91 - 48);
      v95 = *(v91 - 40);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_137;
      }

      v98 = &v53[16 * v6];
      v100 = *v98;
      v99 = *(v98 + 1);
      v97 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v97)
      {
        goto LABEL_139;
      }

      v97 = __OFADD__(v89, v101);
      v102 = v89 + v101;
      if (v97)
      {
        goto LABEL_142;
      }

      if (v102 >= v94)
      {
        v120 = &v53[16 * a4 + 32];
        v122 = *v120;
        v121 = *(v120 + 1);
        v97 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v97)
        {
          goto LABEL_148;
        }

        if (v89 < v123)
        {
          a4 = v6 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v51 = v189[1];
    v52 = v85;
    a4 = v177;
    if (v85 >= v51)
    {
      goto LABEL_115;
    }
  }

  if (v79 >= v173)
  {
    if (v173 < v79)
    {
      v194 = v42;
      v73 = v209;
      v74 = v66 * (v79 - 1);
      v75 = v79 * v66;
      v76 = v79;
      v77 = v173 * v66;
      do
      {
        if (v54 != --v76)
        {
          a3 = *v189;
          if (!*v189)
          {
            goto LABEL_158;
          }

          v78 = v79;
          v6 = a3 + v77;
          sub_1C6ECEF74(a3 + v77, v179, &qword_1EC1F77F8, &unk_1C6EE69B0);
          if (v77 < v74 || v6 >= a3 + v75)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v77 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1C6ECEF74(v179, a3 + v74, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v79 = v78;
          v66 = v213;
        }

        ++v54;
        v74 -= v66;
        v75 -= v66;
        v77 += v66;
      }

      while (v54 < v76);
      a4 = v177;
      v14 = v73;
      v31 = v210;
      v42 = v194;
      v54 = v173;
    }

    goto LABEL_25;
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}

uint64_t sub_1C6ECAD68(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v148 = a1;
  v167 = sub_1C6EE42C0();
  v8 = *(v167 - 8);
  v9 = MEMORY[0x1EEE9AC00](v167);
  v166 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v170 = &v144 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v151 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v162 = &v144 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v165 = &v144 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v164 = &v144 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v172 = &v144 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v171 = &v144 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v145 = &v144 - v27;
  result = MEMORY[0x1EEE9AC00](v26);
  v144 = &v144 - v30;
  v31 = *(a3 + 8);
  v158 = a3;
  if (v31 < 1)
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v32 = *v148;
    if (!*v148)
    {
      goto LABEL_138;
    }

    a3 = v29;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_100;
  }

  v32 = 0;
  v163 = (v8 + 8);
  v33 = MEMORY[0x1E69E7CC0];
  v34 = &unk_1EC1F9A30;
  v157 = v13;
  v147 = a4;
  v35 = result;
  v168 = result;
LABEL_4:
  v36 = v32 + 1;
  v152 = v32;
  if (v32 + 1 >= v31)
  {
    v48 = v32 + 1;
  }

  else
  {
    v159 = v31;
    v37 = *v29;
    v38 = v13[9];
    v39 = *v29 + v38 * v36;
    v40 = v34;
    v41 = v144;
    sub_1C6ECEE44(v39, v144, v40, &qword_1C6EF6B38);
    v42 = v38;
    v169 = v37;
    v43 = v37 + v38 * v152;
    v32 = v152;
    v44 = v145;
    sub_1C6ECEE44(v43, v145, v40, &qword_1C6EF6B38);
    LODWORD(v156) = sub_1C6EC4B1C(v41, v44);
    if (v5)
    {
      sub_1C6ECEEAC(v44, &unk_1EC1F9A30, &qword_1C6EF6B38);
      sub_1C6ECEEAC(v41, &unk_1EC1F9A30, &qword_1C6EF6B38);
    }

    v146 = v33;
    v45 = v44;
    a3 = &qword_1C6EF6B38;
    sub_1C6ECEEAC(v45, v40, &qword_1C6EF6B38);
    result = sub_1C6ECEEAC(v41, v40, &qword_1C6EF6B38);
    v46 = v32 + 2;
    v33 = (v169 + v42 * (v32 + 2));
    v34 = v40;
    v47 = v42;
    v160 = v42;
    v155 = 0;
    while (1)
    {
      v48 = v159;
      if (v159 == v46)
      {
        break;
      }

      v49 = v171;
      v169 = v46;
      sub_1C6ECEE44(v33, v171, v34, &qword_1C6EF6B38);
      v161 = v39;
      sub_1C6ECEE44(v39, v172, v34, &qword_1C6EF6B38);
      v50 = v49;
      v51 = v164;
      sub_1C6ECEE44(v50, v164, v34, &qword_1C6EF6B38);

      v52 = *(v168 + 48);
      v53 = v170;
      sub_1C6EE43B0();
      v54 = sub_1C6EE43E0();
      v55 = *(*(v54 - 8) + 8);
      v55(v51 + v52, v54);
      v56 = v165;
      sub_1C6ECEE44(v172, v165, v34, &qword_1C6EF6B38);

      v57 = *(v168 + 48);
      v58 = v166;
      sub_1C6EE43B0();
      v55(v56 + v57, v54);
      v32 = sub_1C6EE4270() & 1;
      a3 = v163;
      v59 = *v163;
      v60 = v58;
      v34 = &unk_1EC1F9A30;
      v61 = v167;
      (*v163)(v60, v167);
      v62 = v53;
      v5 = v155;
      v63 = v61;
      v35 = v168;
      v59(v62, v63);
      sub_1C6ECEEAC(v172, &unk_1EC1F9A30, &qword_1C6EF6B38);
      result = sub_1C6ECEEAC(v171, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v47 = v160;
      v46 = v169 + 1;
      v33 += v160;
      v39 = v161 + v160;
      if ((v156 & 1) != v32)
      {
        v48 = v169;
        break;
      }
    }

    a4 = v147;
    v13 = v157;
    v29 = v158;
    if ((v156 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v48 < v152)
    {
      goto LABEL_131;
    }

    if (v152 < v48)
    {
      a3 = v47 * (v48 - 1);
      v64 = v48 * v47;
      v159 = v48;
      v65 = v48;
      v66 = v152;
      v67 = v152 * v47;
      do
      {
        if (v66 != --v65)
        {
          v68 = *v29;
          if (!*v29)
          {
            goto LABEL_135;
          }

          v32 = v68 + v67;
          sub_1C6ECEF74(v68 + v67, v151, v34, &qword_1C6EF6B38);
          if (v67 < a3 || v32 >= (v68 + v64))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v67 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1C6ECEF74(v151, v68 + a3, v34, &qword_1C6EF6B38);
          v29 = v158;
          v47 = v160;
        }

        ++v66;
        a3 -= v47;
        v64 -= v47;
        v67 += v47;
      }

      while (v66 < v65);
      v13 = v157;
      v33 = v146;
      a4 = v147;
      v35 = v168;
      v48 = v159;
    }

    else
    {
LABEL_24:
      v33 = v146;
    }
  }

  v69 = v29[1];
  if (v48 >= v69)
  {
    goto LABEL_35;
  }

  if (__OFSUB__(v48, v152))
  {
    goto LABEL_128;
  }

  if (v48 - v152 >= a4)
  {
LABEL_35:
    v32 = v48;
    goto LABEL_36;
  }

  if (__OFADD__(v152, a4))
  {
    goto LABEL_129;
  }

  if (v152 + a4 >= v69)
  {
    v32 = v29[1];
  }

  else
  {
    v32 = v152 + a4;
  }

  if (v32 < v152)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    result = sub_1C6ECCA74(v33);
    v33 = result;
LABEL_100:
    v173 = v33;
    v139 = *(v33 + 2);
    if (v139 >= 2)
    {
      while (1)
      {
        v140 = *a3;
        if (!*a3)
        {
          goto LABEL_136;
        }

        a3 = v139 - 1;
        v141 = *&v33[16 * v139];
        v142 = *&v33[16 * v139 + 24];
        sub_1C6ECC1A4(v140 + v13[9] * v141, v140 + v13[9] * *&v33[16 * v139 + 16], v140 + v13[9] * v142, v32);
        if (v5)
        {
        }

        if (v142 < v141)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1C6ECCA74(v33);
        }

        if (v139 - 2 >= *(v33 + 2))
        {
          goto LABEL_126;
        }

        v143 = &v33[16 * v139];
        *v143 = v141;
        *(v143 + 1) = v142;
        v173 = v33;
        result = sub_1C6ECC9E8(a3);
        v33 = v173;
        v139 = *(v173 + 2);
        a3 = v158;
        if (v139 <= 1)
        {
        }
      }
    }
  }

  if (v48 == v32)
  {
    goto LABEL_35;
  }

  v146 = v33;
  v155 = v5;
  v115 = *v29;
  v116 = v13[9];
  v117 = *v29 + v116 * (v48 - 1);
  v160 = -v116;
  v161 = v115;
  v118 = v152 - v48;
  v149 = v116;
  v119 = v115 + v48 * v116;
  v120 = v35;
  v150 = v32;
LABEL_90:
  v159 = v48;
  v153 = v119;
  v154 = v118;
  v121 = v118;
  v156 = v117;
  while (1)
  {
    v169 = v121;
    v122 = v171;
    sub_1C6ECEE44(v119, v171, v34, &qword_1C6EF6B38);
    v123 = v172;
    sub_1C6ECEE44(v117, v172, v34, &qword_1C6EF6B38);
    v124 = v164;
    sub_1C6ECEE44(v122, v164, v34, &qword_1C6EF6B38);

    v125 = *(v120 + 48);
    sub_1C6EE43B0();
    v126 = sub_1C6EE43E0();
    v127 = v120;
    v128 = *(*(v126 - 8) + 8);
    v128(v124 + v125, v126);
    v129 = v165;
    sub_1C6ECEE44(v123, v165, &unk_1EC1F9A30, &qword_1C6EF6B38);

    v130 = *(v127 + 48);
    v131 = v166;
    sub_1C6EE43B0();
    v128(v129 + v130, v126);
    v13 = &qword_1C6EF6B38;
    v132 = v170;
    LOBYTE(v127) = sub_1C6EE4270();
    a3 = v163;
    v133 = *v163;
    v134 = v167;
    (*v163)(v131, v167);
    v135 = v134;
    v34 = &unk_1EC1F9A30;
    v133(v132, v135);
    sub_1C6ECEEAC(v172, &unk_1EC1F9A30, &qword_1C6EF6B38);
    result = sub_1C6ECEEAC(v171, &unk_1EC1F9A30, &qword_1C6EF6B38);
    if ((v127 & 1) == 0)
    {
      v120 = v168;
LABEL_89:
      v48 = v159 + 1;
      v117 = v156 + v149;
      v118 = v154 - 1;
      v119 = v153 + v149;
      v32 = v150;
      if (v159 + 1 != v150)
      {
        goto LABEL_90;
      }

      v35 = v120;
      v5 = v155;
      v33 = v146;
LABEL_36:
      if (v32 < v152)
      {
        goto LABEL_127;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6ED92D4(0, *(v33 + 2) + 1, 1, v33);
        v33 = result;
      }

      a3 = *(v33 + 2);
      v70 = *(v33 + 3);
      v71 = a3 + 1;
      v29 = v158;
      if (a3 >= v70 >> 1)
      {
        result = sub_1C6ED92D4((v70 > 1), a3 + 1, 1, v33);
        v29 = v158;
        v33 = result;
      }

      *(v33 + 2) = v71;
      v72 = &v33[16 * a3];
      *(v72 + 4) = v152;
      *(v72 + 5) = v32;
      if (!*v148)
      {
        goto LABEL_137;
      }

      if (a3)
      {
        v13 = *v148;
        while (1)
        {
          v73 = v71 - 1;
          if (v71 >= 4)
          {
            break;
          }

          if (v71 == 3)
          {
            v74 = *(v33 + 4);
            v75 = *(v33 + 5);
            v84 = __OFSUB__(v75, v74);
            v76 = v75 - v74;
            v77 = v84;
LABEL_57:
            if (v77)
            {
              goto LABEL_116;
            }

            v90 = &v33[16 * v71];
            v92 = *v90;
            v91 = *(v90 + 1);
            v93 = __OFSUB__(v91, v92);
            v94 = v91 - v92;
            v95 = v93;
            if (v93)
            {
              goto LABEL_119;
            }

            v96 = &v33[16 * v73 + 32];
            v98 = *v96;
            v97 = *(v96 + 1);
            v84 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v84)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v94, v99))
            {
              goto LABEL_123;
            }

            if (v94 + v99 >= v76)
            {
              if (v76 < v99)
              {
                v73 = v71 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v100 = &v33[16 * v71];
          v102 = *v100;
          v101 = *(v100 + 1);
          v84 = __OFSUB__(v101, v102);
          v94 = v101 - v102;
          v95 = v84;
LABEL_71:
          if (v95)
          {
            goto LABEL_118;
          }

          v103 = &v33[16 * v73];
          v105 = *(v103 + 4);
          v104 = *(v103 + 5);
          v84 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v84)
          {
            goto LABEL_121;
          }

          if (v106 < v94)
          {
            goto LABEL_3;
          }

LABEL_78:
          a3 = v73 - 1;
          if (v73 - 1 >= v71)
          {
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
            goto LABEL_130;
          }

          if (!*v29)
          {
            goto LABEL_134;
          }

          v111 = *&v33[16 * a3 + 32];
          v112 = v73;
          v113 = *&v33[16 * v73 + 40];
          sub_1C6ECC1A4(*v29 + v157[9] * v111, *v29 + v157[9] * *&v33[16 * v73 + 32], *v29 + v157[9] * v113, v13);
          if (v5)
          {
          }

          if (v113 < v111)
          {
            goto LABEL_112;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1C6ECCA74(v33);
          }

          if (a3 >= *(v33 + 2))
          {
            goto LABEL_113;
          }

          v114 = &v33[16 * a3];
          *(v114 + 4) = v111;
          *(v114 + 5) = v113;
          v173 = v33;
          result = sub_1C6ECC9E8(v112);
          v33 = v173;
          v71 = *(v173 + 2);
          v35 = v168;
          v29 = v158;
          if (v71 <= 1)
          {
            goto LABEL_3;
          }
        }

        v78 = &v33[16 * v71 + 32];
        v79 = *(v78 - 64);
        v80 = *(v78 - 56);
        v84 = __OFSUB__(v80, v79);
        v81 = v80 - v79;
        if (v84)
        {
          goto LABEL_114;
        }

        v83 = *(v78 - 48);
        v82 = *(v78 - 40);
        v84 = __OFSUB__(v82, v83);
        v76 = v82 - v83;
        v77 = v84;
        if (v84)
        {
          goto LABEL_115;
        }

        v85 = &v33[16 * v71];
        v87 = *v85;
        v86 = *(v85 + 1);
        v84 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v84)
        {
          goto LABEL_117;
        }

        v84 = __OFADD__(v76, v88);
        v89 = v76 + v88;
        if (v84)
        {
          goto LABEL_120;
        }

        if (v89 >= v81)
        {
          v107 = &v33[16 * v73 + 32];
          v109 = *v107;
          v108 = *(v107 + 1);
          v84 = __OFSUB__(v108, v109);
          v110 = v108 - v109;
          if (v84)
          {
            goto LABEL_124;
          }

          if (v76 < v110)
          {
            v73 = v71 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v31 = v29[1];
      a4 = v147;
      v13 = v157;
      if (v32 >= v31)
      {
        goto LABEL_98;
      }

      goto LABEL_4;
    }

    v136 = v169;
    if (!v161)
    {
      break;
    }

    v137 = v162;
    sub_1C6ECEF74(v119, v162, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v120 = v168;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6ECEF74(v137, v117, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v117 += v160;
    v119 += v160;
    v138 = __CFADD__(v136, 1);
    v121 = v136 + 1;
    if (v138)
    {
      goto LABEL_89;
    }
  }

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
  return result;
}

unint64_t sub_1C6ECBAB8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
  v10 = MEMORY[0x1EEE9AC00](v71);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v62 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v20 = &v62 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  result = a2;
  v23 = a1;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v25 = (a2 - a1) / v22;
    v76 = a1;
    v26 = a4;
    v75 = a4;
    if (v25 < v24 / v22)
    {
      v27 = v25 * v22;
      if (a4 < v23 || v23 + v27 <= a4)
      {
        v28 = v23;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v23)
        {
          goto LABEL_17;
        }

        v28 = v23;
        swift_arrayInitWithTakeBackToFront();
      }

      v23 = v28;
      v26 = a4;
      result = a2;
LABEL_17:
      v72 = v4;
      v70 = v26 + v27;
      v74 = v26 + v27;
      if (v27 >= 1 && result < a3)
      {
        v68 = v16;
        v69 = v20;
        v67 = a3;
        while (1)
        {
          v73 = v23;
          v33 = v22;
          v34 = result;
          v35 = v69;
          sub_1C6ECEE44(result, v69, &qword_1EC1F77F8, &unk_1C6EE69B0);
          sub_1C6ECEE44(v26, v16, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v36 = v72;
          v37 = sub_1C6EC2920(v35, v16);
          v72 = v36;
          if (v36)
          {
            sub_1C6ECEEAC(v16, &qword_1EC1F77F8, &unk_1C6EE69B0);
            sub_1C6ECEEAC(v35, &qword_1EC1F77F8, &unk_1C6EE69B0);
            goto LABEL_65;
          }

          v38 = v37;
          sub_1C6ECEEAC(v16, &qword_1EC1F77F8, &unk_1C6EE69B0);
          sub_1C6ECEEAC(v35, &qword_1EC1F77F8, &unk_1C6EE69B0);
          if ((v38 & 1) == 0)
          {
            v22 = v33;
            v40 = v26;
            v26 += v33;
            v39 = v73;
            if (v73 < v40 || v73 >= v26)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v73;
            }

            else if (v73 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
              v39 = v73;
            }

            v75 = v26;
            result = v34;
            goto LABEL_37;
          }

          v22 = v33;
          v39 = v73;
          if (v73 < v34 || v73 >= v34 + v33)
          {
            break;
          }

          if (v73 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_33:
            v39 = v73;
          }

          result = v34 + v33;
LABEL_37:
          v23 = v39 + v22;
          v76 = v23;
          if (v26 < v70)
          {
            v16 = v68;
            if (result < v67)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_33;
      }

      goto LABEL_65;
    }

    v29 = v24 / v22 * v22;
    v69 = v18;
    if (a4 < result || result + v29 <= a4)
    {
      v30 = result;
      v31 = v23;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == result)
      {
LABEL_42:
        v41 = v26 + v29;
        if (v29 < 1)
        {
LABEL_60:
          v72 = v5;
          v76 = result;
          v74 = v41;
          goto LABEL_65;
        }

        v42 = -v22;
        v43 = &qword_1EC1F77F8;
        v44 = v26 + v29;
        v45 = &unk_1C6EE69B0;
        v65 = v26;
        v73 = v23;
        v68 = -v22;
LABEL_44:
        v63 = v41;
        v46 = result + v42;
        v66 = result + v42;
        v67 = result;
        while (1)
        {
          if (result <= v23)
          {
            v72 = v5;
            v76 = result;
            v74 = v63;
            goto LABEL_65;
          }

          v47 = a3;
          v64 = v41;
          v49 = v68;
          v48 = v69;
          v70 = v44;
          v50 = v44 + v68;
          v51 = v5;
          v52 = v43;
          v53 = v45;
          sub_1C6ECEE44(v44 + v68, v69, v43, v45);
          sub_1C6ECEE44(v46, v12, v52, v53);
          v54 = sub_1C6EC2920(v48, v12);
          v55 = v12;
          if (v51)
          {
            break;
          }

          v56 = v54;
          a3 = v47 + v49;
          v57 = v55;
          sub_1C6ECEEAC(v55, v52, v53);
          sub_1C6ECEEAC(v48, v52, v53);
          if (v56)
          {
            v72 = 0;
            if (v47 < v67 || a3 >= v67)
            {
              v61 = v66;
              swift_arrayInitWithTakeFrontToBack();
              v12 = v57;
              result = v61;
              v23 = v73;
            }

            else
            {
              v12 = v57;
              result = v66;
              v23 = v73;
              if (v47 != v67)
              {
                v59 = v66;
                v60 = v73;
                swift_arrayInitWithTakeBackToFront();
                v23 = v60;
                result = v59;
              }
            }

            v41 = v64;
            v44 = v70;
            v42 = v68;
            v43 = v52;
            v45 = v53;
            v5 = v72;
            if (v70 <= v65)
            {
              goto LABEL_60;
            }

            goto LABEL_44;
          }

          v41 = v50;
          if (v47 < v70 || a3 >= v70)
          {
            swift_arrayInitWithTakeFrontToBack();
            v41 = v50;
            v12 = v57;
            v23 = v73;
          }

          else
          {
            v12 = v57;
            v23 = v73;
            if (v47 != v70)
            {
              v58 = v73;
              swift_arrayInitWithTakeBackToFront();
              v23 = v58;
              v41 = v50;
            }
          }

          v44 = v41;
          v46 = v66;
          v43 = v52;
          v45 = v53;
          v5 = 0;
          result = v67;
          if (v50 <= v65)
          {
            goto LABEL_60;
          }
        }

        sub_1C6ECEEAC(v12, &qword_1EC1F77F8, &unk_1C6EE69B0);
        sub_1C6ECEEAC(v48, &qword_1EC1F77F8, &unk_1C6EE69B0);
        v76 = v67;
        v74 = v64;
LABEL_65:
        sub_1C6ECCB80(&v76, &v75, &v74, &qword_1EC1F77F8, &unk_1C6EE69B0);
        return 1;
      }

      v30 = result;
      v31 = v23;
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v31;
    v26 = a4;
    result = v30;
    goto LABEL_42;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1C6ECC1A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v79 = sub_1C6EE42C0();
  v8 = *(v79 - 8);
  v9 = MEMORY[0x1EEE9AC00](v79);
  v78 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = v66 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v12 = MEMORY[0x1EEE9AC00](v84);
  v76 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v75 = v66 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v74 = v66 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v85 = v66 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_60;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_61;
  }

  v23 = (a2 - a1) / v21;
  v88 = a1;
  v87 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v25;
    if (v25 >= 1)
    {
      v45 = -v21;
      v68 = (v8 + 8);
      v69 = -v21;
      v46 = v44;
      v81 = a4;
      v82 = a1;
      while (2)
      {
        while (1)
        {
          v66[0] = v44;
          v47 = a2 + v45;
          v83 = a2 + v45;
          v70 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v88 = a2;
              v86 = v66[0];
              goto LABEL_58;
            }

            v67 = v44;
            v80 = a3 + v45;
            v71 = (v46 + v45);
            v49 = v85;
            v73 = a3;
            sub_1C6ECEE44(v46 + v45, v85, &unk_1EC1F9A30, &qword_1C6EF6B38);
            v50 = v74;
            sub_1C6ECEE44(v47, v74, &unk_1EC1F9A30, &qword_1C6EF6B38);
            v72 = v46;
            v51 = v75;
            sub_1C6ECEE44(v49, v75, &unk_1EC1F9A30, &qword_1C6EF6B38);

            v52 = v84;
            v53 = *(v84 + 48);
            v54 = v77;
            sub_1C6EE43B0();
            v55 = sub_1C6EE43E0();
            v56 = *(*(v55 - 8) + 8);
            v56(v51 + v53, v55);
            v57 = v76;
            sub_1C6ECEE44(v50, v76, &unk_1EC1F9A30, &qword_1C6EF6B38);

            v58 = *(v52 + 48);
            v59 = v78;
            sub_1C6EE43B0();
            v56(v57 + v58, v55);
            v60 = sub_1C6EE4270();
            v61 = *v68;
            v62 = v79;
            (*v68)(v59, v79);
            v61(v54, v62);
            sub_1C6ECEEAC(v50, &unk_1EC1F9A30, &qword_1C6EF6B38);
            sub_1C6ECEEAC(v85, &unk_1EC1F9A30, &qword_1C6EF6B38);
            if (v60)
            {
              break;
            }

            v63 = v71;
            v44 = v71;
            a3 = v80;
            v64 = v81;
            if (v73 < v72 || v80 >= v72)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v82;
              v47 = v83;
              v45 = v69;
            }

            else
            {
              a1 = v82;
              v47 = v83;
              v45 = v69;
              if (v73 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v46 = v44;
            v48 = v63 > v64;
            a2 = v70;
            if (!v48)
            {
              goto LABEL_56;
            }
          }

          v46 = v72;
          a3 = v80;
          v65 = v81;
          if (v73 < v70 || v80 >= v70)
          {
            break;
          }

          a1 = v82;
          a2 = v83;
          v44 = v67;
          v45 = v69;
          if (v73 != v70)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v46 <= v65)
          {
            goto LABEL_56;
          }
        }

        a2 = v83;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v82;
        v44 = v67;
        v45 = v69;
        if (v46 > v65)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v88 = a2;
    v86 = v44;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v73 = a4 + v24;
    v86 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v71 = (v8 + 8);
      v72 = v21;
      v80 = a3;
      do
      {
        v82 = a1;
        v83 = a2;
        v81 = a4;
        v27 = v85;
        sub_1C6ECEE44(a2, v85, &unk_1EC1F9A30, &qword_1C6EF6B38);
        v28 = v74;
        sub_1C6ECEE44(a4, v74, &unk_1EC1F9A30, &qword_1C6EF6B38);
        v29 = v75;
        sub_1C6ECEE44(v27, v75, &unk_1EC1F9A30, &qword_1C6EF6B38);

        v30 = v84;
        v31 = *(v84 + 48);
        v32 = v77;
        sub_1C6EE43B0();
        v33 = sub_1C6EE43E0();
        v34 = *(*(v33 - 8) + 8);
        v34(v29 + v31, v33);
        v35 = v76;
        sub_1C6ECEE44(v28, v76, &unk_1EC1F9A30, &qword_1C6EF6B38);

        v36 = *(v30 + 48);
        v37 = v78;
        sub_1C6EE43B0();
        v34(v35 + v36, v33);
        v38 = sub_1C6EE4270();
        v39 = *v71;
        v40 = v79;
        (*v71)(v37, v79);
        v39(v32, v40);
        sub_1C6ECEEAC(v28, &unk_1EC1F9A30, &qword_1C6EF6B38);
        sub_1C6ECEEAC(v85, &unk_1EC1F9A30, &qword_1C6EF6B38);
        if (v38)
        {
          v41 = v72;
          v42 = v82;
          a2 = v83 + v72;
          a4 = v81;
          if (v82 < v83 || v82 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v43 = v80;
          }

          else
          {
            v43 = v80;
            if (v82 != v83)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v42 = v82;
          a2 = v83;
          v41 = v72;
          a4 = v81 + v72;
          if (v82 < v81 || v82 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v43 = v80;
          }

          else
          {
            v43 = v80;
            if (v82 != v81)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v87 = a4;
        }

        a1 = v42 + v41;
        v88 = a1;
      }

      while (a4 < v73 && a2 < v43);
    }
  }

LABEL_58:
  sub_1C6ECCB80(&v88, &v87, &v86, &unk_1EC1F9A30, &qword_1C6EF6B38);
  return 1;
}

uint64_t sub_1C6ECC9E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C6ECCA74(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C6ECCA88(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1C6EE41A0();
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

uint64_t sub_1C6ECCB80(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1C6ECCC68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A20, &qword_1C6EF6B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C6ECCD94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A60, &qword_1C6EE6950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C6ECCF0C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_2(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1C6ECD040(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC8, &qword_1C6EF6BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6ECD144(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6ECD250(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6ECD354(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AD0, &qword_1C6EE6C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C6ECD458(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F98C0, &qword_1C6EF6BE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7DF0, &qword_1C6EE8DF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6ECD5B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C58, &qword_1C6EF6BC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6ECD71C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9888, &qword_1C6EF6B70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9890, &qword_1C6EF6B78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6ECD8AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_2(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1C6ECDA88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7848, &qword_1C6EE6A00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C6ECDBB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_2(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1C6ECDDA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6EE50E0() + 1) & ~v5;
    do
    {
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v10 = sub_1C6EE55A0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C6ECDF70(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6EE50E0() + 1) & ~v5;
    do
    {
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v10 = sub_1C6EE55A0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C6ECE140(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6EE50E0() + 1) & ~v5;
    while (1)
    {
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v9 = sub_1C6EE55A0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C6ECE40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v53 = a3;
  v47 = a2;
  v48 = a1;
  v6 = sub_1C6EE4880();
  v54 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C6EE48C0();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1C6EE41A0();
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF8458 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDEF8460;
  v16 = sub_1C6EE4EE0();
  sub_1C6EE4730("Attempting to write store to disk", 33, 2, &dword_1C6DE9000, v15, v16, MEMORY[0x1E69E7CC0]);
  v17 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
  swift_beginAccess();
  sub_1C6ECEC70(a4 + v17, v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);
  sub_1C6ECED54(&qword_1EDEF62F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore, &unk_1C6EF4050);
  v18 = sub_1C6EE45C0();
  v20 = v19;
  sub_1C6ECEC10(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  result = swift_allocObject();
  v22 = result;
  *(result + 16) = xmmword_1C6EE6590;
  v23 = v20 >> 62;
  v44 = v6;
  if ((v20 >> 62) > 1)
  {
    if (v23 != 2)
    {
      v24 = 0;
      goto LABEL_13;
    }

    v26 = *(v18 + 16);
    v25 = *(v18 + 24);
    v24 = v25 - v26;
    if (!__OFSUB__(v25, v26))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v23)
  {
    v24 = BYTE6(v20);
LABEL_13:
    v27 = [objc_opt_self() stringFromByteCount:v24 countStyle:0];
    v28 = sub_1C6EE4A90();
    v30 = v29;

    v22[7] = MEMORY[0x1E69E6158];
    v22[8] = sub_1C6DF10E0();
    v22[4] = v28;
    v22[5] = v30;
    v31 = sub_1C6EE4EE0();
    sub_1C6EE4730("Serialized store into size %{public}@", 37, 2, &dword_1C6DE9000, v15, v31, v22);

    v32 = v45;
    (*(v9 + 16))(&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v46, v45);
    v33 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v34 = (v10 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    (*(v9 + 32))(v35 + v33, v11, v32);
    v36 = (v35 + v34);
    *v36 = v18;
    v36[1] = v20;
    v37 = (v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8));
    v38 = v47;
    *v37 = v48;
    v37[1] = v38;
    aBlock[4] = sub_1C6ECEB38;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C6DEDCF0;
    aBlock[3] = &block_descriptor_0;
    v39 = _Block_copy(aBlock);
    sub_1C6E00D18(v18, v20);
    swift_unknownObjectRetain();
    v40 = v49;
    sub_1C6EE48A0();
    v55 = MEMORY[0x1E69E7CC0];
    sub_1C6ECED54(&qword_1EDEF6858, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE0, &unk_1C6EE9B68);
    sub_1C6DEC6D0(&qword_1EDEF67D8, &qword_1EC1F7FE0, &unk_1C6EE9B68);
    v41 = v51;
    v42 = v44;
    sub_1C6EE50C0();
    MEMORY[0x1CCA58340](0, v40, v41, v39);
    _Block_release(v39);
    sub_1C6DF1134(v18, v20);
    (*(v54 + 8))(v41, v42);
    (*(v50 + 8))(v40, v52);
  }

  if (!__OFSUB__(HIDWORD(v18), v18))
  {
    v24 = HIDWORD(v18) - v18;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6ECEB38()
{
  v1 = *(sub_1C6EE41A0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  return sub_1C6EC7F34(v0 + v2, v6, v7, v8, v9);
}

uint64_t sub_1C6ECEC10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6ECEC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6ECED54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6ECEDD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C6ECEE44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6ECEEAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6ECEF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6ECEF74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for TextNormalizerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TextNormalizerError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1C6ECF0E0(uint64_t a1, int a2)
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

uint64_t sub_1C6ECF128(uint64_t result, int a2, int a3)
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

unint64_t sub_1C6ECF178()
{
  result = qword_1EC1F98C8;
  if (!qword_1EC1F98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F98C8);
  }

  return result;
}

uint64_t sub_1C6ECF1D4()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6ECF240(uint64_t a1)
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

ComputationalGraph::ComputeServiceCachePolicy __swiftcall ComputeServiceCachePolicy.init(maxCacheAge:maxCacheSize:)(Swift::Double maxCacheAge, Swift::Int maxCacheSize)
{
  *v2 = maxCacheAge;
  *(v2 + 8) = maxCacheSize;
  result.maxCacheAge = maxCacheAge;
  result.maxCacheSize = maxCacheSize;
  return result;
}

uint64_t sub_1C6ECF29C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEB00000000656741;
  }

  else
  {
    v2 = 0xEC000000657A6953;
  }

  if (*a2)
  {
    v3 = 0xEB00000000656741;
  }

  else
  {
    v3 = 0xEC000000657A6953;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1C6EE54B0();
  }

  return v4 & 1;
}

uint64_t sub_1C6ECF33C()
{
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

uint64_t sub_1C6ECF3BC(uint64_t a1)
{
  sub_1C6EE4B30();
}

uint64_t sub_1C6ECF428(uint64_t a1)
{
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

uint64_t sub_1C6ECF4A4@<X0>(char *a2@<X8>)
{
  v3 = sub_1C6EE5360();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1C6ECF504(void *a1@<X8>)
{
  v2 = 0xEC000000657A6953;
  if (*v1)
  {
    v2 = 0xEB00000000656741;
  }

  *a1 = 0x656863614378616DLL;
  a1[1] = v2;
}

uint64_t sub_1C6ECF578@<X0>(char *a3@<X8>)
{
  v4 = sub_1C6EE5360();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C6ECF5F4(uint64_t a1)
{
  v2 = sub_1C6ECF810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6ECF630(uint64_t a1)
{
  v2 = sub_1C6ECF810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ComputeServiceCachePolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F98D0, &qword_1C6EF6CE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6ECF810();
  sub_1C6EE55C0();
  v8[15] = 0;
  sub_1C6EE5430();
  if (!v1)
  {
    v8[14] = 1;
    sub_1C6EE5420();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C6ECF810()
{
  result = qword_1EC1F98D8;
  if (!qword_1EC1F98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F98D8);
  }

  return result;
}

uint64_t ComputeServiceCachePolicy.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F98E0, &qword_1C6EF6CE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6ECF810();
  sub_1C6EE55B0();
  if (!v2)
  {
    v13[15] = 0;
    v9 = sub_1C6EE53C0();
    v13[14] = 1;
    sub_1C6EE53B0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
    *(a2 + 1) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C6ECFA24(uint64_t a1)
{
  *(a1 + 8) = sub_1C6EC007C();
  result = sub_1C6EBFC4C();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceCachePolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ComputeServiceCachePolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceCachePolicy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ComputeServiceCachePolicy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6ECFC70()
{
  result = qword_1EC1F98E8;
  if (!qword_1EC1F98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F98E8);
  }

  return result;
}

unint64_t sub_1C6ECFCC8()
{
  result = qword_1EC1F98F0;
  if (!qword_1EC1F98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F98F0);
  }

  return result;
}

unint64_t sub_1C6ECFD20()
{
  result = qword_1EC1F98F8;
  if (!qword_1EC1F98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F98F8);
  }

  return result;
}

id RequestEventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RequestEventProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestEventProcessor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RequestEventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestEventProcessor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C6ECFE8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C6ECFED4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *sub_1C6ECFF6C(uint64_t a1)
{
  v39 = *v1;
  v4 = v39[10];
  v5 = sub_1C6EE4FE0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v35 - v6;
  v7 = sub_1C6EE41A0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v41 = a1;
  sub_1C6ED3B5C();
  if (!v2)
  {
    v17 = v39[11];
    v36 = v39[12];
    v37 = v17;
    v39 = 0;
    v38 = type metadata accessor for FileStore.FileContainer(0, v4, v17, v36);
    v18 = v4;
    v19 = *(v8 + 16);
    v19(v14, &v1[qword_1EDEF6920], v7);
    v19(v11, &v1[qword_1EDEF6938], v7);
    v20 = *&v1[qword_1EDEF6928];
    v21 = v1[qword_1EDEF6910];
    if (v21)
    {
      v22 = 18;
    }

    else
    {
      v22 = 12;
    }

    v23 = *(v4 - 8);
    v24 = v40;
    (*(v23 + 16))(v40, v41, v18);
    v25 = *(v23 + 56);
    v41 = v18;
    v25(v24, 0, 1, v18);
    v26 = swift_allocObject();

    v27 = v21;
    v1 = v26;
    v28 = v39;
    v29 = sub_1C6DEEE64(v16, v14, v11, v20, v22, v27, v24);
    if (!v28)
    {
      v1 = v29;
      v31 = v36;
      v30 = v37;
      v32 = v41;
      if (sub_1C6ED3DA8())
      {
        type metadata accessor for FileStore.Errors(0, v32, v30, v31);
        swift_getWitnessTable();
        swift_allocError();
        *v33 = 1;
        swift_willThrow();
      }
    }
  }

  return v1;
}

void sub_1C6ED02E4()
{
  v1 = *v0;
  v3 = v0;
  v4 = v1;
  sub_1C6ED61A4(sub_1C6EDA78C, &v2);
}

uint64_t sub_1C6ED0370()
{
  v2 = v1;
  v152 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  v143 = sub_1C6EE41A0();
  v139 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v5 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v3[10];
  v7 = v3[11];
  if ((*(v0 + qword_1EDEF6910) & 1) == 0)
  {
    *&v138 = v3[12];
    v140 = v7;
    if (qword_1EDEF8F80 != -1)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v10 = qword_1EDEF8F88;
      v11 = sub_1C6EE4EE0();
      sub_1C6EE4730("Will delete old containers", 26, 2, &dword_1C6DE9000, v10, v11, MEMORY[0x1E69E7CC0]);
      result = sub_1C6DEE4A0(0, 1);
      if (v2)
      {
        return result;
      }

      v12 = result;
      v133 = v0;
      v141 = 0;
      v135 = v5;
      v13 = v140;
      v14 = v138;
      v15 = type metadata accessor for FileStore.FileContainer(0, v6, v140, v138);
      v16 = sub_1C6EE4980();
      v147 = v16;
      v146 = sub_1C6EE4980();
      v17 = sub_1C6EE4D40();
      v145 = v15;
      if (!v17)
      {

        goto LABEL_26;
      }

      *&v137 = v6;
      LODWORD(v142) = 0;
      v18 = 0;
      v19 = 4;
      v144 = xmmword_1C6EE6590;
      while (1)
      {
        v25 = v19 - 4;
        v26 = sub_1C6EE4D10();
        sub_1C6EE4CD0();
        if ((v26 & 1) == 0)
        {
          break;
        }

        v27 = *(v12 + 8 * v19);

        v28 = v19 - 3;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_23;
        }

LABEL_11:
        if (sub_1C6ED3DA8())
        {
          v148 = v27;
          sub_1C6EE4D50();

          sub_1C6EE4D30();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v20 = swift_allocObject();
          *(v20 + 16) = v144;
          v21 = sub_1C6EE40E0();
          v23 = v22;
          *(v20 + 56) = MEMORY[0x1E69E6158];
          *(v20 + 64) = sub_1C6DF10E0();
          *(v20 + 32) = v21;
          *(v20 + 40) = v23;
          v24 = sub_1C6EE4EE0();
          sub_1C6EE4730("Will delete container because it's already marked for deletion, name=%{public}@", 79, 2, &dword_1C6DE9000, v10, v24, v20);
        }

        else if (v18)
        {
          if ((v142 & 1) != 0 || (sub_1C6DF280C(31) & 1) == 0)
          {
            v39 = *v27;
            v150 = v27;
            v151 = v39;
            v40 = v141;
            sub_1C6ED61A4(sub_1C6EDA78C, &v148);
            if (v40)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
              v41 = swift_allocObject();
              *(v41 + 16) = v144;
              v42 = sub_1C6EE40E0();
              v44 = v43;
              *(v41 + 56) = MEMORY[0x1E69E6158];
              *(v41 + 64) = sub_1C6DF10E0();
              *(v41 + 32) = v42;
              *(v41 + 40) = v44;
              v45 = sub_1C6EE4EE0();
              sub_1C6EE4730("Will not delete container because it's currently in use, name=%{public}@", 72, 2, &dword_1C6DE9000, v10, v45, v41);

              v148 = v27;
              sub_1C6EE4D50();
              sub_1C6EE4D30();

              v141 = 0;
            }

            else
            {
              v141 = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
              v46 = swift_allocObject();
              *(v46 + 16) = v144;
              v47 = sub_1C6EE40E0();
              v49 = v48;
              *(v46 + 56) = MEMORY[0x1E69E6158];
              *(v46 + 64) = sub_1C6DF10E0();
              *(v46 + 32) = v47;
              *(v46 + 40) = v49;
              v50 = sub_1C6EE4EE0();
              sub_1C6EE4730("Will delete container, name=%{public}@", 38, 2, &dword_1C6DE9000, v10, v50, v46);

              v148 = v27;
              sub_1C6EE4D50();
              sub_1C6EE4D30();
            }

            v18 = 1;
          }

          else
          {
            v148 = v27;
            sub_1C6EE4D50();

            sub_1C6EE4D30();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v29 = swift_allocObject();
            *(v29 + 16) = v144;
            v30 = sub_1C6EE40E0();
            v32 = v31;
            *(v29 + 56) = MEMORY[0x1E69E6158];
            *(v29 + 64) = sub_1C6DF10E0();
            *(v29 + 32) = v30;
            *(v29 + 40) = v32;
            v33 = sub_1C6EE4EE0();
            sub_1C6EE4730("Will preserve container because it's complete, name=%{public}@", 62, 2, &dword_1C6DE9000, v10, v33, v29);

            LODWORD(v142) = 1;
            v18 = 1;
          }
        }

        else
        {
          LODWORD(v142) = sub_1C6DF280C(31);
          v148 = v27;
          sub_1C6EE4D50();

          sub_1C6EE4D30();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v34 = swift_allocObject();
          *(v34 + 16) = v144;
          v35 = sub_1C6EE40E0();
          v37 = v36;
          *(v34 + 56) = MEMORY[0x1E69E6158];
          *(v34 + 64) = sub_1C6DF10E0();
          *(v34 + 32) = v35;
          *(v34 + 40) = v37;
          v38 = sub_1C6EE4EE0();
          sub_1C6EE4730("Will preserve container because it's the most recent, name=%{public}@", 69, 2, &dword_1C6DE9000, v10, v38, v34);

          v18 = 1;
        }

        ++v19;
        if (v28 == sub_1C6EE4D40())
        {
          goto LABEL_24;
        }
      }

      v27 = sub_1C6EE51D0();
      v28 = v19 - 3;
      if (!__OFADD__(v25, 1))
      {
        goto LABEL_11;
      }

LABEL_23:
      __break(1u);
LABEL_24:

      v16 = v147;
      v6 = v137;
      v13 = v140;
      v14 = v138;
LABEL_26:
      *&v144 = v10;
      v148 = v16;
      MEMORY[0x1EEE9AC00](v51);
      *(&v131 - 4) = v6;
      *(&v131 - 3) = v13;
      *(&v131 - 2) = v14;
      sub_1C6EE4D50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AE0, &qword_1C6EF7620);
      swift_getWitnessTable();
      sub_1C6EDA944(&qword_1EDEF6208, &unk_1EC1F9AE0, &qword_1C6EF7620, MEMORY[0x1E69E6508]);
      v52 = v141;
      v53 = sub_1C6EE4C40();
      v54 = v52;

      v136 = sub_1C6E0B8E0(v53);

      v55 = v146;
      v56 = &off_1E829C000;
      if (!sub_1C6EE4D40())
      {
        goto LABEL_37;
      }

      v141 = objc_opt_self();
      v57 = 4;
      v138 = xmmword_1C6EE6590;
      v137 = xmmword_1C6EE6B40;
      v142 = v55;
      while (2)
      {
        v64 = v57 - 4;
        v65 = sub_1C6EE4D10();
        sub_1C6EE4CD0();
        if (v65)
        {

          v66 = v57 - 3;
          if (__OFADD__(v64, 1))
          {
            break;
          }

          goto LABEL_32;
        }

        sub_1C6EE51D0();
        v66 = v57 - 3;
        if (!__OFADD__(v64, 1))
        {
LABEL_32:
          v67 = [v141 v56[136]];
          v68 = sub_1C6EE4100();
          v148 = 0;
          v69 = [v67 removeItemAtURL:v68 error:&v148];

          v70 = v148;
          if (v69)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v58 = swift_allocObject();
            *(v58 + 16) = v138;
            v59 = v70;
            v60 = sub_1C6EE40E0();
            v62 = v61;
            *(v58 + 56) = MEMORY[0x1E69E6158];
            *(v58 + 64) = sub_1C6DF10E0();
            *(v58 + 32) = v60;
            *(v58 + 40) = v62;
            v63 = sub_1C6EE4EE0();
            sub_1C6EE4730("Successfully deleted container, name=%{public}@", 47, 2, &dword_1C6DE9000, v144, v63, v58);
          }

          else
          {
            v71 = v148;
            v72 = sub_1C6EE4050();

            swift_willThrow();
            LODWORD(v140) = sub_1C6EE4EC0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v73 = swift_allocObject();
            *(v73 + 16) = v137;
            sub_1C6DF1088();
            v74 = sub_1C6EE5460();
            v76 = v75;
            v77 = MEMORY[0x1E69E6158];
            *(v73 + 56) = MEMORY[0x1E69E6158];
            v78 = sub_1C6DF10E0();
            *(v73 + 64) = v78;
            *(v73 + 32) = v74;
            *(v73 + 40) = v76;
            v56 = &off_1E829C000;
            v148 = 0;
            v149 = 0xE000000000000000;
            swift_getErrorValue();
            sub_1C6EE5480();
            v79 = v148;
            v80 = v149;
            *(v73 + 96) = v77;
            *(v73 + 104) = v78;
            *(v73 + 72) = v79;
            *(v73 + 80) = v80;
            sub_1C6EE4730("Failed to delete container, url=%{public}@, error=%{public}@", 60, 2, &dword_1C6DE9000, v144, v140, v73);

            v54 = 0;
          }

          ++v57;
          if (v66 == sub_1C6EE4D40())
          {
            goto LABEL_37;
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_37:

      v81 = objc_opt_self();
      v82 = [v81 v56[136]];
      v83 = sub_1C6EE4100();
      v148 = 0;
      v84 = [v82 contentsOfDirectoryAtURL:v83 includingPropertiesForKeys:0 options:4 error:&v148];

      v85 = v148;
      if (!v84)
      {
        v124 = v148;
        v92 = v144;
        goto LABEL_59;
      }

      v86 = sub_1C6EE4CA0();
      v87 = v85;

      v88 = v56[136];
      v134 = v81;
      v89 = [v81 v88];
      v6 = sub_1C6EE4100();
      v148 = 0;
      v90 = [v89 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:4 error:&v148];

      v91 = v148;
      v92 = v144;
      if (!v90)
      {
        v124 = v148;

LABEL_59:

        v125 = sub_1C6EE4050();

        swift_willThrow();
        v126 = sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_1C6EE6590;
        v148 = 0;
        v149 = 0xE000000000000000;
        swift_getErrorValue();
        sub_1C6EE5480();
        v128 = v148;
        v129 = v149;
        *(v127 + 56) = MEMORY[0x1E69E6158];
        *(v127 + 64) = sub_1C6DF10E0();
        *(v127 + 32) = v128;
        *(v127 + 40) = v129;
        sub_1C6EE4730("Failed to delete unused assets, error=%{public}@", 48, 2, &dword_1C6DE9000, v92, v126, v127);

LABEL_60:
        v130 = sub_1C6EE4EE0();
        return sub_1C6EE4730("Finished deleting old containers", 32, 2, &dword_1C6DE9000, v92, v130, MEMORY[0x1E69E7CC0]);
      }

      v5 = sub_1C6EE4CA0();
      v93 = v91;

      v148 = v86;
      v0 = &v148;
      sub_1C6ED1F9C(v5, &qword_1EC1F9910, &unk_1C6EF6B80, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
      v2 = v148;
      v142 = v148[2];
      if (!v142)
      {

        goto LABEL_60;
      }

      v94 = 0;
      v140 = v148 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      *&v138 = v139 + 16;
      v145 = v136 + 56;
      *&v137 = v139 + 8;
      v132 = xmmword_1C6EE6590;
      v131 = xmmword_1C6EE6B40;
      v95 = v143;
      v141 = v148;
      while (v94 < v2[2])
      {
        v103 = v135;
        (*(v139 + 16))(v135, v140 + *(v139 + 72) * v94, v95);
        v104 = sub_1C6EE40E0();
        v106 = v105;
        v107 = v136;
        if (*(v136 + 16) && (v5 = v104, sub_1C6EE5580(), sub_1C6EE4B30(), v108 = sub_1C6EE55A0(), v109 = -1 << *(v107 + 32), v0 = v108 & ~v109, ((*(v145 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0) & 1) != 0))
        {
          v6 = ~v109;
          while (1)
          {
            v110 = (*(v107 + 48) + 16 * v0);
            v111 = *v110 == v5 && v110[1] == v106;
            if (v111 || (sub_1C6EE54B0() & 1) != 0)
            {
              break;
            }

            v0 = (v0 + 1) & v6;
            if (((*(v145 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0) & 1) == 0)
            {
              goto LABEL_53;
            }
          }

          v96 = v54;

          v98 = v103;
          v99 = v143;
        }

        else
        {
LABEL_53:

          v112 = [v134 v56[136]];
          v113 = sub_1C6EE4100();
          v148 = 0;
          v114 = [v112 removeItemAtURL:v113 error:&v148];

          v115 = v148;
          if (v114)
          {
            v96 = v54;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v5 = swift_allocObject();
            *(v5 + 1) = v132;
            v6 = sub_1C6DF1088();
            v97 = v115;
            v98 = v103;
            v99 = v143;
            v100 = sub_1C6EE5460();
            v0 = v101;
            *(v5 + 7) = MEMORY[0x1E69E6158];
            *(v5 + 8) = sub_1C6DF10E0();
            *(v5 + 4) = v100;
            *(v5 + 5) = v0;
            v102 = sub_1C6EE4EE0();
            sub_1C6EE4730("Successfully deleted asset, url=%{public}@", 42, 2, &dword_1C6DE9000, v144, v102, v5);
          }

          else
          {
            v116 = v148;
            v117 = sub_1C6EE4050();

            swift_willThrow();
            LODWORD(v133) = sub_1C6EE4EC0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v6 = swift_allocObject();
            *(v6 + 16) = v131;
            sub_1C6DF1088();
            v98 = v103;
            v99 = v143;
            v118 = sub_1C6EE5460();
            v120 = v119;
            v5 = MEMORY[0x1E69E6158];
            *(v6 + 56) = MEMORY[0x1E69E6158];
            v121 = sub_1C6DF10E0();
            *(v6 + 64) = v121;
            *(v6 + 32) = v118;
            *(v6 + 40) = v120;
            v148 = 0;
            v149 = 0xE000000000000000;
            swift_getErrorValue();
            v0 = &v148;
            sub_1C6EE5480();
            v122 = v148;
            v123 = v149;
            *(v6 + 96) = v5;
            *(v6 + 104) = v121;
            *(v6 + 72) = v122;
            *(v6 + 80) = v123;
            sub_1C6EE4730("Failed to delete asset, url=%{public}@, error=%{public}@", 56, 2, &dword_1C6DE9000, v144, v133, v6);

            v96 = 0;
          }
        }

        ++v94;
        (*v137)(v98, v99);
        v95 = v99;
        v54 = v96;
        v56 = &off_1E829C000;
        v2 = v141;
        if (v94 == v142)
        {

          v92 = v144;
          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_64:
      swift_once();
    }
  }

  type metadata accessor for FileStore.Errors(0, v3[10], v7, v3[12]);
  swift_getWitnessTable();
  swift_allocError();
  *v8 = 0;
  return swift_willThrow();
}

uint64_t sub_1C6ED1770(uint64_t a1)
{
  v1 = sub_1C6ED28FC();
  v2 = sub_1C6ED2988();
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDEF8F88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6590;
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1C6EE4DF0();
  v8 = v7;
  *(v4 + 56) = v5;
  *(v4 + 64) = sub_1C6DF10E0();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1C6EE4EE0();
  sub_1C6EE4730("Found existing computationalGraph packages %{public}@", 53, 2, &dword_1C6DE9000, v3, v9, v4);

  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    sub_1C6E038DC(v2);

    return v1;
  }

  else
  {
    v10 = sub_1C6E04178(v2, v1);

    return v10;
  }
}

void sub_1C6ED18D8(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + (*v1)[21]))
  {
    type metadata accessor for FileStore.FileContainer.Errors(0, v3[10], v3[11], v3[12]);
    swift_getWitnessTable();
    swift_allocError();
    *v4 = xmmword_1C6EE91C0;
    *(v4 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v6 = sub_1C6ED2988();
    v14[1] = v14;
    v15 = a1;
    MEMORY[0x1EEE9AC00](v6);
    v7 = v3[11];
    v14[0] = v3[10];
    v8 = v3[12];
    sub_1C6EE4D50();

    swift_getWitnessTable();
    v9 = sub_1C6EE5250();

    v15 = v9;
    swift_getWitnessTable();
    sub_1C6EE4C50();

    if (!v2)
    {
      v11 = v14[0];
      v12 = *(sub_1C6ED1770(v10) + 16);

      if (!v12)
      {
        type metadata accessor for FileStore.FileContainer.Flags(255, v11, v7, v8);
        sub_1C6EE5470();
        swift_allocObject();
        sub_1C6EE4CC0();
        *v13 = 4;
        sub_1C6EE4D50();
        swift_getWitnessTable();
        sub_1C6EE5040();
        sub_1C6ED5300(v15);
      }
    }
  }
}

uint64_t sub_1C6ED1B98(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C6ED93D8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6ED1C84(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C6ED94DC(result, v11, 1, v3, &qword_1EC1F79C8, &qword_1C6EE6C38);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6ED1D80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C6ED95D8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6ED1E6C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C6ED96DC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6ED1F9C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_1C6DEE840(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6ED20F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C6EE5110();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1C6EE5110();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C6ED9B08(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C6ED9BA8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1C6ED21E8()
{
  v1 = *(v0 + *(*v0 + 176));
  os_unfair_lock_lock((v1 + 28));
  sub_1C6EDA98C((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 28));
}

void sub_1C6ED22A0()
{
  v1 = *(v0 + *(*v0 + 176));
  os_unfair_lock_lock((v1 + 28));
  sub_1C6EDA86C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;

  os_unfair_lock_unlock((v1 + 28));
}

uint64_t *sub_1C6ED2308()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v48 - v4;
  v6 = sub_1C6EE41A0();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(v0 + v2[21]);
  if (v62 == 1 && (LODWORD(v60) = *(v0 + v2[19]), v8 = v2[10], v9 = v2[11], v10 = v2[12], LODWORD(v63) = 8, type metadata accessor for FileStore.FileContainer.Flags(0, v8, v9, v10), swift_getWitnessTable(), v11 = &v60, (sub_1C6EE5620() & 1) == 0))
  {
    type metadata accessor for FileStore.FileContainer.Errors(0, v8, v9, v10);
    swift_getWitnessTable();
    swift_allocError();
    *v46 = xmmword_1C6EE91C0;
    *(v46 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v54 = v6;
    v56 = v5;
    if (qword_1EDEF8F70 != -1)
    {
      swift_once();
    }

    v55 = qword_1EDEF8F78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C6EEA170;
    v13 = v2[10];
    v14 = v2[12];
    v51 = *(*v1 + 104);
    v49 = v13;
    v15 = sub_1C6EBF184(v13, v14);
    v48 = v2;
    v17 = v16;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1C6DF10E0();
    *(v12 + 64) = v18;
    *(v12 + 32) = v15;
    *(v12 + 40) = v17;
    v53 = *(*v1 + 128);
    sub_1C6DF1088();
    v19 = v54;
    v20 = sub_1C6EE5460();
    *(v12 + 96) = MEMORY[0x1E69E6158];
    *(v12 + 104) = v18;
    *(v12 + 72) = v20;
    *(v12 + 80) = v21;
    v52 = *(*v1 + 136);
    v22 = sub_1C6EE5460();
    *(v12 + 136) = MEMORY[0x1E69E6158];
    *(v12 + 144) = v18;
    *(v12 + 112) = v22;
    *(v12 + 120) = v23;
    v60 = 0;
    v61 = 0xE000000000000000;
    v50 = *(v14 + 56);
    v50(&v63, v13);
    v24 = sub_1C6ED5458(qword_1C6EF7808[v63]);
    MEMORY[0x1CCA57F60](v24);

    v25 = v60;
    v26 = v61;
    *(v12 + 176) = MEMORY[0x1E69E6158];
    *(v12 + 184) = v18;
    *(v12 + 152) = v25;
    *(v12 + 160) = v26;
    v27 = sub_1C6EE4EE0();
    sub_1C6EE4730("Found loaded computationalGraph configuration identifier %{public}@. Initializing resource reader with baseDirectory=%{public}@ modelsDirectory=%{public}@ computeUnits=%{public}@", 178, 2, &dword_1C6DE9000, v55, v27, v12);

    v28 = v57;
    v29 = *(v57 + 16);
    v29(v59, v1 + v53, v19);
    v30 = v56;
    v29(v56, v1 + v52, v19);
    v31 = v19;
    v32 = v49;
    (*(v28 + 56))(v30, 0, 1, v31);
    (v50)(&v60, v32, v14);
    v33 = qword_1C6EF7808[v60];
    v34 = sub_1C6ED28FC();
    v35 = v58;
    v36 = sub_1C6EDC924(sub_1C6EDA840, v1, v34);

    v37 = sub_1C6E0B8E0(v36);

    type metadata accessor for ResourceReader(0);
    v38 = swift_allocObject();
    v39 = v37;
    v11 = v38;
    v40 = sub_1C6E36AAC(v59, v30, v33, v62, v39);
    if (!v35)
    {
      v11 = v40;
      v41 = swift_allocObject();
      swift_weakInit();
      v42 = swift_allocObject();
      *(v42 + 2) = v32;
      *(v42 + 3) = v48[11];
      *(v42 + 4) = v14;
      *(v42 + 5) = v41;
      v43 = (v11 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver);
      v44 = *(v11 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver);
      v45 = *(v11 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver + 8);
      *v43 = sub_1C6EDA860;
      v43[1] = v42;

      sub_1C6E41D54(v44, v45);
    }
  }

  return v11;
}

uint64_t sub_1C6ED28FC()
{
  v1 = (*(*(*v0 + 96) + 48))(*(*v0 + 80));
  v2 = sub_1C6E0B8E0(v1);

  return v2;
}

uint64_t sub_1C6ED2988()
{
  v1 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v45 = sub_1C6EE4020();
  v2 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v46 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C6EE41A0();
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1E69E7CD0];
  v7 = [objc_opt_self() defaultManager];
  v42[1] = *(*v0 + 128);
  v8 = sub_1C6EE4100();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
  v9 = swift_allocObject();
  v48 = xmmword_1C6EE6590;
  *(v9 + 16) = xmmword_1C6EE6590;
  v10 = *MEMORY[0x1E695DB78];
  *(v9 + 32) = *MEMORY[0x1E695DB78];
  type metadata accessor for URLResourceKey(0);
  v47 = v10;
  v11 = sub_1C6EE4C90();

  v51 = 0;
  v12 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v11 options:0 error:&v51];

  v13 = v51;
  if (!v12)
  {
    v29 = v51;
    v30 = sub_1C6EE4050();

    swift_willThrow();
    v17 = v30;
    if (qword_1EDEF8F80 == -1)
    {
LABEL_11:
      v31 = qword_1EDEF8F88;
      v32 = sub_1C6EE4ED0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1C6EE6B40;
      sub_1C6DF1088();
      v34 = sub_1C6EE5460();
      v36 = v35;
      v37 = MEMORY[0x1E69E6158];
      *(v33 + 56) = MEMORY[0x1E69E6158];
      v38 = sub_1C6DF10E0();
      *(v33 + 64) = v38;
      *(v33 + 32) = v34;
      *(v33 + 40) = v36;
      v51 = 0;
      v52 = 0xE000000000000000;
      swift_getErrorValue();
      sub_1C6EE5480();
      v39 = v51;
      v40 = v52;
      *(v33 + 96) = v37;
      *(v33 + 104) = v38;
      *(v33 + 72) = v39;
      *(v33 + 80) = v40;
      sub_1C6EE4730("Encountered error looking in contents of directory %{public}@. Error: %{public}@", 80, 2, &dword_1C6DE9000, v31, v32, v33);

      return v53;
    }

LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  v14 = sub_1C6EE4CA0();
  v15 = v13;

  v44 = *(v14 + 16);
  if (v44)
  {
    v42[0] = v1;
    v16 = 0;
    v17 = 0;
    v43 = v14 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v42[2] = v50 + 16;
    v18 = (v2 + 8);
    v19 = (v50 + 8);
    while (v16 < *(v14 + 16))
    {
      v20 = v4;
      (*(v50 + 16))(v6, v43 + *(v50 + 72) * v16, v4);
      inited = swift_initStackObject();
      *(inited + 16) = v48;
      v22 = v47;
      *(inited + 32) = v47;
      v23 = v22;
      sub_1C6ED9D4C(inited);
      swift_setDeallocating();
      sub_1C6DFFC0C(inited + 32);
      v24 = v46;
      sub_1C6EE40C0();

      v25 = sub_1C6EE3FF0();
      (*v18)(v24, v45);
      if (v25 != 2 && (v25 & 1) != 0)
      {
        v51 = sub_1C6EE40E0();
        v52 = v26;
        v27 = sub_1C6EE4BF0();
        sub_1C6E032E0(&v51, v27, v28);
      }

      v4 = v20;
      (*v19)(v6, v20);
      if (v44 == ++v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  return v53;
}

uint64_t sub_1C6ED2F94(char a1)
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](a1 & 1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6ED3014(char a1)
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](a1 & 1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6ED3078(uint64_t a1)
{
  sub_1C6EE5580();
  sub_1C6ED2F6C(v3, *v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6ED30F8(uint64_t a1)
{
  sub_1C6EE5580();
  sub_1C6ED2FEC(v3, *v1);
  return sub_1C6EE55A0();
}

uint64_t FileStore.__allocating_init(containersDirectory:resourcesDirectory:modelsDirectory:)(char *a1, char *a2, char *a3)
{
  v6 = swift_allocObject();
  FileStore.init(containersDirectory:resourcesDirectory:modelsDirectory:)(a1, a2, a3);
  return v6;
}

uint64_t FileStore.ImportMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6ED3244(uint64_t a1)
{
  sub_1C6EE5580();
  FileStore.ImportMethod.hash(into:)();
  return sub_1C6EE55A0();
}

void sub_1C6ED3280()
{
  v1 = *v0;
  v2 = sub_1C6EE41A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileStore.FileContainer.Flags(255, v1[10], v1[11], v1[12]);
  sub_1C6EE5470();
  swift_allocObject();
  sub_1C6EE4CC0();
  *v6 = 1;
  sub_1C6EE4D50();
  swift_getWitnessTable();
  v7 = sub_1C6EE5040();
  v8 = *(sub_1C6ED1770(v7) + 16);

  if (!v8)
  {
    v15 |= 4u;
  }

  v9 = *(sub_1C6ED5670() + 16);

  if (!v9)
  {
    v15 |= 8u;
  }

  v10 = [objc_opt_self() defaultManager];
  sub_1C6ED4D78();
  sub_1C6EE4170();
  (*(v3 + 8))(v5, v2);
  v11 = sub_1C6EE4A60();

  v12 = [v10 fileExistsAtPath_];

  v13 = v15;
  if (v12)
  {
    v13 = v15 | 0x10;
    v15 |= 0x10u;
  }

  sub_1C6ED5300(v13);
}

Swift::Void __swiftcall FileStore.eraseAll()()
{
  v72 = *MEMORY[0x1E69E9840];
  v1 = sub_1C6EE41A0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v63 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1C6DEDFB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9910, &unk_1C6EF6B80);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v60 = xmmword_1C6EE6590;
  *(v6 + 16) = xmmword_1C6EE6590;
  v62 = v2;
  v7 = v2 + 16;
  v8 = *(v2 + 16);
  v64 = v0;
  v8(v6 + v5, v0 + qword_1EDEF6920, v1);
  v70 = v6;
  v65 = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = v60;
  v59 = v7;
  v58 = v8;
  v8(v9 + v5, v64 + qword_1EDEF6938, v1);
  v71 = v9;
  v10 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 56; i += 8)
  {
    v12 = *&v68[i];
    v13 = *(v12 + 16);
    v14 = v10[2];
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= v10[3] >> 1)
    {
      if (!*(v12 + 16))
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      v10 = sub_1C6DEE840(isUniquelyReferenced_nonNull_native, v17, 1, v10, &qword_1EC1F9910, &unk_1C6EF6B80, MEMORY[0x1E6968FB0]);
      if (!*(v12 + 16))
      {
LABEL_2:

        if (v13)
        {
          goto LABEL_27;
        }

        continue;
      }
    }

    if ((v10[3] >> 1) - v10[2] < v13)
    {
      goto LABEL_28;
    }

    swift_arrayInitWithCopy();

    if (v13)
    {
      v18 = v10[2];
      v19 = __OFADD__(v18, v13);
      v20 = v18 + v13;
      if (v19)
      {
        goto LABEL_29;
      }

      v10[2] = v20;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9918, &qword_1C6EF6FA0);
  swift_arrayDestroy();
  v21 = v10[2];
  if (v21)
  {
    v57 = objc_opt_self();
    v22 = v10 + v5;
    v56 = (v62 + 8);
    v23 = MEMORY[0x1E69E6158];
    v24 = &dword_1C6DE9000;
    v53 = xmmword_1C6EE6B40;
    v25 = v1;
    v26 = v63;
    v55 = v1;
    do
    {
      v33 = v24;
      v64 = v21;
      v58(v26, v22, v25);
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v34 = qword_1EDEF8F88;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v35 = swift_allocObject();
      *(v35 + 16) = v60;
      v62 = sub_1C6DF1088();
      v36 = sub_1C6EE5460();
      v38 = v37;
      *(v35 + 56) = v23;
      v39 = sub_1C6DF10E0();
      *(v35 + 64) = v39;
      *(v35 + 32) = v36;
      *(v35 + 40) = v38;
      v40 = sub_1C6EE4EE0();
      v41 = v33;
      v63 = v34;
      sub_1C6EE4730("Attempting to clear directory at %{public}@", 43, 2, v33, v34, v40, v35);

      v42 = [v57 defaultManager];
      v43 = sub_1C6EE4100();
      v66 = 0;
      LODWORD(v38) = [v42 removeItemAtURL:v43 error:&v66];

      v44 = v66;
      if (v38)
      {
        v27 = swift_allocObject();
        *(v27 + 16) = v60;
        v28 = v44;
        v29 = v55;
        v30 = sub_1C6EE5460();
        *(v27 + 56) = MEMORY[0x1E69E6158];
        *(v27 + 64) = v39;
        *(v27 + 32) = v30;
        *(v27 + 40) = v31;
        v32 = sub_1C6EE4EE0();
        sub_1C6EE4730("Successfully cleared directory at %{public}@", 44, 2, v41, v63, v32, v27);
      }

      else
      {
        v45 = v66;
        v46 = sub_1C6EE4050();

        swift_willThrow();
        v54 = sub_1C6EE4EC0();
        v47 = swift_allocObject();
        *(v47 + 16) = v53;
        v29 = v55;
        v48 = sub_1C6EE5460();
        v49 = MEMORY[0x1E69E6158];
        *(v47 + 56) = MEMORY[0x1E69E6158];
        *(v47 + 64) = v39;
        *(v47 + 32) = v48;
        *(v47 + 40) = v50;
        v66 = 0;
        v67 = 0xE000000000000000;
        swift_getErrorValue();
        sub_1C6EE5480();
        v51 = v66;
        v52 = v67;
        *(v47 + 96) = v49;
        *(v47 + 104) = v39;
        *(v47 + 72) = v51;
        *(v47 + 80) = v52;
        sub_1C6EE4730("Failed to clear directory at %{public}@. Error=%{public}@", 57, 2, v41, v63, v54, v47);
      }

      v24 = v41;
      (*v56)(v26, v29);
      v22 += v65;
      v21 = v64 - 1;
      v25 = v29;
      v23 = MEMORY[0x1E69E6158];
    }

    while (v64 != 1);
  }
}

uint64_t sub_1C6ED3B5C()
{
  v0 = sub_1C6EE4090();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[2] = 0x656E6961746E6F63;
  v5[3] = 0xEA00000000002D72;
  sub_1C6EE51C0();
  MEMORY[0x1CCA57F60](v5[0], v5[1]);

  (*(v1 + 104))(v3, *MEMORY[0x1E6968F58], v0);
  sub_1C6DF0C68();
  sub_1C6EE4190();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C6ED3DA8()
{
  type metadata accessor for FileStore.FileContainer.Flags(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  swift_getWitnessTable();
  return sub_1C6EE5620() & 1;
}

uint64_t sub_1C6ED3E70(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FileStore.FileContainer(0, a3, a4, a5);
  swift_getWitnessTable();
  return sub_1C6EE4A20() & 1;
}

uint64_t FileStore.deinit()
{
  v1 = qword_1EDEF6918;
  v2 = sub_1C6EE41A0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_1EDEF6920, v2);
  v3(v0 + qword_1EDEF6938, v2);

  return v0;
}

void sub_1C6ED3FE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a1;
  v63 = *MEMORY[0x1E69E9840];
  v5 = sub_1C6EE41A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDEF8F88;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C6EE6590;
  v54 = sub_1C6DF1088();
  v11 = sub_1C6EE5460();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v59 = sub_1C6DF10E0();
  *(v10 + 64) = v59;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = sub_1C6EE4EE0();
  v57 = v9;
  sub_1C6EE4730("Storing loaded computationalGraph configuration at %{public}@", 61, 2, &dword_1C6DE9000, v9, v14, v10);

  v15 = [objc_opt_self() defaultManager];
  v55 = a2;
  sub_1C6EE4130();
  v16 = sub_1C6EE4100();
  (*(v6 + 8))(v8, v5);
  v61 = 0;
  LODWORD(v13) = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v61];

  v17 = v61;
  if (!v13)
  {
    v26 = v61;
    sub_1C6EE4050();

    swift_willThrow();
    v24 = MEMORY[0x1E69E6158];
    v25 = v59;
    goto LABEL_7;
  }

  sub_1C6EE3F30();
  swift_allocObject();
  v18 = v17;
  sub_1C6EE3F20();
  v19 = *(v3 + 80);
  v20 = *(v3 + 96);
  v21 = v56;
  v22 = sub_1C6EE3F10();
  if (v21)
  {

    v24 = MEMORY[0x1E69E6158];
    v25 = v59;
LABEL_7:
    v27 = sub_1C6EE4EC0();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C6EE6B40;
    v29 = sub_1C6EBF184(*(v3 + 80), *(v3 + 96));
    *(v28 + 56) = v24;
    *(v28 + 64) = v25;
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
    v61 = 0;
    v62 = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v31 = v61;
    v32 = v62;
    *(v28 + 96) = v24;
    *(v28 + 104) = v25;
    *(v28 + 72) = v31;
    *(v28 + 80) = v32;
    sub_1C6EE4730("Failed to serialize computationalGraph configuration dictionary %{public}@. Error=%{public}@", 92, 2, &dword_1C6DE9000, v57, v27, v28);

    swift_willThrow();
    return;
  }

  v33 = v23;
  v56 = v22;

  v34 = swift_allocObject();
  v52 = xmmword_1C6EE6B40;
  *(v34 + 16) = xmmword_1C6EE6B40;
  v35 = sub_1C6EBF184(v19, v20);
  v36 = MEMORY[0x1E69E6158];
  v37 = v59;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = v37;
  *(v34 + 32) = v35;
  *(v34 + 40) = v38;
  v39 = v33 >> 62;
  v61 = 0;
  v62 = 0xE000000000000000;
  v53 = v33;
  if ((v33 >> 62) > 1)
  {
    v40 = 0;
    if (v39 != 2)
    {
      goto LABEL_17;
    }

    v42 = *(v56 + 16);
    v41 = *(v56 + 24);
    v40 = v41 - v42;
    if (!__OFSUB__(v41, v42))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v56), v56))
    {
      __break(1u);
    }

    v40 = HIDWORD(v56) - v56;
    goto LABEL_17;
  }

  if (v39)
  {
    goto LABEL_15;
  }

  v40 = BYTE6(v33);
LABEL_17:
  v43 = [objc_opt_self() stringFromByteCount:v40 countStyle:1];
  v44 = sub_1C6EE4A90();
  v46 = v45;

  MEMORY[0x1CCA57F60](v44, v46);

  v47 = v61;
  v48 = v62;
  *(v34 + 96) = v36;
  *(v34 + 104) = v37;
  *(v34 + 72) = v47;
  *(v34 + 80) = v48;
  v49 = sub_1C6EE4EE0();
  sub_1C6EE4730("Serialized configuration %{public}@ with size %{public}@", 56, 2, &dword_1C6DE9000, v57, v49, v34);

  v50 = v56;
  v51 = v53;
  sub_1C6EE4230();
  sub_1C6DF1134(v50, v51);
}

char *sub_1C6ED45C0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 160);
  v4 = *&v0[v3];
  if (*(v4 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isRetained) == 1)
  {
    v5 = qword_1EDEF66B0;
    v6 = v4;
    if (v5 != -1)
    {
      v13 = v6;
      swift_once();
      v6 = v13;
    }

    v7 = qword_1EDEF66C0;
    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock((v7 + 24));
    sub_1C6EDA70C((v7 + 16));
    os_unfair_lock_unlock((v7 + 24));
  }

  else
  {
    v8 = v4;
  }

  if (*(v4 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter) == 1)
  {
    [objc_opt_self() removeFilePresenter_];
  }

  (*(*(*(v2 + 80) - 8) + 8))(&v1[*(*v1 + 104)]);

  v9 = *(*v1 + 120);
  v10 = sub_1C6EE41A0();
  v11 = *(*(v10 - 8) + 8);
  v11(&v1[v9], v10);
  v11(&v1[*(*v1 + 128)], v10);
  v11(&v1[*(*v1 + 136)], v10);

  return v1;
}

uint64_t sub_1C6ED4884(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

id sub_1C6ED48E0@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, void *a4@<X8>)
{
  v7 = *a2;
  v8 = sub_1C6EE41A0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14 == 255)
  {
    v27 = v10;
    v16 = v28;
    sub_1C6ED4BC0(a2, &v30, v29);
    if (!v16)
    {
      v26 = a4;
      v28 = 0;
      v15 = *v29;
      *a1 = *v29;
      *(a1 + 8) = 0;
      v20 = objc_opt_self();
      sub_1C6EDA9C0(v15, 0);

      v25 = [v20 defaultManager];
      sub_1C6ED4D78();
      sub_1C6EE4160();
      (*(v9 + 8))(v12, v27);
      v21 = sub_1C6EE4A60();

      v22 = v25;
      v23 = [v25 fileExistsAtPath_];

      if (v23)
      {
        type metadata accessor for FileStore.FileContainer.Flags(255, v7[10], v7[11], v7[12]);
        sub_1C6EE5470();
        swift_allocObject();
        sub_1C6EE4CC0();
        *v24 = 16;
        sub_1C6EE4D50();
        swift_getWitnessTable();
        sub_1C6EE5040();
        sub_1C6ED5300(v29[0]);
      }

      sub_1C6EDA884(v15, 0);
      a4 = v26;
      goto LABEL_10;
    }

    v17 = v30;
    *a1 = v30;
    *(a1 + 8) = 1;
    v18 = v17;
LABEL_6:
    swift_willThrow();
    return sub_1C6EDA9A8(v13, v14);
  }

  v15 = *a1;
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_10:
  *a4 = v15;
  return sub_1C6EDA9A8(v13, v14);
}

uint64_t sub_1C6ED4BC0@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v8 = sub_1C6EE41A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v7 + 96) + 64))(v16, *(v7 + 80));
  sub_1C6ED4D78();
  v12 = sub_1C6ED4ED8(v16, a1, &off_1F468DE78, v11);
  if (v3)
  {
    (*(v9 + 8))(v11, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    *a2 = v3;
  }

  else
  {
    v14 = v12;
    (*(v9 + 8))(v11, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    *a3 = v14;
  }

  return result;
}

uint64_t sub_1C6ED4D78()
{
  v0 = sub_1C6EE4090();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  strcpy(v5, "features_store");
  v5[15] = -18;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F68], v0);
  sub_1C6DF0C68();
  sub_1C6EE4190();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C6ED4ED8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v46 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44[0] = v44 - v7;
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v49 = qword_1EDEF8F88;
  v44[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6EE65B0;
  v9 = sub_1C6EE41A0();
  v44[1] = sub_1C6DF1088();
  v10 = sub_1C6EE5460();
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1C6DF10E0();
  *(v8 + 64) = v14;
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v50 = 0;
  v51 = 0xE000000000000000;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 32))(v15, v16);
  sub_1C6EE4DD0();
  v17 = v50;
  v18 = v51;
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  v47 = v14;
  *(v8 + 72) = v17;
  *(v8 + 80) = v18;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 24))(v19, v20);
  v22 = MEMORY[0x1E69E65A8];
  *(v8 + 136) = MEMORY[0x1E69E6530];
  *(v8 + 144) = v22;
  *(v8 + 112) = v21;
  v23 = sub_1C6EE4EE0();
  sub_1C6EE4730("Loading features store from %{public}@ with cache policy: maxAge=%{public}@s, maxSize=%lu bytes", 95, 2, &dword_1C6DE9000, v49, v23, v8);

  sub_1C6ECEDD8(a1, &v50);
  v24 = *(v9 - 8);
  v25 = v44[0];
  (*(v24 + 16))(v44[0], a4, v9);
  (*(v24 + 56))(v25, 0, 1, v9);
  type metadata accessor for FeaturesStore(0);
  swift_allocObject();
  v26 = v45;
  swift_unknownObjectRetain();
  v27 = v26;
  v28 = v48;
  sub_1C6EC69F8(&v50, v27, v46, v25);
  v30 = v29;
  if (v28)
  {
    v31 = sub_1C6EE4ED0();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C6EE6B40;
    v33 = sub_1C6EE5460();
    v34 = v47;
    *(v32 + 56) = v13;
    *(v32 + 64) = v34;
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    v50 = 0;
    v51 = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v36 = v50;
    v37 = v51;
    *(v32 + 96) = v13;
    *(v32 + 104) = v34;
    *(v32 + 72) = v36;
    *(v32 + 80) = v37;
    sub_1C6EE4730("Failed to load features store at %{public}@. Error=%{public}@", 61, 2, &dword_1C6DE9000, v49, v31, v32);

    swift_willThrow();
  }

  else
  {
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1C6EE6590;
    v39 = sub_1C6EE5460();
    v40 = v47;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    *(v38 + 64) = v40;
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    v42 = sub_1C6EE4EE0();
    sub_1C6EE4730("Loaded features store at %{public}@", 35, 2, &dword_1C6DE9000, v49, v42, v38);
  }

  return v30;
}

void sub_1C6ED5300(int a1)
{
  v3 = *(*v1 + 152);
  type metadata accessor for FileStore.FileContainer.Flags(0, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  swift_getWitnessTable();
  if ((sub_1C6EE5620() & 1) == 0)
  {
    v4 = *(v1 + v3) | a1;
    *(v1 + v3) = v4;
    sub_1C6ED6DC0(v4, v1 + *(*v1 + 120));
  }
}

uint64_t sub_1C6ED5458(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0xD000000000000012;
      }

      goto LABEL_8;
    }

    return 7105633;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x5047646E41757063;
      }

LABEL_8:
      v5[4] = v1;
      v5[5] = v2;
      sub_1C6EE51B0();

      strcpy(v5, "unknown value ");
      HIBYTE(v5[1]) = -18;
      v4 = sub_1C6EE5460();
      MEMORY[0x1CCA57F60](v4);

      return v5[0];
    }

    return 0x796C6E4F757063;
  }
}

uint64_t sub_1C6ED557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for FileStore.FileContainer.Flags(255, a2, a3, a4);
    sub_1C6EE5470();
    swift_allocObject();
    sub_1C6EE4CC0();
    *v8 = 8;
    sub_1C6EE4D50();
    swift_getWitnessTable();
    sub_1C6EE5040();
    sub_1C6ED5300(v9);
  }

  return result;
}

uint64_t sub_1C6ED5670()
{
  v0 = sub_1C6ED28FC();
  v1 = sub_1C6ED56EC();
  if (*(v1 + 16) <= *(v0 + 16) >> 3)
  {
    sub_1C6E038DC(v1);
  }

  else
  {
    v0 = sub_1C6E04178(v1, v0);
  }

  return v0;
}

uint64_t sub_1C6ED56EC()
{
  v1 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v45 = sub_1C6EE4020();
  v2 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v46 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C6EE41A0();
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1E69E7CD0];
  v7 = [objc_opt_self() defaultManager];
  v42[1] = *(*v0 + 136);
  v8 = sub_1C6EE4100();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
  v9 = swift_allocObject();
  v48 = xmmword_1C6EE6590;
  *(v9 + 16) = xmmword_1C6EE6590;
  v10 = *MEMORY[0x1E695DB78];
  *(v9 + 32) = *MEMORY[0x1E695DB78];
  type metadata accessor for URLResourceKey(0);
  v47 = v10;
  v11 = sub_1C6EE4C90();

  v51 = 0;
  v12 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v11 options:0 error:&v51];

  v13 = v51;
  if (!v12)
  {
    v29 = v51;
    v30 = sub_1C6EE4050();

    swift_willThrow();
    v17 = v30;
    if (qword_1EDEF8F80 == -1)
    {
LABEL_11:
      v31 = qword_1EDEF8F88;
      v32 = sub_1C6EE4ED0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1C6EE6B40;
      sub_1C6DF1088();
      v34 = sub_1C6EE5460();
      v36 = v35;
      v37 = MEMORY[0x1E69E6158];
      *(v33 + 56) = MEMORY[0x1E69E6158];
      v38 = sub_1C6DF10E0();
      *(v33 + 64) = v38;
      *(v33 + 32) = v34;
      *(v33 + 40) = v36;
      v51 = 0;
      v52 = 0xE000000000000000;
      swift_getErrorValue();
      sub_1C6EE5480();
      v39 = v51;
      v40 = v52;
      *(v33 + 96) = v37;
      *(v33 + 104) = v38;
      *(v33 + 72) = v39;
      *(v33 + 80) = v40;
      sub_1C6EE4730("Encountered error looking in contents of directory %{public}@. Error: %{public}@", 80, 2, &dword_1C6DE9000, v31, v32, v33);

      return v53;
    }

LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  v14 = sub_1C6EE4CA0();
  v15 = v13;

  v44 = *(v14 + 16);
  if (v44)
  {
    v42[0] = v1;
    v16 = 0;
    v17 = 0;
    v43 = v14 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v42[2] = v50 + 16;
    v18 = (v2 + 8);
    v19 = (v50 + 8);
    while (v16 < *(v14 + 16))
    {
      v20 = v4;
      (*(v50 + 16))(v6, v43 + *(v50 + 72) * v16, v4);
      inited = swift_initStackObject();
      *(inited + 16) = v48;
      v22 = v47;
      *(inited + 32) = v47;
      v23 = v22;
      sub_1C6ED9D4C(inited);
      swift_setDeallocating();
      sub_1C6DFFC0C(inited + 32);
      v24 = v46;
      sub_1C6EE40C0();

      v25 = sub_1C6EE3FF0();
      (*v18)(v24, v45);
      if (v25 != 2 && (v25 & 1) != 0)
      {
        v51 = sub_1C6EE40E0();
        v52 = v26;
        v27 = sub_1C6EE4BF0();
        sub_1C6E032E0(&v51, v27, v28);
      }

      v4 = v20;
      (*v19)(v6, v20);
      if (v44 == ++v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  return v53;
}

BOOL sub_1C6ED5CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedConformanceWitness();
  sub_1C6EE51C0();
  v6 = sub_1C6EDCBA0(v8, v9, a2);

  return (v6 & 1) == 0;
}

uint64_t sub_1C6ED5D58(uint64_t a1, uint64_t *a2)
{
  v15 = a1;
  v2 = *a2;
  v3 = sub_1C6EE4090();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6EE41A0();
  v16 = *(v7 - 8);
  v17 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 128);
  v10 = *(v2 + 88);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C6EE51C0();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968F70], v3);
  sub_1C6DF0C68();
  sub_1C6EE4190();
  (*(v4 + 8))(v6, v3);

  v18[3] = v10;
  v18[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v15, v10);
  sub_1C6E31184(v18, v9);
  (*(v16 + 8))(v9, v17);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1C6ED6024(uint64_t a1)
{
  type metadata accessor for FileStore.FileContainer.Flags(255, *(*a1 + 80), *(*a1 + 88), *(*a1 + 96));
  sub_1C6EE5470();
  swift_allocObject();
  sub_1C6EE4CC0();
  *v2 = 0x80000000;
  sub_1C6EE4D50();
  swift_getWitnessTable();
  sub_1C6EE5040();
  *(a1 + *(*a1 + 152)) = v7;
  __src = v7;
  v3 = sub_1C6ED9F98(&__src, &v9 + 4);
  v5 = v4;
  sub_1C6E2B91C(v3, v4 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000031, 0x80000001C6EFDB50);

  return sub_1C6DF1134(v3, v5 & 0xFFFFFFFFFFFFFFLL);
}

void sub_1C6ED61A4(void (*a1)(void), uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if ((*(v2 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_options) & 4) != 0)
  {
    v4 = v3;
    v5 = a1;
    if (qword_1EDEF66B0 != -1)
    {
      a1 = swift_once();
    }

    v7 = qword_1EDEF66C0;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock(v7 + 6);
    sub_1C6EDA7A8(&v7[4]);
    os_unfair_lock_unlock(v7 + 6);
    if (!v3)
    {
      v15 = 1;
      v16[0] = 0;
      if (*(v2 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter))
      {
        v4 = v2;
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
      swift_unknownObjectRelease();
      v9 = sub_1C6EE4100();
      v10 = swift_allocObject();
      v10[2] = &v15;
      v10[3] = v5;
      v10[4] = a2;
      v10[5] = v16;
      v11 = swift_allocObject();
      v11[2] = sub_1C6EDAD50;
      v11[3] = v10;
      aBlock[4] = sub_1C6EDAD80;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C6ED7D7C;
      aBlock[3] = &block_descriptor_63;
      v12 = _Block_copy(aBlock);

      aBlock[0] = 0;
      [v8 coordinateWritingItemAtURL:v9 options:1 error:aBlock byAccessor:v12];
      _Block_release(v12);

      v13 = aBlock[0];
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }

      if (v13)
      {
        swift_willThrow();
      }

      else if (v16[0])
      {
        swift_willThrow();
      }

      else if (v15)
      {
        __break(1u);
      }

      else
      {
      }
    }
  }

  else
  {
    a1();
  }
}

void sub_1C6ED64E0(int a1)
{
  type metadata accessor for FileStore.FileContainer.Flags(255, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  sub_1C6EE5470();
  swift_allocObject();
  sub_1C6EE4CC0();
  *v3 = a1;
  sub_1C6EE4D50();
  swift_getWitnessTable();
  sub_1C6EE5040();
  sub_1C6ED5300(v4);
}

uint64_t sub_1C6ED65EC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FileStore.FileContainer.Flags(0, a2, a3, a4);
  swift_getWitnessTable();
  if (sub_1C6EE5620())
  {
    v4 = sub_1C6ED8FB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1C6ED8FB0((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = 0xD000000000000010;
    *(v7 + 5) = 0x80000001C6EFDC40;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1C6EE5620())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1C6ED8FB0(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1C6ED8FB0((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[16 * v9];
    *(v10 + 4) = 0x4672657355736168;
    *(v10 + 5) = 0xEF73657275746165;
  }

  if (sub_1C6EE5620())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1C6ED8FB0(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_1C6ED8FB0((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[16 * v12];
    strcpy(v13 + 32, "hasAllPackages");
    v13[47] = -18;
  }

  if (sub_1C6EE5620())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1C6ED8FB0(0, *(v4 + 2) + 1, 1, v4);
    }

    v15 = *(v4 + 2);
    v14 = *(v4 + 3);
    if (v15 >= v14 >> 1)
    {
      v4 = sub_1C6ED8FB0((v14 > 1), v15 + 1, 1, v4);
    }

    *(v4 + 2) = v15 + 1;
    v16 = &v4[16 * v15];
    strcpy(v16 + 32, "hasAllModels");
    v16[45] = 0;
    *(v16 + 23) = -5120;
  }

  if (sub_1C6EE5620())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1C6ED8FB0(0, *(v4 + 2) + 1, 1, v4);
    }

    v18 = *(v4 + 2);
    v17 = *(v4 + 3);
    if (v18 >= v17 >> 1)
    {
      v4 = sub_1C6ED8FB0((v17 > 1), v18 + 1, 1, v4);
    }

    *(v4 + 2) = v18 + 1;
    v19 = &v4[16 * v18];
    *(v19 + 4) = 0xD000000000000010;
    *(v19 + 5) = 0x80000001C6EFDC20;
  }

  if (sub_1C6EE5620())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1C6ED8FB0(0, *(v4 + 2) + 1, 1, v4);
    }

    v21 = *(v4 + 2);
    v20 = *(v4 + 3);
    if (v21 >= v20 >> 1)
    {
      v4 = sub_1C6ED8FB0((v20 > 1), v21 + 1, 1, v4);
    }

    *(v4 + 2) = v21 + 1;
    v22 = &v4[16 * v21];
    *(v22 + 4) = 0xD000000000000013;
    *(v22 + 5) = 0x80000001C6EFDC00;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
  sub_1C6EDA944(&qword_1EDEF67C8, &unk_1EC1F9A50, &qword_1C6EE90D0, MEMORY[0x1E69E6310]);
  v23 = sub_1C6EE4A10();
  v25 = v24;

  MEMORY[0x1CCA57F60](v23, v25);

  MEMORY[0x1CCA57F60](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1C6ED6AF4(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_1C6EE5620();
}

uint64_t sub_1C6ED6B54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t sub_1C6ED6BBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t sub_1C6ED6C24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t sub_1C6ED6C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

void sub_1C6ED6D1C(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  *(a1 + 4) = 0;
}

void *sub_1C6ED6D58()
{
  swift_getWitnessTable();

  return sub_1C6EE5040();
}

void sub_1C6ED6DC0(int a1, uint64_t a2)
{
  v14[1] = *(v2 + 80);
  v15 = *(v2 + 96);
  v16 = a2;
  v17 = a1;
  sub_1C6ED6FD4(sub_1C6ED9AB4, v14);
  if (v3)
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDEF8F88;
    v5 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C6EE6B40;
    v7 = sub_1C6EE40E0();
    v9 = v8;
    v10 = MEMORY[0x1E69E6158];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1C6DF10E0();
    *(v6 + 64) = v11;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v18 = 0;
    v19 = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v12 = v18;
    v13 = v19;
    *(v6 + 96) = v10;
    *(v6 + 104) = v11;
    *(v6 + 72) = v12;
    *(v6 + 80) = v13;
    sub_1C6EE4730("Failed to save container flags, container=%{public}@, error=%{public}@", 70, 2, &dword_1C6DE9000, v4, v5, v6);

    swift_willThrow();
  }
}

uint64_t sub_1C6ED6F44(uint64_t a1, int a2)
{
  __src = a2;
  v2 = sub_1C6ED9F98(&__src, &v7 + 4);
  v4 = v3;
  sub_1C6E2B91C(v2, v3 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000031, 0x80000001C6EFDB50);

  return sub_1C6DF1134(v2, v4 & 0xFFFFFFFFFFFFFFLL);
}

void sub_1C6ED6FD4(void (*a1)(void), uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ((*(v2 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_options) & 4) != 0)
  {
    v5 = 0;
    v13 = 1;
    v14[0] = 0;
    if (*(v2 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter))
    {
      v5 = v2;
    }

    v6 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
    swift_unknownObjectRelease();
    v7 = sub_1C6EE4100();
    v8 = swift_allocObject();
    v8[2] = &v13;
    v8[3] = a1;
    v8[4] = a2;
    v8[5] = v14;
    v9 = swift_allocObject();
    v9[2] = sub_1C6ED9ADC;
    v9[3] = v8;
    aBlock[4] = sub_1C6ED9AE0;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C6ED7D7C;
    aBlock[3] = &block_descriptor_1;
    v10 = _Block_copy(aBlock);

    aBlock[0] = 0;
    [v6 coordinateWritingItemAtURL:v7 options:0 error:aBlock byAccessor:v10];
    _Block_release(v10);

    v11 = aBlock[0];
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    if (v11)
    {
      swift_willThrow();
    }

    else if (v14[0])
    {
      swift_willThrow();
    }

    else if (v13)
    {
      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    a1();
  }
}

uint64_t sub_1C6ED72CC()
{
  v0 = sub_1C6EE42C0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  sub_1C6ED73F0(&v10 - v5);
  sub_1C6ED73F0(v4);
  v7 = sub_1C6EE4280();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1C6ED73F0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9868, &unk_1C6EF6B40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1C6EE4020();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
  inited = swift_initStackObject();
  v21 = xmmword_1C6EE6590;
  *(inited + 16) = xmmword_1C6EE6590;
  v10 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v11 = v10;
  sub_1C6ED9D4C(inited);
  swift_setDeallocating();
  sub_1C6DFFC0C(inited + 32);
  sub_1C6EE40C0();

  sub_1C6EE4000();
  (*(v6 + 8))(v8, v5);
  v12 = sub_1C6EE42C0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v4, v12);
  }

  sub_1C6EDA890(v4, &qword_1EC1F9868, &unk_1C6EF6B40);
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDEF8F88;
  v15 = sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  v17 = sub_1C6EE4080();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1C6DF10E0();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_1C6EE4730("Got nil creation date for container %{public}@", 46, 2, &dword_1C6DE9000, v14, v15, v16);

  return sub_1C6EE4250();
}

uint64_t sub_1C6ED7838()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6ED78A4(uint64_t a1)
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

void *sub_1C6ED791C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C6ED7948@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1C6ED79F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C6ED7A28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C6ED9F40(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1C6ED7A68(void *a1, uint64_t a2)
{
  v22 = sub_1C6EE41A0();
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *a1;
  v10 = v23;
  v12 = sub_1C6DF0598(a2 + v8);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  result = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v11;
  if (v10[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_13;
    }

    *a1 = v10;
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C6DF07F0(result, isUniquelyReferenced_nonNull_native);
    v10 = v23;
    result = sub_1C6DF0598(a2 + v8);
    if ((v2 & 1) != (v16 & 1))
    {
      result = sub_1C6EE5500();
      __break(1u);
      return result;
    }

    v12 = result;
    *a1 = v10;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  while (1)
  {
    v18 = v10[7];
    v19 = *(v18 + 8 * v12);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (!v20)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    result = sub_1C6E0A9A4();
    v10 = v23;
    *a1 = v23;
    if ((v2 & 1) == 0)
    {
LABEL_8:
      v17 = *(v5 + 16);
      v5 += 16;
      v17(v7, a2 + v8, v22);
      result = sub_1C6DF0BB0(v12, v7, 0, v10);
    }
  }

  *(v18 + 8 * v12) = v21;
  return result;
}

uint64_t sub_1C6ED7C34(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1C6EE4FE0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  a3(v11);
  (*(*(a6 - 8) + 56))(v13, 0, 1, a6);
  return (*(v10 + 40))(a2, v13, v9);
}

uint64_t sub_1C6ED7D7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6EE41A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1C6EE4150();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C6ED7E60(unint64_t result, uint64_t a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    v4 = OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL;
    result = sub_1C6DF0598(a2 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL);
    if ((v5 & 1) != 0 && *(*(v2 + 56) + 8 * result) >= 2)
    {
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v6 = qword_1EDEF8F88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1C6EE6B40;
      v8 = sub_1C6EE40E0();
      v10 = v9;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1C6DF10E0();
      v11 = MEMORY[0x1E69E6530];
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      v12 = MEMORY[0x1E69E65A8];
      *(v7 + 96) = v11;
      *(v7 + 104) = v12;
      v13 = *(v2 + 16);
      if (v13)
      {
        v14 = sub_1C6DF0598(a2 + v4);
        if (v15)
        {
          v13 = *(*(v2 + 56) + 8 * v14);
        }

        else
        {
          v13 = 0;
        }
      }

      *(v7 + 72) = v13;
      v16 = sub_1C6EE4EE0();
      sub_1C6EE4730("Rejecting container deletion by this process because it's in use by more than one instance, name=%{public}@, refCount=%lu", 121, 2, &dword_1C6DE9000, v6, v16, v7);

      sub_1C6EDA690();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1C6ED8100()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  [v0 setQualityOfService_];
  v1 = sub_1C6EE4A60();
  [v0 setName_];

  qword_1EDEF6138 = v0;
}

uint64_t sub_1C6ED8204()
{
  if ((*(*(v0 + 16) + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_options) & 0x10) != 0)
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDEF8F88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C6EE6590;
    v4 = sub_1C6EE40E0();
    v6 = v5;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1C6DF10E0();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    v7 = sub_1C6EE4EE0();
    sub_1C6EE4730("Rejecting container deletion by another process, name=%{public}@", 64, 2, &dword_1C6DE9000, v2, v7, v3);

    sub_1C6EDA690();
    swift_allocError();
    swift_willThrow();
    v1 = *(v0 + 8);
  }

  else
  {
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_1C6ED84FC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C6ED85A4;

  return sub_1C6ED81E4();
}

uint64_t sub_1C6ED85A4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1C6EE4040();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id sub_1C6ED8758()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C6ED87FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C6EDAD20;

  return v6();
}

uint64_t sub_1C6ED88E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C6ED89CC;

  return v7();
}

uint64_t sub_1C6ED89CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C6ED8AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A70, &qword_1C6EF75A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1C6EDA3BC(a3, v23 - v10);
  v12 = sub_1C6EE4DC0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C6EDA890(v11, &unk_1EC1F9A70, &qword_1C6EF75A8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C6EE4DB0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1C6EE4D70();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1C6EE4B10() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1C6EDA890(a3, &unk_1EC1F9A70, &qword_1C6EF75A8);

    return v21;
  }

LABEL_8:
  sub_1C6EDA890(a3, &unk_1EC1F9A70, &qword_1C6EF75A8);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1C6ED8DAC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C6ED8EA4;

  return v6(a1);
}

uint64_t sub_1C6ED8EA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_1C6ED8FB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A60, &qword_1C6EE6950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1C6ED915C()
{
  result = qword_1EC1F9A00;
  if (!qword_1EC1F9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9A00);
  }

  return result;
}

unint64_t sub_1C6ED91B4()
{
  result = qword_1EC1F9A08;
  if (!qword_1EC1F9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9A08);
  }

  return result;
}

unint64_t sub_1C6ED920C()
{
  result = qword_1EC1F9A10;
  if (!qword_1EC1F9A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9A10);
  }

  return result;
}

unint64_t sub_1C6ED9264()
{
  result = qword_1EC1F9A18;
  if (!qword_1EC1F9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9A18);
  }

  return result;
}

char *sub_1C6ED92D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A20, &qword_1C6EF6B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C6ED93D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6ED94DC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_3(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1C6ED95D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AD0, &qword_1C6EE6C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6ED96DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C6ED98CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_3(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1C6ED9B08(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C6EE5110();
LABEL_9:
  result = sub_1C6EE51F0();
  *v2 = result;
  return result;
}

uint64_t sub_1C6ED9BA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6EE5110();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C6EE5110();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6EDA944(&qword_1EC1F9A98, &qword_1EC1F9A90, &qword_1C6EF7610, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A90, &qword_1C6EF7610);
            v9 = sub_1C6EC1168(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for RequestEventProcessor();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6ED9D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A48, &qword_1C6EF75A0);
    v3 = sub_1C6EE5180();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1C6EE4A90();
      sub_1C6EE5580();
      v27 = v7;
      sub_1C6EE4B30();
      v8 = sub_1C6EE55A0();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1C6EE4A90();
        v18 = v17;
        if (v16 == sub_1C6EE4A90() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1C6EE54B0();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C6ED9F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1C6ED9F78(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6ED9F98(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1C6EDA050()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C6EDA0FC;

  return sub_1C6ED84FC(v2, v3);
}

uint64_t sub_1C6EDA0FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C6EDA1F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C6EDAD24;

  return sub_1C6ED87FC(v2, v3, v4);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C6EDA2F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6EDAD28;

  return sub_1C6ED88E4(a1, v4, v5, v6);
}

uint64_t sub_1C6EDA3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A70, &qword_1C6EF75A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6EDA42C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6EDAD38;

  return sub_1C6ED8DAC(a1, v4);
}

uint64_t sub_1C6EDA4E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6EDA59C;

  return sub_1C6ED8DAC(a1, v4);
}

uint64_t sub_1C6EDA59C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1C6EDA690()
{
  result = qword_1EDEF66A8;
  if (!qword_1EDEF66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF66A8);
  }

  return result;
}

void *sub_1C6EDA7C4()
{
  v1 = *(v0 + 16);
  result = (*(v0 + 24))(&v3);
  *v1 = 0;
  return result;
}

uint64_t sub_1C6EDA840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

void sub_1C6EDA86C(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1C6EDA884(result, a2 & 1);
  }
}

void sub_1C6EDA884(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C6EDA890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6EDA908@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C6ED28FC();
  *a1 = result;
  return result;
}

uint64_t sub_1C6EDA944(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1C6EDA9A8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1C6EDA9C0(result, a2 & 1);
  }

  return result;
}

id sub_1C6EDA9C0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1C6EDA9CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C6EDAA5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C6EDAB10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6EDAB30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1C6EDAB60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6EDAB80(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerLock.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContainerLock.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1C6EDAC90()
{
  result = qword_1EC1F9BA0;
  if (!qword_1EC1F9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9BA0);
  }

  return result;
}

uint64_t sub_1C6EDAD84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1C6E15B90(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  result = sub_1C6EE50D0();
  v6 = result;
  v7 = 0;
  v25 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v23 = *(*(a1 + 56) + 4 * v6);
    v12 = *(v26 + 16);
    v13 = *(v26 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1C6E15B90((v13 > 1), v12 + 1, 1);
    }

    *(v26 + 16) = v12 + 1;
    v14 = v26 + 24 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    *(v14 + 48) = v23;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1C6EDB7B4(v6, v25, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1C6EDB7B4(v6, v25, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C6EDAFE4()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EDB050(uint64_t a1)
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

void sub_1C6EDB0A0(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LODWORD(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = sub_1C6DEC784(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C6E07580(v15, v5 & 1);
    v10 = sub_1C6DEC784(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1C6EE5500();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1C6E09DC4();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA8, &unk_1C6EE89F8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 4 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C6EE51B0();
    MEMORY[0x1CCA57F60](0xD00000000000001BLL, 0x80000001C6EF8350);
    sub_1C6EE52F0();
    MEMORY[0x1CCA57F60](39, 0xE100000000000000);
    sub_1C6EE5300();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_1C6DEC784(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1C6E07580(v31, 1);
        v27 = sub_1C6DEC784(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 4 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 6;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1C6EDB41C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1C6E15A50(0, v4, 0);
  if (a2 < 0)
  {
    goto LABEL_23;
  }

  v8 = 0;
  v26 = a2;
  v27 = a1 + 32;
  v9 = v31;
  v24 = 4 * a2;
  v25 = v4;
  while (1)
  {
    v10 = *(v27 + 8 * v8);

    v28 = v9;
    v29 = v8;
    if (!a2)
    {
      break;
    }

    v11 = sub_1C6EE4D00();
    *(v11 + 16) = a2;
    bzero((v11 + 32), v24);
    v12 = *(v10 + 16);
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_17:

    v9 = v28;
    v23 = *(v28 + 16);
    v22 = *(v28 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1C6E15A50((v22 > 1), v23 + 1, 1);
      v9 = v28;
    }

    v8 = v29 + 1;
    *(v9 + 16) = v23 + 1;
    *(v9 + 8 * v23 + 32) = v11;
    a2 = v26;
    if (v29 + 1 == v25)
    {
      return;
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_8:
  v13 = 0;
  v14 = (v10 + 40);
  while (v13 < *(v10 + 16))
  {
    if (v13 < *(v11 + 16))
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = *(a3 + 16);

      v18 = a3;
      v19 = a4;
      if (v17)
      {
        v20 = sub_1C6DEC784(v15, v16);
        v19 = a4;
        if (v21)
        {
          v19 = *(*(v18 + 56) + 4 * v20);
        }
      }

      if (v13 >= *(v11 + 16))
      {
        goto LABEL_22;
      }

      *(v11 + 32 + 4 * v13) = v19;
      a3 = v18;
    }

    ++v13;
    v14 += 2;
    if (v12 == v13)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_1C6EDB618(uint64_t *a1)
{
  if (*(sub_1C6EDAD84(a1[2]) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7740, &qword_1C6EE68F0);
    v3 = sub_1C6EE5340();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v10 = v3;

  sub_1C6EDB0A0(v4, 1, &v10);
  if (!v1)
  {

    v5 = v10;
    if (*(v10 + 16))
    {
      v7 = *a1;
      v6 = a1[1];

      sub_1C6DEC784(v7, v6);
      if (v8)
      {
        return v5;
      }
    }

    else
    {
    }

    sub_1C6EDB760();
    swift_allocError();
    swift_willThrow();
    return v5;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1C6EDB760()
{
  result = qword_1EC1F9C10;
  if (!qword_1EC1F9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9C10);
  }

  return result;
}

uint64_t sub_1C6EDB7B4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for TokenCodeError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TokenCodeError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1C6EDB8C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1C6EDB908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C6EDB960()
{
  result = qword_1EC1F9C18;
  if (!qword_1EC1F9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9C18);
  }

  return result;
}

uint64_t InterestToken.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t InterestToken.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t InterestToken.deinit()
{
  v1 = *(v0 + 16);

  v1(v2);

  return v0;
}

uint64_t InterestToken.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v1(v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6EDBB08(void *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C6ECE368(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C6EE10BC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1C6EDBBBC(void (*a1)(void *), uint64_t a2, unint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v29 - v6;
  v7 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A30(0, v7, 0);
    v38 = v40;
    v9 = a3 + 56;
    v10 = sub_1C6EE50D0();
    v11 = 0;
    v30 = a3 + 64;
    v31 = v7;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a3 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v35 = v11;
      v14 = *(a3 + 36);
      v15 = a3;
      v16 = (*(a3 + 48) + 16 * v10);
      v17 = v16[1];
      v39[0] = *v16;
      v39[1] = v17;

      v33(v39);
      v36 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v18 = v38;
      v40 = v38;
      v20 = *(v38 + 16);
      v19 = *(v38 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C6E15A30((v19 > 1), v20 + 1, 1);
        v18 = v40;
      }

      *(v18 + 16) = v20 + 1;
      v21 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v38 = v18;
      sub_1C6EE3C44(v37, v18 + v21 + *(v32 + 72) * v20);
      v12 = 1 << *(v15 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v22 = *(v9 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v15;
      if (v14 != *(v15 + 36))
      {
        goto LABEL_26;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1C6DFCC80(v10, v14, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_1C6DFCC80(v10, v14, 0);
      }

LABEL_4:
      v3 = v36;
      v11 = v35 + 1;
      v10 = v12;
      if (v35 + 1 == v31)
      {
        return v38;
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

  return result;
}

uint64_t sub_1C6EDBED0(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v44 = MEMORY[0x1E69E7CC0];
  sub_1C6E15B70(0, v5, 0);
  v6 = v44;
  v41 = a1 + 64;
  result = sub_1C6EE50D0();
  v8 = result;
  v9 = 0;
  v43 = *(a1 + 36);
  v32 = a1 + 72;
  v33 = v5;
  v34 = a1;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v41 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_22;
    }

    if (v43 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v37 = v9;
    v38 = 1 << v8;
    v12 = *(a1 + 56);
    v13 = (*(a1 + 48) + 16 * v8);
    v40 = v6;
    v14 = *v13;
    v15 = v13[1];
    v16 = v12 + 24 * v8;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = v4;
    v20 = *(v16 + 16);
    swift_bridgeObjectRetain_n();
    sub_1C6E00CBC(v18, v17, v20);
    sub_1C6E00CBC(v18, v17, v20);

    v21 = sub_1C6E00C60(v18, v17, v20);
    v39 = &v32;
    MEMORY[0x1EEE9AC00](v21);
    *(&v32 - 6) = v14;
    *(&v32 - 5) = v15;
    *(&v32 - 4) = v18;
    *(&v32 - 3) = v17;
    *(&v32 - 16) = v20;
    sub_1C6EE3E68();
    v22 = v42;
    sub_1C6EE4600();
    v42 = v22;
    v6 = v40;

    sub_1C6E00C60(v18, v17, v20);
    v44 = v6;
    v24 = *(v6 + 16);
    v23 = *(v6 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1C6E15B70((v23 > 1), v24 + 1, 1);
      v6 = v44;
    }

    *(v6 + 16) = v24 + 1;
    result = sub_1C6EE3DDC(v19, v6 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    a1 = v34;
    v10 = 1 << *(v34 + 32);
    if (v8 >= v10)
    {
      goto LABEL_24;
    }

    v25 = *(v41 + 8 * v11);
    if ((v25 & v38) == 0)
    {
      goto LABEL_25;
    }

    if (v43 != *(v34 + 36))
    {
      goto LABEL_26;
    }

    v4 = v19;
    v26 = v25 & (-2 << (v8 & 0x3F));
    if (v26)
    {
      v10 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v11 << 6;
      v28 = v11 + 1;
      v29 = (v32 + 8 * v11);
      while (v28 < (v10 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_1C6DFCC80(v8, v43, 0);
          v10 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_1C6DFCC80(v8, v43, 0);
    }

LABEL_4:
    v9 = v37 + 1;
    v8 = v10;
    if (v37 + 1 == v33)
    {
      return v6;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C6EDC2B0(void (*a1)(void *), uint64_t a2, unint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v35 = sub_1C6EE41A0();
  MEMORY[0x1EEE9AC00](v35);
  v40 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v43 = MEMORY[0x1E69E7CC0];
    v9 = v5;
    sub_1C6E15BD0(0, v7, 0);
    v41 = v43;
    v39 = a3 + 56;
    v10 = sub_1C6EE50D0();
    v11 = 0;
    v33 = v9 + 32;
    v34 = v9;
    v31 = a3 + 64;
    v32 = v7;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a3 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v39 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v15 = *(a3 + 36);
      v16 = a3;
      v17 = (*(a3 + 48) + 16 * v10);
      v18 = v17[1];
      v42[0] = *v17;
      v42[1] = v18;

      v36(v42);
      v38 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v19 = v41;
      v43 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C6E15BD0((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v41 = v19;
      (*(v34 + 32))(v19 + v22 + *(v34 + 72) * v21, v40, v35);
      v12 = 1 << *(v16 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v23 = *(v39 + 8 * v14);
      if ((v23 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v16;
      if (v15 != *(v16 + 36))
      {
        goto LABEL_26;
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
            sub_1C6DFCC80(v10, v15, 0);
            v12 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_1C6DFCC80(v10, v15, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      v3 = v38;
      if (v11 == v13)
      {
        return v41;
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

  return result;
}

uint64_t sub_1C6EDC5E4(void (*a1)(void *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = a3;
    v60 = MEMORY[0x1E69E7CC0];
    sub_1C6E15B50(0, v3, 0);
    v6 = v60;
    v7 = v5 + 64;
    result = sub_1C6EE50D0();
    v8 = result;
    v9 = 0;
    v10 = *(v5 + 36);
    v44 = v5 + 72;
    v45 = v3;
    v47 = v5 + 64;
    v48 = v5;
    v46 = v10;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
    {
      v13 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (v10 != *(v5 + 36))
      {
        goto LABEL_26;
      }

      v50 = v9;
      v14 = *(v5 + 56);
      v15 = (*(v5 + 48) + 16 * v8);
      v17 = *v15;
      v16 = v15[1];
      v18 = v14 + 24 * v8;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      swift_bridgeObjectRetain_n();
      sub_1C6E00CBC(v19, v20, v21);
      sub_1C6E00CBC(v19, v20, v21);

      sub_1C6E00C60(v19, v20, v21);
      v53[0] = v17;
      v53[1] = v16;
      v54 = v19;
      v55 = v20;
      v56 = v21;
      a1(v57, v53, &v52);
      if (v51)
      {
        v40 = v54;
        v41 = v55;
        v42 = v56;

        sub_1C6E00C60(v40, v41, v42);
      }

      v51 = 0;
      v22 = v54;
      v23 = v55;
      v24 = v56;

      result = sub_1C6E00C60(v22, v23, v24);
      v25 = v57[0];
      v26 = v57[1];
      v27 = v58;
      v28 = v59;
      v29 = v6;
      v60 = v6;
      v30 = *(v6 + 16);
      v31 = *(v29 + 24);
      if (v30 >= v31 >> 1)
      {
        v43 = v58;
        result = sub_1C6E15B50((v31 > 1), v30 + 1, 1);
        v27 = v43;
        v29 = v60;
      }

      *(v29 + 16) = v30 + 1;
      v32 = v29 + 40 * v30;
      *(v32 + 32) = v25;
      *(v32 + 40) = v26;
      *(v32 + 48) = v27;
      *(v32 + 64) = v28;
      v5 = v48;
      v11 = 1 << *(v48 + 32);
      if (v8 >= v11)
      {
        goto LABEL_27;
      }

      v7 = v47;
      v33 = *(v47 + 8 * v13);
      if ((v33 & (1 << v8)) == 0)
      {
        goto LABEL_28;
      }

      v6 = v29;
      v10 = v46;
      if (v46 != *(v48 + 36))
      {
        goto LABEL_29;
      }

      v34 = v33 & (-2 << (v8 & 0x3F));
      if (v34)
      {
        v11 = __clz(__rbit64(v34)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v12 = v45;
      }

      else
      {
        v35 = v13 << 6;
        v36 = v13 + 1;
        v12 = v45;
        v37 = (v44 + 8 * v13);
        while (v36 < (v11 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_1C6DFCC80(v8, v46, 0);
            v11 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_1C6DFCC80(v8, v46, 0);
      }

LABEL_4:
      v9 = v50 + 1;
      v8 = v11;
      if (v50 + 1 == v12)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6EDC924(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = a3;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A10(0, v4, 0);
    v35 = v40;
    v7 = v6 + 56;
    v8 = sub_1C6EE50D0();
    v9 = 0;
    v31 = v6 + 64;
    v32 = v4;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      v34 = v9;
      v12 = *(v6 + 36);
      v13 = v6;
      v14 = (*(v6 + 48) + 16 * v8);
      v15 = v14[1];
      v37[0] = *v14;
      v37[1] = v15;

      a1(&v38, v37);
      if (v3)
      {
        goto LABEL_27;
      }

      v16 = v38;
      v17 = v39;
      v18 = v35;
      v40 = v35;
      v20 = *(v35 + 16);
      v19 = *(v35 + 24);
      if (v20 >= v19 >> 1)
      {
        v36 = v38;
        v30 = v39;
        sub_1C6E15A10((v19 > 1), v20 + 1, 1);
        v17 = v30;
        v16 = v36;
        v18 = v40;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v17;
      v6 = v13;
      v10 = 1 << *(v13 + 32);
      if (v8 >= v10)
      {
        goto LABEL_24;
      }

      v22 = *(v7 + 8 * v11);
      if ((v22 & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      v35 = v18;
      v23 = v12;
      if (v12 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v24 = v22 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v10 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v11 << 6;
        v26 = v11 + 1;
        v27 = (v31 + 8 * v11);
        while (v26 < (v10 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_1C6DFCC80(v8, v23, 0);
            v10 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_1C6DFCC80(v8, v23, 0);
      }

LABEL_4:
      v3 = 0;
      v9 = v34 + 1;
      v8 = v10;
      if (v34 + 1 == v32)
      {
        return v35;
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

  return result;
}

uint64_t sub_1C6EDCBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C6EE5580();
  sub_1C6EE4B30();
  v6 = sub_1C6EE55A0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1C6EE54B0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C6EDCC98(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1C6EE5140();

    return v3 & 1;
  }

  else if (*(a2 + 16) && (sub_1C6EE5580(), v6 = *(a1 + 16), v7 = *(a1 + 24), sub_1C6EE4B30(), v8 = sub_1C6EE55A0(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(a2 + 48) + 8 * v10);
      v13 = *(v12 + 16) == v6 && *(v12 + 24) == v7;
      if (v13 || (sub_1C6EE54B0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6EDCDC0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v15 = sub_1C6EE55A0();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_1C6EE54B0() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_1C6EDCF9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v15 = sub_1C6EE55A0();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_1C6EE54B0() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_1C6EDD178(uint64_t a1)
{
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v67 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
  if ((sub_1C6E20DC4(v6, a1) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v60[1] = v1;
  v66 = *(v6 + 16);
  if (v66)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC8];
    v61 = xmmword_1C6EE65B0;
    v62 = v6;
    v63 = a1;
    while (v7 < *(v6 + 16))
    {
      sub_1C6EE3D74(v6 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v7, v5, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v9 = *v5;
      v10 = *(v5 + 1);
      v11 = *(v5 + 3);
      v12 = v5[32];

      if (sub_1C6E26E94(v9, v10, v11, v12, a1))
      {
        if (*(a1 + 16) && (v13 = sub_1C6DEC784(v9, v10), (v14 & 1) != 0))
        {
          v15 = *(a1 + 56) + 24 * v13;
          v16 = *(v15 + 8);
          v17 = v8;
          v18 = *(v15 + 16);
          v65 = *v15;
          v19 = v16;
          v20 = v18;
          sub_1C6E00CBC(v65, v16, v18);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = v17;
          v23 = sub_1C6DEC784(v9, v10);
          v24 = *(v17 + 16);
          v25 = (v22 & 1) == 0;
          v26 = v24 + v25;
          if (__OFADD__(v24, v25))
          {
            goto LABEL_31;
          }

          v27 = v22;
          if (*(v17 + 24) >= v26)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C6E09928();
            }
          }

          else
          {
            sub_1C6E06D1C(v26, isUniquelyReferenced_nonNull_native);
            v28 = sub_1C6DEC784(v9, v10);
            if ((v27 & 1) != (v29 & 1))
            {
              goto LABEL_33;
            }

            v23 = v28;
          }

          v47 = v65;
          v48 = v70;
          if (v27)
          {
            v49 = v70[7] + 24 * v23;
            v50 = *v49;
            v51 = *(v49 + 8);
            v52 = *(v49 + 16);
            *v49 = v65;
            *(v49 + 8) = v19;
            *(v49 + 16) = v20;
            sub_1C6E00C60(v50, v51, v52);

            v6 = v62;
            a1 = v63;
            v8 = v48;
          }

          else
          {
            v70[(v23 >> 6) + 8] |= 1 << v23;
            v53 = (v48[6] + 16 * v23);
            *v53 = v9;
            v53[1] = v10;
            v54 = v48[7] + 24 * v23;
            *v54 = v47;
            *(v54 + 8) = v19;
            *(v54 + 16) = v20;
            v55 = v48[2];
            v56 = __OFADD__(v55, 1);
            v57 = v55 + 1;
            if (v56)
            {
              goto LABEL_32;
            }

            v8 = v48;
            v48[2] = v57;
            v6 = v62;
            a1 = v63;
          }
        }

        else
        {
          v39 = sub_1C6DEC784(v9, v10);
          if (v40)
          {
            v41 = v39;
            v42 = swift_isUniquelyReferenced_nonNull_native();
            v70 = v8;
            if ((v42 & 1) == 0)
            {
              sub_1C6E09928();
              v8 = v70;
            }

            v43 = *(v8 + 56) + 24 * v41;
            v44 = *v43;
            v45 = *(v43 + 8);
            v46 = *(v43 + 16);
            sub_1C6ECDDA0(v41, v8);

            sub_1C6E00C60(v44, v45, v46);
          }

          else
          {
          }
        }
      }

      else
      {
        v65 = v8;
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        v64 = qword_1EDEF8F88;
        v30 = sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v31 = swift_allocObject();
        *(v31 + 16) = v61;
        v32 = MEMORY[0x1E69E6158];
        *(v31 + 56) = MEMORY[0x1E69E6158];
        v33 = sub_1C6DF10E0();
        *(v31 + 64) = v33;
        *(v31 + 32) = v9;
        *(v31 + 40) = v10;
        v70 = 0;
        v71 = 0xE000000000000000;
        v68 = v11;
        v69 = v12;
        sub_1C6EE52F0();
        v34 = v70;
        v35 = v71;
        *(v31 + 96) = v32;
        *(v31 + 104) = v33;
        *(v31 + 72) = v34;
        *(v31 + 80) = v35;
        v36 = v63;
        v37 = sub_1C6EE49B0();
        *(v31 + 136) = v32;
        *(v31 + 144) = v33;
        *(v31 + 112) = v37;
        *(v31 + 120) = v38;
        a1 = v36;
        sub_1C6EE4730("Features didn't contain %{public}@ with dtype %{public}@. Features: %{public}@", 78, 2, &dword_1C6DE9000, v64, v30, v31);

        v6 = v62;
        v8 = v65;
      }

      ++v7;
      sub_1C6EE3D14(v5, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      if (v66 == v7)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_1C6EE5500();
    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
LABEL_29:
    v59 = sub_1C6EDE398(v8);

    return v59;
  }

  return result;
}

uint64_t sub_1C6EDD694(uint64_t a1)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  v88 = *(v91 - 8);
  v2 = MEMORY[0x1EEE9AC00](v91);
  v99 = v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v98 = v87 - v4;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v90 = (v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v93 = (v87 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v95 = (v87 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = v87 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v94 = v87 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v87 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = (v87 - v22);
  v24 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a1;
  sub_1C6EE3BDC(a1 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, v23, &qword_1EC1F7508, &unk_1C6EE6690);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v28 = &qword_1EC1F7508;
    v29 = &unk_1C6EE6690;
    v30 = v23;
LABEL_7:
    sub_1C6EE3CB4(v30, v28, v29);
    return 0;
  }

  sub_1C6EE3DDC(v23, v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  v31 = *(v24 + 20);
  sub_1C6EE3BDC(&v27[v31], v20, &qword_1EC1F8000, &unk_1C6EEA4C0);
  v34 = *(v6 + 48);
  v32 = v6 + 48;
  v33 = v34;
  v35 = v27;
  if (v34(v20, 1, v5) == 1)
  {
    sub_1C6EE3D14(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
    v28 = &qword_1EC1F8000;
    v29 = &unk_1C6EEA4C0;
    v30 = v20;
    goto LABEL_7;
  }

  v36 = v5;
  v37 = v32;
  sub_1C6EE3CB4(v20, &qword_1EC1F8000, &unk_1C6EEA4C0);
  v38 = v97;
  sub_1C6EE3BDC(v97 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_retentionTokenVendor, &v105, &qword_1EC1F7F38, &unk_1C6EF7A00);
  if (*(&v106 + 1) == 1)
  {
    sub_1C6EE3D14(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
    v28 = &qword_1EC1F7F38;
    v29 = &unk_1C6EF7A00;
    v30 = &v105;
    goto LABEL_7;
  }

  v108[0] = v105;
  v108[1] = v106;
  v109 = v107;
  sub_1C6EE3698(v108, &v105);
  if (*(&v106 + 1))
  {
    sub_1C6DFCC68(&v105, v102);
    v40 = v103;
    v41 = v104;
    __swift_project_boxed_opaque_existential_1(v102, v103);
    v42 = v94;
    sub_1C6EE3BDC(v35 + v31, v94, &qword_1EC1F8000, &unk_1C6EEA4C0);
    v43 = v33(v42, 1, v5);
    v87[1] = v37;
    if (v43 == 1)
    {
      v44 = v95;
      *v95 = 0;
      v44[1] = 0xE000000000000000;
      sub_1C6EE4420();
      if (v33(v42, 1, v36) != 1)
      {
        sub_1C6EE3CB4(v42, &qword_1EC1F8000, &unk_1C6EEA4C0);
      }
    }

    else
    {
      v44 = v95;
      sub_1C6EE3DDC(v42, v95, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
    }

    v52 = *v44;
    v53 = v44[1];

    sub_1C6EE3D14(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
    v54 = (*(v41 + 8))(v52, v53, v40, v41);
    v56 = v55;

    if (v56)
    {
      v57 = v92;
      sub_1C6EE3BDC(v35 + v31, v92, &qword_1EC1F8000, &unk_1C6EEA4C0);
      if (v33(v57, 1, v36) == 1)
      {
        v58 = v93;
        *v93 = 0;
        v58[1] = 0xE000000000000000;
        sub_1C6EE4420();
        if (v33(v57, 1, v36) != 1)
        {
          sub_1C6EE3CB4(v57, &qword_1EC1F8000, &unk_1C6EEA4C0);
        }
      }

      else
      {
        v58 = v93;
        sub_1C6EE3DDC(v57, v93, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      }

      v60 = *v58;
      v59 = v58[1];

      sub_1C6EE3D14(v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v61 = *(v96 + 16);
      v62 = *(v96 + 24);
      *&v100 = v60;
      *(&v100 + 1) = v59;
      MEMORY[0x1CCA57F60](43, 0xE100000000000000);
      MEMORY[0x1CCA57F60](v54, v56);

      MEMORY[0x1CCA57F60](43, 0xE100000000000000);
      MEMORY[0x1CCA57F60](v61, v62);
      v63 = v100;
      sub_1C6EE36F4(v108);
      sub_1C6EE3D14(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
      __swift_destroy_boxed_opaque_existential_1(v102);
      return v63;
    }

    else
    {
      sub_1C6EE36F4(v108);
      sub_1C6EE3D14(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
      __swift_destroy_boxed_opaque_existential_1(v102);
      return v54;
    }
  }

  else
  {
    sub_1C6EE3BDC(v38 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &v100, &qword_1EC1F7F40, &unk_1C6EE94D0);
    if (!v101)
    {
      sub_1C6EE36F4(v108);
      sub_1C6EE3D14(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
      v28 = &qword_1EC1F7F40;
      v29 = &unk_1C6EE94D0;
      v30 = &v100;
      goto LABEL_7;
    }

    sub_1C6DFCC68(&v100, v102);
    v45 = v103;
    v46 = v104;
    __swift_project_boxed_opaque_existential_1(v102, v103);
    v47 = (*(v46 + 8))(v45, v46);
    v48 = v89;
    sub_1C6EE3BDC(&v27[v31], v89, &qword_1EC1F8000, &unk_1C6EEA4C0);
    if (v33(v48, 1, v36) == 1)
    {
      v49 = v90;
      *v90 = 0;
      v49[1] = 0xE000000000000000;
      sub_1C6EE4420();
      v50 = v33(v48, 1, v36);
      v51 = v91;
      if (v50 != 1)
      {
        sub_1C6EE3CB4(v48, &qword_1EC1F8000, &unk_1C6EEA4C0);
      }
    }

    else
    {
      v49 = v90;
      sub_1C6EE3DDC(v48, v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v51 = v91;
    }

    v64 = *v49;
    v65 = v49[1];

    sub_1C6EE3D14(v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
    v66 = *(v96 + 16);
    v67 = *(v96 + 24);

    v68 = sub_1C6EE38D0(v47, v64, v65, v66, v67);

    MEMORY[0x1EEE9AC00](v69);
    v87[-2] = v102;
    v70 = sub_1C6EDBBBC(sub_1C6EE3BBC, &v87[-4], v68);

    *&v100 = v70;

    sub_1C6EDBB08(&v100);

    v71 = v100;
    v72 = *(v100 + 16);
    if (v72)
    {
      v97 = v35;
      *&v100 = MEMORY[0x1E69E7CC0];
      sub_1C6E15A10(0, v72, 0);
      v73 = v100;
      v74 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v96 = v71;
      v75 = v71 + v74;
      v76 = *(v88 + 72);
      do
      {
        v77 = v98;
        sub_1C6EE3BDC(v75, v98, &qword_1EC1F9878, &qword_1C6EF6B58);
        v78 = v99;
        sub_1C6EE3C44(v77, v99);
        v80 = *v78;
        v79 = *(v78 + 1);
        v81 = *(v51 + 48);
        v82 = sub_1C6EE42C0();
        (*(*(v82 - 8) + 8))(&v78[v81], v82);
        *&v100 = v73;
        v84 = v73[2];
        v83 = v73[3];
        if (v84 >= v83 >> 1)
        {
          sub_1C6E15A10((v83 > 1), v84 + 1, 1);
          v73 = v100;
        }

        v73[2] = v84 + 1;
        v85 = &v73[2 * v84];
        v85[4] = v80;
        v85[5] = v79;
        v75 += v76;
        --v72;
      }

      while (v72);

      v35 = v97;
    }

    else
    {

      v73 = MEMORY[0x1E69E7CC0];
    }

    if (v73[2])
    {
      v86 = v73[4];
    }

    else
    {
      v86 = 0;
    }

    sub_1C6EE36F4(v108);
    sub_1C6EE3D14(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
    __swift_destroy_boxed_opaque_existential_1(v102);
    return v86;
  }
}

uint64_t sub_1C6EDE2E8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  *a3 = v5;
  a3[1] = v6;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(v8 + 24);

  return v9(v5, v6, v7, v8);
}

uint64_t sub_1C6EDE398(uint64_t a1)
{
  v2 = v1;
  v121 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C6E0073C();
  v120 = a1;
  v5 = qword_1EDEF8FA0;

  if (v5 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v6 = qword_1EDEF8FA8;
    v7 = sub_1C6EE4EB0();
    v8 = MEMORY[0x1E69E7CC0];
    v114 = v6;
    sub_1C6EE4730("Building schedule and assembling outputs", 40, 2, &dword_1C6DE9000, v6, v7, MEMORY[0x1E69E7CC0]);
    v119 = MEMORY[0x1E69E7CC8];
    if (*(v4 + 2))
    {
      v109 = 0;
      v9 = v2 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_graph;
      v105 = MEMORY[0x1E69E7CC0];
      v104 = MEMORY[0x1E69E7CC8];
      v106 = OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore;
      v10 = MEMORY[0x1E69E6158];
      v113 = xmmword_1C6EE6590;
      v103 = xmmword_1C6EE6B40;
      v101 = xmmword_1C6EE65B0;
      while (1)
      {
        while (1)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v15 = *(v4 + 2);
            if (!v15)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v4 = sub_1C6ECE340(v4);
            v15 = *(v4 + 2);
            if (!v15)
            {
              goto LABEL_65;
            }
          }

          v16 = v15 - 1;
          v17 = &v4[16 * v16];
          v18 = *(v17 + 4);
          v19 = *(v17 + 5);
          *(v4 + 2) = v16;
          v20 = sub_1C6EE4EB0();
          v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v21 = swift_allocObject();
          *(v21 + 16) = v113;
          *(v21 + 56) = v10;
          v112 = sub_1C6DF10E0();
          *(v21 + 64) = v112;
          *(v21 + 32) = v18;
          *(v21 + 40) = v19;

          sub_1C6EE4730("Evaluating output %{public}@", 28, 2, &dword_1C6DE9000, v114, v20, v21);

          if (*(v120 + 16))
          {
            sub_1C6DEC784(v18, v19);
            if (v22)
            {
              v23 = sub_1C6EE4EB0();
              v24 = swift_allocObject();
              *(v24 + 16) = v113;
              v25 = v112;
              *(v24 + 56) = v10;
              *(v24 + 64) = v25;
              *(v24 + 32) = v18;
              *(v24 + 40) = v19;
              sub_1C6EE4730("Skipping %{public}@, since the output contains it", 49, 2, &dword_1C6DE9000, v114, v23, v24);
              goto LABEL_6;
            }
          }

          v110 = v19;
          v26 = *v9;
          v27 = v18;
          if (*(*v9 + 16))
          {
            break;
          }

LABEL_5:
          v11 = sub_1C6EE4EC0();
          v12 = swift_allocObject();
          *(v12 + 16) = v113;
          v13 = v112;
          *(v12 + 56) = v10;
          *(v12 + 64) = v13;
          v14 = v110;
          *(v12 + 32) = v18;
          *(v12 + 40) = v14;
          sub_1C6EE4730("Failed to obtain node for %{public}@", 36, 2, &dword_1C6DE9000, v114, v11, v12);
LABEL_6:

          if (!*(v4 + 2))
          {
            goto LABEL_50;
          }
        }

        v28 = sub_1C6DEC784(v18, v110);
        if ((v29 & 1) == 0)
        {

          goto LABEL_5;
        }

        v30 = *(*(v26 + 56) + 8 * v28);

        v108 = v30;
        v31 = sub_1C6EDD694(v30);
        if (!v32)
        {
          goto LABEL_20;
        }

        v33 = v31;
        v34 = v32;
        sub_1C6EE3BDC(v2 + v106, v116, &qword_1EC1F7F40, &unk_1C6EE94D0);
        v35 = v117;
        if (v117)
        {
          v36 = v118;
          __swift_project_boxed_opaque_existential_1(v116, v117);
          v37 = *(v36 + 16);
          v38 = v36;
          v10 = MEMORY[0x1E69E6158];
          v39 = v37(v33, v34, v35, v38);

          __swift_destroy_boxed_opaque_existential_1(v116);
          if (!v39)
          {
            goto LABEL_20;
          }

          v40 = swift_allocObject();
          *(v40 + 16) = v113;
          v41 = v112;
          *(v40 + 56) = v10;
          *(v40 + 64) = v41;
          v42 = v110;
          *(v40 + 32) = v27;
          *(v40 + 40) = v42;
          v43 = sub_1C6EE4EE0();
          sub_1C6EE4730("Skipping %{public}@ since we have cached features for it", 56, 2, &dword_1C6DE9000, v114, v43, v40);

          sub_1C6E269D0(v39, 0, 0);

          if (!*(v4 + 2))
          {
            goto LABEL_50;
          }
        }

        else
        {

          sub_1C6EE3CB4(v116, &qword_1EC1F7F40, &unk_1C6EE94D0);
LABEL_20:
          v100 = v9;
          v44 = sub_1C6EE4EB0();
          v45 = swift_allocObject();
          *(v45 + 16) = v103;
          v46 = v108;
          v47 = v108[2];
          v48 = v108[3];
          v49 = v112;
          *(v45 + 56) = v10;
          *(v45 + 64) = v49;
          *(v45 + 32) = v47;
          *(v45 + 40) = v48;
          *(v45 + 96) = v10;
          *(v45 + 104) = v49;
          v102 = v27;
          *(v45 + 72) = v27;
          *(v45 + 80) = v110;

          sub_1C6EE4730("Appending node %{public}@ for output %{public}@", 47, 2, &dword_1C6DE9000, v114, v44, v45);

          MEMORY[0x1CCA58080](v50);
          if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C6EE4CE0();
          }

          sub_1C6EE4D20();
          v105 = v121;
          v52 = v46[2];
          v51 = v46[3];

          sub_1C6EE26D8(v109, 0);
          v53 = v119;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v116[0] = v53;
          v55 = v52;
          v57 = sub_1C6DEC784(v52, v51);
          v58 = *(v53 + 16);
          v59 = (v56 & 1) == 0;
          v60 = v58 + v59;
          if (__OFADD__(v58, v59))
          {
            __break(1u);
LABEL_71:
            result = sub_1C6EE5500();
            __break(1u);
            return result;
          }

          if (*(v53 + 24) >= v60)
          {
            v66 = v110;
            if (isUniquelyReferenced_nonNull_native)
            {
              v119 = v53;
              if (v56)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v109 = v57;
              v67 = v56;
              sub_1C6E09914();
              v53 = v116[0];
              v119 = v116[0];
              if (v67)
              {
                goto LABEL_29;
              }
            }
          }

          else
          {
            v61 = v56;
            sub_1C6E06D08(v60, isUniquelyReferenced_nonNull_native);
            v53 = v116[0];
            sub_1C6DEC784(v55, v51);
            v63 = v62 & 1;
            v64 = v61;
            v65 = v61 & 1;
            v66 = v110;
            if (v65 != v63)
            {
              goto LABEL_71;
            }

            v119 = v53;
            if (v64)
            {
LABEL_29:

              goto LABEL_34;
            }
          }

          sub_1C6E0D444();
LABEL_34:
          v104 = v53;

          sub_1C6E032E0(v116, v102, v66);

          v69 = (*(*v46 + 128))(v68);
          v70 = *(v69 + 16);

          v99 = v69;
          if (v70)
          {
            v72 = 0;
            v73 = v69 + 40;
            v98 = v69 + 40;
LABEL_36:
            v107 = v4;
            v74 = (v73 + 16 * v72);
            while (v72 < v70)
            {
              if (__OFADD__(v72, 1))
              {
                goto LABEL_67;
              }

              v109 = (v72 + 1);
              v4 = &v97;
              v76 = *(v74 - 1);
              v75 = *v74;
              v116[0] = v76;
              v116[1] = v75;
              MEMORY[0x1EEE9AC00](v71);
              v96[2] = v116;

              v77 = v107;

              v78 = sub_1C6EE26E8(sub_1C6EE32AC, v96, v77);

              if ((v78 & 1) == 0)
              {

                v4 = v107;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v4 = sub_1C6ED8FB0(0, *(v4 + 2) + 1, 1, v4);
                }

                v79 = v110;
                v81 = *(v4 + 2);
                v80 = *(v4 + 3);
                if (v81 >= v80 >> 1)
                {
                  v4 = sub_1C6ED8FB0((v80 > 1), v81 + 1, 1, v4);
                }

                *(v4 + 2) = v81 + 1;
                v82 = &v4[16 * v81];
                *(v82 + 4) = v76;
                *(v82 + 5) = v75;
                LODWORD(v107) = sub_1C6EE4EB0();
                v83 = swift_allocObject();
                *(v83 + 16) = v101;
                v84 = MEMORY[0x1E69E6158];
                v85 = v112;
                *(v83 + 56) = MEMORY[0x1E69E6158];
                *(v83 + 64) = v85;
                *(v83 + 32) = v76;
                *(v83 + 40) = v75;
                v10 = v84;
                v86 = v108[2];
                v87 = v108[3];
                *(v83 + 96) = v10;
                *(v83 + 104) = v85;
                *(v83 + 72) = v86;
                *(v83 + 80) = v87;
                *(v83 + 136) = v10;
                *(v83 + 144) = v85;
                *(v83 + 112) = v102;
                *(v83 + 120) = v79;

                sub_1C6EE4730("Appending input %{public}@ for node %{public}@ for output %{public}@", 68, 2, &dword_1C6DE9000, v114, v107, v83);

                v72 = v109;
                v73 = v98;
                if (v109 != v70)
                {
                  goto LABEL_36;
                }

                goto LABEL_47;
              }

              ++v72;
              v74 += 2;
              v10 = MEMORY[0x1E69E6158];
              if (v109 == v70)
              {
                v4 = v107;
                goto LABEL_47;
              }
            }

            goto LABEL_66;
          }

LABEL_47:

          swift_bridgeObjectRelease_n();
          v88 = *(v4 + 2);
          v109 = sub_1C6EDEE9C;
          v9 = v100;
          if (!v88)
          {
            goto LABEL_50;
          }
        }
      }
    }

    v105 = v8;
    v104 = MEMORY[0x1E69E7CC8];
    v109 = 0;
LABEL_50:
    v116[0] = MEMORY[0x1E69E7CD0];
    v89 = sub_1C6EE4EB0();
    sub_1C6EE4730("Beginning execution", 19, 2, &dword_1C6DE9000, v114, v89, MEMORY[0x1E69E7CC0]);
    v90 = v105;
    v91 = v105 >> 62 ? sub_1C6EE5110() : *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v91)
    {
      break;
    }

    while (!__OFSUB__(v91--, 1))
    {
      if ((v90 & 0xC000000000000001) != 0)
      {
        v93 = MEMORY[0x1CCA585E0](v91, v90);
      }

      else
      {
        if ((v91 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        if (v91 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v93 = *(v90 + 32 + 8 * v91);
      }

      v115 = v93;
      sub_1C6EDEEAC(&v115, v116, &v120, v2, &v119);

      if (!v91)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

LABEL_61:

  v94 = v120;

  sub_1C6EE26D8(v109, 0);
  return v94;
}

uint64_t sub_1C6EDEEAC(uint64_t **a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v147 = a5;
  v150 = a4;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *a2;

  v14 = sub_1C6EDCC98(v12, v13);

  if (v14)
  {
    if (qword_1EDEF8FA0 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDEF8FA8;
    v16 = sub_1C6EE4EB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C6EE6590;
    v19 = v12[2];
    v18 = v12[3];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1C6DF10E0();
    *(v17 + 32) = v19;
    *(v17 + 40) = v18;

    sub_1C6EE4730("Skipping seen node %{public}@", 29, 2, &dword_1C6DE9000, v15, v16, v17);
  }

  v142 = a2;

  v21 = sub_1C6E0D454();
  v22 = v21;
  v23 = OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec;
  v24 = *(v12 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
  v25 = *(v24 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  v149 = v12;
  v151 = a3;
  *&v148 = v9;
  if (v25)
  {
    v145 = v21;
    v146 = OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec;
    v155 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A10(0, v25, 0);
    v26 = v155;
    v27 = v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v28 = *(v9 + 72);
    do
    {
      sub_1C6EE3D74(v27, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v29 = *v11;
      v30 = v11[1];

      sub_1C6EE3D14(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v155 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1C6E15A10((v31 > 1), v32 + 1, 1);
        v26 = v155;
      }

      *(v26 + 16) = v32 + 1;
      v33 = v26 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      v27 += v28;
      --v25;
    }

    while (v25);
    v12 = v149;
    a3 = v151;
    v23 = v146;
    v22 = v145;
  }

  v34 = sub_1C6E0B8E0(v26);

  v35 = sub_1C6EDCF9C(v22, v34);

  v36 = &off_1C6EE6000;
  if ((v35 & 1) == 0)
  {
    v40 = *(v12 + v23);
    v41 = *(v40 + 16);
    v42 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v155 = MEMORY[0x1E69E7CC0];
      sub_1C6E15A10(0, v41, 0);
      v42 = v155;
      v43 = v40 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
      v44 = *(v148 + 72);
      do
      {
        sub_1C6EE3D74(v43, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        v46 = *v11;
        v45 = v11[1];

        sub_1C6EE3D14(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        v155 = v42;
        v48 = *(v42 + 16);
        v47 = *(v42 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1C6E15A10((v47 > 1), v48 + 1, 1);
          v42 = v155;
        }

        *(v42 + 16) = v48 + 1;
        v49 = v42 + 16 * v48;
        *(v49 + 32) = v46;
        *(v49 + 40) = v45;
        v43 += v44;
        --v41;
      }

      while (v41);
    }

    v50 = sub_1C6E0B8E0(v42);

    v51 = sub_1C6E0D454();
    if (*(v51 + 16) <= *(v50 + 16) >> 3)
    {
      v155 = v50;
      sub_1C6E038DC(v51);

      v52 = v155;
    }

    else
    {
      v52 = sub_1C6E04178(v51, v50);
    }

    if (qword_1EDEF8F80 != -1)
    {
      goto LABEL_68;
    }

    goto LABEL_22;
  }

  v37 = v152;
  v38 = (_TtC18ComputationalGraph26ZipArchivePackageInstaller + 32);
  v39 = (_TtC18ComputationalGraph26ZipArchivePackageInstaller + 32);
  while (1)
  {
    v152 = v37;
    if (v39[500] != -1)
    {
      swift_once();
    }

    *&v148 = v38[501];
    LODWORD(v146) = sub_1C6EE4EB0();
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v95 = swift_allocObject();
    v143 = *(v36 + 180);
    *(v95 + 16) = v143;
    v97 = v12[2];
    v96 = v12[3];
    *(v95 + 56) = MEMORY[0x1E69E6158];
    v145 = sub_1C6DF10E0();
    *(v95 + 64) = v145;
    *(v95 + 32) = v97;
    *(v95 + 40) = v96;
    v52 = *a3;
    v98 = *(*a3 + 16);
    if (v98)
    {
      v140 = v97;
      v99 = sub_1C6E03038(v98, 0);
      v141 = sub_1C6E0D430();
      v100 = v155;
      v139 = v96;
      swift_bridgeObjectRetain_n();

      sub_1C6DFCC60(v100);
      if (v141 != v98)
      {
        __break(1u);
        goto LABEL_67;
      }

      v12 = v149;
      v97 = v140;
      v101 = v139;
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v99 = MEMORY[0x1E69E7CC0];
      v101 = v96;
    }

    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    *(v95 + 96) = v141;
    v140 = sub_1C6EE3304();
    *(v95 + 104) = v140;
    *(v95 + 72) = v99;
    sub_1C6EE4730("Node %{public}@ will receive inputs %{public}@", 46, 2, &dword_1C6DE9000, v148, v146, v95);

    v102 = *(*v12 + 112);

    v104 = v102(v103);

    v105 = sub_1C6EE4EB0();
    v106 = swift_allocObject();
    *(v106 + 16) = v143;
    v107 = v145;
    *(v106 + 56) = MEMORY[0x1E69E6158];
    *(v106 + 64) = v107;
    *(v106 + 32) = v97;
    *(v106 + 40) = v101;
    v52 = *(v104 + 16);
    v146 = v104;
    if (!v52)
    {
      break;
    }

    v108 = sub_1C6E03038(v52, 0);
    v109 = sub_1C6E0D430();
    v110 = v155;

    sub_1C6DFCC60(v110);
    if (v109 == v52)
    {
      v12 = v149;
      goto LABEL_47;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
LABEL_22:
    v53 = qword_1EDEF8F88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v54 = swift_allocObject();
    v148 = xmmword_1C6EE6590;
    *(v54 + 16) = xmmword_1C6EE6590;
    v55 = MEMORY[0x1E69E6158];
    v56 = sub_1C6EE4DF0();
    v58 = v57;
    *(v54 + 56) = v55;
    v59 = sub_1C6DF10E0();
    *(v54 + 64) = v59;
    *(v54 + 32) = v56;
    *(v54 + 40) = v58;
    v60 = sub_1C6EE4EE0();
    sub_1C6EE4730("Missing inputs %{public}@, requesting inputs from feature resolver", 66, 2, &dword_1C6DE9000, v53, v60, v54);

    v12 = v149;
    v61 = v152;
    v62 = (*(v150 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featureResolver))(v52, v149[2], v149[3]);
    v63 = v61;
    if (!v61)
    {
      v70 = v62;

      v71 = sub_1C6E0D454();
      v72 = sub_1C6EDCF9C(v71, v52);

      p_info = _TtC18ComputationalGraph26ZipArchivePackageInstaller.info;
      if (v72)
      {
        if (qword_1EDEF8FA0 == -1)
        {
          goto LABEL_28;
        }

        goto LABEL_70;
      }

      if (qword_1EDEF8FA0 != -1)
      {
        swift_once();
      }

      v152 = qword_1EDEF8FA8;
      LODWORD(v148) = sub_1C6EE4EC0();
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1C6EE6B40;

      v82 = sub_1C6E0D454();
      sub_1C6EE2CB4(v52, v82);
      v83 = MEMORY[0x1E69E6158];
      v84 = sub_1C6EE4DF0();
      v86 = v85;

      *(v81 + 56) = v83;
      *(v81 + 64) = v59;
      *(v81 + 32) = v84;
      *(v81 + 40) = v86;
      v155 = 0;
      v156 = 0xE000000000000000;

      v87 = sub_1C6E0D454();
      if (*(v87 + 16) <= *(v52 + 16) >> 3)
      {
        *&v153 = v52;

        sub_1C6E038DC(v87);
      }

      else
      {

        sub_1C6E04178(v87, v52);
      }

      v88 = sub_1C6EE4DF0();
      v90 = v89;

      MEMORY[0x1CCA57F60](v88, v90);

      v91 = v155;
      v92 = v156;
      *(v81 + 96) = v83;
      *(v81 + 104) = v59;
      *(v81 + 72) = v91;
      *(v81 + 80) = v92;
      sub_1C6EE4730("Feature resolver returned missing features %{public}@, but failed to return missing features %{public}@", 103, 2, &dword_1C6DE9000, v152, v148, v81);
LABEL_35:

      MEMORY[0x1EEE9AC00](v93);
      *(&v139 - 2) = v52;
      v94 = sub_1C6EE3518(v70, sub_1C6EE3368);
      v37 = v63;

      a3 = v151;
      sub_1C6E269D0(v94, 0, 0);

      v12 = v149;
      v38 = _TtC18ComputationalGraph26ZipArchivePackageInstaller.info;
      goto LABEL_36;
    }

    if (qword_1EDEF8FA0 != -1)
    {
      swift_once();
    }

    v64 = qword_1EDEF8FA8;
    v65 = sub_1C6EE4EC0();
    v66 = swift_allocObject();
    *(v66 + 16) = v148;
    v155 = 0;
    v156 = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v67 = v155;
    v68 = v156;
    *(v66 + 56) = MEMORY[0x1E69E6158];
    *(v66 + 64) = v59;
    *(v66 + 32) = v67;
    *(v66 + 40) = v68;
    v69 = v64;
    v38 = (_TtC18ComputationalGraph26ZipArchivePackageInstaller + 32);
    sub_1C6EE4730("Failed to get missing features from feature resolver with error %{public}@", 74, 2, &dword_1C6DE9000, v69, v65, v66);

    v37 = 0;
    a3 = v151;
LABEL_36:
    v39 = _TtC18ComputationalGraph26ZipArchivePackageInstaller.info;
    v36 = &off_1C6EE6000;
  }

  v108 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v111 = v140;
  *(v106 + 96) = v141;
  *(v106 + 104) = v111;
  *(v106 + 72) = v108;
  sub_1C6EE4730("Node %{public}@ did output %{public}@", 37, 2, &dword_1C6DE9000, v148, v105, v106);

  v112 = *v147;
  v113 = v150;
  if (!*(*v147 + 16))
  {
    goto LABEL_59;
  }

  v114 = sub_1C6DEC784(v12[2], v12[3]);
  if ((v115 & 1) == 0)
  {
    goto LABEL_59;
  }

  v116 = *(*(v112 + 56) + 8 * v114);

  v117 = sub_1C6E0D454();
  if (*(v117 + 16) <= *(v116 + 16) >> 3)
  {
    v155 = v116;
    sub_1C6E038DC(v117);

    v118 = v155;
    if (!*(v155 + 16))
    {
      goto LABEL_58;
    }
  }

  else
  {
    v118 = sub_1C6E04178(v117, v116);

    if (!*(v118 + 16))
    {
      goto LABEL_58;
    }
  }

  v119 = sub_1C6EE4EC0();
  v120 = swift_allocObject();
  *(v120 + 16) = v143;
  v121 = v12[2];
  v59 = v12[3];
  v122 = v145;
  *(v120 + 56) = MEMORY[0x1E69E6158];
  *(v120 + 64) = v122;
  *(v120 + 32) = v121;
  *(v120 + 40) = v59;
  v52 = *(v118 + 16);
  if (v52)
  {
    LODWORD(v147) = v119;
    v123 = sub_1C6E03038(v52, 0);
    p_info = sub_1C6E0B274(&v155, v123 + 4, v52, v118);
    v124 = v155;
    v63 = v157;
    v70 = v159;

    sub_1C6DFCC60(v124);
    if (p_info == v52)
    {
      v12 = v149;
      v119 = v147;
      goto LABEL_57;
    }

    __break(1u);
LABEL_70:
    swift_once();
LABEL_28:
    v74 = p_info[501];
    v75 = swift_allocObject();
    *(v75 + 16) = v148;

    v76 = MEMORY[0x1E69E6158];
    v77 = sub_1C6EE49B0();
    v79 = v78;

    *(v75 + 56) = v76;
    *(v75 + 64) = v59;
    *(v75 + 32) = v77;
    *(v75 + 40) = v79;
    v80 = sub_1C6EE4EE0();
    sub_1C6EE4730("Feature resolver returned all missing features %{public}@", 57, 2, &dword_1C6DE9000, v74, v80, v75);
    goto LABEL_35;
  }

  v123 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v125 = v140;
  *(v120 + 96) = v141;
  *(v120 + 104) = v125;
  *(v120 + 72) = v123;
  sub_1C6EE4730("Node %{public}@ did fail to output %{public}@", 45, 2, &dword_1C6DE9000, v148, v119, v120);
  v113 = v150;
LABEL_58:

LABEL_59:
  v126 = sub_1C6EDD694(v12);
  if (v127)
  {
    v128 = v126;
    v129 = v127;
    sub_1C6EE3BDC(v113 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &v153, &qword_1EC1F7F40, &unk_1C6EE94D0);
    if (v154)
    {
      sub_1C6DFCC68(&v153, &v155);
      if ((*(v113 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_readOnly) & 1) == 0)
      {
        v130 = sub_1C6EE4EB0();
        v131 = swift_allocObject();
        *(v131 + 16) = v143;
        v132 = MEMORY[0x1E69E6158];
        v133 = v145;
        *(v131 + 56) = MEMORY[0x1E69E6158];
        *(v131 + 64) = v133;
        *(v131 + 32) = v128;
        *(v131 + 40) = v129;

        v134 = v146;
        v135 = sub_1C6EE49A0();
        *(v131 + 96) = v132;
        *(v131 + 104) = v133;
        *(v131 + 72) = v135;
        *(v131 + 80) = v136;
        sub_1C6EE4730("Cache key %{public}@ being used to store result features %{public}@", 67, 2, &dword_1C6DE9000, v148, v130, v131);

        v137 = v158;
        v138 = v159;
        __swift_project_boxed_opaque_existential_1(&v155, v158);
        (*(v138 + 32))(v134, v128, v129, v137, v138);
      }

      __swift_destroy_boxed_opaque_existential_1(&v155);
    }

    else
    {

      sub_1C6EE3CB4(&v153, &qword_1EC1F7F40, &unk_1C6EE94D0);
    }
  }

  sub_1C6E269D0(v146, 0, 0);

  sub_1C6E03580(&v155, v12);
}

uint64_t sub_1C6EDFEE4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v132 = a8;
  v133 = a7;
  v127 = a6;
  v126 = a5;
  v136 = a4;
  *&v141 = a3;
  v138 = a9;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v148 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v146 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v125 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v145 = &v125 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v144 = &v125 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v142 = &v125 - v22;
  v130 = sub_1C6EE42F0();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v24 = MEMORY[0x1EEE9AC00](v134);
  v131 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v137 = (&v125 - v26);
  v27 = *(a1 + 16);
  v147 = a2;
  v143 = v27;
  v135 = a1;
  if (v27)
  {
    v28 = 0;
    v29 = a1 + 32;
    v30 = MEMORY[0x1E69E7CC8];
    v139 = a1 + 32;
    while (1)
    {
      v35 = (v29 + 16 * v28);
      v37 = *v35;
      v36 = v35[1];
      v38 = *(a2 + 16);

      if (!v38 || (v39 = sub_1C6DEC784(v37, v36), (v40 & 1) == 0))
      {
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        v122 = qword_1EDEF8F88;
        v123 = sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_1C6EE6590;
        *(v124 + 56) = MEMORY[0x1E69E6158];
        *(v124 + 64) = sub_1C6DF10E0();
        *(v124 + 32) = v37;
        *(v124 + 40) = v36;
        sub_1C6EE4730("Failed to find a node in the global graph for requested output %{public}@", 73, 2, &dword_1C6DE9000, v122, v123, v124);

        goto LABEL_17;
      }

      v41 = v30;
      v42 = *(*(*(a2 + 56) + 8 * v39) + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec + 8);
      v43 = *(v42 + 16);

      if (!v43)
      {
        break;
      }

      v44 = 0;
      v28 = (v28 + 1);
      while (1)
      {
        if (v44 >= *(v42 + 16))
        {
          __break(1u);
          goto LABEL_54;
        }

        sub_1C6EE3D74(v42 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v44, v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        v45 = *v17 == v37 && v17[1] == v36;
        if (v45 || (sub_1C6EE54B0() & 1) != 0)
        {
          break;
        }

        ++v44;
        sub_1C6EE3D14(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if (v43 == v44)
        {
          goto LABEL_15;
        }
      }

      v31 = v145;
      sub_1C6EE3DDC(v17, v145, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v32 = v144;
      sub_1C6EE3DDC(v31, v144, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v33 = v146;
      sub_1C6EE3D74(v32, v146, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154[0] = v41;
      sub_1C6E09664(v33, v37, v36, isUniquelyReferenced_nonNull_native);

      sub_1C6EE3D14(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v30 = v154[0];
      a2 = v147;
      v29 = v139;
      if (v28 == v143)
      {
        goto LABEL_19;
      }
    }

LABEL_15:
    if (qword_1EDEF8F80 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_16;
  }

  v30 = MEMORY[0x1E69E7CC8];
LABEL_19:
  v154[0] = a2;
  v154[1] = v141;
  v155 = sub_1C6EC180C(v135);
  sub_1C6E269D0(v136, 1, 0);
  v52 = v137;
  sub_1C6EE4420();
  v146 = v155;
  v53 = v140;
  v54 = sub_1C6EDBED0(v155);
  v140 = v53;
  *v52 = v54;
  v55 = *(v30 + 16);
  if (!v55)
  {
    goto LABEL_22;
  }

  v56 = sub_1C6E030DC(*(v30 + 16), 0);
  v57 = sub_1C6E0B67C(v154, v56 + ((*(v148 + 80) + 32) & ~*(v148 + 80)), v55, v30);
  v58 = v154[0];

  sub_1C6DFCC60(v58);
  v59 = v142;
  if (v57 != v55)
  {
    __break(1u);
LABEL_22:
    v56 = MEMORY[0x1E69E7CC0];
    v59 = v142;
  }

  v143 = v56;
  v136 = v30;
  v60 = v137;
  v137[1] = v56;
  sub_1C6EE3BDC(v126, v154, &qword_1EC1F7F40, &unk_1C6EE94D0);
  v61 = v131;
  sub_1C6EE3D74(v60, v131, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6EE3BDC(v127, v153, &qword_1EC1F7F38, &unk_1C6EF7A00);
  type metadata accessor for SubGraphComputation(0);
  v37 = swift_allocObject();
  sub_1C6EE3BDC(v154, v37 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &qword_1EC1F7F40, &unk_1C6EE94D0);
  v62 = (v37 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_graph);
  v63 = v141;
  *v62 = v147;
  v62[1] = v63;
  v64 = (v37 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featureResolver);
  *v64 = v132;
  v64[1] = a10;
  *(v37 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_readOnly) = v133 & 1;
  sub_1C6EE3BDC(v153, v37 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_retentionTokenVendor, &qword_1EC1F7F38, &unk_1C6EF7A00);

  v65 = v128;
  sub_1C6EE42E0();
  v66 = sub_1C6EE42D0();
  v68 = v67;
  (*(v129 + 8))(v65, v130);
  v69 = v143;
  sub_1C6EE3CB4(v153, &qword_1EC1F7F38, &unk_1C6EF7A00);
  sub_1C6EE3CB4(v154, &qword_1EC1F7F40, &unk_1C6EE94D0);
  v70 = OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy;
  v71 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  (*(*(v71 - 8) + 56))(v37 + v70, 1, 1, v71);
  *(v37 + 16) = v66;
  *(v37 + 24) = v68;
  sub_1C6EE3DDC(v61, v37 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  v36 = v146;
  v135 = v37;
  v72 = sub_1C6EDD178(v146);

  *v138 = v72;
  v73 = v69[2];

  v147 = v73;
  if (!v73)
  {
    v145 = MEMORY[0x1E69E7CC8];
LABEL_49:

    v121 = v135;
    swift_setDeallocating();

    sub_1C6EE3D14(v121 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    sub_1C6EE3CB4(v121 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);

    sub_1C6EE3CB4(v121 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &qword_1EC1F7F40, &unk_1C6EE94D0);

    sub_1C6EE3CB4(v121 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_retentionTokenVendor, &qword_1EC1F7F38, &unk_1C6EF7A00);

    swift_deallocClassInstance();

    v138[1] = v145;
    sub_1C6EE3D14(v137, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  }

  v74 = 0;
  v145 = MEMORY[0x1E69E7CC8];
  v141 = xmmword_1C6EE65B0;
  v144 = v72;
  while (v74 < v69[2])
  {
    sub_1C6EE3D74(v69 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v74, v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    v76 = *v59;
    v75 = *(v59 + 8);
    v36 = *(v59 + 24);
    v77 = *(v59 + 32);

    if (sub_1C6E26E94(v76, v75, v36, v77, v72))
    {
      if (*(v72 + 16) && (v78 = sub_1C6DEC784(v76, v75), (v79 & 1) != 0))
      {
        v80 = *(v72 + 56) + 24 * v78;
        v36 = *v80;
        v81 = *(v80 + 16);
        v82 = *v80;
        v139 = *(v80 + 8);
        LODWORD(v146) = v81;
        sub_1C6E00CBC(v82, v139, v81);
        v83 = v145;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v151 = v83;
        v37 = sub_1C6DEC784(v76, v75);
        v86 = *(v83 + 16);
        v87 = (v85 & 1) == 0;
        v88 = v86 + v87;
        if (__OFADD__(v86, v87))
        {
          goto LABEL_55;
        }

        v89 = v85;
        if (*(v83 + 24) >= v88)
        {
          if ((v84 & 1) == 0)
          {
            sub_1C6E09928();
          }
        }

        else
        {
          sub_1C6E06D1C(v88, v84);
          v90 = sub_1C6DEC784(v76, v75);
          if ((v89 & 1) != (v91 & 1))
          {
            result = sub_1C6EE5500();
            __break(1u);
            return result;
          }

          v37 = v90;
        }

        v69 = v143;
        v109 = v151;
        v145 = v151;
        if (v89)
        {
          v110 = *(v151 + 56) + 24 * v37;
          v111 = *v110;
          v112 = *(v110 + 8);
          v113 = *(v110 + 16);
          v114 = v139;
          *v110 = v36;
          *(v110 + 8) = v114;
          *(v110 + 16) = v146;
          sub_1C6E00C60(v111, v112, v113);

          v72 = v144;
        }

        else
        {
          *(v151 + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v115 = (v109[6] + 16 * v37);
          *v115 = v76;
          v115[1] = v75;
          v116 = v109[7] + 24 * v37;
          v117 = v139;
          *v116 = v36;
          *(v116 + 8) = v117;
          *(v116 + 16) = v146;
          v118 = v109[2];
          v119 = __OFADD__(v118, 1);
          v120 = v118 + 1;
          if (v119)
          {
            goto LABEL_56;
          }

          v109[2] = v120;
          v72 = v144;
        }
      }

      else
      {
        v100 = v145;
        v101 = sub_1C6DEC784(v76, v75);
        if (v102)
        {
          v36 = v101;
          v103 = swift_isUniquelyReferenced_nonNull_native();
          v151 = v100;
          v104 = v100;
          if ((v103 & 1) == 0)
          {
            sub_1C6E09928();
            v104 = v151;
          }

          v105 = *(v104 + 56) + 24 * v36;
          v106 = *v105;
          v37 = *(v105 + 8);
          v107 = v104;
          v108 = *(v105 + 16);
          v145 = v107;
          sub_1C6ECDDA0(v36, v107);

          sub_1C6E00C60(v106, v37, v108);
          v72 = v144;
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v146 = qword_1EDEF8F88;
      v92 = sub_1C6EE4EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v93 = swift_allocObject();
      *(v93 + 16) = v141;
      v37 = MEMORY[0x1E69E6158];
      *(v93 + 56) = MEMORY[0x1E69E6158];
      v94 = sub_1C6DF10E0();
      *(v93 + 64) = v94;
      *(v93 + 32) = v76;
      *(v93 + 40) = v75;
      v151 = 0;
      v152 = 0xE000000000000000;
      v149 = v36;
      v150 = v77;
      sub_1C6EE52F0();
      v95 = v151;
      v96 = v152;
      *(v93 + 96) = v37;
      *(v93 + 104) = v94;
      *(v93 + 72) = v95;
      *(v93 + 80) = v96;
      v36 = v144;
      v97 = sub_1C6EE49B0();
      *(v93 + 136) = v37;
      *(v93 + 144) = v94;
      *(v93 + 112) = v97;
      *(v93 + 120) = v98;
      v99 = v92;
      v72 = v36;
      sub_1C6EE4730("Features didn't contain %{public}@ with dtype %{public}@. Features: %{public}@", 78, 2, &dword_1C6DE9000, v146, v99, v93);

      v59 = v142;
      v69 = v143;
    }

    ++v74;
    sub_1C6EE3D14(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    if (v147 == v74)
    {
      goto LABEL_49;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  swift_once();
LABEL_16:
  v46 = qword_1EDEF8F88;
  v47 = sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1C6EE6590;
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1C6DF10E0();
  *(v48 + 32) = v37;
  *(v48 + 40) = v36;
  sub_1C6EE4730("Failed to a modelIOSpec whos outputs contain requestedOutput %{public}@", 71, 2, &dword_1C6DE9000, v46, v47, v48);

LABEL_17:
  v50 = v138;
  v51 = MEMORY[0x1E69E7CC8];
  *v138 = MEMORY[0x1E69E7CC8];
  v50[1] = v51;
  return result;
}

uint64_t sub_1C6EE0E30()
{

  sub_1C6EE3CB4(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &qword_1EC1F7F40, &unk_1C6EE94D0);

  return sub_1C6EE3CB4(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_retentionTokenVendor, &qword_1EC1F7F38, &unk_1C6EF7A00);
}

uint64_t sub_1C6EE0EBC()
{

  sub_1C6EE3D14(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6EE3CB4(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);

  sub_1C6EE3CB4(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_featuresStore, &qword_1EC1F7F40, &unk_1C6EE94D0);

  sub_1C6EE3CB4(v0 + OBJC_IVAR____TtC18ComputationalGraph19SubGraphComputation_retentionTokenVendor, &qword_1EC1F7F38, &unk_1C6EF7A00);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubGraphComputation(uint64_t a1)
{
  result = qword_1EDEF8AD8;
  if (!qword_1EDEF8AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EE10BC(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C6EE5450();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
        v6 = sub_1C6EE4D00();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C6EE1450(v8, v9, a1, v4);
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
    return sub_1C6EE1200(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C6EE1200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  v8 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_1C6EE3BDC(v21, v16, &qword_1EC1F9878, &qword_1C6EF6B58);
      sub_1C6EE3BDC(v19, v12, &qword_1EC1F9878, &qword_1C6EF6B58);
      v22 = sub_1C6EE4270();
      sub_1C6EE3CB4(v12, &qword_1EC1F9878, &qword_1C6EF6B58);
      result = sub_1C6EE3CB4(v16, &qword_1EC1F9878, &qword_1C6EF6B58);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_1C6EE3C44(v21, v34);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1C6EE3C44(v23, v19);
      v19 += v32;
      v21 += v32;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6EE1450(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v104 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v108 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v116 = &v100 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v118 = &v100 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v117 = &v100 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_99:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_139;
    }

    v6 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v105;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_102:
      v120 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        v96 = v7;
        while (*a3)
        {
          v97 = *(result + 16 * v6);
          v98 = result;
          v7 = *(result + 16 * (v6 - 1) + 40);
          sub_1C6EE1D78(*a3 + *(v96 + 72) * v97, *a3 + *(v96 + 72) * *(result + 16 * (v6 - 1) + 32), *a3 + *(v96 + 72) * v7, a4);
          if (v30)
          {
          }

          if (v7 < v97)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_1C6ECCA74(v98);
          }

          if (v6 - 2 >= *(v98 + 2))
          {
            goto LABEL_127;
          }

          v99 = &v98[16 * v6];
          *v99 = v97;
          *(v99 + 1) = v7;
          v120 = v98;
          sub_1C6ECC9E8(v6 - 1);
          result = v120;
          v6 = *(v120 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_1C6ECCA74(v6);
    goto LABEL_102;
  }

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  v119 = v6;
  v106 = a3;
  v101 = v7;
  while (1)
  {
    v19 = v17 + 1;
    v109 = v18;
    if (v17 + 1 >= v16)
    {
      v29 = v17 + 1;
      v30 = v105;
    }

    else
    {
      v20 = v17;
      v6 = *a3;
      v21 = *(v7 + 72);
      v22 = *a3 + v21 * v19;
      v23 = v117;
      sub_1C6EE3BDC(v22, v117, &qword_1EC1F9878, &qword_1C6EF6B58);
      v24 = v118;
      sub_1C6EE3BDC(v6 + v21 * v20, v118, &qword_1EC1F9878, &qword_1C6EF6B58);
      LODWORD(v114) = sub_1C6EE4270();
      sub_1C6EE3CB4(v24, &qword_1EC1F9878, &qword_1C6EF6B58);
      result = sub_1C6EE3CB4(v23, &qword_1EC1F9878, &qword_1C6EF6B58);
      v102 = v20;
      v25 = v20 + 2;
      v115 = v21;
      v26 = v6 + v21 * (v20 + 2);
      while (v16 != v25)
      {
        v27 = v117;
        sub_1C6EE3BDC(v26, v117, &qword_1EC1F9878, &qword_1C6EF6B58);
        v28 = v118;
        sub_1C6EE3BDC(v22, v118, &qword_1EC1F9878, &qword_1C6EF6B58);
        v6 = sub_1C6EE4270() & 1;
        sub_1C6EE3CB4(v28, &qword_1EC1F9878, &qword_1C6EF6B58);
        result = sub_1C6EE3CB4(v27, &qword_1EC1F9878, &qword_1C6EF6B58);
        ++v25;
        v26 += v115;
        v22 += v115;
        if ((v114 & 1) != v6)
        {
          v29 = v25 - 1;
          goto LABEL_12;
        }
      }

      v29 = v16;
LABEL_12:
      v17 = v102;
      a4 = v103;
      v30 = v105;
      a3 = v106;
      v7 = v101;
      if ((v114 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v29 < v102)
      {
        goto LABEL_130;
      }

      if (v102 < v29)
      {
        v31 = v115 * (v29 - 1);
        v32 = v29 * v115;
        v114 = v29;
        v33 = v29;
        v34 = v102;
        v35 = v102 * v115;
        v6 = v119;
        do
        {
          if (v34 != --v33)
          {
            v36 = *v106;
            if (!*v106)
            {
              goto LABEL_136;
            }

            sub_1C6EE3C44(v36 + v35, v108);
            if (v35 < v31 || v36 + v35 >= v36 + v32)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1C6EE3C44(v108, v36 + v31);
            v6 = v119;
          }

          ++v34;
          v31 -= v115;
          v32 -= v115;
          v35 += v115;
        }

        while (v34 < v33);
        v30 = v105;
        a3 = v106;
        v7 = v101;
        v17 = v102;
        a4 = v103;
        v29 = v114;
      }

      else
      {
LABEL_25:
        v6 = v119;
      }
    }

    v37 = a3[1];
    if (v29 >= v37)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v29, v17))
    {
      goto LABEL_129;
    }

    if (v29 - v17 >= a4)
    {
LABEL_35:
      v38 = v29;
      if (v29 < v17)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v17, a4))
    {
      goto LABEL_131;
    }

    if (v17 + a4 < v37)
    {
      v37 = v17 + a4;
    }

    if (v37 < v17)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v29 == v37)
    {
      goto LABEL_35;
    }

    v110 = v37;
    v105 = v30;
    v84 = *a3;
    v85 = *(v7 + 72);
    v86 = *a3 + v85 * (v29 - 1);
    v87 = -v85;
    v102 = v17;
    v88 = v17 - v29;
    v107 = v85;
    v115 = v84;
    a4 = v84 + v29 * v85;
LABEL_89:
    v113 = v86;
    v114 = v29;
    v111 = a4;
    v112 = v88;
    v89 = v86;
LABEL_90:
    v90 = v117;
    sub_1C6EE3BDC(a4, v117, &qword_1EC1F9878, &qword_1C6EF6B58);
    v91 = v118;
    sub_1C6EE3BDC(v89, v118, &qword_1EC1F9878, &qword_1C6EF6B58);
    v92 = sub_1C6EE4270();
    sub_1C6EE3CB4(v91, &qword_1EC1F9878, &qword_1C6EF6B58);
    result = sub_1C6EE3CB4(v90, &qword_1EC1F9878, &qword_1C6EF6B58);
    if (v92)
    {
      break;
    }

    v6 = v119;
LABEL_88:
    v29 = v114 + 1;
    v86 = v113 + v107;
    v88 = v112 - 1;
    a4 = v111 + v107;
    if (v114 + 1 != v110)
    {
      goto LABEL_89;
    }

    v30 = v105;
    a3 = v106;
    v7 = v101;
    v17 = v102;
    v38 = v110;
    if (v110 < v102)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = v109;
    }

    else
    {
      result = sub_1C6ED92D4(0, *(v109 + 2) + 1, 1, v109);
      v18 = result;
    }

    v40 = *(v18 + 2);
    v39 = *(v18 + 3);
    a4 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C6ED92D4((v39 > 1), v40 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = a4;
    v41 = &v18[16 * v40];
    *(v41 + 4) = v17;
    *(v41 + 5) = v38;
    v110 = v38;
    if (!*v104)
    {
      goto LABEL_138;
    }

    if (v40)
    {
      v42 = *v104;
      v6 = v119;
      while (1)
      {
        v43 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v44 = *(v18 + 4);
          v45 = *(v18 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_56:
          if (v47)
          {
            goto LABEL_117;
          }

          v60 = &v18[16 * a4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_120;
          }

          v66 = &v18[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_124;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v70 = &v18[16 * a4];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_70:
        if (v65)
        {
          goto LABEL_119;
        }

        v73 = &v18[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_122;
        }

        if (v76 < v64)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v43 - 1;
        if (v43 - 1 >= a4)
        {
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
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v81 = v18;
        a4 = *&v18[16 * v6 + 32];
        v82 = *&v18[16 * v43 + 40];
        sub_1C6EE1D78(*a3 + *(v7 + 72) * a4, *a3 + *(v7 + 72) * *&v18[16 * v43 + 32], *a3 + *(v7 + 72) * v82, v42);
        if (v30)
        {
        }

        if (v82 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1C6ECCA74(v81);
        }

        if (v6 >= *(v81 + 2))
        {
          goto LABEL_114;
        }

        v83 = &v81[16 * v6];
        *(v83 + 4) = a4;
        *(v83 + 5) = v82;
        v120 = v81;
        result = sub_1C6ECC9E8(v43);
        v18 = v120;
        a4 = *(v120 + 16);
        v6 = v119;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v48 = &v18[16 * a4 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_115;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_116;
      }

      v55 = &v18[16 * a4];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_118;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_121;
      }

      if (v59 >= v51)
      {
        v77 = &v18[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_125;
        }

        if (v46 < v80)
        {
          v43 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v119;
LABEL_4:
    v105 = v30;
    v16 = a3[1];
    v17 = v110;
    a4 = v103;
    if (v110 >= v16)
    {
      goto LABEL_99;
    }
  }

  if (v115)
  {
    v93 = v116;
    sub_1C6EE3C44(a4, v116);
    v6 = v119;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6EE3C44(v93, v89);
    v89 += v87;
    a4 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

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
  return result;
}

uint64_t sub_1C6EE1D78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  v7 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = a4 + v17;
      v40 = a4;
      v41 = -v13;
      v39 = a1;
      do
      {
        v37 = v25;
        v26 = a2;
        v27 = a2 + v23;
        v42 = v26;
        while (1)
        {
          v29 = v45;
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v37;
            goto LABEL_60;
          }

          v38 = v25;
          v45 += v23;
          v30 = v24 + v23;
          sub_1C6EE3BDC(v30, v11, &qword_1EC1F9878, &qword_1C6EF6B58);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v43;
          sub_1C6EE3BDC(v32, v43, &qword_1EC1F9878, &qword_1C6EF6B58);
          v35 = sub_1C6EE4270();
          v36 = v34;
          v11 = v33;
          sub_1C6EE3CB4(v36, &qword_1EC1F9878, &qword_1C6EF6B58);
          sub_1C6EE3CB4(v33, &qword_1EC1F9878, &qword_1C6EF6B58);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v45 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
            a1 = v39;
          }

          else
          {
            v27 = v31;
            a1 = v39;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v41;
          v26 = v42;
          if (!v28)
          {
            a2 = v42;
            goto LABEL_59;
          }
        }

        if (v29 < v42 || v45 >= v42)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          a1 = v39;
          v23 = v41;
        }

        else
        {
          v25 = v38;
          a1 = v39;
          a2 = v31;
          v23 = v41;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_59:
    v48 = a2;
    v46 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      v41 = v13;
      do
      {
        sub_1C6EE3BDC(a2, v11, &qword_1EC1F9878, &qword_1C6EF6B58);
        v19 = v43;
        sub_1C6EE3BDC(a4, v43, &qword_1EC1F9878, &qword_1C6EF6B58);
        v20 = sub_1C6EE4270();
        sub_1C6EE3CB4(v19, &qword_1EC1F9878, &qword_1C6EF6B58);
        sub_1C6EE3CB4(v11, &qword_1EC1F9878, &qword_1C6EF6B58);
        if (v20)
        {
          v21 = a2 + v13;
          if (a1 < a2 || a1 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v21;
        }

        else
        {
          v22 = a4 + v13;
          if (a1 < a4 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = v22;
          a4 = v22;
        }

        v13 = v41;
        a1 += v41;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v45);
    }
  }

LABEL_60:
  sub_1C6ECCB6C(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1C6EE2290(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7788, &unk_1C6EF7A10);
  result = sub_1C6EE5180();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1C6EE5580();

    sub_1C6EE4B30();
    result = sub_1C6EE55A0();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C6EE24B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7840, &unk_1C6EF7A20);
  result = sub_1C6EE5180();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1C6EE5580();

    sub_1C6EE4B30();
    result = sub_1C6EE55A0();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C6EE26D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C6EE26E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C6EE2794(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_1C6E00D18(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_1C6DF1134(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

unint64_t *sub_1C6EE2844(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v14 = sub_1C6EE3748(v13, a2, a3, a4, a5, a6, a7);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v14;
  }

  return result;
}

unint64_t *sub_1C6EE2914(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1C6EE2E78(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1C6EE29A4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1C6EE3370(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C6EE2A34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
  result = sub_1C6EE5340();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v36 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v37 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = (*(v4 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v4 + 56) + 24 * v15;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = v8;
    sub_1C6EE5580();

    sub_1C6E00CBC(v20, v21, v22);
    sub_1C6EE4B30();
    result = sub_1C6EE55A0();
    v8 = v23;
    v24 = -1 << *(v23 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v11 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v23 + 48) + 16 * v27);
    *v32 = v17;
    v32[1] = v18;
    v33 = *(v23 + 56) + 24 * v27;
    *v33 = v20;
    *(v33 + 8) = v21;
    *(v33 + 16) = v22;
    ++*(v23 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    v9 = v37;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_1C6EE2CB4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1C6EE2E78((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1C6EE2914(v11, v6, a2, a1);

    MEMORY[0x1CCA59290](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_1C6EE2E78(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v26 = sub_1C6EE55A0();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1C6EE54B0() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1C6EE2290(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
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

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v39 = sub_1C6EE55A0();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1C6EE54B0() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6EE3254(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6EE54B0() & 1;
  }
}

uint64_t sub_1C6EE32AC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6EE54B0() & 1;
  }
}

unint64_t sub_1C6EE3304()
{
  result = qword_1EDEF67C0;
  if (!qword_1EDEF67C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF67C0);
  }

  return result;
}

unint64_t *sub_1C6EE3370(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
{
  v25 = 0;
  v24 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v31 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = v13;
    v18 = *(a3 + 56) + 24 * v13;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v28 = *v18;
    v20 = v28;
    v29 = v19;
    v30 = v21;

    sub_1C6E00CBC(v20, v19, v21);
    LOBYTE(v19) = a4(v15, v16, &v28);
    sub_1C6E00C60(v28, v29, v30);

    v8 = v31;
    if (v19)
    {
      *(v24 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1C6EE2A34(v24, a2, v25, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1C6EE2A34(v24, a2, v25, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1C6EE3518(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t *))
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1C6EE3370(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1C6EE29A4(v10, v6, v4, a2);
  result = MEMORY[0x1CCA59290](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_1C6EE3748(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = 0;
  v21 = result;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = v14 | (v8 << 6);

    if (sub_1C6EE4BA0())
    {
      v18 = sub_1C6EE4BB0();

      if (v18)
      {
        *(v21 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
LABEL_17:

          return sub_1C6EE2290(v21, a2, v22, a3);
        }
      }
    }

    else
    {
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_17;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6EE38D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a4;
  v33 = a2;
  v34 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v28 = ((1 << v10) + 63) >> 6;
  v12 = 8 * v28;

  v32 = a5;

  if (v11 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v27[1] = v27;
    v27[2] = v6;
    MEMORY[0x1EEE9AC00](v13);
    v29 = v27 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v12);
    v30 = 0;
    v12 = 0;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 56);
    v6 = (v14 + 63) >> 6;
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      v20 = v17 | (v12 << 6);

      if (sub_1C6EE4BA0())
      {
        v21 = sub_1C6EE4BB0();

        if (v21)
        {
          *&v29[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
          if (__OFADD__(v30++, 1))
          {
            __break(1u);
LABEL_18:
            v23 = sub_1C6EE2290(v29, v28, v30, a1);

            return v23;
          }
        }
      }

      else
      {
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v6)
      {
        goto LABEL_18;
      }

      v19 = *(a1 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();

  v26 = v32;

  v23 = sub_1C6EE2844(v25, v28, a1, v33, a3, v31, v26);

  MEMORY[0x1CCA59290](v25, -1, -1);

  return v23;
}

uint64_t sub_1C6EE3BDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EE3C44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9878, &qword_1C6EF6B58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6EE3CB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6EE3D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6EE3D74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6EE3DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6EE3E68()
{
  result = qword_1EDEF8E98[0];
  if (!qword_1EDEF8E98[0])
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF8E98);
  }

  return result;
}
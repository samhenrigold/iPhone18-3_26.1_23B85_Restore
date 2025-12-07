uint64_t sub_1D8E93BE8(uint64_t a1)
{
  result = sub_1D8E93CA4();
  if (v2 <= 0x3F)
  {
    result = sub_1D9176C2C();
    if (v3 <= 0x3F)
    {
      result = sub_1D9176E3C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D8E93CA4()
{
  result = qword_1EDCD0810[0];
  if (!qword_1EDCD0810[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDCD0810);
  }

  return result;
}

uint64_t type metadata accessor for FairPlayServerURLConfiguration(uint64_t a1)
{
  result = qword_1ECAB55C8;
  if (!qword_1ECAB55C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8E93D64(uint64_t a1)
{
  result = sub_1D9176C2C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8E93DDC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  sub_1D8E94158();
  result = sub_1D8E941A4(kBagKeyLicenseStreamingStart, v17);
  if (!v1)
  {
    v22[1] = v3;
    v19 = v17;
    v20 = *(v3 + 32);
    v20(v23, v19, v2);
    sub_1D8E941A4(kBagKeyLicenseStreamingStop, v14);
    v22[0] = type metadata accessor for FairPlayServerURLConfiguration(0);
    v20(v23 + *(v22[0] + 20), v14, v2);
    sub_1D8E941A4(kBagKeyLicenseOfflineStart, v11);
    v21 = v23;
    v20(v23 + *(v22[0] + 24), v11, v2);
    sub_1D8E941A4(kBagKeyLicenseOfflineStop, v8);
    v20(v21 + *(v22[0] + 28), v8, v2);
    sub_1D8E941A4(kBagKeyLicenseOfflineStopNonce, v5);
    return (v20)(v21 + *(v22[0] + 32), v5, v2);
  }

  return result;
}

unint64_t sub_1D8E94158()
{
  result = qword_1ECAB57E0;
  if (!qword_1ECAB57E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAB57E0);
  }

  return result;
}

uint64_t sub_1D8E941A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 syncValueForKey_];

  if (v8)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    v9 = sub_1D9176C2C();
    v10 = swift_dynamicCast();
    v11 = *(v9 - 8);
    (*(v11 + 56))(v6, v10 ^ 1u, 1, v9);
    if ((*(v11 + 48))(v6, 1, v9) != 1)
    {
      return (*(v11 + 32))(a2, v6, v9);
    }
  }

  else
  {
    sub_1D8D08A50(v17, &qword_1ECAB57F0, &unk_1D9190AA0);
    v13 = sub_1D9176C2C();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  sub_1D8D08A50(v6, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8E9440C();
  swift_allocError();
  *v14 = 4;
  return swift_willThrow();
}

unint64_t sub_1D8E9440C()
{
  result = qword_1ECAB55D8;
  if (!qword_1ECAB55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB55D8);
  }

  return result;
}

void sub_1D8E94460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 privateQueueContext];

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v8;
  v14[4] = sub_1D8E965E0;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_26_1;
  v12 = _Block_copy(v14);
  v13 = v10;

  [v13 performBlock_];
  _Block_release(v12);
}

void sub_1D8E945C8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v5 = [objc_opt_self() predicateForEpisodeStoreTrackId_];
  [v4 setPredicate_];

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F68);
  v7 = sub_1D917741C();
  v8 = sub_1D9178CEC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v53[0] = v10;
    *v9 = 136315651;
    *(v9 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, v53);
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v11 = sub_1D9179A4C();
    v13 = sub_1D8CFA924(v11, v12, v53);

    *(v9 + 24) = v13;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Fetching episode for adamId: %{private,mask.hash}s.", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v14 = sub_1D917908C();
  if (v14 >> 62)
  {
    v39 = v14;
    if (sub_1D917935C())
    {
      v40 = sub_1D917935C();
      v14 = v39;
      if (v40 < 2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_23:

    v41 = sub_1D917741C();
    v42 = sub_1D9178CFC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53[0] = v44;
      *v43 = 136315651;
      *(v43 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, v53);
      *(v43 + 12) = 2160;
      *(v43 + 14) = 1752392040;
      *(v43 + 22) = 2081;
      v45 = sub_1D9179A4C();
      v47 = sub_1D8CFA924(v45, v46, v53);

      *(v43 + 24) = v47;
      _os_log_impl(&dword_1D8CEC000, v41, v42, "%s No episode found for adamId: %{private,mask.hash}s.", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v44, -1, -1);
      MEMORY[0x1DA72CB90](v43, -1, -1);
    }

    sub_1D8E965F0();
    v48 = swift_allocError();
    *v49 = 0;
    a3(v48, 1);

    goto LABEL_26;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_23;
  }

  if (v15 < 2)
  {
    goto LABEL_11;
  }

LABEL_8:
  v16 = v14;

  v17 = sub_1D917741C();
  v18 = sub_1D9178CFC();
  v51 = v16;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53[0] = v50;
    *v19 = 136316163;
    *(v19 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, v53);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    v20 = sub_1D9179A4C();
    v22 = sub_1D8CFA924(v20, v21, v53);

    *(v19 + 24) = v22;
    *(v19 + 32) = 2160;
    *(v19 + 34) = 1752392040;
    *(v19 + 42) = 2081;
    v23 = sub_1D9179A4C();
    v25 = sub_1D8CFA924(v23, v24, v53);

    *(v19 + 44) = v25;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "%s More than one episode (%{private,mask.hash}s) found for adamId: %{private,mask.hash}s.", v19, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v50, -1, -1);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  v14 = v51;
LABEL_11:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1DA72AA90](0);
    goto LABEL_14;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v14 + 32);
LABEL_14:
    v27 = v26;

    v28 = sub_1D8E90D80(v27);
    if (v28)
    {
      v29 = v28;
      a3(v28, 0);
    }

    else
    {

      sub_1D8E965F0();
      v30 = swift_allocError();
      *v31 = 1;
      a3(v30, 1);
    }

    v32 = sub_1D917741C();
    v33 = sub_1D9178CEC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53[0] = v35;
      *v34 = 136315651;
      *(v34 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, v53);
      *(v34 + 12) = 2160;
      *(v34 + 14) = 1752392040;
      *(v34 + 22) = 2081;
      v36 = sub_1D9179A4C();
      v38 = sub_1D8CFA924(v36, v37, v53);

      *(v34 + 24) = v38;
      _os_log_impl(&dword_1D8CEC000, v32, v33, "%s Finished fetching episode for adamId: %{private,mask.hash}s.", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v35, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

LABEL_26:
    return;
  }

  __break(1u);
}

uint64_t sub_1D8E94F5C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 privateQueueContext];

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = sub_1D8E9647C;
  v9[4] = v8;
  v9[5] = v5;
  v13[4] = sub_1D8E9648C;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_18;
  v10 = _Block_copy(v13);

  v11 = v7;

  [v11 performBlock_];
  _Block_release(v10);
}

double sub_1D8E950FC(unint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, double), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v47 - v9;
  v55 = sub_1D9176C2C();
  v51 = *(v55 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v55);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    a3(a1, 1, v11.n128_f64[0]);
    return result;
  }

  v49 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = a1;
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_24:
    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

LABEL_23:
  v53 = a1 & 0xFFFFFFFFFFFFFF8;
  v14 = sub_1D917935C();
  v50 = a1;
  if (!v14)
  {
    goto LABEL_24;
  }

LABEL_5:
  v15 = 0;
  v16 = a1 & 0xC000000000000001;
  v54 = MEMORY[0x1E69E7CC0];
  do
  {
    v17 = v15;
    while (1)
    {
      if (v16)
      {
        v18 = MEMORY[0x1DA72AA90](v17, a1, v11);
      }

      else
      {
        if (v17 >= *(v53 + 16))
        {
          goto LABEL_22;
        }

        v18 = *(a1 + 8 * v17 + 32);
      }

      v19 = v18;
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v20 = [v18 assetURL];
      if (v20)
      {
        break;
      }

      ++v17;
      if (v15 == v14)
      {
        goto LABEL_25;
      }
    }

    v21 = v20;
    v22 = sub_1D917820C();
    v24 = v23;

    v25 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_1D8D4241C(0, *(v54 + 2) + 1, 1, v54);
    }

    v27 = *(v54 + 2);
    v26 = *(v54 + 3);
    if (v27 >= v26 >> 1)
    {
      v54 = sub_1D8D4241C((v26 > 1), v27 + 1, 1, v54);
    }

    v28 = v54;
    *(v54 + 2) = v27 + 1;
    v29 = &v28[16 * v27];
    *(v29 + 4) = v25;
    *(v29 + 5) = v24;
    a1 = v50;
  }

  while (v15 != v14);
LABEL_25:
  v47 = a4;
  v48 = a3;
  v30 = v54;
  v31 = *(v54 + 2);
  if (v31)
  {
    v32 = 0;
    v33 = (v51 + 48);
    v34 = (v51 + 32);
    v35 = v54 + 40;
    v36 = MEMORY[0x1E69E7CC0];
    while (v32 < *(v30 + 2))
    {

      sub_1D9176BFC();
      v37 = v55;

      if ((*v33)(v10, 1, v37) == 1)
      {
        sub_1D8E677CC(v10);
      }

      else
      {
        v38 = *v34;
        (*v34)(v52, v10, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1D8ECC9D4(0, *(v36 + 2) + 1, 1, v36);
        }

        v40 = *(v36 + 2);
        v39 = *(v36 + 3);
        if (v40 >= v39 >> 1)
        {
          v36 = sub_1D8ECC9D4((v39 > 1), v40 + 1, 1, v36);
        }

        *(v36 + 2) = v40 + 1;
        v38(&v36[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v40], v52, v55);
        a1 = v50;
      }

      ++v32;
      v35 += 16;
      v30 = v54;
      if (v31 == v32)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_42;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_37:

  if (v49)
  {
    v41 = sub_1D917935C();
  }

  else
  {
    v41 = *(v53 + 16);
  }

  a1 = v48;
  if (v41 == *(v36 + 2))
  {
    goto LABEL_45;
  }

  if (qword_1EDCD0F60 != -1)
  {
    goto LABEL_47;
  }

LABEL_42:
  v42 = sub_1D917744C();
  __swift_project_value_buffer(v42, qword_1EDCD0F68);
  v43 = sub_1D917741C();
  v44 = sub_1D9178CFC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v56 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, &v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x1DA72CB90](v46, -1, -1);
    MEMORY[0x1DA72CB90](v45, -1, -1);
  }

LABEL_45:
  (a1)(v36, 0);

  return result;
}

void sub_1D8E95668(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F68);
  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, v16);
    _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Fetching migration data for legacy FairPlay keys.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 privateQueueContext];

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v5;
  v16[4] = sub_1D8E96498;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D8CF5F60;
  v16[3] = &block_descriptor_10_1;
  v14 = _Block_copy(v16);
  v15 = v12;

  [v15 performBlock_];
  _Block_release(v14);
}

void sub_1D8E958DC(void *a1, void (*a2)(uint64_t, void, __n128), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for FairPlayMigrationData(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8CF2154(0, &unk_1EDCD5B60, off_1E8567630);
  v14 = sub_1D917908C();
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v13;
    v44 = a3;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_19:

    (a2)(MEMORY[0x1E69E7CC0], 0);
LABEL_20:

    return;
  }

  v41 = v14;
  v15 = sub_1D917935C();
  v14 = v41;
  v43 = v13;
  v44 = a3;
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_3:
  v49 = v10;
  v50 = v14;
  v42 = a2;
  v54 = MEMORY[0x1E69E7CC0];
  sub_1D8E31448(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v50;
    v45 = v50 & 0xC000000000000001;
    v46 = v15;
    v18 = v54;
    v19 = &selRef_redirectURLForStoreCollectionId_;
    v47 = v9;
    v48 = a1;
    do
    {
      v20 = v8;
      if (v45)
      {
        v21 = MEMORY[0x1DA72AA90](v16);
      }

      else
      {
        v21 = *(v17 + 8 * v16 + 32);
      }

      v22 = v21;
      v53 = [v21 v19[452]];
      v23 = [v22 data];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1D9176C8C();
        v51 = v26;
        v52 = v25;
      }

      else
      {
        v51 = 0xF000000000000000;
        v52 = 0;
      }

      v27 = sub_1D8E95E98([v22 v19[452]], a1);
      v29 = v28;
      [v22 expirationDate];
      sub_1D9176CBC();
      v30 = sub_1D9176E3C();
      (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
      v31 = [v22 keyUri];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1D917820C();
        v35 = v34;
      }

      else
      {

        v33 = 0;
        v35 = 0;
      }

      v36 = v52;
      *v12 = v53;
      v12[1] = v36;
      v12[2] = v51;
      v12[3] = v27;
      v12[4] = v29;
      v37 = v47;
      v8 = v20;
      sub_1D8E964A4(v20, v12 + *(v47 + 28));
      v38 = (v12 + *(v37 + 32));
      *v38 = v33;
      v38[1] = v35;
      v54 = v18;
      v40 = *(v18 + 16);
      v39 = *(v18 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D8E31448((v39 > 1), v40 + 1, 1);
        v18 = v54;
      }

      ++v16;
      *(v18 + 16) = v40 + 1;
      sub_1D8E96514(v12, v18 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v40);
      a1 = v48;
      v17 = v50;
      v19 = &selRef_redirectURLForStoreCollectionId_;
    }

    while (v46 != v16);

    (v42)(v18, 0);
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1D8E95E98(uint64_t a1, void *a2)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D918A530;
  v5 = sub_1D917820C();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D8D34978();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  *(v4 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v4 + 104) = sub_1D8E96578();
  *(v4 + 72) = v8;
  v9 = sub_1D9178C8C();
  v10 = [a2 objectInEntity:@"MTEpisode" predicate:v9];
  if (!v10)
  {
LABEL_7:

    return 0;
  }

  v11 = v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = [v12 assetURL];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1D917820C();

      return v15;
    }

    goto LABEL_7;
  }

  return 0;
}

void sub_1D8E96058(uint64_t a1, void (*a2)(void))
{
  v9 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v3 = [objc_opt_self() predicateForDownloadedFairPlayEpisodes];
  [v9 setPredicate_];

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD0F68);
  v5 = sub_1D917741C();
  v6 = sub_1D9178CEC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, &v10);
    _os_log_impl(&dword_1D8CEC000, v5, v6, "%s Fetching all downloaded HLS episodes.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  sub_1D917908C();
  a2();
}

uint64_t sub_1D8E964A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E96514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FairPlayMigrationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8E96578()
{
  result = qword_1ECAAFC70;
  if (!qword_1ECAAFC70)
  {
    sub_1D8CF2154(255, qword_1EDCD0810, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFC70);
  }

  return result;
}

unint64_t sub_1D8E965F0()
{
  result = qword_1ECAB55E0;
  if (!qword_1ECAB55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB55E0);
  }

  return result;
}

unint64_t sub_1D8E96658()
{
  result = qword_1ECAB55E8;
  if (!qword_1ECAB55E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB55E8);
  }

  return result;
}

id FairPlayInvalidationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FairPlayInvalidationManager.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(type metadata accessor for FairPlayKeyLoader()) init];
  type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v2 = swift_allocObject();
  v3 = sub_1D8CFDA60(v1, v2, objc_allocWithZone(ObjectType));

  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t FairPlayInvalidationManager.invalidateFairPlayKey(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1D9177E0C();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR___PFFairPlayInvalidationManager_internalQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a1;
  v15[6] = ObjectType;
  aBlock[4] = sub_1D8E98DFC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_19;
  v16 = _Block_copy(aBlock);

  sub_1D8D1F93C(a2, a3);
  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

void sub_1D8E96AF4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1EDCD0F68);
    v12 = sub_1D917741C();
    v13 = sub_1D9178CEC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v27 = a5;
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136315651;
      *(v14 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v28);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      v16 = sub_1D9179A4C();
      v18 = sub_1D8CFA924(v16, v17, &v28);

      *(v14 + 24) = v18;
      _os_log_impl(&dword_1D8CEC000, v12, v13, "%s Invalidating keys for adamId: %{private,mask.hash}s", v14, 0x20u);
      swift_arrayDestroy();
      v19 = v15;
      a5 = v27;
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v14, -1, -1);
    }

    v20 = *&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 24];
    v21 = *&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 32];
    __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher], v20);
    v22 = swift_allocObject();
    v22[2] = v10;
    v22[3] = a2;
    v22[4] = a3;
    v22[5] = a4;
    v22[6] = a5;
    v23 = *(v21 + 8);
    v24 = v10;
    sub_1D8D1F93C(a2, a3);
    v23(a4, sub_1D8E99974, v22, v20, v21);
  }

  else if (a2)
  {
    sub_1D8E99894();
    v25 = swift_allocError();
    *v26 = 0;
    a2();
  }
}

void sub_1D8E96DC0(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a4)
    {
      a4(a1);
    }
  }

  else
  {
    v8 = *(a3 + OBJC_IVAR___PFFairPlayInvalidationManager_keyLoader);
    if (a4)
    {
      aBlock[4] = a4;
      aBlock[5] = a5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8E8A43C;
      aBlock[3] = &block_descriptor_57;
      v9 = _Block_copy(aBlock);
    }

    else
    {
      v9 = 0;
    }

    [v8 stopKeyRequestWithAsset:a1 completion:v9];
    _Block_release(v9);
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917744C();
  __swift_project_value_buffer(v10, qword_1EDCD0F68);
  v11 = sub_1D917741C();
  v12 = sub_1D9178CEC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315651;
    *(v13 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, aBlock);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    aBlock[6] = a6;
    v15 = sub_1D9179A4C();
    v17 = sub_1D8CFA924(v15, v16, aBlock);

    *(v13 + 24) = v17;
    _os_log_impl(&dword_1D8CEC000, v11, v12, "%s Finished invalidating keys for adamId: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v14, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }
}

uint64_t FairPlayInvalidationManager.markAllFairPlayKeysForInvalidation(shouldRemove:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1D9177E0C();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR___PFFairPlayInvalidationManager_internalQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a1;
  *(v15 + 48) = ObjectType;
  aBlock[4] = sub_1D8E99368;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_10_2;
  v16 = _Block_copy(aBlock);

  sub_1D8D1F93C(a2, a3);
  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

void sub_1D8E974F0(uint64_t a1, void (*a2)(void), uint64_t a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1EDCD0F68);
    v12 = sub_1D917741C();
    v13 = sub_1D9178CEC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v23);
      _os_log_impl(&dword_1D8CEC000, v12, v13, "%s Invalidating all FairPlay keys.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1DA72CB90](v15, -1, -1);
      MEMORY[0x1DA72CB90](v14, -1, -1);
    }

    v16 = *&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 24];
    v17 = *&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 32];
    __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher], v16);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    *(v18 + 32) = v10;
    *(v18 + 40) = a4 & 1;
    *(v18 + 48) = a5;
    v19 = *(v17 + 32);
    sub_1D8D1F93C(a2, a3);
    v20 = v10;
    v19(sub_1D8E99908, v18, v16, v17);
  }

  else if (a2)
  {
    sub_1D8E99894();
    v21 = swift_allocError();
    *v22 = 0;
    a2();
  }
}

void sub_1D8E97754(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD0F68);
    v16 = a1;
    v17 = sub_1D917741C();
    v18 = sub_1D9178CFC();
    sub_1D8D99898(a1, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v42);
      *(v19 + 12) = 2082;
      swift_getErrorValue();
      v21 = sub_1D9179D2C();
      v23 = sub_1D8CFA924(v21, v22, &v42);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_1D8CEC000, v17, v18, "%s Unable to fetch downloaded FairPlay episodes with error: %{public}s.", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v20, -1, -1);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }

    if (!a3)
    {
      return;
    }

LABEL_19:
    a3(a1);
    return;
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v40[1] = a4;
  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1EDCD0F68);
  v25 = sub_1D917741C();
  v26 = sub_1D9178CEC();
  v27 = os_log_type_enabled(v25, v26);
  v41 = a3;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v42);
    _os_log_impl(&dword_1D8CEC000, v25, v26, "%s Fetched downloaded FairPlay data. Marking to invalidate keys.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1DA72CB90](v29, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  v30 = a1[2];
  if (v30)
  {
    v33 = *(v12 + 16);
    v31 = v12 + 16;
    v32 = v33;
    v34 = a1 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v35 = *(v31 + 56);
    do
    {
      v32(v14, v34, v11);
      _s18PodcastsFoundation27FairPlayInvalidationManagerC010markKeyForE02at12shouldRemovey0B03URLV_SbtF_0(v14, a6 & 1);
      (*(v31 - 8))(v14, v11);
      v34 += v35;
      --v30;
    }

    while (v30);
  }

  v36 = sub_1D917741C();
  v37 = sub_1D9178CEC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v42);
    _os_log_impl(&dword_1D8CEC000, v36, v37, "%s Finished marking all FairPlay keys for invalidation.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1DA72CB90](v39, -1, -1);
    MEMORY[0x1DA72CB90](v38, -1, -1);
  }

  a3 = v41;
  if (v41)
  {
    a1 = 0;
    goto LABEL_19;
  }
}

uint64_t FairPlayInvalidationManager.removalAllFairPlayKeys(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177E0C();
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + OBJC_IVAR___PFFairPlayInvalidationManager_internalQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = ObjectType;
  aBlock[4] = sub_1D8E9937C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_17_2;
  v15 = _Block_copy(aBlock);

  sub_1D8D1F93C(a1, a2);
  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v12, v9, v15);
  _Block_release(v15);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);
}

void sub_1D8E97FCC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD0F68);
    v10 = sub_1D917741C();
    v11 = sub_1D9178CEC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v21);
      _os_log_impl(&dword_1D8CEC000, v10, v11, "%s Removing all FairPlay keys.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    v14 = *&v8[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 24];
    v15 = *&v8[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 32];
    __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher], v14);
    v16 = swift_allocObject();
    v16[2] = v8;
    v16[3] = a2;
    v16[4] = a3;
    v16[5] = a4;
    v17 = *(v15 + 16);
    v18 = v8;
    sub_1D8D1F93C(a2, a3);
    v17(sub_1D8E998F8, v16, v14, v15);
  }

  else if (a2)
  {
    sub_1D8E99894();
    v19 = swift_allocError();
    *v20 = 0;
    a2();
  }
}

void sub_1D8E98220(unint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    if (a1 >> 62)
    {
      v16 = sub_1D917935C();
      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_10:
        if (v16 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v16; ++i)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1DA72AA90](i, a1);
          }

          else
          {
            v18 = *(a1 + 8 * i + 32);
          }

          v19 = v18;
        }
      }
    }

    if (!a4)
    {
      return;
    }

    v15 = 0;
    goto LABEL_19;
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F68);
  v7 = a1;
  v8 = sub_1D917741C();
  v9 = sub_1D9178CFC();
  sub_1D8D99898(a1, 1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v20);
    *(v10 + 12) = 2082;
    swift_getErrorValue();
    v12 = sub_1D9179D2C();
    v14 = sub_1D8CFA924(v12, v13, &v20);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "%s Unable to remove all FairPlay keys with error %{public}s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  if (a4)
  {
    v15 = a1;
LABEL_19:
    a4(v15);
  }
}

uint64_t FairPlayInvalidationManager.removeKey(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1D9177E0C();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR___PFFairPlayInvalidationManager_internalQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a1;
  v15[6] = ObjectType;
  aBlock[4] = sub_1D8E9984C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_24_2;
  v16 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

void sub_1D8E98858(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 24);
    v11 = *(Strong + OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 32);
    v12 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher), v10);
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a5;
    v14 = *(v11 + 8);

    v14(a4, sub_1D8E998E8, v13, v10, v11);
  }

  else
  {
    sub_1D8E99894();
    v15 = swift_allocError();
    *v16 = 0;
    a2();
  }
}

void sub_1D8E9899C(char *a1, char a2, void (*a3)(char *))
{
  if (a2)
  {
    a3(a1);
  }

  else if (*&a1[OBJC_IVAR___PFFairPlayAsset_keyStore] && (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
  {
    v6 = v5;
    swift_unknownObjectRetain();

    a3(0);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD0F68);
    v8 = a1;
    v9 = sub_1D917741C();
    v10 = sub_1D9178CFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315651;
      *(v11 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v15);
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2049;
      *(v11 + 24) = *&v8[OBJC_IVAR___PFFairPlayAsset_adamID];
      sub_1D8E8A1A8(a1);
      _os_log_impl(&dword_1D8CEC000, v9, v10, "%s Unable to remove key for %{private,mask.hash}lld, no key store found.", v11, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    else
    {
      sub_1D8E8A1A8(a1);
    }

    sub_1D8E99894();
    v13 = swift_allocError();
    *v14 = 1;
    (a3)();
  }
}

id FairPlayInvalidationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s18PodcastsFoundation27FairPlayInvalidationManagerC010markKeyForE02at12shouldRemovey0B03URLV_SbtF_0(uint64_t a1, char a2)
{
  v3 = sub_1D9176BBC();
  v5 = v4;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F68);

  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315651;
    *(v9 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v31);
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    *(v9 + 24) = sub_1D8CFA924(v3, v5, &v31);
    _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Invalidating FairPlay key at: %{private,mask.hash}s.", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v11 = objc_opt_self();
  v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  if (a2)
  {
    v13 = objc_allocWithZone(MEMORY[0x1E69E4430]);
    v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v30 = [v13 initWithPath_];

    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315651;
      *(v17 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v31);
      *(v17 + 12) = 2160;
      *(v17 + 14) = 1752392040;
      *(v17 + 22) = 2081;
      *(v17 + 24) = sub_1D8CFA924(v3, v5, &v31);
      _os_log_impl(&dword_1D8CEC000, v15, v16, "%s Removing key from %{private,mask.hash}s.", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    v19 = [v30 removeAllKeys];
    if (v19)
    {
      v20 = v19;

      v21 = v20;
      v22 = sub_1D917741C();
      v23 = sub_1D9178CFC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v31 = v25;
        *v24 = 136315907;
        *(v24 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v31);
        *(v24 + 12) = 2160;
        *(v24 + 14) = 1752392040;
        *(v24 + 22) = 2081;
        v26 = sub_1D8CFA924(v3, v5, &v31);

        *(v24 + 24) = v26;
        *(v24 + 32) = 2082;
        swift_getErrorValue();
        v27 = sub_1D9179D2C();
        v29 = sub_1D8CFA924(v27, v28, &v31);

        *(v24 + 34) = v29;
        _os_log_impl(&dword_1D8CEC000, v22, v23, "%s Unable to remove key from %{private,mask.hash}s with error: %{public}s.", v24, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v25, -1, -1);
        MEMORY[0x1DA72CB90](v24, -1, -1);

        return;
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

void *_s18PodcastsFoundation27FairPlayInvalidationManagerC9removeKey3fors5Error_pSgAA0cD5AssetC_tF_0(void *a1)
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F68);
  v3 = a1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315651;
    *(v6 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v29);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2049;
    *(v6 + 24) = *&v3[OBJC_IVAR___PFFairPlayAsset_adamID];

    _os_log_impl(&dword_1D8CEC000, v4, v5, "%s Removing FairPlay key for %{private,mask.hash}lld.", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  else
  {
  }

  if (*&v3[OBJC_IVAR___PFFairPlayAsset_keyStore] && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 removeAllKeys];
    if (v10)
    {
      v11 = v10;
      v12 = v3;
      v13 = v11;
      v14 = v11;
      v15 = sub_1D917741C();
      v16 = sub_1D9178CEC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v29 = v18;
        *v17 = 136315907;
        *(v17 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v29);
        *(v17 + 12) = 2160;
        *(v17 + 14) = 1752392040;
        *(v17 + 22) = 2049;
        *(v17 + 24) = *&v12[OBJC_IVAR___PFFairPlayAsset_adamID];

        *(v17 + 32) = 2082;
        swift_getErrorValue();
        v19 = sub_1D9179D2C();
        v21 = sub_1D8CFA924(v19, v20, &v29);

        *(v17 + 34) = v21;
        _os_log_impl(&dword_1D8CEC000, v15, v16, "%s Unable to remove FairPlay key for %{private,mask.hash}lld with error %{public}s.", v17, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v18, -1, -1);
        MEMORY[0x1DA72CB90](v17, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return v13;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    v23 = v3;
    v24 = sub_1D917741C();
    v25 = sub_1D9178CEC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v26 = 136315651;
      *(v26 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v29);
      *(v26 + 12) = 2160;
      *(v26 + 14) = 1752392040;
      *(v26 + 22) = 2049;
      *(v26 + 24) = *&v23[OBJC_IVAR___PFFairPlayAsset_adamID];

      _os_log_impl(&dword_1D8CEC000, v24, v25, "%s Unable to remove FairPlay key for %{private,mask.hash}lld, no key store found.", v26, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1DA72CB90](v27, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    else
    {
    }

    sub_1D8E99894();
    result = swift_allocError();
    *v28 = 1;
  }

  return result;
}

unint64_t sub_1D8E99894()
{
  result = qword_1ECAB5608;
  if (!qword_1ECAB5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5608);
  }

  return result;
}

uint64_t objectdestroy_47Tm(uint64_t a1)
{
  if (*(v1 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D8E9999C()
{
  result = qword_1ECAB5610;
  if (!qword_1ECAB5610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5610);
  }

  return result;
}

uint64_t sub_1D8E99A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1D8E3148C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1D91792DC();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(*(a1 + 48) + 8 * result) + OBJC_IVAR___PFFairPlayAsset_adamID);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1D8E3148C((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
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
          sub_1D8D9B144(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1D8D9B144(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
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

void sub_1D8E99C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FairPlayAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D8CFBC88(&qword_1ECAB5520, type metadata accessor for FairPlayAsset, MEMORY[0x1E69E81B8]);
  v5 = sub_1D917802C();
  if (a2)
  {
    v6 = sub_1D9176A5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id FairPlayKeyLoader.__allocating_init(sessionProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_1D8E9FEE4(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

id FairPlayKeyLoader.init(sessionProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1D8E9FBAC(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

id FairPlayKeyLoader.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for FairPlayKeySessionProvider();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v2 = sub_1D8E9F8A8(v1, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t FairPlayKeyLoader.createSession(asset:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + OBJC_IVAR___PFFairPlayKeyLoader_internalQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v15[5] = a1;
  aBlock[4] = sub_1D8E9FFC8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_20;
  v16 = _Block_copy(aBlock);
  sub_1D8D1F93C(a2, a3);

  v17 = a1;
  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v16);
  _Block_release(v16);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

void (*sub_1D8E9A218(void (*result)(uint64_t, void *), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t, void *)
{
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = (Strong + OBJC_IVAR___PFFairPlayKeyLoader_sessionProvider);
      v10 = v9[3];
      v11 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v12 = *(v11 + 8);

      v12(a4, v10, v11);
      v15 = swift_unknownObjectRetain();
      v6(v15, 0);
      swift_unknownObjectRelease();

      sub_1D8D15664(v6, a2);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1D8E9440C();
      v13 = swift_allocError();
      *v14 = 1;

      v6(0, v13);

      return sub_1D8D15664(v6, a2);
    }
  }

  return result;
}

unint64_t sub_1D8E9A534()
{
  v1 = (v0 + OBJC_IVAR___PFFairPlayKeyLoader____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR___PFFairPlayKeyLoader____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0xD000000000000027;
    *v1 = 0xD000000000000027;
    v1[1] = 0x80000001D91CBDF0;
  }

  return v2;
}

uint64_t FairPlayKeyLoader.startKeyRequest(session:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + OBJC_IVAR___PFFairPlayKeyLoader_internalQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_1D8E9FFD4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_10_3;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1D8D1F93C(a2, a3);
  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

void sub_1D8E9A984(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D8E9A9FC(a2, a3, a4);
  }
}

uint64_t sub_1D8E9A9FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v3[OBJC_IVAR___PFFairPlayKeyLoader_internalQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  v14 = sub_1D9177F4C();
  (*(v8 + 8))(v11, v7);
  if (v14)
  {
    v43 = a3;
    if (qword_1EDCD0F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1EDCD0F68);
  v16 = v3;
  swift_unknownObjectRetain();
  v17 = sub_1D917741C();
  v18 = sub_1D9178CEC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v44 = v21;
    *v20 = 136315651;
    v22 = sub_1D8E9A534();
    v24 = sub_1D8CFA924(v22, v23, &v44);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    v25 = [a1 asset];
    v26 = FairPlayAsset.description.getter();
    v28 = v27;

    v29 = sub_1D8CFA924(v26, v28, &v44);

    *(v20 + 24) = v29;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "%s Sending start request for asset: %{private,mask.hash}s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v21, -1, -1);
    v30 = v20;
    a2 = v42;
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  sub_1D8E9DCDC(a1);
  [a1 register];
  v31 = [a1 asset];
  v32 = swift_allocObject();
  v32[2] = v16;
  v32[3] = a1;
  v32[4] = v13;
  v32[5] = a2;
  v33 = a2;
  v34 = v43;
  v32[6] = v43;
  v35 = *&v31[OBJC_IVAR___PFFairPlayAsset_avAsset + 24];
  v42 = *&v31[OBJC_IVAR___PFFairPlayAsset_avAsset + 32];
  v41 = __swift_project_boxed_opaque_existential_1(&v31[OBJC_IVAR___PFFairPlayAsset_avAsset], v35);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = sub_1D8EA01CC;
  v37[4] = v32;
  v38 = v13;
  v39 = v16;
  swift_unknownObjectRetain();
  sub_1D8D1F93C(v33, v34);

  FairPlayAVAsset.fairPlayIdentifier(responseQueue:completion:)(v38, sub_1D8EA01E0, v37, v35, v42);
}

void FairPlayKeyLoader.renewKeyRequest(asset:completion:)(char *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v43 = a2;
  v44 = a3;
  v39 = sub_1D9177E0C();
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&a1[OBJC_IVAR___PFFairPlayAsset_avAsset + 24];
  v16 = *&a1[OBJC_IVAR___PFFairPlayAsset_avAsset + 32];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR___PFFairPlayAsset_avAsset], v15);
  v17 = (*(v16 + 8))(v15, v16);
  v18 = [v17 URL];
  sub_1D9176B9C();

  LOBYTE(v18) = sub_1D9176A8C();
  (*(v12 + 8))(v14, v11);
  if (v18)
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v22 = v43;
    v21 = v44;
    v20[2] = v19;
    v20[3] = v22;
    v20[4] = v21;
    v20[5] = a1;
    aBlock[4] = sub_1D8E9FFE0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_17_3;
    v23 = _Block_copy(aBlock);

    sub_1D8D1F93C(v22, v21);
    v24 = a1;
    sub_1D9177E4C();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v25 = v39;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v10, v7, v23);
    _Block_release(v23);
    (*(v42 + 8))(v7, v25);
    (*(v40 + 8))(v10, v41);
  }

  else
  {
    v26 = v43;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1EDCD0F68);
    v28 = v4;
    v29 = sub_1D917741C();
    v30 = sub_1D9178CFC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      v33 = sub_1D8E9A534();
      v35 = sub_1D8CFA924(v33, v34, aBlock);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1D8CEC000, v29, v30, "%s Unsupported operation, attempting to renew a non-offline asset.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1DA72CB90](v32, -1, -1);
      MEMORY[0x1DA72CB90](v31, -1, -1);
    }

    if (v26)
    {
      sub_1D8E9440C();
      v36 = swift_allocError();
      *v37 = 6;
      v26();
    }
  }
}

void sub_1D8E9B480(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (Strong + OBJC_IVAR___PFFairPlayKeyLoader_sessionProvider);
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v14 = (*(v11 + 8))(a4, v10, v11);
    [v14 setBypassCache_];
    sub_1D8E9B5E8(v14, a2, a3);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    sub_1D8E9440C();
    v12 = swift_allocError();
    *v13 = 1;
    a2();
  }
}

uint64_t sub_1D8E9B5E8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v3[OBJC_IVAR___PFFairPlayKeyLoader_internalQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9177F4C();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_1EDCD0F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_1D917744C();
  __swift_project_value_buffer(v14, qword_1EDCD0F68);
  v15 = v3;
  swift_unknownObjectRetain();
  v16 = sub_1D917741C();
  v17 = sub_1D9178CEC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = a2;
    v19 = a3;
    v20 = v18;
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 136315651;
    v22 = sub_1D8E9A534();
    v24 = sub_1D8CFA924(v22, v23, &v33);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    v25 = [a1 asset];
    v26 = FairPlayAsset.description.getter();
    v28 = v27;

    v29 = sub_1D8CFA924(v26, v28, &v33);

    *(v20 + 24) = v29;
    _os_log_impl(&dword_1D8CEC000, v16, v17, "%s Sending renew request for asset: %{private,mask.hash}s.", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v21, -1, -1);
    v30 = v20;
    a3 = v19;
    a2 = v32;
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  return sub_1D8E9A9FC(a1, a2, a3);
}

uint64_t FairPlayKeyLoader.renewKeyRequests(assets:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + OBJC_IVAR___PFFairPlayKeyLoader_internalQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a1;
  aBlock[4] = sub_1D8E9FFEC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_24_3;
  v16 = _Block_copy(aBlock);

  sub_1D8D1F93C(a2, a3);

  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

void sub_1D8E9BCCC(uint64_t a1, void (*a2)(void, void), uint64_t a3, unint64_t a4)
{
  v7 = sub_1D9177E0C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1D9177E9C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v64 = a2;
    v65 = a3;
    v66 = v12;
    v68 = v11;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v67 = v10;
    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD0F68);
    v17 = v15;

    v18 = sub_1D917741C();
    v19 = sub_1D9178D1C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = a4 >> 62;
    v72 = v17;
    v69 = v8;
    v70 = v7;
    if (!v20)
    {
      goto LABEL_23;
    }

    v22 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v22 = 136315651;
    v23 = sub_1D8E9A534();
    v25 = sub_1D8CFA924(v23, v24, aBlock);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    if (v21)
    {
      goto LABEL_35;
    }

    for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
    {
      v27 = MEMORY[0x1E69E7CC0];
      if (i)
      {
        v73 = MEMORY[0x1E69E7CC0];
        sub_1D8E3148C(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return;
        }

        v61 = v19;
        v62 = v21;
        v27 = v73;
        if ((a4 & 0xC000000000000001) != 0)
        {
          for (j = 0; j != i; ++j)
          {
            v29 = *(MEMORY[0x1DA72AA90](j, a4) + OBJC_IVAR___PFFairPlayAsset_adamID);
            swift_unknownObjectRelease();
            v73 = v27;
            v31 = *(v27 + 16);
            v30 = *(v27 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_1D8E3148C((v30 > 1), v31 + 1, 1);
              v27 = v73;
            }

            *(v27 + 16) = v31 + 1;
            *(v27 + 8 * v31 + 32) = v29;
          }
        }

        else
        {
          v35 = (a4 + 32);
          v36 = *(v73 + 16);
          do
          {
            v37 = *(*v35 + OBJC_IVAR___PFFairPlayAsset_adamID);
            v73 = v27;
            v38 = *(v27 + 24);
            if (v36 >= v38 >> 1)
            {
              sub_1D8E3148C((v38 > 1), v36 + 1, 1);
              v27 = v73;
            }

            *(v27 + 16) = v36 + 1;
            *(v27 + 8 * v36 + 32) = v37;
            ++v35;
            ++v36;
            --i;
          }

          while (i);
        }

        v21 = v62;
        v19 = v61;
      }

      v39 = MEMORY[0x1DA729BD0](v27, MEMORY[0x1E69E7360]);
      v41 = v40;

      v42 = sub_1D8CFA924(v39, v41, aBlock);

      *(v22 + 24) = v42;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "%s Beginning renewals for adamIDs: %{private,mask.hash}s", v22, 0x20u);
      v43 = v63;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v43, -1, -1);
      MEMORY[0x1DA72CB90](v22, -1, -1);
LABEL_23:

      v44 = dispatch_group_create();
      v22 = swift_allocObject();
      *(v22 + 16) = sub_1D8E26E10(MEMORY[0x1E69E7CC0]);
      if (v21)
      {
        v18 = sub_1D917935C();
        if (!v18)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v18 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_32;
        }
      }

      if (v18 >= 1)
      {
        v45 = 0;
        do
        {
          if ((a4 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x1DA72AA90](v45, a4);
          }

          else
          {
            v46 = *(a4 + 8 * v45 + 32);
          }

          v47 = v46;
          ++v45;
          dispatch_group_enter(v44);
          v48 = swift_allocObject();
          v48[2] = v22;
          v48[3] = v47;
          v48[4] = v44;

          v49 = v47;
          v50 = v44;
          FairPlayKeyLoader.renewKeyRequest(asset:completion:)(v49, sub_1D8EA01B4, v48);
        }

        while (v18 != v45);
LABEL_32:
        v51 = v72;
        v63 = *&v72[OBJC_IVAR___PFFairPlayKeyLoader_internalQueue];
        v52 = swift_allocObject();
        v52[2] = v51;
        v52[3] = v22;
        v54 = v64;
        v53 = v65;
        v52[4] = v64;
        v52[5] = v53;
        aBlock[4] = sub_1D8EA01C0;
        aBlock[5] = v52;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D8CF5F60;
        aBlock[3] = &block_descriptor_85_0;
        v55 = _Block_copy(aBlock);
        v56 = v51;

        sub_1D8D1F93C(v54, v53);
        v57 = v71;
        sub_1D9177E4C();
        v73 = MEMORY[0x1E69E7CC0];
        sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
        sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
        v58 = v67;
        v59 = v70;
        sub_1D91792CC();
        sub_1D9178D7C();
        _Block_release(v55);

        (*(v69 + 8))(v58, v59);
        (*(v66 + 8))(v57, v68);

        return;
      }

      __break(1u);
LABEL_35:
      ;
    }
  }

  if (a2)
  {
    v32 = sub_1D8E26E10(MEMORY[0x1E69E7CC0]);
    sub_1D8E9440C();
    v33 = swift_allocError();
    *v34 = 1;
    a2(v32, v33);
  }
}

void sub_1D8E9C484(void *a1, uint64_t a2, void *a3, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    v7 = a1;
    sub_1D8F7CB98(a1, a3);
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

double sub_1D8E9C504(void *a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1EDCD0F68);
  v6 = a1;

  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136315651;
    v11 = sub_1D8E9A534();
    v13 = sub_1D8CFA924(v11, v12, v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    swift_beginAccess();

    v15 = sub_1D8E99A00(v14);

    v16 = MEMORY[0x1DA729BD0](v15, MEMORY[0x1E69E7360]);
    v18 = v17;

    v19 = sub_1D8CFA924(v16, v18, v22);

    *(v9 + 24) = v19;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Completed renewals with errors for adamIDs: %{private,mask.hash}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  if (a3)
  {
    swift_beginAccess();

    a3(v21, 0);
  }

  return result;
}

id FairPlayKeyLoader.renewKey(session:)(void *a1)
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1EDCD0F68);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315651;
    v9 = sub_1D8E9A534();
    v11 = sub_1D8CFA924(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5620, &qword_1D9190120);
    v12 = sub_1D917826C();
    v14 = sub_1D8CFA924(v12, v13, &v16);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "%s Renewing keys for session: %{private,mask.hash}s.", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  return [a1 renewKey];
}

void FairPlayKeyLoader.stopKeyRequest(asset:completion:)(char *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v43 = a2;
  v44 = a3;
  v39 = sub_1D9177E0C();
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&a1[OBJC_IVAR___PFFairPlayAsset_avAsset + 24];
  v16 = *&a1[OBJC_IVAR___PFFairPlayAsset_avAsset + 32];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR___PFFairPlayAsset_avAsset], v15);
  v17 = (*(v16 + 8))(v15, v16);
  v18 = [v17 URL];
  sub_1D9176B9C();

  LOBYTE(v18) = sub_1D9176A8C();
  (*(v12 + 8))(v14, v11);
  if (v18)
  {
    v19 = v43;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD0F68);
    v21 = v4;
    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      v26 = sub_1D8E9A534();
      v28 = sub_1D8CFA924(v26, v27, aBlock);

      *(v24 + 4) = v28;
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    if (v19)
    {
      sub_1D8E9440C();
      v29 = swift_allocError();
      *v30 = 6;
      v19();
    }
  }

  else
  {
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v34 = v43;
    v33 = v44;
    v32[2] = v31;
    v32[3] = v34;
    v32[4] = v33;
    v32[5] = a1;
    aBlock[4] = sub_1D8EA0048;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_31_0;
    v35 = _Block_copy(aBlock);

    sub_1D8D1F93C(v34, v33);
    v36 = a1;
    sub_1D9177E4C();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v37 = v39;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v10, v7, v35);
    _Block_release(v35);
    (*(v42 + 8))(v7, v37);
    (*(v40 + 8))(v10, v41);
  }
}

void sub_1D8E9CFFC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (Strong + OBJC_IVAR___PFFairPlayKeyLoader_sessionProvider);
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v12 = (*(v11 + 8))(a4, v10, v11);
    sub_1D8E9D150(v12, a2, a3);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    sub_1D8E9440C();
    v13 = swift_allocError();
    *v14 = 1;
    a2();
  }
}

void sub_1D8E9D150(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v3[OBJC_IVAR___PFFairPlayKeyLoader_internalQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9177F4C();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_1EDCD0F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_1D917744C();
  __swift_project_value_buffer(v14, qword_1EDCD0F68);
  v15 = v3;
  swift_unknownObjectRetain();
  v16 = sub_1D917741C();
  v17 = sub_1D9178CEC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315651;
    v21 = sub_1D8E9A534();
    v23 = sub_1D8CFA924(v21, v22, aBlock);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    v24 = [a1 asset];
    v25 = FairPlayAsset.description.getter();
    v27 = v26;

    v28 = sub_1D8CFA924(v25, v27, aBlock);

    *(v19 + 24) = v28;
    _os_log_impl(&dword_1D8CEC000, v16, v17, "%s Sending stop request for asset: %{private,mask.hash}s.", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v20, -1, -1);
    v29 = v19;
    a3 = v34;
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  v30 = swift_allocObject();
  v30[2] = v15;
  v30[3] = a2;
  v30[4] = a3;
  aBlock[4] = sub_1D8EA01A8;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8E8A43C;
  aBlock[3] = &block_descriptor_73;
  v31 = _Block_copy(aBlock);
  v32 = v15;
  sub_1D8D1F93C(a2, a3);

  [a1 stopAndInvalidateKeysWithCompletion_];
  _Block_release(v31);
}

void FairPlayKeyLoader.stopKeyRequest(session:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v46 = a3;
  v6 = sub_1D9177E0C();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 asset];
  v17 = *&v16[OBJC_IVAR___PFFairPlayAsset_avAsset + 24];
  v18 = *&v16[OBJC_IVAR___PFFairPlayAsset_avAsset + 32];
  __swift_project_boxed_opaque_existential_1(&v16[OBJC_IVAR___PFFairPlayAsset_avAsset], v17);
  v19 = (*(v18 + 8))(v17, v18);
  v20 = [v19 URL];
  sub_1D9176B9C();

  LOBYTE(v20) = sub_1D9176A8C();
  (*(v12 + 8))(v15, v11);
  if (v20)
  {
    v21 = v45;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD0F68);
    v23 = v4;
    v24 = sub_1D917741C();
    v25 = sub_1D9178CFC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      v28 = sub_1D8E9A534();
      v30 = sub_1D8CFA924(v28, v29, aBlock);

      *(v26 + 4) = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1DA72CB90](v27, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    if (v21)
    {
      sub_1D8E9440C();
      v31 = swift_allocError();
      *v32 = 6;
      v21();
    }
  }

  else
  {
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v36 = v45;
    v35 = v46;
    v34[2] = v33;
    v34[3] = v36;
    v34[4] = v35;
    v34[5] = a1;
    aBlock[4] = sub_1D8EA00B4;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_38_0;
    v37 = _Block_copy(aBlock);

    sub_1D8D1F93C(v36, v35);
    swift_unknownObjectRetain();
    sub_1D9177E4C();
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v38 = v40;
    v39 = v44;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v10, v38, v37);
    _Block_release(v37);
    (*(v43 + 8))(v38, v39);
    (*(v41 + 8))(v10, v42);
  }
}

void sub_1D8E9DB58(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D8E9D150(a4, a2, a3);
  }

  else if (a2)
  {
    sub_1D8E9440C();
    v9 = swift_allocError();
    *v10 = 1;
    a2();
  }
}

uint64_t sub_1D8E9DCDC(uint64_t a1)
{
  v2 = sub_1D9177E0C();
  v15 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9177E9C();
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8E9F000();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  aBlock[4] = sub_1D8EA0274;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_127;
  v10 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1D9177E4C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  v11 = v13;
  MEMORY[0x1DA72A400](0, v7, v4, v10);
  _Block_release(v10);

  (*(v15 + 8))(v4, v2);
  (*(v5 + 8))(v7, v14);
}

void sub_1D8E9DFD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v31 = a6;
  v32 = a8;
  v13 = sub_1D9177F1C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a4 + OBJC_IVAR___PFFairPlayKeyLoader_internalQueue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1D9177F4C();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    if (a3)
    {
      v20 = [a5 id];
      v21 = sub_1D917820C();
      v23 = v22;

      sub_1D8E9E804(v21, v23);

      if (a7)
      {
        a7(a1);
      }
    }

    else
    {
      v24 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      v28 = v31;
      v27 = v32;
      v26[2] = v25;
      v26[3] = v28;
      v26[4] = a7;
      v26[5] = v27;
      v26[6] = a5;
      aBlock[4] = sub_1D8EA01F0;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8E8A43C;
      aBlock[3] = &block_descriptor_99;
      v29 = _Block_copy(aBlock);
      v30 = v28;
      sub_1D8D1F93C(a7, v27);
      swift_unknownObjectRetain();

      [a5 processKeyWith:v24 completion:v29];
      _Block_release(v29);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D8E9E284(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[1] = a3;
  v10 = sub_1D9177E0C();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D9177E9C();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a6;
    v18[4] = a4;
    v18[5] = a5;
    v18[6] = a1;
    v33 = sub_1D8EA0208;
    v34 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1D8CF5F60;
    v32 = &block_descriptor_111;
    v19 = _Block_copy(&aBlock);
    sub_1D8D1F93C(a4, a5);
    v20 = v17;
    swift_unknownObjectRetain();
    v21 = a1;
    sub_1D9177E4C();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v15, v12, v19);
    _Block_release(v19);
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    v33 = sub_1D8EA0200;
    v34 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1D8CF5F60;
    v32 = &block_descriptor_105;
    v23 = _Block_copy(&aBlock);
    sub_1D8D1F93C(a4, a5);
    sub_1D9177E4C();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v15, v12, v23);
    _Block_release(v23);
  }

  (*(v27 + 8))(v12, v10);
  (*(v13 + 8))(v15, v26);
}

void sub_1D8E9E6E8(void (*a1)(void))
{
  if (a1)
  {
    sub_1D8E9440C();
    v2 = swift_allocError();
    *v3 = 1;
    a1();
  }
}

void sub_1D8E9E760(int a1, id a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = [a2 id];
  v8 = sub_1D917820C();
  v10 = v9;

  sub_1D8E9E804(v8, v10);

  if (a3)
  {
    a3(a5);
  }
}

uint64_t sub_1D8E9E804(uint64_t a1, uint64_t a2)
{
  v17 = sub_1D9177E9C();
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177E0C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8E9F000();
  sub_1D9177DFC();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1D8EA0268;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_120;
  v14 = _Block_copy(aBlock);

  sub_1D9177E4C();
  MEMORY[0x1DA72A400](0, v6, v10, v14);
  _Block_release(v14);

  (*(v4 + 8))(v6, v17);
  (*(v8 + 8))(v10, v7);
}

void sub_1D8E9EA74(id a1, void *a2, void (*a3)(id))
{
  if (!a1)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD0F68);
    v21 = a2;
    v10 = sub_1D917741C();
    v22 = sub_1D9178D1C();

    if (os_log_type_enabled(v10, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      v25 = sub_1D8E9A534();
      v27 = sub_1D8CFA924(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1D8CEC000, v10, v22, "%s Session stopped successfully.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1DA72CB90](v24, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

LABEL_10:

    if (!a3)
    {
      return;
    }

    goto LABEL_11;
  }

  v6 = a1;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1EDCD0F68);
  v8 = a1;
  v9 = a2;
  v10 = sub_1D917741C();
  v11 = sub_1D9178CFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v14 = sub_1D8E9A534();
    v16 = sub_1D8CFA924(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v17 = sub_1D9179D2C();
    v19 = sub_1D8CFA924(v17, v18, &v28);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1D8CEC000, v10, v11, "%s Failed to stop and/or invalidate with error: %s.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v13, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);

    goto LABEL_10;
  }

  if (!a3)
  {
    return;
  }

LABEL_11:
  a3(a1);
}

void sub_1D8E9ED9C(void *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t))
{
  v9 = sub_1D9177F1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(Strong + OBJC_IVAR___PFFairPlayKeyLoader_internalQueue);
    *v12 = v15;
    (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
    v16 = v15;
    LOBYTE(v15) = sub_1D9177F4C();
    (*(v10 + 8))(v12, v9);
    if (v15)
    {
      a5(a1, a2, a3 & 1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D8E9440C();
    v17 = swift_allocError();
    *v18 = 1;
    a5(v17, 0, 1);
  }
}

id FairPlayKeyLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D8E9F000()
{
  v1 = v0;
  v2 = sub_1D9178E0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(v0 + 40);
  if (v8)
  {
    v9 = *(v0 + 40);
  }

  else
  {
    v10 = sub_1D8CFD888();
    v15[1] = "ion/ActiveSessionStore]:";
    v15[2] = v10;
    sub_1D9177E5C();
    v15[3] = MEMORY[0x1E69E7CC0];
    v15[0] = sub_1D8CFBC88(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
    sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
    sub_1D91792CC();
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v2);
    v11 = sub_1D9178E4C();
    v12 = *(v0 + 40);
    *(v1 + 40) = v11;
    v9 = v11;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

uint64_t sub_1D8E9F27C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1EDCD0F68);
    swift_unknownObjectRetain();

    v6 = sub_1D917741C();
    v7 = sub_1D9178CEC();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29[0] = v9;
      *v8 = 136315907;
      v10 = sub_1D8E9F578();
      v12 = sub_1D8CFA924(v10, v11, v29);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = [a2 id];
      v14 = sub_1D917820C();
      v16 = v15;

      v17 = sub_1D8CFA924(v14, v16, v29);

      *(v8 + 14) = v17;
      *(v8 + 22) = 2160;
      *(v8 + 24) = 1752392040;
      *(v8 + 32) = 2081;
      v18 = [a2 asset];
      v19 = FairPlayAsset.description.getter();
      v21 = v20;

      v22 = sub_1D8CFA924(v19, v21, v29);

      *(v8 + 34) = v22;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "%s Adding session with id: %s, asset: %{private,mask.hash}s", v8, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    v23 = [a2 id];
    v24 = sub_1D917820C();
    v26 = v25;

    swift_beginAccess();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_1D8F4F46C(a2, v24, v26, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v28;
    swift_endAccess();
  }

  return result;
}

unint64_t sub_1D8E9F578()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = 0xD000000000000028;
    *(v0 + 24) = 0xD000000000000028;
    *(v0 + 32) = 0x80000001D91CBD80;
  }

  return v1;
}

uint64_t sub_1D8E9F5D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1EDCD0F68);

    v7 = sub_1D917741C();
    v8 = sub_1D9178CEC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136315394;
      v11 = sub_1D8E9F578();
      v13 = sub_1D8CFA924(v11, v12, v14);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1D8CFA924(a2, a3, v14);
      _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Removing session with id: %s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    swift_beginAccess();
    sub_1D8F7EAA4(a2, a3);
    swift_endAccess();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8E9F7E4()
{

  return swift_deallocClassInstance();
}

PodcastsFoundation::FairPlayKeyLoadError_optional __swiftcall FairPlayKeyLoadError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D8E9F850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8EA0154();
  v5 = sub_1D8D32440();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

id sub_1D8E9F8A8(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D9178E0C();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v22[3] = type metadata accessor for FairPlayKeySessionProvider();
  v22[4] = &protocol witness table for FairPlayKeySessionProvider;
  v22[0] = a1;
  v9 = OBJC_IVAR___PFFairPlayKeyLoader_activeSessionStore;
  type metadata accessor for ActiveSessionStore();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = sub_1D8CFD8D4(MEMORY[0x1E69E7CC0]);
  v10[3] = 0;
  v10[4] = 0;
  v10[5] = 0;
  *&a2[v9] = v10;
  v16 = OBJC_IVAR___PFFairPlayKeyLoader_internalQueue;
  v15[1] = sub_1D8CFD888();
  sub_1D9177E5C();
  v21 = v11;
  sub_1D8CFBC88(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v17 + 104))(v6, *MEMORY[0x1E69E8090], v18);
  *&a2[v16] = sub_1D9178E4C();
  v12 = &a2[OBJC_IVAR___PFFairPlayKeyLoader____lazy_storage___logPrefix];
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_1D8CFD9D8(v22, &a2[OBJC_IVAR___PFFairPlayKeyLoader_sessionProvider]);
  v20.receiver = a2;
  v20.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v13;
}

id sub_1D8E9FBAC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1D9178E0C();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v21 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v27[3] = a3;
  v27[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  v13 = OBJC_IVAR___PFFairPlayKeyLoader_activeSessionStore;
  type metadata accessor for ActiveSessionStore();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v14[2] = sub_1D8CFD8D4(MEMORY[0x1E69E7CC0]);
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 0;
  *&a2[v13] = v14;
  v20 = OBJC_IVAR___PFFairPlayKeyLoader_internalQueue;
  sub_1D8CFD888();
  sub_1D9177E5C();
  v26 = v15;
  sub_1D8CFBC88(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v22 + 104))(v21, *MEMORY[0x1E69E8090], v23);
  *&a2[v20] = sub_1D9178E4C();
  v16 = &a2[OBJC_IVAR___PFFairPlayKeyLoader____lazy_storage___logPrefix];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_1D8CFD9D8(v27, &a2[OBJC_IVAR___PFFairPlayKeyLoader_sessionProvider]);
  v25.receiver = a2;
  v25.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v25, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v17;
}

id sub_1D8E9FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return sub_1D8E9FBAC(v9, v11, a3, a4);
}

uint64_t objectdestroy_13Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_20Tm(void (*a1)(void))
{

  if (*(v1 + 24))
  {
  }

  a1(*(v1 + 40));

  return swift_deallocObject();
}

unint64_t sub_1D8EA00C4()
{
  result = qword_1ECAB5628;
  if (!qword_1ECAB5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5628);
  }

  return result;
}

unint64_t sub_1D8EA0154()
{
  result = qword_1ECAB5648;
  if (!qword_1ECAB5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5648);
  }

  return result;
}

uint64_t objectdestroy_91Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t FairPlayKeySessionProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t FairPlayKeySessionProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

void FairPlayKeySessionProvider.session(for:)(void *a1)
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1EDCD0F68);

  v4 = a1;
  v5 = sub_1D917741C();
  v6 = sub_1D9178CEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315651;
    v9 = sub_1D8EA04F4();
    v11 = sub_1D8CFA924(v9, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v12 = FairPlayAsset.description.getter();
    v14 = sub_1D8CFA924(v12, v13, &v17);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "%s Creating a session for asset: %{private,mask.hash}s.", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  sub_1D8EB0130();
  if (!v1)
  {
    v16 = v15;
    type metadata accessor for ICContentFairPlayKeySession(0);
    swift_allocObject();
    sub_1D8EADCD8(v4, v16);
  }
}

unint64_t sub_1D8EA04F4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = 0xD000000000000030;
    *(v0 + 16) = 0xD000000000000030;
    *(v0 + 24) = 0x80000001D91CBEA0;
  }

  return v1;
}

uint64_t FairPlayKeySessionProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id static FairPlayMigrationController.shared.getter()
{
  if (qword_1EDCD2910 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD2918;

  return v1;
}

void sub_1D8EA0680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9177F4C();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_1EDCD0F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_1D917744C();
  __swift_project_value_buffer(v14, qword_1EDCD0F68);
  v15 = sub_1D917741C();
  v16 = sub_1D9178CEC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v31);
    _os_log_impl(&dword_1D8CEC000, v15, v16, "%s Beginning migration from legacy FairPlay to V2.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1DA72CB90](v18, -1, -1);
    MEMORY[0x1DA72CB90](v17, -1, -1);
  }

  v19 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher + 24);
  v20 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher), v19);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = ObjectType;
  v23 = *(v20 + 24);

  v23(sub_1D8EA990C, v22, v19, v20);

  v24 = objc_opt_self();
  v25 = [v24 _applePodcastsFoundationSharedUserDefaults];
  v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v27 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v25 setValue:v26 forKey:v27];

  v28 = [v24 _applePodcastsFoundationSharedUserDefaults];
  v29 = [v28 fairPlayMigrationRetryCount];
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    [v28 setFairPlayMigrationRetryCount_];
  }
}

void sub_1D8EA0A68(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v9 = sub_1D917744C();
  __swift_project_value_buffer(v9, qword_1EDCD0F68);
  v10 = sub_1D917741C();
  v11 = sub_1D9178CEC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v31);
    _os_log_impl(&dword_1D8CEC000, v10, v11, "%s Determining rollback status.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1DA72CB90](v13, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  v14 = objc_opt_self();
  v15 = [v14 _applePodcastsFoundationSharedUserDefaults];
  NSUserDefaults.fairPlayVersion.getter(&v31);

  v16 = v31;
  v17 = [v14 _applePodcastsFoundationSharedUserDefaults];
  v18 = sub_1D8D6D320();
  if (v18 == 2)
  {
    v19 = qword_1ECAB5808;
    v20 = off_1ECAB5810;

    v21 = 1;
    LOBYTE(v19) = sub_1D8D6D934(v19, v20, 1);

    if (v19)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v22 = v18;

    if (v22)
    {
      v21 = 1;
      goto LABEL_15;
    }
  }

  if (v16)
  {

LABEL_14:
    v24 = swift_allocObject();
    v24[2] = a2;
    v24[3] = a3;
    v24[4] = a4;

    sub_1D8EA1178(sub_1D8EA8368, v24);

    return;
  }

  v23 = sub_1D9179ACC();

  v21 = 0;
  if (v23)
  {
    goto LABEL_14;
  }

LABEL_15:
  v25 = sub_1D917741C();
  v26 = sub_1D9178CEC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315650;
    *(v27 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v31);
    *(v27 + 12) = 1026;
    *(v27 + 14) = v21;
    *(v27 + 18) = 2082;
    if (v16)
    {
      v29 = 12918;
    }

    else
    {
      v29 = 12662;
    }

    v30 = sub_1D8CFA924(v29, 0xE200000000000000, &v31);

    *(v27 + 20) = v30;
    _os_log_impl(&dword_1D8CEC000, v25, v26, "%s Rollback unnecessary, isFairPlayV2Enabled: %{BOOL,public}d, fairPlayVersion: %{public}s.", v27, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v28, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  a2();
}

uint64_t FairPlayVersion.rawValue.getter()
{
  if (*v0)
  {
    return 12918;
  }

  else
  {
    return 12662;
  }
}

uint64_t sub_1D8EA0E88(void *a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, const char *a7, const char *a8)
{
  if (a3)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v12 = sub_1D917744C();
    __swift_project_value_buffer(v12, qword_1EDCD0F68);
    sub_1D8EA978C(a1, a2);
    v13 = sub_1D917741C();
    v14 = sub_1D9178D1C();
    sub_1D8EA97A0(a1, a2, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v29);
      *(v15 + 12) = 2080;
      v27 = a1;
      v28 = a2;
      sub_1D8EA9810();
      v17 = sub_1D9179D2C();
      v19 = sub_1D8CFA924(v17, v18, &v29);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1D8CEC000, v13, v14, a8, v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v16, -1, -1);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD0F68);
    v22 = sub_1D917741C();
    v23 = sub_1D9178D1C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v27);
      _os_log_impl(&dword_1D8CEC000, v22, v23, a7, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }
  }

  return a4();
}

uint64_t sub_1D8EA1178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9177F4C();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher + 24);
    v16 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher), v15);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a1;
    v18[4] = a2;
    v18[5] = ObjectType;
    v19 = *(v16 + 16);

    v19(sub_1D8EA839C, v18, v15, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D8EA139C(void *a1, char a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v10 = sub_1D9177E0C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v66 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FairPlayMigrationData(0);
  v75 = *(v15 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v59 - v18);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (a2)
    {
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v22 = sub_1D917744C();
      __swift_project_value_buffer(v22, qword_1EDCD0F68);
      v23 = a1;
      v24 = sub_1D917741C();
      v25 = sub_1D9178CFC();
      sub_1D8D99898(a1, 1);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock[0] = v27;
        *v26 = 136315394;
        *(v26 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
        *(v26 + 12) = 2082;
        swift_getErrorValue();
        v28 = sub_1D9179D2C();
        v30 = a4;
        v31 = sub_1D8CFA924(v28, v29, aBlock);

        *(v26 + 14) = v31;
        a4 = v30;
        _os_log_impl(&dword_1D8CEC000, v24, v25, "%s Unable to migrate, no migration data found with error %{public}s.", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v27, -1, -1);
        MEMORY[0x1DA72CB90](v26, -1, -1);
      }

      a4(a1, 2, 1);
    }

    else
    {
      v59 = v13;
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v60 = v11;
      v32 = sub_1D917744C();
      __swift_project_value_buffer(v32, qword_1EDCD0F68);

      v33 = sub_1D917741C();
      v34 = sub_1D9178CEC();
      v35 = os_log_type_enabled(v33, v34);
      v63 = a5;
      v62 = a4;
      if (v35)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
        *(v36 + 12) = 2048;
        *(v36 + 14) = a1[2];
        sub_1D8D99898(a1, 0);
        _os_log_impl(&dword_1D8CEC000, v33, v34, "%s Fetched migration data for %ld episodes.", v36, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x1DA72CB90](v37, -1, -1);
        MEMORY[0x1DA72CB90](v36, -1, -1);
      }

      else
      {
        sub_1D8D99898(a1, 0);
      }

      v61 = v10;
      v38 = swift_allocObject();
      v39 = MEMORY[0x1E69E7CC0];
      v73 = v38;
      *(v38 + 16) = MEMORY[0x1E69E7CC0];
      v72 = swift_allocObject();
      *(v72 + 16) = v39;
      v40 = dispatch_group_create();
      v41 = a1[2];
      v42 = v21;
      v43 = v64;
      if (v41)
      {
        v44 = *(v75 + 80);
        v45 = a1 + ((v44 + 32) & ~v44);
        v70 = *(v75 + 72);
        v71 = v44;
        v69 = (v44 + 48) & ~v44;
        v68 = (v16 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = v68;
        do
        {
          v75 = v41;
          sub_1D8EA9D44(v45, v19, type metadata accessor for FairPlayMigrationData);
          dispatch_group_enter(v40);
          sub_1D8EA9D44(v19, v43, type metadata accessor for FairPlayMigrationData);
          v47 = swift_allocObject();
          v48 = v73;
          v47[2] = v42;
          v47[3] = v48;
          v47[4] = v40;
          v47[5] = v72;
          sub_1D8EA9CDC(v43, v47 + v69, type metadata accessor for FairPlayMigrationData);
          *(v47 + v46) = v74;

          v49 = v42;
          v50 = v40;
          sub_1D8EA2EA0(v19, sub_1D8EA993C, v47);

          sub_1D8EA9E7C(v19, type metadata accessor for FairPlayMigrationData);
          v45 += v70;
          v41 = v75 - 1;
        }

        while (v75 != 1);
      }

      v75 = *&v42[OBJC_IVAR___PFFairPlayMigrationController_internalQueue];
      v51 = swift_allocObject();
      v52 = v72;
      v51[2] = v73;
      v51[3] = v52;
      v53 = v63;
      v51[4] = v62;
      v51[5] = v53;
      v51[6] = v74;
      aBlock[4] = sub_1D8EA9A28;
      aBlock[5] = v51;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8CF5F60;
      aBlock[3] = &block_descriptor_115;
      v54 = v42;
      v55 = _Block_copy(aBlock);

      v56 = v65;
      sub_1D9177E4C();
      v76 = MEMORY[0x1E69E7CC0];
      sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
      v57 = v67;
      v58 = v61;
      sub_1D91792CC();
      sub_1D9178D7C();
      _Block_release(v55);

      (*(v60 + 8))(v57, v58);
      (*(v66 + 8))(v56, v59);
    }
  }

  else
  {
    a4(0, 3, 1);
  }
}

void sub_1D8EA1C7C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v46 = a3;
  v47 = a7;
  v49 = a5;
  v50 = a6;
  v51 = a4;
  v48 = a2;
  v8 = type metadata accessor for FairPlayMigrationData(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for FairPlayMigrationData.ValidatedData(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v46 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5688, &qword_1D91904B8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  sub_1D8D088B4(a1, &v46 - v19, &qword_1ECAB5688, &qword_1D91904B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v49;
    v22 = *v20;
    v23 = v20[8];
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917744C();
    __swift_project_value_buffer(v24, qword_1EDCD0F68);
    sub_1D8EA9D44(v50, v10, type metadata accessor for FairPlayMigrationData);
    sub_1D8EA978C(v22, v23);
    v25 = sub_1D917741C();
    v26 = sub_1D9178CFC();
    sub_1D8EA97FC(v22, v23);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52[0] = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v52);
      *(v27 + 12) = 2048;
      v29 = *v10;
      sub_1D8EA9E7C(v10, type metadata accessor for FairPlayMigrationData);
      *(v27 + 14) = v29;
      *(v27 + 22) = 2080;
      v52[1] = v22;
      v53 = v23;
      sub_1D8EA9810();
      v30 = sub_1D9179D2C();
      v32 = sub_1D8CFA924(v30, v31, v52);

      *(v27 + 24) = v32;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "%s Failed to migrate %lld with error %s.", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    else
    {
      sub_1D8EA9E7C(v10, type metadata accessor for FairPlayMigrationData);
    }

    v39 = *v50;
    v40 = v21;
    swift_beginAccess();
    v41 = *(v21 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 16) = v41;
    v43 = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_1D8ECC9FC(0, *(v41 + 2) + 1, 1, v41);
      *(v21 + 16) = v41;
    }

    v45 = *(v41 + 2);
    v44 = *(v41 + 3);
    if (v45 >= v44 >> 1)
    {
      v41 = sub_1D8ECC9FC((v44 > 1), v45 + 1, 1, v41);
    }

    *(v41 + 2) = v45 + 1;
    *&v41[8 * v45 + 32] = v39;
    *(v40 + 16) = v41;
    dispatch_group_leave(v43);
    sub_1D8EA97FC(v22, v23);
  }

  else
  {
    sub_1D8EA9CDC(v20, v17, type metadata accessor for FairPlayMigrationData.ValidatedData);
    sub_1D8EA9D44(v17, v14, type metadata accessor for FairPlayMigrationData.ValidatedData);
    v33 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v34 = (v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v36[2] = v46;
    sub_1D8EA9CDC(v14, v36 + v33, type metadata accessor for FairPlayMigrationData.ValidatedData);
    v37 = v51;
    *(v36 + v34) = v51;
    *(v36 + v35) = v49;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v47;

    v38 = v37;

    sub_1D8EA2580(v17, sub_1D8EA9DAC, v36);

    sub_1D8EA9E7C(v17, type metadata accessor for FairPlayMigrationData.ValidatedData);
  }
}

void sub_1D8EA21C0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, NSObject *a5, uint64_t a6)
{
  v10 = a2;
  v12 = type metadata accessor for FairPlayMigrationData.ValidatedData(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((v10 & 0x100) != 0)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD0F68);
    sub_1D8EA9D44(a4, v14, type metadata accessor for FairPlayMigrationData.ValidatedData);
    sub_1D8EA978C(a1, v10);
    v21 = sub_1D917741C();
    v22 = sub_1D9178CFC();
    sub_1D8EA9EDC(a1, v10, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = a5;
      v24 = v23;
      v25 = swift_slowAlloc();
      v38[0] = v25;
      *v24 = 136315650;
      *(v24 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v38);
      *(v24 + 12) = 2048;
      v26 = *v14;
      sub_1D8EA9E7C(v14, type metadata accessor for FairPlayMigrationData.ValidatedData);
      *(v24 + 14) = v26;
      *(v24 + 22) = 2080;
      v38[1] = a1;
      v39 = v10;
      sub_1D8EA9810();
      v27 = sub_1D9179D2C();
      v29 = sub_1D8CFA924(v27, v28, v38);

      *(v24 + 24) = v29;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "%s Failed to migrate %lld with error %s.", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v25, -1, -1);
      v30 = v24;
      a5 = v37;
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }

    else
    {
      sub_1D8EA9E7C(v14, type metadata accessor for FairPlayMigrationData.ValidatedData);
    }

    v31 = *a4;
    swift_beginAccess();
    v32 = *(a6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a6 + 16) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_1D8ECC9FC(0, *(v32 + 2) + 1, 1, v32);
      *(a6 + 16) = v32;
    }

    v35 = *(v32 + 2);
    v34 = *(v32 + 3);
    if (v35 >= v34 >> 1)
    {
      v32 = sub_1D8ECC9FC((v34 > 1), v35 + 1, 1, v32);
    }

    *(v32 + 2) = v35 + 1;
    *&v32[8 * v35 + 32] = v31;
    *(a6 + 16) = v32;
  }

  else
  {
    v15 = *a4;
    swift_beginAccess();
    v16 = *(a3 + 16);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v16;
    if ((v17 & 1) == 0)
    {
      v16 = sub_1D8ECC9FC(0, *(v16 + 2) + 1, 1, v16);
      *(a3 + 16) = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1D8ECC9FC((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    *&v16[8 * v19 + 32] = v15;
    *(a3 + 16) = v16;
  }

  dispatch_group_leave(a5);
}

void sub_1D8EA2580(uint64_t *a1, void (*a2)(id, uint64_t), id a3)
{
  v75[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v63[-v8];
  v9 = sub_1D9176C2C();
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63[-v15];
  v17 = sub_1D9176E3C();
  v18 = *(v17 - 8);
  v70 = v17;
  v71 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v63[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1D9177F1C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v63[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = v3;
  v25 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x1E69E8020], v20, v22);
  v26 = v25;
  LOBYTE(v25) = sub_1D9177F4C();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v72 = a2;
  v73 = a3;
  type metadata accessor for FairPlayMigrationData.ValidatedData(0);
  sub_1D9176BBC();
  v27 = objc_allocWithZone(MEMORY[0x1E69E4430]);
  v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  a3 = [v27 initWithPath_];

  v29 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v75[0] = 0;
  a2 = [a3 loadKeyForIdentifier:v29 error:v75];

  if (!a2)
  {
    v38 = v75[0];
    v39 = sub_1D9176A6C();

    swift_willThrow();
    sub_1D8EA4CB8(a1, a3, v72, v73);

    return;
  }

  v30 = v75[0];
  v31 = [a2 keyData];
  if (!v31)
  {
    v33 = 0;
    v36 = a1[2];
    v37 = a1[3];
    v35 = 0xF000000000000000;
LABEL_10:
    if (v37 >> 60 == 15)
    {
      sub_1D8D752C4(v36, v37);
      sub_1D8D75668(v33, v35);
      goto LABEL_12;
    }

LABEL_13:
    sub_1D8D752C4(v36, v37);
    sub_1D8D75668(v33, v35);
    sub_1D8D75668(v36, v37);
    goto LABEL_14;
  }

  v32 = v31;
  v33 = sub_1D9176C8C();
  v35 = v34;

  v36 = a1[2];
  v37 = a1[3];
  if (v35 >> 60 == 15)
  {
    goto LABEL_10;
  }

  if (v37 >> 60 == 15)
  {
    goto LABEL_13;
  }

  sub_1D8D752C4(a1[2], a1[3]);
  sub_1D8D752C4(v36, v37);
  sub_1D8DA04B0(v33, v35);
  v64 = sub_1D8FCC138(v33, v35, v36, v37);
  sub_1D8D75668(v36, v37);
  sub_1D8D7567C(v36, v37);
  sub_1D8D75668(v33, v35);
  sub_1D8D75668(v33, v35);
  if (v64)
  {
LABEL_12:
    sub_1D8EA4758(*a1);
    v72(0, 0);

    return;
  }

LABEL_14:
  v40 = [a2 renewalDate];
  if (v40)
  {
    v41 = v40;
    sub_1D9176DFC();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v44 = v70;
  v43 = v71;
  (*(v71 + 56))(v13, v42, 1, v70);
  sub_1D8E964A4(v13, v16);
  if ((*(v43 + 48))(v16, 1, v44) == 1)
  {

    sub_1D8D08A50(v16, &qword_1ECAB75C0, &unk_1D9188A50);
    return;
  }

  (*(v43 + 32))(v69, v16, v44);
  if ((sub_1D9176D9C() & 1) == 0)
  {
    v13 = &off_1E856D000;
    v45 = [a3 filePath];
    sub_1D917820C();

    v46 = v66;
    sub_1D9176BFC();

    v48 = v67;
    v47 = v68;
    if ((*(v67 + 48))(v46, 1, v68) != 1)
    {
      v60 = v65;
      (*(v48 + 32))(v65, v46, v47);
      v61 = *(v74 + OBJC_IVAR___PFFairPlayMigrationController_invalidationManager);
      v62 = sub_1D9176B1C();
      [v61 markKeyForInvalidationAt:v62 shouldRemove:1];

      (*(v48 + 8))(v60, v47);
LABEL_27:
      sub_1D8EA4CB8(a1, a3, v72, v73);
      v43 = v71;
      goto LABEL_28;
    }

    sub_1D8D08A50(v46, &unk_1ECAB5910, &qword_1D9188C90);
    if (qword_1EDCD0F60 == -1)
    {
LABEL_23:
      v49 = sub_1D917744C();
      __swift_project_value_buffer(v49, qword_1EDCD0F68);
      v50 = a3;
      v51 = sub_1D917741C();
      v52 = sub_1D9178CFC();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v75[0] = v54;
        *v53 = 136315651;
        *(v53 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v75);
        *(v53 + 12) = 2160;
        *(v53 + 14) = 1752392040;
        *(v53 + 22) = 2081;
        v55 = [v50 v13[315]];
        v56 = sub_1D917820C();
        v58 = v57;

        v59 = sub_1D8CFA924(v56, v58, v75);

        *(v53 + 24) = v59;
        _os_log_impl(&dword_1D8CEC000, v51, v52, "%s Unable to invalidate key, invalid key store path %{private,mask.hash}s.", v53, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v54, -1, -1);
        MEMORY[0x1DA72CB90](v53, -1, -1);
      }

      v44 = v70;
      goto LABEL_27;
    }

LABEL_30:
    swift_once();
    goto LABEL_23;
  }

  sub_1D8EA49BC(*a1, v72, v73);
LABEL_28:

  (*(v43 + 8))(v69, v44);
}

uint64_t sub_1D8EA2EA0(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v211 = a3;
  v212 = a2;
  v213 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v183 = v175 - v5;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5688, &qword_1D91904B8);
  MEMORY[0x1EEE9AC00](v209);
  v210 = (v175 - v6);
  v201 = type metadata accessor for FairPlayMigrationData(0);
  v190 = *(v201 - 8);
  v7 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v208 = v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v207 = v175 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v200 = v175 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v196 = v175 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v191 = (v175 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v197 = (v175 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v198 = v175 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v199 = v175 - v21;
  v22 = sub_1D9176E3C();
  v204 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v193 = v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v195 = v175 - v25;
  v188 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v202 = v175 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v175 - v30;
  v32 = sub_1D9176C2C();
  v205 = *(v32 - 8);
  v206 = v32;
  v33 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v192 = v175 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v194 = v175 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v175 - v37;
  v39 = sub_1D9177F1C();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = (v175 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = v3;
  v44 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v43 = v44;
  v45 = *(v40 + 104);
  v186 = *MEMORY[0x1E69E8020];
  v187 = v40 + 104;
  v185 = v45;
  v45(v43, v41);
  v184 = v44;
  v46 = sub_1D9177F4C();
  v47 = *(v40 + 8);
  v189 = v39;
  v47(v43, v39);
  if ((v46 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v46 = v213;
  if (!v213[4])
  {
LABEL_13:
    if (qword_1EDCD0F60 == -1)
    {
LABEL_14:
      v65 = sub_1D917744C();
      __swift_project_value_buffer(v65, qword_1EDCD0F68);
      v66 = v207;
      sub_1D8EA9D44(v46, v207, type metadata accessor for FairPlayMigrationData);
      v67 = v46;
      v68 = v208;
      sub_1D8EA9D44(v67, v208, type metadata accessor for FairPlayMigrationData);
      v69 = sub_1D917741C();
      v70 = sub_1D9178CFC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v214 = v72;
        *v71 = 136315907;
        *(v71 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v214);
        *(v71 + 12) = 2160;
        *(v71 + 14) = 1752392040;
        *(v71 + 22) = 2049;
        v73 = *v66;
        sub_1D8EA9E7C(v66, type metadata accessor for FairPlayMigrationData);
        *(v71 + 24) = v73;
        *(v71 + 32) = 2082;
        if (*(v68 + 32))
        {
          v74 = *(v68 + 24);
          v75 = *(v68 + 32);
        }

        else
        {
          v75 = 0xE300000000000000;
          v74 = 7104878;
        }

        sub_1D8EA9E7C(v68, type metadata accessor for FairPlayMigrationData);
        v76 = sub_1D8CFA924(v74, v75, &v214);

        *(v71 + 34) = v76;
        _os_log_impl(&dword_1D8CEC000, v69, v70, "%s Unable to migrate %{private,mask.hash}lld, no or invalid asset url (%{public}s) found.", v71, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v72, -1, -1);
        MEMORY[0x1DA72CB90](v71, -1, -1);
      }

      else
      {
        sub_1D8EA9E7C(v66, type metadata accessor for FairPlayMigrationData);

        sub_1D8EA9E7C(v68, type metadata accessor for FairPlayMigrationData);
      }

      v77 = v210;
      *v210 = 4;
      *(v77 + 8) = 3;
      swift_storeEnumTagMultiPayload();
      v212(v77);
      return sub_1D8D08A50(v77, &qword_1ECAB5688, &qword_1D91904B8);
    }

LABEL_43:
    swift_once();
    goto LABEL_14;
  }

  v181 = v22;
  v203 = v38;
  sub_1D9176BFC();
  v48 = v205;
  v49 = v206;
  if ((*(v205 + 48))(v31, 1, v206) == 1)
  {
    sub_1D8D08A50(v31, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_12:
    v46 = v213;
    goto LABEL_13;
  }

  v180 = v47;
  v50 = v48 + 32;
  v51 = *(v48 + 32);
  v52 = v203;
  v51(v203, v31, v49);
  if ((sub_1D9176A8C() & 1) == 0)
  {
    (*(v48 + 8))(v52, v49);
    goto LABEL_12;
  }

  v53 = v213;
  v54 = v213[2];
  if (v54 >> 60 == 15)
  {
    v55 = v205;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v56 = sub_1D917744C();
    __swift_project_value_buffer(v56, qword_1EDCD0F68);
    v57 = v200;
    sub_1D8EA9D44(v53, v200, type metadata accessor for FairPlayMigrationData);
    v58 = sub_1D917741C();
    v59 = sub_1D9178CFC();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v206;
    if (v60)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v214 = v63;
      *v62 = 136315651;
      *(v62 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v214);
      *(v62 + 12) = 2160;
      *(v62 + 14) = 1752392040;
      *(v62 + 22) = 2049;
      v64 = *v57;
      sub_1D8EA9E7C(v57, type metadata accessor for FairPlayMigrationData);
      *(v62 + 24) = v64;
      _os_log_impl(&dword_1D8CEC000, v58, v59, "%s Unable to migrate %{private,mask.hash}lld, no legacy key found.", v62, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x1DA72CB90](v63, -1, -1);
      MEMORY[0x1DA72CB90](v62, -1, -1);
    }

    else
    {
      sub_1D8EA9E7C(v57, type metadata accessor for FairPlayMigrationData);
    }

    v97 = v210;
    *v210 = 6;
    *(v97 + 8) = 3;
    swift_storeEnumTagMultiPayload();
    v212(v97);
    sub_1D8D08A50(v97, &qword_1ECAB5688, &qword_1D91904B8);
    return (*(v55 + 8))(v203, v61);
  }

  else
  {
    v207 = v51;
    v208 = v50;
    v79 = v213[1];
    v80 = v199;
    sub_1D8D088B4(v213 + *(v201 + 28), v199, &qword_1ECAB75C0, &unk_1D9188A50);
    v81 = v204;
    v82 = v181;
    if ((*(v204 + 48))(v80, 1, v181) == 1)
    {
      v83 = v54;
      sub_1D8D752C4(v79, v54);
      sub_1D8D08A50(v80, &qword_1ECAB75C0, &unk_1D9188A50);
      v84 = v79;
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v85 = sub_1D917744C();
      __swift_project_value_buffer(v85, qword_1EDCD0F68);
      v86 = v196;
      sub_1D8EA9D44(v213, v196, type metadata accessor for FairPlayMigrationData);
      v87 = sub_1D917741C();
      v88 = sub_1D9178CFC();
      v89 = os_log_type_enabled(v87, v88);
      v91 = v205;
      v90 = v206;
      v92 = v203;
      if (v89)
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v214 = v94;
        *v93 = 136315651;
        *(v93 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v214);
        *(v93 + 12) = 2160;
        *(v93 + 14) = 1752392040;
        *(v93 + 22) = 2049;
        v95 = v86;
        v96 = *v86;
        sub_1D8EA9E7C(v95, type metadata accessor for FairPlayMigrationData);
        *(v93 + 24) = v96;
        _os_log_impl(&dword_1D8CEC000, v87, v88, "%s Unable to migrate %{private,mask.hash}lld, no legacy key expiration data found.", v93, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v94);
        MEMORY[0x1DA72CB90](v94, -1, -1);
        MEMORY[0x1DA72CB90](v93, -1, -1);
      }

      else
      {
        sub_1D8EA9E7C(v86, type metadata accessor for FairPlayMigrationData);
      }

      v156 = v210;
      *v210 = 7;
      *(v156 + 8) = 3;
      swift_storeEnumTagMultiPayload();
      v212(v156);
      sub_1D8D75668(v84, v83);
      sub_1D8D08A50(v156, &qword_1ECAB5688, &qword_1D91904B8);
      return (*(v91 + 8))(v92, v90);
    }

    else
    {
      v179 = *(v81 + 32);
      v178 = v81 + 32;
      v179(v202, v80, v82);
      v98 = objc_opt_self();
      v199 = v79;
      v200 = v54;
      sub_1D8D752C4(v79, v54);
      v99 = [v98 ams_sharedAccountStore];
      v100 = [v99 ams_activeiTunesAccount];

      if (v100 && (v101 = [v100 ams_DSID], v100, (v196 = v101) != 0))
      {
        v191 = type metadata accessor for FairPlayMigrationData;
        sub_1D8EA9D44(v213, v198, type metadata accessor for FairPlayMigrationData);
        v103 = v205 + 16;
        v102 = *(v205 + 16);
        v104 = v194;
        v102(v194, v203, v206);
        v106 = v204 + 16;
        v105 = *(v204 + 16);
        v107 = v195;
        v105(v195, v202, v181);
        sub_1D8EA9D44(v198, v197, v191);
        v108 = v104;
        v109 = v206;
        v176 = v102;
        v102(v192, v108, v206);
        v110 = v107;
        v111 = v181;
        v175[0] = v105;
        v105(v193, v110, v181);
        v112 = (*(v190 + 80) + 32) & ~*(v190 + 80);
        v190 = (v7 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
        v113 = (v190 + 15) & 0xFFFFFFFFFFFFFFF8;
        v177 = v103;
        v114 = (*(v103 + 64) + v113 + 16) & ~*(v103 + 64);
        v175[1] = v106;
        v115 = (v33 + *(v106 + 64) + v114) & ~*(v106 + 64);
        v116 = swift_allocObject();
        v117 = v211;
        *(v116 + 16) = v212;
        *(v116 + 24) = v117;
        sub_1D8EA9CDC(v198, v116 + v112, v191);
        *(v116 + v190) = v196;
        v118 = (v116 + v113);
        v119 = v199;
        v120 = v200;
        *v118 = v199;
        v118[1] = v120;
        v121 = v116 + v114;
        v122 = v119;
        (v207)(v121, v194, v109);
        v208 = v116;
        v179((v116 + v115), v195, v111);
        v123 = v184;
        *v43 = v184;
        v124 = v189;
        v185(v43, v186, v189);
        v125 = v123;
        sub_1D8DA04B0(v122, v120);

        v126 = v196;
        LOBYTE(v120) = sub_1D9177F4C();
        result = v180(v43, v124);
        if (v120)
        {
          v207 = v126;
          v127 = (v213 + *(v201 + 32));
          v128 = *v127;
          v129 = v127[1];
          if (v129)
          {
            v130 = *v197;
            v131 = type metadata accessor for FairPlayMigrationData.ValidatedData(0);
            v132 = v210;
            v133 = v192;
            v134 = v206;
            v176(v210 + v131[7], v192, v206);
            v135 = v193;
            v136 = v181;
            (v175[0])(v132 + v131[8], v193, v181);
            v137 = v128;
            v138 = v207;
            *v132 = v130;
            v132[1] = v138;
            v139 = v200;
            v132[2] = v122;
            v132[3] = v139;
            v140 = (v132 + v131[9]);
            *v140 = v137;
            v140[1] = v129;
            swift_storeEnumTagMultiPayload();
            sub_1D8DA04B0(v122, v139);
            v141 = v138;

            v212(v132);

            sub_1D8D75668(v122, v139);

            sub_1D8D08A50(v132, &qword_1ECAB5688, &qword_1D91904B8);
            v142 = *(v204 + 8);
            v142(v135, v136);
            v143 = *(v205 + 8);
            v143(v133, v134);
            sub_1D8EA9E7C(v197, type metadata accessor for FairPlayMigrationData);
            v142(v202, v136);
            return (v143)(v203, v134);
          }

          else
          {
            v159 = objc_allocWithZone(MEMORY[0x1E6988168]);
            v160 = sub_1D9176B1C();
            v161 = [v159 initWithURL:v160 options:0];

            v162 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v163 = swift_allocObject();
            v163[2] = v162;
            v163[3] = sub_1D8EA9A5C;
            v163[4] = v208;

            v164 = v183;
            sub_1D917880C();
            v165 = sub_1D917886C();
            (*(*(v165 - 8) + 56))(v164, 0, 1, v165);
            v166 = swift_allocObject();
            v167 = v205;
            v168 = v166;
            v166[2] = 0;
            v166[3] = 0;
            v166[4] = v125;
            v166[5] = sub_1D8EA9BDC;
            v166[6] = v163;
            v166[7] = v161;
            v169 = v125;

            v170 = v161;
            sub_1D8E91268(v128, 0, v164, &unk_1D91904C8, v168);

            sub_1D8D75668(v122, v200);

            v171 = *(v204 + 8);
            v172 = v181;
            v171(v193, v181);
            v173 = *(v167 + 8);
            v174 = v206;
            v173(v192, v206);
            sub_1D8EA9E7C(v197, type metadata accessor for FairPlayMigrationData);
            v171(v202, v172);
            v173(v203, v174);
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v144 = v205;
        if (qword_1EDCD0F60 != -1)
        {
          swift_once();
        }

        v145 = sub_1D917744C();
        __swift_project_value_buffer(v145, qword_1EDCD0F68);
        v146 = v191;
        sub_1D8EA9D44(v213, v191, type metadata accessor for FairPlayMigrationData);
        v147 = sub_1D917741C();
        v148 = sub_1D9178CFC();
        v149 = os_log_type_enabled(v147, v148);
        v150 = v206;
        v151 = v181;
        v152 = v199;
        if (v149)
        {
          v153 = swift_slowAlloc();
          v154 = swift_slowAlloc();
          v214 = v154;
          *v153 = 136315651;
          *(v153 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v214);
          *(v153 + 12) = 2160;
          *(v153 + 14) = 1752392040;
          *(v153 + 22) = 2049;
          v155 = *v146;
          sub_1D8EA9E7C(v146, type metadata accessor for FairPlayMigrationData);
          *(v153 + 24) = v155;
          _os_log_impl(&dword_1D8CEC000, v147, v148, "%s Unable to migrate %{private,mask.hash}lld, no DSID found.", v153, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v154);
          MEMORY[0x1DA72CB90](v154, -1, -1);
          MEMORY[0x1DA72CB90](v153, -1, -1);
        }

        else
        {
          sub_1D8EA9E7C(v146, type metadata accessor for FairPlayMigrationData);
        }

        v157 = v203;
        v158 = v210;
        *v210 = 1;
        *(v158 + 8) = 3;
        swift_storeEnumTagMultiPayload();
        v212(v158);
        sub_1D8D75668(v152, v200);
        sub_1D8D08A50(v158, &qword_1ECAB5688, &qword_1D91904B8);
        (*(v204 + 8))(v202, v151);
        return (*(v144 + 8))(v157, v150);
      }
    }
  }

  return result;
}

uint64_t sub_1D8EA454C(void *a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5688, &qword_1D91904B8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  if (a3)
  {
    *v20 = a1;
    v20[8] = a2;
    swift_storeEnumTagMultiPayload();
    sub_1D8EA978C(a1, a2);
  }

  else
  {
    v37 = a7;
    v35 = a11;
    v36 = a9;
    v34 = *a6;
    v21 = type metadata accessor for FairPlayMigrationData.ValidatedData(0);
    v22 = a8;
    v23 = a4;
    v24 = v21[7];
    v25 = sub_1D9176C2C();
    (*(*(v25 - 8) + 16))(&v20[v24], a10, v25);
    v26 = v21[8];
    v27 = sub_1D9176E3C();
    v28 = &v20[v26];
    a4 = v23;
    (*(*(v27 - 8) + 16))(v28, v35, v27);
    v29 = v36;
    v30 = v37;
    *v20 = v34;
    *(v20 + 1) = v30;
    *(v20 + 2) = v22;
    *(v20 + 3) = v29;
    v31 = &v20[v21[9]];
    *v31 = a1;
    *(v31 + 1) = a2;
    swift_storeEnumTagMultiPayload();
    sub_1D8EA9CCC(a1, a2, 0);
    v32 = v30;
    sub_1D8D752C4(v22, v29);
  }

  a4(v20);
  return sub_1D8D08A50(v20, &qword_1ECAB5688, &qword_1D91904B8);
}

id sub_1D8EA4758(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9177F1C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1D9177F4C();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_1EDCD0F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_1D917744C();
  __swift_project_value_buffer(v11, qword_1EDCD0F68);
  v12 = sub_1D917741C();
  v13 = sub_1D9178CEC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315651;
    *(v14 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v18);
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2049;
    *(v14 + 24) = a1;
    _os_log_impl(&dword_1D8CEC000, v12, v13, "%s Removing legacy key for %{private,mask.hash}lld", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1DA72CB90](v15, -1, -1);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  return [*(v2 + OBJC_IVAR___PFFairPlayMigrationController_secureKeyRequestStorage) removeKeyDataForStoreTrackID_];
}

uint64_t sub_1D8EA49BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1D9177F1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1D9177F4C();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (qword_1EDCD0F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1EDCD0F68);
  v17 = sub_1D917741C();
  v18 = sub_1D9178CEC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315651;
    *(v19 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v25);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2049;
    *(v19 + 24) = a1;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "%s Invalidating legacy key for %{private,mask.hash}lld", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1DA72CB90](v20, -1, -1);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = ObjectType;

  sub_1D8F15FFC(a1, sub_1D8EA9738, v22);
}

void sub_1D8EA4CB8(uint64_t *a1, void *a2, void (*a3)(id, uint64_t), id a4)
{
  v54 = a2;
  v8 = type metadata accessor for FairPlayMigrationData.ValidatedData(0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v50 = (&v47 - v11);
  v55 = sub_1D9176E3C();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9177F1C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v4;
  v19 = *(v4 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  v21 = sub_1D9177F4C();
  (*(v15 + 8))(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v51 = a4;
  v52 = a3;
  v22 = *a1;
  v23 = *a1 & ~(*a1 >> 63);
  sub_1D9176CEC();
  v24 = a1[1];
  v25 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v28 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  a4 = [v54 saveKey:v25 forIdentifier:v26 adamID:v27 withRenewalDate:v28 accountDSID:v24 keyServerProtocolType:2];

  (*(v53 + 8))(v13, v55);
  if (a4)
  {
    v29 = qword_1EDCD0F60;
    v21 = a4;
    if (v29 == -1)
    {
LABEL_4:
      v30 = sub_1D917744C();
      __swift_project_value_buffer(v30, qword_1EDCD0F68);
      v31 = v50;
      sub_1D8EA9D44(a1, v50, type metadata accessor for FairPlayMigrationData.ValidatedData);
      v32 = sub_1D917741C();
      v33 = sub_1D9178CFC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v56[0] = v35;
        *v34 = 136315651;
        *(v34 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v56);
        *(v34 + 12) = 2160;
        *(v34 + 14) = 1752392040;
        *(v34 + 22) = 2049;
        v36 = *v31;
        sub_1D8EA9E7C(v31, type metadata accessor for FairPlayMigrationData.ValidatedData);
        *(v34 + 24) = v36;
        _os_log_impl(&dword_1D8CEC000, v32, v33, "%s Unable to migrate %{private,mask.hash}lld, unable to save with error.", v34, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x1DA72CB90](v35, -1, -1);
        MEMORY[0x1DA72CB90](v34, -1, -1);
      }

      else
      {
        sub_1D8EA9E7C(v31, type metadata accessor for FairPlayMigrationData.ValidatedData);
      }

      v46 = v21;
      v52(a4, 257);

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  sub_1D8EA4758(v22);
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v37 = sub_1D917744C();
  __swift_project_value_buffer(v37, qword_1EDCD0F68);
  v38 = v49;
  sub_1D8EA9D44(a1, v49, type metadata accessor for FairPlayMigrationData.ValidatedData);
  v39 = sub_1D917741C();
  v40 = sub_1D9178CEC();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v52;
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v56[0] = v44;
    *v43 = 136315651;
    *(v43 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v56);
    *(v43 + 12) = 2160;
    *(v43 + 14) = 1752392040;
    *(v43 + 22) = 2049;
    v45 = *v38;
    sub_1D8EA9E7C(v38, type metadata accessor for FairPlayMigrationData.ValidatedData);
    *(v43 + 24) = v45;
    _os_log_impl(&dword_1D8CEC000, v39, v40, "%s Finished migrating %{private,mask.hash}lld.", v43, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1DA72CB90](v44, -1, -1);
    MEMORY[0x1DA72CB90](v43, -1, -1);
  }

  else
  {
    sub_1D8EA9E7C(v38, type metadata accessor for FairPlayMigrationData.ValidatedData);
  }

  v42(0, 0);
}

uint64_t sub_1D8EA5328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  v7 = sub_1D9177E0C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a3(0, 259);
  }

  v16 = Strong;
  v27 = v12;
  v28 = v11;
  v29 = v8;
  if (*(a1 + 16))
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v17 = sub_1D917744C();
    __swift_project_value_buffer(v17, qword_1EDCD0F68);
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = a3;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
      _os_log_impl(&dword_1D8CEC000, v18, v19, "%s Unable to invalidate and remove legacy FairPlay key.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1DA72CB90](v22, -1, -1);
      v23 = v21;
      a3 = v20;
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  aBlock[4] = sub_1D8EA9744;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_66_0;
  v25 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v10, v25);
  _Block_release(v25);
  (*(v29 + 8))(v10, v7);
  (*(v27 + 8))(v14, v28);
}

void sub_1D8EA5758(void *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t))
{
  v9 = sub_1D9177F1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(Strong + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
    *v12 = v15;
    (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
    v16 = v15;
    LOBYTE(v15) = sub_1D9177F4C();
    (*(v10 + 8))(v12, v9);
    if (v15)
    {
      v17 = a3 & 1;
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = a2;
      }

      sub_1D8E93674(a1, a2, v17);
      a5(a1, v18, v17);

      sub_1D8E93630(a1, a2, v17);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a5(0, 3, 1);
  }
}

void sub_1D8EA590C(unint64_t a1, char a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v80 = a1;
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a4(0, 3, 1);
    return;
  }

  if ((a2 & 1) == 0)
  {
    v66 = v16;
    v67 = v14;
    v68 = v12;
    v69 = v13;
    v72 = a4;
    v76 = dispatch_group_create();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E7CC0];
    v78 = v27;
    *(v27 + 16) = MEMORY[0x1E69E7CC0];
    v29 = swift_allocObject();
    v77 = v29;
    *(v29 + 16) = v28;
    v65 = (v29 + 16);
    v30 = v80;
    v31 = v80 & 0xFFFFFFFFFFFFFF8;
    v73 = a5;
    v71 = v9;
    v70 = v10;
    if (v80 >> 62)
    {
      v32 = sub_1D917935C();
      if (v32)
      {
LABEL_10:
        v33 = 0;
        v75 = v30 & 0xC000000000000001;
        v34 = v78;
        while (1)
        {
          if (v75)
          {
            v35 = MEMORY[0x1DA72AA90](v33, v30);
          }

          else
          {
            if (v33 >= *(v31 + 16))
            {
              goto LABEL_32;
            }

            v35 = *(v30 + 8 * v33 + 32);
          }

          v36 = v35;
          a4 = (v33 + 1);
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (!*&v35[OBJC_IVAR___PFFairPlayAsset_keyStore])
          {
            break;
          }

          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
          if (!v37)
          {
            break;
          }

          v38 = v37;
          swift_unknownObjectRetain();
          v39 = v76;
          dispatch_group_enter(v76);

          v40 = v36;
          v41 = v31;
          v42 = v77;

          v43 = v39;
          sub_1D8EA83C0(v38, Strong, v34, v40, v42, v43);
          swift_unknownObjectRelease();

          v30 = v80;
          v31 = v41;

          ++v33;
          if (a4 == v32)
          {
            goto LABEL_30;
          }
        }

        if (qword_1EDCD0F60 != -1)
        {
          swift_once();
        }

        v44 = sub_1D917744C();
        __swift_project_value_buffer(v44, qword_1EDCD0F68);
        v45 = v36;
        v46 = sub_1D917741C();
        v47 = sub_1D9178CFC();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          aBlock[0] = v49;
          *v48 = 136315651;
          *(v48 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
          *(v48 + 12) = 2160;
          *(v48 + 14) = 1752392040;
          *(v48 + 22) = 2049;
          *(v48 + 24) = *&v45[OBJC_IVAR___PFFairPlayAsset_adamID];

          _os_log_impl(&dword_1D8CEC000, v46, v47, "%s Unable to migrate %{private,mask.hash}lld, no key store found.", v48, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          MEMORY[0x1DA72CB90](v49, -1, -1);
          MEMORY[0x1DA72CB90](v48, -1, -1);
        }

        else
        {
        }

        v50 = v65;
        v51 = *&v45[OBJC_IVAR___PFFairPlayAsset_adamID];
        swift_beginAccess();
        v52 = *v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v50 = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = sub_1D8ECC9FC(0, *(v52 + 2) + 1, 1, v52);
          *v50 = v52;
        }

        v55 = *(v52 + 2);
        v54 = *(v52 + 3);
        if (v55 >= v54 >> 1)
        {
          v52 = sub_1D8ECC9FC((v54 > 1), v55 + 1, 1, v52);
        }

        *(v52 + 2) = v55 + 1;
        *&v52[8 * v55 + 32] = v51;
        *v50 = v52;
      }
    }

    else
    {
      v32 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_10;
      }
    }

LABEL_30:
    v56 = Strong;
    v80 = *&Strong[OBJC_IVAR___PFFairPlayMigrationController_internalQueue];
    v57 = swift_allocObject();
    v58 = v77;
    v57[2] = v78;
    v57[3] = v58;
    v59 = v73;
    v57[4] = v72;
    v57[5] = v59;
    v57[6] = v74;
    aBlock[4] = sub_1D8EA83B4;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_40_0;
    v60 = _Block_copy(aBlock);

    v61 = v66;
    sub_1D9177E4C();
    v81 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v62 = v68;
    v63 = v71;
    sub_1D91792CC();
    v64 = v76;
    sub_1D9178D7C();
    _Block_release(v60);

    (*(v70 + 8))(v62, v63);
    (*(v67 + 8))(v61, v69);

    return;
  }

  if (qword_1EDCD0F60 != -1)
  {
LABEL_33:
    swift_once();
  }

  v17 = sub_1D917744C();
  __swift_project_value_buffer(v17, qword_1EDCD0F68);
  v18 = v80;
  v19 = v80;
  v20 = sub_1D917741C();
  v21 = sub_1D9178CFC();
  sub_1D8D99898(v18, 1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
    *(v22 + 12) = 2082;
    swift_getErrorValue();
    v24 = sub_1D9179D2C();
    v26 = sub_1D8CFA924(v24, v25, aBlock);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_1D8CEC000, v20, v21, "%s Unable to rollback, no episode data found with error %{public}s.", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v23, -1, -1);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  a4(v18, 2, 1);
}

void sub_1D8EA6224(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v7 = *(a4 + OBJC_IVAR___PFFairPlayAsset_adamID);
  if ((a2 & 0x100) != 0)
  {
    swift_beginAccess();
    v14 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1D8ECC9FC(0, *(v14 + 2) + 1, 1, v14);
      *(a5 + 16) = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1D8ECC9FC((v16 > 1), v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    *&v14[8 * v17 + 32] = v7;
    *(a5 + 16) = v14;
  }

  else
  {
    swift_beginAccess();
    v9 = *(a3 + 16);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v9;
    if ((v10 & 1) == 0)
    {
      v9 = sub_1D8ECC9FC(0, *(v9 + 2) + 1, 1, v9);
      *(a3 + 16) = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1D8ECC9FC((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    *&v9[8 * v12 + 32] = v7;
    *(a3 + 16) = v9;
  }

  dispatch_group_leave(a6);
}

double sub_1D8EA639C(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5, char *a6)
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917744C();
  __swift_project_value_buffer(v10, qword_1EDCD0F68);

  v11 = sub_1D917741C();
  v12 = sub_1D9178D1C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31[0] = v14;
    *v13 = 136316163;
    *(v13 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v31);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    swift_beginAccess();

    v30 = a3;
    v16 = MEMORY[0x1E69E7360];
    format = a6;
    v17 = MEMORY[0x1DA729BD0](v15, MEMORY[0x1E69E7360]);
    v19 = v18;

    v20 = sub_1D8CFA924(v17, v19, v31);

    *(v13 + 24) = v20;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    swift_beginAccess();

    v22 = MEMORY[0x1DA729BD0](v21, v16);
    v24 = v23;

    v25 = sub_1D8CFA924(v22, v24, v31);
    a3 = v30;

    *(v13 + 44) = v25;
    _os_log_impl(&dword_1D8CEC000, v11, v12, format, v13, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v14, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  swift_beginAccess();
  v26 = *(a1 + 16);
  swift_beginAccess();
  v27 = *(a2 + 16);

  a3(v26, v27, 0);

  return result;
}

void sub_1D8EA6698(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1D8EA66F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5, void *a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1D8EA678C(a6, a7, a4, a5);
  }

  else
  {
    a4(0, 259);
  }
}

uint64_t sub_1D8EA678C(void *a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_1D9176E3C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 adamID];
  if (v16)
  {
    v17 = v16;
    v85 = [v16 integerValue];

    v18 = [a1 keyData];
    if (v18)
    {
      v83 = v12;
      v19 = v18;
      v84 = sub_1D9176C8C();
      v21 = v20;

      v22 = [a1 renewalDate];
      if (v22)
      {
        v82 = a4;
        v23 = v22;
        sub_1D9176DFC();

        v24 = [a1 accountDSID];
        if (v24)
        {
          v25 = v24;
          v80 = *(v5 + OBJC_IVAR___PFFairPlayMigrationController_secureKeyRequestStorage);
          v81 = a3;
          v26 = [a1 identifier];
          if (!v26)
          {
            sub_1D917820C();
            v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
          }

          v78 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
          v79 = v21;
          v77 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
          v27 = [v25 longLongValue];
          v75 = *(v5 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
          v76 = v27;
          v28 = swift_allocObject();
          v28[2] = a2;
          v28[3] = a1;
          v29 = v85;
          v30 = v81;
          v31 = v82;
          v28[4] = v85;
          v28[5] = v30;
          v28[6] = v31;
          v28[7] = ObjectType;
          aBlock[4] = sub_1D8EA977C;
          aBlock[5] = v28;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D8EA7470;
          aBlock[3] = &block_descriptor_72;
          v32 = _Block_copy(aBlock);
          v33 = a2;
          v34 = a1;

          v35 = v29;
          v37 = v77;
          v36 = v78;
          [v80 saveKeyDataWithKeyIdentifier:v26 storeTrackID:v35 keyData:v78 renewalDate:v77 dsid:v76 responseQueue:v75 completion:v32];
          sub_1D8D7567C(v84, v79);
          _Block_release(v32);
        }

        else
        {
          v67 = v21;
          if (qword_1EDCD0F60 != -1)
          {
            swift_once();
          }

          v68 = sub_1D917744C();
          __swift_project_value_buffer(v68, qword_1EDCD0F68);
          v69 = sub_1D917741C();
          v70 = sub_1D9178CFC();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = a3;
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            aBlock[0] = v73;
            *v72 = 136315651;
            *(v72 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
            *(v72 + 12) = 2160;
            *(v72 + 14) = 1752392040;
            *(v72 + 22) = 2049;
            *(v72 + 24) = v85;
            _os_log_impl(&dword_1D8CEC000, v69, v70, "%s Unable to rollback %{private,mask.hash}ld, no DSID found.", v72, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v73);
            MEMORY[0x1DA72CB90](v73, -1, -1);
            v74 = v72;
            a3 = v71;
            MEMORY[0x1DA72CB90](v74, -1, -1);
          }

          a3(1, 259);
          sub_1D8D7567C(v84, v67);
        }

        return (*(v83 + 8))(v15, v11);
      }

      else
      {
        v58 = v21;
        if (qword_1EDCD0F60 != -1)
        {
          swift_once();
        }

        v59 = sub_1D917744C();
        __swift_project_value_buffer(v59, qword_1EDCD0F68);
        v60 = sub_1D917741C();
        v61 = sub_1D9178CFC();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = a3;
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          aBlock[0] = v64;
          *v63 = 136315651;
          *(v63 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
          *(v63 + 12) = 2160;
          *(v63 + 14) = 1752392040;
          *(v63 + 22) = 2049;
          *(v63 + 24) = v85;
          _os_log_impl(&dword_1D8CEC000, v60, v61, "%s Unable to rollback %{private,mask.hash}ld, no renewal date found.", v63, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v64);
          MEMORY[0x1DA72CB90](v64, -1, -1);
          v65 = v63;
          a3 = v62;
          MEMORY[0x1DA72CB90](v65, -1, -1);
        }

        a3(5, 259);
        v66 = v84;

        return sub_1D8D7567C(v66, v58);
      }
    }

    else
    {
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v51 = sub_1D917744C();
      __swift_project_value_buffer(v51, qword_1EDCD0F68);
      v52 = sub_1D917741C();
      v53 = sub_1D9178CFC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = a3;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        aBlock[0] = v56;
        *v55 = 136315651;
        *(v55 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
        *(v55 + 12) = 2160;
        *(v55 + 14) = 1752392040;
        *(v55 + 22) = 2049;
        *(v55 + 24) = v85;
        _os_log_impl(&dword_1D8CEC000, v52, v53, "%s Unable to rollback %{private,mask.hash}ld, no key data found.", v55, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x1DA72CB90](v56, -1, -1);
        v57 = v55;
        a3 = v54;
        MEMORY[0x1DA72CB90](v57, -1, -1);
      }

      return (a3)(3, 259);
    }
  }

  else
  {
    v38 = a3;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v39 = sub_1D917744C();
    __swift_project_value_buffer(v39, qword_1EDCD0F68);
    v40 = a1;
    v41 = sub_1D917741C();
    v42 = sub_1D9178CFC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136315651;
      *(v43 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
      *(v43 + 12) = 2160;
      *(v43 + 14) = 1752392040;
      *(v43 + 22) = 2081;
      v45 = [v40 identifier];
      v46 = sub_1D917820C();
      v48 = v47;

      v49 = sub_1D8CFA924(v46, v48, aBlock);

      *(v43 + 24) = v49;
      _os_log_impl(&dword_1D8CEC000, v41, v42, "%s Unable to rollback %{private,mask.hash}s, no adam ID found.", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v44, -1, -1);
      MEMORY[0x1DA72CB90](v43, -1, -1);
    }

    return v38(2, 259);
  }
}

void sub_1D8EA70B8(char a1, void *a2, id a3, uint64_t a4, void (*a5)(void, uint64_t))
{
  if (a1)
  {
    v8 = [a3 identifier];
    if (!v8)
    {
      sub_1D917820C();
      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    v9 = [a2 removeKeyForIdentifier_];

    if (v9)
    {
      v10 = qword_1EDCD0F60;
      v11 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = sub_1D917744C();
      __swift_project_value_buffer(v12, qword_1EDCD0F68);
      v13 = v11;
      v14 = sub_1D917741C();
      v15 = sub_1D9178CFC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v26[0] = v17;
        *v16 = 136315907;
        *(v16 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v26);
        *(v16 + 12) = 2160;
        *(v16 + 14) = 1752392040;
        *(v16 + 22) = 2049;
        *(v16 + 24) = a4;
        *(v16 + 32) = 2082;
        swift_getErrorValue();
        v18 = sub_1D9179D2C();
        v20 = sub_1D8CFA924(v18, v19, v26);

        *(v16 + 34) = v20;
        _os_log_impl(&dword_1D8CEC000, v14, v15, "%s Unable to remove key from key store for %{private,mask.hash}ld with error %{public}s.", v16, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v17, -1, -1);
        MEMORY[0x1DA72CB90](v16, -1, -1);
      }

      else
      {
      }
    }

    a5(0, 0);
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD0F68);
    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26[0] = v25;
      *v24 = 136315651;
      *(v24 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v26);
      *(v24 + 12) = 2160;
      *(v24 + 14) = 1752392040;
      *(v24 + 22) = 2049;
      *(v24 + 24) = a4;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "%s Unable to rollback %{private,mask.hash}ld, could not save in the database.", v24, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    a5(0, 257);
  }
}

uint64_t sub_1D8EA7470(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1D8EA74C4(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v27 = sub_1D9177E0C();
  v5 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v13 = Strong;
  v23 = a2;
  v24 = a3;
  v14 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8CF2154(0, &unk_1EDCD5B60, off_1E8567630);
  v15 = sub_1D917907C();
  v25 = v14;
  v26 = v8;
  v16 = v15;
  v22[2] = *&v13[OBJC_IVAR___PFFairPlayMigrationController_internalQueue];
  v17 = swift_allocObject();
  v18 = v24;
  v17[2] = v23;
  v17[3] = v18;
  v17[4] = v16;
  aBlock[4] = sub_1D8EA98A0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_97;
  v19 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  v24 = v13;
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v20 = v27;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v7, v19);
  _Block_release(v19);

  (*(v5 + 8))(v7, v20);
  (*(v9 + 8))(v11, v26);
}

id FairPlayMigrationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

PodcastsFoundation::FairPlayVersion_optional __swiftcall FairPlayVersion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

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

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EA7CA8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 12918;
  }

  else
  {
    v2 = 12662;
  }

  if (*a2)
  {
    v3 = 12918;
  }

  else
  {
    v3 = 12662;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D9179ACC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1D8EA7D1C()
{
  result = qword_1ECAB5658;
  if (!qword_1ECAB5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5658);
  }

  return result;
}

uint64_t sub_1D8EA7D70()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8EA7DD0(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8EA7E14(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D8EA7E70(char *a2@<X8>)
{
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D8EA7ED0(uint64_t *a1@<X8>)
{
  v2 = 12662;
  if (*v1)
  {
    v2 = 12918;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t sub_1D8EA7F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_1D8E92DA0;

  return sub_1D8E8D6C4();
}

id sub_1D8EA7FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v26 = a1;
  v27 = a2;
  v25 = sub_1D9178E0C();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v28 = type metadata accessor for FairPlayMigrationController();
  v9 = objc_allocWithZone(v28);
  v24 = OBJC_IVAR___PFFairPlayMigrationController_internalQueue;
  v10 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v23[1] = "legacyDownloadRenewalManager";
  v23[2] = v10;
  sub_1D9177E4C();
  v33[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v25);
  v11 = sub_1D9178E4C();
  v12 = v24;
  *&v9[v24] = v11;
  *&v9[OBJC_IVAR___PFFairPlayMigrationController_secureKeyRequestStorage] = v26;
  v13 = type metadata accessor for DispatchingFairPlayInvalidationManaging();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance] = v27;
  *&v14[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue] = v11;
  v34.receiver = v14;
  v34.super_class = v13;
  v15 = v11;
  *&v9[OBJC_IVAR___PFFairPlayMigrationController_invalidationManager] = objc_msgSendSuper2(&v34, sel_init);
  v16 = *&v9[v12];
  v33[3] = type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v33[4] = &off_1F54681B0;
  v33[0] = v29;
  v17 = type metadata accessor for DispatchingFairPlayEpisodeDataFetching();
  v18 = objc_allocWithZone(v17);
  sub_1D8CFD9D8(v33, &v18[OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance]);
  *&v18[OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_responseQueue] = v16;
  v32.receiver = v18;
  v32.super_class = v17;
  v19 = v16;

  v20 = objc_msgSendSuper2(&v32, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);

  v21 = &v9[OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher];
  *(v21 + 3) = v17;
  *(v21 + 4) = &off_1F5467218;
  *v21 = v20;
  *&v9[OBJC_IVAR___PFFairPlayMigrationController_legacyDownloadRenewalManager] = v30;
  v31.receiver = v9;
  v31.super_class = v28;
  return objc_msgSendSuper2(&v31, sel_init);
}

void sub_1D8EA83C0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v146 = &v141 - v13;
  v148 = sub_1D9176C2C();
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v145 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v150 = &v141 - v16;
  v154 = sub_1D9176E3C();
  v156 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v149 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v151 = &v141 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v141 - v21;
  v23 = sub_1D9177F1C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  v27[2] = a3;
  v27[3] = a4;
  v27[4] = a5;
  v27[5] = a6;
  v159 = v27;
  v153 = a2;
  v28 = *(a2 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v26 = v28;
  (*(v24 + 104))(v26, *MEMORY[0x1E69E8020], v23);
  v155 = a3;

  v158 = a4;

  v29 = a6;
  v30 = v28;
  v31 = sub_1D9177F4C();
  (*(v24 + 8))(v26, v23);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  v157 = v29;
  v163 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = &v163;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1D8EA96B8;
  *(v31 + 24) = v32;
  aBlock[4] = sub_1D8EA96F4;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8EA6698;
  aBlock[3] = &block_descriptor_52;
  v33 = _Block_copy(aBlock);

  [a1 enumerateKeyEntriesUsingBlock_];
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v163)
  {
    v34 = v163;
    v35 = [v34 adamID];
    if (!v35)
    {
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v66 = sub_1D917744C();
      __swift_project_value_buffer(v66, qword_1EDCD0F68);
      v67 = v34;
      v68 = sub_1D917741C();
      v69 = sub_1D9178CFC();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        aBlock[0] = v156;
        *v70 = 136315651;
        *(v70 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
        *(v70 + 12) = 2160;
        *(v70 + 14) = 1752392040;
        *(v70 + 22) = 2081;
        v71 = [v67 identifier];
        v72 = sub_1D917820C();
        v74 = v73;

        v75 = sub_1D8CFA924(v72, v74, aBlock);

        *(v70 + 24) = v75;
        _os_log_impl(&dword_1D8CEC000, v68, v69, "%s Unable to rollback %{private,mask.hash}s, no adam ID found.", v70, 0x20u);
        v76 = v156;
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v76, -1, -1);
        MEMORY[0x1DA72CB90](v70, -1, -1);
      }

      v77 = *&v158[OBJC_IVAR___PFFairPlayAsset_adamID];
      swift_beginAccess();
      v78 = a5[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a5[2] = v78;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = sub_1D8ECC9FC(0, *(v78 + 2) + 1, 1, v78);
        a5[2] = v78;
      }

      v81 = *(v78 + 2);
      v80 = *(v78 + 3);
      if (v81 >= v80 >> 1)
      {
        v78 = sub_1D8ECC9FC((v80 > 1), v81 + 1, 1, v78);
      }

      *(v78 + 2) = v81 + 1;
      *&v78[8 * v81 + 32] = v77;
      a5[2] = v78;
      dispatch_group_leave(v157);

      goto LABEL_57;
    }

    v144 = a1;
    a3 = v32;
    v36 = v35;
    v37 = [v35 longLongValue];

    v38 = v153;
    a5 = *(v153 + OBJC_IVAR___PFFairPlayMigrationController_secureKeyRequestStorage);
    v152 = v34;
    v39 = [v34 identifier];
    v40 = sub_1D917820C();
    v42 = v41;

    v142 = v37;
    aBlock[0] = v37;
    v43 = sub_1D9179A4C();
    v45 = v44;
    v31 = type metadata accessor for ContentKeyRequest(0);
    v46 = objc_allocWithZone(v31);
    *&v46[OBJC_IVAR___MTContentKeyRequest_requestData] = xmmword_1D9190380;
    v47 = &v46[OBJC_IVAR___MTContentKeyRequest_keyIdentifier];
    *v47 = v40;
    v47[1] = v42;
    v48 = &v46[OBJC_IVAR___MTContentKeyRequest_adamId];
    *v48 = v43;
    v48[1] = v45;
    *&v46[OBJC_IVAR___MTContentKeyRequest_requestType] = 0;
    v46[OBJC_IVAR___MTContentKeyRequest_offlineRequest] = 1;
    *&v46[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid] = 0;
    v49 = qword_1ECAB8BC0 + 1;
    if (!__OFADD__(qword_1ECAB8BC0, 1))
    {
      v50 = v46;
      ++qword_1ECAB8BC0;
      *&v46[OBJC_IVAR___MTContentKeyRequest_requestID] = v49;
      sub_1D9176E2C();
      v51 = *(v156 + 32);
      v51(&v50[OBJC_IVAR___MTContentKeyRequest_requestDate], v22, v154);
      v161.receiver = v50;
      v161.super_class = v31;
      v52 = objc_msgSendSuper2(&v161, sel_init);
      v53 = [a5 retrieveKeyDataFor_];

      if (!v53)
      {
        v82 = v152;
        sub_1D8EA678C(v152, v144, sub_1D8EA96A0, v159);

LABEL_57:
        goto LABEL_58;
      }

      v143 = v53;
      v54 = &v53[OBJC_IVAR___MTContentKeyResponse_keyData];
      swift_beginAccess();
      v56 = *v54;
      v55 = v54[1];
      sub_1D8DA04B0(v56, v55);
      v57 = [v152 keyData];
      v58 = v159;
      if (v57)
      {
        v59 = v57;
        v60 = sub_1D9176C8C();
        v62 = v61;

        if (v55 >> 60 == 15)
        {
          if (v62 >> 60 != 15)
          {
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        if (v62 >> 60 != 15)
        {
          sub_1D8DA04B0(v56, v55);
          sub_1D8DA04B0(v60, v62);
          v91 = sub_1D8FCC138(v56, v55, v60, v62);
          sub_1D8D75668(v60, v62);
          sub_1D8D75668(v60, v62);
          sub_1D8D75668(v56, v55);
          sub_1D8D75668(v56, v55);
          if (!v91)
          {
LABEL_39:
            v92 = v152;
            v93 = [v152 renewalDate];
            if (v93)
            {
              v94 = v151;
              v95 = v93;
              sub_1D9176DFC();

              v96 = v143;
              v97 = v150;
              sub_1D8D088B4(v143 + OBJC_IVAR___MTContentKeyResponse_renewalDate, v150, &qword_1ECAB75C0, &unk_1D9188A50);
              v98 = v156;
              v99 = v154;
              if ((*(v156 + 48))(v97, 1, v154) == 1)
              {
                (*(v98 + 8))(v94, v99);

                sub_1D8D08A50(v97, &qword_1ECAB75C0, &unk_1D9188A50);
              }

              else
              {
                v100 = v149;
                v51(v149, v97, v99);
                v101 = v100;
                if (sub_1D9176D9C())
                {
                  v102 = [v144 filePath];
                  sub_1D917820C();

                  v103 = v146;
                  sub_1D9176BFC();

                  v104 = v147;
                  v105 = v148;
                  if ((*(v147 + 48))(v103, 1, v148) == 1)
                  {
                    sub_1D8D08A50(v103, &unk_1ECAB5910, &qword_1D9188C90);
                    if (qword_1EDCD0F60 != -1)
                    {
                      swift_once();
                    }

                    v106 = sub_1D917744C();
                    __swift_project_value_buffer(v106, qword_1EDCD0F68);
                    v107 = v144;
                    v108 = sub_1D917741C();
                    v109 = sub_1D9178CFC();

                    if (os_log_type_enabled(v108, v109))
                    {
                      v110 = swift_slowAlloc();
                      v111 = swift_slowAlloc();
                      v160[0] = v111;
                      *v110 = 136315651;
                      *(v110 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v160);
                      *(v110 + 12) = 2160;
                      *(v110 + 14) = 1752392040;
                      *(v110 + 22) = 2081;
                      v112 = [v107 filePath];
                      v113 = sub_1D917820C();
                      v115 = v114;

                      v116 = sub_1D8CFA924(v113, v115, v160);
                      v99 = v154;

                      *(v110 + 24) = v116;
                      _os_log_impl(&dword_1D8CEC000, v108, v109, "%s Unable to invalidate key, invalid key store path %{private,mask.hash}s.", v110, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x1DA72CB90](v111, -1, -1);
                      MEMORY[0x1DA72CB90](v110, -1, -1);
                    }

                    v117 = v158;
                    v101 = v149;
                  }

                  else
                  {
                    v125 = v145;
                    (*(v104 + 32))(v145, v103, v105);
                    v126 = *(v38 + OBJC_IVAR___PFFairPlayMigrationController_invalidationManager);
                    v127 = sub_1D9176B1C();
                    [v126 markKeyForInvalidationAt:v127 shouldRemove:1];

                    (*(v104 + 8))(v125, v105);
                    v117 = v158;
                  }

                  v128 = v152;
                  v129 = *&v117[OBJC_IVAR___PFFairPlayAsset_adamID];
                  v130 = v155;
                  swift_beginAccess();
                  v131 = *(v130 + 16);
                  v132 = swift_isUniquelyReferenced_nonNull_native();
                  *(v130 + 16) = v131;
                  if ((v132 & 1) == 0)
                  {
                    v131 = sub_1D8ECC9FC(0, *(v131 + 2) + 1, 1, v131);
                    *(v155 + 16) = v131;
                  }

                  v134 = *(v131 + 2);
                  v133 = *(v131 + 3);
                  if (v134 >= v133 >> 1)
                  {
                    v131 = sub_1D8ECC9FC((v133 > 1), v134 + 1, 1, v131);
                  }

                  *(v131 + 2) = v134 + 1;
                  *&v131[8 * v134 + 32] = v129;
                  *(v155 + 16) = v131;
                  dispatch_group_leave(v157);

                  v135 = *(v156 + 8);
                  v135(v101, v99);
                  v135(v151, v99);
                }

                else
                {
                  v118 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v119 = swift_allocObject();
                  v119[2] = v118;
                  v119[3] = sub_1D8EA96A0;
                  v120 = v152;
                  v119[4] = v58;
                  v119[5] = v120;
                  v121 = v144;
                  v119[6] = v144;
                  v122 = v120;
                  v123 = v121;

                  sub_1D8EA49BC(v142, sub_1D8EA971C, v119);

                  v124 = *(v156 + 8);
                  v124(v101, v99);
                  v124(v94, v99);
                }
              }
            }

            else
            {
            }

            goto LABEL_57;
          }

LABEL_27:
          v83 = v152;
          v84 = [v152 identifier];
          if (!v84)
          {
            sub_1D917820C();
            v84 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
          }

          v85 = *&v158[OBJC_IVAR___PFFairPlayAsset_adamID];
          v86 = v155;
          swift_beginAccess();
          v87 = *(v86 + 16);
          v88 = swift_isUniquelyReferenced_nonNull_native();
          *(v86 + 16) = v87;
          if ((v88 & 1) == 0)
          {
            v87 = sub_1D8ECC9FC(0, *(v87 + 2) + 1, 1, v87);
            *(v86 + 16) = v87;
          }

          v90 = *(v87 + 2);
          v89 = *(v87 + 3);
          if (v90 >= v89 >> 1)
          {
            v87 = sub_1D8ECC9FC((v89 > 1), v90 + 1, 1, v87);
          }

          *(v87 + 2) = v90 + 1;
          *&v87[8 * v90 + 32] = v85;
          *(v86 + 16) = v87;
          dispatch_group_leave(v157);

          goto LABEL_57;
        }
      }

      else
      {
        if (v55 >> 60 == 15)
        {
LABEL_26:
          sub_1D8D75668(v56, v55);
          goto LABEL_27;
        }

        v60 = 0;
        v62 = 0xF000000000000000;
      }

LABEL_38:
      sub_1D8D75668(v56, v55);
      sub_1D8D75668(v60, v62);
      goto LABEL_39;
    }

    goto LABEL_61;
  }

  a5 = *&v158[OBJC_IVAR___PFFairPlayAsset_adamID];
  a3 = v155;
  swift_beginAccess();
  v31 = *(a3 + 16);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v31;
  if ((v63 & 1) == 0)
  {
LABEL_62:
    v31 = sub_1D8ECC9FC(0, *(v31 + 16) + 1, 1, v31);
    *(a3 + 16) = v31;
  }

  v65 = *(v31 + 16);
  v64 = *(v31 + 24);
  if (v65 >= v64 >> 1)
  {
    v31 = sub_1D8ECC9FC((v64 > 1), v65 + 1, 1, v31);
  }

  *(v31 + 16) = v65 + 1;
  *(v31 + 8 * v65 + 32) = a5;
  *(a3 + 16) = v31;
  dispatch_group_leave(v157);

LABEL_58:
  v136 = objc_opt_self();
  v137 = [v136 _applePodcastsFoundationSharedUserDefaults];
  v138 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v139 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v137 setValue:v138 forKey:v139];

  v140 = [v136 _applePodcastsFoundationSharedUserDefaults];
  [v140 setFairPlayMigrationRetryCount_];
}

void sub_1D8EA96B8(void *a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *v4;
  *v4 = a1;
  v6 = a1;

  *a2 = 1;
}

id sub_1D8EA978C(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

double sub_1D8EA97A0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    sub_1D8EA97FC(a1, a2);
  }

  else
  {
  }

  return result;
}

void sub_1D8EA97FC(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

unint64_t sub_1D8EA9810()
{
  result = qword_1ECAB5680;
  if (!qword_1ECAB5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5680);
  }

  return result;
}

void sub_1D8EA993C(uint64_t a1)
{
  v3 = *(type metadata accessor for FairPlayMigrationData(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8EA1C7C(a1, v5, v6, v7, v8, (v1 + v4), v9);
}

uint64_t objectdestroy_36Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D8EA9A5C(void *a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for FairPlayMigrationData(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1D9176C2C() - 8);
  v12 = (v10 + *(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1D9176E3C() - 8);
  return sub_1D8EA454C(a1, a2, a3 & 1, *(v3 + 16), *(v3 + 24), (v3 + v8), *(v3 + v9), *(v3 + v10), *(v3 + v10 + 8), v3 + v12, v3 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)));
}

uint64_t sub_1D8EA9BEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8D58924;

  return sub_1D8EA7F18(a1, v4, v5, v6, v7, v8);
}

id sub_1D8EA9CCC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1D8EA978C(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1D8EA9CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8EA9D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D8EA9DAC(void *a1, __int16 a2)
{
  v5 = *(type metadata accessor for FairPlayMigrationData.ValidatedData(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + 16);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8EA21C0(a1, a2 & 0x1FF, v9, (v2 + v6), v8, v10);
}

uint64_t sub_1D8EA9E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8EA9EDC(id a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    sub_1D8EA97FC(a1, a2);
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation22FairPlayMigrationErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D8EA9F18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8EA9F60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8EA9FA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

id FairPlayRolloutController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static FairPlayRolloutController.shared.getter()
{
  if (qword_1EDCD2AD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD2AE0;

  return v1;
}

id FairPlayRolloutController.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___PFFairPlayRolloutController____lazy_storage___internalQueue] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id FairPlayRolloutController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D8EAA118(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t FairPlayService.removeKey(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D8EAA154, 0, 0);
}

uint64_t sub_1D8EAA154()
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1EDCD0F68);
  v2 = sub_1D917741C();
  v3 = sub_1D9178D1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "[FairPlayService]: Begin removing key for adamID=%llu.", v5, 0xCu);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  v6 = v0[2];

  v7 = sub_1D8EAA4C8();
  v0[4] = v7;
  v8 = swift_task_alloc();
  v0[5] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1D8EAA320;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0x654B65766F6D6572, 0xEF293A726F662879, sub_1D8EAAC88, v8, v10);
}

uint64_t sub_1D8EAA320()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D8EAA45C;
  }

  else
  {

    v3 = sub_1D8EAA444;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8EAA45C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1D8EAA4C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for FairPlayInvalidationManager()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1D8EAA534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 16))(v9, a1, v5, v7);
    v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    (*(v6 + 32))(v11 + v10, v9, v5);
    FairPlayInvalidationManager.removeKey(for:completion:)(a3, sub_1D8EAAE24, v11);
  }
}

uint64_t sub_1D8EAA690(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_1D917886C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a3, v6);
  sub_1D91787EC();
  v14 = a1;
  v15 = sub_1D91787DC();
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  *(v17 + 4) = a1;
  *(v17 + 5) = a2;
  (*(v7 + 32))(&v17[v16], v9, v6);
  sub_1D8E91268(0, 0, v12, &unk_1D91906C0, v17);
}

uint64_t sub_1D8EAA8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_1D91787EC();
  v6[6] = sub_1D91787DC();
  v8 = sub_1D917874C();

  return MEMORY[0x1EEE6DFA0](sub_1D8EAA940, v8, v7);
}

uint64_t sub_1D8EAA940()
{
  v1 = v0[3];

  if (v1)
  {
    v2 = v0[3];
    v3 = v2;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1EDCD0F68);
    v5 = sub_1D917741C();
    v6 = sub_1D9178D1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[4];
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v7;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[FairPlayService]: Error removing key for adamID=%llu.", v8, 0xCu);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    v0[2] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
    sub_1D917875C();
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD0F68);
    v10 = sub_1D917741C();
    v11 = sub_1D9178D1C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[4];
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v12;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "[FairPlayService]: Finished removing key for adamID=%llu.", v13, 0xCu);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
    sub_1D917876C();
  }

  v14 = v0[1];

  return v14();
}

uint64_t FairPlayService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8EAABF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D8D58924;

  return FairPlayService.removeKey(for:)(a1);
}

uint64_t sub_1D8EAAC90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of FairPlayServicing.removeKey(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D8D58924;

  return v9(a1, a2, a3);
}

uint64_t sub_1D8EAAE24(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D8EAA690(a1, v4, v5);
}

uint64_t sub_1D8EAAEA4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D8EAA8A4(a1, v6, v7, v8, v9, v1 + v5);
}

id FairPlayValidationManager.__allocating_init(episodeRemovalManager:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  swift_getObjectType();
  v5 = [objc_allocWithZone(type metadata accessor for FairPlayKeyLoader()) init];
  type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v6 = swift_allocObject();
  v7 = sub_1D8D6DE00(v5, a1, v6, objc_allocWithZone(v2));

  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  return v7;
}

id FairPlayValidationManager.init(episodeRemovalManager:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(type metadata accessor for FairPlayKeyLoader()) init];
  type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v4 = swift_allocObject();
  v5 = sub_1D8D6DE00(v3, a1, v4, objc_allocWithZone(ObjectType));

  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  return v5;
}

void sub_1D8EAB130(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4, void *a5, unint64_t a6)
{
  if (a2)
  {
    if (a3)
    {
      v8 = type metadata accessor for FairPlayValidationManager.Response();
      v9 = objc_allocWithZone(v8);
      v10 = MEMORY[0x1E69E7CC0];
      *&v9[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = MEMORY[0x1E69E7CC0];
      *&v9[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = v10;
      *&v9[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = v10;
      v42.receiver = v9;
      v42.super_class = v8;
      v11 = objc_msgSendSuper2(&v42, sel_init);
      a3(v11, a2);
    }
  }

  else
  {
    v13 = sub_1D8EAB4FC(a6, a1);
    if (*(*&v13[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] + 16))
    {

      sub_1D8EABE48(v14);
    }

    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD0F68);
    v41 = v13;
    v16 = a5;
    v17 = sub_1D917741C();
    v18 = sub_1D9178D1C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v19 = 136316675;
      v39 = v18;
      v20 = sub_1D8D6FDF8();
      v22 = sub_1D8CFA924(v20, v21, &v43);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2160;
      *(v19 + 14) = 1752392040;
      *(v19 + 22) = 2081;

      v24 = MEMORY[0x1E69E7360];
      v25 = MEMORY[0x1DA729BD0](v23, MEMORY[0x1E69E7360]);
      v27 = v26;

      v28 = sub_1D8CFA924(v25, v27, &v43);

      *(v19 + 24) = v28;
      *(v19 + 32) = 2160;
      *(v19 + 34) = 1752392040;
      *(v19 + 42) = 2081;

      v30 = MEMORY[0x1DA729BD0](v29, v24);
      v32 = v31;

      v33 = sub_1D8CFA924(v30, v32, &v43);

      *(v19 + 44) = v33;
      *(v19 + 52) = 2160;
      *(v19 + 54) = 1752392040;
      *(v19 + 62) = 2081;

      v35 = MEMORY[0x1DA729BD0](v34, v24);
      v37 = v36;

      v38 = sub_1D8CFA924(v35, v37, &v43);

      *(v19 + 64) = v38;
      _os_log_impl(&dword_1D8CEC000, v17, v39, "%s Finished validating downloaded FairPlay episodes with errors for adamIds: %{private,mask.hash}s, episodes to be removed: %{private,mask.hash}s, successfully renewed %{private,mask.hash}s.", v19, 0x48u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v40, -1, -1);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }

    if (a3)
    {
      a3(v41, 0);
    }
  }
}

char *sub_1D8EAB4FC(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16))
  {
    v3 = a2;
    if (a1 >> 62)
    {
LABEL_76:
      v4 = sub_1D917935C();
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v85 = MEMORY[0x1E69E7CC0];
      sub_1D8E3148C(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v6 = v3;
      v7 = v85;
      if ((v2 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v4; ++i)
        {
          v9 = *(MEMORY[0x1DA72AA90](i, v2) + OBJC_IVAR___PFFairPlayAsset_adamID);
          swift_unknownObjectRelease();
          v85 = v7;
          v11 = *(v7 + 16);
          v10 = *(v7 + 24);
          if (v11 >= v10 >> 1)
          {
            sub_1D8E3148C((v10 > 1), v11 + 1, 1);
            v7 = v85;
          }

          *(v7 + 16) = v11 + 1;
          *(v7 + 8 * v11 + 32) = v9;
        }
      }

      else
      {
        v20 = (v2 + 32);
        v21 = *(v85 + 16);
        do
        {
          v22 = *(*v20 + OBJC_IVAR___PFFairPlayAsset_adamID);
          v85 = v7;
          v23 = *(v7 + 24);
          if (v21 >= v23 >> 1)
          {
            sub_1D8E3148C((v23 > 1), v21 + 1, 1);
            v7 = v85;
          }

          *(v7 + 16) = v21 + 1;
          *(v7 + 8 * v21 + 32) = v22;
          ++v20;
          ++v21;
          --v4;
        }

        while (v4);
      }

      v3 = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v24 = sub_1D8FC1078(v7);

    v25 = sub_1D8E99A00(v3);
    v26 = sub_1D8FC1078(v25);

    v75 = v26;
    if (*(v26 + 16) <= *(v24 + 16) >> 3)
    {
      v85 = v24;
      sub_1D910E5C4(v26);
      v74 = v85;
    }

    else
    {
      v74 = sub_1D90A4604(v26, v24);
    }

    v88 = v5;
    v2 = v3 + 64;
    v27 = 1 << *(v3 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v3 + 64);
    v30 = (v27 + 63) >> 6;

    v31 = 0;
    v77 = v3;
    v78 = v3 + 64;
    v81 = v30;
LABEL_34:
    v76 = v5;
    v32 = v31;
    if (!v29)
    {
      goto LABEL_36;
    }

    do
    {
      v31 = v32;
LABEL_39:
      v33 = (v31 << 9) | (8 * __clz(__rbit64(v29)));
      v34 = *(*(v3 + 56) + v33);
      v35 = *(*(v3 + 48) + v33);
      v36 = v34;
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v37 = sub_1D917744C();
      __swift_project_value_buffer(v37, qword_1EDCD0F68);
      v38 = v35;
      v39 = v34;
      v40 = v82;
      v41 = sub_1D917741C();
      v42 = sub_1D9178CFC();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v85 = v80;
        *v43 = 136316163;
        v44 = sub_1D8D6FDF8();
        v46 = sub_1D8CFA924(v44, v45, &v85);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2160;
        *(v43 + 14) = 1752392040;
        *(v43 + 22) = 2113;
        *(v43 + 24) = v38;
        *v79 = v38;
        *(v43 + 32) = 2160;
        *(v43 + 34) = 1752392040;
        *(v43 + 42) = 2081;
        swift_getErrorValue();
        v47 = v38;
        v2 = v78;
        v48 = sub_1D9179D2C();
        v50 = sub_1D8CFA924(v48, v49, &v85);

        *(v43 + 44) = v50;
        _os_log_impl(&dword_1D8CEC000, v41, v42, "%s Unable to renew key for asset: %{private,mask.hash}@, with error: %{private,mask.hash}s.", v43, 0x34u);
        sub_1D8D08A50(v79, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v79, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v80, -1, -1);
        v51 = v43;
        v3 = v77;
        MEMORY[0x1DA72CB90](v51, -1, -1);
      }

      v29 &= v29 - 1;
      swift_getErrorValue();
      if (sub_1D8EACF38(v86, v87))
      {
        v52 = v38;
        MEMORY[0x1DA729B90]();
        if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
          v2 = v78;
        }

        sub_1D917869C();

        v5 = v88;
        v30 = v81;
        goto LABEL_34;
      }

      v32 = v31;
      v30 = v81;
    }

    while (v29);
    while (1)
    {
LABEL_36:
      v31 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (v31 >= v30)
      {
        break;
      }

      v29 = *(v2 + 8 * v31);
      ++v32;
      if (v29)
      {
        goto LABEL_39;
      }
    }

    v53 = *(v74 + 16);
    if (!v53)
    {
      goto LABEL_55;
    }

    v54 = sub_1D8DB8004(*(v74 + 16), 0);
    v55 = sub_1D8D1B614(&v85, v54 + 4, v53, v74);
    sub_1D8D1B144(v85);
    v56 = v55 == v53;
    v2 = v75;
    if (!v56)
    {
      goto LABEL_81;
    }

    v57 = *(v75 + 16);
    if (v57)
    {
      while (1)
      {
        v58 = sub_1D8DB8004(v57, 0);
        v2 = sub_1D8D1B614(&v85, v58 + 4, v57, v2);
        sub_1D8D1B144(v85);
        if (v2 == v57)
        {
          break;
        }

        __break(1u);
LABEL_55:

        v54 = MEMORY[0x1E69E7CC0];
        v2 = v75;
        v57 = *(v75 + 16);
        if (!v57)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
LABEL_56:

      v58 = MEMORY[0x1E69E7CC0];
    }

    if (v76 >> 62)
    {
      v59 = sub_1D917935C();
      if (v59)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v59 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v59)
      {
LABEL_59:
        v85 = MEMORY[0x1E69E7CC0];
        sub_1D8E3148C(0, v59 & ~(v59 >> 63), 0);
        if (v59 < 0)
        {
          goto LABEL_82;
        }

        v60 = 0;
        v61 = v85;
        v62 = v76;
        do
        {
          if ((v76 & 0xC000000000000001) != 0)
          {
            v63 = *(MEMORY[0x1DA72AA90](v60, v62) + OBJC_IVAR___PFFairPlayAsset_adamID);
            swift_unknownObjectRelease();
          }

          else
          {
            v63 = *(*(v62 + 8 * v60 + 32) + OBJC_IVAR___PFFairPlayAsset_adamID);
          }

          v85 = v61;
          v65 = *(v61 + 16);
          v64 = *(v61 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_1D8E3148C((v64 > 1), v65 + 1, 1);
            v62 = v76;
            v61 = v85;
          }

          ++v60;
          *(v61 + 16) = v65 + 1;
          *(v61 + 8 * v65 + 32) = v63;
        }

        while (v59 != v60);

        goto LABEL_79;
      }
    }

    v61 = MEMORY[0x1E69E7CC0];
LABEL_79:
    v72 = type metadata accessor for FairPlayValidationManager.Response();
    v73 = objc_allocWithZone(v72);
    *&v73[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = v54;
    *&v73[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = v58;
    *&v73[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = v61;
    v84.receiver = v73;
    v84.super_class = v72;
    return objc_msgSendSuper2(&v84, sel_init);
  }

  if (a1 >> 62)
  {
LABEL_83:
    v12 = sub_1D917935C();
    goto LABEL_14;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_69:
    v66 = type metadata accessor for FairPlayValidationManager.Response();
    v67 = objc_allocWithZone(v66);
    *&v67[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = v15;
    *&v67[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = v13;
    *&v67[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = v13;
    v83.receiver = v67;
    v83.super_class = v66;
    return objc_msgSendSuper2(&v83, sel_init);
  }

  v85 = MEMORY[0x1E69E7CC0];
  result = sub_1D8E3148C(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v15 = v85;
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v12; ++j)
      {
        v17 = *(MEMORY[0x1DA72AA90](j, v2) + OBJC_IVAR___PFFairPlayAsset_adamID);
        swift_unknownObjectRelease();
        v85 = v15;
        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D8E3148C((v18 > 1), v19 + 1, 1);
          v15 = v85;
        }

        *(v15 + 16) = v19 + 1;
        *(v15 + 8 * v19 + 32) = v17;
      }
    }

    else
    {
      v68 = (v2 + 32);
      v69 = *(v85 + 16);
      do
      {
        v70 = *(*v68 + OBJC_IVAR___PFFairPlayAsset_adamID);
        v85 = v15;
        v71 = *(v15 + 24);
        if (v69 >= v71 >> 1)
        {
          sub_1D8E3148C((v71 > 1), v69 + 1, 1);
          v15 = v85;
        }

        *(v15 + 16) = v69 + 1;
        *(v15 + 8 * v69 + 32) = v70;
        ++v68;
        ++v69;
        --v12;
      }

      while (v12);
    }

    goto LABEL_69;
  }

  __break(1u);
  return result;
}

void sub_1D8EABE48(uint64_t a1)
{
  v3 = sub_1D9177F1C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR___PFFairPlayValidationManager_internalQueue];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1D9177F4C();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_1EDCD0F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_1D917744C();
  __swift_project_value_buffer(v10, qword_1EDCD0F68);
  v11 = v1;

  v12 = sub_1D917741C();
  v13 = sub_1D9178D1C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v14 = 136315651;
    v15 = sub_1D8D6FDF8();
    v17 = sub_1D8CFA924(v15, v16, &v44);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    v18 = *(a1 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v36 = v13;
      v37 = v14;
      v38 = v12;
      v39 = v11;
      v43 = MEMORY[0x1E69E7CC0];
      sub_1D8D41BE0(0, v18, 0);
      v19 = v43;
      v40 = a1;
      v20 = (a1 + 32);
      do
      {
        v21 = *v20++;
        v42 = v21;
        v22 = sub_1D9179A4C();
        v24 = v23;
        v43 = v19;
        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D8D41BE0((v25 > 1), v26 + 1, 1);
          v19 = v43;
        }

        *(v19 + 16) = v26 + 1;
        v27 = v19 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        --v18;
      }

      while (v18);
      v11 = v39;
      v14 = v37;
      v12 = v38;
      LOBYTE(v13) = v36;
    }

    v43 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    v28 = sub_1D917817C();
    v30 = v29;

    v31 = sub_1D8CFA924(v28, v30, &v44);

    *(v14 + 24) = v31;
    _os_log_impl(&dword_1D8CEC000, v12, v13, "%s Attempting to remove episodes with adamIDs: %{private,mask.hash}s.", v14, 0x20u);
    v32 = v41;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v32, -1, -1);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  v33 = *&v11[OBJC_IVAR___PFFairPlayValidationManager_episodeRemovalManager];
  if (v33)
  {
    v34 = sub_1D91785DC();
    [v33 removeEpisodesWith_];
  }
}

void sub_1D8EAC264(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v3[OBJC_IVAR___PFFairPlayValidationManager_internalQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9177F4C();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_1EDCD0F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_1D917744C();
  __swift_project_value_buffer(v14, qword_1EDCD0F68);
  v15 = v3;

  v16 = sub_1D917741C();
  v17 = sub_1D9178CDC();

  if (!os_log_type_enabled(v16, v17))
  {
LABEL_17:

    v41 = *&v15[OBJC_IVAR___PFFairPlayValidationManager_keyLoader];
    type metadata accessor for FairPlayAsset();
    v42 = sub_1D91785DC();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = a2;
    v44[4] = a3;
    aBlock[4] = sub_1D8EAD9E8;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8E8C628;
    aBlock[3] = &block_descriptor_51;
    v45 = _Block_copy(aBlock);

    [v41 renewKeyRequestsWithAssets:v42 completion:v45];
    _Block_release(v45);

    return;
  }

  v52 = v17;
  v53 = v16;
  v18 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  aBlock[0] = v50;
  *v18 = 136315651;
  v19 = sub_1D8D6FDF8();
  v21 = sub_1D8CFA924(v19, v20, aBlock);

  *(v18 + 4) = v21;
  *(v18 + 12) = 2160;
  *(v18 + 14) = 1752392040;
  v51 = v18;
  *(v18 + 22) = 2081;
  if (a1 >> 62)
  {
    v22 = sub_1D917935C();
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
LABEL_16:
    v55 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    v35 = sub_1D917817C();
    v37 = v36;

    v38 = sub_1D8CFA924(v35, v37, aBlock);

    v39 = v51;
    *(v51 + 24) = v38;
    v16 = v53;
    _os_log_impl(&dword_1D8CEC000, v53, v52, "%s Attempting to renew keys for episodes with adamIDs: %{private,mask.hash}s.", v39, 0x20u);
    v40 = v50;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v40, -1, -1);
    MEMORY[0x1DA72CB90](v39, -1, -1);
    goto LABEL_17;
  }

  v55 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v47 = v15;
    v48 = a2;
    v49 = a3;
    v24 = 0;
    v23 = v55;
    v25 = a1 & 0xC000000000000001;
    v26 = a1;
    do
    {
      if (v25)
      {
        v27 = MEMORY[0x1DA72AA90](v24, a1);
      }

      else
      {
        v27 = *(a1 + 8 * v24 + 32);
      }

      v28 = v27;
      v54 = *&v27[OBJC_IVAR___PFFairPlayAsset_adamID];
      v29 = sub_1D9179A4C();
      v31 = v30;

      v55 = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D8D41BE0((v32 > 1), v33 + 1, 1);
        v23 = v55;
      }

      ++v24;
      *(v23 + 16) = v33 + 1;
      v34 = v23 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      a1 = v26;
    }

    while (v22 != v24);
    a2 = v48;
    a3 = v49;
    v15 = v47;
    goto LABEL_16;
  }

  __break(1u);
}

id FairPlayValidationManager.Response.__allocating_init(renewedAdamIDs:failedAdamIDs:removedAdamIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = a1;
  *&v7[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = a2;
  *&v7[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id FairPlayValidationManager.Response.init(renewedAdamIDs:failedAdamIDs:removedAdamIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = a1;
  *&v3[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = a2;
  *&v3[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id FairPlayValidationManager.Response.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double sub_1D8EACA28(uint64_t a1, void *a2, uint64_t a3, void (*a4)(unint64_t, void *), uint64_t a5)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D9177E9C();
  v13 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v26 = *(Strong + OBJC_IVAR___PFFairPlayValidationManager_internalQueue);
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a4;
    v18[4] = a5;
    v18[5] = a1;
    v18[6] = a2;
    aBlock[4] = sub_1D8EAD9F4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_57_0;
    v19 = _Block_copy(aBlock);
    v25 = v17;

    v20 = a2;
    sub_1D9177E4C();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v15, v12, v19);
    _Block_release(v19);
    (*(v10 + 8))(v12, v9);
    (*(v13 + 8))(v15, v27);
  }

  else
  {
    v22 = sub_1D8E26E10(MEMORY[0x1E69E7CC0]);
    sub_1D8EAD948();
    v23 = swift_allocError();
    a4(v22, v23);
  }

  return result;
}

uint64_t sub_1D8EACDB0(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v9 = sub_1D917744C();
  __swift_project_value_buffer(v9, qword_1EDCD0F68);
  v10 = a1;
  v11 = sub_1D917741C();
  v12 = sub_1D9178CDC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    v15 = sub_1D8D6FDF8();
    v17 = sub_1D8CFA924(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1D8CEC000, v11, v12, "%s Finished key renewal process.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1DA72CB90](v14, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  return a2(a4, a5);
}

BOOL sub_1D8EACF38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_1D9179A7C();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_1D9176A5C();

  v12 = [v11 code];
  return v12 == -1002;
}

uint64_t sub_1D8EAD09C(unint64_t a1, uint64_t (*a2)(void, __n128), uint64_t a3, void *a4, uint64_t a5)
{
  v54 = a5;
  v55 = a2;
  v61 = a4;
  v56 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = sub_1D9177E0C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v17 = *(v16 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_3;
    }

    return v55(MEMORY[0x1E69E7CC0], v18);
  }

  v21 = sub_1D917935C();
  if (!v21)
  {
    return v55(MEMORY[0x1E69E7CC0], v18);
  }

LABEL_3:
  v52 = v20;
  v53 = v17;
  v22 = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB56E8, &qword_1D9190758);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  if (v21 < 1)
  {
    __break(1u);
  }

  else
  {
    v24 = result;
    v48 = v15;
    v49 = v16;
    v50 = v13;
    v51 = v12;
    v25 = 0;
    v57 = a1 & 0xC000000000000001;
    v59 = v21;
    v60 = a1;
    do
    {
      if (v57)
      {
        v27 = MEMORY[0x1DA72AA90](v25, a1);
      }

      else
      {
        v27 = *(a1 + 8 * v25 + 32);
      }

      v28 = v27;
      dispatch_group_enter(v22);
      v29 = swift_allocObject();
      v29[2] = v22;
      v29[3] = v24;
      v29[4] = v28;

      v58 = v22;
      v30 = v28;
      sub_1D917881C();
      v31 = sub_1D917886C();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v11, 0, 1, v31);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v30;
      v34 = v61;
      v33[5] = v61;
      v33[6] = sub_1D8EAD9A8;
      v33[7] = v29;
      sub_1D8CF5C74(v11, v8);
      LODWORD(v29) = (*(v32 + 48))(v8, 1, v31);
      v35 = v34;

      if (v29 == 1)
      {
        sub_1D8D08A50(v8, &qword_1ECABB890, &qword_1D918B960);
      }

      else
      {
        sub_1D917885C();
        (*(v32 + 8))(v8, v31);
      }

      v36 = v33[2];
      swift_unknownObjectRetain();

      if (v36)
      {
        swift_getObjectType();
        v37 = sub_1D917874C();
        v39 = v38;
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      sub_1D8D08A50(v11, &qword_1ECABB890, &qword_1D918B960);
      v40 = swift_allocObject();
      *(v40 + 16) = &unk_1D918FD38;
      *(v40 + 24) = v33;
      if (v39 | v37)
      {
        aBlock[6] = 0;
        aBlock[7] = 0;
        aBlock[8] = v37;
        aBlock[9] = v39;
      }

      v26 = v59;
      a1 = v60;
      ++v25;
      swift_task_create();
    }

    while (v26 != v25);
    v41 = swift_allocObject();
    v42 = v56;
    v41[2] = v55;
    v41[3] = v42;
    v41[4] = v24;
    aBlock[4] = sub_1D8EAD9B4;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_40_1;
    v43 = _Block_copy(aBlock);

    v44 = v52;
    sub_1D9177E4C();
    v62 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    v45 = v48;
    v46 = v51;
    sub_1D91792CC();
    v47 = v58;
    sub_1D9178D7C();
    _Block_release(v43);

    (*(v50 + 8))(v45, v46);
    (*(v53 + 8))(v44, v49);
  }

  return result;
}

void sub_1D8EAD768(uint64_t a1, dispatch_group_t group)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = v3;
    os_unfair_lock_lock(v3 + 6);
    sub_1D8EAD9C0(&v4[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v4 + 6);
  }

  dispatch_group_leave(group);
}

uint64_t sub_1D8EAD7F8(void *a1, void *a2)
{
  v3 = a2;
  MEMORY[0x1DA729B90]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D917863C();
  }

  return sub_1D917869C();
}

double sub_1D8EAD874(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 24));
  v5 = *(a3 + 16);

  os_unfair_lock_unlock((a3 + 24));
  a1(v5);

  return result;
}

unint64_t sub_1D8EAD948()
{
  result = qword_1ECAB56E0;
  if (!qword_1ECAB56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB56E0);
  }

  return result;
}

unint64_t sub_1D8EADA18()
{
  result = qword_1ECAB56F0;
  if (!qword_1ECAB56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB56F0);
  }

  return result;
}

void ICContentFairPlayKeySession.__allocating_init(asset:)(void *a1)
{
  sub_1D8EB0130();
  if (v1)
  {
  }

  else
  {
    v4 = v3;
    swift_allocObject();
    sub_1D8EADCD8(a1, v4);
  }
}

void *ICContentFairPlayKeySession.__allocating_init(asset:account:)(char *a1, id a2)
{
  v3 = v2;
  v6 = [a2 ams_DSID];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() specificAccountWithDSID_];
    v9 = [objc_allocWithZone(MEMORY[0x1E69E4618]) initWithIdentity_];

    swift_allocObject();
    v3 = sub_1D8EADCD8(a1, v9);
  }

  else
  {
    sub_1D8EB024C();
    swift_allocError();
    swift_willThrow();
  }

  return v3;
}

id ACAccount.storeRequestContext()()
{
  v1 = [v0 ams_DSID];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() specificAccountWithDSID_];
    v4 = [objc_allocWithZone(MEMORY[0x1E69E4618]) initWithIdentity_];

    return v4;
  }

  else
  {
    sub_1D8EB024C();
    swift_allocError();
    return swift_willThrow();
  }
}

void *sub_1D8EADCD8(char *a1, void *a2)
{
  v3 = v2;
  v30 = *v2;
  v6 = sub_1D9176C2C();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FairPlayServerURLConfiguration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9176EAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 40) = 0;
  v3[6] = 0;
  v15 = (v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  *v15 = 0;
  v15[1] = 0;
  *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___delegateWrapper) = 0;
  v16 = (v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___logPrefix);
  *v16 = 0;
  v16[1] = 0;
  *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___session) = 0;
  sub_1D9176E9C();
  v17 = sub_1D9176E5C();
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  v3[2] = v17;
  v3[3] = v19;
  v3[4] = a1;
  v3[7] = *&a1[OBJC_IVAR___PFFairPlayAsset_keyStore];
  v3[8] = a2;
  swift_unknownObjectRetain();
  v20 = a2;
  v21 = a1;
  v22 = v31;
  sub_1D8E93DDC(v10);
  if (v22)
  {

    swift_unknownObjectRelease();

    sub_1D8D15664(*(v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion), *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion + 8));

    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v27;
    v23 = v28;
    sub_1D8EB081C(v10, v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_urlConfiguration);
    sub_1D8E94158();
    v25 = v29;
    sub_1D8EAE078(v29);

    (*(v24 + 32))(v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_keyCertificateURL, v25, v23);
  }

  return v3;
}

uint64_t sub_1D8EAE078@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = [v5 syncValueForKey_];

  if (v6)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    v7 = sub_1D9176C2C();
    v8 = swift_dynamicCast();
    v9 = *(v7 - 8);
    (*(v9 + 56))(v4, v8 ^ 1u, 1, v7);
    if ((*(v9 + 48))(v4, 1, v7) != 1)
    {
      return (*(v9 + 32))(a1, v4, v7);
    }
  }

  else
  {
    sub_1D8D08A50(v15, &qword_1ECAB57F0, &unk_1D9190AA0);
    v11 = sub_1D9176C2C();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  }

  sub_1D8D08A50(v4, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8E9440C();
  swift_allocError();
  *v12 = 5;
  return swift_willThrow();
}

uint64_t ICContentFairPlayKeySession.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void ICContentFairPlayKeySession.bypassCache.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  v3 = sub_1D8EAE518();
  [v3 setBypassCache_];
}

void sub_1D8EAE4B8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  v4 = sub_1D8EAE518();
  [v4 setBypassCache_];
}

id sub_1D8EAE518()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___session;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___session);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___session);
  }

  else
  {
    v4 = sub_1D8EAF20C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*ICContentFairPlayKeySession.bypassCache.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D8EAE5D0;
}

void sub_1D8EAE5D0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = sub_1D8EAE518();
    [v5 setBypassCache_];
  }
}

void *ICContentFairPlayKeySession.keyStoreFilePath.getter()
{
  if (!*(v0 + 56))
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    v3 = [v2 filePath];
    v4 = sub_1D917820C();
    swift_unknownObjectRelease();

    return v4;
  }

  return result;
}

void *ICContentFairPlayKeySession.keyResponseData.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void ICContentFairPlayKeySession.keyResponseData.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

Swift::Void __swiftcall ICContentFairPlayKeySession.pauseAutomaticKeyRenewal()()
{
  v0 = sub_1D8EAE518();
  [v0 pauseAutomaticKeyRenewal];
}

Swift::Void __swiftcall ICContentFairPlayKeySession.resumeAutomaticKeyRenewal()()
{
  v0 = sub_1D8EAE518();
  [v0 resumeAutomaticKeyRenewal];
}

uint64_t sub_1D8EAE9D0(uint64_t a1, uint64_t a2, SEL *a3)
{

  v4 = sub_1D8EAE518();
  [v4 *a3];
}

uint64_t sub_1D8EAEA4C(SEL *a1)
{
  v3 = sub_1D8EAE518();
  sub_1D8CFD9D8(*(v1 + 32) + OBJC_IVAR___PFFairPlayAsset_avAsset, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 8))(v4, v5);
  [v3 *a1];

  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_1D8EAEB08(uint64_t a1, uint64_t a2, SEL *a3)
{

  v5 = sub_1D8EAE518();
  sub_1D8CFD9D8(*(a1 + 32) + OBJC_IVAR___PFFairPlayAsset_avAsset, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 8))(v6, v7);
  [v5 *a3];

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

void ICContentFairPlayKeySession.processKey(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  v6 = *(v4 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  v7 = *(v4 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion + 8);
  *v5 = a3;
  v5[1] = a4;
  sub_1D8D15664(v6, v7);

  v8 = sub_1D8EAE518();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v8 processKeyWithIdentifier_];
}

Swift::Void __swiftcall ICContentFairPlayKeySession.renewKey()()
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1EDCD0F68);

  v1 = sub_1D917741C();
  v2 = sub_1D9178D1C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = sub_1D8EAEED0();
    v7 = sub_1D8CFA924(v5, v6, &v9);

    *(v3 + 4) = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1DA72CB90](v4, -1, -1);
    MEMORY[0x1DA72CB90](v3, -1, -1);
  }

  v8 = sub_1D8EAE518();
  [v8 renewAllKeys];
}

unint64_t sub_1D8EAEED0()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0xD000000000000031;
    *v1 = 0xD000000000000031;
    v1[1] = 0x80000001D91CC5C0;
  }

  return v2;
}

void ICContentFairPlayKeySession.stopAndInvalidateKeys(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8EAE518();
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D8E8A43C;
  v6[3] = &block_descriptor_24;
  v5 = _Block_copy(v6);

  [v4 stopSessionInvalidatingKeys:1 withCompletion:v5];
  _Block_release(v5);
}

id sub_1D8EAF154()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___delegateWrapper;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___delegateWrapper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___delegateWrapper);
  }

  else
  {
    v4 = type metadata accessor for ICContentKeySessionDelegateWrapper();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC18PodcastsFoundationP33_C5CCB7FDAA241CA13F97384CFFA3ACE334ICContentKeySessionDelegateWrapper_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = &off_1F54699D0;
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D8EAF20C(void *a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[7];
  v6 = a1[8];
  v8 = sub_1D8EAF154();
  v9 = [objc_allocWithZone(MEMORY[0x1E69E43F8]) initWithRequestContext:v6 keyStore:v7 delegate:v8];

  v10 = a1[4];
  v11 = sub_1D9179D9C();
  [v9 setAdamID_];

  v12 = sub_1D9176B1C();
  [v9 setKeyCertificateURL_];

  [v9 setKeyServerProtocolType_];
  [v9 setBypassCache_];
  [v9 setRefreshExpiredPersistentKeys_];
  sub_1D8CFD9D8(v10 + OBJC_IVAR___PFFairPlayAsset_avAsset, v24);
  v13 = v25;
  v14 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v15 = (*(v14 + 8))(v13, v14);
  v16 = [v15 URL];
  sub_1D9176B9C();

  LOBYTE(v16) = sub_1D9176A8C();
  (*(v3 + 8))(v5, v2);
  [v9 setRequestOfflineKeys_];
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  v17 = sub_1D9176B1C();
  [v9 setKeyServerURL_];

  type metadata accessor for FairPlayServerURLConfiguration(0);
  v18 = sub_1D9176B1C();
  [v9 setStreamingleaseStopURL_];

  v19 = sub_1D9176B1C();
  [v9 setOfflineLeaseStartURL_];

  v20 = sub_1D9176B1C();
  [v9 setOfflineLeaseStopURL_];

  v21 = sub_1D9176B1C();
  [v9 setOfflineLeaseStopNonceURL_];

  return v9;
}

id *ICContentFairPlayKeySession.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_keyCertificateURL;
  v2 = sub_1D9176C2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D8EB02A0(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_urlConfiguration);
  sub_1D8D15664(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion), *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion + 8));

  return v0;
}

uint64_t ICContentFairPlayKeySession.__deallocating_deinit()
{
  ICContentFairPlayKeySession.deinit();

  return swift_deallocClassInstance();
}

void sub_1D8EAF668(uint64_t a1, unint64_t a2, void *a3, id a4)
{
  v5 = v4;
  v6 = a4;
  v10 = &OBJC_METACLASS____TtC18PodcastsFoundation27PodcastEpisodeRelationships;
  if (!a4)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v29 = sub_1D917744C();
    __swift_project_value_buffer(v29, qword_1EDCD0F68);
    v30 = a3;

    v15 = sub_1D917741C();
    v31 = sub_1D9178D1C();

    if (os_log_type_enabled(v15, v31))
    {
      v77 = a1;
      v32 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82[0] = v79;
      *v32 = 136316163;
      v33 = sub_1D8EAEED0();
      v35 = sub_1D8CFA924(v33, v34, v82);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2160;
      *(v32 + 14) = 1752392040;
      *(v32 + 22) = 2081;
      *(v32 + 24) = sub_1D8CFA924(v77, a2, v82);
      *(v32 + 32) = 2160;
      *(v32 + 34) = 1752392040;
      *(v32 + 42) = 2081;
      v81 = a3;
      v36 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB57D0, &qword_1D9190A98);
      v37 = sub_1D917826C();
      v39 = sub_1D8CFA924(v37, v38, v82);
      v10 = &OBJC_METACLASS____TtC18PodcastsFoundation27PodcastEpisodeRelationships;

      *(v32 + 44) = v39;
      _os_log_impl(&dword_1D8CEC000, v15, v31, "%s ICContentKeySession successfully processed key for: %{private,mask.hash}s, with delivery response %{private,mask.hash}s.", v32, 0x34u);
      swift_arrayDestroy();
      v6 = 0;
      MEMORY[0x1DA72CB90](v79, -1, -1);
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

    goto LABEL_10;
  }

  v11 = a4;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0F68);
  v13 = v6;
  v14 = a3;

  v15 = sub_1D917741C();
  v16 = sub_1D9178CFC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = a1;
    v18 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82[0] = v78;
    *v18 = 136316419;
    v76 = v16;
    v19 = sub_1D8EAEED0();
    v21 = sub_1D8CFA924(v19, v20, v82);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    *(v18 + 24) = sub_1D8CFA924(v17, a2, v82);
    *(v18 + 32) = 2160;
    *(v18 + 34) = 1752392040;
    *(v18 + 42) = 2081;
    v81 = a3;
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB57D0, &qword_1D9190A98);
    v23 = sub_1D917826C();
    v25 = sub_1D8CFA924(v23, v24, v82);

    *(v18 + 44) = v25;
    *(v18 + 52) = 2082;
    swift_getErrorValue();
    v26 = sub_1D9179D2C();
    v28 = sub_1D8CFA924(v26, v27, v82);
    v10 = &OBJC_METACLASS____TtC18PodcastsFoundation27PodcastEpisodeRelationships;

    *(v18 + 54) = v28;
    _os_log_impl(&dword_1D8CEC000, v15, v76, "%s ICContentKeySession failed to process key for: %{private,mask.hash}s, with delivery response %{private,mask.hash}s and error %{public}s", v18, 0x3Eu);
    swift_arrayDestroy();
    v6 = a4;
    MEMORY[0x1DA72CB90](v78, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  if (v10[98].cache != -1)
  {
    swift_once();
  }

  v40 = sub_1D917744C();
  __swift_project_value_buffer(v40, qword_1EDCD0F68);
  v41 = a3;

  v42 = sub_1D917741C();
  v43 = sub_1D9178D1C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v82[0] = v45;
    *v44 = 136315651;
    v46 = sub_1D8EAEED0();
    v48 = sub_1D8CFA924(v46, v47, v82);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2160;
    *(v44 + 14) = 1752392040;
    *(v44 + 22) = 2081;
    v81 = a3;
    v49 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB57D0, &qword_1D9190A98);
    v50 = sub_1D917826C();
    v52 = sub_1D8CFA924(v50, v51, v82);

    *(v44 + 24) = v52;
    _os_log_impl(&dword_1D8CEC000, v42, v43, "%s Setting currentResponse=%{private,mask.hash}s.", v44, 0x20u);
    swift_arrayDestroy();
    v53 = v45;
    v6 = a4;
    MEMORY[0x1DA72CB90](v53, -1, -1);
    MEMORY[0x1DA72CB90](v44, -1, -1);
  }

  v54 = v41;
  v55 = sub_1D8EB04FC(a3);
  swift_beginAccess();
  v56 = *(v5 + 48);
  *(v5 + 48) = v55;

  v57 = (v5 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  v58 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  if (v58)
  {
    v59 = v57[1];

    sub_1D8D1F93C(v58, v59);
    v60 = sub_1D917741C();
    v61 = sub_1D9178CEC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v81 = v63;
      *v62 = 136315138;
      v64 = sub_1D8EAEED0();
      v66 = sub_1D8CFA924(v64, v65, &v81);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_1D8CEC000, v60, v61, "%s Calling completion handler.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x1DA72CB90](v63, -1, -1);
      MEMORY[0x1DA72CB90](v62, -1, -1);
    }

    v58(v6);
    sub_1D8D15664(v58, v59);
    v67 = *v57;
    v68 = v57[1];
    *v57 = 0;
    v57[1] = 0;
    sub_1D8D15664(v67, v68);
  }

  else
  {

    v69 = sub_1D917741C();
    v70 = sub_1D9178CEC();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v81 = v72;
      *v71 = 136315138;
      v73 = sub_1D8EAEED0();
      v75 = sub_1D8CFA924(v73, v74, &v81);

      *(v71 + 4) = v75;
      _os_log_impl(&dword_1D8CEC000, v69, v70, "%s No completion handler found.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x1DA72CB90](v72, -1, -1);
      MEMORY[0x1DA72CB90](v71, -1, -1);
    }
  }
}
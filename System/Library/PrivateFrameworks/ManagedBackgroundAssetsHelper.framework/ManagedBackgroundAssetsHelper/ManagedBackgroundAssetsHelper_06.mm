uint64_t sub_1D3077A84()
{
  v2 = *(*v1 + 48);
  *(*v1 + 88) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D30E7030;
  }

  else
  {
    v3 = sub_1D3077BC8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3077BC8()
{
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[8];
  v3 = v0[9];
  if (EnumCaseMultiPayload == 38)
  {
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3065284(v2, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v3, v5, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  v4 = v0[1];

  return v4();
}

uint64_t Helper.Proxy.uninstallCertificate(forRole:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = type metadata accessor for Helper.Message(0);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = type metadata accessor for Helper.Reply(0);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 80) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3077E7C, 0, 0);
}

uint64_t sub_1D3077E7C()
{
  v15 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E696E676973;
    }

    else
    {
      v7 = 0x6974707972636E65;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEA00000000006E6FLL;
    }

    v9 = sub_1D2FFEA04(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Uninstall certificate for role: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38B3760](v6, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  **(v0 + 32) = *(v0 + 80);
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_1D3078080;
  v11 = *(v0 + 56);
  v12 = *(v0 + 32);

  return sub_1D3068FD4(v11, v12);
}

uint64_t sub_1D3078080()
{
  v2 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D30E7044;
  }

  else
  {
    v3 = sub_1D30781C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D30781C4()
{
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[6];
  v3 = v0[7];
  if (EnumCaseMultiPayload == 39)
  {
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    sub_1D3065284(v2, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v3, v5, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  v4 = v0[1];

  return v4();
}

uint64_t Helper.Proxy.allAppReviewRecords()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for Helper.Message(0);
  v1[4] = swift_task_alloc();
  v1[5] = type metadata accessor for Helper.Reply(0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307846C, 0, 0);
}

uint64_t sub_1D307846C()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "All App Review records", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D30785D4;
  v6 = v0[7];
  v7 = v0[4];

  return sub_1D3068FD4(v6, v7);
}

uint64_t sub_1D30785D4()
{
  v2 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D30E7044;
  }

  else
  {
    v3 = sub_1D3078718;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3078718()
{
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[6];
  v3 = v0[7];
  if (EnumCaseMultiPayload == 17)
  {
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    v4 = *v2;

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v3, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);

    v8 = v0[1];

    return v8();
  }
}

uint64_t Helper.Proxy.addAppReviewRecord(ofAppWithBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for Helper.Message(0);
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for Helper.Reply(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30789E8, 0, 0);
}

uint64_t sub_1D30789E8()
{
  v15 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1D2FFEA04(v5, v4, &v14);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Add App Review record of app with bundle ID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v8 = v0[6];
  v9 = v0[3];
  *v8 = v0[2];
  v8[1] = v9;
  swift_storeEnumTagMultiPayload();

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1D3078BD0;
  v11 = v0[9];
  v12 = v0[6];

  return sub_1D3068FD4(v11, v12);
}

uint64_t sub_1D3078BD0()
{
  v2 = *(*v1 + 48);
  *(*v1 + 88) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D30E7030;
  }

  else
  {
    v3 = sub_1D3078D14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3078D14()
{
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[8];
  v3 = v0[9];
  if (EnumCaseMultiPayload == 40)
  {
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3065284(v2, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v3, v5, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  v4 = v0[1];

  return v4();
}

uint64_t Helper.Proxy.removeAppReviewRecord(ofAppWithBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for Helper.Message(0);
  v4[7] = swift_task_alloc();
  v4[8] = type metadata accessor for Helper.Reply(0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3078FC0, 0, 0);
}

uint64_t sub_1D3078FC0()
{
  v15 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1D2FFEA04(v5, v4, &v14);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Remove App Review record of app with bundle ID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v8 = v0[7];
  v9 = v0[4];
  *v8 = v0[3];
  v8[1] = v9;
  swift_storeEnumTagMultiPayload();

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_1D30791A8;
  v11 = v0[10];
  v12 = v0[7];

  return sub_1D3068FD4(v11, v12);
}

uint64_t sub_1D30791A8()
{
  v2 = *(*v1 + 56);
  *(*v1 + 96) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D30794C0;
  }

  else
  {
    v3 = sub_1D30792EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D30792EC()
{
  sub_1D3058338(v0[10], v0[9], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 18)
  {
    v1 = v0[9];
    v2 = v0[2];
    sub_1D3065284(v0[10], type metadata accessor for Helper.Reply);
    v3 = v1[1];
    *v2 = *v1;
    v2[1] = v3;
  }

  else
  {
    v5 = v0[10];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v5, v6, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v5, type metadata accessor for Helper.Reply);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D30794C0()
{

  v1 = *(v0 + 8);

  return v1();
}

void Helper.Proxy.path(toFileAt:inAssetPackWithGlobalID:)(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a1;
  v78 = a3;
  v77 = type metadata accessor for Helper.PathInAssetPackLookupResult(0);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A778, &qword_1D30F5890);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v73 = &v69 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v69 - v10;
  v83 = type metadata accessor for Helper.Message(0);
  MEMORY[0x1EEE9AC00](v83);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Helper.Reply(0);
  v13 = MEMORY[0x1EEE9AC00](v79);
  v80 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v69 - v15;
  v16 = sub_1D30E8D9C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = a2[1];
  v22 = a2[3];
  v89 = a2[2];
  v90 = v20;
  v23 = a2[4];
  v24 = a2[5];
  v92 = v23;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v25 = sub_1D30E8B3C();
  __swift_project_value_buffer(v25, qword_1EE313F18);
  v26 = sub_1D30E928C();
  v27 = *(v17 + 16);
  v85 = v17 + 16;
  v87 = v27;
  v27(v19, v93, v16);

  v28 = sub_1D30E8B1C();

  v82 = v26;
  v29 = os_log_type_enabled(v28, v26);
  v91 = v24;
  v30 = v17;
  v71 = v17;
  if (v29)
  {
    v31 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v100 = v70;
    *v31 = 136446466;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v69 = v28;
    v32 = sub_1D30E977C();
    v34 = v33;
    (*(v30 + 8))(v19, v16);
    v35 = sub_1D2FFEA04(v32, v34, &v100);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    v94 = v90;
    v95 = v21;
    v96 = v89;
    v97 = v22;
    v98 = v92;
    v99 = v91;

    v36 = AssetPackRecord.GlobalID.description.getter();
    v38 = v37;

    v39 = sub_1D2FFEA04(v36, v38, &v100);
    v40 = v88;

    *(v31 + 14) = v39;
    v41 = v69;
    _os_log_impl(&dword_1D2FD9000, v69, v82, "Path to file at: %{public}s in asset pack with global ID: %{public}s", v31, 0x16u);
    v42 = v70;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v42, -1, -1);
    v43 = v31;
    v44 = v92;
    MEMORY[0x1D38B3760](v43, -1, -1);

    v45 = v16;
  }

  else
  {

    (*(v17 + 8))(v19, v16);
    v45 = v16;
    v44 = v92;
    v40 = v88;
  }

  v81 = v45;
  v46 = v86;
  os_unfair_lock_lock(v86 + 10);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498);
  v48 = &v12[*(v47 + 48)];
  v49 = *(v47 + 64);
  v87(v12, v93, v45);
  v50 = v89;
  *v48 = v90;
  *(v48 + 1) = v21;
  *(v48 + 2) = v50;
  *(v48 + 3) = v22;
  *(v48 + 4) = v44;
  *(v48 + 5) = v91;

  *&v12[v49] = sub_1D3042D44(v51);
  swift_storeEnumTagMultiPayload();
  v52 = v84;
  sub_1D3068030(v12, v40);
  sub_1D3065284(v12, type metadata accessor for Helper.Message);
  os_unfair_lock_unlock(v46 + 10);
  if (!v52)
  {
    v53 = v80;
    v54 = v81;
    sub_1D3058338(v40, v80, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      v55 = v75;
      sub_1D30E6F78(v53, v75, &qword_1EC74A778, &qword_1D30F5890);
      v56 = v73;
      sub_1D302B0DC(v55, v73, &qword_1EC74A778, &qword_1D30F5890);
      v57 = v77;
      v93 = *(v76 + 48);
      if (v93(v56, 1, v77) == 1)
      {
        sub_1D3065284(v88, type metadata accessor for Helper.Reply);
        sub_1D2FF14DC(v56, &qword_1EC74A778, &qword_1D30F5890);
        v58 = v72;
        v59 = v87;
      }

      else
      {
        v61 = v56;
        v62 = v74;
        sub_1D3056830(v61, v74, type metadata accessor for Helper.PathInAssetPackLookupResult);
        v63 = (v62 + *(v57 + 20));
        v64 = v63[1];
        if (v64)
        {
          v65 = *v63;

          v66 = v86;
          os_unfair_lock_lock(v86 + 10);
          v67 = sub_1D30E7844(v65, v64);
          sub_1D3067414(v67, v92, v91);
          os_unfair_lock_unlock(v66 + 10);
          v54 = v81;
        }

        sub_1D3065284(v74, type metadata accessor for Helper.PathInAssetPackLookupResult);
        sub_1D3065284(v88, type metadata accessor for Helper.Reply);
        v58 = v72;
        v59 = v87;
      }

      sub_1D30E6F78(v55, v58, &qword_1EC74A778, &qword_1D30F5890);
      if (v93(v58, 1, v57) == 1)
      {
        sub_1D2FF14DC(v58, &qword_1EC74A778, &qword_1D30F5890);
        v68 = 1;
      }

      else
      {
        v59(v78, v58, v54);
        sub_1D3065284(v58, type metadata accessor for Helper.PathInAssetPackLookupResult);
        v68 = 0;
      }

      (*(v71 + 56))(v78, v68, 1, v54);
    }

    else
    {
      sub_1D3065284(v53, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError(0);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      sub_1D3058338(v40, v60, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D3065284(v40, type metadata accessor for Helper.Reply);
    }
  }
}

void Helper.Proxy.path(toFileAt:forAppWithBundleID:teamID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v103 = a4;
  v110 = a2;
  v111 = a1;
  v95 = a6;
  v94 = type metadata accessor for Helper.PathForAppLookupResult(0);
  v97 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v87[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A768, &qword_1D30F5880);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v87[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v93 = &v87[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v87[-v17];
  v102 = type metadata accessor for Helper.Message(0);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v87[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = type metadata accessor for Helper.Reply(0);
  v19 = MEMORY[0x1EEE9AC00](v98);
  v99 = &v87[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v87[-v21];
  v106 = sub_1D30E8D9C();
  v23 = *(v106 - 8);
  v24 = MEMORY[0x1EEE9AC00](v106);
  v26 = &v87[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v87[-v27];
  v100 = v23;
  v104 = a5;
  v92 = v14;
  v109 = v22;
  if (a5)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v29 = sub_1D30E8B3C();
    __swift_project_value_buffer(v29, qword_1EE313F18);
    v30 = sub_1D30E928C();
    v31 = *(v23 + 16);
    v107 = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v108 = v31;
    v32 = v106;
    v31(v28, v111, v106);

    v33 = v104;

    v34 = sub_1D30E8B1C();

    if (os_log_type_enabled(v34, v30))
    {
      v35 = swift_slowAlloc();
      v90 = v7;
      v36 = v35;
      v89 = swift_slowAlloc();
      v112 = v89;
      *v36 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v37 = sub_1D30E977C();
      v88 = v30;
      v39 = v38;
      (*(v23 + 8))(v28, v32);
      v40 = sub_1D2FFEA04(v37, v39, &v112);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_1D2FFEA04(v110, a3, &v112);
      *(v36 + 22) = 2082;
      v41 = v103;
      *(v36 + 24) = sub_1D2FFEA04(v103, v33, &v112);
      _os_log_impl(&dword_1D2FD9000, v34, v88, "Path to file at: %{public}s for app with bundle ID: %{public}s team ID: %{public}s", v36, 0x20u);
      v42 = v89;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v42, -1, -1);
      v43 = v36;
      v7 = v90;
      MEMORY[0x1D38B3760](v43, -1, -1);

      v44 = v33;
      goto LABEL_14;
    }

    (*(v23 + 8))(v28, v32);
    v44 = v33;
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v45 = sub_1D30E8B3C();
    __swift_project_value_buffer(v45, qword_1EE313F18);
    v46 = sub_1D30E928C();
    v47 = v100;
    v48 = *(v100 + 16);
    v107 = (v100 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v108 = v48;
    v49 = v106;
    v48(v26, v111, v106);

    v50 = sub_1D30E8B1C();

    if (os_log_type_enabled(v50, v46))
    {
      v51 = swift_slowAlloc();
      v90 = v7;
      v52 = v51;
      v89 = swift_slowAlloc();
      v112 = v89;
      *v52 = 136446466;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v53 = sub_1D30E977C();
      v55 = v54;
      (*(v47 + 8))(v26, v49);
      v56 = sub_1D2FFEA04(v53, v55, &v112);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2082;
      *(v52 + 14) = sub_1D2FFEA04(v110, a3, &v112);
      _os_log_impl(&dword_1D2FD9000, v50, v46, "Path to file at: %{public}s for app with bundle ID: %{public}s", v52, 0x16u);
      v57 = v89;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v57, -1, -1);
      v58 = v52;
      v7 = v90;
      MEMORY[0x1D38B3760](v58, -1, -1);
    }

    else
    {

      (*(v47 + 8))(v26, v49);
    }

    v32 = v49;
    v44 = v104;
  }

  v41 = v103;
LABEL_14:
  os_unfair_lock_lock((v7 + 40));
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
  v60 = v101;
  v61 = &v101[v59[12]];
  v62 = &v101[v59[16]];
  v63 = v59[20];
  v108(v101, v111, v32);
  *v61 = v110;
  v61[1] = a3;
  *v62 = v41;
  v62[1] = v44;
  v64 = *(v7 + 88);

  *(v60 + v63) = sub_1D3042D44(v64);
  swift_storeEnumTagMultiPayload();
  v65 = v109;
  v66 = v105;
  sub_1D3068030(v60, v109);
  sub_1D3065284(v60, type metadata accessor for Helper.Message);
  os_unfair_lock_unlock((v7 + 40));
  if (!v66)
  {
    v67 = v32;
    v68 = v99;
    sub_1D3058338(v65, v99, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      v69 = v7;
      v70 = v96;
      sub_1D30E6F78(v68, v96, &qword_1EC74A768, &qword_1D30F5880);
      v71 = v93;
      sub_1D302B0DC(v70, v93, &qword_1EC74A768, &qword_1D30F5880);
      v72 = v97 + 48;
      v73 = *(v97 + 48);
      v74 = v94;
      if (v73(v71, 1, v94) == 1)
      {
        sub_1D3065284(v109, type metadata accessor for Helper.Reply);
        sub_1D2FF14DC(v71, &qword_1EC74A768, &qword_1D30F5880);
        v75 = v92;
      }

      else
      {
        v77 = v91;
        sub_1D3056830(v71, v91, type metadata accessor for Helper.PathForAppLookupResult);
        v78 = &v77[*(v74 + 24)];
        v79 = v78[1];
        if (v79)
        {
          v97 = v72;
          v80 = &v77[*(v74 + 20)];
          v81 = *v80;
          v82 = v80[1];
          v83 = *v78;

          os_unfair_lock_lock(v69 + 10);
          v84 = sub_1D30E7844(v83, v79);
          sub_1D3067414(v84, v81, v82);
          os_unfair_lock_unlock(v69 + 10);
          v70 = v96;
        }

        sub_1D3065284(v109, type metadata accessor for Helper.Reply);
        sub_1D3065284(v77, type metadata accessor for Helper.PathForAppLookupResult);
        v75 = v92;
        v67 = v106;
      }

      v85 = v108;
      sub_1D30E6F78(v70, v75, &qword_1EC74A768, &qword_1D30F5880);
      if (v73(v75, 1, v74) == 1)
      {
        sub_1D2FF14DC(v75, &qword_1EC74A768, &qword_1D30F5880);
        v86 = 1;
      }

      else
      {
        v85(v95, v75, v67);
        sub_1D3065284(v75, type metadata accessor for Helper.PathForAppLookupResult);
        v86 = 0;
      }

      (*(v100 + 56))(v95, v86, 1, v67);
    }

    else
    {
      sub_1D3065284(v68, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError(0);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      sub_1D3058338(v65, v76, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D3065284(v65, type metadata accessor for Helper.Reply);
    }
  }
}

uint64_t Helper.Proxy.path(toStagingDirectoryForAppWithBundleID:teamID:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v64 = a3;
  v58 = a5;
  v59 = type metadata accessor for Helper.PathToStagingDirectoryLookupResult(0);
  MEMORY[0x1EEE9AC00](v59);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Helper.Message(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for Helper.Reply(0);
  v15 = MEMORY[0x1EEE9AC00](v61);
  v60 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v55 - v17;
  if (a4)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v18 = sub_1D30E8B3C();
    __swift_project_value_buffer(v18, qword_1EE313F18);
    v19 = sub_1D30E928C();

    v20 = sub_1D30E8B1C();

    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v57 = v11;
      v22 = v21;
      v23 = swift_slowAlloc();
      v56 = v6;
      v24 = v23;
      v65 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_1D2FFEA04(a1, a2, &v65);
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_1D2FFEA04(v64, a4, &v65);
      _os_log_impl(&dword_1D2FD9000, v20, v19, "Path to staging directory for app with bundle ID: %{public}s team ID: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      v25 = v24;
      v6 = v56;
      MEMORY[0x1D38B3760](v25, -1, -1);
      v26 = v22;
      v11 = v57;
LABEL_10:
      MEMORY[0x1D38B3760](v26, -1, -1);
    }
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v27 = sub_1D30E8B3C();
    __swift_project_value_buffer(v27, qword_1EE313F18);
    v28 = sub_1D30E928C();

    v20 = sub_1D30E8B1C();

    if (os_log_type_enabled(v20, v28))
    {
      v29 = swift_slowAlloc();
      v56 = v6;
      v30 = v29;
      v31 = swift_slowAlloc();
      v57 = v11;
      v32 = v31;
      v65 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1D2FFEA04(a1, a2, &v65);
      _os_log_impl(&dword_1D2FD9000, v20, v28, "Path to staging directory for app with bundle ID: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      v33 = v32;
      v11 = v57;
      MEMORY[0x1D38B3760](v33, -1, -1);
      v26 = v30;
      v6 = v56;
      goto LABEL_10;
    }
  }

  *v14 = a1;
  v14[1] = a2;
  v14[2] = v64;
  v14[3] = a4;
  swift_storeEnumTagMultiPayload();

  v34 = v62;
  v35 = v63;
  sub_1D3068030(v14, v63);
  result = sub_1D3065284(v14, type metadata accessor for Helper.Message);
  if (v34)
  {
    return result;
  }

  v37 = v60;
  sub_1D3058338(v35, v60, type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_1D3056830(v37, v11, type metadata accessor for Helper.PathToStagingDirectoryLookupResult);
    v38 = &v11[*(v59 + 20)];
    v39 = v38[1];
    if (!v39)
    {
LABEL_25:
      sub_1D3065284(v35, type metadata accessor for Helper.Reply);
      v54 = sub_1D30E8D9C();
      (*(*(v54 - 8) + 16))(v58, v11, v54);
      v43 = type metadata accessor for Helper.PathToStagingDirectoryLookupResult;
      v44 = v11;
      return sub_1D3065284(v44, v43);
    }

    v40 = v6;
    v41 = *v38;

    os_unfair_lock_lock((v40 + 40));
    result = sub_1D30E7844(v41, v39);
    v45 = *(v40 + 64);
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
    }

    else
    {
      v47 = *(v40 + 72);
      if (v47 < v46)
      {
        if (v47 + 0x4000000000000000 < 0)
        {
LABEL_30:
          __break(1u);
          return result;
        }

        v48 = result;
        if (2 * v47 <= v46)
        {
          v49 = (v45 + 1);
        }

        else
        {
          v49 = (2 * v47);
        }

        sub_1D30409E0(v49);
        v45 = *(v40 + 64);
        result = v48;
      }

      v50 = *(v40 + 48) + 16 * v45;
      *v50 = result;
      *(v50 + 8) = 0;
      v51 = *(v40 + 64);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (!v52)
      {
        *(v40 + 64) = v53;
        os_unfair_lock_unlock((v40 + 40));
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1D3065284(v37, type metadata accessor for Helper.Reply);
  type metadata accessor for HelperError(0);
  sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
  swift_allocError();
  sub_1D3058338(v35, v42, type metadata accessor for Helper.Reply);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v43 = type metadata accessor for Helper.Reply;
  v44 = v35;
  return sub_1D3065284(v44, v43);
}

uint64_t Helper.Proxy.copyItem(at:intoStagingDirectoryForAppWithBundleID:teamID:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a2;
  v65 = a4;
  v68 = a1;
  v63 = type metadata accessor for Helper.Message(0);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = type metadata accessor for Helper.Reply(0);
  v8 = MEMORY[0x1EEE9AC00](v58);
  v10 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v54[-v11];
  v12 = sub_1D30E8D9C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54[-v17];
  v62 = a5;
  if (a5)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v19 = sub_1D30E8B3C();
    __swift_project_value_buffer(v19, qword_1EE313F18);
    v20 = sub_1D30E928C();
    v21 = *(v13 + 16);
    v60 = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v61 = v21;
    v22 = v12;
    v21(v18, v68, v12);

    v23 = v62;

    v24 = sub_1D30E8B1C();

    if (os_log_type_enabled(v24, v20))
    {
      v25 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v69 = v57;
      *v25 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v56 = v24;
      v26 = sub_1D30E977C();
      v55 = v20;
      v27 = v10;
      v29 = v28;
      (*(v13 + 8))(v18, v22);
      v30 = sub_1D2FFEA04(v26, v29, &v69);
      v10 = v27;

      *(v25 + 4) = v30;
      *(v25 + 12) = 2082;
      v31 = v64;
      *(v25 + 14) = sub_1D2FFEA04(v64, a3, &v69);
      *(v25 + 22) = 2082;
      v32 = v65;
      *(v25 + 24) = sub_1D2FFEA04(v65, v23, &v69);
      v33 = v56;
      _os_log_impl(&dword_1D2FD9000, v56, v55, "Copy item at: %{public}s into staging directory for app with bundle ID: %{public}s team ID: %{public}s", v25, 0x20u);
      v34 = v57;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v34, -1, -1);
      MEMORY[0x1D38B3760](v25, -1, -1);

      goto LABEL_13;
    }

    (*(v13 + 8))(v18, v22);
  }

  else
  {
    v57 = v10;
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v35 = sub_1D30E8B3C();
    __swift_project_value_buffer(v35, qword_1EE313F18);
    v36 = sub_1D30E928C();
    v37 = *(v13 + 16);
    v60 = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v61 = v37;
    v37(v16, v68, v12);

    v38 = sub_1D30E8B1C();

    if (os_log_type_enabled(v38, v36))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v69 = v40;
      *v39 = 136446466;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v41 = sub_1D30E977C();
      LODWORD(v56) = v36;
      v43 = v42;
      (*(v13 + 8))(v16, v12);
      v44 = sub_1D2FFEA04(v41, v43, &v69);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2082;
      v31 = v64;
      *(v39 + 14) = sub_1D2FFEA04(v64, a3, &v69);
      _os_log_impl(&dword_1D2FD9000, v38, v56, "Copy item at: %{public}s into staging directory for app with bundle ID: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v40, -1, -1);
      MEMORY[0x1D38B3760](v39, -1, -1);

      v10 = v57;
      v22 = v12;
      v23 = v62;
      v32 = v65;
      goto LABEL_13;
    }

    (*(v13 + 8))(v16, v12);
    v10 = v57;
    v22 = v12;
    v23 = v62;
  }

  v31 = v64;
  v32 = v65;
LABEL_13:
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
  v46 = v59;
  v47 = &v59[*(v45 + 48)];
  v48 = &v59[*(v45 + 64)];
  v61(v59, v68, v22);
  *v47 = v31;
  v47[1] = a3;
  *v48 = v32;
  v48[1] = v23;
  swift_storeEnumTagMultiPayload();

  v49 = v66;
  sub_1D3068030(v46, v67);
  result = sub_1D3065284(v46, type metadata accessor for Helper.Message);
  if (!v49)
  {
    sub_1D3058338(v67, v10, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_1D3065284(v67, type metadata accessor for Helper.Reply);
      v51 = v10;
    }

    else
    {
      sub_1D3065284(v10, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError(0);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      v52 = v67;
      sub_1D3058338(v67, v53, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v51 = v52;
    }

    return sub_1D3065284(v51, type metadata accessor for Helper.Reply);
  }

  return result;
}

uint64_t Helper.Proxy.pathToContainer()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for Helper.Message(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for Helper.Reply(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307BA84, 0, 0);
}

uint64_t sub_1D307BA84()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Path to container", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D307BBEC;
  v6 = v0[8];
  v7 = v0[5];

  return sub_1D3068FD4(v6, v7);
}

uint64_t sub_1D307BBEC()
{
  v2 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D3075704;
  }

  else
  {
    v3 = sub_1D307BD30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D307BD30()
{
  sub_1D3058338(v0[8], v0[7], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 22)
  {
    v1 = v0[7];
    v2 = v0[2];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    v3 = sub_1D30E8D9C();
    (*(*(v3 - 8) + 32))(v2, v1, v3);
  }

  else
  {
    v5 = v0[8];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v5, v6, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v5, type metadata accessor for Helper.Reply);
  }

  v4 = v0[1];

  return v4();
}

uint64_t Helper.Proxy.contentsOfDirectory(inContainerAt:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for Helper.Message(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for Helper.Reply(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D30E8D9C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307C064, 0, 0);
}

uint64_t sub_1D307C064()
{
  v27 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_1D30E8B3C();
  __swift_project_value_buffer(v5, qword_1EE313F18);
  v6 = sub_1D30E928C();
  v7 = *(v2 + 16);
  v7(v1, v4, v3);
  v8 = sub_1D30E8B1C();
  v9 = os_log_type_enabled(v8, v6);
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136446210;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v14 = v7;
    v15 = sub_1D30E977C();
    v24 = v6;
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v7 = v14;
    v19 = sub_1D2FFEA04(v18, v17, &v26);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1D2FD9000, v8, v24, "Contents of directory in container at: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1D38B3760](v25, -1, -1);
    MEMORY[0x1D38B3760](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v7(v0[5], v0[2], v0[9]);
  swift_storeEnumTagMultiPayload();
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_1D307C314;
  v21 = v0[8];
  v22 = v0[5];

  return sub_1D3068FD4(v21, v22);
}

uint64_t sub_1D307C314()
{
  v2 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D307C66C;
  }

  else
  {
    v3 = sub_1D307C458;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D307C458()
{
  sub_1D3058338(v0[8], v0[7], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 23)
  {
    v1 = v0[7];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    v2 = *v1;

    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v5 = v0[8];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v5, v6, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v5, type metadata accessor for Helper.Reply);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D307C66C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Helper.Proxy.copyItem(at:intoContainerTo:attributingToBundleWithID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for Helper.Message(0);
  v5[8] = swift_task_alloc();
  v5[9] = type metadata accessor for Helper.Reply(0);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v6 = sub_1D30E881C();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v7 = sub_1D30E88CC();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for FilePath.ResolutionError(0);
  v5[21] = swift_task_alloc();
  v8 = sub_1D30E8D9C();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307C994, 0, 0);
}

uint64_t sub_1D307C994()
{
  v90 = v0;
  if (*(v0 + 40))
  {
    v85 = *(v0 + 40);
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = sub_1D30E8B3C();
    __swift_project_value_buffer(v7, qword_1EE313F18);
    v8 = sub_1D30E928C();
    v9 = *(v3 + 16);
    v9(v1, v6, v4);
    v88 = v9;
    v9(v2, v5, v4);

    v10 = sub_1D30E8B1C();

    v83 = v8;
    v11 = os_log_type_enabled(v10, v8);
    v12 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    if (v11)
    {
      v81 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v89[0] = v80;
      *v16 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      log = v10;
      v17 = sub_1D30E977C();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = sub_1D2FFEA04(v17, v19, v89);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2082;
      v22 = sub_1D30E977C();
      v24 = v23;
      v20(v12, v15);
      v25 = sub_1D2FFEA04(v22, v24, v89);

      *(v16 + 14) = v25;
      *(v16 + 22) = 2082;
      *(v16 + 24) = sub_1D2FFEA04(v81, v85, v89);
      _os_log_impl(&dword_1D2FD9000, log, v83, "Copy item at: %{public}s into container to: %{public}s attributing to bundle with ID: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v80, -1, -1);
      MEMORY[0x1D38B3760](v16, -1, -1);
    }

    else
    {

      v20 = *(v14 + 8);
      v20(v12, v15);
      v20(v13, v15);
    }
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 208);
    v27 = *(v0 + 216);
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v31 = *(v0 + 16);
    v30 = *(v0 + 24);
    v32 = sub_1D30E8B3C();
    __swift_project_value_buffer(v32, qword_1EE313F18);
    v33 = sub_1D30E928C();
    v34 = *(v28 + 16);
    v34(v27, v31, v29);
    v34(v26, v30, v29);
    v35 = sub_1D30E8B1C();
    v36 = os_log_type_enabled(v35, v33);
    v37 = *(v0 + 208);
    v38 = *(v0 + 216);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    v88 = v34;
    if (v36)
    {
      v41 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v89[0] = v86;
      *v41 = 136446466;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v82 = v33;
      v42 = sub_1D30E977C();
      v84 = v35;
      v44 = v43;
      v20 = *(v39 + 8);
      v20(v38, v40);
      v45 = sub_1D2FFEA04(v42, v44, v89);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v46 = sub_1D30E977C();
      v48 = v47;
      v20(v37, v40);
      v49 = sub_1D2FFEA04(v46, v48, v89);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_1D2FD9000, v84, v82, "Copy item at: %{public}s into container to: %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v86, -1, -1);
      MEMORY[0x1D38B3760](v41, -1, -1);
    }

    else
    {

      v20 = *(v39 + 8);
      v20(v37, v40);
      v20(v38, v40);
    }
  }

  *(v0 + 240) = v20;
  sub_1D302DD9C(*(v0 + 168), *(v0 + 200));
  v87 = v20;
  v50 = *(v0 + 192);
  v51 = *(v0 + 136);
  v52 = *(v0 + 144);
  v53 = *(v0 + 128);
  v55 = *(v0 + 104);
  v54 = *(v0 + 112);
  v56 = *(v0 + 96);
  v88(v50, *(v0 + 200), *(v0 + 176));
  (*(v55 + 104))(v54, *MEMORY[0x1E6968F70], v56);
  sub_1D3040AB4(v50, v54, v53);
  if ((*(v52 + 48))(v53, 1, v51) == 1)
  {
    v57 = *(v0 + 200);
    v58 = *(v0 + 176);
    sub_1D2FF14DC(*(v0 + 128), &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v88(v59, v57, v58);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v87(v57, v58);

    v66 = *(v0 + 8);

    return v66();
  }

  else
  {
    v60 = *(v0 + 144);
    v61 = *(v0 + 136);
    v62 = *(v0 + 120);
    (*(v60 + 32))(*(v0 + 152), *(v0 + 128), v61);
    (*(v60 + 56))(v62, 1, 1, v61);
    v63 = sub_1D30E880C();
    v65 = v64;
    *(v0 + 248) = v63;
    *(v0 + 256) = v64;
    sub_1D2FF14DC(v62, &qword_1EC7493C0, &qword_1D30EF500);
    v68 = *(v0 + 176);
    v69 = *(v0 + 64);
    v71 = *(v0 + 32);
    v70 = *(v0 + 40);
    v72 = *(v0 + 24);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
    v74 = *(v73 + 48);
    v75 = (v69 + *(v73 + 64));
    *v69 = v63;
    v69[1] = v65;
    v88(v69 + v74, v72, v68);
    *v75 = v71;
    v75[1] = v70;
    swift_storeEnumTagMultiPayload();

    sub_1D2FF17B0(v63, v65);
    v76 = swift_task_alloc();
    *(v0 + 264) = v76;
    *v76 = v0;
    v76[1] = sub_1D307D364;
    v77 = *(v0 + 88);
    v78 = *(v0 + 64);

    return sub_1D3068FD4(v77, v78);
  }
}

uint64_t sub_1D307D364()
{
  v2 = *(*v1 + 64);
  *(*v1 + 272) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D307D840;
  }

  else
  {
    v3 = sub_1D307D4A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D307D4A8()
{
  sub_1D3058338(v0[11], v0[10], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[31];
  v20 = v0[30];
  if (EnumCaseMultiPayload == 42)
  {
    v3 = v0[25];
    v4 = v0[22];
    v5 = v0[18];
    v6 = v0[19];
    v7 = v0[17];
    v8 = v0[10];
    v9 = v0[11];
    sub_1D2FF1804(v2, v0[32]);
    sub_1D3065284(v9, type metadata accessor for Helper.Reply);
    (*(v5 + 8))(v6, v7);
    v20(v3, v4);
    sub_1D3065284(v8, type metadata accessor for Helper.Reply);
  }

  else
  {
    v18 = v0[22];
    v19 = v0[25];
    v11 = v0[18];
    v17 = v0[19];
    v12 = v0[17];
    v13 = v0[11];
    v14 = v0[32];
    sub_1D3065284(v0[10], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v13, v15, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D2FF1804(v2, v14);
    sub_1D3065284(v13, type metadata accessor for Helper.Reply);
    (*(v11 + 8))(v17, v12);
    v20(v19, v18);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D307D840()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  sub_1D2FF1804(v0[31], v0[32]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t Helper.Proxy.copyItem(at:outOfContainerTo:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for Helper.Message(0);
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for Helper.Reply(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = sub_1D30E8D9C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307DAE4, 0, 0);
}

uint64_t sub_1D307DAE4()
{
  v41 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_1D30E8B3C();
  __swift_project_value_buffer(v7, qword_1EE313F18);
  v8 = sub_1D30E928C();
  v9 = *(v3 + 16);
  v9(v2, v6, v4);
  v9(v1, v5, v4);
  v10 = sub_1D30E8B1C();
  v11 = os_log_type_enabled(v10, v8);
  v13 = v0[12];
  v12 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  if (v11)
  {
    log = v10;
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40[0] = v39;
    *v16 = 136446466;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v37 = v8;
    v17 = sub_1D30E977C();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1D2FFEA04(v17, v19, v40);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v22 = sub_1D30E977C();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1D2FFEA04(v22, v24, v40);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1D2FD9000, log, v37, "Copy item at: %{public}s out of container to: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v39, -1, -1);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[3];
  v9(v0[6], v0[2], v0[10]);
  v28 = sub_1D30DC350(v27);
  v30 = v29;
  v31 = v0[6];
  v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48));
  *v32 = v28;
  v32[1] = v30;
  swift_storeEnumTagMultiPayload();
  v33 = swift_task_alloc();
  v0[14] = v33;
  *v33 = v0;
  v33[1] = sub_1D307DF00;
  v34 = v0[9];
  v35 = v0[6];

  return sub_1D3068FD4(v34, v35);
}

uint64_t sub_1D307DF00()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D307E238;
  }

  else
  {
    sub_1D3065284(*(v2 + 48), type metadata accessor for Helper.Message);
    v3 = sub_1D307E030;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D307E030()
{
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 43)
  {
    v1 = v0[8];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3065284(v1, type metadata accessor for Helper.Reply);
  }

  else
  {
    v3 = v0[9];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v3, v4, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D307E238()
{
  sub_1D3065284(*(v0 + 48), type metadata accessor for Helper.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Helper.Proxy.moveItem(at:intoContainerTo:attributingToBundleWithID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for Helper.Message(0);
  v5[8] = swift_task_alloc();
  v5[9] = type metadata accessor for Helper.Reply(0);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v6 = sub_1D30E881C();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v7 = sub_1D30E88CC();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for FilePath.ResolutionError(0);
  v5[21] = swift_task_alloc();
  v8 = sub_1D30E8D9C();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307E58C, 0, 0);
}

uint64_t sub_1D307E58C()
{
  v90 = v0;
  if (*(v0 + 40))
  {
    v85 = *(v0 + 40);
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = sub_1D30E8B3C();
    __swift_project_value_buffer(v7, qword_1EE313F18);
    v8 = sub_1D30E928C();
    v9 = *(v3 + 16);
    v9(v1, v6, v4);
    v88 = v9;
    v9(v2, v5, v4);

    v10 = sub_1D30E8B1C();

    v83 = v8;
    v11 = os_log_type_enabled(v10, v8);
    v12 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    if (v11)
    {
      v81 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v89[0] = v80;
      *v16 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      log = v10;
      v17 = sub_1D30E977C();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = sub_1D2FFEA04(v17, v19, v89);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2082;
      v22 = sub_1D30E977C();
      v24 = v23;
      v20(v12, v15);
      v25 = sub_1D2FFEA04(v22, v24, v89);

      *(v16 + 14) = v25;
      *(v16 + 22) = 2082;
      *(v16 + 24) = sub_1D2FFEA04(v81, v85, v89);
      _os_log_impl(&dword_1D2FD9000, log, v83, "Move item at: %{public}s into container to: %{public}s attributing to bundle with ID: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v80, -1, -1);
      MEMORY[0x1D38B3760](v16, -1, -1);
    }

    else
    {

      v20 = *(v14 + 8);
      v20(v12, v15);
      v20(v13, v15);
    }
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 208);
    v27 = *(v0 + 216);
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v31 = *(v0 + 16);
    v30 = *(v0 + 24);
    v32 = sub_1D30E8B3C();
    __swift_project_value_buffer(v32, qword_1EE313F18);
    v33 = sub_1D30E928C();
    v34 = *(v28 + 16);
    v34(v27, v31, v29);
    v34(v26, v30, v29);
    v35 = sub_1D30E8B1C();
    v36 = os_log_type_enabled(v35, v33);
    v37 = *(v0 + 208);
    v38 = *(v0 + 216);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    v88 = v34;
    if (v36)
    {
      v41 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v89[0] = v86;
      *v41 = 136446466;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v82 = v33;
      v42 = sub_1D30E977C();
      v84 = v35;
      v44 = v43;
      v20 = *(v39 + 8);
      v20(v38, v40);
      v45 = sub_1D2FFEA04(v42, v44, v89);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v46 = sub_1D30E977C();
      v48 = v47;
      v20(v37, v40);
      v49 = sub_1D2FFEA04(v46, v48, v89);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_1D2FD9000, v84, v82, "Move item at: %{public}s into container to: %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v86, -1, -1);
      MEMORY[0x1D38B3760](v41, -1, -1);
    }

    else
    {

      v20 = *(v39 + 8);
      v20(v37, v40);
      v20(v38, v40);
    }
  }

  *(v0 + 240) = v20;
  sub_1D302DD9C(*(v0 + 168), *(v0 + 200));
  v87 = v20;
  v50 = *(v0 + 192);
  v51 = *(v0 + 136);
  v52 = *(v0 + 144);
  v53 = *(v0 + 128);
  v55 = *(v0 + 104);
  v54 = *(v0 + 112);
  v56 = *(v0 + 96);
  v88(v50, *(v0 + 200), *(v0 + 176));
  (*(v55 + 104))(v54, *MEMORY[0x1E6968F70], v56);
  sub_1D3040AB4(v50, v54, v53);
  if ((*(v52 + 48))(v53, 1, v51) == 1)
  {
    v57 = *(v0 + 200);
    v58 = *(v0 + 176);
    sub_1D2FF14DC(*(v0 + 128), &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v88(v59, v57, v58);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v87(v57, v58);

    v66 = *(v0 + 8);

    return v66();
  }

  else
  {
    v60 = *(v0 + 144);
    v61 = *(v0 + 136);
    v62 = *(v0 + 120);
    (*(v60 + 32))(*(v0 + 152), *(v0 + 128), v61);
    (*(v60 + 56))(v62, 1, 1, v61);
    v63 = sub_1D30E880C();
    v65 = v64;
    *(v0 + 248) = v63;
    *(v0 + 256) = v64;
    sub_1D2FF14DC(v62, &qword_1EC7493C0, &qword_1D30EF500);
    v68 = *(v0 + 176);
    v69 = *(v0 + 64);
    v71 = *(v0 + 32);
    v70 = *(v0 + 40);
    v72 = *(v0 + 24);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
    v74 = *(v73 + 48);
    v75 = (v69 + *(v73 + 64));
    *v69 = v63;
    v69[1] = v65;
    v88(v69 + v74, v72, v68);
    *v75 = v71;
    v75[1] = v70;
    swift_storeEnumTagMultiPayload();

    sub_1D2FF17B0(v63, v65);
    v76 = swift_task_alloc();
    *(v0 + 264) = v76;
    *v76 = v0;
    v76[1] = sub_1D307EF5C;
    v77 = *(v0 + 88);
    v78 = *(v0 + 64);

    return sub_1D3068FD4(v77, v78);
  }
}

uint64_t sub_1D307EF5C()
{
  v2 = *(*v1 + 64);
  *(*v1 + 272) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D30E7018;
  }

  else
  {
    v3 = sub_1D307F0A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D307F0A0()
{
  sub_1D3058338(v0[11], v0[10], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[31];
  v20 = v0[30];
  if (EnumCaseMultiPayload == 44)
  {
    v3 = v0[25];
    v4 = v0[22];
    v5 = v0[18];
    v6 = v0[19];
    v7 = v0[17];
    v8 = v0[10];
    v9 = v0[11];
    sub_1D2FF1804(v2, v0[32]);
    sub_1D3065284(v9, type metadata accessor for Helper.Reply);
    (*(v5 + 8))(v6, v7);
    v20(v3, v4);
    sub_1D3065284(v8, type metadata accessor for Helper.Reply);
  }

  else
  {
    v18 = v0[22];
    v19 = v0[25];
    v11 = v0[18];
    v17 = v0[19];
    v12 = v0[17];
    v13 = v0[11];
    v14 = v0[32];
    sub_1D3065284(v0[10], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v13, v15, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D2FF1804(v2, v14);
    sub_1D3065284(v13, type metadata accessor for Helper.Reply);
    (*(v11 + 8))(v17, v12);
    v20(v19, v18);
  }

  v10 = v0[1];

  return v10();
}

uint64_t Helper.Proxy.moveItem(at:outOfContainerTo:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for Helper.Message(0);
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for Helper.Reply(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = sub_1D30E8D9C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307F574, 0, 0);
}

uint64_t sub_1D307F574()
{
  v41 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_1D30E8B3C();
  __swift_project_value_buffer(v7, qword_1EE313F18);
  v8 = sub_1D30E928C();
  v9 = *(v3 + 16);
  v9(v2, v6, v4);
  v9(v1, v5, v4);
  v10 = sub_1D30E8B1C();
  v11 = os_log_type_enabled(v10, v8);
  v13 = v0[12];
  v12 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  if (v11)
  {
    log = v10;
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40[0] = v39;
    *v16 = 136446466;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v37 = v8;
    v17 = sub_1D30E977C();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1D2FFEA04(v17, v19, v40);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v22 = sub_1D30E977C();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1D2FFEA04(v22, v24, v40);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1D2FD9000, log, v37, "Move item at: %{public}s out of container to: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v39, -1, -1);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[3];
  v9(v0[6], v0[2], v0[10]);
  v28 = sub_1D30DC350(v27);
  v30 = v29;
  v31 = v0[6];
  v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48));
  *v32 = v28;
  v32[1] = v30;
  swift_storeEnumTagMultiPayload();
  v33 = swift_task_alloc();
  v0[14] = v33;
  *v33 = v0;
  v33[1] = sub_1D307F990;
  v34 = v0[9];
  v35 = v0[6];

  return sub_1D3068FD4(v34, v35);
}

uint64_t sub_1D307F990()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D30E7020;
  }

  else
  {
    sub_1D3065284(*(v2 + 48), type metadata accessor for Helper.Message);
    v3 = sub_1D307FAC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D307FAC0()
{
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 45)
  {
    v1 = v0[8];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3065284(v1, type metadata accessor for Helper.Reply);
  }

  else
  {
    v3 = v0[9];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v3, v4, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  v2 = v0[1];

  return v2();
}

uint64_t Helper.Proxy.moveAssetPack(at:intoContainerTo:forAppWithBundleID:teamID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v112 = a5;
  v127 = a2;
  v128 = a4;
  v119 = a3;
  v129 = a1;
  v107 = type metadata accessor for Helper.Message(0);
  MEMORY[0x1EEE9AC00](v107);
  v108 = (&v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for Helper.Reply(0);
  v8 = MEMORY[0x1EEE9AC00](v104);
  v105 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v100 - v10;
  v11 = sub_1D30E881C();
  v115 = *(v11 - 8);
  v116 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v123 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v100 - v16;
  v17 = sub_1D30E88CC();
  v120 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1D30E8D5C();
  v19 = *(v126 - 8);
  v20 = MEMORY[0x1EEE9AC00](v126);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v100 - v23;
  v25 = sub_1D30E8D9C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v113 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v100 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v100 - v33;
  v124 = a6;
  v125 = v19;
  v117 = v17;
  v122 = v32;
  if (a6)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v35 = sub_1D30E8B3C();
    __swift_project_value_buffer(v35, qword_1EE313F18);
    v36 = sub_1D30E928C();
    v118 = v26;
    v37 = *(v26 + 16);
    v37(v34, v129, v25);
    v38 = *(v19 + 16);
    v39 = v126;
    v106 = v38;
    v38(v24, v127, v126);
    v40 = v128;

    v41 = sub_1D30E8B1C();

    LODWORD(v102) = v36;
    if (os_log_type_enabled(v41, v36))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v130 = v43;
      *v42 = 136446978;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v101 = v41;
      v44 = sub_1D30E977C();
      v103 = v37;
      v46 = v45;
      (*(v118 + 8))(v34, v25);
      v47 = sub_1D2FFEA04(v44, v46, &v130);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2082;
      sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
      v48 = sub_1D30E977C();
      v50 = v49;
      (*(v125 + 8))(v24, v39);
      v51 = sub_1D2FFEA04(v48, v50, &v130);

      *(v42 + 14) = v51;
      *(v42 + 22) = 2082;
      *(v42 + 24) = sub_1D2FFEA04(v119, v40, &v130);
      *(v42 + 32) = 2082;
      v37 = v103;
      *(v42 + 34) = sub_1D2FFEA04(v112, v124, &v130);
      v52 = v101;
      _os_log_impl(&dword_1D2FD9000, v101, v102, "Move asset pack at: %{public}s into container to: %{public}s for app with bundle ID: %{public}s team ID: %{public}s", v42, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v43, -1, -1);
      MEMORY[0x1D38B3760](v42, -1, -1);
    }

    else
    {

      (*(v125 + 8))(v24, v39);
      (*(v118 + 8))(v34, v25);
    }

    v53 = v123;
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v54 = sub_1D30E8B3C();
    __swift_project_value_buffer(v54, qword_1EE313F18);
    v55 = sub_1D30E928C();
    v56 = v26;
    v37 = *(v26 + 16);
    v37(v31, v129, v25);
    v57 = *(v19 + 16);
    v58 = v126;
    v106 = v57;
    v57(v22, v127, v126);
    v59 = v128;

    v60 = sub_1D30E8B1C();

    LODWORD(v118) = v55;
    if (os_log_type_enabled(v60, v55))
    {
      v61 = v56;
      v62 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v130 = v102;
      *v62 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v101 = v60;
      v63 = sub_1D30E977C();
      v103 = v37;
      v65 = v64;
      (*(v61 + 8))(v31, v25);
      v66 = sub_1D2FFEA04(v63, v65, &v130);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2082;
      sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
      v67 = sub_1D30E977C();
      v69 = v68;
      (*(v125 + 8))(v22, v58);
      v70 = sub_1D2FFEA04(v67, v69, &v130);

      *(v62 + 14) = v70;
      *(v62 + 22) = 2082;
      v37 = v103;
      *(v62 + 24) = sub_1D2FFEA04(v119, v59, &v130);
      v71 = v101;
      _os_log_impl(&dword_1D2FD9000, v101, v118, "Move asset pack at: %{public}s into container to: %{public}s for app with bundle ID: %{public}s", v62, 0x20u);
      v72 = v102;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v72, -1, -1);
      MEMORY[0x1D38B3760](v62, -1, -1);
    }

    else
    {

      (*(v125 + 8))(v22, v58);
      (*(v56 + 8))(v31, v25);
    }

    v53 = v123;
  }

  v73 = v129;
  v74 = sub_1D30E8CCC();
  v75 = v121;
  if ((v74 & 1) == 0)
  {
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v37(v82, v73, v122);
    goto LABEL_18;
  }

  v76 = v113;
  v77 = v122;
  v37(v113, v73, v122);
  v78 = v114;
  (*(v115 + 104))(v114, *MEMORY[0x1E6968F70], v116);
  sub_1D3040AB4(v76, v78, v75);
  v79 = v120;
  v80 = v117;
  if ((*(v120 + 48))(v75, 1, v117) == 1)
  {
    sub_1D2FF14DC(v75, &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v37(v81, v73, v77);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v84 = v111;
  (*(v79 + 32))(v111, v75, v80);
  (*(v79 + 56))(v53, 1, 1, v80);
  v85 = v110;
  v86 = sub_1D30E880C();
  if (v85)
  {
    sub_1D2FF14DC(v53, &qword_1EC7493C0, &qword_1D30EF500);
    return (*(v79 + 8))(v84, v80);
  }

  else
  {
    v88 = v86;
    v89 = v87;
    sub_1D2FF14DC(v53, &qword_1EC7493C0, &qword_1D30EF500);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
    v91 = v90[12];
    v92 = v108;
    v93 = (v108 + v90[16]);
    v94 = (v108 + v90[20]);
    *v108 = v88;
    *(v92 + 8) = v89;
    v106(v92 + v91, v127, v126);
    v95 = v128;
    *v93 = v119;
    v93[1] = v95;
    v96 = v124;
    *v94 = v112;
    v94[1] = v96;
    swift_storeEnumTagMultiPayload();

    sub_1D2FF17B0(v88, v89);
    sub_1D3068030(v92, v109);
    sub_1D3065284(v92, type metadata accessor for Helper.Message);
    v97 = v105;
    sub_1D3058338(v109, v105, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      sub_1D2FF1804(v88, v89);
      sub_1D3065284(v109, type metadata accessor for Helper.Reply);
      (*(v120 + 8))(v111, v80);
      return sub_1D3065284(v97, type metadata accessor for Helper.Reply);
    }

    else
    {
      sub_1D3065284(v97, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError(0);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      v98 = v109;
      sub_1D3058338(v109, v99, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D2FF1804(v88, v89);
      sub_1D3065284(v98, type metadata accessor for Helper.Reply);
      return (*(v120 + 8))(v111, v80);
    }
  }
}

uint64_t Helper.Proxy.removeItem(inContainerAt:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for Helper.Message(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for Helper.Reply(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D30E8D9C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3080D58, 0, 0);
}

uint64_t sub_1D3080D58()
{
  v27 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_1D30E8B3C();
  __swift_project_value_buffer(v5, qword_1EE313F18);
  v6 = sub_1D30E928C();
  v7 = *(v2 + 16);
  v7(v1, v4, v3);
  v8 = sub_1D30E8B1C();
  v9 = os_log_type_enabled(v8, v6);
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136446210;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v14 = v7;
    v15 = sub_1D30E977C();
    v24 = v6;
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v7 = v14;
    v19 = sub_1D2FFEA04(v18, v17, &v26);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1D2FD9000, v8, v24, "Remove item in container at: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1D38B3760](v25, -1, -1);
    MEMORY[0x1D38B3760](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v7(v0[5], v0[2], v0[9]);
  swift_storeEnumTagMultiPayload();
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_1D3081008;
  v21 = v0[8];
  v22 = v0[5];

  return sub_1D3068FD4(v21, v22);
}

uint64_t sub_1D3081008()
{
  v2 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D307C66C;
  }

  else
  {
    v3 = sub_1D308114C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D308114C()
{
  sub_1D3058338(v0[8], v0[7], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 47)
  {
    v1 = v0[7];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    sub_1D3065284(v1, type metadata accessor for Helper.Reply);
  }

  else
  {
    v3 = v0[8];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v3, v4, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  v2 = v0[1];

  return v2();
}

uint64_t Helper.Proxy.cleanUp()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for Helper.Message(0);
  v1[4] = swift_task_alloc();
  v1[5] = type metadata accessor for Helper.Reply(0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D308140C, 0, 0);
}

uint64_t sub_1D308140C()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Clean up", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D3081574;
  v6 = v0[7];
  v7 = v0[4];

  return sub_1D3068FD4(v6, v7);
}

uint64_t sub_1D3081574()
{
  v2 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D308188C;
  }

  else
  {
    v3 = sub_1D30816B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D30816B8()
{
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[6];
  v3 = v0[7];
  if (EnumCaseMultiPayload == 24)
  {
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    v4 = *v2;

    v5 = v0[1];
    v6 = v4;
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v3, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);

    v5 = v0[1];
    v6 = 0;
  }

  return v5(v6);
}

uint64_t sub_1D308188C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t Helper.Proxy.eraseDatabase()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for Helper.Message(0);
  v1[4] = swift_task_alloc();
  v1[5] = type metadata accessor for Helper.Reply(0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30819E0, 0, 0);
}

uint64_t sub_1D30819E0()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Erase database", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D3081B48;
  v6 = v0[7];
  v7 = v0[4];

  return sub_1D3068FD4(v6, v7);
}

uint64_t sub_1D3081B48()
{
  v2 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D306D4B8;
  }

  else
  {
    v3 = sub_1D3081C8C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3081C8C()
{
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[6];
  v3 = v0[7];
  if (EnumCaseMultiPayload == 48)
  {
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    sub_1D3065284(v2, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v3, v5, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  v4 = v0[1];

  return v4();
}

uint64_t Helper.Proxy.collectWeeklyAnalytics(bypassingRateLimit:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  *(v2 + 24) = type metadata accessor for Helper.Message(0);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = type metadata accessor for Helper.Reply(0);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3081F38, 0, 0);
}

uint64_t sub_1D3081F38()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Collect weekly analytics bypassing rate limit: %{BOOL}d", v5, 8u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = *(v0 + 32);
  v7 = *(v0 + 80);

  *v6 = v7;
  swift_storeEnumTagMultiPayload();
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1D30820B8;
  v9 = *(v0 + 56);
  v10 = *(v0 + 32);

  return sub_1D3068FD4(v9, v10);
}

uint64_t sub_1D30820B8()
{
  v2 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D308188C;
  }

  else
  {
    v3 = sub_1D30821FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D30821FC()
{
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[6];
  v3 = v0[7];
  if (EnumCaseMultiPayload == 25)
  {
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    v4 = *v2;

    v5 = v0[1];
    v6 = v4;
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v3, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);

    v5 = v0[1];
    v6 = 0;
  }

  return v5(v6);
}

uint64_t Helper.Proxy.appsWereUninstalled(withBundleIDs:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for Helper.Message(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for Helper.Reply(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30824A0, 0, 0);
}

uint64_t sub_1D30824A0()
{
  v15 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = MEMORY[0x1D38B26B0](v4, MEMORY[0x1E69E6158]);
    v9 = sub_1D2FFEA04(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Apps were uninstalled with bundle IDs: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38B3760](v6, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  *v0[5] = v0[2];
  swift_storeEnumTagMultiPayload();

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1D30826A0;
  v11 = v0[8];
  v12 = v0[5];

  return sub_1D3068FD4(v11, v12);
}

uint64_t sub_1D30826A0()
{
  v2 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  sub_1D3065284(v2, type metadata accessor for Helper.Message);
  if (v0)
  {
    v3 = sub_1D30E7048;
  }

  else
  {
    v3 = sub_1D30827E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D30827E4()
{
  sub_1D3058338(v0[8], v0[7], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[7];
  v3 = v0[8];
  if (EnumCaseMultiPayload == 49)
  {
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    sub_1D3065284(v2, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    sub_1D3058338(v3, v5, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  v4 = v0[1];

  return v4();
}

void sub_1D30829BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0A8, &qword_1D30FD1D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = sub_1D30E8BCC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  os_unfair_lock_lock((a2 + 16));
  v10 = atomic_load((a2 + 32));
  v19 = a1;
  if (v10)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v11 = sub_1D30E8B3C();
    __swift_project_value_buffer(v11, qword_1EE313F18);
    v12 = sub_1D30E8B1C();
    v13 = sub_1D30E92BC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D2FD9000, v12, v13, "The session was previously canceled; reestablishing it…", v14, 2u);
      MEMORY[0x1D38B3760](v14, -1, -1);
    }

    sub_1D30E8C2C();

    sub_1D30E8BAC();
    v15 = sub_1D30E8B9C();

    *(a2 + 24) = v15;
    atomic_store(0, (a2 + 32));
    a1 = v19;
  }

  (*(v6 + 16))(v8, a1, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v8, v5);
  type metadata accessor for Helper.Message(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B090, &qword_1D30FD1C0);
  sub_1D3045A34(qword_1EE313E50, type metadata accessor for Helper.Message, &protocol conformance descriptor for Helper.Message);
  sub_1D2FF1768(&qword_1EE3130A8, &qword_1EC74B090, &qword_1D30FD1C0, &protocol conformance descriptor for XPCResult<A>);
  sub_1D30E8BEC();

  os_unfair_lock_unlock((a2 + 16));
}

uint64_t sub_1D3082D74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B090, &qword_1D30FD1C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0B0, &unk_1D30FD1D8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v9 - v6);
  sub_1D302B0DC(a1, v9 - v6, &qword_1EC74B0B0, &unk_1D30FD1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0A8, &qword_1D30FD1D0);
    return sub_1D30E91CC();
  }

  else
  {
    sub_1D30E6F78(v7, v4, &qword_1EC74B090, &qword_1D30FD1C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0A8, &qword_1D30FD1D0);
    return sub_1D30E91DC();
  }
}

uint64_t sub_1D3082F24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D30E8B2C();
}

uint64_t Helper.__allocating_init(testFlightManifestRequest:finishedTestFlightDownloadHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Helper.init(testFlightManifestRequest:finishedTestFlightDownloadHandler:)(a1, a2, a3, a4);
  return v8;
}

void *Helper.init(testFlightManifestRequest:finishedTestFlightDownloadHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v98 = a4;
  v84 = a3;
  v97 = a2;
  v85 = a1;
  v99 = *MEMORY[0x1E69E9840];
  v8 = *v4;
  v9 = sub_1D30E8F3C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D30E8F9C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1D30E881C();
  v13 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = (&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v92 = &v81 - v16;
  v17 = sub_1D30E88CC();
  v18 = *(v17 - 8);
  v94 = v17;
  v95 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v86 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v81 - v21;
  v96 = sub_1D30E8D9C();
  v22 = *(v96 - 8);
  v23 = MEMORY[0x1EEE9AC00](v96);
  v90 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v81 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v81 - v28;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v30 = sub_1D30E8B3C();
  __swift_project_value_buffer(v30, qword_1EE314B60);
  v31 = sub_1D30E928C();
  v32 = sub_1D30E8B1C();
  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    v83 = v27;
    v34 = v13;
    v35 = v29;
    v36 = v7;
    v37 = v22;
    v38 = v8;
    v39 = v33;
    *v33 = 0;
    _os_log_impl(&dword_1D2FD9000, v32, v31, "Init", v33, 2u);
    v40 = v39;
    v8 = v38;
    v22 = v37;
    v7 = v36;
    v29 = v35;
    v13 = v34;
    v6 = v5;
    MEMORY[0x1D38B3760](v40, -1, -1);
  }

  type metadata accessor for ContainerManager();
  swift_allocObject();
  v41 = sub_1D3004A90();
  if (!v6)
  {
    v83 = v8;
    v7[2] = v41;
    type metadata accessor for CertificateManager();
    swift_allocObject();

    v7[3] = sub_1D30366D4(v42);
    v43 = v7[2];

    os_unfair_lock_lock(v43 + 4);
    path = container_get_path();
    os_unfair_lock_unlock(v43 + 4);
    if (path)
    {
      MEMORY[0x1D38B2230](path);

      sub_1D30E8D8C();
      v45 = *(v22 + 2);
      v46 = v90;
      v47 = v22;
      v48 = v96;
      v82 = v45;
      v45(v90, v29, v96);
      v49 = v91;
      (*(v13 + 104))(v91, *MEMORY[0x1E6968F70], v93);
      v50 = v92;
      sub_1D3040AB4(v46, v49, v92);
      v51 = v94;
      v52 = v95;
      if ((*(v95 + 48))(v50, 1, v94) == 1)
      {
        sub_1D2FF14DC(v50, &qword_1EC7493C0, &qword_1D30EF500);
        type metadata accessor for HelperError(0);
        sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
        swift_allocError();
        v82(v53, v29, v48);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v47[1](v29, v48);
      }

      else
      {
        v93 = v29;
        v91 = v47;
        v54 = v89;
        (*(v52 + 32))();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749230, &unk_1D30F2B00);
        v55 = v51;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D30EE910;
        v57 = v52;
        v58 = type metadata accessor for AppReviewRecord(0);
        v59 = sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
        *(inited + 32) = v58;
        *(inited + 40) = v59;
        v60 = type metadata accessor for AssetPackRecord(0);
        v61 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
        *(inited + 48) = v60;
        *(inited + 56) = v61;
        v62 = type metadata accessor for LicenseRecord(0);
        v63 = sub_1D3045A34(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
        v92 = 0;
        v64 = v63;
        v65 = sub_1D30D7C08(1, 3, 1, inited);
        *(v65 + 2) = 3;
        *(v65 + 8) = v62;
        *(v65 + 9) = v64;
        v90 = sub_1D30E8EAC();
        sub_1D30E8FAC();
        sub_1D30E8FFC();
        swift_allocObject();
        sub_1D30E900C();
        sub_1D30DCBD4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD08, &qword_1D30F5D28);
        sub_1D30E8F4C();
        *(swift_allocObject() + 16) = xmmword_1D30EE930;
        (*(v57 + 16))(v86, v54, v55);
        sub_1D30E8F2C();
        sub_1D30E8F5C();
        v66 = v92;
        v67 = sub_1D30E8E8C();
        if (!v66)
        {
          v7[4] = v67;
          v69 = v7[2];
          v70 = v67;
          type metadata accessor for ManifestManager();
          swift_allocObject();

          v71 = v97;

          v72 = sub_1D2FE5AA8(v69, v70, v85, v71);
          v73 = v96;
          v74 = v91;
          v7[5] = v72;
          type metadata accessor for AnalyticsManager();
          swift_allocObject();

          v7[6] = sub_1D30392F0(v75);
          v76 = v7[2];
          v77 = v7[3];
          v78 = v7[4];
          type metadata accessor for LicenseManager();
          swift_allocObject();

          v79 = sub_1D30167E8(v76, v77, v78);
          v80 = v84;
          v7[7] = v79;
          v7[8] = v80;
          v7[9] = v98;

          sub_1D3039470(0);

          (*(v95 + 8))(v89, v94);
          v74[1](v93, v73);
          return v7;
        }

        (*(v95 + 8))(v54, v55);
        v91[1](v93, v96);
      }
    }

    else
    {
      type metadata accessor for ContainerManagerError(0);
      sub_1D3045A34(&qword_1EC749920, type metadata accessor for ContainerManagerError, &unk_1D30F1AC0);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  swift_deallocPartialClassInstance();
  return v7;
}

os_unfair_lock_s *static Helper.newProxy()()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D30E8B3C();
  __swift_project_value_buffer(v0, qword_1EE314B60);
  v1 = sub_1D30E928C();
  v2 = sub_1D30E8B1C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D2FD9000, v2, v1, "New proxy", v3, 2u);
    MEMORY[0x1D38B3760](v3, -1, -1);
  }

  v4 = sub_1D30E8B1C();
  v5 = sub_1D30E92BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v5, "Creating a proxy object for the helper service…", v6, 2u);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  type metadata accessor for Helper.Proxy();
  swift_allocObject();
  return sub_1D3067620();
}

uint64_t Helper.reply(to:auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[148] = v6;
  v7[147] = a6;
  v7[146] = a5;
  v7[145] = a4;
  v7[144] = a3;
  v7[143] = a2;
  v7[142] = a1;
  type metadata accessor for Helper.PathToStagingDirectoryLookupResult(0);
  v7[149] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A768, &qword_1D30F5880);
  v7[150] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A778, &qword_1D30F5890);
  v7[151] = swift_task_alloc();
  v8 = sub_1D30E8D9C();
  v7[152] = v8;
  v7[153] = *(v8 - 8);
  v7[154] = swift_task_alloc();
  v7[155] = swift_task_alloc();
  v7[156] = swift_task_alloc();
  v7[157] = swift_task_alloc();
  v7[158] = swift_task_alloc();
  v7[159] = swift_task_alloc();
  v7[160] = swift_task_alloc();
  v7[161] = swift_task_alloc();
  v7[162] = swift_task_alloc();
  v7[163] = swift_task_alloc();
  type metadata accessor for LicenseRecord.StaticRepresentation(0);
  v7[164] = swift_task_alloc();
  v9 = sub_1D30E8A4C();
  v7[165] = v9;
  v7[166] = *(v9 - 8);
  v7[167] = swift_task_alloc();
  v7[168] = swift_task_alloc();
  type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v7[169] = swift_task_alloc();
  v10 = sub_1D30E8D5C();
  v7[170] = v10;
  v7[171] = *(v10 - 8);
  v7[172] = swift_task_alloc();
  v7[173] = swift_task_alloc();
  type metadata accessor for AssetPackHost(0);
  v7[174] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A860, &qword_1D30F5978);
  v7[175] = swift_task_alloc();
  type metadata accessor for Helper.URLRequestResult(0);
  v7[176] = swift_task_alloc();
  v7[177] = type metadata accessor for Helper.Message(0);
  v7[178] = swift_task_alloc();
  v7[179] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30841F0, 0, 0);
}

uint64_t sub_1D30841F0()
{
  v345 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = v0[179];
  v2 = v0[143];
  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE314B60);
  v4 = sub_1D30E928C();
  sub_1D3058338(v2, v1, type metadata accessor for Helper.Message);
  v5 = sub_1D30E8B1C();
  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[179];
  if (v6)
  {
    v8 = v0[146];
    v9 = v0[145];
    v332 = v0[147];
    v10 = v0[144];
    v11 = swift_slowAlloc();
    v337 = swift_slowAlloc();
    v344 = v337;
    *v11 = 136446722;
    v12 = Helper.Message.description.getter();
    v14 = v13;
    sub_1D3065284(v7, type metadata accessor for Helper.Message);
    v15 = sub_1D2FFEA04(v12, v14, &v344);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2080;
    v0[328] = v10;
    v0[329] = v9;
    v0[330] = v8;
    v0[331] = v332;
    type metadata accessor for audit_token_t(0);
    v16 = sub_1D30E909C();
    v18 = sub_1D2FFEA04(v16, v17, &v344);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Reply to: %{public}s audit token: %{mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v337, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  else
  {

    sub_1D3065284(v7, type metadata accessor for Helper.Message);
  }

  sub_1D3058338(v0[143], v0[178], type metadata accessor for Helper.Message);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v162 = v0[178];
      v164 = *v162;
      v163 = *(v162 + 8);
      v0[183] = v163;
      v165 = *(v162 + 16);
      v166 = *(v162 + 24);
      v0[184] = v166;
      v167 = *(v162 + 32);
      v168 = swift_task_alloc();
      v0[185] = v168;
      *v168 = v0;
      v168[1] = sub_1D3086D24;

      return sub_1D3092D68(v164, v163, v165, v166, v167);
    case 2u:
      v142 = v0[178];
      v144 = *v142;
      v143 = v142[1];
      v0[190] = v143;
      v145 = swift_task_alloc();
      v0[191] = v145;
      *v145 = v0;
      v145[1] = sub_1D308705C;

      return sub_1D30931F4(v144, v143);
    case 3u:
      v155 = v0[178];
      v157 = *v155;
      v156 = v155[1];
      v0[195] = v156;
      v158 = swift_task_alloc();
      v0[196] = v158;
      *v158 = v0;
      v158[1] = sub_1D3087378;

      return sub_1D3093660(v157, v156);
    case 4u:
      v324 = sub_1D3093A00(*v0[178], *(v0[178] + 8), *(v0[178] + 16), *(v0[178] + 24));
      v326 = v325;
      v327 = v0[142];

      *v327 = v324;
      v327[1] = v326;
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 5u:
      v224 = v0[178];
      v226 = *v224;
      v225 = v224[1];
      v0[200] = v225;
      v227 = swift_task_alloc();
      v0[201] = v227;
      *v227 = v0;
      v227[1] = sub_1D3087694;
      v228 = v0[176];

      return sub_1D3093E64(v228, v226, v225);
    case 6u:
      sub_1D3094394(*v0[178], *(v0[178] + 8), v0[144], v0[145], v0[146], v0[147], v0[175]);
      v328 = v0[175];
      v329 = v0[142];

      sub_1D30E6F78(v328, v329, &qword_1EC74A860, &qword_1D30F5978);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 7u:
      v159 = v0[178];
      v160 = *v159;
      v161 = v159[1];
      sub_1D3094C80(*v159, v161, v159[2], v159[3], v159[4], v159[5]);
      type metadata accessor for Helper.Reply(0);
      swift_storeEnumTagMultiPayload();

      sub_1D2FF1804(v160, v161);
      goto LABEL_136;
    case 8u:
      v253 = v0[178];
      v254 = *v253;
      v255 = v253[1];
      v256 = sub_1D30E928C();

      v257 = sub_1D30E8B1C();

      if (os_log_type_enabled(v257, v256))
      {
        v258 = swift_slowAlloc();
        v259 = swift_slowAlloc();
        v344 = v259;
        *v258 = 136446210;
        *(v258 + 4) = sub_1D2FFEA04(v254, v255, &v344);
        _os_log_impl(&dword_1D2FD9000, v257, v256, "Uninstall manifest for app with bundle ID: %{public}s", v258, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v259);
        MEMORY[0x1D38B3760](v259, -1, -1);
        MEMORY[0x1D38B3760](v258, -1, -1);
      }

      sub_1D2FEF53C(v254, v255);
      type metadata accessor for Helper.Reply(0);
      swift_storeEnumTagMultiPayload();

      goto LABEL_136;
    case 9u:
      v130 = *v0[178];
      v131 = swift_task_alloc();
      v0[203] = v131;
      *v131 = v0;
      v131[1] = sub_1D30879B8;

      return sub_1D3095200(v130);
    case 0xAu:
      v246 = v0[178];
      v248 = *v246;
      v247 = *(v246 + 8);
      v0[206] = v247;
      v249 = *(v246 + 16);
      v250 = *(v246 + 24);
      v0[207] = v250;
      v251 = *(v246 + 32);
      v252 = swift_task_alloc();
      v0[208] = v252;
      *v252 = v0;
      v252[1] = sub_1D3087CB8;

      return sub_1D3095434(v248, v247, v249, v250, v251);
    case 0xBu:
      v94 = v0[178];
      v95 = v0[174];
      v335 = v0[173];
      v96 = v0[171];
      v97 = v0[170];
      v98 = *(v94 + 1);
      v338 = *v94;
      v0[211] = v98;
      v99 = *(v94 + 3);
      v333 = *(v94 + 2);
      v0[212] = v99;
      v100 = *(v94 + 4);
      v101 = *(v94 + 5);
      v0[213] = v101;
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
      v341 = *&v94[v102[16]];
      v103 = v102[20];
      sub_1D3056830(&v94[v102[12]], v95, type metadata accessor for AssetPackHost);
      (*(v96 + 32))(v335, &v94[v103], v97);
      v0[124] = v338;
      v0[125] = v98;
      v0[126] = v333;
      v0[127] = v99;
      v0[128] = v100;
      v0[129] = v101;
      v104 = swift_task_alloc();
      v0[214] = v104;
      *v104 = v0;
      v104[1] = sub_1D3087FCC;
      v105 = v0[174];
      v106 = v0[173];

      return sub_1D30961E8(v0 + 62, v105, v341, v106);
    case 0xCu:
      v121 = v0[178];
      v122 = *v121;
      v123 = v121[1];
      v0[216] = v123;
      v124 = v121[2];
      v125 = v121[3];
      v0[217] = v125;
      v127 = v121[4];
      v126 = v121[5];
      v0[218] = v126;
      v0[118] = v122;
      v0[119] = v123;
      v0[120] = v124;
      v0[121] = v125;
      v0[122] = v127;
      v0[123] = v126;
      v128 = swift_task_alloc();
      v0[219] = v128;
      *v128 = v0;
      v128[1] = sub_1D3088314;
      v129 = v0[169];

      return sub_1D309686C(v129, v0 + 59);
    case 0xDu:
      v234 = v0[178];
      v235 = *v234;
      v236 = v234[1];
      v0[223] = v236;
      v237 = v234[2];
      v238 = v234[3];
      v0[224] = v238;
      v240 = v234[4];
      v239 = v234[5];
      v0[225] = v239;
      v0[112] = v235;
      v0[113] = v236;
      v0[114] = v237;
      v0[115] = v238;
      v0[116] = v240;
      v0[117] = v239;
      v241 = swift_task_alloc();
      v0[226] = v241;
      *v241 = v0;
      v241[1] = sub_1D3088924;

      return sub_1D3096DDC(v0 + 56);
    case 0xEu:
      v83 = v0[178];
      v84 = *v83;
      v85 = v83[1];
      v0[228] = v85;
      v86 = v83[2];
      v87 = v83[3];
      v0[229] = v87;
      v89 = v83[4];
      v88 = v83[5];
      v0[230] = v88;
      v0[106] = v84;
      v0[107] = v85;
      v0[108] = v86;
      v0[109] = v87;
      v0[110] = v89;
      v0[111] = v88;
      v90 = swift_task_alloc();
      v0[231] = v90;
      *v90 = v0;
      v90[1] = sub_1D3088C48;

      return sub_1D30970C0(v0 + 53);
    case 0xFu:
      v146 = v0[178];
      v147 = *v146;
      v148 = *(v146 + 8);
      v149 = *(v146 + 16);
      v0[233] = v149;
      v150 = *(v146 + 24);
      v151 = *(v146 + 32);
      v0[234] = v151;
      v153 = *(v146 + 40);
      v152 = *(v146 + 48);
      v0[235] = v152;
      v0[100] = v148;
      v0[101] = v149;
      v0[102] = v150;
      v0[103] = v151;
      v0[104] = v153;
      v0[105] = v152;
      v154 = swift_task_alloc();
      v0[236] = v154;
      *v154 = v0;
      v154[1] = sub_1D3088F6C;

      return sub_1D309739C(v147, v0 + 50);
    case 0x10u:
      v71 = v0[178];
      v72 = *v71;
      v73 = v71[1];
      v0[238] = v73;
      v74 = v71[2];
      v75 = v71[3];
      v0[239] = v75;
      v76 = v71[4];
      v77 = v71[5];
      v0[240] = v77;
      v79 = v71[6];
      v78 = v71[7];
      v0[241] = v78;
      v80 = *(v71 + 4);
      v0[94] = v72;
      v0[95] = v73;
      v0[96] = v74;
      v0[97] = v75;
      v0[98] = v76;
      v0[99] = v77;
      v0[137] = v78;
      *(v0 + 69) = v80;
      v81 = swift_task_alloc();
      v0[242] = v81;
      *v81 = v0;
      v81[1] = sub_1D3089278;

      return sub_1D3098188((v0 + 94), v79, (v0 + 137));
    case 0x11u:
      v187 = v0[178];
      v188 = *v187;
      v189 = v187[1];
      v0[244] = v189;
      v190 = v187[2];
      v191 = v187[3];
      v0[245] = v191;
      v193 = v187[4];
      v192 = v187[5];
      v0[246] = v192;
      v0[88] = v188;
      v0[89] = v189;
      v0[90] = v190;
      v0[91] = v191;
      v0[92] = v193;
      v0[93] = v192;
      v194 = swift_task_alloc();
      v0[247] = v194;
      *v194 = v0;
      v194[1] = sub_1D308958C;

      return sub_1D3098F18(v0 + 44);
    case 0x12u:
      v242 = v0[178];
      v244 = *v242;
      v243 = v242[1];
      v0[249] = v243;
      v245 = swift_task_alloc();
      v0[250] = v245;
      *v245 = v0;
      v245[1] = sub_1D3089898;

      return sub_1D30999C4(v244, v243);
    case 0x13u:
      v293 = v0[178];
      v295 = *v293;
      v294 = v293[1];
      v0[252] = v294;
      v296 = swift_task_alloc();
      v0[253] = v296;
      *v296 = v0;
      v296[1] = sub_1D3089B84;

      return sub_1D3099D58(v295, v294);
    case 0x14u:
      v196 = v0;
      v197 = v0[178];
      v198 = v196[168];
      v199 = v196[167];
      v200 = v196[166];
      v201 = v196[165];
      v202 = *v197;
      v196[255] = *v197;
      v203 = v197[1];
      v196[256] = v203;
      v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A0, &qword_1D30F54A0);
      v205 = v204[12];
      v336 = *(v197 + v204[16]);
      v196[257] = v336;
      v206 = (v197 + v204[20]);
      v207 = v206[1];
      v340 = *v206;
      v196[258] = v207;
      v208 = v197 + v205;
      v209 = v196;
      (*(v200 + 32))(v198, v208, v201);
      v210 = sub_1D30E928C();
      (*(v200 + 16))(v199, v198, v201);

      v211 = sub_1D30E8B1C();

      v343 = v207;

      v334 = v210;
      v212 = os_log_type_enabled(v211, v210);
      v213 = v196[167];
      v214 = v196[166];
      v215 = v196[165];
      if (v212)
      {
        v216 = swift_slowAlloc();
        v331 = swift_slowAlloc();
        v344 = v331;
        *v216 = 136446978;
        *(v216 + 4) = sub_1D2FFEA04(v202, v203, &v344);
        *(v216 + 12) = 2082;
        sub_1D3045A34(&qword_1EC749490, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v217 = sub_1D30E977C();
        v219 = v218;
        v220 = *(v214 + 8);
        v220(v213, v215);
        v221 = sub_1D2FFEA04(v217, v219, &v344);

        *(v216 + 14) = v221;
        *(v216 + 22) = 2048;
        *(v216 + 24) = v336;
        *(v216 + 32) = 2082;
        v209 = v196;
        v222 = v343;
        *(v216 + 34) = sub_1D2FFEA04(v340, v343, &v344);
        _os_log_impl(&dword_1D2FD9000, v211, v334, "Request license for asset pack with ID: %{public}s version ID: %{public}s internal version ID: %llu app bundle ID: %{public}s", v216, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v331, -1, -1);
        MEMORY[0x1D38B3760](v216, -1, -1);

        v223 = v340;
      }

      else
      {

        v220 = *(v214 + 8);
        v220(v213, v215);
        v223 = v340;
        v222 = v343;
      }

      v209[259] = v220;
      v323 = swift_task_alloc();
      v209[260] = v323;
      *v323 = v209;
      v323[1] = sub_1D3089E70;
      v23 = (v209 + 2);
      v24 = v223;
      v25 = v222;
      goto LABEL_132;
    case 0x15u:
      v229 = v0[178];
      v230 = *v229;
      v0[264] = *v229;
      v231 = v229[1];
      v232 = v229[2];
      v0[265] = v232;
      v233 = swift_task_alloc();
      v0[266] = v233;
      *v233 = v0;
      v233[1] = sub_1D308A7C4;

      return sub_1D309A0FC(v230, v231, v232);
    case 0x16u:
      v283 = *v0[178];
      v284 = swift_task_alloc();
      v0[268] = v284;
      *v284 = v0;
      v284[1] = sub_1D308AABC;

      return sub_1D309AB58((v0 + 82), v283);
    case 0x17u:
      v299 = *v0[178];
      v0[270] = v299;
      v300 = swift_task_alloc();
      v0[271] = v300;
      *v300 = v0;
      v300[1] = sub_1D308ADB0;

      return sub_1D309ADD8((v0 + 76), v299);
    case 0x18u:
      v137 = v0[178];
      v138 = *v137;
      v0[273] = *v137;
      v139 = v137[1];
      v0[274] = v139;
      v140 = v137[2];
      v141 = swift_task_alloc();
      v0[275] = v141;
      *v141 = v0;
      v141[1] = sub_1D308B0C8;

      return sub_1D309B200(v138, v139, v140);
    case 0x19u:
      v132 = v0[178];
      v133 = *v132;
      v0[277] = *v132;
      v134 = v132[3];
      v135 = *(v132 + 1);
      v0[134] = v133;
      *(v0 + 135) = v135;
      v136 = swift_task_alloc();
      v0[278] = v136;
      *v136 = v0;
      v136[1] = sub_1D308B3B8;

      return sub_1D309B510((v0 + 134), v134);
    case 0x1Au:
      v319 = *v0[178];
      v320 = swift_task_alloc();
      v0[283] = v320;
      *v320 = v0;
      v320[1] = sub_1D308B9A4;
      v321 = v0[164];

      return sub_1D309BA88(v321, v319);
    case 0x1Bu:
      v54 = v0[178];
      v55 = *(v54 + 8);
      v56 = *(v54 + 16);
      LOBYTE(v344) = *v54;
      sub_1D309BD04(&v344, v55, v56);
      sub_1D2FF1804(v55, v56);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x1Cu:
      LOBYTE(v344) = *v0[178];
      sub_1D309BF24(&v344);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x1Du:
      v301 = v0[178];
      v303 = *v301;
      v302 = v301[1];
      v0[288] = v302;
      v304 = swift_task_alloc();
      v0[289] = v304;
      *v304 = v0;
      v304[1] = sub_1D308BFA8;

      return sub_1D309C2E8(v303, v302);
    case 0x1Eu:
      v260 = v0[178];
      v262 = *v260;
      v261 = v260[1];
      v0[291] = v261;
      v263 = swift_task_alloc();
      v0[292] = v263;
      *v263 = v0;
      v263[1] = sub_1D308C294;

      return sub_1D309C75C((v0 + 140), v262, v261);
    case 0x1Fu:
      v169 = v0[178];
      v170 = v0[153];
      v339 = v0[152];
      v342 = v0[163];
      v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498);
      v172 = (v169 + *(v171 + 48));
      v173 = *v172;
      v174 = v172[1];
      v0[294] = v174;
      v175 = v172[2];
      v176 = v172[3];
      v0[295] = v176;
      v178 = v172[4];
      v177 = v172[5];
      v0[296] = v177;
      v179 = *(v169 + *(v171 + 64));
      v0[297] = v179;
      (*(v170 + 32))(v342, v169, v339);
      v0[70] = v173;
      v0[71] = v174;
      v0[72] = v175;
      v0[73] = v176;
      v0[74] = v178;
      v0[75] = v177;
      v180 = swift_task_alloc();
      v0[298] = v180;
      *v180 = v0;
      v180[1] = sub_1D308C5A4;
      v181 = v0[163];
      v182 = v0[151];
      v183 = v0[147];
      v184 = v0[146];
      v185 = v0[145];
      v186 = v0[144];

      return sub_1D309C9F0(v182, v181, v0 + 35, v179, v186, v185, v184, v183);
    case 0x20u:
      v264 = v0[178];
      v265 = v0[162];
      v266 = v0;
      v267 = v0[153];
      v268 = v266[152];
      v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
      v270 = (v264 + v269[12]);
      v271 = *v270;
      v272 = v270[1];
      v266[300] = v272;
      v273 = (v264 + v269[16]);
      v274 = *v273;
      v275 = v273[1];
      v266[301] = v275;
      v276 = *(v264 + v269[20]);
      v266[302] = v276;
      (*(v267 + 32))(v265, v264, v268);
      v277 = swift_task_alloc();
      v266[303] = v277;
      *v277 = v266;
      v277[1] = sub_1D308C900;
      v278 = v266[162];
      v279 = v266[150];
      v280 = *(v266 + 145);
      v281 = v266[144];
      v348 = v266[147];
      v347 = v280;

      return sub_1D309E618(v279, v278, v271, v272, v274, v275, v276, v281);
    case 0x21u:
      sub_1D30A13A4(*v0[178], *(v0[178] + 8), *(v0[178] + 16), *(v0[178] + 24), v0[144], v0[145], v0[146], v0[147], v0[149]);
      v91 = v0[149];
      v92 = v0[142];

      sub_1D3056830(v91, v92, type metadata accessor for Helper.PathToStagingDirectoryLookupResult);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x22u:
      v57 = v0[178];
      v58 = v0[161];
      v59 = v0;
      v60 = v0[153];
      v61 = v59[152];
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
      v63 = (v57 + *(v62 + 48));
      v64 = *v63;
      v65 = v63[1];
      v59[305] = v65;
      v66 = (v57 + *(v62 + 64));
      v67 = *v66;
      v68 = v66[1];
      v59[306] = v68;
      (*(v60 + 32))(v58, v57, v61);
      v69 = swift_task_alloc();
      v59[307] = v69;
      *v69 = v59;
      v69[1] = sub_1D308CC80;
      v70 = v59[161];

      return sub_1D30A1F18(v70, v64, v65, v67, v68);
    case 0x23u:
      v37 = v0[159];
      (*(v0[153] + 32))(v37, v0[178], v0[152]);
      v38 = sub_1D30A5610(v37);
      v39 = v0[142];
      (*(v0[153] + 8))(v0[159], v0[152]);
      *v39 = v38;
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x24u:
      v40 = v0;
      v41 = v0[178];
      v42 = v40[158];
      v43 = v40[153];
      v44 = v40[152];
      v45 = *v41;
      v40[309] = *v41;
      v46 = v41[1];
      v40[310] = v46;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v48 = *(v47 + 48);
      v49 = (v41 + *(v47 + 64));
      v50 = *v49;
      v51 = v49[1];
      v40[311] = v51;
      (*(v43 + 32))(v42, v41 + v48, v44);
      v52 = swift_task_alloc();
      v40[312] = v52;
      *v52 = v40;
      v52[1] = sub_1D308CFBC;
      v53 = v40[158];

      return sub_1D30A58B4(v45, v46, v53, v50, v51);
    case 0x25u:
      v29 = v0[178];
      v30 = v0[157];
      v31 = v0;
      v32 = v0[153];
      v33 = v31[152];
      v34 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48));
      v35 = *v34;
      v36 = v34[1];
      (*(v32 + 32))(v30, v29, v33);
      v0 = v31;
      sub_1D30A6618(v30, v35, v36, "Copy item at: %{public}s out of container to bookmark with data: %{public}s", sub_1D3007420);
      (*(v31[153] + 8))(v31[157], v31[152]);
      sub_1D2FF1804(v35, v36);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x26u:
      v305 = v0;
      v306 = v0[178];
      v307 = v305[156];
      v308 = v305[153];
      v309 = v305[152];
      v310 = *v306;
      v305[314] = *v306;
      v311 = v306[1];
      v305[315] = v311;
      v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v313 = *(v312 + 48);
      v314 = (v306 + *(v312 + 64));
      v315 = *v314;
      v316 = v314[1];
      v305[316] = v316;
      (*(v308 + 32))(v307, v306 + v313, v309);
      v317 = swift_task_alloc();
      v305[317] = v317;
      *v317 = v305;
      v317[1] = sub_1D308D2F0;
      v318 = v305[156];

      return sub_1D30A6000(v310, v311, v318, v315, v316);
    case 0x27u:
      v285 = v0[178];
      v286 = v0[155];
      v287 = v0;
      v288 = v0[153];
      v289 = v287[152];
      v290 = (v285 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48));
      v291 = *v290;
      v292 = v290[1];
      (*(v288 + 32))(v286, v285, v289);
      v0 = v287;
      sub_1D30A6618(v286, v291, v292, "Move item at: %{public}s out of container to bookmark with data: %{public}s", sub_1D3008CD4);
      (*(v287[153] + 8))(v287[155], v287[152]);
      sub_1D2FF1804(v291, v292);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x28u:
      v107 = v0[178];
      v108 = v0[172];
      v109 = v0;
      v110 = v0[171];
      v111 = v109[170];
      v112 = *v107;
      v109[319] = *v107;
      v113 = v107[1];
      v109[320] = v113;
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
      v115 = *(v114 + 48);
      v116 = (v107 + *(v114 + 64));
      v117 = *v116;
      v118 = v116[1];
      v109[321] = v118;

      (*(v110 + 32))(v108, v107 + v115, v111);
      v119 = swift_task_alloc();
      v109[322] = v119;
      *v119 = v109;
      v119[1] = sub_1D308D624;
      v120 = v109[172];

      return sub_1D30A6928(v112, v113, v120, v117, v118);
    case 0x29u:
      v195 = v0[154];
      (*(v0[153] + 32))(v195, v0[178], v0[152]);
      sub_1D30A71F8(v195);
      (*(v0[153] + 8))(v0[154], v0[152]);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x2Au:
      v297 = *v0[178];
      v298 = swift_task_alloc();
      v0[325] = v298;
      *v298 = v0;
      v298[1] = sub_1D308DC30;

      return sub_1D30BFDBC(v297);
    case 0x2Bu:
      v26 = *v0[178];
      v0[326] = v26;
      v27 = swift_task_alloc();
      v0[327] = v27;
      *v27 = v0;
      v27[1] = sub_1D308DF08;

      return sub_1D30BFFB8(v26);
    case 0x2Cu:
      v82 = swift_task_alloc();
      v0[221] = v82;
      *v82 = v0;
      v82[1] = sub_1D3088640;

      return sub_1D3096B94();
    case 0x2Du:
      v282 = swift_task_alloc();
      v0[280] = v282;
      *v282 = v0;
      v282[1] = sub_1D308B6A4;

      return sub_1D309B860();
    case 0x2Eu:
      v322 = swift_task_alloc();
      v0[285] = v322;
      *v322 = v0;
      v322[1] = sub_1D308BCA8;

      return sub_1D309C0C0();
    case 0x2Fu:
      sub_1D30A547C();
      (*(v0[153] + 32))(v0[142], v0[160], v0[152]);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x30u:
      v93 = swift_task_alloc();
      v0[324] = v93;
      *v93 = v0;
      v93[1] = sub_1D308D958;

      return sub_1D30A749C();
    case 0x31u:
      sub_1D30BFC60();
      type metadata accessor for Helper.Reply(0);
LABEL_135:
      swift_storeEnumTagMultiPayload();
LABEL_136:

      v330 = v0[1];

      result = v330();
      break;
    default:
      v19 = v0[178];
      v21 = *v19;
      v20 = v19[1];
      v0[180] = v20;
      v22 = swift_task_alloc();
      v0[181] = v22;
      *v22 = v0;
      v22[1] = sub_1D30869EC;
      v23 = (v0 + 53);
      v24 = v21;
      v25 = v20;
LABEL_132:

      result = sub_1D3091E5C(v23, v24, v25);
      break;
  }

  return result;
}

uint64_t sub_1D30869EC()
{
  *(*v1 + 1456) = v0;

  if (v0)
  {
    v2 = sub_1D308E1F0;
  }

  else
  {
    v2 = sub_1D3086B20;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3086B20()
{
  v1 = *(v0 + 1136);
  *v1 = *(v0 + 424);
  v2 = *(v0 + 440);
  v3 = *(v0 + 456);
  v4 = *(v0 + 488);
  *(v1 + 48) = *(v0 + 472);
  *(v1 + 64) = v4;
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  v5 = *(v0 + 504);
  v6 = *(v0 + 520);
  v7 = *(v0 + 536);
  *(v1 + 128) = *(v0 + 552);
  *(v1 + 96) = v6;
  *(v1 + 112) = v7;
  *(v1 + 80) = v5;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D3086D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 1488) = v3;

  if (v3)
  {
    v9 = sub_1D308E3B0;
  }

  else
  {

    v8[187] = a3;
    v8[188] = a2;
    v8[189] = a1;

    v9 = sub_1D3086E78;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D3086E78()
{
  v1 = v0[93].i64[1];
  v2 = v0[71].i64[0];
  *v2 = vextq_s8(v0[94], v0[94], 8uLL);
  v2[1].i64[0] = v1;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v3 = v0->i64[1];

  return v3();
}

uint64_t sub_1D308705C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1536) = v2;

  if (v2)
  {
    v7 = sub_1D308E584;
  }

  else
  {

    *(v6 + 1544) = a2;
    *(v6 + 1552) = a1;
    v7 = sub_1D308719C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D308719C()
{
  v1 = v0[193];
  v2 = v0[142];
  *v2 = v0[194];
  v2[1] = v1;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D3087378(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1576) = v2;

  if (v2)
  {
    v7 = sub_1D308E74C;
  }

  else
  {

    *(v6 + 1584) = a2;
    *(v6 + 1592) = a1;
    v7 = sub_1D30874B8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D30874B8()
{
  *v0[71].i64[0] = vextq_s8(v0[99], v0[99], 8uLL);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0->i64[1];

  return v1();
}

uint64_t sub_1D3087694()
{
  *(*v1 + 1616) = v0;

  if (v0)
  {
    v2 = sub_1D308E914;
  }

  else
  {
    v2 = sub_1D30877C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D30877C8()
{
  sub_1D3056830(v0[176], v0[142], type metadata accessor for Helper.URLRequestResult);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D30879B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1632) = v1;

  if (v1)
  {
    v5 = sub_1D308EAD4;
  }

  else
  {
    *(v4 + 1640) = a1;
    v5 = sub_1D3087AE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D3087AE0()
{
  **(v0 + 1136) = *(v0 + 1640);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3087CB8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1672) = v1;

  if (v1)
  {
    v5 = sub_1D308EC94;
  }

  else
  {

    *(v4 + 1680) = a1;

    v5 = sub_1D3087DF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D3087DF4()
{
  **(v0 + 1136) = *(v0 + 1680);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3087FCC()
{
  *(*v1 + 1720) = v0;

  if (v0)
  {
    v2 = sub_1D308EE68;
  }

  else
  {

    v2 = sub_1D3088108;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3088108()
{
  v1 = v0[174];
  (*(v0[171] + 8))(v0[173], v0[170]);
  sub_1D3065284(v1, type metadata accessor for AssetPackHost);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D3088314()
{
  *(*v1 + 1760) = v0;

  if (v0)
  {
    v2 = sub_1D308F088;
  }

  else
  {

    v2 = sub_1D3088450;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3088450()
{
  sub_1D3056830(v0[169], v0[142], type metadata accessor for AssetPackRecord.StaticRepresentation);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D3088640()
{
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v2 = sub_1D308F268;
  }

  else
  {
    v2 = sub_1D3088754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3088754()
{
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3088924(char a1)
{
  v4 = *v2;
  *(*v2 + 1816) = v1;

  if (v1)
  {
    v5 = sub_1D308F428;
  }

  else
  {

    *(v4 + 2656) = a1 & 1;

    v5 = sub_1D3088A70;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D3088A70()
{
  **(v0 + 1136) = *(v0 + 2656);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3088C48(char a1)
{
  v4 = *v2;
  *(*v2 + 1856) = v1;

  if (v1)
  {
    v5 = sub_1D308F608;
  }

  else
  {

    *(v4 + 2657) = a1 & 1;

    v5 = sub_1D3088D94;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D3088D94()
{
  **(v0 + 1136) = *(v0 + 2657);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3088F6C()
{
  *(*v1 + 1896) = v0;

  if (v0)
  {
    v2 = sub_1D308F7E8;
  }

  else
  {

    v2 = sub_1D30890A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D30890A8()
{
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3089278()
{
  *(*v1 + 1944) = v0;

  if (v0)
  {
    v2 = sub_1D308F9C8;
  }

  else
  {

    v2 = sub_1D30893B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D30893B4()
{
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308958C()
{
  *(*v1 + 1984) = v0;

  if (v0)
  {
    v2 = sub_1D308FBB4;
  }

  else
  {

    v2 = sub_1D30896C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D30896C8()
{
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3089898()
{
  *(*v1 + 2008) = v0;

  if (v0)
  {
    v2 = sub_1D308FD94;
  }

  else
  {

    v2 = sub_1D30899B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D30899B4()
{
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3089B84()
{
  *(*v1 + 2032) = v0;

  if (v0)
  {
    v2 = sub_1D308FF5C;
  }

  else
  {

    v2 = sub_1D3089CA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3089CA0()
{
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3089E70()
{
  *(*v1 + 2088) = v0;

  if (v0)
  {
    v2 = sub_1D308A1B8;
  }

  else
  {
    v2 = sub_1D3089F84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3089F84()
{
  v1 = *(v0 + 64);
  *(v0 + 216) = *(v0 + 80);
  v2 = *(v0 + 48);
  *(v0 + 200) = *(v0 + 64);
  v3 = *(v0 + 32);
  *(v0 + 184) = *(v0 + 48);
  v4 = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  *(v0 + 280) = *(v0 + 144);
  v5 = *(v0 + 112);
  *(v0 + 264) = *(v0 + 128);
  v6 = *(v0 + 96);
  *(v0 + 248) = *(v0 + 112);
  v7 = *(v0 + 80);
  *(v0 + 232) = *(v0 + 96);
  *(v0 + 152) = *(v0 + 16);
  v8 = *(v0 + 128);
  *(v0 + 384) = v5;
  *(v0 + 400) = v8;
  *(v0 + 320) = v2;
  *(v0 + 336) = v1;
  *(v0 + 352) = v7;
  *(v0 + 368) = v6;
  *(v0 + 416) = *(v0 + 144);
  *(v0 + 288) = v4;
  *(v0 + 304) = v3;
  v9 = swift_task_alloc();
  *(v0 + 2096) = v9;
  *v9 = v0;
  v9[1] = sub_1D308A09C;
  v10 = *(v0 + 2056);
  v11 = *(v0 + 2048);
  v12 = *(v0 + 2040);
  v13 = *(v0 + 1344);

  return sub_1D3016ED4(v0 + 1040, v12, v11, v13, v10, v0 + 288);
}

uint64_t sub_1D308A09C()
{
  v2 = *v1;
  *(*v1 + 2104) = v0;

  if (v0)
  {
    v3 = sub_1D308A5C4;
  }

  else
  {
    sub_1D2FE2EC4(v2 + 152);
    v3 = sub_1D308A3AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D308A1B8()
{

  (*(v0 + 2072))(*(v0 + 1344), *(v0 + 1320));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308A3AC()
{
  v1 = *(v0 + 2072);
  v2 = *(v0 + 1344);
  v3 = *(v0 + 1320);
  v4 = *(v0 + 1136);

  v1(v2, v3);
  v5 = *(v0 + 1056);
  *v4 = *(v0 + 1040);
  v4[1] = v5;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D308A5C4()
{
  sub_1D2FE2EC4(v0 + 152);

  (*(v0 + 2072))(*(v0 + 1344), *(v0 + 1320));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308A7C4()
{
  *(*v1 + 2136) = v0;

  if (v0)
  {
    v2 = sub_1D3090124;
  }

  else
  {

    v2 = sub_1D308A8EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308A8EC()
{
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308AABC()
{
  *(*v1 + 2152) = v0;

  if (v0)
  {
    v2 = sub_1D30902F8;
  }

  else
  {
    v2 = sub_1D308ABD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308ABD0()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 672);
  v3 = *(v0 + 688);
  *v1 = *(v0 + 656);
  v1[1] = v2;
  v1[2] = v3;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D308ADB0()
{
  *(*v1 + 2176) = v0;

  if (v0)
  {
    v2 = sub_1D30904B8;
  }

  else
  {
    v2 = sub_1D308AEE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308AEE4()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 616);
  v3 = *(v0 + 624);
  v4 = *(v0 + 640);
  *v1 = *(v0 + 608);
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D308B0C8()
{
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v2 = sub_1D3090678;
  }

  else
  {
    v2 = sub_1D308B1DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308B1DC()
{
  sub_1D2FF1804(v0[273], v0[274]);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D308B3B8()
{
  *(*v1 + 2232) = v0;

  if (v0)
  {
    v2 = sub_1D3090844;
  }

  else
  {
    v2 = sub_1D308B4CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308B4CC()
{
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308B6A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2248) = v1;

  if (v1)
  {
    v5 = sub_1D3090A0C;
  }

  else
  {
    *(v4 + 2256) = a1;
    v5 = sub_1D308B7CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D308B7CC()
{
  **(v0 + 1136) = *(v0 + 2256);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308B9A4()
{
  *(*v1 + 2272) = v0;

  if (v0)
  {
    v2 = sub_1D3090BCC;
  }

  else
  {
    v2 = sub_1D308BAB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308BAB8()
{
  sub_1D3056830(v0[164], v0[142], type metadata accessor for LicenseRecord.StaticRepresentation);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D308BCA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2288) = v1;

  if (v1)
  {
    v5 = sub_1D3090D8C;
  }

  else
  {
    *(v4 + 2296) = a1;
    v5 = sub_1D308BDD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D308BDD0()
{
  **(v0 + 1136) = *(v0 + 2296);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308BFA8()
{
  *(*v1 + 2320) = v0;

  if (v0)
  {
    v2 = sub_1D3090F4C;
  }

  else
  {

    v2 = sub_1D308C0C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308C0C4()
{
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308C294()
{
  *(*v1 + 2344) = v0;

  if (v0)
  {
    v2 = sub_1D3091114;
  }

  else
  {
    v2 = sub_1D308C3C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308C3C8()
{
  v1 = v0[142];
  v2 = v0[141];
  *v1 = v0[140];
  v1[1] = v2;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D308C5A4()
{
  *(*v1 + 2392) = v0;

  if (v0)
  {
    v2 = sub_1D30912D4;
  }

  else
  {

    v2 = sub_1D308C6F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308C6F4()
{
  v1 = v0[151];
  v2 = v0[142];
  (*(v0[153] + 8))(v0[163], v0[152]);
  sub_1D30E6F78(v1, v2, &qword_1EC74A778, &qword_1D30F5890);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D308C900()
{
  *(*v1 + 2432) = v0;

  if (v0)
  {
    v2 = sub_1D30914D4;
  }

  else
  {
    v2 = sub_1D308CA74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308CA74()
{
  v1 = v0[150];
  v2 = v0[142];
  (*(v0[153] + 8))(v0[162], v0[152]);
  sub_1D30E6F78(v1, v2, &qword_1EC74A768, &qword_1D30F5880);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D308CC80()
{
  *(*v1 + 2464) = v0;

  if (v0)
  {
    v2 = sub_1D30916B0;
  }

  else
  {
    v2 = sub_1D308CDD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308CDD0()
{
  (*(v0[153] + 8))(v0[161], v0[152]);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D308CFBC()
{
  *(*v1 + 2504) = v0;

  if (v0)
  {
    v2 = sub_1D309188C;
  }

  else
  {
    v2 = sub_1D308D0F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308D0F0()
{
  v1 = v0[158];
  v2 = v0[153];
  v3 = v0[152];
  sub_1D2FF1804(v0[309], v0[310]);
  (*(v2 + 8))(v1, v3);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D308D2F0()
{
  *(*v1 + 2544) = v0;

  if (v0)
  {
    v2 = sub_1D3091A7C;
  }

  else
  {
    v2 = sub_1D308D424;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308D424()
{
  v1 = v0[156];
  v2 = v0[153];
  v3 = v0[152];
  sub_1D2FF1804(v0[314], v0[315]);
  (*(v2 + 8))(v1, v3);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D308D624()
{
  *(*v1 + 2584) = v0;

  if (v0)
  {
    v2 = sub_1D3091C6C;
  }

  else
  {
    v2 = sub_1D308D758;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D308D758()
{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  sub_1D2FF1804(v0[319], v0[320]);
  (*(v2 + 8))(v1, v3);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D308D958(char a1)
{
  *(*v1 + 2658) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D308DA58, 0, 0);
}

uint64_t sub_1D308DA58()
{
  **(v0 + 1136) = *(v0 + 2658);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308DC30(char a1)
{
  *(*v1 + 2659) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D308DD30, 0, 0);
}

uint64_t sub_1D308DD30()
{
  **(v0 + 1136) = *(v0 + 2659);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308DF08()
{

  return MEMORY[0x1EEE6DFA0](sub_1D308E020, 0, 0);
}

uint64_t sub_1D308E020()
{
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308E1F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308E3B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308E584()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308E74C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308E914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308EAD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308EC94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308EE68()
{
  v1 = v0[174];
  (*(v0[171] + 8))(v0[173], v0[170]);
  sub_1D3065284(v1, type metadata accessor for AssetPackHost);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D308F088()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308F268()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308F428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308F608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308F7E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308F9C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308FBB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308FD94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D308FF5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3090124()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D30902F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D30904B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3090678()
{
  sub_1D2FF1804(v0[273], v0[274]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D3090844()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3090A0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3090BCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3090D8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3090F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3091114()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D30912D4()
{
  (*(v0[153] + 8))(v0[163], v0[152]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D30914D4()
{
  (*(v0[153] + 8))(v0[162], v0[152]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D30916B0()
{
  (*(v0[153] + 8))(v0[161], v0[152]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D309188C()
{
  v1 = v0[158];
  v2 = v0[153];
  v3 = v0[152];
  sub_1D2FF1804(v0[309], v0[310]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D3091A7C()
{
  v1 = v0[156];
  v2 = v0[153];
  v3 = v0[152];
  sub_1D2FF1804(v0[314], v0[315]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D3091C6C()
{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  sub_1D2FF1804(v0[319], v0[320]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D3091E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3091F08, 0, 0);
}

uint64_t sub_1D3091F08()
{
  v32 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1D2FFEA04(v5, v4, &v31);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "App info about bundle with ID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  sub_1D30DCCA0(*(v0 + 40), *(v0 + 48));
  *(v0 + 80) = 0;
  *(v0 + 88) = v8;
  *(v0 + 137) = v9 & 1;
  v10 = v8;
  v11 = [v10 infoDictionary];
  v12 = sub_1D2FEC604(0x6F72477070414142, 0xEC00000044497075);
  v14 = v13;
  *(v0 + 16) = v12;
  *(v0 + 24) = v13;

  *(v0 + 96) = v14;
  if (!v14)
  {

    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
LABEL_15:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_16;
  }

  v15 = [v10 infoDictionary];
  v16 = sub_1D2FEBF78(0xD000000000000012, 0x80000001D30EC600);
  *(v0 + 138) = v16;

  if (v16)
  {
    v17 = [v10 infoDictionary];
    v18 = sub_1D3030FBC(0x6566696E614D4142, 0xED00004C52557473, MEMORY[0x1E69E6158]);

    if (v18)
    {
      v20 = *(v0 + 40);
      v19 = *(v0 + 48);

      type metadata accessor for HelperError(0);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      *v21 = v20;
      v21[1] = v19;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_16:

      v29 = *(v0 + 8);

      return v29();
    }
  }

  v22 = [v10 bundleIdentifier];
  if (!v22)
  {

    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    goto LABEL_15;
  }

  v23 = v22;
  v24 = sub_1D30E908C();
  v26 = v25;

  *(v0 + 104) = v24;
  *(v0 + 112) = v26;
  sub_1D30E91FC();
  *(v0 + 120) = sub_1D30E91EC();
  v28 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30923CC, v28, v27);
}

uint64_t sub_1D30923CC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 40);

  sub_1D30C24F0(v3, v2, (v0 + 136));
  *(v0 + 128) = v1;
  if (v1)
  {

    v4 = sub_1D3092CF4;
  }

  else
  {
    *(v0 + 139) = *(v0 + 136);
    v4 = sub_1D30924A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30924A0()
{
  if (os_variant_has_internal_content())
  {
    v1 = 1;
  }

  else if ([*(v0 + 88) isProfileValidated])
  {
    v1 = [*(v0 + 88) isBeta] ^ 1;
  }

  else
  {
    v1 = 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1D30E906C();
  v4 = [v2 initWithSuiteName_];

  if (v1)
  {
    if (v4)
    {
      v5 = sub_1D30E906C();
      v6 = [v4 URLForKey_];

      if (v6)
      {
        sub_1D30E886C();

        v7 = 0;
      }

      else
      {
        v7 = 1;
      }

      v11 = *(v0 + 64);
      v10 = *(v0 + 72);
      v12 = sub_1D30E88CC();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v11, v7, 1, v12);
      sub_1D30E6F78(v11, v10, &qword_1EC7493C0, &qword_1D30EF500);
      if ((*(v13 + 48))(v10, 1, v12) != 1)
      {
        v23 = *(v0 + 72);

        sub_1D2FF14DC(v23, &qword_1EC7493C0, &qword_1D30EF500);
        v14 = 5;
        goto LABEL_24;
      }
    }

    else
    {
      v8 = *(v0 + 72);
      v9 = sub_1D30E88CC();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    }

    sub_1D2FF14DC(*(v0 + 72), &qword_1EC7493C0, &qword_1D30EF500);
  }

  if (*(v0 + 139) != 1)
  {
    v15 = *(v0 + 128);
    v16 = sub_1D303B8B4();
    if (v15)
    {
      v17 = *(v0 + 88);
    }

    else
    {
      v19 = v16;

      if ((v19 & 1) == 0)
      {
        v14 = 4;
        goto LABEL_24;
      }

      v20 = [*(v0 + 88) iTunesMetadata];
      v21 = [v20 distributorInfo];

      v22 = [v21 betaTesterType];
      if (v22 < 3)
      {
        v14 = qword_1D30FD1E8[v22];
        goto LABEL_24;
      }

      v71 = *(v0 + 88);

      type metadata accessor for HelperError(0);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      v73 = v72;
      v74 = [v71 iTunesMetadata];
      v75 = [v74 distributorInfo];

      v76 = [v75 betaTesterType];
      *v73 = v76;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v18 = *(v0 + 8);
    goto LABEL_40;
  }

  v14 = 3;
LABEL_24:
  v80 = v14;
  if (*(v0 + 137) == 1)
  {
    v24 = *(v0 + 88);
    v25 = [v24 iTunesMetadata];
    v77 = [v25 storeItemIdentifier];

    v26 = [v24 teamIdentifier];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1D30E908C();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v36 = *(v0 + 88);
    v37 = [v36 iTunesMetadata];
    v38 = [v37 distributorInfo];

    v39 = [v38 betaTesterType];
    v40 = [v36 iTunesMetadata];
    v41 = [v40 distributorInfo];

    v42 = [v41 distributorIsThirdParty];
    v43 = [v36 iTunesMetadata];
    v44 = [v43 distributorInfo];

    v45 = [v44 distributorNameForCurrentLocale];
    v46 = *(v0 + 88);
    if (v45)
    {
      v47 = sub_1D30E908C();
      v49 = v48;
    }

    else
    {

      v47 = 0;
      v49 = 0;
    }

    v62 = *(v0 + 104);
    v63 = *(v0 + 112);
    v65 = *(v0 + 40);
    v64 = *(v0 + 48);
    v60 = v63;
    v61 = v62;
  }

  else
  {
    v31 = *(v0 + 88);

    v32 = [v31 iTunesMetadata];
    v78 = [v32 storeItemIdentifier];

    v33 = [v31 teamIdentifier];
    if (v33)
    {
      v34 = v33;
      v28 = sub_1D30E908C();
      v30 = v35;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v50 = *(v0 + 88);
    v51 = [v50 iTunesMetadata];
    v52 = [v51 distributorInfo];

    v39 = [v52 betaTesterType];
    v53 = [v50 iTunesMetadata];
    v54 = [v53 distributorInfo];

    v42 = [v54 distributorIsThirdParty];
    v55 = [v50 iTunesMetadata];
    v56 = [v55 distributorInfo];

    v57 = [v56 distributorNameForCurrentLocale];
    v58 = *(v0 + 88);
    if (v57)
    {
      v47 = sub_1D30E908C();
      v49 = v59;

      v60 = 0;
      v61 = 0;
    }

    else
    {

      v47 = 0;
      v60 = 0;
      v61 = 0;
      v49 = 0;
    }

    v65 = *(v0 + 40);
    v64 = *(v0 + 48);
    v63 = v64;
    v62 = v65;
  }

  v66 = *(v0 + 96);
  v67 = *(v0 + 16);
  v68 = *(v0 + 32);
  v69 = *(v0 + 138) & 1;
  *v68 = v65;
  *(v68 + 8) = v64;
  *(v68 + 16) = v61;
  *(v68 + 24) = v60;
  *(v68 + 32) = v62;
  *(v68 + 40) = v63;
  *(v68 + 48) = v79;
  *(v68 + 56) = v67;
  *(v68 + 64) = v66;
  *(v68 + 72) = v28;
  *(v68 + 80) = v30;
  *(v68 + 88) = v69;
  *(v68 + 96) = v39;
  *(v68 + 104) = v42;
  *(v68 + 112) = v47;
  *(v68 + 120) = v49;
  *(v68 + 128) = v80;

  v18 = *(v0 + 8);
LABEL_40:

  return v18();
}

uint64_t sub_1D3092CF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3092D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 64) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3092D94, 0, 0);
}

uint64_t sub_1D3092D94()
{
  v27 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v2 = sub_1D30E8B3C();
    __swift_project_value_buffer(v2, qword_1EE314B60);
    v3 = sub_1D30E928C();

    v4 = sub_1D30E8B1C();

    if (os_log_type_enabled(v4, v3))
    {
      v5 = *(v0 + 64);
      v7 = *(v0 + 24);
      v6 = *(v0 + 32);
      v8 = *(v0 + 16);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136446722;
      *(v9 + 4) = sub_1D2FFEA04(v8, v7, &v26);
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_1D2FFEA04(v6, v1, &v26);
      *(v9 + 22) = 1024;
      *(v9 + 24) = v5;
      _os_log_impl(&dword_1D2FD9000, v4, v3, "Manifest data for app with bundle ID: %{public}s team ID: %{public}s bypass local cache: %{BOOL}d", v9, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v10, -1, -1);
      v11 = v9;
LABEL_10:
      MEMORY[0x1D38B3760](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D30E8B3C();
    __swift_project_value_buffer(v12, qword_1EE314B60);
    v13 = sub_1D30E928C();

    v4 = sub_1D30E8B1C();

    if (os_log_type_enabled(v4, v13))
    {
      v14 = *(v0 + 64);
      v16 = *(v0 + 16);
      v15 = *(v0 + 24);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_1D2FFEA04(v16, v15, &v26);
      *(v17 + 12) = 1024;
      *(v17 + 14) = v14;
      _os_log_impl(&dword_1D2FD9000, v4, v13, "Manifest data for app with bundle ID: %{public}s bypass local cache: %{BOOL}d", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D38B3760](v18, -1, -1);
      v11 = v17;
      goto LABEL_10;
    }
  }

  v19 = swift_task_alloc();
  *(v0 + 56) = v19;
  *v19 = v0;
  v19[1] = sub_1D30930DC;
  v20 = *(v0 + 64);
  v21 = *(v0 + 32);
  v22 = *(v0 + 40);
  v24 = *(v0 + 16);
  v23 = *(v0 + 24);

  return sub_1D2FE5F5C(v24, v23, v21, v22, v20);
}

uint64_t sub_1D30930DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_1D30931F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3093218, 0, 0);
}

uint64_t sub_1D3093218()
{
  v15 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1D2FFEA04(v5, v4, &v14);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Manifest data for App Store app with bundle ID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v8 = v0[2];
  v9 = v0[3];
  objc_allocWithZone(MEMORY[0x1E69635F8]);

  v10 = sub_1D3028864(v8, v9, 1);
  v0[5] = v10;
  v11 = v10;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_1D3093460;

  return sub_1D2FEAF4C(v11);
}

uint64_t sub_1D3093460(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_1D30935FC;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_1D3093594;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D3093594()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1(v2, v3);
}

uint64_t sub_1D30935FC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3093660(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3093684, 0, 0);
}

uint64_t sub_1D3093684()
{
  v15 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1D2FFEA04(v5, v4, &v14);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Manifest data for TestFlight app with bundle ID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v8 = v0[2];
  v9 = v0[3];
  objc_allocWithZone(MEMORY[0x1E69635F8]);

  v10 = sub_1D3028864(v8, v9, 1);
  v0[5] = v10;
  v11 = v10;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_1D30938CC;

  return sub_1D2FEB804(v11);
}

uint64_t sub_1D30938CC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_1D30E702C;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_1D30E7028;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

char *sub_1D3093A00(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v5 = a4;
  if (a4)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v8 = sub_1D30E8B3C();
    __swift_project_value_buffer(v8, qword_1EE314B60);
    v9 = sub_1D30E928C();

    v10 = sub_1D30E8B1C();

    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1D2FFEA04(a1, a2, &v35);
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_1D2FFEA04(a3, v5, &v35);
      _os_log_impl(&dword_1D2FD9000, v10, v9, "Manifest data from local cache for app with bundle ID: %{public}s team ID: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v12, -1, -1);
      v13 = v11;
LABEL_10:
      MEMORY[0x1D38B3760](v13, -1, -1);
    }
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v14 = sub_1D30E8B3C();
    __swift_project_value_buffer(v14, qword_1EE314B60);
    v15 = sub_1D30E928C();

    v10 = sub_1D30E8B1C();

    if (os_log_type_enabled(v10, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1D2FFEA04(a1, a2, &v35);
      _os_log_impl(&dword_1D2FD9000, v10, v15, "Manifest data from local cache for app with bundle ID: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1D38B3760](v17, -1, -1);
      v13 = v16;
      goto LABEL_10;
    }
  }

  objc_allocWithZone(MEMORY[0x1E69635F8]);

  v18 = sub_1D3028864(a1, a2, 1);
  if (!v4)
  {
    v19 = v18;
    if (!v5)
    {
LABEL_20:
      v5 = sub_1D2FEE270(v19);

      return v5;
    }

    v20 = [v19 teamIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1D30E908C();
      v24 = v23;

      if (v22 == a3 && v24 == v5)
      {

LABEL_19:

        goto LABEL_20;
      }

      v25 = sub_1D30E97CC();

      if (v25)
      {
        goto LABEL_19;
      }
    }

    if (sub_1D30D94B0())
    {
      goto LABEL_19;
    }

    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v27 = v26;
    v28 = [v19 teamIdentifier];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1D30E908C();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    *v27 = v30;
    v27[1] = v32;
    v27[2] = a3;
    v27[3] = v5;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1D3093E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1D30E852C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3093F28, 0, 0);
}

uint64_t sub_1D3093F28()
{
  v16 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1D2FFEA04(v5, v4, &v15);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Manifest request for App Store app with bundle ID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v8 = v0[3];
  v9 = v0[4];
  objc_allocWithZone(MEMORY[0x1E69635F8]);

  v10 = sub_1D3028864(v8, v9, 1);
  v0[9] = v10;
  v11 = v10;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1D309417C;
  v13 = v0[8];

  return sub_1D2FEC92C(v13, v11);
}

uint64_t sub_1D309417C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D3094328;
  }

  else
  {
    v2 = sub_1D3094290;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3094290()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);

  (*(v3 + 32))(v4, v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D3094328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3094394@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v97 = a5;
  v98 = a6;
  v95 = a3;
  v96 = a4;
  v99 = a1;
  v110[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1D30E8D9C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v84 - v17;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D30E8B3C();
  v20 = __swift_project_value_buffer(v19, qword_1EE314B60);
  v21 = sub_1D30E928C();

  v91 = v20;
  v22 = sub_1D30E8B1C();

  v23 = os_log_type_enabled(v22, v21);
  v102 = a2;
  v94 = a7;
  v88 = v16;
  v89 = v13;
  if (v23)
  {
    v24 = v95;
    v84 = HIDWORD(v95);
    v25 = v96;
    v85 = HIDWORD(v96);
    v90 = v18;
    v92 = v10;
    v26 = v97;
    v86 = HIDWORD(v97);
    v27 = v98;
    v87 = HIDWORD(v98);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v93 = v9;
    v30 = v29;
    v110[0] = v29;
    *v28 = 136446722;
    v31 = v99;
    *(v28 + 4) = sub_1D2FFEA04(v99, v102, v110);
    *(v28 + 12) = 2160;
    *(v28 + 14) = 1752392040;
    *(v28 + 22) = 2080;
    v103 = __PAIR64__(v84, v24);
    v104 = v25;
    v105 = v85;
    v106 = v26;
    v107 = v86;
    v18 = v90;
    v108 = v27;
    v10 = v92;
    v109 = v87;
    type metadata accessor for audit_token_t(0);
    v32 = sub_1D30E909C();
    v34 = sub_1D2FFEA04(v32, v33, v110);

    *(v28 + 24) = v34;
    _os_log_impl(&dword_1D2FD9000, v22, v21, "Path to manifest in local cache for app with bundle ID: %{public}s audit token: %{mask.hash}s", v28, 0x20u);
    swift_arrayDestroy();
    v35 = v30;
    v9 = v93;
    MEMORY[0x1D38B3760](v35, -1, -1);
    MEMORY[0x1D38B3760](v28, -1, -1);
  }

  else
  {

    v31 = v99;
  }

  v36 = v101;
  result = sub_1D2FEABF8(v31, v102, v18);
  if (!v36)
  {
    v102 = 0;
    LOBYTE(v110[0]) = 1;
    v38 = objc_opt_self();
    v39 = 0x1E8428000uLL;
    v40 = [v38 defaultManager];
    sub_1D30E8D3C();
    v41 = sub_1D30E906C();

    v42 = [v40 fileExistsAtPath:v41 isDirectory:v110];

    if (!v42)
    {
      (*(v10 + 8))(v18, v9);
LABEL_12:
      v57 = type metadata accessor for Helper.PathToManifestLookupResult(0);
      return (*(*(v57 - 8) + 56))(v94, 1, 1, v57);
    }

    if (v110[0])
    {
      v43 = sub_1D30E92AC();
      v44 = v89;
      (*(v10 + 16))(v89, v18, v9);
      v45 = sub_1D30E8B1C();
      if (os_log_type_enabled(v45, v43))
      {
        v46 = v44;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v90 = v18;
        LODWORD(v101) = v43;
        v93 = v9;
        v49 = v48;
        v103 = v48;
        *v47 = 136446210;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v50 = sub_1D30E977C();
        v52 = v51;
        v100 = *(v10 + 8);
        v53 = v46;
        v39 = 0x1E8428000;
        v100(v53, v93);
        v54 = sub_1D2FFEA04(v50, v52, &v103);

        *(v47 + 4) = v54;
        _os_log_impl(&dword_1D2FD9000, v45, v101, "The item at “%{public}s” is unexpectedly a directory; removing it…", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        v55 = v49;
        v9 = v93;
        v56 = v100;
        v18 = v90;
        MEMORY[0x1D38B3760](v55, -1, -1);
        MEMORY[0x1D38B3760](v47, -1, -1);
      }

      else
      {

        v56 = *(v10 + 8);
        v56(v44, v9);
      }

      v71 = [v38 *(v39 + 2552)];
      sub_1D30E8D3C();
      v72 = sub_1D30E906C();

      v103 = 0;
      v73 = [v71 removeItemAtPath:v72 error:&v103];

      if (!v73)
      {
        v78 = v103;
        sub_1D30E87DC();

        swift_willThrow();
        return (v56)(v18, v9);
      }

      v74 = v103;
      v56(v18, v9);
      goto LABEL_12;
    }

    v58 = v88;
    (*(v10 + 16))(v88, v18, v9);
    v59 = sub_1D30E8B1C();
    v60 = v9;
    v61 = sub_1D30E92BC();
    v62 = os_log_type_enabled(v59, v61);
    v92 = v10;
    if (v62)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v103 = v64;
      *v63 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v65 = sub_1D30E977C();
      v66 = v58;
      v68 = v67;
      v69 = *(v10 + 8);
      v69(v66, v60);
      v70 = sub_1D2FFEA04(v65, v68, &v103);

      *(v63 + 4) = v70;
      _os_log_impl(&dword_1D2FD9000, v59, v61, "Issuing a sandbox extension to “%{public}s”…", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1D38B3760](v64, -1, -1);
      MEMORY[0x1D38B3760](v63, -1, -1);
    }

    else
    {

      v69 = *(v10 + 8);
      v69(v58, v60);
    }

    v75 = v102;
    v76 = sub_1D30E7B38(v18, 0, v95, v96, v97, v98);
    if (v75)
    {
      return (v69)(v18, v60);
    }

    else
    {
      v79 = v76;
      v80 = v77;
      v81 = v94;
      (*(v92 + 32))(v94, v18, v60);
      v82 = type metadata accessor for Helper.PathToManifestLookupResult(0);
      v83 = (v81 + *(v82 + 20));
      *v83 = v79;
      v83[1] = v80;
      return (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
    }
  }

  return result;
}

void sub_1D3094C80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (!a6)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v22 = sub_1D30E8B3C();
    __swift_project_value_buffer(v22, qword_1EE314B60);
    v23 = sub_1D30E928C();
    sub_1D2FF17B0(a1, a2);

    v24 = sub_1D30E8B1C();
    sub_1D2FF1804(a1, a2);

    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v25 = 136446466;
      v26 = sub_1D30E88EC();
      v28 = sub_1D2FFEA04(v26, v27, &v49);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_1D2FFEA04(a3, a4, &v49);
      _os_log_impl(&dword_1D2FD9000, v24, v23, "Install manifest from: %{public}s for app with bundle ID: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v47, -1, -1);
      MEMORY[0x1D38B3760](v25, -1, -1);
    }

    goto LABEL_21;
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D30E8B3C();
  __swift_project_value_buffer(v12, qword_1EE314B60);
  v13 = sub_1D30E928C();
  sub_1D2FF17B0(a1, a2);

  v14 = sub_1D30E8B1C();
  sub_1D2FF1804(a1, a2);

  v45 = a1;
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v44 = v13;
    v16 = swift_slowAlloc();
    v49 = v16;
    *v15 = 136446722;
    v17 = sub_1D30E88EC();
    v19 = sub_1D2FFEA04(v17, v18, &v49);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1D2FFEA04(a3, a4, &v49);
    *(v15 + 22) = 2082;
    v7 = v6;
    *(v15 + 24) = sub_1D2FFEA04(a5, a6, &v49);
    _os_log_impl(&dword_1D2FD9000, v14, v44, "Install manifest from: %{public}s for app with bundle ID: %{public}s team ID: %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v16, -1, -1);
    MEMORY[0x1D38B3760](v15, -1, -1);
  }

  v20 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v21 = sub_1D3028864(a3, a4, 1);
  if (v7)
  {

    return;
  }

  v29 = v21;
  v30 = [v21 teamIdentifier];
  if (v30)
  {
    v31 = a2;
    v32 = v30;
    v33 = sub_1D30E908C();
    v35 = v34;

    if (v33 == a5 && v35 == a6)
    {

      a2 = v31;
LABEL_20:
      a1 = v45;
LABEL_21:
      sub_1D2FEED7C(a1, a2, a3, a4);
      return;
    }

    v36 = sub_1D30E97CC();

    a2 = v31;
    if (v36)
    {
      goto LABEL_19;
    }
  }

  if (sub_1D30D94B0())
  {
LABEL_19:

    goto LABEL_20;
  }

  type metadata accessor for HelperError(0);
  sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
  swift_allocError();
  v38 = v37;
  v39 = [v29 teamIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1D30E908C();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  *v38 = v41;
  v38[1] = v43;
  v38[2] = a5;
  v38[3] = a6;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t sub_1D3095200(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3095224, 0, 0);
}

uint64_t sub_1D3095224()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "All asset pack records", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  sub_1D30E91FC();
  *(v0 + 32) = sub_1D30E91EC();
  v6 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3095370, v6, v5);
}

uint64_t sub_1D3095370()
{
  v1 = *(v0 + 40);

  sub_1D30C2904(v1, (v0 + 16));
  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D3095434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 160) = a4;
  *(v6 + 168) = v5;
  *(v6 + 240) = a5;
  *(v6 + 144) = a2;
  *(v6 + 152) = a3;
  *(v6 + 136) = a1;
  *(v6 + 176) = *(type metadata accessor for AssetPackRecord.StaticRepresentation(0) - 8);
  *(v6 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  *(v6 + 192) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  *(v6 + 200) = v7;
  *(v6 + 208) = *(v7 - 8);
  *(v6 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D309559C, 0, 0);
}

uint64_t sub_1D309559C()
{
  v23 = v0;
  v1 = *(v0 + 160);
  if (v1)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v2 = sub_1D30E8B3C();
    __swift_project_value_buffer(v2, qword_1EE314B60);
    v3 = sub_1D30E928C();

    v4 = sub_1D30E8B1C();

    if (os_log_type_enabled(v4, v3))
    {
      v5 = *(v0 + 240);
      v7 = *(v0 + 144);
      v6 = *(v0 + 152);
      v8 = *(v0 + 136);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136446722;
      *(v9 + 4) = sub_1D2FFEA04(v8, v7, &v22);
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_1D2FFEA04(v6, v1, &v22);
      *(v9 + 22) = 1024;
      *(v9 + 24) = v5;
      _os_log_impl(&dword_1D2FD9000, v4, v3, "All asset pack records for app with bundle ID: %{public}s team ID: %{public}s including unavailable: %{BOOL}d", v9, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v10, -1, -1);
      v11 = v9;
LABEL_10:
      MEMORY[0x1D38B3760](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D30E8B3C();
    __swift_project_value_buffer(v12, qword_1EE314B60);
    v13 = sub_1D30E928C();

    v4 = sub_1D30E8B1C();

    if (os_log_type_enabled(v4, v13))
    {
      v14 = *(v0 + 240);
      v16 = *(v0 + 136);
      v15 = *(v0 + 144);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_1D2FFEA04(v16, v15, &v22);
      *(v17 + 12) = 1024;
      *(v17 + 14) = v14;
      _os_log_impl(&dword_1D2FD9000, v4, v13, "All asset pack records for app with bundle ID: %{public}s including unavailable: %{BOOL}d", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D38B3760](v18, -1, -1);
      v11 = v17;
      goto LABEL_10;
    }
  }

  *(v0 + 224) = sub_1D30E91FC();
  *(v0 + 232) = sub_1D30E91EC();
  v20 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30958D8, v20, v19);
}

void *sub_1D30958D8()
{

  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 240);
  sub_1D30E8E7C();
  *(swift_task_alloc() + 16) = v2;
  *(v0 + 112) = type metadata accessor for AssetPackRecord(0);
  sub_1D30E8ACC();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v4 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v5 = sub_1D30E8E1C();
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  v40 = v4;
  if (v5 >> 62)
  {
    goto LABEL_51;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = 0;
    v37 = v5 & 0xFFFFFFFFFFFFFF8;
    v38 = v5 & 0xC000000000000001;
    v35 = v6;
    v36 = v5;
    while (1)
    {
      if (v38)
      {
        v10 = MEMORY[0x1D38B29E0](v8, v5);
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          v16 = v40;
          v7 = MEMORY[0x1E69E7CC0];
          goto LABEL_24;
        }
      }

      else
      {
        if (v8 >= *(v37 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v6 = sub_1D30E958C();
          goto LABEL_5;
        }

        v10 = *(v5 + 8 * v8 + 32);

        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_21;
        }
      }

      sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = *(v0 + 136);
      v39 = *(v0 + 144);
      *(v0 + 120) = v10;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v14 = *(v0 + 16);
      v13 = *(v0 + 24);

      if (v14 == v12 && v13 == v39)
      {

        v9 = v35;
      }

      else
      {
        v15 = sub_1D30E97CC();

        v9 = v35;
        if ((v15 & 1) == 0)
        {

          goto LABEL_9;
        }
      }

      sub_1D30E950C();
      sub_1D30E953C();
      sub_1D30E954C();
      sub_1D30E951C();
LABEL_9:
      v5 = v36;
      ++v8;
      if (v11 == v9)
      {
        goto LABEL_22;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_24:

  v40 = v7;
  if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    v17 = sub_1D30E958C();
    if (v17)
    {
      goto LABEL_27;
    }

LABEL_53:
    v24 = v7;
    goto LABEL_54;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_53;
  }

LABEL_27:
  v18 = 0;
  while ((v16 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1D38B29E0](v18, v16);
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_47;
    }

LABEL_34:
    v5 = sub_1D30E91EC();
    sub_1D30E91AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (!*(v0 + 160))
    {
      goto LABEL_41;
    }

    *(v0 + 128) = v19;
    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D2FF67A4();
    sub_1D30E8F0C();

    v21 = *(v0 + 80);
    v22 = *(v0 + 88);

    if (v22)
    {
      if (v21 == *(v0 + 152) && v22 == *(v0 + 160))
      {

LABEL_41:

LABEL_42:
        sub_1D30E950C();
        v5 = *(v40 + 16);
        sub_1D30E953C();
        sub_1D30E954C();
        sub_1D30E951C();
        goto LABEL_30;
      }

      v23 = sub_1D30E97CC();

      if (v23)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

LABEL_30:
    ++v18;
    if (v20 == v17)
    {
      goto LABEL_48;
    }
  }

  if (v18 >= *(v16 + 16))
  {
    goto LABEL_50;
  }

  v19 = *(v16 + 8 * v18 + 32);

  v20 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_34;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  v24 = v40;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_54:

  if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
  {
    v25 = sub_1D30E958C();
    if (!v25)
    {
      goto LABEL_67;
    }

LABEL_57:
    result = sub_1D3028C78(0, v25 & ~(v25 >> 63), 0);
    if ((v25 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      v28 = *(v0 + 176);
      v29 = v7;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1D38B29E0](v27, v24);
        }

        else
        {
        }

        v30 = *(v0 + 184);

        sub_1D3010570(v30);

        v32 = *(v7 + 16);
        v31 = *(v7 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1D3028C78((v31 > 1), v32 + 1, 1);
        }

        v33 = *(v0 + 184);
        ++v27;
        *(v7 + 16) = v32 + 1;
        sub_1D3056830(v33, v7 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v32, type metadata accessor for AssetPackRecord.StaticRepresentation);
      }

      while (v25 != v27);

      goto LABEL_68;
    }

    __break(1u);
  }

  else
  {
    v25 = *(v24 + 16);
    if (v25)
    {
      goto LABEL_57;
    }

LABEL_67:

    v29 = MEMORY[0x1E69E7CC0];
LABEL_68:

    v34 = *(v0 + 8);

    return v34(v29);
  }

  return result;
}

uint64_t sub_1D30961E8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  *(v5 + 176) = a4;
  *(v5 + 184) = v6;
  *(v5 + 160) = a2;
  *(v5 + 168) = a3;
  *(v5 + 192) = *v6;
  v8 = sub_1D30E8D5C();
  *(v5 + 200) = v8;
  *(v5 + 208) = *(v8 - 8);
  *(v5 + 216) = swift_task_alloc();
  type metadata accessor for AssetPackHost(0);
  *(v5 + 224) = swift_task_alloc();
  v9 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v9;
  *(v5 + 48) = a1[2];

  return MEMORY[0x1EEE6DFA0](sub_1D3096314, 0, 0);
}

uint64_t sub_1D3096314()
{
  v40 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  v7 = sub_1D30E8B3C();
  __swift_project_value_buffer(v7, qword_1EE314B60);
  v8 = sub_1D30E928C();
  sub_1D3058338(v6, v2, type metadata accessor for AssetPackHost);
  (*(v3 + 16))(v1, v5, v4);
  sub_1D30E5940(v0 + 16, v0 + 64);
  v9 = sub_1D30E8B1C();
  sub_1D30E599C(v0 + 16);
  v10 = os_log_type_enabled(v9, v8);
  v11 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 200);
  v13 = *(v0 + 208);
  if (v10)
  {
    v32 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v15 = 136446978;
    v16 = *(v0 + 32);
    v37 = *(v0 + 16);
    v38 = v16;
    v39 = *(v0 + 48);
    sub_1D30E5940(v0 + 16, v0 + 112);
    v33 = v11;
    v17 = AssetPackRecord.GlobalID.description.getter();
    v34 = v8;
    v19 = v18;

    v20 = sub_1D2FFEA04(v17, v19, &v36);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v32;
    *(v15 + 22) = 2082;
    v21 = AssetPackHost.description.getter();
    v23 = v22;
    sub_1D3065284(v12, type metadata accessor for AssetPackHost);
    v24 = sub_1D2FFEA04(v21, v23, &v36);

    *(v15 + 24) = v24;
    *(v15 + 32) = 2082;
    sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
    v25 = sub_1D30E977C();
    v27 = v26;
    (*(v13 + 8))(v33, v14);
    v28 = sub_1D2FFEA04(v25, v27, &v36);

    *(v15 + 34) = v28;
    _os_log_impl(&dword_1D2FD9000, v9, v34, "Add asset pack record with global ID: %{public}s version: %lu host: %{public}s, root directory component: %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v35, -1, -1);
    MEMORY[0x1D38B3760](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    sub_1D3065284(v12, type metadata accessor for AssetPackHost);
  }

  sub_1D30E91FC();
  *(v0 + 232) = sub_1D30E91EC();
  v30 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30966D8, v30, v29);
}

uint64_t sub_1D30966D8()
{

  sub_1D30C3678();
  *(v0 + 240) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D3096794, 0, 0);
}

uint64_t sub_1D3096794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3096800()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D309686C(uint64_t a1, _OWORD *a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  *(v3 + 128) = *v2;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[2];
  return MEMORY[0x1EEE6DFA0](sub_1D30968C4, 0, 0);
}

uint64_t sub_1D30968C4()
{
  v18 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  sub_1D30E5940(v0 + 16, v0 + 64);
  v3 = sub_1D30E8B1C();
  sub_1D30E599C(v0 + 16);
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    v6 = *(v0 + 32);
    v15 = *(v0 + 16);
    v16 = v6;
    v17 = *(v0 + 48);
    sub_1D30E5940(v0 + 16, v0 + 64);
    v7 = AssetPackRecord.GlobalID.description.getter();
    v9 = v8;

    v10 = sub_1D2FFEA04(v7, v9, &v14);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Remove asset pack record with global ID: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38B3760](v5, -1, -1);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  sub_1D30E91FC();
  sub_1D30E5940(v0 + 16, v0 + 64);

  *(v0 + 136) = sub_1D30E91EC();
  v12 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3096AF8, v12, v11);
}

uint64_t sub_1D3096AF8()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);

  sub_1D30C52BC((v0 + 16), v1, (v0 + 16), v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D3096B94()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1D3096BDC, 0, 0);
}

uint64_t sub_1D3096BDC()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Erase asset pack records", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  sub_1D30E91FC();
  *(v0 + 32) = sub_1D30E91EC();
  v6 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3096D28, v6, v5);
}

uint64_t sub_1D3096D28()
{

  sub_1D30CDFD4();
  *(v0 + 40) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D30E7070, 0, 0);
}

uint64_t sub_1D3096DDC(_OWORD *a1)
{
  *(v2 + 112) = v1;
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  return MEMORY[0x1EEE6DFA0](sub_1D3096E0C, 0, 0);
}

uint64_t sub_1D3096E0C()
{
  v18 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  sub_1D30E5940(v0 + 16, v0 + 64);
  v3 = sub_1D30E8B1C();
  sub_1D30E599C(v0 + 16);
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    v6 = *(v0 + 32);
    v15 = *(v0 + 16);
    v16 = v6;
    v17 = *(v0 + 48);
    sub_1D30E5940(v0 + 16, v0 + 64);
    v7 = AssetPackRecord.GlobalID.description.getter();
    v9 = v8;

    v10 = sub_1D2FFEA04(v7, v9, &v14);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Unavailable asset pack is downloaded with global ID: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38B3760](v5, -1, -1);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  sub_1D30E91FC();
  *(v0 + 120) = sub_1D30E91EC();
  v12 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3097028, v12, v11);
}

uint64_t sub_1D3097028()
{

  sub_1D30CE844((v0 + 16), (v0 + 64));
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D30970C0(_OWORD *a1)
{
  *(v2 + 112) = v1;
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  return MEMORY[0x1EEE6DFA0](sub_1D30970F0, 0, 0);
}

uint64_t sub_1D30970F0()
{
  v18 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  sub_1D30E5940(v0 + 16, v0 + 64);
  v3 = sub_1D30E8B1C();
  sub_1D30E599C(v0 + 16);
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    v6 = *(v0 + 32);
    v15 = *(v0 + 16);
    v16 = v6;
    v17 = *(v0 + 48);
    sub_1D30E5940(v0 + 16, v0 + 64);
    v7 = AssetPackRecord.GlobalID.description.getter();
    v9 = v8;

    v10 = sub_1D2FFEA04(v7, v9, &v14);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Asset pack is available with global ID: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38B3760](v5, -1, -1);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  sub_1D30E91FC();
  *(v0 + 120) = sub_1D30E91EC();
  v12 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D309730C, v12, v11);
}

uint64_t sub_1D309730C()
{
  v1 = *(v0 + 112);

  v2 = sub_1D30C6FE0(v0 + 16, v1);
  v3 = *(v0 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_1D309739C(char a1, _OWORD *a2)
{
  v4 = v2;
  *(v3 + 208) = v4;
  *(v3 + 376) = a1;
  *(v3 + 216) = *v4;
  *(v3 + 224) = type metadata accessor for FilePath.ResolutionError(0);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v6 = sub_1D30E8D9C();
  *(v3 + 248) = v6;
  *(v3 + 256) = *(v6 - 8);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  v7 = sub_1D30E8D5C();
  *(v3 + 288) = v7;
  *(v3 + 296) = *(v7 - 8);
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  v8 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v8;
  *(v3 + 48) = a2[2];

  return MEMORY[0x1EEE6DFA0](sub_1D3097558, 0, 0);
}

uint64_t sub_1D3097558()
{
  v19 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  sub_1D30E5940(v0 + 16, v0 + 64);
  v3 = sub_1D30E8B1C();
  sub_1D30E599C(v0 + 16);
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 376);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 67109378;
    *(v5 + 4) = v4;
    *(v5 + 8) = 2082;
    v7 = *(v0 + 32);
    v16 = *(v0 + 16);
    v17 = v7;
    v18 = *(v0 + 48);
    sub_1D30E5940(v0 + 16, v0 + 160);
    v8 = AssetPackRecord.GlobalID.description.getter();
    v10 = v9;

    v11 = sub_1D2FFEA04(v8, v10, &v15);

    *(v5 + 10) = v11;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Set is available: %{BOOL}d of asset pack with global ID: %{public}s", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38B3760](v6, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  sub_1D30E91FC();
  sub_1D30E5940(v0 + 16, v0 + 112);
  *(v0 + 320) = sub_1D30E91EC();
  v13 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3097790, v13, v12);
}

uint64_t sub_1D3097790()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 208);
  v3 = *(v0 + 376);

  sub_1D30C8B18(v0 + 16, v2, v0 + 16, v3, v1);
  *(v0 + 328) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D3097848, 0, 0);
}

uint64_t sub_1D3097848()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 328);
  v3 = *(v0 + 24);
  sub_1D302D670(v1, v3, *(v0 + 232), *(v0 + 264));
  v4 = *(v0 + 312);
  if (v2)
  {
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
    v7 = *(v0 + 240);
    sub_1D3056830(*(v0 + 232), v7, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v7, v8, type metadata accessor for FilePath.ResolutionError);
    (*(v6 + 8))(v4, v5);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v23 = v3;
    v24 = v1;
    v12 = *(v0 + 296);
    v11 = *(v0 + 304);
    v13 = *(v0 + 280);
    v14 = *(v0 + 288);
    v15 = *(v0 + 256);
    v20 = *(v0 + 248);
    v21 = *(v0 + 376);
    sub_1D30E8D8C();
    (*(v12 + 16))(v11, v4, v14);
    sub_1D30E8D7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CE8, &unk_1D30F33F8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v0 + 336) = v17;
    *(v17 + 16) = xmmword_1D30EE930;
    (*(v15 + 16))(v17 + v16, v13, v20);
    if (v21)
    {
      v22 = sub_1D3040F84;
      v18 = swift_task_alloc();
      *(v0 + 344) = v18;
      *v18 = v0;
      v19 = sub_1D3097B90;
    }

    else
    {
      v22 = sub_1D3042420;
      v18 = swift_task_alloc();
      *(v0 + 360) = v18;
      *v18 = v0;
      v19 = sub_1D3097DBC;
    }

    v18[1] = v19;

    return v22(v17, v24, v23);
  }
}

uint64_t sub_1D3097B90()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1D3097FA8;
  }

  else
  {
    v2 = sub_1D3097CC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3097CC4()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  (*(v0[32] + 8))(v0[35], v0[31]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D3097DBC()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1D3098098;
  }

  else
  {
    v2 = sub_1D30E7080;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3097EF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3097FA8()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  (*(v0[32] + 8))(v0[35], v0[31]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D3098098()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  (*(v0[32] + 8))(v0[35], v0[31]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D3098188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 312) = a2;
  *(v4 + 320) = v3;
  v5 = *(a1 + 8);
  *(v4 + 328) = *a1;
  *(v4 + 336) = v5;
  *(v4 + 344) = *(a1 + 16);
  v6 = *(a1 + 40);
  *(v4 + 360) = *(a1 + 32);
  *(v4 + 368) = v6;
  *(v4 + 376) = *a3;
  *(v4 + 392) = *(a3 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D30981D4, 0, 0);
}

uint64_t sub_1D30981D4()
{
  v51 = v0;
  v1 = *(v0 + 376);
  if (v1)
  {
    v43 = *(v0 + 384);
    v2 = v1;
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D30E8B3C();
    __swift_project_value_buffer(v3, qword_1EE314B60);
    v4 = sub_1D30E928C();
    v5 = v1;

    v6 = sub_1D30E8B1C();

    if (os_log_type_enabled(v6, v4))
    {
      v8 = *(v0 + 360);
      v7 = *(v0 + 368);
      v39 = *(v0 + 344);
      v41 = v4;
      v9 = *(v0 + 328);
      v10 = *(v0 + 336);
      v40 = *(v0 + 312);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v45 = v12;
      v46 = v9;
      *v11 = 136446722;
      v47 = v10;
      v48 = v39;
      v49 = v8;
      v50 = v7;

      v13 = AssetPackRecord.GlobalID.description.getter();
      v15 = v14;

      v16 = sub_1D2FFEA04(v13, v15, &v45);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v40;
      *(v11 + 22) = 2082;
      *(v0 + 288) = v1;
      *(v0 + 296) = v43;
      v17 = v1;
      sub_1D3045A7C();
      v18 = sub_1D30E977C();
      v20 = v19;

      v21 = sub_1D2FFEA04(v18, v20, &v45);

      *(v11 + 24) = v21;
      _os_log_impl(&dword_1D2FD9000, v6, v41, "Report finished download of asset pack with global ID: %{public}s version: %lu with error coding: %{public}s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v12, -1, -1);
      MEMORY[0x1D38B3760](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v22 = sub_1D30E8B3C();
    __swift_project_value_buffer(v22, qword_1EE314B60);
    v23 = sub_1D30E928C();

    v24 = sub_1D30E8B1C();

    if (os_log_type_enabled(v24, v23))
    {
      v26 = *(v0 + 360);
      v25 = *(v0 + 368);
      v42 = *(v0 + 344);
      v28 = *(v0 + 328);
      v27 = *(v0 + 336);
      v44 = *(v0 + 312);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      v46 = v28;
      *v29 = 136446466;
      v47 = v27;
      v48 = v42;
      v49 = v26;
      v50 = v25;

      v31 = AssetPackRecord.GlobalID.description.getter();
      v33 = v32;

      v34 = sub_1D2FFEA04(v31, v33, &v45);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2048;
      *(v29 + 14) = v44;
      _os_log_impl(&dword_1D2FD9000, v24, v23, "Report finished download of asset pack with global ID: %{public}s version: %lu", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1D38B3760](v30, -1, -1);
      MEMORY[0x1D38B3760](v29, -1, -1);
    }
  }

  v35 = swift_task_alloc();
  *(v0 + 400) = v35;
  *v35 = v0;
  v35[1] = sub_1D30986E4;
  v36 = *(v0 + 328);
  v37 = *(v0 + 336);

  return sub_1D3091E5C(v0 + 16, v36, v37);
}

uint64_t sub_1D30986E4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1D3098E94;
  }

  else
  {
    v2 = sub_1D30987F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D30987F8()
{
  v45 = v0;
  v1 = *(v0 + 80);
  *(v0 + 232) = *(v0 + 96);
  v2 = *(v0 + 128);
  *(v0 + 248) = *(v0 + 112);
  *(v0 + 264) = v2;
  v3 = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  v4 = *(v0 + 64);
  *(v0 + 184) = *(v0 + 48);
  *(v0 + 200) = v4;
  *(v0 + 216) = v1;
  *(v0 + 280) = *(v0 + 144);
  *(v0 + 152) = v3;
  v5 = *(v0 + 248);
  if ((v5 - 1) <= 1)
  {
    v6 = *(v0 + 376);
    if (v6)
    {
      v7 = v6;
      if (qword_1EE3152C8 != -1)
      {
        swift_once();
      }

      v8 = sub_1D30E8B3C();
      __swift_project_value_buffer(v8, qword_1EE314B60);
      v9 = v6;

      v10 = sub_1D30E8B1C();
      v11 = sub_1D30E92BC();

      if (!os_log_type_enabled(v10, v11))
      {

        goto LABEL_16;
      }

      v12 = *(v0 + 360);
      v41 = *(v0 + 336);
      v39 = *(v0 + 368);
      v40 = *(v0 + 328);
      v13 = *(v0 + 312);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v44 = v16;
      *v14 = 134218754;
      *(v14 + 4) = v13;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_1D2FFEA04(v12, v39, &v44);
      *(v14 + 22) = 2082;
      *(v14 + 24) = sub_1D2FFEA04(v40, v41, &v44);
      *(v14 + 32) = 2114;
      v17 = v6;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 34) = v18;
      *v15 = v18;
      _os_log_impl(&dword_1D2FD9000, v10, v11, "Reporting to TestFlight that version %lu the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” failed with the error “%{public}@” to be downloaded…", v14, 0x2Au);
      sub_1D2FF14DC(v15, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v15, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v16, -1, -1);
      MEMORY[0x1D38B3760](v14, -1, -1);
    }

    else
    {
      if (qword_1EE3152C8 != -1)
      {
        swift_once();
      }

      v21 = sub_1D30E8B3C();
      __swift_project_value_buffer(v21, qword_1EE314B60);

      v10 = sub_1D30E8B1C();
      v22 = sub_1D30E92BC();

      if (os_log_type_enabled(v10, v22))
      {
        v24 = *(v0 + 360);
        v23 = *(v0 + 368);
        v25 = *(v0 + 328);
        v42 = *(v0 + 336);
        v26 = *(v0 + 312);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v44 = v28;
        *v27 = 134218498;
        *(v27 + 4) = v26;
        *(v27 + 12) = 2082;
        *(v27 + 14) = sub_1D2FFEA04(v24, v23, &v44);
        *(v27 + 22) = 2082;
        *(v27 + 24) = sub_1D2FFEA04(v25, v42, &v44);
        _os_log_impl(&dword_1D2FD9000, v10, v22, "Reporting to TestFlight that version %lu the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” was successfully downloaded…", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v28, -1, -1);
        MEMORY[0x1D38B3760](v27, -1, -1);
      }
    }

LABEL_16:
    v29 = *(*(v0 + 320) + 64);
    v31 = *(v0 + 192);
    v30 = *(v0 + 200);
    v32 = *(v0 + 184);
    v33 = *(v0 + 376);
    v43 = (v29 + *v29);
    v34 = swift_task_alloc();
    *(v0 + 416) = v34;
    *v34 = v0;
    v34[1] = sub_1D3098D50;
    v35 = *(v0 + 368);
    v36 = *(v0 + 376);
    v37 = *(v0 + 312);
    v38 = *(v0 + 360);

    return v43(v38, v35, v37, v32, v31, v30, v36, v5);
  }

  sub_1D2FE2EC4(v0 + 152);
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D3098D50()
{
  v2 = *v1;
  *(v2 + 424) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D3098EAC, 0, 0);
  }

  else
  {

    sub_1D2FE2EC4(v2 + 152);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D3098EAC()
{
  sub_1D2FE2EC4(v0 + 152);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3098F18(_OWORD *a1)
{
  v3 = v1;
  *(v2 + 208) = v3;
  *(v2 + 216) = *v3;
  *(v2 + 224) = *(sub_1D30E8D9C() - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = type metadata accessor for FilePath.ResolutionError(0);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  v5 = sub_1D30E8D5C();
  *(v2 + 272) = v5;
  *(v2 + 280) = *(v5 - 8);
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  *(v2 + 48) = a1[2];

  return MEMORY[0x1EEE6DFA0](sub_1D30990C0, 0, 0);
}

uint64_t sub_1D30990C0()
{
  v18 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  sub_1D30E5940(v0 + 16, v0 + 64);
  v3 = sub_1D30E8B1C();
  sub_1D30E599C(v0 + 16);
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    v6 = *(v0 + 32);
    v15 = *(v0 + 16);
    v16 = v6;
    v17 = *(v0 + 48);
    sub_1D30E5940(v0 + 16, v0 + 160);
    v7 = AssetPackRecord.GlobalID.description.getter();
    v9 = v8;

    v10 = sub_1D2FFEA04(v7, v9, &v14);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Remove asset pack with global ID: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38B3760](v5, -1, -1);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  sub_1D30E91FC();
  sub_1D30E5940(v0 + 16, v0 + 112);

  *(v0 + 304) = sub_1D30E91EC();
  v12 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30992F4, v12, v11);
}

uint64_t sub_1D30992F4()
{
  v1 = v0[37];
  v3 = v0[26];
  v2 = v0[27];

  sub_1D30CA8DC((v0 + 2), v3, v0 + 2, v3, v2, v1);
  v0[39] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D30993A0, 0, 0);
}

uint64_t sub_1D30993A0()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CE8, &unk_1D30F33F8);
  v4 = swift_allocObject();
  v5 = v0[2];
  v0[40] = v4;
  *(v4 + 16) = xmmword_1D30EE930;
  v6 = v0[3];
  sub_1D302D670(v5, v6, v2, v3);
  v7 = v0[37];
  if (v1)
  {
    v8 = v0[34];
    v9 = v0[35];
    v10 = v0[33];
    sub_1D3056830(v0[32], v10, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v10, v11, type metadata accessor for FilePath.ResolutionError);
    (*(v9 + 8))(v7, v8);
    *(v4 + 16) = 0;

    v12 = v0[1];

    return v12();
  }

  else
  {
    v15 = v0[35];
    v14 = v0[36];
    v17 = v0[34];
    sub_1D30E8D8C();
    (*(v15 + 16))(v14, v7, v17);
    sub_1D30E8D7C();
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = sub_1D3099670;

    return sub_1D3042420(v4, v5, v6);
  }
}

uint64_t sub_1D3099670()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1D3099908;
  }

  else
  {
    v2 = sub_1D30997A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D30997A4()
{
  (*(v0[35] + 8))(v0[37], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D3099864()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3099908()
{
  (*(v0[35] + 8))(v0[37], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D30999C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D3099A10, 0, 0);
}

uint64_t sub_1D3099A10()
{
  v16 = v0;
  v1 = v0[3];
  if (v1)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v2 = sub_1D30E8B3C();
    __swift_project_value_buffer(v2, qword_1EE314B60);
    v3 = sub_1D30E928C();

    v4 = sub_1D30E8B1C();

    if (os_log_type_enabled(v4, v3))
    {
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1D2FFEA04(v5, v1, &v15);
      _os_log_impl(&dword_1D2FD9000, v4, v3, "Remove all asset packs for app with bundle ID: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1D38B3760](v7, -1, -1);
      v8 = v6;
LABEL_10:
      MEMORY[0x1D38B3760](v8, -1, -1);
    }
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D30E8B3C();
    __swift_project_value_buffer(v9, qword_1EE314B60);
    v10 = sub_1D30E928C();
    v4 = sub_1D30E8B1C();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D2FD9000, v4, v10, "Remove all asset packs", v11, 2u);
      v8 = v11;
      goto LABEL_10;
    }
  }

  sub_1D30E91FC();
  v0[6] = sub_1D30E91EC();
  v13 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3099C78, v13, v12);
}

uint64_t sub_1D3099C78()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_1D30CF8A8(v2, v1);
  v0[7] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D3099D28, 0, 0);
}

uint64_t sub_1D3099D58(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D3099DA4, 0, 0);
}

uint64_t sub_1D3099DA4()
{
  v12 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1D2FFEA04(v5, v4, &v11);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Make all asset packs unavailable for app with bundle ID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  sub_1D30E91FC();
  v0[7] = sub_1D30E91EC();
  v9 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3099F64, v9, v8);
}

uint64_t sub_1D3099F64()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[3];

  sub_1D30D0A38(v3, v2, v1, v0 + 2);
  v0[8] = v0[2];

  return MEMORY[0x1EEE6DFA0](sub_1D309A048, 0, 0);
}

uint64_t sub_1D309A048()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1D30E7084;
  v2 = v0[8];
  v3 = v0[3];
  v4 = v0[4];

  return sub_1D3042420(v2, v3, v4);
}

uint64_t sub_1D309A0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for AssetPackHost(0);
  v4[6] = swift_task_alloc();
  v5 = sub_1D30E8A4C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for LicenseRecord.ElementID(0);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240);
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D309A2E8, 0, 0);
}

uint64_t sub_1D309A2E8()
{
  v62 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[15];
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v61 = v9;
    *v8 = 136446466;
    v10 = MEMORY[0x1D38B26B0](v7, v4);
    v12 = sub_1D2FFEA04(v10, v11, &v61);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_1D2FFEA04(v6, v5, &v61);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Request license from App Review for: %{public}s app bundle ID: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v13 = v0[2];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v0[16];
    v16 = v0[17];
    v50 = v0[12];
    v49 = v0[11];
    v48 = v0[10];
    v17 = v0[8];
    v18 = *(v0[15] + 20);
    v19 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v45 = (v17 + 8);
    v46 = (v17 + 32);
    v20 = MEMORY[0x1E69E7CC0];
    v21 = *(v15 + 72);
    v51 = v16;
    v52 = v0;
    v47 = v18;
    v44 = v21;
    do
    {
      v23 = v0[6];
      sub_1D3058338(v19, v0[17], type metadata accessor for AssetPackRecord.StaticRepresentation);
      sub_1D3058338(v16 + v18, v23, type metadata accessor for AssetPackHost);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
      v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
      v26 = v0[17];
      if (v25 == 1)
      {
        v22 = v0[6];
        sub_1D3065284(v0[17], type metadata accessor for AssetPackRecord.StaticRepresentation);
        sub_1D3065284(v22, type metadata accessor for AssetPackHost);
      }

      else
      {
        v27 = v0[12];
        v58 = v0[13];
        v59 = v14;
        v29 = v0[6];
        v28 = v0[7];
        v56 = v0[9];
        v57 = *(v29 + *(v24 + 64));
        v30 = *v46;
        (*v46)();
        (*v45)(v29, v28);
        v31 = v16[1];
        v54 = v16[2];
        v55 = *v26;
        v32 = v16[3];
        v53 = v16[4];
        v60 = v20;
        v33 = v16[5];

        sub_1D3065284(v26, type metadata accessor for AssetPackRecord.StaticRepresentation);
        (v30)(v27 + *(v48 + 20), v56, v28);
        *v27 = v55;
        v50[1] = v31;
        v50[2] = v54;
        v50[3] = v32;
        v50[4] = v53;
        v50[5] = v33;
        v20 = v60;
        *(v27 + *(v48 + 24)) = v57;
        sub_1D3056830(v27, v58, type metadata accessor for LicenseRecord.ElementID);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D30D81E4(0, v60[2] + 1, 1, v60, &qword_1EC749C18, &qword_1D30F32C0, type metadata accessor for LicenseRecord.ElementID);
        }

        v35 = v20[2];
        v34 = v20[3];
        v16 = v51;
        v0 = v52;
        v14 = v59;
        v18 = v47;
        v21 = v44;
        if (v35 >= v34 >> 1)
        {
          v20 = sub_1D30D81E4((v34 > 1), v35 + 1, 1, v20, &qword_1EC749C18, &qword_1D30F32C0, type metadata accessor for LicenseRecord.ElementID);
        }

        v36 = v52[13];
        v20[2] = v35 + 1;
        sub_1D3056830(v36, v20 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v35, type metadata accessor for LicenseRecord.ElementID);
      }

      v19 += v21;
      --v14;
    }

    while (v14);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v0[18] = v20;
  v37 = v0[14];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  v39 = swift_task_alloc();
  v0[19] = v39;
  *v39 = v0;
  v39[1] = sub_1D309A8D4;
  v40 = v0[14];
  v41 = v0[3];
  v42 = v0[4];

  return sub_1D301AF0C(v20, v41, v42, v40);
}

uint64_t sub_1D309A8D4()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  *(v3 + 160) = v0;

  sub_1D2FF14DC(v2, &qword_1EC749B88, &unk_1D30F3240);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D309AAAC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D309AAAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D309AB58(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D309AB7C, 0, 0);
}

uint64_t sub_1D309AB7C()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Next license request static: %{BOOL}d", v5, 8u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_1D309ACE4;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return sub_1D301E288(v8, v7);
}

uint64_t sub_1D309ACE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D309ADD8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D309ADFC, 0, 0);
}

uint64_t sub_1D309ADFC()
{
  v13 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    sub_1D3045AD0();
    v6 = sub_1D30E922C();
    v8 = sub_1D2FFEA04(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "New static license request for asset packs with global IDs: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38B3760](v5, -1, -1);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v0[6] = *(v0[5] + 56);
  sub_1D30E91FC();
  v0[7] = sub_1D30E91EC();
  v10 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D309AFE8, v10, v9);
}

uint64_t sub_1D309AFE8()
{
  v1 = v0[4];

  sub_1D30D184C(v1, v0 + 2);
  v2 = v0[2];
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1D309B0F0;
  v4 = v0[3];

  return sub_1D30212D4(v4, v2);
}

uint64_t sub_1D309B0F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D309B200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D309B224, 0, 0);
}

uint64_t sub_1D309B224()
{
  v18 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE314B60);
  v4 = sub_1D30E928C();
  sub_1D2FF17B0(v2, v1);
  v5 = sub_1D30E8B1C();
  sub_1D2FF1804(v2, v1);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446466;
    v9 = sub_1D30E88EC();
    v11 = sub_1D2FFEA04(v9, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Process response data: %{public}s for license with ID: %llu", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_1D309B41C;
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[2];

  return sub_1D3022F00(v15, v13, v14);
}

uint64_t sub_1D309B41C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D309B510(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a1;
  *(v3 + 72) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D309B540, 0, 0);
}

uint64_t sub_1D309B540()
{
  v21 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE314B60);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    v19 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446466;
    *(v0 + 16) = v19;
    *(v0 + 32) = v6;
    v10 = v19;
    sub_1D3045A7C();
    v11 = sub_1D30E977C();
    v13 = v12;

    v14 = sub_1D2FFEA04(v11, v13, &v20);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "Report error coding: %{public}s for license with ID: %llu", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_1D309B76C;
  v16 = *(v0 + 56);
  v17 = *(v0 + 40);

  return sub_1D302438C(v16, v17);
}

uint64_t sub_1D309B76C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D309B880()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "All license records", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  sub_1D30E91FC();
  *(v0 + 32) = sub_1D30E91EC();
  v6 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D309B9CC, v6, v5);
}

uint64_t sub_1D309B9CC()
{

  sub_1D30D1F0C((v0 + 16));
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D309BA88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D309BAAC, 0, 0);
}

uint64_t sub_1D309BAAC()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Remove license record with ID: %llu", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1D309BC10;
  v7 = v0[2];
  v8 = v0[3];

  return sub_1D3024E18(v7, v8);
}

uint64_t sub_1D309BC10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D309BD04(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  LODWORD(v5) = *a1;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D30E8B3C();
  __swift_project_value_buffer(v6, qword_1EE314B60);
  v7 = sub_1D30E928C();
  sub_1D2FF17B0(a2, a3);
  v8 = sub_1D30E8B1C();
  sub_1D2FF1804(a2, a3);
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446466;
    if (v5)
    {
      v11 = 0x676E696E676973;
    }

    else
    {
      v11 = 0x6974707972636E65;
    }

    v18 = v5;
    if (v5)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xEA00000000006E6FLL;
    }

    v13 = sub_1D2FFEA04(v11, v12, &v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_1D30E88EC();
    v5 = sub_1D2FFEA04(v14, v15, &v17);

    *(v9 + 14) = v5;
    LOBYTE(v5) = v18;
    _os_log_impl(&dword_1D2FD9000, v8, v7, "Install certificate for role: %{public}s from: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  v19 = v5;
  return sub_1D3037D78(&v19, a2, a3);
}

uint64_t sub_1D309BF24(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE314B60);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    if (v1)
    {
      v7 = 0x676E696E676973;
    }

    else
    {
      v7 = 0x6974707972636E65;
    }

    if (v1)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEA00000000006E6FLL;
    }

    v9 = sub_1D2FFEA04(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Uninstall certificate for role: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38B3760](v6, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v12 = v1;
  return sub_1D303856C(&v12);
}

uint64_t sub_1D309C0E0()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "All App Review records", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  sub_1D30E91FC();
  *(v0 + 32) = sub_1D30E91EC();
  v6 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D309C22C, v6, v5);
}

uint64_t sub_1D309C22C()
{

  sub_1D30D2408((v0 + 16));
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D309C2E8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D309C30C, 0, 0);
}

uint64_t sub_1D309C30C()
{
  v17 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1D2FFEA04(v5, v4, &v16);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Add App Review record of app with bundle ID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = type metadata accessor for AppReviewRecord(0);
  v11 = swift_allocObject();
  v0[9] = v11;
  v11[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AE0, &qword_1D30F2B48);
  v12 = sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  v0[2] = v10;
  v0[3] = v10;
  v0[4] = v12;
  v0[5] = v12;
  v11[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v11 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  __swift_project_boxed_opaque_existential_1(v11 + 2, v11[5]);
  swift_getKeyPath();
  v0[2] = v9;
  v0[3] = v8;
  sub_1D30E8DEC();

  sub_1D30E91FC();
  v0[10] = sub_1D30E91EC();
  v14 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D309C5F8, v14, v13);
}

uint64_t sub_1D309C5F8()
{
  v1 = v0[9];
  v2 = v0[8];

  sub_1D30D2974(v2, v1);
  v0[11] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D309C694, 0, 0);
}

uint64_t sub_1D309C694()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D309C6F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D309C75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D309C780, 0, 0);
}

uint64_t sub_1D309C780()
{
  v12 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1D2FFEA04(v5, v4, &v11);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Remove App Review record of app with bundle ID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  sub_1D30E91FC();

  v0[6] = sub_1D30E91EC();
  v9 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D309C94C, v9, v8);
}

uint64_t sub_1D309C94C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_1D30D2AC0(v3, v2, v1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1D309C9F0(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 256) = a8;
  *(v9 + 264) = v8;
  *(v9 + 240) = a6;
  *(v9 + 248) = a7;
  *(v9 + 224) = a4;
  *(v9 + 232) = a5;
  *(v9 + 208) = a1;
  *(v9 + 216) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749928, &unk_1D30F1B00);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = type metadata accessor for FilePath.ResolutionError(0);
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  v11 = sub_1D30E8D5C();
  *(v9 + 304) = v11;
  *(v9 + 312) = *(v11 - 8);
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  v12 = sub_1D30E8D9C();
  *(v9 + 336) = v12;
  *(v9 + 344) = *(v12 - 8);
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  v13 = a3[1];
  *(v9 + 16) = *a3;
  *(v9 + 32) = v13;
  *(v9 + 48) = a3[2];

  return MEMORY[0x1EEE6DFA0](sub_1D309CC88, 0, 0);
}

uint64_t sub_1D309CC88()
{
  v51 = v0;
  v50 = *MEMORY[0x1E69E9840];
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 464);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 216);
  v5 = sub_1D30E8B3C();
  *(v0 + 472) = __swift_project_value_buffer(v5, qword_1EE314B60);
  v6 = sub_1D30E928C();
  v7 = *(v3 + 16);
  *(v0 + 480) = v7;
  *(v0 + 488) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);
  sub_1D30E5940(v0 + 16, v0 + 64);

  v8 = sub_1D30E8B1C();
  sub_1D30E599C(v0 + 16);

  v9 = os_log_type_enabled(v8, v6);
  v10 = *(v0 + 464);
  v12 = *(v0 + 336);
  v11 = *(v0 + 344);
  if (v9)
  {
    v44 = *(v0 + 256);
    v43 = *(v0 + 248);
    v38 = *(v0 + 232);
    v42 = HIDWORD(*(v0 + 240));
    v40 = *(v0 + 240);
    v13 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v13 = 136447234;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v14 = sub_1D30E977C();
    log = v8;
    v15 = v7;
    v17 = v16;
    v39 = v6;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = sub_1D2FFEA04(v14, v17, &v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    v20 = *(v0 + 32);
    v47 = *(v0 + 16);
    v48 = v20;
    v49 = *(v0 + 48);
    sub_1D30E5940(v0 + 16, v0 + 160);
    v21 = AssetPackRecord.GlobalID.description.getter();
    v23 = v22;

    v7 = v15;

    v24 = sub_1D2FFEA04(v21, v23, &v46);

    *(v13 + 14) = v24;
    *(v13 + 22) = 2082;
    v25 = sub_1D30E922C();
    v27 = sub_1D2FFEA04(v25, v26, &v46);

    *(v13 + 24) = v27;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2080;
    *(v0 + 520) = v38;
    *(v0 + 528) = v40;
    *(v0 + 532) = v42;
    *(v0 + 536) = v43;
    *(v0 + 544) = v44;
    type metadata accessor for audit_token_t(0);
    v28 = sub_1D30E909C();
    v30 = sub_1D2FFEA04(v28, v29, &v46);

    *(v13 + 44) = v30;
    _os_log_impl(&dword_1D2FD9000, log, v39, "Look up path to file at: %{public}s in asset pack with global ID: %{public}s IDs of accessible asset packs: %{public}s audit token: %{mask.hash}s", v13, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v45, -1, -1);
    MEMORY[0x1D38B3760](v13, -1, -1);
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  *(v0 + 496) = v18;
  if (sub_1D30E8CDC())
  {
    sub_1D30E91FC();
    *(v0 + 504) = sub_1D30E91EC();
    v32 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D309D2D0, v32, v31);
  }

  else
  {
    v33 = *(v0 + 336);
    v34 = *(v0 + 216);
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v7(v35, v34, v33);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v36 = *(v0 + 8);

    return v36();
  }
}
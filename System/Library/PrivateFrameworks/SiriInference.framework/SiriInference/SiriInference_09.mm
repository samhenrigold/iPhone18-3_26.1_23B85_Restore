void sub_1DD43F534(uint64_t a1)
{
  v2 = type metadata accessor for ContactResolverCache(0);
  if (!__swift_getEnumTagSinglePayload(a1, 1, v2))
  {
    sub_1DD449160();
  }
}

uint64_t sub_1DD43F574(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v79 = a6;
  v80 = a5;
  v78 = a4;
  v92 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v84 = (&v72 - v10);
  v11 = type metadata accessor for ContactResolverRunTimeData(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v86 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ContactQuickResolver.ResolutionState(0);
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContactQuickResolver(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ContactResolverCache(0);
  sub_1DD3C2388(a1 + *(v20 + 32), v19);
  v21 = *(v20 + 44);
  v22 = v6;
  v23 = *(a1 + v21);
  sub_1DD4476F4();
  *(v19 + 5) = v23;
  swift_beginAccess();
  v24 = *a3;
  v25 = v23;

  v27 = 0;
  v28 = 32;
  *&v29 = 136446210;
  v72 = v29;
  v75 = xmmword_1DD642F70;
  v82 = v24;
  v73 = v19;
  while (1)
  {
    v30 = *(v24 + 16);
    if (v27 == v30)
    {

      return sub_1DD44774C(v19, type metadata accessor for ContactQuickResolver);
    }

    if (v27 >= v30)
    {
      break;
    }

    memcpy(v90, (v24 + v28), sizeof(v90));
    v87 = v28;
    memmove(v91, (v24 + v28), 0x108uLL);
    memcpy(v89, v91, sizeof(v89));
    sub_1DD3C9478(v90, &v88);
    v31 = v85;
    sub_1DD4250A0(v89, v85);
    if (v22)
    {

      sub_1DD44774C(v19, type metadata accessor for ContactQuickResolver);
      return sub_1DD3C9580(v91);
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v92 = v27;
    if (EnumCaseMultiPayload == 1)
    {
      memcpy(v89, v31, sizeof(v89));
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v33 = sub_1DD63F9F8();
      __swift_project_value_buffer(v33, qword_1EE16F068);
      v34 = sub_1DD63F9D8();
      v35 = sub_1DD640368();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v79;
      if (v36)
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1DD38D000, v34, v35, "Needs contact resolution", v38, 2u);
        MEMORY[0x1E12B3DA0](v38, -1, -1);
      }

      v39 = v80;
      v40 = *v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v39 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD3BE460();
        v40 = v66;
        *v80 = v66;
      }

      v42 = *(v40 + 16);
      if (v42 >= *(v40 + 24) >> 1)
      {
        sub_1DD3BE460();
        v40 = v67;
        *v80 = v67;
      }

      *(v40 + 16) = v42 + 1;
      *(v40 + 8 * v42 + 32) = v92;
      v43 = *v37;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v43;
      if ((v44 & 1) == 0)
      {
        sub_1DD3BFD44();
        v43 = v68;
        *v37 = v68;
      }

      v45 = *(v43 + 16);
      if (v45 >= *(v43 + 24) >> 1)
      {
        sub_1DD3BFD44();
        *v37 = v69;
      }

      sub_1DD3C9580(v91);
      v46 = *v37;
      *(v46 + 16) = v45 + 1;
      result = memcpy((v46 + 264 * v45 + 32), v89, 0x108uLL);
    }

    else
    {
      v47 = v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8A0, &qword_1DD649350) + 48)];
      sub_1DD44769C();
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v48 = sub_1DD63F9F8();
      __swift_project_value_buffer(v48, qword_1EE16F068);
      v49 = sub_1DD63F9D8();
      v50 = sub_1DD640368();
      if (os_log_type_enabled(v49, v50))
      {
        v81 = v47;
        v74 = 0;
        v51 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v89[0] = v47;
        *v51 = v72;
        v52 = 0xE700000000000000;
        v53 = 0x746361746E6F63;
        switch(v81)
        {
          case 1:
            v52 = 0xE900000000000079;
            v53 = 0x636E656772656D65;
            break;
          case 2:
            v53 = 0x6C646E6148776172;
            v52 = 0xE900000000000065;
            break;
          case 3:
            v52 = 0xE600000000000000;
            v53 = 0x64726143656DLL;
            break;
          case 4:
            v53 = 0x6E6F436E776F6E6BLL;
            v52 = 0xEC00000074636174;
            break;
          default:
            break;
        }

        v54 = sub_1DD39565C(v53, v52, v89);

        *(v51 + 4) = v54;
        _os_log_impl(&dword_1DD38D000, v49, v50, "resolved as %{public}s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x1E12B3DA0](v47, -1, -1);
        MEMORY[0x1E12B3DA0](v51, -1, -1);

        v19 = v73;
        v22 = v74;
        LOBYTE(v47) = v81;
      }

      else
      {
      }

      sub_1DD4476F4();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(&v13[v11[14]], 1, 1, v55);
      v56 = v11[19];
      v57 = sub_1DD63D0F8();
      __swift_storeEnumTagSinglePayload(&v13[v56], 1, 1, v57);
      sub_1DD63D0E8();
      memcpy(v13, v91, 0x108uLL);
      v13[264] = 3;
      *(v13 + 34) = 0;
      *(v13 + 35) = 0xE000000000000000;
      *(v13 + 144) = 0;
      *(v13 + 37) = MEMORY[0x1E69E7CC0];
      v13[v11[11]] = v47;
      v13[v11[12]] = 0;
      v13[v11[13]] = 5;
      v58 = &v13[v11[15]];
      *v58 = v75;
      v58[1] = 0u;
      v58[2] = 0u;
      v59 = &v13[v11[16]];
      *v59 = 1;
      v59[4] = 2;
      v60 = &v13[v11[17]];
      *v60 = 0;
      *(v60 + 1) = 0;
      v13[v11[20]] = 0;
      v61 = &v13[v11[21]];
      *v61 = 0;
      *(v61 + 1) = 0;
      *v84 = v92;
      sub_1DD4476F4();
      v62 = v78;
      v63 = *v78;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      *v62 = v63;
      if ((v64 & 1) == 0)
      {
        sub_1DD3BFD20();
        v63 = v70;
        *v62 = v70;
      }

      v65 = *(v63 + 16);
      if (v65 >= *(v63 + 24) >> 1)
      {
        sub_1DD3BFD20();
        *v62 = v71;
      }

      sub_1DD44774C(v13, type metadata accessor for ContactResolverRunTimeData);
      sub_1DD44774C(v86, type metadata accessor for Contact);
      *(*v62 + 16) = v65 + 1;
      result = sub_1DD447808();
    }

    v28 = v87 + 264;
    v27 = v92 + 1;
    v24 = v82;
  }

  __break(1u);
  return result;
}

void sub_1DD43FF34()
{
  OUTLINED_FUNCTION_93();
  v84 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_51(v4);
  v81 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B8, &unk_1DD65DD40);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v74 - v10;
  v12 = type metadata accessor for RunTimeDataRecord(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v17 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  v22 = MEMORY[0x1E69E7CC0];
  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v76 = *(v3 + 16);
  v77 = v3;
  v78 = v12;
  v79 = v11;
  v80 = v16;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v23 = qword_1EE16F0C0;
  v24 = v21 + *(v17 + 20);
  *v24 = "ContactResolver.ContactResolution.makeCorrection";
  *(v24 + 8) = 48;
  *(v24 + 16) = 2;
  v25 = v23;
  sub_1DD63F9B8();
  *(v21 + *(v17 + 24)) = v25;
  v26 = v25;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DD643F90;
  v28 = sub_1DD6408F8();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x1E69E6158];
  *(v27 + 64) = sub_1DD392BD8();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  OUTLINED_FUNCTION_22();
  v82 = v26;
  v83 = v21;
  sub_1DD63F998();

  if (qword_1EE166628 != -1)
  {
    OUTLINED_FUNCTION_14_16();
    swift_once();
  }

  [qword_1EE166630 waitUntilAllOperationsAreFinished];
  sub_1DD440624(v88);
  v31 = v85;
  if (v0)
  {
    goto LABEL_9;
  }

  v32 = v88[0];
  v33 = *(v84 + 24);
  v34 = *(v84 + 32);

  sub_1DD58C5BC(v33, v34, v35, v36, v37, v38, v39, v40, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  v75 = v32;
  v41 = v79;
  sub_1DD43C034(v42);

  v43 = v78;
  if (__swift_getEnumTagSinglePayload(v41, 1, v78) == 1)
  {
    sub_1DD390754(v41, &qword_1ECCDC1B8, &unk_1DD65DD40);
    type metadata accessor for InferenceError();
    swift_allocObject();
    OUTLINED_FUNCTION_44_6();
    v51 = sub_1DD4DE96C(v44, v45, v46, v47, v48, v49, v50, 263, v22, 1);
    OUTLINED_FUNCTION_19_12();
    sub_1DD445D68(v52, v53, &protocol conformance descriptor for InferenceError);
    swift_allocError();
    *v54 = v51;
    swift_willThrow();

LABEL_9:
    type metadata accessor for InferenceError();
    swift_allocObject();
    OUTLINED_FUNCTION_44_6();
    sub_1DD4DE96C(v55, v56, v57, v58, v59, v60, v61, 284, v22, 1);
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v62 = sub_1DD63F9F8();
    __swift_project_value_buffer(v62, qword_1EE16F0C8);
    sub_1DD4DEB78();

    swift_willThrow();
    sub_1DD6404C8();
    v63 = v83;
    OUTLINED_FUNCTION_17_14();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_4_19();
    sub_1DD44774C(v63, v64);
    goto LABEL_12;
  }

  v65 = v80;
  sub_1DD44769C();
  v84 = *(v65 + *(v43 + 24));
  v66 = v76;
  sub_1DD42BA74(0, v76, 0);
  v67 = (v77 + 32);
  for (i = v66 - 1; ; --i)
  {
    memcpy(v88, v67, 0x108uLL);
    memcpy(v87, v67, sizeof(v87));
    sub_1DD3C9478(v88, v86);
    sub_1DD441054(v87, v84, v31);
    memcpy(v86, v87, sizeof(v86));
    sub_1DD3C9580(v86);
    v70 = *(v22 + 16);
    v69 = *(v22 + 24);
    if (v70 >= v69 >> 1)
    {
      v71 = OUTLINED_FUNCTION_36_6(v69);
      sub_1DD42BA74(v71, v70 + 1, 1);
    }

    *(v22 + 16) = v70 + 1;
    OUTLINED_FUNCTION_24_0();
    sub_1DD447808();
    if (!i)
    {
      break;
    }

    v67 += 264;
  }

  sub_1DD44774C(v80, type metadata accessor for RunTimeDataRecord);
  sub_1DD6404C8();
  v72 = v83;
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_4_19();
  sub_1DD44774C(v72, v73);
LABEL_12:
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD440624@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v23 - v4);
  v6 = sub_1DD63CE68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  if (qword_1EE166420 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_1EE166408);
  swift_beginAccess();
  sub_1DD3C4EB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    swift_willThrowTypedImpl();
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD63F9F8();
    __swift_project_value_buffer(v13, qword_1EE16F0C8);
    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640368();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1DD39565C(0x44656D69546E7552, 0xED00004244617461, &v24);
      _os_log_impl(&dword_1DD38D000, v14, v15, "defaultURL does not exist for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E12B3DA0](v17, -1, -1);
      MEMORY[0x1E12B3DA0](v16, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    v19 = sub_1DD5CF3F4(v9, 1, &unk_1F58AAF08);
    if (v1)
    {
      v20 = *(v7 + 8);
      v20(v9, v6);
      return (v20)(v12, v6);
    }

    else
    {
      v21 = v19;
      v22 = *(v7 + 8);
      v22(v9, v6);
      result = (v22)(v12, v6);
      *a1 = v21;
    }
  }

  return result;
}

uint64_t sub_1DD4409F8@<X0>(uint64_t **a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v35 - v5);
  OUTLINED_FUNCTION_42_5();
  v7 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  if (qword_1EE165A48 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_1EE16F050);
  sub_1DD3C4EB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    swift_willThrowTypedImpl();
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1EE16F0C8);
    v16 = sub_1DD63F9D8();
    sub_1DD640368();
    v17 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_18_1();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1DD39565C(0x69726F636F707948, 0xEC00000042446D73, &v36);
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    return swift_willThrow();
  }

  else
  {
    v27 = OUTLINED_FUNCTION_39_5();
    v28(v27);
    v29 = OUTLINED_FUNCTION_38_5();
    v30(v29);
    sub_1DD5CF3F4(v13, 1, MEMORY[0x1E69E7CC0]);
    if (v1)
    {
      v31 = *(v9 + 8);
      v31(v13, v7);
      v32 = OUTLINED_FUNCTION_40();
      return (v31)(v32);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_51_5();
      v3(v33);
      v34 = OUTLINED_FUNCTION_40();
      result = (v3)(v34);
      *a1 = v6;
    }
  }

  return result;
}

uint64_t sub_1DD440D24@<X0>(uint64_t **a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v35 - v5);
  OUTLINED_FUNCTION_42_5();
  v7 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  if (qword_1EE1659B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_1EE16F038);
  sub_1DD3C4EB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    swift_willThrowTypedImpl();
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1EE16F0C8);
    v16 = sub_1DD63F9D8();
    sub_1DD640368();
    v17 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_18_1();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1DD39565C(0x6E6F6974616C6552, 0xEE00424470696873, &v36);
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    return swift_willThrow();
  }

  else
  {
    v27 = OUTLINED_FUNCTION_39_5();
    v28(v27);
    v29 = OUTLINED_FUNCTION_38_5();
    v30(v29);
    sub_1DD5CF3F4(v13, 1, MEMORY[0x1E69E7CC0]);
    if (v1)
    {
      v31 = *(v9 + 8);
      v31(v13, v7);
      v32 = OUTLINED_FUNCTION_40();
      return (v31)(v32);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_51_5();
      v3(v33);
      v34 = OUTLINED_FUNCTION_40();
      result = (v3)(v34);
      *a1 = v6;
    }
  }

  return result;
}

uint64_t sub_1DD441054@<X0>(const void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v44 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v39 = type metadata accessor for ContactResolverRunTimeData(0);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v36 - v16;
  memcpy(v55, a1, 0x108uLL);
  v17 = 0;
  v56 = a2;
  v18 = *(a2 + 16);
  while (1)
  {
    if (v18 == v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
      return swift_storeEnumTagMultiPayload();
    }

    sub_1DD4476F4();
    v19 = *(v12 + 37);
    if (*(v19 + 16))
    {
      v20 = v19 + *(matched + 20) + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      memcpy(v49, (v20 + 8), 0x108uLL);
      memmove(v51, (v20 + 8), 0x108uLL);
      nullsub_1();
      sub_1DD3C9478(v49, v53);
      memcpy(v54, v51, sizeof(v54));
    }

    else
    {
      sub_1DD447694(v54);
    }

    memcpy(v52, v55, sizeof(v52));
    nullsub_1();
    memcpy(v51, v54, 0x108uLL);
    memcpy(&v51[33], v52, 0x108uLL);
    memcpy(v53, v54, sizeof(v53));
    if (sub_1DD3C94D4(v53) == 1)
    {
      break;
    }

    memcpy(v50, v51, sizeof(v50));
    memcpy(v48, v51, sizeof(v48));
    memcpy(v49, &v51[33], 0x108uLL);
    if (sub_1DD3C94D4(v49) == 1)
    {
      memcpy(v47, v51, sizeof(v47));
      sub_1DD3C9478(v55, v46);
      sub_1DD3C4EB4();
      sub_1DD3C9580(v47);
      goto LABEL_11;
    }

    memcpy(v47, &v51[33], sizeof(v47));
    sub_1DD3C9478(v55, v46);
    sub_1DD3C4EB4();
    v21 = static ContactQuery.== infix(_:_:)(v48, v47);
    memcpy(v45, v47, sizeof(v45));
    sub_1DD3C9580(v45);
    memcpy(v46, v48, sizeof(v46));
    sub_1DD3C9580(v46);
    memcpy(v47, v51, sizeof(v47));
    sub_1DD390754(v47, &qword_1ECCDCCB0, &unk_1DD64AEE0);
    if (v21)
    {
      goto LABEL_16;
    }

LABEL_13:
    sub_1DD44774C(v12, type metadata accessor for ContactResolverRunTimeData);
    ++v17;
  }

  memcpy(v49, &v51[33], 0x108uLL);
  if (sub_1DD3C94D4(v49) != 1)
  {
    sub_1DD3C9478(v55, v50);
LABEL_11:
    memcpy(v49, v51, sizeof(v49));
    sub_1DD390754(v49, &qword_1ECCDCCA8, &qword_1DD64AED8);
    goto LABEL_13;
  }

  memcpy(v50, v51, sizeof(v50));
  sub_1DD3C9478(v55, v48);
  sub_1DD390754(v50, &qword_1ECCDCCB0, &unk_1DD64AEE0);
LABEL_16:
  sub_1DD44769C();
  v23 = v38;
  sub_1DD44769C();
  result = sub_1DD556FCC();
  v24 = result;
  v25 = 0;
  v26 = *(v23 + 296);
  matched = *(v26 + 2);
  v27 = MEMORY[0x1E69E7CC0];
  v41 = v26;
  while (1)
  {
    v28 = v25;
LABEL_18:
    if (v28 == matched)
    {

      LOBYTE(v51[0]) = 3;
      v35 = v37;
      sub_1DD426AF4(v27, v51, 0x6F74636572726F63, 0xE900000000000072, v37);

      sub_1DD44774C(v38, type metadata accessor for ContactResolverRunTimeData);
      sub_1DD3C4EB4();
      return sub_1DD44774C(v35, type metadata accessor for ContactResolverRunTimeData);
    }

    if (v28 >= *(v26 + 2))
    {
      break;
    }

    v56 = v28 + 1;
    sub_1DD4476F4();
    v29 = 0;
    v30 = *(v24 + 16);
    while (v30 != v29)
    {
      type metadata accessor for Contact(0);
      static Contact.== infix(_:_:)();
      ++v29;
      if (v31)
      {
        result = sub_1DD44774C(v8, type metadata accessor for ContactMatchRuntimeData);
        v28 = v56;
        v26 = v41;
        goto LABEL_18;
      }
    }

    sub_1DD44769C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DD42B564(0, *(v27 + 16) + 1, 1);
      v27 = v51[0];
    }

    v34 = *(v27 + 16);
    v33 = *(v27 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_1DD42B564(v33 > 1, v34 + 1, 1);
      v27 = v51[0];
    }

    *(v27 + 16) = v34 + 1;
    result = sub_1DD44769C();
    v26 = v41;
    v25 = v56;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD44181C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_1();
}

uint64_t sub_1DD441834()
{
  sub_1DD43FF34();
  OUTLINED_FUNCTION_45_6();

  return v0();
}

uint64_t sub_1DD4418C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_1();
}

uint64_t sub_1DD4418DC()
{
  sub_1DD441958();
  OUTLINED_FUNCTION_45_6();

  return v0();
}

void sub_1DD441958()
{
  OUTLINED_FUNCTION_93();
  v76 = v1;
  v77 = v2;
  sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v72 = v4;
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v78 = v6 - v5;
  type metadata accessor for ContactResolverCache(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v74 = v9 - v8;
  v10 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v15 = qword_1EE16F0C0;
  v16 = v14 + *(v10 + 20);
  *v16 = "ContactResolver.findMatches";
  *(v16 + 8) = 27;
  *(v16 + 16) = 2;
  v17 = v15;
  sub_1DD63F9B8();
  *(v14 + *(v10 + 24)) = v17;
  v18 = v17;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD643F90;
  v20 = sub_1DD6408F8();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v70 = sub_1DD392BD8();
  *(v19 + 64) = v70;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  OUTLINED_FUNCTION_22();
  v75 = v18;
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v23 = sub_1DD63F9F8();
  __swift_project_value_buffer(v23, qword_1EE16F068);
  v24 = v77;

  v25 = sub_1DD63F9D8();
  v26 = sub_1DD640368();

  v27 = v78;
  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_18_1();
    v28 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v68 = swift_slowAlloc();
    v80[0] = v68;
    v69 = v28;
    *v28 = 136315138;
    v33 = *(v77 + 16);
    v34 = MEMORY[0x1E69E7CC0];
    if (v33)
    {
      v66 = v26;
      v67 = v25;
      v71 = v14;
      v82 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4(0, v33, 0, v29, v30, v31, v32);
      v34 = v82;
      v35 = (v77 + 32);
      do
      {
        v36 = memcpy(v79, v35, sizeof(v79));
        v37 = ContactQuery.description.getter(v36);
        v39 = v38;
        v41 = *(v82 + 16);
        v40 = *(v82 + 24);
        if (v41 >= v40 >> 1)
        {
          v43 = OUTLINED_FUNCTION_36_6(v40);
          sub_1DD42A2D4(v43, v41 + 1, 1, v44, v45, v46, v47);
        }

        *(v82 + 16) = v41 + 1;
        v42 = v82 + 16 * v41;
        *(v42 + 32) = v37;
        *(v42 + 40) = v39;
        v35 += 264;
        --v33;
      }

      while (v33);
      v14 = v71;
      v24 = v77;
      v25 = v67;
      v26 = v66;
    }

    v79[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v48 = sub_1DD63FD58();
    v50 = v49;

    v51 = sub_1DD39565C(v48, v50, v80);

    *(v69 + 1) = v51;
    OUTLINED_FUNCTION_33_2(&dword_1DD38D000, v25, v26, "generating matches for %s");
    _os_log_impl(v52, v53, v54, v55, v56, v57);
    __swift_destroy_boxed_opaque_existential_1(v68);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();

    v27 = v78;
  }

  else
  {
  }

  sub_1DD4439E4();
  sub_1DD43CB78();
  sub_1DD3C4EB4();
  OUTLINED_FUNCTION_1_30();
  sub_1DD44774C(v74, v58);
  if (v81)
  {
    __swift_project_boxed_opaque_existential_1(v80, v81);
    sub_1DD601998(0, *(v76 + 8), *(v76 + 16));
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    sub_1DD390754(v80, &qword_1ECCDC250, &qword_1DD645B10);
  }

  v59 = v79[3];
  v60 = v79[4];
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  v61 = (*(v60 + 8))(v76, v24, v59, v60);
  if (!v0)
  {
    v75;
    sub_1DD63F9B8();
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1DD643F90;
    v63 = sub_1DD6408F8();
    *(v62 + 56) = MEMORY[0x1E69E6158];
    *(v62 + 64) = v70;
    *(v62 + 32) = v63;
    *(v62 + 40) = v64;
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_34_7();
    sub_1DD63F998();

    sub_1DD442050(v61);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_34_7();
    sub_1DD63F9A8();
    (*(v72 + 8))(v27, v73);
  }

  __swift_destroy_boxed_opaque_existential_1(v79);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_4_19();
  sub_1DD44774C(v14, v65);
  OUTLINED_FUNCTION_86();
}

void sub_1DD442050(uint64_t a1)
{
  v2 = &qword_1ECCDBBE8;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v52 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  MEMORY[0x1EEE9AC00](v9);
  v51 = (&v45 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v45 - v16);
  v18 = 0;
  v19 = *(a1 + 16);
  v47 = a1 + 32;
  v48 = v19;
  v15.n128_u64[0] = 134218240;
  v46 = v15;
  v15.n128_u64[0] = 134218242;
  v50 = v15;
  v59 = &v45 - v16;
  v53 = v8;
  v55 = v13;
  v56 = v9;
LABEL_2:
  if (v18 == v48)
  {
    return;
  }

  v49 = v18;
  v20 = *(v47 + 8 * v18);
  v21 = qword_1EE165FB0;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1DD63F9F8();
  v23 = __swift_project_value_buffer(v22, qword_1EE16F068);

  v58 = v23;
  v24 = sub_1DD63F9D8();
  v25 = v20;
  v26 = sub_1DD640368();
  if (os_log_type_enabled(v24, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = v46.n128_u32[0];
    *(v27 + 4) = v49;
    *(v27 + 12) = 2048;
    *(v27 + 14) = *(v25 + 16);

    _os_log_impl(&dword_1DD38D000, v24, v26, "matches for group %ld: %ld", v27, 0x16u);
    v28 = v27;
    v17 = v59;
    MEMORY[0x1E12B3DA0](v28, -1, -1);
  }

  else
  {
  }

  v29 = v53;
  v30 = 0;
  ++v49;
  v54 = v25;
  v31 = *(v25 + 16);
  for (i = v31; ; v31 = i)
  {
    if (v30 == v31)
    {
      v32 = 1;
      v30 = v31;
      goto LABEL_14;
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v30 >= *(v54 + 16))
    {
      goto LABEL_22;
    }

    *v51 = v30;
    sub_1DD3C4EB4();
    v17 = v59;
    sub_1DD447808();
    v32 = 0;
    ++v30;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v13, v32, 1, v9);
    sub_1DD447808();
    if (__swift_getEnumTagSinglePayload(v17, 1, v9) == 1)
    {

      v18 = v49;
      goto LABEL_2;
    }

    v33 = *v17;
    sub_1DD447808();
    sub_1DD3C4EB4();
    v34 = sub_1DD63F9D8();
    v35 = sub_1DD640368();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v2;
      v38 = swift_slowAlloc();
      v60 = v38;
      *v36 = v50.n128_u32[0];
      *(v36 + 4) = v33;
      *(v36 + 12) = 2080;
      v39 = Contact.description.getter();
      v41 = v40;
      sub_1DD390754(v5, v37, &qword_1DD644470);
      v42 = sub_1DD39565C(v39, v41, &v60);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_1DD38D000, v34, v35, "match %ld: %s", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v43 = v38;
      v2 = v37;
      MEMORY[0x1E12B3DA0](v43, -1, -1);
      v44 = v36;
      v29 = v53;
      MEMORY[0x1E12B3DA0](v44, -1, -1);
    }

    else
    {

      sub_1DD390754(v5, v2, &qword_1DD644470);
    }

    sub_1DD390754(v29, v2, &qword_1DD644470);
    v13 = v55;
    v9 = v56;
    v17 = v59;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_1DD4425CC()
{
  OUTLINED_FUNCTION_18_4();
  v13 = v1;
  v11 = v3;
  v12 = v2;
  sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_7();
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD643F90;
  v6 = sub_1DD6408F8();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1DD392BD8();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F998();

  sub_1DD4427E8(v0, v12, v13, v11);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F9A8();
  v9 = OUTLINED_FUNCTION_1_8();
  v10(v9);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4427E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v161 = a1;
  v151 = a4;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  MEMORY[0x1EEE9AC00](v149);
  v146 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v146 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v146 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v146 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v168 = *(v16 - 8);
  v169 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v167 = &v146 - v17;
  v160 = type metadata accessor for ContactResolverCache(0);
  MEMORY[0x1EEE9AC00](v160);
  v155 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v154 = &v146 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v156 = &v146 - v22;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v165 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v166 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v146 - v25;
  v27 = type metadata accessor for ContactResolverRunTimeData(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v148 = v9;
    v157 = v15;
    v30 = sub_1DD63F9F8();
    v163 = __swift_project_value_buffer(v30, qword_1EE16F068);
    v31 = sub_1DD63F9D8();
    v32 = sub_1DD640368();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v29;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DD38D000, v31, v32, "making contact recommendations", v34, 2u);
      v35 = v34;
      v29 = v33;
      MEMORY[0x1E12B3DA0](v35, -1, -1);
    }

    v147 = v12;

    v36 = type metadata accessor for ContactResolverConfig(0);
    sub_1DD443C80();
    v152 = v36;
    v37 = *(v36 + 80);
    v153 = a3;
    v38 = (a3 + v37);
    v40 = *v38;
    v39 = v38[1];
    v162 = v27;
    v41 = &v29[*(v27 + 84)];
    *v41 = v40;
    *(v41 + 1) = v39;

    v42 = v29;
    v43 = *(v29 + 37);
    v44 = *(v43 + 16);
    v45 = MEMORY[0x1E69E7CC0];
    v164 = v42;
    v159 = v43;
    if (v44)
    {
      v158 = a2;
      v172[0] = MEMORY[0x1E69E7CC0];

      sub_1DD42A2D4(0, v44, 0, v46, v47, v48, v49);
      v45 = v172[0];
      v50 = v43 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
      v170 = *(v165 + 72);
      do
      {
        sub_1DD4476F4();
        v173 = 0;
        v174 = 0xE000000000000000;
        MEMORY[0x1E12B2260](*v26, *(v26 + 1));
        MEMORY[0x1E12B2260](8250, 0xE200000000000000);
        sub_1DD640228();
        v52 = v173;
        v51 = v174;
        sub_1DD44774C(v26, type metadata accessor for ContactMatchRuntimeData);
        v172[0] = v45;
        v58 = *(v45 + 16);
        v57 = *(v45 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1DD42A2D4(v57 > 1, v58 + 1, 1, v53, v54, v55, v56);
          v45 = v172[0];
        }

        *(v45 + 16) = v58 + 1;
        v59 = v45 + 16 * v58;
        *(v59 + 32) = v52;
        *(v59 + 40) = v51;
        v50 += v170;
        --v44;
      }

      while (v44);

      a2 = v158;
    }

    v173 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v60 = sub_1DD63FD58();
    v62 = v61;

    v63 = sub_1DD63F9D8();
    v64 = sub_1DD640368();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v173 = v66;
      *v65 = 136315394;
      v67 = sub_1DD39565C(v60, v62, &v173);

      *(v65 + 4) = v67;
      *(v65 + 12) = 2080;
      swift_beginAccess();
      v68 = v162;
      v69 = sub_1DD4A7F9C();
      v71 = sub_1DD39565C(v69, v70, &v173);

      *(v65 + 14) = v71;
      _os_log_impl(&dword_1DD38D000, v63, v64, "Ranked candidate IDs and scores:\n%s\nModel output: %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v66, -1, -1);
      MEMORY[0x1E12B3DA0](v65, -1, -1);
    }

    else
    {

      v68 = v162;
    }

    v150 = sub_1DD43D048();
    v72 = v153;
    v73 = sub_1DD553818(v153);
    v74 = v159;

    v75 = v156;
    sub_1DD43CB78();
    v76 = *(v75 + *(v160 + 104));
    sub_1DD44774C(v75, type metadata accessor for ContactResolverCache);
    LODWORD(v158) = v73;
    LODWORD(v170) = sub_1DD553DE8(v74, v76, v73);

    LODWORD(v153) = *(v72 + *(v152 + 76));
    v77 = sub_1DD63F9D8();
    v78 = sub_1DD640368();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 67109120;
      *(v79 + 4) = v170 & 1;
      _os_log_impl(&dword_1DD38D000, v77, v78, "shouldPlusForcePrompt %{BOOL}d", v79, 8u);
      MEMORY[0x1E12B3DA0](v79, -1, -1);
    }

    sub_1DD43CB78();
    v80 = *(v75 + *(v160 + 104));
    sub_1DD44774C(v75, type metadata accessor for ContactResolverCache);
    v81 = sub_1DD553C54(v80, v158);
    v82 = v164;
    swift_beginAccess();
    v83 = 0;
    *(v82 + v68[16]) = v81 & 1;
    v84 = *(a2 + 16);
    while (v84 != v83)
    {
      v85 = v167;
      sub_1DD3C4EB4();
      ++v83;
      v86 = v85 + *(v169 + 36);
      LODWORD(v86) = *(v86 + *(type metadata accessor for ContactResolver.SignalSet(0) + 204));
      sub_1DD390754(v85, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v86 == 1)
      {
        goto LABEL_20;
      }
    }

    v81 = 0;
LABEL_20:
    v87 = v162;
    v88 = v164;
    v89 = v164 + v162[16];
    *(v89 + 3) = v81 & 1;
    *(v89 + 2) = v170 & 1;
    sub_1DD43CB78();
    v90 = v160;
    v91 = *(v75 + *(v160 + 104));
    sub_1DD44774C(v75, type metadata accessor for ContactResolverCache);
    v92 = v88 + v87[16];
    *(v92 + 1) = v91;
    *(v92 + 4) = v158;
    sub_1DD43CB78();
    LODWORD(v169) = *(v75 + *(v90 + 28) + 7);
    sub_1DD44774C(v75, type metadata accessor for ContactResolverCache);
    v93 = v154;
    sub_1DD43CB78();
    v94 = (v93 + *(v90 + 112));
    v95 = *v94;
    v96 = v94[1];
    sub_1DD44774C(v93, type metadata accessor for ContactResolverCache);
    v97 = 256;
    if (!v96)
    {
      v97 = 0;
    }

    v98 = sub_1DD517EC0(v169, v97 | v95);
    v99 = v155;
    sub_1DD43CB78();
    v100 = *(v99 + *(v90 + 28) + 8);
    sub_1DD44774C(v99, type metadata accessor for ContactResolverCache);
    if (v100 == 1)
    {
      sub_1DD43CB78();
      v101 = *(v75 + *(v90 + 112) + 2);
      sub_1DD44774C(v75, type metadata accessor for ContactResolverCache);
    }

    else
    {
      v101 = 0;
    }

    v102 = v90;
    a2 = 0xD000000000000011;
    sub_1DD43CB78();
    v103 = *(v75 + *(v102 + 112) + 8);
    sub_1DD44774C(v75, type metadata accessor for ContactResolverCache);
    v104 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v105 = sub_1DD3B7FC0(0xD000000000000018, 0x80000001DD66B0F0);
    v106 = sub_1DD5181C0(v105, v103);

    v107 = sub_1DD63F9D8();
    v108 = sub_1DD640368();
    v109 = os_log_type_enabled(v107, v108);
    v110 = v159;
    if (v109)
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v175 = v112;
      *v111 = 136315906;
      *(v111 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v175);
      *(v111 + 12) = 1024;
      *(v111 + 14) = v98 & 1;
      *(v111 + 18) = 1024;
      *(v111 + 20) = v101;
      *(v111 + 24) = 2048;
      *(v111 + 26) = v106;
      _os_log_impl(&dword_1DD38D000, v107, v108, "%s Megadome ECR configs (from FF or Trial factors):\nisMegadomeECREnabled=%{BOOL}d\nisMegadomeECRUseCandidatesEnabled=%{BOOL}d\nmegadomeECRScoreThreshold=%f", v111, 0x22u);
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x1E12B3DA0](v112, -1, -1);
      MEMORY[0x1E12B3DA0](v111, -1, -1);
    }

    v12 = v166;
    v27 = v170;
    *(v164 + v162[20]) = v98 & 1;
    if (!v101)
    {
      break;
    }

    v15 = *(v110 + 16);
    if (!v15)
    {
      break;
    }

    v9 = *(matched + 36);
    v29 = (v110 + ((*(v165 + 80) + 32) & ~*(v165 + 80)));

    v26 = 0;
    a3 = v162;
    while (v26 < *(v110 + 16))
    {
      sub_1DD4476F4();
      if (v9[v12])
      {
        sub_1DD44774C(v12, type metadata accessor for ContactMatchRuntimeData);
      }

      else
      {
        v113 = &v166[*(matched + 20)];
        v114 = *&v113[*(type metadata accessor for ContactResolver.SignalSet(0) + 240)];
        v12 = v166;
        sub_1DD44774C(v166, type metadata accessor for ContactMatchRuntimeData);
        if (v106 < v114)
        {
          v115 = 1;
          goto LABEL_38;
        }
      }

      if (v15 == ++v26)
      {
        v115 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_62:
    swift_once();
  }

  v115 = 0;
  a3 = v162;
LABEL_39:
  v116 = sub_1DD63F9D8();
  v117 = sub_1DD640368();
  v118 = os_log_type_enabled(v116, v117);
  v119 = v153;
  if (v118)
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v175 = v121;
    *v120 = 136315394;
    *(v120 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v175);
    *(v120 + 12) = 1024;
    *(v120 + 14) = v115;
    _os_log_impl(&dword_1DD38D000, v116, v117, "%s shouldMegadomeECRForcePrompt %{BOOL}d", v120, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v121);
    MEMORY[0x1E12B3DA0](v121, -1, -1);
    MEMORY[0x1E12B3DA0](v120, -1, -1);
  }

  v122 = v157;
  v123 = v150;
  if ((v150 | v27 | v115 | v119))
  {
    v124 = v164;
    sub_1DD4442D8();
    *(v124 + a3[12]) = 1;
    v125 = a3[14];
    sub_1DD390754(v124 + v125, &qword_1ECCDC1C8, qword_1DD64ADD0);
    sub_1DD3C4EB4();
    __swift_storeEnumTagSinglePayload(v124 + v125, 0, 1, v149);
    *(v124 + a3[13]) = 5;
    v126 = v27 | v115 | v123;
    if ((v126 | v119))
    {
      if (v115)
      {
        v127 = 3;
      }

      else
      {
        v127 = 0;
      }

      if (v27)
      {
        v127 = 1;
      }

      if (v126)
      {
        v128 = v127;
      }

      else
      {
        v128 = 4;
      }

      *(v164 + a3[13]) = v128;
    }

    v129 = v147;
    sub_1DD3C4EB4();
    v130 = v148;
    sub_1DD3C4EB4();
    v131 = sub_1DD63F9D8();
    v132 = sub_1DD640368();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v175 = v134;
      *v133 = 136446466;
      v135 = 0xE900000000000074;
      v136 = 0x6E656469666E6F63;
      switch(sub_1DD43D87C())
      {
        case 1u:
          v135 = 0x80000001DD669AF0;
          v136 = 0xD000000000000011;
          break;
        case 2u:
          v135 = 0x80000001DD668A50;
          v136 = 0xD000000000000013;
          break;
        case 3u:
          v135 = 0xE400000000000000;
          v136 = 1701736302;
          break;
        default:
          break;
      }

      sub_1DD390754(v147, &qword_1ECCDBEE0, &unk_1DD645510);
      v138 = sub_1DD39565C(v136, v135, &v175);

      *(v133 + 4) = v138;
      *(v133 + 12) = 2080;
      v139 = v148;
      sub_1DD3C4EB4();
      v140 = sub_1DD63FE38();
      v142 = v141;
      sub_1DD390754(v139, &qword_1ECCDBEE0, &unk_1DD645510);
      v143 = sub_1DD39565C(v140, v142, &v175);

      *(v133 + 14) = v143;
      _os_log_impl(&dword_1DD38D000, v131, v132, "force-prompt! new recommendation: %{public}s %s", v133, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v134, -1, -1);
      MEMORY[0x1E12B3DA0](v133, -1, -1);

      v137 = v157;
    }

    else
    {

      sub_1DD390754(v130, &qword_1ECCDBEE0, &unk_1DD645510);
      sub_1DD390754(v129, &qword_1ECCDBEE0, &unk_1DD645510);
      v137 = v122;
    }

    sub_1DD390754(v137, &qword_1ECCDBEE0, &unk_1DD645510);
  }

  v144 = v164;
  sub_1DD4476F4();
  return sub_1DD44774C(v144, type metadata accessor for ContactResolverRunTimeData);
}

void sub_1DD4439E4()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = type metadata accessor for ContactResolverConfig(0);
  v3 = OUTLINED_FUNCTION_3(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v4 = type metadata accessor for ContactResolverCache(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v9 = sub_1DD63F9F8();
  __swift_project_value_buffer(v9, qword_1EE16F068);

  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640368();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_18_1();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v26 = v1;
    v27 = swift_slowAlloc();
    v13 = v27;
    *v12 = 136315138;
    sub_1DD43CB78();
    v14 = (v8 + *(v4 + 116));
    v15 = *v14;
    v16 = v14[1];
    OUTLINED_FUNCTION_1_30();
    sub_1DD44774C(v8, v17);
    if (v16)
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_1DD603614(v18 | v15);
    v21 = sub_1DD39565C(v19, v20, &v27);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_1DD38D000, v10, v11, "[UCG] UCG trial factors: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v1 = v26;
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  sub_1DD43CB78();
  v22 = *(v8 + *(v4 + 116));
  OUTLINED_FUNCTION_1_30();
  sub_1DD44774C(v8, v23);
  sub_1DD43CB78();
  OUTLINED_FUNCTION_15_14();
  sub_1DD4476F4();
  if (v22 == 1)
  {
    v24 = type metadata accessor for UnifiedContactGenerator(0);
    swift_allocObject();
    sub_1DD60F388();
    v1[3] = v24;
    v1[4] = &off_1F58C4120;
    *v1 = v25;
  }

  else
  {
    v1[3] = type metadata accessor for CandidateContactGenerator(0);
    v1[4] = &off_1F58B1138;
    __swift_allocate_boxed_opaque_existential_1(v1);
    sub_1DD3ED110();
  }

  OUTLINED_FUNCTION_17();
}

void sub_1DD443C80()
{
  OUTLINED_FUNCTION_18_4();
  v71 = v0;
  v66 = v1;
  v73 = v3;
  v74 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCC98, &unk_1DD64AF10);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v65 - v10;
  v12 = OUTLINED_FUNCTION_42_5();
  v69 = type metadata accessor for ContactResolverCache(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v70 = type metadata accessor for MLContactRecommender(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v26 = sub_1DD63F9F8();
  v67 = __swift_project_value_buffer(v26, qword_1EE16F068);
  v27 = sub_1DD63F9D8();
  v28 = sub_1DD640368();
  v29 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_9();
    *v31 = 0;
    _os_log_impl(&dword_1DD38D000, v27, v28, "recommending with MLContactRecommender", v31, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v68 = v11;
  v65[1] = v20;

  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v32 = qword_1EE16F0C0;
  v33 = v25 + *(v21 + 20);
  *v33 = "ContactResolver.Recommend.ML";
  *(v33 + 8) = 28;
  *(v33 + 16) = 2;
  v34 = v32;
  sub_1DD63F9B8();
  *(v25 + *(v21 + 24)) = v34;
  v35 = v34;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1DD643F90;
  v37 = sub_1DD6408F8();
  v39 = v38;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1DD392BD8();
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  OUTLINED_FUNCTION_22();
  v72 = v35;
  sub_1DD63F998();

  sub_1DD43CB78();
  v40 = v68;
  sub_1DD3C4EB4();
  OUTLINED_FUNCTION_1_30();
  sub_1DD44774C(v16, v41);
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v70) == 1)
  {
    sub_1DD390754(v8, &qword_1ECCDCC98, &unk_1DD64AF10);
    type metadata accessor for InferenceError();
    swift_allocObject();
    v42 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000075, 0x80000001DD66BED0, 0xD000000000000031, 0x80000001DD66C090, 449, MEMORY[0x1E69E7CC0], 2);
    *(v42 + 24) = 0;
    *(v42 + 32) = 0xE000000000000000;

    OUTLINED_FUNCTION_19_12();
    sub_1DD445D68(v43, v44, &protocol conformance descriptor for InferenceError);
    OUTLINED_FUNCTION_52_4();
    v45 = swift_allocError();
    *v46 = v42;
    swift_willThrow();
    sub_1DD390754(v40, &qword_1ECCDCC98, &unk_1DD64AF10);
    v47 = v73;
    v48 = v45;
    v49 = sub_1DD63F9D8();
    v50 = sub_1DD640378();

    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_18_1();
      v52 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v53 = swift_slowAlloc();
      v75 = v45;
      v76[0] = v53;
      *v52 = 136446210;
      v54 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      v55 = sub_1DD63FE38();
      v57 = sub_1DD39565C(v55, v56, v76);

      *(v52 + 4) = v57;
      OUTLINED_FUNCTION_33_2(&dword_1DD38D000, v49, v50, "MLContactResolver failed, falling back to basic recommender. error=%{public}s");
      _os_log_impl(v58, v59, v60, v61, v62, v63);
      __swift_destroy_boxed_opaque_existential_1(v53);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    LOBYTE(v76[0]) = 1;
    v76[1] = 0xD00000000000001BLL;
    v76[2] = 0x80000001DD66C0D0;
    sub_1DD3CDD7C(v74, v47);

    *(v47 + 288) = 1;
  }

  else
  {
    sub_1DD390754(v40, &qword_1ECCDCC98, &unk_1DD64AF10);
    sub_1DD44769C();
    sub_1DD521D8C(v74, v73);
    OUTLINED_FUNCTION_20_8();
  }

  sub_1DD6404C8();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_4_19();
  sub_1DD44774C(v25, v64);
  OUTLINED_FUNCTION_17();
}

void sub_1DD4442D8()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v5 = OUTLINED_FUNCTION_51(matched);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = type metadata accessor for Contact(0);
  v12 = OUTLINED_FUNCTION_51(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v13 = *(v1 + 296);
  v14 = *(v13 + 16);
  if (v14 < 2)
  {
    if (v14 == 1)
    {
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_16_12();
      sub_1DD4476F4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
    OUTLINED_FUNCTION_52_4();
    OUTLINED_FUNCTION_17();

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1DD42B5EC(0, v14, 0);
    OUTLINED_FUNCTION_24_0();
    v16 = v13 + v15;
    v17 = *(v7 + 72);
    do
    {
      sub_1DD4476F4();
      OUTLINED_FUNCTION_16_12();
      sub_1DD4476F4();
      sub_1DD44774C(v10, type metadata accessor for ContactMatchRuntimeData);
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DD42B5EC(v18 > 1, v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      OUTLINED_FUNCTION_24_0();
      sub_1DD44769C();
      v16 += v17;
      --v14;
    }

    while (v14);
    *v3 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
    OUTLINED_FUNCTION_52_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_17();
  }
}

void sub_1DD444584()
{
  OUTLINED_FUNCTION_18_4();
  v51 = v0;
  v49 = v1;
  v50 = type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_0();
  v46 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v47 = v4;
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for ContactResolverCache(0);
  v14 = OUTLINED_FUNCTION_51(v13);
  v43 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v21 = sub_1DD63F9F8();
  __swift_project_value_buffer(v21, qword_1EE16F068);
  v22 = sub_1DD63F9D8();
  v23 = sub_1DD640368();
  v24 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_9();
    *v26 = 0;
    _os_log_impl(&dword_1DD38D000, v22, v23, "creating background operation to save runtime data", v26, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v41 = v12;
  v42 = v20;

  sub_1DD43CB78();
  sub_1DD63D068();
  sub_1DD4476F4();
  OUTLINED_FUNCTION_15_14();
  sub_1DD4476F4();
  v27 = v44;
  v28 = v48;
  (*(v6 + 16))(v44, v12, v48);
  v29 = (v47 + *(v6 + 80) + ((v17 + *(v46 + 80) + ((*(v43 + 80) + 24) & ~*(v43 + 80))) & ~*(v46 + 80))) & ~*(v6 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v49;
  OUTLINED_FUNCTION_3_21();
  sub_1DD44769C();
  sub_1DD44769C();
  (*(v6 + 32))(v30 + v29, v27, v28);
  v31 = type metadata accessor for RestartableBlockOperation();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block];
  *v33 = sub_1DD447520;
  v33[1] = v30;
  v52.receiver = v32;
  v52.super_class = v31;

  v34 = objc_msgSendSuper2(&v52, sel_init);
  v35 = v34;
  if (*(v51 + *(v50 + 40)) == 1)
  {
    (*&v34[OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block])();
    (*(v6 + 8))(v41, v28);
    OUTLINED_FUNCTION_1_30();
    sub_1DD44774C(v42, v36);
  }

  else
  {
    v37 = v41;
    v38 = v42;
    if (qword_1EE166628 != -1)
    {
      OUTLINED_FUNCTION_14_16();
      swift_once();
    }

    [qword_1EE166630 addOperation_];

    (*(v6 + 8))(v37, v28);
    OUTLINED_FUNCTION_1_30();
    sub_1DD44774C(v38, v39);
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD444A30(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v125 = a3;
  v126 = a4;
  v130 = a2;
  v141 = *MEMORY[0x1E69E9840];
  v132 = type metadata accessor for RunTimeDataRecord(0);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v9 = qword_1EE16F0C0;
    v10 = &v8[*(v6 + 5)];
    *v10 = "ContactResolver.HandleRunTimeData";
    *(v10 + 1) = 33;
    v10[16] = 2;
    v11 = v9;
    sub_1DD63F9B8();
    *&v8[*(v6 + 6)] = v11;
    v12 = v11;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v13 = swift_allocObject();
    v116 = xmmword_1DD643F90;
    *(v13 + 16) = xmmword_1DD643F90;
    v14 = sub_1DD6408F8();
    v16 = v15;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1DD392BD8();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v127 = v12;
    v128 = v8;
    sub_1DD63F998();

    v17 = *(a1 + 16);
    v129 = a1;
    if (!v17)
    {
      break;
    }

    v6 = v138;
    v18 = *(v130 + *(type metadata accessor for ContactResolverCache(0) + 76));

    v19 = 0;
    v133 = xmmword_1DD642F70;
    while (1)
    {
      if (v18)
      {
        sub_1DD5FFE5C(v138);
        v134 = v138[0];
        v135 = v138[1];
        v20 = v139;
        v21 = v140;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v134 = v133;
        v135 = 0u;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD586A74();
        a1 = v27;
      }

      if (v19 >= *(a1 + 16))
      {
        break;
      }

      v22 = type metadata accessor for ContactResolverRunTimeData(0);
      v23 = a1 + ((*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80)) + *(*(v22 - 8) + 72) * v19 + *(v22 + 60);
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = v135;
      *v23 = v134;
      *(v23 + 16) = v26;
      *(v23 + 32) = v20;
      *(v23 + 40) = v21;
      sub_1DD447638(v24, v25);
      v8 = ++v19;
      if (v17 == v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_13:
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v28 = v132;
  v117 = sub_1DD63F9F8();
  *&v135 = __swift_project_value_buffer(v117, qword_1EE16F068);
  v29 = sub_1DD63F9D8();
  v30 = sub_1DD640368();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1DD38D000, v29, v30, "saving contact runtime data", v31, 2u);
    MEMORY[0x1E12B3DA0](v31, -1, -1);
  }

  swift_beginAccess();
  *&v133 = sub_1DD6408F8();
  v124 = v32;
  v33 = v125;
  HIDWORD(v123) = *v125;
  v34 = *(v125 + 3);
  v35 = *(v125 + 4);
  v36 = *(v125 + 1);
  *&v134 = *(v125 + 2);
  v37 = *(v125 + 6);
  v121 = *(v125 + 5);
  v122 = v34;
  v119 = v37;
  v120 = v35;
  v38 = type metadata accessor for ContactResolverConfig(0);
  v39 = v38[8];
  v40 = v131;
  v41 = &v131[*(v28 + 20)];
  v42 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v43 = v42[8];
  v44 = sub_1DD63D168();
  (*(*(v44 - 8) + 16))(&v41[v43], &v33[v39], v44);
  v45 = v33[v38[9]];
  v46 = v38[12];
  v118 = *&v33[v38[11]];
  v47 = v118;
  v48 = v33[v46];
  v49 = *&v33[v38[13]];
  v50 = v33[v38[14]];
  v51 = &v33[v38[17]];
  *v41 = BYTE4(v123);
  v52 = v121;
  v53 = v119;
  v54 = v120;
  *(v41 + 1) = v122;
  *(v41 + 2) = v54;
  v125 = v36;
  v55 = v134;
  *(v41 + 3) = v36;
  *(v41 + 4) = v55;
  *(v41 + 5) = v52;
  *(v41 + 6) = v53;
  v41[v42[9]] = v45;
  *&v41[v42[10]] = v47;
  v41[v42[11]] = v48;
  *&v41[v42[12]] = v49;
  v41[v42[13]] = v50;
  v56 = *(v51 + 1);
  v57 = &v41[v42[14]];
  *v57 = *v51;
  *(v57 + 1) = v56;
  v58 = v132;
  v59 = *(v132 + 28);
  v60 = sub_1DD63D078();
  (*(*(v60 - 8) + 16))(&v40[v59], v126, v60);
  v61 = v124;
  *v40 = v133;
  *(v40 + 1) = v61;
  *&v40[*(v58 + 24)] = a1;

  sub_1DD5919A8(0, &v137);
  v62 = MEMORY[0x1E69E7CC0];
  sub_1DD58CBD8(v40, v63, v64, v65, v66, v67, v68, v69, v116, *(&v116 + 1), v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
  v70 = v40;
  sub_1DD63CFF8();
  v78 = -v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = v116;
  *(inited + 32) = 0x79616C6564;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1DD395950();
  v80 = sub_1DD63FC88();
  sub_1DD399F2C(0xD000000000000015, 0x80000001DD66C050, v80);

  v81 = sub_1DD63F9D8();
  v82 = sub_1DD640368();
  if (os_log_type_enabled(v81, v82))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_1DD38D000, v81, v82, "saved contact runtime data", v84, 2u);
    MEMORY[0x1E12B3DA0](v84, -1, -1);
  }

  v85 = v129;
  if (*(v130 + *(type metadata accessor for ContactResolverCache(0) + 28) + 3) == 1)
  {
    if (v134)
    {
      v71 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
      v72 = sub_1DD4459A4(5395011, 0xE300000000000000);
      if (v72)
      {
        v73 = v72;
        v89 = sub_1DD63286C();
        v91 = v90;
        objc_allocWithZone(MEMORY[0x1E699C0D0]);
        v92 = v134;

        v93 = sub_1DD445A08(v89, v91, v125, v92, 1);
        if (v93)
        {
          v94 = v93;
          v137 = 0;
          if ([v73 insert:v93 error:&v137])
          {
            v95 = v137;
            v96 = sub_1DD63F9D8();
            v97 = sub_1DD640368();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              *v98 = 0;
              _os_log_impl(&dword_1DD38D000, v96, v97, "logged runtime data to Curare", v98, 2u);
              MEMORY[0x1E12B3DA0](v98, -1, -1);
            }

            v85 = v129;
            goto LABEL_40;
          }

          v101 = v137;
          v87 = sub_1DD63CD98();

          swift_willThrow();
        }

        else
        {
          type metadata accessor for InferenceError();
          swift_allocObject();
          v99 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000075, 0x80000001DD66BED0, 0xD000000000000023, 0x80000001DD66C020, 547, v62, 2);
          *(v99 + 24) = 0;
          *(v99 + 32) = 0xE000000000000000;

          sub_1DD445D68(&qword_1EE1663F0, type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
          v87 = swift_allocError();
          *v100 = v99;
          swift_willThrow();
        }

        v85 = v129;
      }

      else
      {
        type metadata accessor for InferenceError();
        swift_allocObject();
        v86 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000075, 0x80000001DD66BED0, 0xD000000000000023, 0x80000001DD66C020, 545, v62, 2);
        *(v86 + 24) = 0;
        *(v86 + 32) = 0xE000000000000000;

        sub_1DD445D68(&qword_1EE1663F0, type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
        v87 = swift_allocError();
        *v88 = v86;
        swift_willThrow();
      }

      v102 = v87;
      v103 = sub_1DD63F9D8();
      v104 = sub_1DD640378();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v137 = v106;
        *v105 = 136446210;
        v136 = v87;
        v107 = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
        v108 = sub_1DD63FE38();
        v110 = sub_1DD39565C(v108, v109, &v137);

        *(v105 + 4) = v110;
        _os_log_impl(&dword_1DD38D000, v103, v104, "could not log runtime data to Curare: %{public}s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v106);
        MEMORY[0x1E12B3DA0](v106, -1, -1);
        MEMORY[0x1E12B3DA0](v105, -1, -1);
      }

      else
      {
      }

LABEL_40:
      v70 = v131;
      goto LABEL_41;
    }

    v74 = sub_1DD63F9D8();
    v75 = sub_1DD640368();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1DD38D000, v74, v75, "Skip to log runtime data to Curare due to empty interactionId", v76, 2u);
      MEMORY[0x1E12B3DA0](v76, -1, -1);
    }
  }

LABEL_41:
  v111 = sub_1DD63F9D8();
  v112 = sub_1DD640368();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&dword_1DD38D000, v111, v112, "Logging PLUS data", v113, 2u);
    MEMORY[0x1E12B3DA0](v113, -1, -1);
  }

  sub_1DD557178(v85);
  sub_1DD44774C(v70, type metadata accessor for RunTimeDataRecord);
  sub_1DD6404C8();
  v114 = v128;
  sub_1DD63F9A8();
  return sub_1DD44774C(v114, type metadata accessor for Signpost);
}

id sub_1DD4459A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD63FDA8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithStreamId_];

  return v4;
}

id sub_1DD445A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v8 = sub_1DD63FDA8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1DD63FDA8();

LABEL_6:
  v10 = [v5 initWithJsonStr:v8 interactionId:v9 dataVersion:a5];

  return v10;
}

uint64_t sub_1DD445AB0(uint64_t a1)
{
  result = sub_1DD445D68(&qword_1ECCDCC60, type metadata accessor for ContactResolver, &protocol conformance descriptor for ContactResolver);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD445B9C()
{
  result = qword_1ECCDCC78;
  if (!qword_1ECCDCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC78);
  }

  return result;
}

unint64_t sub_1DD445BF4()
{
  result = qword_1ECCDCC80;
  if (!qword_1ECCDCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC80);
  }

  return result;
}

uint64_t sub_1DD445D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DD445DB8(uint64_t a1)
{
  sub_1DD41AEB0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ContactResolver.makeRecommendationsAsync(queries:config:)()
{
  OUTLINED_FUNCTION_22_7();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_13_13(v1);

  return v3(v2);
}

uint64_t dispatch thunk of ContactResolver.makeCorrectionsAsync(queries:config:)()
{
  OUTLINED_FUNCTION_22_7();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_13_13(v1);

  return v3(v2);
}

uint64_t dispatch thunk of ContactResolver.findMatchesAsync(queries:config:)()
{
  OUTLINED_FUNCTION_22_7();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_13_13(v1);

  return v3(v2);
}

uint64_t sub_1DD446294(uint64_t a1)
{

  OUTLINED_FUNCTION_45_6();

  return v2(a1);
}

void sub_1DD44638C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DD640CA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DD446720(v8, v9, a1, v4);
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
    sub_1DD4464D4(0, v2, 1, a1);
  }
}

void sub_1DD4464D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v25 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v25 - v14);
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v32 = -v17;
    v33 = v16;
    v19 = a1 - a3;
    v26 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v30 = v18;
      v31 = a3;
      v28 = v20;
      v29 = v19;
      v21 = v19;
      do
      {
        sub_1DD3C4EB4();
        sub_1DD3C4EB4();
        v22 = *v15;
        v23 = *v11;
        sub_1DD390754(v11, &qword_1ECCDBEE8, &qword_1DD6441F0);
        sub_1DD390754(v15, &qword_1ECCDBEE8, &qword_1DD6441F0);
        if (v22 >= v23)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        sub_1DD447808();
        swift_arrayInitWithTakeFrontToBack();
        sub_1DD447808();
        v18 += v32;
        v20 += v32;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v31 + 1;
      v18 = v30 + v26;
      v19 = v29 - 1;
      v20 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD446720(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v104 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  v111 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v108 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v103 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v103 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v103 - v13;
  v14 = a3[1];
  v113 = a3;
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v115 = v16;
    v16 = *v104;
    if (!*v104)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v114;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v96 = (v115 + 16);
      for (i = *(v115 + 2); i >= 2; *v96 = i)
      {
        if (!*v113)
        {
          goto LABEL_138;
        }

        v98 = &v115[16 * i];
        v99 = *v98;
        v100 = &v96[2 * i];
        v101 = *(v100 + 1);
        sub_1DD447064(*v113 + *(v111 + 72) * *v98, *v113 + *(v111 + 72) * *v100, *v113 + *(v111 + 72) * v101, v16);
        if (v4)
        {
          break;
        }

        if (v101 < v99)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v96)
        {
          goto LABEL_127;
        }

        *v98 = v99;
        *(v98 + 1) = v101;
        v102 = *v96 - i;
        if (*v96 < i)
        {
          goto LABEL_128;
        }

        i = *v96 - 1;
        sub_1DD4EC4E4(v100 + 16, v102, v100);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v115 = sub_1DD4EC2B8();
    goto LABEL_103;
  }

  v103 = a4;
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = v15;
    v18 = v15 + 1;
    v105 = v15;
    if (v15 + 1 < v14)
    {
      v115 = v16;
      v116 = v15 + 1;
      v19 = *v113;
      v20 = *(v111 + 72);
      v16 = *v113 + v20 * v18;
      v21 = v120;
      sub_1DD3C4EB4();
      v22 = v121;
      sub_1DD3C4EB4();
      v23 = *v21;
      v109 = *v22;
      v110 = v23;
      sub_1DD390754(v22, &qword_1ECCDBEE8, &qword_1DD6441F0);
      sub_1DD390754(v21, &qword_1ECCDBEE8, &qword_1DD6441F0);
      v24 = v17 + 2;
      v112 = v20;
      v25 = v19 + v20 * (v17 + 2);
      while (1)
      {
        v26 = v24;
        if (++v116 >= v14)
        {
          break;
        }

        LODWORD(v117) = v110 < v109;
        v27 = v120;
        sub_1DD3C4EB4();
        v28 = v14;
        v29 = v121;
        sub_1DD3C4EB4();
        v4 = *v27;
        v30 = *v29;
        v31 = v29;
        v14 = v28;
        sub_1DD390754(v31, &qword_1ECCDBEE8, &qword_1DD6441F0);
        sub_1DD390754(v27, &qword_1ECCDBEE8, &qword_1DD6441F0);
        v25 += v112;
        v16 += v112;
        v24 = v26 + 1;
        if (((v117 ^ (v4 >= v30)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v116 = v14;
LABEL_9:
      if (v110 >= v109)
      {
        v16 = v115;
        v18 = v116;
        v17 = v105;
      }

      else
      {
        v18 = v116;
        if (v116 < v105)
        {
          goto LABEL_132;
        }

        if (v105 >= v116)
        {
          v16 = v115;
          v17 = v105;
        }

        else
        {
          if (v14 >= v26)
          {
            v32 = v26;
          }

          else
          {
            v32 = v14;
          }

          v33 = v112 * (v32 - 1);
          v34 = v112 * v32;
          v4 = v105 * v112;
          v35 = v105;
          v17 = v105;
          do
          {
            if (v35 != --v18)
            {
              v36 = *v113;
              if (!*v113)
              {
                goto LABEL_139;
              }

              sub_1DD447808();
              v37 = v4 < v33 || v36 + v4 >= v36 + v34;
              if (v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1DD447808();
              v17 = v105;
            }

            ++v35;
            v33 -= v112;
            v34 -= v112;
            v4 += v112;
          }

          while (v35 < v18);
          v16 = v115;
          v18 = v116;
        }
      }
    }

    v38 = v113[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v17))
      {
        goto LABEL_131;
      }

      if (v18 - v17 < v103)
      {
        break;
      }
    }

LABEL_47:
    if (v18 < v17)
    {
      goto LABEL_130;
    }

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v18;
    if ((v49 & 1) == 0)
    {
      sub_1DD3BEB7C();
      v16 = v93;
    }

    v50 = *(v16 + 16);
    v51 = v50 + 1;
    if (v50 >= *(v16 + 24) >> 1)
    {
      sub_1DD3BEB7C();
      v16 = v94;
    }

    *(v16 + 16) = v51;
    v52 = v16 + 32;
    v53 = (v16 + 32 + 16 * v50);
    v54 = v116;
    *v53 = v17;
    v53[1] = v54;
    v117 = *v104;
    if (!v117)
    {
      goto LABEL_140;
    }

    if (v50)
    {
      v115 = v16;
      while (1)
      {
        v55 = v51 - 1;
        v56 = (v52 + 16 * (v51 - 1));
        v57 = (v16 + 16 * v51);
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v58 = *(v16 + 32);
          v59 = *(v16 + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_68:
          if (v61)
          {
            goto LABEL_117;
          }

          v73 = *v57;
          v72 = v57[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_120;
          }

          v77 = v56[1];
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_125;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v51 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v51 < 2)
        {
          goto LABEL_119;
        }

        v80 = *v57;
        v79 = v57[1];
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_83:
        if (v76)
        {
          goto LABEL_122;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_124;
        }

        if (v83 < v75)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v55 - 1 >= v51)
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v113)
        {
          goto LABEL_137;
        }

        v87 = (v52 + 16 * (v55 - 1));
        v88 = *v87;
        v89 = v52;
        v90 = v55;
        v16 = v52 + 16 * v55;
        v4 = *(v16 + 8);
        v91 = v114;
        sub_1DD447064(*v113 + *(v111 + 72) * *v87, *v113 + *(v111 + 72) * *v16, *v113 + *(v111 + 72) * v4, v117);
        v114 = v91;
        if (v91)
        {
          goto LABEL_99;
        }

        if (v4 < v88)
        {
          goto LABEL_112;
        }

        v92 = *(v115 + 2);
        if (v90 > v92)
        {
          goto LABEL_113;
        }

        *v87 = v88;
        v87[1] = v4;
        if (v90 >= v92)
        {
          goto LABEL_114;
        }

        v51 = v92 - 1;
        sub_1DD4EC4E4((v16 + 16), v92 - 1 - v90, v16);
        v16 = v115;
        *(v115 + 2) = v92 - 1;
        v52 = v89;
        if (v92 <= 2)
        {
          goto LABEL_97;
        }
      }

      v62 = v52 + 16 * v51;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_115;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_116;
      }

      v69 = v57[1];
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_118;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_121;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_129;
        }

        if (v60 < v86)
        {
          v55 = v51 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v14 = v113[1];
    v15 = v116;
    if (v116 >= v14)
    {
      goto LABEL_101;
    }
  }

  v39 = v17 + v103;
  if (__OFADD__(v17, v103))
  {
    goto LABEL_133;
  }

  if (v39 >= v38)
  {
    v39 = v113[1];
  }

  if (v39 < v17)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v18 == v39)
  {
    goto LABEL_47;
  }

  v115 = v16;
  v40 = *(v111 + 72);
  v41 = *v113 + v40 * (v18 - 1);
  v4 = -v40;
  v42 = v17 - v18;
  v117 = *v113;
  v106 = v40;
  v107 = v39;
  v43 = v117 + v18 * v40;
LABEL_40:
  v116 = v18;
  v109 = v43;
  v110 = v42;
  v112 = v41;
  v44 = v41;
  while (1)
  {
    v45 = v120;
    sub_1DD3C4EB4();
    v46 = v121;
    sub_1DD3C4EB4();
    v47 = *v45;
    v48 = *v46;
    sub_1DD390754(v46, &qword_1ECCDBEE8, &qword_1DD6441F0);
    sub_1DD390754(v45, &qword_1ECCDBEE8, &qword_1DD6441F0);
    if (v47 >= v48)
    {
LABEL_45:
      v18 = v116 + 1;
      v41 = v112 + v106;
      v42 = v110 - 1;
      v43 = v109 + v106;
      if (v116 + 1 == v107)
      {
        v18 = v107;
        v16 = v115;
        v17 = v105;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v117)
    {
      break;
    }

    sub_1DD447808();
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD447808();
    v44 += v4;
    v43 += v4;
    v37 = __CFADD__(v42++, 1);
    if (v37)
    {
      goto LABEL_45;
    }
  }

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
}

void sub_1DD447064(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v55 = (&v46 - v10);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v17 = v13 / v12;
  v59 = a1;
  v58 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    sub_1DD3C1E0C(a2, v15 / v12, a4);
    v31 = a4 + v18 * v12;
    v32 = -v12;
    v33 = v31;
    v49 = -v12;
    v50 = a4;
    v56 = a1;
LABEL_36:
    v47 = v33;
    v51 = a2 + v32;
    while (1)
    {
      if (v31 <= a4)
      {
        v59 = a2;
        v57 = v33;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v33;
      v34 = a2;
      v35 = a3 + v32;
      v36 = v31 + v32;
      v37 = v55;
      v38 = v31;
      sub_1DD3C4EB4();
      v39 = v54;
      sub_1DD3C4EB4();
      v52 = *v37;
      v40 = v39;
      v41 = *v39;
      sub_1DD390754(v40, &qword_1ECCDBEE8, &qword_1DD6441F0);
      sub_1DD390754(v37, &qword_1ECCDBEE8, &qword_1DD6441F0);
      if (v52 < v41)
      {
        if (a3 < v34 || v35 >= v34)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v48;
          v32 = v49;
          a4 = v50;
          a3 = v35;
          a1 = v56;
          v31 = v38;
        }

        else
        {
          v32 = v49;
          v33 = v48;
          v14 = a3 == v34;
          a4 = v50;
          v44 = v51;
          a2 = v51;
          a3 = v35;
          a1 = v56;
          v31 = v38;
          if (!v14)
          {
            v45 = v48;
            swift_arrayInitWithTakeBackToFront();
            v31 = v38;
            a2 = v44;
            v33 = v45;
          }
        }

        goto LABEL_36;
      }

      v42 = a3 < v38 || v35 >= v38;
      a2 = v34;
      if (v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v32;
        v31 = v36;
        v33 = v36;
        v32 = v49;
        a4 = v50;
        a1 = v56;
      }

      else
      {
        v33 = v36;
        v14 = v38 == a3;
        a3 += v32;
        v31 = v36;
        v32 = v49;
        a4 = v50;
        a1 = v56;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v35;
          v31 = v36;
          v33 = v36;
        }
      }
    }

    v59 = a2;
    v57 = v47;
  }

  else
  {
    sub_1DD3C1E0C(a1, v13 / v12, a4);
    v51 = a3;
    v52 = a4 + v17 * v12;
    v57 = v52;
    v19 = a1;
    while (a4 < v52 && a2 < a3)
    {
      v56 = v19;
      v21 = v12;
      v22 = a2;
      v23 = v55;
      sub_1DD3C4EB4();
      v24 = a4;
      v25 = v54;
      sub_1DD3C4EB4();
      v26 = *v23;
      v27 = *v25;
      sub_1DD390754(v25, &qword_1ECCDBEE8, &qword_1DD6441F0);
      sub_1DD390754(v23, &qword_1ECCDBEE8, &qword_1DD6441F0);
      if (v26 >= v27)
      {
        v12 = v21;
        a4 = v24 + v21;
        v28 = v56;
        if (v56 < v24 || v56 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v22;
        }

        else
        {
          a2 = v22;
          if (v56 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v58 = v24 + v21;
      }

      else
      {
        v12 = v21;
        a2 = v22 + v21;
        v28 = v56;
        v29 = v56 < v22 || v56 >= a2;
        a4 = v24;
        if (v29)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v56 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v19 = v28 + v12;
      v59 = v19;
      a3 = v51;
    }
  }

LABEL_58:
  sub_1DD4EC310(&v59, &v58, &v57);
}

uint64_t sub_1DD447520()
{
  v1 = type metadata accessor for ContactResolverCache(0);
  OUTLINED_FUNCTION_51(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_51(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_1DD63D078();
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v0 + 16);
  v14 = v0 + ((v8 + v10 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_1DD444A30(v13, v0 + v3, (v0 + v8), v14);
}

uint64_t sub_1DD447638(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD44769C()
{
  OUTLINED_FUNCTION_18_7();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_15_0();
  v3(v2);
  return v0;
}

uint64_t sub_1DD4476F4()
{
  OUTLINED_FUNCTION_18_7();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_15_0();
  v3(v2);
  return v0;
}

uint64_t sub_1DD44774C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DD4477A4()
{
  result = qword_1EE166498[0];
  if (!qword_1EE166498[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFD20, &qword_1DD648290);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE166498);
  }

  return result;
}

uint64_t sub_1DD447808()
{
  OUTLINED_FUNCTION_18_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_15_0();
  v4(v3);
  return v0;
}

void sub_1DD4479A8(uint64_t a1)
{
  sub_1DD447E30(319, &qword_1EE1604E8, &qword_1ECCDC258, &qword_1DD645B18);
  if (v1 <= 0x3F)
  {
    sub_1DD447E30(319, &qword_1EE1604F8, &qword_1ECCDC260, &unk_1DD645B20);
    if (v2 <= 0x3F)
    {
      sub_1DD63F308();
      if (v3 <= 0x3F)
      {
        sub_1DD3E7F48(319, &qword_1EE163290, &protocol descriptor for ContactStore);
        if (v4 <= 0x3F)
        {
          sub_1DD3E7F48(319, qword_1EE162408, &protocol descriptor for ReferenceResolver);
          if (v5 <= 0x3F)
          {
            sub_1DD447DDC(319, &qword_1EE160138, &qword_1EE163870, 0x1E695CD58);
            if (v6 <= 0x3F)
            {
              sub_1DD39638C(319, &qword_1EE1601C0, 0x1E6997E98);
              if (v7 <= 0x3F)
              {
                sub_1DD447D34();
                if (v8 <= 0x3F)
                {
                  sub_1DD447D8C(319, qword_1EE161DD0, type metadata accessor for MLContactRecommender);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for StringTokenizer(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1DD3EBBE4(319, &qword_1EE162E40, &type metadata for Transliterator);
                      if (v11 <= 0x3F)
                      {
                        sub_1DD3EBBE4(319, &qword_1EE1632E8, &type metadata for Normalizer);
                        if (v12 <= 0x3F)
                        {
                          sub_1DD63D168();
                          if (v13 <= 0x3F)
                          {
                            sub_1DD447D8C(319, qword_1EE1630D8, type metadata accessor for TrialManager);
                            if (v14 <= 0x3F)
                            {
                              sub_1DD447D8C(319, qword_1EE162288, type metadata accessor for EuclidEmbeddingApi);
                              if (v15 <= 0x3F)
                              {
                                sub_1DD447D8C(319, qword_1EE162F00, type metadata accessor for EuclidVectorDb);
                                if (v16 <= 0x3F)
                                {
                                  sub_1DD447DDC(319, &qword_1EE160200, &qword_1EE160208, 0x1E695E000);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1DD447E30(319, &qword_1EE162E38, &qword_1ECCDCCC8, &unk_1DD64AF38);
                                    if (v18 <= 0x3F)
                                    {
                                      swift_cvw_initStructMetadataWithLayoutString();
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1DD447D34()
{
  if (!qword_1EE160258)
  {
    v0 = sub_1DD6402B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE160258);
    }
  }
}

void sub_1DD447D8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_6_9();
    v4 = sub_1DD6405F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DD447DDC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1DD39638C(255, a3, a4);
    OUTLINED_FUNCTION_6_9();
    v5 = sub_1DD6405F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DD447E30(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_6_9();
    v5 = sub_1DD6405F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1DD447E80@<X0>(void *a1@<X8>)
{
  v58 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v2 = OUTLINED_FUNCTION_3(v1);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v45 - v3;
  OUTLINED_FUNCTION_6_2();
  v56 = sub_1DD63F308();
  OUTLINED_FUNCTION_0();
  v55 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v53 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v45 - v9;
  OUTLINED_FUNCTION_6_2();
  v52 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v16 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v17 = swift_allocObject();
  v59 = xmmword_1DD643F90;
  *(v17 + 16) = xmmword_1DD643F90;
  v18 = sub_1DD6408F8();
  v20 = v19;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1DD392BD8();
  *(v17 + 64) = v21;
  v47 = v21;
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_16_13();
  sub_1DD63F998();

  v49 = sub_1DD39638C(0, &qword_1EE1638B8, 0x1E695CE18);
  v51 = sub_1DD40105C();
  sub_1DD6404C8();
  OUTLINED_FUNCTION_16_13();
  sub_1DD63F9A8();
  v46 = *(v11 + 8);
  v22 = v52;
  v46(v15, v52);
  v23 = v16;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v24 = swift_allocObject();
  *(v24 + 16) = v59;
  v25 = sub_1DD6408F8();
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = v21;
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_16_13();
  sub_1DD63F998();

  v50 = sub_1DD4010CC();
  sub_1DD6404C8();
  OUTLINED_FUNCTION_16_13();
  sub_1DD63F9A8();
  v27 = v46;
  v46(v15, v22);
  v28 = v23;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v29 = swift_allocObject();
  *(v29 + 16) = v59;
  v30 = sub_1DD6408F8();
  v31 = v47;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = v31;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_13_14();
  sub_1DD63F998();

  v33 = [objc_opt_self() makeSearcher];
  sub_1DD6404C8();
  OUTLINED_FUNCTION_13_14();
  sub_1DD63F9A8();
  v27(v15, v22);
  v34 = v54;
  sub_1DD63F2D8();
  v35 = type metadata accessor for ExperimentationTriggerLogger();
  v36 = swift_allocObject();
  v37 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v38 = sub_1DD3B7FC0(0xD000000000000018, 0x80000001DD66B0F0);
  v67 = v49;
  v68 = &off_1F58B1EB8;
  v65 = &off_1F58B1EB8;
  *&v66 = v51;
  v64 = v49;
  *&v63 = v50;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v39 = v55;
  v40 = v53;
  v41 = v56;
  (*(v55 + 16))(v53, v34, v56);
  v42 = sub_1DD63D168();
  v43 = v57;
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v42);
  memset(v69, 0, 57);
  v60[4] = &off_1F58C3DB8;
  v60[3] = v35;
  v60[0] = v36;
  sub_1DD449C00(&v66, &v63, v33, v61, v40, v43, v38, 2, v58, v69, 2, 0, 2uLL, 0.0, 2u, v60, 1u);
  return (*(v39 + 8))(v34, v41);
}

uint64_t sub_1DD448524()
{
  v1 = sub_1DD63FB78();
  OUTLINED_FUNCTION_0();
  v115 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_6_2();
  v118 = sub_1DD63FBD8();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_6_2();
  v119 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v117 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v108 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v90 - v17;
  sub_1DD449160();
  v19 = dispatch_group_create();
  v120 = v18;
  sub_1DD44C624(v18);
  OUTLINED_FUNCTION_57();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v98 = v20 + 16;
  OUTLINED_FUNCTION_57();
  v21 = swift_allocObject();
  v116 = v21;
  *(v21 + 16) = MEMORY[0x1E69E7CD0];
  v99 = v21 + 16;
  type metadata accessor for StringTokenizer(0);
  v111 = swift_allocBox();
  *v22 = 0;
  v101 = v22;
  sub_1DD63D158();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v100 = v23 + 16;
  v110 = v23;
  *(v23 + 24) = 0;
  OUTLINED_FUNCTION_57();
  v24 = swift_allocObject();
  v112 = v24;
  *(v24 + 16) = 0;
  v102 = v24 + 16;
  v114 = type metadata accessor for ContactResolverCache(0);
  v25 = v114[8];
  v113 = v0;
  sub_1DD3C2388(v0 + v25, &v128);
  dispatch_group_enter(v19);
  if (qword_1EE165278 != -1)
  {
    swift_once();
  }

  v26 = qword_1EE16F008;
  sub_1DD3C2388(&v128, &v127);
  OUTLINED_FUNCTION_23_5();
  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  sub_1DD3AA4A8(&v127, v27 + 24);
  *(v27 + 64) = v19;
  v125 = sub_1DD45002C;
  v126 = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  v109 = &v123;
  v123 = sub_1DD3CBCD0;
  v124 = &block_descriptor_96;
  v28 = _Block_copy(aBlock);
  v29 = v26;
  v103 = v20;

  v30 = v19;
  v31 = v12;
  sub_1DD63FBA8();
  v121 = MEMORY[0x1E69E7CC0];
  v107 = sub_1DD45003C(&qword_1EE163978, MEMORY[0x1E69E7F60]);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  v105 = sub_1DD44FA38();
  v32 = v1;
  sub_1DD640718();
  v33 = OUTLINED_FUNCTION_32_7();
  MEMORY[0x1E12B27A0](v33);
  _Block_release(v28);

  v34 = v115 + 8;
  v104 = *(v115 + 1);
  v104(v6, v32);
  v35 = *(v8 + 8);
  v35(v31, v118);

  dispatch_group_enter(v30);
  v115 = qword_1EE16F008;
  sub_1DD3C2388(&v128, &v127);
  OUTLINED_FUNCTION_23_5();
  v36 = swift_allocObject();
  *(v36 + 16) = v116;
  sub_1DD3AA4A8(&v127, v36 + 24);
  *(v36 + 64) = v30;
  OUTLINED_FUNCTION_6_20();
  v123 = sub_1DD3CBCD0;
  v124 = &block_descriptor_102;
  v37 = _Block_copy(aBlock);
  v109 = v30;
  v38 = v115;

  sub_1DD63FBA8();
  v121 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_26_10();
  sub_1DD640718();
  v39 = OUTLINED_FUNCTION_32_7();
  MEMORY[0x1E12B27A0](v39);
  _Block_release(v37);

  v104(v6, v32);
  v94 = v31;
  v92 = v35;
  v35(v31, v118);

  v40 = v117;
  v41 = *(v117 + 16);
  v95 = v114[18];
  v42 = v108;
  v43 = v119;
  v41(v108, v113 + v95, v119);
  OUTLINED_FUNCTION_0_40();
  sub_1DD45003C(v44, v45);
  LOBYTE(v36) = sub_1DD63FD98();
  v46 = *(v40 + 8);
  v97 = v40 + 8;
  v96 = v46;
  v46(v42, v43);
  v47 = (v8 + 8);
  v48 = v109;
  if ((v36 & 1) == 0)
  {
    v49 = v117;
    v91 = v32;
    v50 = v119;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v90[1] = v47;
    v115 = v34;
    v51 = sub_1DD63F9F8();
    __swift_project_value_buffer(v51, qword_1EE16F068);
    v52 = sub_1DD63F9D8();
    v53 = sub_1DD640368();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DD38D000, v52, v53, "Siri locale has changed; refreshing Morphun analyzers", v54, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    v55 = v109;
    dispatch_group_enter(v109);
    v90[0] = qword_1EE16F008;
    v56 = v108;
    v41(v108, v120, v50);
    v57 = (*(v49 + 80) + 40) & ~*(v49 + 80);
    v58 = (v93 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v49;
    v61 = v110;
    *(v59 + 2) = v111;
    *(v59 + 3) = v61;
    *(v59 + 4) = v112;
    v62 = v56;
    v48 = v55;
    (*(v60 + 32))(&v59[v57], v62, v50);
    *&v59[v58] = v55;
    OUTLINED_FUNCTION_6_20();
    v123 = sub_1DD3CBCD0;
    v124 = &block_descriptor_108;
    v63 = _Block_copy(aBlock);
    v64 = v55;
    v65 = v90[0];

    v66 = v94;
    sub_1DD63FBA8();
    *&v127 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_26_10();
    v67 = v91;
    sub_1DD640718();
    MEMORY[0x1E12B27A0](0, v66, v6, v63);
    _Block_release(v63);

    v104(v6, v67);
    v92(v66, v118);
  }

  sub_1DD640418();
  OUTLINED_FUNCTION_12_17();
  isa = v48->isa;
  v69 = v114;
  v70 = v114[11];
  v71 = v113;
  v72 = *(v113 + v70);
  v73 = v48->isa;

  *(v71 + v70) = isa;
  OUTLINED_FUNCTION_12_17();
  v74 = *isa;
  v75 = v69[13];

  *(v71 + v75) = v74;
  swift_beginAccess();
  sub_1DD4501D4(v71 + v69[15], type metadata accessor for StringTokenizer);
  sub_1DD44FF80();
  swift_beginAccess();
  v76 = *(v110 + 16);
  v77 = *(v110 + 24);
  v78 = (v71 + v69[16]);
  v79 = *v78;
  sub_1DD3FA59C(v76, v77);
  sub_1DD44FF30(v79);
  *v78 = v76;
  v78[1] = v77;
  OUTLINED_FUNCTION_12_17();
  v80 = *v76;
  v81 = v69[17];

  *(v71 + v81) = v80;
  (*(v117 + 24))(v71 + v95, v120, v119);
  if (*(v71 + v69[27]) != 1 || (v82 = v69[21], *(v71 + v82)) || (v83 = v69[22], *(v71 + v83)))
  {

    __swift_destroy_boxed_opaque_existential_1(&v128);
    v84 = OUTLINED_FUNCTION_15_15();
    v85(v84);
  }

  else
  {
    type metadata accessor for EuclidEmbeddingApi();
    OUTLINED_FUNCTION_57();
    swift_allocObject();
    *(v71 + v82) = sub_1DD4BA174();
    type metadata accessor for EuclidVectorDb();
    swift_allocObject();
    v87 = sub_1DD4B97D4();

    __swift_destroy_boxed_opaque_existential_1(&v128);
    v88 = OUTLINED_FUNCTION_15_15();
    v89(v88);

    *(v71 + v83) = v87;
  }

  return result;
}

void sub_1DD449160()
{
  v1 = v0;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD38D000, v3, v4, "[UCG] Updating trial factors in the CRR Cache...", v5, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  v6 = type metadata accessor for ContactResolverCache(0);
  if (*(v1 + *(v6 + 76)))
  {
    v7 = v6;

    sub_1DD5FFDD8();
    v8 = OUTLINED_FUNCTION_35_7(0xD000000000000021, "triggeringCondition");

    if (v8)
    {
      v9 = [v8 BOOLeanValue];
    }

    else
    {
      v9 = 0;
    }

    *(v1 + v7[26]) = v9;
    v10 = sub_1DD5FFDD8();
    v11 = sub_1DD603474(v10, *(v1 + v7[24]));

    v12 = (v1 + v7[29]);
    *v12 = v11 & 1;
    v12[1] = HIBYTE(v11) & 1;
    if (*(v1 + v7[20]))
    {

      v13 = sub_1DD5FFDD8();
      v14 = sub_1DD59B690(0x4533457273417369, 0xEE0064656C62616ELL, v13);

      if (v14)
      {
        HIDWORD(v74) = [v14 BOOLeanValue];
      }

      else
      {
        HIDWORD(v74) = 0;
      }

      v15 = sub_1DD5FFDD8();
      v16 = OUTLINED_FUNCTION_31_9();
      v18 = sub_1DD59B690(v16, v17, v15);

      if (v18 && (v19 = sub_1DD44FB0C(v18), v20))
      {
        v71 = v19;
      }

      else
      {

        v71 = 1701736302;
      }

      v21 = sub_1DD5FFDD8();
      OUTLINED_FUNCTION_8_13();
      v24 = sub_1DD59B690(v22 + 3, v23 | 0x8000000000000000, v21);

      if (v24)
      {
        [v24 longValue];
      }

      v25 = sub_1DD5FFDD8();
      v26 = OUTLINED_FUNCTION_31_9();
      v28 = sub_1DD59B690(v26, v27, v25);

      if (v28)
      {
        [v28 longValue];
      }

      sub_1DD5FFDD8();
      OUTLINED_FUNCTION_8_13();
      v31 = OUTLINED_FUNCTION_35_7(v29 + 4, v30);

      if (v31)
      {
        [v31 doubleValue];
      }

      sub_1DD5FFDD8();
      OUTLINED_FUNCTION_8_13();
      v34 = OUTLINED_FUNCTION_35_7(v32 + 4, v33);

      if (v34)
      {
        [v34 doubleValue];
      }

      sub_1DD5FFDD8();
      OUTLINED_FUNCTION_8_13();
      v37 = OUTLINED_FUNCTION_35_7(v35 + 7, v36);

      if (v37)
      {
        v38 = [v37 BOOLeanValue];

        v47 = OUTLINED_FUNCTION_11_16(v39, v40, v41, v42, v43, v44, v45, v46, v71, v74, v79, v80, v81);
        OUTLINED_FUNCTION_14_17(v47, v48, v49, v50, v51, v52, v53, v54, v72, v75, v77);
        *(v1 + 56) = v38;
      }

      else
      {

        v63 = OUTLINED_FUNCTION_11_16(v55, v56, v57, v58, v59, v60, v61, v62, v71, v74, v79, v80, v81);
        OUTLINED_FUNCTION_14_17(v63, v64, v65, v66, v67, v68, v69, v70, v73, v76, v78);
        *(v1 + 56) = 0;
      }
    }

    else
    {
    }
  }
}

void sub_1DD4495C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  v1 = OUTLINED_FUNCTION_3(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v2;
  v4 = type metadata accessor for ContactResolverCache(0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCD0, &qword_1DD64AF48);
  swift_allocObject();
  sub_1DD54EF7C();
  qword_1EE16F000 = v5;
}

uint64_t sub_1DD449678()
{
  v0 = sub_1DD640478();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = sub_1DD640438();
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v9 = sub_1DD63FBD8();
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  sub_1DD63FBC8();
  sub_1DD640428();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v0);
  result = sub_1DD6404A8();
  qword_1EE16F008 = result;
  return result;
}

id sub_1DD44980C()
{
  result = sub_1DD449834();
  qword_1EE16F010 = result;
  *algn_1EE16F018 = v1;
  qword_1EE16F020 = v2;
  unk_1EE16F028 = v3;
  return result;
}

id sub_1DD449834()
{
  v0 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v4 = v3 - v2;
  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v6 = qword_1EE166460;
  v7 = v5;
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v8 = qword_1EE16F0C0;
  v9 = v4 + *(v0 + 20);
  *v9 = "CRR.initContactStoreObserver";
  *(v9 + 8) = 28;
  *(v9 + 16) = 2;
  v10 = v8;
  sub_1DD63F9B8();
  *(v4 + *(v0 + 24)) = v10;
  v11 = v10;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD643F90;
  v13 = sub_1DD6408F8();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1DD392BD8();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  OUTLINED_FUNCTION_22();
  sub_1DD63F998();

  v16 = [objc_opt_self() defaultCenter];
  v17 = *MEMORY[0x1E695C3E0];
  v31 = sub_1DD44F114;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1DD44F5CC;
  v30 = &block_descriptor_80;
  v18 = _Block_copy(&aBlock);
  [v16 addObserverForName:v17 object:0 queue:0 usingBlock:v18];
  _Block_release(v18);
  v19 = [objc_allocWithZone(MEMORY[0x1E695CE90]) initWithContactStore_];

  v20 = v19;
  v21 = *MEMORY[0x1E695C458];
  OUTLINED_FUNCTION_57();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v31 = sub_1DD44FF70;
  v32 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1DD44F5CC;
  v30 = &block_descriptor_86;
  v23 = _Block_copy(&aBlock);
  v24 = v20;

  [v16 addObserverForName:v21 object:0 queue:0 usingBlock:v23];

  _Block_release(v23);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_7_17();
  sub_1DD4501D4(v4, v25);
  return v7;
}

uint64_t sub_1DD449C00@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)(uint64_t a1)@<X6>, int a8@<W7>, void *a9@<X8>, unsigned __int8 *a10, void *a11, char a12, unint64_t a13, double a14, unsigned __int16 a15, uint64_t a16, unsigned __int8 a17)
{
  LODWORD(v274) = a8;
  v299 = a7;
  v294 = a6;
  v295 = a4;
  v297 = a5;
  v276 = a2;
  v277 = a3;
  v306 = a1;
  v309 = a11;
  v18 = *a10;
  v332[0] = *(a10 + 1);
  *(v332 + 3) = *(a10 + 1);
  v19 = *(a10 + 1);
  v258 = *(a10 + 2);
  v259 = v19;
  v20 = *(a10 + 4);
  v257 = *(a10 + 3);
  v255 = v20;
  v21 = *(a10 + 5);
  v22 = *(a10 + 6);
  v261 = a10;
  v278 = a10[56];
  v279 = v18;
  v296 = sub_1DD63F308();
  v307 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v270 = v23;
  v272 = &v247 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v260 = &v247 - v25;
  v308 = sub_1DD63D168();
  v310 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v288 = &v247 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v303 = &v247 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v253 = &v247 - v30;
  v31 = sub_1DD63FB78();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v247 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_1DD63FBD8();
  v35 = *(v320 - 8);
  MEMORY[0x1EEE9AC00](v320);
  v37 = &v247 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ContactResolverCache(0);
  v39 = a9 + *(v38 + 56);
  v40 = type metadata accessor for MLContactRecommender(0);
  v275 = v39;
  v302 = v40;
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v40);
  v311 = a9;
  v312 = v38;
  v41 = a9 + *(v38 + 120);
  *(v41 + 4) = 0;
  *v41 = 0u;
  *(v41 + 1) = 0u;
  v305 = v41;
  if (qword_1EE165278 != -1)
  {
    swift_once();
  }

  v290 = a16;
  v42 = qword_1EE16F008;
  v328 = sub_1DD44C16C;
  v329 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v326 = sub_1DD3CBCD0;
  v327 = &block_descriptor_3;
  v43 = _Block_copy(&aBlock);
  v44 = v42;
  sub_1DD63FBA8();
  *&v323 = MEMORY[0x1E69E7CC0];
  v45 = sub_1DD45003C(&qword_1EE163978, MEMORY[0x1E69E7F60]);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  v47 = sub_1DD44FA38();
  v314 = v46;
  v313 = v47;
  v317 = v45;
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v37, v34, v43);
  _Block_release(v43);

  v48 = *(v32 + 8);
  v319 = v32 + 8;
  v316 = v48;
  v48(v34, v31);
  v49 = *(v35 + 8);
  v318 = v35 + 8;
  v315 = v49;
  v49(v37, v320);
  v50 = v309;
  v292 = v34;
  v293 = v31;
  v291 = v37;
  if (v309 == 2)
  {
    v50 = sub_1DD4C01D8();
    v52 = v51 & 1;
  }

  else
  {
    v52 = a12;
  }

  v53 = v311;
  v54 = v299;
  v331 = BYTE1(v50);
  v330 = BYTE5(v50);
  v55 = v311 + v312[7];
  *v55 = v50;
  v55[8] = v52;
  sub_1DD3C4EB4();
  if (v324)
  {
    sub_1DD3AA4A8(&v323, &aBlock);
  }

  else
  {
    v56 = sub_1DD63F848();
    v57 = sub_1DD63F838();
    v327 = v56;
    v328 = &off_1F58C1B10;
    *&aBlock = v57;
    if (v324)
    {
      sub_1DD390754(&v323, &qword_1ECCDCCD8, &unk_1DD64AF60);
    }
  }

  v58 = v312[24];
  v59 = v331;
  sub_1DD3AA4A8(&aBlock, v53 + v312[10]);
  sub_1DD44FA9C(v290, v305);
  *(v53 + v58) = v54;
  if (v59)
  {
    v60 = qword_1EE160540;
    v61 = v54;
    if (v60 != -1)
    {
      swift_once();
    }

    v62 = sub_1DD63F9F8();
    __swift_project_value_buffer(v62, qword_1EE16EF00);
    v63 = sub_1DD63F9D8();
    v64 = sub_1DD640368();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1DD38D000, v63, v64, "Trial is disabled for this request", v65, 2u);
      MEMORY[0x1E12B3DA0](v65, -1, -1);
    }

    v66 = 0;
    v67 = 0;
    v309 = 0;
    v68 = 1;
  }

  else
  {
    v69 = objc_opt_self();
    v70 = v54;
    v71 = [v69 clientWithIdentifier_];
    type metadata accessor for TrialManager();
    v72 = swift_allocObject();
    v66 = sub_1DD5506B4(v71, 0xD000000000000027, 0x80000001DD669B10, v72);

    v73 = [v69 clientWithIdentifier_];
    v74 = swift_allocObject();
    v309 = sub_1DD5506B4(v73, 0xD000000000000021, 0x80000001DD66C320, v74);

    v75 = [v69 clientWithIdentifier_];
    v76 = swift_allocObject();
    v67 = sub_1DD5506B4(v75, 0xD000000000000026, 0x80000001DD66C350, v76);
    LOBYTE(v75) = v330;
    v68 = v66 == 0;

    if ((v75 & 1) == 0 && v66)
    {
      v77 = sub_1DD5FFDD8();
      v78 = sub_1DD59B690(0xD000000000000012, 0x80000001DD66C510, v77);

      if (v78 && (v79 = [v78 BOOLeanValue], v78, v79))
      {
        if (qword_1EE160540 != -1)
        {
          swift_once();
        }

        v80 = sub_1DD63F9F8();
        __swift_project_value_buffer(v80, qword_1EE16EF00);
        v81 = sub_1DD63F9D8();
        v82 = sub_1DD640368();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_1DD38D000, v81, v82, "Trial override: searchNLCandidates=true", v83, 2u);
          MEMORY[0x1E12B3DA0](v83, -1, -1);
        }

        v68 = 0;
        v55[5] = 1;
      }

      else
      {
        v68 = 0;
      }
    }
  }

  v254 = dispatch_group_create();
  v84 = swift_allocObject();
  v305 = v84;
  *(v84 + 16) = 0;
  v262 = v84 + 16;
  v85 = swift_allocObject();
  v304 = v85;
  *(v85 + 16) = 0;
  v263 = v85 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCC98, &unk_1DD64AF10);
  v287 = swift_allocBox();
  v268 = v86;
  __swift_storeEnumTagSinglePayload(v86, 1, 1, v302);
  type metadata accessor for StringTokenizer(0);
  v286 = swift_allocBox();
  *v87 = 0;
  v269 = v87;
  sub_1DD63D158();
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  v264 = v88 + 16;
  v285 = v88;
  *(v88 + 24) = 0;
  v89 = swift_allocObject();
  v302 = v89;
  *(v89 + 16) = 0;
  v265 = v89 + 16;
  v90 = swift_allocObject();
  v301 = v90;
  *(v90 + 16) = 0;
  v267 = v90 + 16;
  v91 = swift_allocObject();
  v300 = v91;
  *(v91 + 16) = MEMORY[0x1E69E7CD0];
  v266 = v91 + 16;
  v92 = swift_allocObject();
  *(v92 + 16) = 0u;
  v271 = v92 + 16;
  *(v92 + 32) = 0u;
  v284 = v92;
  *(v92 + 48) = 0;
  if (v68 || (, v93 = sub_1DD5FFDD8(), , v94 = sub_1DD59B690(0xD000000000000021, 0x80000001DD66C4E0, v93), , !v94))
  {
    LODWORD(v256) = 0;
  }

  else
  {
    LODWORD(v256) = [v94 BOOLeanValue];
  }

  v281 = 1701736302;
  LODWORD(v283) = v68;
  if (v67)
  {

    v95 = sub_1DD5FFDD8();

    v96 = sub_1DD59B690(0x4533457273417369, 0xEE0064656C62616ELL, v95);

    if (v96)
    {
      v97 = [v96 BOOLeanValue];
    }

    else
    {
      v97 = 0;
    }

    v103 = sub_1DD5FFDD8();

    v104 = sub_1DD59B690(0xD000000000000013, 0x80000001DD66C4C0, v103);

    if (v104 && (v105 = sub_1DD44FB0C(v104), v106))
    {
      v298 = v106;
      v281 = v105;
    }

    else
    {
      v298 = 0xE400000000000000;
    }

    v107 = sub_1DD5FFDD8();

    v108 = sub_1DD59B690(0xD000000000000016, 0x80000001DD66C420, v107);

    if (v108)
    {
      v280 = [v108 longValue];
    }

    else
    {
      v280 = 0;
    }

    v109 = sub_1DD5FFDD8();

    v110 = sub_1DD59B690(0xD000000000000013, 0x80000001DD66C440, v109);

    if (v110)
    {
      v99 = [v110 longValue];
    }

    else
    {
      v99 = 0;
    }

    v111 = sub_1DD5FFDD8();

    v112 = sub_1DD59B690(0xD000000000000017, 0x80000001DD66C460, v111);

    if (v112)
    {
      [v112 doubleValue];
      v102 = v113;
    }

    else
    {
      v102 = 0x4059000000000000;
    }

    v114 = sub_1DD5FFDD8();

    v115 = sub_1DD59B690(0xD000000000000017, 0x80000001DD66C480, v114);

    if (v115)
    {
      [v115 doubleValue];
      v101 = v116;
    }

    else
    {
      v101 = 0;
    }

    v117 = sub_1DD5FFDD8();

    v118 = sub_1DD59B690(0xD00000000000001ALL, 0x80000001DD66C4A0, v117);

    if (v118)
    {
      v98 = [v118 BOOLeanValue];
    }

    else
    {
      v98 = 0;
    }

    v100 = v298;
  }

  else
  {
    v98 = 0;
    v99 = 0;
    v280 = 0;
    v97 = 0;
    v100 = 0xE400000000000000;
    v101 = 0;
    v102 = 0x4059000000000000;
  }

  if (*(v261 + 2))
  {

    v322[0] = v332[0];
    *(v322 + 3) = *(v332 + 3);
    v100 = v258;
    v280 = v257;
    v281 = v259;
    v261 = v255;
  }

  else
  {
    v261 = v99;
    v278 = v98;
    v279 = v97;
    v21 = v102;
    v22 = v101;
  }

  v120 = v312[21];
  v119 = v312[22];
  v298 = v100;
  v121 = 0;
  if (v97)
  {
    type metadata accessor for EuclidEmbeddingApi();
    swift_allocObject();
    v122 = sub_1DD4BA174();
    v123 = v311;
    *(v311 + v120) = v122;
    type metadata accessor for EuclidVectorDb();
    swift_allocObject();
    v121 = sub_1DD4B97D4();
  }

  else
  {
    v123 = v311;
    *(v311 + v120) = 0;
  }

  *(v123 + v119) = v121;
  if (v309 && (, v124 = sub_1DD5FFDD8(), , v125 = sub_1DD59B690(0xD000000000000014, 0x80000001DD66C400, v124), , v125))
  {
    LODWORD(v259) = [v125 BOOLeanValue];
  }

  else
  {
    LODWORD(v259) = 1;
  }

  if ((v283 & 1) != 0 || (v126 = sub_1DD5FFDD8(), , v127 = sub_1DD59B690(0xD000000000000014, 0x80000001DD66C400, v126), , !v127))
  {
    v128 = 1;
  }

  else
  {
    v128 = [v127 BOOLeanValue];
  }

  v129 = 999.999;
  if (v309)
  {

    v130 = sub_1DD5FFDD8();

    v131 = sub_1DD59B690(0xD000000000000021, 0x80000001DD66C3A0, v130);

    if (v131)
    {
      v132 = [v131 BOOLeanValue];
    }

    else
    {
      v132 = 1;
    }

    v133 = sub_1DD5FFDD8();

    v134 = sub_1DD59B690(0xD000000000000026, 0x80000001DD66C3D0, v133);

    if (v134)
    {
      [v134 doubleValue];
      v129 = v135;
    }
  }

  else
  {
    v132 = 1;
  }

  v136 = a15;
  if (a13 == 2)
  {
    v137 = v259;
  }

  else
  {
    v137 = a13;
  }

  if (a13 == 2)
  {
    v138 = v128;
  }

  else
  {
    v138 = (a13 >> 8) & 1;
  }

  if (a13 != 2)
  {
    v132 = (a13 >> 16) & 1;
    v129 = a14;
  }

  v327 = &type metadata for ContactFeatures;
  v328 = sub_1DD3E6184();
  LOBYTE(aBlock) = 7;
  v139 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  LODWORD(v259) = v138;
  v140 = 256;
  if (!v138)
  {
    v140 = 0;
  }

  v257 = v137;
  LODWORD(v258) = v132;
  if (sub_1DD517EC0(v139 & 1, v140 & 0xFFFE | v137 & 1))
  {
    v141 = sub_1DD6401F8();
    __swift_storeEnumTagSinglePayload(v253, 1, 1, v141);
    v142 = swift_allocObject();
    *(v142 + 16) = 0;
    *(v142 + 24) = 0;
    sub_1DD4B0E18();
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v143 = sub_1DD63F9F8();
    __swift_project_value_buffer(v143, qword_1EE16F068);
    v144 = sub_1DD63F9D8();
    v145 = sub_1DD640368();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *&aBlock = v147;
      *v146 = 136315138;
      *(v146 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &aBlock);
      _os_log_impl(&dword_1DD38D000, v144, v145, "%s ECR integration OFF. Skip creation of MegadomeSignalProvider", v146, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v147);
      MEMORY[0x1E12B3DA0](v147, -1, -1);
      MEMORY[0x1E12B3DA0](v146, -1, -1);
    }
  }

  v148 = v308;
  v149 = v310;
  v150 = v260;
  if (a15 == 2)
  {
    if (v283)
    {
      v136 = 0;
      LODWORD(v255) = 0;
      goto LABEL_98;
    }

    v151 = sub_1DD5FFDD8();
    v136 = sub_1DD603474(v151, v299);
  }

  LODWORD(v255) = (v136 >> 8) & 1;
LABEL_98:
  LODWORD(v253) = a17;
  sub_1DD3C4EB4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v150, 1, v148);
  v289 = v66;
  v273 = v67;
  LODWORD(v260) = v136;
  if (EnumTagSinglePayload == 1)
  {
    v153 = v303;
    sub_1DD44C624(v303);
    if (__swift_getEnumTagSinglePayload(v150, 1, v148) != 1)
    {
      sub_1DD390754(v150, &qword_1ECCDC3F0, &unk_1DD64AF50);
    }
  }

  else
  {
    v153 = v303;
    (*(v149 + 32))(v303, v150, v148);
  }

  v154 = v254;
  dispatch_group_enter(v254);
  v252 = qword_1EE16F008;
  v155 = v288;
  v248 = *(v149 + 16);
  v249 = v149 + 16;
  v248(v288, v153, v148);
  v156 = (*(v149 + 80) + 40) & ~*(v149 + 80);
  v157 = (v282 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
  v247 = *(v149 + 80);
  v158 = swift_allocObject();
  v159 = v285;
  v158[2] = v286;
  v158[3] = v159;
  v158[4] = v302;
  v160 = *(v149 + 32);
  v250 = v156;
  v310 = v149 + 32;
  v283 = v160;
  v160(v158 + v156, v155, v148);
  v251 = v157;
  *(v158 + v157) = v154;
  v328 = sub_1DD44FB7C;
  v329 = v158;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v282 = &v326;
  v326 = sub_1DD3CBCD0;
  v327 = &block_descriptor_25;
  v161 = _Block_copy(&aBlock);
  v162 = v252;

  v163 = v154;
  v164 = v291;
  sub_1DD63FBA8();
  *&v323 = MEMORY[0x1E69E7CC0];
  v166 = v292;
  v165 = v293;
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v164, v166, v161);
  _Block_release(v161);

  v316(v166, v165);
  v315(v164, v320);

  dispatch_group_enter(v163);
  v167 = qword_1EE16F008;
  v168 = swift_allocObject();
  *(v168 + 16) = v305;
  *(v168 + 24) = v163;
  v328 = sub_1DD44FB80;
  v329 = v168;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v326 = sub_1DD3CBCD0;
  v327 = &block_descriptor_31;
  v169 = _Block_copy(&aBlock);
  v170 = v163;
  v171 = v167;

  sub_1DD63FBA8();
  *&v323 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v164, v166, v169);
  _Block_release(v169);

  v316(v166, v165);
  v315(v164, v320);

  dispatch_group_enter(v170);
  v172 = qword_1EE16F008;
  v173 = swift_allocObject();
  *(v173 + 16) = v304;
  *(v173 + 24) = v170;
  v328 = sub_1DD44FBC4;
  v329 = v173;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v326 = sub_1DD3CBCD0;
  v327 = &block_descriptor_37;
  v174 = _Block_copy(&aBlock);
  v175 = v170;
  v252 = v175;
  v176 = v172;

  sub_1DD63FBA8();
  *&v323 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v164, v166, v174);
  _Block_release(v174);

  v316(v166, v165);
  v315(v164, v320);

  dispatch_group_enter(v175);
  v254 = qword_1EE16F008;
  v177 = v307;
  v178 = v272;
  v179 = v296;
  (*(v307 + 16))(v272, v297, v296);
  v180 = (*(v177 + 80) + 16) & ~*(v177 + 80);
  v181 = (v270 + v180 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = swift_allocObject();
  v183 = *(v177 + 32);
  v307 = v177 + 32;
  v272 = v183;
  (v183)(v182 + v180, v178, v179);
  v184 = v252;
  *(v182 + v181) = v252;
  v185 = v164;
  v328 = sub_1DD44FC08;
  v329 = v182;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v326 = sub_1DD3CBCD0;
  v327 = &block_descriptor_43;
  v186 = _Block_copy(&aBlock);
  v187 = v184;
  v188 = v254;
  sub_1DD63FBA8();
  *&v323 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v185, v166, v186);
  _Block_release(v186);

  v316(v166, v165);
  v315(v185, v320);

  dispatch_group_enter(v187);
  if (v253)
  {
    v189 = v299;
    v190 = v303;
    if (v299)
    {
      v191 = sub_1DD63FDA8();
      v192 = [v189 BOOLForKey_];

      v193 = v192 ^ 1;
    }

    else
    {
      v193 = 1;
    }
  }

  else
  {
    v190 = v303;

    v193 = 0;
  }

  v194 = v256;
  if (v274 != 2)
  {
    v194 = v274;
  }

  LODWORD(v282) = v194;
  v274 = v312[11];
  v195 = v312[16];
  v270 = v312[17];
  v256 = (v311 + v195);
  v196 = v312[19];
  v253 = v312[20];
  v254 = v196;
  v252 = v312[23];
  v197 = qword_1EE16F008;
  v198 = v288;
  v199 = v308;
  v248(v288, v190, v308);
  v200 = v251;
  v201 = swift_allocObject();
  *(v201 + 16) = v193;
  v202 = v287;
  *(v201 + 24) = v289;
  *(v201 + 32) = v202;
  v283(v201 + v250, v198, v199);
  *(v201 + v200) = v187;
  v328 = sub_1DD44FC84;
  v329 = v201;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v326 = sub_1DD3CBCD0;
  v327 = &block_descriptor_49;
  v203 = _Block_copy(&aBlock);

  v204 = v187;
  v205 = v197;

  v206 = v291;
  sub_1DD63FBA8();
  *&v323 = MEMORY[0x1E69E7CC0];
  v208 = v292;
  v207 = v293;
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v206, v208, v203);
  _Block_release(v203);

  v316(v208, v207);
  v315(v206, v320);

  dispatch_group_enter(v204);
  v209 = qword_1EE16F008;
  sub_1DD3C2388(v306, &v323);
  v210 = swift_allocObject();
  *(v210 + 16) = v301;
  sub_1DD3AA4A8(&v323, v210 + 24);
  *(v210 + 64) = v204;
  v328 = sub_1DD44FD08;
  v329 = v210;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v299 = &v326;
  v326 = sub_1DD3CBCD0;
  v327 = &block_descriptor_55;
  v211 = _Block_copy(&aBlock);
  v212 = v204;
  v213 = v209;

  sub_1DD63FBA8();
  v321 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v206, v208, v211);
  _Block_release(v211);

  v316(v208, v207);
  v315(v206, v320);

  dispatch_group_enter(v212);
  v214 = qword_1EE16F008;
  v215 = v306;
  sub_1DD3C2388(v306, &v323);
  v216 = swift_allocObject();
  sub_1DD3AA4A8(&v323, v216 + 16);
  *(v216 + 56) = v212;
  v328 = sub_1DD44FD18;
  v329 = v216;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v326 = sub_1DD3CBCD0;
  v327 = &block_descriptor_61;
  v217 = _Block_copy(&aBlock);
  v218 = v212;
  v219 = v214;
  sub_1DD63FBA8();
  v321 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v206, v208, v217);
  _Block_release(v217);

  v316(v208, v207);
  v315(v206, v320);

  dispatch_group_enter(v218);
  v220 = qword_1EE16F008;
  sub_1DD3C2388(v215, &v323);
  v221 = swift_allocObject();
  *(v221 + 16) = v300;
  sub_1DD3AA4A8(&v323, v221 + 24);
  *(v221 + 64) = v218;
  v328 = sub_1DD44FD68;
  v329 = v221;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v326 = sub_1DD3CBCD0;
  v327 = &block_descriptor_67;
  v222 = _Block_copy(&aBlock);
  v223 = v218;
  v224 = v220;

  sub_1DD63FBA8();
  v321 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v206, v208, v222);
  _Block_release(v222);

  v316(v208, v207);
  v315(v206, v320);

  dispatch_group_enter(v223);
  v225 = qword_1EE16F008;
  v226 = swift_allocObject();
  *(v226 + 16) = v284;
  *(v226 + 24) = v223;
  v328 = sub_1DD44FDC4;
  v329 = v226;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v326 = sub_1DD3CBCD0;
  v327 = &block_descriptor_73;
  v227 = _Block_copy(&aBlock);
  v228 = v223;
  v229 = v225;

  sub_1DD63FBA8();
  *&v323 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v206, v208, v227);
  _Block_release(v227);

  v316(v208, v207);
  v315(v206, v320);

  sub_1DD640418();

  sub_1DD390754(v290, &qword_1ECCDC250, &qword_1DD645B10);
  sub_1DD390754(v294, &qword_1ECCDC3F0, &unk_1DD64AF50);
  sub_1DD390754(v295, &qword_1ECCDCCD8, &unk_1DD64AF60);
  v230 = v311;
  v231 = v312;
  *(&v254->isa + v311) = v289;
  v232 = v252;
  *(v230 + v253) = v273;
  *(v230 + v232) = v309;
  sub_1DD3AA4A8(v306, v230 + v231[8]);
  sub_1DD3AA4A8(v276, v230 + v231[9]);
  v233 = v231;
  *(v230 + v231[12]) = v277;
  swift_beginAccess();
  *v230 = *(v305 + 2);
  swift_beginAccess();
  v230[1] = *(v304 + 16);
  (v272)(v230 + v231[6], v297, v296);
  swift_beginAccess();

  sub_1DD390754(v275, &qword_1ECCDCC98, &unk_1DD64AF10);
  sub_1DD3C4EB4();
  swift_beginAccess();
  sub_1DD44FF80();
  swift_beginAccess();
  v234 = *(v285 + 16);
  v235 = *(v285 + 24);
  v236 = v256;
  *v256 = v234;
  v236[1] = v235;
  swift_beginAccess();
  v320 = *(v302 + 16);
  *(v230 + v270) = v320;
  swift_beginAccess();
  v237 = *(v301 + 16);
  *(v230 + v274) = v237;
  swift_beginAccess();
  *(v230 + v231[13]) = *(v300 + 16);
  v283(v230 + v231[18], v303, v308);
  v238 = v271;
  swift_beginAccess();
  v239 = v233[25];
  sub_1DD3FA84C(v238, v230 + v239);
  *(v230 + v233[26]) = v282 & 1;
  v240 = v230 + v233[27];
  *v240 = v279;
  *(v240 + 1) = v322[0];
  *(v240 + 1) = *(v322 + 3);
  v241 = v298;
  *(v240 + 1) = v281;
  *(v240 + 2) = v241;
  v242 = v261;
  *(v240 + 3) = v280;
  *(v240 + 4) = v242;
  *(v240 + 5) = v21;
  *(v240 + 6) = v22;
  v240[56] = v278;
  v243 = (v230 + v233[28]);
  *v243 = v257 & 1;
  *(v243 + 1) = v259;
  *(v243 + 2) = v258;
  v243[1] = v129;
  sub_1DD3FA59C(v234, v235);
  v244 = v237;

  sub_1DD44FDCC(v230 + v239);
  sub_1DD3FA84C(v238, v230 + v239);

  v245 = v230 + v233[29];
  *v245 = v260 & 1;
  v245[1] = v255;
}

uint64_t sub_1DD44C16C()
{
  if (qword_1EE165280 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_1DD44C19C()
{
  v0[20] = type metadata accessor for Signpost(0);
  v0[21] = swift_task_alloc();
  v1 = sub_1DD63D078();
  v0[22] = v1;
  v0[23] = *(v1 - 8);
  v0[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD44C288, 0, 0);
}

uint64_t sub_1DD44C288()
{
  v41 = v0;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v1 = sub_1DD63F9F8();
  __swift_project_value_buffer(v1, qword_1EE16F068);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_54();
    v5 = OUTLINED_FUNCTION_62();
    v40 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v40);
    _os_log_impl(&dword_1DD38D000, v2, v3, "%s ECR integration ON. Creating MegadomeSignalProvider...", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE162EF8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE16EFD8;
  *(v0 + 104) = type metadata accessor for MegadomeClient();
  *(v0 + 112) = &off_1F58BB3C8;
  *(v0 + 80) = v6;
  *(v0 + 144) = &type metadata for ContactFeatures;
  *(v0 + 152) = sub_1DD3E6184();
  *(v0 + 120) = 7;

  v39 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  sub_1DD63D068();
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 168);
  v38 = *(v0 + 176);
  v10 = *(v0 + 160);
  v11 = qword_1EE16F0C0;
  v12 = v9 + *(v10 + 20);
  *v12 = "ContactResolver.MegadomeSignalProvider.init";
  *(v12 + 8) = 43;
  *(v12 + 16) = 2;
  v13 = v11;
  sub_1DD63F9B8();
  *(v9 + *(v10 + 24)) = v13;
  v14 = v13;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DD643F90;
  v16 = sub_1DD6408F8();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1DD392BD8();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  LOBYTE(v37) = 2;
  OUTLINED_FUNCTION_22();
  sub_1DD63F998();

  sub_1DD3C2388(v0 + 80, v0 + 16);
  *(v0 + 56) = v39 & 1;
  *(v0 + 64) = 257;
  *(v0 + 66) = 1;
  *(v0 + 72) = 0x408F3FFDF3B645A2;
  sub_1DD5186BC(v9, v7, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v36, v37);
  OUTLINED_FUNCTION_7_17();
  sub_1DD4501D4(v9, v33);
  (*(v8 + 8))(v7, v38);
  sub_1DD3FABB0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1DD44C624@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  sub_1DD63F488();
  if (sub_1DD63F468())
  {
    sub_1DD63F458();
    sub_1DD63F498();

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1EE16F068);
    (*(v4 + 16))(v11, v14, v2);
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_54();
      v52 = OUTLINED_FUNCTION_62();
      v53 = a1;
      v54 = v52;
      *v18 = 136315138;
      OUTLINED_FUNCTION_0_40();
      sub_1DD45003C(v19, v20);
      v21 = sub_1DD640CB8();
      v22 = v2;
      v23 = v4;
      v25 = v24;
      (*(v23 + 8))(v11, v22);
      v26 = sub_1DD39565C(v21, v25, &v54);
      v4 = v23;
      v2 = v22;

      *(v18 + 4) = v26;
      _os_log_impl(&dword_1DD38D000, v16, v17, "Siri task locale is %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      a1 = v53;
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      (*(v4 + 8))(v11, v2);
    }

    return (*(v4 + 32))(a1, v14, v2);
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v27 = sub_1DD63F9F8();
    __swift_project_value_buffer(v27, qword_1EE16F068);
    v28 = sub_1DD63F9D8();
    v29 = sub_1DD640368();
    v30 = os_log_type_enabled(v28, v29);
    v51 = v4;
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_54();
      v32 = OUTLINED_FUNCTION_62();
      v53 = a1;
      v54 = v32;
      v33 = v32;
      *v31 = 136315138;
      sub_1DD63D158();
      OUTLINED_FUNCTION_0_40();
      sub_1DD45003C(v34, v35);
      sub_1DD640CB8();
      (*(v4 + 8))(v8, v2);
      v36 = OUTLINED_FUNCTION_15_0();
      v39 = sub_1DD39565C(v36, v37, v38);

      *(v31 + 4) = v39;
      _os_log_impl(&dword_1DD38D000, v28, v29, "no current Siri task. Falling back to system locale, Locale.current: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v40 = sub_1DD63F9D8();
    v41 = sub_1DD640368();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_54();
      v43 = OUTLINED_FUNCTION_62();
      v54 = v43;
      *v42 = 136315138;
      sub_1DD63F478();
      sub_1DD63F458();

      sub_1DD63F498();

      OUTLINED_FUNCTION_0_40();
      sub_1DD45003C(v44, v45);
      sub_1DD640CB8();
      (*(v51 + 8))(v8, v2);
      v46 = OUTLINED_FUNCTION_15_0();
      v49 = sub_1DD39565C(v46, v47, v48);

      *(v42 + 4) = v49;
      _os_log_impl(&dword_1DD38D000, v40, v41, "environment.default.siriLocale: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    return sub_1DD63D158();
  }
}

uint64_t sub_1DD44CB74(uint64_t *a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v28 = v26 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  sub_1DD530CF4(a2);
  v30 = a2;
  v18 = *(v5 + 16);
  v18(v17, a2, v3);
  v19 = sub_1DD5FDD34(v17);
  v26[4] = v25;
  v27 = v19;
  v18(v14, a2, v3);
  sub_1DD53C9B4(v14);
  v20 = v28;
  v18(v28, v30, v3);
  v21 = (v18)(v9, v20, v3);
  if (sub_1DD4F9BB8(v21))
  {
    v22 = 1;
  }

  else
  {
    v33 = sub_1DD63D118();
    v34 = v23;
    v31 = 24938;
    v32 = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    v22 = sub_1DD63FD48();
  }

  sub_1DD5E8D74(v9, v22 & 1, v29);
  (*(v5 + 8))(v20, v3);
  return v27;
}

uint64_t sub_1DD44D008()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (v15 - v1);
  v3 = sub_1DD63CE68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  if (qword_1EE1659B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EE16F038);
  sub_1DD3C4EB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v2;
    v15[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    swift_willThrowTypedImpl();
    type metadata accessor for InferenceError();
    v11 = v10;
    sub_1DD4DE56C(v10, 2, 0xD00000000000007ALL, 0x80000001DD66C5E0, 0x2928424464616F6CLL, 0xE800000000000000, 525);
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD63F9F8();
    __swift_project_value_buffer(v12, qword_1EE16F0C8);
    sub_1DD4DEB78();

    return 0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC258, &qword_1DD645B18);
    swift_allocObject();
    v14 = sub_1DD608CA4(v6);
    (*(v4 + 8))(v9, v3);
  }

  return v14;
}

uint64_t sub_1DD44D32C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (v15 - v1);
  v3 = sub_1DD63CE68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  if (qword_1EE165A48 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EE16F050);
  sub_1DD3C4EB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v2;
    v15[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    swift_willThrowTypedImpl();
    type metadata accessor for InferenceError();
    v11 = v10;
    sub_1DD4DE56C(v10, 2, 0xD00000000000007ALL, 0x80000001DD66C5E0, 0x2928424464616F6CLL, 0xE800000000000000, 525);
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD63F9F8();
    __swift_project_value_buffer(v12, qword_1EE16F0C8);
    sub_1DD4DEB78();

    return 0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC260, &unk_1DD645B20);
    swift_allocObject();
    v14 = sub_1DD608CA4(v6);
    (*(v4 + 8))(v9, v3);
  }

  return v14;
}

void sub_1DD44D650(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  OUTLINED_FUNCTION_18_7();
  v8 = v7();
  OUTLINED_FUNCTION_100(v5 + 16, v11);
  *(v5 + 16) = v8;

  swift_beginAccess();
  if (*(v5 + 16))
  {

    a4(&v10, v9);
  }

  dispatch_group_leave(v4);
}

void sub_1DD44D708(uint64_t a1, NSObject *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCE8, &unk_1DD64AF90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1DD63F2E8();
  v6 = sub_1DD63F308();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_1DD390754(v5, &qword_1ECCDCCE8, &unk_1DD64AF90);
  dispatch_group_leave(a2);
}

void sub_1DD44D7E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v96 = a5;
  v90 = a4;
  v91 = a2;
  v6 = sub_1DD63D168();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCC98, &unk_1DD64AF10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v79 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v79 - v15;
  v94 = sub_1DD63CE68();
  v92 = *(v94 - 1);
  MEMORY[0x1EEE9AC00](v94);
  v85 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v93 = (&v79 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v79 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v79 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v79 - v25;
  v26 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = swift_projectBox();
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v29 = qword_1EE16F0C0;
  v30 = &v28[*(v26 + 20)];
  *v30 = "ContactResolver.Recommend.ML.init";
  *(v30 + 1) = 33;
  v30[16] = 2;
  v31 = v29;
  sub_1DD63F9B8();
  *&v28[*(v26 + 24)] = v31;
  v32 = v31;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1DD643F90;
  v34 = sub_1DD6408F8();
  v36 = v35;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = sub_1DD392BD8();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  v95 = v32;
  sub_1DD63F998();

  if (a1)
  {
    if (v91 && (v37 = sub_1DD5FFDD8(), v38 = sub_1DD59B690(0x52746361746E6F43, 0xED000072656B6E61, v37), , v38))
    {
      sub_1DD5FF528(v16);

      v39 = v94;
      if (__swift_getEnumTagSinglePayload(v16, 1, v94) != 1)
      {
        v40 = v81;
        (*(v92 + 32))(v81, v16, v39);
        if (qword_1EE160540 != -1)
        {
          swift_once();
        }

        v41 = sub_1DD63F9F8();
        __swift_project_value_buffer(v41, qword_1EE16EF00);
        v42 = sub_1DD63F9D8();
        v43 = sub_1DD640368();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1DD38D000, v42, v43, "using Trial URL for ContactRanker", v44, 2u);
          MEMORY[0x1E12B3DA0](v44, -1, -1);
        }

        v45 = v92;
        v46 = v80;
        (*(v92 + 16))(v80, v40, v39);
        v47 = v82;
        (*(v88 + 16))(v82, v90, v89);
        v48 = v83;
        sub_1DD5224F8(v46, v47, v83);
        (*(v45 + 8))(v40, v39);
        v78 = type metadata accessor for MLContactRecommender(0);
        __swift_storeEnumTagSinglePayload(v48, 0, 1, v78);
        goto LABEL_27;
      }
    }

    else
    {
      v39 = v94;
      __swift_storeEnumTagSinglePayload(v16, 1, 1, v94);
    }

    sub_1DD390754(v16, &qword_1ECCDBF78, &unk_1DD644440);
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v49 = sub_1DD63F9F8();
    __swift_project_value_buffer(v49, qword_1EE16F068);
    v50 = sub_1DD63F9D8();
    v51 = sub_1DD640378();
    v52 = os_log_type_enabled(v50, v51);
    v39 = v94;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1DD38D000, v50, v51, "⚠️ Should only be set to FALSE in unit test mock to ignore Trial's ContactRanker model", v53, 2u);
      MEMORY[0x1E12B3DA0](v53, -1, -1);
    }
  }

  if (qword_1EE160540 != -1)
  {
    swift_once();
  }

  v54 = sub_1DD63F9F8();
  __swift_project_value_buffer(v54, qword_1EE16EF00);
  v55 = sub_1DD63F9D8();
  v56 = sub_1DD640368();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v98[0] = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_1DD39565C(0xD000000000000028, 0x80000001DD66C5B0, v98);
    _os_log_impl(&dword_1DD38D000, v55, v56, "using default URL for ContactRanker %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x1E12B3DA0](v58, -1, -1);
    MEMORY[0x1E12B3DA0](v57, -1, -1);
  }

  v59 = v97;
  v60 = v93;
  sub_1DD628068(0xD000000000000028, v97);
  v61 = v92;
  v94 = *(v92 + 16);
  (v94)(v60, v59, v39);
  v62 = sub_1DD63F9D8();
  v63 = sub_1DD640368();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v98[0] = v93;
    *v64 = 136315138;
    sub_1DD45003C(&qword_1EE165CE0, MEMORY[0x1E6968FB0]);
    LODWORD(v91) = v63;
    v65 = sub_1DD640CB8();
    v66 = v60;
    v67 = v65;
    v69 = v68;
    v70 = *(v61 + 8);
    v70(v66, v39);
    v71 = sub_1DD39565C(v67, v69, v98);

    *(v64 + 4) = v71;
    _os_log_impl(&dword_1DD38D000, v62, v91, "using default URL for ContactRanker %s", v64, 0xCu);
    v72 = v93;
    __swift_destroy_boxed_opaque_existential_1(v93);
    MEMORY[0x1E12B3DA0](v72, -1, -1);
    v73 = v64;
    v59 = v97;
    MEMORY[0x1E12B3DA0](v73, -1, -1);
  }

  else
  {

    v70 = *(v61 + 8);
    v70(v60, v39);
  }

  v74 = v87;
  v75 = v85;
  (v94)(v85, v59, v39);
  v76 = v86;
  (*(v88 + 16))(v86, v90, v89);
  sub_1DD5224F8(v75, v76, v74);
  v70(v59, v39);
  v77 = type metadata accessor for MLContactRecommender(0);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v77);
LABEL_27:
  swift_beginAccess();
  sub_1DD3E6284();
  sub_1DD6404C8();
  sub_1DD63F9A8();
  sub_1DD4501D4(v28, type metadata accessor for Signpost);
  dispatch_group_leave(v96);
}

uint64_t sub_1DD44E4B0(uint64_t a1, void *a2, NSObject *a3)
{
  v30 = a3;
  v5 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE16F0C0;
  v9 = &v7[*(v5 + 20)];
  *v9 = "CRR.findMeCard";
  *(v9 + 1) = 14;
  v9[16] = 2;
  v10 = v8;
  sub_1DD63F9B8();
  *&v7[*(v5 + 24)] = v10;
  v11 = v10;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD643F90;
  v13 = sub_1DD6408F8();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1DD392BD8();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD63F9F8();
  __swift_project_value_buffer(v16, qword_1EE16F068);
  v17 = sub_1DD63F9D8();
  v18 = sub_1DD640368();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DD38D000, v17, v18, "ContactResolverCache::init - Attempting to find meCard.", v19, 2u);
    MEMORY[0x1E12B3DA0](v19, -1, -1);
  }

  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  if (qword_1EE1660F0 != -1)
  {
    swift_once();
  }

  v22 = (*(v21 + 16))(qword_1EE16F080, v20, v21);
  swift_beginAccess();
  v23 = *(a1 + 16);
  *(a1 + 16) = v22;

  v24 = sub_1DD63F9D8();
  v25 = sub_1DD640368();
  if (os_log_type_enabled(v24, v25))
  {
    if (v22)
    {
      v26 = "ContactResolverCache::init - Found meCard!";
    }

    else
    {
      v26 = "ContactResolverCache::init - Unable to find meCard!";
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DD38D000, v24, v25, v26, v27, 2u);
    MEMORY[0x1E12B3DA0](v27, -1, -1);
  }

  dispatch_group_leave(v30);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return sub_1DD4501D4(v7, type metadata accessor for Signpost);
}

uint64_t sub_1DD44E8A4(void *a1, NSObject *a2)
{
  v4 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE16F0C0;
  v8 = &v6[*(v4 + 20)];
  *v8 = "CRR.dummyContactRequest";
  *(v8 + 1) = 23;
  v8[16] = 2;
  v9 = v7;
  sub_1DD63F9B8();
  *&v6[*(v4 + 24)] = v9;
  v10 = v9;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD643F90;
  v12 = sub_1DD6408F8();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1DD392BD8();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_1DD63F998();

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 8))(0x73616D6F6874, 0xE600000000000000, v15, v16);

  dispatch_group_leave(a2);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return sub_1DD4501D4(v6, type metadata accessor for Signpost);
}

uint64_t sub_1DD44EB0C(uint64_t a1, NSObject *a2)
{
  v3 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE16F0C0;
  v7 = &v5[*(v3 + 20)];
  *v7 = "CRR.loadPicsStore";
  *(v7 + 1) = 17;
  v7[16] = 2;
  v8 = v6;
  sub_1DD63F9B8();
  *&v5[*(v3 + 24)] = v8;
  v9 = v8;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v11 = sub_1DD6408F8();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DD392BD8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_1DD63F998();

  swift_beginAccess();
  sub_1DD63F988();
  sub_1DD3E6284();
  swift_endAccess();
  dispatch_group_leave(a2);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return sub_1DD4501D4(v5, type metadata accessor for Signpost);
}

void sub_1DD44ED58(uint64_t a1, void *a2, NSObject *a3)
{
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD63F9F8();
  __swift_project_value_buffer(v6, qword_1EE16F068);
  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DD38D000, v7, v8, "ContactResolverCache::refresh - Attempting to find meCard", v9, 2u);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
  }

  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  if (qword_1EE1660F0 != -1)
  {
    swift_once();
  }

  v12 = (*(v11 + 16))(qword_1EE16F080, v10, v11);
  swift_beginAccess();
  v13 = *(a1 + 16);
  *(a1 + 16) = v12;

  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();
  if (os_log_type_enabled(v14, v15))
  {
    if (v12)
    {
      v16 = "ContactResolverCache::refresh - Found meCard!";
    }

    else
    {
      v16 = "ContactResolverCache::refresh - Unable to find meCard!";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DD38D000, v14, v15, v16, v17, 2u);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
  }

  dispatch_group_leave(a3);
}

void sub_1DD44EF88(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 56))(v5, v6);
  OUTLINED_FUNCTION_100(a1 + 16, v8);
  *(a1 + 16) = v7;

  dispatch_group_leave(a3);
}

void sub_1DD44F018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v9 = type metadata accessor for StringTokenizer(0);
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = (v12 - v11);
  v14 = swift_projectBox();
  v15 = sub_1DD44CB74(v13, a4);
  v17 = v16;
  v19 = v18;
  OUTLINED_FUNCTION_100(v14, v23);
  sub_1DD44FECC(v13, v14);
  OUTLINED_FUNCTION_100(a2 + 16, v22);
  v20 = *(a2 + 16);
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  sub_1DD44FF30(v20);
  OUTLINED_FUNCTION_100(a3 + 16, v21);
  *(a3 + 16) = v19;

  dispatch_group_leave(a5);
}

uint64_t sub_1DD44F114()
{
  if (qword_1EE165270 != -1)
  {
    swift_once();
  }

  sub_1DD5FF92C();
}

uint64_t sub_1DD44F1A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for ContactResolverCache(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_1DD390754(v4, &qword_1ECCDC700, &qword_1DD64AE00);
  }

  sub_1DD41B520(v4, v7);
  v9 = &v7[*(v5 + 32)];
  v10 = *(v9 + 3);
  v11 = *(v9 + 4);
  __swift_project_boxed_opaque_existential_1(v9, v10);
  if (qword_1EE1660F0 != -1)
  {
    swift_once();
  }

  v12 = (*(v11 + 16))(qword_1EE16F080, v10, v11);
  sub_1DD390754(a1, &qword_1ECCDC700, &qword_1DD64AE00);
  v13 = *(v5 + 44);

  *&v7[v13] = v12;
  sub_1DD44FF80();
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v14 = sub_1DD63F9F8();
  __swift_project_value_buffer(v14, qword_1EE16F068);
  v15 = sub_1DD63F9D8();
  v16 = sub_1DD640368();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DD38D000, v15, v16, "updated ContactResolverCache meCard", v17, 2u);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
  }

  return sub_1DD4501D4(v7, type metadata accessor for ContactResolverCache);
}

uint64_t sub_1DD44F5CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD63C888();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1DD63C878();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD44F6C0(uint64_t a1, uint64_t a2)
{
  if (qword_1EE165270 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);

  sub_1DD5FF92C();
}

uint64_t sub_1DD44F774(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for ContactResolverCache(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1DD390754(v6, &qword_1ECCDC700, &qword_1DD64AE00);
  }

  sub_1DD390754(a1, &qword_1ECCDC700, &qword_1DD64AE00);
  sub_1DD41B520(v6, v9);
  v11 = [a2 entries];
  sub_1DD39638C(0, &qword_1EE1638B0, 0x1E695CE98);
  v12 = sub_1DD640118();

  v13 = sub_1DD4E7C30(v12);

  v14 = *(v7 + 52);

  *&v9[v14] = v13;
  sub_1DD44FF80();
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD63F9F8();
  __swift_project_value_buffer(v15, qword_1EE16F068);
  v16 = sub_1DD63F9D8();
  v17 = sub_1DD640368();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1DD38D000, v16, v17, "updated ContactResolverCache favoriteHandleValues", v18, 2u);
    MEMORY[0x1E12B3DA0](v18, -1, -1);
  }

  return sub_1DD4501D4(v9, type metadata accessor for ContactResolverCache);
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1DD44FA38()
{
  result = qword_1EE1638E0;
  if (!qword_1EE1638E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1638E0);
  }

  return result;
}

uint64_t sub_1DD44FA9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC250, &qword_1DD645B10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD44FB0C(void *a1)
{
  v2 = [a1 stringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

void sub_1DD44FC08()
{
  v1 = sub_1DD63F308();
  OUTLINED_FUNCTION_51(v1);
  OUTLINED_FUNCTION_21_9();
  v4 = *(v0 + v3);

  sub_1DD44D708(v0 + v2, v4);
}

void sub_1DD44FC84()
{
  v1 = sub_1DD63D168();
  OUTLINED_FUNCTION_51(v1);
  OUTLINED_FUNCTION_21_9();
  v3 = *(v0 + 16);
  v5 = *(v0 + v4);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  sub_1DD44D7E8(v3, v6, v7, v0 + v2, v5);
}

uint64_t objectdestroy_51Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  OUTLINED_FUNCTION_23_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_27Tm()
{

  v1 = OUTLINED_FUNCTION_20();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD44FE20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD3B5438;

  return sub_1DD44C19C();
}

uint64_t sub_1DD44FECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringTokenizer(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD44FF30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD44FF80()
{
  OUTLINED_FUNCTION_18_7();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_15_0();
  v3(v2);
  return v0;
}

uint64_t sub_1DD45003C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_6_9();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

void sub_1DD45015C()
{
  v1 = sub_1DD63D168();
  OUTLINED_FUNCTION_51(v1);
  OUTLINED_FUNCTION_21_9();
  sub_1DD44F018(v0[2], v0[3], v0[4], v0 + v3, *(v0 + v2));
}

uint64_t sub_1DD4501D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13)
{
  v16 = (v13 + *(v14 + 108));
  v17 = v16[1];
  a11 = *v16;
  a12 = v17;
  a13 = v16[2];
  *(&a13 + 9) = *(v16 + 41);

  return sub_1DD44FFD8(&a11);
}

double OUTLINED_FUNCTION_12_17()
{

  swift_beginAccess();
  return result;
}

void OUTLINED_FUNCTION_14_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  *v11 = a11;
  *(v11 + 8) = a9;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  *(v11 + 48) = v16;
}

void *OUTLINED_FUNCTION_35_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1DD59B690(a1, a2 | 0x8000000000000000, v2);
}

BOOL sub_1DD450388()
{
  OUTLINED_FUNCTION_20_9();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

void sub_1DD450430(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1DD3CC020();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E12B2C10](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_1DD450524()
{
  OUTLINED_FUNCTION_20_9();
  v3 = (v2 + 32);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    memcpy(__dst, v3, sizeof(__dst));
    memcpy(__src, v3, sizeof(__src));
    sub_1DD3E6404(__dst, v8);
    v5 = v1(__src);
    if (v0)
    {
      memcpy(v8, __src, sizeof(v8));
      sub_1DD3E6460(v8);
      return v4 != 0;
    }

    v6 = v5;
    v3 += 80;
    memcpy(v8, __src, sizeof(v8));
    sub_1DD3E6460(v8);
  }

  while ((v6 & 1) == 0);
  return v4 != 0;
}

BOOL sub_1DD450638(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_1DD450728()
{
  OUTLINED_FUNCTION_20_9();
  v3 = (v2 + 72);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v6 = *(v3 - 2);
    v7 = *(v3 - 1);
    v8 = *(v3 - 4);
    v9 = *(v3 - 3);
    v13[0] = *(v3 - 40);
    v14 = v8;
    v15 = v9;
    v16 = v6;
    v17 = v7;
    v18 = v5;

    v10 = v1(v13);
    if (v0)
    {

      return v4 != 0;
    }

    v11 = v10;
    v3 += 6;
  }

  while ((v11 & 1) == 0);
  return v4 != 0;
}

BOOL sub_1DD450800()
{
  OUTLINED_FUNCTION_20_9();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v10 = *v4;

    v7 = v1(&v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;

    ++v4;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1DD4508D8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *((a4)(0, a2) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1DD4509C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1DD450A18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1DD450A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = 1;
  switch(*v3)
  {
    case 1:
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_28_5();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_38_6();
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_23_11();
LABEL_5:
      v6 = sub_1DD640CD8();

      if (v6)
      {
        return v5 & 1;
      }

      OUTLINED_FUNCTION_28_5();
      switch(v4)
      {
        case 2:
          goto LABEL_9;
        case 3:
          OUTLINED_FUNCTION_38_6();
          goto LABEL_9;
        case 4:
          OUTLINED_FUNCTION_23_11();
LABEL_9:
          v5 = sub_1DD640CD8();
          break;
        default:
          break;
      }

LABEL_10:

      return v5 & 1;
    default:
      goto LABEL_10;
  }
}

void sub_1DD450B90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_58_4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (qword_1EE165FB0 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v8 = sub_1DD63F9F8();
  __swift_project_value_buffer(v8, qword_1EE16F068);
  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640378();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_9();
    *v11 = 0;
    _os_log_impl(&dword_1DD38D000, v9, v10, "do not use the deprecated ContactResolverConfig initializer!", v11, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4511A4();
  v13 = *(v5 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  v12 = *(v5 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent + 8);

  *(v7 + 40) = v13;
  *(v7 + 48) = v12;
  v44 = v5;
  v14 = *(v5 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v43 = v3;
    v45 = MEMORY[0x1E69E7CC0];

    sub_1DD42A2D4(0, v15, 0, v17, v18, v19, v20);
    v16 = v45;
    v21 = (v14 + 40);
    do
    {
      v22 = *(v21 - 1);
      v5 = *v21;
      v23 = *(v45 + 16);
      v24 = *(v45 + 24);

      if (v23 >= v24 >> 1)
      {
        sub_1DD42A2D4(v24 > 1, v23 + 1, 1, v25, v26, v27, v28);
      }

      *(v45 + 16) = v23 + 1;
      v29 = v45 + 16 * v23;
      *(v29 + 32) = v22;
      *(v29 + 40) = v5;
      v21 += 3;
      --v15;
    }

    while (v15);

    v3 = v43;
  }

  v30 = type metadata accessor for ContactResolverConfig(0);
  v31 = v30[11];

  *(v7 + v31) = v16;
  v32 = *(v16 + 16);
  if (v32)
  {
    v33 = (v16 + 40);
    v34 = -v32;
    v35 = -1;
    do
    {
      v36 = v34 + v35 != -1;
      if (v34 + v35 == -1)
      {
        break;
      }

      if (++v35 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v37 = v33 + 2;
      v39 = *(v33 - 1);
      v38 = *v33;

      v5 = sub_1DD41B6C8(v39, v38);

      v33 = v37;
    }

    while ((v5 & 1) == 0);
  }

  else
  {
    v36 = 1;
  }

  *(v7 + v30[12]) = v36;
  v40 = 5;
  if (*(v44 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain) == 1)
  {
    v40 = 1;
  }

  if (*(v44 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain))
  {
    v41 = v40;
  }

  else
  {
    v41 = 4;
  }

  *(v7 + v30[13]) = v41;
  v42 = *(v3 + 17);

  *(v7 + v30[14]) = v42;
  OUTLINED_FUNCTION_57_7();
}

uint64_t sub_1DD450E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_58_4();
  v5 = v4;
  v28 = *v3;
  v7 = *(v3 + 3);
  v6 = *(v3 + 4);
  v8 = *(v3 + 2);
  v9 = *(v3 + 6);
  v26 = *(v3 + 5);
  v27 = *(v3 + 1);
  v10 = type metadata accessor for ContactResolverConfig(0);
  v11 = v10[8];
  v12 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v13 = v12[8];
  sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  (*(v14 + 16))(v5 + v13, &v3[v11]);
  v15 = v3[v10[9]];
  v16 = *&v3[v10[11]];
  v17 = v3[v10[12]];
  v18 = *&v3[v10[13]];
  v19 = v3[v10[14]];
  v20 = &v3[v10[17]];
  v21 = *v20;
  v22 = v20[1];
  *v5 = v28;
  *(v5 + 8) = v7;
  *(v5 + 16) = v6;
  *(v5 + 24) = v27;
  *(v5 + 32) = v8;
  *(v5 + 40) = v26;
  *(v5 + 48) = v9;
  *(v5 + v12[9]) = v15;
  *(v5 + v12[10]) = v16;
  *(v5 + v12[11]) = v17;
  *(v5 + v12[12]) = v18;
  *(v5 + v12[13]) = v19;
  v23 = (v5 + v12[14]);
  *v23 = v21;
  v23[1] = v22;

  OUTLINED_FUNCTION_57_7();
}

uint64_t ContactResolverConfig.requestId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ContactResolverConfig.requestId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ContactResolverConfig.supportGondola.setter(char a1)
{
  result = type metadata accessor for ContactResolverConfig(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t ContactResolverConfig.presentAllValidHandlesInDisambiguation.setter(char a1)
{
  result = type metadata accessor for ContactResolverConfig(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

void sub_1DD4511A4()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = sub_1DD63F728();
  OUTLINED_FUNCTION_0();
  v26 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD68, &qword_1DD64B880);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_4();
  *v2 = 4;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0xE000000000000000;
  v10 = type metadata accessor for ContactResolverConfig(0);
  *(v2 + v10[9]) = 1;
  *(v2 + v10[10]) = 0;
  *(v2 + v10[11]) = MEMORY[0x1E69E7CC0];
  *(v2 + v10[12]) = 1;
  *(v2 + v10[13]) = 5;
  *(v2 + v10[14]) = 2;
  *(v2 + v10[15]) = 512;
  v11 = (v2 + v10[16]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v2 + v10[17]);
  v13 = AFCurrentUserInterfaceIdiom();
  v14 = sub_1DD63FDD8();
  v16 = v15;

  *v12 = v14;
  v12[1] = v16;
  *(v2 + v10[18]) = 0;
  *(v2 + v10[19]) = 0;
  v17 = (v2 + v10[20]);
  *v17 = 0;
  v17[1] = 0;
  *(v2 + v10[21]) = 1;
  *(v2 + v10[22]) = 0;
  sub_1DD63F488();
  if (sub_1DD63F468())
  {
    sub_1DD63F448();
    sub_1DD63F758();

    if (__swift_getEnumTagSinglePayload(v0, 1, v3))
    {
      sub_1DD4559C8(v0);
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    else
    {
      (*(v26 + 16))(v8, v0, v3);
      sub_1DD4559C8(v0);
      v20 = sub_1DD63F718();
      v22 = v21;
      (*(v26 + 8))(v8, v3);
      if (v22)
      {
        v18 = v20;
      }

      else
      {
        v18 = 0;
      }

      v19 = 0xE000000000000000;
      if (v22)
      {
        v19 = v22;
      }
    }

    *(v2 + 24) = v18;
    *(v2 + 32) = v19;
    sub_1DD63F448();
    v23 = sub_1DD63F738();
    v25 = v24;

    *(v2 + 8) = v23;
    *(v2 + 16) = v25;
    sub_1DD63F458();
    sub_1DD63F498();
  }

  else
  {
    *(v2 + 24) = 0;
    *(v2 + 32) = 0xE000000000000000;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    sub_1DD63D158();
  }

  OUTLINED_FUNCTION_17();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:commsHasForcePrompted:crrCommsAppSelectionJointId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_5_24(v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_11_17();
  if (v42)
  {

    *(v30 + 24) = v34;
    *(v30 + 32) = v32;
  }

  else
  {
  }

  OUTLINED_FUNCTION_37_9();
  sub_1DD63D158();
  OUTLINED_FUNCTION_1_31(&qword_1EE1637F8);
  OUTLINED_FUNCTION_35_8();
  sub_1DD63FD98();
  v43 = OUTLINED_FUNCTION_30_8();
  v44(v43);
  if ((v34 & 1) == 0)
  {
    v45 = type metadata accessor for ContactResolverConfig(0);
    v46 = OUTLINED_FUNCTION_54_5(v45);
    v47(v46);
  }

  OUTLINED_FUNCTION_67_1();
  v48 = OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_52_5();
  if (OUTLINED_FUNCTION_4_20(v49, v50))
  {
    OUTLINED_FUNCTION_18_9();
    v51 = swift_allocObject();
    v52 = OUTLINED_FUNCTION_18_14(v51);
  }

  else
  {
    OUTLINED_FUNCTION_51_6();
  }

  v53 = (v30 + v48[16]);
  v55 = *v53;
  v54 = v53[1];
  v56 = OUTLINED_FUNCTION_13_15(v52);
  sub_1DD39E698(v56, v54);
  OUTLINED_FUNCTION_63_1();

  *(v53 + v30) = v31;
  if (*(v31 + 16))
  {
    OUTLINED_FUNCTION_50_8();
    v57 = -1;
    do
    {
      v58 = v55 + v57 != -1;
      if (v55 + v57 == -1)
      {
        break;
      }

      if (++v57 >= *(v31 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_29_6();
      OUTLINED_FUNCTION_65_3();
      OUTLINED_FUNCTION_66_2();
    }

    while ((v33 & 1) == 0);
  }

  else
  {
    v58 = 1;
  }

  v59 = OUTLINED_FUNCTION_41_5();
  v60(v59);
  *(v30 + v48[12]) = v58;
  *(v30 + v48[18]) = a27 & 1;
  *(v30 + v48[19]) = a28 & 1;
  v61 = (v30 + v48[20]);

  *v61 = a29;
  v61[1] = a30;
  OUTLINED_FUNCTION_17();
}

double sub_1DD4516B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1DD4516C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  OUTLINED_FUNCTION_18_4();
  v59 = OUTLINED_FUNCTION_5_24(v32, v33, v34, v35, v36, v37);
  OUTLINED_FUNCTION_0();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_11_17();
  if (v41)
  {

    *(v27 + 24) = v31;
    *(v27 + 32) = v29;
  }

  else
  {
  }

  OUTLINED_FUNCTION_37_9();
  sub_1DD63D158();
  OUTLINED_FUNCTION_1_31(&qword_1EE1637F8);
  OUTLINED_FUNCTION_35_8();
  sub_1DD63FD98();
  v42 = OUTLINED_FUNCTION_31_10();
  v43(v42);
  if ((v31 & 1) == 0)
  {
    v44 = type metadata accessor for ContactResolverConfig(0);
    (*(v39 + 24))(v27 + *(v44 + 32), v58, v59);
  }

  OUTLINED_FUNCTION_67_1();
  v45 = OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_52_5();
  if (OUTLINED_FUNCTION_4_20(v46, v47))
  {
    OUTLINED_FUNCTION_18_9();
    v48 = swift_allocObject();
    v49 = OUTLINED_FUNCTION_18_14(v48);
  }

  else
  {
    OUTLINED_FUNCTION_51_6();
  }

  v50 = (v27 + v45[16]);
  v52 = *v50;
  v51 = v50[1];
  v53 = OUTLINED_FUNCTION_13_15(v49);
  sub_1DD39E698(v53, v51);
  OUTLINED_FUNCTION_61_5();

  *(v50 + v27) = v28;
  if (*(v28 + 16))
  {
    OUTLINED_FUNCTION_50_8();
    v54 = -1;
    do
    {
      v55 = v52 + v54 != -1;
      if (v52 + v54 == -1)
      {
        break;
      }

      if (++v54 >= *(v28 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_29_6();
      OUTLINED_FUNCTION_65_3();
      OUTLINED_FUNCTION_66_2();
    }

    while ((v30 & 1) == 0);
  }

  else
  {
    v55 = 1;
  }

  v56 = OUTLINED_FUNCTION_41_5();
  v57(v56);
  *(v27 + v45[12]) = v55;
  *(v27 + v45[18]) = a27 & 1;
  OUTLINED_FUNCTION_17();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:commsHasForcePrompted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_5_24(v32, v33, v34, v35, v36, v37);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_11_17();
  if (v39)
  {

    *(v27 + 24) = v31;
    *(v27 + 32) = v29;
  }

  else
  {
  }

  OUTLINED_FUNCTION_37_9();
  sub_1DD63D158();
  OUTLINED_FUNCTION_1_31(&qword_1EE1637F8);
  OUTLINED_FUNCTION_35_8();
  sub_1DD63FD98();
  v40 = OUTLINED_FUNCTION_30_8();
  v41(v40);
  if ((v31 & 1) == 0)
  {
    v42 = type metadata accessor for ContactResolverConfig(0);
    v43 = OUTLINED_FUNCTION_54_5(v42);
    v44(v43);
  }

  OUTLINED_FUNCTION_67_1();
  v45 = OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_52_5();
  if (OUTLINED_FUNCTION_4_20(v46, v47))
  {
    OUTLINED_FUNCTION_18_9();
    v48 = swift_allocObject();
    v49 = OUTLINED_FUNCTION_18_14(v48);
  }

  else
  {
    OUTLINED_FUNCTION_51_6();
  }

  v50 = (v27 + v45[16]);
  v52 = *v50;
  v51 = v50[1];
  v53 = OUTLINED_FUNCTION_13_15(v49);
  sub_1DD39E698(v53, v51);
  OUTLINED_FUNCTION_63_1();

  *(v50 + v27) = v28;
  if (*(v28 + 16))
  {
    OUTLINED_FUNCTION_50_8();
    v54 = -1;
    do
    {
      v55 = v52 + v54 != -1;
      if (v52 + v54 == -1)
      {
        break;
      }

      if (++v54 >= *(v28 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_29_6();
      OUTLINED_FUNCTION_65_3();
      OUTLINED_FUNCTION_66_2();
    }

    while ((v30 & 1) == 0);
  }

  else
  {
    v55 = 1;
  }

  v56 = OUTLINED_FUNCTION_41_5();
  v57(v56);
  *(v27 + v45[12]) = v55;
  *(v27 + v45[18]) = 0;
  *(v27 + v45[19]) = a27 & 1;
  OUTLINED_FUNCTION_17();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:commsHasForcePrompted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, __int16 *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char a28)
{
  OUTLINED_FUNCTION_18_4();
  v30 = v29;
  LODWORD(v85) = v31;
  v33 = v32;
  v83 = v34;
  v84 = v35;
  v37 = v36;
  v39 = v38;
  v82 = v40;
  v41 = type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_53_4();
  sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v79 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v50 = *a21;
  v51 = *a23;
  v52 = *(v44 + 16);
  v86 = &v79 - v54;
  v87 = v53;
  v81 = v33;
  v52(v49);
  sub_1DD4511A4();
  v55 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v55 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v55)
  {

    *(v28 + 3) = v39;
    *(v28 + 4) = v37;
  }

  else
  {
  }

  OUTLINED_FUNCTION_37_9();
  sub_1DD63D158();
  OUTLINED_FUNCTION_1_31(&qword_1EE1637F8);
  v56 = v87;
  v57 = sub_1DD63FD98();
  v80 = *(v44 + 8);
  v80(v47, v56);
  if ((v57 & 1) == 0)
  {
    (*(v44 + 24))(&v28[v41[8]], v86, v87);
  }

  v58 = v84;
  *(v28 + 5) = v83;
  *(v28 + 6) = v58;
  OUTLINED_FUNCTION_52_5();
  v28[v59] = v60;
  *&v28[v41[13]] = v50;
  *&v28[v41[15]] = v51;
  v61 = v88;
  if (v88)
  {
    OUTLINED_FUNCTION_18_9();
    v62 = swift_allocObject();
    v61 = v88;
    *(v62 + 16) = v88;
    *(v62 + 24) = a26;
    v63 = sub_1DD455C18;
  }

  else
  {
    v63 = 0;
    v62 = 0;
  }

  v64 = &v28[v41[16]];
  v65 = *(v64 + 1);
  v66 = OUTLINED_FUNCTION_13_15(v61);
  sub_1DD39E698(v66, v65);
  *v64 = v63;
  *(v64 + 1) = v62;
  v67 = v41[11];

  *&v28[v67] = v30;
  v68 = *(v30 + 16);
  if (v68)
  {
    v69 = (v30 + 40);
    v70 = -v68;
    v71 = -1;
    do
    {
      v72 = v70 + v71 != -1;
      if (v70 + v71 == -1)
      {
        break;
      }

      if (++v71 >= *(v30 + 16))
      {
        __break(1u);
        return;
      }

      v73 = v69 + 2;
      v75 = *(v69 - 1);
      v74 = *v69;

      LOBYTE(v75) = sub_1DD41B6C8(v75, v74);

      v69 = v73;
    }

    while ((v75 & 1) == 0);
  }

  else
  {
    v72 = 1;
  }

  sub_1DD39E698(v88, v85);
  v76 = v80;
  v77 = v87;
  v80(v81, v87);
  v76(v86, v77);
  v28[v41[12]] = v72;
  v28[v41[18]] = a27 & 1;
  v78 = v82;
  sub_1DD451E8C(v28, v82);
  *(v78 + v41[19]) = a28 & 1;
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD451E8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_18_4();
  v22 = v21;
  v52 = v23;
  v49 = v24;
  v50 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v51 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_11_17();
  if (v35)
  {

    *(v31 + 3) = v29;
    *(v31 + 4) = v27;
  }

  else
  {
  }

  OUTLINED_FUNCTION_37_9();
  sub_1DD63D158();
  OUTLINED_FUNCTION_1_31(&qword_1EE1637F8);
  sub_1DD63FD98();
  v36 = OUTLINED_FUNCTION_31_10();
  v37(v36);
  if ((v29 & 1) == 0)
  {
    v38 = type metadata accessor for ContactResolverConfig(0);
    (*(v33 + 24))(&v31[*(v38 + 32)], v52, v51);
  }

  OUTLINED_FUNCTION_67_1();
  *(v31 + 5) = v49;
  *(v31 + 6) = v50;
  v39 = type metadata accessor for ContactResolverConfig(0);
  if (OUTLINED_FUNCTION_4_20(v39, v39[9]))
  {
    OUTLINED_FUNCTION_18_9();
    v40 = swift_allocObject();
    v41 = OUTLINED_FUNCTION_18_14(v40);
  }

  else
  {
    OUTLINED_FUNCTION_51_6();
  }

  v42 = &v31[v39[16]];
  v44 = *v42;
  v43 = *(v42 + 1);
  v45 = OUTLINED_FUNCTION_13_15(v41);
  sub_1DD39E698(v45, v43);
  OUTLINED_FUNCTION_61_5();

  *&v42[v31] = v22;
  if (*(v22 + 16))
  {
    OUTLINED_FUNCTION_50_8();
    v46 = -1;
    do
    {
      v47 = v44 + v46 != -1;
      if (v44 + v46 == -1)
      {
        break;
      }

      if (++v46 >= *(v22 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_29_6();
      OUTLINED_FUNCTION_65_3();
      OUTLINED_FUNCTION_66_2();
    }

    while ((a21 & 1) == 0);
  }

  else
  {
    v47 = 1;
  }

  sub_1DD39E698(v53, v50);
  v48(v52, v51);
  v31[v39[12]] = v47;
  v31[v39[18]] = 0;
  OUTLINED_FUNCTION_17();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:includeResolutionSignals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_24_8();
  sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  (*(v33 + 8))(v29);
  if (qword_1EE165FB0 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v34 = sub_1DD63F9F8();
  __swift_project_value_buffer(v34, qword_1EE16F068);
  v35 = sub_1DD63F9D8();
  v36 = sub_1DD640378();
  if (os_log_type_enabled(v35, v36))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_62_4(&dword_1DD38D000, v37, v38, "do not use the deprecated ContactResolverConfig initializer!");
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4511A4();

  *(v28 + 40) = v32;
  *(v28 + 48) = v31;
  v39 = type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_25_7(v39);
  if (a26)
  {
    OUTLINED_FUNCTION_18_9();
    v40 = swift_allocObject();
    *(v40 + 16) = a26;
    *(v40 + 24) = a27;
    v32 = sub_1DD455C18;
  }

  else
  {
    v32 = 0;
  }

  OUTLINED_FUNCTION_22_8();

  *(v28 + v32) = v30;
  v41 = *(v30 + 16);
  if (v41)
  {
    v42 = (v30 + 40);
    v43 = -v41;
    v44 = -1;
    do
    {
      v45 = v43 + v44 != -1;
      if (v43 + v44 == -1)
      {
        break;
      }

      if (++v44 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v46 = v42 + 2;
      v48 = *(v42 - 1);
      v47 = *v42;

      v32 = sub_1DD41B6C8(v48, v47);

      v42 = v46;
    }

    while ((v32 & 1) == 0);
  }

  else
  {
    v45 = 1;
  }

  sub_1DD39E698(a10, a27);
  *(v28 + *(v31 + 48)) = v45;
  *(v28 + *(v31 + 72)) = a28 & 1;
  OUTLINED_FUNCTION_100_0();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_24_8();
  sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  (*(v32 + 8))(v28);
  if (qword_1EE165FB0 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v33 = sub_1DD63F9F8();
  __swift_project_value_buffer(v33, qword_1EE16F068);
  v34 = sub_1DD63F9D8();
  v35 = sub_1DD640378();
  if (os_log_type_enabled(v34, v35))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_62_4(&dword_1DD38D000, v36, v37, "do not use the deprecated ContactResolverConfig initializer!");
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4511A4();

  *(v27 + 40) = v31;
  *(v27 + 48) = v30;
  v38 = type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_25_7(v38);
  if (a26)
  {
    OUTLINED_FUNCTION_18_9();
    v39 = swift_allocObject();
    *(v39 + 16) = a26;
    *(v39 + 24) = a27;
    v31 = sub_1DD455C18;
  }

  else
  {
    v31 = 0;
  }

  OUTLINED_FUNCTION_22_8();

  *(v27 + v31) = v29;
  v40 = *(v29 + 16);
  if (v40)
  {
    v41 = (v29 + 40);
    v42 = -v40;
    v43 = -1;
    do
    {
      v44 = v42 + v43 != -1;
      if (v42 + v43 == -1)
      {
        break;
      }

      if (++v43 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v45 = v41 + 2;
      v47 = *(v41 - 1);
      v46 = *v41;

      v31 = sub_1DD41B6C8(v47, v46);

      v41 = v45;
    }

    while ((v31 & 1) == 0);
  }

  else
  {
    v44 = 1;
  }

  sub_1DD39E698(a10, a27);
  *(v27 + *(v30 + 48)) = v44;
  *(v27 + *(v30 + 72)) = 0;
  OUTLINED_FUNCTION_100_0();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:searchFirstPartyContacts:bundleIdsForThirdPartyContactSearch:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:includeResolutionSignals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  OUTLINED_FUNCTION_101_0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  (*(v41 + 8))(v34);
  v42 = *a24;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v43 = a27;
  v44 = a23;
  v45 = sub_1DD63F9F8();
  __swift_project_value_buffer(v45, qword_1EE16F068);
  v46 = sub_1DD63F9D8();
  v47 = sub_1DD640378();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_9();
    *v48 = 0;
    _os_log_impl(&dword_1DD38D000, v46, v47, "do not use the deprecated ContactResolverConfig initializer!", v48, 2u);
    v44 = a23;
    v43 = a27;
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4511A4();

  *(v40 + 40) = v38;
  *(v40 + 48) = v36;
  v49 = type metadata accessor for ContactResolverConfig(0);
  *(v40 + v49[9]) = v32 & 1;
  v50 = v49[11];

  *(v40 + v50) = v44;
  *(v40 + v49[12]) = v30 & 1;
  *(v40 + v49[13]) = v42;
  if (v43)
  {
    OUTLINED_FUNCTION_18_9();
    v51 = swift_allocObject();
    *(v51 + 16) = v43;
    *(v51 + 24) = a28;
    v52 = sub_1DD455C18;
  }

  else
  {
    v52 = 0;
    v51 = 0;
  }

  v53 = (v40 + v49[16]);
  sub_1DD39E698(*v53, v53[1]);
  *v53 = v52;
  v53[1] = v51;
  *(v40 + v49[18]) = a29 & 1;
  OUTLINED_FUNCTION_100_0();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:searchFirstPartyContacts:bundleIdsForThirdPartyContactSearch:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26, uint64_t a27, uint64_t a28, uint64_t (*a29)@<X0>(void *@<X0>, uint64_t *@<X8>), uint64_t a30)
{
  OUTLINED_FUNCTION_58_4();
  v57 = v30;
  v55 = v31;
  v54 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v56 = *a26;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v43 = a29;
  v44 = sub_1DD63F9F8();
  __swift_project_value_buffer(v44, qword_1EE16F068);
  v45 = sub_1DD63F9D8();
  v46 = sub_1DD640378();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_9();
    *v47 = 0;
    _os_log_impl(&dword_1DD38D000, v45, v46, "do not use the deprecated ContactResolverConfig initializer!", v47, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4511A4();

  *(v42 + 3) = v40;
  *(v42 + 4) = v38;

  *(v42 + 5) = v36;
  *(v42 + 6) = v34;
  v48 = type metadata accessor for ContactResolverConfig(0);
  v49 = v48[8];
  sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  (*(v50 + 40))(&v42[v49], v54);
  v42[v48[9]] = v55 & 1;
  v51 = v48[11];

  *&v42[v51] = a25;
  v42[v48[12]] = v57 & 1;
  *&v42[v48[13]] = v56;
  if (a29)
  {
    OUTLINED_FUNCTION_18_9();
    v52 = swift_allocObject();
    *(v52 + 16) = a29;
    *(v52 + 24) = a30;
    v43 = sub_1DD455C18;
  }

  else
  {
    v52 = 0;
  }

  v53 = &v42[v48[16]];
  sub_1DD39E698(*v53, v53[1]);
  *v53 = v43;
  v53[1] = v52;
  v42[v48[18]] = 0;
  OUTLINED_FUNCTION_57_7();
}

uint64_t static ContactResolverConfig.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((OUTLINED_FUNCTION_60_4(a1, a2) & 1) == 0)
  {
    goto LABEL_45;
  }

  v5 = v3[2];
  v6 = v2[2];
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_45;
    }

    v7 = v3[1] == v2[1] && v5 == v6;
    if (!v7 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v6)
  {
    goto LABEL_45;
  }

  v8 = v3[3] == v2[3] && v3[4] == v2[4];
  if (!v8 && (sub_1DD640CD8() & 1) == 0)
  {
    goto LABEL_45;
  }

  v9 = v3[5] == v2[5] && v3[6] == v2[6];
  if (!v9 && (sub_1DD640CD8() & 1) == 0)
  {
    goto LABEL_45;
  }

  type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_59_3();
  if ((v10 & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_6_21();
  if (!v7)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_6_21();
  if (!v7)
  {
    goto LABEL_45;
  }

  sub_1DD3C3778();
  if ((v11 & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_6_21();
  if (!v7 || *(v3 + v4[13]) != *(v2 + v4[13]) || (sub_1DD3AF2D8(*(v3 + v4[14]), *(v2 + v4[14])) & 1) == 0)
  {
    goto LABEL_45;
  }

  v12 = v4[15];
  v13 = *(v3 + v12);
  v14 = *(v2 + v12);
  v15 = *(v3 + v12);
  v16 = *(v2 + v12);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_45;
    }

LABEL_37:
    OUTLINED_FUNCTION_45_4(v4[17]);
    v21 = v7 && v19 == v20;
    if (!v21 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_6_21();
    if (!v7)
    {
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_6_21();
    if (!v7)
    {
      goto LABEL_45;
    }

    v23 = v4[20];
    v24 = (v3 + v23);
    v25 = *(v3 + v23 + 8);
    v26 = (v2 + v23);
    v27 = v26[1];
    if (v25)
    {
      if (!v27)
      {
        goto LABEL_45;
      }

      v28 = *v24 == *v26 && v25 == v27;
      if (!v28 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_56:
      OUTLINED_FUNCTION_6_21();
      if (v7)
      {
        v17 = *(v3 + v4[22]) ^ *(v2 + v4[22]) ^ 1;
        return v17 & 1;
      }

      goto LABEL_45;
    }

    if (!v27)
    {
      goto LABEL_56;
    }

LABEL_45:
    v17 = 0;
    return v17 & 1;
  }

  if (v16 == 2)
  {
    goto LABEL_45;
  }

  v17 = 0;
  v18 = v13 ^ v14;
  if (v18 <= 0xFF && (v18 & 1) == 0)
  {
    goto LABEL_37;
  }

  return v17 & 1;
}

uint64_t sub_1DD452B18(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((OUTLINED_FUNCTION_60_4(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v5 = v3[1] == v2[1] && v3[2] == v2[2];
  if (!v5 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v6 = v3[4];
  v7 = v2[4];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v3[3] == v2[3] && v6 == v7;
    if (!v8 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v3[5] == v2[5] && v3[6] == v2[6];
  if (!v9 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PrivatizedContactResolverConfig(0);
  OUTLINED_FUNCTION_59_3();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_21();
  if (!v5)
  {
    return 0;
  }

  sub_1DD3C3778();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_21();
  if (!v5 || *(v3 + v4[12]) != *(v2 + v4[12]) || (sub_1DD3AF2D8(*(v3 + v4[13]), *(v2 + v4[13])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_4(v4[14]);
  if (v5 && v12 == v13)
  {
    return 1;
  }

  return sub_1DD640CD8();
}

uint64_t sub_1DD452C60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463617265746E69 && a2 == 0xED000064496E6F69;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7954746E65746E69 && a2 == 0xEE00656D614E6570;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x69546E7552676F6CLL && a2 == 0xEE0061746144656DLL;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6449656C646E7562 && a2 == 0xE900000000000073;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001DD66C6A0 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x80000001DD66C6C0 == a2;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000017 && 0x80000001DD66C6E0 == a2;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000012 && 0x80000001DD66C700 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1DD640CD8();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD452FD4(char a1)
{
  result = 0x79546E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x7463617265746E69;
      break;
    case 2:
      result = 0x4974736575716572;
      break;
    case 3:
      result = 0x7954746E65746E69;
      break;
    case 4:
      result = 0x656C61636F6CLL;
      break;
    case 5:
      result = 0x69546E7552676F6CLL;
      break;
    case 6:
      result = 0x6449656C646E7562;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD453150(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD58, &qword_1DD64B878);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD455554();
  sub_1DD640EF8();
  LOBYTE(v20) = *v3;
  v21 = 0;
  sub_1DD455764();
  OUTLINED_FUNCTION_10();
  sub_1DD640C68();
  if (!v2)
  {
    OUTLINED_FUNCTION_7_18(1);
    sub_1DD640C18();
    OUTLINED_FUNCTION_7_18(2);
    sub_1DD640BC8();
    OUTLINED_FUNCTION_7_18(3);
    sub_1DD640C18();
    v11 = type metadata accessor for PrivatizedContactResolverConfig(0);
    v12 = v11[8];
    LOBYTE(v20) = 4;
    sub_1DD63D168();
    v13 = sub_1DD42A458(&qword_1EE165CB8, MEMORY[0x1E6969778]);
    OUTLINED_FUNCTION_64_3(&v3[v12], &v20, v14, v15, v13);
    LOBYTE(v20) = 5;
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    v20 = *&v3[v11[10]];
    v21 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    v16 = sub_1DD4557B8(&qword_1EE1638D0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_64_3(&v20, &v21, v17, v18, v16);
    LOBYTE(v20) = 7;
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    v20 = *&v3[v11[12]];
    v21 = 8;
    sub_1DD455824();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
    LOBYTE(v20) = v3[v11[13]];
    v21 = 9;
    sub_1DD455878();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
    OUTLINED_FUNCTION_7_18(10);
    sub_1DD640C18();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD45347C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v26 = v6;
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD50, &unk_1DD64B868);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v29 = type metadata accessor for PrivatizedContactResolverConfig(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v28 = v13 - v12;
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD455554();
  sub_1DD640ED8();
  if (!v2)
  {
    sub_1DD4555A8();
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_12_18();
    sub_1DD640B78();
    *v28 = v30;
    OUTLINED_FUNCTION_3_22(1);
    *(v28 + 8) = sub_1DD640B28();
    *(v28 + 16) = v16;
    OUTLINED_FUNCTION_3_22(2);
    *(v28 + 24) = sub_1DD640AD8();
    *(v28 + 32) = v17;
    OUTLINED_FUNCTION_3_22(3);
    *(v28 + 40) = sub_1DD640B28();
    *(v28 + 48) = v18;
    LOBYTE(v30) = 4;
    sub_1DD42A458(&qword_1EE1637F0, MEMORY[0x1E6969790]);
    OUTLINED_FUNCTION_12_18();
    sub_1DD640B78();
    (*(v26 + 32))(v28 + v29[8], v9, v27);
    OUTLINED_FUNCTION_3_22(5);
    *(v28 + v29[9]) = sub_1DD640B38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4557B8(&qword_1EE160268, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_12_18();
    sub_1DD640B78();
    *(v28 + v29[10]) = v30;
    OUTLINED_FUNCTION_3_22(7);
    *(v28 + v29[11]) = sub_1DD640B38() & 1;
    sub_1DD4555FC();
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_12_18();
    sub_1DD640B78();
    *(v28 + v29[12]) = v30;
    sub_1DD455650();
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_12_18();
    sub_1DD640B78();
    *(v28 + v29[13]) = 4;
    OUTLINED_FUNCTION_12_18();
    v19 = sub_1DD640B28();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_33_6();
    v23(v22);
    v24 = (v28 + v29[14]);
    *v24 = v19;
    v24[1] = v21;
    sub_1DD4556A4(v28, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DD455708(v28);
  }

  OUTLINED_FUNCTION_15_16();
  __swift_destroy_boxed_opaque_existential_1(a1);

  if (v14)
  {

    if (v15)
    {
      goto LABEL_9;
    }
  }

  else if (v15)
  {
LABEL_9:
    result = (*(v26 + 8))(v28 + v29[8], v27);
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  if (v9)
  {
  }

  return result;
}

uint64_t sub_1DD453ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD452C60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD453AE4(uint64_t a1)
{
  v2 = sub_1DD455554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD453B20(uint64_t a1)
{
  v2 = sub_1DD455554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactResolverDomain.description.getter()
{
  v1 = *v0;
  v2 = 0x736567617373656DLL;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x656E6F6870;
  }

  if (v1 != 4)
  {
    v2 = v3;
  }

  if (v1 == 5)
  {
    return 7105633;
  }

  else
  {
    return v2;
  }
}

SiriInference::ContactResolverDomain sub_1DD453D34@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ContactResolverDomain.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DD453D74@<X0>(uint64_t *a1@<X8>)
{
  result = ContactResolverDomain.rawValue.getter();
  *a1 = result;
  return result;
}

SiriInference::SearchSuggestedContacts_optional __swiftcall SearchSuggestedContacts.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t SearchSuggestedContacts.rawValue.getter()
{
  v1 = 28526;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7562617;
  }
}

unint64_t sub_1DD453E84@<X0>(unint64_t *a1@<X8>)
{
  result = SearchSuggestedContacts.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::RecommenderType_optional __swiftcall RecommenderType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t RecommenderType.rawValue.getter()
{
  v1 = 0x6D6D6F6365526C6DLL;
  if (*v0 != 1)
  {
    v1 = 0x6369736162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53656E4F69726973;
  }
}

uint64_t sub_1DD454050@<X0>(uint64_t *a1@<X8>)
{
  result = RecommenderType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ContactActionType.description.getter()
{
  result = 0x656D697465636166;
  switch(*v0)
  {
    case 2:
      result = 0x6C6143656E6F6870;
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    case 4:
      result = 0x6669636570736E75;
      break;
    default:
      return result;
  }

  return result;
}

SiriInference::ContactActionType_optional __swiftcall ContactActionType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DD454258@<X0>(uint64_t *a1@<X8>)
{
  result = ContactActionType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ContactHandleTypePreference.description.getter()
{
  v1 = *v0;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0x3D6570797428, 0xE600000000000000);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](0x6975716552736920, 0xEC0000003D646572);
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v2, v3);

  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DD45447C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7269757165527369 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD45454C(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x7269757165527369;
  }
}

uint64_t sub_1DD454588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD45447C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4545B0(uint64_t a1)
{
  v2 = sub_1DD454978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4545EC(uint64_t a1)
{
  v2 = sub_1DD454978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactHandleTypePreference.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCF0, &qword_1DD64AFA0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  v12 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD454978();
  sub_1DD640EF8();
  v15 = 0;
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1DD415E20();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t ContactHandleTypePreference.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD00, &qword_1DD64AFA8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD454978();
  sub_1DD640ED8();
  if (!v2)
  {
    v17 = 0;
    v11 = sub_1DD640B38();
    v15 = 1;
    sub_1DD415E74();
    sub_1DD640B78();
    (*(v7 + 8))(v10, v5);
    v13 = v16;
    *a2 = v11 & 1;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD454978()
{
  result = qword_1ECCDCCF8;
  if (!qword_1ECCDCCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCCF8);
  }

  return result;
}

unint64_t sub_1DD4549D0()
{
  result = qword_1EE165168;
  if (!qword_1EE165168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165168);
  }

  return result;
}

unint64_t sub_1DD454A28()
{
  result = qword_1ECCDCD08;
  if (!qword_1ECCDCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD08);
  }

  return result;
}

unint64_t sub_1DD454A80()
{
  result = qword_1ECCDCD10;
  if (!qword_1ECCDCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD10);
  }

  return result;
}

unint64_t sub_1DD454AD8()
{
  result = qword_1ECCDCD18;
  if (!qword_1ECCDCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD18);
  }

  return result;
}

unint64_t sub_1DD454B30()
{
  result = qword_1ECCDCD20;
  if (!qword_1ECCDCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD20);
  }

  return result;
}

unint64_t sub_1DD454B88()
{
  result = qword_1ECCDCD28;
  if (!qword_1ECCDCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD28);
  }

  return result;
}

unint64_t sub_1DD454BE0()
{
  result = qword_1EE162678;
  if (!qword_1EE162678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162678);
  }

  return result;
}

uint64_t sub_1DD454C5C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6158];
  sub_1DD454E04(319, &qword_1EE163958, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v5 = sub_1DD63D168();
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_1DD454E04(319, &qword_1EE1638D8, v1, MEMORY[0x1E69E62F8]);
    if (v7 > 0x3F)
    {
      return v5;
    }

    sub_1DD454E04(319, qword_1EE1611D8, &type metadata for ContactHandleTypePreference, MEMORY[0x1E69E6720]);
    if (v8 > 0x3F)
    {
      return v5;
    }

    sub_1DD454E54(319);
    if (v9 > 0x3F)
    {
      return v5;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

void sub_1DD454E04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DD454E54(uint64_t a1)
{
  if (!qword_1EE1632A8)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCD30, &qword_1DD64B5C8);
    v5 = type metadata accessor for Transparent(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EE1632A8);
    }
  }
}

_BYTE *sub_1DD454ED8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactActionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ContactHandleTypePreference(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactHandleTypePreference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1DD455250(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6158];
  sub_1DD454E04(319, &qword_1EE163958, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_1DD63D168();
    if (v3 <= 0x3F)
    {
      sub_1DD454E04(319, &qword_1EE1638D8, v1, MEMORY[0x1E69E62F8]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ContactHandleTypePreference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD455450()
{
  result = qword_1ECCDCD38;
  if (!qword_1ECCDCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD38);
  }

  return result;
}

unint64_t sub_1DD4554A8()
{
  result = qword_1ECCDCD40;
  if (!qword_1ECCDCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD40);
  }

  return result;
}

unint64_t sub_1DD455500()
{
  result = qword_1ECCDCD48;
  if (!qword_1ECCDCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD48);
  }

  return result;
}

unint64_t sub_1DD455554()
{
  result = qword_1EE163CE0;
  if (!qword_1EE163CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CE0);
  }

  return result;
}
double sub_1BA423A04(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1BA4A3EA8();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v10);
  v101 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v96 - v14;
  if (sub_1BA424654(a1))
  {
    v16 = v4;
    sub_1BA4A3D88();
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FC8();
    v19 = os_log_type_enabled(v17, v18);
    v106 = v2;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v111[0] = v21;
      *v20 = 136446210;
      *&v107 = v16;
      swift_getMetatypeMetadata();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v111);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%{public}s] No apps to list; displaying a None cell", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v99 + 8))(v15, v100);
    sub_1B9FF6758();
    inited = swift_initStackObject();
    v105 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F1B378(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    *(v26 + 16) = v105;
    if (qword_1EBBE8998 != -1)
    {
      swift_once();
    }

    v28 = qword_1EBBF2770;
    v27 = *algn_1EBBF2778;
    v29 = type metadata accessor for EmptyIconSourcesItem();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v31 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

    v32 = [v31 init];
    *(v30 + 40) = v27;
    *(v30 + 48) = v32;
    *(v30 + 32) = v28;
    *(v30 + 56) = 0;
    *(v26 + 56) = v29;
    *(v26 + 64) = sub_1BA4261F4(&qword_1EBBEA740, type metadata accessor for EmptyIconSourcesItem, &protocol conformance descriptor for EmptyIconSourcesItem);
    *(v26 + 32) = v30;
    sub_1BA4A1788();
    v33 = sub_1BA4A1748();
    v35 = v34;
    (*(v6 + 8))(v9, v5);
    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

    v37 = Array<A>.identifierToIndexDict()(v36);

    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v26;
    *(inited + 56) = v37;
    *(inited + 64) = v33;
    *(inited + 72) = v35;
    sub_1BA0E7F10(inited, 1);
    swift_setDeallocating();
    sub_1B9FF7224(inited + 32);
    return result;
  }

  v39 = [a1 orderedAppSources];
  v40 = sub_1B9F0ADF8(0, &qword_1EBBE99E8, 0x1E69A44B8);
  v41 = sub_1BA4A6B08();

  v111[0] = v41;
  *&v105 = OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore;
  v42 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore) profileIdentifier];
  v43 = [v42 type];

  v44 = v41;
  v45 = a1;
  if (v43 == 3)
  {
    v46 = [a1 orderedUninstalledAppSources];
    v47 = sub_1BA4A6B08();

    sub_1B9FE2AD4(v47);
    v43 = 0;
    sub_1BA422A14(v111);
    v44 = v111[0];
  }

  v48 = v101;
  if (v44 >> 62)
  {
    v81 = v44;
    v49 = sub_1BA4A7CC8();
    v44 = v81;
    if (v49)
    {
      goto LABEL_11;
    }

LABEL_21:

    v43 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v49 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v49)
  {
    goto LABEL_21;
  }

LABEL_11:
  v50 = v44;
  v110 = MEMORY[0x1E69E7CC0];
  v51 = &v110;
  sub_1BA0671C8(0, v49 & ~(v49 >> 63), 0);
  if (v49 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v96[1] = v40;
  v97 = v45;
  v98 = v4;
  v52 = 0;
  v43 = v110;
  v53 = v50;
  v102 = v50 & 0xC000000000000001;
  v104 = v50;
  v103 = v49;
  v106 = v2;
  do
  {
    if (v102)
    {
      v54 = MEMORY[0x1BFAF2860](v52, v53);
    }

    else
    {
      v54 = *(v53 + 8 * v52 + 32);
    }

    v55 = v54;
    v56 = *(v2 + v105);
    v57 = type metadata accessor for AppSourcesItem();
    v58 = swift_allocObject();
    *(v58 + 40) = v56;
    *(v58 + 48) = v55;
    *(v58 + 32) = 0;
    v59 = v55;
    v60 = v56;
    v61 = v59;
    v62 = [v61 source];
    v63 = [v62 name];

    v64 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v66 = v65;

    *(v58 + 56) = v64;
    *(v58 + 64) = v66;
    v67 = [v61 source];
    v68 = [v67 bundleIdentifier];

    v69 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v71 = v70;

    *(v58 + 16) = v69;
    *(v58 + 24) = v71;
    v108 = v57;
    v109 = sub_1BA4261F4(&qword_1EBBEACC8, type metadata accessor for AppSourcesItem, &protocol conformance descriptor for AppSourcesItem);

    *&v107 = v58;
    v110 = v43;
    v73 = v43[2];
    v72 = v43[3];
    if (v73 >= v72 >> 1)
    {
      sub_1BA0671C8((v72 > 1), v73 + 1, 1);
    }

    ++v52;
    v74 = v108;
    v75 = v109;
    v76 = __swift_mutable_project_boxed_opaque_existential_1(&v107, v108);
    v77 = MEMORY[0x1EEE9AC00](v76, v76);
    v79 = v96 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v80 + 16))(v79, v77);
    sub_1BA42615C(v73, v79, &v110, v74, v75);
    __swift_destroy_boxed_opaque_existential_1(&v107);
    v43 = v110;
    v2 = v106;
    v53 = v104;
  }

  while (v103 != v52);

  v4 = v98;
  v48 = v101;
  v45 = v97;
LABEL_22:
  v82 = [*(v2 + v105) profileIdentifier];
  v83 = [v82 type];

  if (v83 != 3)
  {
    v84 = [v45 orderedUninstalledAppSources];
    v85 = sub_1BA4A6B08();

    v50 = type metadata accessor for UninstalledAppsItem();
    swift_allocObject();
    v51 = UninstalledAppsItem.init(uninstalledAppSources:)(v85);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_24:
      v87 = v43[2];
      v86 = v43[3];
      if (v87 >= v86 >> 1)
      {
        v43 = sub_1BA27FC24((v86 > 1), v87 + 1, 1, v43);
      }

      v108 = v50;
      v109 = sub_1BA4261F4(&qword_1EBBF2780, type metadata accessor for UninstalledAppsItem, &protocol conformance descriptor for EmptyIconSourcesItem);
      *&v107 = v51;
      v43[2] = v87 + 1;
      sub_1B9F1134C(&v107, &v43[5 * v87 + 4]);
      v48 = v101;
      goto LABEL_27;
    }

LABEL_31:
    v43 = sub_1BA27FC24(0, v43[2] + 1, 1, v43);
    goto LABEL_24;
  }

LABEL_27:
  sub_1BA4A3D88();
  v88 = sub_1BA4A3E88();
  v89 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v110 = v91;
    *v90 = 136446210;
    *&v107 = v4;
    swift_getMetatypeMetadata();
    v92 = sub_1BA4A6808();
    v94 = sub_1B9F0B82C(v92, v93, &v110);

    *(v90 + 4) = v94;
    _os_log_impl(&dword_1B9F07000, v88, v89, "[%{public}s] updating data source with new items", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v91);
    MEMORY[0x1BFAF43A0](v91, -1, -1);
    MEMORY[0x1BFAF43A0](v90, -1, -1);
  }

  (*(v99 + 8))(v48, v100);
  v95 = sub_1B9FE6B68(v43);

  sub_1BA0EB668(0, v95, 1);

  return result;
}

BOOL sub_1BA424534(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 source];
  v4 = [v3 name];

  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = [v2 source];
  v6 = [v5 name];

  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F252FC();
  v7 = sub_1BA4A7B78();

  return v7 == -1;
}

BOOL sub_1BA424654(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore) profileIdentifier];
  v4 = [v3 type];

  v5 = [a1 orderedAppSources];
  sub_1B9F0ADF8(0, &qword_1EBBE99E8, 0x1E69A44B8);
  v6 = sub_1BA4A6B08();

  v7 = v6 >> 62;
  if (v4 == 3)
  {
    if (v7)
    {
      v8 = sub_1BA4A7CC8();
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      return 0;
    }

    v11 = [a1 orderedUninstalledAppSources];
    v6 = sub_1BA4A6B08();

    if (v6 >> 62)
    {
      goto LABEL_10;
    }
  }

  else if (v7)
  {
LABEL_10:
    v10 = sub_1BA4A7CC8();
    goto LABEL_8;
  }

  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  return v10 == 0;
}

double sub_1BA424814()
{

  return result;
}

uint64_t AppSourcesDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AppSourcesDataSource.__deallocating_deinit()
{
  AppSourcesDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t AppSourcesDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA121ED8(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A2888();
  v12 = *(v11 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v11, v13).n128_u64[0];
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore) profileIdentifier];
  v18 = [v17 type];

  if (v18 == 3)
  {
    v19 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_profileInformationDataSource);
    if (v19)
    {
      v20 = *(*v19 + 760);

      v20(v21);

      v22 = v12;
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        v60 = v2;
        v23 = *(v12 + 32);
        v24 = v16;
        v23(v16, v10, v11);
        v25 = v22;
        v59 = v11;
        if (qword_1EBBE8990 != -1)
        {
          swift_once();
        }

        sub_1B9F1B378(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1BA4B5480;
        v27 = sub_1BA4A2878();
        v29 = v28;
        *(v26 + 56) = MEMORY[0x1E69E6158];
        *(v26 + 64) = sub_1B9F1BE20();
        *(v26 + 32) = v27;
        *(v26 + 40) = v29;
        v30 = sub_1BA4A6768();
        v32 = v31;

        v62 = 0x74497265746F6F46;
        v63 = 0xEB000000005F6D65;
        sub_1BA4A1788();
        v33 = sub_1BA4A1748();
        v35 = v34;
        (*(v3 + 8))(v6, v60);
        MEMORY[0x1BFAF1350](v33, v35);

        v36 = v62;
        v37 = v63;
        v38 = type metadata accessor for CollectionViewGroupedFooterItem(0);
        v39 = v61;
        v61[3] = v38;
        v39[4] = sub_1BA4261F4(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem, &protocol conformance descriptor for CollectionViewGroupedFooterItem);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
        v62 = type metadata accessor for CollectionViewGroupedFooterCell();
        sub_1BA0603B0();
        *boxed_opaque_existential_1 = sub_1BA4A6808();
        boxed_opaque_existential_1[1] = v41;
        v42 = boxed_opaque_existential_1 + *(v38 + 32);
        *v42 = 0u;
        *(v42 + 1) = 0u;
        v42[32] = 1;
        v43 = (boxed_opaque_existential_1 + *(v38 + 28));
        *v43 = v30;
        v43[1] = v32;
        type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
        swift_storeEnumTagMultiPayload();
        boxed_opaque_existential_1[2] = v36;
        boxed_opaque_existential_1[3] = v37;
        boxed_opaque_existential_1[4] = 0;
        boxed_opaque_existential_1[5] = 0;
        return (*(v25 + 8))(v24, v59);
      }
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    sub_1BA4263C4(v10, sub_1BA121ED8);
  }

  if (qword_1EBBE8988 != -1)
  {
    swift_once();
  }

  v46 = qword_1EBBF2750;
  v45 = *algn_1EBBF2758;
  v62 = 0x74497265746F6F46;
  v63 = 0xEB000000005F6D65;

  sub_1BA4A1788();
  v47 = sub_1BA4A1748();
  v49 = v48;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x1BFAF1350](v47, v49);

  v50 = v62;
  v51 = v63;
  v52 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  v53 = v61;
  v61[3] = v52;
  v53[4] = sub_1BA4261F4(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem, &protocol conformance descriptor for CollectionViewGroupedFooterItem);
  v54 = __swift_allocate_boxed_opaque_existential_1(v53);
  v62 = type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA0603B0();
  *v54 = sub_1BA4A6808();
  v54[1] = v55;
  v56 = v54 + *(v52 + 32);
  *v56 = 0u;
  *(v56 + 1) = 0u;
  v56[32] = 1;
  v57 = (v54 + *(v52 + 28));
  *v57 = v46;
  v57[1] = v45;
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  result = swift_storeEnumTagMultiPayload();
  v54[2] = v50;
  v54[3] = v51;
  v54[4] = 0;
  v54[5] = 0;
  return result;
}

uint64_t sub_1BA42500C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2750 = result;
  *algn_1EBBF2758 = v1;
  return result;
}

uint64_t sub_1BA4250D8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2760 = result;
  *algn_1EBBF2768 = v1;
  return result;
}

uint64_t sub_1BA4251A8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2770 = result;
  *algn_1EBBF2778 = v1;
  return result;
}

void sub_1BA42525C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BA4A82B8();
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
        sub_1B9F0ADF8(0, &qword_1EBBE99E8, 0x1E69A44B8);
        v6 = sub_1BA4A6B98();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1BA42551C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1BA425370(0, v2, 1, a1);
  }
}

void sub_1BA425370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v20 = a3;
    v6 = *(v21 + 8 * a3);
    v18 = v5;
    v19 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 source];
      v11 = [v10 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v12 = [v9 source];
      v13 = [v12 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1B9F252FC();
      v14 = sub_1BA4A7B78();

      if (v14 != -1)
      {
LABEL_4:
        a3 = v20 + 1;
        v4 = v19 + 8;
        v5 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      v15 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v15;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BA42551C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_92;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v12 = v9;
      v13 = *v6;
      v125 = *(*v6 + 8 * (v9 + 1));
      v123 = *(v13 + 8 * v9);
      v14 = v123;
      v9 = v125;
      v15 = v14;
      v121 = sub_1BA424534(&v125, &v123);
      if (v5)
      {

        return;
      }

      v109 = v10;

      v16 = v12 + 2;
      v111 = v12;
      v117 = 8 * v12;
      v119 = v8;
      v5 = (v13 + 8 * v12 + 16);
      while (v8 != v16)
      {
        v17 = *(v5 - 1);
        v18 = *v5;
        v19 = v17;
        v20 = [v18 source];
        v10 = &selRef_didTapSave_;
        v21 = [v20 name];

        v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v9 = v23;

        v125 = v22;
        v126 = v9;
        v24 = [v19 source];
        v25 = [v24 name];

        v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v28 = v27;

        v123 = v26;
        v124 = v28;
        sub_1B9F252FC();
        v29 = sub_1BA4A7B78();

        v8 = v119;

        ++v16;
        ++v5;
        if (((v121 ^ (v29 != -1)) & 1) == 0)
        {
          v8 = v16 - 1;
          break;
        }
      }

      v7 = a1;
      v6 = a3;
      v11 = v111;
      v30 = v117;
      if (v121)
      {
        if (v8 < v111)
        {
          goto LABEL_122;
        }

        if (v111 < v8)
        {
          v31 = 8 * v8 - 8;
          v32 = v8;
          v33 = v111;
          do
          {
            if (v33 != --v32)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v35 = *(v34 + v30);
              *(v34 + v30) = *(v34 + v31);
              *(v34 + v31) = v35;
            }

            ++v33;
            v31 -= 8;
            v30 += 8;
          }

          while (v33 < v32);
        }
      }

      v10 = v109;
      v5 = 0;
    }

    v36 = v6[1];
    if (v8 < v36)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_119;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_120;
        }

        if (v11 + a4 >= v36)
        {
          v9 = v6[1];
        }

        else
        {
          v9 = v11 + a4;
        }

        if (v9 < v11)
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          v10 = sub_1BA442D80(v10);
LABEL_92:
          v127 = v10;
          v103 = *(v10 + 2);
          if (v103 >= 2)
          {
            do
            {
              v104 = *v6;
              if (!*v6)
              {
                goto LABEL_127;
              }

              v6 = (v103 - 1);
              v105 = *&v10[16 * v103];
              v106 = *&v10[16 * v103 + 24];
              sub_1BA425CF8((v104 + 8 * v105), (v104 + 8 * *&v10[16 * v103 + 16]), (v104 + 8 * v106), v9);
              if (v5)
              {
                break;
              }

              if (v106 < v105)
              {
                goto LABEL_116;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_1BA442D80(v10);
              }

              if (v103 - 2 >= *(v10 + 2))
              {
                goto LABEL_117;
              }

              v107 = &v10[16 * v103];
              *v107 = v105;
              *(v107 + 1) = v106;
              v127 = v10;
              sub_1BA442CF4(v103 - 1);
              v10 = v127;
              v103 = *(v127 + 2);
              v6 = a3;
            }

            while (v103 > 1);
          }

LABEL_100:

          return;
        }

        if (v8 != v9)
        {
          break;
        }
      }
    }

    v9 = v8;
    if (v8 < v11)
    {
      goto LABEL_118;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1BA27F470(0, *(v10 + 2) + 1, 1, v10);
    }

    v38 = *(v10 + 2);
    v37 = *(v10 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v10 = sub_1BA27F470((v37 > 1), v38 + 1, 1, v10);
    }

    *(v10 + 2) = v39;
    v40 = &v10[16 * v38];
    *(v40 + 4) = v11;
    *(v40 + 5) = v9;
    v41 = *v7;
    if (!v41)
    {
      goto LABEL_128;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v10 + 4);
          v44 = *(v10 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_49:
          if (v46)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_110;
          }

          v65 = &v10[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_114;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v69 = &v10[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_63:
        if (v64)
        {
          goto LABEL_109;
        }

        v72 = &v10[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_112;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_70:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*v6)
        {
          goto LABEL_125;
        }

        v81 = *&v10[16 * v80 + 32];
        v82 = *&v10[16 * v42 + 40];
        sub_1BA425CF8((*v6 + 8 * v81), (*v6 + 8 * *&v10[16 * v42 + 32]), (*v6 + 8 * v82), v41);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v82 < v81)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1BA442D80(v10);
        }

        if (v80 >= *(v10 + 2))
        {
          goto LABEL_104;
        }

        v83 = &v10[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        v127 = v10;
        sub_1BA442CF4(v42);
        v10 = v127;
        v39 = *(v127 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v10[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_105;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_106;
      }

      v54 = &v10[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_108;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_111;
      }

      if (v58 >= v50)
      {
        v76 = &v10[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_115;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v8 = v6[1];
    v7 = a1;
    if (v9 >= v8)
    {
      goto LABEL_90;
    }
  }

  v110 = v5;
  v122 = *v6;
  v84 = *v6 + 8 * v8 - 8;
  v112 = v11;
  v85 = v11 - v8;
  v115 = v9;
LABEL_81:
  v118 = v84;
  v120 = v8;
  v86 = *(v122 + 8 * v8);
  v116 = v85;
  while (1)
  {
    v87 = *v84;
    v88 = v86;
    v89 = v87;
    v90 = [v88 source];
    v91 = [v90 name];

    v92 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v94 = v93;

    v125 = v92;
    v126 = v94;
    v95 = [v89 source];
    v96 = [v95 name];

    v97 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v99 = v98;

    v123 = v97;
    v124 = v99;
    sub_1B9F252FC();
    v100 = sub_1BA4A7B78();

    if (v100 != -1)
    {
LABEL_80:
      v8 = v120 + 1;
      v84 = v118 + 8;
      v9 = v115;
      v85 = v116 - 1;
      if ((v120 + 1) != v115)
      {
        goto LABEL_81;
      }

      v5 = v110;
      v7 = a1;
      v6 = a3;
      v11 = v112;
      if (v115 < v112)
      {
        goto LABEL_118;
      }

      goto LABEL_30;
    }

    if (!v122)
    {
      break;
    }

    v101 = *v84;
    v86 = *(v84 + 8);
    *v84 = v86;
    *(v84 + 8) = v101;
    v84 -= 8;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_80;
    }
  }

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
}

uint64_t sub_1BA425CF8(void **__src, id *a2, id *a3, id *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v9);
      v5 = a2;
      a4 = v13;
    }

    v49 = &a4[v9];
    v15 = a4;
    if (v7 < 8)
    {
LABEL_10:
      v16 = v6;
      goto LABEL_37;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v46 = v6;
      __dst = v5;
      v19 = *v15;
      v20 = *v5;
      v21 = v19;
      v22 = [v20 source];
      v23 = [v22 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v24 = [v21 source];
      v25 = [v24 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1B9F252FC();
      v26 = sub_1BA4A7B78();

      if (v26 != -1)
      {
        break;
      }

      v17 = v46;
      v18 = __dst;
      v5 = __dst + 1;
      if (v46 != __dst)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 = v17 + 1;
      if (v15 >= v49)
      {
        goto LABEL_10;
      }
    }

    v18 = v15;
    v17 = v46;
    v27 = v46 == v15++;
    v5 = __dst;
    if (v27)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v17 = *v18;
    goto LABEL_13;
  }

  v15 = a4;
  if (a4 != a2 || &a2[v12] <= a4)
  {
    memmove(a4, a2, 8 * v12);
    v5 = a2;
  }

  v49 = &v15[v12];
  if (v10 < 8 || v5 <= v6)
  {
    v16 = v5;
  }

  else
  {
    v44 = v15;
LABEL_25:
    __dsta = v5;
    v29 = v5 - 1;
    v30 = v4 - 1;
    v31 = v49;
    do
    {
      v32 = v30;
      v33 = v30 + 1;
      v34 = *--v31;
      v35 = v29;
      v36 = *v29;
      v45 = v34;
      v37 = v36;
      v38 = [v45 source];
      v39 = [v38 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v40 = [v37 source];
      v41 = [v40 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1B9F252FC();
      v42 = sub_1BA4A7B78();

      if (v42 == -1)
      {
        v4 = v32;
        if (v33 != __dsta)
        {
          *v32 = *v35;
        }

        v15 = v44;
        if (v49 <= v44 || (v5 = v35, v35 <= v6))
        {
          v16 = v35;
          goto LABEL_37;
        }

        goto LABEL_25;
      }

      if (v33 != v49)
      {
        *v32 = *v31;
      }

      v30 = v32 - 1;
      v49 = v31;
      v29 = v35;
    }

    while (v31 > v44);
    v49 = v31;
    v15 = v44;
    v16 = __dsta;
  }

LABEL_37:
  if (v16 != v15 || v16 >= (v15 + ((v49 - v15 + (v49 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v16, v15, 8 * (v49 - v15));
  }

  return 1;
}

uint64_t sub_1BA42615C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B9F1134C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1BA4261F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA4263C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA426424(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_profileInformationDataSource;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_profileInformationDataSource) = 0;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore) = a1;
  sub_1BA0B5A00(a2, &v16);
  if (v17)
  {
    sub_1B9F1134C(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v7 = a1;
    v8 = v2;
    v9 = sub_1BA4A1B68();
    v10 = [v7 profileIdentifier];
    type metadata accessor for HealthKitProfileInformationDataSource(0);
    swift_allocObject();
    v11 = sub_1BA2B8F0C(v9, v10, 0, 0, sub_1BA06EF58, 0);
    v2 = v8;
    *(v8 + v5) = v11;

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v12 = a1;
    sub_1BA0B5978(&v16);
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69A44D0]) initWithHealthStore_];
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_sourceListDataSource) = v13;
  v14 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA423308, 0);

  sub_1BA423408();

  sub_1BA0B5978(a2);
  return v14;
}

uint64_t SizeClassResponsiveDataSource.__allocating_init(dataSources:defaultDataSource:)(uint64_t a1, uint64_t a2, _UNKNOWN **a3, _UNKNOWN **a4)
{
  swift_allocObject();
  v8 = sub_1B9F1D348(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t SizeClassResponsiveDataSource.init(dataSources:defaultDataSource:)(uint64_t a1, uint64_t a2, _UNKNOWN **a3, _UNKNOWN **a4)
{
  v4 = sub_1B9F1D348(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t SizeClassResponsiveDataSource.deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

void sub_1BA426724(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  swift_beginAccess();
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = v5;
  if (a2)
  {
    if (v7)
    {
      return;
    }

LABEL_7:
    sub_1B9F1DCEC();
    swift_beginAccess();
    v8 = *(v2 + 16);
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = 1;
    v12[4] = sub_1BA427878;
    v12[5] = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1B9F8A254;
    v12[3] = &block_descriptor_116;
    v10 = _Block_copy(v12);
    v11 = v8;

    [v11 notifyObservers_];
    _Block_release(v10);

    return;
  }

  if (v6 != a1)
  {
    LOBYTE(v7) = 1;
  }

  if (v7)
  {
    goto LABEL_7;
  }
}

void (*sub_1BA426874(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  swift_beginAccess();
  v5 = *(v1 + 80);
  *(v4 + 96) = *(v1 + 72);
  *(v4 + 104) = v5;
  return sub_1BA426908;
}

void sub_1BA426908(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 96);
  v5 = v3[104];
  v6 = *(v3 + 14);
  if (a2)
  {
    sub_1BA426724(v4, v5);
    goto LABEL_10;
  }

  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  *(v6 + 72) = v4;
  *(v6 + 80) = v5;
  if (v5)
  {
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_9:
    v9 = *(v3 + 14);
    sub_1B9F1DCEC();
    swift_beginAccess();
    v10 = *(v9 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = 1;
    *(v3 + 4) = sub_1BA427B00;
    *(v3 + 5) = v11;
    *v3 = MEMORY[0x1E69E9820];
    *(v3 + 1) = 1107296256;
    *(v3 + 2) = sub_1B9F8A254;
    *(v3 + 3) = &block_descriptor_7_3;
    v12 = _Block_copy(v3);
    v13 = v10;

    [v13 notifyObservers_];
    _Block_release(v12);

    goto LABEL_10;
  }

  if (v4 != v7)
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:

  free(v3);
}

uint64_t sub_1BA426ABC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(a1, ObjectType, v3) & 1;
}

uint64_t sub_1BA426B38(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  swift_beginAccess();
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  ObjectType = swift_getObjectType();
  v10 = v3;
  v8 = v7;
  v9 = v2;
  return (*(v4 + 8))(&v8, ObjectType, v4);
}

void sub_1BA426BD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = a4;
  aBlock[4] = sub_1BA427B00;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_14_4;
  v8 = _Block_copy(aBlock);
  v9 = v6;

  [v9 notifyObservers_];
  _Block_release(v8);
}

uint64_t sub_1BA426CD8()
{
  sub_1B9F7A684(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  v1 = sub_1BA4A4438();
  v2 = MEMORY[0x1E69DC130];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

void sub_1BA426D30(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 horizontalSizeClass];

  sub_1BA426724(v2, 0);
}

uint64_t SizeClassResponsiveDataSource.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1BA426DC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *a2 = *(v3 + 88);
  *(a2 + 16) = v4;
  return swift_unknownObjectRetain();
}

uint64_t sub_1BA426E20(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 2);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 88) = *a1;
  *(v4 + 104) = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t SizeClassResponsiveDataSource.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA4270C0(__int128 *a1)
{
  v2 = *v1;
  v8 = *a1;
  v3 = *(a1 + 2);
  swift_beginAccess();
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  ObjectType = swift_getObjectType();
  v10 = v3;
  v11 = v4;
  v9 = v8;
  return (*(v5 + 8))(&v9, ObjectType, v5);
}

uint64_t sub_1BA427154(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  ObjectType = swift_getObjectType();
  return (*(v4 + 16))(a1, ObjectType, v4) & 1;
}

void sub_1BA4271D4(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 horizontalSizeClass];

  sub_1BA426724(v2, 0);
}

uint64_t SizeClassResponsiveDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v31[1] = *v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = v5[13];
  v32 = *(v5 + 11);
  v35 = v32;
  v36 = v15;
  sub_1B9F1AC28();
  sub_1B9F0D950(0, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v33, &v37);
    v16 = v39;
    v17 = v40;
    __swift_project_boxed_opaque_existential_1(&v37, v39);
    (*(v17 + 8))(a1, a2, a3, v16, v17);
    return __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    *&v32 = a4;
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_1B9F43A50(v33, &qword_1EBBEBD40, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource);
    sub_1BA4A3E28();

    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *&v33[0] = v31[0];
      *v21 = 136315394;
      v22 = sub_1BA4A85D8();
      v24 = sub_1B9F0B82C(v22, v23, v33);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = v5[13];
      v37 = *(v5 + 11);
      v38 = v25;
      swift_unknownObjectRetain();
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, v33);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s]: Cannot fetch supplementary item because child data source is not SupplementaryItemDataSource: %s", v21, 0x16u);
      v29 = v31[0];
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v30 = v32;
    *(v32 + 24) = &type metadata for FallbackHeaderItem;
    v30[4] = sub_1BA1BA0F8();
    *v30 = swift_allocObject();
    return FallbackHeaderItem.init()();
  }
}

Swift::Void __swiftcall SizeClassResponsiveDataSource.registerCells(for:)(UICollectionView *a1)
{
  v3 = *(v1 + 56);
  v18 = *(v1 + 40);
  *&v19 = v3;
  sub_1B9F1AC28();
  sub_1B9F0D950(0, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
  swift_unknownObjectRetain();
  v17 = a1;
  if (swift_dynamicCast())
  {
    v4 = *(&v24 + 1);
    v5 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    (*(v5 + 8))(a1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_1B9F43A50(&v23, &qword_1EDC6C320, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
  }

  v6 = *(v1 + 64);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      while (1)
      {
        v13 = *(v6 + 56) + 24 * (__clz(__rbit64(v9)) | (v12 << 6));
        v14 = *(v13 + 16);
        v9 &= v9 - 1;
        v21 = *v13;
        v22 = v14;
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(&v18, &v23);
          v15 = *(&v24 + 1);
          v16 = v25;
          __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
          (*(v16 + 8))(v17, v15, v16);
          __swift_destroy_boxed_opaque_existential_1(&v23);
          v11 = v12;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v20 = 0;
          v18 = 0u;
          v19 = 0u;
          sub_1B9F43A50(&v18, &qword_1EDC6C320, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
          v11 = v12;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v11;
      }
    }
  }

  __break(1u);
}

uint64_t TitleEmptyStateCollectionViewCellItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void TitleEmptyStateCollectionViewCellItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t TitleEmptyStateCollectionViewCellItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void TitleEmptyStateCollectionViewCellItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t TitleEmptyStateCollectionViewCellItem.baseIdentifier.getter()
{
  v0 = sub_1BA4A6AE8();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (!v1)
  {
    return 0;
  }

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v2;
}

void sub_1BA427C90(uint64_t *a1@<X8>)
{
  v2 = sub_1BA4A6AE8();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t (*TitleEmptyStateCollectionViewCellItem.baseIdentifier.modify(uint64_t *a1))(uint64_t a1)
{
  v2 = sub_1BA4A6AE8();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
  return sub_1B9FF3F48;
}

uint64_t TitleEmptyStateCollectionViewCellItem.makeContentConfiguration()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A4428();
  v8 = MEMORY[0x1E69DC110];
  a1[3] = v7;
  a1[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(a1);

  sub_1BA4A43A8();
  sub_1BA4A43B8();
  v9 = *MEMORY[0x1E69DDCF8];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:0];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v14 = v9;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v17 = 136315906;
      v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v38 = v14;
      v20 = sub_1B9F0B82C(v18, v19, &v39);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      v40 = 0;
      v41 = 1;
      sub_1B9F6C13C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v39);

      *(v17 + 14) = v23;
      *(v17 + 22) = 2080;
      LODWORD(v40) = 0;
      type metadata accessor for SymbolicTraits(0);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v39);
      v14 = v38;

      *(v17 + 24) = v26;
      *(v17 + 32) = 2112;
      v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v17 + 34) = v27;
      v28 = v36;
      *v36 = v27;
      _os_log_impl(&dword_1B9F07000, v15, v16, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v17, 0x2Au);
      sub_1B9F8C6C8(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      v29 = v37;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v30 = [v10 preferredFontDescriptorWithTextStyle_];
    v31 = [objc_opt_self() fontWithDescriptor:v30 size:0.0];
  }

  v32 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v32(&v40, 0);
  v33 = [objc_opt_self() secondaryLabelColor];
  v34 = sub_1BA4A4238();
  sub_1BA4A41F8();
  return v34(&v40, 0);
}

uint64_t sub_1BA428204()
{
  v0 = sub_1BA4A6AE8();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (!v1)
  {
    return 0;
  }

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v2;
}

uint64_t (*sub_1BA428280(uint64_t *a1))(uint64_t)
{
  v2 = sub_1BA4A6AE8();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
  return sub_1BA4286CC;
}

uint64_t sub_1BA428318(uint64_t a1)
{
  v2 = sub_1BA139F30();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA4283C8(uint64_t a1)
{
  sub_1BA4A4158();
  v1 = [objc_opt_self() tertiarySystemFillColor];
  return sub_1BA4A4118();
}

id TitleEmptyStateCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TitleEmptyStateCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for TitleEmptyStateCollectionViewCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id TitleEmptyStateCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TitleEmptyStateCollectionViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TitleEmptyStateCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TitleEmptyStateCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleEmptyStateCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA4286A0(uint64_t a1)
{
  result = sub_1BA139F30();
  *(a1 + 8) = result;
  return result;
}

id sub_1BA4286D0(double a1, double a2, double a3, double a4)
{
  sub_1B9F0D774(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  v17 = &v4[OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_item];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v18 = &v4[OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_accessibilityIdentifierBase];
  v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v35 = v19;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696D6F636E492ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x526E6F737265502ELL, 0xEE00747365757165);

  v20 = v35;
  *v18 = v34;
  v18[1] = v20;
  v21 = type metadata accessor for RequestNewSharingRelationshipCell();
  v33.receiver = v4;
  v33.super_class = v21;
  v22 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA4A4158();
  v23 = sub_1BA4A4168();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v16, 0, 1, v23);
  v25 = MEMORY[0x1BFAF1F10](v16);
  MEMORY[0x1BFAF1F00](v25);
  if ((*(v24 + 48))(v12, 1, v23))
  {
    v26 = MEMORY[0x1E69DC0D8];
    sub_1BA429C60(v12, v16, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v16);
    sub_1B9F44648(v12, &qword_1EDC6B770, v26);
  }

  else
  {
    v27 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v12);
  }

  v28 = *MEMORY[0x1E69796E8];
  v29 = [v22 layer];
  [v29 setCornerCurve_];

  v30 = [v22 layer];
  [v30 setCornerRadius_];

  v31 = [v22 layer];
  [v31 setMaskedCorners_];

  [v22 setClipsToBounds_];
  return v22;
}

uint64_t sub_1BA428AD0()
{
  v1 = v0;
  sub_1B9F0D774(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v34 - v8;
  v10 = sub_1BA4A4428();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_item;
  swift_beginAccess();
  sub_1BA429C60(v1 + v15, v38, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v39)
  {
    return sub_1B9F44648(v38, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  type metadata accessor for RequestNewSharingRelationshipItem();
  result = swift_dynamicCast();
  if (result)
  {
    v36 = v11;
    v17 = v37;
    [v1 setUserInteractionEnabled_];
    sub_1BA4A43A8();
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA4A43B8();
    v18 = *(v17 + 96);
    v19 = objc_opt_self();
    v20 = [v19 linkColor];
    v35 = v19;
    if (v18 != 2)
    {
      [v19 secondaryLabelColor];
    }

    v21 = sub_1BA4A4238();
    sub_1BA4A41F8();
    v21(v38, 0);
    v39 = v10;
    v40 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
    v23 = v36;
    (*(v36 + 16))(boxed_opaque_existential_1, v14, v10);
    MEMORY[0x1BFAF1EF0](v38);
    v24 = [v1 contentView];
    v25 = v24;
    if (*(v17 + 96))
    {
      v26 = 0.75;
    }

    else
    {
      v26 = 1.0;
    }

    [v24 setAlpha_];

    MEMORY[0x1BFAF1F00]();
    v27 = sub_1BA4A4168();
    if ((*(*(v27 - 8) + 48))(v9, 1, v27))
    {
      v28 = MEMORY[0x1E69DC0D8];
      sub_1BA429C60(v9, v5, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1BFAF1F10](v5);
      v23 = v36;
      sub_1B9F44648(v9, &qword_1EDC6B770, v28);
    }

    else
    {
      v29 = [v35 secondarySystemGroupedBackgroundColor];
      v30 = v29;
      if (*(v17 + 96))
      {
        v31 = 0.75;
      }

      else
      {
        v31 = 1.0;
      }

      v32 = [v29 colorWithAlphaComponent_];

      sub_1BA4A4118();
      MEMORY[0x1BFAF1F10](v9);
    }

    v33 = sub_1BA4A6758();
    [v1 setAccessibilityIdentifier_];

    return (*(v23 + 8))(v14, v10);
  }

  return result;
}

uint64_t static RequestNewSharingRelationshipItem.title.getter()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

id sub_1BA429070(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RequestNewSharingRelationshipCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA429110@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_item;
  swift_beginAccess();
  return sub_1BA429C60(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA429184(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA428AD0();
  return sub_1B9F44648(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t (*sub_1BA42920C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA429270;
}

uint64_t sub_1BA429270(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA428AD0();
  }

  return result;
}

uint64_t sub_1BA4292A4(void *a1, void *a2)
{
  v4 = MEMORY[0x1E69A2CB0];
  sub_1B9F0D774(0, &qword_1EBBF0038, MEMORY[0x1E69A2CB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v12 - v7;
  v9 = sub_1BA4A3788();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v12[3] = sub_1BA35A4C8();
  v12[0] = a1;
  v10 = a1;
  _s18HealthExperienceUI35SharingInviteActivityViewControllerC7present2on4with6senderySo06UIViewH0C_0A11AppServices27ContactDeepLinkingParameterVSgypSgtFZ_0(a2, v8, v12);
  sub_1B9F44648(v8, &qword_1EBBF0038, v4);
  return sub_1B9F23224(v12);
}

uint64_t sub_1BA4293C0()
{
  v1 = v0;
  sub_1B9F0D774(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = aBlock - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = aBlock - v12;
  v14 = sub_1BA4A40A8();
  v15 = type metadata accessor for RequestNewSharingRelationshipCell();
  v30.receiver = v1;
  v30.super_class = v15;
  objc_msgSendSuper2(&v30, sel__bridgedUpdateConfigurationUsingState_, v14);

  if ([v1 isHighlighted])
  {
    MEMORY[0x1BFAF1F00]();
    v16 = sub_1BA4A4168();
    if ((*(*(v16 - 8) + 48))(v13, 1, v16))
    {
      v17 = MEMORY[0x1E69DC0D8];
      sub_1BA429C60(v13, v9, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1BFAF1F10](v9);
      v18 = v13;
      return sub_1B9F44648(v18, &qword_1EDC6B770, v17);
    }

    v21 = objc_opt_self();
    v22 = [v21 systemGray5Color];
    v23 = [v21 tertiarySystemGroupedBackgroundColor];
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = v23;
    v24[4] = 0;
    v24[5] = v22;
    v25 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    aBlock[4] = sub_1B9FD7F54;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_117;
    v26 = _Block_copy(aBlock);
    [v25 initWithDynamicProvider_];
    _Block_release(v26);

    sub_1BA4A4118();
    v27 = v13;
  }

  else
  {
    MEMORY[0x1BFAF1F00]();
    v19 = sub_1BA4A4168();
    if ((*(*(v19 - 8) + 48))(v5, 1, v19))
    {
      v17 = MEMORY[0x1E69DC0D8];
      sub_1BA429C60(v5, v9, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1BFAF1F10](v9);
      v18 = v5;
      return sub_1B9F44648(v18, &qword_1EDC6B770, v17);
    }

    v28 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    v27 = v5;
  }

  return MEMORY[0x1BFAF1F10](v27);
}

uint64_t sub_1BA429834(__int128 *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v18 = 0xD000000000000022;
  v19 = 0x80000001BA5086A0;
  sub_1BA4A1788();
  sub_1BA429E18(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v14 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v14);

  (*(v9 + 8))(v12, v8);
  v15 = v19;
  *(v4 + 16) = v18;
  *(v4 + 24) = v15;
  v18 = type metadata accessor for RequestNewSharingRelationshipCell();
  sub_1BA429E60();
  *(v4 + 32) = sub_1BA4A6808();
  *(v4 + 40) = v16;
  *(v4 + 96) = 2;
  sub_1B9F25598(a1, v4 + 48);
  *(v4 + 88) = a2;
  *(v4 + 96) = v13;
  return v4;
}

uint64_t RequestNewSharingRelationshipItem.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return v0;
}

uint64_t RequestNewSharingRelationshipItem.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA429AE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA429C60(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0D774(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1BA429CCC()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_accessibilityIdentifierBase);
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v3;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696D6F636E492ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x526E6F737265502ELL, 0xEE00747365757165);

  *v2 = v4;
  v2[1] = v5;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA429E18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA429E60()
{
  result = qword_1EDC621B0[0];
  if (!qword_1EDC621B0[0])
  {
    type metadata accessor for RequestNewSharingRelationshipCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC621B0);
  }

  return result;
}

uint64_t sub_1BA429EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context;
  swift_beginAccess();
  return sub_1BA04B338(v1 + v3, a1);
}

uint64_t sub_1BA429EFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  swift_endAccess();
  v4 = sub_1BA42A144();
  sub_1BA04B338(v1 + v3, v7);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA0BACD4(v7, v4 + v5);
  swift_endAccess();
  sub_1BA0BD294();

  sub_1BA0BD670(a1);
  return sub_1BA0BD670(v7);
}

uint64_t (*sub_1BA429FC0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_1BA42A048;
}

void sub_1BA42A048(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_1BA42A144();
    sub_1BA04B338(v4 + v5, v3);
    v7 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
    swift_beginAccess();
    sub_1BA0BACD4(v3, v6 + v7);
    swift_endAccess();
    sub_1BA0BD294();

    sub_1BA0BD670(v3);
  }

  free(v3);
}

void sub_1BA42A0F4(uint64_t a1)
{
  v1 = sub_1BA42A144();
  sub_1BA0BADEC();
}

id sub_1BA42A144()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for FeatureStatusPlatformFeedItemView()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA42A1CC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView) = a1;
}

void (*sub_1BA42A1E0(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA42A144();
  return sub_1BA42A228;
}

void sub_1BA42A228(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView) = v2;
}

void sub_1BA42A240()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FeatureStatusTileViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BA42A144();
    [v2 addSubview_];

    v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView];
    v5 = [v0 view];
    [v4 hk:v5 alignConstraintsWithView:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA42A380(char a1)
{
  v2 = sub_1BA42A144();
  sub_1BA0C2110(a1);
}

uint64_t sub_1BA42A3D4@<X0>(char *a1@<X8>)
{
  v2 = sub_1BA4A2A88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  v11 = sub_1BA4A30B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA42A144();
  sub_1BA0BADEC();
  sub_1BA4A3018();
  (*(v3 + 104))(v6, *MEMORY[0x1E69A31D0], v2);
  v17 = sub_1BA4A2A78();

  v18 = *(v3 + 8);
  v18(v6, v2);
  v18(v10, v2);
  result = (*(v12 + 8))(v15, v11);
  if (v17)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  *a1 = v20;
  return result;
}

void sub_1BA42A5D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA42A144();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v4 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  sub_1BA0C1E78();
}

id FeatureStatusTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FeatureStatusTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView] = 0;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for FeatureStatusTileViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id FeatureStatusTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FeatureStatusTileViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FeatureStatusTileViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id FeatureStatusTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStatusTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA42AB6C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  return sub_1B9FCDD98;
}

void sub_1BA42AC0C(char a1)
{
  v2 = sub_1BA42A144();
  sub_1BA0C2110(a1);
}

id UIResponder.resolvedPersonalizedFeedTrainer()()
{
  if ([v0 nextResponder] && (sub_1BA42B154(), sub_1BA42B0F0(), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v8 + 1))
    {
      sub_1B9F1134C(&v7, v10);
      v1 = v11;
      v2 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v3 = (*(v2 + 8))(v1, v2);
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v3;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  sub_1BA42B03C(&v7);
  result = [v0 nextResponder];
  if (result)
  {
    v5 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v6 = UIResponder.resolvedPersonalizedFeedTrainer()();

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA42B03C(uint64_t a1)
{
  sub_1BA42B098(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA42B098(uint64_t a1)
{
  if (!qword_1EDC62620)
  {
    sub_1BA42B0F0();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC62620);
    }
  }
}

unint64_t sub_1BA42B0F0()
{
  result = qword_1EDC62628[0];
  if (!qword_1EDC62628[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC62628);
  }

  return result;
}

unint64_t sub_1BA42B154()
{
  result = qword_1EDC5E590;
  if (!qword_1EDC5E590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E590);
  }

  return result;
}

uint64_t DataTypeDetailConfiguration.DescriptionComponent.init(hkType:contentInsetsReference:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X1>, void (**a3)(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  a3[2] = a2;
  result = swift_allocObject();
  *(result + 16) = a1;
  *a3 = sub_1BA095004;
  a3[1] = result;
  return result;
}

uint64_t DataTypeDetailConfiguration.DescriptionComponent.init(measureIdentifier:contentInsetsReference:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t *a1@<X8>)@<X1>, uint64_t (**a3)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  a3[2] = a2;
  v5 = sub_1BA4A1A48();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_allocObject();
  result = (*(v6 + 32))(v8 + v7, a1, v5);
  *a3 = sub_1BA42B814;
  a3[1] = v8;
  return result;
}

uint64_t DataTypeDetailConfiguration.DescriptionComponent.init(descriptionProvider:contentInsetsReference:)@<X0>(__int128 *a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X8>)@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  a3[2] = a2;
  v5 = swift_allocObject();
  result = sub_1B9F1134C(a1, v5 + 16);
  *a3 = sub_1B9F79BBC;
  a3[1] = v5;
  return result;
}

uint64_t sub_1BA42B39C@<X0>(uint64_t *a2@<X8>)
{
  sub_1BA4A1A78();
  swift_allocObject();
  sub_1BA4A1A68();
  sub_1BA4A1A58();

  if (v13)
  {
    sub_1B9F1134C(&v12, v14);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v3 = sub_1BA4A1A98();
    v5 = v4;
    *&v12 = 0;
    *(&v12 + 1) = 0xE000000000000000;
    sub_1BA4A7DF8();

    *&v12 = 0xD000000000000010;
    *(&v12 + 1) = 0x80000001BA508750;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v6 = sub_1BA4A1A98();
    MEMORY[0x1BFAF1350](v6);

    MEMORY[0x1BFAF1350](0x4543414C505B202ELL, 0xEF5D5245444C4F48);
    v7 = v12;
    v8 = swift_allocObject();
    *a2 = v8;
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    *(v8 + 32) = v7;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    *(v8 + 72) = 0;
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    v10 = &off_1F3821A00;
    v11 = &type metadata for StandardDataTypeDescriptionProvider;
  }

  else
  {
    result = sub_1B9F43A50(&v12, &qword_1EBBF27D0, &qword_1EBBF27D8, MEMORY[0x1E69A30E0]);
    v11 = 0;
    v10 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v11;
  a2[4] = v10;
  return result;
}

void sub_1BA42B55C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6, v8).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(a1 + 40) displayTypeController];
  if (v12)
  {
    v13 = v12;
    v23 = [v12 displayTypeForObjectType_];

    if (v23)
    {
      sub_1BA42B894(v23, a1, a3);
      v14 = v23;
    }

    else
    {
      sub_1BA4A3D88();
      v15 = a2;
      v16 = sub_1BA4A3E88();
      v17 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v23 = v7;
        v20 = v19;
        v21 = swift_slowAlloc();
        v24 = v21;
        *v18 = 136315394;
        *(v18 + 4) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4DB040, &v24);
        *(v18 + 12) = 2112;
        *(v18 + 14) = v15;
        *v20 = a2;
        v22 = v15;
        _os_log_impl(&dword_1B9F07000, v16, v17, "%s Could not fetch displayType for %@", v18, 0x16u);
        sub_1B9F8C6C8(v20);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1BFAF43A0](v21, -1, -1);
        MEMORY[0x1BFAF43A0](v18, -1, -1);

        (*(v23 + 1))(v11, v6);
      }

      else
      {

        (v7)[1](v11, v6);
      }

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA42B814@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA4A1A48();

  return sub_1BA42B39C(a1);
}

double sub_1BA42B894@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6, v8).n128_u64[0];
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 localization];
  v13 = [v12 summary];

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    *(a3 + 24) = &type metadata for StandardDataTypeDescriptionProvider;
    *(a3 + 32) = &off_1F3821A00;
    v18 = *(a2 + 48);
    v19 = swift_allocObject();
    *a3 = v19;
    sub_1BA470D28(a1, v18, v19 + 16);
  }

  else
  {
LABEL_6:
    sub_1BA4A3D88();
    v21 = a1;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4DB040, &v33);
      *(v24 + 12) = 2080;
      v26 = [v21 debugDescription];
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v32 = v6;
      v28 = v27;
      v30 = v29;

      v31 = sub_1B9F0B82C(v28, v30, &v33);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_1B9F07000, v22, v23, "%s %s does not have a presentable summary.", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);

      (*(v7 + 8))(v11, v32);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t DataTypeDetailConfiguration.DescriptionComponent.init(displayType:contentInsetsReference:)@<X0>(uint64_t a1@<X0>, double (*a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X1>, double (**a3)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  a3[2] = a2;
  result = swift_allocObject();
  *(result + 16) = a1;
  *a3 = sub_1BA42BBDC;
  a3[1] = result;
  return result;
}

uint64_t DataTypeDetailConfiguration.DescriptionComponent.makeDataSource(context:)()
{
  v1 = *(v0 + 16);
  (*v0)(&v8);
  if (v9)
  {
    sub_1B9F1134C(&v8, v10);
    sub_1B9F0A534(v10, &v8);
    type metadata accessor for DataTypeDescriptionDataSource(0);
    swift_allocObject();
    v2 = DataTypeDescriptionDataSource.init(descriptionProvider:contentInsetsReference:)(&v8, v1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    sub_1BA42BD24(0);
    v3 = swift_allocObject();
    v4 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
    *(v3 + 16) = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
    *(v3 + 24) = v4;
    *(v3 + 32) = v2;
    *(v3 + 40) = 0;
  }

  else
  {
    sub_1B9F43A50(&v8, &qword_1EBBF27C8, &qword_1EDC646E0, &protocol descriptor for DataTypeDescriptionProviding);
    type metadata accessor for EmptyDataSource(0);
    swift_allocObject();
    v5 = EmptyDataSource.init()();
    sub_1BA42BD24(0);
    v3 = swift_allocObject();
    v6 = *(v5 + 24);
    *(v3 + 16) = *(v5 + 16);
    *(v3 + 24) = v6;
    *(v3 + 32) = v5;
    *(v3 + 40) = 1;
  }

  return v3;
}

void sub_1BA42BD24(uint64_t a1)
{
  if (!qword_1EDC66CE8)
  {
    v4[0] = type metadata accessor for DataTypeDescriptionDataSource(255);
    v4[1] = type metadata accessor for EmptyDataSource(255);
    v4[2] = &protocol witness table for MutableArrayDataSource;
    v4[3] = &protocol witness table for EmptyDataSource;
    v2 = type metadata accessor for _ConditionalDataSource(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC66CE8);
    }
  }
}

void sub_1BA42BE20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2 - 4;
  v6 = objc_opt_self();
  v7 = &selRef_tertiarySystemBackgroundColor;
  if ((v5 & 0xF7) != 0)
  {
    v7 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v8 = [v6 *v7];
  sub_1BA4A6048();
  v9 = sub_1BA4A6288();
  sub_1B9F806B4(0, &qword_1EBBF2830, sub_1BA42CE2C, &type metadata for PlatformCellBackgroundColor);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  sub_1BA42D08C(0);
  *(a2 + *(v11 + 36)) = v9;
}

uint64_t sub_1BA42BF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA42D1AC(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA42D698(0, &qword_1EBBF2860, sub_1BA42D2A0, sub_1BA42D1AC, MEMORY[0x1E697F948]);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v48 - v13;
  sub_1BA42D2A0(0, v12);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v49 = &v48 - v22;
  type metadata accessor for PlatformCellHighlightBackgroundColor(0);
  v23 = sub_1BA4A4078();
  v24 = *v2;
  if (v23)
  {
    v48 = a2;
    if ((v24 - 6) < 2)
    {
      v36 = objc_opt_self();
      v37 = [v36 systemGray5Color];
      v38 = [v36 tertiarySystemGroupedBackgroundColor];
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = v38;
      v39[4] = 0;
      v39[5] = v37;
      v40 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v54 = sub_1B9FD7F54;
      v55 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v51 = 1107296256;
      v52 = sub_1B9F7EBBC;
      v53 = &block_descriptor_118;
      v41 = _Block_copy(&aBlock);
      [v40 initWithDynamicProvider_];
      _Block_release(v41);

      v25 = a1;
    }

    else
    {
      v25 = a1;
      if (v24 == 4 || v24 == 12)
      {
        v26 = objc_opt_self();
        v27 = [v26 systemGray5Color];
        v28 = [v26 systemGray4Color];
        v29 = swift_allocObject();
        v29[2] = 0;
        v29[3] = v28;
        v29[4] = 0;
        v29[5] = v27;
        v30 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v54 = sub_1B9FE1088;
        v55 = v29;
        aBlock = MEMORY[0x1E69E9820];
        v51 = 1107296256;
        v52 = sub_1B9F7EBBC;
        v53 = &block_descriptor_35_1;
        v31 = _Block_copy(&aBlock);
        [v30 initWithDynamicProvider_];
        _Block_release(v31);
      }

      else
      {
        v42 = [objc_opt_self() systemGray5Color];
      }
    }

    v43 = v49;
    aBlock = sub_1BA4A6048();
    v44 = sub_1BA4A6288();
    sub_1BA42D20C(0);
    (*(*(v45 - 8) + 16))(v19, v25, v45);
    *&v19[*(v16 + 36)] = v44;
    sub_1BA42D7B0(v19, v43, sub_1BA42D2A0);
    sub_1BA42D478(v43, v14, sub_1BA42D2A0);
    swift_storeEnumTagMultiPayload();
    sub_1BA42D2E8(v46);
    sub_1BA42D3C8();
    sub_1BA4A58E8();
    v34 = sub_1BA42D2A0;
    v35 = v43;
  }

  else
  {
    sub_1BA42D20C(0);
    (*(*(v32 - 8) + 16))(v9, a1, v32);
    v9[*(v6 + 36)] = v24;
    sub_1BA42D478(v9, v14, sub_1BA42D1AC);
    swift_storeEnumTagMultiPayload();
    sub_1BA42D2E8(v33);
    sub_1BA42D3C8();
    sub_1BA4A58E8();
    v34 = sub_1BA42D1AC;
    v35 = v9;
  }

  return sub_1BA42D8F8(v35, v34);
}

uint64_t sub_1BA42C520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v51[1] = a2;
  sub_1BA42DD60(0, &qword_1EBBF28B8, MEMORY[0x1E697F948], a3);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = v51 - v8;
  sub_1BA42D650(0, v7);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v51 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v51 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v51 - v25;
  type metadata accessor for PlatformCellCornerAndHighlightBackground(0);
  v27 = sub_1BA4A4078();
  v28 = *v3;
  if (v27)
  {
    v51[0] = a1;
    if ((v28 - 6) < 2)
    {
      v41 = objc_opt_self();
      v42 = [v41 systemGray5Color];
      v43 = [v41 tertiarySystemGroupedBackgroundColor];
      v44 = swift_allocObject();
      v44[2] = 0;
      v44[3] = v43;
      v44[4] = 0;
      v44[5] = v42;
      v33 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v56 = sub_1B9FE1088;
      v57 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v34 = &block_descriptor_42_1;
    }

    else
    {
      if (v28 != 4 && v28 != 12)
      {
        v50 = [objc_opt_self() systemGray5Color];
        goto LABEL_11;
      }

      v29 = objc_opt_self();
      v30 = [v29 systemGray5Color];
      v31 = [v29 systemGray4Color];
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = v31;
      v32[4] = 0;
      v32[5] = v30;
      v33 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v56 = sub_1B9FE1088;
      v57 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v34 = &block_descriptor_49_1;
    }

    v54 = sub_1B9F7EBBC;
    v55 = v34;
    v45 = _Block_copy(&aBlock);
    [v33 initWithDynamicProvider_];
    _Block_release(v45);

LABEL_11:
    aBlock = sub_1BA4A6048();
    sub_1B9F80198();
    sub_1B9F801F0();
    v46 = sub_1BA4A6288();
    sub_1BA42D71C(0);
    (*(*(v47 - 8) + 16))(v22, v51[0], v47);
    *&v22[*(v11 + 36)] = v46;
    sub_1BA42D7B0(v22, v26, sub_1BA42D650);
    goto LABEL_12;
  }

  v35 = v28 - 4;
  v36 = objc_opt_self();
  v37 = &selRef_tertiarySystemBackgroundColor;
  if ((v35 & 0xF7) != 0)
  {
    v37 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v38 = [v36 *v37];
  aBlock = sub_1BA4A6048();
  sub_1B9F80198();
  sub_1B9F801F0();
  v39 = sub_1BA4A6288();
  sub_1BA42D71C(0);
  (*(*(v40 - 8) + 16))(v14, a1, v40);
  *&v14[*(v11 + 36)] = v39;
  sub_1BA42D7B0(v14, v18, sub_1BA42D650);
  v26 = v18;
LABEL_12:
  sub_1BA42D478(v26, v9, sub_1BA42D650);
  swift_storeEnumTagMultiPayload();
  sub_1BA42D818(v48);
  sub_1BA4A58E8();
  return sub_1BA42D8F8(v26, sub_1BA42D650);
}

uint64_t sub_1BA42CADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BA42D4E0(0);
  v8.n128_f64[0] = (*(*(v7 - 8) + 16))(a3, a1, v7);
  sub_1BA42D574(0, v8);
  v10 = a3 + *(v9 + 36);
  __asm { FMOV            V0.2D, #16.0 }

  *v10 = _Q0;
  *(v10 + 16) = _Q0;
  *(v10 + 32) = 0;
  LOBYTE(a1) = *v3;
  v16 = *(a2 + 20);
  sub_1BA42D698(0, &qword_1EBBF28B0, sub_1BA42D574, type metadata accessor for PlatformCellCornerAndHighlightBackground, MEMORY[0x1E697E830]);
  v18 = (a3 + *(v17 + 36));
  v19 = *(type metadata accessor for PlatformCellCornerAndHighlightBackground(0) + 20);
  v20 = sub_1BA4A40C8();
  result = (*(*(v20 - 8) + 16))(&v18[v19], &v3[v16], v20);
  *v18 = a1;
  return result;
}

uint64_t sub_1BA42CC40(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v19 - v13;
  LOBYTE(a1) = *a1;
  v16 = *(v15 + 20);
  v17 = sub_1BA4A40C8();
  (*(*(v17 - 8) + 16))(&v14[v16], a2, v17);
  *v14 = a1;
  MEMORY[0x1BFAF0A30](v14, a3, v11, a4);
  return sub_1BA42D8F8(v14, a6);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx016HealthExperienceB024PlatformCellCornerRadiusVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1BA4A5418();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1BA42CE2C()
{
  result = qword_1EBBF27E0;
  if (!qword_1EBBF27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF27E0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx016HealthExperienceB036PlatformCellHighlightBackgroundColorVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(255);
  sub_1BA4A5418();
  sub_1B9F8AA5C(a3, a4, a5);
  return swift_getWitnessTable();
}

uint64_t sub_1BA42CF90(uint64_t a1)
{
  result = sub_1BA4A40C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BA42D08C(uint64_t a1)
{
  if (!qword_1EBBF2838)
  {
    sub_1B9F806B4(255, &qword_1EBBF2830, sub_1BA42CE2C, &type metadata for PlatformCellBackgroundColor);
    sub_1BA42D118(255);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF2838);
    }
  }
}

void sub_1BA42D118(uint64_t a1)
{
  if (!qword_1EBBF2840)
  {
    sub_1BA4A5A18();
    sub_1B9F8AA5C(&qword_1EBBF2848, MEMORY[0x1E697C9E8], MEMORY[0x1E697C9E0]);
    v1 = sub_1BA4A5968();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF2840);
    }
  }
}

void sub_1BA42D1AC(uint64_t a1)
{
  if (!qword_1EBBF2850)
  {
    sub_1BA42D20C(255);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF2850);
    }
  }
}

void sub_1BA42D20C(uint64_t a1)
{
  if (!qword_1EBBF2858)
  {
    type metadata accessor for PlatformCellHighlightBackgroundColor(255);
    sub_1B9F8AA5C(&qword_1EBBF27E8, type metadata accessor for PlatformCellHighlightBackgroundColor, &unk_1BA4DB22C);
    v1 = sub_1BA4A5978();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF2858);
    }
  }
}

unint64_t sub_1BA42D2E8(__n128 a1)
{
  result = qword_1EBBF2870;
  if (!qword_1EBBF2870)
  {
    sub_1BA42D2A0(255, a1);
    sub_1B9F8AA5C(&qword_1EBBF2878, sub_1BA42D20C, MEMORY[0x1E697FDF8]);
    sub_1B9F8AA5C(&qword_1EBBF2880, sub_1BA42D118, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2870);
  }

  return result;
}

unint64_t sub_1BA42D3C8()
{
  result = qword_1EBBF2888;
  if (!qword_1EBBF2888)
  {
    sub_1BA42D1AC(255);
    sub_1B9F8AA5C(&qword_1EBBF2878, sub_1BA42D20C, MEMORY[0x1E697FDF8]);
    sub_1BA42CE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2888);
  }

  return result;
}

uint64_t sub_1BA42D478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA42D4E0(uint64_t a1)
{
  if (!qword_1EBBF2890)
  {
    type metadata accessor for PlatformCellBackgroundStyle(255);
    sub_1B9F8AA5C(&qword_1EBBF27F0, type metadata accessor for PlatformCellBackgroundStyle, &unk_1BA4DB1DC);
    v1 = sub_1BA4A5978();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF2890);
    }
  }
}

void sub_1BA42D5BC(uint64_t a1)
{
  if (!qword_1EBBF28A0)
  {
    sub_1BA4A5948();
    sub_1B9F8AA5C(&qword_1EBBF28A8, MEMORY[0x1E697C768], MEMORY[0x1E697C760]);
    v1 = sub_1BA4A5968();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF28A0);
    }
  }
}

void sub_1BA42D698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1BA42D71C(uint64_t a1)
{
  if (!qword_1EBBF28C8)
  {
    type metadata accessor for PlatformCellCornerAndHighlightBackground(255);
    sub_1B9F8AA5C(&qword_1EBBF27F8, type metadata accessor for PlatformCellCornerAndHighlightBackground, &unk_1BA4DB18C);
    v1 = sub_1BA4A5978();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF28C8);
    }
  }
}

uint64_t sub_1BA42D7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA42D818(__n128 a1)
{
  result = qword_1EBBF28D0;
  if (!qword_1EBBF28D0)
  {
    sub_1BA42D650(255, a1);
    sub_1B9F8AA5C(&qword_1EBBF28D8, sub_1BA42D71C, MEMORY[0x1E697FDF8]);
    sub_1B9F8AA5C(&qword_1EBBF2880, sub_1BA42D118, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF28D0);
  }

  return result;
}

uint64_t sub_1BA42D8F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BA42D958()
{
  result = qword_1EBBF28E0;
  if (!qword_1EBBF28E0)
  {
    sub_1BA42D08C(255);
    sub_1B9F8A8E4(&qword_1EBBF28E8, &qword_1EBBF2830, sub_1BA42CE2C, &type metadata for PlatformCellBackgroundColor);
    sub_1B9F8AA5C(&qword_1EBBF2880, sub_1BA42D118, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF28E0);
  }

  return result;
}

unint64_t sub_1BA42DA34()
{
  result = qword_1EBBF28F0;
  if (!qword_1EBBF28F0)
  {
    sub_1BA42D698(255, &qword_1EBBF28F8, sub_1BA42D2A0, sub_1BA42D1AC, MEMORY[0x1E697F960]);
    sub_1BA42D2E8(v1);
    sub_1BA42D3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF28F0);
  }

  return result;
}

unint64_t sub_1BA42DAF8()
{
  result = qword_1EBBF2900;
  if (!qword_1EBBF2900)
  {
    sub_1BA42D698(255, &qword_1EBBF28B0, sub_1BA42D574, type metadata accessor for PlatformCellCornerAndHighlightBackground, MEMORY[0x1E697E830]);
    sub_1BA42DBEC(v1);
    sub_1B9F8AA5C(&qword_1EBBF27F8, type metadata accessor for PlatformCellCornerAndHighlightBackground, &unk_1BA4DB18C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2900);
  }

  return result;
}

unint64_t sub_1BA42DBEC(__n128 a1)
{
  result = qword_1EBBF2908;
  if (!qword_1EBBF2908)
  {
    sub_1BA42D574(255, a1);
    sub_1B9F8AA5C(&qword_1EBBF2910, sub_1BA42D4E0, MEMORY[0x1E697FDF8]);
    sub_1B9F8AA5C(&qword_1EBBF2918, sub_1BA42D5BC, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2908);
  }

  return result;
}

unint64_t sub_1BA42DCCC(__n128 a1)
{
  result = qword_1EBBF2920;
  if (!qword_1EBBF2920)
  {
    sub_1BA42DD60(255, &qword_1EBBF2928, MEMORY[0x1E697F960], a1);
    sub_1BA42D818(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2920);
  }

  return result;
}

void sub_1BA42DD60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    sub_1BA42D650(255, a4);
    v8 = a3(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double SettingsItemSection.init(data:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  sub_1BA18F124();
  sub_1BA4A0E98();

  sub_1B9F2BB4C(a1, a2);
  if (!v3)
  {
    result = *&v8;
    *a3 = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v10;
    *(a3 + 32) = v11;
  }

  return result;
}

uint64_t SettingsItem.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SettingsItem.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  sub_1BA42DF90();
  sub_1BA4A0E98();

  result = sub_1B9F2BB4C(a1, a2);
  if (!v3)
  {
    *a3 = v8;
    a3[1] = v9;
  }

  return result;
}

unint64_t sub_1BA42DF90()
{
  result = qword_1EBBF2930;
  if (!qword_1EBBF2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2930);
  }

  return result;
}

uint64_t SettingsItem.encode()()
{
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  sub_1BA42E078();
  v0 = sub_1BA4A0EC8();

  return v0;
}

unint64_t sub_1BA42E078()
{
  result = qword_1EDC69508;
  if (!qword_1EDC69508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69508);
  }

  return result;
}

void sub_1BA42E0E0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1BA42E164(uint64_t a1)
{
  v2 = sub_1BA42E344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA42E1A0(uint64_t a1)
{
  v2 = sub_1BA42E344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SettingsItem.encode(to:)(void *a1)
{
  sub_1BA42EF6C(0, &qword_1EDC5DDE0, sub_1BA42E344, &type metadata for SettingsItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA42E344();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BA42E344()
{
  result = qword_1EDC69520;
  if (!qword_1EDC69520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69520);
  }

  return result;
}

uint64_t SettingsItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1BA42EF6C(0, &qword_1EBBF2938, sub_1BA42E344, &type metadata for SettingsItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA42E344();
  sub_1BA4A8528();
  if (!v2)
  {
    v10 = v16;
    v11 = sub_1BA4A8188();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *v10 = v11;
    v10[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BA42E558(void *a1)
{
  sub_1BA42EF6C(0, &qword_1EDC5DDE0, sub_1BA42E344, &type metadata for SettingsItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA42E344();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SettingsItemSection.headerTitle.getter()
{
  v1 = *v0;

  return v1;
}

void SettingsItemSection.headerTitle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

double SettingsItemSection.item.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

void SettingsItemSection.item.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t SettingsItemSection.footerText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void SettingsItemSection.footerText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void __swiftcall SettingsItemSection.init(headerTitle:item:footerText:)(HealthExperienceUI::SettingsItemSection *__return_ptr retstr, Swift::String_optional headerTitle, HealthExperienceUI::SettingsItem item, Swift::String_optional footerText)
{
  v4 = *item.title._countAndFlagsBits;
  v5 = *(item.title._countAndFlagsBits + 8);
  retstr->headerTitle = headerTitle;
  retstr->item.title._countAndFlagsBits = v4;
  retstr->item.title._object = v5;
  retstr->footerText.value._countAndFlagsBits = item.title._object;
  retstr->footerText.value._object = footerText.value._countAndFlagsBits;
}

uint64_t SettingsItemSection.encode()()
{
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  sub_1BA42E8E8();
  v0 = sub_1BA4A0EC8();

  return v0;
}

unint64_t sub_1BA42E8E8()
{
  result = qword_1EDC67CE8;
  if (!qword_1EDC67CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67CE8);
  }

  return result;
}

uint64_t sub_1BA42E93C()
{
  v1 = 1835365481;
  if (*v0 != 1)
  {
    v1 = 0x65547265746F6F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6954726564616568;
  }
}

uint64_t sub_1BA42E99C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA42F254(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA42E9C4(uint64_t a1)
{
  v2 = sub_1BA42EC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA42EA00(uint64_t a1)
{
  v2 = sub_1BA42EC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SettingsItemSection.encode(to:)(void *a1)
{
  sub_1BA42EF6C(0, &qword_1EDC5DDB0, sub_1BA42EC50, &type metadata for SettingsItemSection.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - v7;
  v9 = v1[3];
  v14 = v1[2];
  v15 = v9;
  v10 = v1[4];
  v13[1] = v1[5];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA42EC50();
  sub_1BA4A8548();
  LOBYTE(v17) = 0;
  v11 = v16;
  sub_1BA4A8208();
  if (!v11)
  {
    v17 = v14;
    v18 = v15;
    v19 = 1;
    sub_1BA42E078();

    sub_1BA4A8288();

    LOBYTE(v17) = 2;
    sub_1BA4A8208();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1BA42EC50()
{
  result = qword_1EDC67D00;
  if (!qword_1EDC67D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67D00);
  }

  return result;
}

void SettingsItemSection.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_1BA42EF6C(0, &qword_1EBBF2940, sub_1BA42EC50, &type metadata for SettingsItemSection.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA42EC50();
  sub_1BA4A8528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v6;
    v11 = v24;
    LOBYTE(v25) = 0;
    v12 = sub_1BA4A8138();
    v14 = v13;
    v23 = v12;
    v27 = 1;
    sub_1BA42DF90();
    sub_1BA4A81C8();
    v15 = v26;
    v22 = v25;
    LOBYTE(v25) = 2;
    v16 = sub_1BA4A8138();
    v18 = v17;
    v19 = *(v10 + 8);
    v21 = v16;
    v19(v9, v5);
    v20 = v22;
    *v11 = v23;
    v11[1] = v14;
    v11[2] = v20;
    v11[3] = v15;
    v11[4] = v21;
    v11[5] = v18;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1BA42EF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1BA42F048()
{
  result = qword_1EBBF2948;
  if (!qword_1EBBF2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2948);
  }

  return result;
}

unint64_t sub_1BA42F0A0()
{
  result = qword_1EBBF2950;
  if (!qword_1EBBF2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2950);
  }

  return result;
}

unint64_t sub_1BA42F0F8()
{
  result = qword_1EDC67CF0;
  if (!qword_1EDC67CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67CF0);
  }

  return result;
}

unint64_t sub_1BA42F150()
{
  result = qword_1EDC67CF8;
  if (!qword_1EDC67CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67CF8);
  }

  return result;
}

unint64_t sub_1BA42F1A8()
{
  result = qword_1EDC69510;
  if (!qword_1EDC69510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69510);
  }

  return result;
}

unint64_t sub_1BA42F200()
{
  result = qword_1EDC69518;
  if (!qword_1EDC69518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69518);
  }

  return result;
}

uint64_t sub_1BA42F254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6954726564616568 && a2 == 0xEB00000000656C74;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1835365481 && a2 == 0xE400000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65547265746F6F66 && a2 == 0xEA00000000007478)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_1BA42F378@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  v7 = v4 == 0xD000000000000033 && 0x80000001BA4E9340 == v6;
  if (v7 || (sub_1BA4A8338() & 1) != 0)
  {

    v9 = &type metadata for WalkingSteadinessEventItemTextProvider;
    v10 = &off_1F3802070;
LABEL_16:
    *(a2 + 24) = v9;
    *(a2 + 32) = v10;
    return result;
  }

  v11 = v4 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v6;
  if (v11 || (sub_1BA4A8338() & 1) != 0 || v4 == 0xD000000000000029 && 0x80000001BA4E9230 == v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v9 = &type metadata for HighLowHeartRateEventItemTextProvider;
    v10 = &off_1F3802090;
    goto LABEL_16;
  }

  if (v4 == 0xD000000000000038 && 0x80000001BA4E9380 == v6 || (sub_1BA4A8338() & 1) != 0 || v4 == 0xD000000000000031 && 0x80000001BA4E93C0 == v6 || (sub_1BA4A8338() & 1) != 0 || v4 == 0xD000000000000030 && 0x80000001BA4E9400 == v6 || (sub_1BA4A8338() & 1) != 0 || v4 == 0xD000000000000031 && 0x80000001BA4E9440 == v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v9 = &type metadata for SampleRangeItemTextProvider;
    v10 = &off_1F38020B0;
    goto LABEL_16;
  }

  if (v4 == 0xD000000000000029 && 0x80000001BA4E94B0 == v6)
  {

LABEL_34:
    v9 = &type metadata for HypertensionEventItemTextProvider;
    v10 = &off_1F38020D0;
    goto LABEL_16;
  }

  v12 = sub_1BA4A8338();

  if (v12)
  {
    goto LABEL_34;
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id MessageWithActionTileView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

Swift::Void __swiftcall MessageWithActionTileView.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  if (with.value._object)
  {
    object = with.value._object;
    countAndFlagsBits = with.value._countAndFlagsBits;
    sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5460;
    *(v4 + 32) = countAndFlagsBits;
    *(v4 + 40) = object;
    *(v4 + 48) = 2003134806;
    *(v4 + 56) = 0xE400000000000000;
    swift_bridgeObjectRetain_n();
    v5 = sub_1BA4A6AE8();

    v6 = HKUIJoinStringsForAutomationIdentifier();

    [v1 setAccessibilityIdentifier_];
    v7 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5460;
    *(v8 + 32) = countAndFlagsBits;
    *(v8 + 40) = object;
    *(v8 + 48) = 0x656C746954;
    *(v8 + 56) = 0xE500000000000000;

    v9 = sub_1BA4A6AE8();

    v10 = HKUIJoinStringsForAutomationIdentifier();

    [v7 setAccessibilityIdentifier_];
    v11 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BA4B5460;
    *(v12 + 32) = countAndFlagsBits;
    *(v12 + 40) = object;
    *(v12 + 48) = 0x7470697263736544;
    *(v12 + 56) = 0xEB000000006E6F69;

    v13 = sub_1BA4A6AE8();

    v14 = HKUIJoinStringsForAutomationIdentifier();

    [v11 setAccessibilityIdentifier_];
    v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BA4B5460;
    *(v16 + 32) = countAndFlagsBits;
    *(v16 + 40) = object;
    *(v16 + 48) = 1802398028;
    *(v16 + 56) = 0xE400000000000000;
    v17 = sub_1BA4A6AE8();

    v19 = HKUIJoinStringsForAutomationIdentifier();

    [v15 setAccessibilityIdentifier_];
  }

  else
  {
    [v1 setAccessibilityIdentifier_];
    [*&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel] setAccessibilityIdentifier_];
    [*&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel] setAccessibilityIdentifier_];
    v18 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];

    [v18 setAccessibilityIdentifier_];
  }
}

void *sub_1BA42FA1C()
{
  sub_1B9F6C190(0, &qword_1EDC5F868, MEMORY[0x1E69DC2E8]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v17 - v2;
  v4 = sub_1BA4A7938();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A79A8();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1B9F0ADF8(0, &qword_1EDC5E0A0, 0x1E69DC738);
  sub_1BA4A7998();
  (*(v5 + 104))(v8, *MEMORY[0x1E69DC560], v4);
  sub_1BA4A7828();
  sub_1BA4A4898();
  v11 = sub_1BA4A4888();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  sub_1BA4A7928();
  sub_1BA4A7918();
  v12 = sub_1BA4A79B8();
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setContentHorizontalAlignment_];
  [v12 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v13 = [v12 titleLabel];
  [v13 setAdjustsFontForContentSizeCategory_];

  v14 = [v12 titleLabel];
  if (v14)
  {
    v15 = v14;
    [v14 setNumberOfLines_];
  }

  return v12;
}

id sub_1BA42FCF0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69A44A8]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() opaqueSeparatorColor];
    [v4 setColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1BA42FDCC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B9F7B0D4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B9F0F1B8(v4, v5);
}

uint64_t sub_1BA42FE6C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA4323AC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B9F0F1B8(v3, v4);
  return sub_1B9F0E310(v8, v9);
}

uint64_t sub_1BA42FF34()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  swift_beginAccess();
  v2 = *v1;
  sub_1B9F0F1B8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1BA42FF90(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B9F0E310(v6, v7);
}

id MessageWithActionTileView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = *MEMORY[0x1E69DDCF8];
  v16 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
  [v14 setFont_];

  [v14 setAdjustsFontForContentSizeCategory_];
  [v14 setNumberOfLines_];
  v17 = objc_opt_self();
  v18 = [v17 labelColor];
  [v14 setTextColor_];

  [v14 setTextAlignment_];
  *&v5[v13] = v14;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = objc_opt_self();
  v21 = [v20 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  }

  else
  {
    v57 = v10;
    sub_1BA4A3DD8();
    v24 = v15;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v62 = v56;
      *v27 = 136315906;
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = sub_1B9F0B82C(v28, v29, &v62);

      *(v27 + 4) = v30;
      v54 = v26;
      *(v27 + 12) = 2080;
      v60 = 0;
      v61 = 1;
      sub_1B9F6C190(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v62);

      *(v27 + 14) = v33;
      *(v27 + 22) = 2080;
      LODWORD(v60) = 0;
      type metadata accessor for SymbolicTraits(0);
      v34 = sub_1BA4A6808();
      v36 = sub_1B9F0B82C(v34, v35, &v62);

      *(v27 + 24) = v36;
      *(v27 + 32) = 2112;
      v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v27 + 34) = v37;
      v38 = v55;
      *v55 = v37;
      _os_log_impl(&dword_1B9F07000, v25, v54, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v27, 0x2Au);
      sub_1B9F8C6C8(v38);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      v39 = v56;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v58 + 8))(v59, v57);
    v40 = [v20 preferredFontDescriptorWithTextStyle_];
    v23 = [objc_opt_self() fontWithDescriptor:v40 size:0.0];
  }

  v41 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
  [v19 setFont_];

  [v19 setAdjustsFontForContentSizeCategory_];
  v42 = [v17 secondaryLabelColor];
  [v19 setTextColor_];

  [v19 setNumberOfLines_];
  [v19 setLineBreakMode_];
  [v19 setTextAlignment_];
  *&v5[v41] = v19;
  v43 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
  *&v5[v43] = sub_1BA42FA1C();
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint] = 0;
  v44 = &v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton];
  v45 = type metadata accessor for MessageWithActionTileView();
  *v44 = 0;
  *(v44 + 1) = 0;
  v63.receiver = v5;
  v63.super_class = v45;
  v46 = objc_msgSendSuper2(&v63, sel_initWithFrame_, a1, a2, a3, a4);
  v47 = *MEMORY[0x1E69796E8];
  v48 = v46;
  v49 = [v48 layer];
  [v49 setCornerCurve_];

  v50 = [v48 layer];
  [v50 setCornerRadius_];

  v51 = [v48 layer];
  [v51 setMaskedCorners_];

  [v48 setClipsToBounds_];
  sub_1BA430AB4();

  return v48;
}

id sub_1BA43073C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v4 = [v3 text];
  if (v4)
  {

    v5 = sub_1BA42FCF0();
    v6 = [v5 topAnchor];

    v7 = v3;
  }

  else
  {
    v8 = sub_1BA42FCF0();
    v6 = [v8 topAnchor];

    v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  }

  v9 = [v7 bottomAnchor];
  v10 = [v6 constraintEqualToAnchor:v9 constant:12.0];

  v11 = *&v0[v1];
  *&v0[v1] = v10;
  v12 = v10;

  if (v12)
  {
    [v12 setActive_];
  }

  v13 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint;
  v14 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint];
  if (v14)
  {
    [v14 setActive_];
  }

  v15 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v16 = [v15 titleForState_];
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = [v0 safeAreaLayoutGuide];
    v23 = [v22 bottomAnchor];

    v3 = v15;
  }

  else
  {
LABEL_15:
    v24 = [v3 text];
    if (v24)
    {

      v25 = [v0 safeAreaLayoutGuide];
      v23 = [v25 bottomAnchor];
    }

    else
    {
      v26 = [v0 safeAreaLayoutGuide];
      v23 = [v26 bottomAnchor];

      v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
    }
  }

  v27 = [v3 bottomAnchor];
  v28 = [v23 constraintEqualToAnchor:v27 constant:16.0];

  v29 = *&v0[v13];
  *&v0[v13] = v28;
  v30 = v28;

  if (v30)
  {
    [v30 setActive_];
  }

  v32.receiver = v0;
  v32.super_class = type metadata accessor for MessageWithActionTileView();
  return objc_msgSendSuper2(&v32, sel_updateConstraints);
}

void sub_1BA430AB4()
{
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  [v0 addSubview_];
  v2 = sub_1BA42FCF0();
  [v0 addSubview_];

  [v1 addTarget:v0 action:sel_didTapAction_ forControlEvents:64];

  sub_1BA430B74();
}

void sub_1BA430B74()
{
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  v1 = sub_1BA42FCF0();
  v2 = [v1 topAnchor];

  v58 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v3 = [v58 bottomAnchor];
  v4 = [v2 constraintEqualToAnchor:v3 constant:12.0];

  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint] = v4;
  v61 = v4;

  v6 = [v0 safeAreaLayoutGuide];
  v7 = [v6 bottomAnchor];

  v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:16.0];

  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint] = v10;
  v64 = v10;

  v12 = [v8 topAnchor];
  v57 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator;
  v13 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator] bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:12.0];

  v15 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint] = v14;
  v59 = v14;

  v63 = objc_opt_self();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4DB660;
  v17 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  v18 = [v17 topAnchor];
  v19 = [v0 safeAreaLayoutGuide];
  v20 = [v19 topAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:14.0];
  *(v16 + 32) = v21;
  v22 = [v17 leadingAnchor];
  v23 = [v0 safeAreaLayoutGuide];
  v24 = [v23 leadingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:16.0];
  *(v16 + 40) = v25;
  v26 = [v0 safeAreaLayoutGuide];
  v27 = [v26 trailingAnchor];

  v28 = [v17 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:16.0];

  *(v16 + 48) = v29;
  v30 = [v58 topAnchor];
  v31 = [v17 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:4.0];

  *(v16 + 56) = v32;
  v33 = [v58 leadingAnchor];
  v34 = [v17 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v16 + 64) = v35;
  v36 = [v58 trailingAnchor];
  v37 = [v17 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v16 + 72) = v38;
  *(v16 + 80) = v61;
  v39 = *&v0[v57];
  v62 = v61;
  v40 = [v39 &selRef__totalDistance + 1];
  v41 = [v8 &selRef__totalDistance + 1];
  v42 = [v40 constraintEqualToAnchor_];

  *(v16 + 88) = v42;
  v43 = [*&v0[v57] trailingAnchor];
  v44 = [v0 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v16 + 96) = v45;
  *(v16 + 104) = v59;
  v60 = v59;
  v46 = [v8 &selRef__totalDistance + 1];
  v47 = [v17 &selRef__totalDistance + 1];
  v48 = [v46 constraintEqualToAnchor_];

  *(v16 + 112) = v48;
  v49 = [v8 trailingAnchor];
  v50 = [v17 trailingAnchor];
  v51 = [v49 constraintLessThanOrEqualToAnchor_];

  *(v16 + 120) = v51;
  *(v16 + 128) = v64;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v52 = v64;
  v53 = sub_1BA4A6AE8();

  [v63 activateConstraints_];

  LODWORD(v54) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v54];
  LODWORD(v55) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v55];
  LODWORD(v56) = 1148846080;
  [v8 setContentHuggingPriority:0 forAxis:v56];
}

uint64_t sub_1BA43131C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton;
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v9(v11);
    return sub_1B9F0E310(v9, v10);
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136446210;
      v21[4] = ObjectType;
      swift_getMetatypeMetadata();
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%{public}s] didTapActionButton is not set and needs to be set to provide an action for the MessageWithActionTileView link", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_1BA431588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  if (a2)
  {
    v15 = sub_1BA4A6758();
  }

  else
  {
    v15 = 0;
  }

  [v14 setText_];

  v16 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  if (a4)
  {
    v17 = sub_1BA4A6758();
  }

  else
  {
    v17 = 0;
  }

  [v16 setText_];

  [v16 setHidden_];
  v18 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B9F7B15C;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1B9F7B0CC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F7B0FC;
  aBlock[3] = &block_descriptor_119;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  [v19 performWithoutAnimation_];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v25 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v25 = a5 & 0xFFFFFFFFFFFFLL;
    }

    [v23 setHidden_];
    [v10 setBackgroundColor_];
    [v10 updateConstraints];
    v26 = sub_1BA42FCF0();
    [v26 setHidden_];

    v27 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
    if (v27)
    {
      v28 = 0.0;
      if (a7)
      {
        v28 = 12.0;
      }

      [v27 setConstant_];
    }

    v29 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
    if (v29)
    {
      [v29 setConstant_];
    }

    v30.value._countAndFlagsBits = a9;
    v30.value._object = a10;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v30);
  }
}

void sub_1BA43187C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8, void *a9)
{
  with.value._countAndFlagsBits = a8;
  [*&v9[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel] setAttributedText_];
  v14 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v31 = a6;
  if (a3)
  {
    v15 = sub_1BA4A6758();
  }

  else
  {
    v15 = 0;
  }

  [v14 setText_];

  [v14 setHidden_];
  v16 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BA02C5F4;
  *(v19 + 24) = v18;
  v36 = sub_1B9F89DF8;
  v37 = v19;
  with.value._object = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1B9F7B0FC;
  v35 = &block_descriptor_14_5;
  v20 = _Block_copy(&with.value._object);

  v21 = v16;

  [v17 performWithoutAnimation_];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    v22 = HIBYTE(a5) & 0xF;
    if ((a5 & 0x2000000000000000) == 0)
    {
      v22 = a4 & 0xFFFFFFFFFFFFLL;
    }

    v23 = v22 == 0;
    if (a5)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    [v21 setHidden_];
    [v9 setBackgroundColor_];
    [v9 updateConstraints];
    v25 = sub_1BA42FCF0();
    [v25 setHidden_];

    v26 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
    if (v26)
    {
      v27 = 0.0;
      if (v31)
      {
        v27 = 12.0;
      }

      [v26 setConstant_];
    }

    v28 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
    if (v28)
    {
      [v28 setConstant_];
    }

    v29.value._countAndFlagsBits = with.value._countAndFlagsBits;
    v29.value._object = a9;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v29);
  }
}

id MessageWithActionTileView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MessageWithActionTileView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA431DD8()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v42 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = *MEMORY[0x1E69DDCF8];
  v8 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
  [v6 setFont_];

  [v6 setAdjustsFontForContentSizeCategory_];
  [v6 setNumberOfLines_];
  v9 = objc_opt_self();
  v10 = [v9 labelColor];
  [v6 setTextColor_];

  [v6 setTextAlignment_];
  *(v1 + v5) = v6;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = objc_opt_self();
  v13 = [v12 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:0];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
  }

  else
  {
    v41 = v2;
    sub_1BA4A3DD8();
    v16 = v7;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46 = v40;
      *v19 = 136315906;
      v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v22 = sub_1B9F0B82C(v20, v21, &v46);

      *(v19 + 4) = v22;
      v38 = v18;
      *(v19 + 12) = 2080;
      v44 = 0;
      v45 = 1;
      sub_1B9F6C190(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v46);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2080;
      LODWORD(v44) = 0;
      type metadata accessor for SymbolicTraits(0);
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v46);

      *(v19 + 24) = v28;
      *(v19 + 32) = 2112;
      v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v19 + 34) = v29;
      v30 = v39;
      *v39 = v29;
      _os_log_impl(&dword_1B9F07000, v17, v38, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
      sub_1B9F8C6C8(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      v31 = v40;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v42 + 8))(v43, v41);
    v32 = [v12 preferredFontDescriptorWithTextStyle_];
    v15 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
  }

  v33 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
  [v11 setFont_];

  [v11 setAdjustsFontForContentSizeCategory_];
  v34 = [v9 secondaryLabelColor];
  [v11 setTextColor_];

  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  [v11 setTextAlignment_];
  *(v1 + v33) = v11;
  v35 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
  *(v1 + v35) = sub_1BA42FA1C();
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint) = 0;
  v36 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  *v36 = 0;
  v36[1] = 0;
  sub_1BA4A8018();
  __break(1u);
}

id NavigationBarScrollAnimationCustomizing<>.scrollView.getter()
{
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

BOOL NavigationBarScrollAnimationCustomizing.navigationBarShouldBeVisible.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v5 = (*(a2 + 8))(a1, a2);
  [v4 contentOffset];
  v7 = v6;
  [v4 adjustedContentInset];
  v9 = v8;

  return v7 + v9 > v5;
}

void NavigationBarScrollAnimationCustomizing<>.configureNavigationItemForCustomScrollAnimation()(uint64_t a1, uint64_t a2)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v5 = [v2 navigationItem];
    [v5 _setManualScrollEdgeAppearanceEnabled_];

    NavigationBarScrollAnimationCustomizing<>.updateNavigationBarForManualScrollAppearance(animated:)(0, a1, a2);
  }
}

void NavigationBarScrollAnimationCustomizing<>.updateNavigationBarForManualScrollAppearance(animated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v8 = [v3 navigationItem];
    [v8 _manualScrollEdgeAppearanceProgress];
    v10 = v9;

    v18[0] = v4;
    if (NavigationBarScrollAnimationCustomizing.navigationBarShouldBeVisible.getter(a2, a3))
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    if (v10 != v11)
    {
      if (v7)
      {
        v12 = objc_opt_self();
        v18[0] = v4;
        v13 = (*(a3 + 16))(a2, a3);
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = a3;
        *(v14 + 32) = v4;
        *(v14 + 40) = v11;
        v18[4] = sub_1BA4327B8;
        v18[5] = v14;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 1107296256;
        v18[2] = sub_1B9F0B040;
        v18[3] = &block_descriptor_120;
        v15 = _Block_copy(v18);
        v16 = v4;

        [v12 animateWithDuration:v15 animations:v13];
        _Block_release(v15);
      }

      else
      {
        v17 = [v4 navigationItem];
        [v17 _setManualScrollEdgeAppearanceProgress_];
      }
    }
  }
}

double CGFloat.percent(through:)(double a1, double a2, double a3)
{
  v3 = 0.0;
  if (a3 > a1)
  {
    v3 = 1.0;
    if (a2 > a3)
    {
      return (a3 - a1) / (a2 - a1);
    }
  }

  return v3;
}

BOOL static NavigationBarScrollAnimationCustomizing.navigationBarIsVisible(scrollView:thresholdY:)(void *a1, double a2)
{
  [a1 contentOffset];
  v5 = v4;
  [a1 adjustedContentInset];
  return v5 + v6 > a2;
}

void sub_1BA4327B8()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 32) navigationItem];
  [v2 _setManualScrollEdgeAppearanceProgress_];
}

uint64_t sub_1BA432860()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_isInEditMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BA4328A4(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_isInEditMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t _s18HealthExperienceUI0A21DetailsViewControllerC10dataSource3forAA021CompoundSectionedDataH0CSo06UIViewF0C_tF_0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource);
  }

  else
  {
    v3 = v0;
    UIViewController.resolvedHealthExperienceStore.getter(v8);
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = sub_1BA4A1B68();
    __swift_destroy_boxed_opaque_existential_1(v8);
    v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_healthStore);
    type metadata accessor for HealthDetailsCompoundDataSource(0);
    swift_allocObject();
    v6 = v5;
    v2 = sub_1BA17933C(v6, v4);

    *(v3 + v1) = v2;
  }

  return v2;
}

id HealthDetailsViewController.__allocating_init(healthStore:inEditMode:)(void *a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems] = 1;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_healthStore] = a1;
  v5[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_isInEditMode] = a2;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC840]);
  v7 = a1;
  v8 = [v6 init];
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCollectionViewLayout_, v8);

  return v9;
}

id HealthDetailsViewController.init(healthStore:inEditMode:)(void *a1, char a2)
{
  v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems] = 1;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_healthStore] = a1;
  v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_isInEditMode] = a2;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC840]);
  v5 = a1;
  v6 = [v4 init];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for HealthDetailsViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCollectionViewLayout_, v6);

  return v7;
}

id HealthDetailsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HealthDetailsViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems) = 1;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA432D18()
{
  v1 = type metadata accessor for HealthDetailsViewController();
  v12[3] = v1;
  v12[4] = &protocol witness table for HealthDetailsViewController;
  v12[0] = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  v3 = v0;
  sub_1B9F10C48(v12, v0 + v2);
  swift_endAccess();
  v11.receiver = v3;
  v11.super_class = v1;
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v4 = [v3 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() systemGroupedBackgroundColor];
    [v5 setBackgroundColor_];

    v7 = [*&v3[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_healthStore] profileIdentifier];
    v8 = [v7 type];

    if (v8 == 1)
    {
      v9 = [v3 navigationItem];
      v10 = [v3 editButtonItem];
      [v9 setRightBarButtonItem_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA432F88(char a1, char a2)
{
  v5 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_healthStore] profileIdentifier];
  v6 = [v5 type];

  if (v6 == 1)
  {
    v12.receiver = v2;
    v12.super_class = type metadata accessor for HealthDetailsViewController();
    objc_msgSendSuper2(&v12, sel_setEditing_animated_, a1 & 1, a2 & 1);
    v7 = OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems;
    if (v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems] == 1)
    {
      _s18HealthExperienceUI0A21DetailsViewControllerC10dataSource3forAA021CompoundSectionedDataH0CSo06UIViewF0C_tF_0();
      sub_1BA2ED190(a1 & 1);
    }

    v2[v7] = 1;
    v8 = [v2 isEditing];
    v9 = [v2 navigationItem];
    v10 = v9;
    if (v8)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v2 action:sel_resetCharacteristics];
      [v10 setLeftBarButtonItem_];

      v10 = v11;
    }

    else
    {
      [v9 setLeftBarButtonItem_];
    }
  }
}

id HealthDetailsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

double sub_1BA43323C()
{

  return result;
}

id HealthDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ProfileAllDataDataSource.NavigationItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ProfileAllDataDataSource.NavigationItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ProfileAllDataDataSource.NavigationItem.makeViewControllerToPush.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

id sub_1BA433560@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B9F0A534(a2, (a3 + 1));
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A1318();
  v8 = v7;
  v9 = sub_1BA4A6758();
  v10 = [objc_opt_self() systemImageNamed_];

  sub_1B9F0A534(a2, v15);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_1B9F1134C(v15, v11 + 24);
  type metadata accessor for ProfileNavigationCollectionViewCell();
  sub_1BA1809F0();
  v14 = a1;
  a3[8] = sub_1BA4A6808();
  a3[9] = v12;
  *a3 = v14;
  a3[6] = 0xD000000000000034;
  a3[7] = 0x80000001BA508A00;
  a3[10] = v6;
  a3[11] = v8;
  a3[12] = v10;
  a3[13] = sub_1BA434124;
  a3[14] = v11;

  return v14;
}

id sub_1BA433750(void *a1, uint64_t a2)
{
  sub_1B9F0A534(a2, v15);
  v3 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  v4 = v16;
  v5 = v17;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v7 = MEMORY[0x1EEE9AC00](v6, v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v11 = a1;
  v12 = sub_1BA38A128(v11, v9, v3, v4, v5);

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

char *sub_1BA433870(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B9F0A534(a2, v10);
  sub_1B9F0A534(a3, v9);
  v5 = objc_allocWithZone(type metadata accessor for ProfileCategoriesViewController());
  v6 = a1;
  v7 = sub_1BA3F9C88(v6, v10, v9);

  return v7;
}

Swift::Void __swiftcall ProfileAllDataDataSource.NavigationItem.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  v4 = (*(v2 + 104))(_);
  [(UIViewController *)in showViewController:v4 sender:in];
}

void sub_1BA433958(uint64_t a1, void *a2)
{
  v4 = (*(v2 + 104))(a1);
  [a2 showViewController:v4 sender:a2];
}

uint64_t sub_1BA4339BC(uint64_t a1)
{
  v2 = sub_1BA4340D0();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id sub_1BA433A08(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v6 = result;
    v7 = [result isiPad];

    if (v7)
    {
      static GridLayoutEngine.maximumOfTwoItemsLayout.getter(v13);
      v12[0] = v3;
      v12[1] = v2;
      v12[2] = v4;
      v8 = GridLayoutEngine.layout(for:)(v12);
      v11[2] = v13[2];
      v11[3] = v13[3];
      v11[4] = v13[4];
      v11[0] = v13[0];
      v11[1] = v13[1];
      if (v1)
      {
        return sub_1B9F5A690(v11);
      }

      else
      {
        v10 = v8;
        sub_1B9F5A690(v11);
        return v10;
      }
    }

    else
    {
      if (qword_1EDC6CB88 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for ListLayoutConfiguration(0);
      __swift_project_value_buffer(v9, qword_1EDC6CB90);
      return ListLayoutConfiguration.layout(for:)(v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s18HealthExperienceUI014ProfileAllDataF6SourceC014makeNavigationfG011healthStore0jbK020pinnedContentManagerAA0fG10WithLayoutCyAA05ArrayfG0CGSo08HKHealthK0C_0A8Platform0abK0_pAO06PinnedM8Managing_ptFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v36 = sub_1BA4A1798();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6F90];
  sub_1B9F321E0(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F321E0(0, &qword_1EDC5DCA0, sub_1B9F32244, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5460;
  *(v9 + 56) = &type metadata for ProfileAllDataDataSource.NavigationItem;
  v10 = sub_1BA433FC8();
  *(v9 + 64) = v10;
  v11 = swift_allocObject();
  *(v9 + 32) = v11;
  sub_1BA433560(a1, a3, (v11 + 16));
  *(v9 + 96) = &type metadata for ProfileAllDataDataSource.NavigationItem;
  *(v9 + 104) = v10;
  v12 = swift_allocObject();
  *(v9 + 72) = v12;
  sub_1B9F0A534(a3, (v12 + 3));
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v32 = 0x80000001BA4EF6A0;
  v13 = sub_1BA4A1318();
  v15 = v14;
  v16 = sub_1BA4A6758();
  v17 = [objc_opt_self() systemImageNamed_];

  sub_1B9F0A534(v33, v39);
  sub_1B9F0A534(a3, v38);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  sub_1B9F1134C(v39, v18 + 24);
  sub_1B9F1134C(v38, v18 + 64);
  v37 = type metadata accessor for ProfileNavigationCollectionViewCell();
  sub_1BA1809F0();
  v19 = a1;
  v12[10] = sub_1BA4A6808();
  v12[11] = v20;
  v12[2] = v19;
  v12[8] = 0xD000000000000037;
  v12[9] = v32;
  v12[12] = v13;
  v12[13] = v15;
  v12[14] = v17;
  v12[15] = sub_1BA1809E0;
  v12[16] = v18;
  v21 = inited;
  *(inited + 32) = v9;
  *&v39[0] = 0x3C53447961727241;
  *(&v39[0] + 1) = 0xE800000000000000;
  v22 = v19;
  sub_1BA4A1788();
  v23 = sub_1BA4A1748();
  v25 = v24;
  (*(v34 + 8))(v7, v36);
  MEMORY[0x1BFAF1350](v23, v25);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v26 = v39[0];
  type metadata accessor for ArrayDataSource(0);
  swift_allocObject();
  v27 = ArrayDataSource.init(_:identifier:)(v21, v26, *(&v26 + 1));
  sub_1BA0A71F0(0);
  v28 = swift_allocObject();
  v30 = v27[5];
  v29 = v27[6];
  *(v28 + 16) = v27;
  *(v28 + 24) = v30;
  *(v28 + 32) = v29;
  *(v28 + 40) = 0;
  *(v28 + 48) = sub_1BA433A08;
  *(v28 + 56) = 0;

  return v28;
}

unint64_t sub_1BA433FC8()
{
  result = qword_1EBBF29B8;
  if (!qword_1EBBF29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF29B8);
  }

  return result;
}

uint64_t sub_1BA43401C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1BA434064(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BA4340D0()
{
  result = qword_1EBBF29C0;
  if (!qword_1EBBF29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF29C0);
  }

  return result;
}

uint64_t DataTypeDetailConfiguration.HighlightsComponent.init(hkType:itemLimits:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id DataTypeDetailConfiguration.HighlightsComponent.hkType.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t DataTypeDetailConfiguration.HighlightsComponent.makeDataSource(context:)(uint64_t a1, __n128 a2)
{
  v4 = sub_1BA4A1C48();
  v66 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v60 - v13;
  v15 = v2[1];
  v67 = *v2;
  v68 = v15;
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5460;
  *(v16 + 32) = sub_1BA4A6F38();
  *(v16 + 40) = 0;
  v17 = *(a1 + 48);
  if (v17 > 2)
  {
    goto LABEL_9;
  }

  v18 = sub_1BA4A8338();

  if (v18)
  {
LABEL_10:

    type metadata accessor for EmptyDataSource(0);
    swift_allocObject();
    v42 = EmptyDataSource.init()();
    sub_1BA434AAC(0);
    v43 = swift_allocObject();
    v44 = *(v42 + 24);
    *(v43 + 16) = *(v42 + 16);
    *(v43 + 24) = v44;
    *(v43 + 32) = v42;
    *(v43 + 40) = 1;

    return v43;
  }

  if (v17 > 1)
  {
LABEL_9:

    goto LABEL_10;
  }

  v19 = sub_1BA4A8338();

  if (v19)
  {
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v65 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v64 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B8B60;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v23 = sub_1BA4A6758();
  v24 = [v22 initWithKey:v23 ascending:0];

  *(v21 + 32) = v24;
  v25 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v26 = sub_1BA4A6758();
  v27 = [v25 initWithKey:v26 ascending:1];

  *(v21 + 40) = v27;
  v28 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v29 = sub_1BA4A6758();
  v30 = [v28 initWithKey:v29 ascending:0];

  *(v21 + 48) = v30;
  v31 = sub_1BA4A0FA8();
  (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
  v61 = sub_1BA0CD1D8(v68);
  v63 = v32;
  if (qword_1EDC60080 != -1)
  {
    swift_once();
  }

  v33 = qword_1EDC60088;
  v34 = unk_1EDC60090;
  v35 = objc_allocWithZone(type metadata accessor for HighlightsFetchedResultsControllerDataSource(0));

  sub_1BA4A1C28();
  v62 = sub_1BA4A1C38();
  v66[1](v7, v4);
  sub_1BA1FA3F8(v14, v69);
  v36 = v67;
  *(v35 + qword_1EDC84A78) = v67;
  v66 = v35;
  v37 = (v35 + qword_1EDC84A80);
  *v37 = v33;
  v37[1] = v34;
  sub_1BA4A27B8();
  v38 = v36;
  v39 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v40 = sub_1BA4A6AE8();

  [v39 setSortDescriptors_];

  if (v36)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1BA4B5470;
    *(v41 + 32) = v38;
  }

  else
  {
    v41 = 0;
  }

  v46 = v38;
  v47 = MEMORY[0x1BFAED020](v62, v41, v69, v16);

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1BA4B5470;
  *(v48 + 32) = v47;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v49 = v47;
  v50 = sub_1BA4A6AE8();

  v51 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v39 setPredicate_];
  if ((v63 & 1) == 0)
  {
    [v39 setFetchLimit_];
  }

  v52 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v53 = v65;
  v54 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v52 initWithFetchRequest:v39 managedObjectContext:v65 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v69);
  sub_1B9F1C1B0(v14);
  sub_1BA4349E4(0);
  v55 = swift_allocObject();
  *(v55 + qword_1EDC84A98) = v68;
  *(v55 + qword_1EDC84AA0) = 0x7FFFFFFFFFFFFFFFLL;

  v56 = sub_1BA0488BC();

  sub_1BA434A40(0, &qword_1EDC67CA0, sub_1BA4349E4, &protocol witness table for DataSourceWithSectionItemLimit<A>, type metadata accessor for DataSourceWithLayout);
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  v59 = *(v56 + 40);
  v58 = *(v56 + 48);
  *(v57 + 24) = v59;
  *(v57 + 32) = v58;
  *(v57 + 40) = 1;
  *(v57 + 48) = sub_1BA236D80;
  *(v57 + 56) = 0;
  sub_1BA434AAC(0);
  v43 = swift_allocObject();
  *(v43 + 16) = v59;
  *(v43 + 24) = v58;
  *(v43 + 32) = v57;
  *(v43 + 40) = 0;
  swift_bridgeObjectRetain_n();
  return v43;
}

void sub_1BA434A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA434AAC(uint64_t a1)
{
  if (!qword_1EDC66CD8)
  {
    sub_1BA434A40(255, &qword_1EDC67CA0, sub_1BA4349E4, &protocol witness table for DataSourceWithSectionItemLimit<A>, type metadata accessor for DataSourceWithLayout);
    v5[0] = v2;
    v5[1] = type metadata accessor for EmptyDataSource(255);
    v5[2] = &protocol witness table for DataSourceWithLayout<A>;
    v5[3] = &protocol witness table for EmptyDataSource;
    v3 = type metadata accessor for _ConditionalDataSource(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDC66CD8);
    }
  }
}

Swift::Void __swiftcall TileHeader.updateDetailLabel()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 64))();
  if (v4)
  {
    v5 = v4;
    (*(v2 + 48))(v3, v2);
    if (v6)
    {
      v7 = sub_1BA4A6758();
    }

    else
    {
      v7 = 0;
    }

    [v5 setText_];
  }
}

void sub_1BA434C74(uint64_t a1)
{
  if (!qword_1EDC6CD10)
  {
    sub_1BA434CCC();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6CD10);
    }
  }
}

unint64_t sub_1BA434CCC()
{
  result = qword_1EDC6CD18[0];
  if (!qword_1EDC6CD18[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC6CD18);
  }

  return result;
}

uint64_t TileHeader.isAccessibilitySizing.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_1BA4A74F8();
  return v1 & 1;
}

NSMutableAttributedString __swiftcall TileHeader.attributedString(with:bounds:renderingMode:)(UIImage with, __C::CGRect_optional *bounds, UIImageRenderingMode renderingMode)
{
  x = bounds->value.origin.x;
  y = bounds->value.origin.y;
  width = bounds->value.size.width;
  height = bounds->value.size.height;
  v9 = [(objc_class *)with.super.isa imageWithRenderingMode:renderingMode];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  if (([(objc_class *)with.super.isa isSymbolImage]& 1) == 0)
  {
    [v10 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  }

  [v10 setImage_];
  if (!bounds->is_nil)
  {
    [v10 setBounds_];
  }

  sub_1BA434EB0();
  v11 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

  return v11;
}

unint64_t sub_1BA434EB0()
{
  result = qword_1EDC6B520;
  if (!qword_1EDC6B520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B520);
  }

  return result;
}

uint64_t TileHeader.detailText.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TileHeaderDetailKind(0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 112))(&v24, a1, a2, v11);
  if (!v25)
  {
    sub_1B9F6F2F0(&v24, sub_1BA434C74);
    return 0;
  }

  sub_1B9F25598(&v24, v26);
  v14 = v27;
  v15 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v15 + 40))(v14, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v20 = *v13;
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v20;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    return 0;
  }

  sub_1B9F6D6D8(0);
  v18 = *(v13 + *(v17 + 48));
  (*(v5 + 32))(v8, v13, v4);
  v19 = sub_1BA4A16B8();
  if (v18)
  {
    if (qword_1EDC6E3F8 != -1)
    {
      swift_once();
    }
  }

  else if (qword_1EDC6E3F8 != -1)
  {
    swift_once();
  }

  v22 = HKMostRecentSampleEndDateText();

  if (v22)
  {
    v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v23 = 0;
  }

  (*(v5 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v23;
}

uint64_t TileHeaderDetailKind.DateFormat.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t _s18HealthExperienceUI20TileHeaderDetailKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TileHeaderDetailKind(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v36 - v15);
  sub_1B9F777C4(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v20[*(v21 + 56)];
  sub_1B9F70FE4(a1, v20);
  sub_1B9F70FE4(a2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B9F70FE4(v20, v12);
      sub_1B9F6D6D8(0);
      v25 = *(v24 + 48);
      v26 = v12[v25];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = v22[v25];
        (*(v5 + 32))(v8, v22, v4);
        v28 = sub_1BA4A16E8();
        v29 = *(v5 + 8);
        v29(v8, v4);
        v29(v12, v4);
        if (v28)
        {
          sub_1B9F6F2F0(v20, type metadata accessor for TileHeaderDetailKind);
          return v26 ^ v27 ^ 1u;
        }

        goto LABEL_18;
      }

      (*(v5 + 8))(v12, v4);
LABEL_11:
      v33 = sub_1B9F777C4;
LABEL_12:
      sub_1B9F6F2F0(v20, v33);
      return 0;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1B9F70FE4(v20, v16);
    v32 = *v16;
    v31 = v16[1];
    if (swift_getEnumCaseMultiPayload())
    {

      goto LABEL_11;
    }

    if (v32 == *v22 && v31 == *(v22 + 1))
    {
    }

    else
    {
      v35 = sub_1BA4A8338();

      if ((v35 & 1) == 0)
      {
LABEL_18:
        v33 = type metadata accessor for TileHeaderDetailKind;
        goto LABEL_12;
      }
    }
  }

  sub_1B9F6F2F0(v20, type metadata accessor for TileHeaderDetailKind);
  return 1;
}

unint64_t sub_1BA435678()
{
  result = qword_1EBBF29C8;
  if (!qword_1EBBF29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF29C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI14TileHeaderTypeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BA4356E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA435738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BA435794(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t WeightItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA2253B4();
  return sub_1BA4A6808();
}

uint64_t WeightItem.uniqueIdentifier.getter()
{
  sub_1BA435AAC();
  v1 = sub_1BA4A6808();
  v2 = *v0;
  sub_1BA01D2B0(0);
  v3 = v2;
  v4 = sub_1BA4A6808();
  v6 = v5;

  MEMORY[0x1BFAF1350](v4, v6);

  return v1;
}

unint64_t sub_1BA435AAC()
{
  result = qword_1EBBF29D0;
  if (!qword_1EBBF29D0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF29D0);
  }

  return result;
}

uint64_t sub_1BA435AF4(uint64_t a1)
{
  sub_1BA435AAC();
  v2 = sub_1BA4A6808();
  v3 = *v1;
  sub_1BA01D2B0(0);
  v4 = v3;
  v5 = sub_1BA4A6808();
  v7 = v6;

  MEMORY[0x1BFAF1350](v5, v7);

  return v2;
}

uint64_t sub_1BA435BA4(uint64_t a1)
{
  v2 = sub_1BA120B20();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t WeightItem.title.getter()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t WeightItem.value.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 8), v2);
    v8 = 0;
    v4 = *(v3 + 16);
    v5 = v1;
    v6 = v4(&v8, v5, v2, v3);

    return v6;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    return sub_1BA4A1318();
  }
}

unint64_t sub_1BA435D88()
{
  result = qword_1EBBF29D8;
  if (!qword_1EBBF29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF29D8);
  }

  return result;
}

uint64_t sub_1BA435DDC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t sub_1BA435E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1BA066D68(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1BA4A7C48();
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

    v11 = *(*(a1 + 48) + 8 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1BA066D68((v13 > 1), v14 + 1, 1);
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
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1BA0477A4(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1BA0477A4(result, v12, 0);
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

uint64_t SpotlightSearchResultProvider.search(text:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_1BA4A3CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA436190, 0, 0);
}

uint64_t sub_1BA436190()
{
  sub_1BA4A3CC8();
  v1 = sub_1BA4A3CF8();
  v2 = sub_1BA4A7418();
  if (sub_1BA4A7A68())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BA4A3CB8();
    _os_signpost_emit_with_name_impl(&dword_1B9F07000, v1, v2, v4, "SpotlightFeedItemSearch", "", v3, 2u);
    MEMORY[0x1BFAF43A0](v3, -1, -1);
  }

  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v10 = v0[5];
  v9 = v0[6];
  v12 = v0[3];
  v11 = v0[4];

  (*(v8 + 16))(v5, v6, v7);
  sub_1BA4A3D48();
  swift_allocObject();
  v0[11] = sub_1BA4A3D38();
  (*(v8 + 8))(v6, v7);
  sub_1B9F0ADF8(0, &qword_1EBBF29E0, 0x1E6964E68);

  v13 = sub_1BA436850(v12, v11);
  v0[12] = v13;
  v14 = swift_task_alloc();
  v0[13] = v14;
  v14[2] = v10;
  v14[3] = v13;
  v14[4] = v12;
  v14[5] = v11;
  v14[6] = v9;
  v15 = swift_task_alloc();
  v0[14] = v15;
  *(v15 + 16) = v13;
  v16 = swift_task_alloc();
  v0[15] = v16;
  sub_1BA43879C(0, &qword_1EBBE99C0, &qword_1EDC5E4A0, 0x1E695D630);
  *v16 = v0;
  v16[1] = sub_1BA436414;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1BA4DBB00, v14, sub_1BA437C68, v15, 0, 0, v17);
}

void sub_1BA436414()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1BA436558, 0, 0);
  }
}

uint64_t sub_1BA436558()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);

  v3 = *(v0 + 16);
  sub_1BA4365FC(v2, v1);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1BA4365FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A3D18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A3CF8();
  sub_1BA4A3D28();
  v13 = sub_1BA4A7408();
  if (sub_1BA4A7A68())
  {

    sub_1BA4A3D58();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69E93E8])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1BA4A3CB8();
    _os_signpost_emit_with_name_impl(&dword_1B9F07000, v12, v13, v16, "SpotlightFeedItemSearch", v14, v15, 2u);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

id sub_1BA436850(uint64_t a1, unint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  v3 = MEMORY[0x1E69E6158];
  sub_1B9F1D8D0(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  sub_1B9F0ADF8(0, &qword_1EBBF2A18, 0x1E6964E00);
  *(v4 + 32) = sub_1BA4A7458();
  *(v4 + 40) = v5;
  v6 = sub_1BA4A6AE8();

  [v2 setFetchAttributes_];

  v7 = sub_1BA4A6AE8();
  [v2 setBundleIDs_];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5480;
  *(v8 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v8 + 40) = v9;
  v10 = sub_1BA4A6AE8();

  [v2 setProtectionClasses_];

  v11 = sub_1B9F252FC();
  sub_1BA4A7B58();

  v19 = v3;
  v12 = sub_1BA4A7B58();
  v14 = v13;

  MEMORY[0x1BFAF1350](v12, v14);

  MEMORY[0x1BFAF1350](0x74647763222ALL, 0xE600000000000000);
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = sub_1BA4A6758();

  v17 = [v15 initWithQueryString:v16 queryContext:{v2, v19, v11, v11, v11}];

  [v17 setPrivateIndex_];
  return v17;
}

uint64_t sub_1BA436B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BA436B78, 0, 0);
}

uint64_t sub_1BA436B78()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1BA436C40;
  v6 = swift_continuation_init();
  sub_1BA436D50(v6, v5, v4, v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BA436C40()
{
  v3 = *v0;
  **(*v0 + 88) = *(*v0 + 80);
  v1 = *(v3 + 8);

  return v1();
}

void sub_1BA436D50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v25 = a1;
  v26 = a6;
  v24 = a4;
  v9 = sub_1BA4A3EA8();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_healthExperienceStore;
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  v34 = sub_1BA437C98;
  v35 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1BA437130;
  v33 = &block_descriptor_121;
  v15 = _Block_copy(&aBlock);

  [a3 setFoundItemsHandler_];
  _Block_release(v15);
  sub_1B9F0A534(a2 + v13, v29);
  v16 = swift_allocObject();
  v16[2] = v14;
  sub_1B9F25598(v29, (v16 + 3));
  v17 = v26;
  v16[8] = v25;
  v16[9] = v17;
  v34 = sub_1BA437CA0;
  v35 = v16;
  v18 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1BA33A4B8;
  v33 = &block_descriptor_11_3;
  v19 = _Block_copy(&aBlock);

  [a3 setCompletionHandler_];
  _Block_release(v19);
  sub_1BA4A3E18();

  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136643075;
    *(v22 + 4) = sub_1B9F0B82C(v24, a5, &aBlock);
    *(v22 + 12) = 2050;
    *(v22 + 14) = sub_1BA4A68D8();

    _os_log_impl(&dword_1B9F07000, v20, v21, "Starting search for search text %{sensitive}s (%{public}ld characters)", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
  }

  else
  {
  }

  (*(v27 + 8))(v12, v28);
  [v18 start];
}

uint64_t sub_1BA4370D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1B9FE2AEC(v2);
  return swift_endAccess();
}

double sub_1BA437130(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1B9F0ADF8(0, &qword_1EBBE99D0, 0x1E6964E80);
  v3 = sub_1BA4A6B08();

  v2(v3);

  return result;
}

void sub_1BA4371B4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v53 = a5;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v50 - v19;
  if (a1)
  {
    v51 = a3;
    aBlock[0] = a1;
    v21 = a1;
    v22 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    type metadata accessor for CSSearchQueryError(0);
    if (swift_dynamicCast() && (v23 = v9, v24 = v8, v25 = *&v56[0], sub_1BA437D00(), sub_1BA4A1448(), v25, v8 = v24, v9 = v23, v54 == -2003))
    {
      sub_1BA4A3E18();
      v26 = sub_1BA4A3E88();
      v27 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1B9F07000, v26, v27, "Search query cancelled", v28, 2u);
        MEMORY[0x1BFAF43A0](v28, -1, -1);
      }

      else
      {
      }

      (*(v23 + 8))(v20, v8);
    }

    else
    {
      sub_1BA4A3E18();
      v29 = a1;
      v30 = sub_1BA4A3E88();
      v31 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        aBlock[0] = v33;
        *v32 = 136446210;
        *&v56[0] = a1;
        v34 = a1;
        v35 = sub_1BA4A6808();
        v37 = sub_1B9F0B82C(v35, v36, aBlock);
        v50 = v8;
        v38 = v9;
        v39 = a2;
        v40 = v37;

        *(v32 + 4) = v40;
        a2 = v39;
        _os_log_impl(&dword_1B9F07000, v30, v31, "Search query completed with error: %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x1BFAF43A0](v33, -1, -1);
        MEMORY[0x1BFAF43A0](v32, -1, -1);

        (*(v38 + 8))(v16, v50);
      }

      else
      {

        (*(v9 + 8))(v16, v8);
      }
    }

    a3 = v51;
  }

  else
  {
    sub_1BA4A3E18();

    v41 = sub_1BA4A3E88();
    v42 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134349056;
      swift_beginAccess();
      v44 = *(a2 + 16);
      if (v44 >> 62)
      {
        v45 = sub_1BA4A7CC8();
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v43 + 4) = v45;

      _os_log_impl(&dword_1B9F07000, v41, v42, "Search query completed with %{public}ld items", v43, 0xCu);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v12, v8);
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v46 = sub_1BA4A1B78();
  sub_1B9F0A534(a3, v56);
  v47 = swift_allocObject();
  v47[2] = a2;
  sub_1B9F25598(v56, (v47 + 3));
  v48 = v53;
  v47[8] = v52;
  v47[9] = v48;
  aBlock[4] = sub_1BA437CF0;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_17_1;
  v49 = _Block_copy(aBlock);

  [v46 performBlock_];
  _Block_release(v49);
}

double sub_1BA437738(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v6 = *(a1 + 16);
  v10[2] = &v12;
  v10[3] = a2;

  v7 = sub_1BA2F49FC(sub_1BA437D58, v10, v6);

  v8 = sub_1BA437D74(v12, a2);
  v11 = v7;
  sub_1B9FE294C(v8);
  **(*(a3 + 64) + 40) = v11;
  swift_continuation_resume();

  return result;
}

uint64_t sub_1BA437820@<X0>(id *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 attributeSet];
  v7 = sub_1BA4A7688();
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    sub_1BA0E32D8(&v11, v7);
  }

  result = sub_1BA0B1578(v5, a2);
  *a3 = result;
  return result;
}

uint64_t SpotlightSearchResultProvider.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_signposter;
  v2 = sub_1BA4A3D08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_healthExperienceStore));
  return v0;
}

uint64_t SpotlightSearchResultProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_signposter;
  v2 = sub_1BA4A3D08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_healthExperienceStore));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA4379E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BA437A90;

  return SpotlightSearchResultProvider.search(text:)(a2, a3);
}

uint64_t sub_1BA437A90(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1BA437BA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA0C2E3C;

  return sub_1BA436B50(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_7Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_1BA437D00()
{
  result = qword_1EBBE9400;
  if (!qword_1EBBE9400)
  {
    type metadata accessor for CSSearchQueryError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9400);
  }

  return result;
}

id sub_1BA437D74(uint64_t a1, void *a2)
{
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v65 = &v60 - v6;
  v7 = sub_1BA4A3EA8();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v66 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA4A2558();
  v10 = sub_1BA4A2518();
  sub_1B9F2EAC0(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B9FD0;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1B9F1BE20();
  *(v11 + 32) = 0x77615265646F63;
  *(v11 + 40) = 0xE700000000000000;
  v12 = a1;
  v13 = 0;
  v14 = sub_1BA435E7C(v12);
  sub_1B9F1D8D0(0, &qword_1EBBF29E8, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  *(v11 + 96) = v15;
  *(v11 + 104) = sub_1BA438648();
  *(v11 + 72) = v14;
  v16 = [objc_opt_self() primaryProfile];
  result = [v16 identifier];
  if (result)
  {
    v18 = result;

    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    *(v11 + 136) = sub_1B9F0ADF8(0, &qword_1EBBF29F8, 0x1E696AFB0);
    *(v11 + 144) = sub_1BA4386C4();
    *(v11 + 112) = v18;
    v19 = sub_1BA4A6EE8();
    [v10 setPredicate_];

    v20 = a2[3];
    v21 = a2[4];
    v62 = __swift_project_boxed_opaque_existential_1(a2, v20);
    v63 = v21;
    v22 = sub_1BA4A1B78();
    v68 = v10;
    v23 = sub_1BA4A7598();
    v64 = v20;
    v24 = v23;
    v61 = v7;

    v70 = MEMORY[0x1E69E7CC0];
    if (v24 >> 62)
    {
      v25 = sub_1BA4A7CC8();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = 0;
    v27 = MEMORY[0x1E69E7CC0];
    while (v25 != v26)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1BFAF2860](v26, v24);
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v28 = *(v24 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        while (1)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          if (!sub_1BA4A7CC8())
          {
            goto LABEL_43;
          }

LABEL_21:
          sub_1BA4A27B8();
          v42 = MEMORY[0x1BFAED110]();
          sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
          v43 = sub_1BA4A1C68();
          v44 = *(v43 - 8);
          v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_1BA4B5480;
          (*(v44 + 104))(v46 + v45, *MEMORY[0x1E69A3B88], v43);
          v47 = sub_1BA4A0FA8();
          v48 = v65;
          (*(*(v47 - 8) + 56))(v65, 1, 1, v47);
          sub_1B9F1D8D0(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1BA4B5460;
          *(v49 + 32) = sub_1BA4A1D78();
          *(v49 + 40) = 0;
          v50 = MEMORY[0x1BFAED020](v46, v27, v48, v49);

          sub_1B9F1C1B0(v48);
          [v42 setPredicate_];

          v51 = sub_1BA4A1B78();
          v67 = v42;
          v52 = sub_1BA4A7598();
          v26 = MEMORY[0x1E69E7CC0];
          if (v13)
          {

            v53 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v53 = v52;
          }

          v70 = v26;
          v66 = v13;
          if (v53 >> 62)
          {
            v54 = sub_1BA4A7CC8();
          }

          else
          {
            v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v55 = 0;
          v27 = v53 & 0xC000000000000001;
          v56 = MEMORY[0x1E69E7CC0];
          v13 = &selRef_createHKUnitPreferenceController;
          while (1)
          {
            if (v54 == v55)
            {

              return v56;
            }

            if (v27)
            {
              v57 = MEMORY[0x1BFAF2860](v55, v53);
            }

            else
            {
              if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_39;
              }

              v57 = *(v53 + 8 * v55 + 32);
            }

            v58 = v57;
            v59 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            v26 = [v57 objectID];

            ++v55;
            if (v26)
            {
              MEMORY[0x1BFAF1510]();
              if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1BA4A6B68();
              }

              sub_1BA4A6BB8();
              v56 = v70;
              v55 = v59;
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
        }
      }

      v31 = sub_1BA4A2508();

      ++v26;
      if (v31)
      {
        MEMORY[0x1BFAF1510]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        v27 = v70;
        v26 = v30;
      }
    }

    v32 = v61;
    v33 = v66;
    sub_1BA4A3E18();

    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v69 = v27;
      v70 = v37;
      *v36 = 136315138;
      sub_1BA43872C(0);

      v38 = sub_1BA4A6808();
      v40 = v32;
      v41 = sub_1B9F0B82C(v38, v39, &v70);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1B9F07000, v34, v35, "Matched types with highlights: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);

      (*(v67 + 1))(v33, v40);
    }

    else
    {

      (*(v67 + 1))(v33, v32);
    }

    v26 = v68;
    if (v27)
    {
      if (v27 >> 62)
      {
        goto LABEL_42;
      }

      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

LABEL_43:
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA438648()
{
  result = qword_1EBBF29F0;
  if (!qword_1EBBF29F0)
  {
    sub_1B9F1D8D0(255, &qword_1EBBF29E8, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF29F0);
  }

  return result;
}

unint64_t sub_1BA4386C4()
{
  result = qword_1EBBF2A00;
  if (!qword_1EBBF2A00)
  {
    sub_1B9F0ADF8(255, &qword_1EBBF29F8, 0x1E696AFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2A00);
  }

  return result;
}

void sub_1BA43872C(uint64_t a1)
{
  if (!qword_1EBBF2A08)
  {
    sub_1BA43879C(255, &qword_1EBBF2A10, &qword_1EDC6E920, 0x1E696C2E0);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF2A08);
    }
  }
}

void sub_1BA43879C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1B9F0ADF8(255, a3, a4);
    v5 = sub_1BA4A6BF8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA4387FC(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1BA4A7AA8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA4388E0(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1BA4A7AA8();
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a2, v5);
  return sub_1BA4387FC(v7);
}

uint64_t sub_1BA4389F4(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1BA4A7AA8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA438AD8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1BA4A7AA8();
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a2, v5);
  return sub_1BA4389F4(v7);
}

uint64_t *SnidgetContentView.ViewModel.__allocating_init(currentValueViewModel:visualizationViewModel:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1BA439CD8(a1, a2);
  swift_getAssociatedTypeWitness();
  v5 = sub_1BA4A7AA8();
  (*(*(v5 - 8) + 8))(a2, v5);
  swift_getAssociatedTypeWitness();
  v6 = sub_1BA4A7AA8();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4;
}

uint64_t *SnidgetContentView.ViewModel.init(currentValueViewModel:visualizationViewModel:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA439CD8(a1, a2);
  swift_getAssociatedTypeWitness();
  v5 = sub_1BA4A7AA8();
  (*(*(v5 - 8) + 8))(a2, v5);
  swift_getAssociatedTypeWitness();
  v6 = sub_1BA4A7AA8();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4;
}

uint64_t sub_1BA438F2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001BA508BF0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001BA508C10 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA506420 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1BA4A8338();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BA439054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA438F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA43909C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA4390F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t *SnidgetContentView.ViewModel.deinit()
{
  v1 = *(*v0 + 144);
  swift_getAssociatedTypeWitness();
  v2 = sub_1BA4A7AA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 152);
  swift_getAssociatedTypeWitness();
  v4 = sub_1BA4A7AA8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 160);
  v6 = sub_1BA4A19E8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t SnidgetContentView.ViewModel.__deallocating_deinit()
{
  SnidgetContentView.ViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA43933C(void *a1)
{
  v2 = v1;
  v39 = *v2;
  v4 = v39;
  v5 = *(v39 + 104);
  v6 = *(v39 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1BA4A7AA8();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v33 = v30 - v9;
  v10 = *(v39 + 96);
  v11 = *(v39 + 80);
  v36 = swift_getAssociatedTypeWitness();
  v12 = sub_1BA4A7AA8();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v30 - v14;
  v16 = *(v4 + 112);
  v17 = *(v4 + 136);
  *&v18 = v11;
  *(&v18 + 1) = v6;
  *&v19 = v10;
  *(&v19 + 1) = v5;
  v40[1] = v19;
  v40[0] = v18;
  v41 = v16;
  v35 = *(v39 + 120);
  v42 = v35;
  v30[1] = v17;
  v43 = v17;
  type metadata accessor for SnidgetContentView.ViewModel.CodingKeys(255, v40);
  swift_getWitnessTable();
  v20 = sub_1BA4A8298();
  v39 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v30 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8548();
  sub_1B9F4F484(v15);
  LOBYTE(v40[0]) = 0;
  v24 = v20;
  v25 = v44;
  sub_1BA4A8238();
  if (v25)
  {
    (*(v37 + 8))(v15, v38);
    return (*(v39 + 8))(v23, v20);
  }

  else
  {
    v27 = v31;
    v28 = v32;
    (*(v37 + 8))(v15, v38);
    v29 = v33;
    sub_1B9F51AB0(v33);
    LOBYTE(v40[0]) = 1;
    sub_1BA4A8238();
    (*(v27 + 8))(v29, v28);
    LOBYTE(v40[0]) = 2;
    sub_1BA4A19E8();
    sub_1BA439E60();
    sub_1BA4A8288();
    return (*(v39 + 8))(v23, v24);
  }
}

uint64_t SnidgetContentView.id.getter()
{
  v1 = *v0;

  return v1;
}

void SnidgetContentView.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

double sub_1BA439940(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  v7 = sub_1BA4A7AA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14[-v10];
  sub_1B9F4F484(&v14[-v10]);
  (*(v8 + 8))(v11, v7);
  v17 = v6;
  v18 = *(v3 + 88);
  v19 = v5;
  v20 = *(v4 + 104);
  v21 = *(v4 + 120);
  v22 = *(v3 + 136);
  KeyPath = swift_getKeyPath();
  v15 = v1;
  v16 = a1;
  sub_1BA438E48(KeyPath, sub_1BA439FE4, v14, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double sub_1BA439B24(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  v6 = sub_1BA4A7AA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16[-v9];
  sub_1B9F51AB0(&v16[-v9]);
  (*(v7 + 8))(v10, v6);
  *&v11 = *(v3 + 80);
  *(&v11 + 1) = v5;
  *&v12 = *(v3 + 96);
  *(&v12 + 1) = v4;
  v19 = v11;
  v20 = v12;
  v13 = *(v3 + 128);
  v21 = *(v3 + 112);
  v22 = v13;
  KeyPath = swift_getKeyPath();
  v17 = v1;
  v18 = a1;
  sub_1BA438E48(KeyPath, sub_1BA439FC8, v16, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t *sub_1BA439CD8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v2 + v5, 1, 1, AssociatedTypeWitness);
  v7 = *(*v2 + 152);
  v8 = swift_getAssociatedTypeWitness();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  sub_1BA4A19D8();
  sub_1BA439940(a1);
  sub_1BA439B24(a2);
  return v2;
}

unint64_t sub_1BA439E60()
{
  result = qword_1EDC6AE20;
  if (!qword_1EDC6AE20)
  {
    sub_1BA4A19E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AE20);
  }

  return result;
}

uint64_t sub_1BA439EB8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t PickerItem.reuseIdentifier.getter()
{
  v0 = sub_1BA43D4F0();

  return v0;
}

void PickerItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t PickerItem.uniqueIdentifier.getter(uint64_t a1)
{
  v3 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v1 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v1);

  return v3;
}

uint64_t PickerItem.title.getter(uint64_t a1)
{
  v1 = sub_1BA43D894(a1);

  return v1;
}

void PickerItem.title.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t PickerItem.placeholderText.getter(uint64_t a1)
{
  v1 = sub_1BA43D8A4(a1);

  return v1;
}

void PickerItem.placeholderText.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1BA43A2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v6 = (a1 + *(type metadata accessor for PickerItem(0, *(a2 + a3 - 16), *(a2 + a3 - 8), a5) + 56));
  v7 = *v6;
  v8 = v6[1];
  if (*v6)
  {
    v9 = v6[1];
  }

  else
  {
    v9 = 0;
  }

  *a4 = v7;
  a4[1] = v9;

  return sub_1B9F0F1B8(v7, v8);
}

uint64_t sub_1BA43A344(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = a1[1];
  }

  else
  {
    v9 = 0;
  }

  v10 = (a2 + *(type metadata accessor for PickerItem(0, v5, v6, a4) + 56));
  v11 = *v10;
  v12 = v10[1];
  sub_1B9F0F1B8(v7, v8);
  result = sub_1B9F0E310(v11, v12);
  *v10 = v7;
  v10[1] = v9;
  return result;
}

uint64_t PickerItem.dataProvider.getter(uint64_t a1)
{
  v1 = sub_1BA43D934(a1);
  sub_1B9F0F1B8(v1, v2);
  return v1;
}

uint64_t PickerItem.dataProvider.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 56));
  result = sub_1B9F0E310(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1BA43A450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>, uint64_t a5@<X3>)
{
  v6 = *(a2 + a3 - 16);
  v7 = *(a2 + a3 - 8);
  v8 = (a1 + *(type metadata accessor for PickerItem(0, v6, v7, a5) + 60));
  v9 = *v8;
  v10 = v8[1];
  if (*v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = v7;
    *(v11 + 32) = v9;
    *(v11 + 40) = v10;
    v12 = sub_1BA43E424;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;

  return sub_1B9F0F1B8(v9, v10);
}

uint64_t sub_1BA43A500(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v7;
    v9[5] = v8;
    v10 = sub_1BA43E3FC;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = (a2 + *(type metadata accessor for PickerItem(0, v5, v6, a4) + 60));
  v12 = *v11;
  v13 = v11[1];
  sub_1B9F0F1B8(v7, v8);
  result = sub_1B9F0E310(v12, v13);
  *v11 = v10;
  v11[1] = v9;
  return result;
}

uint64_t PickerItem.updateHandler.getter(uint64_t a1)
{
  v1 = sub_1BA43D944(a1);
  sub_1B9F0F1B8(v1, v2);
  return v1;
}

uint64_t PickerItem.updateHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 60));
  result = sub_1B9F0E310(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

void PickerItem.items.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);

  *(v2 + v4) = a1;
}

uint64_t PickerItem.init(uuid:title:placeholderText:backgroundConfiguration:isEditEnabled:items:dataProvider:updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = type metadata accessor for PickerCollectionViewCell(0, a14, a15, a4);
  *a9 = static ReusableView.reuseIdentifier.getter(v19);
  *(a9 + 1) = v20;
  v22 = type metadata accessor for PickerItem(0, a14, a15, v21);
  v23 = v22[12];
  v24 = &a9[v22[11]];
  v25 = sub_1BA4A4168();
  (*(*(v25 - 8) + 56))(&a9[v23], 1, 1, v25);
  v26 = &a9[v22[14]];
  v27 = &a9[v22[15]];
  v28 = v22[9];
  v29 = sub_1BA4A1798();
  (*(*(v29 - 8) + 32))(&a9[v28], a1, v29);
  v30 = &a9[v22[10]];
  *v30 = a2;
  *(v30 + 1) = a3;
  *v24 = a4;
  *(v24 + 1) = a5;
  result = sub_1BA43D8B4(a6, &a9[v23]);
  a9[v22[13]] = a7;
  *&a9[v22[16]] = a8;
  *v26 = a10;
  *(v26 + 1) = a11;
  *v27 = a12;
  *(v27 + 1) = a13;
  return result;
}

uint64_t sub_1BA43A85C(uint64_t a1)
{
  v1 = sub_1BA43D894(a1);

  return v1;
}

uint64_t sub_1BA43A894(uint64_t a1)
{
  v1 = sub_1BA43D8A4(a1);

  return v1;
}

uint64_t sub_1BA43A8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    a2 = 0;
  }

  return PickerItem.dataProvider.setter(a1, a2, a3);
}

uint64_t (*sub_1BA43A908(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 48) = PickerItem.dataProvider.modify();
  v3[7] = v4;
  if (*v4)
  {
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  v3[4] = *v4;
  v3[5] = v5;
  return sub_1BA43A994;
}

uint64_t sub_1BA43A9C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v5 = a3(a1, a2);
  a4();
  return v5;
}

uint64_t sub_1BA43AA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    a2 = 0;
  }

  return PickerItem.updateHandler.setter(a1, a2, a3);
}

uint64_t (*sub_1BA43AA1C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 48) = PickerItem.updateHandler.modify();
  v3[7] = v4;
  if (*v4)
  {
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  v3[4] = *v4;
  v3[5] = v5;
  return sub_1BA43E44C;
}

void sub_1BA43AAA8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (!v3)
  {
    v4 = 0;
  }

  *v2 = v3;
  v2[1] = v4;
  v1[6](v1);

  free(v1);
}

uint64_t sub_1BA43AB04()
{
  v0 = sub_1BA43D4F0();

  return v0;
}

uint64_t sub_1BA43AB40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA43ABA4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBBF2A20;
  swift_beginAccess();
  return sub_1BA43D984(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA43AC18(uint64_t a1)
{
  v3 = qword_1EBBF2A20;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA43BDC4();
  return sub_1B9F446A4(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t (*sub_1BA43ACA0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA43AD04;
}

uint64_t sub_1BA43AD04(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA43BDC4();
  }

  return result;
}

double sub_1BA43AD38(uint64_t a1)
{
  *(v1 + qword_1EBBF2AB8) = a1;

  return result;
}

double sub_1BA43AD50(uint64_t a1)
{
  *(v1 + qword_1EBBF2AC0) = a1;

  return result;
}

id sub_1BA43AD68(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = *MEMORY[0x1E69E7D40] & *v4;
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v5[qword_1EBBF2A20];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = *MEMORY[0x1E69DDCF8];
  v19 = objc_opt_self();
  v20 = [v19 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v23 = v18;
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v59 = v10;
      v27 = v26;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v62 = v57;
      *v27 = 136315906;
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v58 = v23;
      v30 = sub_1B9F0B82C(v28, v29, &v62);
      HIDWORD(v55) = v25;
      v31 = v30;

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v60 = 0;
      v61 = 1;
      sub_1B9F664A8(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v62);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2080;
      LODWORD(v60) = 0;
      type metadata accessor for SymbolicTraits(0);
      v35 = sub_1BA4A6808();
      v37 = sub_1B9F0B82C(v35, v36, &v62);
      v23 = v58;

      *(v27 + 24) = v37;
      *(v27 + 32) = 2112;
      v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v27 + 34) = v38;
      v39 = v56;
      *v56 = v38;
      _os_log_impl(&dword_1B9F07000, v24, BYTE4(v55), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v27, 0x2Au);
      sub_1B9F8C6C8(v39);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      v40 = v57;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      v41 = v27;
      v10 = v59;
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v42 = [v19 preferredFontDescriptorWithTextStyle_];
    v22 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
  }

  v43 = qword_1EBBF2AA8;
  [v17 setFont_];

  [v17 setTextAlignment_];
  [v17 setAdjustsFontForContentSizeCategory_];
  v44 = [objc_opt_self() labelColor];
  [v17 setTextColor_];

  [v17 setLineBreakMode_];
  [v17 setNumberOfLines_];
  *&v5[v43] = v17;
  v45 = qword_1EBBF2AB0;
  v46 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v46 setShowsMenuAsPrimaryAction_];
  [v46 setChangesSelectionAsPrimaryAction_];
  v47 = v46;
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  v48 = sub_1BA4A6AE8();
  v49 = HKUIJoinStringsForAutomationIdentifier();

  [v47 setAccessibilityIdentifier_];
  *&v5[v45] = v47;
  v50 = MEMORY[0x1E69E7CC0];
  *&v5[qword_1EBBF2AB8] = MEMORY[0x1E69E7CC0];
  *&v5[qword_1EBBF2AC0] = v50;
  v52 = type metadata accessor for PickerCollectionViewCell(0, *(v10 + 80), *(v10 + 88), v51);
  v63.receiver = v5;
  v63.super_class = v52;
  v53 = objc_msgSendSuper2(&v63, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA43B3F0();

  return v53;
}

id PickerCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA43B3F0()
{
  v1 = v0;
  sub_1B9F664A8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v6, v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [v0 contentView];
  [v11 addSubview_];

  v12 = [v1 contentView];
  [v12 addSubview_];

  sub_1BA43B5E0();
  MEMORY[0x1BFAF1F00]();
  v13 = sub_1BA4A4168();
  if ((*(*(v13 - 8) + 48))(v10, 1, v13))
  {
    v14 = MEMORY[0x1E69DC0D8];
    sub_1BA43D984(v10, v5, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v5);
    return sub_1B9F446A4(v10, &qword_1EDC6B770, v14);
  }

  else
  {
    v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v10);
  }
}

void sub_1BA43B5E0()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = [v0 contentView];
  v3 = [v2 bottomAnchor];

  v4 = *&v0[qword_1EBBF2AA8];
  v5 = [v4 bottomAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:12.0];

  *(v1 + 32) = v6;
  v7 = *&v0[qword_1EBBF2AB0];
  v8 = [v7 topAnchor];
  v9 = [v0 &selRef_fetchSources];
  v10 = [v9 topAnchor];

  v11 = [v8 &selRef:v10 objectAtIndex:12.0 + 6];
  *(v1 + 40) = v11;
  v12 = [v7 leadingAnchor];
  v13 = [v4 trailingAnchor];
  v14 = [v12 constraintGreaterThanOrEqualToAnchor:v13 constant:8.0];

  *(v1 + 48) = v14;
  v15 = [v7 trailingAnchor];
  v16 = [v0 &selRef_fetchSources];
  v17 = [v16 layoutMarginsGuide];

  v18 = [v17 trailingAnchor];
  v19 = [v15 constraintEqualToAnchor_];

  *(v1 + 56) = v19;
  *&v0[qword_1EBBF2AB8] = v1;

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5890;
  v21 = [v4 trailingAnchor];
  v22 = [v0 contentView];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 trailingAnchor];
  v25 = [v21 constraintEqualToAnchor_];

  *(v20 + 32) = v25;
  v26 = [v7 topAnchor];
  v27 = [v4 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v20 + 40) = v28;
  v29 = [v7 leadingAnchor];
  v30 = [v0 contentView];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v29 &selRef:v32 numberWithInteger:? + 5];

  *(v20 + 48) = v33;
  v34 = [v7 trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 layoutMarginsGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v34 constraintLessThanOrEqualToAnchor_];

  *(v20 + 56) = v38;
  *&v0[qword_1EBBF2AC0] = v20;

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BA4B8B60;
  v40 = [v4 topAnchor];
  v41 = [v0 contentView];
  v42 = [v41 topAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:12.0];
  *(v39 + 32) = v43;
  v44 = [v4 leadingAnchor];
  v45 = [v0 contentView];
  v46 = [v45 layoutMarginsGuide];

  v47 = [v46 leadingAnchor];
  v48 = [v44 constraintEqualToAnchor_];

  *(v39 + 40) = v48;
  v49 = [v0 contentView];
  v50 = [v49 bottomAnchor];

  v51 = [v7 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:12.0];

  *(v39 + 48) = v52;
  v53 = sub_1BA43BD5C();
  v54 = &qword_1EBBF2AB8;
  if (v53)
  {
    v54 = &qword_1EBBF2AC0;
  }

  v55 = *&v0[*v54];

  v56 = objc_opt_self();
  sub_1B9F73B50(v55);
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v57 = sub_1BA4A6AE8();

  [v56 activateConstraints_];
}

uint64_t sub_1BA43BD5C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_1BA4A74F8();
  return v1 & 1;
}

uint64_t sub_1BA43BDC4()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B9F664A8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v43 - v8;
  v9 = sub_1BA4A4168();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v43 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F664A8(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = *((v2 & v1) + 0x58);
  v45 = *((v2 & v1) + 0x50);
  v18 = type metadata accessor for PickerItem(255, v45, v16, v17);
  v19 = sub_1BA4A7AA8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v43 - v22;
  v24 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v43 - v27;
  v29 = qword_1EBBF2A20;
  swift_beginAccess();
  sub_1BA43D984(v0 + v29, v49, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v50)
  {
    sub_1B9F446A4(v49, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v24 + 56))(v23, 1, 1, v18);
    return (*(v20 + 8))(v23, v19);
  }

  sub_1B9FCD918();
  v30 = swift_dynamicCast();
  (*(v24 + 56))(v23, v30 ^ 1u, 1, v18);
  if ((*(v24 + 48))(v23, 1, v18) == 1)
  {
    return (*(v20 + 8))(v23, v19);
  }

  (*(v24 + 32))(v28, v23, v18);
  v31 = *(v0 + qword_1EBBF2AA8);
  v32 = sub_1BA4A6758();
  [v31 setText_];

  v33 = *(v0 + qword_1EBBF2AB0);
  v35 = sub_1BA43D4F8(v28, v45, v16, v34);
  [v33 setMenu_];

  sub_1BA43CE24(v28);
  v36 = sub_1BA4A79A8();
  (*(*(v36 - 8) + 56))(v15, 0, 1, v36);
  sub_1BA4A79D8();
  [v33 setEnabled_];
  v37 = v46;
  sub_1BA43D984(&v28[*(v18 + 48)], v46, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  v39 = v47;
  v38 = v48;
  if ((*(v47 + 48))(v37, 1, v48) == 1)
  {
    (*(v24 + 8))(v28, v18);
    return sub_1B9F446A4(v37, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  }

  else
  {
    v41 = v43;
    (*(v39 + 32))(v43, v37, v38);
    v42 = v44;
    (*(v39 + 16))(v44, v41, v38);
    (*(v39 + 56))(v42, 0, 1, v38);
    MEMORY[0x1BFAF1F10](v42);
    (*(v39 + 8))(v41, v38);
    return (*(v24 + 8))(v28, v18);
  }
}

uint64_t sub_1BA43C3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BA4A7AA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  result = type metadata accessor for PickerItem(0, a3, a4, v12);
  v14 = *(a2 + *(result + 60));
  if (v14)
  {
    (*(*(a3 - 8) + 56))(v11, 1, 1, a3);
    v14(a2, v11);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

void sub_1BA43C530(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  v89 = a1;
  v90 = a2;
  v7 = sub_1BA4A7AA8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v75 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v8);
  v82 = &v72 - v9;
  v83 = v7;
  v88 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v74 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v91 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v86 = &v72 - v18;
  v19 = *(a4 - 8);
  v80 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PickerItem(0, a4, a5, v24);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v72 - v29;
  v76 = &v72 - v29;
  v81 = sub_1B9F0ADF8(0, &unk_1EDC5E0B0, 0x1E69DC628);
  v31 = a5;
  v85 = a5;
  v32 = *(a5 + 16);
  v33 = v89;
  v34 = v32(a4, v31);
  v78 = v35;
  v79 = v34;
  (*(v26 + 16))(v30, v90, v25);
  v36 = v19;
  v77 = *(v19 + 16);
  v77(v23, v33, a4);
  v37 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v38 = (v27 + *(v19 + 80) + v37) & ~*(v19 + 80);
  v39 = swift_allocObject();
  v40 = v85;
  *(v39 + 16) = a4;
  *(v39 + 24) = v40;
  v41 = v39 + v37;
  v42 = v86;
  (*(v26 + 32))(v41, v76, v25);
  v43 = v36;
  v44 = *(v36 + 32);
  v45 = v23;
  v46 = v42;
  v80 = v45;
  v76 = (v36 + 32);
  v73 = v44;
  (v44)(v39 + v38);
  v47 = sub_1BA4A77E8();
  v77(v42, v89, a4);
  v89 = v43;
  v48 = *(v43 + 56);
  v48(v46, 0, 1, a4);
  v49 = *(v90 + *(v25 + 56));
  v81 = v47;
  if (v49)
  {
    v49();
  }

  else
  {
    v48(v91, 1, 1, a4);
  }

  v50 = a4;
  v51 = v88;
  v52 = *(TupleTypeMetadata2 + 48);
  v53 = *(v88 + 16);
  v54 = v82;
  v55 = v83;
  v53(v82, v46, v83);
  v90 = v52;
  v53(&v54[v52], v91, v55);
  v56 = v46;
  v57 = *(v89 + 48);
  if (v57(v54, 1, v50) != 1)
  {
    v61 = v74;
    v53(v74, v54, v55);
    v62 = v90;
    v63 = v50;
    if (v57(&v54[v90], 1, v50) != 1)
    {
      v65 = &v54[v62];
      v66 = v80;
      v73(v80, v65, v50);
      v67 = sub_1BA4A6728();
      v68 = *(v89 + 8);
      v68(v66, v63);
      v69 = v61;
      v70 = *(v88 + 8);
      v70(v91, v55);
      v70(v86, v55);
      v68(v69, v63);
      v70(v54, v55);
      v59 = v84;
      v60 = v81;
      if ((v67 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v64 = *(v88 + 8);
    v64(v91, v55);
    v64(v86, v55);
    (*(v89 + 8))(v61, v63);
LABEL_9:
    (*(v75 + 8))(v54, TupleTypeMetadata2);
    v59 = v84;
    v60 = v81;
    goto LABEL_12;
  }

  v58 = *(v51 + 8);
  v58(v91, v55);
  v58(v56, v55);
  if (v57(&v54[v90], 1, v50) != 1)
  {
    goto LABEL_9;
  }

  v58(v54, v55);
  v59 = v84;
  v60 = v81;
LABEL_11:
  [v60 setState_];
LABEL_12:
  v71 = v60;
  MEMORY[0x1BFAF1510]();
  if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
}

uint64_t sub_1BA43CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BA4A7AA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - v12;
  result = type metadata accessor for PickerItem(0, a4, a5, v14);
  v16 = *(a2 + *(result + 60));
  if (v16)
  {
    v17 = *(a4 - 8);
    (*(v17 + 16))(v13, a3, a4);
    (*(v17 + 56))(v13, 0, 1, a4);
    v16(a2, v13);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_1BA43CE24(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = sub_1BA4A7AA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17[-v9];
  sub_1BA4A7968();
  _UISolariumEnabled();
  sub_1BA4A7878();
  v11 = *((v4 & v3) + 0x58);
  v13 = *(a1 + *(type metadata accessor for PickerItem(0, v5, v11, v12) + 56));
  if (v13)
  {
    v13(a1);
    v14 = *(v5 - 8);
    if ((*(v14 + 48))(v10, 1, v5) != 1)
    {
      (*(v11 + 16))(v5, v11);
      (*(v14 + 8))(v10, v5);
      goto LABEL_6;
    }

    (*(v7 + 8))(v10, v6);
  }

LABEL_6:
  sub_1BA4A7978();
  v15 = sub_1BA4A7808();
  sub_1BA4A4108();
  return v15(v17, 0);
}

void sub_1BA43D088(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PickerCollectionViewCell(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v13.receiver = v4;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v7 = [a1 preferredContentSizeCategory];
    v8 = sub_1BA4A74F8();

    v9 = v8 & 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [v4 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  v12 = sub_1BA4A74F8();
  if (v9 == 2 || ((v12 ^ v9) & 1) != 0)
  {
    sub_1BA43D214();
  }
}

void sub_1BA43D1A8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_1BA43D088(a3, v8, v6, v7);
}

void sub_1BA43D214()
{
  if (sub_1BA43BD5C())
  {

    sub_1BA43D258();
  }

  else
  {

    sub_1BA43D26C();
  }
}

void sub_1BA43D280(void *a1, void *a2)
{
  v2 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);

  v3 = sub_1BA4A6AE8();

  [v2 activateConstraints_];

  v4 = sub_1BA4A6AE8();

  [v2 deactivateConstraints_];
}

id PickerCollectionViewCell.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PickerCollectionViewCell(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double sub_1BA43D3E0(uint64_t a1)
{
  sub_1B9F446A4(a1 + qword_1EBBF2A20, &qword_1EDC6E1A0, sub_1B9FCD918);

  return result;
}

void (*sub_1BA43D480(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BA43ACA0(v2);
  return sub_1B9FCDD98;
}

uint64_t sub_1BA43D4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PickerItem(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v13 = v20 - v12;
  v21 = MEMORY[0x1E69E7CC0];
  v14 = (a1 + *(v10 + 44));
  if (v14[1])
  {
    v20[0] = *v14;
    sub_1B9F0ADF8(0, &unk_1EDC5E0B0, 0x1E69DC628);
    (*(v8 + 16))(v13, a1, v7);
    v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    (*(v8 + 32))(v16 + v15, v13, v7);

    v17 = sub_1BA4A77E8();
    MEMORY[0x1BFAF1510]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  v20[2] = *(a1 + *(v7 + 64));
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1BA4A6BF8();

  swift_getWitnessTable();
  sub_1BA4A6A38();

  if (v21 >> 62)
  {
    sub_1B9F0ADF8(0, &qword_1EBBF3400, 0x1E69DCC78);

    sub_1BA4A8028();
  }

  else
  {

    sub_1BA4A8358();
    sub_1B9F0ADF8(0, &qword_1EBBF3400, 0x1E69DCC78);
  }

  sub_1B9F0ADF8(0, &qword_1EBBEDA10, 0x1E69DCC60);
  v18 = sub_1BA4A76C8();

  return v18;
}

uint64_t sub_1BA43D8B4(uint64_t a1, uint64_t a2)
{
  sub_1B9F664A8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA43D984(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F664A8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void _s18HealthExperienceUI24PickerCollectionViewCellC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + qword_1EBBF2A20;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = *MEMORY[0x1E69DDCF8];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:0];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
  }

  else
  {
    v46 = v3;
    sub_1BA4A3DD8();
    v14 = v9;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FB8();

    v45 = v16;
    v17 = v16;
    v18 = v15;
    if (os_log_type_enabled(v15, v17))
    {
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49 = v43;
      *v19 = 136315906;
      v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v22 = sub_1B9F0B82C(v20, v21, &v49);
      v44 = v14;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v47 = 0;
      v48 = 1;
      sub_1B9F664A8(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v49);

      *(v19 + 14) = v26;
      *(v19 + 22) = 2080;
      LODWORD(v47) = 0;
      type metadata accessor for SymbolicTraits(0);
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, &v49);
      v14 = v44;

      *(v19 + 24) = v29;
      *(v19 + 32) = 2112;
      v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v19 + 34) = v30;
      v31 = v42;
      *v42 = v30;
      _os_log_impl(&dword_1B9F07000, v18, v45, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
      sub_1B9F8C6C8(v31);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      v32 = v43;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v46 + 8))(v6, v2);
    v33 = [v10 preferredFontDescriptorWithTextStyle_];
    v13 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
  }

  v34 = qword_1EBBF2AA8;
  [v8 setFont_];

  [v8 setTextAlignment_];
  [v8 setAdjustsFontForContentSizeCategory_];
  v35 = [objc_opt_self() labelColor];
  [v8 setTextColor_];

  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  *(v1 + v34) = v8;
  v36 = qword_1EBBF2AB0;
  v37 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v37 setShowsMenuAsPrimaryAction_];
  [v37 setChangesSelectionAsPrimaryAction_];
  v38 = v37;
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  v39 = sub_1BA4A6AE8();
  v40 = HKUIJoinStringsForAutomationIdentifier();

  [v38 setAccessibilityIdentifier_];
  *(v1 + v36) = v38;
  v41 = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EBBF2AB8) = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EBBF2AC0) = v41;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA43DF7C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1BA43DFF0(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6158];
  sub_1BA4A1798();
  if (v2 <= 0x3F)
  {
    sub_1B9F23348(319, &qword_1EDC6E410, v1, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1B9F664A8(319, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      if (v4 <= 0x3F)
      {
        sub_1B9F664A8(319, &qword_1EDC5DB48, sub_1B9F37BB8);
        if (v5 <= 0x3F)
        {
          sub_1BA4A6BF8();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BA43E290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PickerItem(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1BA43C3F0(a1, v9, v6, v7);
}

uint64_t sub_1BA43E31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PickerItem(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v4 + ((v9 + *(v8 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80));

  return sub_1BA43CC90(a1, v4 + v9, v10, v6, v7);
}

uint64_t SummarySharingOnboardingPresenting.presentOnboardingFlow(on:healthStore:healthExperienceStore:numOutgoingRelationships:isInfoTile:isPresentedViaLink:)(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v97 = a2;
  v98 = a8;
  v92 = a5;
  v93 = a6;
  v88 = a3;
  v94 = a1;
  v91 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v84 = v10;
  v90 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D7EC(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v76 - v13;
  sub_1BA02E124(0);
  v83 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E1C8(0);
  v21 = *(v20 - 8);
  v85 = v20;
  v86 = v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E25C(0);
  v89 = v25;
  v87 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v95 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BA4A3EA8();
  v82 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v32 = sub_1BA4A3E88();
  v33 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v81 = v24;
    v35 = v34;
    v36 = swift_slowAlloc();
    v80 = a4;
    v78 = a7;
    v37 = v36;
    *&v99[0] = v36;
    *v35 = 136315138;
    v38 = sub_1BA4A85D8();
    v79 = v14;
    v40 = sub_1B9F0B82C(v38, v39, v99);
    v77 = v28;
    v41 = v40;
    v14 = v79;

    *(v35 + 4) = v41;
    _os_log_impl(&dword_1B9F07000, v32, v33, "[%s]: Checking criteria for Sharing onboaring", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    a4 = v80;
    MEMORY[0x1BFAF43A0](v37, -1, -1);
    v42 = v35;
    v24 = v81;
    MEMORY[0x1BFAF43A0](v42, -1, -1);

    (*(v82 + 8))(v31, v77);
    v43 = v78;
  }

  else
  {

    (*(v82 + 8))(v31, v28);
    v43 = a7;
  }

  v44 = v98;
  v45 = v96;
  (*(v98 + 48))(v43, v98);
  *&v99[0] = sub_1BA443554(v43, v44);
  v101 = sub_1BA443FAC(a4);
  v100 = sub_1BA2B1C48(v97);
  sub_1BA02DF60(0);
  sub_1BA44350C(&qword_1EBBEA0F8, sub_1BA02DF60, MEMORY[0x1E695BED8]);
  sub_1BA4A4AB8();
  sub_1BA44350C(&qword_1EBBEA798, sub_1BA02E124, MEMORY[0x1E695BC70]);
  v46 = v83;
  sub_1BA4A5038();
  (*(v16 + 8))(v19, v46);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v47 = sub_1BA4A7308();
  *&v99[0] = v47;
  v48 = sub_1BA4A72A8();
  (*(*(v48 - 8) + 56))(v14, 1, 1, v48);
  sub_1BA44350C(&qword_1EBBEA7A8, sub_1BA02E1C8, MEMORY[0x1E695BDB8]);
  sub_1B9F3DC80();
  v49 = v85;
  sub_1BA4A50A8();
  sub_1B9F0E040(v14, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1B9F3D7EC);

  (*(v86 + 8))(v24, v49);
  v51 = v90;
  v50 = v91;
  v52 = *(v91 + 16);
  v52(v90, v45, v43);
  v53 = *(v50 + 80);
  v54 = (v53 + 32) & ~v53;
  v55 = v84 + 7;
  v56 = (v84 + 7 + v54) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v58 = v98;
  *(v57 + 16) = v43;
  *(v57 + 24) = v58;
  v59 = *(v50 + 32);
  v60 = v57 + v54;
  v61 = v57;
  v86 = v57;
  v59(v60, v51, v43);
  v62 = v94;
  *(v61 + v56) = v94;
  v63 = v62;
  v52(v51, v96, v43);
  sub_1B9F0A534(v88, v99);
  v64 = (v53 + 40) & ~v53;
  v65 = (v55 + v64) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v67 = v98;
  v66[2] = v43;
  v66[3] = v67;
  v66[4] = v63;
  v59(v66 + v64, v51, v43);
  v68 = v97;
  *(v66 + v65) = v97;
  v69 = v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8);
  sub_1B9F25598(v99, v69);
  *(v69 + 40) = v92 & 1;
  *(v69 + 41) = v93 & 1;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1BA444284;
  *(v70 + 24) = v66;
  sub_1BA44350C(&qword_1EBBEA7B8, sub_1BA02E25C, MEMORY[0x1E695BE98]);
  v71 = v63;
  v72 = v68;
  v73 = v89;
  v74 = v95;
  sub_1BA4A4F88();

  return (*(v87 + 8))(v74, v73);
}

void sub_1BA43ED80(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BA442F48(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1BA441920(v4);
  *a1 = v2;
}

uint64_t sub_1BA43EDEC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315394;
    v13 = sub_1BA4A85D8();
    v15 = sub_1B9F0B82C(v13, v14, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v8;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] iCloud sync eligibility check is overriden in UserDefaults. Returning: %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BA43EFA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F428(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA44446C(a1, v11, sub_1BA02F428);
  v12 = type metadata accessor for SummarySharingOnboardingError(0);
  LODWORD(a1) = (*(*(v12 - 8) + 48))(v11, 1, v12);
  result = sub_1BA444404(v11, sub_1BA02F428);
  if (a1 != 1)
  {
    sub_1BA4A3DD8();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Sync Observer is nil", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_1BA43F21C(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  v11 = *a1;
  if (*(a1 + 8) == 1)
  {
    v12 = v11;
    sub_1BA4A3DD8();
    v13 = v11;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FC8();
    sub_1BA336520(v11);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v11;
      v31 = v17;
      *v16 = 136315138;
      v18 = v11;
      sub_1B9FED358();
      v19 = sub_1BA4A6808();
      v21 = sub_1B9F0B82C(v19, v20, &v31);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1B9F07000, v14, v15, "Received CloudSyncObserver error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);

      sub_1BA336520(v11);
    }

    else
    {
      sub_1BA336520(v11);
    }

    return (*(v3 + 8))(v10, v2);
  }

  else
  {
    v22 = v11;
    sub_1BA4A3DD8();
    v23 = v22;
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FC8();
    sub_1BA336520(v11);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v11;
      v28 = v23;
      _os_log_impl(&dword_1B9F07000, v24, v25, "Received CloudSyncObserver status: %@", v26, 0xCu);
      sub_1BA444404(v27, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);

      sub_1BA336520(v11);
    }

    else
    {
      sub_1BA336520(v11);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1BA43F550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  sub_1BA4444E4(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v36 = &v36 - v5;
  sub_1BA02F280(0);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D7EC(0, &qword_1EBBEA160, type metadata accessor for SummarySharingOnboardingError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for SummarySharingOnboardingError(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v36 - v20);
  sub_1BA02EF20(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  if (*(a1 + 8) == 1)
  {
    v29 = v28;
    SummarySharingOnboardingError.init(error:)(v28, v21);
    sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError, &protocol conformance descriptor for SummarySharingOnboardingError);
    sub_1BA4A4E38();
    sub_1BA44350C(&qword_1EBBEA7D0, sub_1BA02EF20, MEMORY[0x1E695BFF8]);
    v30 = sub_1BA4A4F98();
    result = (*(v24 + 8))(v27, v23);
  }

  else
  {
    SummarySharingOnboardingError.init(syncStatus:)(v28, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1B9F0E040(v12, &qword_1EBBEA160, type metadata accessor for SummarySharingOnboardingError, MEMORY[0x1E69E6720], sub_1B9F3D7EC);
      v43 = 1;
      v32 = v36;
      sub_1BA4A4E78();
      sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError, &protocol conformance descriptor for SummarySharingOnboardingError);
      v33 = v37;
      v34 = v39;
      sub_1BA4A4E48();
      (*(v38 + 8))(v32, v34);
      sub_1BA44350C(&qword_1EBBEA810, sub_1BA02F280, MEMORY[0x1E695C0C8]);
      v35 = v41;
      v30 = sub_1BA4A4F98();
      result = (*(v40 + 8))(v33, v35);
    }

    else
    {
      sub_1BA2CDF68(v12, v17);
      sub_1BA44446C(v17, v21, type metadata accessor for SummarySharingOnboardingError);
      sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError, &protocol conformance descriptor for SummarySharingOnboardingError);
      sub_1BA4A4E38();
      sub_1BA44350C(&qword_1EBBEA7D0, sub_1BA02EF20, MEMORY[0x1E695BFF8]);
      v30 = sub_1BA4A4F98();
      (*(v24 + 8))(v27, v23);
      result = sub_1BA444404(v17, type metadata accessor for SummarySharingOnboardingError);
    }
  }

  *v42 = v30;
  return result;
}

uint64_t sub_1BA43FB7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA02EF20(0);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4444E4(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v12 = v11;
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v32 - v14;
  sub_1BA02F280(0);
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4444E4(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v32 - v24;
  v26 = *a1;
  if (qword_1EBBE8328 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v21, qword_1EBBEB818);
  (*(v22 + 16))(v25, v27, v21);
  sub_1BA4A1CA8();
  (*(v22 + 8))(v25, v21);
  if (v26 >= v39)
  {
    *v6 = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError, &protocol conformance descriptor for SummarySharingOnboardingError);
    sub_1BA4A4E38();
    sub_1BA44350C(&qword_1EBBEA7D0, sub_1BA02EF20, MEMORY[0x1E695BFF8]);
    v31 = v36;
    v29 = sub_1BA4A4F98();
    result = (*(v35 + 8))(v10, v31);
  }

  else
  {
    v38 = 1;
    sub_1BA4A4E78();
    sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError, &protocol conformance descriptor for SummarySharingOnboardingError);
    sub_1BA4A4E48();
    (*(v32 + 8))(v15, v12);
    sub_1BA44350C(&qword_1EBBEA810, sub_1BA02F280, MEMORY[0x1E695C0C8]);
    v28 = v34;
    v29 = sub_1BA4A4F98();
    result = (*(v33 + 8))(v19, v28);
  }

  *v37 = v29;
  return result;
}
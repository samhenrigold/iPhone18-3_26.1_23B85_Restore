void sub_1BA267F88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA267FD8(uint64_t a1, uint64_t a2)
{
  sub_1B9F89310(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8], MEMORY[0x1E6981148]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA268060()
{
  result = qword_1EBBEF4E0;
  if (!qword_1EBBEF4E0)
  {
    sub_1BA267F88(255, &qword_1EBBEF478, &type metadata for AudioExposureCurrentValueView.PaletteSymbolView, MEMORY[0x1E69E6720]);
    sub_1BA2680FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4E0);
  }

  return result;
}

unint64_t sub_1BA2680FC()
{
  result = qword_1EBBEF4E8;
  if (!qword_1EBBEF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4E8);
  }

  return result;
}

double sub_1BA268150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BA2681B4(uint64_t a1, uint64_t a2)
{
  sub_1B9F532BC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA268218()
{
  result = qword_1EBBEF4F0;
  if (!qword_1EBBEF4F0)
  {
    sub_1BA2663C0(255, &qword_1EBBEF4C8, sub_1BA267D2C, sub_1BA267EB0);
    sub_1BA2682F8();
    sub_1B9F893A8(&unk_1EBBEF500, sub_1BA267EB0, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4F0);
  }

  return result;
}

unint64_t sub_1BA2682F8()
{
  result = qword_1EBBEF4F8;
  if (!qword_1EBBEF4F8)
  {
    sub_1BA267D2C(255);
    sub_1B9F89168(255);
    sub_1B9F8920C();
    swift_getOpaqueTypeConformance2();
    sub_1B9F893A8(&qword_1EDC5EC60, sub_1BA267DE4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4F8);
  }

  return result;
}

double sub_1BA2683D8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  v8 = v5 == 0xD00000000000002ALL && 0x80000001BA4E92A0 == v7;
  if (v8 || (sub_1BA4A8338() & 1) != 0)
  {
    goto LABEL_11;
  }

  v9 = v5 == 0xD000000000000033 && 0x80000001BA4E92D0 == v7;
  if (v9 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000028 && 0x80000001BA4F7330 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD00000000000003ALL && 0x80000001BA4F7360 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000035 && 0x80000001BA4F73A0 == v7 || (sub_1BA4A8338() & 1) != 0)
  {
    goto LABEL_11;
  }

  if (v5 == 0xD00000000000002ELL && 0x80000001BA4F73E0 == v7 || (sub_1BA4A8338() & 1) != 0)
  {

    v10 = a2;
    v11 = a1;
    goto LABEL_13;
  }

  if (v5 == 0xD00000000000001ELL && 0x80000001BA4F7410 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000030 && 0x80000001BA4F7430 == v7)
  {
LABEL_11:

LABEL_12:
    v10 = a2;
    v11 = a1;
LABEL_13:
    sub_1B9FC8434(v11, v10);
    return result;
  }

  v13 = sub_1BA4A8338();

  if (v13)
  {
    goto LABEL_12;
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

char *SummarySharingProfileGradientsProvider.__allocating_init(context:predicates:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1BA26BC68(a1, a2);

  return v6;
}

unint64_t sub_1BA268750(unint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFAF2860](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        sub_1BA268FB4(&v11, a2, a3);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1BA4A7CC8();
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_1BA268864(uint64_t *a1)
{
  v2 = *(type metadata accessor for CategoryMetadata(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BA2F67C0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BA269AC0(v5);
  *a1 = v3;
}

char *SummarySharingProfileGradientsProvider.init(context:predicates:)(void *a1, void *a2)
{
  v3 = sub_1BA26BC68(a1, a2);

  return v3;
}

double sub_1BA268940(uint64_t a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingProfileGradientsProvider_fetchedResultsController);
  v30[0] = 0;
  if ([v9 performFetch_])
  {
    v10 = v30[0];
    v11 = [v9 sections];
    if (v11)
    {
      v12 = v11;
      sub_1BA024D28();
      v13 = sub_1BA4A6B08();
    }

    else
    {
      v13 = 0;
    }

    sub_1BA268D68(v13);
  }

  else
  {
    v14 = v30[0];
    v15 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3E28();
    v16 = v15;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315394;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, v30);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v29 = v15;
      v24 = v15;
      sub_1B9FED358();
      v25 = sub_1BA4A6828();
      v27 = sub_1B9F0B82C(v25, v26, v30);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] fetchedResultsController threw an error during performFetch: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v8, v3);
  }

  return result;
}

double sub_1BA268C40()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingProfileGradientsProvider_fetchedResultsController) sections];
  if (v1)
  {
    v2 = v1;
    sub_1BA024D28();
    v3 = sub_1BA4A6B08();
  }

  else
  {
    v3 = 0;
  }

  sub_1BA268D68(v3);

  return result;
}

void sub_1BA268D68(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1BA268750(a1, &v20, ObjectType);
    v9 = v20;
    v10 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_categoriesMetadata;
    swift_beginAccess();
    *(v1 + v10) = v9;

    swift_beginAccess();
    sub_1BA268864((v1 + v10));
    swift_endAccess();
    sub_1BA24F418();
  }

  else
  {
    sub_1BA4A3E28();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315138;
      v15 = sub_1BA4A85D8();
      v17 = sub_1B9F0B82C(v15, v16, v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Unable to find sections from fetchedResultsController", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

void sub_1BA268FB4(id *a1, uint64_t *a2, uint64_t a3)
{
  v90 = a3;
  sub_1B9F47F74(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v87 = &v77 - v7;
  v86 = type metadata accessor for CategoryMetadata(0);
  v8 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v9);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v77 - v14;
  v16 = sub_1BA4A3EA8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (&v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v23 = MEMORY[0x1EEE9AC00](v21, v22).n128_u64[0];
  v88 = &v77 - v24;
  v25 = *a1;
  v26 = [*a1 objects];
  if (!v26)
  {
    goto LABEL_17;
  }

  v84 = v25;
  v89 = v16;
  v27 = v26;
  v28 = sub_1BA4A6B08();

  if (!v28[2])
  {

    v16 = v89;
    goto LABEL_17;
  }

  v85 = v17;
  v80 = v15;
  v81 = v11;
  v82 = v8;
  v83 = a2;
  v29 = v28 + 4;
  sub_1B9F0AD9C((v28 + 4), v93);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_16:
    v16 = v89;
    v17 = v85;
LABEL_17:
    sub_1BA4A3E28();
    v40 = sub_1BA4A3E88();
    v41 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v93[0] = v43;
      *v42 = 136315138;
      v44 = sub_1BA4A85D8();
      v46 = v17;
      v47 = sub_1B9F0B82C(v44, v45, v93);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1B9F07000, v40, v41, "[%s] unable to look up feeditem or feeditem's associatedDisplayCategory from section", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);

      (*(v46 + 8))(v20, v16);
    }

    else
    {

      (*(v17 + 8))(v20, v16);
    }

    return;
  }

  v30 = v92[0];
  v31 = sub_1BA4A2648();
  if (!v31)
  {

    goto LABEL_16;
  }

  v78 = v31;
  v79 = v30;
  v32 = v28[2];
  if (v32)
  {
    v94 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v32, 0);
    v33 = 0;
    v34 = v94;
    v35 = v91;
    while (1)
    {
      if (v33 >= v28[2])
      {
        __break(1u);
        goto LABEL_32;
      }

      sub_1B9F0AD9C(v29, v93);
      sub_1BA2697E4(v93, v92);
      if (v35)
      {
        break;
      }

      v35 = 0;
      __swift_destroy_boxed_opaque_existential_1(v93);
      v36 = v92[0];
      v20 = v92[1];
      v94 = v34;
      v11 = *(v34 + 16);
      v37 = *(v34 + 24);
      v38 = v34;
      if (v11 >= v37 >> 1)
      {
        v91 = 0;
        sub_1B9F1C360((v37 > 1), v11 + 1, 1);
        v35 = v91;
        v38 = v94;
      }

      ++v33;
      *(v38 + 16) = v11 + 1;
      v39 = v38 + 16 * v11;
      *(v39 + 32) = v36;
      *(v39 + 40) = v20;
      v29 += 4;
      v34 = v38;
      if (v32 == v33)
      {
        v91 = v35;

        goto LABEL_21;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v93);

    __break(1u);
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v48 = v88;
    sub_1BA4A3E28();
    v49 = v84;
    swift_unknownObjectRetain();

    v50 = sub_1BA4A3E88();
    v51 = sub_1BA4A6FC8();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v93[0] = v77;
      *v52 = 136315650;
      v53 = sub_1BA4A85D8();
      v55 = v34;
      v56 = sub_1B9F0B82C(v53, v54, v93);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = [v49 name];
      v58 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v60 = v59;

      v61 = sub_1B9F0B82C(v58, v60, v93);

      *(v52 + 14) = v61;
      *(v52 + 22) = 2080;
      v62 = MEMORY[0x1BFAF1560](v55, MEMORY[0x1E69E6158]);
      v64 = v63;

      v65 = sub_1B9F0B82C(v62, v64, v93);

      *(v52 + 24) = v65;
      _os_log_impl(&dword_1B9F07000, v50, v51, "[%s] got section %s: %s", v52, 0x20u);
      v66 = v77;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v66, -1, -1);
      MEMORY[0x1BFAF43A0](v52, -1, -1);

      (*(v85 + 8))(v88, v89);
    }

    else
    {

      (*(v85 + 8))(v48, v89);
    }

    v11 = v82;
    v20 = v83;
    v29 = v80;
    v34 = v81;
    v67 = v87;
    v28 = v79;
    v68 = [v49 numberOfObjects];
    v69 = [v28 relevantEndDate];
    if (v69)
    {
      v70 = v69;
      sub_1BA4A16F8();

      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    v72 = sub_1BA4A1728();
    (*(*(v72 - 8) + 56))(v67, v71, 1, v72);
    *v29 = v78;
    v29[1] = v68;
    sub_1B9FD84F0(v67, v29 + *(v86 + 24));
    sub_1BA26C478(v29, v34);
    v35 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v20 = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_32:
      v35 = sub_1BA27F43C(0, v35[2] + 1, 1, v35);
      *v20 = v35;
    }

    v75 = v35[2];
    v74 = v35[3];
    if (v75 >= v74 >> 1)
    {
      *v20 = sub_1BA27F43C((v74 > 1), v75 + 1, 1, v35);
    }

    sub_1BA26C4DC(v29);
    v76 = *v20;
    v76[2] = v75 + 1;
    sub_1BA26C538(v34, v76 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v75);
  }
}

void sub_1BA2697E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B9F0AD9C(a1, &v18);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v3 = v16;
  }

  else
  {
    v3 = 0;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_1BA4A2758();

  v6 = sub_1BA1591A8(v5);

  if (!v6)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v7 = [v6 hk_localizedName];

  if (!v7)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v9 = v8;

LABEL_10:
  v17 = v6;
  sub_1B9F232F8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v10 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v10);

  MEMORY[0x1BFAF1350](8250, 0xE200000000000000);
  if (v3)
  {
    v11 = v3;
    v12 = sub_1BA4A2648();

    if (v12)
    {
      v13 = [v12 categoryName];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }
  }

  v14 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v14);

  v15 = v19;
  *a2 = v18;
  a2[1] = v15;
}

id SummarySharingProfileGradientsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SummarySharingProfileGradientsProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummarySharingProfileGradientsProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA269AC0(uint64_t *a1)
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
        type metadata accessor for CategoryMetadata(0);
        v6 = sub_1BA4A6B98();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CategoryMetadata(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1BA26A0B0(v8, v9, a1, v4);
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
    sub_1BA269BEC(0, v2, 1, a1);
  }
}

void sub_1BA269BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1B9F47F74(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v67 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v55 - v13;
  v15 = sub_1BA4A1728();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v63 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v72 = &v55 - v21;
  v74 = type metadata accessor for CategoryMetadata(0);
  MEMORY[0x1EEE9AC00](v74, v22);
  v70 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v73 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v75 = &v55 - v30;
  v57 = a2;
  if (a3 != a2)
  {
    v31 = *a4;
    v32 = *(v29 + 72);
    v68 = (v16 + 48);
    v69 = v31;
    v64 = (v16 + 8);
    v65 = (v16 + 32);
    v33 = v31 + v32 * (a3 - 1);
    v34 = -v32;
    v35 = a1 - a3;
    v56 = v32;
    v36 = v31 + v32 * a3;
    v66 = v14;
    v62 = -v32;
LABEL_7:
    v60 = v33;
    v61 = a3;
    v58 = v36;
    v59 = v35;
    v38 = v35;
    v39 = v73;
    while (1)
    {
      v40 = v75;
      sub_1BA26C478(v36, v75);
      sub_1BA26C478(v33, v39);
      v41 = *(v39 + 8);
      v42 = *(v40 + 8);
      if (v41 == v42)
      {
        sub_1BA246A0C(v39 + *(v74 + 24), v14);
        v43 = *v68;
        if ((*v68)(v14, 1, v15) == 1)
        {
          v37 = v14;
LABEL_5:
          sub_1BA05DB44(v37);
          sub_1BA26C4DC(v73);
          sub_1BA26C4DC(v75);
LABEL_6:
          a3 = v61 + 1;
          v33 = v60 + v56;
          v35 = v59 - 1;
          v36 = v58 + v56;
          if (v61 + 1 == v57)
          {
            return;
          }

          goto LABEL_7;
        }

        v71 = v38;
        v44 = *v65;
        (*v65)(v72, v14, v15);
        v45 = v67;
        sub_1BA246A0C(v75 + *(v74 + 24), v67);
        if (v43(v45, 1, v15) == 1)
        {
          (*v64)(v72, v15);
          v37 = v45;
          v14 = v66;
          goto LABEL_5;
        }

        v46 = v72;
        v47 = v63;
        v44(v63, v45, v15);
        v48 = sub_1BA4A16D8();
        v49 = *v64;
        v50 = v47;
        v51 = v46;
        v34 = v62;
        (*v64)(v50, v15);
        v49(v51, v15);
        v14 = v66;
        v39 = v73;
        v38 = v71;
      }

      else
      {
        v48 = v41 < v42;
      }

      sub_1BA26C4DC(v39);
      sub_1BA26C4DC(v75);
      if ((v48 & 1) == 0)
      {
        goto LABEL_6;
      }

      if (!v69)
      {
        __break(1u);
        return;
      }

      v52 = v70;
      sub_1BA26C538(v36, v70);
      swift_arrayInitWithTakeFrontToBack();
      v53 = v52;
      v39 = v73;
      sub_1BA26C538(v53, v33);
      v33 += v34;
      v36 += v34;
      if (__CFADD__(v38++, 1))
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_1BA26A0B0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v210 = a1;
  sub_1B9F47F74(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v236 = &v203 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v203 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v203 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v203 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v203 - v27;
  v29 = sub_1BA4A1728();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v228 = &v203 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v241 = &v203 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v213 = &v203 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v219 = &v203 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v204 = &v203 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v205 = &v203 - v47;
  v234 = type metadata accessor for CategoryMetadata(0);
  v223 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234, v48);
  v217 = &v203 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v239 = &v203 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v242 = &v203 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v243 = &v203 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v218 = &v203 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v227 = &v203 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v207 = &v203 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v208 = &v203 - v70;
  v225 = a3;
  v71 = a3[1];
  if (v71 < 1)
  {
    v74 = MEMORY[0x1E69E7CC0];
LABEL_124:
    v76 = *v210;
    if (!*v210)
    {
      goto LABEL_162;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v226;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_126:
      v244 = v74;
      v199 = *(v74 + 2);
      if (v199 >= 2)
      {
        while (*v225)
        {
          v200 = *&v74[16 * v199];
          v201 = *&v74[16 * v199 + 24];
          sub_1BA26B178(*v225 + *(v223 + 72) * v200, (*v225 + *(v223 + 72) * *&v74[16 * v199 + 16]), *v225 + *(v223 + 72) * v201, v76);
          if (v78)
          {
            goto LABEL_134;
          }

          if (v201 < v200)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = sub_1BA442D80(v74);
          }

          if (v199 - 2 >= *(v74 + 2))
          {
            goto LABEL_150;
          }

          v202 = &v74[16 * v199];
          *v202 = v200;
          *(v202 + 1) = v201;
          v244 = v74;
          sub_1BA442CF4(v199 - 1);
          v74 = v244;
          v199 = *(v244 + 2);
          if (v199 <= 1)
          {
            goto LABEL_134;
          }
        }

        goto LABEL_160;
      }

LABEL_134:

      return;
    }

LABEL_156:
    v74 = sub_1BA442D80(v74);
    goto LABEL_126;
  }

  v72 = 0;
  v233 = (v30 + 48);
  v230 = (v30 + 8);
  v231 = (v30 + 32);
  v209 = a4;
  v229 = v9;
  v73 = v236;
  v212 = v16;
  v216 = v20;
  v203 = v24;
  v206 = v28;
  v235 = v29;
  v74 = MEMORY[0x1E69E7CC0];
  v75 = v234;
  v76 = v242;
LABEL_5:
  v77 = v72;
  v78 = (v72 + 1);
  v232 = v74;
  if ((v72 + 1) >= v71)
  {
    goto LABEL_44;
  }

  v222 = v71;
  v79 = *v225;
  v80 = *(v223 + 72);
  v81 = v208;
  sub_1BA26C478(*v225 + v80 * v78, v208);
  v211 = v77;
  v238 = v80;
  v82 = v79 + v80 * v77;
  v83 = v207;
  sub_1BA26C478(v82, v207);
  v84 = *(v83 + 8);
  v85 = *(v81 + 8);
  if (v84 == v85)
  {
    v224 = v78;
    sub_1BA246A0C(v83 + *(v75 + 24), v28);
    v86 = *v233;
    v87 = v235;
    if ((*v233)(v28, 1, v235) == 1)
    {
      v88 = v28;
    }

    else
    {
      v240 = *v231;
      (v240)(v205, v28, v87);
      v89 = v203;
      sub_1BA246A0C(v208 + *(v75 + 24), v203);
      v90 = v86(v89, 1, v87);
      if (v90 != 1)
      {
        v91 = v204;
        (v240)(v204, v89, v87);
        v92 = v205;
        LODWORD(v237) = sub_1BA4A16D8();
        v93 = *v230;
        (*v230)(v91, v87);
        v93(v92, v87);
        goto LABEL_15;
      }

      (*v230)(v205, v87);
      v88 = v89;
    }

    sub_1BA05DB44(v88);
    LODWORD(v237) = 0;
LABEL_15:
    v83 = v207;
    v78 = v224;
    goto LABEL_16;
  }

  LODWORD(v237) = v84 < v85;
LABEL_16:
  sub_1BA26C4DC(v83);
  sub_1BA26C4DC(v208);
  v94 = (v211 + 2);
  v95 = v238 * (v211 + 2);
  v96 = v79 + v95;
  v97 = v238 * v78;
  v98 = v79 + v238 * v78;
  v99 = v218;
  do
  {
    v102 = v94;
    v103 = v78;
    v104 = v97;
    v105 = v95;
    v240 = v94;
    if (v94 >= v222)
    {
      break;
    }

    v106 = v227;
    sub_1BA26C478(v96, v227);
    sub_1BA26C478(v98, v99);
    v107 = *(v99 + 8);
    v108 = *(v106 + 8);
    if (v107 == v108)
    {
      v109 = v99;
      v110 = v234;
      v111 = v216;
      sub_1BA246A0C(v109 + *(v234 + 24), v216);
      v112 = *v233;
      if ((*v233)(v111, 1, v235) == 1)
      {
        v113 = v111;
        goto LABEL_25;
      }

      v114 = v111;
      v115 = v235;
      v224 = *v231;
      (v224)(v219, v114, v235);
      v116 = v227 + *(v110 + 24);
      v117 = v212;
      sub_1BA246A0C(v116, v212);
      if (v112(v117, 1, v115) == 1)
      {
        (*v230)(v219, v235);
        v113 = v117;
LABEL_25:
        sub_1BA05DB44(v113);
        v100 = 0;
      }

      else
      {
        v118 = v117;
        v119 = v235;
        (v224)(v213, v118, v235);
        v100 = sub_1BA4A16D8();
        v120 = *v230;
        (*v230)(v213, v119);
        v120(v219, v119);
      }

      v74 = v232;
      v76 = v242;
      v99 = v218;
      goto LABEL_18;
    }

    v100 = v107 < v108;
LABEL_18:
    sub_1BA26C4DC(v99);
    sub_1BA26C4DC(v227);
    v101 = v100 & 1;
    v102 = v240;
    v94 = v240 + 1;
    v96 += v238;
    v98 += v238;
    v78 = v103 + 1;
    v97 = v104 + v238;
    v95 = v105 + v238;
  }

  while ((v237 & 1) == v101);
  if ((v237 & 1) == 0)
  {
    goto LABEL_42;
  }

  v121 = v211;
  a4 = v209;
  if (v102 < v211)
  {
    goto LABEL_153;
  }

  if (v211 >= v102)
  {
    v78 = v102;
    v75 = v234;
    v73 = v236;
    v77 = v211;
  }

  else
  {
    v122 = v211 * v238;
    do
    {
      if (v121 != v103)
      {
        v124 = *v225;
        if (!*v225)
        {
          goto LABEL_159;
        }

        sub_1BA26C538(v124 + v122, v217);
        if (v122 < v104 || v124 + v122 >= (v124 + v105))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v122 != v104)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1BA26C538(v217, v124 + v104);
        v102 = v240;
      }

      ++v121;
      v104 -= v238;
      v105 -= v238;
      v122 += v238;
    }

    while (v121 < v103--);
LABEL_42:
    v78 = v102;
    a4 = v209;
    v75 = v234;
    v73 = v236;
    v77 = v211;
  }

LABEL_44:
  v125 = v225[1];
  if (v78 >= v125)
  {
    goto LABEL_69;
  }

  if (__OFSUB__(v78, v77))
  {
    goto LABEL_152;
  }

  if (v78 - v77 >= a4)
  {
LABEL_69:
    if (v78 < v77)
    {
      goto LABEL_151;
    }

    goto LABEL_70;
  }

  if (__OFADD__(v77, a4))
  {
    goto LABEL_154;
  }

  if (v77 + a4 >= v125)
  {
    v126 = v225[1];
  }

  else
  {
    v126 = (v77 + a4);
  }

  if (v126 < v77)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v78 == v126)
  {
    goto LABEL_69;
  }

  v127 = *v225;
  v128 = *(v223 + 72);
  v129 = *v225 + v128 * (v78 - 1);
  v237 = -v128;
  v211 = v77;
  v130 = (v77 - v78);
  v214 = v128;
  v238 = v127;
  v131 = v127 + v78 * v128;
  v215 = v126;
  while (2)
  {
    v224 = v78;
    v220 = v131;
    v221 = v130;
    v133 = v130;
    v222 = v129;
LABEL_58:
    v134 = v243;
    sub_1BA26C478(v131, v243);
    sub_1BA26C478(v129, v76);
    v135 = *(v76 + 8);
    v136 = *(v134 + 8);
    if (v135 == v136)
    {
      v137 = v74;
      sub_1BA246A0C(v76 + *(v75 + 24), v73);
      v138 = v75;
      v139 = *v233;
      v140 = v235;
      if ((*v233)(v73, 1, v235) == 1)
      {
        v132 = v73;
        v74 = v137;
      }

      else
      {
        v240 = v133;
        v141 = *v231;
        v142 = v241;
        (*v231)(v241, v73, v140);
        v143 = v243 + *(v138 + 24);
        v144 = v229;
        sub_1BA246A0C(v143, v229);
        if (v139(v144, 1, v140) != 1)
        {
          v145 = v228;
          (v141)(v228, v144, v140);
          v146 = sub_1BA4A16D8();
          v147 = *v230;
          (*v230)(v145, v140);
          v147(v241, v140);
          v73 = v236;
          v74 = v232;
          v75 = v234;
          v76 = v242;
          v133 = v240;
          goto LABEL_63;
        }

        (*v230)(v142, v140);
        v132 = v144;
        v73 = v236;
        v74 = v232;
      }

      sub_1BA05DB44(v132);
      v76 = v242;
      sub_1BA26C4DC(v242);
      sub_1BA26C4DC(v243);
      v75 = v234;
LABEL_56:
      v78 = (v224 + 1);
      v129 = v222 + v214;
      v130 = v221 - 1;
      v131 = v220 + v214;
      if (v224 + 1 != v215)
      {
        continue;
      }

      v78 = v215;
      v77 = v211;
      if (v215 < v211)
      {
        goto LABEL_151;
      }

LABEL_70:
      v224 = v78;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1BA27F470(0, *(v74 + 2) + 1, 1, v74);
      }

      v151 = *(v74 + 2);
      v150 = *(v74 + 3);
      v152 = v151 + 1;
      if (v151 >= v150 >> 1)
      {
        v74 = sub_1BA27F470((v150 > 1), v151 + 1, 1, v74);
      }

      *(v74 + 2) = v152;
      v153 = &v74[16 * v151];
      v154 = v224;
      *(v153 + 4) = v77;
      *(v153 + 5) = v154;
      if (!*v210)
      {
        goto LABEL_161;
      }

      if (!v151)
      {
        v73 = v236;
LABEL_4:
        v72 = v224;
        v71 = v225[1];
        a4 = v209;
        v28 = v206;
        if (v224 >= v71)
        {
          goto LABEL_124;
        }

        goto LABEL_5;
      }

      v78 = *v210;
      v73 = v236;
      while (2)
      {
        v155 = v152 - 1;
        if (v152 >= 4)
        {
          v160 = &v74[16 * v152 + 32];
          v161 = *(v160 - 64);
          v162 = *(v160 - 56);
          v166 = __OFSUB__(v162, v161);
          v163 = v162 - v161;
          if (v166)
          {
            goto LABEL_138;
          }

          v165 = *(v160 - 48);
          v164 = *(v160 - 40);
          v166 = __OFSUB__(v164, v165);
          v158 = v164 - v165;
          v159 = v166;
          if (v166)
          {
            goto LABEL_139;
          }

          v167 = &v74[16 * v152];
          v169 = *v167;
          v168 = *(v167 + 1);
          v166 = __OFSUB__(v168, v169);
          v170 = v168 - v169;
          if (v166)
          {
            goto LABEL_141;
          }

          v166 = __OFADD__(v158, v170);
          v171 = v158 + v170;
          if (v166)
          {
            goto LABEL_144;
          }

          if (v171 >= v163)
          {
            v189 = &v74[16 * v155 + 32];
            v191 = *v189;
            v190 = *(v189 + 1);
            v166 = __OFSUB__(v190, v191);
            v192 = v190 - v191;
            if (v166)
            {
              goto LABEL_148;
            }

            if (v158 < v192)
            {
              v155 = v152 - 2;
            }
          }

          else
          {
LABEL_90:
            if (v159)
            {
              goto LABEL_140;
            }

            v172 = &v74[16 * v152];
            v174 = *v172;
            v173 = *(v172 + 1);
            v175 = __OFSUB__(v173, v174);
            v176 = v173 - v174;
            v177 = v175;
            if (v175)
            {
              goto LABEL_143;
            }

            v178 = &v74[16 * v155 + 32];
            v180 = *v178;
            v179 = *(v178 + 1);
            v166 = __OFSUB__(v179, v180);
            v181 = v179 - v180;
            if (v166)
            {
              goto LABEL_146;
            }

            if (__OFADD__(v176, v181))
            {
              goto LABEL_147;
            }

            if (v176 + v181 < v158)
            {
              goto LABEL_104;
            }

            if (v158 < v181)
            {
              v155 = v152 - 2;
            }
          }
        }

        else
        {
          if (v152 == 3)
          {
            v156 = *(v74 + 4);
            v157 = *(v74 + 5);
            v166 = __OFSUB__(v157, v156);
            v158 = v157 - v156;
            v159 = v166;
            goto LABEL_90;
          }

          v182 = &v74[16 * v152];
          v184 = *v182;
          v183 = *(v182 + 1);
          v166 = __OFSUB__(v183, v184);
          v176 = v183 - v184;
          v177 = v166;
LABEL_104:
          if (v177)
          {
            goto LABEL_142;
          }

          v185 = &v74[16 * v155];
          v187 = *(v185 + 4);
          v186 = *(v185 + 5);
          v166 = __OFSUB__(v186, v187);
          v188 = v186 - v187;
          if (v166)
          {
            goto LABEL_145;
          }

          if (v188 < v176)
          {
            goto LABEL_4;
          }
        }

        v193 = v155 - 1;
        if (v155 - 1 >= v152)
        {
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
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if (!*v225)
        {
          goto LABEL_158;
        }

        v194 = *&v74[16 * v193 + 32];
        v195 = *&v74[16 * v155 + 40];
        v196 = v226;
        sub_1BA26B178(*v225 + *(v223 + 72) * v194, (*v225 + *(v223 + 72) * *&v74[16 * v155 + 32]), *v225 + *(v223 + 72) * v195, v78);
        v226 = v196;
        if (v196)
        {
          goto LABEL_134;
        }

        if (v195 < v194)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_1BA442D80(v74);
        }

        if (v193 >= *(v74 + 2))
        {
          goto LABEL_137;
        }

        v197 = &v74[16 * v193];
        *(v197 + 4) = v194;
        *(v197 + 5) = v195;
        v244 = v74;
        sub_1BA442CF4(v155);
        v74 = v244;
        v152 = *(v244 + 2);
        v73 = v236;
        if (v152 <= 1)
        {
          goto LABEL_4;
        }

        continue;
      }
    }

    break;
  }

  v146 = v135 < v136;
LABEL_63:
  sub_1BA26C4DC(v76);
  sub_1BA26C4DC(v243);
  if ((v146 & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v238)
  {
    v148 = v239;
    sub_1BA26C538(v131, v239);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BA26C538(v148, v129);
    v129 += v237;
    v131 += v237;
    v149 = __CFADD__(v133++, 1);
    v76 = v242;
    if (v149)
    {
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}

void sub_1BA26B178(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v111 = a4;
  sub_1B9F47F74(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v98 = (&v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v105 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v106 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v94 - v18;
  v20 = sub_1BA4A1728();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v96 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v102 = &v94 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v97 = &v94 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v104 = &v94 - v32;
  v33 = type metadata accessor for CategoryMetadata(0);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v108 = (&v94 - v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v94 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v46 = &v94 - v45;
  v48 = *(v47 + 72);
  if (!v48)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v101 = v20;
  v49 = a2;
  if (&a2[-a1] == 0x8000000000000000 && v48 == -1)
  {
    goto LABEL_80;
  }

  v50 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v48 != -1)
  {
    v51 = &a2[-a1] / v48;
    v114 = a1;
    v113 = v111;
    v110 = v48;
    if (v51 < v50 / v48)
    {
      v109 = v33;
      v52 = v51 * v48;
      v107 = v21;
      if (v111 < a1 || a1 + v52 <= v111)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v111 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v55 = &v111[v52];
      v112 = &v111[v52];
      v56 = v52 < 1 || a2 >= a3;
      v57 = v101;
      if (!v56)
      {
        v108 = (v107 + 48);
        v98 = (v107 + 8);
        v99 = v41;
        v102 = v107 + 32;
        v103 = v19;
        v94 = a3;
        v100 = v46;
        v105 = &v111[v52];
        while (1)
        {
          sub_1BA26C478(a2, v46);
          sub_1BA26C478(v111, v41);
          v58 = *(v41 + 1);
          v59 = *(v46 + 1);
          if (v58 == v59)
          {
            sub_1BA246A0C(&v41[*(v109 + 24)], v19);
            v60 = *v108;
            v61 = (*v108)(v19, 1, v57);
            v62 = v19;
            if (v61 == 1)
            {
              goto LABEL_25;
            }

            v107 = a2;
            v63 = *v102;
            v64 = v104;
            (*v102)(v104, v19, v57);
            v65 = v106;
            sub_1BA246A0C(&v46[*(v109 + 24)], v106);
            if (v60(v65, 1, v57) == 1)
            {
              (*v98)(v64, v57);
              v62 = v65;
              a2 = v107;
              v19 = v103;
              v41 = v99;
              v46 = v100;
              v55 = v105;
LABEL_25:
              sub_1BA05DB44(v62);
              sub_1BA26C4DC(v41);
              sub_1BA26C4DC(v46);
LABEL_32:
              v67 = v110;
              v69 = &v111[v110];
              if (a1 < v111 || a1 >= v69)
              {
                swift_arrayInitWithTakeFrontToBack();
LABEL_37:
                v67 = v110;
              }

              else if (a1 != v111)
              {
                swift_arrayInitWithTakeBackToFront();
                goto LABEL_37;
              }

              v113 = v69;
              v111 = v69;
              goto LABEL_42;
            }

            v70 = v97;
            v63(v97, v65, v57);
            v66 = sub_1BA4A16D8();
            v71 = *v98;
            v72 = v70;
            a3 = v94;
            (*v98)(v72, v57);
            v71(v64, v57);
            a2 = v107;
            v19 = v103;
            v41 = v99;
            v46 = v100;
            v55 = v105;
          }

          else
          {
            v66 = v58 < v59;
          }

          sub_1BA26C4DC(v41);
          sub_1BA26C4DC(v46);
          if ((v66 & 1) == 0)
          {
            goto LABEL_32;
          }

          v67 = v110;
          v68 = &a2[v110];
          if (a1 < a2 || a1 >= v68)
          {
            break;
          }

          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_40:
            v67 = v110;
          }

          a2 = v68;
LABEL_42:
          a1 += v67;
          v114 = a1;
          if (v111 >= v55 || a2 >= a3)
          {
            goto LABEL_78;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_40;
      }

      goto LABEL_78;
    }

    v53 = v50 / v48 * v48;
    v106 = v44;
    if (v111 < a2 || &a2[v53] <= v111)
    {
      v54 = v21;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v54 = v21;
      if (v111 == v49)
      {
LABEL_48:
        v73 = &v111[v53];
        if (v53 >= 1)
        {
          v74 = -v48;
          v100 = v54 + 48;
          v97 = v54 + 32;
          v95 = (v54 + 8);
          v75 = &v111[v53];
          v76 = v105;
          v109 = v33;
          v110 = -v48;
          do
          {
            v94 = v73;
            v77 = v49;
            v49 += v74;
            v104 = v77;
            while (1)
            {
              if (v77 <= a1)
              {
                v114 = v77;
                v112 = v94;
                goto LABEL_78;
              }

              v79 = a3;
              v107 = v73;
              v80 = v33;
              v81 = v75 + v74;
              v82 = v108;
              sub_1BA26C478(v81, v108);
              v83 = v106;
              sub_1BA26C478(v49, v106);
              v84 = v83;
              v85 = *(v83 + 8);
              v86 = v82[1];
              if (v85 == v86)
              {
                v103 = v81;
                sub_1BA246A0C(v83 + *(v80 + 24), v76);
                v87 = *v100;
                v33 = v80;
                v88 = v101;
                if ((*v100)(v76, 1, v101) == 1)
                {
                  sub_1BA05DB44(v76);
                  v89 = 0;
                }

                else
                {
                  v99 = *v97;
                  (v99)(v102, v76, v88);
                  v90 = v108 + *(v33 + 24);
                  v91 = v98;
                  sub_1BA246A0C(v90, v98);
                  if (v87(v91, 1, v88) == 1)
                  {
                    (*v95)(v102, v88);
                    sub_1BA05DB44(v91);
                    v89 = 0;
                  }

                  else
                  {
                    v92 = v96;
                    (v99)(v96, v91, v88);
                    v89 = sub_1BA4A16D8();
                    v93 = *v95;
                    (*v95)(v92, v88);
                    v93(v102, v88);
                  }

                  v33 = v109;
                }

                v84 = v106;
                v81 = v103;
              }

              else
              {
                v89 = v85 < v86;
                v33 = v80;
              }

              a3 = v79 + v110;
              sub_1BA26C4DC(v84);
              sub_1BA26C4DC(v108);
              v73 = v107;
              if (v89)
              {
                break;
              }

              v73 = v81;
              if (v79 < v75 || a3 >= v75)
              {
                swift_arrayInitWithTakeFrontToBack();
                v76 = v105;
              }

              else
              {
                v76 = v105;
                if (v79 != v75)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v81;
              v78 = v81 > v111;
              v74 = v110;
              v77 = v104;
              if (!v78)
              {
                v49 = v104;
                goto LABEL_77;
              }
            }

            if (v79 < v104 || a3 >= v104)
            {
              swift_arrayInitWithTakeFrontToBack();
              v76 = v105;
              v74 = v110;
            }

            else
            {
              v76 = v105;
              v74 = v110;
              if (v79 != v104)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }
          }

          while (v75 > v111);
        }

LABEL_77:
        v114 = v49;
        v112 = v73;
LABEL_78:
        sub_1BA26BB80(&v114, &v113, &v112, type metadata accessor for CategoryMetadata);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v48 = v110;
    goto LABEL_48;
  }

LABEL_81:
  __break(1u);
}

uint64_t sub_1BA26BB80(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1BA26BC68(void *a1, void *a2)
{
  v67 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A6478();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v72 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A64C8();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();
  v15 = a2;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FC8();

  v18 = os_log_type_enabled(v16, v17);
  v19 = MEMORY[0x1E69E7CA0];
  v66 = ObjectType;
  if (v18)
  {
    v20 = swift_slowAlloc();
    v65 = v10;
    v21 = v20;
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *v21 = 136315394;
    v22 = sub_1BA4A85D8();
    v24 = sub_1B9F0B82C(v22, v23, aBlock);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = v15;
    v26 = [v25 description];
    v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v29 = v28;

    v30 = v27;
    v19 = MEMORY[0x1E69E7CA0];
    v31 = sub_1B9F0B82C(v30, v29, aBlock);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_1B9F07000, v16, v17, "[%s] Creating gradient provider with predicate: %s", v21, 0x16u);
    v32 = v64;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v21, -1, -1);

    (*(v11 + 8))(v14, v65);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_1BA4A27B8();
  v33 = MEMORY[0x1BFAED110]();
  [v33 setPredicate_];
  v34 = MEMORY[0x1E69E6F90];
  sub_1B9F232F8(0, &unk_1EDC6B3F0, v19 + 8, MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  v36 = MEMORY[0x1E69E6158];
  *(v35 + 16) = xmmword_1BA4B5460;
  *(v35 + 32) = 0xD000000000000015;
  *(v35 + 40) = 0x80000001BA4EE050;
  *(v35 + 88) = v36;
  *(v35 + 56) = v36;
  *(v35 + 64) = 0x746E6176656C6572;
  *(v35 + 72) = 0xEF65746144646E45;
  v37 = sub_1BA4A6AE8();

  [v33 setPropertiesToFetch_];

  sub_1B9F232F8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, v34);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BA4B7510;
  v39 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v40 = sub_1BA4A6758();
  v41 = [v39 initWithKey:v40 ascending:0];

  *(v38 + 32) = v41;
  v42 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v43 = sub_1BA4A6758();
  v44 = [v42 initWithKey:v43 ascending:0];

  *(v38 + 40) = v44;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v45 = sub_1BA4A6AE8();

  [v33 setSortDescriptors_];

  v46 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v47 = v33;
  v48 = v67;
  v49 = sub_1BA4A6758();
  v50 = [v46 initWithFetchRequest:v47 managedObjectContext:v48 sectionNameKeyPath:v49 cacheName:0];

  v51 = v68;
  *&v68[OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingProfileGradientsProvider_fetchedResultsController] = v50;
  v52 = type metadata accessor for SummarySharingProfileGradientsProvider();
  v76.receiver = v51;
  v76.super_class = v52;
  v53 = objc_msgSendSuper2(&v76, sel_init);
  v54 = *&v53[OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingProfileGradientsProvider_fetchedResultsController];
  v55 = v53;
  [v54 setDelegate_];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v56 = sub_1BA4A7308();
  v57 = swift_allocObject();
  v58 = v66;
  *(v57 + 16) = v55;
  *(v57 + 24) = v58;
  aBlock[4] = sub_1BA26C59C;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_65;
  v59 = _Block_copy(aBlock);

  v60 = v69;
  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F47F74(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v61 = v72;
  v62 = v74;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v60, v61, v59);
  _Block_release(v59);

  (*(v73 + 8))(v61, v62);
  (*(v70 + 8))(v60, v71);
  return v55;
}

uint64_t sub_1BA26C478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA26C4DC(uint64_t a1)
{
  v2 = type metadata accessor for CategoryMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA26C538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1BA26C5A4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1BA26CB64(a2, a3);

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5470;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  swift_getKeyPath();
  *(v8 + 32) = sub_1BA4A71B8();
  sub_1BA4A27B8();
  v9 = v7;
  v10 = sub_1BA4A26C8();

  v11 = sub_1BA4A6AE8();

  [v10 setSortDescriptors_];

  v12 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v10 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v32[4] = xmmword_1EDC6D3C8;
  v32[5] = unk_1EDC6D3D8;
  v32[6] = xmmword_1EDC6D3E8;
  v32[7] = unk_1EDC6D3F8;
  v32[0] = xmmword_1EDC6D388;
  v32[1] = xmmword_1EDC6D398;
  v32[2] = xmmword_1EDC6D3A8;
  v32[3] = xmmword_1EDC6D3B8;
  v22 = xmmword_1EDC6D388;
  v13 = *(&xmmword_1EDC6D398 + 1);
  v23 = xmmword_1EDC6D398;
  v15 = xmmword_1EDC6D3A8;
  v14 = xmmword_1EDC6D3B8;
  v27 = *(&xmmword_1EDC6D3C8 + 8);
  v28 = *&qword_1EDC6D3E0;
  v29 = *(&xmmword_1EDC6D3E8 + 8);
  v30 = qword_1EDC6D400;
  v26 = *(&xmmword_1EDC6D3B8 + 8);
  sub_1B9F1D9A4(v32, v31);
  sub_1B9F1DA18(v13, v15, *(&v15 + 1), v14);
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v24 = 0u;
  v25 = 0u;
  v16 = sub_1B9F293A8(&v22);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = (v4 + qword_1EDC61AF0);
  *v18 = sub_1BA064A10;
  v18[1] = v17;
  v19 = v16;
  v20 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v12);

  return v20;
}

uint64_t sub_1BA26C854@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 relevantEndDate];
  if (v3)
  {
    v4 = v3;
    sub_1BA4A16F8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1BA4A1728();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1BA26C8F8(uint64_t a1, void **a2)
{
  sub_1B9F0CAA0(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1BA246A0C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1BA4A16B8();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setRelevantEndDate_];
}

id sub_1BA26CAD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedProfileNoticesDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharedProfileNoticesDataSource(uint64_t a1)
{
  result = qword_1EBBEF580;
  if (!qword_1EBBEF580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA26CB64(void *a1, uint64_t a2)
{
  v36 = a2;
  sub_1B9F0CAA0(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v29 - v5;
  sub_1BA4A27B8();
  v35 = MEMORY[0x1E69E6F90];
  sub_1B9F0CAA0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v33 = v7;
  v8 = sub_1BA4A1C68();
  v9 = *(v8 - 8);
  v32 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v37 = xmmword_1BA4B5480;
  *(v11 + 16) = xmmword_1BA4B5480;
  v31 = *MEMORY[0x1E69A3B90];
  v30 = *(v9 + 104);
  v30(v11 + v10);
  v12 = sub_1BA4A0FA8();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v13 = swift_allocObject();
  *(v13 + 16) = v37;
  *(v13 + 32) = a1;
  v29 = a1;
  v34 = MEMORY[0x1BFAED020](v11, 0, v6, v13);

  sub_1B9F1C1B0(v6);
  v14 = swift_allocObject();
  *(v14 + 16) = v37;
  (v30)(v14 + v10, v31, v8);
  sub_1BA4A20E8();
  v15 = swift_allocObject();
  *(v15 + 16) = v37;
  *(v15 + 32) = a1;
  v16 = v29;
  v17 = sub_1BA4A2638();

  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  sub_1B9F0CAA0(0, &qword_1EDC6B410, sub_1BA06FAE4, v35);
  v18 = swift_allocObject();
  *(v18 + 16) = v37;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1B9F1BE20();
  strcpy((v18 + 32), "hideInDiscover");
  *(v18 + 47) = -18;
  v19 = sub_1BA4A6EE8();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B8B60;
  v21 = v34;
  *(v20 + 32) = v34;
  *(v20 + 40) = v17;
  *(v20 + 48) = v19;
  v38 = v20;
  v22 = v21;
  v23 = v17;
  v24 = v19;

  sub_1B9F33948(v25);
  v26 = sub_1BA4A6AE8();

  v27 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v27;
}

void sub_1BA26CFFC(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = MEMORY[0x1E69E7CC0];
  for (i = a3 + 32; ; i += 40)
  {
    a1(&v17, i, a2);
    if (v3)
    {

      return;
    }

    v7 = v17;
    v8 = *(v17 + 16);
    v9 = v5[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= v5[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      v5 = sub_1B9F281E8(isUniquelyReferenced_nonNull_native, v12, 1, v5);
      if (*(v7 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v8)
        {
          goto LABEL_24;
        }

        sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1BA26D188(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1998();
  v72 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v67 = &v67 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v67 - v16;
  v18 = sub_1BA4A3EA8();
  v70 = *(v18 - 8);
  v71 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v69 = (&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21, v22);
  v73 = (&v67 - v23);
  sub_1B9F12538();
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BA4A1968();
  v31 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v26 + 16))(v29, v2 + v31, v25);
  v32 = sub_1BA4A4548();
  (*(v26 + 8))(v29, v25);
  if (v30 >= v32)
  {
    sub_1BA4A3D88();
    v37 = v72;
    v38 = *(v72 + 16);
    v38(v17, a1, v4);
    v38(v13, a1, v4);

    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FA8();

    v41 = v37;
    if (os_log_type_enabled(v39, v40))
    {
      v42 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v75 = v69;
      *v42 = 134218498;
      v43 = sub_1BA4A1968();
      v44 = *(v41 + 8);
      v44(v17, v4);
      *(v42 + 4) = v43;
      *(v42 + 12) = 2048;
      v45 = sub_1BA4A1958();
      v44(v13, v4);
      *(v42 + 14) = v45;
      *(v42 + 22) = 2080;
      v74 = v2;
      type metadata accessor for SearchSectionDataSource(0);

      v46 = sub_1BA4A6808();
      v48 = sub_1B9F0B82C(v46, v47, &v75);

      *(v42 + 24) = v48;
      _os_log_impl(&dword_1B9F07000, v39, v40, "The indexpath's section with section %ld and item %ld requested does not exist in the data source %s", v42, 0x20u);
      v49 = v69;
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x1BFAF43A0](v49, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
    }

    else
    {
      v65 = *(v37 + 8);
      v65(v13, v4);
      v65(v17, v4);
    }

    (*(v70 + 8))(v73, v71);
  }

  else
  {
    v33 = v72;
    v34 = sub_1BA4A1958();
    v35 = sub_1BA4A1968();
    if (v34 < sub_1BA1BA9D0(v35))
    {
      return 1;
    }

    v50 = v69;
    sub_1BA4A3D88();
    v51 = *(v33 + 16);
    v52 = v67;
    v51(v67, a1, v4);
    v53 = v68;
    v51(v68, a1, v4);

    v54 = sub_1BA4A3E88();
    v55 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v52;
      v57 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v75 = v73;
      *v57 = 134218498;
      v58 = sub_1BA4A1968();
      v59 = *(v33 + 8);
      v59(v56, v4);
      *(v57 + 4) = v58;
      *(v57 + 12) = 2048;
      v60 = sub_1BA4A1958();
      v59(v53, v4);
      *(v57 + 14) = v60;
      *(v57 + 22) = 2080;
      v74 = v2;
      type metadata accessor for SearchSectionDataSource(0);

      v61 = sub_1BA4A6808();
      v63 = sub_1B9F0B82C(v61, v62, &v75);

      *(v57 + 24) = v63;
      _os_log_impl(&dword_1B9F07000, v54, v55, "The indexpath's item with section %ld and item %ld requested does not exist in the data source %s", v57, 0x20u);
      v64 = v73;
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1BFAF43A0](v64, -1, -1);
      MEMORY[0x1BFAF43A0](v57, -1, -1);

      (*(v70 + 8))(v69, v71);
    }

    else
    {
      v66 = *(v33 + 8);
      v66(v53, v4);
      v66(v52, v4);

      (*(v70 + 8))(v50, v71);
    }
  }

  return 0;
}

uint64_t SearchSectionDataSource.init(_:mode:)(void *a1, char a2)
{
  v3 = v2;
  *(v3 + qword_1EDC84BF8) = a2 & 1;
  sub_1B9F126E0(0);
  v6 = objc_allocWithZone(v5);
  v7 = a1;
  v8 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v7);
  v9 = sub_1B9F17A68(v8, sub_1B9F2860C, 0, 0);

  return v9;
}

uint64_t SearchSectionDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

void sub_1BA26D9E8(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();

  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6F88();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v6;
    v6 = v18;
    aBlock[0] = v18;
    *v17 = 136315394;
    v19 = sub_1BA4A85D8();
    v21 = sub_1B9F0B82C(v19, v20, aBlock);
    v29 = v9;
    v22 = v21;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1B9F0B82C(v28, a2, aBlock);
    _os_log_impl(&dword_1B9F07000, v14, v15, "%s SanpshotDidChange, dataSourceID: %s", v17, 0x16u);
    swift_arrayDestroy();
    v23 = v6;
    LOBYTE(v6) = v30;
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    (*(v10 + 8))(v13, v29);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  swift_beginAccess();
  v24 = *(v5 + 16);
  v25 = swift_allocObject();
  *(v25 + 16) = v5;
  *(v25 + 24) = v6 & 1;
  aBlock[4] = sub_1BA271A78;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_26_0;
  v26 = _Block_copy(aBlock);
  v27 = v24;

  [v27 notifyObservers_];
  _Block_release(v26);
}

uint64_t sub_1BA26DD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for NoDataItem(0) + 28));
  v8[3] = sub_1BA4A27B8();
  v8[4] = sub_1B9F25478(&qword_1EDC6AD98, MEMORY[0x1E69A3DD0], &protocol conformance descriptor for FeedItem);
  v8[0] = v4;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  v6 = v4;
  sub_1B9F63E74(v8, a1 + v5);
  swift_endAccess();
  sub_1BA218358();
  return sub_1BA271E30(v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA26DE14(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t SearchDataSource.State.SearchResults.pluginResult.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SearchDataSource.State.SearchResults(0) + 20);

  return sub_1BA271720(a1, v3);
}

uint64_t static SearchDataSource.State.SearchResults.== infix(_:_:)(void *a1, void *a2)
{
  sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
  if ((sub_1BA4A7798() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SearchDataSource.State.SearchResults(0);

  return _s18HealthExperienceUI18DirectSearchResultV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_1BA26E03C(void *a1, void *a2, uint64_t a3)
{
  sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
  if ((sub_1BA4A7798() & 1) == 0)
  {
    return 0;
  }

  return _s18HealthExperienceUI18DirectSearchResultV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_1BA26E0D0(uint64_t a1)
{
  v2 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12358(a1, v5, type metadata accessor for SearchDataSource.State);
  return sub_1BA26E1DC(v5);
}

uint64_t sub_1BA26E170@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDC84C78;
  swift_beginAccess();
  return sub_1B9F12358(v1 + v3, a1, type metadata accessor for SearchDataSource.State);
}

uint64_t sub_1BA26E1DC(uint64_t a1)
{
  v3 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &aBlock[-1] - v9;
  v11 = qword_1EDC84C78;
  swift_beginAccess();
  sub_1BA271A14(a1, v1 + v11);
  swift_endAccess();
  sub_1B9F12358(v1 + v11, v10, type metadata accessor for SearchDataSource.State);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v11) = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v10, v6);
  sub_1B9F299EC(v6, type metadata accessor for SearchDataSource.State);
  sub_1B9F299EC(v10, type metadata accessor for SearchDataSource.State);
  swift_beginAccess();
  v12 = *(v1 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v11 & 1;
  aBlock[4] = sub_1BA271A78;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_66;
  v14 = _Block_copy(aBlock);
  v15 = v12;

  [v15 notifyObservers_];
  _Block_release(v14);

  return sub_1B9F299EC(a1, type metadata accessor for SearchDataSource.State);
}

uint64_t sub_1BA26E408(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchDataSource.State.SearchResults(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - v14;
  sub_1B9F12358(a1, &v42 - v14, type metadata accessor for SearchDataSource.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

      sub_1BA2717C8(0);
      sub_1BA271DAC(&v15[*(v17 + 48)], v7);
      sub_1BA4A27B8();
      v18 = sub_1BA4A2668();
      v19 = objc_opt_self();
      v43 = v19;
      v49 = [v19 notPredicateWithSubpredicate_];
      v20 = *(*(v2 + qword_1EDC68C00) + qword_1EDC84BB8);
      sub_1B9F109F8();
      v47 = v21;
      v22 = swift_allocObject();
      v46 = xmmword_1BA4B7510;
      *(v22 + 16) = xmmword_1BA4B7510;
      v23 = *v7;
      *(v22 + 32) = *v7;
      *(v22 + 40) = v18;
      v24 = sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
      v48 = v4;
      v45 = v24;
      v44 = v23;
      v25 = v20;
      v50 = v18;
      v26 = sub_1BA4A6AE8();

      v27 = [v19 andPredicateWithSubpredicates_];

      v28 = qword_1EDC84AD8;
      swift_beginAccess();
      v29 = [*&v25[v28] fetchRequest];
      [v29 setPredicate_];

      sub_1B9F128B4();
      sub_1BA047948();

      v30 = *(*(v2 + qword_1EDC68C08) + qword_1EDC84BB8);
      v31 = swift_allocObject();
      *(v31 + 16) = v46;
      v32 = v49;
      *(v31 + 32) = v44;
      *(v31 + 40) = v32;
      v33 = v30;
      v34 = v32;
      v35 = sub_1BA4A6AE8();

      v36 = [v43 andPredicateWithSubpredicates_];

      v37 = qword_1EDC84AD8;
      swift_beginAccess();
      v38 = [*&v33[v37] fetchRequest];
      [v38 setPredicate_];

      sub_1B9F128B4();
      sub_1BA047948();

      v39 = v7 + *(v48 + 20);
      v40 = type metadata accessor for DirectSearchResult(0);
      sub_1BA0E7F10(*&v39[*(v40 + 20)], 1);

      sub_1B9F299EC(v7, type metadata accessor for SearchDataSource.State.SearchResults);
      goto LABEL_8;
    }

LABEL_7:
    sub_1BA26E8B4();
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1B9F299EC(v15, type metadata accessor for SearchDataSource.State);
    goto LABEL_7;
  }

  sub_1B9F299EC(v15, type metadata accessor for SearchDataSource.State);
  sub_1BA0E7F10(MEMORY[0x1E69E7CC0], 1);
LABEL_8:
  sub_1B9F12358(a1, v11, type metadata accessor for SearchDataSource.State);
  return sub_1BA26E1DC(v11);
}

uint64_t sub_1BA26E8B4()
{
  v1 = v0;
  v2 = *(*(v0 + qword_1EDC68C00) + qword_1EDC84BB8);
  sub_1BA4A27B8();
  v3 = v2;
  v4 = sub_1BA4A25B8();
  v5 = qword_1EDC84AD8;
  swift_beginAccess();
  v6 = [*&v3[v5] fetchRequest];
  [v6 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  v7 = *(*(v1 + qword_1EDC68C08) + qword_1EDC84BB8);
  v8 = sub_1BA4A25B8();
  v9 = qword_1EDC84AD8;
  swift_beginAccess();
  v10 = [*&v7[v9] fetchRequest];
  [v10 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  return sub_1BA0E7F10(MEMORY[0x1E69E7CC0], 1);
}

uint64_t SearchSectionDataSource.__allocating_init(_:mode:)(void *a1, char a2)
{
  *(swift_allocObject() + qword_1EDC84BF8) = a2 & 1;
  sub_1B9F126E0(0);
  v4 = objc_allocWithZone(v3);
  v5 = a1;
  v6 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v5);
  v7 = sub_1B9F17A68(v6, sub_1B9F2860C, 0, 0);

  return v7;
}

void sub_1BA26EAD8(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v9 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v19 - v15;
  v17 = qword_1EDC84C78;
  swift_beginAccess();
  sub_1B9F12358(v4 + v17, v16, type metadata accessor for SearchDataSource.State);
  swift_storeEnumTagMultiPayload();
  v18 = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v16, v12);
  sub_1B9F299EC(v12, type metadata accessor for SearchDataSource.State);
  sub_1B9F299EC(v16, type metadata accessor for SearchDataSource.State);
  sub_1BA26D9E8(a1, a2, a3, v18 & a4 & 1);
}

uint64_t sub_1BA26EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v27 = a5;
  v6 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26[-v12];
  sub_1B9F12538();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v26[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v22 = v21;
  sub_1BA4A45C8();
  v23 = qword_1EDC84C78;
  swift_beginAccess();
  sub_1B9F12358(a1 + v23, v13, type metadata accessor for SearchDataSource.State);
  swift_storeEnumTagMultiPayload();

  v24 = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v13, v9);
  sub_1B9F299EC(v9, type metadata accessor for SearchDataSource.State);
  sub_1B9F299EC(v13, type metadata accessor for SearchDataSource.State);
  sub_1BA26D9E8(v20, v22, v19, v24 & v27 & 1);

  return (*(v16 + 8))(v19, v15);
}

double sub_1BA26EEA8()
{
  sub_1B9F299EC(v0 + qword_1EDC84C78, type metadata accessor for SearchDataSource.State);

  return result;
}

uint64_t SearchDataSource.deinit()
{

  sub_1B9F299EC(v0 + qword_1EDC84C78, type metadata accessor for SearchDataSource.State);

  return v0;
}

uint64_t SearchDataSource.__deallocating_deinit()
{
  SearchDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t SearchSectionDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return swift_deallocClassInstance();
}

uint64_t SearchSectionDataSource.supplementaryItem(ofKind:at:)@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v30 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - v14;
  v16 = *(v1 + qword_1EDC84BB8);
  v17 = qword_1EDC84AD8;
  swift_beginAccess();
  v18 = *(v16 + v17);
  v19 = sub_1BA4A18F8();
  v20 = [v18 objectAtIndexPath_];

  LODWORD(v18) = sub_1BA4A2708();
  v21 = sub_1BA4A1D18();
  v23 = v22;
  if (v18 == 6)
  {
    sub_1BA4A43F8();
  }

  else
  {
    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  }

  v24 = *(v4 + 16);
  v24(v11, v15, v3);
  v24(v7, v11, v3);
  v25 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v21, v23, 0, 0, 0, 0, v7, 0, 0);
  v27 = v26;
  v28 = *(v4 + 8);
  v28(v11, v3);
  a1[3] = v25;
  a1[4] = sub_1B9F25478(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  *a1 = v27;
  return (v28)(v15, v3);
}

uint64_t sub_1BA26F3EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A4628();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A4638();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = *MEMORY[0x1E69DC178];
  v11 = *(v5 + 104);
  v11(v8, v10, v4);
  sub_1BA4A45F8();
  v11(v8, v10, v4);
  return sub_1BA4A4608();
}

void *SearchSectionDataSource.layout(for:)(uint64_t *a1)
{
  v4 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1998();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  MEMORY[0x1BFAEC360](0, v15, v11);
  if (sub_1BA26D188(v13))
  {
    v24 = v2;
    sub_1BA0797D8(v13, v22);
    sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
    sub_1B9F0D9AC(0, qword_1EDC66D98, &protocol descriptor for SearchSectionProviding, 1);
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(v20, v23);
      v16 = v24;
      v17 = sub_1BA26F828(v23, v15, v14);
      if (!v16)
      {
        v1 = v17;
      }

      __swift_destroy_boxed_opaque_existential_1(v23);
      (*(v9 + 8))(v13, v8);
      return v1;
    }

    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1BA271E30(v20, &qword_1EBBEF590, qword_1EDC66D98, &protocol descriptor for SearchSectionProviding);
  }

  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_1EDC6CBB8);
  sub_1B9F12358(v18, v7, type metadata accessor for ListLayoutConfiguration);
  sub_1B9F0E310(*(v7 + 16), *(v7 + 17));
  *(v7 + 16) = sub_1BA26F3EC;
  *(v7 + 17) = 0;
  v1 = ListLayoutConfiguration.layout(for:)(v14);
  (*(v9 + 8))(v13, v8);
  sub_1B9F299EC(v7, type metadata accessor for ListLayoutConfiguration);
  return v1;
}

id sub_1BA26F828(void *a1, uint64_t a2, void *a3)
{
  v123 = a2;
  v125 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v125, v6);
  v8 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v122 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v124 = &v122 - v15;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 8))(v16, v17);
  if (v18 <= 5)
  {
    if (v18 <= 2)
    {
      if (v18)
      {
        if (v18 != 1)
        {
          if (qword_1EDC6D380 != -1)
          {
            swift_once();
          }

          v51 = &xmmword_1EDC6D388;
          goto LABEL_51;
        }

        if (qword_1EDC6CBB0 == -1)
        {
          goto LABEL_47;
        }

        goto LABEL_94;
      }

      static GridLayoutEngine.standard.getter(&v141);
      v55 = v123;
      v56 = sub_1BA1BA9D0(v123);
      v130 = v55;
      v131 = a3;
      v132 = v56;
      swift_unknownObjectRetain();
      v41 = GridLayoutEngine.layout(for:)(&v130);
      if (v3)
      {
        goto LABEL_92;
      }

LABEL_69:
      v59 = v41;
      swift_unknownObjectRelease();
      v135 = v143;
      v136 = v144;
      v137 = v145;
      v133 = v141;
      v134 = v142;
      sub_1B9F5A690(&v133);
      v88 = [objc_opt_self() estimatedDimension_];
      v89 = sub_1B9F5CA58(v88, 2);
      goto LABEL_70;
    }

    v32 = a3;
    if (v18 == 3)
    {
      if (qword_1EDC6CBB0 == -1)
      {
LABEL_47:
        v57 = __swift_project_value_buffer(v125, qword_1EDC6CBB8);
        v58 = v124;
        sub_1B9F12358(v57, v124, type metadata accessor for ListLayoutConfiguration);
        sub_1B9F0E310(*(v58 + 128), *(v58 + 136));
        *(v58 + 128) = sub_1BA26F3EC;
        *(v58 + 136) = 0;
        v59 = ListLayoutConfiguration.layout(for:)(a3);
        v60 = v58;
LABEL_82:
        sub_1B9F299EC(v60, type metadata accessor for ListLayoutConfiguration);
        return v59;
      }

LABEL_94:
      swift_once();
      goto LABEL_47;
    }

    if (v18 == 4)
    {
      v33 = [a3 traitCollection];
      v34 = [v33 horizontalSizeClass];

      if (v34 != 1)
      {
        swift_beginAccess();
        v35 = qword_1EDC68DF0[0];
        v36 = sub_1B9F58798(&unk_1F37FC1F8);
        if (v35 <= 0.0)
        {
          goto LABEL_96;
        }

        v37 = v36;
        sub_1B9F0ADF8(0, &qword_1EDC5E2F0, 0x1E6995590);
        v38 = sub_1BA4A7648();
        *&v141 = v35;
        *(&v141 + 1) = v37;
        v142 = 0uLL;
        *&v143 = 0x4049000000000000;
        v144 = 0uLL;
        *(&v143 + 1) = v38;
        *&v145 = sub_1B9F58BC4;
        *(&v145 + 1) = 0;
        v39 = v123;
        v40 = sub_1BA1BA9D0(v123);
        v127 = v39;
        v128 = a3;
        v129 = v40;
        swift_unknownObjectRetain();
        v41 = GridLayoutEngine.layout(for:)(&v127);
        if (v3)
        {
          goto LABEL_92;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v43 = v3;
      if (*(v126 + qword_1EDC84BF8))
      {
        sub_1BA270BE8(&unk_1F37FC238);
        v70 = v69;
        v71 = [a3 traitCollection];
        v72 = [v71 horizontalSizeClass];

        if (v70)
        {
          if (v72 != 1)
          {
            swift_beginAccess();
            v108 = qword_1EDC68DF0[0];
            v109 = sub_1B9F58798(&unk_1F37FC1F8);
            if (v108 <= 0.0)
            {
              goto LABEL_96;
            }

            v110 = v109;
            sub_1B9F0ADF8(0, &qword_1EDC5E2F0, 0x1E6995590);
            v111 = sub_1BA4A7648();
            *&v141 = v108;
            *(&v141 + 1) = v110;
            v142 = 0uLL;
            *&v143 = 0x4049000000000000;
            v144 = 0uLL;
            *(&v143 + 1) = v111;
            *&v145 = sub_1B9F58BC4;
            *(&v145 + 1) = 0;
            v112 = v123;
            v113 = sub_1BA1BA9D0(v123);
            v127 = v112;
            v128 = v32;
            v129 = v113;
            goto LABEL_61;
          }

          if (qword_1EDC6CB88 != -1)
          {
            swift_once();
          }

          v73 = qword_1EDC6CB90;
          goto LABEL_80;
        }

        if (v72 != 1)
        {
          swift_beginAccess();
          v114 = qword_1EDC68DF0[0];
          v115 = sub_1B9F58798(&unk_1F37FC1F8);
          if (v114 <= 0.0)
          {
            goto LABEL_96;
          }

          v116 = v115;
          sub_1B9F0ADF8(0, &qword_1EDC5E2F0, 0x1E6995590);
          v117 = sub_1BA4A7648();
          *&v141 = v114;
          *(&v141 + 1) = v116;
          v142 = 0uLL;
          *&v143 = 0x4049000000000000;
          v144 = 0uLL;
          *(&v143 + 1) = v117;
          *&v145 = sub_1B9F58BC4;
          *(&v145 + 1) = 0;
          v118 = v123;
          v119 = sub_1BA1BA9D0(v123);
          v127 = v118;
          v128 = v32;
          v129 = v119;
          swift_unknownObjectRetain();
          v41 = GridLayoutEngine.layout(for:)(&v127);
          if (v3)
          {
            goto LABEL_92;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v90 = [a3 traitCollection];
        v91 = [v90 horizontalSizeClass];

        if (v91 != 1)
        {
          swift_beginAccess();
          v92 = qword_1EDC68DF0[0];
          v93 = sub_1B9F58798(&unk_1F37FC1F8);
          if (v92 <= 0.0)
          {
            goto LABEL_96;
          }

          v94 = v93;
          sub_1B9F0ADF8(0, &qword_1EDC5E2F0, 0x1E6995590);
          v95 = sub_1BA4A7648();
          *&v141 = v92;
          *(&v141 + 1) = v94;
          v142 = 0uLL;
          *&v143 = 0x4049000000000000;
          v144 = 0uLL;
          *(&v143 + 1) = v95;
          *&v145 = sub_1B9F58BC4;
          *(&v145 + 1) = 0;
          v96 = v123;
          v97 = sub_1BA1BA9D0(v123);
          v127 = v96;
          v128 = a3;
          v129 = v97;
          swift_unknownObjectRetain();
          v41 = GridLayoutEngine.layout(for:)(&v127);
          if (v3)
          {
            goto LABEL_92;
          }

          goto LABEL_69;
        }
      }
    }

    if (qword_1EDC6CBB0 != -1)
    {
      swift_once();
    }

    v73 = qword_1EDC6CBB8;
LABEL_80:
    v106 = __swift_project_value_buffer(v125, v73);
    v53 = v124;
    sub_1B9F12358(v106, v124, type metadata accessor for ListLayoutConfiguration);
    sub_1B9F12358(v53, v12, type metadata accessor for ListLayoutConfiguration);
    sub_1B9F0E310(*(v12 + 16), *(v12 + 17));
    *(v12 + 16) = sub_1BA270AD0;
    *(v12 + 17) = 0;
    v54 = v32;
LABEL_81:
    v59 = ListLayoutConfiguration.layout(for:)(v54);
    sub_1B9F299EC(v53, type metadata accessor for ListLayoutConfiguration);
    v60 = v12;
    goto LABEL_82;
  }

  if (v18 < 9)
  {
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    (*(v21 + 8))(v20, v21);
    v22 = sub_1BA4A1D28();
    v23 = sub_1BA4A1D28();
    if (v22 == v23)
    {
      v23 = sub_1BA4A1BD8();
      if (v23)
      {
        v25 = a3;
        v26 = [a3 traitCollection];
        v27 = [v26 horizontalSizeClass];

        v28 = [a3 traitCollection];
        v29 = [v28 horizontalSizeClass];

        if (v29 == 1)
        {
          if (v27 == 2)
          {
            v30 = v124;
            if (qword_1EDC6CBB0 != -1)
            {
              swift_once();
            }

            v31 = qword_1EDC6CBB8;
          }

          else
          {
            v30 = v124;
            if (qword_1EDC6CB88 != -1)
            {
              swift_once();
            }

            v31 = qword_1EDC6CB90;
          }

          v107 = __swift_project_value_buffer(v125, v31);
          sub_1B9F12358(v107, v8, type metadata accessor for ListLayoutConfiguration);
          sub_1B9F12358(v8, v30, type metadata accessor for ListLayoutConfiguration);
          sub_1B9F0E310(*(v30 + 128), *(v30 + 136));
          *(v30 + 128) = sub_1BA270AD0;
          *(v30 + 136) = 0;
          v59 = ListLayoutConfiguration.layout(for:)(v25);
          sub_1B9F299EC(v8, type metadata accessor for ListLayoutConfiguration);
          v60 = v30;
          goto LABEL_82;
        }

        swift_beginAccess();
        v99 = qword_1EDC68DF0[0];
        v100 = sub_1B9F58798(&unk_1F37FC1F8);
        if (v99 > 0.0)
        {
          v101 = v100;
          sub_1B9F0ADF8(0, &qword_1EDC5E2F0, 0x1E6995590);
          v102 = sub_1BA4A7648();
          *&v141 = v99;
          *(&v141 + 1) = v101;
          v142 = 0uLL;
          *&v143 = 0x4049000000000000;
          v144 = 0uLL;
          *(&v143 + 1) = v102;
          *&v145 = sub_1B9F58BC4;
          *(&v145 + 1) = 0;
          v103 = v123;
          v104 = sub_1BA1BA9D0(v123);
          v127 = v103;
          v128 = a3;
          v129 = v104;
          swift_unknownObjectRetain();
          v105 = GridLayoutEngine.layout(for:)(&v127);
          if (v3)
          {
            goto LABEL_92;
          }

          v59 = v105;
          swift_unknownObjectRelease();
          v135 = v143;
          v136 = v144;
          v137 = v145;
          v133 = v141;
          v134 = v142;
          sub_1B9F5A690(&v133);
          if (v27 == 2)
          {
            v88 = [objc_opt_self() estimatedDimension_];
            v89 = sub_1B9F5CA58(v88, 2);
            goto LABEL_70;
          }

          return v59;
        }

LABEL_96:
        v121 = 0;
        v120 = 31;
        result = sub_1BA4A8018();
        __break(1u);
        return result;
      }
    }

    MEMORY[0x1EEE9AC00](v23, v24);
    v120 = a1;
    v42 = sub_1BA09AE2C(sub_1BA271E10, (&v122 - 4), &unk_1F37FC260);
    v43 = v3;
    sub_1BA270BE8(v42);
    v45 = v44;

    v46 = [a3 traitCollection];
    v47 = [v46 horizontalSizeClass];

    if (v45)
    {
      if (v47 != 1)
      {
        swift_beginAccess();
        v74 = qword_1EDC68DF0[0];
        v75 = sub_1B9F58798(&unk_1F37FC1F8);
        if (v74 <= 0.0)
        {
          goto LABEL_96;
        }

        v76 = v75;
        sub_1B9F0ADF8(0, &qword_1EDC5E2F0, 0x1E6995590);
        v77 = sub_1BA4A7648();
        *&v141 = v74;
        *(&v141 + 1) = v76;
        v142 = 0uLL;
        *&v143 = 0x4049000000000000;
        v144 = 0uLL;
        *(&v143 + 1) = v77;
        *&v145 = sub_1B9F58BC4;
        *(&v145 + 1) = 0;
        v78 = v123;
        v79 = sub_1BA1BA9D0(v123);
        v127 = v78;
        v128 = a3;
        v129 = v79;
LABEL_61:
        swift_unknownObjectRetain();
        v80 = GridLayoutEngine.layout(for:)(&v127);
        if (v43)
        {
          goto LABEL_92;
        }

        v59 = v80;
        swift_unknownObjectRelease();
        v135 = v143;
        v136 = v144;
        v137 = v145;
        v133 = v141;
        v134 = v142;
        sub_1B9F5A690(&v133);
        return v59;
      }

      if (qword_1EDC6CB88 != -1)
      {
        swift_once();
      }

      v48 = qword_1EDC6CB90;
    }

    else
    {
      if (v47 != 1)
      {
        swift_beginAccess();
        v81 = qword_1EDC68DF0[0];
        v82 = sub_1B9F58798(&unk_1F37FC1F8);
        if (v81 > 0.0)
        {
          v83 = v82;
          sub_1B9F0ADF8(0, &qword_1EDC5E2F0, 0x1E6995590);
          v84 = sub_1BA4A7648();
          *&v141 = v81;
          *(&v141 + 1) = v83;
          v142 = 0uLL;
          *&v143 = 0x4049000000000000;
          v144 = 0uLL;
          *(&v143 + 1) = v84;
          *&v145 = sub_1B9F58BC4;
          *(&v145 + 1) = 0;
          v85 = v123;
          v86 = sub_1BA1BA9D0(v123);
          v127 = v85;
          v128 = a3;
          v129 = v86;
          swift_unknownObjectRetain();
          v87 = GridLayoutEngine.layout(for:)(&v127);
          if (!v3)
          {
            v59 = v87;
            swift_unknownObjectRelease();
            v135 = v143;
            v136 = v144;
            v137 = v145;
            v133 = v141;
            v134 = v142;
            sub_1B9F5A690(&v133);
            v88 = [objc_opt_self() estimatedDimension_];
            v89 = sub_1B9F5CA58(v88, 2);
LABEL_70:
            v98 = v89;

            return v98;
          }

          goto LABEL_92;
        }

        goto LABEL_96;
      }

      if (qword_1EDC6CBB0 != -1)
      {
        swift_once();
      }

      v48 = qword_1EDC6CBB8;
    }

    v52 = __swift_project_value_buffer(v125, v48);
    v53 = v124;
    sub_1B9F12358(v52, v124, type metadata accessor for ListLayoutConfiguration);
    sub_1B9F12358(v53, v12, type metadata accessor for ListLayoutConfiguration);
    sub_1B9F0E310(*(v12 + 16), *(v12 + 17));
    *(v12 + 16) = sub_1BA270AD0;
    *(v12 + 17) = 0;
    v54 = a3;
    goto LABEL_81;
  }

  if (v18 > 10)
  {
    if (v18 != 11)
    {
      goto LABEL_35;
    }

    static GridLayoutEngine.articles.getter(&v141);
    v49 = v123;
    v50 = sub_1BA1BA9D0(v123);
    v130 = v49;
    v131 = a3;
    v132 = v50;
    swift_unknownObjectRetain();
    v41 = GridLayoutEngine.layout(for:)(&v130);
    if (!v3)
    {
      goto LABEL_69;
    }

LABEL_92:
    swift_unknownObjectRelease();
    v135 = v143;
    v136 = v144;
    v137 = v145;
    v133 = v141;
    v134 = v142;
    return sub_1B9F5A690(&v133);
  }

  if (v18 != 9)
  {
LABEL_35:
    if (qword_1EBBE8838 != -1)
    {
      swift_once();
    }

    v51 = &xmmword_1EBBF0B18;
LABEL_51:
    v61 = v51[5];
    v145 = v51[4];
    v146 = v61;
    v62 = v51[7];
    v147 = v51[6];
    v148 = v62;
    v63 = v51[1];
    v141 = *v51;
    v142 = v63;
    v64 = v51[3];
    v143 = v51[2];
    v144 = v64;
    sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
    v65 = v51[5];
    v137 = v51[4];
    v138 = v65;
    v66 = v51[7];
    v139 = v51[6];
    v140 = v66;
    v67 = v51[1];
    v133 = *v51;
    v134 = v67;
    v68 = v51[3];
    v135 = v51[2];
    v136 = v68;
    sub_1B9F1D9A4(&v141, &v130);
    return sub_1B9F293A8(&v133);
  }

  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v125, qword_1EDC6CBB8);
  return ListLayoutConfiguration.layout(for:)(a3);
}

uint64_t sub_1BA270AD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A4628();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A4638();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  (*(v5 + 104))(v8, *MEMORY[0x1E69DC188], v4);
  return sub_1BA4A4608();
}

void sub_1BA270BE8(uint64_t a1)
{
  sub_1B9F12538();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v56 = *(a1 + 16);
  if (!v56)
  {
    return;
  }

  v50 = &v47 - v10;
  v51 = v9;
  v52 = v1;
  v11 = *(v1 + qword_1EDC84BB8);
  v53 = a1 + 32;
  v54 = qword_1EDC84AD8;
  v55 = v11;
  swift_beginAccess();
  v12 = 0;
  v48 = (v4 + 8);
  v49 = (v4 + 16);
  do
  {
    v57 = v12;
    LOWORD(v60) = sub_1BA4A1D28();
    v13 = sub_1BA4A82D8();
    v15 = v14;
    v16 = [*(v55 + v54) sections];
    if (v16)
    {
      v17 = v16;
      sub_1BA024D28();
      v18 = sub_1BA4A6B08();

      v58 = v18 & 0xFFFFFFFFFFFFFF8;
      if (v18 >> 62)
      {
        v59 = sub_1BA4A7CC8();
      }

      else
      {
        v59 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = 0;
      v20 = 0;
      while (1)
      {
        if (v59 == v20)
        {

          break;
        }

        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1BFAF2860](v20, v18);
        }

        else
        {
          if (v20 >= *(v58 + 16))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v21 = *(v18 + 8 * v20 + 32);
          swift_unknownObjectRetain();
        }

        v22 = [v21 name];
        v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v25 = v24;

        if (v23 == v13 && v25 == v15)
        {

          swift_unknownObjectRelease();
          goto LABEL_25;
        }

        v27 = sub_1BA4A8338();
        swift_unknownObjectRelease();

        if (v27)
        {

LABEL_25:

          v29 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
          v30 = v52;
          swift_beginAccess();
          v31 = v50;
          v32 = *v49;
          v33 = v51;
          (*v49)(v50, v30 + v29, v51);
          v34 = sub_1BA4A4548();
          v35 = *v48;
          (*v48)(v31, v33);
          if (v20 >= v34)
          {
            goto LABEL_5;
          }

          v37 = v51;
          v36 = v52;
          v38 = v50;
          v32(v50, v52 + v29, v51);
          v39 = v36 + v29;
          v40 = v47;
          v32(v47, v39, v37);
          v41 = v37;
          v42 = sub_1BA4A4578();
          v35(v40, v41);
          if (v20 < *(v42 + 16))
          {
            v43 = v42 + v19;
            v45 = *(v42 + v19 + 32);
            v44 = *(v43 + 40);

            v60 = v45;
            v61 = v44;
            v46 = sub_1BA4A44A8();
            v35(v38, v41);

            if (v46 < 1)
            {
              goto LABEL_5;
            }

            return;
          }

LABEL_33:
          __break(1u);
          return;
        }

        v19 += 16;
        if (__OFADD__(v20++, 1))
        {
          goto LABEL_32;
        }
      }
    }

LABEL_5:
    v12 = v57 + 1;
  }

  while (v57 + 1 != v56);
}

BOOL sub_1BA27104C(unsigned __int8 *a1, void *a2)
{
  v3 = sub_1BA4A1D28();
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 8))(v4, v5);
  return v3 < sub_1BA4A1D28();
}

void sub_1BA271108(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, char a5, uint64_t (*a6)(void))
{
  v8 = a6();
  v69 = v8;
  if (a5)
  {
    if (a5 != 1)
    {
      a3();

      return;
    }

    v68 = *(v8 + 16);
    if (v68)
    {
      v9 = 0;
      v10 = (v8 + 72);
      v11 = MEMORY[0x1E69E7CC0];
      while (v9 < *(v8 + 16))
      {
        v12 = *(v10 - 1);
        v13 = *v10;
        v15 = *(v10 - 3);
        v14 = *(v10 - 2);
        v16 = *(v10 - 4);
        v75[0] = *(v10 - 5);
        v75[1] = v16;
        v75[2] = v15;
        v75[3] = v14;
        v75[4] = v12;
        v75[5] = v13;

        (a3)(v76, v75);

        v17 = v76[0];
        v18 = v76[1];
        v71 = v77;
        v19 = v78;
        v20 = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1B9F21540(0, *(v11 + 2) + 1, 1, v11);
        }

        v22 = *(v11 + 2);
        v21 = *(v11 + 3);
        if (v22 >= v21 >> 1)
        {
          v11 = sub_1B9F21540((v21 > 1), v22 + 1, 1, v11);
        }

        ++v9;
        *(v11 + 2) = v22 + 1;
        v23 = &v11[48 * v22];
        *(v23 + 4) = v17;
        *(v23 + 5) = v18;
        *(v23 + 3) = v71;
        *(v23 + 8) = v19;
        *(v23 + 9) = v20;
        v10 += 6;
        v8 = v69;
        if (v68 == v9)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_63;
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_46:

    v46 = 0;
    v47 = *(v11 + 2);
    v48 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v49 = &v11[48 * v46 + 16];
    while (v47 != v46)
    {
      if (v46 >= *(v11 + 2))
      {
        goto LABEL_62;
      }

      ++v46;
      v50 = (v49 + 48);
      v51 = *(v49 + 32);
      v49 += 48;
      if (*(v51 + 16))
      {
        v52 = *(v50 - 3);
        v70 = *(v50 - 4);
        v53 = *(v50 - 1);
        v54 = *v50;
        v55 = v50[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76[0] = v48;
        v74 = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B9F277B0(0, *(v48 + 16) + 1, 1);
          v48 = v76[0];
        }

        v58 = *(v48 + 16);
        v57 = *(v48 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1B9F277B0((v57 > 1), v58 + 1, 1);
          v48 = v76[0];
        }

        *(v48 + 16) = v58 + 1;
        v59 = (v48 + 48 * v58);
        v59[4] = v70;
        v59[5] = v52;
        v59[6] = v51;
        v59[7] = v74;
        v59[8] = v54;
        v59[9] = v55;
        goto LABEL_47;
      }
    }

    goto LABEL_56;
  }

  v65 = *(v8 + 16);
  if (!v65)
  {
LABEL_56:

    return;
  }

  v24 = 0;
  v64 = v8 + 32;
  v60 = MEMORY[0x1E69E7CC0];
  v63 = a2;
  while (1)
  {
    if (v24 >= *(v8 + 16))
    {
      goto LABEL_64;
    }

    v72 = v24;
    v25 = (v64 + 48 * v24);
    v26 = v25[2];
    v27 = v25[5];
    v61 = v25[4];
    v62 = *v25;
    v28 = *(v26 + 16);
    v67 = v25[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v66 = v27;
    swift_bridgeObjectRetain_n();
    if (v28)
    {
      break;
    }

    v31 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v24 = v72 + 1;

    v41 = Array<A>.identifierToIndexDict()(v31);

    if (v31[2] || (v63 & 1) != 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1B9F21540(0, *(v60 + 2) + 1, 1, v60);
      }

      v42 = v60;
      v44 = *(v60 + 2);
      v43 = *(v60 + 3);
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1B9F21540((v43 > 1), v44 + 1, 1, v60);
      }

      *(v42 + 2) = v44 + 1;
      v60 = v42;
      v45 = &v42[48 * v44];
      *(v45 + 4) = v62;
      *(v45 + 5) = v67;
      *(v45 + 6) = v31;
      *(v45 + 7) = v41;
      *(v45 + 8) = v61;
      *(v45 + 9) = v66;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
    }

    v8 = v69;
    if (v24 == v65)
    {
      goto LABEL_56;
    }
  }

  v29 = 0;
  v30 = v26 + 32;
  v31 = MEMORY[0x1E69E7CC0];
  while (v29 < *(v26 + 16))
  {
    sub_1B9F0A534(v30, v76);
    v32 = (a3)(v76);
    __swift_destroy_boxed_opaque_existential_1(v76);
    v33 = *(v32 + 16);
    v34 = v31[2];
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      goto LABEL_58;
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    if ((v36 & 1) != 0 && v35 <= v31[3] >> 1)
    {
      if (*(v32 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v34 <= v35)
      {
        v37 = v34 + v33;
      }

      else
      {
        v37 = v34;
      }

      v31 = sub_1B9F281E8(v36, v37, 1, v31);
      if (*(v32 + 16))
      {
LABEL_29:
        if ((v31[3] >> 1) - v31[2] < v33)
        {
          goto LABEL_60;
        }

        sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
        swift_arrayInitWithCopy();

        if (v33)
        {
          v38 = v31[2];
          v39 = __OFADD__(v38, v33);
          v40 = v38 + v33;
          if (v39)
          {
            goto LABEL_61;
          }

          v31[2] = v40;
        }

        goto LABEL_18;
      }
    }

    if (v33)
    {
      goto LABEL_59;
    }

LABEL_18:
    ++v29;
    v30 += 40;
    if (v28 == v29)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t sub_1BA271720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectSearchResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BA2717C8(uint64_t a1)
{
  if (!qword_1EDC5E738)
  {
    type metadata accessor for SearchDataSource.State.SearchResults(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E738);
    }
  }
}

uint64_t sub_1BA2718A0(uint64_t a1, void (*a2)(void), uint64_t a3, char a4)
{
  v5 = v4;
  v10 = v5 + qword_1EDC64EB0;
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  *(v5 + qword_1EDC84BB8) = a1;
  *(v5 + *(*v5 + 520)) = 0;
  sub_1B9F17BE8(a2, a3, a4);

  sub_1BA1E45B0(v11, 0, a2, a3, a4);
  v13 = v12;
  sub_1B9F18460(a2, a3, a4);
  v14 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v15 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v14, v15);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v16 = MutableArrayDataSource.init(arrangedSections:identifier:)(v13, 0x534464657070614DLL, 0xE90000000000003CLL);
  v17 = *(v16 + qword_1EDC84BB8);
  swift_beginAccess();
  [*(v17 + 16) registerObserver_];
  return v16;
}

uint64_t sub_1BA271A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchDataSource.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA271A9C(uint64_t a1, void (*a2)(void), uint64_t a3, char a4, uint64_t (*a5)(void))
{
  v7 = v5;
  v12 = v7 + qword_1EDC64EB0;
  *v12 = a2;
  *(v12 + 8) = a3;
  *(v12 + 16) = a4;
  *(v7 + qword_1EDC84BB8) = a1;
  *(v7 + *(*v7 + 520)) = 0;
  sub_1B9F17BE8(a2, a3, a4);

  sub_1BA271108(v13, 0, a2, a3, a4, a5);
  v15 = v14;
  sub_1B9F18460(a2, a3, a4);
  v16 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v17 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v16, v17);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v18 = MutableArrayDataSource.init(arrangedSections:identifier:)(v15, 0x534464657070614DLL, 0xE90000000000003CLL);
  v19 = *(v18 + qword_1EDC84BB8);
  swift_beginAccess();
  [*(v19 + 16) registerObserver_];
  return v18;
}

uint64_t sub_1BA271C18(void *a1, void (*a2)(void), uint64_t a3, char a4)
{
  v5 = v4;
  v10 = v5 + qword_1EDC64EB0;
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  *(v5 + qword_1EDC84BB8) = a1;
  *(v5 + *(*v5 + 520)) = 0;
  sub_1B9F17BE8(a2, a3, a4);
  v11 = a1;
  sub_1BA271108(v11, 0, a2, a3, a4, sub_1BA1F6C64);
  v13 = v12;
  sub_1B9F18460(a2, a3, a4);
  v14 = *&v11[qword_1EDC84AD0];
  v15 = *&v11[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v14, v15);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v16 = MutableArrayDataSource.init(arrangedSections:identifier:)(v13, 0x534464657070614DLL, 0xE90000000000003CLL);
  v17 = *(v16 + qword_1EDC84BB8);
  v18 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v17 + v18) registerObserver_];
  return v16;
}

uint64_t sub_1BA271DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchDataSource.State.SearchResults(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA271E30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F28AB0(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1BA271EC8(uint64_t a1)
{
  result = sub_1B9F25478(&qword_1EBBEF598, type metadata accessor for NoDataItem, &unk_1BA4CA458);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA271F48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v92 = &v87 - v8;
  v9 = sub_1BA4A41C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A4428();
  v93 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D484(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v87 - v20;
  v22 = sub_1BA4A4168();
  v95 = *(v22 - 8);
  v96 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v26], &v100);
  if (v102)
  {
    v91 = v14;
    sub_1B9FCD918();
    type metadata accessor for ManualDataSelectionNextButtonItem();
    if (swift_dynamicCast())
    {
      v27 = v25;
      v28 = v99;
      sub_1BA4A4158();
      v29 = objc_opt_self();
      v30 = [v29 systemBlueColor];
      sub_1BA4A4118();
      v31 = v95;
      v32 = *(v95 + 16);
      ObjectType = v27;
      v33 = v27;
      v34 = v96;
      v32(v21, v33, v96);
      (*(v31 + 56))(v21, 0, 1, v34);
      v35 = MEMORY[0x1BFAF1F10](v21);
      MEMORY[0x1BFAF2040](v35);

      sub_1BA4A43B8();
      (*(v10 + 104))(v13, *MEMORY[0x1E69DC100], v9);
      v36 = sub_1BA4A4238();
      sub_1BA4A4208();
      v36(&v100, 0);
      v37 = [v29 systemWhiteColor];
      v38 = sub_1BA4A4238();
      sub_1BA4A41F8();
      v38(&v100, 0);
      v39 = *MEMORY[0x1E69DDCF8];
      v40 = objc_opt_self();
      v41 = [v40 preferredFontDescriptorWithTextStyle:v39 compatibleWithTraitCollection:0];
      v42 = [v41 fontDescriptorWithSymbolicTraits_];

      if (v42)
      {
        v43 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
        v44 = ObjectType;
      }

      else
      {
        v57 = v92;
        sub_1BA4A3DD8();
        v58 = v39;
        v59 = sub_1BA4A3E88();
        v60 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v88 = v60;
          v62 = v61;
          v87 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v99 = v89;
          *v62 = 136315906;
          v63 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v65 = sub_1B9F0B82C(v63, v64, &v99);
          v90 = v28;
          v66 = v65;

          *(v62 + 4) = v66;
          *(v62 + 12) = 2080;
          v100 = 0;
          v101 = 1;
          sub_1B9F0D484(0, &qword_1EBBECB00, type metadata accessor for Weight);
          v67 = sub_1BA4A6808();
          v69 = sub_1B9F0B82C(v67, v68, &v99);

          *(v62 + 14) = v69;
          *(v62 + 22) = 2080;
          LODWORD(v100) = 2;
          type metadata accessor for SymbolicTraits(0);
          v70 = sub_1BA4A6808();
          v72 = sub_1B9F0B82C(v70, v71, &v99);

          *(v62 + 24) = v72;
          *(v62 + 32) = 2112;
          v73 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v62 + 34) = v73;
          v74 = v87;
          *v87 = v73;
          _os_log_impl(&dword_1B9F07000, v59, v88, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v62, 0x2Au);
          sub_1B9F441D0(v74, &qword_1EDC6B490, sub_1BA0004FC);
          MEMORY[0x1BFAF43A0](v74, -1, -1);
          v75 = v89;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v75, -1, -1);
          MEMORY[0x1BFAF43A0](v62, -1, -1);
        }

        (*(v97 + 8))(v57, v98);
        v44 = ObjectType;
        v42 = [v40 preferredFontDescriptorWithTextStyle_];
        v43 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
      }

      v76 = v43;

      v77 = sub_1BA4A4238();
      sub_1BA4A41E8();
      v77(&v100, 0);
      v78 = v91;
      v102 = v91;
      v103 = MEMORY[0x1E69DC110];
      v79 = __swift_allocate_boxed_opaque_existential_1(&v100);
      v80 = v93;
      (*(v93 + 16))(v79, v17, v78);
      MEMORY[0x1BFAF1EF0](&v100);
      v81 = sub_1BA272CC4();
      v83 = v82;

      (*(v80 + 8))(v17, v78);
      (*(v95 + 8))(v44, v96);
      v84 = &v1[OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_didTapAction];
      v85 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_didTapAction];
      v86 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_didTapAction + 8];
      *v84 = v81;
      v84[1] = v83;
      return sub_1B9F0E310(v85, v86);
    }
  }

  else
  {
    sub_1B9F441D0(&v100, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3D88();
  v45 = v1;
  v46 = sub_1BA4A3E88();
  v47 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v99 = v49;
    *v48 = 136315394;
    v50 = sub_1BA4A85D8();
    v52 = sub_1B9F0B82C(v50, v51, &v99);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    sub_1B9F68124(&v1[v26], &v100);
    sub_1B9F0D484(0, &qword_1EDC6E1A0, sub_1B9FCD918);
    v53 = sub_1BA4A6808();
    v55 = sub_1B9F0B82C(v53, v54, &v99);

    *(v48 + 14) = v55;
    _os_log_impl(&dword_1B9F07000, v46, v47, "[%s] Item is not a ManualDataSelectionNextButtonItem: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v49, -1, -1);
    MEMORY[0x1BFAF43A0](v48, -1, -1);
  }

  return (*(v97 + 8))(v5, v98);
}

id sub_1BA272A60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManualDataSelectionNextButtonCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA272B24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA272B7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA271F48();
  return sub_1B9F441D0(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t (*sub_1BA272C04(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA272C68;
}

uint64_t sub_1BA272C68(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA271F48();
  }

  return result;
}

void (*sub_1BA272CC4())(void *a1)
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[15];
  v4 = v0[16];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = v2;
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v6;
    v5 = sub_1BA2738EC;
    v1[15] = sub_1BA2738EC;
    v1[16] = v7;

    sub_1B9F0E310(0, v4);
  }

  sub_1B9F0F1B8(v3, v4);
  return v5;
}

void sub_1BA272D94(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v83 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v83 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v83 - v21;
  type metadata accessor for SummarySharingDataTypeSelectionViewController(0);
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    sub_1BA4A3DD8();
    v41 = sub_1BA4A3E88();
    v42 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v6;
      v45 = swift_slowAlloc();
      v96[0] = v45;
      *v43 = 136315138;
      v46 = sub_1BA4A85D8();
      v48 = sub_1B9F0B82C(v46, v47, v96);

      *(v43 + 4) = v48;
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1BFAF43A0](v45, -1, -1);
      MEMORY[0x1BFAF43A0](v43, -1, -1);

      (*(v7 + 8))(v10, v44);
      return;
    }

    v58 = *(v7 + 8);
    v59 = v10;
LABEL_18:
    v58(v59, v6);
    return;
  }

  v24 = (v23 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact);
  v25 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact);
  if (!v25)
  {
    v49 = a1;
    sub_1BA4A3DD8();
    v50 = sub_1BA4A3E88();
    v51 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v6;
      v54 = swift_slowAlloc();
      v96[0] = v54;
      *v52 = 136315138;
      v55 = sub_1BA4A85D8();
      v57 = sub_1B9F0B82C(v55, v56, v96);

      *(v52 + 4) = v57;
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1BFAF43A0](v54, -1, -1);
      MEMORY[0x1BFAF43A0](v52, -1, -1);

      (*(v7 + 8))(v14, v53);
      return;
    }

    v58 = *(v7 + 8);
    v59 = v14;
    goto LABEL_18;
  }

  v87 = a3;
  v88 = a2;
  v89 = v7;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  v29 = v24[4];
  v96[0] = v25;
  v96[1] = v26;
  v96[2] = v27;
  v96[3] = v28;
  v96[4] = v29;
  v30 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher);
  if (v30)
  {
    v86 = v23;
    v84 = a1;
    v85 = v25;
    sub_1BA2738F4(v25, v26, v27, v28, v29);

    sub_1BA4A3D88();
    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FC8();
    v33 = v30;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v83 = v27;
      v36 = v35;
      v90 = v35;
      *v34 = 136315138;
      v37 = sub_1BA4A85D8();
      v39 = v6;
      v40 = sub_1B9F0B82C(v37, v38, &v90);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_1B9F07000, v31, v32, "[%s] Presenting SummarySharingOnboardingKitSharingConfirmationViewController", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);

      (*(v89 + 8))(v22, v39);
    }

    else
    {

      (*(v89 + 8))(v22, v6);
    }

    v69 = v88;
    v70 = type metadata accessor for SummarySharingOnboardingManualDataTypeSelectionViewController();
    memset(v95, 0, sizeof(v95));
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 9;
    v94 = 7;

    sub_1B9FEEC64(v70, v95, 0, &v90);

    sub_1B9FF3BFC(v90, v91, v92, v93);
    sub_1B9F23224(v95);
    v71 = OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext;
    v72 = v86;
    swift_beginAccess();
    v73 = *(v72 + v71);
    sub_1B9F0A534(v69 + 72, &v90);
    v74 = *(v69 + 112);
    v75 = *(v69 + 48);
    v76 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingKitSharingConfirmationViewController());

    v77 = v85;

    v78 = v74;

    v79 = sub_1BA313E58(v96, v33, v73, &v90, v78, v75);

    v80 = v84;
    v81 = [v84 navigationController];
    if (v81)
    {
      v82 = v81;
      [v81 showViewController:v79 sender:0];
    }
  }

  else
  {
    v60 = a1;
    sub_1BA2738F4(v25, v26, v27, v28, v29);
    sub_1BA4A3DD8();
    v61 = sub_1BA4A3E88();
    v62 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v88 = v6;
      v65 = v64;
      v90 = v64;
      *v63 = 136315138;
      v66 = sub_1BA4A85D8();
      v83 = v27;
      v68 = sub_1B9F0B82C(v66, v67, &v90);

      *(v63 + 4) = v68;
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x1BFAF43A0](v65, -1, -1);
      MEMORY[0x1BFAF43A0](v63, -1, -1);

      (*(v89 + 8))(v18, v88);
    }

    else
    {

      (*(v89 + 8))(v18, v6);
    }
  }
}

uint64_t sub_1BA273588()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  sub_1B9F0E310(*(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA273614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1BA27367C()
{
  result = qword_1EBBEF5B0;
  if (!qword_1EBBEF5B0)
  {
    type metadata accessor for ManualDataSelectionNextButtonItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF5B0);
  }

  return result;
}

uint64_t sub_1BA2736D0(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_didTapAction;
  v10 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_didTapAction);
  if (v10)
  {
    v11 = *(v9 + 8);

    v10(a1);

    return sub_1B9F0E310(v10, v11);
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = sub_1BA4A85D8();
      v19 = sub_1B9F0B82C(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Did tap action was not set. This should not happen", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

double sub_1BA2738F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {

    v6 = a1;
  }

  return result;
}

void sub_1BA273964(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_1BA2739F4(uint64_t a1)
{
  v2 = sub_1BA273BB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA273A30(uint64_t a1)
{
  v2 = sub_1BA273BB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKTypeGroupCategoryActionHandler.Data.encode(to:)(void *a1)
{
  sub_1BA273D90(0, &qword_1EDC5DD18, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA273BB8();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BA273BB8()
{
  result = qword_1EDC6BE10;
  if (!qword_1EDC6BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE10);
  }

  return result;
}

uint64_t HKTypeGroupCategoryActionHandler.Data.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA273D90(0, &qword_1EDC5DE80, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA273BB8();
  sub_1BA4A8528();
  if (!v2)
  {
    v11 = sub_1BA4A8188();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1BA273D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA273BB8();
    v7 = a3(a1, &type metadata for HKTypeGroupCategoryActionHandler.Data.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA273E0C(void *a1)
{
  sub_1BA273D90(0, &qword_1EDC5DD18, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA273BB8();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v7, v3);
}

void sub_1BA273F58()
{
  v1 = *(v0 + 88);
  v2 = [v1 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  if (v6 == 10)
  {
    v3 = sub_1BA274048();
    [v1 showDetailViewController:v3 sender:0];
  }

  else
  {
    v4 = [v1 navigationController];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v3 = sub_1BA274048();
    [v5 pushViewController:v3 animated:1];
  }
}

char *sub_1BA274048()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[9];
  if (v8 >> 60 != 15)
  {
    v9 = v0[8];
    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1B9F206D4(v9, v8);
    sub_1BA4A0EA8();
    sub_1BA276A34();
    sub_1BA4A0E98();

    v18 = v33;
    v19 = v34;
    if (qword_1EDC6EA18 != -1)
    {
      v29 = v33;
      swift_once();
      v18 = v29;
    }

    v20 = off_1EDC6EA20;
    if (*(off_1EDC6EA20 + 2))
    {
      v32 = v2;
      v31 = sub_1B9F24A34(v18, v19);
      v22 = v21;

      if (v22)
      {
        v23 = v20[7] + 48 * v31;
        v24 = *(v23 + 8);
        v25 = *(v23 + 32);
        v26 = *(v23 + 40);
        v33 = *v23;
        v34 = v24;
        v35 = *(v23 + 16);
        v36 = v25;
        v37 = v26;
        v27 = v1[10];

        v28 = HKTCategoryViewFactory.makeViewController(typeGroup:context:)(&v33, v27);
        sub_1B9F6AC8C(v9, v8);

        return v28;
      }

      sub_1B9F6AC8C(v9, v8);
    }

    else
    {
      sub_1B9F6AC8C(v9, v8);
    }
  }

  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    v14 = sub_1BA4A85D8();
    v16 = sub_1B9F0B82C(v14, v15, &v33);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B9F07000, v10, v11, "%s: Unable to decode and find correct typeGroupIdentifier for sidebar category item", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
}

__n128 HKTypeGroupCategoryActionHandler.__allocating_init(content:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  result = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = result;
  return result;
}

_OWORD *HKTypeGroupCategoryActionHandler.init(content:)(_OWORD *a1)
{
  v2 = a1[3];
  v1[3] = a1[2];
  v1[4] = v2;
  v1[5] = a1[4];
  v3 = a1[1];
  v1[1] = *a1;
  v1[2] = v3;
  return v1;
}

uint64_t HKTypeGroupCategoryActionHandler.__deallocating_deinit()
{
  sub_1BA00D7E8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t CategoryTileConfigurationProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t CategoryTileConfigurationProvider.observedTraits.getter()
{
  sub_1BA276ABC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5460;
  v1 = sub_1BA4A4438();
  v2 = MEMORY[0x1E69DC130];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_1BA4A4858();
  v4 = MEMORY[0x1E69DC2B0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

uint64_t CategoryTileConfigurationProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = *v0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  (*(*(*(v1 + 80) - 8) + 56))(v0 + *(v1 + 128), 1, 1);
  return v0;
}

uint64_t *CategoryTileConfigurationProvider.init()()
{
  v1 = *v0;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  (*(*(*(v1 + 80) - 8) + 56))(v0 + *(v1 + 128), 1, 1);
  return v0;
}

void CategoryTileConfigurationProvider.makeContentConfiguration(viewModelState:viewContext:cellState:actionHandlerContent:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v118 = a3;
  v111 = a2;
  v122 = a4;
  v125 = *v4;
  v6 = v125;
  v109 = sub_1BA4A3EA8();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v7);
  v110 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1BA4A4428();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v9);
  v114 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1BA4A40C8();
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v11);
  v115 = (&v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA276ABC(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v120 = &v107 - v15;
  v16 = *(v6 + 80);
  v17 = sub_1BA4A7AA8();
  v123 = *(v17 - 8);
  v124 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v107 - v19;
  v21 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v107 - v28;
  v32 = *(type metadata accessor for ViewModelState(0, v16, v30, v31) + 28);
  v33 = *(v21 + 16);
  v33(v29, a1 + v32, v16);
  v126 = v29;
  v34 = v29;
  v35 = v119;
  v33(v20, v34, v16);
  v121 = v21;
  (*(v21 + 56))(v20, 0, 1, v16);
  v36 = *(*v35 + 128);
  swift_beginAccess();
  (*(v123 + 5))(&v35[v36], v20, v124);
  swift_endAccess();
  v33(v25, a1 + v32, v16);
  sub_1B9F0D950(0, qword_1EDC60950, &protocol descriptor for CategoryTileViewModelAsyncImageProviding);
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v134, &v127);
    v37 = sub_1BA4A6C88();
    v38 = v120;
    (*(*(v37 - 8) + 56))(v120, 1, 1, v37);
    v39 = swift_allocObject();
    swift_weakInit();
    sub_1B9F0A534(&v127, v134);
    sub_1BA4A6C68();

    v40 = sub_1BA4A6C58();
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E85E0];
    v41[2] = v40;
    v41[3] = v42;
    v41[4] = v16;
    v43 = v125;
    v41[5] = v125[11];
    v44 = *(v43 + 96);
    v41[6] = v44;
    v41[7] = *(v43 + 104);
    v41[8] = v39;
    sub_1B9F1134C(v134, (v41 + 9));

    sub_1BA0BF220(0, 0, v38, &unk_1BA4CA600, v41);

    __swift_destroy_boxed_opaque_existential_1(&v127);
  }

  else
  {
    v135 = 0;
    memset(v134, 0, sizeof(v134));
    sub_1BA27761C(v134, sub_1BA276B20);
    v44 = v125[12];
  }

  v45 = (*(v44 + 16))(v16, v44);
  v124 = v46;
  v120 = (*(v44 + 24))(v16, v44);
  v47 = *(v35 + 4);
  v48 = *(v35 + 5);
  v49 = *(v35 + 6);
  v50 = *(v35 + 7);
  if (v47)
  {
    v127 = *(v35 + 4);
    v128 = v48;
    v119 = v50;
    v123 = v49;
    v51 = v48;
    v125 = v47;
    v129 = v49;
  }

  else
  {
    (*(v44 + 32))(&v127, v16, v44);
    v51 = v128;
    v125 = v127;
    v123 = v129;
    v119 = v130;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA276B88(v47, v48);
  v52 = v115;
  v53 = v118;
  sub_1BA4A4F28();

  v54 = sub_1BA4A4098();
  (*(v116 + 8))(v52, v117);
  v55 = [v54 horizontalSizeClass];

  if (v55 != 1)
  {
    v127 = v45;
    v63 = v125;
    v128 = v124;
    v129 = v120;
    v130 = v125;
    v131 = v51;
    v132 = v123;
    v133 = v119;
    sub_1BA276BC8(0);
    v64 = v122;
    v122[3] = v65;
    v64[4] = sub_1BA277578(&qword_1EBBEF5F8, sub_1BA276BC8, MEMORY[0x1E697C858]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
    sub_1BA275AFC(&v127, v111, v53, boxed_opaque_existential_1);
    (*(v121 + 8))(v126, v16);

    sub_1BA277094(v63, v51);
    return;
  }

  v56 = v114;
  sub_1BA4A43A8();

  sub_1BA4A43B8();
  v57 = *MEMORY[0x1E69DDCF8];
  v58 = objc_opt_self();
  v59 = [v58 preferredFontDescriptorWithTextStyle:v57 compatibleWithTraitCollection:0];
  v60 = [v59 fontDescriptorWithSymbolicTraits_];

  v118 = v57;
  if (v60)
  {
    v61 = v16;
    v62 = [objc_opt_self() fontWithDescriptor:v60 size:0.0];
  }

  else
  {
    v67 = v110;
    sub_1BA4A3DD8();
    v68 = v57;
    v69 = sub_1BA4A3E88();
    v70 = sub_1BA4A6FB8();
    v117 = v68;

    v61 = v16;
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *&v134[0] = v116;
      *v71 = 136315906;
      v72 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v74 = sub_1B9F0B82C(v72, v73, v134);

      *(v71 + 4) = v74;
      *(v71 + 12) = 2080;
      v127 = 0;
      LOBYTE(v128) = 1;
      sub_1BA276ABC(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v75 = sub_1BA4A6808();
      v77 = sub_1B9F0B82C(v75, v76, v134);

      *(v71 + 14) = v77;
      *(v71 + 22) = 2080;
      LODWORD(v127) = 32770;
      type metadata accessor for SymbolicTraits(0);
      v78 = sub_1BA4A6808();
      v80 = sub_1B9F0B82C(v78, v79, v134);

      *(v71 + 24) = v80;
      *(v71 + 32) = 2112;
      v81 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v71 + 34) = v81;
      v82 = v115;
      *v115 = v81;
      _os_log_impl(&dword_1B9F07000, v69, v70, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v71, 0x2Au);
      sub_1B9F8C6C8(v82);
      MEMORY[0x1BFAF43A0](v82, -1, -1);
      v83 = v116;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v83, -1, -1);
      v84 = v71;
      v56 = v114;
      MEMORY[0x1BFAF43A0](v84, -1, -1);

      (*(v108 + 8))(v110, v109);
    }

    else
    {

      (*(v108 + 8))(v67, v109);
    }

    v60 = [v58 preferredFontDescriptorWithTextStyle_];
    v62 = [objc_opt_self() fontWithDescriptor:v60 size:0.0];
  }

  v85 = v62;

  v86 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v86(&v127, 0);
  v87 = v126;
  if (!v125)
  {
    sub_1BA4A43D8();
    v89 = v61;
    goto LABEL_21;
  }

  v88 = v51;
  sub_1BA4A43D8();
  v89 = v61;
  if ((v123 & 0x8000000000000000) == 0)
  {
LABEL_21:
    v103 = MEMORY[0x1E69DC110];
    v104 = v122;
    v105 = v113;
    v122[3] = v113;
    v104[4] = v103;
    v106 = __swift_allocate_boxed_opaque_existential_1(v104);
    (*(v112 + 32))(v106, v56, v105);

    sub_1BA277094(v125, v51);
    (*(v121 + 8))(v87, v89);
    return;
  }

  if (v123)
  {
    v90 = [objc_opt_self() systemGroupedBackgroundColor];
    v91 = sub_1BA4A42D8();
    sub_1BA4A4278();
    v91(&v127, 0);
    v92 = sub_1BA4A42D8();
    sub_1BA4A4288();
    v92(&v127, 0);
    v93 = objc_allocWithZone(MEMORY[0x1E69DCA40]);
    v94 = [v93 initForTextStyle_];
    [v94 scaledValueForValue_];

    v95 = sub_1BA4A42D8();
    sub_1BA4A4298();
    v95(&v127, 0);
    v56 = v114;
  }

  v96 = objc_allocWithZone(MEMORY[0x1E69DCA40]);
  v97 = [v96 initForTextStyle_];
  [v97 scaledValueForValue_];

  v98 = sub_1BA4A42D8();
  sub_1BA4A4268();
  v98(&v127, 0);
  v99 = MEMORY[0x1E69DC110];
  v100 = v122;
  v101 = v113;
  v122[3] = v113;
  v100[4] = v99;
  v102 = __swift_allocate_boxed_opaque_existential_1(v100);
  (*(v112 + 32))(v102, v56, v101);

  sub_1BA277094(v125, v51);
  (*(v121 + 8))(v126, v61);
}

uint64_t sub_1BA275610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  sub_1BA4A6C68();
  v5[17] = sub_1BA4A6C58();
  v7 = sub_1BA4A6C28();
  v5[18] = v7;
  v5[19] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BA2756AC, v7, v6);
}

uint64_t sub_1BA2756AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = v0[16];
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    v12 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_1BA2758C8;

    return v12(v0 + 2, v3, v4);
  }

  else
  {

    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = v7;
      swift_beginAccess();
      if (*(v8 + 16))
      {
        v9 = *(v8 + 24);
        swift_unknownObjectRetain();

        ObjectType = swift_getObjectType();
        (*(v9 + 8))(ObjectType, v9);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1BA2758C8()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1BA2759E8, v3, v2);
}

uint64_t sub_1BA2759E8()
{
  v1 = *(v0 + 160);

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 16);
  *(v1 + 48) = v4;
  sub_1BA277094(v2, v3);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    if (*(v6 + 16))
    {
      v7 = *(v6 + 24);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      (*(v7 + 8))(ObjectType, v7);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BA275AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a4;
  sub_1BA277468(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA276BC8(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v19;
  v26[2] = *(a1 + 32);
  v27 = *(a1 + 48);
  v20 = v19;
  v25[8] = v26;
  v25[9] = a2;
  v25[10] = a3;
  sub_1BA276CF8(0);
  sub_1BA276DC0(255);
  v22 = v21;
  v23 = sub_1BA276F2C(&qword_1EBBEF5D8, sub_1BA276DC0, sub_1BA276EE4, sub_1BA27700C);
  v25[12] = v22;
  v25[13] = v23;
  swift_getOpaqueTypeConformance2();
  sub_1BA4A59B8();
  v25[4] = a3;
  v25[5] = v20;
  type metadata accessor for CategoryTileBackgroundView(0);
  sub_1BA277578(&qword_1EBBEF5F0, type metadata accessor for CategoryTileBackgroundView, &unk_1BA4C1B9C);
  sub_1BA4A5998();
  (*(v9 + 8))(v12, v8);
  sub_1BA4A5B78();
  sub_1BA4A59A8();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1BA275DCC@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v6 = *a1;
  v19 = a1[1];
  v20 = a1[6];
  v7 = sub_1BA4A5A48();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 2);
  v18 = *(a1 + 1);
  v17 = v12;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v14 = *&v28[0];
  type metadata accessor for ObservableCellState(0);
  sub_1BA2775C0(a1, v28);
  sub_1BA277578(&qword_1EDC67D30, type metadata accessor for ObservableCellState, &protocol conformance descriptor for ObservableCellState);
  v15 = sub_1BA4A4D68();
  *&v22 = v6;
  *(&v22 + 1) = v19;
  v24 = v17;
  v23 = v18;
  *&v25 = v20;
  *(&v25 + 1) = KeyPath;
  *&v26 = v14;
  *(&v26 + 1) = v15;
  v27 = a3;

  sub_1BA4A5A38();
  sub_1BA276DC0(0);
  sub_1BA276F2C(&qword_1EBBEF5D8, sub_1BA276DC0, sub_1BA276EE4, sub_1BA27700C);
  sub_1BA4A5F88();
  (*(v8 + 8))(v11, v7);
  v28[3] = v25;
  v28[4] = v26;
  v29 = v27;
  v28[0] = v22;
  v28[1] = v23;
  v28[2] = v24;
  return sub_1BA27761C(v28, sub_1BA276DC0);
}

double sub_1BA2760AC@<D0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_1BA276ABC(0, &qword_1EBBECFB8, sub_1BA175634, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for CategoryTileBackgroundView(0);
  v6 = *(v5 + 24);
  v7 = (a3 + *(v5 + 20));
  type metadata accessor for ObservableCellState(0);
  sub_1BA277578(&qword_1EDC67D30, type metadata accessor for ObservableCellState, &protocol conformance descriptor for ObservableCellState);

  *v7 = sub_1BA4A5348();
  v7[1] = v8;
  *(a3 + v6) = a2;

  return result;
}

uint64_t CategoryTileConfigurationProvider.makeBackgroundConfiguration(cellState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A4168();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t CategoryTileConfigurationProvider.makeAccessories(cellState:)(uint64_t a1)
{
  v2 = v1;
  v34 = *v1;
  v3 = v34;
  sub_1BA276ABC(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v39 = &v33 - v6;
  v7 = sub_1BA4A3FB8();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BA4A3F18();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v10);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  v18 = sub_1BA4A40C8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v23 = sub_1BA4A4098();
  (*(v19 + 8))(v22, v18);
  v24 = [v23 horizontalSizeClass];

  if (v24 != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v25 = *(*v2 + 128);
  swift_beginAccess();
  if ((*(v13 + 48))(&v2[v25], 1, v12))
  {
    sub_1BA276ABC(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BA4B5480;
    v28 = v35;
    v27 = v36;
    v29 = v38;
    (*(v36 + 104))(v35, *MEMORY[0x1E69DBF28], v38);
    v30 = sub_1BA4A3F48();
    (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
    v31 = v37;
    sub_1BA4A3FA8();
    sub_1BA4A3F78();
    (*(v40 + 8))(v31, v41);
    (*(v27 + 8))(v28, v29);
  }

  else
  {
    (*(v13 + 16))(v17, &v2[v25], v12);
    v26 = (*(*(v34 + 96) + 40))(v12);
    (*(v13 + 8))(v17, v12);
  }

  return v26;
}

char *CategoryTileConfigurationProvider.deinit()
{
  swift_unknownObjectRelease();
  sub_1BA277094(*(v0 + 32), *(v0 + 40));
  v1 = *(*v0 + 128);
  v2 = sub_1BA4A7AA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CategoryTileConfigurationProvider.__deallocating_deinit()
{
  CategoryTileConfigurationProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2768C0()
{
  sub_1BA276ABC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5460;
  v1 = sub_1BA4A4438();
  v2 = MEMORY[0x1E69DC130];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_1BA4A4858();
  v4 = MEMORY[0x1E69DC2B0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

void (*sub_1BA2769C4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = CategoryTileConfigurationProvider.delegate.modify(v2);
  return sub_1B9FCDD98;
}

unint64_t sub_1BA276A34()
{
  result = qword_1EDC62AA8;
  if (!qword_1EDC62AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC62AA8);
  }

  return result;
}

void sub_1BA276ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA276B20(uint64_t a1)
{
  if (!qword_1EDC60948)
  {
    sub_1B9F0D950(255, qword_1EDC60950, &protocol descriptor for CategoryTileViewModelAsyncImageProviding);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC60948);
    }
  }
}

id sub_1BA276B88(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

void sub_1BA276BC8(uint64_t a1)
{
  if (!qword_1EBBEF5B8)
  {
    sub_1BA276CF8(255);
    type metadata accessor for CategoryTileBackgroundView(255);
    sub_1BA276DC0(255);
    sub_1BA276F2C(&qword_1EBBEF5D8, sub_1BA276DC0, sub_1BA276EE4, sub_1BA27700C);
    swift_getOpaqueTypeConformance2();
    sub_1BA277578(&qword_1EBBEF5F0, type metadata accessor for CategoryTileBackgroundView, &unk_1BA4C1B9C);
    v1 = sub_1BA4A59C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF5B8);
    }
  }
}

void sub_1BA276CF8(uint64_t a1)
{
  if (!qword_1EBBEF5C0)
  {
    sub_1BA276DC0(255);
    sub_1BA276F2C(&qword_1EBBEF5D8, sub_1BA276DC0, sub_1BA276EE4, sub_1BA27700C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEF5C0);
    }
  }
}

void sub_1BA276DC0(uint64_t a1)
{
  if (!qword_1EBBEF5C8)
  {
    sub_1BA276E58(255);
    sub_1BA276ABC(255, &qword_1EDC5ECB0, sub_1B9F7F24C, MEMORY[0x1E6980A08]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF5C8);
    }
  }
}

void sub_1BA276E58(uint64_t a1)
{
  if (!qword_1EBBEF5D0)
  {
    sub_1B9F6A970(255, &qword_1EDC5EBF8, &qword_1EDC6B620, 0x1E696C1C0, MEMORY[0x1E6980A08]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF5D0);
    }
  }
}

uint64_t sub_1BA276F2C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA276FB8()
{
  result = qword_1EBBEF5E8;
  if (!qword_1EBBEF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF5E8);
  }

  return result;
}

unint64_t sub_1BA27700C()
{
  result = qword_1EDC5ECB8;
  if (!qword_1EDC5ECB8)
  {
    sub_1BA276ABC(255, &qword_1EDC5ECB0, sub_1B9F7F24C, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5ECB8);
  }

  return result;
}

void sub_1BA277094(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_1BA2770D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA275610(a1, v4, v5, v6, (v1 + 9));
}

uint64_t sub_1BA277264(uint64_t a1)
{
  result = sub_1BA4A7AA8();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BA277364()
{
  result = qword_1EBBEF600;
  if (!qword_1EBBEF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF600);
  }

  return result;
}

unint64_t sub_1BA2773BC()
{
  result = qword_1EDC6BE00;
  if (!qword_1EDC6BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE00);
  }

  return result;
}

unint64_t sub_1BA277414()
{
  result = qword_1EDC6BE08;
  if (!qword_1EDC6BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE08);
  }

  return result;
}

void sub_1BA277468(uint64_t a1)
{
  if (!qword_1EBBEF608)
  {
    sub_1BA276CF8(255);
    sub_1BA276DC0(255);
    sub_1BA276F2C(&qword_1EBBEF5D8, sub_1BA276DC0, sub_1BA276EE4, sub_1BA27700C);
    swift_getOpaqueTypeConformance2();
    v1 = sub_1BA4A59C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF608);
    }
  }
}

uint64_t sub_1BA277578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA27761C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double static Color.tertiary.getter()
{
  if (qword_1EDC5EBA0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1BA2776D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BA025290(a1, a2);
  *(a2 + 49) = 1;
  return result;
}

uint64_t sub_1BA277708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9F0A534(a1, v6);
  sub_1B9F32244();
  v3 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v4 = swift_dynamicCast();
  return (*(*(v3 - 8) + 56))(a2, v4 ^ 1u, 1, v3);
}

uint64_t sub_1BA2777A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BA025290(a1, a2);
  *(a2 + 49) = 0;
  return result;
}

void sub_1BA2777D8(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_29:
    v4 = sub_1BA4A7CC8();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v42 = v3 & 0xFFFFFFFFFFFFFF8;
      v43 = v3 & 0xC000000000000001;
      v40 = v4;
      v41 = v3;
      do
      {
        if (v43)
        {
          v7 = MEMORY[0x1BFAF2860](v5, v3);
        }

        else
        {
          if (v5 >= *(v42 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v44 = v5;
        v46 = v5 + 1;
        v9 = [v7 label];
        if (v9)
        {
          v10 = v9;
          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

          v11 = objc_opt_self();

          v12 = sub_1BA4A6758();
          v13 = [v11 localizedStringForLabel_];

          v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v16 = v15;
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v14 = 0;
          v16 = 0xE000000000000000;
        }

        v45 = v8;
        v17 = [v8 value];
        v18 = [v17 stringValue];

        v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v3 = v20;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *a2;
        v47 = *a2;
        v23 = a2;
        *a2 = 0x8000000000000000;
        v24 = v14;
        v25 = v14;
        v26 = v16;
        v28 = sub_1B9F24A34(v25, v16);
        v29 = v22[2];
        v30 = (v27 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          goto LABEL_27;
        }

        a2 = v27;
        if (v22[3] >= v31)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v34 = v47;
            if (v27)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1BA0F1474();
            v34 = v47;
            if (a2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1B9F24AAC(v31, isUniquelyReferenced_nonNull_native);
          v32 = sub_1B9F24A34(v24, v26);
          if ((a2 & 1) != (v33 & 1))
          {
            sub_1BA4A83B8();
            __break(1u);
            return;
          }

          v28 = v32;
          v34 = v47;
          if (a2)
          {
LABEL_4:
            v6 = (v34[7] + 16 * v28);
            *v6 = v19;
            v6[1] = v3;

            goto LABEL_5;
          }
        }

        v34[(v28 >> 6) + 8] |= 1 << v28;
        v35 = (v34[6] + 16 * v28);
        *v35 = v24;
        v35[1] = v26;
        v36 = (v34[7] + 16 * v28);
        *v36 = v19;
        v36[1] = v3;
        v37 = v34[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_28;
        }

        v34[2] = v39;
LABEL_5:
        a2 = v23;
        *v23 = v34;

        v5 = v44 + 1;
        v3 = v41;
      }

      while (v46 != v40);
    }
  }
}

void sub_1BA277B1C(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_29:
    v4 = sub_1BA4A7CC8();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v41 = v3 & 0xFFFFFFFFFFFFFF8;
      v42 = v3 & 0xC000000000000001;
      v39 = v4;
      v40 = v3;
      do
      {
        if (v42)
        {
          v7 = MEMORY[0x1BFAF2860](v5, v3);
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v43 = v5;
        v45 = v5 + 1;
        v9 = [v7 label];
        if (v9)
        {
          v10 = v9;
          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

          v11 = objc_opt_self();

          v12 = sub_1BA4A6758();
          v13 = [v11 localizedStringForLabel_];

          v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v16 = v15;
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v14 = 0;
          v16 = 0xE000000000000000;
        }

        v44 = v8;
        v17 = [v8 value];
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v3 = v19;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *a2;
        v46 = *a2;
        v22 = a2;
        *a2 = 0x8000000000000000;
        v23 = v14;
        v24 = v14;
        v25 = v16;
        v27 = sub_1B9F24A34(v24, v16);
        v28 = v21[2];
        v29 = (v26 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_27;
        }

        a2 = v26;
        if (v21[3] >= v30)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v33 = v46;
            if (v26)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1BA0F1474();
            v33 = v46;
            if (a2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1B9F24AAC(v30, isUniquelyReferenced_nonNull_native);
          v31 = sub_1B9F24A34(v23, v25);
          if ((a2 & 1) != (v32 & 1))
          {
            sub_1BA4A83B8();
            __break(1u);
            return;
          }

          v27 = v31;
          v33 = v46;
          if (a2)
          {
LABEL_4:
            v6 = (v33[7] + 16 * v27);
            *v6 = v18;
            v6[1] = v3;

            goto LABEL_5;
          }
        }

        v33[(v27 >> 6) + 8] |= 1 << v27;
        v34 = (v33[6] + 16 * v27);
        *v34 = v23;
        v34[1] = v25;
        v35 = (v33[7] + 16 * v27);
        *v35 = v18;
        v35[1] = v3;
        v36 = v33[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_28;
        }

        v33[2] = v38;
LABEL_5:
        a2 = v22;
        *v22 = v33;

        v5 = v43 + 1;
        v3 = v40;
      }

      while (v45 != v39);
    }
  }
}

uint64_t sub_1BA277E40()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF610 = result;
  *algn_1EBBEF618 = v1;
  return result;
}

uint64_t sub_1BA277EFC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF620 = result;
  *algn_1EBBEF628 = v1;
  return result;
}

id sub_1BA277FC8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DataTypeDetailMessageCell____lazy_storage___symbol;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DataTypeDetailMessageCell____lazy_storage___symbol);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DataTypeDetailMessageCell____lazy_storage___symbol);
  }

  else
  {
    v4 = sub_1BA278028();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA278028()
{
  v0 = sub_1BA4A28B8();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69A3120], v0, v3);
  v6 = sub_1BA4A2898();
  (*(v1 + 8))(v5, v0);
  v7 = (v6 & 1) == 0;
  if (v6)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v8 = 0x2E6567617373656DLL;
  }

  if (v7)
  {
    v9 = 0xEC0000006C6C6966;
  }

  else
  {
    v9 = 0x80000001BA4F2A00;
  }

  v10 = sub_1BA4A6758();

  v11 = [objc_opt_self() systemImageNamed_];

  if (v11)
  {

    return v11;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v13 = 0xD00000000000001DLL;
    v14 = 0x80000001BA4F79A0;
    MEMORY[0x1BFAF1350](v8, v9);

    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

void sub_1BA27823C()
{
  v22 = objc_opt_self();
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA0FD5B4();
  v3 = [v2 topAnchor];

  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:16.0];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v8 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button] leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 layoutMarginsGuide];

  v11 = [v10 leadingAnchor];
  v12 = [v8 constraintEqualToAnchor_];

  *(v1 + 40) = v12;
  v13 = [v0 contentView];
  v14 = [v13 layoutMarginsGuide];

  v15 = [v14 trailingAnchor];
  v16 = [*&v0[v7] trailingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v1 + 48) = v17;
  v18 = [v0 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [*&v0[v7] bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:16.0];

  *(v1 + 56) = v21;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v23 = sub_1BA4A6AE8();

  [v22 activateConstraints_];
}

void *sub_1BA27853C()
{
  v30 = sub_1BA4A28B8();
  v0 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BA4A7938();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A7838();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BA4A79A8();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v27 - v19;
  sub_1BA4A7998();
  (*(v9 + 104))(v12, *MEMORY[0x1E69DC4F8], v8);
  sub_1BA4A7848();
  (*(v4 + 104))(v7, *MEMORY[0x1E69DC558], v28);
  sub_1BA4A7828();
  v21 = v30;
  (*(v0 + 104))(v3, *MEMORY[0x1E69A3120], v30);
  LOBYTE(v8) = sub_1BA4A2898();
  (*(v0 + 8))(v3, v21);
  if (v8)
  {
    v22 = MEMORY[0x1E69DDDC8];
  }

  else
  {
    v22 = MEMORY[0x1E69DDCF8];
  }

  sub_1BA4A7858();
  v23 = [objc_opt_self() configurationWithTextStyle_];
  sub_1BA4A77F8();
  sub_1B9F0ADF8(0, &qword_1EDC5E0A0, 0x1E69DC738);
  v24 = v29;
  (*(v13 + 16))(v16, v20, v29);
  v25 = sub_1BA4A79B8();
  [v25 setRole_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v13 + 8))(v20, v24);
  return v25;
}

void sub_1BA278920()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &ObjectType - v9;
  v11 = sub_1BA4A28B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F65DE4(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &ObjectType - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4148();
  v20 = sub_1BA4A4168();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  MEMORY[0x1BFAF1F10](v19);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v21[v1], v81);
  if (!v82)
  {
LABEL_44:
    sub_1B9F7B644(v81);
    goto LABEL_45;
  }

  v77 = v2;
  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  type metadata accessor for DataTypeChartMessageItem(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_45:
    v81[0] = 0;
    v81[1] = 0xE000000000000000;
    sub_1BA4A7DF8();

    v79 = 0xD000000000000011;
    v80 = 0x80000001BA4F5100;
    sub_1B9F68124(&v21[v1], v81);
    sub_1B9F1B310(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
    v75 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v75);

    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v21 = v79;
  v22 = [v1 contentView];
  v23 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_viewConfiguration;
  swift_beginAccess();
  v24 = *&v21[v23];
  [v22 setBackgroundColor_];

  (*(v12 + 104))(v15, *MEMORY[0x1E69A3120], v11);
  LOBYTE(v22) = sub_1BA4A2898();
  (*(v12 + 8))(v15, v11);
  if ((v22 & 1) == 0)
  {
    if (qword_1EBBE85C8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

  if (qword_1EBBE85D0 != -1)
  {
LABEL_31:
    swift_once();
  }

LABEL_7:

  sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5480;
  v26 = sub_1BA4A3348();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1B9F1BE20();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v29 = sub_1BA4A6768();
  v31 = v30;

  v32 = sub_1BA277FC8();
  sub_1BA0FEA50(v29, v31, v32, nullsub_1, 0, 1);

  sub_1BA00DD24(v81);
  v33 = v82;
  v34 = v83;
  __swift_project_boxed_opaque_existential_1(v81, v82);
  LOBYTE(v26) = (*(v34 + 8))(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v81);
  if (v26)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (sub_1BA27964C(Strong) >> 62)
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
    v36 = sub_1BA4A76C8();

    v37 = [v36 children];
    sub_1B9F0ADF8(0, &qword_1EBBF3400, 0x1E69DCC78);
    v38 = sub_1BA4A6B08();

    if (v38 >> 62)
    {
      v39 = sub_1BA4A7CC8();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v39)
    {
      v40 = sub_1BA0FD5B4();
      [v40 setMenu_];

      v41 = [v36 children];
      v42 = sub_1BA4A6B08();

      if (v42 >> 62)
      {
        v43 = sub_1BA4A7CC8();
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v43 != 1)
      {
        v67 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button];
        [v67 setShowsMenuAsPrimaryAction_];

        goto LABEL_29;
      }

      v44 = [v36 children];
      v45 = sub_1BA4A6B08();

      if (v45 >> 62)
      {
        if (sub_1BA4A7CC8())
        {
          goto LABEL_18;
        }
      }

      else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        if ((v45 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x1BFAF2860](0, v45);
LABEL_21:
          v47 = v46;

          objc_opt_self();
          v48 = swift_dynamicCastObjCClass();
          if (v48)
          {
            v49 = [v48 discoverabilityTitle];
            if (v49)
            {
              v50 = v49;
              v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v53 = v52;

              v54 = swift_allocObject();
              *(v54 + 2) = v21;
              *(v54 + 3) = v51;
              *(v54 + 4) = v53;
              v55 = &v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction];
              v56 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction];
              v57 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction + 8];
              *v55 = sub_1BA27A1E4;
              v55[1] = v54;
              v21 = v21;
              sub_1B9F0E310(v56, v57);
              v58 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button];
              [v58 addTarget:v1 action:sel_didTapButton_ forControlEvents:64];

LABEL_29:
              return;
            }
          }

          goto LABEL_38;
        }

        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v46 = *(v45 + 32);
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_38:
      sub_1BA4A3DD8();
      v68 = sub_1BA4A3E88();
      v69 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v78 = v71;
        *v70 = 136315138;
        v72 = sub_1BA4A85D8();
        v74 = sub_1B9F0B82C(v72, v73, &v78);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_1B9F07000, v68, v69, "[%s] Menu item is not UIAction.", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x1BFAF43A0](v71, -1, -1);
        MEMORY[0x1BFAF43A0](v70, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v10, v77);
      return;
    }
  }

  sub_1BA4A3DD8();
  v59 = sub_1BA4A3E88();
  v60 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v78 = v62;
    *v61 = 136315138;
    v63 = sub_1BA4A85D8();
    v65 = sub_1B9F0B82C(v63, v64, &v78);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_1B9F07000, v59, v60, "[%s] Menu is nil or has no children. Disabling the button.", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x1BFAF43A0](v62, -1, -1);
    MEMORY[0x1BFAF43A0](v61, -1, -1);
  }

  (*(v3 + 8))(v6, v77);
  v66 = sub_1BA0FD5B4();
  [v66 setEnabled_];

  [v1 setUserInteractionEnabled_];
}

id sub_1BA2795E4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DataTypeDetailMessageCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA27964C(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v99 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v99 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v99 - v19;
  if (![objc_opt_self() canSendText])
  {
    sub_1BA4A3DD8();
    v28 = v2;
    v29 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v106[0] = v32;
      *v31 = 136315138;
      v103[0] = v28;
      type metadata accessor for DataTypeChartMessageItem(0);
      v33 = v28;
      v34 = sub_1BA4A6828();
      v36 = sub_1B9F0B82C(v34, v35, v106);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1B9F07000, v29, v30, "%s: MFMessageComposeViewController is not in the state to send text", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
    }

    (*(v5 + 8))(v20, v4);
    return MEMORY[0x1E69E7CC0];
  }

  if (!a1)
  {
    sub_1BA4A3DD8();
    v37 = v2;
    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v106[0] = v41;
      *v40 = 136315138;
      v103[0] = v37;
      type metadata accessor for DataTypeChartMessageItem(0);
      v42 = v37;
      v43 = sub_1BA4A6828();
      v45 = sub_1B9F0B82C(v43, v44, v106);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1B9F07000, v38, v39, "%s: presentingViewController is nil so cannot send text", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    (*(v5 + 8))(v16, v4);
    return MEMORY[0x1E69E7CC0];
  }

  v109[0] = MEMORY[0x1E69E7CC8];
  v102 = a1;
  sub_1BA00DD24(v106);
  v21 = v107;
  v22 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  v23 = (*(v22 + 56))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v106);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact;
    swift_beginAccess();
    v25 = [*&v2[v24] phoneNumbers];
    sub_1B9F0ADF8(0, &unk_1EBBEE300, 0x1E695CEE0);
    v26 = sub_1BA4A6B08();

    v27 = 0;
    sub_1BA2777D8(v26, v109);
  }

  else
  {
    sub_1BA4A3E28();
    v47 = sub_1BA4A3E88();
    v48 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v106[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4E3AB0, v106);
      _os_log_impl(&dword_1B9F07000, v47, v48, "[%s] SMS is not available", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      MEMORY[0x1BFAF43A0](v49, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
    v27 = 0;
  }

  sub_1BA00DD24(v106);
  v51 = v107;
  v52 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  if (((*(v52 + 8))(v51, v52) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v106);
    goto LABEL_20;
  }

  sub_1BA00DD24(v103);
  v53 = v104;
  v54 = v105;
  __swift_project_boxed_opaque_existential_1(v103, v104);
  v55 = (*(v54 + 64))(v53, v54);
  __swift_destroy_boxed_opaque_existential_1(v103);
  __swift_destroy_boxed_opaque_existential_1(v106);
  if ((v55 & 1) == 0)
  {
LABEL_20:
    sub_1BA4A3E28();
    v60 = sub_1BA4A3E88();
    v61 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v106[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4E3AB0, v106);
      _os_log_impl(&dword_1B9F07000, v60, v61, "[%s] iMessage is not available", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1BFAF43A0](v63, -1, -1);
      MEMORY[0x1BFAF43A0](v62, -1, -1);
    }

    v64 = (*(v5 + 8))(v8, v4);
    v59 = v102;
    goto LABEL_50;
  }

  sub_1BA00DD24(v106);
  v56 = v107;
  v57 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  v58 = (*(v57 + 56))(v56, v57);
  __swift_destroy_boxed_opaque_existential_1(v106);
  if (v58)
  {
    v59 = v102;
    goto LABEL_49;
  }

  v66 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact;
  swift_beginAccess();
  v67 = [*&v2[v66] phoneNumbers];
  sub_1B9F0ADF8(0, &unk_1EBBEE300, 0x1E695CEE0);
  v68 = sub_1BA4A6B08();

  if (v68 >> 62)
  {
LABEL_47:
    v69 = sub_1BA4A7CC8();
    v99 = v27;
    if (v69)
    {
      goto LABEL_25;
    }

LABEL_48:

    v59 = v102;
    goto LABEL_49;
  }

  v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v99 = 0;
  if (!v69)
  {
    goto LABEL_48;
  }

LABEL_25:
  v70 = 0;
  v71 = &v2[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_defaultICloudAccount];
  v100 = v68 & 0xFFFFFFFFFFFFFF8;
  v101 = v68 & 0xC000000000000001;
  while (1)
  {
    if (v101)
    {
      v72 = MEMORY[0x1BFAF2860](v70, v68);
    }

    else
    {
      if (v70 >= *(v100 + 16))
      {
        goto LABEL_46;
      }

      v72 = *(v68 + 8 * v70 + 32);
    }

    v73 = v72;
    v27 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v74 = [v72 value];
    v75 = [v74 stringValue];

    v76 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v78 = v77;

    v79 = *(v71 + 1);
    if (!v79)
    {

      goto LABEL_27;
    }

    if (v76 == *v71 && v79 == v78)
    {
      break;
    }

    v81 = sub_1BA4A8338();

    if (v81)
    {
      goto LABEL_41;
    }

LABEL_27:
    ++v70;
    if (v27 == v69)
    {
      goto LABEL_48;
    }
  }

LABEL_41:

  v82 = [v73 label];
  if (v82)
  {
    v83 = v82;
    v84 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v86 = v85;
  }

  else
  {
    v84 = 0;
    v86 = 0xE000000000000000;
  }

  v87 = [v73 value];
  v88 = [v87 stringValue];

  v89 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v91 = v90;

  v92 = v109[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v103[0] = v92;
  sub_1B9F248E4(v89, v91, v84, v86, isUniquelyReferenced_nonNull_native);

  v109[0] = v103[0];
  v59 = v102;
LABEL_49:
  v94 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact;
  swift_beginAccess();
  v95 = [*&v2[v94] emailAddresses];
  sub_1B9F0ADF8(0, &unk_1EBBEE300, 0x1E695CEE0);
  v96 = sub_1BA4A6B08();

  sub_1BA277B1C(v96, v109);

LABEL_50:
  v97 = v109[0];
  MEMORY[0x1EEE9AC00](v64, v65);
  *(&v99 - 2) = v2;
  *(&v99 - 1) = v59;
  v98 = sub_1BA27A22C(v97, sub_1BA27A224);

  return v98;
}

uint64_t sub_1BA27A0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_1B9F0ADF8(0, &unk_1EDC5E0B0, 0x1E69DC628);

  sub_1BA3BFC74();
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a6;
  swift_bridgeObjectRetain_n();
  v11 = a5;
  v12 = a6;
  return sub_1BA4A77E8();
}

uint64_t sub_1BA27A1E4(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = 0;
  return sub_1BA00E1FC(&v5, v2, v3, a1);
}

uint64_t sub_1BA27A22C(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    v5 = v2 + 64;
    result = sub_1BA4A7C48();
    v6 = result;
    v7 = 0;
    v8 = *(v2 + 36);
    v25 = v2 + 72;
    v26 = v3;
    v28 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v8 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v29 = v7;
      v11 = v5;
      v12 = (*(v2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = (*(v2 + 56) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];

      a2(v13, v14, v17, v16);

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      v2 = v28;
      sub_1BA4A7F28();
      result = sub_1BA4A7EE8();
      v9 = 1 << *(v28 + 32);
      if (v6 >= v9)
      {
        goto LABEL_24;
      }

      v18 = *(v11 + 8 * v10);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (v8 != *(v28 + 36))
      {
        goto LABEL_26;
      }

      v5 = v11;
      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v9 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1BA0477A4(v6, v8, 0);
            v9 = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        result = sub_1BA0477A4(v6, v8, 0);
LABEL_18:
        v2 = v28;
      }

      v7 = v29 + 1;
      v6 = v9;
      if (v29 + 1 == v26)
      {
        return v30;
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
  }

  return result;
}

uint64_t sub_1BA27A4A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v5 = 0;
  return sub_1BA00E1FC(&v5, v1, v2, v3);
}

uint64_t sub_1BA27A4DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA27A534(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA27D72C();
  return sub_1B9F4422C(a1, sub_1B9F7B6F8);
}

double (*sub_1BA27A5B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA27A618;
}

double sub_1BA27A618(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA27D72C();
  }

  return result;
}

uint64_t sub_1BA27A64C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v8);
  if (v8[3])
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    sub_1B9F0D9AC(0, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling, 1);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_1B9F1134C(&v9, v12);
        v5 = v13;
        v6 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v6 + 24))(a1, v5, v6);
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_1B9F4422C(v8, sub_1B9F7B6F8);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  result = sub_1B9F4422C(&v9, sub_1B9F2F31C);
  *a2 = 2;
  return result;
}

id sub_1BA27A7D4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel);
  }

  else
  {
    v4 = [objc_opt_self() labelColor];
    v5 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
    v6 = [objc_allocWithZone(type metadata accessor for DynamicFontLabel()) initWithFrame_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = v6;
    [v7 setAdjustsFontForContentSizeCategory_];
    [v7 setText_];
    [v7 setFont_];
    [v7 setTextColor_];
    [v7 setLineBreakMode_];
    [v7 setNumberOfLines_];

    LODWORD(v8) = 1132068864;
    [v7 setContentHuggingPriority:0 forAxis:v8];
    LODWORD(v9) = 1132068864;
    [v7 setContentCompressionResistancePriority:0 forAxis:v9];

    v10 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1BA27A994()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel);
  }

  else
  {
    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1D0))();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1BA27AA2C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BA27AA70(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))(v4);
  if (*(v1 + v3) == 1)
  {
    sub_1BA27B454();
  }

  else
  {
    sub_1BA27BA50(v5);
  }
}

uint64_t (*sub_1BA27AB20(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA27ABA8;
}

void sub_1BA27ABA8(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x160))(v4);
    if (*(v5 + v6) == 1)
    {
      sub_1BA27B454();
    }

    else
    {
      sub_1BA27BA50(v7);
    }
  }

  free(v3);
}

void sub_1BA27AC50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v6 = sub_1BA27A7D4();
    sub_1B9F2180C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BA4B5460;
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    *(v7 + 48) = 0x656C746954;
    *(v7 + 56) = 0xE500000000000000;

    v8 = sub_1BA4A6AE8();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v6 setAccessibilityIdentifier_];
    v10 = sub_1BA27A994();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BA4B5460;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    *(v11 + 48) = 0x6C6961746544;
    *(v11 + 56) = 0xE600000000000000;
    v12 = sub_1BA4A6AE8();

    v14 = HKUIJoinStringsForAutomationIdentifier();

    [v10 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v13 = sub_1BA27A7D4();
    [v13 setAccessibilityIdentifier_];

    v14 = sub_1BA27A994();
    [v14 setAccessibilityIdentifier_];
  }
}

void sub_1BA27AE60()
{
  v1 = v0;
  sub_1B9F2180C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B7510;
  *(inited + 32) = sub_1BA27A7D4();
  v3 = 0;
  *(inited + 40) = sub_1BA27A994();
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = v3;
  while ((inited & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1BFAF2860](v5, inited);
LABEL_6:
    v7 = v6;
    v3 = v5 + 1;
    v8 = [v6 text];
    if (v8)
    {
      v18 = v1;
      v9 = v8;
      v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v16 = v11;
      v17 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1BA27EE34(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_1BA27EE34((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[16 * v13];
      *(v14 + 4) = v17;
      *(v14 + 5) = v16;
      v1 = v18;
      if (v5 == 1)
      {
LABEL_15:
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1B9F2180C(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1B9F1D768();
        sub_1BA4A66D8();

        v15 = sub_1BA4A6758();

        [v1 setAccessibilityLabel_];

        return;
      }

      goto LABEL_2;
    }

    ++v5;
    if (v3 == 2)
    {
      goto LABEL_15;
    }
  }

  if (v5 < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(inited + 32 + 8 * v5);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1BA27B0C0()
{
  v1 = [v0 contentView];
  v2 = sub_1BA27A7D4();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_1BA27A994();
  [v3 addSubview_];

  sub_1BA27B454();
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 setBackgroundView_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 setSelectedBackgroundView_];

  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);

  return v7();
}

id sub_1BA27B238()
{
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_forceVerticalLayout] & 1) != 0 || (v1 = [v0 traitCollection], v2 = objc_msgSend(v1, sel_preferredContentSizeCategory), v1, LOBYTE(v1) = sub_1BA4A74F8(), v2, (v1))
  {
    sub_1BA27C5A8();
  }

  else
  {
    sub_1BA27BE60();
  }

  return [v0 setNeedsLayout];
}

uint64_t sub_1BA27B2E0(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v8);
  if (v8[3])
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    sub_1B9F0D9AC(0, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling, 1);
    if (swift_dynamicCast())
    {
      v5 = *(&v10 + 1);
      if (*(&v10 + 1))
      {
        v6 = v11;
        __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
        (*(v6 + 16))(a1, a2, v5, v6);
        return __swift_destroy_boxed_opaque_existential_1(&v9);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_1B9F4422C(v8, sub_1B9F7B6F8);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  return sub_1B9F4422C(&v9, sub_1B9F2F31C);
}

void sub_1BA27B454()
{
  sub_1B9F1D1BC(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v45 = &v39 - v3;
  v46 = sub_1BA4A3FB8();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A3F18();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1BA4A3ED8();
  v9 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v10);
  v52 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v39 - v14;
  v55 = sub_1BA4A3FE8();
  v16 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v17);
  v43 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v39 - v21;
  v47 = v0;
  v23 = sub_1BA4A75E8();
  v24 = 0;
  v56 = *(v23 + 16);
  v57 = v23;
  v51 = v16 + 16;
  v50 = *MEMORY[0x1E69DBEF0];
  v25 = (v9 + 8);
  v54 = v16;
  v48 = v16 + 8;
  v49 = (v9 + 104);
  v26 = v55;
  while (v56 != v24)
  {
    if (v24 >= *(v57 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    v27 = v54;
    (*(v54 + 16))(v22, v57 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24++, v26);
    sub_1BA4A3F08();
    v29 = v52;
    v28 = v53;
    (*v49)(v52, v50, v53);
    v30 = MEMORY[0x1BFAEE900](v15, v29);
    v31 = *v25;
    (*v25)(v29, v28);
    v31(v15, v28);
    (*(v27 + 8))(v22, v26);
    if (v30)
    {

      return;
    }
  }

  v15 = sub_1BA4A75E8();
  v33 = v39;
  v32 = v40;
  v34 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x1E69DBF28], v41);
  v35 = sub_1BA4A3F48();
  (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
  v36 = v42;
  sub_1BA4A3FA8();
  v22 = v43;
  sub_1BA4A3F78();
  (*(v44 + 8))(v36, v46);
  (*(v32 + 8))(v33, v34);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_7;
  }

LABEL_11:
  v15 = sub_1BA2806AC(0, *(v15 + 2) + 1, 1, v15, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69DBF68]);
LABEL_7:
  v38 = *(v15 + 2);
  v37 = *(v15 + 3);
  if (v38 >= v37 >> 1)
  {
    v15 = sub_1BA2806AC((v37 > 1), v38 + 1, 1, v15, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69DBF68]);
  }

  *(v15 + 2) = v38 + 1;
  (*(v54 + 32))(&v15[((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v38], v22, v55);
  sub_1BA4A75F8();
}

uint64_t sub_1BA27BA50(__n128 a1)
{
  v2 = sub_1BA4A3ED8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v51 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = v37 - v8;
  v9 = sub_1BA4A3FE8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v49 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v37 - v15;
  v17 = sub_1BA4A75E8();
  v18 = *(v17 + 16);
  if (v18)
  {
    v37[1] = v1;
    v37[2] = v17;
    v20 = *(v10 + 16);
    v19 = v10 + 16;
    v47 = v20;
    v48 = v2;
    v39 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v21 = v17 + v39;
    v22 = *(v19 + 56);
    v45 = *MEMORY[0x1E69DBEF0];
    v43 = (v3 + 8);
    v44 = (v3 + 104);
    v41 = (v19 + 16);
    v38 = (v19 - 8);
    v23 = MEMORY[0x1E69E7CC0];
    v40 = v9;
    v46 = v22;
    v42 = v19;
    v24 = v2;
    do
    {
      v52 = v23;
      v47(v16, v21, v9);
      v26 = v50;
      sub_1BA4A3F08();
      v27 = v16;
      v28 = v51;
      (*v44)(v51, v45, v24);
      v29 = MEMORY[0x1BFAEE900](v26, v28);
      v30 = v9;
      v31 = *v43;
      (*v43)(v28, v24);
      v31(v26, v24);
      if (v29)
      {
        (*v38)(v27, v30);
        v9 = v30;
        v16 = v27;
        v25 = v46;
        v23 = v52;
      }

      else
      {
        v32 = *v41;
        (*v41)(v49, v27, v30);
        v23 = v52;
        v16 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1BA2806AC(0, v23[2] + 1, 1, v23, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69DBF68]);
        }

        v34 = v23[2];
        v33 = v23[3];
        if (v34 >= v33 >> 1)
        {
          v23 = sub_1BA2806AC((v33 > 1), v34 + 1, 1, v23, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69DBF68]);
        }

        v23[2] = v34 + 1;
        v25 = v46;
        v35 = v23 + v39 + v34 * v46;
        v9 = v40;
        v32(v35, v49, v40);
      }

      v21 += v25;
      --v18;
    }

    while (v18);
  }

  return sub_1BA4A75F8();
}

void sub_1BA27BE60()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_currentLayoutConstraints;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);

  v4 = sub_1BA4A6AE8();

  v56 = v2;
  [v2 deactivateConstraints_];

  *&v1[v3] = MEMORY[0x1E69E7CC0];

  sub_1B9F2180C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5890;
  v6 = sub_1BA27A7D4();
  v7 = [v6 topAnchor];

  v8 = [v1 contentView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:8.0];
  *(inited + 32) = v10;
  v57 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel;
  v11 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel] bottomAnchor];
  v12 = [v1 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-8.0];
  *(inited + 40) = v14;
  v15 = sub_1BA27A994();
  v16 = [v15 topAnchor];

  v17 = [v1 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:8.0];
  *(inited + 48) = v19;
  v55 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel;
  v20 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel] bottomAnchor];
  v21 = [v1 contentView];
  v22 = [v21 bottomAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-8.0];
  *(inited + 56) = v23;
  v24 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24)
  {
    v25 = 0;
    do
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1BFAF2860](v25, inited);
      }

      else
      {
        if (v25 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v26 = *(inited + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      type metadata accessor for UILayoutPriority(0);
      sub_1B9F7A62C();
      sub_1BA4A3EB8();
      LODWORD(v28) = v58;
      [v27 setPriority_];
    }

    while (v24 != v25);
  }

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B79E0;
  v30 = [*&v1[v57] leadingAnchor];
  v31 = [v1 contentView];
  v32 = [v31 &selRef__totalDistance + 1];

  v33 = [v30 constraintEqualToAnchor:v32 constant:16.0];
  *(v29 + 32) = v33;
  v34 = [*&v1[v57] centerYAnchor];
  v35 = [v1 contentView];
  v36 = [v35 centerYAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  *(v29 + 40) = v37;
  v38 = [*&v1[v55] centerYAnchor];
  v39 = [v1 contentView];
  v40 = [v39 centerYAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v29 + 48) = v41;
  v42 = [*&v1[v55] trailingAnchor];
  v43 = [v1 contentView];
  v44 = [v43 trailingAnchor];

  v45 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  swift_beginAccess();
  v46 = -16.0;
  if (v1[v45])
  {
    v46 = -8.0;
  }

  v47 = [v42 constraintEqualToAnchor:v44 constant:v46];

  *(v29 + 56) = v47;
  v48 = [*&v1[v55] leadingAnchor];
  v49 = [*&v1[v57] trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:8.0];

  *(v29 + 64) = v50;
  v51 = [v1 contentView];
  v52 = [v51 heightAnchor];

  v53 = [v52 constraintGreaterThanOrEqualToConstant_];
  *(v29 + 72) = v53;
  sub_1B9F73B50(inited);
  *&v1[v3] = v29;

  v54 = sub_1BA4A6AE8();

  [v56 activateConstraints_];
}

void sub_1BA27C5A8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_currentLayoutConstraints;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);

  v4 = sub_1BA4A6AE8();

  [v2 deactivateConstraints_];

  v82 = v3;
  *&v1[v3] = MEMORY[0x1E69E7CC0];

  v5 = sub_1BA27CF4C();
  v6 = sub_1BA27A994();
  v7 = v6;
  v83 = v2;
  if (!v5)
  {
    [v6 setHidden_];

    sub_1B9F2180C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4BBC90;
    v25 = sub_1BA27A7D4();
    v26 = [v25 topAnchor];

    v27 = [v1 contentView];
    v28 = [v27 topAnchor];

    v29 = [v26 constraintEqualToAnchor:v28 constant:8.0];
    *(v9 + 32) = v29;
    v30 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel;
    v31 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel] leadingAnchor];
    v32 = [v1 &selRef_fetchSources];
    v33 = [v32 &selRef__totalDistance + 1];

    v34 = [v31 constraintEqualToAnchor:v33 constant:16.0];
    *(v9 + 40) = v34;
    v35 = [*&v1[v30] trailingAnchor];
    v36 = [v1 &selRef_fetchSources];
    v37 = [v36 &selRef_cloudSyncObserverSyncCompleted_ + 4];

    v38 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
    swift_beginAccess();
    if (v1[v38])
    {
      v39 = -8.0;
    }

    else
    {
      v39 = -16.0;
    }

    v40 = [v35 constraintEqualToAnchor:v37 constant:v39];

    *(v9 + 48) = v40;
    v41 = [*&v1[v30] bottomAnchor];
    v42 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel;
    v43 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel] topAnchor];
    v44 = [v41 constraintEqualToAnchor:v43 constant:-8.0];

    *(v9 + 56) = v44;
    v45 = [*&v1[v42] bottomAnchor];
    v46 = [v1 contentView];
    v47 = [v46 bottomAnchor];

    v48 = [v45 constraintEqualToAnchor:v47 constant:-8.0];
    *(v9 + 64) = v48;
    v49 = [*&v1[v42] leadingAnchor];
    v50 = [v1 contentView];
    v51 = [v50 leadingAnchor];

    v52 = [v49 constraintEqualToAnchor:v51 constant:16.0];
    *(v9 + 72) = v52;
    v53 = [*&v1[v42] trailingAnchor];
    v54 = [v1 contentView];
    v55 = v83;
    v56 = [v54 trailingAnchor];

    if (v1[v38])
    {
      v57 = -8.0;
    }

    else
    {
      v57 = -16.0;
    }

    v58 = [v53 constraintEqualToAnchor:v56 constant:v57];

    *(v9 + 80) = v58;
    v59 = [v1 contentView];
    v60 = [v59 heightAnchor];

    v61 = [v60 constraintGreaterThanOrEqualToConstant_];
    *(v9 + 88) = v61;
    goto LABEL_20;
  }

  [v6 setHidden_];

  sub_1B9F2180C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v81 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B7510;
  v10 = sub_1BA27A7D4();
  v11 = [v10 topAnchor];

  v12 = [v1 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:8.0];
  *(v9 + 32) = v14;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel;
  v16 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel] bottomAnchor];
  v17 = [v1 contentView];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:-8.0];
  *(v9 + 40) = v19;
  v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
LABEL_17:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5890;
    v63 = [*&v1[v15] leadingAnchor];
    v64 = [v1 contentView];
    v65 = [v64 leadingAnchor];

    v66 = [v63 constraintEqualToAnchor:v65 constant:16.0];
    *(inited + 32) = v66;
    v67 = [*&v1[v15] trailingAnchor];
    v68 = [v1 contentView];
    v69 = [v68 trailingAnchor];

    v70 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
    swift_beginAccess();
    v71 = -16.0;
    if (v1[v70])
    {
      v71 = -8.0;
    }

    v72 = [v67 constraintEqualToAnchor:v69 constant:{v71, v81}];

    *(inited + 40) = v72;
    v73 = [*&v1[v15] centerYAnchor];
    v74 = [v1 contentView];
    v75 = [v74 centerYAnchor];

    v76 = [v73 constraintEqualToAnchor_];
    *(inited + 48) = v76;
    v77 = [v1 contentView];
    v78 = [v77 heightAnchor];

    v79 = [v78 constraintGreaterThanOrEqualToConstant_];
    *(inited + 56) = v79;
    sub_1B9F73B50(inited);
    v55 = v83;
LABEL_20:
    *&v1[v82] = v9;

    v80 = sub_1BA4A6AE8();

    [v55 activateConstraints_];

    return;
  }

  v21 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1BFAF2860](v21, v9);
      goto LABEL_7;
    }

    if (v21 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v22 = *(v9 + 8 * v21 + 32);
LABEL_7:
    v24 = v22;
    ++v21;
    LODWORD(v23) = 1132068864;
    [v22 setPriority_];

    if (v20 == v21)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

BOOL sub_1BA27CF4C()
{
  v0 = sub_1BA27A7D4();
  v1 = [v0 text];

  if (!v1)
  {
    return 1;
  }

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 1;
  }

  v6 = sub_1BA27A994();
  v7 = [v6 text];

  if (!v7)
  {
    return 1;
  }

  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return !v11;
}

id sub_1BA27D030()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  v1 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
  v2 = [objc_allocWithZone(type metadata accessor for DynamicFontLabel()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = v2;
  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setText_];
  [v3 setFont_];
  [v3 setTextColor_];
  [v3 setLineBreakMode_];
  [v3 setNumberOfLines_];

  LODWORD(v4) = 1144750080;
  [v3 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];

  return v3;
}

uint64_t sub_1BA27D1B8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(v26);
  if (!v27)
  {
    sub_1B9F4422C(v26, sub_1B9F7B6F8);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    return sub_1B9F4422C(&v23, sub_1BA281078);
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
  sub_1B9F0D9AC(0, qword_1EDC62BD0, &protocol descriptor for CollectionViewListDisclosureItem, 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    return sub_1B9F4422C(&v23, sub_1BA281078);
  }

  if (!*(&v24 + 1))
  {
    return sub_1B9F4422C(&v23, sub_1BA281078);
  }

  sub_1B9F1134C(&v23, v26);
  v3 = sub_1BA27A7D4();
  v4 = v27;
  v5 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v5 + 16))(v4, v5);
  if (v6)
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  [v3 setText_];

  v9 = sub_1BA27A994();
  v10 = v27;
  v11 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v11 + 24))(v10, v11);
  if (v12)
  {
    v13 = sub_1BA4A6758();
  }

  else
  {
    v13 = 0;
  }

  [v9 setText_];

  v14 = v27;
  v15 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v16 = (*(v15 + 32))(v14, v15);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  v18 = swift_beginAccess();
  *(v1 + v17) = v16 & 1;
  v19 = *((*v2 & *v1) + 0x160);
  (v19)(v18);
  if (*(v1 + v17) == 1)
  {
    sub_1BA27B454();
  }

  else
  {
    sub_1BA27BA50(v20);
  }

  v21 = v27;
  v22 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_forceVerticalLayout) = (*(v22 + 40))(v21, v22) & 1;
  v19();
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

id NonInteractiveCollectionViewListDisclosureCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for NonInteractiveCollectionViewListDisclosureCell();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setUserInteractionEnabled_];
  return v9;
}

id NonInteractiveCollectionViewListDisclosureCell.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for NonInteractiveCollectionViewListDisclosureCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id NonInteractiveCollectionViewListDisclosureCell.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NonInteractiveCollectionViewListDisclosureCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_1BA27D72C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  (*((*v1 & *v0) + 0x148))(v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v3, v11);
  if (!v12)
  {
    sub_1B9F4422C(v11, sub_1B9F7B6F8);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    goto LABEL_7;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
  sub_1B9F0D9AC(0, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_7;
  }

  v4 = *(&v14 + 1);
  if (!*(&v14 + 1))
  {
LABEL_7:
    sub_1B9F4422C(&v13, sub_1BA281B2C);
    v9 = 0;
    v8 = 0;
    goto LABEL_8;
  }

  v5 = v15;
  __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(&v13);
  v9 = v6;
LABEL_8:
  (*((*v1 & *v0) + 0x138))(v9, v8);

  return result;
}

void sub_1BA27D958(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  v5 = swift_beginAccess();
  *(v3 + v4) = v2;
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x160))(v5);
  if (*(v3 + v4) == 1)
  {
    sub_1BA27B454();
  }

  else
  {
    sub_1BA27BA50(v6);
  }
}

void *CollectionViewListDisclosureCell.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel] = 0;
  v5[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator] = 1;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_currentLayoutConstraints] = MEMORY[0x1E69E7CC0];
  v5[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_forceVerticalLayout] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation] = 0;
  v29.receiver = v5;
  v29.super_class = type metadata accessor for CollectionViewListDisclosureCell();
  v11 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a2, a3, a4, a5);
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x150);
  v14 = v11;
  v15 = v13();
  (*((*v12 & *v14) + 0x160))(v15);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  swift_beginAccess();
  if (*(v14 + v16) == 1)
  {
    sub_1BA27B454();
  }

  else
  {
    sub_1BA27BA50(v17);
  }

  v28 = sub_1BA27A994();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = sub_1BA4A14E8();

  v19 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation);
  *(v14 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation) = v18;

  sub_1B9F1D1BC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B9FD0;
  v21 = sub_1BA4A4438();
  v22 = MEMORY[0x1E69DC130];
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  v23 = sub_1BA4A40D8();
  v24 = MEMORY[0x1E69DC0C8];
  *(v20 + 48) = v23;
  *(v20 + 56) = v24;
  v25 = sub_1BA4A4858();
  v26 = MEMORY[0x1E69DC2B0];
  *(v20 + 64) = v25;
  *(v20 + 72) = v26;
  MEMORY[0x1BFAF2130](v20, sel_traitCollectionDidChangeWithTraitEnvironment_previousTraitCollection_);

  swift_unknownObjectRelease();
  return v14;
}

id CollectionViewListDisclosureCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *CollectionViewListDisclosureCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel] = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator] = 1;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_currentLayoutConstraints] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_forceVerticalLayout] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation] = 0;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for CollectionViewListDisclosureCell();
  v4 = objc_msgSendSuper2(&v22, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x150))();
    (*((*v6 & *v5) + 0x160))(v7);
    v8 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
    swift_beginAccess();
    if (*(v5 + v8) == 1)
    {
      sub_1BA27B454();
    }

    else
    {
      sub_1BA27BA50(v9);
    }

    v21 = sub_1BA27A994();
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = v5;
    v11 = sub_1BA4A14E8();

    v12 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation);
    *(v10 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation) = v11;

    sub_1B9F1D1BC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B9FD0;
    v14 = sub_1BA4A4438();
    v15 = MEMORY[0x1E69DC130];
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    v16 = sub_1BA4A40D8();
    v17 = MEMORY[0x1E69DC0C8];
    *(v13 + 48) = v16;
    *(v13 + 56) = v17;
    v18 = sub_1BA4A4858();
    v19 = MEMORY[0x1E69DC2B0];
    *(v13 + 64) = v18;
    *(v13 + 72) = v19;
    MEMORY[0x1BFAF2130](v13, sel_traitCollectionDidChangeWithTraitEnvironment_previousTraitCollection_);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v5;
}

id CollectionViewListDisclosureCell.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation];
  if (v3)
  {
    v4 = v3;
    sub_1BA4A13F8();

    v3 = *&v1[v2];
  }

  *&v1[v2] = 0;

  v6.receiver = v1;
  v6.super_class = type metadata accessor for CollectionViewListDisclosureCell();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1BA27E474()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](60, 0xE100000000000000);
  swift_getObjectType();
  sub_1BA16A6B4();
  v1 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v1);

  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4F79C0);
  v2 = sub_1BA27A7D4();
  v3 = [v2 text];

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

  sub_1B9F2180C(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v7 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v7);

  MEMORY[0x1BFAF1350](0xD000000000000018, 0x80000001BA4F79E0);
  v8 = sub_1BA27A994();
  v9 = [v8 text];

  if (v9)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  v10 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v10);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

void sub_1BA27E6A8(uint64_t a1)
{
  v2 = v1;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for CollectionViewListDisclosureCell();
  objc_msgSendSuper2(&v28, sel_didMoveToSuperview);
  v3 = [v1 viewController];
  if (v3)
  {
    v4 = v3;
    UIViewController.resolvedPresentation.getter(&v22);

    v5 = v22;
    if ((v22 | 8) == 0xC)
    {
      v6 = &selRef_tertiarySystemBackgroundColor;
    }

    else
    {
      v6 = &selRef_secondarySystemGroupedBackgroundColor;
    }
  }

  else
  {
    v5 = 0;
    v6 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v7 = [objc_opt_self() *v6];
  [v2 setBackgroundColor_];

  v8 = [v2 selectedBackgroundView];
  if (v8)
  {
    v9 = v8;
    if ((v5 - 6) < 2)
    {
      v16 = objc_opt_self();
      v17 = [v16 systemGray5Color];
      v18 = [v16 tertiarySystemGroupedBackgroundColor];
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = v18;
      v19[4] = 0;
      v19[5] = v17;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v26 = sub_1B9FD7F54;
      v27 = v19;
      v22 = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v15 = &block_descriptor_67;
    }

    else
    {
      if (v5 != 4 && v5 != 12)
      {
        v21 = [objc_opt_self() systemGray5Color];
        goto LABEL_13;
      }

      v10 = objc_opt_self();
      v11 = [v10 systemGray5Color];
      v12 = [v10 systemGray4Color];
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = v12;
      v13[4] = 0;
      v13[5] = v11;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v26 = sub_1B9FE1088;
      v27 = v13;
      v22 = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v15 = &block_descriptor_12_2;
    }

    v24 = sub_1B9F7EBBC;
    v25 = v15;
    v20 = _Block_copy(&v22);
    v21 = [v14 initWithDynamicProvider_];
    _Block_release(v20);

LABEL_13:
    [v9 setBackgroundColor_];
  }
}

void sub_1BA27EA08(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1BA27EA70(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_1BA4A6758();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

void sub_1BA27EAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA2818DC(0);
  sub_1BA4A14A8();
  sub_1BA4A1498();
  v3 = v10;
  v4 = v11;
  if (v9 == 1)
  {
    if (v11 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v11 == 1)
  {
    goto LABEL_5;
  }

  if (!v9)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v11)
  {
LABEL_5:
    v3 = v8;
    v4 = v9;
LABEL_6:
    sub_1BA281958(v3, v4);
LABEL_7:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x160))();
    }

    return;
  }

  if (v8 == v10 && v9 == v11)
  {
    sub_1BA281958(v8, v9);
    sub_1BA281958(v8, v9);
    return;
  }

  v7 = sub_1BA4A8338();
  sub_1BA281958(v10, v11);
  sub_1BA281958(v8, v9);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void (*sub_1BA27ECB8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  return sub_1B9FCDD98;
}

char *sub_1BA27EE34(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_1BA27EFDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA27F15C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B9F1D1BC(0, &qword_1EBBEA8A0, sub_1B9F7B6F8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    sub_1B9F7B6F8(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA27F2F0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B9F1D1BC(0, &qword_1EBBEF6E8, sub_1BA281AC0, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    sub_1BA281AC0(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA27F490(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EBBEAC90, &type metadata for ConfirmDetailsSection.Row, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA27F5FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &unk_1EDC5DC40, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1BA27F708(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA27F848(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EBBEF6F0, MEMORY[0x1E69A2B70], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA27F96C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EBBEAC10, MEMORY[0x1E69E6370], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}
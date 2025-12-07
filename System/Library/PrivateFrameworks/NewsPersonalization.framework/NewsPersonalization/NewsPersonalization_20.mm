uint64_t sub_1C6D0AA50(uint64_t a1)
{
  v26 = a1;

  sub_1C6D0963C(&v26);
  v2 = v26;
  v3 = *(v26 + 2);
  if (v3)
  {
    sub_1C6D11840(v26);
    if (v3 > 3)
    {
      v4 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      v6 = (v2 + 48);
      v5 = 0.0;
      v7 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v5 = v5 + *(v6 - 2) + *(v6 - 1) + *v6 + v6[1];
        v6 += 4;
        v7 -= 4;
      }

      while (v7);
      if (v3 == v4)
      {
LABEL_10:

        v11 = v5 / v3;
        v12 = *(a1 + 16);
        if (v12)
        {
          if (v12 > 3)
          {
            v13 = v12 & 0x7FFFFFFFFFFFFFFCLL;
            v15 = vdupq_lane_s64(*&v11, 0);
            v16 = (a1 + 48);
            v14 = 0.0;
            v17 = v12 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v18 = vsubq_f64(v16[-1], v15);
              v19 = vsubq_f64(*v16, v15);
              v20 = vmulq_f64(v18, v18);
              v21 = vmulq_f64(v19, v19);
              v14 = v14 + v20.f64[0] + v20.f64[1] + v21.f64[0] + v21.f64[1];
              v16 += 2;
              v17 -= 4;
            }

            while (v17);
            if (v12 == v13)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v13 = 0;
            v14 = 0.0;
          }

          v22 = v12 - v13;
          v23 = (a1 + 8 * v13 + 32);
          do
          {
            v24 = *v23++;
            v14 = v14 + (v24 - v11) * (v24 - v11);
            --v22;
          }

          while (v22);
        }

LABEL_19:
        sub_1C6D798F0();
        sub_1C6D798F0();
        sub_1C6D798F0();
        sub_1C6D798F0();
        sub_1C6D798F0();
        return sub_1C6D77D90();
      }
    }

    else
    {
      v4 = 0;
      v5 = 0.0;
    }

    v8 = v3 - v4;
    v9 = &v2[8 * v4 + 32];
    do
    {
      v10 = *v9++;
      v5 = v5 + v10;
      --v8;
    }

    while (v8);
    goto LABEL_10;
  }

  return sub_1C6D77D90();
}

void *sub_1C6D0ACDC(unint64_t a1, uint64_t a2)
{
  v45 = a2;
  v5 = sub_1C6D78EB0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D75F80();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B15028(v2 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_recipeScoringService, &v40, sub_1C6D1AEF4);
  if (v41)
  {
    v36 = v11;
    v37 = v10;
    v39 = v5;
    sub_1C6B15E34(&v40, v42);
    sub_1C6D75F70();
    sub_1C6D78EA0();
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDCEA6A8;
    v16 = sub_1C6D79AC0();
    sub_1C6B1D314(0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C6D7EB10;
    v38 = v6;
    if (a1 >> 62)
    {
      v18 = sub_1C6D79E90();
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x1E69E65A8];
    *(v17 + 56) = MEMORY[0x1E69E6530];
    *(v17 + 64) = v19;
    *(v17 + 32) = v18;
    v20 = sub_1C6D75F60();
    v22 = v21;
    *(v17 + 96) = MEMORY[0x1E69E6158];
    *(v17 + 104) = sub_1C6B2064C();
    *(v17 + 72) = v20;
    *(v17 + 80) = v22;
    sub_1C6D78D30("Xavier scoring %ld recipes, request ID %{public}@", 49, 2, &dword_1C6B09000, v15, v16, v17);

    v23 = v43;
    v24 = v44;
    v25 = __swift_project_boxed_opaque_existential_1(v42, v43);
    v26 = *(v24 + 8);
    v27 = sub_1C6B0C69C(0, &qword_1EDCDF8F0, 0x1E69B5580);
    v28 = v26(a1, v45, v14, v27, v23, v24);
    if (v3)
    {
      sub_1C6D0B65C(v14, v9, "Xavier finished scoring recipes for request ID %{public}@ in %.0f milliseconds", 78);
      (*(v38 + 8))(v9, v39);
      (*(v36 + 8))(v14, v37);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v28, v29);
      *(&v36 - 2) = v30;
      *(&v36 - 1) = v14;
      sub_1C6D03EF8(sub_1C6D1BCD4, (&v36 - 4), a1);
      v32 = v31;

      *&v40 = v32;

      sub_1C6D09854(&v40);
      v34 = v36;
      v33 = v37;

      v25 = v40;
      sub_1C6D0B65C(v14, v9, "Xavier finished scoring recipes for request ID %{public}@ in %.0f milliseconds", 78);
      (*(v38 + 8))(v9, v39);
      (*(v34 + 8))(v14, v33);
    }

    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    sub_1C6D1BEDC(&v40, sub_1C6D1AEF4);
    return MEMORY[0x1E69E7CC0];
  }

  return v25;
}

uint64_t XavierScoringService.score<A>(recipes:context:)(uint64_t a1, uint64_t a2, char *a3)
{
  v46 = a2;
  v52 = a1;
  v6 = sub_1C6D78EB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D75F80();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B15028(v3 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_recipeScoringService, &v47, sub_1C6D1AEF4);
  if (v48)
  {
    v42 = v12;
    v43 = v11;
    v44 = v7;
    v45 = v6;
    sub_1C6B15E34(&v47, v49);
    sub_1C6D75F70();
    v41 = v10;
    sub_1C6D78EA0();
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDCEA6A8;
    v17 = sub_1C6D79AC0();
    sub_1C6B1D314(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C6D7EB10;
    v19 = v52;
    v20 = sub_1C6D79810();
    v21 = MEMORY[0x1E69E65A8];
    *(v18 + 56) = MEMORY[0x1E69E6530];
    *(v18 + 64) = v21;
    *(v18 + 32) = v20;
    v22 = sub_1C6D75F60();
    v24 = v23;
    *(v18 + 96) = MEMORY[0x1E69E6158];
    *(v18 + 104) = sub_1C6B2064C();
    *(v18 + 72) = v22;
    *(v18 + 80) = v24;
    sub_1C6D78D30("Xavier scoring %ld recipes, request ID %{public}@", 49, 2, &dword_1C6B09000, v16, v17, v18);

    v25 = v50;
    v26 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v27 = (*(v26 + 8))(v19, v46, v15, a3, v25, v26);
    if (v4)
    {
      v29 = v41;
      sub_1C6D0B65C(v15, v41, "Xavier finished scoring recipes for request ID %{public}@ in %.0f milliseconds", 78);
      (*(v44 + 8))(v29, v45);
      (*(v42 + 8))(v15, v43);
      return __swift_destroy_boxed_opaque_existential_1(v49);
    }

    else
    {
      *&v47 = v19;
      MEMORY[0x1EEE9AC00](v27, v28);
      *(&v41 - 4) = a3;
      *(&v41 - 3) = v31;
      *(&v41 - 2) = v15;
      v32 = sub_1C6D79820();
      v33 = sub_1C6D790C0();
      WitnessTable = swift_getWitnessTable();
      v36 = sub_1C6D04140(sub_1C6D1AF5C, (&v41 - 6), v32, v33, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v35);

      *&v47 = v36;
      MEMORY[0x1EEE9AC00](v37, v38);
      *(&v41 - 2) = a3;
      sub_1C6D79820();
      swift_getWitnessTable();
      v39 = sub_1C6D796C0();

      v40 = v41;
      sub_1C6D0B65C(v15, v41, "Xavier finished scoring recipes for request ID %{public}@ in %.0f milliseconds", 78);
      (*(v44 + 8))(v40, v45);
      (*(v42 + 8))(v15, v43);
      __swift_destroy_boxed_opaque_existential_1(v49);
      return v39;
    }
  }

  else
  {
    sub_1C6D1BEDC(&v47, sub_1C6D1AEF4);
    sub_1C6D790C0();
    return sub_1C6D797E0();
  }
}

unint64_t sub_1C6D0B65C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v20 = a4;
  v5 = sub_1C6D78EB0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDCEA6A8;
  v11 = sub_1C6D79AC0();
  sub_1C6B1D314(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6D7EB10;
  v13 = sub_1C6D75F60();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1C6B2064C();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_1C6D78EA0();
  v16 = sub_1C6D78E90();
  (*(v6 + 8))(v9, v5);
  result = sub_1C6D78E90();
  if (v16 < result)
  {
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E6438];
    *(v12 + 96) = MEMORY[0x1E69E63B0];
    *(v12 + 104) = v18;
    *(v12 + 72) = (v16 - result) / 1000000.0;
    sub_1C6D78D30(a3, v20, 2, &dword_1C6B09000, v10, v11, v12);
  }

  return result;
}

void sub_1C6D0B848(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  v5 = [a1 identifier];
  v6 = sub_1C6D795A0();
  v8 = v7;

  if (*(a2 + 16))
  {
    v9 = sub_1C6B5DEA8(v6, v8);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * v9);
      [v4 setTabiScore_];
      [v4 setAgedPersonalizationScore_];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDCEA6A8;
  v13 = sub_1C6D79AC0();
  sub_1C6B1D314(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C6D7EB10;
  v15 = [a1 identifier];
  v16 = sub_1C6D795A0();
  v18 = v17;

  v19 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1C6B2064C();
  *(v14 + 64) = v20;
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v21 = sub_1C6D75F60();
  *(v14 + 96) = v19;
  *(v14 + 104) = v20;
  *(v14 + 72) = v21;
  *(v14 + 80) = v22;
  sub_1C6D78D30("Unable to find score for recipe %{public}@, request ID %{public}@", 65, 2, &dword_1C6B09000, v25, v13, v14);

LABEL_8:
  v23 = v4;
  [a1 setScoreProfile_];
  sub_1C6B0C69C(0, &qword_1EDCDF8F0, 0x1E69B5580);
  v24 = a1;
  sub_1C6D790A0();
}

void sub_1C6D0BA9C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  v7 = [v5 identifier];
  v8 = sub_1C6D795A0();
  v10 = v9;

  if (*(a2 + 16))
  {
    v11 = sub_1C6B5DEA8(v8, v10);
    v13 = v12;

    if (v13)
    {
      v14 = *(*(a2 + 56) + 8 * v11);
      [v6 setTabiScore_];
      [v6 setAgedPersonalizationScore_];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDCEA6A8;
  v15 = sub_1C6D79AC0();
  sub_1C6B1D314(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C6D7EB10;
  v17 = [v5 identifier];
  v18 = sub_1C6D795A0();
  v20 = v19;

  v21 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v22 = sub_1C6B2064C();
  *(v16 + 64) = v22;
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v23 = sub_1C6D75F60();
  *(v16 + 96) = v21;
  *(v16 + 104) = v22;
  *(v16 + 72) = v23;
  *(v16 + 80) = v24;
  sub_1C6D78D30("Unable to find score for recipe %{public}@, request ID %{public}@", 65, 2, &dword_1C6B09000, v26, v15, v16);

LABEL_8:
  v25 = v6;
  [v5 setScoreProfile_];
  swift_unknownObjectRetain();
  sub_1C6D790A0();
}

void *XavierScoringService.score(tags:)(void *a1)
{
  v2 = v1;
  v4 = sub_1C6D76B00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D79300();
  v10 = *(v9 - 8);
  v106 = v9;
  v107 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  *&v103 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v93 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v104 = &v93 - v19;
  v20 = a1[2];
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = sub_1C6D0C798(v1, a1);
  if (v21)
  {
    v22 = v21;
    if (*(v21 + 16))
    {
      v105 = v107 + 32;
      v23 = a1 + 5;
      a1 = MEMORY[0x1E69E7CC0];
      v103 = xmmword_1C6D7E630;
      do
      {
        v25 = *(v23 - 1);
        v26 = *v23;
        v27 = *(v22 + 16);

        if (v27 && (sub_1C6B5DEA8(v25, v26), (v28 & 1) != 0))
        {

          sub_1C6D792E0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_1C6B6636C(0, a1[2] + 1, 1, a1);
          }

          v30 = a1[2];
          v29 = a1[3];
          v31 = v30 + 1;
          if (v30 >= v29 >> 1)
          {
            a1 = sub_1C6B6636C((v29 > 1), v30 + 1, 1, a1);
          }

          v24 = v104;
        }

        else
        {
          if (qword_1EDCE2538 != -1)
          {
            swift_once();
          }

          v32 = qword_1EDCE2540;
          v33 = sub_1C6D79AA0();
          sub_1C6B1D314(0);
          v34 = swift_allocObject();
          *(v34 + 16) = v103;
          *(v34 + 56) = MEMORY[0x1E69E6158];
          *(v34 + 64) = sub_1C6B2064C();
          *(v34 + 32) = v25;
          *(v34 + 40) = v26;

          sub_1C6D78D30("Missing personalization score from tabi scoring for tag %{public}@", 66, 2, &dword_1C6B09000, v32, v33, v34);

          sub_1C6D792E0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_1C6B6636C(0, a1[2] + 1, 1, a1);
          }

          v30 = a1[2];
          v35 = a1[3];
          v31 = v30 + 1;
          if (v30 >= v35 >> 1)
          {
            a1 = sub_1C6B6636C((v35 > 1), v30 + 1, 1, a1);
          }

          v24 = v16;
        }

        a1[2] = v31;
        (*(v107 + 32))(a1 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v30, v24, v106);
        v23 += 2;
        --v20;
      }

      while (v20);
LABEL_57:

      return a1;
    }
  }

  v105 = v2;
  v102 = v8;
  v97 = v5;
  v98 = v4;
  if (qword_1EDCE2538 != -1)
  {
    goto LABEL_62;
  }

LABEL_23:
  v36 = qword_1EDCE2540;
  v37 = sub_1C6D79AC0();
  sub_1C6B1D314(0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C6D7EB10;
  v39 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  v40 = v105;
  swift_beginAccess();
  v100 = v39;

  sub_1C6D78230();

  v41 = v108;
  v42 = [v108 treatmentID];

  v108 = v42;
  v43 = sub_1C6D7A0E0();
  v45 = v44;
  v46 = MEMORY[0x1E69E6158];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v47 = sub_1C6B2064C();
  *(v38 + 64) = v47;
  *(v38 + 32) = v43;
  *(v38 + 40) = v45;
  v108 = 0;
  v109 = 0xE000000000000000;
  v99 = *(v40 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore);
  [v99 decayRate];
  sub_1C6D79910();
  v48 = v108;
  v49 = v109;
  *(v38 + 96) = v46;
  *(v38 + 104) = v47;
  *(v38 + 72) = v48;
  *(v38 + 80) = v49;
  sub_1C6D78D30("Xavier scoring tags using config %{public}@ with default decay factor %{public}@", 80, 2, &dword_1C6B09000, v36, v37, v38);
  v50 = v40;

  v51 = 0;
  v52 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_translationProvider;
  v53 = a1 + 5;
  v104 = MEMORY[0x1E69E7CC8];
  v101 = a1;
  v96 = a1 + 5;
  while (2)
  {
    v54 = &v53[2 * v51];
    a1 = v51;
    while (1)
    {
      if (a1 >= v20)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_23;
      }

      v51 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_60;
      }

      v55 = *(v50 + v52);
      if (v55)
      {
        break;
      }

LABEL_25:
      a1 = (a1 + 1);
      v54 += 2;
      if (v51 == v20)
      {
        goto LABEL_42;
      }
    }

    v56 = *(v54 - 1);
    v57 = *v54;

    v58 = sub_1C6D79570();
    v59 = [v55 topicTranslationForTagID_];

    if (!v59)
    {

      v50 = v105;
      goto LABEL_25;
    }

    v60 = [v59 tagID];
    v94 = sub_1C6D795A0();
    v95 = v61;

    v62 = v104;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v62;
    v65 = sub_1C6B5DEA8(v56, v57);
    v66 = *(v62 + 2);
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (!__OFADD__(v66, v67))
    {
      if (*(v62 + 3) >= v68)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v80 = v64;
          sub_1C6B72F08();
          LOBYTE(v64) = v80;
        }
      }

      else
      {
        LODWORD(v104) = v64;
        sub_1C6B6EDEC(v68, isUniquelyReferenced_nonNull_native);
        v69 = sub_1C6B5DEA8(v56, v57);
        v70 = v64 & 1;
        LOBYTE(v64) = v104;
        if ((v104 & 1) != v70)
        {
          goto LABEL_66;
        }

        v65 = v69;
      }

      v71 = v108;
      v104 = v108;
      if (v64)
      {
        v72 = (*(v108 + 7) + 16 * v65);
        v73 = v95;
        *v72 = v94;
        v72[1] = v73;
      }

      else
      {
        *&v108[8 * (v65 >> 6) + 64] |= 1 << v65;
        v74 = (v71[6] + 16 * v65);
        *v74 = v56;
        v74[1] = v57;
        v75 = (v71[7] + 16 * v65);
        v76 = v95;
        *v75 = v94;
        v75[1] = v76;

        v77 = v71[2];
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_64;
        }

        v71[2] = v79;
      }

      v50 = v105;
      v53 = v96;
      if (v51 == v20)
      {
LABEL_42:

        sub_1C6D78230();

        v81 = v108;
        [v108 baselineImpressionPrior];

        sub_1C6D78230();

        v82 = v108;
        v83 = [v108 defaultScoringConfig];

        if (!v83)
        {
          goto LABEL_65;
        }

        [v83 baselineRatePrior];

        sub_1C6D76AF0();
        [v99 decayRate];
        v108 = *(v50 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext);
        sub_1C6B14DC0(0);
        sub_1C6D1C040(&unk_1EDCEA820, 255, sub_1C6B14DC0, MEMORY[0x1E69E3290]);

        v84 = sub_1C6D76420();

        v85 = 1 << *(v84 + 32);
        v86 = -1;
        if (v85 < 64)
        {
          v86 = ~(-1 << v85);
        }

        v20 = v86 & *(v84 + 64);
        v87 = (v85 + 63) >> 6;

        v88 = 0;
        a1 = MEMORY[0x1E69E7CC0];
        if (v20)
        {
          goto LABEL_50;
        }

        while (1)
        {
          v89 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            goto LABEL_61;
          }

          if (v89 >= v87)
          {

            (*(v97 + 8))(v102, v98);
            goto LABEL_57;
          }

          v20 = *(v84 + 64 + 8 * v89);
          ++v88;
          if (v20)
          {
            v88 = v89;
            do
            {
LABEL_50:
              swift_bridgeObjectRetain_n();
              sub_1C6D792E0();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a1 = sub_1C6B6636C(0, a1[2] + 1, 1, a1);
              }

              v91 = a1[2];
              v90 = a1[3];
              if (v91 >= v90 >> 1)
              {
                a1 = sub_1C6B6636C((v90 > 1), v91 + 1, 1, a1);
              }

              v20 &= v20 - 1;

              a1[2] = v91 + 1;
              (*(v107 + 32))(a1 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v91, v103, v106);
            }

            while (v20);
          }
        }
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6D0C798(uint64_t a1, uint64_t a2)
{
  sub_1C6B15028(a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService, &v25, sub_1C6D1A758);
  if (v26)
  {
    sub_1C6B15E34(&v25, v27);
    v4 = (a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager);
    v5 = *(a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 24);
    v6 = *(a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager), v5);
    (*(v6 + 8))(v23, v5, v6);
    v7 = v24;
    v8 = v24;
    sub_1C6B11190(v23);
    if (v7)
    {

      v9 = v4[3];
      v10 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v9);
      (*(v10 + 8))(v21, v9, v10);
      sub_1C6B11190(v21);
      if (v22 == 1)
      {
        v11 = v28;
        v12 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v13 = (*(v12 + 8))(a2, v11, v12);
        __swift_destroy_boxed_opaque_existential_1(v27);
        return v13;
      }

      if (qword_1EDCE2538 != -1)
      {
        swift_once();
      }

      v19 = qword_1EDCE2540;
      v20 = sub_1C6D79AC0();
      sub_1C6D78D30("Tag scoring with tabi scoring disabled", 38, 2, &dword_1C6B09000, v19, v20, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      if (qword_1EDCE2538 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDCE2540;
      v18 = sub_1C6D79AC0();
      sub_1C6D78D30("Tabi disabled", 13, 2, &dword_1C6B09000, v17, v18, MEMORY[0x1E69E7CC0]);
    }

    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_1C6D1BEDC(&v25, sub_1C6D1A758);
    if (qword_1EDCE2538 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDCE2540;
    v16 = sub_1C6D79AC0();
    sub_1C6D78D30("Tabi scoring service unavailable", 32, 2, &dword_1C6B09000, v15, v16, MEMORY[0x1E69E7CC0]);
  }

  return 0;
}

void sub_1C6D0CADC(void *a2@<X8>)
{
  sub_1C6D790C0();
  v3 = sub_1C6D79080();
  [v3 sortingScore];
  v5 = v4;

  *a2 = v5;
}

double XavierScoringService.baselineScore.getter()
{
  sub_1C6D76310();
  [*(v0 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore) decayRate];
  [v4 personalizationValueWithBaseline:0 decayRate:?];
  v2 = v1;

  return v2;
}

uint64_t XavierScoringService.prepareForUse()()
{
  sub_1C6B1B44C(0, &qword_1EDCE7A70, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6D0CC44(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C6C40F6C;
  *(v5 + 24) = v4;

  XavierScoringService.prepareForUse(completionHandler:)(sub_1C6BF507C, v5);
}

uint64_t XavierScoringService.prepareForUse(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = dispatch_group_create();
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDCEA6A8;
  v5 = sub_1C6D79AC0();
  sub_1C6D78D30("Xavier preparing for use", 24, 2, &dword_1C6B09000, v4, v5, MEMORY[0x1E69E7CC0]);
  v30 = v2;
  sub_1C6D76300();
  v6 = aBlock[6];
  v7 = sub_1C6D79AC0();
  sub_1C6B1D314(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7E630;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1C6B2064C();
  *(v8 + 64) = v9;
  *(v8 + 32) = 0x7461676572676761;
  *(v8 + 40) = 0xEA00000000007365;
  sub_1C6D78D30("Xavier preparing %{public}@", 27, 2, &dword_1C6B09000, v4, v7, v8);

  dispatch_group_enter(v3);
  v10 = swift_allocObject();
  v10[2] = 0x7461676572676761;
  v10[3] = 0xEA00000000007365;
  v10[4] = v3;
  aBlock[4] = sub_1C6D1B2CC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6B20B90;
  aBlock[3] = &block_descriptor_12;
  v11 = _Block_copy(aBlock);
  v12 = v3;

  [v6 prepareAggregatesForUseWithCompletionHandler_];
  _Block_release(v11);

  v14 = *(v30 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider + 24);
  v13 = *(v30 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider + 32);
  __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider), v14);
  v15 = sub_1C6D79AC0();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C6D7E630;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = v9;
  strcpy((v16 + 32), "user context");
  *(v16 + 45) = 0;
  *(v16 + 46) = -5120;
  sub_1C6D78D30("Xavier preparing %{public}@", 27, 2, &dword_1C6B09000, v4, v15, v16);

  dispatch_group_enter(v12);
  v17 = swift_allocObject();
  strcpy((v17 + 16), "user context");
  *(v17 + 29) = 0;
  *(v17 + 30) = -5120;
  *(v17 + 32) = v12;
  v18 = *(v13 + 16);
  v19 = v12;
  v18(sub_1C6D1C104, v17, v14, v13);

  v20 = *(v30 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 24);
  v21 = *(v30 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 32);
  __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager), v20);
  (*(v21 + 24))(1, v20, v21);
  v22 = sub_1C6D79AC0();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C6D7E630;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = v9;
  strcpy((v23 + 32), "configuration");
  *(v23 + 46) = -4864;
  sub_1C6D78D30("Xavier preparing %{public}@", 27, 2, &dword_1C6B09000, v4, v22, v23);

  dispatch_group_enter(v19);
  v24 = swift_allocObject();
  strcpy((v24 + 16), "configuration");
  *(v24 + 30) = -4864;
  *(v24 + 32) = v19;
  v25 = v19;
  v26 = sub_1C6D78210();
  sub_1C6D78310();

  v27 = FCDispatchQueueForQualityOfService();
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;

  sub_1C6D79AD0();
}

id XavierScoringService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XavierScoringService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C6D0D4B8()
{
  v1 = *v0;
  sub_1C6D76310();
  [*(v1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore) decayRate];
  [v5 personalizationValueWithBaseline:0 decayRate:?];
  v3 = v2;

  return v3;
}

uint64_t sub_1C6D0D540()
{
  sub_1C6B1B44C(0, &qword_1EDCE7A70, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6D0D5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return sub_1C6D77110();
}

uint64_t sub_1C6D0D620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454E0](a1, a2, ObjectType, a6);
}

uint64_t sub_1C6D0D688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454F0](a1, a2, a3, ObjectType, a7);
}

uint64_t sub_1C6D0D6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454D8](a1, a2, a3, a4, ObjectType, a8);
}

uint64_t ScoringServiceType.score(items:configurationSet:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C6D79170();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D1B320(0);
  v14 = *(v13 + 48);
  FCFeedPersonalizationConfigurationSet.headlineContext.getter(a2, v12);
  v15 = sub_1C6D791A0();
  v16 = MEMORY[0x1E69B5B98];
  if (a2 != 3)
  {
    v16 = MEMORY[0x1E69B5BA0];
  }

  (*(*(v15 - 8) + 104))(&v12[v14], *v16, v15);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B5A08], v8);
  v17 = (*(a4 + 8))(a1, v12, a3, a4);
  (*(v9 + 8))(v12, v8);
  return v17;
}

id XavierScoringService.sort(items:options:configurationSet:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D79170();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6D1B320(0);
  v12 = *(v11 + 48);
  FCFeedPersonalizationConfigurationSet.headlineContext.getter(a3, v10);
  v13 = sub_1C6D791A0();
  v14 = MEMORY[0x1E69B5B98];
  if (a3 != 3)
  {
    v14 = MEMORY[0x1E69B5BA0];
  }

  (*(*(v13 - 8) + 104))(&v10[v12], *v14, v13);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B5A08], v6);
  XavierScoringService.score(items:context:)(a1, v10);
  (*(v7 + 8))(v10, v6);
  v19 = a2;
  sub_1C6D79040();
  v15 = sub_1C6D797A0();

  v16 = sub_1C6B6DEB4(v15);

  return v16;
}

uint64_t sub_1C6D0DAF0(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
  }

  v3 = a1;

  sub_1C6D09568(&v3, sub_1C6D15768, sub_1C6D131CC);
  return v3;
}

uint64_t XavierScoringService.fetchAggregateMap(for:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v43 = a3;
  v44 = a2;
  sub_1C6BAB388(0);
  v53 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v52 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  swift_beginAccess();
  v54 = v3;

  sub_1C6D78230();

  v10 = v58;
  v11 = [v9 featuresFromPersonalizingItem:a1 personalizationTreatment:v58];

  v12 = sub_1C6B0C69C(0, &qword_1EDCDF860, 0x1E69B5450);
  v13 = sub_1C6D79780();

  sub_1C6B1B44C(0, &qword_1EDCEA420, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6D839E0;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69B51E0]) init];
  v58 = v13;
  sub_1C6B39044(inited);
  v15 = v58;
  if (!(v58 >> 62))
  {
    v55 = v58 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_35:
    v45 = MEMORY[0x1E69E7CC8];
LABEL_36:

    v44(v45);
  }

LABEL_34:
  v55 = v15 & 0xFFFFFFFFFFFFFF8;
  v16 = sub_1C6D79E90();
  if (!v16)
  {
    goto LABEL_35;
  }

LABEL_3:
  v42 = v12;
  v17 = 0;
  v50 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext;
  v51 = v15 & 0xC000000000000001;
  v49 = *MEMORY[0x1E69E3228];
  v47 = (v6 + 8);
  v48 = (v6 + 104);
  v45 = MEMORY[0x1E69E7CC8];
  v46 = v15;
  while (2)
  {
    v6 = v17;
    while (1)
    {
      if (v51)
      {
        v18 = MEMORY[0x1CCA56240](v6, v15);
      }

      else
      {
        if (v6 >= *(v55 + 16))
        {
          goto LABEL_33;
        }

        v18 = *(v15 + 8 * v6 + 32);
      }

      v19 = v18;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v56 = v6 + 1;
      v57 = *(v54 + v50);

      v20 = [v19 personalizationIdentifier];
      sub_1C6D795A0();

      v22 = v52;
      v21 = v53;
      (*v48)(v52, v49, v53);
      sub_1C6B14DC0(0);
      sub_1C6D1C040(&qword_1EC1D96B8, 255, sub_1C6B14DC0, MEMORY[0x1E69E3298]);
      sub_1C6D761E0();

      (*v47)(v22, v21);

      v12 = v58;
      if (v58)
      {
        break;
      }

      ++v6;
      v15 = v46;
      if (v56 == v16)
      {
        goto LABEL_36;
      }
    }

    if ((v45 & 0xC000000000000001) != 0)
    {
      if (v45 < 0)
      {
        v23 = v45;
      }

      else
      {
        v23 = v45 & 0xFFFFFFFFFFFFFF8;
      }

      v24 = v58;
      v25 = sub_1C6D79E90();
      if (__OFADD__(v25, 1))
      {
        goto LABEL_38;
      }

      v26 = sub_1C6D11CD4(v23, v25 + 1);
    }

    else
    {
      v27 = v58;
      v26 = v45;
    }

    v28 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v28;
    v30 = sub_1C6B650DC(v19);
    v32 = v28[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      break;
    }

    v36 = v31;
    if (v28[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = v30;
        sub_1C6B75060();
        v30 = v40;
      }
    }

    else
    {
      sub_1C6B72614(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_1C6B650DC(v19);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_40;
      }
    }

    v15 = v46;
    v45 = v58;
    if (v36)
    {
      *(*(v58 + 56) + 8 * v30) = v12;

      swift_unknownObjectRelease();
      goto LABEL_30;
    }

    *(v58 + 8 * (v30 >> 6) + 64) |= 1 << v30;
    *(*(v45 + 48) + 8 * v30) = v19;
    *(*(v45 + 56) + 8 * v30) = v12;

    v38 = *(v45 + 16);
    v34 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (!v34)
    {
      *(v45 + 16) = v39;
LABEL_30:
      v17 = v56;
      if (v56 != v16)
      {
        continue;
      }

      goto LABEL_36;
    }

    break;
  }

  __break(1u);
LABEL_40:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

void XavierScoringService.limitItems(byMinimumItemQuality:)(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1C6D1B398(0);
  v238 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v202 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v202 - v9;
  sub_1C6D1B400(0);
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v227 = v202 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D1B498(0, v14);
  v213 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v236 = v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v241 = v202 - v21;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v242 = v202 - v25;
  sub_1C6D1B530(0, v24);
  v215 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v223 = v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v206 = v202 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v224 = (v202 - v34);
  v232 = sub_1C6D75FF0();
  v218 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232, v35);
  v209 = v202 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v208 = v202 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v226 = v202 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v225 = v202 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v207 = v202 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v228 = v202 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v216 = v202 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v210 = v202 - v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  v219 = v202 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = v202 - v63;
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = v202 - v67;
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = v202 - v71;
  v73 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider + 24);
  v74 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider), v73);
  (*(v74 + 8))(v245, 0, v73, v74);
  v229 = v72;
  sub_1C6D75FE0();
  v231 = v68;
  sub_1C6D75FE0();
  v220 = v64;
  sub_1C6D75FE0();
  v214 = a1;
  if (a1 >> 62)
  {
LABEL_58:
    v75 = sub_1C6D79E90();
  }

  else
  {
    v75 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v237 = v12;
  v76 = v236;
  v77 = v238;
  v239 = v6;
  v240 = v10;
  if (v75)
  {
    v78 = 0;
    v235 = (v214 & 0xC000000000000001);
    v234 = v214 & 0xFFFFFFFFFFFFFF8;
    v233 = v214 + 32;
    v79 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    v230 = v75;
    do
    {
      if (v235)
      {
        v80 = MEMORY[0x1CCA56240](v78, v214);
        v12 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v78 >= *(v234 + 16))
        {
          __break(1u);
          goto LABEL_58;
        }

        v80 = *(v233 + 8 * v78);
        swift_unknownObjectRetain();
        v12 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          goto LABEL_27;
        }
      }

      if ([v80 respondsToSelector_])
      {
        [v80 v79[125]];
      }

      sub_1C6D75FC0();
      v81 = [v80 publisherID];
      if (v81)
      {
        v82 = v77;
        v83 = v81;
        v84 = sub_1C6D795A0();
        v86 = v85;

        __swift_project_boxed_opaque_existential_1(v245, v245[3]);
        v87 = sub_1C6D76070();
        if (*(v87 + 16) && (sub_1C6D7A260(), sub_1C6D79610(), v88 = sub_1C6D7A2B0(), v89 = -1 << *(v87 + 32), v90 = v88 & ~v89, ((*(v87 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) != 0))
        {
          v91 = ~v89;
          while (1)
          {
            v92 = (*(v87 + 48) + 16 * v90);
            v93 = *v92 == v84 && v92[1] == v86;
            if (v93 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v90 = (v90 + 1) & v91;
            if (((*(v87 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          sub_1C6D75FC0();
        }

        else
        {
LABEL_5:
        }

        v77 = v82;
        v6 = v239;
        v10 = v240;
        v76 = v236;
        v75 = v230;
        v79 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
      }

      swift_unknownObjectRelease();
      v78 = v12;
    }

    while (v12 != v75);
  }

  sub_1C6D75FE0();
  if (qword_1EDCE6198 != -1)
  {
    swift_once();
  }

  v94 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  swift_beginAccess();

  sub_1C6D78230();

  v95 = v244;
  [v244 lowQualityFilterShouldIsolateEvergreenItems];

  v97 = sub_1C6D1C040(qword_1EDCEA618, v96, type metadata accessor for XavierScoringService, &protocol conformance descriptor for XavierScoringService);
  v98 = sub_1C6D77130();
  v99 = sub_1C6D75FA0();
  v100 = v99;
  v212 = v94;
  v211 = v97;
  if ((v98 & 1) == 0)
  {
    v168 = sub_1C6D75FA0();
    if (!__OFADD__(v100, v168))
    {
      v169 = (v100 + v168);

      sub_1C6D78230();

      v170 = v244;
      [v244 lowQualityContentThreshold];
      v172 = v171;

      v173 = v172 * v169;
      if (COERCE__INT64(fabs(v172 * v169)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v173 > -9.22337204e18)
        {
          if (v173 < 9.22337204e18)
          {
            v174 = v173;
            sub_1C6D75FB0();
            v175 = v223;
            sub_1C6D0FF78(v174, v223);
            v241 = sub_1C6D1C040(&unk_1EDCE6318, 255, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
            sub_1C6D79CA0();
            sub_1C6B15028(v175, v76, sub_1C6D1B530);
            v176 = *(v213 + 36);
            v177 = sub_1C6D75F90();
            v178 = *(v177 - 8);
            v179 = *(v178 + 16);
            v235 = (v178 + 16);
            v234 = v179;
            v179(&v176[v76], v175, v177);
            sub_1C6D1BEDC(v175, sub_1C6D1B530);
            v180 = v215;
            v181 = *(v215 + 36);
            v233 = sub_1C6D1C040(&unk_1EDCE6350, 255, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
            v182 = sub_1C6D79560();
            v183 = v227;
            if ((v182 & 1) == 0)
            {
              v230 = *(v180 + 40);
              v228 = v178 + 32;
              v224 = (v178 + 8);
              v242 = v181;
              v225 = v176;
              v184 = (v178 + 32);
              do
              {
                v185 = v240;
                v186 = v234;
                (v234)(v240, v76, v177);
                v187 = v239;
                v188 = v238;
                v186(v185 + *(v238 + 48), v76 + v242, v177);
                sub_1C6B15028(v185, v187, sub_1C6D1B398);
                v189 = *(v188 + 48);
                v190 = *v184;
                (*v184)(v183, v187, v177);
                v191 = *v224;
                (*v224)(v187 + v189, v177);
                sub_1C6D1C088(v185, v187, sub_1C6D1B398);
                v190(v183 + *(v237 + 36), v187 + *(v188 + 48), v177);
                v191(v187, v177);
                v76 = v236;
                sub_1C6D1C040(&unk_1EDCE6328, 255, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
                sub_1C6D799D0();
                sub_1C6D1BEDC(v183, sub_1C6D1B400);
                v192 = sub_1C6D79A50();
                v194 = *v193;
                v192(&v244, 0);
                sub_1C6D79A10();
                v243 = v194;
                sub_1C6D79C90();
              }

              while ((sub_1C6D79560() & 1) == 0);
            }

            sub_1C6D1BEDC(v76, sub_1C6D1B498);
            v195 = v218;
            v166 = v218[1];
            v196 = v219;
            v167 = v232;
            v166(v219, v232);
            (v195[4])(v196, v226, v167);
            goto LABEL_52;
          }

          goto LABEL_66;
        }

        goto LABEL_64;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v101 = v99;

  sub_1C6D78230();

  v102 = v244;
  [v244 lowQualityContentThreshold];
  v104 = v103;

  v105 = v104 * v101;
  if (COERCE__INT64(fabs(v104 * v101)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v105 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v105 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v106 = v105;
  v107 = v218[2];
  v204 = v218 + 2;
  v203 = v107;
  v107(v216, v229, v232);
  v108 = v224;
  sub_1C6D0FF78(v106, v224);
  v234 = sub_1C6D1C040(&unk_1EDCE6318, 255, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_1C6D79CA0();
  v109 = v242;
  sub_1C6B15028(v108, v242, sub_1C6D1B530);
  v110 = *(v213 + 36);
  v111 = sub_1C6D75F90();
  v112 = v6;
  v113 = v238;
  v114 = v10;
  v115 = v111;
  v205 = *(v111 - 8);
  v116 = *(v205 + 16);
  v236 = (v205 + 16);
  v235 = v116;
  v116(&v110[v109], v108, v111);
  sub_1C6D1BEDC(v108, sub_1C6D1B530);
  v117 = *(v215 + 36);
  v118 = sub_1C6D1C040(&unk_1EDCE6350, 255, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
  v226 = v110;
  v230 = v115;
  v233 = v118;
  if ((sub_1C6D79560() & 1) == 0)
  {
    v119 = v117;
    v223 = *(v215 + 40);
    v222 = (v205 + 32);
    v221 = (v205 + 8);
    v224 = v117;
    v120 = v230;
    v121 = (v205 + 32);
    do
    {
      v122 = v235;
      v235(v114, v109, v120);
      v122(v114 + *(v113 + 48), &v119[v109], v120);
      sub_1C6B15028(v114, v112, sub_1C6D1B398);
      v123 = *(v113 + 48);
      v124 = *v121;
      v125 = v227;
      (*v121)(v227, v112, v120);
      v126 = *v221;
      (*v221)(v112 + v123, v120);
      sub_1C6D1C088(v114, v112, sub_1C6D1B398);
      v124((v125 + *(v237 + 36)), v112 + *(v113 + 48), v120);
      v126(v112, v120);
      sub_1C6D1C040(&unk_1EDCE6328, 255, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
      sub_1C6D799D0();
      sub_1C6D1BEDC(v125, sub_1C6D1B400);
      v127 = sub_1C6D79A50();
      v129 = *v128;
      v127(&v244, 0);
      sub_1C6D79A10();
      v243 = v129;
      v109 = v242;
      v113 = v238;
      v119 = v224;
      v112 = v239;
      sub_1C6D79C90();
    }

    while ((sub_1C6D79560() & 1) == 0);
  }

  v130 = v235;
  sub_1C6D1BEDC(v109, sub_1C6D1B498);
  v131 = v218;
  v132 = (v218 + 4);
  v133 = v218[4];
  v134 = v210;
  v135 = v232;
  v133(v210, v228, v232);
  sub_1C6D75FD0();
  v137 = v131[1];
  v136 = v131 + 1;
  v222 = v137;
  v137(v134, v135);
  v138 = sub_1C6D75FA0();

  sub_1C6D78230();

  v139 = v244;
  [v244 lowQualityContentThreshold];
  v141 = v140;

  v142 = v141 * v138;
  if (COERCE__INT64(fabs(v141 * v138)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_65;
  }

  if (v142 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v142 >= 9.22337204e18)
  {
LABEL_68:
    __break(1u);
    return;
  }

  v202[1] = v136;
  v210 = v133;
  v221 = v132;
  v143 = v142;
  v203(v216, v231, v135);
  v144 = v206;
  sub_1C6D0FF78(v143, v206);
  sub_1C6D79CA0();
  v145 = v241;
  sub_1C6B15028(v144, v241, sub_1C6D1B530);
  v146 = *(v213 + 36);
  v130(v145 + v146, v144, v230);
  sub_1C6D1BEDC(v144, sub_1C6D1B530);
  v147 = v215;
  v242 = *(v215 + 36);
  v148 = sub_1C6D79560();
  v149 = v239;
  v150 = v240;
  v151 = v227;
  if ((v148 & 1) == 0)
  {
    v228 = *(v147 + 40);
    v226 = (v205 + 32);
    v224 = (v205 + 8);
    v223 = v146;
    v152 = (v205 + 8);
    do
    {
      v153 = v230;
      v154 = v235;
      v235(v150, v145, v230);
      v155 = v135;
      v156 = v238;
      v154(&v240[*(v238 + 48)], v145 + v242, v153);
      sub_1C6B15028(v240, v149, sub_1C6D1B398);
      v157 = *(v156 + 48);
      v158 = *v226;
      (*v226)(v151, v149, v153);
      v159 = *v152;
      (*v152)(v149 + v157, v153);
      sub_1C6D1C088(v240, v149, sub_1C6D1B398);
      v160 = *(v156 + 48);
      v135 = v155;
      v158(v151 + *(v237 + 36), v149 + v160, v153);
      v159(v149, v153);
      sub_1C6D1C040(&unk_1EDCE6328, 255, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
      sub_1C6D799D0();
      sub_1C6D1BEDC(v151, sub_1C6D1B400);
      v161 = sub_1C6D79A50();
      v163 = *v162;
      v161(&v244, 0);
      v145 = v241;
      sub_1C6D79A10();
      v243 = v163;
      sub_1C6D79C90();
      v164 = sub_1C6D79560();
      v150 = v240;
    }

    while ((v164 & 1) == 0);
  }

  sub_1C6D1BEDC(v145, sub_1C6D1B498);
  v165 = v207;
  (v210)(v207, v225, v135);
  sub_1C6D75FD0();
  v166 = v222;
  v222(v165, v135);
  v167 = v135;
LABEL_52:
  v197 = v214;
  if (qword_1EDCE6180 != -1)
  {
    swift_once();
  }

  sub_1C6D78230();

  v198 = v244;
  [v244 lowQualityFilterShouldPreserveItemsFromSubscribedChannels];

  if (sub_1C6D77130())
  {
    v199 = v218[2];
    v199(v208, v219, v167);
    v199(v209, v220, v167);
    sub_1C6D1C040(&unk_1EDCE6318, 255, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    v200 = v216;
    sub_1C6D79C80();
    sub_1C6D79C70();
    v166(v200, v167);
  }

  v244 = v197;
  sub_1C6B186F8(0);
  sub_1C6D1C040(&qword_1EDCDF9A8, 255, sub_1C6B186F8, MEMORY[0x1E69E6318]);
  sub_1C6D1C040(&unk_1EDCDF990, 255, sub_1C6B186F8, MEMORY[0x1E69E6348]);

  v201 = v219;
  sub_1C6D79A60();
  v166(v201, v167);
  v166(v220, v167);
  v166(v231, v167);
  v166(v229, v167);
  __swift_destroy_boxed_opaque_existential_1(v245);
}

void sub_1C6D0FF78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D1B398(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v58 = &v52 - v11;
  sub_1C6D1B400(0);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D1BE00(0, &unk_1EDCE6340, MEMORY[0x1E6969B18]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v60 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v52 - v21;
  v23 = sub_1C6D75F90();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v52 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v61 = &v52 - v34;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v54 = v15;
    v55 = v6;
    v56 = a2;
    v35 = sub_1C6D75FF0();
    v36 = MEMORY[0x1E6969B50];
    v37 = sub_1C6D1C040(&unk_1EDCE6328, 255, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    sub_1C6D79A00();
    sub_1C6D799B0();
    sub_1C6D1C040(&qword_1EDCE6338, 255, v36, MEMORY[0x1E6969B68]);
    sub_1C6D79520();
    v38 = *(v24 + 8);
    v38(v27, v23);
    v53 = v38;
    v39 = (v38)(v31, v23);
    v40 = v60;
    sub_1C6D1BD0C(v22, v60, v39);
    if ((*(v24 + 48))(v40, 1, v23) == 1)
    {
      v41 = v61;
      sub_1C6D799B0();
      sub_1C6D1A8AC(v40, &unk_1EDCE6340, MEMORY[0x1E6969B18], v42);
    }

    else
    {
      v41 = v61;
      (*(v24 + 32))(v61, v40, v23);
    }

    sub_1C6D79A00();
    sub_1C6D1C040(&unk_1EDCE6360, 255, MEMORY[0x1E6969B18], MEMORY[0x1E6969B20]);
    if (sub_1C6D79550())
    {
      v60 = v2;
      v61 = v37;
      v43 = *(v24 + 32);
      v44 = v58;
      v43(v58, v41, v23);
      v45 = v55;
      v43((v44 + *(v55 + 48)), v31, v23);
      v46 = v59;
      sub_1C6B15028(v44, v59, sub_1C6D1B398);
      v47 = *(v45 + 48);
      v48 = v54;
      v43(v54, v46, v23);
      v49 = v46 + v47;
      v50 = v53;
      v53(v49, v23);
      sub_1C6D1C088(v44, v46, sub_1C6D1B398);
      v43((v48 + *(v57 + 36)), (v46 + *(v45 + 48)), v23);
      v50(v46, v23);
      v51 = v60;
      sub_1C6D79A40();
      (*(*(v35 - 8) + 8))(v51, v35);
      sub_1C6D1BEDC(v48, sub_1C6D1B400);
      return;
    }
  }

  __break(1u);
}

void sub_1C6D105CC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDCEA6A8;
  v7 = sub_1C6D79AC0();
  sub_1C6B1D314(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7E630;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1C6B2064C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  sub_1C6D78D30("Xavier prepared %{public}@", 26, 2, &dword_1C6B09000, v6, v7, v8);

  dispatch_group_leave(a3);
}

uint64_t sub_1C6D106CC(uint64_t (*a1)(uint64_t))
{
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDCEA6A8;
  v3 = sub_1C6D79AC0();
  v4 = sub_1C6D78D30("Xavier prepared for use", 23, 2, &dword_1C6B09000, v2, v3, MEMORY[0x1E69E7CC0]);
  return a1(v4);
}

Swift::Double __swiftcall XavierScoringService.decayedPublisherDiversificationPenalty()()
{
  swift_beginAccess();

  sub_1C6D78230();

  [v1 publisherDiversificationInitialPenalty];

  sub_1C6D78230();

  [v1 publisherDiversificationPenalty];

  sub_1C6D78230();

  [v1 publisherDiversificationPenaltyHalfLife];

  sub_1C6D762E0();
  return result;
}

Swift::OpaquePointer_optional __swiftcall XavierScoringService.rankTagIDsDescending(_:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  v27 = sub_1C6D79300();
  v2 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (rawValue)
  {
    v28 = XavierScoringService.score(tags:)(rawValue);

    sub_1C6D09770(&v28);

    v6 = v28;
    v7 = v28[2];
    if (v7)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_1C6B39280(0, v7, 0);
      v8 = v28;
      v10 = *(v2 + 16);
      v9 = v2 + 16;
      v11 = *(v9 + 64);
      v23[1] = v6;
      v12 = v6 + ((v11 + 32) & ~v11);
      v24 = *(v9 + 56);
      v25 = v10;
      v26 = v9;
      v13 = (v9 - 8);
      do
      {
        v14 = v27;
        v25(v5, v12, v27);
        v15 = sub_1C6D792F0();
        v17 = v16;
        (*v13)(v5, v14);
        v28 = v8;
        v19 = v8[2];
        v18 = v8[3];
        if (v19 >= v18 >> 1)
        {
          sub_1C6B39280((v18 > 1), v19 + 1, 1);
          v8 = v28;
        }

        v8[2] = v19 + 1;
        v20 = &v8[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
        v12 += v24;
        --v7;
      }

      while (v7);
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    v22 = v8;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  result.value._rawValue = v22;
  result.is_nil = v21;
  return result;
}

Swift::OpaquePointer_optional __swiftcall XavierScoringService.scores(forTagIDs:)(Swift::OpaquePointer_optional forTagIDs)
{
  rawValue = forTagIDs.value._rawValue;
  v2 = sub_1C6D79300();
  v45 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!rawValue)
  {
    goto LABEL_29;
  }

  v6 = XavierScoringService.score(tags:)(rawValue);
  v7 = v6;
  v44 = v6[2];
  if (!v44)
  {

    v9 = MEMORY[0x1E69E7CC8];
LABEL_25:
    v38 = v9;
    goto LABEL_31;
  }

  v8 = 0;
  v43 = v6 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
  v41 = (v45 + 8);
  v42 = v45 + 16;
  v9 = MEMORY[0x1E69E7CC8];
  v40 = v6;
  while (v8 < v7[2])
  {
    (*(v45 + 16))(v5, &v43[*(v45 + 72) * v8], v2);
    v10 = sub_1C6D792F0();
    v12 = v11;
    sub_1C6D792D0();
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    if (!v14)
    {
      v26 = sub_1C6B5DEA8(v10, v12);
      v28 = v27;

      if (v28)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v9;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C6B751B8();
          v9 = v46;
        }

        sub_1C6D1231C(v26, v9);
      }

      (*v41)(v5, v2);
      goto LABEL_6;
    }

    v15 = v14;
    v16 = v2;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v9;
    v18 = sub_1C6B5DEA8(v10, v12);
    v20 = v9[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_27;
    }

    v24 = v19;
    if (v9[3] < v23)
    {
      sub_1C6B72878(v23, v17);
      v18 = sub_1C6B5DEA8(v10, v12);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_30;
      }

LABEL_17:
      v2 = v16;
      if ((v24 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (v17)
    {
      goto LABEL_17;
    }

    v33 = v18;
    sub_1C6B751B8();
    v18 = v33;
    v2 = v16;
    if ((v24 & 1) == 0)
    {
LABEL_20:
      v9 = v46;
      v46[(v18 >> 6) + 8] |= 1 << v18;
      v34 = (v9[6] + 16 * v18);
      *v34 = v10;
      v34[1] = v12;
      *(v9[7] + 8 * v18) = v15;
      (*v41)(v5, v2);
      v35 = v9[2];
      v22 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v22)
      {
        goto LABEL_28;
      }

      v9[2] = v36;
      goto LABEL_22;
    }

LABEL_18:
    v30 = v18;

    v9 = v46;
    v31 = v46[7];
    v32 = *(v31 + 8 * v30);
    *(v31 + 8 * v30) = v15;

    (*v41)(v5, v2);
LABEL_22:
    v7 = v40;
LABEL_6:
    if (v44 == ++v8)
    {

      goto LABEL_25;
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
  v38 = sub_1C6D7A1C0();
  __break(1u);
LABEL_31:
  result.value._rawValue = v38;
  result.is_nil = v37;
  return result;
}

id XavierScoringService.__allocating_init(aggregateStore:configurationManager:translationProvider:todayPrivateData:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v11 + 8))(v71, v10, v11);
  if (v72 == 1)
  {
    v12 = a1;
  }

  else
  {
    v13 = [objc_allocWithZone(type metadata accessor for EmptyPersonalizationDataGenerator()) init];
    v12 = [objc_allocWithZone(MEMORY[0x1E69B5568]) initWithGenerator_];
  }

  v48 = a1;
  if (v73 == 1)
  {
    if (qword_1EDCE2918 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDCE2920;
    *(&v69 + 1) = type metadata accessor for ComputeServiceProxyScoringService();
    v70 = &protocol witness table for ComputeServiceProxyScoringService;
    *&v68 = v14;
    v15 = v14;
  }

  else
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
  }

  v16 = type metadata accessor for ExtensionUserContextProvider();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  sub_1C6B16F28(a2, v56);
  sub_1C6B15028(&v68, v55, sub_1C6D1A758);
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v47 = v5;
  v18 = objc_allocWithZone(v5);
  v52[3] = v16;
  v52[4] = &off_1F4674958;
  v52[0] = v17;
  v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_disableArticleScoring] = 0;
  *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore] = v12;
  sub_1C6B16F28(v56, v66);
  v19 = swift_allocObject();
  sub_1C6B15E34(v66, v19 + 16);
  sub_1C6B16F28(v56, v64);
  v20 = swift_allocObject();
  sub_1C6B15E34(v64, v20 + 16);
  v62 = v12;
  sub_1C6B14DC0(0);
  swift_allocObject();
  v46 = v12;
  swift_unknownObjectRetain();

  *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext] = sub_1C6D762F0();
  sub_1C6B16F28(v56, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager]);
  v21 = v57;
  v22 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  (*(v22 + 8))(v59, v21, v22);
  v23 = v59[3];
  sub_1C6B11190(v59);
  v24 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  swift_beginAccess();
  *&v64[0] = v23;
  sub_1C6D1B5C8(0);
  swift_allocObject();
  *&v18[v24] = sub_1C6D78220();
  swift_endAccess();
  v25 = v57;
  v26 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  (*(v26 + 8))(&v60, v25, v26);
  sub_1C6B11190(&v60);
  LOBYTE(v23) = v61;
  v27 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__clientSideEngagementBoostEnabled;
  swift_beginAccess();
  LOBYTE(v64[0]) = v23;
  sub_1C6B1B44C(0, &unk_1EDCEA7A0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  *&v18[v27] = sub_1C6D78220();
  swift_endAccess();
  v28 = v57;
  v29 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  (*(v29 + 8))(&v62, v28, v29);
  sub_1C6B11190(&v62);
  LOBYTE(v23) = v63;
  v30 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__fallbackToReverseChronSorting;
  swift_beginAccess();
  LOBYTE(v64[0]) = v23;
  swift_allocObject();
  *&v18[v30] = sub_1C6D78220();
  swift_endAccess();
  v31 = v57;
  v32 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  (*(v32 + 8))(v64, v31, v32);
  v33 = v65;
  sub_1C6B11190(v64);
  v34 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__publisherDampeningConfig;
  swift_beginAccess();
  v51 = v33;
  sub_1C6D1B630(0);
  swift_allocObject();
  *&v18[v34] = sub_1C6D78220();
  swift_endAccess();
  v35 = v57;
  v36 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  (*(v36 + 8))(v66, v35, v36);
  v37 = v67;
  sub_1C6B11190(v66);
  v38 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__shadowPublisherDampeningConfig;
  swift_beginAccess();
  v50 = v37;
  swift_allocObject();
  *&v18[v38] = sub_1C6D78220();
  swift_endAccess();
  *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_translationProvider] = a3;
  sub_1C6B16F28(v52, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider]);
  sub_1C6B15028(v55, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService], sub_1C6D1A758);
  *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceCohortMembershipService] = 0;
  *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_tracker] = 0;
  sub_1C6B15028(v53, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_recipeScoringService], sub_1C6D1AEF4);
  v49.receiver = v18;
  v49.super_class = v47;
  swift_unknownObjectRetain();
  v39 = objc_msgSendSuper2(&v49, sel_init);
  v40 = v57;
  v41 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = *(v41 + 32);
  v44 = v39;

  v43(sub_1C6B3807C, v42, v40, v41);

  sub_1C6B11190(v71);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1C6D1BEDC(v53, sub_1C6D1AEF4);
  sub_1C6D1BEDC(v55, sub_1C6D1A758);
  __swift_destroy_boxed_opaque_existential_1(v52);

  __swift_destroy_boxed_opaque_existential_1(v56);
  sub_1C6D1BEDC(&v68, sub_1C6D1A758);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v44;
}

uint64_t sub_1C6D11840(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 1) == 0)
  {
    if (v1)
    {
      return result;
    }

    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if ((v1 - 1) >> 1 >= v1)
  {
    goto LABEL_7;
  }

  return result;
}

void *XavierScoringService.scoreRecipeItems(_:)(unint64_t a1)
{
  sub_1C6C74F64(0);
  v4 = v3;
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D79170();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x1E69B5CA0];
  v14 = sub_1C6D791B0();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B5A18], v8);
  v15 = sub_1C6D0ACDC(a1, v12);
  if (v1)
  {
    (*(v9 + 8))(v12, v8);
    return v8;
  }

  v45 = v7;
  v46 = v4;
  v40[1] = 0;
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  v44 = v16[2];
  if (!v44)
  {
    v8 = MEMORY[0x1E69E7CC8];
LABEL_20:

    return v8;
  }

  v17 = 0;
  v19 = v46;
  v18 = v47;
  v43 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v41 = (v47 + 8);
  v42 = v47 + 16;
  v8 = MEMORY[0x1E69E7CC8];
  v20 = v45;
  while (v17 < v16[2])
  {
    (*(v18 + 16))(v20, &v43[*(v18 + 72) * v17], v19);
    v21 = sub_1C6D79070();
    v23 = v22;
    sub_1C6D79090();
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v8;
    v28 = sub_1C6B5DEA8(v21, v23);
    v29 = v8[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_23;
    }

    v32 = v27;
    if (v8[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v46;
        if (v27)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1C6B72BD8();
        v19 = v46;
        if (v32)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_1C6B6E868(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_1C6B5DEA8(v21, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_25;
      }

      v28 = v33;
      v19 = v46;
      if (v32)
      {
LABEL_5:

        v8 = v48;
        *(v48[7] + 8 * v28) = v25;
        v20 = v45;
        (*v41)(v45, v19);
        goto LABEL_6;
      }
    }

    v8 = v48;
    v48[(v28 >> 6) + 8] |= 1 << v28;
    v35 = (v8[6] + 16 * v28);
    *v35 = v21;
    v35[1] = v23;
    *(v8[7] + 8 * v28) = v25;
    v20 = v45;
    (*v41)(v45, v19);
    v36 = v8[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_24;
    }

    v8[2] = v38;
LABEL_6:
    ++v17;
    v18 = v47;
    if (v44 == v17)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6D11CD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C6B7568C(0);
    v2 = sub_1C6D79F10();
    v19 = v2;
    sub_1C6D79E80();
    v3 = sub_1C6D79EA0();
    if (v3)
    {
      v4 = v3;
      sub_1C6B0C69C(0, &qword_1EDCDF860, 0x1E69B5450);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1C6B0F7A8(0, &qword_1EDCDF840, &protocolRef_FCPersonalizationAggregate);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1C6B72614(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1C6D79BB0();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1C6D79EA0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

unint64_t sub_1C6D11F58(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6D79CD0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 48) + 56 * v6;
      v11 = *(v9 + 16);
      v10 = *(v9 + 32);
      v12 = *v9;
      v33 = *(v9 + 48);
      v32[1] = v11;
      v32[2] = v10;
      v32[0] = v12;
      sub_1C6D7A260();
      sub_1C6BC62A0(v32, &v30);
      sub_1C6BFDBDC(v31);
      v13 = sub_1C6D7A2B0();
      result = sub_1C6BC624C(v32);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = v15 + 56 * v3;
      v17 = (v15 + 56 * v6);
      if (v3 != v6 || v16 >= v17 + 56)
      {
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        *(v16 + 48) = *(v17 + 6);
        *(v16 + 16) = v19;
        *(v16 + 32) = v20;
        *v16 = v18;
      }

      v21 = *(a2 + 56);
      v22 = *(*(sub_1C6D78810() - 8) + 72);
      v23 = v22 * v3;
      result = v21 + v22 * v3;
      v24 = v22 * v6;
      v25 = v21 + v22 * v6 + v22;
      if (v23 < v24 || result >= v25)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v23 == v24)
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

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C6D1216C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6D79CD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x1CCA56710](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C6D1231C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6D79CD0() + 1) & ~v5;
    do
    {
      sub_1C6D7A260();

      sub_1C6D79610();
      v9 = sub_1C6D7A2B0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C6D124E4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1C6D79CD0() + 1) & ~v6;
    while (1)
    {
      sub_1C6D7A260();

      sub_1C6D79610();
      v11 = sub_1C6D7A2B0();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C6D126D8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1C6D7A0C0();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1C6D797F0();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1C6D12828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  sub_1C6D1BE00(0, &qword_1EDCEA960, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v95 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v94 = &v77 - v14;
  v15 = sub_1C6D75F50();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v93 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v97 = &v77 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v77 - v24;
  v26 = sub_1C6D79040();
  MEMORY[0x1EEE9AC00](v26, v27);
  v88 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v102 = &v77 - v31;
  v35.n128_f64[0] = MEMORY[0x1EEE9AC00](v32, v33);
  v101 = &v77 - v36;
  v79 = a2;
  if (a3 != a2)
  {
    v37 = v25;
    v38 = v15;
    v39 = *a4;
    v41 = *(v34 + 16);
    v40 = v34 + 16;
    v42 = *(v40 + 56);
    v96 = (v16 + 32);
    v100 = (v16 + 56);
    v84 = (v16 + 48);
    v90 = (v16 + 8);
    v91 = v41;
    v89 = (v40 - 8);
    v92 = v40;
    v43 = (v39 + v42 * (a3 - 1));
    v85 = -v42;
    v86 = (v40 + 16);
    v44 = a1 - a3;
    v87 = v39;
    v78 = v42;
    v45 = v39 + v42 * a3;
LABEL_5:
    v83 = a3;
    v80 = v45;
    v81 = v44;
    v82 = v43;
    v46 = v44;
    while (1)
    {
      v99 = v45;
      v47 = v45;
      v48 = v91;
      (v91)(v101, v47, v26, v35);
      v48(v102, v43, v26);
      v49 = [sub_1C6D79030() publishDate];
      swift_unknownObjectRelease();
      v98 = v46;
      if (v49)
      {
        v50 = v97;
        sub_1C6D75F20();

        v51 = *v96;
        v52 = v94;
        (*v96)(v94, v50, v38);
        v53 = *v100;
        (*v100)(v52, 0, 1, v38);
        v51(v37, v52, v38);
      }

      else
      {
        v53 = *v100;
        v54 = v94;
        (*v100)(v94, 1, 1, v38);
        sub_1C6D75F00();
        if ((*v84)(v54, 1, v38) != 1)
        {
          sub_1C6D1A8AC(v54, &qword_1EDCEA960, MEMORY[0x1E6969530], v55);
        }
      }

      v56 = [sub_1C6D79030() publishDate];
      swift_unknownObjectRelease();
      if (v56)
      {
        v57 = v26;
        v58 = v38;
        v59 = v37;
        v60 = v97;
        sub_1C6D75F20();

        v61 = v95;
        v62 = *v96;
        v63 = v60;
        v37 = v59;
        v38 = v58;
        v26 = v57;
        (*v96)(v95, v63, v38);
        v53(v61, 0, 1, v38);
        v64 = v93;
        v62(v93, v61, v38);
        v66 = v98;
        v65 = v99;
      }

      else
      {
        v67 = v95;
        v53(v95, 1, 1, v38);
        v64 = v93;
        sub_1C6D75F00();
        v68 = (*v84)(v67, 1, v38);
        v66 = v98;
        v65 = v99;
        if (v68 != 1)
        {
          sub_1C6D1A8AC(v95, &qword_1EDCEA960, MEMORY[0x1E6969530], v69);
        }
      }

      v70 = sub_1C6D75EE0();
      v71 = v64;
      v72 = *v90;
      (*v90)(v71, v38);
      v72(v37, v38);
      v73 = *v89;
      (*v89)(v102, v26);
      v73(v101, v26);
      if ((v70 & 1) == 0)
      {
LABEL_4:
        a3 = v83 + 1;
        v43 = &v82[v78];
        v44 = v81 - 1;
        v45 = v80 + v78;
        if (v83 + 1 == v79)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v87)
      {
        break;
      }

      v74 = *v86;
      v75 = v88;
      (*v86)(v88, v65, v26);
      swift_arrayInitWithTakeFrontToBack();
      v74(v43, v75, v26);
      v43 += v85;
      v45 = v65 + v85;
      v76 = __CFADD__(v66, 1);
      v46 = v66 + 1;
      if (v76)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D12EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C6D79040();
  MEMORY[0x1EEE9AC00](v8, v9);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v57 = &v42 - v13;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v56 = &v42 - v18;
  v44 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v21 = *(v16 + 16);
    v20 = v16 + 16;
    v22 = *(v20 + 56);
    v53 = (v20 - 8);
    v54 = v21;
    v55 = v20;
    v50 = (v20 + 16);
    v51 = v19;
    v23 = (v19 + v22 * (a3 - 1));
    v49 = -v22;
    v24 = a1 - a3;
    v43 = v22;
    v25 = v19 + v22 * a3;
LABEL_5:
    v47 = v23;
    v48 = a3;
    v45 = v25;
    v46 = v24;
    v26 = v23;
    while (1)
    {
      v27 = v56;
      v28 = v54;
      (v54)(v56, v25, v8, v17);
      v29 = v57;
      v30 = v28(v57, v26, v8);
      v31 = MEMORY[0x1CCA568F0](v30);
      v32 = sub_1C6D79010();
      [v32 sortingScore];
      v34 = v33;

      v35 = sub_1C6D79010();
      [v35 sortingScore];
      v37 = v36;

      objc_autoreleasePoolPop(v31);
      v38 = *v53;
      (*v53)(v29, v8);
      v38(v27, v8);
      if (v37 >= v34)
      {
LABEL_4:
        a3 = v48 + 1;
        v23 = &v47[v43];
        v24 = v46 - 1;
        v25 = v45 + v43;
        if (v48 + 1 == v44)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v51)
      {
        break;
      }

      v39 = *v50;
      v40 = v52;
      (*v50)(v52, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      v39(v26, v40, v8);
      v26 += v49;
      v25 += v49;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D131CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C6D79040();
  MEMORY[0x1EEE9AC00](v8, v9);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v54 = &v40 - v13;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v53 = &v40 - v18;
  v42 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v51 = *(v16 + 16);
    v52 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v48 = (v16 + 32);
    v49 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v47 = -v20;
    v23 = a1 - a3;
    v41 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v45 = v22;
    v46 = a3;
    v43 = v24;
    v44 = v23;
    v25 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v53;
      v28 = v51;
      (v51)(v53, v24, v8, v17);
      v29 = v54;
      v28(v54, v26, v8);
      v30 = sub_1C6D79010();
      [v30 personalizationScore];
      v32 = v31;

      v33 = sub_1C6D79010();
      [v33 personalizationScore];
      v35 = v34;

      v36 = *v21;
      (*v21)(v29, v8);
      v36(v27, v8);
      if (v35 >= v32)
      {
LABEL_4:
        a3 = v46 + 1;
        v22 = &v45[v41];
        v23 = v44 - 1;
        v24 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v37 = *v48;
      v38 = v50;
      (*v48)(v50, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v37(v26, v38, v8);
      v26 += v47;
      v24 += v47;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D13490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C6D79300();
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v52 = &v38 - v13;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v51 = &v38 - v18;
  v40 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v49 = *(v16 + 16);
    v50 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v46 = (v16 + 32);
    v47 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v45 = -v20;
    v23 = a1 - a3;
    v39 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v43 = v22;
    v44 = a3;
    v41 = v24;
    v42 = v23;
    v25 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v51;
      v28 = v49;
      (v49)(v51, v24, v8, v17);
      v29 = v52;
      v28(v52, v26, v8);
      sub_1C6D792D0();
      v31 = v30;
      sub_1C6D792D0();
      v33 = v32;
      v34 = *v21;
      (*v21)(v29, v8);
      v34(v27, v8);
      if (v33 >= v31)
      {
LABEL_4:
        a3 = v44 + 1;
        v22 = &v43[v39];
        v23 = v42 - 1;
        v24 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      v35 = *v46;
      v36 = v48;
      (*v46)(v48, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v35(v26, v36, v8);
      v26 += v45;
      v24 += v45;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D13730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1C6C74F64(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v49 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v53 = &v39 - v14;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15, v16);
  v52 = &v39 - v19;
  v41 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v50 = *(v17 + 16);
    v51 = v17 + 16;
    v21 = *(v17 + 72);
    v22 = (v17 + 8);
    v47 = (v17 + 32);
    v48 = v20;
    v23 = (v20 + v21 * (a3 - 1));
    v46 = -v21;
    v24 = a1 - a3;
    v40 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v44 = v23;
    v45 = a3;
    v42 = v25;
    v43 = v24;
    v26 = v24;
    v27 = v23;
    while (1)
    {
      v28 = v52;
      v29 = v50;
      (v50)(v52, v25, v9, v18);
      v30 = v53;
      v29(v53, v27, v9);
      sub_1C6D79090();
      v32 = v31;
      sub_1C6D79090();
      v34 = v33;
      v35 = *v22;
      (*v22)(v30, v9);
      v35(v28, v9);
      if (v34 >= v32)
      {
LABEL_4:
        a3 = v45 + 1;
        v23 = &v44[v40];
        v24 = v43 - 1;
        v25 = v42 + v40;
        if (v45 + 1 == v41)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v48)
      {
        break;
      }

      v36 = *v47;
      v37 = v49;
      (*v47)(v49, v25, v9);
      swift_arrayInitWithTakeFrontToBack();
      v36(v27, v37, v9);
      v27 += v46;
      v25 += v46;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D139D8(unint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v200 = a5;
  v198 = a1;
  sub_1C6D1BE00(0, &qword_1EDCEA960, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v230 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v224 = &v195 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v213 = &v195 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v210 = &v195 - v19;
  v20 = sub_1C6D75F50();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v195 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v234 = &v195 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v209 = &v195 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v232 = &v195 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v205 = &v195 - v36;
  v37 = sub_1C6D79040();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v39);
  v203 = &v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v220 = &v195 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v195 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v233 = &v195 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v216 = &v195 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v214 = &v195 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v196 = &v195 - v59;
  v62.n128_f64[0] = MEMORY[0x1EEE9AC00](v60, v61);
  v195 = &v195 - v63;
  v64 = *(a4 + 8);
  if (v64 < 1)
  {
    v66 = MEMORY[0x1E69E7CC0];
LABEL_113:
    v37 = *v198;
    if (!*v198)
    {
      goto LABEL_153;
    }

    v21 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_147;
    }

    v188 = v21;
LABEL_116:
    v236 = v188;
    v21 = *(v188 + 2);
    if (v21 >= 2)
    {
      do
      {
        v189 = *a4;
        if (!*a4)
        {
          goto LABEL_151;
        }

        v190 = a4;
        a4 = *&v188[16 * v21];
        v191 = v188;
        v192 = *&v188[16 * v21 + 24];
        sub_1C6D17B88(v189 + *(v38 + 72) * a4, v189 + *(v38 + 72) * *&v188[16 * v21 + 16], v189 + *(v38 + 72) * v192, v37);
        if (v6)
        {
          break;
        }

        if (v192 < a4)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v191 = sub_1C6C73C90(v191);
        }

        if (v21 - 2 >= *(v191 + 2))
        {
          goto LABEL_141;
        }

        v193 = &v191[16 * v21];
        *v193 = a4;
        *(v193 + 1) = v192;
        v236 = v191;
        sub_1C6C73C04(v21 - 1);
        v188 = v236;
        v21 = *(v236 + 2);
        a4 = v190;
      }

      while (v21 > 1);
    }

LABEL_124:

    return;
  }

  v65 = 0;
  v228 = v38 + 16;
  v229 = (v38 + 8);
  v231 = (v21 + 32);
  v235 = (v21 + 56);
  v217 = (v21 + 48);
  v225 = (v38 + 32);
  v226 = (v21 + 8);
  v66 = MEMORY[0x1E69E7CC0];
  v199 = a4;
  v212 = v38;
  v222 = v37;
  v223 = v24;
  v227 = v47;
  while (1)
  {
    v204 = v66;
    v201 = v65;
    if (v65 + 1 >= v64)
    {
      v90 = v65 + 1;
      v104 = v200;
      goto LABEL_33;
    }

    v215 = v64;
    v21 = *a4;
    v67 = v38;
    v68 = *(v38 + 72);
    v69 = (*a4 + v68 * (v65 + 1));
    v70 = v65;
    v71 = *(v67 + 16);
    v72 = v195;
    v221 = v69;
    (v71)(v195, v62);
    v73 = v21 + v68 * v70;
    v74 = v196;
    v211 = v71;
    v75 = (v71)(v196, v73, v37);
    LODWORD(v218) = sub_1C6D09028(v75, v72, v74);
    if (v6)
    {
      v194 = *v229;
      (*v229)(v74, v37);
      v194(v72, v37);
      goto LABEL_124;
    }

    v197 = 0;
    v76 = *v229;
    (*v229)(v74, v37);
    v208 = v76;
    v76(v72, v37);
    v77 = v201 + 2;
    v78 = v21 + v68 * (v201 + 2);
    v79 = v205;
    v219 = v68;
    v80 = v221;
    while (1)
    {
      v90 = v215;
      if (v215 == v77)
      {
        break;
      }

      v91 = v79;
      v92 = v211;
      (v211)(v214, v78, v37);
      v221 = v80;
      v92(v216, v80, v37);
      v93 = [sub_1C6D79030() publishDate];
      swift_unknownObjectRelease();
      if (v93)
      {
        v94 = v232;
        sub_1C6D75F20();

        v95 = *v231;
        v96 = v210;
        (*v231)(v210, v94, v20);
        v97 = *v235;
        (*v235)(v96, 0, 1, v20);
        (v95)(v91, v96, v20);
      }

      else
      {
        v97 = *v235;
        v98 = v210;
        (*v235)(v210, 1, 1, v20);
        sub_1C6D75F00();
        if ((*v217)(v98, 1, v20) != 1)
        {
          sub_1C6D1A8AC(v98, &qword_1EDCEA960, MEMORY[0x1E6969530], v99);
        }
      }

      v100 = [sub_1C6D79030() publishDate];
      swift_unknownObjectRelease();
      if (v100)
      {
        v81 = v232;
        sub_1C6D75F20();

        v82 = *v231;
        v83 = v213;
        v84 = v81;
        v79 = v205;
        (*v231)(v213, v84, v20);
        v97(v83, 0, 1, v20);
        v85 = v209;
        (v82)(v209, v83, v20);
        v86 = v219;
      }

      else
      {
        v101 = v213;
        v97(v213, 1, 1, v20);
        v85 = v209;
        sub_1C6D75F00();
        v102 = (*v217)(v101, 1, v20);
        v79 = v91;
        v86 = v219;
        if (v102 != 1)
        {
          sub_1C6D1A8AC(v213, &qword_1EDCEA960, MEMORY[0x1E6969530], v103);
        }
      }

      v21 = sub_1C6D75EE0();
      v87 = v85;
      v88 = *v226;
      (*v226)(v87, v20);
      v88(v79, v20);
      v89 = v208;
      (v208)(v216, v37);
      v89(v214, v37);
      ++v77;
      v78 += v86;
      v80 = &v221[v86];
      if ((v218 ^ v21))
      {
        v90 = v77 - 1;
        break;
      }
    }

    v6 = v197;
    a4 = v199;
    v38 = v212;
    v104 = v200;
    v105 = v204;
    v47 = v227;
    v65 = v201;
    if (v218)
    {
      if (v90 < v201)
      {
        goto LABEL_146;
      }

      if (v201 < v90)
      {
        v106 = v219 * (v90 - 1);
        v107 = v90;
        v108 = v90 * v219;
        v215 = v90;
        v109 = v201;
        v110 = v201 * v219;
        do
        {
          if (v109 != --v107)
          {
            v111 = *v199;
            if (!*v199)
            {
              goto LABEL_150;
            }

            v21 = v111 + v110;
            v221 = *v225;
            (v221)(v203, v111 + v110, v37, v105);
            if (v110 < v106 || v21 >= v111 + v108)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v110 != v106)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v221)(v111 + v106, v203, v37);
            v104 = v200;
            v105 = v204;
            v65 = v201;
          }

          ++v109;
          v106 -= v219;
          v108 -= v219;
          v110 += v219;
        }

        while (v109 < v107);
        v6 = v197;
        a4 = v199;
        v38 = v212;
        v47 = v227;
        v90 = v215;
      }
    }

LABEL_33:
    v112 = *(a4 + 8);
    if (v90 >= v112)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v90, v65))
    {
      goto LABEL_143;
    }

    if (v90 - v65 >= v104)
    {
      goto LABEL_42;
    }

    if (__OFADD__(v65, v104))
    {
      goto LABEL_144;
    }

    if (v65 + v104 >= v112)
    {
      v21 = *(a4 + 8);
    }

    else
    {
      v21 = v65 + v104;
    }

    if (v21 < v65)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      v188 = sub_1C6C73C90(v21);
      goto LABEL_116;
    }

    if (v90 == v21)
    {
LABEL_42:
      v21 = v90;
      if (v90 < v65)
      {
        goto LABEL_142;
      }

      goto LABEL_43;
    }

    v197 = v6;
    v161 = *a4;
    v162 = *(v38 + 72);
    v221 = *(v38 + 16);
    v163 = (v161 + v162 * (v90 - 1));
    v218 = -v162;
    v219 = v161;
    v164 = (v65 - v90);
    v202 = v162;
    v38 = v161 + v90 * v162;
    v206 = v21;
LABEL_95:
    v215 = v90;
    v207 = v38;
    v208 = v164;
    v211 = v163;
    v165 = v163;
LABEL_96:
    v166 = v221;
    (v221)(v233, v38, v37, v62);
    v166(v47, v165, v37);
    v167 = [sub_1C6D79030() publishDate];
    swift_unknownObjectRelease();
    if (v167)
    {
      v168 = v232;
      sub_1C6D75F20();

      v169 = *v231;
      v170 = v224;
      (*v231)(v224, v168, v20);
      v171 = *v235;
      (*v235)(v170, 0, 1, v20);
      (v169)(v234, v170, v20);
    }

    else
    {
      v171 = *v235;
      v172 = v224;
      (*v235)(v224, 1, 1, v20);
      sub_1C6D75F00();
      if ((*v217)(v172, 1, v20) != 1)
      {
        sub_1C6D1A8AC(v172, &qword_1EDCEA960, MEMORY[0x1E6969530], v173);
      }
    }

    v174 = [sub_1C6D79030() publishDate];
    swift_unknownObjectRelease();
    if (v174)
    {
      v175 = v232;
      sub_1C6D75F20();

      v176 = v230;
      v177 = *v231;
      (*v231)(v230, v175, v20);
      v171(v176, 0, 1, v20);
      v178 = v223;
      v177();
    }

    else
    {
      v179 = v230;
      v171(v230, 1, 1, v20);
      v178 = v223;
      sub_1C6D75F00();
      if ((*v217)(v179, 1, v20) != 1)
      {
        sub_1C6D1A8AC(v230, &qword_1EDCEA960, MEMORY[0x1E6969530], v180);
      }
    }

    v181 = v234;
    v182 = sub_1C6D75EE0();
    v183 = *v226;
    (*v226)(v178, v20);
    v183(v181, v20);
    v184 = *v229;
    v47 = v227;
    v37 = v222;
    (*v229)(v227, v222);
    v184(v233, v37);
    if (v182)
    {
      break;
    }

LABEL_94:
    v90 = v215 + 1;
    v163 = &v211[v202];
    v164 = v208 - 1;
    v38 = v207 + v202;
    v21 = v206;
    if (v215 + 1 != v206)
    {
      goto LABEL_95;
    }

    v6 = v197;
    a4 = v199;
    v65 = v201;
    if (v206 < v201)
    {
      goto LABEL_142;
    }

LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v206 = v21;
    if (isUniquelyReferenced_nonNull_native)
    {
      v66 = v204;
    }

    else
    {
      v66 = sub_1C6B657D0(0, *(v204 + 2) + 1, 1, v204);
    }

    v115 = *(v66 + 2);
    v114 = *(v66 + 3);
    v21 = v115 + 1;
    if (v115 >= v114 >> 1)
    {
      v66 = sub_1C6B657D0((v114 > 1), v115 + 1, 1, v66);
    }

    *(v66 + 2) = v21;
    v116 = &v66[16 * v115];
    v117 = v206;
    *(v116 + 4) = v65;
    *(v116 + 5) = v117;
    v221 = *v198;
    if (!v221)
    {
      goto LABEL_152;
    }

    if (v115)
    {
      while (1)
      {
        v118 = v21 - 1;
        if (v21 >= 4)
        {
          break;
        }

        if (v21 == 3)
        {
          v119 = *(v66 + 4);
          v120 = *(v66 + 5);
          v129 = __OFSUB__(v120, v119);
          v121 = v120 - v119;
          v122 = v129;
LABEL_62:
          if (v122)
          {
            goto LABEL_131;
          }

          v135 = &v66[16 * v21];
          v137 = *v135;
          v136 = *(v135 + 1);
          v138 = __OFSUB__(v136, v137);
          v139 = v136 - v137;
          v140 = v138;
          if (v138)
          {
            goto LABEL_134;
          }

          v141 = &v66[16 * v118 + 32];
          v143 = *v141;
          v142 = *(v141 + 1);
          v129 = __OFSUB__(v142, v143);
          v144 = v142 - v143;
          if (v129)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v139, v144))
          {
            goto LABEL_138;
          }

          if (v139 + v144 >= v121)
          {
            if (v121 < v144)
            {
              v118 = v21 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v145 = &v66[16 * v21];
        v147 = *v145;
        v146 = *(v145 + 1);
        v129 = __OFSUB__(v146, v147);
        v139 = v146 - v147;
        v140 = v129;
LABEL_76:
        if (v140)
        {
          goto LABEL_133;
        }

        v148 = &v66[16 * v118];
        v150 = *(v148 + 4);
        v149 = *(v148 + 5);
        v129 = __OFSUB__(v149, v150);
        v151 = v149 - v150;
        if (v129)
        {
          goto LABEL_136;
        }

        if (v151 < v139)
        {
          goto LABEL_3;
        }

LABEL_83:
        v156 = v118 - 1;
        if (v118 - 1 >= v21)
        {
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
          goto LABEL_145;
        }

        v157 = *a4;
        if (!*a4)
        {
          goto LABEL_149;
        }

        v38 = a4;
        v158 = v66;
        v21 = *&v66[16 * v156 + 32];
        a4 = *&v66[16 * v118 + 40];
        sub_1C6D17B88(v157 + *(v212 + 72) * v21, v157 + *(v212 + 72) * *&v66[16 * v118 + 32], v157 + *(v212 + 72) * a4, v221);
        if (v6)
        {
          goto LABEL_124;
        }

        if (a4 < v21)
        {
          goto LABEL_127;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v159 = v158;
        }

        else
        {
          v159 = sub_1C6C73C90(v158);
        }

        v47 = v227;
        if (v156 >= *(v159 + 2))
        {
          goto LABEL_128;
        }

        v160 = &v159[16 * v156];
        *(v160 + 4) = v21;
        *(v160 + 5) = a4;
        v236 = v159;
        sub_1C6C73C04(v118);
        v66 = v236;
        v21 = *(v236 + 2);
        a4 = v38;
        if (v21 <= 1)
        {
          goto LABEL_3;
        }
      }

      v123 = &v66[16 * v21 + 32];
      v124 = *(v123 - 64);
      v125 = *(v123 - 56);
      v129 = __OFSUB__(v125, v124);
      v126 = v125 - v124;
      if (v129)
      {
        goto LABEL_129;
      }

      v128 = *(v123 - 48);
      v127 = *(v123 - 40);
      v129 = __OFSUB__(v127, v128);
      v121 = v127 - v128;
      v122 = v129;
      if (v129)
      {
        goto LABEL_130;
      }

      v130 = &v66[16 * v21];
      v132 = *v130;
      v131 = *(v130 + 1);
      v129 = __OFSUB__(v131, v132);
      v133 = v131 - v132;
      if (v129)
      {
        goto LABEL_132;
      }

      v129 = __OFADD__(v121, v133);
      v134 = v121 + v133;
      if (v129)
      {
        goto LABEL_135;
      }

      if (v134 >= v126)
      {
        v152 = &v66[16 * v118 + 32];
        v154 = *v152;
        v153 = *(v152 + 1);
        v129 = __OFSUB__(v153, v154);
        v155 = v153 - v154;
        if (v129)
        {
          goto LABEL_139;
        }

        if (v121 < v155)
        {
          v118 = v21 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v64 = *(a4 + 8);
    v65 = v206;
    v38 = v212;
    if (v206 >= v64)
    {
      goto LABEL_113;
    }
  }

  if (v219)
  {
    v185 = *v225;
    v186 = v220;
    (*v225)(v220, v38, v37);
    swift_arrayInitWithTakeFrontToBack();
    v185(v165, v186, v37);
    v165 += v218;
    v38 += v218;
    if (__CFADD__(v164++, 1))
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

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
}

void sub_1C6D14CA8(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v5 = v4;
  v144 = a1;
  v8 = sub_1C6D79040();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v147 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v155 = &v140 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v161 = &v140 - v17;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18, v19);
  v160 = &v140 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v23 = *v144;
    if (!*v144)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v24 = sub_1C6C73C90(v24);
    }

    v163 = v24;
    v136 = *(v24 + 2);
    if (v136 >= 2)
    {
      while (*a3)
      {
        v137 = *&v24[16 * v136];
        v138 = *&v24[16 * v136 + 24];
        sub_1C6D18224(*a3 + *(v9 + 72) * v137, *a3 + *(v9 + 72) * *&v24[16 * v136 + 16], *a3 + *(v9 + 72) * v138, v23);
        if (v5)
        {
          goto LABEL_103;
        }

        if (v138 < v137)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1C6C73C90(v24);
        }

        if (v136 - 2 >= *(v24 + 2))
        {
          goto LABEL_119;
        }

        v139 = &v24[16 * v136];
        *v139 = v137;
        *(v139 + 1) = v138;
        v163 = v24;
        sub_1C6C73C04(v136 - 1);
        v24 = v163;
        v136 = *(v163 + 2);
        if (v136 <= 1)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_129;
    }

LABEL_103:

    return;
  }

  v140 = a4;
  v23 = 0;
  v158 = (v9 + 8);
  v159 = v9 + 16;
  v157 = (v9 + 32);
  v24 = MEMORY[0x1E69E7CC0];
  v145 = v9;
  v162 = v8;
  v141 = a3;
  while (1)
  {
    v152 = v24;
    if (v23 + 1 >= v22)
    {
      v58 = v23 + 1;
    }

    else
    {
      v153 = v22;
      v143 = v5;
      v25 = *a3;
      v26 = *(v9 + 72);
      v27 = v23;
      v28 = &v25[v26 * (v23 + 1)];
      v29 = v25;
      v150 = v25;
      v30 = *(v9 + 16);
      v31 = v160;
      (v30)(v160, v28, v8, v20);
      v32 = &v29[v26 * v27];
      v33 = v161;
      v154 = v30;
      v34 = (v30)(v161, v32, v8);
      v35 = MEMORY[0x1CCA568F0](v34);
      v36 = sub_1C6D79010();
      [v36 sortingScore];
      v38 = v37;

      v39 = sub_1C6D79010();
      [v39 sortingScore];
      v41 = v40;

      objc_autoreleasePoolPop(v35);
      v42 = *(v145 + 8);
      v42(v33, v8);
      v151 = v42;
      v42(v31, v8);
      v142 = v27;
      v43 = v27 + 2;
      v156 = v26;
      v44 = (v150 + v26 * (v27 + 2));
      while (v153 != v43)
      {
        v45 = v160;
        v46 = v154;
        v154(v160, v44, v162);
        v47 = v161;
        v48 = (v46)(v161, v28, v162);
        v49 = MEMORY[0x1CCA568F0](v48);
        v50 = sub_1C6D79010();
        [v50 sortingScore];
        v52 = v51;

        v53 = sub_1C6D79010();
        [v53 sortingScore];
        v55 = v54;

        objc_autoreleasePoolPop(v49);
        v56 = v151;
        (v151)(v47, v162);
        v57 = v45;
        v8 = v162;
        v56(v57, v162);
        v24 = v152;
        ++v43;
        v44 += v156;
        v28 += v156;
        if (v41 < v38 == v55 >= v52)
        {
          v58 = v43 - 1;
          goto LABEL_11;
        }
      }

      v58 = v153;
LABEL_11:
      v5 = v143;
      a3 = v141;
      v9 = v145;
      v23 = v142;
      if (v41 < v38)
      {
        if (v58 < v142)
        {
          goto LABEL_122;
        }

        if (v142 < v58)
        {
          v59 = v156 * (v58 - 1);
          v60 = v58 * v156;
          v153 = v58;
          v61 = v142;
          v62 = v142 * v156;
          do
          {
            if (v61 != --v58)
            {
              v64 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v65 = a3;
              v154 = *v157;
              v154(v147, &v64[v62], v162);
              if (v62 < v59 || &v64[v62] >= &v64[v60])
              {
                v63 = v162;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v63 = v162;
                if (v62 != v59)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v154(&v64[v59], v147, v63);
              a3 = v65;
              v9 = v145;
              v24 = v152;
            }

            ++v61;
            v59 -= v156;
            v60 -= v156;
            v62 += v156;
          }

          while (v61 < v58);
          v5 = v143;
          v8 = v162;
          v23 = v142;
          v58 = v153;
        }
      }
    }

    v66 = a3[1];
    if (v58 < v66)
    {
      if (__OFSUB__(v58, v23))
      {
        goto LABEL_121;
      }

      if (v58 - v23 < v140)
      {
        if (__OFADD__(v23, v140))
        {
          goto LABEL_123;
        }

        if (v23 + v140 < v66)
        {
          v66 = v23 + v140;
        }

        if (v66 < v23)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v148 = v66;
        if (v58 != v66)
        {
          break;
        }
      }
    }

LABEL_42:
    if (v58 < v23)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1C6B657D0(0, *(v24 + 2) + 1, 1, v24);
    }

    v91 = *(v24 + 2);
    v90 = *(v24 + 3);
    v92 = v91 + 1;
    if (v91 >= v90 >> 1)
    {
      v24 = sub_1C6B657D0((v90 > 1), v91 + 1, 1, v24);
    }

    *(v24 + 2) = v92;
    v93 = &v24[16 * v91];
    *(v93 + 4) = v23;
    *(v93 + 5) = v58;
    v148 = v58;
    v94 = *v144;
    if (!*v144)
    {
      goto LABEL_130;
    }

    if (v91)
    {
      while (1)
      {
        v23 = v92 - 1;
        if (v92 >= 4)
        {
          break;
        }

        if (v92 == 3)
        {
          v95 = *(v24 + 4);
          v96 = *(v24 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_62:
          if (v98)
          {
            goto LABEL_109;
          }

          v111 = &v24[16 * v92];
          v113 = *v111;
          v112 = *(v111 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_112;
          }

          v117 = &v24[16 * v23 + 32];
          v119 = *v117;
          v118 = *(v117 + 1);
          v105 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v105)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v115, v120))
          {
            goto LABEL_116;
          }

          if (v115 + v120 >= v97)
          {
            if (v97 < v120)
            {
              v23 = v92 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v121 = &v24[16 * v92];
        v123 = *v121;
        v122 = *(v121 + 1);
        v105 = __OFSUB__(v122, v123);
        v115 = v122 - v123;
        v116 = v105;
LABEL_76:
        if (v116)
        {
          goto LABEL_111;
        }

        v124 = &v24[16 * v23];
        v126 = *(v124 + 4);
        v125 = *(v124 + 5);
        v105 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v105)
        {
          goto LABEL_114;
        }

        if (v127 < v115)
        {
          goto LABEL_3;
        }

LABEL_83:
        v132 = v23 - 1;
        if (v23 - 1 >= v92)
        {
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
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v133 = *&v24[16 * v132 + 32];
        v134 = *&v24[16 * v23 + 40];
        sub_1C6D18224(*a3 + *(v9 + 72) * v133, *a3 + *(v9 + 72) * *&v24[16 * v23 + 32], *a3 + *(v9 + 72) * v134, v94);
        if (v5)
        {
          goto LABEL_103;
        }

        if (v134 < v133)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1C6C73C90(v24);
        }

        if (v132 >= *(v24 + 2))
        {
          goto LABEL_106;
        }

        v135 = &v24[16 * v132];
        *(v135 + 4) = v133;
        *(v135 + 5) = v134;
        v163 = v24;
        sub_1C6C73C04(v23);
        v24 = v163;
        v92 = *(v163 + 2);
        v8 = v162;
        if (v92 <= 1)
        {
          goto LABEL_3;
        }
      }

      v99 = &v24[16 * v92 + 32];
      v100 = *(v99 - 64);
      v101 = *(v99 - 56);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_107;
      }

      v104 = *(v99 - 48);
      v103 = *(v99 - 40);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_108;
      }

      v106 = &v24[16 * v92];
      v108 = *v106;
      v107 = *(v106 + 1);
      v105 = __OFSUB__(v107, v108);
      v109 = v107 - v108;
      if (v105)
      {
        goto LABEL_110;
      }

      v105 = __OFADD__(v97, v109);
      v110 = v97 + v109;
      if (v105)
      {
        goto LABEL_113;
      }

      if (v110 >= v102)
      {
        v128 = &v24[16 * v23 + 32];
        v130 = *v128;
        v129 = *(v128 + 1);
        v105 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v105)
        {
          goto LABEL_117;
        }

        if (v97 < v131)
        {
          v23 = v92 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v22 = a3[1];
    v23 = v148;
    if (v148 >= v22)
    {
      goto LABEL_93;
    }
  }

  v143 = v5;
  v67 = *a3;
  v68 = *(v9 + 72);
  v156 = *(v9 + 16);
  v69 = v67 + v68 * (v58 - 1);
  v70 = -v68;
  v142 = v23;
  v71 = v23 - v58;
  v154 = v67;
  v146 = v68;
  v72 = v67 + v58 * v68;
LABEL_35:
  v153 = v58;
  v149 = v72;
  v150 = v71;
  v151 = v69;
  v73 = v69;
  while (1)
  {
    v74 = v160;
    v75 = v156;
    (v156)(v160, v72, v8, v20);
    v76 = v161;
    v77 = v75(v161, v73, v162);
    v78 = MEMORY[0x1CCA568F0](v77);
    v79 = sub_1C6D79010();
    [v79 sortingScore];
    v81 = v80;

    v82 = sub_1C6D79010();
    [v82 sortingScore];
    v84 = v83;

    objc_autoreleasePoolPop(v78);
    v85 = *v158;
    v86 = v76;
    v8 = v162;
    (*v158)(v86, v162);
    v85(v74, v8);
    if (v84 >= v81)
    {
LABEL_34:
      v58 = v153 + 1;
      v69 = &v151[v146];
      v71 = v150 - 1;
      v72 = &v149[v146];
      if (v153 + 1 != v148)
      {
        goto LABEL_35;
      }

      v5 = v143;
      a3 = v141;
      v9 = v145;
      v24 = v152;
      v23 = v142;
      v58 = v148;
      goto LABEL_42;
    }

    if (!v154)
    {
      break;
    }

    v87 = *v157;
    v88 = v155;
    (*v157)(v155, v72, v8);
    swift_arrayInitWithTakeFrontToBack();
    v87(v73, v88, v8);
    v73 += v70;
    v72 += v70;
    if (__CFADD__(v71++, 1))
    {
      goto LABEL_34;
    }
  }

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
}

void sub_1C6D15768(int64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v8 = sub_1C6D79040();
  MEMORY[0x1EEE9AC00](v8, v9);
  v140 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v149 = &v133 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v155 = &v133 - v16;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v17, v18);
  v154 = &v133 - v21;
  v146 = a3;
  v22 = a3[1];
  v144 = v19;
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v25 = *v137;
    if (!*v137)
    {
      goto LABEL_132;
    }

    v8 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v144;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v8 = sub_1C6C73C90(v8);
    }

    v156 = v8;
    v129 = *(v8 + 16);
    if (v129 >= 2)
    {
      while (*v146)
      {
        v130 = *(v8 + 16 * v129);
        v131 = *(v8 + 16 * (v129 - 1) + 40);
        sub_1C6D18840(&(*v146)[*(v24 + 9) * v130], &(*v146)[*(v24 + 9) * *(v8 + 16 * (v129 - 1) + 32)], &(*v146)[*(v24 + 9) * v131], v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v131 < v130)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C6C73C90(v8);
        }

        if (v129 - 2 >= *(v8 + 16))
        {
          goto LABEL_120;
        }

        v132 = (v8 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v156 = v8;
        sub_1C6C73C04(v129 - 1);
        v8 = v156;
        v129 = *(v156 + 16);
        if (v129 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v134 = a4;
  v23 = 0;
  v152 = (v19 + 8);
  v153 = v19 + 16;
  v151 = (v19 + 32);
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    v145 = v24;
    if (v23 + 1 >= v22)
    {
      v43 = v23 + 1;
    }

    else
    {
      v147 = v22;
      v136 = v5;
      v27 = *(v144 + 9);
      v28 = &(*v146)[v27 * v26];
      v142 = *v146;
      v29 = v142;
      v30 = *(v144 + 2);
      v31 = v154;
      (v30)(v154, &v142[v27 * v26], v8, v20);
      v32 = &v29[v27 * v23];
      v33 = v155;
      v148 = v30;
      (v30)(v155, v32, v8);
      v34 = sub_1C6D79010();
      [v34 personalizationScore];
      v36 = v35;

      v37 = sub_1C6D79010();
      [v37 personalizationScore];
      v39 = v38;

      v40 = *(v144 + 1);
      v40(v33, v8);
      v143 = v40;
      v40(v31, v8);
      v135 = v23;
      v41 = v23 + 2;
      v150 = v27;
      v42 = &v142[v27 * (v23 + 2)];
      while (1)
      {
        v43 = v147;
        if (v147 == v41)
        {
          break;
        }

        v44 = v154;
        v45 = v148;
        (v148)(v154, v42, v8);
        v46 = v155;
        (v45)(v155, v28, v8);
        v47 = sub_1C6D79010();
        [v47 personalizationScore];
        v49 = v48;

        v50 = sub_1C6D79010();
        [v50 personalizationScore];
        v52 = v51;

        v53 = v143;
        (v143)(v46, v8);
        v53(v44, v8);
        v24 = v145;
        ++v41;
        v42 += v150;
        v28 += v150;
        if (v39 < v36 == v52 >= v49)
        {
          v43 = v41 - 1;
          break;
        }
      }

      v5 = v136;
      v25 = v135;
      if (v39 < v36)
      {
        if (v43 < v135)
        {
          goto LABEL_123;
        }

        if (v135 < v43)
        {
          v54 = v43;
          v55 = v150 * (v43 - 1);
          v56 = v43 * v150;
          v147 = v43;
          v57 = v135;
          v58 = v135 * v150;
          do
          {
            if (v57 != --v54)
            {
              v59 = *v146;
              if (!*v146)
              {
                goto LABEL_129;
              }

              v60 = *v151;
              (*v151)(v140, &v59[v58], v8);
              if (v58 < v55 || &v59[v58] >= &v59[v56])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v58 != v55)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v60(&v59[v55], v140, v8);
              v24 = v145;
            }

            ++v57;
            v55 -= v150;
            v56 -= v150;
            v58 += v150;
          }

          while (v57 < v54);
          v5 = v136;
          v25 = v135;
          v43 = v147;
        }
      }
    }

    v61 = v146[1];
    if (v43 < v61)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_122;
      }

      if (v43 - v25 < v134)
      {
        if (__OFADD__(v25, v134))
        {
          goto LABEL_124;
        }

        if (v25 + v134 >= v61)
        {
          v62 = v146[1];
        }

        else
        {
          v62 = (v25 + v134);
        }

        if (v62 < v25)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v43 != v62)
        {
          break;
        }
      }
    }

    v23 = v43;
    if (v43 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1C6B657D0(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_1C6B657D0((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v25;
    *(v66 + 5) = v23;
    v67 = *v137;
    if (!*v137)
    {
      goto LABEL_131;
    }

    if (v64)
    {
      while (1)
      {
        v25 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v24 + 4);
          v69 = *(v24 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_52:
          if (v71)
          {
            goto LABEL_110;
          }

          v84 = &v24[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_113;
          }

          v90 = &v24[16 * v25 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_117;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v25 = v65 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v94 = &v24[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_66:
        if (v89)
        {
          goto LABEL_112;
        }

        v97 = &v24[16 * v25];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_115;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_73:
        v105 = v25 - 1;
        if (v25 - 1 >= v65)
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

        if (!*v146)
        {
          goto LABEL_128;
        }

        v106 = *&v24[16 * v105 + 32];
        v107 = *&v24[16 * v25 + 40];
        sub_1C6D18840(&(*v146)[*(v144 + 9) * v106], &(*v146)[*(v144 + 9) * *&v24[16 * v25 + 32]], &(*v146)[*(v144 + 9) * v107], v67);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v107 < v106)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1C6C73C90(v24);
        }

        if (v105 >= *(v24 + 2))
        {
          goto LABEL_107;
        }

        v108 = &v24[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v156 = v24;
        sub_1C6C73C04(v25);
        v24 = v156;
        v65 = *(v156 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v24[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_108;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_109;
      }

      v79 = &v24[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_111;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_114;
      }

      if (v83 >= v75)
      {
        v101 = &v24[16 * v25 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_118;
        }

        if (v70 < v104)
        {
          v25 = v65 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = v146[1];
    if (v23 >= v22)
    {
      goto LABEL_94;
    }
  }

  v136 = v5;
  v109 = *v146;
  v110 = *(v144 + 9);
  v150 = *(v144 + 2);
  v111 = &v109[v110 * (v43 - 1)];
  v112 = -v110;
  v135 = v25;
  v113 = (v25 - v43);
  v148 = v109;
  v138 = v110;
  v114 = &v109[v43 * v110];
  v139 = v62;
LABEL_85:
  v147 = v43;
  v141 = v114;
  v142 = v113;
  v143 = v111;
  while (1)
  {
    v115 = v154;
    v116 = v150;
    (v150)(v154, v114, v8, v20);
    v117 = v155;
    v116(v155, v111, v8);
    v118 = sub_1C6D79010();
    [v118 personalizationScore];
    v120 = v119;

    v121 = sub_1C6D79010();
    [v121 personalizationScore];
    v123 = v122;

    v124 = *v152;
    (*v152)(v117, v8);
    v124(v115, v8);
    if (v123 >= v120)
    {
LABEL_84:
      v43 = v147 + 1;
      v111 = &v143[v138];
      v113 = v142 - 1;
      v114 = &v141[v138];
      v23 = v139;
      if ((v147 + 1) != v139)
      {
        goto LABEL_85;
      }

      v5 = v136;
      v24 = v145;
      v25 = v135;
      if (v139 < v135)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v148)
    {
      break;
    }

    v125 = *v151;
    v126 = v149;
    (*v151)(v149, v114, v8);
    swift_arrayInitWithTakeFrontToBack();
    v125(v111, v126, v8);
    v111 += v112;
    v114 += v112;
    if (__CFADD__(v113++, 1))
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
}

uint64_t sub_1C6D161F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C6C73C90(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1C6D18E30((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1C6B657D0((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1C6D18E30((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

void sub_1C6D16750(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v129 = a1;
  v9 = sub_1C6D79300();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v131 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v142 = &v126 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v148 = &v126 - v18;
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v19, v20);
  v147 = &v126 - v22;
  v139 = a3;
  v23 = *(a3 + 8);
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v129;
    if (!*v129)
    {
      goto LABEL_134;
    }

    a3 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v121 = a3;
    }

    else
    {
LABEL_128:
      v121 = sub_1C6C73C90(a3);
    }

    v149 = v121;
    a3 = *(v121 + 2);
    if (a3 >= 2)
    {
      while (*v139)
      {
        v122 = *&v121[16 * a3];
        v123 = v121;
        v124 = *&v121[16 * a3 + 24];
        sub_1C6D19024(&(*v139)[v10[9] * v122], &(*v139)[v10[9] * *&v121[16 * a3 + 16]], &(*v139)[v10[9] * v124], v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v124 < v122)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1C6C73C90(v123);
        }

        if (a3 - 2 >= *(v123 + 2))
        {
          goto LABEL_122;
        }

        v125 = &v123[16 * a3];
        *v125 = v122;
        *(v125 + 1) = v124;
        v149 = v123;
        sub_1C6C73C04(a3 - 1);
        v121 = v149;
        a3 = *(v149 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v24 = 0;
  v145 = (v10 + 1);
  v146 = v10 + 2;
  v144 = (v10 + 4);
  v25 = MEMORY[0x1E69E7CC0];
  v138 = v10;
  v128 = a4;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v132 = v25;
    if (v24 + 1 >= v23)
    {
      v42 = v24 + 1;
    }

    else
    {
      v140 = v23;
      v133 = v6;
      v28 = v10[9];
      v5 = &(*v139)[v28 * v27];
      v136 = *v139;
      v29 = v136;
      v30 = v10[2];
      v31 = v147;
      v30(v147, &v136[v28 * v27], v9, v21);
      v32 = &v29[v28 * v26];
      v33 = v148;
      v141 = v30;
      (v30)(v148, v32, v9);
      sub_1C6D792D0();
      v35 = v34;
      sub_1C6D792D0();
      v37 = v36;
      v38 = v26;
      v39 = v10[1];
      a3 = v145;
      v39(v33, v9);
      v137 = v39;
      v39(v31, v9);
      v127 = v38;
      v40 = v38 + 2;
      v143 = v28;
      v41 = &v136[v28 * (v38 + 2)];
      while (1)
      {
        v42 = v140;
        if (v140 == v40)
        {
          break;
        }

        a3 = v147;
        v43 = v141;
        v141(v147, v41, v9);
        v44 = v148;
        v43(v148, v5, v9);
        sub_1C6D792D0();
        v46 = v45;
        sub_1C6D792D0();
        v48 = v47;
        v49 = v137;
        (v137)(v44, v9);
        v49(a3, v9);
        v10 = v138;
        ++v40;
        v41 += v143;
        v5 += v143;
        if (v37 < v35 == v48 >= v46)
        {
          v42 = v40 - 1;
          break;
        }
      }

      v50 = v132;
      v6 = v133;
      a4 = v128;
      v26 = v127;
      if (v37 < v35)
      {
        if (v42 < v127)
        {
          goto LABEL_125;
        }

        if (v127 < v42)
        {
          v51 = v42;
          a3 = v143 * (v42 - 1);
          v5 = v42 * v143;
          v140 = v42;
          v52 = v127 * v143;
          do
          {
            if (v26 != --v51)
            {
              v133 = v6;
              v53 = *v139;
              if (!*v139)
              {
                goto LABEL_131;
              }

              v54 = *v144;
              (*v144)(v131, &v53[v52], v9, v50);
              if (v52 < a3 || &v53[v52] >= &v53[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v52 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v54(&v53[a3], v131, v9);
              v50 = v132;
              v6 = v133;
            }

            ++v26;
            a3 -= v143;
            v5 -= v143;
            v52 += v143;
          }

          while (v26 < v51);
          v10 = v138;
          a4 = v128;
          v26 = v127;
          v42 = v140;
        }
      }
    }

    v55 = v139[1];
    if (v42 < v55)
    {
      if (__OFSUB__(v42, v26))
      {
        goto LABEL_124;
      }

      if (v42 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_126;
        }

        if (v26 + a4 >= v55)
        {
          v5 = v139[1];
        }

        else
        {
          v5 = v26 + a4;
        }

        if (v5 < v26)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v42 != v5)
        {
          break;
        }
      }
    }

    v5 = v42;
    if (v42 < v26)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = v132;
    }

    else
    {
      v25 = sub_1C6B657D0(0, *(v132 + 2) + 1, 1, v132);
    }

    a3 = *(v25 + 2);
    v56 = *(v25 + 3);
    v57 = a3 + 1;
    if (a3 >= v56 >> 1)
    {
      v25 = sub_1C6B657D0((v56 > 1), a3 + 1, 1, v25);
    }

    *(v25 + 2) = v57;
    v58 = &v25[16 * a3];
    *(v58 + 4) = v26;
    *(v58 + 5) = v5;
    v59 = *v129;
    if (!*v129)
    {
      goto LABEL_133;
    }

    v134 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v60 = *(v25 + 4);
          v61 = *(v25 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_52:
          if (v63)
          {
            goto LABEL_112;
          }

          v76 = &v25[16 * v57];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_115;
          }

          v82 = &v25[16 * v5 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_119;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v5 = v57 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v86 = &v25[16 * v57];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_66:
        if (v81)
        {
          goto LABEL_114;
        }

        v89 = &v25[16 * v5];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_117;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v57)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v139)
        {
          goto LABEL_130;
        }

        v97 = v25;
        v98 = *&v25[16 * a3 + 32];
        v99 = *&v25[16 * v5 + 40];
        sub_1C6D19024(&(*v139)[v10[9] * v98], &(*v139)[v10[9] * *&v25[16 * v5 + 32]], &(*v139)[v10[9] * v99], v59);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v99 < v98)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1C6C73C90(v97);
        }

        if (a3 >= *(v97 + 2))
        {
          goto LABEL_109;
        }

        v100 = &v97[16 * a3];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        v149 = v97;
        sub_1C6C73C04(v5);
        v25 = v149;
        v57 = *(v149 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v25[16 * v57 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_110;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_111;
      }

      v71 = &v25[16 * v57];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_113;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_116;
      }

      if (v75 >= v67)
      {
        v93 = &v25[16 * v5 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_120;
        }

        if (v62 < v96)
        {
          v5 = v57 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v23 = v139[1];
    v24 = v134;
    a4 = v128;
    if (v134 >= v23)
    {
      goto LABEL_95;
    }
  }

  v133 = v6;
  v101 = *v139;
  v102 = v10[9];
  v143 = v10[2];
  v103 = &v101[v102 * (v42 - 1)];
  v104 = v26;
  v105 = -v102;
  v127 = v104;
  v106 = (v104 - v42);
  v141 = v101;
  v130 = v102;
  v107 = &v101[v42 * v102];
  v134 = v5;
LABEL_85:
  v140 = v42;
  v135 = v107;
  v136 = v106;
  v108 = v107;
  v137 = v103;
  while (1)
  {
    v109 = v147;
    v110 = v143;
    (v143)(v147, v108, v9, v21);
    v111 = v148;
    v110(v148, v103, v9);
    sub_1C6D792D0();
    v113 = v112;
    sub_1C6D792D0();
    v115 = v114;
    v116 = *v145;
    (*v145)(v111, v9);
    v117 = v109;
    a3 = v9;
    v116(v117, v9);
    if (v115 >= v113)
    {
LABEL_84:
      v42 = v140 + 1;
      v103 = &v137[v130];
      v106 = v136 - 1;
      v5 = v134;
      v107 = &v135[v130];
      if (v140 + 1 != v134)
      {
        goto LABEL_85;
      }

      v6 = v133;
      v10 = v138;
      v26 = v127;
      if (v134 < v127)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v141)
    {
      break;
    }

    v118 = *v144;
    v119 = v142;
    (*v144)(v142, v108, v9);
    swift_arrayInitWithTakeFrontToBack();
    v118(v103, v119, v9);
    v103 += v105;
    v108 += v105;
    if (__CFADD__(v106++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1C6D17160(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v130 = a1;
  sub_1C6C74F64(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v132 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v143 = &v127 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v149 = &v127 - v19;
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v20, v21);
  v148 = &v127 - v23;
  v140 = a3;
  v24 = *(a3 + 8);
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v130;
    if (!*v130)
    {
      goto LABEL_134;
    }

    a3 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v122 = a3;
    }

    else
    {
LABEL_128:
      v122 = sub_1C6C73C90(a3);
    }

    v150 = v122;
    a3 = *(v122 + 2);
    if (a3 >= 2)
    {
      while (*v140)
      {
        v123 = *&v122[16 * a3];
        v124 = v122;
        v125 = *&v122[16 * a3 + 24];
        sub_1C6D195C4(&(*v140)[v11[9] * v123], &(*v140)[v11[9] * *&v122[16 * a3 + 16]], &(*v140)[v11[9] * v125], v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v125 < v123)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_1C6C73C90(v124);
        }

        if (a3 - 2 >= *(v124 + 2))
        {
          goto LABEL_122;
        }

        v126 = &v124[16 * a3];
        *v126 = v123;
        *(v126 + 1) = v125;
        v150 = v124;
        sub_1C6C73C04(a3 - 1);
        v122 = v150;
        a3 = *(v150 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v25 = 0;
  v146 = (v11 + 1);
  v147 = v11 + 2;
  v145 = (v11 + 4);
  v26 = MEMORY[0x1E69E7CC0];
  v139 = v11;
  v129 = a4;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v133 = v26;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
    }

    else
    {
      v141 = v24;
      v134 = v6;
      v29 = v11[9];
      v5 = &(*v140)[v29 * v28];
      v137 = *v140;
      v30 = v137;
      v31 = v11[2];
      v32 = v148;
      v31(v148, &v137[v29 * v28], v10, v22);
      v33 = &v30[v29 * v27];
      v34 = v149;
      v142 = v31;
      (v31)(v149, v33, v10);
      sub_1C6D79090();
      v36 = v35;
      sub_1C6D79090();
      v38 = v37;
      v39 = v27;
      v40 = v11[1];
      a3 = v146;
      v40(v34, v10);
      v138 = v40;
      v40(v32, v10);
      v128 = v39;
      v41 = v39 + 2;
      v144 = v29;
      v42 = &v137[v29 * (v39 + 2)];
      while (1)
      {
        v43 = v141;
        if (v141 == v41)
        {
          break;
        }

        a3 = v148;
        v44 = v142;
        v142(v148, v42, v10);
        v45 = v149;
        v44(v149, v5, v10);
        sub_1C6D79090();
        v47 = v46;
        sub_1C6D79090();
        v49 = v48;
        v50 = v138;
        (v138)(v45, v10);
        v50(a3, v10);
        v11 = v139;
        ++v41;
        v42 += v144;
        v5 += v144;
        if (v38 < v36 == v49 >= v47)
        {
          v43 = v41 - 1;
          break;
        }
      }

      v51 = v133;
      v6 = v134;
      a4 = v129;
      v27 = v128;
      if (v38 < v36)
      {
        if (v43 < v128)
        {
          goto LABEL_125;
        }

        if (v128 < v43)
        {
          v52 = v43;
          a3 = v144 * (v43 - 1);
          v5 = v43 * v144;
          v141 = v43;
          v53 = v128 * v144;
          do
          {
            if (v27 != --v52)
            {
              v134 = v6;
              v54 = *v140;
              if (!*v140)
              {
                goto LABEL_131;
              }

              v55 = *v145;
              (*v145)(v132, &v54[v53], v10, v51);
              if (v53 < a3 || &v54[v53] >= &v54[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v53 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v55(&v54[a3], v132, v10);
              v51 = v133;
              v6 = v134;
            }

            ++v27;
            a3 -= v144;
            v5 -= v144;
            v53 += v144;
          }

          while (v27 < v52);
          v11 = v139;
          a4 = v129;
          v27 = v128;
          v43 = v141;
        }
      }
    }

    v56 = v140[1];
    if (v43 < v56)
    {
      if (__OFSUB__(v43, v27))
      {
        goto LABEL_124;
      }

      if (v43 - v27 < a4)
      {
        if (__OFADD__(v27, a4))
        {
          goto LABEL_126;
        }

        if (v27 + a4 >= v56)
        {
          v5 = v140[1];
        }

        else
        {
          v5 = v27 + a4;
        }

        if (v5 < v27)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v5)
        {
          break;
        }
      }
    }

    v5 = v43;
    if (v43 < v27)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = v133;
    }

    else
    {
      v26 = sub_1C6B657D0(0, *(v133 + 2) + 1, 1, v133);
    }

    a3 = *(v26 + 2);
    v57 = *(v26 + 3);
    v58 = a3 + 1;
    if (a3 >= v57 >> 1)
    {
      v26 = sub_1C6B657D0((v57 > 1), a3 + 1, 1, v26);
    }

    *(v26 + 2) = v58;
    v59 = &v26[16 * a3];
    *(v59 + 4) = v27;
    *(v59 + 5) = v5;
    v60 = *v130;
    if (!*v130)
    {
      goto LABEL_133;
    }

    v135 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v61 = *(v26 + 4);
          v62 = *(v26 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_52:
          if (v64)
          {
            goto LABEL_112;
          }

          v77 = &v26[16 * v58];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_115;
          }

          v83 = &v26[16 * v5 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_119;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v5 = v58 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v87 = &v26[16 * v58];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_66:
        if (v82)
        {
          goto LABEL_114;
        }

        v90 = &v26[16 * v5];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_117;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v58)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v140)
        {
          goto LABEL_130;
        }

        v98 = v26;
        v99 = *&v26[16 * a3 + 32];
        v100 = *&v26[16 * v5 + 40];
        sub_1C6D195C4(&(*v140)[v11[9] * v99], &(*v140)[v11[9] * *&v26[16 * v5 + 32]], &(*v140)[v11[9] * v100], v60);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v100 < v99)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1C6C73C90(v98);
        }

        if (a3 >= *(v98 + 2))
        {
          goto LABEL_109;
        }

        v101 = &v98[16 * a3];
        *(v101 + 4) = v99;
        *(v101 + 5) = v100;
        v150 = v98;
        sub_1C6C73C04(v5);
        v26 = v150;
        v58 = *(v150 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v26[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_110;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_111;
      }

      v72 = &v26[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_113;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_116;
      }

      if (v76 >= v68)
      {
        v94 = &v26[16 * v5 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_120;
        }

        if (v63 < v97)
        {
          v5 = v58 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v24 = v140[1];
    v25 = v135;
    a4 = v129;
    if (v135 >= v24)
    {
      goto LABEL_95;
    }
  }

  v134 = v6;
  v102 = *v140;
  v103 = v11[9];
  v144 = v11[2];
  v104 = &v102[v103 * (v43 - 1)];
  v105 = v27;
  v106 = -v103;
  v128 = v105;
  v107 = (v105 - v43);
  v142 = v102;
  v131 = v103;
  v108 = &v102[v43 * v103];
  v135 = v5;
LABEL_85:
  v141 = v43;
  v136 = v108;
  v137 = v107;
  v109 = v108;
  v138 = v104;
  while (1)
  {
    v110 = v148;
    v111 = v144;
    (v144)(v148, v109, v10, v22);
    v112 = v149;
    v111(v149, v104, v10);
    sub_1C6D79090();
    v114 = v113;
    sub_1C6D79090();
    v116 = v115;
    v117 = *v146;
    (*v146)(v112, v10);
    v118 = v110;
    a3 = v10;
    v117(v118, v10);
    if (v116 >= v114)
    {
LABEL_84:
      v43 = v141 + 1;
      v104 = &v138[v131];
      v107 = v137 - 1;
      v5 = v135;
      v108 = &v136[v131];
      if (v141 + 1 != v135)
      {
        goto LABEL_85;
      }

      v6 = v134;
      v11 = v139;
      v27 = v128;
      if (v135 < v128)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v142)
    {
      break;
    }

    v119 = *v145;
    v120 = v143;
    (*v145)(v143, v109, v10);
    swift_arrayInitWithTakeFrontToBack();
    v119(v104, v120, v10);
    v104 += v106;
    v109 += v106;
    if (__CFADD__(v107++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1C6D17B88(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v82 = a3;
  v9 = sub_1C6D79040();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  MEMORY[0x1EEE9AC00](&v67 - v18, v19);
  v23 = &v67 - v22;
  v78 = *(v24 + 72);
  if (!v78)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v78 == -1)
  {
    goto LABEL_66;
  }

  v25 = v82 - a2;
  if (v82 - a2 == 0x8000000000000000 && v78 == -1)
  {
    goto LABEL_67;
  }

  v26 = (a2 - a1) / v78;
  v85 = a1;
  v84 = a4;
  v80 = v9;
  if (v26 >= v25 / v78)
  {
    v76 = v21;
    v77 = v15;
    v28 = v25 / v78 * v78;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v28;
    if (v28 >= 1)
    {
      v42 = v77;
      v43 = -v78;
      v73 = (v10 + 16);
      v74 = (v10 + 8);
      v44 = v41;
      v79 = a4;
      v70 = a1;
      v71 = -v78;
      do
      {
        v81 = v5;
        v68 = v41;
        v45 = a2;
        v46 = a2 + v43;
        v72 = v46;
        v75 = v45;
        while (1)
        {
          v49 = v82;
          if (v45 <= a1)
          {
            v85 = v45;
            v65 = v68;
LABEL_62:
            v83 = v65;
            goto LABEL_64;
          }

          v69 = v41;
          v78 = v44;
          v50 = v44 + v43;
          v51 = *v73;
          v52 = v80;
          (*v73)(v42, v44 + v43, v80);
          v53 = v46;
          v54 = v43;
          v55 = v76;
          v56 = (v51)(v76, v53, v52);
          v57 = v81;
          v58 = sub_1C6D09028(v56, v42, v55);
          v81 = v57;
          if (v57)
          {
            v66 = *v74;
            (*v74)(v55, v52);
            v66(v42, v52);
            v85 = v75;
            v65 = v69;
            goto LABEL_62;
          }

          v59 = v58;
          v82 = v49 + v54;
          v60 = *v74;
          (*v74)(v55, v52);
          v60(v42, v52);
          if (v59)
          {
            break;
          }

          v41 = v50;
          v61 = v70;
          if (v49 < v78 || v82 >= v78)
          {
            swift_arrayInitWithTakeFrontToBack();
            v43 = v71;
            v46 = v72;
            v47 = v79;
          }

          else
          {
            v43 = v71;
            v46 = v72;
            v47 = v79;
            if (v49 != v78)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v44 = v50;
          v48 = v50 > v47;
          v42 = v77;
          a1 = v61;
          v45 = v75;
          if (!v48)
          {
            a2 = v75;
            goto LABEL_63;
          }
        }

        a1 = v70;
        if (v49 < v75 || v82 >= v75)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v63 = v79;
          v5 = v81;
          v41 = v69;
          v43 = v71;
        }

        else
        {
          v62 = v49 == v75;
          v43 = v71;
          a2 = v72;
          v63 = v79;
          v5 = v81;
          v41 = v69;
          if (!v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v42 = v77;
        v44 = v78;
      }

      while (v78 > v63);
    }

LABEL_63:
    v85 = a2;
    v83 = v41;
  }

  else
  {
    v27 = v26 * v78;
    v77 = v20;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v76 = a4 + v27;
    v83 = a4 + v27;
    if (v27 >= 1 && a2 < v82)
    {
      v30 = *(v10 + 16);
      v75 = v10 + 16;
      v73 = v30;
      v74 = (v10 + 8);
      while (1)
      {
        v31 = a2;
        v32 = a4;
        v33 = v73;
        (v73)(v23, a2, v9);
        v34 = v23;
        v35 = v77;
        v79 = v32;
        v36 = (v33)(v77, v32, v9);
        v37 = sub_1C6D09028(v36, v34, v35);
        if (v5)
        {
          break;
        }

        v38 = v37;
        v81 = 0;
        v39 = *v74;
        (*v74)(v35, v9);
        v39(v34, v9);
        v23 = v34;
        if (v38)
        {
          v40 = v78;
          a2 = v31 + v78;
          if (a1 < v31 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v79;
        }

        else
        {
          v40 = v78;
          a4 = v79 + v78;
          a2 = v31;
          if (a1 < v79 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v84 = a4;
        }

        a1 += v40;
        v85 = a1;
        v5 = v81;
        if (a4 < v76)
        {
          v9 = v80;
          if (a2 < v82)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v64 = *v74;
      (*v74)(v35, v9);
      v64(v34, v9);
    }
  }

LABEL_64:
  sub_1C6C73CA4(&v85, &v84, &v83);
}

void sub_1C6D18224(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v69 = sub_1C6D79040();
  v8 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v9);
  v67 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v66 = &v57 - v13;
  v65 = *(v14 + 72);
  if (!v65)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v65 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v65 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v65;
  v72 = a1;
  v71 = a4;
  if (v16 >= v15 / v65)
  {
    v18 = v15 / v65 * v65;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v18;
    if (v18 >= 1)
    {
      v37 = -v65;
      v61 = (v8 + 8);
      v62 = (v8 + 16);
      v38 = v36;
      v59 = a1;
      v60 = a4;
      v63 = -v65;
      do
      {
        v57 = v36;
        v39 = a2;
        v40 = a2 + v37;
        v64 = a2;
        v65 = a2 + v37;
        while (1)
        {
          if (v39 <= a1)
          {
            v72 = v39;
            v70 = v57;
            goto LABEL_59;
          }

          v41 = a3;
          v58 = v36;
          v68 = a3 + v37;
          v42 = v38 + v37;
          v43 = *v62;
          v44 = v66;
          v45 = v69;
          (*v62)(v66, v38 + v37, v69);
          v46 = v67;
          v47 = (v43)(v67, v40, v45);
          v48 = MEMORY[0x1CCA568F0](v47);
          v49 = sub_1C6D79010();
          [v49 sortingScore];
          v51 = v50;

          v52 = sub_1C6D79010();
          [v52 sortingScore];
          v54 = v53;

          objc_autoreleasePoolPop(v48);
          v55 = *v61;
          (*v61)(v46, v45);
          v55(v44, v45);
          if (v54 < v51)
          {
            break;
          }

          v36 = v42;
          a3 = v68;
          if (v41 < v38 || v68 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v40 = v65;
            a1 = v59;
          }

          else
          {
            v40 = v65;
            a1 = v59;
            if (v41 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v38 = v42;
          v37 = v63;
          v39 = v64;
          if (v42 <= v60)
          {
            a2 = v64;
            goto LABEL_58;
          }
        }

        a3 = v68;
        if (v41 < v64 || v68 >= v64)
        {
          a2 = v65;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v58;
          a1 = v59;
          v37 = v63;
        }

        else
        {
          v56 = v41 == v64;
          a2 = v65;
          v36 = v58;
          a1 = v59;
          v37 = v63;
          if (!v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v38 > v60);
    }

LABEL_58:
    v72 = a2;
    v70 = v36;
  }

  else
  {
    v17 = v16 * v65;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v17;
    v70 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v62 = *(v8 + 16);
      v63 = v8 + 16;
      v61 = (v8 + 8);
      v68 = a3;
      do
      {
        v20 = v66;
        v21 = v69;
        v22 = v62;
        (v62)(v66, a2, v69);
        v23 = v67;
        v24 = (v22)(v67, a4, v21);
        v25 = MEMORY[0x1CCA568F0](v24);
        v26 = sub_1C6D79010();
        [v26 sortingScore];
        v28 = v27;

        v29 = sub_1C6D79010();
        [v29 sortingScore];
        v31 = v30;

        objc_autoreleasePoolPop(v25);
        v32 = *v61;
        (*v61)(v23, v21);
        v32(v20, v21);
        if (v31 >= v28)
        {
          v33 = v65;
          v35 = a4 + v65;
          if (a1 < a4 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v68;
          }

          else
          {
            v34 = v68;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v71 = v35;
          a4 += v33;
        }

        else
        {
          v33 = v65;
          if (a1 < a2 || a1 >= a2 + v65)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v33;
            v34 = v68;
          }

          else
          {
            v34 = v68;
            if (a1 == a2)
            {
              a2 += v65;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              a2 += v33;
            }
          }
        }

        a1 += v33;
        v72 = a1;
      }

      while (a4 < v64 && a2 < v34);
    }
  }

LABEL_59:
  sub_1C6C73CA4(&v72, &v71, &v70);
}

void sub_1C6D18840(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v70 = sub_1C6D79040();
  v8 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v9);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v68 = &v58 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_64;
  }

  v17 = (a2 - a1) / v15;
  v73 = a1;
  v72 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v19;
    if (v19 >= 1)
    {
      v37 = -v15;
      v62 = (v8 + 8);
      v63 = (v8 + 16);
      v38 = v36;
      v60 = a1;
      v61 = a4;
      v64 = -v15;
      do
      {
        v59 = v36;
        v39 = a2 + v37;
        v40 = v36;
        v66 = a2;
        v67 = a2 + v37;
        while (1)
        {
          if (a2 <= a1)
          {
            v73 = a2;
            v36 = v59;
            goto LABEL_60;
          }

          v42 = a3;
          v65 = v40;
          v43 = a3 + v37;
          v44 = v38 + v37;
          v45 = *v63;
          v46 = v39;
          v47 = v70;
          v48 = v68;
          (*v63)(v68, v44, v70);
          v49 = v46;
          v50 = v69;
          v45(v69, v49, v47);
          v51 = sub_1C6D79010();
          [v51 personalizationScore];
          v53 = v52;

          v54 = sub_1C6D79010();
          [v54 personalizationScore];
          v56 = v55;

          v57 = *v62;
          (*v62)(v50, v47);
          v57(v48, v47);
          if (v56 < v53)
          {
            break;
          }

          v40 = v44;
          a3 = v43;
          if (v42 < v38 || v43 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v67;
            a1 = v60;
          }

          else
          {
            v39 = v67;
            a1 = v60;
            if (v42 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v38 = v44;
          v41 = v44 > v61;
          v37 = v64;
          a2 = v66;
          if (!v41)
          {
            v36 = v40;
            goto LABEL_59;
          }
        }

        a3 = v43;
        if (v42 < v66 || v43 >= v66)
        {
          a2 = v67;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v37 = v64;
        }

        else
        {
          a2 = v67;
          a1 = v60;
          v37 = v64;
          if (v42 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v36 = v65;
      }

      while (v38 > v61);
    }

LABEL_59:
    v73 = a2;
LABEL_60:
    v71 = v36;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v18;
    v71 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v63 = *(v8 + 16);
      v64 = v8 + 16;
      v62 = (v8 + 8);
      v65 = a3;
      v67 = v15;
      do
      {
        v21 = a4;
        v22 = v68;
        v23 = v70;
        v24 = v63;
        (v63)(v68, a2, v70);
        v25 = v69;
        (v24)(v69, v21, v23);
        v26 = sub_1C6D79010();
        [v26 personalizationScore];
        v28 = v27;

        v29 = sub_1C6D79010();
        [v29 personalizationScore];
        v31 = v30;

        v32 = *v62;
        (*v62)(v25, v23);
        v32(v22, v23);
        if (v31 >= v28)
        {
          v35 = v67;
          a4 = v21 + v67;
          if (a1 < v21 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v65;
          }

          else
          {
            v34 = v65;
            if (a1 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v72 = a4;
        }

        else
        {
          v33 = a2 + v67;
          a4 = v21;
          if (a1 < a2 || a1 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v33;
            v34 = v65;
          }

          else
          {
            v34 = v65;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v33;
          }

          v35 = v67;
        }

        a1 += v35;
        v73 = a1;
      }

      while (a4 < v66 && a2 < v34);
    }
  }

  sub_1C6C73CA4(&v73, &v72, &v71);
}

uint64_t sub_1C6D18E30(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_1C6D19024(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = sub_1C6D79300();
  v8 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v9);
  v65 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v64 = &v54 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v69 = a1;
  v68 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v19;
    if (v19 >= 1)
    {
      v36 = -v15;
      v58 = a4;
      v59 = (v8 + 16);
      v56 = (v8 + 8);
      v57 = a1;
      v37 = v35;
      v60 = -v15;
      do
      {
        v55 = v35;
        v38 = a2;
        v39 = a2 + v36;
        v62 = v38;
        v63 = v39;
        while (1)
        {
          if (v38 <= a1)
          {
            v69 = v38;
            v67 = v55;
            goto LABEL_58;
          }

          v41 = a3;
          v61 = v35;
          v42 = a3 + v36;
          v43 = v37 + v36;
          v44 = *v59;
          v45 = v64;
          v46 = v66;
          (*v59)(v64, v43, v66);
          v47 = v39;
          v48 = v65;
          (v44)(v65, v47, v46);
          sub_1C6D792D0();
          v50 = v49;
          sub_1C6D792D0();
          v52 = v51;
          v53 = *v56;
          (*v56)(v48, v46);
          v53(v45, v46);
          if (v52 < v50)
          {
            break;
          }

          v35 = v43;
          a3 = v42;
          if (v41 < v37 || v42 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v63;
            a1 = v57;
          }

          else
          {
            v39 = v63;
            a1 = v57;
            if (v41 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v43;
          v40 = v43 > v58;
          v36 = v60;
          v38 = v62;
          if (!v40)
          {
            a2 = v62;
            goto LABEL_57;
          }
        }

        a3 = v42;
        if (v41 < v62 || v42 >= v62)
        {
          a2 = v63;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v57;
          v36 = v60;
          v35 = v61;
        }

        else
        {
          a2 = v63;
          a1 = v57;
          v36 = v60;
          v35 = v61;
          if (v41 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v37 > v58);
    }

LABEL_57:
    v69 = a2;
    v67 = v35;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v18;
    v67 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v21 = *(v8 + 16);
      v61 = a3;
      v62 = v8 + 16;
      v59 = (v8 + 8);
      v60 = v21;
      v22 = v65;
      do
      {
        v23 = a1;
        v24 = v64;
        v25 = a2;
        v26 = v66;
        v27 = a2;
        v28 = v60;
        (v60)(v64, v25, v66);
        v28(v22, a4, v26);
        sub_1C6D792D0();
        v30 = v29;
        sub_1C6D792D0();
        v32 = v31;
        v33 = *v59;
        (*v59)(v22, v26);
        v33(v24, v26);
        if (v32 >= v30)
        {
          v34 = v23;
          if (v23 < a4 || v23 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v27;
          }

          else
          {
            a2 = v27;
            if (v23 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = a4 + v15;
          a4 += v15;
        }

        else
        {
          a2 = v27 + v15;
          v34 = v23;
          if (v23 < v27 || v23 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v23 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v34 + v15;
        v69 = a1;
      }

      while (a4 < v63 && a2 < v61);
    }
  }

LABEL_58:
  sub_1C6C73DBC(&v69, &v68, &v67);
}

void sub_1C6D195C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_1C6C74F64(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v62 = &v53 - v15;
  v61 = *(v16 + 72);
  if (!v61)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v61 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v61 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v61;
  v66 = a1;
  v65 = a4;
  if (v18 >= v17 / v61)
  {
    v20 = v17 / v61 * v61;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v20;
    if (v20 >= 1)
    {
      v36 = -v61;
      v58 = (v10 + 16);
      v59 = -v61;
      v54 = (v10 + 8);
      v55 = a1;
      v37 = v35;
      v56 = a4;
      do
      {
        v53 = v35;
        v38 = a2;
        v39 = a2 + v36;
        v60 = v38;
        v61 = v39;
        while (1)
        {
          if (v38 <= a1)
          {
            v66 = v38;
            v64 = v53;
            goto LABEL_59;
          }

          v41 = a3;
          v57 = v35;
          v42 = a3 + v36;
          v43 = v37 + v36;
          v44 = *v58;
          v45 = v62;
          (*v58)(v62, v43, v9);
          v46 = v39;
          v47 = v63;
          v44(v63, v46, v9);
          sub_1C6D79090();
          v49 = v48;
          sub_1C6D79090();
          v51 = v50;
          v52 = *v54;
          (*v54)(v47, v9);
          v52(v45, v9);
          if (v51 < v49)
          {
            break;
          }

          v35 = v43;
          a3 = v42;
          if (v41 < v37 || v42 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v61;
            a1 = v55;
          }

          else
          {
            v39 = v61;
            a1 = v55;
            if (v41 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v43;
          v40 = v43 > v56;
          v36 = v59;
          v38 = v60;
          if (!v40)
          {
            a2 = v60;
            goto LABEL_58;
          }
        }

        a3 = v42;
        if (v41 < v60 || v42 >= v60)
        {
          a2 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v55;
          v35 = v57;
          v36 = v59;
        }

        else
        {
          a2 = v61;
          a1 = v55;
          v35 = v57;
          v36 = v59;
          if (v41 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v37 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v35;
  }

  else
  {
    v19 = v18 * v61;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v19;
    v64 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      v58 = *(v10 + 16);
      v59 = v10 + 16;
      v22 = (v10 + 8);
      v57 = a3;
      do
      {
        v23 = a1;
        v24 = v62;
        v25 = v58;
        (v58)(v62, a2, v9);
        v26 = v63;
        (v25)(v63, a4, v9);
        sub_1C6D79090();
        v28 = v27;
        sub_1C6D79090();
        v30 = v29;
        v31 = *v22;
        (*v22)(v26, v9);
        v31(v24, v9);
        if (v30 >= v28)
        {
          v32 = v61;
          v34 = a4 + v61;
          v33 = v23;
          if (v23 < a4 || v23 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v23 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v65 = v34;
          a4 += v32;
        }

        else
        {
          v32 = v61;
          v33 = v23;
          if (v23 < a2 || v23 >= a2 + v61)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v23 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v32;
        }

        a1 = v33 + v32;
        v66 = a1;
      }

      while (a4 < v60 && a2 < v57);
    }
  }

LABEL_59:
  sub_1C6C73DD4(&v66, &v65, &v64);
}

void *sub_1C6D19B84(uint64_t a1)
{
  sub_1C6C2C290();
  result = sub_1C6D79EF0();
  v3 = result;
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v25 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v26 + 56) + 8 * v15);

      result = [v19 doubleValue];
      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v3[7] + 8 * v15) = v21;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v3[2] = v24;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C6D19CFC(uint64_t result, int64_t a2, uint64_t a3)
{
  if (result < 0)
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
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1C6B672F8(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  sub_1C6D19DD0(result, a2, 1, a3, v14);
  *v3 = v5;
}

void sub_1C6D19DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *v5;
  sub_1C6D1BE54(0, &qword_1EDCE7B20, MEMORY[0x1E6968FB0], sub_1C6B68D1C, "url size ");
  v13 = *(*(v11 - 8) + 72);
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = *(*(v11 - 8) + 80);
  v15 = v10 + ((v12 + 32) & ~v12);
  v16 = v15 + v13 * a1;
  swift_arrayDestroy();
  v17 = a3 - v14;
  if (__OFSUB__(a3, v14))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v13 * a3;
  if (v17)
  {
    v19 = *(v10 + 16);
    if (!__OFSUB__(v19, a2))
    {
      v20 = v16 + v18;
      v21 = v15 + v13 * a2;
      if (v16 + v18 < v21 || v20 >= v21 + (v19 - a2) * v13)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v20 != v21)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v23 = *(v10 + 16);
      v24 = __OFADD__(v23, v17);
      v25 = v23 + v17;
      if (!v24)
      {
        *(v10 + 16) = v25;
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
  if (a3 < 1 || v18 < 1 || (sub_1C6D1BFCC(a4, v16, &qword_1EDCE7B20, MEMORY[0x1E6968FB0], sub_1C6B68D1C, "url size "), v13 >= v18))
  {
    sub_1C6D1BEDC(a4, sub_1C6D1BF3C);
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_1C6D19FBC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11)
{
  ObjectType = swift_getObjectType();
  v53[3] = a10;
  v53[4] = a11;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v53);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_2, a4, a10);
  a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_disableArticleScoring] = 0;
  *&a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore] = a1;
  sub_1C6B16F28(a2, v61);
  v19 = swift_allocObject();
  sub_1C6B15E34(v61, v19 + 16);
  sub_1C6B16F28(a2, v59);
  v20 = swift_allocObject();
  sub_1C6B15E34(v59, v20 + 16);
  v57 = a1;
  sub_1C6B14DC0(0);
  swift_allocObject();
  v47 = a1;
  *&a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext] = sub_1C6D762F0();
  sub_1C6B16F28(a2, &a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager]);
  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  (*(v22 + 8))(v54, v21, v22);
  v23 = v54[3];
  sub_1C6B11190(v54);
  v24 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  swift_beginAccess();
  *&v59[0] = v23;
  sub_1C6D1B5C8(0);
  swift_allocObject();
  *&a9[v24] = sub_1C6D78220();
  swift_endAccess();
  v25 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  (*(v26 + 8))(&v55, v25, v26);
  sub_1C6B11190(&v55);
  LOBYTE(v23) = v56;
  v27 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__clientSideEngagementBoostEnabled;
  swift_beginAccess();
  LOBYTE(v59[0]) = v23;
  sub_1C6B1B44C(0, &unk_1EDCEA7A0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  *&a9[v27] = sub_1C6D78220();
  swift_endAccess();
  v28 = a2[3];
  v29 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v28);
  (*(v29 + 8))(&v57, v28, v29);
  sub_1C6B11190(&v57);
  LOBYTE(v23) = v58;
  v30 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__fallbackToReverseChronSorting;
  swift_beginAccess();
  LOBYTE(v59[0]) = v23;
  swift_allocObject();
  *&a9[v30] = sub_1C6D78220();
  swift_endAccess();
  v31 = a2[3];
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v31);
  (*(v32 + 8))(v59, v31, v32);
  v33 = v60;
  sub_1C6B11190(v59);
  v34 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__publisherDampeningConfig;
  swift_beginAccess();
  v52 = v33;
  sub_1C6D1B630(0);
  swift_allocObject();
  *&a9[v34] = sub_1C6D78220();
  swift_endAccess();
  v35 = a2[3];
  v36 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v35);
  (*(v36 + 8))(v61, v35, v36);
  v37 = v62;
  sub_1C6B11190(v61);
  v38 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__shadowPublisherDampeningConfig;
  swift_beginAccess();
  v51 = v37;
  swift_allocObject();
  *&a9[v38] = sub_1C6D78220();
  swift_endAccess();
  *&a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_translationProvider] = a3;
  sub_1C6B16F28(v53, &a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider]);
  sub_1C6B15028(a5, &a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService], sub_1C6D1A758);
  *&a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceCohortMembershipService] = a6;
  *&a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_tracker] = a7;
  sub_1C6B15028(a8, &a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_recipeScoringService], sub_1C6D1AEF4);
  v50.receiver = a9;
  v50.super_class = ObjectType;
  swift_unknownObjectRetain();

  v39 = objc_msgSendSuper2(&v50, sel_init);
  v40 = a2[3];
  v41 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v40);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = *(v41 + 32);
  v44 = v39;

  v43(sub_1C6D1C0FC, v42, v40, v41);

  swift_unknownObjectRelease();

  sub_1C6D1BEDC(a8, sub_1C6D1AEF4);
  sub_1C6D1BEDC(a5, sub_1C6D1A758);
  __swift_destroy_boxed_opaque_existential_1(v53);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v44;
}

id sub_1C6D1A630(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = a7;
  v25 = a8;
  v23 = a6;
  v16 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a9, a2);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v19);
  (*(v16 + 16))(v18, a4, a10);
  return sub_1C6D19FBC(a1, a2, a3, v18, a5, v23, v24, v25, v20, a10, a11);
}

void sub_1C6D1A758(uint64_t a1)
{
  if (!qword_1EDCEA6B0[0])
  {
    sub_1C6B10A98(255, &unk_1EDCEA940, &protocol descriptor for ComputeServiceScoringServiceType);
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, qword_1EDCEA6B0);
    }
  }
}

void sub_1C6D1A7C0()
{
  if (!qword_1EDCEA950)
  {
    v0 = sub_1C6D77220();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA950);
    }
  }
}

uint64_t sub_1C6D1A818(uint64_t a1, double a2)
{
  sub_1C6D1BE54(0, &unk_1EDCEA850, MEMORY[0x1E69E31C8], MEMORY[0x1E69E35A8], "key value ");
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6D1A8AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), double a4)
{
  sub_1C6D1BE00(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6D1A908(uint64_t a1)
{
  v3 = *(sub_1C6D75F50() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1C6D77D80() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_1C6D09F54(a1, (v1 + v4), v7, v8);
}

void sub_1C6D1A9EC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_1C6B673B4((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  sub_1C6D79040();
  swift_arrayInitWithCopy();
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6[2];
  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 < 0)
  {
LABEL_13:
    __break(1u);
  }
}

unint64_t sub_1C6D1AB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = *v7;
  result = sub_1C6D79040();
  v16 = *(*(result - 8) + 72);
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v15 = *(*(result - 8) + 80);
  v18 = v13 + ((v15 + 32) & ~v15);
  v19 = v18 + v16 * a1;
  result = swift_arrayDestroy();
  v20 = __OFSUB__(a3, v17);
  v21 = a3 - v17;
  if (v20)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = *(v13 + 16);
  if (__OFSUB__(v22, a2))
  {
    goto LABEL_24;
  }

  result = v19 + v16 * a3;
  v23 = v18 + v16 * a2;
  if (result < v23 || result >= v23 + (v22 - a2) * v16)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v23)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v25 = *(v13 + 16);
  v20 = __OFADD__(v25, v21);
  v26 = v25 + v21;
  if (v20)
  {
    goto LABEL_25;
  }

  *(v13 + 16) = v26;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (__OFSUB__(a7 >> 1, a6))
  {
    goto LABEL_26;
  }

  if ((a7 >> 1) - a6 != a3)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1C6D1ACB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v16 > v8[3] >> 1)
  {
    if (v9 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v9;
    }

    v8 = sub_1C6B658F8(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = sub_1C6D1AB00(v10, a2, v13, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

unint64_t sub_1C6D1ADB8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v6;
  v10 = *(*v6 + 16);
  if (v10 < a5 || v10 < a6)
  {
    goto LABEL_16;
  }

  if (a6 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = result;
  v16 = sub_1C6D79040();
  v17 = *(v16 - 8);
  result = v16 - 8;
  if (v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * a5 == a2 + *(v17 + 72) * a3)
  {
    if ((a4 >> 1) >= a3)
    {
      if (a5 == a3 && a4 >> 1 == a6)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_18:
    __break(1u);
    return result;
  }

LABEL_8:

  return sub_1C6D1ACB0(a5, a6, v15, a2, a3, a4);
}

void sub_1C6D1AEF4(uint64_t a1)
{
  if (!qword_1EDCEA548[0])
  {
    sub_1C6B10A98(255, &unk_1EDCEA930, &protocol descriptor for RecipeScoringServiceType);
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, qword_1EDCEA548);
    }
  }
}

BOOL sub_1C6D1AF80()
{
  sub_1C6D790C0();
  sub_1C6D79090();
  v1 = v0;
  sub_1C6D79090();
  return v2 < v1;
}

double _s19NewsPersonalization20XavierScoringServiceC10groupScore7recipesSdSay0A4Feed0I12ScoredRecipeVyxGG_tSo16FCRecipeScorableRzlF_0(uint64_t a1, uint64_t a2)
{
  v7 = *&a1;
  v6[2] = a2;
  sub_1C6D790C0();
  v2 = sub_1C6D79820();
  WitnessTable = swift_getWitnessTable();
  sub_1C6D04140(sub_1C6D1BD8C, v6, v2, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v4);
  sub_1C6D1BDAC();
  sub_1C6D797B0();

  return v7;
}

double sub_1C6D1B0CC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v23 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1C6B39260(0, v9, 0);
    v10 = v24;
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v21 = *(v11 + 56);
    v22 = v12;
    do
    {
      v14 = v22(v8, v13, v4);
      v15 = v23(v14);
      [v15 sortingScore];
      v17 = v16;

      (*(v11 - 8))(v8, v4);
      v24 = v10;
      v19 = *(*&v10 + 16);
      v18 = *(*&v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C6B39260((v18 > 1), v19 + 1, 1);
        v10 = v24;
      }

      *(*&v10 + 16) = v19 + 1;
      *(*&v10 + 8 * v19 + 32) = v17;
      v13 += v21;
      --v9;
    }

    while (v9);
  }

  sub_1C6D1BDAC();
  sub_1C6D797B0();

  return v24;
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1C6D1B320(uint64_t a1)
{
  if (!qword_1EDCEA528)
  {
    sub_1C6D791C0();
    sub_1C6D791A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCEA528);
    }
  }
}

void sub_1C6D1B398(uint64_t a1)
{
  if (!qword_1EDCE6370)
  {
    sub_1C6D75F90();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE6370);
    }
  }
}

void sub_1C6D1B400(uint64_t a1)
{
  if (!qword_1EDCDF908)
  {
    sub_1C6D75F90();
    sub_1C6D1C040(&unk_1EDCE6360, 255, MEMORY[0x1E6969B18], MEMORY[0x1E6969B20]);
    v1 = sub_1C6D79A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF908);
    }
  }
}

void sub_1C6D1B498(uint64_t a1, double a2)
{
  if (!qword_1EDCDF758)
  {
    sub_1C6D1B530(255, a2);
    sub_1C6D1C040(&qword_1EDCDF3D0, 255, sub_1C6D1B530, MEMORY[0x1E69E74F8]);
    v2 = sub_1C6D79E70();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDCDF758);
    }
  }
}

void sub_1C6D1B530(uint64_t a1, double a2)
{
  if (!qword_1EDCDF3C0)
  {
    sub_1C6D75FF0();
    sub_1C6D1C040(&unk_1EDCE6328, 255, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v2 = sub_1C6D7A230();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDCDF3C0);
    }
  }
}
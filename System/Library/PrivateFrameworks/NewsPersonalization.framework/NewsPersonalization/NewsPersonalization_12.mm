uint64_t SportsRecommendationService.recommendedTags()()
{
  sub_1C6C40494(0);
  sub_1C6D783A0();
  v0 = sub_1C6D78210();
  sub_1C6C405B0(0);
  sub_1C6D782C0();

  *(swift_allocObject() + 16) = 0;
  v1 = sub_1C6D78210();
  v2 = sub_1C6D782D0();

  return v2;
}

uint64_t SportsRecommendationService.recommendedTags(within:)(uint64_t a1)
{
  sub_1C6C40494(0);
  sub_1C6D783A0();
  v2 = sub_1C6D78210();
  sub_1C6C405B0(0);
  sub_1C6D782C0();

  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  v3 = sub_1C6D78210();
  v4 = sub_1C6D782D0();

  return v4;
}

void sub_1C6C3A4DC(void *a1)
{
  v2 = v1;
  v4 = sub_1C6D75F50();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C4070C(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v21 - v15;
  sub_1C6B0C69C(0, &qword_1EDCEA510, 0x1E69B5250);
  sub_1C6D75F30();
  [a1 recentlyFollowedDurationThreshold];
  sub_1C6D75EC0();
  (*(v5 + 8))(v8, v4);
  v17 = *(v5 + 56);
  v17(v16, 0, 1, v4);
  sub_1C6D75F30();
  v17(v12, 0, 1, v4);
  v18 = sub_1C6D0477C(v16, v12);
  v19 = v2[28];
  v20 = v2[29];
  __swift_project_boxed_opaque_existential_1(v2 + 25, v19);
  (*(v20 + 8))(v18, v19, v20);
}

char *sub_1C6C3A728(unint64_t a1, void *a2)
{
  v4 = sub_1C6D76860();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D767B0();
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D76B00();
  v69 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D79170();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a2 respondsToSelector_];
  v72 = a1;
  if ((v21 & 1) == 0 || ![a2 enableTabiCohortMemberships])
  {
    v63 = v12;
    v36 = [a2 personalizationTreatment];
    (*(v16 + 104))(v20, *MEMORY[0x1E69B5A20], v15);
    v65 = v36;
    v37 = sub_1C6D79130();
    (*(v16 + 8))(v20, v15);
    v62 = v37;
    sub_1C6C3A4DC(v37);
    if (a1 >> 62)
    {
      v38 = sub_1C6D79E90();
    }

    else
    {
      v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v4;
    if (v38)
    {
      v73 = MEMORY[0x1E69E7CC0];
      v22 = &v73;
      sub_1C6B39280(0, v38 & ~(v38 >> 63), 0);
      if (v38 < 0)
      {
        __break(1u);
        goto LABEL_32;
      }

      v60 = v8;
      v61 = v5;
      v39 = 0;
      v40 = v73;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x1CCA56240](v39, v72);
        }

        else
        {
          v41 = *(v72 + 8 * v39 + 32);
          swift_unknownObjectRetain();
        }

        v42 = [v41 identifier];
        v43 = sub_1C6D795A0();
        v45 = v44;
        swift_unknownObjectRelease();

        v73 = v40;
        v47 = *(v40 + 16);
        v46 = *(v40 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1C6B39280((v46 > 1), v47 + 1, 1);
          v40 = v73;
        }

        ++v39;
        *(v40 + 16) = v47 + 1;
        v48 = v40 + 16 * v47;
        *(v48 + 32) = v43;
        *(v48 + 40) = v45;
      }

      while (v38 != v39);
      v8 = v60;
      v5 = v61;
    }

    v73 = v71[2];
    v49 = v73;
    sub_1C6B14DC0(0);
    swift_allocObject();
    v50 = v49;
    v73 = sub_1C6D762F0();
    v51 = v70;
    sub_1C6D76AF0();
    v52 = v65;
    result = [v65 defaultScoringConfig];
    if (result)
    {
      v53 = result;
      [result decayFactor];

      v54 = v66;
      v55 = v62;
      sub_1C6B7C3F0(v62, 0, 0, v66);
      sub_1C6D76790();
      (*(v67 + 8))(v54, v68);
      sub_1C6C406A8(&unk_1EDCEA820, 255, sub_1C6B14DC0, MEMORY[0x1E69E3290]);
      v56 = sub_1C6D76400();

      (*(v5 + 8))(v8, v64);
      (*(v69 + 8))(v51, v63);

      __swift_destroy_boxed_opaque_existential_1(v74);
      return v56;
    }

    goto LABEL_34;
  }

  v22 = v71[24];
  if (a1 >> 62)
  {
LABEL_32:
    v23 = sub_1C6D79E90();
    goto LABEL_5;
  }

  v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v24 = MEMORY[0x1E69E7CC0];
  if (!v23)
  {
LABEL_29:
    v57 = sub_1C6B1E610(v24);

    v58 = ComputeServiceCohortMembershipService.evaluate(tags:)(v57);

    v59 = sub_1C6CDD9A4(v58);

    return v59;
  }

  v71 = v22;
  v74[0] = MEMORY[0x1E69E7CC0];
  result = sub_1C6B39280(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v24 = v74[0];
    v27 = a1 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v28 = MEMORY[0x1CCA56240](v26, a1);
      }

      else
      {
        v28 = *(a1 + 8 * v26 + 32);
        swift_unknownObjectRetain();
      }

      v29 = [v28 identifier];
      v30 = sub_1C6D795A0();
      v32 = v31;
      swift_unknownObjectRelease();

      v74[0] = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1C6B39280((v33 > 1), v34 + 1, 1);
        v24 = v74[0];
      }

      ++v26;
      *(v24 + 16) = v34 + 1;
      v35 = v24 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      a1 = v72;
    }

    while (v23 != v26);
    goto LABEL_29;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id sub_1C6C3AE78(void *a1, void *a2, unint64_t a3)
{
  v5 = sub_1C6C3A728(a3, a1);
  v6 = 0.0;
  if ([a1 respondsToSelector_])
  {
    [a1 minMembershipForTaxonomyCandidates];
    v6 = v7;
  }

  v35 = MEMORY[0x1E69E7CC0];
  v8 = a3 >> 62;
  if (!(a3 >> 62))
  {
    v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_25:
    v25 = MEMORY[0x1E69E7CC0];
LABEL_26:

    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    v26 = off_1EDCE18E8;
    sub_1C6B1D314(0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C6D807C0;
    if (v8)
    {
      v28 = sub_1C6D79E90();
    }

    else
    {
      v28 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = MEMORY[0x1E69E6530];
    v30 = MEMORY[0x1E69E65A8];
    *(v27 + 56) = MEMORY[0x1E69E6530];
    *(v27 + 64) = v30;
    *(v27 + 32) = v28;
    if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
    {
      v31 = sub_1C6D79E90();
    }

    else
    {
      v31 = *(v25 + 16);
    }

    *(v27 + 96) = v29;
    *(v27 + 104) = v30;
    *(v27 + 72) = v31;
    sub_1C6D79910();
    *(v27 + 136) = MEMORY[0x1E69E6158];
    *(v27 + 144) = sub_1C6B2064C();
    *(v27 + 112) = 0;
    *(v27 + 120) = 0xE000000000000000;
    v32 = sub_1C6D79AC0();
    sub_1C6D78D30("Filtered from %lu tags in taxonomy to %lu candidate tags due to min membership requirement of %{public}@", 104, 2, &dword_1C6B09000, v26, v32, v27);

    return v25;
  }

LABEL_24:
  v9 = sub_1C6D79E90();
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_5:
  v10 = 0;
  v33 = v8;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCA56240](v10, a3);
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        v25 = v35;
        v8 = v33;
        goto LABEL_26;
      }
    }

    else
    {
      if (v10 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_24;
      }

      v11 = *(a3 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }
    }

    result = [a2 defaultScoringConfig];
    if (!result)
    {
      break;
    }

    v13 = result;
    v14 = [result userCohort];

    [v14 userBaseline];
    v16 = v15;

    v17 = [v11 identifier];
    v18 = sub_1C6D795A0();
    v20 = v19;

    if (*(v5 + 2))
    {
      v21 = sub_1C6B5DEA8(v18, v20);
      v23 = v22;

      if (v23)
      {
        v24 = *(v5 + 7) + 16 * v21;
        if ((*(v24 + 8) & 1) == 0)
        {
          v16 = *v24;
        }
      }
    }

    else
    {
    }

    if (v6 > v16)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C6D79DC0();
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
    }

    ++v10;
    if (v8 == v9)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C3B210(id *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  result = [*a1 isSportsRecommendable];
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v7 = sub_1C6D76070();
    v8 = [v5 identifier];
    v9 = sub_1C6D795A0();
    v11 = v10;

    LOBYTE(v8) = sub_1C6B1E978(v9, v11, v7);

    if (v8)
    {
      return 0;
    }

    v12 = sub_1C6C3B418(v5);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v13 = sub_1C6D76080();
    v14 = sub_1C6C3B534(v12, v13);

    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v15 = [*(a3 + 24) appConfiguration];
    if ([v15 respondsToSelector_])
    {
      v16 = [v15 sportsRecommendationHidesIgnoredTags];
      swift_unknownObjectRelease();
      if (v16)
      {
        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        v17 = sub_1C6D76090();
        v18 = [v5 identifier];
        v19 = sub_1C6D795A0();
        v21 = v20;

        LOBYTE(v18) = sub_1C6B1E978(v19, v21, v17);

        if (v18)
        {
          return 0;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 1;
  }

  return result;
}

uint64_t sub_1C6C3B418(void *a1)
{
  v2 = [a1 topLevelGroupsTagIdentifiers];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C6D79780();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1C6B1E610(v4);

  v17 = v5;
  v6 = [a1 identifier];
  v7 = sub_1C6D795A0();
  v9 = v8;

  sub_1C6B1E6A8(&v16, v7, v9);

  v10 = [a1 topLevelSportTagIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C6D795A0();
    v14 = v13;

    sub_1C6B1E6A8(&v16, v12, v14);
  }

  return v17;
}

uint64_t sub_1C6C3B534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_1C6D7A260();

      sub_1C6D79610();
      v19 = sub_1C6D7A2B0();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_1C6D7A130() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C3B71C(void *a1, uint64_t a2)
{
  swift_getObjectType();
  sub_1C6D79B50();
  __swift_project_boxed_opaque_existential_1(a1 + 9, a1[12]);
  sub_1C6BDF2C4(a2);
  __swift_project_boxed_opaque_existential_1(a1 + 19, a1[22]);
  sub_1C6D79310();
  sub_1C6B1AC10();
  swift_allocObject();
  sub_1C6D78350();
  v4 = sub_1C6D78380();

  return v4;
}

void sub_1C6C3B834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C6C40F6C;
  *(v10 + 24) = v8;
  v12[4] = sub_1C6BF507C;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C6B20B90;
  v12[3] = &block_descriptor_6;
  v11 = _Block_copy(v12);

  [v9 prepareAggregatesForUseWithCompletionHandler_];
  _Block_release(v11);
}

id sub_1C6C3B948(uint64_t a1, void *a2)
{
  v4 = sub_1C6D79170();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  LOBYTE(a1) = [*a1 respondsToSelector_];
  v33 = v11;
  swift_unknownObjectRetain();

  v13 = v12;
  v32 = v13;
  if ((a1 & 1) != 0 && ![v33 considerAutofavoritesInMappingCandidates])
  {
    v19 = [v13 subscribedTags];
    sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
    v18 = sub_1C6D79780();
  }

  else
  {
    v14 = [v13 subscribedTags];
    sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
    v15 = sub_1C6D79780();

    v16 = [v13 autoFavoriteTags];
    v17 = sub_1C6D79780();

    v35[0] = v15;
    sub_1C6B38CC4(v17);
    v18 = v35[0];
  }

  v20 = [v33 personalizationTreatment];
  (*(v5 + 104))(v9, *MEMORY[0x1E69B5A20], v4);
  v21 = sub_1C6D79130();
  (*(v5 + 8))(v9, v4);
  sub_1C6C3A4DC(v21);
  __swift_project_boxed_opaque_existential_1(a2 + 14, a2[17]);
  v31 = v21;
  if (v10 >> 62)
  {
    sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);

    v23 = sub_1C6D79EC0();
  }

  else
  {
    v22 = v10 & 0xFFFFFFFFFFFFFF8;

    sub_1C6D7A180();
    sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
    v23 = v10;
    if (!swift_dynamicCastMetatype())
    {
      v28 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v10;
      if (v28)
      {
        v29 = v22 + 32;
        while (1)
        {
          v35[6] = &unk_1F46987B8;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v29 += 8;
          if (!--v28)
          {
            v23 = v10;
            goto LABEL_7;
          }
        }

        v23 = v22 | 1;
      }
    }
  }

LABEL_7:
  v34[0] = v23;

  sub_1C6B38CC4(v24);
  v30[1] = sub_1C6BBC0E4(v34[0]);

  __swift_project_boxed_opaque_existential_1(a2 + 14, a2[17]);
  sub_1C6BBC0E4(v18);

  __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
  sub_1C6BB32CC(v35);
  v34[0] = v33;
  sub_1C6C40DC4(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_1C6D78300();
  v34[0] = v20;
  sub_1C6C40E2C(0);
  swift_allocObject();
  v30[0] = v20;
  sub_1C6D78300();
  v34[0] = v10;
  sub_1C6C4070C(0, &qword_1EDCE5D60, sub_1C6C40548, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1C6D78300();
  v25 = v31;
  v34[0] = v31;
  sub_1C6C40E94(0);
  swift_allocObject();
  v26 = v25;
  sub_1C6D78300();
  sub_1C6B16F28(v35, v34);
  sub_1C6C40EFC(0);
  swift_allocObject();
  sub_1C6D78300();
  v31 = sub_1C6D78370();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v31;
}

uint64_t sub_1C6C3BED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t **a4@<X8>)
{
  v79 = a3;
  v75 = a2;
  v72 = a4;
  sub_1C6C405B0(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB5940(0);
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for SportsTopicMappingServiceResult(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  isUniquelyReferenced_nonNull_native = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v65 - v20;
  sub_1C6C4086C(a1, v9, sub_1C6C405B0);
  v22 = v6[14];
  v23 = v6[18];
  v24 = *&v9[v6[22]];
  v25 = *&v9[v6[26]];
  v26 = *&v9[v6[30]];
  v67 = *&v9[v6[34]];
  v77 = v6[38];
  v78 = v23;
  v69 = v21;
  sub_1C6C40C30(v9, v21, type metadata accessor for SportsTopicMappingServiceResult);
  sub_1C6C40C30(&v9[v22], isUniquelyReferenced_nonNull_native, type metadata accessor for SportsTopicMappingServiceResult);
  v27 = *(v73 + 32);
  v71 = v13;
  v27(v13, &v9[v78], v74);
  sub_1C6B15E34(&v9[v77], v81);
  v66 = v24;
  v68 = v25;
  v28 = sub_1C6C3AE78(v24, v25, v26);

  if (v79)
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = *isUniquelyReferenced_nonNull_native;
  }

  v82 = v28;

  sub_1C6B38BB4(v30);
  v31 = v82;
  if (qword_1EDCE18E0 != -1)
  {
LABEL_42:
    swift_once();
  }

  v79 = off_1EDCE18E8;
  sub_1C6B1D314(0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C6D807C0;
  v70 = isUniquelyReferenced_nonNull_native;
  if (v31 >> 62)
  {
    v33 = sub_1C6D79E90();
  }

  else
  {
    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = MEMORY[0x1E69E6530];
  v35 = MEMORY[0x1E69E65A8];
  *(v32 + 56) = MEMORY[0x1E69E6530];
  *(v32 + 64) = v35;
  *(v32 + 32) = v33;
  if (v28 >> 62)
  {
    v36 = sub_1C6D79E90();
  }

  else
  {
    v36 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v32 + 96) = v34;
  *(v32 + 104) = v35;
  *(v32 + 72) = v36;
  if (v29 >> 62)
  {
    v37 = sub_1C6D79E90();
  }

  else
  {
    v37 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v80;

  *(v32 + 136) = v34;
  *(v32 + 144) = v35;
  *(v32 + 112) = v37;
  sub_1C6D79AC0();
  sub_1C6D78D30("Found %lu total candidate tags including %lu from taxonomy and %lu from mappings.", v65, v66, v67);

  MEMORY[0x1EEE9AC00](v38, v39);
  *(&v65 - 2) = v81;
  *(&v65 - 1) = v75;
  v40 = sub_1C6C390C0(sub_1C6C408D4, &v65 - 4, v31);
  v65 = v28;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C6D7EB10;
  *(v31 + 56) = v34;
  *(v31 + 64) = v35;
  *(v31 + 32) = v33;
  if (v40 >> 62)
  {
    v41 = sub_1C6D79E90();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v31 + 96) = v34;
  *(v31 + 104) = v35;
  *(v31 + 72) = v41;
  sub_1C6D79AC0();
  sub_1C6D78D30("Filtered from %lu candidate tags to %lu recommendable and unfollowed candidates.", v65, v66);

  if (v40 >> 62)
  {
    isUniquelyReferenced_nonNull_native = sub_1C6D79E90();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_15:
      v42 = 0;
      v78 = v40 & 0xFFFFFFFFFFFFFF8;
      v79 = (v40 & 0xC000000000000001);
      v29 = MEMORY[0x1E69E7CC8];
      v76 = isUniquelyReferenced_nonNull_native;
      v77 = v40;
      while (1)
      {
        if (v79)
        {
          v43 = MEMORY[0x1CCA56240](v42, v40);
          v44 = (v42 + 1);
          if (__OFADD__(v42, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v42 >= *(v78 + 16))
          {
            goto LABEL_39;
          }

          v43 = *(v40 + 8 * v42 + 32);
          swift_unknownObjectRetain();
          v44 = (v42 + 1);
          if (__OFADD__(v42, 1))
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }
        }

        v80 = v44;
        v45 = [v43 identifier];
        v46 = sub_1C6D795A0();
        v48 = v47;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v29;
        v31 = v29;
        v50 = sub_1C6B5DEA8(v46, v48);
        v51 = *(v29 + 16);
        v52 = (v49 & 1) == 0;
        v53 = v51 + v52;
        if (__OFADD__(v51, v52))
        {
          goto LABEL_40;
        }

        v28 = v49;
        if (*(v29 + 24) >= v53)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v49)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v31 = &v82;
            sub_1C6B74780();
            if (v28)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          sub_1C6B71754(v53, isUniquelyReferenced_nonNull_native);
          v31 = v82;
          v54 = sub_1C6B5DEA8(v46, v48);
          if ((v28 & 1) != (v55 & 1))
          {
            result = sub_1C6D7A1C0();
            __break(1u);
            return result;
          }

          v50 = v54;
          if (v28)
          {
LABEL_16:

            v29 = v82;
            *(v82[7] + 8 * v50) = v43;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_17;
          }
        }

        v29 = v82;
        v82[(v50 >> 6) + 8] |= 1 << v50;
        v56 = (*(v29 + 48) + 16 * v50);
        *v56 = v46;
        v56[1] = v48;
        *(*(v29 + 56) + 8 * v50) = v43;
        swift_unknownObjectRelease();
        v57 = *(v29 + 16);
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_41;
        }

        *(v29 + 16) = v59;
LABEL_17:
        ++v42;
        isUniquelyReferenced_nonNull_native = v76;
        v40 = v77;
        if (v80 == v76)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC8];
LABEL_37:

  v60 = v71;
  v61 = v67;
  v63 = v68;
  v62 = v69;
  sub_1C6C3C664(v29, v66, v68, v67, v81, v71, v69, v72);

  swift_unknownObjectRelease();

  (*(v73 + 8))(v60, v74);
  sub_1C6C40C98(v70, type metadata accessor for SportsTopicMappingServiceResult);
  sub_1C6C40C98(v62, type metadata accessor for SportsTopicMappingServiceResult);
  return __swift_destroy_boxed_opaque_existential_1(v81);
}

uint64_t sub_1C6C3C664@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void (**a6)(void, uint64_t)@<X5>, uint64_t a7@<X6>, unint64_t **a8@<X8>)
{
  v187 = a7;
  v190 = a6;
  v188 = a5;
  v192 = a4;
  v198 = a3;
  v215 = a2;
  v178 = a8;
  v9 = MEMORY[0x1E69E6530];
  sub_1C6C408F4(0, &qword_1EDCDF920, type metadata accessor for SportsRecommendedScoredTag, MEMORY[0x1E69E6530], "offset element ");
  v209 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v208 = (v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v173 = v168 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v207 = v168 - v18;
  sub_1C6C4070C(0, qword_1EDCE1148, type metadata accessor for SportsRecommendedScoredTag, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v212 = (v168 - v21);
  v217 = type metadata accessor for SportsRecommendedScoredTag(0);
  v211 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217, v22);
  v24 = v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v214 = v168 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v205 = v168 - v30;
  sub_1C6B3CA94(0);
  v197 = v31;
  v216 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (v168 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35, v36);
  v204 = (v168 - v37);
  v210 = sub_1C6D76BD0();
  v200 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210, v38);
  *&v203 = v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1E69E6158];
  sub_1C6C408F4(0, &qword_1EDCDFBA8, MEMORY[0x1E69E3560], MEMORY[0x1E69E6158], "key value ");
  v196 = v41;
  MEMORY[0x1EEE9AC00](v41, v42);
  v195 = (v168 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44, v45);
  v202 = (v168 - v46);
  v186 = sub_1C6D76860();
  v185 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186, v47);
  v184 = v168 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1C6D767B0();
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181, v49);
  v179 = v168 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1C6D76B00();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183, v51);
  v191 = v168 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1C6D76190();
  j = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175, v53);
  v174 = v168 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55, v56);
  v172 = v168 - v57;
  v58 = sub_1C6D76F80();
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v60);
  v189 = v168 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCE6110 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v63 = sub_1C6D77170();
    if (v63)
    {
      if (qword_1EC1D58E0 != -1)
      {
        goto LABEL_78;
      }

      goto LABEL_4;
    }

    for (i = 0; ; i = v222)
    {
      v65 = [v198 sportsTagScoringConfig];
      if (!v65)
      {
        goto LABEL_81;
      }

      v66 = v65;
      sub_1C6B7DDF0(i, (v63 & 1) == 0);

      if (qword_1EDCE18E0 != -1)
      {
        swift_once();
      }

      v176 = v59;
      v67 = off_1EDCE18E8;
      sub_1C6B1D314(0);
      v220 = v68;
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1C6D7EB10;
      v70 = a1[2];
      v71 = MEMORY[0x1E69E65A8];
      *(v69 + 56) = v9;
      *(v69 + 64) = v71;
      *(v69 + 32) = v70;
      v222 = 0;
      v223 = 0xE000000000000000;
      v177 = v58;
      sub_1C6D79E60();
      v72 = v222;
      v73 = v223;
      *(v69 + 96) = v40;
      v219 = sub_1C6B2064C();
      *(v69 + 104) = v219;
      *(v69 + 72) = v72;
      *(v69 + 80) = v73;
      v74 = sub_1C6D79AC0();
      v218 = v67;
      sub_1C6D78D30("Scoring %lu tags for sports recommendations with configuration %{public}@", 73, 2, &dword_1C6B09000, v67, v74, v69);

      v75 = a1[2];
      v213 = a1;
      v199 = v34;
      if (!v75)
      {
        break;
      }

      v59 = sub_1C6B6732C(v75, 0);
      v9 = sub_1C6B68220(&v222, (v59 + 32), v75, a1);
      a1 = v222;
      v34 = v223;
      v63 = v224;
      v58 = v225;

      sub_1C6B688C4(a1);
      if (v9 == v75)
      {
        a1 = v213;
        goto LABEL_13;
      }

      __break(1u);
LABEL_78:
      swift_once();
LABEL_4:
      sub_1C6C406A8(&qword_1EC1D8220, v62, type metadata accessor for SportsRecommendationService, &protocol conformance descriptor for SportsRecommendationService);
      sub_1C6D77110();
    }

    v59 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v206 = v24;
    v58 = *(v59 + 16);
    if (v58)
    {
      break;
    }

    v201 = MEMORY[0x1E69E7CC8];
LABEL_33:
    v100 = *(v194 + 16);
    v101 = swift_allocObject();
    v102 = v192;
    v103 = v198;
    *(v101 + 16) = v192;
    *(v101 + 24) = v103;
    *(swift_allocObject() + 16) = v103;
    v222 = v100;
    sub_1C6B14DC0(0);
    v63 = v104;
    swift_allocObject();
    v34 = v103;
    v105 = v100;
    v106 = v102;
    v24 = sub_1C6D762F0();
    v222 = v24;
    [v106 baselineRatePrior];
    [v34 baselineImpressionPrior];
    [v34 baselineImpressionPrior];
    v107 = v191;
    sub_1C6D76AF0();
    v108 = [v34 defaultScoringConfig];
    if (!v108)
    {
      goto LABEL_82;
    }

    v109 = v108;
    [v108 decayFactor];

    type metadata accessor for SportsTopicMappingServiceResult(0);
    v110 = v179;
    sub_1C6B7C3F0(v106, 0, 0, v179);
    v111 = v184;
    sub_1C6D76790();
    (*(v180 + 8))(v110, v181);
    *&v221 = MEMORY[0x1E69E7CC0];
    sub_1C6C40A58(MEMORY[0x1E69E7CC0]);
    sub_1C6C406A8(&unk_1EDCEA820, 255, sub_1C6B14DC0, MEMORY[0x1E69E3290]);
    v112 = sub_1C6D76410();

    (*(v185 + 8))(v111, v186);
    (*(v182 + 8))(v107, v183);

    v113 = v112 + 64;
    v114 = 1 << *(v112 + 32);
    v115 = -1;
    if (v114 < 64)
    {
      v115 = ~(-1 << v114);
    }

    v9 = v115 & *(v112 + 64);
    v59 = (v114 + 63) >> 6;
    v192 = (v200 + 16);
    v191 = (v200 + 32);
    v190 = (v200 + 8);
    v198 = v112;

    v40 = 0;
    a1 = v212;
    v58 = v213;
    v34 = v199;
    v194 = v112 + 64;
    for (j = v59; v9; v58 = v213)
    {
LABEL_41:
      v117 = __clz(__rbit64(v9)) | (v40 << 6);
      v118 = *(v198 + 7);
      v119 = (*(v198 + 6) + 16 * v117);
      v120 = *v119;
      v201 = v119[1];
      v121 = v201;
      v122 = v200;
      v123 = v196;
      v24 = *(v200 + 16);
      v124 = v202;
      v125 = v210;
      (v24)(v202 + *(v196 + 48), v118 + *(v200 + 72) * v117, v210);
      *v124 = v120;
      v124[1] = v121;
      v126 = v124;
      v127 = v195;
      sub_1C6C40B60(v126, v195, &qword_1EDCDFBA8, MEMORY[0x1E69E3560], MEMORY[0x1E69E6158], "key value ");
      v128 = *v127;
      v129 = v127[1];
      v130 = *(v122 + 32);
      v131 = v203;
      v130(v203, v127 + *(v123 + 48), v125);
      v132 = *(v197 + 48);
      v133 = v204;
      *v204 = v128;
      v133[1] = v129;
      (v24)(v133 + v132, v131, v125);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v221 = sub_1C6B669F4(0, *(v221 + 16) + 1, 1, v221);
      }

      v135 = *(v221 + 16);
      v134 = *(v221 + 24);
      v34 = v199;
      v136 = MEMORY[0x1E69E6158];
      v113 = v194;
      v59 = j;
      if (v135 >= v134 >> 1)
      {
        *&v221 = sub_1C6B669F4((v134 > 1), v135 + 1, 1, v221);
      }

      v9 &= v9 - 1;
      (*v190)(v203, v210);
      sub_1C6C40BD4(v202, &qword_1EDCDFBA8, MEMORY[0x1E69E3560], v136, "key value ");
      v137 = v221;
      *(v221 + 16) = v135 + 1;
      sub_1C6C40C30(v204, v137 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v135, sub_1C6B3CA94);
      a1 = v212;
    }

    while (1)
    {
      v116 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if (v116 >= v59)
      {
        break;
      }

      v9 = *(v113 + 8 * v116);
      v40 = (v40 + 1);
      if (v9)
      {
        v40 = v116;
        goto LABEL_41;
      }
    }

    v222 = v221;

    sub_1C6C3EBEC(&v222);

    v138 = v222;
    v9 = *(v222 + 2);
    v139 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v59 = 0;
      v40 = (v211 + 48);
      *&v221 = MEMORY[0x1E69E7CC0];
      v24 = qword_1EDCE1148;
      while (v59 < *(v138 + 2))
      {
        sub_1C6C4086C(&v138[((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v59], v34, sub_1C6B3CA94);
        sub_1C6C3E0A4(v34, v58, v215, a1);
        sub_1C6C40C98(v34, sub_1C6B3CA94);
        if ((*v40)(a1, 1, v217) == 1)
        {
          sub_1C6C40CF8(a1, qword_1EDCE1148, type metadata accessor for SportsRecommendedScoredTag);
        }

        else
        {
          v140 = a1;
          v141 = v205;
          sub_1C6C40C30(v140, v205, type metadata accessor for SportsRecommendedScoredTag);
          sub_1C6C40C30(v141, v214, type metadata accessor for SportsRecommendedScoredTag);
          v142 = v221;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_1C6B669C0(0, v142[2] + 1, 1, v142);
          }

          v144 = v142[2];
          v143 = v142[3];
          *&v221 = v142;
          if (v144 >= v143 >> 1)
          {
            *&v221 = sub_1C6B669C0((v143 > 1), v144 + 1, 1, v221);
          }

          v145 = v221;
          *(v221 + 16) = v144 + 1;
          sub_1C6C40C30(v214, v145 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v144, type metadata accessor for SportsRecommendedScoredTag);
          a1 = v212;
          v58 = v213;
        }

        if (v9 == ++v59)
        {
          goto LABEL_59;
        }
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    *&v221 = MEMORY[0x1E69E7CC0];
LABEL_59:

    v9 = v221;
    v146 = *(v221 + 16);
    if (!v146)
    {

      result = (*(v176 + 8))(v189, v177);
      v147 = MEMORY[0x1E69E7CC0];
LABEL_69:
      *v178 = v147;
      return result;
    }

    v222 = v139;
    sub_1C6B39784(0, v146, 0);
    v58 = 0;
    v147 = v222;
    v205 = *(v9 + 16);
    v201 = (*(v211 + 80) + 32) & ~*(v211 + 80);
    v204 = (v9 + v201);
    v40 = &qword_1EDCDF920;
    v24 = "offset element ";
    v203 = xmmword_1C6D80210;
    v59 = MEMORY[0x1E69E6530];
    v34 = v173;
    v202 = v146;
    while (v205 != v58)
    {
      if (v58 >= *(v9 + 16))
      {
        goto LABEL_74;
      }

      v215 = v147;
      v148 = v209;
      v149 = *(v209 + 48);
      v214 = *(v211 + 72);
      v150 = v207;
      sub_1C6C4086C(v204 + v214 * v58, &v207[v149], type metadata accessor for SportsRecommendedScoredTag);
      v213 = v58;
      *v34 = v58;
      sub_1C6C40C30(&v150[v149], v34 + *(v148 + 48), type metadata accessor for SportsRecommendedScoredTag);
      v151 = v208;
      sub_1C6C40B60(v34, v208, v40, type metadata accessor for SportsRecommendedScoredTag, v59, "offset element ");
      v216 = *v151;
      v9 = v206;
      sub_1C6C40C30(v151 + *(v148 + 48), v206, type metadata accessor for SportsRecommendedScoredTag);
      LODWORD(v212) = sub_1C6D79A90();
      a1 = swift_allocObject();
      *(a1 + 1) = v203;
      v152 = *v9;
      v153 = [*v9 name];
      v154 = v59;
      v155 = sub_1C6D795A0();
      v157 = v156;

      v58 = v40;
      v40 = MEMORY[0x1E69E6158];
      v24 = v219;
      a1[7] = MEMORY[0x1E69E6158];
      a1[8] = v24;
      a1[4] = v155;
      a1[5] = v157;
      v158 = [v152 identifier];
      v159 = sub_1C6D795A0();
      v59 = v160;

      a1[12] = v40;
      a1[13] = v24;
      a1[9] = v159;
      a1[10] = v59;
      v161 = v216 + 1;
      if (__OFADD__(v216, 1))
      {
        goto LABEL_75;
      }

      a1[17] = v154;
      a1[18] = MEMORY[0x1E69E65A8];
      a1[14] = v161;
      sub_1C6C406A8(&unk_1EDCE6238, 255, MEMORY[0x1E69E3560], MEMORY[0x1E69E3568]);
      v162 = sub_1C6D7A0E0();
      a1[22] = v40;
      a1[23] = v24;
      a1[19] = v162;
      a1[20] = v163;
      sub_1C6D78D30("Scored %{public}@ (%{public}@) at rank %lu with scores %{public}@", 65, 2, &dword_1C6B09000, v218, v212, a1);

      v24 = "offset element ";
      sub_1C6C40BD4(v34, v58, type metadata accessor for SportsRecommendedScoredTag, v154, "offset element ");
      v147 = v215;
      v222 = v215;
      v165 = v215[2];
      v164 = v215[3];
      a1 = (v165 + 1);
      v59 = v154;
      v40 = v58;
      if (v165 >= v164 >> 1)
      {
        sub_1C6B39784((v164 > 1), v165 + 1, 1);
        v147 = v222;
      }

      v166 = v214;
      v58 = v213 + 1;
      v147[2] = a1;
      sub_1C6C40C30(v9, v147 + v201 + v165 * v166, type metadata accessor for SportsRecommendedScoredTag);
      v9 = v221;
      if (v202 == v58)
      {
        (*(v176 + 8))(v189, v177);

        goto LABEL_69;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v76 = 0;
  v171 = (j + 32);
  v168[1] = j + 40;
  v77 = v59 + 40;
  v169 = v58 - 1;
  v201 = MEMORY[0x1E69E7CC8];
  v221 = xmmword_1C6D7E630;
  v170 = v59 + 40;
  while (2)
  {
    v9 = v77 + 16 * v76;
    v78 = v76;
    while (1)
    {
      if (v78 >= *(v59 + 16))
      {
        goto LABEL_71;
      }

      v63 = *(v9 - 8);
      v34 = *v9;
      v82 = a1[2];

      if (v82)
      {
        v83 = sub_1C6B5DEA8(v63, v34);
        if (v84)
        {
          break;
        }
      }

      ++v78;
      v79 = swift_allocObject();
      *(v79 + 16) = v221;
      v80 = v219;
      *(v79 + 56) = v40;
      *(v79 + 64) = v80;
      *(v79 + 32) = v63;
      *(v79 + 40) = v34;

      v81 = sub_1C6D79AC0();
      sub_1C6D78D30("Not able to find tag for tag ID %{public}@", 42, 2, &dword_1C6B09000, v218, v81, v79);

      v9 += 16;
      if (v58 == v78)
      {
        goto LABEL_33;
      }
    }

    v24 = *(a1[7] + 8 * v83);
    [swift_unknownObjectRetain() subscriptionRate];
    LOBYTE(v222) = 1;
    v85 = v172;
    sub_1C6D76180();
    v86 = *v171;
    (*v171)(v174, v85, v175);
    v87 = v201;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v222 = v87;
    v89 = sub_1C6B5DEA8(v63, v34);
    v91 = *(v87 + 2);
    v92 = (v90 & 1) == 0;
    v93 = __OFADD__(v91, v92);
    v94 = v91 + v92;
    if (!v93)
    {
      if (*(v87 + 3) >= v94)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v201 = v89;
          v99 = v90;
          sub_1C6B73A18();
          LOBYTE(v90) = v99;
          v89 = v201;
        }
      }

      else
      {
        LODWORD(v201) = v90;
        sub_1C6B70294(v94, isUniquelyReferenced_nonNull_native);
        v89 = sub_1C6B5DEA8(v63, v34);
        v95 = v90 & 1;
        LOBYTE(v90) = v201;
        if ((v201 & 1) != v95)
        {
          goto LABEL_83;
        }
      }

      a1 = v213;
      v201 = v222;
      if (v90)
      {
        (*(j + 40))(*(v222 + 7) + *(j + 72) * v89, v174, v175);

        swift_unknownObjectRelease();
      }

      else
      {
        *&v222[8 * (v89 >> 6) + 64] |= 1 << v89;
        v96 = (*(v201 + 48) + 16 * v89);
        *v96 = v63;
        v96[1] = v34;
        v86((*(v201 + 56) + *(j + 72) * v89), v174, v175);
        swift_unknownObjectRelease();
        v97 = *(v201 + 16);
        v93 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v93)
        {
          goto LABEL_80;
        }

        *(v201 + 16) = v98;
      }

      v77 = v170;
      v76 = v78 + 1;
      if (v169 != v78)
      {
        continue;
      }

      goto LABEL_33;
    }

    break;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);

  sub_1C6C40C98(v34, sub_1C6B3CA94);

  __break(1u);
LABEL_83:
  sub_1C6D7A1C0();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C6C3E0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v70 = a4;
  v67 = a3;
  sub_1C6B3CA94(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1C6D76BD0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C4086C(a1, v10, sub_1C6B3CA94);
  v17 = *v10;
  v16 = v10[1];
  v18 = *(v7 + 56);
  v68 = v12;
  v69 = v11;
  v19 = v15;
  v66 = *(v12 + 32);
  v66(v15, v10 + v18, v11);
  if (!*(a2 + 16) || (v20 = sub_1C6B5DEA8(v17, v16), (v21 & 1) == 0))
  {
    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    v29 = off_1EDCE18E8;
    sub_1C6B1D314(0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C6D7E630;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1C6B2064C();
    *(v30 + 32) = v17;
    *(v30 + 40) = v16;
    v31 = sub_1C6D79AC0();
    sub_1C6D78D30("Not able to find tag for tag ID %{public}@", 42, 2, &dword_1C6B09000, v29, v31, v30);

    (*(v68 + 8))(v15, v69);
    goto LABEL_23;
  }

  v22 = v20;

  v23 = *(*(a2 + 56) + 8 * v22);
  swift_unknownObjectRetain();
  v24 = v15;
  sub_1C6D76BB0();
  if (v25 <= 0.0)
  {
    v26 = &selRef_minMembershipThreshold;
    v27 = v67;
    if (([v67 respondsToSelector_] & 1) == 0)
    {
      v28 = 0.051;
      goto LABEL_12;
    }

LABEL_10:
    [v27 *v26];
    v28 = v32;
    goto LABEL_12;
  }

  v26 = &selRef_minMembershipThresholdForLocalRecommendation;
  v27 = v67;
  v28 = 0.0;
  if ([v67 respondsToSelector_])
  {
    goto LABEL_10;
  }

LABEL_12:
  sub_1C6D76BC0();
  if (v28 > v33)
  {
    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    v67 = off_1EDCE18E8;
    v34 = sub_1C6D79A90();
    sub_1C6B1D314(0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C6D807C0;
    v36 = [v23 name];
    v37 = sub_1C6D795A0();
    v39 = v38;

    v40 = MEMORY[0x1E69E6158];
    *(v35 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1C6B2064C();
    *(v35 + 64) = v41;
    *(v35 + 32) = v37;
    *(v35 + 40) = v39;
    sub_1C6C406A8(&unk_1EDCE6238, 255, MEMORY[0x1E69E3560], MEMORY[0x1E69E3568]);
    v42 = v69;
    v43 = sub_1C6D7A0E0();
    *(v35 + 96) = v40;
    *(v35 + 104) = v41;
    *(v35 + 72) = v43;
    *(v35 + 80) = v44;
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1C6D79910();
    v45 = v71;
    v46 = v72;
    *(v35 + 136) = v40;
    *(v35 + 144) = v41;
    *(v35 + 112) = v45;
    *(v35 + 120) = v46;
    sub_1C6D78D30("Recommendation candidate %{public}@ with scores %{public}@ did not meet min membership threshold of %{public}@.", 111, 2, &dword_1C6B09000, v67, v34, v35);
LABEL_22:
    swift_unknownObjectRelease();

    (*(v68 + 8))(v24, v42);
LABEL_23:
    v62 = type metadata accessor for SportsRecommendedScoredTag(0);
    return (*(*(v62 - 8) + 56))(v70, 1, 1, v62);
  }

  v47 = 0.0;
  if ([v27 respondsToSelector_])
  {
    [v27 minScoreThresholdForSportsRecommendations];
    v47 = v48;
  }

  sub_1C6D76BA0();
  if (v47 > v49)
  {
    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    v67 = off_1EDCE18E8;
    v50 = sub_1C6D79A90();
    sub_1C6B1D314(0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1C6D807C0;
    v52 = [v23 name];
    v53 = sub_1C6D795A0();
    v55 = v54;

    v56 = MEMORY[0x1E69E6158];
    *(v51 + 56) = MEMORY[0x1E69E6158];
    v57 = sub_1C6B2064C();
    *(v51 + 64) = v57;
    *(v51 + 32) = v53;
    *(v51 + 40) = v55;
    sub_1C6C406A8(&unk_1EDCE6238, 255, MEMORY[0x1E69E3560], MEMORY[0x1E69E3568]);
    v42 = v69;
    v58 = sub_1C6D7A0E0();
    *(v51 + 96) = v56;
    *(v51 + 104) = v57;
    *(v51 + 72) = v58;
    *(v51 + 80) = v59;
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1C6D79910();
    v60 = v71;
    v61 = v72;
    *(v51 + 136) = v56;
    *(v51 + 144) = v57;
    *(v51 + 112) = v60;
    *(v51 + 120) = v61;
    sub_1C6D78D30("Recommendation candidate %{public}@ with scores %{public}@ did not meet min score threshold of %{public}@.", 106, 2, &dword_1C6B09000, v67, v50, v51);
    goto LABEL_22;
  }

  v64 = type metadata accessor for SportsRecommendedScoredTag(0);
  v65 = v70;
  v66(v70 + *(v64 + 20), v19, v69);
  *v65 = v23;
  return (*(*(v64 - 8) + 56))(v65, 0, 1, v64);
}

uint64_t SportsRecommendationService.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));

  __swift_destroy_boxed_opaque_existential_1((v0 + 200));
  return v0;
}

uint64_t SportsRecommendationService.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));

  __swift_destroy_boxed_opaque_existential_1((v0 + 200));

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C3E7EC(uint64_t a1)
{
  sub_1C6C40494(0);
  sub_1C6D783A0();
  v1 = sub_1C6D78210();
  sub_1C6C405B0(0);
  sub_1C6D782C0();

  *(swift_allocObject() + 16) = 0;
  v2 = sub_1C6D78210();
  v3 = sub_1C6D782D0();

  return v3;
}

uint64_t sub_1C6C3E914(uint64_t a1, uint64_t a2)
{
  sub_1C6C40494(0);
  sub_1C6D783A0();
  v3 = sub_1C6D78210();
  sub_1C6C405B0(0);
  sub_1C6D782C0();

  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  v4 = sub_1C6D78210();
  v5 = sub_1C6D782D0();

  return v5;
}

uint64_t FCNewsAppConfiguration.diversificationRules.getter(double a1)
{
  sub_1C6C4070C(0, &qword_1EDCDF5D0, MEMORY[0x1E69E3598], MEMORY[0x1E69E6F90]);
  v2 = sub_1C6D76C10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6D7EB10;
  v7 = (v6 + v5);
  if ([v1 respondsToSelector_])
  {
    v8 = [v1 maxSportRecommendationsWithLeagueTypeCollege];
  }

  else
  {
    v8 = 2;
  }

  *v7 = v8;
  v9 = *(v3 + 104);
  v9(v7, *MEMORY[0x1E69E3590], v2);
  if ([v1 respondsToSelector_])
  {
    v10 = [v1 maxSportRecommendationsPerSport];
  }

  else
  {
    v10 = 3;
  }

  *(v7 + v4) = v10;
  v9((v7 + v4), *MEMORY[0x1E69E3588], v2);
  return v6;
}

void sub_1C6C3EBEC(uint64_t *a1)
{
  sub_1C6B3CA94(0);
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C6C73FA8(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1C6C3EC94(v6);
  *a1 = v4;
}

void sub_1C6C3EC94(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C6D7A0C0();
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
        sub_1C6B3CA94(0);
        v6 = sub_1C6D797F0();
        *(v6 + 16) = v5;
      }

      sub_1C6B3CA94(0);
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_1C6C3F134(v8, v9, a1, v4);
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
    sub_1C6C3EDC0(0, v2, 1, a1);
  }
}

void sub_1C6C3EDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1C6B3CA94(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v53 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v56 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v55 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v54 = &v44 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v60 = &v44 - v24;
  v46 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v23 + 72);
    v27 = *a4 + v26 * (a3 - 1);
    v51 = -v26;
    v52 = v25;
    v28 = a1 - a3;
    v45 = v26;
    v29 = v25 + v26 * a3;
    v59 = v9;
LABEL_5:
    v49 = v27;
    v50 = a3;
    v47 = v29;
    v48 = v28;
    v57 = v28;
    while (1)
    {
      v30 = v60;
      sub_1C6C4086C(v29, v60, sub_1C6B3CA94);
      v31 = v54;
      sub_1C6C4086C(v27, v54, sub_1C6B3CA94);
      v32 = v55;
      sub_1C6C4086C(v30, v55, sub_1C6B3CA94);

      v33 = *(v9 + 48);
      sub_1C6D76BA0();
      v35 = v34;
      v36 = sub_1C6D76BD0();
      v58 = *(*(v36 - 8) + 8);
      v58(v32 + v33, v36);
      v37 = v56;
      sub_1C6C4086C(v31, v56, sub_1C6B3CA94);

      v38 = *(v59 + 48);
      sub_1C6D76BA0();
      v40 = v39;
      v41 = v36;
      v9 = v59;
      v58(v37 + v38, v41);
      sub_1C6C40C98(v31, sub_1C6B3CA94);
      sub_1C6C40C98(v60, sub_1C6B3CA94);
      if (v40 >= v35)
      {
LABEL_4:
        a3 = v50 + 1;
        v27 = v49 + v45;
        v28 = v48 - 1;
        v29 = v47 + v45;
        if (v50 + 1 == v46)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v42 = v53;
      sub_1C6C40C30(v29, v53, sub_1C6B3CA94);
      swift_arrayInitWithTakeFrontToBack();
      sub_1C6C40C30(v42, v27, sub_1C6B3CA94);
      v27 += v51;
      v29 += v51;
      if (__CFADD__(v57++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6C3F134(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v150 = a1;
  sub_1C6B3CA94(0);
  v9 = v8;
  v158 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v154 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v164 = &v147 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v167 = &v147 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v166 = &v147 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v168 = &v147 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v171 = &v147 - v26;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v28 = *v150;
    if (!*v150)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v172 = v29;
      v142 = *(v29 + 16);
      if (v142 >= 2)
      {
        while (*a3)
        {
          v143 = *(v29 + 16 * v142);
          v144 = v29;
          v145 = *(v29 + 16 * (v142 - 1) + 32);
          v29 = *(v29 + 16 * (v142 - 1) + 40);
          sub_1C6C3FD58(*a3 + *(v158 + 72) * v143, *a3 + *(v158 + 72) * v145, *a3 + *(v158 + 72) * v29, v28);
          if (v5)
          {
            goto LABEL_108;
          }

          if (v29 < v143)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v144 = sub_1C6C73C90(v144);
          }

          if (v142 - 2 >= *(v144 + 2))
          {
            goto LABEL_124;
          }

          v146 = &v144[16 * v142];
          *v146 = v143;
          *(v146 + 1) = v29;
          v172 = v144;
          sub_1C6C73C04(v142 - 1);
          v29 = v172;
          v142 = *(v172 + 16);
          if (v142 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v29 = sub_1C6C73C90(v29);
    goto LABEL_100;
  }

  v148 = a4;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v151 = a3;
  v165 = v9;
  while (1)
  {
    v153 = v28;
    if (v28 + 1 >= v27)
    {
      v49 = v28 + 1;
    }

    else
    {
      v30 = v28;
      v161 = v27;
      v149 = v29;
      v31 = *a3;
      v32 = *a3 + *(v158 + 72) * (v28 + 1);
      v159 = *(v158 + 72);
      v33 = v159;
      v34 = v31;
      v170 = v31;
      v28 = v32;
      v35 = v171;
      sub_1C6C4086C(v32, v171, sub_1C6B3CA94);
      sub_1C6C4086C(v34 + v33 * v30, v168, sub_1C6B3CA94);
      v36 = v166;
      sub_1C6C4086C(v35, v166, sub_1C6B3CA94);

      v169 = *(v9 + 48);
      sub_1C6D76BA0();
      v38 = v37;
      v39 = sub_1C6D76BD0();
      v40 = *(v39 - 8);
      v41 = *(v40 + 8);
      v42 = v40 + 8;
      v41(v36 + v169, v39);
      v43 = v167;
      sub_1C6C4086C(v168, v167, sub_1C6B3CA94);

      v44 = *(v9 + 48);
      sub_1C6D76BA0();
      v46 = v45;
      v156 = v41;
      v157 = v39;
      v155 = v42;
      v41(v43 + v44, v39);
      sub_1C6C40C98(v168, sub_1C6B3CA94);
      sub_1C6C40C98(v171, sub_1C6B3CA94);
      v47 = v153 + 2;
      v48 = v170 + v159 * (v153 + 2);
      while (1)
      {
        v49 = v161;
        if (v161 == v47)
        {
          break;
        }

        LODWORD(v163) = v46 < v38;
        v169 = v47;
        v170 = v48;
        v50 = v171;
        sub_1C6C4086C(v48, v171, sub_1C6B3CA94);
        v162 = v28;
        v51 = v168;
        sub_1C6C4086C(v28, v168, sub_1C6B3CA94);
        v52 = v166;
        sub_1C6C4086C(v50, v166, sub_1C6B3CA94);

        v160 = v5;
        v53 = v165;
        v54 = *(v165 + 48);
        sub_1C6D76BA0();
        v56 = v55;
        v58 = v156;
        v57 = v157;
        (v156)(v52 + v54, v157);
        v59 = v167;
        sub_1C6C4086C(v51, v167, sub_1C6B3CA94);

        v60 = *(v53 + 48);
        v5 = v160;
        sub_1C6D76BA0();
        v62 = v61;
        v58(v59 + v60, v57);
        sub_1C6C40C98(v51, sub_1C6B3CA94);
        sub_1C6C40C98(v171, sub_1C6B3CA94);
        v47 = v169 + 1;
        v48 = v170 + v159;
        v28 = v162 + v159;
        if (((v163 ^ (v62 >= v56)) & 1) == 0)
        {
          v49 = v169;
          break;
        }
      }

      a3 = v151;
      v29 = v149;
      v9 = v165;
      if (v46 < v38)
      {
        if (v49 < v153)
        {
          goto LABEL_127;
        }

        if (v153 < v49)
        {
          v63 = v159 * (v49 - 1);
          v64 = v49 * v159;
          v161 = v49;
          v65 = v153;
          v66 = v153 * v159;
          do
          {
            if (v65 != --v49)
            {
              v67 = *a3;
              if (!v67)
              {
                goto LABEL_133;
              }

              v28 = v67 + v66;
              sub_1C6C40C30(v67 + v66, v154, sub_1C6B3CA94);
              if (v66 < v63 || v28 >= (v67 + v64))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v66 != v63)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C6C40C30(v154, v67 + v63, sub_1C6B3CA94);
              a3 = v151;
            }

            ++v65;
            v63 -= v159;
            v64 -= v159;
            v66 += v159;
          }

          while (v65 < v49);
          v29 = v149;
          v49 = v161;
        }
      }
    }

    v68 = a3[1];
    if (v49 >= v68)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v49, v153))
    {
      goto LABEL_126;
    }

    if (v49 - v153 >= v148)
    {
LABEL_33:
      v28 = v49;
      goto LABEL_34;
    }

    if (__OFADD__(v153, v148))
    {
      goto LABEL_128;
    }

    if (v153 + v148 >= v68)
    {
      v28 = a3[1];
    }

    else
    {
      v28 = v153 + v148;
    }

    if (v28 < v153)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v69 = v153;
    if (v49 == v28)
    {
      v28 = v49;
      goto LABEL_35;
    }

    v149 = v29;
    v160 = v5;
    v118 = *a3;
    v119 = *(v158 + 72);
    v120 = *a3 + v119 * (v49 - 1);
    v162 = -v119;
    v163 = v118;
    v121 = v153 - v49;
    v152 = v119;
    v122 = (v118 + v49 * v119);
    v155 = v28;
LABEL_90:
    v161 = v49;
    v156 = v122;
    v157 = v121;
    v123 = v122;
    v124 = v121;
    v159 = v120;
LABEL_91:
    v169 = v123;
    v170 = v124;
    v125 = v171;
    sub_1C6C4086C(v123, v171, sub_1C6B3CA94);
    v126 = v168;
    sub_1C6C4086C(v120, v168, sub_1C6B3CA94);
    v127 = v166;
    sub_1C6C4086C(v125, v166, sub_1C6B3CA94);

    v128 = *(v9 + 48);
    sub_1C6D76BA0();
    v130 = v129;
    v131 = v9;
    v132 = sub_1C6D76BD0();
    v133 = *(*(v132 - 8) + 8);
    v133(v127 + v128, v132);
    v134 = v167;
    sub_1C6C4086C(v126, v167, sub_1C6B3CA94);

    v135 = *(v131 + 48);
    sub_1C6D76BA0();
    v137 = v136;
    v133(v134 + v135, v132);
    sub_1C6C40C98(v126, sub_1C6B3CA94);
    sub_1C6C40C98(v171, sub_1C6B3CA94);
    if (v137 < v130)
    {
      break;
    }

    v9 = v165;
LABEL_89:
    v49 = v161 + 1;
    v120 = v159 + v152;
    v121 = v157 - 1;
    v122 = &v156[v152];
    v28 = v155;
    if (v161 + 1 != v155)
    {
      goto LABEL_90;
    }

    v5 = v160;
    a3 = v151;
    v29 = v149;
LABEL_34:
    v69 = v153;
LABEL_35:
    if (v28 < v69)
    {
      goto LABEL_125;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v155 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_1C6B657D0(0, *(v29 + 16) + 1, 1, v29);
    }

    v72 = *(v29 + 16);
    v71 = *(v29 + 24);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v29 = sub_1C6B657D0((v71 > 1), v72 + 1, 1, v29);
    }

    *(v29 + 16) = v73;
    v74 = v29 + 16 * v72;
    v75 = v155;
    *(v74 + 32) = v153;
    *(v74 + 40) = v75;
    if (!*v150)
    {
      goto LABEL_135;
    }

    if (v72)
    {
      v76 = *v150;
      while (1)
      {
        v28 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v77 = *(v29 + 32);
          v78 = *(v29 + 40);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_56:
          if (v80)
          {
            goto LABEL_114;
          }

          v93 = (v29 + 16 * v73);
          v95 = *v93;
          v94 = v93[1];
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_117;
          }

          v99 = (v29 + 32 + 16 * v28);
          v101 = *v99;
          v100 = v99[1];
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_121;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v28 = v73 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v103 = (v29 + 16 * v73);
        v105 = *v103;
        v104 = v103[1];
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_70:
        if (v98)
        {
          goto LABEL_116;
        }

        v106 = v29 + 16 * v28;
        v108 = *(v106 + 32);
        v107 = *(v106 + 40);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_119;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_77:
        v114 = v28 - 1;
        if (v28 - 1 >= v73)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v115 = *(v29 + 32 + 16 * v114);
        v116 = *(v29 + 32 + 16 * v28 + 8);
        sub_1C6C3FD58(*a3 + *(v158 + 72) * v115, *a3 + *(v158 + 72) * *(v29 + 32 + 16 * v28), *a3 + *(v158 + 72) * v116, v76);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v116 < v115)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1C6C73C90(v29);
        }

        if (v114 >= *(v29 + 16))
        {
          goto LABEL_111;
        }

        v117 = v29 + 16 * v114;
        *(v117 + 32) = v115;
        *(v117 + 40) = v116;
        v172 = v29;
        sub_1C6C73C04(v28);
        v29 = v172;
        v73 = *(v172 + 16);
        if (v73 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = v29 + 32 + 16 * v73;
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_112;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_113;
      }

      v88 = (v29 + 16 * v73);
      v90 = *v88;
      v89 = v88[1];
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_115;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_118;
      }

      if (v92 >= v84)
      {
        v110 = (v29 + 32 + 16 * v28);
        v112 = *v110;
        v111 = v110[1];
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_122;
        }

        if (v79 < v113)
        {
          v28 = v73 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v155;
    if (v155 >= v27)
    {
      goto LABEL_98;
    }
  }

  v138 = v170;
  if (v163)
  {
    v139 = v169;
    v140 = v164;
    sub_1C6C40C30(v169, v164, sub_1C6B3CA94);
    v9 = v165;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6C40C30(v140, v120, sub_1C6B3CA94);
    v120 += v162;
    v123 = v139 + v162;
    v141 = __CFADD__(v138, 1);
    v124 = v138 + 1;
    if (v141)
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

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
}

void sub_1C6C3FD58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_1C6B3CA94(0);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v71 = &v64 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v74 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v79 = &v64 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_61;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_62;
  }

  v23 = (a2 - a1) / v21;
  v82 = a1;
  v81 = a4;
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

    v43 = a4 + v25;
    if (v25 >= 1)
    {
      v44 = -v21;
      v45 = v43;
      v75 = a4;
      v76 = a1;
      v67 = v44;
      while (2)
      {
        while (1)
        {
          v65 = v43;
          v46 = a2;
          v47 = a2 + v44;
          v77 = v47;
          v68 = v46;
          while (1)
          {
            if (v46 <= a1)
            {
              v82 = v46;
              v80 = v65;
              goto LABEL_59;
            }

            v66 = v43;
            v73 = a3 + v44;
            v48 = v45 + v44;
            v49 = v79;
            v70 = a3;
            sub_1C6C4086C(v45 + v44, v79, sub_1C6B3CA94);
            v69 = v45;
            sub_1C6C4086C(v47, v74, sub_1C6B3CA94);
            v50 = v71;
            sub_1C6C4086C(v49, v71, sub_1C6B3CA94);

            v51 = v78;
            v52 = *(v78 + 48);
            sub_1C6D76BA0();
            v54 = v53;
            v55 = sub_1C6D76BD0();
            v56 = *(*(v55 - 8) + 8);
            v56(v50 + v52, v55);
            v57 = v74;
            v58 = v72;
            sub_1C6C4086C(v74, v72, sub_1C6B3CA94);

            v59 = *(v51 + 48);
            sub_1C6D76BA0();
            v61 = v60;
            v56(v58 + v59, v55);
            sub_1C6C40C98(v57, sub_1C6B3CA94);
            sub_1C6C40C98(v79, sub_1C6B3CA94);
            if (v61 < v54)
            {
              break;
            }

            v43 = v48;
            a3 = v73;
            v62 = v75;
            if (v70 < v69 || v73 >= v69)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v76;
              v47 = v77;
              v44 = v67;
            }

            else
            {
              a1 = v76;
              v47 = v77;
              v44 = v67;
              if (v70 != v69)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v45 = v48;
            v46 = v68;
            if (v48 <= v62)
            {
              a2 = v68;
              goto LABEL_58;
            }
          }

          v45 = v69;
          a3 = v73;
          v63 = v75;
          if (v70 < v68 || v73 >= v68)
          {
            break;
          }

          a1 = v76;
          a2 = v77;
          v43 = v66;
          v44 = v67;
          if (v70 != v68)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v45 <= v63)
          {
            goto LABEL_58;
          }
        }

        a2 = v77;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v76;
        v43 = v66;
        v44 = v67;
        if (v45 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v82 = a2;
    v80 = v43;
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

    v70 = a4 + v24;
    v80 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v73 = a3;
      v69 = v21;
      v27 = v78;
      do
      {
        v76 = a1;
        v77 = a2;
        v75 = a4;
        v28 = v79;
        sub_1C6C4086C(a2, v79, sub_1C6B3CA94);
        v29 = v74;
        sub_1C6C4086C(a4, v74, sub_1C6B3CA94);
        v30 = v71;
        sub_1C6C4086C(v28, v71, sub_1C6B3CA94);

        v31 = *(v27 + 48);
        sub_1C6D76BA0();
        v33 = v32;
        v34 = sub_1C6D76BD0();
        v35 = *(*(v34 - 8) + 8);
        v35(v30 + v31, v34);
        v36 = v72;
        sub_1C6C4086C(v29, v72, sub_1C6B3CA94);

        v37 = *(v27 + 48);
        sub_1C6D76BA0();
        v39 = v38;
        v35(v36 + v37, v34);
        sub_1C6C40C98(v29, sub_1C6B3CA94);
        sub_1C6C40C98(v79, sub_1C6B3CA94);
        if (v39 >= v33)
        {
          v41 = v76;
          a2 = v77;
          v40 = v69;
          a4 = v75 + v69;
          if (v76 < v75 || v76 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v73;
          }

          else
          {
            v42 = v73;
            if (v76 != v75)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v81 = a4;
        }

        else
        {
          v40 = v69;
          v41 = v76;
          a2 = v77 + v69;
          a4 = v75;
          if (v76 < v77 || v76 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v73;
          }

          else
          {
            v42 = v73;
            if (v76 != v77)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 = v41 + v40;
        v82 = a1;
      }

      while (a4 < v70 && a2 < v42);
    }
  }

LABEL_59:
  sub_1C6C73CBC(&v82, &v81, &v80);
}

uint64_t sub_1C6C40414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsRecommendedScoredTag(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C6C40494(uint64_t a1)
{
  if (!qword_1EDCDF878)
  {
    sub_1C6B0F7A8(255, &qword_1EDCE6560, &protocolRef_FCNewsAppConfiguration);
    sub_1C6C40548(255);
    sub_1C6B0C69C(255, &qword_1EDCDF8B8, 0x1E69B55F8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDCDF878);
    }
  }
}

void sub_1C6C40548(uint64_t a1)
{
  if (!qword_1EDCDF9B0)
  {
    sub_1C6B0F7A8(255, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
    v1 = sub_1C6D79820();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF9B0);
    }
  }
}

void sub_1C6C405B0(uint64_t a1)
{
  if (!qword_1EDCE0570)
  {
    type metadata accessor for SportsTopicMappingServiceResult(255);
    sub_1C6BB5940(255);
    sub_1C6B0F7A8(255, &qword_1EDCE6560, &protocolRef_FCNewsAppConfiguration);
    sub_1C6B0C69C(255, &qword_1EDCEA500, 0x1E69B5480);
    sub_1C6C40548(255);
    sub_1C6B0C69C(255, &qword_1EDCDF800, 0x1E69B5468);
    sub_1C6B10A98(255, &unk_1EDCE6308, MEMORY[0x1E69E3188]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDCE0570);
    }
  }
}

uint64_t sub_1C6C406A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1C6C4070C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C407C0(uint64_t a1)
{
  result = sub_1C6B0F7A8(319, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
  if (v2 <= 0x3F)
  {
    result = sub_1C6D76BD0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6C4086C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C6C408F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6C40964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 baselineRatePrior];
  [v2 baselineImpressionPrior];
  [v2 baselineImpressionPrior];

  return sub_1C6D76AF0();
}

uint64_t sub_1C6C409E4(double a1)
{
  v2 = *(v1 + 16);
  [v2 featureImpressionPrior];
  [v2 featureImpressionPrior];

  return sub_1C6D76AF0();
}

unint64_t sub_1C6C40A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6C40D68();
    v3 = sub_1C6D79F20();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C6B5DEA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_1C6C40B60(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  sub_1C6C408F4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1C6C40BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  sub_1C6C408F4(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1C6C40C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C40C98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C40CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C4070C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6C40D68()
{
  if (!qword_1EC1D6EC0)
  {
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D6EC0);
    }
  }
}

void sub_1C6C40DC4(uint64_t a1)
{
  if (!qword_1EDCE7A80)
  {
    sub_1C6B0F7A8(255, &qword_1EDCE6560, &protocolRef_FCNewsAppConfiguration);
    v1 = sub_1C6D78360();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE7A80);
    }
  }
}

void sub_1C6C40E2C(uint64_t a1)
{
  if (!qword_1EDCE5D38)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA500, 0x1E69B5480);
    v1 = sub_1C6D78360();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE5D38);
    }
  }
}

void sub_1C6C40E94(uint64_t a1)
{
  if (!qword_1EDCE5D28)
  {
    sub_1C6B0C69C(255, &qword_1EDCDF800, 0x1E69B5468);
    v1 = sub_1C6D78360();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE5D28);
    }
  }
}

void sub_1C6C40EFC(uint64_t a1)
{
  if (!qword_1EDCE5DD0)
  {
    sub_1C6B10A98(255, &unk_1EDCE6308, MEMORY[0x1E69E3188]);
    v1 = sub_1C6D78360();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE5DD0);
    }
  }
}

id sub_1C6C40FC8(uint64_t a1, char **a2)
{
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *(a2 + 8);
  sub_1C6C411DC(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = &selRef_articleSeenAggregateModificationConfiguration;
  v13 = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v12 = &selRef_articleVisitedAggregateModificationConfiguration;
      goto LABEL_23;
    case 2:
      v12 = &selRef_articleReadAggregateModificationConfiguration;
      goto LABEL_23;
    case 3:
      v12 = &selRef_shareAggregateModificationConfiguration;
      goto LABEL_23;
    case 4:
      v12 = &selRef_likeAggregateModificationConfiguration;
      goto LABEL_23;
    case 5:
      v12 = &selRef_dislikeAggregateModificationConfiguration;
      goto LABEL_23;
    case 6:
      v12 = &selRef_savedAggregateModificationConfiguration;
      goto LABEL_23;
    case 7:
      v12 = &selRef_muteAggregateModificationConfiguration;
      goto LABEL_23;
    case 8:
      v12 = &selRef_unmuteAggregateModificationConfiguration;
      goto LABEL_23;
    case 9:
      v12 = &selRef_followAggregateModificationConfiguration;
      goto LABEL_23;
    case 10:
      v12 = &selRef_unfollowAggregateModificationConfiguration;
      goto LABEL_23;
    case 11:
      if (v10)
      {
        if ((v9 - 1) < 4)
        {
          v12 = &selRef_deprecatedFeedViewAggregateModificationConfiguration;
LABEL_23:
          v13 = [v2 *v12];
          goto LABEL_24;
        }

        v13 = v9;
        if ((v9 - 5) < 2)
        {
          v12 = &selRef_feedViewAggregateModificationConfiguration;
          goto LABEL_23;
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_24:
      sub_1C6C41240(v8);
      return v13;
    case 12:
      v12 = &selRef_trackVisitedAggregateModificationConfiguration;
      goto LABEL_23;
    case 13:
      v12 = &selRef_trackListenedAggregateModificationConfiguration;
      goto LABEL_23;
    case 14:
      v12 = &selRef_trackFinishedAggregateModificationConfiguration;
      goto LABEL_23;
    case 15:
      v12 = &selRef_unlikeAggregateModificationConfiguration;
      goto LABEL_23;
    case 16:
      v12 = &selRef_undislikeAggregateModificationConfiguration;
      goto LABEL_23;
    case 17:
      v12 = &selRef_unsavedAggregateModificationConfiguration;
      goto LABEL_23;
    case 18:
      v12 = &selRef_sportsTagSeenAggregateModificationConfiguration;
      goto LABEL_23;
    case 19:
      v12 = &selRef_tagIgnoreAggregateModificationConfiguration;
      goto LABEL_23;
    case 20:
      goto LABEL_24;
    default:
      goto LABEL_23;
  }
}

uint64_t sub_1C6C411DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C41240(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C4129C(uint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for RecipeTagSuggestionsService.OutputNames(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a3;
  v27 = a2;
  v17 = a1;
  sub_1C6D784F0();
  if (!v3)
  {
    v29 = v13;
    sub_1C6D78500();
    v18 = v28;

    v19 = [v18 recipeTagSuggestionsConfiguration];

    if (v19)
    {
      sub_1C6C41D58(v19, a2 & 1);
      sub_1C6B7A1B0(&qword_1EDCE7A60, sub_1C6B7A08C, MEMORY[0x1E69960C0]);
      v20 = sub_1C6D786C0();
      v21 = sub_1C6D786D0();
      v25 = sub_1C6D786C0();
      v23 = sub_1C6D786D0();
      v17 = sub_1C6C1A420(v20, v21);

      sub_1C6C1A420(v25, v23);

      sub_1C6C41ED4(v10);
    }

    else
    {
      sub_1C6C41D04();
      v17 = swift_allocError();
      swift_willThrow();
    }

    (*(v29 + 8))(v16, v12);
  }

  return v17;
}

uint64_t type metadata accessor for RecipeTagSuggestionsService.OutputNames(uint64_t a1)
{
  result = qword_1EC1D8230;
  if (!qword_1EC1D8230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C41670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v63) = a3;
  v7 = sub_1C6D75F80();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecipeTagSuggestionsService.OutputNames(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D78810();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v66 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v57 - v22;
  v24 = [*(a1 + 24) recipeTagSuggestionsConfiguration];
  if (v24)
  {
    v60 = v16;
    v61 = v15;
    v62 = v14;
    v59 = a4;
    v67 = v24;
    v25 = [v24 eventAggregationConfiguration];
    v26 = [v25 maxSessionEvents];
    sub_1C6BFEC6C([v25 eventConditions], v69);
    v27 = [v25 inputNames];
    v28 = v23;
    v29 = sub_1C6D79780();

    v68 = v26;
    v69[5] = v29;
    v30 = v28;
    v31 = *(a2 + 32);
    MEMORY[0x1EEE9AC00](v32, v33);
    *(&v57 - 2) = &v68;
    *(&v57 - 1) = a2;
    os_unfair_lock_lock((v31 + 24));
    v34 = v70;
    sub_1C6C1A93C((v31 + 16), v28);
    os_unfair_lock_unlock((v31 + 24));
    if (v34)
    {

      return sub_1C6BC624C(&v68);
    }

    else
    {
      v70 = 0;
      sub_1C6BC624C(&v68);
      v36 = v62;
      sub_1C6C41D58(v67, v63 & 1);
      sub_1C6D75F70();
      v58 = sub_1C6D75F60();
      v63 = v37;
      (*(v64 + 1))(v10, v65);
      (*(v60 + 16))(v66, v28, v61);
      v64 = "iewEventTranslator";
      sub_1C6C41F30(0, &qword_1EDCE64A0, MEMORY[0x1E6996088]);
      v38 = v11;
      v39 = sub_1C6D783E0();
      v40 = *(v39 - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1C6D80210;
      v44 = v43 + v42;
      v45 = *(v40 + 16);
      v45(v44, v36, v39);
      v45(v44 + v41, v36 + v38[5], v39);
      v65 = v30;
      v45(v44 + 2 * v41, v36 + v38[6], v39);
      v46 = v38[7];
      v47 = v58;
      v48 = v36 + v46;
      v49 = v63;
      v45(v44 + 3 * v41, v48, v39);
      sub_1C6C07550(v43);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      sub_1C6D78790();
      if (qword_1EDCE2380 != -1)
      {
        swift_once();
      }

      v50 = qword_1EDCE2388;
      sub_1C6C41F30(0, &qword_1EDCEA8A0, sub_1C6B47670);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1C6D7EB10;
      v52 = MEMORY[0x1E69E6158];
      *(v51 + 56) = MEMORY[0x1E69E6158];
      v53 = sub_1C6B2064C();
      *(v51 + 64) = v53;
      *(v51 + 32) = v47;
      *(v51 + 40) = v49;
      sub_1C6D787B0();
      sub_1C6B7A1B0(&qword_1EDCE5CD0, MEMORY[0x1E6996158], MEMORY[0x1E6996160]);
      v54 = sub_1C6D7A0E0();
      *(v51 + 96) = v52;
      *(v51 + 104) = v53;
      *(v51 + 72) = v54;
      *(v51 + 80) = v55;
      v56 = sub_1C6D79AC0();
      sub_1C6D78D30("Running recipe tag suggestions with request ID %{public}@ with request %{public}@", 81, 2, &dword_1C6B09000, v50, v56, v51);

      sub_1C6C41ED4(v62);
      return (*(v60 + 8))(v65, v61);
    }
  }

  else
  {
    sub_1C6C41D04();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_1C6C41D04()
{
  result = qword_1EC1D8228;
  if (!qword_1EC1D8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8228);
  }

  return result;
}

void sub_1C6C41D58(void *a1, char a2)
{
  v2 = &selRef_bundleOutputConfiguration;
  if ((a2 & 1) == 0)
  {
    v2 = &selRef_nonBundleOutputConfiguration;
  }

  v7 = [a1 *v2];
  v3 = [v7 channelIDsOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
  v4 = [v7 channelScoresOutputName];
  sub_1C6D795A0();

  type metadata accessor for RecipeTagSuggestionsService.OutputNames(0);
  sub_1C6D783C0();
  v5 = [v7 topicIDsOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
  v6 = [v7 topicScoresOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
}

uint64_t sub_1C6C41ED4(uint64_t a1)
{
  v2 = type metadata accessor for RecipeTagSuggestionsService.OutputNames(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6C41F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6C41FBC(uint64_t a1)
{
  result = sub_1C6D783E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C6C42030()
{
  result = qword_1EC1D8240;
  if (!qword_1EC1D8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8240);
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6C44D7C(v1 + *(v7 + 24), v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6C44DFC(v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(uint64_t a1)
{
  result = qword_1EDCE3018;
  if (!qword_1EDCE3018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = sub_1C6D78A00();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t sub_1C6C42390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6C44D7C(a1 + *(v8 + 24), v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C44DFC(v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}

uint64_t sub_1C6C42548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0) + 24);
  sub_1C6C44DFC(a2 + v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0) + 24);
  sub_1C6C44DFC(v1 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6C44D7C(v1 + v16, v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C44DFC(v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6C42988;
}

void sub_1C6C42988(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B3E660((*a1)[5], v4);
    sub_1C6C44DFC(v9 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    sub_1C6B3E2B0(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6C02E68(v5);
  }

  else
  {
    sub_1C6C44DFC(v9 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    sub_1C6B3E2B0(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.hasMetadata.getter()
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6C44D7C(v0 + *(v5 + 24), v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6C44DFC(v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0) + 24);
  sub_1C6C44DFC(v0 + v1, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6C44D7C(v1 + *(v8 + 28), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C44DFC(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6C42DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6C44D7C(a1 + *(v9 + 28), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6C44DFC(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6C42F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0) + 28);
  sub_1C6C44DFC(a2 + v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0) + 28);
  sub_1C6C44DFC(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0) + 28);
  *(v5 + 12) = v16;
  sub_1C6C44D7C(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C44DFC(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6C43400;
}

void sub_1C6C43400(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6C44DFC(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6C44DFC(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6C44D7C(v0 + *(v6 + 28), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6C44DFC(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0) + 28);
  sub_1C6C44DFC(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C4388C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8248);
  __swift_project_value_buffer(v0, qword_1EC1D8248);
  sub_1C6C450C0(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D807C0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "duration";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A38 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C6C43CD0(a1, v5, a2, a3);
        break;
      case 2:
        sub_1C6C43C1C(a1, v5, a2, a3);
        break;
      case 1:
        sub_1C6D78B50();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6C43C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C451F8(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6C43CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6D78A00();
  sub_1C6C451F8(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6C43E38(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1C6C4405C(v3, a1, a2, a3);
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C43E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6C44D7C(a1 + *(v14 + 24), v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6C44DFC(v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6C451F8(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6C02E68(v13);
}

uint64_t sub_1C6C4405C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6C44D7C(a1 + *(v15 + 28), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6C44DFC(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6C451F8(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6C451F8(&qword_1EC1D8260, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C44330@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1C6C4444C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C451F8(&qword_1EC1D8270, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C444C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A38 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C44570(uint64_t a1)
{
  v2 = sub_1C6C451F8(qword_1EDCE3030, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C445DC(uint64_t a1, uint64_t a2)
{
  sub_1C6C451F8(qword_1EDCE3030, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleVisitedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C6D78A00();
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69AAB70];
  v8 = MEMORY[0x1E69E6720];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v57 = &v50 - v11;
  sub_1C6C45124(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v7);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v58 = &v50 - v15;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v50 - v23;
  sub_1C6C45124(0, &qword_1EC1D68C8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v50 - v28;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v51 = v13;
  v53 = v4;
  v52 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  v30 = *(v52 + 24);
  v31 = *(v26 + 48);
  v54 = a1;
  sub_1C6C44D7C(a1 + v30, v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v55 = a2;
  sub_1C6C44D7C(a2 + v30, &v29[v31], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v32 = *(v17 + 48);
  if (v32(v29, 1, v16) != 1)
  {
    sub_1C6C44D7C(v29, v24, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    if (v32(&v29[v31], 1, v16) != 1)
    {
      sub_1C6B3E2B0(&v29[v31], v20);
      v36 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v24, v20);
      sub_1C6C02E68(v20);
      sub_1C6C02E68(v24);
      sub_1C6C44DFC(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_1C6C02E68(v24);
LABEL_7:
    v33 = &qword_1EC1D68C8;
    v34 = qword_1EDCE2DF8;
    v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
LABEL_15:
    sub_1C6C4519C(v29, v33, v34, v35);
    goto LABEL_16;
  }

  if (v32(&v29[v31], 1, v16) != 1)
  {
    goto LABEL_7;
  }

  sub_1C6C44DFC(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_9:
  v37 = *(v52 + 28);
  v38 = *(v51 + 48);
  v39 = MEMORY[0x1E69AAB70];
  v29 = v58;
  sub_1C6C44D7C(v54 + v37, v58, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6C44D7C(v55 + v37, &v29[v38], &qword_1EDCDFD00, v39);
  v40 = v59;
  v41 = *(v59 + 48);
  v42 = v53;
  if (v41(v29, 1, v53) == 1)
  {
    if (v41(&v29[v38], 1, v42) == 1)
    {
      sub_1C6C44DFC(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_19:
      sub_1C6D78A40();
      sub_1C6C451F8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v44 = sub_1C6D79560();
      return v44 & 1;
    }

    goto LABEL_14;
  }

  v43 = v57;
  sub_1C6C44D7C(v29, v57, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v41(&v29[v38], 1, v42) == 1)
  {
    (*(v40 + 8))(v43, v42);
LABEL_14:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    goto LABEL_15;
  }

  v46 = &v29[v38];
  v47 = v56;
  (*(v40 + 32))(v56, v46, v42);
  sub_1C6C451F8(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
  v48 = sub_1C6D79560();
  v49 = *(v40 + 8);
  v49(v47, v42);
  v49(v43, v42);
  sub_1C6C44DFC(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v48)
  {
    goto LABEL_19;
  }

LABEL_16:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_1C6C44D7C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C450C0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C44DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C450C0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6C44FB4(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6C450C0(319, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6C450C0(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6C450C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6C45124(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6C450C0(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6C4519C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C45124(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6C451F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(uint64_t a1)
{
  result = qword_1EDCE2B90;
  if (!qword_1EDCE2B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.groupBackingTagID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

void Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.group.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.group.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.feed.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.feed.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.viewAction.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.viewAction.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.groupBackingTagID.setter(int a1)
{
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.groupBackingTagID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1C6C45468;
}

uint64_t sub_1C6C45468(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.clearGroupBackingTagID()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0) + 28);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0) + 28);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  result = sub_1C6D78A30();
  v4 = a1 + *(v2 + 32);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t sub_1C6C4567C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8278);
  __swift_project_value_buffer(v0, qword_1EC1D8278);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D80210;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "group";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "feed";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "view_action";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "group_backing_tag_id";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A40 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6D78AD0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v6 = v3;
          sub_1C6C0FC3C();
LABEL_5:
          v3 = v6;
          sub_1C6D78B00();
          goto LABEL_6;
        }

        if (result == 4)
        {
          type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
          sub_1C6D78B40();
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          sub_1C6C0FB94();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v6 = v3;
          sub_1C6C0FBE8();
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (Com_Apple_News_Personalization_GroupType.rawValue.getter())
  {
    sub_1C6C0FB94();
    result = sub_1C6D78C70();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3 + 16))
  {
    sub_1C6C0FBE8();
    v10 = v5;
    result = sub_1C6D78C70();
    if (v5)
    {
      return result;
    }

    if (!*(v3 + 32))
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_1C6C0FC3C();
    result = sub_1C6D78C70();
    if (v10)
    {
      return result;
    }

    goto LABEL_10;
  }

  v10 = v5;
  if (*(v3 + 32))
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_1C6C45C14(v3, a1, a2, a3);
  if (!v10)
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6C45C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return sub_1C6D78CA0();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  sub_1C6C46358(&qword_1EC1D8290, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C45D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  result = sub_1C6D78A30();
  v5 = a2 + *(a1 + 32);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_1C6C45DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C46358(&qword_1EC1D82A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C45E44@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A40 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C45EEC(uint64_t a1)
{
  v2 = sub_1C6C46358(qword_1EDCE2BA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C45F58(uint64_t a1, uint64_t a2)
{
  sub_1C6C46358(qword_1EDCE2BA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B51Storage_CompressedSessionEventArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = Com_Apple_News_Personalization_GroupType.rawValue.getter();
  if (v4 != Com_Apple_News_Personalization_GroupType.rawValue.getter() || !sub_1C6B69164(*(a1 + 16), *(a1 + 24), *(a2 + 16)) || !sub_1C6B69164(*(a1 + 32), *(a1 + 40), *(a2 + 32)))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0) + 32);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  sub_1C6D78A40();
  sub_1C6C46358(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

void sub_1C6C4625C(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6C46308();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6C46308()
{
  if (!qword_1EDCDF3D8)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF3D8);
    }
  }
}

uint64_t sub_1C6C46358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6C463A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v65 = a2;
  v8 = sub_1C6D773B0();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D77430();
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C6D77D60();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v15);
  v67 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C474AC(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C6D77290();
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  (*(v27 + 16))(&v55 - v26, a1, v23, v25);
  if (swift_dynamicCast())
  {
    v58 = a5;
    v28 = v69;
    (*(v19 + 8))(v22, v18);
    v29 = sub_1C6D77270();
    v30 = sub_1C6D77330();
    v32 = v31;

    if (!v5)
    {
      sub_1C6C47540(&qword_1EDCE5E78, MEMORY[0x1E69B4A58], MEMORY[0x1E69B4A68]);
      v33 = v66;
      sub_1C6D75AF0();
      v65 = 0;
      v56 = v30;
      v57 = v32;
      swift_beginAccess();
      v35 = *(v28 + 16);

      sub_1C6D77D10();
      v36 = sub_1C6D77420();
      v38 = v37;
      v39 = v63;
      v40 = *(v62 + 8);
      v40(v14, v63);
      LOBYTE(v36) = sub_1C6B1E978(v36, v38, v35);

      if (v36)
      {
        (*(v64 + 8))(v67, v33);
        sub_1C6B1C9F0(v56, v57);
        v41 = sub_1C6D76F90();
        (*(*(v41 - 8) + 56))(v58, 1, 1, v41);
      }

      else
      {
        sub_1C6D77D10();
        v42 = sub_1C6D77420();
        v44 = v43;
        v40(v14, v39);
        swift_beginAccess();
        sub_1C6B1E6A8(&v68, v42, v44);
        swift_endAccess();

        v45 = v58;
        v58[3] = v33;
        v46 = MEMORY[0x1E69B4A58];
        v45[4] = sub_1C6C47540(&qword_1EDCE5E90, MEMORY[0x1E69B4A58], &protocol conformance descriptor for HeadlineExposureEvent.Model);
        v45[5] = sub_1C6C47540(&qword_1EDCE5E88, v46, &protocol conformance descriptor for HeadlineExposureEvent.Model);
        boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v45);
        v48 = v64;
        v49 = v67;
        (*(v64 + 16))(boxed_opaque_existential_2, v67, v33);
        v50 = v59;
        sub_1C6D77D50();
        v51 = sub_1C6D773A0();
        sub_1C6B1C9F0(v56, v57);
        (*(v60 + 8))(v50, v61);
        (*(v48 + 8))(v49, v33);
        v45[6] = v51;
        v52 = *MEMORY[0x1E69E35F8];
        v53 = sub_1C6D76F90();
        v54 = *(v53 - 8);
        (*(v54 + 104))(v45, v52, v53);
        (*(v54 + 56))(v45, 0, 1, v53);
      }
    }
  }

  else
  {
    v34 = sub_1C6D76F90();
    (*(*(v34 - 8) + 56))(a5, 1, 1, v34);
  }
}

void sub_1C6C46A6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v65 = a2;
  v8 = sub_1C6D773B0();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D77430();
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C6D77800();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v15);
  v67 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C47418(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C6D77290();
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  (*(v27 + 16))(&v55 - v26, a1, v23, v25);
  if (swift_dynamicCast())
  {
    v58 = a5;
    v28 = v69;
    (*(v19 + 8))(v22, v18);
    v29 = sub_1C6D77270();
    v30 = sub_1C6D77330();
    v32 = v31;

    if (!v5)
    {
      sub_1C6C47540(&qword_1EDCE5F50, MEMORY[0x1E69B4778], MEMORY[0x1E69B4788]);
      v33 = v66;
      sub_1C6D75AF0();
      v65 = 0;
      v56 = v30;
      v57 = v32;
      swift_beginAccess();
      v35 = *(v28 + 16);

      sub_1C6D77790();
      v36 = sub_1C6D77420();
      v38 = v37;
      v39 = v63;
      v40 = *(v62 + 8);
      v40(v14, v63);
      LOBYTE(v36) = sub_1C6B1E978(v36, v38, v35);

      if (v36)
      {
        (*(v64 + 8))(v67, v33);
        sub_1C6B1C9F0(v56, v57);
        v41 = sub_1C6D76F90();
        (*(*(v41 - 8) + 56))(v58, 1, 1, v41);
      }

      else
      {
        sub_1C6D77790();
        v42 = sub_1C6D77420();
        v44 = v43;
        v40(v14, v39);
        swift_beginAccess();
        sub_1C6B1E6A8(&v68, v42, v44);
        swift_endAccess();

        v45 = v58;
        v58[3] = v33;
        v46 = MEMORY[0x1E69B4778];
        v45[4] = sub_1C6C47540(&qword_1EDCE5F68, MEMORY[0x1E69B4778], &protocol conformance descriptor for ArticleViewEvent.Model);
        v45[5] = sub_1C6C47540(&qword_1EDCE5F60, v46, &protocol conformance descriptor for ArticleViewEvent.Model);
        boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v45);
        v48 = v64;
        v49 = v67;
        (*(v64 + 16))(boxed_opaque_existential_2, v67, v33);
        v50 = v59;
        sub_1C6D777F0();
        v51 = sub_1C6D773A0();
        sub_1C6B1C9F0(v56, v57);
        (*(v60 + 8))(v50, v61);
        (*(v48 + 8))(v49, v33);
        v45[6] = v51;
        v52 = *MEMORY[0x1E69E35F8];
        v53 = sub_1C6D76F90();
        v54 = *(v53 - 8);
        (*(v54 + 104))(v45, v52, v53);
        (*(v54 + 56))(v45, 0, 1, v53);
      }
    }
  }

  else
  {
    v34 = sub_1C6D76F90();
    (*(*(v34 - 8) + 56))(a5, 1, 1, v34);
  }
}

void sub_1C6C47138(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  sub_1C6C47364(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6C463A0(a1, a2, v12);
  if (!v5)
  {
    v20 = a5;
    v21 = 0;
    v13 = sub_1C6D76F90();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    v18[1] = v14 + 48;
    v19 = v15;
    if (v15(v12, 1, v13) == 1)
    {
      v16 = v21;
      sub_1C6C46A6C(a1, a2, v20);
      v21 = v16;
      if (v19(v12, 1, v13) != 1)
      {
        sub_1C6C473BC(v12);
      }
    }

    else
    {
      v17 = v20;
      (*(v14 + 32))(v20, v12, v13);
      (*(v14 + 56))(v17, 0, 1, v13);
    }
  }
}

void sub_1C6C47364(uint64_t a1)
{
  if (!qword_1EDCE6210)
  {
    sub_1C6D76F90();
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6210);
    }
  }
}

uint64_t sub_1C6C473BC(uint64_t a1)
{
  sub_1C6C47364(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6C47418(uint64_t a1)
{
  if (!qword_1EDCE60A0)
  {
    sub_1C6D77810();
    sub_1C6C47540(&qword_1EDCE5F48, MEMORY[0x1E69B4790], MEMORY[0x1E69B4760]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE60A0);
    }
  }
}

void sub_1C6C474AC(uint64_t a1)
{
  if (!qword_1EDCE6040)
  {
    sub_1C6D77D70();
    sub_1C6C47540(&qword_1EDCE5E70, MEMORY[0x1E69B4A70], MEMORY[0x1E69B4A40]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6040);
    }
  }
}

uint64_t sub_1C6C47540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CurrentTimestampFeatureResolver.resolveFeatures(inputKeys:configuration:nodeID:)()
{
  v0 = sub_1C6D75F50();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C4780C(0);
  sub_1C6B9F304(0);
  v6 = v5 - 8;
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  v19 = xmmword_1C6D7E630;
  *(v8 + 16) = xmmword_1C6D7E630;
  v9 = v8 + v7;
  v10 = *(v6 + 56);
  sub_1C6D783C0();
  sub_1C6C47864();
  v11 = swift_allocObject();
  *(v11 + 16) = v19;
  sub_1C6D75F40();
  sub_1C6D75F10();
  v13 = v12;
  v14 = v12;
  result = (*(v1 + 8))(v4, v0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v13 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v13 < 2147483650.0)
  {
    *(v11 + 32) = v13;
    *(v9 + v10) = v11;
    v16 = *MEMORY[0x1E6996140];
    v17 = sub_1C6D78760();
    (*(*(v17 - 8) + 104))(v9 + v10, v16, v17);
    return sub_1C6D787D0();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C6C4780C(uint64_t a1)
{
  if (!qword_1EDCE7D20)
  {
    sub_1C6B9F304(255);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE7D20);
    }
  }
}

void sub_1C6C47864()
{
  if (!qword_1EDCE7CD0)
  {
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7CD0);
    }
  }
}

uint64_t sub_1C6C47918()
{

  return swift_deallocClassInstance();
}

void *sub_1C6C47950@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v51 = a2;
  sub_1C6B986D0(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D783E0();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C6D78810();
  v15 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {
    v20 = MEMORY[0x1E69E7CC0];
    v54 = i;
    if (!i)
    {
      break;
    }

    v57 = MEMORY[0x1E69E7CC0];
    result = sub_1C6B39674(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v45 = v14;
    v46 = v10;
    v14 = 0;
    v20 = v57;
    v10 = (v53 & 0xC000000000000001);
    v47 = a3;
    v48 = v53 & 0xFFFFFFFFFFFFFF8;
    v49 = v15 + 32;
    while (1)
    {
      a3 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10)
      {
        v22 = MEMORY[0x1CCA56240](v14, v53);
      }

      else
      {
        if (v14 >= *(v48 + 16))
        {
          goto LABEL_34;
        }

        v22 = *(v53 + 8 * v14 + 32);
        swift_unknownObjectRetain();
      }

      v56 = v22;
      sub_1C6C47E78(&v56, v52, v51, &v55, v18);
      if (v4)
      {

        return swift_unknownObjectRelease();
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v57 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C6B39674((v23 > 1), v24 + 1, 1);
        v20 = v57;
      }

      *(v20 + 16) = v24 + 1;
      (*(v15 + 32))(v20 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v24, v18, v50);
      ++v14;
      i = v54;
      if (a3 == v54)
      {
        v10 = v46;
        a3 = v47;
        v14 = v45;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_17:
  sub_1C6B96AD0(v20, 2, 2, a3);
  if (v4)
  {
  }

  sub_1C6D783C0();
  if (!i)
  {
LABEL_32:
    sub_1C6D78740();
    v44 = sub_1C6D78760();
    (*(*(v44 - 8) + 56))(v10, 0, 1, v44);
    return sub_1C6D78830();
  }

  v57 = MEMORY[0x1E69E7CC0];
  result = sub_1C6B39280(0, i & ~(i >> 63), 0);
  if ((i & 0x8000000000000000) == 0)
  {
    v52 = 0;
    v45 = v14;
    v46 = v10;
    v47 = a3;
    v25 = v57;
    v26 = v53;
    if ((v53 & 0xC000000000000001) != 0)
    {
      v27 = 0;
      do
      {
        MEMORY[0x1CCA56240](v27, v26);
        v28 = [swift_unknownObjectRetain() identifier];
        v29 = sub_1C6D795A0();
        v31 = v30;
        swift_unknownObjectRelease_n();

        v57 = v25;
        v33 = *(v25 + 16);
        v32 = *(v25 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1C6B39280((v32 > 1), v33 + 1, 1);
          v25 = v57;
        }

        ++v27;
        *(v25 + 16) = v33 + 1;
        v34 = v25 + 16 * v33;
        *(v34 + 32) = v29;
        *(v34 + 40) = v31;
      }

      while (v54 != v27);
    }

    else
    {
      v35 = v53 + 32;
      do
      {
        v36 = i;
        v37 = [swift_unknownObjectRetain_n() identifier];
        v38 = sub_1C6D795A0();
        v40 = v39;
        swift_unknownObjectRelease_n();

        v57 = v25;
        v42 = *(v25 + 16);
        v41 = *(v25 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1C6B39280((v41 > 1), v42 + 1, 1);
          v25 = v57;
        }

        *(v25 + 16) = v42 + 1;
        v43 = v25 + 16 * v42;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
        v35 += 8;
        i = v36 - 1;
      }

      while (v36 != 1);
    }

    v10 = v46;
    goto LABEL_32;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1C6C47E78@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a5;
  v73 = a3;
  v71 = a2;
  v87 = sub_1C6D78810();
  v81 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v8);
  v75 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v74 = v69 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v78 = v69 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v69 - v18;
  v20 = sub_1C6D78A80();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v76 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v69 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v29 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v79 = (v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32, v33);
  v80 = (v69 - v34);
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = (v69 - v38);
  v40 = *a1;
  v41 = [*a1 personalizationData];
  if (v41)
  {
    v42 = v41;
    v70 = v40;
    v77 = a4;
    v43 = sub_1C6D75E60();
    v45 = v44;

    v85 = v43;
    v86 = v45;
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    sub_1C6B1CD10(v43, v45);
    sub_1C6D78A70();
    sub_1C6BFE05C();
    sub_1C6D78C00();
    if (v5)
    {
      result = sub_1C6B1C9F0(v43, v45);
      a4 = v77;
      goto LABEL_27;
    }

    v69[1] = v26;
    static Features.fromProtoFeatureMap(_:)(*v39, v19);
    v48 = sub_1C6B66A28(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v50 = v48[2];
    v49 = v48[3];
    v47 = v48;
    if (v50 >= v49 >> 1)
    {
      v47 = sub_1C6B66A28((v49 > 1), v50 + 1, 1, v48);
    }

    sub_1C6B1C9F0(v43, v45);
    v47[2] = v50 + 1;
    (*(v81 + 32))(v47 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v50, v19, v87);
    sub_1C6BC496C(v39);
    a4 = v77;
    v40 = v70;
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  v51 = [v40 rapidUpdatePersonalizationData];
  if (v51)
  {
    v52 = v40;
    v53 = v51;
    v54 = sub_1C6D75E60();
    v56 = v55;

    v85 = v54;
    v86 = v56;
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    sub_1C6B1CD10(v54, v56);
    sub_1C6D78A70();
    sub_1C6BFE05C();
    v57 = v80;
    sub_1C6D78C00();
    if (v5)
    {

      result = sub_1C6B1C9F0(v54, v56);
      goto LABEL_27;
    }

    static Features.fromProtoFeatureMap(_:)(*v57, v78);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_1C6B66A28(0, v47[2] + 1, 1, v47);
    }

    v59 = v47[2];
    v58 = v47[3];
    if (v59 >= v58 >> 1)
    {
      v47 = sub_1C6B66A28((v58 > 1), v59 + 1, 1, v47);
    }

    sub_1C6B1C9F0(v54, v56);
    v47[2] = v59 + 1;
    (*(v81 + 32))(v47 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v59, v78, v87);
    sub_1C6BC496C(v80);
    v40 = v52;
  }

  v60 = [v40 eventAggregationPersonalizationData];
  v61 = v79;
  if (v60)
  {
    v62 = v60;
    v63 = sub_1C6D75E60();
    v65 = v64;

    v85 = v63;
    v86 = v65;
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    sub_1C6B1CD10(v63, v65);
    sub_1C6D78A70();
    sub_1C6BFE05C();
    sub_1C6D78C00();
    if (v5)
    {

      result = sub_1C6B1C9F0(v63, v65);
      goto LABEL_27;
    }

    static Features.fromProtoFeatureMap(_:)(*v61, v74);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_1C6B66A28(0, v47[2] + 1, 1, v47);
    }

    v67 = v47[2];
    v66 = v47[3];
    if (v67 >= v66 >> 1)
    {
      v47 = sub_1C6B66A28((v66 > 1), v67 + 1, 1, v47);
    }

    sub_1C6B1C9F0(v63, v65);
    v47[2] = v67 + 1;
    (*(v81 + 32))(v47 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v67, v74, v87);
    sub_1C6BC496C(v61);
  }

  v68 = v75;
  sub_1C6B96AD0(v47, 1, 3, v75);
  if (!v5)
  {

    sub_1C6C6D288(*(v71 + 16), v68, v73, v72);
    return (*(v81 + 8))(v68, v87);
  }

LABEL_27:
  *a4 = v5;
  return result;
}

uint64_t ComputeServiceRefreshBackgroundWorker.backgroundFetchTriggers.getter()
{
  sub_1C6B25120(0, &qword_1EDCDF5A0, MEMORY[0x1E69D68C8], MEMORY[0x1E69E6F90]);
  v0 = sub_1C6D78120();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x1E69D68C0], v0);
  v4 = sub_1C6B252D0(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t ComputeServiceRefreshBackgroundWorker.backgroundFetchPreconditions(for:)()
{
  v0 = MEMORY[0x1E69D6908];
  sub_1C6B25120(0, &qword_1EC1D82A8, MEMORY[0x1E69D6908], MEMORY[0x1E69E6F90]);
  sub_1C6D78180();
  *(swift_allocObject() + 16) = xmmword_1C6D7EB10;
  sub_1C6D78160();
  sub_1C6D78170();
  sub_1C6C491C0();
  sub_1C6B25120(0, &qword_1EC1D82B8, v0, MEMORY[0x1E69E62F8]);
  sub_1C6C49218();
  return sub_1C6D79CB0();
}

uint64_t ComputeServiceRefreshBackgroundWorker.performBackgroundFetch()()
{
  v1 = sub_1C6D780E0();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
  if ([v7 respondsToSelector_])
  {
    v8 = [v7 tabiBackgroundRefreshEnabled];
    swift_unknownObjectRelease();
    if (v8)
    {
      return sub_1C6D78030();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v2 + 104))(v6, *MEMORY[0x1E69D6828], v1);
  sub_1C6B25120(0, &qword_1EC1D82C8, MEMORY[0x1E69D6838], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1C6D78300();
}

uint64_t sub_1C6C48A00(uint64_t a1)
{
  sub_1C6B25120(0, &qword_1EC1D82C8, MEMORY[0x1E69D6838], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6C48A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C6B25120(0, qword_1EDCE65F0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v17 - v12;
  v14 = sub_1C6D79880();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;

  sub_1C6BE0BF8(0, 0, v13, &unk_1C6D885A8, v15);
}

uint64_t sub_1C6C48BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1C6D780E0();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6C48CB4, 0, 0);
}

uint64_t sub_1C6C48CB4()
{
  v3 = (*MEMORY[0x1E69960B0] + MEMORY[0x1E69960B0]);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1C6C48D5C;

  return v3();
}

uint64_t sub_1C6C48D5C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1C6C48F38;
  }

  else
  {
    v2 = sub_1C6C48E70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6C48E70()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  (*(v2 + 104))(v1, *MEMORY[0x1E69D6830], v3);
  v4(v1);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C6C48F38()
{
  v1 = *(v0 + 88);
  (*(v0 + 40))(v1);

  v2 = *(v0 + 8);

  return v2();
}

void *ComputeServiceRefreshBackgroundWorker.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ComputeServiceRefreshBackgroundWorker.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C4902C()
{
  v0 = MEMORY[0x1E69D6908];
  sub_1C6B25120(0, &qword_1EC1D82A8, MEMORY[0x1E69D6908], MEMORY[0x1E69E6F90]);
  sub_1C6D78180();
  *(swift_allocObject() + 16) = xmmword_1C6D7EB10;
  sub_1C6D78160();
  sub_1C6D78170();
  sub_1C6C491C0();
  sub_1C6B25120(0, &qword_1EC1D82B8, v0, MEMORY[0x1E69E62F8]);
  sub_1C6C49218();
  return sub_1C6D79CB0();
}

unint64_t sub_1C6C491C0()
{
  result = qword_1EC1D82B0;
  if (!qword_1EC1D82B0)
  {
    sub_1C6D78180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D82B0);
  }

  return result;
}

unint64_t sub_1C6C49218()
{
  result = qword_1EC1D82C0;
  if (!qword_1EC1D82C0)
  {
    sub_1C6B25120(255, &qword_1EC1D82B8, MEMORY[0x1E69D6908], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D82C0);
  }

  return result;
}

uint64_t sub_1C6C492C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C6BB6A40;

  return sub_1C6C48BEC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t SessionDataProvider.__allocating_init(storage:unarchiver:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SessionDataProvider.init(storage:unarchiver:)(a1, a2);
  return v4;
}

uint64_t sub_1C6C49450(char a1)
{
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](a1 & 1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C494E4@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) earliestSessionDate];
  if (v3)
  {
    v4 = v3;
    sub_1C6D75F20();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C6D75F50();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1C6C495A8(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6C49428(v3, *v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C4964C()
{
  v1 = *v0;
  v2 = [v0[2] sessions];
  if (v2)
  {
    v4 = v2;
    sub_1C6D78FC0();
    v5 = sub_1C6D79780();

    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDCE9830;
    sub_1C6B1D314(0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C6D7E630;
    if (v5 >> 62)
    {
      sub_1C6D79E90();
    }

    v8 = sub_1C6D7A0E0();
    v10 = v9;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1C6B2064C();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    v11 = sub_1C6D79AC0();
    sub_1C6D78D30("Found %{public}@ sessions", 25, 2, &dword_1C6B09000, v6, v11, v7);

    sub_1C6C4A98C(0, qword_1EC1D82D0, sub_1C6C4A958, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1C6D78300();
  }

  else
  {
    type metadata accessor for SessionDataProvider.Errors(0, *(v1 + 80), *(v1 + 88), v3);
    swift_getWitnessTable();
    swift_allocError();
    *v13 = 1;
    sub_1C6C4A98C(0, qword_1EC1D82D0, sub_1C6C4A958, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1C6D782F0();
  }
}

uint64_t sub_1C6C49938()
{
  v1 = *(v0 + *(*v0 + 14));
  [v0[2] size];
  v2 = sub_1C6D79C20();
  v3 = [v1 stringForObjectValue_];

  if (!v3)
  {
    return 0x4E574F4E4B4E55;
  }

  v4 = sub_1C6D795A0();

  return v4;
}

uint64_t sub_1C6C499E8(unsigned __int8 (*a1)(char *), uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v6 = v5;
  v10 = [*(v5 + 16) sessions];
  if (v10)
  {
    v11 = v10;
    sub_1C6D78FC0();
    v12 = sub_1C6D79780();

    v13 = sub_1C6C49D84(a1, a2, v12, v5);

    v27 = 0;
    if (a3)
    {
      v13 = sub_1C6C4A348(v13);
    }

    if (v13 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6D79E90())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1CCA56240](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v19 = MEMORY[0x1CCA568F0]();
        sub_1C6C4A558(a4, a5, v6, v17, &v27, &v26);
        objc_autoreleasePoolPop(v19);

        if (v27 != 1)
        {
          ++v15;
          if (v18 != i)
          {
            continue;
          }
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }
  }

  else
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDCE9830;
    v21 = sub_1C6D79AA0();
    v22 = MEMORY[0x1E69E7CC0];

    return sub_1C6D78D30("Failed to lookup sessions", 25, 2, &dword_1C6B09000, v20, v21, v22);
  }
}

unint64_t sub_1C6C49D84(unsigned __int8 (*a1)(char *), uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a1)
  {

    return a3;
  }

  v7 = qword_1EDCE9828;

  if (v7 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v8 = qword_1EDCE9830;
    v9 = sub_1C6D79AC0();
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C6D78D30("Collecting sessions to visit with stopping condition", 52, 2, &dword_1C6B09000, v8, v9, MEMORY[0x1E69E7CC0]);
    v23 = v10;
    v22 = 0;
    if (a3 >> 62)
    {
      break;
    }

    v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_5:
    v12 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1CCA56240](v12, a3);
      }

      else
      {
        if (v12 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v12 + 32);
      }

      v16 = v13;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v22)
      {
        sub_1C6B16898(a1, a2);

        return v23;
      }

      v18 = MEMORY[0x1CCA568F0](v13, v14, v15);
      sub_1C6C4A064(a1, a2, a4, v16, &v23, &v22, &v21);
      objc_autoreleasePoolPop(v18);

      ++v12;
      if (v17 == v11)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v11 = sub_1C6D79E90();
  if (v11)
  {
    goto LABEL_5;
  }

LABEL_20:
  sub_1C6B16898(a1, a2);
  return v23;
}

uint64_t sub_1C6C4A064(unsigned __int8 (*a1)(char *), uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, _BYTE *a6, void *a7)
{
  v30 = a7;
  v26 = a5;
  v27 = a6;
  v28 = a2;
  v29 = a1;
  v9 = *(*a3 + 88);
  v10 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v16 = &v26 - v15;
  result = (*(v9 + 24))(a4, v10, v9, v14);
  if (v7)
  {
    *v30 = v7;
  }

  else
  {
    v19 = v26;
    v18 = v27;
    v20 = v29(v16);
    (*(v12 + 8))(v16, AssociatedTypeWitness);
    if (v20)
    {
      if (qword_1EDCE9828 != -1)
      {
        swift_once();
      }

      sub_1C6B1D314(0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1C6D7E630;
      if (*v19 >> 62)
      {
        v25 = v21;
        v22 = sub_1C6D79E90();
        v21 = v25;
      }

      else
      {
        v22 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = MEMORY[0x1E69E65A8];
      *(v21 + 56) = MEMORY[0x1E69E6530];
      *(v21 + 64) = v23;
      *(v21 + 32) = v22;
      sub_1C6D79AC0();
      sub_1C6D78D30("Stopping condition met, returning %lu sessions", v26);

      *v18 = 1;
    }

    else
    {
      v24 = a4;
      MEMORY[0x1CCA55C20]();
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C6D797C0();
      }

      return sub_1C6D79800();
    }
  }

  return result;
}

unint64_t sub_1C6C4A348(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_1C6D79E90();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1C6B6916C();
      sub_1C6BF4614(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1C6D79E90();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1CCA56240]();
          v11 = MEMORY[0x1CCA56240](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1C6C4A9F0(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1C6C4A9F0(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_1C6C4A558(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v20 = a6;
  v18 = a1;
  v19 = a5;
  v17[1] = a2;
  v8 = *(*a3 + 88);
  v9 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = v17 - v14;
  result = (*(v8 + 24))(a4, v9, v8, v13);
  if (v6)
  {
    *v20 = v6;
  }

  else
  {
    v18(v15, v19);
    return (*(v11 + 8))(v15, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1C6C4A718@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 16) earliestSessionDate];
  if (v3)
  {
    v4 = v3;
    sub_1C6D75F20();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C6D75F50();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

char *SessionDataProvider.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t SessionDataProvider.__deallocating_deinit()
{
  SessionDataProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_1C6C4A98C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C4A9F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C6D79E90();
  }

  return sub_1C6D79D80();
}

void (*sub_1C6C4AA54(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCA56240](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C6C4AAD4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C6C4AC2C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCA56240](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1C6C4ACAC;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1C6C4ACB4(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCA56240](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1C6C4ADB4;
  }

  __break(1u);
  return result;
}

void (*sub_1C6C4AD34(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCA56240](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C6C4ADB8;
  }

  __break(1u);
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = sub_1C6D78A00();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(uint64_t a1)
{
  result = qword_1EDCE3740;
  if (!qword_1EDCE3740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.duration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  sub_1C6B764C8(v1 + *(v7 + 24), v6);
  v8 = sub_1C6D78A00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D789F0();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B7655C(v6);
  }

  return result;
}

uint64_t sub_1C6C4B030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  sub_1C6B764C8(a1 + *(v8 + 24), v7);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B7655C(v7);
  }

  return result;
}

uint64_t sub_1C6C4B19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0) + 24);
  sub_1C6B7655C(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0) + 24);
  sub_1C6B7655C(v1 + v3);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6B764C8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B7655C(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B76B50;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.hasDuration.getter()
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  sub_1C6B764C8(v0 + *(v5 + 24), v4);
  v6 = sub_1C6D78A00();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B7655C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0) + 24);
  sub_1C6B7655C(v0 + v1);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C4B868()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8360);
  __swift_project_value_buffer(v0, qword_1EC1D8360);
  sub_1C6B780C4(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "tag_id";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A48 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6C4BB88(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C4BB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  sub_1C6D78A00();
  sub_1C6C4C7D0(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6C4BCD8(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C4BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  sub_1C6B764C8(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B7655C(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6C4C7D0(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  sub_1C6C4C7D0(&qword_1EC1D8378, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C4BF7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = sub_1C6D78A00();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6C4C04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C4C7D0(&unk_1EC1D8388, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C4C0C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A48 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C4C170(uint64_t a1)
{
  v2 = sub_1C6C4C7D0(qword_1EDCE3758, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C4C1DC(uint64_t a1, uint64_t a2)
{
  sub_1C6C4C7D0(qword_1EDCE3758, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventTagFeedViewV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - v11;
  sub_1C6B77F8C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v26 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  v18 = *(v26 + 24);
  v19 = *(v14 + 48);
  sub_1C6B764C8(a1 + v18, v17);
  sub_1C6B764C8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B7655C(v17);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6C4C7D0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B764C8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1C6B78020(v17);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1C6C4C7D0(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
  v23 = sub_1C6D79560();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1C6B7655C(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6C4C70C(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6B780C4(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6C4C7D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6C4C840()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

unint64_t sub_1C6C4C8A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v115 = a3;
  v10 = sub_1C6D78F10();
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v113 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v114 = v99 - v15;
  v107 = sub_1C6D783E0();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v16);
  v110 = v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v111 = *(v18 - 8);
  v112 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v117 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a4;
  *&v122 = a1;
  swift_getKeyPath();
  v116 = a4;
  isUniquelyReferenced_nonNull_native = sub_1C6D79820();
  swift_getWitnessTable();
  v22 = sub_1C6D79680();
  v23 = v5;

  *&v122 = v22;
  WitnessTable = swift_getWitnessTable();
  if (sub_1C6D79A30())
  {

    return sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);
  }

  v103 = WitnessTable;
  v26 = [*(v4 + 16) cachedSubscription];
  v27 = objc_getAssociatedObject(v26, v26 + 1);
  v104 = a2;
  if (v27)
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v120 = 0u;
    v121 = 0u;
  }

  v122 = v120;
  v123 = v121;
  v105 = v6;
  if (!*(&v121 + 1))
  {
    sub_1C6B79FDC(&v122);
    goto LABEL_11;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v28 = 0;
    v29 = 0;
    goto LABEL_12;
  }

  v28 = v119;
  v29 = [v119 integerValue];
  if (v29 == -1)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (objc_getAssociatedObject(v26, ~v29))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v120 = 0u;
    v121 = 0u;
  }

  v122 = v120;
  v123 = v121;
  if (!*(&v121 + 1))
  {
    sub_1C6B79FDC(&v122);
    goto LABEL_19;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    v34 = -78;
    goto LABEL_20;
  }

  v30 = v119;
  v31 = [v30 integerValue];

  v34 = v31 - 78;
LABEL_20:
  v35 = (v34 ^ v29) & 1;
  v36 = v105;
  MEMORY[0x1EEE9AC00](v32, v33);
  v37 = v115;
  v99[-6] = v116;
  v99[-5] = v22;
  LOBYTE(v99[-4]) = v35;
  v99[-3] = v36;
  v97 = a1;
  v98 = v37;
  v38 = v117;
  sub_1C6D784F0();
  if (v5)
  {
  }

  v39 = v112;
  sub_1C6D78500();
  v40 = *(&v123 + 1);

  v41 = [v40 recipeScoringConfiguration];

  if (!v41)
  {

    sub_1C6C4E6E0();
    swift_allocError();
    *v47 = 0;
    *(v47 + 8) = 0;
    *(v47 + 16) = 2;
    swift_willThrow();
    return (*(v111 + 8))(v38, v39);
  }

  v42 = &selRef_nonBundleOutputConfiguration;
  if (v35)
  {
    v42 = &selRef_bundleOutputConfiguration;
  }

  v43 = v41;
  v44 = [v41 *v42];
  v45 = [v44 recipeScoresOutputName];

  sub_1C6D795A0();
  sub_1C6D783C0();
  sub_1C6BB320C();
  v46 = sub_1C6D786D0();
  v102 = v43;
  v48 = *(v46 + 16);
  if (v48)
  {
    *&v122 = MEMORY[0x1E69E7CC0];
    v115 = v46;
    sub_1C6B39260(0, v48, 0);
    v49 = v115;
    v50 = v122;
    v51 = *(v122 + 16);
    v52 = 32;
    do
    {
      v53 = *(v49 + v52);
      *&v122 = v50;
      v54 = *(v50 + 24);
      if (v51 >= v54 >> 1)
      {
        sub_1C6B39260((v54 > 1), v51 + 1, 1);
        v49 = v115;
        v50 = v122;
      }

      *(v50 + 16) = v51 + 1;
      *(v50 + 8 * v51 + 32) = v53;
      v52 += 4;
      ++v51;
      --v48;
    }

    while (v48);

    v39 = v112;
    v36 = v105;
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  v55 = *(v50 + 16);
  v56 = sub_1C6D79810();
  if (v55 != v56)
  {
    v88 = v56;

    *&v122 = 0;
    *(&v122 + 1) = 0xE000000000000000;
    sub_1C6D79D50();

    *&v122 = 0x20646E756F46;
    *(&v122 + 1) = 0xE600000000000000;
    *&v120 = v55;
    v89 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v89);

    MEMORY[0x1CCA55B00](0xD000000000000015, 0x80000001C6D9F880);
    *&v120 = v88;
    v90 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v90);

    v91 = v122;
    sub_1C6C4E6E0();
    swift_allocError();
    *v92 = v91;
    *(v92 + 16) = 1;
    swift_willThrow();

    (*(v106 + 8))(v110, v107);
    return (*(v111 + 8))(v117, v39);
  }

  if (qword_1EDCE23A8 != -1)
  {
    goto LABEL_59;
  }

LABEL_36:
  sub_1C6B1A548(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v57 = swift_allocObject();
  v58 = MEMORY[0x1E69E6530];
  *(v57 + 16) = xmmword_1C6D7E630;
  v59 = MEMORY[0x1E69E65A8];
  *(v57 + 56) = v58;
  *(v57 + 64) = v59;
  *(v57 + 32) = v55;
  sub_1C6D79AC0();
  sub_1C6D78D30("Successfully scored %d items", LODWORD(v99[0]));

  *&v122 = v22;
  MEMORY[0x1EEE9AC00](v60, v61);
  v97 = v116;
  KeyPath = swift_getKeyPath();
  v64 = sub_1C6D04140(sub_1C6C4E734, KeyPath, isUniquelyReferenced_nonNull_native, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v103, MEMORY[0x1E69E7410], v63);
  v99[1] = v23;

  v115 = sub_1C6C2BFB0(v64, v50);

  v65 = *(v36 + 9);
  v99[0] = sub_1C6D79130();

  v55 = *(v36 + 14);
  __swift_project_boxed_opaque_existential_1(v36 + 10, *(v36 + 13));
  v66 = sub_1C6D78F20();
  v67 = v66;
  v105 = *(v66 + 16);
  if (v105)
  {
    v50 = 0;
    v22 = v108;
    v104 = v66 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v116 = v108 + 16;
    v103 = (v108 + 8);
    v101 = (v108 + 32);
    v100 = (v108 + 40);
    v68 = MEMORY[0x1E69E7CC8];
    v23 = v109;
    isUniquelyReferenced_nonNull_native = v114;
    do
    {
      if (v50 >= *(v67 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        swift_once();
        goto LABEL_36;
      }

      v55 = *(v22 + 72);
      v36 = *(v22 + 16);
      v36(isUniquelyReferenced_nonNull_native, v104 + v55 * v50, v23);
      v69 = sub_1C6D78EE0();
      if (!*(v115 + 16))
      {

        (*v103)(isUniquelyReferenced_nonNull_native, v23);
        goto LABEL_39;
      }

      sub_1C6B5DEA8(v69, v70);
      v72 = v71;

      if ((v72 & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = v114;
        (*v103)(v114, v23);
        goto LABEL_39;
      }

      v73 = v114;
      v22 = sub_1C6D78EE0();
      v74 = v23;
      v23 = v75;
      v36(v113, v73, v74);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v122 = v68;
      v76 = sub_1C6B5DEA8(v22, v23);
      v78 = v68[2];
      v79 = (v77 & 1) == 0;
      v80 = __OFADD__(v78, v79);
      v81 = v78 + v79;
      if (v80)
      {
        goto LABEL_57;
      }

      v36 = v77;
      if (v68[3] >= v81)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = v76;
          sub_1C6B73ECC();
          v76 = v84;
          if (v36)
          {
LABEL_50:
            v83 = v76;

            v68 = v122;
            v23 = v109;
            (*v100)(*(v122 + 56) + v83 * v55, v113, v109);
            isUniquelyReferenced_nonNull_native = v114;
            (*v103)(v114, v23);
            v22 = v108;
            goto LABEL_39;
          }

          goto LABEL_52;
        }
      }

      else
      {
        sub_1C6B709E0(v81, isUniquelyReferenced_nonNull_native);
        v76 = sub_1C6B5DEA8(v22, v23);
        if ((v36 & 1) != (v82 & 1))
        {
          result = sub_1C6D7A1C0();
          __break(1u);
          return result;
        }
      }

      if (v36)
      {
        goto LABEL_50;
      }

LABEL_52:
      v68 = v122;
      *(v122 + 8 * (v76 >> 6) + 64) |= 1 << v76;
      v85 = (v68[6] + 16 * v76);
      *v85 = v22;
      v85[1] = v23;
      v23 = v109;
      (*v101)(v68[7] + v76 * v55, v113, v109);
      isUniquelyReferenced_nonNull_native = v114;
      (*v103)(v114, v23);
      v86 = v68[2];
      v80 = __OFADD__(v86, 1);
      v87 = v86 + 1;
      if (v80)
      {
        goto LABEL_58;
      }

      v68[2] = v87;
      v22 = v108;
LABEL_39:
      ++v50;
    }

    while (v105 != v50);
  }

  MEMORY[0x1EEE9AC00](v93, v94);
  v95 = v99[0];
  v98 = v99[0];
  v97 = MEMORY[0x1E69E6168];
  v96 = sub_1C6D794B0();

  (*(v106 + 8))(v110, v107);
  (*(v111 + 8))(v117, v112);
  return v96;
}

void sub_1C6C4D710(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_1C6D795A0();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1C6C4D768()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C6C4D7C4@<X0>(uint64_t a1@<X0>, int a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v105 = a6;
  v117 = a5;
  v114 = a4;
  v112 = a3;
  v106 = a8;
  v10 = sub_1C6D783E0();
  v120 = *(v10 - 8);
  v121 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v119 = &v98 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v98 - v19;
  v21 = sub_1C6D78810();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v107 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v108 = &v98 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v109 = &v98 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v113 = &v98 - v33;
  v34 = *(a1 + 24);
  if (qword_1EDCE23A8 != -1)
  {
    swift_once();
  }

  sub_1C6B1A548(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  v104 = xmmword_1C6D7E630;
  *(v35 + 16) = xmmword_1C6D7E630;
  v118 = a7;
  v36 = sub_1C6D79810();
  v37 = MEMORY[0x1E69E65A8];
  *(v35 + 56) = MEMORY[0x1E69E6530];
  *(v35 + 64) = v37;
  *(v35 + 32) = v36;
  sub_1C6D79AC0();
  sub_1C6D78D30("Scoring %d recipes", v98);

  v38 = [v34 recipeScoringConfiguration];
  if (v38)
  {
    v99 = v13;
    v103 = v22;
    v102 = v21;
    v39 = &selRef_bundleInputConfiguration;
    if ((v112 & 1) == 0)
    {
      v39 = &selRef_nonBundleInputConfiguration;
    }

    v40 = *v39;
    v110 = v38;
    v41 = [v38 v40];
    v42 = [v41 inputNames];

    v43 = sub_1C6D79780();
    v44 = *(v43 + 16);
    v45 = MEMORY[0x1E69E7CC0];
    if (v44)
    {
      *&v122 = MEMORY[0x1E69E7CC0];
      sub_1C6B394C4(0, v44, 0);
      v46 = v122;
      v47 = v43 + 40;
      do
      {

        sub_1C6D783C0();
        *&v122 = v46;
        v49 = *(v46 + 16);
        v48 = *(v46 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1C6B394C4((v48 > 1), v49 + 1, 1);
          v46 = v122;
        }

        *(v46 + 16) = v49 + 1;
        (*(v120 + 32))(v46 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v49, v20, v121);
        v47 += 16;
        --v44;
      }

      while (v44);

      v45 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6B16F28(v114 + 32, &v122);
    v52 = __swift_project_boxed_opaque_existential_1(&v122, *(&v123 + 1));
    sub_1C6B16800();
    v53 = sub_1C6D79E50();
    v54 = v53;
    v55 = *(v46 + 16);
    if (v55)
    {
      v100 = v52;
      v101 = v53;
      v130 = v45;
      sub_1C6B39280(0, v55, 0);
      v56 = v130;
      v57 = *(v120 + 16);
      v58 = v46 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
      v116 = *(v120 + 72);
      v117 = v57;
      v118 = v120 + 16;
      v115 = (v120 + 8);
      do
      {
        v59 = v119;
        v60 = v121;
        v117(v119, v58, v121);
        v61 = sub_1C6D783D0();
        v63 = v62;
        (*v115)(v59, v60);
        v130 = v56;
        v65 = *(v56 + 16);
        v64 = *(v56 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_1C6B39280((v64 > 1), v65 + 1, 1);
          v56 = v130;
        }

        *(v56 + 16) = v65 + 1;
        v66 = v56 + 16 * v65;
        *(v66 + 32) = v61;
        *(v66 + 40) = v63;
        v58 += v116;
        --v55;
      }

      while (v55);

      v54 = v101;
    }

    else
    {

      v56 = MEMORY[0x1E69E7CC0];
    }

    v67 = v113;
    v68 = v111;
    sub_1C6C47950(v54, v56, v113);
    if (v68)
    {

      return __swift_destroy_boxed_opaque_existential_1(&v122);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v122);
      v69 = [v110 eventAggregationConfiguration];
      v70 = [v69 maxSessionEvents];
      sub_1C6BFEC6C([v69 eventConditions], &v122);
      v71 = [v69 inputNames];
      v72 = sub_1C6D79780();

      v125 = v70;
      v126 = v122;
      v127 = v123;
      v128 = v124;
      v129 = v72;
      v73 = *(*(v114 + 120) + 32);
      MEMORY[0x1EEE9AC00](v74, v75);
      *(&v98 - 2) = &v125;
      *(&v98 - 1) = v76;
      os_unfair_lock_lock((v73 + 24));
      v77 = v109;
      sub_1C6C1A93C((v73 + 16), v109);
      os_unfair_lock_unlock((v73 + 24));
      sub_1C6BC624C(&v125);
      sub_1C6B1A548(0, &qword_1EDCDF580, MEMORY[0x1E6996170], MEMORY[0x1E69E6F90]);
      v78 = v103;
      v79 = *(v103 + 72);
      v80 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1C6D7EB10;
      v82 = v81 + v80;
      v83 = *(v78 + 16);
      v84 = v102;
      v83(v82, v67, v102);
      v83(v82 + v79, v77, v84);
      v85 = v108;
      sub_1C6B96AD0(v81, 0, 3, v108);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v86 = &selRef_bundleOutputConfiguration;
      if ((v112 & 1) == 0)
      {
        v86 = &selRef_nonBundleOutputConfiguration;
      }

      v87 = [v110 *v86];
      v88 = [v87 recipeScoresOutputName];

      sub_1C6D795A0();
      sub_1C6D783C0();
      v83(v107, v85, v84);
      v89 = sub_1C6D75F60();
      v118 = v90;
      v119 = v89;
      sub_1C6B1A548(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], MEMORY[0x1E69E6F90]);
      v91 = v120;
      v92 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v93 = swift_allocObject();
      *(v93 + 16) = v104;
      v94 = v99;
      v95 = v121;
      (*(v91 + 16))(v93 + v92, v99, v121);
      sub_1C6B68E34(v93);
      swift_setDeallocating();
      v96 = *(v91 + 8);
      v96(v93 + v92, v95);
      swift_deallocClassInstance();
      sub_1C6D78790();

      v96(v94, v95);
      v97 = *(v103 + 8);
      v97(v108, v84);
      v97(v109, v84);
      return (v97)(v113, v84);
    }
  }

  else
  {
    sub_1C6C4E6E0();
    swift_allocError();
    *v50 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_1C6C4E354(uint64_t *a1, double *a2, uint64_t *a3, double *a4, uint64_t a5, void *a6)
{
  v44 = a6;
  v46 = a1;
  v47 = a2;
  sub_1C6B1A548(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - v14;
  v16 = sub_1C6D78F10();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v42 - v23;
  v26 = *a3;
  v25 = a3[1];
  v27 = *a4;
  if (*(a5 + 16))
  {
    v28 = sub_1C6B5DEA8(v26, v25);
    if (v29)
    {
      (*(v17 + 16))(v20, *(a5 + 56) + *(v17 + 72) * v28, v16);
      (*(v17 + 32))(v24, v20, v16);
      v30 = v44;
      [v44 recipeSeenPenalty];
      v32 = v31;
      [v30 recipeViewedPenalty];
      v34 = v33;
      sub_1C6D78EF0();
      v35 = sub_1C6D75F50();
      v36 = *(v35 - 8);
      v43 = *(v36 + 48);
      v44 = (v36 + 48);
      LODWORD(v30) = v43(v15, 1, v35);
      sub_1C6C358F8(v15);
      if (v30 != 1)
      {
        v27 = v27 * (1.0 - v32);
      }

      v37 = v45;
      sub_1C6D78F00();
      (*(v17 + 8))(v24, v16);
      v38 = v43(v37, 1, v35);
      sub_1C6C358F8(v37);
      if (v38 != 1)
      {
        v27 = (1.0 - v34) * v27;
      }
    }
  }

  v40 = v46;
  v39 = v47;
  *v46 = v26;
  v40[1] = v25;
  *v39 = v27;
}

unint64_t sub_1C6C4E6E0()
{
  result = qword_1EDCE2910;
  if (!qword_1EDCE2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2910);
  }

  return result;
}

uint64_t sub_1C6C4E734()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization027ComputeServiceRecipeScoringD0C6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C6C4E7C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6C4E80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6C4E850(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C6C4E88C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1C6C4E8D4(void *a1, void *a2)
{
  v3 = v2;
  v76 = sub_1C6D783E0();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v6);
  v77 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCE18F0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDCE18F8;
  v12 = sub_1C6D79AC0();
  sub_1C6B1D314(0);
  v82 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C6D7EB10;
  v15 = a1[2];
  v16 = MEMORY[0x1E69E65A8];
  *(v14 + 56) = MEMORY[0x1E69E6530];
  *(v14 + 64) = v16;
  *(v14 + 32) = v15;
  v17 = sub_1C6D75F60();
  v19 = v18;
  *(v14 + 96) = MEMORY[0x1E69E6158];
  v20 = sub_1C6B2064C();
  *(v14 + 104) = v20;
  *(v14 + 72) = v17;
  *(v14 + 80) = v19;
  v81 = v11;
  sub_1C6D78D30("Applying diversification to %ld recipes with request id: %{public}@", 67, 2, &dword_1C6B09000, v11, v12, v14);

  if (v15)
  {
    v21 = [v3[2] cachedSubscription];
    v22 = objc_getAssociatedObject(v21, v21 + 1);
    v78 = v20;
    if (v22)
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    v87 = v85;
    v88 = v86;
    if (*(&v86 + 1))
    {
      sub_1C6B18500();
      if (swift_dynamicCast())
      {
        v25 = v84;
        v26 = [v84 integerValue];
        if (v26 == -1)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_1C6B79FDC(&v87);
    }

    v25 = 0;
    v26 = 0;
LABEL_16:
    if (objc_getAssociatedObject(v21, ~v26))
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    v87 = v85;
    v88 = v86;
    if (*(&v86 + 1))
    {
      sub_1C6B18500();
      if (swift_dynamicCast())
      {
        v27 = v84;
        v28 = [v27 integerValue];

        v31 = v28 - 64;
        goto LABEL_24;
      }
    }

    else
    {
      sub_1C6B79FDC(&v87);
    }

LABEL_23:

    v31 = -64;
LABEL_24:
    v32 = (v31 ^ v26) & 1;
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v74 - 32) = v32;
    *(&v74 - 3) = v3;
    *(&v74 - 2) = a1;
    *(&v74 - 1) = a2;
    v33 = v83;
    sub_1C6D784F0();
    v34 = v80;
    sub_1C6D78500();
    v35 = *(&v88 + 1);

    v36 = [v35 recipeDiversificationConfiguration];

    if (v36)
    {
      v37 = &selRef_nonBundleOutputConfiguration;
      if (v32)
      {
        v37 = &selRef_bundleOutputConfiguration;
      }

      v38 = [v36 *v37];
      v39 = [v38 recipeScoresOutputName];

      sub_1C6D795A0();
      v40 = v77;
      sub_1C6D783C0();
      sub_1C6BB320C();
      v41 = sub_1C6D786D0();
      v44 = MEMORY[0x1E69E7CC0];
      v45 = *(v41 + 16);
      v74 = v36;
      if (v45)
      {
        *&v87 = MEMORY[0x1E69E7CC0];
        v46 = v41;
        sub_1C6B39260(0, v45, 0);
        v47 = v46;
        v48 = v87;
        v49 = *(v87 + 16);
        v50 = 32;
        do
        {
          v51 = *(v47 + v50);
          *&v87 = v48;
          v52 = v48[3];
          if (v49 >= v52 >> 1)
          {
            sub_1C6B39260((v52 > 1), v49 + 1, 1);
            v47 = v46;
            v48 = v87;
          }

          v48[2] = v49 + 1;
          *&v48[v49 + 4] = v51;
          v50 += 4;
          ++v49;
          --v45;
        }

        while (v45);

        v33 = v83;
        v40 = v77;
        v34 = v80;
        v36 = v74;
        v44 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v48 = MEMORY[0x1E69E7CC0];
      }

      v53 = v48[2];
      if (v53 == v15)
      {
        if (qword_1EDCE23A8 != -1)
        {
          swift_once();
        }

        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1C6D7E630;
        *(v54 + 56) = MEMORY[0x1E69E6530];
        *(v54 + 64) = MEMORY[0x1E69E65A8];
        *(v54 + 32) = v15;
        sub_1C6D79AC0();
        sub_1C6D78D30("Successfully diversified %d items", v74);

        *&v87 = v44;
        sub_1C6B39280(0, v15, 0);
        v55 = v87;
        v56 = a1 + 4;
        do
        {
          v57 = [swift_unknownObjectRetain_n() identifier];
          v58 = sub_1C6D795A0();
          v60 = v59;
          swift_unknownObjectRelease_n();

          *&v87 = v55;
          v62 = v55[2];
          v61 = v55[3];
          if (v62 >= v61 >> 1)
          {
            sub_1C6B39280((v61 > 1), v62 + 1, 1);
            v55 = v87;
          }

          v55[2] = v62 + 1;
          v63 = &v55[2 * v62];
          v63[4] = v58;
          v63[5] = v60;
          v56 += 2;
          --v15;
        }

        while (v15);
        v73 = sub_1C6C2BFB0(v55, v48);

        (*(v75 + 8))(v77, v76);
        (*(v79 + 8))(v83, v80);
        return v73;
      }

      *&v87 = 0;
      *(&v87 + 1) = 0xE000000000000000;
      sub_1C6D79D50();

      *&v87 = 0x20646E756F46;
      *(&v87 + 1) = 0xE600000000000000;
      *&v85 = v53;
      v64 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v64);

      MEMORY[0x1CCA55B00](0xD000000000000015, 0x80000001C6D9F880);
      *&v85 = v15;
      v65 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v65);

      v66 = v87;
      sub_1C6C4FD80();
      v42 = swift_allocError();
      *v67 = v66;
      *(v67 + 16) = 1;
      swift_willThrow();

      (*(v75 + 8))(v40, v76);
    }

    else
    {
      sub_1C6C4FD80();
      v42 = swift_allocError();
      *v43 = 0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 2;
      swift_willThrow();
    }

    (*(v79 + 8))(v33, v34);
    v68 = v81;
    v69 = sub_1C6D79AA0();
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1C6D7E630;
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    *&v85 = v42;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    v71 = v87;
    v72 = v78;
    *(v70 + 56) = MEMORY[0x1E69E6158];
    *(v70 + 64) = v72;
    *(v70 + 32) = v71;
    sub_1C6D78D30("An error ocurred while diversifying recipes: %{public}@", 55, 2, &dword_1C6B09000, v68, v69, v70);

    v73 = sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);

    return v73;
  }

  v23 = MEMORY[0x1E69E7CC0];

  return sub_1C6B5F1EC(v23);
}

uint64_t sub_1C6C4F2F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v115 = a4;
  v119 = a3;
  LODWORD(v120) = a2;
  sub_1C6C4FDD4(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v109 = (&v102 - v11);
  v12 = sub_1C6D78810();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v102 - v19;
  v122 = sub_1C6D783E0();
  v117 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v21);
  v121 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v102 - v25;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v102 - v30;
  v32 = [*(a1 + 24) recipeDiversificationConfiguration];
  if (!v32)
  {
    sub_1C6C4FD80();
    swift_allocError();
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = 2;
    return swift_willThrow();
  }

  v104 = a5;
  v107 = v16;
  v111 = v20;
  v105 = v13;
  v108 = v12;
  v106 = a6;
  v33 = &selRef_bundleInputConfiguration;
  v34 = v120;
  if ((v120 & 1) == 0)
  {
    v33 = &selRef_nonBundleInputConfiguration;
  }

  v35 = *v33;
  v116 = v32;
  v36 = [v32 v35];
  v37 = [v36 inputNames];

  v38 = sub_1C6D79780();
  v39 = *(v38 + 16);
  v112 = v31;
  if (v39)
  {
    v124[0] = MEMORY[0x1E69E7CC0];
    sub_1C6B394C4(0, v39, 0);
    v40 = v124[0];
    v41 = v117;
    v42 = v38 + 40;
    do
    {

      sub_1C6D783C0();
      v124[0] = v40;
      v44 = *(v40 + 16);
      v43 = *(v40 + 24);
      v45 = v40;
      if (v44 >= v43 >> 1)
      {
        sub_1C6B394C4((v43 > 1), v44 + 1, 1);
        v45 = v124[0];
      }

      *(v45 + 16) = v44 + 1;
      (*(v41 + 32))(v45 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v44, v26, v122);
      v42 += 16;
      --v39;
      v40 = v45;
    }

    while (v39);
    v114 = v45;

    v31 = v112;
    v34 = v120;
  }

  else
  {

    v114 = MEMORY[0x1E69E7CC0];
    v41 = v117;
  }

  v48 = &selRef_bundleOutputConfiguration;
  if ((v34 & 1) == 0)
  {
    v48 = &selRef_nonBundleOutputConfiguration;
  }

  v49 = [v116 *v48];
  v50 = [v49 recipeScoresOutputName];

  sub_1C6D795A0();
  sub_1C6D783C0();
  sub_1C6B16F28((v119 + 32), v124);
  v110 = __swift_project_boxed_opaque_existential_1(v124, v124[3]);
  v51 = v115;
  v52 = *(v115 + 16);
  v53 = MEMORY[0x1E69E7CC0];
  v103 = v52;
  if (v52)
  {
    v123 = MEMORY[0x1E69E7CC0];
    v54 = v52;
    sub_1C6D79DF0();
    v55 = v51 + 32;
    do
    {
      v55 += 16;
      swift_unknownObjectRetain();
      sub_1C6D79DC0();
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
      --v54;
    }

    while (v54);
    v56 = v123;
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
  }

  v57 = v114;
  v58 = *(v114 + 16);
  if (v58)
  {
    v102 = v56;
    v123 = v53;
    sub_1C6B39280(0, v58, 0);
    v59 = v123;
    v61 = *(v41 + 16);
    v60 = v41 + 16;
    v62 = v57 + ((*(v60 + 64) + 32) & ~*(v60 + 64));
    v118 = *(v60 + 56);
    v119 = v61;
    v120 = v60;
    v63 = (v60 - 8);
    do
    {
      v64 = v121;
      v65 = v122;
      (v119)(v121, v62, v122);
      v66 = sub_1C6D783D0();
      v68 = v67;
      (*v63)(v64, v65);
      v123 = v59;
      v70 = *(v59 + 16);
      v69 = *(v59 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1C6B39280((v69 > 1), v70 + 1, 1);
        v59 = v123;
      }

      *(v59 + 16) = v70 + 1;
      v71 = v59 + 16 * v70;
      *(v71 + 32) = v66;
      *(v71 + 40) = v68;
      v62 += v118;
      --v58;
    }

    while (v58);

    v41 = v117;
    v31 = v112;
    v56 = v102;
  }

  else
  {

    v59 = MEMORY[0x1E69E7CC0];
  }

  v72 = v111;
  v73 = v113;
  sub_1C6C47950(v56, v59, v111);
  if (v73)
  {
    (*(v41 + 8))(v31, v122);

    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  __swift_destroy_boxed_opaque_existential_1(v124);
  v74 = v103;
  if (v103)
  {
    v75 = MEMORY[0x1E69E7CC0];
    v124[0] = MEMORY[0x1E69E7CC0];
    sub_1C6B39260(0, v103, 0);
    v76 = v74;
    v77 = v124[0];
    v78 = *(v124[0] + 16);
    v79 = (v115 + 40);
    do
    {
      v80 = *v79;
      v124[0] = v77;
      v81 = *(v77 + 24);
      v82 = v78 + 1;
      if (v78 >= v81 >> 1)
      {
        v83 = v76;
        sub_1C6B39260((v81 > 1), v78 + 1, 1);
        v76 = v83;
        v77 = v124[0];
      }

      *(v77 + 16) = v82;
      *(v77 + 8 * v78 + 32) = v80;
      v79 += 2;
      ++v78;
      --v76;
    }

    while (v76);
    goto LABEL_36;
  }

  v75 = MEMORY[0x1E69E7CC0];
  v82 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v82)
  {
    v77 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v124[0] = v75;
    sub_1C6B3922C(0, v82, 0);
    v84 = v124[0];
    v85 = *(v124[0] + 16);
    v86 = 32;
    do
    {
      v87 = *(v77 + v86);
      v124[0] = v84;
      v88 = *(v84 + 24);
      if (v85 >= v88 >> 1)
      {
        sub_1C6B3922C((v88 > 1), v85 + 1, 1);
        v84 = v124[0];
      }

      v89 = v87;
      *(v84 + 16) = v85 + 1;
      *(v84 + 4 * v85 + 32) = v89;
      v86 += 8;
      ++v85;
      --v82;
    }

    while (v82);

    v31 = v112;
    goto LABEL_41;
  }

  v84 = MEMORY[0x1E69E7CC0];

LABEL_41:
  sub_1C6D783C0();
  v90 = v109;
  *v109 = v84;
  v91 = *MEMORY[0x1E6996138];
  v92 = sub_1C6D78760();
  v93 = *(v92 - 8);
  (*(v93 + 104))(v90, v91, v92);
  (*(v93 + 56))(v90, 0, 1, v92);
  sub_1C6D78830();
  v94 = v105;
  (*(v105 + 16))(v107, v72, v108);
  v95 = sub_1C6D75F60();
  v120 = v96;
  v121 = v95;
  v119 = "recipeDiversification.score";
  sub_1C6C4FDD4(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], MEMORY[0x1E69E6F90]);
  v97 = v117;
  v98 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1C6D7E630;
  v100 = v122;
  (*(v97 + 16))(v99 + v98, v31, v122);
  sub_1C6B68E34(v99);
  swift_setDeallocating();
  v101 = *(v97 + 8);
  v101(v99 + v98, v100);
  swift_deallocClassInstance();
  sub_1C6D78790();

  (*(v94 + 8))(v111, v108);
  return (v101)(v31, v100);
}

unint64_t sub_1C6C4FD80()
{
  result = qword_1EC1D8398;
  if (!qword_1EC1D8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8398);
  }

  return result;
}

void sub_1C6C4FDD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization035ComputeServiceRecipeDiversificationD0C6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

BOOL Com_Apple_News_Personalization_SessionEvent.hasTimestamp.getter()
{
  v1 = MEMORY[0x1E69AA900];
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6C68A94(v0 + *(v6 + 24), v5, &qword_1EDCE66F0, v1);
  v7 = sub_1C6D789A0();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6C68A24(v5, &qword_1EDCE66F0, v1);
  return v8;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AA900];
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6C68A94(v1 + *(v8 + 24), v7, &qword_1EDCE66F0, v3);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C68A24(v7, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6C50130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AA900];
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6C68A94(a1 + *(v9 + 24), v8, &qword_1EDCE66F0, v4);
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D78990();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6C68A24(v8, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6C502C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  sub_1C6C68A24(a2 + v10, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  sub_1C6C68A24(v1 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEvent.timestamp.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6C68A94(v1 + v16, v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C68A24(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6C50734;
}

void sub_1C6C50734(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6C68A24(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6C68A24(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEvent.clearTimestamp()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  sub_1C6C68A24(v0 + v1, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void sub_1C6C50988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C50A14(uint64_t a1, uint64_t a2)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleSeen.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6C68A94(v2, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t sub_1C6C50CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6C68A94(a1, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleSeen.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6C68A94(v2, v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6C68A24(v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6C514C8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
      return sub_1C6C51200;
    }

    sub_1C6C51244(v10, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v17 = *(v11 + 20);
  v18 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
  v19 = *(v11 + 24);
  v20 = sub_1C6D78A00();
  (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
  return sub_1C6C51200;
}

uint64_t sub_1C6C51244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleVisited.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6C68A94(v2, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C6C514C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C51530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6C68A94(a1, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

uint64_t sub_1C6C51754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v18 - v14;
  sub_1C6C68B78(a1, &v18 - v14, a6);
  sub_1C6C68A24(a2, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C514C8(v15, a2, a7);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

uint64_t sub_1C6C51890(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_1C6C68A24(v3, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C514C8(a1, v3, a2);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleVisited.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6C68A94(v2, v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6C68A24(v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v17 = *(v11 + 20);
    v18 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v11 + 24);
    v20 = sub_1C6D78A00();
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    return sub_1C6C51C34;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C6C51244(v10, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  return sub_1C6C51C34;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleRead.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6C68A94(v2, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = *(v10 + 28);
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleRead.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6C68A94(v2, v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6C68A24(v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v14 = MEMORY[0x1E69E7CC0];
    sub_1C6D78A30();
    v17 = *(v11 + 24);
    v18 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    v19 = *(v11 + 28);
    v20 = sub_1C6D78A00();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    return sub_1C6C521B8;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C6C51244(v10, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  return sub_1C6C521B8;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleShared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6C68A94(v2, &v13 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleShared.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 1;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C526B0;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  return sub_1C6C526B0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleLiked.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C528D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleLiked.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C52D60;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  return sub_1C6C52D60;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleDisliked.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C52F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}
uint64_t sub_1E388BF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_1E3740AE8(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780, &unk_1E42988B0);
  sub_1E4207644();
  v8 = *(*(v13 + 56) + 8 * v7);
  v9 = type metadata accessor for ViewModel();
  sub_1E37414E0(v9, v10, v11);
  sub_1E4207664();
  *v4 = v13;
  return v8;
}

double sub_1E388BFFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1E327D33C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
    sub_1E4207644();

    sub_1E329504C((*(v9 + 56) + 32 * v7), a3);
    sub_1E4207664();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1E388C0E4(void *a1)
{
  v2 = [a1 ratingDomain];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E388C154(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  v4 = sub_1E42062A4();

  v5 = sub_1E4205C44();

  v6 = [a3 videosPlayablesFromDictionaries:v4 andMetadataDictionary:v5];

  if (!v6)
  {
    return 0;
  }

  sub_1E388C2BC();
  v7 = sub_1E42062B4();

  return v7;
}

unint64_t sub_1E388C264()
{
  result = qword_1EE23BA60;
  if (!qword_1EE23BA60)
  {
    type metadata accessor for ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23BA60);
  }

  return result;
}

unint64_t sub_1E388C2BC()
{
  result = qword_1EE23B1C0;
  if (!qword_1EE23B1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B1C0);
  }

  return result;
}

void sub_1E388C300(char a1, double a2, double a3)
{
  v7 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v9 = (*(v8 + 640))();
  if (!v9)
  {
LABEL_24:
    OUTLINED_FUNCTION_19_28();
    return;
  }

  v55 = v9;
  if (sub_1E388C888(v9, v10, v11))
  {
    [v3 frame];
    OUTLINED_FUNCTION_19();
    if (!CGRectEqualToRect(v57, v58))
    {
      sub_1E388CA64(1);
      v14 = [objc_allocWithZone(VUIOverlayBackgroundMaterialImagesOperation) initWithSourceBackgroundImage_];
      v15 = [v14 setResizedBackgroundImageSize_];
      v56 = MEMORY[0x1E69E7CC0];
      sub_1E39DFFE0(v15, v16, v17);
      OUTLINED_FUNCTION_7_63();
      if (v19)
      {
        v20 = (*(v18 + 568))();
        if (!v20)
        {
LABEL_9:
          v21 = MEMORY[0x1E69E7CC0];
LABEL_14:
          sub_1E378AAC8(v21, v14);
          if (a1)
          {
            [v14 start];
            sub_1E388CB80(v14);
          }

          else
          {
            sub_1E3280A90(0, &qword_1EE23B2A0, 0x1E696AAE0);
            OUTLINED_FUNCTION_4_0();
            v38 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v39 = swift_allocObject();
            *(v39 + 16) = v38;
            *(v39 + 24) = v14;
            v40 = v14;
            v41 = sub_1E378A448(sub_1E388EAF4, v39);
            v14 = v40;
            [v41 addDependency_];
            v42 = [objc_opt_self() mainQueue];
            [v42 addOperation_];

            [*sub_1E41DA684() addOperation_];
            OUTLINED_FUNCTION_36_3();
            (*((*v7 & v43) + 0x2D0))(v14);
            OUTLINED_FUNCTION_36_3();
            v45 = *((*v7 & v44) + 0x2C8);
            v46 = v45();
            if (v46)
            {
              v47 = v46;
              swift_getKeyPath();
              OUTLINED_FUNCTION_4_0();
              swift_allocObject();
              swift_unknownObjectWeakInit();
              v48 = OUTLINED_FUNCTION_9_40();
            }

            else
            {
              v48 = 0;
            }

            OUTLINED_FUNCTION_7_63();
            v50 = (*(v49 + 744))(v48);
            v51 = (v45)(v50);
            if (v51)
            {
              v52 = v51;
              swift_getKeyPath();
              OUTLINED_FUNCTION_4_0();
              swift_allocObject();
              swift_unknownObjectWeakInit();
              v53 = OUTLINED_FUNCTION_9_40();
            }

            else
            {
              v53 = 0;
            }

            OUTLINED_FUNCTION_7_63();
            (*(v54 + 768))(v53);
          }

          goto LABEL_24;
        }
      }

      else
      {
        v20 = (*(v18 + 520))();
        if (!v20)
        {
          goto LABEL_9;
        }
      }

      v22 = v20;
      sub_1E3280A90(0, &qword_1EE23AF28, off_1E87284E0);
      v23 = sub_1E3AA9EB4();
      v24 = *v23;
      v25 = v23[1];

      [v3 frame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      [v22 frame];
      sub_1E378A374(v24, v25, v27, v29, v31, v33, v34, v35, v36, v37);
      MEMORY[0x1E6910BF0]();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v21 = v56;

      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_19_28();
}

BOOL sub_1E388C888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E388CD34(a1, a2, a3) & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 784))();
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_59();
  if (((*(v6 + 664))() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_59();
    v10 = (*(v9 + 568))();
    if (v10 && (v11 = v10, [v10 frame], v13 = v12, v15 = v14, v17 = v16, v19 = v18, v11, OUTLINED_FUNCTION_26_3(), (v21 = (*((*v3 & v20) + 0x2B0))()) != 0))
    {
      v22 = v21;
      OUTLINED_FUNCTION_19();
      v30.origin.x = v13;
      v30.origin.y = v15;
      v30.size.width = v17;
      v30.size.height = v19;
      if (!CGRectEqualToRect(v30, v31))
      {
        v22 = v22;
        [v22 size];
        v29.width = v23;
        v29.height = v24;
        v28.width = v17;
        v28.height = v19;
        v25 = CGSizeEqualToSize(v28, v29);

        v7 = !v25;
LABEL_14:

        return v7;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_59();
      v27 = (*(v26 + 688))();
      if (!v27)
      {
        return 1;
      }

      v22 = v27;
    }

    v7 = 0;
    goto LABEL_14;
  }

  return 1;
}

uint64_t sub_1E388CA64(char a1)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v3 + 744))(0);
  OUTLINED_FUNCTION_26_3();
  (*((*v2 & v4) + 0x300))(0);
  if (a1)
  {
    OUTLINED_FUNCTION_0_59();
    v6 = (*(v5 + 712))();
    [v6 cancel];
  }

  OUTLINED_FUNCTION_0_59();
  v8 = *(v7 + 720);

  return v8(0);
}

void sub_1E388CB80(void *a1)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    v17 = [a1 resizedSourceBackgroundImage];
    if (v17)
    {
      OUTLINED_FUNCTION_21();
      v3 = *(v2 + 792);
      v4 = v17;
      v3(v17);
    }

    v5 = sub_1E378AA48(a1);
    if (v5)
    {
      v8 = v5;
      if (sub_1E388CD34(v5, v6, v7))
      {
        v9 = sub_1E3AA9EB4();
        v10 = *v9;
        v11 = v9[1];

        v12 = sub_1E378A81C(v10, v11, v8);

        if (v12)
        {
          OUTLINED_FUNCTION_21();
          v14 = *(v13 + 696);
          v15 = v12;
          v14(v12);
          sub_1E388CDDC(0.2);
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_21();
      (*(v16 + 672))(0);
    }
  }
}

void *sub_1E388CD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1E39DFFE0(a1, a2, a3))
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x238))();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x208))();
    if (!result)
    {
      return result;
    }
  }

  v5 = result;
  v6 = [result isHidden];

  return (v6 ^ 1);
}

void sub_1E388CDDC(double a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 520))();
  if (v3)
  {
    v5 = v3;
    v4 = sub_1E3280A90(0, &qword_1EE23B220, off_1E87285A0);
    sub_1E3AAB920(v4, &off_1F5D6E2D0, a1);
  }
}

uint64_t sub_1E388CEA0()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v0 + 600);

  return v3(v1);
}

void sub_1E388CF08(void *a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 616))();
  if (!v3)
  {
    return;
  }

  v11 = v3;
  v4 = sub_1E32859C4(v3, &selRef_canonicalId);
  v6 = v5;
  v7 = sub_1E32859C4(a1, &selRef_canonicalId);
  if (v6)
  {
    if (v8)
    {
      if (v4 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1E42079A4();

        if ((v10 & 1) == 0)
        {
LABEL_19:

          return;
        }
      }

LABEL_16:
      sub_1E3280A90(0, &qword_1EE23AF68, off_1E87285B8);
      if ((sub_1E4206F64() & 1) == 0 && sub_1E388D0C8(a1))
      {
        sub_1E388C300(1, 0.0, 0.0);
      }

      goto LABEL_19;
    }
  }

  else if (!v8)
  {
    goto LABEL_16;
  }
}

BOOL sub_1E388D0C8(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E39DFFE0(v8, v9, v10);
  v12 = MEMORY[0x1E69E7D40];
  if (v11)
  {
    v13 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x238))();
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    v13 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x208))();
    if (!v13)
    {
      return 0;
    }
  }

  v15 = v13;
  if (![a1 showScoreboard] || (v16 = sub_1E32859C4(a1, &selRef_canonicalId), v18 = sub_1E41494A8(v16, v17), , v18) || (v36 = v15, v65 = sub_1E3780DC4(a1), v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8E0, &qword_1E429AC18), sub_1E388EBAC(), v63 = v37, v38 = sub_1E4149048(v37), , (v38 & 1) != 0) && !objc_msgSend(a1, sel_configureScoreUpdates))
  {
    v19 = sub_1E3E37EEC();
    (*(v5 + 16))(v7, v19, v4);
    v20 = a1;
    v21 = sub_1E41FFC94();
    v22 = sub_1E42067D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v63 = v15;
      v65 = v24;
      *v23 = 136315394;
      v25 = sub_1E32859C4(v20, &selRef_canonicalId);
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0xE000000000000000;
      }

      v28 = sub_1E3270FC8(v25, v27, &v65);
      v62 = v4;
      v29 = v28;

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      v30 = sub_1E377D34C();
      v31 = (v30 & 1) == 0;
      if (v30)
      {
        v32 = 0xD00000000000001ALL;
      }

      else
      {
        v32 = 0xD000000000000014;
      }

      if (v31)
      {
        v33 = "T@VUIPlayer,N,R";
      }

      else
      {
        v33 = "to prevent spoilers.";
      }

      v34 = sub_1E3270FC8(v32, v33 | 0x8000000000000000, &v65);

      *(v23 + 14) = v34;
      _os_log_impl(&dword_1E323F000, v21, v22, "Suppressing scoreboard for %s %s", v23, 0x16u);
      swift_arrayDestroy();
      v15 = v63;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v5 + 8))(v7, v62);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    sub_1E388D920();
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x270))(0);
    [v15 setHidden_];
    v14 = 0;
  }

  else
  {
    [v15 setHidden_];
    v39 = sub_1E377C574();
    sub_1E377CDC8();
    v41 = v40;

    OUTLINED_FUNCTION_36_3();
    v43 = (*((*v12 & v42) + 0x270))(v41);
    if ((sub_1E39DFFE0(v43, v44, v45) & 1) == 0)
    {
      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();
      if (v46)
      {
        v47 = v46;
        v62 = v15;
        [v47 invalidateData];
        [v47 setDelegate_];
        [v47 setVuiClipsToBounds_];
        OUTLINED_FUNCTION_36_3();
        v49 = *((*v12 & v48) + 0x178);
        v50 = v49();
        if (v50)
        {
          v51 = (*(*v50 + 1944))(v50);

          (*(*v51 + 552))(&v65, v52);
          v15 = v36;

          if ((v66 & 1) == 0)
          {
            v53 = objc_opt_self();
            sub_1E3952BF8();
            [v53 radiusFromCornerRadii_];
            v50 = [v62 _setCornerRadius_];
          }
        }

        v54 = (v49)(v50);
        v55 = v54;
        if (v54)
        {
          v56 = (*(*v54 + 1944))(v54);

          v55 = (*(*v56 + 1784))(v57);
          v15 = v36;
        }

        [v47 setScoreboardLayout_];
      }
    }

    v58 = [v2 setNeedsLayout];
    v14 = sub_1E388C888(v58, v59, v60);
    if (!v14)
    {
      sub_1E388CDDC(0.2);
    }

    if ([v2 vui_isInAWindow])
    {
      if ([a1 &selRef__playbackStateWillChange_ + 1])
      {
        v64 = sub_1E3780DC4(a1);
        v61 = sub_1E4149048(v63);

        if (v61)
        {
          sub_1E388D920();
          sub_1E388DAA0();
        }
      }
    }
  }

  [v15 vui_setNeedsDisplay];

  return v14;
}

uint64_t sub_1E388D838()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 616))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 jsContextDictionary];

    v4 = sub_1E4205C64();
    return v4;
  }

  else
  {

    return sub_1E4205CB4();
  }
}

void sub_1E388D920()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_26_3();
  v3 = (*((*MEMORY[0x1E69E7D40] & v2) + 0x268))();
  if (v3)
  {
    v16 = v3;
    v4 = sub_1E32859C4(v3, &selRef_canonicalId);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = sub_1E4206474();
      OUTLINED_FUNCTION_18_22(v8);
      v9 = v0;
      v10 = sub_1E4206424();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v6;
      v11[5] = v7;
      v11[6] = v9;
      OUTLINED_FUNCTION_16_34(v11, v13, v14, v15, v11);
    }

    else
    {
    }
  }
}

void sub_1E388DAA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_26_3();
  v3 = (*((*MEMORY[0x1E69E7D40] & v2) + 0x268))();
  if (v3)
  {
    v17 = v3;
    v4 = sub_1E32859C4(v3, &selRef_canonicalId);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      if ([v17 configureScoreUpdates])
      {
        v8 = sub_1E4206474();
        OUTLINED_FUNCTION_18_22(v8);
        v9 = v17;
        v10 = v0;
        v11 = sub_1E4206424();
        v12 = swift_allocObject();
        v13 = MEMORY[0x1E69E85E0];
        v12[2] = v11;
        v12[3] = v13;
        v12[4] = v9;
        v12[5] = v10;
        v12[6] = v6;
        v12[7] = v7;
        OUTLINED_FUNCTION_16_34(v12, v14, v15, v16, v12);

        return;
      }
    }
  }
}

uint64_t sub_1E388DC50()
{
  OUTLINED_FUNCTION_24();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  sub_1E41FE5D4();
  v0[6] = swift_task_alloc();
  sub_1E4206434();
  v0[7] = sub_1E4206424();
  v6 = sub_1E42063B4();
  v0[8] = v6;
  v0[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E388DD14, v6, v5);
}

uint64_t sub_1E388DD14()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
  v3 = [v2 lastUpdatedTime];
  sub_1E41FE584();

  v4 = v2;
  *(v0 + 80) = sub_1E376EE58(v2, 1, v1);
  v5 = sub_1E376DBD0();
  v6 = *v5;
  *(v0 + 88) = *v5;

  *(v0 + 96) = sub_1E32859C4(v4, &selRef_leagueId);
  *(v0 + 104) = v7;

  *(v0 + 128) = j__OUTLINED_FUNCTION_18() & 1;
  *(v0 + 129) = j__OUTLINED_FUNCTION_18() & 1;
  v8 = *v6;
  *(v0 + 112) = *(*v6 + 488);
  *(v0 + 120) = (v8 + 488) & 0xFFFFFFFFFFFFLL | 0x306F000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E388DE54, v6, 0);
}

uint64_t sub_1E388DE54()
{
  OUTLINED_FUNCTION_27_2();
  v4 = *(v0 + 129);
  (*(v0 + 112))(*(v0 + 24), &off_1F5D609E0, *(v0 + 32), *(v0 + 40), *(v0 + 96), *(v0 + 104), *(v0 + 128), *(v0 + 80), v4);

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E388DF00, v1, v2);
}

uint64_t sub_1E388DF00()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E388DF6C()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_1E41FFCB4();
  v0[5] = v4;
  v0[6] = *(v4 - 8);
  v0[7] = swift_task_alloc();
  sub_1E4206434();
  v0[8] = sub_1E4206424();
  v6 = sub_1E42063B4();
  v0[9] = v6;
  v0[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E388E060, v6, v5);
}

uint64_t sub_1E388E060()
{
  v22 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = sub_1E324FBDC();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1E41FFC94();
  v6 = sub_1E42067D4();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1E3270FC8(v11, v10, &v21);
    _os_log_impl(&dword_1E323F000, v5, v6, "FlowcaseOverlayView::ScoreboardManager::unregistering from sportskit scoreboard updates [%s]", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);

    (*(v15 + 8))(v14, v16);
  }

  v17 = sub_1E376DBD0();
  v18 = *v17;
  *(v0 + 88) = *v17;

  *(v0 + 112) = j__OUTLINED_FUNCTION_18() & 1;
  v19 = *v18;
  *(v0 + 96) = *(*v18 + 496);
  *(v0 + 104) = (v19 + 496) & 0xFFFFFFFFFFFFLL | 0xE5C6000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E388E260, v18, 0);
}

uint64_t sub_1E388E260()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 96))(*(v0 + 32), &off_1F5D609E0, *(v0 + 16), *(v0 + 24), *(v0 + 112));

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E388E2E0, v1, v2);
}

uint64_t sub_1E388E2E0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E388E340()
{
  sub_1E3280A90(0, &qword_1EE23B220, off_1E87285A0);
  OUTLINED_FUNCTION_26_3();
  v1 = (*((*MEMORY[0x1E69E7D40] & v0) + 0x268))();
  v2 = OUTLINED_FUNCTION_3_24();

  return v2;
}

uint64_t sub_1E388E428()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 616))();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1E388ED3C(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1E388E4E8(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 616))();
  if (!v4)
  {
    return 0;
  }

  result = sub_1E388ED3C(v4);
  if (!result)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a2)
  {
    v6 = *(result + 8 * a2 + 32);

    v7 = *(v6 + 16);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E388E5F4()
{
  sub_1E3280A90(0, &qword_1EE23B220, off_1E87285A0);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v1) + 0x268))();
  OUTLINED_FUNCTION_14_44();
  v5 = sub_1E3AABB6C(v2, v3, v4);

  return v5;
}

double sub_1E388E798(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1.0;
  }

  if (a1 == 1)
  {
    return -1.5;
  }

  if (a1)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  return 3.0;
}

uint64_t sub_1E388E8CC()
{
  sub_1E3280A90(0, &qword_1EE23B220, off_1E87285A0);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v1) + 0x268))();
  OUTLINED_FUNCTION_14_44();
  v5 = sub_1E3AABC1C(v2, v3, v4);

  return v5;
}

BOOL sub_1E388E9C4()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v1 + 592))();
  OUTLINED_FUNCTION_26_3();
  v3 = (*((*v0 & v2) + 0x268))();
  sub_1E377A8DC();
  v5 = v4;

  if (v5)
  {
    sub_1E388CF08(v5);
  }

  return v5 != 0;
}

void sub_1E388EAF4()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E388CB80(v1);
  }
}

void sub_1E388EB58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E388CA64(0);
  }
}

unint64_t sub_1E388EBAC()
{
  result = qword_1EE23B4F0;
  if (!qword_1EE23B4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C8F0, qword_1E429AC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B4F0);
  }

  return result;
}

uint64_t sub_1E388EC10()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_17(v1);

  return sub_1E388DF6C();
}

uint64_t sub_1E388ECA4()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_17(v1);

  return sub_1E388DC50();
}

uint64_t sub_1E388ED3C(void *a1)
{
  v2 = [a1 scores];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E388EDB8()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_0(v0 + 172, &v682);
  __asm { FMOV            V0.2D, #12.0 }

  v656 = v0;
  v606 = _Q0;
  if (*(v0 + 172) == 1)
  {
    v689 = xmmword_1E4296CE0;
    v690 = xmmword_1E4296C50;
    LOBYTE(v691) = 0;
    sub_1E3C2CC78();
    v685 = 0u;
    v686 = 0u;
    LOBYTE(v687) = 1;
    sub_1E3C2D7EC();
    sub_1E3C2DE50();
    sub_1E3C2E258();
    v7 = *(v0 + 112);
    (*(*v7 + 1656))();
    OUTLINED_FUNCTION_36();
    (*(v8 + 1656))();
    sub_1E3C6DC94(v7);
    sub_1E3C6DE18();
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    sub_1E3C2CDD0();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2CE80();
    OUTLINED_FUNCTION_10_7();
    sub_1E3C2D150();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2D200();
    v711 = xmmword_1E42A76A0;
    v712 = v606;
    v713 = 0;
    v726 = xmmword_1E42A76A0;
    v727 = xmmword_1E42A76B0;
    v728 = 0;
    v723 = xmmword_1E42A76A0;
    v724 = xmmword_1E42A76B0;
    v725 = 0;
    __asm { FMOV            V2.2D, #14.0 }

    v720 = xmmword_1E42A76C0;
    v721 = _Q2;
    v722 = 0;
    v717 = xmmword_1E42A76A0;
    v718 = v606;
    v719 = 0;
    type metadata accessor for UIEdgeInsets();
    v11 = v10;
    v12 = sub_1E3C3DE00();
    LOBYTE(v709) = v716;
    v20 = OUTLINED_FUNCTION_0_60(v12, v13, v14, v15, v16, v17, v18, v19, v446, v473, v500, v527, v554, v581, v606, *(&v606 + 1), v656, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v714, *(&v714 + 1), v715, *(&v715 + 1), v709, v710, v711);
    sub_1E3C2FCB8(v20, v21, v22, v23, &v717, &v707, v11, v24);
    v33 = OUTLINED_FUNCTION_9_41(v25, v26, v27, v28, v29, v30, v31, v32, v447, v474, v501, v528, v555, v582, v607, v632, v657, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
    memcpy(v33, v34, 0xE9uLL);
    v35 = OUTLINED_FUNCTION_18();
    v43 = OUTLINED_FUNCTION_2_55(v35, v36, v37, v38, v39, v40, v41, v42, v448, v475, v502, v529, v556, v583, v608, v633, v658, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
    sub_1E3C2FDFC(v43, 1, v44, v11);
    sub_1E39537A8();
    *&v689 = v45;
    *(&v689 + 1) = v46;
    *&v690 = v47;
    *(&v690 + 1) = v48;
    LOBYTE(v691) = 0;
    sub_1E3C2D7EC();
    v49 = *sub_1E3E5FB0C();
    sub_1E3C2DE50();
    v50 = *(v1 + 112);
    OUTLINED_FUNCTION_36();
    (*(v51 + 1656))();
    OUTLINED_FUNCTION_36();
    v52 = OUTLINED_FUNCTION_15_8();
    v53(v52);
    OUTLINED_FUNCTION_36();
    v54 = OUTLINED_FUNCTION_10_7();
    v55(v54);
    OUTLINED_FUNCTION_36();
    v56 = OUTLINED_FUNCTION_10_7();
    v57(v56);
    OUTLINED_FUNCTION_36();
    (*(v58 + 2008))(1);
    sub_1E3952C94();
    OUTLINED_FUNCTION_7_64(v59, v60, v61, v62);
    (*(v63 + 160))(&v729);
    OUTLINED_FUNCTION_36();
    v64 = OUTLINED_FUNCTION_13_12();
    v65(v64);
    OUTLINED_FUNCTION_36();
    (*(v66 + 1984))(5);
    LOBYTE(v726) = 22;
    LOBYTE(v723) = 22;
    LOBYTE(v720) = 22;
    LOBYTE(v717) = 17;
    LOBYTE(v714) = 19;
    sub_1E3C3DE00();
    LOBYTE(v703) = v707;
    OUTLINED_FUNCTION_8_40(&v703, &v726, &v723, &v720, &v711);
    LODWORD(v726) = v711;
    WORD2(v726) = WORD2(v711);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v67 + 1600))(&v726, 48, v68 & 1, &qword_1F5D549D8);
    OUTLINED_FUNCTION_36();
    (*(v69 + 1792))(10);
    OUTLINED_FUNCTION_5_0(v1 + 172, &v685);
    if (*(v1 + 172))
    {
      v70 = 0;
    }

    else
    {
      v70 = 2;
    }

    (*(*v50 + 1936))(v70);
    v71 = *sub_1E3E5FDEC();
    v72 = *(*v50 + 680);
    v73 = v71;
    v72(v71);
    v1 = v659;
    v74 = *(v659 + 120);
    OUTLINED_FUNCTION_36();
    (*(v75 + 1656))();
    OUTLINED_FUNCTION_36();
    v76 = OUTLINED_FUNCTION_15_8();
    v77(v76);
    OUTLINED_FUNCTION_36();
    v78 = OUTLINED_FUNCTION_10_7();
    v79(v78);
    OUTLINED_FUNCTION_36();
    v80 = OUTLINED_FUNCTION_10_7();
    v81(v80);
    OUTLINED_FUNCTION_36();
    (*(v82 + 2008))(1);
    LOBYTE(v711) = 17;
    LOBYTE(v726) = 17;
    LOBYTE(v723) = 22;
    LOBYTE(v720) = 3;
    LOBYTE(v717) = 14;
    OUTLINED_FUNCTION_12_39();
    v83 = sub_1E3C3DE00();
    v91 = OUTLINED_FUNCTION_3_53(v83, v84, v85, v86, v87, v88, v89, v90, v449, v476, v503, v530, v557, v584, v609, v634, v659, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v714);
    sub_1E3C2FCB8(v91, v92, v93, v94, v95, v96, &qword_1F5D549D8, v97);
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v99 = *(v98 + 1600);
    v108 = OUTLINED_FUNCTION_5_57(v100, v101, v102, v103, v104, v105, v106, v107, v450, v477, v504, v531, v558, v585, v610, v635, v660, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
    v99(v108, 48);
    LOBYTE(v711) = 5;
    LOBYTE(v726) = 3;
    sub_1E3C2FC98();
    LOBYTE(v720) = v723;
    sub_1E3C3DE00();
    LOBYTE(v714) = v717;
    sub_1E3C3DE00();
    LOBYTE(v703) = v707;
    sub_1E3C3DE00();
    LOBYTE(v696) = v699;
    sub_1E3C2FCB8(&v711, &v720, &v714, &v703, &v726, &v696, &unk_1F5D54B88, &v729);
    OUTLINED_FUNCTION_1_80();
    v109 = OUTLINED_FUNCTION_18();
    v117 = OUTLINED_FUNCTION_2_55(v109, v110, v111, v112, v113, v114, v115, v116, v451, v478, v505, v532, v559, v586, v611, v636, v661, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
    v99(v117, 55);
    LOBYTE(v711) = 11;
    LOBYTE(v726) = 5;
    LOBYTE(v723) = 5;
    LOBYTE(v720) = 5;
    LOBYTE(v717) = 5;
    OUTLINED_FUNCTION_12_39();
    v118 = sub_1E3C3DE00();
    LOBYTE(v707) = v714;
    v126 = OUTLINED_FUNCTION_0_60(v118, v119, v120, v121, v122, v123, v124, v125, v452, v479, v506, v533, v560, v587, v612, v637, v662, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
    sub_1E3C2FCB8(v126, v127, v128, v129, &v707, &v717, &qword_1F5D54AF8, v130);
    OUTLINED_FUNCTION_1_80();
    v131 = OUTLINED_FUNCTION_18();
    v139 = OUTLINED_FUNCTION_2_55(v131, v132, v133, v134, v135, v136, v137, v138, v453, v480, v507, v534, v561, v588, v613, v638, v663, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
    v99(v139, 54);
    v140 = *sub_1E3E5FD88();
    v141 = *(*v74 + 680);
    v142 = v140;
    v141(v140);
    sub_1E3952C94();
    OUTLINED_FUNCTION_7_64(v143, v144, v145, v146);
    (*(v147 + 160))(&v729);
    OUTLINED_FUNCTION_36();
    v148 = OUTLINED_FUNCTION_13_12();
    v149(v148);
    OUTLINED_FUNCTION_36();
    (*(v150 + 1984))(5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_1E42A76D0;
  v152 = [objc_opt_self() blackColor];
  v153 = [v152 colorWithAlphaComponent_];

  *(v151 + 32) = v153;
  v154 = OUTLINED_FUNCTION_14_45();
  v155 = [v154 colorWithAlphaComponent_];

  *(v151 + 40) = v155;
  v156 = OUTLINED_FUNCTION_14_45();
  v157 = [v156 colorWithAlphaComponent_];

  *(v151 + 48) = v157;
  v158 = OUTLINED_FUNCTION_14_45();
  v159 = [v158 colorWithAlphaComponent_];

  *(v151 + 56) = v159;
  *(v151 + 64) = OUTLINED_FUNCTION_14_45();
  type metadata accessor for ViewGradientLayout(0);
  sub_1E40C2E40();
  sub_1E3C2E134();
  v160 = *sub_1E3E5FB0C();
  sub_1E3C2DE50();
  v161 = *sub_1E3E5FB88();
  sub_1E3C2E258();
  v162 = sub_1E3E61064();
  v163 = *(v162 + 1);
  v729 = *v162;
  v730 = v163;
  v731 = 0;
  sub_1E3C2D7EC();
  v164 = *(v1 + 104);
  OUTLINED_FUNCTION_36();
  (*(v165 + 1808))(3);
  v166 = *sub_1E3E60A14();
  v167 = *(*v164 + 872);
  v168 = v166;
  v167(v166);
  OUTLINED_FUNCTION_36();
  v170 = *(v169 + 440);
  v171 = OUTLINED_FUNCTION_36_0();
  v454 = v172;
  v170(v171);
  v729 = 0u;
  v730 = 0u;
  v731 = 1;
  v173 = *(*v164 + 560);
  v481 = *v164 + 560;
  v173(&v729);
  OUTLINED_FUNCTION_36();
  v175 = *(v174 + 360);
  v176 = OUTLINED_FUNCTION_36_0();
  v175(v176);
  v508 = (*v164 + 160);
  v535 = *v508;
  (*v508)(&v729);
  OUTLINED_FUNCTION_36();
  v178 = *(v177 + 312);
  v179 = OUTLINED_FUNCTION_36_0();
  v178(v179);
  OUTLINED_FUNCTION_36();
  (*(v180 + 1712))(1);
  v181 = *sub_1E3E5FB0C();
  v182 = *(*v164 + 776);
  v183 = v181;
  v182(v181);
  v184 = v656;
  OUTLINED_FUNCTION_5_0(v656 + 172, &v693);
  __asm { FMOV            V0.2D, #10.0 }

  v562 = _Q0;
  if (*(v656 + 172) == 1)
  {
    v186 = sub_1E418A524();
    (v170)(*v186, 0);
    OUTLINED_FUNCTION_36();
    (*(v187 + 2240))(1);
    sub_1E39537A8();
    *&v711 = v188;
    *(&v711 + 1) = v189;
    *&v712 = v190;
    *(&v712 + 1) = v191;
    v713 = 0;
    v173(&v711);
    (v178)(0x4048000000000000, 0);
    v726 = 0uLL;
    v727 = v562;
    v728 = 0;
    v535(&v726);
  }

  else
  {
    (*(*v164 + 2240))(0);
    v173(&v729);
    v192 = OUTLINED_FUNCTION_36_0();
    v175(v192);
    v535(&v729);
    v193 = OUTLINED_FUNCTION_36_0();
    v178(v193);
  }

  v194 = *(v656 + 144);
  v729 = xmmword_1E42A76E0;
  v730 = xmmword_1E42A76E0;
  v731 = 0;
  (*(*v194 + 160))(&v729);
  v195 = [objc_opt_self() whiteColor];
  v196 = [v195 colorWithAlphaComponent_];

  (*(*v194 + 752))(v196);
  OUTLINED_FUNCTION_5_0(v194 + 112, &v696);
  OUTLINED_FUNCTION_36();
  v198 = *(v197 + 2056);

  v199 = OUTLINED_FUNCTION_15_8();
  v198(v199);

  OUTLINED_FUNCTION_36();
  v201 = *(v200 + 2080);

  v202 = OUTLINED_FUNCTION_15_8();
  v201(v202);

  OUTLINED_FUNCTION_36();
  v204 = *(v203 + 2104);

  v205 = OUTLINED_FUNCTION_10_7();
  v204(v205);

  v206 = *(v656 + 128);
  OUTLINED_FUNCTION_36();
  v207 = OUTLINED_FUNCTION_15_8();
  v208(v207);
  OUTLINED_FUNCTION_36();
  v209 = OUTLINED_FUNCTION_10_7();
  v210(v209);
  OUTLINED_FUNCTION_36();
  v211 = OUTLINED_FUNCTION_10_7();
  v212(v211);
  LOBYTE(v711) = 11;
  LOBYTE(v726) = 10;
  LOBYTE(v723) = 10;
  LOBYTE(v720) = 10;
  LOBYTE(v717) = 5;
  OUTLINED_FUNCTION_12_39();
  v213 = sub_1E3C3DE00();
  LOBYTE(v707) = v714;
  v221 = OUTLINED_FUNCTION_0_60(v213, v214, v215, v216, v217, v218, v219, v220, v454, v481, v508, v535, v562, *(&v562 + 1), v606, *(&v606 + 1), v656, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  sub_1E3C2FCB8(v221, v222, v223, v224, &v707, &v717, &qword_1F5D54AF8, v225);
  OUTLINED_FUNCTION_1_80();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v227 = *(v226 + 1600);
  v236 = OUTLINED_FUNCTION_5_57(v228, v229, v230, v231, v232, v233, v234, v235, v455, v482, v509, v536, v563, v589, v614, v639, v664, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  v237 = v227(v236, 54);
  LOBYTE(v726) = 22;
  LOBYTE(v723) = 22;
  LOBYTE(v720) = 26;
  LOBYTE(v717) = 17;
  LOBYTE(v714) = 22;
  v245 = OUTLINED_FUNCTION_0_60(v237, v238, v239, v240, v241, v242, v243, v244, v456, v483, v510, v537, v564, v590, v615, v640, v665, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, 21);
  OUTLINED_FUNCTION_8_40(v245, v246, v247, v248, v249);
  OUTLINED_FUNCTION_1_80();
  v250 = OUTLINED_FUNCTION_18();
  v258 = OUTLINED_FUNCTION_2_55(v250, v251, v252, v253, v254, v255, v256, v257, v457, v484, v511, v538, v565, v591, v616, v641, v666, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  v227(v258, 48);
  v711 = 0u;
  v712 = 0u;
  v713 = 1;
  v726 = 0x4020000000000000uLL;
  v727 = 0uLL;
  v728 = 0;
  v723 = 0x4020000000000000uLL;
  v724 = 0uLL;
  v725 = 0;
  v720 = 0x402C000000000000uLL;
  v721 = 0uLL;
  v722 = 0;
  v717 = 0x4024000000000000uLL;
  v718 = 0uLL;
  v719 = 0;
  v259 = *(MEMORY[0x1E69DDCE0] + 16);
  v714 = *MEMORY[0x1E69DDCE0];
  v715 = v259;
  v716 = 0;
  type metadata accessor for UIEdgeInsets();
  v261 = v260;
  v269 = OUTLINED_FUNCTION_0_60(v260, v262, v263, v264, v265, v266, v267, v268, v458, v485, v512, v539, v566, v592, v617, v642, v667, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  OUTLINED_FUNCTION_8_40(v269, v270, v271, v272, v273);
  v282 = OUTLINED_FUNCTION_9_41(v274, v275, v276, v277, v278, v279, v280, v281, v459, v486, v513, v540, v567, v593, v618, v643, v668, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  memcpy(v282, v283, 0xE9uLL);
  v284 = OUTLINED_FUNCTION_18();
  v292 = OUTLINED_FUNCTION_2_55(v284, v285, v286, v287, v288, v289, v290, v291, v460, v487, v514, v541, v568, v594, v619, v644, v669, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  v227(v292, 0);
  v293 = *sub_1E3E5FDEC();
  v294 = v184;
  v295 = *(*v206 + 680);
  v296 = v293;
  v295(v293);
  LOBYTE(v711) = 11;
  LOBYTE(v726) = 0;
  LOBYTE(v723) = 0;
  LOBYTE(v720) = 0;
  sub_1E3C3DE00();
  LOBYTE(v714) = v717;
  sub_1E3C3DE00();
  LOBYTE(v703) = v707;
  sub_1E3C2FCB8(&v711, &v726, &v723, &v714, &v720, &v703, &unk_1F5D999E0, &v729);
  OUTLINED_FUNCTION_1_80();
  v297 = OUTLINED_FUNCTION_18();
  v305 = OUTLINED_FUNCTION_2_55(v297, v298, v299, v300, v301, v302, v303, v304, v461, v488, v515, v542, v569, v595, v620, v645, v670, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  v227(v305, 23);
  OUTLINED_FUNCTION_36();
  v307 = *(v306 + 1936);
  v307(2);
  OUTLINED_FUNCTION_36();
  (*(v308 + 2008))(1);
  v309 = *sub_1E3E5FD88();
  v310 = *(*v206 + 872);
  v311 = v309;
  v310(v309);
  v307(2);
  v312 = *(v294 + 136);
  v711 = v570;
  v712 = 0uLL;
  v713 = 0;
  v726 = 0u;
  v727 = 0u;
  v728 = 1;
  v723 = v621;
  v724 = 0uLL;
  v725 = 0;
  sub_1E3C2FC98();
  v717 = v720;
  v718 = v721;
  v719 = v722;
  OUTLINED_FUNCTION_12_39();
  sub_1E3C3DE00();
  v707 = v714;
  v708 = v715;
  LOBYTE(v709) = v716;
  sub_1E3C3DE00();
  v699 = v703;
  v700 = v704;
  LOBYTE(v701) = v705;
  sub_1E3C2FCB8(&v711, &v717, &v707, &v726, &v723, &v699, v261, &v729);
  v321 = OUTLINED_FUNCTION_9_41(v313, v314, v315, v316, v317, v318, v319, v320, v462, v489, v516, v543, v570, *(&v570 + 1), v621, *(&v621 + 1), v671, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  memcpy(v321, v322, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v331 = OUTLINED_FUNCTION_5_57(v323, v324, v325, v326, v327, v328, v329, v330, v463, v490, v517, v544, v571, v596, v622, v646, v672, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  v332(v331, 0);
  v333 = sub_1E3E5FDEC();
  v334 = *v333;
  v335 = *(*v312 + 680);
  v336 = *v333;
  v335(v334);
  v337 = *v333;
  v338 = *(*v312 + 872);
  v339 = v337;
  v338(v337);
  v340 = [objc_opt_self() clearColor];
  OUTLINED_FUNCTION_36();
  (*(v341 + 752))();
  v342 = *(v294 + 152);
  *&v711 = sub_1E3890B6C(26.0);
  BYTE8(v711) = 0;
  *&v726 = sub_1E3890B6C(26.0);
  BYTE8(v726) = 0;
  *&v723 = 0x4040000000000000;
  BYTE8(v723) = 0;
  *&v720 = 0x4038000000000000;
  BYTE8(v720) = 0;
  *&v717 = sub_1E3890B6C(20.0);
  BYTE8(v717) = 0;
  v343 = MEMORY[0x1E69E7DE0];
  v344 = sub_1E3C3DE00();
  BYTE8(v707) = BYTE8(v714);
  v352 = OUTLINED_FUNCTION_3_53(v344, v345, v346, v347, v348, v349, v350, v351, v464, v491, v518, v545, v572, v597, v623, v647, v673, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v714);
  sub_1E3C2FCB8(v352, v353, v354, v355, v356, v357, v343, v358);
  v367 = OUTLINED_FUNCTION_9_41(v359, v360, v361, v362, v363, v364, v365, v366, v465, v492, v519, v546, v573, v598, v624, v648, v674, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  memcpy(v367, v368, 0x59uLL);
  v369 = OUTLINED_FUNCTION_18();
  v370 = *(*v342 + 1600);
  v378 = OUTLINED_FUNCTION_5_57(v369, v371, v372, v373, v374, v375, v376, v377, v466, v493, v520, v547, v574, v599, v625, v649, v675, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  v370(v378, 6);
  *&v711 = sub_1E3890B6C(26.0);
  BYTE8(v711) = 0;
  *&v726 = sub_1E3890B6C(26.0);
  BYTE8(v726) = 0;
  *&v723 = 0x4040000000000000;
  BYTE8(v723) = 0;
  *&v720 = 0x4038000000000000;
  BYTE8(v720) = 0;
  *&v717 = sub_1E3890B6C(20.0);
  BYTE8(v717) = 0;
  v379 = sub_1E3C3DE00();
  BYTE8(v707) = BYTE8(v714);
  v387 = OUTLINED_FUNCTION_3_53(v379, v380, v381, v382, v383, v384, v385, v386, v467, v494, v521, v548, v575, v600, v626, v650, v676, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v714);
  sub_1E3C2FCB8(v387, v388, v389, v390, v391, v392, v343, v393);
  v402 = OUTLINED_FUNCTION_9_41(v394, v395, v396, v397, v398, v399, v400, v401, v468, v495, v522, v549, v576, v601, v627, v651, v677, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  memcpy(v402, v403, 0x59uLL);
  v404 = OUTLINED_FUNCTION_18();
  v412 = OUTLINED_FUNCTION_2_55(v404, v405, v406, v407, v408, v409, v410, v411, v469, v496, v523, v550, v577, v602, v628, v652, v678, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  v413 = (v370)(v412, 2);
  v713 = 0;
  v711 = 0u;
  v712 = 0u;
  v726 = 0x4024000000000000uLL;
  *&v727 = 0;
  *(&v727 + 1) = 0x402C000000000000;
  v728 = 0;
  v723 = 0x4028000000000000uLL;
  *&v724 = 0;
  *(&v724 + 1) = 0x402C000000000000;
  v725 = 0;
  v720 = 0x402C000000000000uLL;
  *&v721 = 0;
  *(&v721 + 1) = 0x402C000000000000;
  v722 = 0;
  v717 = 0x4028000000000000uLL;
  *&v718 = 0;
  *(&v718 + 1) = 0x4028000000000000;
  v719 = 0;
  v714 = 0x4028000000000000uLL;
  *&v715 = 0;
  *(&v715 + 1) = 0x4028000000000000;
  v716 = 0;
  v421 = OUTLINED_FUNCTION_0_60(v413, v414, v415, v416, v417, v418, v419, v420, v470, v497, v524, v551, v578, v603, v629, v653, v679, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, 0);
  OUTLINED_FUNCTION_8_40(v421, v422, v423, v424, v425);
  v434 = OUTLINED_FUNCTION_9_41(v426, v427, v428, v429, v430, v431, v432, v433, v471, v498, v525, v552, v579, v604, v630, v654, v680, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  memcpy(v434, v435, 0xE9uLL);
  v436 = OUTLINED_FUNCTION_18();
  v444 = OUTLINED_FUNCTION_2_55(v436, v437, v438, v439, v440, v441, v442, v443, v472, v499, v526, v553, v580, v605, v631, v655, v681, v682, v683, v684, v685, *(&v685 + 1), v686, *(&v686 + 1), v687, v688, v689, *(&v689 + 1), v690, *(&v690 + 1), v691, v692, v693, v694, v695, v696, v697, v698, v699, *(&v699 + 1), v700, *(&v700 + 1), v701, v702, v703, *(&v703 + 1), v704, *(&v704 + 1), v705, v706, v707, *(&v707 + 1), v708, *(&v708 + 1), v709, v710, v711);
  return (v370)(v444, 0);
}

uint64_t sub_1E38905E0(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 172);
  *(v1 + 172) = a1;
  result = OUTLINED_FUNCTION_5_0(v1 + 172, v5);
  if (v3 != *(v1 + 172))
  {
    return sub_1E388EDB8();
  }

  return result;
}

uint64_t *sub_1E3890648(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3890684(v1);
}

uint64_t *sub_1E3890684(__int16 a1)
{
  type metadata accessor for ImageLayout();
  *(v1 + 104) = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  *(v1 + 112) = sub_1E383BCC0();
  *(v1 + 120) = sub_1E383BCC0();
  *(v1 + 128) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  *(v1 + 136) = sub_1E3BBB724();
  type metadata accessor for PlaybackStatusLayout();
  *(v1 + 144) = sub_1E3A70EBC(1);
  *(v1 + 152) = sub_1E3BD61D8();
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 172) = 0;
  *(v1 + 170) = a1;
  v3 = sub_1E3C2F9A0();

  sub_1E388EDB8();
  sub_1E3C37CBC(v3[13], 39);
  sub_1E3C37CBC(v3[18], 96);
  sub_1E3C37CBC(v3[14], 23);
  v4 = v3[15];
  sub_1E3C37CBC(v4, 15);
  sub_1E3C37CBC(v4, 16);
  sub_1E3C37CBC(v3[16], 17);
  sub_1E3C37CBC(v3[19], 40);
  sub_1E3C37CBC(v3[17], 67);

  return v3;
}

void sub_1E38907E8()
{
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  *(v0 + 112) = sub_1E383BCC0();
  *(v0 + 120) = sub_1E383BCC0();
  *(v0 + 128) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  *(v0 + 136) = sub_1E3BBB724();
  type metadata accessor for PlaybackStatusLayout();
  *(v0 + 144) = sub_1E3A70EBC(1);
  *(v0 + 152) = sub_1E3BD61D8();
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 172) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E38908D0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E3C35CF4(a1, a2);
  v6 = sub_1E3890920(a1, a3, v5);

  return sub_1E38905E0(v6);
}

BOOL sub_1E3890920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a2 != 5)
  {
    sub_1E3890B18(a1, a2, a3);
    if (sub_1E4205E84() & 1) != 0 && (sub_1E3A24FDC(a1))
    {
      return 1;
    }
  }

  return result;
}

double sub_1E389099C()
{

  return result;
}

uint64_t sub_1E38909F4()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3890A54()
{
  v0 = sub_1E38909F4();

  return MEMORY[0x1EEE6BDC0](v0, 173, 7);
}

uint64_t sub_1E3890A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E3890920(a1, a3, a3);
  OUTLINED_FUNCTION_5_0(v3 + 172, v6);
  return (v4 ^ *(v3 + 172)) & 1;
}

unint64_t sub_1E3890B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE263D48[0];
  if (!qword_1EE263D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE263D48);
  }

  return result;
}

double sub_1E3890B6C(double a1)
{
  v3 = (*(*v1 + 1576))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 preferredContentSizeCategory];

    v6 = [objc_opt_self() defaultMetrics];
    sub_1E42067C4();
    a1 = v7;
  }

  return a1;
}

id (*sub_1E3890C74(void *a1))(uint64_t a1)
{
  a1[2] = v1;
  [v1 contentSize];
  *a1 = v3;
  a1[1] = v4;
  return sub_1E3890CC8;
}

id sub_1E3890CE0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseScrollView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return [v0 vui:0 layoutSubviews:v1 computationOnly:v2];
}

id sub_1E3890DAC()
{
  OUTLINED_FUNCTION_0_8();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_2_0();

  return [v2 v3];
}

id sub_1E3890DF8()
{
  OUTLINED_FUNCTION_0_8();
  v5 = type metadata accessor for BaseScrollView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3890E68(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BaseScrollView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3890EF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseScrollView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3890F5C()
{
  *(v0 + 201) = 0;
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 208) = *MEMORY[0x1E69DDCE0];
  *(v0 + 224) = v1;
  v2 = sub_1E3BBB754();

  sub_1E3890FA8(v3);

  return v2;
}

__n128 sub_1E3890FA8(__n128 a1)
{
  sub_1E3952C78();
  v21[0] = v2;
  v21[1] = v3;
  v21[2] = v4;
  v21[3] = v5;
  LOBYTE(v21[4]) = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 1;
  sub_1E3952C78();
  v37[0] = v6;
  v37[1] = v7;
  v37[2] = v8;
  v37[3] = v9;
  v38 = 0;
  type metadata accessor for UIEdgeInsets();
  v11 = v10;
  sub_1E3C2FC98();
  v32[0] = v34;
  v32[1] = v35;
  v33 = v36;
  sub_1E3C3DE00();
  v27[0] = v29;
  v27[1] = v30;
  v28 = v31;
  sub_1E3C3DE00();
  v22[0] = v24;
  v22[1] = v25;
  v23 = v26;
  sub_1E3C2FCB8(v21, v32, v27, v39, v37, v22, v11, __src);
  memcpy(v21, __src, 0xE9uLL);
  v12 = OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC(v21, 0, v12 & 1, v11);
  v13 = sub_1E3C8BE74();
  sub_1E3DEFBE8(1, v13);
  v14 = [objc_opt_self() clearColor];
  sub_1E3C2DE50();
  v15 = *(MEMORY[0x1E69DDCE0] + 16);
  __src[0] = *MEMORY[0x1E69DDCE0];
  __src[1] = v15;
  LOBYTE(__src[2]) = 0;
  sub_1E3C2CC78();
  swift_beginAccess();
  __asm { FMOV            V0.2D, #25.0 }

  v1[13] = result;
  v1[14] = result;
  return result;
}

uint64_t sub_1E3891128()
{
  v0 = sub_1E3B20FDC();

  return MEMORY[0x1EEE6BDC0](v0, 240, 7);
}

unint64_t sub_1E389115C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2882C8;
  if (!qword_1EE2882C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2882C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextMenuButtonMenuStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E38912B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C960, &unk_1E42A7840);
  }

  else
  {

    return type metadata accessor for CardCollectionViewCell();
  }
}

uint64_t sub_1E389130C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E3294EE4(v1 + v3, a1, &qword_1ECF2C970, &qword_1E429D870);
}

uint64_t sub_1E3891370(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner, v5);
  sub_1E37FA198(a1, v1 + v3, &qword_1ECF2C970, &qword_1E429D870);
  return swift_endAccess();
}

void sub_1E38913D8()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = v1;
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_3_54();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v3 + v4);
  v5;

  if (!v5)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_1E389147C()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  OUTLINED_FUNCTION_3();

  v9.origin.x = OUTLINED_FUNCTION_6();
  CGRectGetWidth(v9);
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_1_36();
  v3 = sub_1E3890DAC();
  if ((sub_1E39DFFC8() & 1) != 0 && [objc_opt_self() isMac])
  {
    [v3 setClipsToBounds_];
  }

  v4 = &v3[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_delegate];
  OUTLINED_FUNCTION_3_0(&v3[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_delegate], v8);
  *(v4 + 1) = &off_1F5D60B98;
  swift_unknownObjectWeakAssign();
  [v1 setView_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E4297BE0;
  v6 = sub_1E42001D4();
  v7 = MEMORY[0x1E69DC2B0];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
  sub_1E4206944();

  swift_unknownObjectRelease();
}

void sub_1E3891668()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCell];
    *&Strong[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCell] = 0;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_36_18(1);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    *&v3[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeLastWidth] = 0;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 vuiView];

    if (v6)
    {
      [v6 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E38917C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, sel_vui_viewDidLayoutSubviews);
  if (![v1 view])
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_106();
  type metadata accessor for LayoutGrid();
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_3_54();
  [swift_dynamicCastClassUnconditional() bounds];
  OUTLINED_FUNCTION_3();

  v29.origin.x = OUTLINED_FUNCTION_6();
  Width = CGRectGetWidth(v29);
  sub_1E3A258E4(Width);
  sub_1E38913D8();
  v11 = v10;
  [v10 setContentInset_];

  if (!*&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8();
  v13 = *(v12 + 1072);

  v15 = v13(v14);
  v17 = v16;

  if (v17)
  {
    return;
  }

  MEMORY[0x1E6909190](v15, 0);
  sub_1E38913D8();
  v19 = v18;
  v20 = sub_1E41FE7E4();
  [v19 vui:v20 scrollToItemAtIndexPath:8 atScrollPosition:0 animated:?];

  v21 = OUTLINED_FUNCTION_53();
  v22(v21);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_1E3891AD0();
  sub_1E325F6F0(v6, &qword_1ECF309A0, &qword_1E42A7870);
  if (!*&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_9:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_8();
  v24 = *(v23 + 1296);

  v24(v25);

  sub_1E3892B24();
  v26 = OUTLINED_FUNCTION_74();
  v27(v26);
}

void sub_1E3891AD0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v59 = v5;
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v58 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v56 - v20;
  v63 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel;
  if (!*&v0[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_8();
  v22 = *(v21 + 1024);

  v24 = v22(v23);

  if (!v24)
  {
    goto LABEL_38;
  }

  if (*(v24 + 16) < 2uLL)
  {
    OUTLINED_FUNCTION_25_2();

    return;
  }

  v57 = *(v24 + 16);
  sub_1E3294EE4(v3, v18, &qword_1ECF309A0, &qword_1E42A7870);
  v25 = v60;
  if (__swift_getEnumTagSinglePayload(v18, 1, v60) == 1)
  {
    sub_1E38913D8();
    v27 = v26;
    v28 = sub_1E39DFFC8();
    v29 = v61;
    if ((v28 & 1) == 0)
    {
      v30 = 0;
LABEL_13:
      (*((*MEMORY[0x1E69E7D40] & *v27) + 0xF0))(v15, 0, v30);

      sub_1E3898A70(v15, v29);
      if (__swift_getEnumTagSinglePayload(v18, 1, v25) != 1)
      {
        sub_1E325F6F0(v18, &qword_1ECF309A0, &qword_1E42A7870);
      }

      goto LABEL_15;
    }

    if ([v1 view])
    {
      type metadata accessor for EpisodeContainerView();
      OUTLINED_FUNCTION_3_54();
      v30 = swift_dynamicCastClassUnconditional();
      goto LABEL_13;
    }

LABEL_44:
    __break(1u);
    return;
  }

  v29 = v61;
  (*(v59 + 32))(v61, v18, v25);
  v32 = OUTLINED_FUNCTION_21_32();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v25);
LABEL_15:
  sub_1E3294EE4(v29, v12, &qword_1ECF309A0, &qword_1E42A7870);
  if (__swift_getEnumTagSinglePayload(v12, 1, v25) == 1)
  {
    sub_1E325F6F0(v29, &qword_1ECF309A0, &qword_1E42A7870);

    v35 = v12;
    goto LABEL_37;
  }

  (*(v59 + 32))(v58, v12, v25);
  v62 = sub_1E41FE844();
  v36 = 0;
  v37 = *(v24 + 16);
  v38 = (v24 + 16 * v37 + 24);
  if (!v37)
  {
LABEL_29:

    v49 = v61;
    goto LABEL_36;
  }

  while (1)
  {
    if (v37 > *(v24 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v39 = *&v1[v63];
    if (!v39)
    {
      goto LABEL_41;
    }

    v40 = v1;
    v41 = *v38;
    v64 = *(v38 - 1);
    v42 = *(*v39 + 1048);

    v44 = v42(v43);

    if (!v44)
    {

      v1 = v40;
      goto LABEL_28;
    }

    v1 = v40;
    if (!*(v44 + 16))
    {

LABEL_27:

      goto LABEL_28;
    }

    v45 = sub_1E327D33C(v64, v41);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      goto LABEL_27;
    }

    v48 = *(*(v44 + 56) + 8 * v45);

    if (v62 >= v48)
    {
      break;
    }

LABEL_28:
    v38 -= 2;
    ++v36;
    if (!--v37)
    {
      goto LABEL_29;
    }
  }

  v50 = v57 - 1 - v36;
  if (__OFSUB__(v57 - 1, v36))
  {
    goto LABEL_40;
  }

  v51 = [v40 view];
  v49 = v61;
  if (!v51)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_11_14();
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_3_54();
  v52 = swift_dynamicCastClassUnconditional();
  v53 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v54 = *(v52 + v53);
  v55 = v54;

  if (v54)
  {
    type metadata accessor for EpisodeSectionHeaderView();
    if (swift_dynamicCastClass())
    {
      sub_1E3E02AA8(v50);
    }
  }

LABEL_36:
  (*(v59 + 8))(v58, v60);
  v35 = v49;
LABEL_37:
  sub_1E325F6F0(v35, &qword_1ECF309A0, &qword_1E42A7870);
LABEL_38:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38920D8(uint64_t a1, uint64_t a2)
{
  v121 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C998, &qword_1E42A7878);
  sub_1E4148C68(sub_1E3892AE4, v3, &v118);
  v4 = v118;
  *(v118 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel) = a1;

  v5 = *(*a1 + 1128);

  v6 = v4;
  v5(v4, &off_1F5D60B88);
  if (!*&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
    __break(1u);
    goto LABEL_34;
  }

  LOBYTE(v121) = 13;
  OUTLINED_FUNCTION_8();
  v7 += 97;
  v8 = *v7;
  v9 = v7;

  v8(&v118, &v121, &unk_1F5D5DAC8, &off_1F5D5C998);

  if (*(&v119 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = sub_1E3F36DEC();
      if (v10 != 8 && (sub_1E3881E80(v10, 1, v11) & 1) != 0)
      {
        type metadata accessor for GradientBackgroundDecorationView();
        v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v12 frame];
        if (!OUTLINED_FUNCTION_20_32())
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        OUTLINED_FUNCTION_11_14();
        type metadata accessor for EpisodeContainerView();
        OUTLINED_FUNCTION_3_54();
        [swift_dynamicCastClassUnconditional() bounds];

        v13 = OUTLINED_FUNCTION_6();
        [v14 v15];
        v16 = OUTLINED_FUNCTION_20_32();
        if (!v16)
        {
LABEL_44:
          __break(1u);
          return;
        }

        v9 = v16;
        OUTLINED_FUNCTION_3_54();
        swift_dynamicCastClassUnconditional();
        sub_1E3A530BC(v12, v17, v18, v19, v20, v21, v22, v23);

        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1E325F6F0(&v118, &unk_1ECF296E0, &unk_1E4298030);
  }

  if (!OUTLINED_FUNCTION_20_32())
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_11_14();
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_3_54();
  swift_dynamicCastClassUnconditional();
  v24 = OUTLINED_FUNCTION_106();
  sub_1E3A530BC(v24, v25, v26, v27, v28, v29, v30, v31);
LABEL_12:

  OUTLINED_FUNCTION_4_0();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  [v33 setScrollDirection_];
  v34 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  v35 = sub_1E3897234(sub_1E3898398, v32, v33);
  if (!OUTLINED_FUNCTION_20_32())
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_11_14();
  v36 = type metadata accessor for StackCollectionView();
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_3_54();
  [swift_dynamicCastClassUnconditional() bounds];
  OUTLINED_FUNCTION_3();

  v37 = v35;
  OUTLINED_FUNCTION_6();
  v38 = v36;
  v40 = sub_1E373BA04(v39);
  if (!OUTLINED_FUNCTION_20_32())
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_106();
  type metadata accessor for LayoutGrid();
  OUTLINED_FUNCTION_3_54();
  [swift_dynamicCastClassUnconditional() bounds];
  OUTLINED_FUNCTION_3();

  v122.origin.x = OUTLINED_FUNCTION_6();
  Width = CGRectGetWidth(v122);
  sub_1E3A258E4(Width);
  sub_1E3952C64();
  OUTLINED_FUNCTION_3();
  if ([objc_opt_self() isPad])
  {
    [v40 _setVisibleRectEdgeInsets_];
  }

  v42 = v40;
  [v42 setShowsVerticalScrollIndicator_];
  [v42 setShowsHorizontalScrollIndicator_];
  [v42 setPrefetchingEnabled_];
  [v42 setContentInsetAdjustmentBehavior_];
  v43 = OUTLINED_FUNCTION_6();
  [v44 v45];

  v46 = objc_opt_self();
  v47 = v42;
  v48 = [v46 clearColor];
  [v47 setBackgroundColor_];

  [v47 setClipsToBounds_];
  v49 = OUTLINED_FUNCTION_20_32();
  if (!v49)
  {
    goto LABEL_36;
  }

  v50 = v49;
  OUTLINED_FUNCTION_3_54();
  swift_dynamicCastClassUnconditional();
  v51 = v47;
  sub_1E3A52FCC(v47, v52, v53, v54, v55, v56, v57, v58);

  sub_1E38913D8();
  v60 = v59;
  v61 = MEMORY[0x1E69E7D40];
  v62 = *((*MEMORY[0x1E69E7D40] & *v59) + 0x70);
  swift_unknownObjectRetain();
  v62(v4);

  sub_1E38913D8();
  v64 = v63;
  v65 = *((*v61 & *v63) + 0x88);
  swift_unknownObjectRetain();
  v65(v4);

  v66 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
  sub_1E38913D8();
  v68 = v67;
  [v67 addInteraction_];

  if (!*&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1E38912B0(v69, v70, v71);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1E3859230(171);
  v73 = sub_1E4205ED4();

  [v51 vui:ObjCClassFromMetadata registerClass:v73 forCellWithReuseIdentifier:?];

  if (!*&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_8();
  v75 = *(v74 + 952);

  v77 = v75(v76);

  if (!v77)
  {
    goto LABEL_30;
  }

  v78 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v79 = OUTLINED_FUNCTION_20_32();
  if (!v79)
  {
    goto LABEL_40;
  }

  v80 = v79;
  OUTLINED_FUNCTION_3_54();
  v81 = swift_dynamicCastClassUnconditional();
  v82 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v83 = *(v81 + v82);
  v84 = v83;

  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v85 = sub_1E393D9C4(v77, v83, &v118, 0);

  sub_1E325F6F0(&v118, &qword_1ECF296C0, &unk_1E429BBE0);
  if (v85)
  {
    v86 = OUTLINED_FUNCTION_20_32();
    if (!v86)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v87 = v86;
    OUTLINED_FUNCTION_3_54();
    swift_dynamicCastClassUnconditional();
    v88 = v85;
    sub_1E3A53044(v85, v89, v90, v91, v92, v93, v94, v95);
  }

  v96 = OUTLINED_FUNCTION_20_32();
  if (!v96)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v97 = v96;
  OUTLINED_FUNCTION_3_54();
  v98 = swift_dynamicCastClassUnconditional();

  v99 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v100 = *(v98 + v99);
  v101 = v100;

  if (!v100)
  {
    goto LABEL_30;
  }

  type metadata accessor for EpisodeSectionHeaderView();
  OUTLINED_FUNCTION_20_2();
  v102 = swift_dynamicCastClass();
  if (v102)
  {
    v103 = v102;
    v104 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v105 = *(v103 + v104);
    v106 = v105;

    if (!v105)
    {
      goto LABEL_30;
    }

    v107 = &v106[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_delegate];
    OUTLINED_FUNCTION_3_0(&v106[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_delegate], v117);
    *(v107 + 1) = &off_1F5D60BA8;
    swift_unknownObjectWeakAssign();
    v101 = v106;
  }

LABEL_30:
  sub_1E38913D8();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v108 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA70, &qword_1E42A79B8));
  v109 = sub_1E4200084();
  v110 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  OUTLINED_FUNCTION_3_0(&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource], &v118);
  v111 = *&v6[v110];
  *&v6[v110] = v109;

  sub_1E3893288();
  v112 = *&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor] + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_delegate;
  OUTLINED_FUNCTION_3_0(v112, &v116);
  *(v112 + 8) = &off_1F5D60BF8;
  OUTLINED_FUNCTION_74();
  swift_unknownObjectWeakAssign();
  sub_1E3C9D1A0();
  if (*&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
    OUTLINED_FUNCTION_8();
    v114 = *(v113 + 1288);

    v114(v115);
  }
}

id sub_1E3892AE4@<X0>(void *a1@<X8>)
{
  type metadata accessor for EpisodeCollectionViewController(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_1E3892B24()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E38913D8();
  v7 = v6;
  v8 = [v6 vuiIndexPathsForVisibleItems];

  v26 = v2;
  v9 = sub_1E42062B4();

  v10 = *(v9 + 16);
  if (v10)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1E3897C68(0, v10, 0);
    v11 = v27;
    v12 = v4 + 16;
    OUTLINED_FUNCTION_81();
    v14 = v9 + v13;
    v24 = *(v12 + 56);
    v25 = v15;
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v25(v1, v14, v26);
      v18 = sub_1E41FE844();
      (*v16)(v1, v26);
      v20 = *(v27 + 16);
      v19 = *(v27 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = OUTLINED_FUNCTION_35(v19);
        sub_1E3897C68(v21, v20 + 1, 1);
      }

      *(v27 + 16) = v20 + 1;
      *(v27 + 8 * v20 + 32) = v18;
      v14 += v24;
      --v10;
      v12 = v17;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel))
  {
    OUTLINED_FUNCTION_8();
    v23 = *(v22 + 1280);

    v23(v11);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3892D50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner);
  *&v3[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C980, qword_1E42A7850);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_49_13();
  v19 = 1;
  OUTLINED_FUNCTION_39_14(v12);
  *(v13 + 80) = 1;
  *&v3[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeLastWidth] = 0;
  v14 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor(0);
  *&v3[v14] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  if (a2)
  {
    v15 = sub_1E4205ED4();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v4;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, v15, a3);

  return v16;
}

id sub_1E3892EE0(void *a1)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner);
  *&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C980, qword_1E42A7850);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_49_13();
  v14 = 1;
  OUTLINED_FUNCTION_39_14(v8);
  *(v9 + 80) = 1;
  *&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeLastWidth] = 0;
  v10 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor(0);
  *&v1[v10] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

void sub_1E389300C()
{
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner, &qword_1ECF2C970, &qword_1E429D870);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_currentSnapshot, &qword_1ECF2C9A0, &qword_1E42A7880);
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor);
}

double sub_1E38931FC@<D0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1E38BAE74(v10);
  v6 = v12;
  v7 = v11;
  v14 = *v13;
  v8 = *&v13[15];
  HIBYTE(v14) = v13[15];
  *a2 = v10[0];
  *(a2 + 1) = a1;
  *(a2 + 2) = v7;
  *(a2 + 6) = v6;
  *(a2 + 8) = a3;
  *(a2 + 16) = 0;
  result = *&v14;
  *(a2 + 24) = v14;
  *(a2 + 39) = v8;
  return result;
}

void sub_1E3893288()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v75 = v3;
  v69[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C9A0, &qword_1E42A7880);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v70 = v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C980, qword_1E42A7850);
  OUTLINED_FUNCTION_0_10();
  v74 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41();
  sub_1E38974F0(v11, v12, v13);
  sub_1E4200074();
  v14 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel;
  if (!*&v2[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v16 = sub_1E41EBEE0(v15);
  v18 = v17;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA20, &qword_1E42A7898);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E4297BE0;
  v78 = v16;
  *(v21 + 32) = v16;
  *(v21 + 40) = v18;
  *(v21 + 48) = v20;
  v72 = v20;

  v73 = v8;
  v76 = v1;
  sub_1E41FFFB4();

  v82[9] = MEMORY[0x1E69E7CD0];
  v71 = v2;
  v22 = *&v2[v14];
  if (!v22)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_8();
  v23 += 137;
  v24 = *v23;
  v25 = v23;

  v27 = v24(v26);

  v28 = 0;
  v79 = *(v27 + 16);
  v80 = v27;
  v77 = v27 + 32;
  v81 = MEMORY[0x1E69E7CC0];
LABEL_4:
  while (1)
  {
    v29 = v28;
    if (v28 == v79)
    {
      break;
    }

    if (v28 >= *(v80 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v30 = *(v77 + 8 * v28++);
    if (v30)
    {
      swift_retain_n();

      sub_1E41EBF7C(v30, v78, v18);
      OUTLINED_FUNCTION_26_21();
      if (v31)
      {
        sub_1E4207B44();

        OUTLINED_FUNCTION_15_45();
        sub_1E4206014();
        v22 = v82;
        sub_1E4207BA4();
        OUTLINED_FUNCTION_37_16();
        while (1)
        {
          v33 = v32 & v20;
          if (((*(v82 + (((v32 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v20)) & 1) == 0)
          {
            break;
          }

          v34 = (v25[6] + 16 * v33);
          if (*v34 != v2 || v34[1] != v29)
          {
            v36 = sub_1E42079A4();
            v32 = v33 + 1;
            if ((v36 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_24;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = OUTLINED_FUNCTION_7_65(isUniquelyReferenced_nonNull_native, v44, v45, v81);
      }

      OUTLINED_FUNCTION_55_10();
      if (v47)
      {
        v52 = OUTLINED_FUNCTION_35(v46);
        v81 = sub_1E38972EC(v52, v22, 1, v81);
      }

      OUTLINED_FUNCTION_9_42();
    }

    else
    {

      sub_1E41EC04C();
      OUTLINED_FUNCTION_26_21();
      if (v37)
      {
        sub_1E4207B44();

        OUTLINED_FUNCTION_15_45();
        sub_1E4206014();
        v22 = v82;
        sub_1E4207BA4();
        OUTLINED_FUNCTION_37_16();
        while (1)
        {
          v39 = v38 & v20;
          if (((*(v82 + (((v38 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v20)) & 1) == 0)
          {
            break;
          }

          v40 = (v25[6] + 16 * v39);
          if (*v40 != v2 || v40[1] != v29)
          {
            v42 = sub_1E42079A4();
            v38 = v39 + 1;
            if ((v42 & 1) == 0)
            {
              continue;
            }
          }

LABEL_24:
          swift_bridgeObjectRelease_n();

          goto LABEL_4;
        }
      }

      v48 = swift_isUniquelyReferenced_nonNull_native();
      if ((v48 & 1) == 0)
      {
        v81 = OUTLINED_FUNCTION_7_65(v48, v49, v50, v81);
      }

      OUTLINED_FUNCTION_55_10();
      if (v47)
      {
        v53 = OUTLINED_FUNCTION_35(v51);
        v81 = sub_1E38972EC(v53, v22, 1, v81);
      }

      OUTLINED_FUNCTION_9_42();
    }
  }

  v82[0] = v78;
  v82[1] = v18;
  v82[2] = v72;

  v54 = v73;
  sub_1E41FFF74();

  if (v75)
  {
    sub_1E3893A40(v81);
  }

  v55 = v70;
  (*(v74 + 16))(v70, v76, v54);
  v56 = OUTLINED_FUNCTION_21_32();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v54);
  v59 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_currentSnapshot;
  v60 = v71;
  v61 = OUTLINED_FUNCTION_53_14();
  OUTLINED_FUNCTION_11_3(v61, v62);
  sub_1E37FA198(v55, &v60[v59], &qword_1ECF2C9A0, &qword_1E42A7880);
  swift_endAccess();
  v63 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  if (v75)
  {
    OUTLINED_FUNCTION_53_14();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v64 = *&v60[v63];
    if (!v64)
    {
      goto LABEL_49;
    }

    v65 = v64;
    OUTLINED_FUNCTION_50();

    v66 = v76;
    sub_1E42000A4();
  }

  else
  {
    OUTLINED_FUNCTION_53_14();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v67 = *&v60[v63];
    if (!v67)
    {
      goto LABEL_50;
    }

    v68 = v67;
    OUTLINED_FUNCTION_50();

    v66 = v76;
    OUTLINED_FUNCTION_25();
    sub_1E42000D4();
  }

  (*(v74 + 8))(v66, v73);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38938C0(void *a1@<X8>, double a2@<D0>)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCellMetrics);
  if ((*(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCellMetrics + 80) & 1) == 0 && *(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeLastWidth) == a2)
  {
LABEL_7:
    memcpy(v14, v5, 0x51uLL);
    memcpy(a1, v14, 0x51uLL);
    return;
  }

  if (*(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel))
  {
    v6 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCell;
    v7 = *(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCell);
    v8 = v7;

    sub_1E3895D44(v9, v7, __src, a2);

    if (v16)
    {
      v10 = *(v2 + v6);
      *(v2 + v6) = v16;
      sub_1E3294EE4(__src, v14, &qword_1ECF2C9A8, &qword_1E42A7888);
    }

    memcpy(v5, __src, 0x51uLL);
    *(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeLastWidth) = a2;
    sub_1E38913D8();
    v12 = v11;
    v13 = [v11 collectionViewLayout];

    [v13 invalidateLayout];
    sub_1E325F6F0(__src, &qword_1ECF2C9A8, &qword_1E42A7888);

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1E3893A40(void *a1)
{
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v37 = v1;
  if (!*&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_19:
    __break(1u);
    return;
  }

  LOBYTE(v40[0]) = 30;
  OUTLINED_FUNCTION_8();
  v9 = *(v8 + 776);

  v9(v44, v40, &unk_1F5D5DAC8, &off_1F5D5C998);

  if (*&v45[0])
  {
    if (swift_dynamicCast() && (v40[0] & 1) != 0)
    {
      sub_1E38913D8();
      v11 = v10;
      v12 = [v10 vuiIndexPathsForVisibleItems];

      v13 = sub_1E42062B4();
      v14 = *(v13 + 16);
      if (!v14)
      {
LABEL_14:

        return;
      }

      v15 = 0;
      OUTLINED_FUNCTION_81();
      v39 = v13 + v16;
      v38 = (v6 + 8);
      v36 = v13;
      v35 = v14;
      while (v15 < *(v13 + 16))
      {
        (*(v6 + 16))(v2, v39 + *(v6 + 72) * v15, v4);
        v17 = sub_1E41FE844();
        v43 = a1;
        v41 = v17;
        v42 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA48, &qword_1E42A7998);
        sub_1E3898054();
        sub_1E38D2054(&v41, v40);
        if (v40[1] && (v18 = v40[2], , v18))
        {
          v19 = v4;
          sub_1E38913D8();
          v21 = v20;
          v22 = sub_1E41FE7E4();
          v23 = [v21 vui:v22 cellForItemAtIndexPath:?];

          v24 = sub_1E38BAE74(v44);
          v25 = v44[0];
          v26 = [v37 view];
          if (!v26)
          {
            goto LABEL_18;
          }

          v27 = v26;
          [v26 frame];
          v29 = v28;
          v31 = v30;

          type metadata accessor for UIFactory();
          v43 = v23;
          v40[3] = &type metadata for CollectionViewCellContext;
          v40[4] = &off_1F5D621F8;
          v32 = OUTLINED_FUNCTION_41_3(&unk_1F5D60B00);
          v40[0] = v32;
          *(v32 + 16) = v25;
          *(v32 + 24) = v29;
          *(v32 + 32) = v31;
          *(v32 + 40) = v45[0];
          *(v32 + 55) = *(v45 + 15);
          v33 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);

          sub_1E38E5240(v34, &v43, v40, 0, 0, v33, &v41);

          v4 = v19;
          (*v38)(v2, v19);
          sub_1E325F6F0(v40, &qword_1ECF296C0, &unk_1E429BBE0);

          v13 = v36;
          v14 = v35;
        }

        else
        {
          (*v38)(v2, v4);
        }

        if (v14 == ++v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    sub_1E325F6F0(v44, &unk_1ECF296E0, &unk_1E4298030);
  }
}

uint64_t sub_1E3893E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E327D33C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void sub_1E3893ED0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v18 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v19 = *(v2 + v18);
  if (v19)
  {
    v20 = v19;
    sub_1E42000B4();

    if (v37[1] && (v36 = v6, v21 = v38, , v38))
    {
      v22 = v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (*(v22 + 24))
      {
        sub_1E327F454(v22, v37);
        v24 = v39;
        v23 = v40;
        __swift_project_boxed_opaque_existential_1(v37, v39);
        v25 = (*(*(v23 + 8) + 32))(v24);
        __swift_destroy_boxed_opaque_existential_1(v37);
      }

      else
      {
        v25 = 0;
      }

      v32 = sub_1E41FE7E4();
      v33 = [v36 vui:v32 cellForItemAtIndexPath:?];

      v34 = *(*v21 + 800);
      v35 = v33;
      v34(2, v25, v33, 0);
    }

    else
    {
      v26 = sub_1E324FBDC();
      v27 = v14;
      (*(v16 + 16))(v1, v26, v14);
      (*(v9 + 16))(v13, v4, v7);
      v28 = sub_1E41FFC94();
      v29 = sub_1E42067F4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        v31 = sub_1E41FE844();
        (*(v9 + 8))(v13, v7);
        *(v30 + 4) = v31;
        _os_log_impl(&dword_1E323F000, v28, v29, "EpisodeCollectionViewController viewModel for index at %ld is nil", v30, 0xCu);
        MEMORY[0x1E69143B0](v30, -1, -1);
      }

      else
      {
        (*(v9 + 8))(v13, v7);
      }

      (*(v16 + 8))(v1, v27);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3894404()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  sub_1E42000B4();

  v7 = v28;
  v8 = v29;
  v9 = v30;
  if (v29)
  {

    if (v30)
    {
      v11 = (*(*v30 + 576))(v10);

      if (v11)
      {
        v12 = [v3 vuiCellView];
        if (v12)
        {
          v13 = v12;
          v14 = v1 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          if (*(v14 + 24))
          {
            sub_1E327F454(v14, &v28);
            v15 = v31;
            v16 = v32;
            __swift_project_boxed_opaque_existential_1(&v28, v31);
            (*(v16 + 16))(v13, v11, v15, v16);

            __swift_destroy_boxed_opaque_existential_1(&v28);
            goto LABEL_10;
          }
        }
      }
    }
  }

LABEL_10:
  *&v33[1] = &unk_1F5E99D68;
  v17 = swift_dynamicCastObjCProtocolConditional();
  if (v17)
  {
    v18 = v17;
    if ([v17 respondsToSelector_])
    {
      [v18 willBeDisplayed];
    }
  }

  ObjectType = swift_getObjectType();
  v20 = dynamic_cast_existential_1_conditional(v3, ObjectType, &protocol descriptor for ContextMenuInteractionReceiver);
  v22 = v20;
  if (v20)
  {
    v23 = v21;
    v20 = v3;
  }

  else
  {
    v23 = 0;
  }

  v28 = v22;
  v29 = v23;
  MEMORY[0x1EEE9AC00](v20);
  v27[6] = v1;
  MEMORY[0x1EEE9AC00](v24);
  v27[2] = sub_1E3897404;
  v27[3] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA10, &qword_1E42A7890);
  sub_1E4148F70(sub_1E38974A8, v27, v26, MEMORY[0x1E69E7CA8] + 8, v33);
  sub_1E3790548(v7, v8, v9);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38947C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6)
  {
    v7 = v6;
    sub_1E42000B4();

    if (v23[1])
    {
      v8 = v24;

      if (v24)
      {
        v10 = (*(*v24 + 576))(v9);
        if (v10)
        {
          v11 = v10;
          v12 = v4 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          if (*(v12 + 24))
          {
            sub_1E327F454(v12, v23);
            v13 = v25;
            v14 = v26;
            __swift_project_boxed_opaque_existential_1(v23, v25);
            (*(v14 + 24))(v11, v13, v14);
            v15 = OUTLINED_FUNCTION_74();
            sub_1E3790548(v15, v16, v8);

            __swift_destroy_boxed_opaque_existential_1(v23);
            return;
          }

          v21 = OUTLINED_FUNCTION_74();
          sub_1E3790548(v21, v22, v24);
        }

        else
        {
          v19 = OUTLINED_FUNCTION_74();
          sub_1E3790548(v19, v20, v24);
        }
      }

      else
      {
        v17 = OUTLINED_FUNCTION_74();
        sub_1E3790548(v17, v18, 0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3894A54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = v16 - v6;
  if (([a1 isTracking] & 1) != 0 || objc_msgSend(a1, sel_isDecelerating))
  {
    sub_1E41FE874();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    sub_1E3891AD0();
    sub_1E325F6F0(v7, &qword_1ECF309A0, &qword_1E42A7870);
  }

  [a1 vuiBounds];
  OUTLINED_FUNCTION_3();
  v12 = v1 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if (*(v12 + 24))
  {
    sub_1E327F454(v12, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    OUTLINED_FUNCTION_6();
    v14 = OUTLINED_FUNCTION_50();
    v15(v14);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return result;
}

void sub_1E3894C80(void *a1, double *a2)
{
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  if ((*(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCellMetrics + 80) & 1) == 0)
  {
    v10 = *(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCellMetrics);
    v11 = *a2;
    type metadata accessor for LayoutGrid();
    [a1 bounds];
    Width = CGRectGetWidth(v38);
    sub_1E3A258E4(Width);
    v14 = 0.0 - v13;
    sub_1E38913D8();
    v16 = v15;
    [v15 vuiContentSize];
    v18 = v17;

    sub_1E38913D8();
    v20 = v19;
    [v19 vuiBounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v39.origin.x = v22;
    v39.origin.y = v24;
    v39.size.width = v26;
    v39.size.height = v28;
    v29 = CGRectGetWidth(v39);
    VUIRoundValue();
    v31 = v30;
    v32 = sub_1E324FBDC();
    (*(v8 + 16))(v3, v32, v6);
    v33 = sub_1E41FFC94();
    v34 = sub_1E42067D4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134218752;
      *(v35 + 4) = v11;
      *(v35 + 12) = 2048;
      *(v35 + 14) = v31;
      *(v35 + 22) = 2048;
      *(v35 + 24) = v18;
      *(v35 + 32) = 2048;
      *(v35 + 34) = v29;
      _os_log_impl(&dword_1E323F000, v33, v34, "EpisodeCollectionViewController compute offset -\nproposedOffsetX: %f maxOffsetX: %f\ncollection contentSize width: %f collection bounds: %f", v35, 0x2Au);
      MEMORY[0x1E69143B0](v35, -1, -1);
    }

    (*(v8 + 8))(v3, v6);
    if (v31 > v11)
    {
      if (v11 <= v14)
      {
        v31 = v14;
      }

      else
      {
        [a1 bounds];
        v36 = CGRectGetWidth(v40);
        sub_1E3A25950(v36);
        v31 = v14 + (v10 + v37) * round((v11 - v14) / (v10 + v37));
      }
    }

    *a2 = v31;
  }
}

void sub_1E3894F9C(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_106();
  v171 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v161 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v158 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v165 = &v148 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C9A0, &qword_1E42A7880);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v152 = &v148 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v148 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C980, qword_1E42A7850);
  OUTLINED_FUNCTION_0_10();
  v155 = v24;
  OUTLINED_FUNCTION_5_7();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v148 - v27;
  v29 = (*(*v3 + 1304))(v26);
  v169 = a3;
  v157 = v28;
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

  v32 = a2;
  LOBYTE(v177) = 1;
  v33 = [v3 view];
  if (v33)
  {
    v34 = v33;
    a3 = &selRef_setWaitingForTransactionToStart_;
    do
    {
      v35 = [v34 superview];

      if (!v35)
      {
        OUTLINED_FUNCTION_25_25();
        goto LABEL_12;
      }

      type metadata accessor for ViewControllerHostingCollectionViewCell();
      v36 = swift_dynamicCastClass();
      v34 = v35;
    }

    while (!v36);
    v37 = v36;
    v38 = [v36 vuiCollectionViewCellInteractor];
    OUTLINED_FUNCTION_25_25();
    if (v39)
    {
      v40 = v39;
      if ([v39 respondsToSelector_])
      {
        [v40 vui:v37 cellNeedsReloading:?];
      }

      v29 = swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_12:
    a2 = v32;
LABEL_13:
    v172 = v22;
    sub_1E38974F0(v29, v30, v31);
    sub_1E4200074();
    if (*&v4[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
    {
      v41 = v4;

      v43 = sub_1E41EBEE0(v42);
      v45 = v44;
      v47 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA20, &qword_1E42A7898);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1E4297BE0;
      *&v164 = v43;
      *(v48 + 32) = v43;
      *(v48 + 40) = v45;
      *(v48 + 48) = v47;
      v154 = v47;

      *(&v164 + 1) = v45;

      sub_1E41FFFB4();

      v176 = MEMORY[0x1E69E7CD0];
      v160 = sub_1E3798694(a2);
      v49 = a3 + v160;
      if (__OFADD__(a3, v160))
      {
LABEL_76:
        __break(1u);
      }

      else
      {
        v170 = v49 - 1;
        if (!__OFSUB__(v49, 1))
        {
          v151 = v17;
          v50 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_currentSnapshot;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v159 = v41;
          v153 = v50;
          v51 = v172;
          sub_1E3294EE4(v41 + v50, v172, &qword_1ECF2C9A0, &qword_1E42A7880);
          if (__swift_getEnumTagSinglePayload(v51, 1, v23) != 1)
          {
            v52 = sub_1E4200004();
            v53 = *(v155 + 8);
            v156 = v23;
            v150 = v155 + 8;
            v149 = v53;
            v53(v51, v23);
            v54 = 0;
            v55 = *(v52 + 16);
            v168 = a2 & 0xC000000000000001;
            v167 = a2 & 0xFFFFFFFFFFFFFF8;
            v148 = a2;
            v166 = a2 + 32;
            v56 = (v52 + 48);
            v172 = MEMORY[0x1E69E7CC0];
            v163 = v52;
            v162 = v55;
            while (v55 != v54)
            {
              if (v54 >= *(v52 + 16))
              {
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

              v57 = *(v56 - 1);
              v58 = *v56;
              if (v54 < a3 || v170 < v54)
              {
                v60 = *(v56 - 2);

                OUTLINED_FUNCTION_46_12();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_48_15();
                  v77 = OUTLINED_FUNCTION_7_65(v73, v74, v75, v76);
                  OUTLINED_FUNCTION_47_12(v77);
                }

                OUTLINED_FUNCTION_28_24();
                if (v62)
                {
                  OUTLINED_FUNCTION_35(v61);
                  OUTLINED_FUNCTION_48_15();
                  v82 = sub_1E38972EC(v78, v79, v80, v81);
                  OUTLINED_FUNCTION_47_12(v82);
                }

                OUTLINED_FUNCTION_29_17();
                v63[4] = v60;
                v63[5] = v57;
                v63[6] = v58;
              }

              else
              {
                v64 = v54 - a3;
                if (__OFSUB__(v54, a3))
                {
                  goto LABEL_70;
                }

                if (v168)
                {

                  MEMORY[0x1E6911E60](v54 - a3, v148);
                }

                else
                {
                  if ((v64 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_71;
                  }

                  if (v64 >= *(v167 + 16))
                  {
                    goto LABEL_72;
                  }
                }

                v65 = *(&v164 + 1);

                v67 = sub_1E41EBF7C(v66, v164, v65);
                a3 = v68;
                v70 = v69;

                OUTLINED_FUNCTION_46_12();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_48_15();
                  v87 = OUTLINED_FUNCTION_7_65(v83, v84, v85, v86);
                  OUTLINED_FUNCTION_47_12(v87);
                }

                OUTLINED_FUNCTION_28_24();
                if (v62)
                {
                  OUTLINED_FUNCTION_35(v71);
                  OUTLINED_FUNCTION_48_15();
                  v92 = sub_1E38972EC(v88, v89, v90, v91);
                  OUTLINED_FUNCTION_47_12(v92);
                }

                OUTLINED_FUNCTION_29_17();
                v72[4] = v67;
                v72[5] = a3;
                v72[6] = v70;
                sub_1E3897544(&v177, v54);

                OUTLINED_FUNCTION_25_25();
                v52 = v163;
                v55 = v162;
              }

              v56 += 3;
              ++v54;
            }

            v177 = v164;
            *v178 = v154;

            OUTLINED_FUNCTION_46_12();
            v93 = v156;
            v94 = v157;
            sub_1E41FFF74();

            v95 = v152;
            (*(v155 + 16))(v152, v94, v93);
            v96 = OUTLINED_FUNCTION_21_32();
            __swift_storeEnumTagSinglePayload(v96, v97, v98, v93);
            v99 = v159;
            v100 = v153;
            v101 = OUTLINED_FUNCTION_53_14();
            OUTLINED_FUNCTION_11_3(v101, v102);
            sub_1E37FA198(v95, v99 + v100, &qword_1ECF2C9A0, &qword_1E42A7880);
            swift_endAccess();
            sub_1E38913D8();
            v104 = v103;
            v105 = &selRef_textLayout;
            v106 = [v103 vuiIndexPathsForVisibleItems];

            v107 = sub_1E42062B4();
            v108 = *(v107 + 16);
            if (v108)
            {
              *&v177 = MEMORY[0x1E69E7CC0];
              sub_1E3897C68(0, v108, 0);
              v109 = v177;
              v110 = v161 + 16;
              v170 = *(v161 + 16);
              OUTLINED_FUNCTION_81();
              *&v164 = v107;
              a3 = (v107 + v111);
              v112 = *(v110 + 56);
              v93 = (v110 - 8);
              do
              {
                v99 = v165;
                v113 = v171;
                (v170)(v165, a3, v171);
                v114 = sub_1E41FE844();
                (*v93)(v99, v113);
                *&v177 = v109;
                v116 = *(v109 + 16);
                v115 = *(v109 + 24);
                if (v116 >= v115 >> 1)
                {
                  v117 = OUTLINED_FUNCTION_35(v115);
                  v99 = &v177;
                  sub_1E3897C68(v117, v116 + 1, 1);
                  v109 = v177;
                }

                *(v109 + 16) = v116 + 1;
                *(v109 + 8 * v116 + 32) = v114;
                a3 = (a3 + v112);
                --v108;
              }

              while (v108);

              OUTLINED_FUNCTION_44_20();
              OUTLINED_FUNCTION_25_25();
              v94 = v157;
              v105 = &selRef_textLayout;
            }

            else
            {

              v109 = MEMORY[0x1E69E7CC0];
            }

            v118 = v176;
            if ((sub_1E3897D88(v109, v176) & 1) == 0)
            {
              v163 = v118;
              sub_1E38913D8();
              v120 = v119;
              v121 = [v119 v105[411]];

              v122 = sub_1E42062B4();
              v93 = *(v122 + 16);
              v99 = v158;
              if (v93)
              {
                v123 = 0;
                OUTLINED_FUNCTION_81();
                v125 = (v122 + v124);
                v127 = (v126 + 8);
                v170 = v93;
                v165 = (v122 + v124);
                *&v164 = v126 + 16;
                while (v123 < *(v122 + 16))
                {
                  (*(v161 + 16))(v99, &v125[*(v161 + 72) * v123], v171);
                  v128 = sub_1E41FE844();
                  v129 = __OFSUB__(v128, a3);
                  v130 = v128 - a3;
                  if (v129)
                  {
                    goto LABEL_74;
                  }

                  if (v130 < 0 || v130 >= v160)
                  {
                    (*v127)(v99, v171);
                  }

                  else
                  {
                    if (v168)
                    {
                      MEMORY[0x1E6911E60]();
                    }

                    else
                    {
                      if (v130 >= *(v167 + 16))
                      {
                        goto LABEL_75;
                      }
                    }

                    v131 = v159;
                    sub_1E38913D8();
                    v133 = v132;
                    v134 = v158;
                    v135 = sub_1E41FE7E4();
                    v136 = [v133 vui:v135 cellForItemAtIndexPath:?];

                    v137 = [v131 view];
                    if (!v137)
                    {
                      goto LABEL_78;
                    }

                    v138 = v137;
                    [v137 frame];
                    OUTLINED_FUNCTION_3();

                    v179.origin.x = OUTLINED_FUNCTION_6();
                    Width = CGRectGetWidth(v179);
                    sub_1E38931FC(0, &v177, Width);
                    type metadata accessor for UIFactory();
                    v174 = v136;
                    v173[3] = &type metadata for CollectionViewCellContext;
                    v173[4] = &off_1F5D621F8;
                    v140 = OUTLINED_FUNCTION_41_3(&unk_1F5D60B00);
                    v173[0] = v140;
                    v141 = *v178;
                    v140[1] = v177;
                    v140[2] = v141;
                    *(v140 + 43) = *&v178[11];
                    a3 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);

                    OUTLINED_FUNCTION_38_12(v142, &v174, v173, &v175);

                    (*v127)(v134, v171);
                    sub_1E325F6F0(v173, &qword_1ECF296C0, &unk_1E429BBE0);

                    OUTLINED_FUNCTION_25_25();
                    v99 = v134;
                    v93 = v170;
                    v125 = v165;
                  }

                  if (v93 == ++v123)
                  {
                    goto LABEL_65;
                  }
                }

                goto LABEL_73;
              }

LABEL_65:

              OUTLINED_FUNCTION_44_20();
              v94 = v157;
            }

            v143 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
            OUTLINED_FUNCTION_25();
            swift_beginAccess();
            v144 = *(v99 + v143);
            v145 = v151;
            if (!v144)
            {
              goto LABEL_81;
            }

            sub_1E3294EE4(v99 + v153, v151, &qword_1ECF2C9A0, &qword_1E42A7880);
            if (__swift_getEnumTagSinglePayload(v145, 1, v93) != 1)
            {
              v146 = v144;
              OUTLINED_FUNCTION_46_12();

              OUTLINED_FUNCTION_25();
              sub_1E42000D4();

              v147 = v149;
              v149(v94, v93);
              v147(v145, v93);
              return;
            }

            goto LABEL_82;
          }

LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
    }

    __break(1u);
    goto LABEL_80;
  }

LABEL_83:
  __break(1u);
}

uint64_t sub_1E3895D44@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  OUTLINED_FUNCTION_26_0();
  result = (*(v8 + 1000))();
  if (!result)
  {
    v37 = 0;
    v38 = 1;
LABEL_27:
    v67 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    goto LABEL_28;
  }

  LOBYTE(v109) = 1;
  v10 = (*a1 + 392);
  v11 = *v10;
  v12 = (*v10)();
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_26_0();
    *&v114 = (*(v14 + 984))();
    BYTE8(v114) = v15 & 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0, &qword_1E429ED88);
    v23.n128_f64[0] = OUTLINED_FUNCTION_57_8(v16, v17, v16, v18, v19, v20, v21, v22, v68, v71, v73, v76, v78, v81, v83, v86, v88, v91, v93, v95, v96, v97, v98, v99, v100, v101, v102, *(&v102 + 1), v103, *(&v103 + 1), v104, v105, v106[0], v106[1], v106[2], v107, v108, v109, v110, v111[0], v111[1], v111[2], v111[3], v111[4], v112);
    v24 = v112;
    *&v114 = (*(*v13 + 1128))(v23);
    BYTE8(v114) = v25 & 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
    OUTLINED_FUNCTION_57_8(v26, v27, v26, v28, v29, v30, v31, v32, v69, v72, v74, v77, v79, v82, v84, v87, v89, v92, v94, v95, v96, v97, v98, v99, v100, v101, v102, *(&v102 + 1), v103, *(&v103 + 1), v104, v105, v106[0], v106[1], v106[2], v107, v108, v109, v110, v111[0], v111[1], v111[2], v111[3], v111[4], v112);
    if (TVAppFeature.isEnabled.getter(10, v33, v34))
    {
      *(&v115 + 1) = &unk_1F5D5D888;
      *&v116 = &off_1F5D5C918;
      LOBYTE(v114) = 12;
      v35 = sub_1E39C29F0(&v114, 1);
      __swift_destroy_boxed_opaque_existential_1(&v114);
      type metadata accessor for LayoutGrid();

      v24 = sub_1E3A25B9C(v36, v24, v35 & 1);
    }

    else
    {
      type metadata accessor for LayoutGrid();
    }

    v39 = sub_1E3A25D00(v24, 0, a4, *&v112);
  }

  else
  {
    v39 = 0.0;
  }

  if ((v11)(v12))
  {
    OUTLINED_FUNCTION_26_0();
    (*(v40 + 176))(v111);
  }

  v41 = *sub_1E3C11B28();
  sub_1E38931FC(0, &v112, a4);
  if (a2)
  {
    v45 = a2;
    [v45 prepareForReuse];
  }

  else
  {
    sub_1E38912B0(v42, v43, v44);
    v46 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v47 = OUTLINED_FUNCTION_1_36();
    v45 = [v48 v49];
  }

  v50 = [v45 vuiCellView];
  if (v50)
  {
    v51 = v50;
    v52 = OUTLINED_FUNCTION_1_36();
    [v53 v54];
  }

  type metadata accessor for UIFactory();
  v101 = v45;
  *(&v115 + 1) = &type metadata for CollectionViewCellContext;
  *&v116 = &off_1F5D621F8;
  v55 = OUTLINED_FUNCTION_41_3(&unk_1F5D60B00);
  *&v114 = v55;
  v56 = v113[0];
  v55[1] = v112;
  v55[2] = v56;
  *(v55 + 43) = *(v113 + 11);
  sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);

  OUTLINED_FUNCTION_38_12(v57, &v101, &v114, &v95);

  sub_1E325F6F0(&v114, &qword_1ECF296C0, &unk_1E429BBE0);
  if (!v95)
  {

    v102 = 0u;
    v103 = 0u;
    v104 = 0;
LABEL_26:
    result = sub_1E325F6F0(&v102, &qword_1ECF3F4E0, &qword_1E42E91D0);
    v37 = 0;
    v38 = v109;
    goto LABEL_27;
  }

  *&v114 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA30, qword_1E42A78A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    goto LABEL_25;
  }

  if (!*(&v103 + 1))
  {
LABEL_25:

    goto LABEL_26;
  }

  v58 = *MEMORY[0x1E69DDCE0];
  v59 = *(MEMORY[0x1E69DDCE0] + 8);
  v60 = *(MEMORY[0x1E69DDCE0] + 24);
  sub_1E3251BE8(&v102, v106);
  v61 = v107;
  v62 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  (*(v62 + 8))(&v114, v61, v62, v39, v58, v59, v41, v60);
  v85 = v115;
  v90 = v114;
  v75 = v117;
  v80 = v116;
  v70 = v118;

  LOBYTE(v100) = 0;
  sub_1E327F454(v106, &v95);
  if (swift_dynamicCast())
  {
    v37 = v101;
  }

  else
  {
    v37 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v106);
  v64 = v70;
  v63 = v75;
  v66 = v80;
  v65 = v85;
  v67 = v90;
  v38 = v100;
LABEL_28:
  *a3 = v67;
  *(a3 + 16) = v65;
  *(a3 + 32) = v66;
  *(a3 + 48) = v63;
  *(a3 + 64) = v64;
  *(a3 + 80) = v38 & 1;
  *(a3 + 88) = v37;
  return result;
}

void sub_1E3896328()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  if (*&v0[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
    OUTLINED_FUNCTION_8();
    v14 = *(v13 + 1048);

    v16 = v14(v15);

    if (!v16 || (v17 = sub_1E3893E78(v8, v6, v16), v19 = v18, , (v19 & 1) != 0))
    {
LABEL_10:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    MEMORY[0x1E6909190](v17, 0);
    sub_1E38913D8();
    v21 = v20;
    v22 = sub_1E41FE7E4();
    [v21 selectItemAtIndexPath:v22 animated:1 scrollPosition:8];

    if ([v2 view])
    {
      OUTLINED_FUNCTION_106();
      type metadata accessor for EpisodeContainerView();
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_3_54();
      v23 = swift_dynamicCastClassUnconditional();
      v24 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v25 = *(v23 + v24);
      v26 = v25;

      if (v25)
      {
        type metadata accessor for EpisodeSectionHeaderView();
        if (swift_dynamicCastClass())
        {
          sub_1E3E02AA8(v4);
        }
      }

      (*(v11 + 8))(v1, v9);
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_1E389653C@<X0>(uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  type metadata accessor for EpisodeCollectionViewModel();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  OUTLINED_FUNCTION_26_0();
  v10 = *(v9 + 392);

  v12 = v10(v11);
  if (!v12)
  {
LABEL_10:

LABEL_11:
    sub_1E3790540(__src);
    return memcpy(a3, __src, 0xB0uLL);
  }

  if (*v12 != _TtC8VideosUI23EpisodeCollectionLayout)
  {

    goto LABEL_10;
  }

  sub_1E3ACA7D0();
  OUTLINED_FUNCTION_26_0();
  (*(v13 + 176))(v42);
  v14 = *v42;
  v15 = *&v42[1];
  v16 = *&v42[2];

  if ((v43 & 1) == 0)
  {
    sub_1E3952BD8(v14, v15, v16);
  }

  sub_1E3895D44(v8, 0, v35, a4);
  v17 = sub_1E325F6F0(v35, &qword_1ECF2C9A8, &qword_1E42A7888);
  if (v41)
  {
    v19 = *MEMORY[0x1E69DDCE0];
    v18 = *(MEMORY[0x1E69DDCE0] + 8);
    v20 = *(MEMORY[0x1E69DDCE0] + 16);
    v32 = *(MEMORY[0x1E69DDCE0] + 24);
    v21 = 0.0;
  }

  else
  {
    v20 = v39;
    v32 = v40;
    v19 = v37;
    v18 = v38;
    v21 = v36;
  }

  (*(*v8 + 952))(v17);

  OUTLINED_FUNCTION_1_36();
  sub_1E3952C58();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = OUTLINED_FUNCTION_51_1();
  sub_1E3814DBC(a2, v31 & 1, v33, v21, v19, v18, v20, v32, v24, v26, v28, v30);

  memcpy(__dst, v33, sizeof(__dst));
  nullsub_1();
  memcpy(__src, __dst, sizeof(__src));
  return memcpy(a3, __src, 0xB0uLL);
}

void sub_1E3896820()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v47 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v40 - v12;
  type metadata accessor for EpisodeCollectionViewModel();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    OUTLINED_FUNCTION_11_13();
    v16 = *(v15 + 1296);

    v16(v17);
    *(v0 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel) = v14;
    swift_retain_n();

    v18 = *(*v14 + 1128);
    v19 = swift_unknownObjectRetain();
    v44 = v14;
    v18(v19, &off_1F5D60B88);

    sub_1E3893288();
    sub_1E38913D8();
    v21 = v20;
    v22 = [v20 vuiIndexPathsForVisibleItems];

    v23 = sub_1E42062B4();
    v24 = *(v23 + 16);
    if (v24)
    {
      v41 = v13;
      v42 = v1;
      v43 = v3;
      v48 = MEMORY[0x1E69E7CC0];
      sub_1E3897C68(0, v24, 0);
      v25 = v48;
      OUTLINED_FUNCTION_81();
      v40[1] = v23;
      v27 = v23 + v26;
      v45 = *(v28 + 56);
      v46 = v29;
      v47 = v28;
      v30 = (v28 - 8);
      do
      {
        v46(v9, v27, v4);
        v31 = sub_1E41FE844();
        v32 = v4;
        (*v30)(v9, v4);
        v48 = v25;
        v34 = *(v25 + 16);
        v33 = *(v25 + 24);
        if (v34 >= v33 >> 1)
        {
          v35 = OUTLINED_FUNCTION_35(v33);
          sub_1E3897C68(v35, v34 + 1, 1);
          v25 = v48;
        }

        *(v25 + 16) = v34 + 1;
        *(v25 + 8 * v34 + 32) = v31;
        v27 += v45;
        --v24;
        v4 = v32;
      }

      while (v24);

      v13 = v41;
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_11_13();
    (*(v36 + 1280))(v25);

    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v4);
    sub_1E3891AD0();

    sub_1E325F6F0(v13, &qword_1ECF309A0, &qword_1E42A7870);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3896BAC(double a1, double a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_11_14();
  v7 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27[-v15];
  sub_1E38913D8();
  v18 = v17;
  v19 = [v17 indexPathForItemAtPoint_];

  if (!v19)
  {
    return v19;
  }

  sub_1E41FE804();

  (*(v9 + 32))(v16, v13, v7);
  v20 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  v22 = *(v4 + v20);
  if (v22)
  {
    v23 = v22;
    sub_1E42000B4();

    if (v28 && (v24 = v29, , v24))
    {
      sub_1E38913D8();
      v26 = v25;
      v19 = sub_1E3C9C60C(v24, v16, v3, v25, &off_1F5D7CF38, v4, &off_1F5D60BF8);
    }

    else
    {
      v19 = 0;
    }

    (*(v9 + 8))(v16, v7);
    return v19;
  }

  __break(1u);
  return result;
}

id sub_1E3896E28(uint64_t a1, void *a2)
{
  sub_1E38913D8();
  v4 = v3;
  v5 = sub_1E3C9FBDC(a2, v3);

  return v5;
}

void sub_1E3896FA4(uint64_t a1, void *a2, void *a3)
{
  sub_1E3C9EA54();
  if (a3)
  {
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v9[4] = sub_1E3897E5C;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1E378AEA4;
    v9[3] = &block_descriptor_21;
    v7 = _Block_copy(v9);
    v8 = a2;

    [a3 addCompletion_];
    _Block_release(v7);
  }
}

uint64_t sub_1E389714C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1E3CA18BC();
}

uint64_t sub_1E38971D0()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_53();

  return OUTLINED_FUNCTION_51_1();
}

id sub_1E3897234(uint64_t a1, uint64_t a2, void *a3)
{
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E37BE928;
  v8[3] = &block_descriptor_17;
  v5 = _Block_copy(v8);
  v6 = [v3 initWithSectionProvider:v5 configuration:a3];

  _Block_release(v5);

  return v6;
}

char *sub_1E38972EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA20, &qword_1E42A7898);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3897404(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  v7 = *(v4 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor);
  OUTLINED_FUNCTION_15_45();
  v6();
  v8 = *(a2 + 40);
  v9 = swift_unknownObjectRetain();
  return v8(v9, &off_1F5D60BF8, ObjectType, a2);
}

uint64_t sub_1E38974A8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = 0;
  return result;
}

unint64_t sub_1E38974F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE243748;
  if (!qword_1EE243748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE243748);
  }

  return result;
}

BOOL sub_1E3897544(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E4207B34();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_1E3897838(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

void sub_1E3897614(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA68, &qword_1E42A79B0);
  v4 = sub_1E4207444();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v26 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = v4 + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1E373CBF0(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = sub_1E4207B34();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1E3897838(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E3897614(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E3897A7C(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = sub_1E4207B34();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == result)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1E389793C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1E389793C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA68, &qword_1E42A79B0);
  v2 = *v0;
  v3 = sub_1E4207434();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1E3897A7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA68, &qword_1E42A79B0);
  v4 = sub_1E4207444();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        v16 = sub_1E4207B34();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }
}

char *sub_1E3897C68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3897C88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3897C88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA60, "v;\r");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1E3897D88(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  v7 = ~(-1 << *(a2 + 32));
  do
  {
    v8 = *(v5 + 8 * v4++);
    v9 = sub_1E4207B34();
    while (1)
    {
      v10 = v9 & v7;
      if (((*(v6 + (((v9 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v7)) & 1) == 0)
      {
        break;
      }

      v9 = v10 + 1;
      if (*(*(a2 + 48) + 8 * v10) == v8)
      {
        return 0;
      }
    }

    result = 1;
  }

  while (v4 != v2);
  return result;
}

void sub_1E3897E5C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor);
    OUTLINED_FUNCTION_50();
    sub_1E3C9F738();
  }
}

uint64_t type metadata accessor for EpisodeCollectionViewController(uint64_t a1)
{
  result = qword_1EE292990;
  if (!qword_1EE292990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3897F20(uint64_t a1)
{
  sub_1E3897FF0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3897FF0(uint64_t a1)
{
  if (!qword_1EE28A3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C980, qword_1E42A7850);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE28A3A0);
    }
  }
}

unint64_t sub_1E3898054()
{
  result = qword_1ECF2CA50;
  if (!qword_1ECF2CA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CA48, &qword_1E42A7998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CA50);
  }

  return result;
}

void sub_1E38980B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E3859230(171);
    v7 = sub_1E4205ED4();

    v8 = sub_1E41FE7E4();
    v9 = [a1 vui:v7 dequeueReusableCellWithIdentifier:v8 indexPath:?];

    v10 = [v6 view];
    if (v10)
    {
      v11 = v10;
      [v10 frame];
      OUTLINED_FUNCTION_3();

      v49.origin.x = OUTLINED_FUNCTION_6();
      Width = CGRectGetWidth(v49);
      if (v4)
      {
        type metadata accessor for EpisodeCollectionViewController(0);

        sub_1E38931FC(0, &v44, Width);
        type metadata accessor for UIFactory();
        v13 = OUTLINED_FUNCTION_41_3(&unk_1F5D60B00);
        OUTLINED_FUNCTION_24_17(v13, v14, v15, v16, v17, v18, v19, v20, v36, v37, v38, &type metadata for CollectionViewCellContext, &off_1F5D621F8, v9, v40, v41, v42, v43, v44, v45, v46, v47, v48);
        sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);

        v21 = v9;
        v22 = v4;
LABEL_10:
        OUTLINED_FUNCTION_38_12(v22, &v39, &v36, &v40);

        sub_1E325F6F0(&v36, &qword_1ECF296C0, &unk_1E429BBE0);
        return;
      }

      v23 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel;
      if (*&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
      {
        OUTLINED_FUNCTION_8();
        v25 = *(v24 + 1000);

        v27 = v25(v26);

        if (!v27)
        {

          return;
        }

        if (*&v6[v23])
        {
          type metadata accessor for EpisodeCollectionViewController(0);

          sub_1E38931FC(1, &v44, Width);

          type metadata accessor for UIFactory();
          v28 = OUTLINED_FUNCTION_41_3(&unk_1F5D60B00);
          OUTLINED_FUNCTION_24_17(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, &type metadata for CollectionViewCellContext, &off_1F5D621F8, v9, v40, v41, v42, v43, v44, v45, v46, v47, v48);
          sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
          v21 = v9;

          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_1E3898398(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      swift_getObjectType();
      v5 = sub_1E40175B0();
    }

    else
    {
      v5 = 0.0;
    }

    type metadata accessor for LayoutGrid();
    sub_1E3A2579C(v5);
    sub_1E38913D8();
    v7 = v6;
    v8 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE8))(a2);

    v9 = v8;
    sub_1E3C2AE10();
    v11 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel;
    if (*&v4[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
    {
      v12 = v10;
      OUTLINED_FUNCTION_8();
      v14 = *(v13 + 392);

      v16 = v14(v15);

      if (v16)
      {
        OUTLINED_FUNCTION_11_13();
        v17 = OUTLINED_FUNCTION_19_29();
        v18(v17);
      }

      if (*&v4[v11])
      {
        OUTLINED_FUNCTION_8();
        v20 = *(v19 + 1000);

        v22 = v20(v21);

        if (v22)
        {
          OUTLINED_FUNCTION_11_13();
          v24 = (*(v23 + 392))();

          if (v24)
          {
            OUTLINED_FUNCTION_8();
            v25 = OUTLINED_FUNCTION_19_29();
            v26(v25);
          }
        }

        if (*&v4[v11])
        {
          OUTLINED_FUNCTION_8();
          v28 = *(v27 + 952);

          v30 = v28(v29);

          if (v30)
          {
            OUTLINED_FUNCTION_11_13();
            v32 = (*(v31 + 392))();

            if (v32)
            {
              OUTLINED_FUNCTION_8();
              v33 = OUTLINED_FUNCTION_19_29();
              v34(v33);
            }
          }

          if ([objc_opt_self() isMac])
          {
            v35 = [v4 view];
            if (!v35)
            {
LABEL_33:
              __break(1u);
              return;
            }

            v36 = v35;
            [v35 frame];
            OUTLINED_FUNCTION_3();

            v75.origin.x = OUTLINED_FUNCTION_6();
            Width = CGRectGetWidth(v75);
          }

          else
          {
            if (!a2)
            {
              v38 = 0.0;
LABEL_23:
              sub_1E3A25950(v38);
              v40 = v39;
              v41 = v70;
              sub_1E38938C0(v70, v38);
              if (v72)
              {
                v41 = v73;
                sub_1E41A300C(v73);
                v42 = v74;
              }

              else
              {
                v42 = v71;
              }

              v43 = *v41;
              v44 = objc_opt_self();
              v45 = [v44 fractionalWidthDimension_];
              v46 = [v44 fractionalHeightDimension_];
              v47 = objc_opt_self();
              v48 = [v47 sizeWithWidthDimension:v45 heightDimension:v46];

              v49 = [objc_opt_self() itemWithLayoutSize_];
              v50 = [v44 absoluteDimension_];
              v51 = [v44 absoluteDimension_];
              v52 = [v47 sizeWithWidthDimension:v50 heightDimension:v51];

              v53 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
              v54 = swift_allocObject();
              *(v54 + 16) = xmmword_1E4298880;
              *(v54 + 32) = v49;
              sub_1E3280A90(0, &unk_1EE23B0A0, 0x1E6995578);
              v55 = v49;
              v56 = sub_1E42062A4();

              v57 = [v53 horizontalGroupWithLayoutSize:v52 subitems:v56];

              v58 = [objc_opt_self() sectionWithGroup_];
              [v58 setInterGroupSpacing_];
              nullsub_1();
              [v58 setContentInsets_];
              sub_1E3A258E4(v38);
              v63 = sub_1E3952BE0(v59, v60, v61, v62);
              v64 = [v4 view];
              if (v64)
              {
                v65 = v64;
                type metadata accessor for EpisodeContainerView();
                OUTLINED_FUNCTION_3_54();
                v66 = swift_dynamicCastClassUnconditional();
                sub_1E3A53138(v66, v38 - v63);
                v68 = v67;

                [v58 contentInsets];
                [v58 setContentInsets_];

                return;
              }

              goto LABEL_32;
            }

            swift_getObjectType();
            Width = sub_1E40175B0();
          }

          v38 = Width;
          goto LABEL_23;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }
}

uint64_t sub_1E3898A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double OUTLINED_FUNCTION_57_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{

  sub_1E4148C68(v45, a3, &a45);
  return result;
}

uint64_t sub_1E3898B28@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78, &unk_1E42A79F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF2CA78, &unk_1E42A79F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4200E34();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0x417373696D736944, 0xED00006E6F697463, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E3898E04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78, &unk_1E42A79F0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for LibShowDetailsView(0);
  v7 = v6[5];
  *&v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA80, &qword_1E42BBA00);
  sub_1E42038E4();
  *(a3 + v7) = v45;
  v8 = (a3 + v6[7]);
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_2_56();
  sub_1E389BA00(v9, v10, &unk_1E42EB398);
  *v8 = sub_1E4201754();
  v8[1] = v11;
  v12 = a3 + v6[9];
  *v12 = sub_1E3898DD8;
  *(v12 + 1) = 0;
  v12[16] = 0;
  *(a3 + v6[12]) = 0x4010000000000000;
  *(a3 + v6[13]) = 0x4030000000000000;
  v13 = [a1 contextData];
  if (v13 && (v14 = sub_1E3751A20(v13)) != 0 && (v15 = sub_1E374BD08(v14), , v15))
  {

    sub_1E37FAF8C();

    v16 = OUTLINED_FUNCTION_146();
    sub_1E3277E60(v16, v17, v15, v18);

    if (*(&v44 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
      }

      goto LABEL_10;
    }

    v19 = 0;
  }

  else
  {
    v15 = 0;
    v43 = 0u;
    v44 = 0u;
    v19 = 1;
  }

  sub_1E325F6F0(&v43, &unk_1ECF296E0, &unk_1E4298030);
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  if (v19)
  {
    v43 = 0uLL;
    v44 = 0uLL;
LABEL_13:
    sub_1E325F6F0(&v43, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_14;
  }

LABEL_10:
  sub_1E37FAFA4();

  v20 = OUTLINED_FUNCTION_146();
  sub_1E3277E60(v20, v21, v15, v22);

  if (!*(&v44 + 1))
  {
    goto LABEL_13;
  }

  if (!swift_dynamicCast())
  {
LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  v23 = v42;
LABEL_15:
  type metadata accessor for LibShowDetailsViewModel(0);
  sub_1E3743538(&v45, &v43, &qword_1ECF2A778, &unk_1E429E340);
  sub_1E3A6B1BC(&v43, v23);
  v24 = a3 + v6[8];
  *v24 = sub_1E38074D0;
  *(v24 + 1) = a2;
  v24[16] = 0;
  v25 = (a3 + v6[6]);
  OUTLINED_FUNCTION_3_55();
  sub_1E389BA00(v26, v27, &unk_1E42B5D30);

  *v25 = sub_1E42010C4();
  v25[1] = v28;
  v29 = sub_1E389AED8([a1 uiConfiguration]);
  v30 = (a3 + v6[11]);
  *v30 = v29;
  v30[1] = v31;
  v32 = sub_1E4205F14();
  v34 = v33;
  type metadata accessor for Metrics(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v36;
  v37 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v32;
  *(inited + 56) = v34;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v38;
  *(inited + 120) = v37;
  *(inited + 96) = v32;
  *(inited + 104) = v34;

  OUTLINED_FUNCTION_146();
  v39 = sub_1E4205CB4();
  v40 = sub_1E3BA5560(v39, 1);

  *(a3 + v6[10]) = v40;
  return sub_1E325F6F0(&v45, &qword_1ECF2A778, &unk_1E429E340);
}

uint64_t type metadata accessor for LibShowDetailsView(uint64_t a1)
{
  result = qword_1ECF4EA80;
  if (!qword_1ECF4EA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E38992EC()
{
  OUTLINED_FUNCTION_31_1();
  v57 = v1;
  v2 = type metadata accessor for LibShowDetailsView(0);
  v49 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v59 = v4;
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA90, &qword_1E42A7A00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v48 - v8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA98, &qword_1E42A7A08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v48 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAA0, &qword_1E42A7A10);
  OUTLINED_FUNCTION_0_10();
  v53 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v48 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAA8, &qword_1E42A7A18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v48 - v16;
  *v9 = sub_1E4203DA4();
  v9[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAB0, &qword_1E42A7A20);
  sub_1E3899918();
  v18 = v0 + *(v2 + 24);
  v19 = v0;
  v48 = v0;
  v20 = (*(**(v18 + 8) + 264))();
  sub_1E389AF48(v19, v5);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  sub_1E389AFAC(v5, v22 + v21);
  *(v9 + *(v6 + 52)) = v20;
  v23 = (v9 + *(v6 + 56));
  *v23 = sub_1E389B010;
  v23[1] = v22;
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  sub_1E32752B0(&qword_1ECF2CAB8, &qword_1ECF2CA90, &qword_1E42A7A00, MEMORY[0x1E697C278]);
  v24 = v50;
  sub_1E4202EA4();

  v25 = v48;
  sub_1E325F6F0(v9, &qword_1ECF2CA90, &qword_1E42A7A00);
  sub_1E389AF48(v25, v5);
  v26 = v49;
  v27 = swift_allocObject();
  v56 = v5;
  sub_1E389AFAC(v5, v27 + v21);
  sub_1E389B17C();
  sub_1E383B5A4(sub_1E389B06C, v27, v51);

  sub_1E325F6F0(v24, &qword_1ECF2CA98, &qword_1E42A7A08);
  v28 = *(v25 + *(v26 + 28));
  if (v28)
  {
    type metadata accessor for Route(0);
    sub_1E389BA00(qword_1EE23C6B8, type metadata accessor for Route, &unk_1E42DFC80);
    v29 = v28;
    OUTLINED_FUNCTION_32_0();
    v30 = sub_1E4200BC4();
    type metadata accessor for NavigationBarObservableModel(0);
    OUTLINED_FUNCTION_4_57();
    sub_1E389BA00(v31, v32, &unk_1E42BD340);
    sub_1E4200BC4();
    v33 = sub_1E379D97C(v29, v30);
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = v54;
    (*(v53 + 32))(v54, v58, v55);
    v41 = (v40 + *(v52 + 36));
    *v41 = v33;
    v41[1] = v35;
    v41[2] = v37;
    v41[3] = v39;
    v42 = v56;
    sub_1E389AF48(v25, v56);
    v43 = swift_allocObject();
    sub_1E389AFAC(v42, v43 + v21);
    v44 = v57;
    sub_1E3741EA0(v40, v57, &qword_1ECF2CAA8, &qword_1E42A7A18);
    v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAC8, &qword_1E42A7A28) + 36));
    *v45 = sub_1E389B264;
    v45[1] = v43;
    v45[2] = 0;
    v45[3] = 0;
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_2_56();
    sub_1E389BA00(v46, v47, &unk_1E42EB398);
    sub_1E4201744();
    __break(1u);
  }
}

void sub_1E3899918()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v44 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB08, &qword_1E42A7AA8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  sub_1E3899B38();
  v13 = type metadata accessor for LibShowDetailsView(0);
  OUTLINED_FUNCTION_8();
  if ((*(v14 + 168))())
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v19 = (v1 + *(v13 + 44));
    v20 = *v19;
    v21 = v19[1];

    v22 = OUTLINED_FUNCTION_18();
    v23 = sub_1E3F06F18(v20, v21, v22 & 1);
    v16 = v24;
    v18 = v25;
    v17 = v26;
    v15 = v23 & 1;
  }

  v27 = *(v5 + 16);
  v27(v9, v12, v3);
  v43 = v12;
  v28 = v9;
  v29 = v44;
  v27(v44, v28, v3);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB10, &qword_1E42A7AB0) + 48)];
  v31 = OUTLINED_FUNCTION_9_43();
  sub_1E389B960(v31, v32, v33);
  v34 = OUTLINED_FUNCTION_9_43();
  v37 = sub_1E389B9A8(v34, v35, v36);
  *v30 = v15;
  *(v30 + 1) = v16;
  *(v30 + 2) = v18;
  *(v30 + 3) = v17;
  v38 = *(v5 + 8);
  v38(v43, v3, v37);
  v39 = OUTLINED_FUNCTION_9_43();
  v42 = sub_1E389B9A8(v39, v40, v41);
  v38(v28, v3, v42);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3899B38()
{
  OUTLINED_FUNCTION_31_1();
  v50 = v1;
  v51 = sub_1E4200C24();
  OUTLINED_FUNCTION_0_10();
  v49 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v48 = v5 - v4;
  v47 = sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v41 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v44 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB18, &qword_1E42A7AB8);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB20, &qword_1E42A7AC0);
  OUTLINED_FUNCTION_0_10();
  v42 = v16;
  v43 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB28, &qword_1E42A7AC8);
  OUTLINED_FUNCTION_0_10();
  v45 = v21;
  v46 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - v24;
  sub_1E4202704();
  v52 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB30, &qword_1E42A7AD0);
  sub_1E32752B0(&qword_1ECF2CB38, &qword_1ECF2CB30, &qword_1E42A7AD0, MEMORY[0x1E697DA90]);
  sub_1E4200AD4();
  type metadata accessor for LibShowDetailsView(0);
  OUTLINED_FUNCTION_8();
  v53 = (*(v26 + 144))();
  v54 = v27;
  v28 = sub_1E32752B0(&qword_1ECF2CB40, &qword_1ECF2CB18, &qword_1E42A7AB8, MEMORY[0x1E697BE60]);
  v31 = sub_1E32822E0(v28, v29, v30);
  v32 = MEMORY[0x1E69E6158];
  sub_1E4203034();

  (*(v12 + 8))(v15, v10);
  v33 = v41;
  v34 = v44;
  v35 = v47;
  (*(v41 + 104))(v44, *MEMORY[0x1E697C438], v47);
  v53 = v10;
  v54 = v32;
  v55 = v28;
  v56 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v42;
  sub_1E42033D4();
  (*(v33 + 8))(v34, v35);
  (*(v43 + 8))(v20, v37);
  v38 = v48;
  sub_1E4200C14();
  v53 = v37;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v45;
  sub_1E4202E44();
  (*(v49 + 8))(v38, v51);
  (*(v46 + 8))(v25, v39);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E389A008()
{
  v0 = sub_1E4200E34();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  result = OUTLINED_FUNCTION_51_1();
  if (result)
  {
    sub_1E3898B28(v6);
    sub_1E4200E24();
    return (*(v2 + 8))(v6, v0);
  }

  return result;
}

uint64_t sub_1E389A0C8(uint64_t a1)
{
  sub_1E4202084();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  sub_1E4201D44();
  sub_1E389BA00(&qword_1EE2889E8, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1E4207CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB48, &qword_1E42A7AD8);
  sub_1E389BA48();
  return sub_1E4200AA4();
}

void sub_1E389A1F0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = type metadata accessor for LibShowDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_8();
  v8[1] = (*(v5 + 216))();
  swift_getKeyPath();
  sub_1E389AF48(v1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1E389AFAC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB68, &qword_1E42A7B08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB60, &qword_1E42A7AE0);
  OUTLINED_FUNCTION_5_58(&qword_1ECF2CB70);
  sub_1E32752B0(&qword_1ECF2CB58, &qword_1ECF2CB60, &qword_1E42A7AE0, MEMORY[0x1E6981870]);
  OUTLINED_FUNCTION_10_38();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E389A3B4()
{
  OUTLINED_FUNCTION_31_1();
  v41 = v0;
  v42 = v1;
  v3 = v2;
  v40 = v4;
  v6 = v5;
  v44 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB80, &qword_1E42A7B18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB88, &qword_1E42A7B20);
  OUTLINED_FUNCTION_0_10();
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_33();
  sub_1E3EB9C0C(0, 0, 0, 0, 0, 1, v19 & 1, 2, v51, 0, 1, 0, 1, 0, 2, v32, SHIBYTE(v32));
  v20 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_20_33();
  sub_1E3EB9DAC(v52, v51, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 256, 3, 0, v20 & 1, v33, v34);
  sub_1E389A760(v3, v10);
  v45 = v40;
  v46 = v41;
  v47 = v3;
  v48 = v42;
  v49 = v52;
  v50 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB90, &qword_1E42A7B28);
  sub_1E389BD00();
  sub_1E389BE28();
  v37 = v18;
  sub_1E4203B94();
  sub_1E37E6F2C(v52);
  type metadata accessor for LibShowDetailsView(0);
  sub_1E4203DA4();
  sub_1E4200D94();
  v41 = v54;
  v42 = v52[25];
  v40 = v56;
  v38 = v57;
  v60 = 1;
  v59 = v53;
  v58 = v55;
  v21 = v39;
  v22 = *(v39 + 16);
  v23 = v15;
  v36 = v15;
  v24 = OUTLINED_FUNCTION_146();
  v25 = v43;
  v22(v24);
  LOBYTE(v15) = v60;
  LOBYTE(v10) = v59;
  LOBYTE(v18) = v58;
  v26 = v44;
  (v22)(v44, v23, v25);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBC0, &qword_1E42A7B40) + 48);
  *v27 = 0;
  *(v27 + 8) = v15;
  v28 = v41;
  *(v27 + 16) = v42;
  *(v27 + 24) = v10;
  *(v27 + 32) = v28;
  *(v27 + 40) = v18;
  v29 = v37;
  v30 = v38;
  *(v27 + 48) = v40;
  *(v27 + 56) = v30;
  v31 = *(v21 + 8);
  v31(v29, v25);
  v31(v36, v25);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E389A760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CBE0, &unk_1E42A7B80);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBA0, &qword_1E42A7B30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  if (a1)
  {
    v46 = v6;
    v47 = a2;

    sub_1E3B7B1C8();
    OUTLINED_FUNCTION_8();
    v21 = *(v20 + 312);

    v23 = v21(v22);

    v24 = **(v3 + *(type metadata accessor for LibShowDetailsView(0) + 24) + 8);
    v25 = (*(v24 + 272))();
    v27 = sub_1E41494A8(v25, v26);

    v48 = (v27 | v23) & 1;
    sub_1E4203AD4();
    v28 = *sub_1E3C8DC30();

    sub_1E39E19A0(a1, v28, v11);

    OUTLINED_FUNCTION_8();
    (*(v29 + 152))(v49);
    if (v50)
    {
      v34 = OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v32.n128_u64[0] = v49[2];
      v33.n128_u64[0] = v49[3];
      v30.n128_u64[0] = v49[0];
      v31.n128_u64[0] = v49[1];
      v34 = j_nullsub_1(v30, v31, v32, v33);
    }

    v39 = v34;
    v40 = v35;
    v41 = v36;
    v42 = v37;
    v43 = sub_1E4202734();

    (*(v8 + 32))(v16, v11, v46);
    v44 = v16 + *(v12 + 36);
    *v44 = v43;
    *(v44 + 8) = v39;
    *(v44 + 16) = v40;
    *(v44 + 24) = v41;
    *(v44 + 32) = v42;
    *(v44 + 40) = 0;
    sub_1E3741EA0(v16, v19, &qword_1ECF2CBA0, &qword_1E42A7B30);
    v45 = v47;
    sub_1E3741EA0(v19, v47, &qword_1ECF2CBA0, &qword_1E42A7B30);
    return __swift_storeEnumTagSinglePayload(v45, 0, 1, v12);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v12);
  }
}

void sub_1E389AB14()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for LibShowDetailsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v11[25] = v5;
  swift_getKeyPath();
  sub_1E389AF48(v1, v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 211) & ~*(v7 + 80);
  v10 = swift_allocObject();
  memcpy((v10 + 16), v3, 0xC3uLL);
  sub_1E389AFAC(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

  sub_1E375C1CC(v3, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBC8, &qword_1E42A7B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBB8, &qword_1E42A7B38);
  OUTLINED_FUNCTION_5_58(&qword_1ECF2CBD0);
  sub_1E32752B0(&qword_1ECF2CBB0, &qword_1ECF2CBB8, &qword_1E42A7B38, MEMORY[0x1E6981F48]);
  OUTLINED_FUNCTION_10_38();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E389ACD8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1E40EA03C(*v3, v1, 0, 0, &v23 - v14);
  type metadata accessor for LibShowDetailsView(0);
  sub_1E4203DA4();
  sub_1E4200D94();
  v26 = v30;
  v27 = v28;
  v24 = v33;
  v25 = v32;
  v36 = 1;
  v35 = v29;
  v34 = v31;
  v16 = *(v8 + 16);
  v16(v12, v15, v6);
  v17 = v36;
  LOBYTE(v3) = v35;
  v18 = v34;
  v16(v5, v12, v6);
  v19 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBD8, &qword_1E42A7B78) + 48)];
  *v19 = 0;
  v19[8] = v17;
  v20 = v26;
  *(v19 + 2) = v27;
  v19[24] = v3;
  *(v19 + 4) = v20;
  v19[40] = v18;
  v21 = v24;
  *(v19 + 6) = v25;
  *(v19 + 7) = v21;
  v22 = *(v8 + 8);
  v22(v15, v6);
  v22(v12, v6);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E389AED8(void *a1)
{
  v2 = [a1 loadingViewText];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E389AF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibShowDetailsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E389AFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibShowDetailsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E389B010()
{
  v0 = type metadata accessor for LibShowDetailsView(0);
  OUTLINED_FUNCTION_17_2(v0);

  return sub_1E389A008();
}

double sub_1E389B06C(double a1)
{
  v2 = type metadata accessor for LibShowDetailsView(0);
  OUTLINED_FUNCTION_17_2(v2);
  type metadata accessor for NavigationBarObservableModel(0);
  OUTLINED_FUNCTION_4_57();
  sub_1E389BA00(v3, v4, &unk_1E42BD340);
  OUTLINED_FUNCTION_32_0();
  v5 = *sub_1E4200BC4();
  (*(v5 + 296))(a1);

  return result;
}

unint64_t sub_1E389B17C()
{
  result = qword_1ECF2CAC0;
  if (!qword_1ECF2CAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CA98, &qword_1E42A7A08);
    sub_1E32752B0(&qword_1ECF2CAB8, &qword_1ECF2CA90, &qword_1E42A7A00, MEMORY[0x1E697C278]);
    sub_1E389BA00(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CAC0);
  }

  return result;
}

uint64_t sub_1E389B264()
{
  v0 = type metadata accessor for LibShowDetailsView(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_8();
  return (*(v1 + 296))();
}

void sub_1E389B338(uint64_t a1)
{
  sub_1E389B45C(319);
  if (v1 <= 0x3F)
  {
    sub_1E389B4B4(319);
    if (v2 <= 0x3F)
    {
      sub_1E389B518(319);
      if (v3 <= 0x3F)
      {
        sub_1E389B5AC(319);
        if (v4 <= 0x3F)
        {
          sub_1E389B640(319);
          if (v5 <= 0x3F)
          {
            sub_1E389B6D4(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Metrics(319);
              if (v7 <= 0x3F)
              {
                sub_1E389B768();
                if (v8 <= 0x3F)
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

void sub_1E389B45C(uint64_t a1)
{
  if (!qword_1EE289EB8)
  {
    sub_1E4200E34();
    v1 = sub_1E4200B94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289EB8);
    }
  }
}

void sub_1E389B4B4(uint64_t a1)
{
  if (!qword_1ECF2CAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CA80, &qword_1E42BBA00);
    v1 = sub_1E4203924();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF2CAD8);
    }
  }
}

void sub_1E389B518(uint64_t a1)
{
  if (!qword_1ECF2CAE0)
  {
    type metadata accessor for LibShowDetailsViewModel(255);
    sub_1E389BA00(&qword_1ECF2CA88, type metadata accessor for LibShowDetailsViewModel, &unk_1E42B5D30);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF2CAE0);
    }
  }
}

void sub_1E389B5AC(uint64_t a1)
{
  if (!qword_1EE2892C0)
  {
    type metadata accessor for Router(255);
    sub_1E389BA00(&qword_1EE23C228, type metadata accessor for Router, &unk_1E42EB398);
    v1 = sub_1E4201764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2892C0);
    }
  }
}

void sub_1E389B640(uint64_t a1)
{
  if (!qword_1ECF2CAE8)
  {
    type metadata accessor for Route(255);
    sub_1E389BA00(qword_1EE23C6B8, type metadata accessor for Route, &unk_1E42DFC80);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF2CAE8);
    }
  }
}

void sub_1E389B6D4(uint64_t a1)
{
  if (!qword_1ECF2CAF0)
  {
    type metadata accessor for NavigationBarObservableModel(255);
    sub_1E389BA00(qword_1EE24A570, type metadata accessor for NavigationBarObservableModel, &unk_1E42BD340);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF2CAF0);
    }
  }
}

void sub_1E389B768()
{
  if (!qword_1EE23B5F8)
  {
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B5F8);
    }
  }
}

unint64_t sub_1E389B7B8()
{
  result = qword_1ECF2CAF8;
  if (!qword_1ECF2CAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CAC8, &qword_1E42A7A28);
    sub_1E389B844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CAF8);
  }

  return result;
}

unint64_t sub_1E389B844()
{
  result = qword_1ECF2CB00;
  if (!qword_1ECF2CB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CAA8, &qword_1E42A7A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CA98, &qword_1E42A7A08);
    sub_1E389B17C();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E389B90C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CB00);
  }

  return result;
}

unint64_t sub_1E389B90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24E1B8[0];
  if (!qword_1EE24E1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE24E1B8);
  }

  return result;
}

double sub_1E389B960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

double sub_1E389B9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1E389BA00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E389BA48()
{
  result = qword_1ECF2CB50;
  if (!qword_1ECF2CB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CB48, &qword_1E42A7AD8);
    sub_1E32752B0(&qword_1ECF2CB58, &qword_1ECF2CB60, &qword_1E42A7AE0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CB50);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  type metadata accessor for LibShowDetailsView(0);
  OUTLINED_FUNCTION_144();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78, &unk_1E42A79F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4200E34();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_18_23(v0[6]);

  OUTLINED_FUNCTION_11_40();
  OUTLINED_FUNCTION_18_23(v0[11]);

  return swift_deallocObject();
}

void sub_1E389BC3C(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LibShowDetailsView(0);
  OUTLINED_FUNCTION_17_2(v2);
  *a1 = sub_1E4201D54();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB78, &qword_1E42A7B10);
  sub_1E389A3B4();
}

unint64_t sub_1E389BD00()
{
  result = qword_1ECF2CB98;
  if (!qword_1ECF2CB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CB80, &qword_1E42A7B18);
    sub_1E389BD84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CB98);
  }

  return result;
}

unint64_t sub_1E389BD84()
{
  result = qword_1EE289BD8;
  if (!qword_1EE289BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CBA0, &qword_1E42A7B30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BD8);
  }

  return result;
}

unint64_t sub_1E389BE28()
{
  result = qword_1ECF2CBA8;
  if (!qword_1ECF2CBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CB90, &qword_1E42A7B28);
    sub_1E32752B0(&qword_1ECF2CBB0, &qword_1ECF2CBB8, &qword_1E42A7B38, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CBA8);
  }

  return result;
}

void sub_1E389BED8()
{
  v0 = type metadata accessor for LibShowDetailsView(0);
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E389ACD8();
}

uint64_t sub_1E389BF5C(double a1, double a2, double a3, double a4)
{
  v4 = NSStringFromCGRect(*&a1);
  v5 = sub_1E4205F14();

  return v5;
}

void sub_1E389BFA8()
{
  OUTLINED_FUNCTION_41_5();
  v129 = v0;
  LODWORD(v130) = v1;
  v3 = v2;
  v141 = v4;
  v138 = v5;
  v139 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v136 = v13;
  v15 = *v14;
  v134 = v14[1];
  v135 = v15;
  v16 = v14[2];
  v132 = v14[3];
  v133 = v16;
  v131 = v14;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v127 = v18;
  v128 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v137 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v126 - v21;
  v23 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(*v12 + 392);
  v140 = v12;
  if (v30(v27))
  {
    OUTLINED_FUNCTION_30();
    v32 = v23;
    *&v33 = COERCE_DOUBLE((*(v31 + 1128))());
    v126 = v25;
    v34 = v3;
    v36 = v35;

    v37 = *&v33;
    v23 = v32;
    v38 = (v36 & 1) == 0;
    v3 = v34;
    v25 = v126;
    if (v38)
    {
      v39 = v37;
    }

    else
    {
      v39 = 1.0;
    }
  }

  else
  {
    v39 = 1.0;
  }

  sub_1E3831F24(v3, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v40 = sub_1E325F748(v22, &qword_1ECF2A250, " B\r");
    v41 = (v30)(v40);
    if (!v41 || (OUTLINED_FUNCTION_30(), v43 = (*(v42 + 984))(), v45 = v44, v41 = , (v45 & 1) != 0))
    {
      v43 = 0;
    }

    if ((v30)(v41))
    {
      v158[3] = &unk_1F5D5D888;
      v158[4] = &off_1F5D5C918;
      LOBYTE(v158[0]) = 12;
      v46 = sub_1E39C29F0(v158, 1);
      __swift_destroy_boxed_opaque_existential_1(v158);
      type metadata accessor for LayoutGrid();

      v43 = sub_1E3A25B9C(v47, v43, v46 & 1);
    }
  }

  else
  {
    (*(v25 + 32))(v29, v22, v23);
    v43 = sub_1E389CA24(v140, v29, 1);
    (*(v25 + 8))(v29, v23);
  }

  type metadata accessor for LayoutGrid();
  v48 = sub_1E3A25D00(v43, 0, v10, v39);
  v49 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_58_2();
  v50 = OUTLINED_FUNCTION_6_14(v48, v8, v49 & 1, &v173, 0, 1, 0, 1, v123, v124[0], v124[1], v124[2]);
  v171 = v173;
  v172[0] = *v174;
  *(v172 + 9) = *&v174[9];
  v169 = v175;
  v170 = v176;
  v168 = v177;
  v165 = v178;
  v166 = v179;
  v167 = v180;
  v51 = (v30)(v50);
  v54 = v48;
  if (v51)
  {
    sub_1E3A259B0(v51, v52, v53);
    v54 = v55;
  }

  v56 = sub_1E324FBDC();
  v58 = v127;
  v57 = v128;
  (*(v127 + 16))(v137, v56, v128);
  v59 = sub_1E41FFC94();
  v60 = sub_1E42067E4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = v54;
    _os_log_impl(&dword_1E323F000, v59, v60, "CollectionView:: computeBuilderContextForChildren downloadableImageWidth=%f", v61, 0xCu);
    MEMORY[0x1E69143B0](v61, -1, -1);
  }

  (*(v58 + 8))(v137, v57);
  v168 = 0;
  v202 = v171;
  *v203 = v172[0];
  *&v203[9] = *(v172 + 9);
  v204 = 0;
  v205 = v169;
  v206 = v170;
  v207 = v54;
  v208 = 0;
  v211 = v167;
  v210 = v166;
  v209 = v165;
  sub_1E375C2C0(&v202, v158);
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_5_59();
  v122 = v62;
  v121 = v63;
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_14_46(v64, v65, v66, v67, v68, 1, 0, 0, v121, v122, 0, v125[0], v125[1], v125[2]);
  v187 = v185;
  memcpy(v164, v181, sizeof(v164));
  v162[0] = v182[0];
  *(v162 + 3) = *(v182 + 3);
  v159 = v183;
  v160[0] = *v184;
  *(v160 + 15) = *&v184[15];
  v69 = v186;
  v161 = 0;
  v70 = v141;

  sub_1E325F748(&v187, &qword_1ECF2BB28, &qword_1E42A2A60);
  if (v138)
  {
    v71 = 0;
  }

  else
  {
    v71 = v139;
  }

  v163 = 0;
  v72 = v129 & 1;
  v73 = v130 & 1;
  sub_1E3A25950(v10);
  v75 = v74;
  memcpy(v188, v164, sizeof(v188));
  v196 = v159;
  v130 = v71;
  v189 = v71;
  v190 = v8;
  v76 = v163;
  v191 = v163;
  *v192 = v162[0];
  *&v192[3] = *(v162 + 3);
  v193 = v48;
  v194 = v8;
  v77 = v161;
  v195 = v161;
  *v197 = v160[0];
  *&v197[15] = *(v160 + 15);
  v198 = v70;
  v138 = v72;
  LODWORD(v139) = v69;
  v199 = v69;
  v200 = v72;
  LODWORD(v137) = v73;
  v201 = v73;
  sub_1E375C1CC(v188, v158);
  v78 = j__OUTLINED_FUNCTION_18();
  v79 = j__OUTLINED_FUNCTION_18();
  j_j__OUTLINED_FUNCTION_5_8();
  j__OUTLINED_FUNCTION_51_1();
  v80 = j__OUTLINED_FUNCTION_18();
  v81 = sub_1E3CBD2B8(v80);
  LOBYTE(v73) = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_18_15();
  sub_1E3EBA150(v87, v82, v83, v84, v85, v78, v79, 0, v86, v88, v89, v90, v91, v92, v93, v94, v95, 0, 1, v80 & 1, v81, v73 & 1);
  sub_1E3EBA2D4(v75, 0);
  v158[32] = v70;

  v97 = v134;
  v96 = v135;
  v99 = v132;
  v98 = v133;
  if (v131[4])
  {
    v96 = OUTLINED_FUNCTION_5_8();
  }

  *&v158[28] = v96;
  v158[29] = v97;
  v158[30] = v98;
  v158[31] = v99;
  type metadata accessor for SearchCollectionViewModel();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v101 = *(v100 + 1680);

    v103 = v101(v102);
  }

  else
  {
    type metadata accessor for LibCollectionViewModel();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_30();
    v105 = *(v104 + 1608);

    v103 = v105(v106);
  }

  sub_1E3EBA2C8(v103);

LABEL_27:
  type metadata accessor for CollectionViewModel();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v108 = *(v107 + 1344);

    v110 = v108(v109);
    if (sub_1E373F6E0(v110, 129, v111, v112, v113, v114))
    {
      OUTLINED_FUNCTION_0_61();
      OUTLINED_FUNCTION_4_58();

      v119 = 1;
LABEL_33:
      BYTE2(v158[27]) = v119;
      goto LABEL_34;
    }

    v120 = sub_1E373F6E0(v110, 121, v115, v116, v117, v118);

    OUTLINED_FUNCTION_0_61();
    *&v157[89] = v167;
    *&v157[73] = v166;
    *&v157[57] = v165;
    sub_1E375C31C(v157);
    if (v120)
    {
      v119 = 2;
      goto LABEL_33;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_4_58();
  }

LABEL_34:
  memcpy(v156, v158, sizeof(v156));
  memcpy(v157, v158, 0x150uLL);
  sub_1E37E6E1C(v156, v142);
  sub_1E375B760(v157);
  memcpy(v142, v164, sizeof(v142));
  v143 = v130;
  v144 = v8;
  v145 = v76;
  *v146 = v162[0];
  *&v146[3] = *(v162 + 3);
  v147 = v48;
  v148 = v8;
  v149 = v77;
  v150 = v159;
  *v151 = v160[0];
  *&v151[15] = *(v160 + 15);
  v152 = v141;
  v153 = v139;
  v154 = v138;
  v155 = v137;
  sub_1E37E6F2C(v142);
  memcpy(v136, v156, 0x150uLL);
  OUTLINED_FUNCTION_42();
}

uint64_t sub_1E389CA24(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    return 4;
  }

  type metadata accessor for LayoutGrid();
  v5 = *(*a1 + 392);

  v7 = (v5)(v6);
  v8 = sub_1E3B028AC();
  v9 = sub_1E3B02A04();
  v10 = OUTLINED_FUNCTION_51_1();
  v11 = sub_1E3A25EB8(v7, v8 & 1, v9 & 1, v10 & 1);
  v13 = v12;

  type metadata accessor for SearchCollectionViewModel();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v19 = v14;
    if (sub_1E373F6E0(*(v14 + 98), 133, v15, v16, v17, v18) & 1) != 0 || (sub_1E373F6E0(v19[49], 134, v20, v21, v22, v23) & 1) != 0 || (sub_1E373F6E0(v19[49], 118, v24, v25, v26, v27))
    {

      return 10;
    }

    if (a3)
    {
      v33 = (*(*v19 + 1680))();
      if (v13)
      {
        v35 = sub_1E389CC78(v33, 2, v34);

        if (v35)
        {
          return 0;
        }

        else
        {
          return 4;
        }
      }

      else
      {
      }

      return v11;
    }
  }

  else
  {
    type metadata accessor for LibCollectionViewModel();
    if (swift_dynamicCastClass())
    {
      if (sub_1E3B0352C())
      {

        return 6;
      }

      if (!v5())
      {

        return 3;
      }

      OUTLINED_FUNCTION_30();
      v11 = (*(v28 + 984))();
      v30 = v29;

      v31 = (v30 & 1) == 0;
      v32 = 3;
      goto LABEL_19;
    }
  }

  v31 = (v13 & 1) == 0;
  v32 = 4;
LABEL_19:
  if (!v31)
  {
    return v32;
  }

  return v11;
}

uint64_t sub_1E389CC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E389D0D4(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

void sub_1E389CD28()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v91 = v8;
  v9 = *v2;
  v85 = *(v2 + 2);
  v87 = *(v2 + 1);
  v90 = *(v2 + 3);
  if (!(*(*v10 + 392))() || (OUTLINED_FUNCTION_30(), v12 = (*(v11 + 984))(), v14 = v13, , (v14 & 1) != 0) || v12 == 21)
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A258E4(v7);
  }

  else
  {
    v15 = *MEMORY[0x1E69DDCE0];
    v16 = *(MEMORY[0x1E69DDCE0] + 8);
    v17 = *(MEMORY[0x1E69DDCE0] + 16);
    v18 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  *&v19 = v7 - sub_1E3952BE0(v15, v16, v17, v18);
  v20 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_58_2();
  v21 = 1;
  OUTLINED_FUNCTION_6_14(v19, 0, v20 & 1, v111, 0, 1, 0, 1, v78, v80[0], v80[1], v80[2]);
  sub_1E375C2C0(v111, __dst);
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_5_59();
  v77 = v22;
  v75 = v23;
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_14_46(v24, v25, v26, v27, v28, 1, 0, 0, v75, v77, 0, v81, v83, v84);
  v109 = 0;
  v110 = 0;
  memcpy(__dst, __src, sizeof(__dst));
  v118 = v7;
  v119 = v5;
  v120 = 0;
  *v121 = *v113;
  *&v121[3] = *&v113[3];
  v122 = v19;
  v123 = 0;
  v89 = v1 & 1;
  v124 = 0;
  v125 = v114;
  v126 = v115;
  *v127 = *v116;
  *&v127[9] = *&v116[9];
  v128 = v1 & 1;
  sub_1E375C1CC(__dst, v93);
  v29 = j__OUTLINED_FUNCTION_18();
  v30 = j__OUTLINED_FUNCTION_18();
  j_j__OUTLINED_FUNCTION_5_8();
  j__OUTLINED_FUNCTION_51_1();
  v31 = j__OUTLINED_FUNCTION_18();
  v32 = sub_1E3CBD2B8(v31);
  v33 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_18_15();
  sub_1E3EBA150(v39, v34, v35, v36, v37, v29, v30, 0, v38, v40, v41, v42, v43, v44, v45, v46, v47, 0, 1, v31 & 1, v32, v33 & 1);
  type metadata accessor for LibCollectionViewModel();
  v48 = swift_dynamicCastClass();
  if (v48)
  {
    v21 = (*(*v48 + 1608))();
  }

  sub_1E3EBA2C8(v21);
  v49 = v90;
  if (v3[4])
  {
    v50 = OUTLINED_FUNCTION_5_8();
    v52 = v51;
    v54 = v53;
    v49 = v55;
    sub_1E375C31C(v111);
    v56 = memcpy(v93, __src, sizeof(v93));
    OUTLINED_FUNCTION_2_57(v56, v57, v58, v59, v60, v61, v62, v63, v72, v73, v74, v76, v79, v82, v85, v87, 0, 0, v89, v90, v91, v93[0], v93[1], v93[2], v93[3], v93[4], v93[5], v93[6], v93[7], v93[8], v93[9], v93[10], v93[11], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  }

  else
  {
    v50 = v9;
    v64 = memcpy(v93, __src, sizeof(v93));
    OUTLINED_FUNCTION_2_57(v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v76, v79, v82, v85, v87, 0, 0, v89, v90, v91, v93[0], v93[1], v93[2], v93[3], v93[4], v93[5], v93[6], v93[7], v93[8], v93[9], v93[10], v93[11], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
    sub_1E375C31C(v111);
    v54 = v86;
    v52 = v88;
  }

  *&v108[28] = v50;
  v108[29] = v52;
  v108[30] = v54;
  v108[31] = v49;
  memcpy(v92, v108, 0x150uLL);
  OUTLINED_FUNCTION_42();
}

unint64_t sub_1E389D0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE259C60;
  if (!qword_1EE259C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE259C60);
  }

  return result;
}

void *sub_1E389D15C()
{
  v1 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_prefetchedPlayer;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E389D200(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_prefetchedPlayer;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_prefetchedPlayer, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1E389D308()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player);
  if (![v1 currentMediaItem] || (ObjectType = swift_getObjectType(), v3 = MEMORY[0x1E69E6158], sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]), OUTLINED_FUNCTION_92_0(), sub_1E4123590(v4, v3, v5), swift_unknownObjectRelease(), !v11))
  {
  }

  v6 = [v1 description];
  sub_1E4205F14();

  v7 = OUTLINED_FUNCTION_24_4();
  MEMORY[0x1E69109E0](v7);

  MEMORY[0x1E69109E0](32, 0xE100000000000000);
  v8 = OUTLINED_FUNCTION_74();
  MEMORY[0x1E69109E0](v8);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return v10;
}

unint64_t sub_1E389D44C()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E389D494(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x746F4E666C656873;
      break;
    case 2:
      result = 0x457349666C656873;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x7669746341746F6ELL;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E389D604(char a1, char a2)
{
  v3 = sub_1E389D494(a1);
  v5 = v4;
  if (v3 == sub_1E389D494(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E389D688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E38A731C(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E389D740(char a1)
{
  sub_1E4207B44();
  sub_1E389D494(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E389D7AC(uint64_t a1, char a2)
{
  sub_1E389D494(a2);
  sub_1E4206014();
}

uint64_t sub_1E389D808(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E389D494(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E389D868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E389D44C();
  *a1 = result;
  return result;
}

unint64_t sub_1E389D898@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E389D494(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E389D8C4()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController))
  {
    OUTLINED_FUNCTION_88_0();
    v2 = *(v1 + 432);
    v4 = v3;
    v5 = v2();

    if (v5)
    {
      type metadata accessor for LivePostPlayTemplateViewController(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1E389D964()
{
  v1 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E389D9A4(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf, a2);
  *(v2 + v4) = a1;
  return result;
}

id sub_1E389D9E8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player) currentMediaItem];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 hasTrait_];
  swift_unknownObjectRelease();
  return v2;
}

void sub_1E389DA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108_2();
  a19 = v21;
  a20 = v22;
  v23 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController____lazy_storage___tapGestureRecognizer;
  v24 = *&v20[OBJC_IVAR____TtC8VideosUI22LivePostPlayController____lazy_storage___tapGestureRecognizer];
  if (!v24)
  {
    v25 = v20;
    a12 = type metadata accessor for LivePostPlayController(0);
    a9 = v20;
    v26 = objc_allocWithZone(MEMORY[0x1E69DD060]);
    v27 = v20;
    v28 = sub_1E3814AF0(&a9, sel_didTapWithGesture_);
    [v28 setDelegate_];
    v29 = *&v25[v23];
    *&v25[v23] = v28;
    v28;

    v24 = 0;
  }

  v30 = v24;
  OUTLINED_FUNCTION_109_4();
}

void sub_1E389DB18()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_74();
  sub_1E389DB60();
}

void sub_1E389DB60()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v37 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v36 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_prefetchedPlayer] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerControlsOrTabsVisible] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playbackPrefetchTask] = 0;
  v11 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerViewController;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerViewController] = 0;
  v12 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_animationDuration] = 0x3FF0000000000000;
  sub_1E41FFCA4();
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_cancellables] = MEMORY[0x1E69E7CD0];
  _s28LivePostPlayShelfFetchPolicyVMa(0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_gameEndShelfAlreadyDisplayed] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_broadcastEndShelfAlreadyDisplayed] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchTask] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackDelay] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_didEnterStreamInBroadcastEndRange] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController____lazy_storage___tapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player] = v7;
  v17 = *&v2[v11];
  *&v2[v11] = v5;
  v18 = v7;
  v38 = v5;

  v19 = *&v2[v12];
  *&v2[v12] = v37;
  v20 = v37;

  type metadata accessor for PlayerLiveEventMonitor(0);
  v21 = v18;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerLiveEventMonitor] = sub_1E3B3DAB8();
  v39.receiver = v2;
  v39.super_class = type metadata accessor for LivePostPlayController(0);
  v22 = objc_msgSendSuper2(&v39, sel_init);
  (*(v36 + 16))(v1, v22 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger[0], v8);
  v23 = v22;
  v24 = v1;
  v25 = sub_1E41FFC94();
  v26 = sub_1E4206814();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_6_21();
    v28 = v20;
    v29 = OUTLINED_FUNCTION_160();
    *v27 = 138412290;
    *(v27 + 4) = v23;
    *v29 = v23;
    v30 = v23;
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v31, v32, "%@ init");
    sub_1E325F6F0(v29, &unk_1ECF28E30, &qword_1E429E820);
    v20 = v28;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79();
  }

  (*(v36 + 8))(v24, v8);
  sub_1E389E730();
  sub_1E389FA7C();
  sub_1E389FC04();
  sub_1E389ED30();
  sub_1E38A5438();
  if ([v21 currentMediaItem])
  {
    swift_getObjectType();
    v33 = sub_1E41236C0(@"VUIMediaItemMetadataKeyAutoExitOnBroadcastEndInSeconds");
    v35 = v34;
    swift_unknownObjectRelease();

    if ((v35 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v33 = 0;
LABEL_8:
  *&v23[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackDelay] = v33;

  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for LivePostPlayController(uint64_t a1)
{
  result = qword_1EE29A6D0;
  if (!qword_1EE29A6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E389DF64()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger[0], v1);
  v8 = v0;
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_160();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    OUTLINED_FUNCTION_102_6(&dword_1E323F000, v9, v10, "%@ deinit");
    sub_1E325F6F0(v12, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v7, v1);
  v14.receiver = v8;
  v14.super_class = type metadata accessor for LivePostPlayController(0);
  objc_msgSendSuper2(&v14, sel_dealloc);
  OUTLINED_FUNCTION_95();
}

void sub_1E389E248(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E42064D4();
  }

  if (a1)
  {
    sub_1E38A3A5C();
  }

  sub_1E38A524C();
}

void sub_1E389E2DC(void *a1)
{
  v3 = v1;
  sub_1E38A32E8(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  aBlock = sub_1E4205F14();
  v29 = v6;
  sub_1E4207414();
  v7 = *(v3 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player);
  v8 = sub_1E3280A90(0, &qword_1ECF3A0B0, 0x1E69D5A50);
  *(inited + 96) = v8;
  *(inited + 72) = v7;
  v9 = v7;
  v10 = sub_1E4205CB4();
  v11 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x100))();
  if (v11)
  {
    v12 = v11;
    sub_1E4205F14();
    *(&v26 + 1) = v13;
    sub_1E4207414();
    v27 = v8;
    *&v26 = v12;
    sub_1E329504C(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E377DF14(v25, &aBlock, isUniquelyReferenced_nonNull_native);
    sub_1E375D84C(&aBlock);
  }

  v15 = [objc_opt_self() defaultCenter];
  sub_1E37E7460(@"VUILiveSportsPostPlayAutoPlayWillStartNotification", 0, v10, v15);

  v16 = v3;
  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_6_21();
    v19 = OUTLINED_FUNCTION_36_8();
    *v2 = 138412290;
    *(v2 + 4) = v16;
    *v19 = v3;
    v20 = v16;
    _os_log_impl(&dword_1E323F000, v17, v18, "%@ Pausing player because countdown timer fired", v2, 0xCu);
    sub_1E325F6F0(v19, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();
  }

  [v9 pause];
  v21 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  v32 = sub_1E38A6934;
  v33 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1E329EEC4;
  v31 = &block_descriptor_22;
  v23 = _Block_copy(&aBlock);
  v24 = a1;

  [v21 playMediaInfo:v24 watchType:3 isRentAndWatchNow:0 completion:v23];
  _Block_release(v23);
}

void sub_1E389E66C()
{
  v2 = v0;
  v3 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_67_5())
  {
    OUTLINED_FUNCTION_6_21();
    v4 = OUTLINED_FUNCTION_32_27();
    *v1 = 138412290;
    *(v1 + 4) = v2;
    *v4 = v2;
    v5 = v2;
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_103_0(v6, v7, v8, v9);
    sub_1E325F6F0(v4, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_9();
  }

  sub_1E38A1FA8();
}

void sub_1E389E730()
{
  v1 = OUTLINED_FUNCTION_24_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_8();
  (*(v4 + 192))();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&qword_1EE28A0F8, &qword_1ECF2CD10, &qword_1E42B50B0, MEMORY[0x1E695C068]);
  sub_1E4200844();

  v5 = OUTLINED_FUNCTION_74();
  v6(v5);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_cancellables, v7);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_95();
}

void sub_1E389E8C8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *v1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v46 = v8;
    v47 = v9;
    v48 = v4;
    v49 = v2;
    OUTLINED_FUNCTION_8();
    v20 = *(v19 + 168);

    v22 = v20(v21);

    v23 = v18;
    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_100();
      v45 = v22;
      v27 = OUTLINED_FUNCTION_160();
      v50[0] = swift_slowAlloc();
      *v26 = 138412802;
      *(v26 + 4) = v23;
      *v27 = v18;
      *(v26 + 12) = 2080;
      v28 = v23;
      v29 = sub_1E3B3D050(v45);
      v31 = sub_1E3270FC8(v29, v30, v50);

      *(v26 + 14) = v31;
      *(v26 + 22) = 2080;
      v32 = sub_1E3B3D050(v16);
      v34 = sub_1E3270FC8(v32, v33, v50);

      *(v26 + 24) = v34;
      _os_log_impl(&dword_1E323F000, v24, v25, "%@ Playhead position changing from %s to %s", v26, 0x20u);
      sub_1E325F6F0(v27, &unk_1ECF28E30, &qword_1E429E820);
      v22 = v45;
      OUTLINED_FUNCTION_6_0();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_79();
    }

    *(v23 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_gameEndShelfAlreadyDisplayed) = 0;
    *(v23 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_broadcastEndShelfAlreadyDisplayed) = 0;
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v35 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v22;
    *(v37 + 25) = v16;
    v50[4] = sub_1E38A8318;
    v50[5] = v37;
    OUTLINED_FUNCTION_25_7();
    v50[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v50[2] = v38;
    v50[3] = &block_descriptor_149;
    v39 = _Block_copy(v50);

    sub_1E4203FE4();
    v50[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_59();
    sub_1E3274A24(v40, v41, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v42, v43, &qword_1E429B000, v44);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v15, v46, v39);
    _Block_release(v39);

    (*(v48 + 8))(v46, v49);
    (*(v11 + 8))(v15, v47);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E389ED30()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - v4;
  v6 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v51 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v50 = objc_opt_self();
  v18 = [v50 defaultCenter];
  v19 = *sub_1E37E1340();
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v20 = sub_1E4206A04();
  v52[0] = v20;
  v49 = sub_1E42069A4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  OUTLINED_FUNCTION_3_56();
  v48 = sub_1E3274A24(v25, v26, MEMORY[0x1E6969F18]);
  v47 = sub_1E3746800();
  v42 = v6;
  sub_1E42007D4();
  sub_1E325F6F0(v5, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v27 = *(v8 + 8);
  v45 = v8 + 8;
  v46 = v27;
  v27(v12, v6);
  OUTLINED_FUNCTION_4_0();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v28);
  swift_unknownObjectWeakInit();
  v44 = sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00, &unk_1E42A2900, MEMORY[0x1E695BE98]);
  sub_1E4200844();
  OUTLINED_FUNCTION_31_4();

  v29 = *(v51 + 8);
  v51 += 8;
  v43 = v29;
  v30 = v13;
  v29(v17, v13);
  v31 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_cancellables;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_cancellables, v52);
  v32 = v1;
  sub_1E42004C4();
  swift_endAccess();

  v33 = [v50 defaultCenter];
  v34 = *sub_1E37E13C8();
  sub_1E4206C14();

  v35 = sub_1E4206A04();
  v52[0] = v35;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v49);
  v39 = v42;
  sub_1E42007D4();
  sub_1E325F6F0(v5, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v46(v12, v39);
  OUTLINED_FUNCTION_4_0();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v40);
  swift_unknownObjectWeakInit();
  sub_1E4200844();
  OUTLINED_FUNCTION_31_4();

  v43(v17, v30);
  OUTLINED_FUNCTION_11_3(v32 + v31, v52);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E389F1C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playbackPrefetchTask;
  if (*&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playbackPrefetchTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    OUTLINED_FUNCTION_78_3();
  }

  v13 = v0;
  v34 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  v15 = os_log_type_enabled(v34, v14);
  if (v3)
  {
    if (v15)
    {
      v16 = OUTLINED_FUNCTION_6_21();
      v17 = OUTLINED_FUNCTION_160();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_1E323F000, v34, v14, "%@ not prefetching playback as playbackPrefetchTimerDuration is nil", v16, 0xCu);
      sub_1E325F6F0(v17, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    if (v15)
    {
      OUTLINED_FUNCTION_49_0();
      v21 = OUTLINED_FUNCTION_36_8();
      OUTLINED_FUNCTION_65_8(v21, 5.778e-34);
      *(v3 + 12) = 2048;
      *(v3 + 14) = v5;
      v22 = v13;
      _os_log_impl(&dword_1E323F000, v34, v14, "%@ Preparing for playback prefetching with prefetch timer duration - %f", v3, 0x16u);
      sub_1E325F6F0(v21, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    OUTLINED_FUNCTION_4_0();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_89();
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v27;
    v28[5] = v5;
    v28[6] = v7;
    v29 = v7;
    v30 = OUTLINED_FUNCTION_23_7();
    *&v1[v12] = sub_1E37748D8(v30, v31, v11, v32, v28);

    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E389F474()
{
  OUTLINED_FUNCTION_24();
  v0[11] = v1;
  v0[10] = v2;
  v0[9] = v3;
  v4 = sub_1E42075E4();
  v0[12] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[13] = v5;
  v0[14] = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E389F524()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    sub_1E4207CA4();
    sub_1E4207AA4();
    OUTLINED_FUNCTION_40_4(&dword_1E42A6EA8);
    v6 = v2;
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_1E389F648;
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_25();

    return v6();
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v5();
  }
}

uint64_t sub_1E389F648()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  *(v6 + 136) = v0;

  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E389F7A4()
{
  OUTLINED_FUNCTION_134();
  if (sub_1E4206504())
  {
    v1 = *(v0 + 120);
    v2 = sub_1E41FFC94();
    v3 = sub_1E4206814();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 120);
    if (v4)
    {
      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_58_11(v6, 5.7779e-34);
      OUTLINED_FUNCTION_53_15(&dword_1E323F000, v2, v3, "%@ Playback prefetch task canceled before timer was fired");
      sub_1E325F6F0(v6, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_15_12();

    return v7();
  }

  else
  {
    swift_unknownObjectWeakInit();
    sub_1E4206434();
    *(v0 + 144) = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_50();
    v10 = sub_1E42063B4();

    return MEMORY[0x1EEE6DFA0](sub_1E389F988, v10, v9);
  }
}

uint64_t sub_1E389F924()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E389F988()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E38A5080(*(v0 + 88));
  }

  MEMORY[0x1E69144A0](v0 + 64);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E389FA1C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_15_12();

  return v1();
}

double sub_1E389FA7C()
{
  v1 = v0;
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v3 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_56_10(v4);
  OUTLINED_FUNCTION_3_56();
  sub_1E3274A24(v5, v6, MEMORY[0x1E6969F18]);
  OUTLINED_FUNCTION_92_0();
  sub_1E4200844();

  v7 = OUTLINED_FUNCTION_74();
  v8(v7);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_cancellables, v10);
  sub_1E42004C4();
  swift_endAccess();

  return result;
}

double sub_1E389FC04()
{
  v1 = v0;
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v3 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_56_10(v4);
  OUTLINED_FUNCTION_3_56();
  sub_1E3274A24(v5, v6, MEMORY[0x1E6969F18]);
  OUTLINED_FUNCTION_92_0();
  sub_1E4200844();

  v7 = OUTLINED_FUNCTION_74();
  v8(v7);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_cancellables, v10);
  sub_1E42004C4();
  swift_endAccess();

  return result;
}

void sub_1E389FD84()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v52 = v12 - v11;
  v53 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v47 = v9;
    v48 = v6;
    v49 = v7;
    v50 = v2;
    v51 = v0;
    v23 = Strong;
    v24 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_49_0();
      v25 = OUTLINED_FUNCTION_26_22();
      *v6 = 138412546;
      *(v6 + 4) = v23;
      *v25 = v22;
      *(v6 + 12) = 2048;
      *(v6 + 14) = 0x3FF0000000000000;
      v26 = v23;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v27, v28, v29, v30, v6, 0x16u);
      sub_1E325F6F0(v25, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();
    }

    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v45 = sub_1E4206A04();
    sub_1E4204004();
    v31.n128_u64[0] = 1.0;
    sub_1E4204074(v31);
    v46 = *(v14 + 8);
    v46(v17, v53);
    OUTLINED_FUNCTION_4_0();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54[4] = sub_1E38A7F44;
    v54[5] = v32;
    OUTLINED_FUNCTION_25_7();
    v54[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v54[2] = v33;
    v54[3] = &block_descriptor_140;
    v34 = _Block_copy(v54);

    v35 = v52;
    sub_1E4203FE4();
    v54[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_59();
    sub_1E3274A24(v36, v37, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v38, v39, &qword_1E429B000, v40);
    v41 = v48;
    sub_1E42072E4();
    v42 = v45;
    MEMORY[0x1E69112E0](v20, v35, v41, v34);
    _Block_release(v34);

    v43 = OUTLINED_FUNCTION_74();
    v44(v43);
    (*(v47 + 8))(v35, v49);
    v46(v20, v53);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38A01C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v62 - v4;
  v6 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CC00, &unk_1E42A7BB0);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  PolicyVMa = _s28LivePostPlayShelfFetchPolicyVMa(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = (v20 - v19);
  if (sub_1E389D9E8())
  {
    v22 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchPolicy;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E37E93E8(v1 + v22, v16, &qword_1ECF2CC00, &unk_1E42A7BB0);
    if (__swift_getEnumTagSinglePayload(v16, 1, PolicyVMa) == 1)
    {
      sub_1E325F6F0(v16, &qword_1ECF2CC00, &unk_1E42A7BB0);
      v23 = v1;
      v24 = sub_1E41FFC94();
      v25 = sub_1E4206814();

      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_6_21();
        v26 = OUTLINED_FUNCTION_32_27();
        *v1 = 138412290;
        *(v1 + 1) = v23;
        *v26 = v23;
        v27 = v23;
        OUTLINED_FUNCTION_103_0(&dword_1E323F000, v24, v25, "%@ Not starting shelf prefetch as no shelf fetch policy is provided");
        sub_1E325F6F0(v26, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_7_9();
      }

      goto LABEL_23;
    }

    sub_1E38A7790(v16, v21);
    if (*v21 == 1)
    {
      if (v21[1] == 1)
      {
        sub_1E37E93E8(&v21[*(PolicyVMa + 24)], v5, &unk_1ECF28E20, &unk_1E42986D0);
        if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
        {
          v47 = OUTLINED_FUNCTION_24_4();
          v48(v47);
          sub_1E41FE5C4();
          sub_1E41FE4F4();
          v50 = v49;
          v51 = *(v8 + 8);
          v51(v11, v6);
          if (*&v50 >= 0.0)
          {
            sub_1E38A1028(v50, 0);
          }

          else
          {
            v52 = v1;
            v53 = sub_1E41FFC94();
            sub_1E4206814();

            if (OUTLINED_FUNCTION_51_11())
            {
              OUTLINED_FUNCTION_6_21();
              v54 = OUTLINED_FUNCTION_36_8();
              OUTLINED_FUNCTION_65_8(v54, 5.7779e-34);
              v55 = v52;
              OUTLINED_FUNCTION_20_34();
              _os_log_impl(v56, v57, v58, v59, v11, 0xCu);
              sub_1E325F6F0(v54, &unk_1ECF28E30, &qword_1E429E820);
              OUTLINED_FUNCTION_7_7();
              OUTLINED_FUNCTION_55();
            }

            OUTLINED_FUNCTION_8();
            (*(v60 + 168))();
            sub_1E38A0824();
          }

          v61 = OUTLINED_FUNCTION_39_3();
          (v51)(v61);
          goto LABEL_22;
        }

        sub_1E325F6F0(v5, &unk_1ECF28E20, &unk_1E42986D0);
        v33 = v1;
        v34 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_51_11())
        {
          OUTLINED_FUNCTION_6_21();
          v35 = OUTLINED_FUNCTION_9_44();
          OUTLINED_FUNCTION_55_11(5.7779e-34);
          *v36 = v33;
          v37 = v33;
          v40 = "%@ Not starting shelf prefetch as no prefetch date is provided";
LABEL_20:
          OUTLINED_FUNCTION_7_28(&dword_1E323F000, v38, v39, v40);
          sub_1E325F6F0(v35, &unk_1ECF28E30, &qword_1E429E820);
          OUTLINED_FUNCTION_21_0();
          OUTLINED_FUNCTION_65_0();
        }
      }

      else
      {
        v44 = v1;
        v34 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_51_11())
        {
          OUTLINED_FUNCTION_6_21();
          v35 = OUTLINED_FUNCTION_9_44();
          OUTLINED_FUNCTION_55_11(5.7779e-34);
          *v45 = v44;
          v46 = v44;
          v40 = "%@ Prefetch is disabled, will fetch shelf on demand";
          goto LABEL_20;
        }
      }
    }

    else
    {
      v41 = v1;
      v34 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_51_11())
      {
        OUTLINED_FUNCTION_6_21();
        v35 = OUTLINED_FUNCTION_9_44();
        OUTLINED_FUNCTION_55_11(5.7779e-34);
        *v42 = v41;
        v43 = v41;
        v40 = "%@ Not starting shelf prefetch as post play is disabled";
        goto LABEL_20;
      }
    }

LABEL_22:
    sub_1E38A77F4(v21);
LABEL_23:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v28 = v0;
  v62 = sub_1E41FFC94();
  v29 = sub_1E4206814();

  if (os_log_type_enabled(v62, v29))
  {
    OUTLINED_FUNCTION_6_21();
    v30 = OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_13_15(v30, 5.7779e-34);
    OUTLINED_FUNCTION_53_15(&dword_1E323F000, v62, v29, "%@ Not starting shelf prefetch timer as current media item is not a sporting event");
    sub_1E325F6F0(v30, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_51_2();
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E38A0824()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CC00, &unk_1E42A7BB0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v81 - v6;
  PolicyVMa = _s28LivePostPlayShelfFetchPolicyVMa(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = (v11 - v10);
  v13 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchPolicy;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37E93E8(v1 + v13, v7, &qword_1ECF2CC00, &unk_1E42A7BB0);
  if (__swift_getEnumTagSinglePayload(v7, 1, PolicyVMa) != 1)
  {
    v19 = OUTLINED_FUNCTION_16_0();
    sub_1E38A7790(v19, v20);
    if (*v12 == 1)
    {
      if ((v12[1] & 1) == 0)
      {
        v46 = &v12[*(PolicyVMa + 28)];
        v29 = *v46;
        v47 = v46[8];
        v48 = v1;
        v35 = sub_1E41FFC94();
        sub_1E4206814();

        v49 = OUTLINED_FUNCTION_51_11();
        if (v47)
        {
          if (!v49)
          {
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_6_21();
          v50 = OUTLINED_FUNCTION_11_41();
          OUTLINED_FUNCTION_58_11(v50, 5.7779e-34);
          OUTLINED_FUNCTION_20_34();
          OUTLINED_FUNCTION_53_15(v51, v52, v53, v54);
          sub_1E325F6F0(v50, &unk_1ECF28E30, &qword_1E429E820);
          goto LABEL_39;
        }

        if (!v49)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_49_0();
        v55 = OUTLINED_FUNCTION_36_8();
        OUTLINED_FUNCTION_65_8(v55, 5.778e-34);
        *(v47 + 12) = 2048;
        *(v47 + 14) = v29;
        v56 = v48;
        OUTLINED_FUNCTION_20_34();
        _os_log_impl(v57, v58, v59, v60, v47, 0x16u);
        sub_1E325F6F0(v55, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_7_7();
LABEL_26:
        OUTLINED_FUNCTION_6_0();
LABEL_27:

        goto LABEL_28;
      }

      v21 = v1;
      v22 = sub_1E41FFC94();
      v23 = sub_1E4206814();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_6_21();
        v25 = OUTLINED_FUNCTION_160();
        *v24 = 138412290;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&dword_1E323F000, v22, v23, "%@ Prefetch timestamp is invalid, trying to fetch shelf on demand", v24, 0xCu);
        sub_1E325F6F0(v25, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_7_7();
      }

      v28 = &v12[*(PolicyVMa + 32)];
      if (*(v28 + 6))
      {
        if (*v28)
        {
          v29 = *(v28 + 1);
          v30 = v28[16];
          v31 = *(v28 + 3);
          v32 = v28[32];
          if (sub_1E389D688(v3, 1, v27))
          {
            v34 = v21;
            v35 = sub_1E41FFC94();
            v36 = sub_1E4206814();

            v37 = os_log_type_enabled(v35, v36);
            if (v30)
            {
              if (v37)
              {
                OUTLINED_FUNCTION_6_21();
                v38 = OUTLINED_FUNCTION_11_41();
                *v1 = 138412290;
                *(v1 + 1) = v34;
                *v38 = v34;
                v39 = v34;
                OUTLINED_FUNCTION_53_15(&dword_1E323F000, v35, v36, "%@ Can't fetch shelf on demand cause fetch offset for game in progress is missing");
LABEL_38:
                sub_1E325F6F0(v38, &unk_1ECF28E30, &qword_1E429E820);
LABEL_39:
                OUTLINED_FUNCTION_6_0();
                goto LABEL_17;
              }

LABEL_18:

LABEL_19:
              sub_1E38A77F4(v12);
              goto LABEL_20;
            }

            if (!v37)
            {
              goto LABEL_27;
            }

            v67 = OUTLINED_FUNCTION_100();
            v68 = OUTLINED_FUNCTION_160();
            v69 = OUTLINED_FUNCTION_100();
            v81[0] = v69;
            *v67 = 138412802;
            *(v67 + 4) = v34;
            *v68 = v34;
            *(v67 + 12) = 2048;
            *(v67 + 14) = v29;
            *(v67 + 22) = 2080;
            v70 = v34;
            v71 = sub_1E3B3D050(v3);
            v73 = sub_1E3270FC8(v71, v72, v81);

            *(v67 + 24) = v73;
            _os_log_impl(&dword_1E323F000, v35, v36, "%@ using fetch offset - %f for playhead position - %s", v67, 0x20u);
            sub_1E325F6F0(v68, &unk_1ECF28E30, &qword_1E429E820);
            OUTLINED_FUNCTION_6_0();
            __swift_destroy_boxed_opaque_existential_1(v69);
            OUTLINED_FUNCTION_79();
            goto LABEL_26;
          }

          if (sub_1E389D688(v3, 2, v33) & 1) != 0 || (sub_1E389D688(v3, 3, v63))
          {
            v64 = v21;
            v35 = sub_1E41FFC94();
            v65 = sub_1E4206814();

            v66 = OUTLINED_FUNCTION_84_1();
            if (v32)
            {
              if (!v66)
              {
                goto LABEL_18;
              }

              OUTLINED_FUNCTION_6_21();
              v38 = OUTLINED_FUNCTION_11_41();
              OUTLINED_FUNCTION_58_11(v38, 5.7779e-34);
              OUTLINED_FUNCTION_53_15(&dword_1E323F000, v35, v65, "%@ Can't fetch shelf on demand cause fetch offset for game end is missing");
              goto LABEL_38;
            }

            if (v66)
            {
              OUTLINED_FUNCTION_100();
              v74 = OUTLINED_FUNCTION_36_8();
              v75 = OUTLINED_FUNCTION_100();
              v81[0] = v75;
              *v32 = 138412802;
              *(v32 + 4) = v64;
              *v74 = v64;
              *(v32 + 12) = 2048;
              *(v32 + 14) = v31;
              *(v32 + 22) = 2080;
              v76 = v64;
              v77 = sub_1E3B3D050(v3);
              v79 = sub_1E3270FC8(v77, v78, v81);

              *(v32 + 24) = v79;
              _os_log_impl(&dword_1E323F000, v35, v65, "%@ using fetch offset - %f for playhead position - %s", v32, 0x20u);
              sub_1E325F6F0(v74, &unk_1ECF28E30, &qword_1E429E820);
              OUTLINED_FUNCTION_79();
              __swift_destroy_boxed_opaque_existential_1(v75);
              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_55();
            }

            v29 = v31;
LABEL_28:
            sub_1E38A1028(v29, 0);
            goto LABEL_19;
          }

          v80 = v21;
          v35 = sub_1E41FFC94();
          sub_1E4206814();

          if (!OUTLINED_FUNCTION_67_5())
          {
            goto LABEL_18;
          }
        }

        else
        {
          v62 = v21;
          v35 = sub_1E41FFC94();
          sub_1E4206814();

          if (!OUTLINED_FUNCTION_67_5())
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v61 = v21;
        v35 = sub_1E41FFC94();
        sub_1E4206814();

        if (!OUTLINED_FUNCTION_67_5())
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v40 = v1;
      v35 = sub_1E41FFC94();
      sub_1E4206814();

      if (!OUTLINED_FUNCTION_67_5())
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_6_21();
    v41 = OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_54_7(v41, 5.7779e-34);
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_50_6(v42, v43, v44, v45);
    sub_1E325F6F0(v41, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_21_0();
LABEL_17:
    OUTLINED_FUNCTION_6_0();
    goto LABEL_18;
  }

  sub_1E325F6F0(v7, &qword_1ECF2CC00, &unk_1E42A7BB0);
  v14 = v1;
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_6_21();
    v17 = OUTLINED_FUNCTION_11_41();
    *v1 = 138412290;
    *(v1 + 1) = v14;
    *v17 = v14;
    v18 = v14;
    OUTLINED_FUNCTION_53_15(&dword_1E323F000, v15, v16, "%@ Not fetching shelf as no shelf fetch policy is provided");
    sub_1E325F6F0(v17, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_51_2();
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38A1028(void *a1, char a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41();
  v9 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchTask;
  v10 = *&v4[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchTask];
  if (v10)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E42064D4();
  }

  if (a2)
  {
    v28 = OUTLINED_FUNCTION_66_11(v4);
    v11 = sub_1E4206814();

    if (os_log_type_enabled(v28, v11))
    {
      v12 = OUTLINED_FUNCTION_6_21();
      v13 = OUTLINED_FUNCTION_160();
      *v12 = 138412290;
      *(v12 + 4) = a1;
      *v13 = a1;
      v14 = a1;
      OUTLINED_FUNCTION_102_6(&dword_1E323F000, v28, v11, "%@ Not fetching shelf as shelf fetch timer duration is not provided");
      sub_1E325F6F0(v13, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_95();
  }

  else
  {
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_4_0();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_56_10(v21);
    sub_1E4206434();

    v22 = sub_1E4206424();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v10;
    v23[5] = a1;

    v25 = OUTLINED_FUNCTION_23_7();
    *&v4[v9] = sub_1E37748D8(v25, v26, v3, v27, v23);

    OUTLINED_FUNCTION_95();
  }
}

uint64_t sub_1E38A1270()
{
  OUTLINED_FUNCTION_24();
  v0[6] = v1;
  v0[5] = v2;
  v3 = sub_1E42075E4();
  v0[7] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v0[10] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[11] = v6;
  v0[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E38A1348, v6, v5);
}

uint64_t sub_1E38A1348()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[13] = Strong;
  if (Strong)
  {
    v4 = Strong;
    v1[14] = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger[0];
    v5 = OUTLINED_FUNCTION_66_11(Strong);
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      v6 = v1[6];
      OUTLINED_FUNCTION_49_0();
      v7 = OUTLINED_FUNCTION_26_22();
      *v2 = 138412546;
      *(v2 + 4) = v0;
      *v7 = v4;
      *(v2 + 12) = 2048;
      *(v2 + 14) = v6;
      v8 = v0;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
      sub_1E325F6F0(v7, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    sub_1E4207CA4();
    sub_1E4207AA4();
    OUTLINED_FUNCTION_40_4(&dword_1E42A6EA8);
    v18 = v14;
    v15 = swift_task_alloc();
    v1[15] = v15;
    *v15 = v1;
    v15[1] = sub_1E38A1534;
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_25();

    return v18();
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v17();
  }
}

uint64_t sub_1E38A1534()
{
  OUTLINED_FUNCTION_134();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  v5 = OUTLINED_FUNCTION_24_4();
  v6(v5);
  v7 = *(v2 + 96);
  v8 = *(v2 + 88);
  if (v0)
  {
    v9 = sub_1E38A1840;
  }

  else
  {
    v9 = sub_1E38A16BC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E38A16BC()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 104);

  v2 = sub_1E4206504();
  v3 = v1;
  v4 = sub_1E41FFC94();
  sub_1E4206814();

  v5 = OUTLINED_FUNCTION_85_5();
  if (v2)
  {
    v6 = *(v0 + 104);
    if (v5)
    {
      OUTLINED_FUNCTION_6_21();
      v7 = OUTLINED_FUNCTION_9_44();
      v6 = OUTLINED_FUNCTION_33_23(v7, 5.7779e-34);
      OUTLINED_FUNCTION_71_10();
      OUTLINED_FUNCTION_50_6(v8, v9, v10, v11);
      sub_1E325F6F0(v7, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }
  }

  else
  {
    if (v5)
    {
      v12 = *(v0 + 104);
      v13 = OUTLINED_FUNCTION_6_21();
      v14 = OUTLINED_FUNCTION_160();
      *v13 = 138412290;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      OUTLINED_FUNCTION_71_10();
      OUTLINED_FUNCTION_102_6(v16, v17, v18, v19);
      sub_1E325F6F0(v14, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }

    v6 = *(v0 + 104);

    sub_1E38A18AC();
  }

  OUTLINED_FUNCTION_15_12();

  return v20();
}

uint64_t sub_1E38A1840()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E38A18AC()
{
  v2 = v0;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 appController];

  if (v4 && (v5 = [v4 appContext], v4, v5))
  {
    v6 = *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player];
    if ([v6 currentMediaItem] && (v7 = swift_getObjectType(), v8 = *MEMORY[0x1E69D5AE8], swift_unknownObjectRetain(), v9 = MEMORY[0x1E69E6158], sub_1E4123588(v7, MEMORY[0x1E69E6158]), sub_1E4123590(v8, v9, &v70), swift_unknownObjectRelease(), (v1 = v71) != 0))
    {
      oslog = v5;
      v10 = v70;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = MEMORY[0x1E69E6158];
      sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
      sub_1E4123590(@"VUIMediaItemMetadataPlayablePassThrough", v12, &v70);
      swift_unknownObjectRelease();
      v13 = v71;
      if (v71)
      {
        v66 = v6;
        v14 = v70;
        swift_unknownObjectRetain();
        sub_1E4123588(ObjectType, v9);
        sub_1E4123590(@"VUIMediaItemMetadataKeyBroadcastLocale", v9, &v70);
        swift_unknownObjectRelease();
        v15 = v70;
        v16 = v71;
        v17 = objc_allocWithZone(VUIDocumentContextDataLivePostPlay);
        v18 = sub_1E38A666C(v10, v1, v14, v13, v15, v16);
        sub_1E3280A90(0, &qword_1EE23B0D0, off_1E87282E8);
        sub_1E4205F14();
        v19 = sub_1E38A1F34();
        v20 = sub_1E4205F14();
        sub_1E37FB7F0(v20, v21, v19, &selRef_setDocumentType_);
        v22 = sub_1E4205F14();
        sub_1E37FB7F0(v22, v23, v19, &selRef_setControllerRef_);
        [v19 setShouldLoadPageImmediately_];
        [v19 setContextData_];
        v24 = [objc_opt_self() sharedInstance];
        v25 = [v24 viewControllerWithDocumentDataSource:v19 appContext:oslog];

        if (v25)
        {
          type metadata accessor for LivePostPlayDocumentViewController(0);
          v26 = swift_dynamicCastClass();
          if (!v26)
          {
          }
        }

        else
        {
          v26 = 0;
        }

        v52 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController;
        v53 = *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController];
        *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController] = v26;
        v54 = v26;

        if (v26)
        {
          v55 = [v66 currentMediaItem];
          if (v55)
          {
            v56 = swift_getObjectType();
            v67 = v18;
            v57 = *MEMORY[0x1E69D5DC0];
            sub_1E4123588(v56, MEMORY[0x1E69E6158]);
            v58 = v57;
            v18 = v67;
            sub_1E4123590(v58, MEMORY[0x1E69E6158], &v70);
            swift_unknownObjectRelease();
            v55 = v70;
            v59 = v71;
          }

          else
          {
            v59 = 0;
          }

          (*((*MEMORY[0x1E69E7D40] & *v54) + 0x6B0))(v55, v59);
        }

        if (*&v2[v52])
        {
          OUTLINED_FUNCTION_88_0();
          v61 = *(v60 + 1688);
          v63 = v62;
          v64 = v2;
          v61(v2, &off_1F5D60F68);
        }
      }

      else
      {

        v44 = v2;
        v45 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_51_11())
        {
          OUTLINED_FUNCTION_6_21();
          v46 = OUTLINED_FUNCTION_26_22();
          *v1 = 138412290;
          *(v1 + 4) = v44;
          *v46 = v44;
          v47 = v44;
          OUTLINED_FUNCTION_20_34();
          _os_log_impl(v48, v49, v50, v51, v1, 0xCu);
          sub_1E325F6F0(v46, &unk_1ECF28E30, &qword_1E429E820);
          OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_21_0();
        }
      }
    }

    else
    {
      v36 = v2;
      v37 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_51_11())
      {
        OUTLINED_FUNCTION_6_21();
        v38 = OUTLINED_FUNCTION_26_22();
        *v1 = 138412290;
        *(v1 + 4) = v36;
        *v38 = v36;
        v39 = v36;
        OUTLINED_FUNCTION_20_34();
        _os_log_impl(v40, v41, v42, v43, v1, 0xCu);
        sub_1E325F6F0(v38, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_21_0();
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v27 = v2;
    osloga = sub_1E41FFC94();
    v28 = sub_1E4206814();

    if (os_log_type_enabled(osloga, v28))
    {
      OUTLINED_FUNCTION_6_21();
      v29 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v29, 5.7779e-34);
      OUTLINED_FUNCTION_19_30(&dword_1E323F000, v30, v31, "%@ Cannot create live post play shelf because appContext is missing", v32, v33, v34, v35, v65, osloga);
      sub_1E325F6F0(v29, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_51_2();
    }
  }
}

id sub_1E38A1F34()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithDocumentRef_];

  return v2;
}

void sub_1E38A1FA8()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  (*(v2 + 168))();
  v3 = sub_1E38A5720();
  v4 = sub_1E38A5778();
  v5 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView;
  v6 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView);
  if (v6)
  {
    [v6 bounds];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  type metadata accessor for LayoutGrid();
  v9 = sub_1E3A2579C(v8);
  v10 = sub_1E3A24FDC(v9);
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (!v12)
  {
    v13 = *(v1 + v5);
    v16 = 0.0;
    if (v13)
    {
      [v13 bounds];
      v18 = v17;
      v13 = *(v1 + v5);
      if (v13)
      {
        v13 = [v13 bounds];
        v16 = v19;
      }
    }

    else
    {
      v18 = 0.0;
    }

    v10 = v18 < v16;
  }

  v20 = OUTLINED_FUNCTION_83_3(v13, v14, v15);
  if ((v20 & 1) == 0 && (v20 = OUTLINED_FUNCTION_101_1(v20, v21, v22), (v20 & 1) == 0) || !*(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController))
  {
    v31 = OUTLINED_FUNCTION_83_3(v20, v21, v22);
    if ((v31 & 1) == 0)
    {
      OUTLINED_FUNCTION_101_1(v31, v32, v33);
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_88_0();
  v24 = *(v23 + 1896);
  v26 = v25;
  v27 = v24();

  if (v3 & v4 & 1) == 0 || (*(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerControlsOrTabsVisible) & 1) != 0 || (v27 & 1) != 0 || (v10)
  {
LABEL_21:
    OUTLINED_FUNCTION_87();
    if ((*(v34 + 456))())
    {
      sub_1E38A32E8(0);
    }

    OUTLINED_FUNCTION_54_0();

    sub_1E38A22F8(v35);
    return;
  }

  v37 = OUTLINED_FUNCTION_83_3(v28, v29, v30);
  if ((v37 & 1) == 0 || *(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_gameEndShelfAlreadyDisplayed) == 1)
  {
    v40 = OUTLINED_FUNCTION_101_1(v37, v38, v39);
    if ((v40 & 1) == 0 || *(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_broadcastEndShelfAlreadyDisplayed) == 1)
    {
      OUTLINED_FUNCTION_83_3(v40, v41, v42);
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_87();
  if ((*(v43 + 456))())
  {
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    OUTLINED_FUNCTION_54_0();

    sub_1E38A26C8();
  }
}

void sub_1E38A22F8(char a1)
{
  v3 = v1;
  oslog = sub_1E41FFC94();
  v4 = sub_1E4206814();

  v5 = os_log_type_enabled(oslog, v4);
  switch(a1)
  {
    case 1:
      if (v5)
      {
        OUTLINED_FUNCTION_6_21();
        v31 = OUTLINED_FUNCTION_11_41();
        OUTLINED_FUNCTION_13_15(v31, 5.7779e-34);
        OUTLINED_FUNCTION_19_30(&dword_1E323F000, v32, v33, "%@ Not showing shelf because it is not fetched yet", v34, v35, v36, v37, v39, oslog);
        sub_1E325F6F0(v31, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_51_2();
      }

      OUTLINED_FUNCTION_21_6();
      (*(v38 + 168))();
      sub_1E38A0824();
      return;
    case 2:
      if (v5)
      {
        OUTLINED_FUNCTION_6_21();
        v14 = OUTLINED_FUNCTION_11_41();
        OUTLINED_FUNCTION_13_15(v14, 5.7779e-34);
        OUTLINED_FUNCTION_19_30(&dword_1E323F000, v15, v16, "%@ Not showing shelf because shelf is empty", v17, v18, v19, v20, v39, oslog);
        sub_1E325F6F0(v14, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_51_2();
      }

      OUTLINED_FUNCTION_21_6();
      v22 = (*(v21 + 168))();
      if ((sub_1E389D688(v22, 3, v23) & 1) != 0 && (*(v3 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_didEnterStreamInBroadcastEndRange) & 1) == 0 && (sub_1E38A5720() & 1) != 0 && sub_1E38A5778())
      {
        sub_1E38A42FC();
      }

      return;
    case 3:
      if (v5)
      {
        OUTLINED_FUNCTION_6_21();
        v24 = OUTLINED_FUNCTION_11_41();
        OUTLINED_FUNCTION_13_15(v24, 5.7779e-34);
        OUTLINED_FUNCTION_19_30(&dword_1E323F000, v25, v26, "%@ Waiting for player controls or tabs to dismiss before showing post play shelf", v27, v28, v29, v30, v39, oslog);
        sub_1E325F6F0(v24, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_51_2();
      }

      *(v3 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss) = 1;
      return;
    case 4:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because play head is not in event end or broadcast end range";
      break;
    case 5:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because playback is not fullscreen";
      break;
    case 6:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because player is not active player";
      break;
    case 7:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because playhead is still in game end range and we have already diplayed that shelf";
      break;
    case 8:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because playhead is still in broadcast end range and we have already diplayed that shelf";
      break;
    case 9:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because playback view width is too narrow";
      break;
    default:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Unknown shelf display failure reason, returning early";
      break;
  }

  OUTLINED_FUNCTION_19_30(&dword_1E323F000, v7, v8, v13, v9, v10, v11, v12, v39, oslog);
  sub_1E325F6F0(v6, &unk_1ECF28E30, &qword_1E429E820);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_51_2();
LABEL_31:
}

void sub_1E38A26C8()
{
  v7 = v0;
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))())
  {
    oslogb = OUTLINED_FUNCTION_66_11(v0);
    LOBYTE(v0) = sub_1E4206814();

    if (OUTLINED_FUNCTION_82_5(v8, v9, v10, v11, v12, v13, v14, v15, oslogb))
    {
      OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_32_27();
      OUTLINED_FUNCTION_79_8(v16, 5.7779e-34);
      v17 = "%@ Live post play shelf is already being displayed";
LABEL_17:
      OUTLINED_FUNCTION_103_0(&dword_1E323F000, oslog, v0, v17);
      sub_1E325F6F0(v16, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_9();
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_21_6();
  v19 = (*(v18 + 168))();
  if ((sub_1E389D688(v19, 2, v20) & 1) == 0 && (sub_1E389D688(v19, 3, v21) & 1) == 0)
  {
    oslogd = OUTLINED_FUNCTION_66_11(v0);
    LOBYTE(v0) = sub_1E4206814();

    if (OUTLINED_FUNCTION_82_5(v41, v42, v43, v44, v45, v46, v47, v48, oslogd))
    {
      OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_32_27();
      OUTLINED_FUNCTION_79_8(v16, 5.7779e-34);
      v17 = "%@ Playhead position is not in any end range, unable to show live post play shelf";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v22 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController);
  if (!v22)
  {
    oslogc = OUTLINED_FUNCTION_66_11(v7);
    v0 = sub_1E4206814();

    if (OUTLINED_FUNCTION_82_5(v33, v34, v35, v36, v37, v38, v39, v40, oslogc))
    {
      OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_32_27();
      OUTLINED_FUNCTION_79_8(v16, 5.7779e-34);
      v17 = "%@ Unable to show list post play shelf because shelfViewController is nil";
      goto LABEL_17;
    }

LABEL_18:
    OUTLINED_FUNCTION_96_5();

    return;
  }

  v23 = *&v7[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView];
  if (!v23)
  {
    v51 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger[0];
    v52 = v22;
    v53 = v7;
    osloge = sub_1E41FFC94();
    v54 = sub_1E4206814();

    if (OUTLINED_FUNCTION_82_5(v55, v56, v57, v58, v59, v60, v61, v62, osloge))
    {
      OUTLINED_FUNCTION_6_21();
      v63 = OUTLINED_FUNCTION_9_44();
      *v51 = 138412290;
      *(v51 + 4) = v53;
      *v63 = v7;
      v64 = v53;
      OUTLINED_FUNCTION_50_6(&dword_1E323F000, osloga, v54, "%@ Unable to show live post play shelf because presentationView is nil");
      sub_1E325F6F0(v63, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    goto LABEL_18;
  }

  v24 = *&v7[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerViewController];
  if (!v24)
  {
    v23;
    v65 = v22;
    v66 = v7;
    v67 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      OUTLINED_FUNCTION_6_21();
      v68 = OUTLINED_FUNCTION_26_22();
      *v2 = 138412290;
      *(v2 + 4) = v66;
      *v68 = v7;
      v69 = v66;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
      sub_1E325F6F0(v68, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    goto LABEL_18;
  }

  v25 = v24;
  v26 = v23;
  v27 = v22;
  [v26 frame];
  OUTLINED_FUNCTION_3();
  v28 = v27;
  v29 = [v28 vuiParentViewController];
  if (!v29)
  {
    [v25 vui:v28 addChildViewController:?];
    v75 = OUTLINED_FUNCTION_100_1();
    if (v75)
    {
      v76 = v75;
      OUTLINED_FUNCTION_97_7(v75, sel_setFrame_);

      v77 = OUTLINED_FUNCTION_100_1();
      [v26 vui:v77 addSubview:0 oldView:?];

      [v28 vui:v25 didMoveToParentViewController:?];
      goto LABEL_29;
    }

LABEL_38:
    __break(1u);
    return;
  }

  v30 = OUTLINED_FUNCTION_100_1();
  if (!v30)
  {
    __break(1u);
    goto LABEL_37;
  }

  v31 = v30;
  OUTLINED_FUNCTION_97_7(v30, sel_setFrame_);

  v32 = OUTLINED_FUNCTION_100_1();
  if (!v32)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v32 setHidden_];

LABEL_29:
  v78 = sub_1E389D8C4();
  if (v78)
  {
    v79 = v78;
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    sub_1E404B22C();
  }

  v80 = v7;
  v81 = sub_1E41FFC94();
  v82 = sub_1E4206814();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = OUTLINED_FUNCTION_6_21();
    v84 = OUTLINED_FUNCTION_160();
    *v83 = 138412290;
    *(v83 + 4) = v80;
    *v84 = v7;
    v85 = v80;
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v86, v87, "%@ Show live post play shelf");
    sub_1E325F6F0(v84, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79();
  }

  v89 = sub_1E389D688(v19, 2, v88);
  v90 = 5;
  if (v89)
  {
    v90 = 4;
  }

  v80[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger[v90]] = 1;
  v91 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf;
  swift_beginAccess();
  v80[v91] = 1;
  v92 = objc_opt_self();
  OUTLINED_FUNCTION_89();
  v93 = swift_allocObject();
  v93[2] = v28;
  v93[3] = v3;
  v93[4] = v4;
  v93[5] = v5;
  v93[6] = v6;
  v109 = sub_1E38A7370;
  v110 = v93;
  aBlock = MEMORY[0x1E69E9820];
  v106 = 1107296256;
  v107 = sub_1E378AEA4;
  v108 = &block_descriptor_96;
  v94 = _Block_copy(&aBlock);
  v95 = v28;

  OUTLINED_FUNCTION_4_0();
  v96 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v97 = swift_allocObject();
  *(v97 + 16) = v96;
  *(v97 + 24) = v19;
  v109 = sub_1E38A747C;
  v110 = v97;
  aBlock = MEMORY[0x1E69E9820];
  v106 = 1107296256;
  v107 = sub_1E37EB82C;
  v108 = &block_descriptor_103;
  v98 = _Block_copy(&aBlock);

  [v92 vui:v94 animateWithDuration:v98 animations:1.0 completion:?];
  _Block_release(v98);
  _Block_release(v94);

  OUTLINED_FUNCTION_96_5();
}
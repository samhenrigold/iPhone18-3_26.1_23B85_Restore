void sub_1D7F47614(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = objc_opt_self();
    v6 = &selRef_blackColor;
    if (!v2)
    {
      v6 = &selRef_systemBackgroundColor;
    }

    sub_1D7F46B30([v5 *v6]);
  }
}

void sub_1D7F476A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___TSCardContainerController_dimmingAlpha;
    swift_beginAccess();
    *&v4[v5] = v2;
    sub_1D7F46BF0();
  }
}

id CardContainerController.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithCoder_];

  return v1;
}

void CardContainerController.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___TSCardContainerController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR___TSCardContainerController_transitionManager;
  type metadata accessor for ViewControllerTransitionManager();
  OUTLINED_FUNCTION_0_8();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC8];
  *(v1 + v2) = v3;
  *(v3 + 16) = v4;
  v5 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
  if (qword_1EDBB0B40 != -1)
  {
    OUTLINED_FUNCTION_35_1();
    swift_once();
  }

  memmove((v1 + v5), &qword_1EDBB0B48, 0x49uLL);
  v6 = OBJC_IVAR___TSCardContainerController_dimmingColor;
  *(v1 + v6) = [objc_opt_self() blackColor];
  *(v1 + OBJC_IVAR___TSCardContainerController_dimmingAlpha) = 0;
  type metadata accessor for CardContainerController.CardItem();
  sub_1D818F9D4();
  v7 = OBJC_IVAR___TSCardContainerController_dimmingView;
  v8 = objc_allocWithZone(type metadata accessor for CardDimmingView());
  *(v1 + v7) = OUTLINED_FUNCTION_4(v8, sel_initWithFrame_);
  v9 = OBJC_IVAR___TSCardContainerController_eventManager;
  OUTLINED_FUNCTION_7_21();
  sub_1D7E25D58(0, v10, v11, v12, MEMORY[0x1E69D6460]);
  swift_allocObject();
  *(v1 + v9) = sub_1D818EF74();
  sub_1D81923A4();
  __break(1u);
}

void sub_1D7F47944()
{
  OUTLINED_FUNCTION_86();
  v15 = v1;
  v16 = v2;
  OUTLINED_FUNCTION_68_2();
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  v3 = sub_1D8191E44();
  v4 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_62_2(v4))
  {
    v5 = OUTLINED_FUNCTION_55_1();
    v6 = OUTLINED_FUNCTION_61();
    v14[0] = v6;
    *v5 = 136315138;
    v7 = 0xEA00000000006E65;
    v8 = OUTLINED_FUNCTION_5_18();
    switch(v0)
    {
      case 1:
        v7 = 0xE800000000000000;
        v8 = OUTLINED_FUNCTION_4_25();
        break;
      case 2:
        v7 = 0xE900000000000064;
        v8 = OUTLINED_FUNCTION_16_0() & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
        break;
      case 3:
        v8 = OUTLINED_FUNCTION_48_2();
        break;
      case 4:
        v7 = 0xE400000000000000;
        v8 = 1701736302;
        break;
      default:
        break;
    }

    v9 = sub_1D7E1C3D8(v8, v7, v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_81_0(&dword_1D7DFF000, v10, v11, "CardContainer willTransitionTo interactiveState: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v12 = OUTLINED_FUNCTION_14_0();
    v13(v12);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_87();
}

void sub_1D7F47AE4()
{
  OUTLINED_FUNCTION_86();
  v15 = v1;
  v16 = v2;
  OUTLINED_FUNCTION_68_2();
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  v3 = sub_1D8191E44();
  v4 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_62_2(v4))
  {
    v5 = OUTLINED_FUNCTION_55_1();
    v6 = OUTLINED_FUNCTION_61();
    v14[0] = v6;
    *v5 = 136315138;
    v7 = 0xEA00000000006E65;
    v8 = OUTLINED_FUNCTION_5_18();
    switch(v0)
    {
      case 1:
        v7 = 0xE800000000000000;
        v8 = OUTLINED_FUNCTION_4_25();
        break;
      case 2:
        v7 = 0xE900000000000064;
        v8 = OUTLINED_FUNCTION_16_0() & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
        break;
      case 3:
        v8 = OUTLINED_FUNCTION_48_2();
        break;
      case 4:
        v7 = 0xE400000000000000;
        v8 = 1701736302;
        break;
      default:
        break;
    }

    v9 = sub_1D7E1C3D8(v8, v7, v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_81_0(&dword_1D7DFF000, v10, v11, "CardContainer didTransitionTo interactiveState: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v12 = OUTLINED_FUNCTION_14_0();
    v13(v12);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_87();
}

void sub_1D7F47C84()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  v40 = v5;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v6, v7, MEMORY[0x1E69D6AD8]);
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_5();
  v13 = *v4;
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  v14 = sub_1D8191E44();
  v15 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_62_2(v15))
  {
    v16 = v2;
    v17 = OUTLINED_FUNCTION_55_1();
    v18 = OUTLINED_FUNCTION_61();
    v43[0] = v18;
    *v17 = 136315138;
    v19 = 0xEA00000000006E65;
    v20 = OUTLINED_FUNCTION_5_18();
    switch(v13)
    {
      case 1:
        v19 = 0xE800000000000000;
        v20 = OUTLINED_FUNCTION_4_25();
        break;
      case 2:
        v21 = OUTLINED_FUNCTION_16_0();
        goto LABEL_7;
      case 3:
        v22 = OUTLINED_FUNCTION_44_2();
        goto LABEL_11;
      case 4:
        v21 = OUTLINED_FUNCTION_45_2();
LABEL_7:
        v20 = OUTLINED_FUNCTION_42_3(v21);
        break;
      case 5:
        v22 = OUTLINED_FUNCTION_43_4();
LABEL_11:
        v20 = v22 | 0x6C616900000000;
        break;
      case 6:
        v20 = OUTLINED_FUNCTION_18_9();
        break;
      case 7:
        v20 = OUTLINED_FUNCTION_29_4();
        break;
      default:
        break;
    }

    v23 = sub_1D7E1C3D8(v20, v19, v43);

    *(v17 + 4) = v23;
    OUTLINED_FUNCTION_36_4(&dword_1D7DFF000, v24, v25, "CardContainer willTransitionTo presentationState: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    v2 = v16;
  }

  else
  {
  }

  type metadata accessor for CardViewAnimationCoordinator();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v28 = v2 + OBJC_IVAR___TSCardContainerController_delegate;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      swift_getObjectType();
      OUTLINED_FUNCTION_50_1();
      v30 = *(v29 + 24);
      v32 = v31;
      v30(v27, &protocol witness table for CardViewAnimationCoordinator, &v41, v28, v29);
      v11 = v1;
      v1 = v39;
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v40;
    }

    v34 = OUTLINED_FUNCTION_69_1();
    sub_1D7F47FDC(v34, v35, v36);
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v37 = OUTLINED_FUNCTION_66_2();
    v38(v37);
    sub_1D818F974();
    (*(v11 + 8))(v1, v9);
    if (v42)
    {
      if (*(v42 + 32) == v27)
      {
        OUTLINED_FUNCTION_59_2();
      }
    }

    OUTLINED_FUNCTION_100();
  }

  else
  {
    OUTLINED_FUNCTION_40_2();
    __break(1u);
  }
}

void sub_1D7F47FDC(uint64_t a1, char *a2, double a3)
{
  v4 = v3;
  sub_1D7F52DC4(0, a3);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  sub_1D7F52E60(0, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
  v52 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v18 = v17;
  v55 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - v19;
  v21 = *a2;
  v54 = a1;
  v53 = sub_1D7F50440(a1);
  if (v53)
  {
    v23 = v22;
    v57 = [objc_opt_self() areAnimationsEnabled];
    v51 = v21;
    v56 = v4;
    if (((1 << v21) & 0xDC) != 0)
    {
      v50 = v8;
      v24 = OBJC_IVAR___TSCardContainerController_cardItemStack;
      swift_beginAccess();
      (*(v55 + 16))(v20, v4 + v24, v18);
      if (v23 < 0)
      {
        __break(1u);
      }

      else
      {
        v58 = 0;
        v59 = v23;
        sub_1D7F523A4(&qword_1EDBB1FD0);
        sub_1D8191724();
        sub_1D81917B4();
        if (v64 >= v65)
        {
          v66 = v65;
          v67 = v64;
          sub_1D8191764();
          (*(v55 + 32))(&v16[*(v52 + 40)], v20, v18);
          *v16 = 0;
          *(v16 + 1) = v23;
          sub_1D7F766CC();
          sub_1D7F530BC(v16, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
          v25 = v56;
          sub_1D7F4B804(&v60);

          if (v60 - 2 >= 6)
          {
            v4 = v56;
          }

          else
          {
            swift_beginAccess();
            v26 = *(v25 + OBJC_IVAR___TSCardContainerController_rootViewController);
            LOBYTE(v58) = 0;

            ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v26, &v58, v57);

            ViewControllerTransitionManager.endTransition(viewController:)(v26);

            v4 = v25;
          }

LABEL_10:
          v28 = v51;
          if (((1 << v51) & 0xD4) == 0)
          {
            if (((1 << v51) & 0xB) == 0)
            {

              return;
            }

            v30 = OBJC_IVAR___TSCardContainerController_transitionManager;
            swift_beginAccess();
            v54 = v30;
            LOBYTE(v58) = 0;

            ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v53, &v58, v57);

            v31 = OBJC_IVAR___TSCardContainerController_cardItemStack;
            swift_beginAccess();
            (*(v55 + 16))(&v13[*(v52 + 40)], v4 + v31, v18);
            if ((v23 & 0x8000000000000000) == 0)
            {
              v58 = 0;
              v59 = v23;
              sub_1D7F523A4(&qword_1EDBB1FD0);
              sub_1D8191724();
              sub_1D81917B4();
              v32 = v50;
              if (v62 >= v63)
              {
                v60 = v63;
                v61 = v62;
                sub_1D8191764();
                *v13 = 0;
                *(v13 + 1) = v23;
                v33 = *(v32 + 36);
                *&v13[v33] = 0;
                if (v23)
                {
                  v34 = 0;
                  v35 = qword_1D81A6BD0[v28];
                  do
                  {
                    v60 = v34;
                    v58 = 0;
                    v59 = v23;
                    sub_1D8191754();
                    v36 = sub_1D81918F4();
                    v38 = *v37;

                    v36(&v58, 0);
                    sub_1D81917C4();

                    sub_1D818F154();

                    if (v35 >= qword_1D81A6BF0[v58])
                    {
                      v39 = *(v38 + 16);
                      LOBYTE(v58) = 1;

                      ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v39, &v58, v57);
                    }

                    v34 = *&v13[v33];
                  }

                  while (v34 != v23);
                }

                v41 = v13;
                goto LABEL_34;
              }

LABEL_45:
              __break(1u);
              return;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          sub_1D818F154();
          if (v28 == 2 && v58 == 5)
          {
            swift_beginAccess();
            LOBYTE(v64) = 0;
          }

          else
          {
            swift_beginAccess();
            LOBYTE(v64) = 1;
          }

          ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v53, &v64, v57);

          v42 = OBJC_IVAR___TSCardContainerController_cardItemStack;
          swift_beginAccess();
          (*(v55 + 16))(&v10[*(v52 + 40)], v4 + v42, v18);
          if ((v23 & 0x8000000000000000) == 0)
          {
            v58 = 0;
            v59 = v23;
            sub_1D7F523A4(&qword_1EDBB1FD0);
            sub_1D8191724();
            sub_1D81917B4();
            if (v62 >= v63)
            {
              v60 = v63;
              v61 = v62;
              sub_1D8191764();
              *v10 = 0;
              *(v10 + 1) = v23;
              v43 = *(v50 + 36);
              *&v10[v43] = 0;
              if (v23)
              {
                v55 = OBJC_IVAR___TSCardContainerController_transitionManager;
                swift_beginAccess();
                for (i = 0; i != v23; i = *&v10[v43])
                {
                  v63 = i;
                  v58 = 0;
                  v59 = v23;
                  sub_1D8191754();
                  v45 = sub_1D81918F4();
                  v47 = *v46;

                  v45(&v58, 0);
                  sub_1D81917C4();

                  sub_1D818F154();

                  switch(v58)
                  {
                    case 2:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                      break;
                    default:
                      v48 = *(v47 + 16);
                      LOBYTE(v58) = 0;

                      ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v48, &v58, v57);

                      break;
                  }
                }
              }

              v41 = v10;
LABEL_34:
              sub_1D7F5302C(v41, v40);
              return;
            }

            goto LABEL_43;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    if (((1 << v21) & 3) != 0)
    {
      v50 = v8;
      swift_beginAccess();
      v27 = *(v4 + OBJC_IVAR___TSCardContainerController_rootViewController);
      LOBYTE(v58) = 1;

      ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v27, &v58, v57);

      goto LABEL_10;
    }

    v49 = v53;
  }
}

id sub_1D7F48A54(unsigned __int8 *a1, uint64_t a2, char a3)
{
  sub_1D7F4C4EC(v3, *a1);
  v7 = v6;
  result = [v3 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v9 = result;
  [result bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v70.origin.x = v11;
  v70.origin.y = v13;
  v70.size.width = v15;
  v70.size.height = v17;
  Height = CGRectGetHeight(v70);
  result = [v3 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = result;
  v20 = Height - v7;
  [result safeAreaInsets];
  v22 = v21;

  v23 = v20 - v22;
  if ((a3 & 1) == 0)
  {
    v24 = &v3[OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions];
    swift_beginAccess();
    v25 = *(v24 + 4);
    v26 = v24[40];
    result = [v3 view];
    if (result)
    {
      v27 = result;
      v69 = v23;
      [result bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      result = [v3 view];
      if (result)
      {
        v36 = result;
        v37 = *&a2;
        [result layoutMargins];
        v39 = v38;
        v41 = v40;

        v71.origin.x = v29;
        v71.origin.y = v31;
        v71.size.width = v33;
        v71.size.height = v35;
        v42 = CGRectGetHeight(v71);
        if (v26 >> 6)
        {
          if (v26 >> 6 == 1)
          {
            v43 = 0.0;
            if (v26)
            {
              v43 = v41;
            }

            v44 = v43 + v25;
          }

          else
          {
            v73.origin.x = v29;
            v73.origin.y = v31;
            v73.size.width = v33;
            v73.size.height = v35;
            v44 = CGRectGetHeight(v73) * v25;
          }
        }

        else
        {
          v72.origin.x = v29;
          v72.origin.y = v31;
          v72.size.width = v33;
          v72.size.height = v35;
          v45 = CGRectGetHeight(v72);
          v46 = 0.0;
          if (v26)
          {
            v46 = v39;
          }

          v44 = v45 - v25 - v46;
        }

        v47 = v42 - v44;
        if (v47 <= *&a2)
        {
          v37 = v47;
        }

        result = [v3 view];
        if (result)
        {
          v48 = result;
          [result bounds];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          v74.origin.x = v50;
          v74.origin.y = v52;
          v74.size.width = v54;
          v74.size.height = v56;
          v57 = CGRectGetHeight(v74);
          result = [v3 view];
          if (result)
          {
            v58 = result;
            v59 = v57 - v37;
            [result safeAreaInsets];
            v61 = v60;

            v62 = v59 - v61;
            v23 = v69;
            if (v62 < v69)
            {
              v23 = v62;
            }

            goto LABEL_21;
          }

LABEL_35:
          __break(1u);
          return result;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_21:
  v63 = *&v3[OBJC_IVAR___TSCardContainerController_rootViewController];
  result = [v63 additionalSafeAreaInsets];
  if (v67 != 0.0)
  {
    return [v63 setAdditionalSafeAreaInsets_];
  }

  v68 = v64 == 0.0 && v65 == v23;
  if (!v68 || v66 != 0.0)
  {
    return [v63 setAdditionalSafeAreaInsets_];
  }

  return result;
}

void sub_1D7F48D94()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  v41 = v5;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v6, v7, MEMORY[0x1E69D6AD8]);
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_5();
  v13 = *v4;
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  v14 = sub_1D8191E44();
  v15 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_62_2(v15))
  {
    v16 = v2;
    v17 = OUTLINED_FUNCTION_55_1();
    v18 = OUTLINED_FUNCTION_61();
    v44[0] = v18;
    *v17 = 136315138;
    v19 = 0xEA00000000006E65;
    v20 = OUTLINED_FUNCTION_5_18();
    switch(v13)
    {
      case 1:
        v19 = 0xE800000000000000;
        v20 = OUTLINED_FUNCTION_4_25();
        break;
      case 2:
        v21 = OUTLINED_FUNCTION_16_0();
        goto LABEL_7;
      case 3:
        v22 = OUTLINED_FUNCTION_44_2();
        goto LABEL_11;
      case 4:
        v21 = OUTLINED_FUNCTION_45_2();
LABEL_7:
        v20 = OUTLINED_FUNCTION_42_3(v21);
        break;
      case 5:
        v22 = OUTLINED_FUNCTION_43_4();
LABEL_11:
        v20 = v22 | 0x6C616900000000;
        break;
      case 6:
        v20 = OUTLINED_FUNCTION_18_9();
        break;
      case 7:
        v20 = OUTLINED_FUNCTION_29_4();
        break;
      default:
        break;
    }

    v23 = sub_1D7E1C3D8(v20, v19, v44);

    *(v17 + 4) = v23;
    OUTLINED_FUNCTION_36_4(&dword_1D7DFF000, v24, v25, "CardContainer didTransitionTo presentationState: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    v2 = v16;
  }

  else
  {
  }

  type metadata accessor for CardViewAnimationCoordinator();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v28 = v2 + OBJC_IVAR___TSCardContainerController_delegate;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      swift_getObjectType();
      OUTLINED_FUNCTION_50_1();
      v30 = *(v29 + 40);
      v32 = v31;
      v30(v27, &protocol witness table for CardViewAnimationCoordinator, &v42, v28, v29);
      v11 = v1;
      v1 = v40;
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v41;
    }

    v34 = OUTLINED_FUNCTION_69_1();
    sub_1D7F49118(v34, v35, v36);
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v37 = OUTLINED_FUNCTION_66_2();
    v38(v37);
    sub_1D818F974();
    (*(v11 + 8))(v1, v9);
    if (v43)
    {
      v39 = *(v43 + 32);
      if (v39 == v27)
      {
        if (*(v39 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 8))
        {

LABEL_25:
          OUTLINED_FUNCTION_100();
          return;
        }

        OUTLINED_FUNCTION_59_2();
      }
    }

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_40_2();
  __break(1u);
}

void sub_1D7F49118(uint64_t a1, unsigned __int8 *a2, double a3)
{
  sub_1D7F52DC4(0, a3);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v36 = v3;
  v11 = sub_1D7F50440(a1);
  if (!v11)
  {
    return;
  }

  if (v10 == 5)
  {

    return;
  }

  v13 = v12;
  v14 = OBJC_IVAR___TSCardContainerController_transitionManager;
  v34 = v11;
  v15 = v36;
  swift_beginAccess();

  ViewControllerTransitionManager.endTransition(viewController:)(v34);

  v16 = *(v15 + OBJC_IVAR___TSCardContainerController_rootViewController);

  ViewControllerTransitionManager.endTransition(viewController:)(v16);

  v17 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  sub_1D7F52E60(0, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
  v19 = *(v18 + 40);
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v21 = v20;
  (*(*(v20 - 8) + 16))(&v9[v19], v15 + v17, v20);
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v37 = 0;
  v38 = v13;
  sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  sub_1D81917B4();
  if (v39 < v40)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v41 = v40;
  v42 = v39;
  sub_1D8191764();
  *v9 = 0;
  *(v9 + 1) = v13;
  v22 = *(v7 + 36);
  *&v9[v22] = 0;
  if (v13)
  {
    v23 = 0;
    v35 = v21;
    do
    {
      v41 = v23;
      v37 = 0;
      v38 = v13;
      sub_1D8191754();
      v24 = sub_1D81918F4();
      v26 = *v25;

      v24(&v37, 0);
      sub_1D81917C4();
      v27 = v19;
      v28 = v13;
      v29 = v14;
      v30 = *(v26 + 16);

      v31 = v30;
      ViewControllerTransitionManager.endTransition(viewController:)(v31);

      v14 = v29;
      v13 = v28;
      v19 = v27;
      v23 = *&v9[v22];
    }

    while (v23 != v13);
  }

  sub_1D7F5302C(v9, v32);
}

uint64_t sub_1D7F494B8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  v4 = sub_1D8191E44();
  v5 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_62_2(v5))
  {
    v6 = OUTLINED_FUNCTION_55_1();
    v7 = OUTLINED_FUNCTION_61();
    v18[0] = v7;
    *v6 = 136315138;
    v8 = 0xEA00000000006E65;
    v9 = OUTLINED_FUNCTION_5_18();
    switch(v3)
    {
      case 1:
        v8 = 0xE800000000000000;
        v9 = OUTLINED_FUNCTION_4_25();
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_16_0();
        goto LABEL_7;
      case 3:
        v11 = OUTLINED_FUNCTION_44_2();
        goto LABEL_11;
      case 4:
        v10 = OUTLINED_FUNCTION_45_2();
LABEL_7:
        v9 = OUTLINED_FUNCTION_42_3(v10);
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_43_4();
LABEL_11:
        v9 = v11 | 0x6C616900000000;
        break;
      case 6:
        v9 = OUTLINED_FUNCTION_18_9();
        break;
      case 7:
        v9 = OUTLINED_FUNCTION_29_4();
        break;
      default:
        break;
    }

    v12 = sub_1D7E1C3D8(v9, v8, v18);

    *(v6 + 4) = v12;
    OUTLINED_FUNCTION_36_4(&dword_1D7DFF000, v13, v14, "CardContainer willTransitionTo presentationState: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v16 = OUTLINED_FUNCTION_85();
    v17(v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7F4969C(uint64_t a1, double a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v7, v8, MEMORY[0x1E69D6AD8]);
  v10 = v9;
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_28_1();
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  v14 = sub_1D8191E44();
  v15 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_62_2(v15))
  {
    v16 = OUTLINED_FUNCTION_55_1();
    *v16 = 134217984;
    *(v16 + 4) = a2;
    _os_log_impl(&dword_1D7DFF000, v14, v15, "CardContainer didDragTo y: %f", v16, 0xCu);
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v17 = OUTLINED_FUNCTION_53();
    v18(v17, a2);
    swift_unknownObjectRelease();
  }

  v19 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v12 + 16))(v3, v4 + v19, v10);
  sub_1D818F974();
  (*(v12 + 8))(v3, v10);
  if (v21)
  {
    v20 = *(v21 + 32);
    if (v20 == a1 && (*(v20 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 8) & 1) == 0)
    {
      sub_1D7F49904(&v21);
      sub_1D7F48A54(&v21, *&a2, 0);
    }
  }
}

void sub_1D7F49904(char *a2@<X8>)
{
  if ((sub_1D7E3A3F4() & 1) != 0 && (, sub_1D818F154(), , v4 != 3))
  {
    v3 = 2;
  }

  else if (sub_1D7E3A3F4())
  {
    v3 = 3;
  }

  else
  {
    v3 = 8;
  }

  *a2 = v3;
}

uint64_t sub_1D7F499B0()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v0 = OUTLINED_FUNCTION_85();
    v2 = v1(v0);
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1D7F49A74()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v0 = OUTLINED_FUNCTION_53();
    v2 = v1(v0);
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

id CardContainerController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CardContainerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardContainerController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1D7F49D40(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___TSCardContainerController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F5312C;
}

id (*sub_1D7F49DD4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D7F49E38;
}

id sub_1D7F49E38(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D7F45D78();
  }

  return result;
}

void CardContainerController.removeCard(for:animated:completion:)()
{
  OUTLINED_FUNCTION_120();
  v36 = v2;
  v37 = v3;
  v35 = v4;
  v38 = v5;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v6, v7, MEMORY[0x1E69D6AD8]);
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_2();
  sub_1D7F52E60(0, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v14 = v13 - 8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_5();
  v16 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v17 = *(v11 + 16);
  v17(v0, v0 + v16, v9);
  v17(v1, v0, v9);
  v18 = *(v14 + 44);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  (*(v11 + 8))(v0, v9);
  while (1)
  {
    sub_1D81917B4();
    if (*(v1 + v18) == v39[0])
    {
      break;
    }

    v19 = sub_1D81918F4();
    v21 = *v20;

    (v19)(v39, 0);
    sub_1D81917C4();
    sub_1D7E0A1A8(0, &qword_1EDBB2F40, 0x1E69E58C0);
    v22 = *(v21 + 16);
    LOBYTE(v19) = sub_1D8191CC4();

    if (v19)
    {
      sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
      v23 = v38;
      v24 = sub_1D8191E44();
      v25 = sub_1D81919E4();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_55_1();
        v27 = OUTLINED_FUNCTION_61();
        v39[0] = v27;
        *v26 = 136315138;
        v28 = sub_1D7F522C8(v23);
        if (v29)
        {
          v30 = v29;
        }

        else
        {
          v28 = 0xD00000000000001BLL;
          v30 = 0x80000001D81C98D0;
        }

        v31 = sub_1D7E1C3D8(v28, v30, v39);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_1D7DFF000, v24, v25, "Popped CardContainer %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      LOBYTE(v39[0]) = 6;
      sub_1D7F4E6A0(v21, v39, v35 & 1, v36, v37);

      break;
    }
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v1, v32, v33, v34, MEMORY[0x1E69E6CF0]);
  OUTLINED_FUNCTION_100();
}

void CardContainerController.pushCard(_:to:animated:completion:)()
{
  OUTLINED_FUNCTION_120();
  v13 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_1D818F5F4();
  MEMORY[0x1EEE9AC00](v5);
  v12 = *v2;
  OUTLINED_FUNCTION_7_21();
  sub_1D7E342C8();
  v6 = MEMORY[0x1E69D6810];
  sub_1D7F5232C(0, &qword_1EDBB2CC0, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D81A1B70;
  sub_1D818F5E4();
  sub_1D818F5D4();
  sub_1D818F5B4();
  sub_1D7F52404(&qword_1EDBBC470, MEMORY[0x1E69D6810]);
  sub_1D7F5232C(0, &qword_1EDBB33C8, v6, MEMORY[0x1E69E62F8]);
  sub_1D7E103D8(&qword_1EDBB33C0, &qword_1EDBB33C8, v6);
  sub_1D8192004();
  OUTLINED_FUNCTION_0_8();
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v12;
  *(v8 + 32) = v4;
  *(v8 + 40) = v13;

  v9 = v4;
  sub_1D818EF34();

  v10 = OUTLINED_FUNCTION_14_0();
  v11(v10);

  OUTLINED_FUNCTION_100();
}

void CardContainerController.setCard(at:to:animated:completion:)()
{
  OUTLINED_FUNCTION_120();
  v24 = v1;
  v25 = v0;
  v23 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v7, v8, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_2();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v22 = *v4;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v12 = *(v10 + 16);
    v13 = OUTLINED_FUNCTION_77_2();
    v12(v13);
    OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0);
    OUTLINED_FUNCTION_67();
    sub_1D8191724();
    OUTLINED_FUNCTION_67();
    sub_1D81917B4();
    v14 = OUTLINED_FUNCTION_83_0();
    v15 = *(v10 + 8);
    v16 = OUTLINED_FUNCTION_76();
    v15(v16);
    if (v14 > v6)
    {
      v17 = OUTLINED_FUNCTION_77_2();
      v12(v17);
      sub_1D818F9F4();
      v18 = OUTLINED_FUNCTION_76();
      v15(v18);
      v19 = v26;
      v20 = v22;
      if (v22 == 4)
      {
        v21 = *(v26 + 32);
        if (*(v21 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 8) != 1)
        {
          if (*(v21 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_animatingPresentationState) != 4)
          {
            if (sub_1D7E3A3F4())
            {
              v20 = 3;
              goto LABEL_6;
            }

            if (sub_1D7E3A3F4())
            {
              v20 = 2;
              goto LABEL_6;
            }

            if (sub_1D7E3A3F4())
            {
              LOBYTE(v26) = 0;
              goto LABEL_7;
            }
          }

          if (v25)
          {
            v25(0);
          }

          goto LABEL_8;
        }

        v20 = 4;
      }

LABEL_6:
      LOBYTE(v26) = v20;
LABEL_7:
      sub_1D7F4E6A0(v19, &v26, v23 & 1, v25, v24);
LABEL_8:

      goto LABEL_11;
    }
  }

  if (v25)
  {
    v25(0);
  }

LABEL_11:
  OUTLINED_FUNCTION_100();
}

void CardContainerController.restoreCard(at:animated:completion:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v4, v5, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_2();
  if (v3 < 0 || (OUTLINED_FUNCTION_7(), swift_beginAccess(), v9 = OUTLINED_FUNCTION_77_2(), v18 = v10, v10(v9), OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0), v11 = v1, OUTLINED_FUNCTION_67(), sub_1D8191724(), OUTLINED_FUNCTION_67(), sub_1D81917B4(), v12 = OUTLINED_FUNCTION_83_0(), v13 = *(v7 + 8), v14 = OUTLINED_FUNCTION_76(), v13(v14), v15 = v12 <= v3, v1 = v11, v15))
  {
    if (v1)
    {
      v1(0);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_77_2();
    v18(v16);
    sub_1D818F9F4();
    v17 = OUTLINED_FUNCTION_76();
    v13(v17);
    if (*(*(v19 + 32) + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingPresentationState) == 8)
    {
      if (v11)
      {
        v11(0);
      }
    }

    else
    {
      CardContainerController.setCard(at:to:animated:completion:)();
    }
  }

  OUTLINED_FUNCTION_100();
}

Swift::Int_optional __swiftcall CardContainerController.index(ofCardWith:)(UIViewController *ofCardWith)
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v5, v6, MEMORY[0x1E69D6AD8]);
  v8 = v7;
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_10();
  v12 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v10 + 16))(v2, v1 + v12, v8);
  OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0);
  sub_1D8191724();
  while (1)
  {
    sub_1D81917B4();
    if (v18[4] == v18[0])
    {
      break;
    }

    v13 = sub_1D81918F4();
    OUTLINED_FUNCTION_63_1(v13, v14);
    v2(v18, 0);
    v15 = sub_1D7F459D8(v4);

    if (v15)
    {
      break;
    }

    sub_1D81917C4();
  }

  (*(v10 + 8))(v2, v8);
  OUTLINED_FUNCTION_100();
  result.value = v16;
  result.is_nil = v17;
  return result;
}

double sub_1D7F4AC34(void *a1)
{
  v1 = sub_1D7F50174(a1);
  if (v1)
  {
    v3 = *(v1 + 32);
    v4 = &v3[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      v7 = v3;
      sub_1D818F154();
      v8[0] = v8[1];
      (*(v5 + 40))(v7, &protocol witness table for CardViewAnimationCoordinator, v8, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_1D7F4AD68(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1D7F50174(a1);
  if (v5)
  {
    v7 = *(v5 + 32);
    v10 = a1;
    v8 = v7;
    v9 = a1;
    sub_1D8093AEC(&v10, v8, ObjectType, a2);
  }

  return result;
}

double sub_1D7F4AE30(void *a1, uint64_t a2, void (*a3)(void **, id, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v7 = sub_1D7F50174(a1);
  if (v7)
  {
    v9 = *(v7 + 24);
    v12 = a1;
    v10 = v9;
    v11 = a1;
    a3(&v12, v10, ObjectType, a2);
  }

  return result;
}

Swift::Void __swiftcall CardContainerController.viewDidLoad()()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for CardContainerController(0);
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR___TSCardContainerController_rootViewController];
  [v0 addChildViewController_];
  v2 = OUTLINED_FUNCTION_88();
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  v8 = OUTLINED_FUNCTION_88();
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  [v8 bounds];
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_3_2(v7, sel_setFrame_);
  v10 = OUTLINED_FUNCTION_88();
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *&v0[OBJC_IVAR___TSCardContainerController_dimmingView];
  [v10 addSubview_];

  v13 = OUTLINED_FUNCTION_88();
  if (!v13)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_3_2(v12, sel_setFrame_);
  v15 = OBJC_IVAR___TSCardContainerController_dimmingColor;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  [v12 setBackgroundColor_];
  [v12 setAlpha_];
  v16 = [v0 navigationItem];
  if (sub_1D7E38C7C([v1 navigationItem]))
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31D0, 0x1E69DC708);
    v17 = sub_1D8191304();
  }

  else
  {
    v17 = 0;
  }

  [v16 setLeftBarButtonItems_];

  v18 = [v0 navigationItem];
  if (sub_1D7E3443C([v1 navigationItem]))
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31D0, 0x1E69DC708);
    v19 = sub_1D8191304();
  }

  else
  {
    v19 = 0;
  }

  [v18 setRightBarButtonItems_];
}

Swift::Void __swiftcall CardContainerController.viewWillAppear(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  OUTLINED_FUNCTION_1_41();
  sub_1D7F52E60(0, v5, v6, v7, MEMORY[0x1E69E6CF0]);
  v35 = v8;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v10, v11, MEMORY[0x1E69D6AD8]);
  v13 = v12;
  OUTLINED_FUNCTION_9();
  v15 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for CardContainerController(0);
  v38.receiver = v1;
  v38.super_class = v19;
  v36 = v4;
  objc_msgSendSuper2(&v38, sel_viewWillAppear_, v4 & 1);
  v20 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v21 = *(v15 + 16);
  v21(v18, &v1[v20], v13);
  OUTLINED_FUNCTION_6_19(&qword_1EDBB1FD8);
  sub_1D8191164();
  sub_1D7F4B804(v37);

  if (LOBYTE(v37[0]) - 2 < 6)
  {
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    LOBYTE(v37[0]) = 0;

    v22 = OUTLINED_FUNCTION_74_2();
    ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v22, v23, v24);
  }

  v21(v18, &v1[v20], v13);
  v21(v2, v18, v13);
  v25 = *(v35 + 36);
  OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0);
  sub_1D8191724();
  (*(v15 + 8))(v18, v13);
  v35 = OBJC_IVAR___TSCardContainerController_transitionManager;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  while (1)
  {
    sub_1D81917B4();
    if (*(v2 + v25) == v37[0])
    {
      break;
    }

    v26 = sub_1D81918F4();
    OUTLINED_FUNCTION_89_0(v26, v27);
    v26(v37, 0);
    sub_1D81917C4();

    sub_1D818F154();

    switch(LOBYTE(v37[0]))
    {
      case 2:
      case 4:
      case 5:
      case 6:
      case 7:

        break;
      default:
        LOBYTE(v37[0]) = 0;

        v28 = OUTLINED_FUNCTION_74_2();
        ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v28, v29, v30);

        break;
    }
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v2, v31, v32, v33, MEMORY[0x1E69E6CF0]);
  OUTLINED_FUNCTION_100();
}

void sub_1D7F4B804(char *a2@<X8>)
{
  v3 = sub_1D8190DB4();
  v7 = sub_1D80E734C(v3);
  sub_1D7F50CAC(&v7);
  sub_1D805B60C(v7);
  v5 = v4;

  if (v5)
  {

    sub_1D818F154();

    v6 = v7;
  }

  else
  {
    v6 = 5;
  }

  *a2 = v6;
}

Swift::Void __swiftcall CardContainerController.viewWillDisappear(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_120();
  v4 = v1;
  v6 = v5;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v7, v8, MEMORY[0x1E69D6AD8]);
  v10 = v9;
  OUTLINED_FUNCTION_9();
  v12 = v11;
  v30 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_1_41();
  sub_1D7F52E60(0, v14, v15, v16, MEMORY[0x1E69E6CF0]);
  v18 = v17 - 8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_28_1();
  v32.receiver = v1;
  v32.super_class = type metadata accessor for CardContainerController(0);
  objc_msgSendSuper2(&v32, sel_viewWillDisappear_, v6);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v20 = *&v1[OBJC_IVAR___TSCardContainerController_rootViewController];
  LOBYTE(v31[0]) = 1;

  ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v20, v31, v6);

  v21 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v22 = *(v12 + 16);
  v22(v3, &v4[v21], v10);
  v22(v2, v3, v10);
  v23 = *(v18 + 44);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  (*(v30 + 8))(v3, v10);
  while (1)
  {
    sub_1D81917B4();
    if (*&v2[v23] == v31[0])
    {
      break;
    }

    v24 = sub_1D81918F4();
    OUTLINED_FUNCTION_63_1(v24, v25);
    (v2)(v31, 0);
    sub_1D81917C4();
    v26 = *(v3 + 16);
    LOBYTE(v31[0]) = 1;

    ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v26, v31, v6);
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v2, v27, v28, v29, MEMORY[0x1E69E6CF0]);
  OUTLINED_FUNCTION_100();
}

void sub_1D7F4BCD8()
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  v5 = v0;
  v7 = v6;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v8, v9, MEMORY[0x1E69D6AD8]);
  v11 = v10;
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_1_41();
  sub_1D7F52E60(0, v15, v16, v17, MEMORY[0x1E69E6CF0]);
  v19 = v18 - 8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15_10();
  v36.receiver = v5;
  v36.super_class = type metadata accessor for CardContainerController(0);
  objc_msgSendSuper2(&v36, *v4, v7 & 1);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v21 = *&v5[OBJC_IVAR___TSCardContainerController_rootViewController];

  ViewControllerTransitionManager.endTransition(viewController:)(v21);

  v22 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v23 = *(v13 + 16);
  v23(v2, &v5[v22], v11);
  v23(v1, v2, v11);
  v24 = *(v19 + 44);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  OUTLINED_FUNCTION_53();
  sub_1D8191724();
  v25 = OUTLINED_FUNCTION_54_1();
  v26(v25);
  while (1)
  {
    OUTLINED_FUNCTION_53();
    sub_1D81917B4();
    if (*(v1 + v24) == v35)
    {
      break;
    }

    v27 = sub_1D81918F4();
    v29 = *v28;

    v27(&v35, 0);
    sub_1D81917C4();
    v30 = *(v29 + 16);

    v31 = v30;
    ViewControllerTransitionManager.endTransition(viewController:)(v31);
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v1, v32, v33, v34, MEMORY[0x1E69E6CF0]);
  OUTLINED_FUNCTION_100();
}

Swift::Void __swiftcall CardContainerController.viewWillLayoutSubviews()()
{
  OUTLINED_FUNCTION_86();
  v39 = v2;
  v40 = v3;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v4, v5, MEMORY[0x1E69D6AD8]);
  v7 = v6;
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_1_41();
  sub_1D7F52E60(0, v11, v12, v13, MEMORY[0x1E69E6CF0]);
  v15 = v14;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26();
  v38.receiver = v0;
  v38.super_class = type metadata accessor for CardContainerController(0);
  objc_msgSendSuper2(&v38, sel_viewWillLayoutSubviews);
  v17 = [*&v0[OBJC_IVAR___TSCardContainerController_rootViewController] view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  v36 = v15;
  v19 = [v0 view];
  if (!v19)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v20 = v19;
  [v19 bounds];
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_3_2(v18, sel_setFrame_);
  v21 = *&v0[OBJC_IVAR___TSCardContainerController_dimmingView];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 bounds];
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_3_2(v21, sel_setFrame_);
  v24 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v25 = *(v9 + 16);
  v25(v0, &v0[v24], v7);
  v25(v1, v0, v7);
  v26 = *(v36 + 36);
  OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0);
  sub_1D8191724();
  (*(v9 + 8))(v0, v7);
  while (1)
  {
    OUTLINED_FUNCTION_13_9();
    sub_1D81917B4();
    if (*(v1 + v26) == v37[0])
    {
      break;
    }

    v27 = OUTLINED_FUNCTION_57_1(v37, v1 + v26);
    v29 = *v28;

    v27(v37, 0);
    OUTLINED_FUNCTION_58_1(v1 + v26);
    v30 = *(v29 + 24);
    v31 = *(v29 + 32);
    v32 = v30;
    sub_1D8091A9C(v32);
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v1, v33, v34, v35, MEMORY[0x1E69E6CF0]);
  OUTLINED_FUNCTION_87();
}

Swift::Void __swiftcall CardContainerController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for CardContainerController(0);
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  sub_1D818EF14();
}

Swift::Void __swiftcall CardContainerController.viewLayoutMarginsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for CardContainerController(0);
  objc_msgSendSuper2(&v1, sel_viewLayoutMarginsDidChange);
  sub_1D7F45D78();
  sub_1D818EF14();
}

void sub_1D7F4C4EC(char *a1, char *a2)
{
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v104 - v7;
  v9 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v10(v8, &a1[v9], v5);
  v11 = sub_1D818F9A4();
  v12 = *(v6 + 8);
  v12(v8, v5);
  if (v11)
  {
    v13 = [a1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v110.origin.x = v16;
      v110.origin.y = v18;
      v110.size.width = v20;
      v110.size.height = v22;
      CGRectGetHeight(v110);
      return;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a2 - 2 < 2)
  {
    goto LABEL_7;
  }

  if (a2 == 4)
  {
    v10(v8, &a1[v9], v5);
    sub_1D818F974();
    v12(v8, v5);
    if (!__dst[0])
    {
LABEL_43:
      v92 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
      swift_beginAccess();
      memcpy(__dst, &a1[v92], 0x49uLL);
      a2 = &selRef_attemptTransitionToState_animated_;
      v93 = [a1 view];
      if (!v93)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v94 = v93;
      [v93 bounds];
      v27 = v95;
      v29 = v96;
      v31 = v97;
      v33 = v98;

      v99 = [a1 view];
      if (!v99)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v100 = v99;
      [v99 layoutMargins];
      v105 = v101;
      v38 = v102;
      v40 = v103;

      v116.origin.x = v27;
      v116.origin.y = v29;
      v116.size.width = v31;
      v116.size.height = v33;
      CGRectGetHeight(v116);
      memcpy(v108, __dst, sizeof(v108));
      v107 = 4;
      v41 = &v107;
      goto LABEL_10;
    }

    v104 = __dst[0];
    v42 = *(__dst[0] + 32);
    v43 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators;
    swift_beginAccess();
    v44 = *(v42 + v43);
    a2 = sub_1D7E36AB8(v44);
    sub_1D8190DB4();
    v45 = 0;
    v105 = MEMORY[0x1E69E7CC0];
    while (a2 != v45)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA714420](v45, v44);
      }

      else
      {
        if (v45 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }
      }

      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong && (v48 = Strong[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_initialCoordinatingPresentationState], Strong, v48 != 8))
      {
        v49 = v105;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D7EE508C();
          v49 = v52;
        }

        v105 = v49;
        v50 = *(*&v49 + 16);
        if (v50 >= *(*&v49 + 24) >> 1)
        {
          sub_1D7EE508C();
          v105 = v53;
        }

        v51 = v105;
        *(*&v105 + 16) = v50 + 1;
        *(*&v51 + v50 + 32) = v48;
        v45 = v46;
      }

      else
      {
        ++v45;
      }
    }

LABEL_31:

    *__dst = v105;
    sub_1D8190DB4();
    sub_1D7F50D28(__dst);

    if (*(__dst[0] + 16))
    {
      a2 = *(__dst[0] + 32);

      v68 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
      swift_beginAccess();
      memcpy(__dst, &a1[v68], 0x49uLL);
      v69 = [a1 view];
      if (v69)
      {
        v70 = v69;
        [v69 bounds];
        v72 = v71;
        v74 = v73;
        v76 = v75;
        v78 = v77;

        v79 = [a1 view];
        if (v79)
        {
          v80 = v79;
          [v79 layoutMargins];
          v105 = v81;
          v83 = v82;
          v85 = v84;

          v112.origin.x = v72;
          v112.origin.y = v74;
          v112.size.width = v76;
          v112.size.height = v78;
          CGRectGetHeight(v112);
          memcpy(v108, __dst, sizeof(v108));
          v107 = a2;
          CardViewLayoutOptions.cardHeight(for:in:layoutMargins:)(&v107, v72, v74, v76, v78, v105, v83, v85);

          return;
        }

        goto LABEL_57;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);

      __break(1u);
      return;
    }

    goto LABEL_43;
  }

  if (a2 == 7)
  {
LABEL_7:
    v23 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
    swift_beginAccess();
    memcpy(__dst, &a1[v23], 0x49uLL);
    v24 = [a1 view];
    if (!v24)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v25 = v24;
    [v24 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v34 = [a1 view];
    if (!v34)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v35 = v34;
    [v34 layoutMargins];
    v105 = v36;
    v38 = v37;
    v40 = v39;

    v111.origin.x = v27;
    v111.origin.y = v29;
    v111.size.width = v31;
    v111.size.height = v33;
    CGRectGetHeight(v111);
    memcpy(v108, __dst, sizeof(v108));
    v106 = a2;
    v41 = &v106;
LABEL_10:
    CardViewLayoutOptions.cardHeight(for:in:layoutMargins:)(v41, v27, v29, v31, v33, v105, v38, v40);
    return;
  }

  sub_1D7F46828();
  sub_1D7F12E70(v54);
  v55 = sub_1D7E3A3F4();
  a2 = &a1[OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions];
  if (v55)
  {
    swift_beginAccess();
    v56 = a2[56];
    v57 = [a1 view];
    if (!v57)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v58 = v57;
    [v57 bounds];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;

    v67 = [a1 view];
    if (!v67)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    swift_beginAccess();
    v56 = a2[40];
    v86 = [a1 view];
    if (!v86)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    a2 = v86;
    [v86 bounds];
    v60 = v87;
    v62 = v88;
    v64 = v89;
    v66 = v90;

    v67 = [a1 view];
    if (!v67)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }
  }

  v91 = v67;

  [v91 layoutMargins];

  v113.origin.x = v60;
  v113.origin.y = v62;
  v113.size.width = v64;
  v113.size.height = v66;
  CGRectGetHeight(v113);
  if (v56 >> 6)
  {
    if (v56 >> 6 != 1)
    {
      v115.origin.x = v60;
      v115.origin.y = v62;
      v115.size.width = v64;
      v115.size.height = v66;
      CGRectGetHeight(v115);
    }
  }

  else
  {
    v114.origin.x = v60;
    v114.origin.y = v62;
    v114.size.width = v64;
    v114.size.height = v66;
    CGRectGetHeight(v114);
  }
}

Swift::Void __swiftcall CardContainerController.viewSafeAreaInsetsDidChange()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardContainerController(0);
  objc_msgSendSuper2(&v2, sel_viewSafeAreaInsetsDidChange);
  v1 = 8;
  sub_1D7F48A54(&v1, 0, 1);
}

void CardContainerController.collapseCards(completion:)()
{
  OUTLINED_FUNCTION_120();
  v49 = v2;
  v50 = v3;
  sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v55 = v5;
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_2();
  v54 = v6;
  sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v52 = v8;
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_2();
  v51 = v9;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v10, v11, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_22_8();
  sub_1D7F52E60(0, v13, &qword_1EDBB1FD0, v1, MEMORY[0x1E69E6CF0]);
  v15 = v14 - 8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = dispatch_group_create();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v20 = OUTLINED_FUNCTION_72_2();
  v21(v20);
  OUTLINED_FUNCTION_6_19(&qword_1EDBB1FD8);
  sub_1D8191134();
  v22 = *(v15 + 44);
  v23 = sub_1D7F523A4(&qword_1EDBB1FD0);
  while (1)
  {
    OUTLINED_FUNCTION_84_0();
    if (*&v18[v22] == v58[0])
    {
      break;
    }

    v24 = OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_89_0(v24, v25);
    v26 = OUTLINED_FUNCTION_46_3();
    v24(v26);
    sub_1D81917C4();
    dispatch_group_enter(v19);
    LOBYTE(v58[0]) = 2;
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v19;
    v27 = v19;
    OUTLINED_FUNCTION_47_2(v28, v29);
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v18, v30, v31, v32, MEMORY[0x1E69E6CF0]);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  v33 = sub_1D8191AB4();
  v34 = swift_allocObject();
  v35 = v50;
  *(v34 + 16) = v49;
  *(v34 + 24) = v35;
  OUTLINED_FUNCTION_20_8(v34);
  OUTLINED_FUNCTION_21_7(COERCE_DOUBLE(1107296256));
  v58[2] = v36;
  v58[3] = &block_descriptor_11;
  _Block_copy(v58);
  OUTLINED_FUNCTION_90_1();
  v57 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_24_5();
  sub_1D7F52404(v37, v38);
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_78();
  sub_1D7F5232C(v39, v40, v41, v42);
  OUTLINED_FUNCTION_78();
  v46 = sub_1D7E103D8(v43, v44, v45);
  OUTLINED_FUNCTION_33_4(v46);
  OUTLINED_FUNCTION_60_2();
  _Block_release(v23);

  v47 = OUTLINED_FUNCTION_54_1();
  v48(v47);
  (*(v52 + 8))(v0, v53);

  OUTLINED_FUNCTION_100();
}

void CardContainerController.expandCards(completion:)()
{
  OUTLINED_FUNCTION_120();
  v49 = v2;
  v50 = v3;
  sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v55 = v5;
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_2();
  v54 = v6;
  sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v52 = v8;
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_2();
  v51 = v9;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v10, v11, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_22_8();
  sub_1D7F52E60(0, v13, &qword_1EDBB1FD0, v1, MEMORY[0x1E69E6CF0]);
  v15 = v14 - 8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = dispatch_group_create();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v20 = OUTLINED_FUNCTION_72_2();
  v21(v20);
  OUTLINED_FUNCTION_6_19(&qword_1EDBB1FD8);
  sub_1D8191134();
  v22 = *(v15 + 44);
  v23 = sub_1D7F523A4(&qword_1EDBB1FD0);
  while (1)
  {
    OUTLINED_FUNCTION_84_0();
    if (*&v18[v22] == v58[0])
    {
      break;
    }

    v24 = OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_89_0(v24, v25);
    v26 = OUTLINED_FUNCTION_46_3();
    v24(v26);
    sub_1D81917C4();
    dispatch_group_enter(v19);
    LOBYTE(v58[0]) = 1;
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v19;
    v27 = v19;
    OUTLINED_FUNCTION_47_2(v28, v29);
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v18, v30, v31, v32, MEMORY[0x1E69E6CF0]);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  v33 = sub_1D8191AB4();
  v34 = swift_allocObject();
  v35 = v50;
  *(v34 + 16) = v49;
  *(v34 + 24) = v35;
  OUTLINED_FUNCTION_20_8(v34);
  OUTLINED_FUNCTION_21_7(COERCE_DOUBLE(1107296256));
  v58[2] = v36;
  v58[3] = &block_descriptor_22_0;
  _Block_copy(v58);
  OUTLINED_FUNCTION_90_1();
  v57 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_24_5();
  sub_1D7F52404(v37, v38);
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_78();
  sub_1D7F5232C(v39, v40, v41, v42);
  OUTLINED_FUNCTION_78();
  v46 = sub_1D7E103D8(v43, v44, v45);
  OUTLINED_FUNCTION_33_4(v46);
  OUTLINED_FUNCTION_60_2();
  _Block_release(v23);

  v47 = OUTLINED_FUNCTION_54_1();
  v48(v47);
  (*(v52 + 8))(v0, v53);

  OUTLINED_FUNCTION_100();
}

void sub_1D7F4D9BC(uint64_t a1, unsigned __int8 a2, void *a3, char a4)
{
  v6 = a2;
  v8 = a2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1D7F46398();
  v11 = v10;

  v12 = sub_1D7E3A548(v11);

  if (v8 <= 1)
  {
    v13 = swift_unknownObjectUnownedLoadStrong();
    v14 = *&v13[OBJC_IVAR___TSCardContainerController_rootViewController];

    v15 = [v14 view];
    if (!v15)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    [v15 setUserInteractionEnabled_];

    if (v12)
    {
      v16 = [v12 view];
      if (!v16)
      {
LABEL_44:
        __break(1u);
        return;
      }

      v17 = v16;
      [v16 setUserInteractionEnabled_];
    }
  }

  v18 = swift_unknownObjectUnownedLoadStrong();
  [v18 addChildViewController_];

  v19 = [a3 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_35;
  }

  v20 = v19;
  v135 = v12;
  v21 = objc_allocWithZone(type metadata accessor for CardView());
  v22 = sub_1D8101AF4(v20);
  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = v22;
  v25 = [v23 view];

  if (!v25)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v146.origin.x = v27;
  v146.origin.y = v29;
  v146.size.width = v31;
  v146.size.height = v33;
  MaxY = CGRectGetMaxY(v146);
  v35 = swift_unknownObjectUnownedLoadStrong();
  v36 = [v35 view];

  if (!v36)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v36 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v147.origin.x = v38;
  v147.origin.y = v40;
  v147.size.width = v42;
  v147.size.height = v44;
  Width = CGRectGetWidth(v147);
  v46 = swift_unknownObjectUnownedLoadStrong();
  v47 = [v46 view];

  if (!v47)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v47 bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v148.origin.x = v49;
  v148.origin.y = v51;
  v148.size.width = v53;
  v148.size.height = v55;
  [v24 setFrame_];

  v138 = a3;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  sub_1D7E0631C(0, &qword_1EDBAFE68, &protocol descriptor for CardViewAppearanceProviding);
  v56 = a3;
  v136 = v24;
  v134 = a4;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v143, __dst);
    v57 = v24;
    v58 = v6;
    v59 = __dst[3];
    v60 = __dst[4];
    v61 = __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v62 = v60;
    v6 = v58;
    sub_1D81035A8(v61, v57, v59, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  else
  {
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    sub_1D7E70D34(&v143, &qword_1ECA0D678, &qword_1EDBAFE68, &protocol descriptor for CardViewAppearanceProviding, sub_1D7E26648);
  }

  v138 = v56;
  sub_1D7E0631C(0, qword_1EDBB1EF0, &protocol descriptor for CardViewTitleViewProviding);
  v63 = v56;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v143, __dst);
    v64 = __dst[3];
    v65 = __dst[4];
    v66 = __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v67 = v136;
    sub_1D81033C0(v66, v136, v64, v65);
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  else
  {
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    sub_1D7E70D34(&v143, &unk_1EDBB1EE8, qword_1EDBB1EF0, &protocol descriptor for CardViewTitleViewProviding, sub_1D7E26648);
    v67 = v136;
  }

  v133 = v6;
  LOBYTE(__dst[0]) = v6;
  sub_1D8100EAC(__dst);
  v68 = swift_unknownObjectUnownedLoadStrong();
  v69 = [v68 view];

  if (!v69)
  {
    goto LABEL_38;
  }

  [v69 addSubview_];

  v70 = swift_unknownObjectUnownedLoadStrong();
  [v63 didMoveToParentViewController_];

  v71 = swift_unknownObjectUnownedLoadStrong();
  v72 = &v71[OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions];
  swift_beginAccess();
  v73 = v72[2];
  v74 = *(v72 + 24);

  v75 = swift_unknownObjectUnownedLoadStrong();
  v76 = [v75 view];

  if (!v76)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v76 bounds];
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;

  v85 = swift_unknownObjectUnownedLoadStrong();
  v86 = [v85 view];

  if (!v86)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v86 layoutMargins];
  v88 = v87;
  v90 = v89;

  v91 = *&v67[OBJC_IVAR___TSCardView_layout];
  v149.origin.x = v78;
  v149.origin.y = v80;
  v149.size.width = v82;
  v149.size.height = v84;
  Height = CGRectGetHeight(v149);
  if (v74 >> 6)
  {
    if (v74 >> 6 == 1)
    {
      v93 = 0.0;
      if (v74)
      {
        v93 = v90;
      }

      v94 = v93 + v73;
    }

    else
    {
      v151.origin.x = v78;
      v151.origin.y = v80;
      v151.size.width = v82;
      v151.size.height = v84;
      v94 = CGRectGetHeight(v151) * v73;
    }
  }

  else
  {
    v150.origin.x = v78;
    v150.origin.y = v80;
    v150.size.width = v82;
    v150.size.height = v84;
    v95 = CGRectGetHeight(v150);
    v96 = 0.0;
    if (v74)
    {
      v96 = v88;
    }

    v94 = v95 - v73 - v96;
  }

  [v63 setAdditionalSafeAreaInsets_];
  sub_1D7F4E468(v63, __dst);
  v97 = __dst[0];
  v98 = __dst[1];
  v99 = BYTE1(__dst[1]);
  v100 = BYTE2(__dst[1]);
  v101 = __dst[2];
  v102 = swift_unknownObjectUnownedLoadStrong();
  v103 = [v102 view];

  if (!v103)
  {
    goto LABEL_41;
  }

  v104 = [v63 view];
  if (!v104)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v105 = v104;
  v106 = swift_unknownObjectUnownedLoadStrong();
  v107 = *&v106[OBJC_IVAR___TSCardContainerController_dimmingView];

  v138 = v97;
  v139 = v98;
  v140 = v99;
  v141 = v100;
  v142 = v101;
  v108 = swift_unknownObjectUnownedLoadStrong();
  v109 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
  swift_beginAccess();
  memcpy(__dst, &v108[v109], 0x49uLL);

  v110 = objc_allocWithZone(type metadata accessor for CardViewAnimationCoordinator());
  v111 = v136;
  v112 = sub_1D808FE18(v103, v111, v105, v107, &v138, __dst);
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v63, ObjectType, &protocol descriptor for CardViewAnimationCoordinatorDelegate))
  {
    v115 = v114;
    v116 = v63;
  }

  else
  {
    v115 = 0;
  }

  *&v112[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate + 8] = v115;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v117 = swift_unknownObjectUnownedLoadStrong();
  *&v112[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_parentDelegate + 8] = &protocol witness table for CardContainerController;
  swift_unknownObjectWeakAssign();

  v118 = swift_unknownObjectUnownedLoadStrong();
  v119 = OBJC_IVAR___TSCardContainerController_dimmingAlpha;
  swift_beginAccess();
  v120 = *&v118[v119];

  *&v112[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingAlpha] = v120;
  type metadata accessor for CardContainerController.CardItem();
  v121 = swift_allocObject();
  v121[2] = v63;
  v121[3] = v111;
  v121[4] = v112;
  v122 = swift_unknownObjectUnownedLoadStrong();
  swift_beginAccess();
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v123 = v111;
  v124 = v63;
  v125 = v112;
  sub_1D818F984();
  swift_endAccess();

  v126 = swift_unknownObjectUnownedLoadStrong();
  LOBYTE(__dst[0]) = v133;
  v127 = swift_allocObject();
  *(v127 + 16) = a1;
  *(v127 + 24) = v135;
  *(v127 + 32) = v133;
  v128 = v135;

  sub_1D7F4E6A0(v121, __dst, v134 & 1, sub_1D7F53088, v127);

  v129 = swift_allocObject();
  v130 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  v131 = swift_allocObject();
  swift_weakInit();
  v132 = swift_allocObject();
  *(v132 + 16) = v129;
  *(v132 + 24) = v131;
  sub_1D818F164();

  __swift_destroy_boxed_opaque_existential_1Tm(__dst);
}

void sub_1D7F4E468(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  sub_1D7E0631C(0, &qword_1EDBB0218, &protocol descriptor for CardViewBehaviorProviding);
  v4 = a1;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v7, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D7E70D34(v7, &qword_1EDBB0210, &qword_1EDBB0218, &protocol descriptor for CardViewBehaviorProviding, sub_1D7E26648);
    static CardViewBehavior.default.getter(a2);
  }
}

void sub_1D7F4E58C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = *&Strong[OBJC_IVAR___TSCardContainerController_rootViewController];

  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v8 setUserInteractionEnabled_];

  if (a3)
  {
    v9 = [a3 view];
    if (v9)
    {
      v10 = v9;
      [v9 setUserInteractionEnabled_];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:
  v11 = swift_unknownObjectUnownedLoadStrong();
  v12 = a4;
  sub_1D7F48A54(&v12, 0, 1);
}

void sub_1D7F4E6A0(uint64_t a1, unsigned __int8 *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  if (a3)
  {

    sub_1D7F4F4A4(v5, a1, v9, a4, a5);
  }

  else
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = a1;
    *(v11 + 32) = v9;
    *(v11 + 40) = a4;
    *(v11 + 48) = a5;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D7F5309C;
    *(v12 + 24) = v11;
    v16[4] = sub_1D7E74D6C;
    v16[5] = v12;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1D7E74D74;
    v16[3] = &block_descriptor_68;
    v13 = _Block_copy(v16);
    v14 = v5;

    sub_1D7E19F24(a4, a5);

    [v10 performWithoutAnimation_];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

double sub_1D7F4E884(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v12 = Strong;
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (!v13)
  {

    return result;
  }

  v14 = v13;
  v22 = v9;
  v15 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  v16 = *(v6 + 16);
  v21 = v15;
  v16(v8, &v12[v15], v5);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  while (1)
  {
    sub_1D81917B4();
    if (v24 == *v23)
    {
      (*(v6 + 8))(v8, v5);
      goto LABEL_16;
    }

    v17 = sub_1D81918F4();
    v19 = *v18;

    v17(v23, 0);

    if (v19 == v14)
    {
      break;
    }

    sub_1D81917C4();
  }

  (*(v6 + 8))(v8, v5);
  if (((1 << v22) & 0xA3) != 0)
  {
    v23[0] = 8;
LABEL_13:
    sub_1D7F48A54(v23, 0, 1);
    goto LABEL_15;
  }

  if (((1 << v22) & 0xC) != 0)
  {
    v23[0] = v22;
    goto LABEL_13;
  }

  [*(v14 + 16) willMoveToParentViewController_];
  [*(v14 + 24) removeFromSuperview];
  [*(v14 + 16) removeFromParentViewController];
  [*(v14 + 16) setAdditionalSafeAreaInsets_];
  swift_beginAccess();
  sub_1D818F994();
  swift_endAccess();

LABEL_15:
  sub_1D7F4EBE8(v20);
LABEL_16:

  return result;
}

void sub_1D7F4EBE8(double a1)
{
  sub_1D7F52DC4(0, a1);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - v9;
  sub_1D7F52E60(0, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
  MEMORY[0x1EEE9AC00](v11);
  v48 = (&v46 - v12);
  v53 = 0u;
  v54 = 0u;
  sub_1D7F466C0(v51);
  v13 = LOBYTE(v51[0]);
  v49 = v1;
  v14 = [*(v1 + OBJC_IVAR___TSCardContainerController_rootViewController) viewIfLoaded];
  v15 = v14;
  v16 = MEMORY[0x1E69E7CA0];
  if (v13 > 1)
  {
    if (v14)
    {
      [v14 setAccessibilityElementsHidden_];
    }

    v27 = OBJC_IVAR___TSCardContainerController_cardItemStack;
    v28 = v49;
    swift_beginAccess();
    (*(v8 + 16))(v10, v28 + v27, v7);
    sub_1D80590E0();
    v30 = v29;
    v31 = sub_1D7E36AB8(v29);
    for (i = 0; ; ++i)
    {
      if (v31 == i)
      {

        goto LABEL_26;
      }

      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1DA714420](i, v30);
      }

      else
      {
        if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v33 = *(v30 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1D818F154();

      if (LOBYTE(v51[0]) < 4u)
      {

        [*(v33 + 24) setAccessibilityElementsHidden_];

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    if (v14)
    {
      [v14 setAccessibilityElementsHidden_];
    }

    v47 = &v53 + 1;
    v17 = OBJC_IVAR___TSCardContainerController_cardItemStack;
    v18 = v49;
    swift_beginAccess();
    (*(v8 + 16))(v10, v18 + v17, v7);
    v19 = v48;
    sub_1D8058DE4(1);
    sub_1D7F52F90(v19, v5);
    v21 = *(v3 + 36);
    v22 = *v19;
    *(v5 + v21) = *v19;
    v23 = v5[1];
    while (v22 != v23)
    {
      v50 = v22;
      v51[0] = *v5;
      v51[1] = v23;
      sub_1D7F523A4(&qword_1EDBB1FD0);
      sub_1D8191754();
      v24 = sub_1D81918F4();
      v26 = *v25;

      v24(v51, 0);
      sub_1D81917C4();
      [*(v26 + 24) setAccessibilityElementsHidden_];

      v22 = *(v5 + v21);
    }

    sub_1D7F5302C(v5, v20);
    sub_1D7F530BC(v48, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
    v34 = sub_1D7F4658C();
    v35 = v34;
    if (v34)
    {
      v36 = [v34 view];

      v16 = MEMORY[0x1E69E7CA0];
      if (v36)
      {
        v35 = sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v36 = 0;
      v16 = MEMORY[0x1E69E7CA0];
    }

    sub_1D7E70D34(&v53, &qword_1EDBBC780, v16 + 8, MEMORY[0x1E69E6720], sub_1D7E09CC4);
    v37 = v47;
    *v47 = 0;
    v37[1] = 0;
    *&v53 = v36;
    *(&v54 + 1) = v35;
LABEL_26:
    v38 = *MEMORY[0x1E69DD8E8];
    sub_1D7E7B91C(&v53, v51);
    v39 = v52;
    if (v52)
    {
      v40 = __swift_project_boxed_opaque_existential_1(v51, v52);
      v41 = *(v39 - 8);
      v42 = MEMORY[0x1EEE9AC00](v40);
      v44 = &v46 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v44, v42);
      v45 = sub_1D8192614();
      (*(v41 + 8))(v44, v39);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
    }

    else
    {
      v45 = 0;
    }

    UIAccessibilityPostNotification(v38, v45);
    swift_unknownObjectRelease();
    sub_1D7E70D34(&v53, &qword_1EDBBC780, v16 + 8, MEMORY[0x1E69E6720], sub_1D7E09CC4);
  }
}

Swift::Void __swiftcall CardContainerController.popCards()()
{
  OUTLINED_FUNCTION_86();
  v17 = v2;
  v18 = v3;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v4, v5, MEMORY[0x1E69D6AD8]);
  v7 = v6;
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_10();
  v11 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v12 = *(v9 + 16);
  while (1)
  {
    v12(v1, v0 + v11, v7);
    sub_1D818F974();
    v13 = OUTLINED_FUNCTION_85();
    v14(v13);
    if (!v16[0])
    {
      break;
    }

    OUTLINED_FUNCTION_3_2(*(v16[0] + 16), sel_setAdditionalSafeAreaInsets_);
    LOBYTE(v16[0]) = 6;
    sub_1D8091BF0(v16);
  }

  v16[0] = 8;
  sub_1D7F48A54(v16, 0, 1);
  sub_1D7F4EBE8(v15);
  OUTLINED_FUNCTION_87();
}

void sub_1D7F4F4A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v73 = a5;
  v72 = a4;
  v71 = a3;
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v70[-v10];
  v87 = MEMORY[0x1E69D6AE8];
  sub_1D7F52E60(0, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v70[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70[-v16];
  v18 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  v19 = *(v9 + 16);
  v81 = a1;
  v77 = v18;
  v20 = a1 + v18;
  v21 = v17;
  v19(v11, v20, v8);
  v76 = v9 + 16;
  v75 = v19;
  v19(v17, v11, v8);
  v78 = v13;
  v22 = *(v13 + 36);
  v23 = sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  v24 = *(v9 + 8);
  v79 = v11;
  v80 = v9 + 8;
  v74 = v24;
  v24(v11, v8);
  v86 = v8;
  v87 = a2;
  v84 = v17;
  v85 = v23;
  v83 = v22;
LABEL_2:
  while (1)
  {
    sub_1D81917B4();
    if (*(v21 + v22) == *v88)
    {
      break;
    }

    v25 = sub_1D81918F4();
    v27 = *v26;

    v25(v88, 0);
    sub_1D81917C4();
    if (v27 != a2)
    {
      v28 = *(v27 + 32);
      v29 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators;
      swift_beginAccess();
      v30 = *(v28 + v29);
      if (v30 >> 62)
      {
        if (sub_1D81920A4())
        {
LABEL_6:
          v31 = *(a2 + 32);
          v32 = *(v27 + 32);
          v33 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators;
          swift_beginAccess();
          v34 = *(v32 + v33);
          *v88 = MEMORY[0x1E69E7CC0];
          v35 = sub_1D7E36AB8(v34);
          sub_1D8190DB4();
          for (i = 0; ; ++i)
          {
            if (v35 == i)
            {

              v40 = *v88;
              swift_beginAccess();
              sub_1D7F0A6A4(v40);
              swift_endAccess();

              v8 = v86;
              a2 = v87;
              v21 = v84;
              v22 = v83;
              goto LABEL_2;
            }

            if ((v34 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA714420](i, v34);
            }

            else
            {
              if (i >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_48;
              }
            }

            if (__OFADD__(i, 1))
            {
              break;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (!Strong || (Strong, (v38 = swift_unknownObjectWeakLoadStrong()) != 0) && (v39 = v38, v38, v39 == v31))
            {
            }

            else
            {
              sub_1D8192274();
              sub_1D81922B4();
              sub_1D81922C4();
              sub_1D8192284();
            }
          }

          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return;
        }
      }

      else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }
    }
  }

  sub_1D7F530BC(v21, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v41 = v79;
  v42 = v75;
  v75(v79, (v81 + v77), v8);
  v43 = v82;
  v42(v82, v41, v8);
  v44 = *(v78 + 36);
  sub_1D8191724();
  v74(v41, v8);
  while (1)
  {
    sub_1D81917B4();
    if (*(v43 + v44) == *v88)
    {
      break;
    }

    v45 = sub_1D81918F4();
    v47 = *v46;

    v45(v88, 0);
    sub_1D81917C4();
    if (v47 == a2)
    {
LABEL_32:
    }

    else
    {
      v48 = *(v47 + 32);
      sub_1D8090AD4();

      switch(*(*(v47 + 32) + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 9))
      {
        case 1:
          v49 = *(v47 + 24);
          v50 = 2;
          goto LABEL_30;
        case 2:
          v49 = *(v47 + 24);
          v88[0] = 0;
          goto LABEL_31;
        case 3:
          v51 = *(a2 + 32);
          v52 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators;
          swift_beginAccess();
          v83 = v52;
          v84 = v51;
          v53 = *&v51[v52];
          v54 = sub_1D7E36AB8(v53);
          sub_1D8190DB4();
          v55 = 0;
          break;
        case 4:
          v49 = *(v47 + 24);
          v50 = 4;
          goto LABEL_30;
        case 5:
          goto LABEL_32;
        default:
          v49 = *(v47 + 24);
          v50 = 3;
LABEL_30:
          v88[0] = v50;
LABEL_31:
          sub_1D8090B4C(v49, v88, 0, 0, 0.0, 0.0);
          goto LABEL_32;
      }

      while (1)
      {
        if (v54 == v55)
        {

          v59 = *(v47 + 32);

          sub_1D818F154();

          v59[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_initialCoordinatingPresentationState] = v88[0];

          v60 = *(v47 + 32);
          type metadata accessor for CardViewAnimationCoordinator.CoordinatingCoordinator();
          swift_allocObject();
          sub_1D808F888(v60);
          v62 = v83;
          v61 = v84;
          v63 = swift_beginAccess();
          MEMORY[0x1DA713500](v63);
          sub_1D7E2893C(*((*&v61[v62] & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_1D8191404();
          swift_endAccess();

          goto LABEL_45;
        }

        if ((v53 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA714420](v55, v53);
        }

        else
        {
          if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }
        }

        if (__OFADD__(v55, 1))
        {
          goto LABEL_49;
        }

        v56 = swift_unknownObjectWeakLoadStrong();
        if (v56)
        {
          v57 = v56;
          v58 = *(v47 + 32);

          if (v57 == v58)
          {
            break;
          }
        }

        ++v55;
      }

LABEL_45:
      a2 = v87;
      v43 = v82;
    }
  }

  sub_1D7F530BC(v43, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  sub_1D8090AD4();
  v64 = *(a2 + 24);
  v65 = v71;
  v88[0] = v71;
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = swift_allocObject();
  v68 = v72;
  v69 = v73;
  *(v67 + 16) = v72;
  *(v67 + 24) = v69;
  *(v67 + 32) = v66;
  *(v67 + 40) = v65;
  sub_1D7E19F24(v68, v69);

  sub_1D8090B4C(v64, v88, sub_1D7F530AC, v67, 0.0, 0.0);
}

void sub_1D7F4FE40(char a1, void (*a2)(void), uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a2)
  {
    a2(a1 & 1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D7F4EBE8(v7);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = a5;
    sub_1D7F48A54(&v11, 0, 1);
  }
}

Swift::Bool __swiftcall CardContainerController.accessibilityPerformEscape()()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v3, v4, MEMORY[0x1E69D6AD8]);
  v6 = v5;
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_1();
  v10 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v11 = *(v8 + 16);
  v11(v1, v0 + v10, v6);
  sub_1D818F974();
  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_54_1();
  v12(v13);
  if (v20)
  {

    sub_1D818F154();

    v14 = *(v20 + 24);
    switch(v20)
    {
      case 2:
      case 4:
      case 5:
      case 6:
      case 7:

        break;
      default:
        v19 = *(*(v20 + 32) + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 8);
        v11(v1, v2 + v10, v6);
        v15 = v14;
        v16 = sub_1D818F9B4();
        v17 = OUTLINED_FUNCTION_54_1();
        v12(v17);
        result = v16 - 1;
        if (__OFSUB__(v16, 1))
        {
          __break(1u);
          return result;
        }

        CardContainerController.setCard(at:to:animated:completion:)();
        if (v19)
        {
          UIAccessibilityPostNotification(*MEMORY[0x1E69DD930], 0);
        }

        else
        {
          CardView.focusGrabHandleForAccessibility()();
        }

        break;
    }
  }

  OUTLINED_FUNCTION_100();
  return result;
}

uint64_t sub_1D7F50174(void *a1)
{
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19[-1] - v6;
  sub_1D7F52E60(0, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-1] - v10;
  v12 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v12, v4);
  sub_1D7F523A4(&qword_1EDBB1FD8);
  sub_1D8191134();
  v13 = *(v9 + 44);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  while (1)
  {
    sub_1D81917B4();
    if (*&v11[v13] == v19[0])
    {
      break;
    }

    v14 = sub_1D81918F4();
    v16 = *v15;

    v14(v19, 0);
    sub_1D81917C4();
    if (sub_1D7F459D8(a1))
    {
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_6:
  sub_1D7F530BC(v11, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  return v16;
}

id sub_1D7F50440(uint64_t a1)
{
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27[-1] - v6;
  v8 = MEMORY[0x1E69D6AE0];
  sub_1D7F52E60(0, &qword_1EDBAE338, &qword_1EDBB1FD8, MEMORY[0x1E69D6AE0], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27[-1] - v10;
  sub_1D7F52E60(0, &qword_1EDBAE340, &qword_1EDBB1FD8, v8, MEMORY[0x1E69E6E40]);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27[-1] - v14;
  v16 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  (*(v5 + 16))(v11, v1 + v16, v4);
  (*(v5 + 32))(v7, v11, v4);
  sub_1D7F523A4(&qword_1EDBB1FD8);
  sub_1D8191134();
  v17 = *(v13 + 44);
  sub_1D7F52E60(0, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v19 = *(v18 + 36);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  for (i = 0; ; ++i)
  {
    sub_1D81917B4();
    if (*&v15[v19] == v27[0])
    {
      *&v15[v17] = i;
      sub_1D7F530BC(v15, &qword_1EDBAE340, &qword_1EDBB1FD8, MEMORY[0x1E69D6AE0], MEMORY[0x1E69E6E40]);
      return 0;
    }

    v21 = sub_1D81918F4();
    v23 = *v22;

    v21(v27, 0);
    result = sub_1D81917C4();
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v23 + 32) == a1)
    {
      *&v15[v17] = i + 1;
      sub_1D7F530BC(v15, &qword_1EDBAE340, &qword_1EDBB1FD8, MEMORY[0x1E69D6AE0], MEMORY[0x1E69E6E40]);
      v25 = *(v23 + 16);

      return v25;
    }
  }

  __break(1u);
  return result;
}

int64_t *sub_1D7F50844(int64_t *result, int64_t a2, char a3, int64_t *a4)
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
    sub_1D7E09CC4(0, &qword_1EDBB2C10, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = (v10 + 4);
  v13 = a4 + 4;
  if (v5)
  {
    if (v10 != a4 || v13 + v8 <= v12)
    {
      memmove(v12, v13, v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1D7F50950()
{
  result = qword_1EDBB0650;
  if (!qword_1EDBB0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0650);
  }

  return result;
}

uint64_t type metadata accessor for CardContainerController(uint64_t a1)
{
  result = qword_1EDBB0630;
  if (!qword_1EDBB0630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7F50A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_79();
  v31 = v30;
  if (*(v30 + 16) && (sub_1D7F52D5C(), OUTLINED_FUNCTION_14(), v32 = sub_1D8192164(), v33 = v32, (v34 = *(v31 + 16)) != 0))
  {
    v35 = 0;
    v36 = v32 + 56;
    while (v35 < *(v31 + 16))
    {
      v37 = (v31 + 32 + 16 * v35);
      v39 = *v37;
      v38 = v37[1];
      ++v35;
      sub_1D81927E4();
      sub_1D8190DB4();
      sub_1D8190FF4();
      v40 = sub_1D8192824();
      v41 = ~(-1 << *(v33 + 32));
      while (1)
      {
        v42 = v40 & v41;
        v43 = (v40 & v41) >> 6;
        v44 = *(v36 + 8 * v43);
        v45 = 1 << (v40 & v41);
        if ((v45 & v44) == 0)
        {
          break;
        }

        v46 = (*(v33 + 48) + 16 * v42);
        v47 = *v46 == v39 && v46[1] == v38;
        if (v47 || (sub_1D8192634() & 1) != 0)
        {

          goto LABEL_16;
        }

        v40 = v42 + 1;
      }

      *(v36 + 8 * v43) = v45 | v44;
      v48 = (*(v33 + 48) + 16 * v42);
      *v48 = v39;
      v48[1] = v38;
      v49 = *(v33 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_19;
      }

      *(v33 + 16) = v51;
LABEL_16:
      if (v35 == v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_80_0();
  }
}

void sub_1D7F50B90()
{
  OUTLINED_FUNCTION_79();
  v6 = v5;
  if (*(v5 + 16) && (sub_1D7E25D58(0, v2, v3, v4, MEMORY[0x1E69E6A10]), OUTLINED_FUNCTION_14(), v7 = sub_1D8192164(), (v8 = *(v6 + 16)) != 0))
  {
    OUTLINED_FUNCTION_51_2();
    while (v1 < *(v6 + 16))
    {
      OUTLINED_FUNCTION_85_1();
      MEMORY[0x1DA714A00](v0);
      sub_1D8192824();
      while (1)
      {
        OUTLINED_FUNCTION_49_1();
        if (v10)
        {
          break;
        }

        if (*(*(v7 + 48) + v9) == v0)
        {
          goto LABEL_11;
        }
      }

      OUTLINED_FUNCTION_39_2();
      if (v12)
      {
        goto LABEL_14;
      }

      *(v7 + 16) = v11;
LABEL_11:
      if (v1 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_80_0();
  }
}

uint64_t sub_1D7F50CAC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D7E76C38(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D7F50D94(v6);
  return sub_1D8192284();
}

uint64_t sub_1D7F50D28(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D8120A84();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1D7F50E74(v6);
  *a1 = v2;
  return result;
}

void sub_1D7F50D94(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1D81925A4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1D7FE73D4(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1D7F51114(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1D7F50F68(0, v3, 1, a1);
  }
}

uint64_t sub_1D7F50E74(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D81925A4();
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
        v6 = sub_1D81913D4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1D7F5185C(v7, v8, a1, v4);
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
    return sub_1D7F510A0(0, v2, 1, a1);
  }

  return result;
}

void sub_1D7F50F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = a1 - a3;
    while (2)
    {
      v13 = v5;
      v14 = a3;
      v12 = v6;
      do
      {

        sub_1D818F154();

        sub_1D818F154();

        v7 = qword_1D81A6BF0[v16];
        v8 = qword_1D81A6BF0[v15];

        if (v7 >= v8)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return;
        }

        v9 = *v5;
        *v5 = v5[1];
        v5[1] = v9;
        --v5;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v14 + 1;
      v5 = v13 + 1;
      v6 = v12 - 1;
      if (v14 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D7F510A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = qword_1D81A6BF0[v7];
      v9 = v6;
      v10 = v5;
      do
      {
        v11 = *(v10 - 1);
        if (v8 >= qword_1D81A6BF0[v11])
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v10 = v11;
        *--v10 = v7;
      }

      while (!__CFADD__(v9++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D7F51114(char **a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_86:
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_88:
      v73 = (v8 + 16);
      v74 = *(v8 + 16);
      while (v74 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = v8;
        v76 = (v8 + 16 * v74);
        v77 = *v76;
        v8 = &v73[2 * v74];
        v78 = *(v8 + 8);
        sub_1D7F51E44((*a3 + 8 * *v76), (*a3 + 8 * *v8), (*a3 + 8 * v78), v95);
        if (v5)
        {
          break;
        }

        if (v78 < v77)
        {
          goto LABEL_112;
        }

        if (v74 - 2 >= *v73)
        {
          goto LABEL_113;
        }

        *v76 = v77;
        v76[1] = v78;
        v79 = *v73 - v74;
        if (*v73 < v74)
        {
          goto LABEL_114;
        }

        v74 = *v73 - 1;
        sub_1D8120818((v8 + 16), v79, v8);
        *v73 = v74;
        v8 = v75;
      }

LABEL_96:

      return;
    }

LABEL_121:
    v8 = sub_1D8120804(v8);
    goto LABEL_88;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if (v7 + 1 < v6)
    {
      v88 = v6;
      v82 = v5;
      v84 = v8;
      v95 = (v7 + 1);
      v85 = v7;
      v11 = *a3 + 8 * v7 + 16;
      v8 = &OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_presentationState;

      sub_1D818F154();

      sub_1D818F154();

      v89 = qword_1D81A6BF0[v98];
      v91 = qword_1D81A6BF0[v99];

      v80 = 8 * v9;
      v12 = 8 * v9 + 8;
      do
      {
        v5 = v95;
        v13 = v12;
        if (++v95 >= v88)
        {
          break;
        }

        v8 = v91 < v89;

        sub_1D818F154();

        sub_1D818F154();

        v14 = qword_1D81A6BF0[v97];
        v15 = qword_1D81A6BF0[v96];

        v11 += 8;
        v12 = v13 + 8;
      }

      while (v91 < v89 != v14 >= v15);
      if (v91 >= v89)
      {
        v5 = v82;
        v8 = v84;
        v10 = v95;
        v9 = v85;
      }

      else
      {
        v10 = v95;
        v9 = v85;
        if (v95 < v85)
        {
          goto LABEL_118;
        }

        if (v85 >= v95)
        {
          v5 = v82;
          v8 = v84;
        }

        else
        {
          v16 = v85;
          v8 = v84;
          v17 = v80;
          do
          {
            if (v16 != v5)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v19 = *(v18 + v17);
              *(v18 + v17) = *(v18 + v13);
              *(v18 + v13) = v19;
            }

            ++v16;
            v13 -= 8;
            v17 += 8;
            v20 = v16 < v5--;
          }

          while (v20);
          v5 = v82;
        }
      }
    }

    v21 = a3[1];
    if (v10 < v21)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (&v10[-v9] < a4)
      {
        break;
      }
    }

LABEL_34:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      v8 = v71;
    }

    v31 = *(v8 + 16);
    v32 = v31 + 1;
    if (v31 >= *(v8 + 24) >> 1)
    {
      sub_1D7EE4840();
      v8 = v72;
    }

    *(v8 + 16) = v32;
    v33 = (v8 + 32);
    v34 = (v8 + 32 + 16 * v31);
    *v34 = v9;
    v34[1] = v10;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v95 = v10;
    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        v36 = &v33[2 * v32 - 2];
        v37 = (v8 + 16 * v32);
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v38 = *(v8 + 32);
          v39 = *(v8 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_54:
          if (v41)
          {
            goto LABEL_103;
          }

          v53 = *v37;
          v52 = v37[1];
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_106;
          }

          v57 = v36[1];
          v58 = v57 - *v36;
          if (__OFSUB__(v57, *v36))
          {
            goto LABEL_109;
          }

          if (__OFADD__(v55, v58))
          {
            goto LABEL_111;
          }

          if (v55 + v58 >= v40)
          {
            if (v40 < v58)
            {
              v35 = v32 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        if (v32 < 2)
        {
          goto LABEL_105;
        }

        v60 = *v37;
        v59 = v37[1];
        v48 = __OFSUB__(v59, v60);
        v55 = v59 - v60;
        v56 = v48;
LABEL_69:
        if (v56)
        {
          goto LABEL_108;
        }

        v62 = *v36;
        v61 = v36[1];
        v48 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v63 < v55)
        {
          goto LABEL_83;
        }

LABEL_76:
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_98:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v67 = v8;
        v68 = &v33[2 * v35 - 2];
        v8 = *v68;
        v69 = &v33[2 * v35];
        v70 = v69[1];
        sub_1D7F51E44((*a3 + 8 * *v68), (*a3 + 8 * *v69), (*a3 + 8 * v70), v93);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v70 < v8)
        {
          goto LABEL_98;
        }

        v5 = v67[2];
        if (v35 > v5)
        {
          goto LABEL_99;
        }

        *v68 = v8;
        v68[1] = v70;
        if (v35 >= v5)
        {
          goto LABEL_100;
        }

        v32 = v5 - 1;
        sub_1D8120818(v69 + 16, v5 - 1 - v35, &v33[2 * v35]);
        v8 = v67;
        v67[2] = v5 - 1;
        v20 = v5 > 2;
        v5 = 0;
        if (!v20)
        {
          goto LABEL_83;
        }
      }

      v42 = &v33[2 * v32];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_101;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_102;
      }

      v49 = v37[1];
      v50 = v49 - *v37;
      if (__OFSUB__(v49, *v37))
      {
        goto LABEL_104;
      }

      v48 = __OFADD__(v40, v50);
      v51 = v40 + v50;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v51 >= v45)
      {
        v65 = *v36;
        v64 = v36[1];
        v48 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v48)
        {
          goto LABEL_115;
        }

        if (v40 < v66)
        {
          v35 = v32 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_54;
    }

LABEL_83:
    v7 = v95;
    v6 = a3[1];
    if (v95 >= v6)
    {
      goto LABEL_86;
    }
  }

  v22 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_119;
  }

  if (v22 >= v21)
  {
    v22 = a3[1];
  }

  if (v22 < v9)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (v10 == v22)
  {
    goto LABEL_34;
  }

  v83 = v5;
  v23 = *a3;
  v24 = (*a3 + 8 * v10 - 8);
  v86 = v9;
  v25 = v9 - v10;
  v90 = v22;
LABEL_27:
  v95 = v10;
  v26 = v25;
  v92 = v24;
  while (1)
  {

    sub_1D818F154();

    sub_1D818F154();

    v27 = qword_1D81A6BF0[v101];
    v28 = qword_1D81A6BF0[v100];

    if (v27 >= v28)
    {
LABEL_32:
      v10 = v95 + 1;
      v24 = v92 + 1;
      --v25;
      if (v95 + 1 == v90)
      {
        v10 = v90;
        v5 = v83;
        v9 = v86;
        goto LABEL_34;
      }

      goto LABEL_27;
    }

    if (!v23)
    {
      break;
    }

    v29 = *v24;
    *v24 = v24[1];
    v24[1] = v29;
    --v24;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_32;
    }
  }

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
}

void sub_1D7F5185C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = qword_1D81A6BF0[*(*a3 + v8)];
        v10 = *(*a3 + v8);
        v11 = qword_1D81A6BF0[*(*a3 + v6)];
        v12 = v6 + 2;
        if (v5 <= v6 + 2)
        {
          v8 = v6 + 2;
        }

        else
        {
          v8 = v5;
        }

        while (v12 < v5)
        {
          v13 = *(*a3 + v12);
          v14 = (v9 < v11) ^ (qword_1D81A6BF0[v13] >= qword_1D81A6BF0[v10]);
          ++v12;
          v10 = v13;
          if ((v14 & 1) == 0)
          {
            v8 = v12 - 1;
            break;
          }
        }

        if (v9 < v11)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            v15 = v8 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }
            }

            while (++v16 < v15--);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = qword_1D81A6BF0[v23];
              v25 = v22;
              v26 = v21;
              do
              {
                v27 = *(v26 - 1);
                if (v24 >= qword_1D81A6BF0[v27])
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v26 = v27;
                *--v26 = v23;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE4840();
        v7 = v70;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1D7EE4840();
        v7 = v71;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v74;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_55:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_70:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_84;
          }

LABEL_77:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1D7F52124((*a3 + *v65), (*a3 + *v67), (*a3 + v68), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7[2];
          if (v33 > v69)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v69)
          {
            goto LABEL_93;
          }

          v30 = v69 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v69 - 1 - v33));
          v7[2] = v69 - 1;
          if (v69 <= 2)
          {
            goto LABEL_84;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_55;
      }

LABEL_84:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1D7F51D18(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1D7F51D18(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1D8120804(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = v5 + 2;
  for (i = v5[2]; ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = &v5[2 * i];
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1D7F52124((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1D7F51E44(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1D80E75B8(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    for (i = v10; ; v10 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      sub_1D818F154();

      sub_1D818F154();

      v12 = qword_1D81A6BF0[v29];
      v13 = qword_1D81A6BF0[v28];

      if (v12 >= v13)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 8;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 8;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v14;
    goto LABEL_13;
  }

  sub_1D80E75B8(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
  v27 = v4;
  v25 = v7;
LABEL_15:
  v16 = v6 - 8;
  v5 -= 8;
  while (v10 > v4 && v6 > v7)
  {
    v18 = v16;

    sub_1D818F154();

    sub_1D818F154();

    v19 = qword_1D81A6BF0[v31];
    v20 = qword_1D81A6BF0[v30];

    v21 = v5 + 8;
    if (v19 < v20)
    {
      v15 = v21 == v6;
      v6 = v18;
      v7 = v25;
      v4 = v27;
      if (!v15)
      {
        *v5 = *v18;
        v6 = v18;
      }

      goto LABEL_15;
    }

    if (v10 != v21)
    {
      *v5 = *(v10 - 1);
    }

    v5 -= 8;
    v10 -= 8;
    v7 = v25;
    v4 = v27;
    v16 = v18;
  }

LABEL_28:
  v22 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v22])
  {
    memmove(v6, v4, 8 * v22);
  }

  return 1;
}

uint64_t sub_1D7F52124(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    sub_1D80E5E04(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }

      v12 = *v4;
      if (qword_1D81A6BF0[*v6] < qword_1D81A6BF0[v12])
      {
        break;
      }

      v15 = v4 + 1;
      if (v7 < v4 || v7 >= v15)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v7;
      v4 = v15;
    }

    if (v7 >= v6 && v7 < v6 + 1)
    {
      ++v6;
      v15 = v4;
      goto LABEL_20;
    }

    LOBYTE(v12) = *v6++;
    v15 = v4;
LABEL_19:
    *v7 = v12;
    goto LABEL_20;
  }

  sub_1D80E5E04(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_22:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (qword_1D81A6BF0[v18] < qword_1D81A6BF0[v19])
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_22;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_43:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_1D7F522C8(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

void sub_1D7F5232C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7F523A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_51();
    sub_1D7F5232C(255, v3, v4, MEMORY[0x1E69D6AD8]);
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7F52404(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7F52494()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1D7F524CC(uint64_t a1)
{
  sub_1D7F5232C(319, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CardContainerController.cardViewAnimationCoordinator(_:willTransitionTo:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x160))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
}

uint64_t dispatch thunk of CardContainerController.cardViewAnimationCoordinator(_:didTransitionTo:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))();
}

_BYTE *storeEnumTagSinglePayload for CardContainerController.Event(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7F52D08()
{
  result = qword_1EDBB0648;
  if (!qword_1EDBB0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0648);
  }

  return result;
}

void sub_1D7F52D5C()
{
  if (!qword_1EDBB2EC0)
  {
    v0 = sub_1D8192174();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2EC0);
    }
  }
}

void sub_1D7F52DC4(uint64_t a1, double a2)
{
  if (!qword_1EDBAE3A8)
  {
    sub_1D7F52E60(255, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
    sub_1D7F52F00();
    v2 = sub_1D8192344();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDBAE3A8);
    }
  }
}

void sub_1D7F52E60(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_0_51();
    sub_1D7F5232C(255, v8, v9, MEMORY[0x1E69D6AD8]);
    sub_1D7F523A4(a3);
    v10 = OUTLINED_FUNCTION_53();
    v11 = a5(v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1D7F52F00()
{
  result = qword_1EDBAE298;
  if (!qword_1EDBAE298)
  {
    sub_1D7F52E60(255, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAE298);
  }

  return result;
}

uint64_t sub_1D7F52F90(uint64_t a1, uint64_t a2)
{
  sub_1D7F52E60(0, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7F5302C(uint64_t a1, double a2)
{
  sub_1D7F52DC4(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7F530BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1D7F52E60(0, a2, a3, a4, a5);
  OUTLINED_FUNCTION_8();
  (*(v6 + 8))(a1);
  return a1;
}

id sub_1D7F53140(void *a1)
{
  v1 = a1;
  v2 = UIApplication.key_window.getter();

  return v2;
}

id UIApplication.key_window.getter()
{
  if (qword_1EDBBC7A8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong keyWindow];

  return v2;
}

id static UIApplication.appIsInstalled(for:)(uint64_t a1, uint64_t a2)
{
  sub_1D7F2B76C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D818E644();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E624();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D7F2B828(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = [objc_opt_self() sharedApplication];
    v11 = sub_1D818E5C4();
    v9 = [v10 canOpenURL_];

    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

uint64_t BlueprintPipelineRunOptions.process.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x235uLL);
  memcpy(a1, (v1 + 16), 0x235uLL);
  return sub_1D7E513F4(__dst, v4);
}

uint64_t sub_1D7F53468(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 565))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void sub_1D7F534B8(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    v5 = a2 - 0x7FFFFFFF;
    bzero(a1, 0x235uLL);
    *a1 = v5;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 565) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 565) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = a2;
    }
  }
}

double sub_1D7F5353C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 552) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 564) = 0;
    *(a1 + 560) = 0;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 128) = (a2 - 1);
  }

  return result;
}

uint64_t BlueprintViewSupplementaryData.init(kind:indexPath:index:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for BlueprintViewSupplementaryData(0);
  v8 = *(v7 + 20);
  v9 = sub_1D818E994();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t MultiScrollViewDelegate.addDelegate<A>(_:)(void *a1)
{
  v2 = v1;
  [*(v1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) addObject_];
  v29 = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_1D7F539C4(*(*(v5 + 48) + 8 * (v12 | (v11 << 6))), *(*(v5 + 56) + (v12 | (v11 << 6))), a1, &v29);
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v28 = v29;
  v27 = *(v29 + 16);
  if (!v27)
  {
  }

  v13 = 0;
  v26 = v29 + 32;
  while (v13 < *(v28 + 16))
  {
    v14 = *(v26 + 8 * v13);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    v16 = sub_1D7E3FE88();
    if (__OFADD__(v15[2], (v17 & 1) == 0))
    {
      goto LABEL_26;
    }

    v18 = v16;
    v19 = v17;
    sub_1D7F55514(0);
    if (sub_1D8192374())
    {
      v20 = sub_1D7E3FE88();
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v18 = v20;
    }

    if (v19)
    {
      *(v15[7] + v18) = 1;
    }

    else
    {
      v15[(v18 >> 6) + 8] |= 1 << v18;
      *(v15[6] + 8 * v18) = v14;
      *(v15[7] + v18) = 1;
      v22 = v15[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_27;
      }

      v15[2] = v24;
    }

    ++v13;
    *(v2 + v4) = v15;
    swift_endAccess();
    if (v27 == v13)
    {
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1D8192714();
  __break(1u);
  return result;
}

void sub_1D7F539C4(id result, char a2, id a3, uint64_t *a4)
{
  if ((a2 & 1) == 0)
  {
    if ([a3 respondsToSelector_])
    {
      sub_1D7EE4338();
      v6 = *(*a4 + 16);
      sub_1D7EE4564(v6);
      v7 = *a4;
      *(v7 + 16) = v6 + 1;
      *(v7 + 8 * v6 + 32) = result;
    }
  }
}

uint64_t MultiScrollViewDelegate.removeDelegate<A>(_:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) removeObject_];
  v3 = OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache;
  OUTLINED_FUNCTION_12_15(v2);
  *(v1 + v3) = MEMORY[0x1E69E7CC8];
}

uint64_t MultiScrollViewDelegate.replaceDelegate<A>(_:withDelegate:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates);
  [v4 removeObject_];
  v5 = [v4 addObject_];
  v6 = OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache;
  OUTLINED_FUNCTION_12_15(v5);
  *(v2 + v6) = MEMORY[0x1E69E7CC8];
}

uint64_t MultiScrollViewDelegate.responds(to:)(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache;
    swift_beginAccess();
    v5 = *(v1 + v4);
    if (*(v5 + 16) && (v6 = sub_1D7E3FE88(), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + v6);
    }

    else
    {
      swift_endAccess();
      v8 = sub_1D7F53C0C(1u, 0, v2, v3);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D7E3FCC4(v8 & 1, v3, isUniquelyReferenced_nonNull_native, v10, v11, v12, v13, v14, *(v2 + v4), v16);
      *(v2 + v4) = v15;
    }

    swift_endAccess();
    return v8 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7F53C0C(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D818E584();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a3 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (result)
  {
    v14 = result;
    sub_1D8191C94();

    sub_1D818E574();
    if (v20)
    {
      sub_1D7E895D8(&v19, &v17);
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      v15 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      v16 = [v15 respondsToSelector_];
      swift_unknownObjectRelease();
      (*(v9 + 8))(v12, v8);
      if (((v16 ^ a1) & 1) == 0)
      {
        a2 = v16;
      }
    }

    else
    {
      (*(v9 + 8))(v12, v8);
    }

    return (a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7F53DB0(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3, void *a4)
{
  v8 = sub_1D818E584();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a3 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (result)
  {
    v14 = result;
    sub_1D8191C94();

    sub_1D818E574();
    if (v20)
    {
      sub_1D7E895D8(&v19, &v17);
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      v15 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      if ([v15 respondsToSelector_])
      {
        v16 = [v15 scrollViewShouldScrollToTop_];
        swift_unknownObjectRelease();
        (*(v9 + 8))(v12, v8);

        if (((v16 ^ a1) & 1) == 0)
        {
          a2 = v16;
        }

        return (a2 & 1);
      }

      swift_unknownObjectRelease();
    }

    (*(v9 + 8))(v12, v8);

    return (a2 & 1);
  }

  __break(1u);
  return result;
}

id MultiScrollViewDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultiScrollViewDelegate.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache] = MEMORY[0x1E69E7CC8];
  v2 = OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates;
  *&v0[v2] = [objc_opt_self() hashTableWithOptions_];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id MultiScrollViewDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D7F54124(uint64_t a1, void *a2, SEL *a3)
{
  v6 = sub_1D818E584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (v11)
  {
    v12 = v11;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v17)
      {
        break;
      }

      sub_1D7E895D8(&v16, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      v13 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      if ([v13 respondsToSelector_])
      {
        [v13 *a3];
      }

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F542B0(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1D818E584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (v11)
  {
    v12 = v11;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v17)
      {
        break;
      }

      sub_1D7E895D8(&v16, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      v13 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      if ([v13 respondsToSelector_])
      {
        [v13 scrollViewWillBeginZooming:a2 withView:a3];
      }

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F54448(uint64_t a1, void *a2, char a3)
{
  v6 = sub_1D818E584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (v11)
  {
    v12 = v11;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v17)
      {
        break;
      }

      sub_1D7E895D8(&v16, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      v13 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      if ([v13 respondsToSelector_])
      {
        [v13 scrollViewDidEndDragging:a2 willDecelerate:a3 & 1];
      }

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F545DC(uint64_t a1, void *a2, void *a3, double a4)
{
  v8 = sub_1D818E584();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(a1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (v13)
  {
    v14 = v13;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v19)
      {
        break;
      }

      sub_1D7E895D8(&v18, &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      v15 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      if ([v15 respondsToSelector_])
      {
        [v15 scrollViewDidEndZooming:a2 withView:a3 atScale:a4];
      }

      swift_unknownObjectRelease();
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F54784(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1D818E584();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*(a1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (v15)
  {
    v16 = v15;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v21)
      {
        break;
      }

      sub_1D7E895D8(&v20, &v18);
      __swift_project_boxed_opaque_existential_1(&v18, v19);
      v17 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v18);
      if ([v17 respondsToSelector_])
      {
        [v17 scrollViewWillEndDragging:a2 withVelocity:a3 targetContentOffset:{a4, a5}];
      }

      swift_unknownObjectRelease();
    }

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    __break(1u);
  }
}

id sub_1D7F54930(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1D818E584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a2 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (result)
  {
    v12 = result;
    sub_1D8191C94();

    sub_1D818E574();
    if (v19)
    {
      sub_1D7E895D8(&v18, &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      v13 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      if ([v13 respondsToSelector_])
      {
        v14 = [v13 viewForZoomingInScrollView_];
        swift_unknownObjectRelease();
        (*(v7 + 8))(v10, v6);
        if (v14)
        {

          return v14;
        }

LABEL_8:
        v15 = a1;

        return a1;
      }

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t MultiScrollViewDelegate.debugDescription.getter()
{
  sub_1D81921A4();

  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) description];
  v2 = sub_1D8190F14();
  v4 = v3;

  MEMORY[0x1DA713260](v2, v4);

  return 0xD000000000000027;
}

void __swiftcall MultiScrollViewDelegate.viewForZooming(in:)(UIView_optional *__return_ptr retstr, UIScrollView *in)
{
  v3 = in;

  sub_1D7F54930(0, v2, v3);
}

Swift::Bool __swiftcall MultiScrollViewDelegate.scrollViewShouldScrollToTop(_:)(UIScrollView *a1)
{
  v2 = a1;

  return sub_1D7F53DB0(0, 1u, v1, v2);
}

Swift::Void __swiftcall MultiScrollViewDelegate.scrollViewWillBeginZooming(_:with:)(UIScrollView *_, UIView_optional *with)
{
  v4 = with;
  v5 = _;
  v6 = OUTLINED_FUNCTION_14();

  sub_1D7F542B0(v6, v7, with);
}

Swift::Void __swiftcall MultiScrollViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  v3 = _;
  v4 = OUTLINED_FUNCTION_14();

  sub_1D7F54448(v4, v5, willDecelerate);
}

void MultiScrollViewDelegate.scrollViewDidEndZooming(_:with:atScale:)(void *a1, void *a2, double a3)
{
  v6 = a2;
  v7 = a1;
  v8 = OUTLINED_FUNCTION_14();

  sub_1D7F545DC(v8, v9, a2, a3);
}

void MultiScrollViewDelegate.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = a1;
  v8 = OUTLINED_FUNCTION_14();

  sub_1D7F54784(v8, v9, a2, a3, a4);
}

void sub_1D7F55514(uint64_t a1)
{
  if (!qword_1EDBB2E90)
  {
    sub_1D7E40268();
    v1 = sub_1D8192394();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2E90);
    }
  }
}

void sub_1D7F55578(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_52(a1, a2, a3, a4, a5);
  sub_1D7E895D8(v8, (*(v7 + 56) + 32 * v6));
  OUTLINED_FUNCTION_7_22();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_1D7F555BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_52(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  sub_1D818F824();
  OUTLINED_FUNCTION_0_13();
  (*(v10 + 32))(v9 + *(v10 + 72) * a1, a4);
  OUTLINED_FUNCTION_7_22();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v11;
  }
}

void sub_1D7F55638(unint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  sub_1D8192364();
  OUTLINED_FUNCTION_0_13();
  (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  sub_1D7E895D8(a3, (*(a4 + 56) + 32 * a1));
  OUTLINED_FUNCTION_7_22();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

void sub_1D7F5575C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  *(v5[6] + v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_19(v5, v10);
  }
}

void sub_1D7F557C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  OUTLINED_FUNCTION_0_52(a1, a2, a3, a4, a5);
  v12 = *(v11 + 56);
  v14 = v13(0);
  sub_1D7E2BA20(a4, v12 + *(*(v14 - 8) + 72) * a1, a7);
  OUTLINED_FUNCTION_7_22();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }
}

void sub_1D7F55844(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  v6 = (v5[6] + 16 * v4);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 8 * v4) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_19(v5, v12);
  }
}

void sub_1D7F55880(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_3_37(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + 8 * v3) = v5;
  *(v4[7] + 8 * v3) = v6;
  v7 = v4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_15(v4, v9);
  }
}

void sub_1D7F558C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_1_42(a1, a2, a3, a4, a5);
  v7 = (v6 + 24 * v5);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  OUTLINED_FUNCTION_13_10(v5, v13, v9, v11, v12);
  if (v16)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_20(v14, v15);
  }
}

void sub_1D7F55904(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  v6 = (v5[6] + 24 * v4);
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v10 = (v5[7] + 16 * v4);
  *v10 = v11;
  v10[1] = v12;
  v13 = v5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_19(v5, v15);
  }
}

uint64_t sub_1D7F5594C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_3_37(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t FastScrollingComparison.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7F55A5C()
{
  result = qword_1ECA0DFB0;
  if (!qword_1ECA0DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DFB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FastScrollingComparison(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t ImageCache.fetchImage(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1D7EA6B0C(v4, v1, v2, v3);
}

uint64_t sub_1D7F55BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D7F588D4;

  return ImageCacheType.fetchImage(for:expires:)(a1, v7, a3, a4);
}

uint64_t sub_1D7F55CAC(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 32) = a1;
  *(v3 + 16) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D7F55CD4, 0, 0);
}

uint64_t sub_1D7F55CD4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = v0 + 16;
  *(v3 + 24) = v2;
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
  *v4 = v0;
  v4[1] = sub_1D7F55DDC;
  OUTLINED_FUNCTION_5_20();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D7F55DDC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {
    v6 = sub_1D7F55EF0;
  }

  else
  {

    v6 = sub_1D7F55EE8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D7F55EF0()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImageCacheType.fetchImage(for:expires:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 80) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D7F55F78, 0, 0);
}

uint64_t sub_1D7F55F78()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
  *v5 = v0;
  v5[1] = sub_1D7F56088;
  OUTLINED_FUNCTION_5_20();

  return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D7F56088()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {
    v6 = sub_1D7F5619C;
  }

  else
  {

    v6 = sub_1D7F56194;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D7F5619C()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 8);

  return v1();
}

double sub_1D7F561FC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  sub_1D7F58718(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v15 = a3[3];
  v16 = a3[4];
  v17 = __swift_project_boxed_opaque_existential_1(a3, v15);
  sub_1D7EA78F0(v17, a4, 0, sub_1D7F587A8, v14, a2, v15, v16);

  return result;
}

double sub_1D7F5636C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  sub_1D7F58718(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v14);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  (*(a6 + 16))(a3, a4, 0, sub_1D7F588D0, v16, v19, a6);

  return result;
}

uint64_t sub_1D7F564E8(void *a1, id a2)
{
  if (a1)
  {
    sub_1D7F58718(0);
    v3 = a1;
    return sub_1D81914F4();
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_1D7F58628();
      swift_allocError();
      *v6 = 0;
    }

    sub_1D7F58718(0);
    return sub_1D81914E4();
  }
}

id sub_1D7F565BC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  sub_1D7E279E4(0xD00000000000001DLL, 0x80000001D81C9EE0, v0);
  [v0 setQualityOfService_];
  result = [v0 setMaxConcurrentOperationCount_];
  qword_1EDBBC1F0 = v0;
  return result;
}

void *ImageCache.deinit()
{
  ImageCache.cancelAllRunningOperations()();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  swift_unknownObjectRelease();

  return v0;
}

Swift::Void __swiftcall ImageCache.cancelAllRunningOperations()()
{
  sub_1D818EDB4();
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = sub_1D7E36AB8(v1);
  sub_1D8190DB4();
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      swift_beginAccess();
      sub_1D7E1A888(0, &qword_1EDBB33B8, sub_1D7F58098, MEMORY[0x1E69E62F8]);
      sub_1D7E1CF48(&unk_1EDBBC438, sub_1D7F58098, MEMORY[0x1E69D6A98]);
      sub_1D8191344();
      swift_endAccess();
      sub_1D818EDC4();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA714420](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v4 = sub_1D818F8D4();
    [v4 cancel];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t ImageCache.__deallocating_deinit()
{
  ImageCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t ImageCache.fetchImage(_:completion:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_7_23();

  return sub_1D7F58100(v1, v2, v3, v4, v5, v6);
}

Swift::Void __swiftcall ImageCache.cacheImageToDisk(cacheIdentifier:)(Swift::String cacheIdentifier)
{
  v2 = v1;
  object = cacheIdentifier._object;
  countAndFlagsBits = cacheIdentifier._countAndFlagsBits;
  if (qword_1EDBB1880 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDBC6038;
  v6 = sub_1D81919B4();
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D819FAB0;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D7E13BF4();
  *(v7 + 64) = v9;
  *(v7 + 32) = countAndFlagsBits;
  *(v7 + 40) = object;
  sub_1D8190DB4();
  sub_1D818FD44("Attempting to cache image for cacheIdentifier %{public}@", 56, 2, &dword_1D7DFF000, v5, v6, v7);

  v10._countAndFlagsBits = countAndFlagsBits;
  v10._object = object;
  v11 = MemoryImageCache.image(for:)(v10);
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D81919B4();
    sub_1D818FD44("Caching image to disk", 21, 2, &dword_1D7DFF000, v5, v13, MEMORY[0x1E69E7CC0]);
    v14 = *(v2 + 96);
    v17 = sub_1D8190EE4();
    [v14 cache:v12 forKey:v17 immediately:1];
  }

  else
  {
    v15 = sub_1D81919C4();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D819FAB0;
    *(v16 + 56) = v8;
    *(v16 + 64) = v9;
    *(v16 + 32) = countAndFlagsBits;
    *(v16 + 40) = object;
    sub_1D8190DB4();
    sub_1D818FD44("Found no image for cacheIdentifier %{public}@", 45, 2, &dword_1D7DFF000, v5, v15, v16);
  }
}

uint64_t ImageCache.fetchImage(_:expires:interestToken:completion:)()
{
  OUTLINED_FUNCTION_8_3();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_4_26();

  return sub_1D7EA78F0(v1, v2, v3, v4, v5, v6, v7, v8);
}

char *sub_1D7F56CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_8();
  v9 = swift_allocObject();
  swift_weakInit();
  sub_1D7E0E768(a2, v13);
  v10 = swift_allocObject();
  sub_1D7E05450(v13, v10 + 16);
  *(v10 + 56) = a4;
  *(v10 + 64) = a5;
  *(v10 + 72) = v9;
  *(v10 + 80) = a3;
  sub_1D8190DB4();

  v11 = sub_1D7F56DBC(a2, a3, sub_1D7EBB608, v10);

  return v11;
}

char *sub_1D7F56DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  sub_1D7E0E768(a1, v22);
  sub_1D7E0E768(v5 + 16, v24);
  sub_1D7E0E768(v5 + 56, v23);
  v9 = *(v5 + 96);
  v10 = objc_allocWithZone(type metadata accessor for ImageCacheOperation());
  swift_unknownObjectRetain();
  v11 = sub_1D7F574B8(v22, v8, v24, v23, v9);
  v12 = &v11[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_imageCompletionBlock];
  v13 = *&v11[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_imageCompletionBlock];
  v14 = *&v11[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_imageCompletionBlock + 8];
  *v12 = a3;
  *(v12 + 1) = a4;

  sub_1D7E0E10C(v13, v14);
  v15 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a3;
  v16[4] = a4;
  v22[4] = sub_1D7EBB50C;
  v22[5] = v16;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1D7E64940;
  v22[3] = &block_descriptor_60;
  v17 = _Block_copy(v22);

  v18 = v11;

  sub_1D7E19F24(sub_1D7EBB50C, v16);

  [v18 setCompletionBlock_];
  _Block_release(v17);

  sub_1D818EDB4();
  sub_1D7F58098(0);
  swift_allocObject();
  v19 = v18;
  sub_1D818F8F4();
  v20 = swift_beginAccess();
  MEMORY[0x1DA713500](v20);
  sub_1D7E2893C(*((*(v5 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D8191404();
  swift_endAccess();
  sub_1D818EDC4();
  if (qword_1EDBBC1E8 != -1)
  {
    swift_once();
  }

  [qword_1EDBBC1F0 addOperation_];
  return v19;
}

double ImageCache.setImage(_:for:expires:)(void *a1, uint64_t a2, char a3)
{
  sub_1D7E0E768(a2, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a1;
  sub_1D7E05450(v9, v6 + 32);
  *(v6 + 72) = a3;

  v7 = a1;
  sub_1D818FD04();

  return result;
}

uint64_t sub_1D7F57114(uint64_t a1, UIImage a2, void *a3, Swift::Bool a4)
{
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v10 = v9;
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  MemoryImageCache.cache(image:for:expires:)(a2, v11, a4);
}

uint64_t sub_1D7F571B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_7_23();

  return sub_1D7F58100(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1D7F57208(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D7F572C4;

  return sub_1D7F55CAC(a1, a2);
}

uint64_t sub_1D7F572C4()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_9_12();
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t ImageCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

char *sub_1D7F574B8(void *a1, char a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1D818EE64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image] = 0;
  *&v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error] = 0;
  v16 = &v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_imageCompletionBlock];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_creationTime;
  *&v6[v17] = CACurrentMediaTime();
  v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_canceled] = 0;
  sub_1D7E0E768(a1, &v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_request]);
  v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_expires] = a2;
  v50 = a3;
  sub_1D7E0E768(a3, &v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_downloader]);
  v49 = a4;
  sub_1D7E0E768(a4, &v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor]);
  *&v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_underlyingCache] = a5;
  v51 = 0;
  v52 = 0xE000000000000000;
  v48 = a5;
  swift_unknownObjectRetain();
  sub_1D81921A4();

  v51 = 0xD000000000000015;
  v52 = 0x80000001D81C9F00;
  sub_1D818EE54();
  v18 = sub_1D818EE44();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x1DA713260](v18, v20);

  MEMORY[0x1DA713260](62, 0xE100000000000000);
  v21 = v52;
  v22 = &v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription];
  *v22 = v51;
  v22[1] = v21;
  v23 = type metadata accessor for ImageCacheOperation();
  v56.receiver = v6;
  v56.super_class = v23;
  v24 = objc_msgSendSuper2(&v56, sel_init);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = *(v26 + 16);
  v28 = v24;
  v29 = v27(v25, v26);
  sub_1D7E279E4(v29, v30, v28);
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D819FAC0;
  v33 = *(v28 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription);
  v32 = *(v28 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription + 8);
  *(v31 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1D7E13BF4();
  *(v31 + 64) = v34;
  *(v31 + 32) = v33;
  *(v31 + 40) = v32;
  v36 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v37 = *(v35 + 8);
  sub_1D8190DB4();
  v38 = v37(v36, v35);
  sub_1D7F1E6C0(v38, &v51);

  if (!v52)
  {
    sub_1D7F25CC8(&v51);
    v44 = (v31 + 72);
    *(v31 + 96) = MEMORY[0x1E69E6158];
    *(v31 + 104) = v34;
    goto LABEL_5;
  }

  v39 = v54;
  v40 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v41 = (*(v40 + 32))(v39, v40);
  v43 = v42;
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  v44 = (v31 + 72);
  *(v31 + 96) = MEMORY[0x1E69E6158];
  *(v31 + 104) = v34;
  if (!v43)
  {
LABEL_5:
    *v44 = 0x3E656E6F6E3CLL;
    v43 = 0xE600000000000000;
    goto LABEL_6;
  }

  *v44 = v41;
LABEL_6:
  *(v31 + 80) = v43;
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  v45 = sub_1D8191E44();
  v46 = sub_1D81919E4();
  sub_1D818FD44("%{public}@ created with asset handle: %{public}@", 48, 2, &dword_1D7DFF000, v45, v46, v31);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v28;
}

id sub_1D7F5796C()
{
  v1 = v0;
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D819FAB0;
  v4 = *&v0[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription];
  v3 = *&v0[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription + 8];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D7E13BF4();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  sub_1D8190DB4();
  v5 = sub_1D8191E44();
  v6 = sub_1D81919E4();
  sub_1D818FD44("%{public}@ cancelled", 20, 2, &dword_1D7DFF000, v5, v6, v2);

  v8.receiver = v1;
  v8.super_class = type metadata accessor for ImageCacheOperation();
  return objc_msgSendSuper2(&v8, sel_cancel);
}

id sub_1D7F57B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageCacheOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D7F57B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, atomic_ullong *a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = sub_1D7F57D0C(Strong, a2, a3, a4);
    sub_1D7E1A888(0, &qword_1EDBBC428, type metadata accessor for ImageCacheInterestToken, MEMORY[0x1E69D6A90]);
    swift_allocObject();

    v17 = sub_1D818F8F4();
    swift_beginAccess();

    sub_1D7EE43A4();
    v18 = *(v16[4] + 16);
    sub_1D7EE45D0();
    v19 = v16[4];
    *(v19 + 16) = v18 + 1;
    v20 = (v19 + 24 * v18);
    v20[4] = a6;
    v20[5] = a7;
    v20[6] = v17;
    v16[4] = v19;
    swift_endAccess();
    v21 = swift_allocObject();
    swift_weakInit();

    sub_1D80B7C7C(a8, v21);
  }

  return result;
}

void *sub_1D7F57D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  v9 = sub_1D7E886A4(a2, a3, *(a1 + 24), v8);
  if (v9)
  {
    v10 = v9;
    result = swift_endAccess();
    v12 = v10[3];
    do
    {
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      v13 = v12;
      atomic_compare_exchange_strong_explicit(v10 + 3, &v13, v12 + 1, memory_order_relaxed, memory_order_relaxed);
      v14 = v13 == v12;
      v12 = v13;
    }

    while (!v14);
    if (v13)
    {
      return v10;
    }

    swift_beginAccess();
    sub_1D7EBBF70(a2, a3, v15);
    swift_endAccess();
  }

  else
  {
    v16 = swift_endAccess();
  }

  v17 = a4(v16);
  sub_1D7E1A888(0, qword_1EDBB8998, sub_1D7E1A8EC, type metadata accessor for ImageCacheFetchDeduper.Request);
  v10 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  v10[3] = 1;
  v10[4] = v18;
  v10[2] = v17;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a1 + 24);
  sub_1D7EF6090();
  *(a1 + 24) = v19;
  swift_endAccess();
  return v10;
}

void sub_1D7F57ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_120();
  v46 = v21;
  v47 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v45 = v31;
  OUTLINED_FUNCTION_2();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_2();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  v43 = v42 - v41;
  v44 = swift_allocObject();
  (*(v39 + 16))(v43, v30, v24);
  (*(v33 + 16))(v37, v28, v26);
  sub_1D7E1C8D8(v45, v43, v37, v44, v46, v26, v24, v47, a21);
  (*(v33 + 8))(v28, v26);
  (*(v39 + 8))(v30, v24);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F58100(uint64_t a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_1D7EA78F0(v14, 1, 0, a2, a3, a4, a5, a6);
  return (*(v11 + 8))(v14, a5);
}

unint64_t sub_1D7F58228()
{
  result = qword_1EDBBB0D8[0];
  if (!qword_1EDBBB0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBBB0D8);
  }

  return result;
}

uint64_t dispatch thunk of ImageCacheType.fetchImage(for:expires:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D7F583D4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D7F583D4()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_9_12();
  v3 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

_BYTE *storeEnumTagSinglePayload for ImageCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7F58628()
{
  result = qword_1EDBBB0D0;
  if (!qword_1EDBBB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBB0D0);
  }

  return result;
}

uint64_t sub_1D7F5867C(uint64_t a1)
{
  sub_1D7EBB4A4(0, &qword_1EDBB0B98, &qword_1EDBB9400, &protocol descriptor for AssetDataProviderType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F58718(uint64_t a1)
{
  if (!qword_1ECA0E010)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB2F60, 0x1E69DCAB8);
    sub_1D7E0631C(255, &qword_1EDBB2BC0, MEMORY[0x1E69E7280]);
    v1 = sub_1D8191504();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0E010);
    }
  }
}

uint64_t objectdestroy_29Tm()
{
  sub_1D7F58718(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D7F5884C(void *a1, void *a2)
{
  sub_1D7F58718(0);

  return sub_1D7F564E8(a1, a2);
}

uint64_t BlueprintInfiniteScrollBuilder.__allocating_init(infiniteScrollProvider:trigger:idleTrigger:)(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  BlueprintInfiniteScrollBuilder.init(infiniteScrollProvider:trigger:idleTrigger:)(a1, a2, a3);
  return v6;
}

uint64_t BlueprintInfiniteScrollBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1D7EB8B0C(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t BlueprintInfiniteScrollBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1D7EB8B0C(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

void BlueprintInfiniteScrollBuilder.build<A, B, C, D>(blueprint:layoutBlueprint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_70();
  v223 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v239 = v40;
  v235 = v41;
  v231 = type metadata accessor for BlueprintLayoutItem(0, v34, a30, v38);
  OUTLINED_FUNCTION_9();
  v241 = v42;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_38_0(v44);
  v230 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v232 = v45;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15();
  v49 = OUTLINED_FUNCTION_38_0(v48 - v47);
  type metadata accessor for BlueprintItem(v49, v39, v33, v50);
  OUTLINED_FUNCTION_9();
  v227 = v51;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v53);
  v225 = v54;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_52();
  v234 = v55;
  v238 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v233 = v56;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_23();
  v237 = v58;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v59);
  v236 = &v192 - v60;
  v61 = OUTLINED_FUNCTION_66_3();
  v63 = type metadata accessor for BlueprintSection(v61, v62);
  OUTLINED_FUNCTION_21_8();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_48_3();
  v65 = sub_1D81923F4();
  OUTLINED_FUNCTION_25_6(v65, &v231);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_38_0(v67);
  v200 = WitnessTable;
  v240 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v226 = v68;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_94();
  v242 = v70;
  v243 = v37;
  v201 = v37;
  v244 = v35;
  v245 = a29;
  v208 = a29;
  v222 = a30;
  v246 = a30;
  v197 = type metadata accessor for BlueprintLayoutSection(0, &v243);
  OUTLINED_FUNCTION_9();
  v215 = v71;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v73);
  v214 = *(v63 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v75);
  v212 = v63;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_52();
  v206 = v76;
  v205 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v229 = v77;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_23();
  v204 = v79;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_14_1(&v192 - v81);
  v82 = OUTLINED_FUNCTION_66_3();
  v84 = type metadata accessor for Blueprint(v82, v83);
  OUTLINED_FUNCTION_18_10();
  v85 = swift_getWitnessTable();
  OUTLINED_FUNCTION_48_3();
  v86 = sub_1D81923F4();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_48_3();
  v228 = v85;
  v207 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v192 = v88;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_94();
  v91 = OUTLINED_FUNCTION_38_0(v90);
  v92 = type metadata accessor for BlueprintInfiniteScroll(v91);
  v193 = swift_allocBox();
  v94 = v93;
  v95 = v239;
  LOBYTE(v85) = *(v239 + 565);
  OUTLINED_FUNCTION_58_2();
  v97 = *(v96 + 80);
  v98 = *(v96 + 88);
  v218 = v92[5];
  sub_1D818E8A4();
  v217 = v92[6];
  *&v94[v217] = MEMORY[0x1E69E7CC0];
  v216 = v92[7];
  *&v94[v216] = MEMORY[0x1E69E7CD0];
  *v94 = v85;
  v99 = v92[8];
  v219 = v94;
  v100 = &v94[v99];
  *v100 = v97;
  v100[8] = v98;
  v101 = *(v95 + 1);
  v213 = v86;
  if (v101)
  {
    if (v101 == 1)
    {
      v102 = (v239 + 64);
    }

    else
    {
      v102 = (v239 + 96);
    }
  }

  else
  {
    v102 = (v239 + 16);
  }

  v103 = v222;
  v104 = v221;
  v105 = v234;
  v106 = v206;
  v107 = v241;
  v108 = v233;
  v109 = *v102;
  MEMORY[0x1DA7133A0](v84, v228);
  sub_1D81923C4();
  v202 = v229 + 32;
  v199 = (v214 + 32);
  v198 = v208 + 8;
  v110 = (v108 + 4);
  v233 = (v227 + 32);
  v229 = v107 + 8;
  v228 = v232 + 8;
  v227 += 8;
  v196 = v226 + 8;
  v195 = v215 + 1;
  v194 = v214 + 8;
  v232 = v103 + 8;
  v226 = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4C14000000000000;
  v111 = 0.0;
  v214 = v35;
  v112 = v220;
  v215 = v110;
LABEL_7:
  v113 = v204;
  sub_1D81923D4();
  OUTLINED_FUNCTION_22();
  v114 = v203;
  v115(v203, v113, v205);
  if (__swift_getEnumTagSinglePayload(v114, 1, v106) == 1)
  {
    (*(v192 + 8))(v209, v207);
    v189 = v223;
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v190 = swift_allocObject();
    v191 = v193;
    *(v190 + 16) = v189;
    *(v190 + 24) = v191;
    OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_72();
    return;
  }

  v241 = *v114;
  (*v199)(v211, v114 + *(v106 + 48), v212);
  v116 = v201;
  v243 = v201;
  v244 = v35;
  v117 = v208;
  v245 = v208;
  v246 = v103;
  v235 = type metadata accessor for BlueprintLayout(0, &v243);
  BlueprintLayout.subscript.getter(v241, v235, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  v130 = *(v117 + 8);
  v131 = v116;
  v132 = v225;
  v133 = v117;
  v134 = v224;
  v111 = v111 + v130(*&v131, v133);
  MEMORY[0x1DA7133A0](v212, v200);
  sub_1D81923C4();
  while (1)
  {
    v135 = v237;
    sub_1D81923D4();
    v136 = v236;
    (*v110)(v236, v135, v238);
    if (__swift_getEnumTagSinglePayload(v136, 1, v105) == 1)
    {
      OUTLINED_FUNCTION_22();
      v186(v242, v240);
      OUTLINED_FUNCTION_22();
      v187(v210, v197);
      OUTLINED_FUNCTION_22();
      v188(v211, v212);
      v106 = v206;
      goto LABEL_7;
    }

    v137 = v136;
    v138 = *v136;
    (*v233)(v134, &v137[*(v105 + 48)], COERCE_DOUBLE(*&v132));
    MEMORY[0x1DA710B60](v138, v241);
    BlueprintLayout.subscript.getter(v112, v235);
    if ((BlueprintItem.isExpandable.getter() & 1) == 0)
    {
      OUTLINED_FUNCTION_40_3();
      v161 = (*v160)(v35, v103);
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_58_2();
    v140 = *(v139 + 56);
    v141 = *(v139 + 72);
    if (!v141)
    {
      v162 = *&v132;
      v132 = OUTLINED_FUNCTION_68_3(v140);
      v134 = v146 == v147;
      v163 = OUTLINED_FUNCTION_11_15();
      (v105)(v163);
      BlueprintItem.identifier.getter(v162);
      OUTLINED_FUNCTION_3_38();
      if (v31 <= -9.22337204e18)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_46_4();
      if (!v146)
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_2_42();
      if (v165)
      {
        goto LABEL_62;
      }

      if (v164 <= -9.22337204e18)
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_36_5();
      if (!v146)
      {
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_45_3();
      if (v146 != v147)
      {
        goto LABEL_70;
      }

      v103 = v166;
      v104 = v167;
      v243 = v132;
      v244 = v134;
      OUTLINED_FUNCTION_0_53();
      sub_1D7EAF54C(0, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v168);
      v112 = v169;
      sub_1D7EB88FC();
      sub_1D8190DB4();
      OUTLINED_FUNCTION_27_6();
      sub_1D818E834();
      sub_1D7EB8AA0();
      OUTLINED_FUNCTION_73_2();
      OUTLINED_FUNCTION_15_11();
      OUTLINED_FUNCTION_27_6();
      sub_1D7E91548(v170, v103, v104, v171);

      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_53_2();
      v110 = v215;
      goto LABEL_51;
    }

    if (v141 == 1)
    {
      OUTLINED_FUNCTION_58_2();
      v143 = *(v142 + 64);

      v145 = v140(v144);
      v132 = OUTLINED_FUNCTION_68_3(v145);
      v134 = v146 == v147;
      v148 = OUTLINED_FUNCTION_11_15();
      (v105)(v148);
      OUTLINED_FUNCTION_51_3();
      OUTLINED_FUNCTION_3_38();
      if (v31 <= -9.22337204e18)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_46_4();
      if (!v146)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_42();
      if (v150)
      {
        goto LABEL_61;
      }

      if (v149 <= -9.22337204e18)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_36_5();
      if (!v146)
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_45_3();
      if (v146 != v147)
      {
        goto LABEL_72;
      }

      v104 = v151;
      v103 = v152;
      v243 = v132;
      v244 = v134;
      OUTLINED_FUNCTION_0_53();
      sub_1D7EAF54C(0, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v153);
      sub_1D7EB88FC();
      v213 = v140;
      sub_1D8190DB4();
      v154 = v219;
      sub_1D818E834();
      v155 = v217;
      sub_1D7EB8AA0();
      v156 = *(*&v154[v155] + 16);
      sub_1D7EB8AF4();
      v157 = *&v154[v155];
      *(v157 + 16) = v156 + 1;
      v158 = v157 + 48 * v156;
      v35 = v214;
      *(v158 + 32) = v104;
      *(v158 + 40) = v103;
      *(v158 + 48) = 0;
      *(v158 + 56) = v111;
      *(v158 + 64) = v132;
      *(v158 + 72) = v134;
      *&v154[v155] = v157;
      v110 = v215;
      sub_1D7E91548(&v243, v104, v103, v159);
      sub_1D7EB8B0C(v213, v143, 1);

      OUTLINED_FUNCTION_31_5();
      v112 = v220;
      goto LABEL_50;
    }

    v172 = OUTLINED_FUNCTION_11_15();
    v173 = v111 - (v109 - (v105)(v172));
    v31 = v173 < 0.0 ? 0.0 : v173;
    v132 = v173;
    v134 = v173 >= 0.0;
    (v105)(v35, v103);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_3_38();
    if (v31 <= -9.22337204e18)
    {
      break;
    }

    OUTLINED_FUNCTION_46_4();
    if (!v146)
    {
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_2_42();
    if (v175)
    {
      goto LABEL_63;
    }

    if (v174 <= -9.22337204e18)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_36_5();
    if (!v146)
    {
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_45_3();
    if (v146 != v147)
    {
      goto LABEL_71;
    }

    v103 = v176;
    v104 = v177;
    v243 = v132;
    v244 = v134;
    OUTLINED_FUNCTION_0_53();
    sub_1D7EAF54C(0, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v178);
    v112 = v179;
    sub_1D7EB88FC();
    sub_1D8190DB4();
    OUTLINED_FUNCTION_27_6();
    v35 = v214;
    sub_1D818E834();
    sub_1D7EB8AA0();
    OUTLINED_FUNCTION_73_2();
    OUTLINED_FUNCTION_15_11();
    v110 = v215;
    OUTLINED_FUNCTION_27_6();
    sub_1D7E91548(v180, v103, v104, v181);

    OUTLINED_FUNCTION_31_5();
LABEL_50:
    OUTLINED_FUNCTION_53_2();
LABEL_51:
    v161 = (v105)(v35, v103);
LABEL_52:
    v182 = v161;
    OUTLINED_FUNCTION_22();
    v183(v104, v231);
    OUTLINED_FUNCTION_22();
    v184(v112, v230);
    OUTLINED_FUNCTION_22();
    v185(v134, *&v132);
    v111 = v111 + v182;
    v105 = v234;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
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
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_5TeaUI30BlueprintInfiniteScrollBuilderC7TriggerO(uint64_t a1)
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

BOOL sub_1D7F59B18(double *a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1D81927D4();
  OUTLINED_FUNCTION_34_4();
  while (1)
  {
    v11 = v7 & v9;
    v12 = (v10 << (v7 & v9)) & *(v8 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = *(*(v6 + 48) + 8 * v11);
    if (v13 == a2)
    {
      goto LABEL_6;
    }

    v7 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  sub_1D7F5B95C(v11, isUniquelyReferenced_nonNull_native, a2);
  *v3 = v16;
  v13 = a2;
LABEL_6:
  result = v12 == 0;
  *a1 = v13;
  return result;
}

BOOL sub_1D7F59BF8(void *a1, uint64_t a2)
{
  v6 = *v2;
  sub_1D81927D4();
  OUTLINED_FUNCTION_34_4();
  while (1)
  {
    OUTLINED_FUNCTION_49_2();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_28_5();
  sub_1D7F5BA74(a2, v3, v10);
  OUTLINED_FUNCTION_56_3(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1D7F59C9C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_1D8190DB4();
    OUTLINED_FUNCTION_159();
    v8 = sub_1D81920B4();

    if (v8)
    {

      type metadata accessor for BlueprintInfiniteScrollRequest();
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
      return result;
    }

    result = sub_1D81920A4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1D7F5A534(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_1D7F5AB98();
    }

    sub_1D7F5B798(v17, v16);

    *v3 = v16;
  }

  else
  {
    sub_1D81927E4();
    sub_1D8190FF4();
    sub_1D8192824();
    OUTLINED_FUNCTION_59_3();
    v12 = ~v11;
    while (1)
    {
      v13 = v10 & v12;
      if (((*(v6 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v12)) & 1) == 0)
      {
        break;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = *(v14 + 16) == *(a2 + 16) && *(v14 + 24) == *(a2 + 24);
      if (v15 || (sub_1D8192634() & 1) != 0)
      {

        *a1 = *(*(v6 + 48) + 8 * v13);

        return 0;
      }

      v10 = v13 + 1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;

    sub_1D7F5BB78(v19, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
  }

  *a1 = a2;
  return 1;
}

BOOL sub_1D7F59EA4(_BYTE *a1, uint64_t a2)
{
  v6 = *v2;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](a2);
  sub_1D8192824();
  OUTLINED_FUNCTION_34_4();
  while (1)
  {
    OUTLINED_FUNCTION_49_2();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_28_5();
  sub_1D7F5BCD8(a2, v3, v10);
  OUTLINED_FUNCTION_56_3(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_1D7F59F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v26 = v2;
  v11 = *v2;
  OUTLINED_FUNCTION_19_9();
  sub_1D7F5DEF4(v12, v13, MEMORY[0x1E6969C38]);
  v30 = a2;
  sub_1D8190E54();
  v28 = v11;
  v29 = v11 + 56;
  OUTLINED_FUNCTION_59_3();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    v18 = (1 << (v14 & v16)) & *(v29 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v18)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v6 + 16))(v10, v30, v4);
      v31 = *v26;
      sub_1D7F5BE10(v10, v17, isUniquelyReferenced_nonNull_native);
      *v26 = v31;
      (*(v6 + 32))(a1, v30, v4);
      return v18 == 0;
    }

    v19 = *(v6 + 72) * v17;
    v20 = *(v6 + 16);
    v20(v10, *(v28 + 48) + v19, v4);
    OUTLINED_FUNCTION_19_9();
    sub_1D7F5DEF4(&qword_1EDBBC6B0, v21, MEMORY[0x1E6969C50]);
    v22 = sub_1D8190ED4();
    v23 = *(v6 + 8);
    v23(v10, v4);
    if (v22)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v23(v30, v4);
  v20(a1, *(v28 + 48) + v19, v4);
  return v18 == 0;
}

uint64_t sub_1D7F5A1F8(double *a1, double *a2)
{
  v5 = *v2;
  sub_1D81927E4();
  sub_1D811B984();
  v6 = sub_1D8192824();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = (*(v5 + 48) + 48 * v8);
      v11 = v10[1];
      if (*v10 == *a2 && v11 == a2[1])
      {
        v13 = v10[2];
        if (v13 == a2[2])
        {
          v14 = v10[3];
          v15 = v10[4];
          v16 = v10[5];
          v17 = v14 == a2[3] && v15 == a2[4];
          if (v17 && v16 == a2[5])
          {
            break;
          }
        }
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    result = 0;
    *a1 = *v10;
    a1[1] = v11;
    a1[2] = v13;
    a1[3] = v14;
    a1[4] = v15;
    a1[5] = v16;
  }

  else
  {
LABEL_17:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_28_5();
    sub_1D7F5C09C(a2, v8, v19);
    OUTLINED_FUNCTION_56_3(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31);
    v28 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v28;
    *(a1 + 2) = *(a2 + 2);
    return 1;
  }

  return result;
}

uint64_t sub_1D7F5A338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = *v4;
  sub_1D81927E4();
  if ((v5 & 0x80) == 0)
  {
    MEMORY[0x1DA714A00](0);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }

LABEL_10:
    MEMORY[0x1DA714A20](v10);
    goto LABEL_11;
  }

  MEMORY[0x1DA714A00](1);
  if ((v5 & 1) == 0)
  {
    MEMORY[0x1DA714A00](2);
    MEMORY[0x1DA714A00](a2);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_10;
  }

  MEMORY[0x1DA714A00]((a2 | a3) != 0);
LABEL_11:
  v11 = sub_1D8192824();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_34:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    sub_1D7F5C240(a2, a3, v5, v13, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
    result = 1;
    goto LABEL_35;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(v9 + 48) + 24 * v13;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    if ((v18 & 0x80000000) == 0)
    {
      break;
    }

    if ((v5 & 0x80) != 0)
    {
      if (v18)
      {
        if (*&v17 | *&v16)
        {
          if ((v5 & ((a2 | a3) != 0)) != 0)
          {
            goto LABEL_32;
          }
        }

        else if ((v5 & ((a2 | a3) == 0)) != 0)
        {
          goto LABEL_32;
        }
      }

      else if ((v5 & 1) == 0 && *&v17 == a2 && v16 == *&a3)
      {
        result = 0;
        goto LABEL_33;
      }
    }

LABEL_18:
    v13 = (v13 + 1) & v14;
    if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if ((v5 & 0x80) != 0 || v17 != *&a2)
  {
    goto LABEL_18;
  }

LABEL_32:
  result = 0;
  *&a2 = v17;
LABEL_33:
  *&a3 = v16;
  v5 = v18;
LABEL_35:
  *a1 = *&a2;
  *(a1 + 8) = *&a3;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1D7F5A534(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D7F5DFD0(0);
    v2 = sub_1D8192154();
    v14 = v2;
    sub_1D8192064();
    while (1)
    {
      if (!sub_1D81920D4())
      {

        return v2;
      }

      type metadata accessor for BlueprintInfiniteScrollRequest();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1D7F5AB98();
      }

      v2 = v14;
      sub_1D81927E4();
      sub_1D8190FF4();
      result = sub_1D8192824();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1D7F5A700()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7EAF54C(0, &qword_1ECA0E030, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0], MEMORY[0x1E69E6A10]);
  v3 = sub_1D8192144();
  v4 = v3;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = v3 + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_1D7E2CB98(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    v16 = sub_1D81927D4();
    v17 = -1 << *(v4 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v4 + 48) + 8 * v20) = v15;
    ++*(v4 + 16);
    if (!v10)
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

LABEL_29:
  __break(1u);
}

void sub_1D7F5A954()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7EAF54C(0, &qword_1EDBB2EB8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  v3 = sub_1D8192144();
  v4 = v3;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v25 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = v3 + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_1D7E2CB98(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v25;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    v16 = sub_1D81927D4();
    v17 = -1 << *(v4 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v4 + 48) + 8 * v20) = v15;
    ++*(v4 + 16);
    if (!v10)
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

LABEL_29:
  __break(1u);
}

void sub_1D7F5AB98()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7F5DFD0(0);
  v3 = sub_1D8192144();
  v4 = v3;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v3 + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_1D7E2CB98(0, (v25 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_1D81927E4();
    sub_1D8190FF4();
    v16 = sub_1D8192824();
    v17 = -1 << *(v4 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v4 + 48) + 8 * v20) = v15;
    ++*(v4 + 16);
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

LABEL_29:
  __break(1u);
}

void sub_1D7F5ADD8()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7F5E064(0, &qword_1EDBAE3F0, sub_1D7F14D74);
  v3 = sub_1D8192144();
  v4 = v3;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v3 + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_1D7E2CB98(0, (v25 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    sub_1D81927E4();
    MEMORY[0x1DA714A00](v15);
    v16 = sub_1D8192824();
    v17 = -1 << *(v4 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v4 + 48) + v20) = v15;
    ++*(v4 + 16);
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

LABEL_29:
  __break(1u);
}

void sub_1D7F5B03C()
{
  v1 = v0;
  v36 = sub_1D818E994();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1D7F5DF3C(0);
  v5 = sub_1D8192144();
  v6 = v5;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return;
  }

  v30 = v0;
  v31 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v34 = v2 + 32;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v4 + 32);
    if (v28 >= 64)
    {
      sub_1D7E2CB98(0, (v28 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v1 = v30;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v32 = *(v2 + 72);
    v33 = v18;
    v18(v35, v17, v36);
    sub_1D7F5DEF4(&qword_1EDBBC6C0, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
    v19 = sub_1D8190E54();
    v20 = -1 << *(v6 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v33(*(v6 + 48) + v23 * v32, v35, v36);
    ++*(v6 + 16);
    v4 = v31;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1D7F5B388()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7F5E064(0, &qword_1ECA0E020, sub_1D7F5DEA0);
  v3 = sub_1D8192144();
  v4 = v3;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v3 + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v2 + 32);
    if (v26 >= 64)
    {
      sub_1D7E2CB98(0, (v26 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v26;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 48 * (v12 | (v5 << 6)));
    v27 = *v15;
    v28 = v15[1];
    v29 = v15[2];
    sub_1D81927E4();
    sub_1D811B984();
    v16 = sub_1D8192824();
    v17 = -1 << *(v4 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = (*(v4 + 48) + 48 * v20);
    *v25 = v27;
    v25[1] = v28;
    v25[2] = v29;
    ++*(v4 + 16);
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

LABEL_29:
  __break(1u);
}
void sub_1BD70EA58(void *a1, void *a2, void *a3)
{
  v7 = *&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account];
  v8 = objc_allocWithZone(type metadata accessor for AppleBalanceAddMoneyViewController());
  v9 = a3;
  v10 = v7;
  v11 = v3;
  v12 = a2;
  v13 = sub_1BD290D88(v10, v11, a2, a3);
  v14 = *&v11[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController];
  *&v11[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = v13;
  v15 = v13;

  v16 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [a1 presentViewController:v16 animated:1 completion:0];
}

void sub_1BD70EBFC(void *a1, unint64_t a2, void *a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v98 = a4;
  v12 = sub_1BE04D214();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v6[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account];
  if ([v17 supportsTopUp])
  {
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a5;
    v19[4] = a6;
    v19[5] = a2;
    v19[6] = a1;
    v20 = OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel;
    if (*&v6[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel])
    {
      sub_1BE048964();
      v21 = a1;
      sub_1BD0D44B8(a5, a6);
      if (PKAppleBalanceDemoAccountEnabled())
      {
LABEL_4:
        sub_1BD70F0F4(v18, a5, a6, a2, a1);
        v19, v29, v30, v31, v32, v33, v34, v35;
        v43 = v18;
LABEL_17:

        v43, v36, v37, v38, v39, v40, v41, v42;
        return;
      }
    }

    else
    {
      v96 = objc_allocWithZone(type metadata accessor for DirectTopUpModel(0));
      sub_1BE048964();
      v50 = a1;
      sub_1BD0D44B8(a5, a6);
      v97 = a1;
      v51 = v98;
      v95 = v98;
      v94 = v6;
      v52 = a3;
      v53 = v51;
      a1 = v97;
      v54 = sub_1BD7B27BC(a3, v53, v6);

      v55 = *&v6[v20];
      *&v6[v20] = v54;

      if (PKAppleBalanceDemoAccountEnabled())
      {
        goto LABEL_4;
      }
    }

    v18, v22, v23, v24, v25, v26, v27, v28;
    v56 = *&v6[v20];
    if (v56)
    {
      v57 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v58 = swift_allocObject();
      v58[2] = v57;
      v58[3] = a1;
      v58[4] = a5;
      v58[5] = a6;
      v58[6] = a2;
      v58[7] = sub_1BD715110;
      v58[8] = v19;
      v59 = *&v56[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController];
      aBlock[4] = sub_1BD71516C;
      v100 = v58;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_20_1;
      v60 = a5;
      v61 = _Block_copy(aBlock);
      v62 = v100;
      v63 = a1;
      sub_1BD0D44B8(v60, a6);
      v64 = v56;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v62, v65, v66, v67, v68, v69, v70, v71;
      [v59 requestDTUAvailable_];
      _Block_release(v61);

      v57, v72, v73, v74, v75, v76, v77, v78;
      v58, v79, v80, v81, v82, v83, v84, v85;
      v19, v86, v87, v88, v89, v90, v91, v92;
      return;
    }

    v43 = v19;
    goto LABEL_17;
  }

  if ([v17 supportsAMPTopUp])
  {

    sub_1BD710144(0, a1, a2, 0, 0, a5, a6);
  }

  else
  {
    sub_1BE04D194();
    v44 = a1;
    v45 = sub_1BE04D204();
    v46 = sub_1BE052C34();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v44;
      *v48 = v44;
      v49 = v44;
      _os_log_impl(&dword_1BD026000, v45, v46, "Error: tried to present direct top up without either supporting feature from presenting controller %@", v47, 0xCu);
      sub_1BD0DE53C(v48, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v48, -1, -1);
      MEMORY[0x1BFB45F20](v47, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
  }
}

void sub_1BD70F0F4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v37 = a5;
  v8 = sub_1BE051F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v36 = v9;
    v17 = *&Strong[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel];
    if (v17)
    {
      sub_1BD14BE3C();
      v18 = v17;
      v34 = sub_1BE052D54();
      v19 = swift_allocObject();
      v19[2] = v16;
      v19[3] = a4;
      v35 = v12;
      v20 = v37;
      v19[4] = v18;
      v19[5] = v20;
      v19[6] = a2;
      v19[7] = a3;
      aBlock[4] = sub_1BD71504C;
      v40 = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_132_2;
      v21 = _Block_copy(aBlock);
      v22 = v40;
      v23 = v18;
      v24 = v16;
      v25 = v20;
      sub_1BD0D44B8(a2, a3);
      v22, v26, v27, v28, v29, v30, v31, v32;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD715004(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD14ECDC();
      sub_1BE053664();
      v33 = v34;
      MEMORY[0x1BFB3FDF0](0, v14, v11, v21);
      _Block_release(v21);

      (*(v36 + 8))(v11, v8);
      (*(v38 + 8))(v14, v35);
      return;
    }
  }

  if (a2)
  {
    sub_1BE048964();
    a2(0);
    sub_1BD1107D8(a2, a3);
  }
}

void sub_1BD70F464(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v12 = *&a1[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account];
  v13 = objc_allocWithZone(type metadata accessor for AppleBalanceDirectTopUpViewController());
  v14 = v12;
  v15 = a1;
  v16 = a3;
  v17 = sub_1BD242814(v14, a2, v15, v16, 0);

  v18 = *&v15[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController];
  *&v15[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = v17;
  v36 = v17;

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      goto LABEL_13;
    }

    v35 = [a4 navigationController];
    if (v35)
    {
      [v35 pushViewController:v36 animated:1];
    }

    if (!a5)
    {

      v33 = v35;
      goto LABEL_23;
    }

    sub_1BE048964();
    a5(1);

    v31 = v35;
  }

  else
  {
    if (!a2)
    {

      v19 = [a4 navigationController];
      if (v19)
      {
        v20 = v19;
        if (a5)
        {
          aBlock[4] = a5;
          v38 = a6;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD3F08C0;
          aBlock[3] = &block_descriptor_135_0;
          v21 = _Block_copy(aBlock);
          v22 = v38;
          v23 = v20;
          sub_1BD0D44B8(a5, a6);
          v22, v24, v25, v26, v27, v28, v29, v30;
        }

        else
        {
          v34 = v19;
          v21 = 0;
        }

        [v20 pk:v36 presentPaymentSetupViewController:1 animated:v21 completion:?];

        _Block_release(v21);
        return;
      }

      goto LABEL_21;
    }

    if (a2 != 1)
    {
      do
      {
        sub_1BE053994();
        __break(1u);
LABEL_13:
        ;
      }

      while (a2 != 3);
    }

    v32 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    [a4 presentViewController:v32 animated:1 completion:0];
    if (!a5)
    {

LABEL_21:
      v33 = v36;
LABEL_23:

      return;
    }

    sub_1BE048964();
    a5(1);

    v31 = v36;
  }

  sub_1BD1107D8(a5, a6);
}

void sub_1BD70F808(char a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6, void (*a7)(void), void *a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a1)
    {
      v17 = *(Strong + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel);
      if (v17)
      {
        v63 = OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel;
        v64 = a5;
        KeyPath = swift_getKeyPath();
        sub_1BD715004(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
        v19 = v17;
        sub_1BE04B594();
        KeyPath, v20, v21, v22, v23, v24, v25, v26;
        if (*&v19[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration])
        {
        }

        else
        {
          v27 = swift_getKeyPath();
          sub_1BE04B594();
          v27, v28, v29, v30, v31, v32, v33, v34;
          v35 = v19[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration];

          if ((v35 & 1) == 0 && (a6 | 2) == 2)
          {
            v36 = *&v16[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController];
            *&v16[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = a3;
            v37 = a3;

            v38 = *&v16[v63];
            if (v38)
            {
              v39 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v40 = v37;
              sub_1BE048964();
              sub_1BE048964();
              sub_1BD0D44B8(a4, v64);
              v41 = v38;
              sub_1BD7B2948(v41, a7, a8, v39, v40, a4, v64);

              v39, v42, v43, v44, v45, v46, v47, v48;
              a8, v49, v50, v51, v52, v53, v54, v55;

              sub_1BD1107D8(a4, v64);
              v39, v56, v57, v58, v59, v60, v61, v62;
              return;
            }

            goto LABEL_13;
          }
        }
      }

      a7();
    }

    else
    {
      sub_1BD7120DC(a3);
      if (a4)
      {
        a4(0);
      }
    }

LABEL_13:
  }
}

uint64_t sub_1BD70FA9C(char a1, void *a2, uint64_t (*a3)(double), uint64_t a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8)
{
  v33 = a8;
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return a3(v15);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = *&Strong[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController];
    *&Strong[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = 0;
  }

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_1BD713E68(0, a6);
  }

  sub_1BE04D194();
  v23 = a2;
  v24 = sub_1BE04D204();
  v25 = sub_1BE052C34();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    if (a2)
    {
      v28 = a2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = v29;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    *(v26 + 4) = v29;
    *v27 = v30;
    _os_log_impl(&dword_1BD026000, v24, v25, "Failed to load Apple Account Add Money UI with error: %@", v26, 0xCu);
    sub_1BD0DE53C(v27, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v27, -1, -1);
    MEMORY[0x1BFB45F20](v26, -1, -1);
  }

  result = (*(v14 + 8))(v17, v13);
  if (a7)
  {
    v31 = v33;
    sub_1BE048964();
    a7(0);
    return sub_1BD1107D8(a7, v31);
  }

  return result;
}

void sub_1BD70FFF4(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BD1A8284(a2);
  sub_1BD710144(2u, a1, 2uLL, v5, a3, 0, 0);

  v5, v6, v7, v8, v9, v10, v11, v12;
}

void sub_1BD710144(unsigned __int8 a1, id *a2, unint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v195 = a7;
  v199 = a6;
  v192 = a4;
  v193 = a2;
  v202 = *MEMORY[0x1E69E9840];
  v11 = sub_1BE04D214();
  v190 = *(v11 - 8);
  v191 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v183 - v15;
  v17 = sub_1BE04AA64();
  v194 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() mainBundle];
  v21 = [v20 bundleIdentifier];

  if (v21)
  {
    v186 = a3;
    v187 = a5;
    v188 = v7;
    v189 = v17;
    v22 = [objc_opt_self() bagForProfile:*MEMORY[0x1E69B9378] profileVersion:*MEMORY[0x1E69B9380]];
    v23 = [objc_opt_self() ams_sharedAccountStore];
    v197 = [v23 ams_activeiTunesAccount];

    v196 = [objc_allocWithZone(MEMORY[0x1E698CAC8]) initWithBundleIdentifier_];
    if (a1)
    {
      if (a1 == 1)
      {
        v24 = 0x80000001BE136C80;
      }

      else
      {
        v24 = 0x80000001BE136C60;
      }
    }

    else
    {
      v24 = 0xEB000000006C7255;
    }

    v25 = sub_1BE052404();
    v24, v26, v27, v28, v29, v30, v31, v32;
    v198 = v22;
    v33 = [v22 URLForKey_];

    aBlock[0] = 0;
    v34 = [v33 valueWithError_];

    v35 = aBlock[0];
    if (v34)
    {
      sub_1BE04A9F4();
      v36 = v35;

      v44 = a1;
      v185 = v16;
      if (a1)
      {
        if (a1 == 1)
        {
          v45 = "contentBonusOfferRedemptionUrl";
        }

        else
        {
          v45 = "ed by UI Manager";
        }

        v46 = v186;
        v47 = sub_1BE053B84();
        (v45 | 0x8000000000000000), v48, v49, v50, v51, v52, v53, v54;
        v62 = 0;
        if ((v47 & 1) == 0)
        {
          v63 = a1;
          if (a1)
          {
LABEL_14:
            if (v63 != 1)
            {
              v64 = 0x80000001BE136C60;
              v75 = 1;
LABEL_29:
              v64, v55, v56, v57, v58, v59, v60, v61;
              v76 = objc_allocWithZone(type metadata accessor for PKAMSUIWebViewController());
              v77 = [v76 initWithBag:v198 account:v197 clientInfo:v196];
              [v77 setDelegate_];
              v184 = "contentBonusOfferRedemptionUrl";
              v186 = 0x80000001BE136C60;
              if (v192)
              {
                v78 = sub_1BE052224();
              }

              else
              {
                v78 = 0;
              }

              [v77 setClientOptions_];

              v79 = sub_1BE04A9C4();
              v80 = [v77 loadURL_];

              v81 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v82 = swift_allocObject();
              v192 = v81;
              *(v82 + 16) = v81;
              v83 = v193;
              *(v82 + 24) = v193;
              *(v82 + 32) = v75 & 1;
              *(v82 + 40) = v77;
              *(v82 + 48) = a1;
              v84 = v199;
              v85 = v19;
              v86 = v195;
              *(v82 + 56) = v199;
              *(v82 + 64) = v86;
              if (v62)
              {
                v87 = swift_allocObject();
                *(v87 + 16) = sub_1BD71505C;
                *(v87 + 24) = v82;
                aBlock[4] = sub_1BD715094;
                v201 = v87;
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_1BD3CC8C0;
                aBlock[3] = &block_descriptor_145_1;
                v88 = v83;
                v89 = _Block_copy(aBlock);
                v90 = v80;
                v91 = v201;
                v92 = v77;
                sub_1BD0D44B8(v84, v86);
                v93 = v88;
                sub_1BE048964();
                v91, v94, v95, v96, v97, v98, v99, v100;
                [v90 addFinishBlock_];
                _Block_release(v89);

                v82, v101, v102, v103, v104, v105, v106, v107;
                (*(v194 + 8))(v85, v189);
                return;
              }

              v188 = v80;
              if (v75)
              {
                v108 = v77;
                v109 = v195;
                sub_1BD0D44B8(v199, v195);
                v110 = v83;
                sub_1BE048964();
                v111 = [v110 navigationController];
                v112 = v85;
                if (v111)
                {
                  v113 = v111;
                  v114 = [v108 navigationItem];
                  [v114 setHidesBackButton_];

                  [v113 pushViewController:v108 animated:1];
                  v115 = v198;
                  v116 = v199;
                  v117 = v189;
                  if (!v199)
                  {
                    goto LABEL_53;
                  }
                }

                else
                {
                  v147 = v185;
                  sub_1BE04D194();
                  v148 = sub_1BE04D204();
                  v149 = sub_1BE052C34();
                  if (os_log_type_enabled(v148, v149))
                  {
                    v150 = swift_slowAlloc();
                    v193 = swift_slowAlloc();
                    aBlock[0] = v193;
                    *v150 = 136315138;
                    if (v44)
                    {
                      if (v44 == 1)
                      {
                        v151 = (v184 | 0x8000000000000000);
                        v152 = 0xD000000000000011;
                        v115 = v198;
                      }

                      else
                      {
                        v152 = 0xD00000000000001ELL;
                        v115 = v198;
                        v151 = v186;
                      }
                    }

                    else
                    {
                      v151 = 0xEB000000006C7255;
                      v115 = v198;
                      v152 = 0x73646E7546646441;
                    }

                    v153 = sub_1BD123690(v152, v151, aBlock);
                    v151, v154, v155, v156, v157, v158, v159, v160;
                    *(v150 + 4) = v153;
                    _os_log_impl(&dword_1BD026000, v148, v149, "Tried to push AMS web view for key %s without navigation controller", v150, 0xCu);
                    v161 = v193;
                    __swift_destroy_boxed_opaque_existential_0(v193, v162, v163, v164, v165, v166, v167, v168);
                    MEMORY[0x1BFB45F20](v161, -1, -1);
                    MEMORY[0x1BFB45F20](v150, -1, -1);

                    (*(v190 + 8))(v147, v191);
                  }

                  else
                  {

                    (*(v190 + 8))(v147, v191);
                    v115 = v198;
                  }

                  v109 = v195;
                  v116 = v199;
                  v117 = v189;
                  if (!v199)
                  {
                    goto LABEL_53;
                  }
                }
              }

              else
              {
                v118 = v83;
                v119 = objc_allocWithZone(MEMORY[0x1E69DCCD8]);
                v120 = v77;
                v116 = v199;
                v109 = v195;
                sub_1BD0D44B8(v199, v195);
                v121 = v118;
                sub_1BE048964();
                v122 = [v119 initWithRootViewController_];
                [v121 presentViewController:v122 animated:1 completion:0];

                v115 = v198;
                v112 = v85;
                v117 = v189;
                if (!v116)
                {
LABEL_53:

                  v82, v169, v170, v171, v172, v173, v174, v175;
                  v77 = v115;
                  goto LABEL_54;
                }
              }

              sub_1BE048964();
              v116(1);

              sub_1BD1107D8(v116, v109);
              v82, v123, v124, v125, v126, v127, v128, v129;
LABEL_54:

              (*(v194 + 8))(v112, v117);
              v192, v176, v177, v178, v179, v180, v181, v182;
              return;
            }

            v64 = 0x80000001BE136C80;
LABEL_27:
            v75 = sub_1BE053B84();
            goto LABEL_29;
          }

LABEL_26:
          v64 = 0xEB000000006C7255;
          goto LABEL_27;
        }
      }

      else
      {
        0xEB000000006C7255, v37, v38, v39, v40, v41, v42, v43;
        v46 = v186;
      }

      v62 = v46 == 2;
      v63 = a1;
      if (a1)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }

    v65 = aBlock[0];
    v66 = sub_1BE04A854();

    swift_willThrow();
    sub_1BE04D194();
    v67 = v66;
    v68 = sub_1BE04D204();
    v69 = sub_1BE052C34();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock[0] = v72;
      *v70 = 136315394;
      if (a1)
      {
        if (a1 == 1)
        {
          v73 = 0xD000000000000011;
        }

        else
        {
          v73 = 0xD00000000000001ELL;
        }

        if (a1 == 1)
        {
          v74 = 0x80000001BE136C80;
        }

        else
        {
          v74 = 0x80000001BE136C60;
        }
      }

      else
      {
        v73 = 0x73646E7546646441;
        v74 = 0xEB000000006C7255;
      }

      v130 = sub_1BD123690(v73, v74, aBlock);
      v74, v131, v132, v133, v134, v135, v136, v137;
      *(v70 + 4) = v130;
      *(v70 + 12) = 2112;
      v138 = v66;
      v139 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 14) = v139;
      *v71 = v139;
      _os_log_impl(&dword_1BD026000, v68, v69, "Failed to retrieve url from AMSBag for key %s with error %@", v70, 0x16u);
      sub_1BD0DE53C(v71, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v71, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v72, v140, v141, v142, v143, v144, v145, v146);
      MEMORY[0x1BFB45F20](v72, -1, -1);
      MEMORY[0x1BFB45F20](v70, -1, -1);
    }

    else
    {
    }

    (*(v190 + 8))(v13, v191);
  }
}

void sub_1BD710D98(int a1, void *a2, uint64_t a3, void *a4, char a5, void *a6, char a7, void (*a8)(void), uint64_t a9)
{
  v58 = a8;
  v57 = a1;
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v56[-v20];
  if (a2)
  {
    sub_1BE04D194();
    v22 = a2;
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C34();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = a2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_1BD026000, v23, v24, "Error loading AMS web page before presentation: %@", v25, 0xCu);
      sub_1BD0DE53C(v26, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v26, -1, -1);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    (*(v15 + 8))(v21, v14);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_12:
      v34 = v58;
      if (!v58)
      {
        return;
      }

      goto LABEL_13;
    }

    v30 = Strong;
    sub_1BD713E68(0, a4);
LABEL_11:

    goto LABEL_12;
  }

  if ((a5 & 1) == 0)
  {
    v30 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    [a4 presentViewController:v30 animated:1 completion:0];
    goto LABEL_11;
  }

  v31 = [a4 navigationController];
  if (v31)
  {
    v32 = v31;
    v33 = [a6 navigationItem];
    [v33 setHidesBackButton_];

    [v32 pushViewController:a6 animated:1];
    v34 = v58;
    if (!v58)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_1BE04D194();
  v35 = sub_1BE04D204();
  v36 = sub_1BE052C34();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v59 = v38;
    *v37 = 136315138;
    if (a7)
    {
      if (a7 == 1)
      {
        v39 = 0xD000000000000011;
      }

      else
      {
        v39 = 0xD00000000000001ELL;
      }

      if (a7 == 1)
      {
        v40 = 0x80000001BE136C80;
      }

      else
      {
        v40 = 0x80000001BE136C60;
      }
    }

    else
    {
      v40 = 0xEB000000006C7255;
      v39 = 0x73646E7546646441;
    }

    v41 = sub_1BD123690(v39, v40, &v59);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v37 + 4) = v41;
    _os_log_impl(&dword_1BD026000, v35, v36, "Tried to push AMS web view for key %s without navigation controller", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38, v49, v50, v51, v52, v53, v54, v55);
    MEMORY[0x1BFB45F20](v38, -1, -1);
    MEMORY[0x1BFB45F20](v37, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v34 = v58;
  if (v58)
  {
LABEL_13:
    sub_1BE048964();
    v34(v57 & 1);
    sub_1BD1107D8(v34, a9);
  }
}

void sub_1BD7111F8(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account);
  v9 = objc_allocWithZone(type metadata accessor for InStoreTopUpTokenModel(0));
  v10 = a3;
  v11 = sub_1BD85BDFC(v8, a3);
  sub_1BD711364(a1, a2, v11);
}

void sub_1BD711364(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    v18 = a1;
  }

  else
  {
    v8 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
    if (!v8)
    {
      return;
    }

    v18 = v8;
  }

  v9 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account);
  objc_allocWithZone(type metadata accessor for AppleBalanceInStoreTopUpViewController());
  v10 = v9;
  v11 = a3;
  v12 = a1;
  v13 = sub_1BD465998(v10, a2, v11);
  v14 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController) = v13;
  v15 = v13;

  if (a2 != 1)
  {
    if (a2)
    {
      sub_1BE053994();
      __break(1u);
      return;
    }

    v17 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

    [v18 presentViewController:v17 animated:1 completion:0];
    goto LABEL_10;
  }

  v16 = [v18 navigationController];
  if (v16)
  {
    v17 = v16;
    [v16 pushViewController:v15 animated:1];
LABEL_10:
  }
}

void sub_1BD711544(uint64_t a1, void *a2)
{
  v57 = sub_1BE04BD74();
  v4 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  sub_1BD23C2BC(a1, &v54 - v11);
  v13 = type metadata accessor for FeatureError(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD416C0, &unk_1BE0BC2A0);
    v56 = 0;
    v15 = 0;
  }

  else
  {
    v55 = a2;
    v16 = sub_1BE04A844();
    v17 = PKTitleForDisplayableError();

    if (v17)
    {
      v56 = sub_1BE052434();
      v15 = v18;
    }

    else
    {
      v56 = 0;
      v15 = 0;
    }

    sub_1BD230994(v12);
    a2 = v55;
  }

  sub_1BD23C2BC(a1, v9);
  if (v14(v9, 1, v13) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD416C0, &unk_1BE0BC2A0);
    v19 = 0;
    v20 = v57;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_15:
    v21 = 0;
    if (v19)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v37 = sub_1BE04A844();
  v38 = MEMORY[0x1BFB42D10]();

  v20 = v57;
  if (v38)
  {
    sub_1BE052434();
    v19 = v39;
  }

  else
  {
    v19 = 0;
  }

  sub_1BD230994(v9);
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_9:
  v21 = sub_1BE052404();
  v15, v22, v23, v24, v25, v26, v27, v28;
  if (v19)
  {
LABEL_10:
    v29 = sub_1BE052404();
    v19, v30, v31, v32, v33, v34, v35, v36;
    goto LABEL_17;
  }

LABEL_16:
  v29 = 0;
LABEL_17:
  v40 = [objc_opt_self() alertControllerWithTitle:v21 message:v29 preferredStyle:1];

  (*(v4 + 104))(v6, *MEMORY[0x1E69B8060], v20);
  v41 = PKPassKitBundle();
  if (v41)
  {
    v42 = v41;
    sub_1BE04B6F4();
    v44 = v43;

    (*(v4 + 8))(v6, v20);
    v45 = sub_1BE052404();
    v44, v46, v47, v48, v49, v50, v51, v52;
    v53 = [objc_opt_self() actionWithTitle:v45 style:1 handler:0];

    [v40 addAction_];
    PKApplyDefaultIconToAlertController();
    [a2 presentViewController:v40 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD711988(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1BE051F54();
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE051FA4();
  v10 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a4;
  aBlock[4] = sub_1BD714EF0;
  v31 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_115;
  v15 = _Block_copy(aBlock);
  v16 = v31;
  v17 = a1;
  v18 = a3;
  v19 = a4;
  v16, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD715004(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v29 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v28);
}

uint64_t sub_1BD711C58(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a3;
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1BE04AA64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - v18;
  if (a1 && ((*(v13 + 56))(v11, 1, 1, v12, v17), sub_1BD715004(&qword_1EBD51090, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD8]), sub_1BE053A34(), (*(v13 + 48))(v11, 1, v12) != 1))
  {
    v28 = *(v13 + 32);
    v28(v15, v11, v12);
    v28(v19, v15, v12);
    v29 = objc_opt_self();
    v30 = sub_1BE04A9C4();

    return (*(v13 + 8))(v19, v12);
  }

  else
  {
    sub_1BE04D194();
    v20 = a2;
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C34();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      if (a2)
      {
        v25 = a2;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        v27 = v26;
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      *(v23 + 4) = v26;
      *v24 = v27;
      _os_log_impl(&dword_1BD026000, v21, v22, "AppleBalanceAddMoneyUIManager: AMSBag failed to fetch addFunds URL: %@", v23, 0xCu);
      sub_1BD0DE53C(v24, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v24, -1, -1);
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1BD712048(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BE048964();
  v17 = a2;
  v9 = a4;
  v8(a2, a3, a4);
  v7, v10, v11, v12, v13, v14, v15, v16;
}

uint64_t sub_1BD7120DC(void *a1)
{
  v2 = v1;
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BD714590;
  v28 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_53_1;
  v13 = _Block_copy(aBlock);
  v14 = v28;
  v15 = v2;
  v16 = a1;
  v14, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD715004(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v26);
}

void sub_1BD712398(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_1BD714598;
  v14 = v3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1BD126964;
  v13[3] = &block_descriptor_57_4;
  v4 = _Block_copy(v13);
  v14, v5, v6, v7, v8, v9, v10, v11;
  v12 = PKCreateAlertControllerForAppleAccountTopUpUnavailable(v4, 0);
  _Block_release(v4);
  [a2 presentViewController:v12 animated:1 completion:0];
}

void sub_1BD71249C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD713C50();
  }
}

void sub_1BD7124F0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), void *a5)
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v13)
  {
    v14 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    v15 = v13;
    v16 = [v14 initWithRequest:a3 presentingViewController:v15];
    v17 = [v16 present];
    aBlock[4] = a4;
    v34 = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_23_7;
    v18 = _Block_copy(aBlock);
    v19 = v34;
    sub_1BE048964();
    v19, v20, v21, v22, v23, v24, v25, v26;
    [v17 addFinishBlock_];
    _Block_release(v18);
  }

  else
  {
    sub_1BE04D194();
    v27 = a3;
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C34();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_1BD026000, v28, v29, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present dialog request %@, but active controller was nil", v30, 0xCu);
      sub_1BD0DE53C(v31, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v31, -1, -1);
      MEMORY[0x1BFB45F20](v30, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    a4(0, 0);
  }
}

void sub_1BD712884(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), void *a5)
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v13)
  {
    v14 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    v15 = v13;
    v16 = [v14 initWithRequest:a3 presentingViewController:v15];
    v17 = [v16 performAuthentication];
    aBlock[4] = a4;
    v34 = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_26_0;
    v18 = _Block_copy(aBlock);
    v19 = v34;
    sub_1BE048964();
    v19, v20, v21, v22, v23, v24, v25, v26;
    [v17 addFinishBlock_];
    _Block_release(v18);
  }

  else
  {
    sub_1BE04D194();
    v27 = a3;
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C34();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_1BD026000, v28, v29, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present authenticate request %@, but active controller was nil", v30, 0xCu);
      sub_1BD0DE53C(v31, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v31, -1, -1);
      MEMORY[0x1BFB45F20](v30, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    a4(0, 0);
  }
}

void sub_1BD712C18(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), void *a5)
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v13)
  {
    v14 = *MEMORY[0x1E69B9378];
    v15 = *MEMORY[0x1E69B9380];
    v16 = objc_opt_self();
    v17 = v13;
    v18 = [v16 bagForProfile:v14 profileVersion:v15];
    v19 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:a3 bag:v18 presentingViewController:v17];
    v20 = [v19 presentEngagement];
    aBlock[4] = a4;
    v37 = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_29_6;
    v21 = _Block_copy(aBlock);
    v22 = v37;
    sub_1BE048964();
    v22, v23, v24, v25, v26, v27, v28, v29;
    [v20 addFinishBlock_];
    _Block_release(v21);
  }

  else
  {
    sub_1BE04D194();
    v30 = a3;
    v31 = sub_1BE04D204();
    v32 = sub_1BE052C34();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&dword_1BD026000, v31, v32, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present engagement request %@, but active controller was nil", v33, 0xCu);
      sub_1BD0DE53C(v34, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v34, -1, -1);
      MEMORY[0x1BFB45F20](v33, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    a4(0, 0);
  }
}

void sub_1BD712FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1BE04A844();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1BD713068(uint64_t a1, void *a2, void (*a3)(void, void), void *a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v12)
  {
    v13 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    v14 = v12;
    v15 = [v13 initWithRequest:a2 presentingViewController:v14];
    v16 = [v15 present];
    aBlock[4] = a3;
    v33 = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_32_2;
    v17 = _Block_copy(aBlock);
    v18 = v33;
    sub_1BE048964();
    v18, v19, v20, v21, v22, v23, v24, v25;
    [v16 addFinishBlock_];
    _Block_release(v17);
  }

  else
  {
    sub_1BE04D194();
    v26 = a2;
    v27 = sub_1BE04D204();
    v28 = sub_1BE052C34();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_1BD026000, v27, v28, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present dialog request %@, but active controller was nil", v29, 0xCu);
      sub_1BD0DE53C(v30, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v30, -1, -1);
      MEMORY[0x1BFB45F20](v29, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    a3(0, 0);
  }
}

void sub_1BD7133E4(uint64_t a1, void *a2, void (*a3)(void, void), void *a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v12)
  {
    v13 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    v14 = v12;
    v15 = [v13 initWithRequest:a2 presentingViewController:v14];
    v16 = [v15 performAuthentication];
    aBlock[4] = a3;
    v33 = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_35_4;
    v17 = _Block_copy(aBlock);
    v18 = v33;
    sub_1BE048964();
    v18, v19, v20, v21, v22, v23, v24, v25;
    [v16 addFinishBlock_];
    _Block_release(v17);
  }

  else
  {
    sub_1BE04D194();
    v26 = a2;
    v27 = sub_1BE04D204();
    v28 = sub_1BE052C34();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_1BD026000, v27, v28, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present authenticate request %@, but active controller was nil", v29, 0xCu);
      sub_1BD0DE53C(v30, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v30, -1, -1);
      MEMORY[0x1BFB45F20](v29, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    a3(0, 0);
  }
}

void sub_1BD713760(uint64_t a1, void *a2, void (*a3)(void, void), void *a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v12)
  {
    v13 = *MEMORY[0x1E69B9378];
    v14 = *MEMORY[0x1E69B9380];
    v15 = objc_opt_self();
    v16 = v12;
    v17 = [v15 bagForProfile:v13 profileVersion:v14];
    v18 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:a2 bag:v17 presentingViewController:v16];
    v19 = [v18 presentEngagement];
    aBlock[4] = a3;
    v36 = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_38_2;
    v20 = _Block_copy(aBlock);
    v21 = v36;
    sub_1BE048964();
    v21, v22, v23, v24, v25, v26, v27, v28;
    [v19 addFinishBlock_];
    _Block_release(v20);
  }

  else
  {
    sub_1BE04D194();
    v29 = a2;
    v30 = sub_1BE04D204();
    v31 = sub_1BE052C34();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_1BD026000, v30, v31, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present engagement request %@, but active controller was nil", v32, 0xCu);
      sub_1BD0DE53C(v33, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v33, -1, -1);
      MEMORY[0x1BFB45F20](v32, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    a3(0, 0);
  }
}

id AppleBalanceAddMoneyUIManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleBalanceAddMoneyUIManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleBalanceAddMoneyUIManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD713C50()
{
  v0 = [objc_opt_self() bagForProfile:*MEMORY[0x1E69B9378] profileVersion:*MEMORY[0x1E69B9380]];
  v1 = sub_1BE052404();
  v2 = [v0 URLForKey_];

  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v14[4] = sub_1BD714EE8;
  v15 = v3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BD712048;
  v14[3] = &block_descriptor_109_0;
  v4 = _Block_copy(v14);
  v5 = v15;
  v6 = v0;
  v5, v7, v8, v9, v10, v11, v12, v13;
  [v2 valueWithCompletion_];
  _Block_release(v4);
}

uint64_t objectdestroy_2Tm_2(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 24))
  {
    *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  if (*(v8 + 32))
  {
    *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  }

  *(v8 + 64), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD713E68(void *a1, void *a2)
{
  v33 = a2;
  v3 = sub_1BE051F54();
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1BE051FA4();
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = a1;
  FeatureError.init(feature:error:)(4, a1, v15);
  sub_1BD14BE3C();
  v17 = sub_1BE052D54();
  sub_1BD23C2BC(v15, v12);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_1BD714EFC(v12, v19 + v18);
  v20 = v33;
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  aBlock[4] = sub_1BD714F6C;
  v37 = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_121_0;
  v21 = _Block_copy(aBlock);
  v22 = v37;
  v23 = v20;
  v22, v24, v25, v26, v27, v28, v29, v30;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD715004(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v8, v5, v21);
  _Block_release(v21);

  (*(v35 + 8))(v5, v3);
  (*(v6 + 8))(v8, v34);
  return sub_1BD0DE53C(v15, &qword_1EBD416C0, &unk_1BE0BC2A0);
}

uint64_t dispatch thunk of AppleBalanceAddMoneyUIManager.amsurlSession(_:task:handle:completion:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
}

uint64_t dispatch thunk of AppleBalanceAddMoneyUIManager.purchase(_:handle:completion:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();
}

void sub_1BD7145A0(void *a1, uint64_t a2, void (**a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, ...)
{
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v18 = *(a2 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v18)
  {
    v19 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    _Block_copy(a3);
    v20 = v18;
    v21 = [v19 initWithRequest:a1 presentingViewController:v20];
    v22 = [v21 present];
    aBlock[4] = a5;
    v56 = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = a6;
    v23 = _Block_copy(aBlock);
    v24 = v56;
    sub_1BE048964();
    v24, v25, v26, v27, v28, v29, v30, v31;
    [v22 addFinishBlock_];
    _Block_release(v23);
    v17, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    _Block_copy(a3);
    sub_1BE04D194();
    v39 = a1;
    v40 = sub_1BE04D204();
    v41 = sub_1BE052C34();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v54 = a7;
      v44 = v43;
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v39;
      v45 = v39;
      _os_log_impl(&dword_1BD026000, v40, v41, v54, v42, 0xCu);
      sub_1BD0DE53C(v44, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v44, -1, -1);
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    a3[2](a3, 0, 0);
    v17, v46, v47, v48, v49, v50, v51, v52;
  }
}

void sub_1BD714894(void *a1, uint64_t a2, void (**a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, ...)
{
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v18 = *(a2 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v18)
  {
    v19 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    _Block_copy(a3);
    v20 = v18;
    v21 = [v19 initWithRequest:a1 presentingViewController:v20];
    v22 = [v21 performAuthentication];
    aBlock[4] = a5;
    v56 = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = a6;
    v23 = _Block_copy(aBlock);
    v24 = v56;
    sub_1BE048964();
    v24, v25, v26, v27, v28, v29, v30, v31;
    [v22 addFinishBlock_];
    _Block_release(v23);
    v17, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    _Block_copy(a3);
    sub_1BE04D194();
    v39 = a1;
    v40 = sub_1BE04D204();
    v41 = sub_1BE052C34();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v54 = a7;
      v44 = v43;
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v39;
      v45 = v39;
      _os_log_impl(&dword_1BD026000, v40, v41, v54, v42, 0xCu);
      sub_1BD0DE53C(v44, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v44, -1, -1);
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    a3[2](a3, 0, 0);
    v17, v46, v47, v48, v49, v50, v51, v52;
  }
}

void sub_1BD714B88(void *a1, uint64_t a2, void (**a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, ...)
{
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v18 = *(a2 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v18)
  {
    v19 = *MEMORY[0x1E69B9378];
    v20 = *MEMORY[0x1E69B9380];
    v21 = objc_opt_self();
    _Block_copy(a3);
    v22 = v18;
    v23 = [v21 bagForProfile:v19 profileVersion:v20];
    v24 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:a1 bag:v23 presentingViewController:v22];
    v25 = [v24 presentEngagement];
    aBlock[4] = a5;
    v59 = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = a6;
    v26 = _Block_copy(aBlock);
    v27 = v59;
    sub_1BE048964();
    v27, v28, v29, v30, v31, v32, v33, v34;
    [v25 addFinishBlock_];
    _Block_release(v26);
    v17, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    _Block_copy(a3);
    sub_1BE04D194();
    v42 = a1;
    v43 = sub_1BE04D204();
    v44 = sub_1BE052C34();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57 = a7;
      v47 = v46;
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v42;
      v48 = v42;
      _os_log_impl(&dword_1BD026000, v43, v44, v57, v45, 0xCu);
      sub_1BD0DE53C(v47, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v47, -1, -1);
      MEMORY[0x1BFB45F20](v45, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    a3[2](a3, 0, 0);
    v17, v49, v50, v51, v52, v53, v54, v55;
  }
}

uint64_t sub_1BD714EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD714F6C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD711544(v0 + v2, v3);
}

uint64_t sub_1BD715004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_1BD715184(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (!v2)
  {
    v6 = 0xE000000000000000;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0xE000000000000000;
    goto LABEL_6;
  }

  v4 = [v2 issuerName];
  sub_1BE052434();
  v6 = v5;

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = [v3 issuerName];
  sub_1BE052434();
  v9 = v8;

LABEL_6:
  sub_1BD0DDEBC();
  v10 = sub_1BE0535A4();
  v6, v11, v12, v13, v14, v15, v16, v17;
  v9, v18, v19, v20, v21, v22, v23, v24;
  return v10 == -1;
}

uint64_t sub_1BD715280()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD7152F4(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

void sub_1BD715348(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1BE053A44();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4 != 0;
}

uint64_t sub_1BD7153C8()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = 0xE400000000000000;
  v3 = 0xEC000000726F7272;
  v4 = 0xEA0000000000656CLL;
  if (v1 != 3)
  {
    v4 = 0xE800000000000000;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0xE700000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_1BE052524();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1BE053D64();
}

void sub_1BD7154B0(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEC000000726F7272;
  v5 = 0xEA0000000000656CLL;
  if (v2 != 3)
  {
    v5 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1BE052524();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BD715584(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  v3 = 0xE400000000000000;
  v4 = 0xEC000000726F7272;
  v5 = 0xEA0000000000656CLL;
  if (v2 != 3)
  {
    v5 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 0xE700000000000000;
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1BE052524();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1BE053D64();
}

unint64_t sub_1BD715668@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD715CB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD715698(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xEC000000726F7272;
  v6 = 0x45676E6964616F6CLL;
  v7 = 0xEA0000000000656CLL;
  v8 = 0x626967696C656E69;
  if (v2 != 3)
  {
    v8 = 0x656C626967696C65;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E6964616F6CLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1BD715760()
{
  result = qword_1EBD51098;
  if (!qword_1EBD51098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51098);
  }

  return result;
}

unint64_t sub_1BD7157B8()
{
  result = qword_1EBD510A0;
  if (!qword_1EBD510A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD510A0);
  }

  return result;
}

void sub_1BD71580C(void *a1)
{
  if (!PKOslo2024UIUpdatesEnabled() || !a1)
  {
    return;
  }

  v2 = a1;
  v3 = [v2 paymentOfferInstallmentCriteriaRequiringSetup];
  if (!v3)
  {

    return;
  }

  v4 = v3;
  sub_1BD715C6C();
  v5 = sub_1BE052744();

  v6 = [v2 eligiblePaymentOfferInstallmentCriteriaRequiringSetup];
  if (v6)
  {
    v14 = v6;
    v114 = sub_1BE052744();

    if (!(v5 >> 62))
    {
      goto LABEL_6;
    }

LABEL_55:
    v15 = sub_1BE053704();
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_56:
    v5, v7, v8, v9, v10, v11, v12, v13;

    v114, v99, v100, v101, v102, v103, v104, v105;
    return;
  }

  v114 = 0;
  if (v5 >> 62)
  {
    goto LABEL_55;
  }

LABEL_6:
  v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_56;
  }

LABEL_7:
  v16 = 0;
  v112 = v5 & 0xC000000000000001;
  v106 = v5 + 32;
  v107 = v5 & 0xFFFFFFFFFFFFFF8;
  v17 = MEMORY[0x1E69E7CC0];
  v110 = v2;
  v108 = v15;
  v109 = v5;
  while (1)
  {
    if (v112)
    {
      v18 = MEMORY[0x1BFB40900](v16, v5);
    }

    else
    {
      if (v16 >= *(v107 + 16))
      {
        goto LABEL_62;
      }

      v18 = *(v106 + 8 * v16);
    }

    v19 = v18;
    if (__OFADD__(v16++, 1))
    {
      goto LABEL_60;
    }

    if (!v114)
    {
      v72 = 3;
      goto LABEL_44;
    }

    v115 = MEMORY[0x1E69E7CC0];
    v21 = v114 >> 62 ? sub_1BE053704() : *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v113 = v16;
    sub_1BE048C84();
    if (v21)
    {
      break;
    }

    v71 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v114, v22, v23, v24, v25, v26, v27, v28;
    if ((v71 & 0x8000000000000000) != 0 || (v71 & 0x4000000000000000) != 0)
    {
      v80 = sub_1BE053704();
    }

    else
    {
      v80 = *(v71 + 16);
    }

    v5 = v109;
    v2 = v110;
    v16 = v113;
    if (v80)
    {
      if ((v71 & 0xC000000000000001) == 0)
      {
        v81 = *(v71 + 16);
        v71, v73, v74, v75, v76, v77, v78, v79;
        if (!v81)
        {
          goto LABEL_61;
        }

        v72 = 4;
        goto LABEL_44;
      }

      MEMORY[0x1BFB40900](0, v71);
      swift_unknownObjectRelease();
      v72 = 4;
    }

    else
    {
      v72 = 3;
    }

    v71, v73, v74, v75, v76, v77, v78, v79;
LABEL_44:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1BD1D7D24(0, *(v17 + 2) + 1, 1, v17, v85, v86, v87, v88);
    }

    v90 = *(v17 + 2);
    v89 = *(v17 + 3);
    if (v90 >= v89 >> 1)
    {
      v17 = sub_1BD1D7D24((v89 > 1), v90 + 1, 1, v17, v85, v86, v87, v88);
    }

    *(v17 + 2) = v90 + 1;
    v91 = &v17[16 * v90];
    v91[32] = v72;
    *(v91 + 5) = v19;
    if (v16 == v15)
    {
      v114, v82, v83, v84, v85, v86, v87, v88;
      v5, v92, v93, v94, v95, v96, v97, v98;

      return;
    }
  }

  v111 = v17;
  v29 = 0;
  while (1)
  {
    if ((v114 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1BFB40900](v29, v114);
    }

    else
    {
      if (v29 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v37 = *(v114 + 8 * v29 + 32);
    }

    v38 = v37;
    v39 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    v40 = [v37 identifier];
    v41 = sub_1BE052434();
    v43 = v42;

    v44 = [v19 identifier];
    v45 = sub_1BE052434();
    v47 = v46;

    if (v41 == v45 && v43 == v47)
    {
      v43, v48, v49, v50, v51, v52, v53, v54;
      v47, v30, v31, v32, v33, v34, v35, v36;
    }

    else
    {
      v56 = sub_1BE053B84();
      v43, v57, v58, v59, v60, v61, v62, v63;
      v47, v64, v65, v66, v67, v68, v69, v70;
      if ((v56 & 1) == 0)
      {

        goto LABEL_20;
      }
    }

    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
LABEL_20:
    ++v29;
    if (v39 == v21)
    {
      v71 = v115;
      v15 = v108;
      v17 = v111;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

unint64_t sub_1BD715C6C()
{
  result = qword_1EBD39D98;
  if (!qword_1EBD39D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD39D98);
  }

  return result;
}

unint64_t sub_1BD715CB8(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

PKWalletAppShortcutProviderWrapper __swiftcall PKWalletAppShortcutProviderWrapper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PKWalletAppShortcutProviderWrapper()
{
  result = qword_1EBD510A8;
  if (!qword_1EBD510A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD510A8);
  }

  return result;
}

uint64_t type metadata accessor for SelectedPaymentOfferActionView(uint64_t a1)
{
  result = qword_1EBD510B0;
  if (!qword_1EBD510B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD715E6C(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0, 0x1E69B91E8);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD496B0, 0x1E69B8CE8);
    if (v2 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD510C0, &qword_1EBD3DC40, 0x1E69B8C80);
      if (v3 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD39D98, 0x1E69B8C90);
        if (v4 <= 0x3F)
        {
          sub_1BD1030A8();
          if (v5 <= 0x3F)
          {
            sub_1BD33A100(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1BD10315C(319, &qword_1EBD510C8, &qword_1EBD57A10, 0x1E69B8C78);
              if (v7 <= 0x3F)
              {
                sub_1BD7160E0(319, &qword_1EBD39DB0, type metadata accessor for PresentationContext, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1BD10EE48();
                  if (v9 <= 0x3F)
                  {
                    sub_1BD33A100(319, &qword_1EBD3F248, &unk_1EBD43B50, &qword_1BE102360, MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
                    {
                      sub_1BD7160E0(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                      if (v11 <= 0x3F)
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

void sub_1BD7160E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD716160@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04FF64();
  v124 = *(v4 - 8);
  v125 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v123 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v99 - v8;
  v10 = type metadata accessor for SelectedPaymentOfferActionView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PaymentOfferActionExplanationView(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v117 = &v99 - v18;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD510D0, &qword_1BE0F27D8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v99 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD510D8, &qword_1BE0F27E0);
  v121 = *(v20 - 8);
  v122 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v119 = &v99 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD510E0, &qword_1BE0F27E8);
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v99 - v26;
  v28 = *(v2 + 64);
  if (v28)
  {
    v111 = v27;
    v112 = v24;
    v113 = v23;
    v114 = a1;
    v29 = *(v2 + 24);
    v30 = *v2;
    v103 = *(v2 + 8);
    v101 = v30;
    sub_1BD716FEC(v2, &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v32 = swift_allocObject();
    sub_1BD717358(v13, v32 + v31, type metadata accessor for SelectedPaymentOfferActionView);
    v99 = v28;
    v33 = v29;
    v34 = v30;
    v102 = sub_1BD716CA0();
    v100 = sub_1BD716DA8();
    v35 = *(v2 + 88);
    LOBYTE(v129) = *(v2 + 80);
    *(&v129 + 1) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516C4();
    v110 = v126;
    v109 = v127;
    v108 = v128;
    v107 = sub_1BE052434();
    v106 = v36;
    v105 = sub_1BE052434();
    v104 = v37;
    v130 = 0;
    v38 = type metadata accessor for MultiHyperLinkDetailSheet(0);
    (*(*(v38 - 8) + 56))(v9, 1, 1, v38);
    sub_1BD0DE19C(v9, v116, &unk_1EBD45160, &qword_1BE0C25A0);
    v39 = v99;
    sub_1BE051694();
    sub_1BD0DE53C(v9, &unk_1EBD45160, &qword_1BE0C25A0);
    v40 = &v16[*(v14 + 68)];
    *v40 = swift_getKeyPath();
    v40[8] = 0;
    v41 = v103;
    *v16 = v103;
    *(v16 + 1) = v33;
    *(v16 + 2) = v39;
    *(v16 + 3) = 0;
    *(v16 + 4) = 0xE000000000000000;
    *(v16 + 11) = 0;
    *(v16 + 72) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 40) = 0u;
    v16[96] = 0;
    *(v16 + 13) = v101;
    *(v16 + 16) = sub_1BD717050;
    *(v16 + 17) = v32;
    v16[144] = v102;
    v16[145] = v100;
    v42 = v41;
    v43 = [v33 identifier];
    if (!v43)
    {
      sub_1BE052434();
      v45 = v44;
      v43 = sub_1BE052404();
      v45, v46, v47, v48, v49, v50, v51, v52;
    }

    v53 = [v42 preferredLocalizationLanguageForCriteriaIdentifier_];

    v54 = sub_1BE052434();
    v56 = v55;

    *(v16 + 14) = v54;
    *(v16 + 15) = v56;
    v57 = &v16[*(v14 + 64)];
    v58 = v109;
    *v57 = v110;
    *(v57 + 1) = v58;
    v57[16] = v108;
    v59 = v106;
    *(v16 + 19) = v107;
    *(v16 + 20) = v59;
    v60 = v104;
    *(v16 + 21) = v105;
    *(v16 + 22) = v60;
    v16[184] = 1;
    *(v16 + 24) = 0;
    *(v16 + 25) = 0;
    v61 = v16;
    v62 = v117;
    sub_1BD717358(v61, v117, type metadata accessor for PaymentOfferActionExplanationView);
    v129 = *(v2 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390, &qword_1BE0F2820);
    sub_1BE0516C4();
    v63 = v126;
    v64 = v127;
    v65 = v128;
    v66 = v118;
    sub_1BD6FCEC8(v126, v127, v128);
    v64, v67, v68, v69, v70, v71, v72, v73;
    v63, v74, v75, v76, v77, v78, v79, v80;

    sub_1BD7173C0(v62, type metadata accessor for PaymentOfferActionExplanationView);
    v81 = v123;
    sub_1BE04FF54();
    v82 = sub_1BD7170B4();
    v84 = v119;
    v83 = v120;
    sub_1BE050D14();
    (*(v124 + 8))(v81, v125);
    sub_1BD0DE53C(v66, &qword_1EBD510D0, &qword_1BE0F27D8);
    sub_1BE052434();
    v86 = v85;
    v126 = v83;
    v127 = v82;
    swift_getOpaqueTypeConformance2();
    v87 = v111;
    v88 = v122;
    sub_1BE050DE4();

    v86, v89, v90, v91, v92, v93, v94, v95;
    (*(v121 + 8))(v84, v88);
    v96 = v114;
    sub_1BD0A6D20(v87, v114);
    return (*(v112 + 56))(v96, 0, 1, v113);
  }

  else
  {
    v98 = *(v24 + 56);

    return v98(a1, 1, 1, v25);
  }
}

void sub_1BD716A0C(unsigned __int8 a1)
{
  v2 = a1;
  v3 = type metadata accessor for SelectedPaymentOfferActionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 == 6)
  {
    v8 = *(v1 + 48);
    if (v8)
    {
      v9 = *(v1 + 56);
      v10 = sub_1BE048964();
      v8(v10);

      sub_1BD0D4744(v8, v9, v11, v12, v13, v14, v15, v16);
    }

    else
    {
      v17 = *(v1 + 88);
      LOBYTE(v41) = *(v1 + 80);
      v42 = v17;
      LOBYTE(v40) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      v18 = v1;
      sub_1BE0516B4();
      v20 = *v1;
      v19 = *(v1 + 8);
      v41 = *v18;
      LOBYTE(v42) = 64;
      v21 = *(v18 + 24);
      objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
      v22 = v20;
      v23 = v19;
      v24 = v21;
      v25 = sub_1BD8D1EE0(&v41, v19, v21);

      v27 = *(v18 + 104);
      v41 = *(v18 + 96);
      v26 = v41;
      v42 = v27;
      v40 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390, &qword_1BE0F2820);
      sub_1BE0516B4();
      v41 = v26;
      v42 = v27;
      sub_1BE0516A4();
      v28 = v40;
      if (v40)
      {
        v29 = *(v18 + 72);
        sub_1BD716FEC(v18, &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
        v30 = (*(v4 + 80) + 16) & ~*(v4 + 80);
        v31 = swift_allocObject();
        sub_1BD717358(v7, v31 + v30, type metadata accessor for SelectedPaymentOfferActionView);
        sub_1BD8C1B80(v29, 1, sub_1BD7172E8, v31);
        v31, v32, v33, v34, v35, v36, v37, v38;
      }
    }
  }

  else
  {
    (*(v1 + 32))(0, v6);
  }
}

uint64_t sub_1BD716CA0()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 offers];
  if (v3)
  {
    v4 = v3;
    sub_1BD0E5E8C(0, &qword_1EBD39018, 0x1E69B8C88);
    v5 = sub_1BE052744();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v7 = [v2 action];
  if (v7)
  {
    v15 = v7;
    v5, v8, v9, v10, v11, v12, v13, v14;

    return 6;
  }

  else
  {
    if (v5 >> 62)
    {
      v16 = sub_1BE053704();
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5, v8, v9, v10, v11, v12, v13, v14;

    if (v16)
    {
      return 6;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1BD716DA8()
{
  if (sub_1BD716CA0() != 6)
  {
    return 7;
  }

  v1 = [*(v0 + 24) suppressPayInFull];
  result = 7;
  if ((v1 & 1) == 0)
  {
    v3 = [*(v0 + 8) configuration];
    v4 = [v3 context];

    if (v4 == 3)
    {
      return 7;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

void *sub_1BD716E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50, &qword_1BE0F2290);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  v10 = *(a2 + 88);
  v12[16] = *(a2 + 80);
  v13 = v10;
  v12[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  sub_1BD0DE19C(a1, v9, &unk_1EBD57C50, &qword_1BE0F2290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = *v9;
    if (*v9)
    {

      return (*(a2 + 32))(0);
    }
  }

  else
  {
    sub_1BD717358(v9, v6, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    (*(a2 + 32))(*(v6 + 1));
    return sub_1BD7173C0(v6, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
  }

  return result;
}

uint64_t sub_1BD716FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedPaymentOfferActionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD7170B4()
{
  result = qword_1EBD510E8;
  if (!qword_1EBD510E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD510D0, &qword_1BE0F27D8);
    sub_1BD70BF88();
    sub_1BD71759C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView, &unk_1BE0D53B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD510E8);
  }

  return result;
}

uint64_t objectdestroyTm_82()
{
  v1 = type metadata accessor for SelectedPaymentOfferActionView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  if (*(v2 + 48))
  {
    *(v2 + 56), v10, v11, v12, v13, v14, v15, v16;
  }

  *(v2 + 72), v17, v18, v19, v20, v21, v22, v23;
  *(v2 + 88), v24, v25, v26, v27, v28, v29, v30;

  *(v2 + 104), v31, v32, v33, v34, v35, v36, v37;
  v38 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_1BE04E354();
    (*(*(v46 - 8) + 8))(v2 + v38, v46);
  }

  else
  {
    *(v2 + v38), v39, v40, v41, v42, v43, v44, v45;
  }

  return swift_deallocObject();
}

void *sub_1BD7172E8(uint64_t a1)
{
  v3 = *(type metadata accessor for SelectedPaymentOfferActionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD716E38(a1, v4);
}

uint64_t sub_1BD717358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7173C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD717420()
{
  result = qword_1EBD510F0;
  if (!qword_1EBD510F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD510F8, &qword_1BE0F2828);
    sub_1BD7174A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD510F0);
  }

  return result;
}

unint64_t sub_1BD7174A4()
{
  result = qword_1EBD51100;
  if (!qword_1EBD51100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD510E0, &qword_1BE0F27E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD510D0, &qword_1BE0F27D8);
    sub_1BD7170B4();
    swift_getOpaqueTypeConformance2();
    sub_1BD71759C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51100);
  }

  return result;
}

uint64_t sub_1BD71759C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD7175E4@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for PeerPaymentGroupRecipientPickerView(0);
  sub_1BD0DE19C(v1 + *(v10 + 20), v9, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = *v9;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PeerPaymentGroupRecipientPickerView.init(model:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for PeerPaymentGroupRecipientPickerView(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for PeerPaymentGroupRecipientPickerView(uint64_t a1)
{
  result = qword_1EBD51168;
  if (!qword_1EBD51168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PeerPaymentGroupRecipientPickerView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51108, &qword_1BE0F2868);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51110, &qword_1BE0F2870);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51118, &qword_1BE0F2878);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51120, &qword_1BE0F2880);
  sub_1BD71AD00();
  sub_1BD0DE4F4(&qword_1EBD51160, &qword_1EBD51120, &qword_1BE0F2880, MEMORY[0x1E697C5E0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1BE04EC04();
}

id sub_1BD7179F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = sub_1BE04F434();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51148, &unk_1BE0F2890);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v35 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51138, &qword_1BE0F2888);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51118, &qword_1BE0F2878);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51110, &qword_1BE0F2870);
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  *v7 = sub_1BE051CD4();
  v7[1] = v17;
  v18 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51188, &qword_1BE0F2930) + 44);
  v37 = a1;
  sub_1BD718E64(a1, v18);
  v19 = [objc_opt_self() clearColor];
  result = [objc_opt_self() backgroundColor];
  if (result)
  {

    v21 = sub_1BE0511C4();
    v22 = sub_1BE0501D4();
    sub_1BD0DE204(v7, v10, &qword_1EBD51148, &unk_1BE0F2890);
    v23 = &v10[*(v8 + 36)];
    *v23 = v21;
    v23[8] = v22;
    v24 = *(v11 + 36);
    v25 = *MEMORY[0x1E697DBA8];
    v26 = sub_1BE04E354();
    v27 = *(v26 - 8);
    (*(v27 + 104))(&v13[v24], v25, v26);
    (*(v27 + 56))(&v13[v24], 0, 1, v26);
    v28 = sub_1BD0DE204(v10, v13, &qword_1EBD51138, &qword_1BE0F2888);
    MEMORY[0x1EEE9AC00](v28);
    *(&v35 - 2) = v37;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51120, &qword_1BE0F2880);
    v30 = sub_1BD71AD00();
    v31 = sub_1BD0DE4F4(&qword_1EBD51160, &qword_1EBD51120, &qword_1BE0F2880, MEMORY[0x1E697C5E0]);
    sub_1BE051024();
    sub_1BD0A6F4C(v13);
    v32 = v38;
    v33 = v40;
    (*(v38 + 104))(v4, *MEMORY[0x1E697C438], v40);
    v41 = v11;
    v42 = v29;
    v43 = v30;
    v44 = v31;
    swift_getOpaqueTypeConformance2();
    v34 = v36;
    sub_1BE050E84();
    (*(v32 + 8))(v4, v33);
    return (*(v35 + 8))(v16, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD717EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51190, &qword_1BE0F2938);
  MEMORY[0x1EEE9AC00](v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51198, &qword_1BE0F2940);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD511A0, &qword_1BE0F2948);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  sub_1BE04FAD4();
  v16[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD511A8, &qword_1BE0F2950);
  sub_1BD71AF74();
  sub_1BE04E424();
  sub_1BE04FB34();
  v16[4] = a1;
  sub_1BE04E424();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  sub_1BE04F854();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1BD7181F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PeerPaymentGroupRecipientPickerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BD71B060(a1, &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BD71B0C4(&v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD511E0, &qword_1BE0F2960);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD511E8, &qword_1BE0F2968);
  v10 = sub_1BD71B190();
  v26 = v9;
  v27 = v10;
  swift_getOpaqueTypeConformance2();
  sub_1BE051704();
  v11 = *a1;
  KeyPath = swift_getKeyPath();
  v26 = v11;
  sub_1BD71C9A4(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  LOBYTE(v11) = *(v11 + 40);
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD511A8, &qword_1BE0F2950);
  v23 = (a2 + *(result + 36));
  *v23 = v20;
  v23[1] = sub_1BD10DF54;
  v23[2] = v21;
  return result;
}

void sub_1BD718450()
{
  v0 = sub_1BE04E664();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD7175E4(v3);
  sub_1BE04E654();
  (*(v1 + 8))(v3, v0);
  sub_1BD718530();
}

void sub_1BD718530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51220, &unk_1BE0F29D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  *(inited + 32) = sub_1BE052434();
  *(inited + 40) = v1;
  *(inited + 48) = sub_1BE052434();
  *(inited + 56) = v2;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v3;
  KeyPath = swift_getKeyPath();
  sub_1BD71C9A4(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = [Strong conversationSize];
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_opt_self();
  v15 = [v14 bucketValueForGroupSize_];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BE052434();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  *(inited + 80) = v17;
  *(inited + 88) = v19;
  *(inited + 96) = sub_1BE052434();
  *(inited + 104) = v20;
  v21 = swift_getKeyPath();
  sub_1BE04B594();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = [v29 ineligibleCount];
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0;
  }

  v31 = [v14 bucketValueForIneligibleCount_];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1BE052434();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  *(inited + 112) = v33;
  *(inited + 120) = v35;
  v36 = sub_1BD1AE170(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51228, &qword_1BE0F2A10);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1BE0BA730;
  v38 = *MEMORY[0x1E69BA850];
  *(v37 + 32) = *MEMORY[0x1E69BA850];
  v39 = sub_1BE052434();
  v40 = MEMORY[0x1E69BABE8];
  *(v37 + 40) = v39;
  *(v37 + 48) = v41;
  v42 = *v40;
  *(v37 + 56) = *v40;
  v43 = sub_1BE052434();
  v44 = MEMORY[0x1E69BA680];
  *(v37 + 64) = v43;
  *(v37 + 72) = v45;
  v46 = *v44;
  *(v37 + 80) = *v44;
  v47 = sub_1BE052434();
  v48 = MEMORY[0x1E69BA440];
  *(v37 + 88) = v47;
  *(v37 + 96) = v49;
  v50 = *v48;
  *(v37 + 104) = *v48;
  v51 = sub_1BE052434();
  v52 = MEMORY[0x1E69BAFB0];
  *(v37 + 112) = v51;
  *(v37 + 120) = v53;
  v54 = *v52;
  *(v37 + 128) = *v52;
  *(v37 + 136) = sub_1BE052434();
  *(v37 + 144) = v55;
  v56 = v38;
  v57 = v42;
  v58 = v46;
  v59 = v50;
  v60 = v54;
  v61 = sub_1BD1AAF50(v37);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v62 = sub_1BD1A8C44(v61);
  v61, v63, v64, v65, v66, v67, v68, v69;
  v70 = sub_1BE052224();
  v62, v71, v72, v73, v74, v75, v76, v77;
  v78 = sub_1BD1A8F14(v36);
  v36, v79, v80, v81, v82, v83, v84, v85;
  v86 = sub_1BE052224();
  v78, v87, v88, v89, v90, v91, v92, v93;
  [v14 reportAppleCashEvent:v70 withMessagesContext:v86];
}

void sub_1BD718998(uint64_t *a1)
{
  v1 = sub_1BE051574();
  v2 = [objc_opt_self() clearColor];
  if ([objc_opt_self() primaryTextColor])
  {

    v3 = sub_1BE0511C4();
    KeyPath = swift_getKeyPath();
    sub_1BD71C9A4(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
    sub_1BE04B594();
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD511E8, &qword_1BE0F2968);
    sub_1BD71B190();
    sub_1BE050EA4();
    v3, v12, v13, v14, v15, v16, v17, v18;
    v1, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD718B30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8050], v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B69E0;
  v10 = [*(*a1 + 32) minimalFormattedStringValue];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BE052434();
    v14 = v13;

    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1BD110550();
    *(v9 + 32) = v12;
    *(v9 + 40) = v14;
    v15 = sub_1BE04B714();
    v17 = v16;
    v9, v16, v18, v19, v20, v21, v22, v23;
    (*(v5 + 8))(v8, v4);
    v100 = v15;
    v101 = v17;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [objc_opt_self() clearColor];
    if ([objc_opt_self() primaryTextColor])
    {

      v32 = sub_1BE0511C4();
      v100 = v32;
      v33 = sub_1BE050574();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      sub_1BD0DDF10(v24, v26, (v28 & 1), v38, v40, v41, v42, v43);
      v32, v44, v45, v46, v47, v48, v49, v50;
      v30, v51, v52, v53, v54, v55, v56, v57;
      v58 = sub_1BE0503E4();
      v59 = sub_1BE0505F4();
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v58, v60, v62, v64, v66, v67, v68, v69;
      sub_1BD0DDF10(v33, v35, (v37 & 1), v70, v71, v72, v73, v74);
      v39, v75, v76, v77, v78, v79, v80, v81;
      v82 = sub_1BE0505D4();
      v84 = v83;
      LOBYTE(v35) = v85;
      v87 = v86;
      sub_1BD0DDF10(v59, v61, (v63 & 1), v86, v88, v89, v90, v91);
      v65, v92, v93, v94, v95, v96, v97, v98;
      *a2 = v82;
      *(a2 + 8) = v84;
      *(a2 + 16) = v35 & 1;
      *(a2 + 24) = v87;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD718E64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51230, &qword_1BE0F2A18);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51238, &qword_1BE0F2A20);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-v12];
  v14 = [objc_opt_self() clearColor];
  if ([objc_opt_self() backgroundColor])
  {

    v15 = sub_1BE0511C4();
    v31 = sub_1BE04EC54();
    v16 = sub_1BE0501D4();
    v30 = v16;
    MEMORY[0x1EEE9AC00](v16);
    *&v29[-16] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51240, &qword_1BE0F2A28);
    sub_1BD71C478();
    sub_1BE0504E4();
    sub_1BD0DE4F4(&qword_1EBD512F0, &qword_1EBD51230, &qword_1BE0F2A18, MEMORY[0x1E697CD20]);
    v17 = v33;
    sub_1BE050DF4();
    (*(v32 + 8))(v6, v17);
    v18 = *(v8 + 16);
    v18(v10, v13, v7);
    v19 = v31;
    *a2 = v15;
    *(a2 + 8) = v19;
    *(a2 + 16) = v30;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD512F8, &qword_1BE0F2A60);
    v18((a2 + *(v20 + 48)), v10, v7);
    v21 = *(v8 + 8);
    sub_1BE048964();
    v21(v13, v7);
    v21(v10, v7);
    v15, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD7191B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51258, &qword_1BE0F2A30);
  MEMORY[0x1EEE9AC00](v2);
  v12 = a1;
  sub_1BD71977C(&v11[-v3]);
  sub_1BD719A68();
  if (v5)
  {
    v13 = v4;
    v14 = v5;
    sub_1BD0DDEBC();
    v6 = sub_1BE0506C4();
    v9 = v8 & 1;
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v7 = 0;
  }

  v13 = v6;
  v14 = v5;
  v15 = v9;
  v16 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD512A8, &qword_1BE0F2A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD71C518();
  sub_1BD71C65C();
  sub_1BD12E194();
  return sub_1BE051A34();
}

uint64_t sub_1BD719318(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentGroupRecipientPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *(*a1 + 16);
  swift_bridgeObjectRetain_n();
  v19[0] = sub_1BD6D3E64(v6, v5);
  sub_1BD71AC7C(v19);
  v5, v7, v8, v9, v10, v11, v12, v13;
  v19[2] = v19[0];
  sub_1BD71B060(a1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_1BD71B0C4(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51308, &qword_1BE0F2B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51310, &qword_1BE0F2B20);
  sub_1BD0DE4F4(&qword_1EBD51318, &qword_1EBD51308, &qword_1BE0F2B18, MEMORY[0x1E69E6338]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD512B0, &qword_1BE0F2A50);
  v17 = sub_1BD71C71C();
  v19[0] = v16;
  v19[1] = v17;
  swift_getOpaqueTypeConformance2();
  sub_1BD71C9A4(&qword_1EBD51320, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  return sub_1BE0519D4();
}

uint64_t sub_1BD71957C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PeerPaymentGroupRecipientPickerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD512B0, &qword_1BE0F2A50);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *a1;
  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51328, &qword_1BE0F2B28);
  sub_1BD71A0F0(v10, a2, &v9[*(v11 + 44)]);
  v9[*(v7 + 36)] = 0;
  sub_1BD71B060(a2, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1BD71B0C4(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), &v13[v12]);
  *&v13[(v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = v10;
  sub_1BD71C71C();
  sub_1BE048964();
  sub_1BE0509D4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  return sub_1BD0DE53C(v9, &qword_1EBD512B0, &qword_1BE0F2A50);
}

int *sub_1BD71977C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51268, &unk_1BE0F2A38);
  v5 = MEMORY[0x1EEE9AC00](v49);
  v7 = &v48 - v6;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B8050], v1, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v2 + 8))(v4, v1);
    v51 = v10;
    v52 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = sub_1BE050464();
    v21 = sub_1BE0505F4();
    v23 = v22;
    LOBYTE(v10) = v24;
    v26 = v25;
    v20, v22, v24, v25, v27, v28, v29, v30;
    sub_1BD0DDF10(v13, v15, (v17 & 1), v31, v32, v33, v34, v35);
    v19, v36, v37, v38, v39, v40, v41, v42;
    KeyPath = swift_getKeyPath();
    v44 = &v7[*(v49 + 36)];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v46 = sub_1BE0505C4();
    (*(*(v46 - 8) + 56))(v44 + v45, 1, 1, v46);
    *v44 = swift_getKeyPath();
    *v7 = v21;
    *(v7 + 1) = v23;
    v7[16] = v10 & 1;
    *(v7 + 3) = v26;
    *(v7 + 4) = KeyPath;
    v7[40] = 0;
    v47 = v50;
    sub_1BD0DE204(v7, v50, &qword_1EBD51268, &unk_1BE0F2A38);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51258, &qword_1BE0F2A30);
    *(v47 + result[9]) = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD719A68()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 24);
  swift_bridgeObjectRetain_n();
  v157 = sub_1BD6D3E64(v6, v5);
  v7 = 0;
  sub_1BD71AC7C(&v157);
  v5, v8, v9, v10, v11, v12, v13, v14;
  v22 = v157;
  if ((v157 & 0x8000000000000000) == 0 && (v157 & 0x4000000000000000) == 0)
  {
    v23 = *(v157 + 16);
    if (v23)
    {
      goto LABEL_4;
    }

LABEL_21:
    v22, v15, v16, v17, v18, v19, v20, v21;
    return;
  }

  v23 = sub_1BE053704();
  if (!v23)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (v23 == 1)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v77 = MEMORY[0x1BFB40900](0, v22);
    }

    else
    {
      if (!*(v22 + 16))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v77 = *(v22 + 32);
      sub_1BE048964();
    }

    v22, v78, v79, v80, v81, v82, v83, v84;
    (*(v2 + 104))(v4, *MEMORY[0x1E69B8050], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1BE0B69E0;
    KeyPath = swift_getKeyPath();
    v157 = v77;
    sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
    sub_1BE04B594();
    KeyPath, v87, v88, v89, v90, v91, v92, v93;
    v95 = v77[4];
    v94 = v77[5];
    *(v85 + 56) = MEMORY[0x1E69E6158];
    *(v85 + 64) = sub_1BD110550();
    *(v85 + 32) = v95;
    *(v85 + 40) = v94;
    sub_1BE048C84();
    sub_1BE04B714();
    v77, v96, v97, v98, v99, v100, v101, v102;
    v85, v103, v104, v105, v106, v107, v108, v109;
    (*(v2 + 8))(v4, v1);
    return;
  }

  if (v23 == 2)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1BFB40900](0, v22);
      v26 = MEMORY[0x1BFB40900](1, v22);
      goto LABEL_10;
    }

    v24 = *(v22 + 16);
    if (v24)
    {
      if (v24 != 1)
      {
        v25 = *(v22 + 32);
        v26 = *(v22 + 40);
        sub_1BE048964();
        sub_1BE048964();
LABEL_10:
        v22, v27, v28, v29, v30, v31, v32, v33;
        v156 = "ALID_FOOTER_MULTIPLE_RECIPIENTS";
        (*(v2 + 104))(v4, *MEMORY[0x1E69B8050], v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1BE0B6CA0;
        v35 = swift_getKeyPath();
        v157 = v25;
        sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
        sub_1BE04B594();
        v35, v36, v37, v38, v39, v40, v41, v42;
        v44 = v25[4];
        v43 = v25[5];
        *(v34 + 56) = MEMORY[0x1E69E6158];
        v45 = sub_1BD110550();
        *(v34 + 64) = v45;
        *(v34 + 32) = v44;
        *(v34 + 40) = v43;
        v46 = swift_getKeyPath();
        v155 = v1;
        v157 = v26;
        sub_1BE048C84();
        sub_1BE04B594();
        v46, v47, v48, v49, v50, v51, v52, v53;
        v55 = v26[4];
        v54 = v26[5];
        *(v34 + 96) = MEMORY[0x1E69E6158];
        *(v34 + 104) = v45;
        *(v34 + 72) = v55;
        *(v34 + 80) = v54;
        sub_1BE048C84();
        sub_1BE04B714();
        v25, v56, v57, v58, v59, v60, v61, v62;
        v26, v63, v64, v65, v66, v67, v68, v69;
        v34, v70, v71, v72, v73, v74, v75, v76;
        (*(v2 + 8))(v4, v155);
        return;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1BFB40900](0, v22);
    goto LABEL_18;
  }

  if (*(v22 + 16))
  {
    v7 = *(v22 + 32);
    sub_1BE048964();
LABEL_18:
    v22, v110, v111, v112, v113, v114, v115, v116;
    v117 = v23 - 1;
    if (!__OFSUB__(v23, 1))
    {
      v156 = "PIENT_PICKER_SEND_TITLE";
      (*(v2 + 104))(v4, *MEMORY[0x1E69B8050], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1BE0B6CA0;
      v119 = swift_getKeyPath();
      v120 = v1;
      v157 = v7;
      sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
      sub_1BE04B594();
      v119, v121, v122, v123, v124, v125, v126, v127;
      v128 = v7[4];
      v129 = v7[5];
      v130 = MEMORY[0x1E69E6158];
      *(v118 + 56) = MEMORY[0x1E69E6158];
      v131 = sub_1BD110550();
      *(v118 + 64) = v131;
      *(v118 + 32) = v128;
      *(v118 + 40) = v129;
      v157 = v117;
      sub_1BE048C84();
      v132 = sub_1BE053B24();
      *(v118 + 96) = v130;
      *(v118 + 104) = v131;
      *(v118 + 72) = v132;
      *(v118 + 80) = v133;
      sub_1BE04B714();
      v7, v134, v135, v136, v137, v138, v139, v140;
      v118, v141, v142, v143, v144, v145, v146, v147;
      (*(v2 + 8))(v4, v120);
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);

  v157, v148, v149, v150, v151, v152, v153, v154;
  __break(1u);
}

void sub_1BD71A0F0(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v151 = *(v5 - 8);
  v152 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v155 = &v150 - v6;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424B8, &qword_1BE0CD770);
  v169 = *(v172 - 1);
  MEMORY[0x1EEE9AC00](v172);
  v150 = &v150 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51340, &qword_1BE0F2B30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v170 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v173 = &v150 - v11;
  KeyPath = swift_getKeyPath();
  v13 = OBJC_IVAR____TtC9PassKitUI25PeerPaymentGroupRecipient___observationRegistrar;
  v178 = a1;
  sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v167 = a1[6];
  v168 = v167;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v166 = v192;
  v165 = v193;
  v164 = v194;
  v163 = v195;
  v161 = v197;
  v162 = v196;
  v21 = swift_getKeyPath();
  v178 = a1;
  v156 = v13;
  sub_1BE04B594();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = a1[5];
  v178 = a1[4];
  v179 = v29;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v30 = sub_1BE0506C4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v154 = objc_opt_self();
  v37 = [v154 clearColor];
  v153 = objc_opt_self();
  if (![v153 primaryTextColor])
  {
    __break(1u);
    goto LABEL_13;
  }

  v38 = sub_1BE0511C4();
  v178 = v38;
  v39 = sub_1BE050574();
  v158 = v40;
  v159 = v39;
  v42 = v41;
  v160 = v43;
  sub_1BD0DDF10(v30, v32, (v34 & 1), v43, v44, v45, v46, v47);
  v38, v48, v49, v50, v51, v52, v53, v54;
  v36, v55, v56, v57, v58, v59, v60, v61;
  v157 = sub_1BE050204();
  v62 = v42 & 1;
  v191 = v42 & 1;
  v188 = 1;
  v63 = *v171;
  v64 = swift_getKeyPath();
  v178 = v63;
  sub_1BD71C9A4(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();
  v64, v65, v66, v67, v68, v69, v70, v71;
  v72 = *(v63 + 40);
  v73 = 1;
  v174 = v62;
  if (v72 != 1)
  {
LABEL_11:
    v138 = v173;
    (*(v169 + 56))(v173, v73, 1, v172);
    v139 = v170;
    sub_1BD0DE19C(v138, v170, &qword_1EBD51340, &qword_1BE0F2B30);
    v140 = v166;
    *a3 = v167;
    *(a3 + 8) = v140;
    *(a3 + 16) = v165;
    *(a3 + 24) = v164;
    *(a3 + 32) = v163;
    v141 = v161;
    *(a3 + 40) = v162;
    *(a3 + 48) = v141;
    v143 = v158;
    v142 = v159;
    *&v175 = v159;
    *(&v175 + 1) = v158;
    LOBYTE(v176) = v62;
    *(&v176 + 1) = *v190;
    DWORD1(v176) = *&v190[3];
    v144 = v160;
    *(&v176 + 1) = v160;
    v145 = v157;
    LOBYTE(v177[0]) = v157;
    DWORD1(v177[0]) = *&v189[3];
    *(v177 + 1) = *v189;
    *(&v177[1] + 8) = 0u;
    *(v177 + 8) = 0u;
    BYTE8(v177[2]) = 1;
    v146 = v176;
    *(a3 + 56) = v175;
    v147 = v177[0];
    v148 = v177[1];
    *(a3 + 113) = *(&v177[1] + 9);
    *(a3 + 104) = v148;
    *(a3 + 88) = v147;
    *(a3 + 72) = v146;
    *(a3 + 136) = 0;
    *(a3 + 144) = 1;
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51348, &unk_1BE0F2B60);
    sub_1BD0DE19C(v139, a3 + *(v149 + 80), &qword_1EBD51340, &qword_1BE0F2B30);
    v172 = v168;
    sub_1BD0DE19C(&v175, &v178, &unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BD0DE53C(v138, &qword_1EBD51340, &qword_1BE0F2B30);
    sub_1BD0DE53C(v139, &qword_1EBD51340, &qword_1BE0F2B30);
    v178 = v142;
    v179 = v143;
    v180 = v174;
    *v181 = *v190;
    *&v181[3] = *&v190[3];
    v182 = v144;
    v183 = v145;
    *v184 = *v189;
    *&v184[3] = *&v189[3];
    v185 = 0u;
    v186 = 0u;
    v187 = 1;
    sub_1BD0DE53C(&v178, &unk_1EBD3DF90, &qword_1BE0C2E90);

    return;
  }

  v74 = swift_getKeyPath();
  v178 = v63;
  sub_1BE04B594();
  v74, v75, v76, v77, v78, v79, v80, v81;
  v82 = *(v63 + 64);
  if (!v82)
  {
    goto LABEL_10;
  }

  v83 = swift_getKeyPath();
  v178 = v82;
  sub_1BE048964();
  sub_1BE04B594();
  v83, v84, v85, v86, v87, v88, v89, v90;
  swift_beginAccess();
  v92 = v82[2];
  v91 = v82[3];
  v93 = swift_getKeyPath();
  v178 = a1;
  sub_1BE048C84();
  sub_1BE04B594();
  v93, v94, v95, v96, v97, v98, v99, v100;
  swift_beginAccess();
  v106 = a1[2];
  v107 = a1[3];
  if (v92 == v106 && v91 == v107)
  {
    v82, v101, v106, v107, v102, v103, v104, v105;
    v91, v108, v109, v110, v111, v112, v113, v114;
    LOBYTE(v62) = v174;
    goto LABEL_8;
  }

  v115 = sub_1BE053B84();
  v82, v116, v117, v118, v119, v120, v121, v122;
  v91, v123, v124, v125, v126, v127, v128, v129;
  LOBYTE(v62) = v174;
  if ((v115 & 1) == 0)
  {
LABEL_10:
    v73 = 1;
    goto LABEL_11;
  }

LABEL_8:
  v130 = v155;
  sub_1BE04E4F4();
  v131 = [v154 clearColor];
  if ([v153 secondaryTextColor])
  {

    v132 = sub_1BE0511C4();
    v133 = swift_getKeyPath();
    v178 = v132;
    v134 = sub_1BE04E5F4();
    v135 = v150;
    (*(v151 + 32))(v150, v130, v152);
    v136 = v173;
    v137 = (v135 + v172[9]);
    *v137 = v133;
    v137[1] = v134;
    sub_1BD0DE204(v135, v136, &qword_1EBD424B8, &qword_1BE0CD770);
    v73 = 0;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
}

BOOL sub_1BD71A96C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v2 + 64);
  v13 = swift_getKeyPath();
  sub_1BE04B594();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v21 = *(v3 + 64);
  if (v12 != v21)
  {
    return v12 < v21;
  }

  v22 = swift_getKeyPath();
  sub_1BE04B594();
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = *(v2 + 40);
  v31 = swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();
  v31, v32, v33, v34, v35, v36, v37, v38;
  sub_1BD0DDEBC();
  v39 = sub_1BE0535C4();
  v30, v40, v41, v42, v43, v44, v45, v46;
  return v39 == -1;
}

uint64_t sub_1BD71AB2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51108, &qword_1BE0F2868);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51110, &qword_1BE0F2870);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51118, &qword_1BE0F2878);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51120, &qword_1BE0F2880);
  sub_1BD71AD00();
  sub_1BD0DE4F4(&qword_1EBD51160, &qword_1EBD51120, &qword_1BE0F2880, MEMORY[0x1E697C5E0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1BE04EC04();
}

uint64_t sub_1BD71AC7C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BD5F0648(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BD71B21C(v6);
  return sub_1BE0538D4();
}

unint64_t sub_1BD71AD00()
{
  result = qword_1EBD51128;
  if (!qword_1EBD51128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51118, &qword_1BE0F2878);
    sub_1BD71ADB8();
    sub_1BD0DE4F4(&unk_1EBD51150, &qword_1EBD50BF8, &qword_1BE0F28A0, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51128);
  }

  return result;
}

unint64_t sub_1BD71ADB8()
{
  result = qword_1EBD51130;
  if (!qword_1EBD51130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51138, &qword_1BE0F2888);
    sub_1BD0DE4F4(&qword_1EBD51140, &qword_1EBD51148, &unk_1BE0F2890, MEMORY[0x1E6981880]);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51130);
  }

  return result;
}

void sub_1BD71AEE0(uint64_t a1)
{
  type metadata accessor for PeerPaymentGroupRecipientPickerModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BD170C00(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD71AF74()
{
  result = qword_1EBD511B0;
  if (!qword_1EBD511B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD511A8, &qword_1BE0F2950);
    sub_1BD0DE4F4(&qword_1EBD511B8, &unk_1EBD511C0, &qword_1BE0F2958, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD511B0);
  }

  return result;
}

uint64_t sub_1BD71B060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentGroupRecipientPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD71B0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentGroupRecipientPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD71B128()
{
  type metadata accessor for PeerPaymentGroupRecipientPickerView(0);

  sub_1BD718450();
}

unint64_t sub_1BD71B190()
{
  result = qword_1EBD511F0;
  if (!qword_1EBD511F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD511E8, &qword_1BE0F2968);
    sub_1BD4E79F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD511F0);
  }

  return result;
}

void sub_1BD71B21C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      v9 = v2 / 2;
      if (v2 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for PeerPaymentGroupRecipient(0);
        v10 = sub_1BE0527B4();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v104 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v105 = v9;
      sub_1BD71B530(&v104, v103, a1, v8, v4, v5, v6, v7);
      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      v10, v91, v92, v93, v94, v95, v96, v97;
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v2 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (v2 >= 2)
  {
    v98 = v2;
    v11 = *a1;
    v12 = -1;
    v13 = 1;
    v102 = *a1;
    do
    {
      v100 = v13;
      v101 = v12;
      v14 = *(v102 + 8 * v13);
      v99 = v11;
      do
      {
        v15 = *v11;
        KeyPath = swift_getKeyPath();
        v17 = OBJC_IVAR____TtC9PassKitUI25PeerPaymentGroupRecipient___observationRegistrar;
        v104 = v14;
        sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
        sub_1BE048964();
        sub_1BE048964();
        v106 = v17;
        sub_1BE04B594();
        KeyPath, v18, v19, v20, v21, v22, v23, v24;
        v25 = *(v14 + 64);
        v26 = swift_getKeyPath();
        v104 = v15;
        sub_1BE04B594();
        v26, v27, v28, v29, v30, v31, v32, v33;
        v41 = *(v15 + 64);
        if (v25 == v41)
        {
          v42 = swift_getKeyPath();
          v104 = v14;
          sub_1BE04B594();
          v42, v43, v44, v45, v46, v47, v48, v49;
          v50 = *(v14 + 40);
          v104 = *(v14 + 32);
          v105 = v50;
          v51 = swift_getKeyPath();
          v103[0] = v15;
          sub_1BE048C84();
          sub_1BE04B594();
          v51, v52, v53, v54, v55, v56, v57, v58;
          v59 = *(v15 + 40);
          v103[0] = *(v15 + 32);
          v103[1] = v59;
          sub_1BD0DDEBC();
          v60 = sub_1BE0535C4();
          v14, v61, v62, v63, v64, v65, v66, v67;
          v15, v68, v69, v70, v71, v72, v73, v74;
          v50, v75, v76, v77, v78, v79, v80, v81;
          if (v60 != -1)
          {
            break;
          }
        }

        else
        {
          v14, v34, v35, v36, v37, v38, v39, v40;
          v15, v82, v83, v84, v85, v86, v87, v88;
          if (v25 >= v41)
          {
            break;
          }
        }

        if (!v102)
        {
          goto LABEL_23;
        }

        v89 = *v11;
        v14 = v11[1];
        *v11 = v14;
        v11[1] = v89;
        --v11;
      }

      while (!__CFADD__(v12++, 1));
      v13 = v100 + 1;
      v11 = v99 + 1;
      v12 = v101 - 1;
    }

    while (v100 + 1 != v98);
  }
}

void sub_1BD71B530(unint64_t *a1, const char *a2, uint64_t *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = v8;
  v11 = a3;
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_99:
      v275 = v14;
      v240 = *(v14 + 2);
      if (v240 >= 2)
      {
        while (*v11)
        {
          v241 = *&v14[16 * v240];
          v242 = *&v14[16 * v240 + 24];
          sub_1BD71BEC0((*v11 + 8 * v241), (*v11 + 8 * *&v14[16 * v240 + 16]), *v11 + 8 * v242, v9);
          if (v10)
          {
            goto LABEL_107;
          }

          if (v242 < v241)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1BD5ED6C8(v14, a2, a3, a4, a5, a6, a7, a8);
          }

          if (v240 - 2 >= *(v14 + 2))
          {
            goto LABEL_124;
          }

          v243 = &v14[16 * v240];
          *v243 = v241;
          *(v243 + 1) = v242;
          v275 = v14;
          sub_1BD5ED63C(v240 - 1);
          v14 = v275;
          v240 = *(v275 + 2);
          if (v240 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_134;
      }

LABEL_107:
      v14, a2, a3, a4, a5, a6, a7, a8;
      return;
    }

LABEL_130:
    v14 = sub_1BD5ED6C8(v14, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_99;
  }

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v15 = v13++;
  v260 = v15;
  if (v13 < v12)
  {
    v16 = v15;
    v17 = *v11;
    v9 = *(*v11 + 8 * v13);
    v273 = v9;
    v18 = *(v17 + 8 * v15);
    v271 = v18;
    sub_1BE048964();
    sub_1BE048964();
    v19 = v10;
    v270 = sub_1BD71A96C(&v273, &v271);
    if (v10)
    {
      v14, v20, v21, v22, v23, v24, v25, v26;
      v9, v244, v245, v246, v247, v248, v249, v250;
      v18, v251, v252, v253, v254, v255, v256, v257;
      return;
    }

    v9, v20, v21, v22, v23, v24, v25, v26;
    v18, v27, v28, v29, v30, v31, v32, v33;
    v13 = v16 + 2;
    if (v16 + 2 < v12)
    {
      v34 = (v17 + 8 * v16 + 16);
      v268 = v12;
      do
      {
        v266 = v13;
        v9 = *(v34 - 1);
        v76 = *v34;
        KeyPath = swift_getKeyPath();
        v273 = v76;
        sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE04B594();
        KeyPath, v78, v79, v80, v81, v82, v83, v84;
        v85 = *(v76 + 64);
        v86 = swift_getKeyPath();
        v273 = v9;
        sub_1BE04B594();
        v86, v87, v88, v89, v90, v91, v92, v93;
        v101 = *(v9 + 64);
        if (v85 == v101)
        {
          v35 = swift_getKeyPath();
          v273 = v76;
          sub_1BE04B594();
          v35, v36, v37, v38, v39, v40, v41, v42;
          v43 = *(v76 + 40);
          v273 = *(v76 + 32);
          v274 = v43;
          v44 = swift_getKeyPath();
          v271 = v9;
          sub_1BE048C84();
          sub_1BE04B594();
          v44, v45, v46, v47, v48, v49, v50, v51;
          v52 = *(v9 + 40);
          v271 = *(v9 + 32);
          v272 = v52;
          sub_1BD0DDEBC();
          v53 = sub_1BE0535C4();
          v76, v54, v55, v56, v57, v58, v59, v60;
          v9, v61, v62, v63, v64, v65, v66, v67;
          v43, v68, v69, v70, v71, v72, v73, v74;
          v11 = a3;
          v10 = v19;
          v13 = v266;
          v75 = v268;
          if (((v270 ^ (v53 != -1)) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v76, v94, v95, v96, v97, v98, v99, v100;
          v9, v102, v103, v104, v105, v106, v107, v108;
          if (v85 >= v101)
          {
            v11 = a3;
            v10 = v19;
            v13 = v266;
            v75 = v268;
            if (v270)
            {
              v15 = v260;
              goto LABEL_18;
            }
          }

          else
          {
            v11 = a3;
            v10 = v19;
            v13 = v266;
            v75 = v268;
            if (!v270)
            {
              v15 = v260;
              goto LABEL_26;
            }
          }
        }

        ++v13;
        ++v34;
      }

      while (v75 != v13);
      v13 = v75;
    }

LABEL_17:
    v15 = v260;
    if (!v270)
    {
      goto LABEL_26;
    }

LABEL_18:
    if (v13 < v15)
    {
      goto LABEL_129;
    }

    if (v15 < v13)
    {
      v109 = 8 * v13 - 8;
      v110 = 8 * v15;
      v111 = v13;
      v112 = v15;
      do
      {
        if (v112 != --v111)
        {
          v114 = *v11;
          if (!*v11)
          {
            goto LABEL_133;
          }

          v113 = *(v114 + v110);
          *(v114 + v110) = *(v114 + v109);
          *(v114 + v109) = v113;
        }

        ++v112;
        v109 -= 8;
        v110 += 8;
      }

      while (v112 < v111);
    }
  }

LABEL_26:
  v115 = v11[1];
  if (v13 >= v115)
  {
    goto LABEL_46;
  }

  if (__OFSUB__(v13, v15))
  {
    goto LABEL_126;
  }

  if (v13 - v15 >= a4)
  {
    goto LABEL_46;
  }

  v116 = &a4[v15];
  if (__OFADD__(v15, a4))
  {
    goto LABEL_127;
  }

  if (v116 >= v115)
  {
    v116 = v11[1];
  }

  if (v116 < v15)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v13 == v116)
  {
    goto LABEL_46;
  }

  v263 = v10;
  v269 = *v11;
  v117 = (*v11 + 8 * v13 - 8);
  v118 = v15 - v13;
  v261 = v116;
LABEL_36:
  v265 = v117;
  v267 = v13;
  v9 = *(v269 + 8 * v13);
  v264 = v118;
  while (1)
  {
    v119 = *v117;
    v120 = swift_getKeyPath();
    v273 = v9;
    sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04B594();
    v120, v121, v122, v123, v124, v125, v126, v127;
    v128 = *(v9 + 64);
    v129 = swift_getKeyPath();
    v273 = v119;
    sub_1BE04B594();
    v129, v130, v131, v132, v133, v134, v135, v136;
    v144 = *(v119 + 64);
    if (v128 == v144)
    {
      v145 = swift_getKeyPath();
      v273 = v9;
      sub_1BE04B594();
      v145, v146, v147, v148, v149, v150, v151, v152;
      v153 = *(v9 + 40);
      v273 = *(v9 + 32);
      v274 = v153;
      v154 = swift_getKeyPath();
      v271 = v119;
      sub_1BE048C84();
      sub_1BE04B594();
      v154, v155, v156, v157, v158, v159, v160, v161;
      v162 = *(v119 + 40);
      v271 = *(v119 + 32);
      v272 = v162;
      sub_1BD0DDEBC();
      v163 = sub_1BE0535C4();
      v9, v164, v165, v166, v167, v168, v169, v170;
      v119, v171, v172, v173, v174, v175, v176, v177;
      v153, v178, v179, v180, v181, v182, v183, v184;
      if (v163 != -1)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v9, v137, v138, v139, v140, v141, v142, v143;
      v119, v185, v186, v187, v188, v189, v190, v191;
      if (v128 >= v144)
      {
        goto LABEL_35;
      }
    }

    if (!v269)
    {
      break;
    }

    v192 = *v117;
    v9 = v117[1];
    *v117 = v9;
    v117[1] = v192;
    --v117;
    if (__CFADD__(v118++, 1))
    {
LABEL_35:
      v13 = v267 + 1;
      v117 = v265 + 1;
      v118 = v264 - 1;
      if ((v267 + 1) != v261)
      {
        goto LABEL_36;
      }

      v13 = v261;
      v11 = a3;
      v10 = v263;
      v15 = v260;
LABEL_46:
      if (v13 < v15)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BD1D7844(0, *(v14 + 2) + 1, 1, v14, a5, a6, a7, a8);
      }

      v195 = *(v14 + 2);
      v194 = *(v14 + 3);
      v196 = v195 + 1;
      if (v195 >= v194 >> 1)
      {
        v14 = sub_1BD1D7844((v194 > 1), v195 + 1, 1, v14, a5, a6, a7, a8);
      }

      *(v14 + 2) = v196;
      v197 = &v14[16 * v195];
      *(v197 + 4) = v260;
      *(v197 + 5) = v13;
      v198 = *a1;
      if (!*a1)
      {
        goto LABEL_135;
      }

      if (v195)
      {
        while (1)
        {
          v9 = v196 - 1;
          if (v196 >= 4)
          {
            break;
          }

          if (v196 == 3)
          {
            v199 = *(v14 + 4);
            v200 = *(v14 + 5);
            v209 = __OFSUB__(v200, v199);
            v201 = v200 - v199;
            v202 = v209;
LABEL_66:
            if (v202)
            {
              goto LABEL_114;
            }

            v215 = &v14[16 * v196];
            v217 = *v215;
            v216 = *(v215 + 1);
            v218 = __OFSUB__(v216, v217);
            v219 = v216 - v217;
            v220 = v218;
            if (v218)
            {
              goto LABEL_117;
            }

            v221 = &v14[16 * v9 + 32];
            v223 = *v221;
            v222 = *(v221 + 1);
            v209 = __OFSUB__(v222, v223);
            v224 = v222 - v223;
            if (v209)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v219, v224))
            {
              goto LABEL_121;
            }

            if (v219 + v224 >= v201)
            {
              if (v201 < v224)
              {
                v9 = v196 - 2;
              }

              goto LABEL_87;
            }

            goto LABEL_80;
          }

          v225 = &v14[16 * v196];
          v227 = *v225;
          v226 = *(v225 + 1);
          v209 = __OFSUB__(v226, v227);
          v219 = v226 - v227;
          v220 = v209;
LABEL_80:
          if (v220)
          {
            goto LABEL_116;
          }

          v228 = &v14[16 * v9];
          v230 = *(v228 + 4);
          v229 = *(v228 + 5);
          v209 = __OFSUB__(v229, v230);
          v231 = v229 - v230;
          if (v209)
          {
            goto LABEL_119;
          }

          if (v231 < v219)
          {
            goto LABEL_3;
          }

LABEL_87:
          v236 = v9 - 1;
          if (v9 - 1 >= v196)
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
            goto LABEL_128;
          }

          if (!*v11)
          {
            goto LABEL_132;
          }

          v237 = *&v14[16 * v236 + 32];
          v238 = *&v14[16 * v9 + 40];
          sub_1BD71BEC0((*v11 + 8 * v237), (*v11 + 8 * *&v14[16 * v9 + 32]), *v11 + 8 * v238, v198);
          if (v10)
          {
            goto LABEL_107;
          }

          if (v238 < v237)
          {
            goto LABEL_110;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1BD5ED6C8(v14, a2, a3, a4, a5, a6, a7, a8);
          }

          if (v236 >= *(v14 + 2))
          {
            goto LABEL_111;
          }

          v239 = &v14[16 * v236];
          *(v239 + 4) = v237;
          *(v239 + 5) = v238;
          v275 = v14;
          sub_1BD5ED63C(v9);
          v14 = v275;
          v196 = *(v275 + 2);
          if (v196 <= 1)
          {
            goto LABEL_3;
          }
        }

        v203 = &v14[16 * v196 + 32];
        v204 = *(v203 - 64);
        v205 = *(v203 - 56);
        v209 = __OFSUB__(v205, v204);
        v206 = v205 - v204;
        if (v209)
        {
          goto LABEL_112;
        }

        v208 = *(v203 - 48);
        v207 = *(v203 - 40);
        v209 = __OFSUB__(v207, v208);
        v201 = v207 - v208;
        v202 = v209;
        if (v209)
        {
          goto LABEL_113;
        }

        v210 = &v14[16 * v196];
        v212 = *v210;
        v211 = *(v210 + 1);
        v209 = __OFSUB__(v211, v212);
        v213 = v211 - v212;
        if (v209)
        {
          goto LABEL_115;
        }

        v209 = __OFADD__(v201, v213);
        v214 = v201 + v213;
        if (v209)
        {
          goto LABEL_118;
        }

        if (v214 >= v206)
        {
          v232 = &v14[16 * v9 + 32];
          v234 = *v232;
          v233 = *(v232 + 1);
          v209 = __OFSUB__(v233, v234);
          v235 = v233 - v234;
          if (v209)
          {
            goto LABEL_122;
          }

          if (v201 < v235)
          {
            v9 = v196 - 2;
          }

          goto LABEL_87;
        }

        goto LABEL_66;
      }

LABEL_3:
      v12 = v11[1];
      if (v13 >= v12)
      {
        goto LABEL_97;
      }

      goto LABEL_4;
    }
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

uint64_t sub_1BD71BEC0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if ((a3 - __src) >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v6 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v175 = &v4[v12];
    if (v10 >= 8 && v6 > __dst)
    {
      v174 = v4;
LABEL_28:
      v90 = (v6 - 8);
      v91 = (v5 - 8);
      v92 = v175;
      v167 = v6 - 8;
      do
      {
        v172 = v91;
        v93 = *(v92 - 1);
        v168 = v92 - 1;
        v94 = *v90;
        KeyPath = swift_getKeyPath();
        sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE04B594();
        KeyPath, v96, v97, v98, v99, v100, v101, v102;
        v103 = *(v93 + 64);
        v104 = swift_getKeyPath();
        sub_1BE04B594();
        v104, v105, v106, v107, v108, v109, v110, v111;
        v119 = v94[64];
        if (v103 == v119)
        {
          v120 = swift_getKeyPath();
          sub_1BE04B594();
          v120, v121, v122, v123, v124, v125, v126, v127;
          v128 = *(v93 + 40);
          v129 = swift_getKeyPath();
          sub_1BE048C84();
          sub_1BE04B594();
          v129, v130, v131, v132, v133, v134, v135, v136;
          sub_1BD0DDEBC();
          v137 = sub_1BE0535C4();
          v93, v138, v139, v140, v141, v142, v143, v144;
          v94, v145, v146, v147, v148, v149, v150, v151;
          v128, v152, v153, v154, v155, v156, v157, v158;
          if (v137 == -1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v93, v112, v113, v114, v115, v116, v117, v118;
          v94, v159, v160, v161, v162, v163, v164, v165;
          if (v103 < v119)
          {
LABEL_36:
            v5 = v172;
            v4 = v174;
            if (v172 + 1 != v6)
            {
              *v172 = *v167;
            }

            if (v175 <= v174 || (v6 -= 8, v167 <= __dst))
            {
              v6 = v167;
              goto LABEL_42;
            }

            goto LABEL_28;
          }
        }

        v4 = v174;
        v92 = v168;
        if (v172 + 1 != v175)
        {
          *v172 = *v168;
        }

        v91 = v172 - 1;
        v175 = v168;
        v90 = (v6 - 8);
      }

      while (v168 > v174);
      v175 = v168;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v175 = &v4[v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      v171 = v5;
      do
      {
        v169 = v14;
        v15 = *v14;
        v173 = v4;
        v16 = *v4;
        v17 = swift_getKeyPath();
        sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE04B594();
        v17, v18, v19, v20, v21, v22, v23, v24;
        v25 = *(v15 + 64);
        v26 = swift_getKeyPath();
        sub_1BE04B594();
        v26, v27, v28, v29, v30, v31, v32, v33;
        v41 = v16[64];
        if (v25 == v41)
        {
          v42 = swift_getKeyPath();
          sub_1BE04B594();
          v42, v43, v44, v45, v46, v47, v48, v49;
          v50 = *(v15 + 40);
          v51 = swift_getKeyPath();
          sub_1BE048C84();
          sub_1BE04B594();
          v51, v52, v53, v54, v55, v56, v57, v58;
          sub_1BD0DDEBC();
          v59 = sub_1BE0535C4();
          v15, v60, v61, v62, v63, v64, v65, v66;
          v16, v67, v68, v69, v70, v71, v72, v73;
          v50, v74, v75, v76, v77, v78, v79, v80;
          if (v59 != -1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v15, v34, v35, v36, v37, v38, v39, v40;
          v16, v83, v84, v85, v86, v87, v88, v89;
          if (v25 >= v41)
          {
LABEL_14:
            v81 = v171;
            v82 = v4++;
            v14 = v169;
            if (v6 == v173)
            {
              goto LABEL_16;
            }

LABEL_15:
            *v6 = *v82;
            goto LABEL_16;
          }
        }

        v82 = v169;
        v14 = v169 + 8;
        v81 = v171;
        if (v6 != v169)
        {
          goto LABEL_15;
        }

LABEL_16:
        v6 += 8;
      }

      while (v4 < v175 && v14 < v81);
    }
  }

LABEL_42:
  if (v6 != v4 || v6 >= v4 + ((v175 - v4 + (v175 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8))
  {
    memmove(v6, v4, 8 * (v175 - v4));
  }

  return 1;
}

unint64_t sub_1BD71C478()
{
  result = qword_1EBD51248;
  if (!qword_1EBD51248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51240, &qword_1BE0F2A28);
    sub_1BD71C518();
    sub_1BD71C65C();
    sub_1BD12E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51248);
  }

  return result;
}

unint64_t sub_1BD71C518()
{
  result = qword_1EBD51250;
  if (!qword_1EBD51250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51258, &qword_1BE0F2A30);
    sub_1BD71C5A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51250);
  }

  return result;
}

unint64_t sub_1BD71C5A4()
{
  result = qword_1EBD51260;
  if (!qword_1EBD51260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51268, &unk_1BE0F2A38);
    sub_1BD0FF49C();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0, &qword_1BE0B6C50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51260);
  }

  return result;
}

unint64_t sub_1BD71C65C()
{
  result = qword_1EBD512A0;
  if (!qword_1EBD512A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD512A8, &qword_1BE0F2A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD512B0, &qword_1BE0F2A50);
    sub_1BD71C71C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD512A0);
  }

  return result;
}

unint64_t sub_1BD71C71C()
{
  result = qword_1EBD512B8;
  if (!qword_1EBD512B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD512B0, &qword_1BE0F2A50);
    sub_1BD0DE4F4(&qword_1EBD512C0, &qword_1EBD512C8, &qword_1BE0F2A58, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8, &qword_1BE0DC350, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD512B8);
  }

  return result;
}

uint64_t objectdestroyTm_83()
{
  v1 = (type metadata accessor for PeerPaymentGroupRecipientPickerView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1BE04E664();
    (*(*(v18 - 8) + 8))(v2 + v10, v18);
  }

  else
  {
    *(v2 + v10), v11, v12, v13, v14, v15, v16, v17;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD71C924(uint64_t *a1)
{
  v3 = *(type metadata accessor for PeerPaymentGroupRecipientPickerView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1BD71957C(a1, v4);
}

uint64_t sub_1BD71C9A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD71C9EC()
{
  v1 = *(type metadata accessor for PeerPaymentGroupRecipientPickerView(0) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  if ([*(v2 + 56) status] == 1)
  {
    sub_1BD91FB38(v2);
  }
}

id sub_1BD71CA9C(uint64_t a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_identifier];
  *v8 = 0xD000000000000019;
  v8[1] = 0x80000001BE136F50;
  *&v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
  *&v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_context] = a1;
  v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_allowManualEntry] = a2;
  v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_didSeeHeroScreen] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD71CC3C(void (*a1)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v2 = v1;
  v3 = a1;
  if (v1[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_didSeeHeroScreen] != 1)
  {
    goto LABEL_12;
  }

  KeyPath = swift_getKeyPath();
  v80 = v2;
  v5 = v2;
  sub_1BD12F850(1, v5, KeyPath);

  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v79 = swift_getKeyPath();
  v77 = sub_1BD188258(v5, v79);
  v78 = v13;
  v15 = v14;
  sub_1BE053D04();
  sub_1BE052524();
  v16 = sub_1BE053D64();
  v24 = -1 << *(v15 + 32);
  v25 = v16 & ~v24;
  if (((*(v15 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
  {
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD2A9690(0, v25, isUniquelyReferenced_nonNull_native, v38, v39, v40, v41, v42);
    goto LABEL_11;
  }

  v26 = ~v24;
  while (1)
  {
    v27 = *(*(v15 + 48) + v25);
    if (v27 == 1)
    {
      v28 = 0xEE00415049506165;
      goto LABEL_8;
    }

    if (v27 != 2)
    {
      break;
    }

    v28 = 0x80000001BE117610;
LABEL_8:
    v29 = sub_1BE053B84();
    v28, v30, v31, v32, v33, v34, v35, v36;
    if (v29)
    {
      goto LABEL_11;
    }

    v25 = (v25 + 1) & v26;
    if (((*(v15 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  0xE400000000000000, v17, v18, v19, v20, v21, v22, v23;
LABEL_11:
  v43 = v5;
  sub_1BD12F87C(v77 & 1, v78, v15, v43, v79);
  v15, v44, v45, v46, v47, v48, v49, v50;
  v78, v51, v52, v53, v54, v55, v56, v57;

  v79, v58, v59, v60, v61, v62, v63, v64;
  v3 = a1;
  v2 = v80;
LABEL_12:
  v65 = sub_1BE04BBD4();
  v66 = [v65 associatedCredentials];

  if (v66)
  {
    sub_1BD71D990();
    v67 = sub_1BE052744();

    if (v67 >> 62)
    {
      v75 = sub_1BE053704();
    }

    else
    {
      v75 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67, v68, v69, v70, v71, v72, v73, v74;
    if (v75)
    {
      v76 = 1;
    }

    else
    {
      v76 = v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_allowManualEntry];
    }

    v3(v76, 0xD00000000000002DLL, 0x80000001BE136EF0, 2);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD71CF48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51388, &unk_1BE0F2C38);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v54 - v4;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04B9E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v56 = v1;
  v57 = *(v1 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_context);
  sub_1BE04BC34();
  sub_1BE04B984();
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_1BD71D928(v5);
    return 0;
  }

  (*(v11 + 32))(v16, v5, v10);
  if (a1)
  {
LABEL_4:
    (*(v11 + 8))(v16, v10);
    return 0;
  }

  v18 = sub_1BE04BBD4();
  v19 = [v18 associatedCredentials];

  if (v19)
  {
    sub_1BD71D990();
    v20 = sub_1BE052744();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  (*(v11 + 16))(v13, v16, v10);
  v21 = (*(v11 + 88))(v13, v10);
  v29 = v20 >> 62;
  if (v21 == *MEMORY[0x1E69B8000])
  {
    goto LABEL_15;
  }

  if (v21 == *MEMORY[0x1E69B7FF8])
  {
    if (v29)
    {
      if (sub_1BE053704())
      {
        goto LABEL_13;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      v30 = *(v56 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_allowManualEntry);
      v31 = type metadata accessor for PaymentSetupCredentialsFlowItem();
      v32 = objc_allocWithZone(v31);
      *&v32[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
      *&v32[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v33 = &v32[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
      *v33 = 0xD00000000000001FLL;
      v33[1] = 0x80000001BE1229B0;
      *&v32[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v57;
      *&v32[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v20;
      v32[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = v30;
      *&v32[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
      v58.receiver = v32;
      v58.super_class = v31;
      sub_1BE048964();
      v34 = objc_msgSendSuper2(&v58, sel_init);
      (*(v11 + 8))(v16, v10);
      return v34;
    }

LABEL_15:
    if (v29)
    {
      if (sub_1BE053704())
      {
        goto LABEL_17;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1BE0B6CA0;
      v36 = type metadata accessor for ProvisioningHeroFlowItem();
      v37 = objc_allocWithZone(v36);
      *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
      v55 = v16;
      *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
      *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
      v38 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
      *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
      *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v39 = &v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
      strcpy(&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
      v39[13] = 0;
      *(v39 + 7) = -5120;
      v40 = v57;
      *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v57;
      v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
      *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
      v41 = *&v37[v38];
      *&v37[v38] = 0;
      sub_1BE048964();

      v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
      v61.receiver = v37;
      v61.super_class = v36;
      *(v35 + 32) = objc_msgSendSuper2(&v61, sel_init);
      *(v35 + 40) = &off_1F3BA7D00;
      LOBYTE(v41) = *(v56 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_allowManualEntry);
      v42 = type metadata accessor for PaymentSetupCredentialsFlowItem();
      v43 = objc_allocWithZone(v42);
      *&v43[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
      *&v43[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v44 = &v43[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
      *v44 = 0xD00000000000001FLL;
      v44[1] = 0x80000001BE1229B0;
      *&v43[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v40;
      *&v43[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v20;
      v43[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = v41;
      *&v43[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
      v60.receiver = v43;
      v60.super_class = v42;
      sub_1BE048964();
      *(v35 + 48) = objc_msgSendSuper2(&v60, sel_init);
      *(v35 + 56) = &off_1F3BCA500;
      type metadata accessor for UIStaticFlowSection();
      v45 = swift_allocObject();
      *(v45 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v45 + 32) = 514;
      (*(v11 + 8))(v55, v10);
      result = v45;
      *(v45 + 40) = 0xD000000000000013;
      *(v45 + 48) = 0x80000001BE11E190;
      *(v45 + 56) = v35;
LABEL_21:
      *(v45 + 32) = 514;
      return result;
    }

    v20, v22, v23, v24, v25, v26, v27, v28;
    if (*(v56 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_allowManualEntry) != 1)
    {
      goto LABEL_4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1BE0B6CA0;
    v47 = type metadata accessor for ProvisioningHeroFlowItem();
    v48 = objc_allocWithZone(v47);
    *&v48[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v48[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v48[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v49 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v48[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v48[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v50 = &v48[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v48[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v50[13] = 0;
    *(v50 + 7) = -5120;
    *&v48[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v57;
    v48[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
    *&v48[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
    v51 = *&v48[v49];
    *&v48[v49] = 0;
    sub_1BE048964();

    v48[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
    v59.receiver = v48;
    v59.super_class = v47;
    *(v46 + 32) = objc_msgSendSuper2(&v59, sel_init);
    *(v46 + 40) = &off_1F3BA7D00;
    v52 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
    v53 = sub_1BE048964();
    *(v46 + 48) = sub_1BD87126C(v53, 0, 0);
    *(v46 + 56) = &off_1F3BC0AB0;
    type metadata accessor for UIStaticFlowSection();
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v45 + 32) = 514;
    (*(v11 + 8))(v16, v10);
    result = v45;
    *(v45 + 40) = 0xD000000000000013;
    *(v45 + 48) = 0x80000001BE11E190;
    *(v45 + 56) = v46;
    goto LABEL_21;
  }

  if (v21 == *MEMORY[0x1E69B8008])
  {
    goto LABEL_15;
  }

  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD71D89C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD71D8D8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD71D928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51388, &unk_1BE0F2C38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD71D990()
{
  result = qword_1EBD444C0;
  if (!qword_1EBD444C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD444C0);
  }

  return result;
}

id sub_1BD71D9DC(void *a1)
{
  [v1 setDirectionalLayoutMargins_];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_1BE048964();
  v5 = a1;
  sub_1BE052E74();
  v3, v6, v7, v8, v9, v10, v11, v12;

  return [v1 setNeedsUpdateConfiguration];
}

void sub_1BD71DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513A0, &qword_1BE0F2CC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = PKAccessibilityIDSet(Strong, *MEMORY[0x1E69B9500]);
    MEMORY[0x1EEE9AC00](v14);
    v17[-2] = a4;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513A8, &qword_1BE0F2CD0);
    sub_1BD71EA04();
    sub_1BE04FCE4();
    sub_1BE050234();
    sub_1BE04FCD4();
    v16 = *(v6 + 8);
    v16(v8, v5);
    sub_1BE0501C4();
    v17[3] = v5;
    v17[4] = sub_1BD0DE4F4(&qword_1EBD513F8, &qword_1EBD513A0, &qword_1BE0F2CC8, MEMORY[0x1E697C858]);
    __swift_allocate_boxed_opaque_existential_1(v17);
    sub_1BE04FCD4();
    v16(v11, v5);
    MEMORY[0x1BFB3FEF0](v17);
  }
}

uint64_t sub_1BD71DD1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v3 = type metadata accessor for AccountBalanceCreditCell(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v54 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51400, &qword_1BE0F2CF0);
  MEMORY[0x1EEE9AC00](v66);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51408, &qword_1BE0F2CF8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513D0, &qword_1BE0F2CE0);
  MEMORY[0x1EEE9AC00](v65);
  v14 = &v54 - v13;
  v61 = type metadata accessor for PKBankConnectAccountDetailsView(0);
  MEMORY[0x1EEE9AC00](v61);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513E0, &qword_1BE0F2CE8);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v64 = &v54 - v21;
  v22 = a1;
  v23 = [a1 accountType];
  if (v23 == 1)
  {
    v24 = _UISolariumFeatureFlagEnabled();
    v25 = 12.0;
    if (v24)
    {
      v25 = 15.0;
    }

    *v5 = v25;
    v26 = *(v3 + 20);
    *(v5 + v26) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
    swift_storeEnumTagMultiPayload();
    *(v5 + *(v3 + 24)) = v22;
    v27 = v5;
    v28 = v62;
    sub_1BD7207BC(v27, v62, type metadata accessor for AccountBalanceCreditCell);
    sub_1BD71ED20(v28, v12);
    swift_storeEnumTagMultiPayload();
    sub_1BD71EBD0();
    sub_1BD71EC8C(&qword_1EBD513F0, type metadata accessor for AccountBalanceCreditCell, &unk_1BE0F2DCC);
    v29 = v22;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v14, v9, &qword_1EBD513D0, &qword_1BE0F2CE0);
    swift_storeEnumTagMultiPayload();
    sub_1BD71EB14();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v14, &qword_1EBD513D0, &qword_1BE0F2CE0);
    return sub_1BD71ED84(v28);
  }

  else
  {
    v59 = v17;
    v60 = v10;
    v62 = v12;
    if (v23)
    {
      *&v69 = 0;
      *(&v69 + 1) = 0xE000000000000000;
      sub_1BE053834();
      MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE11ADE0);
      v68 = [a1 accountType];
      type metadata accessor for FKAccountType(0);
      sub_1BE053974();
      result = sub_1BE053994();
      __break(1u);
    }

    else
    {
      v31 = [a1 balanceTitle];
      v58 = sub_1BE052434();
      v57 = v32;

      v33 = [a1 displayedBalance];
      v56 = sub_1BE052434();
      v55 = v34;

      v35 = [a1 balanceSubtitle];
      v36 = v59;
      if (v35)
      {
        v37 = v35;
        v38 = sub_1BE052434();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = [a1 isPersonalizedInsightsEnabled] ^ 1;
      }

      v41 = sub_1BE051464();
      *v16 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
      swift_storeEnumTagMultiPayload();
      v42 = v61;
      v43 = *(v61 + 20);
      *(v16 + v43) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
      swift_storeEnumTagMultiPayload();
      v44 = *(v42 + 24);
      *(v16 + v44) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51410, &unk_1BE0F2DA0);
      swift_storeEnumTagMultiPayload();
      v45 = (v16 + *(v42 + 28));
      v46 = v57;
      *v45 = v58;
      v45[1] = v46;
      v47 = v55;
      v45[2] = v56;
      v45[3] = v47;
      v45[4] = v38;
      v45[5] = v40;
      v45[6] = v41;
      sub_1BE051CE4();
      sub_1BE04EE54();
      v48 = v63;
      sub_1BD7207BC(v16, v63, type metadata accessor for PKBankConnectAccountDetailsView);
      v49 = (v48 + *(v36 + 36));
      v50 = v74;
      v49[4] = v73;
      v49[5] = v50;
      v49[6] = v75;
      v51 = v70;
      *v49 = v69;
      v49[1] = v51;
      v52 = v72;
      v49[2] = v71;
      v49[3] = v52;
      v53 = v64;
      sub_1BD720824(v48, v64);
      sub_1BD0DE19C(v53, v62, &qword_1EBD513E0, &qword_1BE0F2CE8);
      swift_storeEnumTagMultiPayload();
      sub_1BD71EBD0();
      sub_1BD71EC8C(&qword_1EBD513F0, type metadata accessor for AccountBalanceCreditCell, &unk_1BE0F2DCC);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v14, v9, &qword_1EBD513D0, &qword_1BE0F2CE0);
      swift_storeEnumTagMultiPayload();
      sub_1BD71EB14();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v14, &qword_1EBD513D0, &qword_1BE0F2CE0);
      return sub_1BD0DE53C(v53, &qword_1EBD513E0, &qword_1BE0F2CE8);
    }
  }

  return result;
}

id PKDashboardBankConnectBalanceCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PKDashboardBankConnectBalanceCell.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = _UISolariumFeatureFlagEnabled();
  v11 = 8.0;
  if (v10)
  {
    v11 = 11.0;
  }

  *&v5[OBJC_IVAR____TtC9PassKitUI33PKDashboardBankConnectBalanceCell_verticalPadding] = v11;
  v12 = _UISolariumFeatureFlagEnabled();
  v13 = 12.0;
  if (v12)
  {
    v13 = 15.0;
  }

  *&v5[OBJC_IVAR____TtC9PassKitUI33PKDashboardBankConnectBalanceCell_horizontalPadding] = v13;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for PKDashboardBankConnectBalanceCell();
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
}

id PKDashboardBankConnectBalanceCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKDashboardBankConnectBalanceCell.init(coder:)(void *a1)
{
  v3 = _UISolariumFeatureFlagEnabled();
  v4 = 8.0;
  if (v3)
  {
    v4 = 11.0;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI33PKDashboardBankConnectBalanceCell_verticalPadding] = v4;
  v5 = _UISolariumFeatureFlagEnabled();
  v6 = 12.0;
  if (v5)
  {
    v6 = 15.0;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI33PKDashboardBankConnectBalanceCell_horizontalPadding] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PKDashboardBankConnectBalanceCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id PKDashboardBankConnectBalanceCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardBankConnectBalanceCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD71EA04()
{
  result = qword_1EBD513B0;
  if (!qword_1EBD513B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513A8, &qword_1BE0F2CD0);
    sub_1BD71EA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD513B0);
  }

  return result;
}

unint64_t sub_1BD71EA88()
{
  result = qword_1EBD513B8;
  if (!qword_1EBD513B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513C0, &qword_1BE0F2CD8);
    sub_1BD71EB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD513B8);
  }

  return result;
}

unint64_t sub_1BD71EB14()
{
  result = qword_1EBD513C8;
  if (!qword_1EBD513C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513D0, &qword_1BE0F2CE0);
    sub_1BD71EBD0();
    sub_1BD71EC8C(&qword_1EBD513F0, type metadata accessor for AccountBalanceCreditCell, &unk_1BE0F2DCC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD513C8);
  }

  return result;
}

unint64_t sub_1BD71EBD0()
{
  result = qword_1EBD513D8;
  if (!qword_1EBD513D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513E0, &qword_1BE0F2CE8);
    sub_1BD71EC8C(&qword_1EBD513E8, type metadata accessor for PKBankConnectAccountDetailsView, &unk_1BE0CD2BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD513D8);
  }

  return result;
}

uint64_t sub_1BD71EC8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AccountBalanceCreditCell(uint64_t a1)
{
  result = qword_1EBD51418;
  if (!qword_1EBD51418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD71ED20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountBalanceCreditCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD71ED84(uint64_t a1)
{
  v2 = type metadata accessor for AccountBalanceCreditCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD71EDE0@<X0>(void *a1@<X8>)
{
  v75 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51430, &qword_1BE0F2E20);
  v2 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v4 = &v64 - v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51438, &qword_1BE0F2E28);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v64 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51440, &qword_1BE0F2E30);
  MEMORY[0x1EEE9AC00](v71);
  v65 = (&v64 - v6);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51448, &qword_1BE0F2E38);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v64 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51450, &qword_1BE0F2E40);
  MEMORY[0x1EEE9AC00](v68);
  v9 = &v64 - v8;
  v10 = sub_1BE04EB24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51458, &qword_1BE0F2E48);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v64 - v14;
  v15 = *(v1 + *(type metadata accessor for AccountBalanceCreditCell(0) + 24));
  if ([(NSString *)v15 isPaymentOverdue])
  {
    v15 = sub_1BE052404();
    v16 = PKLocalizedBankConnectString(v15);

    if (v16)
    {
LABEL_6:
      v66 = sub_1BE052434();
      v19 = v18;

      goto LABEL_7;
    }

    __break(1u);
  }

  v17 = [(NSString *)v15 paymentDueDate];
  if (v17)
  {
    v16 = v17;
    goto LABEL_6;
  }

  v66 = 0;
  v19 = 0;
LABEL_7:
  v79 = &type metadata for BankConnectFeatureFlags;
  v80 = sub_1BD1671B0();
  LOBYTE(v77) = 0;
  v20 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(&v77, v21, v22, v23, v24, v25, v26, v27);
  if ((v20 & 1) == 0)
  {
    v19, v28, v29, v30, v31, v32, v33, v34;
    goto LABEL_12;
  }

  if (!v19)
  {
LABEL_12:
    sub_1BD71F55C(v4);
    v48 = v76;
    (*(v2 + 16))(v74, v4, v76);
    swift_storeEnumTagMultiPayload();
    sub_1BD7209B8();
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513E0, &qword_1BE0F2CE8);
    v50 = sub_1BD71EBD0();
    v77 = v49;
    v78 = v50;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v2 + 8))(v4, v48);
  }

  sub_1BD70A2A0(v13);
  v35 = sub_1BE04EB14();
  (*(v11 + 8))(v13, v10);
  if (v35)
  {
    *v9 = sub_1BE04F7B4();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51480, &qword_1BE0F2E58);
    sub_1BD720168(v66, v19, &v9[*(v36 + 44)]);
    v19, v37, v38, v39, v40, v41, v42, v43;
    v44 = &qword_1EBD51450;
    v45 = &qword_1BE0F2E40;
    sub_1BD0DE19C(v9, v69, &qword_1EBD51450, &qword_1BE0F2E40);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD51468, &qword_1EBD51450, &qword_1BE0F2E40, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD51470, &qword_1EBD51440, &qword_1BE0F2E30, MEMORY[0x1E69817F8]);
    v46 = v70;
    sub_1BE04F9A4();
    v47 = v9;
  }

  else
  {
    v52 = sub_1BE04F504();
    v53 = v65;
    *v65 = v52;
    *(v53 + 8) = 0;
    *(v53 + 16) = 1;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51478, &qword_1BE0F2E50);
    sub_1BD71F930(v66, v19, (v53 + *(v54 + 44)));
    v19, v55, v56, v57, v58, v59, v60, v61;
    v44 = &qword_1EBD51440;
    v45 = &qword_1BE0F2E30;
    sub_1BD0DE19C(v53, v69, &qword_1EBD51440, &qword_1BE0F2E30);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD51468, &qword_1EBD51450, &qword_1BE0F2E40, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD51470, &qword_1EBD51440, &qword_1BE0F2E30, MEMORY[0x1E69817F8]);
    v46 = v70;
    sub_1BE04F9A4();
    v47 = v53;
  }

  sub_1BD0DE53C(v47, v44, v45);
  sub_1BD0DE19C(v46, v74, &qword_1EBD51458, &qword_1BE0F2E48);
  swift_storeEnumTagMultiPayload();
  sub_1BD7209B8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513E0, &qword_1BE0F2CE8);
  v63 = sub_1BD71EBD0();
  v77 = v62;
  v78 = v63;
  swift_getOpaqueTypeConformance2();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v46, &qword_1EBD51458, &qword_1BE0F2E48);
}

uint64_t sub_1BD71F55C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v40 = sub_1BE04FF64();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PKBankConnectAccountDetailsView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513E0, &qword_1BE0F2CE8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = *(v1 + *(type metadata accessor for AccountBalanceCreditCell(0) + 24));
  v11 = [v10 balanceTitle];
  v12 = sub_1BE052434();
  v36 = v13;
  v37 = v12;

  v14 = [v10 displayedBalance];
  v15 = sub_1BE052434();
  v35 = v16;

  v17 = [v10 balanceSubtitle];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1BE052434();
    v21 = v20;
  }

  else
  {
    v22 = [v10 isPersonalizedInsightsEnabled];
    v19 = 0;
    v21 = v22 ^ 1;
  }

  v23 = sub_1BE051464();
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  v24 = v4[5];
  *(v6 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  v25 = v4[6];
  *(v6 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51410, &unk_1BE0F2DA0);
  swift_storeEnumTagMultiPayload();
  v26 = (v6 + v4[7]);
  v27 = v36;
  *v26 = v37;
  v26[1] = v27;
  v28 = v35;
  v26[2] = v15;
  v26[3] = v28;
  v26[4] = v19;
  v26[5] = v21;
  v26[6] = v23;
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD7207BC(v6, v9, type metadata accessor for PKBankConnectAccountDetailsView);
  v29 = &v9[*(v7 + 36)];
  v30 = v46;
  *(v29 + 4) = v45;
  *(v29 + 5) = v30;
  *(v29 + 6) = v47;
  v31 = v42;
  *v29 = v41;
  *(v29 + 1) = v31;
  v32 = v44;
  *(v29 + 2) = v43;
  *(v29 + 3) = v32;
  sub_1BE04FF44();
  sub_1BD71EBD0();
  sub_1BE050D14();
  (*(v38 + 8))(v3, v40);
  return sub_1BD0DE53C(v9, &qword_1EBD513E0, &qword_1BE0F2CE8);
}

uint64_t sub_1BD71F930@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v48 = a2;
  v49 = a3;
  v51 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51498, &qword_1BE0F2E78);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v52 = sub_1BE051994();
  v44 = *(v52 - 8);
  v10 = v44;
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51430, &qword_1BE0F2E20);
  v46 = *(v15 - 8);
  v16 = v46;
  v47 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v45 = &v42 - v20;
  sub_1BD71F55C(&v42 - v20);
  v43 = v14;
  sub_1BE051984();
  sub_1BD71FCEC(v48, v49, v9);
  v22 = sub_1BE050204();
  sub_1BE04E1F4();
  v23 = &v9[*(v5 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = *(v16 + 16);
  v29 = v47;
  v28(v18, v21, v47);
  v30 = *(v10 + 16);
  v31 = v53;
  v30(v53, v14, v52);
  v32 = v9;
  v33 = v9;
  v34 = v50;
  sub_1BD0DE19C(v32, v50, &qword_1EBD51498, &qword_1BE0F2E78);
  v35 = v51;
  v28(v51, v18, v29);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD514A0, &qword_1BE0F2E80);
  v37 = v31;
  v38 = v52;
  v30(&v35[*(v36 + 48)], v37, v52);
  sub_1BD0DE19C(v34, &v35[*(v36 + 64)], &qword_1EBD51498, &qword_1BE0F2E78);
  sub_1BD0DE53C(v33, &qword_1EBD51498, &qword_1BE0F2E78);
  v39 = *(v44 + 8);
  v39(v43, v38);
  v40 = *(v46 + 8);
  v40(v45, v29);
  sub_1BD0DE53C(v34, &qword_1EBD51498, &qword_1BE0F2E78);
  v39(v53, v38);
  return (v40)(v18, v29);
}

uint64_t sub_1BD71FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v50 = a2;
  v53 = a3;
  v4 = sub_1BE04FF64();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PKBankConnectAccountDetailsView(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513E0, &qword_1BE0F2CE8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51430, &qword_1BE0F2E20);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  *(&v55 + 1) = &type metadata for BankConnectFeatureFlags;
  *&v56 = sub_1BD1671B0();
  LOBYTE(v54) = 0;
  v17 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(&v54, v18, v19, v20, v21, v22, v23, v24);
  if (v17)
  {
    v25 = *(v3 + *(type metadata accessor for AccountBalanceCreditCell(0) + 24));
    sub_1BD7203BC();
    v47 = v27;
    v48 = v26;
    sub_1BD72048C();
    v46 = v28;
    v45 = v29;
    if ([v25 isPaymentOverdue])
    {
      v30 = sub_1BE0513B4();
    }

    else
    {
      v30 = sub_1BE051464();
    }

    v33 = v30;
    *v9 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
    swift_storeEnumTagMultiPayload();
    v34 = v7[5];
    *(v9 + v34) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
    swift_storeEnumTagMultiPayload();
    v35 = v7[6];
    *(v9 + v35) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51410, &unk_1BE0F2DA0);
    swift_storeEnumTagMultiPayload();
    v36 = (v9 + v7[7]);
    v37 = v47;
    *v36 = v48;
    v36[1] = v37;
    v38 = v50;
    v36[2] = v49;
    v36[3] = v38;
    v39 = v45;
    v36[4] = v46;
    v36[5] = v39;
    v36[6] = v33;
    sub_1BE048C84();
    sub_1BE051CE4();
    sub_1BE04EE54();
    sub_1BD7207BC(v9, v12, type metadata accessor for PKBankConnectAccountDetailsView);
    v40 = &v12[*(v10 + 36)];
    v41 = v59;
    *(v40 + 4) = v58;
    *(v40 + 5) = v41;
    *(v40 + 6) = v60;
    v42 = v55;
    *v40 = v54;
    *(v40 + 1) = v42;
    v43 = v57;
    *(v40 + 2) = v56;
    *(v40 + 3) = v43;
    sub_1BE04FF44();
    sub_1BD71EBD0();
    sub_1BE050D14();
    (*(v51 + 8))(v6, v52);
    sub_1BD0DE53C(v12, &qword_1EBD513E0, &qword_1BE0F2CE8);
    v32 = v53;
    (*(v14 + 32))(v53, v16, v13);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v32 = v53;
  }

  return (*(v14 + 56))(v32, v31, 1, v13);
}

uint64_t sub_1BD720168@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51488, &qword_1BE0F2E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51430, &qword_1BE0F2E20);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  sub_1BD71F55C(&v23 - v17);
  sub_1BD71FCEC(a1, a2, v11);
  v19 = *(v13 + 16);
  v19(v15, v18, v12);
  sub_1BD0DE19C(v11, v8, &qword_1EBD51488, &qword_1BE0F2E60);
  v19(a3, v15, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51490, &unk_1BE0F2E68);
  sub_1BD0DE19C(v8, &a3[*(v20 + 48)], &qword_1EBD51488, &qword_1BE0F2E60);
  sub_1BD0DE53C(v11, &qword_1EBD51488, &qword_1BE0F2E60);
  v21 = *(v13 + 8);
  v21(v18, v12);
  sub_1BD0DE53C(v8, &qword_1EBD51488, &qword_1BE0F2E60);
  return (v21)(v15, v12);
}

void sub_1BD7203BC()
{
  if ([v0 isPaymentOverdue])
  {
    v1 = sub_1BE052404();
    v2 = PKLocalizedBankConnectString(v1);

    if (v2)
    {
LABEL_5:
      sub_1BE052434();

      return;
    }

    __break(1u);
  }

  v3 = sub_1BE052404();
  v2 = PKLocalizedBankConnectString(v3);

  if (v2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1BD72048C()
{
  if (sub_1BD720638())
  {
    if ([v0 isPaymentOverdue])
    {
      v1 = sub_1BE052404();
      v2 = PKLocalizedBankConnectString(v1);

      if (v2)
      {
        sub_1BE052434();

        return;
      }

      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v3 = [v0 minimumCreditPayment];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1BE052434();
      v7 = v6;

      v8 = sub_1BE052404();
      v9 = PKLocalizedBankConnectString(v8);

      if (v9)
      {
        sub_1BE052434();
        v11 = v10;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1BE0B69E0;
        *(v12 + 56) = MEMORY[0x1E69E6158];
        *(v12 + 64) = sub_1BD110550();
        *(v12 + 32) = v5;
        *(v12 + 40) = v7;
        sub_1BE052454();
        v11, v13, v14, v15, v16, v17, v18, v19;
        return;
      }

      goto LABEL_11;
    }
  }
}

uint64_t sub_1BD720638()
{
  v1 = [v0 bookedBalance];
  if (v1 && (v1, (v2 = [v0 availableBalance]) != 0))
  {

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = [v0 minimumCreditPayment];
  if (v4 && (v4, (v5 = [v0 paymentDueDate]) != 0))
  {

    if ((v3 & [v0 isPaymentOverdue] & 1) == 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return [v0 isPersonalizedInsightsEnabled];
}

uint64_t sub_1BD720714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42350, &qword_1BE0CD250);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD0DE19C(a1, &v5 - v3, &qword_1EBD42350, &qword_1BE0CD250);
  return sub_1BE04F144();
}

uint64_t sub_1BD7207BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD720824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513E0, &qword_1BE0F2CE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD7208BC(uint64_t a1)
{
  sub_1BD25EFF4(319);
  if (v1 <= 0x3F)
  {
    sub_1BD720950();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD720950()
{
  result = qword_1EBD51428;
  if (!qword_1EBD51428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD51428);
  }

  return result;
}

unint64_t sub_1BD7209B8()
{
  result = qword_1EBD51460;
  if (!qword_1EBD51460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51458, &qword_1BE0F2E48);
    sub_1BD0DE4F4(&qword_1EBD51468, &qword_1EBD51450, &qword_1BE0F2E40, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD51470, &qword_1EBD51440, &qword_1BE0F2E30, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51460);
  }

  return result;
}

unint64_t sub_1BD720A9C()
{
  result = qword_1EBD514A8;
  if (!qword_1EBD514A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD514B0, &unk_1BE0F2E88);
    sub_1BD7209B8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513E0, &qword_1BE0F2CE8);
    sub_1BD71EBD0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD514A8);
  }

  return result;
}

void sub_1BD720BB8(uint64_t a1)
{
  sub_1BD720CBC(319, &qword_1EBD514C8, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1BD720CBC(319, &qword_1EBD3F768, MEMORY[0x1E69675F8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD720CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD720D48(uint64_t a1)
{
  sub_1BD1C86BC();
  if (v1 <= 0x3F)
  {
    sub_1BE0493F4();
    if (v2 <= 0x3F)
    {
      sub_1BE04A974();
      if (v3 <= 0x3F)
      {
        sub_1BE04AFE4();
        if (v4 <= 0x3F)
        {
          sub_1BD720CBC(319, &qword_1EBD3F760, type metadata accessor for TransactionContext, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD720EA4(uint64_t a1)
{
  type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BD49DA08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD720F44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for TransactionContext(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0) + 20);
  v18 = sub_1BE048F54();
  v19 = *(*(v18 - 8) + 56);
  v44 = v17;
  v19(&a3[v17], 1, 1, v18);
  v27 = a1[2];
  if (v27)
  {
    v42 = a3;
    v43 = a2;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1BD531EA0(0, v27, 0);
    v28 = v46;
    v29 = *(v7 + 80);
    v41 = a1;
    v30 = a1 + ((v29 + 32) & ~v29);
    v45 = *(v7 + 72);
    do
    {
      sub_1BD722400(v30, v12, type metadata accessor for TransactionContext);
      sub_1BD722400(v12, v9, type metadata accessor for TransactionContext);
      sub_1BD721A24(v9, v16);
      sub_1BD72259C(v12, type metadata accessor for TransactionContext);
      v46 = v28;
      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1BD531EA0((v31 > 1), v32 + 1, 1);
        v28 = v46;
      }

      *(v28 + 16) = v32 + 1;
      sub_1BD722468(v16, v28 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v32, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
      v30 += v45;
      --v27;
    }

    while (v27);
    v41, v33, v34, v35, v36, v37, v38, v39;
    a3 = v42;
    a2 = v43;
  }

  else
  {
    a1, v20, v21, v22, v23, v24, v25, v26;
    v28 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v28;
  return sub_1BD273C60(a2, &a3[v44]);
}

uint64_t sub_1BD721240@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v5 = type metadata accessor for FinanceKitTransactionHistoryView(0);
  v36 = *(v5 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0);
  v8 = v7 - 8;
  v34 = *(v7 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04B0F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[3];
  v32 = a1[2];
  v33 = v14;
  v30 = v15;
  v31 = v16;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE04B054();
  v17 = sub_1BE0493D4();
  v29 = v18;
  (*(v11 + 8))(v13, v10);
  LOBYTE(v11) = *(a1 + *(v8 + 40));
  v19 = v28;
  sub_1BD722400(a1, v28, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
  v20 = v35;
  sub_1BD722400(v38, v35, type metadata accessor for FinanceKitTransactionHistoryView);
  v21 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v22 = (v9 + *(v36 + 80) + v21) & ~*(v36 + 80);
  v23 = swift_allocObject();
  sub_1BD722468(v19, v23 + v21, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
  result = sub_1BD722468(v20, v23 + v22, type metadata accessor for FinanceKitTransactionHistoryView);
  v25 = v30;
  *a3 = v33;
  *(a3 + 8) = v25;
  v26 = v31;
  *(a3 + 16) = v32;
  *(a3 + 24) = v26;
  v27 = v29;
  *(a3 + 32) = v17;
  *(a3 + 40) = v27;
  *(a3 + 48) = v11;
  *(a3 + 49) = *v39;
  *(a3 + 52) = *&v39[3];
  *(a3 + 56) = sub_1BD7224D0;
  *(a3 + 64) = v23;
  return result;
}

uint64_t sub_1BD721550(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for FinanceKitTransactionDetailView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_1BE048F54();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for TransactionContext(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0);
  sub_1BD0DE19C(a1 + *(v22 + 40), v14, &qword_1EBD3F790, &qword_1BE0D6710);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1BD0DE53C(v14, &qword_1EBD3F790, &qword_1BE0D6710);
  }

  sub_1BD722468(v14, v21, type metadata accessor for TransactionContext);
  v24 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v25 = v42;
  sub_1BD0DE19C(v42 + *(v24 + 20), v7, &qword_1EBD3F788, &unk_1BE0E2970);
  v26 = v43;
  if ((*(v43 + 48))(v7, 1, v8) == 1)
  {
    sub_1BD72259C(v21, type metadata accessor for TransactionContext);
    return sub_1BD0DE53C(v7, &qword_1EBD3F788, &unk_1BE0E2970);
  }

  else
  {
    v27 = v40;
    (*(v26 + 32))(v40, v7, v8);
    v28 = *(v25 + *(type metadata accessor for FinanceKitTransactionHistoryView(0) + 20));
    if (v28)
    {
      sub_1BD722400(v21, v18, type metadata accessor for TransactionContext);
      v29 = v39;
      (*(v26 + 16))(v39, v27, v8);
      sub_1BE048964();
      v30 = v41;
      sub_1BD80B518(v18, v29, v41);
      sub_1BD982324(v30);
      v28, v31, v32, v33, v34, v35, v36, v37;
      sub_1BD72259C(v30, type metadata accessor for FinanceKitTransactionDetailView);
      (*(v26 + 8))(v27, v8);
      return sub_1BD72259C(v21, type metadata accessor for TransactionContext);
    }

    else
    {
      type metadata accessor for NavigationController();
      sub_1BD722280(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
      result = sub_1BE04EEB4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD721A24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1BE049904();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v41 - v8;
  v49 = sub_1BE04AB24();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1BE04AB54();
  v11 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BE04AF64();
  v14 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v41 - v18;
  v50 = sub_1BE049A94();
  v20 = *(v50 - 8);
  v21 = MEMORY[0x1EEE9AC00](v50);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v20 + 16);
  v51 = a1;
  v24(v23, a1, v21);
  v48 = type metadata accessor for TransactionContext(0);
  v25 = a1 + *(v48 + 28);
  v42 = v19;
  sub_1BD0DE19C(v25, v19, &qword_1EBD3F7C0, &unk_1BE0D6570);
  sub_1BE049974();
  sub_1BE04AB14();
  sub_1BE04AB04();
  v26 = sub_1BE04AF24();
  v45 = v27;
  v46 = v26;
  (*(v47 + 8))(v10, v49);
  (*(v11 + 8))(v13, v44);
  (*(v14 + 8))(v16, v43);
  v49 = sub_1BD736290(v19);
  v47 = v28;
  v29 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0);
  sub_1BE0499A4();
  sub_1BD7271C4();
  v30 = v52;
  sub_1BE049A34();
  v32 = v53;
  v31 = v54;
  v33 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x1E6967980], v55);
  sub_1BD722280(&qword_1EBD461D8, MEMORY[0x1E6967988], MEMORY[0x1E69679A0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v34 = *(v31 + 8);
  v34(v32, v33);
  v34(v30, v33);
  LOBYTE(v33) = v57 == v56;
  sub_1BE049A14();
  sub_1BD0DE53C(v42, &qword_1EBD3F7C0, &unk_1BE0D6570);
  (*(v20 + 8))(v23, v50);
  v35 = *(v29 + 40);
  v36 = v48;
  v37 = *(*(v48 - 8) + 56);
  v37(&a2[v35], 1, 1, v48);
  v38 = v45;
  *a2 = v46;
  *(a2 + 1) = v38;
  v39 = v47;
  *(a2 + 2) = v49;
  *(a2 + 3) = v39;
  a2[*(v29 + 32)] = v33;
  sub_1BD0DE53C(&a2[v35], &qword_1EBD3F790, &qword_1BE0D6710);
  sub_1BD722468(v51, &a2[v35], type metadata accessor for TransactionContext);
  return (v37)(&a2[v35], 0, 1, v36);
}

uint64_t sub_1BD722008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1BE04AFE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BD72207C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v7[1] = *v1;
  sub_1BD722400(v1, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitTransactionHistoryView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1BD722468(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for FinanceKitTransactionHistoryView);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD514F0, &unk_1BE0F2F70);
  sub_1BE04AFE4();
  sub_1BD722348();
  sub_1BD7223AC();
  sub_1BD722280(&qword_1EBD51508, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction, &unk_1BE0F2F34);
  return sub_1BE0519D4();
}

uint64_t sub_1BD722280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD7222C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FinanceKitTransactionHistoryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD721240(a1, v6, a2);
}

unint64_t sub_1BD722348()
{
  result = qword_1EBD514F8;
  if (!qword_1EBD514F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD514F0, &unk_1BE0F2F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD514F8);
  }

  return result;
}

unint64_t sub_1BD7223AC()
{
  result = qword_1EBD51500;
  if (!qword_1EBD51500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51500);
  }

  return result;
}

uint64_t sub_1BD722400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD722468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7224D0()
{
  v1 = *(type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FinanceKitTransactionHistoryView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD721550(v0 + v2, v5);
}

uint64_t sub_1BD72259C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD7225FC()
{
  result = qword_1EBD51510;
  if (!qword_1EBD51510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51518, &unk_1BE0F2F80);
    sub_1BD7223AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51510);
  }

  return result;
}

uint64_t sub_1BD722680(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  if ((sub_1BE053074() & 1) == 0 || (sub_1BE053074() & 1) == 0)
  {
    return 0;
  }

  return sub_1BD3FDC00(v2, v3);
}

uint64_t sub_1BD722838(void (*a1)(uint64_t, unint64_t, void, uint64_t), void *a2)
{
  v64 = a1;
  v65 = a2;
  v3 = sub_1BE04BA14();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v56 - v6;
  v7 = sub_1BE04B9C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v14 = sub_1BE04BAC4();
  v62 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v57 = v2;
  v63 = &v56 - v19;
  sub_1BE04BC34();
  sub_1BE04BC34();
  sub_1BE04BAA4();
  v20 = *(v15 + 8);
  v20(v17, v14);
  (*(v8 + 104))(v10, *MEMORY[0x1E69B7FB0], v7);
  v21 = sub_1BE04B9B4();
  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v23 = v62;
  if (v21 & 1) != 0 || (sub_1BE04BC34(), v24 = v58, sub_1BE04BA24(), v20(v17, v23), v25 = *MEMORY[0x1E69B7FE0], v26 = sub_1BE04B9D4(), v27 = v59, (*(*(v26 - 8) + 104))(v59, v25, v26), v29 = v60, v28 = v61, (*(v60 + 104))(v27, *MEMORY[0x1E69B8020], v61), LOBYTE(v25) = MEMORY[0x1BFB38A90](v24, v27), v30 = *(v29 + 8), v30(v27, v28), v30(v24, v28), (v25))
  {
    v64(0xD000000000000013, 0x80000001BE137390, 0, 0);
    v31 = v63;
  }

  else
  {
    v31 = v63;
    if (sub_1BE04BA54())
    {
      v33 = sub_1BE04BAB4();
      v34 = v57;
      if ((v33 & 1) != 0 && [*(v57 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup) isSMSOTP])
      {
        v64(0x5320656764697262, 0xEE0050544F20534DLL, 0, 0);
      }

      else
      {
        sub_1BD722DA4();
        v48 = v65;
        sub_1BE048964();
        sub_1BD7263DC(v34, v64, v48);
        v48, v49, v50, v51, v52, v53, v54, v55;
      }
    }

    else
    {
      v35 = *(v57 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      v36 = *(v57 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
      v37 = swift_allocObject();
      v38 = v65;
      *(v37 + 16) = v64;
      *(v37 + 24) = v38;
      aBlock[4] = sub_1BD726394;
      v67 = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_168;
      v39 = _Block_copy(aBlock);
      v40 = v67;
      sub_1BE048964();
      v40, v41, v42, v43, v44, v45, v46, v47;
      [v35 canPerformVerificationInlineForMethodGroup:v36 completion:v39];
      _Block_release(v39);
    }
  }

  return (v20)(v31, v23);
}

void sub_1BD722DA4()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04B944();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
  if (![v10 isSMSOTP])
  {
    return;
  }

  v11 = [v10 onlyMethod];
  if (!v11)
  {
    return;
  }

  v30 = v11;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  if ([v12 channel] != 1)
  {
    goto LABEL_7;
  }

  v30 = v30;
  if ([v13 requiresUserInteraction])
  {

LABEL_7:
    v14 = v30;

    return;
  }

  v15 = PKDevicePhoneNumber();
  if (v15)
  {

    v16 = v0;
    v17 = sub_1BE04BC84();
    v18 = [v17 paymentPass];

    if (v18)
    {
      v19 = [v13 legacyChannelRepresentation];
      sub_1BE04BB94();
      v20 = sub_1BE04B934();
      (*(v6 + 8))(v9, v5);
      if ([v20 respondsToSelector_])
      {
        v21 = v18;
        [v20 startBackgroundVerificationObserverForPass:v21 verificationMethod:v19];
      }

      swift_unknownObjectRelease();
      v22 = [objc_allocWithZone(MEMORY[0x1E69B8EF0]) init];
      [v22 setPass_];
      [v22 setMethod_];

      [v22 setMethodGroup_];
      v23 = *(v16 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      aBlock[4] = sub_1BD723BF4;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD28F728;
      aBlock[3] = &block_descriptor_25_1;
      v24 = _Block_copy(aBlock);
      v25 = v22;
      [v23 performVerificationUpdateRequest:v25 completion:v24];
      _Block_release(v24);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_1BE04D0C4();
    v26 = sub_1BE04D204();
    v27 = sub_1BE052C14();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1BD026000, v26, v27, "Skipping silent verification because no device phone number", v28, 2u);
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_1BD723250(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v70 = v6;
    type metadata accessor for ProvisioningPerformVerificationFlowSection.PerformVerificationMethodSetFlowItem();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v69 = v5;
      v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodsToPerformTogether);
      v11 = *(v9 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet + 8);
      v12 = *(v9 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet + 16);
      v13 = *(v9 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet);
      v14 = v11;
      sub_1BE048C84();
      swift_unknownObjectRetain();
      v15 = sub_1BD224188(v13, v14, v12, v10);
      LOBYTE(v11) = v16;
      v12, v16, v17, v18, v19, v20, v21, v22;

      if (v11)
      {
LABEL_4:
        swift_unknownObjectRelease();
        return;
      }

      if (sub_1BD723628())
      {
        v49 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
        }

        else
        {
          if (v49 >= *(v10 + 16))
          {
            goto LABEL_4;
          }

          if ((v49 & 0x8000000000000000) == 0)
          {
            v50 = v10 + 24 * v49;
            v51 = *(v50 + 32);
            v52 = *(v50 + 40);
            v53 = v50 + 32;
            v54 = *(v53 + 16);
            v55 = v51;
            v56 = v52;
            sub_1BE048C84();
            v28 = sub_1BD725364(v56, v54);
            v30 = v57;
            v54, v57, v58, v59, v60, v61, v62, v63;

            if (v49 < *(v10 + 16))
            {
              v64 = *v53;
              v65 = *(v53 + 8);
              v25 = *(v53 + 16);
              swift_unknownObjectRetain();
              v26 = v64;
              v27 = v65;
              sub_1BE048C84();
              swift_unknownObjectRelease();
              if (!v28)
              {
                goto LABEL_14;
              }

              goto LABEL_7;
            }

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      sub_1BE04D0C4();
      v66 = sub_1BE04D204();
      v67 = sub_1BE052C54();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_1BD026000, v66, v67, "Skipping next verification method because previous not complete", v68, 2u);
        MEMORY[0x1BFB45F20](v68, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v69 + 8))(v8, v70);
    }
  }

  else
  {
    v23 = *(v1 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodsToPerformTogether);
    if (*(v23 + 16))
    {
      v24 = *(v23 + 40);
      v25 = *(v23 + 48);
      v26 = *(v23 + 32);
      v27 = v24;
      sub_1BE048C84();
      v28 = sub_1BD725364(v27, v25);
      v30 = v29;
      swift_unknownObjectRetain();
      if (!v28)
      {
LABEL_14:
        sub_1BD726008(v26, v27, v25);
        return;
      }

LABEL_7:
      v31 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
      v32 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      v33 = objc_allocWithZone(type metadata accessor for ProvisioningPerformVerificationFlowSection.PerformVerificationMethodSetFlowItem());
      sub_1BE048964();
      v34 = v32;
      sub_1BD726050(v31, v34, v26, v27, v25, v28, v30);
      v31, v35, v36, v37, v38, v39, v40, v41;

      v25, v42, v43, v44, v45, v46, v47, v48;
      swift_unknownObjectRelease_n();
    }
  }
}

BOOL sub_1BD723628()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_verificationController) verificationRecord];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet + 16);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_1BE053704();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB40900](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = [v2 hasCompletedMethod_];

    ++v5;
  }

  while ((v9 & 1) != 0);

  return v6;
}

void sub_1BD72374C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v92 = a2;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v87 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v87 - v16;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69B80D0], v7);
  }

  else
  {
    v88 = a3;
    v89 = v4;
    v91 = a1;
    v18 = *(v8 + 104);
    LODWORD(v90) = *MEMORY[0x1E69B80D8];
    v18(v17);
    v19 = PKPassKitBundle();
    if (!v19)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v20 = v19;
    sub_1BE04B6F4();
    v22 = v21;

    v87 = *(v8 + 8);
    v87(v17, v7);
    v23 = sub_1BE052404();
    v22, v24, v25, v26, v27, v28, v29, v30;
    v31 = v91;
    [v91 setLocalizedTitle_];

    v32 = v90;
    v90 = v18;
    (v18)(v13, v32, v7);
    v33 = PKPassKitBundle();
    if (!v33)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v34 = v33;
    sub_1BE04B6F4();
    v36 = v35;

    v87(v13, v7);
    v37 = sub_1BE052404();
    v36, v38, v39, v40, v41, v42, v43, v44;
    [v31 setLocalizedMessage_];

    a3 = v88;
    v4 = v89;
    a1 = v31;
    (v90)(v10, *MEMORY[0x1E69B80D0], v7);
  }

  v45 = PKPassKitBundle();
  if (!v45)
  {
    __break(1u);
    goto LABEL_11;
  }

  v46 = v45;
  v47 = sub_1BE04B6F4();
  v49 = v48;

  (*(v8 + 8))(v10, v7);
  sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
  v50 = swift_allocObject();
  v51 = v92;
  v50[2] = v92;
  v50[3] = a3;
  v52 = a3;
  v53 = swift_allocObject();
  v53[2] = v51;
  v53[3] = v52;
  v54 = swift_allocObject();
  v54[2] = v51;
  v54[3] = v52;
  swift_retain_n();
  v55 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v47, v49, sub_1BD267328, v50, sub_1BD267328, v53, sub_1BD267328, v54);
  v49, v56, v57, v58, v59, v60, v61, v62;
  v50, v63, v64, v65, v66, v67, v68, v69;
  v53, v70, v71, v72, v73, v74, v75, v76;
  v54, v77, v78, v79, v80, v81, v82, v83;
  PKApplyDefaultIconToAlertController();
  v84 = v4 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v85 = *(v84 + 8);
    ObjectType = swift_getObjectType();
    (*(v85 + 24))(v55, ObjectType, v85);
    swift_unknownObjectRelease();
  }
}

void sub_1BD723BF4(uint64_t a1, void *a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 1)
  {
    sub_1BE04D0C4();
    v8 = a2;
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      if (a2)
      {
        v13 = a2;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v11 + 4) = v14;
      *v12 = v15;
      _os_log_impl(&dword_1BD026000, v9, v10, "Failed to request background OTP code with error: %@", v11, 0xCu);
      sub_1BD1E236C(v12);
      MEMORY[0x1BFB45F20](v12, -1, -1);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BD723DB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

void sub_1BD723DFC(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1BE04D214();
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E69B8EF0]) init];
  v9 = *(v2 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_verificationController);
  v10 = [v9 pass];
  [v8 setPass_];

  v11 = (v2 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet);
  v12 = *(v2 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet + 8);
  [v8 setMethod_];
  [v8 setMethodGroup_];
  v13 = [v9 verificationRecord];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_5;
  }

  v15 = v13;
  if (![v15 isMethodInProgress_] || (objc_msgSend(v15, sel_isMethodInProgressMethodExpired) & 1) != 0)
  {

LABEL_5:
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a1;
    v17[4] = a2;
    aBlock[4] = sub_1BD72718C;
    v33 = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD28F728;
    aBlock[3] = &block_descriptor_34_1;
    v18 = _Block_copy(aBlock);
    v19 = v33;
    v15 = v8;
    sub_1BE048964();
    v19, v20, v21, v22, v23, v24, v25, v26;
    [v9 performVerificationUpdateRequest:v15 completion:v18];
    _Block_release(v18);
    v8 = v14;
    goto LABEL_6;
  }

  sub_1BE04D0C4();
  v27 = sub_1BE04D204();
  v28 = sub_1BE052C54();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1BD026000, v27, v28, "Not starting verification method because it has already started", v29, 2u);
    MEMORY[0x1BFB45F20](v29, -1, -1);
  }

  (*(v31 + 8))(v7, v5);
  a1(1);
LABEL_6:
}

uint64_t sub_1BD724140(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v8 = sub_1BE051F54();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a1;
  v18 = v30;
  v17[4] = a2;
  v17[5] = v18;
  v17[6] = a5;
  aBlock[4] = sub_1BD727198;
  v34 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_41_0;
  v19 = _Block_copy(aBlock);
  v20 = v34;
  v21 = a2;
  sub_1BE048964();
  v20, v22, v23, v24, v25, v26, v27, v28;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v19);
  _Block_release(v19);

  (*(v32 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v31);
}

void sub_1BD724474(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a2 == 1)
    {
      v18 = [*(Strong + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_verificationController) verificationRecord];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 verificationStatus];
        if (v20 == 3 || v20 == 4000)
        {
          v21 = 1;
        }

        else
        {
          sub_1BE04D0C4();
          v35 = sub_1BE04D204();
          v36 = sub_1BE052C54();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&dword_1BD026000, v35, v36, "Record status type is unexpected", v37, 2u);
            MEMORY[0x1BFB45F20](v37, -1, -1);
          }

          (*(v10 + 8))(v12, v9);
          v21 = 0;
        }

        a4(v21);
      }

      else
      {
        sub_1BE04D0C4();
        v23 = sub_1BE04D204();
        v24 = sub_1BE052C54();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_1BD026000, v23, v24, "Failed to find record for performed method group", v25, 2u);
          MEMORY[0x1BFB45F20](v25, -1, -1);
        }

        (*(v10 + 8))(v15, v9);
        a4(0);
      }
    }

    else
    {
      if (a3)
      {
        v22 = sub_1BE04A844();
      }

      else
      {
        v22 = 0;
      }

      v26 = [objc_opt_self() errorWithUnderlyingError:v22 defaultSeverity:6];

      v27 = swift_allocObject();
      v27[2] = a4;
      v27[3] = a5;
      sub_1BE048964();
      sub_1BD7247CC(v26, sub_1BD1B5F6C, v27);

      v27, v28, v29, v30, v31, v32, v33, v34;
    }
  }
}

void sub_1BD7247CC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v92 = a2;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v87 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v87 - v16;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69B80D0], v7);
  }

  else
  {
    v88 = a3;
    v89 = v4;
    v91 = a1;
    v18 = *(v8 + 104);
    LODWORD(v90) = *MEMORY[0x1E69B80D8];
    v18(v17);
    v19 = PKPassKitBundle();
    if (!v19)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v20 = v19;
    sub_1BE04B6F4();
    v22 = v21;

    v87 = *(v8 + 8);
    v87(v17, v7);
    v23 = sub_1BE052404();
    v22, v24, v25, v26, v27, v28, v29, v30;
    v31 = v91;
    [v91 setLocalizedTitle_];

    v32 = v90;
    v90 = v18;
    (v18)(v13, v32, v7);
    v33 = PKPassKitBundle();
    if (!v33)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v34 = v33;
    sub_1BE04B6F4();
    v36 = v35;

    v87(v13, v7);
    v37 = sub_1BE052404();
    v36, v38, v39, v40, v41, v42, v43, v44;
    [v31 setLocalizedMessage_];

    a3 = v88;
    v4 = v89;
    a1 = v31;
    (v90)(v10, *MEMORY[0x1E69B80D0], v7);
  }

  v45 = PKPassKitBundle();
  if (!v45)
  {
    __break(1u);
    goto LABEL_11;
  }

  v46 = v45;
  v47 = sub_1BE04B6F4();
  v49 = v48;

  (*(v8 + 8))(v10, v7);
  sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
  v50 = swift_allocObject();
  v51 = v92;
  v50[2] = v92;
  v50[3] = a3;
  v52 = a3;
  v53 = swift_allocObject();
  v53[2] = v51;
  v53[3] = v52;
  v54 = swift_allocObject();
  v54[2] = v51;
  v54[3] = v52;
  swift_retain_n();
  v55 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v47, v49, sub_1BD267328, v50, sub_1BD214190, v53, sub_1BD267328, v54);
  v49, v56, v57, v58, v59, v60, v61, v62;
  v50, v63, v64, v65, v66, v67, v68, v69;
  v53, v70, v71, v72, v73, v74, v75, v76;
  v54, v77, v78, v79, v80, v81, v82, v83;
  PKApplyDefaultIconToAlertController();
  v84 = v4 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v85 = *(v84 + 8);
    ObjectType = swift_getObjectType();
    (*(v85 + 24))(v55, ObjectType, v85);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD724D80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BD724DC4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD724E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + *a5 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD724E68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context] = a1;
  *&v4[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_provisionedPasses] = a2;
  *&v4[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup] = a3;
  *&v4[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController] = a4;
  swift_unknownObjectUnownedInit();
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_1BE048964();
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = &v88;
  sub_1BE053834();
  v89, v15, v16, v17, v18, v19, v20, v21;
  v88 = 0xD00000000000001FLL;
  v89 = 0x80000001BE137250;
  v22 = [v12 identifier];
  v23 = sub_1BE052434();
  v25 = v24;

  MEMORY[0x1BFB3F610](v23, v25);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1BFB3F610](62, 0xE100000000000000);
  v33 = v89;
  v34 = &v5[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_identifier];
  *v34 = v88;
  v34[1] = v33;
  v35 = [v12 methods];
  sub_1BD0E5E8C(0, &qword_1EBD45968, 0x1E69B8B00);
  v36 = sub_1BE052744();

  if (v36 >> 62)
  {
    v44 = sub_1BE053704();
    v85 = ObjectType;
    if (v44)
    {
      goto LABEL_3;
    }

LABEL_28:
    v36, v37, v38, v39, v40, v41, v42, v43;
    v35 = 0;
    v14 = 0;
    ObjectType = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v44 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v85 = ObjectType;
  if (!v44)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v44 >= 1)
  {
    v84 = v5;
    v35 = 0;
    v14 = 0;
    v45 = 0;
    ObjectType = MEMORY[0x1E69E7CC0];
    v46 = &selRef_thumbnailWidth;
    v86 = v12;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x1BFB40900](v45, v36);
        if (!v35)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v55 = *(v36 + 8 * v45 + 32);
        if (!v35)
        {
LABEL_5:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
          v14 = swift_allocObject();
          *(v14 + 1) = xmmword_1BE0B7020;
          v14[4] = v55;
          v47 = v55;
          v35 = v55;
          goto LABEL_6;
        }
      }

      v56 = [v35 v46[254]];
      if (v56 < 6)
      {
        goto LABEL_12;
      }

      if (v56 != 6)
      {
        if (v56 == 7)
        {
LABEL_12:
          [v55 v46[254]];
        }

LABEL_13:
        v57 = v12;
        v58 = v35;
        sub_1BE048C84();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          ObjectType = sub_1BD1D74C0(0, *(ObjectType + 16) + 1, 1, ObjectType, v59, v60, v61, v62);
        }

        v64 = *(ObjectType + 16);
        v63 = *(ObjectType + 24);
        if (v64 >= v63 >> 1)
        {
          ObjectType = sub_1BD1D74C0((v63 > 1), v64 + 1, 1, ObjectType, v59, v60, v61, v62);
        }

        *(ObjectType + 16) = v64 + 1;
        v65 = (ObjectType + 24 * v64);
        v12 = v86;
        v65[4] = v86;
        v65[5] = v35;
        v65[6] = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_1BE0B7020;
        *(v66 + 32) = v55;
        v67 = v55;
        v14, v68, v69, v70, v71, v72, v73, v74;

        v35 = v67;
        v14 = v66;
        v46 = &selRef_thumbnailWidth;
        goto LABEL_6;
      }

      if ([v55 v46[254]] != 7)
      {
        goto LABEL_13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B7020;
      *(inited + 32) = v55;
      v88 = v14;
      sub_1BDA7A27C(inited);
      v14 = v88;
LABEL_6:
      if (v44 == ++v45)
      {
        v36, v48, v49, v50, v51, v52, v53, v54;
        v23 = v12;
        sub_1BD0D4770(v35, v14);
        v12 = v35;
        sub_1BE048C84();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_24;
        }

        goto LABEL_31;
      }
    }
  }

  __break(1u);
LABEL_31:
  ObjectType = sub_1BD1D74C0(0, *(ObjectType + 16) + 1, 1, ObjectType, v40, v41, v42, v43);
LABEL_24:
  v5 = v84;
  v80 = *(ObjectType + 16);
  v79 = *(ObjectType + 24);
  if (v80 >= v79 >> 1)
  {
    ObjectType = sub_1BD1D74C0((v79 > 1), v80 + 1, 1, ObjectType, v40, v41, v42, v43);
  }

  v14, v76, v77, v78, v40, v41, v42, v43;

  *(ObjectType + 16) = v80 + 1;
  v81 = (ObjectType + 24 * v80);
  v81[4] = v23;
  v81[5] = v12;
  v81[6] = v14;
LABEL_29:
  *&v5[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodsToPerformTogether] = ObjectType;
  v87.receiver = v5;
  v87.super_class = v85;
  v82 = objc_msgSendSuper2(&v87, sel_init);
  sub_1BD0D468C(v35, v14);
  return v82;
}

id sub_1BD725364(void *a1, objc_class *a2)
{
  v120 = a2;
  v4 = sub_1BE04AA64();
  v118 = *(v4 - 8);
  v119 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B9C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v117 - v12;
  v14 = sub_1BE04BAC4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = [v18 type];
  if (v19 > 3)
  {
    if (v19 > 5)
    {
      if (v19 == 6)
      {

        v66 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
        v67 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
        v68 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
        v69 = type metadata accessor for ProvisioningVerificationCardReaderFlowItem();
        v70 = objc_allocWithZone(v69);
        swift_unknownObjectWeakInit();
        *&v70[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v71 = &v70[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_identifier];
        *v71 = 0xD00000000000001ELL;
        v71[1] = 0x80000001BE137300;
        v70[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_presentationConfiguration] = 1;
        *&v70[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem__hasSeenMethodsScreen] = &type metadata for ProvisioningVerificationHasSeenMethodsScreenKey;
        *&v70[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_context] = v66;
        *&v70[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_methodGroup] = v67;
        *&v70[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_methods] = v120;
        *&v70[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_verificationController] = v68;
        swift_unknownObjectWeakAssign();
        v126.receiver = v70;
        v126.super_class = v69;
        sub_1BE048C84();
        sub_1BE048964();
        v72 = v67;
        v73 = v68;
        v74 = objc_msgSendSuper2(&v126, sel_init);

        return v74;
      }

      if (v19 != 7)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    if (v19 == 4)
    {
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (v31)
      {
        v32 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
        v33 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
        v34 = [v31 url];
        sub_1BE04A9F4();

        v35 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
        v120 = type metadata accessor for ProvisioningVerificationAppClipFlowItem(0);
        v36 = objc_allocWithZone(v120);
        swift_unknownObjectWeakInit();
        *&v36[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v37 = &v36[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_identifier];
        *v37 = 0xD00000000000001BLL;
        *(v37 + 1) = 0x80000001BE11DD40;
        *&v36[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_context] = v32;
        *&v36[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_methodGroup] = v33;
        v38 = v33;
        *&v36[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_method] = v18;
        v39 = v118;
        v40 = v119;
        (*(v118 + 16))(&v36[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_url], v6, v119);
        *&v36[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_verificationController] = v35;
        swift_unknownObjectWeakAssign();
        sub_1BE052434();
        v42 = v41;
        sub_1BE048964();
        v43 = v38;
        v44 = v35;
        v45 = sub_1BE04BB74();
        v42, v46, v47, v48, v49, v50, v51, v52;
        *&v36[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_reporter] = v45;
        v124.receiver = v36;
        v124.super_class = v120;
        v53 = objc_msgSendSuper2(&v124, sel_init);

        (*(v39 + 8))(v6, v40);
        return v53;
      }
    }

    else
    {

      objc_opt_self();
      v75 = swift_dynamicCastObjCClass();
      if (v75)
      {
        v76 = v75;
        v77 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
        v78 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
        v79 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
        v80 = type metadata accessor for ProvisioningVerificationUniversalURLFlowSection();
        v81 = objc_allocWithZone(v80);
        swift_unknownObjectWeakInit();
        *&v81[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v82 = &v81[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_identifier];
        *v82 = 0xD000000000000023;
        v82[1] = 0x80000001BE137320;
        v81[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination] = 4;
        *&v81[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_context] = v77;
        *&v81[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_methodGroup] = v78;
        *&v81[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method] = v76;
        *&v81[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController] = v79;
        swift_unknownObjectWeakAssign();
        v125.receiver = v81;
        v125.super_class = v80;
        sub_1BE048964();
        v83 = v78;
        v84 = v79;
        return objc_msgSendSuper2(&v125, sel_init);
      }
    }

    return 0;
  }

  else
  {
    if (v19 <= 1)
    {
      if (v19)
      {
        if (v19 == 1)
        {

          v120 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
          v20 = v2;
          sub_1BE04BC34();
          sub_1BE04BAA4();
          (*(v15 + 8))(v17, v14);
          (*(v8 + 104))(v10, *MEMORY[0x1E69B7FB0], v7);
          v21 = sub_1BE04B9B4();
          v22 = *(v8 + 8);
          v22(v10, v7);
          v22(v13, v7);
          v23 = *(v20 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
          v24 = *(v20 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
          v25 = type metadata accessor for ProvisioningVerificationCompletionFlowItem();
          v26 = objc_allocWithZone(v25);
          swift_unknownObjectWeakInit();
          *&v26[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v27 = &v26[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_identifier];
          *v27 = 0xD00000000000001ELL;
          v27[1] = 0x80000001BE137370;
          *&v26[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem__hasSeenMethodsScreen] = &type metadata for ProvisioningVerificationHasSeenMethodsScreenKey;
          *&v26[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_context] = v120;
          *&v26[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_methodGroup] = v23;
          *&v26[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_method] = v18;
          *&v26[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_verificationController] = v24;
          v26[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_allowVerificationMethodSelection] = v21 & 1;
          swift_unknownObjectWeakAssign();
          v121.receiver = v26;
          v121.super_class = v25;
          sub_1BE048964();
          v28 = v23;
          v29 = v24;
          return objc_msgSendSuper2(&v121, sel_init);
        }

LABEL_23:
        result = sub_1BE053994();
        __break(1u);
        return result;
      }

LABEL_20:

      v104 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
      v105 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v107 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationMethodsFlowItem());
      sub_1BE048964();
      v108 = v105;
      v109 = sub_1BD5537A8(v104, v108, Strong);

      v104, v110, v111, v112, v113, v114, v115, v116;
      return v109;
    }

    if (v19 == 2 && (objc_opt_self(), (v54 = swift_dynamicCastObjCClass()) != 0) && [v54 direction] == 2)
    {
      v120 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
      v55 = v2;
      sub_1BE04BC34();
      sub_1BE04BAA4();
      (*(v15 + 8))(v17, v14);
      (*(v8 + 104))(v10, *MEMORY[0x1E69B7FB0], v7);
      v56 = sub_1BE04B9B4();
      v57 = *(v8 + 8);
      v57(v10, v7);
      v57(v13, v7);
      v58 = *(v55 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
      v59 = *(v55 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      v60 = type metadata accessor for ProvisioningVerificationCompletionFlowItem();
      v61 = objc_allocWithZone(v60);
      swift_unknownObjectWeakInit();
      *&v61[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v62 = &v61[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_identifier];
      *v62 = 0xD00000000000001ELL;
      v62[1] = 0x80000001BE137370;
      *&v61[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem__hasSeenMethodsScreen] = &type metadata for ProvisioningVerificationHasSeenMethodsScreenKey;
      *&v61[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_context] = v120;
      *&v61[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_methodGroup] = v58;
      *&v61[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_method] = v18;
      *&v61[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_verificationController] = v59;
      v61[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_allowVerificationMethodSelection] = v56 & 1;
      swift_unknownObjectWeakAssign();
      v122.receiver = v61;
      v122.super_class = v60;
      sub_1BE048964();
      v63 = v58;
      v64 = v59;
      v65 = objc_msgSendSuper2(&v122, sel_init);

      return v65;
    }

    else
    {
      v85 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
      v86 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
      v87 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      v88 = type metadata accessor for ProvisioningExternalVerificationFlowItem();
      v89 = objc_allocWithZone(v88);
      swift_unknownObjectWeakInit();
      *&v89[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v90 = &v89[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_identifier];
      *v90 = 0xD00000000000001CLL;
      *(v90 + 1) = 0x80000001BE137350;
      *&v89[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_context] = v85;
      *&v89[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_methodGroup] = v86;
      *&v89[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_method] = v18;
      *&v89[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_verificationController] = v87;
      swift_unknownObjectWeakAssign();
      sub_1BE052434();
      v92 = v91;
      sub_1BE048964();
      v93 = v86;
      v94 = v87;
      v95 = sub_1BE04BB74();
      v92, v96, v97, v98, v99, v100, v101, v102;
      *&v89[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_reporter] = v95;
      v123.receiver = v89;
      v123.super_class = v88;
      v103 = objc_msgSendSuper2(&v123, sel_init);

      return v103;
    }
  }
}

void sub_1BD726008(void *a1, void *a2, void *a3)
{
  if (a1)
  {

    a3, v5, v6, v7, v8, v9, v10, v11;
  }
}

char *sub_1BD726050(uint64_t a1, void *a2, void *a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_dismissalConfiguration] = 1;
  *&v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_context] = a1;
  *&v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_verificationController] = a2;
  v16 = &v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet];
  *v16 = a3;
  v16[1] = a4;
  v16[2] = a5;
  v17 = &v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_wrapped];
  *v17 = a6;
  v17[1] = a7;
  if (!(a5 >> 62))
  {
    v18 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_1BE048964();
    v44 = a2;
    v45 = a3;
    v46 = a4;
    sub_1BE048C84();
    swift_unknownObjectRetain();
    v29 = MEMORY[0x1E69E7CC0];
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
    sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0, &qword_1BE0C1E30, MEMORY[0x1E69E6310]);
    v47 = sub_1BE0522E4();
    v49 = v48;
    v29, v48, v50, v51, v52, v53, v54, v55;
    sub_1BE053834();
    0xE000000000000000, v56, v57, v58, v59, v60, v61, v62;
    v73 = 0xD000000000000025;
    v74 = 0x80000001BE137270;
    MEMORY[0x1BFB3F610](v47, v49);
    v49, v63, v64, v65, v66, v67, v68, v69;
    MEMORY[0x1BFB3F610](62, 0xE100000000000000);
    v70 = &v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_identifier];
    *v70 = 0xD000000000000025;
    v70[1] = 0x80000001BE137270;
    v72.receiver = v8;
    v72.super_class = ObjectType;
    return objc_msgSendSuper2(&v72, sel_init);
  }

  v18 = sub_1BE053704();
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_3:
  v73 = MEMORY[0x1E69E7CC0];
  sub_1BE048964();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_1BE048C84();
  swift_unknownObjectRetain();
  result = sub_1BD03B254(0, v18 & ~(v18 >> 63), 0, v22, v23, v24, v25, v26);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = v73;
    do
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1BFB40900](v28, a5);
      }

      else
      {
        v30 = *(a5 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = [v31 identifier];
      v33 = sub_1BE052434();
      v35 = v34;

      v73 = v29;
      v42 = v29[2];
      v41 = v29[3];
      if (v42 >= v41 >> 1)
      {
        sub_1BD03B254((v41 > 1), v42 + 1, 1, v36, v37, v38, v39, v40);
        v29 = v73;
      }

      ++v28;
      v29[2] = v42 + 1;
      v43 = &v29[2 * v42];
      v43[4] = v33;
      v43[5] = v35;
    }

    while (v18 != v28);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1BD7263DC(uint64_t a1, void (*a2)(uint64_t, unint64_t, void, uint64_t), void *a3)
{
  v279 = sub_1BE04BD74();
  v283 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v277 = &v272 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v278 = &v272 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v275 = &v272 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v273 = &v272 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v274 = &v272 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v276 = &v272 - v16;
  v17 = sub_1BE04BAC4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v272 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE04D214();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v272 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v272 - v26;
  v28 = swift_allocObject();
  v281 = a2;
  v282 = a3;
  v28[2] = a2;
  v28[3] = a3;
  v284 = v28;
  v285 = a1;
  v29 = *(a1 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
  sub_1BE048964();
  v30 = [v29 methods];
  sub_1BD0E5E8C(0, &qword_1EBD45968, 0x1E69B8B00);
  v31 = sub_1BE052744();

  if (v31 >> 62)
  {
    if (sub_1BE053704())
    {
LABEL_3:
      if ((v31 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1BFB40900](0, v31);
      }

      else
      {
        if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_39;
        }

        v39 = *(v31 + 32);
      }

      v280 = v39;
      v31, v40, v41, v42, v43, v44, v45, v46;
      sub_1BE04D0C4();
      v47 = sub_1BE04D204();
      v48 = sub_1BE052C54();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1BD026000, v47, v48, "Showing setup assistant OTP enter later alert", v49, 2u);
        MEMORY[0x1BFB45F20](v49, -1, -1);
      }

      v50 = *(v22 + 8);
      v50(v27, v21);
      sub_1BE04BC34();
      v51 = sub_1BE04BAB4();
      (*(v18 + 8))(v20, v17);
      v52 = v280;
      v53 = [v280 type];
      if (v53 <= 3)
      {
        v61 = v283;
        if (v53 >= 2)
        {
          if (v53 == 2)
          {
            objc_opt_self();
            v62 = swift_dynamicCastObjCClass();
            if (v62)
            {
              v63 = v62;
              v64 = v52;
              if ([v63 direction] == 1)
              {
                v276 = v64;
                v65 = *(v61 + 104);
                v66 = v274;
                LODWORD(v278) = *MEMORY[0x1E69B80D8];
                v67 = v279;
                v277 = v65;
                (v65)(v274);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
                v68 = swift_allocObject();
                *(v68 + 16) = xmmword_1BE0B69E0;
                v69 = [*(v285 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController) pass];
                if (v69)
                {
                  v77 = v69;
                  v78 = [v69 organizationName];

                  v79 = sub_1BE052434();
                  v81 = v80;

                  *(v68 + 56) = MEMORY[0x1E69E6158];
                  *(v68 + 64) = sub_1BD110550();
                  *(v68 + 32) = v79;
                  *(v68 + 40) = v81;
                  v281 = sub_1BE04B714();
                  v83 = v82;
                  v68, v82, v84, v85, v86, v87, v88, v89;
                  v90 = *(v61 + 8);
                  v283 = v61 + 8;
                  v90(v66, v67);
                  v91 = sub_1BE052404();
                  v92 = PKDeviceSpecificLocalizedStringKeyForKey(v91, v51 & 1);

                  if (v92)
                  {
                    sub_1BE052434();
                    v101 = v100;

                    v102 = v273;
                    (v277)(v273, v278, v67);
                    v103 = PKPassKitBundle();
                    if (v103)
                    {
                      v111 = v103;
                      sub_1BE04B6F4();
                      v113 = v112;

                      v101, v114, v115, v116, v117, v118, v119, v120;
                      v90(v102, v67);
LABEL_31:
                      v231 = v280;
                      v232 = sub_1BE052404();
                      v83, v233, v234, v235, v236, v237, v238, v239;
                      v240 = sub_1BE052404();
                      v113, v241, v242, v243, v244, v245, v246, v247;
                      v248 = [objc_opt_self() errorWithTitle:v232 message:v240 severity:6];

                      v249 = v284;
                      sub_1BD72374C(v248, sub_1BD72713C, v284);
                      v249, v250, v251, v252, v253, v254, v255, v256;

                      return;
                    }

                    goto LABEL_47;
                  }

LABEL_46:
                  v282, v93, v94, v95, v96, v97, v98, v99;
                  __break(1u);
LABEL_47:
                  v282, v104, v105, v106, v107, v108, v109, v110;
                  __break(1u);
                  goto LABEL_48;
                }

LABEL_45:
                v282, v70, v71, v72, v73, v74, v75, v76;
                __break(1u);
                goto LABEL_46;
              }
            }

            goto LABEL_23;
          }

          if (v53 == 3)
          {
            v178 = *(v283 + 104);
            v179 = v276;
            LODWORD(v278) = *MEMORY[0x1E69B80D8];
            v180 = v279;
            v277 = v178;
            (v178)(v276);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
            v181 = swift_allocObject();
            *(v181 + 16) = xmmword_1BE0B69E0;
            v182 = [*(v285 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController) pass];
            if (v182)
            {
              v190 = v182;
              v191 = [v182 organizationName];

              v192 = sub_1BE052434();
              v194 = v193;

              *(v181 + 56) = MEMORY[0x1E69E6158];
              *(v181 + 64) = sub_1BD110550();
              *(v181 + 32) = v192;
              *(v181 + 40) = v194;
              v281 = sub_1BE04B714();
              v83 = v195;
              v181, v195, v196, v197, v198, v199, v200, v201;
              v202 = *(v61 + 8);
              v283 = v61 + 8;
              v202(v179, v180);
              v203 = sub_1BE052404();
              v204 = PKDeviceSpecificLocalizedStringKeyForKey(v203, v51 & 1);

              if (v204)
              {
                sub_1BE052434();
                v213 = v212;

                v214 = v275;
                (v277)(v275, v278, v180);
                v215 = PKPassKitBundle();
                if (v215)
                {
                  v223 = v215;
                  sub_1BE04B6F4();
                  v113 = v224;
                  v213, v224, v225, v226, v227, v228, v229, v230;

                  v202(v214, v180);
                  goto LABEL_31;
                }

                goto LABEL_44;
              }

LABEL_43:
              v282, v205, v206, v207, v208, v209, v210, v211;
              __break(1u);
LABEL_44:
              v282, v216, v217, v218, v219, v220, v221, v222;
              __break(1u);
              goto LABEL_45;
            }

LABEL_42:
            v282, v183, v184, v185, v186, v187, v188, v189;
            __break(1u);
            goto LABEL_43;
          }

LABEL_48:
          v282, v54, v55, v56, v57, v58, v59, v60;
          v284, v265, v266, v267, v268, v269, v270, v271;
          sub_1BE053994();
          __break(1u);
          return;
        }

LABEL_23:
        sub_1BE04D0C4();
        v168 = sub_1BE04D204();
        v169 = sub_1BE052C54();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          *v170 = 0;
          _os_log_impl(&dword_1BD026000, v168, v169, "no title or message to show cannot create alert", v170, 2u);
          MEMORY[0x1BFB45F20](v170, -1, -1);
        }

        v50(v24, v21);
        v281(0x7361207075746573, 0xEF746E6174736973, 0, 1);
        v284, v171, v172, v173, v174, v175, v176, v177;

        return;
      }

      v121 = v283;
      if ((v53 - 4) >= 2)
      {
        if ((v53 - 6) >= 2)
        {
          goto LABEL_48;
        }

        goto LABEL_23;
      }

      LODWORD(v276) = v51;
      v122 = *(v283 + 104);
      v123 = v278;
      v124 = v279;
      LODWORD(v275) = *MEMORY[0x1E69B80D8];
      v274 = v122;
      (v122)(v278);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v125 = swift_allocObject();
      *(v125 + 16) = xmmword_1BE0B69E0;
      v126 = [*(v285 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController) pass];
      if (v126)
      {
        v127 = v126;
        v128 = [v126 organizationName];

        v129 = sub_1BE052434();
        v131 = v130;

        *(v125 + 56) = MEMORY[0x1E69E6158];
        *(v125 + 64) = sub_1BD110550();
        *(v125 + 32) = v129;
        *(v125 + 40) = v131;
        v281 = sub_1BE04B714();
        v83 = v132;
        v125, v132, v133, v134, v135, v136, v137, v138;
        v139 = *(v121 + 8);
        v139(v123, v124);
        v140 = sub_1BE052404();
        v141 = PKDeviceSpecificLocalizedStringKeyForKey(v140, v276 & 1);

        if (v141)
        {
          sub_1BE052434();
          v150 = v149;

          v151 = v277;
          (v274)(v277, v275, v124);
          v152 = PKPassKitBundle();
          if (v152)
          {
            v160 = v152;
            sub_1BE04B6F4();
            v113 = v161;
            v150, v161, v162, v163, v164, v165, v166, v167;

            v139(v151, v124);
            goto LABEL_31;
          }

          goto LABEL_41;
        }

LABEL_40:
        v282, v142, v143, v144, v145, v146, v147, v148;
        __break(1u);
LABEL_41:
        v282, v153, v154, v155, v156, v157, v158, v159;
        __break(1u);
        goto LABEL_42;
      }

LABEL_39:
      v282, v32, v33, v34, v35, v36, v37, v38;
      __break(1u);
      goto LABEL_40;
    }
  }

  else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v31, v32, v33, v34, v35, v36, v37, v38;
  v281(0x7361207075746573, 0xEF746E6174736973, 0, 1);
  v264 = v284;

  v264, v257, v258, v259, v260, v261, v262, v263;
}

uint64_t sub_1BD7271C4()
{
  v0 = sub_1BE049B44();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  sub_1BE0499E4();
  v7 = (*(v1 + 88))(v6, v0);
  if (v7 == *MEMORY[0x1E6967B18])
  {
    return sub_1BE04A954();
  }

  if (v7 == *MEMORY[0x1E6967B10])
  {
    return sub_1BE04A944();
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000020, 0x80000001BE1375E0);
  sub_1BE0499E4();
  sub_1BE053974();
  (*(v1 + 8))(v3, v0);
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD7273EC@<X0>(void *a2@<X8>)
{
  v24[1] = a2;
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515E8, &qword_1BE0F3250);
  MEMORY[0x1EEE9AC00](v24[0]);
  v3 = v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515F0, &qword_1BE0F3258);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515F8, &qword_1BE0F3260);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = sub_1BE04EB24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD70A2A0(v13);
  v14 = sub_1BE04EB14();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    *v9 = sub_1BE04F504();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51628, &qword_1BE0F3278);
    sub_1BD728A94(&v9[*(v15 + 44)]);
    v16 = sub_1BE051464();
    KeyPath = swift_getKeyPath();
    v18 = &v9[*(v7 + 36)];
    *v18 = KeyPath;
    v18[1] = v16;
    v19 = &qword_1EBD515F8;
    v20 = &qword_1BE0F3260;
    sub_1BD0DE19C(v9, v6, &qword_1EBD515F8, &qword_1BE0F3260);
    swift_storeEnumTagMultiPayload();
    sub_1BD7294DC();
    sub_1BD0DE4F4(&qword_1EBD51620, &qword_1EBD515E8, &qword_1BE0F3250, MEMORY[0x1E69817F8]);
    sub_1BE04F9A4();
    v21 = v9;
  }

  else
  {
    *v3 = sub_1BE04F4E4();
    *(v3 + 1) = 0;
    v3[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51600, &qword_1BE0F3268);
    sub_1BD727778(&v3[*(v22 + 44)]);
    v19 = &qword_1EBD515E8;
    v20 = &qword_1BE0F3250;
    sub_1BD0DE19C(v3, v6, &qword_1EBD515E8, &qword_1BE0F3250);
    swift_storeEnumTagMultiPayload();
    sub_1BD7294DC();
    sub_1BD0DE4F4(&qword_1EBD51620, &qword_1EBD515E8, &qword_1BE0F3250, MEMORY[0x1E69817F8]);
    sub_1BE04F9A4();
    v21 = v3;
  }

  return sub_1BD0DE53C(v21, v19, v20);
}

uint64_t sub_1BD727778@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51690, &qword_1BE0F33A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51698, &qword_1BE0F33B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  *v14 = sub_1BE04F7C4();
  *(v14 + 1) = 0x4000000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD516A0, &qword_1BE0F33B8);
  sub_1BD7279D4(&v14[*(v15 + 44)]);
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD516A8, &qword_1BE0F33C0);
  sub_1BD728098(&v8[*(v16 + 44)]);
  sub_1BD0DE19C(v14, v11, &qword_1EBD51698, &qword_1BE0F33B0);
  sub_1BD0DE19C(v8, v5, &qword_1EBD51690, &qword_1BE0F33A8);
  sub_1BD0DE19C(v11, a2, &qword_1EBD51698, &qword_1BE0F33B0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD516B0, &qword_1BE0F33C8);
  v18 = a2 + *(v17 + 48);
  *v18 = 0x4024000000000000;
  *(v18 + 8) = 0;
  sub_1BD0DE19C(v5, a2 + *(v17 + 64), &qword_1EBD51690, &qword_1BE0F33A8);
  sub_1BD0DE53C(v8, &qword_1EBD51690, &qword_1BE0F33A8);
  sub_1BD0DE53C(v14, &qword_1EBD51698, &qword_1BE0F33B0);
  sub_1BD0DE53C(v5, &qword_1EBD51690, &qword_1BE0F33A8);
  return sub_1BD0DE53C(v11, &qword_1EBD51698, &qword_1BE0F33B0);
}

uint64_t sub_1BD7279D4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1BD727B84();
  sub_1BD727D44(v10);
  sub_1BD0DE19C(v13, v7, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE19C(v10, v4, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE19C(v7, a1, &qword_1EBD3C0E8, &qword_1BE0C4010);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD516C0, &qword_1BE0F33D8);
  sub_1BD0DE19C(v4, a1 + *(v14 + 48), &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE53C(v10, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE53C(v13, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE53C(v4, &qword_1EBD3C0E8, &qword_1BE0C4010);
  return sub_1BD0DE53C(v7, &qword_1EBD3C0E8, &qword_1BE0C4010);
}

void sub_1BD727B84()
{
  type metadata accessor for FinanceKitTransactionCell(0);
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1BE050324();
  v8 = sub_1BE0505F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v7, v9, v11, v13, v15, v16, v17, v18;
  sub_1BD0DDF10(v0, v2, (v4 & 1), v19, v20, v21, v22, v23);
  v6, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_1BE0505D4();
  v33 = v32;
  LOBYTE(v0) = v34;
  v36 = v35;
  sub_1BD0DDF10(v8, v10, (v12 & 1), v35, v37, v38, v39, v40);
  v14, v41, v42, v43, v44, v45, v46, v47;
  KeyPath = swift_getKeyPath();
  sub_1BE052434();
  v49 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
  sub_1BD1B9C50();
  sub_1BE050DE4();
  v49, v50, v51, v52, v53, v54, v55, v56;
  sub_1BD0DDF10(v31, v33, (v0 & 1), v57, v58, v59, v60, v61);
  KeyPath, v62, v63, v64, v65, v66, v67, v68;
  v36, v69, v70, v71, v72, v73, v74, v75;
}

void sub_1BD727D44(uint64_t a1@<X8>)
{
  v3 = sub_1BE04EB24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FinanceKitTransactionCell(0);
  v106 = *(v1 + *(v7 + 32));
  v110 = v3;
  v111 = a1;
  v108 = v4;
  v109 = v1;
  v107 = v6;
  if (v106 == 1)
  {
    v8 = sub_1BE052404();
    v9 = PKLocalizedPaymentString(v8);

    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = sub_1BE052434();
    v12 = v11;
  }

  else
  {
    v13 = (v1 + *(v7 + 24));
    v12 = v13[1];
    if (v12)
    {
      v10 = *v13;
      sub_1BE048C84();
    }

    else
    {
      v12 = 0xE100000000000000;
      v10 = 10;
    }
  }

  v112 = v10;
  v113 = v12;
  sub_1BD0DDEBC();
  v14 = sub_1BE0506C4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_1BE0502A4();
  v22 = sub_1BE0505F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v21, v23, v25, v27, v29, v30, v31, v32;
  sub_1BD0DDF10(v14, v16, (v18 & 1), v33, v34, v35, v36, v37);
  v20, v38, v39, v40, v41, v42, v43, v44;
  if (v106)
  {
    v45 = sub_1BE0513B4();
  }

  else
  {
    v46 = [objc_opt_self() secondaryLabelColor];
    v45 = sub_1BE0511C4();
  }

  v47 = v45;
  v112 = v45;
  v48 = sub_1BE050574();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_1BD0DDF10(v22, v24, (v26 & 1), v53, v55, v56, v57, v58);
  v47, v59, v60, v61, v62, v63, v64, v65;
  v28, v66, v67, v68, v69, v70, v71, v72;
  v73 = v107;
  sub_1BD70A2A0(v107);
  v74 = sub_1BE04EB14();
  (*(v108 + 8))(v73, v110);
  if (v74)
  {
    v75 = 2;
  }

  else
  {
    v75 = 1;
  }

  KeyPath = swift_getKeyPath();
  v112 = v48;
  v113 = v50;
  v114 = v52 & 1;
  v115 = v54;
  v116 = KeyPath;
  v117 = v75;
  v118 = 0;
  sub_1BE052434();
  v78 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
  sub_1BD1B9C50();
  sub_1BE050DE4();
  v78, v79, v80, v81, v82, v83, v84, v85;
  sub_1BD0DDF10(v48, v50, (v52 & 1), v86, v87, v88, v89, v90);
  KeyPath, v91, v92, v93, v94, v95, v96, v97;
  v54, v98, v99, v100, v101, v102, v103, v104;
}

uint64_t sub_1BD728098@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51630, &qword_1BE0F3280);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51668, &unk_1BE0F3320);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1BD728288(&v16 - v12);
  sub_1BD728724(v7);
  sub_1BD0DE19C(v13, v10, &qword_1EBD51668, &unk_1BE0F3320);
  sub_1BD0DE19C(v7, v4, &qword_1EBD51630, &qword_1BE0F3280);
  sub_1BD0DE19C(v10, a1, &qword_1EBD51668, &unk_1BE0F3320);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD516B8, &qword_1BE0F33D0);
  sub_1BD0DE19C(v4, a1 + *(v14 + 48), &qword_1EBD51630, &qword_1BE0F3280);
  sub_1BD0DE53C(v7, &qword_1EBD51630, &qword_1BE0F3280);
  sub_1BD0DE53C(v13, &qword_1EBD51668, &unk_1BE0F3320);
  sub_1BD0DE53C(v4, &qword_1EBD51630, &qword_1BE0F3280);
  return sub_1BD0DE53C(v10, &qword_1EBD51668, &unk_1BE0F3320);
}

uint64_t sub_1BD728288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v69 = sub_1BE050674();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v61[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1BE04EB24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51678, &qword_1BE0F3338);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v61[-v8];
  v9 = type metadata accessor for FinanceKitTransactionCell(0);
  v10 = (v1 + *(v9 + 28));
  v11 = v10[1];
  *&v77[0] = *v10;
  *(&v77[0] + 1) = v11;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v12 = sub_1BE0506C4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_1BE0502A4();
  v65 = sub_1BE0505F4();
  v64 = v20;
  v62 = v21;
  v63 = v22;
  v19, v20, v21, v22, v23, v24, v25, v26;
  sub_1BD0DDF10(v12, v14, (v16 & 1), v27, v28, v29, v30, v31);
  v18, v32, v33, v34, v35, v36, v37, v38;
  sub_1BD70A2A0(v7);
  v39 = sub_1BE04EB14();
  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  if (*(v2 + *(v9 + 32)) == 1)
  {
    v41 = [objc_opt_self() secondaryLabelColor];
    v42 = sub_1BE0511C4();
  }

  else
  {
    v42 = sub_1BE051464();
  }

  v43 = v42;
  if (v39)
  {
    v44 = 0.5;
  }

  else
  {
    v44 = 1.0;
  }

  v45 = swift_getKeyPath();
  v78 = v62 & 1;
  *&v73 = v65;
  *(&v73 + 1) = v64;
  LOBYTE(v74) = v62 & 1;
  *(&v74 + 1) = v63;
  *&v75 = KeyPath;
  *(&v75 + 1) = v44;
  *&v76 = v45;
  *(&v76 + 1) = v43;
  v46 = v66;
  sub_1BE050664();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51680, &qword_1BE0F3370);
  v48 = sub_1BD7295C0();
  v49 = v67;
  sub_1BE050A54();
  (*(v68 + 8))(v46, v69);
  v77[0] = v73;
  v77[1] = v74;
  v77[2] = v75;
  v77[3] = v76;
  sub_1BD0DE53C(v77, &qword_1EBD51680, &qword_1BE0F3370);
  sub_1BE052434();
  v51 = v50;
  *&v73 = v47;
  *(&v73 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  v52 = v71;
  sub_1BE050DE4();
  v51, v53, v54, v55, v56, v57, v58, v59;
  return (*(v70 + 8))(v49, v52);
}

double sub_1BD728724@<D0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v45 = sub_1BE04EB24();
  v1 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v3 = (&v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51650, &qword_1BE0F32A0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - v6;
  v8 = sub_1BE051574();
  v9 = sub_1BE050324();
  KeyPath = swift_getKeyPath();
  *&v47 = v8;
  *(&v47 + 1) = KeyPath;
  *&v48 = v9;
  sub_1BE0503A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49180, &unk_1BE0B89B0);
  sub_1BD0F14E8();
  sub_1BE050854();
  v9, v11, v12, v13, v14, v15, v16, v17;
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v8, v25, v26, v27, v28, v29, v30, v31;
  v32 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51658, &qword_1BE0F32D8) + 36)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFB0, &qword_1BE0F32E0) + 28);
  v34 = *MEMORY[0x1E69816C8];
  v35 = sub_1BE0515D4();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  *v32 = swift_getKeyPath();
  v36 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51660, &qword_1BE0F3318) + 36)];
  *v36 = 0;
  *(v36 + 4) = 1;
  v37 = [objc_opt_self() tertiaryLabelColor];
  *&v7[*(v5 + 44)] = sub_1BE0511C4();
  sub_1BD70A2A0(v3);
  sub_1BE04EB14();
  v38 = *(v1 + 8);
  v39 = v45;
  v38(v3, v45);
  sub_1BD70A2A0(v3);
  sub_1BE04EB14();
  v38(v3, v39);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v40 = v46;
  sub_1BD0A8268(v7, v46);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51630, &qword_1BE0F3280) + 36));
  v42 = v48;
  *v41 = v47;
  v41[1] = v42;
  result = *&v49;
  v41[2] = v49;
  return result;
}

uint64_t sub_1BD728A94@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51630, &qword_1BE0F3280);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51638, &qword_1BE0F3288);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  *v14 = sub_1BE04F7C4();
  *(v14 + 1) = 0x4000000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51640, &qword_1BE0F3290);
  sub_1BD728CC4(&v14[*(v15 + 44)]);
  sub_1BD728724(v8);
  sub_1BD0DE19C(v14, v11, &qword_1EBD51638, &qword_1BE0F3288);
  sub_1BD0DE19C(v8, v5, &qword_1EBD51630, &qword_1BE0F3280);
  sub_1BD0DE19C(v11, a2, &qword_1EBD51638, &qword_1BE0F3288);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51648, &qword_1BE0F3298);
  v17 = a2 + *(v16 + 48);
  *v17 = 0x4024000000000000;
  *(v17 + 8) = 0;
  sub_1BD0DE19C(v5, a2 + *(v16 + 64), &qword_1EBD51630, &qword_1BE0F3280);
  sub_1BD0DE53C(v8, &qword_1EBD51630, &qword_1BE0F3280);
  sub_1BD0DE53C(v14, &qword_1EBD51638, &qword_1BE0F3288);
  sub_1BD0DE53C(v5, &qword_1EBD51630, &qword_1BE0F3280);
  return sub_1BD0DE53C(v11, &qword_1EBD51638, &qword_1BE0F3288);
}

uint64_t sub_1BD728CC4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51668, &unk_1BE0F3320);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  sub_1BD727B84();
  sub_1BD727D44(v15);
  sub_1BD728288(v6);
  sub_1BD0DE19C(v18, v12, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE19C(v15, v9, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE19C(v6, v3, &qword_1EBD51668, &unk_1BE0F3320);
  v19 = v23;
  sub_1BD0DE19C(v12, v23, &qword_1EBD3C0E8, &qword_1BE0C4010);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51670, &qword_1BE0F3330);
  sub_1BD0DE19C(v9, v19 + *(v20 + 48), &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE19C(v3, v19 + *(v20 + 64), &qword_1EBD51668, &unk_1BE0F3320);
  sub_1BD0DE53C(v6, &qword_1EBD51668, &unk_1BE0F3320);
  sub_1BD0DE53C(v15, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE53C(v18, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE53C(v3, &qword_1EBD51668, &unk_1BE0F3320);
  sub_1BD0DE53C(v9, &qword_1EBD3C0E8, &qword_1BE0C4010);
  return sub_1BD0DE53C(v12, &qword_1EBD3C0E8, &qword_1BE0C4010);
}
void sub_1BD65B028()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BBD4();
  v7 = [v6 webService];

  sub_1BE04BC34();
  v8 = sub_1BE04B9A4();
  (*(v3 + 8))(v5, v2);
  v9 = [objc_allocWithZone(PKPaymentCameraCaptureViewController) initWithWebService:v7 context:v8];

  if (v9)
  {
    [v9 setFlowItemDelegate_];
    [v9 configureForModalPresentation];
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    v11 = [v1 navigationController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 overrideUserInterfaceStyle];
    }

    else
    {
      v13 = [v1 overrideUserInterfaceStyle];
    }

    [v10 setOverrideUserInterfaceStyle_];
    [v1 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD65B2D4(unsigned __int8 *a1, char a2)
{
  v4 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v162 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v162 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v162 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v162 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v162 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v162 - v23;
  v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v30 = &v162 - v27;
  v31 = *a1;
  if (v31 > 9)
  {
    switch(v31)
    {
      case 0xAu:
        if ((a2 & 1) == 0)
        {
          goto LABEL_27;
        }

        v75 = *(v28 + 104);
        v76 = v26;
        v77 = v28;
        v75(v21, *MEMORY[0x1E69B80D8], v26, v29.n128_f64[0]);
        v78 = PKPassKitBundle();
        if (!v78)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v79 = v78;
        v163 = sub_1BE04B6F4();
        v81 = v80;

        v82 = *(v77 + 8);
        v82(v21, v76);
        (v75)(v18, *MEMORY[0x1E69B80D0], v76);
        v83 = PKPassKitCoreBundle();
        if (!v83)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v84 = v83;
        sub_1BE04B6F4();
        v33 = v85;

        v82(v18, v76);
        if (v81)
        {
          goto LABEL_37;
        }

        break;
      case 0xBu:
        if ((a2 & 1) == 0)
        {
          goto LABEL_27;
        }

        v86 = *(v28 + 104);
        v87 = v26;
        v88 = v28;
        v86(v15, *MEMORY[0x1E69B80D8], v26, v29.n128_f64[0]);
        v89 = PKPassKitBundle();
        if (!v89)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v90 = v89;
        v163 = sub_1BE04B6F4();
        v81 = v91;

        v92 = *(v88 + 8);
        v164 = v88 + 8;
        v92(v15, v87);
        v93 = sub_1BE052404();
        v94 = sub_1BE04BAF4();
        v95 = PKDeviceSpecificLocalizedStringKeyForKey(v93, v94 & 1);

        if (v95)
        {
          sub_1BE052434();
          v97 = v96;
        }

        else
        {
          v97 = 0x80000001BE12F470;
        }

        (v86)(v12, *MEMORY[0x1E69B80D0], v87);
        v136 = PKPassKitCoreBundle();
        if (!v136)
        {
          goto LABEL_51;
        }

        v137 = v136;
        sub_1BE04B6F4();
        v33 = v138;
        v97, v138, v139, v140, v141, v142, v143, v144;

        v92(v12, v87);
        if (v81)
        {
          goto LABEL_37;
        }

        break;
      case 0xCu:
        v34 = *MEMORY[0x1E69B80D8];
        v35 = *(v28 + 104);
        v36 = v26;
        v37 = v28;
        v35(v9, v34, v26, v29.n128_f64[0]);
        v38 = PKPassKitBundle();
        if (v38)
        {
          v39 = v38;
          v162 = sub_1BE04B6F4();
          v163 = v40;

          v41 = *(v37 + 8);
          v164 = v37 + 8;
          v41(v9, v36);
          v42 = sub_1BE052404();
          v43 = v165;
          v44 = sub_1BE04BAF4();
          v45 = PKDeviceSpecificLocalizedStringKeyForKey(v42, v44 & 1);

          if (v45)
          {
            sub_1BE052434();
            v47 = v46;

            (v35)(v6, v34, v36);
            v48 = PKPassKitBundle();
            if (v48)
            {
              v49 = v48;
              sub_1BE04B6F4();
              v51 = v50;
              v47, v50, v52, v53, v54, v55, v56, v57;

              v41(v6, v36);
              [v43 showCheckmarkAnimated_];
              v58 = v163;
              v59 = sub_1BE052404();
              v58, v60, v61, v62, v63, v64, v65, v66;
              v67 = sub_1BE052404();
              v51, v68, v69, v70, v71, v72, v73, v74;
              [v43 hideActivitySpinnerWithTitle:v59 subtitle:v67 animated:0];

              [v43 endUserInteraction];
              return;
            }

            goto LABEL_45;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      default:
LABEL_21:
        if ((a2 & 1) == 0)
        {
          goto LABEL_27;
        }

        v98 = *(v28 + 104);
        v99 = v26;
        v100 = v28;
        v98(&v162 - v27, *MEMORY[0x1E69B80D8], v26, v29);
        v101 = PKPassKitBundle();
        if (!v101)
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v102 = v101;
        v163 = sub_1BE04B6F4();
        v81 = v103;

        v104 = *(v100 + 8);
        v104(v30, v99);
        (v98)(v24, *MEMORY[0x1E69B80D0], v99);
        v105 = PKPassKitCoreBundle();
        if (!v105)
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          return;
        }

        v106 = v105;
        sub_1BE04B6F4();
        v33 = v107;

        v104(v24, v99);
        if (!v81)
        {
          break;
        }

LABEL_37:
        v32 = sub_1BE052404();
        v81, v145, v146, v147, v148, v149, v150, v151;
        if (v33)
        {
          goto LABEL_38;
        }

        goto LABEL_26;
    }

    v32 = 0;
    if (v33)
    {
      goto LABEL_38;
    }

LABEL_26:
    v108 = 0;
    goto LABEL_39;
  }

  if (v31 - 4 >= 5)
  {
    goto LABEL_21;
  }

  if (a2)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
LABEL_38:
    v108 = sub_1BE052404();
    v33, v152, v153, v154, v155, v156, v157, v158;
LABEL_39:
    v159 = v165;
    [v165 showActivitySpinnerWithTitle:v32 subtitle:v108];

    v160 = [v159 dockView];
    if (v160)
    {
      v161 = v160;
      [v160 setButtonsEnabled_];

      return;
    }

    goto LABEL_42;
  }

LABEL_27:
  v109 = v165;
  sub_1BD65A940();
  v111 = v110;
  v113 = v112;
  0, v110, v114, v112, v115, v116, v117, v118;
  v111, v119, v120, v121, v122, v123, v124, v125;
  if (v113)
  {
    v126 = sub_1BE052404();
    v113, v127, v128, v129, v130, v131, v132, v133;
  }

  else
  {
    v126 = 0;
  }

  [v109 hideActivitySpinnerWithTitle:0 subtitle:v126 animated:1];

  v134 = [v109 dockView];
  if (!v134)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v165 = v134;
  [v134 setButtonsEnabled_];
  v135 = v165;
}

void sub_1BD65BC00(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BAC4();
  v91 = *(v4 - 8);
  v92 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v83 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v83 - v18;
  v20 = [a1 hasLocalizedTitleAndMessage];
  v21 = MEMORY[0x1E69B80D8];
  if ((v20 & 1) == 0)
  {
    v85 = v10;
    v86 = v2;
    v89 = a1;
    v22 = *(v8 + 104);
    v88 = *MEMORY[0x1E69B80D8];
    v87 = v22;
    v22(v19);
    v23 = PKPassKitBundle();
    if (v23)
    {
      v24 = v23;
      sub_1BE04B6F4();
      v26 = v25;

      v84 = *(v8 + 8);
      v84(v19, v7);
      v27 = sub_1BE052404();
      v26, v28, v29, v30, v31, v32, v33, v34;
      v35 = v89;
      [v89 setLocalizedTitle_];

      v87(v15, v88, v7);
      v36 = PKPassKitBundle();
      if (v36)
      {
        v37 = v36;
        sub_1BE04B6F4();
        v39 = v38;

        v84(v15, v7);
        v40 = sub_1BE052404();
        v39, v41, v42, v43, v44, v45, v46, v47;
        [v35 setLocalizedMessage_];

        a1 = v35;
        v10 = v85;
        v2 = v86;
        v21 = MEMORY[0x1E69B80D8];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_5:
  sub_1BE04BC34();
  v48 = sub_1BE04BA54();
  (*(v91 + 8))(v6, v92);
  v49 = *v21;
  v50 = *(v8 + 104);
  if (v48)
  {
    v51 = v90;
    v50(v90, v49, v7);
    v52 = PKPassKitBundle();
    if (v52)
    {
      v53 = v52;
      v55 = sub_1BE04B6F4();
LABEL_10:
      v57 = v54;

      (*(v8 + 8))(v51, v7);
      sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
      v58 = swift_allocObject();
      v58[2] = v2;
      v59 = swift_allocObject();
      v59[2] = v2;
      v60 = v2;
      v61 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v55, v57, PKEdgeInsetsMake, 0, sub_1BD65C4DC, v58, sub_1BD65C4E4, v59);
      v57, v62, v63, v64, v65, v66, v67, v68;
      v58, v69, v70, v71, v72, v73, v74, v75;
      v59, v76, v77, v78, v79, v80, v81, v82;
      [v60 presentViewController:v61 animated:1 completion:0];

      return;
    }

    goto LABEL_13;
  }

  v50(v10, v49, v7);
  v56 = PKPassKitBundle();
  if (v56)
  {
    v53 = v56;
    v55 = sub_1BE04B6F4();
    v51 = v10;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_1BD65C16C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD81521C();
  }
}

void sub_1BD65C1C8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 fieldsModel];
    if (v4)
    {
      v5 = v4;
      sub_1BD8145A8(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BD65C260(id result, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = [v2 fieldsModel];
  if (!result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = sub_1BD9F46CC(a2, result, v5);

  v8 = *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator];
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects];
    *&v8[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = v7;
    v10 = v8;
    sub_1BE048C84();

    v9, v11, v12, v13, v14, v15, v16, v17;
  }

  [v2 _setPrimaryButtonEnabled_];
  result = [v2 noteFieldIdentifiersChanged];
  if (!v4)
  {
    goto LABEL_11;
  }

  v7, v18, v19, v20, v21, v22, v23, v24;

  return [v4 dismissViewControllerAnimated:1 completion:0];
}

id sub_1BD65C404(int a1, int a2, id a3)
{
  if (a3)
  {
    return [a3 dismissViewControllerAnimated:1 completion:0];
  }

  __break(1u);
  return result;
}

void sub_1BD65C504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v45 = a2;
  v4 = sub_1BE051F54();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BC84();
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  [objc_opt_self() recommendedCardImageSize];
  v13 = v12;
  v15 = v14;
  v16 = [objc_opt_self() sharedInstance];
  if (v16)
  {
    v17 = v16;
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v11;
    v55 = sub_1BD65DD20;
    v56 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1BD20815C;
    v54 = &block_descriptor_149;
    v19 = _Block_copy(&aBlock);
    v20 = v56;
    v21 = v10;
    v22 = v3;
    v23 = v11;
    v20, v24, v25, v26, v27, v28, v29, v30;
    [v17 snapshotWithPass:v21 size:v19 completion:{v13, v15}];
    _Block_release(v19);

    sub_1BD14BE3C();
    v31 = sub_1BE052D54();
    v32 = swift_allocObject();
    v33 = v45;
    v32[2] = v44;
    v32[3] = v33;
    v55 = sub_1BD214190;
    v56 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1BD126964;
    v54 = &block_descriptor_7_1;
    v34 = _Block_copy(&aBlock);
    sub_1BE048964();
    sub_1BE051F74();
    v50 = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v35 = v49;
    sub_1BE053664();
    sub_1BE052CE4();
    _Block_release(v34);

    (*(v48 + 8))(v6, v35);
    (*(v46 + 8))(v9, v47);
    v56, v36, v37, v38, v39, v40, v41, v42;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD65C8D0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  sub_1BE048C84();
  sub_1BE053504();
  v13 = v12;
  v12, v14, v15, v12, v16, v17, v18, v19;
  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_1BE048C84();
  sub_1BE053504();
  v21 = v20;
  v20, v22, v23, v20, v24, v25, v26, v27;
  if ((v21 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v28 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v28) = 1;
  }

  v29 = 4 << v28;
  v30 = a1;
  if ((a1 & 0xC) == 4 << v28)
  {
    v30 = sub_1BD65DD34(a1, a5, a6);
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v31 = v30 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v32 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v32 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v33 = (v32 << 16) | 7;
    LOBYTE(v34) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v32 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v32 < v30 >> 16)
  {
    goto LABEL_42;
  }

  v31 = sub_1BE0525D4();
  v59 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v59 = 7;
  }

  v33 = v59 | (v32 << 16);
  v34 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  v35 = a2;
  if ((a2 & 0xC) == 4 << v34)
  {
    v60 = v33;
    v35 = sub_1BD65DD34(a2, a5, a6);
    v33 = v60;
  }

  if ((v33 & 0xC) == v29)
  {
    v61 = v35;
    v33 = sub_1BD65DD34(v33, a5, a6);
    v35 = v61;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      v36 = (v33 >> 16) - (v35 >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v32 < v35 >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v32 >= v33 >> 16)
  {
    v36 = sub_1BE0525D4();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v38 = HIBYTE(a4) & 0xF;
        v39 = __OFADD__(v31, v38);
        v37 = v31 + v38;
        if (!v39)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v37 = v31 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v31, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v62 = v36;
    v63 = sub_1BE0525A4();
    v36 = v62;
    v39 = __OFADD__(v31, v63);
    v37 = v31 + v63;
    if (!v39)
    {
LABEL_21:
      v39 = __OFADD__(v37, v36);
      v40 = v37 + v36;
      if (!v39)
      {
        MEMORY[0x1BFB3F590](v40);
LABEL_23:
        sub_1BE052654();
        v42 = v41;
        sub_1BD65DE64();
        sub_1BE052564();
        v42, v43, v44, v45, v46, v47, v48, v49;
        sub_1BE052564();
        sub_1BD65CBE4(a2, a5, a6);
        v51 = v50;
        sub_1BE052564();
        v51, v52, v53, v54, v55, v56, v57, v58;
        return;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

unint64_t sub_1BD65CBE4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1BE052654();
  }

  __break(1u);
  return result;
}

void sub_1BD65CC30()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04A264();
  v180 = *(v3 - 8);
  v181 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v179 = &v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v183 = *(v5 - 8);
  v184 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v182 = &v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1BE04B8D4();
  v7 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v9 = &v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v178 - v11;
  v185 = sub_1BE04B944();
  v13 = *(v185 - 8);
  v14 = MEMORY[0x1EEE9AC00](v185);
  v16 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194.receiver = v1;
  v194.super_class = ObjectType;
  objc_msgSendSuper2(&v194, sel_loadView, v14);
  v17 = sub_1BE04BC84();
  v187 = sub_1BE04BD34();
  v188 = v18;
  v190 = [objc_opt_self() sharedInstance];
  v19 = [v1 explanationView];
  if (!v19)
  {
    __break(1u);
    goto LABEL_42;
  }

  v20 = v19;
  v21 = [objc_opt_self() systemBackgroundColor];
  v191 = v20;
  [v20 setTopBackgroundColor_];

  [v1 setShowDoneButton_];
  [v1 setShowCancelButton_];
  [v1 setPrivacyLinkController_];
  v189 = v17;
  v22 = [v17 devicePrimaryPaymentApplication];
  if (!v22)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v23 = v22;
  v24 = [v22 supportsUWB];

  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v13 + 8))(v16, v185);
  v25 = v186;
  (*(v7 + 104))(v9, *MEMORY[0x1E69B7F80], v186);
  v26 = sub_1BE04B8C4();
  v27 = *(v7 + 8);
  v27(v9, v25);
  v27(v12, v25);
  v28 = sub_1BE04BCD4();
  v29 = v188;
  if (v28)
  {
    v31 = v190;
    v30 = v191;
    v32 = v187;
    if (v24)
    {
      if (v26)
      {
        v33 = 0xD000000000000024;
      }

      else
      {
        v33 = 0xD00000000000002BLL;
      }

      if (v26)
      {
        v34 = "ADDED_FACEID_UWB_PHONE_BODY";
      }

      else
      {
        v34 = "ADDED_WATCH_NFC_BODY";
      }

      goto LABEL_30;
    }

    if (v26)
    {
      v34 = "ADDED_FACEID_PHONE_ONLY_BODY";
      v33 = 0xD000000000000024;
      goto LABEL_30;
    }

    IsAvailable = PKPearlIsAvailable();
    v35 = 0xD00000000000002CLL;
    v36 = 0xD00000000000002DLL;
    v37 = "ADDED_TOUCHID_PHONE_ONLY_BODY";
    v38 = "CAR_KEY_ADDED_WATCH_UWB_BODY";
    v39 = IsAvailable == 0;
    goto LABEL_18;
  }

  v31 = v190;
  v30 = v191;
  v32 = v187;
  if (v24)
  {
    v35 = 0xD00000000000001CLL;
    v36 = 0xD000000000000030;
    v37 = "_PHONE_ONLY_BODY";
    v38 = "CAR_KEY_ADDED_WATCH_NFC_BODY";
    v39 = (v26 & 1) == 0;
LABEL_18:
    if (v39)
    {
      v33 = v36;
    }

    else
    {
      v33 = v35;
    }

    if (v39)
    {
      v34 = v38;
    }

    else
    {
      v34 = v37;
    }

    goto LABEL_30;
  }

  if (v26)
  {
    v34 = "CEID_PHONE_ONLY_BODY";
    v33 = 0xD00000000000001CLL;
  }

  else
  {
    v41 = PKPearlIsAvailable();
    if (v41)
    {
      v33 = 0xD000000000000024;
    }

    else
    {
      v33 = 0xD000000000000025;
    }

    if (v41)
    {
      v34 = "CAR_KEY_ADDED_NFC_PERF_WARNING";
    }

    else
    {
      v34 = "onViewController";
    }
  }

LABEL_30:
  sub_1BD65D570(0xD000000000000013, 0x80000001BE132F10, v31, v32, v29);
  v43 = v42;
  v44 = sub_1BE052404();
  v43, v45, v46, v47, v48, v49, v50, v51;
  [v30 setTitleText_];

  v52 = [v30 dockView];
  if (!v52)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v53 = v52;
  v54 = [v52 primaryButton];
  if (!v54)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v55 = v54;
  sub_1BD65D570(0x45554E49544E4F43, 0xE800000000000000, v31, v32, v29);
  v57 = v56;
  v58 = sub_1BE052404();
  v57, v59, v60, v61, v62, v63, v64, v65;
  [v55 setTitle:v58 forStates:0];

  v66 = [v53 footerView];
  if (!v66)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v67 = v66;
  [v66 setSetUpLaterButton_];

  v68 = sub_1BD65D570(v33, v34 | 0x8000000000000000, v31, v32, v29);
  v69 = v29;
  v71 = v70;
  (v34 | 0x8000000000000000), v70, v72, v73, v74, v75, v76, v77;
  v78 = v189;
  v79 = [v189 devicePrimaryPaymentApplication];
  if (!v79)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v87 = v79;
  v69, v80, v81, v82, v83, v84, v85, v86;
  v88 = [v87 blockingSupportedUWBDueToHardware];

  if (!v88)
  {
LABEL_40:
    v170 = sub_1BE052404();
    v71, v171, v172, v173, v174, v175, v176, v177;
    [v30 setBodyText_];

    return;
  }

  v90 = v182;
  v89 = v183;
  v91 = v184;
  (*(v183 + 104))(v182, *MEMORY[0x1E69B8038], v184);
  v92 = PKPassKitBundle();
  if (v92)
  {
    v93 = v92;
    v188 = sub_1BE04B6F4();
    v95 = v94;

    (*(v89 + 8))(v90, v91);
    v192 = v68;
    v193 = v71;
    sub_1BE048C84();
    v96 = v179;
    sub_1BE04A254();
    sub_1BD0DDEBC();
    v97 = sub_1BE053544();
    v99 = v98;
    LOBYTE(v93) = v100;
    (*(v180 + 8))(v96, v181);
    v71, v101, v102, v103, v104, v105, v106, v107;
    if (v93)
    {
      v71, v108, v109, v110, v111, v112, v113, v114;
      v192 = 32;
      v193 = 0xE100000000000000;
      MEMORY[0x1BFB3F610](v188, v95);
      v95, v115, v116, v117, v118, v119, v120, v121;
      v71 = v193;
    }

    else
    {
      v122 = sub_1BE052654();
      v124 = v123;
      v126 = v125;
      v187 = v97;
      v128 = v127;
      v192 = 32;
      v193 = 0xE100000000000000;
      MEMORY[0x1BFB3F610](v188, v95);
      v95, v129, v130, v131, v132, v133, v134, v135;
      v136 = v122;
      v137 = v124;
      v78 = v189;
      v31 = v190;
      v138 = MEMORY[0x1BFB3F570](v136, v137, v126, v128);
      v140 = v139;
      v128, v139, v141, v142, v143, v144, v145, v146;
      MEMORY[0x1BFB3F610](v138, v140);
      v140, v147, v148, v149, v150, v151, v152, v153;
      v154 = v193;
      sub_1BD65C8D0(v187, v99, v192, v193, v68, v71);
      v156 = v155;
      v154, v155, v157, v158, v159, v160, v161, v162;
      v71, v163, v164, v165, v166, v167, v168, v169;
      v71 = v156;
    }

    v30 = v191;
    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
}

id sub_1BD65D570(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE052404();
  if (a5)
  {
    a5 = sub_1BE052404();
  }

  v12 = [a3 provisioningString:v11 templateIdentifier:a5];

  if (v12)
  {
    v13 = sub_1BE052434();

    return v13;
  }

  else
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69B8038], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();

      (*(v8 + 8))(v10, v7);
      return v16;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD65D800(void *a1, void *a2, void *a3)
{
  v6 = sub_1BE051F54();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BE051FA4();
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1BD65DD28;
  v30 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_13_5;
  v14 = _Block_copy(aBlock);
  v15 = v30;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v15, v19, v20, v21, v22, v23, v24, v25;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v28 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v27);
}

void sub_1BD65DA9C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [objc_allocWithZone(PKHeroCardExplanationHeaderView) initWithImage_];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v5;
  [v5 setHideBackground_];
  [v8 setPadding_];
  v6 = [a2 explanationView];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 setHeroView_];

  dispatch_group_leave(a3);
}

unint64_t sub_1BD65DD34(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BE0525F4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1BFB3F650](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1BD65DDB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningCarEducationViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = Strong + OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(Strong, &off_1F3B9B0B0, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD65DE64()
{
  result = qword_1EBD4E6F0;
  if (!qword_1EBD4E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E6F0);
  }

  return result;
}

unint64_t sub_1BD65DECC()
{
  result = qword_1EBD4E700;
  if (!qword_1EBD4E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E700);
  }

  return result;
}

uint64_t sub_1BD65DF20(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD041C28;

  return sub_1BD65DFD4();
}

uint64_t sub_1BD65DFF0()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 passesOfType_];
    sub_1BD102A4C();
    v4 = sub_1BE052744();

    v51 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      goto LABEL_48;
    }

    v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v13 = MEMORY[0x1E69E7CC0];
    v50 = v0;
    if (v12)
    {
      v48 = v2;
      v14 = 0;
      v0 = (v4 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1BFB40900](v14, v4);
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v15 = *(v4 + 8 * v14 + 32);
        }

        v16 = v15;
        v2 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v12 = sub_1BE053704();
          goto LABEL_4;
        }

        if ([v15 passType])
        {
          v17 = [v16 secureElementPass];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 isAccessPass];

            if (v19 & 1) != 0 && ([v16 supportsFeatureForCurrentDevice_])
            {
LABEL_18:
              sub_1BE0538C4();
              sub_1BE0538F4();
              sub_1BE053904();
              sub_1BE0538D4();
              goto LABEL_7;
            }
          }
        }

        else if (PKBarcodePassSharingEnabled())
        {
          goto LABEL_18;
        }

LABEL_7:
        ++v14;
        if (v2 == v12)
        {
          v0 = v50;
          v20 = v51;
          v2 = v48;
          v13 = MEMORY[0x1E69E7CC0];
          goto LABEL_25;
        }
      }
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v4, v5, v6, v7, v8, v9, v10, v11;
    v0[2] = v20;
    v23 = [v2 passesOfStyles_];
    if (!v23)
    {
      goto LABEL_57;
    }

    v24 = v23;
    v2 = sub_1BE052744();

    v51 = v13;
    if (v2 >> 62)
    {
      v32 = sub_1BE053704();
      if (v32)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v32 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
LABEL_28:
        v49 = v20;
        v4 = 0;
        v0 = (v2 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x1BFB40900](v4, v2);
          }

          else
          {
            if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v33 = *(v2 + 8 * v4 + 32);
          }

          v34 = v33;
          v35 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_46;
          }

          if ([v33 passType])
          {
            v36 = [v34 secureElementPass];
            if (v36)
            {
              v37 = v36;
              v38 = [v36 isAccessPass];

              if (v38 & 1) != 0 && ([v34 supportsFeatureForCurrentDevice_])
              {
LABEL_41:
                sub_1BE0538C4();
                sub_1BE0538F4();
                sub_1BE053904();
                sub_1BE0538D4();
                goto LABEL_30;
              }
            }
          }

          else if (PKBarcodePassSharingEnabled())
          {
            goto LABEL_41;
          }

LABEL_30:
          ++v4;
          if (v35 == v32)
          {
            v0 = v50;
            v39 = v51;
            v20 = v49;
            goto LABEL_51;
          }
        }
      }
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_51:
    v2, v25, v26, v27, v28, v29, v30, v31;
    if ((v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
    {
      if (sub_1BE053704() > 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v39 + 16) > 0)
    {
LABEL_54:
      sub_1BDA7AB50(v39);
      v20 = v0[2];
LABEL_57:
      v0[4] = v20;
      v47 = swift_task_alloc();
      v0[5] = v47;
      *v47 = v0;
      v47[1] = sub_1BD65E4DC;

      return sub_1BD0391EC(v20, 1);
    }

    v39, v40, v41, v42, v43, v44, v45, v46;
    goto LABEL_57;
  }

  sub_1BE0484F4();
  sub_1BD1351C0();
  swift_allocError();
  sub_1BE0484E4();
  swift_willThrow();
  v21 = v0[1];

  return v21();
}

uint64_t sub_1BD65E4DC(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  v2, v3, v4, v5, v6, v7, v8, v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD65E5FC, 0, 0);
}

uint64_t sub_1BD65E5FC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

id sub_1BD65E674(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  [v4 setDirectionalLayoutMargins_];
  [v4 setSeparatorInset_];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  sub_1BE048964();
  v11 = a1;
  sub_1BE048964();
  sub_1BE052C94();
  v9, v12, v13, v14, v15, v16, v17, v18;

  return [v4 setNeedsUpdateConfiguration];
}

void sub_1BD65E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E730, &qword_1BE0EBEA8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v18[-4] = a4;
    LOBYTE(v18[-3]) = a5 & 1;
    v18[-2] = a6;
    v18[-1] = a7;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E738, &qword_1BE0EBEB0);
    sub_1BD6644C4();
    sub_1BE04FCE4();
    sub_1BE0501C4();
    v18[3] = v11;
    v18[4] = sub_1BD0DE4F4(&qword_1EBD4E750, &qword_1EBD4E730, &qword_1BE0EBEA8, MEMORY[0x1E697C858]);
    __swift_allocate_boxed_opaque_existential_1(v18);
    sub_1BE04FCD4();
    (*(v12 + 8))(v14, v11);
    MEMORY[0x1BFB3FD10](v18);
  }
}

uint64_t sub_1BD65E99C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BE051CE4();
  sub_1BE04EE54();
  *&v12[71] = v17;
  *&v12[55] = v16;
  *&v12[23] = v14;
  *&v12[7] = v13;
  *&v12[87] = v18;
  *&v12[103] = v19;
  *&v12[39] = v15;
  *(a5 + 97) = *&v12[64];
  *(a5 + 113) = *&v12[80];
  *(a5 + 129) = *&v12[96];
  *(a5 + 33) = *v12;
  *(a5 + 49) = *&v12[16];
  *(a5 + 65) = *&v12[32];
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
  *(a5 + 144) = *(&v19 + 1);
  *(a5 + 81) = *&v12[48];
  v10 = a1;

  return sub_1BE048964();
}

id PKPaymentFieldTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = sub_1BE052404();
    a3, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v7];

  return v15;
}

id PKPaymentFieldTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v6 = sub_1BE052404();
    a3, v7, v8, v9, v10, v11, v12, v13;
  }

  else
  {
    v6 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for PKPaymentFieldTableViewCell();
  v14 = objc_msgSendSuper2(&v16, sel_initWithStyle_reuseIdentifier_, a1, v6);

  return v14;
}

id PKPaymentFieldTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKPaymentFieldTableViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PKPaymentFieldTableViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1BD65EF9C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v145 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E760, &qword_1BE0EBF50);
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v116 - v3;
  v126 = type metadata accessor for PaymentSetupFieldEntryDateView(0);
  MEMORY[0x1EEE9AC00](v126);
  v122 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v116 - v6;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E768, &qword_1BE0EBF58);
  MEMORY[0x1EEE9AC00](v125);
  v119 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v116 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E770, &qword_1BE0EBF60);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v12 = &v116 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E778, &qword_1BE0EBF68);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v116 - v13;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E780, &qword_1BE0EBF70);
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v116 - v14;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E788, &qword_1BE0EBF78);
  MEMORY[0x1EEE9AC00](v134);
  v16 = &v116 - v15;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E790, &qword_1BE0EBF80);
  MEMORY[0x1EEE9AC00](v140);
  v136 = &v116 - v17;
  v18 = sub_1BE04BD74();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v121 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v116 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E798, &qword_1BE0EBF88);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v144 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v143 = &v116 - v27;
  v28 = *a1;
  v29 = [v28 localizedDisplayName];
  v128 = v12;
  v123 = v7;
  v130 = v18;
  v129 = v19;
  if (v29)
  {
    v30 = v29;
    v31 = sub_1BE052434();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  v151 = v31;
  v152 = v33;
  sub_1BD0DDEBC();
  v34 = sub_1BE0506C4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = sub_1BE050324();
  v138 = sub_1BE0505F4();
  v137 = v42;
  v44 = v43;
  v139 = v45;
  v41, v42, v43, v45, v46, v47, v48, v49;
  sub_1BD0DDF10(v34, v36, (v38 & 1), v50, v51, v52, v53, v54);
  v40, v55, v56, v57, v58, v59, v60, v61;
  sub_1BE051CE4();
  sub_1BE04E5E4();
  v62 = v44 & 1;
  v162 = v44 & 1;
  v63 = [v28 fieldType];

  if (v63 != 3)
  {
    if (v63 == 2)
    {
      objc_opt_self();
      v78 = swift_dynamicCastObjCClass();
      if (v78)
      {
        v79 = v78;
        v80 = [v28 isReadonly];
        v81 = *(a1 + 16);
        v82 = *(a1 + 24);
        v83 = *(a1 + 32);
        v84 = v28;
        sub_1BE048964();
        if (v80)
        {
          v122 = v84;
          sub_1BD660180(v79, v81, v82, v83, v123);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
          v117 = swift_allocObject();
          *(v117 + 16) = xmmword_1BE0B7020;
          v85 = v129;
          v86 = v121;
          v87 = v130;
          (*(v129 + 104))(v121, *MEMORY[0x1E69B80D0], v130);
          result = PKPassKitBundle();
          v88 = v128;
          if (!result)
          {
            goto LABEL_26;
          }

          v89 = result;
          v116 = sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
          sub_1BE04B6F4();

          (*(v85 + 8))(v86, v87);
          *(swift_allocObject() + 16) = v79;
          v90 = v122;
          v91 = sub_1BE0530B4();
          v92 = v117;
          *(v117 + 32) = v91;
          v93 = v119;
          sub_1BD664B7C(v123, v119);
          *(v93 + *(v125 + 36)) = v92;
          v94 = v120;
          sub_1BD0DE204(v93, v120, &qword_1EBD4E768, &qword_1BE0EBF58);
          sub_1BD0DE19C(v94, v127, &qword_1EBD4E768, &qword_1BE0EBF58);
          swift_storeEnumTagMultiPayload();
          sub_1BD6649F8();
          sub_1BD6651E0(&qword_1EBD4E800, type metadata accessor for PaymentSetupFieldEntryDateView, &unk_1BE0EC0B0);
          sub_1BE04F9A4();

          sub_1BD0DE53C(v94, &qword_1EBD4E768, &qword_1BE0EBF58);
        }

        else
        {
          v104 = v122;
          sub_1BD660180(v79, v81, v82, v83, v122);
          sub_1BD664AB4(v104, v127);
          swift_storeEnumTagMultiPayload();
          sub_1BD6649F8();
          sub_1BD6651E0(&qword_1EBD4E800, type metadata accessor for PaymentSetupFieldEntryDateView, &unk_1BE0EC0B0);
          v88 = v128;
          sub_1BE04F9A4();

          sub_1BD664B18(v104);
        }

        v103 = v133;
        sub_1BD0DE204(v88, v133, &qword_1EBD4E770, &qword_1BE0EBF60);
        v102 = 0;
      }

      else
      {

        v102 = 1;
        v103 = v133;
      }

      (*(v131 + 56))(v103, v102, 1, v132);
      sub_1BD0DE19C(v103, v16, &qword_1EBD4E778, &qword_1BE0EBF68);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E7B0, &qword_1BE0EBF90);
      sub_1BD6648C0(&qword_1EBD4E7A8, &qword_1EBD4E7B0, &qword_1BE0EBF90, sub_1BD664700);
      sub_1BD6648C0(&qword_1EBD4E7E8, &qword_1EBD4E778, &qword_1BE0EBF68, sub_1BD66493C);
      v105 = v136;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v105, v142, &qword_1EBD4E790, &qword_1BE0EBF80);
      swift_storeEnumTagMultiPayload();
      sub_1BD66461C();
      v95 = v143;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v105, &qword_1EBD4E790, &qword_1BE0EBF80);
      sub_1BD0DE53C(v103, &qword_1EBD4E778, &qword_1BE0EBF68);
      goto LABEL_24;
    }

    if (v63 != 1)
    {

      swift_storeEnumTagMultiPayload();
      sub_1BD66461C();
      v95 = v143;
      sub_1BE04F9A4();
LABEL_24:
      v106 = v144;
      sub_1BD0DE19C(v95, v144, &qword_1EBD4E798, &qword_1BE0EBF88);
      v107 = v138;
      *&v146 = v138;
      v108 = v137;
      *(&v146 + 1) = v137;
      LOBYTE(v147) = v62;
      *(&v147 + 1) = *v161;
      DWORD1(v147) = *&v161[3];
      v109 = v62;
      v110 = v139;
      *(&v147 + 1) = v139;
      v111 = v159;
      v149 = v159;
      v148 = v158;
      v112 = v160;
      v150 = v160;
      v113 = v145;
      v145[2] = v158;
      v113[3] = v111;
      v113[4] = v112;
      v114 = v147;
      *v113 = v146;
      v113[1] = v114;
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E808, &qword_1BE0EBFA8);
      sub_1BD0DE19C(v106, v113 + *(v115 + 48), &qword_1EBD4E798, &qword_1BE0EBF88);
      sub_1BD0DE19C(&v146, &v151, &unk_1EBD4E810, qword_1BE0EBFB0);
      sub_1BD0DE53C(v95, &qword_1EBD4E798, &qword_1BE0EBF88);
      sub_1BD0DE53C(v106, &qword_1EBD4E798, &qword_1BE0EBF88);
      v151 = v107;
      v152 = v108;
      LOBYTE(v153) = v109;
      *(&v153 + 1) = *v161;
      HIDWORD(v153) = *&v161[3];
      v154 = v110;
      v155 = v158;
      v156 = v159;
      v157 = v160;
      return sub_1BD0DE53C(&v151, &unk_1EBD4E810, qword_1BE0EBFB0);
    }
  }

  objc_opt_self();
  v64 = swift_dynamicCastObjCClass();
  v118 = v44 & 1;
  if (!v64)
  {

    v96 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = -1;
LABEL_19:
    *v16 = v96;
    *(v16 + 1) = v97;
    *(v16 + 2) = v98;
    *(v16 + 3) = v99;
    *(v16 + 4) = v64;
    v16[40] = v100;
    swift_storeEnumTagMultiPayload();
    sub_1BD664BE0(v96, v97, v98, v99, v64, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E7B0, &qword_1BE0EBF90);
    sub_1BD6648C0(&qword_1EBD4E7A8, &qword_1EBD4E7B0, &qword_1BE0EBF90, sub_1BD664700);
    sub_1BD6648C0(&qword_1EBD4E7E8, &qword_1EBD4E778, &qword_1BE0EBF68, sub_1BD66493C);
    v101 = v136;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v101, v142, &qword_1EBD4E790, &qword_1BE0EBF80);
    swift_storeEnumTagMultiPayload();
    sub_1BD66461C();
    v95 = v143;
    sub_1BE04F9A4();
    sub_1BD664C64(v96, v97, v98, v99, v64, v100);
    sub_1BD664C64(v96, v97, v98, v99, v64, v100);
    sub_1BD0DE53C(v101, &qword_1EBD4E790, &qword_1BE0EBF80);
    v62 = v118;
    goto LABEL_24;
  }

  v65 = [v28 isReadonly];
  v66 = *(a1 + 8);
  v67 = *(a1 + 16);
  v68 = *(a1 + 24);
  if (!v65)
  {
    *&v146 = v64;
    *(&v146 + 1) = v66;
    *&v147 = v67;
    *(&v147 + 1) = v68;
    *&v148 = 0;
    BYTE8(v148) = 1;
    sub_1BE048964();
    goto LABEL_18;
  }

  v132 = *(a1 + 16);
  v133 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1BE0B7020;
  v70 = v129;
  v71 = v130;
  (*(v129 + 104))(v23, *MEMORY[0x1E69B80D0], v130);
  sub_1BE048964();
  result = PKPassKitBundle();
  if (result)
  {
    v73 = result;
    v131 = sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
    v128 = sub_1BE04B6F4();
    v127 = v74;

    (*(v70 + 8))(v23, v71);
    v75 = swift_allocObject();
    v76 = *(a1 + 16);
    *(v75 + 16) = *a1;
    *(v75 + 32) = v76;
    *(v75 + 48) = *(a1 + 32);
    v77 = v28;
    sub_1BE048964();
    *(v69 + 32) = sub_1BE0530B4();
    *&v146 = v64;
    *(&v146 + 1) = v133;
    *&v147 = v132;
    *(&v147 + 1) = v68;
    *&v148 = v69;
    BYTE8(v148) = 0;
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E7D0, &qword_1BE0EBFA0);
    sub_1BD66478C();
    sub_1BD664818();
    sub_1BE04F9A4();
    v96 = v151;
    v97 = v152;
    v98 = v153;
    v99 = v154;
    v64 = v155;
    v100 = BYTE8(v155);
    sub_1BD664BF8(v151, v152, v153, v154, v155, SBYTE8(v155));
    goto LABEL_19;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD660180@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, void (*a3)(char *, void, uint64_t)@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v116) = a4;
  v112 = a2;
  v113 = a3;
  v111 = a1;
  v117 = sub_1BE04AF64();
  v110 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v103 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v97 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v114 = &v97 - v10;
  v109 = sub_1BE04B2D4();
  v118 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04B2F4();
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v97 - v16;
  v18 = sub_1BE04B104();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PaymentSetupFieldEntryDateView(0);
  v23 = a5 + v22[10];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830, &unk_1BE0EBFE0) + 48);
  (*(v19 + 104))(v21, *MEMORY[0x1E6969868], v18);
  sub_1BE04B114();
  (*(v19 + 8))(v21, v18);
  sub_1BE04AFF4();
  v25 = sub_1BE04B0F4();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v17, v23 + v24, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  v100 = v23;
  sub_1BE04B284();
  v27 = a5 + v22[11];
  v119 = 0;
  v120 = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  sub_1BE051694();
  v29 = v122;
  v30 = v123;
  *v27 = v121;
  *(v27 + 8) = v29;
  v99 = v27;
  v97 = v30;
  *(v27 + 16) = v30;
  v31 = a5 + v22[12];
  v119 = 0;
  v120 = 1;
  v101 = v28;
  sub_1BE051694();
  v32 = v122;
  v33 = v123;
  *v31 = v121;
  *(v31 + 8) = v32;
  v102 = v31;
  v98 = v33;
  *(v31 + 16) = v33;
  v35 = v111;
  v34 = v112;
  *a5 = v111;
  *(a5 + 8) = v34;
  *(a5 + 16) = v113;
  *(a5 + 24) = v116;
  v36 = objc_allocWithZone(MEMORY[0x1E696AB78]);
  v37 = v35;
  v38 = [v36 init];
  v39 = [v37 calendar];
  sub_1BE04B1F4();

  v40 = sub_1BE04B1D4();
  v105 = v38;
  [v38 setCalendar_];

  v41 = *MEMORY[0x1E6969A68];
  v42 = v118;
  v43 = *(v118 + 104);
  v116 = v118 + 104;
  LODWORD(v112) = v41;
  v44 = v109;
  v113 = v43;
  v43(v12);
  v45 = v114;
  sub_1BE04AEF4();
  v46 = sub_1BE04B2E4();
  v47 = v110;
  v48 = v110 + 8;
  v111 = *(v110 + 8);
  v111(v45, v117);
  v49 = *(v42 + 8);
  v118 = v42 + 8;
  v49(v12, v44);
  v108 = a5;
  *(a5 + 48) = v46;
  v50 = [v37 currentValue];

  v51 = MEMORY[0x1E6969A78];
  if (v50)
  {
    v52 = v103;
    sub_1BE04AEE4();

    v53 = *(v47 + 32);
    v54 = v104;
    v53(v104, v52, v117);
    v55 = *v51;
    v110 = v48;
    v56 = v49;
    v57 = v113;
    v113(v12, v55, v44);
    v58 = sub_1BE04B2E4();
    v56(v12, v44);
    v119 = v58;
    v120 = 0;
    sub_1BE051694();
    v97, v59, v60, v61, v62, v63, v64, v65;
    v66 = v122;
    v67 = v123;
    v68 = v99;
    *v99 = v121;
    *(v68 + 8) = v66;
    v68[2] = v67;
    v57(v12, v112, v44);
    v49 = v56;
    v69 = sub_1BE04B2E4();
    v56(v12, v44);
    v119 = v69;
    v120 = 0;
    sub_1BE051694();
    v111(v54, v117);
    v98, v70, v71, v72, v73, v74, v75, v76;
    v77 = v122;
    v78 = v123;
    v79 = v102;
    *v102 = v121;
    *(v79 + 8) = v77;
    v79[2] = v78;
  }

  v80 = v112;
  v81 = v113;
  (v113)(v12);
  v82 = v114;
  sub_1BE04AEF4();
  v83 = v115;
  v84 = sub_1BE04B2E4();
  v111(v82, v117);
  result = (v49)(v12, v44);
  v86 = v84 - 10;
  if (__OFSUB__(v84, 10))
  {
    __break(1u);
    goto LABEL_8;
  }

  v87 = __OFADD__(v84, 31);
  v88 = v84 + 31;
  if (v87)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v88 >= v86)
  {
    v81(v12, v80, v44);
    v89 = v81;
    v90 = v105;
    sub_1BD66276C(v12, v86, v88, 0, 2038004089, 0xE400000000000000, v83, v105);
    v92 = v91;
    v49(v12, v44);
    v93 = v44;
    v94 = v108;
    *(v108 + 40) = v92;
    v89(v12, *MEMORY[0x1E6969A78], v93);
    sub_1BD66276C(v12, 0, 0, 1, 19532, 0xE200000000000000, v83, v90);
    v96 = v95;

    v49(v12, v93);
    result = (*(v106 + 8))(v83, v107);
    *(v94 + 32) = v96;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1BD660A9C(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() generalPasteboard];
  v4 = [a2 displayString];
  [v3 setString_];
}

void sub_1BD660B30(uint64_t a1, id *a2)
{
  v3 = [objc_opt_self() generalPasteboard];
  if ([*a2 currentValue] && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E820, &unk_1BE0EBFD0), (swift_dynamicCast() & 1) != 0))
  {
    v4 = sub_1BE052404();
    v12, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = 0;
  }

  [v3 setString_];
}

id sub_1BD660C14@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v8 = *(v2 + 32);
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E758, &qword_1BE0EBF48);
  return sub_1BD65EF9C(v7, (a2 + *(v5 + 44)));
}

uint64_t sub_1BD660CAC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field;
  v5 = *(v2 + OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field);
  v6 = [a1 text];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE052434();
    v10 = v9;

    v37 = v8;
    v38 = v10;
    v35 = 41154;
    v36 = 0xA200000000000000;
    v33 = 0;
    v34 = 0xE000000000000000;
    v31 = sub_1BD0DDEBC();
    v32 = v31;
    v29 = MEMORY[0x1E69E6158];
    v30 = v31;
    sub_1BE053584();
    v12 = v11;
    v10, v11, v13, v14, v15, v16, v17, v18;
    v19 = sub_1BE052404();
    v12, v20, v21, v22, v23, v24, v25, v26;
  }

  else
  {
    v19 = 0;
  }

  [v5 setCurrentValue_];

  swift_unknownObjectRelease();
  v27 = [*(v2 + v4) setSource_];
  return (*(v2 + OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_onValueChange))(v27);
}

void sub_1BD660EF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return;
  }

  v12 = OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field;
  v13 = &selRef_initWithVerificationController_fieldsModel_;
  if ([*(v5 + OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field) maxLength] < 1)
  {
    goto LABEL_14;
  }

  v14 = [a1 text];
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v14;
  v140 = a1;
  sub_1BE052434();
  v141 = v16;
  v17 = [*(v5 + v12) maxLength];
  v142 = a4;
  v18 = v12;
  v19 = sub_1BE052404();
  v20 = [v15 stringByReplacingCharactersInRange:a2 withString:{a3, v19}];

  sub_1BE052434();
  v22 = v21;

  v23 = sub_1BE052534();
  v22, v24, v25, v26, v27, v28, v29, v30;
  if (v17 >= v23)
  {
    v141, v31, v32, v33, v34, v35, v36, v37;

    v12 = v18;
LABEL_13:
    v13 = &selRef_initWithVerificationController_fieldsModel_;
    goto LABEL_14;
  }

  v13 = &selRef_initWithVerificationController_fieldsModel_;
  v12 = v18;
  if ([*(v5 + v18) isNumeric])
  {
    v141, v38, v39, v40, v41, v42, v43, v44;

    goto LABEL_14;
  }

  v68 = [*(v5 + v18) maxLength];
  v69 = [v15 length];

  v77 = &v69[-a3];
  if (__OFSUB__(v69, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v78 = v68 - v77;
  if (__OFSUB__(v68, v77))
  {
LABEL_35:
    __break(1u);
    return;
  }

  if (v78 < 1)
  {
    v141, v70, v71, v72, v73, v74, v75, v76;
    goto LABEL_13;
  }

  v139 = v18;
  sub_1BE048C84();
  v79 = sub_1BD683A34(v78, v142, a5);
  v81 = v80;
  v83 = v82;
  v85 = v84;
  a5, v80, v82, v84, v86, v87, v88, v89;
  MEMORY[0x1BFB3F570](v79, v81, v83, v85);
  v91 = v90;
  v85, v90, v92, v93, v94, v95, v96, v97;
  sub_1BE052B64();
  LOBYTE(v81) = v98;
  v141, v99, v98, v100, v101, v102, v103, v104;
  if (v81)
  {
    v91, v105, v106, v107, v108, v109, v110, v111;
    v12 = v18;
    goto LABEL_13;
  }

  v112 = [v140 text];
  if (v112)
  {
    v120 = v5;
    v121 = v112;
    sub_1BE052434();
    v123 = v122;

    sub_1BD664408();
    sub_1BE0524F4();
    if (v123)
    {
      v124 = sub_1BE052404();
      v123, v125, v126, v127, v128, v129, v130, v131;
    }

    else
    {
      v124 = 0;
    }

    v5 = v120;
    v12 = v18;
    [v140 setText_];
    v91, v132, v133, v134, v135, v136, v137, v138;
  }

  else
  {
    v91, v113, v114, v115, v116, v117, v118, v119;
    [v140 setText_];
    v12 = v18;
  }

  v13 = &selRef_initWithVerificationController_fieldsModel_;
LABEL_14:
  if ([*(v5 + v12) v13[363]])
  {
    v143 = a5;
    sub_1BE048C84();
    while (1)
    {
      sub_1BE052594();
      if (!v45)
      {
        break;
      }

      v52 = v45;
      sub_1BE0522A4();
      v54 = v53;
      v52, v53, v55, v56, v57, v58, v59, v60;
      if (v54)
      {
        v143, v61, v62, v63, v64, v65, v66, v67;
        return;
      }
    }

    v143, 0, v46, v47, v48, v49, v50, v51;
  }
}

id sub_1BD6613F8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1BD6614A4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9F0, &qword_1BE0EC278);
  sub_1BE04FF74();
  [v3 setDelegate_];

  sub_1BD665950(v3, v1, v2);
  return v3;
}

void sub_1BD661550(void *a1)
{
  v2 = *v1;
  sub_1BD665950(a1, *v1, *(v1 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9F0, &qword_1BE0EC278);
  sub_1BE04FF74();
  v3 = *&v5[OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field];
  *&v5[OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field] = v2;
  v4 = v2;
}

void *sub_1BD6615D0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = type metadata accessor for PaymentSetupFieldEntryTextFieldView.Coordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field] = v3;
  v8 = &v7[OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_onValueChange];
  *v8 = v5;
  *(v8 + 1) = v4;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = v3;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v11, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD661664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD664F64();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD6616C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD664F64();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD66172C(uint64_t a1)
{
  sub_1BD664F64();
  sub_1BE04F964();
  __break(1u);
}

void *sub_1BD661754@<X0>(id *a1@<X2>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = sub_1BE04B2D4();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830, &unk_1BE0EBFE0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for PaymentSetupFieldEntryDateView(0);
  v17 = a1 + *(v16 + 44);
  v18 = *v17;
  v19 = v17[8];
  v20 = *(v17 + 2);
  v35 = v18;
  v36 = v19;
  v37 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  result = sub_1BE0516A4();
  if (v34 == 1)
  {
    result = [*a1 currentValue];
    if (result)
    {
      v22 = result;
      sub_1BE04AEE4();

      (*(v10 + 32))(v15, v12, v9);
      sub_1BD0DE19C(a1 + *(v16 + 40), v8, &unk_1EBD4E830, &unk_1BE0EBFE0);
      v23 = *(v6 + 48);
      v25 = v30;
      v24 = v31;
      (*(v30 + 104))(v5, *MEMORY[0x1E6969A78], v31);
      v26 = sub_1BE04B2E4();
      (*(v25 + 8))(v5, v24);
      (*(v10 + 8))(v15, v9);
      v27 = sub_1BE04B0F4();
      (*(*(v27 - 8) + 8))(&v8[v23], v27);
      v28 = sub_1BE04B2F4();
      result = (*(*(v28 - 8) + 8))(v8, v28);
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = v33;
  }

  v29 = v32;
  *v32 = v26;
  *(v29 + 8) = 0;
  return result;
}

uint64_t sub_1BD661AC4(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PaymentSetupFieldEntryDateView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516B4();
  v7 = sub_1BD661B64();
  return (*(a6 + 8))(v7);
}

uint64_t sub_1BD661B64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v95 = v86 - v3;
  v4 = sub_1BE04AF64();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v89 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaymentSetupFieldEntryDateView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840, &unk_1BE0C73F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v86 - v14;
  v16 = sub_1BE04A474();
  v93 = *(v16 - 8);
  v94 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v92 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *v1;
  v19 = [v88 calendar];
  sub_1BE04B1F4();

  v20 = sub_1BE04B2F4();
  v21 = *(*(v20 - 8) + 56);
  v90 = v15;
  v21(v15, 0, 1, v20);
  v22 = sub_1BE04B3B4();
  v23 = *(*(v22 - 8) + 56);
  v91 = v12;
  v23(v12, 1, 1, v22);
  v24 = v1 + *(v6 + 48);
  v25 = *v24;
  v26 = v24[8];
  v27 = *(v24 + 2);
  v100 = v25;
  LOBYTE(v101) = v26;
  v102 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516A4();
  v86[1] = v8;
  v87 = v7;
  if (v104)
  {
    v86[0] = v6;
    v28 = MEMORY[0x1E69E85E0];
    sub_1BD664AB4(v1, v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1BE0528A4();
    v29 = sub_1BE052894();
    v30 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v28;
    sub_1BD664B7C(v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
    sub_1BD664AB4(v1, v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = sub_1BE052894();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v28;
    v6 = v86[0];
    sub_1BD664B7C(v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    sub_1BE051924();
    v34 = v100;
    v35 = v101;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E8, &qword_1BE0EC270);
    MEMORY[0x1BFB3E970](&v103, v36);
    v35, v37, v38, v39, v40, v41, v42, v43;
    v34, v44, v45, v46, v47, v48, v49, v50;
    v51 = v103;
  }

  else
  {
    v51 = v103;
    v104 = 0;
  }

  v52 = v1 + *(v6 + 44);
  v53 = *v52;
  v54 = v52[8];
  v55 = *(v52 + 2);
  v100 = v53;
  LOBYTE(v101) = v54;
  v102 = v55;
  sub_1BE0516A4();
  if (v99)
  {
    sub_1BD664AB4(v1, v9);
    sub_1BE0528A4();
    v56 = sub_1BE052894();
    v86[0] = v51;
    v57 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    v59 = MEMORY[0x1E69E85E0];
    *(v58 + 24) = MEMORY[0x1E69E85E0];
    sub_1BD664B7C(v9, v58 + v57);
    sub_1BD664AB4(v1, v9);
    v60 = sub_1BE052894();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v59;
    sub_1BD664B7C(v9, v61 + v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    sub_1BE051924();
    v62 = v100;
    v63 = v101;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E8, &qword_1BE0EC270);
    MEMORY[0x1BFB3E970](&v98, v64);
    v63, v65, v66, v67, v68, v69, v70, v71;
    v62, v72, v73, v74, v75, v76, v77, v78;
  }

  else
  {
    v99 = 0;
  }

  v80 = v96;
  v79 = v97;
  v81 = v92;
  sub_1BE04A454();
  v82 = v95;
  sub_1BE04A444();
  if ((*(v80 + 48))(v82, 1, v79) == 1)
  {
    (*(v93 + 8))(v81, v94);
    return sub_1BD0DE53C(v82, &unk_1EBD39970, &unk_1BE0B9F80);
  }

  else
  {
    v84 = v89;
    (*(v80 + 32))(v89, v82, v79);
    v85 = sub_1BE04AE64();
    [v88 setCurrentValue_];

    (*(v80 + 8))(v84, v79);
    return (*(v93 + 8))(v81, v94);
  }
}

void *sub_1BD662350@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = sub_1BE04B2D4();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830, &unk_1BE0EBFE0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for PaymentSetupFieldEntryDateView(0);
  v17 = (a1 + *(v16 + 48));
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = v17[2];
  v36 = v18;
  v37 = v19;
  v38 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  result = sub_1BE0516A4();
  if (v35 != 1)
  {
    v26 = v34;
    goto LABEL_6;
  }

  result = [*a1 currentValue];
  if (result)
  {
    v22 = result;
    sub_1BE04AEE4();

    (*(v10 + 32))(v15, v12, v9);
    sub_1BD0DE19C(a1 + *(v16 + 40), v8, &unk_1EBD4E830, &unk_1BE0EBFE0);
    v23 = *(v6 + 48);
    v25 = v31;
    v24 = v32;
    (*(v31 + 104))(v5, *MEMORY[0x1E6969A68], v32);
    v26 = sub_1BE04B2E4();
    (*(v25 + 8))(v5, v24);
    (*(v10 + 8))(v15, v9);
    v27 = sub_1BE04B0F4();
    (*(*(v27 - 8) + 8))(&v8[v23], v27);
    v28 = sub_1BE04B2F4();
    result = (*(*(v28 - 8) + 8))(v8, v28);
LABEL_6:
    v30 = v33;
    *v33 = v26;
    *(v30 + 8) = 0;
    return result;
  }

  v29 = *(a1 + 48);
  v26 = v29 + 1;
  if (!__OFADD__(v29, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6626CC(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PaymentSetupFieldEntryDateView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516B4();
  v7 = sub_1BD661B64();
  return (*(a6 + 8))(v7);
}

void sub_1BD66276C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v57 = a8;
  v67 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v51 - v13;
  v14 = sub_1BE04AF64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v64 = &v51 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840, &unk_1BE0C73F0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v51 - v20;
  v63 = sub_1BE04A474();
  v52 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v24 = sub_1BE04B154();
    if (v25)
    {
      a2 = 0;
    }

    else
    {
      a2 = v24;
    }

    sub_1BE04B154();
    if (v27)
    {
      a3 = a2;
    }

    else
    {
      a3 = v26;
    }
  }

  v28 = sub_1BE052404();
  [v57 setDateFormat_];

  if (a3 < a2)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a2 == a3)
  {
    return;
  }

  if (a2 >= a3)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v68 = v14;
  v62 = sub_1BE04B2F4();
  v29 = *(v62 - 8);
  v30 = *(v29 + 16);
  v60 = v29 + 16;
  v61 = v30;
  v58 = (v15 + 48);
  v59 = (v29 + 56);
  v53 = (v15 + 8);
  v54 = (v15 + 32);
  v31 = (v52 + 8);
  v32 = MEMORY[0x1E69E7CC0];
  v55 = a3;
  v56 = a1;
  do
  {
    v33 = v62;
    v61(v21, v67, v62);
    (*v59)(v21, 0, 1, v33);
    v34 = sub_1BE04B3B4();
    (*(*(v34 - 8) + 56))(v64, 1, 1, v34);
    sub_1BE04A454();
    sub_1BE04A464();
    v35 = v66;
    sub_1BE04A444();
    v36 = v35;
    v37 = v35;
    v38 = v68;
    if ((*v58)(v37, 1, v68) == 1)
    {
      (*v31)(v23, v63);
      sub_1BD0DE53C(v36, &unk_1EBD39970, &unk_1BE0B9F80);
    }

    else
    {
      (*v54)(v65, v36, v38);
      v39 = sub_1BE04AE64();
      v40 = [v57 stringFromDate_];

      v41 = sub_1BE052434();
      v43 = v42;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1BD1D9378(0, (v32[2] + 1), 1, v32, v44, v45, v46, v47);
      }

      v49 = v32[2];
      v48 = v32[3];
      if (v49 >= v48 >> 1)
      {
        v32 = sub_1BD1D9378((v48 > 1), (v49 + 1), 1, v32, v44, v45, v46, v47);
      }

      (*v53)(v65, v68);
      (*v31)(v23, v63);
      v32[2] = v49 + 1;
      v50 = &v32[3 * v49];
      v50[4] = a2;
      v50[5] = v41;
      v50[6] = v43;
      a3 = v55;
    }

    ++a2;
  }

  while (a3 != a2);
}

void *sub_1BD662D38()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8B0, &qword_1BE0EC150);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8B8, &qword_1BE0EC158);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8C0, &qword_1BE0EC160);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35[-v13];
  if ([*v1 isReadonly])
  {
    *&v36 = sub_1BD663144();
    *(&v36 + 1) = v15;
    sub_1BD0DDEBC();
    v16 = sub_1BE0506C4();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    sub_1BE051CF4();
    sub_1BE04EE54();
    v23 = v20 & 1;
    v35[0] = v20 & 1;
    v24 = sub_1BE04FC94();
    KeyPath = swift_getKeyPath();
    v35[8] = 0;
    *v14 = v16;
    *(v14 + 1) = v18;
    v14[16] = v23;
    *(v14 + 3) = v22;
    v26 = v41;
    *(v14 + 6) = v40;
    *(v14 + 7) = v26;
    *(v14 + 8) = v42;
    v27 = v37;
    *(v14 + 2) = v36;
    *(v14 + 3) = v27;
    v28 = v39;
    *(v14 + 4) = v38;
    *(v14 + 5) = v28;
    *(v14 + 36) = v24;
    *(v14 + 19) = KeyPath;
    *(v14 + 20) = 1;
    v14[168] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8D0, &qword_1BE0EC170);
    sub_1BD664FB8();
    sub_1BD665128();
    return sub_1BE04F9A4();
  }

  else
  {
    *v4 = sub_1BE04F504();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8C8, &qword_1BE0EC168);
    sub_1BD66389C(v1, &v4[*(v30 + 44)]);
    if (*(v1 + 24) == 1)
    {
      sub_1BE051CF4();
    }

    else
    {
      sub_1BE051CE4();
    }

    sub_1BE04EE54();
    sub_1BD0DE204(v4, v7, &qword_1EBD4E8B0, &qword_1BE0EC150);
    v31 = &v7[*(v5 + 36)];
    v32 = v41;
    v31[4] = v40;
    v31[5] = v32;
    v31[6] = v42;
    v33 = v37;
    *v31 = v36;
    v31[1] = v33;
    v34 = v39;
    v31[2] = v38;
    v31[3] = v34;
    sub_1BD0DE204(v7, v10, &qword_1EBD4E8B8, &qword_1BE0EC158);
    sub_1BD0DE19C(v10, v14, &qword_1EBD4E8B8, &qword_1BE0EC158);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8D0, &qword_1BE0EC170);
    sub_1BD664FB8();
    sub_1BD665128();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v10, &qword_1EBD4E8B8, &qword_1BE0EC158);
  }
}

uint64_t sub_1BD663144()
{
  v59 = sub_1BE04AC64();
  v66 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v2 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1BE04ACA4();
  v72 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v71 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04A994();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B3B4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830, &unk_1BE0EBFE0);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E930, &qword_1BE0E3120);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B4D0, &qword_1BE0EC1C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - v15;
  v17 = sub_1BE04AD84();
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v54 - v23;
  v24 = sub_1BE04AF64();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v54 - v30;
  v32 = [*v0 currentValue];
  if (!v32)
  {
    return 0x595959592F4D4DLL;
  }

  v33 = v32;
  sub_1BE04AEE4();

  v57 = v24;
  v58 = v25;
  v34 = *(v25 + 32);
  v56 = v31;
  v34(v31, v27, v24);
  v35 = sub_1BE04AB54();
  v36 = *(*(v35 - 8) + 56);
  v54 = v16;
  v36(v16, 1, 1, v35);
  v37 = sub_1BE04AB24();
  (*(*(v37 - 8) + 56))(v13, 1, 1, v37);
  v38 = *(type metadata accessor for PaymentSetupFieldEntryDateView(0) + 40);
  v39 = v62;
  sub_1BD0DE19C(v0 + v38, v62, &unk_1EBD4E830, &unk_1BE0EBFE0);
  v55 = v2;
  v40 = v19;
  v41 = v61;
  v42 = v64;
  sub_1BD0DE19C(v0 + v38, v64, &unk_1EBD4E830, &unk_1BE0EBFE0);
  v43 = *(v41 + 48);
  sub_1BE04B384();
  sub_1BE04A984();
  sub_1BE04AB74();
  v44 = sub_1BE04B0F4();
  (*(*(v44 - 8) + 8))(v42 + v43, v44);
  v45 = sub_1BE04B2F4();
  (*(*(v45 - 8) + 8))(v39, v45);
  v46 = v71;
  sub_1BE04AC94();
  v47 = v63;
  sub_1BE04ABB4();
  (*(v72 + 8))(v46, v60);
  v48 = v70;
  v49 = *(v69 + 8);
  v49(v40, v70);
  v50 = v55;
  sub_1BE04AC54();
  v51 = v65;
  sub_1BE04ABA4();
  (*(v66 + 8))(v50, v59);
  v49(v47, v48);
  sub_1BD6651E0(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  v52 = v56;
  sub_1BE04AF44();
  v49(v51, v48);
  (*(v58 + 8))(v52, v57);
  return v73;
}

uint64_t sub_1BD66389C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E948, &qword_1BE0EC1C8);
  MEMORY[0x1EEE9AC00](v91);
  v86 = &v72 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E950, &qword_1BE0EC1D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v87 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v72 - v7;
  v8 = type metadata accessor for PaymentSetupFieldEntryDateView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E958, &qword_1BE0EC1D8);
  MEMORY[0x1EEE9AC00](v89);
  v13 = &v72 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E960, &qword_1BE0EC1E0);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E968, &qword_1BE0EC1E8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v84 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v72 - v18;
  v73 = a1;
  sub_1BD664AB4(a1, v11);
  sub_1BE0528A4();
  v19 = sub_1BE052894();
  v20 = *(v9 + 80);
  v21 = (v20 + 32) & ~v20;
  v78 = v10;
  v77 = v20;
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  sub_1BD664B7C(v11, v22 + v21);
  sub_1BD664AB4(a1, v11);
  v24 = sub_1BE052894();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  sub_1BD664B7C(v11, v25 + v21);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  sub_1BE051924();
  v26 = v73;
  v93 = v73;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E970, &qword_1BE0EC1F0);
  v82 = sub_1BD665260();
  v81 = sub_1BD6652DC();
  sub_1BE0517D4();
  v27 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E988, &qword_1BE0EC228);
  v29 = &v13[*(v76 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = &v13[*(v89 + 36)];
  *v30 = 0;
  *(v30 + 4) = 1;
  v75 = sub_1BD6653B0();
  v31 = v80;
  sub_1BE0509C4();
  sub_1BD0DE53C(v13, &qword_1EBD4E958, &qword_1BE0EC1D8);
  *(v31 + *(v91 + 36)) = 1;
  LOBYTE(v27) = sub_1BE050204();
  sub_1BE04E1F4();
  v32 = v31 + *(v83 + 36);
  *v32 = v27;
  *(v32 + 8) = v33;
  *(v32 + 16) = v34;
  *(v32 + 24) = v35;
  *(v32 + 32) = v36;
  *(v32 + 40) = 0;
  sub_1BE052434();
  v38 = v37;
  sub_1BD665520();
  sub_1BE050DE4();
  v38, v39, v40, v41, v42, v43, v44, v45;
  sub_1BD0DE53C(v31, &qword_1EBD4E960, &qword_1BE0EC1E0);
  sub_1BD664AB4(v26, v11);
  v46 = sub_1BE052894();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  v48 = MEMORY[0x1E69E85E0];
  *(v47 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD664B7C(v11, v47 + v21);
  sub_1BD664AB4(v26, v11);
  v49 = sub_1BE052894();
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = v48;
  sub_1BD664B7C(v11, v50 + v21);
  sub_1BE051924();
  v92 = v26;
  sub_1BE0517D4();
  v51 = sub_1BE051464();
  v52 = swift_getKeyPath();
  v53 = &v13[*(v76 + 36)];
  *v53 = v52;
  v53[1] = v51;
  v54 = &v13[*(v89 + 36)];
  *v54 = 0;
  *(v54 + 4) = 1;
  v55 = v86;
  sub_1BE0509C4();
  sub_1BD0DE53C(v13, &qword_1EBD4E958, &qword_1BE0EC1D8);
  *(v55 + *(v91 + 36)) = 1;
  sub_1BE052434();
  v57 = v56;
  sub_1BD6655AC();
  v58 = v85;
  sub_1BE050DE4();
  v57, v59, v60, v61, v62, v63, v64, v65;
  sub_1BD0DE53C(v55, &qword_1EBD4E948, &qword_1BE0EC1C8);
  v66 = v90;
  v67 = v84;
  sub_1BD0DE19C(v90, v84, &qword_1EBD4E968, &qword_1BE0EC1E8);
  v68 = v87;
  sub_1BD0DE19C(v58, v87, &qword_1EBD4E950, &qword_1BE0EC1D0);
  v69 = v88;
  sub_1BD0DE19C(v67, v88, &qword_1EBD4E968, &qword_1BE0EC1E8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9C0, &qword_1BE0EC240);
  sub_1BD0DE19C(v68, v69 + *(v70 + 48), &qword_1EBD4E950, &qword_1BE0EC1D0);
  sub_1BD0DE53C(v58, &qword_1EBD4E950, &qword_1BE0EC1D0);
  sub_1BD0DE53C(v66, &qword_1EBD4E968, &qword_1BE0EC1E8);
  sub_1BD0DE53C(v68, &qword_1EBD4E950, &qword_1BE0EC1D0);
  return sub_1BD0DE53C(v67, &qword_1EBD4E968, &qword_1BE0EC1E8);
}

uint64_t sub_1BD66413C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9C8, &qword_1BE0EC268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0, qword_1BE0E7680);
  sub_1BD0DE4F4(&qword_1EBD4E9D8, &qword_1EBD4E9C8, &qword_1BE0EC268, MEMORY[0x1E69E6338]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  sub_1BD665260();
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

double sub_1BD66428C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *a2 = v3;
  *(a2 + 8) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = 256;
  sub_1BE048C84();
  return result;
}

uint64_t sub_1BD6642B4(uint64_t a1)
{
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9C8, &qword_1BE0EC268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0, qword_1BE0E7680);
  sub_1BD0DE4F4(&qword_1EBD4E9D8, &qword_1EBD4E9C8, &qword_1BE0EC268, MEMORY[0x1E69E6338]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  sub_1BD665260();
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

unint64_t sub_1BD664408()
{
  result = qword_1EBD4E720;
  if (!qword_1EBD4E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E720);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[6], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

unint64_t sub_1BD6644C4()
{
  result = qword_1EBD4E740;
  if (!qword_1EBD4E740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E738, &qword_1BE0EBEB0);
    sub_1BD664550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E740);
  }

  return result;
}

unint64_t sub_1BD664550()
{
  result = qword_1EBD4E748;
  if (!qword_1EBD4E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E748);
  }

  return result;
}

uint64_t type metadata accessor for PaymentSetupFieldEntryDateView(uint64_t a1)
{
  result = qword_1EBD4E850;
  if (!qword_1EBD4E850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD66461C()
{
  result = qword_1EBD4E7A0;
  if (!qword_1EBD4E7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E790, &qword_1BE0EBF80);
    sub_1BD6648C0(&qword_1EBD4E7A8, &qword_1EBD4E7B0, &qword_1BE0EBF90, sub_1BD664700);
    sub_1BD6648C0(&qword_1EBD4E7E8, &qword_1EBD4E778, &qword_1BE0EBF68, sub_1BD66493C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7A0);
  }

  return result;
}

unint64_t sub_1BD664700()
{
  result = qword_1EBD4E7B8;
  if (!qword_1EBD4E7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E7C0, &qword_1BE0EBF98);
    sub_1BD66478C();
    sub_1BD664818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7B8);
  }

  return result;
}

unint64_t sub_1BD66478C()
{
  result = qword_1EBD4E7C8;
  if (!qword_1EBD4E7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E7D0, &qword_1BE0EBFA0);
    sub_1BD664818();
    sub_1BD66486C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7C8);
  }

  return result;
}

unint64_t sub_1BD664818()
{
  result = qword_1EBD4E7D8;
  if (!qword_1EBD4E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7D8);
  }

  return result;
}

unint64_t sub_1BD66486C()
{
  result = qword_1EBD4E7E0;
  if (!qword_1EBD4E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7E0);
  }

  return result;
}

uint64_t sub_1BD6648C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD66493C()
{
  result = qword_1EBD4E7F0;
  if (!qword_1EBD4E7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E770, &qword_1BE0EBF60);
    sub_1BD6649F8();
    sub_1BD6651E0(&qword_1EBD4E800, type metadata accessor for PaymentSetupFieldEntryDateView, &unk_1BE0EC0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7F0);
  }

  return result;
}

unint64_t sub_1BD6649F8()
{
  result = qword_1EBD4E7F8;
  if (!qword_1EBD4E7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E768, &qword_1BE0EBF58);
    sub_1BD6651E0(&qword_1EBD4E800, type metadata accessor for PaymentSetupFieldEntryDateView, &unk_1BE0EC0B0);
    sub_1BD66486C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7F8);
  }

  return result;
}

uint64_t sub_1BD664AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentSetupFieldEntryDateView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD664B18(uint64_t a1)
{
  v2 = type metadata accessor for PaymentSetupFieldEntryDateView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD664B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentSetupFieldEntryDateView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BD664BE0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1BD664BF8(result, a2, a3, a4, a5, a6 & 1);
  }

  return v6;
}

double sub_1BD664BF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    v6 = a1;

    sub_1BE048964();
  }

  else
  {
    v8 = a1;
    sub_1BE048964();

    sub_1BE048C84();
  }

  return result;
}

void sub_1BD664C64(void *result, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6)
{
  if (a6 != -1)
  {
    sub_1BD664C7C(result, a2, a3, a4, a5, a6 & 1);
  }
}

void sub_1BD664C7C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6)
{
  a4, v9, v10, v11, v12, v13, v14, v15;
  if ((a6 & 1) == 0)
  {

    a5, v16, v17, v18, v19, v20, v21, v22;
  }
}

void sub_1BD664D10(uint64_t a1)
{
  sub_1BD0E5E8C(319, &unk_1EBD4E860, 0x1E69B8E20);
  if (v1 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      sub_1BD664ED0(319, &unk_1EBD4E870, &unk_1EBD557F0, &qword_1BE0BFE80, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1BD664E5C(319);
        if (v4 <= 0x3F)
        {
          sub_1BD664ED0(319, &unk_1EBD4E888, &qword_1EBD40C28, &qword_1BE0E74F0, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD664E5C(uint64_t a1)
{
  if (!qword_1EBD4E880)
  {
    sub_1BE04B2F4();
    sub_1BE04B0F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD4E880);
    }
  }
}

void sub_1BD664ED0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BD664F64()
{
  result = qword_1EBD4E8A8;
  if (!qword_1EBD4E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E8A8);
  }

  return result;
}

unint64_t sub_1BD664FB8()
{
  result = qword_1EBD4E8D8;
  if (!qword_1EBD4E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E8D0, &qword_1BE0EC170);
    sub_1BD665070();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E8D8);
  }

  return result;
}

unint64_t sub_1BD665070()
{
  result = qword_1EBD4E8E0;
  if (!qword_1EBD4E8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E8E8, &unk_1BE0EC178);
    sub_1BD19D16C();
    sub_1BD0DE4F4(&unk_1EBD4E900, &qword_1EBD3ACA0, &unk_1BE0BB830, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E8E0);
  }

  return result;
}

unint64_t sub_1BD665128()
{
  result = qword_1EBD4E920;
  if (!qword_1EBD4E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E8B8, &qword_1BE0EC158);
    sub_1BD0DE4F4(&qword_1EBD4E928, &qword_1EBD4E8B0, &qword_1BE0EC150, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E920);
  }

  return result;
}

uint64_t sub_1BD6651E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD665260()
{
  result = qword_1EBD40CD8;
  if (!qword_1EBD40CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40CD8);
  }

  return result;
}

unint64_t sub_1BD6652DC()
{
  result = qword_1EBD4E980;
  if (!qword_1EBD4E980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4E970, &qword_1BE0EC1F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    sub_1BD665260();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E980);
  }

  return result;
}

unint64_t sub_1BD6653B0()
{
  result = qword_1EBD4E990;
  if (!qword_1EBD4E990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E958, &qword_1BE0EC1D8);
    sub_1BD66543C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E990);
  }

  return result;
}

unint64_t sub_1BD66543C()
{
  result = qword_1EBD4E998;
  if (!qword_1EBD4E998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E988, &qword_1BE0EC228);
    sub_1BD0DE4F4(&qword_1EBD4E9A0, &qword_1EBD4E9A8, &unk_1BE0EC230, MEMORY[0x1E697D690]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E998);
  }

  return result;
}

unint64_t sub_1BD665520()
{
  result = qword_1EBD4E9B0;
  if (!qword_1EBD4E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E960, &qword_1BE0EC1E0);
    sub_1BD6655AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E9B0);
  }

  return result;
}

unint64_t sub_1BD6655AC()
{
  result = qword_1EBD4E9B8;
  if (!qword_1EBD4E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E948, &qword_1BE0EC1C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E958, &qword_1BE0EC1D8);
    sub_1BD6653B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E9B8);
  }

  return result;
}

uint64_t sub_1BD6656AC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PaymentSetupFieldEntryDateView(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_41Tm()
{
  v1 = (type metadata accessor for PaymentSetupFieldEntryDateView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  *(v0 + v2 + 16), v3, v4, v5, v6, v7, v8, v9;
  *(v0 + v2 + 32), v10, v11, v12, v13, v14, v15, v16;
  *(v0 + v2 + 40), v17, v18, v19, v20, v21, v22, v23;
  v24 = v0 + v2 + v1[12];
  v25 = sub_1BE04B2F4();
  (*(*(v25 - 8) + 8))(v24, v25);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830, &unk_1BE0EBFE0) + 48);
  v27 = sub_1BE04B0F4();
  (*(*(v27 - 8) + 8))(v24 + v26, v27);
  *(v0 + v2 + v1[13] + 16), v28, v29, v30, v31, v32, v33, v34;
  *(v0 + v2 + v1[14] + 16), v35, v36, v37, v38, v39, v40, v41;

  return swift_deallocObject();
}

uint64_t sub_1BD6658B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PaymentSetupFieldEntryDateView(0) - 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8, v9);
}

id sub_1BD665950(void *a1, id a2, char a3)
{
  if ([a2 isSecureText] && (objc_msgSend(a2, sel_isSecureVisibleText) & 1) == 0)
  {
    v6 = PKSensitiveFieldBroadcastingEnabled() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [a1 setSecureTextEntry_];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [a1 setFont_];

  LODWORD(v8) = 1132068864;
  [a1 setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1132068864;
  [a1 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v7) = [a2 isNumeric];
  v10 = [a2 displayString];
  if (v7)
  {
    if (v10)
    {
      v11 = v10;
      v12 = sub_1BE052434();
      v14 = v13;

      v50 = v12;
      v51 = v14;
      v48 = 32;
      v49 = 0xE100000000000000;
      v46 = 41154;
      v47 = 0xA200000000000000;
      v44 = sub_1BD0DDEBC();
      v45 = v44;
      v42 = MEMORY[0x1E69E6158];
      v43 = v44;
      sub_1BE053584();
      v16 = v15;
      v14, v15, v17, v18, v19, v20, v21, v22;
LABEL_10:
      v25 = sub_1BE052404();
      v16, v26, v27, v28, v29, v30, v31, v32;
      goto LABEL_12;
    }
  }

  else if (v10)
  {
    v23 = v10;
    sub_1BE052434();
    v16 = v24;

    goto LABEL_10;
  }

  v25 = 0;
LABEL_12:
  [a1 setText_];

  v33 = [a2 localizedPlaceholder];
  [a1 setPlaceholder_];

  [a1 setEnabled_];
  [a1 setUserInteractionEnabled_];
  LODWORD(v33) = [a2 isReadonly];
  v34 = objc_opt_self();
  v35 = &selRef_secondaryLabelColor;
  if (!v33)
  {
    v35 = &selRef_labelColor;
  }

  v36 = [v34 *v35];
  [a1 setTextColor_];

  [a1 setBorderStyle_];
  if ([a2 isNumeric])
  {
    v37 = 4;
  }

  else
  {
    v37 = 0;
  }

  [a1 setKeyboardType_];
  v38 = [objc_opt_self() sharedApplication];
  v39 = [v38 userInterfaceLayoutDirection];

  if (a3)
  {
    [a1 setTextAlignment_];
LABEL_20:
    v40 = [objc_opt_self() clearColor];
    [a1 setBackgroundColor_];

    goto LABEL_21;
  }

  [a1 setTextAlignment_];
  if ([a2 isReadonly])
  {
    goto LABEL_20;
  }

LABEL_21:
  [a1 setAccessibilityIdentifier_];
  return [a1 pkui:1 setExcludedFromScreenCapture:1 andBroadcasting:?];
}

unint64_t sub_1BD665D60()
{
  result = qword_1EBD4E9F8;
  if (!qword_1EBD4E9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EA00, &unk_1BE0EC280);
    sub_1BD664FB8();
    sub_1BD665128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E9F8);
  }

  return result;
}

uint64_t type metadata accessor for AppleCardBillPaymentDetailsView(uint64_t a1)
{
  result = qword_1EBD4EA08;
  if (!qword_1EBD4EA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD665E78(uint64_t a1)
{
  result = _s15PaymentDateInfoVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD665F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v116 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA20, &qword_1BE0EC310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v116 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA28, &qword_1BE0EC318);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v116 - v18;
  *v19 = sub_1BE04F504();
  *(v19 + 1) = 0;
  v20 = 1;
  v19[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA30, &qword_1BE0EC320);
  sub_1BD66638C(a1, &v19[*(v21 + 44)]);
  v22 = sub_1BD15F194();
  if (v23)
  {
    v125 = v22;
    v126 = v23;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v26 = v25;
    v120 = v16;
    v28 = v27;
    v118 = v7;
    v30 = v29;
    v31 = sub_1BE0502A4();
    v119 = v5;
    v32 = v31;
    v33 = sub_1BE0505F4();
    v121 = v13;
    v122 = v4;
    v34 = v33;
    v36 = v35;
    v123 = v10;
    v124 = a2;
    v38 = v37;
    v40 = v39;
    v32, v35, v37, v39, v41, v42, v43, v44;
    sub_1BD0DDF10(v24, v26, (v28 & 1), v45, v46, v47, v48, v49);
    v30, v50, v51, v52, v53, v54, v55, v56;
    v57 = sub_1BE051234();
    v58 = sub_1BE050564();
    v60 = v59;
    LOBYTE(v32) = v61;
    v63 = v62;
    v117 = v62;
    v57, v59, v61, v62, v64, v65, v66, v67;
    sub_1BD0DDF10(v34, v36, (v38 & 1), v68, v69, v70, v71, v72);
    v40, v73, v74, v75, v76, v77, v78, v79;
    KeyPath = swift_getKeyPath();
    v125 = v58;
    v126 = v60;
    v81 = (v32 & 1);
    v127 = v81;
    v128 = v63;
    v129 = KeyPath;
    v130 = 2;
    v131 = 0;
    sub_1BE052434();
    v83 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
    sub_1BD1B9C50();
    v84 = v118;
    a2 = v124;
    v13 = v121;
    sub_1BE050DE4();
    v85 = v83;
    v10 = v123;
    v85, v86, v87, v88, v89, v90, v91, v92;
    v93 = v81;
    v5 = v119;
    sub_1BD0DDF10(v58, v60, v93, v94, v95, v96, v97, v98);
    v99 = KeyPath;
    v4 = v122;
    v99, v100, v101, v102, v103, v104, v105, v106;
    v16 = v120;
    v117, v107, v108, v109, v110, v111, v112, v113;
    sub_1BD0DE204(v84, v13, &qword_1EBD3C0E8, &qword_1BE0C4010);
    v20 = 0;
  }

  (*(v5 + 56))(v13, v20, 1, v4);
  sub_1BD0DE19C(v19, v16, &qword_1EBD4EA28, &qword_1BE0EC318);
  sub_1BD0DE19C(v13, v10, &qword_1EBD4EA20, &qword_1BE0EC310);
  sub_1BD0DE19C(v16, a2, &qword_1EBD4EA28, &qword_1BE0EC318);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA38, &qword_1BE0EC328);
  sub_1BD0DE19C(v10, a2 + *(v114 + 48), &qword_1EBD4EA20, &qword_1BE0EC310);
  sub_1BD0DE53C(v13, &qword_1EBD4EA20, &qword_1BE0EC310);
  sub_1BD0DE53C(v19, &qword_1EBD4EA28, &qword_1BE0EC318);
  sub_1BD0DE53C(v10, &qword_1EBD4EA20, &qword_1BE0EC310);
  return sub_1BD0DE53C(v16, &qword_1EBD4EA28, &qword_1BE0EC318);
}

uint64_t sub_1BD66638C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v217 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA20, &qword_1BE0EC310);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v218 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v216 = &v209 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA40, &qword_1BE0EC360);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v209 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  v213 = *(v11 - 8);
  v214 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v209 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA48, &qword_1BE0EC368);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v215 = &v209 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v209 - v20;
  v22 = sub_1BD15EB90();
  v219 = v21;
  v220 = v16;
  if (!v23)
  {
    (*(v8 + 56))(v21, 1, 1, v7);
    v115 = sub_1BD15EC7C();
    if (v116)
    {
      goto LABEL_3;
    }

LABEL_5:
    v203 = 1;
    v202 = v216;
    goto LABEL_6;
  }

  v221 = v22;
  v222 = v23;
  sub_1BD0DDEBC();
  v24 = sub_1BE0506C4();
  v211 = v7;
  v212 = a1;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_1BE0502A4();
  v209 = v10;
  v33 = v32;
  v34 = sub_1BE0505F4();
  v210 = v8;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v33, v36, v38, v40, v42, v43, v44, v45;
  sub_1BD0DDF10(v25, v27, (v29 & 1), v46, v47, v48, v49, v50);
  v31, v51, v52, v53, v54, v55, v56, v57;
  v58 = sub_1BE051224();
  v59 = sub_1BE050564();
  v61 = v60;
  LOBYTE(v33) = v62;
  v64 = v63;
  v58, v60, v62, v63, v65, v66, v67, v68;
  sub_1BD0DDF10(v35, v37, (v39 & 1), v69, v70, v71, v72, v73);
  v41, v74, v75, v76, v77, v78, v79, v80;
  KeyPath = swift_getKeyPath();
  v221 = v59;
  v222 = v61;
  v223 = v33 & 1;
  v224 = v64;
  v225 = KeyPath;
  v226 = 2;
  v227 = 0;
  sub_1BE052434();
  v83 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
  sub_1BD1B9C50();
  sub_1BE050DE4();
  v83, v84, v85, v86, v87, v88, v89, v90;
  sub_1BD0DDF10(v59, v61, (v33 & 1), v91, v92, v93, v94, v95);
  v96 = KeyPath;
  v97 = v220;
  v96, v98, v99, v100, v101, v102, v103, v104;
  v105 = v64;
  v21 = v219;
  v105, v106, v107, v108, v109, v110, v111, v112;
  sub_1BD0DE19C(v97, v13, &qword_1EBD3C0E8, &qword_1BE0C4010);
  v113 = v209;
  sub_1BD0DE19C(v13, v209, &qword_1EBD3C0E8, &qword_1BE0C4010);
  v114 = v113 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA58, &qword_1BE0EC378) + 48);
  *v114 = 0;
  *(v114 + 8) = 1;
  sub_1BD0DE53C(v97, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE53C(v13, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE204(v113, v21, &qword_1EBD4EA40, &qword_1BE0EC360);
  (*(v210 + 56))(v21, 0, 1, v211);
  v115 = sub_1BD15EC7C();
  if (!v116)
  {
    goto LABEL_5;
  }

LABEL_3:
  v221 = v115;
  v222 = v116;
  sub_1BD0DDEBC();
  v117 = sub_1BE0506C4();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v124 = sub_1BE0502A4();
  v125 = sub_1BE0505F4();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v124, v126, v128, v130, v132, v133, v134, v135;
  sub_1BD0DDF10(v117, v119, (v121 & 1), v136, v137, v138, v139, v140);
  v123, v141, v142, v143, v144, v145, v146, v147;
  v148 = sub_1BE051224();
  v149 = sub_1BE050564();
  v151 = v150;
  LOBYTE(v123) = v152;
  v154 = v153;
  v148, v150, v152, v153, v155, v156, v157, v158;
  sub_1BD0DDF10(v125, v127, (v129 & 1), v159, v160, v161, v162, v163);
  v131, v164, v165, v166, v167, v168, v169, v170;
  v171 = swift_getKeyPath();
  v221 = v149;
  v222 = v151;
  v172 = (v123 & 1);
  v223 = v172;
  v224 = v154;
  v225 = v171;
  v226 = 2;
  v227 = 0;
  sub_1BE052434();
  v174 = v173;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
  sub_1BD1B9C50();
  v175 = v220;
  v21 = v219;
  sub_1BE050DE4();
  v174, v176, v177, v178, v179, v180, v181, v182;
  sub_1BD0DDF10(v149, v151, v172, v183, v184, v185, v186, v187);
  v171, v188, v189, v190, v191, v192, v193, v194;
  v154, v195, v196, v197, v198, v199, v200, v201;
  v202 = v216;
  sub_1BD0DE204(v175, v216, &qword_1EBD3C0E8, &qword_1BE0C4010);
  v203 = 0;
LABEL_6:
  (*(v213 + 56))(v202, v203, 1, v214);
  v204 = v215;
  sub_1BD0DE19C(v21, v215, &qword_1EBD4EA48, &qword_1BE0EC368);
  v205 = v218;
  sub_1BD0DE19C(v202, v218, &qword_1EBD4EA20, &qword_1BE0EC310);
  v206 = v217;
  sub_1BD0DE19C(v204, v217, &qword_1EBD4EA48, &qword_1BE0EC368);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA50, &qword_1BE0EC370);
  sub_1BD0DE19C(v205, v206 + *(v207 + 48), &qword_1EBD4EA20, &qword_1BE0EC310);
  sub_1BD0DE53C(v202, &qword_1EBD4EA20, &qword_1BE0EC310);
  sub_1BD0DE53C(v21, &qword_1EBD4EA48, &qword_1BE0EC368);
  sub_1BD0DE53C(v205, &qword_1EBD4EA20, &qword_1BE0EC310);
  return sub_1BD0DE53C(v204, &qword_1EBD4EA48, &qword_1BE0EC368);
}

uint64_t sub_1BD666B04@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA18, &unk_1BE0EC300);
  return sub_1BD665F00(v2, a2 + *(v4 + 44));
}

id TransactionPickerViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransactionPickerViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TransactionPickerViewControllerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD666D84@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for TransactionPickerView(0);
  sub_1BD0DE19C(v1 + *(v10 + 20), v9, &qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E354();
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

uint64_t sub_1BD666F8C@<X0>(uint64_t a1@<X8>)
{
  v165 = a1;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAD0, &unk_1BE0EC6B8);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v164 = &v153 - v2;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37240, &unk_1BE0B1260);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v170 = &v153 - v3;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAD8, &qword_1BE0EC6C8);
  v161 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v153 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAE0, &qword_1BE0EC6D0);
  v155 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v160 = &v153 - v6;
  sub_1BD667D3C((&v153 - v6));
  sub_1BE051C64();
  v172 = v1;
  v175 = v1;
  v174 = v1;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAE8, &qword_1BE0EC6D8);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAF0, &unk_1BE0EC6E0);
  v7 = sub_1BD672F14();
  v168 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB40, &qword_1BE0EC720);
  v9 = sub_1BE04F554();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB48, &qword_1BE0EC728);
  v159 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB50, &qword_1BE0EC730);
  v12 = sub_1BD0DDEBC();
  v176 = v5;
  v177 = MEMORY[0x1E69E6158];
  v178 = v7;
  v179 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_1BD0DE4F4(&qword_1EBD4EB58, &qword_1EBD4EB50, &qword_1BE0EC730, MEMORY[0x1E697C5E0]);
  v176 = v10;
  v177 = v11;
  v178 = OpaqueTypeConformance2;
  v179 = v14;
  v15 = swift_getOpaqueTypeConformance2();
  v16 = sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v176 = v8;
  v177 = v9;
  v178 = v15;
  v179 = v16;
  v153 = swift_getOpaqueTypeConformance2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB68, &qword_1BE0EC738);
  v18 = sub_1BE04F844();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB70, &qword_1BE0EC740);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB78, &qword_1BE0EC748);
  v21 = sub_1BD0DE4F4(&qword_1EBD4EB80, &qword_1EBD4EB78, &qword_1BE0EC748, MEMORY[0x1E697BEF0]);
  v176 = v20;
  v177 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v176 = v159;
  v177 = v19;
  v178 = OpaqueTypeConformance2;
  v179 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
  v176 = v17;
  v177 = v18;
  v178 = v23;
  v179 = v24;
  v154 = swift_getOpaqueTypeConformance2();
  v25 = v156;
  v26 = v155;
  v27 = v157;
  v28 = v160;
  sub_1BE0510B4();
  sub_1BD0DE53C(v28, &qword_1EBD4EAE0, &qword_1BE0EC6D0);
  v29 = v172;
  v30 = v172[1];
  v160 = *v172;
  v186 = v160;
  v187 = v30;
  v159 = v30;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516C4();
  v31 = v176;
  v32 = v177;
  v33 = v178;
  KeyPath = swift_getKeyPath();
  v186 = v31;
  v187 = v32;
  v188 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB98, &qword_1BE0EC780);
  sub_1BE051904();
  KeyPath, v35, v36, v37, v38, v39, v40, v41;
  v42 = v184;
  v43 = v185;
  v33, v44, v45, v46, v47, v48, v49, v50;
  v32, v51, v52, v53, v54, v55, v56, v57;
  v31, v58, v59, v60, v61, v62, v63, v64;
  v173 = v29;
  v176 = v26;
  v177 = MEMORY[0x1E6981CD8];
  v178 = v27;
  v179 = v25;
  v180 = v168;
  v181 = MEMORY[0x1E6981CD0];
  v182 = v153;
  v183 = v154;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v171;
  v168 = v65;
  v67 = v169;
  sub_1BE050EE4();
  v43, v68, v69, v70, v71, v72, v73, v74;
  v42, v75, v76, v77, v78, v79, v80, v81;
  (*(v161 + 8))(v67, v66);
  v82 = type metadata accessor for TransactionPickerView(0);
  v83 = *(v82 - 8);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82 - 8);
  sub_1BD6732E8(v29, &v153 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BE0528A4();
  v85 = sub_1BE052894();
  v86 = *(v83 + 80);
  v169 = ~v86;
  v87 = swift_allocObject();
  v88 = MEMORY[0x1E69E85E0];
  *(v87 + 16) = v85;
  *(v87 + 24) = v88;
  sub_1BD67334C(&v153 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0), v87 + ((v86 + 32) & ~v86));
  v89 = sub_1BE0528D4();
  v90 = *(v89 - 8);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = &v153 - v92;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v156 = sub_1BE04EAA4();
    v157 = &v153;
    v155 = *(v156 - 8);
    MEMORY[0x1EEE9AC00](v156);
    v154 = &v153 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
    v176 = 0;
    v177 = 0xE000000000000000;
    sub_1BE053834();
    v177, v95, v96, v97, v98, v99, v100, v101;
    v176 = 0xD000000000000054;
    v177 = 0x80000001BE1333B0;
    v186 = 99;
    v102 = sub_1BE053B24();
    v161 = v84;
    v103 = v89;
    v105 = v104;
    MEMORY[0x1BFB3F610](v102);
    v105, v106, v107, v108, v109, v110, v111, v112;
    v114 = MEMORY[0x1EEE9AC00](v113);
    (*(v90 + 16))(&v153 - v92, &v153 - v92, v103, v114);
    v115 = v154;
    sub_1BE04EA94();
    v116 = v103;
    v84 = v161;
    (*(v90 + 8))(v93, v116);
    v117 = v164;
    v118 = v163;
    (*(v162 + 32))(v164, v170, v163);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37248, &qword_1BE0EC7A0);
    (*(v155 + 32))(&v117[*(v119 + 36)], v115, v156);
  }

  else
  {
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37250, &qword_1BE0B1270);
    v117 = v164;
    v121 = &v164[*(v120 + 36)];
    v122 = sub_1BE04E7B4();
    (*(v90 + 32))(&v121[*(v122 + 20)], &v153 - v92, v89);
    *v121 = &unk_1BE0EC798;
    *(v121 + 1) = v87;
    v118 = v163;
    (*(v162 + 32))(v117, v170, v163);
  }

  v176 = v160;
  v177 = v159;
  sub_1BE0516A4();
  v123 = v186;
  v124 = swift_getKeyPath();
  v176 = v123;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  v124, v125, v126, v127, v128, v129, v130, v131;
  v132 = v123[42];
  v123, v133, v134, v135, v136, v137, v138, v139;
  LOBYTE(v186) = v132;
  MEMORY[0x1EEE9AC00](v140);
  sub_1BD6732E8(v172, &v153 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = (v86 + 16) & v169;
  v142 = swift_allocObject();
  sub_1BD67334C(&v153 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0), v142 + v141);
  v176 = v171;
  v177 = v168;
  v143 = swift_getOpaqueTypeConformance2();
  v176 = v118;
  v177 = v143;
  swift_getOpaqueTypeConformance2();
  sub_1BD672EB0();
  v144 = v167;
  sub_1BE051064();
  v142, v145, v146, v147, v148, v149, v150, v151;
  return (*(v166 + 8))(v117, v144);
}

uint64_t sub_1BD667D3C@<X0>(void *a1@<X8>)
{
  v113 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030, &qword_1BE0B7570);
  v105 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v104 = &v95 - v2;
  v101 = sub_1BE051AD4();
  v100 = *(v101 - 1);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BE04FB94();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB18, &unk_1BE0EC708);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v7 = &v95 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB00, &unk_1BE0EC6F0);
  MEMORY[0x1EEE9AC00](v114);
  v107 = &v95 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBE8, &qword_1BE0EC8C0);
  v103 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v102 = &v95 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBF0, &qword_1BE0EC8C8);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v95 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v11 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v13 = &v95 - v12;
  v14 = *v1;
  v15 = v1[1];
  v108 = v1;
  v115 = v14;
  v116 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  v16 = v121;
  KeyPath = swift_getKeyPath();
  v115 = v16;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v25 = v16[40];
  v16, v26, v27, v28, v29, v30, v31, v32;
  if (v25 == 1)
  {
    sub_1BE04E4F4();
    v33 = v110;
    (*(v11 + 16))(v109, v13, v110);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB08, &qword_1BE0EC700);
    v35 = sub_1BD673098();
    v115 = MEMORY[0x1E6981CD8];
    v116 = MEMORY[0x1E6981CD0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = sub_1BD6731E0();
    v115 = v114;
    v116 = v112;
    v117 = v34;
    v118 = v35;
    v119 = OpaqueTypeConformance2;
    v120 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v11 + 8))(v13, v33);
  }

  else
  {
    v121 = v14;
    v122 = v15;
    sub_1BE0516C4();
    v39 = v115;
    v40 = v116;
    v41 = v117;
    v42 = swift_getKeyPath();
    v115 = v39;
    v116 = v40;
    v117 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB98, &qword_1BE0EC780);
    sub_1BE051904();
    v42, v43, v44, v45, v46, v47, v48, v49;
    v41, v50, v51, v52, v53, v54, v55, v56;
    v40, v57, v58, v59, v60, v61, v62, v63;
    v39, v64, v65, v66, v67, v68, v69, v70;
    MEMORY[0x1EEE9AC00](v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBF8, &qword_1BE0EC8D0);
    sub_1BD0DE4F4(&qword_1EBD4EC00, &qword_1EBD4EBF8, &qword_1BE0EC8D0, MEMORY[0x1E6981F48]);
    sub_1BE0504D4();
    sub_1BE04FB84();
    sub_1BD0DE4F4(&qword_1EBD4EB20, &qword_1EBD4EB18, &unk_1BE0EC708, MEMORY[0x1E697CD20]);
    v72 = v107;
    v73 = v96;
    v74 = v98;
    sub_1BE051144();
    (*(v97 + 8))(v5, v74);
    (*(v95 + 8))(v7, v73);
    v75 = swift_getKeyPath();
    v76 = &v72[*(v114 + 36)];
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410, &unk_1BE0D2B20) + 28);
    v78 = v100;
    v79 = v99;
    v80 = v101;
    (*(v100 + 104))(v99, *MEMORY[0x1E697D708], v101);
    sub_1BE051944();
    (*(v78 + 8))(v79, v80);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    (*(*(v81 - 8) + 56))(v76 + v77, 0, 1, v81);
    *v76 = v75;
    sub_1BE051C64();
    v82 = MEMORY[0x1E6981CD0];
    v83 = MEMORY[0x1E6981CD8];
    v84 = v104;
    v85 = sub_1BE04F694();
    v101 = &v95;
    MEMORY[0x1EEE9AC00](v85);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB08, &qword_1BE0EC700);
    v86 = sub_1BD673098();
    v115 = v83;
    v116 = v82;
    v87 = swift_getOpaqueTypeConformance2();
    v94 = sub_1BD6731E0();
    v88 = v102;
    v89 = v114;
    v90 = v112;
    v91 = v107;
    sub_1BE0510C4();
    (*(v105 + 8))(v84, v90);
    sub_1BD0DE53C(v91, &qword_1EBD4EB00, &unk_1BE0EC6F0);
    v92 = v103;
    v93 = v111;
    (*(v103 + 16))(v109, v88, v111);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    v115 = v89;
    v116 = v90;
    v117 = v108;
    v118 = v86;
    v119 = v87;
    v120 = v94;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v92 + 8))(v88, v93);
  }
}

uint64_t sub_1BD668828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v50 = a3;
  v4 = sub_1BE04F554();
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB48, &qword_1BE0EC728);
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB40, &qword_1BE0EC720);
  v11 = *(v10 - 8);
  v46 = v10;
  v47 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = a2[1];
  v52 = *a2;
  v53 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  v15 = v56;
  v16 = sub_1BD66FBBC();
  v18 = v17;
  v15, v17, v19, v20, v21, v22, v23, v24;
  v52 = v16;
  v53 = v18;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAE0, &qword_1BE0EC6D0);
  v26 = sub_1BD672F14();
  v27 = sub_1BD0DDEBC();
  v28 = MEMORY[0x1E69E6158];
  sub_1BE050B74();
  v18, v29, v30, v31, v32, v33, v34, v35;
  v51 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB50, &qword_1BE0EC730);
  v52 = v25;
  v53 = v28;
  v54 = v26;
  v55 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_1BD0DE4F4(&qword_1EBD4EB58, &qword_1EBD4EB50, &qword_1BE0EC730, MEMORY[0x1E697C5E0]);
  sub_1BE051024();
  (*(v44 + 8))(v9, v7);
  v39 = v45;
  sub_1BE04F544();
  v52 = v7;
  v53 = v36;
  v54 = OpaqueTypeConformance2;
  v55 = v38;
  swift_getOpaqueTypeConformance2();
  sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v40 = v46;
  v41 = v48;
  sub_1BE050864();
  (*(v49 + 8))(v39, v41);
  return (*(v47 + 8))(v13, v40);
}

uint64_t sub_1BD668C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v32 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBE0, &qword_1BE0EC890);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - v3;
  v4 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB78, &qword_1BE0EC748);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  sub_1BE04FB14();
  v34 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBA8, &qword_1BE0EC808);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBB0, &qword_1BE0EC810);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBB8, &qword_1BE0EC818);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBC0, &qword_1BE0EC820);
  v13 = sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &qword_1BE0EC810, sub_1BD6741B0);
  v14 = sub_1BE04F554();
  v15 = sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v35 = v12;
  v36 = v14;
  v37 = v13;
  v38 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_1BE04F844();
  v18 = sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
  v35 = v12;
  v36 = v17;
  v37 = v13;
  v38 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v35 = v12;
  v36 = MEMORY[0x1E6981CD8];
  v37 = v27;
  v38 = v26;
  v39 = v13;
  v40 = MEMORY[0x1E6981CD0];
  v41 = OpaqueTypeConformance2;
  v42 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E424();
  sub_1BE04FB04();
  v33 = v29;
  sub_1BE04E424();
  v20 = v30;
  v21 = *(v31 + 48);
  v22 = *(v6 + 16);
  v22(v30, v11, v5);
  v22(&v20[v21], v8, v5);
  sub_1BE04F854();
  v23 = *(v6 + 8);
  v23(v8, v5);
  return (v23)(v11, v5);
}

uint64_t sub_1BD669054@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBD8, &unk_1BE0EC828);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v68 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB0, &qword_1BE0EC810);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v69 = &v68 - v10;
  (*(v3 + 104))(v5, *MEMORY[0x1E69B80D8], v2, v9);
  v11 = sub_1BE04B714();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v15 = v1[1];
  v75 = *v1;
  v14 = v75;
  v76 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  v75 = v11;
  v76 = v13;
  v72 = &v75;
  v73 = 0x72616D6B63656863;
  v74 = 0xE90000000000006BLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
  sub_1BE051704();
  v13, v16, v17, v18, v19, v20, v21, v22;
  v75 = v14;
  v76 = v15;
  sub_1BE0516A4();
  v23 = v79;
  KeyPath = swift_getKeyPath();
  v75 = v23;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  swift_beginAccess();
  v32 = v23[4];
  sub_1BE048C84();
  v23, v33, v34, v35, v36, v37, v38, v39;
  v40 = v32[2];
  v32, v41, v42, v43, v44, v45, v46, v47;
  LOBYTE(v32) = v40 == 0;
  v48 = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v32;
  v50 = &v8[*(v6 + 36)];
  *v50 = v48;
  v50[1] = sub_1BD185ABC;
  v50[2] = v49;
  sub_1BE052434();
  v52 = v51;
  sub_1BD6741B0();
  v53 = v69;
  sub_1BE050DE4();
  v52, v54, v55, v56, v57, v58, v59, v60;
  sub_1BD0DE53C(v8, &qword_1EBD4EBD8, &unk_1BE0EC828);
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB8, &qword_1BE0EC818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBC0, &qword_1BE0EC820);
  v61 = sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &qword_1BE0EC810, sub_1BD6741B0);
  v62 = sub_1BE04F554();
  v63 = sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v64 = v70;
  v75 = v70;
  v76 = v62;
  v77 = v61;
  v78 = v63;
  swift_getOpaqueTypeConformance2();
  v65 = sub_1BE04F844();
  v66 = sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
  v75 = v64;
  v76 = v65;
  v77 = v61;
  v78 = v66;
  swift_getOpaqueTypeConformance2();
  sub_1BE0510B4();
  return sub_1BD0DE53C(v53, &qword_1EBD4EBB0, &qword_1BE0EC810);
}

id sub_1BD669630@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for TransactionPickerView(0);
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8, &qword_1BE0D73A0);
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v65 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBD8, &unk_1BE0EC828);
  MEMORY[0x1EEE9AC00](v69);
  v10 = &v65 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB0, &qword_1BE0EC810);
  v11 = MEMORY[0x1EEE9AC00](v72);
  v71 = &v65 - v12;
  (*(v5 + 104))(v7, *MEMORY[0x1E69B8068], v4, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v5 + 8))(v7, v4);
    sub_1BD6732E8(v1, &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v19 = swift_allocObject();
    v20 = sub_1BD67334C(&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v74 = v15;
    v75 = v17;
    MEMORY[0x1EEE9AC00](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    v21 = v67;
    sub_1BE051704();
    v17, v22, v23, v24, v25, v26, v27, v28;
    v29 = v1[1];
    v74 = *v1;
    v75 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
    sub_1BE0516A4();
    v30 = v78;
    KeyPath = swift_getKeyPath();
    v74 = v30;
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
    sub_1BE04B594();
    KeyPath, v32, v33, v34, v35, v36, v37, v38;
    LOBYTE(KeyPath) = v30[40];
    v30, v39, v40, v41, v42, v43, v44, v45;
    v46 = swift_getKeyPath();
    v47 = swift_allocObject();
    *(v47 + 16) = KeyPath;
    (*(v68 + 32))(v10, v21, v70);
    v48 = &v10[*(v69 + 36)];
    *v48 = v46;
    v48[1] = sub_1BD10DF54;
    v48[2] = v47;
    sub_1BE052434();
    v50 = v49;
    sub_1BD6741B0();
    v51 = v71;
    sub_1BE050DE4();
    v50, v52, v53, v54, v55, v56, v57, v58;
    sub_1BD0DE53C(v10, &qword_1EBD4EBD8, &unk_1BE0EC828);
    sub_1BE051C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB8, &qword_1BE0EC818);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBC0, &qword_1BE0EC820);
    v59 = sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &qword_1BE0EC810, sub_1BD6741B0);
    v60 = sub_1BE04F554();
    v61 = sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    v62 = v72;
    v74 = v72;
    v75 = v60;
    v76 = v59;
    v77 = v61;
    swift_getOpaqueTypeConformance2();
    v63 = sub_1BE04F844();
    v64 = sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
    v74 = v62;
    v75 = v63;
    v76 = v59;
    v77 = v64;
    swift_getOpaqueTypeConformance2();
    sub_1BE0510B4();
    return sub_1BD0DE53C(v51, &qword_1EBD4EBB0, &qword_1BE0EC810);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD669D50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a1;
  v47 = a2;
  v2 = sub_1BE04F844();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB48, &qword_1BE0EC728);
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB68, &qword_1BE0EC738);
  v13 = *(v12 - 8);
  v42 = v12;
  v43 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  (*(v6 + 104))(v8, *MEMORY[0x1E69B80D8], v5, v14);
  v17 = sub_1BE04B714();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v49 = v17;
  v50 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAE0, &qword_1BE0EC6D0);
  v21 = sub_1BD672F14();
  v22 = sub_1BD0DDEBC();
  v23 = MEMORY[0x1E69E6158];
  sub_1BE050B74();
  v19, v24, v25, v26, v27, v28, v29, v30;
  v48 = v40;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB70, &qword_1BE0EC740);
  v49 = v20;
  v50 = v23;
  v51 = v21;
  v52 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB78, &qword_1BE0EC748);
  v34 = sub_1BD0DE4F4(&qword_1EBD4EB80, &qword_1EBD4EB78, &qword_1BE0EC748, MEMORY[0x1E697BEF0]);
  v49 = v33;
  v50 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  sub_1BE051024();
  (*(v41 + 8))(v11, v9);
  v36 = v44;
  sub_1BE04F834();
  v49 = v9;
  v50 = v31;
  v51 = OpaqueTypeConformance2;
  v52 = v35;
  swift_getOpaqueTypeConformance2();
  sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
  v37 = v42;
  v38 = v45;
  sub_1BE050864();
  (*(v46 + 8))(v36, v38);
  return (*(v43 + 8))(v16, v37);
}

uint64_t sub_1BD66A22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB78, &qword_1BE0EC748);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  sub_1BE04FB04();
  v23 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBA8, &qword_1BE0EC808);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBB0, &qword_1BE0EC810);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBB8, &qword_1BE0EC818);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBC0, &qword_1BE0EC820);
  v10 = sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &qword_1BE0EC810, sub_1BD6741B0);
  v11 = sub_1BE04F554();
  v12 = sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v24 = v8;
  v25 = v11;
  v26 = v10;
  v27 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_1BE04F844();
  v15 = sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
  v24 = v8;
  v25 = v14;
  v26 = v10;
  v27 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v24 = v8;
  v25 = MEMORY[0x1E6981CD8];
  v26 = v20;
  v27 = v9;
  v28 = v10;
  v29 = MEMORY[0x1E6981CD0];
  v30 = OpaqueTypeConformance2;
  v31 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E424();
  v17 = sub_1BD0DE4F4(&qword_1EBD4EB80, &qword_1EBD4EB78, &qword_1BE0EC748, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v7, v4, v17);
  return (*(v5 + 8))(v7, v4);
}

void sub_1BD66A570(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 41);
}

uint64_t sub_1BD66A618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v2 = type metadata accessor for TransactionPickerView(0);
  v72 = *(v2 - 8);
  v71 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v69 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8, &qword_1BE0D1620);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = v64 - v5;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x1E69B80D8];
  v12 = *(v7 + 104);
  v12(v10, v11, v6, v8);
  v13 = v12;
  v14 = sub_1BE04B714();
  v16 = v15;
  v17 = *(v7 + 8);
  v17(v10, v6);
  v75 = v14;
  v76 = v16;
  sub_1BD0DDEBC();
  v18 = sub_1BE0506C4();
  v67 = v19;
  v68 = v18;
  v65 = v20;
  v66 = v21;
  v13(v10, v11, v6);
  v22 = v13;
  v23 = sub_1BE04B714();
  v25 = v24;
  v17(v10, v6);
  v75 = v23;
  v76 = v25;
  v26 = sub_1BE0506C4();
  v64[2] = v27;
  v64[3] = v26;
  v64[0] = v28 & 1;
  v64[1] = v29;
  v22(v10, v11, v6);
  v30 = sub_1BE04B714();
  v32 = v31;
  v17(v10, v6);
  v75 = v30;
  v76 = v32;
  v33 = sub_1BE0506C4();
  v35 = v34;
  LOBYTE(v22) = v36;
  v38 = v37;
  v39 = v69;
  sub_1BD6732E8(v73, v69);
  v40 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v41 = swift_allocObject();
  sub_1BD67334C(v39, v41 + v40);
  v42 = v70;
  sub_1BE051194();
  sub_1BD0DDF10(v33, v35, (v22 & 1), v43, v44, v45, v46, v47);
  v41, v48, v49, v50, v51, v52, v53, v54;
  v38, v55, v56, v57, v58, v59, v60, v61;
  v62 = sub_1BE0511A4();
  (*(*(v62 - 8) + 56))(v42, 0, 1, v62);
  return sub_1BE051174();
}

void sub_1BD66AA58(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  if (v23[41])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
    sub_1BE04B584();
    v23, v9, v10, v11, v12, v13, v14, v15;
    KeyPath, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    v23[41] = 0;
    v23, v1, v2, v3, v4, v5, v6, v7;
  }
}

uint64_t sub_1BD66AB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD66AC34, v5, v4);
}

uint64_t sub_1BD66AC34()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1BD0F8798;

  return sub_1BD66FE50();
}

void sub_1BD66ACF8(uint64_t a1, uint64_t a2, void *a3)
{
  v50[1] = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  KeyPath = swift_getKeyPath();
  v50[0] = v49;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v50[0] = v49[2];
  v11 = v50[0];
  swift_bridgeObjectRetain_n();
  sub_1BE048964();
  sub_1BD673EC0(v50, v49);
  v11, v12, v13, v14, v15, v16, v17, v18;
  v49, v19, v20, v21, v22, v23, v24, v25;
  v26 = v50[0];
  v27 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v27);
  v50[0] = v49;
  sub_1BE04B584();
  v49, v28, v29, v30, v31, v32, v33, v34;
  v27, v35, v36, v37, v38, v39, v40, v41;
  v26, v42, v43, v44, v45, v46, v47, v48;
}

double sub_1BD66AEB4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  *a2 = *(v3 + 32);
  sub_1BE048C84();
  return result;
}

uint64_t sub_1BD66AF74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC90, &qword_1BE0EC9B8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC98, &qword_1BE0EC9C0);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECA0, &qword_1BE0EC9C8);
  v39 = *(v44 - 8);
  v11 = v39;
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECA8, &qword_1BE0EC9D0);
  sub_1BD6743F4();
  v38 = v16;
  sub_1BE051A44();
  v45 = a1;
  *v5 = sub_1BE04F504();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECE8, &unk_1BE0EC9F0);
  sub_1BD66CAD0(a1, &v5[*(v17 + 44)]);
  v18 = &v5[*(v3 + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v20 = sub_1BE0505C4();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *v18 = swift_getKeyPath();
  sub_1BD67461C();
  v36 = v10;
  sub_1BE051A24();
  v21 = *(v11 + 16);
  v37 = v13;
  v22 = v44;
  v21(v13, v16, v44);
  v23 = v40;
  v24 = v41;
  v25 = *(v41 + 16);
  v26 = v10;
  v27 = v42;
  v25(v40, v26, v42);
  v28 = v43;
  v21(v43, v13, v22);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED08, &qword_1BE0ECA38);
  v30 = v23;
  v25(&v28[*(v29 + 48)], v23, v27);
  v31 = *(v24 + 8);
  v31(v36, v27);
  v32 = *(v39 + 8);
  v33 = v44;
  v32(v38, v44);
  v31(v30, v27);
  return (v32)(v37, v33);
}

uint64_t sub_1BD66B394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for TransactionPickerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EDA8, &unk_1BE0ECB68);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B69E0;
  v7 = *(a1 + 8);
  v42[0] = *a1;
  v42[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  v8 = v41[6];
  v9 = [objc_opt_self() presentationInformationForTransaction:v8 transactionSource:v41[10] secondaryTransactionSource:0 familyMember:0 account:v41[11] deviceName:0 context:1];
  [v9 setBadgeString_];
  type metadata accessor for TransactionPresentation(0);
  swift_allocObject();
  v10 = v9;
  v11 = v8;
  v12 = sub_1BD6AF5A8(v11, v10, 0);

  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  sub_1BE04D8B4(v42);
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  v29 = v42[0];
  [v42[0] setShouldShowDisclosure_];
  v41, v30, v31, v32, v33, v34, v35, v36;

  *(v6 + 32) = v12;
  v42[0] = v6;
  sub_1BD6732E8(a1, &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v38 = swift_allocObject();
  sub_1BD67334C(&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED88, &qword_1BE0ECB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECC0, &qword_1BE0EC9D8);
  sub_1BD0DE4F4(&qword_1EBD4ED90, &qword_1EBD4ED88, &qword_1BE0ECB10, MEMORY[0x1E69E6338]);
  sub_1BD6740FC(&qword_1EBD4ECB8, &qword_1EBD4ECC0, &qword_1BE0EC9D8, sub_1BD6744A4);
  sub_1BD674AC0();
  return sub_1BE0519D4();
}

id sub_1BD66B6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v131 = a2;
  v133 = sub_1BE04F6E4();
  v135 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v129 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v132 = &v124 - v7;
  v8 = sub_1BE04E354();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v124 - v13;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECC0, &qword_1BE0EC9D8);
  MEMORY[0x1EEE9AC00](v128);
  v136 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v124 - v17;
  type metadata accessor for TransactionPresentation(0);
  sub_1BD673298(&qword_1EBD3B840, type metadata accessor for TransactionPresentation, &unk_1BE0EF098);
  sub_1BE048964();
  v18 = sub_1BE04E954();
  v20 = v19;
  sub_1BD6AE91C();
  sub_1BD666D84(v14);
  (*(v9 + 104))(v11, *MEMORY[0x1E697DBB8], v8);
  v21 = sub_1BE04E344();
  v22 = *(v9 + 8);
  v22(v11, v8);
  v22(v14, v8);
  v23 = objc_opt_self();
  v24 = &selRef_systemBackgroundColor;
  if ((v21 & 1) == 0)
  {
    v24 = &selRef_secondarySystemBackgroundColor;
  }

  v25 = [v23 *v24];
  v26 = sub_1BE0511C4();
  *&v143 = swift_getKeyPath();
  *(&v143 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A98, &unk_1BE0CB748);
  sub_1BD306A90();
  v27 = sub_1BE0518D4();
  v145 = 0;
  *&v143 = v18;
  *(&v143 + 1) = v20;
  *&v144[0] = v27;
  memset(v144 + 8, 0, 33);
  v130 = v3;
  v29 = *v3;
  v28 = v3[1];
  *&v140[0] = v29;
  *(&v140[0] + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  v30 = v142;
  KeyPath = swift_getKeyPath();
  *&v140[0] = v30;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v32, v33, v34, v35, v36, v37, v38;
  swift_beginAccess();
  v39 = v30[4];
  sub_1BE048C84();
  v30, v40, v41, v42, v43, v44, v45, v46;
  v47 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction;
  v134 = a1;
  result = [*(a1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) identifier];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v49 = result;
  v125 = v28;
  v126 = v29;
  v50 = sub_1BE052434();
  v52 = v51;

  LOBYTE(v49) = sub_1BD6CC230(v50, v52, v39);
  v52, v53, v54, v55, v56, v57, v58, v59;
  v39, v60, v61, v62, v63, v64, v65, v66;
  if (v49)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EDA0, &qword_1BE0ECB18);
    v67 = v135;
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1BE0B69E0;
    sub_1BE04F6B4();
    *&v140[0] = v68;
    sub_1BD673298(&qword_1EBD3E638, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640, &qword_1BE0C8100);
    sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640, &qword_1BE0C8100, MEMORY[0x1E69E6328]);
    v69 = v132;
    v70 = v133;
    sub_1BE053664();
  }

  else
  {
    *&v140[0] = MEMORY[0x1E69E7CC0];
    sub_1BD673298(&qword_1EBD3E638, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640, &qword_1BE0C8100);
    sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640, &qword_1BE0C8100, MEMORY[0x1E69E6328]);
    v69 = v132;
    v70 = v133;
    sub_1BE053664();
    v67 = v135;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECD0, &qword_1BE0EC9E0);
  sub_1BD6744A4();
  sub_1BE050DA4();
  v71 = v69;
  v72 = *(v67 + 8);
  v72(v71, v70);
  v140[0] = v143;
  v140[1] = v144[0];
  v141[0] = v144[1];
  *(v141 + 9) = *(&v144[1] + 9);
  sub_1BD0DE53C(v140, &qword_1EBD4ECD0, &qword_1BE0EC9E0);
  v139[0] = v126;
  v139[1] = v125;
  sub_1BE0516A4();
  v73 = v137;
  v74 = swift_getKeyPath();
  v139[0] = v73;
  sub_1BE04B594();
  v74, v75, v76, v77, v78, v79, v80, v81;
  swift_beginAccess();
  v82 = v73[4];
  sub_1BE048C84();
  v73, v83, v84, v85, v86, v87, v88, v89;
  v90 = *(v134 + v47);
  v91 = v134;
  result = [v90 identifier];
  if (!result)
  {
    goto LABEL_13;
  }

  v92 = result;
  v93 = sub_1BE052434();
  v95 = v94;

  LOBYTE(v92) = sub_1BD6CC230(v93, v95, v82);
  v95, v96, v97, v98, v99, v100, v101, v102;
  v82, v103, v104, v105, v106, v107, v108, v109;
  if (v92)
  {
    v137 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EDA0, &qword_1BE0ECB18);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_1BE0B69E0;
    sub_1BE04F6B4();
    v137 = v110;
  }

  sub_1BD673298(&qword_1EBD3E638, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640, &qword_1BE0C8100);
  sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640, &qword_1BE0C8100, MEMORY[0x1E69E6328]);
  v111 = v129;
  sub_1BE053664();
  v112 = v127;
  v113 = v136;
  sub_1BE04EBC4();
  v72(v111, v70);
  sub_1BD0DE53C(v113, &qword_1EBD4ECC0, &qword_1BE0EC9D8);
  sub_1BD66C6D8(v91);
  v115 = v114;
  v137 = v116;
  v138 = v114;
  sub_1BD0DDEBC();
  sub_1BE04EB84();
  v115, v117, v118, v119, v120, v121, v122, v123;
  return sub_1BD0DE53C(v112, &qword_1EBD4ECC0, &qword_1BE0EC9D8);
}

uint64_t sub_1BD66C0F8(void *a1)
{
  v2 = type metadata accessor for TransactionPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  KeyPath = swift_getKeyPath();
  v26 = v25;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v13 = v25[2];
  sub_1BE048C84();
  v25, v14, v15, v16, v17, v18, v19, v20;
  v26 = v13;
  sub_1BD6732E8(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  sub_1BD67334C(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED88, &qword_1BE0ECB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECC0, &qword_1BE0EC9D8);
  sub_1BD0DE4F4(&qword_1EBD4ED90, &qword_1EBD4ED88, &qword_1BE0ECB10, MEMORY[0x1E69E6338]);
  sub_1BD6740FC(&qword_1EBD4ECB8, &qword_1EBD4ECC0, &qword_1BE0EC9D8, sub_1BD6744A4);
  sub_1BD674AC0();
  return sub_1BE0519D4();
}

uint64_t sub_1BD66C378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7B4();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB08, &qword_1BE0EC700) + 36);
  sub_1BD66C43C(v5);
  v6 = sub_1BE04E564();
  v7 = MEMORY[0x1BFB3D2D0]((2 * v6));
  v8 = sub_1BE04EC74();
  v9 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB38, &qword_1BE0EC718) + 36);
  *v9 = v8;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 17) = v7;
  *(v9 + 24) = v4;

  return sub_1BD092570(a1, a2);
}

uint64_t sub_1BD66C43C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC08, &qword_1BE0EC910);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC10, &qword_1BE0EC918);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC18, &qword_1BE0EC920);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - v13;
  *v6 = sub_1BE04F7B4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC20, &unk_1BE0EC928);
  sub_1BD66DD50(v2, &v6[*(v15 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v6, v10, &qword_1EBD4EC08, &qword_1BE0EC910);
  v16 = &v10[*(v8 + 44)];
  v17 = v24[5];
  *(v16 + 4) = v24[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v24[6];
  v18 = v24[1];
  *v16 = v24[0];
  *(v16 + 1) = v18;
  v19 = v24[3];
  *(v16 + 2) = v24[2];
  *(v16 + 3) = v19;
  v20 = &v14[*(v12 + 44)];
  sub_1BE051BA4();
  LOBYTE(v12) = sub_1BE0501D4();
  v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD596C0, &unk_1BE0E1690) + 36)] = v12;
  sub_1BD0DE204(v10, v14, &qword_1EBD4EC10, &qword_1BE0EC918);
  v21 = sub_1BE04EC74();
  LOBYTE(v12) = sub_1BE0501F4();
  sub_1BD0DE204(v14, a1, &qword_1EBD4EC18, &qword_1BE0EC920);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC28, &qword_1BE0EC938);
  v23 = a1 + *(result + 36);
  *v23 = v21;
  *(v23 + 8) = v12;
  return result;
}

void sub_1BD66C6D8(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(v107);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  v17 = v107[0];
  v18 = [v107[0] primaryString];

  if (v18)
  {
    v19 = sub_1BE052434();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v107[5] = v19;
  v107[6] = v21;
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  sub_1BE04D8B4(v107);
  v22, v24, v25, v26, v27, v28, v29, v30;
  v23, v31, v32, v33, v34, v35, v36, v37;
  v38 = v107[0];
  v39 = [v107[0] secondaryString];

  if (v39)
  {
    v40 = sub_1BE052434();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v107[7] = v40;
  v107[8] = v42;
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  sub_1BE04D8B4(v107);
  v43, v45, v46, v47, v48, v49, v50, v51;
  v44, v52, v53, v54, v55, v56, v57, v58;
  v59 = v107[0];
  v60 = [v107[0] tertiaryString];

  if (v60)
  {
    v61 = sub_1BE052434();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v107[9] = v61;
  v107[10] = v63;
  v64 = swift_getKeyPath();
  v65 = swift_getKeyPath();
  sub_1BE04D8B4(v107);
  v64, v66, v67, v68, v69, v70, v71, v72;
  v65, v73, v74, v75, v76, v77, v78, v79;
  v80 = v107[0];
  v81 = [v107[0] valueString];

  if (v81)
  {
    v82 = sub_1BE052434();
    v84 = v83;
  }

  else
  {
    v82 = 0;
    v84 = 0;
  }

  v85 = 0;
  v107[11] = v82;
  v107[12] = v84;
  v86 = MEMORY[0x1E69E7CC0];
LABEL_14:
  if (v85 <= 4)
  {
    v87 = 4;
  }

  else
  {
    v87 = v85;
  }

  v88 = v87 + 1;
  v89 = 16 * v85 + 40;
  while (1)
  {
    if (v85 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
      swift_arrayDestroy();
      v107[0] = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
      sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0, &qword_1BE0C1E30, MEMORY[0x1E69E6310]);
      sub_1BE0522E4();
      v86, v100, v101, v102, v103, v104, v105, v106;
      return;
    }

    if (v88 == ++v85)
    {
      break;
    }

    v90 = v89 + 16;
    v91 = *(&v107[1] + v89);
    v89 += 16;
    if (v91)
    {
      v92 = *(&v107[-2] + v90);
      sub_1BE048C84();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_1BD03B038(0, *(v86 + 2) + 1, 1, v86, v93, v94, v95, v96);
      }

      v98 = *(v86 + 2);
      v97 = *(v86 + 3);
      if (v98 >= v97 >> 1)
      {
        v86 = sub_1BD03B038((v97 > 1), v98 + 1, 1, v86, v93, v94, v95, v96);
      }

      *(v86 + 2) = v98 + 1;
      v99 = &v86[16 * v98];
      *(v99 + 4) = v92;
      *(v99 + 5) = v91;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1BD66CAD0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED10, &unk_1BE0ECA40);
  v33 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v5;
  v6 = type metadata accessor for TransactionPickerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v32 = *(v9 - 8);
  v10 = v32;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  sub_1BD6732E8(a1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_1BD67334C(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v39 = a1;
  v31 = v15;
  sub_1BE051704();
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED18, &qword_1BE0ECA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED20, &qword_1BE0ECA58);
  sub_1BD674728();
  sub_1BD0DE4F4(&qword_1EBD4ED48, &qword_1EBD4ED20, &qword_1BE0ECA58, MEMORY[0x1E697D690]);
  v18 = v37;
  sub_1BE0504F4();
  v19 = *(v10 + 16);
  v19(v12, v15, v9);
  v21 = v33;
  v20 = v34;
  v22 = *(v33 + 16);
  v23 = v36;
  v22(v34, v18, v36);
  v24 = v35;
  v19(v35, v12, v9);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED50, &qword_1BE0ECA68);
  v26 = &v24[*(v25 + 48)];
  *v26 = 0;
  v26[8] = 1;
  v22(&v24[*(v25 + 64)], v20, v23);
  v27 = *(v21 + 8);
  v27(v37, v23);
  v28 = *(v32 + 8);
  v28(v31, v9);
  v27(v20, v23);
  return (v28)(v12, v9);
}

void sub_1BD66CF28(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  swift_beginAccess();
  v9 = v50[4];
  v10 = swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();
  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = v50[3];
  sub_1BE048C84();
  sub_1BD6726BC(v9, v18);
  v20 = v19;
  v50, v21, v22, v23, v24, v25, v26, v27;
  v9, v28, v29, v30, v31, v32, v33, v34;
  v18, v35, v36, v37, v38, v39, v40, v41;
  sub_1BE0516A4();
  if (v20)
  {
    sub_1BD67183C();
  }

  else
  {
    sub_1BD6716CC();
  }

  v49, v42, v43, v44, v45, v46, v47, v48;
}

id sub_1BD66D0D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v10 = a1[1];
  v68 = *a1;
  v69 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  v11 = v66;
  KeyPath = swift_getKeyPath();
  v68 = v11;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  swift_beginAccess();
  v20 = v11[4];
  v21 = swift_getKeyPath();
  v66 = v11;
  sub_1BE048C84();
  sub_1BE04B594();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = v11[3];
  sub_1BE048C84();
  sub_1BD6726BC(v20, v29);
  v31 = v30;
  v11, v32, v33, v34, v35, v36, v37, v38;
  v20, v39, v40, v41, v42, v43, v44, v45;
  v29, v46, v47, v48, v49, v50, v51, v52;
  v53 = *MEMORY[0x1E69B80D8];
  v54 = *(v4 + 104);
  if (v31)
  {
    v54(v9, v53, v3);
    result = PKPassKitBundle();
    if (result)
    {
      v56 = result;
      v57 = sub_1BE04B6F4();
      v59 = v58;
LABEL_6:

      (*(v4 + 8))(v9, v3);
      v66 = v57;
      v67 = v59;
      sub_1BD0DDEBC();
      result = sub_1BE0506C4();
      v61 = v65;
      *v65 = result;
      v61[1] = v62;
      *(v61 + 16) = v63 & 1;
      v61[3] = v64;
      return result;
    }

    __break(1u);
  }

  else
  {
    v54(v6, v53, v3);
    result = PKPassKitBundle();
    if (result)
    {
      v56 = result;
      v57 = sub_1BE04B6F4();
      v59 = v60;
      v9 = v6;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD66D3FC(uint64_t *a1)
{
  sub_1BE04F624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516C4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB98, &qword_1BE0EC780);
  sub_1BE051904();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v33, v9, v10, v11, v12, v13, v14, v15;
  v32, v16, v17, v18, v19, v20, v21, v22;
  v31, v23, v24, v25, v26, v27, v28, v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED60, &qword_1BE0ECAD8);
  sub_1BD672E14();
  sub_1BD674970();
  return sub_1BE0517F4();
}

void sub_1BD66D56C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 42);
}

uint64_t sub_1BD66D614()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAB0, qword_1BE0EC5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED70, &qword_1BE0ECAE0);
  sub_1BD0DE4F4(&qword_1EBD4ED78, &qword_1EBD4EAB0, qword_1BE0EC5E0, MEMORY[0x1E69E6338]);
  sub_1BD672E14();
  swift_getOpaqueTypeConformance2();
  sub_1BD674A34();
  return sub_1BE0519D4();
}

uint64_t sub_1BD66D744@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1BD66D7B0(*a1);
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

id sub_1BD66D7B0(char a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v7;
  v10 = *MEMORY[0x1E69B80D8];
  v11 = *(v3 + 104);
  if (a1)
  {
    v11(v5, v10, v2, v8);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
      v9 = v5;
LABEL_6:

      (*(v3 + 8))(v9, v2);
      return v14;
    }

    __break(1u);
  }

  else
  {
    v11(&v15 - v7, v10, v2, v8);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

int *sub_1BD66D97C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED58, &qword_1BE0ECA70);
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v27 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED38, &qword_1BE0ECA60);
  v11 = MEMORY[0x1EEE9AC00](v28);
  v13 = &v27 - v12;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B80D8], v1, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v2 + 8))(v4, v1);
    v33 = v16;
    v34 = v18;
    sub_1BD0DDEBC();
    sub_1BE051624();
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    sub_1BD67491C();
    v19 = v31;
    sub_1BE050864();
    (*(v30 + 8))(v7, v19);
    v20 = sub_1BE0502A4();
    KeyPath = swift_getKeyPath();
    (*(v8 + 32))(v13, v10, v29);
    v22 = &v13[*(v28 + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    v23 = sub_1BE0511D4();
    v24 = swift_getKeyPath();
    v25 = v32;
    sub_1BD09260C(v13, v32);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED18, &qword_1BE0ECA50);
    v26 = (v25 + result[9]);
    *v26 = v24;
    v26[1] = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD66DD50@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC30, &qword_1BE0EC940);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v67 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC38, &qword_1BE0EC948);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  v68 = sub_1BE051994();
  v14 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - v18;
  sub_1BE051984();
  *v6 = sub_1BE04F7B4();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC40, &qword_1BE0EC950);
  sub_1BD66E1FC(a1, &v6[*(v20 + 44)]);
  v21 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC48, &unk_1BE0EC958) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v32 = &v6[*(v4 + 44)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v38 = sub_1BE050204();
  *(inited + 32) = v38;
  v39 = sub_1BE050224();
  *(inited + 33) = v39;
  v40 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v38)
  {
    v40 = sub_1BE050214();
  }

  inited, v41, v42, v43, v44, v45, v46, v47;
  sub_1BE050214();
  if (sub_1BE050214() != v39)
  {
    v40 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_1BD0DE204(v6, v10, &qword_1EBD4EC30, &qword_1BE0EC940);
  v56 = &v10[*(v67 + 36)];
  *v56 = v40;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_1BD0DE204(v10, v13, &qword_1EBD4EC38, &qword_1BE0EC948);
  v57 = v14;
  v58 = *(v14 + 16);
  v59 = v68;
  v58(v16, v19, v68);
  v60 = v69;
  sub_1BD0DE19C(v13, v69, &qword_1EBD4EC38, &qword_1BE0EC948);
  v71 = 1;
  v61 = v70;
  v58(v70, v16, v59);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC50, &qword_1BE0EC968);
  sub_1BD0DE19C(v60, &v61[*(v62 + 48)], &qword_1EBD4EC38, &qword_1BE0EC948);
  v63 = &v61[*(v62 + 64)];
  v64 = v71;
  *v63 = 0;
  v63[8] = v64;
  sub_1BD0DE53C(v13, &qword_1EBD4EC38, &qword_1BE0EC948);
  v65 = *(v57 + 8);
  v65(v19, v59);
  sub_1BD0DE53C(v60, &qword_1EBD4EC38, &qword_1BE0EC948);
  return (v65)(v16, v59);
}

void sub_1BD66E1FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC58, &unk_1BE0EC970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v104 = v103 - v7;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B80D8], v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BE0B69E0;
  v103[1] = a1;
  v14 = a1[1];
  v108 = *a1;
  v109 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  v15 = v106;
  KeyPath = swift_getKeyPath();
  v108 = v15;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  swift_beginAccess();
  v24 = v15[4];
  sub_1BE048C84();
  v15, v25, v26, v27, v28, v29, v30, v31;
  v32 = v24[2];
  v24, v33, v34, v35, v36, v37, v38, v39;
  v40 = MEMORY[0x1E69E65A8];
  *(v13 + 56) = MEMORY[0x1E69E6530];
  *(v13 + 64) = v40;
  *(v13 + 32) = v32;
  v41 = sub_1BE04B714();
  v43 = v42;
  v13, v42, v44, v45, v46, v47, v48, v49;
  (*(v9 + 8))(v12, v8);
  v106 = v41;
  v107 = v43;
  sub_1BD0DDEBC();
  v50 = sub_1BE0506C4();
  v52 = v51;
  LOBYTE(KeyPath) = v53;
  v55 = v54;
  v56 = sub_1BE0502A4();
  v57 = sub_1BE050334();
  v56, v58, v59, v60, v61, v62, v63, v64;
  v65 = sub_1BE0505F4();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v57, v66, v68, v70, v72, v73, v74, v75;
  sub_1BD0DDF10(v50, v52, (KeyPath & 1), v76, v77, v78, v79, v80);
  v55, v81, v82, v83, v84, v85, v86, v87;
  v88 = v104;
  sub_1BD66E610(v104);
  v89 = v105;
  sub_1BD0DE19C(v88, v105, &qword_1EBD4EC58, &unk_1BE0EC970);
  *a2 = v65;
  *(a2 + 8) = v67;
  *(a2 + 16) = v69 & 1;
  *(a2 + 24) = v71;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC60, &qword_1BE0EC980);
  sub_1BD0DE19C(v89, a2 + *(v90 + 48), &qword_1EBD4EC58, &unk_1BE0EC970);
  sub_1BD0D7F18(v65, v67, v69 & 1);
  sub_1BE048C84();
  sub_1BD0DE53C(v88, &qword_1EBD4EC58, &unk_1BE0EC970);
  sub_1BD0DE53C(v89, &qword_1EBD4EC58, &unk_1BE0EC970);
  sub_1BD0DDF10(v65, v67, (v69 & 1), v91, v92, v93, v94, v95);
  v71, v96, v97, v98, v99, v100, v101, v102;
}

uint64_t sub_1BD66E610@<X0>(uint64_t a1@<X8>)
{
  v45 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC68, &unk_1BE0EC988);
  sub_1BD674360();
  sub_1BE051704();
  v3 = sub_1BE0511D4();
  v4 = sub_1BE0501D4();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC78, &qword_1BE0EC998) + 36);
  *v5 = v3;
  *(v5 + 8) = v4;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC80, &qword_1BE0EC9A0) + 36));
  *v6 = v45;
  v6[1] = v46;
  v6[2] = v47;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC88, &unk_1BE0EC9A8) + 36));
  v8 = *(sub_1BE04EDE4() + 20);
  v9 = *MEMORY[0x1E697F468];
  v10 = sub_1BE04F684();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  __asm { FMOV            V0.2D, #10.0 }

  *v7 = _Q0;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
  sub_1BE0516A4();
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  swift_beginAccess();
  v24 = v44[4];
  sub_1BE048C84();
  v44, v25, v26, v27, v28, v29, v30, v31;
  v32 = v24[2];
  v24, v33, v34, v35, v36, v37, v38, v39;
  LOBYTE(KeyPath) = v32 == 0;
  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = KeyPath;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC58, &unk_1BE0EC970);
  v43 = (a1 + *(result + 36));
  *v43 = v40;
  v43[1] = sub_1BD185ABC;
  v43[2] = v41;
  return result;
}

double sub_1BD66E918@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2, v4);
  v7 = sub_1BE04B714();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v48 = v7;
  *(&v48 + 1) = v9;
  sub_1BD0DDEBC();
  v10 = sub_1BE0506C4();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  v16 = sub_1BE051424();
  *&v48 = v16;
  v17 = sub_1BE050574();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1BD0DDF10(v10, v12, (v7 & 1), v22, v24, v25, v26, v27);
  v16, v28, v29, v30, v31, v32, v33, v34;
  v15, v35, v36, v37, v38, v39, v40, v41;
  sub_1BE051CD4();
  sub_1BE04EE54();
  v55 = v21 & 1;
  v42 = sub_1BE0501D4();
  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  v43 = v53;
  *(a1 + 96) = v52;
  *(a1 + 112) = v43;
  *(a1 + 128) = v54;
  v44 = v49;
  *(a1 + 32) = v48;
  *(a1 + 48) = v44;
  v45 = v51;
  *(a1 + 64) = v50;
  *(a1 + 80) = v45;
  *(a1 + 144) = v42;
  result = 0.0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 1;
  return result;
}

void sub_1BD66EB80(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90, &qword_1BE0EC750);
  sub_1BE0516A4();
  v8[8](0);
  v8, v1, v2, v3, v4, v5, v6, v7;
}

uint64_t sub_1BD66EBE8()
{
  v0 = sub_1BE04F844();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F834();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB0, &qword_1BE0EC810);
  sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &qword_1BE0EC810, sub_1BD6741B0);
  sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
  sub_1BE050864();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BD66ED5C()
{
  v0 = sub_1BE04F554();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB0, &qword_1BE0EC810);
  sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &qword_1BE0EC810, sub_1BD6741B0);
  sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  sub_1BE050864();
  return (*(v1 + 8))(v3, v0);
}

void sub_1BD66EED4(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

double sub_1BD66EF44()
{
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  sub_1BE048C84();
  return result;
}

double sub_1BD66EFE8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 16);
  sub_1BE048C84();
  return result;
}

void sub_1BD66F094(uint64_t *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

double sub_1BD66F160()
{
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  sub_1BE048C84();
  return result;
}

double sub_1BD66F204@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 24);
  sub_1BE048C84();
  return result;
}

void sub_1BD66F2B0(void *a1)
{
  v3 = *(v1 + 24);
  v4 = sub_1BE048C84();
  v5 = sub_1BD843148(v4, a1);
  v3, v6, v7, v8, v9, v10, v11, v12;
  if (v5)
  {
    v20 = *(v1 + 24);
    *(v1 + 24) = a1;

    v20, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
    sub_1BE04B584();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    a1, v29, v30, v31, v32, v33, v34, v35;
  }
}

double sub_1BD66F404()
{
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  sub_1BE048C84();
  return result;
}

void sub_1BD66F4BC(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = sub_1BE048C84();
  v5 = sub_1BD843148(v4, a1);
  v3, v6, v7, v8, v9, v10, v11, v12;
  if (v5)
  {
    v20 = *(v1 + 32);
    *(v1 + 32) = a1;
    v20, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
    sub_1BE04B584();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    a1, v29, v30, v31, v32, v33, v34, v35;
  }
}

uint64_t sub_1BD66F604()
{
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 40);
}

void sub_1BD66F6A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 40);
}

void sub_1BD66F74C(char a1)
{
  if (*(v1 + 40) == (a1 & 1))
  {
    *(v1 + 40) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD66F85C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 41);
}

void sub_1BD66F8FC(char a1)
{
  if (*(v1 + 41) == (a1 & 1))
  {
    *(v1 + 41) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD66FA0C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 42);
}

void sub_1BD66FAAC(char a1)
{
  if (*(v1 + 42) == (a1 & 1))
  {
    *(v1 + 42) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD66FBBC()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v36 = v0;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  swift_beginAccess();
  v14 = *(*(v0 + 32) + 16);
  (*(v3 + 104))(v5, *MEMORY[0x1E69B80D8], v2);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BE0B69E0;
    v16 = swift_getKeyPath();
    v35 = v1;
    sub_1BE04B594();
    v16, v17, v18, v19, v20, v21, v22, v23;
    v24 = *(*(v1 + 32) + 16);
    v25 = MEMORY[0x1E69E65A8];
    *(v15 + 56) = MEMORY[0x1E69E6530];
    *(v15 + 64) = v25;
    *(v15 + 32) = v24;
    v26 = sub_1BE04B714();
    v15, v27, v28, v29, v30, v31, v32, v33;
  }

  else
  {
    v26 = sub_1BE04B714();
  }

  (*(v3 + 8))(v5, v2);
  return v26;
}

uint64_t sub_1BD66FE50()
{
  v1[37] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770, &qword_1BE0ECB90);
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  sub_1BE0528A4();
  v1[41] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[42] = v4;
  v1[43] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD66FF50, v4, v3);
}

uint64_t sub_1BD66FF50()
{
  v1 = *(v0 + 296);
  KeyPath = swift_getKeyPath();
  v3 = OBJC_IVAR____TtCV9PassKitUIP33_423F4157925DE25913FA4028798C2C6F21TransactionPickerView9ViewModel___observationRegistrar;
  *(v0 + 216) = v1;
  *(v0 + 352) = v3;
  *(v0 + 360) = sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  if (*(v1 + 40))
  {
    *(v0 + 328), v11, v12, v13, v14, v15, v16, v17;

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 296);
    v21 = swift_getKeyPath();
    v22 = swift_task_alloc();
    *(v22 + 16) = v20;
    *(v22 + 24) = 1;
    *(v0 + 224) = v20;
    sub_1BE04B584();
    *(v0 + 368) = 0;
    v21, v23, v24, v25, v26, v27, v28, v29;

    v30 = *(v20 + 104);
    v31 = *(v20 + 48);
    *(v0 + 376) = v31;
    v32 = sub_1BE052A24();
    *(v0 + 384) = v32;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_1BD670210;
    v33 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD9C18BC;
    *(v0 + 104) = &block_descriptor_145_0;
    *(v0 + 112) = v33;
    [v30 transactionsRelatedToTransaction:v31 transactionSourceIdentifiers:v32 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1BD670210()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1BD670318, v2, v1);
}

id sub_1BD670318(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 384);
  *(v8 + 328), a2, a3, a4, a5, a6, a7, a8;
  v11 = *(v8 + 232);

  if (v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v168 = MEMORY[0x1E69E7CC0];
  if (v19 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v21 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v9 = 0;
    v163 = v8;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1BFB40900](v9, v19);
      }

      else
      {
        if (v9 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v22 = *(v19 + 8 * v9 + 32);
      }

      v23 = v22;
      v24 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((PKPaymentTransactionCategoryAccessLevel() & 4) != 0)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        v8 = v163;
      }

      else
      {
      }

      ++v9;
      if (v24 == i)
      {
        v167 = v168;
        v21 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v167 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v19, v12, v13, v14, v15, v16, v17, v18;
  if ((v167 & 0x8000000000000000) != 0 || (v167 & 0x4000000000000000) != 0)
  {
    v32 = sub_1BE053704();
    if (v32)
    {
      goto LABEL_22;
    }

LABEL_33:
    v167, v25, v26, v27, v28, v29, v30, v31;
    v77 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v32 = *(v167 + 16);
  if (!v32)
  {
    goto LABEL_33;
  }

LABEL_22:
  v169 = v21;
  sub_1BE0538E4();
  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  v37 = *(v8 + 312);
  v38 = *(v8 + 296);
  v39 = 0;
  v166 = objc_opt_self();
  v164 = *(v38 + 80);
  v165 = *(v38 + 88);
  v40 = (v37 + 32);
  do
  {
    if ((v167 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1BFB40900](v39, v167);
    }

    else
    {
      v41 = *(v167 + 8 * v39 + 32);
    }

    v42 = v41;
    v43 = *(v8 + 320);
    v44 = *(v8 + 304);
    ++v39;
    v45 = [v166 presentationInformationForTransaction:v41 transactionSource:v164 secondaryTransactionSource:0 familyMember:0 account:v165 deviceName:0 context:1];
    [v45 setBadgeString_];
    type metadata accessor for TransactionPresentation(0);
    v46 = swift_allocObject();
    v47 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__icon;
    *(v8 + 240) = 0;
    v48 = v42;
    v49 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00, &qword_1BE0C85C0);
    sub_1BE04D874();
    (*v40)(v46 + v47, v43, v44);
    v50 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator;
    *(v46 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) = v48;
    *(v46 + v50) = 0;
    swift_beginAccess();
    *(v8 + 248) = v49;
    sub_1BD2B02A0();
    v51 = v48;
    v52 = v49;
    sub_1BE04D874();
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v8 + 256) = 0;
    sub_1BE048964();
    sub_1BE04D8C4();

    KeyPath = swift_getKeyPath();
    v54 = swift_getKeyPath();
    sub_1BE04D8B4((v8 + 264));
    v54, v55, v56, v57, v58, v59, v60, v61;
    KeyPath, v62, v63, v64, v65, v66, v67, v68;
    v69 = *(v8 + 264);
    [v69 setShouldShowDisclosure_];

    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
  }

  while (v32 != v39);
  v167, v70, v71, v72, v73, v74, v75, v76;
  v77 = v169;
LABEL_34:
  v78 = *(v8 + 296);
  v79 = swift_getKeyPath();
  v80 = swift_task_alloc();
  *(v80 + 16) = v78;
  *(v80 + 24) = v77;
  *(v8 + 272) = v78;
  sub_1BE04B584();
  v77, v81, v82, v83, v84, v85, v86, v87;
  v79, v88, v89, v90, v91, v92, v93, v94;

  v95 = swift_getKeyPath();
  *(v8 + 280) = v78;
  sub_1BE04B594();
  v95, v96, v97, v98, v99, v100, v101, v102;
  v103 = *(v78 + 16);
  v104 = v103[2];
  v105 = MEMORY[0x1E69E7CC0];
  if (!v104)
  {
LABEL_41:
    v128 = *(v8 + 376);
    v129 = sub_1BD537298(v105);
    v105, v130, v131, v132, v133, v134, v135, v136;
    sub_1BD66F2B0(v129);
    v137 = [v128 identifier];
    if (v137)
    {
      v138 = v137;
      v32 = sub_1BE052434();
      v9 = v139;

      *(v8 + 176) = v32;
      *(v8 + 184) = v9;
      if (v9)
      {
        sub_1BE048C84();
        v19 = MEMORY[0x1E69E7CC0];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_44:
          v141 = *(v19 + 16);
          v140 = *(v19 + 24);
          if (v141 >= v140 >> 1)
          {
            v19 = sub_1BD03B038((v140 > 1), v141 + 1, 1, v19, v33, v34, v35, v36);
          }

          *(v19 + 16) = v141 + 1;
          v142 = v19 + 16 * v141;
          *(v142 + 32) = v32;
          *(v142 + 40) = v9;
          goto LABEL_49;
        }

LABEL_56:
        v19 = sub_1BD03B038(0, *(v19 + 16) + 1, 1, v19, v33, v34, v35, v36);
        goto LABEL_44;
      }
    }

    else
    {
      *(v8 + 176) = 0;
      *(v8 + 184) = 0;
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_49:
    v143 = *(v8 + 296);
    sub_1BD0DE53C(v8 + 176, &qword_1EBD3A5C8, &qword_1BE0BAA50);
    v144 = sub_1BD537298(v19);
    v19, v145, v146, v147, v148, v149, v150, v151;
    sub_1BD66F4BC(v144);
    if (*(v143 + 40) == 1)
    {
      v152 = *(v8 + 296);
      v153 = swift_getKeyPath();
      v154 = swift_task_alloc();
      *(v154 + 16) = v152;
      *(v154 + 24) = 0;
      *(v8 + 288) = v152;
      sub_1BE04B584();
      v153, v155, v156, v157, v158, v159, v160, v161;
    }

    else
    {
      *(*(v8 + 296) + 40) = 0;
    }

    v162 = *(v8 + 8);

    return v162();
  }

  v170 = MEMORY[0x1E69E7CC0];
  sub_1BE048C84();
  sub_1BD03B254(0, v104, 0, v106, v107, v108, v109, v110);
  v111 = 4;
  v105 = v170;
  while (1)
  {
    v112 = *(v103[v111] + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction);
    swift_retain_n();
    result = [v112 identifier];
    if (!result)
    {
      break;
    }

    v114 = result;
    v115 = sub_1BE052434();
    v117 = v116;

    v126 = v170[2];
    v125 = v170[3];
    if (v126 >= v125 >> 1)
    {
      sub_1BD03B254((v125 > 1), v126 + 1, 1, v120, v121, v122, v123, v124);
    }

    v170[2] = v126 + 1;
    v127 = &v170[2 * v126];
    v127[4] = v115;
    v127[5] = v117;
    ++v111;
    if (!--v104)
    {
      v103, v118, v119, v120, v121, v122, v123, v124;
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD670B34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - v3;
  KeyPath = swift_getKeyPath();
  v34 = v0;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  if ((*(v0 + 40) & 1) == 0)
  {
    v13 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v13);
    *(&v33 - 2) = v0;
    *(&v33 - 8) = 1;
    v34 = v0;
    sub_1BE04B584();
    v13, v14, v15, v16, v17, v18, v19, v20;
    v21 = sub_1BE0528D4();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    sub_1BE0528A4();
    sub_1BE048964();
    v22 = sub_1BE052894();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v1;
    v25 = sub_1BD122C00(0, 0, v4, &unk_1BE0ECB80, v23);
    v25, v26, v27, v28, v29, v30, v31, v32;
  }
}

uint64_t sub_1BD670D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a4;
  v5 = sub_1BE04D214();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  sub_1BE0528A4();
  v4[29] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[30] = v7;
  v4[31] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD670E60, v7, v6);
}

uint64_t sub_1BD670E60()
{
  v1 = *(v0 + 200);
  KeyPath = swift_getKeyPath();
  *(v0 + 168) = v1;
  *(v0 + 256) = OBJC_IVAR____TtCV9PassKitUIP33_423F4157925DE25913FA4028798C2C6F21TransactionPickerView9ViewModel___observationRegistrar;
  *(v0 + 264) = sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  swift_beginAccess();
  if (*(*(v1 + 32) + 16))
  {
    v17 = *(v0 + 200);
    v18 = swift_getKeyPath();
    *(v0 + 176) = v17;
    sub_1BE04B594();
    v18, v19, v20, v21, v22, v23, v24, v25;
    *(v0 + 272) = *(v1 + 32);
    v26 = v17[12];
    v27 = v17[13];
    sub_1BE048C84();
    v28 = sub_1BE052A24();
    *(v0 + 280) = v28;
    v29 = v17[14];
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1BD6710F0;
    v30 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EDB0, &qword_1BE0ECB88);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD671620;
    *(v0 + 104) = &block_descriptor_150;
    *(v0 + 112) = v30;
    [v27 updatePreferredCategory:v26 forTransactionsWithIdentifiers:v28 paymentPass:v29 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v31 = *(v0 + 200);
    *(v0 + 232), v10, v11, v12, v13, v14, v15, v16;
    (*(v31 + 64))(0);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1BD6710F0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = *v8;
  v10 = *(*v8 + 48);
  *(*v8 + 288) = v10;
  if (v10)
  {
    v11 = *(v9 + 240);
    v12 = *(v9 + 248);
    v13 = sub_1BD67128C;
  }

  else
  {
    *(v9 + 272), a2, a3, a4, a5, a6, a7, a8;
    v11 = *(v9 + 240);
    v12 = *(v9 + 248);
    v13 = sub_1BD671208;
  }

  return MEMORY[0x1EEE6DFA0](v13, v11, v12);
}

uint64_t sub_1BD671208(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 280);
  v10 = *(v8 + 200);
  *(v8 + 232), a2, a3, a4, a5, a6, a7, a8;

  (*(v10 + 64))(1);

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1BD67128C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v90 = v8;
  v10 = *(v8 + 280);
  v9 = *(v8 + 288);
  v11 = *(v8 + 272);
  *(v8 + 232), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  sub_1BE04D1E4();
  sub_1BE048C84();
  v12 = v9;
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C34();
  v11, v15, v16, v17, v18, v19, v20, v21;

  if (os_log_type_enabled(v13, v14))
  {
    v29 = *(v8 + 288);
    v30 = *(v8 + 272);
    v86 = *(v8 + 216);
    v87 = *(v8 + 208);
    v88 = *(v8 + 224);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v89 = v33;
    *v31 = 136315394;
    v34 = sub_1BE052A44();
    v36 = v35;
    v30, v35, v37, v38, v39, v40, v41, v42;
    v43 = sub_1BD123690(v34, v36, &v89);
    v36, v44, v45, v46, v47, v48, v49, v50;
    *(v31 + 4) = v43;
    *(v31 + 12) = 2112;
    v51 = v29;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v52;
    *v32 = v52;
    _os_log_impl(&dword_1BD026000, v13, v14, "Failed to update transaction categories:%s error: %@", v31, 0x16u);
    sub_1BD0DE53C(v32, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33, v53, v54, v55, v56, v57, v58, v59);
    MEMORY[0x1BFB45F20](v33, -1, -1);
    MEMORY[0x1BFB45F20](v31, -1, -1);

    (*(v86 + 8))(v88, v87);
  }

  else
  {
    v61 = *(v8 + 216);
    v60 = *(v8 + 224);
    v62 = *(v8 + 208);
    *(v8 + 272), v22, v23, v24, v25, v26, v27, v28;

    (*(v61 + 8))(v60, v62);
  }

  v63 = *(v8 + 200);
  if (*(v63 + 40))
  {
    KeyPath = swift_getKeyPath();
    v65 = swift_task_alloc();
    *(v65 + 16) = v63;
    *(v65 + 24) = 0;
    *(v8 + 192) = v63;
    sub_1BE04B584();
    KeyPath, v66, v67, v68, v69, v70, v71, v72;
  }

  else
  {
    *(v63 + 40) = 0;
  }

  v73 = *(v8 + 200);
  v74 = *(v8 + 288);
  if (*(v73 + 41) == 1)
  {

    *(v73 + 41) = 1;
  }

  else
  {
    v75 = swift_getKeyPath();
    v76 = swift_task_alloc();
    *(v76 + 16) = v73;
    *(v76 + 24) = 1;
    *(v8 + 184) = v73;
    sub_1BE04B584();

    v75, v77, v78, v79, v80, v81, v82, v83;
  }

  v84 = *(v8 + 8);

  return v84();
}

uint64_t sub_1BD671620(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x1EEE6DEE8](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

void sub_1BD6716CC()
{
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 24);
  v10 = swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();
  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = swift_getKeyPath();
  sub_1BE04B5B4();
  v18, v19, v20, v21, v22, v23, v24, v25;
  swift_beginAccess();
  sub_1BD4C0580(v9, v26, v27, v28, v29, v30, v31, v32);
  swift_endAccess();
  v33 = swift_getKeyPath();
  sub_1BE04B5A4();
  v33, v34, v35, v36, v37, v38, v39, v40;
}

void sub_1BD67183C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 24);
  v10 = swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();
  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = swift_getKeyPath();
  sub_1BE04B5B4();
  v18, v19, v20, v21, v22, v23, v24, v25;
  swift_beginAccess();
  sub_1BD53540C(v9);
  swift_endAccess();
  v9, v26, v27, v28, v29, v30, v31, v32;
  v33 = swift_getKeyPath();
  sub_1BE04B5A4();
  v33, v34, v35, v36, v37, v38, v39, v40;
}

id sub_1BD6719B4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v102 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v102 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v102 - v16;
  v18 = *a1;
  v106 = *a2;
  KeyPath = swift_getKeyPath();
  v107 = a3;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel, &unk_1BE0EC688);
  sub_1BE04B594();
  KeyPath, v20, v21, v22, v23, v24, v25, v26;
  v27 = *(a3 + 42);
  v28 = &OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction;
  v29 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction;
  v105 = v18;
  result = *(v18 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction);
  if (v27)
  {
    result = [result amount];
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    v31 = result;
    v32 = sub_1BE0533F4();
    v34 = v33;
    v36 = v35;

    v7 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction;
    result = [*(v106 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) amount];
    if (!result)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v37 = result;
    v14 = sub_1BE0533F4();
    v17 = v38;
    v28 = v39;

    v40 = MEMORY[0x1BFB40440](v32, v34, v36, v14, v17, v28);
    v41 = *(v105 + v29);
    if ((v40 & 1) == 0)
    {
      result = [v41 amount];
      if (!result)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v72 = result;
      v73 = sub_1BE0533F4();
      v75 = v74;
      v77 = v76;

      result = [*(v106 + v7) amount];
      if (!result)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v78 = result;
      v79 = sub_1BE0533F4();
      v81 = v80;
      v83 = v82;

      v71 = MEMORY[0x1BFB403F0](v79, v81, v83, v73, v75, v77);
      return (v71 & 1);
    }

    v11 = &selRef_hoursOfDay;
    result = [v41 identifier];
    if (!result)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v42 = result;
    v6 = sub_1BE052434();
    v44 = v43;

    result = [*(v106 + v7) identifier];
    if (result)
    {
LABEL_13:
      v53 = result;
      v54 = sub_1BE052434();
      v56 = v55;

      if (v6 == v54 && v44 == v56)
      {
        v44, v57, v58, v59, v60, v61, v62, v63;
        v56, v64, v65, v66, v67, v68, v69, v70;
        v71 = 0;
      }

      else
      {
        v71 = sub_1BE053B84();
        v44, v88, v89, v90, v91, v92, v93, v94;
        v56, v95, v96, v97, v98, v99, v100, v101;
      }

      return (v71 & 1);
    }

    __break(1u);
  }

  v103 = v11;
  result = [result transactionDate];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v45 = result;
  sub_1BE04AEE4();

  v46 = *v28;
  result = [*(v106 + *v28) transactionDate];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v47 = result;
  sub_1BE04AEE4();

  LOBYTE(v47) = sub_1BE04AED4();
  v48 = *(v7 + 8);
  v48(v14, v6);
  v48(v17, v6);
  v49 = *(v105 + v29);
  if (v47)
  {
    v50 = v46;
    result = [v49 identifier];
    if (result)
    {
      v51 = result;
      v6 = sub_1BE052434();
      v44 = v52;

      result = [*(v106 + v50) identifier];
      if (result)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

    goto LABEL_29;
  }

  result = [v49 transactionDate];
  if (!result)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v84 = result;
  v85 = v103;
  sub_1BE04AEE4();

  result = [*(v106 + v46) transactionDate];
  if (result)
  {
    v86 = result;
    v87 = v104;
    sub_1BE04AEE4();

    v71 = sub_1BE04AE74();
    v48(v87, v6);
    v48(v85, v6);
    return (v71 & 1);
  }

LABEL_34:
  __break(1u);
  return result;
}

id *sub_1BD671F08(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[4], v16, v17, v18, v19, v20, v21, v22;

  v8[7], v23, v24, v25, v26, v27, v28, v29;
  v8[9], v30, v31, v32, v33, v34, v35, v36;

  v37 = OBJC_IVAR____TtCV9PassKitUIP33_423F4157925DE25913FA4028798C2C6F21TransactionPickerView9ViewModel___observationRegistrar;
  v38 = sub_1BE04B5D4();
  (*(*(v38 - 8) + 8))(v8 + v37, v38);
  return v8;
}

uint64_t sub_1BD671FC0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  sub_1BD671F08(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD672014@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_1BE04FD64();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = sub_1BE04FD84();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  sub_1BE04FD94();
  sub_1BE04FD74();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAC8, &qword_1BE0EC6B0) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_1BD6722A4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAC0, &qword_1BE0EC6A8);
  return sub_1BD672014((a2 + *(v3 + 44)));
}

uint64_t sub_1BD6722FC(void **__dst, void **a2, void **a3, unint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a3;
  v10 = __dst;
  v11 = a2 - __dst;
  v12 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v12 = a2 - __dst;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v13 < v15 >> 3)
  {
    v17 = a2;
    v18 = a4;
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v19 = &v18[v13];
    if (v11 < 8 || v17 >= v9)
    {
LABEL_21:
      a2 = v10;
      goto LABEL_54;
    }

    v20 = v17;
    while (1)
    {
      v21 = *v20;
      v96 = *v20;
      v22 = *v18;
      v95 = *v18;
      sub_1BE048964();
      sub_1BE048964();
      v23 = sub_1BD6719B4(&v96, &v95, a5);
      if (v8)
      {
        v21, v24, v25, v26, v27, v28, v29, v30;
        v22, v70, v71, v72, v73, v74, v75, v76;
        v77 = v19 - v18 + 7;
        if (v19 - v18 >= 0)
        {
          v77 = v19 - v18;
        }

        if (v10 < v18 || v10 >= (v18 + (v77 & 0xFFFFFFFFFFFFFFF8)) || v10 != v18)
        {
          v78 = 8 * (v77 >> 3);
          v79 = v10;
          goto LABEL_60;
        }

        goto LABEL_62;
      }

      v31 = v23;
      v21, v24, v25, v26, v27, v28, v29, v30;
      v22, v32, v33, v34, v35, v36, v37, v38;
      if ((v31 & 1) == 0)
      {
        break;
      }

      v39 = v20;
      v40 = v10 == v20++;
      if (!v40)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v10;
      if (v18 >= v19 || v20 >= v9)
      {
        goto LABEL_21;
      }
    }

    v39 = v18;
    v40 = v10 == v18++;
    if (v40)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v10 = *v39;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v16] <= a4)
  {
    v41 = a2;
    v42 = a4;
    memmove(a4, a2, 8 * v16);
    a4 = v42;
    a2 = v41;
  }

  v93 = a4;
  v19 = (a4 + 8 * v16);
  if (v14 < 8 || a2 <= v10)
  {
    v18 = a4;
    goto LABEL_54;
  }

  v43 = -a4;
  v91 = -a4;
LABEL_28:
  v92 = a2;
  v44 = a2 - 1;
  v45 = v19 + v43;
  --v9;
  v46 = v19;
  v47 = v19;
  while (1)
  {
    v49 = *--v47;
    v48 = v49;
    v96 = v49;
    v50 = v44;
    v51 = *v44;
    v95 = *v44;
    sub_1BE048964();
    sub_1BE048964();
    v52 = sub_1BD6719B4(&v96, &v95, a5);
    if (v8)
    {
      break;
    }

    v60 = v52;
    v48, v53, v54, v55, v56, v57, v58, v59;
    v51, v61, v62, v63, v64, v65, v66, v67;
    v68 = v9 + 1;
    if (v60)
    {
      v69 = v50;
      if (v68 != v92)
      {
        *v9 = *v50;
      }

      v18 = v93;
      v19 = v46;
      if (v46 <= v93 || (a2 = v69, v43 = v91, v69 <= v10))
      {
        a2 = v69;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v68 != v46)
    {
      *v9 = *v47;
    }

    v45 -= 8;
    --v9;
    v46 = v47;
    v44 = v50;
    if (v47 <= v93)
    {
      v19 = v47;
      a2 = v92;
      v18 = v93;
LABEL_54:
      v89 = v19 - v18 + 7;
      if (v19 - v18 >= 0)
      {
        v89 = v19 - v18;
      }

      if (a2 >= v18 && a2 < (v18 + (v89 & 0xFFFFFFFFFFFFFFF8)) && a2 == v18)
      {
        goto LABEL_62;
      }

      v78 = 8 * (v89 >> 3);
      v79 = a2;
LABEL_60:
      a2 = v18;
LABEL_61:
      memmove(v79, a2, v78);
      goto LABEL_62;
    }
  }

  v48, v53, v54, v55, v56, v57, v58, v59;
  v51, v80, v81, v82, v83, v84, v85, v86;
  if (v45 >= 0)
  {
    v87 = v45;
  }

  else
  {
    v87 = v45 + 7;
  }

  v88 = v87 >> 3;
  v79 = v92;
  a2 = v93;
  if (v92 < v93 || v92 >= (v93 + (v87 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v92, v93, 8 * v88);
    goto LABEL_62;
  }

  if (v92 != v93)
  {
    v78 = 8 * v88;
    goto LABEL_61;
  }

LABEL_62:
  a5, a2, a3, a4, a5, a6, a7, a8;
  return 1;
}

void sub_1BD6726BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;
    sub_1BE048C84();
    v17 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v34 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            return;
          }

          if (v34 >= v8)
          {
            goto LABEL_22;
          }

          v7 = *(v4 + 8 * v34);
          ++v17;
        }

        while (!v7);
        v17 = v34;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:
        v2, v10, v11, v12, v13, v14, v15, v16;
        return;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v18 = (v2[6] + ((v17 << 10) | (16 * __clz(__rbit64(v7)))));
      v20 = *v18;
      v19 = v18[1];
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      v21 = sub_1BE053D64();
      v29 = -1 << *(a1 + 32);
      v30 = v21 & ~v29;
      if (((*(v9 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v31 = ~v29;
      while (1)
      {
        v32 = (*(a1 + 48) + 16 * v30);
        v22 = v32[1];
        v33 = *v32 == v20 && v22 == v19;
        if (v33 || (sub_1BE053B84() & 1) != 0)
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v9 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v19, v22, v23, v24, v25, v26, v27, v28;
    }

LABEL_23:
    i, v22, v23, v24, v25, v26, v27, v28;
    v19, v35, v36, v37, v38, v39, v40, v41;
  }
}

id sub_1BD672898(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v39 = a7;
  v40 = a8;
  v37 = a5;
  v38 = a6;
  v42 = a9;
  v13 = type metadata accessor for TransactionPickerView(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v36 - v17);
  type metadata accessor for TransactionPickerView.ViewModel(0);
  v19 = swift_allocObject();
  *(v19 + 40) = 0;
  *(v19 + 42) = 0;
  sub_1BE04B5C4();
  *(v19 + 88) = a1;
  v20 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccount_];
  *(v19 + 96) = a3;
  *(v19 + 104) = a4;
  v21 = a2;
  v23 = v38;
  v22 = v39;
  *(v19 + 48) = a2;
  *(v19 + 56) = v23;
  v24 = v37;
  *(v19 + 112) = v37;
  *(v19 + 120) = v22;
  *(v19 + 64) = v40;
  *(v19 + 72) = v42;
  *(v19 + 80) = v20;
  v25 = MEMORY[0x1E69E7CD0];
  *(v19 + 16) = MEMORY[0x1E69E7CC0];
  *(v19 + 24) = v25;
  *(v19 + 32) = v25;
  v26 = *(v14 + 28);
  *(v18 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  swift_storeEnumTagMultiPayload();
  v43 = v19;
  v27 = v21;
  v28 = a4;
  v29 = v24;
  sub_1BE048C84();
  v30 = v22;
  sub_1BE048964();
  sub_1BE051694();
  v31 = v45;
  *v18 = v44;
  v18[1] = v31;
  sub_1BD6732E8(v18, v41);
  v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EDB8, &qword_1BE0ECC10));
  v33 = sub_1BE04F894();
  v34 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  sub_1BD674CD4(v18);
  return v34;
}

uint64_t sub_1BD672B34(uint64_t a1)
{
  result = sub_1BE04B5D4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1BD672C80(uint64_t a1)
{
  sub_1BD672D64(319, &qword_1EBD4EA98, type metadata accessor for TransactionPickerView.ViewModel, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1BD672D64(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD672D64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD672E14()
{
  result = qword_1EBD4EAA0;
  if (!qword_1EBD4EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EAA0);
  }

  return result;
}

unint64_t sub_1BD672EB0()
{
  result = qword_1EBD4EAB8;
  if (!qword_1EBD4EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EAB8);
  }

  return result;
}

unint64_t sub_1BD672F14()
{
  result = qword_1EBD4EAF8;
  if (!qword_1EBD4EAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAE0, &qword_1BE0EC6D0);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB00, &unk_1BE0EC6F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52030, &qword_1BE0B7570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB08, &qword_1BE0EC700);
    sub_1BD673098();
    swift_getOpaqueTypeConformance2();
    sub_1BD6731E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EAF8);
  }

  return result;
}

unint64_t sub_1BD673098()
{
  result = qword_1EBD4EB10;
  if (!qword_1EBD4EB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB00, &unk_1BE0EC6F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB18, &unk_1BE0EC708);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD4EB20, &qword_1EBD4EB18, &unk_1BE0EC708, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410, &unk_1BE0D2B20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EB10);
  }

  return result;
}

unint64_t sub_1BD6731E0()
{
  result = qword_1EBD4EB28;
  if (!qword_1EBD4EB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB08, &qword_1BE0EC700);
    sub_1BD673098();
    sub_1BD0DE4F4(&qword_1EBD4EB30, &qword_1EBD4EB38, &qword_1BE0EC718, MEMORY[0x1E697F598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EB28);
  }

  return result;
}

uint64_t sub_1BD673298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD6732E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD67334C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6733B0()
{
  v2 = *(type metadata accessor for TransactionPickerView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD126968;

  return sub_1BD66AB9C(v4, v5, v0 + v3);
}

void sub_1BD67348C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TransactionPickerView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1BD66ACF8(a1, a2, v6);
}

void sub_1BD67350C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a3[1];
  swift_retain_n();
  if (v8 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v195 = *a1;
    if (*a1)
    {
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_91;
    }

    goto LABEL_131;
  }

  v189 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    if (v16 + 1 >= v8)
    {
      goto LABEL_20;
    }

    v20 = *a3;
    v21 = *(*a3 + 8 * v19);
    v22 = *(*a3 + 8 * v16);
    v198 = v22;
    v199 = v21;
    sub_1BE048964();
    sub_1BE048964();
    LODWORD(v195) = sub_1BD6719B4(&v199, &v198, a5);
    if (v6)
    {

      v17, v152, v153, v154, v155, v156, v157, v158;
      v166 = v21;
LABEL_103:
      v166, v159, v160, v161, v162, v163, v164, v165;
      v22, v181, v182, v183, v184, v185, v186, v187;
      return;
    }

    v21, v23, v24, v25, v26, v27, v28, v29;
    v22, v30, v31, v32, v33, v34, v35, v36;
    v37 = v18 + 2;
    v190 = v18;
    v38 = 8 * v18;
    v39 = (v20 + v38 + 16);
    while (v8 != v37)
    {
      v41 = *v39;
      v198 = *(v39 - 1);
      v40 = v198;
      v199 = v41;
      sub_1BE048964();
      sub_1BE048964();
      v42 = sub_1BD6719B4(&v199, &v198, a5);
      v41, v43, v44, v45, v46, v47, v48, v49;
      v40, v50, v51, v52, v53, v54, v55, v56;
      ++v37;
      ++v39;
      if ((v195 ^ v42))
      {
        v8 = v37 - 1;
        break;
      }
    }

    if ((v195 & 1) == 0)
    {
      goto LABEL_18;
    }

    v57 = v190;
    if (v8 < v190)
    {
      goto LABEL_125;
    }

    if (v190 < v8)
    {
      v58 = 8 * v8 - 8;
      v59 = v8;
      do
      {
        if (v57 != --v59)
        {
          v60 = *a3;
          if (!*a3)
          {
            goto LABEL_129;
          }

          v61 = *(v60 + v38);
          *(v60 + v38) = *(v60 + v58);
          *(v60 + v58) = v61;
        }

        ++v57;
        v58 -= 8;
        v38 += 8;
      }

      while (v57 < v59);
LABEL_18:
      v19 = v8;
      v18 = v190;
      goto LABEL_20;
    }

    v19 = v8;
    v18 = v190;
LABEL_20:
    v62 = a3[1];
    if (v19 >= v62)
    {
      goto LABEL_28;
    }

    if (__OFSUB__(v19, v18))
    {
      goto LABEL_121;
    }

    if (v19 - v18 >= v189)
    {
LABEL_28:
      if (v19 < v18)
      {
        goto LABEL_120;
      }

      goto LABEL_29;
    }

    v63 = v18 + v189;
    if (__OFADD__(v18, v189))
    {
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

    if (v63 >= v62)
    {
      v63 = a3[1];
    }

    if (v63 < v18)
    {
      goto LABEL_124;
    }

    if (v19 == v63)
    {
      goto LABEL_28;
    }

    v117 = *a3;
    v118 = *a3 + 8 * v19 - 8;
    v191 = v18;
    v119 = v18 - v19;
    v188 = v63;
    do
    {
      v194 = v19;
      v195 = v119;
      v120 = *(v117 + 8 * v19);
      v121 = v119;
      v122 = v118;
      do
      {
        v22 = *v118;
        v198 = *v118;
        v199 = v120;
        sub_1BE048964();
        sub_1BE048964();
        v123 = sub_1BD6719B4(&v199, &v198, a5);
        if (v6)
        {

          v17, v174, v175, v176, v177, v178, v179, v180;
          v166 = v120;
          goto LABEL_103;
        }

        v131 = v123;
        v120, v124, v125, v126, v127, v128, v129, v130;
        v22, v132, v133, v134, v135, v136, v137, v138;
        if ((v131 & 1) == 0)
        {
          break;
        }

        if (!v117)
        {
          goto LABEL_127;
        }

        v139 = *v118;
        v120 = *(v118 + 8);
        *v118 = v120;
        *(v118 + 8) = v139;
        v118 -= 8;
      }

      while (!__CFADD__(v121++, 1));
      v19 = v194 + 1;
      v118 = v122 + 8;
      v119 = v195 - 1;
    }

    while (v194 + 1 != v188);
    v19 = v188;
    v18 = v191;
    if (v188 < v191)
    {
      goto LABEL_120;
    }

LABEL_29:
    v193 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1BD1D7844(0, *(v17 + 2) + 1, 1, v17, v12, v13, v14, v15);
    }

    v65 = *(v17 + 2);
    v64 = *(v17 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v17 = sub_1BD1D7844((v64 > 1), v65 + 1, 1, v17, v12, v13, v14, v15);
    }

    *(v17 + 2) = v66;
    v67 = &v17[16 * v65];
    *(v67 + 4) = v18;
    *(v67 + 5) = v193;
    v195 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v65)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v16 = v193;
    if (v193 >= v8)
    {
      goto LABEL_89;
    }
  }

  while (2)
  {
    v68 = v66 - 1;
    if (v66 >= 4)
    {
      v73 = &v17[16 * v66 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_107;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_108;
      }

      v80 = &v17[16 * v66];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_110;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_113;
      }

      if (v84 >= v76)
      {
        v102 = &v17[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_119;
        }

        if (v71 < v105)
        {
          v68 = v66 - 2;
        }
      }

      else
      {
LABEL_48:
        if (v72)
        {
          goto LABEL_109;
        }

        v85 = &v17[16 * v66];
        v87 = *v85;
        v86 = *(v85 + 1);
        v88 = __OFSUB__(v86, v87);
        v89 = v86 - v87;
        v90 = v88;
        if (v88)
        {
          goto LABEL_112;
        }

        v91 = &v17[16 * v68 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_115;
        }

        if (__OFADD__(v89, v94))
        {
          goto LABEL_116;
        }

        if (v89 + v94 < v71)
        {
          goto LABEL_62;
        }

        if (v71 < v94)
        {
          v68 = v66 - 2;
        }
      }
    }

    else
    {
      if (v66 == 3)
      {
        v69 = *(v17 + 4);
        v70 = *(v17 + 5);
        v79 = __OFSUB__(v70, v69);
        v71 = v70 - v69;
        v72 = v79;
        goto LABEL_48;
      }

      v95 = &v17[16 * v66];
      v97 = *v95;
      v96 = *(v95 + 1);
      v79 = __OFSUB__(v96, v97);
      v89 = v96 - v97;
      v90 = v79;
LABEL_62:
      if (v90)
      {
        goto LABEL_111;
      }

      v98 = &v17[16 * v68];
      v100 = *(v98 + 4);
      v99 = *(v98 + 5);
      v79 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v79)
      {
        goto LABEL_114;
      }

      if (v101 < v89)
      {
        goto LABEL_3;
      }
    }

    v106 = v68 - 1;
    if (v68 - 1 < v66)
    {
      v107 = *a3;
      if (!*a3)
      {
        goto LABEL_126;
      }

      v108 = *&v17[16 * v106 + 32];
      v109 = *&v17[16 * v68 + 40];
      v110 = (v107 + 8 * v108);
      v111 = (v107 + 8 * *&v17[16 * v68 + 32]);
      v112 = (v107 + 8 * v109);
      sub_1BE048964();
      sub_1BD6722FC(v110, v111, v112, v195, a5, v113, v114, v115);
      if (v6)
      {

        v17, v167, v168, v169, v170, v171, v172, v173;
        return;
      }

      if (v109 < v108)
      {
        goto LABEL_105;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1BD5ED6C8(v17, v9, v10, v11, v12, v13, v14, v15);
      }

      if (v106 >= *(v17 + 2))
      {
        goto LABEL_106;
      }

      v116 = &v17[16 * v106];
      *(v116 + 4) = v108;
      *(v116 + 5) = v109;
      v200 = v17;
      sub_1BD5ED63C(v68);
      v17 = v200;
      v66 = *(v200 + 2);
      if (v66 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  v17 = sub_1BD5ED6C8(v17, v9, v10, v11, v12, v13, v14, v15);
LABEL_91:
  v200 = v17;
  v141 = *(v17 + 2);
  if (v141 < 2)
  {
LABEL_99:
    v17, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    while (1)
    {
      v142 = *a3;
      if (!*a3)
      {
        break;
      }

      v143 = *&v17[16 * v141];
      v144 = *&v17[16 * v141 + 24];
      v145 = (v142 + 8 * v143);
      v146 = (v142 + 8 * *&v17[16 * v141 + 16]);
      v147 = (v142 + 8 * v144);
      sub_1BE048964();
      sub_1BD6722FC(v145, v146, v147, v195, a5, v148, v149, v150);
      if (v6)
      {
        goto LABEL_99;
      }

      if (v144 < v143)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1BD5ED6C8(v17, v9, v10, v11, v12, v13, v14, v15);
      }

      if (v141 - 2 >= *(v17 + 2))
      {
        goto LABEL_118;
      }

      v151 = &v17[16 * v141];
      *v151 = v143;
      *(v151 + 1) = v144;
      v200 = v17;
      sub_1BD5ED63C(v141 - 1);
      v17 = v200;
      v141 = *(v200 + 2);
      if (v141 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_128:
    a5, v9, v10, v11, v12, v13, v14, v15;
    __break(1u);
LABEL_129:

    __break(1u);
LABEL_130:

    __break(1u);
LABEL_131:

    __break(1u);
  }
}

void sub_1BD673C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = (*a4 + 8 * a3 - 8);
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v31 = v10;
    v32 = v9;
    while (1)
    {
      v34 = v11;
      v33 = *v9;
      v12 = v33;
      sub_1BE048964();
      sub_1BE048964();
      v13 = sub_1BD6719B4(&v34, &v33, a5);
      v11, v14, v15, v16, v17, v18, v19, v20;
      v12, v21, v22, v23, v24, v25, v26, v27;
      if (v5)
      {
        break;
      }

      if (v13)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v28 = *v9;
        v11 = v9[1];
        *v9 = v11;
        v9[1] = v28;
        --v9;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v32 + 1;
      v10 = v31 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1BD673D78(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  swift_retain_n();
  v5 = sub_1BE053B14();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1BE0527B4();
        v8[2] = v7;
      }

      v23[0] = (v8 + 4);
      v23[1] = v7;
      sub_1BE048964();
      sub_1BD67350C(v23, v24, a1, v6, a2);
      a2, v9, v10, v11, v12, v13, v14, v15;
      v8[2] = 0;

      v8, v16, v17, v18, v19, v20, v21, v22;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1BE048964();
    sub_1BD673C80(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1BD673EC0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1BD5F0648(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v15[0] = v4 + 32;
  v15[1] = v6;
  sub_1BE048964();
  sub_1BD673D78(v15, a2);
  a2, v7, v8, v9, v10, v11, v12, v13;
  sub_1BE0538D4();
}

uint64_t objectdestroy_59Tm_2()
{
  v1 = (type metadata accessor for TransactionPickerView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v2[1], v10, v11, v12, v13, v14, v15, v16;
  v17 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_1BE04E354();
    (*(*(v25 - 8) + 8))(v2 + v17, v25);
  }

  else
  {
    *(v2 + v17), v18, v19, v20, v21, v22, v23, v24;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD6740FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD673298(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD6741B0()
{
  result = qword_1EBD4EBD0;
  if (!qword_1EBD4EBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBD8, &unk_1BE0EC828);
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EBD0);
  }

  return result;
}

uint64_t sub_1BD6742AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TransactionPickerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD674360()
{
  result = qword_1EBD4EC70;
  if (!qword_1EBD4EC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EC68, &unk_1BE0EC988);
    sub_1BD19D16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EC70);
  }

  return result;
}

unint64_t sub_1BD6743F4()
{
  result = qword_1EBD4ECB0;
  if (!qword_1EBD4ECB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ECA8, &qword_1BE0EC9D0);
    sub_1BD6740FC(&qword_1EBD4ECB8, &qword_1EBD4ECC0, &qword_1BE0EC9D8, sub_1BD6744A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ECB0);
  }

  return result;
}

unint64_t sub_1BD6744A4()
{
  result = qword_1EBD4ECC8;
  if (!qword_1EBD4ECC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ECD0, &qword_1BE0EC9E0);
    sub_1BD67455C();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ECC8);
  }

  return result;
}

unint64_t sub_1BD67455C()
{
  result = qword_1EBD4ECD8;
  if (!qword_1EBD4ECD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ECE0, &qword_1BE0EC9E8);
    sub_1BD628C9C();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ECD8);
  }

  return result;
}

unint64_t sub_1BD67461C()
{
  result = qword_1EBD4ECF0;
  if (!qword_1EBD4ECF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EC90, &qword_1BE0EC9B8);
    sub_1BD0DE4F4(&qword_1EBD4ECF8, &qword_1EBD4ED00, &qword_1BE0ECA30, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0, &qword_1BE0B6C50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ECF0);
  }

  return result;
}

unint64_t sub_1BD674728()
{
  result = qword_1EBD4ED28;
  if (!qword_1EBD4ED28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ED18, &qword_1BE0ECA50);
    sub_1BD6747E0();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED28);
  }

  return result;
}

unint64_t sub_1BD6747E0()
{
  result = qword_1EBD4ED30;
  if (!qword_1EBD4ED30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ED38, &qword_1BE0ECA60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37358, &qword_1BE0D73D0);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    sub_1BD67491C();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED30);
  }

  return result;
}

unint64_t sub_1BD67491C()
{
  result = qword_1EBD4ED40;
  if (!qword_1EBD4ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED40);
  }

  return result;
}

unint64_t sub_1BD674970()
{
  result = qword_1EBD4ED68;
  if (!qword_1EBD4ED68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ED60, &qword_1BE0ECAD8);
    sub_1BD672E14();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED68);
  }

  return result;
}

unint64_t sub_1BD674A34()
{
  result = qword_1EBD4ED80;
  if (!qword_1EBD4ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED80);
  }

  return result;
}

unint64_t sub_1BD674AC0()
{
  result = qword_1EBD4ED98;
  if (!qword_1EBD4ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED98);
  }

  return result;
}

uint64_t sub_1BD674B98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD670D6C(a1, v4, v5, v6);
}

void sub_1BD674C4C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
  sub_1BE048C84();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD674C98()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
  sub_1BE048C84();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD674CD4(uint64_t a1)
{
  v2 = type metadata accessor for TransactionPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD674D98(uint64_t a1)
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v45);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v45[0];
  if (v45[0])
  {
    v20 = [v45[0] currencyCode];
    if (v20)
    {
      v21 = v20;
      sub_1BE052434();
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
    sub_1BE051914();
    v42 = *v45;
    v43 = v46;
    v44 = v47;
    MEMORY[0x1BFB3E970](&v41, v24);
    v25 = sub_1BE053344();
    sub_1BD0DE53C(v45, &unk_1EBD4EED0, &qword_1BE0CEA30);
    if (v23)
    {
      v26 = sub_1BE052404();
      v23, v27, v28, v29, v30, v31, v32, v33;
    }

    else
    {
      v26 = 0;
    }

    v34 = [objc_allocWithZone(PKEnterCurrencyAmountView) initWithCurrency:v26 amount:v25];

    if (v34)
    {
      v35 = [v34 backgroundColor];
      [v34 setKeyboardColor_];

      [v34 setShowsDecimalPointButton_];
      v36 = *MEMORY[0x1E69DB980];
      v37 = PKRoundedSystemFontOfSizeAndWeight(60.0, *MEMORY[0x1E69DB980]);
      v38 = PKRoundedSystemFontOfSizeAndWeight(36.0, v36);
      [v34 setAmountFont_];
      [v34 setCurrencySymbolFont_];
      v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v34 setKerning_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF08, &qword_1BE0ECD98);
      sub_1BE04FF74();
      v40 = v42;
      [v34 setDelegate_];

      if (*(v2 + 96))
      {
        [v34 setCurrentAmount_];
      }

      sub_1BD6750D4(v34);
    }

    else
    {
      [objc_allocWithZone(PKEnterCurrencyAmountView) init];
      v38 = v19;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6750D4(void *a1)
{
  v29 = *(v1 + 144);
  v30 = v29;
  v31 = *(&v29 + 1);
  sub_1BD0DE19C(&v31, &v28, &unk_1EBD4EF10, &qword_1BE0C2670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v28)
  {
    goto LABEL_10;
  }

  v3 = *(v1 + 112);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v4 displayableDenominations];
  if (v5)
  {
    if (PKIsVision())
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1BD677224();
    v6 = sub_1BE052744();
    v5 = sub_1BE052724();
    v6, v7, v8, v9, v10, v11, v12, v13;
    if (PKIsVision())
    {
      goto LABEL_8;
    }
  }

  if (!_UISolariumFeatureFlagEnabled())
  {

    v17 = [objc_allocWithZone(PKNumberPadSuggestionsView) initWithDefaultFrame];
    if (!v17)
    {
      sub_1BD0DE53C(&v30, &qword_1EBD54350, &unk_1BE0B8D00);

      return;
    }

    v5 = v17;
    v18 = [v4 displayableDenominations];
    if (!v18)
    {
      sub_1BD677224();
      v19 = sub_1BE052744();
      v18 = sub_1BE052724();
      v19, v20, v21, v22, v23, v24, v25, v26;
    }

    [v5 setSuggestions_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF08, &qword_1BE0ECD98);
    sub_1BE04FF74();
    v27 = v29;
    [v5 setDelegate_];

    [a1 setInputAccessoryView_];
    goto LABEL_9;
  }

LABEL_8:
  [a1 setAmountSuggestions_];
LABEL_9:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF08, &qword_1BE0ECD98);
  sub_1BE04FF74();
  v14 = v29;
  v15 = *(v29 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_view);
  *(v29 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_view) = a1;
  v16 = a1;

  v29 = v30;
  LOBYTE(v28) = 1;
  sub_1BE0516B4();

LABEL_10:
  sub_1BD0DE53C(&v30, &qword_1EBD54350, &unk_1BE0B8D00);
}

id sub_1BD67536C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF08, &qword_1BE0ECD98);
  sub_1BE04FF74();
  v3 = v11;
  v12 = *(v1 + 112);
  v4 = *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration];
  *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration] = v12;
  sub_1BD0DE19C(&v12, v10, &qword_1EBD4EF00, &qword_1BE0ECD90);

  sub_1BE04FF74();
  v5 = v11;
  v6 = *(v1 + 104);
  v7 = *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel];
  *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel] = v6;
  v8 = v6;

  if (v12)
  {
    sub_1BD6750D4(a1);
    [a1 showKeyboard];
  }

  return [a1 sizeToFit];
}

id sub_1BD675474()
{
  v1 = v0;
  v29 = *(v0 + 120);
  LOBYTE(v30) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  sub_1BE051914();
  v2 = v26;
  v3 = v27;
  v4 = v0[1];
  v26 = *v0;
  v27 = v4;
  v28 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
  sub_1BE051914();
  v5 = *(v0 + 56);
  v26 = *(v0 + 40);
  v27 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
  sub_1BE051914();
  v22 = *v24;
  v6 = *&v24[16];
  v7 = v25;
  v26 = *(v0 + 72);
  *&v27 = *(v0 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EEE0, &unk_1BE0ECCA0);
  sub_1BE051914();
  v8 = *v24;
  v9 = type metadata accessor for AppleBalanceEnterAmountView.Coordinator();
  v21 = *&v24[8];
  v10 = *(v1 + 13);
  *&v26 = *(v1 + 14);
  v11 = objc_allocWithZone(v9);
  v12 = OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration;
  *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration] = 0;
  *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_view] = 0;
  v13 = &v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__addDisabled];
  *v13 = v2;
  v13[16] = v3;
  v14 = &v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount];
  v15 = v29;
  v16 = v30;
  *(v14 + 8) = v31;
  *v14 = v15;
  *(v14 + 1) = v16;
  v17 = &v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide];
  *v17 = v22;
  *(v17 + 2) = v6;
  *(v17 + 3) = v7;
  v18 = &v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor];
  *v18 = v8;
  *(v18 + 8) = v21;
  *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel] = v10;
  *&v11[v12] = v26;
  v19 = v10;
  sub_1BD0DE19C(&v26, v24, &qword_1EBD4EF00, &qword_1BE0ECD90);
  v23.receiver = v11;
  v23.super_class = v9;
  return objc_msgSendSuper2(&v23, sel_init);
}

void sub_1BD6756EC(id result)
{
  if (result)
  {
    v2 = [result currentAmount];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1BE0533F4();
      v6 = v5;
      v8 = v7;

      v9 = (v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount);
      v10 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 16);
      v20[0] = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount);
      v20[1] = v10;
      v21 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 32);
      v11 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 16);
      v17 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount);
      v18 = v11;
      v19 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 32);
      v14 = v4;
      v15 = v6;
      v16 = v8;
      sub_1BD0DE19C(v20, v22, &unk_1EBD4EED0, &qword_1BE0CEA30);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
      sub_1BE0518F4();
      v22[0] = v17;
      v22[1] = v18;
      v23 = v19;
      sub_1BD0DE53C(v22, &unk_1EBD4EED0, &qword_1BE0CEA30);
      sub_1BD675BA4();
      v13 = v9[1];
      v17 = *v9;
      v18 = v13;
      v19 = *(v9 + 8);
      MEMORY[0x1BFB3E970](&v14, v12);
      sub_1BD675914(v14, v15, v16);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD675914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel);
    KeyPath = swift_getKeyPath();
    v10 = swift_getKeyPath();
    v11 = v8;
    v12 = v4;
    sub_1BE04D8B4(v73);
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
    v10, v20, v21, v22, v23, v24, v25, v26;

    v27 = v73[0];
    if (v73[0])
    {
      v28 = [v73[0] accountSummary];

      if (v28)
      {
        v29 = [v28 currentBalance];

        if (v29)
        {
          v30 = [v12 minAmount];
          v31 = sub_1BE0533F4();
          v33 = v32;
          v35 = v34;

          v36 = [v12 maxAmount];
          v37 = sub_1BE0533F4();
          v71 = v38;
          v72 = v37;
          v70 = v39;

          sub_1BE0533F4();
          v40 = sub_1BE053384();
          v68 = v41;
          v69 = v40;
          v67 = v42;
          v43 = [v12 maxBalance];
          v44 = sub_1BE0533F4();
          v65 = v45;
          v66 = v44;
          v64 = v46;

          if ((MEMORY[0x1BFB403F0](a1, a2, a3, v31, v33, v35) & 1) == 0 && (MEMORY[0x1BFB403F0](v72, v71, v70, a1, a2, a3) & 1) == 0)
          {
            MEMORY[0x1BFB403F0](v66, v65, v64, v69, v68, v67);
          }

          v48 = *(v3 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__addDisabled + 8);
          v49 = *(v3 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__addDisabled + 16);
          v73[0] = *(v3 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__addDisabled);
          v47 = v73[0];
          v73[1] = v48;
          v74 = v49;
          sub_1BE048964();
          sub_1BE048964();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
          sub_1BE0518F4();
          v48, v50, v51, v52, v53, v54, v55, v56;
          v47, v57, v58, v59, v60, v61, v62, v63;
        }
      }
    }
  }
}

void sub_1BD675BA4()
{
  v1 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v202 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v202 - v6;
  v8 = *(v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration);
  if (v8)
  {
    v212 = v5;
    v9 = v8;
    v10 = [v9 minAmount];
    v211 = sub_1BE0533F4();
    v12 = v11;
    v210 = v13;

    v14 = [v9 maxAmount];
    v15 = sub_1BE0533F4();
    v208 = v16;
    v209 = v15;
    v207 = v17;

    v18 = [v9 maxBalance];
    v19 = sub_1BE0533F4();
    v205 = v20;
    v206 = v19;
    v204 = v21;

    v22 = OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel;
    v23 = *(v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel);
    KeyPath = swift_getKeyPath();
    v25 = swift_getKeyPath();
    v26 = v23;
    sub_1BE04D8B4(&v216);
    KeyPath, v27, v28, v29, v30, v31, v32, v33;
    v25, v34, v35, v36, v37, v38, v39, v40;

    v41 = v216;
    if (!v216)
    {
      goto LABEL_12;
    }

    v42 = [v216 accountSummary];

    if (!v42)
    {
      goto LABEL_12;
    }

    v43 = [v42 currentBalance];

    if (!v43)
    {
      goto LABEL_12;
    }

    v203 = v43;
    v44 = *(v0 + v22);
    v45 = swift_getKeyPath();
    v46 = swift_getKeyPath();
    v47 = v44;
    sub_1BE04D8B4(&v216);
    v45, v48, v49, v50, v51, v52, v53, v54;
    v46, v55, v56, v57, v58, v59, v60, v61;

    v62 = v216;
    if (!v216)
    {
      __break(1u);
      goto LABEL_33;
    }

    v63 = [v216 currencyCode];

    v202 = v0;
    v64 = (v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount);
    v65 = *(v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 16);
    v216 = *(v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount);
    v217 = v65;
    v218 = *(v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 32);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
    MEMORY[0x1BFB3E970](&v213);
    if ((sub_1BE053444() & 1) == 0)
    {
      v67 = v64[1];
      v216 = *v64;
      v217 = v67;
      v218 = *(v64 + 8);
      MEMORY[0x1BFB3E970](&v213, v66);
      if ((sub_1BE053414() & 1) == 0)
      {

        return;
      }
    }

    v68 = v64[1];
    v216 = *v64;
    v217 = v68;
    v218 = *(v64 + 8);
    MEMORY[0x1BFB3E970](&v213, v66);
    if (sub_1BE053414())
    {
      (*(v212 + 104))(v7, *MEMORY[0x1E69B8060], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1BE0B69E0;
      v70 = v203;
      v71 = PKCurrencyAmountMake();

      if (v71)
      {
        v72 = [v71 minimalFormattedStringValue];

        v73 = v202;
        if (v72)
        {
          v74 = sub_1BE052434();
          v76 = v75;

          *(v69 + 56) = MEMORY[0x1E69E6158];
          *(v69 + 64) = sub_1BD110550();
          *(v69 + 32) = v74;
          *(v69 + 40) = v76;
          v77 = sub_1BE04B714();
          v79 = v78;
          v69, v78, v80, v81, v82, v83, v84, v85;
          (*(v212 + 8))(v7, v1);
          v87 = *(v73 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 16);
          v86 = *(v73 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 24);
          v216 = *(v73 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide);
          *&v217 = v87;
          *(&v217 + 1) = v86;
          v213 = v77;
          v214 = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
          sub_1BE0518F4();
          v88 = sub_1BE051494();
          v90 = *(v73 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor + 8);
          v91 = *(v73 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor + 16);
          *&v216 = *(v73 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor);
          v89 = v216;
          *(&v216 + 1) = v90;
          *&v217 = v91;
          v213 = v88;
          sub_1BE048964();
          sub_1BE048964();
          sub_1BE048964();
          sub_1BE048964();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EEE0, &unk_1BE0ECCA0);
          sub_1BE0518F4();
          v91, v92, v93, v94, v95, v96, v97, v98;
          v90, v99, v100, v101, v102, v103, v104, v105;
          v89, v106, v107, v108, v109, v110, v111, v112;
          v88, v113, v114, v115, v116, v117, v118, v119;

LABEL_12:
          return;
        }

        goto LABEL_34;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v120 = v64[1];
    v216 = *v64;
    v217 = v120;
    v218 = *(v64 + 8);
    MEMORY[0x1BFB3E970](&v213, v66);
    if (MEMORY[0x1BFB403F0](v213, v214, v215, v211, v12, v210))
    {
      v121 = sub_1BE053344();
      v122 = PKCurrencyAmountMake();

      if (!v122)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v123 = [v122 minimalFormattedStringValue];

      v124 = v202;
      if (v123)
      {
        goto LABEL_22;
      }

LABEL_31:

      return;
    }

    v125 = v64[1];
    v216 = *v64;
    v217 = v125;
    v218 = *(v64 + 8);
    MEMORY[0x1BFB3E970](&v213, v66);
    if (MEMORY[0x1BFB403F0](v209, v208, v207, v213, v214, v215))
    {
      v126 = sub_1BE053344();
      v127 = PKCurrencyAmountMake();

      if (!v127)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v123 = [v127 minimalFormattedStringValue];

      v124 = v202;
      if (!v123)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v177 = v64[1];
      v216 = *v64;
      v217 = v177;
      v218 = *(v64 + 8);
      MEMORY[0x1BFB3E970](&v213, v66);
      sub_1BE0533F4();
      v178 = sub_1BE053384();
      if ((MEMORY[0x1BFB403F0](v206, v205, v204, v178, v179, v180) & 1) == 0)
      {
        v183 = sub_1BE053344();
        v184 = PKCurrencyAmountMake();

        v124 = v202;
        if (!v184)
        {
LABEL_38:
          __break(1u);
          return;
        }

        v185 = [v184 minimalFormattedStringValue];

        if (v185)
        {
          v186 = sub_1BE052434();
          v188 = v187;

          v189 = v212;
          (*(v212 + 104))(v3, *MEMORY[0x1E69B8060], v1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v190 = swift_allocObject();
          *(v190 + 16) = xmmword_1BE0B69E0;
          *(v190 + 56) = MEMORY[0x1E69E6158];
          *(v190 + 64) = sub_1BD110550();
          *(v190 + 32) = v186;
          *(v190 + 40) = v188;
          v191 = sub_1BE04B714();
          v193 = v192;
          v190, v192, v194, v195, v196, v197, v198, v199;
          (*(v189 + 8))(v3, v1);
          v201 = *(v124 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 16);
          v200 = *(v124 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 24);
          v216 = *(v124 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide);
          *&v217 = v201;
          *(&v217 + 1) = v200;
          v213 = v191;
          v214 = v193;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
          sub_1BE0518F4();
          v144 = sub_1BE051494();
          goto LABEL_23;
        }

        goto LABEL_31;
      }

      v181 = sub_1BE053344();
      v182 = PKCurrencyAmountMake();

      v124 = v202;
      if (!v182)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v123 = [v182 minimalFormattedStringValue];

      if (!v123)
      {
        goto LABEL_31;
      }
    }

LABEL_22:
    v128 = sub_1BE052434();
    v130 = v129;

    v131 = v212;
    (*(v212 + 104))(v3, *MEMORY[0x1E69B8060], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_1BE0B69E0;
    *(v132 + 56) = MEMORY[0x1E69E6158];
    *(v132 + 64) = sub_1BD110550();
    *(v132 + 32) = v128;
    *(v132 + 40) = v130;
    v133 = sub_1BE04B714();
    v135 = v134;
    v132, v134, v136, v137, v138, v139, v140, v141;
    (*(v131 + 8))(v3, v1);
    v143 = *(v124 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 16);
    v142 = *(v124 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 24);
    v216 = *(v124 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide);
    *&v217 = v143;
    *(&v217 + 1) = v142;
    v213 = v133;
    v214 = v135;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
    sub_1BE0518F4();
    v144 = sub_1BE051464();
LABEL_23:
    v145 = v144;
    v147 = *(v124 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor + 8);
    v148 = *(v124 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor + 16);
    *&v216 = *(v124 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor);
    v146 = v216;
    *(&v216 + 1) = v147;
    *&v217 = v148;
    v213 = v144;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EEE0, &unk_1BE0ECCA0);
    sub_1BE0518F4();
    v148, v149, v150, v151, v152, v153, v154, v155;
    v147, v156, v157, v158, v159, v160, v161, v162;
    v146, v163, v164, v165, v166, v167, v168, v169;
    v145, v170, v171, v172, v173, v174, v175, v176;
  }
}
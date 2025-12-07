uint64_t sub_1BD260010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1BE0528A4();
  v4[9] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD2600A8, v6, v5);
}

uint64_t sub_1BD2600A8()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_authModel);
  v2 = (v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_unlockToAcceptAuthContent);
  v3 = v2[2];
  v4 = *v2;
  *(v0 + 32) = v2[1];
  *(v0 + 48) = v3;
  *(v0 + 16) = v4;
  sub_1BE048964();
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1BD26017C;

  return sub_1BDA809C4(v0 + 16, 0);
}

uint64_t sub_1BD26017C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 88);
  v11 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD267314, v11, v10);
}

char *NearbyPeerPaymentReceiverViewController.__allocating_init(userInfo:screenEdgeSwipeAction:dismissAction:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1BD265B54(a1, a2, a3, a4, a5);
  a3, v13, v14, v15, v16, v17, v18, v19;
  a5, v20, v21, v22, v23, v24, v25, v26;
  return v12;
}

char *NearbyPeerPaymentReceiverViewController.init(userInfo:screenEdgeSwipeAction:dismissAction:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = sub_1BD265B54(a1, a2, a3, a4, a5);
  a3, v8, v9, v10, v11, v12, v13, v14;
  a5, v15, v16, v17, v18, v19, v20, v21;
  return v7;
}

uint64_t sub_1BD260488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v10 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
  swift_beginAccess();
  sub_1BD26681C(v2 + v10, v9);
  v11 = _s9PassKitUI30NearbyPeerPaymentReceiverStateO2eeoiySbAC_ACtFZ_0(v9, a2);
  result = sub_1BD266EB0(v9, type metadata accessor for NearbyPeerPaymentReceiverState);
  if ((v11 & 1) == 0)
  {
    sub_1BD26681C(a2, v9);
    sub_1BD26681C(v2 + v10, v6);
    swift_beginAccess();
    sub_1BD266E48(v9, v2 + v10, type metadata accessor for NearbyPeerPaymentReceiverState);
    swift_endAccess();
    sub_1BD25F304(v6);
    sub_1BD266EB0(v6, type metadata accessor for NearbyPeerPaymentReceiverState);
    return sub_1BD266EB0(v9, type metadata accessor for NearbyPeerPaymentReceiverState);
  }

  return result;
}

double sub_1BD2605F4(char a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_1BE04D094();
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, v10, "NearbyPeerPayment: user accepting transfer after unlocking", v11, 2u);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v12 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v2 + v12, v31);
    v13 = v32;
    v14 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v14 + 112))(v13, v14);
    __swift_destroy_boxed_opaque_existential_0(v31, v15, v16, v17, v18, v19, v20, v21);
    v22 = *(v2 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_authModel);
    sub_1BE048964();
    sub_1BDA81064();
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  return result;
}

uint64_t sub_1BD2608DC(char a1, SEL *a2, void *a3)
{
  v6 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for NearbyPeerPaymentReceiverViewController(0);
  v26.receiver = v3;
  v26.super_class = v9;
  objc_msgSendSuper2(&v26, *a2, a1 & 1);
  v10 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
  swift_beginAccess();
  sub_1BD26681C(v3 + v10, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  v12 = MEMORY[0x1E69BA680];
  *(inited + 16) = xmmword_1BE0B69E0;
  v13 = *v12;
  *(inited + 32) = *v12;
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v14;
  v15 = v13;
  v16 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v8, v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  return sub_1BD266EB0(v8, type metadata accessor for NearbyPeerPaymentReceiverState);
}

id sub_1BD260AB4(uint64_t a1, uint64_t a2)
{
  v29.receiver = v2;
  v29.super_class = type metadata accessor for NearbyPeerPaymentReceiverViewController(0);
  objc_msgSendSuper2(&v29, sel_viewDidLayoutSubviews);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v30.origin.x = v6;
  v30.origin.y = v8;
  v30.size.width = v10;
  v30.size.height = v12;
  MaxY = CGRectGetMaxY(v30);
  result = [v2 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = result;
  [result safeAreaInsets];
  v16 = v15;

  result = [v2 view];
  if (result)
  {
    v17 = result;
    v18 = MaxY - v16 + -70.0 + -30.0;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v31.origin.x = v20;
    v31.origin.y = v22;
    v31.size.width = v24;
    v31.size.height = v26;
    MidX = CGRectGetMidX(v31);
    v28 = *&v2[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController] + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter;
    swift_beginAccess();
    *v28 = MidX;
    *(v28 + 8) = v18;
    *(v28 + 16) = 0;
    return sub_1BD632A40(MidX, v18);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1BD260CAC()
{
  v1 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  swift_beginAccess();
  sub_1BD0EE8CC(v0 + v1, v11);
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v3 + 96))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v11, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BD260DC8(uint64_t a1, void *a2)
{
  sub_1BD38EACC(a2);
  v4 = v2 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 72);
  v8 = a2;
  v7(a2, v5, v6);
  return swift_endAccess();
}

id sub_1BD260F48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [v2 presentViewController:a2 animated:1 completion:0];
  }

  __break(1u);
  return result;
}

void sub_1BD260F90(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentingViewController];

    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1BD261084(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v178 = v3;
  ObjectType = swift_getObjectType();
  v171 = sub_1BE04BD74();
  v177 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v169 = &v167 - v8;
  v172 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0, &qword_1BE0B9180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v167 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v167 - v13;
  v15 = sub_1BE04C4C4();
  v175 = *(v15 - 8);
  v176 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v168 = &v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v179 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F660, &qword_1BE0C64A8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v180 = (&v167 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v167 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F668, &unk_1BE0C64B0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v167 - v26;
  v29 = *(v28 + 56);
  sub_1BD0DE19C(a1, &v167 - v26, &qword_1EBD3F660, &qword_1BE0C64A8);
  sub_1BD0DE19C(a2, &v27[v29], &qword_1EBD3F660, &qword_1BE0C64A8);
  v30 = *(v18 + 48);
  if (v30(v27, 1, v17) == 1)
  {
    if (v30(&v27[v29], 1, v17) == 1)
    {
      sub_1BD0DE53C(v27, &qword_1EBD3F660, &qword_1BE0C64A8);
      return;
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v27, v24, &qword_1EBD3F660, &qword_1BE0C64A8);
  if (v30(&v27[v29], 1, v17) == 1)
  {
    sub_1BD266EB0(v24, type metadata accessor for NearbyPeerPaymentReceiverState);
LABEL_6:
    sub_1BD0DE53C(v27, &unk_1EBD3F668, &unk_1BE0C64B0);
    goto LABEL_7;
  }

  v51 = &v27[v29];
  v52 = v179;
  sub_1BD266F10(v51, v179);
  v53 = _s9PassKitUI30NearbyPeerPaymentReceiverStateO2eeoiySbAC_ACtFZ_0(v24, v52);
  sub_1BD266EB0(v52, type metadata accessor for NearbyPeerPaymentReceiverState);
  sub_1BD266EB0(v24, type metadata accessor for NearbyPeerPaymentReceiverState);
  sub_1BD0DE53C(v27, &qword_1EBD3F660, &qword_1BE0C64A8);
  if (v53)
  {
    return;
  }

LABEL_7:
  v31 = v180;
  sub_1BD0DE19C(a2, v180, &qword_1EBD3F660, &qword_1BE0C64A8);
  if (v30(v31, 1, v17) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v35 = v178;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          v88 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v89 = swift_allocObject();
          v90 = ObjectType;
          v89[2] = v88;
          v89[3] = v90;
          v91 = sub_1BD266E30;
          goto LABEL_29;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
        v32 = swift_allocObject();
        v33 = v32;
        v34 = xmmword_1BE0C63C0;
        v36 = *&v35[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView];
        v37 = &OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView;
        goto LABEL_9;
      }

      sub_1BD043990(v31, v182);
      v77 = *&v35[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView];
      sub_1BD0EE8CC(v182, v181);
      v78 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
      swift_beginAccess();
      sub_1BD266DC0(v181, v77 + v78);
      swift_endAccess();
      sub_1BD97A1FC();
      sub_1BD0DE53C(v181, &qword_1EBD3F678, &unk_1BE0C64C0);
      v79 = [v35 view];
      if (v79)
      {
        v80 = v79;
        [v79 addSubview_];

        __swift_destroy_boxed_opaque_existential_0(v182, v81, v82, v83, v84, v85, v86, v87);
        goto LABEL_28;
      }

      __break(1u);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_1BD266EB0(v31, type metadata accessor for NearbyPeerPaymentReceiverState);
        goto LABEL_28;
      }

      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680, &unk_1BE0CCB00);
      *(v31 + *(v54 + 48) + 8), v55, v56, v57, v58, v59, v60, v61;
      v62 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
      swift_beginAccess();
      sub_1BD0EE8CC(&v35[v62], v182);
      v63 = v183;
      v64 = v184;
      __swift_project_boxed_opaque_existential_1(v182, v183);
      (*(v64 + 40))(v63, v64);
      v66 = v175;
      v65 = v176;
      if (v175[6](v14, 1, v176) == 1)
      {
        sub_1BD0DE53C(v14, &unk_1EBD476F0, &qword_1BE0B9180);
        __swift_destroy_boxed_opaque_existential_0(v182, v67, v68, v69, v70, v71, v72, v73);
        v74 = v171;
        v75 = v177;
        v76 = v169;
      }

      else
      {
        v92 = v168;
        v66[4](v168, v14, v65);
        __swift_destroy_boxed_opaque_existential_0(v182, v93, v94, v95, v96, v97, v98, v99);
        sub_1BE04C474();
        v100 = sub_1BE053344();
        sub_1BE04C494();
        v102 = v101;
        v103 = sub_1BE052404();
        v102, v104, v105, v106, v107, v108, v109, v110;
        v111 = PKCurrencyAmountMake();

        v112 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
        swift_beginAccess();
        v113 = *&v35[v112];
        *&v35[v112] = v111;
        v114 = v111;

        sub_1BD38D490();
        v115 = v167;
        v66[2](v167, v92, v65);
        (v66[7])(v115, 0, 1, v65);
        sub_1BD28D16C(0, 0, v115);
        sub_1BD0DE53C(v115, &unk_1EBD476F0, &qword_1BE0B9180);
        v116 = [v35 view];
        v75 = v177;
        v76 = v169;
        if (!v116)
        {
LABEL_36:
          __break(1u);
          return;
        }

        v117 = v116;
        [v116 setNeedsLayout];

        (v66[1])(v92, v65);
        v74 = v171;
      }

      v118 = *(*&v35[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView] + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_buttonsView);
      v119 = *MEMORY[0x1E69B8050];
      v120 = *(v75 + 104);
      v120(v76, v119, v74);
      v176 = v118;
      v121 = PKPassKitBundle();
      if (v121)
      {
        v122 = v121;
        v123 = v76;
        v124 = sub_1BE04B6F4();
        v126 = v125;

        v127 = *(v75 + 8);
        v177 = v75 + 8;
        v175 = v127;
        (v127)(v123, v74);
        v128 = v74;
        v129 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v130 = v173;
        sub_1BE04AFD4();
        v131 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
        v132 = &v130[*(v131 + 20)];
        *v132 = v124;
        v132[1] = v126;
        v133 = &v130[*(v131 + 24)];
        *v133 = sub_1BD266E38;
        v133[1] = v129;
        v134 = v170;
        v120(v170, v119, v128);
        v135 = PKPassKitBundle();
        if (v135)
        {
          v136 = v135;
          v137 = v130;
          v138 = &v130[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688, &qword_1BE0C64D0) + 48)];
          v139 = v134;
          v140 = sub_1BE04B6F4();
          v142 = v141;

          (v175)(v139, v128);
          v143 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1BE04AFD4();
          v144 = &v138[*(v131 + 20)];
          *v144 = v140;
          v144[1] = v142;
          v145 = &v138[*(v131 + 24)];
          *v145 = sub_1BD266E40;
          v145[1] = v143;
          swift_storeEnumTagMultiPayload();
          v146 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
          v147 = v176;
          swift_beginAccess();
          sub_1BD266E48(v137, v147 + v146, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
          swift_endAccess();
          sub_1BD3BB48C();

          sub_1BD266EB0(v137, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
          sub_1BD0DE53C(v180, &unk_1EBD3F690, &unk_1BE0DA4D0);
          goto LABEL_28;
        }

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v32 = swift_allocObject();
  v33 = v32;
  v34 = xmmword_1BE0C63C0;
  v35 = v178;
  v36 = *&v178[OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView];
  v37 = &OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView;
LABEL_9:
  *(v32 + 16) = v34;
  v38 = *&v35[*v37];
  *(v32 + 32) = v36;
  *(v32 + 40) = v38;
  v39 = *&v35[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView];
  *(v32 + 48) = v39;
  v40 = v36;
  v41 = v38;
  v42 = v39;
  sub_1BD2659AC(v33, 0, 0, 0.0);
  v33, v43, v44, v45, v46, v47, v48, v49;
LABEL_28:
  v89 = 0;
  v91 = PKEdgeInsetsMake;
LABEL_29:
  v148 = v91;
  v149 = *&v35[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController];
  type metadata accessor for NearbyPeerPaymentReceiverVFXViewController(0);
  if (swift_dynamicCastClass())
  {
    v157 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
    swift_beginAccess();
    v158 = v179;
    sub_1BD26681C(&v35[v157], v179);
    v159 = v149;
    NearbyPeerPaymentReceiverVFXViewController.setState(_:completion:)(v158, v148, v89);

    v89, v160, v161, v162, v163, v164, v165, v166;
    sub_1BD266EB0(v158, type metadata accessor for NearbyPeerPaymentReceiverState);
  }

  else
  {
    v89, v150, v151, v152, v153, v154, v155, v156;
  }
}

void sub_1BD261E00(uint64_t a1)
{
  v1 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v219 = (&v208 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1BE04B7D4();
  v215 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v213 = &v208 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04B824();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v214 = &v208 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v216 = &v208 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v218 = &v208 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v217 = &v208 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0, &qword_1BE0B9180);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v220 = &v208 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v221 = &v208 - v21;
  v22 = sub_1BE04D214();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v208 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v27 = Strong;
  v210 = v6;
  v211 = v5;
  sub_1BE04D094();
  v28 = sub_1BE04D204();
  v29 = sub_1BE052C54();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v212 = v11;
    v31 = v9;
    v32 = v8;
    v33 = v27;
    v34 = v3;
    v35 = v30;
    *v30 = 0;
    _os_log_impl(&dword_1BD026000, v28, v29, "NearbyPeerPayment: user accepted transfer", v30, 2u);
    v36 = v35;
    v3 = v34;
    v27 = v33;
    v8 = v32;
    v9 = v31;
    v11 = v212;
    MEMORY[0x1BFB45F20](v36, -1, -1);
  }

  (*(v23 + 8))(v25, v22);
  v37 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_accountResolutionController;
  v38 = [*&v27[OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_accountResolutionController] currentPeerPaymentAccountResolution];
  if ((v27[OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState] & 1) == 0)
  {
    v55 = sub_1BE0528D4();
    v56 = v221;
    (*(*(v55 - 8) + 56))(v221, 1, 1, v55);
    sub_1BE0528A4();
    v57 = v27;
    v58 = sub_1BE052894();
    v59 = swift_allocObject();
    v60 = MEMORY[0x1E69E85E0];
    v59[2] = v58;
    v59[3] = v60;
    v59[4] = v57;
    v61 = sub_1BD122C00(0, 0, v56, &unk_1BE0C64E0, v59);

    v61, v62, v63, v64, v65, v66, v67, v68;
    return;
  }

  v39 = v38;
  if (!v38)
  {
    v69 = v9;
    v70 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
    swift_beginAccess();
    sub_1BD0EE8CC(&v27[v70], &aBlock);
    v71 = v225;
    v72 = v226;
    __swift_project_boxed_opaque_existential_1(&aBlock, v225);
    v73 = (*(v72 + 7))(v71, v72);
    __swift_destroy_boxed_opaque_existential_0(&aBlock, v74, v75, v76, v77, v78, v79, v80);
    if ((v73 & 1) == 0)
    {
      v180 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
      swift_beginAccess();
      v181 = v219;
      sub_1BD26681C(&v27[v180], v219);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v183 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      v184 = sub_1BE052434();
      v185 = MEMORY[0x1E69BA440];
      *(inited + 40) = v184;
      *(inited + 48) = v186;
      v187 = *v185;
      *(inited + 56) = *v185;
      *(inited + 64) = sub_1BE052434();
      *(inited + 72) = v188;
      v189 = v183;
      v190 = v187;
      v191 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v181, v191);
      v191, v192, v193, v194, v195, v196, v197, v198;
      sub_1BD266EB0(v181, type metadata accessor for NearbyPeerPaymentReceiverState);
      sub_1BD0EE8CC(&v27[v70], &aBlock);
      v199 = v225;
      v200 = v226;
      __swift_project_boxed_opaque_existential_1(&aBlock, v225);
      (*(v200 + 14))(v199, v200);

      __swift_destroy_boxed_opaque_existential_0(&aBlock, v201, v202, v203, v204, v205, v206, v207);
      return;
    }

    v212 = v11;
    v209 = v3;
    v81 = *MEMORY[0x1E69B8050];
    v82 = v69;
    v83 = *(v69 + 104);
    v84 = v217;
    v83(v217, v81, v8);
    v85 = PKPassKitBundle();
    if (v85)
    {
      v86 = v85;
      sub_1BE04B6F4();
      v88 = v87;

      v221 = *(v82 + 8);
      (v221)(v84, v8);
      v89 = v218;
      LODWORD(v220) = v81;
      v219 = v83;
      v83(v218, v81, v8);
      v90 = PKPassKitBundle();
      if (v90)
      {
        v91 = v8;
        v92 = v90;
        sub_1BE04B6F4();
        v94 = v93;

        (v221)(v89, v91);
        v95 = sub_1BE052404();
        v88, v96, v97, v98, v99, v100, v101, v102;
        v103 = sub_1BE052404();
        v94, v104, v105, v106, v107, v108, v109, v110;
        v218 = [objc_opt_self() alertControllerWithTitle:v95 message:v103 preferredStyle:1];

        v111 = v216;
        v219(v216, v220, v91);
        v112 = PKPassKitBundle();
        if (v112)
        {
          v113 = v112;
          sub_1BE04B6F4();
          v115 = v114;

          (v221)(v111, v91);
          v116 = swift_allocObject();
          v116[2] = v27;
          v117 = v27;
          v118 = sub_1BE052404();
          v115, v119, v120, v121, v122, v123, v124, v125;
          v226 = sub_1BD266F74;
          v227 = v116;
          aBlock = MEMORY[0x1E69E9820];
          v223 = 1107296256;
          v224 = sub_1BD198918;
          v225 = &block_descriptor_38;
          v126 = _Block_copy(&aBlock);
          v227, v127, v128, v129, v130, v131, v132, v133;
          v134 = objc_opt_self();
          v217 = [v134 actionWithTitle:v118 style:0 handler:v126];
          _Block_release(v126);

          v135 = v212;
          v219(v212, v220, v91);
          v136 = PKPassKitBundle();
          if (v136)
          {
            v137 = v136;
            sub_1BE04B6F4();
            v139 = v138;

            (v221)(v135, v91);
            v140 = swift_allocObject();
            v140[2] = v117;
            v141 = v117;
            v142 = sub_1BE052404();
            v139, v143, v144, v145, v146, v147, v148, v149;
            v226 = sub_1BD266F7C;
            v227 = v140;
            aBlock = MEMORY[0x1E69E9820];
            v223 = 1107296256;
            v224 = sub_1BD198918;
            v225 = &block_descriptor_51_0;
            v150 = _Block_copy(&aBlock);
            v227, v151, v152, v153, v154, v155, v156, v157;
            v158 = [v134 actionWithTitle:v142 style:1 handler:v150];
            _Block_release(v150);

            v159 = v218;
            v160 = v217;
            [v218 addAction_];
            [v159 addAction_];
            PKAccessibilityIDAlertSet(v159, *MEMORY[0x1E69B9618]);
            [v141 presentViewController:v159 animated:1 completion:0];
            sub_1BE052434();
            (*(v215 + 104))(v213, *MEMORY[0x1E69B7EF8], v209);
            v161 = v214;
            sub_1BE04B7F4();
            _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();

            (*(v210 + 8))(v161, v211);
            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v40 = [objc_allocWithZone(MEMORY[0x1E69B8F08]) init];
  [v40 setRegistrationFlowState_];
  v41 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  swift_beginAccess();
  sub_1BD0EE8CC(&v27[v41], &aBlock);
  v42 = v225;
  v43 = v226;
  __swift_project_boxed_opaque_existential_1(&aBlock, v225);
  v44 = v220;
  (*(v43 + 5))(v42, v43);
  v45 = sub_1BE04C4C4();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(&aBlock, v47, v48, v49, v50, v51, v52, v53);
    sub_1BD0DE53C(v44, &unk_1EBD476F0, &qword_1BE0B9180);
    v54 = 0;
  }

  else
  {
    sub_1BE04C3E4();
    v163 = v162;
    (*(v46 + 8))(v44, v45);
    __swift_destroy_boxed_opaque_existential_0(&aBlock, v164, v165, v166, v167, v168, v169, v170);
    v54 = sub_1BE052404();
    v163, v171, v172, v173, v174, v175, v176, v177;
  }

  [v40 setSenderAddress_];

  [v40 setPaymentMode_];
  v178 = *&v27[v37];
  v179 = v40;
  [v178 presentFlowForAccountResolution:v39 configuration:v179 completion:0];
}

uint64_t sub_1BD262D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1BE0528A4();
  v4[9] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD262DD8, v6, v5);
}

uint64_t sub_1BD262DD8()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_authModel);
  v2 = (v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_unlockToAcceptAuthContent);
  v3 = v2[2];
  v4 = *v2;
  *(v0 + 32) = v2[1];
  *(v0 + 48) = v3;
  *(v0 + 16) = v4;
  sub_1BE048964();
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1BD262EAC;

  return sub_1BDA809C4(v0 + 16, 0);
}

uint64_t sub_1BD262EAC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 88);
  v11 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD262FF0, v11, v10);
}

uint64_t sub_1BD262FF0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

void sub_1BD263050(double a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v3 = sub_1BE04B7D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE052434();
  v13 = v12;
  sub_1BE052434();
  (*(v4 + 104))(v6, *MEMORY[0x1E69B7EF8], v3);
  sub_1BE04B7F4();
  _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v11, v13);
  v13, v14, v15, v16, v17, v18, v19, v20;
  (*(v8 + 8))(v10, v7);
  v21 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  v22 = v33;
  swift_beginAccess();
  sub_1BD0EE8CC(v22 + v21, v34);
  v23 = v35;
  v24 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  (*(v24 + 112))(v23, v24);
  __swift_destroy_boxed_opaque_existential_0(v34, v25, v26, v27, v28, v29, v30, v31);
}

void sub_1BD263284(double a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v3 = sub_1BE04B7D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE052434();
  v13 = v12;
  sub_1BE052434();
  (*(v4 + 104))(v6, *MEMORY[0x1E69B7EF8], v3);
  sub_1BE04B7F4();
  _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v11, v13);
  v13, v14, v15, v16, v17, v18, v19, v20;
  (*(v8 + 8))(v10, v7);
  v21 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  v22 = v35;
  swift_beginAccess();
  sub_1BD0EE8CC(v22 + v21, v36);
  v23 = v37;
  v24 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = *(v24 + 120);
  sub_1BE048964();
  v26(sub_1BD267038, v25, v23, v24);

  __swift_destroy_boxed_opaque_existential_0(v36, v27, v28, v29, v30, v31, v32, v33);
}

void sub_1BD26350C(uint64_t a1)
{
  v1 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v36[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
    v6 = Strong;
    swift_beginAccess();
    sub_1BD26681C(v6 + v5, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v8 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v9 = sub_1BE052434();
    v10 = MEMORY[0x1E69BA440];
    *(inited + 40) = v9;
    *(inited + 48) = v11;
    v12 = *v10;
    *(inited + 56) = *v10;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v13;
    v14 = v8;
    v15 = v12;
    v16 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v3, v16);
    v16, v17, v18, v19, v20, v21, v22, v23;
    sub_1BD266EB0(v3, type metadata accessor for NearbyPeerPaymentReceiverState);
    v24 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v6 + v24, v37);
    v25 = v38;
    v26 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = *(v26 + 120);
    sub_1BE048964();
    v28(sub_1BD267318, v27, v25, v26);

    __swift_destroy_boxed_opaque_existential_0(v37, v29, v30, v31, v32, v33, v34, v35);
  }
}

double sub_1BD263778(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction);
    v4 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction + 8);
    v5 = Strong;
    sub_1BE048964();

    v3(0, 0);
    v4, v6, v7, v8, v9, v10, v11, v12;
  }

  return result;
}

void sub_1BD263804(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v2 + v3, v13);
    v4 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    LOBYTE(v3) = (*(v5 + 88))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v13, v6, v7, v8, v9, v10, v11, v12);
    if ((v3 & 1) == 0)
    {
      sub_1BD263998(1, 0);
    }
  }
}

void sub_1BD2638D4(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1BE053704();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB40900](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      [v6 setAlpha_];
    }
  }
}

void sub_1BD263998(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v122) = a2;
  v113 = a1;
  v4 = sub_1BE051F54();
  v116 = *(v4 - 8);
  v117 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v120 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1BE051FA4();
  v121 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051F44();
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v112 = (&v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v108 = (&v104 - v10);
  v123 = sub_1BE051FC4();
  v111 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v109 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v104 - v13;
  v14 = sub_1BE052DC4();
  v107 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  swift_beginAccess();
  sub_1BD0EE8CC(v2 + v18, &aBlock);
  v20 = v127;
  v19 = v128;
  __swift_project_boxed_opaque_existential_1(&aBlock, v127);
  v21 = v19[12];
  sub_1BE048964();
  v21(v20, v19);
  __swift_destroy_boxed_opaque_existential_0(&aBlock, v22, v23, v24, v25, v26, v27, v28);
  if (v122)
  {
    v36 = v17;
    v37 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_timer;
    if (*(v2 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_timer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1BE052E04();
      swift_unknownObjectRelease();
    }

    *(v2 + v37) = 0;
    swift_unknownObjectRelease();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v94 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction);
      v95 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction + 8);
      v96 = Strong;
      sub_1BE048964();
      v94(0, 0);

      v95, v97, v98, v99, v100, v101, v102, v103;
    }

    v17, v87, v88, v89, v90, v91, v92, v93;
  }

  else
  {
    v105 = v17;
    v17, v29, v30, v31, v32, v33, v34, v35;
    sub_1BD0E5E8C(0, &unk_1EBD39A90, 0x1E69E9630);
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v38 = sub_1BE052D54();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD267238(&unk_1EBD3F6A0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AA0, &qword_1BE0B95A0);
    sub_1BD26710C();
    sub_1BE053664();
    v39 = sub_1BE052DD4();

    (*(v107 + 8))(v16, v14);
    v106 = v3;
    v122 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_timer;
    *(v3 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_timer) = v39;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v41 = v109;
    sub_1BE051FB4();
    v42 = v108;
    *v108 = v113;
    v44 = v114;
    v43 = v115;
    (*(v114 + 104))(v42, *MEMORY[0x1E69E7F48], v115);
    v45 = v110;
    MEMORY[0x1BFB3F070](v41, v42);
    v46 = *(v44 + 8);
    v46(v42, v43);
    v47 = *(v111 + 8);
    v47(v41, v123);
    sub_1BD85BB68(v42);
    v48 = v112;
    sub_1BD85BBDC(v112);
    MEMORY[0x1BFB3FF60](v45, v42, v48, ObjectType);
    swift_unknownObjectRelease();
    v46(v48, v43);
    v46(v42, v43);
    v47(v45, v123);
    v56 = v106;
    v58 = v116;
    v57 = v117;
    v36 = v105;
    if (*(v106 + v122))
    {
      v59 = swift_getObjectType();
      v60 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = swift_allocObject();
      v61[2] = v60;
      v61[3] = sub_1BD267104;
      v61[4] = v36;
      v128 = sub_1BD267170;
      v129 = v61;
      aBlock = MEMORY[0x1E69E9820];
      v125 = 1107296256;
      v126 = sub_1BD126964;
      v127 = &block_descriptor_103;
      v62 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      sub_1BE048964();
      sub_1BE048964();
      v63 = v118;
      sub_1BD85BC54(v59);
      v64 = v120;
      sub_1BD56AC68();
      sub_1BE052DE4();
      _Block_release(v62);
      swift_unknownObjectRelease();
      v65 = *(v58 + 8);
      v65(v64, v57);
      v66 = *(v121 + 8);
      v121 += 8;
      v66(v63, v119);
      v67 = v129;
      v60, v68, v69, v70, v71, v72, v73, v74;
      v67, v75, v76, v77, v78, v79, v80, v81;
      if (*(v56 + v122))
      {
        v82 = swift_getObjectType();
        v128 = sub_1BD264F34;
        v129 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v125 = 1107296256;
        v126 = sub_1BD126964;
        v127 = &block_descriptor_106_0;
        v83 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v84 = v118;
        sub_1BD56AC64(v82);
        v85 = v120;
        sub_1BD56AC68();
        sub_1BE052DF4();
        _Block_release(v83);
        swift_unknownObjectRelease();
        v65(v85, v57);
        v66(v84, v119);
        if (*(v106 + v122))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1BE052E14();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v36, v49, v50, v51, v52, v53, v54, v55;
}

double sub_1BD26430C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction);
    v4 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction + 8);
    v5 = Strong;
    sub_1BE048964();
    v3(0, 0);

    v4, v6, v7, v8, v9, v10, v11, v12;
  }

  return result;
}

void sub_1BD264398(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v116[1] = a3;
  v117 = a2;
  v126 = *MEMORY[0x1E69E9840];
  v3 = sub_1BE04A3B4();
  v120 = *(v3 - 1);
  v121 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v119 = v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v118 = v116 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v116 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v116 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v116 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v116 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v116 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v122 = v116 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0, &qword_1BE0B9180);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v116 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v116 - v34;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    if ([*(Strong + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_accountResolutionController) currentPeerPaymentAccountResolution] == 1)
    {
      v38 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
      swift_beginAccess();
      v121 = v37;
      sub_1BD0EE8CC(v37 + v38, v123);
      v39 = v124;
      v40 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      (*(v40 + 40))(v39, v40);
      __swift_destroy_boxed_opaque_existential_0(v123, v41, v42, v43, v44, v45, v46, v47);
      v48 = [objc_allocWithZone(MEMORY[0x1E69B8F08]) init];
      v49 = v35;
      v50 = v48;
      v120 = v49;
      sub_1BD0DE19C(v49, v32, &unk_1EBD476F0, &qword_1BE0B9180);
      v51 = sub_1BE04C4C4();
      v52 = *(v51 - 8);
      v53 = *(v52 + 48);
      if (v53(v32, 1, v51) == 1)
      {
        sub_1BD0DE53C(v32, &unk_1EBD476F0, &qword_1BE0B9180);
        v54 = 0;
      }

      else
      {
        v54 = sub_1BE04C3F4();
        (*(v52 + 8))(v32, v51);
      }

      v70 = v50;
      [v50 setCurrencyAmount_];

      [v50 setRegistrationFlowState_];
      v71 = v120;
      sub_1BD0DE19C(v120, v29, &unk_1EBD476F0, &qword_1BE0B9180);
      if (v53(v29, 1, v51) == 1)
      {
        sub_1BD0DE53C(v29, &unk_1EBD476F0, &qword_1BE0B9180);
        v72 = 0;
      }

      else
      {
        sub_1BE04C3E4();
        v83 = v82;
        (*(v52 + 8))(v29, v51);
        v72 = sub_1BE052404();
        v83, v84, v85, v86, v87, v88, v89, v90;
      }

      v91 = v122;
      [v70 setSenderAddress_];

      [v70 setPaymentMode_];
      v92 = PKPeerPaymentGetSetupSensitiveURLWithConfiguration();
      if (v92)
      {
        v93 = v92;
        sub_1BE04A9F4();

        v94 = 0;
      }

      else
      {
        v94 = 1;
      }

      v95 = sub_1BE04AA64();
      v96 = *(v95 - 8);
      (*(v96 + 56))(v24, v94, 1, v95);
      sub_1BD226B4C(v24, v91);
      v97 = [objc_allocWithZone(MEMORY[0x1E6963608]) init];
      sub_1BD0DE19C(v91, v21, &unk_1EBD3CF70, &qword_1BE0BA000);
      v98 = 0;
      if ((*(v96 + 48))(v21, 1, v95) != 1)
      {
        v98 = sub_1BE04A9C4();
        (*(v96 + 8))(v21, v95);
      }

      v123[0] = 0;
      v99 = [v97 openURL:v98 configuration:0 error:v123];

      if (v99)
      {
        v100 = v123[0];

        sub_1BD0DE53C(v91, &unk_1EBD3CF70, &qword_1BE0BA000);
        sub_1BD0DE53C(v71, &unk_1EBD476F0, &qword_1BE0B9180);
        return;
      }

      v101 = v123[0];
      v102 = sub_1BE04A854();

      swift_willThrow();
      sub_1BD0DE53C(v91, &unk_1EBD3CF70, &qword_1BE0BA000);
      v103 = &unk_1EBD476F0;
      v104 = &qword_1BE0B9180;
      v105 = v71;
    }

    else
    {
      v55 = v37;
      v56 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
      swift_beginAccess();
      sub_1BD0EE8CC(v55 + v56, v123);
      v57 = v124;
      v58 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      LOBYTE(v56) = (*(v58 + 56))(v57, v58);
      __swift_destroy_boxed_opaque_existential_0(v123, v59, v60, v61, v62, v63, v64, v65);
      if ((v56 & 1) == 0)
      {
        if ((*(v55 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState) & 1) == 0)
        {
          v117();

          return;
        }

        v73 = v119;
        sub_1BE04A3A4();
        sub_1BE052434();
        sub_1BE04A394();
        v74 = sub_1BE052434();
        MEMORY[0x1BFB37400](v74);
        v75 = v118;
        sub_1BE04A364();
        v76 = [objc_allocWithZone(MEMORY[0x1E6963608]) init];
        sub_1BD0DE19C(v75, v7, &unk_1EBD3CF70, &qword_1BE0BA000);
        v77 = sub_1BE04AA64();
        v78 = *(v77 - 8);
        v79 = 0;
        if ((*(v78 + 48))(v7, 1, v77) != 1)
        {
          v79 = sub_1BE04A9C4();
          (*(v78 + 8))(v7, v77);
        }

        v123[0] = 0;
        v80 = [v76 openURL:v79 configuration:0 error:v123];

        if (v80)
        {
          v81 = v123[0];

          sub_1BD0DE53C(v75, &unk_1EBD3CF70, &qword_1BE0BA000);
          (*(v120 + 8))(v73, v121);
          return;
        }

        v114 = v123[0];
        v115 = sub_1BE04A854();

        swift_willThrow();
        sub_1BD0DE53C(v75, &unk_1EBD3CF70, &qword_1BE0BA000);
        (*(v120 + 8))(v73, v121);
        v113 = v115;
        goto LABEL_33;
      }

      v66 = v55;
      v67 = PKPeerPaymentGetVerifyIdentitySensitiveURL();
      if (v67)
      {
        v68 = v67;
        sub_1BE04A9F4();

        v69 = 0;
      }

      else
      {
        v69 = 1;
      }

      v106 = sub_1BE04AA64();
      v107 = *(v106 - 8);
      (*(v107 + 56))(v15, v69, 1, v106);
      sub_1BD226B4C(v15, v18);
      v108 = [objc_allocWithZone(MEMORY[0x1E6963608]) init];
      sub_1BD0DE19C(v18, v12, &unk_1EBD3CF70, &qword_1BE0BA000);
      v109 = 0;
      if ((*(v107 + 48))(v12, 1, v106) != 1)
      {
        v109 = sub_1BE04A9C4();
        (*(v107 + 8))(v12, v106);
      }

      v123[0] = 0;
      v110 = [v108 openURL:v109 configuration:0 error:v123];

      if (v110)
      {
        v111 = v123[0];

        sub_1BD0DE53C(v18, &unk_1EBD3CF70, &qword_1BE0BA000);
        return;
      }

      v112 = v123[0];
      v102 = sub_1BE04A854();

      swift_willThrow();
      v103 = &unk_1EBD3CF70;
      v104 = &qword_1BE0BA000;
      v105 = v18;
    }

    sub_1BD0DE53C(v105, v103, v104);
    v113 = v102;
LABEL_33:
  }
}

uint64_t sub_1BD264F34()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v4, v5, "NearbyPeerPayment: Auto deep link timer cancelled", v6, 2u);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1BD2650F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
  v8 = sub_1BE051D54();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  sub_1BE048964();
  sub_1BE052FB4();
  v8, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
}

double sub_1BD2651C4(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
  v4 = sub_1BE051D04();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  sub_1BE048964();
  sub_1BE052FB4();
  v4, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  return result;
}

id sub_1BD2652B8(uint64_t a1)
{
  [*(a1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView) setAlpha_];
  [*(a1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView) setAlpha_];
  [*(a1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_divider) setAlpha_];
  v2 = *(a1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView);

  return [v2 setAlpha_];
}

uint64_t sub_1BD265410()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor), v1, v2, v3, v4, v5, v6, v7);
  sub_1BD266EB0(v0 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state, type metadata accessor for NearbyPeerPaymentReceiverState);
  *(v0 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_lockStateMonitor), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_authModel), v15, v16, v17, v18, v19, v20, v21;
  v22 = *(v0 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_unlockToAcceptAuthContent + 24);
  v23 = *(v0 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_unlockToAcceptAuthContent + 40);
  *(v0 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_unlockToAcceptAuthContent + 8), v24, v25, v26, v27, v28, v29, v30;
  v22, v31, v32, v33, v34, v35, v36, v37;
  v23, v38, v39, v40, v41, v42, v43, v44;

  return swift_unknownObjectRelease();
}

id NearbyPeerPaymentReceiverViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NearbyPeerPaymentReceiverViewController(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD265610(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState) != (result & 1))
  {
    *(v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState) = result & 1;
  }

  return result;
}

void sub_1BD2656AC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
  v10 = sub_1BE051D54();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  sub_1BE048964();
  sub_1BE052FB4();
  v10, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
}

double sub_1BD265780(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
  v4 = sub_1BE051D04();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  sub_1BE048964();
  sub_1BE052FB4();
  v4, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  return result;
}

BOOL sub_1BD2658B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1BE053824();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

void sub_1BD2659AC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a4;
  v33 = sub_1BD267054;
  v34 = v9;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1BD126964;
  v32 = &block_descriptor_63;
  v10 = _Block_copy(&v29);
  v11 = v34;
  sub_1BE048C84();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v33 = sub_1BD267060;
  v34 = v19;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1BD976224;
  v32 = &block_descriptor_69;
  v20 = _Block_copy(&v29);
  v21 = v34;
  sub_1BD0D44B8(a2, a3);
  v21, v22, v23, v24, v25, v26, v27, v28;
  [v8 animateWithDuration:v10 animations:v20 completion:0.25];
  _Block_release(v20);
  _Block_release(v10);
}

char *sub_1BD265B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v165 = a4;
  v166 = a5;
  v164 = a3;
  v163 = a2;
  v8 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1BE04AF64();
  v170 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v153 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v172 = &v152 - v13;
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v169 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v152 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v152 - v21;
  v23 = [objc_opt_self() sharedInstance];
  if (!v23)
  {
    __break(1u);
    goto LABEL_25;
  }

  v24 = v23;
  v162 = a1;
  v159 = v10;
  v25 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_peerPaymentAccount;
  v26 = [v23 account];

  v161 = v25;
  *(v6 + v25) = v26;
  v152 = v8;
  swift_storeEnumTagMultiPayload();
  v27 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_lockStateMonitor;
  type metadata accessor for LockStateMonitor();
  swift_allocObject();
  v28 = sub_1BD4DA4FC();
  v160 = v27;
  *(v6 + v27) = v28;
  v29 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_authModel;
  type metadata accessor for DeviceAuthenticationModel(0);
  v30 = swift_allocObject();
  *(v30 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  LOBYTE(v173) = 0;
  sub_1BE04D874();
  swift_endAccess();
  v31 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  *(v30 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context) = v31;
  v167 = v6;
  *(v6 + v29) = v30;
  v32 = *MEMORY[0x1E69B8050];
  v33 = *(v15 + 104);
  v33(v22, v32, v14);
  v34 = PKPassKitBundle();
  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v34;
  v158 = sub_1BE04B6F4();
  v157 = v36;

  v37 = *(v15 + 8);
  v171 = v15 + 8;
  v37(v22, v14);
  v33(v19, v32, v14);
  v38 = PKPassKitBundle();
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v156 = sub_1BE04B6F4();
  v155 = v40;

  v37(v19, v14);
  v41 = v169;
  v33(v169, v32, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v42 = swift_allocObject();
  v154 = xmmword_1BE0B69E0;
  *(v42 + 16) = xmmword_1BE0B69E0;
  v43 = PKDeviceName();
  if (!v43)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v44 = v43;
  v45 = v167;
  v46 = (v167 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_unlockToAcceptAuthContent);
  v47 = sub_1BE052434();
  v49 = v48;

  *(v42 + 56) = MEMORY[0x1E69E6158];
  *(v42 + 64) = sub_1BD110550();
  *(v42 + 32) = v47;
  *(v42 + 40) = v49;
  v50 = sub_1BE04B714();
  v52 = v51;
  v42, v51, v53, v54, v55, v56, v57, v58;
  v37(v41, v14);
  v59 = v157;
  *v46 = v158;
  v46[1] = v59;
  v60 = v155;
  v46[2] = v156;
  v46[3] = v60;
  v46[4] = v50;
  v46[5] = v52;
  v61 = v45;
  *(v45 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_timer) = 0;
  v62 = v162;
  if (*(v162 + 16))
  {
    v63 = sub_1BD148F70(0x6144706F6F426673, 0xED000079654B6574);
    v64 = v168;
    if (v65 & 1) != 0 && (v173 = *(v62[7] + 8 * v63), swift_unknownObjectRetain(), (swift_dynamicCast()))
    {
      v66 = v175;
      if (v175)
      {
        v67 = v174;
        v174 = 0;
        sub_1BE048C84();
        LOBYTE(v67) = sub_1BD2658B4(v67, v66, &v174);
        v66, v68, v69, v70, v71, v72, v73, v74;
        if (v67)
        {
          sub_1BE04AAF4();
          if (!v62[2])
          {
            goto LABEL_21;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      v66 = 0;
    }
  }

  else
  {
    v66 = 0;
    v64 = v168;
  }

  sub_1BE04AEF4();
  if (!v62[2])
  {
    goto LABEL_21;
  }

LABEL_15:
  sub_1BD148F70(0x74736F486975, 0xE600000000000000);
  if ((v75 & 1) == 0)
  {
    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v76 = swift_dynamicCastObjCClass();
  if (!v76)
  {
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v77 = [v76 unsignedIntegerValue];
  swift_unknownObjectRelease();
  if (v77 == 1)
  {
    v78 = type metadata accessor for MockReceiverTransferMonitor(0);
    v79 = swift_allocObject();
    swift_storeEnumTagMultiPayload();
    v80 = OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_senderMetadata;
    v81 = sub_1BE04C4C4();
    (*(*(v81 - 8) + 56))(v79 + v80, 1, 1, v81);
    v82 = (v79 + OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_delegate);
    *v82 = 0;
    v82[1] = 0;
    *(v79 + OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_isDebug) = 1;
    *(v79 + OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_appearanceData) = 0;
    v83 = &off_1F3BA9618;
    goto LABEL_22;
  }

  if (!v77)
  {
LABEL_21:
    v84 = v153;
    (*(v170 + 16))(v153, v172, v64);
    v78 = type metadata accessor for NearbyPeerPaymentTransferMonitor(0);
    swift_allocObject();
    v79 = sub_1BD4A2730(v84);
    sub_1BD4AA048();
    v83 = &protocol witness table for NearbyPeerPaymentTransferMonitor;
LABEL_22:
    v85 = (v61 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor);
    v85[3] = v78;
    v85[4] = v83;
    *v85 = v79;
    v86 = *(v61 + v160);
    sub_1BE048964();
    v87 = sub_1BD4DA364();
    v86, v88, v89, v90, v91, v92, v93, v94;
    *(v61 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState) = v87 & 1;
    v95 = *(v61 + v161);
    v96 = objc_opt_self();
    v97 = v95;
    v98 = [v96 sharedService];
    v99 = [objc_allocWithZone(MEMORY[0x1E69B8A60]) init];
    v100 = [objc_allocWithZone(PKPeerPaymentAccountResolutionController) initWithAccount:v97 webService:v98 context:10 delegate:0 passLibraryDataProvider:v99];

    if (v100)
    {
      v62, v101, v102, v103, v104, v105, v106, v107;
      v66, v108, v109, v110, v111, v112, v113, v114;
      *(v61 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_accountResolutionController) = v100;
      v115 = v164;
      sub_1BE048964();
      v116 = v166;
      sub_1BE048964();
      v117 = NearbyPeerPaymentViewController.init(context:screenEdgeSwipeAction:dismissAction:)(0, v163, v115, v165, v116);
      [v117 setOverrideUserInterfaceStyle_];
      v118 = &v117[OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor];
      swift_beginAccess();
      v119 = *(v118 + 24);
      v120 = *(v118 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v118, v119);
      v121 = *(v120 + 16);
      v122 = v117;
      v121(v117, &protocol witness table for NearbyPeerPaymentReceiverViewController, v119, v120);
      swift_endAccess();
      v123 = *&v122[OBJC_IVAR___PKNearbyPeerPaymentViewController_identityManager];
      KeyPath = swift_getKeyPath();
      v174 = v123;
      sub_1BD267238(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
      v125 = v123;
      sub_1BE04B594();
      KeyPath, v126, v127, v128, v129, v130, v131, v132;
      v133 = *&v125[OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData];

      swift_beginAccess();
      v134 = *(v118 + 24);
      v135 = *(v118 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v118, v134);
      (*(v135 + 72))(v133, v134, v135);
      swift_endAccess();
      *(*&v122[OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_lockStateMonitor] + 24) = &off_1F3B9A270;
      swift_unknownObjectWeakAssign();
      *(*&v122[OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_authModel] + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_delegate + 8) = &off_1F3B9A280;
      swift_unknownObjectWeakAssign();
      v136 = *&v122[OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_accountResolutionController];
      [v136 setDelegate_];

      v137 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
      swift_beginAccess();
      v138 = v159;
      sub_1BD26681C(&v122[v137], v159);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = v154;
      v140 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v141;
      v142 = v140;
      v143 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
      _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v138, v143);

      v143, v144, v145, v146, v147, v148, v149, v150;
      sub_1BD266EB0(v138, type metadata accessor for NearbyPeerPaymentReceiverState);
      (*(v170 + 8))(v172, v64);
      return v122;
    }

    goto LABEL_28;
  }

LABEL_29:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD26681C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NearbyPeerPaymentReceiverViewController(uint64_t a1)
{
  result = qword_1EBD3F648;
  if (!qword_1EBD3F648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_1BD26691C(void *a1)
{
  if (!a1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if ([a1 currentPeerPaymentAccountResolution] == 1)
  {
    v2 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v1 + v2, v17);
    v3 = v18;
    v4 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *(v4 + 120);
    sub_1BE048964();
    v6(sub_1BD26717C, v5, v3, v4);

    __swift_destroy_boxed_opaque_existential_0(v17, v7, v8, v9, v10, v11, v12, v13);
    return;
  }

  v14 = [v1 view];
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 pkui_viewControllerFromResponderChain];

  if (v16)
  {
    [v16 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1BD266B18(uint64_t a1)
{
  result = type metadata accessor for NearbyPeerPaymentReceiverState(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD266DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F678, &unk_1BE0C64C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD266E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD266EB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD266F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD266F84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD262D40(a1, v4, v5, v6);
}

uint64_t sub_1BD267060(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

id sub_1BD26709C()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView) setAlpha_];
  v2 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView);

  return [v2 setAlpha_];
}

unint64_t sub_1BD26710C()
{
  result = qword_1EBD3F6B0;
  if (!qword_1EBD3F6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD39AA0, &qword_1BE0B95A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F6B0);
  }

  return result;
}

uint64_t sub_1BD267184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD260010(a1, v4, v5, v6);
}

uint64_t sub_1BD267238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_1BD267280@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

id sub_1BD267354()
{
  _s12DetailsModelVMa(0);
  v0 = sub_1BE0493A4();
  v8 = v1;
  if (v0 == 5259847 && v1 == 0xE300000000000000)
  {
    v1, v1, v2, v3, v4, v5, v6, v7;
    goto LABEL_8;
  }

  v10 = sub_1BE053B84();
  v8, v11, v12, v13, v14, v15, v16, v17;
  if (v10)
  {
LABEL_8:
    v18 = sub_1BE052404();
    v19 = PKUIImageNamed(v18);
    goto LABEL_9;
  }

  v18 = sub_1BE052404();
  PKUIScreenScale();
  v19 = PKIconForPDFName();
LABEL_9:
  v20 = v19;

  return v20;
}

uint64_t sub_1BD2674D4@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v18 = v4;
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = *a2;
  swift_beginAccess();
  return sub_1BD2733BC(v18 + v16, a4, a3);
}

uint64_t sub_1BD2675D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  sub_1BD272780(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_1BD2676A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1BD273D04(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_1BD267724()
{
  KeyPath = swift_getKeyPath();
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel);
  sub_1BD2726F8(v9, *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 8), *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 16), *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 24));
  return v9;
}

void sub_1BD2677F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v6 = (a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel);
  v7 = *(a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel);
  v8 = *(a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 8);
  v9 = *(a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 16);
  v10 = *(a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 24);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  sub_1BD2726F8(a2, a3, a4, a5);
  sub_1BD27273C(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1BD267870()
{
  KeyPath = swift_getKeyPath();
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
  sub_1BD0D44B8(v9, *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted + 8));
  return v9;
}

void sub_1BD267930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
  v4 = *(a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
  v5 = *(a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1BD0D44B8(a2, a3);
  sub_1BD0D4744(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BD2679AC@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v20 = v5;
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = *a2;
  swift_beginAccess();
  return sub_1BD0DE19C(v20 + v18, a5, a3, a4);
}

uint64_t sub_1BD267A8C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  sub_1BD0DE19C(a1, &v17[-v5], &qword_1EBD3F790, &qword_1BE0D6710);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v18 = v7;
  v19 = v6;
  v20 = v7;
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B584();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  return sub_1BD0DE53C(v6, &qword_1EBD3F790, &qword_1BE0D6710);
}

uint64_t sub_1BD267C00@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = *a3;
  swift_beginAccess();
  return sub_1BD0DE19C(v10 + v19, a6, a4, a5);
}

uint64_t sub_1BD267CE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BD0DE19C(a1, &v6 - v3, &qword_1EBD3F788, &unk_1BE0E2970);
  return sub_1BD267D90(v4);
}

uint64_t sub_1BD267D90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v6, v5, &qword_1EBD3F788, &unk_1BE0E2970);
  v7 = sub_1BD272B8C(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD3F788, &unk_1BE0E2970);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BD0DE19C(a1, v5, &qword_1EBD3F788, &unk_1BE0E2970);
    swift_beginAccess();
    sub_1BD273C60(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD3F788, &unk_1BE0E2970);
}

uint64_t sub_1BD267F98()
{
  KeyPath = swift_getKeyPath();
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading);
}

void sub_1BD268040(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading);
}

void sub_1BD2680F0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD268208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v62 = a1;
  v72 = sub_1BE048F54();
  v4 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v67 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TransactionContext(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE049834();
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = _s12DetailsModelVMa(0) - 8;
  MEMORY[0x1EEE9AC00](v60);
  v59 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1BE049A94();
  v15 = *(v14 - 8);
  v69 = v14;
  v70 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v56 = &v52 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v52 - v20;
  v22 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyModel;
  v23 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  (*(*(v23 - 8) + 56))(v3 + v22, 1, 1, v23);
  v24 = (v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel);
  *v24 = 0u;
  v24[1] = 0u;
  v25 = (v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  v27 = (v7 + 56);
  v28 = *(v7 + 56);
  v55 = v27;
  v28(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext, 1, 1, v6);
  v29 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
  v57 = v4;
  v53 = *(v4 + 56);
  v53(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken, 1, 1, v72);
  *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading) = 0;
  sub_1BE04B5C4();
  v58 = type metadata accessor for TransactionContext;
  v30 = v62;
  sub_1BD2733BC(v62, v21, type metadata accessor for TransactionContext);
  v28(v21, 0, 1, v6);
  sub_1BD0DE53C(v3 + v26, &qword_1EBD3F790, &qword_1BE0D6710);
  sub_1BD0DE204(v21, v3 + v26, &qword_1EBD3F790, &qword_1BE0D6710);
  v55 = *(v4 + 16);
  v31 = v56;
  v32 = v72;
  v55(v56, v71, v72);
  v53(v31, 0, 1, v32);
  v54 = v3;
  sub_1BD0DE53C(v3 + v29, &qword_1EBD3F788, &unk_1BE0E2970);
  sub_1BD0DE204(v31, v3 + v29, &qword_1EBD3F788, &unk_1BE0E2970);
  (*(v70 + 16))(v68, v30, v69);
  v33 = v30;
  v34 = sub_1BE049174();
  v36 = v35;
  v38 = v59;
  v37 = v60;
  sub_1BE049974();
  v39 = v37;
  sub_1BE0499A4();
  v40 = v61;
  sub_1BE049984();
  v41 = sub_1BE049824();
  v43 = v42;
  (*(v63 + 8))(v40, v64);
  *v38 = v34;
  v38[1] = v36;
  v44 = (v38 + *(v39 + 36));
  *v44 = v41;
  v44[1] = v43;
  v45 = v54;
  sub_1BD2727E8(v38, v54 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel, _s12DetailsModelVMa);
  v46 = v66;
  sub_1BD2733BC(v33, v66, v58);
  v47 = v67;
  v48 = v71;
  v49 = v72;
  v55(v67, v71, v72);
  v50 = v65;
  sub_1BD60709C(v46, v47, v65);
  (*(v57 + 8))(v48, v49);
  sub_1BD273424(v33, type metadata accessor for TransactionContext);
  (*(v70 + 8))(v68, v69);
  sub_1BD2727E8(v50, v45 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__selectedModel, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  return v45;
}

uint64_t sub_1BD2688EC()
{
  v1[33] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  v1[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v1[35] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  v3 = sub_1BE049C74();
  v1[39] = v3;
  v1[40] = *(v3 - 8);
  v1[41] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v1[42] = v4;
  v1[43] = *(v4 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v5 = sub_1BE049D74();
  v1[47] = v5;
  v1[48] = *(v5 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v1[51] = v6;
  v1[52] = *(v6 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v7 = sub_1BE049834();
  v1[56] = v7;
  v1[57] = *(v7 - 8);
  v1[58] = swift_task_alloc();
  v8 = sub_1BE0498F4();
  v1[59] = v8;
  v1[60] = *(v8 - 8);
  v1[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v9 = sub_1BE048F54();
  v1[64] = v9;
  v1[65] = *(v9 - 8);
  v1[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  v1[67] = swift_task_alloc();
  v10 = type metadata accessor for TransactionContext(0);
  v1[68] = v10;
  v1[69] = *(v10 - 8);
  v1[70] = swift_task_alloc();
  sub_1BE0528A4();
  v1[71] = sub_1BE052894();
  v12 = sub_1BE052844();
  v1[72] = v12;
  v1[73] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1BD268DF8, v12, v11);
}

uint64_t sub_1BD268DF8()
{
  v1 = *(v0 + 264);
  KeyPath = swift_getKeyPath();
  *(v0 + 184) = v1;
  *(v0 + 592) = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel___observationRegistrar;
  *(v0 + 600) = sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v17 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading;
  *(v0 + 608) = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading;
  if (*(v1 + v17))
  {
    *(v0 + 568), v10, v11, v12, v13, v14, v15, v16;
LABEL_7:

    v60 = *(v0 + 8);

    return v60();
  }

  v103 = v17;
  v18 = *(v0 + 552);
  v104 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 264);
  v21 = swift_getKeyPath();
  *(v0 + 192) = v20;
  sub_1BE04B594();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  swift_beginAccess();
  sub_1BD0DE19C(v20 + v29, v19, &qword_1EBD3F790, &qword_1BE0D6710);
  v30 = (*(v18 + 48))(v19, 1, v104);
  v38 = *(v0 + 536);
  if (v30 == 1)
  {
    *(v0 + 568), v31, v32, v33, v34, v35, v36, v37;
    sub_1BD0DE53C(v38, &qword_1EBD3F790, &qword_1BE0D6710);
    goto LABEL_7;
  }

  v39 = *(v0 + 520);
  v40 = *(v0 + 504);
  v105 = *(v0 + 512);
  v41 = *(v0 + 264);
  sub_1BD2727E8(v38, *(v0 + 560), type metadata accessor for TransactionContext);
  v42 = swift_getKeyPath();
  *(v0 + 200) = v41;
  sub_1BE04B594();
  v42, v43, v44, v45, v46, v47, v48, v49;
  v50 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v41 + v50, v40, &qword_1EBD3F788, &unk_1BE0E2970);
  if ((*(v39 + 48))(v40, 1, v105) == 1)
  {
    v58 = *(v0 + 560);
    v59 = *(v0 + 504);
    *(v0 + 568), v51, v52, v53, v54, v55, v56, v57;
    sub_1BD0DE53C(v59, &qword_1EBD3F788, &unk_1BE0E2970);
    sub_1BD273424(v58, type metadata accessor for TransactionContext);
    goto LABEL_7;
  }

  (*(*(v0 + 520) + 32))(*(v0 + 528), *(v0 + 504), *(v0 + 512));
  if (*(v1 + v103) == 1)
  {
    *(v1 + v103) = 1;
  }

  else
  {
    v62 = *(v0 + 264);
    v63 = swift_getKeyPath();
    v64 = swift_task_alloc();
    *(v64 + 16) = v62;
    *(v64 + 24) = 1;
    *(v0 + 208) = v62;
    sub_1BE04B584();
    v63, v65, v66, v67, v68, v69, v70, v71;
  }

  (*(*(v0 + 480) + 104))(*(v0 + 488), *MEMORY[0x1E6967930], *(v0 + 472));
  sub_1BE049984();
  sub_1BE049584();
  sub_1BE049A14();
  *(v0 + 40) = &type metadata for BankConnectFeatureFlags;
  *(v0 + 48) = sub_1BD1671B0();
  *(v0 + 16) = 2;
  v72 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16), v73, v74, v75, v76, v77, v78, v79);
  v80 = *(v0 + 336);
  if (v72)
  {
    v81 = *(v0 + 560);
    v82 = *(v0 + 368);
    v83 = *(v0 + 344);
    v85 = *(v0 + 320);
    v84 = *(v0 + 328);
    v86 = *(v0 + 312);
    sub_1BE0490F4();
    *(v0 + 616) = sub_1BE0490B4();
    v87 = *(v83 + 16);
    *(v0 + 624) = v87;
    *(v0 + 632) = (v83 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v87(v82, v81, v80);
    (*(v85 + 104))(v84, *MEMORY[0x1E6967BA8], v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8, &unk_1BE0DF590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0, &qword_1BE0B7DE0);
    *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
    swift_getKeyPath();
    sub_1BD272850(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    sub_1BE04A4F4();
    v88 = sub_1BE049C94();
    v89 = MEMORY[0x1E6967BB0];
    *(v0 + 120) = v88;
    *(v0 + 128) = v89;
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_1BE049C84();
    v90 = swift_task_alloc();
    *(v0 + 640) = v90;
    *v90 = v0;
    v90[1] = sub_1BD269774;
    v91 = *(v0 + 400);
    v92 = v0 + 96;
  }

  else
  {
    v93 = *(v0 + 488);
    v94 = *(v0 + 464);
    v96 = *(v0 + 296);
    v95 = *(v0 + 304);
    v97 = *(v0 + 280);
    v98 = *(v0 + 288);
    v99 = swift_task_alloc();
    *(v0 + 656) = v99;
    v99[1] = vextq_s8(*(v0 + 432), *(v0 + 432), 8uLL);
    v99[2].i64[0] = v94;
    v99[2].i64[1] = v93;
    *(v0 + 216) = v80;
    sub_1BE04B444();
    sub_1BE0490F4();
    *(v0 + 664) = sub_1BE0490B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8, &unk_1BE0DF590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0, &qword_1BE0B7DE0);
    *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
    swift_getKeyPath();
    sub_1BD272850(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    sub_1BE04A4F4();
    (*(v96 + 16))(v97, v95, v98);
    (*(v96 + 56))(v97, 0, 1, v98);
    v100 = sub_1BE049CE4();
    v101 = MEMORY[0x1E6967BC8];
    *(v0 + 80) = v100;
    *(v0 + 88) = v101;
    __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_1BE049CD4();
    v102 = swift_task_alloc();
    *(v0 + 672) = v102;
    *v102 = v0;
    v102[1] = sub_1BD269C54;
    v91 = *(v0 + 392);
    v92 = v0 + 56;
  }

  return MEMORY[0x1EEDC14D8](v91, v92);
}

uint64_t sub_1BD269774()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  *(v2 + 616), v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v17 = *(v2 + 584);
    v18 = *(v2 + 576);
    v19 = sub_1BD26A61C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 96), v10, v11, v12, v13, v14, v15, v16);
    v17 = *(v2 + 584);
    v18 = *(v2 + 576);
    v19 = sub_1BD2698A8;
  }

  return MEMORY[0x1EEE6DFA0](v19, v18, v17);
}

uint64_t sub_1BD2698A8(uint64_t a1)
{
  v2 = *(v1 + 400);
  v3 = *(v1 + 376);
  v4 = *(v1 + 384);
  v5 = sub_1BE049D54();
  v6 = (*(v4 + 8))(v2, v3);
  v14 = v5[2];
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = 0;
    v17 = *(v1 + 344);
    v55 = v5[2];
    v57 = v5;
    v59 = (v17 + 32);
    while (v16 < v5[2])
    {
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = *(v17 + 72);
      (*(v1 + 624))(*(v1 + 360), v5 + v18 + v19 * v16, *(v1 + 336));
      if (sub_1BE049A74())
      {
        v20 = *v59;
        (*v59)(*(v1 + 352), *(v1 + 360), *(v1 + 336));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BD531B68(0, *(v15 + 2) + 1, 1);
        }

        v22 = *(v15 + 2);
        v21 = *(v15 + 3);
        if (v22 >= v21 >> 1)
        {
          sub_1BD531B68((v21 > 1), v22 + 1, 1);
        }

        v23 = *(v1 + 352);
        v24 = *(v1 + 336);
        *(v15 + 2) = v22 + 1;
        v6 = v20(&v15[v18 + v22 * v19], v23, v24);
        v14 = v55;
        v5 = v57;
      }

      else
      {
        v6 = (*(v17 + 8))(*(v1 + 360), *(v1 + 336));
      }

      if (v14 == ++v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v5, v7, v8, v9, v10, v11, v12, v13;
    *(v1 + 688) = v15;
    v25 = sub_1BE048964();
    sub_1BD270B6C(v25);
    sub_1BE0490F4();
    *(v1 + 696) = sub_1BE0490B4();
    v33 = *(v15 + 2);
    if (v33)
    {
      v34 = *(v1 + 416);
      v35 = *(v1 + 344);
      v60 = MEMORY[0x1E69E7CC0];
      sub_1BD531F28(0, v33, 0);
      v36 = v60;
      v37 = *(v35 + 16);
      v35 += 16;
      v38 = &v15[(*(v35 + 64) + 32) & ~*(v35 + 64)];
      v56 = *(v35 + 56);
      v58 = v37;
      v39 = (v35 - 8);
      do
      {
        v40 = *(v1 + 368);
        v41 = *(v1 + 336);
        v58(v40, v38, v41);
        sub_1BE049A14();
        (*v39)(v40, v41);
        v43 = *(v60 + 16);
        v42 = *(v60 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1BD531F28((v42 > 1), v43 + 1, 1);
        }

        v44 = *(v1 + 424);
        v45 = *(v1 + 408);
        *(v60 + 16) = v43 + 1;
        (*(v34 + 32))(v60 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v43, v44, v45);
        v38 += v56;
        --v33;
      }

      while (v33);
      v15, v46, v47, v48, v49, v50, v51, v52;
    }

    else
    {
      v15, v26, v27, v28, v29, v30, v31, v32;
      v36 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + 704) = v36;
    v53 = swift_task_alloc();
    *(v1 + 712) = v53;
    *v53 = v1;
    v53[1] = sub_1BD26A010;
    v6 = v36;
  }

  return MEMORY[0x1EEDC1510](v6);
}

uint64_t sub_1BD269C54()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  *(v2 + 664), v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v17 = *(v2 + 584);
    v18 = *(v2 + 576);
    v19 = sub_1BD26A910;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56), v10, v11, v12, v13, v14, v15, v16);
    v17 = *(v2 + 584);
    v18 = *(v2 + 576);
    v19 = sub_1BD269D88;
  }

  return MEMORY[0x1EEE6DFA0](v19, v18, v17);
}

uint64_t sub_1BD269D88(uint64_t a1)
{
  v2 = v1[48];
  v3 = v1[49];
  v4 = v1[47];
  v6 = v1[37];
  v5 = v1[38];
  v7 = v1[36];
  v8 = sub_1BE049D54();
  (*(v2 + 8))(v3, v4);
  (*(v6 + 8))(v5, v7);
  sub_1BE048C84();

  v1[86] = v8;
  sub_1BD270B6C(v8);
  sub_1BE0490F4();
  v1[87] = sub_1BE0490B4();
  v16 = v8[2];
  if (v16)
  {
    v17 = v1[52];
    v18 = v1[43];
    v41 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v16, 0);
    v19 = v41;
    v21 = *(v18 + 16);
    v20 = v18 + 16;
    v38 = v8;
    v22 = v8 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v39 = *(v20 + 56);
    v40 = v21;
    do
    {
      v23 = v1[46];
      v24 = v1[42];
      v40(v23, v22, v24);
      sub_1BE049A14();
      (*(v20 - 8))(v23, v24);
      v26 = *(v41 + 16);
      v25 = *(v41 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1BD531F28((v25 > 1), v26 + 1, 1);
      }

      v27 = v1[53];
      v28 = v1[51];
      *(v41 + 16) = v26 + 1;
      (*(v17 + 32))(v41 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v26, v27, v28);
      v22 += v39;
      --v16;
    }

    while (v16);
    v38, v29, v30, v31, v32, v33, v34, v35;
  }

  else
  {
    v8, v9, v10, v11, v12, v13, v14, v15;
    v19 = MEMORY[0x1E69E7CC0];
  }

  v1[88] = v19;
  v36 = swift_task_alloc();
  v1[89] = v36;
  *v36 = v1;
  v36[1] = sub_1BD26A010;

  return MEMORY[0x1EEDC1510](v19);
}

uint64_t sub_1BD26A010(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 720) = v1;

  v12 = *(v4 + 704);
  v13 = *(v4 + 696);
  if (v1)
  {
    *(v4 + 688), v5, v6, v7, v8, v9, v10, v11;
    v12, v14, v15, v16, v17, v18, v19, v20;
    v13, v21, v22, v23, v24, v25, v26, v27;
    v28 = *(v4 + 584);
    v29 = *(v4 + 576);
    v30 = sub_1BD26AC34;
  }

  else
  {
    v12, v5, v6, v7, v8, v9, v10, v11;
    v13, v31, v32, v33, v34, v35, v36, v37;
    *(v4 + 728) = a1;
    v28 = *(v4 + 584);
    v29 = *(v4 + 576);
    v30 = sub_1BD26A194;
  }

  return MEMORY[0x1EEE6DFA0](v30, v29, v28);
}

uint64_t sub_1BD26A194(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 728);
  v10 = *(v8 + 688);
  v73 = *(v8 + 608);
  v11 = *(v8 + 560);
  v61 = *(v8 + 528);
  v12 = *(v8 + 520);
  v13 = *(v8 + 512);
  v14 = *(v8 + 496);
  v72 = *(v8 + 488);
  v70 = *(v8 + 480);
  v71 = *(v8 + 472);
  v68 = *(v8 + 448);
  v69 = *(v8 + 464);
  v66 = *(v8 + 440);
  v67 = *(v8 + 456);
  v63 = *(v8 + 416);
  v64 = *(v8 + 408);
  v65 = *(v8 + 432);
  v15 = *(v8 + 272);
  v62 = *(v8 + 264);
  *(v8 + 568), a2, a3, a4, a5, a6, a7, a8;
  v16 = swift_task_alloc();
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  sub_1BDA3DA80(sub_1BD273D84, v16, v10);
  v18 = v17;
  v10, v19, v20, v21, v22, v23, v24, v25;
  v9, v26, v27, v28, v29, v30, v31, v32;

  (*(v12 + 16))(v14, v61, v13);
  (*(v12 + 56))(v14, 0, 1, v13);
  sub_1BD720F44(v18, v14, v15);
  v33 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  (*(*(v33 - 8) + 56))(v15, 0, 1, v33);
  KeyPath = swift_getKeyPath();
  v35 = swift_task_alloc();
  *(v35 + 16) = v62;
  *(v35 + 24) = v15;
  *(v8 + 240) = v62;
  sub_1BE04B584();
  KeyPath, v36, v37, v38, v39, v40, v41, v42;

  sub_1BD0DE53C(v15, &qword_1EBD3F780, &unk_1BE0DFFD0);
  v43 = *(v63 + 8);
  v43(v65, v64);
  v43(v66, v64);
  (*(v67 + 8))(v69, v68);
  (*(v70 + 8))(v72, v71);
  if (*(v62 + v73) == 1)
  {
    v44 = *(v8 + 528);
    v45 = *(v8 + 520);
    v46 = *(v8 + 512);
    v47 = *(v8 + 264);
    v48 = swift_getKeyPath();
    v49 = swift_task_alloc();
    *(v49 + 16) = v47;
    *(v49 + 24) = 0;
    *(v8 + 248) = v47;
    sub_1BE04B584();
    v48, v50, v51, v52, v53, v54, v55, v56;
    (*(v45 + 8))(v44, v46);
  }

  else
  {
    v57 = *(v8 + 608);
    v58 = *(v8 + 264);
    (*(*(v8 + 520) + 8))(*(v8 + 528), *(v8 + 512));
    *(v58 + v57) = 0;
  }

  sub_1BD273424(*(v8 + 560), type metadata accessor for TransactionContext);

  v59 = *(v8 + 8);

  return v59();
}

uint64_t sub_1BD26A61C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 480);
  v44 = *(v8 + 488);
  v45 = *(v8 + 608);
  v10 = *(v8 + 464);
  v11 = *(v8 + 448);
  v12 = *(v8 + 456);
  v14 = *(v8 + 432);
  v13 = *(v8 + 440);
  v16 = *(v8 + 408);
  v15 = *(v8 + 416);
  v42 = *(v8 + 264);
  v43 = *(v8 + 472);
  *(v8 + 568), a2, a3, a4, a5, a6, a7, a8;
  __swift_destroy_boxed_opaque_existential_0((v8 + 96), v17, v18, v19, v20, v21, v22, v23);
  v24 = *(v15 + 8);
  v24(v14, v16);
  v24(v13, v16);
  (*(v12 + 8))(v10, v11);
  (*(v9 + 8))(v44, v43);
  if (*(v42 + v45) == 1)
  {
    v25 = *(v8 + 528);
    v26 = *(v8 + 520);
    v27 = *(v8 + 512);
    v28 = *(v8 + 264);
    KeyPath = swift_getKeyPath();
    v30 = swift_task_alloc();
    *(v30 + 16) = v28;
    *(v30 + 24) = 0;
    *(v8 + 256) = v28;
    sub_1BE04B584();
    KeyPath, v31, v32, v33, v34, v35, v36, v37;
    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v38 = *(v8 + 608);
    v39 = *(v8 + 264);
    (*(*(v8 + 520) + 8))(*(v8 + 528), *(v8 + 512));
    *(v39 + v38) = 0;
  }

  sub_1BD273424(*(v8 + 560), type metadata accessor for TransactionContext);

  v40 = *(v8 + 8);

  return v40();
}

uint64_t sub_1BD26A910(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 480);
  v47 = *(v8 + 488);
  v48 = *(v8 + 608);
  v10 = *(v8 + 456);
  v43 = *(v8 + 448);
  v44 = *(v8 + 464);
  v12 = *(v8 + 432);
  v11 = *(v8 + 440);
  v14 = *(v8 + 408);
  v13 = *(v8 + 416);
  v15 = *(v8 + 296);
  v16 = *(v8 + 304);
  v17 = *(v8 + 288);
  v45 = *(v8 + 264);
  v46 = *(v8 + 472);
  *(v8 + 568), a2, a3, a4, a5, a6, a7, a8;
  (*(v15 + 8))(v16, v17);
  __swift_destroy_boxed_opaque_existential_0((v8 + 56), v18, v19, v20, v21, v22, v23, v24);
  v25 = *(v13 + 8);
  v25(v12, v14);
  v25(v11, v14);
  (*(v10 + 8))(v44, v43);
  (*(v9 + 8))(v47, v46);
  if (*(v45 + v48) == 1)
  {
    v26 = *(v8 + 528);
    v27 = *(v8 + 520);
    v28 = *(v8 + 512);
    v29 = *(v8 + 264);
    KeyPath = swift_getKeyPath();
    v31 = swift_task_alloc();
    *(v31 + 16) = v29;
    *(v31 + 24) = 0;
    *(v8 + 224) = v29;
    sub_1BE04B584();
    KeyPath, v32, v33, v34, v35, v36, v37, v38;
    (*(v27 + 8))(v26, v28);
  }

  else
  {
    v39 = *(v8 + 608);
    v40 = *(v8 + 264);
    (*(*(v8 + 520) + 8))(*(v8 + 528), *(v8 + 512));
    *(v40 + v39) = 0;
  }

  sub_1BD273424(*(v8 + 560), type metadata accessor for TransactionContext);

  v41 = *(v8 + 8);

  return v41();
}

uint64_t sub_1BD26AC34(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 480);
  v37 = *(v8 + 488);
  v38 = *(v8 + 608);
  v10 = *(v8 + 464);
  v11 = *(v8 + 448);
  v12 = *(v8 + 456);
  v14 = *(v8 + 432);
  v13 = *(v8 + 440);
  v16 = *(v8 + 408);
  v15 = *(v8 + 416);
  v35 = *(v8 + 264);
  v36 = *(v8 + 472);
  *(v8 + 568), a2, a3, a4, a5, a6, a7, a8;
  v17 = *(v15 + 8);
  v17(v14, v16);
  v17(v13, v16);
  (*(v12 + 8))(v10, v11);
  (*(v9 + 8))(v37, v36);
  if (*(v35 + v38) == 1)
  {
    v18 = *(v8 + 528);
    v19 = *(v8 + 520);
    v20 = *(v8 + 512);
    v21 = *(v8 + 264);
    KeyPath = swift_getKeyPath();
    v23 = swift_task_alloc();
    *(v23 + 16) = v21;
    *(v23 + 24) = 0;
    *(v8 + 232) = v21;
    sub_1BE04B584();
    KeyPath, v24, v25, v26, v27, v28, v29, v30;
    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v31 = *(v8 + 608);
    v32 = *(v8 + 264);
    (*(*(v8 + 520) + 8))(*(v8 + 528), *(v8 + 512));
    *(v32 + v31) = 0;
  }

  sub_1BD273424(*(v8 + 560), type metadata accessor for TransactionContext);

  v33 = *(v8 + 8);

  return v33();
}

uint64_t sub_1BD26AF20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v160 = a5;
  v151 = a4;
  v142 = a3;
  v170 = a2;
  v163 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0, &unk_1BE0B7F40);
  v8 = *(v7 - 8);
  v164 = v7;
  v165 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v162 = v125 - v9;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F0, &unk_1BE0DFA20);
  v161 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v154 = v125 - v10;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F8, &qword_1BE0C6770);
  v156 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v152 = v125 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F800, &qword_1BE0DFA30);
  v13 = *(v12 - 8);
  v157 = v12;
  v158 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v153 = v125 - v14;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F808, &qword_1BE0C6778);
  v148 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v139 = v125 - v15;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F810, &qword_1BE0C6780);
  v144 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v136 = v125 - v16;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F818, &qword_1BE0C6788);
  v146 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v138 = v125 - v17;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F820, &qword_1BE0C6790);
  v133 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = v125 - v18;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828, &unk_1BE0E8C00);
  v175 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v20 = v125 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8, &qword_1BE0DF8F0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v125 - v23;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0, &qword_1BE0B7F50);
  v174 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v26 = v125 - v25;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830, &qword_1BE0E29F0);
  v130 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v126 = v125 - v27;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F838, &qword_1BE0C6798);
  v135 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v171 = v125 - v28;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F840, &qword_1BE0C67A0);
  v141 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v172 = v125 - v29;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F848, &qword_1BE0C67A8);
  v150 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v137 = v125 - v30;
  v31 = *a1;
  v32 = sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA8]);
  v33 = v24;
  v176 = v31;
  v166 = v32;
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  v177 = v21;
  sub_1BE04A724();
  KeyPath, v35, v36, v37, v38, v39, v40, v41;
  v167 = *(v22 + 8);
  v168 = v22 + 8;
  v167(v24, v21);
  v125[4] = sub_1BE04AFE4();
  v42 = v20;
  sub_1BE04A7B4();
  v169 = MEMORY[0x1E6968D58];
  v125[3] = sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0, &qword_1BE0B7F50, MEMORY[0x1E6968D58]);
  v170 = MEMORY[0x1E6968D20];
  v125[2] = sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828, &unk_1BE0E8C00, MEMORY[0x1E6968D20]);
  v125[1] = sub_1BD272850(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v43 = v26;
  v44 = v127;
  v45 = v128;
  sub_1BE04A714();
  v46 = *(v175 + 8);
  v175 += 8;
  v47 = v42;
  v46(v42, v45);
  v48 = *(v174 + 8);
  v174 += 8;
  v48(v43, v44);
  v173 = v24;
  v49 = v177;
  sub_1BE04A7C4();
  v50 = swift_getKeyPath();
  sub_1BE04A724();
  v50, v51, v52, v53, v54, v55, v56, v57;
  v58 = v33;
  v59 = v167;
  v167(v58, v49);
  sub_1BE04A7B4();
  v60 = v131;
  sub_1BE04A744();
  v46(v47, v45);
  v48(v43, v44);
  v61 = MEMORY[0x1E6968D08];
  v175 = MEMORY[0x1E6968D08];
  sub_1BD0DE4F4(&qword_1EBD3F858, &qword_1EBD3F830, &qword_1BE0E29F0, MEMORY[0x1E6968D08]);
  sub_1BD0DE4F4(&qword_1EBD3F860, &qword_1EBD3F820, &qword_1BE0C6790, MEMORY[0x1E6968D90]);
  v62 = v126;
  v63 = v129;
  v64 = v132;
  sub_1BE04A784();
  (*(v133 + 8))(v60, v64);
  (*(v130 + 8))(v62, v63);
  v65 = v173;
  v66 = v177;
  sub_1BE04A7C4();
  v67 = swift_getKeyPath();
  v68 = v136;
  sub_1BE04A724();
  v67, v69, v70, v71, v72, v73, v74, v75;
  v59(v65, v66);
  v76 = v59;
  sub_1BE049834();
  v77 = v139;
  sub_1BE04A7B4();
  v78 = v169;
  sub_1BD0DE4F4(&qword_1EBD3F868, &qword_1EBD3F810, &qword_1BE0C6780, v169);
  sub_1BD0DE4F4(&qword_1EBD3F870, &qword_1EBD3F808, &qword_1BE0C6778, v170);
  sub_1BD272850(&qword_1EBD3F878, MEMORY[0x1E69678D8], MEMORY[0x1E69678E8]);
  v79 = v138;
  v80 = v68;
  v81 = v77;
  v82 = v143;
  v83 = v147;
  sub_1BE04A714();
  (*(v148 + 8))(v81, v83);
  (*(v144 + 8))(v80, v82);
  v174 = MEMORY[0x1E6968B68];
  sub_1BD0DE4F4(&qword_1EBD3F880, &qword_1EBD3F838, &qword_1BE0C6798, MEMORY[0x1E6968B68]);
  sub_1BD0DE4F4(&qword_1EBD3F888, &qword_1EBD3F818, &qword_1BE0C6788, v61);
  v84 = v171;
  v85 = v134;
  v86 = v145;
  sub_1BE04A784();
  (*(v146 + 8))(v79, v86);
  (*(v135 + 8))(v84, v85);
  v87 = v173;
  v88 = v177;
  sub_1BE04A7C4();
  v89 = swift_getKeyPath();
  v90 = v152;
  sub_1BE04A724();
  v89, v91, v92, v93, v94, v95, v96, v97;
  v76(v87, v88);
  sub_1BE0498F4();
  v98 = v154;
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD3F890, &qword_1EBD3F7F8, &qword_1BE0C6770, v78);
  sub_1BD0DE4F4(&qword_1EBD3F898, &qword_1EBD3F7F0, &unk_1BE0DFA20, v170);
  sub_1BD272850(&qword_1EBD3F8A0, MEMORY[0x1E6967938], MEMORY[0x1E6967948]);
  v99 = v153;
  v100 = v90;
  v101 = v98;
  v102 = v155;
  v103 = v159;
  sub_1BE04A714();
  (*(v161 + 8))(v101, v103);
  (*(v156 + 8))(v100, v102);
  v104 = v174;
  sub_1BD0DE4F4(&qword_1EBD3F8A8, &qword_1EBD3F840, &qword_1BE0C67A0, v174);
  sub_1BD0DE4F4(&qword_1EBD3F8B0, &qword_1EBD3F800, &qword_1BE0DFA30, v175);
  v105 = v137;
  v106 = v172;
  v107 = v140;
  v108 = v157;
  sub_1BE04A784();
  (*(v158 + 8))(v99, v108);
  (*(v141 + 8))(v106, v107);
  v109 = v173;
  v110 = v177;
  sub_1BE04A7C4();
  v111 = swift_getKeyPath();
  v112 = v162;
  sub_1BE04A724();
  v111, v113, v114, v115, v116, v117, v118, v119;
  v167(v109, v110);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F8B8, &unk_1BE0C68A0);
  v121 = v163;
  v163[3] = v120;
  v121[4] = sub_1BD273538();
  __swift_allocate_boxed_opaque_existential_1(v121);
  sub_1BD0DE4F4(&qword_1EBD3F948, &qword_1EBD3F848, &qword_1BE0C67A8, v104);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0, &unk_1BE0B7F40, v169);
  v122 = v149;
  v123 = v164;
  sub_1BE04A784();
  (*(v165 + 8))(v112, v123);
  return (*(v150 + 8))(v105, v122);
}

uint64_t sub_1BD26C14C(uint64_t a1, double a2)
{
  v3 = sub_1BE049834();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE049994();
}

uint64_t sub_1BD26C238()
{
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B0, &unk_1BE0D6750);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7E0, &unk_1BE0E8DC0);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v1[17] = swift_task_alloc();
  v3 = sub_1BE049E74();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = sub_1BE04D214();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  v1[26] = swift_task_alloc();
  v5 = type metadata accessor for TransactionContext(0);
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = sub_1BE0528A4();
  v1[31] = sub_1BE052894();
  v7 = sub_1BE052844();
  v1[32] = v7;
  v1[33] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD26C548, v7, v6);
}

uint64_t sub_1BD26C548()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 88);
  KeyPath = swift_getKeyPath();
  *(v0 + 64) = v4;
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v13 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  swift_beginAccess();
  sub_1BD0DE19C(v4 + v13, v3, &qword_1EBD3F790, &qword_1BE0D6710);
  v14 = (*(v2 + 48))(v3, 1, v1);
  v22 = *(v0 + 208);
  if (v14 == 1)
  {
    *(v0 + 248), v15, v16, v17, v18, v19, v20, v21;
    sub_1BD0DE53C(v22, &qword_1EBD3F790, &qword_1BE0D6710);
    sub_1BE04D114();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C54();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 192);
    v27 = *(v0 + 168);
    v28 = *(v0 + 176);
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BD026000, v23, v24, "Missing properties, could not observe transactions", v29, 2u);
      MEMORY[0x1BFB45F20](v29, -1, -1);
    }

    (*(v28 + 8))(v26, v27);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    sub_1BD2727E8(v22, *(v0 + 232), type metadata accessor for TransactionContext);
    sub_1BE04D114();
    v31 = sub_1BE04D204();
    v32 = sub_1BE052C54();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1BD026000, v31, v32, "Observing transactions", v33, 2u);
      MEMORY[0x1BFB45F20](v33, -1, -1);
    }

    v34 = *(v0 + 200);
    v36 = *(v0 + 168);
    v35 = *(v0 + 176);
    v37 = *(v0 + 136);
    v74 = *(v0 + 128);
    v38 = *(v0 + 88);

    v39 = *(v35 + 8);
    *(v0 + 272) = v39;
    v39(v34, v36);
    sub_1BE0490F4();
    v40 = sub_1BE0490B4();
    sub_1BE049584();
    v41 = sub_1BE04AFE4();
    (*(*(v41 - 8) + 56))(v37, 0, 1, v41);
    v42 = swift_getKeyPath();
    *(v0 + 72) = v38;
    sub_1BE04B594();
    v42, v43, v44, v45, v46, v47, v48, v49;
    v50 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
    swift_beginAccess();
    sub_1BD0DE19C(v38 + v50, v74, &qword_1EBD3F788, &unk_1BE0E2970);
    v51 = sub_1BE048FD4();
    v52 = *(v0 + 128);
    v53 = *(v0 + 136);
    v55 = v51;
    v40, v56, v57, v58, v59, v60, v61, v62;
    sub_1BD0DE53C(v52, &qword_1EBD3F788, &unk_1BE0E2970);
    sub_1BD0DE53C(v53, &qword_1EBD39980, &qword_1BE0BF3C0);
    sub_1BE049E64();
    v55, v63, v64, v65, v66, v67, v68, v69;
    *(v0 + 280) = sub_1BE052894();
    v70 = sub_1BD272850(&qword_1EBD3F7E8, MEMORY[0x1E6967C80], MEMORY[0x1E6967C88]);
    v71 = swift_task_alloc();
    *(v0 + 288) = v71;
    *v71 = v0;
    v71[1] = sub_1BD26CB98;
    v72 = *(v0 + 144);
    v73 = *(v0 + 120);

    return MEMORY[0x1EEE6D8C8](v73, v72, v70);
  }
}

uint64_t sub_1BD26CB98()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD26CF88;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD26CD30;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1BD26CD30(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 280), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 256);
  v10 = *(v8 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1BD26CD94, v9, v10);
}

uint64_t sub_1BD26CD94()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v11 = *(v0 + 232);
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    v14 = *(v0 + 144);
    *(v0 + 248), v4, v5, v6, v7, v8, v9, v10;
    (*(v13 + 8))(v12, v14);
    sub_1BD273424(v11, type metadata accessor for TransactionContext);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    (*(v3 + 32))(*(v0 + 112), v1, v2);
    v17 = swift_task_alloc();
    *(v0 + 304) = v17;
    *v17 = v0;
    v17[1] = sub_1BD26D154;
    v18 = *(v0 + 112);

    return sub_1BD26D940(v18);
  }
}

uint64_t sub_1BD26CF88()
{
  v1 = v0[35];
  v0[10] = v0[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  swift_willThrowTypedImpl();
  v1, v2, v3, v4, v5, v6, v7, v8;
  v9 = v0[32];
  v10 = v0[33];

  return MEMORY[0x1EEE6DFA0](sub_1BD26D024, v9, v10);
}

uint64_t sub_1BD26D024(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 152);
  v9 = *(v8 + 160);
  v11 = *(v8 + 144);
  *(v8 + 248), a2, a3, a4, a5, a6, a7, a8;
  (*(v10 + 8))(v9, v11);
  sub_1BD273424(*(v8 + 232), type metadata accessor for TransactionContext);

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1BD26D154()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {
    v3 = v2[32];
    v4 = v2[33];

    return MEMORY[0x1EEE6DFA0](sub_1BD26D500, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[40] = v5;
    *v5 = v2;
    v5[1] = sub_1BD26D2C4;
    v6 = v2[14];

    return sub_1BD26ED6C(v6);
  }
}

uint64_t sub_1BD26D2C4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_1BD26D720;
  }

  else
  {
    v5 = sub_1BD26D400;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD26D400()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v0[35] = sub_1BE052894();
  v1 = sub_1BD272850(&qword_1EBD3F7E8, MEMORY[0x1E6967C80], MEMORY[0x1E6967C88]);
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_1BD26CB98;
  v3 = v0[18];
  v4 = v0[15];

  return MEMORY[0x1EEE6D8C8](v4, v3, v1);
}

uint64_t sub_1BD26D500(uint64_t a1)
{
  v2 = v1[39];
  sub_1BE04D114();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v4, v5, "Failed to perform transaction update with: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v10 = v1[34];
  v11 = v1[23];
  v12 = v1[21];

  v10(v11, v12);
  (*(v1[13] + 8))(v1[14], v1[12]);
  v1[35] = sub_1BE052894();
  v13 = sub_1BD272850(&qword_1EBD3F7E8, MEMORY[0x1E6967C80], MEMORY[0x1E6967C88]);
  v14 = swift_task_alloc();
  v1[36] = v14;
  *v14 = v1;
  v14[1] = sub_1BD26CB98;
  v15 = v1[18];
  v16 = v1[15];

  return MEMORY[0x1EEE6D8C8](v16, v15, v13);
}

uint64_t sub_1BD26D720(uint64_t a1)
{
  v2 = v1[41];
  sub_1BE04D114();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v4, v5, "Failed to perform transaction update with: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v10 = v1[34];
  v11 = v1[23];
  v12 = v1[21];

  v10(v11, v12);
  (*(v1[13] + 8))(v1[14], v1[12]);
  v1[35] = sub_1BE052894();
  v13 = sub_1BD272850(&qword_1EBD3F7E8, MEMORY[0x1E6967C80], MEMORY[0x1E6967C88]);
  v14 = swift_task_alloc();
  v1[36] = v14;
  *v14 = v1;
  v14[1] = sub_1BD26CB98;
  v15 = v1[18];
  v16 = v1[15];

  return MEMORY[0x1EEE6D8C8](v16, v15, v13);
}

uint64_t sub_1BD26D940(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  v2[15] = swift_task_alloc();
  v3 = sub_1BE049834();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = _s12DetailsModelVMa(0);
  v2[20] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8, &qword_1BE0F4280);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v5 = sub_1BE04D214();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v2[34] = swift_task_alloc();
  v7 = sub_1BE048F54();
  v2[35] = v7;
  v2[36] = *(v7 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  v2[39] = swift_task_alloc();
  v8 = type metadata accessor for TransactionContext(0);
  v2[40] = v8;
  v2[41] = *(v8 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  sub_1BE0528A4();
  v2[44] = sub_1BE052894();
  v10 = sub_1BE052844();
  v2[45] = v10;
  v2[46] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD26DD40, v10, v9);
}

uint64_t sub_1BD26DD40()
{
  v1 = *(v0 + 328);
  v115 = *(v0 + 320);
  v2 = *(v0 + 312);
  v3 = *(v0 + 112);
  KeyPath = swift_getKeyPath();
  *(v0 + 64) = v3;
  *(v0 + 376) = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel___observationRegistrar;
  *(v0 + 384) = sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  swift_beginAccess();
  sub_1BD0DE19C(v3 + v12, v2, &qword_1EBD3F790, &qword_1BE0D6710);
  if ((*(v1 + 48))(v2, 1, v115) == 1)
  {
    v20 = *(v0 + 312);
    *(v0 + 352), v13, v14, v15, v16, v17, v18, v19;
    sub_1BD0DE53C(v20, &qword_1EBD3F790, &qword_1BE0D6710);
LABEL_12:

    v105 = *(v0 + 8);

    return v105();
  }

  v21 = *(v0 + 288);
  v116 = *(v0 + 280);
  v22 = *(v0 + 272);
  v23 = *(v0 + 112);
  sub_1BD2727E8(*(v0 + 312), *(v0 + 344), type metadata accessor for TransactionContext);
  v24 = swift_getKeyPath();
  *(v0 + 72) = v23;
  sub_1BE04B594();
  v24, v25, v26, v27, v28, v29, v30, v31;
  v32 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v23 + v32, v22, &qword_1EBD3F788, &unk_1BE0E2970);
  if ((*(v21 + 48))(v22, 1, v116) == 1)
  {
    v33 = *(v0 + 352);
    v34 = *(v0 + 272);
    sub_1BD273424(*(v0 + 344), type metadata accessor for TransactionContext);
    v33, v35, v36, v37, v38, v39, v40, v41;
    sub_1BD0DE53C(v34, &qword_1EBD3F788, &unk_1BE0E2970);
    goto LABEL_12;
  }

  v42 = *(v0 + 264);
  v44 = *(v0 + 240);
  v43 = *(v0 + 248);
  (*(*(v0 + 288) + 32))(*(v0 + 304), *(v0 + 272), *(v0 + 280));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B0, &unk_1BE0D6750);
  v45 = sub_1BE0490C4();
  sub_1BE049A14();
  v46 = sub_1BD438738(v42, v45);
  v45, v47, v48, v49, v50, v51, v52, v53;
  v54 = *(v43 + 8);
  *(v0 + 392) = v54;
  *(v0 + 400) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v54(v42, v44);
  if (v46)
  {
    sub_1BE04D114();
    v55 = sub_1BE04D204();
    v56 = sub_1BE052C54();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1BD026000, v55, v56, "Transaction deleted", v57, 2u);
      MEMORY[0x1BFB45F20](v57, -1, -1);
    }

    v58 = *(v0 + 232);
    v60 = *(v0 + 208);
    v59 = *(v0 + 216);
    v61 = *(v0 + 112);

    (*(v59 + 8))(v58, v60);
    v62 = swift_getKeyPath();
    *(v0 + 96) = v61;
    sub_1BE04B594();
    v62, v63, v64, v65, v66, v67, v68, v69;
    v70 = *(v61 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
    if (v70)
    {
      v71 = *(v61 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted + 8);
      v72 = sub_1BE048964();
      v70(v72);
      sub_1BD0D4744(v70, v71, v73, v74, v75, v76, v77, v78);
    }
  }

  v79 = *(v0 + 256);
  v81 = *(v0 + 192);
  v80 = *(v0 + 200);
  v82 = *(v0 + 168);
  v83 = *(v0 + 176);
  sub_1BE049A14();
  v84 = sub_1BE0490D4();
  *(swift_task_alloc() + 16) = v79;
  sub_1BD1CED84(sub_1BD273484, v84, v80);
  v84, v85, v86, v87, v88, v89, v90, v91;

  sub_1BD0DE19C(v80, v81, &qword_1EBD3F7D8, &qword_1BE0F4280);
  if ((*(v83 + 48))(v81, 1, v82) == 1)
  {
    v99 = *(v0 + 344);
    v100 = *(v0 + 304);
    v101 = *(v0 + 280);
    v102 = *(v0 + 288);
    v104 = *(v0 + 192);
    v103 = *(v0 + 200);
    *(v0 + 352), v92, v93, v94, v95, v96, v97, v98;
    sub_1BD0DE53C(v103, &qword_1EBD3F7D8, &qword_1BE0F4280);
    (*(v102 + 8))(v100, v101);
    sub_1BD273424(v99, type metadata accessor for TransactionContext);
    sub_1BD0DE53C(v104, &qword_1EBD3F7D8, &qword_1BE0F4280);
    (*(v0 + 392))(*(v0 + 256), *(v0 + 240));
    goto LABEL_12;
  }

  (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 192), *(v0 + 168));
  sub_1BE04D114();
  v107 = sub_1BE04D204();
  v108 = sub_1BE052C54();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_1BD026000, v107, v108, "Transaction updated, updating view", v109, 2u);
    MEMORY[0x1BFB45F20](v109, -1, -1);
  }

  v111 = *(v0 + 216);
  v110 = *(v0 + 224);
  v112 = *(v0 + 208);

  (*(v111 + 8))(v110, v112);
  sub_1BE0490F4();
  *(v0 + 408) = sub_1BE0490B4();
  v113 = swift_task_alloc();
  *(v0 + 416) = v113;
  *v113 = v0;
  v113[1] = sub_1BD26E4B0;
  v114 = *(v0 + 256);

  return MEMORY[0x1EEDC1500](v114);
}

uint64_t sub_1BD26E4B0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 424) = v1;

  *(v4 + 408), v5, v6, v7, v8, v9, v10, v11;
  if (v1)
  {
    v12 = *(v4 + 360);
    v13 = *(v4 + 368);
    v14 = sub_1BD26EAB4;
  }

  else
  {
    *(v4 + 432) = a1;
    v12 = *(v4 + 360);
    v13 = *(v4 + 368);
    v14 = sub_1BD26E5F4;
  }

  return MEMORY[0x1EEE6DFA0](v14, v12, v13);
}

uint64_t sub_1BD26E5F4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v57 = *(v8 + 432);
  v9 = *(v8 + 336);
  v10 = *(v8 + 320);
  v54 = v10;
  v55 = *(v8 + 344);
  v59 = *(v8 + 288);
  v60 = *(v8 + 296);
  v61 = *(v8 + 280);
  v62 = *(v8 + 304);
  v63 = *(v8 + 200);
  v65 = *(v8 + 184);
  v11 = *(v8 + 160);
  v66 = *(v8 + 176);
  v67 = *(v8 + 168);
  v13 = *(v8 + 144);
  v12 = *(v8 + 152);
  v14 = *(v8 + 136);
  v53 = *(v8 + 128);
  v58 = *(v8 + 120);
  v64 = *(v8 + 112);
  *(v8 + 352), a2, a3, a4, a5, a6, a7, a8;
  v56 = v10[5];
  v15 = sub_1BE049574();
  v17 = v16;
  sub_1BE049934();
  sub_1BE0499A4();
  sub_1BE049984();
  v18 = sub_1BE049824();
  v20 = v19;
  (*(v14 + 8))(v13, v53);
  *v11 = v15;
  v11[1] = v17;
  v21 = (v11 + *(v12 + 28));
  *v21 = v18;
  v21[1] = v20;
  KeyPath = swift_getKeyPath();
  v23 = swift_task_alloc();
  *(v23 + 16) = v64;
  *(v23 + 24) = v11;
  *(v8 + 80) = v64;
  sub_1BE04B584();
  KeyPath, v24, v25, v26, v27, v28, v29, v30;

  sub_1BD273424(v11, _s12DetailsModelVMa);
  (*(v66 + 16))(v9, v65, v67);
  v31 = v54[5];
  v32 = sub_1BE0495A4();
  (*(*(v32 - 8) + 16))(v9 + v31, v55 + v56, v32);
  v33 = v54[6];
  v34 = sub_1BE049184();
  (*(*(v34 - 8) + 16))(v9 + v33, v55 + v33, v34);
  sub_1BD735DE0(v57, v9 + v54[7]);
  sub_1BD735E14(v57, v9 + v54[8]);
  v57, v35, v36, v37, v38, v39, v40, v41;
  (*(v59 + 16))(v60, v62, v61);
  sub_1BD60709C(v9, v60, v58);
  v42 = swift_getKeyPath();
  v43 = swift_task_alloc();
  *(v43 + 16) = v64;
  *(v43 + 24) = v58;
  *(v8 + 88) = v64;
  sub_1BE04B584();
  v42, v44, v45, v46, v47, v48, v49, v50;
  (*(v66 + 8))(v65, v67);
  sub_1BD0DE53C(v63, &qword_1EBD3F7D8, &qword_1BE0F4280);
  (*(v59 + 8))(v62, v61);
  sub_1BD273424(v55, type metadata accessor for TransactionContext);

  sub_1BD273424(v58, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  (*(v8 + 392))(*(v8 + 256), *(v8 + 240));

  v51 = *(v8 + 8);

  return v51();
}

uint64_t sub_1BD26EAB4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v21 = *(v8 + 392);
  v9 = *(v8 + 344);
  v10 = *(v8 + 304);
  v11 = *(v8 + 288);
  v12 = *(v8 + 280);
  v13 = *(v8 + 256);
  v20 = *(v8 + 240);
  v14 = *(v8 + 200);
  v15 = *(v8 + 176);
  v16 = *(v8 + 184);
  v17 = *(v8 + 168);
  *(v8 + 352), a2, a3, a4, a5, a6, a7, a8;
  (*(v15 + 8))(v16, v17);
  sub_1BD0DE53C(v14, &qword_1EBD3F7D8, &qword_1BE0F4280);
  (*(v11 + 8))(v10, v12);
  sub_1BD273424(v9, type metadata accessor for TransactionContext);
  v21(v13, v20);

  v18 = *(v8 + 8);

  return v18();
}

uint64_t sub_1BD26EC80(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049A14();
  v6 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_1BD26ED6C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_1BE04AFE4();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0);
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v6 = sub_1BE048F54();
  v2[34] = v6;
  v2[35] = *(v6 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v7 = type metadata accessor for TransactionContext(0);
  v2[39] = v7;
  v2[40] = *(v7 - 8);
  v2[41] = swift_task_alloc();
  sub_1BE0528A4();
  v2[42] = sub_1BE052894();
  v9 = sub_1BE052844();
  v2[43] = v9;
  v2[44] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD26F0C0, v9, v8);
}

uint64_t sub_1BD26F0C0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 136);
  KeyPath = swift_getKeyPath();
  *(v0 + 88) = v4;
  *(v0 + 360) = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel___observationRegistrar;
  *(v0 + 368) = sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v13 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  swift_beginAccess();
  sub_1BD0DE19C(v4 + v13, v3, &qword_1EBD3F790, &qword_1BE0D6710);
  v14 = *(v2 + 48);
  if (v14(v3, 1, v1) != 1)
  {
    v23 = *(v0 + 280);
    v157 = *(v0 + 272);
    v159 = v14;
    v24 = *(v0 + 264);
    v25 = *(v0 + 136);
    sub_1BD2727E8(*(v0 + 304), *(v0 + 328), type metadata accessor for TransactionContext);
    v26 = swift_getKeyPath();
    *(v0 + 96) = v25;
    sub_1BE04B594();
    v26, v27, v28, v29, v30, v31, v32, v33;
    v34 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
    swift_beginAccess();
    sub_1BD0DE19C(v25 + v34, v24, &qword_1EBD3F788, &unk_1BE0E2970);
    if ((*(v23 + 48))(v24, 1, v157) == 1)
    {
      v42 = *(v0 + 328);
      v43 = *(v0 + 264);
      *(v0 + 336), v35, v36, v37, v38, v39, v40, v41;
      sub_1BD0DE53C(v43, &qword_1EBD3F788, &unk_1BE0E2970);
      sub_1BD273424(v42, type metadata accessor for TransactionContext);
      goto LABEL_5;
    }

    v46 = *(v0 + 248);
    v47 = *(v0 + 136);
    (*(*(v0 + 280) + 32))(*(v0 + 288), *(v0 + 264), *(v0 + 272));
    v48 = swift_getKeyPath();
    *(v0 + 112) = v47;
    sub_1BE04B594();
    v48, v49, v50, v51, v52, v53, v54, v55;
    v56 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyModel;
    swift_beginAccess();
    sub_1BD0DE19C(v47 + v56, v46, &qword_1EBD3F780, &unk_1BE0DFFD0);
    v57 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
    *(v0 + 376) = v57;
    v58 = *(v57 - 8);
    *(v0 + 384) = v58;
    v59 = (*(v58 + 48))(v46, 1, v57);
    v60 = *(v0 + 248);
    if (v59)
    {
      sub_1BD0DE53C(v60, &qword_1EBD3F780, &unk_1BE0DFFD0);
    }

    else
    {
      v61 = *v60;
      v62 = *(v0 + 248);
      sub_1BE048C84();
      sub_1BD0DE53C(v62, &qword_1EBD3F780, &unk_1BE0DFFD0);
      v70 = v61[2];
      if (v70)
      {
        v71 = *(v0 + 224);
        v72 = *(v0 + 232);
        v73 = *(v0 + 184);
        v74 = *(*(v0 + 216) + 40);
        v75 = v61 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
        v152 = v61;
        v153 = (v73 + 16);
        v155 = v73;
        v156 = (v73 + 32);
        v158 = *(v71 + 72);
        v164 = MEMORY[0x1E69E7CC0];
        v154 = v74;
        do
        {
          v83 = *(v0 + 312);
          v84 = *(v0 + 296);
          v85 = *(v0 + 232);
          sub_1BD2733BC(v75, v85, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
          sub_1BD0DE19C(v72 + v74, v84, &qword_1EBD3F790, &qword_1BE0D6710);
          sub_1BD273424(v85, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
          v86 = v159(v84, 1, v83);
          v87 = *(v0 + 296);
          if (v86 == 1)
          {
            sub_1BD0DE53C(*(v0 + 296), &qword_1EBD3F790, &qword_1BE0D6710);
          }

          else
          {
            v89 = *(v0 + 200);
            v88 = *(v0 + 208);
            v90 = *(v0 + 176);
            (*v153)(v89, *(v0 + 296), v90);
            sub_1BD273424(v87, type metadata accessor for TransactionContext);
            v91 = *v156;
            (*v156)(v88, v89, v90);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v164 = sub_1BD1D825C(0, *(v164 + 2) + 1, 1, v164);
            }

            v93 = *(v164 + 2);
            v92 = *(v164 + 3);
            if (v93 >= v92 >> 1)
            {
              v164 = sub_1BD1D825C((v92 > 1), v93 + 1, 1, v164);
            }

            v94 = *(v0 + 208);
            v95 = *(v0 + 176);
            *(v164 + 2) = v93 + 1;
            v91(&v164[((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v93], v94, v95);
            v74 = v154;
          }

          v75 += v158;
          --v70;
        }

        while (v70);
        v152, v76, v77, v78, v79, v80, v81, v82;
LABEL_22:
        v96 = *(v0 + 328);
        *(v0 + 104) = v164;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B0, &unk_1BE0D6750);
        v97 = sub_1BE0490E4();
        v98 = sub_1BE0490D4();
        sub_1BDA7A904(v98);
        v99 = swift_task_alloc();
        *(v99 + 16) = v96;
        sub_1BD1CEA30(sub_1BD272914, v99, v97);
        v101 = v100;

        v102 = v101[2];
        v103 = MEMORY[0x1E69E7CC0];
        if (v102)
        {
          v104 = *(v0 + 184);
          v105 = *(v0 + 152);
          v165 = MEMORY[0x1E69E7CC0];
          sub_1BD531F28(0, v102, 0);
          v103 = v165;
          v107 = *(v104 + 16);
          v106 = v104 + 16;
          v108 = v101 + ((*(v106 + 64) + 32) & ~*(v106 + 64));
          v160 = *(v106 + 56);
          v162 = v107;
          do
          {
            v109 = *(v0 + 192);
            v110 = *(v0 + 176);
            v162(v109, v108, v110);
            sub_1BE049A14();
            (*(v106 - 8))(v109, v110);
            v112 = v165[2];
            v111 = v165[3];
            if (v112 >= v111 >> 1)
            {
              sub_1BD531F28((v111 > 1), v112 + 1, 1);
            }

            v113 = *(v0 + 168);
            v114 = *(v0 + 144);
            v165[2] = v112 + 1;
            (*(v105 + 32))(v165 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v112, v113, v114);
            v108 += v160;
            --v102;
          }

          while (v102);
        }

        v115 = sub_1BE0490C4();
        sub_1BDA7A930(v115);
        sub_1BE048C84();
        v116 = sub_1BD272EAC((v0 + 104), v103);
        v103, v117, v118, v119, v120, v121, v122, v123;
        v125 = *(v0 + 104);
        v126 = v125[2];
        if (v116 > v126)
        {
          __break(1u);
        }

        else if ((v116 & 0x8000000000000000) == 0)
        {
          if (!__OFADD__(v126, v116 - v126))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v116 > v125[3] >> 1)
            {
              if (v126 <= v116)
              {
                v128 = v116;
              }

              else
              {
                v128 = v126;
              }

              v125 = sub_1BD1D825C(isUniquelyReferenced_nonNull_native, v128, 1, v125);
              *(v0 + 104) = v125;
            }

            sub_1BD1DDE18(v116, v126, 0);
            v103, v129, v130, v131, v132, v133, v134, v135;
            *(v0 + 104) = v125;
            sub_1BDA7A904(v101);
            sub_1BE0490F4();
            v136 = sub_1BE0490B4();
            v137 = *(v0 + 104);
            *(v0 + 392) = v136;
            *(v0 + 400) = v137;
            v138 = *(v137 + 16);
            v139 = MEMORY[0x1E69E7CC0];
            if (v138)
            {
              v140 = *(v0 + 184);
              v141 = *(v0 + 152);
              v166 = MEMORY[0x1E69E7CC0];
              sub_1BD531F28(0, v138, 0);
              v139 = v166;
              v142 = *(v140 + 16);
              v140 += 16;
              v143 = v137 + ((*(v140 + 64) + 32) & ~*(v140 + 64));
              v161 = *(v140 + 56);
              v163 = v142;
              v144 = (v140 - 8);
              do
              {
                v145 = *(v0 + 192);
                v146 = *(v0 + 176);
                v163(v145, v143, v146);
                sub_1BE049A14();
                (*v144)(v145, v146);
                v148 = *(v166 + 16);
                v147 = *(v166 + 24);
                if (v148 >= v147 >> 1)
                {
                  sub_1BD531F28((v147 > 1), v148 + 1, 1);
                }

                v149 = *(v0 + 160);
                v150 = *(v0 + 144);
                *(v166 + 16) = v148 + 1;
                (*(v141 + 32))(v166 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v148, v149, v150);
                v143 += v161;
                --v138;
              }

              while (v138);
            }

            *(v0 + 408) = v139;
            v151 = swift_task_alloc();
            *(v0 + 416) = v151;
            *v151 = v0;
            v151[1] = sub_1BD26FB9C;
            v124 = v139;

            return MEMORY[0x1EEDC1510](v124);
          }

LABEL_47:
          __break(1u);
          return MEMORY[0x1EEDC1510](v124);
        }

        __break(1u);
        goto LABEL_47;
      }

      v61, v63, v64, v65, v66, v67, v68, v69;
    }

    v164 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v22 = *(v0 + 304);
  *(v0 + 336), v15, v16, v17, v18, v19, v20, v21;
  sub_1BD0DE53C(v22, &qword_1EBD3F790, &qword_1BE0D6710);
LABEL_5:

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1BD26FB9C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 424) = v1;

  v12 = *(v4 + 408);
  if (v1)
  {
    v13 = *(v4 + 392);
    *(v4 + 400), v5, v6, v7, v8, v9, v10, v11;
    v12, v14, v15, v16, v17, v18, v19, v20;
    v13, v21, v22, v23, v24, v25, v26, v27;
    v28 = *(v4 + 344);
    v29 = *(v4 + 352);
    v30 = sub_1BD270000;
  }

  else
  {
    v31 = *(v4 + 392);
    v12, v5, v6, v7, v8, v9, v10, v11;
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v4 + 432) = a1;
    v28 = *(v4 + 344);
    v29 = *(v4 + 352);
    v30 = sub_1BD26FD08;
  }

  return MEMORY[0x1EEE6DFA0](v30, v28, v29);
}

uint64_t sub_1BD26FD08(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 432);
  v10 = *(v8 + 400);
  v11 = *(v8 + 384);
  v12 = *(v8 + 328);
  v55 = v12;
  v13 = *(v8 + 280);
  v14 = *(v8 + 288);
  v51 = *(v8 + 272);
  v15 = *(v8 + 256);
  v52 = *(v8 + 240);
  v53 = *(v8 + 376);
  v54 = *(v8 + 136);
  *(v8 + 336), a2, a3, a4, a5, a6, a7, a8;
  v16 = swift_task_alloc();
  *(v16 + 16) = v9;
  *(v16 + 24) = v12;
  sub_1BE048C84();
  sub_1BDA3DA80(sub_1BD273368, v16, v10);
  v18 = v17;
  v9, v19, v20, v21, v22, v23, v24, v25;
  v10, v26, v27, v28, v29, v30, v31, v32;

  (*(v13 + 16))(v15, v14, v51);
  (*(v13 + 56))(v15, 0, 1, v51);
  sub_1BD720F44(v18, v15, v52);
  (*(v11 + 56))(v52, 0, 1, v53);
  KeyPath = swift_getKeyPath();
  v34 = swift_task_alloc();
  *(v34 + 16) = v54;
  *(v34 + 24) = v52;
  *(v8 + 120) = v54;
  sub_1BE04B584();
  KeyPath, v35, v36, v37, v38, v39, v40, v41;

  sub_1BD0DE53C(v52, &qword_1EBD3F780, &unk_1BE0DFFD0);
  sub_1BD270B6C(v10);
  v10, v42, v43, v44, v45, v46, v47, v48;
  (*(v13 + 8))(v14, v51);
  sub_1BD273424(v55, type metadata accessor for TransactionContext);

  v49 = *(v8 + 8);

  return v49();
}

uint64_t sub_1BD270000(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 328);
  v10 = *(v8 + 280);
  v11 = *(v8 + 288);
  v12 = *(v8 + 272);
  *(v8 + 336), a2, a3, a4, a5, a6, a7, a8;
  (*(v10 + 8))(v11, v12);
  sub_1BD273424(v9, type metadata accessor for TransactionContext);

  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_1BD270158(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_1BE0498F4();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = v37 - v6;
  v43 = sub_1BE04AFE4();
  v7 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v37 - v11;
  v13 = sub_1BE049834();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v37 - v18;
  v42 = a1;
  sub_1BE049984();
  (*(v14 + 104))(v16, *MEMORY[0x1E6967850], v13);
  sub_1BD272850(&qword_1EBD3F7C8, MEMORY[0x1E69678D8], MEMORY[0x1E69678F0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v20 = *(v14 + 8);
  v20(v16, v13);
  v20(v19, v13);
  if (v48 == v47 && (sub_1BE049A64(), type metadata accessor for TransactionContext(0), sub_1BE049584(), v21 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0(), v24 = *(v7 + 8), v23 = v7 + 8, v22 = v24, v25 = v43, v24(v9, v43), v24(v12, v25), (v21 & 1) != 0) && (v37[0] = v9, v37[1] = v23, v26 = v38, sub_1BE049A24(), v28 = v39, v27 = v40, v29 = v41, (*(v40 + 104))(v39, *MEMORY[0x1E6967930], v41), sub_1BD272850(&qword_1EBD3F7D0, MEMORY[0x1E6967938], MEMORY[0x1E6967950]), sub_1BE0526E4(), sub_1BE0526E4(), v30 = *(v27 + 8), v30(v28, v29), v30(v26, v29), v46 == v45) && (v31 = v12, sub_1BE049A14(), v32 = v37[0], sub_1BE049A14(), sub_1BD272850(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]), v33 = v43, v34 = sub_1BE052334(), v22(v32, v33), v22(v31, v33), (v34 & 1) == 0))
  {
    v35 = sub_1BE049A74();
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_1BD27064C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v50 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B8, &unk_1BE0E29B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v49 - v9;
  v51 = sub_1BE049184();
  v58 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BE0495A4();
  v11 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BE049A94();
  v13 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04AFE4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049A14();
  if (*(a2 + 16) && (v20 = sub_1BD14951C(v19), (v21 & 1) != 0))
  {
    v22 = *(*(a2 + 56) + 8 * v20);
    v23 = *(v17 + 8);
    sub_1BE048C84();
    v23(v19, v16);
  }

  else
  {
    (*(v17 + 8))(v19, v16);
    v22 = 0;
  }

  v24 = v49;
  (*(v13 + 16))(v15, a1, v49);
  v25 = type metadata accessor for TransactionContext(0);
  v26 = v50;
  (*(v11 + 16))(v55, v50 + v25[5], v56);
  v27 = v51;
  (*(v58 + 16))(v57, v26 + v25[6], v51);
  v29 = v52;
  v28 = v53;
  if (v22)
  {
    v30 = sub_1BE048C84();
    sub_1BD735DE0(v30, v29);
    v22, v31, v32, v33, v34, v35, v36, v37;
    sub_1BD735E14(v22, v28);
    v22, v38, v39, v40, v41, v42, v43, v44;
  }

  else
  {
    v45 = sub_1BE0491B4();
    (*(*(v45 - 8) + 56))(v29, 1, 1, v45);
    v46 = sub_1BE049E04();
    (*(*(v46 - 8) + 56))(v28, 1, 1, v46);
  }

  v47 = v54;
  (*(v13 + 32))(v54, v15, v24);
  (*(v11 + 32))(v47 + v25[5], v55, v56);
  (*(v58 + 32))(v47 + v25[6], v57, v27);
  sub_1BD0DE204(v29, v47 + v25[7], &qword_1EBD3F7C0, &unk_1BE0D6570);
  return sub_1BD0DE204(v28, v47 + v25[8], &qword_1EBD3F7B8, &unk_1BE0E29B0);
}

void sub_1BD270B6C(uint64_t a1)
{
  v2 = v1;
  v194 = a1;
  v177 = sub_1BE04BD74();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_1BE04B0F4();
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v172 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1BE049B44();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v158 = &v155 - v7;
  v8 = sub_1BE049904();
  v192 = *(v8 - 8);
  v193 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v184 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v183 = (&v155 - v11);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v169 = &v155 - v14;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
  MEMORY[0x1EEE9AC00](v168);
  v178 = &v155 - v15;
  v179 = sub_1BE04AF64();
  v182 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v195 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v196 = &v155 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v180 = (&v155 - v20);
  v21 = sub_1BE0493F4();
  v22 = *(v21 - 8);
  v190 = v21;
  v191 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE049A94();
  v181 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v197 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v157 = &v155 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v155 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v155 - v33;
  v35 = type metadata accessor for TransactionContext(0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v155 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v40 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel___observationRegistrar;
  v200 = v2;
  v41 = sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  v166 = v40;
  v165 = v41;
  sub_1BE04B594();
  KeyPath, v42, v43, v44, v45, v46, v47, v48;
  v49 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  swift_beginAccess();
  v167 = v2;
  sub_1BD0DE19C(v2 + v49, v34, &qword_1EBD3F790, &qword_1BE0D6710);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    v50 = &qword_1EBD3F790;
    v51 = &qword_1BE0D6710;
    v52 = v34;
LABEL_21:
    sub_1BD0DE53C(v52, v50, v51);
    return;
  }

  sub_1BD2727E8(v34, v38, type metadata accessor for TransactionContext);
  v53 = *(v181 + 2);
  v189 = v25;
  v185 = v53;
  v186 = v181 + 16;
  v53(v31, v38, v25);
  sub_1BE0499A4();
  v164 = sub_1BE0493A4();
  v163 = v54;
  v55 = v191 + 8;
  v188 = *(v191 + 1);
  v188(v24, v190);
  v56 = v180;
  sub_1BE04AEF4();
  v57 = sub_1BE04AE64();
  v58 = PKStartOfYear();

  v162 = v31;
  if (!v58)
  {
    __break(1u);
    goto LABEL_25;
  }

  v59 = v196;
  sub_1BE04AEE4();

  v60 = sub_1BE04AE64();
  v61 = PKEndOfYear();

  v62 = v179;
  if (!v61)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v63 = v195;
  sub_1BE04AEE4();

  v64 = v63;
  sub_1BD272850(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if ((sub_1BE052314() & 1) == 0)
  {
    __break(1u);
LABEL_23:
    v38 = sub_1BD1D825C(0, *(v38 + 2) + 1, 1, v38);
    goto LABEL_10;
  }

  v187 = v24;
  v191 = v55;
  v156 = v38;
  v65 = v182;
  v66 = *(v182 + 32);
  v67 = v169;
  v66(v169, v59, v62);
  v68 = v171;
  v66(&v67[*(v171 + 48)], v64, v62);
  v69 = v170;
  sub_1BD0DE19C(v67, v170, &unk_1EBD38810, &unk_1BE0B6F60);
  v70 = *(v68 + 48);
  v71 = v178;
  v66(v178, v69, v62);
  v72 = *(v65 + 8);
  v72(v69 + v70, v62);
  sub_1BD0DE204(v67, v69, &unk_1EBD38810, &unk_1BE0B6F60);
  v66(&v71[*(v168 + 36)], (v69 + *(v68 + 48)), v62);
  v182 = v65 + 8;
  v171 = v72;
  v73 = (v72)(v69, v62);
  MEMORY[0x1EEE9AC00](v73);
  v74 = v164;
  *(&v155 - 4) = v71;
  *(&v155 - 3) = v74;
  *(&v155 - 2) = v163;
  v75 = v194;
  sub_1BE048C84();
  sub_1BD1CEA30(sub_1BD272898, (&v155 - 6), v75);
  v77 = v76;
  v78 = v183;
  v79 = v162;
  sub_1BE049A34();
  v80 = v192;
  v81 = v193;
  v82 = v184;
  (*(v192 + 104))(v184, *MEMORY[0x1E6967980], v193);
  sub_1BD272850(&qword_1EBD3F7A0, MEMORY[0x1E6967988], MEMORY[0x1E6967998]);
  LOBYTE(v69) = sub_1BE052334();
  v83 = *(v80 + 8);
  v83(v82, v81);
  v83(v78, v81);
  v170 = 0;
  if (v69)
  {
    v24 = v189;
LABEL_13:
    v92 = v197;
    v38 = v77;
    goto LABEL_14;
  }

  v84 = v158;
  sub_1BE0499E4();
  v85 = v160;
  v86 = v159;
  v87 = v161;
  (*(v160 + 104))(v159, *MEMORY[0x1E6967B10], v161);
  sub_1BD272850(&qword_1EBD3F7A8, MEMORY[0x1E6967B20], MEMORY[0x1E6967B40]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v88 = *(v85 + 8);
  v88(v86, v87);
  v88(v84, v87);
  v24 = v189;
  if (v198 != v199)
  {
    goto LABEL_13;
  }

  v55 = v157;
  v185(v157, v79, v189);
  v38 = v77;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v181;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  v91 = *(v38 + 2);
  v90 = *(v38 + 3);
  if (v91 >= v90 >> 1)
  {
    v38 = sub_1BD1D825C((v90 > 1), v91 + 1, 1, v38);
  }

  *(v38 + 2) = v91 + 1;
  v56[4](&v38[((*(v56 + 80) + 32) & ~*(v56 + 80)) + v56[9] * v91], v55, v24);
  v92 = v197;
LABEL_14:
  v196 = (MEMORY[0x1BFB403C0](0) >> 48);
  v193 = v93 >> 48;
  v100 = *(v38 + 2);
  LODWORD(v192) = v94 >> 16;
  if (v100)
  {
    v101 = (v181[80] + 32) & ~v181[80];
    v169 = v38;
    v194 = v93 >> 32;
    v195 = (v93 >> 16);
    v102 = &v38[v101];
    v103 = *(v181 + 9);
    v183 = (v181 + 8);
    v184 = v103;
    do
    {
      v185(v92, v102, v24);
      v104 = v187;
      sub_1BE0499A4();
      sub_1BE0493C4();
      v193 = v105;
      LODWORD(v192) = v106;
      v188(v104, v190);
      v92 = v197;
      v24 = v189;
      v107 = sub_1BE053384();
      v195 = (v108 >> 16);
      v196 = HIWORD(v107);
      v194 = HIDWORD(v108);
      v109 = HIWORD(v108);
      v111 = HIWORD(v110);
      (*v183)(v92, v24);
      v102 = &v184[v102];
      --v100;
    }

    while (v100);
    LODWORD(v192) = v111;
    v193 = v109;
    v169, v112, v113, v114, v115, v116, v117, v118;
  }

  else
  {
    v38, v93, v94, v95, v96, v97, v98, v99;
  }

  v119 = v187;
  sub_1BE049404();
  v120 = v172;
  sub_1BE04B054();
  v121 = sub_1BE0493E4();
  v123 = v122;
  (*(v173 + 8))(v120, v174);
  v188(v119, v190);
  v124 = v176;
  v125 = v175;
  v126 = v177;
  (*(v176 + 104))(v175, *MEMORY[0x1E69B8040], v177);
  v127 = PKPassKitBundle();
  if (v127)
  {
    v128 = v127;
    v129 = sub_1BE04B6F4();
    v131 = v130;

    (*(v124 + 8))(v125, v126);
    v132 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v132);
    v133 = v167;
    *(&v155 - 6) = v167;
    *(&v155 - 5) = v121;
    *(&v155 - 4) = v123;
    *(&v155 - 3) = v129;
    *(&v155 - 2) = v131;
    v198 = v133;
    sub_1BE04B584();
    v132, v134, v135, v136, v137, v138, v139, v140;
    v131, v141, v142, v143, v144, v145, v146, v147;
    v123, v148, v149, v150, v151, v152, v153, v154;
    (v171)(v180, v179);
    (*(v181 + 1))(v162, v24);
    sub_1BD273424(v156, type metadata accessor for TransactionContext);
    v50 = &unk_1EBD387B0;
    v51 = "FM\r";
    v52 = v178;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

BOOL sub_1BD271CA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v58 = a4;
  v57 = a3;
  v4 = sub_1BE049B44();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v48 - v7;
  v8 = sub_1BE049904();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v48 - v11;
  v12 = sub_1BE0493F4();
  v56 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04AF64();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049974();
  sub_1BD272850(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1BE052304())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
    v19 = sub_1BE052314();
    (*(v16 + 8))(v18, v15);
    if (v19)
    {
      sub_1BE0499A4();
      v20 = sub_1BE0493A4();
      v22 = v21;
      (*(v56 + 8))(v14, v12);
      if (v20 == v57 && v22 == v58)
      {
        v22, v23, v57, v58, v24, v25, v26, v27;
      }

      else
      {
        v29 = sub_1BE053B84();
        v22, v30, v31, v32, v33, v34, v35, v36;
        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }

      v37 = v52;
      sub_1BE049A34();
      v39 = v53;
      v38 = v54;
      v40 = v55;
      (*(v54 + 104))(v53, *MEMORY[0x1E6967980], v55);
      sub_1BD272850(&qword_1EBD3F7A0, MEMORY[0x1E6967988], MEMORY[0x1E6967998]);
      v41 = sub_1BE052334();
      v42 = *(v38 + 8);
      v42(v39, v40);
      v42(v37, v40);
      if ((v41 & 1) == 0)
      {
        v43 = v48;
        sub_1BE0499E4();
        v45 = v49;
        v44 = v50;
        v46 = v51;
        (*(v50 + 104))(v49, *MEMORY[0x1E6967B10], v51);
        sub_1BD272850(&qword_1EBD3F7A8, MEMORY[0x1E6967B20], MEMORY[0x1E6967B40]);
        sub_1BE0526E4();
        sub_1BE0526E4();
        v47 = *(v44 + 8);
        v47(v45, v46);
        v47(v43, v46);
        return v60 == v59;
      }
    }
  }

  else
  {
    (*(v16 + 8))(v18, v15);
  }

  return 0;
}

uint64_t sub_1BD272208()
{
  sub_1BD273424(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel, _s12DetailsModelVMa);
  sub_1BD273424(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__selectedModel, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyModel, &qword_1EBD3F780, &unk_1BE0DFFD0);
  sub_1BD27273C(*(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel), *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 8), *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 16), *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 24), v1, v2, v3, v4);
  sub_1BD0D4744(*(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted), *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted + 8), v5, v6, v7, v8, v9, v10);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext, &qword_1EBD3F790, &qword_1BE0D6710);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken, &qword_1EBD3F788, &unk_1BE0E2970);
  v11 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel___observationRegistrar;
  v12 = sub_1BE04B5D4();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  return swift_deallocClassInstance();
}

void sub_1BD2723A0(uint64_t a1)
{
  _s12DetailsModelVMa(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1BD2725E8(319, &qword_1EBD3F758, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      if (v3 <= 0x3F)
      {
        sub_1BD2725E8(319, &qword_1EBD3F760, type metadata accessor for TransactionContext);
        if (v4 <= 0x3F)
        {
          sub_1BD2725E8(319, &qword_1EBD3F768, MEMORY[0x1E69675F8]);
          if (v5 <= 0x3F)
          {
            sub_1BE04B5D4();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1BD2725E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD272664(uint64_t a1)
{
  result = sub_1BE04AF64();
  if (v2 <= 0x3F)
  {
    result = sub_1BE0493F4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BD2726F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1BE048C84();

    sub_1BE048C84();
  }
}

void sub_1BD27273C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;

    a4, v9, v10, v11, v12, v13, v14, v15;
  }
}

uint64_t sub_1BD272780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD2727E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD272850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD272934(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = v9 == 0;
  v20 = v9;
  if (!v9)
  {
    return 0;
  }

  v19[3] = v2;
  v22 = (v6 + 8);
  v11 = 0;
  v12 = *(sub_1BE049A94() - 8);
  v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19[1] = *(v12 + 72);
  v19[2] = v13;
  do
  {
    v21 = v10;
    sub_1BE049A14();
    v14 = 0;
    v15 = *(a2 + 16);
    while (v15 != v14)
    {
      v16 = v14 + 1;
      sub_1BD272850(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v17 = sub_1BE052334();
      v14 = v16;
      if (v17)
      {
        (*v22)(v8, v5);
        return v11;
      }
    }

    (*v22)(v8, v5);
    v10 = ++v11 == v20;
  }

  while (v11 != v20);
  return 0;
}

uint64_t sub_1BD272B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE048F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F950, &unk_1BE0E2AB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v21 - v12, &qword_1EBD3F788, &unk_1BE0E2970);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD3F788, &unk_1BE0E2970);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BD0DE19C(v13, v10, &qword_1EBD3F788, &unk_1BE0E2970);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1BD272850(&qword_1EBD3F958, MEMORY[0x1E69675F8], MEMORY[0x1E6967600]);
      v18 = sub_1BE052334();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1BD0DE53C(v13, &qword_1EBD3F788, &unk_1BE0E2970);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD3F950, &unk_1BE0E2AB0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1BD0DE53C(v13, &qword_1EBD3F788, &unk_1BE0E2970);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1BD272EAC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BE049A94();
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v38 = a1;
  v17 = *a1;
  v18 = v54;
  result = sub_1BD272934(v17, a2);
  if (!v18)
  {
    v21 = v17;
    v52 = v16;
    v41 = v13;
    if (v20)
    {
      return *(v17 + 16);
    }

    else
    {
      v22 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_34:
        __break(1u);
      }

      else
      {
        v43 = (v8 + 8);
        v44 = (v5 + 8);
        v36 = 0;
        v37 = (v8 + 40);
        v23 = v51;
        v42 = v8;
        v40 = v10;
        v49 = v8 + 16;
LABEL_9:
        while (1)
        {
          v25 = v21[2];
          if (v22 == v25)
          {
            break;
          }

          if (v22 >= v25)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v53 = result;
          v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v54 = v21;
          v45 = v26;
          v46 = *(v8 + 72);
          v47 = v21 + v26;
          v27 = *(v8 + 16);
          v50 = v46 * v22;
          v48 = v27;
          (v27)(v52, v21 + v26 + v46 * v22, v23);
          sub_1BE049A14();
          v28 = 0;
          v29 = *(a2 + 16);
          while (v29 != v28)
          {
            v30 = v28 + 1;
            sub_1BD272850(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            v31 = sub_1BE052334();
            v28 = v30;
            if (v31)
            {
              (*v44)(v7, v4);
              v23 = v51;
              (*v43)(v52, v51);
              v8 = v42;
              result = v53;
              v21 = v54;
              v24 = __OFADD__(v22++, 1);
              if (v24)
              {
                goto LABEL_28;
              }

              goto LABEL_9;
            }
          }

          (*v44)(v7, v4);
          v23 = v51;
          (*v43)(v52, v51);
          result = v53;
          if (v53 == v22)
          {
            v8 = v42;
            v21 = v54;
          }

          else
          {
            if ((v53 & 0x8000000000000000) != 0)
            {
              goto LABEL_30;
            }

            if (v53 >= v54[2])
            {
              goto LABEL_31;
            }

            v39 = v54[2];
            v32 = v47;
            v46 *= v53;
            v33 = v48;
            result = (v48)(v41, &v47[v46], v23);
            if (v22 >= v39)
            {
              goto LABEL_32;
            }

            v33(v40, &v32[v50], v51);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v34 = v54;
            }

            else
            {
              v34 = sub_1BD4FFF40(v54);
            }

            v35 = *v37;
            v48 = v34 + v45;
            v23 = v51;
            v54 = v35;
            result = (v35)(v34 + v45 + v46, v40, v51);
            if (v22 >= v34[2])
            {
              goto LABEL_33;
            }

            (v54)(&v48[v50], v41, v23);
            v21 = v34;
            *v38 = v34;
            v8 = v42;
            result = v53;
          }

          v24 = __OFADD__(result++, 1);
          if (v24)
          {
            goto LABEL_29;
          }

          v24 = __OFADD__(v22++, 1);
          if (v24)
          {
            goto LABEL_28;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BD2733BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD273424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD273538()
{
  result = qword_1EBD3F8C0;
  if (!qword_1EBD3F8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F8B8, &unk_1BE0C68A0);
    sub_1BD2735DC();
    sub_1BD0FA424(&qword_1EBD38F80, &qword_1EBD38EE0, &unk_1BE0B7F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8C0);
  }

  return result;
}

unint64_t sub_1BD2735DC()
{
  result = qword_1EBD3F8C8;
  if (!qword_1EBD3F8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F848, &qword_1BE0C67A8);
    sub_1BD273668();
    sub_1BD273AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8C8);
  }

  return result;
}

unint64_t sub_1BD273668()
{
  result = qword_1EBD3F8D0;
  if (!qword_1EBD3F8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F840, &qword_1BE0C67A0);
    sub_1BD2736F4();
    sub_1BD273948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8D0);
  }

  return result;
}

unint64_t sub_1BD2736F4()
{
  result = qword_1EBD3F8D8;
  if (!qword_1EBD3F8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F838, &qword_1BE0C6798);
    sub_1BD2738C0(&qword_1EBD3F8E0, &qword_1EBD3F830, &qword_1BE0E29F0, MEMORY[0x1E6968D00]);
    sub_1BD2738C0(&qword_1EBD3F8F0, &qword_1EBD3F820, &qword_1BE0C6790, MEMORY[0x1E6968D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8D8);
  }

  return result;
}

unint64_t sub_1BD2737D8()
{
  result = qword_1EBD3F8E8;
  if (!qword_1EBD3F8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F828, &unk_1BE0E8C00);
    v1 = MEMORY[0x1E69695A8];
    sub_1BD272850(&qword_1EBD38F58, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1BD272850(&qword_1EBD38F68, v1, MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8E8);
  }

  return result;
}

uint64_t sub_1BD2738C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1BD0FA424(&qword_1EBD38F70, &qword_1EBD38EF0, &qword_1BE0B7F50);
    sub_1BD2737D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD273948()
{
  result = qword_1EBD3F8F8;
  if (!qword_1EBD3F8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F818, &qword_1BE0C6788);
    sub_1BD0FA424(&qword_1EBD3F900, &qword_1EBD3F810, &qword_1BE0C6780);
    sub_1BD2739EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8F8);
  }

  return result;
}

unint64_t sub_1BD2739EC()
{
  result = qword_1EBD3F908;
  if (!qword_1EBD3F908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F808, &qword_1BE0C6778);
    v1 = MEMORY[0x1E69678D8];
    sub_1BD272850(&qword_1EBD3F910, MEMORY[0x1E69678D8], MEMORY[0x1E69678F8]);
    sub_1BD272850(&qword_1EBD3F918, v1, MEMORY[0x1E69678E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F908);
  }

  return result;
}

unint64_t sub_1BD273AD4()
{
  result = qword_1EBD3F920;
  if (!qword_1EBD3F920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F800, &qword_1BE0DFA30);
    sub_1BD0FA424(&qword_1EBD3F928, &qword_1EBD3F7F8, &qword_1BE0C6770);
    sub_1BD273B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F920);
  }

  return result;
}

unint64_t sub_1BD273B78()
{
  result = qword_1EBD3F930;
  if (!qword_1EBD3F930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F7F0, &unk_1BE0DFA20);
    v1 = MEMORY[0x1E6967938];
    sub_1BD272850(&qword_1EBD3F938, MEMORY[0x1E6967938], MEMORY[0x1E6967958]);
    sub_1BD272850(&qword_1EBD3F940, v1, MEMORY[0x1E6967940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F930);
  }

  return result;
}

uint64_t sub_1BD273C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD273D04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_1BD273E78(void (*a1)(unint64_t, unint64_t, void *, uint64_t), uint64_t a2)
{
  v74 = a2;
  v75 = a1;
  v81[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1BE04BA14();
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v67 - v6;
  v7 = sub_1BE04BAC4();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v73 = v2;
  v11 = sub_1BD187A4C(v2, KeyPath);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v26 = v11 + 4;
  v27 = v11[2];
  v79 = 0x80000001BE1182F0;
  v80 = 0x80000001BE118310;
  v77 = 0x80000001BE118280;
  v78 = 0x80000001BE1182A0;
  v76 = 0x80000001BE118260;
  while (2)
  {
    if (v27)
    {
      v28 = 0xEF65636976654420;
      switch(*v26)
      {
        case 1:
          v28 = 0x80000001BE118230;
          goto LABEL_3;
        case 2:
          v28 = 0xE90000000000006FLL;
          goto LABEL_3;
        case 3:
          v28 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          v28 = v76;
          goto LABEL_3;
        case 5:
          v28 = v77;
          goto LABEL_3;
        case 6:
          v28 = v78;
          goto LABEL_3;
        case 7:
          v28 = 0xEC000000746C7561;
          goto LABEL_3;
        case 8:
          v28 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v11, v19, v20, v21, v22, v23, v24, v25;
          v11 = 0xE90000000000006ELL;
          goto LABEL_26;
        case 0xA:
          v28 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v28 = v79;
          goto LABEL_3;
        case 0xC:
          v28 = 0xEC00000068637461;
          goto LABEL_3;
        case 0xD:
          v28 = v80;
          goto LABEL_3;
        default:
LABEL_3:
          v29 = sub_1BE053B84();
          v28, v30, v31, v32, v33, v34, v35, v36;
          ++v26;
          --v27;
          if ((v29 & 1) == 0)
          {
            continue;
          }

LABEL_26:
          v11, v19, v20, v21, v22, v23, v24, v25;
          v75(0x6F63206775626564uLL, 0xEC0000006769666ELL, 0, 0);
          break;
      }
    }

    else
    {
      v11, v19, v20, v21, v22, v23, v24, v25;
      sub_1BE04BC34();
      v37 = sub_1BE04BAB4();
      v38 = v68;
      v39 = *(v67 + 8);
      v39(v9, v68);
      v40 = v75;
      if (v37)
      {
        v75(0xD000000000000012, 0x80000001BE11FE20, 0, 1);
      }

      sub_1BE04BC34();
      v41 = v69;
      sub_1BE04BA24();
      v39(v9, v38);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F988, &unk_1BE0C6900) + 48);
      v43 = *MEMORY[0x1E69B8010];
      v44 = sub_1BE04B9F4();
      v45 = v70;
      (*(*(v44 - 8) + 104))(v70, v43, v44);
      v46 = *MEMORY[0x1E69B7FF8];
      v47 = sub_1BE04B9E4();
      (*(*(v47 - 8) + 104))(&v45[v42], v46, v47);
      v49 = v71;
      v48 = v72;
      (*(v71 + 104))(v45, *MEMORY[0x1E69B8028], v72);
      LOBYTE(v46) = MEMORY[0x1BFB38A90](v41, v45);
      v50 = *(v49 + 8);
      v50(v45, v48);
      v50(v41, v48);
      if (v46)
      {
        PKSetHasSeenApplePayEducation();
        v40(0xD000000000000027, 0x80000001BE11FDF0, 0, 1);
      }

      else
      {
        v51 = objc_opt_self();
        v52 = sub_1BE04BC84();
        v81[0] = 0;
        v53 = [v51 shouldPresentForPass:v52 inEducationContext:0 reason:v81];

        v54 = v81[0];
        if (v81[0])
        {
          v55 = v81[0];
        }

        else
        {
          sub_1BD274AF0();
          sub_1BE0530A4();
        }

        v56 = v54;
        v57 = sub_1BE052494();
        v59 = v58;
        v40(v53, v57, v58, 2);

        v59, v60, v61, v62, v63, v64, v65, v66;
      }
    }

    break;
  }
}

id sub_1BD274578()
{
  v0 = sub_1BE04BAC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0F4();
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v8, v9, "Showing Apple Pay education controller", v10, 2u);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  PKSetHasSeenApplePayEducation();
  v11 = sub_1BE04BC84();
  sub_1BE04BC34();
  v12 = sub_1BE04B9A4();
  (*(v1 + 8))(v3, v0);
  v13 = [objc_allocWithZone(PKEducationViewController) initWithPaymentPass:v11 setupContext:v12 educationContext:0];

  if (v13)
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD274AE8;
    v38 = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD2749B0;
    aBlock[3] = &block_descriptor_39;
    v15 = _Block_copy(aBlock);
    v16 = v38;
    v17 = v13;
    v16, v18, v19, v20, v21, v22, v23, v24;
    [v17 setContinueHandler_];
    _Block_release(v15);

    sub_1BE052434();
    v26 = v25;
    v27 = v17;
    v28 = sub_1BE04BB74();
    v26, v29, v30, v31, v32, v33, v34, v35;
    [v27 setReporter_];
  }

  return v13;
}

void sub_1BD2748DC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_4:
    if (!a1)
    {
      return;
    }

    goto LABEL_5;
  }

  v5 = Strong;
  v6 = Strong + OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = v5;
    sub_1BD8659A4(v9, &off_1F3B9A600, ObjectType, v7);

    Strong = swift_unknownObjectRelease();
    goto LABEL_4;
  }

  if (!a1)
  {
    return;
  }

LABEL_5:
  a1(Strong);
}

double sub_1BD2749B0(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = swift_allocObject();
    v5[2] = v4;
    v4 = sub_1BD166E88;
  }

  else
  {
    v5 = 0;
  }

  sub_1BE048964();
  v3(v4, v5);
  sub_1BD0D4744(v4, v5, v6, v7, v8, v9, v10, v11);

  v2, v12, v13, v14, v15, v16, v17, v18;
  return result;
}

uint64_t sub_1BD274A58()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD274A94(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD274AF0()
{
  result = qword_1EBD45E60;
  if (!qword_1EBD45E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45E60);
  }

  return result;
}

uint64_t FlightWidgetHeaderView.init(iconImage:flightCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FlightWidgetHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F990, &qword_1BE0C6910);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0x4018000000000000;
  v8[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F998, &qword_1BE0C6918);
  sub_1BD274D18(v9, v10, v11, &v8[*(v12 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD3F9A0, &qword_1EBD3F990, &qword_1BE0C6910, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v3 + 8))(v5, v2);
  return sub_1BD0DE53C(v8, &qword_1EBD3F990, &qword_1BE0C6910);
}

uint64_t sub_1BD274D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9A8, &qword_1BE0C69B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9B0, &qword_1BE0C69C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v24 - v18);
  *v19 = sub_1BE051CB4();
  v19[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9B8, &qword_1BE0C69C8);
  sub_1BD275380(a2, a3, v19 + *(v21 + 44));
  v24[1] = a1;
  v24[2] = a2;
  v24[3] = a3;
  sub_1BD274F70();
  sub_1BD0DE19C(v19, v16, &qword_1EBD3F9B0, &qword_1BE0C69C0);
  sub_1BD0DE19C(v13, v10, &qword_1EBD3F9A8, &qword_1BE0C69B8);
  sub_1BD0DE19C(v16, a4, &qword_1EBD3F9B0, &qword_1BE0C69C0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9C0, &qword_1BE0C69D0);
  sub_1BD0DE19C(v10, a4 + *(v22 + 48), &qword_1EBD3F9A8, &qword_1BE0C69B8);
  sub_1BD0DE53C(v13, &qword_1EBD3F9A8, &qword_1BE0C69B8);
  sub_1BD0DE53C(v19, &qword_1EBD3F9B0, &qword_1BE0C69C0);
  sub_1BD0DE53C(v10, &qword_1EBD3F9A8, &qword_1BE0C69B8);
  return sub_1BD0DE53C(v16, &qword_1EBD3F9B0, &qword_1BE0C69C0);
}

uint64_t sub_1BD274F70()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1BE050464();
  v8 = sub_1BE0505F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v7, v9, v11, v13, v15, v16, v17, v18;
  sub_1BD0DDF10(v0, v2, (v4 & 1), v19, v20, v21, v22, v23);
  v6, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_1BE0513E4();
  v32 = sub_1BE050574();
  v34 = v33;
  LOBYTE(v6) = v35;
  v37 = v36;
  sub_1BD0DDF10(v8, v10, (v12 & 1), v36, v38, v39, v40, v41);
  v31, v42, v43, v44, v45, v46, v47, v48;
  v14, v49, v50, v51, v52, v53, v54, v55;
  *&v66 = v32;
  *(&v66 + 1) = v34;
  LOBYTE(v67) = v6 & 1;
  *(&v67 + 1) = v37;
  *&v68 = swift_getKeyPath();
  *(&v68 + 1) = 0x3FE0000000000000;
  *&v69 = swift_getKeyPath();
  BYTE8(v69) = 1;
  *&v70 = swift_getKeyPath();
  *(&v70 + 1) = 1;
  sub_1BE052434();
  v57 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9C8, &qword_1BE0C6A68);
  sub_1BD275AC4();
  sub_1BE050DE4();
  v57, v58, v59, v60, v61, v62, v63, v64;
  v71[2] = v68;
  v71[3] = v69;
  v71[4] = v70;
  v72 = 0;
  v71[0] = v66;
  v71[1] = v67;
  return sub_1BD0DE53C(v71, &qword_1EBD3F9C8, &qword_1BE0C6A68);
}

void sub_1BD275190(uint64_t a1@<X8>)
{
  v3 = sub_1BE051584();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v1;
  if (*v1)
  {
    v9 = 12.0;
  }

  else
  {
    v9 = 23.0;
  }

  v10 = PKUIGetWalletAppIconWithSize(v5, v9, v9);
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BE051544();
    (*(v4 + 104))(v7, *MEMORY[0x1E6981630], v3);
    v13 = sub_1BE0515E4();
    v12, v14, v15, v16, v17, v18, v19, v20;
    (*(v4 + 8))(v7, v3);
    sub_1BE051CD4();
    sub_1BE04E5E4();

    v26[8] = 1;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = 1;
    v25 = (v8 != 0) << 62;
  }

  else
  {
    v13 = 0;
    v25 = 0;
    v24 = 0;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  *a1 = v13;
  *(a1 + 8) = 0;
  *(a1 + 16) = v24;
  *(a1 + 24) = v21;
  *(a1 + 40) = v22;
  *(a1 + 56) = v23;
  *(a1 + 72) = v25;
  *(a1 + 80) = v25;
}

uint64_t sub_1BD275380@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v53 = a1;
  v54 = a2;
  v4 = sub_1BE051584();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9E8, &qword_1BE0C6A78);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9F0, &qword_1BE0C6A80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v14;
  if (v15)
  {
    v47 = v15;
    v46 = v15;
    v17 = sub_1BE051544();
    v49 = a3;
    v18 = v17;
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v19 = sub_1BE0515E4();
    v48 = v12;
    v20 = v19;
    v18, v21, v22, v23, v24, v25, v26, v27;
    (*(v5 + 8))(v7, v4);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *&v55[22] = v73;
    *&v55[38] = v74;
    *&v55[6] = v72;
    *(v65 + 2) = *v55;
    LOBYTE(v67) = 1;
    v64 = v20;
    LOWORD(v65[0]) = 1;
    *(&v65[1] + 2) = *&v55[16];
    *(&v65[2] + 2) = *&v55[32];
    *&v65[3] = *(&v74 + 1);
    BYTE8(v65[3]) = 0;
    sub_1BE052434();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA08, &qword_1BE0C6A98);
    sub_1BD275C34();
    v30 = v50;
    a3 = v49;
    sub_1BE050DE4();
    v31 = v47;

    v29, v32, v33, v34, v35, v36, v37, v38;
    v68 = v65[0];
    v69 = v65[1];
    v70[0] = v65[2];
    *(v70 + 9) = *(&v65[2] + 9);
    v67 = v64;
    v12 = v48;
    sub_1BD0DE53C(&v67, &qword_1EBD3FA08, &qword_1BE0C6A98);
    sub_1BD275D14(v30, v16);
    (*(v51 + 56))(v16, 0, 1, v52);
  }

  else
  {
    v31 = 0;
    (*(v51 + 56))(&v46 - v14, 1, 1, v52);
  }

  *&v67 = v31;
  *(&v67 + 1) = v53;
  *&v68 = v54;
  sub_1BD275190(v62);
  sub_1BD0DE19C(v16, v12, &qword_1EBD3F9F0, &qword_1BE0C6A80);
  v58 = v62[2];
  v59 = v62[3];
  v60 = v62[4];
  v61 = v63;
  v56 = v62[0];
  v57 = v62[1];
  sub_1BD0DE19C(v12, a3, &qword_1EBD3F9F0, &qword_1BE0C6A80);
  v39 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9F8, &qword_1BE0C6A88) + 48);
  v41 = v59;
  v40 = v60;
  v65[2] = v59;
  v65[3] = v60;
  v42 = v61;
  v66 = v61;
  v43 = v57;
  v65[0] = v57;
  v65[1] = v58;
  v44 = v56;
  v64 = v56;
  *(v39 + 32) = v58;
  *(v39 + 48) = v41;
  *(v39 + 64) = v40;
  *(v39 + 80) = v42;
  *v39 = v44;
  *(v39 + 16) = v43;
  sub_1BD0DE19C(&v64, &v67, &qword_1EBD3FA00, &qword_1BE0C6A90);
  sub_1BD0DE53C(v16, &qword_1EBD3F9F0, &qword_1BE0C6A80);
  v69 = v58;
  v70[0] = v59;
  v70[1] = v60;
  v71 = v61;
  v67 = v56;
  v68 = v57;
  sub_1BD0DE53C(&v67, &qword_1EBD3FA00, &qword_1BE0C6A90);
  return sub_1BD0DE53C(v12, &qword_1EBD3F9F0, &qword_1BE0C6A80);
}

uint64_t sub_1BD27585C@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F990, &qword_1BE0C6910);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0x4018000000000000;
  v8[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F998, &qword_1BE0C6918);
  sub_1BD274D18(v9, v10, v11, &v8[*(v12 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD3F9A0, &qword_1EBD3F990, &qword_1BE0C6910, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v3 + 8))(v5, v2);
  return sub_1BD0DE53C(v8, &qword_1EBD3F990, &qword_1BE0C6910);
}

uint64_t sub_1BD275A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD275A74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD275AC4()
{
  result = qword_1EBD3F9D0;
  if (!qword_1EBD3F9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F9C8, &qword_1BE0C6A68);
    sub_1BD275B7C();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F9D0);
  }

  return result;
}

unint64_t sub_1BD275B7C()
{
  result = qword_1EBD3F9D8;
  if (!qword_1EBD3F9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F9E0, &qword_1BE0C6A70);
    sub_1BD166FEC();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8, &qword_1BE0B7660, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F9D8);
  }

  return result;
}

unint64_t sub_1BD275C34()
{
  result = qword_1EBD3FA10;
  if (!qword_1EBD3FA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FA08, &qword_1BE0C6A98);
    sub_1BD23F914();
    sub_1BD275CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FA10);
  }

  return result;
}

unint64_t sub_1BD275CC0()
{
  result = qword_1EBD3FA18;
  if (!qword_1EBD3FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FA18);
  }

  return result;
}

uint64_t sub_1BD275D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9E8, &qword_1BE0C6A78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD275D90@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for PeerPaymentGroupedPaymentsView(0);
  sub_1BD0DE19C(v1 + *(v10 + 24), v9, &qword_1EBD3FA20, &qword_1BE0C6AD0);
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

void PeerPaymentGroupedPaymentsView.init(request:transactionSourceCollection:context:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0x4040000000000000;
  v8 = *(type metadata accessor for PeerPaymentGroupedPaymentsView(0) + 24);
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(type metadata accessor for PeerPaymentGroupedPaymentsModel(0));
  v9 = a1;
  v10 = a2;
  PeerPaymentGroupedPaymentsModel.init(request:transactionSourceCollection:context:)(v9, v10, a3);
  v12 = v11;
  sub_1BE051694();

  a4[1] = v13;
  a4[2] = v14;
}

uint64_t type metadata accessor for PeerPaymentGroupedPaymentsView(uint64_t a1)
{
  result = qword_1EBD3FA80;
  if (!qword_1EBD3FA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PeerPaymentGroupedPaymentsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA28, &qword_1BE0C6AD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-v5];
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA30, &qword_1BE0C6AE0) + 44);
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA38, &qword_1BE0C6AE8);
  sub_1BD0DE4F4(&qword_1EBD3FA40, &qword_1EBD3FA38, &qword_1BE0C6AE8, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  v13 = v1;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48, &qword_1BE0C6AF0);
  sub_1BD0DE4F4(&qword_1EBD3FA50, &qword_1EBD3FA28, &qword_1BE0C6AD8, MEMORY[0x1E697CD20]);
  sub_1BD279F20();
  sub_1BE050954();
  (*(v4 + 8))(v6, v3);
  v8 = sub_1BE04EC54();
  v9 = sub_1BE0501F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA68, &qword_1BE0C6AF8);
  v11 = v7 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

uint64_t sub_1BD27632C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v121 = a2;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAC8, &unk_1BE0C6BE0);
  v129 = *(v131 - 1);
  MEMORY[0x1EEE9AC00](v131);
  v116 = v113 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v113 - v5;
  v7 = sub_1BE04AA64();
  v117 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v115 = v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FAD8, &qword_1BE0C6BF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v120 = v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = v113 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v133 = v113 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v113 - v16;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FAE0, &qword_1BE0C6BF8);
  v119 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v113 - v20;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FAE8, &qword_1BE0C6C00);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v113 - v24;
  v135 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FAF0, &qword_1BE0C6C08);
  sub_1BD27A19C();
  v122 = v25;
  sub_1BE051A44();
  v134 = a1;
  sub_1BD2774A0(a1, &v137);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FB40, &unk_1BE0C6C30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD27A340();
  sub_1BD27AC24(&qword_1EBD512E0, &qword_1EBD39E98, &qword_1BE0B9A30);
  v123 = v21;
  v26 = v117;
  sub_1BE051A54();
  v114 = a1;
  v28 = *(a1 + 8);
  v27 = *(a1 + 16);
  v137 = v28;
  v138 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0, &qword_1BE0C6B88);
  sub_1BE0516A4();
  v30 = v136;
  sub_1BD8F8D70(v6);

  v31 = (*(v26 + 48))(v6, 1, v7);
  v127 = v17;
  if (v31 == 1)
  {
    sub_1BD0DE53C(v6, &unk_1EBD3CF70, &qword_1BE0BA000);
    v118 = *(v129 + 56);
    v118(v17, 1, 1, v131);
  }

  else
  {
    v32 = v115;
    v33 = (*(v26 + 32))(v115, v6, v7);
    v113[1] = v29;
    MEMORY[0x1EEE9AC00](v33);
    v113[-2] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB90, &unk_1BE0C6C80);
    sub_1BD27A53C();
    v34 = v116;
    sub_1BE051A44();
    v35 = v129;
    v36 = v131;
    (*(v129 + 32))(v17, v34, v131);
    v118 = *(v35 + 56);
    v118(v17, 0, 1, v36);
    (*(v26 + 8))(v32, v7);
  }

  v137 = v28;
  v138 = v27;
  sub_1BE0516A4();
  v37 = v136;
  v38 = v28;
  KeyPath = swift_getKeyPath();
  v137 = v37;
  sub_1BD27A95C(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v40, v41, v42, v43, v44, v45, v46;
  v47 = *(v37 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  sub_1BE048964();

  v48 = swift_getKeyPath();
  v137 = v47;
  sub_1BD27A95C(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();
  v48, v49, v50, v51, v52, v53, v54, v55;
  v56 = *(v47 + 24);
  v47, v57, v58, v59, v60, v61, v62, v63;
  if (v56 & 1) != 0 || (v137 = v38, v138 = v27, sub_1BE0516A4(), v64 = v136, v65 = swift_getKeyPath(), v137 = v64, sub_1BE04B594(), v65, v66, v67, v68, v69, v70, v71, v72, v73 = *(v64 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request), sub_1BE048964(), v64, v74 = swift_getKeyPath(), v137 = v73, sub_1BE04B594(), v74, v75, v76, v77, v78, v79, v80, v81, v82 = v73[2], v73, v83, v84, v85, v86, v87, v88, v89, LOBYTE(v73) = [v82 isPaid], v82, (v73))
  {
    v91 = 1;
    v92 = v131;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v90);
    v113[-2] = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB90, &unk_1BE0C6C80);
    sub_1BD27A53C();
    v93 = v116;
    sub_1BE051A44();
    v94 = v131;
    (*(v129 + 32))(v133, v93, v131);
    v92 = v94;
    v91 = 0;
  }

  v95 = v127;
  v96 = v133;
  v118(v133, v91, 1, v92);
  v97 = *(v125 + 16);
  v98 = v124;
  v99 = v126;
  v97(v124, v122, v126);
  v100 = v119;
  v131 = *(v119 + 16);
  v101 = v128;
  (v131)(v128, v123, v130);
  sub_1BD0DE19C(v95, v132, &qword_1EBD3FAD8, &qword_1BE0C6BF0);
  v102 = v96;
  v103 = v120;
  sub_1BD0DE19C(v102, v120, &qword_1EBD3FAD8, &qword_1BE0C6BF0);
  v104 = v121;
  v97(v121, v98, v99);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FBB0, qword_1BE0C6C90);
  v106 = v130;
  (v131)(&v104[v105[12]], v101, v130);
  v107 = v132;
  sub_1BD0DE19C(v132, &v104[v105[16]], &qword_1EBD3FAD8, &qword_1BE0C6BF0);
  sub_1BD0DE19C(v103, &v104[v105[20]], &qword_1EBD3FAD8, &qword_1BE0C6BF0);
  sub_1BD0DE53C(v133, &qword_1EBD3FAD8, &qword_1BE0C6BF0);
  sub_1BD0DE53C(v127, &qword_1EBD3FAD8, &qword_1BE0C6BF0);
  v108 = *(v100 + 8);
  v109 = v106;
  v108(v123, v106);
  v110 = *(v125 + 8);
  v111 = v126;
  v110(v122, v126);
  sub_1BD0DE53C(v103, &qword_1EBD3FAD8, &qword_1BE0C6BF0);
  sub_1BD0DE53C(v107, &qword_1EBD3FAD8, &qword_1BE0C6BF0);
  v108(v128, v109);
  return (v110)(v124, v111);
}

uint64_t sub_1BD276EA8(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentGroupedPaymentsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v10[3] = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0, &qword_1BE0C6B88);
  sub_1BE0516A4();
  sub_1BD8F8890();
  v6 = v5;

  v10[2] = v6;
  sub_1BD27A628(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1BD27A68C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBC0, &unk_1BE0E1AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB60, &qword_1BE0C6C40);
  sub_1BD0DE4F4(&qword_1EBD3FBC8, &qword_1EBD3FBC0, &unk_1BE0E1AC0, MEMORY[0x1E69E6338]);
  sub_1BD27A3C4();
  sub_1BD27A95C(&unk_1EBD3FBD0, type metadata accessor for TransactionPresentation, &unk_1BE0EF060);
  return sub_1BE0519D4();
}

double sub_1BD2770B8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PeerPaymentGroupedPaymentsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  sub_1BD27A628(a2, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1BD27A68C(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v16 = 0;
  swift_retain_n();
  v12 = sub_1BE04F794();
  v13 = v16;
  *a3 = v9;
  *(a3 + 8) = sub_1BD27A9A4;
  *(a3 + 16) = v11;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = v13;
  *(a3 + 64) = v12;
  *(a3 + 72) = sub_1BD277450;
  *(a3 + 80) = 0;
  return result;
}

void sub_1BD277210(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0, &qword_1BE0C6B88);
  sub_1BE0516A4();
  v4 = *&v27[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_transactionSourceCollection];

  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v6 = [objc_opt_self() requiredContactKeys];
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56750, &unk_1BE0FF5C0);
    v8 = sub_1BE052744();

    v9 = sub_1BE052724();
    v8, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v9 = 0;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69B8740]) initWithContactStore:v5 keysToFetch:v9];

  v18 = [objc_opt_self() sharedService];
  v19 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  LOBYTE(v26) = 0;
  v20 = [objc_allocWithZone(PKPaymentTransactionDetailViewController) initWithTransaction:v3 transactionSourceCollection:v4 familyCollection:0 account:0 accountUserCollection:0 bankConnectInstitution:0 physicalCards:0 contactResolver:v17 peerPaymentWebService:v18 paymentServiceDataProvider:v19 detailViewStyle:0 allowTransactionLinks:v26];

  if (v20)
  {
    v21 = sub_1BE04F7B4();
    v22 = v20;
    v23 = sub_1BE04EC54();
    v24 = sub_1BE0501D4();

    v25 = 1;
  }

  else
  {
    v21 = 0;
    v25 = 0;
    v23 = 0;
    v24 = 0;
  }

  *a2 = v21;
  *(a2 + 8) = 0;
  *(a2 + 16) = v25;
  *(a2 + 24) = v20;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
}

id sub_1BD2774A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v75 = v7;
  v76 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0, &qword_1BE0C6B88);
  sub_1BE0516A4();
  v9 = v74;
  KeyPath = swift_getKeyPath();
  v75 = v9;
  sub_1BD27A95C(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = *&v9[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request];
  sub_1BE048964();

  v19 = swift_getKeyPath();
  v75 = v18;
  sub_1BD27A95C(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();
  v19, v20, v21, v22, v23, v24, v25, v26;
  LOBYTE(a1) = v18[24];
  v18, v27, v28, v29, v30, v31, v32, v33;
  if ((a1 & 1) == 0)
  {
    v75 = v7;
    v76 = v8;
    sub_1BE0516A4();
    v34 = v74;
    v35 = swift_getKeyPath();
    v75 = v34;
    sub_1BE04B594();
    v35, v36, v37, v38, v39, v40, v41, v42;
    v43 = *&v34[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request];
    sub_1BE048964();

    v44 = swift_getKeyPath();
    v75 = v43;
    sub_1BE04B594();
    v44, v45, v46, v47, v48, v49, v50, v51;
    v52 = v43[2];
    v43, v53, v54, v55, v56, v57, v58, v59;
    LODWORD(v43) = [v52 isPaid];

    if (!v43)
    {
      result = 0;
      v67 = 0;
      v70 = 0;
      v68 = 0;
      goto LABEL_6;
    }
  }

  v61 = v72;
  v60 = v73;
  (*(v72 + 104))(v6, *MEMORY[0x1E69B8050], v73);
  result = PKPassKitBundle();
  if (result)
  {
    v63 = result;
    v64 = sub_1BE04B6F4();
    v66 = v65;

    (*(v61 + 8))(v6, v60);
    v75 = v64;
    v76 = v66;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    v70 = v69 & 1;
LABEL_6:
    *a2 = result;
    a2[1] = v67;
    a2[2] = v70;
    a2[3] = v68;
    return result;
  }

  __break(1u);
  return result;
}

int *sub_1BD277830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v29 = a2;
  v26 = sub_1BE04AA64();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  (*(v5 + 104))(v7, *MEMORY[0x1E69B8050], v4, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v5 + 8))(v7, v4);
    *&v30 = v14;
    *(&v30 + 1) = v16;
    v17 = v26;
    (*(v2 + 16))(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26);
    v18 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v19 = swift_allocObject();
    (*(v2 + 32))(v19 + v18, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    sub_1BD0DDEBC();
    sub_1BE051744();
    sub_1BE051CE4();
    sub_1BE04EE54();
    v20 = v29;
    (*(v27 + 32))(v29, v11, v28);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB90, &unk_1BE0C6C80);
    v21 = (v20 + result[9]);
    v22 = v35;
    v21[4] = v34;
    v21[5] = v22;
    v21[6] = v36;
    v23 = v31;
    *v21 = v30;
    v21[1] = v23;
    v24 = v33;
    v21[2] = v32;
    v21[3] = v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD277BBC(uint64_t a1)
{
  v1 = sub_1BE04A9C4();
  PKOpenURL();
}

int *sub_1BD277C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v2 = type metadata accessor for PeerPaymentGroupedPaymentsView(0);
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v8 = *(v26 - 8);
  v9 = MEMORY[0x1EEE9AC00](v26);
  v11 = &v24 - v10;
  (*(v5 + 104))(v7, *MEMORY[0x1E69B8050], v4, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v5 + 8))(v7, v4);
    *&v28 = v14;
    *(&v28 + 1) = v16;
    sub_1BD27A628(v25, &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v18 = swift_allocObject();
    sub_1BD27A68C(&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    sub_1BD0DDEBC();
    sub_1BE051744();
    sub_1BE051CE4();
    sub_1BE04EE54();
    v19 = v27;
    (*(v8 + 32))(v27, v11, v26);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB90, &unk_1BE0C6C80);
    v20 = (v19 + result[9]);
    v21 = v33;
    v20[4] = v32;
    v20[5] = v21;
    v20[6] = v34;
    v22 = v29;
    *v20 = v28;
    v20[1] = v22;
    v23 = v31;
    v20[2] = v30;
    v20[3] = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD277F64(uint64_t a1)
{
  v2 = sub_1BE04E664();
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v45 = v6;
  v46 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0, &qword_1BE0C6B88);
  sub_1BE0516A4();
  v7 = v44;
  KeyPath = swift_getKeyPath();
  v45 = v7;
  sub_1BD27A95C(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = *&v7[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request];
  sub_1BE048964();

  if (v16[24] == 1)
  {
    v16[24] = 1;
    sub_1BD8F75F8(1);
    v16, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    v24 = v2;
    v25 = swift_getKeyPath();
    v42 = &v42;
    MEMORY[0x1EEE9AC00](v25);
    *(&v42 - 2) = v16;
    *(&v42 - 8) = 1;
    v45 = v16;
    sub_1BD27A95C(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
    sub_1BE04B584();
    v16, v26, v27, v28, v29, v30, v31, v32;
    v33 = v25;
    v2 = v24;
    v33, v34, v35, v36, v37, v38, v39, v40;
  }

  v45 = v6;
  v46 = v5;
  sub_1BE0516A4();
  v41 = *&v44[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_context];

  if (!v41)
  {
    sub_1BD275D90(v4);
    sub_1BE04E654();
    (*(v43 + 8))(v4, v2);
  }
}

void sub_1BD278240(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v47 = *(a1 + 8);
  v48 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0, &qword_1BE0C6B88);
  sub_1BE0516A4();
  v9 = v46[1];
  KeyPath = swift_getKeyPath();
  v47 = v9;
  sub_1BD27A95C(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = *(v9 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  sub_1BE048964();

  v19 = swift_getKeyPath();
  v47 = v18;
  sub_1BD27A95C(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();
  v19, v20, v21, v22, v23, v24, v25, v26;
  v27 = v18[2];
  v18, v28, v29, v30, v31, v32, v33, v34;
  v35 = PKPeerPaymentTotalAmountReceivedForPendingRequest(v27);

  if (!v35)
  {
    goto LABEL_6;
  }

  v36 = [v35 formattedStringValue];
  if (!v36)
  {

LABEL_6:
    v38 = 0;
    v40 = 0;
    v43 = 0;
    v45 = 0;
    goto LABEL_7;
  }

  v37 = v36;
  v38 = sub_1BE052434();
  v40 = v39;

  (*(v5 + 104))(v7, *MEMORY[0x1E69B8050], v4);
  v41 = PKPassKitBundle();
  if (v41)
  {
    v42 = v41;
    v43 = sub_1BE04B6F4();
    v45 = v44;

    (*(v5 + 8))(v7, v4);
LABEL_7:
    *a2 = v38;
    a2[1] = v40;
    a2[2] = v43;
    a2[3] = v45;
    return;
  }

  __break(1u);
}

double sub_1BD27852C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBE0, &qword_1BE0C6CB0);
  sub_1BD2785F4(a1, a2 + *(v4 + 44));
  sub_1BE051404();
  v5 = sub_1BE0518D4();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB08, &qword_1BE0C6C10) + 36)) = v5;
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FAF0, &qword_1BE0C6C08) + 36);
  *(v6 + 32) = 0;
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  return result;
}

uint64_t sub_1BD2785F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBE8, &qword_1BE0C6CB8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  *v10 = sub_1BE04F7B4();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBF0, &qword_1BE0C6CC0);
  sub_1BD27877C(a1, &v10[*(v11 + 44)]);
  KeyPath = swift_getKeyPath();
  v13 = &v10[*(v5 + 44)];
  *v13 = KeyPath;
  v13[8] = 1;
  sub_1BD0DE19C(v10, v7, &qword_1EBD3FBE8, &qword_1BE0C6CB8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBF8, &qword_1BE0C6CF8);
  sub_1BD0DE19C(v7, a2 + *(v14 + 48), &qword_1EBD3FBE8, &qword_1BE0C6CB8);
  v15 = a2 + *(v14 + 64);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_1BD0DE53C(v10, &qword_1EBD3FBE8, &qword_1BE0C6CB8);
  return sub_1BD0DE53C(v7, &qword_1EBD3FBE8, &qword_1BE0C6CB8);
}

id sub_1BD27877C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v449 = a2;
  v452 = sub_1BE04AF64();
  v451 = *(v452 - 1);
  MEMORY[0x1EEE9AC00](v452);
  v446 = &v444 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v453 = &v444 - v5;
  v460 = sub_1BE04BD74();
  v461 = *(v460 - 1);
  MEMORY[0x1EEE9AC00](v460);
  v447 = &v444 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v459 = &v444 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC00, &qword_1BE0C6D00);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v444 - v10;
  v456 = sub_1BE051584();
  v455 = *(v456 - 1);
  MEMORY[0x1EEE9AC00](v456);
  v454 = &v444 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC08, &qword_1BE0C6D08);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v444 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC10, &qword_1BE0C6D10);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v457 = &v444 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v444 - v19;
  v21 = *(a1 + 8);
  v462 = *(a1 + 16);
  v463 = v21;
  v469 = v21;
  v470 = v462;
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0, &qword_1BE0C6B88);
  sub_1BE0516A4();
  v22 = v466;
  KeyPath = swift_getKeyPath();
  v469 = v22;
  v464 = sub_1BD27A95C(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v32 = *&v22[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData];
  v31 = *&v22[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData + 8];
  sub_1BD030394(v32, v31);

  v458 = v20;
  if (v31 >> 60 != 15)
  {
    v448 = v13;
    v450 = v9;
    v33 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1BD041A38(v32, v31);
    v34 = sub_1BE04AAB4();
    v35 = [v33 initWithData_];

    sub_1BD030220(v32, v31, v36, v37, v38, v39, v40, v41);
    if (v35)
    {
      v445 = v35;
      v48 = sub_1BE051544();
      v49 = v455;
      v50 = v454;
      v51 = v456;
      (v455)[13](v454, *MEMORY[0x1E6981630], v456);
      v444 = sub_1BE0515E4();
      v48, v52, v53, v54, v55, v56, v57, v58;
      (v49[1])(v50, v51);
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v456 = v469;
      LODWORD(v455) = v470;
      v59 = v471;
      v60 = v472;
      v61 = v473;
      v454 = v474;
      v62 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC30, &qword_1BE0B7D08) + 36)];
      v63 = *(sub_1BE04EDE4() + 20);
      v64 = *MEMORY[0x1E697F468];
      v65 = sub_1BE04F684();
      (*(*(v65 - 8) + 104))(&v62->i8[v63], v64, v65);
      *v62 = vdupq_n_s64(0x4049000000000000uLL);
      *(v62->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)) = 256;
      v66 = v456;
      *v15 = v444;
      *(v15 + 1) = v66;
      v15[16] = v455;
      *(v15 + 3) = v59;
      v15[32] = v60;
      v67 = v454;
      *(v15 + 5) = v61;
      *(v15 + 6) = v67;
      LOBYTE(v64) = sub_1BE0501F4();
      sub_1BE04E1F4();
      v68 = &v15[*(v448 + 36)];
      *v68 = v64;
      *(v68 + 1) = v69;
      *(v68 + 2) = v70;
      *(v68 + 3) = v71;
      *(v68 + 4) = v72;
      v68[40] = 0;
      sub_1BD0DE19C(v15, v11, &qword_1EBD3FC08, &qword_1BE0C6D08);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC18, &unk_1BE0C6D40);
      sub_1BD27AA34();
      sub_1BD27AB78();
      sub_1BE04F9A4();

      sub_1BD030220(v32, v31, v73, v74, v75, v76, v77, v78);
      sub_1BD0DE53C(v15, &qword_1EBD3FC08, &qword_1BE0C6D08);
      goto LABEL_6;
    }

    sub_1BD030220(v32, v31, v42, v43, v44, v45, v46, v47);
  }

  sub_1BD279B00(&v469);
  v79 = v469;
  v80 = sub_1BE0501F4();
  sub_1BE04E1F4();
  *v11 = v79;
  v11[8] = v80;
  *(v11 + 2) = v81;
  *(v11 + 3) = v82;
  *(v11 + 4) = v83;
  *(v11 + 5) = v84;
  v11[48] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC18, &unk_1BE0C6D40);
  sub_1BD27AA34();
  sub_1BD27AB78();
  sub_1BE04F9A4();
LABEL_6:
  v86 = v462;
  v85 = v463;
  v466 = v463;
  v467 = v462;
  sub_1BE0516A4();
  v87 = v468;
  v88 = swift_getKeyPath();
  v466 = v87;
  sub_1BE04B594();
  v88, v89, v90, v91, v92, v93, v94, v95;
  v96 = *&v87[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName];
  v97 = *&v87[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName + 8];
  sub_1BE048C84();

  v98 = v461;
  if (!v97)
  {
    v99 = v459;
    v100 = v460;
    (v461)[13](v459, *MEMORY[0x1E69B8050], v460);
    result = PKPassKitBundle();
    if (!result)
    {
      goto LABEL_29;
    }

    v102 = result;
    v96 = sub_1BE04B6F4();
    v97 = v103;

    (v98[1])(v99, v100);
  }

  v466 = v96;
  v467 = v97;
  v104 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v105 = sub_1BE0506C4();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
  if (result)
  {
    v112 = sub_1BE050484();
    v455 = sub_1BE0505F4();
    v454 = v113;
    LODWORD(v448) = v114;
    v456 = v115;
    v112, v113, v114, v115, v116, v117, v118, v119;
    sub_1BD0DDF10(v105, v107, (v109 & 1), v120, v121, v122, v123, v124);
    v111, v125, v126, v127, v128, v129, v130, v131;
    v466 = v85;
    v467 = v86;
    sub_1BE0516A4();
    v132 = v468;
    v133 = swift_getKeyPath();
    v466 = v132;
    sub_1BE04B594();
    v133, v134, v135, v136, v137, v138, v139, v140;
    v141 = *&v132[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request];
    sub_1BE048964();

    v142 = swift_getKeyPath();
    v466 = v141;
    sub_1BD27A95C(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
    sub_1BE04B594();
    v142, v143, v144, v145, v146, v147, v148, v149;
    v150 = v141[2];
    v141, v151, v152, v153, v154, v155, v156, v157;
    v158 = [v150 memo];
    v450 = v150;
    v445 = v104;
    if (v158)
    {
      v159 = v158;
      v160 = sub_1BE052434();
      v162 = v161;

      v466 = v160;
      v467 = v162;
      v163 = sub_1BE0506C4();
      v165 = v164;
      LOBYTE(v162) = v166;
      v168 = v167;
      v169 = sub_1BE0502A4();
      v170 = sub_1BE0505F4();
      v172 = v171;
      v174 = v173;
      v176 = v175;
      v169, v171, v173, v175, v177, v178, v179, v180;
      sub_1BD0DDF10(v163, v165, (v162 & 1), v181, v182, v183, v184, v185);
      v168, v186, v187, v188, v189, v190, v191, v192;
      v193 = sub_1BE051494();
      v194 = sub_1BE050564();
      v196 = v195;
      LOBYTE(v165) = v197;
      v199 = v198;
      v193, v195, v197, v198, v200, v201, v202, v203;
      v204 = v170;
      v150 = v450;
      sub_1BD0DDF10(v204, v172, (v174 & 1), v205, v206, v207, v208, v209);
      v176, v210, v211, v212, v213, v214, v215, v216;
      v464 = v196;
      v465 = v194;
      v462 = (v165 & 1);
      sub_1BD0D7F18(v194, v196, v165 & 1);
      v463 = v199;
      sub_1BE048C84();
    }

    else
    {
      v464 = 0;
      v465 = 0;
      v462 = 0;
      v463 = 0;
    }

    v217 = v453;
    v218 = [v150 currencyAmount];
    if (!v218)
    {
      v97, v219, v220, v221, v222, v223, v224, v225;
      goto LABEL_20;
    }

    v226 = v218;
    result = [v218 amount];
    if (result)
    {
      v234 = result;
      v97, v227, v228, v229, v230, v231, v232, v233;
      [v234 decimalValue];

      v235 = MEMORY[0x1BFB403C0](0);
      if (MEMORY[0x1BFB403F0](v235))
      {
        v236 = [v226 minimalFormattedStringValue];
        if (v236)
        {
          v237 = v236;
          v238 = sub_1BE052434();
          v240 = v239;

          v241 = v461;
          v242 = v447;
          v243 = v460;
          (v461)[13](v447, *MEMORY[0x1E69B8050], v460);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v244 = swift_allocObject();
          *(v244 + 16) = xmmword_1BE0B69E0;
          *(v244 + 56) = MEMORY[0x1E69E6158];
          *(v244 + 64) = sub_1BD110550();
          *(v244 + 32) = v238;
          *(v244 + 40) = v240;
          v245 = sub_1BE04B714();
          v247 = v246;
          v244, v246, v248, v249, v250, v251, v252, v253;
          (v241[1])(v242, v243);
          v466 = v245;
          v467 = v247;
          v254 = sub_1BE0506C4();
          v256 = v255;
          LOBYTE(v247) = v257;
          v259 = v258;
          v260 = sub_1BE0502A4();
          v261 = sub_1BE0505F4();
          v263 = v262;
          v265 = v264;
          v461 = v266;
          v267 = v260;
          v217 = v453;
          v267, v262, v264, v266, v268, v269, v270, v271;
          sub_1BD0DDF10(v254, v256, (v247 & 1), v272, v273, v274, v275, v276);
          v259, v277, v278, v279, v280, v281, v282, v283;
          v284 = sub_1BE051494();
          v285 = sub_1BE050564();
          v287 = v286;
          LOBYTE(v256) = v288;
          v290 = v289;
          v284, v286, v288, v289, v291, v292, v293, v294;

          v295 = v261;
          v150 = v450;
          sub_1BD0DDF10(v295, v263, (v265 & 1), v296, v297, v298, v299, v300);
          v461, v301, v302, v303, v304, v305, v306, v307;
          v461 = v285;
          v460 = v287;
          v459 = (v256 & 1);
          sub_1BD0D7F18(v285, v287, v256 & 1);
          v447 = v290;
          sub_1BE048C84();
          goto LABEL_21;
        }
      }

LABEL_20:
      v461 = 0;
      v460 = 0;
      v459 = 0;
      v447 = 0;
LABEL_21:
      v308 = [v150 requestDate];
      v309 = v452;
      if (v308)
      {
        v310 = v446;
        v311 = v308;
        sub_1BE04AEE4();

        (*(v451 + 4))(v217, v310, v309);
        v312 = sub_1BE04AE64();
        v313 = PKShortDateAndTimeStringFromDate();

        if (v313)
        {
          v314 = sub_1BE052434();
          v316 = v315;

          v466 = v314;
          v467 = v316;
          v317 = sub_1BE0506C4();
          v319 = v318;
          LOBYTE(v316) = v320;
          v322 = v321;
          v323 = sub_1BE0502A4();
          v324 = sub_1BE0505F4();
          v325 = v451;
          v327 = v326;
          v329 = v328;
          v331 = v330;
          v323, v326, v328, v330, v332, v333, v334, v335;
          sub_1BD0DDF10(v317, v319, (v316 & 1), v336, v337, v338, v339, v340);
          v322, v341, v342, v343, v344, v345, v346, v347;
          v348 = sub_1BE051494();
          v349 = sub_1BE050564();
          v351 = v350;
          LOBYTE(v316) = v352;
          v354 = v353;
          v348, v350, v352, v353, v355, v356, v357, v358;
          sub_1BD0DDF10(v324, v327, (v329 & 1), v359, v360, v361, v362, v363);
          v331, v364, v365, v366, v367, v368, v369, v370;
          (*(v325 + 1))(v453, v452);
          v453 = v349;
          v452 = v351;
          v451 = (v316 & 1);
          sub_1BD0D7F18(v349, v351, v316 & 1);
          v446 = v354;
          sub_1BE048C84();
LABEL_26:
          v371 = v457;
          sub_1BD0DE19C(v458, v457, &qword_1EBD3FC10, &qword_1BE0C6D10);
          v372 = v448 & 1;
          LOBYTE(v466) = v448 & 1;
          v373 = v371;
          v374 = v449;
          sub_1BD0DE19C(v373, v449, &qword_1EBD3FC10, &qword_1BE0C6D10);
          v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC70, &unk_1BE0C6D80);
          v376 = v374 + v375[12];
          v377 = v455;
          v378 = v454;
          *v376 = v455;
          *(v376 + 8) = v378;
          *(v376 + 16) = v372;
          *(v376 + 24) = v456;
          v379 = (v374 + v375[16]);
          v380 = v464;
          *v379 = v465;
          v379[1] = v380;
          v381 = v462;
          v382 = v463;
          v379[2] = v462;
          v379[3] = v382;
          v383 = (v374 + v375[20]);
          v384 = v460;
          *v383 = v461;
          v383[1] = v384;
          v385 = v447;
          v383[2] = v459;
          v383[3] = v385;
          v386 = (v374 + v375[24]);
          LODWORD(v448) = v372;
          sub_1BD0D7F18(v377, v378, v372);
          sub_1BE048C84();
          sub_1BD0D7F18(v377, v378, v372);
          sub_1BE048C84();
          v387 = v465;
          v463 = v382;
          v464 = v380;
          v462 = v381;
          sub_1BD1969AC(v465, v380, v381, v382);
          v388 = v461;
          v460 = v384;
          LOBYTE(v372) = v459;
          sub_1BD1969AC(v461, v384, v459, v385);
          v389 = v446;
          sub_1BD1969AC(v453, v452, v451, v446);
          sub_1BD1969F0(v387, v380, v381, v382, v390, v391, v392, v393);

          sub_1BD1969F0(v388, v384, v372, v385, v394, v395, v396, v397);
          v398 = v453;
          v399 = v452;
          v400 = v451;
          sub_1BD1969F0(v453, v452, v451, v389, v401, v402, v403, v404);
          v405 = v455;
          v406 = v454;
          sub_1BD0DDF10(v455, v454, v448, v407, v408, v409, v410, v411);
          *v386 = v398;
          v386[1] = v399;
          v386[2] = v400;
          v386[3] = v389;
          v412 = v456;
          v456, v413, v414, v415, v416, v417, v418, v419;
          sub_1BD0DE53C(v458, &qword_1EBD3FC10, &qword_1BE0C6D10);
          sub_1BD1969F0(v398, v399, v400, v389, v420, v421, v422, v423);
          sub_1BD1969F0(v461, v460, v459, v385, v424, v425, v426, v427);
          sub_1BD1969F0(v465, v464, v462, v463, v428, v429, v430, v431);
          sub_1BD0DDF10(v405, v406, v466, v432, v433, v434, v435, v436);
          v412, v437, v438, v439, v440, v441, v442, v443;
          return sub_1BD0DE53C(v457, &qword_1EBD3FC10, &qword_1BE0C6D10);
        }

        (*(v451 + 1))(v217, v309);
      }

      v453 = 0;
      v452 = 0;
      v451 = 0;
      v446 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1BD279B00(uint64_t *a1@<X8>)
{
  v3 = [objc_opt_self() configurationWithPointSize_];
  v4 = sub_1BE052404();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (v5)
  {
    v6 = [objc_opt_self() systemGrayColor];
    v7 = [v5 imageWithTintColor_];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_self() systemGray5Color];
  v9 = PKUIImageWithBackgroundAndCornerRadius(v7, v8, 100.0, 100.0, 50.0);

  if (v9)
  {
    v10 = sub_1BE051544();
  }

  else
  {

    v10 = 0;
  }

  *a1 = v10;
}

uint64_t sub_1BD279C98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA28, &qword_1BE0C6AD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-v5];
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA30, &qword_1BE0C6AE0) + 44);
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA38, &qword_1BE0C6AE8);
  sub_1BD0DE4F4(&qword_1EBD3FA40, &qword_1EBD3FA38, &qword_1BE0C6AE8, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  v13 = v1;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48, &qword_1BE0C6AF0);
  sub_1BD0DE4F4(&qword_1EBD3FA50, &qword_1EBD3FA28, &qword_1BE0C6AD8, MEMORY[0x1E697CD20]);
  sub_1BD279F20();
  sub_1BE050954();
  (*(v4 + 8))(v6, v3);
  v8 = sub_1BE04EC54();
  v9 = sub_1BE0501F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA68, &qword_1BE0C6AF8);
  v11 = v7 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

unint64_t sub_1BD279F20()
{
  result = qword_1EBD3FA58;
  if (!qword_1EBD3FA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FA48, &qword_1BE0C6AF0);
    sub_1BD279FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FA58);
  }

  return result;
}

unint64_t sub_1BD279FA4()
{
  result = qword_1EBD3FA60;
  if (!qword_1EBD3FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FA60);
  }

  return result;
}

void sub_1BD27A03C(uint64_t a1)
{
  sub_1BD27A130(319, &unk_1EBD3FA90, type metadata accessor for PeerPaymentGroupedPaymentsModel, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1BD27A130(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD27A130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD27A19C()
{
  result = qword_1EBD3FAF8;
  if (!qword_1EBD3FAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FAF0, &qword_1BE0C6C08);
    sub_1BD27A254();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FAF8);
  }

  return result;
}

unint64_t sub_1BD27A254()
{
  result = qword_1EBD3FB00;
  if (!qword_1EBD3FB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FB08, &qword_1BE0C6C10);
    sub_1BD0DE4F4(&qword_1EBD3FB10, &qword_1EBD3FB18, &qword_1BE0C6C18, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FB00);
  }

  return result;
}

unint64_t sub_1BD27A340()
{
  result = qword_1EBD3FB50;
  if (!qword_1EBD3FB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3FB40, &unk_1BE0C6C30);
    sub_1BD27A3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FB50);
  }

  return result;
}

unint64_t sub_1BD27A3C4()
{
  result = qword_1EBD3FB58;
  if (!qword_1EBD3FB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FB60, &qword_1BE0C6C40);
    sub_1BD27A450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FB58);
  }

  return result;
}

unint64_t sub_1BD27A450()
{
  result = qword_1EBD3FB68;
  if (!qword_1EBD3FB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FB70, &qword_1BE0C6C48);
    sub_1BD0DE4F4(&qword_1EBD3FB78, &unk_1EBD3FB80, &qword_1BE0C6C50, &unk_1BE110E88);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FB68);
  }

  return result;
}

unint64_t sub_1BD27A53C()
{
  result = qword_1EBD3FB98;
  if (!qword_1EBD3FB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FB90, &unk_1BE0C6C80);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FB98);
  }

  return result;
}

uint64_t sub_1BD27A628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentGroupedPaymentsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD27A68C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentGroupedPaymentsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD27A71C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_17Tm()
{
  v1 = (type metadata accessor for PeerPaymentGroupedPaymentsView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  *(v2 + 16), v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[8];
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

double sub_1BD27A8DC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PeerPaymentGroupedPaymentsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD2770B8(a1, v6, a2);
}

uint64_t sub_1BD27A95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD27AA34()
{
  result = qword_1EBD3FC20;
  if (!qword_1EBD3FC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FC08, &qword_1BE0C6D08);
    sub_1BD27AAC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FC20);
  }

  return result;
}

unint64_t sub_1BD27AAC0()
{
  result = qword_1EBD3FC28;
  if (!qword_1EBD3FC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3FC30, &qword_1BE0B7D08);
    sub_1BD1A3410();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FC28);
  }

  return result;
}

unint64_t sub_1BD27AB78()
{
  result = qword_1EBD3FC58;
  if (!qword_1EBD3FC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FC18, &unk_1BE0C6D40);
    sub_1BD27AC24(&qword_1EBD3FC60, &qword_1EBD3FC68, &qword_1BE0C6D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FC58);
  }

  return result;
}

uint64_t sub_1BD27AC24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1BD27ACC0@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04F7B4();
  v25 = 0;
  sub_1BD27AED4(&v13);
  v34 = v21;
  v35 = v22;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v37[7] = v20;
  v37[8] = v21;
  v37[9] = v22;
  v37[10] = v23;
  v37[3] = v16;
  v37[4] = v17;
  v37[5] = v18;
  v37[6] = v19;
  v36 = v23;
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  sub_1BD27B0D8(&v26, &v12);
  sub_1BD27B148(v37);
  *&v24[119] = v33;
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[167] = v36;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  v4 = v25;
  v5 = sub_1BE0501D4();
  v6 = *&v24[144];
  *(a2 + 145) = *&v24[128];
  *(a2 + 161) = v6;
  *(a2 + 177) = *&v24[160];
  v7 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v7;
  v8 = *&v24[112];
  *(a2 + 113) = *&v24[96];
  *(a2 + 129) = v8;
  v9 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v9;
  v10 = *&v24[48];
  *(a2 + 49) = *&v24[32];
  *a2 = v3;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = v4;
  *(a2 + 192) = *&v24[175];
  *(a2 + 65) = v10;
  *(a2 + 200) = v5;
  result = 0.0;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 1;
  return result;
}

void sub_1BD27AED4(uint64_t a1@<X8>)
{
  v63 = sub_1BE04C124();
  v64 = v2;
  sub_1BD0DDEBC();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1BE0502A4();
  v11 = sub_1BE0505F4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v10, v12, v14, v16, v18, v19, v20, v21;
  sub_1BD0DDF10(v3, v5, (v7 & 1), v22, v23, v24, v25, v26);
  v9, v27, v28, v29, v30, v31, v32, v33;
  KeyPath = swift_getKeyPath();
  LOBYTE(v5) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  LOBYTE(v63) = 0;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v43 = (v15 & 1);
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v43;
  *(a1 + 24) = v17;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 5;
  *(a1 + 56) = 256;
  *(a1 + 64) = v5;
  *(a1 + 72) = v36;
  *(a1 + 80) = v38;
  *(a1 + 88) = v40;
  *(a1 + 96) = v42;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = v63;
  *(a1 + 136) = v64;
  *(a1 + 144) = v65;
  *(a1 + 152) = v66;
  *(a1 + 160) = v67;
  sub_1BD0D7F18(v11, v13, v43);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v11, v13, v43, v44, v45, v46, v47, v48);
  KeyPath, v49, v50, v51, v52, v53, v54, v55;
  v17, v56, v57, v58, v59, v60, v61, v62;
}

uint64_t sub_1BD27B0D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC90, &qword_1BE0C6DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD27B148(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC90, &qword_1BE0C6DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD27B1B0()
{
  result = qword_1EBD3FC98;
  if (!qword_1EBD3FC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FCA0, &qword_1BE0C6E30);
    sub_1BD27B23C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FC98);
  }

  return result;
}

unint64_t sub_1BD27B23C()
{
  result = qword_1EBD3FCA8;
  if (!qword_1EBD3FCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FCB0, &qword_1BE0C6E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FCA8);
  }

  return result;
}

uint64_t sub_1BD27B2A0()
{
  KeyPath = swift_getKeyPath();
  sub_1BD280F14(&qword_1EBD3FCC0, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel, &unk_1BE0C6FE0);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD27B358@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD280F14(&qword_1EBD3FCC0, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel, &unk_1BE0C6FE0);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  *a2 = *(v3 + 24);
  return sub_1BE048C84();
}

void sub_1BD27B418(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = sub_1BE048C84();
  v5 = sub_1BD400C3C(v4, a1);
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
    sub_1BD280F14(&qword_1EBD3FCC0, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel, &unk_1BE0C6FE0);
    sub_1BE04B584();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    a1, v29, v30, v31, v32, v33, v34, v35;
  }
}

void sub_1BD27B560(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
  sub_1BE048C84();
  v4, v5, v6, v7, v8, v9, v10, v11;
}

void sub_1BD27B5C8()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  sub_1BD280F14(&qword_1EBD3FCC0, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel, &unk_1BE0C6FE0);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  swift_beginAccess();
  v10 = *(v0 + 24);
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v39 = sub_1BE053704();
  v12 = v39 + 1;
  if (__OFADD__(v39, 1))
  {
    goto LABEL_14;
  }

LABEL_3:
  KeyPath = *(v1 + 16);
  if (!(KeyPath >> 62))
  {
    if (v12 >= *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_5:
    if ((KeyPath & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB40900](v12, KeyPath);
    }

    else
    {
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v12 >= *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v13 = *(KeyPath + 8 * v12 + 32);
    }

    v14 = swift_getKeyPath();
    sub_1BE04B594();
    v14, v15, v16, v17, v18, v19, v20, v21;
    v22 = swift_getKeyPath();
    sub_1BE04B5B4();
    v22, v23, v24, v25, v26, v27, v28, v29;
    v30 = swift_beginAccess();
    MEMORY[0x1BFB3F7A0](v30);
    if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_10:
      sub_1BE0527C4();
      swift_endAccess();
      v31 = swift_getKeyPath();
      sub_1BE04B5A4();
      v31, v32, v33, v34, v35, v36, v37, v38;
      return;
    }

LABEL_19:
    sub_1BE052774();
    goto LABEL_10;
  }

LABEL_15:
  if (v12 < sub_1BE053704())
  {
    goto LABEL_5;
  }
}

uint64_t sub_1BD27B83C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;
  v16 = OBJC_IVAR____TtCV9PassKitUI24PeerPaymentFraudPageViewP33_AFA681ED8638F9F04B85B9AFF86B0B7627PeerPaymentFraudPageUIModel___observationRegistrar;
  v17 = sub_1BE04B5D4();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD27B8E8@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for PeerPaymentFraudPageView(0);
  sub_1BD0DE19C(v1 + *(v10 + 28), v9, &qword_1EBD3FA20, &qword_1BE0C6AD0);
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

uint64_t PeerPaymentFraudPageView.init(pages:continuationHandler:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(type metadata accessor for PeerPaymentFraudPageView(0) + 28);
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1BE053994();
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v10 = MEMORY[0x1BFB40900](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(a1 + 32);
LABEL_6:
    *a4 = v10;
    a4[1] = a2;
    a4[2] = a3;
    type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel(0);
    v11 = swift_allocObject();
    *(v11 + 24) = MEMORY[0x1E69E7CC0];
    sub_1BE04B5C4();
    *(v11 + 16) = a1;
    sub_1BD280F14(&qword_1EBD3FCC0, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageUIModel, &unk_1BE0C6FE0);
    return sub_1BE051A94();
  }

  __break(1u);
  return result;
}

uint64_t PeerPaymentFraudPageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8, &qword_1BE0C6E78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - v4;
  type metadata accessor for PeerPaymentFraudPageView(0);
  sub_1BE051A84();
  KeyPath = swift_getKeyPath();
  sub_1BE051AA4();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  (*(v3 + 8))(v5, v2);
  v27 = v29;
  v28 = v30;
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCD0, &qword_1BE0C6EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCD8, &qword_1BE0C6EB0);
  sub_1BD0DE4F4(&qword_1EBD3FCE0, &qword_1EBD3FCD0, &qword_1BE0C6EA8, MEMORY[0x1E69E6318]);
  sub_1BD0DE4F4(&qword_1EBD3FCE8, &qword_1EBD3FCD0, &qword_1BE0C6EA8, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD3FCF0, &qword_1EBD3FCD0, &qword_1BE0C6EA8, MEMORY[0x1E69E6348]);
  v14 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(255);
  v15 = sub_1BD0E5E8C(255, &qword_1EBD3FCF8, 0x1E69B8F50);
  v16 = sub_1BD280F14(&qword_1EBD3FD00, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView, &unk_1BE0C6F90);
  v17 = sub_1BD214890(&qword_1EBD3FD08, &qword_1EBD3FCF8, 0x1E69B8F50);
  v21 = v14;
  v22 = v15;
  v23 = v14;
  v24 = v16;
  v25 = v17;
  v26 = v16;
  swift_getOpaqueTypeConformance2();
  return sub_1BE04EBF4();
}

uint64_t sub_1BD27BFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for PeerPaymentFraudPageView(0);
  v36 = *(v3 - 8);
  v35 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE050474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8, &qword_1BE0C6E78);
  sub_1BE051A74();
  v32 = v39;
  sub_1BD27B8E8(&v11[v9[7]]);
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  v14 = &v11[v9[9]];
  v38 = 0;
  sub_1BE048964();
  sub_1BE051694();
  v15 = v40;
  *v14 = v39;
  *(v14 + 1) = v15;
  v16 = &v11[v9[10]];
  v38 = 0;
  sub_1BE051694();
  v17 = v40;
  *v16 = v39;
  *(v16 + 1) = v17;
  v39 = 0x4031000000000000;
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EF8], v5);
  sub_1BD0DBFDC();
  sub_1BE04E514();
  v18 = v32;
  *v11 = v33;
  *(v11 + 1) = v18;
  v11[16] = 1;
  v19 = &v11[v9[8]];
  *v19 = v13;
  *(v19 + 1) = v12;
  sub_1BD0E5E8C(0, &qword_1EBD3FCF8, 0x1E69B8F50);
  v20 = v34;
  sub_1BD2824B0(a1, v34, type metadata accessor for PeerPaymentFraudPageView);
  v21 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v22 = swift_allocObject();
  sub_1BD282518(v20, v22 + v21, type metadata accessor for PeerPaymentFraudPageView);
  sub_1BD280F14(&qword_1EBD3FD00, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView, &unk_1BE0C6F90);
  sub_1BD214890(&qword_1EBD3FD08, &qword_1EBD3FCF8, 0x1E69B8F50);
  sub_1BE050D64();
  v22, v23, v24, v25, v26, v27, v28, v29;
  return sub_1BD2825AC(v11);
}

uint64_t sub_1BD27C384@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1BE050474();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  type metadata accessor for PeerPaymentFraudPageView(0);
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8, &qword_1BE0C6E78);
  sub_1BE051A74();
  v12 = v24;
  v13 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  sub_1BD27B8E8((a3 + v13[7]));
  v15 = *(a2 + 8);
  v14 = *(a2 + 16);
  v16 = a3 + v13[9];
  v23 = 0;
  sub_1BE048964();
  sub_1BE051694();
  v17 = v25;
  *v16 = v24;
  *(v16 + 8) = v17;
  v18 = a3 + v13[10];
  v23 = 0;
  sub_1BE051694();
  v19 = v25;
  *v18 = v24;
  *(v18 + 8) = v19;
  v24 = 0x4031000000000000;
  (*(v8 + 104))(v10, *MEMORY[0x1E6980EF8], v7);
  sub_1BD0DBFDC();
  result = sub_1BE04E514();
  *a3 = v22;
  *(a3 + 8) = v12;
  *(a3 + 16) = 0;
  v21 = (a3 + v13[8]);
  *v21 = v15;
  v21[1] = v14;
  return result;
}

uint64_t sub_1BD27C578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = v5;
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD60, &qword_1BE0C7008);
  v59 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD68, &qword_1BE0C7010);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD70, &qword_1BE0C7018);
  v14 = *(v13 - 8);
  v65 = v13;
  v66 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v56 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD78, &qword_1BE0C7020);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD80, &qword_1BE0C7028);
  v18 = *(v17 - 8);
  v67 = v17;
  v68 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v56 - v19;
  v71 = a1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD88, &qword_1BE0C7030);
  sub_1BD281318();
  sub_1BE04E304();
  sub_1BD2824B0(a1, v6, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_1BD282518(v6, v21 + v20, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v22 = sub_1BD0DE4F4(&qword_1EBD3FDA8, &qword_1EBD3FD60, &qword_1BE0C7008, MEMORY[0x1E697BE60]);
  v23 = v57;
  sub_1BE050DC4();
  v21, v24, v25, v26, v27, v28, v29, v30;
  (*(v59 + 8))(v9, v7);
  sub_1BD2824B0(a1, v6, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v31 = swift_allocObject();
  sub_1BD282518(v6, v31 + v20, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v72 = v7;
  v32 = MEMORY[0x1E69E6370];
  v73 = MEMORY[0x1E69E6370];
  v74 = v22;
  v33 = MEMORY[0x1E69E6388];
  v75 = MEMORY[0x1E69E6388];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v33;
  v36 = v58;
  v37 = v60;
  sub_1BE050DC4();
  v31, v38, v39, v40, v41, v42, v43, v44;
  (*(v61 + 8))(v23, v37);
  v70 = a1;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C160, &qword_1BE0BDF60);
  v72 = v37;
  v73 = v32;
  v74 = OpaqueTypeConformance2;
  v75 = v35;
  swift_getOpaqueTypeConformance2();
  v45 = sub_1BD1BC1B0();
  v72 = &type metadata for SetupFooterView;
  v73 = v45;
  swift_getOpaqueTypeConformance2();
  v46 = v62;
  v47 = v65;
  sub_1BE050954();
  (*(v66 + 8))(v36, v47);
  v48 = sub_1BE04EC54();
  v49 = sub_1BE0501F4();
  v50 = v64;
  v51 = v46 + *(v64 + 36);
  *v51 = v48;
  *(v51 + 8) = v49;
  v52 = sub_1BD28160C();
  v53 = v63;
  sub_1BE050D94();
  sub_1BD0DE53C(v46, &qword_1EBD3FD78, &qword_1BE0C7020);
  v72 = v50;
  v73 = v52;
  swift_getOpaqueTypeConformance2();
  v54 = v67;
  sub_1BE050E54();
  return (*(v68 + 8))(v53, v54);
}

uint64_t sub_1BD27CCBC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04FBA4();
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE04F7B4();
  sub_1BD280F14(&qword_1EBD3FDB8, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1BE053DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FDC0, &qword_1BE0C7040);
  sub_1BD0DE4F4(&qword_1EBD3FDC8, &qword_1EBD3FDC0, &qword_1BE0C7040, MEMORY[0x1E6981F48]);
  sub_1BE04E2D4();
  v4 = sub_1BE0501C4();
  PKSetupViewConstantsViewMargin();
  sub_1BE04E1F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FD88, &qword_1BE0C7030);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

id sub_1BD27CE7C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FDD0, &qword_1BE0C7048);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  v10 = *(a1 + 16);
  if (v10 == 1)
  {
    v70 = sub_1BE051574();
    v69 = sub_1BE0513B4();
    v11 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    LOBYTE(v78) = 0;
    v68 = v11;
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v68 = 0;
    v13 = 0;
    v15 = 0;
    v17 = 0;
    v19 = 0;
  }

  v65 = a1;
  v20 = *a1;
  result = [*a1 title];
  if (result)
  {
    v22 = result;
    v23 = sub_1BE052434();
    v25 = v24;

    v78 = v23;
    v79 = v25;
    sub_1BD0DDEBC();
    v26 = sub_1BE0506C4();
    v61 = v27;
    v62 = v26;
    v29 = v28;
    v63 = v30;
    v60 = sub_1BE0501E4();
    if ((v10 & 1) == 0 && qword_1EBD36DC8 != -1)
    {
      swift_once();
    }

    sub_1BE04E1F4();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v59 = v29 & 1;
    v95 = v29 & 1;
    v94 = 0;
    *v9 = sub_1BE04F7B4();
    *(v9 + 1) = 0x4030000000000000;
    v9[16] = 0;
    result = [v20 bodyContents];
    if (result)
    {
      v39 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FDD8, &unk_1BE0C7050);
      sub_1BD0E5E8C(0, &qword_1EBD3FDE0, 0x1E69B8F68);
      v40 = sub_1BE052744();

      v78 = v40;
      swift_getKeyPath();
      sub_1BD2824B0(v65, &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
      v41 = (*(v64 + 80) + 16) & ~*(v64 + 80);
      v42 = swift_allocObject();
      sub_1BD282518(&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FDE8, &qword_1BE0C7078);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FDF0, &qword_1BE0C7080);
      sub_1BD0DE4F4(&qword_1EBD3FDF8, &qword_1EBD3FDE8, &qword_1BE0C7078, MEMORY[0x1E69E6338]);
      sub_1BD214890(&qword_1EBD3FE00, &qword_1EBD3FDE0, 0x1E69B8F68);
      sub_1BD281908();
      sub_1BE0519C4();
      LOBYTE(v41) = sub_1BE0501F4();
      sub_1BE04E1F4();
      v43 = v67;
      v44 = &v9[*(v66 + 9)];
      *v44 = v41;
      *(v44 + 1) = v45;
      *(v44 + 2) = v46;
      *(v44 + 3) = v47;
      *(v44 + 4) = v48;
      v44[40] = 0;
      sub_1BD0DE19C(v9, v43, &qword_1EBD3FDD0, &qword_1BE0C7048);
      *&v71 = v70;
      *(&v71 + 1) = v69;
      v66 = v9;
      *&v72 = v68;
      *(&v72 + 1) = v13;
      *&v73[0] = v15;
      *(&v73[0] + 1) = v17;
      *&v73[1] = v19;
      BYTE8(v73[1]) = 0;
      v49 = v72;
      *a2 = v71;
      a2[1] = v49;
      a2[2] = v73[0];
      *(a2 + 41) = *(v73 + 9);
      v51 = v61;
      v50 = v62;
      *&v74 = v62;
      *(&v74 + 1) = v61;
      LOBYTE(v39) = v59;
      v52 = v60;
      LOBYTE(v75) = v59;
      DWORD1(v75) = *&v93[3];
      *(&v75 + 1) = *v93;
      v53 = v63;
      *(&v75 + 1) = v63;
      LOBYTE(v76) = v60;
      DWORD1(v76) = *&v92[3];
      *(&v76 + 1) = *v92;
      *(&v76 + 1) = v32;
      *&v77[0] = v34;
      *(&v77[0] + 1) = v36;
      *&v77[1] = v38;
      BYTE8(v77[1]) = 0;
      v54 = v74;
      v55 = v75;
      *(a2 + 121) = *(v77 + 9);
      v56 = v77[0];
      a2[6] = v76;
      a2[7] = v56;
      a2[4] = v54;
      a2[5] = v55;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF10, &qword_1BE0C7108);
      sub_1BD0DE19C(v43, a2 + *(v57 + 64), &qword_1EBD3FDD0, &qword_1BE0C7048);
      sub_1BD0DE19C(&v71, &v78, &qword_1EBD3FF18, &unk_1BE0C7110);
      sub_1BD0DE19C(&v74, &v78, &qword_1EBD3FF20, &unk_1BE0CF800);
      sub_1BD0DE53C(v66, &qword_1EBD3FDD0, &qword_1BE0C7048);
      sub_1BD0DE53C(v43, &qword_1EBD3FDD0, &qword_1BE0C7048);
      v78 = v50;
      v79 = v51;
      v80 = v39;
      *v81 = *v93;
      *&v81[3] = *&v93[3];
      v82 = v53;
      v83 = v52;
      *v84 = *v92;
      *&v84[3] = *&v92[3];
      v85 = v32;
      v86 = v34;
      v87 = v36;
      v88 = v38;
      v89 = 0;
      sub_1BD0DE53C(&v78, &qword_1EBD3FF20, &unk_1BE0CF800);
      v90[0] = v70;
      v90[1] = v69;
      v90[2] = v68;
      v90[3] = v13;
      v90[4] = v15;
      v90[5] = v17;
      v90[6] = v19;
      v91 = 0;
      return sub_1BD0DE53C(v90, &qword_1EBD3FF18, &unk_1BE0C7110);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD27D4D8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a2;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE48, &qword_1BE0C70A0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v41 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF28, &qword_1BE0C7120);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE28, &qword_1BE0C7090);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE18, &qword_1BE0C7088);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v41 - v18;
  v20 = *a1;
  if ([v20 type] == 3)
  {
    v41[1] = v4;
    if ([v20 type] == 3 && (objc_opt_self(), (v21 = swift_dynamicCastObjCClass()) != 0))
    {
      v22 = v21;
      v41[0] = v20;
      v23 = sub_1BE04F7C4();
      if (qword_1EBD36E68 != -1)
      {
        swift_once();
      }

      v24 = qword_1EBDAB5D8;
      *v12 = v23;
      *(v12 + 1) = v24;
      v12[16] = 0;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF30, &qword_1BE0C7128);
      sub_1BD27FFB8(v22, v44, &v12[*(v25 + 44)]);
      v26 = sub_1BE050234();
      if (qword_1EBD36E60 != -1)
      {
        swift_once();
      }

      sub_1BE04E1F4();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v35 = v43;
      v36 = &v12[*(v43 + 36)];
      *v36 = v26;
      *(v36 + 1) = v28;
      *(v36 + 2) = v30;
      *(v36 + 3) = v32;
      *(v36 + 4) = v34;
      v36[40] = 0;
      sub_1BD0DE204(v12, v15, &qword_1EBD3FE28, &qword_1BE0C7090);
      (*(v42 + 56))(v15, 0, 1, v35);
    }

    else
    {
      (*(v42 + 56))(v15, 1, 1, v43);
    }

    sub_1BD0DE204(v15, v19, &qword_1EBD3FE18, &qword_1BE0C7088);
    sub_1BD0DE19C(v19, v9, &qword_1EBD3FE18, &qword_1BE0C7088);
    swift_storeEnumTagMultiPayload();
    sub_1BD281BBC(&qword_1EBD3FE10, &qword_1EBD3FE18, &qword_1BE0C7088, sub_1BD2819C0);
    sub_1BD281A78();
    sub_1BE04F9A4();
    v37 = v19;
    v38 = &qword_1EBD3FE18;
    v39 = &qword_1BE0C7088;
  }

  else
  {
    sub_1BD27D9F4(v20, 0, v6);
    sub_1BD0DE19C(v6, v9, &qword_1EBD3FE48, &qword_1BE0C70A0);
    swift_storeEnumTagMultiPayload();
    sub_1BD281BBC(&qword_1EBD3FE10, &qword_1EBD3FE18, &qword_1BE0C7088, sub_1BD2819C0);
    sub_1BD281A78();
    sub_1BE04F9A4();
    v37 = v6;
    v38 = &qword_1EBD3FE48;
    v39 = &qword_1BE0C70A0;
  }

  return sub_1BD0DE53C(v37, v38, v39);
}

void *sub_1BD27D9F4@<X0>(void *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v61 = a2;
  v75 = a3;
  v4 = sub_1BE04AA64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FF08, &qword_1BE0C7100);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = v58 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FEF8, &qword_1BE0C70F8);
  MEMORY[0x1EEE9AC00](v71);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v58 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFB0, &qword_1BE0C71C0);
  MEMORY[0x1EEE9AC00](v74);
  v72 = v58 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFB8, &qword_1BE0C71C8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = v58 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE58, &qword_1BE0C70A8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE78, &qword_1BE0C70B8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v58 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE68, &qword_1BE0C70B0);
  MEMORY[0x1EEE9AC00](v68);
  v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v58 - v23;
  v25 = [a1 type];
  if (v25 != 2)
  {
    if (v25 != 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD281B04();
      return sub_1BE04F9A4();
    }

    if ([a1 type] == 1 && (objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) != 0))
    {
      v27 = v26;
      v28 = a1;
      v29 = [v27 formatType];
      sub_1BD27EACC(v29, 0, v61, v27, v18);
      sub_1BD0DE204(v18, v20, &qword_1EBD3FE78, &qword_1BE0C70B8);
      (*(v16 + 56))(v20, 0, 1, v15);
    }

    else
    {
      (*(v16 + 56))(v20, 1, 1, v15);
    }

    v52 = v67;
    sub_1BD0DE204(v20, v24, &qword_1EBD3FE68, &qword_1BE0C70B0);
    sub_1BD0DE19C(v24, v52, &qword_1EBD3FE68, &qword_1BE0C70B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD281BBC(&qword_1EBD3FE60, &qword_1EBD3FE68, &qword_1BE0C70B0, sub_1BD281C38);
    sub_1BD282024();
    v53 = v69;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v53, v72, &qword_1EBD3FE58, &qword_1BE0C70A8);
    swift_storeEnumTagMultiPayload();
    sub_1BD281B04();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v53, &qword_1EBD3FE58, &qword_1BE0C70A8);
    v54 = v24;
    v55 = &qword_1EBD3FE68;
    v56 = &qword_1BE0C70B0;
    return sub_1BD0DE53C(v54, v55, v56);
  }

  v30 = v66;
  v31 = v62;
  v32 = v8;
  v33 = [a1 type];
  v34 = v11;
  v35 = v65;
  v36 = v63;
  if (v33 == 2)
  {
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      v38 = v37;
      v39 = a1;
      v40 = [v38 textContent];
      if (v40)
      {
        v41 = v40;
        v59 = v39;
        v60 = v34;
        v42 = [v40 formatType];
        result = [v38 url];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v44 = result;
        sub_1BE04A9F4();

        v58[1] = v58;
        MEMORY[0x1EEE9AC00](v45);
        v58[-4] = v30;
        v58[-3] = v41;
        LOBYTE(v58[-2]) = v61;
        v58[-1] = v42;
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFC0, &qword_1BE0C71D0);
        v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FFC8, &qword_1BE0C71D8);
        v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FFD0, &qword_1BE0C71E0);
        v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FFD8, &qword_1BE0C71E8);
        v49 = sub_1BD28230C();
        v76 = v48;
        v77 = v49;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v76 = v47;
        v77 = OpaqueTypeConformance2;
        v51 = swift_getOpaqueTypeConformance2();
        v76 = v46;
        v77 = v51;
        swift_getOpaqueTypeConformance2();
        sub_1BE0504B4();

        (*(v36 + 32))(v32, v31, v35);
        (*(v36 + 56))(v32, 0, 1, v35);
        v34 = v60;
        goto LABEL_16;
      }
    }
  }

  (*(v36 + 56))(v32, 1, 1, v35);
LABEL_16:
  sub_1BD0DE204(v32, v34, &qword_1EBD3FEF8, &qword_1BE0C70F8);
  sub_1BD0DE19C(v34, v67, &qword_1EBD3FEF8, &qword_1BE0C70F8);
  swift_storeEnumTagMultiPayload();
  sub_1BD281BBC(&qword_1EBD3FE60, &qword_1EBD3FE68, &qword_1BE0C70B0, sub_1BD281C38);
  sub_1BD282024();
  v57 = v69;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v57, v72, &qword_1EBD3FE58, &qword_1BE0C70A8);
  swift_storeEnumTagMultiPayload();
  sub_1BD281B04();
  sub_1BE04F9A4();
  sub_1BD0DE53C(v57, &qword_1EBD3FE58, &qword_1BE0C70A8);
  v54 = v34;
  v55 = &qword_1EBD3FEF8;
  v56 = &qword_1BE0C70F8;
  return sub_1BD0DE53C(v54, v55, v56);
}

uint64_t sub_1BD27E348@<X0>(BOOL *a1@<X8>)
{
  sub_1BE04E9B4();
  v3 = v2;
  result = sub_1BE04E9C4();
  *a1 = v5 < v3;
  return result;
}

void *sub_1BD27E38C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  result = sub_1BE0516A4();
  if (v3 != v5)
  {
    result = sub_1BE0516B4();
    if (v3)
    {
      return sub_1BE0516B4();
    }
  }

  return result;
}

uint64_t sub_1BD27E470@<X0>(BOOL *a1@<X8>)
{
  result = sub_1BE04E9B4();
  if (v3 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v4 = v3;
    sub_1BE04E9D4();
    v6 = v5;
    sub_1BE04E9E4();
    v8 = v6 + v7;
    result = sub_1BE04E9C4();
    v10 = v4 <= v8 + v9;
  }

  *a1 = v10;
  return result;
}

void sub_1BD27E4D8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    if ((v3 & 1) == 0)
    {
      sub_1BE0516B4();
    }
  }
}

id sub_1BD27E584@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F714();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = a1;
  v11 = *a1;
  result = [*a1 confirmButtonTitle];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = result;
  v32 = v5;
  v33 = a2;
  v34 = v4;
  v14 = sub_1BE052434();
  v30 = v15;
  v31 = v14;

  v29 = sub_1BE0513B4();
  if (qword_1EBD36EF0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBDAB660;
  v17 = v10 + *(v7 + 40);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v46[0]) = v18;
  *(&v46[0] + 1) = v19;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v28 = v37;
  sub_1BD2824B0(v10, &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v20 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v21 = swift_allocObject();
  sub_1BD282518(&v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  sub_1BE048964();
  result = [v11 cancelButtonTitle];
  if (!result)
  {
    goto LABEL_9;
  }

  v22 = result;
  v36 = sub_1BE052434();
  v24 = v23;

  sub_1BD2824B0(v10, &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  v25 = swift_allocObject();
  sub_1BD282518(&v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v25 + v20, type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView);
  if (qword_1EBD36EE8 != -1)
  {
    swift_once();
  }

  *&v37 = v31;
  *(&v37 + 1) = v30;
  *&v38 = v29;
  *(&v38 + 1) = v16;
  LOBYTE(v39) = 0;
  BYTE1(v39) = v28 ^ 1;
  *(&v39 + 1) = sub_1BD2817EC;
  *&v40 = v21;
  *(&v40 + 1) = v36;
  *&v41 = v24;
  *(&v41 + 1) = qword_1EBDAB658;
  v42 = v16;
  *&v43 = sub_1BD28184C;
  *(&v43 + 1) = v25;
  v44 = 0u;
  v45 = 0u;
  sub_1BE048964();
  v26 = v35;
  sub_1BE04F704();
  sub_1BD1BC1B0();
  sub_1BE050CB4();
  (*(v32 + 8))(v26, v34);
  v46[6] = v43;
  v46[7] = v44;
  v46[8] = v45;
  v46[2] = v39;
  v46[3] = v40;
  v46[4] = v41;
  v46[5] = v42;
  v46[0] = v37;
  v46[1] = v38;
  return sub_1BD1BC4CC(v46);
}

void sub_1BD27E988(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 16);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_1BD27B5C8();
    return;
  }

  v3 = sub_1BE053704();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_13:
    sub_1BE048C84();
    v5 = MEMORY[0x1BFB40900](v4, v2);
    v2, v10, v11, v12, v13, v14, v15, v16;
LABEL_8:
    v6 = *a1;
    sub_1BD0E5E8C(0, &qword_1EBD3FCF8, 0x1E69B8F50);
    v7 = v6;
    v8 = sub_1BE053074();

    if (v8)
    {
      v9 = type metadata accessor for PeerPaymentFraudPageView.PeerPaymentFraudPageContentView(0);
      (*(a1 + *(v9 + 32)))(1);
      sub_1BE04E654();
      return;
    }

    goto LABEL_11;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 8 * v4 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1BD27EACC(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v144 = a2;
  v146 = a1;
  v151 = sub_1BE050674();
  v149 = *(v151 - 1);
  MEMORY[0x1EEE9AC00](v151);
  v147 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FED0, &qword_1BE0C70E8);
  v136 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v135 = &v133 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FEC8, &qword_1BE0C70E0);
  v138 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v133 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40000, &qword_1BE0C71F8);
  v140 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v133 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FEA8, &qword_1BE0C70D0);
  v134 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v133 - v16;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40008, &qword_1BE0C7200);
  v141 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v145 = &v133 - v17;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40010, &qword_1BE0C7208);
  MEMORY[0x1EEE9AC00](v152);
  v19 = &v133 - v18;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40018, &qword_1BE0C7210);
  MEMORY[0x1EEE9AC00](v143);
  v142 = (&v133 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE88, &qword_1BE0C70C0);
  MEMORY[0x1EEE9AC00](v21);
  v150 = &v133 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE78, &qword_1BE0C70B8);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v159 = a5;
  v160 = a4;
  v157 = v11;
  v158 = v13;
  v155 = v19;
  v156 = v9;
  v153 = v21;
  v154 = &v133 - v25;
  if (!a3)
  {
    v140 = v15;
    v65 = [a4 text];
    if (v65)
    {
      v66 = v65;
      v67 = sub_1BE052434();
      v69 = v68;

      v161 = v67;
      v162 = v69;
      sub_1BD0DDEBC();
      v70 = sub_1BE0506C4();
      v72 = v71;
      v73 = v142;
      *v142 = v70;
      v73[1] = v71;
      v149 = v70;
      v75 = (v74 & 1);
      *(v73 + 16) = v74 & 1;
      v73[3] = v76;
      v151 = v76;
      swift_storeEnumTagMultiPayload();
      sub_1BD0D7F18(v70, v72, v75);
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE98, &qword_1BE0C70C8);
      sub_1BD2823BC(&qword_1EBD3FE90, &qword_1EBD3FE98, &qword_1BE0C70C8, sub_1BD281F28);
      v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FEB0, &qword_1BE0C70D8);
      v78 = sub_1BD2823BC(&qword_1EBD3FEB8, &qword_1EBD3FEB0, &qword_1BE0C70D8, sub_1BD281F7C);
      v161 = v77;
      v162 = v78;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v161 = v140;
      v162 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v80 = v150;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v80, v155, &qword_1EBD3FE88, &qword_1BE0C70C0);
      swift_storeEnumTagMultiPayload();
      sub_1BD281DBC();
      v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FED8, &qword_1BE0C70F0);
      v82 = sub_1BD2823BC(&qword_1EBD3FEE0, &qword_1EBD3FED8, &qword_1BE0C70F0, sub_1BD281FD0);
      v161 = v81;
      v162 = v82;
      v83 = swift_getOpaqueTypeConformance2();
      v161 = v156;
      v162 = v83;
      v84 = swift_getOpaqueTypeConformance2();
      v161 = v157;
      v162 = v84;
      swift_getOpaqueTypeConformance2();
      v64 = v154;
      sub_1BE04F9A4();
      sub_1BD0DDF10(v149, v72, v75, v85, v86, v87, v88, v89);
      v151, v90, v91, v92, v93, v94, v95, v96;
      sub_1BD0DE53C(v80, &qword_1EBD3FE88, &qword_1BE0C70C0);
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (a3 == 1)
  {
    v140 = v15;
    v26 = [a4 text];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1BE052434();
      v30 = v29;

      v161 = v28;
      v162 = v30;
      sub_1BD0DDEBC();
      v31 = sub_1BE0506C4();
      v33 = v32;
      v35 = v34;
      v161 = v31;
      v162 = v32;
      v37 = (v36 & 1);
      v163 = v36 & 1;
      v164 = v34;
      v165 = 1;
      v144 ^= 1u;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FEB0, &qword_1BE0C70D8);
      v39 = sub_1BD2823BC(&qword_1EBD3FEB8, &qword_1EBD3FEB0, &qword_1BE0C70D8, sub_1BD281F7C);
      v40 = v133;
      sub_1BE050F84();
      sub_1BD0DDF10(v31, v33, v37, v41, v42, v43, v44, v45);
      v35, v46, v47, v48, v49, v50, v51, v52;
      v53 = v147;
      sub_1BE050664();
      v161 = v38;
      v162 = v39;
      v146 = MEMORY[0x1E6981418];
      v54 = swift_getOpaqueTypeConformance2();
      v55 = v145;
      v56 = v140;
      sub_1BE051164();
      (*(v149 + 1))(v53, v151);
      (*(v134 + 8))(v40, v56);
      v57 = v141;
      v58 = v148;
      (*(v141 + 16))(v142, v55, v148);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE98, &qword_1BE0C70C8);
      sub_1BD2823BC(&qword_1EBD3FE90, &qword_1EBD3FE98, &qword_1BE0C70C8, sub_1BD281F28);
      v161 = v56;
      v162 = v54;
      swift_getOpaqueTypeConformance2();
      v59 = v150;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v59, v155, &qword_1EBD3FE88, &qword_1BE0C70C0);
      swift_storeEnumTagMultiPayload();
      sub_1BD281DBC();
      v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FED8, &qword_1BE0C70F0);
      v61 = sub_1BD2823BC(&qword_1EBD3FEE0, &qword_1EBD3FED8, &qword_1BE0C70F0, sub_1BD281FD0);
      v161 = v60;
      v162 = v61;
      v62 = swift_getOpaqueTypeConformance2();
      v161 = v156;
      v162 = v62;
      v63 = swift_getOpaqueTypeConformance2();
      v161 = v157;
      v162 = v63;
      swift_getOpaqueTypeConformance2();
      v64 = v154;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v59, &qword_1EBD3FE88, &qword_1BE0C70C0);
      (*(v57 + 8))(v145, v58);
LABEL_9:
      sub_1BD0DE204(v64, v159, &qword_1EBD3FE78, &qword_1BE0C70B8);

      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v97 = [a4 text];
  if (v97)
  {
    v98 = v97;
    v99 = sub_1BE052434();
    v101 = v100;

    v161 = v99;
    v162 = v101;
    sub_1BD0DDEBC();
    v102 = sub_1BE0506C4();
    v104 = v103;
    v106 = v105;
    v161 = v102;
    v162 = v103;
    v108 = (v107 & 1);
    v163 = v107 & 1;
    v164 = v105;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FED8, &qword_1BE0C70F0);
    v110 = sub_1BD2823BC(&qword_1EBD3FEE0, &qword_1EBD3FED8, &qword_1BE0C70F0, sub_1BD281FD0);
    v111 = v135;
    sub_1BE050EA4();
    sub_1BD0DDF10(v102, v104, v108, v112, v113, v114, v115, v116);
    v106, v117, v118, v119, v120, v121, v122, v123;
    v161 = v109;
    v162 = v110;
    v124 = swift_getOpaqueTypeConformance2();
    v125 = v137;
    v126 = v156;
    sub_1BE050F84();
    (*(v136 + 8))(v111, v126);
    v127 = v147;
    sub_1BE050664();
    v161 = v126;
    v162 = v124;
    v128 = swift_getOpaqueTypeConformance2();
    v129 = v139;
    v130 = v157;
    sub_1BE051164();
    (*(v149 + 1))(v127, v151);
    (*(v138 + 8))(v125, v130);
    v131 = v140;
    v132 = v158;
    (*(v140 + 16))(v155, v129, v158);
    swift_storeEnumTagMultiPayload();
    sub_1BD281DBC();
    v161 = v130;
    v162 = v128;
    swift_getOpaqueTypeConformance2();
    v64 = v154;
    sub_1BE04F9A4();
    (*(v131 + 8))(v129, v132);
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

id sub_1BD27F96C@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v35 = a4;
  v37 = sub_1BE050674();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFD0, &qword_1BE0C71E0);
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFC8, &qword_1BE0C71D8);
  v32 = *(v33 - 8);
  v10 = MEMORY[0x1EEE9AC00](v33);
  v12 = &v30 - v11;
  result = [a1 text];
  if (result)
  {
    v14 = result;
    v15 = sub_1BE052434();
    v17 = v16;

    sub_1BD27FDA4(v15, v17, v4, v44);
    v17, v18, v19, v20, v21, v22, v23, v24;
    v40 = v44[2];
    v41[0] = *v45;
    *(v41 + 9) = *&v45[9];
    v39 = v44[1];
    v38 = v44[0];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFD8, &qword_1BE0C71E8);
    v26 = sub_1BD28230C();
    sub_1BE050EA4();
    v42[2] = v40;
    v43[0] = v41[0];
    *(v43 + 9) = *(v41 + 9);
    v42[0] = v38;
    v42[1] = v39;
    sub_1BD0DE53C(v42, &qword_1EBD3FFD8, &qword_1BE0C71E8);
    *&v38 = v25;
    *(&v38 + 1) = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1BE050F84();
    (*(v31 + 8))(v9, v7);
    v28 = v34;
    sub_1BE050664();
    *&v38 = v7;
    *(&v38 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v29 = v33;
    sub_1BE051164();
    (*(v36 + 8))(v28, v37);
    return (*(v32 + 8))(v12, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1BD27FDA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  if (a3)
  {
    *&v6 = a1;
    *(&v6 + 1) = a2;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    sub_1BE0506C4();
    if (qword_1EBD36E40 != -1)
    {
      swift_once();
    }
  }

  else
  {
    *&v6 = a1;
    *(&v6 + 1) = a2;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    sub_1BE0506C4();
    PKNaturalUIEnabled();
    if (PKNaturalUIEnabled())
    {
      sub_1BE051CE4();
    }

    else
    {
      sub_1BE051CD4();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFF0, &qword_1BE0C71F0);
  sub_1BD2823BC(&qword_1EBD3FFE8, &qword_1EBD3FFF0, &qword_1BE0C71F0, sub_1BD282440);
  sub_1BE04F9A4();
  a4[2] = v8;
  a4[3] = *v9;
  *(a4 + 57) = *&v9[9];
  result = v7;
  *a4 = v6;
  a4[1] = v7;
  return result;
}
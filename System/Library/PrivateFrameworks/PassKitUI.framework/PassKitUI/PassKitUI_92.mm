uint64_t sub_1BD9BB6BC()
{
  v0 = sub_1BE051F54();
  v38 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE051FA4();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FC4();
  v35 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v34 = *(v7 + 8);
  v34(v9, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1BD267104;
  *(v15 + 24) = v13;
  aBlock[4] = sub_1BD267328;
  v40 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_95;
  v16 = _Block_copy(aBlock);
  v17 = v40;
  sub_1BE048964();
  v17, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD9BE4B0(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v12, v5, v2, v16);
  _Block_release(v16);
  v13, v25, v26, v27, v28, v29, v30, v31;

  (*(v38 + 8))(v2, v0);
  (*(v36 + 8))(v5, v37);
  return (v34)(v12, v35);
}

void sub_1BD9BBAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v127 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v120 - v7;
  v9 = sub_1BE04B824();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04C4C4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a3;
  sub_1BD113234(a3, &v136);
  if (*(&v137 + 1) > 6uLL)
  {
    v123 = v16;
    v124 = v14;
    v34 = v13;
    v121 = v8;
    v122 = v10;
    sub_1BD043990(&v136, v135);
    v35 = *&v4[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView];
    sub_1BD0EE8CC(v135, v134);
    v36 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
    swift_beginAccess();
    sub_1BD266DC0(v134, v35 + v36);
    swift_endAccess();
    sub_1BD97A1FC();
    sub_1BD0DE53C(v134, &qword_1EBD3F678, &unk_1BE0C64C0);
    v125 = v4;
    v37 = [v4 view];
    if (!v37)
    {
      goto LABEL_46;
    }

    v38 = v37;
    [v37 addSubview_];

    sub_1BD0EE8CC(v135, v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0, &qword_1BE0B9060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6D0, &unk_1BE10A7A0);
    v39 = swift_dynamicCast();
    v40 = v12;
    v42 = v123;
    v41 = v124;
    if (v39)
    {
      v43 = v34;
      sub_1BD043990(&v128, v134);
      v44 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
      v45 = v125;
      swift_beginAccess();
      sub_1BD0EE8CC(&v45[v44], v131);
      v46 = v132;
      v47 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      (*(v47 + 32))(v46, v47);
      sub_1BE04C454();
      v49 = v48;
      (*(v41 + 8))(v42, v43);
      sub_1BE04B8B4();
      v49, v50, v51, v52, v53, v54, v55, v56;
      __swift_destroy_boxed_opaque_existential_0(v134, v57, v58, v59, v60, v61, v62, v63);
      __swift_destroy_boxed_opaque_existential_0(v131, v64, v65, v66, v67, v68, v69, v70);
    }

    else
    {
      v130 = 0;
      v128 = 0u;
      v129 = 0u;
      sub_1BD0DE53C(&v128, &unk_1EBD47840, &unk_1BE0C6500);
    }

    v21 = v127;
    sub_1BD0EE8CC(v135, v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F6E0, &unk_1BE10A7B0);
    if (swift_dynamicCast())
    {
      sub_1BD043990(&v128, v134);
      __swift_project_boxed_opaque_existential_1(v134, v134[3]);
      v78 = v121;
      sub_1BE04B854();
      v79 = v122;
      if ((*(v122 + 48))(v78, 1, v9) == 1)
      {
        __swift_destroy_boxed_opaque_existential_0(v135, v80, v81, v82, v83, v84, v85, v86);
        sub_1BD0DE53C(v78, &unk_1EBD3F6C0, &qword_1BE0DA790);
      }

      else
      {
        (*(v79 + 32))(v40, v78, v9);
        _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
        (*(v79 + 8))(v40, v9);
        __swift_destroy_boxed_opaque_existential_0(v135, v94, v95, v96, v97, v98, v99, v100);
      }

      __swift_destroy_boxed_opaque_existential_0(v134, v87, v88, v89, v90, v91, v92, v93);
      v23 = v125;
      v24 = v126;
      v21 = v127;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v135, v71, v72, v73, v74, v75, v76, v77);
      v130 = 0;
      v128 = 0u;
      v129 = 0u;
      sub_1BD0DE53C(&v128, &qword_1EBD3F6E8, qword_1BE0C6510);
      v23 = v125;
      v24 = v126;
    }
  }

  else
  {
    if (((1 << SBYTE8(v137)) & 0x4B) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      v18 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v19;
      v20 = v18;
      v21 = v127;
      v22 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      v23 = v4;
      sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
      v24 = v126;
      _s9PassKitUI9AnalyticsO30trackNearbyPeerPaymentSendFlow5state4withyAA0fgH11SenderStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v126, v22);
      v22, v25, v26, v27, v28, v29, v30, v31;
      goto LABEL_18;
    }

    v23 = v4;
    if (((1 << SBYTE8(v137)) & 0x30) != 0)
    {
      v24 = v126;
      sub_1BD9BCA40(v126);
      v32 = [v4 view];
      v21 = v127;
      if (v32)
      {
        v33 = v32;
        [v32 setNeedsLayout];

        goto LABEL_18;
      }

      __break(1u);
LABEL_46:
      __break(1u);
      return;
    }

    sub_1BD11326C(&v136);
    v24 = v126;
    v21 = v127;
  }

LABEL_18:
  sub_1BD113234(v21, &v136);
  sub_1BD113234(v24, &v139);
  if (*(&v137 + 1) <= 2)
  {
    if (*(&v137 + 1))
    {
      if (*(&v137 + 1) == 1)
      {
        if (v140 == 1)
        {
LABEL_43:
          sub_1BD11326C(&v136);
          return;
        }
      }

      else if (*(&v137 + 1) == 2 && v140 == 2)
      {
        goto LABEL_43;
      }
    }

    else if (!v140)
    {
      goto LABEL_43;
    }
  }

  else if (*(&v137 + 1) > 4)
  {
    if (*(&v137 + 1) == 5)
    {
      if (v140 == 5)
      {
        goto LABEL_43;
      }
    }

    else if (*(&v137 + 1) == 6 && v140 == 6)
    {
      goto LABEL_43;
    }
  }

  else if (*(&v137 + 1) == 3)
  {
    if (v140 == 3)
    {
      goto LABEL_43;
    }
  }

  else if (v140 == 4)
  {
    goto LABEL_43;
  }

  sub_1BD0DE53C(&v136, &qword_1EBD398E0, &qword_1BE0B8E80);
  sub_1BD113234(v21, &v136);
  if (*(&v137 + 1) >= 6uLL)
  {
    if (*(&v137 + 1) == 6)
    {
      return;
    }

    goto LABEL_43;
  }

  sub_1BD11326C(&v136);
  v101 = *&v23[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController];
  type metadata accessor for NearbyPeerPaymentSenderVFXViewController();
  if (swift_dynamicCastClass())
  {
    v102 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BD113234(v24, &v136);
    v103 = swift_allocObject();
    *(v103 + 16) = v102;
    v104 = v137;
    *(v103 + 24) = v136;
    *(v103 + 40) = v104;
    *(v103 + 56) = v138;
    v105 = v101;
    sub_1BE048964();
    NearbyPeerPaymentSenderVFXViewController.setState(_:completion:)(v24, sub_1BD9BE10C, v103);
    v102, v106, v107, v108, v109, v110, v111, v112;
    v103, v113, v114, v115, v116, v117, v118, v119;
  }
}

void sub_1BD9BC2C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD113234(a2, v15);
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v21 = xmmword_1BE0B8E10;
    if (v16 == 6)
    {
      sub_1BD11326C(v15);
      v5 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
      swift_beginAccess();
      sub_1BD0EE8CC(v4 + v5, v15);
      v6 = v16;
      v7 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      LOBYTE(v5) = (*(v7 + 72))(v6, v7);
      __swift_destroy_boxed_opaque_existential_0(v15, v8, v9, v10, v11, v12, v13, v14);
      if ((v5 & 1) == 0)
      {
        sub_1BD9BB6BC();
      }
    }

    else
    {

      sub_1BD0DE53C(v15, &qword_1EBD398E0, &qword_1BE0B8E80);
    }
  }
}

void sub_1BD9BC3E8(uint64_t a1, void *a2)
{
  sub_1BD38EACC(a2);
  v4 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(v2 + v4, v14);
  v5 = v15;
  v6 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v6 + 96))(a2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v14, v7, v8, v9, v10, v11, v12, v13);
}

void sub_1BD9BC590(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
  v4 = sub_1BE051D54();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE052FB4();
  v4, v7, v8, v9, v10, v11, v12, v13;
  v5, v14, v15, v16, v17, v18, v19, v20;
  v6, v21, v22, v23, v24, v25, v26, v27;
}

uint64_t sub_1BD9BC6A4(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView);

    [v5 setContentSize_];
  }

  return a2();
}

void sub_1BD9BC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
  v7 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  sub_1BE048964();
  sub_1BE052FB4();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
}

void sub_1BD9BC8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
  v7 = sub_1BE051D04();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  sub_1BE048964();
  sub_1BE052FB4();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
}

void sub_1BD9BCA40(uint64_t a1)
{
  sub_1BD9BAE20(a1);
  v4 = v3;
  sub_1BD9BB180(a1);
  v6 = v5;
  sub_1BD113234(a1, v94);
  if ((v95 - 2) < 5)
  {
    v14 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels);
    v15 = *&v14[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
    v16 = sub_1BE052404();
    v4, v17, v18, v19, v20, v21, v22, v23;
    [v15 setText_];

    v24 = *&v14[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
    v25 = sub_1BE052404();
    [v24 setText_];

    [v14 setNeedsLayout];
LABEL_3:
    v33 = v6;
    goto LABEL_4;
  }

  if (v95 == 1)
  {
    v70 = *(*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView) + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_stateLabelsView);
    v71 = *&v70[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
    v72 = v70;
    v73 = sub_1BE052404();
    v4, v74, v75, v76, v77, v78, v79, v80;
    [v71 setText_];

    v81 = *&v72[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
    v82 = sub_1BE052404();
    [v81 setText_];

    [v72 setNeedsLayout];
    goto LABEL_3;
  }

  if (v95)
  {
    v4, v7, v8, v9, v10, v11, v12, v13;
    v6, v83, v84, v85, v86, v87, v88, v89;
    sub_1BD11326C(v94);
    return;
  }

  v34 = *(*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView) + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_stateLabelsView);
  v35 = *&v34[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
  v36 = v34;
  v37 = sub_1BE052404();
  v4, v38, v39, v40, v41, v42, v43, v44;
  [v35 setText_];

  v45 = *&v36[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
  v46 = sub_1BE052404();
  [v45 setText_];

  [v36 setNeedsLayout];
  v6, v47, v48, v49, v50, v51, v52, v53;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = xmmword_1BE0B8DF0;
  sub_1BD9BAE20(&v90);
  v55 = v54;
  sub_1BD11326C(&v90);
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = xmmword_1BE0B8DF0;
  sub_1BD9BB180(&v90);
  v57 = v56;
  sub_1BD11326C(&v90);
  v58 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels);
  v59 = *&v58[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
  v60 = sub_1BE052404();
  v55, v61, v62, v63, v64, v65, v66, v67;
  [v59 setText_];

  v68 = *&v58[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
  v69 = sub_1BE052404();
  [v68 setText_];

  [v58 setNeedsLayout];
  v33 = v57;
LABEL_4:
  v33, v26, v27, v28, v29, v30, v31, v32;
}

id sub_1BD9BCDEC(void *a1, double a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for NearbyPeerPaymentSenderViewController();
  return objc_msgSendSuper2(&v8, *a5, a4);
}

void sub_1BD9BCE3C()
{
  v1 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(v0 + v1, v11);
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v3 + 80))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v11, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1BD9BCFD0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  __swift_destroy_boxed_opaque_existential_0((v8 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor), a2, a3, a4, a5, a6, a7, a8);
  *(v8 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_lockStateMonitor), v9, v10, v11, v12, v13, v14, v15;
  v16 = *(v8 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels);
}

id NearbyPeerPaymentSenderViewController.__deallocating_deinit(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NearbyPeerPaymentSenderViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BD9BD0E8(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
  v4 = sub_1BE051D54();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE052FB4();
  v4, v7, v8, v9, v10, v11, v12, v13;
  v5, v14, v15, v16, v17, v18, v19, v20;
  v6, v21, v22, v23, v24, v25, v26, v27;
}

void sub_1BD9BD230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
  v9 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  sub_1BE048964();
  sub_1BE052FB4();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
}

void sub_1BD9BD3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
  v9 = sub_1BE051D04();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  sub_1BE048964();
  sub_1BE052FB4();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
}

char *sub_1BD9BD508(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v178 = a3;
  v179 = a4;
  v177 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0, &qword_1BE0B9180);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v173 - v10;
  v12 = sub_1BE04C4C4();
  v185 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v175 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v173 - v15;
  v17 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_lockStateMonitor;
  type metadata accessor for LockStateMonitor();
  swift_allocObject();
  v18 = sub_1BD4DA4FC();
  v176 = v17;
  *(v5 + v17) = v18;
  *(v5 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_restartMonitoring) = 0;
  v19 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels;
  *(v5 + v19) = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentStateLabelsView()) init];
  if (!a1[2])
  {
    goto LABEL_26;
  }

  v20 = sub_1BD148F70(0xD000000000000012, 0x80000001BE12B060);
  if ((v21 & 1) == 0)
  {
    goto LABEL_26;
  }

  v180 = a5;
  v22 = *(a1[7] + 8 * v20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_26:
    *&v186 = 0;
    *(&v186 + 1) = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD00000000000006BLL, 0x80000001BE1456D0);
    v153 = sub_1BE052254();
    v155 = v154;
    MEMORY[0x1BFB3F610](v153);
    v155, v156, v157, v158, v159, v160, v161, v162;
    while (1)
    {
LABEL_29:
      sub_1BE053994();
      __break(1u);
    }
  }

  v23 = MEMORY[0x1BFB37B30]();
  v25 = v24;
  sub_1BE04A1B4();
  swift_allocObject();
  v26 = sub_1BE04A1A4();
  sub_1BD9BE4B0(&qword_1EBD478C8, MEMORY[0x1E69B82C0], MEMORY[0x1E69B82C8]);
  v181 = v25;
  v182 = v23;
  sub_1BE04A194();
  v26, v27, v28, v29, v30, v31, v32, v33;
  if (!a1[2])
  {
LABEL_28:
    *&v186 = 0;
    *(&v186 + 1) = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD000000000000068, 0x80000001BE145780);
    v163 = sub_1BE052254();
    v165 = v164;
    MEMORY[0x1BFB3F610](v163);
    v165, v166, v167, v168, v169, v170, v171, v172;
    goto LABEL_29;
  }

  sub_1BD148F70(0x74736F486975, 0xE600000000000000);
  v183 = v11;
  v184 = v22;
  if ((v34 & 1) == 0)
  {
LABEL_10:
    if (a1[2])
    {
      sub_1BD148F70(0x516465646F636E65, 0xEC00000065746F75);
      if (v48)
      {
        v174 = v16;
        swift_unknownObjectRetain();
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();
        if (v49)
        {
          v50 = v49;
          sub_1BD0E5E8C(0, &qword_1EBD4B1B8, 0x1E696ACD0);
          sub_1BD0E5E8C(0, &qword_1EBD39A30, 0x1E69B8660);
          v51 = MEMORY[0x1BFB37B30](v50);
          v53 = v52;
          v54 = sub_1BE052CB4();
          sub_1BD1245AC(v51, v53, v55, v56, v57, v58, v59, v60);
          if (v54)
          {
            a1, v61, v62, v63, v64, v65, v66, v67;
            v47 = v185;
            v68 = v175;
            v16 = v174;
            (*(v185 + 16))(v175, v174, v12);
            v69 = type metadata accessor for NearbyPeerPaymentDiscoveryMonitor(0);
            swift_allocObject();
            v70 = v54;
            v71 = sub_1BD1258D4(v68, v70);

            sub_1BD116BC8();
            v187 = v69;
            v188 = &protocol witness table for NearbyPeerPaymentDiscoveryMonitor;

LABEL_15:
            swift_unknownObjectRelease();
            *&v186 = v71;
            sub_1BD043990(&v186, v6 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor);
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
      }
    }

    goto LABEL_28;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v36 = [v35 unsignedIntegerValue];
  swift_unknownObjectRelease();
  if (v36 != 1)
  {
    if (v36)
    {
      goto LABEL_29;
    }

    if (a1[2])
    {
      sub_1BD148F70(0x516465646F636E65, 0xEC00000065746F75);
      if (v129)
      {
        v174 = v16;
        swift_unknownObjectRetain();
        objc_opt_self();
        v130 = swift_dynamicCastObjCClass();
        if (v130)
        {
          v131 = v130;
          sub_1BD0E5E8C(0, &qword_1EBD4B1B8, 0x1E696ACD0);
          sub_1BD0E5E8C(0, &qword_1EBD39A30, 0x1E69B8660);
          v132 = MEMORY[0x1BFB37B30](v131);
          v134 = v133;
          v135 = sub_1BE052CB4();
          sub_1BD1245AC(v132, v134, v136, v137, v138, v139, v140, v141);
          if (v135)
          {
            a1, v142, v143, v144, v145, v146, v147, v148;
            v47 = v185;
            v149 = v175;
            v150 = v174;
            (*(v185 + 16))(v175, v174, v12);
            v151 = type metadata accessor for NearbyPeerPaymentDiscoveryMonitor(0);
            swift_allocObject();
            v152 = v135;
            v71 = sub_1BD1258D4(v149, v152);

            sub_1BD116BC8();
            v187 = v151;
            v188 = &protocol witness table for NearbyPeerPaymentDiscoveryMonitor;

            v16 = v150;
            goto LABEL_15;
          }
        }

        swift_unknownObjectRelease();
      }
    }

    goto LABEL_28;
  }

  a1, v37, v38, v39, v40, v41, v42, v43;
  v44 = type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor(0);
  swift_allocObject();
  MockNearbyPeerPaymentDiscoveryMonitor.init()();
  v45 = (v6 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor);
  v45[3] = v44;
  v45[4] = &protocol witness table for MockNearbyPeerPaymentDiscoveryMonitor;
  *v45 = v46;
  v47 = v185;
LABEL_16:
  v72 = v12;
  v73 = *(v6 + v176);
  sub_1BE048964();
  v74 = sub_1BD4DA364();
  v73, v75, v76, v77, v78, v79, v80, v81;
  *(v6 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_currentLockState) = v74 & 1;
  v82 = v178;
  sub_1BE048964();
  v83 = v180;
  sub_1BE048964();
  v84 = NearbyPeerPaymentViewController.init(context:screenEdgeSwipeAction:dismissAction:)(1, v177, v82, v179, v83);
  v85 = sub_1BE04C3F4();
  v86 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v87 = *&v84[v86];
  *&v84[v86] = v85;
  v88 = v85;

  sub_1BD38D490();
  v89 = sub_1BE04C4A4();
  v90 = v16;
  v92 = v91;
  v93 = *&v84[OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView];
  v94 = sub_1BE04C4A4();
  v96 = v95;
  v97 = *(v47 + 56);
  v98 = v47;
  v99 = v183;
  v97(v183, 1, 1, v72);
  sub_1BD28D16C(v94, v96, v99);

  v96, v100, v101, v102, v103, v104, v105, v106;
  sub_1BD0DE53C(v99, &unk_1EBD476F0, &qword_1BE0B9180);
  v107 = &v84[OBJC_IVAR___PKNearbyPeerPaymentViewController_memo];
  swift_beginAccess();
  v108 = v107[1];
  *v107 = v89;
  v107[1] = v92;
  v108, v109, v110, v111, v112, v113, v114, v115;
  v116 = &v84[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor];
  swift_beginAccess();
  v117 = *(v116 + 24);
  v118 = *(v116 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v116, v117);
  v119 = *(v118 + 56);
  v120 = v84;
  v119(v84, &protocol witness table for NearbyPeerPaymentSenderViewController, v117, v118);
  swift_endAccess();
  *(*&v120[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_lockStateMonitor] + 24) = &off_1F3BCA100;
  swift_unknownObjectWeakAssign();
  v121 = [objc_opt_self() defaultCenter];
  [v121 addObserver:v120 selector:sel_applicationDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

  sub_1BD1245AC(v182, v181, v122, v123, v124, v125, v126, v127);
  swift_unknownObjectRelease();
  (*(v98 + 8))(v90, v72);
  return v120;
}

id sub_1BD9BE42C()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView) setAlpha_];
  [*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView) setAlpha_];
  v2 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_divider);

  return [v2 setAlpha_];
}

uint64_t sub_1BD9BE4B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD9BE558@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v129 = a1;
  v114 = sub_1BE04FFC4();
  v115 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AB48, &qword_1BE10A8E8);
  v116 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v112 = &v108 - v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AB50, &qword_1BE10A8F0);
  v119 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v117 = &v108 - v5;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AB58, &qword_1BE10A8F8);
  MEMORY[0x1EEE9AC00](v128);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v108 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v108 - v12;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AB60, &unk_1BE10A900);
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v108 - v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590, &qword_1BE0CA980);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v108 - v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D8, &unk_1BE0DC9E0);
  MEMORY[0x1EEE9AC00](v124);
  v21 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v108 - v23;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48950, &qword_1BE0DCA58);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v26 = &v108 - v25;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D0, &unk_1BE10A910);
  MEMORY[0x1EEE9AC00](v125);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v136 = *(v2 + 16);
  v32 = *(&v136 + 1);
  if (*(&v136 + 1))
  {
    v117 = v31;
    v118 = v30;
    v119 = (&v108 - v29);
    v33 = v136;
    v130 = *v2;
    v34 = *v2;
    v35 = *(v2 + 64);
    v133 = *(v2 + 48);
    v134 = v35;
    v135 = v34;
    sub_1BE048C84();
    sub_1BD206260(&v130, &v131);
    sub_1BD1BCE40(&v136, &v131);
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
    sub_1BE051914();
    v133 = __PAIR128__(v32, v33);
    sub_1BD0DDEBC();
    sub_1BE0506C4();
    sub_1BE051E24();
    v36 = v2;
    if (*(v2 + 32))
    {
      v37 = sub_1BE051224();
    }

    else
    {
      v37 = sub_1BE051264();
    }

    v44 = v37;
    KeyPath = swift_getKeyPath();
    (*(v122 + 32))(v24, v19, v123);
    v46 = v124;
    v47 = &v24[*(v124 + 36)];
    *v47 = KeyPath;
    v47[1] = v44;
    v48 = sub_1BD4F0E9C();
    MEMORY[0x1BFB3DDE0](1, v46, v48);
    sub_1BD9BF1C0(v24);
    v133 = v130;
    *&v131 = v46;
    *(&v131 + 1) = v48;
    swift_getOpaqueTypeConformance2();
    v49 = v117;
    v50 = v121;
    sub_1BE050C34();
    sub_1BD1BCDE4(&v130);
    v120[1](v26, v50);
    v51 = *(v36 + 64);
    v133 = *(v36 + 48);
    v134 = v51;
    MEMORY[0x1BFB3E970](&v131, v116);
    v52 = *(&v131 + 1);
    v133 = v131;
    v53 = v118;
    sub_1BE04EB94();
    v52, v54, v55, v56, v57, v58, v59, v60;
    sub_1BD0DE53C(v49, &qword_1EBD488D0, &unk_1BE10A910);
    sub_1BE052434();
    v62 = v61;
    v63 = v119;
    sub_1BE04EBB4();
    v62, v64, v65, v66, v67, v68, v69, v70;
    sub_1BD0DE53C(v53, &qword_1EBD488D0, &unk_1BE10A910);
    sub_1BD0DE19C(v63, v127, &qword_1EBD488D0, &unk_1BE10A910);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F0DA4();
    sub_1BD9BF270();
    sub_1BE04F9A4();
    v71 = v63;
    v72 = &qword_1EBD488D0;
    v73 = &unk_1BE10A910;
  }

  else
  {
    v38 = v111;
    v110 = v7;
    v120 = v10;
    v121 = v13;
    v39 = *v2;
    v40 = *(v2 + 48);
    v134 = *(v2 + 64);
    v135 = v39;
    v41 = *(v2 + 64);
    v131 = *(v2 + 48);
    v132 = v41;
    v133 = v40;
    swift_bridgeObjectRetain_n();
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
    sub_1BE051914();
    v131 = v135;
    sub_1BD0DDEBC();
    sub_1BE051E14();
    v42 = *(v2 + 32);
    v108 = v2;
    if (v42)
    {
      v43 = sub_1BE051224();
    }

    else
    {
      v43 = sub_1BE051264();
    }

    v74 = v43;
    v75 = v38;
    v76 = v113;
    v77 = swift_getKeyPath();
    (*(v122 + 32))(v21, v16, v123);
    v78 = v124;
    v79 = &v21[*(v124 + 36)];
    *v79 = v77;
    v79[1] = v74;
    sub_1BE04FFB4();
    v80 = sub_1BD4F0E9C();
    v81 = sub_1BD9BF228(&qword_1EBD5AB68, MEMORY[0x1E697CA80], MEMORY[0x1E697CA78]);
    v82 = v112;
    v83 = v114;
    sub_1BE050AF4();
    (*(v115 + 8))(v76, v83);
    sub_1BD9BF1C0(v21);
    *&v131 = v78;
    *(&v131 + 1) = v83;
    *&v132 = v80;
    *(&v132 + 1) = v81;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v85 = v117;
    v86 = v118;
    MEMORY[0x1BFB3DDE0](1, v118, OpaqueTypeConformance2);
    (*(v116 + 8))(v82, v86);
    v131 = v135;
    *&v130 = v86;
    *(&v130 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v87 = v110;
    sub_1BE050C34();
    sub_1BD1BCDE4(&v135);
    v119[1](v85, v75);
    v131 = v133;
    v132 = v134;
    MEMORY[0x1BFB3E970](&v130, v109);
    v88 = *(&v130 + 1);
    v131 = v130;
    v89 = v120;
    sub_1BE04EB94();
    v88, v90, v91, v92, v93, v94, v95, v96;
    sub_1BD0DE53C(v87, &qword_1EBD5AB58, &qword_1BE10A8F8);
    sub_1BE052434();
    v98 = v97;
    v99 = v121;
    sub_1BE04EBB4();
    v98, v100, v101, v102, v103, v104, v105, v106;
    sub_1BD0DE53C(v89, &qword_1EBD5AB58, &qword_1BE10A8F8);
    sub_1BD0DE19C(v99, v127, &qword_1EBD5AB58, &qword_1BE10A8F8);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F0DA4();
    sub_1BD9BF270();
    sub_1BE04F9A4();
    v71 = v99;
    v72 = &qword_1EBD5AB58;
    v73 = &qword_1BE10A8F8;
  }

  return sub_1BD0DE53C(v71, v72, v73);
}

uint64_t sub_1BD9BF1C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D8, &unk_1BE0DC9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD9BF228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD9BF270()
{
  result = qword_1EBD5AB70;
  if (!qword_1EBD5AB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AB58, &qword_1BE10A8F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AB48, &qword_1BE10A8E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488D8, &unk_1BE0DC9E0);
    sub_1BE04FFC4();
    sub_1BD4F0E9C();
    sub_1BD9BF228(&qword_1EBD5AB68, MEMORY[0x1E697CA80], MEMORY[0x1E697CA78]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD9BF228(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB70);
  }

  return result;
}

unint64_t sub_1BD9BF3FC()
{
  result = qword_1EBD5AB78;
  if (!qword_1EBD5AB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AB80, &unk_1BE10A950);
    sub_1BD4F0DA4();
    sub_1BD9BF270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB78);
  }

  return result;
}

id sub_1BD9BF498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(PKBarcodeStickerView) initWithBarcode:a2 validityState:a3];
  if (!v3)
  {
    v3 = [objc_allocWithZone(PKBarcodeStickerView) init];
  }

  v4 = v3;
  [v4 pkui:1 setExcludedFromScreenCapture:1 andBroadcasting:?];
  [v4 setOverrideUserInterfaceStyle_];
  [v4 setAccessibilityIgnoresInvertColors_];

  return v4;
}

uint64_t sub_1BD9BF560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9BF6A8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD9BF5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9BF6A8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD9BF628(uint64_t a1)
{
  sub_1BD9BF6A8();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD9BF654()
{
  result = qword_1EBD5AB88;
  if (!qword_1EBD5AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB88);
  }

  return result;
}

unint64_t sub_1BD9BF6A8()
{
  result = qword_1EBD5AB90;
  if (!qword_1EBD5AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB90);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for EqualWidthHStack(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

void *sub_1BD9BF738(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  sub_1BE04E854();
  sub_1BD5A7878();
  sub_1BE052AD4();
  result = sub_1BE052B04();
  if (v17 != v16)
  {
    sub_1BD9BF8BC(a5, a1, a2 & 1, a3, a4 & 1, a7, a8 & 1);
    sub_1BE052AD4();
    sub_1BE052B04();
    result = sub_1BE052AF4();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1BE052AD4();
      sub_1BE052B04();
      return sub_1BE052AF4();
    }
  }

  return result;
}

uint64_t sub_1BD9BF8BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v31 = a7;
  v30 = a6;
  v33 = a3;
  v32 = a2;
  v8 = sub_1BE04E724();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABA0, qword_1BE10AB80);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = sub_1BE04E854();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = *(v13 + 44);
  sub_1BD5A7878();
  v34 = a1;
  sub_1BE052AD4();
  v18 = (v9 + 16);
  v19 = (v9 + 8);
  v20 = 0.0;
  v21 = 0.0;
  while (1)
  {
    sub_1BE052B04();
    if (*&v15[v17] == v36[0])
    {
      break;
    }

    v22 = sub_1BE052B34();
    (*v18)(v11);
    v22(v36, 0);
    sub_1BE052B14();
    sub_1BE04EDA4();
    LOBYTE(v36[0]) = v23 & 1;
    LOBYTE(v35) = v24 & 1;
    sub_1BE04E6F4();
    v26 = v25;
    v28 = v27;
    (*v19)(v11, v8);
    if (v26 > v21)
    {
      v21 = v26;
    }

    if (v28 > v20)
    {
      v20 = v28;
    }
  }

  sub_1BD9BFFC4(v15);
  sub_1BE052AD4();
  sub_1BE052B04();
  result = sub_1BE052AF4();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1BE052AD4();
    sub_1BE052B04();
    return sub_1BE052AF4();
  }

  return result;
}

void *sub_1BD9BFC00(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, uint64_t a11, char a12)
{
  v39 = a3;
  v40 = a11;
  v21 = sub_1BE04E724();
  v38 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E854();
  sub_1BD5A7878();
  sub_1BE052AD4();
  result = sub_1BE052B04();
  if (v42 == v41)
  {
    return result;
  }

  v25 = a2 & 1;
  LOBYTE(v42) = a2 & 1;
  LOBYTE(v41) = a4 & 1;
  v26 = v40;
  sub_1BD9BF8BC(a5, a1, v25, v39, a4 & 1, v40, a12 & 1);
  v28 = v27;
  v43.origin.x = a6;
  v43.origin.y = a7;
  v43.size.width = a8;
  v43.size.height = a9;
  MinX = CGRectGetMinX(v43);
  sub_1BE052AD4();
  sub_1BE052B04();
  v30 = v41;
  result = v42;
  if (v41 < v42)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v42 == v41)
  {
    return result;
  }

  if (v42 >= v41)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v31 = *&v26;
  v32 = MinX + v28 * 0.5;
  v33 = (v38 + 8);
  v34 = v31;
  if (a12)
  {
    v34 = 0.0;
  }

  v35 = v34 + v28;
  do
  {
    v36 = (result + 1);
    sub_1BE04E864();
    v44.origin.x = a6;
    v44.origin.y = a7;
    v44.size.width = a8;
    v44.size.height = a9;
    CGRectGetMidY(v44);
    sub_1BE051EA4();
    LOBYTE(v42) = 0;
    LOBYTE(v41) = 0;
    sub_1BE04E704();
    (*v33)(v23, v21);
    v32 = v35 + v32;
    result = v36;
  }

  while (v30 != v36);
  return result;
}

void (*sub_1BD9BFEE4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1BE04E0F4();
  return sub_1BD122AB4;
}

unint64_t sub_1BD9BFF70()
{
  result = qword_1EBD5AB98;
  if (!qword_1EBD5AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB98);
  }

  return result;
}

uint64_t sub_1BD9BFFC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABA0, qword_1BE10AB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD9C0030()
{
  result = qword_1EBD5ABA8;
  if (!qword_1EBD5ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABA8);
  }

  return result;
}

uint64_t sub_1BD9C0084(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD1337F4;

  return sub_1BD5417D4(1, 0, 0);
}

uint64_t sub_1BD9C0150()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB818);
  __swift_project_value_buffer(v6, qword_1EBDAB818);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD9C0364()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABE0, &qword_1BE10AE28);
  MEMORY[0x1EEE9AC00](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABD8, &qword_1BE10AE20);
  __swift_allocate_value_buffer(v1, qword_1EBDAB830);
  __swift_project_value_buffer(v1, qword_1EBDAB830);
  sub_1BD035EBC();
  sub_1BE048DA4();
  sub_1BE048D94();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABE8, &unk_1BE10AE58);
  sub_1BE048D84();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  sub_1BE048D94();
  return sub_1BE048DB4();
}

uint64_t sub_1BD9C04D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB818);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD9C0578(uint64_t a1)
{
  v2 = sub_1BD9C0A94();

  return MEMORY[0x1EEDB2E78](a1, v2);
}

uint64_t sub_1BD9C05B4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AC00, &qword_1BE10AE68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AC08, qword_1BE10AE70);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABE8, &unk_1BE10AE58);
  sub_1BE048CC4();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BD9C0744(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1BD9C0A94();
  v6 = sub_1BD9C0AE8();
  v7 = sub_1BD1CCCE8();
  *v4 = v2;
  v4[1] = sub_1BD519558;

  return MEMORY[0x1EEDB3C90](a2, v5, v6, v7);
}

uint64_t sub_1BD9C0810@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD0354E0();
  *a1 = result;
  return result;
}

uint64_t sub_1BD9C0838@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FF0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABD8, &qword_1BE10AE20);
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB830);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD9C08F0()
{
  result = qword_1EBD5ABC0;
  if (!qword_1EBD5ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABC0);
  }

  return result;
}

uint64_t sub_1BD9C0948(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v8[2] = a1[2];
  v8[3] = v2;
  v7[4] = v4;
  v7[5] = v3;
  v5 = a1[3];
  v7[6] = a1[2];
  v7[7] = v5;
  sub_1BD0303B8(v8, v7);
  sub_1BE048884();
  return sub_1BD030458(v8);
}

void (*sub_1BD9C09AC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1BE048864();
  return sub_1BD5191F0;
}

unint64_t sub_1BD9C0A30()
{
  result = qword_1EBD5ABC8;
  if (!qword_1EBD5ABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5ABD0, &qword_1BE10AE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABC8);
  }

  return result;
}

unint64_t sub_1BD9C0A94()
{
  result = qword_1EBD5ABF0;
  if (!qword_1EBD5ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABF0);
  }

  return result;
}

unint64_t sub_1BD9C0AE8()
{
  result = qword_1EBD5ABF8;
  if (!qword_1EBD5ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABF8);
  }

  return result;
}

void sub_1BD9C0B40(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product);
  v5 = type metadata accessor for ProvisioningMultiCredentialFlowSection();
  v6 = objc_allocWithZone(v5);
  v7 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings] = v7;
  v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] = 0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = 0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups] = v7;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier];
  *v8 = 0xD00000000000001ALL;
  v8[1] = 0x80000001BE1228D0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context] = v3;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials] = a1;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product] = v4;
  v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_allowManualEntry] = 0;
  v14.receiver = v6;
  v14.super_class = v5;
  sub_1BE048964();
  sub_1BE048C84();
  v9 = v4;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = v1 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v1, &off_1F3BCA500, v10, &off_1F3BA3CD0, ObjectType, v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_1BD9C0DEC()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  sub_1BE04BA54();
  v6 = *(v3 + 8);
  v6(v5, v2);
  sub_1BE052434();
  v8 = v7;
  v9 = sub_1BE04BB74();
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v18 = sub_1BE04B9A4();
  v6(v5, v2);
  v19 = *&v1[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials];
  v20 = *&v1[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product];
  v21 = v1[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry];
  v22 = objc_allocWithZone(PKPaymentSetupCredentialsViewController);
  sub_1BD71D990();
  sub_1BE048C84();
  v23 = v9;
  v24 = sub_1BE052724();
  v19, v25, v26, v27, v28, v29, v30, v31;
  v32 = [v22 initWithProvisioningController:v17 context:v18 credentials:v24 product:v20 allowsManualEntry:v21 reporter:v23];

  v163 = v23;
  [v32 setFlowDelegate_];
  KeyPath = swift_getKeyPath();
  v166 = sub_1BD187580(v1, KeyPath) & 1;
  v167 = v34;
  v168 = v35;
  sub_1BD4F8958();
  v36 = v167;
  v37 = *(v167 + 16);
  v164 = v32;
  if (v37 && (sub_1BE053D04(), sub_1BE052524(), v38 = sub_1BE053D64(), v46 = -1 << *(v36 + 32), v47 = v38 & ~v46, ((*(v36 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) != 0))
  {
    v48 = ~v46;
    v49 = 2;
    do
    {
      v50 = *(*(v36 + 48) + v47);
      v51 = 0xEE00415049506165;
      if (v50 != 1)
      {
        if (v50 != 2)
        {
          0xE400000000000000, v39, v40, v41, v42, v43, v44, v45;
LABEL_12:
          v60 = v168;
          if (!v168[2] || (sub_1BE053D04(), sub_1BE052524(), v61 = sub_1BE053D64(), v69 = -1 << *(v60 + 32), v70 = v61 & ~v69, ((*(v60 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v70) & 1) == 0))
          {
LABEL_20:
            v49 = 1;
            break;
          }

          v71 = ~v69;
          while (1)
          {
            v72 = *(v60[6] + v70);
            v73 = 0xEE00415049506165;
            if (v72 != 1)
            {
              if (v72 != 2)
              {
                0xE400000000000000, v62, v63, v64, v65, v66, v67, v68;
                v49 = 2;
                goto LABEL_21;
              }

              v73 = 0x80000001BE117610;
            }

            v74 = sub_1BE053B84();
            v73, v75, v76, v77, v78, v79, v80, v81;
            if (v74)
            {
              v32 = v164;
              v49 = 2;
              goto LABEL_22;
            }

            v70 = (v70 + 1) & v71;
            if (((*(v60 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v70) & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        v51 = 0x80000001BE117610;
      }

      v52 = sub_1BE053B84();
      v51, v53, v54, v55, v56, v57, v58, v59;
      if (v52)
      {
        goto LABEL_12;
      }

      v47 = (v47 + 1) & v48;
    }

    while (((*(v36 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) != 0);
LABEL_21:
    v32 = v164;
  }

  else
  {
    v49 = 2;
  }

LABEL_22:
  v82 = v166;
  v83 = v168;
  v84 = v1;
  sub_1BD12F790(v82, v36, v83, v84, KeyPath);
  v83, v85, v86, v87, v88, v89, v90, v91;
  v36, v92, v93, v94, v95, v96, v97, v98;

  KeyPath, v99, v100, v101, v102, v103, v104, v105;
  [v32 setShowPrivacyDisclosure_];
  v106 = swift_getKeyPath();
  v162 = sub_1BD187580(v84, v106);
  v108 = v107;
  v110 = v109;
  sub_1BE053D04();
  sub_1BE052524();
  v111 = sub_1BE053D64();
  v119 = -1 << *(v110 + 32);
  v120 = v111 & ~v119;
  if ((*(v110 + 56 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120))
  {
    v121 = ~v119;
    do
    {
      v122 = *(*(v110 + 48) + v120);
      v123 = 0xEE00415049506165;
      if (v122 != 1)
      {
        if (v122 != 2)
        {
          0xE400000000000000, v112, v113, v114, v115, v116, v117, v118;
          goto LABEL_30;
        }

        v123 = 0x80000001BE117610;
      }

      v124 = sub_1BE053B84();
      v123, v125, v126, v127, v128, v129, v130, v131;
      if (v124)
      {
        goto LABEL_30;
      }

      v120 = (v120 + 1) & v121;
    }

    while (((*(v110 + 56 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v165 = v110;
  sub_1BD2A9690(0, v120, isUniquelyReferenced_nonNull_native, v133, v134, v135, v136, v137);
  v110 = v165;
LABEL_30:
  v138 = v84;
  sub_1BD12F790(v162 & 1, v108, v110, v138, v106);

  v110, v139, v140, v141, v142, v143, v144, v145;
  v108, v146, v147, v148, v149, v150, v151, v152;

  v106, v153, v154, v155, v156, v157, v158, v159;
  return v164;
}

uint64_t sub_1BD9C1444()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9C1480(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD9C1638()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry);
    v4 = type metadata accessor for PaymentSetupProductManualEntryFlowSection();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod;
    *&v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod] = 0;
    *&v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v7 = &v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_identifier];
    *v7 = 0xD00000000000001DLL;
    v7[1] = 0x80000001BE12CB20;
    v8 = v2;
    *&v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context] = sub_1BE04BC14();
    *&v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product] = v8;
    v9 = *&v5[v6];
    *&v5[v6] = 0;
    v10 = v8;

    v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_allowSecondaryManualEntry] = v3;
    v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedTransferCard] = 0;
    v19.receiver = v5;
    v19.super_class = v4;
    v11 = objc_msgSendSuper2(&v19, sel_init);

    v12 = &off_1F3B9F388;
  }

  else
  {
    v13 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
    v14 = sub_1BE048964();
    v11 = sub_1BD87126C(v14, 1, 0);
    v12 = &off_1F3BC0AB0;
  }

  v15 = v1 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v1, &off_1F3BCA500, v11, v12, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD9C1820()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

char *sub_1BD9C18D0(void (*a1)(void, void, void, void), char *a2)
{
  v3 = v2;
  v226 = a2;
  v229 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v219 = &v205 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AE98, &unk_1BE10B320);
  v7 = *(v6 - 8);
  v217 = v6;
  v218 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v216 = &v205 - v8;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v227 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v212 = &v205 - v9;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D250, &unk_1BE0E8420);
  v214 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v213 = &v205 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D240, &unk_1BE0E8410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v231 = &v205 - v12;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AEA8, &qword_1BE10B330);
  v208 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v14 = &v205 - v13;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AEB0, &qword_1BE10B338);
  v211 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v210 = &v205 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v205 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AE90, &qword_1BE10B318);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v205 - v22;
  v24 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource__messages;
  v25 = MEMORY[0x1E69E7CC0];
  v233 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD10, &qword_1BE10AF20);
  sub_1BE04D874();
  (*(v21 + 32))(&v3[v24], v23, v20);
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_localMessages] = v25;
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_engagementMessages] = v25;
  v26 = MEMORY[0x1E69E7CD0];
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_engagementMessagePendingDismissalIds] = MEMORY[0x1E69E7CD0];
  v27 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateLocalMessagePublisher;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AEB8, &unk_1BE10B340);
  swift_allocObject();
  *&v3[v27] = sub_1BE04D834();
  v29 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateEngagementMessagePublisher;
  v223 = v28;
  swift_allocObject();
  *&v3[v29] = sub_1BE04D834();
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_cancellables] = v26;
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_iconSize] = vdupq_n_s64(0x4046800000000000uLL);
  v30 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_transactionProvider;
  *&v3[v30] = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v31 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountService;
  *&v3[v31] = [objc_opt_self() sharedInstance];
  v32 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_discoveryService;
  *&v3[v32] = [objc_opt_self() sharedInstance];
  v33 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet];
  *v33 = 0;
  v33[1] = 0;
  v34 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource__presentContactSupport;
  LOBYTE(v233) = 0;
  sub_1BE04D874();
  v35 = *(v17 + 32);
  v221 = v16;
  v35(&v3[v34], v19, v16);
  v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_rdfiTransferCompleted] = 0;
  v36 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration];
  *v36 = 0;
  v36[1] = 0;
  v37 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAccountStatus];
  strcpy(&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAccountStatus], "accountStatus");
  *(v37 + 7) = -4864;
  v38 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierFCCStepUpCompletion];
  *v38 = 0xD000000000000013;
  v38[1] = 0x80000001BE146380;
  v39 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAccountAPYUpdate];
  *v39 = 0xD000000000000010;
  v39[1] = 0x80000001BE1463A0;
  v40 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierSavingsInterest];
  *v40 = 0x4973676E69766173;
  v40[1] = 0xEF7473657265746ELL;
  v41 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAddBeneficiary];
  strcpy(&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAddBeneficiary], "addBeneficiary");
  v41[15] = -18;
  v42 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAccountNegativeBalance];
  *v42 = 0xD000000000000016;
  v42[1] = 0x80000001BE1463C0;
  v43 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierTransferCash];
  *v43 = 0xD000000000000013;
  v43[1] = 0x80000001BE1463E0;
  v44 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierHold];
  strcpy(&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierHold], "savingsHold-");
  v44[13] = 0;
  *(v44 + 7) = -5120;
  v45 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierCompleteBankVerification];
  *v45 = 0xD000000000000019;
  v45[1] = 0x80000001BE146400;
  v46 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierExpiredBankVerification];
  *v46 = 0xD000000000000018;
  v46[1] = 0x80000001BE146420;
  v47 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierTriggerBankVerification];
  *v47 = 0xD000000000000017;
  v47[1] = 0x80000001BE146440;
  v48 = v229;
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel] = v229;
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_fccStepUpModel] = v226;
  v234.receiver = v3;
  v234.super_class = ObjectType;
  v49 = v48;
  sub_1BE048964();
  v50 = objc_msgSendSuper2(&v234, sel_init);
  v51 = *&v50[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_discoveryService];
  if (v51)
  {
    [v51 addObserver_];
  }

  v52 = *&v50[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_transactionProvider];
  if (v52)
  {
    [v52 addDelegate_];
  }

  v53 = *&v50[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountService];
  if (v53)
  {
    [v53 registerObserver_];
  }

  v207 = v49;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD30, &qword_1BE0C01E0);
  sub_1BE04D884();
  swift_endAccess();
  v224 = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v54 = sub_1BE052D54();
  v233 = v54;
  v228 = sub_1BE052D14();
  v55 = *(v228 - 8);
  v229 = *(v55 + 56);
  ObjectType = (v55 + 56);
  v56 = v231;
  v229(v231, 1, 1, v228);
  v206 = MEMORY[0x1E695C068];
  sub_1BD0DE4F4(&unk_1EBD5AEC8, &qword_1EBD5AEA8, &qword_1BE10B330, MEMORY[0x1E695C068]);
  v57 = sub_1BD9D1640();
  v58 = v210;
  v59 = v209;
  v225 = v57;
  sub_1BE04D924();
  sub_1BD0DE53C(v56, &unk_1EBD4D240, &unk_1BE0E8410);

  (*(v208 + 8))(v14, v59);
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = MEMORY[0x1E695BE98];
  v209 = MEMORY[0x1E695BE98];
  sub_1BD0DE4F4(&qword_1EBD5AED8, &qword_1EBD5AEB0, &qword_1BE10B338, MEMORY[0x1E695BE98]);
  v62 = v50;
  v63 = v220;
  v64 = sub_1BE04D954();
  v60, v65, v66, v67, v68, v69, v70, v71;
  (*(v211 + 8))(v58, v63);
  v220 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_cancellables;
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();
  v64, v72, v73, v74, v75, v76, v77, v78;
  swift_beginAccess();
  v79 = v212;
  sub_1BE04D884();
  swift_endAccess();
  v80 = sub_1BE052D54();
  v233 = v80;
  v229(v56, 1, 1, v228);
  v211 = sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600, &qword_1BE0D4A30, v206);
  v81 = v213;
  v82 = v222;
  sub_1BE04D924();
  sub_1BD0DE53C(v56, &unk_1EBD4D240, &unk_1BE0E8410);

  v83 = *(v227 + 8);
  v227 += 8;
  v210 = v83;
  (v83)(v79, v82);
  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v208 = sub_1BD0DE4F4(&qword_1EBD4D258, &qword_1EBD4D250, &unk_1BE0E8420, v61);
  v85 = v215;
  v86 = sub_1BE04D954();
  v84, v87, v88, v89, v90, v91, v92, v93;
  v214 = *(v214 + 8);
  (v214)(v81, v85);
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();
  v86, v94, v95, v96, v97, v98, v99, v100;
  swift_beginAccess();
  sub_1BE04D884();
  swift_endAccess();
  v101 = sub_1BE052D54();
  v233 = v101;
  v102 = v231;
  v229(v231, 1, 1, v228);
  v103 = v222;
  sub_1BE04D924();
  sub_1BD0DE53C(v102, &unk_1EBD4D240, &unk_1BE0E8410);

  (v210)(v79, v103);
  v104 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = sub_1BE04D954();
  v104, v106, v107, v108, v109, v110, v111, v112;
  (v214)(v81, v85);
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();
  v105, v113, v114, v115, v116, v117, v118, v119;
  v233 = *&v62[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateLocalMessagePublisher];
  v120 = v233;
  sub_1BE048964();
  v121 = sub_1BE052D54();
  v232 = v121;
  v122 = v231;
  v229(v231, 1, 1, v228);
  v227 = sub_1BD0DE4F4(&qword_1EBD5AEE0, &unk_1EBD5AEB8, &unk_1BE10B340, MEMORY[0x1E695BF88]);
  v123 = v216;
  sub_1BE04D924();
  sub_1BD0DE53C(v122, &unk_1EBD4D240, &unk_1BE0E8410);
  v120, v124, v125, v126, v127, v128, v129, v130;

  v131 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v222 = sub_1BD0DE4F4(&qword_1EBD5AEE8, &unk_1EBD5AE98, &unk_1BE10B320, v209);
  v132 = v217;
  v133 = sub_1BE04D954();
  v131, v134, v135, v136, v137, v138, v139, v140;
  v221 = *(v218 + 8);
  v221(v123, v132);
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();
  v133, v141, v142, v143, v144, v145, v146, v147;
  v233 = *&v62[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateEngagementMessagePublisher];
  v148 = v233;
  sub_1BE048964();
  v149 = sub_1BE052D54();
  v232 = v149;
  v150 = v231;
  v229(v231, 1, 1, v228);
  sub_1BE04D924();
  sub_1BD0DE53C(v150, &unk_1EBD4D240, &unk_1BE0E8410);
  v148, v151, v152, v153, v154, v155, v156, v157;

  v158 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v159 = sub_1BE04D954();
  v158, v160, v161, v162, v163, v164, v165, v166;
  v221(v123, v132);
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();
  v159, v167, v168, v169, v170, v171, v172, v173;
  v174 = sub_1BE0528D4();
  v175 = *(*(v174 - 8) + 56);
  v176 = v219;
  v175(v219, 1, 1, v174);
  v177 = swift_allocObject();
  v177[2] = 0;
  v177[3] = 0;
  v177[4] = v62;
  v178 = v62;
  v179 = sub_1BD122C00(0, 0, v176, &unk_1BE10B350, v177);
  v179, v180, v181, v182, v183, v184, v185, v186;
  v175(v176, 1, 1, v174);
  v187 = swift_allocObject();
  v187[2] = 0;
  v187[3] = 0;
  v187[4] = v178;
  v188 = v178;
  v189 = sub_1BD122C00(0, 0, v176, &unk_1BE10B358, v187);
  v189, v190, v191, v192, v193, v194, v195, v196;

  v226, v197, v198, v199, v200, v201, v202, v203;
  return v188;
}

void sub_1BD9C2BA0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1BE0528D4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v9 = sub_1BD122C00(0, 0, v4, &unk_1BE10B370, v8);
    v9, v10, v11, v12, v13, v14, v15, v16;
  }
}

void sub_1BD9C2CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1BE0528D4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v12 = sub_1BD122C00(0, 0, v7, a4, v11);
    v12, v13, v14, v15, v16, v17, v18, v19;
  }
}

uint64_t sub_1BD9C2DDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_localMessages);
    *(result + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_localMessages) = v2;
    sub_1BE048C84();
    v4, v5, v6, v7, v8, v9, v10, v11;
    sub_1BE048C84();
    v12 = sub_1BE048C84();
    sub_1BDA7B020(v12);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD9C2EB4(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v69 = MEMORY[0x1E69E7CC0];
    if (v2 >> 62)
    {
      goto LABEL_32;
    }

    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v67 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_engagementMessagePendingDismissalIds;
    swift_beginAccess();
    if (v5)
    {
      v13 = 0;
      v14 = v2 & 0xC000000000000001;
      v15 = v2 & 0xFFFFFFFFFFFFFF8;
      v64 = v2;
      v65 = v2 & 0xFFFFFFFFFFFFFF8;
      v68 = v2 + 32;
      v66 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v14)
        {
          v16 = MEMORY[0x1BFB40900](v13, v64);
        }

        else
        {
          if (v13 >= *(v15 + 16))
          {
            goto LABEL_31;
          }

          v16 = *(v68 + 8 * v13);
        }

        v17 = v16;
        if (__OFADD__(v13++, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v5 = sub_1BE053704();
          goto LABEL_4;
        }

        v19 = [v16 identifier];
        if (v19)
        {
          v20 = v19;
          v21 = sub_1BE052434();
          v23 = v22;

          v31 = *(v4 + v67);
          if (*(v31 + 16))
          {
            v32 = v5;
            v33 = v4;
            sub_1BE053D04();
            sub_1BE048C84();
            sub_1BE052524();
            v34 = sub_1BE053D64();
            v2 = v31 + 56;
            v42 = -1 << *(v31 + 32);
            v43 = v34 & ~v42;
            if ((*(v31 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
            {
              v44 = ~v42;
              while (1)
              {
                v45 = (*(v31 + 48) + 16 * v43);
                v35 = v45[1];
                v46 = *v45 == v21 && v35 == v23;
                if (v46 || (sub_1BE053B84() & 1) != 0)
                {
                  break;
                }

                v43 = (v43 + 1) & v44;
                if (((*(v2 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                {
                  goto LABEL_23;
                }
              }

              v23, v35, v36, v37, v38, v39, v40, v41;
              v31, v54, v55, v56, v57, v58, v59, v60;

              v4 = v33;
              v5 = v32;
              v15 = v65;
              v14 = v66;
              goto LABEL_8;
            }

LABEL_23:
            v23, v35, v36, v37, v38, v39, v40, v41;
            v31, v47, v48, v49, v50, v51, v52, v53;
            v4 = v33;
            v5 = v32;
            v15 = v65;
            v14 = v66;
          }

          else
          {
            v23, v24, v25, v26, v27, v28, v29, v30;
          }
        }

        v2 = &v69;
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
LABEL_8:
        if (v13 == v5)
        {
          v61 = v69;
          goto LABEL_28;
        }
      }
    }

    v61 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v62 = *(v4 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_engagementMessages);
    *(v4 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_engagementMessages) = v61;
    v62, v6, v7, v8, v9, v10, v11, v12;
    sub_1BE048C84();
    v63 = sub_1BE048C84();
    sub_1BDA7B020(v63);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

id sub_1BD9C31C4()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_discoveryService];
  if (v2)
  {
    [v2 removeObserver_];
  }

  v3 = *&v0[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_transactionProvider];
  if (v3)
  {
    [v3 removeDelegate_];
  }

  v4 = *&v0[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountService];
  if (v4)
  {
    [v4 unregisterObserver_];
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1BD9C3530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = MEMORY[0x1E69E7CC0];
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1BD9C35D0;

  return sub_1BD9C401C();
}

uint64_t sub_1BD9C35D0(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9C36D0, 0, 0);
}

uint64_t sub_1BD9C36D0(__n128 a1)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    sub_1BDA7B020(v2);
  }

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1BD9C3770;

  return sub_1BD9C4B38();
}

uint64_t sub_1BD9C3770(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1BD9C3870, 0, 0);
}

uint64_t sub_1BD9C3870()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  sub_1BD9C5D1C();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  v6 = v0[8];
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  sub_1BD9C6474();
  if (v8)
  {
    v9 = v8;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  if (v4)
  {
    v11 = v0[8];
    v10 = v0[9];
    v12 = *(v0[4] + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateLocalMessagePublisher);
    v13 = v0[2];
    v0[3] = v13;
    sub_1BE048964();
    sub_1BE04D824();
    v12, v14, v15, v16, v17, v18, v19, v20;
    v13, v21, v22, v23, v24, v25, v26, v27;

    v28 = v0[1];

    return v28();
  }

  else
  {
    v30 = swift_task_alloc();
    v0[10] = v30;
    *v30 = v0;
    v30[1] = sub_1BD9C3B28;

    return sub_1BD9C6B5C();
  }
}

uint64_t sub_1BD9C3B28(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9C3C28, 0, 0);
}

uint64_t sub_1BD9C3C28(__n128 a1)
{
  v2 = v1[11];
  if (v2)
  {
    sub_1BDA7B020(v2);
  }

  sub_1BD9C7E58();
  if (v3)
  {
    v4 = v3;
    MEMORY[0x1BFB3F7A0]();
    if (*((v1[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_1BD9C3D38;

  return sub_1BD9C8680();
}

uint64_t sub_1BD9C3D38(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9C3E38, 0, 0);
}

uint64_t sub_1BD9C3E38()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  sub_1BD9CA53C();
  if (v3)
  {
    v4 = v3;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  sub_1BD9CAAF8();
  if (v5)
  {
    v6 = v5;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  v8 = v0[8];
  v7 = v0[9];
  v9 = *(v0[4] + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateLocalMessagePublisher);
  v10 = v0[2];
  v0[3] = v10;
  sub_1BE048964();
  sub_1BE04D824();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;

  v25 = v0[1];

  return v25();
}

uint64_t sub_1BD9C401C()
{
  v1[20] = v0;
  v2 = sub_1BE04BD74();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9C4144, 0, 0);
}

uint64_t sub_1BD9C4144()
{
  v1 = v0[20];
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountService);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
    KeyPath = swift_getKeyPath();
    v5 = swift_getKeyPath();
    v6 = v3;
    sub_1BE04D8B4(v0 + 19);

    v5, v7, v8, v9, v10, v11, v12, v13;
    KeyPath, v14, v15, v16, v17, v18, v19, v20;
    v21 = v0[19];
    v22 = [v21 accountIdentifier];
    v0[28] = v22;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD9C435C;
    v23 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AE68, &unk_1BE10B2D8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD9CCB8C;
    v0[13] = &block_descriptor_196_0;
    v0[14] = v23;
    [v2 accountHoldsForAccountIdentifier:v22 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v24 = v0[1];

    return v24(0);
  }
}

uint64_t sub_1BD9C435C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1BD9C4AA0;
  }

  else
  {
    v2 = sub_1BD9C446C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1BD9C446C()
{
  v1 = *(v0 + 144);

  if (!v1)
  {
    goto LABEL_29;
  }

  v9 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v105 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v105)
    {
      v111 = MEMORY[0x1E69E7CC0];
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_25:
  if (sub_1BE053704() <= 0)
  {
LABEL_28:
    v1, v2, v3, v4, v5, v6, v7, v8;
LABEL_29:
    v95 = 0;
    goto LABEL_30;
  }

  v95 = MEMORY[0x1E69E7CC0];
  v111 = MEMORY[0x1E69E7CC0];
  v105 = sub_1BE053704();
  if (!v105)
  {
LABEL_22:
    v1, v88, v89, v90, v91, v92, v93, v94;
LABEL_30:

    v96 = *(v0 + 8);

    v96(v95);
    return;
  }

LABEL_5:
  v10 = 0;
  v103 = *(v0 + 160) + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierHold;
  v104 = v1 & 0xC000000000000001;
  v11 = *(v0 + 176);
  v97 = (*(v0 + 208) + 8);
  v98 = v9;
  v99 = v1;
  v102 = (v11 + 104);
  v100 = (v11 + 8);
  v101 = *MEMORY[0x1E69B80E0];
  while (1)
  {
    if (v104)
    {
      v12 = MEMORY[0x1BFB40900](v10, v1);
    }

    else
    {
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_24;
      }

      v12 = *(v1 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v108 = v10 + 1;
    v14 = [objc_allocWithZone(PKDashboardPassMessage) init];
    v15 = *(v103 + 8);
    v110 = v13;
    v16 = [v13 identifier];
    v17 = sub_1BE052434();
    v19 = v18;

    v20 = v14;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v17, v19);
    v19, v21, v22, v23, v24, v25, v26, v27;
    v28 = sub_1BE052404();
    v15, v29, v30, v31, v32, v33, v34, v35;
    [v14 setIdentifier_];

    v36 = PKPassKitUIBundle();
    if (!v36)
    {
      break;
    }

    v37 = v36;
    v38 = sub_1BE052404();
    v39 = sub_1BE052404();
    v40 = [v37 URLForResource:v38 withExtension:v39];

    if (v40)
    {
      v41 = *(v0 + 216);
      v42 = *(v0 + 200);
      sub_1BE04A9F4();

      v43 = sub_1BE04A9C4();
      (*v97)(v41, v42);
    }

    else
    {
      v43 = 0;
    }

    v44 = PKUIScreenScale();
    v45 = PKUIImageFromPDF(v43, 45.0, 45.0, v44);

    if (!v45)
    {
      goto LABEL_36;
    }

    v46 = *(v0 + 192);
    v47 = *(v0 + 168);
    [v14 setImage_];

    v48 = *v102;
    (*v102)(v46, v101, v47);
    v49 = PKPassKitBundle();
    v109 = v20;
    if (!v49)
    {
      goto LABEL_34;
    }

    v50 = v49;
    v51 = *(v0 + 192);
    v107 = *(v0 + 184);
    v52 = *(v0 + 168);
    sub_1BE04B6F4();
    v54 = v53;

    v106 = *v100;
    (*v100)(v51, v52);
    v55 = sub_1BE052404();
    v54, v56, v57, v58, v59, v60, v61, v62;
    [v20 setTitle_];

    v48(v107, v101, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1BE0B69E0;
    v64 = [v110 currencyAmount];
    v65 = [v64 formattedStringValue];

    if (!v65)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      break;
    }

    v66 = *(v0 + 184);
    v67 = *(v0 + 168);
    v68 = sub_1BE052434();
    v70 = v69;

    *(v63 + 56) = MEMORY[0x1E69E6158];
    *(v63 + 64) = sub_1BD110550();
    *(v63 + 32) = v68;
    *(v63 + 40) = v70;
    sub_1BE04B714();
    v72 = v71;
    v63, v71, v73, v74, v75, v76, v77, v78;
    v106(v66, v67);
    v79 = sub_1BE052404();
    v72, v80, v81, v82, v83, v84, v85, v86;
    [v109 setMessage_];

    v87 = v109;
    MEMORY[0x1BFB3F7A0]();
    if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    ++v10;
    v9 = v98;
    v1 = v99;
    if (v108 == v105)
    {
      v95 = v111;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1BD9C4AA0(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[29];
  swift_willThrow();

  v4 = v1[1];

  return v4(0);
}

uint64_t sub_1BD9C4B38()
{
  v1[9] = v0;
  v2 = sub_1BE04BD74();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9C4C9C, 0, 0);
}

void sub_1BD9C4C9C()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = v1;
  sub_1BE04D8B4((v0 + 64));

  v3, v5, v6, v7, v8, v9, v10, v11;
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = *(v0 + 64);
  *(v0 + 176) = v19;
  v20 = [v19 savingsDetails];
  if (!v20)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v20;
  v22 = [v20 fccStepUpRequired];

  if (!v22 || (v23 = *(v0 + 72), v24 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_fccStepUpModel, v25 = *(v23 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_fccStepUpModel), v26 = swift_getKeyPath(), v27 = swift_getKeyPath(), sub_1BE048964(), sub_1BE04D8B4((v0 + 256)), v25, v28, v29, v30, v31, v32, v33, v34, v27, v35, v36, v37, v38, v39, v40, v41, v26, v42, v43, v44, v45, v46, v47, v48, (*(v0 + 256) & 1) != 0) || [v19 state] == 4 || (v49 = objc_msgSend(v19, sel_transactionSourceIdentifier)) == 0)
  {

    v53 = 0;
LABEL_13:

    v101 = *(v0 + 8);

    v101(0, v53);
    return;
  }

  v50 = v49;
  v163 = sub_1BE052434();
  v52 = v51;

  *(v0 + 184) = v52;
  v53 = [objc_allocWithZone(PKDashboardPassMessage) init];
  *(v0 + 192) = v53;
  v54 = sub_1BE052404();
  [v53 setIdentifier_];

  [v53 setActionOnDismiss_];
  v55 = *(v23 + v24);
  v56 = swift_getKeyPath();
  v57 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4((v0 + 257));
  v55, v58, v59, v60, v61, v62, v63, v64;
  v57, v65, v66, v67, v68, v69, v70, v71;
  v56, v72, v73, v74, v75, v76, v77, v78;
  [v53 setShowSpinner_];
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = sub_1BD9D1508;
  *(v0 + 56) = v79;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1BD198918;
  *(v0 + 40) = &block_descriptor_178_2;
  v80 = _Block_copy((v0 + 16));
  *(v0 + 56), v81, v82, v83, v84, v85, v86, v87;
  [v53 setActionOnButtonPress_];
  _Block_release(v80);
  v88 = [v19 savingsDetails];
  if (!v88)
  {
    goto LABEL_27;
  }

  v89 = v88;
  v90 = [v88 fccStepUpDetails];

  if (v90)
  {
    if ([v90 thresholdExceeded])
    {
      v91 = v52;
      v92 = PKPassKitUIBundle();
      if (v92)
      {
        v93 = v92;
        v94 = sub_1BE052404();
        v95 = sub_1BE052404();
        v96 = [v93 URLForResource:v94 withExtension:v95];

        if (v96)
        {
          v97 = *(v0 + 168);
          v99 = *(v0 + 144);
          v98 = *(v0 + 152);
          sub_1BE04A9F4();

          v100 = sub_1BE04A9C4();
          (*(v98 + 8))(v97, v99);
        }

        else
        {
          v100 = 0;
        }

        v103 = PKUIScreenScale();
        v104 = PKUIImageFromPDF(v100, 45.0, 45.0, v103);

        if (v104)
        {
          v159 = v90;
          v112 = *(v0 + 136);
          v113 = *(v0 + 88);
          v91, v105, v106, v107, v108, v109, v110, v111;
          [v53 setImage_];

          v162 = *MEMORY[0x1E69B80E0];
          v161 = *(v113 + 104);
          v161(v112);
          v114 = PKPassKitBundle();
          if (v114)
          {
            v115 = v114;
            v117 = *(v0 + 128);
            v116 = *(v0 + 136);
            v119 = *(v0 + 80);
            v118 = *(v0 + 88);
            sub_1BE04B6F4();
            v121 = v120;

            v160 = *(v118 + 8);
            v160(v116, v119);
            v122 = sub_1BE052404();
            v121, v123, v124, v125, v126, v127, v128, v129;
            [v53 setTitle_];

            (v161)(v117, v162, v119);
            v130 = PKPassKitBundle();
            if (v130)
            {
              v131 = v130;
              v133 = *(v0 + 120);
              v132 = *(v0 + 128);
              v134 = *(v0 + 80);
              sub_1BE04B6F4();
              v136 = v135;

              v160(v132, v134);
              v137 = sub_1BE052404();
              v136, v138, v139, v140, v141, v142, v143, v144;
              [v53 setMessage_];

              (v161)(v133, v162, v134);
              v145 = PKPassKitBundle();
              if (v145)
              {
                v146 = v145;
                v147 = *(v0 + 120);
                v148 = *(v0 + 80);
                sub_1BE04B6F4();
                v150 = v149;

                v160(v147, v148);
                v151 = sub_1BE052404();
                v150, v152, v153, v154, v155, v156, v157, v158;
                [v53 setButtonTitle_];

                goto LABEL_13;
              }

LABEL_32:
              __break(1u);
              return;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  v102 = swift_task_alloc();
  *(v0 + 200) = v102;
  *v102 = v0;
  v102[1] = sub_1BD9C549C;

  sub_1BD9CCBA0(v163, v52);
}

uint64_t sub_1BD9C549C(char a1)
{
  *(*v1 + 258) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9C559C, 0, 0);
}

uint64_t sub_1BD9C559C()
{
  if (*(v0 + 258) == 1)
  {
    *(v0 + 208) = objc_opt_self();
    *(v0 + 216) = sub_1BE0528A4();
    *(v0 + 224) = sub_1BE052894();
    v2 = sub_1BE052844();

    return MEMORY[0x1EEE6DFA0](sub_1BD9C5710, v2, v1);
  }

  else
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 176);

    v3, v5, v6, v7, v8, v9, v10, v11;

    v12 = *(v0 + 8);

    return v12(0, 0);
  }
}

uint64_t sub_1BD9C5710(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 208);
  *(v8 + 224), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 232) = [v9 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1BD9C5798, 0, 0);
}

uint64_t sub_1BD9C5798(uint64_t a1)
{
  *(v1 + 240) = sub_1BE052894();
  v3 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD9C5824, v3, v2);
}

uint64_t sub_1BD9C5824(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 232);
  *(v8 + 240), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 248) = [v9 userInterfaceLayoutDirection];

  return MEMORY[0x1EEE6DFA0](sub_1BD9C58A4, 0, 0);
}

void sub_1BD9C58A4(uint64_t a1)
{
  if (*(v1 + 248))
  {
    v2 = 0x80000001BE146220;
  }

  else
  {
    v2 = 0xED00006E6F634974;
  }

  v3 = PKPassKitUIBundle();
  if (!v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  v5 = sub_1BE052404();
  v6 = sub_1BE052404();
  v7 = [v4 URLForResource:v5 withExtension:v6];

  if (v7)
  {
    v9 = *(v1 + 152);
    v8 = *(v1 + 160);
    v10 = *(v1 + 144);
    sub_1BE04A9F4();

    v11 = sub_1BE04A9C4();
    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = PKUIScreenScale();
  v13 = PKUIImageFromPDF(v11, 45.0, 45.0, v12);

  if (!v13)
  {
    goto LABEL_16;
  }

  v21 = *(v1 + 192);
  v22 = *(v1 + 112);
  v23 = *(v1 + 88);
  *(v1 + 184), v14, v15, v16, v17, v18, v19, v20;
  v2, v24, v25, v26, v27, v28, v29, v30;
  [v21 setImage_];

  v83 = *MEMORY[0x1E69B80E0];
  v82 = *(v23 + 104);
  v82(v22);
  v31 = PKPassKitBundle();
  if (!v31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = v31;
  v33 = *(v1 + 192);
  v35 = *(v1 + 104);
  v34 = *(v1 + 112);
  v37 = *(v1 + 80);
  v36 = *(v1 + 88);
  sub_1BE04B6F4();
  v39 = v38;

  v81 = *(v36 + 8);
  v81(v34, v37);
  v40 = sub_1BE052404();
  v39, v41, v42, v43, v44, v45, v46, v47;
  [v33 setTitle_];

  (v82)(v35, v83, v37);
  v48 = PKPassKitBundle();
  if (!v48)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v49 = v48;
  v50 = *(v1 + 192);
  v52 = *(v1 + 96);
  v51 = *(v1 + 104);
  v53 = *(v1 + 80);
  sub_1BE04B6F4();
  v55 = v54;

  v81(v51, v53);
  v56 = sub_1BE052404();
  v55, v57, v58, v59, v60, v61, v62, v63;
  [v50 setMessage_];

  (v82)(v52, v83, v53);
  v64 = PKPassKitBundle();
  if (!v64)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v65 = v64;
  v66 = *(v1 + 192);
  v67 = *(v1 + 176);
  v68 = *(v1 + 96);
  v69 = *(v1 + 80);
  sub_1BE04B6F4();
  v71 = v70;

  v81(v68, v69);
  v72 = sub_1BE052404();
  v71, v73, v74, v75, v76, v77, v78, v79;
  [v66 setButtonTitle_];

  v80 = *(v1 + 8);

  v80(v66, 0);
}

void sub_1BD9C5D1C()
{
  v133 = sub_1BE04BD74();
  v1 = *(v133 - 1);
  MEMORY[0x1EEE9AC00](v133);
  v131 = v125 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v132 = v125 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v125 - v6;
  v8 = sub_1BE04AA64();
  v130 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v11;
  sub_1BE04D8B4(&aBlock);
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v13, v22, v23, v24, v25, v26, v27, v28;

  v29 = aBlock;
  v30 = [objc_allocWithZone(PKDashboardPassMessage) init];
  v31 = [v29 state];
  if (v31 == 3)
  {
    v127 = v29;
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v138 = sub_1BD9D14F8;
    v139 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v135 = 1107296256;
    v136 = sub_1BD198918;
    v137 = &block_descriptor_167_0;
    v34 = _Block_copy(&aBlock);
    v139, v48, v49, v50, v51, v52, v53, v54;
    v45 = "DASHBOARD_LOCKED_TITLE";
    v46 = 0xD000000000000020;
    v128 = 0xD000000000000016;
    v129 = "VE_BALANCE_MESSAGE";
  }

  else
  {
    if (v31 != 2)
    {

      return;
    }

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v29;
    v138 = sub_1BD9D1500;
    v139 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v135 = 1107296256;
    v136 = sub_1BD198918;
    v137 = &block_descriptor_174_0;
    v34 = _Block_copy(&aBlock);
    v35 = v29;
    v36 = v139;
    v127 = v35;
    v37 = v35;
    v36, v38, v39, v40, v41, v42, v43, v44;
    v128 = 0xD00000000000001ALL;
    v129 = "BankConnectAlertFlowItem";
    v45 = "DASHBOARD_RESTRICTED_TITLE";
    v46 = 0xD000000000000024;
  }

  [v30 setActionOnButtonPress_];
  _Block_release(v34);
  v55 = sub_1BE052404();
  [v30 setIdentifier_];

  v56 = PKPassKitUIBundle();
  if (!v56)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v57 = v56;
  v125[1] = v46;
  v126 = v45;
  v58 = sub_1BE052404();
  v59 = sub_1BE052404();
  v60 = [v57 URLForResource:v58 withExtension:v59];

  if (v60)
  {
    sub_1BE04A9F4();

    v61 = sub_1BE04A9C4();
    (*(v130 + 8))(v10, v8);
  }

  else
  {
    v61 = 0;
  }

  v62 = v133;
  v63 = PKUIScreenScale();
  v64 = PKUIImageFromPDF(v61, 45.0, 45.0, v63);

  if (!v64)
  {
    goto LABEL_16;
  }

  [v30 setImage_];

  v65 = *MEMORY[0x1E69B80E0];
  v133 = *(v1 + 104);
  (v133)(v7, v65, v62);
  v66 = PKPassKitBundle();
  if (!v66)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v67 = v66;
  v68 = v129;
  sub_1BE04B6F4();
  v70 = v69;
  (v68 | 0x8000000000000000), v69, v71, v72, v73, v74, v75, v76;

  v77 = *(v1 + 8);
  v77(v7, v62);
  v78 = sub_1BE052404();
  v70, v79, v80, v81, v82, v83, v84, v85;
  [v30 setTitle_];

  v86 = v132;
  LODWORD(v130) = v65;
  (v133)(v132, v65, v62);
  v87 = PKPassKitBundle();
  if (!v87)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v88 = v87;
  v89 = v126;
  sub_1BE04B6F4();
  v91 = v90;
  (v89 | 0x8000000000000000), v90, v92, v93, v94, v95, v96, v97;

  v77(v86, v62);
  v98 = sub_1BE052404();
  v91, v99, v100, v101, v102, v103, v104, v105;
  [v30 setMessage_];

  v106 = v131;
  (v133)(v131, v130, v62);
  v107 = PKPassKitBundle();
  if (v107)
  {
    v108 = v107;
    sub_1BE04B6F4();
    v110 = v109;
    0x80000001BE11C2F0, v109, v111, v112, v113, v114, v115, v116;

    v77(v106, v62);
    v117 = sub_1BE052404();
    v110, v118, v119, v120, v121, v122, v123, v124;
    [v30 setButtonTitle_];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1BD9C6474()
{
  v1 = sub_1BE04AA64();
  v118 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v113[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1BE04BD74();
  v120 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v113[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v113[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v113[-v10];
  v12 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel;
  v13 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = v13;
  sub_1BE04D8B4(aBlock);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v15, v24, v25, v26, v27, v28, v29, v30;

  v31 = aBlock[0];
  if (aBlock[0])
  {
    v32 = [aBlock[0] currentBalance];

    if (v32)
    {
      if (![v32 pk_isNegativeNumber])
      {

        return;
      }

      v117 = v32;
      v33 = *(v0 + v12);
      v34 = swift_getKeyPath();
      v35 = swift_getKeyPath();
      v36 = v33;
      sub_1BE04D8B4(aBlock);
      v34, v37, v38, v39, v40, v41, v42, v43;
      v35, v44, v45, v46, v47, v48, v49, v50;

      v51 = aBlock[0];
      LODWORD(v34) = [aBlock[0] supportsOneTimeDeposit];

      if (v34)
      {
        v52 = [objc_allocWithZone(PKDashboardPassMessage) init];
        v53 = sub_1BE052404();
        [v52 setIdentifier_];

        v54 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1BD9D14F0;
        v122 = v54;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD198918;
        aBlock[3] = &block_descriptor_158_0;
        v55 = _Block_copy(aBlock);
        v122, v56, v57, v58, v59, v60, v61, v62;
        [v52 setActionOnButtonPress_];
        _Block_release(v55);
        v63 = v120;
        v64 = *(v120 + 104);
        v114 = *MEMORY[0x1E69B80E0];
        v115 = v120 + 104;
        v116 = v64;
        v64(v11);
        v65 = PKPassKitBundle();
        if (v65)
        {
          v66 = v65;
          sub_1BE04B6F4();
          v68 = v67;

          v120 = *(v63 + 8);
          (v120)(v11, v4);
          v69 = sub_1BE052404();
          v68, v70, v71, v72, v73, v74, v75, v76;
          [v52 setButtonTitle_];

          v77 = PKPassKitUIBundle();
          if (v77)
          {
            v78 = v77;
            v79 = sub_1BE052404();
            v80 = sub_1BE052404();
            v81 = [v78 URLForResource:v79 withExtension:v80];

            if (v81)
            {
              sub_1BE04A9F4();

              v82 = sub_1BE04A9C4();
              (*(v118 + 8))(v3, v1);
            }

            else
            {
              v82 = 0;
            }

            v83 = v116;
            v84 = v114;
            v85 = PKUIScreenScale();
            v86 = PKUIImageFromPDF(v82, 45.0, 45.0, v85);

            if (v86)
            {
              [v52 setImage_];

              v83(v8, v84, v4);
              v87 = PKPassKitBundle();
              if (v87)
              {
                v88 = v87;
                sub_1BE04B6F4();
                v90 = v89;

                v91 = v120;
                (v120)(v8, v4);
                v92 = sub_1BE052404();
                v90, v93, v94, v95, v96, v97, v98, v99;
                [v52 setTitle_];

                v100 = v119;
                v116(v119, v84, v4);
                v101 = PKPassKitBundle();
                if (v101)
                {
                  v102 = v101;
                  sub_1BE04B6F4();
                  v104 = v103;

                  v91(v100, v4);
                  v105 = sub_1BE052404();
                  v104, v106, v107, v108, v109, v110, v111, v112;
                  [v52 setMessage_];

                  return;
                }

                goto LABEL_21;
              }

LABEL_20:
              __break(1u);
LABEL_21:
              __break(1u);
              return;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_19;
      }
    }
  }
}

uint64_t sub_1BD9C6B5C()
{
  v1[24] = v0;
  v2 = sub_1BE04AF64();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9C6C4C, 0, 0);
}

uint64_t sub_1BD9C6C4C()
{
  v1 = *(v0[24] + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = v1;
  sub_1BE04D8B4(v0 + 20);

  v3, v5, v6, v7, v8, v9, v10, v11;
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = v0[20];
  v0[32] = v19;
  if ([v19 state] == 4 || (v20 = *(v0[24] + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountService)) == 0)
  {

    v23 = v0[1];

    return v23(0);
  }

  else
  {
    v21 = [v19 accountIdentifier];
    v0[33] = v21;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1BD9C6E8C;
    v22 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AE58, &qword_1BE10B258);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD9CD6B0;
    v0[13] = &block_descriptor_111_1;
    v0[14] = v22;
    [v20 paymentFundingSourcesForAccountIdentifier:v21 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1BD9C6E8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD9C6F6C, 0, 0);
}

void sub_1BD9C6F6C()
{
  v1 = v0[21];

  if (!v1)
  {

    v84 = 0;
    goto LABEL_121;
  }

  v196 = MEMORY[0x1E69E7CC0];
  v197 = MEMORY[0x1E69E7CC0];
  v198 = MEMORY[0x1E69E7CC0];
  v187 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v2 = (v1 & 0xFFFFFFFFFFFFFF8);
  if (v1 >> 62)
  {
    goto LABEL_128;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v194 = v2;
    v188 = v0;
    v195 = i;
    if (!i)
    {
      v184 = MEMORY[0x1E69E7CC0];
      v185 = MEMORY[0x1E69E7CC0];
LABEL_84:
      v85 = [v0[32] accountIdentifier];
      HasDismissedAppleCardBankVerificationMessage = PKSavingsHasDismissedAppleCardBankVerificationMessage();

      if ((HasDismissedAppleCardBankVerificationMessage & 1) != 0 || (v2 = [v0[32] accountIdentifier], v87 = PKFundingSourceIdsMigratedToSavings(), v2, !v87))
      {
LABEL_88:
        v98 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v88 = sub_1BE052744();

        if (i)
        {
          v96 = 0;
          v176 = v0 + 22;
          v193 = v1 & 0xC000000000000001;
          v182 = MEMORY[0x1E69E7CC0];
          v97 = v194;
          v174 = v88;
          while (1)
          {
            if (v193)
            {
              v99 = MEMORY[0x1BFB40900](v96, v1);
            }

            else
            {
              if (v96 >= v97[2])
              {
                goto LABEL_127;
              }

              v99 = *(v1 + 8 * v96 + 32);
            }

            v100 = v99;
            v101 = v96 + 1;
            if (__OFADD__(v96, 1))
            {
              goto LABEL_126;
            }

            v2 = v1;
            v102 = [v99 identifier];
            if (!v102)
            {
              goto LABEL_131;
            }

            v103 = v102;
            v104 = sub_1BE052434();
            v106 = v105;

            v0[18] = v104;
            v0[19] = v106;
            v107 = swift_task_alloc();
            *(v107 + 16) = v0 + 18;
            LOBYTE(v104) = sub_1BD2FF084(sub_1BD20DFC4, v107, v88);
            v106, v108, v109, v110, v111, v112, v113, v114;

            if ((v104 & 1) == 0)
            {
              break;
            }

            v115 = [v100 fundingDetails];
            if (!v115)
            {
              break;
            }

            v116 = v115;
            objc_opt_self();
            v117 = swift_dynamicCastObjCClass();
            v1 = v2;
            if (v117)
            {
              v118 = [v117 verificationDetails];
              if (!v118)
              {

                goto LABEL_90;
              }

              v119 = v118;
              if ([v118 status] != 1)
              {

                goto LABEL_90;
              }

              v120 = [v119 options];
              if (v120)
              {
                v121 = v120;
                sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
                v180 = sub_1BE052744();

                *v176 = v187;
                v122 = swift_task_alloc();
                *(v122 + 16) = v176;
                v178 = sub_1BD30114C(sub_1BD9D13E8, v122, v180);
                v180, v123, v124, v125, v126, v127, v128, v129;

                if ((v178 & 1) == 0)
                {

                  v1 = v2;
                  v88 = v174;
                  goto LABEL_90;
                }

                v183 = v100;
                MEMORY[0x1BFB3F7A0]();
                v88 = v174;
                if (*((v198 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v198 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1BE052774();
                }

                sub_1BE0527C4();

                v182 = v198;
              }

              else
              {
              }

              goto LABEL_107;
            }

LABEL_90:
            ++v96;
            v97 = v194;
            if (v101 == v195)
            {
              goto LABEL_114;
            }
          }

LABEL_107:
          v1 = v2;
          goto LABEL_90;
        }

        v182 = MEMORY[0x1E69E7CC0];
LABEL_114:
        v88, v89, v90, v91, v92, v93, v94, v95;
        v98 = v182;
      }

      v0 = v188;
      v1, v11, v12, v13, v14, v15, v16, v17;
      v199 = MEMORY[0x1E69E7CC0];
      sub_1BD9CD754(v184);
      v131 = v130;
      v184, v132, v133, v134, v135, v136, v137, v138;
      sub_1BDA7B020(v131);
      sub_1BD9CE160(v185);
      v140 = v139;
      v185, v141, v142, v143, v144, v145, v146, v147;
      sub_1BDA7B020(v140);
      sub_1BD9CEDDC(v98);
      v149 = v148;
      v98, v150, v151, v152, v153, v154, v155, v156;
      if (v149)
      {
        v157 = v149;
        MEMORY[0x1BFB3F7A0]();
        if (*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();

        v158 = v187;
        v0 = v188;
        v159 = v188[32];
      }

      else
      {
        v158 = v188[32];
        v159 = v187;
      }

      v84 = v199;
LABEL_121:

      v160 = v0[1];

      (v160)(v84);
      return;
    }

    v189 = 0;
    v4 = 0;
    v5 = v0[26];
    v6 = v1 & 0xC000000000000001;
    v192 = (v1 + 32);
    v177 = (v5 + 32);
    v179 = v0 + 23;
    v175 = (v5 + 8);
    v7 = &selRef_thumbnailWidth;
    v0 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
    v184 = MEMORY[0x1E69E7CC0];
    v185 = MEMORY[0x1E69E7CC0];
LABEL_10:
    if (v6)
    {
      v18 = MEMORY[0x1BFB40900](v4, v1);
    }

    else
    {
      if (v4 >= v2[2])
      {
        goto LABEL_125;
      }

      v18 = *&v192[8 * v4];
    }

    v10 = v18;
    if (!__OFADD__(v4++, 1))
    {
      break;
    }

    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    ;
  }

  if ([v18 v7[254]] != 1)
  {
    goto LABEL_9;
  }

  v20 = [v10 fundingDetails];
  if (!v20)
  {
LABEL_8:
    i = v195;
LABEL_9:

    if (v4 == i)
    {
      goto LABEL_81;
    }

    goto LABEL_10;
  }

  v9 = v20;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    v8 = v9;
    v9 = v10;
    v7 = &selRef_thumbnailWidth;
LABEL_7:

    v10 = v9;
    v2 = v194;
    goto LABEL_8;
  }

  v22 = v21;
  if ([v21 status] == 1)
  {

    v189 = 1;
    i = v195;
    v7 = &selRef_thumbnailWidth;
    if (v4 == v195)
    {
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if ([v22 &selRef_submitAnswer_] != 2)
  {
    v8 = v10;
    v7 = &selRef_thumbnailWidth;
    goto LABEL_7;
  }

  v23 = [v22 verificationDetails];
  if (!v23)
  {
    v8 = v10;
    v7 = &selRef_thumbnailWidth;
    goto LABEL_7;
  }

  v8 = v23;
  v24 = [v23 status];
  v7 = &selRef_thumbnailWidth;
  if (v24 != 1)
  {
    if (v24 != 3)
    {

      goto LABEL_7;
    }

    v25 = [v8 pendingAttempt];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 expiryDate];
      if (v27)
      {
        v170 = v26;
        v172 = v1;
        v29 = v188[30];
        v28 = v188[31];
        v190 = v188[29];
        v167 = v188[25];
        v30 = v27;
        sub_1BE04AEE4();

        v165 = *v177;
        (*v177)(v28, v29, v167);
        sub_1BE04AEF4();
        sub_1BD9D146C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        LOBYTE(v30) = sub_1BE0522F4();
        v31 = *v175;
        (*v175)(v190, v167);
        if (v30)
        {
          v31(v188[31], v188[25]);

          v189 = 1;
          v2 = v194;
          i = v195;
          v1 = v172;
          v7 = &selRef_thumbnailWidth;
          if (v4 == v195)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v191 = v31;
          v62 = [v170 sentDate];
          if (v62)
          {
            v64 = v188[27];
            v63 = v188[28];
            v169 = v188[25];
            v65 = v62;
            sub_1BE04AEE4();

            v165(v63, v64, v169);
            v66 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
            v67 = sub_1BE04AE64();
            LODWORD(v63) = [v66 isDateAtLeastNDays:3 afterDate:v67];

            if (v63)
            {
              v68 = v10;
              MEMORY[0x1BFB3F7A0]();
              if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1BE052774();
              }

              v186 = v188[31];
              v69 = v188[28];
              v70 = v188[25];
              sub_1BE0527C4();

              v191(v69, v70);
              v191(v186, v70);
              v185 = v197;
              v189 = 1;
              v2 = v194;
              i = v195;
              v1 = v172;
              v7 = &selRef_thumbnailWidth;
              if (v4 == v195)
              {
                goto LABEL_88;
              }
            }

            else
            {
              v71 = v188[31];
              v72 = v188[28];
              v73 = v188[25];

              v191(v72, v73);
              v191(v71, v73);
              v189 = 1;
              v2 = v194;
              i = v195;
              v1 = v172;
              v7 = &selRef_thumbnailWidth;
              if (v4 == v195)
              {
                goto LABEL_88;
              }
            }
          }

          else
          {
            v31(v188[31], v188[25]);

            v189 = 1;
            v2 = v194;
            i = v195;
            v1 = v172;
            v7 = &selRef_thumbnailWidth;
            if (v4 == v195)
            {
              goto LABEL_88;
            }
          }
        }
      }

      else
      {

        v189 = 1;
        v2 = v194;
        i = v195;
        if (v4 == v195)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {

      v189 = 1;
      v2 = v194;
      i = v195;
      if (v4 == v195)
      {
        goto LABEL_88;
      }
    }

    goto LABEL_10;
  }

  v173 = v1;
  v32 = [v10 identifier];
  HasDismissedBankVerificationExpirationMessage = PKSavingsHasDismissedBankVerificationExpirationMessage();

  if (HasDismissedBankVerificationExpirationMessage)
  {
    v1 = v173;
    v7 = &selRef_thumbnailWidth;
    goto LABEL_72;
  }

  v34 = [v8 failedAttempt];
  v7 = &selRef_thumbnailWidth;
  if (!v34)
  {
    v1 = v173;
    goto LABEL_72;
  }

  v35 = v34;
  v1 = v173;
  if ([v34 failureReason] != 3 || (v36 = objc_msgSend(v8, sel_recoveryActions)) == 0)
  {

    goto LABEL_72;
  }

  v37 = v36;
  v161 = v35;
  sub_1BD0E5E8C(0, &qword_1EBD5AE60, 0x1E69B8378);
  v38 = sub_1BE052744();

  v39 = v38;
  v168 = v38;
  if (v38 >> 62)
  {
    v40 = sub_1BE053704();
    v39 = v38;
    if (!v40)
    {
LABEL_70:
      v74 = v39;

      v74, v75, v76, v77, v78, v79, v80, v81;
      goto LABEL_71;
    }
  }

  else
  {
    v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_70;
    }
  }

  v41 = 0;
  v164 = v40;
  v166 = v39 & 0xC000000000000001;
  v162 = v39 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v166)
    {
      v42 = MEMORY[0x1BFB40900](v41);
    }

    else
    {
      if (v41 >= *(v162 + 16))
      {
        goto LABEL_130;
      }

      v42 = *(v39 + 8 * v41 + 32);
    }

    v171 = (v41 + 1);
    if (__OFADD__(v41, 1))
    {
      break;
    }

    v43 = v42;
    v181 = v42;
    if ([v42 type] == 2)
    {
      v44 = [v43 verificationOptions];
      sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
      v45 = sub_1BE052744();

      *v179 = v187;
      v46 = swift_task_alloc();
      *(v46 + 16) = v179;
      v163 = sub_1BD30114C(sub_1BD9D17E8, v46, v45);
      v45, v47, v48, v49, v50, v51, v52, v53;

      if (v163)
      {
        v168, v54, v55, v56, v57, v58, v59, v60;
        v61 = v10;
        MEMORY[0x1BFB3F7A0]();
        v1 = v173;
        if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();

        v184 = v196;
LABEL_71:
        v7 = &selRef_thumbnailWidth;
LABEL_72:
        v82 = [v8 failedAttempt];
        if (v82)
        {

          v189 = 1;
          v2 = v194;
          i = v195;
          if (v4 == v195)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v83 = [v8 pendingAttempt];

          if (v83)
          {

            v189 = 1;
            v2 = v194;
            i = v195;
            v7 = &selRef_thumbnailWidth;
            if (v4 == v195)
            {
              goto LABEL_88;
            }
          }

          else
          {
            v2 = v194;
            i = v195;
            v7 = &selRef_thumbnailWidth;
            if (v4 == v195)
            {
LABEL_81:
              if (v189)
              {
                goto LABEL_88;
              }

              v0 = v188;
              goto LABEL_84;
            }
          }
        }

        goto LABEL_10;
      }

      v1 = v173;
    }

    ++v41;
    v39 = v168;
    if (v171 == v164)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

void sub_1BD9C7E58()
{
  v1 = sub_1BE04BD74();
  v191 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v180 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v180 - v5;
  v7 = sub_1BE04AA64();
  v190 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel;
  v11 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v11;
  sub_1BE04D8B4(aBlock);
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v13, v22, v23, v24, v25, v26, v27, v28;

  v29 = aBlock[0];
  if (!aBlock[0])
  {
    return;
  }

  v30 = [aBlock[0] apy];

  if (!v30)
  {
    return;
  }

  v189 = v1;
  v31 = *(v0 + v10);
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = v31;
  sub_1BE04D8B4(aBlock);
  v32, v35, v36, v37, v38, v39, v40, v41;
  v33, v42, v43, v44, v45, v46, v47, v48;

  v49 = aBlock[0];
  if (!aBlock[0] || (v50 = [aBlock[0] formattedAPY], v49, !v50))
  {

    return;
  }

  v51 = sub_1BE052434();
  v53 = v52;

  v54 = PKSavingsPreviousAPYForUpdateMessage();
  if (!v54)
  {

    v97 = v53;
    goto LABEL_15;
  }

  v186 = v51;
  v187 = v53;
  v188 = v54;
  v55 = *(v0 + v10);
  v56 = swift_getKeyPath();
  v57 = swift_getKeyPath();
  v58 = v55;
  sub_1BE04D8B4(aBlock);
  v56, v59, v60, v61, v62, v63, v64, v65;
  v57, v66, v67, v68, v69, v70, v71, v72;

  v73 = aBlock[0];
  if (!aBlock[0])
  {

LABEL_19:
    v187, v98, v99, v100, v101, v102, v103, v104;
    return;
  }

  v74 = [aBlock[0] apyFormatter];

  v75 = v188;
  v76 = [v74 stringFromNumber_];

  if (!v76)
  {

    goto LABEL_19;
  }

  v77 = sub_1BE052434();
  v79 = v78;

  v80 = v77;
  v81 = v186 == v77;
  v82 = v187;
  if (v81 && v187 == v79 || (sub_1BE053B84() & 1) != 0)
  {

    v82, v83, v84, v85, v86, v87, v88, v89;
    v97 = v79;
LABEL_15:
    v97, v90, v91, v92, v93, v94, v95, v96;
    return;
  }

  v184 = v80;
  v185 = v79;
  sub_1BE0533F4();
  v105 = sub_1BE0533F4();
  LODWORD(v183) = MEMORY[0x1BFB403F0](v105);
  v106 = [objc_allocWithZone(PKDashboardPassMessage) init];
  v107 = sub_1BE052404();
  [v106 setIdentifier_];

  v108 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD9D1314;
  v193 = v108;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_103_3;
  v109 = _Block_copy(aBlock);
  v193, v110, v111, v112, v113, v114, v115, v116;
  [v106 setActionOnDismiss_];
  _Block_release(v109);
  v117 = PKPassKitUIBundle();
  if (!v117)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v118 = v117;
  v119 = sub_1BE052404();
  v120 = sub_1BE052404();
  v121 = [v118 URLForResource:v119 withExtension:v120];

  v122 = v191;
  if (v121)
  {
    sub_1BE04A9F4();

    v121 = sub_1BE04A9C4();
    (*(v190 + 8))(v9, v7);
  }

  v123 = PKUIScreenScale();
  v124 = PKUIImageFromPDF(v121, 45.0, 45.0, v123);

  if (!v124)
  {
    goto LABEL_35;
  }

  [v106 setImage_];

  v125 = v122[13];
  LODWORD(v190) = *MEMORY[0x1E69B80E0];
  v182 = v125;
  v125(v6);
  v126 = PKPassKitBundle();
  if (!v126)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v127 = v126;
  v128 = v122;
  v129 = v183;
  if (v183)
  {
    v130 = "DASHBOARD_APY_INCREASE_MESSAGE";
  }

  else
  {
    v130 = "RANSFER_LIMIT_MESSAGE";
  }

  v131 = 0xD00000000000001ELL;
  if ((v183 & 1) == 0)
  {
    v131 = 0xD00000000000001CLL;
  }

  v183 = v131;
  if (v129)
  {
    v132 = "DASHBOARD_APY_UPDATE_MESSAGE";
  }

  else
  {
    v132 = "DASHBOARD_APY_UPDATE_TITLE";
  }

  v181 = v132;
  sub_1BE04B6F4();
  v134 = v133;
  (v130 | 0x8000000000000000), v133, v135, v136, v137, v138, v139, v140;

  v191 = v128[1];
  v141 = v189;
  (v191)(v6, v189);
  v142 = sub_1BE052404();
  v134, v143, v144, v145, v146, v147, v148, v149;
  [v106 setTitle_];

  v182(v3, v190, v141);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_1BE0B6CA0;
  v151 = MEMORY[0x1E69E6158];
  *(v150 + 56) = MEMORY[0x1E69E6158];
  v152 = sub_1BD110550();
  v153 = v185;
  *(v150 + 32) = v184;
  *(v150 + 40) = v153;
  *(v150 + 96) = v151;
  *(v150 + 104) = v152;
  v155 = v186;
  v154 = v187;
  *(v150 + 64) = v152;
  *(v150 + 72) = v155;
  *(v150 + 80) = v154;
  v156 = v181;
  sub_1BE04B714();
  v158 = v157;
  (v156 | 0x8000000000000000), v157, v159, v160, v161, v162, v163, v164;
  v150, v165, v166, v167, v168, v169, v170, v171;
  (v191)(v3, v141);
  v172 = sub_1BE052404();
  v158, v173, v174, v175, v176, v177, v178, v179;
  [v106 setMessage_];
}

uint64_t sub_1BD9C8680()
{
  v1[38] = v0;
  v2 = sub_1BE04BD74();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v1[45] = v3;
  v1[46] = *(v3 - 8);
  v1[47] = swift_task_alloc();
  v4 = sub_1BE04AF64();
  v1[48] = v4;
  v1[49] = *(v4 - 8);
  v1[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9C881C, 0, 0);
}

uint64_t sub_1BD9C881C()
{
  if (PKSavingsHideCashTransferMessage())
  {
    goto LABEL_22;
  }

  v1 = *(*(v0 + 304) + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = v1;
  sub_1BE04D8B4((v0 + 288));

  v3, v5, v6, v7, v8, v9, v10, v11;
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = *(v0 + 288);
  *(v0 + 408) = v19;
  v20 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v21 = [v19 savingsDetails];
  if (!v21)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = v21;
  v23 = [v21 createdDate];

  if (v23)
  {
    v25 = *(v0 + 392);
    v24 = *(v0 + 400);
    v26 = *(v0 + 384);
    sub_1BE04AEE4();

    v27 = sub_1BE04AE64();
    (*(v25 + 8))(v24, v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = [v20 isDateAtLeastNDays:14 afterDate:v27];

  if (!v28)
  {
    goto LABEL_21;
  }

  v29 = [objc_opt_self() sharedService];
  if (!v29)
  {
    goto LABEL_26;
  }

  v30 = v29;
  v31 = [v29 peerPaymentService];

  if (!v31)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = [v31 account];
  *(v0 + 416) = v32;

  if (!v32)
  {
LABEL_21:

    goto LABEL_22;
  }

  v33 = [objc_opt_self() sharedInstance];
  if (!v33)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = v33;
  v35 = [v32 associatedPassUniqueID];
  v36 = [v34 passWithUniqueID_];

  if (v36)
  {
    v37 = [v36 paymentPass];
    *(v0 + 424) = v37;

    if (v37)
    {
      v38 = v32;
      v39 = v37;
      if (PKPeerPaymentCanPerformAccountServicePayments())
      {
        v40 = [v19 oneTimeDepositWithAppleCashFeatureDescriptor];
        *(v0 + 432) = v40;
        if (v40)
        {
          v41 = v40;
          v42 = [v38 currentBalance];
          if (v42)
          {
            v43 = v42;
            v44 = [v42 amount];

            if (v44)
            {
              sub_1BE0533E4();
            }

            goto LABEL_22;
          }

LABEL_29:
          __break(1u);
          __break(1u);

          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v47);
        }
      }

      goto LABEL_21;
    }
  }

LABEL_22:

  v45 = *(v0 + 8);

  return v45(0);
}

uint64_t sub_1BD9C9AC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD9C9BA8, 0, 0);
}

void sub_1BD9C9BA8()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 296);

  if (!v2 || (v2 >> 62 ? (v10 = sub_1BE053704()) : (v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)), v2, v3, v4, v5, v6, v7, v8, v9, v10 < 1))
  {
    v34 = [objc_allocWithZone(PKDashboardPassMessage) init];
    v35 = sub_1BE052404();
    [v34 setIdentifier_];

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v0 + 224) = sub_1BD9D12C0;
    *(v0 + 232) = v36;
    *(v0 + 192) = MEMORY[0x1E69E9820];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_1BD126964;
    *(v0 + 216) = &block_descriptor_85_0;
    v37 = _Block_copy((v0 + 192));
    *(v0 + 232), v38, v39, v40, v41, v42, v43, v44;
    [v34 setActionOnDismiss_];
    _Block_release(v37);
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v0 + 272) = sub_1BD9D130C;
    *(v0 + 280) = v45;
    *(v0 + 240) = MEMORY[0x1E69E9820];
    *(v0 + 248) = 1107296256;
    *(v0 + 256) = sub_1BD198918;
    *(v0 + 264) = &block_descriptor_89_2;
    v46 = _Block_copy((v0 + 240));
    *(v0 + 280), v47, v48, v49, v50, v51, v52, v53;
    [v34 setActionOnButtonPress_];
    _Block_release(v46);
    v54 = PKPassKitUIBundle();
    if (v54)
    {
      v55 = v54;
      v56 = sub_1BE052404();
      v57 = sub_1BE052404();
      v58 = [v55 URLForResource:v56 withExtension:v57];

      if (v58)
      {
        v59 = *(v0 + 368);
        v60 = *(v0 + 376);
        v61 = *(v0 + 360);
        sub_1BE04A9F4();

        v62 = sub_1BE04A9C4();
        (*(v59 + 8))(v60, v61);
      }

      else
      {
        v62 = 0;
      }

      v63 = PKUIScreenScale();
      v64 = PKUIImageFromPDF(v62, 45.0, 45.0, v63);

      if (v64)
      {
        v65 = *(v0 + 516);
        [v34 setImage_];

        v66 = *(v0 + 440);
        if (v65)
        {
          v67 = sub_1BE053344();
          v68 = PKCurrencyAmountMake();

          if (!v68)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v76 = *(v0 + 488);
          *(v0 + 480), v69, v70, v71, v72, v73, v74, v75;
          v76, v77, v78, v79, v80, v81, v82, v83;
          v84 = [v68 minimalFormattedStringValue];

          if (!v84)
          {
            v179 = *(v0 + 496);
            v180 = *(v0 + 464);
            v182 = *(v0 + 424);
            v181 = *(v0 + 432);
            v183 = *(v0 + 408);

            v33 = 0;
            goto LABEL_20;
          }

          v196 = v34;
          v85 = *(v0 + 352);
          v86 = *(v0 + 320);
          v87 = sub_1BE052434();
          v184 = v88;
          v185 = v87;

          v193 = *MEMORY[0x1E69B80E0];
          v189 = *(v86 + 104);
          v189(v85);
          v89 = PKPassKitBundle();
          if (!v89)
          {
LABEL_30:
            __break(1u);
            return;
          }

          v90 = v89;
          v91 = *(v0 + 344);
          v92 = *(v0 + 352);
          v93 = *(v0 + 312);
          v94 = *(v0 + 320);
          sub_1BE04B6F4();
          v96 = v95;

          v97 = *(v94 + 8);
          v97(v92, v93);
          v98 = sub_1BE052404();
          v96, v99, v100, v101, v102, v103, v104, v105;
          v33 = v196;
          [v196 setTitle_];

          v106 = v193;
          (v189)(v91, v193, v93);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v107 = swift_allocObject();
          *(v107 + 16) = xmmword_1BE0B69E0;
          *(v107 + 56) = MEMORY[0x1E69E6158];
          *(v107 + 64) = sub_1BD110550();
          *(v107 + 32) = v185;
          *(v107 + 40) = v184;
          sub_1BE04B714();
          v109 = v108;
          v107, v108, v110, v111, v112, v113, v114, v115;
          v97(v91, v93);
          v123 = sub_1BE052404();
          v124 = v189;
        }

        else
        {
          v125 = *(v0 + 488);
          v187 = *(v0 + 472);
          v190 = *(v0 + 480);
          v126 = *(v0 + 344);
          v194 = *(v0 + 336);
          v197 = v34;
          v127 = *(v0 + 312);
          v128 = *(v0 + 320);

          v125, v129, v130, v131, v132, v133, v134, v135;
          v136 = *MEMORY[0x1E69B80E0];
          v137 = *(v128 + 104);
          v137(v126, v136, v127);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v138 = swift_allocObject();
          *(v138 + 16) = xmmword_1BE0B69E0;
          *(v138 + 56) = MEMORY[0x1E69E6158];
          *(v138 + 64) = sub_1BD110550();
          *(v138 + 32) = v187;
          *(v138 + 40) = v190;
          sub_1BE04B714();
          v140 = v139;
          v138, v139, v141, v142, v143, v144, v145, v146;
          v97 = *(v128 + 8);
          v97(v126, v127);
          v147 = sub_1BE052404();
          v140, v148, v149, v150, v151, v152, v153, v154;
          v33 = v197;
          [v197 setTitle_];

          v191 = v137;
          v137(v194, v136, v127);
          v155 = PKPassKitBundle();
          if (!v155)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v156 = v155;
          v157 = *(v0 + 336);
          v158 = *(v0 + 312);
          sub_1BE04B6F4();
          v109 = v159;

          v97(v157, v158);
          v123 = sub_1BE052404();
          v106 = v136;
          v124 = v191;
        }

        v198 = v97;
        v160 = *(v0 + 328);
        v161 = *(v0 + 312);
        v109, v116, v117, v118, v119, v120, v121, v122;
        [v33 setMessage_];

        v124(v160, v106, v161);
        v162 = PKPassKitBundle();
        if (v162)
        {
          v163 = v162;
          v192 = *(v0 + 496);
          v195 = *(v0 + 464);
          v164 = *(v0 + 424);
          v165 = *(v0 + 416);
          v186 = *(v0 + 432);
          v188 = *(v0 + 408);
          v166 = *(v0 + 328);
          v167 = *(v0 + 312);
          sub_1BE04B6F4();
          v169 = v168;

          v198(v166, v167);
          v170 = sub_1BE052404();
          v169, v171, v172, v173, v174, v175, v176, v177;
          [v33 setButtonTitle_];

          goto LABEL_20;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v11 = *(v0 + 488);
  v12 = *(v0 + 496);
  v13 = *(v0 + 480);
  v14 = *(v0 + 464);
  v15 = *(v0 + 432);
  v17 = *(v0 + 416);
  v16 = *(v0 + 424);
  v18 = *(v0 + 408);

  v11, v19, v20, v21, v22, v23, v24, v25;
  v13, v26, v27, v28, v29, v30, v31, v32;

  v33 = 0;
LABEL_20:

  v178 = *(v0 + 8);

  v178(v33);
}

void sub_1BD9CA53C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v89 - v6;
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((PKSavingsHasDismissedEducationInterestMessage() & 1) == 0)
  {
    v93 = v4;
    v94 = v2;
    v12 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
    KeyPath = swift_getKeyPath();
    v14 = swift_getKeyPath();
    v15 = v12;
    sub_1BE04D8B4(aBlock);
    KeyPath, v16, v17, v18, v19, v20, v21, v22;
    v14, v23, v24, v25, v26, v27, v28, v29;

    v30 = aBlock[0];
    if (aBlock[0])
    {
      v31 = v9;
      v32 = [aBlock[0] formattedAPY];

      if (v32)
      {
        v33 = sub_1BE052434();
        v91 = v34;
        v92 = v33;

        v35 = [objc_allocWithZone(PKDashboardPassMessage) init];
        v36 = sub_1BE052404();
        [v35 setIdentifier_];

        v37 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1BD9D1274;
        v96 = v37;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_73_0;
        v38 = _Block_copy(aBlock);
        v96, v39, v40, v41, v42, v43, v44, v45;
        [v35 setActionOnDismiss_];
        _Block_release(v38);
        v46 = PKPassKitUIBundle();
        if (v46)
        {
          v47 = v46;
          v48 = sub_1BE052404();
          v49 = sub_1BE052404();
          v50 = [v47 URLForResource:v48 withExtension:v49];

          if (v50)
          {
            sub_1BE04A9F4();

            v51 = sub_1BE04A9C4();
            (*(v31 + 8))(v11, v8);
          }

          else
          {
            v51 = 0;
          }

          v52 = v92;
          v53 = PKUIScreenScale();
          v54 = PKUIImageFromPDF(v51, 45.0, 45.0, v53);

          if (v54)
          {
            [v35 setImage_];

            v55 = *MEMORY[0x1E69B80E0];
            v56 = v94;
            v90 = *(v94 + 104);
            v90(v7, v55, v1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
            v57 = swift_allocObject();
            *(v57 + 16) = xmmword_1BE0B69E0;
            *(v57 + 56) = MEMORY[0x1E69E6158];
            *(v57 + 64) = sub_1BD110550();
            v58 = v91;
            *(v57 + 32) = v52;
            *(v57 + 40) = v58;
            sub_1BE04B714();
            v60 = v59;
            v57, v59, v61, v62, v63, v64, v65, v66;
            v67 = *(v56 + 8);
            v67(v7, v1);
            v68 = sub_1BE052404();
            v60, v69, v70, v71, v72, v73, v74, v75;
            [v35 setTitle_];

            v76 = v93;
            v90(v93, v55, v1);
            v77 = PKPassKitBundle();
            if (v77)
            {
              v78 = v77;
              sub_1BE04B6F4();
              v80 = v79;

              v67(v76, v1);
              v81 = sub_1BE052404();
              v80, v82, v83, v84, v85, v86, v87, v88;
              [v35 setMessage_];

              return;
            }

LABEL_15:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

void sub_1BD9CAAF8()
{
  v196 = sub_1BE04BD74();
  v200 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v195 = &v189 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v189 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v193 = &v189 - v6;
  v7 = sub_1BE04AA64();
  v191 = *(v7 - 8);
  v192 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v190 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04AF64();
  v199 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v198 = &v189 - v13;
  v14 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel;
  v15 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = v15;
  sub_1BE04D8B4(&aBlock);
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v17, v26, v27, v28, v29, v30, v31, v32;

  v33 = aBlock;
  v34 = [aBlock accountIdentifier];

  v194 = v4;
  v35 = v9;
  if (v34)
  {
    v197 = sub_1BE052434();
    v201 = v36;
  }

  else
  {
    v197 = 0;
    v201 = 0;
  }

  v37 = *(v0 + v14);
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v40 = v37;
  sub_1BE04D8B4(&aBlock);
  v38, v41, v42, v43, v44, v45, v46, v47;
  v39, v48, v49, v50, v51, v52, v53, v54;

  v55 = aBlock;
  v56 = [aBlock supportedContactMethodForAddingBeneficiaries];

  v57 = *(v0 + v14);
  v58 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  v60 = v57;
  sub_1BE04D8B4(&aBlock);
  v58, v61, v62, v63, v64, v65, v66, v67;
  v59, v68, v69, v70, v71, v72, v73, v74;

  v75 = aBlock;
  LODWORD(v59) = [aBlock supportsAddBeneficiaries];

  if (!v59 || v56 != 3 && (v56 != 2 || ![objc_opt_self() deviceSupportsBusinessChat]))
  {

LABEL_15:
    v201, v77, v78, v79, v80, v81, v82, v83;
    return;
  }

  HasDismissedAddBeneficiaryMessage = PKSavingsHasDismissedAddBeneficiaryMessage();

  if (HasDismissedAddBeneficiaryMessage)
  {
    goto LABEL_15;
  }

  v84 = *(v0 + v14);
  v85 = swift_getKeyPath();
  v86 = swift_getKeyPath();
  v87 = v84;
  sub_1BE04D8B4(&aBlock);
  v85, v88, v89, v90, v91, v92, v93, v94;
  v86, v95, v96, v97, v98, v99, v100, v101;

  v102 = aBlock;
  v103 = [aBlock createdDate];

  if (!v103)
  {
    goto LABEL_15;
  }

  v189 = v0;
  sub_1BE04AEE4();

  v105 = v198;
  v104 = v199;
  v106 = v35;
  (*(v199 + 32))(v198, v11, v35);
  v107 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v108 = sub_1BE04AE64();
  v109 = [v107 isDateLessThanNDays:10 afterDate:v108];

  if (!v109)
  {
    (*(v104 + 8))(v105, v35);
    goto LABEL_15;
  }

  v110 = [objc_allocWithZone(PKDashboardPassMessage) init];
  v111 = sub_1BE052404();
  [v110 setIdentifier_];

  v112 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v113 = swift_allocObject();
  v114 = v201;
  v113[2] = v197;
  v113[3] = v114;
  v113[4] = v112;
  v206 = sub_1BD9D125C;
  v207 = v113;
  aBlock = MEMORY[0x1E69E9820];
  v203 = 1107296256;
  v204 = sub_1BD126964;
  v205 = &block_descriptor_46_3;
  v115 = _Block_copy(&aBlock);
  v116 = v207;
  sub_1BE048C84();
  v116, v117, v118, v119, v120, v121, v122, v123;
  [v110 setActionOnDismiss_];
  _Block_release(v115);
  v124 = PKPassKitUIBundle();
  if (!v124)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v125 = v124;
  v126 = sub_1BE052404();
  v127 = sub_1BE052404();
  v128 = [v125 URLForResource:v126 withExtension:v127];

  if (v128)
  {
    v129 = v190;
    sub_1BE04A9F4();

    v130 = sub_1BE04A9C4();
    (*(v191 + 8))(v129, v192);
  }

  else
  {
    v130 = 0;
  }

  v131 = v196;
  v132 = v200;
  v196 = v106;
  v133 = PKUIScreenScale();
  v134 = PKUIImageFromPDF(v130, 45.0, 45.0, v133);

  if (!v134)
  {
    goto LABEL_23;
  }

  [v110 setImage_];

  v135 = *MEMORY[0x1E69B80E0];
  v136 = *(v132 + 104);
  v137 = v193;
  v136(v193, v135, v131);
  sub_1BE04B714();
  v139 = v138;
  v140 = *(v132 + 8);
  v200 = v132 + 8;
  v193 = v140;
  (v140)(v137, v131);
  v141 = sub_1BE052404();
  v139, v142, v143, v144, v145, v146, v147, v148;
  [v110 setTitle_];

  v149 = v194;
  v136(v194, v135, v131);
  v150 = PKPassKitBundle();
  if (!v150)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v151 = v150;
  v152 = v131;
  sub_1BE04B6F4();
  v154 = v153;

  v155 = v149;
  v156 = v193;
  (v193)(v155, v131);
  v157 = sub_1BE052404();
  v154, v158, v159, v160, v161, v162, v163, v164;
  [v110 setMessage_];

  v165 = v195;
  v136(v195, v135, v131);
  v166 = PKPassKitBundle();
  if (v166)
  {
    v167 = v166;
    sub_1BE04B6F4();
    v169 = v168;

    v156(v165, v152);
    v170 = sub_1BE052404();
    v169, v171, v172, v173, v174, v175, v176, v177;
    [v110 setButtonTitle_];

    v178 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v179 = swift_allocObject();
    v179[2] = v178;
    v179[3] = v56;
    v180 = v201;
    v179[4] = v197;
    v179[5] = v180;
    v206 = sub_1BD9D1268;
    v207 = v179;
    aBlock = MEMORY[0x1E69E9820];
    v203 = 1107296256;
    v204 = sub_1BD198918;
    v205 = &block_descriptor_53_3;
    v181 = _Block_copy(&aBlock);
    v207, v182, v183, v184, v185, v186, v187, v188;
    [v110 setActionOnButtonPress_];
    _Block_release(v181);
    (*(v199 + 8))(v198, v196);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1BD9CB54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_1BD9CB5E0;

  return sub_1BD9CB77C();
}

uint64_t sub_1BD9CB5E0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9CB6E0, 0, 0);
}

uint64_t sub_1BD9CB6E0()
{
  v1 = v0[5];
  v2 = *(v0[3] + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateEngagementMessagePublisher);
  v0[2] = v1;
  sub_1BE048964();
  sub_1BE04D824();
  v2, v3, v4, v5, v6, v7, v8, v9;
  v1, v10, v11, v12, v13, v14, v15, v16;
  v17 = v0[1];

  return v17();
}

uint64_t sub_1BD9CB77C()
{
  v1[31] = v0;
  v2 = sub_1BE04D214();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9CB83C, 0, 0);
}

uint64_t sub_1BD9CB83C()
{
  v1 = *(v0[31] + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_discoveryService);
  if (v1)
  {
    v2 = *MEMORY[0x1E69BB890];
    v0[35] = *MEMORY[0x1E69BB890];
    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_1BD9CB9CC;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AE78, &unk_1BE10B308);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD9CF978;
    v0[13] = &block_descriptor_217;
    v0[14] = v3;
    [v1 dialogRequestsForPlacement:v2 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v4 = v0[1];
    v5 = MEMORY[0x1E69E7CC0];

    return v4(v5);
  }
}

uint64_t sub_1BD9CB9CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_1BD9CBE10;
  }

  else
  {
    v2 = sub_1BD9CBADC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD9CBADC()
{
  v1 = *(v0 + 240);

  v9 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    goto LABEL_16;
  }

  if (v1 >> 62)
  {
    v10 = sub_1BE053704();
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_15:
    v1, v2, v3, v4, v5, v6, v7, v8;
    goto LABEL_16;
  }

  v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_4:
  v48 = v9;
  result = sub_1BE0538E4();
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v12 = 0;
  v47 = objc_opt_self();
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1BFB40900](v12, v1);
    }

    else
    {
      v34 = *(v1 + 8 * v12 + 32);
    }

    v35 = v34;
    *(v0 + 176) = sub_1BD277BBC;
    *(v0 + 184) = 0;
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1BD9CF98C;
    *(v0 + 168) = &block_descriptor_220_0;
    v36 = _Block_copy((v0 + 144));
    v37 = [v47 messageFromDialogRequest:v35 withAction:v36];
    _Block_release(v36);
    *(v0 + 184), v38, v39, v40, v41, v42, v43, v44;
    v45 = [v37 identifier];
    if (v45)
    {
      v13 = v45;
      v14 = sub_1BE052434();
      v16 = v15;

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v14;
      v18[4] = v16;
      *(v0 + 224) = sub_1BD9D1634;
      *(v0 + 232) = v18;
      *(v0 + 192) = MEMORY[0x1E69E9820];
      *(v0 + 200) = 1107296256;
      *(v0 + 208) = sub_1BD126964;
      *(v0 + 216) = &block_descriptor_227_0;
      v19 = _Block_copy((v0 + 192));
      *(v0 + 232), v20, v21, v22, v23, v24, v25, v26;
      [v37 setActionOnDismiss_];

      _Block_release(v19);
    }

    else
    {
    }

    ++v12;
    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
  }

  while (v10 != v12);
  v1, v27, v28, v29, v30, v31, v32, v33;
  v9 = v48;
LABEL_16:

  v46 = *(v0 + 8);

  return v46(v9);
}

uint64_t sub_1BD9CBE10(uint64_t a1)
{
  v3 = v1[35];
  v2 = v1[36];
  swift_willThrow();

  sub_1BE04D1E4();
  v4 = v2;
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C54();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[36];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BD026000, v5, v6, "Failed to fetch dialog requests: %@", v9, 0xCu);
    sub_1BD0DE53C(v10, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  else
  {
  }

  (*(v1[33] + 8))(v1[34], v1[32]);

  v13 = v1[1];
  v14 = MEMORY[0x1E69E7CC0];

  return v13(v14);
}

void sub_1BD9CBFAC(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(PKAccountViewInterfaceConfiguration) init];
  [v5 setDestination_];
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = v6;
  sub_1BE04D8B4(&v33);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v8, v17, v18, v19, v20, v21, v22, v23;

  v24 = v33;
  [v5 setAccount_];

  [v5 setFundingSource_];
  v25 = *(v2 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration);
  if (v25)
  {
    v26 = *(v2 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration + 8);
    sub_1BE048964();
    v25(v5);
    sub_1BD0D4744(v25, v26, v27, v28, v29, v30, v31, v32);
  }
}

void sub_1BD9CC0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([objc_opt_self() deviceSupportsBusinessChat])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [objc_allocWithZone(MEMORY[0x1E69B8418]) initWithOtherTopicForAccount_];
      sub_1BD9CC1D0(v6);
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8C4();
    }
  }
}

void sub_1BD9CC1D0(uint64_t a1)
{
  v3 = [objc_allocWithZone(PKBusinessChatController) init];
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = v4;
  sub_1BE04D8B4(&v24);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v6, v15, v16, v17, v18, v19, v20, v21;

  v22 = v24;
  v23 = [objc_allocWithZone(PKBusinessChatAccountContext) initWithAccount:v24 topic:a1];

  [v3 openBusinessChatWithContext:v23 completion:0];
}

uint64_t sub_1BD9CC2C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

void sub_1BD9CC34C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  PKSavingsSetPreviousAPYForUpdateMessage();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1BE0528D4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    v8 = sub_1BD122C00(0, 0, v3, &unk_1BE10B250, v7);
    v8, v9, v10, v11, v12, v13, v14, v15;
  }
}

void sub_1BD9CC474(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet);
    if (v7)
    {
      v8 = *(Strong + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet + 8);
      sub_1BE048964();
      v7(0, 0, 0x100000000);
      sub_1BD0D4744(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = sub_1BE0528D4();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v6;
    v17 = sub_1BD122C00(0, 0, v4, &unk_1BE10B278, v16);
    v17, v18, v19, v20, v21, v22, v23, v24;
  }
}

void sub_1BD9CC5DC(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  a2(1, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_1BE0528D4();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;
    v14 = sub_1BD122C00(0, 0, v9, a4, v13);
    v14, v15, v16, v17, v18, v19, v20, v21;
  }
}

void sub_1BD9CC710(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1BD9CC834();
    v7 = sub_1BE0528D4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v9 = sub_1BD122C00(0, 0, v4, &unk_1BE10B240, v8);
    v9, v10, v11, v12, v13, v14, v15, v16;
  }
}

void sub_1BD9CC834()
{
  if (PKSavingsHideCashTransferMessage())
  {
    return;
  }

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = v1;
  sub_1BE04D8B4(v32);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v3, v12, v13, v14, v15, v16, v17, v18;

  v19 = v32[0];
  v20 = [objc_opt_self() sharedService];
  if (!v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v22 = [v20 peerPaymentService];

  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = [v22 account];

  if (!v23)
  {
LABEL_11:

    return;
  }

  v24 = [v19 oneTimeDepositWithAppleCashFeatureDescriptor];
  if (!v24)
  {
LABEL_10:

    goto LABEL_11;
  }

  v25 = v24;
  v26 = [v23 currentBalance];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = [v26 amount];

  if (!v28 || (v32[0] = 0, v32[1] = 0, v33 = 0, v34 = 1, sub_1BE0533E4(), v28, (v34 & 1) != 0))
  {

    goto LABEL_10;
  }

  v29 = v25;
  v30 = [v29 minimumAmount];
  if (v30)
  {
    v31 = v30;
    sub_1BE0533E4();
  }
}

uint64_t sub_1BD9CCBA0(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BD9CCBC4, 0, 0);
}

uint64_t sub_1BD9CCBC4()
{
  v1 = v0[27];
  v2 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_rdfiTransferCompleted;
  v0[28] = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_rdfiTransferCompleted;
  if ((*(v1 + v2) & 1) == 0)
  {
    v4 = v0[25];
    v3 = v0[26];
    v5 = [objc_allocWithZone(MEMORY[0x1E69B8EC8]) init];
    v0[29] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    sub_1BE048C84();
    v7 = sub_1BD537298(inited);
    swift_setDeallocating();
    sub_1BD1BCDE4(inited + 32);
    v8 = sub_1BE052A24();
    v7, v9, v10, v11, v12, v13, v14, v15;
    [v5 setTransactionSourceIdentifiers_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BE0B7020;
    *(v16 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
    v17 = sub_1BE052724();
    v16, v18, v19, v20, v21, v22, v23, v24;
    [v5 setTransactionTypes_];

    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BE0B7020;
    *(v25 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v26 = sub_1BE052724();
    v25, v27, v28, v29, v30, v31, v32, v33;
    [v5 setFundingSourceTypes_];

    [v5 setLimit_];
    v34 = *(v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_transactionProvider);
    v0[30] = v34;
    if (v34)
    {
      v0[2] = v0;
      v0[7] = v0 + 24;
      v0[3] = sub_1BD9CCF58;
      v35 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1BD9C18BC;
      v0[13] = &block_descriptor_182_2;
      v0[14] = v35;
      [v34 transactionsForRequest:v5 completion:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    *(v0[27] + v0[28]) = 1;
  }

  v36 = v0[1];

  return v36(1);
}

uint64_t sub_1BD9CCF58()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD9CD038, 0, 0);
}

uint64_t sub_1BD9CD038()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);

  if (v2)
  {
    if (v2 >> 62)
    {
      v3 = sub_1BE053704();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2, v4, v5, v6, v7, v8, v9, v10;
    if (!v3)
    {
      v11 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v11 = 1;
LABEL_8:
  *(*(v0 + 216) + *(v0 + 224)) = v11;
  v12 = *(v0 + 8);

  return v12();
}

void sub_1BD9CD0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  if (v6)
  {
    v7 = sub_1BE052404();
  }

  else
  {
    v7 = 0;
  }

  PKSavingsSetHasDismissedAddBeneficiaryMessage();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1BE0528D4();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v12 = sub_1BD122C00(0, 0, v5, &unk_1BE10B1D8, v11);
    v12, v13, v14, v15, v16, v17, v18, v19;
  }
}

void sub_1BD9CD254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a3 == 3)
    {
      sub_1BD9CBFAC(13, 0);
      if (!a5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (a3 == 2)
      {
        v12 = *(Strong + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
        KeyPath = swift_getKeyPath();
        v14 = swift_getKeyPath();
        v15 = v12;
        sub_1BE04D8B4(&v42);
        KeyPath, v16, v17, v18, v19, v20, v21, v22;
        v14, v23, v24, v25, v26, v27, v28, v29;

        v30 = v42;
        v31 = [objc_allocWithZone(MEMORY[0x1E69B8418]) initWithBeneficiaryTopicForAccount_];

        sub_1BD9CC1D0(v31);
      }

      if (!a5)
      {
        goto LABEL_7;
      }
    }

    a5 = sub_1BE052404();
LABEL_7:
    PKSavingsSetHasDismissedAddBeneficiaryMessage();

    v32 = sub_1BE0528D4();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v11;
    v34 = sub_1BD122C00(0, 0, v9, &unk_1BE10B1D0, v33);
    v34, v35, v36, v37, v38, v39, v40, v41;
  }
}

void sub_1BD9CD480(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BD9CD4D4();
  }
}

void sub_1BD9CD4D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v35[-v2];
  v4 = *&v0[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel];
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = v4;
  sub_1BE04D8B4(&v36);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v6, v15, v16, v17, v18, v19, v20, v21;

  v22 = v36;
  if (v36)
  {
    v23 = [v36 fccStepUpRequired];

    if (v23)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v35[7] = 1;
      sub_1BE048964();
      sub_1BE04D8C4();
      v24 = sub_1BE0528D4();
      (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v0;
      v26 = v0;
      v27 = sub_1BD122C00(0, 0, v3, &unk_1BE10B2D0, v25);
      v27, v28, v29, v30, v31, v32, v33, v34;
    }
  }
}

uint64_t sub_1BD9CD6C4(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = 0;
  if (a2)
  {
    sub_1BD0E5E8C(0, a3, a4);
    v8 = sub_1BE052744();
  }

  **(*(v7 + 64) + 40) = v8;

  return MEMORY[0x1EEE6DED8](v7);
}

void sub_1BD9CD754(unint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v143 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v127 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v144 = &v127 - v9;
  v129 = sub_1BE04AA64();
  v10 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_28:
    v12 = sub_1BE053704();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_29:
    v152 = MEMORY[0x1E69E7CC0];
    return;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_29;
  }

LABEL_3:
  v138 = v7;
  v13 = 0;
  v142 = (v145 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierExpiredBankVerification);
  v150 = a1 & 0xC000000000000001;
  v130 = a1 & 0xFFFFFFFFFFFFFF8;
  v141 = &v156;
  v127 = (v10 + 1);
  v14 = *MEMORY[0x1E69B80E0];
  v137 = "TE_BANK_VERIFICATION_BUTTON";
  v134 = "D_BANK_VERIFICATION_TITLE";
  v131 = "D_BANK_VERIFICATION_MESSAGE";
  v152 = MEMORY[0x1E69E7CC0];
  v10 = &selRef_findDateFromDates_option_;
  v135 = xmmword_1BE0B69E0;
  v133 = a1;
  v132 = v12;
  v139 = v2;
  v136 = (v3 + 1);
  v140 = (v3 + 13);
  while (1)
  {
    if (v150)
    {
      v15 = MEMORY[0x1BFB40900](v13, a1);
    }

    else
    {
      if (v13 >= *(v130 + 16))
      {
        goto LABEL_27;
      }

      v15 = *(a1 + 8 * v13 + 32);
    }

    v7 = v15;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v153 = v13 + 1;
    v16 = [v15 v10[171]];
    if (!v16)
    {

      goto LABEL_5;
    }

    v3 = v16;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {

      goto LABEL_5;
    }

    v148 = v3;
    v149 = v17;
    v18 = [objc_allocWithZone(PKDashboardPassMessage) init];
    v20 = *v142;
    v19 = v142[1];
    v21 = [v7 identifier];
    if (!v21)
    {
      goto LABEL_35;
    }

    v22 = v21;
    v147 = v13;
    v23 = sub_1BE052434();
    v25 = v24;

    aBlock = v20;
    v155 = v19;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v23, v25);
    v25, v26, v27, v28, v29, v30, v31, v32;
    v33 = v155;
    v34 = sub_1BE052404();
    v33, v35, v36, v37, v38, v39, v40, v41;
    [v18 setIdentifier_];

    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = swift_allocObject();
    *(v43 + 16) = v7;
    *(v43 + 24) = v42;
    v158 = sub_1BD9D14CC;
    v159 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v155 = 1107296256;
    v156 = sub_1BD126964;
    v157 = &block_descriptor_142_1;
    v44 = _Block_copy(&aBlock);
    v45 = v159;
    v46 = v7;
    v45, v47, v48, v49, v50, v51, v52, v53;
    [v18 setActionOnDismiss_];
    _Block_release(v44);
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = v46;
    v158 = sub_1BD9D14D4;
    v159 = v55;
    aBlock = MEMORY[0x1E69E9820];
    v155 = 1107296256;
    v56 = v18;
    v156 = sub_1BD198918;
    v157 = &block_descriptor_149;
    v57 = _Block_copy(&aBlock);
    v58 = v159;
    v59 = v46;
    v58, v60, v61, v62, v63, v64, v65, v66;
    [v18 setActionOnButtonPress_];
    _Block_release(v57);
    v67 = PKPassKitUIBundle();
    if (!v67)
    {
      goto LABEL_33;
    }

    v68 = v67;
    v69 = sub_1BE052404();
    v70 = sub_1BE052404();
    v71 = [v68 URLForResource:v69 withExtension:v70];

    v72 = v144;
    v73 = v140;
    if (v71)
    {
      v74 = v128;
      sub_1BE04A9F4();

      v75 = sub_1BE04A9C4();
      (*v127)(v74, v129);
    }

    else
    {
      v75 = 0;
    }

    v76 = PKUIScreenScale();
    v77 = PKUIImageFromPDF(v75, 45.0, 45.0, v76);

    if (!v77)
    {
      break;
    }

    v146 = v59;
    [v18 setImage_];

    v78 = v139;
    v152 = *v73;
    v152(v72, v14, v139);
    v79 = PKPassKitBundle();
    if (!v79)
    {
      goto LABEL_36;
    }

    v80 = v79;
    sub_1BE04B6F4();
    v82 = v81;

    v7 = v136;
    v151 = *v136;
    v151(v72, v78);
    v83 = sub_1BE052404();
    v82, v84, v85, v86, v87, v88, v89, v90;
    [v18 setTitle_];

    v2 = v138;
    v152(v138, v14, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v91 = swift_allocObject();
    *(v91 + 16) = v135;
    v92 = [v149 name];
    if (!v92)
    {
      goto LABEL_34;
    }

    v93 = v92;
    v94 = sub_1BE052434();
    v96 = v95;

    *(v91 + 56) = MEMORY[0x1E69E6158];
    *(v91 + 64) = sub_1BD110550();
    *(v91 + 32) = v94;
    *(v91 + 40) = v96;
    sub_1BE04B714();
    v98 = v97;
    v91, v97, v99, v100, v101, v102, v103, v104;
    v151(v2, v78);
    v105 = sub_1BE052404();
    v98, v106, v107, v108, v109, v110, v111, v112;
    [v56 setMessage_];

    v113 = v143;
    v152(v143, v14, v78);
    v114 = PKPassKitBundle();
    if (!v114)
    {
      goto LABEL_32;
    }

    v115 = v114;
    sub_1BE04B6F4();
    v117 = v116;

    v151(v113, v78);
    v118 = sub_1BE052404();
    v117, v119, v120, v121, v122, v123, v124, v125;
    [v56 setButtonTitle_];

    v126 = v56;
    v3 = &v160;
    MEMORY[0x1BFB3F7A0]();
    v13 = v147;
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v152 = v160;
    a1 = v133;
    v12 = v132;
    v10 = &selRef_findDateFromDates_option_;
LABEL_5:
    ++v13;
    if (v153 == v12)
    {
      return;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1BD9CE160(unint64_t a1)
{
  v161 = sub_1BE04BD74();
  v2 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v150 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v160 = &v135 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v151 = &v135 - v7;
  v138 = sub_1BE04AA64();
  v8 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v135 - v14;
  v16 = sub_1BE04AF64();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v163 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_38:
    v168 = sub_1BE053704();
    if (v168)
    {
      goto LABEL_3;
    }

LABEL_39:
    v162 = MEMORY[0x1E69E7CC0];
    return;
  }

  v168 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v168)
  {
    goto LABEL_39;
  }

LABEL_3:
  v19 = 0;
  v149 = (v155 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierCompleteBankVerification);
  v169 = a1 & 0xC000000000000001;
  v164 = a1 & 0xFFFFFFFFFFFFFF8;
  v165 = (v17 + 56);
  v159 = (v17 + 48);
  v148 = (v17 + 32);
  v147 = v172;
  v136 = v8 + 1;
  v157 = *MEMORY[0x1E69B80E0];
  v158 = (v2 + 104);
  v146 = "CATION_BUTTON_VIEW";
  v20 = (v2 + 8);
  v144 = "TE_BANK_VERIFICATION_TITLE";
  v140 = "TE_BANK_VERIFICATION_MESSAGE";
  v139 = (v17 + 8);
  v162 = MEMORY[0x1E69E7CC0];
  v145 = xmmword_1BE0B6CA0;
  v2 = v168;
  v143 = a1;
  v142 = v12;
  v141 = v15;
  v167 = v16;
  v156 = v20;
  while (1)
  {
    if (v169)
    {
      v21 = MEMORY[0x1BFB40900](v19, a1);
    }

    else
    {
      if (v19 >= *(v164 + 16))
      {
        goto LABEL_37;
      }

      v21 = *(a1 + 8 * v19 + 32);
    }

    v8 = v21;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v23 = [v21 fundingDetails];
    if (v23)
    {
      break;
    }

LABEL_5:
    ++v19;
    if (v22 == v2)
    {
      return;
    }
  }

  v17 = v23;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {

    goto LABEL_5;
  }

  v166 = v24;
  v25 = [v24 verificationDetails];
  if (!v25 || (v26 = v25, v16 = [v25 pendingAttempt], v26, !v16))
  {

    (*v165)(v15, 1, 1, v167);
    v2 = v168;
LABEL_22:
    sub_1BD0DE53C(v15, &unk_1EBD39970, &unk_1BE0B9F80);
    goto LABEL_5;
  }

  v27 = [v16 expiryDate];

  if (v27)
  {
    sub_1BE04AEE4();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v16 = v167;
  v2 = v168;
  (*v165)(v12, v28, 1, v167);
  sub_1BD1CBBEC(v12, v15);
  if ((*v159)(v15, 1, v16) == 1)
  {

    goto LABEL_22;
  }

  (*v148)(v163, v15, v16);
  v29 = [objc_allocWithZone(PKDashboardPassMessage) init];
  v31 = *v149;
  v30 = v149[1];
  v32 = [v8 identifier];
  if (!v32)
  {
    goto LABEL_47;
  }

  v33 = v32;
  v34 = sub_1BE052434();
  v36 = v35;

  aBlock = v31;
  v171 = v30;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v34, v36);
  v36, v37, v38, v39, v40, v41, v42, v43;
  v44 = v171;
  v45 = sub_1BE052404();
  v44, v46, v47, v48, v49, v50, v51, v52;
  [v29 setIdentifier_];

  [v29 setActionOnDismiss_];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = v8;
  v172[2] = sub_1BD9D1804;
  v173 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v171 = 1107296256;
  v172[0] = sub_1BD198918;
  v172[1] = &block_descriptor_135_2;
  v55 = _Block_copy(&aBlock);
  v56 = v173;
  v154 = v8;
  v56, v57, v58, v59, v60, v61, v62, v63;
  [v29 setActionOnButtonPress_];
  _Block_release(v55);
  v64 = PKPassKitUIBundle();
  if (!v64)
  {
    goto LABEL_46;
  }

  v65 = v64;
  v66 = v29;
  v67 = sub_1BE052404();
  v68 = sub_1BE052404();
  v69 = [v65 URLForResource:v67 withExtension:v68];

  v70 = v158;
  if (v69)
  {
    v71 = v137;
    sub_1BE04A9F4();

    v72 = sub_1BE04A9C4();
    (*v136)(v71, v138);
  }

  else
  {
    v72 = 0;
  }

  v73 = v151;
  v74 = v157;
  v75 = PKUIScreenScale();
  v76 = PKUIImageFromPDF(v72, 45.0, 45.0, v75);

  if (!v76)
  {
    goto LABEL_45;
  }

  [v66 setImage_];

  v77 = v161;
  v162 = *v70;
  v162(v73, v74, v161);
  v78 = PKPassKitBundle();
  if (!v78)
  {
    goto LABEL_44;
  }

  v79 = v78;
  v153 = sub_1BE04B6F4();
  v81 = v80;

  v152 = *v156;
  v152(v73, v77);
  v82 = sub_1BE052404();
  v81, v83, v84, v85, v86, v87, v88, v89;
  v153 = v66;
  [v66 setTitle_];

  v162(v160, v74, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v90 = swift_allocObject();
  *(v90 + 16) = v145;
  v91 = [v166 name];
  if (!v91)
  {
    goto LABEL_43;
  }

  v92 = v91;
  v166 = v17;
  v93 = sub_1BE052434();
  v95 = v94;

  v96 = MEMORY[0x1E69E6158];
  *(v90 + 56) = MEMORY[0x1E69E6158];
  v97 = sub_1BD110550();
  *(v90 + 64) = v97;
  *(v90 + 32) = v93;
  *(v90 + 40) = v95;
  v98 = sub_1BE04AE64();
  v99 = PKMediumDayAndLongMonthStringFromDate();

  if (!v99)
  {
    goto LABEL_42;
  }

  v100 = sub_1BE052434();
  v102 = v101;

  *(v90 + 96) = v96;
  *(v90 + 104) = v97;
  *(v90 + 72) = v100;
  *(v90 + 80) = v102;
  v103 = v160;
  sub_1BE04B714();
  v105 = v104;
  v90, v104, v106, v107, v108, v109, v110, v111;
  v112 = v161;
  v16 = v156;
  v17 = v152;
  v152(v103, v161);
  v113 = sub_1BE052404();
  v105, v114, v115, v116, v117, v118, v119, v120;
  v121 = v153;
  [v153 setMessage_];

  v122 = v150;
  v162(v150, v157, v112);
  v123 = PKPassKitBundle();
  if (v123)
  {
    v124 = v123;
    sub_1BE04B6F4();
    v126 = v125;

    (v17)(v122, v112);
    v127 = sub_1BE052404();
    v126, v128, v129, v130, v131, v132, v133, v134;
    [v121 setButtonTitle_];

    v8 = v121;
    MEMORY[0x1BFB3F7A0]();
    if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    (*v139)(v163, v167);
    v162 = v174;
    a1 = v143;
    v12 = v142;
    v15 = v141;
    v2 = v168;
    goto LABEL_5;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_1BD9CEDDC(unint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v108 - v7;
  v9 = sub_1BE04AA64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v13 = sub_1BE053704();
    v14 = v13 == 1;
    if (v13 < 1)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v13 == 1;
    if (v13 < 1)
    {
      return;
    }
  }

  v110 = v10;
  v111 = v3;
  v114 = v9;
  v115 = v13;
  v112 = v5;
  v113 = v2;
  v15 = !v14;
  v16 = [objc_allocWithZone(PKDashboardPassMessage) init];
  v17 = sub_1BE052404();
  [v16 setIdentifier_];

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v120 = sub_1BD9D14B4;
  v121 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_1BD126964;
  v119 = &block_descriptor_116_1;
  v19 = _Block_copy(&aBlock);
  v121, v20, v21, v22, v23, v24, v25, v26;
  [v16 setActionOnDismiss_];
  _Block_release(v19);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v15;
  *(v28 + 32) = a1;
  v120 = sub_1BD9D14BC;
  v121 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_1BD198918;
  v119 = &block_descriptor_123_1;
  v29 = _Block_copy(&aBlock);
  v30 = v121;
  sub_1BE048C84();
  v30, v31, v32, v33, v34, v35, v36, v37;
  [v16 setActionOnButtonPress_];
  _Block_release(v29);
  v38 = PKPassKitUIBundle();
  if (!v38)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = v38;
  v40 = sub_1BE052404();
  v41 = sub_1BE052404();
  v42 = [v39 URLForResource:v40 withExtension:v41];

  if (v42)
  {
    sub_1BE04A9F4();

    v43 = sub_1BE04A9C4();
    (*(v110 + 8))(v12, v114);
  }

  else
  {
    v43 = 0;
  }

  v44 = PKUIScreenScale();
  v45 = PKUIImageFromPDF(v43, 45.0, 45.0, v44);

  if (!v45)
  {
    goto LABEL_19;
  }

  [v16 setImage_];

  LODWORD(v110) = *MEMORY[0x1E69B80E0];
  v46 = v111;
  v114 = *(v111 + 13);
  v47 = v113;
  v114(v8);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v48 = swift_allocObject();
  v108 = xmmword_1BE0B69E0;
  v49 = MEMORY[0x1E69E6530];
  *(v48 + 16) = xmmword_1BE0B69E0;
  v50 = MEMORY[0x1E69E65A8];
  *(v48 + 56) = v49;
  *(v48 + 64) = v50;
  v51 = v115;
  *(v48 + 32) = v115;
  sub_1BE04B714();
  v53 = v52;
  v48, v52, v54, v55, v56, v57, v58, v59;
  v60 = *(v46 + 1);
  v60(v8, v47);
  v61 = sub_1BE052404();
  v53, v62, v63, v64, v65, v66, v67, v68;
  v69 = v16;
  [v16 setTitle_];

  v70 = v110;
  (v114)(v8, v110, v47);
  v71 = swift_allocObject();
  *(v71 + 16) = v108;
  *(v71 + 56) = MEMORY[0x1E69E6530];
  *(v71 + 64) = MEMORY[0x1E69E65A8];
  *(v71 + 32) = v51;
  sub_1BE04B714();
  v73 = v72;
  v71, v72, v74, v75, v76, v77, v78, v79;
  v111 = v60;
  v60(v8, v47);
  v80 = sub_1BE052404();
  v73, v81, v82, v83, v84, v85, v86, v87;
  [v16 setMessage_];

  v88 = v112;
  (v114)(v112, v70, v47);
  v89 = PKPassKitBundle();
  if (!v89)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v90 = v89;
  if (v115 == 1)
  {
    v91 = "CARD_BANK_VERIFICATION_MESSAGE";
  }

  else
  {
    v91 = "CATION_BUTTON_LINK";
  }

  sub_1BE04B6F4();
  v93 = v92;
  (v91 | 0x8000000000000000), v92, v94, v95, v96, v97, v98, v99;

  v111(v88, v47);
  v100 = sub_1BE052404();
  v93, v101, v102, v103, v104, v105, v106, v107;
  [v69 setButtonTitle_];
}

void sub_1BD9CF518(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = [a1 identifier];
  PKSetSavingsHasDismissedBankVerificationExpirationMessage();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1BE0528D4();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v12 = sub_1BD122C00(0, 0, v6, &unk_1BE10B270, v11);
    v12, v13, v14, v15, v16, v17, v18, v19;
  }
}

void sub_1BD9CF66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1BD9CBFAC(12, a3);
  }
}

void sub_1BD9CF6CC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v36 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
    v6 = Strong;
    KeyPath = swift_getKeyPath();
    v8 = swift_getKeyPath();
    v9 = v5;
    sub_1BE04D8B4(&v36);

    v8, v10, v11, v12, v13, v14, v15, v16;
    KeyPath, v17, v18, v19, v20, v21, v22, v23;
    v24 = v36;
    v25 = [v36 accountIdentifier];

    PKSetSavingsHasDismissedAppleCardBankVerificationMessage();
    v26 = sub_1BE0528D4();
    (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v6;
    v28 = sub_1BD122C00(0, 0, v3, &unk_1BE10B260, v27);
    v28, v29, v30, v31, v32, v33, v34, v35;
  }
}

void sub_1BD9CF88C(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a3)
    {
      sub_1BD9CBFAC(4, 0);
LABEL_13:

      return;
    }

    if (a4 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_6;
      }
    }

    else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((a4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB40900](0, a4);
      }

      else
      {
        if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v8 = *(a4 + 32);
      }

      v9 = v8;
      goto LABEL_12;
    }

    v9 = 0;
LABEL_12:
    sub_1BD9CBFAC(12, v9);

    v7 = v9;
    goto LABEL_13;
  }
}

uint64_t sub_1BD9CF98C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BE04A9F4();
  sub_1BE048964();
  v8(v6);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return (*(v4 + 8))(v6, v3);
}

void sub_1BD9CFA80(uint64_t a1, uint64_t a2, char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BD2A5644(v32, a2, a3);
    swift_endAccess();

    v32[1], v7, v8, v9, v10, v11, v12, v13;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = *(v14 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateEngagementMessagePublisher);
    v32[0] = *(v14 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_engagementMessages);
    v16 = v32[0];
    v17 = v14;
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BE04D824();
    v16, v18, v19, v20, v21, v22, v23, v24;
    v15, v25, v26, v27, v28, v29, v30, v31;
  }
}

void sub_1BD9CFBCC(uint64_t a1)
{
  sub_1BD0E4578(319, &qword_1EBD5AD40, &qword_1EBD3BD10, &qword_1BE10AF20);
  if (v1 <= 0x3F)
  {
    sub_1BD1E1120();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD9CFDB4(uint64_t a1, void *a2, void *a3)
{
  v101 = a3;
  v6 = sub_1BE051F54();
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v98 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel;
  v13 = *(v3 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = v13;
  sub_1BE04D8B4(aBlock);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v15, v24, v25, v26, v27, v28, v29, v30;

  v31 = aBlock[0];
  v32 = [aBlock[0] transactionSourceIdentifier];

  if (v32)
  {
    v33 = sub_1BE052434();
    v35 = v34;

    if (!a2)
    {
      v43 = v35;
LABEL_9:
      v43, v36, v37, v38, v39, v40, v41, v42;
      return;
    }

    if (v33 == a1 && v35 == a2)
    {
      v35, v36, v37, v38, v39, v40, v41, v42;
    }

    else
    {
      v44 = sub_1BE053B84();
      v35, v45, v46, v47, v48, v49, v50, v51;
      if ((v44 & 1) == 0)
      {
        return;
      }
    }
  }

  else if (a2)
  {
    return;
  }

  v52 = *(v3 + v12);
  v53 = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v55 = v52;
  sub_1BE04D8B4(aBlock);
  v53, v56, v57, v58, v59, v60, v61, v62;
  v54, v63, v64, v65, v66, v67, v68, v69;

  v70 = aBlock[0];
  if (!aBlock[0])
  {
    return;
  }

  v71 = [aBlock[0] fccStepUpRequired];

  if (!v71)
  {
    return;
  }

  if (!v101)
  {
    goto LABEL_31;
  }

  v72 = [v101 transfers];
  if (!v72)
  {
    return;
  }

  v73 = v72;
  sub_1BD0E5E8C(0, &qword_1EBD4AD60, 0x1E69B8430);
  v74 = sub_1BE052744();

  if (!(v74 >> 62))
  {
    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (!sub_1BE053704())
  {
LABEL_28:
    v43 = v74;
    goto LABEL_9;
  }

LABEL_17:
  if ((v74 & 0xC000000000000001) == 0)
  {
    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v75 = *(v74 + 32);
      goto LABEL_20;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v75 = MEMORY[0x1BFB40900](0, v74);
LABEL_20:
  v83 = v75;
  v74, v76, v77, v78, v79, v80, v81, v82;
  v84 = [v83 externalAccount];
  if (!v84)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v85 = v84;
  v86 = [v84 type];

  if (v86 == 5 && [v101 transactionType] == 6 && (*(v3 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_rdfiTransferCompleted) & 1) == 0)
  {
    *(v3 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_rdfiTransferCompleted) = 1;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v101 = sub_1BE052D54();
    v87 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD9D1510;
    v103 = v87;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_200_1;
    v88 = _Block_copy(aBlock);
    v103, v89, v90, v91, v92, v93, v94, v95;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD9D146C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    v96 = v100;
    sub_1BE053664();
    v97 = v101;
    MEMORY[0x1BFB3FDF0](0, v11, v8, v88);
    _Block_release(v88);

    (*(v99 + 8))(v8, v96);
    (*(v98 + 8))(v11, v9);
  }

  else
  {
  }
}

void sub_1BD9D03EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1BE0528D4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v11 = sub_1BD122C00(0, 0, v6, a3, v10);
    v11, v12, v13, v14, v15, v16, v17, v18;
  }
}

uint64_t sub_1BD9D05B8()
{
  v1 = OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__loading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__completed, v2);
  v4 = OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__action;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AE48, &qword_1BE10B150);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

void sub_1BD9D0704(uint64_t a1)
{
  sub_1BD1E1120();
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD5AE38, &qword_1EBD5AE40, &unk_1BE1019D0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1BD9D07E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AE48, &qword_1BE10B150);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  v9 = OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__loading;
  LOBYTE(v14[0]) = 0;
  sub_1BE04D874();
  v10 = *(v6 + 32);
  v10(v0 + v9, v8, v5);
  v11 = OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__completed;
  LOBYTE(v14[0]) = 0;
  sub_1BE04D874();
  v10(v0 + v11, v8, v5);
  v12 = OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__action;
  v14[0] = 0;
  v14[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AE40, &unk_1BE1019D0);
  sub_1BE04D874();
  (*(v2 + 32))(v0 + v12, v4, v1);
  return v0;
}

void sub_1BD9D09F0(void *a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE052434();
  if (a2)
  {
    if (v12 == a1 && v13 == a2)
    {
      v13, v13, v12, v15, v16, v17, v18, v19;
    }

    else
    {
      v21 = v13;
      v22 = sub_1BE053B84();
      v21, v23, v24, v25, v26, v27, v28, v29;
      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v41 = sub_1BE052D54();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD9D1548;
    v43 = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_209_2;
    v31 = _Block_copy(aBlock);
    v43, v32, v33, v34, v35, v36, v37, v38;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD9D146C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    v40 = v8;
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    sub_1BE053664();
    v39 = v41;
    MEMORY[0x1BFB3FDF0](0, v11, v7, v31);
    _Block_release(v31);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v40);
    return;
  }

  v13, v13, v14, v15, v16, v17, v18, v19;
}

void sub_1BD9D0D7C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BE051F54();
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v60 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = v12;
  sub_1BE04D8B4(aBlock);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v14, v23, v24, v25, v26, v27, v28, v29;

  v30 = aBlock[0];
  v31 = [aBlock[0] accountIdentifier];

  if (v31)
  {
    v32 = sub_1BE052434();
    v34 = v33;

    if (!a2)
    {
      v34, v35, v36, v37, v38, v39, v40, v41;
      return;
    }

    if (v32 == a1 && v34 == a2)
    {
      v34, v35, v36, v37, v38, v39, v40, v41;
    }

    else
    {
      v42 = sub_1BE053B84();
      v34, v43, v44, v45, v46, v47, v48, v49;
      if ((v42 & 1) == 0)
      {
        return;
      }
    }
  }

  else if (a2)
  {
    return;
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v50 = sub_1BE052D54();
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD9D1170;
  v63 = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_235;
  v52 = _Block_copy(aBlock);
  v63, v53, v54, v55, v56, v57, v58, v59;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD9D146C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v8, v52);
  _Block_release(v52);

  (*(v61 + 8))(v8, v6);
  (*(v60 + 8))(v11, v9);
}

uint64_t sub_1BD9D11A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD9C3530(a1, v4, v5, v6);
}

uint64_t sub_1BD9D131C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD9C3530(a1, v4, v5, v6);
}

uint64_t sub_1BD9D146C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD9D1580(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD9CB54C(a1, v4, v5, v6);
}

unint64_t sub_1BD9D1640()
{
  result = qword_1EBD35EA0;
  if (!qword_1EBD35EA0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD35E90, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35EA0);
  }

  return result;
}

uint64_t _s14PaymentSummaryVMa(uint64_t a1)
{
  result = qword_1EBD5AEF0;
  if (!qword_1EBD5AEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9D187C(uint64_t a1)
{
  _s11TotalAmountVMa(319);
  if (v1 <= 0x3F)
  {
    sub_1BD9D1A28(319);
    if (v2 <= 0x3F)
    {
      sub_1BD9D1AE8(319, &qword_1EBD5AF08, &_s10CouponCodeVN, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PKPaymentRequestType(319);
        if (v4 <= 0x3F)
        {
          sub_1BD9D1AE8(319, &qword_1EBD5AF10, &type metadata for RecurringPaymentRequest, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1BD9D1AE8(319, &qword_1EBD5AF18, &type metadata for AutomaticReloadPaymentRequest, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1BD9D1A90(319);
              if (v7 <= 0x3F)
              {
                sub_1BD9D1AE8(319, &qword_1EBD5AF28, &_s19PaymentTokenContextVN, MEMORY[0x1E69E62F8]);
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

void sub_1BD9D1A28(uint64_t a1)
{
  if (!qword_1EBD5AF00)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3D4A0, 0x1E69B8E90);
    v1 = sub_1BE052804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD5AF00);
    }
  }
}

void sub_1BD9D1A90(uint64_t a1)
{
  if (!qword_1EBD5AF20)
  {
    type metadata accessor for DeferredPaymentRequest(255);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD5AF20);
    }
  }
}

void sub_1BD9D1AE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1BD9D1B48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v186 = a4;
  v189 = a3;
  v190 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380, &qword_1BE10B380);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v174 - v8);
  v10 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v185 = (&v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for Passes(0);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v16 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v193 = &v174 - v18;
  v19 = _s14PaymentSummaryVMa(0);
  v20 = (a5 + v19[9]);
  *(v20 + 2) = 0u;
  *(v20 + 3) = 0u;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v182 = v20;
  v21 = a5 + v19[10];
  *(v21 + 48) = 0;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  v181 = v21;
  *v21 = 0u;
  v22 = v19[11];
  v23 = type metadata accessor for DeferredPaymentRequest(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v180 = v22;
  v179 = v23;
  v178 = v25;
  v177 = v24 + 56;
  (v25)(a5 + v22, 1, 1);
  v187 = a1;
  result = [a1 paymentSummaryItems];
  if (!result)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v27 = result;
  v176 = v9;
  v192 = a5;
  v28 = sub_1BE052744();

  v36 = v28[2];
  v191 = v19;
  v188 = v16;
  if (v36)
  {
    v175 = v12;
    v196 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v37 = (v28 + 4);
    do
    {
      sub_1BD038CD0(v37, v194);
      sub_1BD1B6140(v194, &v195);
      sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
      swift_dynamicCast();
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v37 += 32;
      --v36;
    }

    while (v36);
    v28, v38, v39, v40, v41, v42, v43, v44;
    v45 = v196;
    v19 = v191;
    v12 = v175;
    v16 = v188;
  }

  else
  {
    v28, v29, v30, v31, v32, v33, v34, v35;
    v45 = MEMORY[0x1E69E7CC0];
  }

  *&v195 = v45;
  v46 = v187;
  result = [v187 paymentRequest];
  if (!result)
  {
    goto LABEL_60;
  }

  v47 = result;
  v48 = [result requestType];

  if (v48 == 5)
  {
    sub_1BD6AFAA8();
  }

  result = [v46 paymentRequest];
  if (!result)
  {
    goto LABEL_61;
  }

  v50 = result;
  v51 = [result requestType];

  v52 = v193;
  *(v192 + v19[8]) = v51;
  sub_1BD0DE19C(v190, v52, &qword_1EBD45480, &unk_1BE0B8C30);
  sub_1BD9D3594(v189, v16);
  v53 = v46;
  result = [v53 paymentRequest];
  if (!result)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v54 = result;
  v55 = [result requestType];

  *v14 = v55;
  *&v14[*(v12 + 68)] = v186;
  result = [v53 totalSummaryItem];
  if (!result)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v56 = result;
  v57 = [result amount];

  *(v14 + 1) = v57;
  if (v55 == 10)
  {
    v58 = [v53 transactionAmount];
  }

  else
  {
    v58 = 0;
  }

  v59 = v12;
  *(v14 + 2) = v58;
  result = [v53 currencyCode];
  if (!result)
  {
    goto LABEL_64;
  }

  v60 = result;
  v61 = sub_1BE052434();
  v63 = v62;

  *(v14 + 3) = v61;
  *(v14 + 4) = v63;
  sub_1BE048C84();
  result = [v53 merchantName];
  if (!result)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v64 = result;
  v65 = sub_1BE052434();
  v67 = v66;

  *(v14 + 5) = v65;
  *(v14 + 6) = v67;
  result = [v53 paymentRequest];
  if (!result)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v68 = result;
  v69 = [result recurringPaymentRequest];

  if (v69)
  {
  }

  v14[56] = v69 == 0;
  result = [v53 totalSummaryItem];
  if (!result)
  {
    goto LABEL_67;
  }

  v70 = v185;
  sub_1BD1C870C(result, v61, v63, v185);
  sub_1BD9D3658(v70, &v14[v59[10]], _s22SummaryItemPricingTypeOMa);
  result = [v53 totalSummaryItem];
  if (!result)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v71 = result;
  v72 = [result type];

  v14[v59[11]] = v72 == 1;
  *&v14[v59[13]] = [v53 fundingMode];
  sub_1BD0DE19C(v193, &v14[v59[15]], &qword_1EBD45480, &unk_1BE0B8C30);
  v73 = v59[16];
  v74 = v188;
  sub_1BD9D3594(v188, &v14[v73]);
  (*(v183 + 56))(&v14[v73], 0, 1, v184);
  *&v14[v59[14]] = [v53 selectedPaymentOffer];
  result = [v53 paymentRequest];
  v75 = v191;
  if (!result)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v76 = result;
  v77 = [result APIType];

  if ((v77 - 1) >= 2)
  {

    sub_1BD9D35F8(v74, type metadata accessor for Passes);
    sub_1BD0DE53C(v193, &qword_1EBD45480, &unk_1BE0B8C30);
    v14[v59[12]] = 0;
  }

  else
  {
    v78 = [v53 isIssuerInstallmentsRepayment];

    sub_1BD9D35F8(v74, type metadata accessor for Passes);
    sub_1BD0DE53C(v193, &qword_1EBD45480, &unk_1BE0B8C30);
    v14[v59[12]] = v78;
  }

  v79 = v192;
  sub_1BD9D3658(v14, v192, _s11TotalAmountVMa);
  v80 = v195;
  *(v79 + v75[5]) = v195;
  v187 = v80;
  sub_1BE048C84();
  result = [v53 currencyCode];
  if (!result)
  {
    goto LABEL_70;
  }

  v81 = result;
  v82 = sub_1BE052434();
  v84 = v83;

  v85 = (v79 + v75[6]);
  v193 = v82;
  *v85 = v82;
  v85[1] = v84;
  v86 = v53;
  v87 = sub_1BD5A5C94(v86);
  v88 = (v79 + v75[7]);
  *v88 = v87;
  v88[1] = v89;
  v88[2] = v90;
  v88[3] = v91;
  result = [v86 paymentRequest];
  if (result)
  {
    v92 = result;
    v93 = [result recurringPaymentRequest];

    v188 = v86;
    if (v93)
    {
      sub_1BE048C84();
      v94 = [v93 paymentDescription];
      v186 = sub_1BE052434();
      v96 = v95;

      v97 = [v93 billingAgreement];
      if (v97)
      {
        v98 = v97;
        v99 = sub_1BE052434();
        v101 = v100;
      }

      else
      {
        v99 = 0;
        v101 = 0;
      }

      v102 = [v93 regularBilling];
      v103 = [v93 trialBilling];

      v104 = v182;
      v105 = *(v182 + 1);
      v194[0] = *v182;
      v194[1] = v105;
      v106 = *(v182 + 3);
      v194[2] = *(v182 + 2);
      v194[3] = v106;
      sub_1BD0DE53C(v194, &qword_1EBD41378, &qword_1BE10B430);
      *v104 = v186;
      v104[1] = v96;
      v104[2] = v193;
      v104[3] = v84;
      v104[4] = v99;
      v104[5] = v101;
      v104[6] = v102;
      v104[7] = v103;
      v86 = v188;
    }

    result = [v86 paymentRequest];
    if (!result)
    {
      goto LABEL_72;
    }

    v107 = result;
    v108 = [result automaticReloadPaymentRequest];

    if (v108)
    {
      sub_1BE048C84();
      v109 = [v108 paymentDescription];
      v110 = sub_1BE052434();
      v112 = v111;

      v113 = [v108 billingAgreement];
      if (v113)
      {
        v114 = v113;
        v115 = sub_1BE052434();
        v117 = v116;
      }

      else
      {
        v115 = 0;
        v117 = 0;
      }

      v118 = [v108 automaticReloadBilling];

      v119 = v181;
      sub_1BD2ED910(*v181, *(v181 + 8), *(v181 + 16), *(v181 + 24), *(v181 + 32), *(v181 + 40), *(v181 + 48), v120);
      *v119 = v110;
      v119[1] = v112;
      v119[2] = v193;
      v119[3] = v84;
      v119[4] = v115;
      v119[5] = v117;
      v119[6] = v118;
    }

    result = [v86 paymentRequest];
    if (!result)
    {
      goto LABEL_73;
    }

    v121 = result;
    v122 = [result deferredPaymentRequest];

    if (v122)
    {
      sub_1BE048C84();
      v123 = v176;
      sub_1BD9D3E14(v122, v193, v84, v176);
      v178(v123, 0, 1, v179);
      sub_1BD9D36C0(v123, v79 + v180);
    }

    result = [v86 paymentRequest];
    if (!result)
    {
      goto LABEL_74;
    }

    v131 = result;
    v187, v124, v125, v126, v127, v128, v129, v130;
    v132 = [v131 multiTokenContexts];

    sub_1BD0E5E8C(0, &qword_1EBD5AF40, 0x1E69B8EA0);
    v133 = sub_1BE052744();

    if (v133 >> 62)
    {
      v139 = sub_1BE053704();
      if (v139)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v139 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v139)
      {
LABEL_46:
        *&v194[0] = MEMORY[0x1E69E7CC0];
        result = sub_1BD531A84(0, v139 & ~(v139 >> 63), 0, v134, v135, v136, v137, v138);
        if ((v139 & 0x8000000000000000) == 0)
        {
          v140 = 0;
          v141 = *&v194[0];
          v142 = v133;
          v193 = v133 & 0xC000000000000001;
          v143 = v133;
          v144 = v139;
          do
          {
            if (v193)
            {
              v145 = MEMORY[0x1BFB40900](v140, v142);
            }

            else
            {
              v145 = v142[v140 + 4];
            }

            v146 = v145;
            v147 = [v145 merchantName];
            v148 = sub_1BE052434();
            v150 = v149;

            v151 = [v146 amount];
            *&v194[0] = v141;
            v158 = *(v141 + 16);
            v157 = *(v141 + 24);
            if (v158 >= v157 >> 1)
            {
              sub_1BD531A84((v157 > 1), v158 + 1, 1, v152, v153, v154, v155, v156);
              v141 = *&v194[0];
            }

            ++v140;
            *(v141 + 16) = v158 + 1;
            v159 = (v141 + 24 * v158);
            v159[4] = v148;
            v159[5] = v150;
            v159[6] = v151;
            v142 = v143;
          }

          while (v144 != v140);

          v143, v160, v161, v162, v163, v164, v165, v166;
          sub_1BD9D35F8(v189, type metadata accessor for Passes);
          result = sub_1BD0DE53C(v190, &qword_1EBD45480, &unk_1BE0B8C30);
          v79 = v192;
          goto LABEL_57;
        }

        __break(1u);
        goto LABEL_59;
      }
    }

    v133, v167, v168, v169, v170, v171, v172, v173;
    sub_1BD9D35F8(v189, type metadata accessor for Passes);
    result = sub_1BD0DE53C(v190, &qword_1EBD45480, &unk_1BE0B8C30);
    v141 = MEMORY[0x1E69E7CC0];
LABEL_57:
    *(v79 + v191[12]) = v141;
    return result;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_1BD9D2974(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  return sub_1BE053074() & 1;
}

uint64_t sub_1BD9D29F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeferredPaymentRequest(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380, &qword_1BE10B380);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v191 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AF30, &qword_1BE10B428);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v191 - v12;
  if (!sub_1BD1CB32C(a1, a2))
  {
    goto LABEL_18;
  }

  v14 = _s14PaymentSummaryVMa(0);
  if ((sub_1BD3FE5A4(*(a1 + v14[5]), *(a2 + v14[5])) & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = v14[6];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_18;
  }

  v207 = v11;
  v208 = v5;
  v205 = v7;
  v206 = v10;
  v209 = v4;
  v210 = v13;
  v211 = v14;
  v20 = v14[7];
  v22 = *(a1 + v20);
  v21 = *(a1 + v20 + 8);
  v23 = *(a1 + v20 + 16);
  v212 = *(a1 + v20 + 24);
  v24 = (a2 + v20);
  v26 = *v24;
  v25 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  if (!v21)
  {
    if (!v25)
    {
      goto LABEL_21;
    }

LABEL_16:
    sub_1BD2726F8(*v24, v24[1], v24[2], v24[3]);
    v52 = v212;
    sub_1BD2726F8(v22, v21, v23, v212);
    sub_1BD27273C(v22, v21, v23, v52, v53, v54, v55, v56);
    v48 = v26;
    v49 = v25;
    v50 = v27;
    v51 = v28;
    goto LABEL_17;
  }

  if (!v25)
  {
    goto LABEL_16;
  }

  if ((v22 != v26 || v21 != v25) && (sub_1BE053B84() & 1) == 0)
  {
    sub_1BD2726F8(v26, v25, v27, v28);
    v91 = v212;
    sub_1BD2726F8(v22, v21, v23, v212);
    v28, v92, v93, v94, v95, v96, v97, v98;
    v25, v99, v100, v101, v102, v103, v104, v105;
    v48 = v22;
    v49 = v21;
    v50 = v23;
    v51 = v91;
    goto LABEL_17;
  }

  LODWORD(v204) = v27 ^ v23;
  sub_1BD2726F8(v26, v25, v27, v28);
  v29 = v212;
  sub_1BD2726F8(v22, v21, v23, v212);
  if ((v204 & 1) == 0)
  {
    v59 = sub_1BD3FE590(v29, v28);
    v28, v60, v61, v62, v63, v64, v65, v66;
    v25, v67, v68, v69, v70, v71, v72, v73;
    sub_1BD27273C(v22, v21, v23, v29, v74, v75, v76, v77);
    if ((v59 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v78 = v211;
    if (*(a1 + v211[8]) != *(a2 + v211[8]))
    {
      goto LABEL_18;
    }

    v79 = (a1 + v211[9]);
    v80 = v79[1];
    v81 = v79[3];
    v230 = v79[2];
    v231 = v81;
    v82 = v79[1];
    v229[0] = *v79;
    v229[1] = v82;
    v83 = (a2 + v211[9]);
    v84 = v83[3];
    v232[2] = v83[2];
    v232[3] = v84;
    v85 = v83[1];
    v232[0] = *v83;
    v232[1] = v85;
    v86 = v229[0];
    v226 = v80;
    v227 = v230;
    v228 = v79[3];
    if (*(&v229[0] + 1))
    {
      if (*(&v232[0] + 1))
      {
        v213 = v232[0];
        v87 = v83[2];
        v214 = v83[1];
        v215 = v87;
        v216 = v83[3];
        v220 = v87;
        v221 = v216;
        v218 = v232[0];
        v219 = v214;
        v88 = v79[1];
        v89 = v79[2];
        v233[3] = v79[3];
        v233[2] = v89;
        v233[1] = v88;
        v233[0] = v229[0];
        sub_1BD0DE19C(v229, v217, &qword_1EBD41378, &qword_1BE10B430);
        sub_1BD0DE19C(v232, v217, &qword_1EBD41378, &qword_1BE10B430);
        v90 = sub_1BD9E3E98(v233, &v218);
        sub_1BD0DE53C(&v213, &qword_1EBD41378, &qword_1BE10B430);
        v217[0] = v86;
        v217[1] = v226;
        v217[2] = v227;
        v217[3] = v228;
        sub_1BD0DE53C(v217, &qword_1EBD41378, &qword_1BE10B430);
        if ((v90 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_30:
        v109 = v78[10];
        v110 = *(a1 + v109);
        v111 = *(a1 + v109 + 8);
        v112 = *(a1 + v109 + 16);
        v113 = *(a1 + v109 + 24);
        v114 = *(a1 + v109 + 32);
        v115 = *(a1 + v109 + 40);
        v116 = *(a1 + v109 + 48);
        v117 = (a2 + v109);
        v118 = *v117;
        v119 = v117[1];
        v212 = v117[2];
        v204 = v117[3];
        v120 = v117[4];
        v201 = v118;
        v202 = v120;
        v121 = v117[5];
        v200 = v117[6];
        v203 = v121;
        if (v111)
        {
          if (v119)
          {
            v199 = v112;
            v195 = v111;
            v196 = v113;
            v194 = v110;
            if ((v110 != v118 || v111 != v119) && (v122 = v115, v123 = v116, v124 = v119, v125 = sub_1BE053B84(), v119 = v124, v116 = v123, v115 = v122, v113 = v196, v112 = v199, (v125 & 1) == 0) || (v112 != v212 || v113 != v204) && (v126 = v113, v127 = v115, v128 = v116, v129 = v119, v130 = sub_1BE053B84(), v119 = v129, v116 = v128, v115 = v127, v113 = v126, v112 = v199, v111 = v195, (v130 & 1) == 0))
            {
              v147 = v112;
              v192 = v114;
              v148 = v115;
              v149 = v116;
              v150 = v119;
              sub_1BD2ED8B0(v110, v111, v147, v113, v114, v115, v116);
              v152 = v201;
              v151 = v202;
              v153 = v212;
              v155 = v203;
              v154 = v204;
              v156 = v200;
              sub_1BD2ED8B0(v201, v150, v212, v204, v202, v203, v200);
              sub_1BD2ED910(v152, v150, v153, v154, v151, v155, v156, v157);
              sub_1BD2ED910(v194, v195, v199, v196, v192, v148, v149, v158);
              goto LABEL_18;
            }

            v198 = v119;
            v193 = v116;
            if (v115)
            {
              if (!v203)
              {
                v134 = 0;
                goto LABEL_58;
              }

              if (v114 != v202 || v115 != v203)
              {
                v131 = v115;
                v132 = v116;
                v133 = sub_1BE053B84();
                v116 = v132;
                v115 = v131;
                v112 = v199;
                if ((v133 & 1) == 0)
                {
                  v134 = v203;
LABEL_58:
                  v161 = v115;
                  goto LABEL_59;
                }
              }
            }

            else if (v203)
            {
              v134 = v203;
              v161 = 0;
LABEL_59:
              v178 = v112;
              v179 = v114;
              sub_1BD2ED8B0(v110, v111, v178, v113, v114, v161, v116);
              v180 = v201;
              v181 = v202;
              v182 = v198;
              v183 = v212;
              v184 = v204;
              v185 = v200;
              sub_1BD2ED8B0(v201, v198, v212, v204, v202, v134, v200);
              sub_1BD2ED910(v180, v182, v183, v184, v181, v134, v185, v186);
              sub_1BD2ED910(v194, v195, v199, v196, v179, v115, v193, v187);
              goto LABEL_18;
            }

            v191 = sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
            v192 = v114;
            v197 = v115;
            sub_1BD2ED8B0(v110, v111, v112, v113, v114, v115, v193);
            v162 = v201;
            v163 = v198;
            v164 = v212;
            v165 = v204;
            v166 = v200;
            sub_1BD2ED8B0(v201, v198, v212, v204, v202, v203, v200);
            v167 = sub_1BE053074();
            sub_1BD2ED910(v162, v163, v164, v165, v202, v203, v166, v168);
            sub_1BD2ED910(v194, v195, v199, v196, v192, v197, v193, v169);
            if ((v167 & 1) == 0)
            {
              goto LABEL_18;
            }

LABEL_51:
            v170 = v78[11];
            v171 = *(v207 + 48);
            v172 = v210;
            sub_1BD0DE19C(a1 + v170, v210, &qword_1EBD41380, &qword_1BE10B380);
            v173 = a2 + v170;
            v174 = v172;
            sub_1BD0DE19C(v173, v172 + v171, &qword_1EBD41380, &qword_1BE10B380);
            v175 = v209;
            v176 = *(v208 + 48);
            if (v176(v172, 1, v209) == 1)
            {
              if (v176(v172 + v171, 1, v175) == 1)
              {
                sub_1BD0DE53C(v172, &qword_1EBD41380, &qword_1BE10B380);
                goto LABEL_61;
              }
            }

            else
            {
              v177 = v206;
              sub_1BD0DE19C(v174, v206, &qword_1EBD41380, &qword_1BE10B380);
              if (v176(v174 + v171, 1, v175) != 1)
              {
                v188 = v174 + v171;
                v189 = v205;
                sub_1BD9D3658(v188, v205, type metadata accessor for DeferredPaymentRequest);
                v190 = sub_1BD9D4100(v177, v189);
                sub_1BD9D35F8(v189, type metadata accessor for DeferredPaymentRequest);
                sub_1BD9D35F8(v177, type metadata accessor for DeferredPaymentRequest);
                sub_1BD0DE53C(v174, &qword_1EBD41380, &qword_1BE10B380);
                if ((v190 & 1) == 0)
                {
                  goto LABEL_18;
                }

LABEL_61:
                sub_1BD3FE5B8(*(a1 + v78[12]), *(a2 + v78[12]));
                return v57 & 1;
              }

              sub_1BD9D35F8(v177, type metadata accessor for DeferredPaymentRequest);
            }

            sub_1BD0DE53C(v174, &qword_1EBD5AF30, &qword_1BE10B428);
            goto LABEL_18;
          }
        }

        else if (!v119)
        {
          v199 = v112;
          v159 = v116;
          sub_1BD2ED8B0(v110, 0, v112, v113, v114, v115, v116);
          sub_1BD2ED8B0(v201, 0, v212, v204, v202, v203, v200);
          sub_1BD2ED910(v110, 0, v199, v113, v114, v115, v159, v160);
          goto LABEL_51;
        }

        v135 = v118;
        v136 = v111;
        v137 = v111;
        v197 = v115;
        v198 = v119;
        v138 = v116;
        v139 = v119;
        sub_1BD2ED8B0(v110, v137, v112, v113, v114, v115, v116);
        v140 = v135;
        v141 = v139;
        v142 = v203;
        v143 = v202;
        v144 = v200;
        sub_1BD2ED8B0(v140, v141, v212, v204, v202, v203, v200);
        sub_1BD2ED910(v110, v136, v112, v113, v114, v197, v138, v145);
        sub_1BD2ED910(v201, v198, v212, v204, v143, v142, v144, v146);
        goto LABEL_18;
      }
    }

    else if (!*(&v232[0] + 1))
    {
      v218 = *&v229[0];
      v108 = v79[2];
      v219 = v79[1];
      v220 = v108;
      v221 = v79[3];
      sub_1BD0DE19C(v229, v233, &qword_1EBD41378, &qword_1BE10B430);
      sub_1BD0DE19C(v232, v233, &qword_1EBD41378, &qword_1BE10B430);
      sub_1BD0DE53C(&v218, &qword_1EBD41378, &qword_1BE10B430);
      goto LABEL_30;
    }

    v218 = v229[0];
    v106 = v79[2];
    v219 = v79[1];
    v220 = v106;
    v221 = v79[3];
    v222 = v232[0];
    v107 = v83[2];
    v223 = v83[1];
    v224 = v107;
    v225 = v83[3];
    sub_1BD0DE19C(v229, v233, &qword_1EBD41378, &qword_1BE10B430);
    sub_1BD0DE19C(v232, v233, &qword_1EBD41378, &qword_1BE10B430);
    sub_1BD0DE53C(&v218, &qword_1EBD5AF38, &qword_1BE10B438);
    goto LABEL_18;
  }

  v28, v30, v31, v32, v33, v34, v35, v36;
  v25, v37, v38, v39, v40, v41, v42, v43;
  v48 = v22;
  v49 = v21;
  v50 = v23;
  v51 = v29;
LABEL_17:
  sub_1BD27273C(v48, v49, v50, v51, v44, v45, v46, v47);
LABEL_18:
  v57 = 0;
  return v57 & 1;
}

uint64_t sub_1BD9D3594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Passes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9D35F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD9D3658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD9D36C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380, &qword_1BE10B380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FinanceKitTransactionDebugView(uint64_t a1)
{
  result = qword_1EBD5AF48;
  if (!qword_1EBD5AF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD9D37A4(uint64_t a1)
{
  result = sub_1BE04AFE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD9D382C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v30 - v1;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1BE053834();
  v31, v3, v4, v5, v6, v7, v8, v9;
  v30 = 0xD00000000000001CLL;
  v31 = 0x80000001BE146460;
  v10 = sub_1BE04AF74();
  v12 = v11;
  MEMORY[0x1BFB3F610](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = v31;
  sub_1BE04AA54();
  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = sub_1BE04AA64();
  result = (*(*(v28 - 8) + 48))(v2, 1, v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    return sub_1BE0504B4();
  }

  return result;
}

void sub_1BD9D3A30(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x80000001BE1464A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BD9D3A60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE051574();
  *a1 = result;
  return result;
}

uint64_t sub_1BD9D3AA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AF58, &qword_1BE10B4C0);
  sub_1BD0DE4F4(&qword_1EBD5AF60, &qword_1EBD5AF58, &qword_1BE10B4C0, MEMORY[0x1E697CD10]);
  return sub_1BE051A24();
}

unint64_t sub_1BD9D3B7C()
{
  result = qword_1EBD5AF68;
  if (!qword_1EBD5AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AF70, &qword_1BE10B4C8);
    sub_1BD0DE4F4(&qword_1EBD5AF60, &qword_1EBD5AF58, &qword_1BE10B4C0, MEMORY[0x1E697CD10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AF68);
  }

  return result;
}

uint64_t type metadata accessor for DeferredPaymentRequest(uint64_t a1)
{
  result = qword_1EBD5AF78;
  if (!qword_1EBD5AF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9D3CB4(uint64_t a1)
{
  sub_1BD1C86BC();
  if (v1 <= 0x3F)
  {
    sub_1BD9D3DC0(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1BD9D3DC0(319, &qword_1EBD3A738, MEMORY[0x1E6969BC0]);
      if (v3 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD5AF88, 0x1E69B87A0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD9D3DC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1BD9D3E14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - v12;
  v14 = [a1 paymentDescription];
  v15 = sub_1BE052434();
  v17 = v16;

  v18 = [a1 billingAgreement];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BE052434();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [a1 freeCancellationDate];
  if (v23)
  {
    v24 = v23;
    sub_1BE04AEE4();

    v25 = sub_1BE04AF64();
    (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
  }

  else
  {
    v26 = sub_1BE04AF64();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  }

  v27 = [a1 freeCancellationDateTimeZone];
  if (v27)
  {
    v28 = v27;
    sub_1BE04B394();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = sub_1BE04B3B4();
  (*(*(v30 - 8) + 56))(v9, v29, 1, v30);
  v31 = [a1 deferredBilling];

  *a4 = v15;
  a4[1] = v17;
  v32 = v36;
  a4[2] = a2;
  a4[3] = v32;
  a4[4] = v20;
  a4[5] = v22;
  v33 = type metadata accessor for DeferredPaymentRequest(0);
  sub_1BD0DE204(v13, a4 + v33[7], &unk_1EBD39970, &unk_1BE0B9F80);
  result = sub_1BD0DE204(v9, a4 + v33[8], &unk_1EBD3D260, &unk_1BE0C0F20);
  *(a4 + v33[9]) = v31;
  return result;
}

uint64_t sub_1BD9D4104(void *a1, void *a2)
{
  v4 = sub_1BE04B3B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v43 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A748, &qword_1BE10B510);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v43 - v10;
  v11 = sub_1BE04AF64();
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750, &unk_1BE0D3540);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  if (*a1 != *a2 && (sub_1BE053B84() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_27;
  }

  v20 = a1[5];
  v21 = a2[5];
  if (v20)
  {
    if (!v21 || (a1[4] != a2[4] || v20 != v21) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v21)
  {
    goto LABEL_27;
  }

  v46 = v7;
  v43 = v5;
  v44 = v4;
  v45 = type metadata accessor for DeferredPaymentRequest(0);
  v22 = *(v45 + 28);
  v23 = *(v17 + 48);
  sub_1BD0DE19C(a1 + v22, v19, &unk_1EBD39970, &unk_1BE0B9F80);
  sub_1BD0DE19C(a2 + v22, &v19[v23], &unk_1EBD39970, &unk_1BE0B9F80);
  v24 = *(v50 + 48);
  if (v24(v19, 1, v11) != 1)
  {
    sub_1BD0DE19C(v19, v16, &unk_1EBD39970, &unk_1BE0B9F80);
    v27 = v24(&v19[v23], 1, v11);
    v26 = v46;
    if (v27 != 1)
    {
      v30 = v50;
      (*(v50 + 32))(v13, &v19[v23], v11);
      sub_1BD16009C(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v31 = sub_1BE052334();
      v32 = *(v30 + 8);
      v32(v13, v11);
      v32(v16, v11);
      sub_1BD0DE53C(v19, &unk_1EBD39970, &unk_1BE0B9F80);
      if ((v31 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    (*(v50 + 8))(v16, v11);
LABEL_18:
    v28 = &qword_1EBD3A750;
    v29 = &unk_1BE0D3540;
LABEL_26:
    sub_1BD0DE53C(v19, v28, v29);
    goto LABEL_27;
  }

  v25 = v24(&v19[v23], 1, v11);
  v26 = v46;
  if (v25 != 1)
  {
    goto LABEL_18;
  }

  sub_1BD0DE53C(v19, &unk_1EBD39970, &unk_1BE0B9F80);
LABEL_20:
  v33 = *(v45 + 32);
  v19 = v49;
  v34 = *(v48 + 48);
  sub_1BD0DE19C(a1 + v33, v49, &unk_1EBD3D260, &unk_1BE0C0F20);
  sub_1BD0DE19C(a2 + v33, &v19[v34], &unk_1EBD3D260, &unk_1BE0C0F20);
  v36 = v43;
  v35 = v44;
  v37 = *(v43 + 48);
  if (v37(v19, 1, v44) == 1)
  {
    if (v37(&v19[v34], 1, v35) == 1)
    {
      sub_1BD0DE53C(v19, &unk_1EBD3D260, &unk_1BE0C0F20);
LABEL_30:
      sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
      v39 = sub_1BE053074();
      return v39 & 1;
    }

    goto LABEL_25;
  }

  v38 = v47;
  sub_1BD0DE19C(v19, v47, &unk_1EBD3D260, &unk_1BE0C0F20);
  if (v37(&v19[v34], 1, v35) == 1)
  {
    (*(v36 + 8))(v38, v35);
LABEL_25:
    v28 = &qword_1EBD3A748;
    v29 = &qword_1BE10B510;
    goto LABEL_26;
  }

  (*(v36 + 32))(v26, &v19[v34], v35);
  sub_1BD16009C(&qword_1EBD3A758, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
  v41 = sub_1BE052334();
  v42 = *(v36 + 8);
  v42(v26, v35);
  v42(v38, v35);
  sub_1BD0DE53C(v19, &unk_1EBD3D260, &unk_1BE0C0F20);
  if (v41)
  {
    goto LABEL_30;
  }

LABEL_27:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_1BD9D4804@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFE4();
  *a1 = result & 1;
  return result;
}

uint64_t PKAccountPromotionCollectionViewCell.configure(promotion:remoteImagePreparer:actionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v10);
  objc_allocWithZone(type metadata accessor for AccountPromotionViewModel(0));
  v11 = sub_1BD36B3CC(a1);
  MEMORY[0x1EEE9AC00](v11);
  v15[-6] = v12;
  v15[-5] = v5;
  v15[-4] = a3;
  v15[-3] = a4;
  v15[-2] = a2;
  v13 = v12;
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AF90, &qword_1BE10B518);
  v15[4] = sub_1BD9D4D54();
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1BD9D4DB8();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FEF0](v15);

  return 1;
}

id sub_1BD9D4B28@<X0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = [a1 contentView];
  [v10 directionalLayoutMargins];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  type metadata accessor for AccountPromotionViewModel(0);
  sub_1BD9D4E0C();
  v19 = a2;
  v20 = sub_1BE04E954();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00, &qword_1BE0C85C0);
  sub_1BE051694();
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  *a6 = v20;
  *(a6 + 8) = v22;
  *(a6 + 16) = v12;
  *(a6 + 24) = v14;
  *(a6 + 32) = v16;
  *(a6 + 40) = v18;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  *(a6 + 64) = v27;
  *(a6 + 72) = v28;
  *(a6 + 80) = KeyPath;
  *(a6 + 88) = 0;
  *(a6 + 96) = v24;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  sub_1BE048964();

  return a5;
}

unint64_t sub_1BD9D4D54()
{
  result = qword_1EBD5AF98;
  if (!qword_1EBD5AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AF90, &qword_1BE10B518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AF98);
  }

  return result;
}

unint64_t sub_1BD9D4DB8()
{
  result = qword_1EBD5AFA0;
  if (!qword_1EBD5AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AFA0);
  }

  return result;
}

unint64_t sub_1BD9D4E0C()
{
  result = qword_1EBD5AFA8;
  if (!qword_1EBD5AFA8)
  {
    type metadata accessor for AccountPromotionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AFA8);
  }

  return result;
}

unint64_t TileContextDetailsTableViewLayoutStyle.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

id TileContextDetailsTableViewEntry.__allocating_init(title:detail:style:axID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  sub_1BE04AFD4();
  v16 = &v15[OBJC_IVAR___PKTileContextDetailsTableViewEntry_content];
  *v16 = a1;
  *(v16 + 1) = a2;
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v17 = &v15[OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID];
  *v17 = a6;
  *(v17 + 1) = a7;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id TileContextDetailsTableViewEntry.init(title:detail:style:axID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1BE04AFD4();
  v15 = &v7[OBJC_IVAR___PKTileContextDetailsTableViewEntry_content];
  *v15 = a1;
  *(v15 + 1) = a2;
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = a5;
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v16 = &v7[OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID];
  *v16 = a6;
  *(v16 + 1) = a7;
  v18.receiver = v7;
  v18.super_class = type metadata accessor for TileContextDetailsTableViewEntry(0);
  return objc_msgSendSuper2(&v18, sel_init);
}

id TileContextDetailsTableViewEntry.__allocating_init(title:actionURL:axID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  sub_1BE04AFD4();
  v12 = &v11[OBJC_IVAR___PKTileContextDetailsTableViewEntry_content];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFB8, &unk_1BE10B580) + 48);
  *v12 = a1;
  *(v12 + 1) = a2;
  v14 = sub_1BE04AA64();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v12[v13], a3, v14);
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v16 = &v11[OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v15 + 8))(a3, v14);
  return v17;
}

id TileContextDetailsTableViewEntry.init(title:actionURL:axID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BE04AFD4();
  v11 = &v5[OBJC_IVAR___PKTileContextDetailsTableViewEntry_content];
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFB8, &unk_1BE10B580) + 48);
  *v11 = a1;
  *(v11 + 1) = a2;
  v13 = sub_1BE04AA64();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a3, v13);
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v15 = &v5[OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID];
  *v15 = a4;
  *(v15 + 1) = a5;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for TileContextDetailsTableViewEntry(0);
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v14 + 8))(a3, v13);
  return v16;
}

uint64_t sub_1BD9D5594(uint64_t a1)
{
  sub_1BD0DE19C(a1, v5, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  if (!v6)
  {
    sub_1BD0DE53C(v5, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    goto LABEL_5;
  }

  type metadata accessor for TileContextDetailsTableViewEntry(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_1BD9D7C04(v1 + OBJC_IVAR___PKTileContextDetailsTableViewEntry_content, v4 + OBJC_IVAR___PKTileContextDetailsTableViewEntry_content);

  return v2 & 1;
}

uint64_t TileContextDetailsTableViewEntry.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PKTileContextDetailsTableViewEntry_uniqueIdentifier;
  v4 = sub_1BE04AFE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BD9D585C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___PKTileContextDetailsTableViewEntry_uniqueIdentifier;
  v5 = sub_1BE04AFE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BD9D58D8@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v105 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B080, &qword_1BE10B908);
  MEMORY[0x1EEE9AC00](v104);
  v95 = &v81 - v3;
  v96 = sub_1BE04AA64();
  v94 = *(v96 - 1);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B088, &qword_1BE10B910);
  MEMORY[0x1EEE9AC00](v103);
  v6 = &v81 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B090, &qword_1BE10B918);
  MEMORY[0x1EEE9AC00](v87);
  v8 = &v81 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B098, &qword_1BE10B920);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v81 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0A0, &qword_1BE10B928);
  MEMORY[0x1EEE9AC00](v102);
  v89 = &v81 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0A8, &unk_1BE10B930);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v81 - v11;
  v12 = sub_1BE04FF64();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47240, &qword_1BE0D9278);
  MEMORY[0x1EEE9AC00](v82);
  v16 = &v81 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0B0, &qword_1BE10B940);
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v18 = &v81 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0B8, &qword_1BE10B948);
  MEMORY[0x1EEE9AC00](v98);
  v84 = &v81 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0C0, &qword_1BE10B950);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v81 - v23;
  v24 = type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = a1;
  sub_1BD9D85D4(&a1[OBJC_IVAR___PKTileContextDetailsTableViewEntry_content], v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = *v26;
  v30 = v26[1];
  if (EnumCaseMultiPayload == 1)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFB8, &unk_1BE10B580);
    v32 = v94;
    v33 = v26 + *(v31 + 48);
    v34 = v93;
    v35 = v96;
    (*(v94 + 32))(v93, v33, v96);
    v36 = v95;
    sub_1BD9D639C(v29, v30, v34, v27, v95);
    v30, v37, v38, v39, v40, v41, v42, v43;
    sub_1BD0DE19C(v36, v6, &qword_1EBD5B080, &qword_1BE10B908);
    swift_storeEnumTagMultiPayload();
    sub_1BD9D88B0();
    sub_1BD9D8C44();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v36, &qword_1EBD5B080, &qword_1BE10B908);
    return (*(v32 + 8))(v34, v35);
  }

  v94 = v20;
  v95 = v27;
  v96 = v6;
  v45 = v26[2];
  v46 = v26[3];
  v47 = v26[4];
  if (v47)
  {
    if (v47 != 1)
    {
      v106 = v26[4];
      result = sub_1BE053BE4();
      __break(1u);
      return result;
    }

    v49 = v30;
    *v16 = sub_1BE04F7C4();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47218, &qword_1BE0D9260);
    sub_1BD9D66BC(v29, v30, v45, v46, &v16[*(v61 + 44)]);
    sub_1BE04FF44();
    v62 = sub_1BD0DE4F4(&qword_1EBD47238, &qword_1EBD47240, &qword_1BE0D9278, MEMORY[0x1E6981870]);
    v63 = v82;
    sub_1BE050D14();
    (*(v91 + 8))(v14, v92);
    sub_1BD0DE53C(v16, &qword_1EBD47240, &qword_1BE0D9278);
    v106 = v63;
    v107 = v62;
    swift_getOpaqueTypeConformance2();
    v64 = v84;
    v65 = v85;
    sub_1BE050DE4();
    (*(v83 + 8))(v18, v65);
    v57 = &qword_1EBD5B0B8;
    v58 = &qword_1BE10B948;
    sub_1BD0DE19C(v64, v101, &qword_1EBD5B0B8, &qword_1BE10B948);
    swift_storeEnumTagMultiPayload();
    sub_1BD9D893C();
    sub_1BD9D8A68();
    v59 = v97;
    sub_1BE04F9A4();
    v60 = v64;
  }

  else
  {
    *v8 = sub_1BE04F4B4();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B120, &qword_1BE10B980);
    v49 = v30;
    sub_1BD9D6AE4(v29, v30, v45, v46, &v8[*(v48 + 44)]);
    KeyPath = swift_getKeyPath();
    v51 = v87;
    v52 = &v8[*(v87 + 36)];
    *v52 = KeyPath;
    *(v52 + 1) = 1;
    v52[16] = 0;
    sub_1BE04FF44();
    v53 = sub_1BD9D8B60();
    v54 = v86;
    sub_1BE050D14();
    (*(v91 + 8))(v14, v92);
    sub_1BD0DE53C(v8, &qword_1EBD5B090, &qword_1BE10B918);
    v106 = v51;
    v107 = v53;
    swift_getOpaqueTypeConformance2();
    v56 = v89;
    v55 = v90;
    sub_1BE050DE4();
    (*(v88 + 8))(v54, v55);
    v57 = &qword_1EBD5B0A0;
    v58 = &qword_1BE10B928;
    sub_1BD0DE19C(v56, v101, &qword_1EBD5B0A0, &qword_1BE10B928);
    swift_storeEnumTagMultiPayload();
    sub_1BD9D893C();
    sub_1BD9D8A68();
    v59 = v97;
    sub_1BE04F9A4();
    v60 = v56;
  }

  sub_1BD0DE53C(v60, v57, v58);
  v66 = v99;
  sub_1BD0CA84C(v59, v99);
  v49, v67, v68, v69, v70, v71, v72, v73;
  v46, v74, v75, v76, v77, v78, v79, v80;
  sub_1BD0DE19C(v66, v96, &qword_1EBD5B0C0, &qword_1BE10B950);
  swift_storeEnumTagMultiPayload();
  sub_1BD9D88B0();
  sub_1BD9D8C44();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v66, &qword_1EBD5B0C0, &qword_1BE10B950);
}

uint64_t sub_1BD9D639C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v28 = a5;
  v23 = a1;
  v24 = a3;
  v6 = sub_1BE04FF64();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04AA64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B100, &qword_1BE10B968);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B130, &qword_1BE10B9D8);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  v29 = v23;
  v30 = a2;
  (*(v10 + 16))(v12, v24, v9, v18);
  sub_1BD0DDEBC();
  sub_1BE048C84();
  sub_1BE0504C4();
  sub_1BE04E884();
  sub_1BE04FF44();
  v21 = sub_1BD9D8D3C();
  sub_1BE050D14();
  (*(v25 + 8))(v8, v26);
  sub_1BD0DE53C(v15, &qword_1EBD5B100, &qword_1BE10B968);
  v29 = v13;
  v30 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1BD9D66BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v106 = a3;
  v107 = a4;
  v112 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v106 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v108 = *(v12 - 8);
  v109 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v106 - v16;
  v113 = a1;
  v114 = a2;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  v113 = v18;
  v114 = v19;
  v24 = (v23 & 1);
  v115 = v23 & 1;
  v116 = v21;
  sub_1BE052434();
  v26 = v25;
  v111 = v17;
  sub_1BE050DE4();
  v26, v27, v28, v29, v30, v31, v32, v33;
  sub_1BD0DDF10(v18, v20, v24, v34, v35, v36, v37, v38);
  v22, v39, v40, v41, v42, v43, v44, v45;
  if (v107)
  {
    v113 = v106;
    v114 = v107;
    sub_1BE048C84();
    v46 = sub_1BE0506C4();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = [objc_opt_self() secondaryLabelColor];
    v54 = sub_1BE0511C4();
    v55 = sub_1BE050564();
    v57 = v56;
    v59 = v58;
    v107 = v9;
    v61 = v60;
    v54, v56, v58, v60, v62, v63, v64, v65;
    sub_1BD0DDF10(v46, v48, (v50 & 1), v66, v67, v68, v69, v70);
    v52, v71, v72, v73, v74, v75, v76, v77;
    v113 = v55;
    v114 = v57;
    v115 = v59 & 1;
    v116 = v61;
    sub_1BE052434();
    v79 = v78;
    sub_1BE050DE4();
    v79, v80, v81, v82, v83, v84, v85, v86;
    sub_1BD0DDF10(v55, v57, (v59 & 1), v87, v88, v89, v90, v91);
    v92 = v61;
    v9 = v107;
    v92, v93, v94, v95, v96, v97, v98, v99;
    v100 = v110;
    sub_1BD0DE204(v14, v110, &qword_1EBD452C0, &qword_1BE0B7620);
    v101 = 0;
  }

  else
  {
    v101 = 1;
    v100 = v110;
  }

  (*(v108 + 56))(v100, v101, 1, v109);
  v102 = v111;
  sub_1BD0DE19C(v111, v14, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE19C(v100, v9, &unk_1EBD5BB60, &qword_1BE0C4580);
  v103 = v112;
  sub_1BD0DE19C(v14, v112, &qword_1EBD452C0, &qword_1BE0B7620);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47228, &qword_1BE0D9270);
  sub_1BD0DE19C(v9, v103 + *(v104 + 48), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v100, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v102, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v9, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v14, &qword_1EBD452C0, &qword_1BE0B7620);
}
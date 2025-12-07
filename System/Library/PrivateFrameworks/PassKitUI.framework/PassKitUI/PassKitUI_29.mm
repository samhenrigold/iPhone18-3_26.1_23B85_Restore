uint64_t sub_1BD32AB8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD32ABC8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t NearbyPeerPaymentReceiverVFXViewController.setState(_:completion:)(uint64_t a1, uint64_t a2, void *a3)
{
  v160 = a3;
  v6 = sub_1BE04D214();
  v163 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v156[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v166 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v156[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v156[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v156[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v156[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v156[-v20];
  v22 = OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_state;
  swift_beginAccess();
  v161 = v22;
  v23 = v3 + v22;
  v24 = v3;
  sub_1BD26681C(v23, v21);
  sub_1BE04D094();
  v165 = v21;
  sub_1BD26681C(v21, v18);
  sub_1BD26681C(a1, v15);
  v162 = v8;
  v25 = sub_1BE04D204();
  v26 = sub_1BE052C54();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v159 = a2;
    v28 = v27;
    v29 = swift_slowAlloc();
    v167[0] = v29;
    *v28 = 136315394;
    v157 = v26;
    v30 = NearbyPeerPaymentReceiverState.description.getter();
    v158 = v6;
    v31 = v12;
    v32 = a1;
    v33 = v24;
    v35 = v34;
    sub_1BD32E45C(v18);
    v36 = sub_1BD123690(v30, v35, v167);
    v37 = v35;
    v24 = v33;
    a1 = v32;
    v12 = v31;
    v37, v38, v39, v40, v41, v42, v43, v44;
    *(v28 + 4) = v36;
    *(v28 + 12) = 2080;
    v45 = NearbyPeerPaymentReceiverState.description.getter();
    v47 = v46;
    sub_1BD32E45C(v15);
    v48 = sub_1BD123690(v45, v47, v167);
    v47, v49, v50, v51, v52, v53, v54, v55;
    *(v28 + 14) = v48;
    _os_log_impl(&dword_1BD026000, v25, v157, "NearbyPeerPayment/VFX: Receiver state changed from: %s to: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v29, -1, -1);
    v56 = v28;
    a2 = v159;
    MEMORY[0x1BFB45F20](v56, -1, -1);

    (*(v163 + 8))(v162, v158);
  }

  else
  {

    sub_1BD32E45C(v15);
    sub_1BD32E45C(v18);
    (*(v163 + 8))(v162, v6);
  }

  v57 = v161;
  swift_beginAccess();
  sub_1BD32E4B8(a1, v24 + v57);
  swift_endAccess();
  sub_1BD26681C(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1BD32E45C(v12);
        v62 = MEMORY[0x1E69E7CC0];
        goto LABEL_34;
      }

      v163 = a1;
      sub_1BD32E45C(v12);
      v59 = swift_allocObject();
      *(v59 + 16) = v24;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_1BD330624;
      *(v60 + 24) = v59;
      v61 = v24;
      v62 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v64 = v62[2];
      v63 = v62[3];
      v65 = v64 + 1;
      v66 = a2;
      if (v64 >= v63 >> 1)
      {
        v62 = sub_1BD1D7BB0((v63 > 1), (v64 + 1), 1, v62);
      }

      v62[2] = v65;
      v67 = &v62[2 * v64];
      v67[4] = sub_1BD330914;
      v67[5] = v60;
      v68 = swift_allocObject();
      *(v68 + 16) = v61;
      v69 = swift_allocObject();
      *(v69 + 16) = sub_1BD33062C;
      *(v69 + 24) = v68;
      v70 = v62[3];
      v71 = v61;
      if (v65 >= v70 >> 1)
      {
        v62 = sub_1BD1D7BB0((v70 > 1), (v64 + 2), 1, v62);
      }

      a2 = v66;
      v62[2] = v64 + 2;
      v72 = &v62[2 * v65];
      v72[4] = sub_1BD330914;
      v72[5] = v69;
      v73 = swift_allocObject();
      *(v73 + 16) = v71;
      v74 = swift_allocObject();
      *(v74 + 16) = sub_1BD330634;
      *(v74 + 24) = v73;
      v75 = v62[2];
      v76 = v62[3];
      v77 = v71;
      if (v75 >= v76 >> 1)
      {
        v62 = sub_1BD1D7BB0((v76 > 1), (v75 + 1), 1, v62);
      }

      v62[2] = v75 + 1;
      v78 = &v62[2 * v75];
      v78[4] = sub_1BD330914;
      v78[5] = v74;
    }

    else
    {
      v163 = a1;
      v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680, &unk_1BE0CCB00) + 48);
      v162 = v12;
      *(v12 + v90 + 8), v91, v92, v93, v94, v95, v96, v97;
      v98 = swift_allocObject();
      *(v98 + 16) = v24;
      v99 = swift_allocObject();
      *(v99 + 16) = sub_1BD330658;
      *(v99 + 24) = v98;
      v100 = v24;
      v62 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v102 = v62[2];
      v101 = v62[3];
      v103 = v102 + 1;
      v104 = a2;
      if (v102 >= v101 >> 1)
      {
        v62 = sub_1BD1D7BB0((v101 > 1), (v102 + 1), 1, v62);
      }

      v62[2] = v103;
      v105 = &v62[2 * v102];
      v105[4] = sub_1BD330914;
      v105[5] = v99;
      v106 = swift_allocObject();
      *(v106 + 16) = v100;
      v107 = swift_allocObject();
      *(v107 + 16) = sub_1BD33067C;
      *(v107 + 24) = v106;
      v108 = v62[3];
      v109 = v100;
      if (v103 >= v108 >> 1)
      {
        v62 = sub_1BD1D7BB0((v108 > 1), (v102 + 2), 1, v62);
      }

      a2 = v104;
      v62[2] = v102 + 2;
      v110 = &v62[2 * v103];
      v110[4] = sub_1BD330914;
      v110[5] = v107;
      sub_1BD0DE53C(v162, &unk_1EBD3F690, &unk_1BE0DA4D0);
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v163 = a1;
    if (EnumCaseMultiPayload == 4)
    {
      v79 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      v62 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v88 = v62[2];
      v87 = v62[3];
      if (v88 >= v87 >> 1)
      {
        v62 = sub_1BD1D7BB0((v87 > 1), (v88 + 1), 1, v62);
      }

      v62[2] = v88 + 1;
      v89 = &v62[2 * v88];
      v89[4] = sub_1BD3306A0;
      v89[5] = v79;
      v79, v80, v81, v82, v83, v84, v85, v86;
    }

    else
    {
      v126 = swift_allocObject();
      *(v126 + 16) = v24;
      v127 = swift_allocObject();
      *(v127 + 16) = sub_1BD3305F8;
      *(v127 + 24) = v126;
      v128 = v24;
      v62 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v130 = v62[2];
      v129 = v62[3];
      v131 = v130 + 1;
      v132 = a2;
      if (v130 >= v129 >> 1)
      {
        v62 = sub_1BD1D7BB0((v129 > 1), (v130 + 1), 1, v62);
      }

      v62[2] = v131;
      v133 = &v62[2 * v130];
      v133[4] = sub_1BD330914;
      v133[5] = v127;
      v134 = swift_allocObject();
      *(v134 + 16) = v128;
      v135 = swift_allocObject();
      *(v135 + 16) = sub_1BD330600;
      *(v135 + 24) = v134;
      v136 = v62[3];
      v137 = v128;
      if (v131 >= v136 >> 1)
      {
        v62 = sub_1BD1D7BB0((v136 > 1), (v130 + 2), 1, v62);
      }

      a2 = v132;
      v62[2] = v130 + 2;
      v138 = &v62[2 * v131];
      v138[4] = sub_1BD330914;
      v138[5] = v135;
    }

LABEL_33:
    a1 = v163;
    goto LABEL_34;
  }

  v111 = v12;
  v112 = a1;
  v113 = swift_allocObject();
  *(v113 + 16) = v24;
  v114 = swift_allocObject();
  *(v114 + 16) = sub_1BD32E51C;
  *(v114 + 24) = v113;
  v115 = v24;
  v62 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v124 = v62[2];
  v123 = v62[3];
  if (v124 >= v123 >> 1)
  {
    v62 = sub_1BD1D7BB0((v123 > 1), (v124 + 1), 1, v62);
  }

  v62[2] = v124 + 1;
  v125 = &v62[2 * v124];
  v125[4] = sub_1BD32E540;
  v125[5] = v114;
  __swift_destroy_boxed_opaque_existential_0(v111, v116, v117, v118, v119, v120, v121, v122);
  a1 = v112;
LABEL_34:
  v139 = a1;
  v140 = v164;
  sub_1BD26681C(v139, v164);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    __swift_destroy_boxed_opaque_existential_0(v140, v141, v142, v143, v144, v145, v146, v147);
    sub_1BD51228C(v62, a2, v160);
  }

  else
  {
    sub_1BD32E45C(v140);
    sub_1BD5114BC(v62, a2, v160);
  }

  v62, v148, v149, v150, v151, v152, v153, v154;
  return sub_1BD32E45C(v165);
}

uint64_t NearbyPeerPaymentReceiverVFXViewController.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_state;
  swift_beginAccess();
  return sub_1BD26681C(v1 + v3, a1);
}

uint64_t NearbyPeerPaymentReceiverVFXViewController.animationDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbyPeerPaymentReceiverVFXViewController.animationDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BD317324;
}

id NearbyPeerPaymentReceiverVFXViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *NearbyPeerPaymentReceiverVFXViewController.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for NearbyPeerPaymentReceiverState(0);
  swift_storeEnumTagMultiPayload();
  *&v0[OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v6, sel_init);
  v3 = *&v2[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstA];
  v4 = v2;
  [v3 removeFromParentNode];
  [*&v4[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstB] removeFromParentNode];
  [*&v4[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferStatusParticles] removeFromParentNode];
  [*&v4[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRingParticles] removeFromParentNode];
  sub_1BD32BA44();
  sub_1BD632BE4();

  return v4;
}

void sub_1BD32BA44()
{
  v14 = 53;
  v13 = MEMORY[0x1E69E6448];
  v1 = MEMORY[0x1E69E6448];
  LODWORD(v12[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 54;
  v13 = v1;
  v2 = v1;
  LODWORD(v12[0]) = 1032134328;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 39;
  v3 = objc_opt_self();
  v4 = [v3 valueWithVFXFloat2_];
  v5 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
  v13 = v5;
  v12[0] = v4;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 49;
  v13 = v2;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 16;
  v11 = v3;
  v6 = [v3 valueWithVFXFloat2_];
  v13 = v5;
  v12[0] = v6;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 16;
  v7 = [v3 valueWithVFXFloat2_];
  v13 = v5;
  v12[0] = v7;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 2;
  v8 = MEMORY[0x1E69E6448];
  v13 = MEMORY[0x1E69E6448];
  LODWORD(v12[0]) = 1133903872;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 22;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 1;
  v13 = v8;
  LODWORD(v12[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 37;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 48;
  v13 = v8;
  LODWORD(v12[0]) = 0x40000000;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 33;
  v13 = v8;
  LODWORD(v12[0]) = 1058642330;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 34;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 38;
  v13 = MEMORY[0x1E69E63B0];
  v12[0] = 0x3FF0000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 2;
  v13 = v8;
  LODWORD(v12[0]) = 1114636288;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 5;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 6;
  v13 = v8;
  LODWORD(v12[0]) = -1090519040;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 7;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 26;
  v13 = v8;
  LODWORD(v12[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 35;
  v13 = v8;
  LODWORD(v12[0]) = 1041865114;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 27;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing);
  [v9 setHidden_];
  [v9 setPaused_];
  v14 = 52;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 41;
  v13 = v8;
  LODWORD(v12[0]) = 1071225242;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 50;
  v13 = v8;
  LODWORD(v12[0]) = 1075838976;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 42;
  v10 = [v11 valueWithVFXFloat2_];
  v13 = v5;
  v12[0] = v10;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 56;
  v13 = v8;
  LODWORD(v12[0]) = 1045220557;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 55;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v14 = 51;
  v13 = v8;
  LODWORD(v12[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  NearbyPeerPaymentReceiverVFXViewController.restartEmitters()();
}

Swift::Void __swiftcall NearbyPeerPaymentReceiverVFXViewController.restartEmitters()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ambientEmitter);
  v2 = [v1 particleEmitter];
  [v2 killParticles];

  v3 = [v1 particleEmitter];
  [v3 restart];

  v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_nodeBindings);
  v5 = [v4 particleEmitter];
  [v5 killParticles];

  v6 = [v4 particleEmitter];
  [v6 restart];

  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_unknownAmountEmitter);
  v8 = [v7 particleEmitter];
  [v8 killParticles];

  v9 = [v7 particleEmitter];
  [v9 restart];

  v10 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes;
  swift_beginAccess();
  v11 = *(v0 + v10);
  if (v11 >> 62)
  {
    v12 = sub_1BE053704();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  v28 = v4;
  sub_1BE048C84();
  v13 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB40900](v13, v11);
    }

    else
    {
      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    v16 = [v14 particleEmitter];
    [v16 killParticles];

    v17 = [v15 particleEmitter];
    [v17 restart];
  }

  while (v12 != v13);
  v11, v18, v19, v20, v21, v22, v23, v24;
LABEL_10:
  v31 = 47;
  v25 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels;
  swift_beginAccess();
  v26 = *(v0 + v25);
  if (v26 >> 62)
  {
    v27 = sub_1BE053704();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = MEMORY[0x1E69E6448];
  v29[0] = 4000.0 / v27;
  VFXNode.setBehaviorGraphValue(key:value:)(&v31, v29);
  sub_1BD0DE53C(v29, &qword_1EBD3EC90, &unk_1BE0BC6B0);
}

uint64_t sub_1BD32C424(uint64_t (**a1)(void), uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD32BA44();
  }

  return v2();
}

uint64_t sub_1BD32C490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = a2;
  v69 = a1;
  v4 = sub_1BE051F54();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1BE051FA4();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1BE051FC4();
  v73 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v66 - v9;
  v87[0] = 20;
  v10 = objc_opt_self();
  v11 = [v10 valueWithVFXFloat3_];
  v12 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
  v84 = v12;
  aBlock = v11;
  VFXNode.setBehaviorGraphValue(key:value:)(v87, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v87[0] = 49;
  v13 = MEMORY[0x1E69E6448];
  v84 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(v87, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v87[0] = 36;
  v84 = v13;
  LODWORD(aBlock) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(v87, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v87[0] = 38;
  v84 = MEMORY[0x1E69E63B0];
  aBlock = 0x4011000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(v87, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v87[0] = 40;
  v14 = [v10 valueWithVFXFloat2_];
  v84 = v12;
  aBlock = v14;
  VFXNode.setBehaviorGraphValue(key:value:)(v87, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v88[0] = 37;
  v15 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDissipateTextNodes;
  swift_beginAccess();
  v16 = *&v2[v15];
  if (v16 >> 62)
  {
    v17 = sub_1BE053704();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E6448];
  v84 = MEMORY[0x1E69E6448];
  *&aBlock = 5000.0 / v17;
  VFXNode.setBehaviorGraphValue(key:value:)(v88, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v19 = objc_opt_self();
  [v19 begin];
  [v19 setAnimationDuration_];
  v20 = *MEMORY[0x1E6979ED0];
  v67 = objc_opt_self();
  v68 = v20;
  v21 = [v67 functionWithName_];
  [v19 setAnimationTimingFunction_];

  v88[0] = 40;
  v22 = [v10 valueWithVFXFloat2_];
  v84 = v12;
  aBlock = v22;
  VFXNode.setBehaviorGraphValue(key:value:)(v88, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v88[0] = 33;
  v84 = MEMORY[0x1E69E63B0];
  aBlock = 0x3FE3333333333333;
  VFXNode.setBehaviorGraphValue(key:value:)(v88, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v88[0] = 2;
  v84 = v18;
  LODWORD(aBlock) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v88, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v88[0] = 48;
  v84 = v18;
  LODWORD(aBlock) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v88, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v88[0] = 2;
  v84 = v18;
  LODWORD(aBlock) = 1120403456;
  VFXNode.setBehaviorGraphValue(key:value:)(v88, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v88[0] = 37;
  v23 = *&v3[v15];
  if (v23 >> 62)
  {
    v24 = sub_1BE053704();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = MEMORY[0x1E69E6448];
  *&aBlock = 3600.0 / v24;
  VFXNode.setBehaviorGraphValue(key:value:)(v88, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v25 = swift_allocObject();
  v25[2] = v3;
  v85 = sub_1BD3307F0;
  v86 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_1BD126964;
  v84 = &block_descriptor_88;
  v26 = _Block_copy(&aBlock);
  v27 = v86;
  v28 = v3;
  v27, v29, v30, v31, v32, v33, v34, v35;
  [v19 setCompletionBlock_];
  _Block_release(v26);
  [v19 commit];
  [v19 begin];
  [v19 setAnimationDuration_];
  v36 = v67;
  v37 = [v67 functionWithName_];
  [v19 setAnimationTimingFunction_];

  v88[0] = 38;
  v84 = MEMORY[0x1E69E63B0];
  aBlock = 0x3FF0000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(v88, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v19 commit];
  sub_1BD32E660(v28, v69, v70);
  [v19 begin];
  [v19 setAnimationDuration_];
  v38 = [v36 functionWithName_];
  [v19 setAnimationTimingFunction_];

  v88[0] = 22;
  v84 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = 1042536202;
  VFXNode.setBehaviorGraphValue(key:value:)(v88, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v39 = swift_allocObject();
  v39[2] = v28;
  v85 = sub_1BD3307F8;
  v86 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_1BD126964;
  v84 = &block_descriptor_94;
  v40 = _Block_copy(&aBlock);
  v41 = v86;
  v42 = v28;
  v41, v43, v44, v45, v46, v47, v48, v49;
  [v19 setCompletionBlock_];
  _Block_release(v40);
  [v19 commit];
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v50 = sub_1BE052D54();
  v51 = v71;
  sub_1BE051FB4();
  v52 = v72;
  sub_1BE051FF4();
  v73 = *(v73 + 8);
  (v73)(v51, v80);
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v85 = sub_1BD330800;
  v86 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_1BD126964;
  v84 = &block_descriptor_98;
  v54 = _Block_copy(&aBlock);
  v86, v55, v56, v57, v58, v59, v60, v61;
  v62 = v74;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v63 = v76;
  v64 = v79;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v52, v62, v63, v54);
  _Block_release(v54);

  (*(v78 + 8))(v63, v64);
  (*(v75 + 8))(v62, v77);
  return (v73)(v52, v80);
}

double sub_1BD32CFB0(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  sub_1BE048964();
  a2(sub_1BD1839E0, v5);

  v5, v6, v7, v8, v9, v10, v11, v12;
  return result;
}

uint64_t sub_1BD32D040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v36 = a2;
  v4 = sub_1BE051F54();
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FC4();
  v34 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v17 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v33 = *(v11 + 8);
  v33(v13, v10);
  v18 = swift_allocObject();
  v19 = v35;
  v20 = v36;
  v18[2] = v2;
  v18[3] = v19;
  v18[4] = v20;
  aBlock[4] = sub_1BD3307E4;
  v41 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_60;
  v21 = _Block_copy(aBlock);
  v22 = v41;
  v23 = v3;
  sub_1BE048964();
  v22, v24, v25, v26, v27, v28, v29, v30;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v16, v9, v6, v21);
  _Block_release(v21);

  (*(v39 + 8))(v6, v4);
  (*(v37 + 8))(v9, v38);
  return (v33)(v16, v34);
}

uint64_t sub_1BD32D3CC(uint64_t (*a1)(uint64_t))
{
  v5 = 38;
  v4[3] = MEMORY[0x1E69E63B0];
  v4[0] = 0x3FF3333333333333;
  VFXNode.setBehaviorGraphValue(key:value:)(&v5, v4);
  v2 = sub_1BD0DE53C(v4, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return a1(v2);
}

uint64_t sub_1BD32D460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a1, a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD32D4FC(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_1BE051F54();
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v16 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v31 = *(v10 + 8);
  v31(v12, v9);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v19 = v32;
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a2;
  aBlock[4] = sub_1BD33086C;
  v37 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_127;
  v20 = _Block_copy(aBlock);
  v21 = v37;
  sub_1BE048964();
  v21, v22, v23, v24, v25, v26, v27, v28;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v15, v8, v5, v20);
  _Block_release(v20);

  (*(v35 + 8))(v5, v3);
  (*(v33 + 8))(v8, v34);
  return (v31)(v15, v9);
}

id sub_1BD32D8B0(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_1BE051F54();
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FC4();
  v32 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v16 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v31 = *(v10 + 8);
  v31(v12, v9);
  v17 = swift_allocObject();
  v18 = v34;
  v17[2] = v33;
  v17[3] = a2;
  v17[4] = v18;
  v41 = sub_1BD330878;
  v42 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v40 = &block_descriptor_136;
  v19 = _Block_copy(aBlock);
  v20 = v42;
  sub_1BE048964();
  v18;
  v20, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v15, v8, v5, v19);
  _Block_release(v19);

  (*(v37 + 8))(v5, v3);
  (*(v35 + 8))(v8, v36);
  v31(v15, v32);
  v28 = objc_opt_self();
  [v28 begin];
  [v28 setAnimationDuration_];
  v29 = [objc_opt_self() functionWithName_];
  [v28 setAnimationTimingFunction_];

  v38 = 55;
  v40 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v38, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v28 commit];
  return sub_1BD32FBD0();
}

uint64_t sub_1BD32DD2C(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v39 = a1;
  v3 = sub_1BE051F54();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FC4();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v11;
  v54[0] = 37;
  v12 = MEMORY[0x1E69E6448];
  v51 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v54[0] = 2;
  v51 = v12;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v13 = objc_opt_self();
  [v13 begin];
  [v13 setAnimationDuration_];
  v54[0] = 17;
  v14 = MEMORY[0x1E69E63B0];
  v51 = MEMORY[0x1E69E63B0];
  aBlock[0] = 0x3FEEB851EB851EB8;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v54[0] = 26;
  v51 = v12;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v54[0] = 49;
  v51 = v12;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v54[0] = 1;
  v51 = v14;
  aBlock[0] = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v54[0] = 22;
  v51 = v12;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v54[0] = 1;
  v51 = v12;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v54[0] = 36;
  v51 = v12;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v54[0] = 5;
  v51 = v12;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v54[0] = 6;
  v51 = v12;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v54[0] = 7;
  v51 = v12;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(v54, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v13 commit];
  v15 = v2 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 24))(PKEdgeInsetsMake, 0, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v18 = sub_1BE052D54();
  sub_1BE051FB4();
  v19 = v40;
  sub_1BE051FF4();
  v42 = *(v42 + 8);
  v20 = v9;
  v21 = v43;
  (v42)(v20, v43);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v24 = v39;
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v41;
  v52 = sub_1BD3308C0;
  v53 = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v51 = &block_descriptor_182;
  v25 = _Block_copy(aBlock);
  v26 = v53;
  sub_1BE048964();
  v26, v27, v28, v29, v30, v31, v32, v33;
  v34 = v44;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v35 = v47;
  v36 = v49;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v19, v34, v35, v25);
  _Block_release(v25);

  (*(v48 + 8))(v35, v36);
  (*(v45 + 8))(v34, v46);
  return (v42)(v19, v21);
}

uint64_t sub_1BD32E45C(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD32E4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1BD32E548(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    v4 = sub_1BE053704();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    sub_1BE048C84();
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB40900](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 particleEmitter];
      [v8 killParticles];
    }

    while (v4 != v5);
    v3, v9, v10, v11, v12, v13, v14, v15;
  }
}

id sub_1BD32E660(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1042985832;
  LODWORD(v9) = 1059761370;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1042985832;
  v12 = [v7 initWithControlPoints__:v8 :{v11, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v28 = sub_1BD330808;
  v29 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v27 = &block_descriptor_107_0;
  v14 = _Block_copy(aBlock);
  v15 = v29;
  a1;
  sub_1BE048964();
  v15, v16, v17, v18, v19, v20, v21, v22;
  [v6 setCompletionBlock_];
  _Block_release(v14);
  v25 = 20;
  v23 = [objc_opt_self() valueWithVFXFloat3_];
  v27 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
  aBlock[0] = v23;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

id sub_1BD32E874(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v28 = sub_1BD330854;
  v29 = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v27 = &block_descriptor_113_0;
  v8 = _Block_copy(aBlock);
  v9 = v29;
  a1;
  sub_1BE048964();
  v9, v10, v11, v12, v13, v14, v15, v16;
  [v6 setCompletionBlock_];
  _Block_release(v8);
  v17 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v18) = 1042985832;
  LODWORD(v19) = 1055260043;
  LODWORD(v20) = 1.0;
  LODWORD(v21) = 1042985832;
  v22 = [v17 initWithControlPoints__:v18 :{v21, v19, v20}];
  [v6 setAnimationTimingFunction_];

  v25 = 20;
  v23 = [objc_opt_self() valueWithVFXFloat3_];
  v27 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
  aBlock[0] = v23;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

id sub_1BD32EA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  [v5 begin];
  [v5 setAnimationDuration_];
  v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v7) = 1042985832;
  LODWORD(v8) = 1055260043;
  LODWORD(v9) = 1.0;
  LODWORD(v10) = 1042985832;
  v11 = [v6 initWithControlPoints__:v7 :{v10, v8, v9}];
  [v5 setAnimationTimingFunction_];

  v29 = 20;
  v12 = [objc_opt_self() valueWithVFXFloat3_];
  v26 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
  aBlock[0] = v12;
  VFXNode.setBehaviorGraphValue(key:value:)(&v29, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  v27 = sub_1BD330860;
  v28 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v26 = &block_descriptor_120;
  v15 = _Block_copy(aBlock);
  v16 = v28;
  sub_1BE048964();
  v16, v17, v18, v19, v20, v21, v22, v23;
  [v5 setCompletionBlock_];
  _Block_release(v15);
  return [v5 commit];
}

uint64_t sub_1BD32ECC4(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD632BE4();
  }

  return a2();
}

id sub_1BD32ED34()
{
  v0 = objc_opt_self();
  [v0 begin];
  [v0 setAnimationDuration_];
  v5 = 22;
  v1 = MEMORY[0x1E69E6448];
  v4 = MEMORY[0x1E69E6448];
  v3[0] = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v5, v3);
  sub_1BD0DE53C(v3, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v5 = 1;
  v4 = v1;
  v3[0] = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v5, v3);
  sub_1BD0DE53C(v3, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v0 commit];
}

void sub_1BD32EE30(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD32EE9C(PKEdgeInsetsMake, 0);
  }
}

id sub_1BD32EE9C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setAnimationDuration_];
  v19 = 49;
  v16 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = a1;
  v18 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v16 = &block_descriptor_101_0;
  v5 = _Block_copy(aBlock);
  v6 = v18;
  sub_1BE048964();
  v6, v7, v8, v9, v10, v11, v12, v13;
  [v4 setCompletionBlock_];
  _Block_release(v5);
  return [v4 commit];
}

void sub_1BD32EFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing;
    v7 = *&Strong[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing];
    v8 = Strong;
    v34 = Strong;
    [v7 setHidden_];
    [*&v8[v6] setPaused_];
    v9 = *&v8[v6];
    v39 = 1;
    v10 = MEMORY[0x1E69E6448];
    v36 = MEMORY[0x1E69E6448];
    LODWORD(aBlock[0]) = 0;
    v11 = v9;
    VFXNode.setBehaviorGraphValue(key:value:)(&v39, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v12 = *&v8[v6];
    v39 = 12;
    v36 = v10;
    LODWORD(aBlock[0]) = 1126498304;
    v13 = v12;
    VFXNode.setBehaviorGraphValue(key:value:)(&v39, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v14 = *&v8[v6];
    v39 = 13;
    v36 = v10;
    LODWORD(aBlock[0]) = 1065353216;
    v15 = v14;
    VFXNode.setBehaviorGraphValue(key:value:)(&v39, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v16 = *&v8[v6];
    v39 = 14;
    v36 = v10;
    LODWORD(aBlock[0]) = 0;
    v17 = v16;
    VFXNode.setBehaviorGraphValue(key:value:)(&v39, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v18 = *&v8[v6];
    v39 = 11;
    v36 = v10;
    LODWORD(aBlock[0]) = 0;
    v19 = v18;
    VFXNode.setBehaviorGraphValue(key:value:)(&v39, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v20 = objc_opt_self();
    [v20 begin];
    [v20 setAnimationDuration_];
    v21 = *&v8[v6];
    v39 = 15;
    v36 = v10;
    LODWORD(aBlock[0]) = 1106247680;
    v22 = v21;
    VFXNode.setBehaviorGraphValue(key:value:)(&v39, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    [v20 commit];
    [v20 begin];
    [v20 setAnimationDuration_];
    v23 = [objc_opt_self() functionWithName_];
    [v20 setAnimationTimingFunction_];

    v24 = *&v8[v6];
    v39 = 1;
    v36 = v10;
    LODWORD(aBlock[0]) = 1065353216;
    VFXNode.setBehaviorGraphValue(key:value:)(&v39, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v37 = a2;
    v38 = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    v36 = &block_descriptor_130;
    v25 = _Block_copy(aBlock);
    v26 = v38;
    sub_1BE048964();
    v26, v27, v28, v29, v30, v31, v32, v33;
    [v20 setCompletionBlock_];
    _Block_release(v25);
    [v20 commit];
  }
}

id sub_1BD32F3CC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1058665818;
  LODWORD(v9) = -1130005896;
  LODWORD(v10) = 1057152513;
  LODWORD(v11) = 1065520149;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v28 = sub_1BD33089C;
  v29 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v27 = &block_descriptor_157;
  v14 = _Block_copy(aBlock);
  v15 = v29;
  sub_1BE048964();
  a3;
  v15, v16, v17, v18, v19, v20, v21, v22;
  [v6 setCompletionBlock_];
  _Block_release(v14);
  v25 = 15;
  v23 = MEMORY[0x1E69E6448];
  v27 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v25 = 17;
  v27 = v23;
  LODWORD(aBlock[0]) = 1063920442;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

void sub_1BD32F5F4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1057328674;
  LODWORD(v9) = -1172485806;
  LODWORD(v10) = 1059521456;
  LODWORD(v11) = 1064153645;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v27 = sub_1BD3308A8;
  v28 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v26 = &block_descriptor_163;
  v14 = _Block_copy(aBlock);
  v15 = v28;
  sub_1BE048964();
  a3;
  v15, v16, v17, v18, v19, v20, v21, v22;
  [v6 setCompletionBlock_];
  _Block_release(v14);
  v24 = 52;
  v23 = MEMORY[0x1E69E6448];
  v26 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v24, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = 17;
  v26 = v23;
  LODWORD(aBlock[0]) = 1065520988;
  VFXNode.setBehaviorGraphValue(key:value:)(&v24, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v6 commit];
  AudioServicesPlaySystemSound(0x572u);
}

id sub_1BD32F828(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1053243421;
  LODWORD(v9) = -1100316934;
  LODWORD(v10) = 1059355361;
  LODWORD(v11) = 1065713926;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v27 = sub_1BD3308B4;
  v28 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v26 = &block_descriptor_169;
  v14 = _Block_copy(aBlock);
  v15 = v28;
  sub_1BE048964();
  a3;
  v15, v16, v17, v18, v19, v20, v21, v22;
  [v6 setCompletionBlock_];
  _Block_release(v14);
  v24 = 17;
  v26 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065302884;
  VFXNode.setBehaviorGraphValue(key:value:)(&v24, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

id sub_1BD32FA1C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setAnimationDuration_];
  v5 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v6) = 1053085716;
  LODWORD(v7) = 1045019230;
  LODWORD(v8) = 1059761370;
  LODWORD(v9) = 1.0;
  v10 = [v5 initWithControlPoints__:v6 :{v7, v8, v9}];
  [v4 setAnimationTimingFunction_];

  v24 = a1;
  v25 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v23 = &block_descriptor_172;
  v11 = _Block_copy(aBlock);
  v12 = v25;
  sub_1BE048964();
  v12, v13, v14, v15, v16, v17, v18, v19;
  [v4 setCompletionBlock_];
  _Block_release(v11);
  v21 = 17;
  v23 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v21, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v4 commit];
}

id sub_1BD32FBD0()
{
  v11 = 35;
  v0 = MEMORY[0x1E69E6448];
  v10 = MEMORY[0x1E69E6448];
  v9[0] = 1067030938;
  VFXNode.setBehaviorGraphValue(key:value:)(&v11, v9);
  sub_1BD0DE53C(v9, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v11 = 37;
  v10 = v0;
  v9[0] = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v11, v9);
  sub_1BD0DE53C(v9, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setAnimationDuration_];
  v2 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v3) = 1042985832;
  LODWORD(v4) = 1064338194;
  LODWORD(v5) = 1060172412;
  LODWORD(v6) = 1042985832;
  v7 = [v2 initWithControlPoints__:v3 :{v6, v4, v5}];
  [v1 setAnimationTimingFunction_];

  v11 = 38;
  v10 = v0;
  v9[0] = 1091777331;
  VFXNode.setBehaviorGraphValue(key:value:)(&v11, v9);
  sub_1BD0DE53C(v9, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v1 commit];
}

id sub_1BD32FD5C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1042985832;
  LODWORD(v9) = 1060001284;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1042985832;
  v12 = [v7 initWithControlPoints__:v8 :{v11, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v28 = sub_1BD330884;
  v29 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v27 = &block_descriptor_142;
  v14 = _Block_copy(aBlock);
  v15 = v29;
  sub_1BE048964();
  a3;
  v15, v16, v17, v18, v19, v20, v21, v22;
  [v6 setCompletionBlock_];
  _Block_release(v14);
  v25 = 3;
  v23 = MEMORY[0x1E69E6448];
  v27 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v25 = 5;
  v27 = v23;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v25 = 6;
  v27 = v23;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v25 = 7;
  v27 = v23;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v25 = 36;
  v27 = v23;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

id sub_1BD33001C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1044442094;
  LODWORD(v9) = 1046005731;
  LODWORD(v10) = 1065544476;
  v11 = [v7 initWithControlPoints__:v8 :{0.0, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v26 = sub_1BD330890;
  v27 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v25 = &block_descriptor_148;
  v13 = _Block_copy(aBlock);
  v14 = v27;
  sub_1BE048964();
  a3;
  v14, v15, v16, v17, v18, v19, v20, v21;
  [v6 setCompletionBlock_];
  _Block_release(v13);
  v23 = 3;
  v25 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = -1097229926;
  VFXNode.setBehaviorGraphValue(key:value:)(&v23, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

id sub_1BD330208(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setAnimationDuration_];
  v5 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v6) = 1046233901;
  LODWORD(v7) = 1047300932;
  LODWORD(v8) = 1047213690;
  LODWORD(v9) = 1.0;
  v10 = [v5 initWithControlPoints__:v6 :{v7, v8, v9}];
  [v4 setAnimationTimingFunction_];

  v24 = a1;
  v25 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v23 = &block_descriptor_151;
  v11 = _Block_copy(aBlock);
  v12 = v25;
  sub_1BE048964();
  v12, v13, v14, v15, v16, v17, v18, v19;
  [v4 setCompletionBlock_];
  _Block_release(v11);
  v21 = 3;
  v23 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v21, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v4 commit];
}

uint64_t sub_1BD3303B8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v6 = Strong + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  v7 = Strong;
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v6 + 8);

  if (!v8)
  {
    return a2();
  }

  ObjectType = swift_getObjectType();
  (*(v9 + 32))(a2, a3, ObjectType, v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD330498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a2, a3, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD330534()
{
  sub_1BD32E45C(v0 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_state);
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;

  return sub_1BD0D4534(v1);
}

id NearbyPeerPaymentReceiverVFXViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NearbyPeerPaymentReceiverVFXViewController(uint64_t a1)
{
  result = qword_1EBD42100;
  if (!qword_1EBD42100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD33074C(uint64_t a1)
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

uint64_t objectdestroy_81Tm()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

void sub_1BD33098C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = *v0;
  v13 = [*v0 openingDate];
  sub_1BE04AEE4();

  v14 = sub_1BE04AE64();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v16 = [v12 closingDate];
  sub_1BE04AEE4();

  v17 = sub_1BE04AE64();
  v24 = v15;
  v15(v7, v4);
  v18 = PKDatesMidpoint();

  if (v18)
  {
    sub_1BE04AEE4();

    v19 = *(v5 + 32);
    v19(v3, v7, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    v19(v11, v3, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    v20 = [v12 closingDate];
    sub_1BE04AEE4();

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_1BD0DE53C(v3, &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  v21 = sub_1BE04AE64();
  v22 = PKMonthAndYearStringFromDate();

  if (v22)
  {
    sub_1BE052434();

    v24(v11, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD330CC8()
{
  v1 = sub_1BE051F54();
  v105 = *(v1 - 8);
  v106 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v103 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1BE051FA4();
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v101 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BD74();
  v108 = *(v4 - 8);
  v109 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04AF64();
  v110 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v95 - v13;
  v15 = sub_1BE04B3B4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(v0 + 40);
  v112 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516A4();
  if (v114)
  {
    return aBlock;
  }

  v96 = v11;
  v98 = v14;
  v97 = v18;
  v100 = v15;
  v99 = v8;
  v20 = v110;
  v21 = *(v0 + 8);
  if (v21)
  {
    v95 = v0;
    v22 = *v0;
    v23 = v21;
    v24 = sub_1BD2F4DC8(v22);

    v25 = qword_1EBDAB000;
    v26 = v6;
    v27 = v20;
    v28 = v16;
    if (v24)
    {
      v29 = [v24 savingsDetails];

      v30 = v99;
      v31 = v98;
      if (!v29)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v32 = [v29 productTimeZone];

      v33 = v97;
      if (v32)
      {
        v34 = v96;
        sub_1BE04B394();

        v35 = 0;
        v25 = qword_1EBDAB000;
      }

      else
      {
        v35 = 1;
        v25 = qword_1EBDAB000;
        v34 = v96;
      }

      v37 = v100;
      (*(v28 + 56))(v34, v35, 1, v100);
      sub_1BD0DE204(v34, v31, &unk_1EBD3D260, &unk_1BE0C0F20);
      if ((*(v28 + 48))(v31, 1, v37) != 1)
      {
        (*(v28 + 32))(v33, v31, v37);
        if (qword_1EBD36C20 != -1)
        {
          swift_once();
        }

        v38 = v25[45];
        v39 = sub_1BE04B374();
        [v38 setTimeZone_];

        if (qword_1EBD36C28 != -1)
        {
          swift_once();
        }

        v40 = qword_1EBDAB170;
        v41 = sub_1BE04B374();
        [v40 setTimeZone_];

        (*(v28 + 8))(v33, v100);
        LODWORD(v100) = 1;
        v25 = qword_1EBDAB000;
        goto LABEL_17;
      }
    }

    else
    {
      v36 = *(v16 + 56);
      v31 = v98;
      v36(v98, 1, 1, v100);
      v30 = v99;
    }

    sub_1BD0DE53C(v31, &unk_1EBD3D260, &unk_1BE0C0F20);
    LODWORD(v100) = 0;
LABEL_17:
    if (qword_1EBD36C20 != -1)
    {
      swift_once();
    }

    v42 = v25[45];
    v43 = [v22 openingDate];
    sub_1BE04AEE4();

    v44 = sub_1BE04AE64();
    v45 = *(v27 + 8);
    v45(v30, v26);
    v46 = [v42 stringFromDate_];

    v47 = sub_1BE052434();
    v48 = v22;
    v50 = v49;

    if (qword_1EBD36C28 != -1)
    {
      swift_once();
    }

    v51 = qword_1EBDAB170;
    v52 = [v48 closingDate];
    sub_1BE04AEE4();

    v53 = sub_1BE04AE64();
    v45(v30, v26);
    v54 = [v51 stringFromDate_];

    v55 = sub_1BE052434();
    v57 = v56;

    v58 = v107;
    v59 = v108;
    v60 = v109;
    (*(v108 + 104))(v107, *MEMORY[0x1E69B80E0], v109);
    v61 = PKPassKitBundle();
    if (v61)
    {
      v62 = v61;
      sub_1BE04B6F4();
      v64 = v63;

      (*(v59 + 8))(v58, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1BE0B6CA0;
      v66 = MEMORY[0x1E69E6158];
      *(v65 + 56) = MEMORY[0x1E69E6158];
      v67 = sub_1BD110550();
      *(v65 + 32) = v47;
      *(v65 + 40) = v50;
      *(v65 + 96) = v66;
      *(v65 + 104) = v67;
      *(v65 + 64) = v67;
      *(v65 + 72) = v55;
      *(v65 + 80) = v57;
      v19 = sub_1BE052454();
      v69 = v68;
      v64, v68, v70, v71, v72, v73, v74, v75;
      v77 = v105;
      v76 = v106;
      if (v100)
      {
        sub_1BD14BE3C();
        v110 = sub_1BE052D54();
        v78 = swift_allocObject();
        v79 = v95;
        v80 = v95[1];
        *(v78 + 16) = *v95;
        *(v78 + 32) = v80;
        v81 = *(v79 + 48);
        *(v78 + 48) = *(v79 + 32);
        *(v78 + 64) = v81;
        *(v78 + 80) = v19;
        *(v78 + 88) = v69;
        v117 = sub_1BD3321CC;
        v118 = v78;
        aBlock = MEMORY[0x1E69E9820];
        v114 = 1107296256;
        v115 = sub_1BD126964;
        v116 = &block_descriptor_61;
        v82 = _Block_copy(&aBlock);
        v83 = v118;
        sub_1BD3321D8(v79, &v111);
        sub_1BE048C84();
        v83, v84, v85, v86, v87, v88, v89, v90;
        v91 = v101;
        sub_1BE051F74();
        *&v111 = MEMORY[0x1E69E7CC0];
        sub_1BD332274(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
        sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
        v92 = v103;
        sub_1BE053664();
        v93 = v110;
        MEMORY[0x1BFB3FDF0](0, v91, v92, v82);
        _Block_release(v82);

        (*(v77 + 8))(v92, v76);
        (*(v102 + 8))(v91, v104);
      }

      return v19;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD332274(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

double sub_1BD3317C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD33182C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v29);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for StatementDetailView(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42138, &qword_1BE0CCC78);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v28 - v11;
  v13 = *v1;
  v14 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1BD0DE19C(v6, v3, &unk_1EBD45160, &qword_1BE0C25A0);
  v15 = v13;
  sub_1BE051694();
  sub_1BD0DE53C(v6, &unk_1EBD45160, &qword_1BE0C25A0);
  v16 = (v10 + *(v8 + 32));
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD332274(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  *v16 = sub_1BE04EEC4();
  v16[1] = v17;
  *v10 = v15;
  v18 = *(v1 + 8);
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BE04D804();
    sub_1BD332210(v10, v12, v21);
    v22 = &v12[*(v30 + 36)];
    *v22 = v20;
    v22[1] = v18;
    v23 = *(v1 + 24);
    if (v23)
    {
      type metadata accessor for DeviceAuthenticationModel(0);
      sub_1BD332274(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
      sub_1BE048964();
      v24 = sub_1BE04D804();
      v25 = v31;
      sub_1BD0DE204(v12, v31, &qword_1EBD42138, &qword_1BE0CCC78);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42118, &qword_1BE0CCC68);
      v27 = (v25 + *(result + 36));
      *v27 = v24;
      v27[1] = v23;
      return result;
    }
  }

  else
  {
    sub_1BE04EEB4();
    __break(1u);
  }

  type metadata accessor for DeviceAuthenticationModel(0);
  sub_1BD332274(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD331BC8@<X0>(uint64_t a1@<X8>)
{
  *&v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42118, &qword_1BE0CCC68);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42120, &qword_1BE0CCC70);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-v9];
  sub_1BD33182C(v3);
  sub_1BD331F7C();
  sub_1BE04E8B4();
  *&v10[*(v5 + 44)] = 0;
  sub_1BD33098C();
  v12 = v11;
  v32 = v13;
  v14 = sub_1BD330CC8();
  v16 = v15;
  LOBYTE(v36) = 0;
  sub_1BE051944();
  v17 = v43;
  v31 = v44;
  v30 = v45;
  v34 = v7;
  sub_1BD0DE19C(v10, v7, &qword_1EBD42120, &qword_1BE0CCC70);
  v18 = v35;
  sub_1BD0DE19C(v7, v35, &qword_1EBD42120, &qword_1BE0CCC70);
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42148, &qword_1BE0CCC80) + 48);
  v20 = v32;
  *&v36 = v12;
  *(&v36 + 1) = v32;
  *&v37 = v14;
  *(&v37 + 1) = v16;
  v38 = 0uLL;
  strcpy(&v39, "doc.plaintext");
  HIWORD(v39) = -4864;
  v21 = v17;
  *&v40 = v17;
  v22 = v31;
  *(&v40 + 1) = v31;
  v23 = v30;
  LOBYTE(v41) = v30;
  BYTE1(v41) = 1;
  *(&v41 + 1) = 0;
  *v42 = 0;
  v35 = xmmword_1BE0CCBA0;
  v33 = xmmword_1BE0CCBB0;
  *&v42[8] = xmmword_1BE0CCBA0;
  *&v42[24] = xmmword_1BE0CCBB0;
  v24 = v37;
  *v19 = v36;
  *(v19 + 16) = v24;
  v25 = *&v42[16];
  *(v19 + 96) = *v42;
  *(v19 + 112) = v25;
  *(v19 + 128) = *&v42[32];
  v26 = v39;
  *(v19 + 32) = v38;
  *(v19 + 48) = v26;
  v27 = v41;
  *(v19 + 64) = v40;
  *(v19 + 80) = v27;
  sub_1BD33211C(&v36, &v43);
  sub_1BD0DE53C(v10, &qword_1EBD42120, &qword_1BE0CCC70);
  v43 = v12;
  v44 = v20;
  v45 = v14;
  v46 = v16;
  v47 = 0;
  v48 = 0;
  strcpy(v49, "doc.plaintext");
  v49[7] = -4864;
  v50 = v21;
  v51 = v22;
  v52 = v23;
  v53 = 1;
  v54 = 0;
  v55 = 0;
  v56 = v35;
  v57 = v33;
  sub_1BD332178(&v43);
  return sub_1BD0DE53C(v34, &qword_1EBD42120, &qword_1BE0CCC70);
}

uint64_t sub_1BD331F18@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_1BE051CD4();
  a2[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42110, &qword_1BE0CCC60);
  return sub_1BD331BC8(a2 + *(v4 + 44));
}

unint64_t sub_1BD331F7C()
{
  result = qword_1EBD42128;
  if (!qword_1EBD42128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42118, &qword_1BE0CCC68);
    sub_1BD332034();
    sub_1BD0DE4F4(&qword_1EBD3EE28, &qword_1EBD3EE30, &qword_1BE0C4C38, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42128);
  }

  return result;
}

unint64_t sub_1BD332034()
{
  result = qword_1EBD42130;
  if (!qword_1EBD42130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42138, &qword_1BE0CCC78);
    sub_1BD332274(&qword_1EBD42140, type metadata accessor for StatementDetailView, &unk_1BE1006F0);
    sub_1BD0DE4F4(&qword_1EBD3EEA8, &qword_1EBD3EEB0, &unk_1BE0E6180, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42130);
  }

  return result;
}

uint64_t sub_1BD332210(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for StatementDetailView(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD332274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD332390()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_appExtension);
  if (!v1)
  {
    return 2;
  }

  v2 = [v1 provisioningExtension];
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(PKIssuerProvisioningExtensionAuthorizationViewController);
  v36[4] = sub_1BD3327AC;
  v37 = v4;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 1107296256;
  v36[2] = sub_1BD307EA8;
  v36[3] = &block_descriptor_62;
  v6 = _Block_copy(v36);
  v7 = v37;
  v8 = v3;
  sub_1BE048964();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16 = [v5 initWithExtension:v8 completionHandler:v6];
  _Block_release(v6);
  v4, v17, v18, v19, v20, v21, v22, v23;

  if (v16)
  {
    sub_1BE052434();
    v25 = v24;
    v26 = v16;
    v27 = sub_1BE04BB74();
    v25, v28, v29, v30, v31, v32, v33, v34;
    [v26 setReporter_];
  }

  return v16;
}

void sub_1BD332548(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      [*(Strong + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_product) didAuthorizeProvisioningExtension];
      v6 = &v5[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 1);
        ObjectType = swift_getObjectType();
        v9 = v5;
        sub_1BD8659A4(v9, &off_1F3B9FD20, ObjectType, v7);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v10 = Strong + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 8);
        v12 = swift_getObjectType();
        memset(v14, 0, sizeof(v14));
        v15 = 2;
        v13 = v5;
        sub_1BD865A00(v13, &off_1F3B9FD20, v14, v12, v11);
        swift_unknownObjectRelease();

        sub_1BD12FF7C(v14);
        return;
      }
    }
  }
}

uint64_t sub_1BD33268C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3326C8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD332714(uint64_t (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_appExtension);
  if (v3)
  {
    [v3 requiresAuthorization];
  }

  return a1();
}

id sub_1BD3327B4(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_presentationConfiguration;
  v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_presentationConfiguration] = 2;
  v7 = &v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_identifier];
  *v7 = 0xD000000000000021;
  v7[1] = 0x80000001BE124010;
  *&v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_product] = a2;
  v2[v6] = 1;
  sub_1BE048964();
  v8 = a2;
  v9 = [v8 partnerIdentifier];
  v10 = [v8 setupProductMethodOfType:4 withIdentifier:v9];

  if (!v10)
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

LABEL_4:
    v11 = 0;
  }

  *&v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_appExtension] = v11;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1BD3328FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD33297C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_1BD332AF0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_1BD332D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BD332DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1BD332E3C(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1BE04F964();
  __break(1u);
}

void *sub_1BD332E98(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04EAF4();
  (*(v5 + 16))(v7, v2, v4);
  v8 = sub_1BE04EAB4();
  [v8 pkui:*(v2 + *(a1 + 36)) setExcludedFromScreenCapture:*(v2 + *(a1 + 40)) andBroadcasting:?];
  return v8;
}

uint64_t sub_1BD332F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04EAF4();
  result = swift_dynamicCastClass();
  if (result)
  {
    (*(v4 + 16))(v6, v2, v3);
    return sub_1BE04EAE4();
  }

  return result;
}

void sub_1BD333160(void (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  v2 = v1;
  v4 = sub_1BE04BC84();
  v5 = [v4 isCarKeyPass];

  if ((v5 & 1) == 0)
  {
LABEL_22:
    a1(0xD000000000000010, 0x80000001BE120E50, 0, 1);
    return;
  }

  v6 = [*(v2 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_invitation) activationOptions];
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = v6;
  v8 = [v6 options];

  sub_1BD33376C();
  v9 = sub_1BE052744();

  if (v9 >> 62)
  {
LABEL_33:
    v17 = sub_1BE053704();
  }

  else
  {
    v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v17 != 0;
  if (!v17)
  {
LABEL_26:
    v9, v10, v11, v12, v13, v14, v15, v16;
    if (v18)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
LABEL_29:
      a1(v31, v32, 0, v33);

      sub_1BD3336EC(v31, v32, 0, v33, v34, v35, v36, v37);
      return;
    }

LABEL_28:
    v32 = 0x80000001BE1240C0;
    v31 = 0xD00000000000001BLL;
    v33 = 1;
    goto LABEL_29;
  }

  v19 = 0;
  v18 = 0;
  while (1)
  {
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1BFB40900](v19, v9);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      else
      {
        if (v19 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v20 = *(v9 + 8 * v19 + 32);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_21;
        }
      }

      v38 = v20;
      v22 = [v20 type];
      if ((v22 - 2) >= 2)
      {
        break;
      }

      v18 = 1;
      v19 = v21;
      if (v21 == v17)
      {
        v18 = 1;
        goto LABEL_26;
      }
    }

    if (v22 == 4 || v22 == 1)
    {
      break;
    }

    ++v19;
    if (v21 == v17)
    {
      goto LABEL_26;
    }
  }

  v9, v23, v24, v25, v26, v27, v28, v29;
  a1(0xD000000000000021, 0x80000001BE1240E0, 0, 1);
}

id sub_1BD333450()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_context);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_provisionedPasses);
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_invitation);
  v8 = type metadata accessor for ProvisioningCarInvitationActivationViewController();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_delegate + 8] = 0;
  v10 = swift_unknownObjectWeakInit();
  v9[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_isExpressEnabled] = 0;
  *&v9[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_provisioningContext] = v5;
  *&v9[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_provisionedPasses] = v6;
  *&v9[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_invitation] = v7;
  *(v10 + 8) = &off_1F3B9FE20;
  swift_unknownObjectWeakAssign();
  sub_1BE048964();
  v11 = v6;
  v12 = v7;
  sub_1BE04BC34();
  v13 = sub_1BE04B9A4();
  (*(v2 + 8))(v4, v1);
  v18.receiver = v9;
  v18.super_class = v8;
  result = objc_msgSendSuper2(&v18, sel_initWithContext_, v13);
  if (result)
  {
    v15 = result;
    v16 = result;
    [v16 setExplanationViewControllerDelegate_];
    v17 = [v16 navigationItem];
    [v17 setHidesBackButton_];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD33365C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD333698(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD3336EC(void *result, const char *a2, char *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a4 > 2u)
  {
    if (a4 != 3)
    {
      if (a4 != 4)
      {
        return;
      }

      a2 = a3;
      v9 = a3;

LABEL_5:
      v9, a2, a3, a4, a5, a6, a7, a8;
      return;
    }

LABEL_3:
    v9 = a2;

    goto LABEL_5;
  }

  if (a4 < 2u)
  {
    goto LABEL_3;
  }

  a2 = a3;
  if (a4 == 2)
  {
    goto LABEL_3;
  }
}

unint64_t sub_1BD33376C()
{
  result = qword_1EBD41828;
  if (!qword_1EBD41828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD41828);
  }

  return result;
}

uint64_t sub_1BD3337B8()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

double sub_1BD33382C@<D0>(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(a1);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;

  v3, v11, v12, v13, v14, v15, v16, v17;
  return result;
}

uint64_t sub_1BD3338A4()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD333918()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account);
  if (v1 && (*(v0 + OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applicationType + 8) & 1) == 0)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x168);
    v18 = v1;
    v3 = v2();
    v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applyController);
    *(v0 + OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applyController) = v3;
    v5 = v3;

    if (v3)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      *(v6 + 24) = v18;
      aBlock[4] = sub_1BD334D80;
      v20 = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_63;
      v7 = _Block_copy(aBlock);
      v8 = v20;
      v9 = v18;
      v10 = v0;
      v8, v11, v12, v13, v14, v15, v16, v17;
      [v5 nextViewControllerWithCompletion_];

      _Block_release(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD333ACC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_1BE051F54();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BE051FA4();
  v10 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v14;
  v15[5] = a4;
  aBlock[4] = sub_1BD334D88;
  v32 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_44_0;
  v16 = _Block_copy(aBlock);
  v17 = v32;
  v18 = a1;
  v19 = a2;
  v20 = a4;
  v17, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v9, v16);
  _Block_release(v16);

  (*(v30 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v29);
}

void sub_1BD333D94(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  if (a1)
  {
    if (!a2)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v17 = a1;
        v13 = a1;
        sub_1BE04D8C4();
      }

      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = a2;
    v15 = [a4 feature];
    v16 = a2;
    FeatureError.init(feature:error:)(v15, a2, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD23C2BC(v12, v9);
    sub_1BE04D8C4();

    sub_1BD23C32C(v12);
  }
}

id sub_1BD333F60(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedService];
  v11 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

  v12 = [objc_allocWithZone(PKApplyControllerConfiguration) initWithSetupDelegate:v3 context:0 provisioningController:v11];
  [v12 setApplicationType_];
  if (v12)
  {
    v13 = v12;
    [v13 setFeature_];
  }

  v14 = [objc_allocWithZone(PKApplyController) initWithApplyConfiguration_];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    v17 = [a1 applyServiceURL];
    if (v17)
    {
      v18 = v17;
      sub_1BE04A9F4();

      v19 = sub_1BE04A9C4();
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v19 = 0;
    }

    [v16 setApplyServiceURL_];
  }

  return v15;
}

void sub_1BD334178(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_1BE04D8C4();
  if (a1)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      if ([v5 hasFieldsSubmitted])
      {
        [v5 hasFieldsSubmitted];
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        sub_1BE04D8C4();
      }
    }
  }
}

id sub_1BD3342EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD42298, &qword_1BE0CCF98);
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v26 = &v24 - v2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0, &qword_1BE0CB0E0);
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD422A8, &unk_1BE10D0D0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel__nextView;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42280, &qword_1BE0FEFC0);
  sub_1BE04D874();
  (*(v13 + 32))(&v0[v16], v15, v12);
  v17 = OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel__accountError;
  v18 = type metadata accessor for FeatureError(0);
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_1BD23C2BC(v11, v8);
  sub_1BE04D874();
  sub_1BD23C32C(v11);
  (*(v3 + 32))(&v0[v17], v5, v25);
  v19 = OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel__hasFieldsSubmitted;
  LOBYTE(v30) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250, &qword_1BE0DADA0);
  v20 = v26;
  sub_1BE04D874();
  (*(v27 + 32))(&v0[v19], v20, v28);
  v21 = &v0[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applicationType];
  *v21 = 0;
  v21[8] = 1;
  *&v0[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applyController] = 0;
  v22 = type metadata accessor for ApplyControllerModel(0);
  v29.receiver = v0;
  v29.super_class = v22;
  return objc_msgSendSuper2(&v29, sel_init);
}

id sub_1BD3346C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplyControllerModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ApplyControllerModel(uint64_t a1)
{
  result = qword_1EBD42268;
  if (!qword_1EBD42268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD33487C(uint64_t a1)
{
  sub_1BD0E4578(319, &qword_1EBD42278, &qword_1EBD42280, &qword_1BE0FEFC0);
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD416B8, &qword_1EBD416C0, &unk_1BE0BC2A0);
    if (v2 <= 0x3F)
    {
      sub_1BD0E4578(319, &unk_1EBD42288, &qword_1EBD39250, &qword_1BE0DADA0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1BD3349DC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ApplyControllerModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD334A1C(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD334A9C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1BE04D8C4();
}

double sub_1BD334B10@<D0>(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(a2);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
  return result;
}

uint64_t sub_1BD334B8C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1BD23C2BC(a1, &v13 - v8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v9, v6);
  v11 = v10;
  sub_1BE04D8C4();
  return sub_1BD23C32C(v9);
}

void sub_1BD334C90(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD334D10(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI13RecurringInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD334DB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BD334E10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_1BD334E8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1BD334EE8(v9, v10);
}

BOOL sub_1BD334EE8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD422C8, 0x1E69B8FC0);
    v6 = v5;
    v7 = v4;
    v8 = sub_1BE053074();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD422C8, 0x1E69B8FC0);
    v11 = v10;
    v12 = v9;
    v13 = sub_1BE053074();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 32);
  v59 = *(a1 + 16);
  v60 = v14;
  v15 = *(a1 + 64);
  v61 = *(a1 + 48);
  v62 = v15;
  v16 = *(a2 + 32);
  v58[0] = *(a2 + 16);
  v58[1] = v16;
  v17 = *(a2 + 64);
  v58[2] = *(a2 + 48);
  v58[3] = v17;
  v18 = v59;
  v19 = *(&v60 + 1);
  v20 = v60;
  v22 = *(&v61 + 1);
  v21 = v61;
  if (!*(&v59 + 1))
  {
    if (!*(&v58[0] + 1))
    {
      v43 = v62;
      sub_1BD3353D0(&v59, &v50);
      sub_1BD3353D0(v58, &v50);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (!*(&v58[0] + 1))
  {
LABEL_24:
    v50 = v59;
    v51 = v60;
    v52 = v61;
    v53 = v62;
    v54 = v58[0];
    v28 = *(a2 + 48);
    v55 = *(a2 + 32);
    v56 = v28;
    v57 = *(a2 + 64);
    sub_1BD3353D0(&v59, &v44);
    sub_1BD3353D0(v58, &v44);
    v29 = &unk_1EBD422B8;
    v30 = &unk_1BE0CD050;
    v31 = &v50;
LABEL_38:
    sub_1BD0DE53C(v31, v29, v30);
    return 0;
  }

  v41 = v61;
  v42 = *(&v60 + 1);
  v23 = *(&v61 + 1);
  v43 = v62;
  v24 = *(a2 + 32);
  v25 = *(a2 + 48);
  v50 = v58[0];
  v51 = v24;
  v26 = *(a2 + 64);
  v52 = v25;
  v53 = v26;
  v27 = v25;
  v40 = v26;
  if (v58[0] != v59 && (sub_1BE053B84() & 1) == 0 || v60 != v51 && (sub_1BE053B84() & 1) == 0)
  {
    sub_1BD3353D0(&v59, &v44);
    sub_1BD3353D0(v58, &v44);
    v22 = v23;
LABEL_37:
    sub_1BD0DE53C(&v50, &qword_1EBD422B0, &qword_1BE0CD048);
    v44 = v18;
    v45 = v20;
    v46 = v42;
    v47 = v41;
    v48 = v22;
    v49 = v43;
    v31 = &v44;
    v29 = &qword_1EBD422B0;
    v30 = &qword_1BE0CD048;
    goto LABEL_38;
  }

  v22 = *(&v61 + 1);
  v21 = v61;
  if (v61 != v27 && (sub_1BE053B84() & 1) == 0)
  {
    sub_1BD3353D0(&v59, &v44);
    sub_1BD3353D0(v58, &v44);
    goto LABEL_37;
  }

  if (*(&v62 + 1))
  {
    if (*(&v40 + 1))
    {
      v19 = *(&v60 + 1);
      if (v62 == v40)
      {
        sub_1BD3353D0(&v59, &v44);
        sub_1BD3353D0(v58, &v44);
        sub_1BD0DE53C(&v50, &qword_1EBD422B0, &qword_1BE0CD048);
LABEL_27:
        v32 = v43;
        goto LABEL_28;
      }

      v39 = sub_1BE053B84();
      sub_1BD3353D0(&v59, &v44);
      sub_1BD3353D0(v58, &v44);
      sub_1BD0DE53C(&v50, &qword_1EBD422B0, &qword_1BE0CD048);
      if (v39)
      {
        v32 = v43;
        v21 = v41;
        goto LABEL_28;
      }

      goto LABEL_35;
    }

LABEL_34:
    sub_1BD3353D0(&v59, &v44);
    sub_1BD3353D0(v58, &v44);
    v19 = v42;
    sub_1BD0DE53C(&v50, &qword_1EBD422B0, &qword_1BE0CD048);
LABEL_35:
    v44 = v18;
    v45 = v20;
    v46 = v19;
    v47 = v41;
    v48 = v22;
    v49 = v43;
    v29 = &qword_1EBD422B0;
    v30 = &qword_1BE0CD048;
    v31 = &v44;
    goto LABEL_38;
  }

  if (*(&v40 + 1))
  {
    goto LABEL_34;
  }

  sub_1BD3353D0(&v59, &v44);
  sub_1BD3353D0(v58, &v44);
  sub_1BD0DE53C(&v50, &qword_1EBD422B0, &qword_1BE0CD048);
  v32 = v43;
  v19 = v42;
LABEL_28:
  v50 = v18;
  *&v51 = v20;
  *(&v51 + 1) = v19;
  *&v52 = v21;
  *(&v52 + 1) = v22;
  v53 = v32;
  sub_1BD0DE53C(&v50, &qword_1EBD422B0, &qword_1BE0CD048);
  if ((*(a1 + 80) ^ *(a2 + 80)))
  {
    return 0;
  }

  v33 = *(a1 + 88);
  v34 = *(a2 + 88);
  if (v33)
  {
    if (v34)
    {
      sub_1BD0E5E8C(0, &qword_1EBD422C0, 0x1E69B8F80);
      v35 = v34;
      v36 = v33;
      v37 = sub_1BE053074();

      if (v37)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v34;
}

uint64_t sub_1BD3353D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD422B0, &qword_1BE0CD048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD335440(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v147 = a3;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v145 = v7;
  v146 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v140 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v141 = &v130 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v144 = &v130 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v130 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v130 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v130 - v21;
  v23 = sub_1BE04B2F4();
  v143 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v29);
  if (!a1)
  {
    goto LABEL_12;
  }

  v142 = &v130 - v31;
  v138 = v32;
  v139 = v30;
  v34 = [a1 identifier];
  if (!v34)
  {

LABEL_12:
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    sub_1BD0DE53C(&v152, &qword_1EBD422B0, &qword_1BE0CD048);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 1;
LABEL_33:
    *a4 = v54;
    a4[1] = v45;
    a4[2] = v46;
    a4[3] = v47;
    a4[4] = v48;
    a4[5] = v49;
    a4[6] = v50;
    a4[7] = v51;
    a4[8] = 0;
    a4[9] = 0;
    a4[10] = v52;
    a4[11] = v53;
    return;
  }

  v132 = a2;

  v137 = [a1 firstQuoteItemOfType_];
  v136 = [a1 firstQuoteItemOfType_];
  v35 = [a1 destinationType];
  v134 = PKPeerPaymentFDICSignageEnabled() && PKPeerPaymentAccountIsFDICInsured() && (v35 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v36 = [a1 dynamicFraudContent];
  v135 = [v36 paymentSheetContent];

  v37 = [a1 isRecurringPayment];
  v133 = a4;
  if (!v37)
  {

    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = v137;
    goto LABEL_32;
  }

  v38 = [a1 nextPaymentDate];
  if (!v38)
  {
    v62 = [a1 threshold];
    v61 = v137;
    if (v62)
    {
      v63 = v62;
      v64 = [a1 currentBalanceCurrency];
      v65 = PKCurrencyAmountMake();

      if (!v65)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v139 = v63;
      v66 = *(v146 + 104);
      v67 = v141;
      LODWORD(v144) = *MEMORY[0x1E69B80A0];
      v142 = v66;
      (v66)(v141);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_1BE0B69E0;
      v138 = v65;
      v69 = [v65 minimalFormattedStringValue];
      if (!v69)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v70 = v69;
      v71 = sub_1BE052434();
      v73 = v72;

      *(v68 + 56) = MEMORY[0x1E69E6158];
      *(v68 + 64) = sub_1BD110550();
      *(v68 + 32) = v71;
      *(v68 + 40) = v73;
      v143 = sub_1BE04B714();
      v131 = v74;
      v68, v74, v75, v76, v77, v78, v79, v80;
      v81 = v145;
      v82 = *(v146 + 8);
      v82(v67, v145);
      v83 = v140;
      (v142)(v140, v144, v81);
      v84 = PKPassKitBundle();
      if (!v84)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v85 = v84;
      v55 = sub_1BE04B6F4();
      v87 = v86;

      v82(v83, v81);
      v88 = [a1 calculatedTotalAmount];
      if (!v88)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v89 = v88;
      v90 = [v88 minimalFormattedStringValue];

      if (!v90)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v59 = sub_1BE052434();
      v60 = v91;

      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      sub_1BD0DE53C(&v152, &qword_1EBD422B0, &qword_1BE0CD048);
      v61 = v137;
      v57 = v143;
      v58 = v131;
      v56 = v87;
    }

    else
    {

      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
    }

LABEL_32:
    v53 = v135;
    v45 = v136;
    v149[0] = v61;
    v149[1] = v136;
    v149[2] = v55;
    v149[3] = v56;
    v149[4] = v57;
    v149[5] = v58;
    v149[6] = v59;
    v149[7] = v60;
    v149[8] = 0;
    v149[9] = 0;
    LOBYTE(v150) = v134;
    *(&v150 + 1) = v161[0];
    HIDWORD(v150) = *(v161 + 3);
    v151 = v135;
    v147 = v150;
    *&v152 = v61;
    *(&v152 + 1) = v136;
    *&v153 = v55;
    *(&v153 + 1) = v56;
    *&v154 = v57;
    *(&v154 + 1) = v58;
    *&v155 = v59;
    *(&v155 + 1) = v60;
    v156 = 0;
    v157 = 0;
    v158 = v134;
    *&v159[3] = *(v161 + 3);
    *v159 = v161[0];
    v160 = v135;
    v54 = v61;
    v51 = v60;
    v50 = v59;
    v47 = v56;
    v48 = v57;
    v129 = v55;
    v49 = v58;
    sub_1BD336024(v149, &v148);
    sub_1BD33605C(&v152);
    v52 = v147;
    v46 = v129;
    a4 = v133;
    goto LABEL_33;
  }

  v39 = v38;
  sub_1BE04AEE4();

  (*(v138 + 4))(v142, v28, v139);
  sub_1BE04B2A4();
  v40 = sub_1BE04B164();
  (*(v143 + 8))(v25, v23);
  v41 = v146 + 104;
  if (v40)
  {
    v42 = *v41;
    LODWORD(v141) = *MEMORY[0x1E69B80A0];
    v43 = v145;
    (v42)(v22);
    v143 = sub_1BE04B714();
    v131 = v44;
    v19 = v22;
LABEL_27:
    v121 = *(v146 + 8);
    v121(v19, v43);
    v122 = v144;
    (v42)(v144, v141, v43);
    v123 = PKPassKitBundle();
    if (v123)
    {
      v124 = v123;
      v55 = sub_1BE04B6F4();
      v56 = v125;

      v121(v122, v43);
      [a1 frequency];
      v126 = sub_1BE04AE64();
      v127 = PKPeerPaymentRecurringPaymentFrequencyToLocalizedWeekdayString();

      if (v127)
      {
        v59 = sub_1BE052434();
        v60 = v128;
      }

      else
      {

        v59 = 0;
        v60 = 0xE000000000000000;
      }

      v61 = v137;

      (*(v138 + 1))(v142, v139);
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      sub_1BD0DE53C(&v152, &qword_1EBD422B0, &qword_1BE0CD048);
      v57 = v143;
      v58 = v131;
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_36;
  }

  v92 = [a1 isNewRecurringPayment];
  v93 = *MEMORY[0x1E69B80A0];
  v94 = *v41;
  v140 = *v41;
  v130 = v41 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  LODWORD(v141) = v93;
  if (v92)
  {
    (v94)(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1BE0B69E0;
    v96 = sub_1BE04AE64();
    v97 = PKMediumDateString();

    if (!v97)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v98 = sub_1BE052434();
    v100 = v99;

    *(v95 + 56) = MEMORY[0x1E69E6158];
    *(v95 + 64) = sub_1BD110550();
    *(v95 + 32) = v98;
    *(v95 + 40) = v100;
    v143 = sub_1BE04B714();
    v131 = v101;
    v95, v101, v102, v103, v104, v105, v106, v107;
    goto LABEL_26;
  }

  (v94)(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1BE0B69E0;
  v109 = sub_1BE04AE64();
  v110 = PKMediumDateString();

  if (v110)
  {
    v111 = sub_1BE052434();
    v113 = v112;

    *(v108 + 56) = MEMORY[0x1E69E6158];
    *(v108 + 64) = sub_1BD110550();
    *(v108 + 32) = v111;
    *(v108 + 40) = v113;
    v143 = sub_1BE04B714();
    v131 = v114;
    v108, v114, v115, v116, v117, v118, v119, v120;
    v19 = v16;
LABEL_26:
    v43 = v145;
    v42 = v140;
    goto LABEL_27;
  }

LABEL_42:
  __break(1u);
}

id sub_1BD336160()
{
  v1 = sub_1BE04BAC4();
  v128 = *(v1 - 8);
  v129 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v127 = &v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04BD74();
  v125 = *(v3 - 8);
  v126 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v124 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v6 = v0;
  sub_1BD12F6B8(1, v6, KeyPath);

  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v132 = swift_getKeyPath();
  v130 = sub_1BD1872BC(v6, v132);
  v131 = v14;
  v16 = v15;
  sub_1BE053D04();
  sub_1BE052524();
  v17 = sub_1BE053D64();
  v25 = -1 << *(v16 + 32);
  v26 = v17 & ~v25;
  if (((*(v16 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v16;
    sub_1BD2A9690(0, v26, isUniquelyReferenced_nonNull_native, v39, v40, v41, v42, v43);
    v16 = aBlock;
    goto LABEL_10;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = *(*(v16 + 48) + v26);
    if (v28 == 1)
    {
      v29 = 0xEE00415049506165;
      goto LABEL_7;
    }

    if (v28 != 2)
    {
      break;
    }

    v29 = 0x80000001BE117610;
LABEL_7:
    v30 = sub_1BE053B84();
    v29, v31, v32, v33, v34, v35, v36, v37;
    if (v30)
    {
      goto LABEL_10;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v16 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  0xE400000000000000, v18, v19, v20, v21, v22, v23, v24;
LABEL_10:
  v44 = v6;
  v46 = v131;
  v45 = v132;
  sub_1BD12F6E4(v130 & 1, v131, v16, v44, v132);
  v16, v47, v48, v49, v50, v51, v52, v53;
  v46, v54, v55, v56, v57, v58, v59, v60;

  v45, v61, v62, v63, v64, v65, v66, v67;
  v68 = [*&v44[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_product] partnerName];
  if (v68)
  {
    v69 = v68;
    sub_1BE052434();
    v71 = v70;

    goto LABEL_14;
  }

  v73 = v124;
  v72 = v125;
  v74 = v126;
  (*(v125 + 104))(v124, *MEMORY[0x1E69B80C8], v126);
  result = PKPassKitBundle();
  if (result)
  {
    v76 = result;
    sub_1BE04B6F4();
    v71 = v77;

    (*(v72 + 8))(v73, v74);
LABEL_14:
    v78 = v127;
    sub_1BE04BC34();
    v79 = sub_1BE04B9A4();
    (*(v128 + 8))(v78, v129);
    v80 = objc_allocWithZone(PKBarcodePaymentOnboardingViewController);
    v81 = sub_1BE052404();
    v71, v82, v83, v84, v85, v86, v87, v88;
    v89 = [v80 initWithIssuerName:v81 context:v79];

    if (v89)
    {
      sub_1BE052434();
      v91 = v90;
      v92 = v89;
      v93 = sub_1BE04BB74();
      v91, v94, v95, v96, v97, v98, v99, v100;
      [v92 setReporter_];

      v101 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v137 = sub_1BD336EE0;
      v138 = v101;
      aBlock = MEMORY[0x1E69E9820];
      v134 = 1107296256;
      v135 = sub_1BD2749B0;
      v136 = &block_descriptor_64;
      v102 = _Block_copy(&aBlock);
      v103 = v138;
      v104 = v92;
      v103, v105, v106, v107, v108, v109, v110, v111;
      [v104 setContinueHandler_];
      _Block_release(v102);

      v112 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v137 = sub_1BD336EE8;
      v138 = v112;
      aBlock = MEMORY[0x1E69E9820];
      v134 = 1107296256;
      v135 = sub_1BD126964;
      v136 = &block_descriptor_9_1;
      v113 = _Block_copy(&aBlock);
      v114 = v138;
      v115 = v104;
      v114, v116, v117, v118, v119, v120, v121, v122;
      [v115 setTerminationHandler_];
      _Block_release(v113);
    }

    return v89;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD336784(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = sub_1BE04D214();
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [*(Strong + OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_inApp) appLaunchURL];
    if (v17)
    {
      v72 = a2;
      v73 = v9;
      v18 = v17;
      sub_1BE04A9F4();

      v19 = [objc_opt_self() defaultWorkspace];
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = v19;
      v21 = sub_1BE04A9C4();
      v75[0] = 0;
      v22 = [v20 openURL:v21 configuration:0 error:v75];

      if (v22)
      {
        v23 = v75[0];

        v24 = &v16[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_delegate];
        v25 = swift_unknownObjectWeakLoadStrong();
        v26 = v73;
        if (v25)
        {
          v27 = *(v24 + 1);
          ObjectType = swift_getObjectType();
          v16 = v16;
          sub_1BD8659A4(v16, &off_1F3B9FFE0, ObjectType, v27);
          swift_unknownObjectRelease();
        }

        (*(v26 + 8))(v14, v8);
      }

      else
      {
        v69 = a1;
        v29 = v75[0];
        v30 = sub_1BE04A854();

        swift_willThrow();
        sub_1BE04D0E4();
        v31 = v73;
        (*(v73 + 16))(v11, v14, v8);
        v32 = v30;
        v33 = sub_1BE04D204();
        v34 = sub_1BE052C54();
        v71 = v30;

        v68 = v34;
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v75[0] = v36;
          *v35 = 136315394;
          sub_1BD336EF0();
          v66 = v33;
          v37 = sub_1BE053B24();
          v39 = v38;
          v70 = *(v73 + 8);
          v70(v11, v8);
          v40 = sub_1BD123690(v37, v39, v75);
          v39, v41, v42, v43, v44, v45, v46, v47;
          *(v35 + 4) = v40;
          *(v35 + 12) = 2112;
          v48 = v71;
          v49 = v71;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v35 + 14) = v50;
          v51 = v66;
          v52 = v67;
          *v67 = v50;
          _os_log_impl(&dword_1BD026000, v51, v68, "Failed to open app url %s with error: %@", v35, 0x16u);
          sub_1BD0DE53C(v52, &unk_1EBD3E590, &unk_1BE0B7E50);
          MEMORY[0x1BFB45F20](v52, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v36, v53, v54, v55, v56, v57, v58, v59);
          MEMORY[0x1BFB45F20](v36, -1, -1);
          MEMORY[0x1BFB45F20](v35, -1, -1);

          (*(v74 + 8))(v7, v5);
          v60 = v48;
        }

        else
        {

          v70 = *(v31 + 8);
          v70(v11, v8);
          (*(v74 + 8))(v7, v5);
          v60 = v71;
        }

        a1 = v69;
        v61 = &v16[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v62 = *(v61 + 1);
          v63 = swift_getObjectType();
          v75[0] = v60;
          v76 = 1;
          v64 = v16;
          v65 = v60;
          sub_1BD865A00(v64, &off_1F3B9FFE0, v75, v63, v62);
          swift_unknownObjectRelease();

          sub_1BD0DE53C(v75, &unk_1EBD3F510, &unk_1BE0B9B30);
        }

        else
        {
        }

        v70(v14, v8);
      }
    }

    else
    {
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_1BD336D78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      memset(v7, 0, sizeof(v7));
      v8 = 2;
      v6 = v2;
      sub_1BD865A00(v6, &off_1F3B9FFE0, v7, ObjectType, v4);
      swift_unknownObjectRelease();

      sub_1BD0DE53C(v7, &unk_1EBD3F510, &unk_1BE0B9B30);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD336E54()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD336E90(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD336EF0()
{
  result = qword_1EBD49660;
  if (!qword_1EBD49660)
  {
    sub_1BE04AA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49660);
  }

  return result;
}

unint64_t sub_1BD336F54()
{
  result = qword_1EBD42308;
  if (!qword_1EBD42308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42308);
  }

  return result;
}

unint64_t sub_1BD336FAC()
{
  result = qword_1EBD42310;
  if (!qword_1EBD42310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42310);
  }

  return result;
}

uint64_t sub_1BD337084()
{
  v0 = sub_1BE04A884();
  __swift_allocate_value_buffer(v0, qword_1EBDAAF20);
  __swift_project_value_buffer(v0, qword_1EBDAAF20);
  return sub_1BE04A864();
}

uint64_t sub_1BD3370F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1BE0487A4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = sub_1BE04A3B4();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD3372D0, 0, 0);
}

uint64_t sub_1BD3372D0()
{
  sub_1BD337948();
  v1 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
  v2 = [v1 account];

  if (v2 && [v2 supportsDeviceTap])
  {
    v3 = v0 + 16;
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[7];
    sub_1BE04A3A4();
    sub_1BE052434();
    sub_1BE04A394();
    v7 = sub_1BE052434();
    MEMORY[0x1BFB37400](v7);
    v8 = sub_1BE052434();
    v10 = v9;
    MEMORY[0x1BFB3F610](v8);
    v10, v11, v12, v13, v14, v15, v16, v17;
    MEMORY[0x1BFB37410](47, 0xE100000000000000);
    sub_1BE04A364();
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      v18 = v0[7];
LABEL_7:
      sub_1BD226BBC(v18);
      sub_1BE0484F4();
      sub_1BD337A90(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
      swift_allocError();
      sub_1BE0484E4();
      swift_willThrow();

      (*(v0[14] + 8))(*v3, v0[13]);

      v22 = v0[1];
      goto LABEL_11;
    }

    v25 = v0 + 12;
    v29 = v0[12];
    v30 = v0[11];
    v31 = v0[8];
    v32 = v0[9];
    (*(v32 + 32))(v29, v0[7], v31);
    (*(v32 + 16))(v30, v29, v31);
  }

  else
  {
    v3 = v0 + 15;
    v19 = v0[8];
    v20 = v0[9];
    v21 = v0[6];
    sub_1BE04A3A4();
    sub_1BE052434();
    sub_1BE04A394();
    sub_1BE04A364();
    if ((*(v20 + 48))(v21, 1, v19) == 1)
    {
      v18 = v0[6];
      goto LABEL_7;
    }

    v23 = v0[10];
    v24 = v0[11];
    v25 = v0 + 10;
    v26 = v2;
    v28 = v0[8];
    v27 = v0[9];
    (*(v27 + 32))(v23, v0[6], v28);
    (*(v27 + 16))(v24, v23, v28);
    v2 = v26;
  }

  sub_1BE0487B4();
  sub_1BD337A90(&qword_1EBD42320, MEMORY[0x1E695A070], MEMORY[0x1E695A068]);
  sub_1BE048734();

  v33 = *v3;
  v34 = *v25;
  v35 = v0[13];
  v36 = v0[14];
  v37 = v0[9];
  v38 = v0[8];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v37 + 8))(v34, v38);
  (*(v36 + 8))(v33, v35);

  v22 = v0[1];
LABEL_11:

  return v22();
}

uint64_t sub_1BD337758@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36BA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAF20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD337800(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD3370F0(a1);
}

uint64_t sub_1BD337898(uint64_t a1)
{
  v2 = sub_1BD15D1F4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD3378E4()
{
  result = qword_1EBD42318;
  if (!qword_1EBD42318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD528D0, &unk_1BE0B84B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42318);
  }

  return result;
}

void sub_1BD337948()
{
  [objc_opt_self() beginSubjectReporting_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v1 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v2 = sub_1BE052434();
  v3 = MEMORY[0x1E69BA440];
  *(inited + 40) = v2;
  *(inited + 48) = v4;
  v5 = *v3;
  *(inited + 56) = *v3;
  v6 = sub_1BE052434();
  v7 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = *v7;
  *(inited + 80) = *v7;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v10;
  v11 = v1;
  v12 = v5;
  v13 = v9;
  v14 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
}

uint64_t sub_1BD337A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PKBankConnectAccountDetailsView(uint64_t a1)
{
  result = qword_1EBD42338;
  if (!qword_1EBD42338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD337B4C(uint64_t a1)
{
  sub_1BD337C28(319, &qword_1EBD39FD8, MEMORY[0x1E697F6A0]);
  if (v1 <= 0x3F)
  {
    sub_1BD337C28(319, &qword_1EBD38900, MEMORY[0x1E697E730]);
    if (v2 <= 0x3F)
    {
      sub_1BD337C7C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD337C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE04E3A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD337C7C(uint64_t a1)
{
  if (!qword_1EBD42348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42350, &qword_1BE0CD250);
    v1 = sub_1BE04E3A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD42348);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI31PKBankConnectAccountDetailsViewV0H5ModelV11SubheadlineO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD337D24@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v22 - v9);
  sub_1BD0DE19C(v2, &v22 - v9, &qword_1EBD521C0, qword_1BE0B9CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04F774();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = *v10;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BD337F24@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_1BE04FF64();
  v2 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42358, &qword_1BE0CD310);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42360, &qword_1BE0CD318);
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v24 - v9;
  *v7 = sub_1BE04F7C4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42368, &qword_1BE0CD320);
  sub_1BD3381E0(v1, &v7[*(v11 + 44)]);
  sub_1BE04FF44();
  v12 = sub_1BD0DE4F4(&qword_1EBD42370, &qword_1EBD42358, &qword_1BE0CD310, MEMORY[0x1E6981870]);
  sub_1BE050D14();
  (*(v2 + 8))(v4, v26);
  sub_1BD0DE53C(v7, &qword_1EBD42358, &qword_1BE0CD310);
  sub_1BE052434();
  v14 = v13;
  v28 = v5;
  v29 = v12;
  swift_getOpaqueTypeConformance2();
  v15 = v25;
  sub_1BE050DE4();
  v14, v16, v17, v18, v19, v20, v21, v22;
  return (*(v8 + 8))(v10, v15);
}

id sub_1BD3381E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42378, &qword_1BE0CD328);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v167 = (v151 - v4);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42380, &qword_1BE0CD330);
  MEMORY[0x1EEE9AC00](v155);
  v157 = v151 - v5;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42388, &qword_1BE0CD338);
  MEMORY[0x1EEE9AC00](v154);
  v156 = v151 - v6;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42390, &qword_1BE0CD340);
  MEMORY[0x1EEE9AC00](v153);
  v159 = v151 - v7;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42398, &qword_1BE0CD348);
  MEMORY[0x1EEE9AC00](v158);
  v163 = v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v152 = v151 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v160 = v151 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423A0, &qword_1BE0CD350);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v162 = v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v161 = v151 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v168 = v151 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v171 = v151 - v20;
  v21 = *(type metadata accessor for PKBankConnectAccountDetailsView(0) + 28);
  v166 = a1;
  v22 = a1 + v21;
  v23 = *(a1 + v21);
  v24 = *(v22 + 8);
  v169 = v22;
  *&v186[0] = v23;
  *(&v186[0] + 1) = v24;
  v25 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v170 = v25;
  v26 = sub_1BE0506C4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *MEMORY[0x1E69DB8C8];
  v34 = *MEMORY[0x1E69DDC90];
  v35 = *MEMORY[0x1E69DB978];
  v165 = *MEMORY[0x1E69DDD80];
  result = PKFontForDesign(v33, v165, v34, 0x8000, 0, v35);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v37 = sub_1BE050484();
  v38 = sub_1BE0505F4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v37, v39, v41, v43, v45, v46, v47, v48;
  sub_1BD0DDF10(v26, v28, (v30 & 1), v49, v50, v51, v52, v53);
  v32, v54, v55, v56, v57, v58, v59, v60;
  KeyPath = swift_getKeyPath();
  v62 = swift_getKeyPath();
  v63 = v42 & 1;
  v189 = v42 & 1;
  v188 = 0;
  v64 = v169;
  v65 = *(v169 + 48);
  v66 = swift_getKeyPath();
  *&v180 = v38;
  *(&v180 + 1) = v40;
  LOBYTE(v181) = v63;
  *(&v181 + 1) = v44;
  *&v182 = KeyPath;
  *(&v182 + 1) = 0x3FE0000000000000;
  *&v183 = v62;
  *(&v183 + 1) = 1;
  LOBYTE(v184) = 0;
  *(&v184 + 1) = v66;
  v185 = v65;
  sub_1BE052434();
  v68 = v67;
  sub_1BE048964();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423A8, &qword_1BE0CD3E8);
  v151[0] = sub_1BD3391E8();
  v151[1] = v69;
  sub_1BE050DE4();
  v68, v70, v71, v72, v73, v74, v75, v76;
  v186[2] = v182;
  v186[3] = v183;
  v186[4] = v184;
  v187 = v185;
  v186[0] = v180;
  v186[1] = v181;
  sub_1BD0DE53C(v186, &qword_1EBD423A8, &qword_1BE0CD3E8);
  v77 = *(v64 + 24);
  *&v180 = *(v64 + 16);
  *(&v180 + 1) = v77;
  sub_1BE048C84();
  v78 = sub_1BE0506C4();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = *MEMORY[0x1E69DB8D8];
  v86 = *MEMORY[0x1E69DDDB8];
  v87 = *MEMORY[0x1E69DB958];
  v170 = *MEMORY[0x1E69DDC38];
  result = PKFontForDesign(v85, v86, v170, 2, 0, v87);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v88 = sub_1BE050484();
  v89 = sub_1BE0505F4();
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v88, v90, v92, v94, v96, v97, v98, v99;
  sub_1BD0DDF10(v78, v80, (v82 & 1), v100, v101, v102, v103, v104);
  v84, v105, v106, v107, v108, v109, v110, v111;
  v112 = swift_getKeyPath();
  v113 = swift_getKeyPath();
  v93 &= 1u;
  v179 = v93;
  v178 = 0;
  v114 = sub_1BE051464();
  v115 = swift_getKeyPath();
  *&v172 = v89;
  *(&v172 + 1) = v91;
  LOBYTE(v173) = v93;
  *(&v173 + 1) = v95;
  *&v174 = v112;
  *(&v174 + 1) = 0x3FE0000000000000;
  *&v175 = v113;
  *(&v175 + 1) = 1;
  LOBYTE(v176) = 0;
  *(&v176 + 1) = v115;
  v177 = v114;
  sub_1BE052434();
  v117 = v116;
  v118 = v168;
  sub_1BE050DE4();
  v117, v119, v120, v121, v122, v123, v124, v125;
  v182 = v174;
  v183 = v175;
  v184 = v176;
  v185 = v177;
  v180 = v172;
  v181 = v173;
  sub_1BD0DE53C(&v180, &qword_1EBD423A8, &qword_1BE0CD3E8);
  v126 = v167;
  sub_1BD338B28(v166, v167);
  result = PKFontForDefaultDesign(v165, v170, 0x8000, 0, v35);
  if (result)
  {
    v127 = sub_1BE050484();
    v128 = swift_getKeyPath();
    v129 = v126;
    v130 = v157;
    sub_1BD0DE204(v129, v157, &qword_1EBD42378, &qword_1BE0CD328);
    v131 = (v130 + *(v155 + 36));
    *v131 = v128;
    v131[1] = v127;
    v132 = swift_getKeyPath();
    v133 = v156;
    sub_1BD0DE204(v130, v156, &qword_1EBD42380, &qword_1BE0CD330);
    v134 = (v133 + *(v154 + 36));
    *v134 = v132;
    v134[1] = 0x3FE0000000000000;
    v135 = swift_getKeyPath();
    v136 = v159;
    sub_1BD0DE204(v133, v159, &qword_1EBD42388, &qword_1BE0CD338);
    v137 = v136 + *(v153 + 36);
    *v137 = v135;
    *(v137 + 8) = 1;
    *(v137 + 16) = 0;
    v138 = sub_1BE051494();
    v139 = swift_getKeyPath();
    v140 = v136;
    v141 = v152;
    sub_1BD0DE204(v140, v152, &qword_1EBD42390, &qword_1BE0CD340);
    v142 = (v141 + *(v158 + 36));
    *v142 = v139;
    v142[1] = v138;
    v143 = v141;
    v144 = v160;
    sub_1BD0DE204(v143, v160, &qword_1EBD42398, &qword_1BE0CD348);
    v145 = v161;
    sub_1BD0DE19C(v171, v161, &qword_1EBD423A0, &qword_1BE0CD350);
    v146 = v162;
    sub_1BD0DE19C(v118, v162, &qword_1EBD423A0, &qword_1BE0CD350);
    v147 = v163;
    sub_1BD0DE19C(v144, v163, &qword_1EBD42398, &qword_1BE0CD348);
    v148 = v164;
    sub_1BD0DE19C(v145, v164, &qword_1EBD423A0, &qword_1BE0CD350);
    v149 = v118;
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423C8, &qword_1BE0CD428);
    sub_1BD0DE19C(v146, v148 + *(v150 + 48), &qword_1EBD423A0, &qword_1BE0CD350);
    sub_1BD0DE19C(v147, v148 + *(v150 + 64), &qword_1EBD42398, &qword_1BE0CD348);
    sub_1BD0DE53C(v144, &qword_1EBD42398, &qword_1BE0CD348);
    sub_1BD0DE53C(v149, &qword_1EBD423A0, &qword_1BE0CD350);
    sub_1BD0DE53C(v171, &qword_1EBD423A0, &qword_1BE0CD350);
    sub_1BD0DE53C(v147, &qword_1EBD42398, &qword_1BE0CD348);
    sub_1BD0DE53C(v146, &qword_1EBD423A0, &qword_1BE0CD350);
    return sub_1BD0DE53C(v145, &qword_1EBD423A0, &qword_1BE0CD350);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1BD338B28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v70 = a2;
  v3 = sub_1BE04F774();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423D0, &qword_1BE0CD430);
  MEMORY[0x1EEE9AC00](v69);
  v11 = &v64 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423D8, &qword_1BE0CD438);
  MEMORY[0x1EEE9AC00](v66);
  v13 = &v64 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423E0, &unk_1BE0CD440);
  MEMORY[0x1EEE9AC00](v68);
  v15 = &v64 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v67);
  v17 = &v64 - v16;
  v18 = a1 + *(type metadata accessor for PKBankConnectAccountDetailsView(0) + 28);
  v19 = *(v18 + 40);
  if (v19)
  {
    if (v19 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD339358();
      return sub_1BE04F9A4();
    }

    *&v74 = *(v18 + 32);
    *(&v74 + 1) = v19;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v23 = sub_1BE0506C4();
    v25 = v24;
    v27 = v26;
    *&v74 = v23;
    *(&v74 + 1) = v24;
    v29 = (v28 & 1);
    LOBYTE(v75) = v28 & 1;
    *(&v75 + 1) = v26;
    sub_1BE052434();
    v31 = v30;
    sub_1BE050DE4();
    v31, v32, v33, v34, v35, v36, v37, v38;
    sub_1BD0DDF10(v23, v25, v29, v39, v40, v41, v42, v43);
    v27, v44, v45, v46, v47, v48, v49, v50;
    sub_1BD0DE19C(v17, v13, &qword_1EBD452C0, &qword_1BE0B7620);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423F8, &qword_1BE0CD450);
    sub_1BD339410(&qword_1EBD397C8, &qword_1EBD452C0, &qword_1BE0B7620, sub_1BD0F15A0);
    sub_1BD339494();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v15, v11, &qword_1EBD423E0, &unk_1BE0CD440);
    swift_storeEnumTagMultiPayload();
    sub_1BD339358();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v15, &qword_1EBD423E0, &unk_1BE0CD440);
    v51 = v17;
    v52 = &qword_1EBD452C0;
    v53 = &qword_1BE0B7620;
  }

  else
  {
    sub_1BD337D24(v9);
    (*(v4 + 104))(v6, *MEMORY[0x1E697F648], v3);
    v21 = sub_1BD3395A0(v9, v6);
    v22 = *(v4 + 8);
    v22(v6, v3);
    v22(v9, v3);
    if (v21)
    {
      v71 = xmmword_1BE0CD200;
      *&v72 = 0;
      *(&v72 + 1) = MEMORY[0x1E69E7CC0];
      v73 = 0;
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
      v73 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42408, &unk_1BE0CD458);
    sub_1BD339410(&qword_1EBD42400, &qword_1EBD42408, &unk_1BE0CD458, sub_1BD33954C);
    sub_1BE04F9A4();
    v54 = v75;
    v55 = v76;
    v64 = v74;
    v65 = v75;
    *v13 = v74;
    *(v13 + 1) = v54;
    v13[32] = v55;
    swift_storeEnumTagMultiPayload();
    v56 = v64;
    v57 = v65;
    sub_1BD3399B8(v64, *(&v64 + 1), v65, *(&v65 + 1), v55);
    sub_1BD3399B8(v56, *(&v56 + 1), v57, *(&v57 + 1), v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423F8, &qword_1BE0CD450);
    sub_1BD339410(&qword_1EBD397C8, &qword_1EBD452C0, &qword_1BE0B7620, sub_1BD0F15A0);
    sub_1BD339494();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v15, v11, &qword_1EBD423E0, &unk_1BE0CD440);
    swift_storeEnumTagMultiPayload();
    sub_1BD339358();
    sub_1BE04F9A4();
    sub_1BD3399FC(v56, *(&v56 + 1), v57, *(&v57 + 1), v55, v58, v59, v60);
    sub_1BD3399FC(v56, *(&v56 + 1), v57, *(&v57 + 1), v55, v61, v62, v63);
    v51 = v15;
    v52 = &qword_1EBD423E0;
    v53 = &unk_1BE0CD440;
  }

  return sub_1BD0DE53C(v51, v52, v53);
}

unint64_t sub_1BD3391E8()
{
  result = qword_1EBD423B0;
  if (!qword_1EBD423B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD423A8, &qword_1BE0CD3E8);
    sub_1BD3392A0();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD423B0);
  }

  return result;
}

unint64_t sub_1BD3392A0()
{
  result = qword_1EBD423B8;
  if (!qword_1EBD423B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD423C0, &qword_1BE0CD3F0);
    sub_1BD166FEC();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD423B8);
  }

  return result;
}

unint64_t sub_1BD339358()
{
  result = qword_1EBD423E8;
  if (!qword_1EBD423E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD423E0, &unk_1BE0CD440);
    sub_1BD339410(&qword_1EBD397C8, &qword_1EBD452C0, &qword_1BE0B7620, sub_1BD0F15A0);
    sub_1BD339494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD423E8);
  }

  return result;
}

uint64_t sub_1BD339410(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD339494()
{
  result = qword_1EBD423F0;
  if (!qword_1EBD423F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD423F8, &qword_1BE0CD450);
    sub_1BD339410(&qword_1EBD42400, &qword_1EBD42408, &unk_1BE0CD458, sub_1BD33954C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD423F0);
  }

  return result;
}

unint64_t sub_1BD33954C()
{
  result = qword_1EBD42410;
  if (!qword_1EBD42410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42410);
  }

  return result;
}

BOOL sub_1BD3395A0(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_1BE04F774();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x1E697F658];
  if (v13 != *MEMORY[0x1E697F658])
  {
    if (v13 == *MEMORY[0x1E697F690])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F698])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E697F650])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x1E697F660])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x1E697F630])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x1E697F670])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x1E697F668])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x1E697F678])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x1E697F640])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E697F690])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E697F698])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F680])
    {
      if (v16 == *MEMORY[0x1E697F650])
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F660])
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F630])
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F670])
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F668])
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F678])
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F640])
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F648])
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

uint64_t sub_1BD3399B8(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1BD0D7F18(result, a2, a3 & 1);

    return sub_1BE048C84();
  }

  return result;
}

void sub_1BD3399FC(void *result, char *a2, char a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((a5 & 1) == 0)
  {
    sub_1BD0DDF10(result, a2, (a3 & 1), a4, a5, a6, a7, a8);

    a4, v10, v11, v12, v13, v14, v15, v16;
  }
}

uint64_t sub_1BD339A40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1BD339A94(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1BD339AF0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1BD339B20()
{
  result = qword_1EBD42418;
  if (!qword_1EBD42418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42420, &qword_1BE0CD4B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42358, &qword_1BE0CD310);
    sub_1BD0DE4F4(&qword_1EBD42370, &qword_1EBD42358, &qword_1BE0CD310, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42418);
  }

  return result;
}

uint64_t sub_1BD339C2C()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD339CA0(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

unint64_t sub_1BD339D18()
{
  result = qword_1EBD42428;
  if (!qword_1EBD42428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42428);
  }

  return result;
}

uint64_t type metadata accessor for AppleBalanceDirectTopUpView(uint64_t a1)
{
  result = qword_1EBD42430;
  if (!qword_1EBD42430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD339DE0(uint64_t a1)
{
  type metadata accessor for PKAppleBalanceDirectTopUpPresentationContext(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AccountModel(319);
    if (v2 <= 0x3F)
    {
      sub_1BD33A100(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD33A0AC(319, &qword_1EBD42440, type metadata accessor for DirectTopUpModel);
        if (v4 <= 0x3F)
        {
          sub_1BD33A018(319);
          if (v5 <= 0x3F)
          {
            sub_1BD327BD8(319, &qword_1EBD496E0, MEMORY[0x1E69E6370]);
            if (v6 <= 0x3F)
            {
              sub_1BD33A0AC(319, &qword_1EBD42448, type metadata accessor for Decimal);
              if (v7 <= 0x3F)
              {
                sub_1BD327BD8(319, &qword_1EBD40458, MEMORY[0x1E69E6158]);
                if (v8 <= 0x3F)
                {
                  sub_1BD327BD8(319, &qword_1EBD42450, MEMORY[0x1E69815C0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD327BD8(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0]);
                    if (v10 <= 0x3F)
                    {
                      sub_1BD33A100(319, &qword_1EBD3E9B0, &qword_1EBD416C0, &unk_1BE0BC2A0, MEMORY[0x1E6981790]);
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

void sub_1BD33A018(uint64_t a1)
{
  if (!qword_1EBD59640)
  {
    type metadata accessor for KeyboardObserver(255);
    sub_1BD33E4BC(&qword_1EBD36500, type metadata accessor for KeyboardObserver, &unk_1BE0DB430);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD59640);
    }
  }
}

void sub_1BD33A0AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0516D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD33A100(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1BD33A180(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04BD74();
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - v14;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 80) = sub_1BD24B1AC;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  LOBYTE(v90) = 1;
  sub_1BE051694();
  v16 = *(&v93 + 1);
  *(a4 + 104) = v93;
  *(a4 + 112) = v16;
  v90 = MEMORY[0x1BFB403C0](0);
  v91 = v17;
  LODWORD(v92) = v18;
  type metadata accessor for Decimal(0);
  sub_1BE051694();
  v19 = v94;
  *(a4 + 120) = v93;
  *(a4 + 136) = v19;
  v88 = sub_1BE051494();
  sub_1BE051694();
  v20 = v91;
  *(a4 + 176) = v90;
  *(a4 + 184) = v20;
  v88 = 0;
  sub_1BE051694();
  v21 = v91;
  *(a4 + 192) = v90;
  *(a4 + 200) = v21;
  LOBYTE(v88) = 0;
  sub_1BE051694();
  v22 = v91;
  *(a4 + 208) = v90;
  *(a4 + 216) = v22;
  type metadata accessor for AppleBalanceDirectTopUpView(0);
  v23 = type metadata accessor for FeatureError(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_1BD0DE19C(v15, v12, &qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BE051694();
  sub_1BD0DE53C(v15, &qword_1EBD416C0, &unk_1BE0BC2A0);
  *a4 = a1;
  *(a4 + 8) = a2;
  v88 = a3;
  type metadata accessor for DirectTopUpModel(0);
  v24 = a2;
  v25 = a3;
  sub_1BE051694();
  v26 = v91;
  *(a4 + 64) = v90;
  *(a4 + 72) = v26;
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  sub_1BE04D8B4(&v90);
  KeyPath, v29, v30, v31, v32, v33, v34, v35;
  v28, v36, v37, v38, v39, v40, v41, v42;
  v43 = v90;
  if (!v90)
  {
    goto LABEL_10;
  }

  v44 = [v90 accountSummary];

  if (!v44)
  {
    goto LABEL_10;
  }

  v45 = [v44 currentBalance];

  if (!v45)
  {
    goto LABEL_10;
  }

  v46 = swift_getKeyPath();
  v47 = swift_getKeyPath();
  sub_1BE04D8B4(&v90);
  v46, v48, v49, v50, v51, v52, v53, v54;
  v47, v55, v56, v57, v58, v59, v60, v61;

  v62 = v90;
  if (!v90 || (v63 = [v90 currencyCode], v62, !v63))
  {
    v24 = v45;
LABEL_10:

    v88 = 0;
    v89 = 0xE000000000000000;
    sub_1BE051694();

    goto LABEL_11;
  }

  v65 = v85;
  v64 = v86;
  (*(v85 + 104))(v87, *MEMORY[0x1E69B8060], v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1BE0B69E0;
  v67 = v45;
  v68 = PKCurrencyAmountMake();

  if (v68)
  {
    v69 = [v68 minimalFormattedStringValue];

    if (v69)
    {
      v70 = sub_1BE052434();
      v72 = v71;

      *(v66 + 56) = MEMORY[0x1E69E6158];
      *(v66 + 64) = sub_1BD110550();
      *(v66 + 32) = v70;
      *(v66 + 40) = v72;
      v73 = v87;
      v74 = sub_1BE04B714();
      v76 = v75;
      v66, v75, v77, v78, v79, v80, v81, v82;
      (*(v65 + 8))(v73, v64);
      v88 = v74;
      v89 = v76;
      sub_1BE051694();

LABEL_11:
      v83 = v91;
      v84 = v92;
      *(a4 + 152) = v90;
      *(a4 + 160) = v83;
      *(a4 + 168) = v84;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD33A70C()
{
  if (*v0 != 3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42488, &qword_1BE0CD660);
  sub_1BE0516A4();
  KeyPath = swift_getKeyPath();
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *&v13[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion];
  v10 = v9;

  if (!v9)
  {
    return 0;
  }

  v11 = [v10 bonusMinAmount];

  return v11;
}

uint64_t sub_1BD33A824@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v100 = type metadata accessor for AppleBalanceDirectTopUpView(0);
  v94 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = v3;
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42458, &qword_1BE0CD630);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v90 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42460, &qword_1BE0CD638);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v90 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42468, &qword_1BE0CD640);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42470, &qword_1BE0CD648);
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v93 = &v90 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42478, &qword_1BE0CD650);
  MEMORY[0x1EEE9AC00](v92);
  v97 = &v90 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42480, &qword_1BE0CD658);
  MEMORY[0x1EEE9AC00](v91);
  v95 = &v90 - v16;
  v17 = *(v1 + 72);
  *&v103 = *(v1 + 64);
  *(&v103 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42488, &qword_1BE0CD660);
  sub_1BE0516A4();
  v18 = v102;
  KeyPath = swift_getKeyPath();
  *&v103 = v18;
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v20, v21, v22, v23, v24, v25, v26;
  v27 = *&v18[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration];
  v28 = v27;

  if (v27)
  {
  }

  *v7 = sub_1BE04F7B4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42490, &qword_1BE0CD690);
  sub_1BD33B02C(v2, v27 != 0, &v7[*(v29 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v7, v10, &qword_1EBD42458, &qword_1BE0CD630);
  v30 = &v10[*(v8 + 36)];
  v31 = v108;
  *(v30 + 4) = v107;
  *(v30 + 5) = v31;
  *(v30 + 6) = v109;
  v32 = v104;
  *v30 = v103;
  *(v30 + 1) = v32;
  v33 = v106;
  *(v30 + 2) = v105;
  *(v30 + 3) = v33;
  v34 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v13;
  sub_1BD0DE204(v10, v13, &qword_1EBD42460, &qword_1BE0CD638);
  v90 = v11;
  v44 = &v13[*(v11 + 36)];
  *v44 = v34;
  *(v44 + 1) = v36;
  *(v44 + 2) = v38;
  *(v44 + 3) = v40;
  *(v44 + 4) = v42;
  v44[40] = 0;
  type metadata accessor for KeyboardObserver(0);
  sub_1BD33E4BC(&qword_1EBD36500, type metadata accessor for KeyboardObserver, &unk_1BE0DB430);
  v45 = sub_1BE04E3C4();
  v46 = swift_getKeyPath();
  v47 = swift_getKeyPath();
  sub_1BE04D8B4(&v102);
  v46, v48, v49, v50, v51, v52, v53, v54;
  v47, v55, v56, v57, v58, v59, v60, v61;
  v45, v62, v63, v64, v65, v66, v67, v68;
  sub_1BD243118(v2, v4, v69);
  v70 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v71 = swift_allocObject();
  sub_1BD33E288(v4, v71 + v70, type metadata accessor for AppleBalanceDirectTopUpView);
  sub_1BD33DC9C(&qword_1EBD42498, &qword_1EBD42468, &qword_1BE0CD640, sub_1BD33D9C4);
  v72 = v93;
  sub_1BE051064();
  v71, v73, v74, v75, v76, v77, v78, v79;
  sub_1BD0DE53C(v43, &qword_1EBD42468, &qword_1BE0CD640);
  sub_1BD243118(v2, v4, v80);
  v81 = swift_allocObject();
  sub_1BD33E288(v4, v81 + v70, type metadata accessor for AppleBalanceDirectTopUpView);
  v82 = v97;
  (*(v96 + 32))(v97, v72, v98);
  v83 = (v82 + *(v92 + 36));
  *v83 = sub_1BD33DA7C;
  v83[1] = v81;
  v83[2] = 0;
  v83[3] = 0;
  v84 = v95;
  v85 = &v95[*(v91 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516C4();
  v86 = *(v2 + 48);
  v87 = *(v2 + 56);
  sub_1BD0DE204(v82, v84, &qword_1EBD42478, &qword_1BE0CD650);
  v88 = &v85[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
  *v88 = v86;
  v88[1] = v87;
  sub_1BD0DE204(v84, v101, &qword_1EBD42480, &qword_1BE0CD658);
  return sub_1BD0D44B8(v86, v87);
}

uint64_t sub_1BD33B02C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v181 = a2;
  v191 = a3;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424B0, &qword_1BE0CD768);
  MEMORY[0x1EEE9AC00](v190);
  v166 = &v158 - v4;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424B8, &qword_1BE0CD770);
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v164 = &v158 - v7;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424C0, &qword_1BE0CD778);
  MEMORY[0x1EEE9AC00](v184);
  v188 = &v158 - v8;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424C8, &unk_1BE0CD780);
  MEMORY[0x1EEE9AC00](v187);
  v168 = &v158 - v9;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v163 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v161 = &v158 - v10;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424D0, &qword_1BE0CD790);
  MEMORY[0x1EEE9AC00](v162);
  v167 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v182 = &v158 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424D8, &qword_1BE0CD798);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v189 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v196 = &v158 - v17;
  v18 = type metadata accessor for AppleBalanceDirectTopUpView(0);
  v178 = *(v18 - 8);
  v197 = *(v178 + 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v198 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424E0, &qword_1BE0CD7A0);
  v21 = *(v20 - 8);
  v179 = v20;
  v180 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v193 = &v158 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424E8, &qword_1BE0CD7A8);
  v185 = *(v23 - 8);
  v186 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v183 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v199 = &v158 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424F0, &qword_1BE0CD7B0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v195 = &v158 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v158 - v30;
  *v31 = sub_1BE04F504();
  *(v31 + 1) = 0;
  v31[16] = 1;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424F8, &qword_1BE0CD7B8) + 44);
  v194 = v31;
  sub_1BD33C340(&v31[v32]);
  v33 = *(a1 + 136);
  v237[0] = *(a1 + 120);
  v237[1] = v33;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42500, &unk_1BE0CD7C0);
  sub_1BE0516C4();
  v34 = *(a1 + 168);
  v216[0] = *(a1 + 152);
  *&v216[1] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516C4();
  v172 = v237[0];
  v173 = *(&v237[1] + 1);
  v174 = *&v237[1];
  v35 = *(a1 + 184);
  *&v216[0] = *(a1 + 176);
  *(&v216[0] + 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42508, &qword_1BE0CD7D0);
  sub_1BE0516C4();
  v171 = *&v237[0];
  v170 = *(v237 + 8);
  v169 = sub_1BD33A70C();
  v36 = *(a1 + 8);
  v37 = *(a1 + 72);
  v38 = a1;
  *&v237[0] = *(a1 + 64);
  *(&v237[0] + 1) = v37;
  v39 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42488, &qword_1BE0CD660);
  sub_1BE0516A4();
  v40 = *&v216[0];
  KeyPath = swift_getKeyPath();
  *&v237[0] = v40;
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v42, v43, v44, v45, v46, v47, v48;
  v49 = *&v40[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration];
  v50 = v49;

  LODWORD(v177) = *(v38 + 104);
  v51 = v38;
  v176 = *(v38 + 112);
  LOBYTE(v216[0]) = v177;
  *(&v216[0] + 1) = v176;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v52 = v237[0];
  v53 = v237[1];
  LOBYTE(v216[0]) = 0;
  sub_1BE051694();
  v54 = v237[0];
  v55 = *(&v237[0] + 1);
  v232 = v225;
  v233 = v226;
  LODWORD(v234) = v227;
  LOBYTE(v31) = sub_1BE0501E4();
  sub_1BE04E1F4();
  LOBYTE(v208) = 0;
  v216[0] = v232;
  v216[1] = v233;
  *(&v216[2] + 8) = v172;
  *&v216[2] = v234;
  *(&v216[3] + 1) = v174;
  *&v216[4] = v173;
  *(&v216[4] + 1) = v171;
  v217 = v170;
  *&v218 = v169;
  *(&v218 + 1) = v39;
  *v219 = v49;
  *&v219[8] = v52;
  v219[24] = v53;
  *&v219[28] = *&v231[3];
  *&v219[25] = *v231;
  LOBYTE(v220) = v54;
  *(&v220 + 1) = *v230;
  DWORD1(v220) = *&v230[3];
  *(&v220 + 1) = v55;
  LOWORD(v221) = 256;
  WORD3(v221) = v229;
  *(&v221 + 2) = *&v228[7];
  BYTE8(v221) = v31;
  HIDWORD(v221) = *&v228[3];
  *(&v221 + 9) = *v228;
  *&v222 = v56;
  *(&v222 + 1) = v57;
  *&v223 = v58;
  *(&v223 + 1) = v59;
  v224 = 0;
  v60 = v51;
  v61 = *(v51 + 136);
  v237[0] = *(v51 + 120);
  v237[1] = v61;
  sub_1BE0516A4();
  v210 = v235;
  LODWORD(v211) = v236;
  v62 = v198;
  sub_1BD243118(v51, v198, *&v235);
  v63 = *(v178 + 80);
  v64 = (v63 + 16) & ~v63;
  v65 = swift_allocObject();
  v178 = type metadata accessor for AppleBalanceDirectTopUpView;
  sub_1BD33E288(v62, v65 + v64, type metadata accessor for AppleBalanceDirectTopUpView);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42510, &qword_1BE0CD7D8);
  type metadata accessor for Decimal(0);
  v68 = v67;
  v69 = sub_1BD33DC9C(&qword_1EBD42518, &qword_1EBD42510, &qword_1BE0CD7D8, sub_1BD33DD20);
  v70 = sub_1BD33E4BC(&qword_1EBD42530, type metadata accessor for Decimal, MEMORY[0x1E6969FE0]);
  sub_1BE051064();
  v65, v71, v72, v73, v74, v75, v76, v77;
  v237[10] = v221;
  v237[11] = v222;
  v237[12] = v223;
  v238 = v224;
  v237[6] = v218;
  v237[7] = *v219;
  v237[8] = *&v219[16];
  v237[9] = v220;
  v237[2] = v216[2];
  v237[3] = v216[3];
  v237[4] = v216[4];
  v237[5] = v217;
  v237[0] = v216[0];
  v237[1] = v216[1];
  sub_1BD0DE53C(v237, &qword_1EBD42510, &qword_1BE0CD7D8);
  LOBYTE(v216[0]) = v177;
  *(&v216[0] + 1) = v176;
  sub_1BE0516A4();
  v175 = v60;
  v78 = v198;
  sub_1BD243118(v60, v198, v79);
  v177 = v63;
  v80 = swift_allocObject();
  v176 = v64;
  sub_1BD33E288(v78, v80 + v64, v178);
  *&v216[0] = v66;
  *(&v216[0] + 1) = v68;
  *&v216[1] = v69;
  *(&v216[1] + 1) = v70;
  swift_getOpaqueTypeConformance2();
  v81 = v179;
  v82 = v193;
  sub_1BE051064();
  v80, v83, v84, v85, v86, v87, v88, v89;
  (*(v180 + 8))(v82, v81);
  if (v181)
  {
    v90 = sub_1BE04F7B4();
    LOBYTE(v210) = 0;
    v91 = v175;
    sub_1BD33C87C(v206);
    *(&v216[1] + 7) = v206[1];
    *(v216 + 7) = v206[0];
    *(&v216[2] + 7) = v206[2];
    *(&v216[3] + 7) = v207;
    *&v209[17] = v216[1];
    *&v209[33] = v216[2];
    *&v209[49] = v216[3];
    *&v208 = v90;
    *(&v208 + 1) = 0x4014000000000000;
    v209[0] = v210;
    *&v209[64] = *(&v207 + 1);
    *&v209[1] = v216[0];
    v92 = v198;
    sub_1BD243118(v91, v198, *&v216[2]);
    v93 = v176;
    v94 = swift_allocObject();
    sub_1BD33E288(v92, v94 + v93, type metadata accessor for AppleBalanceDirectTopUpView);
    v95 = v161;
    sub_1BE051704();
    v96 = *(v91 + 216);
    LOBYTE(v210) = *(v91 + 208);
    *(&v210 + 1) = v96;
    sub_1BE0516C4();
    v97 = v216[0];
    LODWORD(v193) = LOBYTE(v216[1]);
    sub_1BD243118(v91, v92, v98);
    v99 = swift_allocObject();
    sub_1BD33E288(v92, v99 + v93, type metadata accessor for AppleBalanceDirectTopUpView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42558, &qword_1BE0CD828);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BD33E1D4();
    v100 = v182;
    v101 = v165;
    sub_1BE050F64();
    *(&v97 + 1), v102, v103, v104, v105, v106, v107, v108;
    v99, v109, v110, v111, v112, v113, v114, v115;
    v97, v116, v117, v118, v119, v120, v121, v122;
    (*(v163 + 8))(v95, v101);
    LOBYTE(v90) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v123 = v100 + *(v162 + 36);
    *v123 = v90;
    *(v123 + 8) = v124;
    *(v123 + 16) = v125;
    *(v123 + 24) = v126;
    *(v123 + 32) = v127;
    *(v123 + 40) = 0;
    v202 = *&v209[16];
    v203 = *&v209[32];
    v204 = *&v209[48];
    v205 = *&v209[64];
    v200 = v208;
    v201 = *v209;
    v128 = v167;
    sub_1BD0DE19C(v100, v167, &qword_1EBD424D0, &qword_1BE0CD790);
    v129 = v203;
    v212 = v202;
    v213 = v203;
    v130 = v204;
    v214 = v204;
    v131 = v205;
    v215 = v205;
    v132 = v200;
    v133 = v201;
    v210 = v200;
    v211 = v201;
    v134 = v168;
    *(v168 + 2) = v202;
    *(v134 + 48) = v129;
    *(v134 + 64) = v130;
    *v134 = v132;
    *(v134 + 16) = v133;
    *(v134 + 80) = v131;
    *(v134 + 88) = 0;
    *(v134 + 96) = 1;
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42568, &unk_1BE0CD830);
    sub_1BD0DE19C(v128, v134 + *(v135 + 64), &qword_1EBD424D0, &qword_1BE0CD790);
    sub_1BD0DE19C(&v208, v216, &qword_1EBD3B890, &unk_1BE0C2FD0);
    sub_1BD0DE19C(&v210, v216, &qword_1EBD3B890, &unk_1BE0C2FD0);
    sub_1BD0DE53C(v128, &qword_1EBD424D0, &qword_1BE0CD790);
    v216[2] = v202;
    v216[3] = v203;
    v216[4] = v204;
    *&v217 = v205;
    v216[0] = v200;
    v216[1] = v201;
    sub_1BD0DE53C(v216, &qword_1EBD3B890, &unk_1BE0C2FD0);
    sub_1BD0DE19C(v134, v188, &qword_1EBD424C8, &unk_1BE0CD780);
    swift_storeEnumTagMultiPayload();
    v136 = MEMORY[0x1E6981F48];
    sub_1BD0DE4F4(&qword_1EBD42540, &qword_1EBD424C8, &unk_1BE0CD780, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD42548, &qword_1EBD424B0, &qword_1BE0CD768, v136);
    sub_1BE04F9A4();
    sub_1BD0DE53C(&v208, &qword_1EBD3B890, &unk_1BE0C2FD0);
    sub_1BD0DE53C(v134, &qword_1EBD424C8, &unk_1BE0CD780);
    sub_1BD0DE53C(v182, &qword_1EBD424D0, &qword_1BE0CD790);
  }

  else
  {
    v137 = v164;
    sub_1BE04E4F4();
    v138 = [objc_opt_self() secondaryLabelColor];
    v139 = sub_1BE0511C4();
    v140 = swift_getKeyPath();
    *&v216[0] = v139;
    v141 = sub_1BE04E5F4();
    v142 = v160;
    v143 = (v137 + *(v159 + 36));
    *v143 = v140;
    v143[1] = v141;
    sub_1BD0DE19C(v137, v142, &qword_1EBD424B8, &qword_1BE0CD770);
    v144 = v166;
    sub_1BD0DE19C(v142, v166, &qword_1EBD424B8, &qword_1BE0CD770);
    v145 = v144 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42538, &qword_1BE0CD818) + 48);
    *v145 = 0;
    *(v145 + 8) = 1;
    sub_1BD0DE53C(v142, &qword_1EBD424B8, &qword_1BE0CD770);
    sub_1BD0DE19C(v144, v188, &qword_1EBD424B0, &qword_1BE0CD768);
    swift_storeEnumTagMultiPayload();
    v146 = MEMORY[0x1E6981F48];
    sub_1BD0DE4F4(&qword_1EBD42540, &qword_1EBD424C8, &unk_1BE0CD780, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD42548, &qword_1EBD424B0, &qword_1BE0CD768, v146);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v144, &qword_1EBD424B0, &qword_1BE0CD768);
    sub_1BD0DE53C(v137, &qword_1EBD424B8, &qword_1BE0CD770);
  }

  v147 = v195;
  sub_1BD0DE19C(v194, v195, &qword_1EBD424F0, &qword_1BE0CD7B0);
  v149 = v185;
  v148 = v186;
  v150 = *(v185 + 16);
  v151 = v183;
  v150(v183, v199, v186);
  v152 = v196;
  v153 = v189;
  sub_1BD0DE19C(v196, v189, &qword_1EBD424D8, &qword_1BE0CD798);
  v154 = v191;
  sub_1BD0DE19C(v147, v191, &qword_1EBD424F0, &qword_1BE0CD7B0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42550, &qword_1BE0CD820);
  v150((v154 + *(v155 + 48)), v151, v148);
  sub_1BD0DE19C(v153, v154 + *(v155 + 64), &qword_1EBD424D8, &qword_1BE0CD798);
  sub_1BD0DE53C(v152, &qword_1EBD424D8, &qword_1BE0CD798);
  v156 = *(v149 + 8);
  v156(v199, v148);
  sub_1BD0DE53C(v194, &qword_1EBD424F0, &qword_1BE0CD7B0);
  sub_1BD0DE53C(v153, &qword_1EBD424D8, &qword_1BE0CD798);
  v156(v151, v148);
  return sub_1BD0DE53C(v195, &qword_1EBD424F0, &qword_1BE0CD7B0);
}

void sub_1BD33C340(void *a1@<X8>)
{
  v51 = a1;
  v1 = sub_1BE051584();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB70, &qword_1BE0C45E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42570, &unk_1BE0CD840);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = PKAccountHeroImageName();
  v17 = PKUIImageNamed(v16);

  if (v17)
  {
    v18 = sub_1BE051544();
    (*(v2 + 104))(v4, *MEMORY[0x1E6981630], v1);
    v19 = sub_1BE0515E4();
    v18, v20, v21, v22, v23, v24, v25, v26;
    (*(v2 + 8))(v4, v1);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v53 = 1;
    *&v52[6] = v54;
    *&v52[22] = v55;
    *&v52[38] = v56;
    v27 = &v7[*(v5 + 36)];
    v28 = *(sub_1BE04EDE4() + 20);
    v29 = *MEMORY[0x1E697F468];
    v30 = sub_1BE04F684();
    (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
    __asm { FMOV            V0.2D, #5.0 }

    *v27 = _Q0;
    *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    v36 = *&v52[16];
    *(v7 + 18) = *v52;
    *v7 = v19;
    *(v7 + 1) = 0;
    *(v7 + 8) = 1;
    *(v7 + 34) = v36;
    *(v7 + 50) = *&v52[32];
    *(v7 + 8) = *&v52[46];
    v37 = sub_1BE0513F4();
    v38 = sub_1BE051454();
    v37, v39, v40, v41, v42, v43, v44, v45;
    sub_1BD0DE204(v7, v12, &qword_1EBD3EB70, &qword_1BE0C45E0);
    v46 = &v12[*(v50 + 36)];
    *v46 = v38;
    *(v46 + 8) = xmmword_1BE0C9FB0;
    *(v46 + 3) = 0x4010000000000000;
    sub_1BD0DE204(v12, v15, &qword_1EBD42570, &unk_1BE0CD840);
    sub_1BD0DE19C(v15, v9, &qword_1EBD42570, &unk_1BE0CD840);
    v47 = v51;
    *v51 = 0;
    *(v47 + 8) = 1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42578, &qword_1BE0CD850);
    sub_1BD0DE19C(v9, v47 + *(v48 + 48), &qword_1EBD42570, &unk_1BE0CD840);
    v49 = v47 + *(v48 + 64);
    *v49 = 0;
    v49[8] = 1;
    sub_1BD0DE53C(v15, &qword_1EBD42570, &unk_1BE0CD840);
    sub_1BD0DE53C(v9, &qword_1EBD42570, &unk_1BE0CD840);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD33C784(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = *(a3 + 24);
    v5 = *(a2 + 4);
    v7 = *a2;
    v6 = a2[1];
    sub_1BE048964();
    v3(v7, v6, v5);

    sub_1BD0D4744(v3, v4, v8, v9, v10, v11, v12, v13);
  }
}

void sub_1BD33C80C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3)
  {
    v4 = *(a3 + 40);
    v5 = *a2;
    sub_1BE048964();
    v3(v5);

    sub_1BD0D4744(v3, v4, v6, v7, v8, v9, v10, v11);
  }
}

void sub_1BD33C87C(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() sharedInstance];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v3 appleAccountInformation];

  if (!v5)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v6 = [v5 appleID];

  if (v6)
  {
    v7 = sub_1BE052434();
    v65 = v8;
    v66 = v7;
  }

  else
  {
    v65 = 0xE000000000000000;
    v66 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  sub_1BD0DDEBC();
  v9 = sub_1BE0506C4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42508, &qword_1BE0CD7D0);
  sub_1BE0516A4();
  v16 = sub_1BE050564();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v67, v17, v19, v21, v23, v24, v25, v26;
  sub_1BD0DDF10(v9, v11, (v13 & 1), v27, v28, v29, v30, v31);
  v15, v32, v33, v34, v35, v36, v37, v38;
  v39 = (v20 & 1);
  *a2 = v66;
  *(a2 + 8) = v65;
  v40 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = v40;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  *(a2 + 48) = v39;
  *(a2 + 56) = v22;
  sub_1BD0D7F18(v66, v65, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v16, v18, v39);
  sub_1BE048C84();
  sub_1BD0DDF10(v16, v18, v39, v41, v42, v43, v44, v45);
  v22, v46, v47, v48, v49, v50, v51, v52;
  sub_1BD0DDF10(v66, v65, 0, v53, v54, v55, v56, v57);
  v40, v58, v59, v60, v61, v62, v63, v64;
}

double sub_1BD33CAC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

void sub_1BD33CB20(uint64_t *a1@<X8>)
{
  v75 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v74 = &v72 - v2;
  v3 = sub_1BE050474();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B8060], v6, v8);
  v11 = sub_1BE04B714();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v76 = v11;
  v77 = v13;
  sub_1BD0DDEBC();
  v14 = sub_1BE0506C4();
  v16 = v15;
  LOBYTE(v7) = v17;
  v19 = v18;
  v20 = [objc_opt_self() secondaryLabelColor];
  v21 = sub_1BE0511C4();
  v22 = sub_1BE050564();
  v24 = v23;
  LOBYTE(v13) = v25;
  v27 = v26;
  v21, v23, v25, v26, v28, v29, v30, v31;
  sub_1BD0DDF10(v14, v16, (v7 & 1), v32, v33, v34, v35, v36);
  v19, v37, v38, v39, v40, v41, v42, v43;
  v45 = v72;
  v44 = v73;
  (*(v72 + 104))(v5, *MEMORY[0x1E6980F20], v73);
  v46 = sub_1BE050354();
  v47 = v74;
  (*(*(v46 - 8) + 56))(v74, 1, 1, v46);
  v48 = sub_1BE0503C4();
  sub_1BD0DE53C(v47, &qword_1EBD49130, &qword_1BE0C7180);
  (*(v45 + 8))(v5, v44);
  v49 = sub_1BE0505F4();
  v51 = v50;
  LOBYTE(v45) = v52;
  v54 = v53;
  v48, v50, v52, v53, v55, v56, v57, v58;
  sub_1BD0DDF10(v22, v24, (v13 & 1), v59, v60, v61, v62, v63);
  v27, v64, v65, v66, v67, v68, v69, v70;
  v71 = v75;
  *v75 = v49;
  v71[1] = v51;
  *(v71 + 16) = v45 & 1;
  v71[3] = v54;
}

uint64_t sub_1BD33CECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SafariViewController(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 72);
  v24 = *(a1 + 64);
  v25 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42488, &qword_1BE0CD660);
  sub_1BE0516A4();
  v9 = v23[1];
  KeyPath = swift_getKeyPath();
  v24 = v9;
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = *&v9[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration];
  v19 = v18;

  if (v18)
  {
    v20 = [v19 termsURL];
    sub_1BE04A9F4();

    sub_1BD33E288(v7, a2, type metadata accessor for SafariViewController);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v5 + 56))(a2, v21, 1, v4);
}

double sub_1BD33D0B0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    v34 = v3;
    v35 = v4;
    type metadata accessor for KeyboardObserver(0);
    sub_1BD33E4BC(&qword_1EBD36500, type metadata accessor for KeyboardObserver, &unk_1BE0DB430);
    v6 = sub_1BE04E3C4();
    KeyPath = swift_getKeyPath();
    v8 = swift_getKeyPath();
    sub_1BE04D8B4(&v32);
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
    v8, v16, v17, v18, v19, v20, v21, v22;
    v6, v23, v24, v25, v26, v27, v28, v29;
    if ((v33 & 1) == 0)
    {
      v31 = *(a3 + 200);
      v32 = *(a3 + 192);
      v33 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830, &unk_1BE0B7CC0);
      sub_1BE0516B4();
    }
  }

  return result;
}

void sub_1BD33D1E8(uint64_t a1)
{
  v2 = type metadata accessor for AppleBalanceDirectTopUpView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v34 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42488, &qword_1BE0CD660);
  sub_1BE0516A4();
  KeyPath = swift_getKeyPath();
  v33 = v32;
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = *&v32[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration];
  v16 = v15;

  if (v15)
  {

    v17 = sub_1BD33A70C();
    v18 = v17;
    if (v17)
    {
    }

    v19 = *(a1 + 112);
    LOBYTE(v33) = *(a1 + 104);
    v34 = v19;
    LOBYTE(v32) = v18 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
  }

  else
  {
    v33 = v5;
    v34 = v6;
    sub_1BE0516A4();
    v20 = v32;
    sub_1BD243118(a1, &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v23 = swift_allocObject();
    sub_1BD33E288(&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for AppleBalanceDirectTopUpView);
    sub_1BD7B1638(sub_1BD33DA94, v23);
    v23, v24, v25, v26, v27, v28, v29, v30;
  }
}

void sub_1BD33D444(char a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = sub_1BE04D214();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = sub_1BD33A70C();
    v17 = v16;
    if (v16)
    {
    }

    v18 = *(a3 + 112);
    v30 = *(a3 + 104);
    v31 = v18;
    v29 = v17 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
  }

  else
  {
    sub_1BE04D194();
    v19 = a2;
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C34();

    if (os_log_type_enabled(v20, v21))
    {
      v28 = a3;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      if (a2)
      {
        v24 = a2;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        v26 = v25;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      *(v22 + 4) = v25;
      *v23 = v26;
      _os_log_impl(&dword_1BD026000, v20, v21, "Error loading DTU configuration: %@", v22, 0xCu);
      sub_1BD0DE53C(v23, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v23, -1, -1);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    v27 = a2;
    FeatureError.init(feature:error:)(4, a2, v11);
    type metadata accessor for AppleBalanceDirectTopUpView(0);
    sub_1BD0DE19C(v11, v8, &qword_1EBD416C0, &unk_1BE0BC2A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    sub_1BE0516B4();
    sub_1BD0DE53C(v11, &qword_1EBD416C0, &unk_1BE0BC2A0);
  }
}

void sub_1BD33D768(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD33D7E8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD33D85C(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v20);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v21;
  *a2 = v20;
  *(a2 + 8) = v19;
}

uint64_t sub_1BD33D8E4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD33D97C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD7B1A3C(v1);
}

unint64_t sub_1BD33D9C4()
{
  result = qword_1EBD424A0;
  if (!qword_1EBD424A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42460, &qword_1BE0CD638);
    sub_1BD0DE4F4(&qword_1EBD424A8, &qword_1EBD42458, &qword_1BE0CD630, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD424A0);
  }

  return result;
}

void sub_1BD33DA94(char a1, void *a2)
{
  v5 = *(type metadata accessor for AppleBalanceDirectTopUpView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD33D444(a1, a2, v6);
}

id sub_1BD33DB28@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = *(v6 + *a3);
  *a4 = v15;

  return v15;
}

void sub_1BD33DBEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD7B1BD4(v1);
}

void sub_1BD33DC1C(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for AppleBalanceDirectTopUpView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD33C784(a1, a2, v6);
}

uint64_t sub_1BD33DC9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD33DD20()
{
  result = qword_1EBD42520;
  if (!qword_1EBD42520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42528, &qword_1BE0CD7E0);
    sub_1BD33DDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42520);
  }

  return result;
}

unint64_t sub_1BD33DDAC()
{
  result = qword_1EBD4EEF0;
  if (!qword_1EBD4EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EEF0);
  }

  return result;
}

uint64_t sub_1BD33DE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppleBalanceDirectTopUpView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1BD33DEC4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppleBalanceDirectTopUpView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_27()
{
  v1 = type metadata accessor for AppleBalanceDirectTopUpView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 16))
  {
    *(v2 + 24), v3, v4, v5, v6, v7, v8, v9;
  }

  if (*(v2 + 32))
  {
    *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  }

  if (*(v2 + 48))
  {
    *(v2 + 56), v3, v4, v5, v6, v7, v8, v9;
  }

  *(v2 + 72), v10, v11, v12, v13, v14, v15, v16;
  sub_1BD0D45CC(*(v2 + 80), *(v2 + 88), *(v2 + 96), v17, v18, v19, v20, v21);
  *(v2 + 112), v22, v23, v24, v25, v26, v27, v28;
  *(v2 + 144), v29, v30, v31, v32, v33, v34, v35;
  *(v2 + 160), v36, v37, v38, v39, v40, v41, v42;
  *(v2 + 168), v43, v44, v45, v46, v47, v48, v49;
  *(v2 + 176), v50, v51, v52, v53, v54, v55, v56;
  *(v2 + 184), v57, v58, v59, v60, v61, v62, v63;
  *(v2 + 200), v64, v65, v66, v67, v68, v69, v70;
  *(v2 + 216), v71, v72, v73, v74, v75, v76, v77;
  v78 = (v2 + *(v1 + 68));
  v79 = type metadata accessor for FeatureError(0);
  if (!(*(*(v79 - 8) + 48))(v78, 1, v79))
  {

    v80 = *(v79 + 20);
    v81 = sub_1BE04B824();
    v82 = *(v81 - 8);
    if (!(*(v82 + 48))(v78 + v80, 1, v81))
    {
      (*(v82 + 8))(v78 + v80, v81);
    }
  }

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  *(v78 + *(v83 + 28)), v84, v85, v86, v87, v88, v89, v90;

  return swift_deallocObject();
}

uint64_t sub_1BD33E164@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleBalanceDirectTopUpView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD33CECC(v4, a1);
}

unint64_t sub_1BD33E1D4()
{
  result = qword_1EBD42560;
  if (!qword_1EBD42560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42558, &qword_1BE0CD828);
    sub_1BD33E4BC(&qword_1EBD394A8, type metadata accessor for SafariViewController, &unk_1BE0CA748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42560);
  }

  return result;
}

uint64_t sub_1BD33E288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD33E2F0()
{
  result = qword_1EBD42580;
  if (!qword_1EBD42580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42480, &qword_1BE0CD658);
    sub_1BD33E3AC();
    sub_1BD33E4BC(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42580);
  }

  return result;
}

unint64_t sub_1BD33E3AC()
{
  result = qword_1EBD42588;
  if (!qword_1EBD42588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42478, &qword_1BE0CD650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42468, &qword_1BE0CD640);
    sub_1BD33DC9C(&qword_1EBD42498, &qword_1EBD42468, &qword_1BE0CD640, sub_1BD33D9C4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42588);
  }

  return result;
}

uint64_t sub_1BD33E4BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t static PaymentOffersUIUtilities.shouldDisplayStatus(for:transaction:installmentCriteria:)(void *a1, void *a2, void *a3)
{
  v3 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(a1, a2, a3);
  if (v3 < 4)
  {
    return v3 & 1;
  }

  result = sub_1BE053BE4();
  __break(1u);
  return result;
}

uint64_t static PaymentOffersUIUtilities.shouldDisplayRewardsRedemptionInfo(for:)(void *a1, double a2)
{
  if (PKHideCardBenefitRewards())
  {
    return 0;
  }

  result = [a1 paymentRewardsRedemption];
  if (result)
  {

    return 1;
  }

  return result;
}

id PaymentOffersUIUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaymentOffersUIUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentOffersUIUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PaymentOffersUIUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PaymentOffersUIUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s9PassKitUI24PaymentOffersUIUtilitiesC21shouldDisplayFollowUp3forSbSo32PKPaymentOfferConfirmationRecordCSg_tFZ_0(id result)
{
  if (result)
  {
    v1 = result;
    result = [result selectedOfferConfirmationRecord];
    if (result)
    {
      v2 = result;
      v3 = [result selectedOffer];

      v4 = [v3 installmentSelectedPaymentOffer];
      if (v4)
      {
        v5 = [v1 transactionDetailMessageTileDynamicContent];
        if (v5)
        {

          if (![v1 isSetupPaymentOfferAfterPurchase])
          {
            v6 = [v4 selectionType];

            return (v6 == 2);
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t _s9PassKitUI24PaymentOffersUIUtilitiesC30shouldDisplayPlanDetailsButton3for11transactionSbSo32PKPaymentOfferConfirmationRecordCSg_So0N11TransactionCSgtFZ_0(void *a1, void *a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  if (!a2)
  {
    goto LABEL_7;
  }

  v11 = a2;
  if (![v11 isIssuerInstallmentTransaction])
  {

LABEL_7:
    v15 = 0;
    return v15 & 1;
  }

  v12 = [v11 issuerInstallmentManagementURL];
  if (!v12)
  {

    (*(v5 + 56))(v10, 1, 1, v4);
    sub_1BD226BBC(v10);
    goto LABEL_7;
  }

  v13 = v12;
  sub_1BE04A9F4();

  (*(v5 + 32))(v10, v7, v4);
  (*(v5 + 56))(v10, 0, 1, v4);
  sub_1BD226BBC(v10);
  v14 = _s9PassKitUI24PaymentOffersUIUtilitiesC21shouldDisplayFollowUp3forSbSo32PKPaymentOfferConfirmationRecordCSg_tFZ_0(a1);

  v15 = v14 ^ 1;
  return v15 & 1;
}

uint64_t _s9PassKitUI24PaymentOffersUIUtilitiesC42shouldDisplaySetupPostPurchaseInstallments3for19installmentCriteriaSbSo20PKPaymentTransactionCSg_So0p16OfferInstallmentO0CSgtFZ_0(void *a1, void *a2)
{
  v56[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50[-v9];
  if (!a1 || !a2)
  {
    return 0;
  }

  v11 = a1;
  v12 = a2;
  if ([v11 isIssuerInstallmentTransaction])
  {
    goto LABEL_4;
  }

  v13 = [v11 issuerInstallmentManagementURL];
  if (v13)
  {
    v14 = v13;
    sub_1BE04A9F4();

    v15 = sub_1BE04AA64();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
    sub_1BD226BBC(v10);
    return 0;
  }

  v17 = sub_1BE04AA64();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  sub_1BD226BBC(v10);
  if (![v12 supportsInstorePostPurchase])
  {
LABEL_4:

    return 0;
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E69B8C98]) initWithTransaction_];
  v55 = 0;
  v54 = [v12 eligibleWithConfiguration:v18 ineligibleReason:&v55];
  sub_1BE04D1B4();
  v19 = v12;
  v20 = sub_1BE04D204();
  v21 = sub_1BE052C54();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v51 = v21;
    v23 = v22;
    v52 = swift_slowAlloc();
    v56[0] = v52;
    *v23 = 136315650;
    v24 = [v19 identifier];
    v53 = v18;
    v25 = v24;
    v26 = sub_1BE052434();
    v28 = v27;

    v29 = sub_1BD123690(v26, v28, v56);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v23 + 4) = v29;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v54;
    *(v23 + 18) = 2080;
    swift_beginAccess();
    v37 = PKPaymentOfferCriteriaIneligibleReasonToString();
    v38 = sub_1BE052434();
    v40 = v39;

    v41 = sub_1BD123690(v38, v40, v56);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v23 + 20) = v41;
    _os_log_impl(&dword_1BD026000, v20, v51, "Payment offers installments %s post purchase is eligible %{BOOL}d for reason %s", v23, 0x1Cu);
    v49 = v52;
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v49, -1, -1);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  return v54;
}

uint64_t _s9PassKitUI24PaymentOffersUIUtilitiesC40shouldDisplayRewardsRedemptionStatusLink3forSbSo20PKPaymentTransactionC_tFZ_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  if ((PKHideCardBenefitRewards() & 1) == 0)
  {
    v9 = [a1 paymentRewardsRedemption];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 statusLink];

      if (v11)
      {
        sub_1BE04A9F4();

        v12 = sub_1BE04AA64();
        (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
      }

      else
      {
        v12 = sub_1BE04AA64();
        (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      }

      sub_1BD226B4C(v4, v7);
      sub_1BE04AA64();
      v8 = 1;
      if ((*(*(v12 - 8) + 48))(v7, 1, v12) != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = sub_1BE04AA64();
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    }

    v8 = 0;
LABEL_10:
    sub_1BD226BBC(v7);
    return v8;
  }

  return 0;
}

uint64_t sub_1BD33F26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD425B0, &qword_1BE0CD980);
  return sub_1BD33F2C4(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD33F2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v4 = *(v3 - 8);
  v79 = v3;
  v80 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD425B8, &unk_1BE0E5980);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v82 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v81 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v77 - v13;
  v15 = *(a1 + 8);
  *&v85 = *a1;
  *(&v85 + 1) = v15;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v16 = sub_1BE0506C4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_1BE050564();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1BD0DDF10(v16, v18, (v20 & 1), v28, v30, v31, v32, v33);
  v22, v34, v35, v36, v37, v38, v39, v40;
  *&v85 = v23;
  *(&v85 + 1) = v25;
  v41 = (v27 & 1);
  v86 = v27 & 1;
  v87 = v29;
  sub_1BE052434();
  v43 = v42;
  sub_1BE050DE4();
  v43, v44, v45, v46, v47, v48, v49, v50;
  v51 = v41;
  v52 = v79;
  sub_1BD0DDF10(v23, v25, v51, v53, v54, v55, v56, v57);
  v29, v58, v59, v60, v61, v62, v63, v64;
  v85 = *(a1 + 32);
  v65 = *(a1 + 48);
  v66 = v78;
  v86 = v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  MEMORY[0x1BFB3E970](&v84, v67);
  v68 = v80;
  v69 = 1;
  if (v84 == 1)
  {
    v70 = v77;
    sub_1BE04E4F4();
    (*(v68 + 32))(v66, v70, v52);
    v69 = 0;
  }

  (*(v68 + 56))(v66, v69, 1, v52);
  v71 = v81;
  sub_1BD0DE19C(v14, v81, &qword_1EBD452C0, &qword_1BE0B7620);
  v72 = v82;
  sub_1BD0DE19C(v66, v82, &qword_1EBD425B8, &unk_1BE0E5980);
  v73 = v83;
  sub_1BD0DE19C(v71, v83, &qword_1EBD452C0, &qword_1BE0B7620);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD425C0, &qword_1BE0CD988);
  v75 = v73 + *(v74 + 48);
  *v75 = 0;
  *(v75 + 8) = 1;
  sub_1BD0DE19C(v72, v73 + *(v74 + 64), &qword_1EBD425B8, &unk_1BE0E5980);
  sub_1BD0DE53C(v66, &qword_1EBD425B8, &unk_1BE0E5980);
  sub_1BD0DE53C(v14, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v72, &qword_1EBD425B8, &unk_1BE0E5980);
  return sub_1BD0DE53C(v71, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD33F6D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42590, &qword_1BE0CD970);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17[-v3];
  v5 = v0[1];
  v19[0] = *v0;
  v19[1] = v5;
  v6 = v0[3];
  v19[2] = v0[2];
  v19[3] = v6;
  v18 = v19;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42598, &qword_1BE0CD978);
  sub_1BD0DE4F4(&qword_1EBD425A0, &qword_1EBD42598, &qword_1BE0CD978, MEMORY[0x1E69817F8]);
  sub_1BE051704();
  sub_1BE052434();
  v8 = v7;
  sub_1BD0DE4F4(&qword_1EBD425A8, &qword_1EBD42590, &qword_1BE0CD970, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v8, v9, v10, v11, v12, v13, v14, v15;
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_1BD33F8C4()
{
  result = qword_1EBD425C8;
  if (!qword_1EBD425C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD425D0, &unk_1BE0CD990);
    sub_1BD0DE4F4(&qword_1EBD425A8, &qword_1EBD42590, &qword_1BE0CD970, MEMORY[0x1E697D680]);
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD425C8);
  }

  return result;
}

uint64_t static ExpressPaymentOptionsViewHosting.createExpressPaymentOptionsViewHostingController(pass:eligibleExpressUpgradeRequests:currentExpressPassInfo:updateExpressStateHandler:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BD3421EC(a1, a2);
  sub_1BE051694();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD425D8, &unk_1BE0CD9A0));
  v7 = a1;
  sub_1BE048964();
  return sub_1BE04F894();
}

id ExpressPaymentOptionsViewHosting.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpressPaymentOptionsViewHosting();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1BD33FCE0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1BE04D8C4();
}

void (*sub_1BD33FD74(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1D227C;
}

uint64_t sub_1BD33FE18(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  sub_1BE04D884();
  return swift_endAccess();
}

uint64_t sub_1BD33FE90(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1BD340014()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  sub_1BE04D884();
  return swift_endAccess();
}

uint64_t sub_1BD340088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1BD3401C0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___PKPaymentApplicationExpressState__isExpressEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1D2824;
}

id sub_1BD340344(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR___PKPaymentApplicationExpressState__isExpressEnabled;
  v14 = 0;
  sub_1BE04D874();
  v8 = *(v4 + 32);
  v8(&v1[v7], v6, v3);
  v9 = OBJC_IVAR___PKPaymentApplicationExpressState__isPending;
  v14 = 0;
  sub_1BE04D874();
  v8(&v1[v9], v6, v3);
  *&v1[OBJC_IVAR___PKPaymentApplicationExpressState_paymentApplication] = a1;
  v10 = type metadata accessor for PaymentApplicationExpressState(0);
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, sel_init);
}

id PaymentApplicationExpressState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1BD340588(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD340684@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PaymentApplicationExpressState(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD3406DC(uint64_t a1)
{
  v1 = sub_1BE052404();
  v2 = PKLocalizedPaymentString(v1);

  if (v2)
  {
    sub_1BE052434();

    MEMORY[0x1EEE9AC00](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42628, &qword_1BE0CDBC0);
    sub_1BD342F00();
    sub_1BE051A24();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD340800(uint64_t a1)
{
  v2 = *a1;
  v10 = *(a1 + 8);
  v8 = v10;
  v9 = *(a1 + 32);
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  v3[1] = *a1;
  v3[2] = v4;
  v3[3] = *(a1 + 32);
  sub_1BE048C84();
  sub_1BD0DE19C(&v10, v7, &qword_1EBD42640, &unk_1BE0CDBC8);
  v5 = v2;
  sub_1BE048964();
  sub_1BD0DE19C(&v9, v7, &qword_1EBD54350, &unk_1BE0B8D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42640, &unk_1BE0CDBC8);
  sub_1BD0DE4F4(&qword_1EBD42648, &qword_1EBD42640, &unk_1BE0CDBC8, MEMORY[0x1E69E6338]);
  sub_1BD342F84();
  sub_1BD342FF4(&qword_1EBD42650, type metadata accessor for PaymentApplicationExpressState, &protocol conformance descriptor for PaymentApplicationExpressState);
  return sub_1BE0519D4();
}

uint64_t sub_1BD34098C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v19 = *(a2 + 32);
  v20 = v19;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v7 = v17[0];
  v8 = v17[1];
  v9 = v18;
  v10 = *a2;
  *&v19 = *(a2 + 8);
  v11 = swift_allocObject();
  v12 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = v6;
  v13 = v6;
  v14 = v10;
  sub_1BD0DE19C(&v19, v17, &qword_1EBD42640, &unk_1BE0CDBC8);
  sub_1BE048964();
  sub_1BD0DE19C(&v20, v17, &qword_1EBD54350, &unk_1BE0B8D00);
  type metadata accessor for PaymentApplicationExpressState(0);
  sub_1BD342FF4(&qword_1EBD42658, type metadata accessor for PaymentApplicationExpressState, &protocol conformance descriptor for PaymentApplicationExpressState);
  result = sub_1BE04E954();
  *a3 = result;
  *(a3 + 8) = v16;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = sub_1BD342FE8;
  *(a3 + 48) = v11;
  return result;
}

double sub_1BD340B0C(int a1, uint64_t a2, void *a3)
{
  v33 = a1;
  v34 = sub_1BE051F54();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BE051FA4();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BE051F64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = *(a2 + 32);
  aBlock = *(a2 + 32);
  LOBYTE(v38[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 1;
  v14 = a3;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = v33;
  v15 = v14;
  sub_1BE04D8C4();
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7F88], v10);
  v16 = sub_1BE052D84();
  (*(v11 + 8))(v13, v10);
  v17 = *a2;
  v44 = *(a2 + 8);
  v18 = swift_allocObject();
  v19 = *(a2 + 16);
  *(v18 + 16) = *a2;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a2 + 32);
  *(v18 + 64) = v15;
  v42 = sub_1BD343094;
  v43 = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v40 = sub_1BD126964;
  v41 = &block_descriptor_65;
  v20 = _Block_copy(&aBlock);
  v21 = v15;
  v22 = v17;
  sub_1BD0DE19C(&v44, v38, &qword_1EBD42640, &unk_1BE0CDBC8);
  sub_1BE048964();
  sub_1BD0DE19C(&v45, v38, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE051F74();
  v38[0] = MEMORY[0x1E69E7CC0];
  sub_1BD342FF4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  v23 = v34;
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v6, v20);
  _Block_release(v20);

  (*(v37 + 8))(v6, v23);
  (*(v35 + 8))(v9, v36);
  v43, v24, v25, v26, v27, v28, v29, v30;
  return result;
}

uint64_t sub_1BD340FE0(uint64_t a1, void *a2)
{
  v4 = sub_1BE051F54();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v7 = *(v31 - 8);
  v8 = MEMORY[0x1EEE9AC00](v31);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(a1 + 16))(a2, v8);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v30 = sub_1BE052D54();
  v12 = *a1;
  v37 = *(a1 + 8);
  v36 = *(a1 + 32);
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v11;
  *(v13 + 72) = a2;
  aBlock[4] = sub_1BD3430A0;
  v35 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_33_1;
  v15 = _Block_copy(aBlock);
  v16 = v35;
  v17 = v12;
  sub_1BD0DE19C(&v37, v33, &qword_1EBD42640, &unk_1BE0CDBC8);
  sub_1BE048964();
  sub_1BD0DE19C(&v36, v33, &qword_1EBD54350, &unk_1BE0B8D00);
  v18 = v11;
  v19 = a2;
  v16, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD342FF4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  v27 = v30;
  MEMORY[0x1BFB3FDF0](0, v10, v6, v15);
  _Block_release(v15);

  (*(v32 + 8))(v6, v4);
  return (*(v7 + 8))(v10, v31);
}

double sub_1BD341360(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  sub_1BD3430AC(a2, *(a1 + 8), a3, a4, a5, a6, a7, a8);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a3;
  sub_1BE04D8C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

void sub_1BD341410(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  if (a1)
  {
    v1 = sub_1BE052724();
  }

  else
  {
    v1 = 0;
  }

  [objc_opt_self() extractApplicationIdentifier:v13 subcredentialIdentifier:0 fromIdentifiers:v1];

  if (v13[0])
  {
    v2 = sub_1BE052434();
    sub_1BD2A5644(v12, v2, v3);
    v12[1], v4, v5, v6, v7, v8, v9, v10;
    v11 = v13[0];
  }

  else
  {
    v11 = 0;
  }
}

void sub_1BD3414E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1BE052744();
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v6(v7, a3, a4);

  v7, v9, v10, v11, v12, v13, v14, v15;
}

void sub_1BD341578()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42608, &qword_1BE0CDBB0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17[-v3];
  v5 = v0[1];
  v21[0] = *v0;
  v21[1] = v5;
  v21[2] = v0[2];
  v18 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42610, &qword_1BE0CDBB8);
  sub_1BD342E68();
  sub_1BE0504E4();
  v6 = [*&v21[0] localizedDescription];
  v7 = sub_1BE052434();
  v9 = v8;

  v19 = v7;
  v20 = v9;
  sub_1BD0DE4F4(&qword_1EBD42638, &qword_1EBD42608, &qword_1BE0CDBB0, MEMORY[0x1E697CD20]);
  sub_1BD0DDEBC();
  sub_1BE050B74();
  (*(v2 + 8))(v4, v1);
  v9, v10, v11, v12, v13, v14, v15, v16;
}

id sub_1BD341748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42678, &qword_1BE0CDCD8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  v59 = sub_1BE04F504();
  v85 = 1;
  v60 = sub_1BE04F7B4();
  v58 = a1;
  result = [*(*(a1 + 8) + OBJC_IVAR___PKPaymentApplicationExpressState_paymentApplication) displayName];
  if (result)
  {
    v10 = result;
    v11 = sub_1BE052434();
    v13 = v12;

    v67 = v11;
    v68 = v13;
    sub_1BD0DDEBC();
    v14 = sub_1BE0506C4();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = sub_1BE050324();
    v54 = sub_1BE0505F4();
    v53 = v22;
    LOBYTE(v11) = v23;
    v55 = v24;
    v21, v22, v23, v24, v25, v26, v27, v28;
    sub_1BD0DDF10(v14, v16, (v18 & 1), v29, v30, v31, v32, v33);
    v20, v34, v35, v36, v37, v38, v39, v40;
    v83 = 1;
    LOBYTE(v16) = v11 & 1;
    v81 = v11 & 1;
    v56 = v11 & 1;
    LOBYTE(v20) = v85;
    v57 = v85;
    *v8 = sub_1BE04F504();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42680, &qword_1BE0CDCE0);
    sub_1BD341B1C(v58, &v8[*(v41 + 44)]);
    v42 = v61;
    sub_1BD0DE19C(v8, v61, &qword_1EBD42678, &qword_1BE0CDCD8);
    v43 = v59;
    v62[0] = v59;
    v62[1] = 0;
    LOBYTE(v63) = v20;
    *(&v63 + 1) = *v84;
    DWORD1(v63) = *&v84[3];
    v44 = v60;
    *(&v63 + 1) = v60;
    *&v64 = 0;
    BYTE8(v64) = 1;
    HIDWORD(v64) = *&v82[3];
    *(&v64 + 9) = *v82;
    v45 = v54;
    v46 = v53;
    *&v65 = v54;
    *(&v65 + 1) = v53;
    LOBYTE(v66) = v16;
    *(&v66 + 1) = *v80;
    DWORD1(v66) = *&v80[3];
    v47 = v55;
    *(&v66 + 1) = v55;
    v48 = v59;
    v49 = v63;
    v50 = v66;
    v51 = v64;
    *(a2 + 48) = v65;
    *(a2 + 64) = v50;
    *(a2 + 16) = v49;
    *(a2 + 32) = v51;
    *a2 = v48;
    *(a2 + 80) = 0;
    *(a2 + 88) = 1;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42688, &qword_1BE0CDCE8);
    sub_1BD0DE19C(v42, a2 + *(v52 + 64), &qword_1EBD42678, &qword_1BE0CDCD8);
    sub_1BD0DE19C(v62, &v67, &qword_1EBD42690, &unk_1BE0CDCF0);
    sub_1BD0DE53C(v8, &qword_1EBD42678, &qword_1BE0CDCD8);
    sub_1BD0DE53C(v42, &qword_1EBD42678, &qword_1BE0CDCD8);
    v67 = v43;
    v68 = 0;
    v69 = v57;
    *v70 = *v84;
    *&v70[3] = *&v84[3];
    v71 = v44;
    v72 = 0;
    v73 = 1;
    *v74 = *v82;
    *&v74[3] = *&v82[3];
    v75 = v45;
    v76 = v46;
    v77 = v56;
    *&v78[3] = *&v80[3];
    *v78 = *v80;
    v79 = v47;
    return sub_1BD343484(&v67);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD341B1C@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D58, &unk_1BE0F98B0);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v50 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42698, &qword_1BE0CDD00);
  MEMORY[0x1EEE9AC00](v59);
  v7 = v50 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD426A0, &unk_1BE0CDD08);
  MEMORY[0x1EEE9AC00](v58);
  v9 = v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v50 - v12;
  v65 = *a1;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE04D8B4(v62);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  if (LOBYTE(v62[0]) == 1)
  {
    sub_1BE04E4F4();
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD3435A8();
    sub_1BE04F9A4();
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v31 = sub_1BE04F624();
    v52 = v32;
    v53 = v31;
    v50[1] = v33;
    v51 = v34;
    v35 = *(a1 + 2);
    v54 = *(a1 + 3);
    v55 = *(a1 + 32);
    v64 = v35;
    v37 = *(a1 + 5);
    v36 = *(a1 + 6);
    sub_1BE0528A4();
    sub_1BD0DE19C(&v65, v62, &qword_1EBD426A8, &unk_1BE0CDD18);
    sub_1BD3434EC(&v64, v62);
    sub_1BE048964();
    sub_1BE048964();
    v38 = sub_1BE052894();
    v39 = swift_allocObject();
    v40 = MEMORY[0x1E69E85E0];
    *(v39 + 16) = v38;
    *(v39 + 24) = v40;
    v41 = a1[1];
    *(v39 + 32) = *a1;
    *(v39 + 48) = v41;
    *(v39 + 64) = a1[2];
    *(v39 + 80) = *(a1 + 6);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v37;
    v42[5] = v36;
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v43[4] = sub_1BD343554;
    v43[5] = v42;
    sub_1BE048964();
    sub_1BE051934();
    sub_1BE051824();
    sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58, &unk_1BE0F98B0, MEMORY[0x1E697D6A8]);
    v44 = v57;
    sub_1BE0509C4();
    (*(v56 + 8))(v5, v44);
    v62[0] = v35;
    v62[1] = v54;
    v63 = v55;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
    MEMORY[0x1BFB3E970](&v61, v45);
    v46 = v61;
    v47 = swift_getKeyPath();
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    v49 = &v7[*(v59 + 36)];
    *v49 = v47;
    v49[1] = sub_1BD10DF54;
    v49[2] = v48;
    sub_1BD0DE19C(v7, v9, &qword_1EBD42698, &qword_1BE0CDD00);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD3435A8();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v7, &qword_1EBD42698, &qword_1BE0CDD00);
  }
}

void sub_1BD3420F8(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

id sub_1BD342178@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = *(v2 + 32);
  v8 = *(v2 + 48);
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42670, &qword_1BE0CDCD0);
  return sub_1BD341748(v7, a2 + *(v5 + 44));
}

void sub_1BD3421EC(void *a1, unint64_t a2)
{
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v157 = *(v147 - 8);
  v4 = MEMORY[0x1EEE9AC00](v147);
  v146 = &v143 - v5;
  v6 = [a1 paymentApplications];
  if (!v6)
  {
    goto LABEL_93;
  }

  v7 = v6;
  sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
  sub_1BD10E640();
  v8 = sub_1BE052A34();

  v9 = sub_1BD1DA444(v8);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = sub_1BE052724();
  v9, v18, v19, v20, v21, v22, v23, v24;
  v25 = [a1 sortedPaymentApplications:v17 ascending:1];

  if (v25)
  {
    v33 = sub_1BE052744();
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  if (!(a2 >> 62))
  {
    v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v149 = v33;
    if (v34)
    {
      goto LABEL_7;
    }

LABEL_27:
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

LABEL_26:
  v34 = sub_1BE053704();
  v149 = v33;
  if (!v34)
  {
    goto LABEL_27;
  }

LABEL_7:
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v33 = &selRef_metricsForTextStyle_;
  do
  {
    v37 = v35;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1BFB40900](v37, a2);
        v35 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v37 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v38 = *(a2 + 8 * v37 + 32);
        v35 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      v39 = v38;
      v40 = [v39 paymentApplicationIdentifiers];
      if (v40)
      {
        break;
      }

      ++v37;
      if (v35 == v34)
      {
        goto LABEL_28;
      }
    }

    v41 = v40;
    v42 = sub_1BE052744();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1BD1D8904(0, (v36[2] + 1), 1, v36);
    }

    v44 = v36[2];
    v43 = v36[3];
    if (v44 >= v43 >> 1)
    {
      v36 = sub_1BD1D8904((v43 > 1), (v44 + 1), 1, v36);
    }

    v36[2] = v44 + 1;
    v36[v44 + 4] = v42;
  }

  while (v35 != v34);
LABEL_28:
  v45 = v36[2];
  v46 = MEMORY[0x1E69E7CC0];
  if (v45)
  {
    v47 = 0;
    v48 = v149;
    while (v47 < v36[2])
    {
      v49 = v48;
      v50 = v36[v47 + 4];
      v51 = v50[2];
      v52 = *(v46 + 2);
      v48 = v52 + v51;
      if (__OFADD__(v52, v51))
      {
        goto LABEL_82;
      }

      sub_1BE048C84();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v48 > *(v46 + 3) >> 1)
      {
        if (v52 <= v48)
        {
          v61 = v52 + v51;
        }

        else
        {
          v61 = v52;
        }

        v46 = sub_1BD03B038(isUniquelyReferenced_nonNull_native, v61, 1, v46, v57, v58, v59, v60);
      }

      v48 = v49;
      if (v50[2])
      {
        if ((*(v46 + 3) >> 1) - *(v46 + 2) < v51)
        {
          goto LABEL_86;
        }

        swift_arrayInitWithCopy();
        v50, v62, v63, v64, v65, v66, v67, v68;
        if (v51)
        {
          v69 = *(v46 + 2);
          v70 = __OFADD__(v69, v51);
          v71 = v69 + v51;
          if (v70)
          {
            goto LABEL_87;
          }

          *(v46 + 2) = v71;
        }
      }

      else
      {
        v50, v54, v55, v56, v57, v58, v59, v60;
        if (v51)
        {
          goto LABEL_83;
        }
      }

      if (v45 == ++v47)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
  }

  else
  {
    v48 = v149;
LABEL_46:
    v36, v26, v27, v28, v29, v30, v31, v32;
    v161 = MEMORY[0x1E69E7CC0];
    if (!(v48 >> 62))
    {
      v154 = v48 & 0xFFFFFFFFFFFFFF8;
      v79 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v155 = v46;
      if (!v79)
      {
LABEL_89:
        v48, v72, v73, v74, v75, v76, v77, v78;
        v155, v136, v137, v138, v139, v140, v141, v142;
        return;
      }

      goto LABEL_48;
    }
  }

  v154 = v48 & 0xFFFFFFFFFFFFFF8;
  v79 = sub_1BE053704();
  v155 = v46;
  if (!v79)
  {
    goto LABEL_89;
  }

LABEL_48:
  v80 = 0;
  v81 = 0;
  v153 = v48 & 0xC000000000000001;
  v145 = v157 + 32;
  v46 = MEMORY[0x1E69E7CC0];
  v82 = &selRef_activateWithCompletionBlock_;
  v152 = v79;
  while (1)
  {
    if (v153)
    {
      v83 = MEMORY[0x1BFB40900](v80, v48);
      v84 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v80 >= *(v154 + 16))
      {
        goto LABEL_85;
      }

      v83 = *(v48 + 8 * v80 + 32);
      v84 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_84;
      }
    }

    v156 = v84;
    v157 = v83;
    v85 = [v83 v82[342]];
    if (!v85)
    {
      break;
    }

    v86 = v85;
    v87 = sub_1BE052434();
    v89 = v88;

    v160[0] = v87;
    v160[1] = v89;
    MEMORY[0x1EEE9AC00](v90);
    *(&v143 - 2) = v160;
    LOBYTE(v86) = sub_1BD2FF084(sub_1BD20DFC4, (&v143 - 4), v155);
    v89, v91, v92, v93, v94, v95, v96, v97;
    if (v86)
    {
      v148 = v81;
      v151 = type metadata accessor for PaymentApplicationExpressState(0);
      v110 = objc_allocWithZone(v151);
      v111 = OBJC_IVAR___PKPaymentApplicationExpressState__isExpressEnabled;
      LOBYTE(v160[0]) = 0;
      v112 = v157;
      v113 = v146;
      sub_1BE04D874();
      v114 = *v145;
      v115 = v147;
      (*v145)(&v110[v111], v113, v147);
      v116 = OBJC_IVAR___PKPaymentApplicationExpressState__isPending;
      LOBYTE(v160[0]) = 0;
      sub_1BE04D874();
      v114(&v110[v116], v113, v115);
      *&v110[OBJC_IVAR___PKPaymentApplicationExpressState_paymentApplication] = v112;
      v158.receiver = v110;
      v158.super_class = v151;
      objc_msgSendSuper2(&v158, sel_init);
      MEMORY[0x1BFB3F7A0]();
      if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();

      v46 = v161;
      v81 = v148;
      v82 = &selRef_activateWithCompletionBlock_;
      goto LABEL_79;
    }

    v98 = v157;
    v99 = [v157 automaticSelectionCriteria];
    if (!v99)
    {
      goto LABEL_92;
    }

    v100 = v99;
    sub_1BD0E5E8C(0, &qword_1EBD42668, 0x1E69B8A28);
    v101 = sub_1BE052744();

    if (v101 >> 62)
    {
      v102 = sub_1BE053704();
      if (!v102)
      {
        goto LABEL_57;
      }

      goto LABEL_66;
    }

    v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v102)
    {
LABEL_66:
      if (v102 < 1)
      {
        __break(1u);
        break;
      }

      v117 = 0;
      v118 = v101 & 0xC000000000000001;
      v148 = v81;
      v144 = v101 & 0xC000000000000001;
      do
      {
        if (v118)
        {
          v119 = MEMORY[0x1BFB40900](v117, v101);
        }

        else
        {
          v119 = *(v101 + 8 * v117 + 32);
        }

        v120 = v119;
        if ([v119 technologyType] == 5 && (objc_msgSend(v120, sel_supportsExpress) & 1) != 0)
        {
          v151 = type metadata accessor for PaymentApplicationExpressState(0);
          v121 = objc_allocWithZone(v151);
          v122 = v98;
          v123 = v121;
          v124 = OBJC_IVAR___PKPaymentApplicationExpressState__isExpressEnabled;
          LOBYTE(v160[0]) = 0;
          v150 = v122;
          v125 = v146;
          sub_1BE04D874();
          v126 = *v145;
          v127 = v147;
          (*v145)(&v123[v124], v125, v147);
          v128 = OBJC_IVAR___PKPaymentApplicationExpressState__isPending;
          LOBYTE(v160[0]) = 0;
          sub_1BE04D874();
          v126(&v123[v128], v125, v127);
          *&v123[OBJC_IVAR___PKPaymentApplicationExpressState_paymentApplication] = v150;
          v159.receiver = v123;
          v159.super_class = v151;
          objc_msgSendSuper2(&v159, sel_init);
          MEMORY[0x1BFB3F7A0]();
          if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BE052774();
          }

          sub_1BE0527C4();

          v46 = v161;
          v81 = v148;
          v48 = v149;
          v82 = &selRef_activateWithCompletionBlock_;
          v98 = v157;
          v118 = v144;
        }

        else
        {
        }

        ++v117;
      }

      while (v102 != v117);

      v101, v129, v130, v131, v132, v133, v134, v135;
      v79 = v152;
LABEL_79:
      v80 = v156;
      if (v156 == v79)
      {
        goto LABEL_89;
      }
    }

    else
    {
LABEL_57:

      v101, v103, v104, v105, v106, v107, v108, v109;
      ++v80;
      v79 = v152;
      if (v156 == v152)
      {
        goto LABEL_89;
      }
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

uint64_t type metadata accessor for PaymentApplicationExpressState(uint64_t a1)
{
  result = qword_1EBD425F8;
  if (!qword_1EBD425F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD342B7C(uint64_t a1)
{
  sub_1BD1E1120();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BD342DA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BD342DE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD342E68()
{
  result = qword_1EBD42618;
  if (!qword_1EBD42618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42610, &qword_1BE0CDBB8);
    sub_1BD342F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42618);
  }

  return result;
}

unint64_t sub_1BD342F00()
{
  result = qword_1EBD42620;
  if (!qword_1EBD42620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42628, &qword_1BE0CDBC0);
    sub_1BD342F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42620);
  }

  return result;
}

unint64_t sub_1BD342F84()
{
  result = qword_1EBD42630;
  if (!qword_1EBD42630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42630);
  }

  return result;
}

uint64_t sub_1BD342FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_17Tm_0()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

void sub_1BD3430AC(void *a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = a2;
  v68 = MEMORY[0x1E69E7CD0];
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = &v68;
    v11 = swift_allocObject();
    v61 = sub_1BD3433EC;
    v62 = v10;
    v11[2] = sub_1BD3433EC;
    v11[3] = v10;
    aBlock[4] = sub_1BD3433F4;
    v67 = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3414E8;
    aBlock[3] = &block_descriptor_42_0;
    v12 = _Block_copy(aBlock);
    v67, v13, v14, v15, v16, v17, v18, v19;
    [a1 enumerateCredentialsUsingBlock_];
    _Block_release(v12);
    if (!(v8 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v61 = 0;
    v62 = 0;
    if (!(a2 >> 62))
    {
LABEL_3:
      v20 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_4;
      }

LABEL_26:
      v68, a2, a3, a4, a5, a6, a7, a8;
      sub_1BD0D4744(v61, v62, v55, v56, v57, v58, v59, v60);
      return;
    }
  }

  v20 = sub_1BE053704();
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_4:
  v21 = 0;
  v22 = v8 & 0xC000000000000001;
  v63 = (v8 + 32);
  v64 = v8 & 0xFFFFFFFFFFFFFF8;
  v65 = v20;
  while (1)
  {
    if (v22)
    {
      v23 = MEMORY[0x1BFB40900](v21, v8);
    }

    else
    {
      if (v21 >= *(v64 + 16))
      {
        goto LABEL_31;
      }

      v23 = *&v63[8 * v21];
    }

    v24 = v23;
    if (__OFADD__(v21++, 1))
    {
      break;
    }

    v26 = [*&v23[OBJC_IVAR___PKPaymentApplicationExpressState_paymentApplication] applicationIdentifier];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1BE052434();
      v30 = v29;

      v38 = v68;
      if (*(v68 + 2))
      {
        v39 = v22;
        v40 = v8;
        sub_1BE053D04();
        sub_1BE048C84();
        sub_1BE052524();
        v41 = sub_1BE053D64();
        v49 = -1 << v38[32];
        v50 = v41 & ~v49;
        if ((*&v38[((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v50))
        {
          v51 = ~v49;
          while (1)
          {
            v52 = (*(v38 + 6) + 16 * v50);
            v42 = v52[1];
            v53 = *v52 == v28 && v42 == v30;
            if (v53 || (sub_1BE053B84() & 1) != 0)
            {
              break;
            }

            v50 = (v50 + 1) & v51;
            if (((*&v38[((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v50) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v54 = 1;
        }

        else
        {
LABEL_21:
          v54 = 0;
        }

        v38, v42, v43, v44, v45, v46, v47, v48;
        v8 = v40;
        v22 = v39;
        v20 = v65;
      }

      else
      {
        v54 = 0;
      }

      v30, v31, v32, v33, v34, v35, v36, v37;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = v54;
      sub_1BE04D8C4();
      if (v21 == v20)
      {
        goto LABEL_26;
      }
    }

    else
    {

      if (v21 == v20)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

id sub_1BD34341C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1BD343484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42690, &unk_1BE0CDCF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD3435A8()
{
  result = qword_1EBD426B0;
  if (!qword_1EBD426B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42698, &qword_1BE0CDD00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D58, &unk_1BE0F98B0);
    sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58, &unk_1BE0F98B0, MEMORY[0x1E697D6A8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD426B0);
  }

  return result;
}

uint64_t sub_1BD3436E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentSummarySheet(0);
  v5 = v4 - 8;
  v38 = *(v4 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427B0, &qword_1BE0CDF78);
  sub_1BD349C60();
  sub_1BE04E304();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427E8, &qword_1BE0CDFA0) + 36));
  v9 = v46;
  v8[4] = v45;
  v8[5] = v9;
  v8[6] = v47;
  v10 = v42;
  *v8 = v41;
  v8[1] = v10;
  v11 = v44;
  v8[2] = v43;
  v8[3] = v11;
  v12 = sub_1BE051274();
  v13 = sub_1BE0501D4();
  v14 = sub_1BE051CD4();
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427F0, &qword_1BE0CDFA8) + 36);
  *v17 = v12;
  *(v17 + 8) = v13;
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  v18 = *(v2 + *(v5 + 60) + 8);
  swift_beginAccess();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427F8, &qword_1BE0CDFB0);
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42800, &unk_1BE0CDFB8);
  sub_1BE04D884();
  swift_endAccess();
  v18, v20, v21, v22, v23, v24, v25, v26;
  v37 = v7;
  sub_1BD34A0BC(v2, v7, type metadata accessor for PaymentSummarySheet);
  v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v28 = swift_allocObject();
  sub_1BD34A148(v7, v28 + v27, type metadata accessor for PaymentSummarySheet);
  v29 = (a1 + *(v19 + 56));
  *v29 = sub_1BD349F48;
  v29[1] = v28;
  swift_beginAccess();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD426F8, &qword_1BE0CDEC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v31 = a1;
  sub_1BE04D884();
  swift_endAccess();
  v32 = v37;
  sub_1BD34A0BC(v2, v37, type metadata accessor for PaymentSummarySheet);
  v33 = swift_allocObject();
  result = sub_1BD34A148(v32, v33 + v27, type metadata accessor for PaymentSummarySheet);
  v35 = (v31 + *(v30 + 56));
  *v35 = sub_1BD349FC4;
  v35[1] = v33;
  return result;
}

uint64_t sub_1BD343AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_1BE04F3D4();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaymentSummarySheet(0);
  v92 = *(v5 - 8);
  v89 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v91 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v86 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427C8, &unk_1BE0CDF90);
  MEMORY[0x1EEE9AC00](v101);
  v11 = &v86 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427C0, &unk_1BE0CDF80);
  v94 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v88 = &v86 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42810, &qword_1BE0CDFD8);
  v95 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v90 = &v86 - v13;
  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42818, &unk_1BE0CDFE0);
  sub_1BD344324(a1, &v11[*(v14 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  sub_1BE0516C4();
  v87 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0, &qword_1BE0B86F0);
  v15 = sub_1BD0DE4F4(&qword_1EBD427D0, &qword_1EBD427C8, &unk_1BE0CDF90, MEMORY[0x1E6981870]);
  v16 = sub_1BD34BFE8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
  v17 = sub_1BD10CC54();
  sub_1BE050F74();
  sub_1BD0DE53C(v9, &qword_1EBD393E8, &qword_1BE0B8680);
  sub_1BD0DE53C(v11, &qword_1EBD427C8, &unk_1BE0CDF90);
  v18 = v5;
  v19 = (a1 + *(v5 + 88));
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v108) = v20;
  v109 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42808, &unk_1BE0CDFC8);
  sub_1BE0516C4();
  v22 = v102;
  v23 = v103;
  v108 = v102;
  v109 = v103;
  v110 = v104;
  v24 = v91;
  sub_1BD34A0BC(a1, v91, type metadata accessor for PaymentSummarySheet);
  v25 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v26 = swift_allocObject();
  sub_1BD34A148(v24, v26 + v25, type metadata accessor for PaymentSummarySheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57B80, &qword_1BE1022A0);
  v102 = v101;
  v103 = v87;
  v27 = a1;
  v104 = v86;
  v105 = v15;
  v28 = v90;
  v106 = v16;
  v107 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1BD349E40();
  sub_1BD349E94();
  v29 = v93;
  v30 = v88;
  sub_1BE050F74();
  v23, v31, v32, v33, v34, v35, v36, v37;
  v26, v38, v39, v40, v41, v42, v43, v44;
  v22, v45, v46, v47, v48, v49, v50, v51;
  (*(v94 + 8))(v30, v29);
  v52 = v27;
  v53 = v27 + *(v18 + 96);
  v54 = *v53;
  if (*(v53 + 8) == 1)
  {
    v56 = v98;
    v55 = v99;
    v57 = v96;
    if (v54)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v58 = sub_1BE050174();
    sub_1BE04CF84();

    v57 = v96;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v54, 0, v59, v60, v61, v62, v63, v64);
    v56 = v98;
    v55 = v99;
    (*(v98 + 8))(v57, v99);
    if (v102)
    {
      goto LABEL_9;
    }
  }

  v65 = v52 + *(v18 + 100);
  v66 = *v65;
  if (*(v65 + 8) == 1)
  {
    if ((v66 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_1BE048964();
  sub_1BE052C44();
  v67 = sub_1BE050174();
  sub_1BE04CF84();

  sub_1BE04F3C4();
  swift_getAtKeyPath();
  sub_1BD0D4604(v66, 0, v68, v69, v70, v71, v72, v73);
  (*(v56 + 8))(v57, v55);
  if (v102 == 1)
  {
LABEL_9:
    sub_1BE051C54();
  }

LABEL_10:
  v74 = sub_1BE0501D4();
  sub_1BE04E1F4();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v100;
  (*(v95 + 32))(v100, v28, v97);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427B0, &qword_1BE0CDF78);
  v85 = v83 + *(result + 36);
  *v85 = v74;
  *(v85 + 8) = v76;
  *(v85 + 16) = v78;
  *(v85 + 24) = v80;
  *(v85 + 32) = v82;
  *(v85 + 40) = 0;
  return result;
}

id sub_1BD344324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v247 = a2;
  v3 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v242 = &v221 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for PaymentSummaryTotalRow(0);
  MEMORY[0x1EEE9AC00](v241);
  v249 = &v221 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42820, &qword_1BE0CE028);
  MEMORY[0x1EEE9AC00](v243);
  v244 = &v221 - v6;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42828, &qword_1BE0CE030);
  MEMORY[0x1EEE9AC00](v248);
  v246 = &v221 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v258 = (&v221 - v9);
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42830, &qword_1BE0CE038);
  MEMORY[0x1EEE9AC00](v240);
  v245 = &v221 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v257 = &v221 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42838, &qword_1BE0CE040);
  v238 = *(v13 - 8);
  v239 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v229 = &v221 - v14;
  v15 = type metadata accessor for PaymentOfferRewardsIntentSummaryView(0);
  v226 = *(v15 - 8);
  v227 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v225 = &v221 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42840, &qword_1BE0CE048);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v228 = &v221 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v230 = &v221 - v20;
  v21 = sub_1BE04BD74();
  v223 = *(v21 - 8);
  v224 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v222 = &v221 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42848, &qword_1BE0CE050);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v252 = &v221 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v256 = &v221 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42850, &qword_1BE0CE058);
  MEMORY[0x1EEE9AC00](v27 - 8);
  *&v236 = &v221 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  *&v235 = &v221 - v30;
  v31 = type metadata accessor for MerchantInfoRow(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v221 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42858, &qword_1BE0CE060);
  MEMORY[0x1EEE9AC00](v233);
  v234 = &v221 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v221 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v232 = &v221 - v39;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42860, &qword_1BE0CE068);
  *&v237 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v41 = &v221 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v221 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42868, &qword_1BE0CE070);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v251 = &v221 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v255 = &v221 - v48;
  v253 = type metadata accessor for PaymentSummarySheet(0);
  v254 = a1;
  sub_1BD0DE19C(a1 + v253[10], v44, &qword_1EBD45480, &unk_1BE0B8C30);
  v49 = type metadata accessor for PeerPaymentModel(0);
  if ((*(*(v49 - 8) + 48))(v44, 1, v49) == 1)
  {
    sub_1BD0DE53C(v44, &qword_1EBD45480, &unk_1BE0B8C30);
  }

  else
  {
    v50 = v44[*(v49 + 60)];
    sub_1BD34A1B0(v44, type metadata accessor for PeerPaymentModel);
    if (v50)
    {
      v51 = 1;
      v53 = v254;
      v52 = v255;
      v54 = v250;
      goto LABEL_8;
    }
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42870, &qword_1BE0CE078);
  v56 = &v41[*(v55 + 84)];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v231 = v55;
  v57 = &v41[*(v55 + 88)];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  *v41 = sub_1BE04F7C4();
  *(v41 + 1) = 0;
  v41[16] = 0;
  v59 = v253;
  v58 = v254;
  sub_1BD34A0BC(v254 + v253[6], v33, _s8MerchantVMa);
  sub_1BD0DE19C(v58 + v59[12], &v33[*(v31 + 20)], &unk_1EBD4C940, &unk_1BE0CDD90);
  *&v33[*(v31 + 24)] = 0x4030000000000000;
  v60 = sub_1BE0501C4();
  v61 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v60)
  {
    v61 = sub_1BE050214();
  }

  v62 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42878, &qword_1BE0CE0E0) + 44)];
  sub_1BE04E1F4();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_1BD34A148(v33, v37, type metadata accessor for MerchantInfoRow);
  v71 = &v37[v233[9]];
  *v71 = v61;
  *(v71 + 1) = v64;
  *(v71 + 2) = v66;
  *(v71 + 3) = v68;
  *(v71 + 4) = v70;
  v71[40] = 0;
  v72 = v232;
  sub_1BD0DE204(v37, v232, &qword_1EBD42858, &qword_1BE0CE060);
  v73 = v235;
  v74 = v254;
  sub_1BD345ABC(v235);
  v75 = v234;
  sub_1BD0DE19C(v72, v234, &qword_1EBD42858, &qword_1BE0CE060);
  v76 = v236;
  sub_1BD0DE19C(v73, v236, &qword_1EBD42850, &qword_1BE0CE058);
  sub_1BD0DE19C(v75, v62, &qword_1EBD42858, &qword_1BE0CE060);
  v77 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42880, &qword_1BE0CE0E8) + 48);
  v53 = v74;
  sub_1BD0DE19C(v76, v77, &qword_1EBD42850, &qword_1BE0CE058);
  sub_1BD0DE53C(v73, &qword_1EBD42850, &qword_1BE0CE058);
  sub_1BD0DE53C(v72, &qword_1EBD42858, &qword_1BE0CE060);
  sub_1BD0DE53C(v76, &qword_1EBD42850, &qword_1BE0CE058);
  sub_1BD0DE53C(v75, &qword_1EBD42858, &qword_1BE0CE060);
  v78 = v231;
  v79 = &v41[*(v231 + 76)];
  *v79 = 0x4020000000000000;
  v79[8] = 0;
  v41[*(v78 + 80)] = 1;
  LOBYTE(v74) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v54 = v250;
  v80 = &v41[*(v250 + 36)];
  *v80 = v74;
  *(v80 + 1) = v81;
  *(v80 + 2) = v82;
  *(v80 + 3) = v83;
  *(v80 + 4) = v84;
  v80[40] = 0;
  v52 = v255;
  sub_1BD0DE204(v41, v255, &qword_1EBD42860, &qword_1BE0CE068);
  v51 = 0;
LABEL_8:
  (*(v237 + 56))(v52, v51, 1, v54);
  v85 = v253;
  v86 = v53 + v253[7];
  v233 = _s14PaymentSummaryVMa(0);
  v87 = v233[7];
  v250 = v86;
  v88 = (v86 + v87);
  v89 = v88[1];
  v90 = v53;
  if (v89)
  {
    v92 = v88[2];
    v91 = v88[3];
    v93 = *(v53 + v85[14]);
    v94 = *v88;
    v236 = *(v90 + v85[15]);
    v237 = v93;
    *&v287 = 0;
    *(&v287 + 1) = 0xE000000000000000;
    v95 = v91;
    sub_1BD2726F8(v94, v89, v92, v91);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE051694();
    v235 = v299;
    v96 = v300;
    v97 = sub_1BE04E274();
    v234 = v98;
    v99 = v92 & 1;
    v100 = v97 & 1;
    v102 = v101 & 1;
    LOBYTE(v287) = 1;
    LOBYTE(v92) = sub_1BE0501F4();
    sub_1BE04E1F4();
    *&v299 = v94;
    *(&v299 + 1) = v89;
    LOBYTE(v300) = v99;
    *(&v300 + 1) = v95;
    LOBYTE(v301[0]) = 0;
    *(&v301[1] + 8) = v236;
    *(v301 + 8) = v237;
    BYTE8(v301[2]) = 0;
    v302 = v235;
    *&v303 = v96;
    v85 = v253;
    v90 = v254;
    BYTE8(v303) = v100;
    *&v304 = v234;
    BYTE8(v304) = v102;
    *&v305 = 0;
    BYTE8(v305) = v287;
    LOBYTE(v306) = v92;
    *(&v306 + 1) = v103;
    *&v307[0] = v104;
    *(&v307[0] + 1) = v105;
    *&v307[1] = v106;
    BYTE8(v307[1]) = 0;
    PKEdgeInsetsMake();
    v317 = v305;
    v318 = v306;
    v319[0] = v307[0];
    *(v319 + 9) = *(v307 + 9);
    v313 = v301[2];
    v314 = v302;
    v315 = v303;
    v316 = v304;
    v309 = v299;
    v310 = v300;
    v311 = v301[0];
    v312 = v301[1];
  }

  else
  {
    sub_1BD34A098(&v309);
  }

  v108 = v248;
  v107 = v249;
  if (*(v90 + v85[11]) == 2)
  {
    v109 = *(v90 + v85[18]);
    if (v109)
    {
      v110 = v109;
      v111 = &selRef_thumbnailWidth;
      v112 = [v110 type];
      v253 = v110;
      if (v112 == 1)
      {
        objc_opt_self();
        v113 = swift_dynamicCastObjCClass();
        if (v113)
        {
          v114 = v113;
          v115 = v110;
          v116 = [v114 selectedInstallmentOffer];
          if (v116)
          {
            v117 = v116;
            v118 = [v114 installmentAssessment];
            if (v118)
            {
              *&v236 = v118;
              *&v237 = v115;
              v120 = v222;
              v119 = v223;
              v121 = v224;
              (*(v223 + 104))(v222, *MEMORY[0x1E69B8078], v224);
              result = PKPassKitBundle();
              if (!result)
              {
                __break(1u);
                return result;
              }

              v123 = result;
              v124 = sub_1BE04B6F4();
              v126 = v125;

              (*(v119 + 8))(v120, v121);
              *&v299 = v124;
              *(&v299 + 1) = v126;
              sub_1BD0DDEBC();
              v234 = sub_1BE0506C4();
              v231 = v128;
              v232 = v127;
              LOBYTE(v262) = v129 & 1;
              KeyPath = swift_getKeyPath();
              v260 = 0;
              *&v235 = swift_getKeyPath();
              v259 = 0;
              v131 = *(v250 + 8);
              v132 = (v250 + v233[6]);
              v133 = v132[1];
              v233 = *v132;
              LOBYTE(v299) = 1;
              v134 = v131;
              sub_1BE048C84();
              v222 = sub_1BE0511D4();
              v135 = v299;
              v261 = 0;
              v136 = v262;
              LODWORD(v223) = v260;
              LODWORD(v224) = v259;
              v137 = v117;
              v138 = v236;
              LOBYTE(v126) = sub_1BE0501F4();
              sub_1BE04E1F4();
              v140 = v139;
              v142 = v141;
              v144 = v143;
              v146 = v145;

              LOBYTE(v275) = 0;
              *&v287 = v234;
              *(&v287 + 1) = v232;
              LOBYTE(v288) = v136;
              *(&v288 + 1) = v231;
              *&v289 = v137;
              *(&v289 + 1) = v138;
              *&v290 = v134;
              *(&v290 + 1) = v233;
              *&v291 = v133;
              WORD4(v291) = v135;
              v292 = 0uLL;
              *&v293 = v222;
              *(&v293 + 1) = 0x4020000000000000;
              LOWORD(v294) = 256;
              *(&v294 + 1) = KeyPath;
              LOBYTE(v295) = v223;
              *(&v295 + 1) = v235;
              LOBYTE(v296) = v224;
              BYTE8(v296) = v126;
              *&v297[0] = v140;
              *(&v297[0] + 1) = v142;
              *&v297[1] = v144;
              *(&v297[1] + 1) = v146;
              v298 = 0;
              PKEdgeInsetsMake();
              v307[0] = v297[0];
              v307[1] = v297[1];
              v308 = v298;
              v303 = v293;
              v304 = v294;
              v305 = v295;
              v306 = v296;
              v301[0] = v289;
              v301[1] = v290;
              v301[2] = v291;
              v302 = v292;
              v299 = v287;
              v300 = v288;
              v108 = v248;
              v107 = v249;
              v110 = v253;
              v111 = &selRef_thumbnailWidth;
              goto LABEL_24;
            }
          }

          else
          {
            v117 = v115;
          }
        }
      }

      sub_1BD34A124(&v299);
LABEL_24:
      v147 = [v110 v111[254]];
      v148 = v227;
      if (v147 == 2 && (objc_opt_self(), (v149 = swift_dynamicCastObjCClass()) != 0))
      {
        v150 = [v149 rewardsRedemptionIntent];
        v151 = v225;
        sub_1BD34A0BC(v250, &v225[*(v148 + 20)], _s11TotalAmountVMa);
        *v151 = v150;
        sub_1BD34A148(v151, v230, type metadata accessor for PaymentOfferRewardsIntentSummaryView);
        v152 = 0;
      }

      else
      {
        v152 = 1;
      }

      v153 = v230;
      (*(v226 + 56))(v230, v152, 1, v148);
      v271 = v306;
      v272 = v307[0];
      v273 = v307[1];
      v274 = v308;
      v269 = v304;
      v270 = v305;
      v264 = v301[0];
      v265 = v301[1];
      v267 = v302;
      v268 = v303;
      v266 = v301[2];
      v262 = v299;
      v263 = v300;
      v154 = v228;
      sub_1BD0DE19C(v153, v228, &qword_1EBD42840, &qword_1BE0CE048);
      v155 = v271;
      v285[0] = v272;
      v285[1] = v273;
      v281 = v268;
      v282 = v269;
      v156 = v269;
      v157 = v270;
      v283 = v270;
      v284 = v271;
      v158 = v264;
      v159 = v265;
      v277 = v264;
      v278 = v265;
      v160 = v268;
      v161 = v267;
      v162 = v266;
      v279 = v266;
      v280 = v267;
      v164 = v262;
      v163 = v263;
      v275 = v262;
      v276 = v263;
      v165 = v273;
      v166 = v229;
      *(v229 + 10) = v272;
      *(v166 + 176) = v165;
      *(v166 + 96) = v160;
      *(v166 + 112) = v156;
      *(v166 + 128) = v157;
      *(v166 + 144) = v155;
      *(v166 + 32) = v158;
      *(v166 + 48) = v159;
      *(v166 + 64) = v162;
      *(v166 + 80) = v161;
      v286 = v274;
      *(v166 + 192) = v274;
      *v166 = v164;
      *(v166 + 16) = v163;
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42898, &qword_1BE0CE100);
      sub_1BD0DE19C(v154, v166 + *(v167 + 48), &qword_1EBD42840, &qword_1BE0CE048);
      sub_1BD0DE19C(&v275, &v287, &qword_1EBD428A0, &unk_1BE0CE108);

      sub_1BD0DE53C(v153, &qword_1EBD42840, &qword_1BE0CE048);
      sub_1BD0DE53C(v154, &qword_1EBD42840, &qword_1BE0CE048);
      v297[0] = v272;
      v297[1] = v273;
      v293 = v268;
      v294 = v269;
      v298 = v274;
      v295 = v270;
      v296 = v271;
      v289 = v264;
      v290 = v265;
      v291 = v266;
      v292 = v267;
      v287 = v262;
      v288 = v263;
      sub_1BD0DE53C(&v287, &qword_1EBD428A0, &unk_1BE0CE108);
      v168 = v256;
      sub_1BD0DE204(v166, v256, &qword_1EBD42838, &qword_1BE0CE040);
      (*(v238 + 56))(v168, 0, 1, v239);
      goto LABEL_29;
    }
  }

  (*(v238 + 56))(v256, 1, 1, v239);
LABEL_29:
  v169 = v257;
  sub_1BD346038(v257);
  v170 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v171 = v169 + *(v240 + 36);
  *v171 = v170;
  *(v171 + 8) = v172;
  *(v171 + 16) = v173;
  *(v171 + 24) = v174;
  *(v171 + 32) = v175;
  *(v171 + 40) = 0;
  sub_1BD346670(&v262);
  v176 = v263;
  v177 = v258;
  *v258 = v262;
  v177[1] = v176;
  v178 = v177 + v108[21];
  *v178 = swift_getKeyPath();
  v178[8] = 0;
  v179 = v177 + v108[22];
  *v179 = swift_getKeyPath();
  v179[8] = 0;
  v180 = v242;
  sub_1BD34A0BC(v250, v242, _s11TotalAmountVMa);
  v181 = v241;
  v182 = v107 + *(v241 + 24);
  *v182 = swift_getKeyPath();
  *(v182 + 8) = 0;
  sub_1BD34A0BC(v180, v107, _s11TotalAmountVMa);
  v183 = sub_1BD1CA054();
  v185 = v184;
  sub_1BD34A1B0(v180, _s11TotalAmountVMa);
  v186 = (v107 + *(v181 + 20));
  *v186 = v183;
  v186[1] = v185;
  LOBYTE(v185) = sub_1BE0501C4();
  v187 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v185)
  {
    v187 = sub_1BE050214();
  }

  v188 = v108[18];
  sub_1BE04E1F4();
  v190 = v189;
  v192 = v191;
  v194 = v193;
  v196 = v195;
  v197 = v244;
  sub_1BD34A148(v107, v244, type metadata accessor for PaymentSummaryTotalRow);
  v198 = v197 + *(v243 + 36);
  *v198 = v187;
  *(v198 + 8) = v190;
  *(v198 + 16) = v192;
  *(v198 + 24) = v194;
  *(v198 + 32) = v196;
  *(v198 + 40) = 0;
  v199 = v258;
  sub_1BD0DE204(v197, v258 + v188, &qword_1EBD42820, &qword_1BE0CE028);
  v200 = v199 + v108[19];
  *v200 = 0x4020000000000000;
  v200[8] = 0;
  *(v199 + v108[20]) = 1;
  v201 = v251;
  sub_1BD0DE19C(v255, v251, &qword_1EBD42868, &qword_1BE0CE070);
  v283 = v317;
  v284 = v318;
  v285[0] = v319[0];
  *(v285 + 9) = *(v319 + 9);
  v279 = v313;
  v280 = v314;
  v281 = v315;
  v282 = v316;
  v275 = v309;
  v276 = v310;
  v277 = v311;
  v278 = v312;
  v202 = v252;
  sub_1BD0DE19C(v256, v252, &qword_1EBD42848, &qword_1BE0CE050);
  v203 = v199;
  v204 = v245;
  sub_1BD0DE19C(v257, v245, &qword_1EBD42830, &qword_1BE0CE038);
  v205 = v203;
  v206 = v246;
  sub_1BD0DE19C(v205, v246, &qword_1EBD42828, &qword_1BE0CE030);
  v207 = v201;
  v208 = v247;
  sub_1BD0DE19C(v207, v247, &qword_1EBD42868, &qword_1BE0CE070);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42888, &qword_1BE0CE0F0);
  v210 = v209[12];
  v211 = v282;
  v295 = v283;
  v296 = v284;
  v212 = v284;
  v297[0] = v285[0];
  *(v297 + 9) = *(v285 + 9);
  v214 = v278;
  v291 = v279;
  v213 = v279;
  v292 = v280;
  v215 = v280;
  v293 = v281;
  v216 = v281;
  v294 = v282;
  v287 = v275;
  v288 = v276;
  v218 = v275;
  v217 = v276;
  v289 = v277;
  v219 = v277;
  v290 = v278;
  v220 = (v208 + v210);
  v220[8] = v283;
  v220[9] = v212;
  v220[10] = v285[0];
  *(v220 + 169) = *(v285 + 9);
  v220[4] = v213;
  v220[5] = v215;
  v220[6] = v216;
  v220[7] = v211;
  *v220 = v218;
  v220[1] = v217;
  v220[2] = v219;
  v220[3] = v214;
  sub_1BD0DE19C(v202, v208 + v209[16], &qword_1EBD42848, &qword_1BE0CE050);
  sub_1BD0DE19C(v204, v208 + v209[20], &qword_1EBD42830, &qword_1BE0CE038);
  sub_1BD0DE19C(v206, v208 + v209[24], &qword_1EBD42828, &qword_1BE0CE030);
  sub_1BD0DE19C(&v287, &v299, &qword_1EBD42890, &qword_1BE0CE0F8);
  sub_1BD0DE53C(v258, &qword_1EBD42828, &qword_1BE0CE030);
  sub_1BD0DE53C(v257, &qword_1EBD42830, &qword_1BE0CE038);
  sub_1BD0DE53C(v256, &qword_1EBD42848, &qword_1BE0CE050);
  sub_1BD0DE53C(v255, &qword_1EBD42868, &qword_1BE0CE070);
  sub_1BD0DE53C(v206, &qword_1EBD42828, &qword_1BE0CE030);
  sub_1BD0DE53C(v204, &qword_1EBD42830, &qword_1BE0CE038);
  sub_1BD0DE53C(v252, &qword_1EBD42848, &qword_1BE0CE050);
  v305 = v283;
  v306 = v284;
  v307[0] = v285[0];
  *(v307 + 9) = *(v285 + 9);
  v301[2] = v279;
  v302 = v280;
  v303 = v281;
  v304 = v282;
  v299 = v275;
  v300 = v276;
  v301[0] = v277;
  v301[1] = v278;
  sub_1BD0DE53C(&v299, &qword_1EBD42890, &qword_1BE0CE0F8);
  return sub_1BD0DE53C(v251, &qword_1EBD42868, &qword_1BE0CE070);
}
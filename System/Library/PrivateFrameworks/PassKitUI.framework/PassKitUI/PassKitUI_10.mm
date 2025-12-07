void sub_1BD1465BC(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v9;
  v10 = *(type metadata accessor for AuthenticatedTransactionSheet(0, v12) - 8);
  v11 = v1 + ((*(v10 + 80) + 72) & ~*(v10 + 80));

  sub_1BD13E8C0(v11, v3, v4, v5, v6, v7, v8, v9, a1);
}

void sub_1BD146694(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = v9;
  v10 = *(type metadata accessor for AuthenticatedTransactionSheet(0, v11) - 8);
  sub_1BD13EFA0(a1, v1 + ((*(v10 + 80) + 72) & ~*(v10 + 80)), v3, v4, v5, v6, v7, v8, v9);
}

void sub_1BD146778()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v10[6] = v7;
  v8 = *(type metadata accessor for AuthenticatedTransactionSheet(0, v10) - 8);
  v9 = v0 + ((*(v8 + 80) + 72) & ~*(v8 + 80));

  sub_1BD140224(v9, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 64);
  v2 = sub_1BE04C614();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v0 + 32);
  v71[0] = *(v0 + 16);
  v71[1] = v6;
  v71[2] = *(v0 + 48);
  v72 = v1;
  v7 = type metadata accessor for AuthenticatedTransactionSheet(0, v71);
  v8 = (v4 + v5 + *(*(v7 - 1) + 80)) & ~*(*(v7 - 1) + 80);
  v9 = *(v3 + 8);
  v9(v0 + v4, v2);
  v10 = v0 + v8;
  *(v10 + 8), v11, v12, v13, v14, v15, v16, v17;
  *(v10 + 24), v18, v19, v20, v21, v22, v23, v24;
  *(v10 + 32), v25, v26, v27, v28, v29, v30, v31;
  __swift_destroy_boxed_opaque_existential_0((v10 + 48), v32, v33, v34, v35, v36, v37, v38);
  if (*(v10 + 88))
  {
    *(v10 + 96), v39, v40, v41, v42, v43, v44, v45;
  }

  if (*(v10 + 104))
  {
    *(v10 + 112), v39, v40, v41, v42, v43, v44, v45;
  }

  if (*(v10 + 120))
  {
    *(v10 + 128), v39, v40, v41, v42, v43, v44, v45;
  }

  if (*(v10 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0((v10 + 136), v39, v40, v41, v42, v43, v44, v45);
  }

  *(v10 + 176), v39, v40, v41, v42, v43, v44, v45;
  v46 = v10 + v7[26];
  if (!(*(v3 + 48))(v46, 1, v2))
  {
    v9(v46, v2);
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  *(v46 + *(v47 + 28)), v48, v49, v50, v51, v52, v53, v54;
  v55 = v7[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63 = sub_1BE04C884();
    (*(*(v63 - 8) + 8))(v10 + v55, v63);
  }

  else
  {
    *(v10 + v55), v56, v57, v58, v59, v60, v61, v62;
  }

  sub_1BD0D4604(*(v10 + v7[28]), *(v10 + v7[28] + 8), v64, v65, v66, v67, v68, v69);
  return swift_deallocObject();
}

uint64_t sub_1BD146B14(uint64_t (*a1)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = *(v1 + 8);
  v9 = *(sub_1BE04C614() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v16[0] = v2;
  v16[1] = v3;
  v12 = (v10 + 72) & ~v10;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v6;
  v16[5] = v7;
  v16[6] = v8;
  v13 = *(type metadata accessor for AuthenticatedTransactionSheet(0, v16) - 8);
  return a1(&v1[v12], &v1[(v12 + v11 + *(v13 + 80)) & ~*(v13 + 80)], v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD146C40(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v9;
  v10 = *(type metadata accessor for AuthenticatedTransactionSheet(0, v12) - 8);
  return sub_1BD13D8A0(a1, v1 + ((*(v10 + 80) + 72) & ~*(v10 + 80)), v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BD146DE8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v4;
  v10[2] = *(v1 + 48);
  v11 = v3;
  v5 = *(type metadata accessor for AuthenticatedTransactionSheet(0, v10) - 8);
  v6 = (v1 + ((*(v5 + 80) + 72) & ~*(v5 + 80)));
  v7 = v6[9];
  v8 = v6[10];
  __swift_project_boxed_opaque_existential_1(v6 + 6, v7);
  return a1(v7, v8);
}

unint64_t sub_1BD146E94()
{
  result = qword_1EBD3A268;
  if (!qword_1EBD3A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A268);
  }

  return result;
}

unint64_t sub_1BD146EE8()
{
  result = qword_1EBD3A270;
  if (!qword_1EBD3A270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48, &qword_1BE0B7578);
    swift_getOpaqueTypeConformance2();
    sub_1BD0EEEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A270);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v67[0] = *(v0 + 16);
  v67[1] = v2;
  v67[2] = *(v0 + 48);
  v68 = v1;
  v3 = type metadata accessor for AuthenticatedTransactionSheet(0, v67);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 72) & ~*(*(v3 - 1) + 80));
  *(v4 + 8), v5, v6, v7, v8, v9, v10, v11;
  *(v4 + 24), v12, v13, v14, v15, v16, v17, v18;
  *(v4 + 32), v19, v20, v21, v22, v23, v24, v25;
  __swift_destroy_boxed_opaque_existential_0((v4 + 48), v26, v27, v28, v29, v30, v31, v32);
  if (*(v4 + 88))
  {
    *(v4 + 96), v33, v34, v35, v36, v37, v38, v39;
  }

  if (*(v4 + 104))
  {
    *(v4 + 112), v33, v34, v35, v36, v37, v38, v39;
  }

  if (*(v4 + 120))
  {
    *(v4 + 128), v33, v34, v35, v36, v37, v38, v39;
  }

  if (*(v4 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0((v4 + 136), v33, v34, v35, v36, v37, v38, v39);
  }

  *(v4 + 176), v33, v34, v35, v36, v37, v38, v39;
  v40 = v4 + v3[26];
  v41 = sub_1BE04C614();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v40, 1, v41))
  {
    (*(v42 + 8))(v40, v41);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  *(v40 + *(v43 + 28)), v44, v45, v46, v47, v48, v49, v50;
  v51 = v3[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = sub_1BE04C884();
    (*(*(v59 - 8) + 8))(v4 + v51, v59);
  }

  else
  {
    *(v4 + v51), v52, v53, v54, v55, v56, v57, v58;
  }

  sub_1BD0D4604(*(v4 + v3[28]), *(v4 + v3[28] + 8), v60, v61, v62, v63, v64, v65);
  return swift_deallocObject();
}

uint64_t sub_1BD14724C()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[2];
  v1 = v9;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  type metadata accessor for AuthenticatedTransactionSheet(0, &v9);
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  type metadata accessor for AuthenticatedTransactionSheet(0, &v9);
  return sub_1BD13C568();
}

void ProvisioningContinuityCarKeyHostViewController.init(handle:userInfo:parent:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_alertParent;
  swift_unknownObjectWeakInit();
  v68 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_paymentService;
  *&v4[v68] = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v9 = [objc_opt_self() sharedInstance];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_passLibrary;
  *&v4[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_passLibrary] = v9;
  v11 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_webService;
  *&v4[v11] = [objc_opt_self() sharedService];
  v66 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession;
  v67 = v11;
  *&v4[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession] = 0;
  v4[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_isValid] = 1;
  v12 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle;
  *&v4[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle] = a1;
  swift_unknownObjectWeakAssign();
  v13 = sub_1BE052434();
  v21 = v14;
  if (a2[2])
  {
    v22 = v13;
    v65 = ObjectType;
    v23 = a1;
    v24 = sub_1BD148F70(v22, v21);
    v26 = v25;
    v21, v25, v27, v28, v29, v30, v31, v32;
    if (v26)
    {
      v71 = *(a2[7] + 8 * v24);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v33 = *&v4[v10];
        v34 = sub_1BE052404();
        v35 = [v33 passWithUniqueID_];

        if (v35)
        {
          a2, v36, v37, v38, v39, v40, v41, v42;
          v70, v43, v44, v45, v46, v47, v48, v49;
          v50 = [v35 secureElementPass];

          if (v50)
          {
            *&v4[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_pass] = v50;
            v69.receiver = v4;
            v69.super_class = v65;
            objc_msgSendSuper2(&v69, sel_initWithNibName_bundle_, 0, 0);

            swift_unknownObjectRelease();
            return;
          }

          swift_unknownObjectRelease();
          goto LABEL_10;
        }

LABEL_14:
        __break(1u);
        return;
      }
    }

    swift_unknownObjectRelease();
    a2, v51, v52, v53, v54, v55, v56, v57;
  }

  else
  {
    v14, v14, v15, v16, v17, v18, v19, v20;
    swift_unknownObjectRelease();
    a2, v58, v59, v60, v61, v62, v63, v64;
  }

LABEL_10:

  sub_1BD0D4534(&v4[v8]);
  swift_deallocPartialClassInstance();
}

Swift::Void __swiftcall ProvisioningContinuityCarKeyHostViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewWillAppear_, a1);
  v3 = *&v1[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_1BD148FE8;
  v14 = v4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1BD126964;
  v13[3] = &block_descriptor_8;
  v5 = _Block_copy(v13);
  v14, v6, v7, v8, v9, v10, v11, v12;
  [v3 setInvalidationHandler_];
  _Block_release(v5);
  sub_1BD14797C();
}

void sub_1BD14782C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD147884(1);
  }
}

void *sub_1BD147884(void *result)
{
  if (*(v1 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_isValid) == 1)
  {
    v2 = result;
    *(v1 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_isValid) = 0;
    v3 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession;
    v4 = *(v1 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v1 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v1 + v3) = 0;

    v6 = *(v1 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle);
    [v6 setInvalidationHandler_];
    if (v2)
    {
      [v6 closeWithCompletion_];
    }

    [v6 invalidate];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result invalidate];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1BD14797C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 window];

  if (v3)
  {
    v4 = [v3 windowScene];

    if (v4)
    {
      v5 = [v4 _sceneIdentifier];

      v6 = sub_1BE052434();
      v88 = v7;
      v89 = v6;

      v8 = [objc_allocWithZone(MEMORY[0x1E69B8658]) init];
      v9 = swift_allocObject();
      v9[2] = 0;
      v87 = *&v0[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_paymentService];
      v10 = *&v0[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_pass];
      v11 = *&v0[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_webService];
      sub_1BD14BE3C();
      v12 = v10;
      v13 = sub_1BE052D54();
      v14 = [objc_allocWithZone(MEMORY[0x1E69B9268]) initWithPass:v12 webService:v11 paymentServiceProvider:0 queue:v13];

      if (v14)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        v95 = sub_1BD14BE88;
        v96 = v15;
        aBlock = MEMORY[0x1E69E9820];
        v92 = 1107296256;
        v93 = sub_1BD3B2110;
        v94 = &block_descriptor_10;
        v16 = _Block_copy(&aBlock);
        v17 = v96;
        v18 = v14;
        v17, v19, v20, v21, v22, v23, v24, v25;
        [v8 addOperation_];
        _Block_release(v16);
        v26 = swift_allocObject();
        v26[2] = 0;
        v27 = swift_allocObject();
        v27[2] = 0;
        v28 = v8;
        v29 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v30 = swift_allocObject();
        v30[2] = v29;
        v30[3] = v18;
        v30[4] = v89;
        v30[5] = v88;
        v30[6] = v87;
        v30[7] = v26;
        v30[8] = v27;
        v30[9] = v9;
        v95 = sub_1BD14BE90;
        v96 = v30;
        aBlock = MEMORY[0x1E69E9820];
        v92 = 1107296256;
        v93 = sub_1BD3B2110;
        v94 = &block_descriptor_23_0;
        v31 = _Block_copy(&aBlock);
        v32 = v96;
        v90 = v18;
        v33 = v87;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        v32, v34, v35, v36, v37, v38, v39, v40;
        [v28 addOperation_];
        _Block_release(v31);
        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = swift_allocObject();
        v42[2] = v41;
        v42[3] = v26;
        v42[4] = v9;
        v95 = sub_1BD14BEC8;
        v96 = v42;
        aBlock = MEMORY[0x1E69E9820];
        v92 = 1107296256;
        v93 = sub_1BD3B2110;
        v94 = &block_descriptor_30;
        v43 = _Block_copy(&aBlock);
        v44 = v96;
        sub_1BE048964();
        sub_1BE048964();
        v44, v45, v46, v47, v48, v49, v50, v51;
        [v28 addOperation_];
        _Block_release(v43);
        v52 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v54 = swift_allocObject();
        v54[2] = v53;
        v54[3] = v9;
        v54[4] = v27;
        v54[5] = v90;
        v95 = sub_1BD14BED4;
        v96 = v54;
        aBlock = MEMORY[0x1E69E9820];
        v92 = 1107296256;
        v93 = sub_1BD3B21E4;
        v94 = &block_descriptor_37;
        v55 = _Block_copy(&aBlock);
        v56 = v96;
        v57 = v90;
        sub_1BE048964();
        sub_1BE048964();
        v56, v58, v59, v60, v61, v62, v63, v64;
        v65 = [v28 evaluateWithInput:v52 completion:v55];
        _Block_release(v55);

        v9, v66, v67, v68, v69, v70, v71, v72;
        v26, v73, v74, v75, v76, v77, v78, v79;
        v27, v80, v81, v82, v83, v84, v85, v86;
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_10;
    }
  }

  sub_1BD147884(1);
}

void sub_1BD147F88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a2;
  v20[4] = sub_1BD14BF54;
  v21 = v9;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1BD126964;
  v20[3] = &block_descriptor_72_0;
  v10 = _Block_copy(v20);
  v11 = v21;
  sub_1BE048964();
  v12 = a2;
  v11, v13, v14, v15, v16, v17, v18, v19;
  [a5 updateSharesWithCompletion_];
  _Block_release(v10);
}

void sub_1BD148080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v67 = a8;
  v16 = sub_1BE04D214();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v65 = a4;
    v66 = a2;
    sub_1BE04D0A4();
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C54();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1BD026000, v22, v23, "Requesting auth for invite", v24, 2u);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    v64 = a3;

    (*(v17 + 8))(v19, v16);
    v25 = [a6 baseShareForPassTransferWithIsForCompanion_];
    if (v25)
    {
      v26 = v25;
      v27 = [objc_allocWithZone(MEMORY[0x1E69B8A18]) initWithShare:v25 pass:*&v21[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_pass]];
      [v27 setSharingInvitationFlow_];
      v63 = PKShareTransferAuthorizationPaymentRequest();
      v62 = objc_opt_self();
      v67 = sub_1BE052404();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = a9;
      v29[4] = v27;
      v29[5] = a10;
      v29[6] = a11;
      v29[7] = a12;
      v72 = sub_1BD14BEEC;
      v73 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v69 = 1107296256;
      v61 = v26;
      v70 = sub_1BD148854;
      v71 = &block_descriptor_50;
      v30 = _Block_copy(&aBlock);
      v31 = v73;
      v32 = v21;
      v33 = a9;
      v60 = v27;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v31, v34, v35, v36, v37, v38, v39, v40;
      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v42 = swift_allocObject();
      v42[2] = v41;
      v42[3] = a10;
      v43 = v64;
      v44 = v65;
      v42[4] = a11;
      v42[5] = v43;
      v45 = v66;
      v42[6] = v44;
      v42[7] = v45;
      v72 = sub_1BD14BF1C;
      v73 = v42;
      aBlock = MEMORY[0x1E69E9820];
      v69 = 1107296256;
      v70 = sub_1BD976224;
      v71 = &block_descriptor_57_0;
      v46 = _Block_copy(&aBlock);
      v47 = v73;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v48 = v45;
      v47, v49, v50, v51, v52, v53, v54, v55;
      v56 = v63;
      v57 = v67;
      v58 = [v62 authorizeForRequest:v63 presentationSceneIdentifier:v67 authHandler:v30 completion:v46];

      _Block_release(v46);
      _Block_release(v30);

      v59 = *&v32[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession];
      *&v32[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession] = v58;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BD1484DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v38 = a7;
    v17 = [*(Strong + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle) transportIdentifier];
    if (!v17)
    {
      sub_1BE052434();
      v19 = v18;
      v17 = sub_1BE052404();
      v19, v20, v21, v22, v23, v24, v25, v26;
    }

    v27 = sub_1BE04AAB4();
    v28 = swift_allocObject();
    v28[2] = a8;
    v28[3] = a9;
    v28[4] = a3;
    v28[5] = a4;
    v28[6] = a10;
    aBlock[4] = sub_1BD14BF44;
    v40 = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD1487AC;
    aBlock[3] = &block_descriptor_66;
    v29 = _Block_copy(aBlock);
    v30 = v40;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v30, v31, v32, v33, v34, v35, v36, v37;
    [a6 createShareInvitationForPartialShareInvitation:v38 existingTransportIdentifier:v17 authorization:v27 completion:v29];
    _Block_release(v29);
  }
}

void sub_1BD14869C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    swift_beginAccess();
    v14 = *(a4 + 16);
    *(a4 + 16) = a1;
    v15 = a1;
    v16 = a2;

    swift_beginAccess();
    v17 = *(a5 + 16);
    *(a5 + 16) = a2;
    v18 = v16;

    a6(1);
  }

  else
  {
    swift_beginAccess();
    v20 = *(a8 + 16);
    *(a8 + 16) = a3;
    v21 = a3;

    a6(0);
  }
}

void sub_1BD1487AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BE048964();
  v18 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
  v7, v11, v12, v13, v14, v15, v16, v17;
}

void sub_1BD148854(uint64_t a1, void *a2, const void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1BE048964();
  v7 = a2;
  v8 = sub_1BE04AAC4();
  v10 = v9;

  v11 = _Block_copy(a3);
  v12 = swift_allocObject();
  v12[2] = v11;
  v6(v8, v10, sub_1BD14BF2C, v12);
  v12, v13, v14, v15, v16, v17, v18, v19;
  sub_1BD1245AC(v8, v10, v20, v21, v22, v23, v24, v25);

  v5, v26, v27, v28, v29, v30, v31, v32;
}

void sub_1BD148934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BOOL8), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession);
    *(Strong + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession) = 0;

    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_beginAccess();
      v14 = *(a4 + 16) == 0;
    }

    else
    {
      v14 = 1;
    }

    a5(a7, v14);
  }
}

void sub_1BD148A0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_beginAccess();
    v14 = *(a6 + 16);
    if (v14)
    {
      v15 = *&v13[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle];
      v16 = swift_allocObject();
      v16[2] = a7;
      v16[3] = a3;
      v16[4] = a4;
      v16[5] = a2;
      v29[4] = sub_1BD14BEE0;
      v30 = v16;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 1107296256;
      v29[2] = sub_1BD3CC8C0;
      v29[3] = &block_descriptor_43_0;
      v17 = _Block_copy(v29);
      v18 = v30;
      v19 = v14;
      v20 = v15;
      sub_1BE048964();
      sub_1BE048964();
      v21 = a2;
      v18, v22, v23, v24, v25, v26, v27, v28;
      [v20 sendMessage:v19 completion:v17];
      _Block_release(v17);

      v13 = v20;
    }
  }
}

uint64_t sub_1BD148B8C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, BOOL), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = a2;

  v11 = a2;
  return a4(a6, a2 != 0);
}

void sub_1BD148C14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (*(a5 + 16) || (v13 = [a3 isCanceled], v13))
    {
      swift_beginAccess();
      v14 = *(a6 + 16);
      if (v14)
      {
        [a7 revokeShare:v14 shouldCascade:0 withCompletion:0];
      }

      v13 = 1;
    }

    sub_1BD147884(v13);
  }
}

id ProvisioningContinuityCarKeyHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = sub_1BE052404();
    a2, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithNibName:v7 bundle:a3];

  return v15;
}

id ProvisioningContinuityCarKeyHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD148E9C(uint64_t a1)
{
  sub_1BE049B04();
  v2 = MEMORY[0x1E6967AD0];
  sub_1BD14BDF4(&qword_1EBD3A338, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE0]);
  v3 = sub_1BE052284();
  return sub_1BD149D3C(a1, v3, MEMORY[0x1E6967AD0], &qword_1EBD3A340, v2, MEMORY[0x1E6967AE8]);
}

unint64_t sub_1BD148F70(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  sub_1BE052524();
  v4 = sub_1BE053D64();

  return sub_1BD149B0C(a1, a2, v4);
}

unint64_t sub_1BD149040(uint64_t a1)
{
  v2 = sub_1BE0537A4();

  return sub_1BD149BC4(a1, v2);
}

unint64_t sub_1BD1490C0(uint64_t a1)
{
  sub_1BE04C974();
  v2 = MEMORY[0x1E69BCA90];
  sub_1BD14BDF4(&qword_1EBD369F8, MEMORY[0x1E69BCA90], MEMORY[0x1E69BCA98]);
  v3 = sub_1BE052284();
  return sub_1BD149D3C(a1, v3, MEMORY[0x1E69BCA90], &qword_1EBD369F0, v2, MEMORY[0x1E69BCAA0]);
}

unint64_t sub_1BD149194(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  sub_1BE053D24();
  if (a2)
  {
    sub_1BE052524();
  }

  v4 = sub_1BE053D64();

  return sub_1BD149EDC(a1, a2, v4);
}

unint64_t sub_1BD149228(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1BDA27B24(*(v1 + 40), a1);

  return sub_1BD149FA8(v2, v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1BD14926C(uint64_t a1)
{
  sub_1BE052434();
  v3 = v2;
  sub_1BE053D04();
  sub_1BE052524();
  v4 = sub_1BE053D64();
  v3, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BD14A7EC(a1, v4);
}

unint64_t sub_1BD1492FC(uint64_t a1)
{
  sub_1BE0492B4();
  v2 = MEMORY[0x1E6967728];
  sub_1BD14BDF4(&qword_1EBD3A378, MEMORY[0x1E6967728], MEMORY[0x1E6967730]);
  v3 = sub_1BE052284();
  return sub_1BD149D3C(a1, v3, MEMORY[0x1E6967728], &qword_1EBD3A380, v2, MEMORY[0x1E6967738]);
}

unint64_t sub_1BD1493D0(uint64_t a1)
{
  sub_1BE053D04();
  type metadata accessor for CFString(0);
  sub_1BD14BDF4(&qword_1EBD3A370, type metadata accessor for CFString, &unk_1BE0B61E0);
  sub_1BE04CDC4();
  v2 = sub_1BE053D64();

  return sub_1BD14A24C(a1, v2);
}

unint64_t sub_1BD1494B0(char a1)
{
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](a1 & 1);
  v2 = sub_1BE053D64();

  return sub_1BD14A70C(a1 & 1, v2);
}

unint64_t sub_1BD14951C(uint64_t a1)
{
  sub_1BE04AFE4();
  v2 = MEMORY[0x1E69695A8];
  sub_1BD14BDF4(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1BE052284();
  return sub_1BD149D3C(a1, v3, MEMORY[0x1E69695A8], &unk_1EBD36A30, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1BD1495F0(uint64_t a1)
{
  v1 = a1;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  v2 = sub_1BE053D64();

  return sub_1BD14A77C(v1, v2);
}

unint64_t sub_1BD14965C(uint64_t a1)
{
  v2 = sub_1BE04C164();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE053D04();
  sub_1BD14B538(a1, v8);
  v9 = (*(v3 + 48))(v8, 3, v2);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v10 = 0;
LABEL_8:
    MEMORY[0x1BFB40DA0](v10);
    goto LABEL_9;
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1BFB40DA0](1);
  sub_1BD14BDF4(&qword_1EBD3A348, MEMORY[0x1E69B8260], MEMORY[0x1E69B8268]);
  sub_1BE052294();
  (*(v3 + 8))(v5, v2);
LABEL_9:
  v11 = sub_1BE053D64();
  return sub_1BD14A8F0(a1, v11);
}

unint64_t sub_1BD14986C(char a1)
{
  sub_1BE053D04();
  v2 = a1 & 1;
  if (a1)
  {
    v3 = 0xED000079656E6F4DLL;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  v11 = sub_1BE053D64();

  return sub_1BD14ADC8(v2, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_1BD149920(uint64_t a1)
{
  v1 = a1;
  sub_1BE053D04();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0xEE00746E656D7961;
    }

    else
    {
      v2 = 0xEC000000746E656DLL;
    }
  }

  else
  {
    v2 = 0x80000001BE117CF0;
  }

  sub_1BE052524();
  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = sub_1BE053D64();

  return sub_1BD14AF20(v1, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t sub_1BD149A00(char a1)
{
  sub_1BE053D04();
  v2 = a1 & 1;
  if (a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  v11 = sub_1BE053D64();

  return sub_1BD14B0D8(v2, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_1BD149A9C(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1BDA27EC4(*(v1 + 40), a1);

  return sub_1BD14B20C(v2, v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1BD149B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BE053B84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BD149BC4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1BD149C8C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFB40840](v9, a1);
      sub_1BD149CE8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BD149D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1BD14BDF4(v24, v25, v26);
      v20 = sub_1BE052334();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1BD149EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1BE053B84() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1BD149FA8(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v52 = ~v9;
    v11 = a1;
    while (1)
    {
      v12 = *(*(v54 + 48) + v10);
      if (v12 > 3)
      {
        if (*(*(v54 + 48) + v10) > 5u)
        {
          if (v12 == 6)
          {
            v18 = 0xE800000000000000;
            v17 = 0x7365636976726573;
          }

          else
          {
            v18 = 0xE700000000000000;
            v17 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          if (v12 == 4)
          {
            v17 = 0x726F70736E617274;
          }

          else
          {
            v17 = 0x6C6576617274;
          }

          if (v12 == 4)
          {
            v18 = 0xE900000000000074;
          }

          else
          {
            v18 = 0xE600000000000000;
          }
        }
      }

      else
      {
        if (v12 == 2)
        {
          v13 = 0x44646E41646F6F66;
        }

        else
        {
          v13 = 0x68746C616568;
        }

        if (v12 == 2)
        {
          v14 = 0xED0000736B6E6972;
        }

        else
        {
          v14 = 0xE600000000000000;
        }

        if (*(*(v54 + 48) + v10))
        {
          v15 = 0x676E6970706F6873;
        }

        else
        {
          v15 = 7239014;
        }

        if (*(*(v54 + 48) + v10))
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = 0xE300000000000000;
        }

        if (*(*(v54 + 48) + v10) <= 1u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }

        if (*(*(v54 + 48) + v10) <= 1u)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }
      }

      v19 = 0x7365636976726573;
      if (v11 != 6)
      {
        v19 = 0x6E776F6E6B6E75;
      }

      v20 = 0xE700000000000000;
      if (v11 == 6)
      {
        v20 = 0xE800000000000000;
      }

      v21 = 0x726F70736E617274;
      if (v11 != 4)
      {
        v21 = 0x6C6576617274;
      }

      v22 = 0xE900000000000074;
      if (v11 != 4)
      {
        v22 = 0xE600000000000000;
      }

      if (v11 <= 5)
      {
        v19 = v21;
        v20 = v22;
      }

      if (v11 == 2)
      {
        v23 = 0x44646E41646F6F66;
      }

      else
      {
        v23 = 0x68746C616568;
      }

      if (v11 == 2)
      {
        v24 = 0xED0000736B6E6972;
      }

      else
      {
        v24 = 0xE600000000000000;
      }

      if (v11)
      {
        v25 = 0x676E6970706F6873;
      }

      else
      {
        v25 = 7239014;
      }

      if (v11)
      {
        v26 = 0xE800000000000000;
      }

      else
      {
        v26 = 0xE300000000000000;
      }

      if (v11 <= 1)
      {
        v23 = v25;
        v24 = v26;
      }

      v27 = (v11 <= 3 ? v23 : v19);
      v28 = (v11 <= 3 ? v24 : v20);
      if (v17 == v27 && v18 == v28)
      {
        break;
      }

      v29 = sub_1BE053B84();
      v18, v30, v31, v32, v33, v34, v35, v36;
      v28, v37, v38, v39, v40, v41, v42, v43;
      if ((v29 & 1) == 0)
      {
        v10 = (v10 + 1) & v52;
        if ((*(v53 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }

    v18, 0xE300000000000000, v27, a4, a5, a6, a7, a8;
    v28, v44, v45, v46, v47, v48, v49, v50;
  }

  return v10;
}

unint64_t sub_1BD14A24C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1BD14BDF4(&qword_1EBD3A370, type metadata accessor for CFString, &unk_1BE0B61E0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BE04CDB4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BD14A358(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = a1;
    while (1)
    {
      v13 = *(*(v8 + 48) + v10);
      if (v13 <= 5)
      {
        break;
      }

      if (*(*(v8 + 48) + v10) <= 8u)
      {
        if (v13 == 6)
        {
          v15 = 0xD000000000000014;
          v18 = 0x80000001BE117490;
          if (v12 <= 5)
          {
            goto LABEL_17;
          }

          goto LABEL_53;
        }

        v14 = v13 == 7;
        v15 = 0xD00000000000001BLL;
        v17 = 0x80000001BE1174B0;
        v16 = 0x80000001BE1174D0;
LABEL_13:
        if (v14)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16;
        }

        if (v12 <= 5)
        {
LABEL_17:
          v19 = 0xD000000000000019;
          if (v12 == 4)
          {
            v19 = 0xD000000000000012;
          }

          v20 = 0x80000001BE117470;
          if (v12 == 4)
          {
            v20 = 0x80000001BE117450;
          }

          if (v12 == 3)
          {
            v19 = 0xD000000000000012;
            v20 = 0x80000001BE117430;
          }

          if (v12 == 1)
          {
            v21 = 0xD000000000000012;
          }

          else
          {
            v21 = 0xD000000000000010;
          }

          v22 = 0x80000001BE117410;
          if (v12 == 1)
          {
            v22 = 0x80000001BE1173F0;
          }

          if (!v12)
          {
            v21 = 0x6E776F6E6B6E75;
            v22 = 0xE700000000000000;
          }

          if (v12 <= 2)
          {
            v23 = v21;
          }

          else
          {
            v23 = v19;
          }

          if (v12 <= 2)
          {
            v24 = v22;
          }

          else
          {
            v24 = v20;
          }

          if (v15 != v23)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        goto LABEL_53;
      }

      if (v13 == 9)
      {
        v15 = 0xD00000000000001BLL;
        v18 = 0x80000001BE1174F0;
        if (v12 <= 5)
        {
          goto LABEL_17;
        }
      }

      else if (v13 == 10)
      {
        v15 = 0xD000000000000019;
        v18 = 0x80000001BE117510;
        if (v12 <= 5)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v15 = 0xD00000000000001CLL;
        v18 = 0x80000001BE117530;
        if (v12 <= 5)
        {
          goto LABEL_17;
        }
      }

LABEL_53:
      v25 = 0xD00000000000001BLL;
      v26 = 0xD000000000000019;
      if (v12 != 10)
      {
        v26 = 0xD00000000000001CLL;
      }

      v27 = 0x80000001BE117530;
      if (v12 == 10)
      {
        v27 = 0x80000001BE117510;
      }

      if (v12 == 9)
      {
        v26 = 0xD00000000000001BLL;
        v27 = 0x80000001BE1174F0;
      }

      v28 = 0x80000001BE1174D0;
      if (v12 == 7)
      {
        v28 = 0x80000001BE1174B0;
      }

      if (v12 == 6)
      {
        v25 = 0xD000000000000014;
      }

      v29 = 0x80000001BE117490;
      if (v12 != 6)
      {
        v29 = v28;
      }

      if (v12 <= 8)
      {
        v23 = v25;
      }

      else
      {
        v23 = v26;
      }

      if (v12 <= 8)
      {
        v24 = v29;
      }

      else
      {
        v24 = v27;
      }

      if (v15 != v23)
      {
        goto LABEL_73;
      }

LABEL_72:
      if (v18 == v24)
      {
        v18, a2, v23, a4, a5, a6, a7, a8;
        v24, v45, v46, v47, v48, v49, v50, v51;
        return v10;
      }

LABEL_73:
      v30 = sub_1BE053B84();
      v18, v31, v32, v33, v34, v35, v36, v37;
      v24, v38, v39, v40, v41, v42, v43, v44;
      if ((v30 & 1) == 0)
      {
        v10 = (v10 + 1) & v11;
        if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }

    if (*(*(v8 + 48) + v10) > 2u)
    {
      if (v13 == 3)
      {
        v15 = 0xD000000000000012;
        v18 = 0x80000001BE117430;
        if (v12 <= 5)
        {
          goto LABEL_17;
        }
      }

      else if (v13 == 4)
      {
        v15 = 0xD000000000000012;
        v18 = 0x80000001BE117450;
        if (v12 <= 5)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v15 = 0xD000000000000019;
        v18 = 0x80000001BE117470;
        if (v12 <= 5)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_53;
    }

    if (!*(*(v8 + 48) + v10))
    {
      v18 = 0xE700000000000000;
      v15 = 0x6E776F6E6B6E75;
      if (v12 <= 5)
      {
        goto LABEL_17;
      }

      goto LABEL_53;
    }

    v14 = v13 == 1;
    if (v13 == 1)
    {
      v15 = 0xD000000000000012;
    }

    else
    {
      v15 = 0xD000000000000010;
    }

    v17 = 0x80000001BE1173F0;
    v16 = 0x80000001BE117410;
    goto LABEL_13;
  }

  return v10;
}

unint64_t sub_1BD14A70C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1BD14A77C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1BD14A7EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1BE052434();
      v8 = v7;
      v9 = sub_1BE052434();
      v17 = v10;
      if (v6 == v9 && v8 == v10)
      {
        break;
      }

      v19 = sub_1BE053B84();
      v8, v20, v21, v22, v23, v24, v25, v26;
      v17, v27, v28, v29, v30, v31, v32, v33;
      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    v8, v10, v11, v12, v13, v14, v15, v16;
    v17, v34, v35, v36, v37, v38, v39, v40;
  }

  return v4;
}

unint64_t sub_1BD14A8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = a1;
  v5 = sub_1BE04C164();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A350, &qword_1BE0FB580);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v58 - v15;
  v17 = v3 + 64;
  v18 = -1 << *(v3 + 32);
  v19 = a2 & ~v18;
  if (((*(v3 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return v19;
  }

  v66 = v14;
  v67 = ~v18;
  v68 = *(v13 + 72);
  v20 = (v6 + 48);
  v64 = v3 + 64;
  v65 = (v6 + 8);
  v60 = v3;
  v61 = (v6 + 32);
  v59 = v8;
  while (1)
  {
    sub_1BD14B538(*(v3 + 48) + v68 * v19, v16);
    v21 = *(v8 + 48);
    sub_1BD14B538(v16, v10);
    sub_1BD14B538(v69, &v10[v21]);
    v22 = *v20;
    v23 = (*v20)(v10, 3, v5);
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        sub_1BD14B59C(v16);
        if (v22(&v10[v21], 3, v5) == 2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1BD14B59C(v16);
        if (v22(&v10[v21], 3, v5) == 3)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_13;
    }

    if (v23)
    {
      sub_1BD14B59C(v16);
      if (v22(&v10[v21], 3, v5) == 1)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v24 = v66;
    sub_1BD14B538(v10, v66);
    if (v22(&v10[v21], 3, v5))
    {
      sub_1BD14B59C(v16);
      (*v65)(v24, v5);
      v17 = v64;
LABEL_13:
      sub_1BD14B5F8(v10);
      goto LABEL_14;
    }

    (*v61)(v63, &v10[v21], v5);
    sub_1BD14BDF4(&qword_1EBD3A358, MEMORY[0x1E69B8260], MEMORY[0x1E69B8270]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v25 = v73;
    v26 = v71;
    if (v72 == v70 && v73 == v71)
    {
      break;
    }

    v62 = sub_1BE053B84();
    v27 = *v65;
    (*v65)(v63, v5);
    sub_1BD14B59C(v16);
    v25, v28, v29, v30, v31, v32, v33, v34;
    v26, v35, v36, v37, v38, v39, v40, v41;
    v27(v66, v5);
    v8 = v59;
    v3 = v60;
    v17 = v64;
    if (v62)
    {
      goto LABEL_22;
    }

    sub_1BD14B59C(v10);
LABEL_14:
    v19 = (v19 + 1) & v67;
    if (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return v19;
    }
  }

  v42 = *v65;
  (*v65)(v63, v5);
  sub_1BD14B59C(v16);
  v25, v43, v44, v45, v46, v47, v48, v49;
  v26, v50, v51, v52, v53, v54, v55, v56;
  v42(v66, v5);
LABEL_22:
  sub_1BD14B59C(v10);
  return v19;
}

unint64_t sub_1BD14ADC8(char a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    if (a1)
    {
      v12 = 0x7761726468746977;
    }

    else
    {
      v12 = 0x79656E6F4D646461;
    }

    if (a1)
    {
      v13 = 0xED000079656E6F4DLL;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    while (1)
    {
      v14 = *(*(v8 + 48) + v10) ? 0x7761726468746977 : 0x79656E6F4D646461;
      v15 = (*(*(v8 + 48) + v10) ? 0xED000079656E6F4DLL : 0xE800000000000000);
      if (v14 == v12 && v15 == v13)
      {
        break;
      }

      v17 = sub_1BE053B84();
      v15, v18, v19, v20, v21, v22, v23, v24;
      v13, v25, v26, v27, v28, v29, v30, v31;
      if ((v17 & 1) == 0)
      {
        v10 = (v10 + 1) & v11;
        if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }

    v15, a2, a3, a4, a5, a6, a7, a8;
    v13, v32, v33, v34, v35, v36, v37, v38;
  }

  return v10;
}

unint64_t sub_1BD14AF20(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v12 = ~v9;
    while (1)
    {
      if (*(*(v8 + 48) + v10))
      {
        v13 = 0x506D756D696E696DLL;
        v14 = 0xEE00746E656D7961;
        if (*(*(v8 + 48) + v10) != 1)
        {
          v13 = 0x796150726568746FLL;
          v14 = 0xEC000000746E656DLL;
        }

        v15 = a1;
        if (!a1)
        {
LABEL_16:
          v16 = 0xD000000000000013;
          v17 = 0x80000001BE117CF0;
          if (v13 != 0xD000000000000013)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v13 = 0xD000000000000013;
        v14 = 0x80000001BE117CF0;
        v15 = a1;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      if (v15 == 1)
      {
        v16 = 0x506D756D696E696DLL;
      }

      else
      {
        v16 = 0x796150726568746FLL;
      }

      if (v15 == 1)
      {
        v17 = 0xEE00746E656D7961;
      }

      else
      {
        v17 = 0xEC000000746E656DLL;
      }

      if (v13 != v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      if (v14 == v17)
      {
        v14, a2, v16, a4, a5, a6, a7, a8;
        v17, v33, v34, v35, v36, v37, v38, v39;
        return v10;
      }

LABEL_18:
      v18 = sub_1BE053B84();
      v14, v19, v20, v21, v22, v23, v24, v25;
      v17, v26, v27, v28, v29, v30, v31, v32;
      if ((v18 & 1) == 0)
      {
        v10 = (v10 + 1) & v12;
        if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }
  }

  return v10;
}

unint64_t sub_1BD14B0D8(char a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    if (a1)
    {
      v12 = 7173491;
    }

    else
    {
      v12 = 0x746E756F63;
    }

    if (a1)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    while (1)
    {
      v14 = *(*(v8 + 48) + v10) ? 7173491 : 0x746E756F63;
      v15 = (*(*(v8 + 48) + v10) ? 0xE300000000000000 : 0xE500000000000000);
      if (v14 == v12 && v15 == v13)
      {
        break;
      }

      v17 = sub_1BE053B84();
      v15, v18, v19, v20, v21, v22, v23, v24;
      v13, v25, v26, v27, v28, v29, v30, v31;
      if ((v17 & 1) == 0)
      {
        v10 = (v10 + 1) & v11;
        if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }

    v15, a2, a3, a4, a5, a6, a7, a8;
    v13, v32, v33, v34, v35, v36, v37, v38;
  }

  return v10;
}

unint64_t sub_1BD14B20C(unsigned __int8 a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v52 = ~v9;
    v11 = a1;
    while (1)
    {
      v12 = *(*(v54 + 48) + v10);
      if (v12 > 3)
      {
        if (*(*(v54 + 48) + v10) > 5u)
        {
          if (v12 == 6)
          {
            v18 = 0xE800000000000000;
            v17 = 0x726165597473616CLL;
          }

          else
          {
            v18 = 0xE600000000000000;
            v17 = 0x6D6F74737563;
          }
        }

        else
        {
          v17 = v12 == 4 ? 0x746E6F4D7473616CLL : 0x59746E6572727563;
          v18 = (v12 == 4 ? 0xE900000000000068 : 0xEB00000000726165);
        }
      }

      else
      {
        v13 = 0xE900000000000079;
        if (v12 == 2)
        {
          v14 = 0x6164726574736579;
        }

        else
        {
          v14 = 0x4D746E6572727563;
        }

        if (v12 != 2)
        {
          v13 = 0xEC00000068746E6FLL;
        }

        v15 = *(*(v54 + 48) + v10) ? 0x7961646F74 : 0x656D69546C6C61;
        v16 = *(*(v54 + 48) + v10) ? 0xE500000000000000 : 0xE700000000000000;
        v17 = *(*(v54 + 48) + v10) <= 1u ? v15 : v14;
        v18 = (*(*(v54 + 48) + v10) <= 1u ? v16 : v13);
      }

      v19 = 0x726165597473616CLL;
      if (v11 != 6)
      {
        v19 = 0x6D6F74737563;
      }

      v20 = 0xE800000000000000;
      if (v11 != 6)
      {
        v20 = 0xE600000000000000;
      }

      v21 = 0x746E6F4D7473616CLL;
      if (v11 != 4)
      {
        v21 = 0x59746E6572727563;
      }

      v22 = 0xEB00000000726165;
      if (v11 == 4)
      {
        v22 = 0xE900000000000068;
      }

      if (v11 <= 5)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = 0xE900000000000079;
      if (v11 == 2)
      {
        v24 = 0x6164726574736579;
      }

      else
      {
        v24 = 0x4D746E6572727563;
      }

      if (v11 != 2)
      {
        v23 = 0xEC00000068746E6FLL;
      }

      if (v11)
      {
        v25 = 0x7961646F74;
      }

      else
      {
        v25 = 0x656D69546C6C61;
      }

      if (v11)
      {
        v26 = 0xE500000000000000;
      }

      else
      {
        v26 = 0xE700000000000000;
      }

      if (v11 <= 1)
      {
        v24 = v25;
        v23 = v26;
      }

      v27 = (v11 <= 3 ? v24 : v19);
      v28 = (v11 <= 3 ? v23 : v20);
      if (v17 == v27 && v18 == v28)
      {
        break;
      }

      v29 = sub_1BE053B84();
      v18, v30, v31, v32, v33, v34, v35, v36;
      v28, v37, v38, v39, v40, v41, v42, v43;
      if ((v29 & 1) == 0)
      {
        v10 = (v10 + 1) & v52;
        if ((*(v53 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }

    v18, a2, v27, 0xE500000000000000, a5, a6, a7, a8;
    v28, v44, v45, v46, v47, v48, v49, v50;
  }

  return v10;
}

unint64_t sub_1BD14B4CC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1BD14B538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD14B59C(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD14B5F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A350, &qword_1BE0FB580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD14B660(char a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v12 = ~v9;
    while (1)
    {
      v13 = 0xE800000000000000;
      v14 = 0x6573616863727570;
      switch(*(*(v8 + 48) + v10))
      {
        case 1:
          v13 = 0xE600000000000000;
          v14 = 0x646E75666572;
          break;
        case 2:
          v13 = 0xE700000000000000;
          v14 = 0x7469736E617274;
          break;
        case 3:
          v15 = 1919247728;
          goto LABEL_23;
        case 4:
          v13 = 0xE300000000000000;
          v14 = 6645094;
          break;
        case 5:
          v14 = 0x6172646874646977;
          v13 = 0xEB000000006C6177;
          break;
        case 6:
          v13 = 0xE500000000000000;
          v14 = 0x7055706F74;
          break;
        case 7:
          v14 = 0x656D7473756A6461;
          v13 = 0xEA0000000000746ELL;
          break;
        case 8:
          v14 = 0x6573727562736964;
          v13 = 0xEC000000746E656DLL;
          break;
        case 9:
          v13 = 0xE700000000000000;
          v14 = 0x73647261776572;
          break;
        case 0xA:
          v15 = 1819044194;
LABEL_23:
          v14 = v15 | 0x6D79615000000000;
          v13 = 0xEB00000000746E65;
          break;
        case 0xB:
          v14 = 0x7473657265746E69;
          break;
        case 0xC:
          v14 = 0x4173647261776572;
          v13 = 0xEC00000064656464;
          break;
        case 0xD:
          v14 = 0xD000000000000012;
          v13 = 0x80000001BE1181C0;
          break;
        case 0xE:
          v14 = 0x6D6C6C6174736E69;
          v13 = 0xEF6E616C50746E65;
          break;
        case 0xF:
          v14 = 0x646E656469766964;
          break;
        case 0x10:
          v13 = 0xE400000000000000;
          v14 = 1851879276;
          break;
        case 0x11:
          v14 = 0x676E69646E617473;
          v13 = 0xED0000726564724FLL;
          break;
        case 0x12:
          v13 = 0xEB00000000746962;
          v14 = 0x6544746365726964;
          break;
        case 0x13:
          v14 = 0x726566736E617274;
          break;
        case 0x14:
          v13 = 0xE500000000000000;
          v14 = 0x6B63656863;
          break;
        case 0x15:
          v13 = 0xE700000000000000;
          v14 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v16 = 0xE800000000000000;
      v17 = 0x6573616863727570;
      switch(a1)
      {
        case 1:
          v16 = 0xE600000000000000;
          v17 = 0x646E75666572;
          if (v14 == 0x646E75666572)
          {
            goto LABEL_67;
          }

          goto LABEL_68;
        case 2:
          v16 = 0xE700000000000000;
          v17 = 0x7469736E617274;
          if (v14 != 0x7469736E617274)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 3:
          v18 = 1919247728;
          goto LABEL_62;
        case 4:
          v16 = 0xE300000000000000;
          v17 = 6645094;
          if (v14 != 6645094)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 5:
          v17 = 0x6172646874646977;
          v19 = 7102839;
          goto LABEL_63;
        case 6:
          v16 = 0xE500000000000000;
          v17 = 0x7055706F74;
          if (v14 != 0x7055706F74)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 7:
          v17 = 0x656D7473756A6461;
          v16 = 0xEA0000000000746ELL;
          if (v14 != 0x656D7473756A6461)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 8:
          v17 = 0x6573727562736964;
          v16 = 0xEC000000746E656DLL;
          goto LABEL_66;
        case 9:
          v16 = 0xE700000000000000;
          v17 = 0x73647261776572;
          if (v14 != 0x73647261776572)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 10:
          v18 = 1819044194;
LABEL_62:
          v17 = v18 | 0x6D79615000000000;
          v19 = 7630437;
LABEL_63:
          v16 = (v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
          if (v14 != v17)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 11:
          v17 = 0x7473657265746E69;
          if (v14 != 0x7473657265746E69)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 12:
          v17 = 0x4173647261776572;
          v16 = 0xEC00000064656464;
          if (v14 != 0x4173647261776572)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 13:
          v17 = 0xD000000000000012;
          v16 = 0x80000001BE1181C0;
          if (v14 != 0xD000000000000012)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 14:
          v17 = 0x6D6C6C6174736E69;
          v16 = 0xEF6E616C50746E65;
          if (v14 != 0x6D6C6C6174736E69)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 15:
          v17 = 0x646E656469766964;
          if (v14 != 0x646E656469766964)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 16:
          v16 = 0xE400000000000000;
          v17 = 1851879276;
          if (v14 != 1851879276)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 17:
          v17 = 0x676E69646E617473;
          v16 = 0xED0000726564724FLL;
          if (v14 != 0x676E69646E617473)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 18:
          v16 = 0xEB00000000746962;
          v17 = 0x6544746365726964;
          if (v14 != 0x6544746365726964)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 19:
          v17 = 0x726566736E617274;
          if (v14 != 0x726566736E617274)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 20:
          v16 = 0xE500000000000000;
          v17 = 0x6B63656863;
          if (v14 != 0x6B63656863)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 21:
          v16 = 0xE700000000000000;
          v17 = 0x6E776F6E6B6E75;
          if (v14 != 0x6E776F6E6B6E75)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        default:
LABEL_66:
          if (v14 != v17)
          {
            goto LABEL_68;
          }

LABEL_67:
          if (v13 == v16)
          {
            v13, a2, v17, a4, a5, a6, a7, a8;
            v16, v35, v36, v37, v38, v39, v40, v41;
            return v10;
          }

LABEL_68:
          v20 = sub_1BE053B84();
          v13, v21, v22, v23, v24, v25, v26, v27;
          v16, v28, v29, v30, v31, v32, v33, v34;
          if (v20)
          {
            return v10;
          }

          v10 = (v10 + 1) & v12;
          if (((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            return v10;
          }

          break;
      }
    }
  }

  return v10;
}

uint64_t sub_1BD14BC7C()
{
  sub_1BE053D04();
  sub_1BE052524();
  v0 = sub_1BE053D64();

  return sub_1BD14BC50(v0);
}

void sub_1BD14BCE0()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_paymentService;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_passLibrary) = v2;
  v3 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_webService;
  *(v0 + v3) = [objc_opt_self() sharedService];
  *(v0 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession) = 0;
  *(v0 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_isValid) = 1;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD14BDF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD14BE3C()
{
  result = qword_1EBD35E90;
  if (!qword_1EBD35E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD35E90);
  }

  return result;
}

uint64_t sub_1BD14BFD4(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = 0xEE006572756C6961;
  v9 = 0x466C616974696E69;
  v10 = a1;
  if (a1 > 3u)
  {
    v17 = 0x80000001BE117EB0;
    v18 = 0xD000000000000017;
    if (a1 != 6)
    {
      v18 = 0x7369447465656873;
      v17 = 0xEE0064657373696DLL;
    }

    v19 = 0x46676E6964616F6CLL;
    if (a1 == 4)
    {
      v20 = 0xEE006572756C6961;
    }

    else
    {
      v19 = 0x6D73694472657375;
      v20 = 0xED00006465737369;
    }

    if (a1 <= 5u)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }

    if (v10 <= 5)
    {
      v16 = v20;
    }

    else
    {
      v16 = v17;
    }
  }

  else
  {
    v11 = 0xD000000000000014;
    v12 = 0x80000001BE117E60;
    if (a1 != 2)
    {
      v11 = 0xD000000000000011;
      v12 = 0x80000001BE117E80;
    }

    v13 = 0xD000000000000014;
    v14 = 0x80000001BE117E40;
    if (!a1)
    {
      v13 = 0x466C616974696E69;
      v14 = 0xEE006572756C6961;
    }

    if (a1 <= 1u)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }

    if (v10 <= 1)
    {
      v16 = v14;
    }

    else
    {
      v16 = v12;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v8 = 0x80000001BE117EB0;
        v9 = 0xD000000000000017;
        if (v15 != 0xD000000000000017)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v9 = 0x7369447465656873;
        v8 = 0xEE0064657373696DLL;
        if (v15 != 0x7369447465656873)
        {
          goto LABEL_45;
        }
      }
    }

    else if (a2 == 4)
    {
      v9 = 0x46676E6964616F6CLL;
      if (v15 != 0x46676E6964616F6CLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v9 = 0x6D73694472657375;
      v8 = 0xED00006465737369;
      if (v15 != 0x6D73694472657375)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v9 = 0xD000000000000014;
        v21 = "presentedLoadingView";
LABEL_33:
        v8 = ((v21 - 32) | 0x8000000000000000);
        if (v15 != 0xD000000000000014)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v8 = 0x80000001BE117E80;
      v9 = 0xD000000000000011;
    }

    else if (a2)
    {
      v9 = 0xD000000000000014;
      v21 = "startedSilentLoading";
      goto LABEL_33;
    }

    if (v15 != v9)
    {
LABEL_45:
      v22 = sub_1BE053B84();
      goto LABEL_46;
    }
  }

LABEL_42:
  if (v16 != v8)
  {
    goto LABEL_45;
  }

  v22 = 1;
LABEL_46:
  v16, a2, v9, a4, a5, a6, a7, a8;
  v8, v23, v24, v25, v26, v27, v28, v29;
  return v22 & 1;
}

uint64_t sub_1BD14C284(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = 0xE900000000000064;
  v9 = 0x647261436E6FLL;
  v10 = a1;
  v11 = 0xE600000000000000;
  v12 = 0x656572635366666FLL;
  v13 = 0xE90000000000006ELL;
  if (a1 == 2)
  {
    v14 = 0xE90000000000006ELL;
  }

  else
  {
    v12 = 0x726143776F6C6562;
    v14 = 0xE900000000000064;
  }

  v15 = 0x72614365766F6261;
  if (a1)
  {
    v11 = 0xE900000000000064;
  }

  else
  {
    v15 = 0x647261436E6FLL;
  }

  if (a1 <= 1u)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  if (v10 <= 1)
  {
    v17 = v11;
  }

  else
  {
    v17 = v14;
  }

  v18 = 0x656572635366666FLL;
  if (a2 != 2)
  {
    v18 = 0x726143776F6C6562;
    v13 = 0xE900000000000064;
  }

  if (a2)
  {
    v9 = 0x72614365766F6261;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  if (a2 <= 1u)
  {
    v20 = v8;
  }

  else
  {
    v20 = v13;
  }

  if (v16 == v19 && v17 == v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_1BE053B84();
  }

  v17, a2, v19, a4, a5, a6, a7, a8;
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

uint64_t sub_1BD14C3B8(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = 7239014;
  v9 = a1;
  v10 = 0xE300000000000000;
  v11 = 0xE800000000000000;
  v12 = 0x7365636976726573;
  if (a1 != 6)
  {
    v12 = 0x6E776F6E6B6E75;
    v11 = 0xE700000000000000;
  }

  v13 = 0x726F70736E617274;
  v14 = 0xE900000000000074;
  if (a1 != 4)
  {
    v13 = 0x6C6576617274;
    v14 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v12 = v13;
    v11 = v14;
  }

  v15 = 0x44646E41646F6F66;
  v16 = 0xED0000736B6E6972;
  if (a1 != 2)
  {
    v15 = 0x68746C616568;
    v16 = 0xE600000000000000;
  }

  v17 = 0x676E6970706F6873;
  if (a1)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v17 = 7239014;
  }

  if (a1 > 1u)
  {
    v10 = v16;
  }

  else
  {
    v15 = v17;
  }

  if (a1 <= 3u)
  {
    v18 = v15;
  }

  else
  {
    v18 = v12;
  }

  if (v9 <= 3)
  {
    v19 = v10;
  }

  else
  {
    v19 = v11;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v20 = 0xE800000000000000;
        v8 = 0x7365636976726573;
        if (v18 != 0x7365636976726573)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v20 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E75;
        if (v18 != 0x6E776F6E6B6E75)
        {
LABEL_45:
          v21 = sub_1BE053B84();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v8 = 0x726F70736E617274;
      v20 = 0xE900000000000074;
      if (v18 != 0x726F70736E617274)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v20 = 0xE600000000000000;
      v8 = 0x6C6576617274;
      if (v18 != 0x6C6576617274)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v8 = 0x44646E41646F6F66;
      v20 = 0xED0000736B6E6972;
      if (v18 != 0x44646E41646F6F66)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v20 = 0xE600000000000000;
      v8 = 0x68746C616568;
      if (v18 != 0x68746C616568)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v20 = 0xE800000000000000;
    v8 = 0x676E6970706F6873;
    if (v18 != 0x676E6970706F6873)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v20 = 0xE300000000000000;
    if (v18 != 7239014)
    {
      goto LABEL_45;
    }
  }

  if (v19 != v20)
  {
    goto LABEL_45;
  }

  v21 = 1;
LABEL_46:
  v19, a2, v8, a4, a5, a6, a7, a8;
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

uint64_t sub_1BD14C634(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = 0xD000000000000015;
  v9 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v13 = 0x80000001BE117FC0;
      v12 = 0xD00000000000002ALL;
    }

    else
    {
      if (a1 == 4)
      {
        v12 = 0xD000000000000028;
      }

      else
      {
        v12 = 0xD000000000000017;
      }

      if (v9 == 4)
      {
        v13 = 0x80000001BE117FF0;
      }

      else
      {
        v13 = 0x80000001BE118020;
      }
    }
  }

  else
  {
    v10 = 0x80000001BE117FA0;
    if (a1 == 1)
    {
      v11 = 0x616C696176616E75;
    }

    else
    {
      v11 = 0xD000000000000016;
    }

    if (a1 == 1)
    {
      v10 = 0xEF73736150656C62;
    }

    if (a1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0xD000000000000015;
    }

    if (v9)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0x80000001BE117F70;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v14 = 0x80000001BE117FC0;
      v8 = 0xD00000000000002ALL;
      if (v12 != 0xD00000000000002ALL)
      {
        goto LABEL_42;
      }
    }

    else if (a2 == 4)
    {
      v14 = 0x80000001BE117FF0;
      v8 = 0xD000000000000028;
      if (v12 != 0xD000000000000028)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v14 = 0x80000001BE118020;
      v8 = 0xD000000000000017;
      if (v12 != 0xD000000000000017)
      {
LABEL_42:
        v15 = sub_1BE053B84();
        goto LABEL_43;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v8 = 0x616C696176616E75;
    }

    else
    {
      v8 = 0xD000000000000016;
    }

    if (a2 == 1)
    {
      v14 = 0xEF73736150656C62;
    }

    else
    {
      v14 = 0x80000001BE117FA0;
    }

    if (v12 != v8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v14 = 0x80000001BE117F70;
    if (v12 != 0xD000000000000015)
    {
      goto LABEL_42;
    }
  }

  if (v13 != v14)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:
  v13, a2, v8, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_1BD14C814(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v9 = 0x676E6964616F6CLL;
    }

    else
    {
      v9 = 1701736302;
    }

    if (v8)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v9 = 0x45676E6964616F6CLL;
    v10 = 0xEC000000726F7272;
  }

  else if (a1 == 3)
  {
    v9 = 0x626967696C656E69;
    v10 = 0xEA0000000000656CLL;
  }

  else
  {
    v10 = 0xE800000000000000;
    v9 = 0x656C626967696C65;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = 0x676E6964616F6CLL;
    }

    else
    {
      v13 = 1701736302;
    }

    if (a2)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    if (v9 != v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v11 = 0x626967696C656E69;
    v12 = 0xEA0000000000656CLL;
    if (a2 != 3)
    {
      v11 = 0x656C626967696C65;
      v12 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v13 = 0x45676E6964616F6CLL;
    }

    else
    {
      v13 = v11;
    }

    if (a2 == 2)
    {
      v14 = 0xEC000000726F7272;
    }

    else
    {
      v14 = v12;
    }

    if (v9 != v13)
    {
      goto LABEL_33;
    }
  }

  if (v10 != v14)
  {
LABEL_33:
    v15 = sub_1BE053B84();
    goto LABEL_34;
  }

  v15 = 1;
LABEL_34:
  v10, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_1BD14C9B0(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = 0x31746565727473;
  v9 = a1;
  if (a1 > 3u)
  {
    v15 = 0x6F436C6174736F70;
    v16 = 0xEA00000000006564;
    if (a1 != 6)
    {
      v15 = 0x7972746E756F63;
      v16 = 0xE700000000000000;
    }

    v17 = 0xD000000000000015;
    v18 = 0x80000001BE1173C0;
    if (a1 != 4)
    {
      v17 = 0x6574617473;
      v18 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v13 = v17;
    }

    else
    {
      v13 = v15;
    }

    if (v9 <= 5)
    {
      v14 = v18;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    v10 = 0x6C61636F4C627573;
    v11 = 0xEB00000000797469;
    if (a1 != 2)
    {
      v10 = 2037672291;
      v11 = 0xE400000000000000;
    }

    v12 = 0x32746565727473;
    if (!a1)
    {
      v12 = 0x31746565727473;
    }

    if (a1 <= 1u)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    if (v9 <= 1)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = v11;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v8 = 0x6F436C6174736F70;
        v19 = 0xEA00000000006564;
        if (v13 != 0x6F436C6174736F70)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        v8 = 0x7972746E756F63;
        if (v13 != 0x7972746E756F63)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v8 = 0xD000000000000015;
      v19 = 0x80000001BE1173C0;
      if (v13 != 0xD000000000000015)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v19 = 0xE500000000000000;
      v8 = 0x6574617473;
      if (v13 != 0x6574617473)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v8 = 0x6C61636F4C627573;
        v19 = 0xEB00000000797469;
        if (v13 != 0x6C61636F4C627573)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v19 = 0xE400000000000000;
      v8 = 2037672291;
    }

    else
    {
      v19 = 0xE700000000000000;
      if (a2)
      {
        v8 = 0x32746565727473;
        if (v13 != 0x32746565727473)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    if (v13 != v8)
    {
LABEL_44:
      v20 = sub_1BE053B84();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v14 != v19)
  {
    goto LABEL_44;
  }

  v20 = 1;
LABEL_45:
  v14, a2, v8, a4, a5, a6, a7, a8;
  v19, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_1BD14CC1C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 0x6D6C6C6174736E69;
    }

    else
    {
      v10 = 0x73647261776572;
    }

    if (v9 == 2)
    {
      v11 = 0xEC00000073746E65;
    }

    else
    {
      v11 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v10 = 0x6C75466E49796170;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v11 = 0xE90000000000006CLL;
    }

    else
    {
      v11 = 0xE700000000000000;
    }
  }

  v12 = 0xE700000000000000;
  v13 = 0x6D6C6C6174736E69;
  v14 = 0xEC00000073746E65;
  if (a2 != 2)
  {
    v13 = 0x73647261776572;
    v14 = 0xE700000000000000;
  }

  if (a2)
  {
    v8 = 0x6C75466E49796170;
    v12 = 0xE90000000000006CLL;
  }

  if (a2 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v13;
  }

  if (a2 <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  if (v10 == v15 && v11 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1BE053B84();
  }

  v11, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_1BD14CD78(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = 0x656D69546C6C61;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0xE800000000000000;
  v12 = 0x726165597473616CLL;
  if (a1 != 6)
  {
    v12 = 0x6D6F74737563;
    v11 = 0xE600000000000000;
  }

  v13 = 0x746E6F4D7473616CLL;
  if (a1 == 4)
  {
    v14 = 0xE900000000000068;
  }

  else
  {
    v13 = 0x59746E6572727563;
    v14 = 0xEB00000000726165;
  }

  if (a1 <= 5u)
  {
    v12 = v13;
    v11 = v14;
  }

  v15 = 0x6164726574736579;
  v16 = 0xE900000000000079;
  if (a1 != 2)
  {
    v15 = 0x4D746E6572727563;
    v16 = 0xEC00000068746E6FLL;
  }

  v17 = 0x7961646F74;
  if (a1)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v17 = 0x656D69546C6C61;
  }

  if (a1 > 1u)
  {
    v10 = v16;
  }

  else
  {
    v15 = v17;
  }

  if (a1 <= 3u)
  {
    v18 = v15;
  }

  else
  {
    v18 = v12;
  }

  if (v9 <= 3)
  {
    v19 = v10;
  }

  else
  {
    v19 = v11;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v20 = 0xE800000000000000;
        v8 = 0x726165597473616CLL;
        if (v18 != 0x726165597473616CLL)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v20 = 0xE600000000000000;
        v8 = 0x6D6F74737563;
        if (v18 != 0x6D6F74737563)
        {
LABEL_46:
          v21 = sub_1BE053B84();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v8 = 0x746E6F4D7473616CLL;
      v20 = 0xE900000000000068;
      if (v18 != 0x746E6F4D7473616CLL)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v8 = 0x59746E6572727563;
      v20 = 0xEB00000000726165;
      if (v18 != 0x59746E6572727563)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v8 = 0x6164726574736579;
      v20 = 0xE900000000000079;
      if (v18 != 0x6164726574736579)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v8 = 0x4D746E6572727563;
      v20 = 0xEC00000068746E6FLL;
      if (v18 != 0x4D746E6572727563)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2)
  {
    v20 = 0xE500000000000000;
    v8 = 0x7961646F74;
    if (v18 != 0x7961646F74)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v20 = 0xE700000000000000;
    if (v18 != 0x656D69546C6C61)
    {
      goto LABEL_46;
    }
  }

  if (v19 != v20)
  {
    goto LABEL_46;
  }

  v21 = 1;
LABEL_47:
  v19, a2, v8, a4, a5, a6, a7, a8;
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

uint64_t sub_1BD14D018(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 1)
  {
    if (a2 <= 1)
    {
      goto LABEL_10;
    }

LABEL_6:
    v8 = a1;
    v9 = a2;
    if (a4 <= 1)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (a4 != 2 && a4 != 3)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (a2 != 2 && a2 != 3)
  {
    goto LABEL_6;
  }

LABEL_10:
  v8 = sub_1BE052434();
  v9 = v10;
  if (a4 > 1)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (a4 >= 2)
  {
LABEL_12:
    v11 = a3;
    v12 = a4;
    goto LABEL_14;
  }

LABEL_13:
  v11 = sub_1BE052434();
  v12 = v13;
LABEL_14:
  if (v8 == v11 && v9 == v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1BE053B84();
  }

  sub_1BD14ED40(a1, a2);
  sub_1BD14ED40(a3, a4);
  v9, v16, v17, v18, v19, v20, v21, v22;
  v12, v23, v24, v25, v26, v27, v28, v29;
  return v15 & 1;
}

uint64_t sub_1BD14D190(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = 0x636972656E6567;
  v9 = a1;
  if (a1 > 3u)
  {
    v16 = 0x80000001BE117300;
    v17 = 0xD000000000000019;
    if (a1 != 6)
    {
      v17 = 0x797469746E656469;
      v16 = 0xE800000000000000;
    }

    v18 = 0x614365676E616863;
    v19 = 0xEA00000000006472;
    if (a1 != 4)
    {
      v18 = 0xD000000000000010;
      v19 = 0x80000001BE1172E0;
    }

    if (a1 <= 5u)
    {
      v14 = v18;
    }

    else
    {
      v14 = v17;
    }

    if (v9 <= 5)
    {
      v15 = v19;
    }

    else
    {
      v15 = v16;
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    v11 = 0x80000001BE117290;
    v12 = 0xD00000000000001CLL;
    if (a1 == 2)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v11 = 0x80000001BE1172B0;
    }

    v13 = 0xD000000000000013;
    if (a1)
    {
      v10 = 0x80000001BE117270;
    }

    else
    {
      v13 = 0x636972656E6567;
    }

    if (a1 <= 1u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v9 <= 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v11;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v20 = 0x80000001BE117300;
        v8 = 0xD000000000000019;
        if (v14 != 0xD000000000000019)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v20 = 0xE800000000000000;
        v8 = 0x797469746E656469;
        if (v14 != 0x797469746E656469)
        {
LABEL_48:
          v21 = sub_1BE053B84();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v8 = 0x614365676E616863;
      v20 = 0xEA00000000006472;
      if (v14 != 0x614365676E616863)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v20 = 0x80000001BE1172E0;
      v8 = 0xD000000000000010;
      if (v14 != 0xD000000000000010)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v20 = 0x80000001BE117290;
      v8 = 0xD000000000000011;
      if (v14 != 0xD000000000000011)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v20 = 0x80000001BE1172B0;
      v8 = 0xD00000000000001CLL;
      if (v14 != 0xD00000000000001CLL)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2)
  {
    v20 = 0x80000001BE117270;
    v8 = 0xD000000000000013;
    if (v14 != 0xD000000000000013)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v20 = 0xE700000000000000;
    if (v14 != 0x636972656E6567)
    {
      goto LABEL_48;
    }
  }

  if (v15 != v20)
  {
    goto LABEL_48;
  }

  v21 = 1;
LABEL_49:
  v15, a2, v8, a4, a5, a6, a7, a8;
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

uint64_t sub_1BD14D414(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = 1701602409;
  v9 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v11 = 0x676E6964616572;
    }

    else
    {
      v11 = 1701602409;
    }

    if (v9)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v11 = 0x69737365636F7270;
    v10 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v10 = 0xE700000000000000;
    v11 = 0x64656E6E616373;
  }

  else
  {
    v10 = 0xE800000000000000;
    v11 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    v12 = 0xE400000000000000;
    v13 = 0xE700000000000000;
    v14 = 0x676E6964616572;
    v15 = a2 == 0;
  }

  else
  {
    v8 = 0x69737365636F7270;
    v12 = 0xEA0000000000676ELL;
    v13 = 0xE700000000000000;
    v14 = 0x64656E6E616373;
    if (a2 != 3)
    {
      v14 = 0x64656873696E6966;
      v13 = 0xE800000000000000;
    }

    v15 = a2 == 2;
  }

  if (v15)
  {
    v16 = v8;
  }

  else
  {
    v16 = v14;
  }

  if (v15)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  if (v11 == v16 && v10 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1BE053B84();
  }

  v10, a2, v16, a4, a5, a6, a7, a8;
  v17, v19, v20, v21, v22, v23, v24, v25;
  return v18 & 1;
}

uint64_t ProvisioningCardReaderAnimationView.AnimationState.EducationState.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

char *ProvisioningCardReaderAnimationView.init(state:)(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *a1;
  v6 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state;
  v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state] = 7;
  v7 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer] = 0;
  v8 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
  v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion] = 0;
  v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_hapticsEnabled] = 1;
  v9 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderCardView());
  v10 = sub_1BD786C24(0);
  if (v10)
  {
    *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView] = v10;
    v11 = v10;
    v12 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderPhoneAnimationView());
    v13 = v11;
    *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_phoneView] = sub_1BD84D6A8(2);
    v2[v6] = 7;
    v23.receiver = v2;
    v23.super_class = ObjectType;
    v22 = v5;
    v14 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    ProvisioningCardReaderAnimationView.set(state:animated:)(&v22, 0, v15, v16, v17, v18, v19, v20);
    [v14 addSubview_];
    [v14 addSubview_];
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

void ProvisioningCardReaderAnimationView.set(state:animated:)(unsigned __int8 *a1, char a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = v8;
  v11 = *a1;
  v12 = *(v8 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state);
  if (v11 == 7)
  {
    if (v12 == 7)
    {
      return;
    }

    v13 = 7;
LABEL_4:
    *(v8 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = v13;
    v14 = *(v8 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
LABEL_19:
    v15 = 1;
    goto LABEL_20;
  }

  if (v12 == 7)
  {
LABEL_6:
    v15 = 0;
    *(v8 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = v11;
    v14 = *(v8 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
    if (v11 <= 3)
    {
      if (v11 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v11 == 4)
    {
      goto LABEL_20;
    }

    if (v11 != 5)
    {
      if (v11 != 6)
      {
        goto LABEL_19;
      }

LABEL_17:
      v15 = 4;
      goto LABEL_20;
    }

    goto LABEL_60;
  }

  if (*a1 <= 3u)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        if (v12 == 3)
        {
          return;
        }

        v13 = 3;
        goto LABEL_4;
      }

LABEL_63:
      if ((v12 - 2) >= 5 && ((v12 ^ v11) & 1) == 0)
      {
        return;
      }

      goto LABEL_6;
    }

    if (v12 == 2)
    {
      return;
    }
  }

  else
  {
    if (v11 != 4)
    {
      if (v11 == 5)
      {
        if (v12 == 5)
        {
          return;
        }

        *(v8 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = 5;
        v14 = *(v8 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
LABEL_60:
        v15 = 3;
        goto LABEL_20;
      }

      if (v11 == 6)
      {
        if (v12 == 6)
        {
          return;
        }

        *(v8 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = 6;
        v14 = *(v8 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
        goto LABEL_17;
      }

      goto LABEL_63;
    }

    if (v12 == 4)
    {
      return;
    }
  }

  v15 = 0;
  *(v8 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = v11;
  v14 = *(v8 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
LABEL_20:
  if ((sub_1BD14D414(*(v14 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state), v15, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    sub_1BD788BA4(v15, 0, 0);
  }

  if ((v11 - 2) >= 5)
  {
    sub_1BD84CE98((v11 & 1) == 0, (a2 & 1), 0, 0, v16, v17, v18, v19);
    sub_1BD14E264();
    if (v12 <= 4)
    {
      goto LABEL_32;
    }

LABEL_26:
    switch(v12)
    {
      case 5:
        if (v11 == 5)
        {
          return;
        }

        goto LABEL_51;
      case 6:
        if (v11 == 6)
        {
          return;
        }

        goto LABEL_51;
      case 7:
        return;
    }

    goto LABEL_45;
  }

  sub_1BD84CE98(0x202030003uLL >> (8 * ((v11 - 2) & 0x1Fu)), (a2 & 1), 0, 0, v16, v17, v18, v19);
  v20 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer;
  v21 = *(v9 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer);
  if (v21)
  {
    [v21 invalidate];
    v22 = *(v9 + v20);
  }

  else
  {
    v22 = 0;
  }

  *(v9 + v20) = 0;

  if (v12 > 4)
  {
    goto LABEL_26;
  }

LABEL_32:
  if (v12 == 2)
  {
    if (v11 == 2)
    {
      return;
    }

    goto LABEL_51;
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      if (v11 == 4)
      {
        return;
      }

      goto LABEL_51;
    }

LABEL_45:
    if ((v11 - 2) >= 5u && ((v12 ^ v11) & 1) == 0)
    {
      return;
    }

    goto LABEL_51;
  }

  if (v11 == 3)
  {
    return;
  }

LABEL_51:
  if (*(v9 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_hapticsEnabled) == 1 && (v11 - 4) <= 2)
  {
    v23 = dword_1BE0BA54C[(v11 - 4)];

    AudioServicesPlaySystemSound(v23);
  }
}

Swift::Void __swiftcall ProvisioningCardReaderAnimationView.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView];
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = PKContentAlignmentMake();
  v13.n128_u64[0] = v2;
  v14.n128_u64[0] = v2;
  v15.n128_u64[0] = v5;
  v16.n128_u64[0] = v7;
  v17.n128_u64[0] = v9;
  v18.n128_u64[0] = v11;
  PKSizeAlignedInRect(v12, v13, v14, v15, v16, v17, v18, v19);
  [v3 setFrame_];
  v20 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_phoneView];
  [v0 bounds];
  [v20 setFrame_];
}

CGSize __swiftcall ProvisioningCardReaderAnimationView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v2 = 0x4000F5C28F5C28F6;
  *&v3 = a1.width * 0.85 * 2.12;
  PKFloatRoundToPixel(__PAIR128__(v4, v3), __PAIR128__(v5, v2));
  v7 = v6;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

Swift::Void __swiftcall ProvisioningCardReaderAnimationView.setCardImage(_:)(UIImage_optional a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
  v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage);
  *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage) = a1.value.super.isa;
  v3 = a1.value.super.isa;
}

Swift::Void __swiftcall ProvisioningCardReaderAnimationView.updateMotionMonitoring(shouldMonitor:)(Swift::Bool shouldMonitor)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) != shouldMonitor)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) = shouldMonitor;
    v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager);
    if (shouldMonitor)
    {
      v3 = [objc_opt_self() mainQueue];
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14[4] = sub_1BD14E904;
      v15 = v4;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1107296256;
      v14[2] = sub_1BD14E1D8;
      v14[3] = &block_descriptor_9;
      v5 = _Block_copy(v14);
      v15, v6, v7, v8, v9, v10, v11, v12;
      [v2 startDeviceMotionUpdatesToQueue:v3 withHandler:v5];
      _Block_release(v5);
    }

    else
    {
      v13 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager);

      [v13 stopDeviceMotionUpdates];
    }
  }
}

void sub_1BD14DEDC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = [a1 attitude];
      if (v6)
      {
        v7 = v6;
        [v6 quaternion];
        sub_1BD14DF6C(v8, v9, v10, v11);

        v5 = v7;
      }
    }
  }
}

void sub_1BD14DF6C(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a3.f64[1] = a4;
  v5 = -a1.f64[0];
  a1.f64[1] = a2;
  v6 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(a1), a3), xmmword_1BE0BA420);
  v7 = vnegq_f32(v6);
  v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
  v9 = vrev64q_s32(v6);
  v9.i32[0] = v7.i32[1];
  v9.i32[3] = v7.i32[2];
  v10 = -a2;
  v11 = *(v4 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
  v12 = MEMORY[0x1BFB3FCF0](vaddq_f32(vmlaq_f32(vmulq_f32(v6, vdupq_n_s32(0x3F74C5EFu)), 0, v9), vmlaq_f32(vmulq_f32(vextq_s8(v6, v7, 8uLL), 0), vdupq_n_s32(0x3E95F619u), vextq_s8(v8, v8, 8uLL))));
  v16 = [objc_opt_self() valueWithVFXMatrix4_];
  v26[3] = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
  v26[0] = v16;
  sub_1BD787F88(3, v26);
  sub_1BD14EC0C(v26);
  v17 = &v11[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_rotation];
  *v17 = v10;
  v17[1] = v5;
  if (v11[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state] <= 2u)
  {
    [v11 setNeedsLayout];
    [v11 layoutIfNeeded];
  }

  v18 = *(*(*(v4 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_phoneView) + OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_phoneView) + OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317CombinedPhoneView_overlayPhoneViews);
  if (v18 >> 62)
  {
    v19 = sub_1BE053704();
    if (!v19)
    {
      return;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      return;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1BFB40900](i, v18);
      }

      else
      {
        v21 = *(v18 + 8 * i + 32);
      }

      v22 = v21;
      type metadata accessor for ProvisioningCardReaderPhoneAnimationView.PhoneGradientView();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = &v23[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_rotation];
        *v24 = v10;
        v24[1] = v5;
        v25 = v23;
        [v23 setNeedsLayout];
        [v25 layoutIfNeeded];
      }
    }
  }
}

void sub_1BD14E1D8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1BE048964();
  v15 = a2;
  v7 = a3;
  v6(a2, a3);
  v5, v8, v9, v10, v11, v12, v13, v14;
}

void sub_1BD14E264()
{
  v1 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer;
  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer))
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14[4] = sub_1BD14EC74;
    v15 = v3;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1BD198918;
    v14[3] = &block_descriptor_15;
    v4 = _Block_copy(v14);
    v15, v5, v6, v7, v8, v9, v10, v11;
    v12 = [v2 scheduledTimerWithTimeInterval:1 repeats:v4 block:3.0];
    _Block_release(v4);
    v13 = *(v0 + v1);
    *(v0 + v1) = v12;
  }
}

uint64_t sub_1BD14E37C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1BD14EC7C;
  v24 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_19;
  v13 = _Block_copy(aBlock);
  v24, v14, v15, v16, v17, v18, v19, v20;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1BD14E638(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer;
    v4 = *(Strong + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer);
    if (v4)
    {
      v5 = v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state];
      if ((v5 - 2) < 6)
      {
        [v4 invalidate];
        v6 = *&v2[v3];
        *&v2[v3] = 0;

        return;
      }

      v7 = (v5 & 1) == 0;
      ProvisioningCardReaderAnimationView.set(state:animated:)(&v7, 1);
    }
  }
}

id ProvisioningCardReaderAnimationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ProvisioningCardReaderAnimationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s9PassKitUI35ProvisioningCardReaderAnimationViewC0G5StateO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      return v3 == 2;
    }

    if (v2 == 3)
    {
      return v3 == 3;
    }
  }

  else
  {
    switch(v2)
    {
      case 4u:
        return v3 == 4;
      case 5u:
        return v3 == 5;
      case 6u:
        return v3 == 6;
    }
  }

  if ((v3 - 2) < 5)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

unint64_t sub_1BD14E910()
{
  result = qword_1EBD3A3C0;
  if (!qword_1EBD3A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A3C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProvisioningCardReaderAnimationView.AnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 6)
  {
    return v8 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProvisioningCardReaderAnimationView.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BD14EB0C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BD14EB20(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1BD14EB50()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = 7;
  *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer) = 0;
  v1 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
  *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_hapticsEnabled) = 1;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD14EC0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90, &unk_1BE0BC6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD14EC84()
{
  result = qword_1EBD366B0;
  if (!qword_1EBD366B0)
  {
    sub_1BE051F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD366B0);
  }

  return result;
}

unint64_t sub_1BD14ECDC()
{
  result = qword_1EBD35F20;
  if (!qword_1EBD35F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35F20);
  }

  return result;
}

uint64_t sub_1BD14ED40(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    return sub_1BE048C84();
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferRewardsIntentSummaryView(uint64_t a1)
{
  result = qword_1EBD3A3C8;
  if (!qword_1EBD3A3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD14EDD8(uint64_t a1)
{
  result = sub_1BD14EE5C();
  if (v2 <= 0x3F)
  {
    result = _s11TotalAmountVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BD14EE5C()
{
  result = qword_1EBD3A3D8;
  if (!qword_1EBD3A3D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3A3D8);
  }

  return result;
}

id sub_1BD14EEC4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v93 = v2;
  v94 = v1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v83 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A3E0, &qword_1BE0BA5D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v83 - v10;
  KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A3E8, &qword_1BE0BA5E0);
  MEMORY[0x1EEE9AC00](KeyPath);
  v92 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v91 = &v83 - v18;
  v19 = *(v4 + 104);
  LODWORD(v87) = *MEMORY[0x1E69B8088];
  v88 = v4 + 104;
  v86 = v19;
  v19(v8, v17);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v22 = sub_1BE04B6F4();
    v24 = v23;

    v84 = *(v4 + 8);
    v85 = v3;
    v84(v8, v3);
    v103[0] = v22;
    v103[1] = v24;
    v25 = sub_1BD0DDEBC();
    v26 = MEMORY[0x1E69E6158];
    *v11 = sub_1BE0506C4();
    *(v11 + 1) = v27;
    v11[16] = v28 & 1;
    *(v11 + 3) = v29;
    v30 = &v11[v9[21]];
    *v30 = swift_getKeyPath();
    v30[8] = 0;
    v31 = &v11[v9[22]];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    v32 = &v11[v9[18]];
    *v32 = sub_1BE04F7C4();
    *(v32 + 1) = 0;
    v32[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A3F0, &qword_1BE0BA648);
    v33 = v94;
    sub_1BD14F6BC(v94);
    v34 = &v11[v9[19]];
    *v34 = 0x4020000000000000;
    v34[8] = 0;
    v11[v9[20]] = 1;
    LOBYTE(v32) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_1BD0DE204(v11, v15, &qword_1EBD3A3E0, &qword_1BE0BA5D8);
    v43 = v91;
    v44 = &v15[*(KeyPath + 36)];
    *v44 = v32;
    *(v44 + 1) = v36;
    *(v44 + 2) = v38;
    *(v44 + 3) = v40;
    *(v44 + 4) = v42;
    v44[40] = 0;
    sub_1BD0DE204(v15, v43, &qword_1EBD3A3E8, &qword_1BE0BA5E0);
    v45 = *v33;
    v46 = [*v33 monetaryValue];
    if (v46 && (v47 = v46, v48 = [v46 formattedStringValue], v47, v48))
    {

      v83 = "REWARDS_DETAILS_SUMMARY_HEADER";
      v49 = v26;
      v50 = v89;
      KeyPath = v25;
      v51 = v85;
      v86(v89, v87, v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1BE0B69E0;
      v53 = [v45 programName];
      v54 = sub_1BE052434();
      v56 = v55;

      *(v52 + 56) = v49;
      *(v52 + 64) = sub_1BD110550();
      *(v52 + 32) = v54;
      *(v52 + 40) = v56;
      v57 = sub_1BE04B714();
      v59 = v58;
      v52, v58, v60, v61, v62, v63, v64, v65;
      v84(v50, v51);
      v103[0] = v57;
      v103[1] = v59;
      v66 = sub_1BE0506C4();
      v87 = v67;
      v88 = v66;
      v69 = v68;
      v99 = v70 & 1;
      KeyPath = swift_getKeyPath();
      v98 = 0;
      v89 = swift_getKeyPath();
      v97 = 0;
      v71 = sub_1BE04F7C4();
      v96 = 0;
      sub_1BD1518F4(v94);
      memcpy(v100, v103, 0x551uLL);
      memcpy(v101, v103, 0x551uLL);
      sub_1BD0DE19C(v100, v102, &qword_1EBD3A408, &qword_1BE0BA668);
      sub_1BD0DE53C(v101, &qword_1EBD3A408, &qword_1BE0BA668);
      memcpy(&v95[7], v100, 0x551uLL);
      LOBYTE(v59) = v96;
      LOBYTE(v102[0]) = 0;
      LOBYTE(v57) = v99;
      LOBYTE(v56) = v98;
      LOBYTE(v51) = v97;
      LOBYTE(v52) = sub_1BE0501F4();
      sub_1BE04E1F4();
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v79 = v78;
      LOBYTE(v103[0]) = 0;
      v102[0] = v88;
      v102[1] = v87;
      LOBYTE(v102[2]) = v57;
      v102[3] = v69;
      v102[4] = v71;
      v102[5] = 0;
      LOBYTE(v102[6]) = v59;
      memcpy(&v102[6] + 1, v95, 0x558uLL);
      v102[178] = 0x4020000000000000;
      LOWORD(v102[179]) = 256;
      v102[180] = KeyPath;
      LOBYTE(v102[181]) = v56;
      v102[182] = v89;
      LOBYTE(v102[183]) = v51;
      LOBYTE(v102[184]) = v52;
      v102[185] = v73;
      v102[186] = v75;
      v102[187] = v77;
      v102[188] = v79;
      LOBYTE(v102[189]) = 0;
      PKEdgeInsetsMake();
      memcpy(v103, v102, 0x5E9uLL);
    }

    else
    {
      sub_1BD154B18(v103);
    }

    v80 = v92;
    sub_1BD0DE19C(v43, v92, &qword_1EBD3A3E8, &qword_1BE0BA5E0);
    memcpy(v100, v103, 0x5E9uLL);
    v81 = v93;
    sub_1BD0DE19C(v80, v93, &qword_1EBD3A3E8, &qword_1BE0BA5E0);
    v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A3F8, &qword_1BE0BA650) + 48);
    memcpy(v101, v100, 0x5E9uLL);
    sub_1BD0DE19C(v101, v102, &qword_1EBD3A400, &unk_1BE0BA658);
    sub_1BD0DE53C(v43, &qword_1EBD3A3E8, &qword_1BE0BA5E0);
    memcpy((v81 + v82), v101, 0x5E9uLL);
    memcpy(v102, v100, 0x5E9uLL);
    sub_1BD0DE53C(v102, &qword_1EBD3A400, &unk_1BE0BA658);
    return sub_1BD0DE53C(v80, &qword_1EBD3A3E8, &qword_1BE0BA5E0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD14F6BC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v682 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A428, &qword_1BE0BA6F8);
  v678 = *(v4 - 8);
  v679 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v671 = &v662 - v5;
  v6 = sub_1BE04BD74();
  v674 = *(v6 - 8);
  v675 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v673 = &v662 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v672 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700);
  MEMORY[0x1EEE9AC00](v672);
  v670 = &v662 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v662 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A430, &qword_1BE0BA708);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v681 = &v662 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v662 - v16;
  v18 = *v2;
  v19 = [*v2 programName];
  v20 = sub_1BE052434();
  v697 = v21;

  v22 = [v18 rewardsType];
  v680 = v17;
  v676 = v11;
  v690 = v18;
  if (v22 == 1 || v22 == 2)
  {
    v691 = sub_1BD1546B0();
    v696 = v27;
  }

  else if (v22 == 3 && (v23 = [v18 monetaryValue]) != 0 && (v24 = v23, v25 = objc_msgSend(v23, sel_formattedStringValue), v24, v25))
  {
    v691 = sub_1BE052434();
    v696 = v26;
  }

  else
  {
    v691 = 0;
    v696 = 0;
  }

  v28 = sub_1BE051464();
  v695 = sub_1BE051494();
  v699 = sub_1BE050324();
  v677 = sub_1BE050194();
  v689 = sub_1BE04F504();
  v941 = 1;
  v686 = v20;
  *v825 = v20;
  *&v825[8] = v697;
  v29 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v698 = v29;
  v30 = sub_1BE0506C4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v694 = v28;
  v37 = sub_1BE050564();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_1BD0DDF10(v30, v32, (v34 & 1), v42, v44, v45, v46, v47);
  v36, v48, v49, v50, v51, v52, v53, v54;
  v55 = sub_1BE0505E4();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  sub_1BD0DDF10(v37, v39, (v41 & 1), v60, v62, v63, v64, v65);
  v43, v66, v67, v68, v69, v70, v71, v72;
  v73 = sub_1BE0505F4();
  v692 = v74;
  v693 = v73;
  LOBYTE(v39) = v75;
  v687 = v76;
  sub_1BD0DDF10(v55, v57, (v59 & 1), v76, v77, v78, v79, v80);
  v61, v81, v82, v83, v84, v85, v86, v87;
  KeyPath = swift_getKeyPath();
  v684 = swift_getKeyPath();
  LODWORD(v683) = v39 & 1;
  v825[0] = v39 & 1;
  LOBYTE(v824[0]) = 1;
  v88 = v696;
  if (v696)
  {
    *v825 = v691;
    *&v825[8] = v696;
    sub_1BE048C84();
    v89 = sub_1BE0506C4();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = sub_1BE050564();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    sub_1BD0DDF10(v89, v91, (v93 & 1), v101, v103, v104, v105, v106);
    v95, v107, v108, v109, v110, v111, v112, v113;
    v114 = sub_1BE0505E4();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    sub_1BD0DDF10(v96, v98, (v100 & 1), v119, v121, v122, v123, v124);
    v102, v125, v126, v127, v128, v129, v130, v131;
    v132 = sub_1BE0505F4();
    v134 = v133;
    LOBYTE(v102) = v135;
    v137 = v136;
    sub_1BD0DDF10(v114, v116, (v118 & 1), v136, v138, v139, v140, v141);
    v120, v142, v143, v144, v145, v146, v147, v148;
    v149 = swift_getKeyPath();
    v88 = swift_getKeyPath();
    v150 = v134;
    v151 = v132;
    v825[0] = v102 & 1;
    LOBYTE(v824[0]) = 1;
    v152 = v102 & 1;
    v153 = 1;
  }

  else
  {
    v151 = 0;
    v150 = 0;
    v137 = 0;
    v149 = 0;
    v153 = 0;
    v152 = 0;
  }

  *&v908 = v693;
  *(&v908 + 1) = v692;
  v154 = v683;
  LOBYTE(v909) = v683;
  *(&v909 + 1) = *v939;
  DWORD1(v909) = *&v939[3];
  v155 = v687;
  *(&v909 + 1) = v687;
  v156 = v684;
  v157 = KeyPath;
  *&v910 = KeyPath;
  BYTE8(v910) = 0;
  HIDWORD(v910) = *&v938[3];
  *(&v910 + 9) = *v938;
  v911 = v684;
  v912 = 0;
  v913 = 1;
  LOBYTE(v925) = 1;
  v923 = v910;
  v924 = v684;
  v922 = v909;
  v921 = v908;
  v907 = 1;
  *&v914 = v151;
  *(&v914 + 1) = v150;
  *&v915 = v152;
  *(&v915 + 1) = v137;
  v916 = v149;
  v917 = 0;
  v918 = v88;
  v919 = 0;
  v920 = v153;
  *&v906[7] = v914;
  v906[71] = v153;
  *&v906[55] = v88;
  *&v906[39] = v149;
  *&v906[23] = v915;
  LODWORD(v688) = 1;
  v926[0] = v151;
  v926[1] = v150;
  v926[2] = v152;
  v926[3] = v137;
  v926[4] = v149;
  v926[5] = 0;
  v926[6] = v88;
  v926[7] = 0;
  v927 = v153;
  sub_1BD0DE19C(&v908, v825, &qword_1EBD39160, &unk_1BE0BA6E0);
  sub_1BD0DE19C(&v914, v825, &qword_1EBD39160, &unk_1BE0BA6E0);
  sub_1BD0DE53C(v926, &qword_1EBD39160, &unk_1BE0BA6E0);
  v928[0] = v693;
  v928[1] = v692;
  v929 = v154;
  *v930 = *v939;
  *&v930[3] = *&v939[3];
  v931 = v155;
  v932 = v157;
  v933 = 0;
  *v934 = *v938;
  *&v934[3] = *&v938[3];
  v935 = v156;
  v936 = 0;
  v937 = 1;
  sub_1BD0DE53C(v928, &qword_1EBD39160, &unk_1BE0BA6E0);
  *&v940[39] = v923;
  *&v940[55] = v924;
  *&v940[71] = v925;
  *&v940[7] = v921;
  *&v940[23] = v922;
  LODWORD(v692) = v941;
  v687 = sub_1BE04F7C4();
  v905 = 1;
  *v825 = v686;
  *&v825[8] = v697;
  sub_1BE048C84();
  v158 = sub_1BE0506C4();
  v160 = v159;
  LOBYTE(v156) = v161;
  v163 = v162;
  v164 = sub_1BE050564();
  v166 = v165;
  LOBYTE(v157) = v167;
  v169 = v168;
  sub_1BD0DDF10(v158, v160, (v156 & 1), v168, v170, v171, v172, v173);
  v163, v174, v175, v176, v177, v178, v179, v180;
  v181 = sub_1BE0505E4();
  v183 = v182;
  LOBYTE(v158) = v184;
  v186 = v185;
  sub_1BD0DDF10(v164, v166, (v157 & 1), v185, v187, v188, v189, v190);
  v169, v191, v192, v193, v194, v195, v196, v197;
  v198 = sub_1BE0505F4();
  v693 = v199;
  LOBYTE(v166) = v200;
  v686 = v201;
  sub_1BD0DDF10(v181, v183, (v158 & 1), v201, v202, v203, v204, v205);
  v186, v206, v207, v208, v209, v210, v211, v212;
  KeyPath = swift_getKeyPath();
  v684 = swift_getKeyPath();
  LODWORD(v683) = v166 & 1;
  v825[0] = v166 & 1;
  LOBYTE(v824[0]) = 1;
  v213 = v696;
  if (v696)
  {
    *v825 = v691;
    *&v825[8] = v696;
    sub_1BE048C84();
    v214 = sub_1BE0506C4();
    v216 = v215;
    v218 = v217;
    v220 = v219;
    v221 = sub_1BE050564();
    v223 = v222;
    v691 = v198;
    v225 = v224;
    v227 = v226;
    sub_1BD0DDF10(v214, v216, (v218 & 1), v226, v228, v229, v230, v231);
    v220, v232, v233, v234, v235, v236, v237, v238;
    v239 = sub_1BE0505E4();
    v241 = v240;
    LOBYTE(v220) = v242;
    v244 = v243;
    sub_1BD0DDF10(v221, v223, (v225 & 1), v243, v245, v246, v247, v248);
    v227, v249, v250, v251, v252, v253, v254, v255;
    v256 = sub_1BE0505F4();
    v258 = v257;
    v260 = v259;
    v262 = v261;
    sub_1BD0DDF10(v239, v241, (v220 & 1), v261, v263, v264, v265, v266);
    v244, v267, v268, v269, v270, v271, v272, v273;
    v274 = swift_getKeyPath();
    v213 = swift_getKeyPath();
    v275 = v262;
    v276 = v258;
    v277 = v256;
    v278 = v260 & 1;
    v198 = v691;
    v825[0] = v278;
    v279 = 1;
    LOBYTE(v824[0]) = 1;
    v280 = v825[0];
  }

  else
  {
    v277 = 0;
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v279 = 0;
    v280 = 0;
  }

  v281 = v198;
  *&v848 = v198;
  *(&v848 + 1) = v693;
  v282 = v683;
  LOBYTE(v849) = v683;
  *(&v849 + 1) = *v903;
  DWORD1(v849) = *&v903[3];
  v310 = KeyPath;
  v283 = v686;
  *(&v849 + 1) = v686;
  *&v850 = KeyPath;
  BYTE8(v850) = 0;
  HIDWORD(v850) = *&v902[3];
  *(&v850 + 9) = *v902;
  v284 = v684;
  v851 = v684;
  v852 = 0;
  v853 = 1;
  LOBYTE(v847[0]) = 1;
  v846 = v684;
  v845 = v850;
  v843 = v848;
  v844 = v849;
  *&v854 = v277;
  *(&v854 + 1) = v276;
  *&v855 = v280;
  *(&v855 + 1) = v275;
  v856 = v274;
  v857 = 0;
  v858 = v213;
  v859 = 0;
  v860 = v279;
  *(v847 + 8) = v854;
  BYTE8(v847[4]) = v279;
  *(&v847[3] + 8) = v213;
  *(&v847[2] + 8) = v274;
  *(&v847[1] + 8) = v855;
  v861[0] = v277;
  v861[1] = v276;
  v861[2] = v280;
  v861[3] = v275;
  v861[4] = v274;
  v861[5] = 0;
  v861[6] = v213;
  v861[7] = 0;
  v862 = v279;
  sub_1BD0DE19C(&v848, v825, &qword_1EBD39160, &unk_1BE0BA6E0);
  sub_1BD0DE19C(&v854, v825, &qword_1EBD39160, &unk_1BE0BA6E0);
  sub_1BD0DE53C(v861, &qword_1EBD39160, &unk_1BE0BA6E0);
  v863[0] = v281;
  v863[1] = v693;
  v864 = v282;
  *v865 = *v903;
  *&v865[3] = *&v903[3];
  v866 = v283;
  v867 = v310;
  v868 = 0;
  *v869 = *v902;
  *&v869[3] = *&v902[3];
  v870 = v284;
  v871 = 0;
  v872 = 1;
  sub_1BD0DE53C(v863, &qword_1EBD39160, &unk_1BE0BA6E0);
  *(&v904[5] + 7) = v847[1];
  *(&v904[6] + 7) = v847[2];
  *(&v904[7] + 7) = v847[3];
  v904[8] = *(&v847[3] + 9);
  *(&v904[1] + 7) = v844;
  *(&v904[2] + 7) = v845;
  *(&v904[3] + 7) = v846;
  *(&v904[4] + 7) = v847[0];
  *(v904 + 7) = v843;
  v285 = v689;
  v873[0] = v689;
  v873[1] = 0;
  v286 = v692;
  LOBYTE(v874[0]) = v692;
  *(&v874[1] + 1) = *&v940[16];
  *(&v874[2] + 1) = *&v940[32];
  *(&v874[3] + 1) = *&v940[48];
  v874[4] = *&v940[63];
  *(v874 + 1) = *v940;
  *v875 = 0;
  LOBYTE(v281) = v688;
  v875[8] = v688;
  *&v875[9] = *v906;
  *&v875[41] = *&v906[32];
  *&v875[25] = *&v906[16];
  *&v875[57] = *&v906[48];
  *&v875[73] = *&v906[64];
  v842[4] = v874[3];
  v842[5] = *&v940[63];
  v842[0] = v689;
  v842[1] = v874[0];
  v842[2] = v874[1];
  v842[3] = v874[2];
  v842[8] = *&v875[32];
  v842[9] = *&v875[48];
  v842[10] = *&v875[64];
  v842[6] = *v875;
  v842[7] = *&v875[16];
  v876[0] = v687;
  v876[1] = 0;
  v877[0] = v905;
  *&v877[97] = v904[6];
  *&v877[81] = v904[5];
  *&v877[33] = v904[2];
  *&v877[17] = v904[1];
  *&v877[113] = v904[7];
  *&v877[129] = *(&v847[3] + 9);
  *&v877[49] = v904[3];
  *&v877[65] = v904[4];
  *&v877[1] = v904[0];
  *(&v842[18] + 8) = *&v877[96];
  *(&v842[19] + 8) = *&v877[112];
  *(&v842[20] + 8) = *&v877[128];
  *(&v842[16] + 8) = *&v877[64];
  *(&v842[17] + 8) = *&v877[80];
  *(&v842[14] + 8) = *&v877[32];
  *(&v842[15] + 8) = *&v877[48];
  *(&v842[11] + 8) = v687;
  *(&v842[12] + 8) = *v877;
  *(&v842[13] + 8) = *&v877[16];
  v885 = v904[5];
  v886 = v904[6];
  v887 = v904[7];
  v888 = *(&v847[3] + 9);
  v881 = v904[1];
  v882 = v904[2];
  LOBYTE(v842[11]) = v906[71];
  BYTE8(v842[21]) = BYTE8(v847[4]);
  v878[0] = v687;
  v878[1] = 0;
  v879 = v905;
  v883 = v904[3];
  v884 = v904[4];
  v880 = v904[0];
  sub_1BD0DE19C(v873, v825, &qword_1EBD391E8, &qword_1BE0B8258);
  sub_1BD0DE19C(v876, v825, &qword_1EBD3A420, &qword_1BE0BA6F0);
  sub_1BD0DE53C(v878, &qword_1EBD3A420, &qword_1BE0BA6F0);
  v889[0] = v285;
  v889[1] = 0;
  v890 = v286;
  v892 = *&v940[16];
  v893 = *&v940[32];
  *v894 = *&v940[48];
  *&v894[15] = *&v940[63];
  v891 = *v940;
  v895 = 0;
  v896 = v281;
  v897 = *v906;
  v901 = *&v906[64];
  v900 = *&v906[48];
  v899 = *&v906[32];
  v898 = *&v906[16];
  sub_1BD0DE53C(v889, &qword_1EBD391E8, &qword_1BE0B8258);
  v697, v287, v288, v289, v290, v291, v292, v293;
  v696, v294, v295, v296, v297, v298, v299, v300;
  memcpy(&v942[7], v842, 0x159uLL);
  LODWORD(v301) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v303 = v302;
  v305 = v304;
  v307 = v306;
  v309 = v308;
  v942[352] = 0;
  LODWORD(v310) = sub_1BE050234();
  sub_1BE04E1F4();
  v312 = v311;
  v314 = v313;
  v316 = v315;
  v318 = v317;
  v694, v319, v320, v321, v322, v323, v324, v325;
  v695, v326, v327, v328, v329, v330, v331, v332;
  v699, v333, v334, v335, v336, v337, v338, v339;
  v945 = 0;
  v340 = v690;
  v341 = [v690 rewardsBalance];
  v342 = [v341 isQuantitative];

  if (!v342 || (v343 = [v340 monetaryValue]) == 0 || (v344 = v343, v345 = objc_msgSend(v343, sel_formattedStringValue), v344, !v345))
  {
    v657 = v680;
    (*(v678 + 56))(v680, 1, 1, v679);
    goto LABEL_21;
  }

  v668 = v301;
  v669 = v309;
  v683 = v307;
  v684 = v305;
  KeyPath = v303;
  LODWORD(v686) = v310;
  v687 = v318;
  v688 = v316;
  v689 = v314;
  v690 = v312;
  v695 = sub_1BE052434();
  v697 = v346;

  v347 = v676;
  sub_1BE051984();
  v348 = sub_1BE050204();
  sub_1BE04E1F4();
  v349 = v673;
  v350 = v347 + *(v672 + 36);
  *v350 = v348;
  *(v350 + 8) = v351;
  *(v350 + 16) = v352;
  *(v350 + 24) = v353;
  *(v350 + 32) = v354;
  *(v350 + 40) = 0;
  v356 = v674;
  v355 = v675;
  (*(v674 + 104))(v349, *MEMORY[0x1E69B8088], v675);
  result = PKPassKitBundle();
  if (result)
  {
    v358 = result;
    v359 = sub_1BE04B6F4();
    v667 = v359;
    v361 = v360;

    (*(v356 + 8))(v349, v355);
    v694 = sub_1BE051464();
    v696 = sub_1BE051494();
    v699 = sub_1BE050324();
    LODWORD(v675) = sub_1BE050194();
    v674 = sub_1BE04F504();
    v719 = 1;
    *v825 = v359;
    v693 = v361;
    *&v825[8] = v361;
    sub_1BE048C84();
    v362 = sub_1BE0506C4();
    v364 = v363;
    v366 = v365;
    v368 = v367;
    v369 = sub_1BE050564();
    v371 = v370;
    LOBYTE(v361) = v372;
    v374 = v373;
    sub_1BD0DDF10(v362, v364, (v366 & 1), v373, v375, v376, v377, v378);
    v368, v379, v380, v381, v382, v383, v384, v385;
    v386 = sub_1BE0505E4();
    v388 = v387;
    LOBYTE(v368) = v389;
    v391 = v390;
    sub_1BD0DDF10(v369, v371, (v361 & 1), v390, v392, v393, v394, v395);
    v374, v396, v397, v398, v399, v400, v401, v402;
    v403 = sub_1BE0505F4();
    v665 = v404;
    v666 = v403;
    LOBYTE(v369) = v405;
    v672 = v406;
    sub_1BD0DDF10(v386, v388, (v368 & 1), v406, v407, v408, v409, v410);
    v391, v411, v412, v413, v414, v415, v416, v417;
    v664 = swift_getKeyPath();
    v692 = swift_getKeyPath();
    LODWORD(v691) = v369 & 1;
    LOBYTE(v824[0]) = 1;
    *v825 = v695;
    *&v825[8] = v697;
    sub_1BE048C84();
    v418 = sub_1BE0506C4();
    v420 = v419;
    LOBYTE(v371) = v421;
    v423 = v422;
    v424 = sub_1BE050564();
    v426 = v425;
    LOBYTE(v374) = v427;
    v429 = v428;
    sub_1BD0DDF10(v418, v420, (v371 & 1), v428, v430, v431, v432, v433);
    v423, v434, v435, v436, v437, v438, v439, v440;
    v441 = sub_1BE0505E4();
    v443 = v442;
    LOBYTE(v418) = v444;
    v446 = v445;
    sub_1BD0DDF10(v424, v426, (v374 & 1), v445, v447, v448, v449, v450);
    v429, v451, v452, v453, v454, v455, v456, v457;
    v458 = sub_1BE0505F4();
    v460 = v459;
    LOBYTE(v374) = v461;
    v463 = v462;
    sub_1BD0DDF10(v441, v443, (v418 & 1), v462, v464, v465, v466, v467);
    v446, v468, v469, v470, v471, v472, v473, v474;
    v475 = swift_getKeyPath();
    v476 = swift_getKeyPath();
    v477 = v374 & 1;
    v825[0] = v374 & 1;
    LOBYTE(v824[0]) = 1;
    v479 = v665;
    v478 = v666;
    *&v726 = v666;
    *(&v726 + 1) = v665;
    LOBYTE(v727) = v691;
    *(&v727 + 1) = *v717;
    DWORD1(v727) = *&v717[3];
    v480 = v672;
    *(&v727 + 1) = v672;
    v481 = v664;
    *&v728 = v664;
    BYTE8(v728) = 0;
    HIDWORD(v728) = *&v716[3];
    *(&v728 + 9) = *v716;
    v729 = v692;
    v730 = 0;
    v731 = 1;
    LOBYTE(v742) = 1;
    v741 = v692;
    v740 = v728;
    v738 = v726;
    v739 = v727;
    v713 = 1;
    *&v732 = v458;
    *(&v732 + 1) = v460;
    LOBYTE(v733) = v477;
    DWORD1(v733) = *(v715 + 3);
    *(&v733 + 1) = v715[0];
    *(&v733 + 1) = v463;
    *&v734 = v475;
    BYTE8(v734) = 0;
    HIDWORD(v734) = *&v714[3];
    *(&v734 + 9) = *v714;
    v735 = v476;
    v736 = 0;
    v737 = 1;
    *&v712[7] = v732;
    v712[71] = 1;
    *&v712[55] = v476;
    *&v712[39] = v734;
    *&v712[23] = v733;
    LODWORD(v673) = 1;
    v743[0] = v458;
    v743[1] = v460;
    v744 = v477;
    *&v745[3] = *(v715 + 3);
    *v745 = v715[0];
    v746 = v463;
    v747 = v475;
    v748 = 0;
    *&v749[3] = *&v714[3];
    *v749 = *v714;
    v750 = v476;
    v751 = 0;
    v752 = 1;
    sub_1BD0DE19C(&v726, v825, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE19C(&v732, v825, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE53C(v743, &qword_1EBD39160, &unk_1BE0BA6E0);
    v753[0] = v478;
    v753[1] = v479;
    v754 = v691;
    *v755 = *v717;
    *&v755[3] = *&v717[3];
    v756 = v480;
    v757 = v481;
    v758 = 0;
    *v759 = *v716;
    *&v759[3] = *&v716[3];
    v760 = v692;
    v761 = 0;
    v762 = 1;
    sub_1BD0DE53C(v753, &qword_1EBD39160, &unk_1BE0BA6E0);
    *(&v718[1] + 7) = v739;
    *(&v718[2] + 7) = v740;
    *(&v718[3] + 7) = v741;
    *(&v718[4] + 7) = v742;
    *(v718 + 7) = v738;
    LODWORD(v692) = v719;
    v672 = sub_1BE04F7C4();
    v711 = 1;
    *v825 = v667;
    *&v825[8] = v693;
    sub_1BE048C84();
    v482 = sub_1BE0506C4();
    v484 = v483;
    LOBYTE(v418) = v485;
    v487 = v486;
    v488 = sub_1BE050564();
    v490 = v489;
    LOBYTE(v475) = v491;
    v493 = v492;
    sub_1BD0DDF10(v482, v484, (v418 & 1), v492, v494, v495, v496, v497);
    v487, v498, v499, v500, v501, v502, v503, v504;
    v505 = sub_1BE0505E4();
    v507 = v506;
    LOBYTE(v479) = v508;
    v510 = v509;
    sub_1BD0DDF10(v488, v490, (v475 & 1), v509, v511, v512, v513, v514);
    v493, v515, v516, v517, v518, v519, v520, v521;
    v522 = sub_1BE0505F4();
    v665 = v523;
    v666 = v522;
    LOBYTE(v488) = v524;
    v667 = v525;
    sub_1BD0DDF10(v505, v507, (v479 & 1), v525, v526, v527, v528, v529);
    v510, v530, v531, v532, v533, v534, v535, v536;
    v663 = swift_getKeyPath();
    v664 = swift_getKeyPath();
    LODWORD(v691) = v488 & 1;
    LOBYTE(v824[0]) = 1;
    *v825 = v695;
    *&v825[8] = v697;
    sub_1BE048C84();
    v537 = sub_1BE0506C4();
    v539 = v538;
    LOBYTE(v488) = v540;
    v542 = v541;
    v543 = sub_1BE050564();
    v545 = v544;
    LOBYTE(v493) = v546;
    v548 = v547;
    sub_1BD0DDF10(v537, v539, (v488 & 1), v547, v549, v550, v551, v552);
    v542, v553, v554, v555, v556, v557, v558, v559;
    v560 = sub_1BE0505E4();
    v562 = v561;
    LOBYTE(v479) = v563;
    v565 = v564;
    sub_1BD0DDF10(v543, v545, (v493 & 1), v564, v566, v567, v568, v569);
    v548, v570, v571, v572, v573, v574, v575, v576;
    v577 = sub_1BE0505F4();
    v579 = v578;
    LOBYTE(v545) = v580;
    v582 = v581;
    sub_1BD0DDF10(v560, v562, (v479 & 1), v581, v583, v584, v585, v586);
    v565, v587, v588, v589, v590, v591, v592, v593;
    v594 = swift_getKeyPath();
    v595 = swift_getKeyPath();
    v596 = v545 & 1;
    v825[0] = v545 & 1;
    LOBYTE(v824[0]) = 1;
    v598 = v665;
    v597 = v666;
    *&v763 = v666;
    *(&v763 + 1) = v665;
    LOBYTE(v764) = v691;
    *(&v764 + 1) = *v709;
    DWORD1(v764) = *&v709[3];
    v599 = v667;
    *(&v764 + 1) = v667;
    v600 = v663;
    v310 = v664;
    *&v765 = v663;
    BYTE8(v765) = 0;
    HIDWORD(v765) = *&v708[3];
    *(&v765 + 9) = *v708;
    v766 = v664;
    v767 = 0;
    v768 = 1;
    LOBYTE(v705[0]) = 1;
    v703 = v765;
    v704 = v664;
    v701 = v763;
    v702 = v764;
    *&v769 = v577;
    *(&v769 + 1) = v579;
    LOBYTE(v770) = v596;
    DWORD1(v770) = *(v707 + 3);
    *(&v770 + 1) = v707[0];
    *(&v770 + 1) = v582;
    *&v771 = v594;
    BYTE8(v771) = 0;
    HIDWORD(v771) = *&v706[3];
    *(&v771 + 9) = *v706;
    v772 = v595;
    v773 = 0;
    v774 = 1;
    *(v705 + 8) = v769;
    BYTE8(v705[4]) = 1;
    *(&v705[3] + 8) = v595;
    *(&v705[2] + 8) = v771;
    *(&v705[1] + 8) = v770;
    v775[0] = v577;
    v775[1] = v579;
    v776 = v596;
    *&v777[3] = *(v707 + 3);
    *v777 = v707[0];
    v778 = v582;
    v779 = v594;
    v780 = 0;
    *&v781[3] = *&v706[3];
    *v781 = *v706;
    v782 = v595;
    v783 = 0;
    v784 = 1;
    sub_1BD0DE19C(&v763, v825, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE19C(&v769, v825, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE53C(v775, &qword_1EBD39160, &unk_1BE0BA6E0);
    v785[0] = v597;
    v785[1] = v598;
    v786 = v691;
    *v787 = *v709;
    *&v787[3] = *&v709[3];
    v788 = v599;
    v789 = v600;
    v790 = 0;
    *v791 = *v708;
    *&v791[3] = *&v708[3];
    v792 = v310;
    v793 = 0;
    v794 = 1;
    sub_1BD0DE53C(v785, &qword_1EBD39160, &unk_1BE0BA6E0);
    *(&v710[5] + 7) = v705[1];
    *(&v710[6] + 7) = v705[2];
    *(&v710[7] + 7) = v705[3];
    v710[8] = *(&v705[3] + 9);
    *(&v710[1] + 7) = v702;
    *(&v710[2] + 7) = v703;
    *(&v710[3] + 7) = v704;
    *(&v710[4] + 7) = v705[0];
    *(v710 + 7) = v701;
    v601 = v674;
    v795[0] = v674;
    v795[1] = 0;
    LOBYTE(v796[0]) = v692;
    *(&v796[1] + 1) = v718[1];
    *(&v796[2] + 1) = v718[2];
    *(&v796[3] + 1) = v718[3];
    v796[4] = *(&v718[3] + 15);
    *(v796 + 1) = v718[0];
    *v797 = 0;
    LOBYTE(v598) = v673;
    v797[8] = v673;
    *&v797[9] = *v712;
    *&v797[41] = *&v712[32];
    *&v797[25] = *&v712[16];
    *&v797[57] = *&v712[48];
    *&v797[73] = *&v712[64];
    v700[4] = v796[3];
    v700[5] = *(&v718[3] + 15);
    v700[0] = v674;
    v700[1] = v796[0];
    v700[2] = v796[1];
    v700[3] = v796[2];
    v700[8] = *&v797[32];
    v700[9] = *&v797[48];
    v700[10] = *&v797[64];
    v700[6] = *v797;
    v700[7] = *&v797[16];
    v798[0] = v672;
    v798[1] = 0;
    v799[0] = v711;
    *&v799[97] = v710[6];
    *&v799[81] = v710[5];
    *&v799[33] = v710[2];
    *&v799[17] = v710[1];
    *&v799[113] = v710[7];
    *&v799[129] = *(&v705[3] + 9);
    *&v799[49] = v710[3];
    *&v799[65] = v710[4];
    *&v799[1] = v710[0];
    *(&v700[18] + 8) = *&v799[96];
    *(&v700[19] + 8) = *&v799[112];
    *(&v700[20] + 8) = *&v799[128];
    *(&v700[16] + 8) = *&v799[64];
    *(&v700[17] + 8) = *&v799[80];
    *(&v700[14] + 8) = *&v799[32];
    *(&v700[15] + 8) = *&v799[48];
    *(&v700[11] + 8) = v672;
    *(&v700[12] + 8) = *v799;
    *(&v700[13] + 8) = *&v799[16];
    v807 = v710[5];
    v808 = v710[6];
    v809 = v710[7];
    v810 = *(&v705[3] + 9);
    v803 = v710[1];
    v804 = v710[2];
    LOBYTE(v700[11]) = v712[71];
    BYTE8(v700[21]) = BYTE8(v705[4]);
    v800[0] = v672;
    v800[1] = 0;
    v801 = v711;
    v805 = v710[3];
    v806 = v710[4];
    v802 = v710[0];
    sub_1BD0DE19C(v795, v825, &qword_1EBD391E8, &qword_1BE0B8258);
    sub_1BD0DE19C(v798, v825, &qword_1EBD3A420, &qword_1BE0BA6F0);
    sub_1BD0DE53C(v800, &qword_1EBD3A420, &qword_1BE0BA6F0);
    v811[0] = v601;
    v811[1] = 0;
    v812 = v692;
    v814 = v718[1];
    v815 = v718[2];
    *v816 = v718[3];
    *&v816[15] = *(&v718[3] + 15);
    v813 = v718[0];
    v817 = 0;
    v818 = v598;
    v819 = *v712;
    v823 = *&v712[64];
    v822 = *&v712[48];
    v821 = *&v712[32];
    v820 = *&v712[16];
    sub_1BD0DE53C(v811, &qword_1EBD391E8, &qword_1BE0B8258);
    v697, v602, v603, v604, v605, v606, v607, v608;
    v693, v609, v610, v611, v612, v613, v614, v615;
    memcpy(&v720[7], v700, 0x159uLL);
    v616 = sub_1BE0501C4();
    LOBYTE(v600) = v616;
    LODWORD(v698) = v616;
    sub_1BE04E1F4();
    v618 = v617;
    v620 = v619;
    v622 = v621;
    v624 = v623;
    v720[352] = 0;
    LOBYTE(v310) = sub_1BE050234();
    sub_1BE04E1F4();
    v626 = v625;
    v628 = v627;
    v630 = v629;
    v632 = v631;
    v694, v633, v634, v635, v636, v637, v638, v639;
    v696, v640, v641, v642, v643, v644, v645, v646;
    v699, v647, v648, v649, v650, v651, v652, v653;
    v723 = 0;
    v654 = v676;
    v655 = v670;
    sub_1BD0DE19C(v676, v670, &qword_1EBD390F8, &qword_1BE0BA700);
    v656 = v671;
    sub_1BD0DE19C(v655, v671, &qword_1EBD390F8, &qword_1BE0BA700);
    v301 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A440, &qword_1BE0BA718) + 48);
    LOBYTE(v582) = v675;
    LOBYTE(v824[0]) = v675;
    memcpy(v824 + 1, v720, 0x160uLL);
    *(&v824[44] + 1) = *v722;
    HIDWORD(v824[44]) = *&v722[3];
    LOBYTE(v824[45]) = v600;
    *(&v824[45] + 1) = *v721;
    HIDWORD(v824[45]) = *&v721[3];
    v824[46] = v618;
    v824[47] = v620;
    v824[48] = v622;
    v824[49] = v624;
    LOBYTE(v824[50]) = 0;
    *(&v824[50] + 1) = *v725;
    HIDWORD(v824[50]) = *&v725[3];
    LOBYTE(v824[51]) = v310;
    *(&v824[51] + 1) = *v724;
    HIDWORD(v824[51]) = *&v724[3];
    v824[52] = v626;
    v824[53] = v628;
    v824[54] = v630;
    v824[55] = v632;
    LOBYTE(v824[56]) = 0;
    memcpy((v656 + v301), v824, 0x1C1uLL);
    sub_1BD0DE19C(v824, v825, &qword_1EBD3A410, &qword_1BE0BA670);
    sub_1BD0DE53C(v654, &qword_1EBD390F8, &qword_1BE0BA700);
    v825[0] = v582;
    memcpy(&v825[1], v720, 0x160uLL);
    *v826 = *v722;
    *&v826[3] = *&v722[3];
    v827 = v698;
    *v828 = *v721;
    *&v828[3] = *&v721[3];
    v829 = v618;
    v830 = v620;
    v831 = v622;
    v832 = v624;
    v833 = 0;
    *v834 = *v725;
    *&v834[3] = *&v725[3];
    v835 = v310;
    *v836 = *v724;
    *&v836[3] = *&v724[3];
    v837 = v626;
    v838 = v628;
    v839 = v630;
    v840 = v632;
    v841 = 0;
    sub_1BD0DE53C(v825, &qword_1EBD3A410, &qword_1BE0BA670);
    sub_1BD0DE53C(v655, &qword_1EBD390F8, &qword_1BE0BA700);
    v657 = v680;
    sub_1BD0DE204(v656, v680, &qword_1EBD3A428, &qword_1BE0BA6F8);
    (*(v678 + 56))(v657, 0, 1, v679);
    v314 = v689;
    v312 = v690;
    v318 = v687;
    v316 = v688;
    LOBYTE(v310) = v686;
    v305 = v684;
    v303 = KeyPath;
    v307 = v683;
    v309 = v669;
    LOBYTE(v301) = v668;
LABEL_21:
    v658 = v681;
    sub_1BD0DE19C(v657, v681, &qword_1EBD3A430, &qword_1BE0BA708);
    v659 = v677;
    LOBYTE(v824[0]) = v677;
    memcpy(v824 + 1, v942, 0x160uLL);
    *(&v824[44] + 1) = *v944;
    HIDWORD(v824[44]) = *&v944[3];
    LOBYTE(v824[45]) = v301;
    *(&v824[45] + 1) = *v943;
    HIDWORD(v824[45]) = *&v943[3];
    v824[46] = v303;
    v824[47] = v305;
    v824[48] = v307;
    v824[49] = v309;
    LOBYTE(v824[50]) = 0;
    *(&v824[50] + 1) = v947[0];
    HIDWORD(v824[50]) = *(v947 + 3);
    LOBYTE(v824[51]) = v310;
    *(&v824[51] + 1) = *v946;
    HIDWORD(v824[51]) = *&v946[3];
    v824[52] = v312;
    v824[53] = v314;
    v824[54] = v316;
    v824[55] = v318;
    LOBYTE(v824[56]) = 0;
    v660 = v682;
    memcpy(v682, v824, 0x1C1uLL);
    v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A438, &qword_1BE0BA710);
    sub_1BD0DE19C(v658, v660 + *(v661 + 48), &qword_1EBD3A430, &qword_1BE0BA708);
    sub_1BD0DE19C(v824, v825, &qword_1EBD3A410, &qword_1BE0BA670);
    sub_1BD0DE53C(v657, &qword_1EBD3A430, &qword_1BE0BA708);
    sub_1BD0DE53C(v658, &qword_1EBD3A430, &qword_1BE0BA708);
    v825[0] = v659;
    memcpy(&v825[1], v942, 0x160uLL);
    *v826 = *v944;
    *&v826[3] = *&v944[3];
    v827 = v301;
    *v828 = *v943;
    *&v828[3] = *&v943[3];
    v829 = v303;
    v830 = v305;
    v831 = v307;
    v832 = v309;
    v833 = 0;
    *v834 = v947[0];
    *&v834[3] = *(v947 + 3);
    v835 = v310;
    *v836 = *v946;
    *&v836[3] = *&v946[3];
    v837 = v312;
    v838 = v314;
    v839 = v316;
    v840 = v318;
    v841 = 0;
    return sub_1BD0DE53C(v825, &qword_1EBD3A410, &qword_1BE0BA670);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1518F4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  sub_1BD151AE8(__src);
  sub_1BD15298C(v8);
  sub_1BD153828(v9);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v5, v8, sizeof(v5));
  memcpy(v13, v9, 0x1C1uLL);
  memcpy(v10, __src, 0x1C1uLL);
  memcpy(v4, __src, 0x1C1uLL);
  memcpy(v11, v8, 0x1C1uLL);
  memcpy(&v4[456], v8, 0x1C1uLL);
  memcpy(v12, v9, 0x1C1uLL);
  memcpy(&v4[912], v9, 0x1C1uLL);
  memcpy(v2, v4, 0x551uLL);
  sub_1BD0DE19C(v10, v15, &qword_1EBD3A410, &qword_1BE0BA670);
  sub_1BD0DE19C(v11, v15, &qword_1EBD3A418, &qword_1BE0BA678);
  sub_1BD0DE19C(v12, v15, &qword_1EBD3A418, &qword_1BE0BA678);
  sub_1BD0DE53C(v13, &qword_1EBD3A418, &qword_1BE0BA678);
  memcpy(v14, v5, 0x1C1uLL);
  sub_1BD0DE53C(v14, &qword_1EBD3A418, &qword_1BE0BA678);
  memcpy(v15, __dst, 0x1C1uLL);
  return sub_1BD0DE53C(v15, &qword_1EBD3A410, &qword_1BE0BA670);
}

void sub_1BD151AE8(double *a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v307 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8088], v3, v5);
  v8 = PKPassKitBundle();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = v8;
  v10 = sub_1BE04B6F4();
  v12 = v11;

  (*(v4 + 8))(v7, v3);
  v13 = *(v1 + *(type metadata accessor for PaymentOfferRewardsIntentSummaryView(0) + 20) + 8);
  v14 = objc_allocWithZone(MEMORY[0x1E69B8780]);
  v15 = v13;
  v16 = sub_1BE052404();
  v17 = [v14 initWithAmount:v15 currency:v16 exponent:0];

  if (!v17)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v315 = a1;
  v18 = [v17 formattedStringValue];

  if (v18)
  {
    v318 = sub_1BE052434();
    v322 = v19;

    v20 = sub_1BE051464();
    v324 = sub_1BE050324();
    v314 = sub_1BE050194();
    v313 = sub_1BE04F504();
    v344 = 1;
    v431 = v10;
    v432 = v12;
    v321 = sub_1BD0DDEBC();
    sub_1BE048C84();
    v21 = sub_1BE0506C4();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v323 = v20;
    v28 = sub_1BE050564();
    v320 = v12;
    v30 = v29;
    v311 = v10;
    v32 = v31;
    v34 = v33;
    sub_1BD0DDF10(v21, v23, (v25 & 1), v33, v35, v36, v37, v38);
    v27, v39, v40, v41, v42, v43, v44, v45;
    v46 = sub_1BE0505E4();
    v48 = v47;
    LOBYTE(v21) = v49;
    v51 = v50;
    sub_1BD0DDF10(v28, v30, (v32 & 1), v50, v52, v53, v54, v55);
    v34, v56, v57, v58, v59, v60, v61, v62;
    v63 = sub_1BE0505F4();
    v308 = v64;
    v309 = v63;
    LOBYTE(v30) = v65;
    v310 = v66;
    sub_1BD0DDF10(v46, v48, (v21 & 1), v66, v67, v68, v69, v70);
    v51, v71, v72, v73, v74, v75, v76, v77;
    KeyPath = swift_getKeyPath();
    v317 = swift_getKeyPath();
    LODWORD(v316) = v30 & 1;
    LOBYTE(v415[0]) = 1;
    v431 = v318;
    v432 = v322;
    sub_1BE048C84();
    v78 = sub_1BE0506C4();
    v80 = v79;
    LOBYTE(v51) = v81;
    v83 = v82;
    v84 = sub_1BE050564();
    v86 = v85;
    LOBYTE(v20) = v87;
    v89 = v88;
    sub_1BD0DDF10(v78, v80, (v51 & 1), v88, v90, v91, v92, v93);
    v83, v94, v95, v96, v97, v98, v99, v100;
    v101 = sub_1BE0505E4();
    v103 = v102;
    LOBYTE(v28) = v104;
    v106 = v105;
    sub_1BD0DDF10(v84, v86, (v20 & 1), v105, v107, v108, v109, v110);
    v89, v111, v112, v113, v114, v115, v116, v117;
    v118 = sub_1BE0505F4();
    v120 = v119;
    LOBYTE(v89) = v121;
    v123 = v122;
    sub_1BD0DDF10(v101, v103, (v28 & 1), v122, v124, v125, v126, v127);
    v106, v128, v129, v130, v131, v132, v133, v134;
    v135 = swift_getKeyPath();
    v136 = swift_getKeyPath();
    v137 = v89 & 1;
    LOBYTE(v431) = v89 & 1;
    LOBYTE(v415[0]) = 1;
    v138 = v308;
    v139 = v309;
    *&v346 = v309;
    *(&v346 + 1) = v308;
    LOBYTE(v347) = v316;
    *(&v347 + 1) = *v342;
    DWORD1(v347) = *&v342[3];
    v140 = v310;
    *(&v347 + 1) = v310;
    *&v348 = KeyPath;
    BYTE8(v348) = 0;
    HIDWORD(v348) = *&v341[3];
    *(&v348 + 9) = *v341;
    v349 = v317;
    v350 = 0;
    v351 = 1;
    LOBYTE(v362) = 1;
    v361 = v317;
    v360 = v348;
    v358 = v346;
    v359 = v347;
    v338 = 1;
    *&v352 = v118;
    *(&v352 + 1) = v120;
    LOBYTE(v353) = v137;
    DWORD1(v353) = *(v340 + 3);
    *(&v353 + 1) = v340[0];
    *(&v353 + 1) = v123;
    *&v354 = v135;
    BYTE8(v354) = 0;
    HIDWORD(v354) = *&v339[3];
    *(&v354 + 9) = *v339;
    v355 = v136;
    v356 = 0;
    v357 = 1;
    *&v337[7] = v352;
    v337[71] = 1;
    *&v337[55] = v136;
    *&v337[39] = v354;
    *&v337[23] = v353;
    v312 = 1;
    v363[0] = v118;
    v363[1] = v120;
    v364 = v137;
    *&v365[3] = *(v340 + 3);
    *v365 = v340[0];
    v366 = v123;
    v367 = v135;
    v368 = 0;
    *&v369[3] = *&v339[3];
    *v369 = *v339;
    v370 = v136;
    v371 = 0;
    v372 = 1;
    sub_1BD0DE19C(&v346, &v431, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE19C(&v352, &v431, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE53C(v363, &qword_1EBD39160, &unk_1BE0BA6E0);
    v373[0] = v139;
    v373[1] = v138;
    v374 = v316;
    *v375 = *v342;
    *&v375[3] = *&v342[3];
    v376 = v140;
    v377 = KeyPath;
    v378 = 0;
    *v379 = *v341;
    *&v379[3] = *&v341[3];
    v380 = v317;
    v381 = 0;
    v382 = 1;
    sub_1BD0DE53C(v373, &qword_1EBD39160, &unk_1BE0BA6E0);
    *(&v343[1] + 7) = v359;
    *(&v343[2] + 7) = v360;
    *(&v343[3] + 7) = v361;
    *(&v343[4] + 7) = v362;
    *(v343 + 7) = v358;
    LODWORD(KeyPath) = v344;
    v316 = sub_1BE04F7C4();
    v336 = 1;
    v431 = v311;
    v432 = v320;
    sub_1BE048C84();
    v141 = sub_1BE0506C4();
    v143 = v142;
    LOBYTE(v123) = v144;
    v146 = v145;
    v147 = sub_1BE050564();
    v149 = v148;
    LOBYTE(v120) = v150;
    v152 = v151;
    sub_1BD0DDF10(v141, v143, (v123 & 1), v151, v153, v154, v155, v156);
    v146, v157, v158, v159, v160, v161, v162, v163;
    v164 = sub_1BE0505E4();
    v166 = v165;
    LOBYTE(v123) = v167;
    v169 = v168;
    sub_1BD0DDF10(v147, v149, (v120 & 1), v168, v170, v171, v172, v173);
    v152, v174, v175, v176, v177, v178, v179, v180;
    v181 = sub_1BE0505F4();
    v309 = v182;
    v310 = v181;
    LOBYTE(v120) = v183;
    v311 = v184;
    sub_1BD0DDF10(v164, v166, (v123 & 1), v184, v185, v186, v187, v188);
    v169, v189, v190, v191, v192, v193, v194, v195;
    v307 = swift_getKeyPath();
    v308 = swift_getKeyPath();
    LODWORD(v317) = v120 & 1;
    LOBYTE(v415[0]) = 1;
    v431 = v318;
    v432 = v322;
    sub_1BE048C84();
    v196 = sub_1BE0506C4();
    v198 = v197;
    LOBYTE(v123) = v199;
    v201 = v200;
    v202 = sub_1BE050564();
    v204 = v203;
    LOBYTE(v147) = v205;
    v207 = v206;
    sub_1BD0DDF10(v196, v198, (v123 & 1), v206, v208, v209, v210, v211);
    v201, v212, v213, v214, v215, v216, v217, v218;
    v219 = sub_1BE0505E4();
    v221 = v220;
    LOBYTE(v169) = v222;
    v224 = v223;
    sub_1BD0DDF10(v202, v204, (v147 & 1), v223, v225, v226, v227, v228);
    v207, v229, v230, v231, v232, v233, v234, v235;
    v236 = sub_1BE0505F4();
    v238 = v237;
    LOBYTE(v147) = v239;
    v241 = v240;
    sub_1BD0DDF10(v219, v221, (v169 & 1), v240, v242, v243, v244, v245);
    v224, v246, v247, v248, v249, v250, v251, v252;
    v253 = swift_getKeyPath();
    v254 = swift_getKeyPath();
    v255 = v147 & 1;
    LOBYTE(v431) = v147 & 1;
    LOBYTE(v415[0]) = 1;
    v257 = v309;
    v256 = v310;
    *&v383 = v310;
    *(&v383 + 1) = v309;
    LOBYTE(v384) = v317;
    *(&v384 + 1) = *v334;
    DWORD1(v384) = *&v334[3];
    v258 = v311;
    *(&v384 + 1) = v311;
    v259 = v307;
    v260 = v308;
    *&v385 = v307;
    BYTE8(v385) = 0;
    HIDWORD(v385) = *&v333[3];
    *(&v385 + 9) = *v333;
    v386 = v308;
    v387 = 0;
    v388 = 1;
    LOBYTE(v330[0]) = 1;
    v328 = v385;
    v329 = v308;
    v326 = v383;
    v327 = v384;
    *&v389 = v236;
    *(&v389 + 1) = v238;
    LOBYTE(v390) = v255;
    DWORD1(v390) = *(v332 + 3);
    *(&v390 + 1) = v332[0];
    *(&v390 + 1) = v241;
    *&v391 = v253;
    BYTE8(v391) = 0;
    HIDWORD(v391) = *&v331[3];
    *(&v391 + 9) = *v331;
    v392 = v254;
    v393 = 0;
    v394 = 1;
    *(v330 + 8) = v389;
    BYTE8(v330[4]) = 1;
    *(&v330[3] + 8) = v254;
    *(&v330[2] + 8) = v391;
    *(&v330[1] + 8) = v390;
    v395[0] = v236;
    v395[1] = v238;
    v396 = v255;
    *&v397[3] = *(v332 + 3);
    *v397 = v332[0];
    v398 = v241;
    v399 = v253;
    v400 = 0;
    *&v401[3] = *&v331[3];
    *v401 = *v331;
    v402 = v254;
    v403 = 0;
    v404 = 1;
    sub_1BD0DE19C(&v383, &v431, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE19C(&v389, &v431, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE53C(v395, &qword_1EBD39160, &unk_1BE0BA6E0);
    v405[0] = v256;
    v405[1] = v257;
    v406 = v317;
    *v407 = *v334;
    *&v407[3] = *&v334[3];
    v408 = v258;
    v409 = v259;
    v410 = 0;
    *v411 = *v333;
    *&v411[3] = *&v333[3];
    v412 = v260;
    v413 = 0;
    v414 = 1;
    sub_1BD0DE53C(v405, &qword_1EBD39160, &unk_1BE0BA6E0);
    *(&v335[5] + 7) = v330[1];
    *(&v335[6] + 7) = v330[2];
    *(&v335[7] + 7) = v330[3];
    v335[8] = *(&v330[3] + 9);
    *(&v335[1] + 7) = v327;
    *(&v335[2] + 7) = v328;
    *(&v335[3] + 7) = v329;
    *(&v335[4] + 7) = v330[0];
    *(v335 + 7) = v326;
    v261 = v313;
    v415[0] = v313;
    v415[1] = 0;
    LOBYTE(v416[0]) = KeyPath;
    *(&v416[1] + 1) = v343[1];
    *(&v416[2] + 1) = v343[2];
    *(&v416[3] + 1) = v343[3];
    v416[4] = *(&v343[3] + 15);
    *(v416 + 1) = v343[0];
    *v417 = 0;
    LOBYTE(v257) = v312;
    v417[8] = v312;
    *&v417[9] = *v337;
    *&v417[41] = *&v337[32];
    *&v417[25] = *&v337[16];
    *&v417[57] = *&v337[48];
    *&v417[73] = *&v337[64];
    v325[4] = v416[3];
    v325[5] = *(&v343[3] + 15);
    v325[0] = v313;
    v325[1] = v416[0];
    v325[2] = v416[1];
    v325[3] = v416[2];
    v325[8] = *&v417[32];
    v325[9] = *&v417[48];
    v325[10] = *&v417[64];
    v325[6] = *v417;
    v325[7] = *&v417[16];
    v418[0] = v316;
    v418[1] = 0;
    v419[0] = v336;
    *&v419[97] = v335[6];
    *&v419[81] = v335[5];
    *&v419[33] = v335[2];
    *&v419[17] = v335[1];
    *&v419[113] = v335[7];
    *&v419[129] = *(&v330[3] + 9);
    *&v419[49] = v335[3];
    *&v419[65] = v335[4];
    *&v419[1] = v335[0];
    *(&v325[18] + 8) = *&v419[96];
    *(&v325[19] + 8) = *&v419[112];
    *(&v325[20] + 8) = *&v419[128];
    *(&v325[16] + 8) = *&v419[64];
    *(&v325[17] + 8) = *&v419[80];
    *(&v325[14] + 8) = *&v419[32];
    *(&v325[15] + 8) = *&v419[48];
    *(&v325[11] + 8) = v316;
    *(&v325[12] + 8) = *v419;
    *(&v325[13] + 8) = *&v419[16];
    v427 = v335[5];
    v428 = v335[6];
    v429 = v335[7];
    v430 = *(&v330[3] + 9);
    v423 = v335[1];
    v424 = v335[2];
    LOBYTE(v325[11]) = v337[71];
    BYTE8(v325[21]) = BYTE8(v330[4]);
    v420[0] = v316;
    v420[1] = 0;
    v421 = v336;
    v425 = v335[3];
    v426 = v335[4];
    v422 = v335[0];
    sub_1BD0DE19C(v415, &v431, &qword_1EBD391E8, &qword_1BE0B8258);
    sub_1BD0DE19C(v418, &v431, &qword_1EBD3A420, &qword_1BE0BA6F0);
    sub_1BD0DE53C(v420, &qword_1EBD3A420, &qword_1BE0BA6F0);
    v431 = v261;
    v432 = 0;
    v433 = KeyPath;
    v435 = v343[1];
    v436 = v343[2];
    *v437 = v343[3];
    *&v437[15] = *(&v343[3] + 15);
    v434 = v343[0];
    v438 = 0;
    v439 = v257;
    v440 = *v337;
    v444 = *&v337[64];
    v443 = *&v337[48];
    v442 = *&v337[32];
    v441 = *&v337[16];
    sub_1BD0DE53C(&v431, &qword_1EBD391E8, &qword_1BE0B8258);
    v320, v262, v263, v264, v265, v266, v267, v268;
    v322, v269, v270, v271, v272, v273, v274, v275;
    memcpy(&v345[7], v325, 0x159uLL);
    LOBYTE(v253) = sub_1BE0501C4();
    sub_1BE04E1F4();
    v277 = v276;
    v279 = v278;
    v281 = v280;
    v283 = v282;
    v345[352] = 0;
    LOBYTE(v236) = sub_1BE050234();
    sub_1BE04E1F4();
    v285 = v284;
    v287 = v286;
    v289 = v288;
    v291 = v290;
    v323, v292, v293, v294, v295, v296, v297, v298;
    v324, v299, v300, v301, v302, v303, v304, v305;
    v345[360] = 0;
    v306 = v315;
    *v315 = v314;
    memcpy(v306 + 1, v345, 0x160uLL);
    *(v306 + 360) = v253;
    *(v306 + 46) = v277;
    *(v306 + 47) = v279;
    *(v306 + 48) = v281;
    *(v306 + 49) = v283;
    *(v306 + 400) = 0;
    *(v306 + 408) = v236;
    *(v306 + 52) = v285;
    *(v306 + 53) = v287;
    *(v306 + 54) = v289;
    *(v306 + 55) = v291;
    *(v306 + 448) = 0;
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1BD15298C@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v301 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*v1 monetaryValue];
  if (!v8 || (v9 = v8, v10 = [v8 formattedStringValue], v9, !v10))
  {
    sub_1BD154B20(v439);
    return memcpy(a1, v439, 0x1C1uLL);
  }

  v309 = a1;
  v314 = sub_1BE052434();
  v316 = v11;

  (*(v4 + 104))(v7, *MEMORY[0x1E69B8088], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v304 = v14;
    v16 = v15;

    (*(v4 + 8))(v7, v3);
    v317 = sub_1BE051494();
    v318 = sub_1BE050324();
    v308 = sub_1BE050194();
    v307 = sub_1BE04F504();
    v338 = 1;
    v439[0] = v14;
    v313 = v16;
    v439[1] = v16;
    v315 = sub_1BD0DDEBC();
    sub_1BE048C84();
    v17 = sub_1BE0506C4();
    v19 = v18;
    LOBYTE(v13) = v20;
    v22 = v21;
    v23 = sub_1BE050564();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_1BD0DDF10(v17, v19, (v13 & 1), v28, v30, v31, v32, v33);
    v22, v34, v35, v36, v37, v38, v39, v40;
    v41 = sub_1BE0505E4();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    sub_1BD0DDF10(v23, v25, (v27 & 1), v46, v48, v49, v50, v51);
    v29, v52, v53, v54, v55, v56, v57, v58;
    v59 = sub_1BE0505F4();
    v302 = v60;
    v303 = v59;
    LOBYTE(v23) = v61;
    v305 = v62;
    sub_1BD0DDF10(v41, v43, (v45 & 1), v62, v63, v64, v65, v66);
    v47, v67, v68, v69, v70, v71, v72, v73;
    KeyPath = swift_getKeyPath();
    v311 = swift_getKeyPath();
    v310 = v23 & 1;
    LOBYTE(v438[0]) = 1;
    v439[0] = v314;
    v439[1] = v316;
    sub_1BE048C84();
    v74 = sub_1BE0506C4();
    v76 = v75;
    LOBYTE(v23) = v77;
    v79 = v78;
    v80 = sub_1BE050564();
    v82 = v81;
    LOBYTE(v13) = v83;
    v85 = v84;
    sub_1BD0DDF10(v74, v76, (v23 & 1), v84, v86, v87, v88, v89);
    v79, v90, v91, v92, v93, v94, v95, v96;
    v97 = sub_1BE0505E4();
    v99 = v98;
    LOBYTE(v25) = v100;
    v102 = v101;
    sub_1BD0DDF10(v80, v82, (v13 & 1), v101, v103, v104, v105, v106);
    v85, v107, v108, v109, v110, v111, v112, v113;
    v114 = sub_1BE0505F4();
    v116 = v115;
    LOBYTE(v85) = v117;
    v119 = v118;
    sub_1BD0DDF10(v97, v99, (v25 & 1), v118, v120, v121, v122, v123);
    v102, v124, v125, v126, v127, v128, v129, v130;
    v131 = swift_getKeyPath();
    v132 = swift_getKeyPath();
    v133 = v85 & 1;
    LOBYTE(v439[0]) = v85 & 1;
    LOBYTE(v438[0]) = 1;
    v134 = v302;
    v135 = v303;
    *&v340 = v303;
    *(&v340 + 1) = v302;
    LOBYTE(v341) = v310;
    *(&v341 + 1) = *v336;
    DWORD1(v341) = *&v336[3];
    v136 = v305;
    *(&v341 + 1) = v305;
    *&v342 = KeyPath;
    BYTE8(v342) = 0;
    HIDWORD(v342) = *&v335[3];
    *(&v342 + 9) = *v335;
    v343 = v311;
    v344 = 0;
    v345 = 1;
    LOBYTE(v356) = 1;
    v355 = v311;
    v354 = v342;
    v352 = v340;
    v353 = v341;
    v332 = 1;
    *&v346 = v114;
    *(&v346 + 1) = v116;
    LOBYTE(v347) = v133;
    DWORD1(v347) = *(v334 + 3);
    *(&v347 + 1) = v334[0];
    *(&v347 + 1) = v119;
    *&v348 = v131;
    BYTE8(v348) = 0;
    HIDWORD(v348) = *&v333[3];
    *(&v348 + 9) = *v333;
    v349 = v132;
    v350 = 0;
    v351 = 1;
    *&v331[7] = v346;
    v331[71] = 1;
    *&v331[55] = v132;
    *&v331[39] = v348;
    *&v331[23] = v347;
    v306 = 1;
    v357[0] = v114;
    v357[1] = v116;
    v358 = v133;
    *&v359[3] = *(v334 + 3);
    *v359 = v334[0];
    v360 = v119;
    v361 = v131;
    v362 = 0;
    *&v363[3] = *&v333[3];
    *v363 = *v333;
    v364 = v132;
    v365 = 0;
    v366 = 1;
    sub_1BD0DE19C(&v340, v439, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE19C(&v346, v439, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE53C(v357, &qword_1EBD39160, &unk_1BE0BA6E0);
    v367[0] = v135;
    v367[1] = v134;
    v368 = v310;
    *v369 = *v336;
    *&v369[3] = *&v336[3];
    v370 = v136;
    v371 = KeyPath;
    v372 = 0;
    *v373 = *v335;
    *&v373[3] = *&v335[3];
    v374 = v311;
    v375 = 0;
    v376 = 1;
    sub_1BD0DE53C(v367, &qword_1EBD39160, &unk_1BE0BA6E0);
    *(&v337[1] + 7) = v353;
    *(&v337[2] + 7) = v354;
    *(&v337[3] + 7) = v355;
    *(&v337[4] + 7) = v356;
    *(v337 + 7) = v352;
    LODWORD(KeyPath) = v338;
    v305 = sub_1BE04F7C4();
    v330 = 1;
    v439[0] = v304;
    v439[1] = v313;
    sub_1BE048C84();
    v137 = sub_1BE0506C4();
    v139 = v138;
    LOBYTE(v119) = v140;
    v142 = v141;
    v143 = sub_1BE050564();
    v145 = v144;
    LOBYTE(v114) = v146;
    v148 = v147;
    sub_1BD0DDF10(v137, v139, (v119 & 1), v147, v149, v150, v151, v152);
    v142, v153, v154, v155, v156, v157, v158, v159;
    v160 = sub_1BE0505E4();
    v162 = v161;
    LOBYTE(v135) = v163;
    v165 = v164;
    sub_1BD0DDF10(v143, v145, (v114 & 1), v164, v166, v167, v168, v169);
    v148, v170, v171, v172, v173, v174, v175, v176;
    v177 = sub_1BE0505F4();
    v302 = v178;
    v303 = v177;
    LOBYTE(v143) = v179;
    v304 = v180;
    sub_1BD0DDF10(v160, v162, (v135 & 1), v180, v181, v182, v183, v184);
    v165, v185, v186, v187, v188, v189, v190, v191;
    v311 = swift_getKeyPath();
    v301 = swift_getKeyPath();
    v310 = v143 & 1;
    LOBYTE(v438[0]) = 1;
    v439[0] = v314;
    v439[1] = v316;
    sub_1BE048C84();
    v192 = sub_1BE0506C4();
    v194 = v193;
    LOBYTE(v143) = v195;
    v197 = v196;
    v198 = sub_1BE050564();
    v200 = v199;
    LOBYTE(v148) = v201;
    v203 = v202;
    sub_1BD0DDF10(v192, v194, (v143 & 1), v202, v204, v205, v206, v207);
    v197, v208, v209, v210, v211, v212, v213, v214;
    v215 = sub_1BE0505E4();
    v217 = v216;
    LOBYTE(v145) = v218;
    v220 = v219;
    sub_1BD0DDF10(v198, v200, (v148 & 1), v219, v221, v222, v223, v224);
    v203, v225, v226, v227, v228, v229, v230, v231;
    v232 = sub_1BE0505F4();
    v234 = v233;
    LOBYTE(v203) = v235;
    v237 = v236;
    sub_1BD0DDF10(v215, v217, (v145 & 1), v236, v238, v239, v240, v241);
    v220, v242, v243, v244, v245, v246, v247, v248;
    v249 = swift_getKeyPath();
    v250 = swift_getKeyPath();
    v251 = v203 & 1;
    LOBYTE(v439[0]) = v203 & 1;
    LOBYTE(v438[0]) = 1;
    v252 = v302;
    v253 = v303;
    *&v377 = v303;
    *(&v377 + 1) = v302;
    LOBYTE(v378) = v310;
    *(&v378 + 1) = *v328;
    DWORD1(v378) = *&v328[3];
    v254 = v304;
    *(&v378 + 1) = v304;
    *&v379 = v311;
    BYTE8(v379) = 0;
    HIDWORD(v379) = *&v327[3];
    *(&v379 + 9) = *v327;
    v255 = v301;
    v380 = v301;
    v381 = 0;
    v382 = 1;
    LOBYTE(v324[0]) = 1;
    v322 = v379;
    v323 = v301;
    v320 = v377;
    v321 = v378;
    *&v383 = v232;
    *(&v383 + 1) = v234;
    LOBYTE(v384) = v251;
    DWORD1(v384) = *(v326 + 3);
    *(&v384 + 1) = v326[0];
    *(&v384 + 1) = v237;
    *&v385 = v249;
    BYTE8(v385) = 0;
    HIDWORD(v385) = *&v325[3];
    *(&v385 + 9) = *v325;
    v386 = v250;
    v387 = 0;
    v388 = 1;
    *(v324 + 8) = v383;
    BYTE8(v324[4]) = 1;
    *(&v324[3] + 8) = v250;
    *(&v324[2] + 8) = v385;
    *(&v324[1] + 8) = v384;
    v389[0] = v232;
    v389[1] = v234;
    v390 = v251;
    *&v391[3] = *(v326 + 3);
    *v391 = v326[0];
    v392 = v237;
    v393 = v249;
    v394 = 0;
    *&v395[3] = *&v325[3];
    *v395 = *v325;
    v396 = v250;
    v397 = 0;
    v398 = 1;
    sub_1BD0DE19C(&v377, v439, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE19C(&v383, v439, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE53C(v389, &qword_1EBD39160, &unk_1BE0BA6E0);
    v399[0] = v253;
    v399[1] = v252;
    v400 = v310;
    *v401 = *v328;
    *&v401[3] = *&v328[3];
    v402 = v254;
    v403 = v311;
    v404 = 0;
    *v405 = *v327;
    *&v405[3] = *&v327[3];
    v406 = v255;
    v407 = 0;
    v408 = 1;
    sub_1BD0DE53C(v399, &qword_1EBD39160, &unk_1BE0BA6E0);
    *(&v329[5] + 7) = v324[1];
    *(&v329[6] + 7) = v324[2];
    *(&v329[7] + 7) = v324[3];
    v329[8] = *(&v324[3] + 9);
    *(&v329[1] + 7) = v321;
    *(&v329[2] + 7) = v322;
    *(&v329[3] + 7) = v323;
    *(&v329[4] + 7) = v324[0];
    *(v329 + 7) = v320;
    v256 = v307;
    v409[0] = v307;
    v409[1] = 0;
    LOBYTE(v410[0]) = KeyPath;
    *(&v410[1] + 1) = v337[1];
    *(&v410[2] + 1) = v337[2];
    *(&v410[3] + 1) = v337[3];
    v410[4] = *(&v337[3] + 15);
    *(v410 + 1) = v337[0];
    *v411 = 0;
    LOBYTE(v232) = v306;
    v411[8] = v306;
    *&v411[9] = *v331;
    *&v411[41] = *&v331[32];
    *&v411[25] = *&v331[16];
    *&v411[57] = *&v331[48];
    *&v411[73] = *&v331[64];
    v319[4] = v410[3];
    v319[5] = *(&v337[3] + 15);
    v319[0] = v307;
    v319[1] = v410[0];
    v319[2] = v410[1];
    v319[3] = v410[2];
    v319[8] = *&v411[32];
    v319[9] = *&v411[48];
    v319[10] = *&v411[64];
    v319[6] = *v411;
    v319[7] = *&v411[16];
    v412[0] = v305;
    v412[1] = 0;
    v413[0] = v330;
    *&v413[97] = v329[6];
    *&v413[81] = v329[5];
    *&v413[33] = v329[2];
    *&v413[17] = v329[1];
    *&v413[113] = v329[7];
    *&v413[129] = *(&v324[3] + 9);
    *&v413[49] = v329[3];
    *&v413[65] = v329[4];
    *&v413[1] = v329[0];
    *(&v319[18] + 8) = *&v413[96];
    *(&v319[19] + 8) = *&v413[112];
    *(&v319[20] + 8) = *&v413[128];
    *(&v319[16] + 8) = *&v413[64];
    *(&v319[17] + 8) = *&v413[80];
    *(&v319[14] + 8) = *&v413[32];
    *(&v319[15] + 8) = *&v413[48];
    *(&v319[11] + 8) = v305;
    *(&v319[12] + 8) = *v413;
    *(&v319[13] + 8) = *&v413[16];
    v421 = v329[5];
    v422 = v329[6];
    v423 = v329[7];
    v424 = *(&v324[3] + 9);
    v417 = v329[1];
    v418 = v329[2];
    LOBYTE(v319[11]) = v331[71];
    BYTE8(v319[21]) = BYTE8(v324[4]);
    v414[0] = v305;
    v414[1] = 0;
    v415 = v330;
    v419 = v329[3];
    v420 = v329[4];
    v416 = v329[0];
    sub_1BD0DE19C(v409, v439, &qword_1EBD391E8, &qword_1BE0B8258);
    sub_1BD0DE19C(v412, v439, &qword_1EBD3A420, &qword_1BE0BA6F0);
    sub_1BD0DE53C(v414, &qword_1EBD3A420, &qword_1BE0BA6F0);
    v425[0] = v256;
    v425[1] = 0;
    v426 = KeyPath;
    v428 = v337[1];
    v429 = v337[2];
    *v430 = v337[3];
    *&v430[15] = *(&v337[3] + 15);
    v427 = v337[0];
    v431 = 0;
    v432 = v232;
    v433 = *v331;
    v437 = *&v331[64];
    v436 = *&v331[48];
    v435 = *&v331[32];
    v434 = *&v331[16];
    sub_1BD0DE53C(v425, &qword_1EBD391E8, &qword_1BE0B8258);
    v316, v257, v258, v259, v260, v261, v262, v263;
    v313, v264, v265, v266, v267, v268, v269, v270;
    memcpy(&v339[7], v319, 0x159uLL);
    LOBYTE(v234) = sub_1BE0501C4();
    sub_1BE04E1F4();
    v272 = v271;
    v274 = v273;
    v276 = v275;
    v278 = v277;
    v339[352] = 0;
    LOBYTE(v255) = sub_1BE050234();
    sub_1BE04E1F4();
    v280 = v279;
    v282 = v281;
    v284 = v283;
    v286 = v285;
    v317, v287, v288, v289, v290, v291, v292, v293;
    v318, v294, v295, v296, v297, v298, v299, v300;
    v339[360] = 0;
    LOBYTE(v438[0]) = v308;
    memcpy(v438 + 1, v339, 0x160uLL);
    LOBYTE(v438[45]) = v234;
    v438[46] = v272;
    v438[47] = v274;
    v438[48] = v276;
    v438[49] = v278;
    LOBYTE(v438[50]) = 0;
    LOBYTE(v438[51]) = v255;
    v438[52] = v280;
    v438[53] = v282;
    v438[54] = v284;
    v438[55] = v286;
    LOBYTE(v438[56]) = 0;
    PKEdgeInsetsMake();
    memcpy(v439, v438, 0x1C1uLL);
    a1 = v309;
    return memcpy(a1, v439, 0x1C1uLL);
  }

  __break(1u);
  return result;
}

id sub_1BD153828@<X0>(void *a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v301 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BD1549A4();
  if (!v6 || (v7 = v6, v8 = [v6 formattedStringValue], v7, !v8))
  {
    sub_1BD154B20(v439);
    return memcpy(a1, v439, 0x1C1uLL);
  }

  v309 = a1;
  v314 = sub_1BE052434();
  v316 = v9;

  (*(v3 + 104))(v5, *MEMORY[0x1E69B8088], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v304 = v12;
    v14 = v13;

    (*(v3 + 8))(v5, v2);
    v317 = sub_1BE051494();
    v318 = sub_1BE050324();
    v308 = sub_1BE050194();
    v307 = sub_1BE04F504();
    v338 = 1;
    v439[0] = v12;
    v313 = v14;
    v439[1] = v14;
    v315 = sub_1BD0DDEBC();
    sub_1BE048C84();
    v15 = sub_1BE0506C4();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = sub_1BE050564();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_1BD0DDF10(v15, v17, (v19 & 1), v27, v29, v30, v31, v32);
    v21, v33, v34, v35, v36, v37, v38, v39;
    v40 = sub_1BE0505E4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_1BD0DDF10(v22, v24, (v26 & 1), v45, v47, v48, v49, v50);
    v28, v51, v52, v53, v54, v55, v56, v57;
    v58 = sub_1BE0505F4();
    v302 = v59;
    v303 = v58;
    LOBYTE(v22) = v60;
    v305 = v61;
    sub_1BD0DDF10(v40, v42, (v44 & 1), v61, v62, v63, v64, v65);
    v46, v66, v67, v68, v69, v70, v71, v72;
    KeyPath = swift_getKeyPath();
    v311 = swift_getKeyPath();
    v310 = v22 & 1;
    LOBYTE(v438[0]) = 1;
    v439[0] = v314;
    v439[1] = v316;
    sub_1BE048C84();
    v73 = sub_1BE0506C4();
    v75 = v74;
    LOBYTE(v22) = v76;
    v78 = v77;
    v79 = sub_1BE050564();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    sub_1BD0DDF10(v73, v75, (v22 & 1), v84, v86, v87, v88, v89);
    v78, v90, v91, v92, v93, v94, v95, v96;
    v97 = sub_1BE0505E4();
    v99 = v98;
    LOBYTE(v24) = v100;
    v102 = v101;
    sub_1BD0DDF10(v79, v81, (v83 & 1), v101, v103, v104, v105, v106);
    v85, v107, v108, v109, v110, v111, v112, v113;
    v114 = sub_1BE0505F4();
    v116 = v115;
    LOBYTE(v85) = v117;
    v119 = v118;
    sub_1BD0DDF10(v97, v99, (v24 & 1), v118, v120, v121, v122, v123);
    v102, v124, v125, v126, v127, v128, v129, v130;
    v131 = swift_getKeyPath();
    v132 = swift_getKeyPath();
    v133 = v85 & 1;
    LOBYTE(v439[0]) = v85 & 1;
    LOBYTE(v438[0]) = 1;
    v134 = v302;
    v135 = v303;
    *&v340 = v303;
    *(&v340 + 1) = v302;
    LOBYTE(v341) = v310;
    *(&v341 + 1) = *v336;
    DWORD1(v341) = *&v336[3];
    v136 = v305;
    *(&v341 + 1) = v305;
    *&v342 = KeyPath;
    BYTE8(v342) = 0;
    HIDWORD(v342) = *&v335[3];
    *(&v342 + 9) = *v335;
    v343 = v311;
    v344 = 0;
    v345 = 1;
    LOBYTE(v356) = 1;
    v355 = v311;
    v354 = v342;
    v352 = v340;
    v353 = v341;
    v332 = 1;
    *&v346 = v114;
    *(&v346 + 1) = v116;
    LOBYTE(v347) = v133;
    DWORD1(v347) = *(v334 + 3);
    *(&v347 + 1) = v334[0];
    *(&v347 + 1) = v119;
    *&v348 = v131;
    BYTE8(v348) = 0;
    HIDWORD(v348) = *&v333[3];
    *(&v348 + 9) = *v333;
    v349 = v132;
    v350 = 0;
    v351 = 1;
    *&v331[7] = v346;
    v331[71] = 1;
    *&v331[55] = v132;
    *&v331[39] = v348;
    *&v331[23] = v347;
    v306 = 1;
    v357[0] = v114;
    v357[1] = v116;
    v358 = v133;
    *&v359[3] = *(v334 + 3);
    *v359 = v334[0];
    v360 = v119;
    v361 = v131;
    v362 = 0;
    *&v363[3] = *&v333[3];
    *v363 = *v333;
    v364 = v132;
    v365 = 0;
    v366 = 1;
    sub_1BD0DE19C(&v340, v439, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE19C(&v346, v439, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE53C(v357, &qword_1EBD39160, &unk_1BE0BA6E0);
    v367[0] = v135;
    v367[1] = v134;
    v368 = v310;
    *v369 = *v336;
    *&v369[3] = *&v336[3];
    v370 = v136;
    v371 = KeyPath;
    v372 = 0;
    *v373 = *v335;
    *&v373[3] = *&v335[3];
    v374 = v311;
    v375 = 0;
    v376 = 1;
    sub_1BD0DE53C(v367, &qword_1EBD39160, &unk_1BE0BA6E0);
    *(&v337[1] + 7) = v353;
    *(&v337[2] + 7) = v354;
    *(&v337[3] + 7) = v355;
    *(&v337[4] + 7) = v356;
    *(v337 + 7) = v352;
    LODWORD(KeyPath) = v338;
    v305 = sub_1BE04F7C4();
    v330 = 1;
    v439[0] = v304;
    v439[1] = v313;
    sub_1BE048C84();
    v137 = sub_1BE0506C4();
    v139 = v138;
    LOBYTE(v119) = v140;
    v142 = v141;
    v143 = sub_1BE050564();
    v145 = v144;
    LOBYTE(v114) = v146;
    v148 = v147;
    sub_1BD0DDF10(v137, v139, (v119 & 1), v147, v149, v150, v151, v152);
    v142, v153, v154, v155, v156, v157, v158, v159;
    v160 = sub_1BE0505E4();
    v162 = v161;
    LOBYTE(v135) = v163;
    v165 = v164;
    sub_1BD0DDF10(v143, v145, (v114 & 1), v164, v166, v167, v168, v169);
    v148, v170, v171, v172, v173, v174, v175, v176;
    v177 = sub_1BE0505F4();
    v302 = v178;
    v303 = v177;
    LOBYTE(v143) = v179;
    v304 = v180;
    sub_1BD0DDF10(v160, v162, (v135 & 1), v180, v181, v182, v183, v184);
    v165, v185, v186, v187, v188, v189, v190, v191;
    v311 = swift_getKeyPath();
    v301 = swift_getKeyPath();
    v310 = v143 & 1;
    LOBYTE(v438[0]) = 1;
    v439[0] = v314;
    v439[1] = v316;
    sub_1BE048C84();
    v192 = sub_1BE0506C4();
    v194 = v193;
    LOBYTE(v143) = v195;
    v197 = v196;
    v198 = sub_1BE050564();
    v200 = v199;
    LOBYTE(v148) = v201;
    v203 = v202;
    sub_1BD0DDF10(v192, v194, (v143 & 1), v202, v204, v205, v206, v207);
    v197, v208, v209, v210, v211, v212, v213, v214;
    v215 = sub_1BE0505E4();
    v217 = v216;
    LOBYTE(v145) = v218;
    v220 = v219;
    sub_1BD0DDF10(v198, v200, (v148 & 1), v219, v221, v222, v223, v224);
    v203, v225, v226, v227, v228, v229, v230, v231;
    v232 = sub_1BE0505F4();
    v234 = v233;
    LOBYTE(v203) = v235;
    v237 = v236;
    sub_1BD0DDF10(v215, v217, (v145 & 1), v236, v238, v239, v240, v241);
    v220, v242, v243, v244, v245, v246, v247, v248;
    v249 = swift_getKeyPath();
    v250 = swift_getKeyPath();
    v251 = v203 & 1;
    LOBYTE(v439[0]) = v203 & 1;
    LOBYTE(v438[0]) = 1;
    v252 = v302;
    v253 = v303;
    *&v377 = v303;
    *(&v377 + 1) = v302;
    LOBYTE(v378) = v310;
    *(&v378 + 1) = *v328;
    DWORD1(v378) = *&v328[3];
    v254 = v304;
    *(&v378 + 1) = v304;
    *&v379 = v311;
    BYTE8(v379) = 0;
    HIDWORD(v379) = *&v327[3];
    *(&v379 + 9) = *v327;
    v255 = v301;
    v380 = v301;
    v381 = 0;
    v382 = 1;
    LOBYTE(v324[0]) = 1;
    v322 = v379;
    v323 = v301;
    v320 = v377;
    v321 = v378;
    *&v383 = v232;
    *(&v383 + 1) = v234;
    LOBYTE(v384) = v251;
    DWORD1(v384) = *(v326 + 3);
    *(&v384 + 1) = v326[0];
    *(&v384 + 1) = v237;
    *&v385 = v249;
    BYTE8(v385) = 0;
    HIDWORD(v385) = *&v325[3];
    *(&v385 + 9) = *v325;
    v386 = v250;
    v387 = 0;
    v388 = 1;
    *(v324 + 8) = v383;
    BYTE8(v324[4]) = 1;
    *(&v324[3] + 8) = v250;
    *(&v324[2] + 8) = v385;
    *(&v324[1] + 8) = v384;
    v389[0] = v232;
    v389[1] = v234;
    v390 = v251;
    *&v391[3] = *(v326 + 3);
    *v391 = v326[0];
    v392 = v237;
    v393 = v249;
    v394 = 0;
    *&v395[3] = *&v325[3];
    *v395 = *v325;
    v396 = v250;
    v397 = 0;
    v398 = 1;
    sub_1BD0DE19C(&v377, v439, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE19C(&v383, v439, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE53C(v389, &qword_1EBD39160, &unk_1BE0BA6E0);
    v399[0] = v253;
    v399[1] = v252;
    v400 = v310;
    *v401 = *v328;
    *&v401[3] = *&v328[3];
    v402 = v254;
    v403 = v311;
    v404 = 0;
    *v405 = *v327;
    *&v405[3] = *&v327[3];
    v406 = v255;
    v407 = 0;
    v408 = 1;
    sub_1BD0DE53C(v399, &qword_1EBD39160, &unk_1BE0BA6E0);
    *(&v329[5] + 7) = v324[1];
    *(&v329[6] + 7) = v324[2];
    *(&v329[7] + 7) = v324[3];
    v329[8] = *(&v324[3] + 9);
    *(&v329[1] + 7) = v321;
    *(&v329[2] + 7) = v322;
    *(&v329[3] + 7) = v323;
    *(&v329[4] + 7) = v324[0];
    *(v329 + 7) = v320;
    v256 = v307;
    v409[0] = v307;
    v409[1] = 0;
    LOBYTE(v410[0]) = KeyPath;
    *(&v410[1] + 1) = v337[1];
    *(&v410[2] + 1) = v337[2];
    *(&v410[3] + 1) = v337[3];
    v410[4] = *(&v337[3] + 15);
    *(v410 + 1) = v337[0];
    *v411 = 0;
    LOBYTE(v232) = v306;
    v411[8] = v306;
    *&v411[9] = *v331;
    *&v411[41] = *&v331[32];
    *&v411[25] = *&v331[16];
    *&v411[57] = *&v331[48];
    *&v411[73] = *&v331[64];
    v319[4] = v410[3];
    v319[5] = *(&v337[3] + 15);
    v319[0] = v307;
    v319[1] = v410[0];
    v319[2] = v410[1];
    v319[3] = v410[2];
    v319[8] = *&v411[32];
    v319[9] = *&v411[48];
    v319[10] = *&v411[64];
    v319[6] = *v411;
    v319[7] = *&v411[16];
    v412[0] = v305;
    v412[1] = 0;
    v413[0] = v330;
    *&v413[97] = v329[6];
    *&v413[81] = v329[5];
    *&v413[33] = v329[2];
    *&v413[17] = v329[1];
    *&v413[113] = v329[7];
    *&v413[129] = *(&v324[3] + 9);
    *&v413[49] = v329[3];
    *&v413[65] = v329[4];
    *&v413[1] = v329[0];
    *(&v319[18] + 8) = *&v413[96];
    *(&v319[19] + 8) = *&v413[112];
    *(&v319[20] + 8) = *&v413[128];
    *(&v319[16] + 8) = *&v413[64];
    *(&v319[17] + 8) = *&v413[80];
    *(&v319[14] + 8) = *&v413[32];
    *(&v319[15] + 8) = *&v413[48];
    *(&v319[11] + 8) = v305;
    *(&v319[12] + 8) = *v413;
    *(&v319[13] + 8) = *&v413[16];
    v421 = v329[5];
    v422 = v329[6];
    v423 = v329[7];
    v424 = *(&v324[3] + 9);
    v417 = v329[1];
    v418 = v329[2];
    LOBYTE(v319[11]) = v331[71];
    BYTE8(v319[21]) = BYTE8(v324[4]);
    v414[0] = v305;
    v414[1] = 0;
    v415 = v330;
    v419 = v329[3];
    v420 = v329[4];
    v416 = v329[0];
    sub_1BD0DE19C(v409, v439, &qword_1EBD391E8, &qword_1BE0B8258);
    sub_1BD0DE19C(v412, v439, &qword_1EBD3A420, &qword_1BE0BA6F0);
    sub_1BD0DE53C(v414, &qword_1EBD3A420, &qword_1BE0BA6F0);
    v425[0] = v256;
    v425[1] = 0;
    v426 = KeyPath;
    v428 = v337[1];
    v429 = v337[2];
    *v430 = v337[3];
    *&v430[15] = *(&v337[3] + 15);
    v427 = v337[0];
    v431 = 0;
    v432 = v232;
    v433 = *v331;
    v437 = *&v331[64];
    v436 = *&v331[48];
    v435 = *&v331[32];
    v434 = *&v331[16];
    sub_1BD0DE53C(v425, &qword_1EBD391E8, &qword_1BE0B8258);
    v316, v257, v258, v259, v260, v261, v262, v263;
    v313, v264, v265, v266, v267, v268, v269, v270;
    memcpy(&v339[7], v319, 0x159uLL);
    LOBYTE(v255) = sub_1BE0501C4();
    sub_1BE04E1F4();
    v272 = v271;
    v274 = v273;
    v276 = v275;
    v278 = v277;
    v339[352] = 0;
    LOBYTE(v234) = sub_1BE050234();
    sub_1BE04E1F4();
    v280 = v279;
    v282 = v281;
    v284 = v283;
    v286 = v285;
    v317, v287, v288, v289, v290, v291, v292, v293;
    v318, v294, v295, v296, v297, v298, v299, v300;
    v339[360] = 0;
    LOBYTE(v438[0]) = v308;
    memcpy(v438 + 1, v339, 0x160uLL);
    LOBYTE(v438[45]) = v255;
    v438[46] = v272;
    v438[47] = v274;
    v438[48] = v276;
    v438[49] = v278;
    LOBYTE(v438[50]) = 0;
    LOBYTE(v438[51]) = v234;
    v438[52] = v280;
    v438[53] = v282;
    v438[54] = v284;
    v438[55] = v286;
    LOBYTE(v438[56]) = 0;
    PKEdgeInsetsMake();
    memcpy(v439, v438, 0x1C1uLL);
    a1 = v309;
    return memcpy(a1, v439, 0x1C1uLL);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1546B0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE053304();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = [*v0 rewardsType];
  result = 0;
  if ((v11 - 1) <= 1)
  {
    v13 = [v10 value];
    if (v13 && (v26[1] = 0, v26[2] = 0, v27 = 0, v28 = 1, v14 = v13, sub_1BE0533E4(), v14, v28 != 1))
    {
      MEMORY[0x1BFB37210]();
      sub_1BD154B6C();
      sub_1BE053464();
      (*(v6 + 8))(v9, v5);
      v15 = v29;
      v16 = v30;
      (*(v2 + 104))(v4, *MEMORY[0x1E69B8088], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BE0B69E0;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1BD110550();
      *(v17 + 32) = v15;
      *(v17 + 40) = v16;
      v18 = sub_1BE04B714();
      v17, v19, v20, v21, v22, v23, v24, v25;
      (*(v2 + 8))(v4, v1);
      return v18;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1BD1549A4()
{
  v1 = [*v0 monetaryValue];
  if (!v1 || (v2 = v1, v3 = [v1 amount], v2, !v3))
  {
    v3 = [objc_opt_self() zero];
  }

  v4 = *(v0 + *(type metadata accessor for PaymentOfferRewardsIntentSummaryView(0) + 20) + 8);
  v5 = [v4 decimalNumberBySubtracting_];
  if ([v5 pk_isNegativeNumber] || objc_msgSend(v5, sel_pk_isNotANumber))
  {

    return 0;
  }

  else
  {
    v7 = [v4 decimalNumberBySubtracting_];
    v8 = objc_allocWithZone(MEMORY[0x1E69B8780]);
    v9 = sub_1BE052404();
    v10 = [v8 initWithAmount:v7 currency:v9 exponent:0];

    return v10;
  }
}

double sub_1BD154B20(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  return result;
}

unint64_t sub_1BD154B6C()
{
  result = qword_1EBD45110;
  if (!qword_1EBD45110)
  {
    sub_1BE053304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45110);
  }

  return result;
}

unint64_t sub_1BD154BC4()
{
  result = qword_1EBD3A448;
  if (!qword_1EBD3A448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A450, &qword_1BE0BA720);
    sub_1BD154C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A448);
  }

  return result;
}

unint64_t sub_1BD154C48()
{
  result = qword_1EBD3A458;
  if (!qword_1EBD3A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A460, &qword_1BE0BA728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A458);
  }

  return result;
}

uint64_t sub_1BD154CAC(uint64_t a1)
{
  v111[2] = a1;
  v1 = sub_1BE048974();
  v117 = *(v1 - 8);
  v118 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v116 = v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A688, &qword_1BE0BAC10);
  v4 = *(v3 - 8);
  v121 = v3;
  v122 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v111 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A690, &qword_1BE0BAC18);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1BD035EBC();
  sub_1BE048A54();
  sub_1BE048A44();
  KeyPath = swift_getKeyPath();
  v119 = sub_1BD030618();
  v10 = sub_1BE048964();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE048A34();
  v10, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE048A44();
  sub_1BE048A64();
  v115 = sub_1BE048994();
  v25 = v121;
  v26 = *(v122 + 8);
  v122 += 8;
  v26(v6, v121);
  v120 = v26;
  sub_1BE048A54();
  sub_1BE048A44();
  v27 = swift_getKeyPath();
  v28 = sub_1BE048964();
  v27, v29, v30, v31, v32, v33, v34, v35;
  sub_1BE048A34();
  v28, v36, v37, v38, v39, v40, v41, v42;
  sub_1BE048A44();
  sub_1BE048A64();
  v114 = sub_1BE048994();
  v26(v6, v25);
  sub_1BE048A54();
  sub_1BE048A44();
  v43 = swift_getKeyPath();
  v44 = sub_1BE048964();
  v43, v45, v46, v47, v48, v49, v50, v51;
  sub_1BE048A34();
  v44, v52, v53, v54, v55, v56, v57, v58;
  sub_1BE048A44();
  sub_1BE048A64();
  v111[1] = v8;
  v113 = sub_1BE048994();
  v59 = v6;
  v60 = v6;
  v61 = v120;
  v120(v59, v121);
  sub_1BE048A54();
  sub_1BE048A44();
  v62 = swift_getKeyPath();
  v63 = sub_1BE048964();
  v62, v64, v65, v66, v67, v68, v69, v70;
  sub_1BE048A34();
  v63, v71, v72, v73, v74, v75, v76, v77;
  sub_1BE048A44();
  v78 = v60;
  sub_1BE048A64();
  v112 = sub_1BE048994();
  v61(v60, v121);
  sub_1BE048A54();
  sub_1BE048A44();
  v79 = swift_getKeyPath();
  v80 = sub_1BE048964();
  v79, v81, v82, v83, v84, v85, v86, v87;
  sub_1BE048A34();
  v80, v88, v89, v90, v91, v92, v93, v94;
  sub_1BE048A44();
  v96 = v116;
  v95 = v117;
  v97 = v118;
  (*(v117 + 104))(v116, *MEMORY[0x1E695A1E0], v118);
  sub_1BE048A24();
  (*(v95 + 8))(v96, v97);
  sub_1BE048A44();
  sub_1BE048A64();
  v98 = sub_1BE048994();
  v120(v78, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A698, &unk_1BE0BAC20);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1BE0BA730;
  v100 = v114;
  *(v99 + 32) = v115;
  *(v99 + 40) = v100;
  v101 = v112;
  *(v99 + 48) = v113;
  *(v99 + 56) = v101;
  *(v99 + 64) = v98;
  v102 = sub_1BE048984();
  v99, v103, v104, v105, v106, v107, v108, v109;
  return v102;
}

uint64_t sub_1BD155390(uint64_t a1)
{
  v172 = a1;
  v1 = sub_1BE048974();
  v168 = *(v1 - 8);
  v169 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v167 = &v159 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A670, &qword_1BE0BABD0);
  v4 = *(v3 - 8);
  v173 = v3;
  v174 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v159 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A678, &qword_1BE0BABD8);
  MEMORY[0x1EEE9AC00](v7);
  sub_1BD15CFA8();
  sub_1BE048A54();
  sub_1BE048A44();
  KeyPath = swift_getKeyPath();
  v9 = sub_1BD030618();
  v10 = sub_1BE048964();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE048A34();
  v10, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE048A44();
  sub_1BE048A64();
  v166 = sub_1BE048994();
  v25 = v173;
  v170 = *(v174 + 8);
  v174 += 8;
  v170(v6, v173);
  sub_1BE048A54();
  sub_1BE048A44();
  v26 = swift_getKeyPath();
  v171 = v9;
  v27 = sub_1BE048964();
  v26, v28, v29, v30, v31, v32, v33, v34;
  sub_1BE048A34();
  v27, v35, v36, v37, v38, v39, v40, v41;
  sub_1BE048A44();
  sub_1BE048A64();
  v165 = sub_1BE048994();
  v42 = v170;
  v170(v6, v25);
  sub_1BE048A54();
  sub_1BE048A44();
  v43 = swift_getKeyPath();
  v44 = sub_1BE048964();
  v43, v45, v46, v47, v48, v49, v50, v51;
  sub_1BE048A34();
  v44, v52, v53, v54, v55, v56, v57, v58;
  sub_1BE048A44();
  sub_1BE048A64();
  v164 = sub_1BE048994();
  v42(v6, v173);
  sub_1BE048A54();
  sub_1BE048A44();
  v59 = swift_getKeyPath();
  v60 = sub_1BE048964();
  v59, v61, v62, v63, v64, v65, v66, v67;
  sub_1BE048A34();
  v60, v68, v69, v70, v71, v72, v73, v74;
  sub_1BE048A44();
  sub_1BE048A64();
  v163 = sub_1BE048994();
  v75 = v170;
  v170(v6, v173);
  sub_1BE048A54();
  sub_1BE048A44();
  v76 = swift_getKeyPath();
  v77 = sub_1BE048964();
  v76, v78, v79, v80, v81, v82, v83, v84;
  sub_1BE048A34();
  v77, v85, v86, v87, v88, v89, v90, v91;
  sub_1BE048A44();
  sub_1BE048A64();
  v162 = sub_1BE048994();
  v75(v6, v173);
  sub_1BE048A54();
  sub_1BE048A44();
  v92 = swift_getKeyPath();
  v93 = sub_1BE048964();
  v92, v94, v95, v96, v97, v98, v99, v100;
  sub_1BE048A34();
  v93, v101, v102, v103, v104, v105, v106, v107;
  sub_1BE048A44();
  sub_1BE048A64();
  v161 = sub_1BE048994();
  v108 = v170;
  v170(v6, v173);
  sub_1BE048A54();
  sub_1BE048A44();
  v109 = swift_getKeyPath();
  v110 = sub_1BE048964();
  v109, v111, v112, v113, v114, v115, v116, v117;
  sub_1BE048A34();
  v110, v118, v119, v120, v121, v122, v123, v124;
  sub_1BE048A44();
  sub_1BE048A64();
  v160 = sub_1BE048994();
  v125 = v173;
  v108(v6, v173);
  sub_1BE048A54();
  sub_1BE048A44();
  v126 = swift_getKeyPath();
  v127 = sub_1BE048964();
  v126, v128, v129, v130, v131, v132, v133, v134;
  sub_1BE048A34();
  v127, v135, v136, v137, v138, v139, v140, v141;
  sub_1BE048A44();
  v143 = v167;
  v142 = v168;
  v144 = v169;
  (*(v168 + 104))(v167, *MEMORY[0x1E695A1E0], v169);
  sub_1BE048A24();
  (*(v142 + 8))(v143, v144);
  sub_1BE048A44();
  sub_1BE048A64();
  v145 = sub_1BE048994();
  v170(v6, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A680, &qword_1BE0BABE0);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_1BE0B76F0;
  v147 = v165;
  *(v146 + 32) = v166;
  *(v146 + 40) = v147;
  v148 = v163;
  *(v146 + 48) = v164;
  *(v146 + 56) = v148;
  v149 = v161;
  *(v146 + 64) = v162;
  *(v146 + 72) = v149;
  *(v146 + 80) = v160;
  *(v146 + 88) = v145;
  v150 = sub_1BE048984();
  v146, v151, v152, v153, v154, v155, v156, v157;
  return v150;
}

uint64_t sub_1BD155D20()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0BA730;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1BE0489A4();
  v5, v7, v8, v9, v10, v11, v12, v13;
  return v6;
}

uint64_t sub_1BD155E44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A660, &qword_1BE0BAB98);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - v2;
  sub_1BD15CFFC();
  sub_1BE048A14();
  v21 = sub_1BE048994();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_1BE048A14();
  v20 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v5 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v6 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v7 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v8 = sub_1BE048994();
  v4(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A668, &qword_1BE0BABA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0BA740;
  v10 = v20;
  *(v9 + 32) = v21;
  *(v9 + 40) = v10;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 72) = v8;
  v11 = sub_1BE048984();
  v9, v12, v13, v14, v15, v16, v17, v18;
  return v11;
}

uint64_t sub_1BD156150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A650, &qword_1BE0BAB88);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - v2;
  sub_1BD03548C();
  sub_1BE048A14();
  v20 = sub_1BE048994();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_1BE048A14();
  v5 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v6 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v7 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v8 = sub_1BE048994();
  v4(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A658, &qword_1BE0BAB90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0BA730;
  *(v9 + 32) = v20;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = sub_1BE048984();
  v9, v11, v12, v13, v14, v15, v16, v17;
  return v10;
}

uint64_t sub_1BD15640C(uint64_t a1)
{
  v118 = a1;
  v1 = sub_1BE048974();
  v114 = *(v1 - 8);
  v115 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v113 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A638, &qword_1BE0BAB70);
  v3 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v5 = &v109 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A640, &qword_1BE0BAB78);
  MEMORY[0x1EEE9AC00](v6);
  sub_1BD15D050();
  sub_1BE048A54();
  sub_1BE048A44();
  KeyPath = swift_getKeyPath();
  v119 = sub_1BD030618();
  v8 = sub_1BE048964();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  sub_1BE048A34();
  v8, v16, v17, v18, v19, v20, v21, v22;
  sub_1BE048A44();
  sub_1BE048A64();
  v112 = sub_1BE048994();
  v23 = *(v3 + 8);
  v117 = v3 + 8;
  v24 = v120;
  v23(v5, v120);
  v116 = v23;
  sub_1BE048A54();
  sub_1BE048A44();
  v25 = swift_getKeyPath();
  v26 = sub_1BE048964();
  v25, v27, v28, v29, v30, v31, v32, v33;
  sub_1BE048A34();
  v26, v34, v35, v36, v37, v38, v39, v40;
  sub_1BE048A44();
  sub_1BE048A64();
  v111 = sub_1BE048994();
  v23(v5, v24);
  sub_1BE048A54();
  sub_1BE048A44();
  v41 = swift_getKeyPath();
  v42 = sub_1BE048964();
  v41, v43, v44, v45, v46, v47, v48, v49;
  sub_1BE048A34();
  v42, v50, v51, v52, v53, v54, v55, v56;
  sub_1BE048A44();
  sub_1BE048A64();
  v110 = sub_1BE048994();
  v57 = v5;
  v58 = v5;
  v59 = v116;
  v116(v57, v120);
  sub_1BE048A54();
  sub_1BE048A44();
  v60 = swift_getKeyPath();
  v61 = sub_1BE048964();
  v60, v62, v63, v64, v65, v66, v67, v68;
  sub_1BE048A34();
  v61, v69, v70, v71, v72, v73, v74, v75;
  sub_1BE048A44();
  v76 = v58;
  sub_1BE048A64();
  v109 = sub_1BE048994();
  v59(v58, v120);
  sub_1BE048A54();
  sub_1BE048A44();
  v77 = swift_getKeyPath();
  v78 = sub_1BE048964();
  v77, v79, v80, v81, v82, v83, v84, v85;
  sub_1BE048A34();
  v78, v86, v87, v88, v89, v90, v91, v92;
  sub_1BE048A44();
  v94 = v113;
  v93 = v114;
  v95 = v115;
  (*(v114 + 104))(v113, *MEMORY[0x1E695A1E0], v115);
  sub_1BE048A24();
  (*(v93 + 8))(v94, v95);
  sub_1BE048A44();
  sub_1BE048A64();
  v96 = sub_1BE048994();
  v116(v76, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A648, &qword_1BE0BAB80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1BE0BA730;
  v98 = v111;
  *(v97 + 32) = v112;
  *(v97 + 40) = v98;
  v99 = v109;
  *(v97 + 48) = v110;
  *(v97 + 56) = v99;
  *(v97 + 64) = v96;
  v100 = sub_1BE048984();
  v97, v101, v102, v103, v104, v105, v106, v107;
  return v100;
}

uint64_t sub_1BD156AF4(uint64_t a1)
{
  v82 = a1;
  v1 = sub_1BE048974();
  v79 = *(v1 - 8);
  v80 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v78 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A620, &qword_1BE0BAB30);
  v3 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v5 = &v73 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A628, &qword_1BE0BAB38);
  MEMORY[0x1EEE9AC00](v6);
  sub_1BD15D0A4();
  sub_1BE048A54();
  sub_1BE048A44();
  KeyPath = swift_getKeyPath();
  v81 = sub_1BD030618();
  v8 = sub_1BE048964();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  sub_1BE048A34();
  v8, v16, v17, v18, v19, v20, v21, v22;
  sub_1BE048A44();
  sub_1BE048A64();
  v77 = sub_1BE048994();
  v23 = *(v3 + 8);
  v24 = v75;
  v23(v5, v75);
  v74 = v23;
  sub_1BE048A54();
  sub_1BE048A44();
  v25 = swift_getKeyPath();
  v26 = sub_1BE048964();
  v25, v27, v28, v29, v30, v31, v32, v33;
  sub_1BE048A34();
  v26, v34, v35, v36, v37, v38, v39, v40;
  sub_1BE048A44();
  sub_1BE048A64();
  v76 = sub_1BE048994();
  v41 = v24;
  v23(v5, v24);
  sub_1BE048A54();
  sub_1BE048A44();
  v42 = swift_getKeyPath();
  v43 = sub_1BE048964();
  v42, v44, v45, v46, v47, v48, v49, v50;
  sub_1BE048A34();
  v43, v51, v52, v53, v54, v55, v56, v57;
  sub_1BE048A44();
  v59 = v78;
  v58 = v79;
  v60 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x1E695A1E0], v80);
  sub_1BE048A24();
  (*(v58 + 8))(v59, v60);
  sub_1BE048A44();
  sub_1BE048A64();
  v61 = sub_1BE048994();
  v74(v5, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A630, &qword_1BE0BAB40);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1BE0B98D0;
  v63 = v76;
  *(v62 + 32) = v77;
  *(v62 + 40) = v63;
  *(v62 + 48) = v61;
  v64 = sub_1BE048984();
  v62, v65, v66, v67, v68, v69, v70, v71;
  return v64;
}

uint64_t sub_1BD157008()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  v5 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0BA740;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_1BE0489A4();
  v6, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

uint64_t sub_1BD157154(uint64_t a1)
{
  v146 = a1;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A608, &qword_1BE0BAAF0);
  v1 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v3 = &v137 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A610, &qword_1BE0BAAF8);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BD0373E4();
  sub_1BE048A54();
  sub_1BE048A44();
  KeyPath = swift_getKeyPath();
  v147 = sub_1BD030618();
  v6 = sub_1BE048964();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  sub_1BE048A34();
  v6, v14, v15, v16, v17, v18, v19, v20;
  sub_1BE048A44();
  sub_1BE048A64();
  v143 = sub_1BE048994();
  v21 = v1 + 8;
  v22 = *(v1 + 8);
  v23 = v148;
  v22(v3, v148);
  v144 = v22;
  v145 = v21;
  sub_1BE048A54();
  sub_1BE048A44();
  v24 = swift_getKeyPath();
  v25 = sub_1BE048964();
  v24, v26, v27, v28, v29, v30, v31, v32;
  sub_1BE048A34();
  v25, v33, v34, v35, v36, v37, v38, v39;
  sub_1BE048A44();
  sub_1BE048A64();
  v142 = sub_1BE048994();
  v22(v3, v23);
  sub_1BE048A54();
  sub_1BE048A44();
  v40 = swift_getKeyPath();
  v41 = sub_1BE048964();
  v40, v42, v43, v44, v45, v46, v47, v48;
  sub_1BE048A34();
  v41, v49, v50, v51, v52, v53, v54, v55;
  sub_1BE048A44();
  sub_1BE048A64();
  v141 = sub_1BE048994();
  v144(v3, v148);
  sub_1BE048A54();
  sub_1BE048A44();
  v56 = swift_getKeyPath();
  v57 = sub_1BE048964();
  v56, v58, v59, v60, v61, v62, v63, v64;
  sub_1BE048A34();
  v57, v65, v66, v67, v68, v69, v70, v71;
  sub_1BE048A44();
  sub_1BE048A64();
  v140 = sub_1BE048994();
  v72 = v148;
  v73 = v144;
  v144(v3, v148);
  sub_1BE048A54();
  sub_1BE048A44();
  v74 = swift_getKeyPath();
  v75 = sub_1BE048964();
  v74, v76, v77, v78, v79, v80, v81, v82;
  sub_1BE048A34();
  v75, v83, v84, v85, v86, v87, v88, v89;
  sub_1BE048A44();
  sub_1BE048A64();
  v139 = sub_1BE048994();
  v73(v3, v72);
  sub_1BE048A54();
  sub_1BE048A44();
  v90 = swift_getKeyPath();
  v91 = sub_1BE048964();
  v90, v92, v93, v94, v95, v96, v97, v98;
  sub_1BE048A34();
  v91, v99, v100, v101, v102, v103, v104, v105;
  sub_1BE048A44();
  sub_1BE048A64();
  v138 = sub_1BE048994();
  v106 = v144;
  v144(v3, v148);
  sub_1BE048A54();
  sub_1BE048A44();
  v107 = swift_getKeyPath();
  v108 = sub_1BE048964();
  v107, v109, v110, v111, v112, v113, v114, v115;
  sub_1BE048A34();
  v108, v116, v117, v118, v119, v120, v121, v122;
  sub_1BE048A44();
  sub_1BE048A64();
  v123 = sub_1BE048994();
  v106(v3, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A618, &qword_1BE0BAB00);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1BE0BA750;
  v125 = v142;
  *(v124 + 32) = v143;
  *(v124 + 40) = v125;
  v126 = v140;
  *(v124 + 48) = v141;
  *(v124 + 56) = v126;
  v127 = v138;
  *(v124 + 64) = v139;
  *(v124 + 72) = v127;
  *(v124 + 80) = v123;
  v128 = sub_1BE048984();
  v124, v129, v130, v131, v132, v133, v134, v135;
  return v128;
}

uint64_t sub_1BD157910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5F0, &qword_1BE0BAAB0);
  v3 = *(v2 - 8);
  v209 = v2;
  v210 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v201 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5F8, &qword_1BE0BAAB8);
  MEMORY[0x1EEE9AC00](v6);
  sub_1BD15D0F8();
  sub_1BE048A54();
  sub_1BE048A44();
  KeyPath = swift_getKeyPath();
  v204 = sub_1BD030618();
  v8 = sub_1BE048964();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  sub_1BE048A34();
  v8, v16, v17, v18, v19, v20, v21, v22;
  sub_1BE048A44();
  v23 = swift_getKeyPath();
  sub_1BD15D344();
  v24 = sub_1BE048964();
  v23, v25, v26, v27, v28, v29, v30, v31;
  sub_1BE048A34();
  v24, v32, v33, v34, v35, v36, v37, v38;
  sub_1BE048A44();
  sub_1BE048A64();
  v206 = sub_1BE048994();
  v208 = *(v210 + 8);
  v210 += 8;
  v208(v5, v209);
  sub_1BE048A54();
  sub_1BE048A44();
  v39 = swift_getKeyPath();
  v40 = sub_1BE048964();
  v39, v41, v42, v43, v44, v45, v46, v47;
  sub_1BE048A34();
  v40, v48, v49, v50, v51, v52, v53, v54;
  sub_1BE048A44();
  v55 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5B0, &unk_1EBD39970, &unk_1BE0B9F80, sub_1BD15D3EC);
  v56 = sub_1BE048964();
  v55, v57, v58, v59, v60, v61, v62, v63;
  sub_1BE048A34();
  v56, v64, v65, v66, v67, v68, v69, v70;
  sub_1BE048A44();
  v71 = swift_getKeyPath();
  v72 = sub_1BE048964();
  v71, v73, v74, v75, v76, v77, v78, v79;
  sub_1BE048A34();
  v72, v80, v81, v82, v83, v84, v85, v86;
  sub_1BE048A44();
  sub_1BE048A64();
  v205 = sub_1BE048994();
  v87 = v209;
  v88 = v208;
  v208(v5, v209);
  sub_1BE048A54();
  sub_1BE048A44();
  v89 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A568, &qword_1EBD3A570, &qword_1BE0BA8E0, sub_1BD0EF8C4);
  v90 = sub_1BE048964();
  v89, v91, v92, v93, v94, v95, v96, v97;
  sub_1BE048A34();
  v90, v98, v99, v100, v101, v102, v103, v104;
  sub_1BE048A44();
  v105 = swift_getKeyPath();
  v207 = a1;
  v106 = sub_1BE048964();
  v105, v107, v108, v109, v110, v111, v112, v113;
  sub_1BE048A34();
  v106, v114, v115, v116, v117, v118, v119, v120;
  sub_1BE048A44();
  sub_1BE048A64();
  v204 = sub_1BE048994();
  v88(v5, v87);
  sub_1BE048A54();
  sub_1BE048A44();
  v121 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5C0, &qword_1EBD3A5C8, &qword_1BE0BAA50, sub_1BD15D444);
  v122 = sub_1BE048964();
  v121, v123, v124, v125, v126, v127, v128, v129;
  sub_1BE048A34();
  v122, v130, v131, v132, v133, v134, v135, v136;
  sub_1BE048A44();
  sub_1BE048A64();
  v203 = sub_1BE048994();
  v88(v5, v209);
  sub_1BE048A54();
  sub_1BE048A44();
  v137 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A580, &qword_1EBD3A588, &qword_1BE0BA938, sub_1BD15D398);
  v138 = sub_1BE048964();
  v137, v139, v140, v141, v142, v143, v144, v145;
  sub_1BE048A34();
  v138, v146, v147, v148, v149, v150, v151, v152;
  sub_1BE048A44();
  sub_1BE048A64();
  v202 = sub_1BE048994();
  v153 = v209;
  v208(v5, v209);
  sub_1BE048A54();
  sub_1BE048A44();
  v154 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5D8, &qword_1EBD3A5E0, &qword_1BE0BAAA8, sub_1BD15D588);
  v155 = sub_1BE048964();
  v154, v156, v157, v158, v159, v160, v161, v162;
  sub_1BE048A34();
  v155, v163, v164, v165, v166, v167, v168, v169;
  sub_1BE048A44();
  sub_1BE048A64();
  v201 = sub_1BE048994();
  v170 = v208;
  v208(v5, v153);
  sub_1BE048A54();
  sub_1BE048A44();
  v171 = swift_getKeyPath();
  v172 = sub_1BE048964();
  v171, v173, v174, v175, v176, v177, v178, v179;
  sub_1BE048A34();
  v172, v180, v181, v182, v183, v184, v185, v186;
  sub_1BE048A44();
  sub_1BE048A64();
  v187 = sub_1BE048994();
  v170(v5, v153);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A600, &qword_1BE0BAAC0);
  v188 = swift_allocObject();
  *(v188 + 16) = xmmword_1BE0BA750;
  v189 = v205;
  *(v188 + 32) = v206;
  *(v188 + 40) = v189;
  v190 = v203;
  *(v188 + 48) = v204;
  *(v188 + 56) = v190;
  v191 = v201;
  *(v188 + 64) = v202;
  *(v188 + 72) = v191;
  *(v188 + 80) = v187;
  v192 = sub_1BE048984();
  v188, v193, v194, v195, v196, v197, v198, v199;
  return v192;
}

uint64_t sub_1BD15832C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1BD15D62C(a1, &v9 - v6);
  sub_1BD15D62C(v7, v4);
  sub_1BE048884();
  return sub_1BD15D69C(v7);
}

uint64_t sub_1BD1583F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1BD15D62C(a1, &v9 - v6);
  sub_1BD15D62C(v7, v4);
  sub_1BE048884();
  return sub_1BD15D69C(v7);
}

uint64_t sub_1BD158510()
{
  v0 = sub_1BE048A04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  sub_1BD030618();
  sub_1BE048964();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  sub_1BD15D0F8();
  sub_1BE0489F4();
  v89 = sub_1BE0489E4();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v13 = swift_getKeyPath();
  sub_1BD15D344();
  sub_1BE048964();
  v13, v14, v15, v16, v17, v18, v19, v20;
  sub_1BE0489F4();
  v88 = sub_1BE0489E4();
  v12(v3, v0);
  v21 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5B0, &unk_1EBD39970, &unk_1BE0B9F80, sub_1BD15D3EC);
  sub_1BE048964();
  v21, v22, v23, v24, v25, v26, v27, v28;
  sub_1BE0489F4();
  v87 = sub_1BE0489E4();
  v12(v3, v0);
  v29 = swift_getKeyPath();
  sub_1BE048964();
  v29, v30, v31, v32, v33, v34, v35, v36;
  sub_1BE0489F4();
  v86 = sub_1BE0489E4();
  v37 = v0;
  v12(v3, v0);
  v38 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A568, &qword_1EBD3A570, &qword_1BE0BA8E0, sub_1BD0EF8C4);
  sub_1BE048964();
  v38, v39, v40, v41, v42, v43, v44, v45;
  sub_1BE0489F4();
  v46 = sub_1BE0489E4();
  v12(v3, v37);
  v47 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5C0, &qword_1EBD3A5C8, &qword_1BE0BAA50, sub_1BD15D444);
  sub_1BE048964();
  v47, v48, v49, v50, v51, v52, v53, v54;
  sub_1BE0489F4();
  v55 = sub_1BE0489E4();
  v12(v3, v37);
  v56 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A580, &qword_1EBD3A588, &qword_1BE0BA938, sub_1BD15D398);
  sub_1BE048964();
  v56, v57, v58, v59, v60, v61, v62, v63;
  sub_1BE0489F4();
  v64 = sub_1BE0489E4();
  v12(v3, v37);
  v65 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5D8, &qword_1EBD3A5E0, &qword_1BE0BAAA8, sub_1BD15D588);
  sub_1BE048964();
  v65, v66, v67, v68, v69, v70, v71, v72;
  sub_1BE0489F4();
  v73 = sub_1BE0489E4();
  v12(v3, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4E8, &qword_1BE0BA838);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1BE0B76F0;
  v75 = v88;
  *(v74 + 32) = v89;
  *(v74 + 40) = v75;
  v76 = v86;
  *(v74 + 48) = v87;
  *(v74 + 56) = v76;
  *(v74 + 64) = v46;
  *(v74 + 72) = v55;
  *(v74 + 80) = v64;
  *(v74 + 88) = v73;
  v77 = sub_1BE0489D4();
  v74, v78, v79, v80, v81, v82, v83, v84;
  return v77;
}

uint64_t sub_1BD158AE4()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B98E0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1BE0489A4();
  v4, v6, v7, v8, v9, v10, v11, v12;
  return v5;
}

uint64_t sub_1BD158C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BE0489B4();
  v5 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B6CA0;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v7 = sub_1BE0489A4();
  v6, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

uint64_t sub_1BD158CA4()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B6CA0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_1BE0489A4();
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

uint64_t sub_1BD158D4C()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0BA730;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1BE0489A4();
  v5, v7, v8, v9, v10, v11, v12, v13;
  return v6;
}

uint64_t sub_1BD158E60()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  v5 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0BA740;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_1BE0489A4();
  v6, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

uint64_t sub_1BD158F9C()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B98E0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1BE0489A4();
  v4, v6, v7, v8, v9, v10, v11, v12;
  return v5;
}

uint64_t sub_1BD15909C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A598, &qword_1BE0BA940);
  v1 = *(v0 - 8);
  v68 = v0;
  v69 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v66 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5A0, &qword_1BE0BA948);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BD15D14C();
  sub_1BE048A54();
  sub_1BE048A44();
  KeyPath = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A568, &qword_1EBD3A570, &qword_1BE0BA8E0, sub_1BD0EF8C4);
  v6 = sub_1BE048964();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  sub_1BE048A34();
  v6, v14, v15, v16, v17, v18, v19, v20;
  sub_1BE048A44();
  v21 = swift_getKeyPath();
  sub_1BD15D344();
  v22 = sub_1BE048964();
  v21, v23, v24, v25, v26, v27, v28, v29;
  sub_1BE048A34();
  v22, v30, v31, v32, v33, v34, v35, v36;
  sub_1BE048A44();
  sub_1BE048A64();
  v67 = sub_1BE048994();
  v37 = v68;
  v38 = *(v69 + 8);
  v69 += 8;
  v38(v3, v68);
  sub_1BE048A54();
  sub_1BE048A44();
  v39 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A580, &qword_1EBD3A588, &qword_1BE0BA938, sub_1BD15D398);
  v40 = sub_1BE048964();
  v39, v41, v42, v43, v44, v45, v46, v47;
  sub_1BE048A34();
  v40, v48, v49, v50, v51, v52, v53, v54;
  sub_1BE048A44();
  sub_1BE048A64();
  v55 = sub_1BE048994();
  v38(v3, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5A8, &qword_1BE0BA950);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1BE0B6CA0;
  *(v56 + 32) = v67;
  *(v56 + 40) = v55;
  v57 = sub_1BE048984();
  v56, v58, v59, v60, v61, v62, v63, v64;
  return v57;
}

uint64_t sub_1BD159478()
{
  v0 = sub_1BE048A04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A568, &qword_1EBD3A570, &qword_1BE0BA8E0, sub_1BD0EF8C4);
  sub_1BE048964();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  sub_1BD15D14C();
  sub_1BE0489F4();
  v12 = sub_1BE0489E4();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v14 = swift_getKeyPath();
  sub_1BD15D344();
  sub_1BE048964();
  v14, v15, v16, v17, v18, v19, v20, v21;
  sub_1BE0489F4();
  v22 = sub_1BE0489E4();
  v13(v3, v0);
  v23 = swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A580, &qword_1EBD3A588, &qword_1BE0BA938, sub_1BD15D398);
  sub_1BE048964();
  v23, v24, v25, v26, v27, v28, v29, v30;
  sub_1BE0489F4();
  v31 = sub_1BE0489E4();
  v13(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4E8, &qword_1BE0BA838);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BE0B98D0;
  *(v32 + 32) = v12;
  *(v32 + 40) = v22;
  *(v32 + 48) = v31;
  v33 = sub_1BE0489D4();
  v32, v34, v35, v36, v37, v38, v39, v40;
  return v33;
}

uint64_t sub_1BD159740()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0BA730;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1BE0489A4();
  v5, v7, v8, v9, v10, v11, v12, v13;
  return v6;
}

uint64_t sub_1BD159844()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0BA730;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1BE0489A4();
  v5, v7, v8, v9, v10, v11, v12, v13;
  return v6;
}

uint64_t sub_1BD159970(uint64_t a1)
{
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0B98E0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = v3;
  *(v5 + 56) = v4;
  v6 = sub_1BE0489A4();
  v5, v7, v8, v9, v10, v11, v12, v13;
  return v6;
}

uint64_t sub_1BD159A74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A558, &qword_1BE0BA8A8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - v2;
  sub_1BD15D1A0();
  sub_1BE048A14();
  v33 = sub_1BE048994();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_1BE048A14();
  v32 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v31 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v30 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v29 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v28 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v27 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v26 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v25 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v24 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v5 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v6 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v7 = sub_1BE048994();
  v4(v3, v0);
  sub_1BE048A14();
  v8 = sub_1BE048994();
  v4(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A560, &qword_1BE0BA8B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0BA760;
  v10 = v32;
  *(v9 + 32) = v33;
  *(v9 + 40) = v10;
  v11 = v30;
  *(v9 + 48) = v31;
  *(v9 + 56) = v11;
  v12 = v28;
  *(v9 + 64) = v29;
  *(v9 + 72) = v12;
  v13 = v26;
  *(v9 + 80) = v27;
  *(v9 + 88) = v13;
  v14 = v24;
  *(v9 + 96) = v25;
  *(v9 + 104) = v14;
  *(v9 + 112) = v5;
  *(v9 + 120) = v6;
  *(v9 + 128) = v7;
  *(v9 + 136) = v8;
  v15 = sub_1BE048984();
  v9, v16, v17, v18, v19, v20, v21, v22;
  return v15;
}

uint64_t sub_1BD15A014()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A548, &qword_1BE0BA898);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - v2;
  sub_1BD15D1F4();
  sub_1BE048A14();
  v4 = sub_1BE048994();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_1BE048A14();
  v6 = sub_1BE048994();
  v5(v3, v0);
  sub_1BE048A14();
  v7 = sub_1BE048994();
  v5(v3, v0);
  sub_1BE048A14();
  v8 = sub_1BE048994();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A550, &qword_1BE0BA8A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B98E0;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = sub_1BE048984();
  v9, v11, v12, v13, v14, v15, v16, v17;
  return v10;
}

uint64_t sub_1BD15A288()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A530, &qword_1BE0BA880);
  v73 = *(v0 - 8);
  v74 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v55 - v1;
  v3 = sub_1BE048974();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A538, &qword_1BE0BA888);
  MEMORY[0x1EEE9AC00](v7);
  sub_1BD0353D4();
  sub_1BE048A54();
  sub_1BE048A44();
  v8 = *MEMORY[0x1E695A1E0];
  v68 = *(v4 + 104);
  v69 = v3;
  v75 = v4 + 104;
  v67 = v8;
  v68(v6, v8, v3);
  sub_1BE048A24();
  v9 = *(v4 + 8);
  v71 = v4 + 8;
  v72 = v9;
  v9(v6, v3);
  sub_1BE048A44();
  sub_1BE048A64();
  v65 = sub_1BE048994();
  v10 = v74;
  v12 = v73 + 8;
  v11 = *(v73 + 8);
  v11(v2, v74);
  v73 = v12;
  sub_1BE048A14();
  v64 = sub_1BE048994();
  v11(v2, v10);
  v13 = v11;
  v70 = v11;
  sub_1BE048A54();
  sub_1BE048A44();
  v15 = v68;
  v14 = v69;
  v68(v6, v8, v69);
  sub_1BE048A24();
  v72(v6, v14);
  sub_1BE048A44();
  sub_1BE048A64();
  v63 = sub_1BE048994();
  v16 = v74;
  v13(v2, v74);
  sub_1BE048A54();
  sub_1BE048A44();
  v17 = v69;
  v15(v6, v67, v69);
  sub_1BE048A24();
  v18 = v72;
  v72(v6, v17);
  sub_1BE048A44();
  sub_1BE048A64();
  v62 = sub_1BE048994();
  v70(v2, v16);
  sub_1BE048A54();
  sub_1BE048A44();
  v66 = v6;
  v19 = v67;
  v20 = v17;
  v21 = v17;
  v22 = v68;
  v68(v6, v67, v21);
  sub_1BE048A24();
  v18(v6, v20);
  sub_1BE048A44();
  sub_1BE048A64();
  v61 = sub_1BE048994();
  v70(v2, v74);
  sub_1BE048A54();
  sub_1BE048A44();
  v23 = v66;
  v24 = v19;
  v25 = v69;
  v22(v66, v24, v69);
  sub_1BE048A24();
  v72(v23, v25);
  sub_1BE048A44();
  sub_1BE048A64();
  v60 = sub_1BE048994();
  v26 = v74;
  v27 = v70;
  v70(v2, v74);
  sub_1BE048A14();
  v59 = sub_1BE048994();
  v27(v2, v26);
  sub_1BE048A14();
  v58 = sub_1BE048994();
  v27(v2, v26);
  sub_1BE048A14();
  v57 = sub_1BE048994();
  v27(v2, v26);
  sub_1BE048A54();
  sub_1BE048A44();
  v28 = v66;
  v29 = v67;
  v30 = v68;
  v31 = v69;
  v68(v66, v67, v69);
  sub_1BE048A24();
  v32 = v31;
  v33 = v72;
  v72(v28, v32);
  sub_1BE048A44();
  sub_1BE048A64();
  v56 = sub_1BE048994();
  v70(v2, v74);
  sub_1BE048A54();
  sub_1BE048A44();
  v34 = v29;
  v35 = v69;
  v30(v28, v34, v69);
  sub_1BE048A24();
  v36 = v35;
  v33(v28, v35);
  sub_1BE048A44();
  sub_1BE048A64();
  v55 = sub_1BE048994();
  v37 = v74;
  v38 = v70;
  v70(v2, v74);
  sub_1BE048A54();
  sub_1BE048A44();
  v68(v28, v67, v36);
  sub_1BE048A24();
  v72(v28, v36);
  sub_1BE048A44();
  sub_1BE048A64();
  v39 = sub_1BE048994();
  v38(v2, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A540, &qword_1BE0BA890);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BE0BA770;
  v41 = v64;
  *(v40 + 32) = v65;
  *(v40 + 40) = v41;
  v42 = v62;
  *(v40 + 48) = v63;
  *(v40 + 56) = v42;
  v43 = v60;
  *(v40 + 64) = v61;
  *(v40 + 72) = v43;
  v44 = v58;
  *(v40 + 80) = v59;
  *(v40 + 88) = v44;
  v45 = v56;
  *(v40 + 96) = v57;
  *(v40 + 104) = v45;
  *(v40 + 112) = v55;
  *(v40 + 120) = v39;
  v46 = sub_1BE048984();
  v40, v47, v48, v49, v50, v51, v52, v53;
  return v46;
}

uint64_t sub_1BD15ACDC()
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A518, &qword_1BE0BA868);
  v47 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v1 = &v32 - v0;
  v2 = sub_1BE048974();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A520, &qword_1BE0BA870);
  MEMORY[0x1EEE9AC00](v6);
  sub_1BD15D248();
  sub_1BE048A54();
  sub_1BE048A44();
  v7 = *MEMORY[0x1E695A1E0];
  v45 = *(v3 + 104);
  v46 = v3 + 104;
  v45(v5, v7, v2);
  sub_1BE048A24();
  v8 = *(v3 + 8);
  v40 = v3 + 8;
  v43 = v8;
  v8(v5, v2);
  sub_1BE048A44();
  sub_1BE048A64();
  v37 = sub_1BE048994();
  v44 = *(v47 + 8);
  v47 += 8;
  v44(v1, v41);
  sub_1BE048A54();
  sub_1BE048A44();
  v42 = v7;
  v39 = v2;
  v45(v5, v7, v2);
  sub_1BE048A24();
  v43(v5, v2);
  sub_1BE048A44();
  sub_1BE048A64();
  v36 = sub_1BE048994();
  v9 = v41;
  v44(v1, v41);
  sub_1BE048A54();
  sub_1BE048A44();
  v38 = v5;
  v10 = v7;
  v11 = v39;
  v12 = v45;
  v45(v5, v10, v39);
  sub_1BE048A24();
  v13 = v43;
  v43(v5, v11);
  sub_1BE048A44();
  sub_1BE048A64();
  v35 = sub_1BE048994();
  v44(v1, v9);
  sub_1BE048A54();
  sub_1BE048A44();
  v14 = v38;
  v12(v38, v42, v11);
  sub_1BE048A24();
  v13(v14, v11);
  sub_1BE048A44();
  sub_1BE048A64();
  v34 = sub_1BE048994();
  v15 = v44;
  v44(v1, v9);
  sub_1BE048A14();
  v33 = sub_1BE048994();
  v15(v1, v9);
  sub_1BE048A14();
  v32 = sub_1BE048994();
  v15(v1, v9);
  sub_1BE048A54();
  sub_1BE048A44();
  v17 = v38;
  v16 = v39;
  v45(v38, v42, v39);
  sub_1BE048A24();
  v43(v17, v16);
  sub_1BE048A44();
  sub_1BE048A64();
  v18 = sub_1BE048994();
  v15(v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A528, &qword_1BE0BA878);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BE0BA750;
  v20 = v36;
  *(v19 + 32) = v37;
  *(v19 + 40) = v20;
  v21 = v34;
  *(v19 + 48) = v35;
  *(v19 + 56) = v21;
  v22 = v32;
  *(v19 + 64) = v33;
  *(v19 + 72) = v22;
  *(v19 + 80) = v18;
  v23 = sub_1BE048984();
  v19, v24, v25, v26, v27, v28, v29, v30;
  return v23;
}

uint64_t sub_1BD15B3EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A508, &qword_1BE0BA858);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  sub_1BD15D29C();
  sub_1BE048A14();
  v4 = sub_1BE048994();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_1BE048A14();
  v6 = sub_1BE048994();
  v5(v3, v0);
  sub_1BE048A14();
  v7 = sub_1BE048994();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A510, &qword_1BE0BA860);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B98D0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_1BE048984();
  v8, v10, v11, v12, v13, v14, v15, v16;
  return v9;
}

uint64_t sub_1BD15B604(uint64_t a1)
{
  v136 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4F0, &qword_1BE0BA840);
  MEMORY[0x1EEE9AC00](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4F8, &qword_1BE0BA848);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v124 - v4;
  sub_1BD036728();
  sub_1BE048A14();
  v135 = sub_1BE048994();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v139 = v6;
  sub_1BE048A14();
  v134 = sub_1BE048994();
  v6(v5, v2);
  sub_1BE048A54();
  sub_1BE048A44();
  KeyPath = swift_getKeyPath();
  v124 = sub_1BD030618();
  v8 = sub_1BE048964();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  sub_1BE048A34();
  v8, v16, v17, v18, v19, v20, v21, v22;
  v131 = "Select default card";
  sub_1BE048A44();
  sub_1BE048A64();
  v133 = sub_1BE048994();
  v137 = v3 + 8;
  v138 = v2;
  v23 = v139;
  v139(v5, v2);
  sub_1BE048A14();
  v132 = sub_1BE048994();
  v23(v5, v2);
  sub_1BE048A54();
  sub_1BE048A44();
  v24 = swift_getKeyPath();
  v25 = sub_1BE048964();
  v24, v26, v27, v28, v29, v30, v31, v32;
  sub_1BE048A34();
  v25, v33, v34, v35, v36, v37, v38, v39;
  sub_1BE048A44();
  sub_1BE048A64();
  v131 = sub_1BE048994();
  v139(v5, v138);
  sub_1BE048A54();
  sub_1BE048A44();
  v40 = swift_getKeyPath();
  v41 = sub_1BE048964();
  v40, v42, v43, v44, v45, v46, v47, v48;
  sub_1BE048A34();
  v41, v49, v50, v51, v52, v53, v54, v55;
  sub_1BE048A44();
  sub_1BE048A64();
  v130 = sub_1BE048994();
  v56 = v138;
  v57 = v139;
  v139(v5, v138);
  sub_1BE048A14();
  v129 = sub_1BE048994();
  v57(v5, v56);
  sub_1BE048A14();
  v128 = sub_1BE048994();
  v57(v5, v56);
  sub_1BE048A54();
  sub_1BE048A44();
  v58 = swift_getKeyPath();
  v59 = sub_1BE048964();
  v58, v60, v61, v62, v63, v64, v65, v66;
  sub_1BE048A34();
  v59, v67, v68, v69, v70, v71, v72, v73;
  sub_1BE048A44();
  sub_1BE048A64();
  v127 = sub_1BE048994();
  v139(v5, v138);
  sub_1BE048A54();
  sub_1BE048A44();
  v74 = swift_getKeyPath();
  v75 = sub_1BE048964();
  v74, v76, v77, v78, v79, v80, v81, v82;
  sub_1BE048A34();
  v75, v83, v84, v85, v86, v87, v88, v89;
  sub_1BE048A44();
  sub_1BE048A64();
  v126 = sub_1BE048994();
  v91 = v138;
  v90 = v139;
  v139(v5, v138);
  sub_1BE048A14();
  v125 = sub_1BE048994();
  v90(v5, v91);
  sub_1BE048A54();
  sub_1BE048A44();
  v92 = swift_getKeyPath();
  v93 = sub_1BE048964();
  v92, v94, v95, v96, v97, v98, v99, v100;
  sub_1BE048A34();
  v93, v101, v102, v103, v104, v105, v106, v107;
  sub_1BE048A44();
  sub_1BE048A64();
  v108 = sub_1BE048994();
  v139(v5, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A500, &qword_1BE0BA850);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1BE0BA770;
  v110 = v134;
  *(v109 + 32) = v135;
  *(v109 + 40) = v110;
  v111 = v132;
  *(v109 + 48) = v133;
  *(v109 + 56) = v111;
  v112 = v130;
  *(v109 + 64) = v131;
  *(v109 + 72) = v112;
  v113 = v128;
  *(v109 + 80) = v129;
  *(v109 + 88) = v113;
  v114 = v126;
  *(v109 + 96) = v127;
  *(v109 + 104) = v114;
  *(v109 + 112) = v125;
  *(v109 + 120) = v108;
  v115 = sub_1BE048984();
  v109, v116, v117, v118, v119, v120, v121, v122;
  return v115;
}

uint64_t sub_1BD15BEE4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = sub_1BE048A04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  sub_1BD030618();
  sub_1BE048964();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  a3();
  sub_1BE0489F4();
  v17 = sub_1BE0489E4();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4E8, &qword_1BE0BA838);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BE0B69E0;
  *(v18 + 32) = v17;
  v19 = sub_1BE0489D4();
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19;
}
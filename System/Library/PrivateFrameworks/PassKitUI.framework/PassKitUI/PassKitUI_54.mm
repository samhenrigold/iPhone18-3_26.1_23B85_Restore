void PKDataReleaseViewController.dataReleaseCompletedWithError(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController);
  if (a1)
  {
    v3 = v2;
    v4 = sub_1BE04A844();
  }

  else
  {
    v5 = v2;
    v4 = 0;
  }

  v6 = v4;
  [v2 dataReleaseCompletedWithError_];
}

void PKDataReleaseViewController.preferredContentSizeDidChange(forChildContentContainer:)(uint64_t a1)
{
  v33.receiver = v1;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, sel_preferredContentSizeDidChangeForChildContentContainer_, a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isEscapingClosureAtFileLocation = Strong;
    if (*(Strong + OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_isPresentationTransitionFinished) == 1)
    {
      v5 = swift_allocObject();
      v5[2] = isEscapingClosureAtFileLocation;
      v6 = swift_allocObject();
      v6[2] = sub_1BD5BB948;
      v6[3] = v5;
      v31[4] = sub_1BD214190;
      v32 = v6;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 1107296256;
      v31[2] = sub_1BD5B974C;
      v31[3] = &block_descriptor_134;
      v7 = _Block_copy(v31);
      v8 = v32;
      v9 = isEscapingClosureAtFileLocation;
      sub_1BE048964();
      v8, v10, v11, v12, v13, v14, v15, v16;
      [v9 animateChanges_];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
      v5, v17, v18, v19, v20, v21, v22, v23;
      v6, v24, v25, v26, v27, v28, v29, v30;
      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    [isEscapingClosureAtFileLocation invalidateDetents];
  }
}

void sub_1BD5BA8A4()
{
  [*&v0[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController] preferredContentSize];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong containerView];

    if (v3)
    {
      v4 = &v0[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_exclusionRect];
      if (CGRectIsNull(*&v0[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_exclusionRect]))
      {
      }

      else
      {
        [v3 bounds];
        CGRectGetHeight(v7);
        CGRectGetMaxY(*v4);
        v5 = [v0 view];
        if (v5)
        {
          v6 = v5;
          [v5 safeAreaInsets];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

id PKDataReleaseViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id PKDataReleaseViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id PKDataReleaseViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
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

void *PKDataReleaseViewController.dataReleaseContentViewController(_:didAuthorizeWithExternalAuthorizationData:dataToRelease:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04AAB4();
    [v7 dataReleaseViewController:v4 didAuthorizeWithExternalAuthorizationData:v8 dataToRelease:a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

void PKDataReleaseViewController.dataReleaseContentViewController(_:didFinishWithError:)(void *a1, void *a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a2;
  v17[4] = sub_1BD5BB958;
  v18 = v5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1BD126964;
  v17[3] = &block_descriptor_9_6;
  v6 = _Block_copy(v17);
  v7 = v18;
  v8 = v2;
  v9 = a2;
  v7, v10, v11, v12, v13, v14, v15, v16;
  [a1 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

void *sub_1BD5BAF1C(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if (a2)
    {
      a2 = sub_1BE04A844();
    }

    [v5 dataReleaseViewController:a1 didDismissWithError:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *PKDataReleaseViewController.dataReleaseContentViewController(_:didResolveTo:)(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 dataReleaseViewController:v2 didResolveToMerchant:a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall PKDataReleaseViewController.dataReleaseContentViewControllerDidChangePhysicalButtonState(_:)(PKDataReleaseContentViewController *a1)
{
  if (!PKUserIntentIsAvailable())
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if ([*&v1[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController] shouldShowPhysicalButton])
  {
    v2 = [v1 isBeingDismissed];
    v3 = &Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    if (*&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView])
    {
      v4 = v2 ^ 1;
      if ([*&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView] isAnimating] == v4)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (!v2)
    {
      v4 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v3 = &Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    v5 = *&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    if (v5 && ([v5 isAnimating] & 1) != 0)
    {
      v4 = 0;
LABEL_13:
      [*v3 setAnimating_];
      sub_1BD5BA1C8();
    }
  }

LABEL_14:
}

id sub_1BD5BB3C4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD818]) initWithVariant_];
  result = [v0 setFlexible_];
  qword_1EBD4BE80 = v0;
  return result;
}

id sub_1BD5BB418(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_isPresentationTransitionFinished] = 0;
  if (PKUserIntentIsAvailable())
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69AD308]) initWithStyle_];
    *&v3[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = sub_1BE052404();
      v10 = PKLocalizedIdentityString(v9);

      [v8 setInstruction_];
    }
  }

  else
  {
    *&v3[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView] = 0;
  }

  v14.receiver = v3;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_initWithPresentedViewController_presentingViewController_, a1, a2);
  [v11 _setAllowsDraggingToDismiss_];
  if (qword_1EBD36CA8 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBD4BE80;
  [v11 _setLargeBackground_];
  [v11 _setNonLargeBackground_];

  return v11;
}

void sub_1BD5BB600()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 presentedViewController];
  v3 = [v2 view];

  if (v3)
  {
    [v3 layoutIfNeeded];

    v8.receiver = v0;
    v8.super_class = ObjectType;
    objc_msgSendSuper2(&v8, sel_presentationTransitionWillBegin);
    v4 = *&v0[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 containerView];
      if (v6)
      {
        v7 = v6;
        [v6 insertSubview:v5 atIndex:0];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD5BB824(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return *MEMORY[0x1E69DE3C0];
  }

  v3 = Strong;
  sub_1BD5BA8A4();
  v5 = v4;

  return v5;
}

uint64_t sub_1BD5BB92C(uint64_t result)
{
  if ((result - 1) >= 4 && result != -1)
  {
    return 0;
  }

  return result;
}

void *_s9PassKitUI27PKDataReleaseViewControllerC012presentationG10DidDismissyySo014UIPresentationG0CF_0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_1BD5BBCE4();
    v3 = swift_allocError();
    *v4 = 2;
    v5 = sub_1BE04A844();

    [v2 dataReleaseViewController:v0 didDismissWithError:v5];

    return swift_unknownObjectRelease();
  }

  return result;
}

id _s9PassKitUI27PKDataReleaseViewControllerC012presentationG012forPresented10presenting6sourceSo014UIPresentationG0CSgSo06UIViewG0C_ALSgALtF_0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(type metadata accessor for PKDataReleaseViewController.PresentationController()) initWithPresentedViewController:a1 presentingViewController:a2];
  swift_unknownObjectWeakAssign();
  v4 = v3;
  [v4 setDelegate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0B7020;
  sub_1BD0E5E8C(0, &unk_1EBD43AF0, 0x1E69DCF58);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  v6 = sub_1BE052F44();

  *(v5 + 32) = v6;
  v7 = sub_1BE052724();
  v5, v8, v9, v10, v11, v12, v13, v14;
  [v4 setDetents_];

  return v3;
}

unint64_t sub_1BD5BBB84()
{
  result = qword_1EBD4BEB8;
  if (!qword_1EBD4BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BEB8);
  }

  return result;
}

unint64_t sub_1BD5BBBDC()
{
  result = qword_1EBD4BEC0;
  if (!qword_1EBD4BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BEC0);
  }

  return result;
}

unint64_t sub_1BD5BBC34()
{
  result = qword_1EBD4BEC8;
  if (!qword_1EBD4BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BEC8);
  }

  return result;
}

unint64_t sub_1BD5BBC8C()
{
  result = qword_1EBD4BED0;
  if (!qword_1EBD4BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BED0);
  }

  return result;
}

unint64_t sub_1BD5BBCE4()
{
  result = qword_1EBD4BEE0;
  if (!qword_1EBD4BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BEE0);
  }

  return result;
}

uint64_t objectdestroy_5Tm_2()
{

  return swift_deallocObject();
}

unint64_t sub_1BD5BBDFC()
{
  result = qword_1EBD4BFB8;
  if (!qword_1EBD4BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BFB8);
  }

  return result;
}

uint64_t sub_1BD5BBE7C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C088, &unk_1BE0E5610);
  sub_1BE0516C4();
  return v3;
}

uint64_t sub_1BD5BBECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v75 = a6;
  v74 = a5;
  v78 = a3;
  v79 = a4;
  v82 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C068, &qword_1BE0E55D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1BE04E924();
  v10 = sub_1BE04EC14();
  v80 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v73 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C070, &qword_1BE0E55D8);
  v12 = sub_1BE04EBD4();
  v81 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v73 - v15;
  v16 = sub_1BD5BBE7C(a1, a2);
  v18 = v17;
  v20 = v19;
  KeyPath = swift_getKeyPath();
  v91 = v16;
  v92 = v18;
  v93 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C078, &qword_1BE0E55E0);
  sub_1BE051904();
  v20, v22, v23, v24, v25, v26, v27, v28;
  v18, v29, v30, v31, v32, v33, v34, v35;
  KeyPath, v36, v37, v38, v39, v40, v41, v42;
  v16, v43, v44, v45, v46, v47, v48, v49;
  v83 = v74;
  v84 = v75;
  v85 = a1;
  v86 = a2;
  v87 = v78;
  v88 = v79;
  v50 = v73;
  sub_1BE04EBE4();
  v51 = swift_getKeyPath();
  v91 = a1;
  v92 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C088, &unk_1BE0E5610);
  sub_1BE0516A4();
  v52 = v94;
  v91 = v94;
  WitnessTable = swift_getWitnessTable();
  v54 = v76;
  sub_1BE0508C4();
  v52, v55, v56, v57, v58, v59, v60, v61;
  v51, v62, v63, v64, v65, v66, v67, v68;
  (*(v80 + 8))(v50, v10);
  v69 = sub_1BD5BCC90();
  v89 = WitnessTable;
  v90 = v69;
  swift_getWitnessTable();
  v70 = v77;
  sub_1BD147308();
  v71 = *(v81 + 8);
  v71(v54, v12);
  sub_1BD147308();
  return (v71)(v70, v12);
}

uint64_t sub_1BD5BC2D4(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v27 = v13;
  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C088, &unk_1BE0E5610);
  sub_1BE0516A4();
  v15 = v26;
  a3(v26);
  v15, v16, v17, v18, v19, v20, v21, v22;
  sub_1BD147308();
  v23 = *(v7 + 8);
  v23(v9, a5);
  sub_1BD147308();
  return (v23)(v12, a5);
}

uint64_t sub_1BD5BC450()
{
  sub_1BD5BCCF4();
  sub_1BE04F3E4();
  return v1;
}

uint64_t sub_1BD5BC48C(uint64_t *a1)
{
  sub_1BD5BCCF4();
  sub_1BE048964();
  return sub_1BE04F3F4();
}

uint64_t sub_1BD5BC4EC(uint64_t a1)
{
  type metadata accessor for PushNavigationStackModel(0);
  sub_1BE051694();
  return v2;
}

uint64_t sub_1BD5BC554@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v14 = v1;
  sub_1BD5BCBA0(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel, &unk_1BE0E54CC);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel__navigationPath;
  swift_beginAccess();
  v12 = sub_1BE04E924();
  return (*(*(v12 - 8) + 16))(a1, v14 + v11, v12);
}

uint64_t sub_1BD5BC64C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04E924();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel__navigationPath;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1BD5BCBA0(qword_1EBD4BFE0, MEMORY[0x1E697C0B0], MEMORY[0x1E697C0B8]);
  v21[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v21[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v21[0];
    v21[-2] = v2;
    v21[-1] = v12;
    v21[1] = v2;
    sub_1BD5BCBA0(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel, &unk_1BE0E54CC);
    sub_1BE04B584();
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
  }

  return (v10)(v21[0], v4);
}

uint64_t sub_1BD5BC8EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel__navigationPath;
  swift_beginAccess();
  v5 = sub_1BE04E924();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1BD5BC988()
{
  v1 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel__navigationPath;
  v2 = sub_1BE04E924();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel___observationRegistrar;
  v4 = sub_1BE04B5D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PushNavigationStackModel(uint64_t a1)
{
  result = qword_1EBD4BFD0;
  if (!qword_1EBD4BFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD5BCAB8(uint64_t a1)
{
  result = sub_1BE04E924();
  if (v2 <= 0x3F)
  {
    result = sub_1BE04B5D4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BD5BCBA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD5BCBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BD5BCC90()
{
  result = qword_1EBD4C080;
  if (!qword_1EBD4C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C070, &qword_1BE0E55D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C080);
  }

  return result;
}

unint64_t sub_1BD5BCCF4()
{
  result = qword_1EBD4C090;
  if (!qword_1EBD4C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C090);
  }

  return result;
}

uint64_t sub_1BD5BCD5C@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C0F8, &qword_1BE0E5790);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v70 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C100, &qword_1BE0E5798);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C108, &qword_1BE0E57A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C110, &qword_1BE0E57A8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C118, &qword_1BE0E57B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C120, &qword_1BE0E57B8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v71 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v64 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C128, &unk_1BE0E57C0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v72 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64 - v30;
  v66 = &v64 - v30;
  sub_1BD5BD42C(&v64 - v30);
  sub_1BD5BD7C8(v21);
  v80 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390, &qword_1BE0F2820);
  sub_1BE0516C4();
  v33 = v77;
  v32 = v78;
  v34 = v79;
  v65 = v26;
  sub_1BD6FC9AC(v77, v78, v79, v26);
  v32, v35, v36, v37, v38, v39, v40, v41;
  v33, v42, v43, v44, v45, v46, v47, v48;

  sub_1BD0DE53C(v21, &qword_1EBD4C118, &qword_1BE0E57B0);
  v64 = v18;
  sub_1BD5BDC00(v18);
  v49 = v73;
  sub_1BD5BDE4C(v73);
  v50 = v75;
  sub_1BD5BE2A8(v75);
  v51 = v67;
  sub_1BD5BE4B0(v67);
  v52 = v31;
  v53 = v72;
  sub_1BD0DE19C(v52, v72, &qword_1EBD4C128, &unk_1BE0E57C0);
  v54 = v26;
  v55 = v71;
  sub_1BD0DE19C(v54, v71, &qword_1EBD4C120, &qword_1BE0E57B8);
  v56 = v74;
  sub_1BD0DE19C(v18, v74, &qword_1EBD4C110, &qword_1BE0E57A8);
  v57 = v49;
  v58 = v76;
  sub_1BD0DE19C(v57, v76, &qword_1EBD4C108, &qword_1BE0E57A0);
  v59 = v68;
  sub_1BD0DE19C(v50, v68, &qword_1EBD4C100, &qword_1BE0E5798);
  v60 = v70;
  sub_1BD0DE19C(v51, v70, &qword_1EBD4C0F8, &qword_1BE0E5790);
  v61 = v69;
  sub_1BD0DE19C(v53, v69, &qword_1EBD4C128, &unk_1BE0E57C0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C130, &qword_1BE0E57D0);
  sub_1BD0DE19C(v55, v61 + v62[12], &qword_1EBD4C120, &qword_1BE0E57B8);
  sub_1BD0DE19C(v56, v61 + v62[16], &qword_1EBD4C110, &qword_1BE0E57A8);
  sub_1BD0DE19C(v58, v61 + v62[20], &qword_1EBD4C108, &qword_1BE0E57A0);
  sub_1BD0DE19C(v59, v61 + v62[24], &qword_1EBD4C100, &qword_1BE0E5798);
  sub_1BD0DE19C(v60, v61 + v62[28], &qword_1EBD4C0F8, &qword_1BE0E5790);
  sub_1BD0DE53C(v51, &qword_1EBD4C0F8, &qword_1BE0E5790);
  sub_1BD0DE53C(v75, &qword_1EBD4C100, &qword_1BE0E5798);
  sub_1BD0DE53C(v73, &qword_1EBD4C108, &qword_1BE0E57A0);
  sub_1BD0DE53C(v64, &qword_1EBD4C110, &qword_1BE0E57A8);
  sub_1BD0DE53C(v65, &qword_1EBD4C120, &qword_1BE0E57B8);
  sub_1BD0DE53C(v66, &qword_1EBD4C128, &unk_1BE0E57C0);
  sub_1BD0DE53C(v60, &qword_1EBD4C0F8, &qword_1BE0E5790);
  sub_1BD0DE53C(v59, &qword_1EBD4C100, &qword_1BE0E5798);
  sub_1BD0DE53C(v76, &qword_1EBD4C108, &qword_1BE0E57A0);
  sub_1BD0DE53C(v74, &qword_1EBD4C110, &qword_1BE0E57A8);
  sub_1BD0DE53C(v71, &qword_1EBD4C120, &qword_1BE0E57B8);
  return sub_1BD0DE53C(v72, &qword_1EBD4C128, &unk_1BE0E57C0);
}

uint64_t sub_1BD5BD42C@<X0>(uint64_t a1@<X8>)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1E8, &qword_1BE0E59A8);
  v3 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v65 - v4;
  v69 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140, &qword_1BE0E57E8);
  sub_1BE0516A4();
  v5 = v68;
  KeyPath = swift_getKeyPath();
  *&v69 = v5;
  sub_1BD5C343C();
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v14 = *&v5[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction];
  v15 = v14;
  v5, v16, v17, v18, v19, v20, v21, v22;
  if (!v14)
  {
    goto LABEL_14;
  }

  v66 = a1;
  v69 = *v1;
  sub_1BE0516A4();
  v23 = v68;
  v24 = swift_getKeyPath();
  *&v69 = v23;
  sub_1BE04B594();
  v24, v25, v26, v27, v28, v29, v30, v31;
  v32 = *&v23[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord];
  v33 = v32;
  v23, v34, v35, v36, v37, v38, v39, v40;
  if (!v32)
  {
    goto LABEL_8;
  }

  v69 = *v1;
  sub_1BE0516A4();
  v41 = v68;
  v42 = swift_getKeyPath();
  *&v69 = v41;
  sub_1BE04B594();
  v42, v43, v44, v45, v46, v47, v48, v49;
  v50 = *&v41[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria];
  v51 = v50;
  v41, v52, v53, v54, v55, v56, v57, v58;
  if (!v50)
  {
    v51 = v15;
    v15 = v33;
    a1 = v66;
LABEL_12:

    goto LABEL_13;
  }

  v59 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(v32, v15, v50);
  if (v59 > 1)
  {
    a1 = v66;
    if (v59 != 2)
    {
      if (v59 != 3)
      {
        goto LABEL_7;
      }

LABEL_17:
      MEMORY[0x1EEE9AC00](v59);
      *(&v65 - 4) = v33;
      *(&v65 - 3) = v51;
      *(&v65 - 2) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1F0, &qword_1BE0E59B0);
      sub_1BD5C386C();
      v63 = v65;
      sub_1BE051A44();

      v64 = v67;
      (*(v3 + 32))(a1, v63, v67);
      v61 = v64;
      v60 = 0;
      return (*(v3 + 56))(a1, v60, 1, v61);
    }

    goto LABEL_11;
  }

  a1 = v66;
  if (!v59)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v59 == 1)
  {
    goto LABEL_17;
  }

LABEL_7:
  *&v69 = v59;
  sub_1BE053BE4();
  __break(1u);
LABEL_8:
  a1 = v66;
LABEL_13:

LABEL_14:
  v60 = 1;
  v61 = v67;
  return (*(v3 + 56))(a1, v60, 1, v61);
}

uint64_t sub_1BD5BD7C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1E0, &qword_1BE0E59A0);
  v4 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v87 - v5;
  v93 = *v1;
  v94 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140, &qword_1BE0E57E8);
  sub_1BE0516A4();
  v6 = v92;
  KeyPath = swift_getKeyPath();
  *&v93 = v6;
  sub_1BD5C343C();
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = *&v6[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction];
  v16 = v15;
  v6, v17, v18, v19, v20, v21, v22, v23;
  if (!v15)
  {
    v84 = 1;
    v83 = v91;
    return (*(v4 + 56))(a1, v84, 1, v83);
  }

  v93 = v94;
  sub_1BE0516A4();
  v24 = v92;
  v25 = swift_getKeyPath();
  *&v93 = v24;
  sub_1BE04B594();
  v25, v26, v27, v28, v29, v30, v31, v32;
  v33 = *&v24[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord];
  v89 = v33;
  v24, v34, v35, v36, v37, v38, v39, v40;
  if (!v33)
  {
    v83 = v91;
LABEL_17:

    v84 = 1;
    return (*(v4 + 56))(a1, v84, 1, v83);
  }

  v88 = a1;
  v93 = v94;
  sub_1BE0516A4();
  v41 = v92;
  v42 = swift_getKeyPath();
  *&v93 = v41;
  sub_1BE04B594();
  v42, v43, v44, v45, v46, v47, v48, v49;
  v50 = *&v41[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria];
  v87 = v50;
  v41, v51, v52, v53, v54, v55, v56, v57;
  if (!v50)
  {
    a1 = v88;
    v68 = v89;
    v83 = v91;
LABEL_16:

    v16 = v68;
    goto LABEL_17;
  }

  v93 = v94;
  sub_1BE0516A4();
  v58 = v92;
  v59 = swift_getKeyPath();
  *&v93 = v58;
  sub_1BE04B594();
  v59, v60, v61, v62, v63, v64, v65, v66;
  v67 = *&v58[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass];
  v68 = v67;
  v58, v69, v70, v71, v72, v73, v74, v75;
  if (!v67)
  {
    v68 = v16;
    v16 = v87;
    a1 = v88;
    v83 = v91;
    v78 = v89;
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_self();
  v76 = swift_dynamicCastObjCClass();
  if (!v76)
  {
    v78 = v87;
    a1 = v88;
    v85 = v89;
LABEL_14:

    v83 = v91;
    goto LABEL_15;
  }

  v77 = v76;
  v78 = v89;
  v79 = _s9PassKitUI24PaymentOffersUIUtilitiesC21shouldDisplayFollowUp3forSbSo32PKPaymentOfferConfirmationRecordCSg_tFZ_0(v33);

  if ((v79 & 1) == 0)
  {
    v85 = v16;
    v16 = v87;
    a1 = v88;
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v80);
  *(&v87 - 6) = v78;
  *(&v87 - 5) = v2;
  v81 = v87;
  *(&v87 - 4) = v77;
  *(&v87 - 3) = v81;
  *(&v87 - 2) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C190, &qword_1BE0E5910);
  sub_1BD5C3678();
  v82 = v90;
  sub_1BE051A44();

  a1 = v88;
  v83 = v91;
  (*(v4 + 32))(v88, v82, v91);
  v84 = 0;
  return (*(v4 + 56))(a1, v84, 1, v83);
}

uint64_t sub_1BD5BDC00@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47658, &qword_1BE0DA388);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - v5;
  v29 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140, &qword_1BE0E57E8);
  sub_1BE0516A4();
  v7 = v28[1];
  KeyPath = swift_getKeyPath();
  *&v29 = v7;
  sub_1BD5C343C();
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = *&v7[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction];
  v17 = v16;
  v7, v18, v19, v20, v21, v22, v23, v24;
  if (!v16)
  {
    goto LABEL_5;
  }

  v25 = sub_1BD5BF110();
  if (!v25)
  {

LABEL_5:
    v26 = 1;
    return (*(v4 + 56))(a1, v26, 1, v3);
  }

  MEMORY[0x1EEE9AC00](v25);
  v28[-2] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE051A44();

  (*(v4 + 32))(a1, v6, v3);
  v26 = 0;
  return (*(v4 + 56))(a1, v26, 1, v3);
}

uint64_t sub_1BD5BDE4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C170, &qword_1BE0E5860);
  v4 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v91 - v5;
  v97 = *v1;
  v98 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140, &qword_1BE0E57E8);
  sub_1BE0516A4();
  v6 = v96;
  KeyPath = swift_getKeyPath();
  *&v97 = v6;
  sub_1BD5C343C();
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = *&v6[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction];
  v16 = v15;
  v6, v17, v18, v19, v20, v21, v22, v23;
  if (!v15)
  {
    v88 = 1;
    v87 = v95;
    return (*(v4 + 56))(a1, v88, 1, v87);
  }

  v97 = v98;
  sub_1BE0516A4();
  v24 = v96;
  v25 = swift_getKeyPath();
  *&v97 = v24;
  sub_1BE04B594();
  v25, v26, v27, v28, v29, v30, v31, v32;
  v33 = *&v24[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord];
  v93 = v33;
  v24, v34, v35, v36, v37, v38, v39, v40;
  if (!v33)
  {
    v87 = v95;
LABEL_17:

    v88 = 1;
    return (*(v4 + 56))(a1, v88, 1, v87);
  }

  v92 = a1;
  v97 = v98;
  sub_1BE0516A4();
  v41 = v96;
  v42 = swift_getKeyPath();
  *&v97 = v41;
  sub_1BE04B594();
  v42, v43, v44, v45, v46, v47, v48, v49;
  v50 = *&v41[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria];
  v51 = v50;
  v41, v52, v53, v54, v55, v56, v57, v58;
  if (!v50)
  {
    a1 = v92;
    v69 = v93;
    v87 = v95;
LABEL_16:

    v16 = v69;
    goto LABEL_17;
  }

  v97 = v98;
  sub_1BE0516A4();
  v59 = v96;
  v60 = swift_getKeyPath();
  *&v97 = v59;
  sub_1BE04B594();
  v60, v61, v62, v63, v64, v65, v66, v67;
  v68 = *&v59[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass];
  v69 = v68;
  v59, v70, v71, v72, v73, v74, v75, v76;
  if (!v68)
  {
    a1 = v92;
    v69 = v93;
    v87 = v95;
LABEL_15:

    v16 = v51;
    goto LABEL_16;
  }

  objc_opt_self();
  v77 = swift_dynamicCastObjCClass();
  a1 = v92;
  if (!v77)
  {
    v87 = v95;
    v89 = v93;
LABEL_14:

    v16 = v51;
    v51 = v89;
    goto LABEL_15;
  }

  v78 = v77;
  v79 = v16;
  v80 = v51;
  v81 = v15;
  v82 = v80;
  v83 = _s9PassKitUI24PaymentOffersUIUtilitiesC42shouldDisplaySetupPostPurchaseInstallments3for19installmentCriteriaSbSo20PKPaymentTransactionCSg_So0p16OfferInstallmentO0CSgtFZ_0(v81, v50);

  if ((v83 & 1) == 0)
  {
    v51 = v93;
    v89 = v82;
    v87 = v95;
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v84);
  v85 = v93;
  *(&v91 - 6) = v93;
  *(&v91 - 5) = v2;
  *(&v91 - 4) = v78;
  *(&v91 - 3) = v82;
  *(&v91 - 2) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C178, &qword_1BE0E5908);
  sub_1BD5C35C0();
  v86 = v94;
  a1 = v92;
  sub_1BE051A44();

  v87 = v95;
  (*(v4 + 32))(a1, v86, v95);
  v88 = 0;
  return (*(v4 + 56))(a1, v88, 1, v87);
}

uint64_t sub_1BD5BE2A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C150, &qword_1BE0E5820);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - v6;
  v30 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140, &qword_1BE0E57E8);
  sub_1BE0516A4();
  v8 = v29[1];
  KeyPath = swift_getKeyPath();
  *&v30 = v8;
  sub_1BD5C343C();
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = *&v8[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption];
  v18 = v17;
  v8, v19, v20, v21, v22, v23, v24, v25;
  if (v17)
  {
    MEMORY[0x1EEE9AC00](v26);
    v29[-2] = v18;
    v29[-1] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C158, &unk_1BE0E5828);
    sub_1BD5C34A4();
    sub_1BE051A44();

    (*(v5 + 32))(a1, v7, v4);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  return (*(v5 + 56))(a1, v27, 1, v4);
}

id sub_1BD5BE4B0@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C138, &unk_1BE0E57D8);
  v6 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v14 = sub_1BE04AA64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140, &qword_1BE0E57E8);
  sub_1BE0516A4();
  v18 = v64;
  KeyPath = swift_getKeyPath();
  *&v61 = v18;
  sub_1BD5C343C();
  sub_1BE04B594();
  KeyPath, v20, v21, v22, v23, v24, v25, v26;
  v27 = *&v18[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption];
  v28 = v27;
  v18, v29, v30, v31, v32, v33, v34, v35;
  if (!v27)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_7:
    sub_1BD0DE53C(v13, &unk_1EBD3CF70, &qword_1BE0BA000);
    return (*(v6 + 56))(v60, 1, 1, v59);
  }

  v36 = [v28 statusLink];

  if (v36)
  {
    sub_1BE04A9F4();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v58;
  v39 = v17;
  (*(v15 + 56))(v10, v37, 1, v14);
  sub_1BD226B4C(v10, v13);
  v40 = (*(v15 + 48))(v13, 1, v14);
  v41 = v57;
  if (v40 == 1)
  {
    goto LABEL_7;
  }

  v43 = (*(v15 + 32))(v39, v13, v14);
  v58 = &v55;
  v44 = MEMORY[0x1EEE9AC00](v43);
  *(&v55 - 2) = v39;
  (v38[13])(v5, *MEMORY[0x1E69B8088], v41, v44);
  result = PKPassKitBundle();
  v55 = v39;
  if (result)
  {
    v45 = result;
    v46 = sub_1BE04B6F4();
    v48 = v47;

    (v38[1])(v5, v41);
    *&v61 = v46;
    *(&v61 + 1) = v48;
    sub_1BD0DDEBC();
    *&v61 = sub_1BE0506C4();
    *(&v61 + 1) = v49;
    v62 = v50 & 1;
    v63 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    v52 = v56;
    sub_1BE051A54();
    v53 = v59;
    v54 = v60;
    (*(v6 + 32))(v60, v52, v59);
    (*(v6 + 56))(v54, 0, 1, v53);
    return (*(v15 + 8))(v55, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD5BEA50@<X0>(id a1@<X2>, void *a2@<X0>, void *a3@<X1>, uint64_t a4@<X8>)
{
  v6 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(a2, a1, a3);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v6;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  v7 = a3;

  return a2;
}

id sub_1BD5BEAC4@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v40 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140, &qword_1BE0E57E8);
  sub_1BE0516A4();
  KeyPath = swift_getKeyPath();
  *&v40 = v41;
  sub_1BD5C343C();
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v20 = *&v41[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent];
  v21 = v20;
  v41, v22, v23, v24, v25, v26, v27, v28;
  v29 = swift_allocObject();
  v30 = a2[1];
  *(v29 + 16) = *a2;
  *(v29 + 32) = v30;
  v31 = a2[3];
  *(v29 + 48) = a2[2];
  *(v29 + 64) = v31;
  *(v29 + 80) = a1;
  *(v29 + 88) = a4;
  *(v29 + 96) = a5;
  *(v29 + 104) = a3;
  LOBYTE(v41) = 0;
  sub_1BD5C3748(a2, &v40);
  v32 = a1;
  v33 = a4;
  v34 = a5;
  v39 = a3;
  sub_1BE051694();
  v35 = v40;
  v36 = *(&v40 + 1);
  LOBYTE(v40) = 0;
  *a6 = v32;
  *(a6 + 8) = v20;
  *(a6 + 16) = v39;
  *(a6 + 24) = sub_1BD5C3C50;
  *(a6 + 32) = v29;
  *(a6 + 40) = 0;
  *(a6 + 48) = v35;
  *(a6 + 56) = v36;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  v37 = v32;

  return v39;
}

void sub_1BD5BEC68(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v7 = v6;
  v11 = *(v6 + 16);
  v10 = *(v6 + 24);
  v49 = v10;
  v50 = v11;
  *&v48 = v11;
  *(&v48 + 1) = v10;
  sub_1BD0DE19C(&v50, &v47, &qword_1EBD4C860, &qword_1BE0E5958);
  sub_1BD0DE19C(&v49, &v47, &qword_1EBD4C1C0, &qword_1BE0E5960);
  sub_1BD0DE19C(&v50, &v47, &qword_1EBD4C860, &qword_1BE0E5958);
  sub_1BD0DE19C(&v49, &v47, &qword_1EBD4C1C0, &qword_1BE0E5960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1C8, &qword_1BE0E5968);
  sub_1BE0516A4();
  if (v47)
  {

    *&v48 = v11;
    *(&v48 + 1) = v10;
    sub_1BE0516A4();
    v12 = v47;
    [v47 invalidate];

    *&v48 = v11;
    *(&v48 + 1) = v10;
    v47 = 0;
    sub_1BE0516B4();
  }

  sub_1BD0DE53C(&v50, &qword_1EBD4C860, &qword_1BE0E5958);
  sub_1BD0DE53C(&v49, &qword_1EBD4C1C0, &qword_1BE0E5960);
  v13 = [a1 selectedOfferConfirmationRecord];
  v44 = a1;
  if (v13)
  {
    v14 = v13;
    v15 = [v13 selectedOffer];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 installmentSelectedPaymentOffer];
  v17 = [v16 userEnteredAmount];

  v18 = [objc_allocWithZone(MEMORY[0x1E69B8CF0]) initForPostPurchaseInstallmentsWithTransaction:a3 userEnteredAmount:v17];
  v19 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v20 = [objc_opt_self() sharedService];
  v21 = [objc_allocWithZone(MEMORY[0x1E69B8CE8]) initWithPaymentService:v19 paymentWebService:v20 configuration:v18];

  *&v48 = v11;
  *(&v48 + 1) = v10;
  v47 = v21;
  sub_1BE0516B4();
  sub_1BD0DE53C(&v50, &qword_1EBD4C860, &qword_1BE0E5958);
  sub_1BD0DE53C(&v49, &qword_1EBD4C1C0, &qword_1BE0E5960);
  *&v48 = v11;
  *(&v48 + 1) = v10;
  sub_1BE0516A4();
  v22 = v47;
  if (v47)
  {
    [v47 updatePaymentOfferCatalogIfNecessaryWithReason:11 completion:0];
  }

  *&v48 = v11;
  *(&v48 + 1) = v10;
  v23 = sub_1BE0516A4();
  v24 = v47;
  if (v47)
  {
    *&v48 = v42;
    BYTE8(v48) = -63;
    v25 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
    v26 = v24;
    v27 = v42;
    v28 = a2;
    v29 = sub_1BD8D1EE0(&v48, v24, a2);

    v48 = *(v7 + 48);
    v47 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390, &qword_1BE0F2820);
    sub_1BE0516B4();
    v30 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    [v30 didInteractWithConfirmationRecordFollowupMessage_];

    v48 = *(v7 + 48);
    v31 = sub_1BE0516A4();
    v32 = v47;
    if (v47)
    {
      v33 = swift_allocObject();
      v33[2] = a5;
      v33[3] = a6;
      sub_1BD0D44B8(a5, a6);
      sub_1BD8C1B80(0, 1, sub_1BD3B690C, v33);

      v33, v34, v35, v36, v37, v38, v39, v40;
      return;
    }

    if (a5)
    {
      a5(v31);
    }
  }

  else if (a5)
  {
    a5(v23);
  }
}

BOOL sub_1BD5BF110()
{
  v1 = v0;
  v2 = sub_1BE04AA64();
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v63 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140, &qword_1BE0E57E8);
  sub_1BE0516A4();
  v11 = v62;
  KeyPath = swift_getKeyPath();
  *&v63 = v11;
  sub_1BD5C343C();
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v20 = *&v11[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction];
  v21 = v20;
  v11, v22, v23, v24, v25, v26, v27, v28;
  if (!v20)
  {
    return 0;
  }

  v63 = *v1;
  sub_1BE0516A4();
  v29 = v62;
  v30 = swift_getKeyPath();
  *&v63 = v29;
  sub_1BE04B594();
  v30, v31, v32, v33, v34, v35, v36, v37;
  v38 = *&v29[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord];
  v39 = v38;
  v29, v40, v41, v42, v43, v44, v45, v46;
  if (!v38)
  {
    goto LABEL_6;
  }

  v47 = v21;
  v48 = v39;
  if (![v47 isIssuerInstallmentTransaction])
  {

    goto LABEL_10;
  }

  v49 = [v47 issuerInstallmentManagementURL];
  if (!v49)
  {

    (*(v60 + 56))(v10, 1, 1, v61);
    sub_1BD0DE53C(v10, &unk_1EBD3CF70, &qword_1BE0BA000);

    return 0;
  }

  v50 = v49;
  sub_1BE04A9F4();

  v52 = v60;
  v51 = v61;
  (*(v60 + 32))(v10, v4, v61);
  (*(v52 + 56))(v10, 0, 1, v51);
  sub_1BD0DE53C(v10, &unk_1EBD3CF70, &qword_1BE0BA000);
  v53 = _s9PassKitUI24PaymentOffersUIUtilitiesC21shouldDisplayFollowUp3forSbSo32PKPaymentOfferConfirmationRecordCSg_tFZ_0(v38);

  if (v53)
  {
LABEL_10:

    return 0;
  }

LABEL_6:
  v54 = [v21 issuerInstallmentManagementURL];
  v55 = v54 != 0;
  if (v54)
  {
    v56 = v54;
    sub_1BE04A9F4();

    v57 = 0;
    v21 = v56;
  }

  else
  {
    v57 = 1;
  }

  (*(v60 + 56))(v7, v57, 1, v61);
  sub_1BD0DE53C(v7, &unk_1EBD3CF70, &qword_1BE0BA000);
  return v55;
}

uint64_t sub_1BD5BF50C(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;

  return sub_1BE051704();
}

id sub_1BD5BF5AC(void *a1)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  result = [a1 issuerInstallmentManagementURL];
  if (result)
  {
    v11 = result;
    sub_1BE04A9F4();

    (*(v3 + 32))(v9, v5, v2);
    v12 = sub_1BE04A9C4();
    PKOpenURL();

    return (*(v3 + 8))(v9, v2);
  }

  return result;
}

id sub_1BD5BF6F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8078], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5BF860@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v66 = a6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1A0, &qword_1BE0E5918);
  v11 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v63 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1A8, &qword_1BE0E5920);
  v14 = MEMORY[0x1EEE9AC00](v65);
  v16 = &v63 - v15;
  if ([a1 isSetupPaymentOfferAfterPurchase] && (v69 = *a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140, &qword_1BE0E57E8), sub_1BE0516A4(), v64 = v13, v17 = a4, v18 = v11, v19 = a5, v20 = a3, v21 = v68[0], KeyPath = swift_getKeyPath(), *&v69 = v21, sub_1BD5C343C(), sub_1BE04B594(), KeyPath, v23, v24, v25, v26, v27, v28, v29, v30 = *&v21[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent], v31 = v30, v32 = v21, a3 = v20, a5 = v19, v11 = v18, a4 = v17, v13 = v64, v32, v33, v34, v35, v36, v37, v38, v39, v30))
  {
    v40 = swift_allocObject();
    v41 = a2[1];
    *(v40 + 16) = *a2;
    *(v40 + 32) = v41;
    v42 = a2[3];
    *(v40 + 48) = a2[2];
    *(v40 + 64) = v42;
    *(v40 + 80) = a1;
    *(v40 + 88) = a4;
    *(v40 + 96) = a5;
    *(v40 + 104) = a3;
    LOBYTE(v68[0]) = 0;
    v43 = v31;
    sub_1BD5C3748(a2, &v69);
    v44 = a1;
    v45 = a4;
    v46 = a5;
    v47 = a3;
    sub_1BE051694();
    v48 = v69;
    v49 = *(&v69 + 1);
    LOBYTE(v68[0]) = 0;
    *&v69 = v44;
    *(&v69 + 1) = v30;
    *&v70 = v47;
    *(&v70 + 1) = sub_1BD5C3780;
    *&v71 = v40;
    BYTE8(v71) = 0;
    LOBYTE(v72) = v48;
    *(&v72 + 1) = v49;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    *(v16 + 4) = 0u;
    *(v16 + 5) = 0u;
    v16[96] = 0;
    v50 = v70;
    *v16 = v69;
    *(v16 + 1) = v50;
    v51 = v72;
    *(v16 + 2) = v71;
    *(v16 + 3) = v51;
    swift_storeEnumTagMultiPayload();
    v52 = v44;
    v53 = v47;
    sub_1BD0DE19C(&v69, v68, &qword_1EBD4C190, &qword_1BE0E5910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C190, &qword_1BE0E5910);
    sub_1BD5C3678();
    sub_1BD0DE4F4(&qword_1EBD4C198, &qword_1EBD4C1A0, &qword_1BE0E5918, MEMORY[0x1E697D680]);
    sub_1BE04F9A4();

    return sub_1BD0DE53C(&v69, &qword_1EBD4C190, &qword_1BE0E5910);
  }

  else
  {
    v55 = swift_allocObject();
    v64 = &v63;
    v56 = a2[1];
    *(v55 + 16) = *a2;
    *(v55 + 32) = v56;
    v57 = a2[3];
    *(v55 + 48) = a2[2];
    *(v55 + 64) = v57;
    *(v55 + 80) = a1;
    *(v55 + 88) = a4;
    *(v55 + 96) = a5;
    *(v55 + 104) = a3;
    MEMORY[0x1EEE9AC00](v55);
    *(&v63 - 2) = a4;
    *(&v63 - 1) = a2;
    sub_1BD5C3748(a2, &v69);
    v58 = a1;
    v59 = a4;
    v60 = a5;
    v61 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1B0, &qword_1BE0E5928);
    sub_1BD0DE4F4(&qword_1EBD4C1B8, &qword_1EBD4C1B0, &qword_1BE0E5928, MEMORY[0x1E69817F8]);
    sub_1BE051704();
    v62 = v67;
    (*(v11 + 16))(v16, v13, v67);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C190, &qword_1BE0E5910);
    sub_1BD5C3678();
    sub_1BD0DE4F4(&qword_1EBD4C198, &qword_1EBD4C1A0, &qword_1BE0E5918, MEMORY[0x1E697D680]);
    sub_1BE04F9A4();
    return (*(v11 + 8))(v13, v62);
  }
}

void sub_1BD5BFDE4(_OWORD *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a1[2];
  v21 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v10 = swift_allocObject();
  v11 = a1[1];
  v10[1] = *a1;
  v10[2] = v11;
  v12 = a1[3];
  v10[3] = a1[2];
  v10[4] = v12;
  sub_1BD5C3748(a1, v20);
  sub_1BD5BEC68(a2, a3, a4, a5, sub_1BD3AEAA4, v10);
  v10, v13, v14, v15, v16, v17, v18, v19;
}

id sub_1BD5BFED4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1BE04F504();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1D0, &unk_1BE0E5970);
  return sub_1BD5BFF3C(a1, a2, a3 + *(v6 + 44));
}

id sub_1BD5BFF3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v51 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v4 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD425B8, &unk_1BE0E5980);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 programName];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BE052434();
    v22 = v21;
  }

  else
  {
    (*(v14 + 104))(v17, *MEMORY[0x1E69B8078], v13);
    result = PKPassKitBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    v20 = sub_1BE04B6F4();
    v22 = v25;

    (*(v14 + 8))(v17, v13);
  }

  v53 = *(v50 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v52 == 1)
  {
    sub_1BE04E4F4();
    v26 = v49;
    (*(v4 + 32))(v12, v6, v49);
    v27 = 0;
  }

  else
  {
    v27 = 1;
    v26 = v49;
  }

  (*(v4 + 56))(v12, v27, 1, v26);
  *&v53 = v20;
  *(&v53 + 1) = v22;
  sub_1BD0DDEBC();
  v28 = sub_1BE0506C4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1BD0DE19C(v12, v9, &qword_1EBD425B8, &unk_1BE0E5980);
  v35 = v51;
  sub_1BD0DE19C(v9, v51, &qword_1EBD425B8, &unk_1BE0E5980);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1D8, &unk_1BE0E5990) + 48);
  *v36 = v28;
  *(v36 + 8) = v30;
  *(v36 + 16) = v32 & 1;
  *(v36 + 24) = v34;
  sub_1BD0D7F18(v28, v30, v32 & 1);
  sub_1BE048C84();
  sub_1BD0DE53C(v12, &qword_1EBD425B8, &unk_1BE0E5980);
  sub_1BD0DDF10(v28, v30, (v32 & 1), v37, v38, v39, v40, v41);
  v34, v42, v43, v44, v45, v46, v47, v48;
  return sub_1BD0DE53C(v9, &qword_1EBD425B8, &unk_1BE0E5980);
}

id sub_1BD5C0320@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140, &qword_1BE0E57E8);
  sub_1BE0516A4();
  KeyPath = swift_getKeyPath();
  sub_1BD5C343C();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *&v23[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance];
  v13 = v12;
  v23, v14, v15, v16, v17, v18, v19, v20;
  *a3 = a1;
  *(a3 + 8) = v12;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;

  return a1;
}

uint64_t sub_1BD5C03F8(uint64_t a1)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1BE051704();
}

id sub_1BD5C0558@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8088], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD5C0714(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD5C343C();
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD4C228, 0x1E69B8C58);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD5C0890(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD5C343C();
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD57A10, 0x1E69B8C78);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD5C0A0C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD5C343C();
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD39D98, 0x1E69B8C90);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD5C0B88(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD5C343C();
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &unk_1EBD3E570, 0x1E69B8DA8);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD5C0D04(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD5C343C();
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD4C220, 0x1E69B8DB0);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD5C0E80(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD5C343C();
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD4AB10, 0x1E69B8EA8);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void *sub_1BD5C0FFC(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD5C343C();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v2 + *a2);
  v13 = v12;
  return v12;
}

id sub_1BD5C1074@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD5C343C();
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = *(v6 + *a3);
  *a4 = v15;

  return v15;
}

void sub_1BD5C1108(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD5C343C();
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD456C0, 0x1E69B91E8);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_1BD5C1270(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass) = 0;
  result = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  if (result)
  {
    *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_provider) = result;
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_library) = result;
      sub_1BE04B5C4();
      sub_1BD5C3BD4(a1, v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_context);
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD5C136C()
{
  v1[84] = v0;
  v2 = sub_1BE049184();
  v1[85] = v2;
  v1[86] = *(v2 - 8);
  v1[87] = swift_task_alloc();
  v3 = sub_1BE04AFE4();
  v1[88] = v3;
  v1[89] = *(v3 - 8);
  v1[90] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  v1[91] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v1[92] = v4;
  v1[93] = *(v4 - 8);
  v1[94] = swift_task_alloc();
  sub_1BE0528A4();
  v1[95] = sub_1BE052894();
  v6 = sub_1BE052844();
  v1[96] = v6;
  v1[97] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD5C1554, v6, v5);
}

uint64_t sub_1BD5C1554()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[84];
  v5 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_context;
  v0[98] = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_context;
  (*(v2 + 16))(v1, v4 + v5, v3);
  v0[99] = sub_1BE049944();
  v0[100] = v6;
  if (v6)
  {
    v7 = v6;
    v0[101] = type metadata accessor for TransactionContext(0);
    sub_1BE049534();
    if (v8)
    {
      v9 = *(v0[84] + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_library);
      v10 = v8;
      v11 = sub_1BE052404();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = [v9 passWithFPANIdentifier_];
    }

    else
    {
      v19 = 0;
    }

    v28 = v0[84];
    sub_1BD5C1108(v19);
    KeyPath = swift_getKeyPath();
    v0[102] = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel___observationRegistrar;
    v0[76] = v28;
    v0[103] = sub_1BD5C343C();
    sub_1BE04B594();
    KeyPath, v30, v31, v32, v33, v34, v35, v36;
    v37 = *(v28 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass);
    v0[104] = v37;
    if (v37)
    {
      v38 = *(v0[84] + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_provider);
      v0[105] = v38;
      v39 = v37;
      v40 = sub_1BE052404();
      v0[106] = v40;
      v0[2] = v0;
      v0[7] = v0 + 77;
      v0[3] = sub_1BD5C1888;
      v41 = swift_continuation_init();
      v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C200, &qword_1BE0E59B8);
      v0[34] = MEMORY[0x1E69E9820];
      v0[35] = 1107296256;
      v0[36] = sub_1BD16E918;
      v0[37] = &block_descriptor_135;
      v0[38] = v41;
      [v38 paymentOfferConfirmationRecordForTransactionWithPaymentHash:v40 completion:v0 + 34];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    v42 = v0[95];
    (*(v0[93] + 8))(v0[94], v0[92]);
    v42, v43, v44, v45, v46, v47, v48, v49;
    v7, v50, v51, v52, v53, v54, v55, v56;
  }

  else
  {
    v20 = v0[95];
    (*(v0[93] + 8))(v0[94], v0[92]);
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  v57 = v0[1];

  return v57();
}

uint64_t sub_1BD5C1888(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = *v8;
  v10 = *(*v8 + 48);
  *(*v8 + 856) = v10;
  if (v10)
  {
    *(v9 + 800), a2, a3, a4, a5, a6, a7, a8;
    v11 = *(v9 + 776);
    v12 = *(v9 + 768);
    v13 = sub_1BD5C2D50;
  }

  else
  {
    v11 = *(v9 + 776);
    v12 = *(v9 + 768);
    v13 = sub_1BD5C19A8;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

uint64_t sub_1BD5C19A8()
{
  v1 = *(v0 + 848);
  v16 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 672);
  sub_1BD5C0714(*(v0 + 616));

  KeyPath = swift_getKeyPath();
  *(v0 + 624) = v3;
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord;
  *(v0 + 864) = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord;
  sub_1BD5C0890([*(v3 + v12) transactionDetailMessageTileDynamicContent]);
  v13 = [v2 uniqueID];
  *(v0 + 872) = v13;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 632;
  *(v0 + 88) = sub_1BD5C1B88;
  v14 = swift_continuation_init();
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C208, &unk_1BE0E59C0);
  *(v0 + 336) = MEMORY[0x1E69E9820];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_1BD1F07A8;
  *(v0 + 360) = &block_descriptor_83_0;
  *(v0 + 368) = v14;
  [v16 paymentOfferCriteriaForPassUniqueID:v13 criteriaType:1 completion:v0 + 336];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1BD5C1B88()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 768);

  return MEMORY[0x1EEE6DFA0](sub_1BD5C1C90, v2, v1);
}

uint64_t sub_1BD5C1C90()
{
  v1 = *(v0 + 632);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 840);
  v4 = *(v0 + 832);
  v5 = *(v0 + 800);
  v6 = *(v0 + 792);

  sub_1BD5C0A0C(v2);
  v7 = [v4 uniqueID];
  *(v0 + 880) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = v6;
  *(inited + 40) = v5;
  sub_1BE048C84();
  v9 = sub_1BD1123D4(inited);
  swift_setDeallocating();
  sub_1BD1BCDE4(inited + 32);
  v10 = sub_1BE052A24();
  *(v0 + 888) = v10;
  v9, v11, v12, v13, v14, v15, v16, v17;
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 640;
  *(v0 + 152) = sub_1BD5C1EC0;
  v18 = swift_continuation_init();
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C210, &unk_1BE0E59D0);
  *(v0 + 400) = MEMORY[0x1E69E9820];
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_1BD5C2FF4;
  *(v0 + 424) = &block_descriptor_86_0;
  *(v0 + 432) = v18;
  [v3 paymentRewardsRedemptionsForPassUniqueIdentifier:v7 paymentHashes:v10 completion:v0 + 400];

  return MEMORY[0x1EEE6DEC8](v0 + 144);
}

uint64_t sub_1BD5C1EC0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 896) = v2;
  if (v2)
  {
    v3 = *(v1 + 800);

    v3, v4, v5, v6, v7, v8, v9, v10;
    v11 = *(v1 + 776);
    v12 = *(v1 + 768);
    v13 = sub_1BD5C2E34;
  }

  else
  {
    v11 = *(v1 + 776);
    v12 = *(v1 + 768);
    v13 = sub_1BD5C1FEC;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

uint64_t sub_1BD5C1FEC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 640);
  if (v9)
  {
    v111 = MEMORY[0x1E69E7CC0];
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v12 = 0;
      v109 = v9;
      v110 = v9 & 0xC000000000000001;
      while (1)
      {
        if (v110)
        {
          v14 = MEMORY[0x1BFB40900](v12, v9, a3, a4, a5, a6, a7, a8, v107, v108);
        }

        else
        {
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_17;
          }

          v14 = *(v9 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v17 = i;
        v18 = *(v8 + 800);
        v19 = *(v8 + 728);
        *(v8 + 576) = *(v8 + 792);
        *(v8 + 584) = v18;
        v20 = [v14 paymentHash];
        v21 = sub_1BE052434();
        v23 = v22;

        *(v8 + 592) = v21;
        *(v8 + 600) = v23;
        v24 = sub_1BE04B0F4();
        (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
        v107 = sub_1BD0DDEBC();
        v108 = v107;
        v25 = sub_1BE0535E4();
        sub_1BD0DE53C(v19, &qword_1EBD450F0, &unk_1BE0B8510);
        v23, v26, v27, v28, v29, v30, v31, v32;
        if (v25)
        {
        }

        else
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        ++v12;
        i = v17;
        v13 = v16 == v17;
        v9 = v109;
        if (v13)
        {
          v33 = v111;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v33 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v35 = *(v8 + 888);
    v36 = *(v8 + 880);
    v9, a2, a3, a4, a5, a6, a7, a8;

    if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
    {
      v37 = sub_1BE053704();
      if (v37)
      {
        goto LABEL_23;
      }
    }

    else if (*(v33 + 16))
    {
LABEL_23:
      if ((v33 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1BFB40900](0, v33);
      }

      else
      {
        if (!*(v33 + 16))
        {
          __break(1u);
          return MEMORY[0x1EEDC1478](v37);
        }

        v45 = *(v33 + 32);
      }

      v53 = v45;
      v33, v46, v47, v48, v49, v50, v51, v52;
      v54 = v53;
      sub_1BD5C0D04(v53);
      v55 = [v54 balanceIdentifier];
      if (!v55)
      {
        sub_1BE052434();
        v57 = v56;
        v55 = sub_1BE052404();
        v57, v58, v59, v60, v61, v62, v63, v64;
      }

      v65 = [*(v8 + 840) paymentRewardsBalanceWithIdentifier_];

      sub_1BD5C0B88(v65);
LABEL_34:
      *(v8 + 904) = v54;
      sub_1BE0490F4();
      *(v8 + 912) = sub_1BE0490B4();
      sub_1BE049A14();
      v92 = swift_task_alloc();
      *(v8 + 920) = v92;
      *v92 = v8;
      v92[1] = sub_1BD5C250C;
      v37 = *(v8 + 720);

      return MEMORY[0x1EEDC1478](v37);
    }

    v33, v38, v39, v40, v41, v42, v43, v44;
  }

  else
  {
    v34 = *(v8 + 880);
  }

  v66 = *(v8 + 864);
  v67 = *(v8 + 672);
  KeyPath = swift_getKeyPath();
  *(v8 + 648) = v67;
  sub_1BE04B594();
  KeyPath, v69, v70, v71, v72, v73, v74, v75;
  if (*(v67 + v66) || (v76 = *(v8 + 672), v77 = swift_getKeyPath(), *(v8 + 656) = v76, sub_1BE04B594(), v77, v78, v79, v80, v81, v82, v83, v84, *(v76 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria)))
  {
    v54 = 0;
    goto LABEL_34;
  }

  v93 = *(v8 + 832);
  v94 = *(v8 + 800);
  v95 = *(v8 + 752);
  v96 = *(v8 + 744);
  v97 = *(v8 + 736);
  *(v8 + 760), v85, v86, v87, v88, v89, v90, v91;

  v94, v98, v99, v100, v101, v102, v103, v104;
  (*(v96 + 8))(v95, v97);

  v105 = *(v8 + 8);

  return v105();
}

uint64_t sub_1BD5C250C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[116] = a1;
  v4[117] = v1;

  v12 = v3[114];
  if (v1)
  {
    v13 = v4[104];
    v14 = v4[100];
    v15 = v4[90];
    v16 = v4[89];
    v17 = v4[88];
    v12, v5, v6, v7, v8, v9, v10, v11;

    v14, v18, v19, v20, v21, v22, v23, v24;
    (*(v16 + 8))(v15, v17);
    v25 = v4[97];
    v26 = v4[96];
    v27 = sub_1BD5C2F20;
  }

  else
  {
    (*(v4[89] + 8))(v4[90], v4[88]);
    v12, v28, v29, v30, v31, v32, v33, v34;
    v25 = v4[97];
    v26 = v4[96];
    v27 = sub_1BD5C26C4;
  }

  return MEMORY[0x1EEE6DFA0](v27, v26, v25);
}

uint64_t sub_1BD5C26C4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 928);
  v10 = *(v8 + 904);
  v11 = *(v8 + 832);
  if (v9)
  {
    v12 = *(v8 + 808);
    v13 = *(v8 + 696);
    v14 = *(v8 + 688);
    v15 = *(v8 + 680);
    v16 = *(v8 + 672) + *(v8 + 784);
    sub_1BD0E5E8C(0, &qword_1EBD498E8, 0x1E6967DF8);
    (*(v14 + 16))(v13, v16 + *(v12 + 24), v15);
    v17 = v9;
    v18 = sub_1BE052BF4();
    v19 = objc_opt_self();
    v20 = [v19 transactionFromFKPaymentTransaction:v17 institution:v18];
    *(v8 + 944) = v20;

    [v20 setPaymentRewardsRedemption_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BE0B7020;
    *(v21 + 32) = v20;
    sub_1BD0E5E8C(0, &qword_1EBD4AB10, 0x1E69B8EA8);
    v22 = v20;
    v23 = sub_1BE052724();
    *(v8 + 952) = v23;
    v21, v24, v25, v26, v27, v28, v29, v30;
    v31 = [v11 deviceTransactionSourceIdentifiers];
    if (v31)
    {
      v32 = v31;
      v33 = *(v8 + 832);
      v34 = sub_1BE052A34();

      v35 = sub_1BE052A24();
      *(v8 + 960) = v35;
      v34, v36, v37, v38, v39, v40, v41, v42;
      v31 = [v33 uniqueID];
      *(v8 + 968) = v31;
      if (v31)
      {
        v43 = v31;
        v44 = *(v8 + 840);
        v45 = *(v8 + 800);

        v45, v46, v47, v48, v49, v50, v51, v52;
        *(v8 + 208) = v8;
        *(v8 + 248) = v8 + 664;
        *(v8 + 216) = sub_1BD5C2AB0;
        v53 = swift_continuation_init();
        *(v8 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C218, &unk_1BE0E59E0);
        *(v8 + 464) = MEMORY[0x1E69E9820];
        *(v8 + 472) = 1107296256;
        *(v8 + 480) = sub_1BD5C30F0;
        *(v8 + 488) = &block_descriptor_90;
        *(v8 + 496) = v53;
        [v19 augmentTransactionsIfNeeded:v23 transactionSourceIdentifiers:v35 passUniqueID:v43 usingDataProvider:v44 completion:v8 + 464];
        v31 = (v8 + 208);

        return MEMORY[0x1EEE6DEC8](v31);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v31);
  }

  v54 = *(v8 + 800);
  v55 = *(v8 + 752);
  v56 = *(v8 + 744);
  v57 = *(v8 + 736);
  *(v8 + 760), a2, a3, a4, a5, a6, a7, a8;

  v54, v58, v59, v60, v61, v62, v63, v64;
  (*(v56 + 8))(v55, v57);

  v65 = *(v8 + 8);

  return v65();
}

uint64_t sub_1BD5C2AB0()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 768);

  return MEMORY[0x1EEE6DFA0](sub_1BD5C2BB8, v2, v1);
}

uint64_t sub_1BD5C2BB8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 760), a2, a3, a4, a5, a6, a7, a8;
  v16 = *(v8 + 664);
  if (v16 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16, v9, v10, v11, v12, v13, v14, v15;
    v26 = 0;
    goto LABEL_9;
  }

  result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1BFB40900](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v18 = *(v16 + 32);
  }

  v26 = v18;
  v16, v19, v20, v21, v22, v23, v24, v25;
LABEL_9:
  v27 = *(v8 + 968);
  v35 = *(v8 + 960);
  v36 = *(v8 + 952);
  v28 = *(v8 + 944);
  v29 = *(v8 + 904);
  v30 = *(v8 + 832);
  v31 = *(v8 + 752);
  v32 = *(v8 + 744);
  v33 = *(v8 + 736);
  sub_1BD5C0E80(v26);

  (*(v32 + 8))(v31, v33);

  v34 = *(v8 + 8);

  return v34();
}

uint64_t sub_1BD5C2D50(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 848);
  v10 = *(v8 + 832);
  v11 = *(v8 + 752);
  v12 = *(v8 + 744);
  v13 = *(v8 + 736);
  *(v8 + 760), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  (*(v12 + 8))(v11, v13);

  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_1BD5C2E34(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 888);
  v10 = *(v8 + 880);
  v11 = *(v8 + 832);
  v12 = *(v8 + 752);
  v13 = *(v8 + 744);
  v14 = *(v8 + 736);
  *(v8 + 760), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  (*(v13 + 8))(v12, v14);

  v15 = *(v8 + 8);

  return v15();
}

uint64_t sub_1BD5C2F20(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 904);
  v10 = *(v8 + 832);
  v11 = *(v8 + 752);
  v12 = *(v8 + 744);
  v13 = *(v8 + 736);
  *(v8 + 760), a2, a3, a4, a5, a6, a7, a8;

  (*(v12 + 8))(v11, v13);

  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_1BD5C2FF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_1BD0E5E8C(0, &qword_1EBD4C220, 0x1E69B8DB0);
      v9 = sub_1BE052744();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1BD5C30F0(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1BD0E5E8C(0, &qword_1EBD4AB10, 0x1E69B8EA8);
  **(*(v2 + 64) + 40) = sub_1BE052744();

  return MEMORY[0x1EEE6DED8](v2);
}

uint64_t sub_1BD5C3174()
{
  sub_1BD442180(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_context);

  v1 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1BD5C3274()
{
  sub_1BD5C3174();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinanceKitTransactionOffersView.ViewModel(uint64_t a1)
{
  result = qword_1EBD4C0E8;
  if (!qword_1EBD4C0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD5C3320(uint64_t a1)
{
  result = type metadata accessor for TransactionContext(319);
  if (v2 <= 0x3F)
  {
    result = sub_1BE04B5D4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BD5C343C()
{
  result = qword_1EBD4C148;
  if (!qword_1EBD4C148)
  {
    type metadata accessor for FinanceKitTransactionOffersView.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C148);
  }

  return result;
}

unint64_t sub_1BD5C34A4()
{
  result = qword_1EBD4C160;
  if (!qword_1EBD4C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C158, &unk_1BE0E5828);
    sub_1BD5C355C();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C160);
  }

  return result;
}

unint64_t sub_1BD5C355C()
{
  result = qword_1EBD4C168;
  if (!qword_1EBD4C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C168);
  }

  return result;
}

unint64_t sub_1BD5C35C0()
{
  result = qword_1EBD4C180;
  if (!qword_1EBD4C180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C178, &qword_1BE0E5908);
    sub_1BD5C3678();
    sub_1BD0DE4F4(&qword_1EBD4C198, &qword_1EBD4C1A0, &qword_1BE0E5918, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C180);
  }

  return result;
}

unint64_t sub_1BD5C3678()
{
  result = qword_1EBD4C188;
  if (!qword_1EBD4C188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C190, &qword_1BE0E5910);
    sub_1BD198CAC();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C188);
  }

  return result;
}

uint64_t objectdestroy_59Tm_1(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;

  v8[9], v30, v31, v32, v33, v34, v35, v36;

  return swift_deallocObject();
}

unint64_t sub_1BD5C386C()
{
  result = qword_1EBD4C1F8;
  if (!qword_1EBD4C1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C1F0, &qword_1BE0E59B0);
    sub_1BD4881B0();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C1F8);
  }

  return result;
}

uint64_t sub_1BD5C3924@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C860, &qword_1BE0E5958);
  sub_1BE051694();
  sub_1BE051694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50, &qword_1BE102360);
  sub_1BE051694();
  type metadata accessor for FinanceKitTransactionOffersView.ViewModel(0);
  result = sub_1BE051694();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  return result;
}

void sub_1BD5C3A14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass) = v2;
  v4 = v2;
}

void sub_1BD5C3A54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction) = v2;
  v4 = v2;
}

void sub_1BD5C3A94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption) = v2;
  v4 = v2;
}

void sub_1BD5C3AD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance) = v2;
  v4 = v2;
}

void sub_1BD5C3B14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria) = v2;
  v4 = v2;
}

void sub_1BD5C3B54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent) = v2;
  v4 = v2;
}

void sub_1BD5C3B94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord) = v2;
  v4 = v2;
}

uint64_t sub_1BD5C3BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BD5C3C54(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v163 = sub_1BE04D214();
  v160 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v8 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v158 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v158 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v158 - v16;
  v18 = &v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate];
  *(v18 + 8) = 0;
  v162 = v18;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_presentationConfiguration] = 0;
  v19 = &v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_identifier];
  *v19 = 0xD00000000000001ALL;
  *(v19 + 1) = 0x80000001BE130930;
  v161 = OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_viewController;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_viewController] = 0;
  v164 = a2;
  v20 = [a2 criteriaIdentifier];
  if (!v20)
  {
    sub_1BE04D0E4();
    v41 = sub_1BE04D204();
    v42 = sub_1BE052C54();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1BD026000, v41, v42, "No criteriaIdentifier set on the product dictionary", v43, 2u);
      MEMORY[0x1BFB45F20](v43, -1, -1);
      a1, v44, v45, v46, v47, v48, v49, v50;
    }

    else
    {

      a1, v68, v69, v70, v71, v72, v73, v74;
    }

    (*(v160 + 8))(v17, v163);
    goto LABEL_24;
  }

  v21 = v20;
  v159 = v19;
  v158 = sub_1BE052434();
  v23 = v22;
  v24 = a1;
  v25 = sub_1BE04BBD4();
  v26 = [v25 paymentOffersController];

  if (!v26)
  {

    v23, v51, v52, v53, v54, v55, v56, v57;
    sub_1BE04D0E4();
    v58 = sub_1BE04D204();
    v59 = sub_1BE052C54();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1BD026000, v58, v59, "paymentOffersController not defined on the provisioningController", v60, 2u);
      MEMORY[0x1BFB45F20](v60, -1, -1);
      v24, v61, v62, v63, v64, v65, v66, v67;
    }

    else
    {

      v24, v75, v76, v77, v78, v79, v80, v81;
    }

    (*(v160 + 8))(v14, v163);
    v19 = v159;
    goto LABEL_24;
  }

  v27 = [v26 paymentOfferCriteriaForIdentifier_];

  v28 = v24;
  v19 = v159;
  if (!v27)
  {
    goto LABEL_16;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {

LABEL_16:
    sub_1BE04D0E4();
    sub_1BE048C84();
    v82 = sub_1BE04D204();
    v83 = sub_1BE052C54();
    v23, v84, v85, v86, v87, v88, v89, v90;
    if (os_log_type_enabled(v82, v83))
    {
      v91 = v28;
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v166 = v93;
      *v92 = 136315138;
      v94 = sub_1BD123690(v158, v23, &v166);
      v158 = v26;
      v95 = v94;
      v23, v96, v97, v98, v99, v100, v101, v102;
      *(v92 + 4) = v95;
      _os_log_impl(&dword_1BD026000, v82, v83, "No criteria defined on paymentOffersController for %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93, v103, v104, v105, v106, v107, v108, v109);
      MEMORY[0x1BFB45F20](v93, -1, -1);
      MEMORY[0x1BFB45F20](v92, -1, -1);
      v110 = v91;
      v19 = v159;
      v110, v111, v112, v113, v114, v115, v116, v117;
    }

    else
    {

      v28, v118, v119, v120, v121, v122, v123, v124;
      v23, v125, v126, v127, v128, v129, v130, v131;
    }

    (*(v160 + 8))(v8, v163);
    goto LABEL_24;
  }

  v30 = v29;
  v31 = v164;
  if ([v164 supportsSetupProductMethodForType_])
  {
    *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_context] = v28;
    *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_product] = v31;
    v39 = &v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_criteriaIdentifier];
    *v39 = v158;
    v39[1] = v23;
    *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_paymentOffersController] = v26;
    *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_criteria] = v30;
    v165.receiver = v3;
    v165.super_class = ObjectType;
    return objc_msgSendSuper2(&v165, sel_init);
  }

  v23, v32, v33, v34, v35, v36, v37, v38;
  sub_1BE04D0E4();
  v132 = sub_1BE04D204();
  v133 = sub_1BE052C54();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v158 = v26;
    v135 = v28;
    v136 = v134;
    *v134 = 0;
    _os_log_impl(&dword_1BD026000, v132, v133, "The product does not support the web setup product method", v134, 2u);
    MEMORY[0x1BFB45F20](v136, -1, -1);
    v135, v137, v138, v139, v140, v141, v142, v143;
  }

  else
  {

    v28, v144, v145, v146, v147, v148, v149, v150;
  }

  (*(v160 + 8))(v11, v163);
LABEL_24:
  sub_1BD0D4534(v162);
  *(v19 + 1), v151, v152, v153, v154, v155, v156, v157;

  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1BD5C43F4(void (*a1)(id, unint64_t, unint64_t, uint64_t), uint64_t a2)
{
  v234 = a2;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v226 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v226 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v226 - v12;
  v14 = sub_1BE04BD74();
  v231 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v230 = &v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v226 - v18;
  v20 = [*(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_product) criteriaIdentifier];
  if (v20)
  {
    v21 = v20;
    v228 = v14;
    v232 = a1;
    v22 = sub_1BE052434();
    v24 = v23;
    v229 = v2;
    v25 = sub_1BE04BBD4();
    v233 = [v25 paymentOffersController];

    if (v233)
    {
      v26 = [v233 paymentOfferCriteriaForIdentifier_];

      if (v26)
      {
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v35 = v27;
          v24, v28, v29, v30, v31, v32, v33, v34;
          v36 = [v35 associatedPassUniqueID];
          if (!v36)
          {
            goto LABEL_35;
          }

          v37 = v36;
          sub_1BE052434();
          v39 = v38;

          v40 = sub_1BE04BBD4();
          v41 = [v40 webService];

          if (!v41)
          {
            v39, v42, v43, v44, v45, v46, v47, v48;
            goto LABEL_35;
          }

          v49 = [v41 targetDevice];
          if (v49)
          {
            v57 = v49;
            if ([v49 respondsToSelector_])
            {
              if ([v57 respondsToSelector_])
              {
                swift_unknownObjectRetain();
                v65 = v41;
                v66 = sub_1BE052404();
                v67 = [v57 paymentWebService:v65 hasPassWithUniqueID:v66];
                v39, v68, v69, v70, v71, v72, v73, v74;

                swift_unknownObjectRelease_n();
                if ((v67 & 1) == 0)
                {
                  goto LABEL_35;
                }

                goto LABEL_28;
              }

              goto LABEL_32;
            }

            if ([v57 respondsToSelector_])
            {
              if (([v57 respondsToSelector_] & 1) == 0)
              {
LABEL_32:
                v39, v58, v59, v60, v61, v62, v63, v64;

                swift_unknownObjectRelease();
                goto LABEL_35;
              }

              swift_unknownObjectRetain();
              v140 = v41;
              v141 = sub_1BE052404();
              v142 = [v57 paymentWebService:v140 passWithUniqueID:v141];
              v39, v143, v144, v145, v146, v147, v148, v149;

              swift_unknownObjectRelease_n();
              if (v142)
              {

LABEL_28:
                v150 = *MEMORY[0x1E69B8078];
                v151 = v231;
                v152 = *(v231 + 13);
                v153 = v228;
                v152(v19, v150, v228);
                v154 = PKPassKitBundle();
                if (v154)
                {
                  v155 = v154;
                  v227 = sub_1BE04B6F4();
                  v226 = v156;

                  v157 = *(v151 + 1);
                  v157(v19, v153);
                  v231 = "VISIONED_ALERT_TITLE";
                  v158 = v230;
                  v152(v230, v150, v153);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
                  v159 = swift_allocObject();
                  *(v159 + 16) = xmmword_1BE0B69E0;
                  v160 = [v35 issuerName];
                  v161 = sub_1BE052434();
                  v163 = v162;

                  v164 = MEMORY[0x1E69E6158];
                  *(v159 + 56) = MEMORY[0x1E69E6158];
                  *(v159 + 64) = sub_1BD110550();
                  *(v159 + 32) = v161;
                  *(v159 + 40) = v163;
                  v165 = sub_1BE04B714();
                  v167 = v166;
                  v159, v166, v168, v169, v170, v171, v172, v173;
                  v157(v158, v153);
                  v174 = *MEMORY[0x1E69BB840];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1BE0B6CA0;
                  *(inited + 32) = sub_1BE052434();
                  *(inited + 72) = v164;
                  v176 = v227;
                  *(inited + 40) = v177;
                  *(inited + 48) = v176;
                  *(inited + 56) = v226;
                  *(inited + 80) = sub_1BE052434();
                  *(inited + 88) = v178;
                  *(inited + 120) = v164;
                  *(inited + 96) = v165;
                  *(inited + 104) = v167;
                  v179 = v174;
                  v180 = sub_1BD1AACF8(inited);
                  swift_setDeallocating();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080, &qword_1BE0BDD40);
                  swift_arrayDestroy();
                  v181 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
                  v182 = sub_1BE052224();
                  v180, v183, v184, v185, v186, v187, v188, v189;
                  v190 = [v181 initWithDomain:v179 code:0 userInfo:v182];

                  v191 = swift_allocObject();
                  v192 = v232;
                  v193 = v234;
                  v191[2] = v232;
                  v191[3] = v193;
                  v191[4] = v190;
                  v194 = v190;
                  sub_1BE048964();
                  v195 = sub_1BE04A844();

                  v196 = swift_allocObject();
                  *(v196 + 16) = sub_1BD5C6964;
                  *(v196 + 24) = v191;
                  v239 = sub_1BD1B6F78;
                  v240 = v196;
                  aBlock = MEMORY[0x1E69E9820];
                  v236 = 1107296256;
                  v237 = sub_1BD126964;
                  v238 = &block_descriptor_33_4;
                  v197 = _Block_copy(&aBlock);
                  v198 = v240;
                  sub_1BE048964();
                  v198, v199, v200, v201, v202, v203, v204, v205;
                  v206 = PKAlertForDisplayableErrorWithCancelHandler(v195, 0, v197);
                  _Block_release(v197);

                  if (v206)
                  {
                    v207 = v229 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate;
                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      v208 = *(v207 + 8);
                      ObjectType = swift_getObjectType();
                      (*(v208 + 24))(v206, ObjectType, v208);

                      swift_unknownObjectRelease();
                    }

                    else
                    {
                    }

                    v191, v219, v220, v221, v222, v223, v224, v225;
                  }

                  else
                  {
                    v211 = v194;
                    v192(v194, 0xD000000000000029, 0x80000001BE130A80, 4);

                    v191, v212, v213, v214, v215, v216, v217, v218;
                  }
                }

                else
                {
                  __break(1u);
                }

                return;
              }

LABEL_35:
              v232(0, 0, 0, 0);

              v210 = v233;

              return;
            }

            swift_unknownObjectRelease();
          }

          v39, v50, v51, v52, v53, v54, v55, v56;

          goto LABEL_35;
        }
      }

      aBlock = 0;
      v236 = 0xE000000000000000;
      sub_1BE053834();
      MEMORY[0x1BFB3F610](0xD000000000000033, 0x80000001BE1309E0);
      MEMORY[0x1BFB3F610](v22, v24);
      v24, v106, v107, v108, v109, v110, v111, v112;
      v113 = aBlock;
      v114 = v236;
      sub_1BE04D0E4();
      sub_1BE048C84();
      v115 = sub_1BE04D204();
      v116 = sub_1BE052C54();
      v114, v117, v118, v119, v120, v121, v122, v123;
      if (os_log_type_enabled(v115, v116))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        aBlock = v125;
        *v124 = 136315138;
        *(v124 + 4) = sub_1BD123690(v113, v114, &aBlock);
        _os_log_impl(&dword_1BD026000, v115, v116, "%s", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v125, v126, v127, v128, v129, v130, v131, v132);
        MEMORY[0x1BFB45F20](v125, -1, -1);
        MEMORY[0x1BFB45F20](v124, -1, -1);
      }

      (*(v5 + 8))(v13, v4);
      v232(v113, v114, 0, 1);

      v114, v133, v134, v135, v136, v137, v138, v139;
    }

    else
    {

      v24, v88, v89, v90, v91, v92, v93, v94;
      sub_1BE04D0E4();
      v95 = sub_1BE04D204();
      v96 = sub_1BE052C54();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        aBlock = v98;
        *v97 = 136315138;
        *(v97 + 4) = sub_1BD123690(0xD000000000000041, 0x80000001BE130990, &aBlock);
        _os_log_impl(&dword_1BD026000, v95, v96, "%s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v98, v99, v100, v101, v102, v103, v104, v105);
        MEMORY[0x1BFB45F20](v98, -1, -1);
        MEMORY[0x1BFB45F20](v97, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
      v232(0xD000000000000041, 0x80000001BE130990, 0, 1);
    }
  }

  else
  {
    sub_1BE04D0E4();
    v75 = sub_1BE04D204();
    v76 = sub_1BE052C54();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = a1;
      v79 = swift_slowAlloc();
      aBlock = v79;
      *v77 = 136315138;
      *(v77 + 4) = sub_1BD123690(0xD000000000000033, 0x80000001BE130950, &aBlock);
      _os_log_impl(&dword_1BD026000, v75, v76, "%s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79, v80, v81, v82, v83, v84, v85, v86);
      v87 = v79;
      a1 = v78;
      MEMORY[0x1BFB45F20](v87, -1, -1);
      MEMORY[0x1BFB45F20](v77, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    a1(0xD000000000000033, 0x80000001BE130950, 0, 1);
  }
}

void sub_1BD5C5160(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = a1;
  if (a1)
  {
    goto LABEL_4;
  }

  v6 = PKDisplayableErrorForCommonType();
  if (v6)
  {
    a1 = 0;
LABEL_4:
    v7 = a1;
    v8 = v6;
    v9 = sub_1BE04A844();

    goto LABEL_5;
  }

  v9 = 0;
LABEL_5:
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v24[4] = sub_1BD1B5F6C;
  v25 = v10;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1BD126964;
  v24[3] = &block_descriptor_14_2;
  v11 = _Block_copy(v24);
  v12 = v25;
  sub_1BE048964();
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = PKAlertForDisplayableErrorWithCancelHandler(v9, 0, v11);
  _Block_release(v11);

  if (v20)
  {
    v21 = v3 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      (*(v22 + 24))(v20, ObjectType, v22);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    a2(0);
  }
}

void sub_1BD5C5338(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_paymentOffersController];
  v6 = sub_1BE052404();
  v30 = [v5 dynamicContentPageForCriteriaIdentifier:v6 pageType:1];

  if (v30)
  {
    sub_1BD5C55CC(1, 0, a1, a2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0D39A0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    sub_1BD112388(inited);
    v9 = v8;
    swift_setDeallocating();
    swift_arrayDestroy();
    v10 = sub_1BE052404();
    sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
    sub_1BD22CFF8();
    v11 = sub_1BE052A24();
    v9, v12, v13, v14, v15, v16, v17, v18;
    v19 = swift_allocObject();
    v19[2] = v2;
    v19[3] = a1;
    v19[4] = a2;
    aBlock[4] = sub_1BD5C686C;
    v32 = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3CC8C0;
    aBlock[3] = &block_descriptor_136;
    v20 = _Block_copy(aBlock);
    v21 = v32;
    v22 = v2;
    sub_1BE048964();
    v21, v23, v24, v25, v26, v27, v28, v29;
    [v5 updateDynamicContentPageForCriteriaIdentifier:v10 pageTypes:v11 completion:v20];
    _Block_release(v20);
  }
}

void sub_1BD5C55CC(char a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  v15 = type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView(0);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v69 - v18;
  if (a1)
  {
    v74 = v17;
    v76 = a3;
    v77 = a4;
    v20 = *(v4 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_paymentOffersController);
    v21 = sub_1BE052404();
    v22 = [v20 dynamicContentPageForCriteriaIdentifier:v21 pageType:1];

    if (v22)
    {
      v71 = *(v4 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_criteria);
      v23 = swift_allocObject();
      v73 = v22;
      v24 = v23;
      swift_unknownObjectWeakInit();
      v72 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v75 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = 0;
      v71 = v71;
      v70 = v20;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710, &qword_1BE0B8580);
      sub_1BE051694();
      *(v19 + 7) = v79;
      v25 = type metadata accessor for MultiHyperLinkDetailSheet(0);
      (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
      sub_1BD0DE19C(v14, v11, &unk_1EBD45160, &qword_1BE0C25A0);
      sub_1BE051694();
      sub_1BD0DE53C(v14, &unk_1EBD45160, &qword_1BE0C25A0);
      v26 = &v19[*(v15 + 60)];
      LOBYTE(v78) = 0;
      sub_1BE051694();
      v27 = *(&v79 + 1);
      *v26 = v79;
      *(v26 + 1) = v27;
      v29 = v70;
      v28 = v71;
      *v19 = v70;
      *(v19 + 1) = v28;
      v30 = v72;
      *(v19 + 2) = v73;
      *(v19 + 3) = 0;
      *(v19 + 4) = sub_1BD5C6878;
      *(v19 + 5) = v24;
      *(v19 + 6) = PKEdgeInsetsMake;
      *(v19 + 7) = 0;
      *(v19 + 8) = sub_1BD5C6880;
      *(v19 + 9) = v30;
      v31 = v75;
      *(v19 + 10) = sub_1BD5C6888;
      *(v19 + 11) = v31;
      *(v19 + 12) = PKEdgeInsetsMake;
      *(v19 + 13) = 0;
      *&v79 = 0;
      BYTE8(v79) = -32;
      v32 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
      v33 = v28;
      v34 = v29;
      v35 = v29;
      v36 = v34;
      v37 = v28;
      v38 = v4;
      v39 = sub_1BD8D1EE0(&v79, v35, v37);

      v40 = &v19[*(v15 + 64)];
      v78 = v39;
      sub_1BE051694();
      v24, v41, v42, v43, v44, v45, v46, v47;
      v30, v48, v49, v50, v51, v52, v53, v54;
      v75, v55, v56, v57, v58, v59, v60, v61;
      v62 = *(&v79 + 1);
      *v40 = v79;
      *(v40 + 1) = v62;
      sub_1BD5C6890(v19, v74, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView);
      v63 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C288, &unk_1BE0E5A40));
      v64 = sub_1BE04F894();
      v65 = *(v38 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_viewController);
      *(v38 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_viewController) = v64;

      v76(1);
      sub_1BD5C68F8(v19, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView);
      return;
    }

    v66 = a2;
    v67 = v76;
    v68 = v77;
  }

  else
  {
    v66 = a2;
    v67 = a3;
    v68 = a4;
  }

  sub_1BD5C5160(v66, v67, v68);
}

uint64_t sub_1BD5C5AD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BE051FA4();
  v11 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a2;
  v16[4] = v28;
  v16[5] = a5;
  aBlock[4] = sub_1BD5C6958;
  v31 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_21_4;
  v17 = _Block_copy(aBlock);
  v18 = v31;
  v19 = a2;
  sub_1BE048964();
  v18, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v17);
  _Block_release(v17);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v29);
}

void sub_1BD5C5DAC(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2)
    {
      v13 = a2;
      sub_1BE04D0E4();
      v14 = a2;
      v15 = v12;
      v16 = sub_1BE04D204();
      v17 = sub_1BE052C54();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v47 = a3;
        v19 = v18;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v48 = v46;
        *v19 = 136315394;
        v44 = v16;
        v20 = a4;
        v21 = *&v15[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_criteriaIdentifier];
        v22 = *&v15[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_criteriaIdentifier + 8];
        sub_1BE048C84();
        v23 = sub_1BD123690(v21, v22, &v48);
        v22, v24, v25, v26, v27, v28, v29, v30;
        *(v19 + 4) = v23;
        a4 = v20;
        *(v19 + 12) = 2112;
        v31 = a2;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 14) = v32;
        v16 = v44;
        v33 = v45;
        *v45 = v32;
        _os_log_impl(&dword_1BD026000, v16, v17, "Could not get splash screen dynamic content for %s. Error: %@", v19, 0x16u);
        sub_1BD0DE53C(v33, &unk_1EBD3E590, &unk_1BE0B7E50);
        MEMORY[0x1BFB45F20](v33, -1, -1);
        v34 = v46;
        __swift_destroy_boxed_opaque_existential_0(v46, v35, v36, v37, v38, v39, v40, v41);
        MEMORY[0x1BFB45F20](v34, -1, -1);
        v42 = v19;
        a3 = v47;
        MEMORY[0x1BFB45F20](v42, -1, -1);
      }

      (*(v8 + 8))(v10, v7);
      v43 = a2;
      sub_1BD5C5160(a2, a3, a4);
    }

    else
    {
      sub_1BD5C55CC(1, 0, a3, a4);
    }
  }
}

void sub_1BD5C6080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  sub_1BD0DE19C(a1, v10, &qword_1EBD520A0, &qword_1BE0B9840);
  v13 = type metadata accessor for AvailablePass(0);
  if ((*(*(v13 - 8) + 48))(v10, 1, v13) == 1)
  {
    sub_1BD0DE53C(v10, &qword_1EBD520A0, &qword_1BE0B9840);
LABEL_7:
    v36 = &v12[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 1);
      ObjectType = swift_getObjectType();
      v42 = 0u;
      v43 = 0u;
      v44 = 2;
      v39 = v12;
      sub_1BD865A00(v39, &off_1F3BB05A8, &v42, ObjectType, v37);
      swift_unknownObjectRelease();

      goto LABEL_9;
    }

    return;
  }

  sub_1BD5C6890(v10, v7, type metadata accessor for WrappedPass);
  sub_1BD5C68F8(v10, type metadata accessor for AvailablePass);
  v14 = WrappedPass.secureElementPass.getter();
  sub_1BD5C68F8(v7, type metadata accessor for WrappedPass);
  if (!v14)
  {
    goto LABEL_7;
  }

  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BE0B7020;
  *(v15 + 32) = v14;
  v16 = v14;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v17 = sub_1BE04BC74();
  v18 = *&v12[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_context];
  v19 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
  v20 = sub_1BE048964();
  v21 = sub_1BD989980(v20, v17);
  v18, v22, v23, v24, v25, v26, v27, v28;
  v29 = &v12[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v29 + 1);
    v31 = swift_getObjectType();
    v32 = v12;
    v33 = sub_1BE04BD44();
    *(&v43 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70, &unk_1BE0D6840);
    v41 = v16;
    *&v42 = v33;
    v44 = 0;
    v34 = *(v30 + 8);
    v35 = v21;
    v34(v32, &off_1F3BB05A8, &v42, v21, &off_1F3BC8F80, v31, v30);
    swift_unknownObjectRelease();

LABEL_9:
    sub_1BD0DE53C(&v42, &unk_1EBD3F510, &unk_1BE0B9B30);
    return;
  }
}

void sub_1BD5C647C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
    v4 = sub_1BE04C384();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BE0B69E0;
    sub_1BD6FB2CC();
    *(v7 + v6) = v8;
    (*(v5 + 104))(v7 + v6, *MEMORY[0x1E69B82A8], v4);
    sub_1BE04C3D4();
    swift_allocObject();
    v9 = sub_1BE04C394();
    v10 = *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_context];
    type metadata accessor for ProvisioningInAppPushProvFlowSection();
    v11 = swift_allocObject();
    v11[5] = 0;
    swift_unknownObjectWeakInit();
    v11[6] = 0xD000000000000018;
    v11[7] = 0x80000001BE124910;
    v11[8] = 0;
    v11[2] = v10;
    v11[3] = v9;
    v12 = &v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      sub_1BE048964();
      sub_1BE048964();
      v15 = v3;
      sub_1BD865948(v15, &off_1F3BB05A8, v11, &off_1F3BA8BB8, ObjectType, v13);
      v11, v16, v17, v18, v19, v20, v21, v22;

      swift_unknownObjectRelease();
      v30 = v9;
    }

    else
    {
      sub_1BE048964();

      v30 = v11;
    }

    v30, v23, v24, v25, v26, v27, v28, v29;
  }
}

void sub_1BD5C66C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      memset(v7, 0, sizeof(v7));
      v8 = 2;
      v6 = v2;
      sub_1BD865A00(v6, &off_1F3BB05A8, v7, ObjectType, v4);
      swift_unknownObjectRelease();

      sub_1BD0DE53C(v7, &unk_1EBD3F510, &unk_1BE0B9B30);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD5C679C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD5C67D8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD5C682C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_viewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1BD5C6890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5C68F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD5C6964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = v2;
  v1(v2, 0xD000000000000029, 0x80000001BE130A80, 4);
}

id sub_1BD5C69F0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  [v1 setAutocorrectionType_];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C308, &qword_1BE0E5BB8);
  sub_1BE04FF74();
  [v1 setDelegate_];

  sub_1BE04FF74();
  [v1 addTarget:v6 action:sel_textFieldDidChangeWithTextField_ forControlEvents:0x20000];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v3) = 1132068864;
  [v1 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1132068864;
  [v1 setContentHuggingPriority:0 forAxis:v4];
  [v1 setAccessibilityIdentifier_];
  return v1;
}

uint64_t sub_1BD5C6B7C()
{
  if (*(v0 + 56))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v2 == 1)
  {
    sub_1BE0516A4();
    if (v2)
    {
      return 0;
    }
  }

  sub_1BD1F2290();
  sub_1BE051264();
  return sub_1BE052FE4();
}

id sub_1BD5C6C28(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C308, &qword_1BE0E5BB8);
  sub_1BE04FF74();
  v4 = v48[0];
  v5 = v48[0] + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent;
  v6 = *(v48[0] + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 48);
  v8 = *(v48[0] + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent);
  v7 = *(v48[0] + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 16);
  v50[2] = *(v48[0] + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 32);
  v50[3] = v6;
  v50[0] = v8;
  v50[1] = v7;
  v10 = *(v48[0] + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 80);
  v9 = *(v48[0] + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 96);
  v11 = *(v48[0] + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 64);
  v51 = *(v48[0] + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 112);
  v50[5] = v10;
  v50[6] = v9;
  v50[4] = v11;
  v12 = *v2;
  v13 = *(v2 + 16);
  v14 = *(v2 + 48);
  *(v5 + 32) = *(v2 + 32);
  *(v5 + 48) = v14;
  *v5 = v12;
  *(v5 + 16) = v13;
  v15 = *(v2 + 64);
  v16 = *(v2 + 80);
  v17 = *(v2 + 96);
  *(v5 + 112) = *(v2 + 112);
  *(v5 + 80) = v16;
  *(v5 + 96) = v17;
  *(v5 + 64) = v15;
  sub_1BD5C75CC(v2, v49);
  sub_1BD5C7604(v50);

  v18 = *(v2 + 16);
  v49[0] = *v2;
  v49[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
  MEMORY[0x1BFB3E970](v48, v19);
  v20 = v48[1];
  v21 = sub_1BE052404();
  v20, v22, v23, v24, v25, v26, v27, v28;
  [a1 setText_];

  v29 = sub_1BD5C6B7C();
  [a1 setTextColor_];

  if ((*(v2 + 56) & 1) != 0 || (*(v2 + 32) & 1) == 0)
  {
    v35 = sub_1BD1ACD28(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD430F8, &unk_1BE0F47B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v31 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v32 = sub_1BD1F2290();
    v33 = v31;
    sub_1BE051264();
    v34 = sub_1BE052FE4();
    *(inited + 64) = v32;
    *(inited + 40) = v34;
    v35 = sub_1BD1ACD28(inited);
    swift_setDeallocating();
    sub_1BD3726C0(inited + 32);
  }

  v36 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v37 = sub_1BE052404();
  type metadata accessor for Key(0);
  sub_1BD372728();
  v38 = sub_1BE052224();
  v35, v39, v40, v41, v42, v43, v44, v45;
  v46 = [v36 initWithString:v37 attributes:v38];

  [a1 setAttributedPlaceholder_];
  [a1 setTextContentType_];
  return [a1 setAutocapitalizationType_];
}

double sub_1BD5C6EE4()
{
  v1 = v0;
  v2 = v0[1];
  v17 = *v0;
  v18 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
  MEMORY[0x1BFB3E970](&v15, v3);
  v5 = v15;
  v4 = v16;
  v16, v6, v7, v8, v9, v10, v11, v12;
  v13 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v13 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v17 = *(v1 + 88);
  LOBYTE(v15) = v13 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v17 = *(v1 + 104);
  LOBYTE(v15) = 1;
  sub_1BE0516B4();
  return result;
}

id sub_1BD5C725C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddressEditingTextField.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1BD5C73B8@<X0>(void *a1@<X8>)
{
  v3 = v1[5];
  v22 = v1[4];
  v23 = v3;
  v24 = v1[6];
  v25 = *(v1 + 14);
  v4 = v1[1];
  v18 = *v1;
  v19 = v4;
  v5 = v1[3];
  v20 = v1[2];
  v21 = v5;
  v6 = type metadata accessor for AddressEditingTextField.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent];
  v9 = v21;
  v11 = v18;
  v10 = v19;
  *(v8 + 2) = v20;
  *(v8 + 3) = v9;
  *v8 = v11;
  *(v8 + 1) = v10;
  v13 = v23;
  v12 = v24;
  v14 = v22;
  *(v8 + 14) = v25;
  *(v8 + 5) = v13;
  *(v8 + 6) = v12;
  *(v8 + 4) = v14;
  sub_1BD5C75CC(&v18, v17);
  v16.receiver = v7;
  v16.super_class = v6;
  result = objc_msgSendSuper2(&v16, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD5C7484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5C7634();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD5C74E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5C7634();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD5C754C(uint64_t a1)
{
  sub_1BD5C7634();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD5C7578()
{
  result = qword_1EBD4C300;
  if (!qword_1EBD4C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C300);
  }

  return result;
}

unint64_t sub_1BD5C7634()
{
  result = qword_1EBD4C310;
  if (!qword_1EBD4C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C310);
  }

  return result;
}

uint64_t sub_1BD5C7688(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_1BE053B84(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BD5C770C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1BD5C795C(v7, v9) & 1;
}

uint64_t sub_1BD5C7778()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = [v1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_1BE052434();
    v5 = v4;

    sub_1BE053D24();
    sub_1BE052524();
    v5, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    sub_1BE053D24();
  }

  return sub_1BE053D64();
}

void sub_1BD5C781C(uint64_t a1)
{
  v2 = [*v1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_1BE052434();
    v5 = v4;

    sub_1BE053D24();
    sub_1BE052524();

    v5, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    sub_1BE053D24();
  }
}

uint64_t sub_1BD5C78BC(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  v3 = [v2 identifier];
  if (v3)
  {
    v4 = v3;
    sub_1BE052434();
    v6 = v5;

    sub_1BE053D24();
    sub_1BE052524();
    v6, v7, v8, v9, v10, v11, v12, v13;
  }

  else
  {
    sub_1BE053D24();
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD5C795C(uint64_t a1, uint64_t a2)
{
  sub_1BD22F42C();
  if ((sub_1BE053074() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v8 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v7 & 1) != 0 || v4 != v6)
    {
      return result;
    }
  }

  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 64);
  v11 = *(a2 + 64);
  if (v10)
  {
    if (!v11 || (*(a1 + 56) != *(a2 + 56) || v10 != v11) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD5C7AA0(void *a1)
{
  v2 = [a1 dateComponentsRange];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69B8790]) init];
    v5 = [v4 stringFromDateComponentsRange_];

    if (v5)
    {
      v6 = sub_1BE052434();

      goto LABEL_7;
    }
  }

  v7 = [a1 detail];
  if (!v7)
  {
    return 0;
  }

  v3 = v7;
  v6 = sub_1BE052434();
LABEL_7:

  return v6;
}

void sub_1BD5C7B84(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD22F42C();
  v8 = [a1 amount];
  v9 = [objc_opt_self() zero];
  v10 = sub_1BE053074();

  if (v10)
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E69B8068], v4);
    v11 = PKPassKitBundle();
    if (v11)
    {
      v12 = v11;
      sub_1BE04B6F4();

      (*(v5 + 8))(v7, v4);
      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  v13 = [a1 amount];
  v14 = sub_1BE052404();
  v15 = PKFormattedCurrencyStringFromNumber();

  if (!v15)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_1BE052434();
}

uint64_t sub_1BD5C7DB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1BD5C7DF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD5C7E60()
{
  result = qword_1EBD4C320;
  if (!qword_1EBD4C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C320);
  }

  return result;
}

uint64_t sub_1BD5C7EB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD5C7EFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD5C7F50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C330, &qword_1BE0E5DB0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v37[-v2];
  sub_1BD5C81AC(&v37[-v2]);
  v4 = swift_allocObject();
  v5 = v0[3];
  *(v4 + 3) = v0[2];
  *(v4 + 4) = v5;
  *(v4 + 5) = v0[4];
  v6 = v0[1];
  *(v4 + 1) = *v0;
  *(v4 + 2) = v6;
  v7 = &v3[*(v1 + 36)];
  *v7 = sub_1BD5CA3EC;
  v7[1] = v4;
  v7[2] = 0;
  v7[3] = 0;
  v8 = *v0;
  if (*v0)
  {
    KeyPath = swift_getKeyPath();
    v10 = swift_getKeyPath();
    sub_1BD5CA410(v0, v38);
    v11 = v8;
    sub_1BE04D8B4(v38);
    KeyPath, v12, v13, v14, v15, v16, v17, v18;
    v10, v19, v20, v21, v22, v23, v24, v25;

    v37[15] = v38[0];
    v26 = swift_allocObject();
    v27 = v0[3];
    v26[3] = v0[2];
    v26[4] = v27;
    v26[5] = v0[4];
    v28 = v0[1];
    v26[1] = *v0;
    v26[2] = v28;
    sub_1BD5CA410(v0, v38);
    sub_1BD5CA4D0();
    sub_1BE051064();
    v26, v29, v30, v31, v32, v33, v34, v35;
    return sub_1BD0DE53C(v3, &qword_1EBD4C330, &qword_1BE0E5DB0);
  }

  else
  {
    sub_1BD5CA410(v0, v38);
    type metadata accessor for SavingsStatementsModel(0);
    sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5C81AC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C390, &qword_1BE0E5E28);
  v64 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v4 = v62 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C380, &qword_1BE0E5E18);
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v6 = v62 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3A0, &qword_1BE0E5EA8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = v62 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3A8, &qword_1BE0E5EB0);
  MEMORY[0x1EEE9AC00](v66);
  v9 = v62 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C358, &qword_1BE0E5E08);
  MEMORY[0x1EEE9AC00](v70);
  v11 = v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C368, &qword_1BE0E5E10);
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v62 - v13;
  v75 = v1[4];
  v73[0] = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C398, &unk_1BE0E5E50);
  sub_1BE0516A4();
  v15 = v74[2];
  v74, v16, v17, v18, v19, v20, v21, v22;
  if (v15)
  {
    v73[0] = v75;
    sub_1BE0516A4();
    v23 = v74;
    sub_1BD6CA5A4(v74);
    v25 = v24;
    v23, v26, v27, v28, v29, v30, v31, v32;
    v74 = v25;
    swift_getKeyPath();
    v33 = swift_allocObject();
    *(v33 + 16) = v15;
    v34 = *v2;
    *(v33 + 40) = v2[1];
    v35 = v2[3];
    *(v33 + 56) = v2[2];
    *(v33 + 72) = v35;
    *(v33 + 88) = v2[4];
    *(v33 + 24) = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1BD5CA898;
    *(v36 + 24) = v33;
    sub_1BD5CA410(v2, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3B0, &qword_1BE0E5ED8);
    sub_1BD0DE4F4(&qword_1EBD4C3B8, &qword_1EBD4C3B0, &qword_1BE0E5ED8, MEMORY[0x1E69E6338]);
    sub_1BD5CA8E4();
    sub_1BD5CA6F8();
    sub_1BE0519C4();
    v37 = v65;
    (*(v65 + 2))(v9, v14, v12);
    swift_storeEnumTagMultiPayload();
    sub_1BD5CA674();
    sub_1BD5CA74C();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v11, v68, &qword_1EBD4C358, &qword_1BE0E5E08);
    swift_storeEnumTagMultiPayload();
    sub_1BD5CA5E8();
    sub_1BD5CA808();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v11, &qword_1EBD4C358, &qword_1BE0E5E08);
    return (*(v37 + 1))(v14, v12);
  }

  else
  {
    v62[0] = v4;
    v39 = v64;
    v65 = v9;
    v62[1] = v12;
    v40 = v69;
    v41 = *v1;
    if (*v1)
    {
      KeyPath = swift_getKeyPath();
      v43 = swift_getKeyPath();
      v44 = v41;
      sub_1BE04D8B4(v73);
      KeyPath, v45, v46, v47, v48, v49, v50, v51;
      v43, v52, v53, v54, v55, v56, v57, v58;

      if (v73[0])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F48, &qword_1BE0E5E20);
        sub_1BD0DE4F4(&qword_1EBD43F40, &qword_1EBD43F48, &qword_1BE0E5E20, MEMORY[0x1E69817F8]);
        sub_1BE051A44();
        v59 = v63;
        v60 = v67;
        (*(v63 + 16))(v65, v6, v67);
        swift_storeEnumTagMultiPayload();
        sub_1BD5CA674();
        sub_1BD5CA74C();
        sub_1BE04F9A4();
        sub_1BD0DE19C(v11, v68, &qword_1EBD4C358, &qword_1BE0E5E08);
        swift_storeEnumTagMultiPayload();
        sub_1BD5CA5E8();
        sub_1BD5CA808();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v11, &qword_1EBD4C358, &qword_1BE0E5E08);
        return (*(v59 + 8))(v6, v60);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F58, &unk_1BE0E5E30);
        sub_1BD3A552C();
        v61 = v62[0];
        sub_1BE051A44();
        (*(v39 + 16))(v68, v61, v40);
        swift_storeEnumTagMultiPayload();
        sub_1BD5CA5E8();
        sub_1BD5CA808();
        sub_1BE04F9A4();
        return (*(v39 + 8))(v61, v40);
      }
    }

    else
    {
      type metadata accessor for SavingsStatementsModel(0);
      sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
      result = sub_1BE04EEB4();
      __break(1u);
    }
  }

  return result;
}

void sub_1BD5C8A1C()
{
  v1 = v0;
  if (*v0)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *v0;
    sub_1BD2F3FCC(v2, v3);
    v30 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C398, &unk_1BE0E5E50);
    sub_1BE0516B4();
    if (v3)
    {

      v30 = *(v0 + 48);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v6 = swift_getKeyPath();
      sub_1BE04D8B4(&v30);
      KeyPath, v7, v8, v9, v10, v11, v12, v13;
      v6, v14, v15, v16, v17, v18, v19, v20;

      v28 = v30;
      if (v30 >> 62)
      {
        v29 = v30;
        sub_1BE053704();
        v28 = v29;
      }

      v28, v21, v22, v23, v24, v25, v26, v27;
      v30 = *(v1 + 48);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
  }

  else
  {
    type metadata accessor for SavingsStatementsModel(0);
    sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
    sub_1BE04EEB4();
    __break(1u);
  }
}

uint64_t sub_1BD5C8BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD5C8C5C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43FA8, &qword_1BE0D1190);
  return sub_1BD5C8CAC(a2 + *(v3 + 44));
}

uint64_t sub_1BD5C8CAC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1BE04E4F4();
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43FB0, &unk_1BE0D1198);
  v9((a1 + *(v10 + 48)), v5, v2);
  v11 = a1 + *(v10 + 64);
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = *(v3 + 8);
  v12(v8, v2);
  return (v12)(v5, v2);
}

id sub_1BD5C8E38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    *&v29 = v9;
    *(&v29 + 1) = v11;
    sub_1BD0DDEBC();
    v28 = sub_1BE0506C4();
    v13 = v12;
    LOBYTE(v9) = v14;
    v16 = v15;
    sub_1BE051CD4();
    sub_1BE04EE54();
    v17 = v9 & 1;
    v36 = v9 & 1;
    v18 = sub_1BE050414();
    KeyPath = swift_getKeyPath();
    v20 = [objc_opt_self() secondaryLabelColor];
    v21 = sub_1BE0511C4();
    v22 = swift_getKeyPath();
    v23 = swift_getKeyPath();
    result = sub_1BE0501D4();
    v37 = 1;
    *a1 = v28;
    *(a1 + 8) = v13;
    *(a1 + 16) = v17;
    *(a1 + 24) = v16;
    v24 = v34;
    *(a1 + 96) = v33;
    *(a1 + 112) = v24;
    *(a1 + 128) = v35;
    v25 = v30;
    *(a1 + 32) = v29;
    *(a1 + 48) = v25;
    v26 = v32;
    *(a1 + 64) = v31;
    *(a1 + 80) = v26;
    *(a1 + 144) = KeyPath;
    *(a1 + 152) = v18;
    *(a1 + 160) = v22;
    *(a1 + 168) = v21;
    *(a1 + 176) = v23;
    *(a1 + 184) = 1;
    *(a1 + 192) = result;
    *(a1 + 200) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 232) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5C9100@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = sub_1BE04F5B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3D0, &qword_1BE0E6008);
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v11 = &v23 - v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3D8, &qword_1BE0E6010);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v23 - v12;
  v27 = a1;
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3E0, &qword_1BE0E6018);
  sub_1BD0DE4F4(&qword_1EBD4C3E8, &qword_1EBD4C3E0, &qword_1BE0E6018, MEMORY[0x1E6981F48]);
  sub_1BE051A44();
  if (a2)
  {
    sub_1BE04F5A4();
  }

  else
  {
    sub_1BE04F594();
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3F0, &qword_1BE0E6020) + 36);
  (*(v6 + 16))(&v13[v14], v8, v5);
  v15 = *(v6 + 56);
  v15(&v13[v14], 0, 1, v5);
  (*(v9 + 32))(v13, v11, v25);
  KeyPath = swift_getKeyPath();
  v17 = &v13[*(v24 + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580, &qword_1BE0D8820) + 28);
  (*(v6 + 32))(v17 + v18, v8, v5);
  v15(v17 + v18, 0, 1, v5);
  *v17 = KeyPath;
  v19 = sub_1BE04F794();
  v20 = v26;
  sub_1BD0DE204(v13, v26, &qword_1EBD4C3D8, &qword_1BE0E6010);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3F8, &qword_1BE0E6060);
  v22 = (v20 + *(result + 36));
  *v22 = v19;
  v22[1] = sub_1BD3A51BC;
  v22[2] = 0;
  return result;
}

id sub_1BD5C946C@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  LODWORD(v47) = a2;
  v46 = a3;
  v4 = sub_1BE04BD74();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C400, &unk_1BE0E6068);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v50 = a1;
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416B0, &unk_1BE0E5EE0);
  sub_1BD0DE4F4(&qword_1EBD4C408, &qword_1EBD416B0, &unk_1BE0E5EE0, MEMORY[0x1E69E6338]);
  sub_1BD5CA998(&qword_1EBD4C3C8, sub_1BD3B7D94, MEMORY[0x1E69E81B8]);
  sub_1BD5CAAA0();
  v49 = v12;
  sub_1BE0519C4();
  v13 = 0;
  v14 = 0;
  v48 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if ((v47 & 1) == 0)
  {
    goto LABEL_4;
  }

  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  v47 = sub_1BE04EEC4();
  v41 = v18;
  type metadata accessor for DeviceAuthenticationModel(0);
  sub_1BD5CA998(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  v19 = sub_1BE04EEC4();
  v40 = v20;
  v22 = v42;
  v21 = v43;
  (*(v42 + 104))(v45, *MEMORY[0x1E69B80E0], v43);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = v45;
    v16 = sub_1BE04B6F4();
    v17 = v26;

    (*(v22 + 8))(v25, v21);
    v48 = v19;
    sub_1BE048964();
    sub_1BE048C84();
    v13 = v47;
    v27 = v47;
    v15 = v40;
    v14 = v41;
LABEL_4:
    v28 = *(v7 + 16);
    v28(v9, v49, v6);
    v29 = v9;
    v44 = v9;
    v30 = v6;
    v31 = v46;
    v28(v46, v29, v30);
    v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C418, &unk_1BE0E6090) + 48)];
    v33 = v48;
    sub_1BD5CAAF4(v13, v14, v48, v15, v16, v17);
    sub_1BD5CAB4C(v13, v14, v33, v15, v16, v17, v34, v35);
    *v32 = v13;
    *(v32 + 1) = v14;
    *(v32 + 2) = v33;
    *(v32 + 3) = v15;
    *(v32 + 4) = v16;
    *(v32 + 5) = v17;
    v36 = *(v7 + 8);
    v36(v49, v30);
    sub_1BD5CAB4C(v13, v14, v33, v15, v16, v17, v37, v38);
    return (v36)(v44, v30);
  }

  __break(1u);
  return result;
}

__n128 sub_1BD5C992C@<Q0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  v4 = v3;
  v5 = sub_1BE04EEC4();
  v7 = v6;
  type metadata accessor for DeviceAuthenticationModel(0);
  sub_1BD5CA998(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  v8 = sub_1BE04EEC4();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BE051694();
  result = v12;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 56) = v13;
  return result;
}

uint64_t sub_1BD5C9A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1BE04C744();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04C734();
  v31 = *(v7 - 8);
  v8 = v31;
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C448, &qword_1BE0E6148);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v31 - v18);
  *v19 = sub_1BE051CE4();
  v19[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C450, &qword_1BE0E6150);
  sub_1BD5C9DA0(a1, v19 + *(v21 + 44));
  (*(v4 + 104))(v6, *MEMORY[0x1E69BC950], v3);
  sub_1BE04C724();
  sub_1BD0DE19C(v19, v16, &qword_1EBD4C448, &qword_1BE0E6148);
  v34 = 1;
  v22 = *(v8 + 16);
  v23 = v10;
  v24 = v32;
  v22(v10, v13, v32);
  v25 = v33;
  sub_1BD0DE19C(v16, v33, &qword_1EBD4C448, &qword_1BE0E6148);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C458, &qword_1BE0E6158);
  v27 = v25 + *(v26 + 48);
  v28 = v34;
  *v27 = 0;
  *(v27 + 8) = v28;
  v22((v25 + *(v26 + 64)), v23, v24);
  v29 = *(v31 + 8);
  v29(v13, v24);
  sub_1BD0DE53C(v19, &qword_1EBD4C448, &qword_1BE0E6148);
  v29(v23, v24);
  return sub_1BD0DE53C(v16, &qword_1EBD4C448, &qword_1BE0E6148);
}

uint64_t sub_1BD5C9DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C460, &unk_1BE0E6160);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v48 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE68, &qword_1BE0C4CB0);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  v13 = sub_1BE04EEC4();
  v15 = *a1;
  if (*a1)
  {
    v16 = v13;
    v17 = v14;
    v53 = a2;
    v18 = v15;
    v19 = sub_1BE04D804();
    v20 = *(a1 + 16);
    type metadata accessor for DeviceAuthenticationModel(0);
    if (v20)
    {
      sub_1BD5CA998(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
      sub_1BE048964();
      v21 = sub_1BE04D804();
      v54 = v16;
      v55 = v17;
      v56 = v19;
      v57 = v15;
      v58 = v21;
      v59 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE80, &unk_1BE0E6170);
      sub_1BD247ED4();
      v22 = v49;
      sub_1BE04E8B4();
      (*(v50 + 32))(v9, v22, v51);
      *&v9[*(v48 + 36)] = 0;
      sub_1BD0DE204(v9, v12, &qword_1EBD3EE68, &qword_1BE0C4CB0);
      v23 = *(a1 + 40);
      v54 = *(a1 + 32);
      v55 = v23;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v24 = sub_1BE0506C4();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = v52;
      sub_1BD0DE19C(v12, v52, &qword_1EBD3EE68, &qword_1BE0C4CB0);
      v32 = v53;
      sub_1BD0DE19C(v31, v53, &qword_1EBD3EE68, &qword_1BE0C4CB0);
      v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C468, &qword_1BE0E6190) + 48);
      *v33 = v24;
      *(v33 + 8) = v26;
      v34 = (v28 & 1);
      *(v33 + 16) = v34;
      *(v33 + 24) = v30;
      sub_1BD0D7F18(v24, v26, v34);
      sub_1BE048C84();
      sub_1BD0DE53C(v12, &qword_1EBD3EE68, &qword_1BE0C4CB0);
      sub_1BD0DDF10(v24, v26, v34, v35, v36, v37, v38, v39);
      v30, v40, v41, v42, v43, v44, v45, v46;
      return sub_1BD0DE53C(v31, &qword_1EBD3EE68, &qword_1BE0C4CB0);
    }
  }

  else
  {
    sub_1BE04EEB4();
    __break(1u);
  }

  sub_1BD5CA998(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD5CA1E4@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = v2[2];
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C440, &qword_1BE0E6140);
  return sub_1BD5C9A6C(v7, a2 + *(v5 + 44));
}

uint64_t sub_1BD5CA250@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  v6 = sub_1BE04EEC4();
  v8 = v7;
  type metadata accessor for DeviceAuthenticationModel(0);
  sub_1BD5CA998(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  v9 = sub_1BE04EEC4();
  v11 = v10;
  sub_1BE051694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C328, &qword_1BE0E5CF0);
  result = sub_1BE051694();
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v11;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2 & 1;
  *(a3 + 48) = v13;
  *(a3 + 56) = v14;
  *(a3 + 64) = v13;
  *(a3 + 72) = v14;
  return result;
}

uint64_t objectdestroyTm_65()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[9], v8, v9, v10, v11, v12, v13, v14;
  v0[10], v15, v16, v17, v18, v19, v20, v21;
  v0[11], v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

void sub_1BD5CA4A0(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    sub_1BD5C8A1C();
  }
}

unint64_t sub_1BD5CA4D0()
{
  result = qword_1EBD4C338;
  if (!qword_1EBD4C338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C330, &qword_1BE0E5DB0);
    sub_1BD5CA55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C338);
  }

  return result;
}

unint64_t sub_1BD5CA55C()
{
  result = qword_1EBD4C340;
  if (!qword_1EBD4C340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C348, &qword_1BE0E5E00);
    sub_1BD5CA5E8();
    sub_1BD5CA808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C340);
  }

  return result;
}

unint64_t sub_1BD5CA5E8()
{
  result = qword_1EBD4C350;
  if (!qword_1EBD4C350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C358, &qword_1BE0E5E08);
    sub_1BD5CA674();
    sub_1BD5CA74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C350);
  }

  return result;
}

unint64_t sub_1BD5CA674()
{
  result = qword_1EBD4C360;
  if (!qword_1EBD4C360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C368, &qword_1BE0E5E10);
    sub_1BD5CA6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C360);
  }

  return result;
}

unint64_t sub_1BD5CA6F8()
{
  result = qword_1EBD4C370;
  if (!qword_1EBD4C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C370);
  }

  return result;
}

unint64_t sub_1BD5CA74C()
{
  result = qword_1EBD4C378;
  if (!qword_1EBD4C378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C380, &qword_1BE0E5E18);
    sub_1BD0DE4F4(&qword_1EBD43F40, &qword_1EBD43F48, &qword_1BE0E5E20, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C378);
  }

  return result;
}

unint64_t sub_1BD5CA808()
{
  result = qword_1EBD4C388;
  if (!qword_1EBD4C388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C390, &qword_1BE0E5E28);
    sub_1BD3A552C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C388);
  }

  return result;
}

uint64_t sub_1BD5CA8A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

unint64_t sub_1BD5CA8E4()
{
  result = qword_1EBD4C3C0;
  if (!qword_1EBD4C3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416B0, &unk_1BE0E5EE0);
    sub_1BD5CA998(&qword_1EBD4C3C8, sub_1BD3B7D94, MEMORY[0x1E69E81B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C3C0);
  }

  return result;
}

uint64_t sub_1BD5CA998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD5CA9E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1BD5CAA28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD5CAAA0()
{
  result = qword_1EBD4C410;
  if (!qword_1EBD4C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C410);
  }

  return result;
}

id sub_1BD5CAAF4(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v6 = result;
    sub_1BE048964();
    sub_1BE048C84();

    return v6;
  }

  return result;
}

void sub_1BD5CAB4C(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a6)
  {
    a6, a2, a3, a4, a5, a6, a7, a8;

    a3, v10, v11, v12, v13, v14, v15, v16;
  }
}

unint64_t sub_1BD5CABA8()
{
  result = qword_1EBD4C420;
  if (!qword_1EBD4C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C3F8, &qword_1BE0E6060);
    sub_1BD5CAC34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C420);
  }

  return result;
}

unint64_t sub_1BD5CAC34()
{
  result = qword_1EBD4C428;
  if (!qword_1EBD4C428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C3D8, &qword_1BE0E6010);
    sub_1BD5CACEC();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580, &qword_1BE0D8820, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C428);
  }

  return result;
}

unint64_t sub_1BD5CACEC()
{
  result = qword_1EBD4C430;
  if (!qword_1EBD4C430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C3F0, &qword_1BE0E6020);
    sub_1BD5CADA4();
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0, &unk_1BE0DFEE0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C430);
  }

  return result;
}

unint64_t sub_1BD5CADA4()
{
  result = qword_1EBD4C438;
  if (!qword_1EBD4C438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C3D0, &qword_1BE0E6008);
    sub_1BD0DE4F4(&qword_1EBD4C3E8, &qword_1EBD4C3E0, &qword_1BE0E6018, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C438);
  }

  return result;
}

uint64_t type metadata accessor for BankAccountSheet(uint64_t a1)
{
  result = qword_1EBD4C480;
  if (!qword_1EBD4C480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD5CAEF0(uint64_t a1)
{
  type metadata accessor for AccountServiceAuthorizationModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      sub_1BD127BD0(319, &qword_1EBD4C490, &type metadata for BankAccounts, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD1B7F00(319);
        if (v4 <= 0x3F)
        {
          sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

id sub_1BD5CB034@<X0>(uint64_t a1@<X8>)
{
  v27[1] = a1;
  v2 = type metadata accessor for BankAccountSheet(0);
  v27[0] = *(v2 - 8);
  v3 = *(v27[0] + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v4, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_1BE04B6F4();
    v13 = v12;

    (*(v5 + 8))(v8, v4);
    v14 = *(v1 + 56);
    v15 = *(v1 + 64);
    sub_1BD5CF890(v1, v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
    v16 = (*(v27[0] + 80) + 16) & ~*(v27[0] + 80);
    v17 = swift_allocObject();
    sub_1BD5CF0B8(v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for BankAccountSheet);
    *&v34 = sub_1BD5CE650;
    *(&v34 + 1) = v17;
    *&v35 = v11;
    *(&v35 + 1) = v13;
    *&v36 = v14;
    *(&v36 + 1) = v15;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    v40[0] = sub_1BD5CE650;
    v40[1] = v17;
    v40[2] = v11;
    v40[3] = v13;
    v40[4] = v14;
    v40[5] = v15;
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    sub_1BE048964();
    sub_1BD089E68(&v34, v44);
    sub_1BD089ED8(v40);
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v28 = v34;
    v29 = v35;
    sub_1BE052434();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C498, &qword_1BE0E6208);
    sub_1BD0DE4F4(&qword_1EBD4C4A0, &qword_1EBD4C498, &qword_1BE0E6208, &unk_1BE0E6430);
    sub_1BE050DE4();
    v19, v20, v21, v22, v23, v24, v25, v26;
    v44[2] = v30;
    v44[3] = v31;
    v44[4] = v32;
    v45 = v33;
    v44[0] = v28;
    v44[1] = v29;
    return sub_1BD089ED8(v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5CB38C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4A8, &qword_1BE0E6210);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24[-v5];
  v25 = a2;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4B0, &qword_1BE0E6218);
  sub_1BD0DE4F4(&qword_1EBD4C4B8, &qword_1EBD4C4B0, &qword_1BE0E6218, MEMORY[0x1E6981F48]);
  sub_1BE0504A4();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v7 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4C0, &qword_1BE0E6220) + 36)];
  v8 = v32;
  v7[4] = v31;
  v7[5] = v8;
  v7[6] = v33;
  v9 = v28;
  *v7 = v27;
  v7[1] = v9;
  v10 = v30;
  v7[2] = v29;
  v7[3] = v10;
  v11 = sub_1BE051274();
  v12 = sub_1BE0501D4();
  v13 = sub_1BE051CD4();
  v14 = &v6[*(v4 + 36)];
  *v14 = v11;
  v14[8] = v12;
  *(v14 + 2) = v13;
  *(v14 + 3) = v15;
  sub_1BD5CE6D8();
  sub_1BD4CDC28();
  sub_1BD4CDC7C();
  sub_1BE048964();
  sub_1BE050D64();
  a1, v16, v17, v18, v19, v20, v21, v22;
  return sub_1BD0DE53C(v6, &qword_1EBD4C4A8, &qword_1BE0E6210);
}

uint64_t sub_1BD5CB5E4@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a1;
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4E8, &qword_1BE0E6238);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4F0, &qword_1BE0E6240);
  v7 = *(v38 - 1);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4F8, &qword_1BE0E6248);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C500, &qword_1BE0E6250);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v39 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C508, &qword_1BE0E6258);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v36 - v24;
  sub_1BD5CBAD4((&v36 - v24));
  sub_1BD5CC4EC(v37, v19);
  if (PKOslo2024UIUpdatesEnabled())
  {
    sub_1BD5CC8A4(v9);
    sub_1BD0DE204(v9, v14, &qword_1EBD4C4F0, &qword_1BE0E6240);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v7 + 56))(v14, v26, 1, v38);
  v27 = v6;
  sub_1BD5CCCD0(v6);
  sub_1BD0DE19C(v25, v22, &qword_1EBD4C508, &qword_1BE0E6258);
  v28 = v19;
  v29 = v39;
  sub_1BD0DE19C(v19, v39, &qword_1EBD4C500, &qword_1BE0E6250);
  v30 = v40;
  v38 = v25;
  sub_1BD0DE19C(v14, v40, &qword_1EBD4C4F8, &qword_1BE0E6248);
  v31 = v36;
  sub_1BD0DE19C(v6, v36, &qword_1EBD4C4E8, &qword_1BE0E6238);
  v32 = v41;
  sub_1BD0DE19C(v22, v41, &qword_1EBD4C508, &qword_1BE0E6258);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C510, &qword_1BE0E6260);
  v37 = v22;
  v34 = v33;
  sub_1BD0DE19C(v29, v32 + *(v33 + 48), &qword_1EBD4C500, &qword_1BE0E6250);
  sub_1BD0DE19C(v30, v32 + *(v34 + 64), &qword_1EBD4C4F8, &qword_1BE0E6248);
  sub_1BD0DE19C(v31, v32 + *(v34 + 80), &qword_1EBD4C4E8, &qword_1BE0E6238);
  sub_1BD0DE53C(v27, &qword_1EBD4C4E8, &qword_1BE0E6238);
  sub_1BD0DE53C(v14, &qword_1EBD4C4F8, &qword_1BE0E6248);
  sub_1BD0DE53C(v28, &qword_1EBD4C500, &qword_1BE0E6250);
  sub_1BD0DE53C(v38, &qword_1EBD4C508, &qword_1BE0E6258);
  sub_1BD0DE53C(v31, &qword_1EBD4C4E8, &qword_1BE0E6238);
  sub_1BD0DE53C(v30, &qword_1EBD4C4F8, &qword_1BE0E6248);
  sub_1BD0DE53C(v29, &qword_1EBD4C500, &qword_1BE0E6250);
  return sub_1BD0DE53C(v37, &qword_1EBD4C508, &qword_1BE0E6258);
}

uint64_t sub_1BD5CBAD4@<X0>(void *a1@<X8>)
{
  v91 = a1;
  v2 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v83 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DF8, &qword_1BE0E6360);
  MEMORY[0x1EEE9AC00](v90);
  v5 = &v77 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C610, &unk_1BE0E6368);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v77 - v6;
  v7 = type metadata accessor for PeerPaymentModel(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v77 - v11;
  v86 = type metadata accessor for PeerPaymentToggleSection(0);
  v82 = *(v86 - 1);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BankAccountSheet(0);
  v81 = *(v13 - 8);
  v14 = v81[8];
  MEMORY[0x1EEE9AC00](v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CF0, &qword_1BE0DB000);
  MEMORY[0x1EEE9AC00](v87);
  MEMORY[0x1EEE9AC00](v24);
  if (v1[10] != 1)
  {
    v27 = v1[12];
    if (v27)
    {
      if (v27[2])
      {
        v83 = v26;
        v84 = &v77 - v25;
        sub_1BD0DE19C(v1 + *(v13 + 44), v23, &qword_1EBD45480, &unk_1BE0B8C30);
        v28 = *v1;
        sub_1BD5CF890(v1, &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
        v29 = (*(v81 + 80) + 16) & ~*(v81 + 80);
        v30 = swift_allocObject();
        sub_1BD5CF0B8(&v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for BankAccountSheet);
        v31 = v86[7];
        v32 = *(v8 + 56);
        v32(&v85[v31], 1, 1, v7);
        sub_1BD0DE19C(v23, v20, &qword_1EBD45480, &unk_1BE0B8C30);
        if ((*(v8 + 48))(v20, 1, v7) == 1)
        {
          sub_1BE048964();
          sub_1BD0DE53C(v23, &qword_1EBD45480, &unk_1BE0B8C30);
          v28, v33, v34, v35, v36, v37, v38, v39;
          v30, v40, v41, v42, v43, v44, v45, v46;
        }

        else
        {
          v81 = v28;
          v56 = v20;
          v57 = v80;
          sub_1BD5CF0B8(v56, v80, type metadata accessor for PeerPaymentModel);
          if (*(v57 + v7[12]))
          {
            v66 = v85;
            v65 = v86;
            v67 = v86[9];
            v79 = &v85[v86[8]];
            v78 = &v85[v67];
            *v85 = *(v57 + v7[7]);
            v68 = v65[6];
            sub_1BD5CF890(v57 + v7[5], v66 + v65[5], type metadata accessor for AvailablePass);
            *(v66 + v68) = v81;
            sub_1BE048964();
            sub_1BD0DE53C(v66 + v31, &qword_1EBD45480, &unk_1BE0B8C30);
            sub_1BD5CF890(v57, v66 + v31, type metadata accessor for PeerPaymentModel);
            v32((v66 + v31), 0, 1, v7);
            v70 = v78;
            v69 = v79;
            *v78 = 0;
            *(v70 + 1) = 0;
            *v69 = sub_1BD5CF820;
            v69[1] = v30;
            v71 = v66 + v65[10];
            v92 = *(v57 + v7[10]);
            sub_1BE051694();
            sub_1BD5CF8F8(v57, type metadata accessor for PeerPaymentModel);
            sub_1BD0DE53C(v23, &qword_1EBD45480, &unk_1BE0B8C30);
            v72 = v94;
            *v71 = v93;
            *(v71 + 8) = v72;
            v73 = v83;
            sub_1BD5CF890(v66, v83, type metadata accessor for PeerPaymentToggleSection);
            (*(v82 + 56))(v73, 0, 1, v65);
            sub_1BD5CF8F8(v66, type metadata accessor for PeerPaymentToggleSection);
LABEL_13:
            v74 = v84;
            sub_1BD0DE204(v73, v84, &qword_1EBD47CF0, &qword_1BE0DB000);
            sub_1BD0DE19C(v74, v89, &qword_1EBD47CF0, &qword_1BE0DB000);
            swift_storeEnumTagMultiPayload();
            sub_1BD5CF120();
            sub_1BD4CE5A4();
            v48 = v91;
            sub_1BE04F9A4();
            sub_1BD0DE53C(v74, &qword_1EBD47CF0, &qword_1BE0DB000);
            goto LABEL_14;
          }

          v30, v58, v59, v60, v61, v62, v63, v64;
          sub_1BD5CF8F8(v57, type metadata accessor for PeerPaymentModel);
          v20 = v23;
        }

        sub_1BD0DE53C(v20, &qword_1EBD45480, &unk_1BE0B8C30);
        sub_1BD0DE53C(&v85[v31], &qword_1EBD45480, &unk_1BE0B8C30);
        v73 = v83;
        (*(v82 + 56))(v83, 1, 1, v86);
        goto LABEL_13;
      }
    }
  }

  sub_1BD0DE19C(v1 + *(v13 + 44), v17, &qword_1EBD45480, &unk_1BE0B8C30);
  v47 = 1;
  if ((*(v8 + 48))(v17, 1, v7) != 1)
  {
    v49 = v84;
    sub_1BD5CF0B8(v17, v84, type metadata accessor for PeerPaymentModel);
    v50 = v83;
    sub_1BD5CF890(v49 + v7[5], v83, type metadata accessor for AvailablePass);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0, &qword_1BE0DB0D0);
    v52 = *(v51 + 48);
    v53 = *(v51 + 64);
    sub_1BD5CF0B8(v50, v5, type metadata accessor for AvailablePass);
    *&v5[v52] = 0;
    v5[v53] = 0;
    type metadata accessor for PassRow.Pass(0);
    swift_storeEnumTagMultiPayload();
    v5[*(type metadata accessor for PassRow(0) + 20)] = 1;
    v54 = v89;
    v55 = &v5[*(v90 + 36)];
    *v55 = xmmword_1BE0B8C20;
    *(v55 + 1) = xmmword_1BE0B8C20;
    v55[32] = 0;
    sub_1BD0DE19C(v5, v54, &qword_1EBD47DF8, &qword_1BE0E6360);
    swift_storeEnumTagMultiPayload();
    sub_1BD5CF120();
    sub_1BD4CE5A4();
    v48 = v91;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v5, &qword_1EBD47DF8, &qword_1BE0E6360);
    sub_1BD5CF8F8(v49, type metadata accessor for PeerPaymentModel);
LABEL_14:
    v47 = 0;
    goto LABEL_15;
  }

  sub_1BD0DE53C(v17, &qword_1EBD45480, &unk_1BE0B8C30);
  v48 = v91;
LABEL_15:
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C618, &unk_1BE0E6378);
  return (*(*(v75 - 8) + 56))(v48, v47, 1, v75);
}

id sub_1BD5CC4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C588, &qword_1BE0E62E8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  v14 = *(v2 + 80);
  if (v14 == 1)
  {
    v15 = *(v10 + 56);

    return v15(a2, 1, 1, v9, v11);
  }

  else
  {
    v47 = a1;
    v48 = a2;
    v49 = v10;
    v17 = *(v2 + 112);
    v18 = *(v2 + 96);
    v19 = *(v2 + 104);
    v20 = *(v2 + 88);
    v54[0] = v14;
    v54[1] = v20;
    v54[2] = v18;
    v54[3] = v19;
    v55 = v17 & 1;
    (*(v6 + 104))(v8, *MEMORY[0x1E69B8068], v5, v11.n128_f64[0]);
    v44 = v20;
    sub_1BD3EFCD8(v14, v20);
    v45 = v19;
    sub_1BE048C84();
    v46 = v18;
    sub_1BE048C84();
    result = PKPassKitBundle();
    if (result)
    {
      v21 = result;
      v22 = sub_1BE04B6F4();
      v24 = v23;

      (*(v6 + 8))(v8, v5);
      v50 = v22;
      v51 = v24;
      sub_1BD0DDEBC();
      v50 = sub_1BE0506C4();
      v51 = v25;
      v52 = v26 & 1;
      v53 = v27;
      MEMORY[0x1EEE9AC00](v50);
      *(&v43 - 4) = v54;
      *(&v43 - 3) = v2;
      *(&v43 - 2) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C590, &qword_1BE0E62F0);
      sub_1BD0DE4F4(&qword_1EBD4C598, &qword_1EBD4C590, &qword_1BE0E62F0, MEMORY[0x1E6981F48]);
      sub_1BE051A24();
      sub_1BD17195C(v14, v44);
      v45, v28, v29, v30, v31, v32, v33, v34;
      v46, v35, v36, v37, v38, v39, v40, v41;
      v42 = v48;
      (*(v49 + 32))(v48, v13, v9);
      return (*(v49 + 56))(v42, 0, 1, v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD5CC8A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BankAccountSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C518, &qword_1BE0E6268);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C520, &unk_1BE0E6270);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v16 = *(*v2 + qword_1EBDAB050);
  if (v16)
  {
    v47 = &v44 - v14;
    v48 = a1;
    v49 = v13;
    v50 = v12;
    sub_1BD5CF890(v2, &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
    v17 = *(v5 + 80);
    v46 = v8;
    v18 = swift_allocObject();
    v45 = type metadata accessor for BankAccountSheet;
    sub_1BD5CF0B8(&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + ((v17 + 16) & ~v17), type metadata accessor for BankAccountSheet);
    v44 = v16;
    sub_1BE051704();
    v19 = v2 + *(v4 + 48);
    v20 = *v19;
    v21 = *(v19 + 1);
    v54 = v20;
    v55 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516C4();
    v22 = v51;
    v23 = v52;
    v24 = v53;
    sub_1BD5CF890(v2, &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
    v25 = swift_allocObject();
    v27 = v44;
    v26 = v45;
    *(v25 + 16) = v44;
    sub_1BD5CF0B8(v7, v25 + ((v17 + 24) & ~v17), v26);
    KeyPath = swift_getKeyPath();
    v29 = &v10[*(v46 + 36)];
    *v29 = v22;
    *(v29 + 1) = v23;
    v29[16] = v24;
    *(v29 + 3) = sub_1BD5CE8A8;
    *(v29 + 4) = v25;
    *(v29 + 5) = KeyPath;
    v29[48] = 0;
    sub_1BE052434();
    v31 = v30;
    sub_1BD5CE91C();
    v32 = v27;
    v33 = v47;
    sub_1BE050DE4();

    v31, v34, v35, v36, v37, v38, v39, v40;
    sub_1BD0DE53C(v10, &qword_1EBD4C518, &qword_1BE0E6268);
    v41 = v48;
    sub_1BD0DE204(v33, v48, &qword_1EBD4C520, &unk_1BE0E6270);
    return (*(v49 + 56))(v41, 0, 1, v50);
  }

  else
  {
    v43 = *(v13 + 56);

    return v43(a1, 1, 1, v15);
  }
}

id sub_1BD5CCCD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C540, &unk_1BE0E62C0);
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  if ((PKOslo2024UIUpdatesEnabled() & 1) == 0)
  {
    v10 = *(v1 + 80);
    if (v10 != 1)
    {
      v11 = *(v1 + 88);
      v12 = *(v1 + 96);
      v13 = *(v1 + 104);
      if (v13)
      {
        v14 = *(v1 + 112);
        if (v13[2])
        {
          v15 = *(v1 + 88);
          v16 = *MEMORY[0x1E69B8068];
          v17 = *(v4 + 104);
          LODWORD(v52) = v14;
          v17(v6, v16, v3);
          v51 = v15;
          sub_1BD3EFC88(v10, v15, v12, v13);
          sub_1BE048C84();
          result = PKPassKitBundle();
          v52 = v12;
          if (result)
          {
            v19 = result;
            v50 = sub_1BE04B6F4();
            v21 = v20;

            (*(v4 + 8))(v6, v3);
            v54 = v50;
            v55 = v21;
            sub_1BD0DDEBC();
            v54 = sub_1BE0506C4();
            v55 = v22;
            v56 = v23 & 1;
            v57 = v24;
            MEMORY[0x1EEE9AC00](v54);
            *(&v50 - 2) = v13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C548, &qword_1BE0F8340);
            sub_1BD5CEA78();
            sub_1BE051A24();
            sub_1BD17195C(v10, v51);
            swift_bridgeObjectRelease_n();
            v52, v25, v26, v27, v28, v29, v30, v31;
            (*(v53 + 32))(a1, v9, v7);
            return (*(v53 + 56))(a1, 0, 1, v7);
          }

          else
          {
            __break(1u);
          }

          return result;
        }

        v41 = *(v1 + 88);
        sub_1BD3EFC88(*(v1 + 80), v41, *(v1 + 96), *(v1 + 104));
        sub_1BD17195C(v10, v41);
        v13, v42, v43, v44, v45, v46, v47, v48;
      }

      else
      {
        v32 = *(v1 + 80);
        v33 = *(v1 + 88);
        sub_1BD3EFCD8(v32, v11);
        sub_1BE048C84();
        sub_1BD17195C(v10, v33);
      }

      v12, v34, v35, v36, v37, v38, v39, v40;
    }
  }

  v49 = *(v53 + 56);

  return v49(a1, 1, 1, v7);
}

uint64_t sub_1BD5CD0B8(char a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v8, v9, "Toggled peer payment", v10, 2u);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return (*(a2 + 40))(a1 & 1);
}

uint64_t sub_1BD5CD20C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v49 = a4;
  v50 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5A0, &qword_1BE0E62F8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v42 - v6);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4F0, &qword_1BE0E6240);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5A8, &unk_1BE0E6300);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v42 - v12;
  v13 = type metadata accessor for BankAccountSheet(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5B0, &unk_1BE0F83B0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5B8, &qword_1BE0E6310);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v45 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v42 - v24;
  v26 = *(a1 + 2);
  v55[0] = v26;
  if (v26 && *(v26 + 16))
  {
    v51 = v26;
    sub_1BD5CF890(v50, &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
    v54 = *a1;
    v53 = *(a1 + 3);
    v27 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v42 = v5;
    v28 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    sub_1BD5CF0B8(v16, v29 + v27, type metadata accessor for BankAccountSheet);
    v30 = v29 + v28;
    v31 = a1[1];
    *v30 = *a1;
    *(v30 + 16) = v31;
    *(v30 + 32) = *(a1 + 32);
    sub_1BD0DE19C(v55, v52, &unk_1EBD45520, &qword_1BE0D4488);
    sub_1BD0DE19C(v55, v52, &unk_1EBD45520, &qword_1BE0D4488);
    sub_1BD0DE19C(&v54, v52, &qword_1EBD45518, &qword_1BE0D4480);
    sub_1BD0DE19C(&v53, v52, &unk_1EBD45520, &qword_1BE0D4488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C570, &qword_1BE0E62E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5F0, &qword_1BE0E6328);
    sub_1BD0DE4F4(&qword_1EBD4C578, &qword_1EBD4C570, &qword_1BE0E62E0, MEMORY[0x1E69E6338]);
    sub_1BD5CEEA0();
    sub_1BD5CEC08();
    sub_1BE0519D4();
    (*(v18 + 32))(v25, v20, v17);
    (*(v18 + 56))(v25, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(&v42 - v24, 1, 1, v17);
  }

  v32 = PKOslo2024UIUpdatesEnabled();
  v33 = v47;
  if (v32)
  {
    sub_1BD5CDBF8(v43, v52);
    v34 = v52[1];
    v35 = v52[2];
    *v7 = v52[0];
    v7[1] = v34;
    v7[2] = v35;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5C0, &qword_1BE0E6318);
    sub_1BD5CED24(&qword_1EBD4C5C8, &qword_1EBD4C4F0, &qword_1BE0E6240, sub_1BD5CEC68);
    sub_1BD5CED24(&qword_1EBD4C5D8, &qword_1EBD4C5C0, &qword_1BE0E6318, sub_1BD5CEDA0);
    sub_1BE04F9A4();
  }

  else
  {
    v36 = v44;
    sub_1BD5CC8A4(v44);
    sub_1BD0DE19C(v36, v7, &qword_1EBD4C4F0, &qword_1BE0E6240);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5C0, &qword_1BE0E6318);
    sub_1BD5CED24(&qword_1EBD4C5C8, &qword_1EBD4C4F0, &qword_1BE0E6240, sub_1BD5CEC68);
    sub_1BD5CED24(&qword_1EBD4C5D8, &qword_1EBD4C5C0, &qword_1BE0E6318, sub_1BD5CEDA0);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v36, &qword_1EBD4C4F0, &qword_1BE0E6240);
  }

  v37 = v45;
  sub_1BD0DE19C(v25, v45, &qword_1EBD4C5B8, &qword_1BE0E6310);
  v38 = v48;
  sub_1BD0DE19C(v33, v48, &qword_1EBD4C5A8, &unk_1BE0E6300);
  v39 = v49;
  sub_1BD0DE19C(v37, v49, &qword_1EBD4C5B8, &qword_1BE0E6310);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5E8, &qword_1BE0E6320);
  sub_1BD0DE19C(v38, v39 + *(v40 + 48), &qword_1EBD4C5A8, &unk_1BE0E6300);
  sub_1BD0DE53C(v33, &qword_1EBD4C5A8, &unk_1BE0E6300);
  sub_1BD0DE53C(v25, &qword_1EBD4C5B8, &qword_1BE0E6310);
  sub_1BD0DE53C(v38, &qword_1EBD4C5A8, &unk_1BE0E6300);
  return sub_1BD0DE53C(v37, &qword_1EBD4C5B8, &qword_1BE0E6310);
}

__n128 sub_1BD5CD994@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BankAccountSheet(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = *a1;
  v11 = *(a1 + 8);
  sub_1BD5CF890(a2, &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BankAccountSheet);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  sub_1BD5CF0B8(&v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for BankAccountSheet);
  v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v12;
  v15[1] = v11;
  v25 = v12;
  v26 = v11;
  v27 = a3;
  sub_1BD5CEBB4();
  v16 = v12;
  v17 = v11;
  sub_1BE051704();
  v18 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5F0, &qword_1BE0E6328) + 36));
  __asm { FMOV            V0.2D, #16.0 }

  *v18 = result;
  v18[1] = result;
  v18[2].n128_u8[0] = 0;
  return result;
}

id sub_1BD5CDB50@<X0>(id a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v11 = a1;
  if (*a3)
  {
    v7 = *(a3 + 8);
    sub_1BD3EFCD8(v6, v7);
    v8 = sub_1BD41F4F4(v11, a2, v6, v7);

    a1 = v11;
  }

  else
  {
    v8 = 0;
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8 & 1;
  v9 = a2;

  return v11;
}

id sub_1BD5CDBF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for BankAccountSheet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKOslo2024UIUpdatesEnabled();
  if (!result || (v13 = *(v2 + 72), !*(v13 + 16)))
  {
    v15 = 0;
    v17 = 0;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
LABEL_9:
    *a2 = v15;
    a2[1] = v17;
    a2[2] = v21;
    a2[3] = v23;
    a2[4] = v24;
    a2[5] = v25;
    return result;
  }

  v30 = v6;
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  (*(v9 + 104))(v11, *MEMORY[0x1E69B8068], v8);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v9 + 8))(v11, v8);
    v18 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v20 = [v18 stringFromNumber_];

    if (v20)
    {
      v21 = sub_1BE052434();
      v23 = v22;
    }

    else
    {

      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v26 = v31;
    sub_1BD5CF890(v2, v31, type metadata accessor for BankAccountSheet);
    v27 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v32;
    sub_1BD5CF0B8(v26, v25 + v27, type metadata accessor for BankAccountSheet);
    v28 = (v25 + ((v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = v15;
    v28[1] = v17;
    sub_1BE048964();
    result = sub_1BE048C84();
    v24 = sub_1BD5CF024;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_1BD5CDF30(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2[9];
  KeyPath = swift_getKeyPath();
  sub_1BD5CF1D4(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel, &unk_1BE0E54CC);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v14 = swift_getKeyPath();
  sub_1BE04B5B4();
  v14, v15, v16, v17, v18, v19, v20, v21;
  swift_beginAccess();
  sub_1BD4CDC28();
  sub_1BE04E904();
  swift_endAccess();
  a4, v22, v23, v24, v25, v26, v27, v28;
  v5, v29, v30, v31, v32, v33, v34, v35;
  v36 = swift_getKeyPath();
  sub_1BE04B5A4();
  a4, v37, v38, v39, v40, v41, v42, v43;
  v5, v44, v45, v46, v47, v48, v49, v50;
  v36, v51, v52, v53, v54, v55, v56, v57;
}

double sub_1BD5CE0DC(uint64_t a1)
{
  type metadata accessor for BankAccountSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

id sub_1BD5CE150@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5CE2BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BankAccountSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1BD5CF890(a2, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1BD5CF0B8(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for BankAccountSheet);
  type metadata accessor for AccountModel(0);
  sub_1BD5CF1D4(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
  v11 = a1;
  result = sub_1BE04E954();
  *a3 = result;
  *(a3 + 8) = v13;
  *(a3 + 16) = sub_1BD5CEA00;
  *(a3 + 24) = v10;
  *(a3 + 32) = 0;
  return result;
}

double sub_1BD5CE43C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 bankAccountRepresentation];
    if (v4)
    {
      v5 = *(a2 + 8);
      v6 = v4;
      v5();

      v3 = v6;
    }
  }

  type metadata accessor for BankAccountSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD5CE508(uint64_t a1)
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C570, &qword_1BE0E62E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C560, &unk_1BE0E62D0);
  sub_1BD0DE4F4(&qword_1EBD4C578, &qword_1EBD4C570, &qword_1BE0E62E0, MEMORY[0x1E69E6338]);
  sub_1BD5CEAFC();
  sub_1BD5CEC08();
  return sub_1BE0519D4();
}

id sub_1BD5CE5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v10 = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  __asm { FMOV            V0.2D, #16.0 }

  *(a2 + 24) = _Q0;
  *(a2 + 40) = _Q0;
  *(a2 + 56) = 0;
  v8 = v2;

  return v10;
}

uint64_t sub_1BD5CE650(void *a1)
{
  v3 = *(type metadata accessor for BankAccountSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD5CB38C(a1, v4);
}

unint64_t sub_1BD5CE6D8()
{
  result = qword_1EBD4C4C8;
  if (!qword_1EBD4C4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C4A8, &qword_1BE0E6210);
    sub_1BD5CE790();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20, &unk_1BE0E4C40, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C4C8);
  }

  return result;
}

unint64_t sub_1BD5CE790()
{
  result = qword_1EBD4C4D0;
  if (!qword_1EBD4C4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C4C0, &qword_1BE0E6220);
    sub_1BD0DE4F4(&qword_1EBD4C4D8, &qword_1EBD4C4E0, &unk_1BE0E6228, MEMORY[0x1E697CCF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C4D0);
  }

  return result;
}

double sub_1BD5CE848()
{
  v1 = *(type metadata accessor for BankAccountSheet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD5CE0DC(v2);
}

uint64_t sub_1BD5CE8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankAccountSheet(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1BD5CE2BC(v4, v5, a1);
}

unint64_t sub_1BD5CE91C()
{
  result = qword_1EBD4C528;
  if (!qword_1EBD4C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C518, &qword_1BE0E6268);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD4C530, &qword_1EBD4C538, &qword_1BE0E62B8, &unk_1BE0E4768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C528);
  }

  return result;
}

double sub_1BD5CEA00(void *a1)
{
  v3 = *(type metadata accessor for BankAccountSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD5CE43C(a1, v4);
}

unint64_t sub_1BD5CEA78()
{
  result = qword_1EBD4C550;
  if (!qword_1EBD4C550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C548, &qword_1BE0F8340);
    sub_1BD5CEAFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C550);
  }

  return result;
}

unint64_t sub_1BD5CEAFC()
{
  result = qword_1EBD4C558;
  if (!qword_1EBD4C558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C560, &unk_1BE0E62D0);
    sub_1BD5CEBB4();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C558);
  }

  return result;
}

unint64_t sub_1BD5CEBB4()
{
  result = qword_1EBD4C568;
  if (!qword_1EBD4C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C568);
  }

  return result;
}

unint64_t sub_1BD5CEC08()
{
  result = qword_1EBD4C580;
  if (!qword_1EBD4C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C580);
  }

  return result;
}

unint64_t sub_1BD5CEC68()
{
  result = qword_1EBD4C5D0;
  if (!qword_1EBD4C5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C520, &unk_1BE0E6270);
    sub_1BD5CE91C();
    sub_1BD5CF1D4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C5D0);
  }

  return result;
}

uint64_t sub_1BD5CED24(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD5CEDA0()
{
  result = qword_1EBD4C5E0;
  if (!qword_1EBD4C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C5E0);
  }

  return result;
}

double sub_1BD5CEDF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BankAccountSheet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  *&result = sub_1BD5CD994(a1, v2 + v6, v7, a2).n128_u64[0];
  return result;
}

unint64_t sub_1BD5CEEA0()
{
  result = qword_1EBD4C5F8;
  if (!qword_1EBD4C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C5F0, &qword_1BE0E6328);
    sub_1BD0DE4F4(&qword_1EBD4C600, &qword_1EBD4C608, &qword_1BE0E6330, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C5F8);
  }

  return result;
}

uint64_t sub_1BD5CEF84()
{
  v1 = *(type metadata accessor for BankAccountSheet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(v0 + v2 + 24))(*(v0 + v3), *(v0 + v3 + 8));
}

void sub_1BD5CF024()
{
  v1 = *(type metadata accessor for BankAccountSheet(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_1BD5CDF30(v3, (v0 + v2), v5, v6);
}

uint64_t sub_1BD5CF0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD5CF120()
{
  result = qword_1EBD4C620;
  if (!qword_1EBD4C620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47CF0, &qword_1BE0DB000);
    sub_1BD5CF1D4(&qword_1EBD4C628, type metadata accessor for PeerPaymentToggleSection, &unk_1BE0B8C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C620);
  }

  return result;
}

uint64_t sub_1BD5CF1D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_66()
{
  v1 = type metadata accessor for BankAccountSheet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  *v3, v4, v5, v6, v7, v8, v9, v10;
  *(v3 + 16), v11, v12, v13, v14, v15, v16, v17;
  *(v3 + 32), v18, v19, v20, v21, v22, v23, v24;
  *(v3 + 48), v25, v26, v27, v28, v29, v30, v31;
  *(v3 + 64), v32, v33, v34, v35, v36, v37, v38;
  *(v3 + 72), v39, v40, v41, v42, v43, v44, v45;
  v53 = *(v3 + 80);
  if (v53)
  {
    if (v53 == 1)
    {
      goto LABEL_5;
    }
  }

  *(v3 + 96), v46, v47, v48, v49, v50, v51, v52;
  *(v3 + 104), v54, v55, v56, v57, v58, v59, v60;
LABEL_5:
  v61 = (v3 + *(v1 + 44));
  v62 = type metadata accessor for PeerPaymentModel(0);
  if (!(*(*(v62 - 1) + 48))(v61, 1, v62))
  {

    v70 = (v61 + v62[5]);
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v225 = v1;
    if (EnumCaseMultiPayload == 2)
    {
      v70[1], v72, v73, v74, v75, v76, v77, v78;
      v70[3], v79, v80, v81, v82, v83, v84, v85;
      v86 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v87 = sub_1BE04CF34();
      (*(*(v87 - 8) + 8))(v70 + v86, v87);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v88 = type metadata accessor for AvailablePass(0);
    v89 = (v70 + v88[6]);
    v90 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v90 - 1) + 48))(v89, 1, v90))
    {
      v89[1], v91, v92, v93, v94, v95, v96, v97;
      v98 = v90[5];
      v99 = sub_1BE04DA84();
      (*(*(v99 - 8) + 8))(v89 + v98, v99);
      *(v89 + v90[6] + 8), v100, v101, v102, v103, v104, v105, v106;
      *(v89 + v90[7] + 8), v107, v108, v109, v110, v111, v112, v113;
      *(v89 + v90[8] + 8), v114, v115, v116, v117, v118, v119, v120;
    }

    v121 = (v70 + v88[7]);
    v122 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v122 - 8) + 48))(v121, 1, v122))
    {

      v123 = *(v122 + 28);
      v124 = sub_1BE04AF64();
      v125 = *(v124 - 8);
      if (!(*(v125 + 48))(v121 + v123, 1, v124))
      {
        (*(v125 + 8))(v121 + v123, v124);
      }
    }

    v126 = v70 + v88[10];
    v127 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v127 - 8) + 48))(v126, 1, v127))
    {
      v135 = *(v126 + 2);
      if (v135 != 1)
      {
        v135, v128, v129, v130, v131, v132, v133, v134;
        *(v126 + 4), v136, v137, v138, v139, v140, v141, v142;
        *(v126 + 6), v143, v144, v145, v146, v147, v148, v149;
      }

      v224 = v61;
      v150 = *(v126 + 9);
      if (v150 != 1)
      {
        v150, v128, v129, v130, v131, v132, v133, v134;
        *(v126 + 11), v151, v152, v153, v154, v155, v156, v157;
        *(v126 + 13), v158, v159, v160, v161, v162, v163, v164;
      }

      v165 = *(v127 + 28);
      v166 = sub_1BE04AF64();
      v223 = *(v166 - 8);
      v167 = *(v223 + 48);
      if (!v167(&v126[v165], 1, v166))
      {
        (*(v223 + 8))(&v126[v165], v166);
      }

      v168 = *(v127 + 32);
      v61 = v224;
      if (!v167(&v126[v168], 1, v166))
      {
        (*(v223 + 8))(&v126[v168], v166);
      }
    }

    v169 = (v70 + v88[12]);
    if (*v169)
    {

      v169[4], v170, v171, v172, v173, v174, v175, v176;
    }

    v177 = (v70 + v88[13]);
    if (*v177)
    {

      v177[2], v178, v179, v180, v181, v182, v183, v184;
    }

    *(v70 + v88[14]), v128, v129, v130, v131, v132, v133, v134;
    *(v70 + v88[15]), v185, v186, v187, v188, v189, v190, v191;
    v192 = (v61 + v62[6]);
    v1 = v225;
    if (*v192 != 1)
    {

      v200 = v192[3];
      if (v200)
      {
        v200, v193, v194, v195, v196, v197, v198, v199;
        v192[5], v201, v202, v203, v204, v205, v206, v207;
        v192[7], v208, v209, v210, v211, v212, v213, v214;
        v192[9], v215, v216, v217, v218, v219, v220, v221;
      }
    }
  }

  *(v3 + *(v1 + 48) + 8), v63, v64, v65, v66, v67, v68, v69;

  return swift_deallocObject();
}

uint64_t sub_1BD5CF820(char a1)
{
  v3 = *(type metadata accessor for BankAccountSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD5CD0B8(a1, v4);
}

uint64_t sub_1BD5CF890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5CF8F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD5CF958()
{
  result = qword_1EBD4C630;
  if (!qword_1EBD4C630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBD4C638, &qword_1BE0E6388);
    sub_1BD0DE4F4(&qword_1EBD4C4A0, &qword_1EBD4C498, &qword_1BE0E6208, &unk_1BE0E6430);
    sub_1BD5CF1D4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C630);
  }

  return result;
}

uint64_t sub_1BD5CFA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI39DetailNavigationViewActionConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1BD5CFAF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = a5[1];
  v26 = *a5;
  v27 = v11;
  v28 = *(a5 + 4);
  *&v19 = a6;
  *(&v19 + 1) = a7;
  *&v20 = a1;
  *(&v20 + 1) = a2;
  *&v21 = a3;
  *(&v21 + 1) = a4;
  v22 = v26;
  v23 = v11;
  v24 = v28;
  v25[0] = a6;
  v25[1] = a7;
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = a4;
  v12 = type metadata accessor for DetailNavigationView(0, a8, a10, a4);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v18, &v19, v12);
  (*(v13 + 8))(v25, v12);
  v14 = v22;
  v15 = v23;
  *(a9 + 32) = v21;
  *(a9 + 48) = v14;
  *(a9 + 64) = v15;
  *(a9 + 80) = v24;
  result = *&v19;
  v17 = v20;
  *a9 = v19;
  *(a9 + 16) = v17;
  return result;
}

void sub_1BD5CFBF8(uint64_t a1)
{
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  v6 = *(v1 + 48);
  *(v3 + 64) = *(v1 + 32);
  *(v3 + 80) = v6;
  *(v3 + 96) = *(v1 + 64);
  *(v3 + 112) = *(v1 + 80);
  v7 = *(v1 + 16);
  *(v3 + 32) = *v1;
  *(v3 + 48) = v7;
  type metadata accessor for PushNavigationStackModel(0);
  v8 = swift_allocObject();
  (*(*(a1 - 8) + 16))(&v69, v1, a1);
  sub_1BE04E914();
  sub_1BE04B5C4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C6C0, &qword_1BE0E6480);
  v10 = sub_1BD0DE4F4(&qword_1EBD4C6C8, &qword_1EBD4C6C0, &qword_1BE0E6480, MEMORY[0x1E697C5E0]);
  v69 = v4;
  v70 = v9;
  v71 = v5;
  v72 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = v4;
  v70 = v9;
  v71 = v5;
  v72 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_1BD0DDEBC();
  v14 = MEMORY[0x1E69E6158];
  v69 = OpaqueTypeMetadata2;
  v70 = MEMORY[0x1E69E6158];
  v71 = OpaqueTypeConformance2;
  v72 = v13;
  v15 = swift_getOpaqueTypeMetadata2();
  v69 = OpaqueTypeMetadata2;
  v70 = v14;
  v71 = OpaqueTypeConformance2;
  v72 = v13;
  v16 = swift_getOpaqueTypeConformance2();
  v69 = v15;
  v70 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v69 = v15;
  v70 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_1BD5BC4EC(v8);
  v21 = v20;
  v23 = v22;
  type metadata accessor for PushNavigationStack(0, v17, v18, v22);
  swift_getWitnessTable();
  sub_1BD147308();
  v23, v24, v25, v26, v27, v28, v29, v30;
  v19, v31, v32, v33, v34, v35, v36, v37;
  v21, v38, v39, v40, v41, v42, v43, v44;
  v45 = v69;
  v46 = v70;
  v47 = v72;
  sub_1BD147308();
  v47, v48, v49, v50, v51, v52, v53, v54;
  v45, v55, v56, v57, v58, v59, v60, v61;
  v46, v62, v63, v64, v65, v66, v67, v68;
}

uint64_t sub_1BD5CFF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a1;
  v49 = a5;
  v50 = sub_1BE04F434();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C6C0, &qword_1BE0E6480);
  v13 = sub_1BD0DE4F4(&qword_1EBD4C6C8, &qword_1EBD4C6C0, &qword_1BE0E6480, MEMORY[0x1E697C5E0]);
  v54 = a3;
  v55 = v12;
  v40 = a4;
  v56 = a4;
  v57 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v39 - v15;
  v54 = a3;
  v55 = v12;
  v56 = a4;
  v57 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_1BD0DDEBC();
  v54 = OpaqueTypeMetadata2;
  v55 = MEMORY[0x1E69E6158];
  v41 = OpaqueTypeConformance2;
  v56 = OpaqueTypeConformance2;
  v57 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v42 = *(v19 - 8);
  v43 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - v21;
  (*a2)(v46, v20);
  v51 = a3;
  v52 = v40;
  v53 = a2;
  sub_1BE051024();
  (*(v45 + 8))(v11, a3);
  if (*(a2 + 24))
  {
    v23 = *(a2 + 16);
    v24 = *(a2 + 24);
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  v54 = v23;
  v55 = v24;
  sub_1BE048C84();
  v25 = MEMORY[0x1E69E6158];
  v26 = v41;
  sub_1BE050B74();
  v24, v27, v28, v29, v30, v31, v32, v33;
  (*(v44 + 8))(v16, OpaqueTypeMetadata2);
  v35 = v47;
  v34 = v48;
  v36 = v50;
  (*(v48 + 104))(v47, *MEMORY[0x1E697C438], v50);
  v54 = OpaqueTypeMetadata2;
  v55 = v25;
  v56 = v26;
  v57 = v18;
  swift_getOpaqueTypeConformance2();
  v37 = v43;
  sub_1BE050E84();
  (*(v34 + 8))(v35, v36);
  return (*(v42 + 8))(v22, v37);
}

uint64_t sub_1BD5D0388@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a2;
  v64 = a4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6D0, &qword_1BE0E6488);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6D8, &qword_1BE0E6490);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6E0, &qword_1BE0E6498);
  v59 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6E8, &qword_1BE0E64A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6F0, &qword_1BE0E64A8);
  v66 = *(v18 - 8);
  v67 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  sub_1BE04FB04();
  v68 = v63;
  v69 = a3;
  v70 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6F8, &qword_1BE0E64B0);
  sub_1BD5D12AC();
  v63 = v20;
  sub_1BE04E424();
  v21 = *(a1 + 56);
  if (v21)
  {
    v56 = *(a1 + 80);
    v22 = *(a1 + 72);
    v23 = *(a1 + 64);
    v73 = *(a1 + 48);
    v74 = v21;
    v75 = v23 & 1;
    v76 = v22;
    v77 = v56;
    sub_1BE048C84();
    sub_1BE048964();
    v24 = sub_1BE04FAC4();
    v25 = v10;
    v57 = v16;
    MEMORY[0x1EEE9AC00](v24);
    *(&v56 - 2) = &v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C728, &qword_1BE0E64C8);
    v26 = v8;
    sub_1BD5D1534();
    v27 = v58;
    sub_1BE04E424();
    v16 = v57;
    v28 = sub_1BD0DE4F4(&qword_1EBD4C720, &qword_1EBD4C6E0, &qword_1BE0E6498, MEMORY[0x1E697BEF0]);
    v29 = v60;
    MEMORY[0x1BFB3CC50](v27, v25, v28);
    v30 = *(v8 + 16);
    v31 = v65;
    v30(v65, v29, v7);
    (*(v26 + 56))(v31, 0, 1, v7);
    v71 = v25;
    v72 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v31, v7, OpaqueTypeConformance2);
    v56, v33, v34, v35, v36, v37, v38, v39;
    v21, v40, v41, v42, v43, v44, v45, v46;
    sub_1BD08B830(v31);
    (*(v26 + 8))(v29, v7);
    (*(v59 + 8))(v27, v25);
  }

  else
  {
    v47 = v65;
    (*(v8 + 56))(v65, 1, 1, v7);
    v48 = sub_1BD0DE4F4(&qword_1EBD4C720, &qword_1EBD4C6E0, &qword_1BE0E6498, MEMORY[0x1E697BEF0]);
    v73 = v10;
    v74 = v48;
    v49 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v47, v7, v49);
    sub_1BD08B830(v47);
  }

  v50 = v61;
  v51 = *(v62 + 48);
  v53 = v66;
  v52 = v67;
  v54 = v63;
  (*(v66 + 16))(v61, v63, v67);
  sub_1BD08B898(v16, &v50[v51]);
  sub_1BE04F854();
  sub_1BD08B830(v16);
  return (*(v53 + 8))(v54, v52);
}

uint64_t sub_1BD5D09D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C710, &unk_1BE0E64B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v10 = type metadata accessor for DetailNavigationView(0, a2, a3, v9);
  sub_1BD5D0B14(v10);
  sub_1BE052434();
  v12 = v11;
  sub_1BD5D1368();
  sub_1BE050DE4();
  v12, v13, v14, v15, v16, v17, v18, v19;
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BD5D0B14(uint64_t a1)
{
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49860, &unk_1BE0C4F70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C760, &qword_1BE0E6528);
  sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860, &unk_1BE0C4F70, MEMORY[0x1E697D680]);
  type metadata accessor for CloseButton(255);
  sub_1BE04F734();
  sub_1BD5D14E4(&qword_1EBD365D8, type metadata accessor for CloseButton, &unk_1BE0C4F0C);
  sub_1BD5D14E4(&qword_1EBD4C718, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  swift_getOpaqueTypeConformance2();
  return sub_1BE051C74();
}

uint64_t sub_1BD5D0CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C748, &unk_1BE0E64E0);
  sub_1BD5D1620();
  sub_1BE051704();
  v4 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C728, &qword_1BE0E64C8);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_1BD10DF54;
  v8[2] = v6;
  return result;
}

void *sub_1BD5D0DD4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C758, &qword_1BE0E6520);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  if (a1[2])
  {
    sub_1BE04E4F4();
    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BE04F9A4();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v11 = *a1;
    v12 = a1[1];
    v16[0] = v11;
    v16[1] = v12;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    *v5 = sub_1BE0506C4();
    *(v5 + 1) = v13;
    v5[16] = v14 & 1;
    *(v5 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD5D103C(uint64_t a1)
{
  v2 = sub_1BE04F734();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CloseButton(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  *v8 = v9;
  v8[1] = v10;
  v12 = *(v11 + 20);
  *(v8 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  swift_storeEnumTagMultiPayload();
  sub_1BE048964();
  sub_1BE04F724();
  sub_1BD5D14E4(&qword_1EBD365D8, type metadata accessor for CloseButton, &unk_1BE0C4F0C);
  sub_1BD5D14E4(&qword_1EBD4C718, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  sub_1BE050894();
  (*(v3 + 8))(v5, v2);
  return sub_1BD5D1760(v8);
}

unint64_t sub_1BD5D12AC()
{
  result = qword_1EBD4C700;
  if (!qword_1EBD4C700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C6F8, &qword_1BE0E64B0);
    sub_1BD5D1368();
    sub_1BD5D14E4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C700);
  }

  return result;
}

unint64_t sub_1BD5D1368()
{
  result = qword_1EBD4C708;
  if (!qword_1EBD4C708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C710, &unk_1BE0E64B8);
    sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860, &unk_1BE0C4F70, MEMORY[0x1E697D680]);
    type metadata accessor for CloseButton(255);
    sub_1BE04F734();
    sub_1BD5D14E4(&qword_1EBD365D8, type metadata accessor for CloseButton, &unk_1BE0C4F0C);
    sub_1BD5D14E4(&qword_1EBD4C718, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C708);
  }

  return result;
}

uint64_t sub_1BD5D14E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD5D1534()
{
  result = qword_1EBD4C730;
  if (!qword_1EBD4C730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C728, &qword_1BE0E64C8);
    sub_1BD0DE4F4(&qword_1EBD4C738, &qword_1EBD4C740, &unk_1BE0E64D0, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C730);
  }

  return result;
}

unint64_t sub_1BD5D1620()
{
  result = qword_1EBD4C750;
  if (!qword_1EBD4C750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C748, &unk_1BE0E64E0);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C750);
  }

  return result;
}

uint64_t sub_1BD5D16D8()
{
  sub_1BE048964();

  return sub_1BE051704();
}

uint64_t sub_1BD5D1760(uint64_t a1)
{
  v2 = type metadata accessor for CloseButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD5D17EC(uint64_t a1)
{
  sub_1BD0E4578(319, &qword_1EBD4C808, &qword_1EBD4C810, &qword_1BE0E65E0);
  if (v1 <= 0x3F)
  {
    sub_1BD5D60D4(319, &unk_1EBD4C818, _s8MerchantVMa);
    if (v2 <= 0x3F)
    {
      sub_1BD540F14(319, &qword_1EBD368F0, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD45478, &qword_1EBD45480, &unk_1BE0B8C30);
        if (v4 <= 0x3F)
        {
          sub_1BD5D60D4(319, &qword_1EBD4C828, type metadata accessor for Passes);
          if (v5 <= 0x3F)
          {
            sub_1BD0E4578(319, &unk_1EBD4C830, &qword_1EBD395E0, &qword_1BE0B8830);
            if (v6 <= 0x3F)
            {
              sub_1BD5D60D4(319, &qword_1EBD4C840, _s14PaymentSummaryVMa);
              if (v7 <= 0x3F)
              {
                sub_1BD540F14(319, &unk_1EBD4C848, &_s8ShippingVN);
                if (v8 <= 0x3F)
                {
                  sub_1BD5D60D4(319, &qword_1EBD368C0, type metadata accessor for PKPaymentAuthorizationState);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD0E4578(319, &qword_1EBD4C858, &qword_1EBD4C860, &qword_1BE0E5958);
                    if (v10 <= 0x3F)
                    {
                      sub_1BD0E4578(319, &qword_1EBD4C868, &qword_1EBD4C870, &unk_1BE0E2B40);
                      if (v11 <= 0x3F)
                      {
                        sub_1BD0E4578(319, &qword_1EBD4C878, &qword_1EBD4C880, &qword_1BE0CA528);
                        if (v12 <= 0x3F)
                        {
                          sub_1BD5D60D4(319, &qword_1EBD4C888, type metadata accessor for PKPaymentAuthorizationFundingMode);
                          if (v13 <= 0x3F)
                          {
                            sub_1BD5D60D4(319, &unk_1EBD4C890, type metadata accessor for SelectedPaymentOfferObserver);
                            if (v14 <= 0x3F)
                            {
                              swift_initClassMetadata2();
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
    }
  }
}

__n128 sub_1BD5D1D2C@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v22);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v19 = v22[3];
  result = v22[4];
  v20 = v22[1];
  v21 = v22[0];
  *(a1 + 32) = v22[2];
  *(a1 + 48) = v19;
  *(a1 + 64) = result;
  *a1 = v21;
  *(a1 + 16) = v20;
  return result;
}

uint64_t sub_1BD5D1E28()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

double sub_1BD5D1F24@<D0>(_OWORD *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v26);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v37 = v26[12];
  v38 = v26[13];
  v33 = v26[6];
  v34 = v26[7];
  v35 = v26[8];
  v36 = v26[9];
  v29 = v26[2];
  v30 = v26[3];
  v31 = v26[4];
  v32 = v26[5];
  v27 = v26[0];
  v28 = v26[1];
  v18 = v26[11];
  a1[10] = v26[10];
  a1[11] = v18;
  v19 = v38;
  a1[12] = v37;
  a1[13] = v19;
  v20 = v34;
  a1[6] = v33;
  a1[7] = v20;
  v21 = v36;
  a1[8] = v35;
  a1[9] = v21;
  v22 = v30;
  a1[2] = v29;
  a1[3] = v22;
  v23 = v32;
  a1[4] = v31;
  a1[5] = v23;
  result = *&v27;
  v25 = v28;
  *a1 = v27;
  a1[1] = v25;
  return result;
}

double sub_1BD5D2008@<D0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v21);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v18 = v22;
  result = *v21;
  v20 = v21[1];
  *a1 = v21[0];
  *(a1 + 16) = v20;
  *(a1 + 32) = v18;
  return result;
}

double sub_1BD5D208C@<D0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v22);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v23;
  result = *v22;
  v21 = v22[1];
  *a2 = v22[0];
  *(a2 + 16) = v21;
  *(a2 + 32) = v19;
  return result;
}

uint64_t sub_1BD5D2114(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BD5D7DD4(v2, v3, v4, v5, v6);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5D21D4(uint64_t a1, uint64_t *a2)
{
  v3 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1BD5D6A0C(a1, &v10 - v7, _s8MerchantVMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD5D6A0C(v8, v5, _s8MerchantVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD5D6948(v8, _s8MerchantVMa);
}

__n128 sub_1BD5D2338@<Q0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v23);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v20 = v23[3];
  result = v23[4];
  v21 = v23[1];
  v22 = v23[0];
  *(a2 + 32) = v23[2];
  *(a2 + 48) = v20;
  *(a2 + 64) = result;
  *a2 = v22;
  *(a2 + 16) = v21;
  return result;
}

uint64_t sub_1BD5D23D4(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[3];
  v9[2] = a1[2];
  v9[3] = v3;
  v9[4] = a1[4];
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[3];
  v8[7] = a1[2];
  v8[8] = v5;
  v8[9] = a1[4];
  v6 = a1[1];
  v8[5] = *a1;
  v8[6] = v6;
  sub_1BE048964();
  sub_1BD0DE19C(v9, v8, &qword_1EBD395E0, &qword_1BE0B8830);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5D24AC(uint64_t a1, uint64_t *a2)
{
  v3 = _s14PaymentSummaryVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1BD5D6A0C(a1, &v10 - v7, _s14PaymentSummaryVMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD5D6A0C(v8, v5, _s14PaymentSummaryVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD5D6948(v8, _s14PaymentSummaryVMa);
}

double sub_1BD5D25D8@<D0>(_OWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v27);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v38 = v27[12];
  v39 = v27[13];
  v34 = v27[6];
  v35 = v27[7];
  v36 = v27[8];
  v37 = v27[9];
  v30 = v27[2];
  v31 = v27[3];
  v32 = v27[4];
  v33 = v27[5];
  v28 = v27[0];
  v29 = v27[1];
  v19 = v27[11];
  a2[10] = v27[10];
  a2[11] = v19;
  v20 = v39;
  a2[12] = v38;
  a2[13] = v20;
  v21 = v35;
  a2[6] = v34;
  a2[7] = v21;
  v22 = v37;
  a2[8] = v36;
  a2[9] = v22;
  v23 = v31;
  a2[2] = v30;
  a2[3] = v23;
  v24 = v33;
  a2[4] = v32;
  a2[5] = v24;
  result = *&v28;
  v26 = v29;
  *a2 = v28;
  a2[1] = v26;
  return result;
}

uint64_t sub_1BD5D26C8(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[11];
  v19[10] = a1[10];
  v19[11] = v3;
  v4 = a1[13];
  v19[12] = a1[12];
  v19[13] = v4;
  v5 = a1[7];
  v19[6] = a1[6];
  v19[7] = v5;
  v6 = a1[9];
  v19[8] = a1[8];
  v19[9] = v6;
  v7 = a1[3];
  v19[2] = a1[2];
  v19[3] = v7;
  v8 = a1[5];
  v19[4] = a1[4];
  v19[5] = v8;
  v9 = a1[1];
  v19[0] = *a1;
  v19[1] = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1[11];
  v18[24] = a1[10];
  v18[25] = v10;
  v11 = a1[13];
  v18[26] = a1[12];
  v18[27] = v11;
  v12 = a1[7];
  v18[20] = a1[6];
  v18[21] = v12;
  v13 = a1[9];
  v18[22] = a1[8];
  v18[23] = v13;
  v14 = a1[3];
  v18[16] = a1[2];
  v18[17] = v14;
  v15 = a1[5];
  v18[18] = a1[4];
  v18[19] = v15;
  v16 = a1[1];
  v18[14] = *a1;
  v18[15] = v16;
  sub_1BE048964();
  sub_1BD5D7E20(v19, v18);
  return sub_1BE04D8C4();
}

void sub_1BD5D27E4(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD5D2864(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5D2960(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - v15;
  sub_1BD0DE19C(a1, &v18 - v15, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v16, v13, a5, a6);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v16, a5, a6);
}

void sub_1BD5D2A9C(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD5D2B1C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD5D2B98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940, &unk_1BE0CDD90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v283 = &v274 - v3;
  v4 = type metadata accessor for PassEligibleRewardsInfo(0);
  v281 = *(v4 - 8);
  v282 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v278 = &v274 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v274 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v279 = (&v274 - v10);
  v11 = type metadata accessor for PeerPaymentModel(0);
  v291 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v280 = &v274 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v276 = &v274 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C880, &qword_1BE0CA528);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v289 = &v274 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v293 = (&v274 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v275 = &v274 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v296 = (&v274 - v22);
  v23 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v274 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v287 = (&v274 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v274 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v288 = &v274 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v274 - v34;
  KeyPath = swift_getKeyPath();
  v37 = swift_getKeyPath();
  v297 = v1;
  sub_1BE04D8B4(v30);
  KeyPath, v38, v39, v40, v41, v42, v43, v44;
  v37, v45, v46, v47, v48, v49, v50, v51;
  sub_1BD0DE19C(v30, v35, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD5D6948(v30, type metadata accessor for Passes);
  v52 = type metadata accessor for AvailablePass(0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  v284 = v53 + 48;
  v285 = v54;
  v55 = v54(v35, 1, v52);
  v286 = v52;
  v292 = v8;
  if (v55 == 1)
  {
    v56 = v11;
    sub_1BD0DE53C(v35, &qword_1EBD520A0, &qword_1BE0B9840);
    v277 = 0;
    v290 = 0;
    v58 = v296;
    v57 = v297;
  }

  else
  {
    sub_1BD5D6A0C(v35, v25, type metadata accessor for WrappedPass);
    sub_1BD5D6948(v35, type metadata accessor for AvailablePass);
    v59 = WrappedPass.secureElementPass.getter();
    sub_1BD5D6948(v25, type metadata accessor for WrappedPass);
    v58 = v296;
    if (v59)
    {
      v60 = [v59 uniqueID];

      v57 = v297;
      if (v60)
      {
        sub_1BE052434();
        v62 = v61;

        v63 = *(v57 + qword_1EBDAAD68 + 32);
        sub_1BE048C84();
        v64 = [v63 paymentOffersController];
        v290 = v62;
        if (v64)
        {
          v72 = v64;
          v73 = sub_1BE052404();
          v62, v74, v75, v76, v77, v78, v79, v80;
          v81 = [v72 eligiblePaymentOfferCriteriaForPassUniqueID_];

          if (v81)
          {
            sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
            v82 = sub_1BE052744();

            if (v82 >> 62)
            {
              v90 = sub_1BE053704();
            }

            else
            {
              v90 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v56 = v11;
            v82, v83, v84, v85, v86, v87, v88, v89;

            v277 = v90 > 0;
            goto LABEL_15;
          }

          v56 = v11;
        }

        else
        {
          v56 = v11;
          v62, v65, v66, v67, v68, v69, v70, v71;
        }

        v277 = 0;
      }

      else
      {
        v56 = v11;
        v277 = 0;
        v290 = 0;
      }
    }

    else
    {
      v56 = v11;
      v277 = 0;
      v290 = 0;
      v57 = v297;
    }
  }

LABEL_15:
  v91 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  v274 = *(v91 - 8);
  v92 = *(v274 + 56);
  v294 = v274 + 56;
  v295 = v92;
  v92(v58, 1, 1, v91);
  v93 = v57 + qword_1EBDAAD68;
  v94 = *(v57 + qword_1EBDAAD68 + 32);
  v96 = sub_1BD6395BC(v94, v95);
  v98 = v97;
  v100 = v99;
  v102 = v101;

  if (v98)
  {
    sub_1BD0DE53C(v58, &qword_1EBD4C880, &qword_1BE0CA528);
    *v58 = v96;
    v58[1] = v98;
    v58[2] = v100;
    v58[3] = v102;
    swift_storeEnumTagMultiPayload();
    v103 = 0;
    v104 = v56;
    v106 = v291;
    v105 = v292;
  }

  else
  {
    v107 = swift_getKeyPath();
    v108 = swift_getKeyPath();
    v109 = v279;
    sub_1BE04D8B4(v279);
    v107, v110, v111, v112, v113, v114, v115, v116;
    v108, v117, v118, v119, v120, v121, v122, v123;
    sub_1BD0DE53C(v58, &qword_1EBD4C880, &qword_1BE0CA528);
    v106 = v291;
    v104 = v56;
    if ((*(v291 + 48))(v109, 1, v56) == 1)
    {
      sub_1BD0DE53C(v109, &qword_1EBD45480, &unk_1BE0B8C30);
      v103 = 1;
      v105 = v292;
    }

    else
    {
      v124 = v276;
      sub_1BD57888C(v109, v276, type metadata accessor for PeerPaymentModel);
      v125 = *(v124 + *(v56 + 56));
      v105 = v292;
      if (v125 == 1 && !v277)
      {
        sub_1BD57888C(v124, v58, type metadata accessor for PeerPaymentModel);
        swift_storeEnumTagMultiPayload();
        v103 = 0;
      }

      else
      {
        sub_1BD5D6948(v124, type metadata accessor for PeerPaymentModel);
        v103 = 1;
      }
    }
  }

  v295(v58, v103, 1, v91);
  v126 = swift_getKeyPath();
  v127 = swift_getKeyPath();
  sub_1BE04D8B4(v105);
  v126, v128, v129, v130, v131, v132, v133, v134;
  v127, v135, v136, v137, v138, v139, v140, v141;
  if ((*(v106 + 48))(v105, 1, v104) == 1)
  {
    sub_1BD0DE53C(v105, &qword_1EBD45480, &unk_1BE0B8C30);
  }

  else
  {
    v142 = v280;
    sub_1BD57888C(v105, v280, type metadata accessor for PeerPaymentModel);
    if (*(v142 + *(v104 + 64)) == 1)
    {
      sub_1BD0DE53C(v58, &qword_1EBD4C880, &qword_1BE0CA528);
      sub_1BD57888C(v142, v58, type metadata accessor for PeerPaymentModel);
      swift_storeEnumTagMultiPayload();
      v295(v58, 0, 1, v91);
    }

    else
    {
      sub_1BD5D6948(v142, type metadata accessor for PeerPaymentModel);
    }
  }

  result = [*(v93 + 32) paymentRequest];
  if (!result)
  {
    __break(1u);
    goto LABEL_74;
  }

  v144 = result;
  v145 = [result disbursementPaymentRequest];

  result = [*(v93 + 32) paymentRequest];
  if (!result)
  {
LABEL_74:
    __break(1u);
    return result;
  }

  v153 = result;
  v290, v146, v147, v148, v149, v150, v151, v152;
  v154 = [v153 merchantCapabilities];

  v292 = v145;
  if (!v145 || (v154 & 0x80) == 0)
  {
    goto LABEL_49;
  }

  v291 = v91;
  v155 = v145;
  v156 = [v155 paymentSummaryItems];
  sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
  v157 = sub_1BE052744();

  if (!(v157 >> 62))
  {
    v158 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v158)
    {
      goto LABEL_34;
    }

LABEL_48:

    v157, v183, v184, v185, v186, v187, v188, v189;
    v58 = v296;
    v91 = v291;
    goto LABEL_49;
  }

LABEL_47:
  v158 = sub_1BE053704();
  if (!v158)
  {
    goto LABEL_48;
  }

LABEL_34:
  v159 = 0;
  while (1)
  {
    if ((v157 & 0xC000000000000001) != 0)
    {
      v160 = MEMORY[0x1BFB40900](v159, v157);
    }

    else
    {
      if (v159 >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v160 = *(v157 + 8 * v159 + 32);
    }

    v161 = v160;
    v162 = v159 + 1;
    if (__OFADD__(v159, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v159;
    if (v162 == v158)
    {
      goto LABEL_48;
    }
  }

  v157, v163, v164, v165, v166, v167, v168, v169;
  v170 = [v155 currencyCode];

  v171 = sub_1BE052434();
  v173 = v172;

  v174 = sub_1BD2DB880(v171, v173);
  v176 = v175;
  v173, v175, v177, v178, v179, v180, v181, v182;

  v58 = v296;
  v91 = v291;
  if (v176)
  {
    sub_1BD0DE53C(v296, &qword_1EBD4C880, &qword_1BE0CA528);
    *v58 = v174;
    v58[1] = v176;
    swift_storeEnumTagMultiPayload();
    v295(v58, 0, 1, v91);
  }

LABEL_49:
  v190 = PKOslo2024UIUpdatesEnabled();
  v191 = swift_getKeyPath();
  v192 = swift_getKeyPath();
  v193 = v287;
  sub_1BE04D8B4(v287);
  v191, v194, v195, v196, v197, v198, v199, v200;
  v192, v201, v202, v203, v204, v205, v206, v207;
  v208 = v288;
  sub_1BD0DE19C(v193, v288, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD5D6948(v193, type metadata accessor for Passes);
  v209 = v286;
  if (v285(v208, 1, v286) == 1)
  {
    sub_1BD0DE53C(v208, &qword_1EBD520A0, &qword_1BE0B9840);
    v210 = v283;
    (*(v281 + 56))(v283, 1, 1, v282);
LABEL_52:
    sub_1BD0DE53C(v210, &unk_1EBD4C940, &unk_1BE0CDD90);
    goto LABEL_58;
  }

  v211 = v208 + *(v209 + 40);
  v210 = v283;
  sub_1BD0DE19C(v211, v283, &unk_1EBD4C940, &unk_1BE0CDD90);
  sub_1BD5D6948(v208, type metadata accessor for AvailablePass);
  if ((*(v281 + 48))(v210, 1, v282) == 1)
  {
    goto LABEL_52;
  }

  v212 = v278;
  sub_1BD57888C(v210, v278, type metadata accessor for PassEligibleRewardsInfo);
  if (!sub_1BD57A1B8() || v277 || (v190 & 1) != 0)
  {
    v213 = type metadata accessor for PassEligibleRewardsInfo;
    v214 = v212;
LABEL_57:
    sub_1BD5D6948(v214, v213);
    goto LABEL_58;
  }

  v273 = v275;
  sub_1BD0DE19C(v58, v275, &qword_1EBD4C880, &qword_1BE0CA528);
  if ((*(v274 + 48))(v273, 1, v91) == 1)
  {
    sub_1BD0DE53C(v58, &qword_1EBD4C880, &qword_1BE0CA528);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1BD5D6948(v212, type metadata accessor for PassEligibleRewardsInfo);
      v213 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo;
      v214 = v273;
      goto LABEL_57;
    }

    sub_1BD0DE53C(v58, &qword_1EBD4C880, &qword_1BE0CA528);
    sub_1BD5D6948(v273, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
  }

  sub_1BD57888C(v212, v58, type metadata accessor for PassEligibleRewardsInfo);
  swift_storeEnumTagMultiPayload();
  v295(v58, 0, 1, v91);
LABEL_58:
  v215 = swift_getKeyPath();
  v216 = swift_getKeyPath();
  sub_1BE04D8B4(v298);
  v215, v217, v218, v219, v220, v221, v222, v223;
  v216, v224, v225, v226, v227, v228, v229, v230;
  if (v298[0] == 2)
  {
    v231 = swift_getKeyPath();
    v232 = swift_getKeyPath();
    sub_1BE04D8B4(v298);
    v231, v233, v234, v235, v236, v237, v238, v239;
    v232, v240, v241, v242, v243, v244, v245, v246;
    v247 = v298[0];
    if (v298[0])
    {
      v248 = [v298[0] type];

      if (v248 == 2)
      {
        v249 = swift_getKeyPath();
        v250 = swift_getKeyPath();
        sub_1BE04D8B4(v298);
        v249, v251, v252, v253, v254, v255, v256, v257;
        v250, v258, v259, v260, v261, v262, v263, v264;
        v265 = v298[0];
        if (v298[0])
        {
          objc_opt_self();
          v266 = swift_dynamicCastObjCClass();
          if (v266)
          {
            v267 = [v266 rewardsRedemptionIntent];
            v268 = [v267 rewardsType];
            v269 = [v267 monetaryValue];
            v270 = [v267 value];

            sub_1BD0DE53C(v58, &qword_1EBD4C880, &qword_1BE0CA528);
            v271 = v293;
            *v293 = v268;
            v271[1] = v269;
            v271[2] = v270;
            swift_storeEnumTagMultiPayload();
            v295(v271, 0, 1, v91);
            sub_1BD5D6A74(v271, v58);
          }

          else
          {
          }
        }
      }
    }
  }

  v272 = v293;
  sub_1BD0DE19C(v58, v293, &qword_1EBD4C880, &qword_1BE0CA528);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v272, v289, &qword_1EBD4C880, &qword_1BE0CA528);
  sub_1BE048964();
  sub_1BE04D8C4();

  sub_1BD0DE53C(v272, &qword_1EBD4C880, &qword_1BE0CA528);
  return sub_1BD0DE53C(v58, &qword_1EBD4C880, &qword_1BE0CA528);
}

void sub_1BD5D3E44(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + qword_1EBDAAD68);
    v3 = *(Strong + qword_1EBDAAD68 + 32);
    v4 = *(Strong + qword_1EBDAAD68 + 40);
    v5 = Strong;
    v6 = *(Strong + qword_1EBDAAD68 + 24);
    v7 = v3;
    sub_1BE048964();
    v8 = v2;
    swift_unknownObjectRetain();
    v5, v9, v10, v11, v12, v13, v14, v15;
    sub_1BD0E66D0();
    v4, v16, v17, v18, v19, v20, v21, v22;

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v23 = swift_weakLoadStrong();
  if (v23)
  {
    v24 = v23;
    sub_1BD5D3F44();
    v24, v25, v26, v27, v28, v29, v30, v31;
  }
}

id sub_1BD5D3F44()
{
  v1 = v0;
  v2 = _s14PaymentSummaryVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v152 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v153 = &v149 - v5;
  v6 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v150 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v151 = (&v149 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v149 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v149 - v13);
  v15 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v149 - v20);
  v22 = (v0 + qword_1EBDAAD68);
  v23 = [*(v0 + qword_1EBDAAD68 + 32) fundingMode];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v174 = v23;
  sub_1BE048964();
  sub_1BE04D8C4();
  v24 = *(v22 + 2);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v174 = v24;
  sub_1BE048964();
  sub_1BE04D8C4();
  v25 = *(v22 + 3);
  v26 = *(v22 + 4);
  v27 = v25;
  sub_1BD2B1238(v26, v25, &v169);
  v28 = v170;
  if (v170)
  {
    v29 = v169;
    v30 = sub_1BD1C2B14();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v28;
    v32 = v172;
    *(v31 + 32) = v171;
    *(v31 + 48) = v32;
    v33 = &type metadata for AuthorizationError;
  }

  else
  {
    v31 = 0;
    v33 = 0;
    v30 = 0;
    *(&v174 + 1) = 0;
    *&v175 = 0;
  }

  *&v174 = v31;
  *(&v175 + 1) = v33;
  *&v176 = v30;
  sub_1BE04C8F4();
  sub_1BDA14F98(*(v22 + 4), v21);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD5D6A0C(v21, v17, _s8MerchantVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD5D6948(v21, _s8MerchantVMa);
  sub_1BD56ED40(*(v22 + 4), v14);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v14, v149, &qword_1EBD45480, &unk_1BE0B8C30);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD0DE53C(v14, &qword_1EBD45480, &unk_1BE0B8C30);
  v34 = *(v22 + 4);
  v35 = v151;
  sub_1BD4930AC(v34, v151);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD5D6A0C(v35, v150, type metadata accessor for Passes);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD5D6948(v35, type metadata accessor for Passes);
  v36 = [*(v22 + 4) paymentOffersController];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v174 = v36;
  sub_1BE048964();
  sub_1BE04D8C4();
  v37 = [*(v22 + 4) selectedPaymentOffer];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v174 = v37;
  sub_1BE048964();
  sub_1BE04D8C4();
  v38 = *(v22 + 5);
  v39 = *(v22 + 4);
  sub_1BE048964();
  sub_1BD2318FC(v39, v38, v173);
  swift_getKeyPath();
  swift_getKeyPath();
  v176 = v173[2];
  v177 = v173[3];
  v178 = v173[4];
  v174 = v173[0];
  v175 = v173[1];
  sub_1BE048964();
  sub_1BE04D8C4();
  v40 = *(v22 + 4);
  KeyPath = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v43 = v40;
  sub_1BE04D8B4(v14);
  KeyPath, v44, v45, v46, v47, v48, v49, v50;
  v42, v51, v52, v53, v54, v55, v56, v57;
  v58 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  sub_1BE04D8B4(v35);
  v58, v60, v61, v62, v63, v64, v65, v66;
  v59, v67, v68, v69, v70, v71, v72, v73;
  v74 = swift_getKeyPath();
  v75 = swift_getKeyPath();
  sub_1BE04D8B4(&v174);
  v74, v76, v77, v78, v79, v80, v81, v82;
  v75, v83, v84, v85, v86, v87, v88, v89;
  v90 = v153;
  sub_1BD9D1B48(v43, v14, v35, v174, v153);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD5D6A0C(v90, v152, _s14PaymentSummaryVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD5D6948(v90, _s14PaymentSummaryVMa);
  v91 = *(v22 + 5);
  v92 = *(v22 + 4);
  sub_1BE048964();
  sub_1BD83B564(v92, v91, &v174);
  swift_getKeyPath();
  swift_getKeyPath();
  v165 = v184;
  v166 = v185;
  v167 = v186;
  v168 = v187;
  v161 = v180;
  v162 = v181;
  v163 = v182;
  v164 = v183;
  v157 = v176;
  v158 = v177;
  v159 = v178;
  v160 = v179;
  v155 = v174;
  v156 = v175;
  sub_1BE048964();
  sub_1BE04D8C4();
  if (*(v1 + qword_1EBDAB300))
  {
    v93 = v22[1];
    v155 = *v22;
    v156 = v93;
    v157 = v22[2];
    v94 = v157;
    v188 = *(&v155 + 1);
    v189[0] = *(&v93 + 1);
    v95 = *(&v157 + 1);
    v96 = v155;
    sub_1BD0DE19C(&v188, &v154, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE19C(v189, &v154, &qword_1EBD40150, &qword_1BE0C12A0);
    v97 = v94;
    sub_1BE048964();
    sub_1BD83835C(&v155);

    sub_1BD0DE53C(&v188, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE53C(v189, &qword_1EBD40150, &qword_1BE0C12A0);
    v95, v98, v99, v100, v101, v102, v103, v104;
  }

  v105 = [*(v22 + 4) hasAnyPayLaterOptions];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v154) = v105;
  sub_1BE048964();
  sub_1BE04D8C4();
  v106 = swift_getKeyPath();
  v107 = swift_getKeyPath();
  sub_1BE04D8B4(&v154);
  v106, v108, v109, v110, v111, v112, v113, v114;
  v107, v115, v116, v117, v118, v119, v120, v121;
  v122 = v154;
  v123 = *(v22 + 4);
  v124 = swift_getKeyPath();
  v125 = swift_getKeyPath();
  v126 = v123;
  sub_1BE04D8B4(&v154);
  v124, v127, v128, v129, v130, v131, v132, v133;
  v125, v134, v135, v136, v137, v138, v139, v140;
  sub_1BD290458(v126, v154);
  v122, v141, v142, v143, v144, v145, v146, v147;

  sub_1BD5D5090();
  return sub_1BD5D2B98();
}

uint64_t sub_1BD5D4918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v9 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_weakInit();
  Strong, v15, v16, v17, v18, v19, v20, v21;
  aBlock[4] = a2;
  v33 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = a3;
  v22 = _Block_copy(aBlock);
  v33, v23, v24, v25, v26, v27, v28, v29;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v8, v22);
  _Block_release(v22);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v31);
}

void sub_1BD5D4BC8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD5D3F44();
    v2, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD5D4C20(uint64_t a1)
{
  v2 = sub_1BE051F54();
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE051FA4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v27 = sub_1BE052D54();
  v8 = swift_allocObject();
  swift_weakInit();
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 32);
  v33 = *(a1 + 24);
  v34 = v9;
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  *(v12 + 24) = *a1;
  *(v12 + 16) = v8;
  *(v12 + 40) = v13;
  *(v12 + 56) = *(a1 + 32);
  aBlock[4] = sub_1BD5D6A00;
  v32 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_137;
  v14 = _Block_copy(aBlock);
  v15 = v32;
  v16 = v10;
  sub_1BD0DE19C(&v34, v30, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v33, v30, &qword_1EBD40150, &qword_1BE0C12A0);
  v17 = v11;
  sub_1BE048964();
  v15, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v25 = v27;
  MEMORY[0x1BFB3FDF0](0, v7, v4, v14);
  _Block_release(v14);

  (*(v29 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v28);
}

void sub_1BD5D4F48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 32);
    v40 = *(a2 + 24);
    v41 = v5;
    v7 = (Strong + qword_1EBDAAD68);
    v8 = *(Strong + qword_1EBDAAD68);
    v9 = *(Strong + qword_1EBDAAD68 + 24);
    v10 = *(Strong + qword_1EBDAAD68 + 32);
    v11 = *(Strong + qword_1EBDAAD68 + 40);
    v12 = *(a2 + 16);
    *v7 = *a2;
    v7[1] = v12;
    v7[2] = *(a2 + 32);
    v13 = Strong;
    v14 = v4;
    sub_1BD0DE19C(&v41, v39, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE19C(&v40, v39, &qword_1EBD40150, &qword_1BE0C12A0);
    v15 = v6;
    sub_1BE048964();
    v13, v16, v17, v18, v19, v20, v21, v22;
    v11, v23, v24, v25, v26, v27, v28, v29;

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v30 = swift_weakLoadStrong();
  if (v30)
  {
    v31 = v30;
    sub_1BD5D3F44();
    v31, v32, v33, v34, v35, v36, v37, v38;
  }
}

void sub_1BD5D5090()
{
  v1 = v0;
  v2 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v198);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  v194 = v208;
  v195 = v209;
  v196 = v210;
  v197 = v211;
  v191[0] = v204;
  v191[1] = v205;
  v192 = v206;
  v193 = v207;
  v190[2] = v200;
  v190[3] = v201;
  v190[4] = v202;
  v190[5] = v203;
  v190[0] = v198;
  v190[1] = v199;
  sub_1BD0DE19C(v191, &v198, &qword_1EBD4C950, &qword_1BE0CA3D0);
  sub_1BD2ED540(v190);
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  sub_1BE04D8B4(&v173);
  v21, v23, v24, v25, v26, v27, v28, v29;
  v22, v30, v31, v32, v33, v34, v35, v36;
  v208 = v183;
  v209 = v184;
  v210 = v185;
  v211 = v186;
  v204 = v179;
  v205 = v180;
  v206 = v181;
  v207 = v182;
  v200 = v175;
  v201 = v176;
  v202 = v177;
  v203 = v178;
  v198 = v173;
  v199 = v174;
  sub_1BD2ED540(&v198);
  if (*&v191[0])
  {
    if (BYTE8(v192) != 1)
    {
      v93 = &qword_1EBD4C950;
      v94 = &qword_1BE0CA3D0;
      v95 = v191;
LABEL_26:
      sub_1BD0DE53C(v95, v93, v94);
      return;
    }

    v37 = v211;
    v38 = *(&v191[0] + 1);
    v39 = swift_getKeyPath();
    v40 = swift_getKeyPath();
    v168 = v38;
    sub_1BE04D8B4(v4);
    v39, v41, v42, v43, v44, v45, v46, v47;
    v40, v48, v49, v50, v51, v52, v53, v54;
    sub_1BD5153AC(v38, v37, v4, &v173);
    v55 = v173;
    v56 = v174;
    v57 = v175;
    v58 = v1 + qword_1EBD4C7E8;
    v59 = *(v1 + qword_1EBD4C7E8 + 16);
    if (v59)
    {
      v166 = v175;
      v60 = *(v58 + 32);
      if (*v58)
      {
        v61 = *v58;
        sub_1BE048C84();
        sub_1BE048C84();
        v62 = [v61 identifier];
        *&v167 = sub_1BE052434();
        *(&v167 + 1) = v63;
        v60, v63, v64, v65, v66, v67, v68, v69;
        v59, v70, v71, v72, v73, v74, v75, v76;

        if (v56)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v110 = *(v58 + 24);
        *&v170 = *(v58 + 8);
        *(&v170 + 1) = v59;
        sub_1BD5D7DD4(0, v170, v59, v110, v60);
        sub_1BE048C84();
        MEMORY[0x1BFB3F610](v110, v60);
        v60, v111, v112, v113, v114, v115, v116, v117;
        v59, v118, v119, v120, v121, v122, v123, v124;
        v167 = v170;
        if (v56)
        {
LABEL_6:
          v84 = *(&v173 + 1);
          v85 = *(&v174 + 1);
          v57 = v166;
          v187 = v55;
          if (v55)
          {
            goto LABEL_7;
          }

LABEL_13:
          *&v189 = v84;
          *(&v189 + 1) = v56;
          v169 = v189;
          sub_1BD0DE19C(&v173, &v170, &qword_1EBD4C810, &qword_1BE0E65E0);
          sub_1BD206260(&v189, &v170);
          MEMORY[0x1BFB3F610](v85, v57);
          sub_1BD1BCDE4(&v189);
          v57, v96, v97, v98, v99, v100, v101, v102;
          v91 = *(&v169 + 1);
          v92 = *(&v167 + 1);
          if (!*(&v167 + 1))
          {
            goto LABEL_21;
          }

          v89 = v169;
          if (*(&v169 + 1))
          {
LABEL_15:
            if (v167 == v89 && v92 == v91)
            {
              v92, v77, v78, v79, v80, v81, v82, v83;
              v91, v103, v104, v105, v106, v107, v108, v109;
            }

            else
            {
              v151 = sub_1BE053B84();
              v92, v152, v153, v154, v155, v156, v157, v158;
              v91, v159, v160, v161, v162, v163, v164, v165;
              if ((v151 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            goto LABEL_25;
          }

LABEL_20:
          v91 = v92;
LABEL_22:
          v91, v77, v78, v79, v80, v81, v82, v83;
LABEL_23:
          swift_getKeyPath();
          swift_getKeyPath();
          v170 = v173;
          v171 = v174;
          v172 = v175;
          sub_1BD0DE19C(&v173, &v169, &qword_1EBD4C810, &qword_1BE0E65E0);
          sub_1BE048964();
          sub_1BE04D8C4();
          v125 = swift_getKeyPath();
          v126 = swift_getKeyPath();
          sub_1BE04D8B4(&v170);
          sub_1BD0DE53C(&v173, &qword_1EBD4C810, &qword_1BE0E65E0);

          sub_1BD0DE53C(v191, &qword_1EBD4C950, &qword_1BE0CA3D0);
          v125, v127, v128, v129, v130, v131, v132, v133;
          v126, v134, v135, v136, v137, v138, v139, v140;
          v141 = v172;
          v142 = v171;
          v143 = *v58;
          v144 = *(v58 + 8);
          v145 = *(v58 + 16);
          v146 = *(v58 + 24);
          v147 = *(v58 + 32);
          *v58 = v170;
          *(v58 + 16) = v142;
          *(v58 + 32) = v141;
          sub_1BD5D69A8(v143, v144, v145, v146, v147, v148, v149, v150);
          return;
        }
      }

      v92 = *(&v167 + 1);
      if (*(&v167 + 1))
      {
        goto LABEL_20;
      }
    }

    else if (v174)
    {
      v167 = 0uLL;
      v84 = *(&v173 + 1);
      v85 = *(&v174 + 1);
      v187 = v173;
      if (v173)
      {
LABEL_7:
        v86 = v55;
        sub_1BE048C84();
        sub_1BE048C84();
        v87 = v57;
        v88 = [v86 identifier];
        v89 = sub_1BE052434();
        v91 = v90;

        sub_1BD0DE53C(&v187, &qword_1EBD4C958, &qword_1BE0E6AE8);
        v188[0] = v84;
        v188[1] = v56;
        sub_1BD1BCDE4(v188);
        *&v189 = v85;
        *(&v189 + 1) = v87;
        sub_1BD1BCDE4(&v189);
        v92 = *(&v167 + 1);
        if (*(&v167 + 1))
        {
          if (!v91)
          {
            goto LABEL_20;
          }

          goto LABEL_15;
        }

LABEL_21:
        if (v91)
        {
          goto LABEL_22;
        }

        goto LABEL_25;
      }

      goto LABEL_13;
    }

LABEL_25:
    sub_1BD0DE53C(v191, &qword_1EBD4C950, &qword_1BE0CA3D0);

    v93 = &qword_1EBD4C810;
    v94 = &qword_1BE0E65E0;
    v95 = &v173;
    goto LABEL_26;
  }
}

void sub_1BD5D56A4()
{
  v1 = qword_1EBD4C770;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8C8, &qword_1BE0E66D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD4C778;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C8D0, &qword_1BE0E66E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_1EBD4C780;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = qword_1EBD4C788;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E0, &qword_1BE0D4270);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = qword_1EBD4C790;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E8, &qword_1BE0E66E8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = qword_1EBD4C798;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8F0, &qword_1BE0E66F0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = qword_1EBD4C7A0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8F8, &qword_1BE0E66F8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = qword_1EBD4C7A8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C900, &unk_1BE0E6700);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = qword_1EBD4C7B0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140, &unk_1BE0D42A0);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  *(v0 + qword_1EBDAB300), v20, v21, v22, v23, v24, v25, v26;
  *(v0 + qword_1EBDAB310 + 8), v27, v28, v29, v30, v31, v32, v33;
  v7(v0 + qword_1EBD4C7B8, v6);
  v34 = qword_1EBD4C7C0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C910, &qword_1BE0E6710);
  (*(*(v35 - 8) + 8))(v0 + v34, v35);
  v36 = qword_1EBD4C7C8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C918, &qword_1BE0E6718);
  (*(*(v37 - 8) + 8))(v0 + v36, v37);
  v38 = qword_1EBD4C7D0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C920, &qword_1BE0E6720);
  (*(*(v39 - 8) + 8))(v0 + v38, v39);
  v40 = qword_1EBD4C7D8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C928, &qword_1BE0E6728);
  (*(*(v41 - 8) + 8))(v0 + v40, v41);
  v42 = qword_1EBD4C7E0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C930, &qword_1BE0E6730);
  (*(*(v43 - 8) + 8))(v0 + v42, v43);
  v47 = *(v0 + qword_1EBD4C7E8);
  v48 = *(v0 + qword_1EBD4C7E8 + 8);
  v49 = *(v0 + qword_1EBD4C7E8 + 16);
  v50 = *(v0 + qword_1EBD4C7E8 + 24);
  v51 = *(v0 + qword_1EBD4C7E8 + 32);

  sub_1BD5D69A8(v47, v48, v49, v50, v51, v44, v45, v46);
}

uint64_t sub_1BD5D5B64()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140, &unk_1BE0D42A0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = *(v0 + qword_1EBDAAD68);
  v5 = *(v0 + qword_1EBDAAD68 + 24);
  v6 = *(v0 + qword_1EBDAAD68 + 32);
  *(v0 + qword_1EBDAAD68 + 40), v7, v8, v9, v10, v11, v12, v13;

  swift_unknownObjectRelease();
  v14 = qword_1EBD4C770;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8C8, &qword_1BE0E66D8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = qword_1EBD4C778;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C8D0, &qword_1BE0E66E0);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = qword_1EBD4C780;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v20 = *(*(v19 - 8) + 8);
  v20(v0 + v18, v19);
  v21 = qword_1EBD4C788;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E0, &qword_1BE0D4270);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = qword_1EBD4C790;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E8, &qword_1BE0E66E8);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  v25 = qword_1EBD4C798;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8F0, &qword_1BE0E66F0);
  (*(*(v26 - 8) + 8))(v0 + v25, v26);
  v27 = qword_1EBD4C7A0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8F8, &qword_1BE0E66F8);
  (*(*(v28 - 8) + 8))(v0 + v27, v28);
  v29 = qword_1EBD4C7A8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C900, &unk_1BE0E6700);
  (*(*(v30 - 8) + 8))(v0 + v29, v30);
  v3(v0 + qword_1EBD4C7B0, v2);
  *(v0 + qword_1EBDAB300), v31, v32, v33, v34, v35, v36, v37;
  *(v0 + qword_1EBDAB310 + 8), v38, v39, v40, v41, v42, v43, v44;
  v20(v0 + qword_1EBD4C7B8, v19);
  v45 = qword_1EBD4C7C0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C910, &qword_1BE0E6710);
  (*(*(v46 - 8) + 8))(v0 + v45, v46);
  v47 = qword_1EBD4C7C8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C918, &qword_1BE0E6718);
  (*(*(v48 - 8) + 8))(v0 + v47, v48);
  v49 = qword_1EBD4C7D0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C920, &qword_1BE0E6720);
  (*(*(v50 - 8) + 8))(v0 + v49, v50);
  v51 = qword_1EBD4C7D8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C928, &qword_1BE0E6728);
  (*(*(v52 - 8) + 8))(v0 + v51, v52);
  v53 = qword_1EBD4C7E0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C930, &qword_1BE0E6730);
  (*(*(v54 - 8) + 8))(v0 + v53, v54);
  sub_1BD5D69A8(*(v0 + qword_1EBD4C7E8), *(v0 + qword_1EBD4C7E8 + 8), *(v0 + qword_1EBD4C7E8 + 16), *(v0 + qword_1EBD4C7E8 + 24), *(v0 + qword_1EBD4C7E8 + 32), v55, v56, v57);
  return v0;
}

uint64_t sub_1BD5D6080()
{
  sub_1BD5D5B64();

  return swift_deallocClassInstance();
}

void sub_1BD5D60D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE04D8D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD5D6150(uint64_t a1)
{
  result = type metadata accessor for PeerPaymentModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PassEligibleRewardsInfo(319);
    if (v3 <= 0x3F)
    {
      result = sub_1BD5D61E8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BD5D61E8()
{
  result = qword_1EBD4C8B0;
  if (!qword_1EBD4C8B0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EBD4C8B0);
  }

  return result;
}

uint64_t sub_1BD5D6244(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5D62B4(uint64_t a1, uint64_t a2)
{
  v171 = a2;
  v3 = type metadata accessor for PassEligibleRewardsInfo(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v170 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PeerPaymentModel(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v170 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v170 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v170 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v170 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8C0, &qword_1BE0E66D0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v170 + *(v25 + 56) - v24;
  v27 = a1;
  v28 = &v170 - v24;
  sub_1BD5D6A0C(v27, &v170 - v24, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
  sub_1BD5D6A0C(v171, v26, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v65 = v28;
      sub_1BD5D6A0C(v28, v19, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
      v67 = *v19;
      v66 = v19[1];
      v69 = v19[2];
      v68 = v19[3];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v77 = *v26;
        v78 = *(v26 + 1);
        v80 = *(v26 + 2);
        v79 = *(v26 + 3);
        v81 = v67 == v77 && v66 == v78;
        if (v81 || (sub_1BE053B84() & 1) != 0)
        {
          if (v69 == v80 && v68 == v79)
          {
            v68, v70, v77, v72, v73, v74, v75, v76;
            v66, v127, v128, v129, v130, v131, v132, v133;
            v79, v134, v135, v136, v137, v138, v139, v140;
            v78, v141, v142, v143, v144, v145, v146, v147;
            v112 = v65;
            goto LABEL_42;
          }

          v83 = sub_1BE053B84();
          v68, v84, v85, v86, v87, v88, v89, v90;
          v66, v91, v92, v93, v94, v95, v96, v97;
          v79, v98, v99, v100, v101, v102, v103, v104;
          v78, v105, v106, v107, v108, v109, v110, v111;
          v112 = v65;
          if (v83)
          {
LABEL_42:
            sub_1BD5D6948(v112, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
            v57 = 1;
            return v57 & 1;
          }
        }

        else
        {
          v79, v70, v77, v72, v73, v74, v75, v76;
          v78, v149, v150, v151, v152, v153, v154, v155;
          v68, v156, v157, v158, v159, v160, v161, v162;
          v66, v163, v164, v165, v166, v167, v168, v169;
          v112 = v65;
        }

        sub_1BD5D6948(v112, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
        goto LABEL_35;
      }

      v68, v70, v71, v72, v73, v74, v75, v76;
      v66, v113, v114, v115, v116, v117, v118, v119;
      v28 = v65;
    }

    else
    {
      sub_1BD5D6A0C(v28, v22, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1BD57888C(v26, v7, type metadata accessor for PeerPaymentModel);
        v57 = sub_1BD56F840(v22, v7);
        v58 = type metadata accessor for PeerPaymentModel;
        sub_1BD5D6948(v7, type metadata accessor for PeerPaymentModel);
        v59 = v22;
        goto LABEL_37;
      }

      sub_1BD5D6948(v22, type metadata accessor for PeerPaymentModel);
    }

LABEL_34:
    sub_1BD0DE53C(v28, &qword_1EBD4C8C0, &qword_1BE0E66D0);
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD5D6A0C(v28, v16, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v56 = v170;
      sub_1BD57888C(v26, v170, type metadata accessor for PassEligibleRewardsInfo);
      v57 = sub_1BD57A1B4(v16, v56);
      v58 = type metadata accessor for PassEligibleRewardsInfo;
      sub_1BD5D6948(v56, type metadata accessor for PassEligibleRewardsInfo);
      v59 = v16;
LABEL_37:
      sub_1BD5D6948(v59, v58);
      goto LABEL_38;
    }

    sub_1BD5D6948(v16, type metadata accessor for PassEligibleRewardsInfo);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1BD5D6A0C(v28, v10, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
    v61 = v10[1];
    v60 = v10[2];
    if (swift_getEnumCaseMultiPayload() != 4)
    {

      goto LABEL_34;
    }

    v62 = *v26;
    v63 = *(v26 + 1);
    v64 = *(v26 + 2);
    v57 = sub_1BD8C1578(*v10, v61, v60, v62, v63, v64);

LABEL_38:
    sub_1BD5D6948(v28, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
    return v57 & 1;
  }

  sub_1BD5D6A0C(v28, v13, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
  v31 = *v13;
  v30 = v13[1];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v30, v32, v33, v34, v35, v36, v37, v38;
    goto LABEL_34;
  }

  v39 = *(v26 + 1);
  if (v31 == *v26 && v30 == v39)
  {
    *(v26 + 1), v32, *v26, v34, v35, v36, v37, v38;
    v30, v120, v121, v122, v123, v124, v125, v126;
    goto LABEL_40;
  }

  v41 = sub_1BE053B84();
  v39, v42, v43, v44, v45, v46, v47, v48;
  v30, v49, v50, v51, v52, v53, v54, v55;
  if (v41)
  {
LABEL_40:
    v112 = v28;
    goto LABEL_42;
  }

  sub_1BD5D6948(v28, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
LABEL_35:
  v57 = 0;
  return v57 & 1;
}
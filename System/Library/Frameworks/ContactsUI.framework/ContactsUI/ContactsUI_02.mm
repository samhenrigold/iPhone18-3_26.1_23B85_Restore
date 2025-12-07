void sub_199ABC268(void *a1, void (*a2)(void))
{
  if (!a1)
  {
    v22 = [objc_opt_self() labelColor];
    a2();
LABEL_13:
    v20 = v22;
    goto LABEL_16;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v22 = a1;
  v5 = [v4 initWithCGImage_];
  v6 = [v5 CGImage];
  if (v6)
  {
    v7 = v6;
    v8 = vcvtd_n_f64_s64(CGImageGetHeight(v6), 1uLL);
    Width = CGImageGetWidth(v7);
    v24.size.height = vcvtd_n_f64_s64(CGImageGetHeight(v7), 1uLL);
    v24.origin.x = 0.0;
    v24.origin.y = v8;
    v24.size.width = Width;
    v10 = CGImageCreateWithImageInRect(v7, v24);
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() colorsForImageRef_];
      sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
      v13 = sub_199DFA0CC();

      goto LABEL_8;
    }
  }

  v7 = [objc_opt_self() colorsForUIImage_];
  sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
  v13 = sub_199DFA0CC();
LABEL_8:

  if (v13 >> 62)
  {
    if (sub_199DFA87C() >= 1)
    {
      goto LABEL_10;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_10:
    v14 = objc_opt_self();
    sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
    v15 = sub_199DFA0BC();

    v16 = [v14 backgroundColorsPreferWhiteForegroundText_];

    v17 = objc_opt_self();
    v18 = &selRef_whiteColor;
    if (!v16)
    {
      v18 = &selRef_blackColor;
    }

    v19 = [v17 *v18];
    a2();

    goto LABEL_13;
  }

  v21 = [objc_opt_self() labelColor];
  a2();

  v20 = v21;
LABEL_16:
}

uint64_t objectdestroy_22Tm()
{
  sub_199ABA1F8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_199ABC5BC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C70, &qword_199E39178);

  return sub_199AB9F10(a1);
}

uint64_t objectdestroy_89Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_199ABC6BC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C78, &unk_199E39180);

  return sub_199AB7E88(a1);
}

uint64_t get_enum_tag_for_layout_string_10ContactsUI19CNPosterSnapshotterC12SnapshotTypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_199ABC788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_199ABC7D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_199ABC818(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_199ABC848()
{
  result = qword_1EAF72C80;
  if (!qword_1EAF72C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72C80);
  }

  return result;
}

id CNWallpaperUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNWallpaperUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNWallpaperUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CNWallpaperUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CNWallpaperUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s10ContactsUI20CNWallpaperUtilitiesC28supportsWatchImageDataRepair3forSbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000028 && 0x8000000199E45740 == a2 || (sub_199DFA99C() & 1) != 0 || a1 == 0xD00000000000002CLL && 0x8000000199E456C0 == a2 || (sub_199DFA99C() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0xD00000000000002ELL && 0x8000000199E45770 == a2)
  {
    return 0;
  }

  sub_199DFA99C();
  return 0;
}

uint64_t sub_199ABCB28()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF86E10);
  __swift_project_value_buffer(v0, qword_1EAF86E10);
  return sub_199DF803C();
}

uint64_t sub_199ABCCA4(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_199ABCD04(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CNUIVisualIdentityEditorViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_199ABCD9C;
}

void sub_199ABCD9C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_199ABCEDC()
{
  v1 = *(v0 + OBJC_IVAR___CNUIVisualIdentityEditorViewController_model);
  swift_getKeyPath();
  sub_199ABEA8C();

  sub_199DF73AC();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_199ABCFEC(void *a1)
{

  sub_199ABEB30(a1);
}

uint64_t sub_199ABD03C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___CNUIVisualIdentityEditorViewController_model);
  swift_getKeyPath();
  sub_199ABEA8C();

  sub_199DF73AC();

  v4 = *(v3 + 16);

  *a2 = v4;
  return result;
}

uint64_t sub_199ABD0E4(id *a1, void *a2)
{
  v2 = *a1;

  sub_199ABEB30(v2);
}

uint64_t (*sub_199ABD140(void *a1))(void **a1, char a2)
{
  v3 = OBJC_IVAR___CNUIVisualIdentityEditorViewController_model;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v1 + v3);
  swift_getKeyPath();
  a1[1] = v4;
  sub_199ABEA8C();

  sub_199DF73AC();

  v5 = *(v4 + 16);

  *a1 = v5;
  return sub_199ABD200;
}

uint64_t sub_199ABD200(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;

    sub_199ABEB30(v3);
  }

  else
  {

    sub_199ABEB30(v2);
  }
}

id VisualIdentityEditorViewController.__allocating_init(contact:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v5 = sub_199ABED24(a1, 2, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id VisualIdentityEditorViewController.init(contact:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v3 = sub_199ABED24(a1, 2, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id VisualIdentityEditorViewController.__allocating_init(contact:configuration:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v7 = sub_199ABED24(a1, 2, 0, a2);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id VisualIdentityEditorViewController.init(contact:configuration:)(void *a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v5 = sub_199ABED24(a1, 2, 0, a2);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id VisualIdentityEditorViewController.__allocating_init(contact:isMeContact:)(void *a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v7 = sub_199ABED24(a1, a2 & 1, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id VisualIdentityEditorViewController.init(contact:isMeContact:)(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v5 = sub_199ABED24(a1, v2 & 1, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id VisualIdentityEditorViewController.__allocating_init(contact:saveChangesToContactStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v5 = sub_199ABED24(a1, 0, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id VisualIdentityEditorViewController.init(contact:saveChangesToContactStore:)(void *a1, uint64_t a2)
{
  v3 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v4 = sub_199ABED24(a1, 0, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

id VisualIdentityEditorViewController.__allocating_init(contact:isMeContact:saveChangesToContactStore:)(void *a1, char a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  v8 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v9 = sub_199ABED24(a1, a2 & 1, v4, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id VisualIdentityEditorViewController.init(contact:isMeContact:saveChangesToContactStore:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v7 = sub_199ABED24(a1, v4 & 1, v3, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

void sub_199ABDC28()
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CB8, &qword_199E393D0);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v78 = &v72 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CC0, &qword_199E393D8);
  v80 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v72 - v7;
  v9 = sub_199DF796C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  sub_199DF78EC();
  v81 = v18;
  v82 = v0;
  v19 = *&v0[OBJC_IVAR___CNUIVisualIdentityEditorViewController_configuration];
  v79 = v9;
  if (v19)
  {
    v20 = v19;
    if ([v20 includeRecents])
    {
      sub_199DF794C();
      sub_199DF791C();
      v21 = *(v10 + 8);
      v22 = v79;
      v21(v12, v79);
      v21(v15, v22);
      v18 = v81;
    }

    if ([v20 allowPhotoFromLibrary])
    {
      sub_199DF793C();
      sub_199DF791C();
      v23 = *(v10 + 8);
      v24 = v79;
      v23(v12, v79);
      v23(v15, v24);
      v18 = v81;
    }

    if ([v20 includeAnimoji])
    {
      sub_199DF792C();
      sub_199DF791C();
      v25 = *(v10 + 8);
      v26 = v79;
      v25(v12, v79);
      v25(v15, v26);
      v18 = v81;
    }

    if ([v20 includeMonograms])
    {
      sub_199DF795C();
      sub_199DF791C();
      v27 = *(v10 + 8);
      v28 = v79;
      v27(v12, v79);
      v27(v15, v28);
      v18 = v81;
    }

    if ([v20 includeEmoji])
    {
      sub_199DF790C();
      sub_199DF791C();

      v29 = *(v10 + 8);
      v9 = v79;
      v29(v12, v79);
      v29(v15, v9);
    }

    else
    {

      v9 = v79;
    }
  }

  else
  {
    sub_199DF78FC();
    (*(v10 + 8))(v18, v9);
    (*(v10 + 32))(v18, v15, v9);
  }

  v30 = v82;
  type metadata accessor for VisualIdentityEditorViewController.Model(0);
  sub_199ABEA8C();

  sub_199DF9A3C();
  v31 = v75;
  v74 = v8;
  sub_199DF9A2C();
  swift_getKeyPath();
  sub_199DF9A4C();

  v32 = *(v80 + 8);
  v75 = v4;
  v80 += 8;
  v72 = v32;
  v32(v31, v4);
  v73 = v10;
  (*(v10 + 16))(v15, v18, v9);
  v33 = objc_allocWithZone(MEMORY[0x1E695CE18]);
  sub_199DF81AC();
  [v33 init];
  v34 = v78;
  sub_199DF789C();
  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = v77;
  v38 = (v34 + *(v76 + 36));
  *v38 = KeyPath;
  v38[1] = sub_199ABF2F0;
  v38[2] = v36;
  sub_199ABF2F8(v34, v37);
  v39 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CC8, &qword_199E39410));
  v40 = sub_199DF8DFC();
  [v30 addChildViewController_];
  v41 = [v30 view];
  if (!v41)
  {
    __break(1u);
    goto LABEL_28;
  }

  v42 = v41;
  v43 = [v40 view];
  if (!v43)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v44 = v43;
  [v42 addSubview_];

  v45 = [v40 view];
  if (!v45)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v46 = [objc_opt_self() clearColor];
  [v45 setBackgroundColor_];

  v47 = [v40 view];
  if (!v47)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v47 setTranslatesAutoresizingMaskIntoConstraints_];

  v48 = [v40 view];
  if (!v48)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v49 = [v48 topAnchor];

  v50 = [v82 view];
  if (!v50)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v51 = v50;
  v52 = [v50 topAnchor];

  v53 = [v49 constraintEqualToAnchor_];
  [v53 setActive_];

  v54 = [v40 view];
  if (!v54)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v55 = [v54 bottomAnchor];

  v56 = [v82 view];
  if (!v56)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v57 = v56;
  v58 = [v56 bottomAnchor];

  v59 = [v55 constraintEqualToAnchor_];
  [v59 setActive_];

  v60 = [v40 view];
  if (!v60)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v61 = [v60 rightAnchor];

  v62 = [v82 view];
  if (!v62)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v63 = v62;
  v64 = [v62 rightAnchor];

  v65 = [v61 constraintEqualToAnchor_];
  [v65 setActive_];

  v66 = [v40 view];
  if (!v66)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v67 = [v66 leftAnchor];

  v68 = [v82 view];
  if (v68)
  {
    v69 = v68;
    v70 = [v68 leftAnchor];

    v71 = [v67 constraintEqualToAnchor_];
    [v71 setActive_];

    [v40 didMoveToParentViewController_];
    sub_199ABF368(v78);
    v72(v74, v75);
    (*(v73 + 8))(v81, v79);
    return;
  }

LABEL_38:
  __break(1u);
}

id sub_199ABE704@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199ABEA8C();
  sub_199DF73AC();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_199ABE78C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_199DF8A1C();
}

void sub_199ABE7F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 visualIdentityEditorViewControllerDidFinishEditing_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id VisualIdentityEditorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_199DF9F5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VisualIdentityEditorViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VisualIdentityEditorViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_199ABEA0C()
{
  swift_getKeyPath();
  sub_199ABEA8C();
  sub_199DF73AC();

  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_199ABEA8C()
{
  result = qword_1EAF718C8;
  if (!qword_1EAF718C8)
  {
    type metadata accessor for VisualIdentityEditorViewController.Model(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF718C8);
  }

  return result;
}

uint64_t type metadata accessor for VisualIdentityEditorViewController.Model(uint64_t a1)
{
  result = qword_1EAF718B8;
  if (!qword_1EAF718B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199ABEB30(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_199A7DDB0();
  v5 = v4;
  v6 = sub_199DFA4EC();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199ABEA8C();
    sub_199DF739C();
  }
}

uint64_t sub_199ABEC80()
{
  v1 = OBJC_IVAR____TtCC10ContactsUI34VisualIdentityEditorViewControllerP33_8A227A4341952196F9E06C569271B7245Model___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_199ABED24(void *a1, char a2, char a3, void *a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___CNUIVisualIdentityEditorViewController_configuration;
  *&v5[OBJC_IVAR___CNUIVisualIdentityEditorViewController_configuration] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for VisualIdentityEditorViewController.Model(0);
  v11 = swift_allocObject();
  v12 = a1;
  sub_199DF73DC();
  *(v11 + 16) = v12;
  *&v5[OBJC_IVAR___CNUIVisualIdentityEditorViewController_model] = v11;
  v13 = *&v5[v10];
  *&v5[v10] = a4;
  v14 = a4;

  v5[OBJC_IVAR___CNUIVisualIdentityEditorViewController_isMeContact] = a2;
  v5[OBJC_IVAR___CNUIVisualIdentityEditorViewController_saveChangesToContactStore] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CD0, &qword_199E39418);
  v15 = sub_199DF77BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  if (a4)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_199E37D40;
    (*(v16 + 104))(v19 + v18, *MEMORY[0x1E6996948], v15);
    v20 = sub_199B6A238(v19);
    swift_setDeallocating();
    (*(v16 + 8))(v19 + v18, v15);
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_199E39320;
    v22 = v21 + v18;
    v23 = *(v16 + 104);
    v23(v22, *MEMORY[0x1E6996948], v15);
    v23(v22 + v17, *MEMORY[0x1E6996950], v15);
    v20 = sub_199B6A238(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  *&v5[OBJC_IVAR___CNUIVisualIdentityEditorViewController_supportedIdentityTypes] = v20;
  if (qword_1EAF718B0 != -1)
  {
    swift_once();
  }

  v24 = sub_199DF804C();
  __swift_project_value_buffer(v24, qword_1EAF86E10);
  v25 = v12;
  v26 = sub_199DF802C();
  v27 = sub_199DFA33C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136315138;
    v30 = [v25 identifier];
    v31 = sub_199DF9F8C();
    v33 = v32;

    v34 = sub_199A9BE90(v31, v33, &v37);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_199A75000, v26, v27, "Editor init for contact with identifier: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x19A8FA1A0](v29, -1, -1);
    MEMORY[0x19A8FA1A0](v28, -1, -1);
  }

  v35 = type metadata accessor for VisualIdentityEditorViewController();
  v38.receiver = v5;
  v38.super_class = v35;
  return objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_199ABF250(uint64_t a1)
{
  result = sub_199DF73EC();
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

uint64_t sub_199ABF2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CB8, &qword_199E393D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199ABF368(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CB8, &qword_199E393D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_199ABF3E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_199ABF418()
{
  qword_1EAF72CF8 = 0;
  qword_1EAF72CD8 = 0;
  byte_1EAF72CE0 = 1;
  qword_1EAF72CE8 = 0;
  byte_1EAF72CF0 = 1;
}

uint64_t ContactAccessButton.Style.init(imageTrailingEdgePadding:imageWidth:imageColor:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = a5;
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  return result;
}

uint64_t sub_199ABF45C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF71E18 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = byte_1EAF72CE0;
  v3 = qword_1EAF72CE8;
  v4 = byte_1EAF72CF0;
  v5 = qword_1EAF72CF8;
  *a1 = qword_1EAF72CD8;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_199ABF500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_199AC4844();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_199ABF564()
{
  sub_199AC6214();

  return sub_199DF8C9C();
}

void *sub_199ABF5AC()
{
  sub_199AC61C0();

  return sub_199DF8C9C();
}

uint64_t sub_199ABF5F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40, &qword_199E39888);
  __swift_allocate_value_buffer(v0, qword_1EAF86F58);
  __swift_project_value_buffer(v0, qword_1EAF86F58);
  return sub_199DF836C();
}

uint64_t sub_199ABF6A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40, &qword_199E39888);
  __swift_allocate_value_buffer(v0, qword_1EAF86F70);
  __swift_project_value_buffer(v0, qword_1EAF86F70);
  return sub_199DF836C();
}

uint64_t sub_199ABF754@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E48, &qword_199E39890);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E50, &qword_199E39898);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12[-v9];
  sub_199AA0B90(&qword_1EAF71500, &qword_1EAF72E50, &qword_199E39898, MEMORY[0x1E6968DA8]);
  sub_199DF715C();
  v12[15] = 0;
  sub_199DF714C();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E58, &unk_199E398A0);
  a2[4] = sub_199AC5B28();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_199AA0B90(&qword_1EAF72E70, &qword_1EAF72E48, &qword_199E39890, MEMORY[0x1E6968D20]);
  sub_199DF70FC();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_199ABFA44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_199AC5C64();
  result = MEMORY[0x19A8F5EF0](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

ContactsUI::ContactAccessButton::Caption_optional __swiftcall ContactAccessButton.Caption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_199DFA8DC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactAccessButton.Caption.rawValue.getter()
{
  v1 = 0x656E6F6870;
  if (*v0 != 1)
  {
    v1 = 0x54746C7561666564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C69616D65;
  }
}

uint64_t sub_199ABFB3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656E6F6870;
  if (v2 != 1)
  {
    v5 = 0x54746C7561666564;
    v4 = 0xEB00000000747865;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6C69616D65;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x656E6F6870;
  if (*a2 != 1)
  {
    v8 = 0x54746C7561666564;
    v3 = 0xEB00000000747865;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C69616D65;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_199DFA99C();
  }

  return v11 & 1;
}

uint64_t sub_199ABFC40()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

uint64_t sub_199ABFCE4(uint64_t a1)
{
  sub_199DF9FEC();
}

uint64_t sub_199ABFD74(uint64_t a1)
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

void sub_199ABFE20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656E6F6870;
  if (v2 != 1)
  {
    v5 = 0x54746C7561666564;
    v4 = 0xEB00000000747865;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C69616D65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_199ABFE80()
{
  qword_1EAF72D20 = 0;
  qword_1EAF72D00 = 0;
  byte_1EAF72D08 = 1;
  qword_1EAF72D10 = 0;
  byte_1EAF72D18 = 1;
}

uint64_t static ContactAccessButton.Style.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF71E30 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = byte_1EAF72D08;
  v3 = qword_1EAF72D10;
  v4 = byte_1EAF72D18;
  v5 = qword_1EAF72D20;
  *a1 = qword_1EAF72D00;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

void *ContactAccessButton.init(queryString:ignoredEmails:ignoredPhoneNumbers:approvalCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a5;
  v47 = a6;
  v44 = a2;
  v45 = a4;
  v42 = a3;
  v43 = a1;
  v8 = sub_199DFA40C();
  v9 = *(v8 - 8);
  v40 = v8;
  v41 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D28, &qword_199E39420);
  v12 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v14 = &v39 - v13;
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = swift_getKeyPath();
  *(a7 + 24) = 0;
  *(a7 + 32) = swift_getKeyPath();
  *(a7 + 40) = 0;
  *(a7 + 48) = swift_getKeyPath();
  *(a7 + 56) = 0;
  *(a7 + 64) = swift_getKeyPath();
  *(a7 + 72) = 0;
  *(a7 + 80) = swift_getKeyPath();
  *(a7 + 88) = 0u;
  *(a7 + 104) = 0u;
  *(a7 + 120) = 0;
  *(a7 + 128) = swift_getKeyPath();
  *(a7 + 136) = 0;
  v15 = type metadata accessor for ContactAccessButton(0);
  v16 = v15[11];
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30, &qword_199E39598);
  swift_storeEnumTagMultiPayload();
  v17 = v15[12];
  *(a7 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D38, &unk_199E395D0);
  swift_storeEnumTagMultiPayload();
  v18 = v15[13];
  *(a7 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D40, &qword_199E395F8);
  swift_storeEnumTagMultiPayload();
  v19 = v15[16];
  v20 = MEMORY[0x1E69E7CD0];
  *(a7 + v19) = MEMORY[0x1E69E7CD0];
  v21 = v15[17];
  *(a7 + v21) = v20;
  v22 = v15[18];
  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 orientation];

  v48 = v24;
  type metadata accessor for UIDeviceOrientation(0);
  sub_199DF983C();
  *(a7 + v22) = v49;
  v25 = v15[19];
  v26 = [objc_opt_self() defaultCenter];
  sub_199DFA41C();

  sub_199AC616C(&qword_1EAF71080, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v27 = v40;
  sub_199DF847C();
  (*(v41 + 8))(v11, v27);
  sub_199AA0B90(&qword_1EAF72D48, &qword_1EAF72D28, &qword_199E39420, MEMORY[0x1E695BD10]);
  v28 = v39;
  v29 = sub_199DF83CC();
  (*(v12 + 8))(v14, v28);
  v30 = v42;
  v31 = v43;
  *(a7 + v25) = v29;
  v32 = (a7 + v15[14]);
  v33 = v44;
  *v32 = v31;
  v32[1] = v33;
  if (v30)
  {
    *(a7 + v19) = v30;
  }

  if (v45)
  {
    *(a7 + v21) = v45;
  }

  v34 = (a7 + v15[21]);
  v35 = v47;
  *v34 = v46;
  v34[1] = v35;
  v36 = a7 + v15[15];
  LOBYTE(v48) = 0;
  result = sub_199DF983C();
  v38 = *(&v49 + 1);
  *v36 = v49;
  *(v36 + 8) = v38;
  return result;
}

void *ContactAccessButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v3 = type metadata accessor for ContactAccessButton(0);
  v91 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v92 = v4;
  v93 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_199DF71BC();
  v88 = *(v5 - 8);
  v89 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D50, &qword_199E39600);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = (&v83 - v8);
  v9 = sub_199DF857C();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v105 = (&v83 - v13);
  v103 = sub_199DF8C6C();
  v14 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v16 = (&v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!sub_199AC1F14(*(v1 + 16), *(v1 + 24), 0xEF3E726F6C6F433CLL, j_j__swift_release))
  {
    sub_199DF96CC();
  }

  v102 = v14;
  v104 = sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
  v86 = sub_199DFA4CC();
  v17 = sub_199AC20F0(*(v1 + 48), *(v1 + 56));
  if (v17)
  {
    *&v119 = v17;
    sub_199AC2DAC(v16);
    v18 = sub_199DF855C();
    (*(v102 + 8))(v16, v103);
  }

  else
  {
    v18 = 0;
  }

  v107 = v3;
  v98 = *(v3 + 48);
  v19 = v105;
  sub_199AC2B24(v105);
  v20 = *(v10 + 104);
  v21 = v106;
  LODWORD(v96) = *MEMORY[0x1E697DBB8];
  v97 = (v10 + 104);
  v95 = v20;
  v20(v106);
  v22 = sub_199DF856C();
  v23 = *(v10 + 8);
  (v23)(v21, v9);
  v99 = v23;
  v100 = (v10 + 8);
  (v23)(v19, v9);
  if (v22)
  {
    v24 = sub_199DF971C();
  }

  else
  {
    v24 = sub_199DF96EC();
  }

  v25 = v103;
  v90 = v24;
  v101 = v9;
  if (!v18)
  {
  }

  v26 = v102;
  v103 = v18;

  v85 = sub_199DFA4CC();
  *&v119 = sub_199A7B8E8(*(v2 + 32), *(v2 + 40));
  sub_199AC2DAC(v16);
  v27 = sub_199DF855C();
  v28 = *(v26 + 8);
  v28(v16, v25);

  if (v27)
  {

    sub_199AC2DAC(v16);
    sub_199DF974C();

    v28(v16, v25);
  }

  v29 = v105;
  sub_199AC2B24(v105);
  v30 = v106;
  v31 = v101;
  (v95)(v106, v96, v101);
  v32 = sub_199DF856C();
  v33 = v99;
  (v99)(v30, v31);
  (v33)(v29, v31);
  if (v32)
  {
    v34 = sub_199DF96EC();
  }

  else
  {
    v34 = sub_199DF971C();
  }

  v35 = v34;
  v102 = v27;
  if (v27)
  {
    result = sub_199DF975C();
  }

  else
  {
    result = sub_199DF968C();
    if (!result)
    {
LABEL_32:
      __break(1u);
      return result;
    }
  }

  v37 = result;
  v38 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  v39 = *(v2 + 96);
  v119 = *(v2 + 80);
  v120[0] = v39;
  *(v120 + 9) = *(v2 + 105);
  sub_199AC2488(&v117);
  v106 = v38;
  if (!*&v118[16])
  {
    v104 = 0;
    goto LABEL_23;
  }

  v40 = *(v2 + 96);
  v117 = *(v2 + 80);
  *v118 = v40;
  *&v118[9] = *(v2 + 105);
  sub_199AC2488(&v115);
  result = *&v116[1];
  if (!*&v116[1])
  {
    __break(1u);
    goto LABEL_32;
  }

  v104 = sub_199DFA4CC();
LABEL_23:
  v41 = v84;
  sub_199AC2898(v84);
  v42 = sub_199DF884C();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v101 = sub_199DFA42C();
  v43 = *(v2 + 96);
  v115 = *(v2 + 80);
  v116[0] = v43;
  *(v116 + 9) = *(v2 + 105);
  sub_199AC2488(&v110);
  v99 = v110;
  LODWORD(v100) = v111;

  v44 = *(v2 + 96);
  v113 = *(v2 + 80);
  v114[0] = v44;
  *(v114 + 9) = *(v2 + 105);
  sub_199AC2488(&v109[1]);
  v97 = *&v109[17];
  LODWORD(v98) = v109[25];

  v45 = sub_199AC1F14(*v2, *(v2 + 8), 0xEE003E746E6F463CLL, j_j__swift_release);
  v105 = v35;
  if (!v45)
  {
    v45 = sub_199DF920C();
  }

  v46 = sub_199AC4408(v45);

  sub_199AC26C0(*(v2 + 128), *(v2 + 136), v109);
  if (v109[0])
  {
    if (v109[0] == 1)
    {
      v47 = 0xE500000000000000;
      v48 = 0x656E6F6870;
    }

    else
    {
      v47 = 0xEB00000000747865;
      v48 = 0x54746C7561666564;
    }
  }

  else
  {
    v47 = 0xE500000000000000;
    v48 = 0x6C69616D65;
  }

  v49 = [objc_opt_self() mainBundle];
  v50 = [v49 bundleURL];

  v51 = v87;
  sub_199DF719C();

  v52 = sub_199DF71AC();
  v54 = v53;
  (*(v88 + 8))(v51, v89);
  v55 = sub_199AC22BC(*(v2 + 64), *(v2 + 72));
  v56 = type metadata accessor for ContactsButtonSlotTraits();
  v57 = objc_allocWithZone(v56);
  v58 = &v57[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath];
  *v58 = v52;
  v58[1] = v54;
  v59 = v85;
  *&v57[OBJC_IVAR___ContactsButtonSlotTraits_bgColor] = v85;
  v60 = v106;
  *&v57[OBJC_IVAR___ContactsButtonSlotTraits_fgColor] = v106;
  v61 = v104;
  *&v57[OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor] = v104;
  v62 = &v57[OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar];
  *v62 = v99;
  v62[8] = v100;
  v63 = &v57[OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar];
  *v63 = v97;
  v63[8] = v98;
  v64 = &v57[OBJC_IVAR___ContactsButtonSlotTraits_captionTextField];
  *v64 = v48;
  v64[1] = v47;
  *&v57[OBJC_IVAR___ContactsButtonSlotTraits_font] = v46;
  *&v57[OBJC_IVAR___ContactsButtonSlotTraits_displayScale] = v55;
  v65 = v101;
  *&v57[OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory] = v101;
  v66 = v86;
  *&v57[OBJC_IVAR___ContactsButtonSlotTraits_tintColor] = v86;
  v108.receiver = v57;
  v108.super_class = v56;
  v101 = v65;
  v100 = v66;
  v99 = v61;
  v98 = v60;
  v97 = v59;
  v67 = objc_msgSendSuper2(&v108, sel_init);
  v96 = v67;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D58, &qword_199E39608);
  v104 = &v83;
  MEMORY[0x1EEE9AC00](v106);
  v69 = &v83 - v68;
  *v69 = sub_199DF8D4C();
  *(v69 + 1) = 0;
  v69[16] = 1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D60, &qword_199E39610);
  sub_199AC10FC(v67, v2, &v69[*(v70 + 44)]);
  v71 = v93;
  v95 = type metadata accessor for ContactAccessButton;
  sub_199AC5FEC(v2, v93, type metadata accessor for ContactAccessButton);
  v72 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v73 = swift_allocObject();
  sub_199AC4644(v71, v73 + v72);
  v74 = &v69[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D68, &qword_199E39618) + 36)];
  *v74 = 0;
  *(v74 + 1) = 0;
  *(v74 + 2) = sub_199AC46A8;
  *(v74 + 3) = v73;
  v75 = v107;
  v76 = *(v2 + *(v107 + 76));
  sub_199AC5FEC(v2, v71, type metadata accessor for ContactAccessButton);
  v77 = swift_allocObject();
  sub_199AC4644(v71, v77 + v72);
  v78 = v106;
  *&v69[*(v106 + 13)] = v76;
  v79 = &v69[*(v78 + 14)];
  *v79 = sub_199AC4708;
  v79[1] = v77;
  v80 = v2 + *(v75 + 60);
  LOBYTE(v78) = *v80;
  v81 = *(v80 + 8);
  v109[1] = v78;
  *&v109[9] = v81;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF986C();
  LODWORD(v107) = v112;
  sub_199AC5FEC(v2, v71, v95);
  v82 = swift_allocObject();
  sub_199AC4644(v71, v82 + v72);
  type metadata accessor for LimitedLibraryPickerHostView(0);
  sub_199AC47E8();
  sub_199AC616C(&qword_1EAF73D30, type metadata accessor for LimitedLibraryPickerHostView, &protocol conformance descriptor for LimitedLibraryPickerHostView);
  sub_199DF95DC();

  return sub_199A79A04(v69, &qword_1EAF72D58, &qword_199E39608);
}

uint64_t sub_199AC10FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a1;
  v62 = a3;
  v4 = sub_199DF72BC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_199DF9F4C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RepresentableSlotView(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EB8, &qword_199E398E8);
  MEMORY[0x1EEE9AC00](v54);
  v13 = &v48 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EC0, &qword_199E398F0);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v48 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EC8, &qword_199E398F8);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v48 - v15;
  v16 = type metadata accessor for ContactAccessButton(0);
  v17 = (a2 + v16[14]);
  v18 = v17[1];
  v52 = *v17;
  v63 = *(a2 + v16[18]);
  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EB0, &qword_199E398E0);
  sub_199DF984C();
  v51 = v65;
  v19 = (a2 + v16[15]);
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v65) = v20;
  v66 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF986C();
  v49 = *(&v63 + 1);
  v50 = v63;
  v22 = *(a2 + v16[16]);
  v23 = *(a2 + v16[17]);
  v24 = v64;
  v25 = (a2 + v16[21]);
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v9 + 52);
  sub_199DF81AC();
  sub_199DF81AC();
  sub_199A9A57C(v26, v27);
  if (qword_1EAF71EF8 != -1)
  {
    swift_once();
  }

  v29 = sub_199DF804C();
  v30 = __swift_project_value_buffer(v29, qword_1EAF87058);
  (*(*(v29 - 8) + 16))(&v11[v28], v30, v29);
  *(v11 + 4) = v22;
  *(v11 + 5) = v23;
  *(v11 + 2) = v52;
  *(v11 + 3) = v18;
  v31 = v49;
  *(v11 + 6) = v50;
  *(v11 + 7) = v31;
  v11[64] = v24;
  *(v11 + 9) = v26;
  *(v11 + 10) = v27;
  v32 = v56;
  v33 = v51;
  *v11 = v56;
  *(v11 + 1) = v33;
  sub_199AC5FEC(v11, v13, type metadata accessor for RepresentableSlotView);
  v34 = v54;
  *&v13[*(v54 + 36)] = 256;
  v35 = v32;
  sub_199AC6054(v11);
  v36 = sub_199DF8FFC();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v48 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8FEC();
  v40 = sub_199AC60B0();
  v41 = v53;
  sub_199DF956C();
  (*(v37 + 8))(v39, v36);
  sub_199A79A04(v13, &qword_1EAF72EB8, &qword_199E398E8);
  *&v63 = v34;
  *(&v63 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v42 = v59;
  v43 = v57;
  sub_199DF959C();
  (*(v55 + 8))(v41, v43);
  sub_199DF9EEC();
  v44 = sub_199DF9F5C();
  v45 = [objc_opt_self() bundleWithIdentifier_];

  sub_199DF72AC();
  *&v63 = sub_199DF9FAC();
  *(&v63 + 1) = v46;
  sub_199A9C458();
  sub_199DF887C();

  return sub_199A79A04(v42, &qword_1EAF72EC8, &qword_199E398F8);
}

uint64_t sub_199AC1754()
{
  v0 = sub_199DF823C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E6982AE8], v0, v2);
  sub_199AC5C64();
  sub_199DF80FC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_199AC184C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() currentDevice];
  [v2 orientation];

  type metadata accessor for ContactAccessButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EB0, &qword_199E398E0);
  return sub_199DF985C();
}

uint64_t sub_199AC18F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8, &qword_199E3BB70);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ContactAccessButton(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = (a1 + *(v12 + 64));
  v14 = v13[1];
  v30 = *v13;
  v15 = *(a1 + 128);
  v16 = *(a1 + 136);
  sub_199DF81AC();
  sub_199AC26C0(v15, v16, &v36);
  if (v36)
  {
    if (v36 == 1)
    {
      v29 = 0xE500000000000000;
      v17 = 0x656E6F6870;
    }

    else
    {
      v29 = 0xEB00000000747865;
      v17 = 0x54746C7561666564;
    }
  }

  else
  {
    v29 = 0xE500000000000000;
    v17 = 0x6C69616D65;
  }

  sub_199AC5FEC(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactAccessButton);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_199AC4644(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_199DF983C();
  v20 = v35;
  *a2 = v34;
  *(a2 + 16) = v20;
  v21 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v22 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_199AAD408(v8, v5, &qword_1EAF72EA8, &qword_199E3BB70);
  sub_199DF983C();
  result = sub_199A79A04(v8, &qword_1EAF72EA8, &qword_199E3BB70);
  v24 = (a2 + v21[6]);
  v25 = v29;
  *v24 = v30;
  v24[1] = v14;
  v26 = (a2 + v21[7]);
  *v26 = v17;
  v26[1] = v25;
  *(a2 + v21[8]) = 0;
  v27 = (a2 + v21[9]);
  *v27 = sub_199AC5F7C;
  v27[1] = v19;
  return result;
}

uint64_t sub_199AC1C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAccessButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  result = sub_199DF985C();
  v6 = a2 + *(v4 + 84);
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);

    v7(a1);
    return sub_199A9A5FC(v7, v8);
  }

  return result;
}

uint64_t View.contactAccessButtonStyle(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_199DF947C();
}

void *sub_199AC1D60@<X0>(uint64_t a1@<X8>)
{
  sub_199AC6214();
  result = sub_199DF8C9C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_199AC1DD0(uint64_t *a1)
{
  sub_199AC6214();

  return sub_199DF8CAC();
}

uint64_t View.contactAccessButtonCaption(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_199DF947C();
}

void *sub_199AC1F14(uint64_t a1, char a2, unint64_t a3, void (*a4)(uint64_t, void))
{
  v8 = sub_199DF8C6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v12 = sub_199DFA32C();
    v13 = sub_199DF912C();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_199A9BE90(0x6C616E6F6974704FLL, a3, &v18);
      _os_log_impl(&dword_199A75000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
      MEMORY[0x19A8FA1A0](v14, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    a4(a1, 0);
    (*(v9 + 8))(v11, v8);
    return v18;
  }

  return a1;
}

void *sub_199AC20F0(uint64_t a1, char a2)
{
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_199DFA32C();
    v9 = sub_199DF912C();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_199A9BE90(0xD000000000000017, 0x8000000199E45BE0, &v14);
      _os_log_impl(&dword_199A75000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
      MEMORY[0x19A8FA1A0](v10, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    j__swift_release(a1);
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

double sub_199AC22BC(uint64_t a1, char a2)
{
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v9 = sub_199DFA32C();
  v10 = sub_199DF912C();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = *&v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_199A9BE90(0x74616F6C464743, 0xE700000000000000, &v14);
    _os_log_impl(&dword_199A75000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x19A8FA1A0](v12, -1, -1);
    MEMORY[0x19A8FA1A0](v11, -1, -1);
  }

  sub_199DF8C5C();
  swift_getAtKeyPath();
  sub_199A91E28(a1, 0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_199AC2488@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_199DF8C6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40) == 1)
  {
    v7 = *(v1 + 32);
    v8 = *(v1 + 24);
    v9 = *(v1 + 16);
    v10 = *(v1 + 8);
    *a1 = *v1;
    *(a1 + 8) = v10 & 1;
    *(a1 + 16) = v9;
    *(a1 + 24) = v8 & 1;
    *(a1 + 32) = v7;
    return sub_199AAD408(v1, v16, &qword_1EAF72EE0, &unk_199E39900);
  }

  else
  {
    sub_199AAD408(v1, v16, &qword_1EAF72EE0, &unk_199E39900);
    v12 = sub_199DFA32C();
    v13 = sub_199DF912C();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_199A9BE90(0x656C797453, 0xE500000000000000, v16);
      _os_log_impl(&dword_199A75000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
      MEMORY[0x19A8FA1A0](v14, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    sub_199A79A04(v1, &qword_1EAF72EE0, &unk_199E39900);
    return (*(v4 + 8))(v6, v3);
  }
}

void sub_199AC26C0(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_199DF8C6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    sub_199AC61B4(a1, 0);
    v10 = sub_199DFA32C();
    v11 = sub_199DF912C();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_199A9BE90(0x6E6F6974706143, 0xE700000000000000, &v15);
      _os_log_impl(&dword_199A75000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x19A8FA1A0](v13, -1, -1);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    sub_199A91E28(a1, 0);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_199AC2898@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30, &qword_199E39598);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_199AAD408(v2, &v17 - v9, &qword_1EAF72D30, &qword_199E39598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_199DF884C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_199DFA32C();
    v14 = sub_199DF912C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_199A9BE90(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&dword_199A75000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x19A8FA1A0](v16, -1, -1);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_199AC2B24@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D38, &unk_199E395D0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_199AAD408(v2, &v17 - v9, &qword_1EAF72D38, &unk_199E395D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_199DF857C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_199DFA32C();
    v14 = sub_199DF912C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_199A9BE90(0x686353726F6C6F43, 0xEB00000000656D65, &v18);
      _os_log_impl(&dword_199A75000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x19A8FA1A0](v16, -1, -1);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_199AC2DAC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D40, &qword_199E395F8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_199AAD408(v2, &v16 - v9, &qword_1EAF72D40, &qword_199E395F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v10, v4);
  }

  v12 = sub_199DFA32C();
  v13 = sub_199DF912C();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_199A9BE90(0xD000000000000011, 0x8000000199E45BC0, &v17);
    _os_log_impl(&dword_199A75000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x19A8FA1A0](v15, -1, -1);
    MEMORY[0x19A8FA1A0](v14, -1, -1);
  }

  sub_199DF8C5C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_199AC3010@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E98, &qword_199E39A00);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_199AAD408(v2, &v16 - v9, &qword_1EAF72E98, &qword_199E39A00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_199AB7794(v10, a1, &qword_1EAF72EA0, &unk_199E398D0);
  }

  v12 = sub_199DFA32C();
  v13 = sub_199DF912C();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_199A9BE90(0xD000000000000020, 0x8000000199E45B70, &v17);
    _os_log_impl(&dword_199A75000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x19A8FA1A0](v15, -1, -1);
    MEMORY[0x19A8FA1A0](v14, -1, -1);
  }

  sub_199DF8C5C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_199AC3274@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_199AAD408(v2, &v17 - v9, &qword_1EAF73090, &qword_199E39CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_199DF867C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_199DFA32C();
    v14 = sub_199DF912C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_199A9BE90(0x417373696D736944, 0xED00006E6F697463, &v18);
      _os_log_impl(&dword_199A75000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x19A8FA1A0](v16, -1, -1);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_199AC3500@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72318, &qword_199E371D0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_199AAD408(v2, &v16 - v9, &qword_1EAF72318, &qword_199E371D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_199AB7794(v10, a1, &qword_1EAF740B0, qword_199E3A9B0);
  }

  v12 = sub_199DFA32C();
  v13 = sub_199DF912C();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_199A9BE90(0xD000000000000019, 0x8000000199E45B30, &v17);
    _os_log_impl(&dword_199A75000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x19A8FA1A0](v15, -1, -1);
    MEMORY[0x19A8FA1A0](v14, -1, -1);
  }

  sub_199DF8C5C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void *sub_199AC3764(uint64_t a1, char a2)
{
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_199DFA32C();
    v9 = sub_199DF912C();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_199A9BE90(0xD000000000000022, 0x8000000199E45C00, &v14);
      _os_log_impl(&dword_199A75000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
      MEMORY[0x19A8FA1A0](v10, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

void *sub_199AC392C(void *a1, char a2)
{
  v16 = a1;
  v3 = sub_199DF8C6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = v16;

    return v7;
  }

  else
  {

    v9 = sub_199DFA32C();
    v10 = sub_199DF912C();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      sub_199A7A02C(0, &qword_1EAF72E88, 0x1E695D628);
      v13 = sub_199DFAB3C();
      v15 = sub_199A9BE90(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_199A75000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    sub_199A92200(v16, 0);
    (*(v4 + 8))(v6, v3);
    return v17;
  }
}

uint64_t sub_199AC3B48@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060, &qword_199E41310);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_199AAD408(v2, &v17 - v9, &unk_1EAF75060, &qword_199E41310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_199DF886C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_199DFA32C();
    v14 = sub_199DF912C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_199A9BE90(0x694474756F79614CLL, 0xEF6E6F6974636572, &v18);
      _os_log_impl(&dword_199A75000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x19A8FA1A0](v16, -1, -1);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void *sub_199AC3DD4(void *a1, char a2)
{
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a1;
  }

  else
  {

    v9 = sub_199DFA32C();
    v10 = sub_199DF912C();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E80, &unk_199E398B0);
      v13 = sub_199DFAB3C();
      v15 = sub_199A9BE90(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_199A75000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    sub_199A92200(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v18;
  }

  return a1;
}

uint64_t sub_199AC3FC4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E90, &unk_199E398C0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_199AAD408(v2, &v17 - v9, &qword_1EAF72E90, &unk_199E398C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_199DF774C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_199DFA32C();
    v14 = sub_199DF912C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_199A9BE90(0xD000000000000011, 0x8000000199E45B50, &v18);
      _os_log_impl(&dword_199A75000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x19A8FA1A0](v16, -1, -1);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t type metadata accessor for ContactAccessButton(uint64_t a1)
{
  result = qword_1EAF72D98;
  if (!qword_1EAF72D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AC4338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

id sub_199AC4408(uint64_t a1)
{
  sub_199DF91DC();
  v1 = sub_199DF91FC();

  if (v1)
  {
    v2 = MEMORY[0x1E69DDD58];
  }

  else
  {
    sub_199DF921C();
    v3 = sub_199DF91FC();

    if (v3)
    {
      v2 = MEMORY[0x1E69DDDB8];
    }

    else
    {
      sub_199DF929C();
      v4 = sub_199DF91FC();

      if (v4)
      {
        v2 = MEMORY[0x1E69DDDC0];
      }

      else
      {
        sub_199DF92AC();
        v5 = sub_199DF91FC();

        if (v5)
        {
          v2 = MEMORY[0x1E69DDDC8];
        }

        else
        {
          sub_199DF930C();
          v6 = sub_199DF91FC();

          if (v6)
          {
            v2 = MEMORY[0x1E69DDD40];
          }

          else
          {
            sub_199DF91EC();
            v7 = sub_199DF91FC();

            if (v7)
            {
              v2 = MEMORY[0x1E69DDD80];
            }

            else
            {
              sub_199DF92CC();
              v8 = sub_199DF91FC();

              if (v8)
              {
                v2 = MEMORY[0x1E69DDD00];
              }

              else
              {
                sub_199DF92DC();
                v9 = sub_199DF91FC();

                if (v9)
                {
                  v2 = MEMORY[0x1E69DDD08];
                }

                else
                {
                  sub_199DF92EC();
                  v10 = sub_199DF91FC();

                  if (v10)
                  {
                    v2 = MEMORY[0x1E69DDD10];
                  }

                  else
                  {
                    sub_199DF92FC();
                    v11 = sub_199DF91FC();

                    if (v11)
                    {
                      v2 = MEMORY[0x1E69DDD28];
                    }

                    else
                    {
                      sub_199DF920C();
                      sub_199DF91FC();

                      v2 = MEMORY[0x1E69DDCF8];
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

  v12 = [objc_opt_self() preferredFontForTextStyle_];

  return v12;
}

uint64_t sub_199AC4644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAccessButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AC46A8()
{
  type metadata accessor for ContactAccessButton(0);

  return sub_199AC1754();
}

uint64_t sub_199AC4708(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactAccessButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199AC184C(a1, v4);
}

uint64_t sub_199AC4778@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContactAccessButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199AC18F0(v4, a1);
}

unint64_t sub_199AC47E8()
{
  result = qword_1EAF72D70;
  if (!qword_1EAF72D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72D58, &qword_199E39608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72D70);
  }

  return result;
}

unint64_t sub_199AC4844()
{
  result = qword_1EAF72D78;
  if (!qword_1EAF72D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72D78);
  }

  return result;
}

void sub_199AC48DC(uint64_t a1)
{
  sub_199AC4E80(319, &qword_1EAF72DA8, &qword_1EAF72DB0, &qword_199E39758, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_199AC4E80(319, &qword_1EAF72DB8, &qword_1EAF72DC0, &qword_199E39760, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_199AC4CD0(319, &qword_1EAF71D80, MEMORY[0x1E697E0B8], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_199AC4E80(319, &qword_1EAF72DC8, &qword_1EAF72DD0, &qword_199E39768, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_199AC4CD0(319, &qword_1EAF713F8, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_199AC4CD0(319, &qword_1EAF72DD8, &type metadata for ContactAccessButton.Style, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_199AC4CD0(319, &qword_1EAF72DE0, &type metadata for ContactAccessButton.Caption, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_199AC4D78(319, &qword_1EAF713F0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_199AC4D78(319, &qword_1EAF72DE8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_199AC4D78(319, &qword_1EAF72DF0, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
                    if (v10 <= 0x3F)
                    {
                      sub_199AC4CD0(319, &qword_1EAF711C0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                      if (v11 <= 0x3F)
                      {
                        sub_199AC4D20();
                        if (v12 <= 0x3F)
                        {
                          sub_199AC4D78(319, &qword_1EAF72E00, type metadata accessor for UIDeviceOrientation, MEMORY[0x1E6981790]);
                          if (v13 <= 0x3F)
                          {
                            sub_199AC4DDC(319);
                            if (v14 <= 0x3F)
                            {
                              sub_199AC4E80(319, &qword_1EAF73110, &unk_1EAF74CA0, &qword_199E39770, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
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
      }
    }
  }
}

void sub_199AC4CD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_199AC4D20()
{
  if (!qword_1EAF72DF8)
  {
    v0 = sub_199DFA27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF72DF8);
    }
  }
}

void sub_199AC4D78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_199AC4DDC(uint64_t a1)
{
  if (!qword_1EAF72E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72D28, &qword_199E39420);
    sub_199AA0B90(&qword_1EAF72D48, &qword_1EAF72D28, &qword_199E39420, MEMORY[0x1E695BD10]);
    v1 = sub_199DF838C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF72E08);
    }
  }
}

void sub_199AC4E80(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for ContactAccessButton.Caption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactAccessButton.Caption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_199AC5048(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_199AC50A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy08ContactsB019ContactAccessButtonV5StyleVGGAaBHPxAaBHD1__AlA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_199DF889C();
  sub_199AA0B90(a4, a2, a3, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

unint64_t sub_199AC51DC()
{
  result = qword_1EAF72E30;
  if (!qword_1EAF72E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72E30);
  }

  return result;
}

uint64_t sub_199AC5230()
{
  v0 = sub_199DF72BC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_199DF9F4C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_199DF9EEC();
  v2 = sub_199DF9F5C();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  sub_199DF72AC();
  sub_199DF9FAC();
  sub_199A9C458();
  return sub_199DF93CC();
}

uint64_t sub_199AC53B0()
{
  v0 = sub_199DF72BC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_199DF9F4C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_199DF9F2C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_199DF9F1C();
  sub_199DF9F0C();
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = [v4 infoDictionary];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = sub_199DF9E9C();

  result = *MEMORY[0x1E695E4F8];
  if (*MEMORY[0x1E695E4F8])
  {
    v8 = sub_199DF9F8C();
    if (*(v6 + 16))
    {
      v10 = sub_199AEF9E8(v8, v9);
      v12 = v11;

      if (v12)
      {
        sub_199A9DA04(*(v6 + 56) + 32 * v10, v16);

        swift_dynamicCast();
LABEL_8:
        sub_199DF9EFC();

        sub_199DF9F0C();
        sub_199DF9F3C();
        v13 = sub_199DF9F5C();
        v14 = [v3 bundleWithIdentifier_];

        sub_199DF72AC();
        v16[0] = sub_199DF9FAC();
        v16[1] = v15;
        sub_199A9C458();
        return sub_199DF93CC();
      }
    }

    else
    {
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_199AC56DC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:25.0 scale:{25.0, v2}];
  v4 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v5 = sub_199DF9F5C();
  v6 = [v4 initWithBundleIdentifier_];

  result = [v6 prepareImageForDescriptor_];
  if (result)
  {
    v8 = result;
    result = [result CGImage];
    if (result)
    {
      v9 = result;
      [v8 scale];
      v11 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v9 scale:0 orientation:v10];

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_199AC5850()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E38, &qword_199E39880);
  sub_199DF82EC();
  *(swift_allocObject() + 16) = xmmword_199E39320;
  if (qword_1EAF71E20 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40, &qword_199E39888);
  v1 = __swift_project_value_buffer(v0, qword_1EAF86F58);
  v2 = *(v0 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = *(v2 + 16);
  v5(&v10 - v3, v4);
  sub_199DF830C();
  if (qword_1EAF71E28 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EAF86F70);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v5(&v10 - v3, v7);
  sub_199DF830C();
  sub_199DF81AC();

  v8 = sub_199DF81AC();

  return v8;
}

unint64_t sub_199AC5B28()
{
  result = qword_1EAF72E60;
  if (!qword_1EAF72E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72E58, &unk_199E398A0);
    sub_199AA0B90(&qword_1EAF71508, &qword_1EAF72E50, &qword_199E39898, MEMORY[0x1E6968DA0]);
    sub_199AC5BE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72E60);
  }

  return result;
}

unint64_t sub_199AC5BE0()
{
  result = qword_1EAF72E68;
  if (!qword_1EAF72E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72E48, &qword_199E39890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72E68);
  }

  return result;
}

unint64_t sub_199AC5C64()
{
  result = qword_1EAF72E78;
  if (!qword_1EAF72E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72E78);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for ContactAccessButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  j__swift_release(*(v0 + v4));
  j__swift_release(*(v0 + v4 + 16));

  j__swift_release(*(v0 + v4 + 48));
  sub_199A91E28(*(v5 + 64), *(v5 + 72));
  sub_199AC4638(*(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  sub_199A91E28(*(v5 + 128), *(v5 + 136));
  v6 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30, &qword_199E39598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF884C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D38, &unk_199E395D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_199DF857C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D40, &qword_199E395F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_199DF8C6C();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  if (*(v5 + v1[21]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_199AC5F7C(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactAccessButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199AC1C04(a1, v4);
}

uint64_t sub_199AC5FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199AC6054(uint64_t a1)
{
  v2 = type metadata accessor for RepresentableSlotView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_199AC60B0()
{
  result = qword_1EAF72ED0;
  if (!qword_1EAF72ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72EB8, &qword_199E398E8);
    sub_199AC616C(&qword_1EAF72ED8, type metadata accessor for RepresentableSlotView, &unk_199E3E6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72ED0);
  }

  return result;
}

uint64_t sub_199AC616C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_199AC61B4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_199AC61C0()
{
  result = qword_1EAF72EE8;
  if (!qword_1EAF72EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72EE8);
  }

  return result;
}

unint64_t sub_199AC6214()
{
  result = qword_1EAF72EF0;
  if (!qword_1EAF72EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72EF0);
  }

  return result;
}

void sub_199AC6430(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = a1;
  v6 = [v7 *a4];
  [v6 setHidden_];
}

uint64_t sub_199AC64A0(void *a1)
{
  if ([a1 _splitViewControllerContext] || objc_msgSend(v1, sel_mode) != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_199E37DF0;
  v3 = [v1 cancelButton];
  result = v2;
  *(v2 + 32) = v3;
  return result;
}

uint64_t sub_199AC655C(void *a1)
{
  v2 = [a1 _splitViewControllerContext];
  v3 = [v1 mode];
  if (v2)
  {
    if (v3 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_199E38F10;
      *(v4 + 32) = [v1 addContactButton];
      *(v4 + 40) = [objc_opt_self() flexibleSpaceItem];
      *(v4 + 48) = [v1 doneButton];
      v5 = (v4 + 56);
      v6 = &selRef_cancelButton;
      goto LABEL_12;
    }

    if (!v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_199E39130;
      *(v4 + 32) = [v1 addContactButton];
      *(v4 + 40) = [objc_opt_self() flexibleSpaceItem];
      v5 = (v4 + 48);
LABEL_8:
      v6 = &selRef_editButton;
LABEL_12:
      *v5 = [v1 *v6];
      return v4;
    }
  }

  else
  {
    if (v3 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_199E37DF0;
      v5 = (v4 + 32);
      v6 = &selRef_doneButton;
      goto LABEL_12;
    }

    if (!v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_199E37DF0;
      v5 = (v4 + 32);
      goto LABEL_8;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_199AC6788(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  a4(v6);

  sub_199A7A02C(0, &unk_1EAF710B0, 0x1E69DC708);
  v8 = sub_199DFA0BC();

  return v8;
}

void __swiftcall CNContactViewSharedNavigationBar.init()(CNContactViewSharedNavigationBar *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id CNContactViewSharedNavigationBar.init()()
{
  v1 = OBJC_IVAR___CNContactViewSharedNavigationBar_cancelButton;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:0 action:0];
  v2 = OBJC_IVAR___CNContactViewSharedNavigationBar_editButton;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:0 action:0];
  v3 = OBJC_IVAR___CNContactViewSharedNavigationBar_doneButton;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:0 action:0];
  v4 = OBJC_IVAR___CNContactViewSharedNavigationBar_addContactButton;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 target:0 action:0];
  *&v0[OBJC_IVAR___CNContactViewSharedNavigationBar_mode] = 0;
  v6.receiver = v0;
  v6.super_class = CNContactViewSharedNavigationBar;
  return objc_msgSendSuper2(&v6, sel_init);
}

void ContactPosterScrollGeometry.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void ContactPosterScrollGeometry.init(contentOffset:contentInsets:containerSize:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
  a1[7] = a9;
}

void ContactPosterView.init(contact:content:)(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *(a5 + *(type metadata accessor for ContactPosterView(0, a3, a4, a3) + 36)) = a1;
  v7 = a1;
  a2();
}

uint64_t ContactPosterView.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sub_199DF776C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19[-v12];
  v14 = *(v2 + *(a1 + 36));
  v20 = v5;
  v21 = v6;
  v22 = v2;
  v15 = v14;
  sub_199DF775C();
  swift_getWitnessTable();
  v16 = *(v8 + 16);
  v16(v13, v10, v7);
  v17 = *(v8 + 8);
  v17(v10, v7);
  v16(a2, v13, v7);
  return (v17)(v13, v7);
}

uint64_t sub_199AC6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v6);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t ContactPosterBackgroundView.init(contact:scrollGeometry:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v16[2] = a2[2];
  v16[3] = v6;
  v16[4] = a2[4];
  v7 = a2[1];
  v16[0] = *a2;
  v16[1] = v7;
  v8 = *(type metadata accessor for ContactPosterBackgroundView(0) + 24);
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E98, &qword_199E39A00);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  v9 = *a2;
  *(a3 + 24) = a2[1];
  v10 = a2[3];
  *(a3 + 40) = a2[2];
  *(a3 + 56) = v10;
  *(a3 + 72) = a2[4];
  *(a3 + 8) = v9;
  v11 = swift_allocObject();
  v12 = a2[3];
  v11[3] = a2[2];
  v11[4] = v12;
  v11[5] = a2[4];
  v13 = a2[1];
  v11[1] = *a2;
  v11[2] = v13;
  sub_199AAD408(v16, &v15, &qword_1EAF72F28, &qword_199E39A08);
  sub_199DF7DFC();
  return sub_199DF850C();
}

uint64_t sub_199AC6F40@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v19 = a1[2];
  v20 = v4;
  v21 = a1[4];
  v5 = a1[1];
  v17 = *a1;
  v18 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72F28, &qword_199E39A08);
  MEMORY[0x19A8F7740](&v16);
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v15 = a1[4];
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  MEMORY[0x19A8F7740](&v10, v6);
  sub_199DF7DFC();
  swift_allocObject();
  result = sub_199DF7DDC();
  *a2 = result;
  return result;
}

uint64_t ContactPosterBackgroundView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ContactPosterBackgroundView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_199AC7F70(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_199AC7FD4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_199AC8038;
  a1[1] = v7;
  return result;
}

uint64_t sub_199AC7130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a1;
  v73 = a3;
  v67 = sub_199DF8F9C();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v55 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73008, &qword_199E39BA0) - 8;
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA0, &unk_199E398D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v54 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v65 = (&v54 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73010, &qword_199E39BA8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = &v54 - v13;
  v14 = type metadata accessor for ContactPosterBackgroundView(0);
  v61 = *(v14 - 8);
  v60 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_199DF7CFC();
  v16 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73018, &qword_199E39BB0);
  KeyPath = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v54 - v19;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73020, &qword_199E39BB8);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v75 = &v54 - v20;
  v21 = *a2;
  sub_199DF7CEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72FC8, &unk_199E39B60);
  sub_199DF851C();
  v22 = sub_199DF7DFC();
  v23 = sub_199AC8AA8(&qword_1EAF73028, MEMORY[0x1E69969E0], MEMORY[0x1E69969D8]);
  v24 = sub_199AC8AA8(&qword_1EAF73030, MEMORY[0x1E6996A00], MEMORY[0x1E69969F8]);
  v25 = v58;
  sub_199DF946C();
  v26 = v63;

  (*(v16 + 8))(v18, v25);
  v27 = *(a2 + 24);
  v28 = *(a2 + 56);
  v79 = *(a2 + 40);
  v80 = v28;
  v81 = *(a2 + 72);
  v29 = *(a2 + 8);
  v78 = v27;
  v77 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72F28, &qword_199E39A08);
  MEMORY[0x19A8F7740](v82, v30);
  v77 = v82[0];
  v78 = v82[1];
  v79 = v82[2];
  v80 = v82[3];
  v31 = v59;
  sub_199AC7F70(a2, v59);
  v32 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v33 = swift_allocObject();
  sub_199AC7FD4(v31, v33 + v32);
  v76[0] = v25;
  v76[1] = v22;
  v34 = v67;
  v76[2] = v23;
  v35 = v66;
  v76[3] = v24;
  swift_getOpaqueTypeConformance2();
  sub_199AC89E4();
  v36 = v62;
  v37 = v57;
  sub_199DF962C();

  (*(KeyPath + 8))(v37, v36);
  KeyPath = swift_getKeyPath();
  v38 = v65;
  v39 = v74;
  sub_199AC3010(v65);
  (*(v35 + 104))(v39, *MEMORY[0x1E697FF38], v34);
  (*(v35 + 56))(v39, 0, 1, v34);
  v40 = *(v68 + 56);
  sub_199AAD408(v38, v26, &qword_1EAF72EA0, &unk_199E398D0);
  sub_199AAD408(v39, v26 + v40, &qword_1EAF72EA0, &unk_199E398D0);
  v41 = *(v35 + 48);
  if (v41(v26, 1, v34) == 1)
  {
    sub_199A79A04(v39, &qword_1EAF72EA0, &unk_199E398D0);
    sub_199A79A04(v38, &qword_1EAF72EA0, &unk_199E398D0);
    if (v41(v26 + v40, 1, v34) == 1)
    {
      sub_199A79A04(v26, &qword_1EAF72EA0, &unk_199E398D0);
LABEL_8:
      sub_199DF868C();
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v42 = v56;
  sub_199AAD408(v26, v56, &qword_1EAF72EA0, &unk_199E398D0);
  if (v41(v26 + v40, 1, v34) == 1)
  {
    sub_199A79A04(v74, &qword_1EAF72EA0, &unk_199E398D0);
    sub_199A79A04(v38, &qword_1EAF72EA0, &unk_199E398D0);
    (*(v35 + 8))(v42, v34);
LABEL_6:
    sub_199A79A04(v26, &qword_1EAF73008, &qword_199E39BA0);
    goto LABEL_9;
  }

  v43 = v26 + v40;
  v44 = v55;
  (*(v35 + 32))(v55, v43, v34);
  sub_199AC8AA8(&unk_1EAF73050, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v45 = sub_199DF9EDC();
  v46 = *(v35 + 8);
  v46(v44, v34);
  sub_199A79A04(v74, &qword_1EAF72EA0, &unk_199E398D0);
  sub_199A79A04(v38, &qword_1EAF72EA0, &unk_199E398D0);
  v46(v42, v34);
  sub_199A79A04(v26, &qword_1EAF72EA0, &unk_199E398D0);
  if (v45)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_199DF869C();
  sub_199DF869C();
  sub_199DF7B6C();
  v47 = v71;
  sub_199DF7A5C();
  v48 = sub_199DF7A7C();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73040, &qword_199E39BF0);
  v50 = v73;
  v51 = (v73 + *(v49 + 36));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73048, &qword_199E39BF8);
  sub_199AC8A38(v47, v51 + *(v52 + 28));
  *v51 = KeyPath;
  return (*(v69 + 32))(v50, v75, v70);
}

uint64_t sub_199AC7C1C(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ContactPosterBackgroundView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72FC8, &unk_199E39B60);
  sub_199DF851C();
  sub_199DF7DEC();

  sub_199DF851C();
  sub_199DF7DCC();
}

uint64_t sub_199AC7CE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_199AC7F70(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_199AC7FD4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_199AC8AF4;
  a2[1] = v7;
  return result;
}

uint64_t sub_199AC7DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_199AAD408(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

BOOL _s10ContactsUI27ContactPosterScrollGeometryV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = a1[6];
  v4 = a1[7];
  v7 = a2[6];
  v6 = a2[7];
  if ((sub_199DF84EC() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6)
  {
    return v5 == v7;
  }

  return 0;
}

uint64_t type metadata accessor for ContactPosterBackgroundView(uint64_t a1)
{
  result = qword_1EAF72FD0;
  if (!qword_1EAF72FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AC7F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPosterBackgroundView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AC7FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPosterBackgroundView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_199AC80B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_199AC80D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_199AC8124(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_199A7DDB0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_199AC81AC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_199AC82E8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_199AC84C4(uint64_t a1)
{
  sub_199A7DDB0();
  if (v1 <= 0x3F)
  {
    sub_199AC8578();
    if (v2 <= 0x3F)
    {
      sub_199AC85C8(319);
      if (v3 <= 0x3F)
      {
        sub_199AC862C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199AC8578()
{
  if (!qword_1EAF72FE0)
  {
    v0 = sub_199DF99BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF72FE0);
    }
  }
}

void sub_199AC85C8(uint64_t a1)
{
  if (!qword_1EAF72FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72EA0, &unk_199E398D0);
    v1 = sub_199DF859C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF72FE8);
    }
  }
}

void sub_199AC862C(uint64_t a1)
{
  if (!qword_1EAF72FF0)
  {
    sub_199DF7DFC();
    v1 = sub_199DF852C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF72FF0);
    }
  }
}

unint64_t sub_199AC8684()
{
  result = qword_1EAF72FF8;
  if (!qword_1EAF72FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73000, &qword_199E39B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72FF8);
  }

  return result;
}

uint64_t sub_199AC86E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContactPosterBackgroundView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_199AC7130(a1, v6, a2);
}

uint64_t objectdestroy_2Tm()
{
  v1 = type metadata accessor for ContactPosterBackgroundView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E98, &qword_199E39A00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF8F9C();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v5 + *(v1 + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72F30, &qword_199E39A10);
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF72F38, &qword_199E39A18);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199AC8964(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ContactPosterBackgroundView(0);

  return sub_199AC7C1C(a1, a2);
}

unint64_t sub_199AC89E4()
{
  result = qword_1EAF73038;
  if (!qword_1EAF73038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73038);
  }

  return result;
}

uint64_t sub_199AC8A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73010, &qword_199E39BA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AC8AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_199AC8AF8(uint64_t a1)
{
  sub_199AC90C0(a1, v25);
  if (!v26)
  {
    sub_199AC9058(v25);
    goto LABEL_27;
  }

  type metadata accessor for CNAvatarPosterPairFingerprint();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v13 = 0;
    return v13 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_sourceType);
  v3 = *&v24[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_sourceType];
  if (v2 != v3 && v2 != 2 && v3 != 2)
  {

    goto LABEL_27;
  }

  v6 = *(v1 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_avatarFingerprint);
  v7 = *&v24[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_avatarFingerprint];
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_24:
    v20 = sub_199DFA30C();
    v21 = CNUILogPosters();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      _os_log_impl(&dword_199A75000, v21, v20, "Returning early, avatar similar: %{BOOL}d", v22, 8u);
      MEMORY[0x19A8FA1A0](v22, -1, -1);
    }

    goto LABEL_27;
  }

  if (!v7)
  {
    goto LABEL_24;
  }

  sub_199A7A02C(0, &qword_1EAF71000, 0x1E69E58C0);
  v8 = v6;
  v9 = v7;
  v10 = sub_199DFA4EC();

  if ((v10 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  v11 = *(v1 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_posterFingerprint);
  v12 = *&v24[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_posterFingerprint];
  v13 = (v11 | v12) == 0;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    sub_199A7A02C(0, &qword_1EAF73088, off_1E74DE9F8);
    v15 = v12;
    v16 = v11;
    v13 = sub_199DFA4EC();
  }

  v17 = sub_199DFA30C();
  v18 = CNUILogPosters();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109376;
    *(v19 + 4) = 1;
    *(v19 + 8) = 1024;
    *(v19 + 10) = v13 & 1;
    _os_log_impl(&dword_199A75000, v18, v17, "Avatar similar: %{BOOL}d && is poster similar: %{BOOL}d", v19, 0xEu);
    MEMORY[0x19A8FA1A0](v19, -1, -1);
  }

  return v13 & 1;
}

uint64_t sub_199AC8E40()
{
  v1 = v0;
  sub_199DFAACC();
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_avatarFingerprint);
  sub_199DFAA9C();
  if (v2)
  {
    v3 = v2;
    sub_199DFA4FC();
  }

  v4 = *(v1 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_posterFingerprint);
  sub_199DFAA9C();
  if (v4)
  {
    v5 = v4;
    sub_199DFA4FC();
  }

  return sub_199DFAAAC();
}

id sub_199AC8F30(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CNAvatarPosterPairFingerprint();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_199AC8FD4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_199AC9058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73080, &qword_199E3E7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199AC90C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73080, &qword_199E3E7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ProtoContact.handle.getter()
{
  v1 = *v0;
  sub_199DF81AC();
  return v1;
}

uint64_t ProtoContact.handle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ProtoContact.givenName.getter()
{
  v1 = *(v0 + 16);
  sub_199DF81AC();
  return v1;
}

uint64_t ProtoContact.givenName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ProtoContact.familyName.getter()
{
  v1 = *(v0 + 32);
  sub_199DF81AC();
  return v1;
}

uint64_t ProtoContact.familyName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ProtoContact.contactIdentifier.getter()
{
  v1 = *(v0 + 48);
  sub_199DF81AC();
  return v1;
}

uint64_t ProtoContact.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void __swiftcall ProtoContact.init(handle:givenName:familyName:contactIdentifier:)(ContactsUI::ProtoContact *__return_ptr retstr, Swift::String handle, Swift::String_optional givenName, Swift::String_optional familyName, Swift::String_optional contactIdentifier)
{
  retstr->handle = handle;
  retstr->givenName = givenName;
  retstr->familyName = familyName;
  retstr->contactIdentifier = contactIdentifier;
}

BOOL ProtoContact.isGivenNameEmpty.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 1;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

BOOL ProtoContact.isFamilyNameEmpty.getter()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 1;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

uint64_t sub_199AC93C4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CommunicationLimitsRequestContextView(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_199ACDBD4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_199A9A57C(v4, v5);
}

uint64_t sub_199AC9458(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_199ACDB9C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for CommunicationLimitsRequestContextView(0) + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_199A9A57C(v3, v4);
  result = sub_199A9A5FC(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t CommunicationLimitsRequestContextView.completion.getter()
{
  v1 = (v0 + *(type metadata accessor for CommunicationLimitsRequestContextView(0) + 28));
  v2 = *v1;
  sub_199A9A57C(*v1, v1[1]);
  return v2;
}

uint64_t type metadata accessor for CommunicationLimitsRequestContextView(uint64_t a1)
{
  result = qword_1EAF730E0;
  if (!qword_1EAF730E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CommunicationLimitsRequestContextView.completion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CommunicationLimitsRequestContextView(0) + 28));
  result = sub_199A9A5FC(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CommunicationLimitsRequestContextView.init(handles:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v9 = a4 + v8[6];
  sub_199DF983C();
  *v9 = v23;
  *(v9 + 1) = v25;
  v10 = *(a1 + 16);
  if (v10)
  {
    v21 = a2;
    v22 = a3;
    v24 = MEMORY[0x1E69E7CC0];
    sub_199A9C600(0, v10, 0);
    v11 = v24;
    v12 = (a1 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = *(v24 + 16);
      v16 = *(v24 + 24);
      sub_199DF81AC();
      if (v15 >= v16 >> 1)
      {
        sub_199A9C600((v16 > 1), v15 + 1, 1);
      }

      *(v24 + 16) = v15 + 1;
      v17 = v24 + (v15 << 6);
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      *(v17 + 48) = 0u;
      *(v17 + 64) = 0u;
      *(v17 + 80) = 0u;
      v12 += 2;
      --v10;
    }

    while (v10);

    a2 = v21;
    a3 = v22;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v19 = (a4 + v8[7]);
  v20 = (a4 + v8[5]);
  *v20 = v11;
  v20[1] = 0;
  *v19 = a2;
  v19[1] = a3;
  return result;
}

void *CommunicationLimitsRequestContextView.init(contacts:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v9 = a4 + v8[6];
  result = sub_199DF983C();
  *v9 = v13;
  *(v9 + 1) = v14;
  v11 = (a4 + v8[7]);
  v12 = (a4 + v8[5]);
  *v12 = a1;
  v12[1] = 0;
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t CommunicationLimitsRequestContextView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73098, &qword_199E39CC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730A0, &qword_199E39CD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730A8, &qword_199E39CD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730B0, &qword_199E39CE0);
  sub_199AA0B90(&unk_1EAF730B8, &qword_1EAF730B0, &qword_199E39CE0, MEMORY[0x1EEE7C770]);
  sub_199A9C458();
  swift_getOpaqueTypeConformance2();
  sub_199AA0B90(&qword_1EAF730C8, &qword_1EAF730A8, &qword_199E39CD8, MEMORY[0x1EEE7BDD0]);
  swift_getOpaqueTypeConformance2();
  return sub_199DF88AC();
}

uint64_t sub_199AC99F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v25 = a2;
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF730A0, &qword_199E39CD0);
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF730B0, &qword_199E39CE0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731A0, &qword_199E39EB8);
  sub_199ACDC08();
  sub_199DF931C();
  sub_199DF9EEC();
  v14 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  v28 = v14;
  v29 = v16;
  v17 = sub_199AA0B90(&unk_1EAF730B8, &qword_1EAF730B0, &qword_199E39CE0, MEMORY[0x1EEE7C770]);
  v18 = sub_199A9C458();
  v19 = MEMORY[0x1E69E6158];
  sub_199DF950C();

  (*(v11 + 8))(v13, v10);
  v26 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF730A8, &qword_199E39CD8);
  v28 = v10;
  v29 = v19;
  v30 = v17;
  v31 = v18;
  swift_getOpaqueTypeConformance2();
  sub_199AA0B90(&qword_1EAF730C8, &qword_1EAF730A8, &qword_199E39CD8, MEMORY[0x1EEE7BDD0]);
  v20 = v24;
  sub_199DF960C();
  return (*(v7 + 8))(v9, v20);
}

uint64_t sub_199AC9D84(uint64_t a1)
{
  v2 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (a1 + *(v5 + 28));
  v8 = *v6;
  v7 = v6[1];
  v14 = v8;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
  sub_199DF984C();
  v9 = *(v13[1] + 16);

  v14 = 0;
  v15 = v9;
  swift_getKeyPath();
  sub_199ACDD54(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_199ACDDB8(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73200, &qword_199E3CDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731B8, &qword_199E39EC0);
  sub_199ACDECC();
  sub_199ACDC8C();
  return sub_199DF99EC();
}

uint64_t sub_199AC9F3C(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731C8, &qword_199E39EC8);
  sub_199AA0B90(&qword_1EAF731C0, &qword_1EAF731C8, &qword_199E39EC8, MEMORY[0x1E6981F48]);
  return sub_199DF9A1C();
}

uint64_t sub_199AC9FE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v86 = a3;
  v5 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v6 = *(v5 - 8);
  v84 = v5 - 8;
  v81 = v6;
  v80 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = (&v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73218, &qword_199E39F20);
  v9 = v8 - 8;
  v95 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v94 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v72 - v94;
  v97 = &v72 - v94;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73220, &qword_199E39F28);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v91 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (&v72 - v91);
  *v17 = sub_199DF8CFC();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73228, &qword_199E39F30);
  sub_199ACAC2C(a1, a2, &v17[*(v18 + 44)]);
  sub_199DF9B3C();
  sub_199DF9B5C();
  sub_199DF863C();
  sub_199AB7794(v17, v14, &qword_1EAF73220, &qword_199E39F28);
  v19 = &v14[*(v9 + 44)];
  v20 = v119[13];
  *v19 = v119[12];
  *(v19 + 1) = v20;
  *(v19 + 2) = v119[14];
  v21 = sub_199AB7794(v14, v11, &qword_1EAF73218, &qword_199E39F20);
  v89 = &v72;
  MEMORY[0x1EEE9AC00](v21);
  v22 = &v72 - v94;
  v96 = &v72;
  v88 = &v72;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72 - v24;
  v87 = &v72;
  MEMORY[0x1EEE9AC00](v26);
  v27 = (&v72 - v91);
  *v27 = sub_199DF8CFC();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = a1;
  v29 = a1;
  v30 = v92;
  sub_199ACB654(v29, v92, &v27[*(v18 + 44)]);
  sub_199DF9B3C();
  sub_199DF9B5C();
  sub_199DF863C();
  sub_199AB7794(v27, v25, &qword_1EAF73220, &qword_199E39F28);
  v31 = &v25[*(v9 + 44)];
  v32 = v119[16];
  *v31 = v119[15];
  *(v31 + 1) = v32;
  *(v31 + 2) = v119[17];
  sub_199AB7794(v25, v22, &qword_1EAF73218, &qword_199E39F20);
  v85 = sub_199DF8CFC();
  v106 = 1;
  v33 = v28;
  v72 = v28;
  sub_199ACC104(v28, v30, &v99);
  v115 = *&v100[112];
  v116 = *&v100[128];
  v117 = *&v100[144];
  v118 = *&v100[160];
  v111 = *&v100[48];
  v112 = *&v100[64];
  v113 = *&v100[80];
  v114 = *&v100[96];
  v107 = v99;
  v108 = *v100;
  v109 = *&v100[16];
  v110 = *&v100[32];
  v119[8] = *&v100[112];
  v119[9] = *&v100[128];
  v119[10] = *&v100[144];
  v119[11] = *&v100[160];
  v119[4] = *&v100[48];
  v119[5] = *&v100[64];
  v119[6] = *&v100[80];
  v119[7] = *&v100[96];
  v119[0] = v99;
  v119[1] = *v100;
  v119[2] = *&v100[16];
  v119[3] = *&v100[32];
  sub_199AAD408(&v107, v98, &qword_1EAF73230, &qword_199E39F38);
  sub_199A79A04(v119, &qword_1EAF73230, &qword_199E39F38);
  *&v105[135] = v115;
  *&v105[151] = v116;
  *&v105[167] = v117;
  *&v105[183] = v118;
  *&v105[71] = v111;
  *&v105[87] = v112;
  *&v105[103] = v113;
  *&v105[119] = v114;
  *&v105[7] = v107;
  *&v105[23] = v108;
  *&v105[39] = v109;
  *&v105[55] = v110;
  v78 = v106;
  sub_199DF9B3C();
  sub_199DF9B5C();
  sub_199DF863C();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73238, &qword_199E39F40);
  v83 = &v72;
  v91 = *(v77 - 8);
  v75 = *(v91 + 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v90 = &v72 - v76;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73240, &unk_199E39F48);
  v82 = &v72;
  MEMORY[0x1EEE9AC00](v74);
  v36 = &v72 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8, &qword_199E3A3E0);
  v79 = &v72;
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v72 - v39;
  v41 = v93;
  sub_199ACDD54(v33, v93);
  v42 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v43 = v42 + v80;
  v44 = swift_allocObject();
  sub_199ACDDB8(v41, v44 + v42);
  sub_199DF989C();
  sub_199DF9B3C();
  sub_199DF9B5C();
  sub_199DF863C();
  v45 = *(v38 + 32);
  v73 = v36;
  v45(v36, v40, v37);
  v46 = &v36[*(v74 + 36)];
  v47 = v119[19];
  *v46 = v119[18];
  *(v46 + 1) = v47;
  *(v46 + 2) = v119[20];
  v48 = v72;
  v49 = v72 + *(v84 + 32);
  v50 = *v49;
  v51 = *(v49 + 8);
  LOBYTE(v98[0]) = v50;
  v98[1] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF986C();
  v52 = v93;
  sub_199ACDD54(v48, v93);
  v53 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_199ACDDB8(v52, v54 + v42);
  *(v54 + v53) = v92;
  sub_199ACE238();
  sub_199ACE2E4();
  v55 = v90;
  v56 = v73;
  sub_199DF95DC();

  v57 = sub_199A79A04(v56, &unk_1EAF73240, &unk_199E39F48);
  v93 = &v72;
  MEMORY[0x1EEE9AC00](v57);
  v58 = v94;
  v59 = &v72 - v94;
  v84 = &v72 - v94;
  v60 = sub_199AAD408(v97, &v72 - v94, &qword_1EAF73218, &qword_199E39F20);
  v92 = &v72;
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v72 - v58;
  v94 = &v72 - v58;
  v62 = sub_199AAD408(v96, &v72 - v58, &qword_1EAF73218, &qword_199E39F20);
  v95 = &v72;
  v63 = MEMORY[0x1EEE9AC00](v62);
  v64 = v77;
  v65 = &v72 - v76;
  v81 = *(v91 + 2);
  (v81)(&v72 - v76, v55, v77, v63);
  v66 = v86;
  sub_199AAD408(v59, v86, &qword_1EAF73218, &qword_199E39F20);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73260, &qword_199E39F58);
  sub_199AAD408(v61, v66 + v67[12], &qword_1EAF73218, &qword_199E39F20);
  v68 = v67[16];
  *(&v98[20] + 1) = *&v105[144];
  *(&v98[22] + 1) = *&v105[160];
  *(&v98[24] + 1) = *&v105[176];
  *(&v98[12] + 1) = *&v105[80];
  *(&v98[14] + 1) = *&v105[96];
  *(&v98[16] + 1) = *&v105[112];
  *(&v98[18] + 1) = *&v105[128];
  *(&v98[6] + 1) = *&v105[32];
  *(&v98[8] + 1) = *&v105[48];
  *(&v98[10] + 1) = *&v105[64];
  *(&v98[4] + 1) = *&v105[16];
  *(&v98[2] + 1) = *v105;
  *&v98[27] = v102;
  v69 = v85;
  v98[0] = v85;
  v98[1] = 0;
  LOBYTE(v59) = v78;
  LOBYTE(v98[2]) = v78;
  v98[26] = *&v105[191];
  *&v98[29] = v103;
  *&v98[31] = v104;
  memcpy((v66 + v68), v98, 0x108uLL);
  (v81)(v66 + v67[20], v65, v64);
  sub_199AAD408(v98, &v99, &qword_1EAF73268, &unk_199E39F60);
  v70 = *(v91 + 1);
  v70(v90, v64);
  sub_199A79A04(v96, &qword_1EAF73218, &qword_199E39F20);
  sub_199A79A04(v97, &qword_1EAF73218, &qword_199E39F20);
  v70(v65, v64);
  *&v100[145] = *&v105[144];
  *&v100[161] = *&v105[160];
  *v101 = *&v105[176];
  *&v100[81] = *&v105[80];
  *&v100[97] = *&v105[96];
  *&v100[113] = *&v105[112];
  *&v100[129] = *&v105[128];
  *&v100[17] = *&v105[16];
  *&v100[33] = *&v105[32];
  *&v100[49] = *&v105[48];
  *&v100[65] = *&v105[64];
  *&v100[1] = *v105;
  *&v101[23] = v102;
  v99 = v69;
  v100[0] = v59;
  *&v101[15] = *&v105[191];
  *&v101[39] = v103;
  *&v101[55] = v104;
  sub_199A79A04(&v99, &qword_1EAF73268, &unk_199E39F60);
  sub_199A79A04(v94, &qword_1EAF73218, &qword_199E39F20);
  return sub_199A79A04(v84, &qword_1EAF73218, &qword_199E39F20);
}

void *sub_199ACAC2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v71 = a3;
  v72 = a2;
  v4 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73278, &qword_199E39F70);
  v69 = *(v9 - 8);
  v70 = v9;
  v68 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v12 = sub_199DF8D0C();
  v75 = v13;
  v76 = v12;
  LODWORD(v73) = v14;
  v74 = v15;
  sub_199ACDD54(a1, v8);
  sub_199DFA17C();
  v16 = sub_199DFA16C();
  v17 = *(v6 + 80);
  v18 = (v17 + 32) & ~v17;
  v66 = v7 + 7;
  v19 = (v7 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v16;
  *(v20 + 24) = v21;
  sub_199ACDDB8(v8, v20 + v18);
  v22 = v72;
  *(v20 + v19) = v72;
  sub_199ACDD54(a1, v8);
  v23 = sub_199DFA16C();
  v67 = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = MEMORY[0x1E69E85E0];
  sub_199ACDDB8(v8, v24 + v18);
  *(v24 + v19) = v22;
  sub_199DF99AC();
  v73 = v11;
  v25 = v22;
  sub_199DF9BDC();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73280, &qword_199E39F78);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v66 - v28;
  v30 = (a1 + *(v5 + 28));
  v32 = *v30;
  v31 = v30[1];
  v78 = v32;
  v79 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
  result = sub_199DF984C();
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v77 + 16) > v22)
  {
    v76 = v29;
    v34 = v77 + (v22 << 6);
    v35 = *(v34 + 48);
    v36 = *(v34 + 56);
    sub_199DF81AC();
    sub_199DF81AC();
    sub_199DF81AC();
    sub_199DF81AC();

    if (v36)
    {

      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v38 = v67;
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73288, &qword_199E39F80);
        v75 = &v66;
        v40 = *(v39 - 8);
        MEMORY[0x1EEE9AC00](v39);
        v42 = &v66 - v41;
        sub_199ACDD54(a1, v8);
        v43 = (v38 + 16) & ~v38;
        v44 = (v66 + v43) & 0xFFFFFFFFFFFFFFF8;
        v45 = swift_allocObject();
        sub_199ACDDB8(v8, v45 + v43);
        *(v45 + v44) = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73298, &unk_199E39F90);
        sub_199ACE450();
        sub_199DF989C();
        LOBYTE(v45) = sub_199DF919C();
        sub_199DF84FC();
        v46 = &v42[*(v39 + 36)];
        *v46 = v45;
        *(v46 + 1) = v47;
        *(v46 + 2) = v48;
        *(v46 + 3) = v49;
        *(v46 + 4) = v50;
        v46[40] = 0;
        v51 = v76;
        sub_199AB7794(v42, v76, &qword_1EAF73288, &qword_199E39F80);
        v52 = (*(v40 + 56))(v51, 0, 1, v39);
LABEL_10:
        v76 = &v66;
        v54 = MEMORY[0x1EEE9AC00](v52);
        v56 = &v66 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        v57 = v69;
        v58 = v70;
        v59 = *(v69 + 16);
        v60 = v73;
        v61 = v59(v56, v73, v70, v54);
        v75 = &v66;
        MEMORY[0x1EEE9AC00](v61);
        v62 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_199AAD408(v51, v62, &qword_1EAF73280, &qword_199E39F78);
        v63 = v71;
        (v59)(v71, v56, v58);
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73290, &qword_199E39F88);
        sub_199AAD408(v62, &v63[*(v64 + 48)], &qword_1EAF73280, &qword_199E39F78);
        sub_199A79A04(v51, &qword_1EAF73280, &qword_199E39F78);
        v65 = *(v57 + 8);
        v65(v60, v58);
        sub_199A79A04(v62, &qword_1EAF73280, &qword_199E39F78);
        return (v65)(v56, v58);
      }
    }

    else
    {
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73288, &qword_199E39F80);
    v51 = v76;
    v52 = (*(*(v53 - 8) + 56))(v76, 1, 1, v53);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *sub_199ACB368@<X0>(unint64_t a2@<X3>, void *a3@<X8>)
{
  type metadata accessor for CommunicationLimitsRequestContextView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
  result = sub_199DF984C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v11 + 16) <= a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = v11 + (a2 << 6);
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  sub_199DF81AC();
  sub_199DF81AC();
  sub_199DF81AC();

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE000000000000000;
  if (v8)
  {
    v10 = v8;
  }

  *a3 = v9;
  a3[1] = v10;
  return result;
}

uint64_t sub_199ACB450(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *a1;
  v6 = a1[1];
  type metadata accessor for CommunicationLimitsRequestContextView(0);

  sub_199DF81AC();
  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
  sub_199DF984C();
  v8 = v11;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_199ACE3D4(v11);
  v8 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v8 + 16) > a5)
  {
    v10 = v8 + (a5 << 6);
    *(v10 + 48) = v7;
    *(v10 + 56) = v6;

    sub_199DF985C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_199ACB55C(uint64_t a1, unint64_t a2)
{
  type metadata accessor for CommunicationLimitsRequestContextView(0);

  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
  sub_199DF984C();
  v3 = v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_199ACE3D4(v6);
  v3 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v3 + 16) > a2)
  {
    v5 = v3 + (a2 << 6);
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;

    sub_199DF985C();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_199ACB654@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v71 = a3;
  v72 = a2;
  v4 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73278, &qword_199E39F70);
  v69 = *(v9 - 8);
  v70 = v9;
  v68 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v12 = sub_199DF8D0C();
  v75 = v13;
  v76 = v12;
  LODWORD(v73) = v14;
  v74 = v15;
  sub_199ACDD54(a1, v8);
  sub_199DFA17C();
  v16 = sub_199DFA16C();
  v17 = *(v6 + 80);
  v18 = (v17 + 32) & ~v17;
  v66 = v7 + 7;
  v19 = (v7 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v16;
  *(v20 + 24) = v21;
  sub_199ACDDB8(v8, v20 + v18);
  v22 = v72;
  *(v20 + v19) = v72;
  sub_199ACDD54(a1, v8);
  v23 = sub_199DFA16C();
  v67 = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = MEMORY[0x1E69E85E0];
  sub_199ACDDB8(v8, v24 + v18);
  *(v24 + v19) = v22;
  sub_199DF99AC();
  v73 = v11;
  v25 = v22;
  sub_199DF9BDC();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73280, &qword_199E39F78);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v66 - v28;
  v30 = (a1 + *(v5 + 28));
  v32 = *v30;
  v31 = v30[1];
  v78 = v32;
  v79 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
  result = sub_199DF984C();
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v77 + 16) > v22)
  {
    v76 = v29;
    v34 = v77 + (v22 << 6);
    v35 = *(v34 + 64);
    v36 = *(v34 + 72);
    sub_199DF81AC();
    sub_199DF81AC();
    sub_199DF81AC();
    sub_199DF81AC();

    if (v36)
    {

      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v38 = v67;
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73288, &qword_199E39F80);
        v75 = &v66;
        v40 = *(v39 - 8);
        MEMORY[0x1EEE9AC00](v39);
        v42 = &v66 - v41;
        sub_199ACDD54(a1, v8);
        v43 = (v38 + 16) & ~v38;
        v44 = (v66 + v43) & 0xFFFFFFFFFFFFFFF8;
        v45 = swift_allocObject();
        sub_199ACDDB8(v8, v45 + v43);
        *(v45 + v44) = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73298, &unk_199E39F90);
        sub_199ACE450();
        sub_199DF989C();
        LOBYTE(v45) = sub_199DF919C();
        sub_199DF84FC();
        v46 = &v42[*(v39 + 36)];
        *v46 = v45;
        *(v46 + 1) = v47;
        *(v46 + 2) = v48;
        *(v46 + 3) = v49;
        *(v46 + 4) = v50;
        v46[40] = 0;
        v51 = v76;
        sub_199AB7794(v42, v76, &qword_1EAF73288, &qword_199E39F80);
        v52 = (*(v40 + 56))(v51, 0, 1, v39);
LABEL_10:
        v76 = &v66;
        v54 = MEMORY[0x1EEE9AC00](v52);
        v56 = &v66 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        v57 = v69;
        v58 = v70;
        v59 = *(v69 + 16);
        v60 = v73;
        v61 = v59(v56, v73, v70, v54);
        v75 = &v66;
        MEMORY[0x1EEE9AC00](v61);
        v62 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_199AAD408(v51, v62, &qword_1EAF73280, &qword_199E39F78);
        v63 = v71;
        (v59)(v71, v56, v58);
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73290, &qword_199E39F88);
        sub_199AAD408(v62, &v63[*(v64 + 48)], &qword_1EAF73280, &qword_199E39F78);
        sub_199A79A04(v51, &qword_1EAF73280, &qword_199E39F78);
        v65 = *(v57 + 8);
        v65(v60, v58);
        sub_199A79A04(v62, &qword_1EAF73280, &qword_199E39F78);
        return (v65)(v56, v58);
      }
    }

    else
    {
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73288, &qword_199E39F80);
    v51 = v76;
    v52 = (*(*(v53 - 8) + 56))(v76, 1, 1, v53);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *sub_199ACBD98@<X0>(unint64_t a2@<X3>, void *a3@<X8>)
{
  type metadata accessor for CommunicationLimitsRequestContextView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
  result = sub_199DF984C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v11 + 16) <= a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = v11 + (a2 << 6);
  v7 = *(v6 + 64);
  v8 = *(v6 + 72);
  sub_199DF81AC();
  sub_199DF81AC();
  sub_199DF81AC();
  sub_199DF81AC();

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE000000000000000;
  if (v8)
  {
    v10 = v8;
  }

  *a3 = v9;
  a3[1] = v10;
  return result;
}

uint64_t sub_199ACBE9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *a1;
  v6 = a1[1];
  type metadata accessor for CommunicationLimitsRequestContextView(0);

  sub_199DF81AC();
  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
  sub_199DF984C();
  v8 = v11;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_199ACE3D4(v11);
  v8 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v8 + 16) > a5)
  {
    v10 = v8 + (a5 << 6);
    *(v10 + 64) = v7;
    *(v10 + 72) = v6;

    sub_199DF985C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_199ACBFA8(uint64_t a1, unint64_t a2)
{
  type metadata accessor for CommunicationLimitsRequestContextView(0);

  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
  sub_199DF984C();
  v3 = v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_199ACE3D4(v6);
  v3 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v3 + 16) > a2)
  {
    v5 = v3 + (a2 << 6);
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;

    sub_199DF985C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_199ACC0A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_199DF97CC();
  v3 = sub_199DF977C();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

void *sub_199ACC104@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v5 = sub_199DF9F4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v9 = sub_199AA8A84(v8, MEMORY[0x1E69E7CC0]);
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v78 = v9;
  v79 = v11;
  v54 = sub_199A9C458();
  v12 = sub_199DF93CC();
  v14 = v13;
  LOBYTE(v5) = v15;
  sub_199DF973C();
  v16 = sub_199DF933C();
  v56 = v17;
  v55 = v18;
  v20 = v19;

  sub_199ACE3E8(v12, v14, v5 & 1);

  v21 = (a1 + *(type metadata accessor for CommunicationLimitsRequestContextView(0) + 20));
  v23 = *v21;
  v22 = v21[1];
  v78 = v23;
  v79 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
  result = sub_199DF984C();
  if ((v57 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v69 + 16) > v57)
  {
    v52 = v16;
    v53 = v20;
    v25 = v69 + (v57 << 6);
    v27 = *(v25 + 32);
    v26 = *(v25 + 40);
    sub_199DF81AC();
    sub_199DF81AC();
    sub_199DF81AC();

    v78 = v27;
    v79 = v26;
    v28 = sub_199DF93CC();
    v30 = v29;
    v32 = v31;
    sub_199DF977C();
    v54 = sub_199DF933C();
    v51 = v33;
    v35 = v34;
    v57 = v36;

    sub_199ACE3E8(v28, v30, v32 & 1);

    sub_199DF9B7C();
    sub_199DF897C();
    v91 = v35 & 1;
    LOBYTE(v27) = v55 & 1;
    v61 = v55 & 1;
    v60 = 1;
    v37 = v54;
    v38 = v51;
    *&v69 = v54;
    *(&v69 + 1) = v51;
    LOBYTE(v70) = v35 & 1;
    *(&v70 + 1) = *v90;
    DWORD1(v70) = *&v90[3];
    v39 = v57;
    *(&v70 + 1) = v57;
    v75 = v66;
    v76 = v67;
    v77 = v68;
    v71 = v62;
    v72 = v63;
    v41 = v62;
    v40 = v63;
    v73 = v64;
    v74 = v65;
    v42 = v68;
    *&v59[7] = v69;
    *&v59[71] = v64;
    *&v59[55] = v63;
    *&v59[39] = v62;
    *&v59[23] = v70;
    *&v59[135] = v68;
    *&v59[119] = v67;
    *&v59[103] = v66;
    *&v59[87] = v65;
    v43 = v55 & 1;
    v45 = v52;
    v44 = v53;
    v46 = v56;
    *a3 = v52;
    *(a3 + 8) = v46;
    *(a3 + 16) = v43;
    *(a3 + 24) = v44;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    v47 = *&v59[112];
    *(a3 + 137) = *&v59[96];
    *(a3 + 153) = v47;
    *(a3 + 169) = *&v59[128];
    *(a3 + 184) = *&v59[143];
    v48 = *&v59[48];
    *(a3 + 73) = *&v59[32];
    *(a3 + 89) = v48;
    v49 = *&v59[80];
    *(a3 + 105) = *&v59[64];
    *(a3 + 121) = v49;
    v50 = *&v59[16];
    *(a3 + 41) = *v59;
    *(a3 + 57) = v50;
    v78 = v37;
    v79 = v38;
    v80 = v35 & 1;
    *v81 = *v90;
    *&v81[3] = *&v90[3];
    v82 = v39;
    v87 = v66;
    v88 = v67;
    v89 = v42;
    v83 = v41;
    v84 = v40;
    v85 = v64;
    v86 = v65;
    sub_199ACE3F8(v45, v46, v27);
    sub_199DF81AC();
    sub_199AAD408(&v69, &v58, &qword_1EAF73270, &unk_199E3E230);
    sub_199A79A04(&v78, &qword_1EAF73270, &unk_199E3E230);
    sub_199ACE3E8(v45, v46, v27);
  }

  __break(1u);
  return result;
}

uint64_t sub_199ACC5C0(uint64_t a1)
{
  type metadata accessor for CommunicationLimitsRequestContextView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  return sub_199DF985C();
}

uint64_t sub_199ACC634@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v21[2] = v6;
  v21[3] = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_199DF96CC();
  v13 = sub_199DF933C();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_199ACE3E8(v9, v11, v6 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_199ACC7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(void *a1)@<X8>)
{
  v6 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_199ACDD54(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = sub_199ACDDB8(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  *a3 = sub_199ACE338;
  a3[1] = v10;
  return result;
}

void sub_199ACC8D8(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v5 identifier];
    v7 = sub_199DF9F8C();
    v9 = v8;

    v10 = (a2 + *(type metadata accessor for CommunicationLimitsRequestContextView(0) + 20));
    v11 = *v10;
    v12 = v10[1];
    v21 = *v10;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
    sub_199DF984C();
    v13 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = sub_199ACE3D4(v22);
      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v13 + 2) > a3)
        {
          v14 = &v13[64 * a3];
          *(v14 + 10) = v7;
          *(v14 + 11) = v9;

          sub_199DF985C();
          v15 = [v5 givenName];
          v7 = sub_199DF9F8C();
          v9 = v16;

          sub_199DF984C();
          v13 = v22;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        v13 = sub_199ACE3D4(v13);
LABEL_6:
        if (*(v13 + 2) <= a3)
        {
          __break(1u);
        }

        else
        {
          v17 = &v13[64 * a3];
          *(v17 + 6) = v7;
          *(v17 + 7) = v9;

          sub_199DF985C();

          v18 = [v5 familyName];
          v7 = sub_199DF9F8C();
          v9 = v19;

          sub_199DF984C();
          v13 = v22;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_8;
          }
        }

        v13 = sub_199ACE3D4(v13);
LABEL_8:
        if (*(v13 + 2) <= a3)
        {
          __break(1u);
        }

        else
        {
          v20 = &v13[64 * a3];
          *(v20 + 8) = v7;
          *(v20 + 9) = v9;

          sub_199DF985C();
        }

        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t sub_199ACCB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D0, &unk_199E39ED0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v20 - v6;
  v7 = sub_199DF8F0C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_199DF8EEC();
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8, &qword_199E3A3E0);
  sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8, &qword_199E3A3E0, MEMORY[0x1EEE7D278]);
  v8 = v21;
  v9 = sub_199DF85CC();
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_199DF8EFC();
  v24 = v22;
  sub_199DF85CC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731E8, &qword_199E39EE0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  v16 = *(v15 + 48);
  v17 = v4[2];
  v17(&v20 - v13, v8, v3, v12);
  (v17)(&v14[v16], &v20 - v6, v3);
  sub_199DF8DBC();
  v18 = v4[1];
  v18(&v20 - v6, v3);
  return (v18)(v8, v3);
}

uint64_t sub_199ACCE34(uint64_t a1)
{
  v2 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_199DF8D0C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F8, &unk_199E39EF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_199DF84CC();
  v8 = sub_199DF84DC();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_199ACDD54(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_199ACDDB8(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return sub_199DF98AC();
}

uint64_t sub_199ACD014()
{
  v0 = sub_199DF867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_199AC3274(v3);
  sub_199DF866C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_199ACD0E0(uint64_t a1)
{
  v2 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_199DF9F4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v9 = sub_199AA8A84(v8, MEMORY[0x1E69E7CC0]);
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v15[0] = v9;
  v15[1] = v11;
  sub_199ACDD54(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_199ACDDB8(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_199A9C458();
  return sub_199DF98BC();
}

uint64_t sub_199ACD2CC(uint64_t a1)
{
  result = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v3 = *(a1 + *(result + 28));
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0, &qword_199E39EE8);
    sub_199DF984C();
    v3();
  }

  return result;
}

uint64_t sub_199ACD364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73098, &qword_199E39CC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730A0, &qword_199E39CD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730A8, &qword_199E39CD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730B0, &qword_199E39CE0);
  sub_199AA0B90(&unk_1EAF730B8, &qword_1EAF730B0, &qword_199E39CE0, MEMORY[0x1EEE7C770]);
  sub_199A9C458();
  swift_getOpaqueTypeConformance2();
  sub_199AA0B90(&qword_1EAF730C8, &qword_1EAF730A8, &qword_199E39CD8, MEMORY[0x1EEE7BDD0]);
  swift_getOpaqueTypeConformance2();
  return sub_199DF88AC();
}

uint64_t sub_199ACD4CC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

id sub_199ACD608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactPickerViewControllerWrapper.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_199ACD650()
{
  v0 = [objc_allocWithZone(CNContactPickerViewController) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF732C0, &qword_199E3A098);
  sub_199DF911C();
  [v0 setDelegate_];

  return v0;
}

void *sub_199ACD6D0@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for CNContactPickerViewControllerWrapper.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV10ContactsUI36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

void sub_199ACD7F4(uint64_t a1)
{
  sub_199ACEB1C();
  sub_199DF90BC();
  __break(1u);
}

uint64_t sub_199ACD864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_199ACD8AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_199ACD934(uint64_t a1)
{
  sub_199ACDA40(319);
  if (v1 <= 0x3F)
  {
    sub_199ACDAE8(319, &qword_1EAF730F8, &unk_1EAF73100, &unk_199E39DD8, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_199ACDA98();
      if (v3 <= 0x3F)
      {
        sub_199ACDAE8(319, &qword_1EAF73110, &unk_1EAF74CA0, &qword_199E39770, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199ACDA40(uint64_t a1)
{
  if (!qword_1EAF730F0)
  {
    sub_199DF867C();
    v1 = sub_199DF859C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF730F0);
    }
  }
}

void sub_199ACDA98()
{
  if (!qword_1EAF711C0)
  {
    v0 = sub_199DF987C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF711C0);
    }
  }
}

void sub_199ACDAE8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_199ACDB9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_199ACDC08()
{
  result = qword_1EAF731A8;
  if (!qword_1EAF731A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF731A0, &qword_199E39EB8);
    sub_199ACDC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF731A8);
  }

  return result;
}

unint64_t sub_199ACDC8C()
{
  result = qword_1EAF731B0;
  if (!qword_1EAF731B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF731B8, &qword_199E39EC0);
    sub_199AA0B90(&qword_1EAF731C0, &qword_1EAF731C8, &qword_199E39EC8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF731B0);
  }

  return result;
}

uint64_t sub_199ACDD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199ACDDB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199ACDE4C(uint64_t *a1)
{
  v3 = *(type metadata accessor for CommunicationLimitsRequestContextView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199AC9F3C(a1, v4);
}

unint64_t sub_199ACDECC()
{
  result = qword_1EAF73208;
  if (!qword_1EAF73208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73200, &qword_199E3CDC0);
    sub_199ACDF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73208);
  }

  return result;
}

unint64_t sub_199ACDF58()
{
  result = qword_1EAF73210;
  if (!qword_1EAF73210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73210);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{
  v1 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_199DF867C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 28)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199ACE128(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CommunicationLimitsRequestContextView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_199ACE19C@<X0>(void (**a1)(void *a1)@<X8>)
{
  v3 = *(type metadata accessor for CommunicationLimitsRequestContextView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_199ACC7CC(v1 + v4, v5, a1);
}

unint64_t sub_199ACE238()
{
  result = qword_1EAF73250;
  if (!qword_1EAF73250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF73240, &unk_199E39F48);
    sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8, &qword_199E3A3E0, MEMORY[0x1EEE7D278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73250);
  }

  return result;
}

unint64_t sub_199ACE2E4()
{
  result = qword_1EAF73258;
  if (!qword_1EAF73258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73258);
  }

  return result;
}

void sub_199ACE338(void *a1)
{
  v3 = *(type metadata accessor for CommunicationLimitsRequestContextView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_199ACC8D8(a1, v1 + v4, v5);
}

uint64_t sub_199ACE3E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_199ACE3F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_199DF81AC();
  }
}

unint64_t sub_199ACE450()
{
  result = qword_1EAF732A0;
  if (!qword_1EAF732A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73298, &unk_199E39F90);
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0, &unk_199E3CB30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF732A0);
  }

  return result;
}

uint64_t sub_199ACE520(uint64_t (*a1)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CommunicationLimitsRequestContextView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  return a1(v5, v6, v1 + v3, v4);
}

uint64_t objectdestroy_50Tm()
{
  v1 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_199DF867C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 28)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_199ACE75C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CommunicationLimitsRequestContextView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return a2(a1, v7, v8, v2 + v5, v6);
}

uint64_t objectdestroy_44Tm()
{
  v1 = type metadata accessor for CommunicationLimitsRequestContextView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_199DF867C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 28)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_199ACE990(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CommunicationLimitsRequestContextView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_199ACEA30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_199ACEA78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199ACEAC4()
{
  result = qword_1EAF732B8;
  if (!qword_1EAF732B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF732B8);
  }

  return result;
}

unint64_t sub_199ACEB1C()
{
  result = qword_1EAF732C8;
  if (!qword_1EAF732C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF732C8);
  }

  return result;
}

uint64_t sub_199ACEB80()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1ED615D70);
  __swift_project_value_buffer(v0, qword_1ED615D70);
  return sub_199DF803C();
}

void sub_199ACEC00()
{
  v1 = v0[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_showGrayCircle];
  v2 = objc_opt_self();
  if (v1 == 1)
  {
    v3 = [v2 systemGray6Color];
    [v0 setBackgroundColor_];

    v4 = [v0 layer];
    [v4 setCornerRadius_];

    [v0 setClipsToBounds_];
    v5 = *&v0[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView];
    if (v5)
    {

      [v5 setHidden_];
    }
  }

  else
  {
    v6 = [v2 clearColor];
    [v0 setBackgroundColor_];

    v7 = [v0 layer];
    [v7 setCornerRadius_];

    [v0 setClipsToBounds_];
    v8 = *&v0[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView];
    if (v8)
    {
      [v8 setHidden_];
    }

    sub_199ACF3B8();
  }
}

uint64_t sub_199ACEE38()
{

  v0 = sub_199DF780C();

  return v0;
}

void sub_199ACEEFC(unint64_t a1)
{
  v3 = sub_199DF9E4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EAF71D98 != -1)
  {
    swift_once();
  }

  v7 = sub_199DF804C();
  __swift_project_value_buffer(v7, qword_1ED615D70);
  v8 = v1;
  sub_199DF81AC();
  v9 = sub_199DF802C();
  v10 = sub_199DFA30C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    v26 = swift_slowAlloc();
    v27 = v26;
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2080;
    v13 = sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
    v14 = v8;
    v15 = MEMORY[0x19A8F7EB0](a1, v13);
    v17 = v4;
    v18 = v3;
    v19 = sub_199A9BE90(v15, v16, &v27);

    *(v11 + 14) = v19;
    v3 = v18;
    v4 = v17;
    _os_log_impl(&dword_199A75000, v9, v10, "%@ setContacts: %s", v11, 0x16u);
    v20 = v25;
    sub_199AD08E4(v25);
    MEMORY[0x19A8FA1A0](v20, -1, -1);
    v21 = v26;
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x19A8FA1A0](v21, -1, -1);
    MEMORY[0x19A8FA1A0](v11, -1, -1);
  }

  sub_199A7A02C(0, &qword_1EAF71D20, 0x1E69E9610);
  *v6 = sub_199DFA39C();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v22 = sub_199DF9E7C();
  (*(v4 + 8))(v6, v3);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_199DF77EC();

  if (a1 >> 62)
  {
LABEL_10:
    v23 = sub_199DFA87C();
    goto LABEL_8;
  }

  v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  *(v8 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_showGrayCircle) = v23 == 0;
  sub_199ACEC00();
  sub_199ACF3B8();
}

uint64_t sub_199ACF248@<X0>(uint64_t *a2@<X8>)
{

  v3 = sub_199DF780C();

  *a2 = v3;
  return result;
}

void (*sub_199ACF29C(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;

  v3 = sub_199DF780C();

  *a1 = v3;
  return sub_199ACF30C;
}

void sub_199ACF30C(unint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = sub_199DF81AC();
    sub_199ACEEFC(v2);
  }

  else
  {
    sub_199ACEEFC(*a1);
  }
}

char *CNAvatarView_SwiftWrapper.__allocating_init(contacts:listener:)(unint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_199AD094C(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

void sub_199ACF3B8()
{
  v1 = v0;
  v2 = type metadata accessor for AvatarView(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_199DF774C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_model;

  v7 = sub_199DF780C();

  if (v7 >> 62)
  {
    v8 = sub_199DFA87C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView;
      v10 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView);
      *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView) = 0;
      if (v10)
      {
        [v10 removeFromSuperview];
        v11 = *(v1 + v9);
        if (v11)
        {
          v12 = v11;
          sub_199DF882C();
          [v1 bounds];
          [v12 setFrame_];
          [v12 setAutoresizingMask_];
          [v1 addSubview_];
        }
      }

      v13 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView;
      v14 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
      if (!v14)
      {

        v15 = sub_199DF780C();

        if (!(v15 >> 62))
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_49:

            __break(1u);
            goto LABEL_50;
          }

LABEL_32:
          if ((v15 & 0xC000000000000001) == 0)
          {
            if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v45 = *(v15 + 32);
LABEL_35:

            sub_199DF76BC();
            v46 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_listenerWrapper);
            sub_199AD1270();
            v47 = v46;
            v48 = sub_199DF769C();
            v49 = *(v1 + v13);
            *(v1 + v13) = v48;
            v60 = v49;
            if (v49)
            {
              v50 = v48;
              [v60 removeFromSuperview];
              v51 = *(v1 + v13);
              if (v51)
              {
LABEL_37:
                v52 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
                swift_beginAccess();
                v53 = *(v1 + v52);
                v54 = v51;
                v55 = [v53 CGColor];
                swift_beginAccess();
                sub_199DF771C();
                sub_199DF768C();
                v56 = v54;
                [v1 frame];
                [v56 setFrame_];
                [v56 setAutoresizingMask_];

                [v1 addSubview_];
                return;
              }
            }

            else
            {
              v58 = v48;
              v51 = v48;
              if (v48)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_15;
          }

LABEL_50:
          MEMORY[0x19A8F8520](0, v15);
          goto LABEL_35;
        }

LABEL_48:
        if (!sub_199DFA87C())
        {
          goto LABEL_49;
        }

        goto LABEL_32;
      }

      v15 = *(v1 + v6);
      v60 = v14;

      v1 = sub_199DF780C();

      if (v1 >> 62)
      {
        if (sub_199DFA87C())
        {
LABEL_11:
          if ((v1 & 0xC000000000000001) == 0)
          {
            if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v16 = *(v1 + 32);
LABEL_14:

              sub_199DF76AC();
LABEL_15:
              v17 = v60;

              return;
            }

            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          MEMORY[0x19A8F8520](0, v1);
          goto LABEL_14;
        }
      }

      else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_46;
    }

    v26 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView;
    v27 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
    *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView) = 0;
    if (v27)
    {
      [v27 removeFromSuperview];
      v28 = *(v1 + v26);
      if (v28)
      {
        v29 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
        swift_beginAccess();
        v30 = *(v1 + v29);
        v31 = v28;
        v32 = [v30 CGColor];
        swift_beginAccess();
        sub_199DF771C();
        sub_199DF768C();
        v33 = v31;
        [v1 frame];
        [v33 setFrame_];
        [v33 setAutoresizingMask_];

        [v1 addSubview_];
      }
    }

    v34 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView;
    if (!*(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView))
    {
      v35 = *(v1 + v6);
      *v4 = swift_getKeyPath();
      v4[8] = 0;
      v36 = *(v2 + 20);
      *&v4[v36] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E90, &unk_199E398C0);
      swift_storeEnumTagMultiPayload();
      v37 = &v4[*(v2 + 24)];
      *v37 = sub_199AD12C8;
      *(v37 + 1) = v35;
      v37[16] = 0;
      v38 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73310, &qword_199E3A148));

      v39 = sub_199DF881C();
      v40 = v39;
      v41 = *(v1 + v34);
      *(v1 + v34) = v39;
      if (v41)
      {
        v42 = v39;
        [v41 removeFromSuperview];
        v43 = *(v1 + v34);
        if (!v43)
        {
LABEL_29:

          return;
        }
      }

      else
      {
        v57 = v39;
        v43 = v40;
        if (!v40)
        {
          goto LABEL_29;
        }
      }

      v44 = v43;
      sub_199DF882C();
      [v1 bounds];
      [v44 setFrame_];
      [v44 setAutoresizingMask_];
      [v1 addSubview_];

      goto LABEL_29;
    }
  }

  else
  {
    v18 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView;
    v19 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
    *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView) = 0;
    if (v19)
    {
      [v19 removeFromSuperview];
      v20 = *(v1 + v18);
      if (v20)
      {
        v21 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
        swift_beginAccess();
        v22 = *(v1 + v21);
        v23 = v20;
        v24 = [v22 CGColor];
        swift_beginAccess();
        sub_199DF771C();
        sub_199DF768C();
        v25 = v23;
        [v1 frame];
        [v25 setFrame_];
        [v25 setAutoresizingMask_];

        [v1 addSubview_];
      }
    }

    *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_showGrayCircle) = 1;
    sub_199ACEC00();
  }
}

uint64_t sub_199ACFC08()
{
  v1 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_199ACFC4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    return sub_199A7C70C();
  }

  return result;
}

uint64_t sub_199ACFCAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v6)
  {
    return sub_199A7C70C();
  }

  return result;
}

void (*sub_199ACFD10(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_199ACFDA4;
}

void sub_199ACFDA4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_199A7C70C();
  }

  free(v1);
}

id sub_199ACFE48()
{
  v1 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199ACFEF8(void *a1)
{
  v3 = sub_199DF774C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = a1;
  v10 = a1;

  v11 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
  if (v11)
  {
    v12 = *(v1 + v8);
    v13 = v11;
    v14 = [v12 CGColor];
    sub_199DF767C();
    sub_199DF773C();
    (*(v4 + 8))(v6, v3);
    sub_199DF771C();
    sub_199DF768C();
  }
}

void (*sub_199AD0094(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_199DF774C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  v5[7] = v9;
  v5[8] = v10;
  swift_beginAccess();
  return sub_199AD01AC;
}

void sub_199AD01AC(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 24);
    v5 = *(v4 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
    if (v5)
    {
      v7 = *(v3 + 40);
      v6 = *(v3 + 48);
      v8 = *(v3 + 32);
      v9 = *(v4 + *(v3 + 64));
      v10 = v5;
      v11 = [v9 CGColor];
      sub_199DF767C();
      sub_199DF773C();
      (*(v7 + 8))(v6, v8);
      sub_199DF771C();
      sub_199DF768C();
    }
  }

  v12 = *(v3 + 48);
  free(*(v3 + 56));
  free(v12);

  free(v3);
}

double sub_199AD0300()
{
  v1 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_199AD039C(double a1)
{
  v3 = sub_199DF774C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth;
  swift_beginAccess();
  *(v1 + v8) = a1;
  v9 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
  if (v9)
  {
    v10 = v9;
    sub_199DF767C();
    sub_199DF772C();
    (*(v4 + 8))(v6, v3);
    sub_199DF771C();
    sub_199DF768C();
  }
}

void (*sub_199AD0508(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_199DF774C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth;
  v5[7] = v9;
  v5[8] = v10;
  swift_beginAccess();
  return sub_199AD0620;
}

void sub_199AD0620(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(*(v3 + 24) + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
    if (v4)
    {
      v6 = *(v3 + 40);
      v5 = *(v3 + 48);
      v7 = *(v3 + 32);
      v8 = v4;
      sub_199DF767C();
      sub_199DF772C();
      (*(v6 + 8))(v5, v7);
      sub_199DF771C();
      sub_199DF768C();
    }
  }

  v9 = *(v3 + 48);
  free(*(v3 + 56));
  free(v9);

  free(v3);
}

void sub_199AD070C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CNAvatarView_SwiftWrapper();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }

  v3 = *&v0[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView];
  if (v3)
  {
    v4 = v3;
    [v0 frame];
    [v4 setFrame_];
  }
}

id CNAvatarView_SwiftWrapper.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CNAvatarView_SwiftWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarView_SwiftWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199AD08E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73A90, &unk_199E3A0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_199AD094C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView] = 0;
  *&v2[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView] = 0;
  *&v2[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle] = 0;
  v5 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  v6 = objc_opt_self();
  *&v3[v5] = [v6 clearColor];
  *&v3[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth] = 0;
  v7 = type metadata accessor for AvatarView.Listener();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v52.receiver = v8;
  v52.super_class = v7;
  v9 = objc_msgSendSuper2(&v52, sel_init);
  *&v3[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_listenerWrapper] = v9;
  sub_199AD1270();
  sub_199DF781C();
  swift_allocObject();
  v10 = v9;
  sub_199DF81AC();
  *&v3[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_model] = sub_199DF77FC();
  if (a1 >> 62)
  {
    v11 = sub_199DFA87C();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = &qword_1EAF73000;
  v3[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_showGrayCircle] = v11 == 0;
  v51.receiver = v3;
  v51.super_class = type metadata accessor for CNAvatarView_SwiftWrapper();
  v13 = objc_msgSendSuper2(&v51, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = qword_1EAF71D98;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_199DF804C();
  __swift_project_value_buffer(v16, qword_1ED615D70);
  sub_199DF81AC();
  v17 = v15;
  v18 = sub_199DF802C();
  v19 = sub_199DFA30C();

  if (os_log_type_enabled(v18, v19))
  {
    v46 = v19;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v50 = v22;
    *v20 = 138412546;
    *(v20 + 4) = v17;
    v44 = v21;
    v45 = v22;
    *v21 = v17;
    buf = v20;
    *(v20 + 12) = 2080;
    if (a1 >> 62)
    {
      v23 = sub_199DFA87C();
      log = v18;
      if (v23)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      log = v18;
      if (v23)
      {
LABEL_8:
        v49 = MEMORY[0x1E69E7CC0];
        result = sub_199A9C55C(0, v23 & ~(v23 >> 63), 0);
        if (v23 < 0)
        {
          __break(1u);
          return result;
        }

        v43 = v6;
        v25 = 0;
        v26 = v49;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x19A8F8520](v25, a1);
          }

          else
          {
            v27 = *(a1 + 8 * v25 + 32);
          }

          v28 = v27;
          v29 = [v27 identifier];
          v30 = sub_199DF9F8C();
          v32 = v31;

          v34 = *(v49 + 16);
          v33 = *(v49 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_199A9C55C((v33 > 1), v34 + 1, 1);
          }

          ++v25;
          *(v49 + 16) = v34 + 1;
          v35 = v49 + 16 * v34;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
        }

        while (v23 != v25);

        v6 = v43;
        v12 = &qword_1EAF73000;
        goto LABEL_20;
      }
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v36 = MEMORY[0x19A8F7EB0](v26, MEMORY[0x1E69E6158]);
    v38 = v37;

    v39 = sub_199A9BE90(v36, v38, &v50);

    *(buf + 14) = v39;
    _os_log_impl(&dword_199A75000, log, v46, "Created %@ with contacts: %s", buf, 0x16u);
    sub_199AD08E4(v44);
    MEMORY[0x19A8FA1A0](v44, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x19A8FA1A0](v45, -1, -1);
    MEMORY[0x19A8FA1A0](buf, -1, -1);

    goto LABEL_21;
  }

LABEL_21:
  v40 = [v6 clearColor];
  [v17 setBackgroundColor_];

  sub_199A7C70C();
  if (*(v17 + v12[91]) == 1)
  {
    v41 = [v6 systemGray6Color];
    [v17 setBackgroundColor_];

    v42 = [v17 layer];
    [v42 setCornerRadius_];

    [v17 setClipsToBounds_];
  }

  else
  {
    sub_199ACF3B8();
  }

  return v17;
}

void sub_199AD11B4()
{
  *(v0 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle) = 0;
  v1 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth) = 0;
  sub_199DFA85C();
  __break(1u);
}

unint64_t sub_199AD1270()
{
  result = qword_1ED615BF8;
  if (!qword_1ED615BF8)
  {
    type metadata accessor for AvatarView.Listener();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED615BF8);
  }

  return result;
}

id sub_199AD131C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199AD13D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199AD1428(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CNPosterSetupAvatarPreviewViewWrapper.__allocating_init(imageData:cropRect:imageType:delegate:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v17 = objc_allocWithZone(v9);
  type metadata accessor for CNPosterSetupAvatarPreviewConfiguration(0);
  swift_allocObject();
  *&v17[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_configuration] = sub_199AD4D78(a1, a2, a3, a5, a6, a7, a8);
  swift_unknownObjectWeakInit();
  sub_199AD4F28();
  swift_retain_n();
  swift_unknownObjectRetain();
  v24[0] = sub_199DF87AC();
  v24[1] = v18;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v19 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_avatarPreviewView;
  sub_199AD4F80(v24, &v17[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_avatarPreviewView]);
  sub_199AD4FB8(&v17[v19], v24);
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73338, &qword_199E3A160));
  *&v17[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController] = sub_199DF8DFC();
  v23.receiver = v17;
  v23.super_class = v9;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  swift_unknownObjectRelease();

  sub_199A9EF34(a1, a2);
  return v21;
}

id CNPosterSetupAvatarPreviewViewWrapper.init(imageData:cropRect:imageType:delegate:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v10 = sub_199AD4FF0(a1, a2, a3, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();
  sub_199A9EF34(a1, a2);
  return v10;
}

uint64_t type metadata accessor for CNPosterSetupAvatarPreviewConfiguration(uint64_t a1)
{
  result = qword_1EAF73360;
  if (!qword_1EAF73360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AD17F8(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_199AA7630(a1, a2);
  sub_199DF842C();
  sub_199AD1CA8();
}

uint64_t sub_199AD1974(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199AD1A8C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

id CNPosterSetupAvatarPreviewViewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNPosterSetupAvatarPreviewViewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNPosterSetupAvatarPreviewViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199AD1CA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  sub_199A9EF34(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199AD1DBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

double sub_199AD1E30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

uint64_t sub_199AD1EA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

uint64_t sub_199AD1F1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

uint64_t sub_199AD203C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration__imageData;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734B0, &qword_199E3A4F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration__cropRect;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734B8, &qword_199E3A500);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration__imageType;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734C0, &qword_199E3A508);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration__hasImageData;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75020, &qword_199E3A510);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_199AD21C8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CNPosterSetupAvatarPreviewConfiguration(0);
  result = sub_199DF83BC();
  *a2 = result;
  return result;
}

id sub_199AD2208()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v1 = sub_199DF71DC();
  sub_199A9EF34(v3, *&v4);
  [v0 setImageData_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  [v0 setCropRect_];
  return v0;
}

uint64_t sub_199AD2338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73398, &qword_199E3A390);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v26 - v29;
  *v5 = sub_199DF8D4C();
  *(v5 + 1) = 0x4028000000000000;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733A0, &qword_199E3A398);
  sub_199AD26D4(a1, &v5[*(v6 + 44)]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733A8, &qword_199E3A3A0);
  v27 = *(v30 - 8);
  v7 = v27;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v28 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v26 - v28;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733B0, &qword_199E3A3A8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  *v12 = sub_199DF8D4C();
  *(v12 + 1) = 0x4028000000000000;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733B8, &qword_199E3A3B0);
  sub_199AD3618(a1, &v12[*(v13 + 44)]);
  sub_199DF915C();
  sub_199AA0B90(&qword_1EAF733C0, &qword_1EAF733B0, &qword_199E3A3A8, MEMORY[0x1E6981870]);
  sub_199DF94AC();
  v14 = sub_199A79A04(v12, &qword_1EAF733B0, &qword_199E3A3A8);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v26 - v29;
  v16 = sub_199AAD408(v5, &v26 - v29, &qword_1EAF73398, &qword_199E3A390);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v28;
  v19 = *(v7 + 16);
  v20 = v30;
  v19(&v26 - v28, v9, v30, v17);
  v21 = v31;
  *v31 = 0;
  *(v21 + 8) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733C8, &qword_199E3A3B8);
  sub_199AAD408(v15, v21 + v22[12], &qword_1EAF73398, &qword_199E3A390);
  v23 = v21 + v22[16];
  *v23 = 0;
  v23[8] = 1;
  (v19)(v21 + v22[20], v18, v20);
  v24 = *(v27 + 8);
  v24(v9, v20);
  sub_199A79A04(v5, &qword_1EAF73398, &qword_199E3A390);
  v24(v18, v20);
  return sub_199A79A04(v15, &qword_1EAF73398, &qword_199E3A390);
}

uint64_t sub_199AD26D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73408, &qword_199E3A3F0);
  v29 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = v4;
  v5 = (&v25 - v4);
  *v5 = sub_199DF9B5C();
  v5[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73410, &qword_199E3A3F8);
  sub_199AD2B74(a1, (v5 + *(v7 + 44)));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73418, &qword_199E3A400);
  v8 = *(*(v26 - 1) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v27 = v10;
  v11 = &v25 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73420, &qword_199E3A408);
  v12 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v14 = &v25 - v13;
  sub_199AD4FB8(a1, v32);
  v15 = swift_allocObject();
  sub_199AD4F80(v32, v15 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73428, &qword_199E3A410);
  sub_199AA0B90(&qword_1EAF73430, &qword_1EAF73428, &qword_199E3A410, MEMORY[0x1E69817F8]);
  sub_199DF989C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v16 = 0.0;
  if (v32[0] != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    if (v32[0] == 4)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 1.0;
    }
  }

  (*(v12 + 32))(v11, v14, v25);
  *&v11[*(v26 + 9)] = v16;
  v17 = v30;
  v18 = sub_199A92A98(v11, v30);
  v26 = &v25;
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v25 - v28;
  v20 = sub_199AAD408(v5, &v25 - v28, &qword_1EAF73408, &qword_199E3A3F0);
  MEMORY[0x1EEE9AC00](v20);
  v21 = &v25 - v27;
  sub_199AAD408(v17, &v25 - v27, &qword_1EAF73418, &qword_199E3A400);
  v22 = v31;
  sub_199AAD408(v19, v31, &qword_1EAF73408, &qword_199E3A3F0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73438, &qword_199E3A418);
  sub_199AAD408(v21, v22 + *(v23 + 48), &qword_1EAF73418, &qword_199E3A400);
  sub_199A79A04(v17, &qword_1EAF73418, &qword_199E3A400);
  sub_199A79A04(v5, &qword_1EAF73408, &qword_199E3A3F0);
  sub_199A79A04(v21, &qword_1EAF73418, &qword_199E3A400);
  return sub_199A79A04(v19, &qword_1EAF73408, &qword_199E3A3F0);
}

uint64_t sub_199AD2B74@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v81 = a2;
  v3 = sub_199DF9F4C();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_199DF8D3C();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v74 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73478, &qword_199E3A478);
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = v62 - v8;
  v9 = sub_199AD2208();
  v10 = objc_opt_self();
  v11 = [v10 mainScreen];
  [v11 bounds];
  v13 = v12;

  v14 = [objc_opt_self() defaultSettings];
  v15 = [v10 mainScreen];
  [v15 bounds];

  v16 = [v10 mainScreen];
  [v16 bounds];

  sub_199DF9B5C();
  sub_199DF863C();
  *(v96 + 7) = v98;
  *(&v96[1] + 7) = v99;
  *(&v96[2] + 7) = v100;
  *&v101 = v9;
  *(&v101 + 1) = v13 * 0.4;
  *v102 = v14;
  v102[8] = 0;
  *&v102[9] = v96[0];
  *&v102[25] = v96[1];
  *&v102[41] = v96[2];
  *&v102[56] = *(&v100 + 1);
  v80 = a1;
  v17 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v17;
  sub_199DF841C();

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (LOBYTE(v96[0]) == 1)
  {
    v88 = *&v102[16];
    v89 = *&v102[32];
    v90 = *&v102[48];
    v86 = v101;
    v87 = *v102;
    MEMORY[0x1EEE9AC00](0);
    v62[-2] = &v86;
    sub_199AAD408(&v101, v96, &qword_1EAF73490, &qword_199E3B250);
    sub_199DF9BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734A8, &qword_199E3A4F0);
    sub_199DF872C();

    v96[2] = v88;
    v96[3] = v89;
    v97 = v90;
    v96[0] = v86;
    v96[1] = v87;
    sub_199A79A04(v96, &qword_1EAF73490, &qword_199E3B250);
    v19 = *(&v91 + 1);
    v18 = v91;
    v21 = *(&v92 + 1);
    v20 = v92;
    v23 = *(&v93 + 1);
    v22 = v93;
    v25 = *(&v94 + 1);
    v24 = v94;
    v27 = *(&v95 + 1);
    v26 = v95;
  }

  *&v66 = v22;
  *(&v66 + 1) = v23;
  *&v67 = v24;
  *(&v67 + 1) = v25;
  *&v68 = v26;
  *(&v68 + 1) = v27;
  v83 = v21;
  *&v84 = v18;
  *(&v84 + 1) = v19;
  v85 = v20;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73480, &qword_199E3A4C8);
  v69 = v62;
  v29 = *(v28 - 8);
  v63 = v28 - 8;
  v64 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v65 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = v62 - v65;
  v62[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73488, &unk_199E3A4D0);
  v62[1] = v62;
  MEMORY[0x1EEE9AC00](v62[0]);
  v32 = v62 - v31;
  v96[2] = *&v102[16];
  v96[3] = *&v102[32];
  v97 = *&v102[48];
  v96[0] = v101;
  v96[1] = *v102;
  v33 = sub_199DF8FFC();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8FEC();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73490, &qword_199E3B250);
  v38 = sub_199AD59A8();
  v39 = v71;
  sub_199DF956C();
  (*(v34 + 8))(v36, v33);
  v40 = v74;
  sub_199DF8D2C();
  *&v96[0] = v37;
  *(&v96[0] + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v41 = v73;
  sub_199DF957C();
  (*(v75 + 8))(v40, v76);
  (*(v72 + 8))(v39, v41);
  v42 = v77;
  sub_199DF9EEC();
  v43 = sub_199AA8A84(v42, MEMORY[0x1E69E7CC0]);
  v45 = v44;
  (*(v78 + 8))(v42, v79);
  *&v96[0] = v43;
  *(&v96[0] + 1) = v45;
  sub_199A9C458();
  v46 = v82;
  sub_199DF887C();

  sub_199A79A04(v32, &qword_1EAF73488, &unk_199E3A4D0);
  type metadata accessor for CNPosterSetupAvatarPreviewConfiguration(0);
  sub_199AD4F28();
  sub_199DF87BC();
  swift_getKeyPath();
  sub_199DF87CC();

  v47 = v96[0];
  LOBYTE(v32) = v96[1];
  *&v86 = 0;
  sub_199DF983C();
  v48 = v91;
  *&v86 = 0x4049000000000000;
  v49 = sub_199DF983C();
  v80 = v62;
  v50 = v91;
  v51 = v46 + *(v63 + 44);
  *v51 = v47;
  *(v51 + 16) = v32;
  *(v51 + 24) = v48;
  *(v51 + 40) = v50;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v62 - v65;
  sub_199AAD408(v46, v62 - v65, &qword_1EAF73480, &qword_199E3A4C8);
  v91 = v84;
  *&v92 = v85;
  *(&v92 + 1) = v83;
  v53 = v66;
  v93 = v66;
  v54 = v67;
  v94 = v67;
  v55 = v68;
  v95 = v68;
  v56 = v92;
  v57 = v67;
  v58 = v68;
  v59 = v81;
  v81[2] = v66;
  v59[3] = v57;
  v59[4] = v58;
  *v59 = v91;
  v59[1] = v56;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73498, &qword_199E3A4E0);
  sub_199AAD408(v52, v59 + *(v60 + 48), &qword_1EAF73480, &qword_199E3A4C8);
  sub_199AAD408(&v91, v96, &qword_1EAF734A0, &qword_199E3A4E8);
  sub_199A79A04(&v101, &qword_1EAF73490, &qword_199E3B250);
  sub_199A79A04(v82, &qword_1EAF73480, &qword_199E3A4C8);
  sub_199A79A04(v52, &qword_1EAF73480, &qword_199E3A4C8);
  v96[0] = v84;
  *&v96[1] = v85;
  *(&v96[1] + 1) = v83;
  v96[2] = v53;
  v96[3] = v54;
  v97 = v55;
  return sub_199A79A04(v96, &qword_1EAF734A0, &qword_199E3A4E8);
}

void sub_199AD3524(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v2;
}

uint64_t sub_199AD35A4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199AD3618@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733D0, &qword_199E3A3C0);
  v40 = *(v38 - 8);
  v36 = v40[8];
  MEMORY[0x1EEE9AC00](v38);
  v37 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v34 - v37;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733D8, &qword_199E3A3C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  sub_199AD4FB8(a1, v41);
  v9 = swift_allocObject();
  sub_199AD4F80(v41, v9 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733E0, &unk_199E3A3D0);
  sub_199AD5604();
  sub_199DF989C();
  v10 = sub_199DF904C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF903C();
  sub_199AD5714();
  sub_199AD576C();
  v35 = v4;
  sub_199DF944C();
  (*(v11 + 8))(v13, v10);
  (*(v6 + 8))(v8, v5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8, &qword_199E3A3E0);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  sub_199AD4FB8(a1, v41);
  v17 = swift_allocObject();
  sub_199AD4F80(v41, v17 + 16);
  v34 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_199DF989C();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v37;
  v21 = v40[2];
  v22 = v4;
  v23 = v38;
  v24 = v21(&v34 - v37, v22, v38, v19);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v15[2];
  v28 = v14;
  v27(v26, v26, v14, v25);
  v29 = v39;
  (v21)(v39, v20, v23);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73400, &qword_199E3A3E8);
  (v27)(&v29[*(v30 + 48)], v26, v28);
  v31 = v15[1];
  v31(v34, v28);
  v32 = v40[1];
  v32(v35, v23);
  v31(v26, v28);
  return (v32)(v20, v23);
}

uint64_t sub_199AD3B0C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_199DF8CFC();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73440, &qword_199E3A420);
  sub_199AD3C34(&v11);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = sub_199DF91EC();
  KeyPath = swift_getKeyPath();
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = KeyPath;
  v17 = v8;
  sub_199DF927C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73448, &qword_199E3A458);
  sub_199AD5840();
  sub_199DF942C();

  sub_199ACE3E8(v4, v5, v6);
}

uint64_t sub_199AD3C34@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_199DF97CC();
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v16[0] = v7;
  v16[1] = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  *a1 = v6;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  LOBYTE(v9) = v13 & 1;
  *(a1 + 24) = v13 & 1;
  *(a1 + 32) = v14;

  sub_199ACE3F8(v10, v12, v9);
  sub_199DF81AC();
  sub_199ACE3E8(v10, v12, v9);
}

void *sub_199AD3DCC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    v3 = sub_199DF71DC();
    sub_199A9EF34(v4, *&v5);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    [v2 avatarPreviewViewDidFinishWithImageData:v3 cropRect:{*&v4, v5, v6, v7}];

    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_199AD3EE8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v37 = v6;
  *(&v37 + 1) = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  v13 = v12;
  sub_199DF930C();
  v14 = sub_199DF939C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_199ACE3E8(v9, v11, v13 & 1);

  sub_199DF9B5C();
  sub_199DF897C();
  v44 = v18 & 1;
  sub_199DF9B5C();
  sub_199DF897C();
  v21 = v42;
  *(a1 + 96) = v41;
  *(a1 + 112) = v21;
  result = v43;
  v23 = v38;
  *(a1 + 32) = v37;
  *(a1 + 48) = v23;
  v24 = v40;
  *(a1 + 64) = v39;
  *(a1 + 80) = v24;
  v25 = v34;
  v26 = v35;
  v27 = v32;
  *(a1 + 192) = v33;
  *(a1 + 208) = v25;
  v28 = v36;
  *(a1 + 224) = v26;
  *(a1 + 240) = v28;
  v29 = *&v31[8];
  v30 = *&v31[24];
  *(a1 + 128) = result;
  *(a1 + 144) = v29;
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 160) = v30;
  *(a1 + 176) = v27;
  return result;
}

void *sub_199AD4180(uint64_t a1, const char **a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_199AD41D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v25[2] = v6;
  v25[3] = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_199DF91EC();
  v13 = sub_199DF939C();
  v15 = v14;
  v17 = v16;

  sub_199ACE3E8(v9, v11, v6 & 1);

  sub_199DF925C();
  v18 = sub_199DF932C();
  v20 = v19;
  LOBYTE(v6) = v21;
  v23 = v22;
  sub_199ACE3E8(v13, v15, v17 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t sub_199AD43B8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_199DF8D4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73388, &qword_199E3A380);
  sub_199AD2338(v2, (a2 + *(v4 + 44)));
  v5 = sub_199DF918C();
  sub_199DF84FC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73390, &qword_199E3A388);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_199AD4468()
{
  result = MEMORY[0x19A8F7970](0.4, 0.8, 0.0);
  qword_1EAF86F88 = result;
  return result;
}

uint64_t sub_199AD449C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734E0, &qword_199E3A5B8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v20 - v5);
  *v6 = sub_199DF9B5C();
  v6[1] = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734E8, &qword_199E3A5C0) + 44);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734F0, &qword_199E3A5C8);
  (*(*(v9 - 8) + 16))(v6 + v8, a1, v9);
  v20[0] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734F8, &qword_199E3A5D0);
  sub_199DF984C();
  v10 = v21;
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73500, &qword_199E3A5D8) + 36)) = v10;
  v20[0] = *(v2 + 40);
  sub_199DF984C();
  v11 = v21;
  v12 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73508, &unk_199E3A5E0) + 36);
  *v12 = v11;
  v12[8] = 0;
  v13 = swift_allocObject();
  v14 = *(v2 + 16);
  *(v13 + 16) = *v2;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v2 + 32);
  *(v13 + 64) = *(v2 + 48);
  v15 = (v6 + *(v4 + 36));
  *v15 = sub_199AD5CC8;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  v21 = *v2;
  v22 = *(v2 + 16);
  sub_199AD5CD0(v2, v20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0, &qword_199E37A70);
  MEMORY[0x19A8F7740](v20, v16);
  LOBYTE(v21) = v20[0];
  v17 = swift_allocObject();
  v18 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 64) = *(v2 + 48);
  sub_199AD5CD0(v2, v20);
  sub_199AD5D60();
  sub_199DF962C();

  return sub_199A79A04(v6, &qword_1EAF734E0, &qword_199E3A5B8);
}

uint64_t sub_199AD4764(__int128 *a1)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0, &qword_199E37A70);
  MEMORY[0x19A8F7740](&v6);
  v3 = 1.0;
  if (!LOBYTE(v6))
  {
    v3 = 0.0;
  }

  v7 = *(a1 + 24);
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734F8, &qword_199E3A5D0);
  sub_199DF985C();
  v7 = *a1;
  v8 = *(a1 + 16);
  MEMORY[0x19A8F7740](&v6, v2);
  v4 = 50.0;
  if (LOBYTE(v6))
  {
    v4 = 0.0;
  }

  v7 = *(a1 + 40);
  v6 = v4;
  return sub_199DF985C();
}

void *sub_199AD4868()
{
  if (qword_1EAF71E40 != -1)
  {
    swift_once();
  }

  MEMORY[0x1EEE9AC00](qword_1EAF86F88);
  return sub_199DF872C();
}

uint64_t sub_199AD4924(__int128 *a1)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0, &qword_199E37A70);
  MEMORY[0x19A8F7740](&v6);
  v3 = 1.0;
  if (!LOBYTE(v6))
  {
    v3 = 0.0;
  }

  v7 = *(a1 + 24);
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734F8, &qword_199E3A5D0);
  sub_199DF985C();
  v7 = *a1;
  v8 = *(a1 + 16);
  MEMORY[0x19A8F7740](&v6, v2);
  v4 = 50.0;
  if (LOBYTE(v6))
  {
    v4 = 0.0;
  }

  v7 = *(a1 + 40);
  v6 = v4;
  return sub_199DF985C();
}

double sub_199AD4A7C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_199AD4AFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199AA7630(v2, v3);
  sub_199DF842C();
  return sub_199AD1CA8();
}

double sub_199AD4B8C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_199AD4C0C(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

void sub_199AD4C84(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v2;
}

uint64_t sub_199AD4D04(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199AD4D78(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  swift_beginAccess();
  sub_199AA7630(a1, a2);
  sub_199DF83FC();
  swift_endAccess();
  swift_beginAccess();
  type metadata accessor for CGRect(0);
  sub_199DF83FC();
  swift_endAccess();
  swift_beginAccess();
  type metadata accessor for CNContactImageType(0);
  sub_199DF83FC();
  swift_endAccess();
  swift_beginAccess();
  sub_199DF83FC();
  swift_endAccess();
  return v7;
}

unint64_t sub_199AD4F28()
{
  result = qword_1EAF73328;
  if (!qword_1EAF73328)
  {
    type metadata accessor for CNPosterSetupAvatarPreviewConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73328);
  }

  return result;
}

id sub_199AD4FF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  type metadata accessor for CNPosterSetupAvatarPreviewConfiguration(0);
  swift_allocObject();
  *&v9[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_configuration] = sub_199AD4D78(a1, a2, a3, a5, a6, a7, a8);
  swift_unknownObjectWeakInit();
  sub_199AD4F28();
  swift_retain_n();
  swift_unknownObjectRetain();
  v23[0] = sub_199DF87AC();
  v23[1] = v17;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v18 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_avatarPreviewView;
  sub_199AD4F80(v23, &v9[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_avatarPreviewView]);
  sub_199AD4FB8(&v9[v18], v23);
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73338, &qword_199E3A160));
  *&v9[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController] = sub_199DF8DFC();
  v22.receiver = v9;
  v22.super_class = type metadata accessor for CNPosterSetupAvatarPreviewViewWrapper();
  v20 = objc_msgSendSuper2(&v22, sel_init);

  return v20;
}

void sub_199AD5304(uint64_t a1)
{
  sub_199AD54F0(319, &qword_1EAF73370, MEMORY[0x1E6969080]);
  if (v1 <= 0x3F)
  {
    sub_199AD549C(319, &qword_1EAF73378, type metadata accessor for CGRect);
    if (v2 <= 0x3F)
    {
      sub_199AD549C(319, &qword_1EAF73380, type metadata accessor for CNContactImageType);
      if (v3 <= 0x3F)
      {
        sub_199AD54F0(319, &qword_1EAF71428, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_199AD549C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_199DF843C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_199AD54F0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_199DF843C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_199AD553C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_199AD5584(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_199AD5604()
{
  result = qword_1EAF733E8;
  if (!qword_1EAF733E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF733E0, &unk_199E3A3D0);
    sub_199AD5690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF733E8);
  }

  return result;
}

unint64_t sub_199AD5690()
{
  result = qword_1EAF733F0;
  if (!qword_1EAF733F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73270, &unk_199E3E230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF733F0);
  }

  return result;
}

unint64_t sub_199AD5714()
{
  result = qword_1EAF733F8;
  if (!qword_1EAF733F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF733D8, &qword_199E3A3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF733F8);
  }

  return result;
}

unint64_t sub_199AD576C()
{
  result = qword_1EAF71210;
  if (!qword_1EAF71210)
  {
    sub_199DF904C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71210);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  MEMORY[0x19A8FA290](v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_199AD5840()
{
  result = qword_1EAF73450;
  if (!qword_1EAF73450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73448, &qword_199E3A458);
    sub_199AD58F8();
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300, &qword_199E3A470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73450);
  }

  return result;
}

unint64_t sub_199AD58F8()
{
  result = qword_1EAF73458;
  if (!qword_1EAF73458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73460, &qword_199E3A460);
    sub_199AA0B90(&qword_1EAF73468, &qword_1EAF73470, &qword_199E3A468, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73458);
  }

  return result;
}

unint64_t sub_199AD59A8()
{
  result = qword_1EAF71358;
  if (!qword_1EAF71358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73490, &qword_199E3B250);
    sub_199AD5A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71358);
  }

  return result;
}

unint64_t sub_199AD5A34()
{
  result = qword_1EAF71B20;
  if (!qword_1EAF71B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71B20);
  }

  return result;
}

uint64_t sub_199AD5A88@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v10[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[4];
  v10[3] = v2[3];
  v10[4] = v5;
  v10[1] = v3;
  v10[2] = v4;
  v6 = v2[3];
  a1[2] = v2[2];
  a1[3] = v6;
  a1[4] = v2[4];
  v7 = v2[1];
  *a1 = *v2;
  a1[1] = v7;
  return sub_199AAD408(v10, &v9, &qword_1EAF73490, &qword_199E3B250);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_199AD5B50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_199AD5B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199AD5BF4()
{
  result = qword_1EAF734C8;
  if (!qword_1EAF734C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73390, &qword_199E3A388);
    sub_199AA0B90(&qword_1EAF734D0, &qword_1EAF734D8, qword_199E3A560, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF734C8);
  }

  return result;
}

uint64_t objectdestroy_71Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t sub_199AD5D60()
{
  result = qword_1EAF73510;
  if (!qword_1EAF73510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF734E0, &qword_199E3A5B8);
    sub_199AD5DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73510);
  }

  return result;
}

unint64_t sub_199AD5DEC()
{
  result = qword_1EAF73518;
  if (!qword_1EAF73518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73508, &unk_199E3A5E0);
    sub_199AD5E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73518);
  }

  return result;
}

unint64_t sub_199AD5E78()
{
  result = qword_1EAF73520;
  if (!qword_1EAF73520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73500, &qword_199E3A5D8);
    sub_199AA0B90(&qword_1EAF73528, &qword_1EAF73530, &unk_199E3A5F0, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73520);
  }

  return result;
}

uint64_t static Material.lightweightThin.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF71B78 != -1)
  {
    swift_once();
  }

  v2 = sub_199DF9B2C();
  v3 = __swift_project_value_buffer(v2, qword_1EAF71B80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_199AD6080()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_199E37DF0;
  result = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  *(v0 + 32) = result;
  qword_1EAF86F90 = v0;
  return result;
}

void *sub_199AD60FC(void *result)
{
  v65[5] = *MEMORY[0x1E69E9840];
  if (!result[2])
  {
    return result;
  }

  v2 = v1;
  v3 = *(v1 + 32);
  [v3 lock];
  v4 = sub_199DF81AC();
  v5 = sub_199AFD79C(v4);

  v6 = OBJC_IVAR____TtC10ContactsUI32CNUIDuplicatesContactStoreFacade_cachedIdentifiers;
  if (*(*(v1 + OBJC_IVAR____TtC10ContactsUI32CNUIDuplicatesContactStoreFacade_cachedIdentifiers) + 16) <= v5[2] >> 3)
  {
    v65[0] = v5;
    v16 = sub_199DF81AC();
    sub_199AFC84C(v16);

    v8 = v5;
    if (v5[2])
    {
      goto LABEL_4;
    }

LABEL_8:

    return [v3 unlock];
  }

  v7 = sub_199DF81AC();
  v8 = sub_199AFC978(v7, v5);

  if (!*(v8 + 16))
  {
    goto LABEL_8;
  }

LABEL_4:
  v61 = v6;
  v62 = v3;
  v9 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790, &qword_199E38F80);
  v10 = sub_199DFA0BC();

  v11 = [v9 initWithKeysToFetch_];

  [v11 setUnifyResults_];
  v12 = *(v8 + 16);
  v63 = v8;
  if (v12)
  {
    v13 = sub_199AB2EA8(v12, 0);
    v14 = sub_199AFD644(v65, v13 + 4, v12, v8);
    v15 = v65[0];
    sub_199DF81AC();
    sub_199AD6AF4(v15);
    if (v14 != v12)
    {
      goto LABEL_32;
    }

    v8 = v63;
  }

  v17 = objc_opt_self();
  v18 = sub_199DFA0BC();

  v19 = [v17 predicateForContactsWithIdentifiers_];

  [v11 setPredicate_];
  sub_199DF81AC();
  v20 = sub_199DF802C();
  v21 = sub_199DFA30C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v65[0] = v23;
    *v22 = 134218242;
    *(v22 + 4) = *(v8 + 16);

    *(v22 + 12) = 2080;
    v24 = sub_199DFA25C();
    v26 = sub_199A9BE90(v24, v25, v65);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_199A75000, v20, v21, "Contact Cache will attempt to fetch %ld contacts. (%s)", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x19A8FA1A0](v23, -1, -1);
    MEMORY[0x19A8FA1A0](v22, -1, -1);
  }

  else
  {
  }

  v27 = *(v2 + 24);
  v65[0] = 0;
  v28 = [v27 executeFetchRequest:v11 error:v65];
  if (v28)
  {
    v29 = v28;
    v30 = v65[0];
    v65[0] = [v29 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73560, &unk_199E40730);
    swift_dynamicCast();
    v14 = v64;
    v58 = v64 >> 62;
    v59 = v29;
    v60 = v11;
    v12 = v2;
    if (v64 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
    {
      v32 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x19A8F8520](v32, v14);
        }

        else
        {
          if (v32 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v33 = *(v14 + 8 * v32 + 32);
        }

        v34 = v33;
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v36 = [v33 identifier];
        if (!v36)
        {
          __break(1u);
        }

        v37 = v36;
        [*(v12 + 16) setObject:v34 forKeyedSubscript:v36];

        ++v32;
        if (v35 == i)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:

    v49 = [*(v12 + 16) allKeys];
    sub_199AD6AFC();
    v50 = sub_199DFA0CC();

    v51 = sub_199B72E8C(v50);

    v52 = sub_199AFD79C(v51);

    *(v12 + v61) = v52;

    sub_199DF81AC();
    v53 = sub_199DF802C();
    v54 = sub_199DFA30C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      v56 = v62;
      if (v58)
      {
        v57 = sub_199DFA87C();
      }

      else
      {
        v57 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v55 + 4) = v57;

      _os_log_impl(&dword_199A75000, v53, v54, "Contact Cache did fetch %ld contacts.", v55, 0xCu);
      MEMORY[0x19A8FA1A0](v55, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v56 = v62;
    }

    return [v56 unlock];
  }

  else
  {
    v38 = v11;
    v39 = v65[0];

    v40 = sub_199DF717C();

    swift_willThrow();
    v41 = v40;
    v42 = sub_199DF802C();
    v43 = sub_199DFA31C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v65[0] = v45;
      *v44 = 136315138;
      swift_getErrorValue();
      v46 = sub_199DFAA0C();
      v48 = sub_199A9BE90(v46, v47, v65);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_199A75000, v42, v43, "Contact Cache failed to load contacts. %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x19A8FA1A0](v45, -1, -1);
      MEMORY[0x19A8FA1A0](v44, -1, -1);
    }

    else
    {
    }

    return [v62 unlock];
  }
}

uint64_t sub_199AD6918()
{
  v1 = OBJC_IVAR____TtC10ContactsUI32CNUIDuplicatesContactStoreFacade_logger;
  v2 = sub_199DF804C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CNUIDuplicatesContactStoreFacade(uint64_t a1)
{
  result = qword_1EAF73548;
  if (!qword_1EAF73548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AD6A40(uint64_t a1)
{
  result = sub_199DF804C();
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

unint64_t sub_199AD6AFC()
{
  result = qword_1EAF73568;
  if (!qword_1EAF73568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF73568);
  }

  return result;
}

void *sub_199AD6B48(void *a1, uint64_t a2, void *a3)
{
  v3[2] = [objc_allocWithZone(MEMORY[0x1E6996660]) init];
  v3[4] = [objc_allocWithZone(MEMORY[0x1E6996878]) init];
  sub_199DF803C();
  *(v3 + OBJC_IVAR____TtC10ContactsUI32CNUIDuplicatesContactStoreFacade_cachedIdentifiers) = MEMORY[0x1E69E7CD0];
  v3[3] = a1;
  *(v3 + OBJC_IVAR____TtC10ContactsUI32CNUIDuplicatesContactStoreFacade_keysToFetch) = a2;
  v7 = a1;
  sub_199AD60FC(a3);
  return v3;
}

char *sub_199AD6C84(double a1, double a2, double a3, double a4)
{
  v9 = sub_199DFA55C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_199DFA5EC();
  v13 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  *&v4[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_avatarPosterPair] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButton] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButtonDimension] = 0x4051000000000000;
  v19 = type metadata accessor for CNAvatarPosterPairRemovalView();
  v36.receiver = v4;
  v36.super_class = v19;
  v20 = objc_msgSendSuper2(&v36, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 systemRedColor];
  sub_199DFA5DC();
  v24 = sub_199DF9F5C();
  v25 = [objc_opt_self() systemImageNamed_];

  sub_199DFA5CC();
  v26 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:27.0];
  sub_199DFA52C();
  (*(v10 + 104))(v12, *MEMORY[0x1E69DC508], v9);
  sub_199DFA56C();
  v27 = v23;
  sub_199DFA5AC();
  v28 = [v27 colorWithAlphaComponent_];
  sub_199DFA59C();
  sub_199A7A02C(0, &qword_1EAF73590, 0x1E69DC738);
  v29 = v35;
  (*(v13 + 16))(v15, v18, v35);
  sub_199A7A02C(0, &unk_1EAF75C50, 0x1E69DC628);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_199DFA51C();
  v30 = sub_199DFA5FC();
  [v30 setOverrideUserInterfaceStyle_];
  v31 = sub_199DF9F5C();
  [v30 setAccessibilityIdentifier_];

  [v30 setTintAdjustmentMode_];
  [v22 addSubview_];

  (*(v13 + 8))(v18, v29);
  v32 = *&v22[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButton];
  *&v22[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButton] = v30;

  return v22;
}

void sub_199AD7118(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_avatarPosterPair);
    if (v4 && swift_unknownObjectWeakLoadStrong())
    {
      v5 = v4;
      sub_199B63A58(v3, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_199AD7288(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CNAvatarPosterPairRemovalView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v3 = *&v2[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButton];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    CGRectGetMidX(v7);
    [v2 bounds];
    CGRectGetMidY(v8);
    v5 = [v2 traitCollection];
    [v5 displayScale];

    UIRectCenteredAboutPointScale();
    [v4 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id sub_199AD73D4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CNAvatarPosterPairRemovalView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_199AD7490()
{
  v1 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentManager;
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentManager);
  }

  else
  {
    v4 = [objc_allocWithZone(CNSensitiveContentAnalysisManager) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_199AD7524()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 bounds];
  v6 = v5;

  if (v6 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v0 mainScreen];
  [v8 bounds];
  v10 = v9;

  v11 = [v0 mainScreen];
  [v11 bounds];
  v13 = v12;

  if (v10 > v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  return v7 / v14;
}

char *sub_199AD7620(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for CNAvatarPosterPairViewModel()) init];
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModelSubscriber] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentManager] = 0;
  v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_showShadow] = 0;
  v10 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_displaySessionUUID;
  v11 = sub_199DF729C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_pairConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_avatarOnlyConstraints] = v12;
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___posterImageView] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___avatarVC] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentBlurView] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for CNAvatarPosterPairView(0);
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  sub_199AD7D84();
  v14 = *&v13[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel];
  sub_199ADA6A8(&qword_1EAF73610, type metadata accessor for CNAvatarPosterPairViewModel, &unk_199E4274C);
  v15 = v14;
  sub_199DF83BC();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_199DF83EC();
  v16 = sub_199DF848C();

  *&v13[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModelSubscriber] = v16;

  return v13;
}
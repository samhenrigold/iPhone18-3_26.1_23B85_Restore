uint64_t AddressingViewModel.init(headerImageData:headerTitle:loadingText:supplementaryText:userInfoText:primaryButtonText:secondaryButtonText:shouldAllowEmptyAddresses:userDidClickPrimaryButton:userDidClickSecondaryButton:userDidClickShowContactPicker:userDidChangeAddresses:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = v23;
  v80 = a8;
  v79 = a7;
  v78 = a6;
  v77 = a5;
  v76 = a4;
  v75 = a3;
  v99 = a1;
  v100 = a2;
  v94 = a22;
  v95 = a23;
  v96 = a20;
  v97 = a21;
  v98 = a18;
  v103 = a17;
  v101 = a19;
  v102 = a16;
  v87 = a15;
  v86 = a14;
  v85 = a13;
  v84 = a12;
  v83 = a11;
  v82 = a10;
  v81 = a9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v74 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F80, &unk_243B75080);
  v92 = *(v26 - 8);
  v93 = v26;
  MEMORY[0x28223BE20](v26);
  v91 = &v74 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v74 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v74 - v34;
  v36 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v104 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DF0, &unk_243B74B80);
  sub_243B6FBFC();
  (*(v33 + 32))(v24 + v36, v35, v32);
  *(v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 0;
  v37 = (v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  LOBYTE(v104) = 1;
  sub_243B6FBFC();
  (*(v29 + 32))(v24 + v38, v31, v28);
  v39 = v100;
  swift_unknownObjectWeakInit();
  *(v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_store) = MEMORY[0x277D84FA0];
  if (v39 >> 60 == 15)
  {
    swift_beginAccess();
    (*(v33 + 8))(v24 + v36, v32);
    v108 = 0;
    sub_243B6FBFC();
    swift_endAccess();
  }

  else
  {
    v40 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v41 = v99;
    sub_243B584CC(v99, v39);
    sub_243B58478(v41, v39);
    v42 = sub_243B6FA9C();
    v43 = [v40 initWithData_];

    sub_243B58410(v41, v39);
    swift_beginAccess();
    (*(v33 + 8))(v24 + v36, v32);
    v108 = v43;
    sub_243B6FBFC();
    swift_endAccess();
    sub_243B58410(v41, v39);
  }

  if (v76)
  {
    v44 = v75;
  }

  else
  {
    v44 = 0;
  }

  v45 = 0xE000000000000000;
  if (v76)
  {
    v46 = v76;
  }

  else
  {
    v46 = 0xE000000000000000;
  }

  swift_beginAccess();
  v108 = v44;
  v109 = v46;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v104 = 0;
  v105 = 0xE000000000000000;
  v106 = 0;
  v107 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FA0, &unk_243B750A0);
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v108 = 0;
  v109 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  if (v78)
  {
    v47 = v77;
  }

  else
  {
    v47 = 0;
  }

  if (v78)
  {
    v48 = v78;
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  swift_beginAccess();
  v108 = v47;
  v109 = v48;
  sub_243B6FBFC();
  swift_endAccess();
  if (v80)
  {
    v49 = v79;
  }

  else
  {
    v49 = 0;
  }

  if (v80)
  {
    v50 = v80;
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  swift_beginAccess();
  v108 = v49;
  v109 = v50;
  sub_243B6FBFC();
  swift_endAccess();
  if (v82)
  {
    v51 = v81;
  }

  else
  {
    v51 = 0;
  }

  if (v82)
  {
    v52 = v82;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  swift_beginAccess();
  v108 = v51;
  v109 = v52;
  sub_243B6FBFC();
  swift_endAccess();
  if (v84)
  {
    v53 = v83;
  }

  else
  {
    v53 = 0;
  }

  if (v84)
  {
    v54 = v84;
  }

  else
  {
    v54 = 0xE000000000000000;
  }

  swift_beginAccess();
  v108 = v53;
  v109 = v54;
  sub_243B6FBFC();
  swift_endAccess();
  v55 = (v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  v57 = v102;
  v56 = v103;
  *v55 = v102;
  v55[1] = v56;
  if (v86)
  {
    v58 = v85;
  }

  else
  {
    v58 = 0;
  }

  if (v86)
  {
    v45 = v86;
  }

  swift_beginAccess();
  v108 = v58;
  v109 = v45;
  sub_243B2E364(v57, v56);
  sub_243B6FBFC();
  swift_endAccess();
  v59 = (v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick);
  v61 = v97;
  v60 = v98;
  v62 = v101;
  *v59 = v98;
  v59[1] = v62;
  v63 = *v37;
  v64 = v37[1];
  v65 = v96;
  *v37 = v96;
  v37[1] = v61;
  sub_243B2E364(v60, v62);
  sub_243B2E364(v65, v61);
  sub_243B2BFCC(v63, v64);
  v66 = (v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
  v68 = v94;
  v67 = v95;
  *v66 = v94;
  v66[1] = v67;
  swift_beginAccess();
  v108 = MEMORY[0x277D84F90];
  sub_243B2E364(v68, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  sub_243B6FBFC();
  *(v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) = v87 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  v69 = v88;
  sub_243B6FC0C();
  swift_endAccess();

  sub_243B2E680(&qword_27EDA2E00, &qword_27EDA2DE8, &unk_243B74B70, MEMORY[0x277CBCEC8]);
  sub_243B30A50();
  v70 = v90;
  v71 = v91;
  sub_243B6FC6C();
  (*(v89 + 8))(v69, v70);
  swift_allocObject();
  swift_weakInit();
  sub_243B2E680(&qword_27EDA2E08, &unk_27EDA2F80, &unk_243B75080, MEMORY[0x277CBCBE0]);
  v72 = v93;
  sub_243B6FC7C();

  (*(v92 + 8))(v71, v72);
  swift_beginAccess();
  sub_243B6FBDC();
  swift_endAccess();

  sub_243B2BFCC(v68, v67);
  sub_243B2BFCC(v65, v61);
  sub_243B2BFCC(v60, v101);
  sub_243B2BFCC(v102, v103);
  sub_243B58410(v99, v100);
  return v24;
}

uint64_t sub_243B5834C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_243B58384(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
    if (v5)
    {
      v5(v2);
    }
  }

  return result;
}

double sub_243B58410(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243B58424(a1, a2);
  }

  return result;
}

double sub_243B58424(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_243B58478(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_243B584CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243B58478(result, a2);
  }

  return result;
}

void sub_243B584E0(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_20;
  }

  v3 = a1;
  v4 = [v3 emailAddresses];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2E20, &qword_243B74BA0);
  v6 = sub_243B7089C();

  if (v6 >> 62)
  {
    if (sub_243B70C0C())
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x245D49BC0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_51:
      if (sub_243B70C0C())
      {
        goto LABEL_13;
      }

      goto LABEL_52;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v8 value];

  if (v9)
  {
    sub_243B7082C();
    v10 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
    v11 = v3;
    v12 = sub_243B7080C();

    v13 = [v10 initWithContact:v11 address:v12 kind:0];

LABEL_17:
    if (v13)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong addRecipient_];
    }

LABEL_20:
    if (!a2)
    {
      goto LABEL_53;
    }

    goto LABEL_21;
  }

LABEL_11:
  v14 = [v3 phoneNumbers];
  v5 = sub_243B7089C();

  if (v5 >> 62)
  {
    goto LABEL_51;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x245D49BC0](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v15 = *(v5 + 32);
    }

    v16 = v15;

    v17 = [v16 value];

    v18 = [v17 stringValue];
    sub_243B7082C();

    v19 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
    v20 = v3;
    v12 = sub_243B7080C();

    v13 = [v19 initWithContact:v20 address:v12 kind:1];
    goto LABEL_17;
  }

LABEL_52:

  if (!a2)
  {
    goto LABEL_53;
  }

LABEL_21:
  v22 = a2;
  v23 = [v22 key];
  v24 = sub_243B7082C();
  v26 = v25;

  if (v24 == sub_243B7082C() && v26 == v27)
  {

LABEL_28:
    if ([v22 value])
    {
      sub_243B70B1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    v49 = v47;
    v50 = v48;
    if (*(&v48 + 1))
    {
      if (swift_dynamicCast())
      {
        v30 = [v22 contact];
        v31 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
        v32 = sub_243B7080C();

        v33 = [v31 initWithContact:v30 address:v32 kind:0];
        goto LABEL_45;
      }
    }

    else
    {
      sub_243B58B78(&v49);
    }

    goto LABEL_35;
  }

  v29 = sub_243B70C6C();

  if (v29)
  {
    goto LABEL_28;
  }

LABEL_35:
  v34 = [v22 key];
  v35 = sub_243B7082C();
  v37 = v36;

  if (v35 == sub_243B7082C() && v37 == v38)
  {
  }

  else
  {
    v39 = sub_243B70C6C();

    if ((v39 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  if ([v22 value])
  {
    sub_243B70B1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (*(&v48 + 1))
  {
    sub_243B58BE0();
    if (swift_dynamicCast())
    {
      v40 = [v46 stringValue];

      sub_243B7082C();
      v30 = [v22 contact];
      v41 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
      v32 = sub_243B7080C();

      v33 = [v41 initWithContact:v30 address:v32 kind:1];
LABEL_45:
      v42 = v33;

      if (v42)
      {
        v43 = swift_unknownObjectWeakLoadStrong();
        [v43 addRecipient_];

        goto LABEL_53;
      }
    }

LABEL_47:

    goto LABEL_53;
  }

  sub_243B58B78(&v49);
LABEL_53:
  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = v44;
    [v44 becomeFirstResponder];
  }
}

uint64_t sub_243B58B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2E10, &qword_243B74B98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243B58BE0()
{
  result = qword_27EDA2E18;
  if (!qword_27EDA2E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDA2E18);
  }

  return result;
}

uint64_t sub_243B58C2C(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14)
{
  v14 = a8;
  v15 = a7;
  v17 = a5;
  if (a2 >> 60 == 15)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v49 = 0;

    sub_243B6FC4C();
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_243B584CC(a1, a2);
    sub_243B58478(a1, a2);
    v24 = sub_243B6FA9C();
    v25 = [v23 initWithData_];

    sub_243B58410(a1, a2);
    swift_getKeyPath();
    swift_getKeyPath();
    v49 = v25;

    v26 = v25;
    sub_243B6FC4C();
    v27 = a1;
    v17 = a5;
    v14 = a8;
    sub_243B58410(v27, a2);

    v15 = a7;
  }

  if (a4)
  {
    v28 = a3;
  }

  else
  {
    v28 = 0;
  }

  if (a4)
  {
    v29 = a4;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v28 && v50 == v29)
  {
  }

  else
  {
    v30 = sub_243B70C6C();

    if (v30)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v28;
      v50 = v29;

      sub_243B6FC4C();
    }
  }

  if (a6)
  {
    v31 = v17;
  }

  else
  {
    v31 = 0;
  }

  if (a6)
  {
    v32 = a6;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v31 && v50 == v32)
  {
  }

  else
  {
    v33 = sub_243B70C6C();

    if (v33)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v31;
      v50 = v32;

      sub_243B6FC4C();
    }
  }

  if (v14)
  {
    v34 = v15;
  }

  else
  {
    v34 = 0;
  }

  if (v14)
  {
    v35 = v14;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v34 && v50 == v35)
  {
  }

  else
  {
    v36 = sub_243B70C6C();

    if (v36)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v34;
      v50 = v35;

      sub_243B6FC4C();
    }
  }

  if (a10)
  {
    v37 = a9;
  }

  else
  {
    v37 = 0;
  }

  if (a10)
  {
    v38 = a10;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v37 && v50 == v38)
  {
  }

  else
  {
    v39 = sub_243B70C6C();

    if (v39)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v37;
      v50 = v38;

      sub_243B6FC4C();
    }
  }

  if (a12)
  {
    v40 = a11;
  }

  else
  {
    v40 = 0;
  }

  if (a12)
  {
    v41 = a12;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v40 && v50 == v41)
  {
  }

  else
  {
    v42 = sub_243B70C6C();

    if (v42)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v40;
      v50 = v41;

      sub_243B6FC4C();
    }
  }

  if (a14)
  {
    v43 = a13;
  }

  else
  {
    v43 = 0;
  }

  if (a14)
  {
    v44 = a14;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v43 && v50 == v44)
  {
  }

  else
  {
    v46 = sub_243B70C6C();

    if (v46)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_243B6FC4C();
    }
  }
}

uint64_t AddressingViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerTitle;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__yourNameAndEmail;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D88, &qword_243B74908);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v5(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__inputText, v4);
  v5(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__loadingText, v4);
  v5(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__supplementaryText, v4);
  v5(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__userInfoText, v4);
  v5(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__primaryButtonText, v4);
  v8 = sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick), *(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick + 8));
  (v5)(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__secondaryButtonText, v4, v8);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick), *(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick + 8));
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick), *(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick + 8));
  v9 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__addresses;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  MEMORY[0x245D4A610](v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_contactsSearchController);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange), *(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange + 8));

  return v0;
}

uint64_t AddressingViewModel.__deallocating_deinit()
{
  AddressingViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_243B596A4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AddressingViewModel(0);
  result = sub_243B6FBEC();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AddressingViewModel(uint64_t a1)
{
  result = qword_27EDA2E28;
  if (!qword_27EDA2E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243B59974(uint64_t a1)
{
  sub_243B5A83C(319, &qword_27EDA2E38, &qword_27EDA2DF0, &unk_243B74B80);
  if (v1 <= 0x3F)
  {
    sub_243B5A7F0(319, &qword_27EDA2E40, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_243B5A83C(319, &qword_27EDA2E48, &unk_27EDA2FA0, &unk_243B750A0);
      if (v3 <= 0x3F)
      {
        sub_243B5A7F0(319, &qword_27EDA2E50, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_243B5A83C(319, &qword_27EDA2E58, &qword_27EDA2118, &qword_243B74B90);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_243B5A7F0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_243B6FC5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_243B5A83C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_243B6FC5C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_243B5A89C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_243B6FA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2828, &unk_243B738E0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F18, &qword_243B74EE0);
    v15 = swift_allocError();
    *v16 = a4;
    v17 = a4;
    v18 = v14;
    v19 = v15;
  }

  else
  {
    sub_243B6FA7C();
    v18 = (*(v8 + 32))(v13, v10, v7);
    if (a3)
    {
      *&v13[*(v11 + 48)] = a3;
      v20 = *(*(v14 + 64) + 40);
      v21 = a3;
      sub_243B304EC(v13, v20, &qword_27EDA2828, &unk_243B738E0);
      return swift_continuation_throwingResume();
    }

    __break(1u);
  }

  return MEMORY[0x282200958](v18, v19);
}

void sub_243B5AAB0()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA4FB0 = v2;
  *algn_27EDA4FB8 = v4;
}

void sub_243B5AB7C()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA4FC0 = v2;
  *algn_27EDA4FC8 = v4;
}

void sub_243B5AC48()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA4FD0 = v2;
  *algn_27EDA4FD8 = v4;
}

void sub_243B5AD14()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA4FE0 = v2;
  *algn_27EDA4FE8 = v4;
}

void sub_243B5ADE4()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA4FF0 = v2;
  *algn_27EDA4FF8 = v4;
}

void sub_243B5AEA8()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5000 = v2;
  *algn_27EDA5008 = v4;
}

void sub_243B5AF74()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5010 = v2;
  *algn_27EDA5018 = v4;
}

void sub_243B5B040()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5020 = v2;
  *algn_27EDA5028 = v4;
}

void sub_243B5B100()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5030 = v2;
  *algn_27EDA5038 = v4;
}

void sub_243B5B1D0()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5040 = v2;
  *algn_27EDA5048 = v4;
}

void sub_243B5B298()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5050 = v2;
  *algn_27EDA5058 = v4;
}

void sub_243B5B368()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5060 = v2;
  *algn_27EDA5068 = v4;
}

uint64_t sub_243B5B448@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange);
  v5 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_243B68F90;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_243B2E364(v4, v5);
}

double sub_243B5B540(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_243B68F94;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_243B2E364(v2, v3);
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();
  sub_243B2BFCC(v5, v4);

  return result;
}

uint64_t sub_243B5B6B0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = (v2 + *a2);
  v5 = *v4;
  sub_243B2E364(*v4, v4[1]);
  return v5;
}

uint64_t sub_243B5B768@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onAppear);
  v5 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onAppear + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_243B68CD4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_243B2E364(v4, v5);
}

double sub_243B5B860(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_243B68CD0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_243B2E364(v2, v3);
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();
  sub_243B2BFCC(v5, v4);

  return result;
}

uint64_t sub_243B5B9F8()
{
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();
}

double sub_243B5BAA4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  return result;
}

uint64_t sub_243B5BBE0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v3 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel;
  swift_beginAccess();
  return sub_243B2E06C(v5 + v3, a1, &qword_27EDA1E00, &unk_243B73660);
}

uint64_t sub_243B5BCB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_243B2E06C(a2, &v9 - v5, &qword_27EDA1E00, &unk_243B73660);
  v7 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel;
  swift_beginAccess();
  sub_243B2E0D4(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_243B5BDA8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  return *(v2 + *a2);
}

void sub_243B5BE70(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }
}

uint64_t sub_243B5BF74()
{
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  return *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus);
}

double sub_243B5C01C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  return result;
}

uint64_t (*sub_243B5C128(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_243B5C1B0;
}

void sub_243B5C1B0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    swift_getKeyPath();
    *v3 = v4;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAFC();

    v5 = *(v4 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange);
    if (v5)
    {
      v7 = v3[3];
      v6 = v3[4];
      v8 = *(v4 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange + 8);
      swift_getKeyPath();
      *v3 = v7;

      sub_243B6FAFC();

      v5(*(v7 + v6));
      sub_243B2BFCC(v5, v8);
    }
  }

  free(v3);
}

uint64_t sub_243B5C2F8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v1 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t type metadata accessor for CreateiCloudLinkViewModel(uint64_t a1)
{
  result = qword_27EDA2EE0;
  if (!qword_27EDA2EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_243B5C408(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
    swift_getKeyPath();
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAFC();

    v7 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange);
    if (v7)
    {
      v8 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange + 8);
      swift_getKeyPath();

      sub_243B6FAFC();

      v7(*(v2 + v4));
      return sub_243B2BFCC(v7, v8);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  return result;
}

double sub_243B5C61C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  *(a1 + v4) = a2;
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v6 = *(a1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange);
  if (v6)
  {
    v7 = *(a1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange + 8);
    swift_getKeyPath();

    sub_243B6FAFC();

    v6(*(a1 + v4));
    return sub_243B2BFCC(v6, v7);
  }

  return result;
}

uint64_t (*sub_243B5C794(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_243B6FB1C();

  v4[7] = sub_243B5C128(v4);
  return sub_243B5C8CC;
}

void sub_243B5C8CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_243B6FB0C();

  free(v1);
}

uint64_t sub_243B5C9E8()
{
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);

  return v1;
}

uint64_t sub_243B5CAA4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);
  v6 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText) == a1 && *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText + 8) == a2;
  if (v6 || (sub_243B70C6C() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }
}

id sub_243B5CC10()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel____lazy_storage___contactPickerDelegate;
  if (*(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel____lazy_storage___contactPickerDelegate))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel____lazy_storage___contactPickerDelegate);
  }

  else
  {
    swift_getKeyPath();
    v10 = v0;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    v3 = v0;
    sub_243B6FAFC();

    v4 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
    v5 = type metadata accessor for ContactPickerDelegateAdapter();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC14CloudSharingUI28ContactPickerDelegateAdapter_addressingViewModel] = v4;
    v9.receiver = v6;
    v9.super_class = v5;

    v7 = objc_msgSendSuper2(&v9, sel_init);
    *(v3 + v1) = v7;
    v2 = v7;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t CreateiCloudLinkViewModel.__allocating_init(fileURL:optionsGroups:dismissAction:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_243B6744C(a1, a2, a3, a4);

  return v8;
}

uint64_t CreateiCloudLinkViewModel.init(fileURL:optionsGroups:dismissAction:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_243B6744C(a1, a2, a3, a4);

  return v4;
}

double sub_243B5CDE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_243B630F8();
  }

  return result;
}

uint64_t sub_243B5CE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_243B708FC();
  v4[4] = sub_243B708EC();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_243B5CEEC;

  return sub_243B651D8();
}

uint64_t sub_243B5CEEC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_243B5D02C;

  return sub_243B5E36C();
}

uint64_t sub_243B5D02C()
{

  v1 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B5D168, v1, v0);
}

uint64_t sub_243B5D168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CreateiCloudLinkViewModel.__allocating_init(fileURL:optionsGroups:dismissAction:onPermissionChange:onAppear:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26[1] = a4;
  v27 = a8;
  v29 = a1;
  v28 = sub_243B6FA8C();
  v30 = *(v28 - 8);
  v15 = MEMORY[0x28223BE20](v28);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, v15);
  type metadata accessor for CreateiCloudLinkViewModel(0);
  swift_allocObject();
  v19 = sub_243B6744C(v17, a2, a3, a4);
  swift_getKeyPath();
  v34 = v19;
  v35 = a5;
  v36 = a6;
  v37 = v19;

  v20 = a5;
  v21 = a5;
  v22 = a6;
  sub_243B2E364(v20, a6);
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();
  sub_243B2BFCC(v21, a6);

  swift_getKeyPath();
  v31 = v19;
  v32 = a7;
  v23 = a7;
  v24 = v27;
  v33 = v27;
  v37 = v19;
  sub_243B6FAEC();
  sub_243B2BFCC(v23, v24);

  sub_243B2BFCC(v21, v22);

  (*(v30 + 8))(v29, v28);

  return v19;
}

void *sub_243B5D470(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v4 = *(v1 + 16);

  if (v4)
  {
    if (a1)
    {
      swift_getKeyPath();
      sub_243B6FAFC();

      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v6 = result;
      v7 = [result recipients];

      sub_243B2E534(0, &unk_27EDA2F70, 0x277CFBCA0);
      v8 = sub_243B7089C();

      *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_recipients) = v8;
    }

    v9 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_recipients;
    v10 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_recipients);
    if (v10 >> 62)
    {
      result = sub_243B70C0C();
      v11 = result;
      if (result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_7:
        v16 = v9;
        if (v11 < 1)
        {
          __break(1u);
          return result;
        }

        v12 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x245D49BC0](v12, v10);
          }

          else
          {
            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          ++v12;
          swift_getKeyPath();
          sub_243B6FAFC();

          Strong = swift_unknownObjectWeakLoadStrong();
          [Strong addRecipient_];
        }

        while (v11 != v12);

        v9 = v16;
      }
    }

    *(v2 + v9) = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_243B5D768()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v52 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v52 - v6;
  v7 = sub_243B6FB9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v55 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v52 - v11;
  MEMORY[0x28223BE20](v12);
  v57 = &v52 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  sub_243B6FB6C();
  swift_retain_n();
  v17 = sub_243B6FB8C();
  v18 = sub_243B709AC();
  v19 = os_log_type_enabled(v17, v18);
  v53 = v4;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v54 = v7;
    v21 = v20;
    *v20 = 67109632;
    swift_getKeyPath();
    v59 = v8;
    v61 = v0;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAFC();

    v22 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
    swift_beginAccess();
    v21[1] = *(v1 + v22);

    *(v21 + 4) = 1024;
    swift_getKeyPath();
    v61 = v1;
    sub_243B6FAFC();

    *(v21 + 10) = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit);

    *(v21 + 7) = 1024;
    swift_getKeyPath();
    v61 = v1;
    v8 = v59;
    sub_243B6FAFC();

    v21[4] = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canInviteOthers);

    _os_log_impl(&dword_243B1E000, v17, v18, "Permissions: isPublic=%{BOOL}d canEdit=%{BOOL}d canInviteOthers=%{BOOL}d", v21, 0x14u);
    v23 = v21;
    v7 = v54;
    MEMORY[0x245D4A570](v23, -1, -1);
  }

  else
  {
  }

  v26 = *(v8 + 8);
  v25 = v8 + 8;
  v24 = v26;
  v26(v16, v7);
  swift_getKeyPath();
  v61 = v1;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v27 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  if ((*(v1 + v27) & 1) == 0)
  {
    swift_getKeyPath();
    v60 = v1;
    sub_243B6FAFC();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_243B6FC3C();

    v28 = *(v60 + 16);

    if (!v28)
    {
      v37 = v57;
      sub_243B6FB6C();
      v38 = sub_243B6FB8C();
      v39 = sub_243B709CC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        MEMORY[0x245D4A570](v40, -1, -1);
      }

      v33 = v37;
      goto LABEL_20;
    }
  }

  swift_getKeyPath();
  v60 = v1;
  sub_243B6FAFC();

  if (*(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) == 1)
  {
    v29 = v58;
    sub_243B6FB6C();
    v30 = sub_243B6FB8C();
    v31 = sub_243B709AC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_243B1E000, v30, v31, "Share file action is already in progress. Bailing.", v32, 2u);
      MEMORY[0x245D4A570](v32, -1, -1);
    }

    v33 = v29;
LABEL_20:
    v24(v33, v7);
    return;
  }

  v59 = v25;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v52 - 2) = v1;
  *(&v52 - 8) = 1;
  v60 = v1;
  sub_243B6FAEC();

  swift_getKeyPath();
  v60 = v1;
  sub_243B6FAFC();

  v35 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus;
  v36 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus);
  if (v36 > 3)
  {
    if (v36 != 4)
    {
      if (v36 == 6)
      {
        sub_243B60EC0();
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    v41 = v56;
    sub_243B7090C();
    v42 = sub_243B7092C();
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    sub_243B708FC();

    v43 = sub_243B708EC();
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D85700];
    v44[2] = v43;
    v44[3] = v45;
    v44[4] = v1;
    sub_243B3EF48(0, 0, v41, &unk_243B75048, v44);

    return;
  }

  if (v36 == 2)
  {
    goto LABEL_21;
  }

  if (v36 == 3)
  {
    sub_243B5F1CC();
    return;
  }

LABEL_22:
  sub_243B6FB6C();

  v46 = sub_243B6FB8C();
  v47 = sub_243B709CC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    swift_getKeyPath();
    v54 = v7;
    v60 = v1;
    sub_243B6FAFC();
    v7 = v54;

    *(v48 + 4) = *(v1 + v35);

    _os_log_impl(&dword_243B1E000, v46, v47, "This item cannot be shared. shareItemStatus: %ld", v48, 0xCu);
    MEMORY[0x245D4A570](v48, -1, -1);
  }

  else
  {
  }

  v49 = v53;
  v24(v55, v7);
  v50 = sub_243B6FA8C();
  (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
  v51 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:0];
  sub_243B6253C(v49, 0, v51);

  sub_243B2E620(v49, &qword_27EDA2F48, &unk_243B74F70);
}

uint64_t sub_243B5E124()
{
  v0[2] = sub_243B708FC();
  v0[3] = sub_243B708EC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_243B5E1D0;

  return sub_243B5F410();
}

uint64_t sub_243B5E1D0()
{

  v1 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B5E30C, v1, v0);
}

uint64_t sub_243B5E30C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243B5E36C()
{
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  v1[20] = swift_task_alloc();
  v2 = sub_243B6FB9C();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = sub_243B708FC();
  v1[28] = sub_243B708EC();
  v4 = sub_243B708DC();
  v1[29] = v4;
  v1[30] = v3;

  return MEMORY[0x2822009F8](sub_243B5E4C0, v4, v3);
}

uint64_t sub_243B5E4C0(uint64_t a1)
{
  sub_243B6FB6C();
  v2 = sub_243B6FB8C();
  v3 = sub_243B709AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_243B1E000, v2, v3, "Fetching sharing status...", v4, 2u);
    MEMORY[0x245D4A570](v4, -1, -1);
  }

  v5 = v1[26];
  v6 = v1[21];
  v7 = v1[22];

  v8 = *(v7 + 8);
  v1[31] = v8;
  v8(v5, v6);
  v9 = objc_opt_self();
  v1[32] = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_fileURL;
  v10 = sub_243B6FA5C();
  v1[33] = v10;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_243B5E6B4;
  v11 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F68, &qword_243B75000);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_243B5EF2C;
  v1[13] = &block_descriptor_148;
  v1[14] = v11;
  [v9 sharingStatusForFileOrFolderURL:v10 completionHandler:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_243B5E6B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_243B5ECD4;
  }

  else
  {
    v5 = sub_243B5E7E4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_243B5E7E4()
{
  v1 = *(v0 + 144);

  sub_243B6FB6C();
  v2 = sub_243B6FB8C();
  v3 = sub_243B709AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_243B1E000, v2, v3, "Fetched share status: %ld", v4, 0xCu);
    MEMORY[0x245D4A570](v4, -1, -1);
  }

  v5 = *(v0 + 248);
  v6 = *(v0 + 200);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);

  v5(v6, v7);
  v10 = sub_243B7092C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);

  v11 = sub_243B708EC();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = v1;
  sub_243B3EF48(0, 0, v8, &unk_243B75010, v12);

  if (v1 <= 6 && ((1 << v1) & 0x58) != 0)
  {

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    sub_243B6FB6C();
    v16 = sub_243B6FB8C();
    v17 = sub_243B709DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_243B1E000, v16, v17, "CreateiCloudLinkViewModel detected share with insufficient permissions for the create iCloud link flow. Copying the existing URL and exiting. This will look weird to the user. Please use the CopyiCloudLink flow for these types of files.", v18, 2u);
      MEMORY[0x245D4A570](v18, -1, -1);
    }

    v19 = *(v0 + 248);
    v20 = *(v0 + 192);
    v21 = *(v0 + 168);

    v19(v20, v21);
    v22 = swift_task_alloc();
    *(v0 + 280) = v22;
    *v22 = v0;
    v22[1] = sub_243B5EB1C;

    return sub_243B61B3C();
  }
}

uint64_t sub_243B5EB1C()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_243B5EC3C, v3, v2);
}

uint64_t sub_243B5EC3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243B5ECD4()
{
  v21 = v0;
  v1 = v0[33];

  swift_willThrow();

  sub_243B6FB6C();

  v2 = sub_243B6FB8C();
  v3 = sub_243B709AC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[34];
  if (v4)
  {
    v18 = v0[23];
    v19 = v0[31];
    v17 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    sub_243B6FA8C();
    sub_243B683C8(&unk_27EDA2F50, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v8 = sub_243B70C5C();
    v10 = sub_243B40EA8(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_243B1E000, v2, v3, "Failed to fetch sharing status for file/folder (%s). We will end up creating a new share.", v6, 0xCu);
    v11 = __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245D4A570](v7, -1, -1, v11);
    MEMORY[0x245D4A570](v6, -1, -1);

    v19(v18, v17);
  }

  else
  {
    v12 = v0[31];
    v13 = v0[23];
    v14 = v0[21];

    v12(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_243B5EF2C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F18, &qword_243B74EE0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_243B5EFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_243B708FC();
  v5[5] = sub_243B708EC();
  v7 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B5F090, v7, v6);
}

uint64_t sub_243B5F090()
{
  v1 = v0[4];
  v2 = v0[3];

  if (*(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus) != v1)
  {
    v4 = v0[3];
    v3 = v0[4];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v0[2] = v4;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_243B5F1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  sub_243B708FC();
  v7[10] = sub_243B708EC();
  v9 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B68F08, v9, v8);
}

uint64_t sub_243B5F29C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_243B6FA7C();
    v12 = sub_243B6FA8C();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_243B6FA8C();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_243B2E620(v10, &qword_27EDA2F48, &unk_243B74F70);
}

uint64_t sub_243B5F410()
{
  v1[27] = v0;
  v1[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2828, &unk_243B738E0);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v2 = sub_243B6FB9C();
  v1[31] = v2;
  v1[32] = *(v2 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  sub_243B708FC();
  v1[40] = sub_243B708EC();
  v4 = sub_243B708DC();
  v1[41] = v4;
  v1[42] = v3;

  return MEMORY[0x2822009F8](sub_243B5F594, v4, v3);
}

uint64_t sub_243B5F594(uint64_t a1)
{
  sub_243B6FB6C();
  v2 = sub_243B6FB8C();
  v3 = sub_243B709AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_243B1E000, v2, v3, "Fetching existing share...", v4, 2u);
    MEMORY[0x245D4A570](v4, -1, -1);
  }

  v5 = v1[39];
  v6 = v1[31];
  v7 = v1[32];
  v8 = v1[30];

  v9 = *(v7 + 8);
  v1[43] = v9;
  v9(v5, v6);
  v10 = objc_opt_self();
  v11 = sub_243B6FA5C();
  v1[44] = v11;
  v1[2] = v1;
  v1[7] = v8;
  v1[3] = sub_243B5F784;
  v12 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F60, &qword_243B74F80);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_243B5A89C;
  v1[13] = &block_descriptor_137;
  v1[14] = v12;
  [v10 existingShareForFileOrFolderURL:v11 completionHandler:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_243B5F784()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  v3 = *(v1 + 336);
  v4 = *(v1 + 328);
  if (v2)
  {
    v5 = sub_243B5FE78;
  }

  else
  {
    v5 = sub_243B5F8B4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_243B5F8B4()
{
  v1 = v0[44];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  sub_243B304EC(v2, v3, &qword_27EDA2828, &unk_243B738E0);
  v5 = *(v3 + *(v4 + 48));
  v6 = sub_243B6FA8C();
  (*(*(v6 - 8) + 8))(v3, v6);

  sub_243B6FB6C();
  v7 = sub_243B6FB8C();
  v8 = sub_243B709AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_243B1E000, v7, v8, "Share exist for file/folder . Adding participants.", v9, 2u);
    MEMORY[0x245D4A570](v9, -1, -1);
  }

  v10 = v0[43];
  v11 = v0[38];
  v12 = v0[31];

  v10(v11, v12);
  v13 = [v5 publicPermission];
  swift_getKeyPath();
  v14 = v0[27];
  if (v13 >= 2)
  {
    v0[26] = v14;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAFC();

    v15 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
    swift_beginAccess();
    if ((*(v14 + v15) & 1) == 0)
    {
      sub_243B6FB6C();
      v16 = sub_243B6FB8C();
      v17 = sub_243B709CC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_243B1E000, v16, v17, "Changing permission from public to private. Needs to show an alert to the user.", v18, 2u);
        MEMORY[0x245D4A570](v18, -1, -1);
      }

      v19 = v0[43];
      v20 = v0[37];
      v21 = v0[31];

      v19(v20, v21);
      sub_243B6007C();
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v0[24] = v14;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v22 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  if (*(v14 + v22) == 1)
  {
    sub_243B6FB6C();
    v23 = sub_243B6FB8C();
    v24 = sub_243B709AC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_243B1E000, v23, v24, "Changing permission from private to public. Calling shareFileOrFolderURL.", v25, 2u);
      MEMORY[0x245D4A570](v25, -1, -1);
    }

    v26 = v0[43];
    v27 = v0[36];
    goto LABEL_16;
  }

  v28 = v0[27];
  swift_getKeyPath();
  v0[25] = v28;
  sub_243B6FAFC();

  if (*(v14 + v22))
  {
LABEL_13:
    sub_243B6FB6C();
    v23 = sub_243B6FB8C();
    v29 = sub_243B709AC();
    if (os_log_type_enabled(v23, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_243B1E000, v23, v29, "Existing and new permissions are public. Calling shareFileOrFolderURL.", v30, 2u);
      MEMORY[0x245D4A570](v30, -1, -1);
    }

    v26 = v0[43];
    v27 = v0[34];
LABEL_16:
    v31 = v0[31];

    v26(v27, v31);
    sub_243B5F1CC();
    goto LABEL_17;
  }

  sub_243B6FB6C();
  v34 = sub_243B6FB8C();
  v35 = sub_243B709AC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_243B1E000, v34, v35, "Existing and new permission both are private, Adding participants.", v36, 2u);
    MEMORY[0x245D4A570](v36, -1, -1);
  }

  v37 = v0[43];
  v38 = v0[35];
  v39 = v0[31];

  v37(v38, v39);
  sub_243B607EC(v5);
LABEL_17:

  v32 = v0[1];

  return v32();
}

uint64_t sub_243B5FE78()
{
  v1 = v0[44];
  v2 = v0[45];

  swift_willThrow();

  sub_243B6FB6C();
  v3 = v2;
  v4 = sub_243B6FB8C();
  v5 = sub_243B709AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[45];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_243B1E000, v4, v5, "Failed to fetch existing share with error: %@. Trying to create new one...", v7, 0xCu);
    sub_243B2E620(v8, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v8, -1, -1);
    MEMORY[0x245D4A570](v7, -1, -1);
  }

  v11 = v0[45];
  v12 = v0[43];
  v13 = v0[33];
  v14 = v0[31];

  v12(v13, v14);
  sub_243B5F1CC();

  v15 = v0[1];

  return v15();
}

uint64_t sub_243B6007C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v0 - 8);
  v58 = &v54 - v1;
  v2 = type metadata accessor for AlertViewModelButton(0);
  v3 = (v2 - 8);
  v56 = *(v2 - 8);
  v57 = v56;
  MEMORY[0x28223BE20](v2);
  v55 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - v6;
  sub_243B700CC();
  v8 = sub_243B703AC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v3[8];
  sub_243B6FCAC();
  v16 = sub_243B6FCBC();
  v17 = *(*(v16 - 8) + 56);
  v17(&v7[v15], 0, 1, v16);
  sub_243B6FABC();
  v18 = &v7[v3[7]];
  *v18 = v8;
  *(v18 + 1) = v10;
  v18[16] = v12 & 1;
  *(v18 + 3) = v14;
  v19 = &v7[v3[9]];
  *v19 = sub_243B606B8;
  v19[1] = 0;
  sub_243B700CC();
  v20 = sub_243B703AC();
  v22 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;
  v26 = v55;
  v17(&v55[v3[8]], 1, 1, v16);
  v27 = v59;

  sub_243B6FABC();
  v28 = v26 + v3[7];
  *v28 = v20;
  *(v28 + 8) = v22;
  *(v28 + 16) = v10 & 1;
  *(v28 + 24) = v25;
  v29 = (v26 + v3[9]);
  *v29 = sub_243B68788;
  v29[1] = v27;
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = objc_opt_self();
  v32 = [v31 bundleForClass_];
  v33 = sub_243B6F9FC();
  v54 = v34;

  v35 = v26;
  v36 = [v31 bundleForClass_];
  v37 = sub_243B6F9FC();
  v39 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F08, &qword_243B723E0);
  v40 = *(v56 + 72);
  v41 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_243B71ED0;
  v43 = v42 + v41;
  sub_243B3EB64(v7, v43);
  sub_243B3EB64(v26, v43 + v40);
  v44 = v58;
  sub_243B6FABC();
  v45 = type metadata accessor for AlertViewModel(0);
  v46 = (v44 + v45[5]);
  v47 = v54;
  *v46 = v33;
  v46[1] = v47;
  v48 = (v44 + v45[6]);
  *v48 = v37;
  v48[1] = v39;
  *(v44 + v45[7]) = v42;
  (*(*(v45 - 1) + 56))(v44, 0, 1, v45);
  swift_getKeyPath();
  v49 = v59;
  v60 = v59;
  v61 = v44;
  v62 = v59;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();
  v50 = v49;

  sub_243B2E620(v44, &qword_27EDA1E00, &unk_243B73660);
  v51 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert;
  if (*(v50 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert) == 1)
  {
    sub_243B2E010(v35);
    result = sub_243B2E010(v7);
    *(v50 + v51) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v62 = v50;
    sub_243B6FAEC();

    sub_243B2E010(v35);
    return sub_243B2E010(v7);
  }

  return result;
}

uint64_t sub_243B606B8()
{
  v0 = sub_243B6FB9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v4 = sub_243B6FB8C();
  v5 = sub_243B709AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_243B1E000, v4, v5, "User cancelled the permission change alert. No action taken.", v6, 2u);
    MEMORY[0x245D4A570](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_243B607EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_243B6FB9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v8 = sub_243B6FB8C();
  v9 = sub_243B709AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_243B1E000, v8, v9, "Adding participants to existing share...", v10, 2u);
    MEMORY[0x245D4A570](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  swift_getKeyPath();
  aBlock[0] = v2;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v12 = sub_243B7088C();

  v13 = sub_243B7088C();
  sub_243B64398();
  sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
  v14 = sub_243B7088C();

  v15 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_243B68600;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243B5F29C;
  aBlock[3] = &block_descriptor_128;
  v16 = _Block_copy(aBlock);

  [v11 addParticipantsToShare:a1 containerSetupInfo:0 emailAddresses:v12 phoneNumbers:v13 optionsGroups:v14 completionHandler:v16];
  _Block_release(v16);
}

double sub_243B60B4C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = sub_243B7092C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_243B2E06C(a1, v14, &qword_27EDA2F48, &unk_243B74F70);
  sub_243B708FC();

  v19 = a2;
  v20 = a3;
  v21 = sub_243B708EC();
  v22 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v21;
  v24[3] = v25;
  v24[4] = a4;
  sub_243B304EC(v14, v24 + v22, &qword_27EDA2F48, &unk_243B74F70);
  *(v24 + v23) = a2;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_243B3F238(0, 0, v17, v28, v24);

  return result;
}

uint64_t sub_243B60D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  sub_243B708FC();
  v7[10] = sub_243B708EC();
  v9 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B60E14, v9, v8);
}

uint64_t sub_243B60E14()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_243B6253C(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243B60EC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v0 - 8);
  v58 = &v57 - v1;
  v2 = type metadata accessor for AlertViewModelButton(0);
  v57 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v59 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - v5;
  v7 = sub_243B6FB9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v11 = sub_243B6FB8C();
  v12 = sub_243B709CC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_243B1E000, v11, v12, "Unshared folder contains shared subitems. Asking user's permission to go ahead...", v13, 2u);
    MEMORY[0x245D4A570](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_243B700CC();
  v14 = sub_243B703AC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v2[6];
  sub_243B6FC8C();
  v22 = sub_243B6FCBC();
  v23 = *(*(v22 - 8) + 56);
  v23(&v6[v21], 0, 1, v22);
  v24 = v61;

  sub_243B6FABC();
  v25 = &v6[v2[5]];
  *v25 = v14;
  *(v25 + 1) = v16;
  v25[16] = v18 & 1;
  *(v25 + 3) = v20;
  v26 = v2[7];
  v60 = v6;
  v27 = &v6[v26];
  *v27 = sub_243B685F4;
  v27[1] = v24;
  sub_243B700CC();
  v28 = sub_243B703AC();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v2[6];
  v36 = v59;
  sub_243B6FCAC();
  v23((v36 + v35), 0, 1, v22);

  sub_243B6FABC();
  v37 = v36 + v2[5];
  *v37 = v28;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32 & 1;
  *(v37 + 24) = v34;
  v38 = (v36 + v2[7]);
  v39 = v61;
  *v38 = sub_243B685FC;
  v38[1] = v39;
  if (qword_27EDA1DD0 != -1)
  {
    swift_once();
  }

  v41 = qword_27EDA5050;
  v40 = *algn_27EDA5058;
  v42 = qword_27EDA1DD8;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_27EDA5060;
  v44 = *algn_27EDA5068;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F08, &qword_243B723E0);
  v45 = *(v57 + 72);
  v46 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_243B71ED0;
  sub_243B3EB64(v60, v47 + v46);
  sub_243B3EB64(v36, v47 + v46 + v45);

  v48 = v58;
  sub_243B6FABC();
  v49 = type metadata accessor for AlertViewModel(0);
  v50 = (v48 + v49[5]);
  *v50 = v41;
  v50[1] = v40;
  v51 = (v48 + v49[6]);
  *v51 = v43;
  v51[1] = v44;
  *(v48 + v49[7]) = v47;
  (*(*(v49 - 1) + 56))(v48, 0, 1, v49);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v53 = v61;
  v62 = v61;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();

  sub_243B2E620(v48, &qword_27EDA1E00, &unk_243B73660);
  v54 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert;
  if (*(v53 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert) == 1)
  {
    sub_243B2E010(v36);
    result = sub_243B2E010(v60);
    *(v53 + v54) = 1;
  }

  else
  {
    v56 = swift_getKeyPath();
    MEMORY[0x28223BE20](v56);
    v62 = v53;
    sub_243B6FAEC();

    sub_243B2E010(v36);
    return sub_243B2E010(v60);
  }

  return result;
}

uint64_t sub_243B615A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v12 - v1);
  v3 = sub_243B6FB9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v7 = sub_243B6FB8C();
  v8 = sub_243B709AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_243B1E000, v7, v8, "User cancelled sharing. Cancelling flow.", v9, 2u);
    MEMORY[0x245D4A570](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v10 = sub_243B6FA8C();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  sub_243B6253C(v2, 0, 0);
  return sub_243B2E620(v2, &qword_27EDA2F48, &unk_243B74F70);
}

void sub_243B617D0(const char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v24 = a4;
  v8 = v4;
  v9 = sub_243B6FB9C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v13 = sub_243B6FB8C();
  v14 = sub_243B709AC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_243B1E000, v13, v14, a1, v15, 2u);
    MEMORY[0x245D4A570](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v16 = objc_opt_self();
  v17 = sub_243B6FA5C();
  swift_getKeyPath();
  aBlock[0] = v8;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v18 = sub_243B7088C();

  v19 = sub_243B7088C();
  sub_243B64398();
  sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
  v20 = sub_243B7088C();

  v21 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a2;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243B5F29C;
  aBlock[3] = a3;
  v22 = _Block_copy(aBlock);

  [v16 *v24];
  _Block_release(v22);
}

uint64_t sub_243B61B3C()
{
  v1[18] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70);
  v1[19] = swift_task_alloc();
  v1[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2828, &unk_243B738E0);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v2 = sub_243B6FB9C();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_243B708FC();
  v1[29] = sub_243B708EC();
  v4 = sub_243B708DC();
  v1[30] = v4;
  v1[31] = v3;

  return MEMORY[0x2822009F8](sub_243B61CD4, v4, v3);
}

uint64_t sub_243B61CD4(uint64_t a1)
{
  v18 = v1;
  sub_243B6FB6C();
  v2 = sub_243B6FB8C();
  v3 = sub_243B709AC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[28];
  v6 = v1[24];
  v7 = v1[25];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_243B40EA8(0xD000000000000018, 0x8000000243B76A90, &v17);
    _os_log_impl(&dword_243B1E000, v2, v3, "%{public}s start.", v8, 0xCu);
    v10 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245D4A570](v9, -1, -1, v10);
    MEMORY[0x245D4A570](v8, -1, -1);
  }

  v11 = *(v7 + 8);
  v11(v5, v6);
  v1[32] = v11;
  v12 = v1[22];
  v13 = objc_opt_self();
  v14 = sub_243B6FA5C();
  v1[33] = v14;
  v1[2] = v1;
  v1[7] = v12;
  v1[3] = sub_243B61F1C;
  v15 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F60, &qword_243B74F80);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_243B5A89C;
  v1[13] = &block_descriptor_106;
  v1[14] = v15;
  [v13 existingShareForFileOrFolderURL:v14 completionHandler:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_243B61F1C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_243B6235C;
  }

  else
  {
    v5 = sub_243B6204C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_243B6204C()
{
  v27 = v0;
  v1 = v0[33];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];

  sub_243B304EC(v2, v4, &qword_27EDA2828, &unk_243B738E0);
  v6 = *(v4 + *(v5 + 48));
  v7 = sub_243B6FA8C();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v3, v4, v7);
  *(v3 + *(v5 + 48)) = v6;
  v9 = v6;

  sub_243B6FB6C();
  v10 = sub_243B6FB8C();
  v11 = sub_243B709AC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[32];
  v14 = v0[27];
  v15 = v0[24];
  if (v12)
  {
    v25 = v9;
    v16 = swift_slowAlloc();
    v24 = v13;
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_243B40EA8(0xD000000000000018, 0x8000000243B76A90, &v26);
    _os_log_impl(&dword_243B1E000, v10, v11, "%{public}s Fetched existing share.", v16, 0xCu);
    v18 = __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x245D4A570](v17, -1, -1, v18);
    v19 = v16;
    v9 = v25;
    MEMORY[0x245D4A570](v19, -1, -1);

    v24(v14, v15);
  }

  else
  {

    v13(v14, v15);
  }

  v20 = v0[23];
  v21 = v0[19];
  (*(v8 + 16))(v21, v20, v7);
  (*(v8 + 56))(v21, 0, 1, v7);
  sub_243B6253C(v21, v9, 0);

  sub_243B2E620(v21, &qword_27EDA2F48, &unk_243B74F70);
  sub_243B2E620(v20, &qword_27EDA2828, &unk_243B738E0);

  v22 = v0[1];

  return v22();
}

uint64_t sub_243B6235C()
{
  v15 = v0;
  v1 = v0[33];

  swift_willThrow();

  sub_243B6FB6C();
  v2 = sub_243B6FB8C();
  v3 = sub_243B709AC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[32];
  v6 = v0[26];
  v7 = v0[24];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_243B40EA8(0xD000000000000018, 0x8000000243B76A90, &v14);
    _os_log_impl(&dword_243B1E000, v2, v3, "%{public}s Unable to fetch existing share. Exiting.", v8, 0xCu);
    v10 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245D4A570](v9, -1, -1, v10);
    MEMORY[0x245D4A570](v8, -1, -1);
  }

  v5(v6, v7);
  v11 = v0[34];
  sub_243B65CB8(v11);

  v12 = v0[1];

  return v12();
}

void sub_243B6253C(unsigned int (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, void *a3)
{
  v4 = v3;
  v98 = a1;
  v99 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v89 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v89 - v13;
  v102 = sub_243B6FA8C();
  v15 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v89 - v19;
  v21 = sub_243B6FB9C();
  v100 = *(v21 - 8);
  v101 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v28 = &v89 - v27;
  if (a3)
  {
    v29 = a3;
    sub_243B6FB6C();
    v30 = a3;

    v31 = sub_243B6FB8C();
    v32 = sub_243B709CC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v103 = v35;
      *v33 = 136315394;
      sub_243B683C8(&unk_27EDA2F50, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v36 = sub_243B70C5C();
      v38 = sub_243B40EA8(v36, v37, &v103);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2112;
      v39 = a3;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v40;
      *v34 = v40;
      _os_log_impl(&dword_243B1E000, v31, v32, "Failed to share file/folder (%s) with error: %@", v33, 0x16u);
      sub_243B2E620(v34, &unk_27EDA1F70, &qword_243B724C0);
      MEMORY[0x245D4A570](v34, -1, -1);
      v41 = __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x245D4A570](v35, -1, -1, v41);
      MEMORY[0x245D4A570](v33, -1, -1);
    }

    (*(v100 + 8))(v28, v101);
    sub_243B65CB8(a3);

    return;
  }

  v42 = v99;
  v94 = v8;
  v95 = v11;
  v96 = v20;
  v97 = v15;
  if (v99)
  {
    v43 = v26;
    sub_243B2E06C(v98, v14, &qword_27EDA2F48, &unk_243B74F70);
    v44 = v97;
    v46 = v97 + 48;
    v45 = *(v97 + 48);
    if (v45(v14, 1, v102) != 1)
    {
      v93 = v46;
      v98 = v45;
      v58 = v96;
      v59 = v102;
      (*(v44 + 32))(v96, v14, v102);
      v60 = v42;
      sub_243B6FB6C();
      (*(v44 + 16))(v17, v58, v59);

      v61 = v60;
      v62 = sub_243B6FB8C();
      v63 = sub_243B709AC();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v103 = v99;
        *v64 = 136315650;
        sub_243B683C8(&unk_27EDA2F50, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v65 = v61;
        v91 = v63;
        v66 = v102;
        v67 = sub_243B70C5C();
        v69 = sub_243B40EA8(v67, v68, &v103);

        *(v64 + 4) = v69;
        *(v64 + 12) = 2112;
        v70 = [v61 recordID];
        *(v64 + 14) = v70;
        v92 = v43;
        v71 = v90;
        *v90 = v70;
        *(v64 + 22) = 2080;
        v72 = sub_243B70C5C();
        v74 = v73;
        v75 = *(v97 + 8);
        v75(v17, v66);
        v76 = sub_243B40EA8(v72, v74, &v103);
        v61 = v65;
        v44 = v97;

        *(v64 + 24) = v76;
        _os_log_impl(&dword_243B1E000, v62, v91, ">>> Shared file/folder (%s) with CKShare ID: %@, url: %s!)", v64, 0x20u);
        sub_243B2E620(v71, &unk_27EDA1F70, &qword_243B724C0);
        MEMORY[0x245D4A570](v71, -1, -1);
        v77 = v99;
        swift_arrayDestroy();
        MEMORY[0x245D4A570](v77, -1, -1);
        MEMORY[0x245D4A570](v64, -1, -1);

        (*(v100 + 8))(v92, v101);
      }

      else
      {

        v75 = *(v44 + 8);
        v75(v17, v102);
        (*(v100 + 8))(v43, v101);
      }

      v78 = [v61 URL];
      v80 = v94;
      v79 = v95;
      if (v78)
      {
        v81 = v78;
        sub_243B6FA7C();

        v82 = 0;
      }

      else
      {
        v82 = 1;
      }

      v83 = v102;
      (*(v44 + 56))(v79, v82, 1, v102);
      v84 = [objc_opt_self() generalPasteboard];
      sub_243B2E06C(v79, v80, &qword_27EDA2F48, &unk_243B74F70);
      if (v98(v80, 1, v83) == 1)
      {
        v85 = 0;
      }

      else
      {
        v85 = sub_243B6FA5C();
        v75(v80, v102);
      }

      [v84 setURL_];

      v86 = sub_243B2E620(v79, &qword_27EDA2F48, &unk_243B74F70);
      if (*(v4 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) == 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v89 - 2) = v4;
        *(&v89 - 8) = 0;
        v103 = v4;
        sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
        sub_243B6FAEC();
      }

      else
      {
        *(v4 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) = 0;
      }

      v88 = v96;
      (*(v4 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction))(v86);

      v75(v88, v102);
      return;
    }

    sub_243B2E620(v14, &qword_27EDA2F48, &unk_243B74F70);
  }

  sub_243B6FB6C();
  v47 = v4;

  v48 = sub_243B6FB8C();
  v49 = sub_243B709CC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v103 = v51;
    *v50 = 136315138;
    sub_243B683C8(&unk_27EDA2F50, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v52 = sub_243B70C5C();
    v54 = sub_243B40EA8(v52, v53, &v103);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_243B1E000, v48, v49, "Failed to share file/folder (%s). No error or CKShare returned.", v50, 0xCu);
    v55 = __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x245D4A570](v51, -1, -1, v55);
    MEMORY[0x245D4A570](v50, -1, -1);
  }

  v56 = (*(v100 + 8))(v23, v101);
  if (*(v47 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) == 1)
  {
    v57 = swift_getKeyPath();
    MEMORY[0x28223BE20](v57);
    *(&v89 - 2) = v47;
    *(&v89 - 8) = 0;
    v103 = v47;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  else
  {
    *(v47 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) = 0;
  }

  (*(v47 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction))(v56);
}

void sub_243B630F8()
{
  v1 = v0;
  v2 = sub_243B6FB9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v6 = sub_243B6FB8C();
  v7 = sub_243B709BC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_243B1E000, v6, v7, "Show contact picker", v8, 2u);
    MEMORY[0x245D4A570](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_allocWithZone(MEMORY[0x277CBDC18]) initWithNibName:0 bundle:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1FA0, &qword_243B74F40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_243B71ED0;
  *(v10 + 32) = sub_243B7082C();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_243B7082C();
  *(v10 + 56) = v12;
  v13 = sub_243B7088C();

  [v9 setDisplayedPropertyKeys_];

  [v9 setDelegate_];
  swift_unknownObjectRelease();
  [v9 setAllowsEditing_];
  sub_243B2E534(0, &qword_27EDA2F38, 0x277CCAC30);
  v14 = sub_243B7099C();
  [v9 setPredicateForEnablingContact_];

  v15 = sub_243B7099C();
  [v9 setPredicateForSelectionOfContact_];

  [v9 setModalPresentationStyle_];
  swift_getKeyPath();
  v24 = v1;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong presentViewController:v9 animated:1 completion:0];
  }

  swift_getKeyPath();
  v24 = v1;
  sub_243B6FAFC();

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20 = [v18 sheetPresentationController];

    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F20, &qword_243B74508);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_243B74C80;
      *(v21 + 32) = [objc_opt_self() largeDetent];
      sub_243B2E534(0, &qword_27EDA2F40, 0x277D75A28);
      v22 = sub_243B7088C();

      [v20 setDetents_];
    }
  }
}

uint64_t sub_243B635A0(unint64_t a1)
{
  v2 = v1;
  v80 = sub_243B6FB9C();
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v75 - v6;
  v86 = a1;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v88 = result;
  while (result)
  {
    sub_243B6FB6C();
    v9 = v86;

    v10 = sub_243B6FB8C();
    v11 = sub_243B709AC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v102 = v13;
      *v12 = 136315138;
      v14 = sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
      v15 = MEMORY[0x245D498F0](v9, v14);
      v17 = sub_243B40EA8(v15, v16, &v102);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_243B1E000, v10, v11, "Options groups received: %s", v12, 0xCu);
      v18 = __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x245D4A570](v13, -1, -1, v18);
      MEMORY[0x245D4A570](v12, -1, -1);
    }

    v19 = *(v82 + 8);
    v82 += 8;
    v78 = v19;
    v20 = (v19)(v7, v80);
    v21 = 0;
    v93 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canInviteOthers;
    v22 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel___observationRegistrar;
    v89 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit;
    v23 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
    v95 = v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange;
    v87 = v9 & 0xC000000000000001;
    v85 = v9 & 0xFFFFFFFFFFFFFF8;
    v84 = v9 + 32;
    v97 = *MEMORY[0x277CBC0B0];
    v94 = *MEMORY[0x277CBC0A8];
    v90 = *MEMORY[0x277CBC0E0];
    v83 = *MEMORY[0x277CBC0F8];
    v81 = *MEMORY[0x277CBC0D8];
    v20.n128_u64[0] = 136315138;
    v77 = v20;
    v100 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel___observationRegistrar;
    while (1)
    {
      if (v87)
      {
        v24 = MEMORY[0x245D49BC0](v21, v86);
      }

      else
      {
        if (v21 >= *(v85 + 16))
        {
          goto LABEL_71;
        }

        v24 = *(v84 + 8 * v21);
      }

      v25 = v24;
      v26 = __OFADD__(v21, 1);
      v27 = v21 + 1;
      if (v26)
      {
        __break(1u);
        goto LABEL_70;
      }

      v28 = [v24 options];
      sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
      v29 = sub_243B7089C();

      v92 = v27;
      if (v29 >> 62)
      {
        break;
      }

      v7 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v91 = v25;
      if (v7)
      {
        goto LABEL_14;
      }

LABEL_6:

      v21 = v92;
      if (v92 == v88)
      {
        return result;
      }
    }

    v7 = sub_243B70C0C();
    v91 = v25;
    if (!v7)
    {
      goto LABEL_6;
    }

LABEL_14:
    if (v7 >= 1)
    {
      v98 = v29 & 0xC000000000000001;
      swift_beginAccess();
      v30 = 0;
      v96 = v29;
      v99 = v7;
      while (1)
      {
        if (v98)
        {
          v32 = MEMORY[0x245D49BC0](v30, v29);
        }

        else
        {
          v32 = *(v29 + 8 * v30 + 32);
        }

        v33 = v32;
        v34 = [v33 identifier];
        v35 = sub_243B7082C();
        v37 = v36;

        if (sub_243B7082C() == v35 && v38 == v37)
        {

LABEL_28:

          v41 = [v33 isSelected];

          v42 = v41 ^ 1;
          if (v42 == *(v2 + v23))
          {
            *(v2 + v23) = v42;
            swift_getKeyPath();
            v101 = v2;
            sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
            v7 = v2 + v22;
            sub_243B6FAFC();

            v43 = *v95;
            if (*v95)
            {
              v44 = *(v95 + 1);
              swift_getKeyPath();
              v101 = v2;

              sub_243B6FAFC();
              v29 = v96;

              v7 = v44;
              v43(*(v2 + v23));

              v45 = v44;
              v22 = v100;
              sub_243B2BFCC(v43, v45);
            }

            else
            {
            }
          }

          else
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v75 - 2) = v2;
            *(&v75 - 8) = v42;
            v101 = v2;
            sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
            v7 = v2 + v22;
            v29 = v96;
            sub_243B6FAEC();
          }

          goto LABEL_17;
        }

        v40 = sub_243B70C6C();

        if (v40)
        {
          v22 = v100;
          goto LABEL_28;
        }

        if (sub_243B7082C() == v35 && v46 == v37)
        {
          break;
        }

        v47 = sub_243B70C6C();

        v48 = v93;
        if (v47)
        {
          goto LABEL_36;
        }

        if (sub_243B7082C() == v35 && v52 == v37)
        {

LABEL_46:
          v54 = v89;

          v7 = [v33 isSelected];

          v22 = v100;
          if (v7 == *(v2 + v54))
          {

            *(v2 + v54) = v7;
            goto LABEL_48;
          }

          goto LABEL_37;
        }

        v53 = sub_243B70C6C();

        if (v53)
        {
          goto LABEL_46;
        }

        if (sub_243B7082C() == v35 && v55 == v37)
        {
        }

        else
        {
          v56 = sub_243B70C6C();

          if ((v56 & 1) == 0)
          {
            if (sub_243B7082C() == v35 && v59 == v37)
            {
            }

            else
            {
              v60 = sub_243B70C6C();

              if ((v60 & 1) == 0)
              {

                v62 = v79;
                sub_243B6FB6C();
                v63 = v33;
                v7 = sub_243B6FB8C();
                v64 = sub_243B709BC();

                if (os_log_type_enabled(v7, v64))
                {
                  v65 = swift_slowAlloc();
                  v75 = swift_slowAlloc();
                  v101 = v75;
                  *v65 = v77.n128_u32[0];
                  v66 = [v63 identifier];
                  v76 = v63;
                  v67 = v66;
                  v68 = sub_243B7082C();
                  v70 = v69;

                  v71 = sub_243B40EA8(v68, v70, &v101);

                  *(v65 + 4) = v71;
                  _os_log_impl(&dword_243B1E000, v7, v64, "Invalid option ID: %s", v65, 0xCu);
                  v72 = v75;
                  v73 = __swift_destroy_boxed_opaque_existential_0(v75);
                  MEMORY[0x245D4A570](v72, -1, -1, v73);
                  MEMORY[0x245D4A570](v65, -1, -1);

                  v74 = v79;
                }

                else
                {

                  v74 = v62;
                }

                v78(v74, v80);
                v22 = v100;
                goto LABEL_48;
              }
            }

            v7 = [v33 isSelected];

            if (v7 == *(v2 + v48))
            {

              *(v2 + v48) = v7;
              v22 = v100;
              goto LABEL_48;
            }

            v61 = swift_getKeyPath();
            MEMORY[0x28223BE20](v61);
            *(&v75 - 2) = v2;
            *(&v75 - 8) = v7;
            v101 = v2;
            sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
            v22 = v100;
            goto LABEL_38;
          }
        }

        v57 = [v33 isSelected];

        v7 = v57 ^ 1;
        v58 = v89;
        v22 = v100;
        if (v7 == *(v2 + v89))
        {

          *(v2 + v58) = v7;
          goto LABEL_48;
        }

LABEL_37:
        v49 = swift_getKeyPath();
        MEMORY[0x28223BE20](v49);
        *(&v75 - 2) = v2;
        *(&v75 - 8) = v7;
        v101 = v2;
        sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
LABEL_38:
        v7 = v2 + v22;
        sub_243B6FAEC();

LABEL_48:
        v29 = v96;
LABEL_17:
        if (v99 == ++v30)
        {
          goto LABEL_6;
        }
      }

LABEL_36:

      LODWORD(v7) = [v33 isSelected];

      v22 = v100;
      if (v7 == *(v2 + v23))
      {
        *(v2 + v23) = v7;
        swift_getKeyPath();
        v101 = v2;
        sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
        v7 = v2 + v22;
        sub_243B6FAFC();

        v50 = *v95;
        if (*v95)
        {
          v51 = *(v95 + 1);
          swift_getKeyPath();
          v101 = v2;

          sub_243B6FAFC();
          v22 = v100;

          v7 = v51;
          v50(*(v2 + v23));

          sub_243B2BFCC(v50, v51);
        }

        else
        {
        }

        goto LABEL_48;
      }

      goto LABEL_37;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    result = sub_243B70C0C();
    v88 = result;
  }

  return result;
}

uint64_t sub_243B64398()
{
  v1 = v0;
  v2 = sub_243B6FB9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v109 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v102 - v6;
  v117 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel___observationRegistrar;
  v116 = v0;
  v9 = sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v10 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  v11 = v10;
  v12 = v1[v10];
  p_class_meths = &OBJC_PROTOCOL___NSObject.class_meths;
  v114 = v8;
  *&v113 = v9;
  v110 = v3;
  if ((v12 & 1) != 0 || (swift_getKeyPath(), v115 = v1, sub_243B6FAFC(), , (v1[OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit] & 1) == 0) && (swift_getKeyPath(), v115 = v1, sub_243B6FAFC(), , v1[OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canInviteOthers] == 1))
  {
    sub_243B6FB6C();
    swift_retain_n();
    v14 = sub_243B6FB8C();
    v15 = sub_243B709AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109376;
      swift_getKeyPath();
      v115 = v1;
      sub_243B6FAFC();

      *(v16 + 4) = v1[v10];

      *(v16 + 8) = 1024;
      swift_getKeyPath();
      v115 = v1;
      sub_243B6FAFC();

      *(v16 + 10) = v1[OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit];

      v17 = v16;
      p_class_meths = (&OBJC_PROTOCOL___NSObject + 32);
      MEMORY[0x245D4A570](v17, -1, -1);
    }

    else
    {
    }

    (*(v110 + 8))(v7, v2);
    v18 = p_class_meths[474];
    if (*(&v18->entrysize + v1))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v102 - 2) = v1;
      *(&v102 - 8) = 0;
      v115 = v1;
      sub_243B6FAEC();
    }

    else
    {
      *(&v18->entrysize + v1) = 0;
    }
  }

  v108 = v2;
  v20 = *MEMORY[0x277CBC0A8];
  swift_getKeyPath();
  v115 = v1;
  v21 = v20;
  sub_243B6FAFC();

  v22 = v1[v10];
  v23 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v24 = sub_243B7080C();
  v105 = v21;
  v25 = [v23 initWithTitle:v24 identifier:v21 selected:v22];

  v26 = *MEMORY[0x277CBC0B0];
  swift_getKeyPath();
  v115 = v1;
  v27 = v26;
  sub_243B6FAFC();

  LOBYTE(v21) = v1[v11];
  v28 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v29 = sub_243B7080C();
  v30 = [v28 initWithTitle:v29 identifier:v27 selected:(v21 & 1) == 0];

  v31 = *MEMORY[0x277CBC100];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F20, &qword_243B74508);
  v32 = swift_allocObject();
  v104 = xmmword_243B74C90;
  *(v32 + 16) = xmmword_243B74C90;
  *(v32 + 32) = v25;
  *(v32 + 40) = v30;
  v33 = objc_allocWithZone(MEMORY[0x277CDC6D8]);
  v34 = sub_243B2E534(0, &qword_27EDA2F28, 0x277CDC6A0);
  v35 = v31;
  v107 = v25;
  v106 = v30;
  v111 = v34;
  v36 = sub_243B7088C();

  v37 = [v33 initWithIdentifier:v35 options:v36];

  swift_getKeyPath();
  v115 = v1;
  sub_243B6FAFC();

  sub_243B7082C();
  v38 = sub_243B7080C();

  [v37 setSelectedOptionIdentifier_];

  v39 = v37;
  MEMORY[0x245D498C0]();
  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_243B708BC();
  }

  v105 = v39;
  sub_243B708CC();
  v40 = *MEMORY[0x277CBC0F8];
  swift_getKeyPath();
  v115 = v1;
  v41 = v40;
  sub_243B6FAFC();

  v42 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit;
  v43 = v1[OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit];
  v44 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v45 = sub_243B7080C();
  v46 = [v44 initWithTitle:v45 identifier:v41 selected:(v43 & 1) == 0];

  v47 = *MEMORY[0x277CBC0E0];
  swift_getKeyPath();
  v115 = v1;
  v48 = v47;
  sub_243B6FAFC();

  v49 = v1[v42];
  v50 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v51 = sub_243B7080C();
  v52 = [v50 initWithTitle:v51 identifier:v48 selected:v49];

  v53 = *MEMORY[0x277CBC0E8];
  v54 = swift_allocObject();
  *(v54 + 16) = v104;
  *(v54 + 32) = v46;
  *(v54 + 40) = v52;
  v55 = objc_allocWithZone(MEMORY[0x277CDC6D8]);
  v56 = v53;
  *&v104 = v46;
  v103 = v52;
  v57 = sub_243B7088C();

  v58 = [v55 initWithIdentifier:v56 options:v57];

  swift_getKeyPath();
  v115 = v1;
  sub_243B6FAFC();

  sub_243B7082C();
  v59 = sub_243B7080C();

  [v58 setSelectedOptionIdentifier_];

  v60 = v58;
  MEMORY[0x245D498C0]();
  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_243B708BC();
  }

  v102 = v60;
  sub_243B708CC();
  v61 = *MEMORY[0x277CBC0D8];
  swift_getKeyPath();
  v115 = v1;
  v62 = v61;
  sub_243B6FAFC();

  v63 = v1[OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canInviteOthers];
  v64 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v65 = sub_243B7080C();
  v66 = [v64 initWithTitle:v65 identifier:v62 selected:v63];

  v67 = *MEMORY[0x277CBC0C8];
  v68 = swift_allocObject();
  v113 = xmmword_243B74C80;
  *(v68 + 16) = xmmword_243B74C80;
  *(v68 + 32) = v66;
  v69 = objc_allocWithZone(MEMORY[0x277CDC6D0]);
  v70 = v67;
  v114 = v66;
  v71 = sub_243B7088C();

  v72 = [v69 initWithIdentifier:v70 options:v71];

  v73 = v72;
  MEMORY[0x245D498C0]();
  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_243B708BC();
  }

  sub_243B708CC();
  v74 = *MEMORY[0x277CBC0C0];
  v75 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v76 = v74;
  v77 = sub_243B7080C();
  v78 = [v75 &selRef:v77 viewControllerForContact:{v76, 1} + 2];

  v79 = *MEMORY[0x277CBC0B8];
  v80 = swift_allocObject();
  *(v80 + 16) = v113;
  *(v80 + 32) = v78;
  v81 = objc_allocWithZone(MEMORY[0x277CDC6D0]);
  v82 = v79;
  v83 = v78;
  v84 = sub_243B7088C();

  v85 = [v81 initWithIdentifier:v82 options:v84];

  v86 = v85;
  MEMORY[0x245D498C0]();
  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_243B708BC();
  }

  sub_243B708CC();
  v87 = v117;
  v88 = v109;
  sub_243B6FB6C();
  v89 = sub_243B6FB8C();
  v90 = sub_243B709BC();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v115 = v92;
    *v91 = 136315138;
    v93 = v83;
    v94 = sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);

    v96 = MEMORY[0x245D498F0](v95, v94);
    v98 = v97;

    v99 = sub_243B40EA8(v96, v98, &v115);

    *(v91 + 4) = v99;
    _os_log_impl(&dword_243B1E000, v89, v90, "optionsGroups: %s", v91, 0xCu);
    v100 = __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x245D4A570](v92, -1, -1, v100);
    MEMORY[0x245D4A570](v91, -1, -1);

    (*(v110 + 8))(v109, v108);
  }

  else
  {

    (*(v110 + 8))(v88, v108);
  }

  return v87;
}

uint64_t sub_243B651D8()
{
  v1[22] = v0;
  v2 = sub_243B6FB9C();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  v1[26] = swift_task_alloc();
  v1[27] = sub_243B708FC();
  v1[28] = sub_243B708EC();
  v4 = sub_243B708DC();
  v1[29] = v4;
  v1[30] = v3;

  return MEMORY[0x2822009F8](sub_243B65308, v4, v3);
}

uint64_t sub_243B65308()
{
  v1 = objc_opt_self();
  v2 = sub_243B6FA5C();
  v0[31] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_243B6545C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F10, &qword_243B74EC8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243B65AB0;
  v0[13] = &block_descriptor_3;
  v0[14] = v3;
  [v1 userNameAndEmail:v2 containerSetupInfo:0 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243B6545C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_243B65904;
  }

  else
  {
    v5 = sub_243B6558C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_243B6558C()
{
  v1 = v0[31];

  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[20];
  v4 = v0[21];

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    type metadata accessor for CreateiCloudLinkViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_243B6F9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2EF0, &qword_243B744F0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_243B71ED0;
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v13 = sub_243B4E57C(v9, v11, v12);
    *(v9 + 32) = v3;
    *(v9 + 40) = v2;
    *(v9 + 96) = v10;
    *(v9 + 104) = v13;
    *(v9 + 64) = v13;
    *(v9 + 72) = v5;
    *(v9 + 80) = v4;
  }

  else
  {

    type metadata accessor for CreateiCloudLinkViewModel(0);
    v14 = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_243B6F9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2EF0, &qword_243B744F0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_243B71EC0;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_243B4E57C(v16, v17, v18);
    *(v16 + 32) = v3;
    *(v16 + 40) = v2;
  }

  v19 = sub_243B7081C();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = v0[26];
    v24 = v0[22];
    v25 = sub_243B7092C();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);

    v26 = sub_243B708EC();
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v24;
    v27[5] = v19;
    v27[6] = v21;
    sub_243B3EF48(0, 0, v23, &unk_243B74ED8, v27);
  }

  else
  {
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_243B65904()
{
  v2 = v0[31];
  v1 = v0[32];

  swift_willThrow();

  sub_243B6FB6C();
  v3 = v1;
  v4 = sub_243B6FB8C();
  v5 = sub_243B709CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_243B1E000, v4, v5, "Failed to fetch user info: %@", v8, 0xCu);
    sub_243B2E620(v9, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v9, -1, -1);
    MEMORY[0x245D4A570](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[24] + 8))(v0[25], v0[23]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_243B65AB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F18, &qword_243B74EE0);
    v6 = swift_allocError();
    *v7 = a4;
    v8 = a4;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = sub_243B7082C();
    v11 = v10;
    v12 = sub_243B7082C();
    v13 = *(*(v5 + 64) + 40);
    *v13 = v9;
    v13[1] = v11;
    v13[2] = v12;
    v13[3] = v14;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_243B65B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_243B708FC();
  v6[5] = sub_243B708EC();
  v8 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B65C38, v8, v7);
}

uint64_t sub_243B65C38()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_243B5CAA4(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_243B65CB8(uint64_t a1)
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v54 = sub_243B6F9FC();
  v55 = v4;

  v5 = [v2 bundleForClass_];
  v6 = sub_243B6F9FC();
  v8 = v7;

  v9 = sub_243B6FA3C();
  v10 = sub_243B66E94(v9);

  v11 = v10;
  v12 = [v10 domain];
  v13 = sub_243B7082C();
  v15 = v14;

  if (v13 == sub_243B7082C() && v15 == v16)
  {

    goto LABEL_5;
  }

  v17 = sub_243B70C6C();

  if ((v17 & 1) == 0)
  {
    v29 = [v11 domain];
    v30 = sub_243B7082C();
    v32 = v31;

    if (v30 == sub_243B7082C() && v32 == v33)
    {
    }

    else
    {
      v37 = sub_243B70C6C();

      if ((v37 & 1) == 0)
      {
        v18 = v11;
        goto LABEL_24;
      }
    }

    v38 = [v2 bundleForClass_];
    sub_243B6F9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2EF0, &qword_243B744F0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_243B71EC0;
    v18 = v11;
    v40 = [v11 localizedDescription];
    v41 = sub_243B7082C();
    v43 = v42;

    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 64) = sub_243B4E57C(v44, v45, v46);
    *(v39 + 32) = v41;
    *(v39 + 40) = v43;
    v6 = sub_243B7081C();
    v8 = v47;

LABEL_24:
    v20 = v54;
    v21 = v55;
    goto LABEL_25;
  }

LABEL_5:
  v18 = v11;
  v19 = [v11 code];
  if (v19 > 28)
  {
    v21 = v55;
    v20 = v54;
    switch(v19)
    {
      case 29:

        v48 = [v2 bundleForClass_];
        v26 = sub_243B6F9FC();
        v21 = v49;

        v28 = [v2 bundleForClass_];
        break;
      case 30:

        v50 = [v2 bundleForClass_];
        v26 = sub_243B6F9FC();
        v21 = v51;

        v28 = [v2 bundleForClass_];
        break;
      case 32:

        v25 = [v2 bundleForClass_];
        v26 = sub_243B6F9FC();
        v21 = v27;

        v28 = [v2 bundleForClass_];
        break;
      default:
        goto LABEL_25;
    }

    v20 = v26;
    v6 = sub_243B6F9FC();
    v8 = v52;
  }

  else
  {
    v20 = v54;
    v21 = v55;
    if ((v19 - 3) < 2)
    {

      v22 = [v2 bundleForClass_];
      v20 = sub_243B6F9FC();
      v21 = v23;

      v24 = [v2 bundleForClass_];
LABEL_17:
      v6 = sub_243B6F9FC();
      v8 = v36;

      goto LABEL_25;
    }

    if (v19 == 14)
    {

      v34 = [v2 bundleForClass_];
      v20 = sub_243B6F9FC();
      v21 = v35;

      v24 = [v2 bundleForClass_];
      goto LABEL_17;
    }
  }

LABEL_25:
  sub_243B665A8(v20, v21, v6, v8);
}

uint64_t sub_243B665A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a2;
  v38 = a4;
  v39 = a1;
  v40 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for AlertViewModelButton(0);
  v10 = (v9 - 8);
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B700CC();
  v13 = sub_243B703AC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v10[8];
  sub_243B6FCAC();
  v21 = sub_243B6FCBC();
  (*(*(v21 - 8) + 56))(&v12[v20], 0, 1, v21);

  sub_243B6FABC();
  v22 = &v12[v10[7]];
  *v22 = v13;
  *(v22 + 1) = v15;
  v22[16] = v17 & 1;
  *(v22 + 3) = v19;
  v23 = &v12[v10[9]];
  *v23 = sub_243B68208;
  v23[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F08, &qword_243B723E0);
  v24 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_243B71EC0;
  sub_243B3EB64(v12, v25 + v24);
  v26 = v37;

  v27 = v38;

  sub_243B6FABC();
  v28 = type metadata accessor for AlertViewModel(0);
  v29 = &v8[v28[5]];
  v30 = v40;
  *v29 = v39;
  v29[1] = v26;
  v31 = &v8[v28[6]];
  *v31 = v30;
  *(v31 + 1) = v27;
  *&v8[v28[7]] = v25;
  (*(*(v28 - 1) + 56))(v8, 0, 1, v28);
  swift_getKeyPath();
  v41 = v5;
  v42 = v8;
  v43 = v5;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();

  sub_243B2E620(v8, &qword_27EDA1E00, &unk_243B73660);
  v32 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert;
  if (*(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert) == 1)
  {
    result = sub_243B2E010(v12);
    *(v5 + v32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v43 = v5;
    sub_243B6FAEC();

    return sub_243B2E010(v12);
  }

  return result;
}

uint64_t sub_243B669D4(uint64_t a1, __n128 a2)
{
  v2 = a1;
  if (*(a1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) = 0;
  }

  return (*(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction))(a1);
}

uint64_t CreateiCloudLinkViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_fileURL;
  v2 = sub_243B6FA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange), *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange + 8));
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onAppear), *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onAppear + 8));

  sub_243B2E620(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel, &qword_27EDA1E00, &unk_243B73660);

  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel___observationRegistrar;
  v4 = sub_243B6FB3C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CreateiCloudLinkViewModel.__deallocating_deinit()
{
  CreateiCloudLinkViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_243B66C9C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  result = sub_243B6FBEC();
  *a2 = result;
  return result;
}

unint64_t sub_243B66CDC(uint64_t a1, uint64_t a2)
{
  sub_243B70CBC();
  sub_243B7084C();
  v4 = sub_243B70CEC();

  return sub_243B66D54(a1, a2, v4);
}

unint64_t sub_243B66D54(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_243B70C6C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_243B66E0C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D49BC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_243B66E8C;
  }

  __break(1u);
  return result;
}

id sub_243B66E94(void *a1)
{
  v2 = sub_243B6FB9C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userInfo];
  v8 = sub_243B707EC();

  v9 = sub_243B7082C();
  if (!*(v8 + 16))
  {

    goto LABEL_8;
  }

  v11 = sub_243B66CDC(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_243B319B0(*(v8 + 56) + 32 * v11, v56);

  sub_243B2E534(0, &qword_27EDA2EF8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v14 = v55;
    v15 = [v55 domain];
    v16 = sub_243B7082C();
    v18 = v17;

    v19 = *MEMORY[0x277CBBF50];
    if (v16 == sub_243B7082C() && v18 == v20)
    {

      return v14;
    }

    v54 = v19;
    v29 = sub_243B70C6C();

    if (v29)
    {
      return v14;
    }

    v30 = [a1 userInfo];
    v31 = sub_243B707EC();

    v32 = sub_243B7082C();
    if (*(v31 + 16))
    {
      v34 = sub_243B66CDC(v32, v33);
      v36 = v35;

      if (v36)
      {
        sub_243B319B0(*(v31 + 56) + 32 * v34, v56);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F00, &unk_243B74EB8);
        if (swift_dynamicCast())
        {
          v49 = v14;
          v14 = v55;
          if (v55 >> 62)
          {
            goto LABEL_42;
          }

          v37 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v37)
          {
            while (1)
            {
              v38 = 0;
              v51 = v14 & 0xFFFFFFFFFFFFFF8;
              v52 = v14 & 0xC000000000000001;
              v50 = v37;
              while (v52)
              {
                v39 = MEMORY[0x245D49BC0](v38, v14);
                v40 = v38 + 1;
                if (__OFADD__(v38, 1))
                {
LABEL_34:
                  __break(1u);
                  goto LABEL_35;
                }

LABEL_25:
                v53 = v39;
                v41 = [v39 domain];
                v42 = sub_243B7082C();
                v44 = v43;

                if (v42 == sub_243B7082C() && v44 == v45)
                {

LABEL_40:

                  return v53;
                }

                v47 = sub_243B70C6C();

                if (v47)
                {

                  goto LABEL_40;
                }

                ++v38;
                if (v40 == v50)
                {
                  goto LABEL_43;
                }
              }

              if (v38 < *(v51 + 16))
              {
                break;
              }

              __break(1u);
LABEL_42:
              v37 = sub_243B70C0C();
              if (!v37)
              {
                goto LABEL_43;
              }
            }

            v39 = *(v14 + 8 * v38 + 32);
            v40 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_34;
            }

            goto LABEL_25;
          }

LABEL_43:

          goto LABEL_8;
        }

LABEL_37:

        goto LABEL_9;
      }
    }

    else
    {
LABEL_35:
    }

    goto LABEL_37;
  }

LABEL_9:
  sub_243B6FB6C();
  v54 = a1;
  v21 = sub_243B6FB8C();
  v22 = sub_243B709AC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v54;
    *(v23 + 4) = v54;
    *v24 = v25;
    v26 = v25;
    _os_log_impl(&dword_243B1E000, v21, v22, "No underlying CK error found for error: %@", v23, 0xCu);
    sub_243B2E620(v24, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v24, -1, -1);
    MEMORY[0x245D4A570](v23, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v27 = v54;

  return v27;
}

uint64_t sub_243B6744C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v67 = a2;
  v64 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  MEMORY[0x28223BE20](v11);
  v57 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F80, &unk_243B75080);
  v15 = *(v14 - 8);
  v61 = v14;
  v62 = v15;
  MEMORY[0x28223BE20](v14);
  v58 = &v56 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  v17 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  v24 = (v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onAppear);
  *v25 = 0;
  v25[1] = 0;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) = 0;
  v26 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel;
  v27 = type metadata accessor for AlertViewModel(0);
  (*(*(v27 - 8) + 56))(v5 + v26, 1, 1, v27);
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert) = 0;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus) = 0;
  v28 = (v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_recipients) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel____lazy_storage___contactPickerDelegate) = 0;
  sub_243B6FB2C();
  v29 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_fileURL;
  v63 = sub_243B6FA8C();
  v65 = *(v63 - 8);
  (*(v65 + 16))(v5 + v29, a1, v63);
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic) = 1;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) = 1;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canInviteOthers) = 0;
  v30 = (v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction);
  *v30 = a3;
  v30[1] = a4;
  type metadata accessor for AddressingViewModel(0);
  v31 = swift_allocObject();
  v32 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v68 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DF0, &unk_243B74B80);
  sub_243B6FBFC();
  (*(v21 + 32))(v31 + v32, v23, v20);
  *(v31 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 0;
  v33 = (v31 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  *v33 = 0;
  v33[1] = 0;
  v34 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  LOBYTE(v68) = 1;
  sub_243B6FBFC();
  (*(v17 + 32))(v31 + v34, v19, v56);
  swift_unknownObjectWeakInit();
  *(v31 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_store) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  (*(v21 + 8))(v31 + v32, v20);
  v72 = 0;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v68 = 0;
  v69 = 0xE000000000000000;
  v70 = 0;
  v71 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FA0, &unk_243B750A0);
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  v35 = (v31 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  *v35 = 0;
  v35[1] = 0;
  swift_beginAccess();
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  v36 = (v31 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick);
  *v36 = 0;
  v36[1] = 0;
  v37 = *v33;
  v38 = v33[1];
  *v33 = 0;
  v33[1] = 0;
  sub_243B2BFCC(v37, v38);
  v39 = (v31 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
  *v39 = 0;
  v39[1] = 0;
  swift_beginAccess();
  v72 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  sub_243B6FBFC();
  *(v31 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  v40 = v57;
  sub_243B6FC0C();
  swift_endAccess();

  sub_243B2E680(&qword_27EDA2E00, &qword_27EDA2DE8, &unk_243B74B70, MEMORY[0x277CBCEC8]);
  sub_243B30A50();
  v42 = v58;
  v41 = v59;
  sub_243B6FC6C();
  (*(v60 + 8))(v40, v41);
  swift_allocObject();
  swift_weakInit();
  sub_243B2E680(&qword_27EDA2E08, &unk_27EDA2F80, &unk_243B75080, MEMORY[0x277CBCBE0]);
  v43 = v61;
  sub_243B6FC7C();

  (*(v62 + 8))(v42, v43);
  swift_beginAccess();
  sub_243B6FBDC();
  swift_endAccess();

  v44 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel) = v31;
  swift_getKeyPath();
  v68 = v5;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v45 = *(v5 + v44);
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = (v45 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  v48 = *(v45 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  v49 = *(v45 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick + 8);
  *v47 = sub_243B68D00;
  v47[1] = v46;

  sub_243B2BFCC(v48, v49);

  sub_243B635A0(v67);

  v50 = v66;
  sub_243B7090C();
  v51 = sub_243B7092C();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  sub_243B708FC();

  v52 = sub_243B708EC();
  v53 = swift_allocObject();
  v54 = MEMORY[0x277D85700];
  v53[2] = v52;
  v53[3] = v54;
  v53[4] = v5;
  sub_243B3EF48(0, 0, v50, &unk_243B750C0, v53);

  (*(v65 + 8))(v64, v63);
  return v5;
}

void sub_243B67FEC(uint64_t a1)
{
  sub_243B6FA8C();
  if (v1 <= 0x3F)
  {
    sub_243B2D97C(319);
    if (v2 <= 0x3F)
    {
      sub_243B6FB3C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_243B68270()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243B682B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243B2EC14;

  return sub_243B65B9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243B683C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243B68418()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243B684A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_243B2EC14;

  return sub_243B5F1FC(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_243B68638(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_243B2EC14;

  return sub_243B60D74(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t objectdestroy_120Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_243B6FA8C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_243B68910(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_243B2EC14;

  return sub_243B5F1FC(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_243B68A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243B2EC14;

  return sub_243B5EFF8(a1, v4, v5, v7, v6);
}

uint64_t sub_243B68B4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243B2E7BC;

  return sub_243B5E124();
}

uint64_t sub_243B68C08()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);
  *v2 = v0[3];
  v2[1] = v1;
}

void sub_243B68C54()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel) = *(v0 + 24);
}

uint64_t sub_243B68C98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_150Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_243B68D54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243B2EC14;

  return sub_243B5CE3C(a1, v4, v5, v6);
}

double sub_243B68E08(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = (v1[2] + *a1);
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_243B2E364(v2, v3);
  return sub_243B2BFCC(v5, v6);
}

uint64_t sub_243B68E60(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id HostingControllerAndModelUpdates.__allocating_init(viewController:sourceAppBundleIDDidChangeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_viewController] = a1;
  v8 = &v7[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_243B69154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_243B7080C();
  v11 = sub_243B7080C();
  (*(a7 + 16))(a7, v10, v11, a5 & 1, a6);
}

uint64_t sub_243B691F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
}

void sub_243B69300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_243B7080C();
  v10 = sub_243B7080C();
  sub_243B69E94();
  v11 = sub_243B7088C();
  (*(a7 + 16))(a7, v9, v10, a5 & 1, v11);
}

id SharingOptionsViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingOptionsViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingOptionsViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t HostingControllerAndModelUpdates.sourceAppBundleIDDidChangeBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock);

  return v1;
}

uint64_t sub_243B6958C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_243B7082C();
  v5 = v4;

  v2(v3, v5);
}

id HostingControllerAndModelUpdates.init(viewController:sourceAppBundleIDDidChangeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_viewController] = a1;
  v4 = &v3[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for HostingControllerAndModelUpdates();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_243B69764(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s14CloudSharingUI0B18OptionsViewFactoryC024createCollaborationSharedE0_13layoutMargins19userDidChangeOption011contentSizemN0AA32HostingControllerAndModelUpdatesCSo016_SWCollaborationiD0CSg_So23NSDirectionalEdgeInsetsVySS_SSSbALtcySo6CGSizeVctFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6, double a7, double a8, double a9)
{
  v14 = type metadata accessor for SharingOptionsGroupsView(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v40 - v19);
  v21 = a1;
  sub_243B6FCDC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = sub_243B2C694(a1, a2, a3, a4, a5, v23, v25, v27, v29);

  qword_27EDA2FC8 = v30;

  *v20 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  swift_storeEnumTagMultiPayload();
  v31 = v20 + *(v15 + 28);
  *v31 = sub_243B42A48;
  *(v31 + 1) = 0;
  v31[16] = 0;
  type metadata accessor for SharingOptionsObservableModel(0);
  sub_243B69F18(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B7074C();
  sub_243B69F60(v20, v17, type metadata accessor for SharingOptionsGroupsView);
  v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FE8, &unk_243B75190));
  v33 = sub_243B7013C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  sub_243B7072C();
  v34 = v42;
  v35 = type metadata accessor for HostingControllerAndModelUpdates();
  v36 = objc_allocWithZone(v35);
  *&v36[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_viewController] = v33;
  v37 = &v36[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock];
  *v37 = sub_243B69FC8;
  v37[1] = v34;
  v41.receiver = v36;
  v41.super_class = v35;
  v38 = objc_msgSendSuper2(&v41, sel_init);
  sub_243B69FD0(v20, type metadata accessor for SharingOptionsGroupsView);
  return v38;
}

id _s14CloudSharingUI0B18OptionsViewFactoryC06createbdE0_19userDidChangeOptionAA32HostingControllerAndModelUpdatesCSaySo016_SWCollaborationD5GroupCG_ySS_SSSbAJtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharingOptionsView(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v25 - v11);
  type metadata accessor for SharingOptionsViewModel(0);
  swift_allocObject();

  v13 = SharingOptionsViewModel.init(collaborationOptionsGroups:userDidChangeOption:)(a1, a2, a3);
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  swift_storeEnumTagMultiPayload();
  v14 = v12 + v7[7];
  *v14 = sub_243B37800;
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = v7[9];
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2438, &qword_243B75180);
  sub_243B705AC();
  *(v12 + v15) = v28;
  v16 = v12 + v7[8];
  *v16 = sub_243B69F08;
  *(v16 + 1) = v13;
  v16[16] = 0;
  sub_243B69F60(v12, v9, type metadata accessor for SharingOptionsView);
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FE0, &qword_243B75188));
  v18 = sub_243B7013C();
  sub_243B69F18(&qword_27EDA2428, type metadata accessor for SharingOptionsViewModel, &protocol conformance descriptor for SharingOptionsViewModel);
  v19 = sub_243B6FD3C();
  v20 = type metadata accessor for HostingControllerAndModelUpdates();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_viewController] = v18;
  v22 = &v21[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock];
  *v22 = sub_243B69F10;
  v22[1] = v19;
  v26.receiver = v21;
  v26.super_class = v20;
  v23 = objc_msgSendSuper2(&v26, sel_init);
  sub_243B69FD0(v12, type metadata accessor for SharingOptionsView);
  return v23;
}

uint64_t sub_243B69DEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_243B69E24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_243B7080C();
  (*(v3 + 16))(v3, v4);
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_243B69E94()
{
  result = qword_27EDA2F30;
  if (!qword_27EDA2F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDA2F30);
  }

  return result;
}

uint64_t sub_243B69F18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243B69F60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B69FD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SharingOptionsViewModel.__allocating_init(collaborationOptionsGroups:userDidChangeOption:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SharingOptionsViewModel.init(collaborationOptionsGroups:userDidChangeOption:)(a1, a2, a3);
  return v6;
}

uint64_t static SharingOptionsViewModel.UserAction.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_243B70C6C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_243B70C6C()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243B6A138(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_243B6A198()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_243B6A1E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

double sub_243B6A288@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_243B6A308(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

double sub_243B6A384()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B6A3F8(double a1, double a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B6A474(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B6A518(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3000, &qword_243B751F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B6A6B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3000, &qword_243B751F0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B6A7F0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3000, &qword_243B751F0);
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

  v10 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__contentSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

void sub_243B6A960(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a2 = v3;
}

uint64_t sub_243B6A9E0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B6AA5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B6AAD0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B6AB40(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B52B38;
}

uint64_t sub_243B6ABE4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3018, &qword_243B75248);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3010, &qword_243B75240);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B6AD84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3018, &qword_243B75248);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3010, &qword_243B75240);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B6AEBC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3018, &qword_243B75248);
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

  v10 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__collaborationOptionsGroups;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3010, &qword_243B75240);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B56C5C;
}

uint64_t SharingOptionsViewModel.userDidChangeOption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  sub_243B2E364(v1, *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption + 8));
  return v1;
}

uint64_t SharingOptionsViewModel.contentSizeDidChange.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  sub_243B2E364(v1, *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange + 8));
  return v1;
}

uint64_t SharingOptionsViewModel.__allocating_init(collaborationOptionsGroups:layoutMargins:userDidChangeOption:contentSizeDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  type metadata accessor for CGSize(0);
  sub_243B6FBFC();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3020, &qword_243B75250);
  sub_243B6FBFC();
  swift_endAccess();
  v18 = (v17 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  *v18 = a6;
  v18[1] = a7;
  v18[2] = a8;
  v18[3] = a9;
  v19 = (v17 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  *v19 = a2;
  v19[1] = a3;
  v20 = (v17 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  *v20 = a4;
  v20[1] = a5;
  return v17;
}

uint64_t SharingOptionsViewModel.init(collaborationOptionsGroups:layoutMargins:userDidChangeOption:contentSizeDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v28 - v21;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v23 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__contentSize;
  type metadata accessor for CGSize(0);
  v28[1] = 0;
  v28[2] = 0;
  sub_243B6FBFC();
  (*(v20 + 32))(v9 + v23, v22, v19);
  swift_beginAccess();
  v28[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3020, &qword_243B75250);
  sub_243B6FBFC();
  swift_endAccess();
  v24 = (v9 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  *v24 = a6;
  v24[1] = a7;
  v24[2] = a8;
  v24[3] = a9;
  v25 = (v9 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v9 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  *v26 = a4;
  v26[1] = a5;
  return v9;
}

uint64_t SharingOptionsViewModel.init(collaborationOptionsGroups:userDidChangeOption:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - v9;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v11 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__contentSize;
  type metadata accessor for CGSize(0);
  v16[1] = 0;
  v16[2] = 0;
  sub_243B6FBFC();
  (*(v8 + 32))(v3 + v11, v10, v7);
  swift_beginAccess();
  v16[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3020, &qword_243B75250);
  sub_243B6FBFC();
  swift_endAccess();
  v12 = (v3 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (v3 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  *v13 = a2;
  v13[1] = a3;
  v14 = (v3 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  *v14 = 0;
  v14[1] = 0;
  return v3;
}

uint64_t SharingOptionsViewModel.__allocating_init(collaborationShareOptions:layoutMargins:userDidChangeOption:contentSizeDidChange:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  if (!a1)
  {
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = a2;
    *(v22 + 5) = a3;
    sub_243B2E364(a2, a3);
    v24 = sub_243B2E2F0;
    goto LABEL_5;
  }

  v18 = [a1 summary];
  v19 = sub_243B7082C();
  v21 = v20;

  v22 = swift_allocObject();
  *(v22 + 2) = v19;
  *(v22 + 3) = v21;
  *(v22 + 4) = a2;
  *(v22 + 5) = a3;
  sub_243B2E364(a2, a3);
  v23 = [a1 optionsGroups];
  v24 = sub_243B2EC5C;
  if (!v23)
  {
LABEL_5:
    v26 = v24;
    goto LABEL_6;
  }

  v25 = v23;
  sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
  sub_243B7089C();

  v26 = sub_243B2EC5C;
LABEL_6:
  type metadata accessor for SharingOptionsViewModel(0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  type metadata accessor for CGSize(0);
  sub_243B6FBFC();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3020, &qword_243B75250);
  sub_243B6FBFC();
  swift_endAccess();
  sub_243B2BFCC(a2, a3);

  v28 = (v27 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  *v28 = a6;
  v28[1] = a7;
  v28[2] = a8;
  v28[3] = a9;
  v29 = (v27 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  *v29 = v26;
  v29[1] = v22;
  v30 = (v27 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  *v30 = a4;
  v30[1] = a5;
  return v27;
}

uint64_t type metadata accessor for SharingOptionsViewModel(uint64_t a1)
{
  result = qword_27EDA3028;
  if (!qword_27EDA3028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharingOptionsViewModel.__allocating_init(collaborationShareOptions:userDidChangeOption:)(id a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = [a1 summary];
    v7 = sub_243B7082C();
    v9 = v8;

    v10 = swift_allocObject();
    *(v10 + 2) = v7;
    *(v10 + 3) = v9;
    *(v10 + 4) = a2;
    *(v10 + 5) = a3;
    sub_243B2E364(a2, a3);
    v11 = [a1 optionsGroups];
    if (v11)
    {
      v12 = v11;
      sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
      sub_243B7089C();
    }
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 4) = a2;
    *(v10 + 5) = a3;
    sub_243B2E364(a2, a3);
  }

  type metadata accessor for SharingOptionsViewModel(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  type metadata accessor for CGSize(0);
  sub_243B6FBFC();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3020, &qword_243B75250);
  sub_243B6FBFC();
  swift_endAccess();
  sub_243B2BFCC(a2, a3);

  v14 = (v13 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = (v13 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  *v15 = sub_243B2EC5C;
  v15[1] = v10;
  v16 = (v13 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  *v16 = 0;
  v16[1] = 0;
  return v13;
}

uint64_t sub_243B6BA28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SharingOptionsViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__contentSize;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__collaborationOptionsGroups;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3010, &qword_243B75240);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption), *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption + 8));
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange), *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange + 8));
  return v0;
}

uint64_t SharingOptionsViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__contentSize;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__collaborationOptionsGroups;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3010, &qword_243B75240);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption), *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption + 8));
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange), *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange + 8));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_243B6BC94@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharingOptionsViewModel(0);
  result = sub_243B6FBEC();
  *a2 = result;
  return result;
}

uint64_t sub_243B6BCD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

void sub_243B6BD94(uint64_t a1)
{
  sub_243B6C100(319);
  if (v1 <= 0x3F)
  {
    sub_243B6C158(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_243B6C100(uint64_t a1)
{
  if (!qword_27EDA3038)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_243B6FC5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA3038);
    }
  }
}

void sub_243B6C158(uint64_t a1)
{
  if (!qword_27EDA3040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA3020, &qword_243B75250);
    v1 = sub_243B6FC5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA3040);
    }
  }
}

id AddressingViewFactory.__allocating_init(headerImageData:headerTitle:loadingText:supplementaryText:userInfoText:primaryButtonText:secondaryButtonText:shouldAllowEmptyAddresses:userDidClickPrimaryButton:userDidClickSecondaryButton:userDidClickShowContactPicker:userDidChangeAddresses:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v92 = a8;
  v91 = a7;
  v88 = a6;
  v87 = a5;
  v86 = a4;
  v85 = a3;
  v110 = a1;
  v111 = a22;
  v109 = a21;
  v107 = a20;
  v113 = a23;
  v114 = a19;
  v112 = a18;
  v115 = a17;
  v98 = a15;
  v97 = a14;
  v96 = a13;
  v94 = a12;
  v93 = a11;
  v90 = a10;
  v89 = a9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v84 - v25;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F80, &unk_243B75080);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v84 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v84 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v84 - v33;
  v106 = v23;
  v105 = objc_allocWithZone(v23);
  type metadata accessor for AddressingViewModel(0);
  v35 = swift_allocObject();
  v36 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v117 = 0;
  sub_243B584CC(v110, a2);
  v108 = a16;
  sub_243B2E364(a16, v115);
  sub_243B2E364(v112, v114);
  sub_243B2E364(v107, v109);
  sub_243B2E364(v111, v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DF0, &unk_243B74B80);
  sub_243B6FBFC();
  v37 = *(v32 + 32);
  v84 = v31;
  v37(v35 + v36, v34, v31);
  *(v35 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 0;
  v38 = (v35 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  LOBYTE(v117) = 1;
  sub_243B6FBFC();
  (*(v28 + 32))(v35 + v39, v30, v27);
  swift_unknownObjectWeakInit();
  *(v35 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_store) = MEMORY[0x277D84FA0];
  v95 = a2;
  if (a2 >> 60 == 15)
  {
    swift_beginAccess();
    (*(v32 + 8))(v35 + v36, v84);
    v121 = 0;
    sub_243B6FBFC();
    swift_endAccess();
  }

  else
  {
    v40 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v41 = v110;
    sub_243B58478(v110, a2);
    sub_243B58478(v41, a2);
    v42 = sub_243B6FA9C();
    v43 = [v40 initWithData_];

    sub_243B58410(v41, a2);
    swift_beginAccess();
    (*(v32 + 8))(v35 + v36, v84);
    v121 = v43;
    sub_243B6FBFC();
    swift_endAccess();
    sub_243B58410(v41, a2);
  }

  if (v86)
  {
    v44 = v85;
  }

  else
  {
    v44 = 0;
  }

  v45 = 0xE000000000000000;
  if (v86)
  {
    v46 = v86;
  }

  else
  {
    v46 = 0xE000000000000000;
  }

  swift_beginAccess();
  v121 = v44;
  v122 = v46;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v117 = 0;
  v118 = 0xE000000000000000;
  v119 = 0;
  v120 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FA0, &unk_243B750A0);
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v121 = 0;
  v122 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  if (v88)
  {
    v47 = v87;
  }

  else
  {
    v47 = 0;
  }

  if (v88)
  {
    v48 = v88;
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  swift_beginAccess();
  v121 = v47;
  v122 = v48;
  sub_243B6FBFC();
  swift_endAccess();
  if (v92)
  {
    v49 = v91;
  }

  else
  {
    v49 = 0;
  }

  if (v92)
  {
    v50 = v92;
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  swift_beginAccess();
  v121 = v49;
  v122 = v50;
  sub_243B6FBFC();
  swift_endAccess();
  if (v90)
  {
    v51 = v89;
  }

  else
  {
    v51 = 0;
  }

  if (v90)
  {
    v52 = v90;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  swift_beginAccess();
  v121 = v51;
  v122 = v52;
  sub_243B6FBFC();
  swift_endAccess();
  if (v94)
  {
    v53 = v93;
  }

  else
  {
    v53 = 0;
  }

  if (v94)
  {
    v54 = v94;
  }

  else
  {
    v54 = 0xE000000000000000;
  }

  swift_beginAccess();
  v121 = v53;
  v122 = v54;
  sub_243B6FBFC();
  swift_endAccess();
  v55 = (v35 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  v56 = v108;
  v57 = v115;
  *v55 = v108;
  v55[1] = v57;
  if (v97)
  {
    v58 = v96;
  }

  else
  {
    v58 = 0;
  }

  if (v97)
  {
    v45 = v97;
  }

  swift_beginAccess();
  v121 = v58;
  v122 = v45;
  sub_243B2E364(v56, v57);
  sub_243B6FBFC();
  swift_endAccess();
  v59 = (v35 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick);
  v60 = v112;
  v61 = v114;
  *v59 = v112;
  v59[1] = v61;
  v62 = *v38;
  v63 = v38[1];
  v64 = v107;
  v65 = v109;
  *v38 = v107;
  v38[1] = v65;
  sub_243B2E364(v60, v61);
  v66 = v65;
  sub_243B2E364(v64, v65);
  sub_243B2BFCC(v62, v63);
  v67 = (v35 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
  v68 = v111;
  v69 = v113;
  *v67 = v111;
  v67[1] = v69;
  swift_beginAccess();
  v121 = MEMORY[0x277D84F90];
  sub_243B2E364(v68, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  sub_243B6FBFC();
  *(v35 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) = v98 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  v70 = v99;
  sub_243B6FC0C();
  swift_endAccess();

  sub_243B2E680(&qword_27EDA2E00, &qword_27EDA2DE8, &unk_243B74B70, MEMORY[0x277CBCEC8]);
  sub_243B30A50();
  v71 = v102;
  v72 = v101;
  sub_243B6FC6C();
  (*(v100 + 8))(v70, v72);
  swift_allocObject();
  swift_weakInit();
  sub_243B2E680(&qword_27EDA2E08, &unk_27EDA2F80, &unk_243B75080, MEMORY[0x277CBCBE0]);
  v73 = v104;
  sub_243B6FC7C();

  (*(v103 + 8))(v71, v73);
  swift_beginAccess();
  sub_243B6FBDC();
  swift_endAccess();

  sub_243B2BFCC(v68, v69);
  sub_243B2BFCC(v64, v66);
  v74 = v60;
  v75 = v114;
  sub_243B2BFCC(v74, v114);
  v76 = v108;
  v77 = v115;
  sub_243B2BFCC(v108, v115);
  v78 = v110;
  v79 = v95;
  sub_243B58410(v110, v95);
  v80 = v105;
  *&v105[OBJC_IVAR____TtC14CloudSharingUI21AddressingViewFactory_viewModel] = v35;
  v117 = sub_243B69F08;
  v118 = v35;
  LOBYTE(v119) = 0;
  v81 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3058, &qword_243B75360));

  *&v80[OBJC_IVAR____TtC14CloudSharingUI21AddressingViewFactory_viewController] = sub_243B7013C();
  v116.receiver = v80;
  v116.super_class = v106;
  v82 = objc_msgSendSuper2(&v116, sel_init);
  sub_243B2BFCC(v111, v113);
  sub_243B2BFCC(v64, v66);
  sub_243B2BFCC(v112, v75);
  sub_243B2BFCC(v76, v77);
  sub_243B58410(v78, v79);
  return v82;
}

id AddressingViewFactory.init(headerImageData:headerTitle:loadingText:supplementaryText:userInfoText:primaryButtonText:secondaryButtonText:shouldAllowEmptyAddresses:userDidClickPrimaryButton:userDidClickSecondaryButton:userDidClickShowContactPicker:userDidChangeAddresses:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = sub_243B6DD7C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
  sub_243B2BFCC(a22, a23);
  sub_243B2BFCC(a20, a21);
  sub_243B2BFCC(a18, a19);
  sub_243B2BFCC(a16, a17);
  sub_243B58410(a1, a2);
  return v24;
}

uint64_t sub_243B6CE8C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243B6D230(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14)
{
  v14 = a8;
  v15 = a7;
  if (a2 >> 60 == 15)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = 0;

    sub_243B6FC4C();
  }

  else
  {
    v22 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_243B584CC(a1, a2);
    sub_243B58478(a1, a2);
    v23 = sub_243B6FA9C();
    v24 = [v22 initWithData_];

    sub_243B58410(a1, a2);
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v24;

    v25 = v24;
    sub_243B6FC4C();
    v26 = a1;
    v15 = a7;
    v14 = a8;
    sub_243B58410(v26, a2);
  }

  if (a4)
  {
    v27 = a3;
  }

  else
  {
    v27 = 0;
  }

  if (a4)
  {
    v28 = a4;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v48 == v27 && v49 == v28)
  {
  }

  else
  {
    v29 = sub_243B70C6C();

    if (v29)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v48 = v27;
      v49 = v28;

      sub_243B6FC4C();
    }
  }

  if (a6)
  {
    v30 = a5;
  }

  else
  {
    v30 = 0;
  }

  if (a6)
  {
    v31 = a6;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v48 == v30 && v49 == v31)
  {
  }

  else
  {
    v32 = sub_243B70C6C();

    if (v32)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v48 = v30;
      v49 = v31;

      sub_243B6FC4C();
    }
  }

  if (v14)
  {
    v33 = v15;
  }

  else
  {
    v33 = 0;
  }

  if (v14)
  {
    v34 = v14;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v48 == v33 && v49 == v34)
  {
  }

  else
  {
    v35 = sub_243B70C6C();

    if (v35)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v48 = v33;
      v49 = v34;

      sub_243B6FC4C();
    }
  }

  if (a10)
  {
    v36 = a9;
  }

  else
  {
    v36 = 0;
  }

  if (a10)
  {
    v37 = a10;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v48 == v36 && v49 == v37)
  {
  }

  else
  {
    v38 = sub_243B70C6C();

    if (v38)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v48 = v36;
      v49 = v37;

      sub_243B6FC4C();
    }
  }

  if (a12)
  {
    v39 = a11;
  }

  else
  {
    v39 = 0;
  }

  if (a12)
  {
    v40 = a12;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v48 == v39 && v49 == v40)
  {
  }

  else
  {
    v41 = sub_243B70C6C();

    if (v41)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v48 = v39;
      v49 = v40;

      sub_243B6FC4C();
    }
  }

  if (a14)
  {
    v42 = a13;
  }

  else
  {
    v42 = 0;
  }

  if (a14)
  {
    v43 = a14;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v48 == v42 && v49 == v43)
  {
  }

  else
  {
    v45 = sub_243B70C6C();

    if (v45)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_243B6FC4C();
    }
  }
}

id AddressingViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AddressingViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddressingViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_243B6DD7C(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v87 = a8;
  v86 = a7;
  v83 = a6;
  v82 = a5;
  v81 = a4;
  v80 = a3;
  v101 = a2;
  v102 = a22;
  v103 = a20;
  v104 = a23;
  v106 = a21;
  v107 = a18;
  v108 = a19;
  v109 = a17;
  v92 = a15;
  v91 = a14;
  v90 = a13;
  v89 = a12;
  v88 = a11;
  v85 = a10;
  v84 = a9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v78 - v24;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F80, &unk_243B75080);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v78 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v78 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v78 - v32;
  type metadata accessor for AddressingViewModel(0);
  v34 = swift_allocObject();
  v35 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v111 = 0;
  v100 = a1;
  v36 = a1;
  v37 = v101;
  sub_243B584CC(v36, v101);
  v105 = a16;
  sub_243B2E364(a16, v109);
  sub_243B2E364(v107, v108);
  sub_243B2E364(v103, v106);
  sub_243B2E364(v102, v104);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DF0, &unk_243B74B80);
  sub_243B6FBFC();
  v38 = *(v31 + 32);
  v79 = v30;
  v38(v34 + v35, v33, v30);
  *(v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 0;
  v39 = (v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  LOBYTE(v111) = 1;
  sub_243B6FBFC();
  (*(v27 + 32))(v34 + v40, v29, v26);
  swift_unknownObjectWeakInit();
  *(v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_store) = MEMORY[0x277D84FA0];
  if (v37 >> 60 == 15)
  {
    swift_beginAccess();
    (*(v31 + 8))(v34 + v35, v79);
    v115 = 0;
    sub_243B6FBFC();
    swift_endAccess();
  }

  else
  {
    v41 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v42 = v100;
    sub_243B58478(v100, v37);
    sub_243B58478(v42, v37);
    v43 = sub_243B6FA9C();
    v44 = [v41 initWithData_];

    sub_243B58410(v42, v37);
    swift_beginAccess();
    (*(v31 + 8))(v34 + v35, v79);
    v115 = v44;
    sub_243B6FBFC();
    swift_endAccess();
    sub_243B58410(v42, v37);
  }

  if (v81)
  {
    v45 = v80;
  }

  else
  {
    v45 = 0;
  }

  v46 = 0xE000000000000000;
  if (v81)
  {
    v47 = v81;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  swift_beginAccess();
  v115 = v45;
  v116 = v47;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v111 = 0;
  v112 = 0xE000000000000000;
  v113 = 0;
  v114 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FA0, &unk_243B750A0);
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v115 = 0;
  v116 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  if (v83)
  {
    v48 = v82;
  }

  else
  {
    v48 = 0;
  }

  if (v83)
  {
    v49 = v83;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  swift_beginAccess();
  v115 = v48;
  v116 = v49;
  sub_243B6FBFC();
  swift_endAccess();
  if (v87)
  {
    v50 = v86;
  }

  else
  {
    v50 = 0;
  }

  if (v87)
  {
    v51 = v87;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  swift_beginAccess();
  v115 = v50;
  v116 = v51;
  sub_243B6FBFC();
  swift_endAccess();
  if (v85)
  {
    v52 = v84;
  }

  else
  {
    v52 = 0;
  }

  if (v85)
  {
    v53 = v85;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  swift_beginAccess();
  v115 = v52;
  v116 = v53;
  sub_243B6FBFC();
  swift_endAccess();
  if (v89)
  {
    v54 = v88;
  }

  else
  {
    v54 = 0;
  }

  if (v89)
  {
    v55 = v89;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  swift_beginAccess();
  v115 = v54;
  v116 = v55;
  sub_243B6FBFC();
  swift_endAccess();
  v56 = (v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  v57 = v105;
  v58 = v109;
  *v56 = v105;
  v56[1] = v58;
  if (v91)
  {
    v59 = v90;
  }

  else
  {
    v59 = 0;
  }

  if (v91)
  {
    v46 = v91;
  }

  swift_beginAccess();
  v115 = v59;
  v116 = v46;
  sub_243B2E364(v57, v58);
  sub_243B6FBFC();
  swift_endAccess();
  v60 = (v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick);
  v61 = v107;
  v62 = v108;
  *v60 = v107;
  v60[1] = v62;
  v63 = *v39;
  v64 = v39[1];
  v65 = v103;
  v66 = v106;
  *v39 = v103;
  v39[1] = v66;
  sub_243B2E364(v61, v62);
  sub_243B2E364(v65, v66);
  sub_243B2BFCC(v63, v64);
  v67 = (v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
  v68 = v102;
  v69 = v104;
  *v67 = v102;
  v67[1] = v69;
  swift_beginAccess();
  v115 = MEMORY[0x277D84F90];
  sub_243B2E364(v68, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  sub_243B6FBFC();
  *(v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) = v92 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  v70 = v93;
  sub_243B6FC0C();
  swift_endAccess();

  sub_243B2E680(&qword_27EDA2E00, &qword_27EDA2DE8, &unk_243B74B70, MEMORY[0x277CBCEC8]);
  sub_243B30A50();
  v71 = v96;
  v72 = v95;
  sub_243B6FC6C();
  (*(v94 + 8))(v70, v72);
  swift_allocObject();
  swift_weakInit();
  sub_243B2E680(&qword_27EDA2E08, &unk_27EDA2F80, &unk_243B75080, MEMORY[0x277CBCBE0]);
  v73 = v98;
  sub_243B6FC7C();

  (*(v97 + 8))(v71, v73);
  swift_beginAccess();
  sub_243B6FBDC();
  swift_endAccess();

  sub_243B2BFCC(v68, v69);
  sub_243B2BFCC(v65, v66);
  sub_243B2BFCC(v107, v108);
  sub_243B2BFCC(v105, v109);
  sub_243B58410(v100, v101);
  v74 = v99;
  *&v99[OBJC_IVAR____TtC14CloudSharingUI21AddressingViewFactory_viewModel] = v34;
  v111 = sub_243B6EAC0;
  v112 = v34;
  LOBYTE(v113) = 0;
  v75 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3058, &qword_243B75360));

  *&v74[OBJC_IVAR____TtC14CloudSharingUI21AddressingViewFactory_viewController] = sub_243B7013C();
  v76 = type metadata accessor for AddressingViewFactory();
  v110.receiver = v74;
  v110.super_class = v76;
  return objc_msgSendSuper2(&v110, sel_init);
}

uint64_t sub_243B6EA18()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_243B6EA54(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_243B7088C();
  (*(v2 + 16))(v2, v3);
}

id sub_243B6EAC8(void *a1, void *a2)
{
  v4 = sub_243B6FB9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v8 = sub_243B6FB8C();
  v9 = sub_243B709AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_243B1E000, v8, v9, "Contact selected in contact picker", v10, 2u);
    MEMORY[0x245D4A570](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_243B584E0(a2, 0);
  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_243B6ECC4(void *a1, void *a2)
{
  v4 = sub_243B6FB9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v8 = sub_243B6FB8C();
  v9 = sub_243B709AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_243B1E000, v8, v9, "Contact property selected in contact picker", v10, 2u);
    MEMORY[0x245D4A570](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_243B584E0(0, a2);
  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_243B6EEF0(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27EDA4F58 == -1)
  {
    if (qword_27EDA4F60)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27EDA4F60)
    {
      return _availability_version_check();
    }
  }

  if (qword_27EDA4F50 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27EDA4F44 > a3)
      {
        return 1;
      }

      if (dword_27EDA4F44 >= a3)
      {
        return dword_27EDA4F48 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27EDA4F60;
  if (qword_27EDA4F60)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27EDA4F60 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x245D49EB0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27EDA4F44, &dword_27EDA4F48);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}
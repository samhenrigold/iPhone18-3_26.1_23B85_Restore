uint64_t sub_29D48E348@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HealthRecordsHealthPluginDelegate();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_29D48E3A0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_29D48E444()
{
  sub_29D48E500(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D5B6350;
  v1 = sub_29D5B2DEC();
  sub_29D5B2DDC();
  sub_29D5B2DFC();
  v2 = objc_allocWithZone(type metadata accessor for HealthRecordsTabGroup());
  *(v0 + 32) = HealthRecordsTabGroup.init(healthStore:healthExperienceStore:pinnedContentManager:)(v1, v5, v4);
  return v0;
}

void sub_29D48E500(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D48E550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC99B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D48E5A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id HealthRecordsTabGroup.init(healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, void *a3)
{
  v93 = a3;
  v92 = a2;
  v85 = a1;
  v90 = sub_29D5B200C();
  v89 = *(v90 - 8);
  MEMORY[0x2A1C7C4A8](v90, v3);
  v87 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x29EDB9C70];
  v5 = MEMORY[0x29EDC9C68];
  sub_29D48F2B4(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v86 = &v75 - v8;
  v83 = MEMORY[0x29EDB98E8];
  sub_29D48F2B4(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], v5);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v75 - v11;
  *&v91 = sub_29D5B18CC();
  sub_29D48F2B4(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v84 = v13;
  v80 = sub_29D5B104C();
  v14 = *(v80 - 8);
  v81 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v95 = xmmword_29D5B62A0;
  *(v16 + 16) = xmmword_29D5B62A0;
  v79 = *MEMORY[0x29EDC3770];
  v78 = *(v14 + 104);
  v78(v16 + v15);
  sub_29D5B15BC();
  v17 = sub_29D5B0C7C();
  v18 = *(v17 - 8);
  v76 = *(v18 + 56);
  v77 = v18 + 56;
  v76(v12, 1, 1, v17);
  sub_29D48F410(0, &qword_2A1A16210, MEMORY[0x29EDC37E0]);
  v19 = swift_allocObject();
  *(v19 + 16) = v95;
  *(v19 + 32) = sub_29D5B10DC();
  v82 = sub_29D5B186C();

  v20 = v83;
  sub_29D48F4AC(v12, qword_2A1A1A3B0, v83);
  v21 = swift_allocObject();
  *(v21 + 16) = v95;
  (v78)(v21 + v15, v79, v80);
  sub_29D5B15CC();
  v76(v12, 1, 1, v17);
  v22 = swift_allocObject();
  *(v22 + 16) = v95;
  *(v22 + 32) = sub_29D5B10DC();
  v84 = sub_29D5B186C();

  sub_29D48F4AC(v12, qword_2A1A1A3B0, v20);
  sub_29D5B15AC();
  v23 = sub_29D5B189C();

  sub_29D48F410(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8);
  v81 = v24;
  v25 = swift_allocObject();
  v91 = xmmword_29D5B6340;
  *(v25 + 16) = xmmword_29D5B6340;
  v26 = v82;
  *(v25 + 32) = v82;
  *(v25 + 40) = v23;
  v80 = sub_29D48F51C(0, &qword_2A1A16378, 0x29EDBA0A8);
  *&v95 = v26;
  v27 = v23;
  v28 = sub_29D5B401C();

  v29 = objc_opt_self();
  v30 = [v29 andPredicateWithSubpredicates_];

  v31 = v92;
  sub_29D48F564(v92, v100);
  v32 = v93;
  sub_29D48F564(v93, v99);
  v33 = type metadata accessor for HealthRecordsCoreDataTabGroup(0);
  v34 = objc_allocWithZone(v33);
  sub_29D48F564(v100, v98);
  sub_29D48F564(v99, v97);
  v35 = v85;
  v36 = v30;
  v37 = sub_29D5B2D2C();
  [v37 setSidebarAppearance_];
  [v37 setPreferredPlacement_];
  [v37 setAllowsReordering_];
  v38 = sub_29D5B401C();
  v39 = HKUIJoinStringsForAutomationIdentifier();

  [v37 setAccessibilityIdentifier_];
  sub_29D48F668(v99);
  sub_29D48F668(v100);
  v83 = OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_fetchedAboveAccountsGroup;
  v40 = v94;
  *&v94[OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_fetchedAboveAccountsGroup] = v37;
  sub_29D48F564(v31, v100);
  v41 = v32;
  sub_29D48F564(v32, v99);
  v42 = objc_allocWithZone(type metadata accessor for AccountsGroup(0));
  v43 = v35;
  v44 = sub_29D48F6E0(v43, v100, v99);

  v82 = OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_accountsGroup;
  *&v40[OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_accountsGroup] = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v91;
  v46 = v84;
  *(v45 + 32) = v84;
  *(v45 + 40) = v27;
  v85 = v27;
  *&v91 = v46;
  v47 = sub_29D5B401C();

  v48 = [v29 andPredicateWithSubpredicates_];

  sub_29D48F564(v31, v100);
  sub_29D48F564(v41, v99);
  v49 = objc_allocWithZone(v33);
  sub_29D48F564(v100, v98);
  sub_29D48F564(v99, v97);
  v50 = v43;
  v51 = v48;
  v52 = sub_29D5B2D2C();
  [v52 setSidebarAppearance_];
  [v52 setPreferredPlacement_];
  [v52 setAllowsReordering_];
  v53 = sub_29D5B401C();
  v54 = HKUIJoinStringsForAutomationIdentifier();

  [v52 setAccessibilityIdentifier_];
  sub_29D48F668(v99);
  sub_29D48F668(v100);
  v55 = OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_fetchedBelowAccountsGroup;
  v56 = v94;
  *&v94[OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_fetchedBelowAccountsGroup] = v52;
  v57 = sub_29D5B0EFC();
  v58 = v86;
  (*(*(v57 - 8) + 56))(v86, 1, 1, v57);
  v59 = v87;
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v89 + 8))(v59, v90);
  sub_29D48F4AC(v58, &qword_2A1A19588, v88);
  v60 = sub_29D5B3E1C();

  v61 = sub_29D5B3E1C();
  v62 = swift_allocObject();
  v63 = v56;
  v64 = *(v83 + v56);
  v65 = *&v56[v82];
  *(v62 + 16) = xmmword_29D5BA0F0;
  *(v62 + 32) = v64;
  *(v62 + 40) = v65;
  v66 = *&v63[v55];
  v67 = v63;
  *(v62 + 48) = v66;
  sub_29D48F51C(0, &qword_2A1A16290, 0x29EDC7CE8);
  v68 = v64;
  v69 = v65;
  v70 = v66;
  v71 = sub_29D5B401C();

  v72 = type metadata accessor for HealthRecordsTabGroup();
  v96.receiver = v67;
  v96.super_class = v72;
  v73 = objc_msgSendSuper2(&v96, sel_initWithTitle_image_identifier_children_viewControllerProvider_, v60, 0, v61, v71, 0);

  [v73 setPreferredPlacement_];
  sub_29D48F668(v93);
  sub_29D48F668(v92);
  return v73;
}

void sub_29D48F1EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D48F250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D48F2B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D48F318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D48F36C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D48F3C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D48F410(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29D5B4C5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D48F45C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D48F4AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D48F2B4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D48F51C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D48F564(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29D48F5E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D48F668(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_29D48F6E0(void *a1, void *a2, void *a3)
{
  v41 = a3;
  v42 = a2;
  v40 = a1;
  v39 = sub_29D5B200C();
  v3 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x29EDB9C70];
  v7 = MEMORY[0x29EDC9C68];
  sub_29D48F2B4(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v37 - v10;
  v12 = MEMORY[0x29EDB98E8];
  sub_29D48F2B4(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], v7);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v37 - v15;
  sub_29D5B18CC();
  sub_29D48F2B4(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v17 = sub_29D5B104C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v37 = xmmword_29D5B62A0;
  *(v20 + 16) = xmmword_29D5B62A0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x29EDC3770], v17);
  sub_29D5B15AC();
  v21 = sub_29D5B0C7C();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  sub_29D48F410(0, &qword_2A1A16210, MEMORY[0x29EDC37E0]);
  v22 = swift_allocObject();
  *(v22 + 16) = v37;
  *(v22 + 32) = sub_29D5B10DC();
  v23 = sub_29D5B186C();

  sub_29D48F4AC(v16, qword_2A1A1A3B0, v12);
  sub_29D48F564(v42, v44);
  sub_29D48F564(v41, v43);
  v24 = sub_29D5B0EFC();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v3 + 8))(v6, v39);
  sub_29D48F4AC(v11, &qword_2A1A19588, v38);
  v25 = sub_29D5B3E1C();
  v26 = [objc_opt_self() systemImageNamed_];

  if (v26)
  {
    sub_29D48F410(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_29D5B6350;
    *(v27 + 32) = [objc_opt_self() systemGray3Color];
    sub_29D48F51C(0, &unk_2A1A19430, 0x29EDC7A00);
    v28 = sub_29D5B401C();

    v29 = [objc_opt_self() configurationWithPaletteColors_];

    v30 = [v26 imageWithConfiguration_];
  }

  v31 = v40;
  v32 = v23;
  v33 = sub_29D5B2D2C();
  [v33 setPreferredPlacement_];
  v34 = sub_29D5B401C();
  v35 = HKUIJoinStringsForAutomationIdentifier();

  [v33 setAccessibilityIdentifier_];
  sub_29D48F668(v41);
  sub_29D48F668(v42);
  return v33;
}

void sub_29D48FD28(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29D48F51C(0, &qword_2A1A16290, 0x29EDC7CE8);
  v4 = sub_29D5B402C();
  v5 = a1;
  sub_29D48FDA8(v4);
}

id sub_29D48FDA8(uint64_t a1)
{
  sub_29D48F51C(0, &qword_2A1A16290, 0x29EDC7CE8);
  v2 = sub_29D5B401C();

  v7.receiver = v1;
  v7.super_class = type metadata accessor for AccountsGroup(0);
  objc_msgSendSuper2(&v7, sel_setChildren_, v2);

  v3 = [v1 children];
  v4 = sub_29D5B402C();

  if (v4 >> 62)
  {
    v5 = sub_29D5B485C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return [v1 setSidebarAppearance_];
}

id sub_29D48FEA4(void *a1)
{
  v4.receiver = a1;
  v4.super_class = type metadata accessor for AccountsGroup(0);
  v1 = v4.receiver;
  v2 = objc_msgSendSuper2(&v4, sel_children);
  if (!v2)
  {
    sub_29D48F51C(0, &qword_2A1A16290, 0x29EDC7CE8);
    sub_29D5B402C();
    v2 = sub_29D5B401C();
  }

  return v2;
}

void sub_29D48FF60()
{
  v1 = v0;
  v2 = sub_29D5B2D1C();
  v3 = [v2 fetchedObjects];

  v4 = MEMORY[0x29EDCA190];
  if (v3)
  {
    sub_29D5B18CC();
    v5 = sub_29D5B402C();

    v14 = v4;
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x29ED5EF30](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v13 = v8;
        sub_29D54386C(&v13, v1, &v12);

        if (v12)
        {
          MEMORY[0x29ED5E5E0]();
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_29D5B408C();
          }

          sub_29D5B40AC();
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  sub_29D48F51C(0, &qword_2A1A16290, 0x29EDC7CE8);
  v11 = sub_29D5B401C();

  [v1 setChildren_];
}

uint64_t sub_29D490158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D490168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D490178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29D490208(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_29D49028C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D4902AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_29D4902D4()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4903C8()
{
  MEMORY[0x29ED5FC30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490400()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490438(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29D490448()
{
  MEMORY[0x29ED5FC30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490480()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D490574()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D490638()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D490670()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D490714()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D4907FC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D490844()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D4908F0()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4909E4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490A1C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

void sub_29D490A5C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_29D490A6C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_29D490A7C()
{
  MEMORY[0x29ED5FC30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490AB4()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29D490BB8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490C00()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D490C94()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D490D20()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D490D68()
{

  return MEMORY[0x2A1C733A0](v0, 104, 7);
}

uint64_t sub_29D490DC8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v2, 32, 7);
}

uint64_t sub_29D490E00()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D490E40()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D490E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29D5B0EDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29D490F2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29D5B0EDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D490FD0()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4910CC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D491104()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D4911EC()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D4912E4()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4913E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_29D491538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B0EDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_29D491690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_29D491780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_29D4918C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4918FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_29D5B0E6C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29D491A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B1D6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_29D5B0E6C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_29D491B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_29D5B0E6C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29D491C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B1D6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_29D5B0E6C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_29D491D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29D5B1D6C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 52);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_29D491EE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_29D5B1D6C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 52);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_29D492034(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_29D4A05F4(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_29D4920E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29D4A05F4(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29D492184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29D5B0EDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29D492230(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29D5B0EDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D4922D8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D492310()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D492414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D4E4404(0, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29D5B0E6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29D492534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D4E4404(0, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29D5B0E6C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29D492664(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v2, 40, 7);
}

uint64_t sub_29D4926D4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D49270C()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D492870()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D492964()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D49299C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4929D4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D492A0C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D492A44()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D492A7C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v2, 56, 7);
}

uint64_t sub_29D492AE8()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D492B30()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D492C48()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D492C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29D492D44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B0EDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D492E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29D492EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B0EDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D492F78(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v2, 40, 7);
}

uint64_t sub_29D492FB8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D492FF0()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D4930BC()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4931B8()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D4932B8()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D493384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D523E04(0, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29D5B0E6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29D4934A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D523E04(0, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29D5B0E6C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29D4935C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B148C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29D493684(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B148C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D49373C()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D493834()
{
  v1 = sub_29D5B1BCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_29D5B1A2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_29D4939A0()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for SharedNewRecordsAlertData(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_29D5B1D6C();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  v12 = v6[10];
  v13 = sub_29D5B0E6C();
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);
  sub_29D48F668((v0 + v10));

  return MEMORY[0x2A1C733A0](v0, ((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v9 | 7);
}

uint64_t sub_29D493B7C()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D493C10()
{
  v1 = (type metadata accessor for SharedNewRecordsAlertData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_29D5B1D6C();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[10];
  v8 = sub_29D5B0E6C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29D493D80()
{
  sub_29D48F668((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D493DB8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D493DF0()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D493E28()
{
  v1 = sub_29D5B17CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D493EB0()
{
  sub_29D532AA4(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_29D5B148C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for SharedNewRecordsAlertData(0);
  if (!(*(*(v9 - 8) + 48))(v0 + v3, 1, v9))
  {
    v10 = sub_29D5B1D6C();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);

    v11 = *(v9 + 32);
    v12 = sub_29D5B0E6C();
    (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  }

  v13 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7;

  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2A1C733A0](v0, ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v7 | 7);
}

uint64_t sub_29D494104()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D494210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D53692C(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_29D494300(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D53692C(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_29D4943EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29D5B0E6C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_29D5B0EDC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_29D494510(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_29D5B0E6C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_29D5B0EDC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_29D494634(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_29D53692C(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_29D494714(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29D53692C(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29D4947E8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D494820()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D49485C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4948A8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4948E0()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4949DC()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D494AE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    sub_29D4B4C4C(0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    sub_29D4A05F4(0);
    v18 = v17;
    v19 = *(*(v17 - 8) + 48);
    v20 = a1 + a3[8];

    return v19(v20, a2, v18);
  }
}

void sub_29D494CB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_29D5B1D6C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return;
  }

  sub_29D4B4C4C(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  sub_29D4A05F4(0);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[8];

  v19(v20, a2, a2, v18);
}

uint64_t sub_29D494E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B2F9C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D494EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B2F9C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D494F6C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D494FA4()
{
  MEMORY[0x29ED5FC30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D494FDC()
{
  v1 = sub_29D5B33CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D4950A8()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D495174()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D4951BC()
{

  return MEMORY[0x2A1C733A0](v0, 66, 7);
}

uint64_t sub_29D49520C()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_29D5B0E6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_29D495364()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D495444()
{
  v1 = sub_29D5B0E6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D495514()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D49554C()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D49558C()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D4955D4()
{

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

uint64_t sub_29D495634()
{
  v1 = sub_29D5B353C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D495720()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D495764()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4957B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8, 0x29EDBAC58);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[9] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    sub_29D4B4C4C(0);
    v18 = v17;
    v19 = *(*(v17 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

void sub_29D4959A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_29D5B1D6C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8, 0x29EDBAC58);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
  }

  else
  {
    sub_29D4B4C4C(0);
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v20 = a1 + a4[10];

    v19(v20, a2, a2, v18);
  }
}

uint64_t sub_29D495B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29D5B1D6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29D495C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29D5B1C2C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29D5B1D6C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29D495DC4()
{
  MEMORY[0x29ED5FC30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D495DFC()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D495ECC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D495F0C()
{
  v1 = *(type metadata accessor for ClinicalSharingFeedItemData(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = sub_29D5B0EDC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D496014()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D496108()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D496140()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D496178()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D496220()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D496258()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D496290()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D496384()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D496478()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D49656C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4965A4()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4966A0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D4966E8()
{

  return MEMORY[0x2A1C733A0](v0, 44, 7);
}

uint64_t sub_29D496728(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v2, 64, 7);
}

uint64_t sub_29D496778()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_29D48F668((v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_29D49687C()
{
  v1 = sub_29D5B1D6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_29D48F668((v0 + v6));

  return MEMORY[0x2A1C733A0](v0, v6 + 40, v3 | 7);
}

uint64_t sub_29D496974(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v2, 104, 7);
}

uint64_t sub_29D4969D4()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v8 + 8, v3 | 7);
}

uint64_t sub_29D496AA8()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D496B80()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D496BB8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D496BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_29D4B4C4C(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_29D496D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B1D6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    sub_29D4B4C4C(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_29D496E48()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D496F3C()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D497008()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D497044()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D497080()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4970B8()
{
  sub_29D4B4C4C(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_29D5B0E6C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D4971F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29D5B1D6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29D4972E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29D5B1C2C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29D5B1D6C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29D4973E8()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4974DC()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D497524()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D49755C()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D497630()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D497668()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D497740()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D4977D4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D49780C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D497868(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double variable initialization expression of BaseFeedItemViewController.context@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_29D4978E8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x29ED5E740](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_29D49793C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x29ED5E750](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_29D4979C4(uint64_t a1, id *a2)
{
  result = sub_29D5B3E3C();
  *a2 = 0;
  return result;
}

uint64_t sub_29D497A3C(uint64_t a1, id *a2)
{
  v3 = sub_29D5B3E4C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29D497ABC@<X0>(uint64_t *a1@<X8>)
{
  sub_29D5B3E5C();
  v2 = sub_29D5B3E1C();

  *a1 = v2;
  return result;
}

void *sub_29D497B00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_29D497B10@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_29D497B20@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_29D497B2C(uint64_t a1)
{
  sub_29D498478(&qword_2A17A3AA0, type metadata accessor for UILayoutPriority, &unk_29D5B6098);
  sub_29D498478(&qword_2A17A3AA8, type metadata accessor for UILayoutPriority, &unk_29D5B6038);
  return sub_29D5B4ACC();
}

uint64_t sub_29D497BE8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_29D5B3E1C();

  *a2 = v3;
  return result;
}

uint64_t sub_29D497C30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D5B3E5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29D497C5C(uint64_t a1)
{
  sub_29D498478(&qword_2A17A3A90, type metadata accessor for HKOntologyShardIdentifier, &unk_29D5B61E0);
  sub_29D498478(&qword_2A17A3A98, type metadata accessor for HKOntologyShardIdentifier, &unk_29D5B6188);

  return sub_29D5B4ACC();
}

uint64_t sub_29D497D78()
{
  v0 = sub_29D5B3E5C();
  v1 = MEMORY[0x29ED5E580](v0);

  return v1;
}

uint64_t sub_29D497DB4(uint64_t a1)
{
  sub_29D5B3E5C();
  sub_29D5B3EFC();
}

uint64_t sub_29D497E08(uint64_t a1)
{
  sub_29D5B3E5C();
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  v1 = sub_29D5B4D9C();

  return v1;
}

uint64_t sub_29D497E90(void *a1, uint64_t *a2)
{
  v2 = sub_29D5B3E5C();
  v4 = v3;
  if (v2 == sub_29D5B3E5C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_29D5B4C7C();
  }

  return v7 & 1;
}

uint64_t sub_29D497F18(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D5B0EDC();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4983E0(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D5B5E20;
  v9 = sub_29D5B10AC();
  v10 = sub_29D5B1A8C();
  v12 = v11;
  if (v9)
  {
    v26 = 0x656C69666F72505BLL;
    v27 = 0xE90000000000003ALL;
    v25[1] = a1;
    v13 = v10;
    v9 = v9;
    v14 = [v9 identifier];
    sub_29D5B0EBC();

    v15 = sub_29D5B0E8C();
    v17 = v16;
    (*(v4 + 8))(v7, v3);
    MEMORY[0x29ED5E510](v15, v17);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v10 = v13;
    v18 = v26;
    v19 = v27;
  }

  else
  {
    v19 = 0x800000029D5BBCB0;
    v18 = 0xD000000000000013;
  }

  v26 = v18;
  v27 = v19;
  MEMORY[0x29ED5E510](v10, v12);

  v20 = v27;
  *(v8 + 32) = v26;
  *(v8 + 40) = v20;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_29D5B494C();

  v26 = 0xD00000000000001DLL;
  v27 = 0x800000029D5BBCD0;
  sub_29D498478(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
  v21 = sub_29D5B4C4C();
  MEMORY[0x29ED5E510](v21);

  MEMORY[0x29ED5E510](93, 0xE100000000000000);
  v22 = v27;
  *(v8 + 48) = v26;
  *(v8 + 56) = v22;
  v26 = v8;
  sub_29D4983E0(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D49823C();
  v23 = sub_29D5B3DBC();

  return v23;
}

unint64_t sub_29D49823C()
{
  result = qword_2A1A19690;
  if (!qword_2A1A19690)
  {
    sub_29D4983E0(255, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19690);
  }

  return result;
}

__n128 sub_29D4982E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_29D4983E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D498478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D498648(uint64_t a1)
{
  v96 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v94 = *(v3 - 8);
  v93 = *(v94 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v92 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D49A0A0(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v85 = &v74 - v8;
  v89 = sub_29D5B43DC();
  v87 = *(v89 - 8);
  MEMORY[0x2A1C7C4A8](v89, v9);
  v84 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4998AC(0);
  v12 = *(v11 - 8);
  v90 = v11;
  v91 = v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v86 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499A8C(0);
  v16 = *(v15 - 8);
  v97 = v15;
  v98 = v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v88 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499B9C(0);
  v20 = *(v19 - 8);
  v99 = v19;
  v100 = v20;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v95 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29D5B446C();
  v78 = *(v77 - 8);
  MEMORY[0x2A1C7C4A8](v77, v23);
  v75 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499DC0(0);
  v79 = v25;
  v80 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v76 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_29D5B13CC();
  v28 = *(v81 - 1);
  MEMORY[0x2A1C7C4A8](v81, v29);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29D5B13EC();
  v33 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v36 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_context);
  sub_29D5B143C();
  v83 = MEMORY[0x29EDC9E90];
  sub_29D49A0A0(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v37 = sub_29D5B104C();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  v82 = xmmword_29D5B62A0;
  *(v40 + 16) = xmmword_29D5B62A0;
  (*(v38 + 104))(v40 + v39, *MEMORY[0x29EDC3730], v37);
  (*(v28 + 104))(v31, *MEMORY[0x29EDC3898], v81);
  sub_29D5B13DC();
  v41 = v101;
  (*(v33 + 32))(v101 + OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_domain, v36, v32);
  v42 = v74;
  sub_29D5B140C();
  sub_29D499EC0(v103, v104);
  v43 = sub_29D5B136C();
  [v43 supportsHealthRecords];

  sub_29D48F668(v103);
  sub_29D5B140C();
  sub_29D499EC0(v103, v104);
  v44 = sub_29D5B136C();
  sub_29D48F668(v103);
  v45 = [objc_opt_self() defaultCenter];
  v46 = v44;
  v81 = v46;
  v47 = v75;
  sub_29D5B447C();

  sub_29D499A44(&qword_2A1A19608, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  v48 = v76;
  v49 = v77;
  sub_29D5B3B7C();
  (*(v78 + 8))(v47, v49);
  v50 = MEMORY[0x29EDB8908];
  sub_29D499A44(&qword_2A1A197B8, sub_29D499DC0, MEMORY[0x29EDB8908]);
  v51 = v79;
  v52 = sub_29D5B3B1C();
  (v80)[1](v48, v51);
  *(v41 + OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_indexerPublisher) = v52;
  v53 = sub_29D5B146C();
  v80 = v53;
  v103[0] = *(v41 + OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_indexerPublisher);

  v54 = v84;
  sub_29D5B43CC();
  v102 = v53;
  v55 = sub_29D5B43BC();
  v56 = v85;
  (*(*(v55 - 8) + 56))(v85, 1, 1, v55);
  sub_29D499998();
  sub_29D4999F8();
  sub_29D499A44(&qword_2A1A19778, sub_29D499998, MEMORY[0x29EDB8A00]);
  sub_29D499A44(&qword_2A1A19620, sub_29D4999F8, MEMORY[0x29EDCA280]);
  v57 = v86;
  sub_29D5B3C2C();
  sub_29D499F04(v56);
  (*(v87 + 8))(v54, v89);

  v58 = v92;
  sub_29D499E5C(v42, v92);
  v59 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v60 = (v93 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v61 + v59;
  v63 = v58;
  sub_29D499F90(v58, v62);
  *(v61 + v60) = v96;
  sub_29D499B38();
  sub_29D499A44(&qword_2A1A16980, sub_29D4998AC, MEMORY[0x29EDB89B8]);
  v64 = v88;
  v65 = v90;
  sub_29D5B3B7C();

  (*(v91 + 8))(v57, v65);
  sub_29D49A0A0(0, &qword_2A1A195D8, sub_29D499B38, v83);
  v66 = swift_allocObject();
  *(v66 + 16) = v82;
  sub_29D499E5C(v42, v63);
  v67 = type metadata accessor for RecordKindGenerator(0);
  swift_allocObject();
  v68 = sub_29D4E0D30(v63);
  *(v66 + 56) = v67;
  *(v66 + 64) = sub_29D499A44(qword_2A1A19EC0, type metadata accessor for RecordKindGenerator, &unk_29D5B7EA4);
  *(v66 + 32) = v68;
  sub_29D499A44(&qword_2A1A16E50, sub_29D499A8C, v50);
  v69 = v95;
  v70 = v97;
  sub_29D5B3C0C();

  (*(v98 + 8))(v64, v70);
  sub_29D499A44(&qword_2A1A17118, sub_29D499B9C, MEMORY[0x29EDB88B0]);
  v71 = v99;
  v72 = sub_29D5B3B1C();

  sub_29D49A104(v42);
  (*(v100 + 8))(v69, v71);
  result = v101;
  *(v101 + 16) = v72;
  return result;
}

uint64_t sub_29D499340@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v15 = sub_29D5B370C();
  v16 = sub_29D5B426C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v19;
    v35 = a2;
    *v18 = 136446466;
    swift_getMetatypeMetadata();
    v20 = sub_29D5B3E7C();
    v22 = sub_29D501890(v20, v21, &v34);
    v32 = v10;
    v23 = a1;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v35 = type metadata accessor for RecordKindGenerator(0);
    sub_29D49A160();
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v34);
    a1 = v23;

    *(v18 + 14) = v27;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s]: Emitting %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v19, -1, -1);
    v28 = v18;
    a3 = v33;
    MEMORY[0x29ED5FB80](v28, -1, -1);

    (*(v11 + 8))(v14, v32);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_29D499E5C(a1, v9);
  v29 = type metadata accessor for RecordKindGenerator(0);
  swift_allocObject();
  v30 = sub_29D4E0D30(v9);
  a3[3] = v29;
  result = sub_29D499A44(qword_2A1A19EC0, type metadata accessor for RecordKindGenerator, &unk_29D5B7EA4);
  a3[4] = result;
  *a3 = v30;
  return result;
}

uint64_t sub_29D49962C()
{

  v1 = OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecordKindGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A199B8;
  if (!qword_2A1A199B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D499744(uint64_t a1)
{
  result = sub_29D5B13EC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext(319);
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

uint64_t sub_29D499830@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4998AC(uint64_t a1)
{
  if (!qword_2A1A16978)
  {
    sub_29D499998();
    sub_29D4999F8();
    sub_29D499A44(&qword_2A1A19778, sub_29D499998, MEMORY[0x29EDB8A00]);
    sub_29D499A44(&qword_2A1A19620, sub_29D4999F8, MEMORY[0x29EDCA280]);
    v1 = sub_29D5B390C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16978);
    }
  }
}

void sub_29D499998()
{
  if (!qword_2A1A19770)
  {
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19770);
    }
  }
}

unint64_t sub_29D4999F8()
{
  result = qword_2A1A1A420;
  if (!qword_2A1A1A420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A1A420);
  }

  return result;
}

uint64_t sub_29D499A44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D499A8C(uint64_t a1)
{
  if (!qword_2A1A16E48)
  {
    sub_29D4998AC(255);
    sub_29D499B38();
    sub_29D499A44(&qword_2A1A16980, sub_29D4998AC, MEMORY[0x29EDB89B8]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16E48);
    }
  }
}

unint64_t sub_29D499B38()
{
  result = qword_2A1A19818;
  if (!qword_2A1A19818)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A19818);
  }

  return result;
}

void sub_29D499B9C(uint64_t a1)
{
  if (!qword_2A1A17110)
  {
    sub_29D499C88(255);
    sub_29D499A8C(255);
    sub_29D499A44(&qword_2A1A197A8, sub_29D499C88, MEMORY[0x29EDB89C0]);
    sub_29D499A44(&qword_2A1A16E50, sub_29D499A8C, MEMORY[0x29EDB8908]);
    v1 = sub_29D5B37DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17110);
    }
  }
}

void sub_29D499C88(uint64_t a1)
{
  if (!qword_2A1A197A0)
  {
    sub_29D49A0A0(255, &qword_2A1A196D8, sub_29D499B38, MEMORY[0x29EDC9A40]);
    sub_29D499D38();
    v1 = sub_29D5B392C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A197A0);
    }
  }
}

unint64_t sub_29D499D38()
{
  result = qword_2A1A196D0;
  if (!qword_2A1A196D0)
  {
    sub_29D49A0A0(255, &qword_2A1A196D8, sub_29D499B38, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A196D0);
  }

  return result;
}

void sub_29D499DC0(uint64_t a1)
{
  if (!qword_2A1A197B0)
  {
    sub_29D5B446C();
    sub_29D499A44(&qword_2A1A19608, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A197B0);
    }
  }
}

uint64_t sub_29D499E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthRecordsGeneratorContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_29D499EC0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29D499F04(uint64_t a1)
{
  sub_29D49A0A0(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D499F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthRecordsGeneratorContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D499FF4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D499340(v1 + v4, v5, a1);
}

void sub_29D49A0A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D49A104(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D49A160()
{
  result = qword_2A17A3B10;
  if (!qword_2A17A3B10)
  {
    type metadata accessor for RecordKindGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A3B10);
  }

  return result;
}

id sub_29D49A1A8()
{
  sub_29D4A0358(0, &qword_2A17A3B48, MEMORY[0x29EDC78D0]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v17 - v3;
  v5 = qword_2A17A3B28;
  v6 = *(v0 + qword_2A17A3B28);
  if (v6)
  {
    v7 = *(v0 + qword_2A17A3B28);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDC7958]) initWithFrame_];
    sub_29D48F51C(0, &qword_2A17A3B70, 0x29EDC7908);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = v0;
    v10 = sub_29D5B466C();
    [v8 addAction:v10 forControlEvents:64];

    sub_29D49ADDC();
    v11 = sub_29D5B46EC();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    sub_29D5B46FC();
    v12 = v8;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v13) = 1148846080;
    [v12 setContentHuggingPriority:0 forAxis:v13];
    [v12 setAlpha_];

    v14 = *(v9 + v5);
    *(v9 + v5) = v12;
    v7 = v12;

    v6 = 0;
  }

  v15 = v6;
  return v7;
}

uint64_t sub_29D49A3E8()
{
  v1 = v0;
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  v3 = v2;
  v30 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v31 - v5 + 16;
  v7 = type metadata accessor for UserDomainConceptFeedItemData(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = v31 - v14 + 16;
  v16 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v1 + v16, v15, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v8 + 48))(v15, 1, v7))
  {
    sub_29D4A01B4(v15, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
    v17 = 0;
    return v17 & 1;
  }

  sub_29D49FFE4(v15, v11, type metadata accessor for UserDomainConceptFeedItemData);
  sub_29D4A01B4(v15, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  v18 = v30;
  (*(v30 + 16))(v6, &v11[*(v7 + 20)], v3);
  sub_29D4A004C(v11, type metadata accessor for UserDomainConceptFeedItemData);
  v19 = sub_29D5B3CEC();
  (*(v18 + 8))(v6, v3);
  sub_29D5B1CBC();
  v20 = sub_29D5B1C8C();
  v21 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D4A0230(v1 + v21, v31, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v23 = v32;
  if (v32)
  {
    v24 = sub_29D499EC0(v31, v32);
    v25 = *(v23 - 8);
    MEMORY[0x2A1C7C4A8](v24, v24);
    v27 = v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v25 + 16))(v27);
    v28 = sub_29D5B314C();
    (*(v25 + 8))(v27, v23);
    v29 = [v28 profileIdentifier];

    sub_29D5B1C3C();
    sub_29D48F668(v31);
    v17 = sub_29D5B362C();

    return v17 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D49A888(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = sub_29D5B277C();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for UserDomainConceptFeedItemData(0);
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v2 + v17, v11, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_29D4A01B4(v11, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
    return 0;
  }

  else
  {
    sub_29D4A03AC(v11, v16);
    sub_29D49CBE0(v16, v7);
    sub_29D48F3C0(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_29D5B6320;
    strcpy((v19 + 32), "LabLatestView");
    *(v19 + 46) = -4864;
    *(v19 + 48) = v24;
    *(v19 + 56) = a2;

    *(v19 + 64) = sub_29D5B276C();
    *(v19 + 72) = v20;
    v21 = sub_29D5B401C();

    v22 = HKUIJoinStringsForAutomationIdentifier();

    if (v22)
    {
      v18 = sub_29D5B3E5C();
    }

    else
    {
      v18 = 0;
    }

    (*(v25 + 8))(v7, v26);
    sub_29D4A004C(v16, type metadata accessor for UserDomainConceptFeedItemData);
  }

  return v18;
}

void sub_29D49ABF8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for ConceptLatestValueFeedItemViewController(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_29D49B068();
  sub_29D49B208();
  sub_29D49BBAC();
  sub_29D49AD30();
}

void sub_29D49AC64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_29D49AD30();
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_29D49ACEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_29D49AD30()
{
  if (*(v0 + qword_2A17ABE98))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  sub_29D5B234C();
  sub_29D5B235C();
  sub_29D5B239C();
  v2 = sub_29D49A1A8();
  [v2 setAlpha_];

  sub_29D49B208();
}

void sub_29D49ADDC()
{
  v15 = sub_29D5B468C();
  v0 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B46BC();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B46DC();
  sub_29D49A3E8();
  v9 = [objc_opt_self() configurationWithScale_];
  v10 = sub_29D5B3E1C();

  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  v12 = v11;
  sub_29D5B46CC();
  (*(v5 + 104))(v8, *MEMORY[0x29EDC78B0], v4);
  sub_29D5B467C();
  (*(v0 + 104))(v3, *MEMORY[0x29EDC78A0], v15);
  sub_29D5B469C();
  v13 = [objc_opt_self() systemYellowColor];
  sub_29D5B46AC();
}

void sub_29D49B068()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 addSubview_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 addSubview_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = sub_29D49A1A8();
  [v7 addSubview_];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  sub_29D5B0FEC();
  sub_29D5B45BC();

  v11 = [v1 view];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v12 setBackgroundColor_];
}

void sub_29D49B208()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = qword_2A17ABE90;
  swift_beginAccess();
  v82 = v3;
  sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);

  v4 = sub_29D5B401C();

  [v2 deactivateConstraints_];

  sub_29D48F3C0(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D5B6330;
  v6 = *&v1[qword_2A17A3B18];
  v7 = [v6 leadingAnchor];
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  v10 = [v8 leadingAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v11;
  v12 = [v6 topAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v81 = v2;
  v15 = [v13 topAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v5 + 40) = v16;
  v17 = *&v1[qword_2A17A3B20];
  v18 = [v17 leadingAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v5 + 48) = v22;
  v23 = [v17 trailingAnchor];
  v24 = sub_29D49A1A8();
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:-7.0];
  *(v5 + 56) = v26;
  v27 = [v17 topAnchor];
  v28 = [v6 bottomAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28 constant:7.0];

  v30 = sub_29D5B442C();
  *(v5 + 64) = v30;
  v31 = [v17 bottomAnchor];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(v5 + 72) = v35;
  v36 = qword_2A17A3B28;
  v37 = [*&v1[qword_2A17A3B28] centerYAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = v38;
  v40 = [v38 centerYAnchor];

  v41 = [v37 constraintEqualToAnchor_];
  *(v5 + 80) = v41;
  v42 = [*&v1[v36] heightAnchor];
  v43 = [*&v1[v36] widthAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 multiplier:1.0];

  *(v5 + 88) = v44;
  v45 = [*&v1[v36] widthAnchor];
  v46 = [v1 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = sub_29D5B44AC();
  v48 = 32.0;
  if (v46)
  {
    v48 = 64.0;
  }

  v49 = [v45 constraintEqualToConstant_];

  *(v5 + 96) = v49;
  v50 = [v1 view];
  if (!v50)
  {
    goto LABEL_23;
  }

  v51 = v50;
  v52 = [v50 heightAnchor];

  v53 = [v52 constraintGreaterThanOrEqualToConstant_];
  v54 = sub_29D5B442C();

  *(v5 + 104) = v54;
  v55 = [v1 view];
  if (!v55)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v56 = v55;
  v57 = [v55 heightAnchor];

  v58 = [v57 constraintEqualToConstant_];
  v59 = sub_29D5B442C();

  *(v5 + 112) = v59;
  *&v1[v82] = v5;

  if (v1[qword_2A17ABE98] == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D5B6340;
    v61 = [v6 trailingAnchor];
    v62 = [*&v1[v36] leadingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:-7.0];

    *(inited + 32) = v63;
    v64 = [*&v1[v36] trailingAnchor];
    v65 = [v1 view];
    if (v65)
    {
      v66 = v65;
      v67 = [v65 trailingAnchor];

      v68 = [v64 constraintEqualToAnchor:v67 constant:-16.0];
      *(inited + 40) = v68;
LABEL_17:
      swift_beginAccess();
      sub_29D54F53C(inited);
      swift_endAccess();

      v80 = sub_29D5B401C();

      [v81 activateConstraints_];

      return;
    }

    goto LABEL_25;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B6340;
  v69 = [v6 trailingAnchor];
  v70 = [*&v1[v36] leadingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:7.0];

  *(inited + 32) = v71;
  v72 = [*&v1[v36] trailingAnchor];
  v73 = [v1 view];
  if (v73)
  {
    v74 = v73;
    v75 = [v73 trailingAnchor];

    v76 = [v1 traitCollection];
    v77 = [v76 preferredContentSizeCategory];

    LOBYTE(v76) = sub_29D5B44AC();
    v78 = 56.0;
    if ((v76 & 1) == 0)
    {
      v78 = 24.0;
    }

    v79 = [v72 constraintEqualToAnchor:v75 constant:v78];

    *(inited + 40) = v79;
    goto LABEL_17;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_29D49BBAC()
{
  v1 = v0;
  sub_29D4A0358(0, &qword_2A17A3B48, MEMORY[0x29EDC78D0]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v39 = &v38 - v4;
  sub_29D4A0358(0, &qword_2A17A3B88, MEMORY[0x29EDC4230]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v38 - v7;
  v9 = sub_29D5B277C();
  v38 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for UserDomainConceptFeedItemData(0);
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D49C0A0();
  v22 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v1 + v22, v16, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_29D4A01B4(v16, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  }

  sub_29D4A03AC(v16, v21);
  sub_29D49CBE0(v21, v12);
  v40[3] = v9;
  v40[4] = MEMORY[0x29EDC4228];
  v24 = sub_29D4A0410(v40);
  v25 = v38;
  v26 = *(v38 + 16);
  v26(v24, v12, v9);
  sub_29D5B237C();
  v26(v8, v12, v9);
  (*(v25 + 56))(v8, 0, 1, v9);
  sub_29D5B23AC();
  v27 = sub_29D49A1A8();
  v28 = v39;
  sub_29D49ADDC();
  v29 = sub_29D5B46EC();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  sub_29D5B46FC();

  v30 = sub_29D49A3E8();
  v31 = (v30 & 1) == 0;
  if (v30)
  {
    v32 = 0x7475426E69706E55;
  }

  else
  {
    v32 = 0x6F747475426E6950;
  }

  if (v31)
  {
    v33 = 0xE90000000000006ELL;
  }

  else
  {
    v33 = 0xEB000000006E6F74;
  }

  sub_29D49A888(v32, v33);
  v35 = v34;

  if (v35)
  {
    v36 = *(v1 + qword_2A17A3B28);
    v37 = sub_29D5B3E1C();

    [v36 setAccessibilityIdentifier_];
  }

  (*(v25 + 8))(v12, v9);
  return sub_29D4A004C(v21, type metadata accessor for UserDomainConceptFeedItemData);
}

uint64_t sub_29D49C0A0()
{
  v1 = sub_29D5B371C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36DC();
  v6 = v0;
  v7 = sub_29D5B370C();
  v8 = sub_29D5B426C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29D4A0474();
    v11 = sub_29D5B3E7C();
    v13 = sub_29D501890(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29D48C000, v7, v8, "reloadView: %{public}s", v9, 0xCu);
    sub_29D48F668(v10);
    MEMORY[0x29ED5FB80](v10, -1, -1);
    MEMORY[0x29ED5FB80](v9, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_29D49C268(uint64_t a1)
{
  v2 = v1;
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v62 - v8;
  v74 = type metadata accessor for UserDomainConceptFeedItemData(0);
  v70 = *(v74 - 8);
  MEMORY[0x2A1C7C4A8](v74, v10);
  v68 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v62 - v17;
  v19 = sub_29D5B1D6C();
  v72 = *(v19 - 8);
  v73 = v19;
  v21 = MEMORY[0x2A1C7C4A8](v19, v20);
  v67 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v71 = &v62 - v24;
  v25 = sub_29D5B2C2C();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v31);
  v33 = &v62 - v32;
  if (*(v2 + qword_2A17ABE98) == 1)
  {

    return sub_29D49DA10(0);
  }

  else
  {
    v65 = v9;
    v66 = v6;
    v62 = v5;
    sub_29D49D4A4(a1);
    v35 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x70);
    swift_beginAccess();
    result = sub_29D4A0230(v2 + v35, v75, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
    v36 = v76;
    if (v76)
    {
      v37 = sub_29D499EC0(v75, v76);
      v64 = &v62;
      v38 = *(v36 - 8);
      MEMORY[0x2A1C7C4A8](v37, v37);
      v40 = &v62 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v40);
      sub_29D5B315C();
      (*(v38 + 8))(v40, v36);
      (*(v26 + 104))(v30, *MEMORY[0x29EDC1D68], v25);
      v41 = sub_29D5B2C1C();
      v42 = *(v26 + 8);
      v42(v30, v25);
      v42(v33, v25);
      sub_29D48F668(v75);
      v43 = 15;
      if (v41)
      {
        v43 = 16;
      }

      v64 = v43;
      sub_29D5B1E5C();
      v63 = sub_29D5B1E4C();
      v44 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
      swift_beginAccess();
      sub_29D4A06BC(v2 + v44, v18, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
      v45 = *(v70 + 48);
      v46 = v74;
      if (v45(v18, 1, v74))
      {
        sub_29D4A01B4(v18, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
        v48 = v71;
        v47 = v72;
        v49 = v73;
        (*(v72 + 104))(v71, *MEMORY[0x29EDC4080], v73);
      }

      else
      {
        v50 = v68;
        sub_29D49FFE4(v18, v68, type metadata accessor for UserDomainConceptFeedItemData);
        sub_29D4A01B4(v18, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
        v47 = v72;
        v49 = v73;
        v51 = v67;
        (*(v72 + 16))(v67, v50, v73);
        v46 = v74;
        sub_29D4A004C(v50, type metadata accessor for UserDomainConceptFeedItemData);
        v48 = v71;
        (*(v47 + 32))(v71, v51, v49);
      }

      v53 = v65;
      v52 = v66;
      v54 = v2 + v44;
      v55 = v69;
      sub_29D4A06BC(v54, v69, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
      if (v45(v55, 1, v46))
      {
        sub_29D4A01B4(v55, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
        v56 = 0;
      }

      else
      {
        v57 = v55;
        v58 = v55;
        v59 = v68;
        sub_29D49FFE4(v57, v68, type metadata accessor for UserDomainConceptFeedItemData);
        sub_29D4A01B4(v58, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
        v60 = v62;
        (*(v52 + 16))(v53, v59 + *(v46 + 20), v62);
        sub_29D4A004C(v59, type metadata accessor for UserDomainConceptFeedItemData);
        v56 = sub_29D5B3CEC();
        (*(v52 + 8))(v53, v60);
      }

      v61 = v63;
      sub_29D5B1E0C();

      return (*(v47 + 8))(v48, v49);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_29D49CA9C(void *a1)
{
  if (a1)
  {
    v2 = [a1 preferredContentSizeCategory];
    v3 = sub_29D5B44AC();

    v4 = v3 & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = sub_29D5B44AC();
  if (v4 == 2 || ((v7 ^ v4) & 1) != 0)
  {

    sub_29D49BBAC();
  }
}

void sub_29D49CB74(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_29D49CA9C(a3);
}

uint64_t sub_29D49CBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a2;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v60 - v10;
  v12 = sub_29D5B0E6C();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_29D5B200C();
  v15 = *(v63 - 8);
  MEMORY[0x2A1C7C4A8](v63, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v22 = &v60 - v21;
  v23 = sub_29D5B1BCC();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D5B1D6C();
  v29 = *(*(v28 - 8) + 16);
  v64 = a1;
  v29(v27, a1, v28);
  v30 = *MEMORY[0x29EDC3F80];
  v68 = v24;
  v69 = v23;
  v31 = *(v24 + 104);
  v72 = v27;
  v31(v27, v30, v23);
  sub_29D5B1CBC();
  v32 = sub_29D5B1C8C();
  v33 = *((*MEMORY[0x29EDCA1E8] & *v3) + 0x70);
  swift_beginAccess();
  v70 = v3;
  result = sub_29D4A0230(v3 + v33, v73, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v35 = v74;
  if (v74)
  {
    v36 = sub_29D499EC0(v73, v74);
    v37 = *(v35 - 8);
    MEMORY[0x2A1C7C4A8](v36, v36);
    v39 = &v60 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v39);
    v40 = sub_29D5B314C();
    (*(v37 + 8))(v39, v35);
    v41 = sub_29D5B1C9C();

    sub_29D48F668(v73);
    v42 = sub_29D5B0EFC();
    (*(*(v42 - 8) + 56))(v22, 1, 1, v42);
    sub_29D5B1FFC();
    v43 = sub_29D5B2A0C();
    (*(v15 + 8))(v18, v63);
    sub_29D4A01B4(v22, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v44 = type metadata accessor for UserDomainConceptFeedItemData(0);
    v45 = v64;
    sub_29D4A06BC(v64 + v44[7], v11, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    v47 = v65;
    v46 = v66;
    v48 = (*(v65 + 48))(v11, 1, v66);
    v62 = v41;
    if (v48 == 1)
    {
      v63 = v43;
      sub_29D4A01B4(v11, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    }

    else
    {

      v49 = v61;
      (*(v47 + 32))(v61, v11, v46);
      v50 = [v41 utcDateFormatter];
      v51 = sub_29D5B0DEC();
      v52 = [v50 relativeStringFromDate_];

      v63 = sub_29D5B3E5C();
      (*(v47 + 8))(v49, v46);
    }

    v53 = v67;
    v67 = *(v45 + v44[6]);

    v66 = sub_29D5B1AFC();
    sub_29D5B1B9C();
    sub_29D49FFE4(v45 + v44[8], v53, sub_29D4A05F4);
    sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
    v55 = v54;
    v56 = *(v54 - 8);
    if ((*(v56 + 48))(v53, 1, v54) == 1)
    {
      sub_29D4A004C(v53, sub_29D4A05F4);
    }

    else
    {
      v57 = sub_29D5B3CEC();
      (*(v56 + 8))(v53, v55);
      v58 = v57;
      if ([v58 hasRenderableContent])
      {
        v59 = [objc_opt_self() referenceRangeViewDataFromInspectableValueInRange_];
      }
    }

    sub_29D49A3E8();
    sub_29D5B275C();

    return (*(v68 + 8))(v72, v69);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D49D4A4(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  v4 = v3;
  v35 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for UserDomainConceptFeedItemData(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v34 - v15;
  v17 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v2 + v17, v16, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v9 + 48))(v16, 1, v8))
  {
    return sub_29D4A01B4(v16, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  }

  v19 = v34;
  sub_29D49FFE4(v16, v12, type metadata accessor for UserDomainConceptFeedItemData);
  sub_29D4A01B4(v16, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  v20 = v35;
  (*(v35 + 16))(v7, &v12[*(v8 + 20)], v4);
  sub_29D4A004C(v12, type metadata accessor for UserDomainConceptFeedItemData);
  v21 = sub_29D5B3CEC();
  (*(v20 + 8))(v7, v4);
  v22 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x70);
  swift_beginAccess();
  sub_29D4A0230(v2 + v22, &v36, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  if (v37)
  {
    sub_29D497868(&v36, v38);
    sub_29D5B1CBC();
    v23 = sub_29D5B1C8C();
    sub_29D499EC0(v38, v38[3]);
    v24 = sub_29D5B314C();
    v25 = sub_29D5B1C9C();

    sub_29D5B21EC();
    v26 = sub_29D5B21DC();
    v27 = sub_29D5B219C();

    sub_29D4A0230(v19, &v36, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D48F3C0);
    v28 = v37;
    if (v37)
    {
      v29 = sub_29D499EC0(&v36, v37);
      v30 = *(v28 - 8);
      MEMORY[0x2A1C7C4A8](v29, v29);
      v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v32);
      v33 = sub_29D5B4C6C();
      (*(v30 + 8))(v32, v28);
      sub_29D48F668(&v36);
    }

    else
    {
      v33 = 0;
    }

    [v2 showViewController:v27 sender:{v33, v34}];

    swift_unknownObjectRelease();
    return sub_29D48F668(v38);
  }

  else
  {

    return sub_29D4A0598(&v36, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  }
}

uint64_t sub_29D49DA10(uint64_t a1)
{
  v116 = a1;
  v115 = sub_29D5B368C();
  v114 = *(v115 - 8);
  MEMORY[0x2A1C7C4A8](v115, v2);
  v112 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_29D5B23CC();
  v110 = *(v111 - 8);
  MEMORY[0x2A1C7C4A8](v111, v4);
  v109 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, &qword_2A17A3B68, MEMORY[0x29EDC4220]);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v113 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v122 = &v103 - v11;
  v12 = sub_29D5B264C();
  v123 = *(v12 - 8);
  v124 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v121 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_29D5B0EDC();
  v118 = *(v119 - 8);
  MEMORY[0x2A1C7C4A8](v119, v15);
  v117 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  v18 = v17;
  v128 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v127 = &v103 - v20;
  v129 = type metadata accessor for UserDomainConceptFeedItemData(0);
  v21 = *(v129 - 8);
  MEMORY[0x2A1C7C4A8](v129, v22);
  v126 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  v26 = MEMORY[0x2A1C7C4A8](v24 - 8, v25);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v103 - v30;
  v32 = sub_29D5B371C();
  v33 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v36 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36CC();
  v37 = v1;
  v38 = sub_29D5B370C();
  v39 = sub_29D5B429C();

  v125 = v39;
  v40 = os_log_type_enabled(v38, v39);
  v41 = MEMORY[0x29EDCA1E8];
  if (v40)
  {
    v107 = v33;
    v108 = v32;
    v120 = v18;
    v42 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v130 = v106;
    *v42 = 136446210;
    v43 = *((*v41 & *v37) + 0x60);
    swift_beginAccess();
    sub_29D4A06BC(v37 + v43, v31, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
    if ((*(v21 + 48))(v31, 1, v129))
    {
      sub_29D4A01B4(v31, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
      v44 = 0x44495555206F4E3CLL;
      v45 = 0xE90000000000003ELL;
    }

    else
    {
      v104 = type metadata accessor for UserDomainConceptFeedItemData;
      v105 = v21;
      v46 = v126;
      sub_29D49FFE4(v31, v126, type metadata accessor for UserDomainConceptFeedItemData);
      sub_29D4A01B4(v31, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
      v47 = v128;
      v48 = v127;
      v49 = v120;
      (*(v128 + 16))(v127, v46 + *(v129 + 20), v120);
      sub_29D4A004C(v46, v104);
      v50 = sub_29D5B3CEC();
      (*(v47 + 8))(v48, v49);
      v51 = [v50 UUID];

      v21 = v105;
      v52 = v117;
      sub_29D5B0EBC();

      v53 = sub_29D5B0E8C();
      v45 = v54;
      (*(v118 + 8))(v52, v119);
      v44 = v53;
    }

    v55 = v107;
    v56 = sub_29D501890(v44, v45, &v130);

    *(v42 + 4) = v56;
    _os_log_impl(&dword_29D48C000, v38, v125, "Attempting to toggle pin state %{public}s", v42, 0xCu);
    v57 = v106;
    sub_29D48F668(v106);
    MEMORY[0x29ED5FB80](v57, -1, -1);
    MEMORY[0x29ED5FB80](v42, -1, -1);

    (*(v55 + 8))(v36, v108);
    v18 = v120;
    v41 = MEMORY[0x29EDCA1E8];
  }

  else
  {

    (*(v33 + 8))(v36, v32);
  }

  v58 = v41;
  v59 = *((*v41 & *v37) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v37 + v59, v28, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v21 + 48))(v28, 1, v129))
  {
    v60 = qword_2A1A17DC8;
    v61 = type metadata accessor for UserDomainConceptFeedItemData;
    v62 = v28;
    return sub_29D4A01B4(v62, v60, v61);
  }

  v63 = v126;
  sub_29D49FFE4(v28, v126, type metadata accessor for UserDomainConceptFeedItemData);
  sub_29D4A01B4(v28, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  v64 = v128;
  v65 = v127;
  (*(v128 + 16))(v127, v63 + *(v129 + 20), v18);
  sub_29D4A004C(v63, type metadata accessor for UserDomainConceptFeedItemData);
  v66 = sub_29D5B3CEC();
  (*(v64 + 8))(v65, v18);
  sub_29D5B1CBC();
  v67 = sub_29D5B1C8C();
  v68 = *((*v58 & *v37) + 0x70);
  swift_beginAccess();
  result = sub_29D4A0230(v37 + v68, &v130, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v70 = v131;
  if (v131)
  {
    v71 = sub_29D499EC0(&v130, v131);
    v72 = *(v70 - 8);
    MEMORY[0x2A1C7C4A8](v71, v71);
    v74 = &v103 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v74);
    v75 = sub_29D5B314C();
    (*(v72 + 8))(v74, v70);
    v76 = [v75 profileIdentifier];

    sub_29D5B1C3C();
    sub_29D48F668(&v130);
    v77 = sub_29D49A3E8();
    v78 = (v77 & 1) == 0;
    if (v77)
    {
      v79 = 0x7475426E69706E55;
    }

    else
    {
      v79 = 0x6F747475426E6950;
    }

    if (v78)
    {
      v80 = 0xE90000000000006ELL;
    }

    else
    {
      v80 = 0xEB000000006E6F74;
    }

    sub_29D49A888(v79, v80);
    v82 = v81;

    v83 = v123;
    if (v82)
    {
      v84 = sub_29D49A1A8();
      v85 = sub_29D5B3E1C();

      [v84 setAccessibilityIdentifier_];
    }

    v86 = v122;
    sub_29D5B435C();
    v87 = v124;
    if ((*(v83 + 48))(v86, 1, v124) == 1)
    {

      v60 = &qword_2A17A3B68;
      v61 = MEMORY[0x29EDC4220];
      v62 = v86;
      return sub_29D4A01B4(v62, v60, v61);
    }

    v88 = v121;
    (*(v83 + 32))(v121, v86, v87);
    v89 = sub_29D5B35FC();
    if (v89 >> 62)
    {
      v102 = sub_29D5B485C();
      v88 = v121;

      if (v102)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v90)
      {
LABEL_25:
        v99 = v112;
        sub_29D5B361C();
        (*(v114 + 8))(v99, v115);
        sub_29D5B1E5C();
        v100 = sub_29D5B1E4C();
        v101 = v113;
        (*(v83 + 16))(v113, v88, v87);
        (*(v83 + 56))(v101, 0, 1, v87);
        sub_29D5B1DFC();

        sub_29D4A01B4(v101, &qword_2A17A3B68, MEMORY[0x29EDC4220]);
        return (*(v83 + 8))(v88, v87);
      }
    }

    result = sub_29D4A0230(v37 + v68, &v130, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
    v91 = v131;
    if (v131)
    {
      v92 = sub_29D499EC0(&v130, v131);
      v93 = *(v91 - 8);
      MEMORY[0x2A1C7C4A8](v92, v92);
      v95 = &v103 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v93 + 16))(v95);
      sub_29D5B314C();
      (*(v93 + 8))(v95, v91);
      sub_29D5B26AC();
      swift_allocObject();
      sub_29D5B269C();
      sub_29D48F668(&v130);
      v96 = v110;
      v97 = v109;
      v98 = v111;
      (*(v110 + 104))(v109, *MEMORY[0x29EDC41C0], v111);
      sub_29D5B266C();

      (*(v96 + 8))(v97, v98);
      v88 = v121;
      goto LABEL_25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D49E990()
{
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  v2 = v1;
  v20 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for UserDomainConceptFeedItemData(0);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v20 - v13;
  v15 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v0 + v15, v14, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v7 + 48))(v14, 1, v6))
  {
    sub_29D4A01B4(v14, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
    return 0;
  }

  else
  {
    sub_29D49FFE4(v14, v10, type metadata accessor for UserDomainConceptFeedItemData);
    sub_29D4A01B4(v14, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
    v17 = *(v6 + 20);
    v18 = v20;
    (*(v20 + 16))(v5, &v10[v17], v2);
    sub_29D4A004C(v10, type metadata accessor for UserDomainConceptFeedItemData);
    v19 = sub_29D5B3CEC();
    (*(v18 + 8))(v5, v2);
    return v19;
  }
}

id sub_29D49EC7C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = qword_2A17A3B18;
  *&v3[v6] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  v7 = qword_2A17A3B20;
  *&v3[v7] = [objc_allocWithZone(sub_29D5B23BC()) initWithFrame_];
  *&v3[qword_2A17A3B28] = 0;
  *&v3[qword_2A17ABE90] = MEMORY[0x29EDCA190];
  v8 = &v3[qword_2A17A3B30];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v3[qword_2A17ABE98] = 0;
  if (a2)
  {
    v9 = sub_29D5B3E1C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for ConceptLatestValueFeedItemViewController(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29D49EDBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D49EC7C(v5, v7, a4);
}

id sub_29D49EE1C(void *a1)
{
  v3 = qword_2A17A3B18;
  *&v1[v3] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  v4 = qword_2A17A3B20;
  *&v1[v4] = [objc_allocWithZone(sub_29D5B23BC()) initWithFrame_];
  *&v1[qword_2A17A3B28] = 0;
  *&v1[qword_2A17ABE90] = MEMORY[0x29EDCA190];
  v5 = &v1[qword_2A17A3B30];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v1[qword_2A17ABE98] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ConceptLatestValueFeedItemViewController(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_29D49EFD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConceptLatestValueFeedItemViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConceptLatestValueFeedItemViewController(uint64_t a1)
{
  result = qword_2A17A3B38;
  if (!qword_2A17A3B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

CGFloat sub_29D49F180()
{
  v1 = [*v0 view];
  if (v1)
  {
    v3 = v1;
    [v1 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v5;
    v13 = v7;
    v14 = v9;
    v15 = v11;

    return CGRectGetWidth(*&v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D49F214(char a1, char a2)
{
  v3 = v2;
  v5 = a1 & 1;
  sub_29D4A0358(0, &qword_2A17A3B48, MEMORY[0x29EDC78D0]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = aBlock - v8;
  if (*(v3 + qword_2A17ABE98) != v5)
  {
    *(v3 + qword_2A17ABE98) = v5;
    v10 = sub_29D49A1A8();
    sub_29D49ADDC();
    v11 = sub_29D5B46EC();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
    sub_29D5B46FC();

    if (a2)
    {
      v12 = objc_opt_self();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_29D4A00AC;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D49ACEC;
      aBlock[3] = &unk_2A2427B98;
      v14 = _Block_copy(aBlock);

      [v12 animateWithDuration:v14 animations:0.25];
      _Block_release(v14);
    }

    else
    {
      sub_29D49AD30();
    }
  }
}

id sub_29D49F420()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (sub_29D49A3E8())
  {
    v1 = sub_29D4D33F0(sub_29D4A00BC, v0);
  }

  else
  {
    v1 = sub_29D4D3788(sub_29D4A00BC, v0);
  }

  v2 = v1;
  sub_29D49A888(0xD000000000000013, 0x800000029D5BBE20);
  if (v3)
  {
    v4 = v2;
    v5 = sub_29D5B3E1C();

    [v4 setAccessibilityIdentifier_];
  }

  sub_29D48F3C0(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D5B6350;
  *(v6 + 32) = v2;
  sub_29D48F51C(0, &qword_2A17A3B50, 0x29EDC7A28);
  v7 = v2;
  v8 = sub_29D5B401C();

  v9 = [objc_opt_self() configurationWithActions_];

  return v9;
}

void sub_29D49F5E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_29D49DA10(2);
    a3(1);
  }

  else
  {
    (a3)();
  }
}

uint64_t sub_29D49F69C()
{
  v0 = sub_29D5B200C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDB9C70];
  sub_29D4A0358(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v13 - v8;
  sub_29D49A3E8();
  v10 = sub_29D5B0EFC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_29D5B1FFC();
  v11 = sub_29D5B2A0C();
  (*(v1 + 8))(v4, v0);
  sub_29D4A01B4(v9, &qword_2A1A19588, v5);
  return v11;
}

uint64_t sub_29D49F898()
{
  type metadata accessor for ConceptLatestValueFeedItemViewController(0);
  sub_29D4A0550(&qword_2A17A3B80, type metadata accessor for ConceptLatestValueFeedItemViewController, &unk_29D5B6468);
  return sub_29D5B28EC();
}

void *sub_29D49F910(uint64_t a1, uint64_t a2)
{
  sub_29D4A0358(0, &qword_2A17A3B68, MEMORY[0x29EDC4220]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v21 - v4;
  v6 = sub_29D5B264C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_29D5B435C();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_29D4A01B4(v5, &qword_2A17A3B68, MEMORY[0x29EDC4220]);
      return 0;
    }

    (*(v7 + 32))(v10, v5, v6);
    if ((sub_29D5B263C() & 1) == 0)
    {
      (*(v7 + 8))(v10, v6);

      return 0;
    }

    sub_29D49F69C();
    sub_29D49A3E8();
    v13 = sub_29D5B3E1C();
    v14 = [objc_opt_self() systemImageNamed_];

    sub_29D48F51C(0, &qword_2A17A3B70, 0x29EDC7908);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = sub_29D5B466C();
    sub_29D49A888(0x73657250676E6F4CLL, 0xE900000000000073);
    if (v16)
    {
      v17 = v15;
      v18 = sub_29D5B3E1C();

      [v17 setAccessibilityIdentifier_];
    }

    sub_29D48F51C(0, &qword_2A17A3B78, 0x29EDC7B60);
    sub_29D48F3C0(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_29D5B6350;
    *(v19 + 32) = v15;
    v20 = sub_29D5B459C();

    (*(v7 + 8))(v10, v6);
    return v20;
  }

  return result;
}

void sub_29D49FD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_29D49DA10(a3);
  }
}

id sub_29D49FD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = MEMORY[0x29EDCA5F8];
  v15 = 1107296256;
  v16 = sub_29D4A00C4;
  v17 = &unk_2A2427C10;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = MEMORY[0x29EDCA5F8];
  v15 = 1107296256;
  v16 = sub_29D4A0114;
  v17 = &unk_2A2427BE8;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  sub_29D490438(a4, a5);
  sub_29D490438(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

id sub_29D49FF24()
{
  v1 = *v0;
  sub_29D48F51C(0, &qword_2A17A3B58, 0x29EDC7A18);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = v1;
  return sub_29D49FD84(0, sub_29D4A01A4, v2, sub_29D4A01AC, v3);
}

uint64_t sub_29D49FFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4A004C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29D4A00C4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_29D4A0114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_29D48F51C(0, &qword_2A17A3B60, 0x29EDC7B68);
  v3 = sub_29D5B402C();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_29D4A01B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4A0358(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4A0230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_29D4A02A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D4A02FC(255, a3, a4);
    v5 = sub_29D5B472C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D4A02FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D4A0358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D4A03AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDomainConceptFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_29D4A0410(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_29D4A0474()
{
  result = qword_2A17A3B90;
  if (!qword_2A17A3B90)
  {
    sub_29D4A04BC(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A3B90);
  }

  return result;
}

void sub_29D4A04BC(uint64_t a1)
{
  if (!qword_2A17A3B98)
  {
    v2 = type metadata accessor for UserDomainConceptFeedItemData(255);
    v3 = sub_29D4A0550(qword_2A17A3BA0, type metadata accessor for UserDomainConceptFeedItemData, &unk_29D5B9F18);
    v5 = type metadata accessor for BaseFeedItemViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_2A17A3B98);
    }
  }
}

uint64_t sub_29D4A0550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D4A0598(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29D4A02A4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_29D4A05F4(uint64_t a1)
{
  if (!qword_2A1A164E0)
  {
    sub_29D4A0664(255, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
    v1 = sub_29D5B472C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A164E0);
    }
  }
}

void sub_29D4A0664(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_29D48F51C(255, a3, a4);
    v5 = sub_29D5B3D0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D4A06BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D4A0358(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id FeedItemViewController.feedItemView.getter()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    result = swift_dynamicCastUnknownClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall FeedItemViewController.loadView()()
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView_];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_29D5B450C();
  [v5 setDirectionalLayoutMargins_];
}

void sub_29D4A0968(void *a1)
{
  v1 = a1;
  FeedItemViewController.loadView()();
}

Swift::Void __swiftcall FeedItemViewController.reloadView()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x29EDCA1E8];
  v4 = sub_29D5B371C();
  v35 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v34 - v10;
  v12 = *((v3 & v2) + 0xF0);
  v13 = sub_29D5B472C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v34 - v20;
  if ([v1 isViewLoaded])
  {
    v34 = v4;
    BaseFeedItemViewController.reloadView()();
    v22 = FeedItemViewController.feedItemView.getter();
    if (v22)
    {
      v23 = v22;
      BaseFeedItemViewController.feedItemData.getter(v21);
      v24 = (*(*(v12 - 8) + 48))(v21, 1, v12);
      v25 = *(v14 + 8);
      v25(v21, v13);
      if (v24 == 1)
      {
        sub_29D5B36DC();
        v26 = sub_29D5B370C();
        v27 = sub_29D5B427C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_29D48C000, v26, v27, "Attempting to reload view without any feedItemData.", v28, 2u);
          MEMORY[0x29ED5FB80](v28, -1, -1);
        }

        (*(v35 + 8))(v11, v34);
      }

      BaseFeedItemViewController.feedItemData.getter(v18);
      (*((*MEMORY[0x29EDCA1E8] & *v1) + 0x108))(v18, v23);
      v25(v18, v13);
      v29 = [v1 view];
      if (v29)
      {
        v30 = v29;
        [v29 setNeedsLayout];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_29D5B36DC();
      v31 = sub_29D5B370C();
      v32 = sub_29D5B427C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_29D48C000, v31, v32, "Unable to reload view before feedItemView is available.", v33, 2u);
        MEMORY[0x29ED5FB80](v33, -1, -1);
      }

      (*(v35 + 8))(v8, v34);
    }
  }
}

id FeedItemViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_29D5B3E1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FeedItemViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*MEMORY[0x29EDCA1E8] & *v3);
  if (a2)
  {
    v6 = sub_29D5B3E1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for FeedItemViewController(0, v5[29], v5[30], v5[31]);
  v10.receiver = v3;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v6, a3);

  return v8;
}

id sub_29D4A0EE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return FeedItemViewController.init(nibName:bundle:)(v5, v7, a4);
}

id FeedItemViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FeedItemViewController.init(coder:)(void *a1)
{
  v3 = type metadata accessor for FeedItemViewController(0, *((*MEMORY[0x29EDCA1E8] & *v1) + 0xE8), *((*MEMORY[0x29EDCA1E8] & *v1) + 0xF0), *((*MEMORY[0x29EDCA1E8] & *v1) + 0xF8));
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id FeedItemViewController.__deallocating_deinit()
{
  v1 = type metadata accessor for FeedItemViewController(0, *((*MEMORY[0x29EDCA1E8] & *v0) + 0xE8), *((*MEMORY[0x29EDCA1E8] & *v0) + 0xF0), *((*MEMORY[0x29EDCA1E8] & *v0) + 0xF8));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for NewRecordsLabFeedItemView(uint64_t a1)
{
  result = qword_2A17A3C40;
  if (!qword_2A17A3C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D4A1218(double a1, double a2, double a3, double a4)
{
  v9 = &v4[qword_2A17A3C28];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[qword_2A17A3C30] = MEMORY[0x29EDCA190];
  v10 = &v4[qword_2A17A3C38];
  v11 = type metadata accessor for NewRecordsLabFeedItemView(0);
  *v10 = 0;
  *(v10 + 1) = 0;
  v15.receiver = v4;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = sub_29D5B2B2C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D5B2FCC();

  return v12;
}

id sub_29D4A135C(void *a1)
{
  v3 = &v1[qword_2A17A3C28];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[qword_2A17A3C30] = MEMORY[0x29EDCA190];
  v4 = &v1[qword_2A17A3C38];
  v5 = type metadata accessor for NewRecordsLabFeedItemView(0);
  *v4 = 0;
  *(v4 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = v5;
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  if (v6)
  {
    v7 = sub_29D5B2B2C();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v6;

    sub_29D5B2FCC();
  }

  else
  {
  }

  return v6;
}

id sub_29D4A14C8(uint64_t a1)
{
  v3 = sub_29D5B2B7C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + qword_2A17A3C28);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + qword_2A17A3C30) = MEMORY[0x29EDCA190];
  v9 = (v1 + qword_2A17A3C38);
  *v9 = 0;
  v9[1] = 0;
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_29D5B2B6C();
  v11 = sub_29D5B2B2C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D5B2FCC();

  (*(v4 + 8))(a1, v3);

  return v10;
}

void sub_29D4A165C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + qword_2A17A3C38);
    v3 = *(Strong + qword_2A17A3C38 + 8);
    v4 = Strong;
    sub_29D4A2458(v2, v3);

    if (v2)
    {
      v2();
      sub_29D490438(v2, v3);
    }
  }
}

uint64_t sub_29D4A16E8(uint64_t a1, char *a2)
{
  v4 = sub_29D5B2B4C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B200C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F1EC(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v17 = v64 - v16;
  v18 = (v2 + qword_2A17A3C28);
  *v18 = 0;
  v18[1] = 0;
  v74 = v18;

  v19 = qword_2A17A3C30;
  *(v2 + qword_2A17A3C30) = MEMORY[0x29EDCA190];

  v75 = a2;
  if (!a2)
  {
    sub_29D4A2050();
    [objc_opt_self() clearColor];
    sub_29D5B2B3C();
LABEL_24:
    sub_29D5B2B5C();
    return (*(v5 + 8))(v8, v4);
  }

  v71 = v8;
  v72 = v5;
  v73 = v4;
  v76 = v2;
  v20 = sub_29D5B0EFC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v23 = v21 + 56;
  v22(v17, 1, 1, v20);
  sub_29D5B1FFC();
  v24 = sub_29D5B2A0C();
  v69 = v25;
  v70 = v24;
  v26 = *(v10 + 8);
  v26(v13, v9);
  sub_29D4A24B4(v17);
  v64[1] = v23;
  v65 = v22;
  v22(v17, 1, 1, v20);
  sub_29D5B1FFC();
  v27 = sub_29D5B2A0C();
  v67 = v28;
  v68 = v27;
  v66 = v26;
  v26(v13, v9);
  sub_29D4A24B4(v17);
  v77 = v75;

  sub_29D50FAC0(&v77);
  v29 = v77;
  *(v76 + v19) = v77;

  v30 = *(v29 + 2);
  if (v30 <= 1)
  {
    if (!v30)
    {

      v52 = v74;
      *v74 = 0;
      v52[1] = 0;
LABEL_23:

      sub_29D4A2050();
      [objc_opt_self() clearColor];
      v8 = v71;
      sub_29D5B2B3C();
      v5 = v72;
      v4 = v73;
      goto LABEL_24;
    }

    if (v30 == 1)
    {
      v31 = *(v29 + 4);
      v32 = *(v29 + 5);

LABEL_22:
      v62 = v74;
      *v74 = v31;
      v62[1] = v32;

      goto LABEL_23;
    }

    goto LABEL_13;
  }

  if (v30 == 2)
  {
    v65(v17, 1, 1, v20);
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    v66(v13, v9);
    sub_29D4A24B4(v17);
    sub_29D48F1EC(0, &qword_2A1A195B0, sub_29D4A2540, MEMORY[0x29EDC9E90]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_29D5B5E20;
    v54 = MEMORY[0x29EDC99B0];
    *(v53 + 56) = MEMORY[0x29EDC99B0];
    v55 = sub_29D4A25A4();
    *(v53 + 64) = v55;
    v56 = *(v29 + 2);
    if (!v56)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v57 = v55;
    v58 = *(v29 + 5);
    *(v53 + 32) = *(v29 + 4);
    *(v53 + 40) = v58;
    *(v53 + 96) = v54;
    *(v53 + 104) = v57;
    if (v56 == 1)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v59 = *(v29 + 6);
    v60 = *(v29 + 7);

    *(v53 + 72) = v59;
    *(v53 + 80) = v60;
LABEL_20:
    v31 = sub_29D5B3E6C();
    v32 = v61;
    goto LABEL_21;
  }

  if (v30 != 3)
  {
LABEL_13:
    v65(v17, 1, 1, v20);
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    v66(v13, v9);
    sub_29D4A24B4(v17);
    sub_29D48F1EC(0, &qword_2A1A195B0, sub_29D4A2540, MEMORY[0x29EDC9E90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_29D5B6320;
    v43 = MEMORY[0x29EDC99B0];
    *(v42 + 56) = MEMORY[0x29EDC99B0];
    v44 = sub_29D4A25A4();
    *(v42 + 64) = v44;
    v45 = *(v29 + 2);
    if (v45)
    {
      v46 = v44;
      v47 = *(v29 + 5);
      *(v42 + 32) = *(v29 + 4);
      *(v42 + 40) = v47;
      *(v42 + 96) = v43;
      *(v42 + 104) = v46;
      if (v45 != 1)
      {
        v48 = *(v29 + 6);
        v49 = *(v29 + 7);

        *(v42 + 72) = v48;
        *(v42 + 80) = v49;
        v50 = MEMORY[0x29EDC9C10];
        *(v42 + 136) = MEMORY[0x29EDC9BA8];
        *(v42 + 144) = v50;
        *(v42 + 112) = v30 - 2;
        v31 = sub_29D5B3E6C();
        v32 = v51;
LABEL_21:

        goto LABEL_22;
      }

      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_26;
  }

  v65(v17, 1, 1, v20);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v66(v13, v9);
  sub_29D4A24B4(v17);
  sub_29D48F1EC(0, &qword_2A1A195B0, sub_29D4A2540, MEMORY[0x29EDC9E90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29D5B6320;
  v34 = MEMORY[0x29EDC99B0];
  *(v33 + 56) = MEMORY[0x29EDC99B0];
  v35 = sub_29D4A25A4();
  *(v33 + 64) = v35;
  v36 = *(v29 + 2);
  if (!v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v35;
  v38 = *(v29 + 5);
  *(v33 + 32) = *(v29 + 4);
  *(v33 + 40) = v38;
  *(v33 + 96) = v34;
  *(v33 + 104) = v37;
  if (v36 == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v39 = *(v29 + 7);
  *(v33 + 72) = *(v29 + 6);
  *(v33 + 80) = v39;
  *(v33 + 136) = v34;
  *(v33 + 144) = v37;
  if (v36 >= 3)
  {
    v40 = *(v29 + 8);
    v41 = *(v29 + 9);

    *(v33 + 112) = v40;
    *(v33 + 120) = v41;
    goto LABEL_20;
  }

LABEL_31:
  __break(1u);

  __break(1u);
  return result;
}

id sub_29D4A2050()
{
  v1 = v0;
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B1D9C();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B20AC();
  (*(v3 + 104))(v6, *MEMORY[0x29EDC4068], v2);
  sub_29D5B209C();
  (*(v3 + 8))(v6, v2);
  sub_29D5B1D7C();
  if (v12 && (sub_29D4A2468(), v13 = sub_29D5B462C(), v14 = [v1 traitCollection], v15 = sub_29D5B3E1C(), , v16 = objc_msgSend(objc_opt_self(), sel_imageNamed_inBundle_compatibleWithTraitCollection_, v15, v13, v14), v15, v13, v14, v16))
  {
    v17 = [v16 imageWithRenderingMode_];
    v18 = sub_29D5B1D8C();
    v19 = [v17 imageWithTintColor_];
  }

  else
  {
    v20 = sub_29D5B3E1C();
    v19 = [objc_opt_self() systemImageNamed_];

    if (!v19)
    {
      v19 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
    }
  }

  (*(v8 + 8))(v11, v7);
  return v19;
}

uint64_t sub_29D4A2354()
{

  v1 = *(v0 + qword_2A17A3C38);
  v2 = *(v0 + qword_2A17A3C38 + 8);

  return sub_29D490438(v1, v2);
}

id sub_29D4A23AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewRecordsLabFeedItemView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D4A23E4(uint64_t a1)
{

  v2 = *(a1 + qword_2A17A3C38);
  v3 = *(a1 + qword_2A17A3C38 + 8);

  return sub_29D490438(v2, v3);
}

uint64_t sub_29D4A2458(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_29D4A2468()
{
  result = qword_2A17A3C50;
  if (!qword_2A17A3C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17A3C50);
  }

  return result;
}

uint64_t sub_29D4A24B4(uint64_t a1)
{
  sub_29D48F1EC(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D4A2540()
{
  result = qword_2A1A19590;
  if (!qword_2A1A19590)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A19590);
  }

  return result;
}

unint64_t sub_29D4A25A4()
{
  result = qword_2A1A196F0;
  if (!qword_2A1A196F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A196F0);
  }

  return result;
}

uint64_t sub_29D4A25FC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_29D4A262C()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_29D4A2670(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_29D5B0E6C();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    a2 = 0;
    a3 = 0;
    v20 = 0;
LABEL_12:
    *a4 = v16;
    a4[1] = v17;
    a4[2] = v18;
    a4[3] = v19;
    a4[4] = a2;
    a4[5] = a3;
    a4[6] = v20;
    return;
  }

  v13 = [a1 meaningfulDate];
  if (v13)
  {
    v14 = v13;
    sub_29D5B0E4C();

    v15 = sub_29D5B0DEC();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v15 = 0;
  }

  v21 = HKLocalizedStringForDateAndTemplateWithFormattingContext();

  if (v21)
  {
    v16 = sub_29D5B3E5C();
    v17 = v22;

    v23 = sub_29D5B44EC();
    v25 = v24;
    v20 = sub_29D5B44FC();

    if (v25)
    {
      v18 = v23;
    }

    else
    {
      v18 = 0;
    }

    v19 = 0xE000000000000000;
    if (v25)
    {
      v19 = v25;
    }

    goto LABEL_12;
  }

  __break(1u);
}

__n128 sub_29D4A2850(uint64_t a1, uint64_t a2)
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

uint64_t sub_29D4A286C(uint64_t a1, int a2)
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

uint64_t sub_29D4A28B4(uint64_t result, int a2, int a3)
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

uint64_t sub_29D4A2910(uint64_t a1)
{
  v57 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v55 = *(v3 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A3630(0);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  MEMORY[0x2A1C7C4A8](v6, v8);
  v56 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A3744(0);
  v11 = *(v10 - 8);
  v61 = v10;
  v62 = v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v58 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29D5B13CC();
  v14 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50, v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D5B13EC();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_context);
  sub_29D5B143C();
  v52 = MEMORY[0x29EDC9E90];
  sub_29D4A3924(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v23 = sub_29D5B104C();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v51 = xmmword_29D5B62A0;
  *(v26 + 16) = xmmword_29D5B62A0;
  (*(v24 + 104))(v26 + v25, *MEMORY[0x29EDC36D0], v23);
  (*(v14 + 104))(v17, *MEMORY[0x29EDC3898], v50);
  sub_29D5B13DC();
  v27 = v48;
  (*(v19 + 32))(v48 + OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_domain, v22, v18);
  v28 = v49;
  sub_29D5B140C();
  sub_29D499EC0(v63, v64);
  v29 = sub_29D5B136C();
  [v29 supportsHealthRecords];

  sub_29D48F668(v63);
  sub_29D5B1CBC();
  v30 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v63, v64);
  v31 = sub_29D5B136C();
  v32 = [v31 profileIdentifier];

  v33 = sub_29D5B1C7C();
  sub_29D48F668(v63);
  *(v27 + OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_udcChangeProvider) = v33;
  v63[0] = sub_29D5B35BC();
  v34 = v53;
  sub_29D499E5C(v28, v53);
  v35 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v36 = (v54 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_29D499F90(v34, v37 + v35);
  *(v37 + v36) = v57;
  sub_29D4A36DC(0);
  sub_29D499B38();
  sub_29D4A3830(&qword_2A1A16660, sub_29D4A36DC, MEMORY[0x29EDB8A70]);
  v38 = v56;
  sub_29D5B3B2C();

  sub_29D4A3924(0, &qword_2A1A195D8, sub_29D499B38, v52);
  v39 = swift_allocObject();
  *(v39 + 16) = v51;
  sub_29D499E5C(v28, v34);
  v40 = type metadata accessor for RemovedCategoriesGenerator(0);
  swift_allocObject();
  v41 = sub_29D533B28(v34);
  *(v39 + 56) = v40;
  *(v39 + 64) = sub_29D4A3830(&qword_2A1A18340, type metadata accessor for RemovedCategoriesGenerator, &unk_29D5B9AFC);
  *(v39 + 32) = v41;
  sub_29D4A3830(&qword_2A1A171D8, sub_29D4A3630, MEMORY[0x29EDB88A0]);
  v43 = v58;
  v42 = v59;
  sub_29D5B3C0C();

  (*(v60 + 8))(v38, v42);
  sub_29D4A3830(&qword_2A1A17158, sub_29D4A3744, MEMORY[0x29EDB88B0]);
  v44 = v61;
  v45 = sub_29D5B3B1C();
  sub_29D49A104(v28);
  (*(v62 + 8))(v43, v44);
  result = v27;
  *(v27 + 16) = v45;
  return result;
}

uint64_t sub_29D4A30C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v15 = sub_29D5B370C();
  v16 = sub_29D5B426C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v19;
    v35 = a2;
    *v18 = 136446466;
    swift_getMetatypeMetadata();
    v20 = sub_29D5B3E7C();
    v22 = sub_29D501890(v20, v21, &v34);
    v32 = v10;
    v23 = a1;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v35 = type metadata accessor for RemovedCategoriesGenerator(0);
    sub_29D4A3988();
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v34);
    a1 = v23;

    *(v18 + 14) = v27;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s]: Emitting %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v19, -1, -1);
    v28 = v18;
    a3 = v33;
    MEMORY[0x29ED5FB80](v28, -1, -1);

    (*(v11 + 8))(v14, v32);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_29D499E5C(a1, v9);
  v29 = type metadata accessor for RemovedCategoriesGenerator(0);
  swift_allocObject();
  v30 = sub_29D533B28(v9);
  a3[3] = v29;
  result = sub_29D4A3830(&qword_2A1A18340, type metadata accessor for RemovedCategoriesGenerator, &unk_29D5B9AFC);
  a3[4] = result;
  *a3 = v30;
  return result;
}

uint64_t sub_29D4A33B4()
{

  v1 = OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemovedCategoriesGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A178B8;
  if (!qword_2A1A178B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4A34CC(uint64_t a1)
{
  result = sub_29D5B13EC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext(319);
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

uint64_t sub_29D4A35B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4A3630(uint64_t a1)
{
  if (!qword_2A1A171D0)
  {
    sub_29D4A36DC(255);
    sub_29D499B38();
    sub_29D4A3830(&qword_2A1A16660, sub_29D4A36DC, MEMORY[0x29EDB8A70]);
    v1 = sub_29D5B37CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A171D0);
    }
  }
}

void sub_29D4A36DC(uint64_t a1)
{
  if (!qword_2A1A16658)
  {
    sub_29D5B35AC();
    v1 = sub_29D5B39CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16658);
    }
  }
}

void sub_29D4A3744(uint64_t a1)
{
  if (!qword_2A1A17150)
  {
    sub_29D499C88(255);
    sub_29D4A3630(255);
    sub_29D4A3830(&qword_2A1A197A8, sub_29D499C88, MEMORY[0x29EDB89C0]);
    sub_29D4A3830(&qword_2A1A171D8, sub_29D4A3630, MEMORY[0x29EDB88A0]);
    v1 = sub_29D5B37DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17150);
    }
  }
}

uint64_t sub_29D4A3830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D4A3878@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4A30C8(v1 + v4, v5, a1);
}

void sub_29D4A3924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D4A3988()
{
  result = qword_2A1A18260;
  if (!qword_2A1A18260)
  {
    type metadata accessor for RemovedCategoriesGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A18260);
  }

  return result;
}

id sub_29D4A39D0()
{
  v1 = qword_2A17A3C58;
  v2 = *(v0 + qword_2A17A3C58);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A3C58);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    v6 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_29D48F51C(0, &unk_2A1A19440, 0x29EDC76B0);
    v7 = sub_29D5B458C();
    [v5 setFont_];

    [v5 setAdjustsFontForContentSizeCategory_];
    LODWORD(v8) = 1132068864;
    [v5 setContentHuggingPriority:0 forAxis:v8];
    [v5 setNumberOfLines_];
    v9 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_29D4A3B40()
{
  v1 = qword_2A17A3C60;
  v2 = *(v0 + qword_2A17A3C60);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A3C60);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
    sub_29D48F51C(0, &qword_2A1A16288, 0x29EDC7AC8);
    v6 = sub_29D5B460C();
    [v5 setImage_];

    v7 = [objc_opt_self() tertiaryLabelColor];
    [v5 setTintColor_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v8) = 1144750080;
    [v5 setContentHuggingPriority:0 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [v5 setContentCompressionResistancePriority:0 forAxis:v9];
    v10 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_29D4A3CCC(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for NavigationFeedItemViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  sub_29D4A3DBC();
  sub_29D4A44D0(v1);
  v2 = sub_29D4A47A0(v1);
  v3 = objc_opt_self();
  sub_29D54F53C(v2);
  sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);
  v4 = sub_29D5B401C();

  [v3 activateConstraints_];
}

void sub_29D4A3DBC()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 heightAnchor];

  v7 = [v6 constraintGreaterThanOrEqualToConstant_];
  LODWORD(v8) = 1148829696;
  [v7 setPriority_];
  [v7 setActive_];
  sub_29D4A3F3C();
  v9 = [v0 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = sub_29D4A3B40();
  [v10 addSubview_];
}

id sub_29D4A3F3C()
{
  v1 = sub_29D5B1D6C();
  v51 = *(v1 - 8);
  v52 = v1;
  v3 = MEMORY[0x2A1C7C4A8](v1, v2);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v50 = &v48 - v6;
  v7 = type metadata accessor for NavigationFeedItemData(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A689C(0, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v54 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v48 - v16;
  v18 = sub_29D5B1C2C();
  v53 = *(v18 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v18, v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v48 - v24;
  v26 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D4A607C(v0 + v26, v17, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v27 = *(v8 + 48);
  v56 = v7;
  if (v27(v17, 1, v7))
  {
    v28 = v17;
  }

  else
  {
    v29 = v55;
    sub_29D4A5FB8(v17, v55, type metadata accessor for NavigationFeedItemData);
    sub_29D4A614C(v17, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
    v30 = v53;
    (*(v53 + 16))(v22, v29, v18);
    sub_29D4A6020(v29);
    (*(v30 + 32))(v25, v22, v18);
    v31 = v0 + v26;
    v32 = v54;
    sub_29D4A607C(v31, v54, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
    v33 = v56;
    v34 = v27(v32, 1, v56);
    v35 = v18;
    v36 = v30;
    if (!v34)
    {
      v38 = v35;
      sub_29D4A5FB8(v32, v29, type metadata accessor for NavigationFeedItemData);
      sub_29D4A614C(v32, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
      v40 = v51;
      v39 = v52;
      v41 = v29 + *(v33 + 20);
      v42 = v49;
      (*(v51 + 16))(v49, v41, v52);
      sub_29D4A6020(v29);
      v43 = v50;
      (*(v40 + 32))(v50, v42, v39);
      sub_29D4A6438(v25, v43);
      if (v44)
      {
        v45 = sub_29D4A39D0();
        v46 = sub_29D5B3E1C();
        [v45 setText_];

        result = [v0 view];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v47 = result;

        [v47 addSubview_];
      }

      (*(v40 + 8))(v43, v39);
      return (*(v36 + 8))(v25, v38);
    }

    (*(v30 + 8))(v25, v35);
    v28 = v32;
  }

  return sub_29D4A614C(v28, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
}

id sub_29D4A44D0(char *a1)
{
  v17 = MEMORY[0x29EDCA190];
  v2 = sub_29D4A39D0();
  v3 = [v2 leadingAnchor];

  result = [a1 view];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result leadingAnchor];

  v7 = [v3 constraintEqualToAnchor:v6 constant:16.0];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v8 = qword_2A17A3C58;
  v9 = [*&a1[qword_2A17A3C58] topAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  v11 = [result topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:8.0];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v13 = [*&a1[v8] bottomAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = result;
  v15 = [result bottomAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:-8.0];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  return v17;
}

id sub_29D4A47A0(char *a1)
{
  v17 = MEMORY[0x29EDCA190];
  v2 = sub_29D4A3B40();
  v3 = [v2 leadingAnchor];

  v4 = sub_29D4A39D0();
  v5 = [v4 trailingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:8.0];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v7 = qword_2A17A3C60;
  v8 = [*&a1[qword_2A17A3C60] trailingAnchor];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result trailingAnchor];

  v12 = [v8 constraintEqualToAnchor:v11 constant:-16.0];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v13 = [*&a1[v7] centerYAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_11;
  }

  v14 = result;
  v15 = [result centerYAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  return v17;
}

void sub_29D4A4A5C(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NavigationFeedItemViewController(0);
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 legibilityWeight];

  if (!a1 || v4 != [a1 legibilityWeight])
  {
    v5 = sub_29D4A39D0();
    sub_29D48F51C(0, &unk_2A1A19440, 0x29EDC76B0);
    v6 = sub_29D5B458C();
    [v5 setFont_];
  }
}

void sub_29D4A4B68(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_29D4A4A5C(a3);
}

uint64_t sub_29D4A4BD4(uint64_t a1)
{
  v132 = a1;
  v136 = sub_29D5B1D6C();
  v134 = *(v136 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v136, v2);
  v133 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v135 = &v128 - v6;
  v7 = type metadata accessor for NavigationFeedItemData(0);
  v8 = *(v7 - 1);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v139 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A689C(0, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v138 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = (&v128 - v16);
  v18 = sub_29D5B1C2C();
  v19 = *(v18 - 8);
  v141 = v18;
  v142 = v19;
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v23 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v21, v24);
  v27 = &v128 - v26;
  v29 = MEMORY[0x2A1C7C4A8](v25, v28);
  v31 = &v128 - v30;
  MEMORY[0x2A1C7C4A8](v29, v32);
  v34 = &v128 - v33;
  v35 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  v140 = v1;
  sub_29D4A607C(&v1[v35], v17, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v36 = *(v8 + 48);
  v137 = v7;
  if (v36(v17, 1, v7))
  {
    v37 = &qword_2A17A3C88;
    v38 = type metadata accessor for NavigationFeedItemData;
    v39 = v17;
    return sub_29D4A614C(v39, v37, v38);
  }

  v130 = v27;
  v129 = v23;
  v40 = v139;
  sub_29D4A5FB8(v17, v139, type metadata accessor for NavigationFeedItemData);
  sub_29D4A614C(v17, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v42 = v141;
  v41 = v142;
  v131 = *(v142 + 16);
  v131(v31, v40, v141);
  sub_29D4A6020(v40);
  (*(v41 + 32))(v34, v31, v42);
  v43 = &v140[v35];
  v44 = v138;
  sub_29D4A607C(v43, v138, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v45 = v137;
  if (v36(v44, 1, v137))
  {
    (*(v142 + 8))(v34, v42);
    v37 = &qword_2A17A3C88;
    v38 = type metadata accessor for NavigationFeedItemData;
    v39 = v44;
    return sub_29D4A614C(v39, v37, v38);
  }

  v47 = v131;
  v128 = v34;
  v48 = v139;
  sub_29D4A5FB8(v44, v139, type metadata accessor for NavigationFeedItemData);
  sub_29D4A614C(v44, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v49 = v134;
  v50 = v133;
  v51 = v136;
  (*(v134 + 16))(v133, v48 + v45[5], v136);
  sub_29D4A6020(v48);
  v52 = v135;
  (*(v49 + 32))(v135, v50, v51);
  v53 = v140;
  v54 = *((*MEMORY[0x29EDCA1E8] & *v140) + 0x70);
  swift_beginAccess();
  sub_29D4A607C(&v53[v54], &v143, &qword_2A1A19460, sub_29D4A60E8);
  if (!v144)
  {
    (*(v49 + 8))(v52, v51);
    (*(v142 + 8))(v128, v141);
    v37 = &qword_2A1A19460;
    v38 = sub_29D4A60E8;
    v39 = &v143;
    return sub_29D4A614C(v39, v37, v38);
  }

  sub_29D497868(&v143, v145);
  v55 = v130;
  v56 = v128;
  v57 = v141;
  v47(v130, v128, v141);
  v58 = v142;
  v59 = *(v142 + 88);
  v60 = v59(v55, v57);
  v61 = *MEMORY[0x29EDC4008];
  if (v60 == *MEMORY[0x29EDC4008])
  {
    (*(v49 + 8))(v52, v136);
    (*(v58 + 8))(v56, v57);
    return sub_29D48F668(v145);
  }

  v62 = *MEMORY[0x29EDC3FF8];
  v63 = *MEMORY[0x29EDC4000];
  if (v60 == *MEMORY[0x29EDC3FF8] || v60 == v63)
  {
    v98 = v129;
    v99 = v141;
    v47(v129, v128, v141);
    v100 = v59(v98, v99);
    if (v100 == v61)
    {
      goto LABEL_43;
    }

    if (v100 == v62)
    {
      v101 = v140;
      v102 = v132;
    }

    else
    {
      v102 = v132;
      if (v100 != v63)
      {
        v99 = v141;
        if (v100 != *MEMORY[0x29EDC4010])
        {
          goto LABEL_71;
        }

LABEL_43:
        (*(v49 + 8))(v135, v136);
        (*(v142 + 8))(v128, v99);
        return sub_29D48F668(v145);
      }

      v101 = v140;
    }

    v103 = v135;
    sub_29D5B1CBC();
    v104 = sub_29D5B1C8C();
    sub_29D499EC0(v145, v146);
    v105 = sub_29D5B314C();
    v106 = sub_29D5B1C9C();

    sub_29D5B21EC();
    v107 = sub_29D5B21DC();
    v108 = sub_29D5B218C();

    sub_29D4A5FB8(v102, &v143, sub_29D4A63E4);
    v109 = v144;
    if (v144)
    {
      v110 = sub_29D499EC0(&v143, v144);
      v111 = *(v109 - 8);
      MEMORY[0x2A1C7C4A8](v110, v110);
      v113 = &v128 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v111 + 16))(v113);
      v114 = sub_29D5B4C6C();
      (*(v111 + 8))(v113, v109);
      v49 = v134;
      sub_29D48F668(&v143);
    }

    else
    {
      v114 = 0;
    }

    [v101 showViewController:v108 sender:v114];

    swift_unknownObjectRelease();
    (*(v49 + 8))(v103, v136);
    goto LABEL_67;
  }

  if (v60 == *MEMORY[0x29EDC4010])
  {
    v64 = [objc_opt_self() supportedRecordCategoriesByCategoryType];
    v65 = v142;
    if (v64)
    {
      v66 = v64;
      sub_29D48F51C(0, &qword_2A17A3C90, 0x29EDBA070);
      sub_29D48F51C(0, &qword_2A17A3C98, 0x29EDC42A8);
      sub_29D4A6A1C(&qword_2A17A3CA0, &qword_2A17A3C90, 0x29EDBA070);
      v67 = sub_29D5B3D3C();

      v68 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
      v69 = sub_29D4A5BA0(v68, v67);

      if (!v69)
      {
        (*(v49 + 8))(v52, v136);
        (*(v65 + 8))(v128, v141);
        return sub_29D48F668(v145);
      }

      v133 = v69;
      sub_29D5B1CBC();
      v70 = sub_29D5B1C8C();
      sub_29D499EC0(v145, v146);
      v71 = sub_29D5B314C();
      v137 = sub_29D5B1C9C();

      v72 = [objc_opt_self() predicateForMedicalRecordWithState_];
      v73 = sub_29D5B1D2C();
      v74 = sub_29D57A7AC(MEMORY[0x29EDCA190]);
      if (v73 >> 62)
      {
        goto LABEL_60;
      }

      v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
LABEL_17:
        v76 = 0;
        v138 = v73 & 0xFFFFFFFFFFFFFF8;
        v139 = v73 & 0xC000000000000001;
        while (1)
        {
          if (v139)
          {
            v79 = MEMORY[0x29ED5EF30](v76, v73);
          }

          else
          {
            if (v76 >= *(v138 + 16))
            {
              goto LABEL_59;
            }

            v79 = *(v73 + 8 * v76 + 32);
          }

          v80 = v79;
          v81 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
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
            v75 = sub_29D5B485C();
            if (!v75)
            {
              goto LABEL_61;
            }

            goto LABEL_17;
          }

          if ((v74 & 0xC000000000000001) != 0)
          {
            if (v74 < 0)
            {
              v82 = v74;
            }

            else
            {
              v82 = v74 & 0xFFFFFFFFFFFFFF8;
            }

            v83 = v72;
            v84 = sub_29D5B485C();
            if (__OFADD__(v84, 1))
            {
              goto LABEL_57;
            }

            v74 = sub_29D4A61A8(v82, v84 + 1);
          }

          else
          {
            v85 = v72;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v143 = v74;
          v87 = sub_29D57A1AC(v80);
          v89 = *(v74 + 16);
          v90 = (v88 & 1) == 0;
          v91 = __OFADD__(v89, v90);
          v92 = v89 + v90;
          if (v91)
          {
            goto LABEL_56;
          }

          v93 = v88;
          if (*(v74 + 24) < v92)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_37;
          }

          v97 = v87;
          sub_29D5937D4();
          v87 = v97;
          v74 = v143;
          if (v93)
          {
LABEL_18:
            v77 = *(v74 + 56);
            v78 = *(v77 + 8 * v87);
            *(v77 + 8 * v87) = v72;

            goto LABEL_19;
          }

LABEL_38:
          *(v74 + 8 * (v87 >> 6) + 64) |= 1 << v87;
          *(*(v74 + 48) + 8 * v87) = v80;
          *(*(v74 + 56) + 8 * v87) = v72;
          v95 = *(v74 + 16);
          v91 = __OFADD__(v95, 1);
          v96 = v95 + 1;
          if (v91)
          {
            goto LABEL_58;
          }

          *(v74 + 16) = v96;
LABEL_19:
          ++v76;
          if (v81 == v75)
          {
            goto LABEL_61;
          }
        }

        sub_29D5929A4(v92, isUniquelyReferenced_nonNull_native);
        v87 = sub_29D57A1AC(v80);
        if ((v93 & 1) != (v94 & 1))
        {
          goto LABEL_70;
        }

LABEL_37:
        v74 = v143;
        if (v93)
        {
          goto LABEL_18;
        }

        goto LABEL_38;
      }

LABEL_61:

      sub_29D5B21EC();
      v115 = sub_29D5B21DC();
      sub_29D586194(v74);

      v116 = v133;
      v117 = sub_29D5B215C();

      sub_29D5B27BC();
      v118 = swift_dynamicCastClass();
      v119 = v135;
      if (v118)
      {
        v120 = v117;
        sub_29D4A6438(v128, v119);
        sub_29D5B27AC();
      }

      sub_29D4A5FB8(v132, &v143, sub_29D4A63E4);
      v121 = v144;
      v122 = v134;
      if (v144)
      {
        v123 = sub_29D499EC0(&v143, v144);
        v124 = *(v121 - 8);
        MEMORY[0x2A1C7C4A8](v123, v123);
        v126 = &v128 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v124 + 16))(v126);
        v127 = sub_29D5B4C6C();
        (*(v124 + 8))(v126, v121);
        sub_29D48F668(&v143);
      }

      else
      {
        v127 = 0;
      }

      [v140 showViewController:v117 sender:v127];

      swift_unknownObjectRelease();
      (*(v122 + 8))(v119, v136);
LABEL_67:
      (*(v142 + 8))(v128, v141);
      return sub_29D48F668(v145);
    }

    __break(1u);
LABEL_70:
    sub_29D48F51C(0, &qword_2A17A3CA8, 0x29EDBAC60);
    sub_29D5B4CCC();
    __break(1u);
  }

LABEL_71:
  result = sub_29D5B4A2C();
  __break(1u);
  return result;
}

void *sub_29D4A5BA0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_29D5B4A0C();

    if (v4)
    {
      sub_29D48F51C(0, &qword_2A17A3C98, 0x29EDC42A8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_29D57A1FC(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_29D4A5C64(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[qword_2A17A3C58] = 0;
  *&v3[qword_2A17A3C60] = 0;
  *&v3[qword_2A17A3C68] = 0x4030000000000000;
  *&v3[qword_2A17A3C70] = 0x4020000000000000;
  if (a2)
  {
    v5 = sub_29D5B3E1C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for NavigationFeedItemViewController(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_29D4A5D20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D4A5C64(v5, v7, a4);
}

id sub_29D4A5D80(void *a1)
{
  *&v1[qword_2A17A3C58] = 0;
  *&v1[qword_2A17A3C60] = 0;
  *&v1[qword_2A17A3C68] = 0x4030000000000000;
  *&v1[qword_2A17A3C70] = 0x4020000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NavigationFeedItemViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_29D4A5E4C()
{
  v1 = *(v0 + qword_2A17A3C60);
}

id sub_29D4A5E8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationFeedItemViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D4A5EC4(uint64_t a1)
{
  v2 = *(a1 + qword_2A17A3C60);
}

uint64_t type metadata accessor for NavigationFeedItemViewController(uint64_t a1)
{
  result = qword_2A17A3C78;
  if (!qword_2A17A3C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4A5FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4A6020(uint64_t a1)
{
  v2 = type metadata accessor for NavigationFeedItemData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D4A607C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D4A689C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_29D4A60E8()
{
  result = qword_2A1A19470;
  if (!qword_2A1A19470)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A19470);
  }

  return result;
}

uint64_t sub_29D4A614C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4A689C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4A61A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29D4A6960(0);
    v2 = sub_29D5B4A9C();
    v19 = v2;
    sub_29D5B49EC();
    v3 = sub_29D5B4A1C();
    if (v3)
    {
      v4 = v3;
      sub_29D48F51C(0, &qword_2A17A3CA8, 0x29EDBAC60);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_29D48F51C(0, &qword_2A1A16378, 0x29EDBA0A8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_29D5929A4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_29D5B464C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_29D5B4A1C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA198];
  }

  return v2;
}

void sub_29D4A63E4()
{
  if (!qword_2A17A4DA0)
  {
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4DA0);
    }
  }
}

uint64_t sub_29D4A6438(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B200C();
  v27 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A689C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v26 - v10;
  sub_29D4A68F0(0);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 56);
  v18 = sub_29D5B1C2C();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v16, a1, v18);
  v20 = sub_29D5B1D6C();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v16[v17], a2, v20);
  v22 = (*(v19 + 88))(v16, v18);
  if (v22 == *MEMORY[0x29EDC3FF8])
  {
    if ((*(v21 + 88))(&v16[v17], v20) == *MEMORY[0x29EDC4068])
    {
      goto LABEL_6;
    }
  }

  else if (v22 == *MEMORY[0x29EDC4000])
  {
    if ((*(v21 + 88))(&v16[v17], v20) == *MEMORY[0x29EDC4068])
    {
LABEL_6:
      (*(v19 + 8))(v16, v18);
      v23 = sub_29D5B0EFC();
      (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
      sub_29D5B1FFC();
      v24 = sub_29D5B2A0C();

      (*(v27 + 8))(v7, v4);
      sub_29D4A614C(v11, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
      return v24;
    }
  }

  else if (v22 == *MEMORY[0x29EDC4010] && (*(v21 + 88))(&v16[v17], v20) == *MEMORY[0x29EDC4068])
  {
    goto LABEL_6;
  }

  (*(v21 + 8))(&v16[v17], v20);
  (*(v19 + 8))(v16, v18);
  return 0;
}

void sub_29D4A689C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D4A68F0(uint64_t a1)
{
  if (!qword_2A17A3CB0)
  {
    sub_29D5B1C2C();
    sub_29D5B1D6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3CB0);
    }
  }
}

void sub_29D4A6960(uint64_t a1)
{
  if (!qword_2A17A3CB8)
  {
    sub_29D48F51C(255, &qword_2A17A3CA8, 0x29EDBAC60);
    sub_29D48F51C(255, &qword_2A1A16378, 0x29EDBA0A8);
    sub_29D4A6A1C(&qword_2A17A3CC0, &qword_2A17A3CA8, 0x29EDBAC60);
    v1 = sub_29D5B4ABC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A3CB8);
    }
  }
}

uint64_t sub_29D4A6A1C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D48F51C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4A6A6C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_29D5B371C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 activityType];
  v12 = sub_29D5B3E5C();
  v14 = v13;

  if (sub_29D5B3E5C() == v12 && v15 == v14)
  {

LABEL_8:

    return sub_29D4A6D7C(a1, a2, a3);
  }

  v29 = v7;
  v17 = sub_29D5B4C7C();

  if (v17)
  {
    goto LABEL_8;
  }

  if (sub_29D5B3E5C() == v12 && v19 == v14)
  {
  }

  else
  {
    v21 = sub_29D5B4C7C();

    if ((v21 & 1) == 0)
    {
      sub_29D5B36DC();
      v22 = a1;
      v23 = sub_29D5B370C();
      v24 = sub_29D5B427C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138543362;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_29D48C000, v23, v24, "Unsupported NSUA was directed to HealthRecords plugin: %{public}@", v25, 0xCu);
        sub_29D4A736C(v26, sub_29D4A6FFC);
        MEMORY[0x29ED5FB80](v26, -1, -1);
        MEMORY[0x29ED5FB80](v25, -1, -1);
      }

      return (*(v29 + 8))(v10, v6);
    }
  }

  return sub_29D4A70A0(a1, a2);
}

uint64_t sub_29D4A6D7C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_29D5B371C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B0D5C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 webpageURL];
  if (v16)
  {
    v17 = v16;
    sub_29D5B0D4C();

    sub_29D574C28(v15, a2, a3);
    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    sub_29D5B36DC();
    v19 = a1;
    v20 = sub_29D5B370C();
    v21 = sub_29D5B427C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_29D48C000, v20, v21, "Web Browsing activity missing the webpageURL variable: %{public}@", v22, 0xCu);
      sub_29D4A736C(v23, sub_29D4A6FFC);
      MEMORY[0x29ED5FB80](v23, -1, -1);
      MEMORY[0x29ED5FB80](v22, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }
}

void sub_29D4A6FFC(uint64_t a1)
{
  if (!qword_2A1A16270)
  {
    sub_29D4A7054();
    v1 = sub_29D5B472C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16270);
    }
  }
}

unint64_t sub_29D4A7054()
{
  result = qword_2A1A16278;
  if (!qword_2A1A16278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A16278);
  }

  return result;
}

uint64_t sub_29D4A70A0(void *a1, uint64_t a2)
{
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 userInfo];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = sub_29D5B3D3C();

  v21[1] = sub_29D5B3E5C();
  v21[2] = v11;
  sub_29D5B48CC();
  if (!*(v10 + 16) || (v12 = sub_29D57A24C(&v22), (v13 & 1) == 0))
  {

    sub_29D4A73CC(&v22);
LABEL_8:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_9;
  }

  sub_29D4A7420(*(v10 + 56) + 32 * v12, &v23);
  sub_29D4A73CC(&v22);

  if (!*(&v24 + 1))
  {
LABEL_9:
    sub_29D4A736C(&v23, sub_29D4A63E4);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    sub_29D5B193C();
  }

LABEL_10:
  sub_29D5B36DC();
  v15 = a1;
  v16 = sub_29D5B370C();
  v17 = sub_29D5B427C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_29D48C000, v16, v17, "Attemping to restore from health records authorization settings user activity, but no app bundle identifier found: %{public}@", v18, 0xCu);
    sub_29D4A736C(v19, sub_29D4A6FFC);
    MEMORY[0x29ED5FB80](v19, -1, -1);
    MEMORY[0x29ED5FB80](v18, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D4A736C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4A7420(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29D4A747C()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  sub_29D4A9544(0, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v29 - v11;
  v13 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context;
  swift_beginAccess();
  sub_29D4A9434(v1 + v13, v30);
  v14 = v31;
  if (!v31)
  {
    sub_29D4A93AC(v30);
    goto LABEL_5;
  }

  v29[4] = v3;
  v29[5] = v2;
  v15 = sub_29D499EC0(v30, v31);
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v15, v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18);
  sub_29D4A93AC(v30);
  v19 = sub_29D5B317C();
  v21 = v20;
  (*(v16 + 8))(v18, v14);
  if (v21 >> 60 == 15)
  {
LABEL_5:
    v23 = sub_29D5B1FAC();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    v27 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
    swift_beginAccess();
    v25 = v1 + v27;
    v26 = v9;
    goto LABEL_6;
  }

  v22 = sub_29D5B1FAC();
  sub_29D4A9674(&qword_2A17A3D18, MEMORY[0x29EDC4120], MEMORY[0x29EDC4130]);
  sub_29D5B0BBC();
  sub_29D4A96BC(v19, v21);
  (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
  v24 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
  swift_beginAccess();
  v25 = v1 + v24;
  v26 = v12;
LABEL_6:
  sub_29D4A95F4(v26, v25);
  return swift_endAccess();
}

id sub_29D4A7A50()
{
  v1 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView);
  }

  else
  {
    v4 = sub_29D4A7AB4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D4A7AB4(uint64_t a1)
{
  v32 = a1;
  sub_29D4A9544(0, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v31 = &v29 - v3;
  v4 = sub_29D5B200C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDB9C70];
  sub_29D4A9544(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v29 - v12;
  v33 = [objc_allocWithZone(sub_29D5B29EC()) initWithFrame_];
  v14 = sub_29D5B0EFC();
  v30 = *(*(v14 - 8) + 56);
  v30(v13, 1, 1, v14);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  sub_29D4A9598(v13, &qword_2A1A19588, v9);
  sub_29D5B29DC();
  v30(v13, 1, 1, v14);
  sub_29D5B1FEC();
  sub_29D5B2A0C();
  v15(v8, v4);
  sub_29D4A9598(v13, &qword_2A1A19588, v9);
  sub_29D4A9344(0, &qword_2A1A195B0, &qword_2A1A19590, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D5B62A0;
  v17 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
  v18 = v32;
  swift_beginAccess();
  v19 = v18 + v17;
  v20 = v31;
  sub_29D4A94C4(v19, v31);
  v21 = sub_29D5B1FAC();
  v22 = 0;
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    v22 = sub_29D5B1F6C();
  }

  sub_29D4A9598(v20, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  v23 = MEMORY[0x29EDC9C10];
  *(v16 + 56) = MEMORY[0x29EDC9BA8];
  *(v16 + 64) = v23;
  *(v16 + 32) = v22;
  sub_29D5B3E6C();

  v24 = v33;
  sub_29D5B29BC();
  sub_29D48F51C(0, &qword_2A1A16288, 0x29EDC7AC8);
  sub_29D5B460C();
  sub_29D5B29CC();
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 secondaryLabelColor];
  [v26 setTintColor_];

  return v26;
}

id sub_29D4A8250(char *a1, double a2)
{
  v23 = MEMORY[0x29EDCA190];
  v4 = sub_29D4A7A50();
  v5 = [v4 leadingAnchor];

  result = [a1 view];
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result leadingAnchor];

  v9 = [v5 constraintEqualToAnchor_];
  MEMORY[0x29ED5E5E0]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v10 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView;
  v11 = [*&a1[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView] trailingAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v12 = result;
  v13 = [result trailingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  MEMORY[0x29ED5E5E0]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v15 = [*&a1[v10] topAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_16;
  }

  v16 = result;
  v17 = [result topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:-a2];
  MEMORY[0x29ED5E5E0]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v19 = [*&a1[v10] bottomAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_17;
  }

  v20 = result;
  v21 = [result bottomAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  MEMORY[0x29ED5E5E0]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  return v23;
}

id sub_29D4A85F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
  v9 = sub_29D5B1FAC();
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v4[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_isDismissible] = 1;
  v10 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_headerType;
  v11 = *MEMORY[0x29EDC1E68];
  v12 = sub_29D5B2CAC();
  (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
  v4[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_showsSeparator] = 0;
  v13 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_decoder;
  sub_29D5B0BDC();
  swift_allocObject();
  *&v4[v13] = sub_29D5B0BCC();
  *&v4[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView] = 0;
  if (a2)
  {
    v14 = sub_29D5B3E1C();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v4;
  v17.super_class = type metadata accessor for LabsTipViewController(0);
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, v14, a3);

  return v15;
}

id sub_29D4A87EC(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
  v6 = sub_29D5B1FAC();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v2[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_isDismissible] = 1;
  v7 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_headerType;
  v8 = *MEMORY[0x29EDC1E68];
  v9 = sub_29D5B2CAC();
  (*(*(v9 - 8) + 104))(&v2[v7], v8, v9);
  v2[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_showsSeparator] = 0;
  v10 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_decoder;
  sub_29D5B0BDC();
  swift_allocObject();
  *&v2[v10] = sub_29D5B0BCC();
  *&v2[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for LabsTipViewController(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_29D4A8984(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LabsTipViewController(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for LabsTipViewController(uint64_t a1)
{
  result = qword_2A17A3CE8;
  if (!qword_2A17A3CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D4A8AD8(uint64_t a1)
{
  sub_29D4A9544(319, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  if (v1 <= 0x3F)
  {
    sub_29D5B2CAC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29D4A8BE8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context;
  swift_beginAccess();
  return sub_29D4A9434(v1 + v3, a1);
}

uint64_t sub_29D4A8C40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context;
  swift_beginAccess();
  sub_29D4A92B4(a1, v1 + v3);
  swift_endAccess();
  sub_29D4A747C();
  return sub_29D4A93AC(a1);
}

uint64_t (*sub_29D4A8CAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D4A8D10;
}

uint64_t sub_29D4A8D10(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29D4A747C();
  }

  return result;
}

uint64_t sub_29D4A8D54()
{
  type metadata accessor for LabsTipViewController(0);
  sub_29D4A9674(&qword_2A17A3D10, type metadata accessor for LabsTipViewController, &unk_29D5B6718);
  return sub_29D5B212C();
}

uint64_t sub_29D4A8DE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_headerType;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4A8E6C()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_29D5B3E5C();

  return v3;
}

uint64_t sub_29D4A8ED8@<X0>(uint64_t a1@<X8>)
{
  sub_29D4A9544(0, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
  swift_beginAccess();
  sub_29D4A94C4(v7 + v8, v6);
  v9 = sub_29D5B1FAC();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v6, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_29D5B1F7C();
    (*(v10 + 8))(v6, v9);
    v12 = *MEMORY[0x29EDC41C8];
    v13 = sub_29D5B23CC();
    return (*(*(v13 - 8) + 104))(a1, v12, v13);
  }

  return result;
}

uint64_t sub_29D4A9064()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context;
  swift_beginAccess();
  result = sub_29D4A9434(v1 + v2, v11);
  v4 = v12;
  if (v12)
  {
    v5 = sub_29D499EC0(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x2A1C7C4A8](v5, v5);
    v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v8);
    v9 = sub_29D5B314C();
    (*(v6 + 8))(v8, v4);
    sub_29D48F668(v11);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D4A91B0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1D60];
  v3 = sub_29D5B2C2C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D4A92B4(uint64_t a1, uint64_t a2)
{
  sub_29D4A9344(0, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29D4A9344(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D4A02FC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D4A93AC(uint64_t a1)
{
  sub_29D4A9344(0, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D4A9434(uint64_t a1, uint64_t a2)
{
  sub_29D4A9344(0, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4A94C4(uint64_t a1, uint64_t a2)
{
  sub_29D4A9544(0, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D4A9544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D4A9598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4A9544(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4A95F4(uint64_t a1, uint64_t a2)
{
  sub_29D4A9544(0, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4A9674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D4A96BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29D4A96D0(a1, a2);
  }

  return a1;
}

uint64_t sub_29D4A96D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_29D4A9724()
{
  result = qword_2A17A3D20;
  if (!qword_2A17A3D20)
  {
    sub_29D5B1FAC();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A3D20);
  }

  return result;
}

id sub_29D4A97CC(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SharedConcept_SharingVersionMismatchTileView(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_29D4A9840(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for SharedConcept_SharingVersionMismatchTileView(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D4A98BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedConcept_SharingVersionMismatchTileView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D4A98FC(uint64_t a1, uint64_t a2, void *a3)
{
  v62 = a3;
  v60 = a2;
  v57 = sub_29D5B148C();
  v55 = *(v57 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v57, v4);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29D5B13CC();
  v49 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_29D5B13EC();
  v51 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B181C();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B2CA4(0);
  v18 = *(v17 - 8);
  v58 = v17;
  v59 = v18;
  MEMORY[0x2A1C7C4A8](v17, v19);
  v53 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B13FC();
  sub_29D499EC0(v64, v64[3]);
  sub_29D5B180C();
  v21 = sub_29D5B171C();
  (*(v13 + 8))(v16, v12);
  v63[5] = v21;
  v48 = a1;
  sub_29D5B147C();
  sub_29D5B143C();
  sub_29D4B2EB0(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v22 = sub_29D5B104C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D5B5E20;
  v27 = v26 + v25;
  v28 = *(v23 + 104);
  v28(v27, *MEMORY[0x29EDC3730], v22);
  v28(v27 + v24, *MEMORY[0x29EDC36E0], v22);
  (*(v49 + 104))(v8, *MEMORY[0x29EDC38A8], v50);
  sub_29D5B13DC();
  sub_29D4B2E18(0);
  v49 = v29;
  v30 = MEMORY[0x29EDB8A00];
  v50 = sub_29D4B2F14(&qword_2A1A167A0, sub_29D4B2E18, MEMORY[0x29EDB8A00]);
  v31 = sub_29D5B3B0C();
  v47 = v31;
  (*(v51 + 8))(v11, v52);
  sub_29D48F668(v63);

  sub_29D48F668(v64);
  v64[0] = v31;
  v32 = v54;
  v33 = v55;
  v34 = v57;
  (*(v55 + 16))(v54, v48, v57);
  v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v36 = (v56 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v33 + 32))(v39 + v35, v32, v34);
  v40 = v61;
  *(v39 + v36) = v60;
  *(v39 + v37) = v40;
  v41 = v62;
  *(v39 + v38) = v62;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;

  v42 = v41;
  sub_29D5B396C();
  sub_29D4B2D8C(0);
  sub_29D4B2F14(&qword_2A1A16780, sub_29D4B2D8C, v30);
  v43 = v53;
  sub_29D5B3C6C();

  sub_29D4B2F14(&qword_2A1A16AC0, sub_29D4B2CA4, MEMORY[0x29EDB89A8]);
  v44 = v58;
  v45 = sub_29D5B3B1C();
  (*(v59 + 8))(v43, v44);
  return v45;
}

uint64_t sub_29D4A9FE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v146 = a5;
  v161 = a4;
  v172 = a3;
  v145 = a6;
  sub_29D4B302C(0);
  v144 = v8;
  v143 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v142 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_29D5B16BC();
  v153 = *(v158 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v158, v11);
  v14 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v152 = &v141 - v16;
  v159 = sub_29D5B17DC();
  v171 = *(v159 - 8);
  MEMORY[0x2A1C7C4A8](v159, v17);
  v164 = (&v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_29D5B148C();
  v167 = *(v19 - 8);
  v168 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v157 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_29D5B371C();
  v165 = *(v166 - 8);
  MEMORY[0x2A1C7C4A8](v166, v22);
  v169 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_29D5B134C();
  v24 = *(v176 - 8);
  MEMORY[0x2A1C7C4A8](v176, v25);
  v27 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = 0;
  v28 = sub_29D5B1AAC();
  v29 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = &v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = *a1;
  v183 = MEMORY[0x29EDCA1A0];
  v184 = MEMORY[0x29EDCA1A0];
  v163 = a2;
  sub_29D5B140C();
  sub_29D499EC0(&v180, v182);
  (*(v29 + 104))(v32, *MEMORY[0x29EDC3F10], v28);
  v33 = sub_29D5B135C();
  (*(v29 + 8))(v32, v28);
  sub_29D48F668(&v180);
  v34 = *(v33 + 16);
  v35 = MEMORY[0x29EDCA190];
  v175 = v14;
  v147 = v33;
  if (v34)
  {
    v180 = MEMORY[0x29EDCA190];
    sub_29D4C6BA0(0, v34, 0);
    v35 = v180;
    v37 = *(v24 + 16);
    v36 = v24 + 16;
    v38 = v33 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v173 = *(v36 + 56);
    v174 = v37;
    v39 = (v36 - 8);
    v40 = v36;
    do
    {
      v41 = v176;
      v42 = v40;
      v174(v27, v38, v176);
      v43 = sub_29D5B126C();
      v45 = v44;
      (*v39)(v27, v41);
      v180 = v35;
      v47 = *(v35 + 16);
      v46 = *(v35 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_29D4C6BA0((v46 > 1), v47 + 1, 1);
        v35 = v180;
      }

      *(v35 + 16) = v47 + 1;
      v48 = v35 + 16 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = v45;
      v38 += v173;
      --v34;
      v40 = v42;
    }

    while (v34);
    v14 = v175;
  }

  v49 = v172;
  v50 = *(v172 + 16);
  v51 = v158;
  v52 = v159;
  v53 = v164;
  v176 = v35;
  v170 = v50;
  v55 = v168;
  v54 = v169;
  v56 = v167;
  v57 = v162;
  if (!v50)
  {
    sub_29D5B36AC();
    v60 = v157;
    (*(v56 + 16))(v157, v163, v55);
    v61 = sub_29D5B370C();
    v62 = sub_29D5B426C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v177 = v174;
      *v63 = 136446466;
      v180 = sub_29D4B34E8(0);
      sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
      v64 = sub_29D5B3E7C();
      v66 = sub_29D501890(v64, v65, &v177);
      LODWORD(v173) = v62;
      v67 = v66;

      *(v63 + 4) = v67;
      *(v63 + 12) = 2082;
      v180 = sub_29D5B143C();
      sub_29D5B4CAC();
      v68 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v69 = sub_29D5B3E7C();
      v71 = v70;
      (*(v56 + 8))(v60, v55);
      v72 = sub_29D501890(v69, v71, &v177);

      *(v63 + 14) = v72;
      _os_log_impl(&dword_29D48C000, v61, v173, "[%{public}s]: for profile: %{public}s, prepended generator generating for previous sharable models", v63, 0x16u);
      v73 = v174;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v73, -1, -1);
      v74 = v63;
      v53 = v164;
      MEMORY[0x29ED5FB80](v74, -1, -1);

      (*(v165 + 8))(v169, v166);
    }

    else
    {

      (*(v56 + 8))(v60, v55);
      (*(v165 + 8))(v54, v166);
    }

    v75 = v160;
    sub_29D4B2EB0(0, &qword_2A1A161F8, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9E90]);
    v76 = v171;
    v77 = (*(v171 + 80) + 32) & ~*(v171 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_29D5B62A0;
    *(v49 + v77) = v75;
    v59 = MEMORY[0x29EDC3B00];
    (*(v76 + 104))(v49 + v77, *MEMORY[0x29EDC3B00], v52);
    v78 = *(v49 + 16);

    v51 = v158;
    v170 = v78;
    if (v78)
    {
      v35 = v176;
      goto LABEL_14;
    }

LABEL_51:

    v123 = v184;
    MEMORY[0x2A1C7C4A8](v122, v124);
    v125 = v163;
    *(&v141 - 2) = v161;
    *(&v141 - 1) = v125;

    v126 = sub_29D58B754(sub_29D4B4D44, (&v141 - 4), v123);

    sub_29D4AB55C(v126);

    v127 = *(v123 + 16);
    if (v127)
    {
      v128 = sub_29D515A38(*(v123 + 16), 0);
      v129 = sub_29D5A2864(&v180, &v128[(*(v153 + 80) + 32) & ~*(v153 + 80)], v127, v123);
      sub_29D4B30C0(v180);
      v130 = v147;
      if (v129 == v127)
      {
        goto LABEL_55;
      }

      __break(1u);
    }

    v128 = MEMORY[0x29EDCA190];
    v130 = v147;
LABEL_55:
    v131 = sub_29D4AB5D8(v128, v130, v163, v146);

    v132 = v183;
    v133 = *(v183 + 16);
    if (v133)
    {
      v134 = sub_29D515968(*(v183 + 16), 0);
      v135 = sub_29D5A24A8(&v180, v134 + 4, v133, v132);
      sub_29D4B30C0(v180);
      if (v135 == v133)
      {
LABEL_59:
        v136 = sub_29D4B30C8(v134);

        sub_29D4B2EB0(0, &qword_2A1A161D8, sub_29D4B2D8C, MEMORY[0x29EDC9E90]);
        v137 = swift_allocObject();
        *(v137 + 16) = xmmword_29D5B5E20;
        *(v137 + 32) = v131;
        *(v137 + 40) = v136;
        v180 = v137;
        sub_29D4B2D8C(0);
        sub_29D4B3370(0);
        sub_29D4B2F14(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
        sub_29D4B2F14(&qword_2A1A16428, sub_29D4B3370, MEMORY[0x29EDC9A70]);

        v138 = v142;
        sub_29D5B394C();
        sub_29D4B2F14(&qword_2A1A168A0, sub_29D4B302C, MEMORY[0x29EDB89D8]);
        v139 = v144;
        v140 = sub_29D5B3B1C();

        result = (*(v143 + 8))(v138, v139);
        *v145 = v140;
        return result;
      }

      __break(1u);
    }

    v134 = MEMORY[0x29EDCA190];
    goto LABEL_59;
  }

  v59 = MEMORY[0x29EDC3B00];
LABEL_14:
  v79 = 0;
  v169 = (v49 + ((*(v171 + 80) + 32) & ~*(v171 + 80)));
  v167 = v171 + 88;
  v168 = v171 + 16;
  LODWORD(v166) = *v59;
  LODWORD(v157) = *MEMORY[0x29EDC3AE8];
  v154 = *MEMORY[0x29EDC3AF8];
  v149 = *MEMORY[0x29EDC3AF0];
  v148 = (v171 + 8);
  v165 = v171 + 96;
  v156 = (v35 + 40);
  v172 = v49;
  v151 = v153 + 16;
  v150 = (v153 + 8);
  while (v79 < *(v49 + 16))
  {
    v85 = v171;
    v86 = *(v171 + 72);
    v173 = v79;
    (*(v171 + 16))(v53, &v169[v86 * v79], v52);
    v87 = (*(v85 + 88))(v53, v52);
    if (v87 == v166)
    {
      v88 = (*v165)(v53, v52);
      v89 = *v53;
      MEMORY[0x2A1C7C4A8](v88, v90);
      v91 = v163;
      *(&v141 - 2) = v161;
      *(&v141 - 1) = v91;
      result = sub_29D58B478(sub_29D4B33C0, (&v141 - 4), v89);
      v174 = result;
      v92 = *(v35 + 16);
      if (v92)
      {
        v93 = 0;
        v155 = v92 - 1;
        v94 = MEMORY[0x29EDCA190];
        v160 = v89;
        while (1)
        {
          v162 = v94;
          v95 = &v156[2 * v93];
          v96 = v93;
          while (1)
          {
            if (v96 >= *(v35 + 16))
            {
              __break(1u);
              goto LABEL_62;
            }

            v98 = *(v95 - 1);
            v97 = *v95;
            v180 = v98;
            v181 = v97;

            v177 = sub_29D5B26BC();
            v178 = v99;
            sub_29D4B343C();
            v100 = sub_29D5B47AC();

            if ((v100 & 1) == 0)
            {
              v180 = v98;
              v181 = v97;
              v177 = sub_29D5B26CC();
              v178 = v101;
              v102 = sub_29D5B47AC();

              if ((v102 & 1) == 0)
              {
                break;
              }
            }

            v14 = v175;
LABEL_23:
            v35 = v176;
            ++v96;

            v95 += 2;
            if (v92 == v96)
            {
              v52 = v159;
              v89 = v160;
              v94 = v162;
              goto LABEL_47;
            }
          }

          v180 = v98;
          v181 = v97;
          MEMORY[0x2A1C7C4A8](v103, v104);
          *(&v141 - 2) = &v180;
          v105 = sub_29D4B2884(sub_29D4B3490, (&v141 - 4), v174);
          v14 = v175;
          if (v105)
          {
            goto LABEL_23;
          }

          v94 = v162;
          result = swift_isUniquelyReferenced_nonNull_native();
          v179 = v94;
          if ((result & 1) == 0)
          {
            result = sub_29D4C6BA0(0, *(v94 + 16) + 1, 1);
            v94 = v179;
          }

          v35 = v176;
          v89 = v160;
          v107 = *(v94 + 16);
          v106 = *(v94 + 24);
          if (v107 >= v106 >> 1)
          {
            result = sub_29D4C6BA0((v106 > 1), v107 + 1, 1);
            v35 = v176;
            v94 = v179;
          }

          v93 = v96 + 1;
          *(v94 + 16) = v107 + 1;
          v108 = v94 + 16 * v107;
          *(v108 + 32) = v98;
          *(v108 + 40) = v97;
          v109 = v155 == v96;
          v14 = v175;
          v52 = v159;
          if (v109)
          {
            goto LABEL_47;
          }
        }
      }

      v94 = MEMORY[0x29EDCA190];
LABEL_47:

      sub_29D4F1774(v94);

      sub_29D4F17E4(v89);
      v35 = v176;

      v51 = v158;
LABEL_48:
      v53 = v164;
      goto LABEL_16;
    }

    if (v87 == v157)
    {
      v162 = v57;
      (*v165)(v53, v52);
      v110 = *v53;
      v111 = *(*v53 + 16);
      if (v111)
      {
        v112 = *(v153 + 80);
        v174 = *v53;
        v113 = v110 + ((v112 + 32) & ~v112);
        v114 = *(v153 + 72);
        v115 = *(v153 + 16);
        v116 = v152;
        v117 = v150;
        do
        {
          v115(v116, v113, v51);
          sub_29D59BD10(v14, v116);
          (*v117)(v14, v51);
          v113 += v114;
          --v111;
        }

        while (v111);

        v57 = v162;
        v52 = v159;
        v53 = v164;
        v35 = v176;
      }

      else
      {

        v57 = v162;
      }

      goto LABEL_16;
    }

    if (v87 != v154)
    {
      if (v87 != v149)
      {
        result = (*v148)(v53, v52);
        goto LABEL_16;
      }

      v184 = MEMORY[0x29EDCA1A0];
      v118 = *(v35 + 16);

      for (i = v156; v118; --v118)
      {
        v121 = *(i - 1);
        v120 = *i;

        sub_29D59AD10(&v180, v121, v120);

        i += 2;
      }

      v35 = v176;

      goto LABEL_48;
    }

    v80 = (*v165)(v53, v52);
    v81 = *v53;
    MEMORY[0x2A1C7C4A8](v80, v82);
    v83 = v163;
    *(&v141 - 2) = v161;
    *(&v141 - 1) = v83;
    v84 = sub_29D58B614(sub_29D4B33A4, (&v141 - 4), v81);

    sub_29D4F1774(v84);
    v35 = v176;

LABEL_16:
    v49 = v172;
    v79 = v173 + 1;
    if (v173 + 1 == v170)
    {
      goto LABEL_51;
    }
  }

LABEL_62:
  __break(1u);
  return result;
}

char *sub_29D4AB2F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v35 = a2;
  v7 = sub_29D5B1AAC();
  v34 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B1D6C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];

  result = sub_29D5166E4(v16, v17);
  if (result)
  {
    v21 = result;
    v30 = v7;
    v22 = v19;
    v33 = v4;
    v23 = v20;
    v31 = sub_29D514404(result, v19, v20);
    v32 = a3;
    sub_29D4B37AC(v21, v22, v23);
    (*(v12 + 104))(v15, *MEMORY[0x29EDC4068], v11);
    v24 = v34;
    (*(v34 + 104))(v10, *MEMORY[0x29EDC3F10], v7);
    v25 = sub_29D5B143C();
    v26 = sub_29D5B26FC();
    v28 = v27;
    a3 = v32;

    (*(v24 + 8))(v10, v30);
    result = (*(v12 + 8))(v15, v11);
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *a3 = v26;
  a3[1] = v28;
  return result;
}

uint64_t sub_29D4AB55C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_29D56BF70(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_29D4AB5D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v285 = a3;
  v239 = a4;
  v296 = a2;
  sub_29D4B3918(0);
  v269 = v5;
  v266 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v264 = &v230 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3B58(0);
  v270 = v8;
  v268 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v265 = &v230 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3D00(0);
  v271 = *(v11 - 8);
  v272 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v267 = &v230 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B2EB0(0, &qword_2A1A165E8, sub_29D4B3D94, MEMORY[0x29EDB8AB0]);
  v253 = *(v14 - 8);
  v254 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v252 = &v230 - v16;
  sub_29D4B3DC8(0);
  v259 = v17;
  v257 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v255 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3E78(0);
  v260 = v20;
  v258 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v256 = &v230 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_29D5B148C();
  v283 = *(v276 - 8);
  MEMORY[0x2A1C7C4A8](v276, v23);
  v238 = v24;
  v279 = &v230 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3F64(0);
  v240 = *(v25 - 8);
  v241 = v25;
  MEMORY[0x2A1C7C4A8](v25, v26);
  v273 = &v230 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4074(0);
  v243 = *(v28 - 8);
  v244 = v28;
  MEMORY[0x2A1C7C4A8](v28, v29);
  v242 = &v230 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4308(0);
  v247 = *(v31 - 8);
  v248 = v31;
  MEMORY[0x2A1C7C4A8](v31, v32);
  v245 = &v230 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B43B4(0);
  v249 = *(v34 - 8);
  v250 = v34;
  MEMORY[0x2A1C7C4A8](v34, v35);
  v246 = &v230 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_29D5B13CC();
  v235 = *(v237 - 8);
  MEMORY[0x2A1C7C4A8](v237, v37);
  v233 = &v230 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_29D5B13EC();
  v234 = *(v236 - 8);
  MEMORY[0x2A1C7C4A8](v236, v39);
  v232 = &v230 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B39E8(0);
  v262 = *(v41 - 8);
  v263 = v41;
  MEMORY[0x2A1C7C4A8](v41, v42);
  v261 = &v230 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B44A0(0);
  v277 = v44;
  v46 = MEMORY[0x2A1C7C4A8](v44, v45);
  v251 = &v230 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x2A1C7C4A8](v46, v48);
  v274 = &v230 - v50;
  MEMORY[0x2A1C7C4A8](v49, v51);
  v280 = &v230 - v52;
  v275 = sub_29D5B0E6C();
  v282 = *(v275 - 8);
  MEMORY[0x2A1C7C4A8](v275, v53);
  v278 = &v230 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B450C(0);
  v57 = MEMORY[0x2A1C7C4A8](v55 - 8, v56);
  v231 = &v230 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v57, v59);
  v61 = (&v230 - v60);
  v300 = type metadata accessor for SharedConceptFeedItemData(0);
  v62 = *(v300 - 8);
  v64 = MEMORY[0x2A1C7C4A8](v300, v63);
  v292 = (&v230 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = MEMORY[0x2A1C7C4A8](v64, v66);
  v291 = &v230 - v68;
  v70 = MEMORY[0x2A1C7C4A8](v67, v69);
  v284 = &v230 - v71;
  v73 = MEMORY[0x2A1C7C4A8](v70, v72);
  v287 = &v230 - v74;
  v76 = MEMORY[0x2A1C7C4A8](v73, v75);
  v297 = &v230 - v77;
  MEMORY[0x2A1C7C4A8](v76, v78);
  v80 = &v230 - v79;
  v290 = sub_29D5B134C();
  v299 = *(v290 - 8);
  MEMORY[0x2A1C7C4A8](v290, v81);
  v298 = &v230 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B0C0C();
  swift_allocObject();
  v281 = sub_29D5B0BFC();
  v83 = *(a1 + 16);
  v294 = v62;
  if (v83)
  {
    v84 = *(sub_29D5B16BC() - 8);
    v85 = (v62 + 48);
    v86 = a1 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v87 = *(v84 + 72);
    v301 = MEMORY[0x29EDCA190];
    do
    {
      v88 = MEMORY[0x29ED5F4B0]();
      v89 = sub_29D5B16AC();
      v91 = v90;
      v92 = sub_29D5B168C();
      sub_29D4D3AA4(v89, v91, v92, v93, v61);
      objc_autoreleasePoolPop(v88);
      if ((*v85)(v61, 1, v300) == 1)
      {
        sub_29D4B4540(v61, sub_29D4B450C);
      }

      else
      {
        sub_29D4B45A0(v61, v80);
        sub_29D4B45A0(v80, v297);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v94 = v301;
        }

        else
        {
          v94 = sub_29D514C18(0, *(v301 + 2) + 1, 1, v301);
        }

        v96 = *(v94 + 2);
        v95 = *(v94 + 3);
        if (v96 >= v95 >> 1)
        {
          v94 = sub_29D514C18((v95 > 1), v96 + 1, 1, v94);
        }

        *(v94 + 2) = v96 + 1;
        v97 = (*(v294 + 80) + 32) & ~*(v294 + 80);
        v301 = v94;
        sub_29D4B45A0(v297, v94 + v97 + *(v294 + 72) * v96);
      }

      v86 += v87;
      --v83;
    }

    while (v83);
  }

  else
  {
    v301 = MEMORY[0x29EDCA190];
  }

  sub_29D5B0BDC();
  swift_allocObject();
  v293 = sub_29D5B0BCC();
  v98 = MEMORY[0x29EDCA1A0];
  *&v312[0] = MEMORY[0x29EDCA1A0];
  v99 = *(v296 + 16);
  if (v99)
  {
    v297 = 0;
    v100 = v299[2];
    v101 = v296 + ((*(v299 + 80) + 32) & ~*(v299 + 80));
    v296 = v299[9];
    v288 = (v294 + 56);
    v289 = v100;
    v299 += 2;
    v295 = (v299 - 1);
    v102 = v231;
    v103 = v290;
    for (i = v100(v298, v101, v290); ; i = v100(v105, v101, v103))
    {
      v106 = MEMORY[0x29ED5F4B0](i);
      v107 = sub_29D5B133C();
      if (v108 >> 60 != 15)
      {
        v109 = v107;
        v110 = v108;
        sub_29D4B2F14(&qword_2A17A3D40, type metadata accessor for SharedConceptFeedItemData, &unk_29D5B7658);
        v111 = v300;
        v112 = v297;
        sub_29D5B0BBC();
        if (v112)
        {

          sub_29D4A96BC(v109, v110);
          (*v288)(v102, 1, 1, v111);
          sub_29D4B4540(v102, sub_29D4B450C);
          v297 = 0;
        }

        else
        {
          (*v288)(v102, 0, 1, v111);
          v297 = 0;
          v113 = v284;
          sub_29D4B45A0(v102, v284);

          v115 = sub_29D595FDC(v114);

          sub_29D4E7FA8(v115);
          sub_29D4A96BC(v109, v110);
          sub_29D4B4540(v113, type metadata accessor for SharedConceptFeedItemData);
        }

        v100 = v289;
        v103 = v290;
      }

      objc_autoreleasePoolPop(v106);
      v105 = v298;
      (*v295)(v298, v103);
      v101 += v296;
      if (!--v99)
      {
        break;
      }
    }

    v116 = *&v312[0];
    v98 = MEMORY[0x29EDCA1A0];
  }

  else
  {
    v297 = 0;
    v116 = MEMORY[0x29EDCA1A0];
  }

  v311 = v98;
  v117 = v294;
  v118 = v287;
  if (*(v301 + 2))
  {
    v119 = *(v301 + 2);
    v120 = 0;
    v300 = *(v300 + 48);
    v299 = (v301 + ((*(v294 + 80) + 32) & ~*(v294 + 80)));
    v298 = *(v294 + 72);
    while (1)
    {
      v121 = sub_29D4B4CDC(v299 + v298 * v120, v118, type metadata accessor for SharedConceptFeedItemData);
      v122 = MEMORY[0x29ED5F4B0](v121);

      v124 = sub_29D595FDC(v123);

      v125 = *(v124 + 16);
      if (*(v116 + 16) <= v125 >> 3)
      {
        v310 = v124;
        if (v125)
        {
          v126 = 1 << *(v116 + 32);
          if (v126 < 64)
          {
            v127 = ~(-1 << v126);
          }

          else
          {
            v127 = -1;
          }

          v128 = v127 & *(v116 + 56);
          v129 = (v126 + 63) >> 6;

          for (j = 0; v128; result = sub_29D4B46B4(&v304))
          {
            v132 = j;
LABEL_39:
            v133 = __clz(__rbit64(v128));
            v128 &= v128 - 1;
            v134 = *(v116 + 48) + 88 * (v133 | (v132 << 6));
            v135 = *(v134 + 16);
            v312[0] = *v134;
            v312[1] = v135;
            v137 = *(v134 + 48);
            v136 = *(v134 + 64);
            v138 = *(v134 + 32);
            v313 = *(v134 + 80);
            v312[3] = v137;
            v312[4] = v136;
            v312[2] = v138;
            sub_29D4B4604(v312, &v304);
            sub_29D56B1A8(v312, v302);
            sub_29D4B4660(v312);
            v306 = v302[2];
            v307 = v302[3];
            v308 = v302[4];
            v309 = v303;
            v304 = v302[0];
            v305 = v302[1];
          }

          while (1)
          {
            v132 = j + 1;
            if (__OFADD__(j, 1))
            {
              break;
            }

            if (v132 >= v129)
            {

              v124 = v310;
              v118 = v287;
              goto LABEL_42;
            }

            v128 = *(v116 + 56 + 8 * v132);
            ++j;
            if (v128)
            {
              j = v132;
              goto LABEL_39;
            }
          }

          __break(1u);
LABEL_52:
          __break(1u);
          return result;
        }
      }

      else
      {
        v124 = sub_29D56C650(v116, v124);
      }

LABEL_42:
      v139 = *(v124 + 16);

      if (v139)
      {
        v140 = v292;
        sub_29D4B4CDC(v118, v292, type metadata accessor for SharedConceptFeedItemData);
        v141 = v291;
        sub_29D59AE60(v291, v140);
        sub_29D4B4540(v141, type metadata accessor for SharedConceptFeedItemData);
      }

      ++v120;
      objc_autoreleasePoolPop(v122);
      sub_29D4B4540(v118, type metadata accessor for SharedConceptFeedItemData);
      if (v120 == v119)
      {

        v142 = v311;
        v117 = v294;
        goto LABEL_46;
      }
    }
  }

  v142 = MEMORY[0x29EDCA1A0];
LABEL_46:
  sub_29D5B0E5C();
  sub_29D5B0DBC();
  sub_29D5B0DCC();
  sub_29D5B0DDC();
  v143 = *(v142 + 16);
  if (v143)
  {
    v144 = sub_29D515A04(*(v142 + 16), 0);
    v145 = sub_29D5A2600(&v304, v144 + ((*(v117 + 80) + 32) & ~*(v117 + 80)), v143, v142);
    result = sub_29D4B30C0(v304);
    if (v145 != v143)
    {
      goto LABEL_52;
    }

    v299 = v144;
  }

  else
  {

    v299 = MEMORY[0x29EDCA190];
  }

  v300 = sub_29D5B197C();
  v146 = v285;
  sub_29D5B143C();
  sub_29D4B2EB0(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v147 = sub_29D5B104C();
  v148 = *(v147 - 8);
  v149 = *(v148 + 72);
  v150 = (*(v148 + 80) + 32) & ~*(v148 + 80);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_29D5B5E20;
  v152 = v151 + v150;
  v153 = *(v148 + 104);
  v153(v152, *MEMORY[0x29EDC3730], v147);
  v153(v152 + v149, *MEMORY[0x29EDC36E0], v147);
  (*(v235 + 104))(v233, *MEMORY[0x29EDC38A8], v237);
  v154 = v232;
  sub_29D5B13DC();
  sub_29D5B146C();
  (*(v234 + 8))(v154, v236);
  sub_29D5B103C();
  swift_allocObject();
  v155 = v239;
  v300 = sub_29D5B102C();
  sub_29D5B140C();
  sub_29D499EC0(&v304, *(&v305 + 1));
  *&v302[0] = sub_29D5B139C();
  v156 = swift_allocObject();
  v157 = v299;
  *(v156 + 16) = v286;
  *(v156 + 24) = v157;
  sub_29D4B4040(0);
  sub_29D4B2EB0(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
  v299 = MEMORY[0x29EDB8A00];
  sub_29D4B2F14(&qword_2A1A16840, sub_29D4B4040, MEMORY[0x29EDB8A00]);
  sub_29D5B3B7C();

  sub_29D48F668(&v304);
  v158 = v283;
  v159 = *(v283 + 16);
  v297 = (v283 + 16);
  v298 = v159;
  v160 = v279;
  v161 = v276;
  (v159)(v279, v146, v276);
  v162 = *(v158 + 80);
  v163 = v158;
  v164 = (v162 + 24) & ~v162;
  v296 = v238 + 7;
  v165 = (v238 + 7 + v164) & 0xFFFFFFFFFFFFFFF8;
  v166 = swift_allocObject();
  v167 = v286;
  *(v166 + 16) = v286;
  v168 = *(v163 + 32);
  v283 = v163 + 32;
  v295 = v168;
  v169 = v160;
  v170 = v161;
  (v168)(v166 + v164, v169, v161);
  *(v166 + v165) = v300;
  *(v166 + ((v165 + 15) & 0xFFFFFFFFFFFFFFF8)) = v167;

  sub_29D5B396C();
  sub_29D4B4270(0);
  sub_29D4B415C(0);
  v171 = MEMORY[0x29EDB8908];
  sub_29D4B2F14(&qword_2A1A16F48, sub_29D4B3F64, MEMORY[0x29EDB8908]);
  sub_29D4B2F14(&qword_2A1A16F38, sub_29D4B415C, v171);
  v172 = v241;
  v173 = v242;
  v174 = v273;
  sub_29D5B3BFC();

  (*(v240 + 8))(v174, v172);
  v175 = v279;
  (v298)(v279, v285, v170);
  v176 = (v162 + 32) & ~v162;
  v291 = v162;
  v177 = (v296 + v176) & 0xFFFFFFFFFFFFFFF8;
  v178 = swift_allocObject();
  v179 = v286;
  v180 = v281;
  *(v178 + 16) = v286;
  *(v178 + 24) = v180;
  (v295)(v178 + v176, v175, v170);
  *(v178 + v177) = v300;
  *(v178 + ((v177 + 15) & 0xFFFFFFFFFFFFFFF8)) = v179;
  v181 = swift_allocObject();
  *(v181 + 16) = sub_29D4B47F8;
  *(v181 + 24) = v178;
  sub_29D4B3AC0(0);
  v290 = v182;
  sub_29D4B2F14(&qword_2A1A16A20, sub_29D4B4074, MEMORY[0x29EDB89A8]);

  v183 = v244;
  v184 = v245;
  sub_29D5B3BCC();

  (*(v243 + 8))(v173, v183);
  *(swift_allocObject() + 16) = v179;
  sub_29D4B3A8C(0);
  v289 = v185;
  v292 = MEMORY[0x29EDB8990];
  sub_29D4B2F14(&qword_2A1A16C38, sub_29D4B4308, MEMORY[0x29EDB8990]);
  v288 = sub_29D4B2F14(&qword_2A1A167C0, sub_29D4B3A8C, v299);
  v186 = v246;
  v187 = v248;
  sub_29D5B3B8C();

  (*(v247 + 8))(v184, v187);
  v294 = MEMORY[0x29EDB8928];
  sub_29D4B2F14(&qword_2A1A16DC8, sub_29D4B43B4, MEMORY[0x29EDB8928]);
  v188 = v250;
  v189 = sub_29D5B3B1C();

  (*(v249 + 8))(v186, v188);
  *&v304 = v189;
  v190 = v301;
  *&v302[0] = sub_29D4AD5BC(v301, v281, v285);
  v191 = v274;
  sub_29D4B4CDC(v280, v274, sub_29D4B44A0);
  v192 = v277;
  v193 = *(v277 + 48);
  v287 = v193;
  v194 = *(v277 + 64);
  v284 = v194;
  v195 = *(v282 + 16);
  v196 = v251;
  v197 = v275;
  v195(v251, v191, v275);
  v195((v196 + *(v192 + 48)), &v193[v191], v197);
  v195((v196 + *(v192 + 64)), v191 + v194, v197);
  v311 = v190;
  sub_29D4B3D94(0);
  v198 = v252;
  v199 = sub_29D5B3A2C();
  MEMORY[0x2A1C7C4A8](v199, v200);
  v201 = v286;
  *(&v230 - 4) = v286;
  *(&v230 - 3) = v196;
  v228 = v281;
  v229 = v285;
  v203 = v254;
  v202 = v255;
  sub_29D5B3A0C();
  (*(v253 + 8))(v198, v203);
  *(swift_allocObject() + 16) = v201;
  sub_29D4B2F14(&qword_2A1A161C0, sub_29D4B3DC8, MEMORY[0x29EDB8B20]);
  v204 = v256;
  v205 = v259;
  v206 = v288;
  sub_29D5B3B8C();

  (*(v257 + 8))(v202, v205);
  sub_29D4B2F14(&qword_2A1A16CC8, sub_29D4B3E78, v294);
  v207 = v260;
  v208 = sub_29D5B3B1C();
  (*(v258 + 8))(v204, v207);
  v301 = sub_29D4B44A0;
  sub_29D4B4540(v196, sub_29D4B44A0);
  v209 = *(v282 + 8);
  v282 += 8;
  v300 = v209;
  v210 = v274;
  v209(v274 + v284, v197);
  v209(&v287[v210], v197);
  v209(v210, v197);
  v311 = v208;
  v228 = v206;
  v211 = v261;
  sub_29D5B37BC();
  v212 = v279;
  v213 = v276;
  (v298)(v279, v285, v276);
  v214 = (v291 + 16) & ~v291;
  v215 = (v296 + v214) & 0xFFFFFFFFFFFFFFF8;
  v216 = swift_allocObject();
  (v295)(v216 + v214, v212, v213);
  v217 = v286;
  *(v216 + v215) = v286;
  *(v216 + ((v215 + 15) & 0xFFFFFFFFFFFFFFF8)) = v217;
  v218 = swift_allocObject();
  *(v218 + 16) = sub_29D4B497C;
  *(v218 + 24) = v216;
  sub_29D4B4B08(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D4B2F14(&qword_2A1A17210, sub_29D4B39E8, MEMORY[0x29EDB8878]);
  v219 = v263;
  v220 = v264;
  sub_29D5B3BCC();

  *(swift_allocObject() + 16) = v217;
  v221 = MEMORY[0x29EDB89F8];
  sub_29D4B3C64(0, &qword_2A1A16788, MEMORY[0x29EDB89F8]);
  sub_29D4B2F14(&qword_2A1A16C18, sub_29D4B3918, v292);
  sub_29D4B4A90(&qword_2A1A16790, &qword_2A1A16788, v221, v299);
  v222 = v265;
  v223 = v269;
  sub_29D5B3B8C();

  (*(v266 + 8))(v220, v223);
  *&v304 = MEMORY[0x29EDCA190];
  sub_29D4B2F14(&qword_2A1A16DA8, sub_29D4B3B58, v294);
  v224 = v267;
  v225 = v270;
  sub_29D5B3B4C();
  (*(v268 + 8))(v222, v225);
  sub_29D4B2F14(&qword_2A1A17088, sub_29D4B3D00, MEMORY[0x29EDB88C8]);
  v226 = v272;
  v227 = sub_29D5B3B1C();

  (*(v271 + 8))(v224, v226);
  (*(v262 + 8))(v211, v219);
  sub_29D4B4540(v280, v301);
  (v300)(v278, v275);
  return v227;
}
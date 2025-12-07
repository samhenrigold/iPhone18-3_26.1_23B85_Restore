uint64_t sub_20B7B2B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B7B2BBC()
{
  v1 = v0;
  v2 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_20C13DC94();

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_20C138D14();
  MEMORY[0x20F2F4230](v3);

  if (v2 == 3)
  {
    v4 = 0xD000000000000015;
    v5 = 0x800000020C1995A0;
  }

  else
  {
    v5 = 0x800000020C199580;
    v4 = 0xD000000000000017;
  }

  MEMORY[0x20F2F4230](v4, v5);
  v6 = sub_20C138D34();

  return v6;
}

id sub_20B7B2E58(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TVDisplayPreferencesViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_20B7B2F30(uint64_t a1)
{
  v2 = v1;
  v88 = v1;
  if (sub_20B7B399C(a1))
  {
    v79 = *(a1 + 16);
    if (v79)
    {
      v4 = 0;
      v86 = OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentActions;
      v78 = a1 + 32;
      do
      {
        v5 = (v78 + 88 * v4);
        v6 = *v5;
        v7 = *(*v5 + 16);
        if (v7)
        {
          v82 = v4;
          v8 = v5[2];
          v9 = v5[3];
          v10 = *(v5 + 8);

          swift_bridgeObjectRetain_n();

          swift_beginAccess();
          if (v9)
          {
            v11 = v8;
          }

          else
          {
            v11 = 0;
          }

          if (v9)
          {
            v12 = v9;
          }

          else
          {
            v12 = 0xE000000000000000;
          }

          v84 = ~v10;
          v13 = (v6 + 48);
          do
          {
            v14 = *(v13 - 16);
            v15 = *(v13 - 1);
            v16 = *v13;
            *&v91 = 0;
            *(&v91 + 1) = 0xE000000000000000;

            MEMORY[0x20F2F4230](v11, v12);

            MEMORY[0x20F2F4230](v15, v16);
            v17 = sub_20C13C914();

            v18 = *(v2 + v86);
            if (*(v18 + 16))
            {

              v19 = sub_20B65CEB8();
              if (v20)
              {
                v21 = *(*(v18 + 56) + 8 * v19);

                v22 = v21;
                v2 = v88;
                v23 = v22;

                if (v14 >= 0)
                {
                  v24 = v14 & 1;
                }

                else
                {
                  v24 = 0;
                }

                [v23 setState_];
                [v23 setAttributes_];
              }

              else
              {
              }
            }

            else
            {
            }

            v13 += 3;
            --v7;
          }

          while (v7);

          swift_bridgeObjectRelease_n();
          v4 = v82;
        }

        ++v4;
      }

      while (v4 != v79);
    }

    return;
  }

  v25 = MEMORY[0x277D84F90];
  v106 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentSections) = a1;

  v26 = sub_20B6B325C(v25);
  v27 = OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentActions;
  swift_beginAccess();
  v87 = v27;
  *(v2 + v27) = v26;

  v104 = 0;
  v105 = 0;
  v103 = a1;

  sub_20B7B3BF8(&v91);
  v99 = v93;
  v100 = v94;
  v101 = v95;
  v102 = v96;
  v97 = v91;
  v98 = v92;
  v28 = *(&v91 + 1);
  if (!*(&v91 + 1))
  {
LABEL_63:

    v66 = sub_20C13C914();
    v67 = [objc_opt_self() smm:v66 systemImageNamed:?];

    v68 = [objc_opt_self() configurationWithWeight_];
    v69 = [v67 imageWithConfiguration_];

    v70 = *(v2 + OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_transportBarControlsCoordinator);
    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    v71 = v69;
    v72 = sub_20C13D554();
    swift_beginAccess();
    v73 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v70[5];
    v70[5] = 0x8000000000000000;
    sub_20B91DA38(v73, 2, isUniquelyReferenced_nonNull_native);
    v70[5] = v90;
    swift_endAccess();
    v75 = v70[2];
    if (v75)
    {
      v76 = v70[3];
      sub_20B584050(v70[2], v76);

      v75(v77);

      sub_20B583ECC(v75, v76);
    }

    else
    {
    }

    return;
  }

  while (1)
  {
    if (v99)
    {
      v29 = *(&v98 + 1);
    }

    else
    {
      v29 = 0;
    }

    v30 = 0xE000000000000000;
    if (v99)
    {
      v30 = v99;
    }

    v83 = v30;
    v85 = v29;
    v31 = *(v28 + 16);
    if (v31)
    {
      break;
    }

    sub_20B520158(&v97, &qword_27C7655D0, &qword_20C158C88);
    v38 = MEMORY[0x277D84F90];
LABEL_36:
    if (!(v38 >> 62))
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_38;
      }

      goto LABEL_57;
    }

    v39 = sub_20C13DB34();
    if (v39)
    {
LABEL_38:
      v40 = 0;
      while (1)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x20F2F5430](v40, v38);
        }

        else
        {
          if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v43 = *(v38 + 8 * v40 + 32);
        }

        v44 = v43;
        v45 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_69;
        }

        v46 = [v43 identifier];
        swift_beginAccess();
        v47 = v44;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v49 = *(v2 + v87);
        *(v2 + v87) = 0x8000000000000000;
        v50 = sub_20B65CEB8();
        v52 = v49[2];
        v53 = (v51 & 1) == 0;
        v54 = __OFADD__(v52, v53);
        v55 = v52 + v53;
        if (v54)
        {
          goto LABEL_71;
        }

        v56 = v51;
        if (v49[3] < v55)
        {
          break;
        }

        if (v48)
        {
          goto LABEL_50;
        }

        v60 = v50;
        sub_20BA101A4();
        v50 = v60;
        if (v56)
        {
LABEL_39:
          v41 = v49[7];
          v42 = *(v41 + 8 * v50);
          *(v41 + 8 * v50) = v47;

          goto LABEL_40;
        }

LABEL_51:
        v49[(v50 >> 6) + 8] |= 1 << v50;
        *(v49[6] + 8 * v50) = v46;
        *(v49[7] + 8 * v50) = v47;
        v58 = v49[2];
        v54 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v54)
        {
          goto LABEL_72;
        }

        v49[2] = v59;
LABEL_40:
        v2 = v88;
        *(v88 + v87) = v49;
        swift_endAccess();

        ++v40;
        if (v45 == v39)
        {
          goto LABEL_57;
        }
      }

      sub_20BA09E18(v55, v48);
      v50 = sub_20B65CEB8();
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_73;
      }

LABEL_50:
      if (v56)
      {
        goto LABEL_39;
      }

      goto LABEL_51;
    }

LABEL_57:
    if (v38 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    }

    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    v61 = sub_20C13D554();
    MEMORY[0x20F2F43B0](v61, v62, v63, v64, v65);
    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    sub_20B7B3BF8(&v91);
    v97 = v91;
    v98 = v92;
    v99 = v93;
    v100 = v94;
    v101 = v95;
    v102 = v96;
    v28 = *(&v91 + 1);
    if (!*(&v91 + 1))
    {
      goto LABEL_63;
    }
  }

  v80 = v97;
  v89 = MEMORY[0x277D84F90];

  sub_20C13DD64();
  v81 = *(v28 + 16);
  v32 = 0;
  sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
  v33 = (v28 + 48);
  while (v81 != v32)
  {
    if (v32 >= *(v28 + 16))
    {
      goto LABEL_68;
    }

    v34 = *(v33 - 1);
    v35 = *v33;
    *&v91 = 0;
    *(&v91 + 1) = 0xE000000000000000;
    swift_bridgeObjectRetain_n();

    MEMORY[0x20F2F4230](v85, v83);

    MEMORY[0x20F2F4230](v34, v35);
    sub_20C13C914();

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = v32;
    v37[4] = v80;
    sub_20C13D624();

    sub_20C13DD34();
    sub_20C13DD74();
    sub_20C13DD84();
    sub_20C13DD44();
    v33 += 3;
    if (v31 == ++v32)
    {

      sub_20B520158(&v97, &qword_27C7655D0, &qword_20C158C88);
      v2 = v88;
      v38 = v89;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  type metadata accessor for Identifier(0);
  sub_20C13E054();
  __break(1u);
}

uint64_t sub_20B7B399C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentSections);
  if (v2 != *(v3 + 16))
  {
    return 0;
  }

  v57 = 1;

  if (v2)
  {
    v5 = 0;
    v6 = 32;
    do
    {
      v7 = (a1 + v6);
      v56 = *(a1 + v6 + 80);
      v8 = *(a1 + v6 + 64);
      v55[3] = *(a1 + v6 + 48);
      v55[4] = v8;
      v9 = *(a1 + v6 + 32);
      v55[1] = *(a1 + v6 + 16);
      v55[2] = v9;
      v55[0] = *(a1 + v6);
      v10 = *(v3 + 16);
      if (v5 == v10)
      {
        break;
      }

      if (v5 >= v10)
      {
        __break(1u);

        v33 = v44;
        v34 = v45;
        v35 = v46;
        v29 = v40;
        v30 = v41;
        v31 = v42;
        v32 = v43;
        v25 = v36;
        v26 = v37;
        v27 = v38;
        v28 = v39;
        result = sub_20B520158(&v25, &qword_27C7655D8, &unk_20C158C90);
        __break(1u);
        return result;
      }

      v11 = *(v3 + v6 + 16);
      v47[0] = *(v3 + v6);
      v47[1] = v11;
      v12 = *(v3 + v6 + 32);
      v13 = *(v3 + v6 + 48);
      v14 = *(v3 + v6 + 64);
      v48 = *(v3 + v6 + 80);
      v47[3] = v13;
      v47[4] = v14;
      v47[2] = v12;
      v15 = v7[1];
      v49 = *v7;
      v50 = v15;
      v16 = v7[2];
      v17 = v7[3];
      v18 = v7[4];
      *v54 = *(v7 + 10);
      v52 = v17;
      v53 = v18;
      v51 = v16;
      v19 = *(v3 + v6);
      *&v54[24] = *(v3 + v6 + 16);
      *&v54[8] = v19;
      v20 = *(v3 + v6 + 32);
      v21 = *(v3 + v6 + 48);
      v22 = *(v3 + v6 + 64);
      *&v54[88] = *(v3 + v6 + 80);
      *&v54[72] = v22;
      *&v54[56] = v21;
      *&v54[40] = v20;
      v45 = *&v54[64];
      v46 = *&v54[80];
      v40 = v53;
      v41 = *v54;
      v43 = *&v54[32];
      v44 = *&v54[48];
      v42 = *&v54[16];
      v36 = v49;
      v37 = v50;
      v38 = v51;
      v39 = v52;
      sub_20B7B4014(v55, &v25);
      sub_20B7B4014(v47, &v25);
      sub_20B7B3DF8(&v57, &v36, v23);
      ++v5;
      v33 = v44;
      v34 = v45;
      v35 = v46;
      v29 = v40;
      v30 = v41;
      v31 = v42;
      v32 = v43;
      v25 = v36;
      v26 = v37;
      v27 = v38;
      v28 = v39;
      sub_20B520158(&v25, &qword_27C7655D8, &unk_20C158C90);
      v6 += 88;
    }

    while (v2 != v5);
  }

  return v57;
}

uint64_t sub_20B7B3BF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *v1 + 88 * v2;
  v5 = *(v4 + 48);
  v14 = *(v4 + 32);
  v15 = v5;
  v6 = *(v4 + 64);
  v7 = *(v4 + 80);
  v8 = *(v4 + 96);
  v19 = *(v4 + 112);
  v17 = v7;
  v18 = v8;
  v16 = v6;
  v1[1] = v2 + 1;
  v9 = v1[2];
  if (__OFADD__(v9, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v9 + 1;
  *a1 = v9;
  *(a1 + 40) = v16;
  v10 = v18;
  *(a1 + 56) = v17;
  *(a1 + 72) = v10;
  *(a1 + 88) = v19;
  v11 = v15;
  *(a1 + 8) = v14;
  *(a1 + 24) = v11;
  return sub_20B7B4014(&v14, v13);
}

void *sub_20B7B3CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;

    MEMORY[0x20F2EA980](a3, a4);
    sub_20B64347C();

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

void sub_20B7B3DF8(BOOL *result, uint64_t *a2, __n128 a3)
{
  v5 = *a2;
  v6 = a2[3];
  v7 = a2[11];
  v8 = a2[14];
  v30 = (v6 | v8) == 0;
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_10:
    v11 = *(v5 + 16);
    if (v11)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (a2[2] != a2[13] || v6 != v8)
  {
    v30 = sub_20C13DFF4();
    goto LABEL_10;
  }

  v30 = 1;
  v11 = *(v5 + 16);
  if (v11)
  {
LABEL_11:
    v29 = result;
    v12 = 0;
    v28 = v5;
    v13 = (v5 + 48);
    v14 = (v7 + 48);
    do
    {
      v15 = *(v7 + 16);
      if (v12 == v15)
      {
        break;
      }

      if (v12 >= v15)
      {
        __break(1u);
        return;
      }

      v17 = *(v13 - 1);
      v16 = *v13;
      v19 = *(v14 - 1);
      v18 = *v14;
      if (v17 != v19 || v16 != v18)
      {
        v32 = *(v13 - 16);
        v31 = *(v14 - 16);
        if ((sub_20C13DFF4() & 1) == 0)
        {

          v21 = v18;
          v22 = v16;
          v23 = v19;
          v24 = v17;
          result = v29;
          v5 = v28;
          v25 = v32;
          v26 = v31;
          if (*v29)
          {
            goto LABEL_26;
          }

          goto LABEL_28;
        }
      }

      ++v12;
      v13 += 3;
      v14 += 3;
    }

    while (v11 != v12);
    v25 = 0;
    v24 = 0;
    v22 = 0;
    v26 = 0;
    v23 = 0;
    v21 = 0;
    result = v29;
    v5 = v28;
    if (*v29)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

LABEL_25:
  v25 = 0;
  v24 = 0;
  v22 = 0;
  v26 = 0;
  v23 = 0;
  v21 = 0;
  if (*result)
  {
LABEL_26:
    if ((v30 & 1) != 0 && !v22)
    {
      v27 = *(v5 + 16) == *(v7 + 16);
      goto LABEL_29;
    }
  }

LABEL_28:
  sub_20B7B4070(v25, v24, v22, v26, v23, v21);
  v27 = 0;
LABEL_29:
  *result = v27;
}

uint64_t sub_20B7B3FE4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_onSettingsDismissed);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_onSettingsDismissed);
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_onSettingsDismissed + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4, v5);
}

double sub_20B7B4070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }

  return result;
}

id sub_20B7B40B4(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentSections] = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentActions;
  *&v2[v6] = sub_20B6B325C(v5);
  v7 = &v2[OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_onSettingsDismissed];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v2[OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_presenter] = a1;
  *&v2[OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_transportBarControlsCoordinator] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for TVDisplayPreferencesViewController();

  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  *(a1 + 24) = &off_2822A6928;
  swift_unknownObjectWeakAssign();
  return v8;
}

uint64_t type metadata accessor for WorkoutAnalyticsEvent(uint64_t a1)
{
  result = qword_27C7655E0;
  if (!qword_27C7655E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B7B41F4(uint64_t a1)
{
  result = sub_20C137EA4();
  if (v2 <= 0x3F)
  {
    result = sub_20C13ABF4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20B7B4298()
{
  v1 = v0;
  v2 = sub_20C137FE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v37 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7655F0, &qword_20C158D08);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  v42 = inited + 32;
  *(inited + 16) = xmmword_20C158CA0;
  *(inited + 40) = 0x800000020C1996B0;
  sub_20B7B4910();
  if (v13)
  {
    v14 = sub_20C13C914();
  }

  else
  {
    v14 = 0;
  }

  *(inited + 48) = v14;
  strcpy((inited + 56), "activityType");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  sub_20B7B4B54();
  v43 = v3;
  if (v15)
  {
    v16 = sub_20C13C914();
  }

  else
  {
    v16 = 0;
  }

  *(inited + 72) = v16;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x800000020C1996D0;
  v39 = sub_20B7B5320();
  *(inited + 96) = sub_20C13D614();
  *(inited + 104) = 0x6564726163736964;
  *(inited + 112) = 0xE900000000000064;
  type metadata accessor for WorkoutAnalyticsEvent(0);
  sub_20C137E74();
  v17 = v43;
  v18 = *(v43 + 48);
  if (v18(v11, 1, v2) == 1)
  {
    sub_20B520158(v11, &unk_27C768AC0, &unk_20C1523B0);
LABEL_10:
    v20 = 0;
    goto LABEL_12;
  }

  v19 = sub_20C137FD4();
  (*(v17 + 8))(v11, v2);
  if ((v19 & 0x100000000) == 0)
  {
    goto LABEL_10;
  }

  v21 = sub_20C137FC4();
  v20 = v21 == sub_20C137FC4();
LABEL_12:
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 128) = 0x6E6F697461727564;
  *(inited + 136) = 0xE800000000000000;
  v22 = v41;
  sub_20C137E74();
  v23 = v40;
  sub_20B7B536C(v22, v40);
  if (v18(v23, 1, v2) == 1)
  {
    v24 = 0;
  }

  else
  {
    v25 = v43;
    v26 = v38;
    (*(v43 + 32))(v38, v23, v2);
    sub_20C137FB4();
    v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    (*(v25 + 8))(v26, v2);
  }

  *(inited + 144) = v24;
  sub_20B520158(v22, &unk_27C768AC0, &unk_20C1523B0);
  *(inited + 152) = 0x6F73616552646E65;
  *(inited + 160) = 0xE90000000000006ELL;
  sub_20B7B4C4C();
  if (v28)
  {
    v29 = sub_20C13C914();
  }

  else
  {
    v29 = 0;
  }

  *(inited + 168) = v29;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x800000020C1996F0;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 200) = 0x657079546C616F67;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 216) = sub_20C13D614();
  *(inited + 224) = 0xD00000000000001ALL;
  *(inited + 232) = 0x800000020C199710;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 248) = 0xD000000000000010;
  *(inited + 256) = 0x800000020C199730;
  v30 = sub_20C13C914();

  *(inited + 264) = v30;
  *(inited + 272) = 0x7954726F736E6573;
  *(inited + 280) = 0xEA00000000006570;
  sub_20B7B4DA0();
  if (v31)
  {
    v32 = sub_20C13C914();
  }

  else
  {
    v32 = 0;
  }

  *(inited + 288) = v32;
  v33 = sub_20B6B4270(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765600, &qword_20C158D10);
  swift_arrayDestroy();
  sub_20B7B5020(v33);
  v35 = v34;

  return v35;
}

uint64_t sub_20B7B4910()
{
  v0 = sub_20C134B64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  type metadata accessor for WorkoutAnalyticsEvent(0);
  sub_20C137D74();
  v7 = sub_20C133D84();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &unk_27C765120, &unk_20C152470);
    return 0;
  }

  sub_20C133D34();
  (*(v8 + 8))(v6, v7);
  v9 = sub_20C134B54();
  v11 = v10;
  v13 = v12;
  (*(v1 + 8))(v3, v0);
  if ((v13 & 1) == 0)
  {
    sub_20B583F4C(v9, v11, 0);
    return 0;
  }

  if (v9)
  {
    return 0x766F4D656C707041;
  }

  else
  {
    return 0x6E45657669746341;
  }
}

uint64_t sub_20B7B4B54()
{
  type metadata accessor for WorkoutAnalyticsEvent(0);
  sub_20C137E04();
  v0 = _HKWorkoutActivityNameForActivityType();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_20C13C954();
  v4 = v3;

  if (sub_20C13CB44())
  {
    v5 = sub_20C13CA74();
    v6 = sub_20B7B53DC(v5, v2, v4);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v2 = MEMORY[0x20F2F4190](v6, v8, v10, v12);
  }

  return v2;
}

uint64_t sub_20B7B4C4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090, &unk_20C157460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  type metadata accessor for WorkoutAnalyticsEvent(0);
  sub_20C137D44();
  v3 = sub_20C1337D4();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_20B520158(v2, &unk_27C765090, &unk_20C157460);
    return 0;
  }

  v5 = sub_20C1337C4();
  (*(v4 + 8))(v2, v3);
  if ((v5 & 0x100000000) == 0)
  {
    return 0;
  }

  return qword_20C158D18[v5];
}

uint64_t sub_20B7B4DA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - v5;
  type metadata accessor for WorkoutAnalyticsEvent(0);
  sub_20C137E64();
  v7 = sub_20C1368F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) == 1)
  {
    v10 = v6;
LABEL_3:
    sub_20B520158(v10, &unk_27C767260, &unk_20C152430);
    return 0;
  }

  v26[1] = v0;
  v11 = sub_20C1368D4();
  v13 = v12;
  v15 = v14;
  v16 = v6;
  v17 = *(v8 + 8);
  v17(v16, v7);
  if ((v15 & 1) == 0)
  {
    v18 = v11;
    v19 = v13;
LABEL_9:
    sub_20B583F4C(v18, v19, 0);
    return 0;
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_20C137E64();
  if (v9(v3, 1, v7) == 1)
  {
    v10 = v3;
    goto LABEL_3;
  }

  v21 = sub_20C1368E4();
  v23 = v22;
  v25 = v24;
  v17(v3, v7);
  if ((v25 & 1) == 0)
  {
    v18 = v21;
    v19 = v23;
    goto LABEL_9;
  }

  if (!v21)
  {
    return 0x3473646F50726941;
  }

  if (v21 == 1)
  {
    return 0x2C33627265776F50;
  }

  return 0xD000000000000010;
}

void sub_20B7B5020(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v10 = v9 | (v8 << 6);
        v11 = *(*(a1 + 56) + 8 * v10);
        if (v11)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v13 = (*(a1 + 48) + 16 * v10);
      v29 = *v13;
      v30 = v13[1];
      v14 = *(v2 + 16);
      if (*(v2 + 24) <= v14)
      {
        v16 = v11;

        sub_20BA0ABB4(v14 + 1, 1);
        v2 = v31;
      }

      else
      {
        v15 = v11;
      }

      sub_20C13E164();
      sub_20C13CA64();
      v17 = sub_20C13E1B4();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = v17 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v30;
LABEL_24:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v28 = (*(v2 + 48) + 16 * v22);
      *v28 = v29;
      v28[1] = v23;
      *(*(v2 + 56) + 8 * v22) = v11;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v24 = 0;
    v25 = (63 - v19) >> 6;
    v23 = v30;
    while (++v21 != v25 || (v24 & 1) == 0)
    {
      v26 = v21 == v25;
      if (v21 == v25)
      {
        v21 = 0;
      }

      v24 |= v26;
      v27 = *(v18 + 8 * v21);
      if (v27 != -1)
      {
        v22 = __clz(__rbit64(~v27)) + (v21 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v12 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v12);
      ++v8;
      if (v6)
      {
        v8 = v12;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_20B7B5270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_20C13ABF4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20B7B52E4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

unint64_t sub_20B7B5320()
{
  result = qword_27C7655F8;
  if (!qword_27C7655F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7655F8);
  }

  return result;
}

uint64_t sub_20B7B536C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B7B53DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_20C13CA94();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_20C13CBA4();
}

double sub_20B7B548C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void MiniPlayerHosting<>.presentSessionViewController(_:animated:completion:)(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_miniPlayerHost + 8) = a6;
  swift_unknownObjectWeakAssign();
  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_20B7B548C;
    v11[3] = &block_descriptor_14;
    a3 = _Block_copy(v11);
  }

  [v6 presentViewController:a1 animated:a2 & 1 completion:a3];
  _Block_release(a3);
}

char *sub_20B7B55D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_layout];
  sub_20B7B721C(v129);
  v13 = v129[5];
  *(v12 + 4) = v129[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v129[6];
  *(v12 + 14) = v130;
  v14 = v129[1];
  *v12 = v129[0];
  *(v12 + 1) = v14;
  v15 = v129[3];
  *(v12 + 2) = v129[2];
  *(v12 + 3) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = objc_opt_self();
  v19 = [v18 smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v17 setFont_];

  v20 = objc_opt_self();
  v21 = [v20 labelColor];
  [v17 setTextColor_];

  [v17 setLineBreakMode_];
  [v17 setNumberOfLines_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v16] = v17;
  v22 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_subtitleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v24 = *MEMORY[0x277D76938];
  v25 = [v18 preferredFontForTextStyle_];
  [v23 setFont_];

  v26 = [v20 labelColor];
  [v23 setTextColor_];

  [v23 setLineBreakMode_];
  [v23 setNumberOfLines_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v22] = v23;
  v27 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_captionLabel;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v29 = [v18 preferredFontForTextStyle_];
  [v28 setFont_];

  v30 = [v20 secondaryLabelColor];
  [v28 setTextColor_];

  v31 = sub_20BD54D68();
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v27] = v31;
  v32 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_artworkView;
  v128 = 0;
  memset(v127, 0, sizeof(v127));
  v126 = 0;
  v33 = objc_allocWithZone(type metadata accessor for WorkoutPlanArtworkView());
  v34 = WorkoutPlanArtworkView.init(artwork:appearance:)(v127, &v126);
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v32] = v34;
  v35 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  v36 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_floatingView;
  *&v5[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_floatingView] = v35;
  v37 = qword_27C760820;
  v38 = v35;
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setCornerRadius_];

  [*&v5[v36] setContinuousCornerEnabled_];
  [*&v5[v36] setRoundContentWhenDeselected_];
  [*&v5[v36] setFocusedSizeIncrease_];
  [*&v5[v36] setContentMotionRotation:0.0 translation:{0.0, *(v12 + 3), *(v12 + 4)}];
  v39 = *&v5[v36];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 configurationWithStyle_];
  [v41 setFocusAnimationConfiguration_];

  [*&v5[v36] setBackgroundColor:*(v12 + 9) forState:0];
  [*&v5[v36] setBackgroundColor:*(v12 + 8) forState:8];
  [*&v5[v36] setBackgroundColor:*(v12 + 8) forState:4];
  [*&v5[v36] setBackgroundColor:*(v12 + 8) forState:1];
  [*&v5[v36] setShadowVerticalOffset_];
  [*&v5[v36] setShadowOpacity:0 forUserInterfaceStyle:*(v12 + 7)];
  [*&v5[v36] setShadowOpacity:2 forUserInterfaceStyle:*(v12 + 7)];
  [*&v5[v36] setShadowOpacity:1 forUserInterfaceStyle:*(v12 + 7)];
  [*&v5[v36] setShadowRadius_];
  v125.receiver = v5;
  v125.super_class = type metadata accessor for TVWorkoutPlanGalleryBrickCell(0);
  v43 = objc_msgSendSuper2(&v125, &selRef__hysteresis, a1, a2, a3, a4);
  v44 = [v43 contentView];
  v45 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_floatingView;
  [v44 addSubview_];

  v123 = v45;
  result = [*&v43[v45] contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v47 = result;
  v121 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_artworkView;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_20C151490;
  v49 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_titleLabel;
  v50 = *&v43[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_titleLabel];
  *(v48 + 32) = v50;
  v51 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_subtitleLabel;
  v52 = *&v43[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_subtitleLabel];
  *(v48 + 40) = v52;
  v53 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v54 = v50;
  v55 = v52;
  v56 = sub_20C13CC54();

  v57 = [v53 initWithArrangedSubviews_];

  [v57 setAxis_];
  v58 = &v43[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_layout];
  [v57 setSpacing_];
  v59 = v57;
  [v59 setTranslatesAutoresizingMaskIntoConstraints_];
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_20C151490;
  *(v60 + 32) = v59;
  v61 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_captionLabel;
  v62 = *&v43[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_captionLabel];
  *(v60 + 40) = v62;
  v63 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v64 = v62;
  v65 = sub_20C13CC54();

  v66 = [v63 initWithArrangedSubviews_];

  [v66 setAxis_];
  [v66 setDistribution_];
  [v66 setTranslatesAutoresizingMaskIntoConstraints_];
  [v59 addSubview_];
  [v59 addSubview_];
  v122 = v59;
  [v66 addSubview_];
  [v66 addSubview_];
  result = [*&v43[v123] contentView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v67 = result;
  [result addSubview_];

  result = [*&v43[v123] contentView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v68 = result;
  v70 = v58[11];
  v69 = v58[12];
  v71 = v58[13];
  v72 = v58[14];
  v73 = [v66 leadingAnchor];
  v74 = [v68 leadingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:v69];

  LODWORD(v76) = 1148846080;
  [v75 setPriority_];
  v77 = v75;
  v78 = [v66 trailingAnchor];
  v79 = [v68 trailingAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:-v72];

  LODWORD(v81) = 1148846080;
  [v80 setPriority_];
  v82 = v80;
  v83 = [v66 topAnchor];
  v84 = [v68 topAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:v70];

  LODWORD(v86) = 1148846080;
  [v85 setPriority_];
  v87 = [v66 bottomAnchor];
  v88 = [v68 bottomAnchor];
  v89 = [v87 constraintEqualToAnchor:v88 constant:-v71];

  LODWORD(v90) = 1148846080;
  [v89 setPriority_];
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_20C14FE90;
  *(v91 + 32) = v77;
  *(v91 + 40) = v82;
  *(v91 + 48) = v85;
  *(v91 + 56) = v89;
  v92 = v85;

  v93 = *&v43[v123];
  v94 = *&v43[v121];
  result = [v93 contentView];
  if (result)
  {
    v95 = result;
    v97 = *MEMORY[0x277D768C8];
    v96 = *(MEMORY[0x277D768C8] + 8);
    v98 = *(MEMORY[0x277D768C8] + 16);
    v99 = *(MEMORY[0x277D768C8] + 24);
    v100 = [v94 leadingAnchor];
    v101 = [v95 leadingAnchor];
    v102 = [v100 constraintEqualToAnchor:v101 constant:v96];

    LODWORD(v103) = 1148846080;
    [v102 &selRef_meterUnit];
    v124 = v102;
    v104 = [v94 trailingAnchor];
    v105 = [v95 trailingAnchor];
    v106 = [v104 constraintEqualToAnchor:v105 constant:-v99];

    LODWORD(v107) = 1148846080;
    [v106 &selRef_meterUnit];
    v108 = v106;
    v109 = [v94 topAnchor];
    v110 = [v95 topAnchor];
    v111 = [v109 constraintEqualToAnchor:v110 constant:v97];

    LODWORD(v112) = 1148846080;
    [v111 &selRef_meterUnit];
    v113 = [v94 bottomAnchor];
    v114 = [v95 bottomAnchor];
    v115 = [v113 constraintEqualToAnchor:v114 constant:-v98];

    LODWORD(v116) = 1148846080;
    [v115 setPriority_];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14FE90;
    *(inited + 32) = v124;
    *(inited + 40) = v108;
    *(inited + 48) = v111;
    *(inited + 56) = v115;
    v118 = v111;

    v119 = objc_opt_self();
    *&v127[0] = v91;
    sub_20B8D9310(inited);
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v120 = sub_20C13CC54();

    [v119 activateConstraints_];

    return v43;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_20B7B6614(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v3 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v10 = sub_20C13CC74();

    v25[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v28, v13);

        ++v12;
        if (v14 == i)
        {
          v15 = v25[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v15 = MEMORY[0x277D84FA0];
LABEL_16:

    sub_20B8E9218(v15);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, v25);
        v20 = *&v4[v7];
        v21 = v26;
        v22 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*(v22 + 16))(v20, a2 & 1, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v19 += 40;
        --v18;
      }

      while (v18);
    }

    v6 = a1;
  }

  return [*&v4[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_floatingView] setControlState:v6 animated:a2 & 1];
}

id sub_20B7B6854(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v3 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v10 = sub_20C13CC74();

    v25[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v28, v13);

        ++v12;
        if (v14 == i)
        {
          v15 = v25[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v15 = MEMORY[0x277D84FA0];
LABEL_16:

    sub_20B8E9218(v15);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, v25);
        v20 = *&v4[v7];
        v21 = v26;
        v22 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*(v22 + 24))(v20, a2, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v19 += 40;
        --v18;
      }

      while (v18);
    }

    v6 = a1;
  }

  return [*&v4[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_floatingView] setControlState:v6 withAnimationCoordinator:a2];
}

void sub_20B7B6A94()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_itemInfo, &qword_27C762550, &unk_20C1505A0);
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_layout + 64);

  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_artworkView);
}

id sub_20B7B6B54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWorkoutPlanGalleryBrickCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVWorkoutPlanGalleryBrickCell(uint64_t a1)
{
  result = qword_27C765630;
  if (!qword_27C765630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7B6CA4(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_20B7B6D8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B7B6DD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_20B7B6E40(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B7B6E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20B7B6EF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B7B6F7C(unint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_artworkView];
  v4 = &v3[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_artwork];
  swift_beginAccess();
  v32[0] = *v4;
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  v7 = *(v4 + 3);
  v33 = *(v4 + 8);
  v32[2] = v6;
  v32[3] = v7;
  v32[1] = v5;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 8) = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  sub_20B520158(v32, &qword_27C765640, &unk_20C158F20);
  v8 = &v3[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  [v3 setNeedsDisplay];
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x48)
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v27[0] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27[1] = v9;
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x60);
    v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x50);
    v30 = v11;
    *v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x70);
    *&v31[9] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x79);
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x40);
    v27[2] = v10;
    v28 = v12;
    v23 = *(&v10 + 1);
    v13 = *&v1[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_titleLabel];
    sub_20B52F9E8(v27, v25, &qword_27C765648, &unk_20C15EEB0);
    v14 = sub_20C13C914();

    [v13 setText_];

    v15 = *&v1[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_subtitleLabel];
    v16 = sub_20C13C914();

    [v15 setText_];

    [*&v1[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_captionLabel] setAttributedText_];
    v25[0] = *v4;
    v17 = *(v4 + 1);
    v18 = *(v4 + 2);
    v19 = *(v4 + 3);
    v26 = *(v4 + 8);
    v25[2] = v18;
    v25[3] = v19;
    v25[1] = v17;
    v21 = v30;
    v20 = *v31;
    v22 = v29;
    *(v4 + 8) = *&v31[16];
    *(v4 + 2) = v21;
    *(v4 + 3) = v20;
    *(v4 + 1) = v22;
    *v4 = v28;
    sub_20B52F9E8(&v28, v24, &qword_27C765640, &unk_20C158F20);
    sub_20B520158(v25, &qword_27C765640, &unk_20C158F20);
    *v8 = 0u;
    *(v8 + 1) = 0u;
    [v3 setNeedsDisplay];
    [v1 setNeedsLayout];
    sub_20B520158(&v28, &qword_27C765640, &unk_20C158F20);
  }
}

double sub_20B7B721C@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v2 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  *a1 = xmmword_20C158E00;
  *(a1 + 16) = xmmword_20C158E10;
  *(a1 + 32) = xmmword_20C158E20;
  *(a1 + 48) = xmmword_20C158E30;
  *(a1 + 64) = v4;
  *(a1 + 72) = v6;
  result = 6.0;
  *(a1 + 80) = xmmword_20C158E40;
  *(a1 + 96) = xmmword_20C158E50;
  *(a1 + 112) = 0x4044000000000000;
  return result;
}

void sub_20B7B731C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_layout;
  sub_20B7B721C(v30);
  v5 = v30[5];
  *(v4 + 64) = v30[4];
  *(v4 + 80) = v5;
  *(v4 + 96) = v30[6];
  *(v4 + 112) = v31;
  v6 = v30[1];
  *v4 = v30[0];
  *(v4 + 16) = v6;
  v7 = v30[3];
  *(v4 + 32) = v30[2];
  *(v4 + 48) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v10 = objc_opt_self();
  v11 = [v10 smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v9 setFont_];

  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  [v9 setTextColor_];

  [v9 setLineBreakMode_];
  [v9 setNumberOfLines_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v8) = v9;
  v14 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_subtitleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16 = *MEMORY[0x277D76938];
  v17 = [v10 preferredFontForTextStyle_];
  [v15 setFont_];

  v18 = [v12 labelColor];
  [v15 setTextColor_];

  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v14) = v15;
  v19 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_captionLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v21 = [v10 preferredFontForTextStyle_];
  [v20 setFont_];

  v22 = [v12 secondaryLabelColor];
  [v20 setTextColor_];

  v23 = sub_20BD54D68();
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v19) = v23;
  v24 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_artworkView;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = 0;
  v25 = objc_allocWithZone(type metadata accessor for WorkoutPlanArtworkView());
  v26 = WorkoutPlanArtworkView.init(artwork:appearance:)(v28, &v27);
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v24) = v26;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B7B772C()
{
  sub_20B583E6C(v0 + 16);

  swift_unknownObjectRelease();

  sub_20B7B8DA0(v0 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_primaryAction);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SanitizingTextFieldPresenter(uint64_t a1)
{
  result = qword_27C765668;
  if (!qword_27C765668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B7B783C(uint64_t a1)
{
  result = type metadata accessor for PageAlertAction(319);
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

uint64_t sub_20B7B7914(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3 && (v4 = *(v2 + 96), *(v4 + 16)))
  {
    v22 = a1;
    v23 = a2;

    v6 = sub_20C13D984();
    v8 = v7;
    v10 = v9;
    v11 = v5;
    v12 = *(v4 + 16);
    if (v12)
    {
      v13 = v4 + 32;
      do
      {
        sub_20B51CC64(v13, &v22);
        v14 = v24;
        v15 = v25;
        __swift_project_boxed_opaque_existential_1(&v22, v24);
        v6 = (*(v15 + 8))(v6, v8, v10, v11, v14, v15);
        v8 = v16;
        v10 = v17;
        v19 = v18;

        __swift_destroy_boxed_opaque_existential_1(&v22);
        v13 += 40;
        v11 = v19;
        --v12;
      }

      while (v12);
    }

    else
    {
      v19 = v5;
    }

    v21 = MEMORY[0x20F2F4190](v6, v8, v10, v19);

    return v21;
  }

  else
  {
    v22 = a1;
    v23 = a2;

    return sub_20C13CB94();
  }
}

uint64_t sub_20B7B7A94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 ^ a1) >= 0x4000 && (v5 = *(v4 + 96), *(v5 + 16)))
  {
    v23 = a1;
    v24 = a2;
    v25 = a3;
    v26 = a4;
    sub_20B7B8CF0();

    v7 = sub_20C13D984();
    v9 = v8;
    v11 = v10;
    v12 = v6;
    v13 = *(v5 + 16);
    if (v13)
    {
      v14 = v5 + 32;
      do
      {
        sub_20B51CC64(v14, &v23);
        v15 = v26;
        v16 = v27;
        __swift_project_boxed_opaque_existential_1(&v23, v26);
        v7 = (*(v16 + 8))(v7, v9, v11, v12, v15, v16);
        v9 = v17;
        v11 = v18;
        v20 = v19;

        __swift_destroy_boxed_opaque_existential_1(&v23);
        v14 += 40;
        v12 = v20;
        --v13;
      }

      while (v13);
    }

    else
    {
      v20 = v6;
    }

    v22 = MEMORY[0x20F2F4190](v7, v9, v11, v20);

    return v22;
  }

  else
  {
    v23 = a1;
    v24 = a2;
    v25 = a3;
    v26 = a4;
    sub_20B7B8CF0();

    return sub_20C13CB94();
  }
}

uint64_t sub_20B7B7C20(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3 && (v4 = *(v2 + 112), *(v4 + 16)))
  {
    v22 = a1;
    v23 = a2;

    v6 = sub_20C13D984();
    v8 = v7;
    v10 = v9;
    v11 = v5;
    v12 = *(v4 + 16);
    if (v12)
    {
      v13 = v4 + 32;
      do
      {
        sub_20B51CC64(v13, &v22);
        v14 = v24;
        v15 = v25;
        __swift_project_boxed_opaque_existential_1(&v22, v24);
        v6 = (*(v15 + 8))(v6, v8, v10, v11, v14, v15);
        v8 = v16;
        v10 = v17;
        v19 = v18;

        __swift_destroy_boxed_opaque_existential_1(&v22);
        v13 += 40;
        v11 = v19;
        --v12;
      }

      while (v12);
    }

    else
    {
      v19 = v5;
    }

    v21 = MEMORY[0x20F2F4190](v6, v8, v10, v19);

    return v21;
  }

  else
  {
    v22 = a1;
    v23 = a2;

    return sub_20C13CB94();
  }
}

void sub_20B7B7DA0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_primaryAction;
  if ((sub_20C132EC4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v4 = type metadata accessor for PageAlertAction(0);
  if (*(a1 + *(v4 + 20)) != *(v3 + *(v4 + 20)))
  {
    goto LABEL_22;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (v3 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_20C13DFF4() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v9)
  {
    goto LABEL_22;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_22:
    v26 = (a1 + *(type metadata accessor for PageAlertAction(0) + 28));
    if (*v26)
    {
      (*v26)(a1);
    }

    return;
  }

  v12 = [Strong textFields];
  if (v12)
  {
    v13 = v12;
    sub_20B7B8B38();
    v14 = sub_20C13CC74();
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = sub_20BEF6A3C(v14);
  swift_unknownObjectRelease();

  v16 = *(v15 + 16);
  if (!v16)
  {

    goto LABEL_22;
  }

  v17 = *(v15 + 16 + 16 * v16 + 8);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v19 = (*(v17 + 16))(ObjectType, v17);
  v21 = v20;
  swift_unknownObjectRelease();
  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = *(v1 + 104);
  v23 = sub_20B7B7914(v19, v21);
  v25 = v24;

  v22(v23, v25);
}

void sub_20B7B7FA8(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_trimLeadingWhitespaceFilter) & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    v21 = a2;
    v4 = off_2822E16F0;
    type metadata accessor for PageAlertController();
    v5 = v4();
    swift_unknownObjectRelease();
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v22 = v2 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_primaryAction;
      v8 = (v5 + 40);
      do
      {
        if (v7 >= *(v5 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *v8;
        ObjectType = swift_getObjectType();
        v11 = *(v9 + 8);
        swift_unknownObjectRetain();
        v12 = v11(ObjectType, v9);
        v14 = v13;
        v15 = (v22 + *(type metadata accessor for PageAlertAction(0) + 24));
        v16 = v15[1];
        if (v14)
        {
          if (!v16)
          {
            swift_unknownObjectRelease();

            goto LABEL_7;
          }

          if (v12 == *v15 && v14 == v16)
          {

LABEL_22:

            v19 = swift_getObjectType();
            (*(v21 + 16))(v19);
            sub_20C13D964();
            sub_20B7B8B84();
            sub_20C13D054();

            sub_20B7B8BD8();
            v20 = sub_20C13DA54();

            (*(v9 + 24))((v20 & 1) == 0, ObjectType, v9);
            swift_unknownObjectRelease();
            return;
          }

          v18 = sub_20C13DFF4();

          if (v18)
          {
            goto LABEL_22;
          }
        }

        else if (!v16)
        {
          goto LABEL_22;
        }

        swift_unknownObjectRelease();
LABEL_7:
        ++v7;
        v8 += 2;
      }

      while (v6 != v7);
    }
  }
}

uint64_t sub_20B7B827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v7 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  v12 = (*(a2 + 16))(ObjectType, a2);
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v12;
  v15 = v13;
  v16 = sub_20C13D0B4();
  if (v18)
  {

LABEL_7:
    v19 = 1;
    return v19 & 1;
  }

  sub_20B7B84F0(v16, v17, a5, a6, v14, v15);
  v21 = sub_20C13D964();
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_trimLeadingWhitespaceFilter;
  if ((*(v6 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_trimLeadingWhitespaceFilter) & 1) == 0)
  {
    v40 = v21;
    v41 = v22;
    v42 = v23;
    v43 = v24;
    sub_20B7B8B84();
    sub_20C13D054();

    v25 = v44;
    v26 = v45;
    v27 = v46;
    v28 = v47;
  }

  sub_20B7B8BD8();
  if (sub_20C13DA54())
  {
  }

  else
  {
    v30 = sub_20C13D964();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    if ((*(v6 + v29) & 1) == 0)
    {
      sub_20B7B8B84();
      sub_20C13D054();

      v30 = v40;
      v32 = v41;
      v34 = v42;
      v36 = v43;
    }

    v37 = sub_20B7B8804(v25, v26, v27, v28, v30, v32, v34, v36);

    if ((v37 & 1) == 0)
    {
      v38 = sub_20B7B7A94(v25, v26, v27, v28);
      v19 = sub_20B7B8C78(v25, v26, v27, v28, v38, v39);

      return v19 & 1;
    }
  }

  v19 = 0;
  return v19 & 1;
}

void sub_20B7B84F0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_20C13D984();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_20C13D984();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v16 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  v18 = a1;
  if ((a1 & 0xC) == 4 << v16)
  {
    v18 = sub_20C0B6BD0(a1, a5, a6);
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v19 = v18 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v20 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v21 = (v20 << 16) | 7;
    LOBYTE(v22) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v20 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 < v18 >> 16)
  {
    goto LABEL_42;
  }

  v19 = sub_20C13CB04();
  v30 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v30 = 7;
  }

  v21 = v30 | (v20 << 16);
  v22 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  v23 = a2;
  if ((a2 & 0xC) == 4 << v22)
  {
    v31 = v21;
    v23 = sub_20C0B6BD0(a2, a5, a6);
    v21 = v31;
  }

  if ((v21 & 0xC) == v17)
  {
    v32 = v23;
    v21 = sub_20C0B6BD0(v21, a5, a6);
    v23 = v32;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      v24 = (v21 >> 16) - (v23 >> 16);
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

  if (v20 < v23 >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v20 >= v21 >> 16)
  {
    v24 = sub_20C13CB04();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(a4) & 0xF;
        v27 = __OFADD__(v19, v26);
        v25 = v19 + v26;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = v19 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v19, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v33 = v24;
    v34 = sub_20C13CAD4();
    v24 = v33;
    v27 = __OFADD__(v19, v34);
    v25 = v19 + v34;
    if (!v27)
    {
LABEL_21:
      v27 = __OFADD__(v25, v24);
      v28 = v25 + v24;
      if (!v27)
      {
        MEMORY[0x20F2F41B0](v28);
LABEL_23:
        sub_20C13CBA4();
        sub_20B7B8CF0();
        sub_20C13CAB4();

        sub_20C13CAB4();
        sub_20B7B8C2C(a2, a5, a6, v29);
        sub_20C13CAB4();

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

uint64_t sub_20B7B8804(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_20C13DF94() & 1;
  }
}

void sub_20B7B8884(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v22 = a2;
  v5 = off_2822E16F0;
  type metadata accessor for PageAlertController();
  v23 = v4;
  v6 = v5();
  v7 = v6;
  v8 = *(v6 + 16);
  if (!v8)
  {
LABEL_17:
    swift_unknownObjectRelease();

    return;
  }

  v9 = 0;
  v25 = v24 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_primaryAction;
  v10 = (v6 + 40);
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      return;
    }

    v11 = *v10;
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 8);
    swift_unknownObjectRetain();
    v14 = v13(ObjectType, v11);
    v16 = v15;
    v17 = (v25 + *(type metadata accessor for PageAlertAction(0) + 24));
    v18 = v17[1];
    if (v16)
    {
      break;
    }

    if (!v18)
    {
      goto LABEL_19;
    }

LABEL_5:
    swift_unknownObjectRelease();
LABEL_6:
    ++v9;
    v10 += 2;
    if (v8 == v9)
    {
      goto LABEL_17;
    }
  }

  if (!v18)
  {
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  if (v14 != *v17 || v16 != v18)
  {
    v20 = sub_20C13DFF4();

    if (v20)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

LABEL_19:

  if ((*(v11 + 16))(ObjectType, v11))
  {
    v21 = swift_getObjectType();
    (*(v22 + 64))(v21);
    [v23 dismissViewControllerAnimated:1 completion:0];
    sub_20B7B7DA0(v25);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

unint64_t sub_20B7B8B38()
{
  result = qword_27C765680;
  if (!qword_27C765680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C765680);
  }

  return result;
}

unint64_t sub_20B7B8B84()
{
  result = qword_27C765688;
  if (!qword_27C765688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765688);
  }

  return result;
}

unint64_t sub_20B7B8BD8()
{
  result = qword_27C765690;
  if (!qword_27C765690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765690);
  }

  return result;
}

unint64_t sub_20B7B8C2C(unint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v4 >= result >> 14)
  {
    return sub_20C13CBA4();
  }

  __break(1u);
  return result;
}

uint64_t sub_20B7B8C78(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_20C13DF94() & 1;
  }
}

unint64_t sub_20B7B8CF0()
{
  result = qword_27C765698;
  if (!qword_27C765698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765698);
  }

  return result;
}

uint64_t sub_20B7B8DA0(uint64_t a1)
{
  v2 = type metadata accessor for PageAlertAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B7B8E0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x74536E497473616CLL;
  v4 = 0xEB000000006B6361;
  if (v2 != 1)
  {
    v3 = 0x7478654E7075;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x74536E497473616CLL;
  v8 = 0xEB000000006B6361;
  if (*a2 != 1)
  {
    v7 = 0x7478654E7075;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20C13DFF4();
  }

  return v11 & 1;
}

uint64_t sub_20B7B8F18()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

double sub_20B7B8FC0(uint64_t a1)
{
  sub_20C13CA64();

  return result;
}

uint64_t sub_20B7B9054(uint64_t a1)
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

unint64_t sub_20B7B90F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20B7B91E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20B7B9128(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB000000006B6361;
  v5 = 0x74536E497473616CLL;
  if (v2 != 1)
  {
    v5 = 0x7478654E7075;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_20B7B9190()
{
  result = qword_27C7656A0;
  if (!qword_27C7656A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7656A0);
  }

  return result;
}

unint64_t sub_20B7B91E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

double sub_20B7B9230()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();

  return v1;
}

char *sub_20B7B92A4(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7657A0, &unk_20C1592D0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v72 - v11;
  *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_progress] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansion] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_scale] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_glow] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInset] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_summaryInset] = 0;
  v13 = &v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseAnimation];
  *v13 = 0;
  v13[1] = 0;
  v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_displayMode] = 0;
  v14 = OBJC_IVAR____TtC9SeymourUI7BurnBar_visibleBars;
  *&v4[v14] = sub_20BE8D5A0(&unk_28228D280);
  v15 = OBJC_IVAR____TtC9SeymourUI7BurnBar__circleCenterX;
  v74 = 0;
  sub_20C13C124();
  (*(v10 + 32))(&v4[v15], v12, v9);
  v16 = OBJC_IVAR____TtC9SeymourUI7BurnBar_barGradient;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for BurnBarGradientContainer()) initWithFrame_];
  v17 = OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseGradient;
  *&v4[v17] = [objc_allocWithZone(type metadata accessor for BurnBarPulseGradientContainer()) initWithFrame_];
  v18 = OBJC_IVAR____TtC9SeymourUI7BurnBar_barLayer;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v19 = OBJC_IVAR____TtC9SeymourUI7BurnBar_outerBarLayer;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v20 = OBJC_IVAR____TtC9SeymourUI7BurnBar_glowDodgeLayer;
  *&v4[v20] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v21 = OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter;
  *&v4[v21] = [objc_allocWithZone(type metadata accessor for BurnBarModalityIconPlatter()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseRate] = 0x3FB999999999999ALL;
  v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_state] = 1;
  v22 = OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseAnimator;
  type metadata accessor for PulseAnimator();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 72) = 5;
  *(v23 + 80) = 0;
  *(v23 + 88) = 0;
  *(v23 + 96) = 0;
  *(v23 + 112) = 0;
  *(v23 + 120) = 0;
  *(v23 + 104) = 0x300000000;
  *(v23 + 128) = 0;
  *(v23 + 136) = MEMORY[0x277D84F90];
  *(v23 + 144) = 0;
  *&v4[v22] = v23;
  v24 = OBJC_IVAR____TtC9SeymourUI7BurnBar_animator;
  type metadata accessor for SpringAnimator();
  v25 = swift_allocObject();
  v25[3] = 0;
  swift_unknownObjectWeakInit();
  v25[4] = 0;
  v25[5] = 0;
  v25[6] = MEMORY[0x277D84F98];
  *&v4[v24] = v25;
  v26 = &v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey];
  *v26 = 0x73736572676F7270;
  v26[1] = 0xE800000000000000;
  v27 = &v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansionKey];
  *v27 = 0x6F69736E61707865;
  v27[1] = 0xE90000000000006ELL;
  v28 = &v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_scaleKey];
  *v28 = 0x656C616373;
  v28[1] = 0xE500000000000000;
  v29 = &v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_glowKey];
  *v29 = 2003790951;
  v29[1] = 0xE400000000000000;
  v30 = &v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey];
  *v30 = 0x736E497468676972;
  v30[1] = 0xEA00000000007465;
  v31 = &v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey];
  *v31 = 0x65736E497466656CLL;
  v31[1] = 0xE900000000000074;
  v32 = type metadata accessor for BurnBar(0);
  v73.receiver = v4;
  v73.super_class = v32;
  v33 = objc_msgSendSuper2(&v73, sel_initWithFrame_, a1, a2, a3, a4);
  v34 = *&v33[OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseAnimator];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = *(v34 + 24);
  v37 = *(v34 + 32);
  *(v34 + 24) = sub_20B7BBDA0;
  *(v34 + 32) = v35;
  v38 = v33;

  sub_20B583ECC(v36, v37);

  *(*&v38[OBJC_IVAR____TtC9SeymourUI7BurnBar_animator] + 24) = &off_2822A6D20;
  swift_unknownObjectWeakAssign();
  v39 = [v38 layer];
  v40 = OBJC_IVAR____TtC9SeymourUI7BurnBar_outerBarLayer;
  [v39 addSublayer_];

  v41 = *&v38[v40];
  v42 = objc_opt_self();
  v43 = v41;
  v44 = [v42 whiteColor];
  v45 = [v44 colorWithAlphaComponent_];

  v46 = [v45 CGColor];
  [v43 setFillColor_];

  v47 = [v38 layer];
  v48 = OBJC_IVAR____TtC9SeymourUI7BurnBar_barLayer;
  [v47 addSublayer_];

  v49 = *&v38[v48];
  v50 = [v42 systemPinkColor];
  v51 = [v50 CGColor];

  [v49 setFillColor_];
  v52 = *&v38[v48];
  v53 = [v42 systemPinkColor];
  v54 = [v53 CGColor];

  [v52 setShadowColor_];
  [*&v38[v48] setShadowRadius_];
  [*&v38[v48] setShadowOpacity_];
  [*&v38[v48] setShadowOffset_];
  v55 = OBJC_IVAR____TtC9SeymourUI7BurnBar_barGradient;
  [v38 addSubview_];
  v56 = [*&v38[v55] layer];
  v57 = objc_opt_self();
  v58 = [v57 kCAFilterSourceAtop];
  if (!v58)
  {
    sub_20C13C954();
    v58 = sub_20C13C914();
  }

  [v56 setCompositingFilter_];

  v59 = *&v38[v55];
  sub_20C07D8CC(0, 0.0);

  v60 = OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseGradient;
  [v38 addSubview_];
  v61 = [*&v38[v60] layer];
  v62 = [v57 kCAFilterSourceAtop];
  if (!v62)
  {
    sub_20C13C954();
    v62 = sub_20C13C914();
  }

  [v61 setCompositingFilter_];

  v63 = *&v38[v60];
  sub_20BA7EF54(0, 0.0);

  [v38 addSubview_];
  v64 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.945098039 green:0.243137255 blue:0.364705882 alpha:0.4];
  v65 = OBJC_IVAR____TtC9SeymourUI7BurnBar_glowDodgeLayer;
  v66 = *&v38[OBJC_IVAR____TtC9SeymourUI7BurnBar_glowDodgeLayer];
  v67 = [v64 CGColor];
  [v66 setFillColor_];

  v68 = *&v38[v65];
  v69 = sub_20C13C914();
  [v68 setCompositingFilter_];

  v70 = [v38 layer];
  [v70 addSublayer_];

  return v38;
}

void sub_20B7B9BFC(uint64_t a1, float a2, float a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = &Strong[OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseAnimation];
    *v6 = a2;
    v6[1] = a3;
    v7 = Strong;
    [Strong setNeedsLayout];
  }
}

id sub_20B7B9CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24.receiver = v3;
  v24.super_class = type metadata accessor for BurnBar(0);
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  CGAffineTransformMakeScale(&v23, *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_scale], *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_scale]);
  [v3 setTransform_];
  [v3 bounds];
  sub_20B7BA038(v4, v5, v6, v7);
  sub_20B7BA120();
  v8 = &v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseAnimation];
  v9 = *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseAnimation + 8];
  [v3 bounds];
  v10 = v9 * CGRectGetWidth(v25);
  [v3 bounds];
  v11 = v10 + CGRectGetWidth(v26) * -0.5;
  v12 = *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseGradient];
  [v12 setAlpha_];
  [v3 bounds];
  Width = CGRectGetWidth(v27);
  [v3 bounds];
  [v12 setFrame_];
  [v3 bounds];
  sub_20B7BA200(1, v14, v15, v16, v17);
  [v3 bounds];
  sub_20B7BA200(0, v18, v19, v20, v21);
  return sub_20B7B9E88();
}

id sub_20B7B9E88()
{
  [v0 bounds];
  v2 = v1 * 0.162162162;
  v3 = v1 * 0.243243243;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansion];
  v5 = v1 * v4;
  v6 = v2 + v4 * (v3 - v2) - (v2 * 0.625 + v4 * (v3 * 0.625 - v2 * 0.625));
  v7 = v5 + 0.0 + v6 * -0.5 + v6 * -0.5;
  if (v5 < v7)
  {
    v7 = v5 + 0.0;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7 * 0.6;
  v9 = objc_opt_self();
  [v9 begin];
  [v9 setDisableActions_];
  v10 = *&v0[OBJC_IVAR____TtC9SeymourUI7BurnBar_barLayer];
  [v10 setShadowRadius_];
  if (v8 >= 0.001)
  {
    v11 = OBJC_IVAR____TtC9SeymourUI7BurnBar_glow;
    v12 = *&v0[OBJC_IVAR____TtC9SeymourUI7BurnBar_glow];
    *&v12 = v12;
    [v10 setShadowOpacity_];
    v13 = *&v0[v11];
    *&v13 = v13;
    [*&v0[OBJC_IVAR____TtC9SeymourUI7BurnBar_glowDodgeLayer] setOpacity_];
  }

  else
  {
    [v10 setShadowOpacity_];
    [*&v0[OBJC_IVAR____TtC9SeymourUI7BurnBar_glowDodgeLayer] setOpacity_];
  }

  return [v9 commit];
}

id sub_20B7BA038(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC9SeymourUI7BurnBar_expansion);
  v6 = 0.0;
  v7 = v5 * a4 + 0.0;
  v8 = (a4 * 0.162162162 + (a4 * 0.243243243 - a4 * 0.162162162) * v5 - (a4 * 0.162162162 * 0.625 + (a4 * 0.243243243 * 0.625 - a4 * 0.162162162 * 0.625) * v5)) * 0.5;
  v9 = v7 - (v8 + v8);
  if (v5 * a4 < v9)
  {
    v9 = v5 * a4 + 0.0;
  }

  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = v7 * 0.5;
  if (!*(v4 + OBJC_IVAR____TtC9SeymourUI7BurnBar_displayMode))
  {
    v6 = v10;
  }

  return [*(v4 + OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter) setFrame_];
}

id sub_20B7BA120()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI7BurnBar_barGradient];
  [v0 bounds];
  [v1 setFrame_];
  [v0 bounds];
  v2 = CGRectGetWidth(v9) * 0.5;
  [*&v0[OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter] frame];
  sub_20C13D4E4();
  v4 = v2 - v3;
  [v0 bounds];
  Width = CGRectGetWidth(v10);
  [v0 bounds];
  Height = CGRectGetHeight(v11);

  return [v1 setBounds_];
}

void sub_20B7BA200(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = &OBJC_IVAR____TtC9SeymourUI7BurnBar_outerBarLayer;
  v13 = a1 & 1;
  if ((a1 & 1) == 0)
  {
    v12 = &OBJC_IVAR____TtC9SeymourUI7BurnBar_barLayer;
  }

  v14 = *&v5[*v12];
  [v14 setFrame_];
  [v14 setHidden_];
  swift_beginAccess();
  if ((sub_20B8DD11C() & 1) == 0)
  {
    [v14 setHidden_];
    goto LABEL_45;
  }

  v15 = a5 * 0.162162162;
  v16 = a5 * 0.243243243;
  v111.origin.x = a2;
  v111.origin.y = a3;
  v111.size.width = a4;
  v111.size.height = a5;
  CGRectGetWidth(v111);
  v17 = OBJC_IVAR____TtC9SeymourUI7BurnBar_expansion;
  v18 = OBJC_IVAR____TtC9SeymourUI7BurnBar_displayMode;
  v19 = 0.0;
  if (v6[OBJC_IVAR____TtC9SeymourUI7BurnBar_displayMode] == 1)
  {
    if ((a1 & 1) == 0)
    {
      v19 = *&v6[OBJC_IVAR____TtC9SeymourUI7BurnBar_summaryInset];
      v15 = v15 * 0.625;
      v16 = v16 * 0.625;
      v107 = v19;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (a1)
  {
LABEL_9:
    v107 = 0.0;
    goto LABEL_16;
  }

  v20 = *&v6[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansion];
  v21 = v15 + (v16 - v15) * v20;
  v15 = v15 * 0.625;
  v16 = v16 * 0.625;
  v22 = v20 * a5;
  v23 = v20 * a5 + 0.0;
  v24 = (v21 - (v15 + (v16 - v15) * v20)) * 0.5;
  if (v22 >= v23 - (v24 + v24))
  {
    v25 = v23 - (v24 + v24);
  }

  else
  {
    v25 = v23;
  }

  if (v25 < 0.0)
  {
    v25 = 0.0;
  }

  v26 = v25 + v25 * 0.35;
  v107 = v24 + v26 * *&v6[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInset];
  v19 = v24 + v26 * *&v6[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset];
LABEL_16:
  v112.origin.x = a2;
  v112.origin.y = a3;
  v112.size.width = a4;
  v112.size.height = a5;
  Width = CGRectGetWidth(v112);
  v28 = *&v6[v17];
  v29 = v15 + (v16 - v15) * v28;
  v105 = sub_20B84A068(v13, v28);
  v30 = v105 * 0.5;
  if (v6[v18])
  {
    v31 = 0.0;
  }

  else
  {
    v31 = (v28 * a5 + 0.0) * 0.5;
  }

  v32 = *&v6[OBJC_IVAR____TtC9SeymourUI7BurnBar_progress] * (a4 - v31 - v31);
  if (!v13)
  {
    sub_20C07D8CC(0, v30);
    sub_20BA7EF54(0, v30);
  }

  v110 = v105 * 0.5;
  v33 = Width - v19;
  v34 = v29 * 0.5;
  v35 = v31 + v32;
  v36 = a5 * 0.5;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v6;
    sub_20C13C154();
  }

  v38 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v38 moveToPoint_];
  [v38 addArcWithCenter:1 radius:v107 + v34 startAngle:v36 endAngle:v34 clockwise:{3.14159265, 4.71238898}];
  [v38 currentPoint];
  v101 = v39;
  v96 = v40;
  v109 = v35;
  v41 = v33;
  v42 = v33 - v34;
  v95 = v36 - v34;
  [v38 addLineToPoint_];
  [v38 currentPoint];
  v102 = v43;
  v97 = v44;
  v45 = v42;
  v46 = v109;
  [v38 addArcWithCenter:1 radius:v45 startAngle:v36 endAngle:v34 clockwise:{4.71238898, 1.57079633}];
  [v38 currentPoint];
  v103 = v47;
  v99 = v48;
  v98 = v36 + v34;
  [v38 addLineToPoint_];
  [v38 currentPoint];
  v104 = v49;
  v100 = v50;
  [v38 addArcWithCenter:1 radius:v107 + v34 startAngle:v36 endAngle:v34 clockwise:{1.57079633, 3.14159265}];
  v51 = v105 * 0.5;
  v52 = v109 - v110;
  [v38 moveToPoint_];
  [v38 addArcWithCenter:1 radius:v109 startAngle:v36 endAngle:v110 clockwise:3.14159265];
  v53 = v105 - v29;
  if (a1)
  {
    if (v53 <= 0.001)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v41 < v52)
    {
      goto LABEL_42;
    }

    if (v53 <= 0.001)
    {
      goto LABEL_42;
    }

    v53 = v110 + v109;
    if (v110 + v109 < v107)
    {
      goto LABEL_42;
    }
  }

  v54 = v110 + v34;
  v55 = sqrt(v110 * v110 * 4.0 - v54 * v54);
  v92 = asin((v110 + v34) / (v110 + v110));
  v93 = v110 + v34;
  v56 = v109 - v55;
  v57 = v36 - v54;
  v58 = v55 + v109;
  v59 = v109;
  v94 = v58;
  v106 = v56;
  v108 = 1.57079633 - v92;
  v91 = v57;
  if (v56 >= v101)
  {
    [v38 moveToPoint_];
    [v38 addArcWithCenter:0 radius:v56 startAngle:v57 endAngle:v110 clockwise:{1.57079633, 1.57079633 - (1.57079633 - v92)}];
    v64 = __sincos_stret(v92);
    v61 = v110 * v64.__cosval;
    v63 = v110 * v64.__sinval;
    v62 = v36 - v110 * v64.__sinval;
  }

  else
  {
    [v38 moveToPoint_];
    v60 = __sincos_stret(v92);
    v61 = v110 * v60.__cosval;
    v62 = v36 - v110 * v60.__sinval;
    v59 = v109;
    v63 = v110 * v60.__sinval;
    [v38 addQuadCurveToPoint:v109 - v110 * v60.__cosval controlPoint:{v62, v101 + (v109 - v110 * v60.__cosval - v101) * 0.85, v96 + (v62 - v96) * 0.19}];
  }

  [v38 addLineToPoint_];
  if (v102 >= v94)
  {
    sub_20C1383B4();
    [v38 addArcWithCenter:0 radius:v94 startAngle:v91 endAngle:v110 clockwise:{v108 + 1.57079633, v67}];
  }

  else
  {
    [v38 currentPoint];
    [v38 addQuadCurveToPoint:v102 controlPoint:{v97, v65 + (v102 - v65) * 0.15, v66 + (v97 - v66) * 0.81}];
  }

  v68 = v36 + v93;
  if (v103 >= v94)
  {
    [v38 addLineToPoint_];
    sub_20C1383B4();
    v73 = v72;
    sub_20C1383B4();
    v71 = 1.57079633 - v92;
    v51 = v110;
    [v38 addArcWithCenter:0 radius:v94 startAngle:v68 endAngle:v110 clockwise:{v73, v74 - v108}];
    v69 = v36 + v63;
    v46 = v109;
    v70 = v104;
  }

  else
  {
    [v38 addLineToPoint_];
    v69 = v36 + v63;
    [v38 addQuadCurveToPoint:v59 + v61 controlPoint:{v36 + v63, v103 + (v59 + v61 - v103) * 0.85, v99 + (v36 + v63 - v99) * 0.19}];
    v46 = v109;
    v51 = v110;
    v70 = v104;
    v71 = 1.57079633 - v92;
  }

  [v38 addLineToPoint_];
  if (v106 >= v70)
  {
    sub_20C1383B4();
    v78 = v71 + v77;
    sub_20C1383B4();
    [v38 addArcWithCenter:0 radius:v106 startAngle:v68 endAngle:v51 clockwise:{v78, v79}];
  }

  else
  {
    [v38 currentPoint];
    [v38 addQuadCurveToPoint:v70 controlPoint:{v100, v75 + (v70 - v75) * 0.15, v76 + (v100 - v76) * 0.81}];
  }

  v52 = v109 - v110;
LABEL_42:
  v80 = &selRef_setHidesWhenStopped_;
  if (!v13)
  {
    v81 = [v38 CGPath];
    v82 = objc_opt_self();
    v83 = [v82 bezierPathWithCGPath_];

    [v83 moveToPoint_];
    [v83 addArcWithCenter:1 radius:v46 startAngle:v36 endAngle:v51 * 0.85 clockwise:{3.14159265, 9.42477796}];
    v84 = objc_opt_self();
    [v84 begin];
    [v84 setDisableActions_];
    v85 = [v83 CGPath];
    [v14 setShadowPath_];

    [v84 commit];
    v86 = [v38 CGPath];
    v87 = [v82 bezierPathWithCGPath_];

    [v87 moveToPoint_];
    [v87 addArcWithCenter:1 radius:v46 startAngle:v36 endAngle:v51 clockwise:{3.14159265, 9.42477796}];
    [v84 begin];
    v80 = &selRef_setHidesWhenStopped_;
    [v84 setDisableActions_];
    v88 = *&v6[OBJC_IVAR____TtC9SeymourUI7BurnBar_glowDodgeLayer];
    v89 = [v87 CGPath];
    [v88 setPath_];

    [v84 commit];
  }

  v90 = [v38 CGPath];
  [v14 v80[20]];

  v14 = v90;
LABEL_45:
}

void sub_20B7BACF4(char a1, char a2, double a3, double a4)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        v7 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey];
        v8 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey + 8];
        v9 = OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset;
        v10 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset];
        v11 = 0.0;
LABEL_9:
        sub_20B7BAFD0(v7, v8, v11, v10, a3, a4);
        v13 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey];
        v14 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey + 8];
        v15 = *&v4[v9];
        v16 = 0.0;
        goto LABEL_10;
      }

      v17 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey];
      v18 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey + 8];

      v19 = v17;
      v20 = v4;
      sub_20BBB5E14(v19, v18);

      *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset] = 0;
    }

    else
    {
      if (a2)
      {
        v7 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey];
        v8 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey + 8];
        v9 = OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset;
        v10 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset];
        v11 = 1.0;
        goto LABEL_9;
      }

      v26 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey];
      v27 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey + 8];

      v28 = v26;
      v20 = v4;
      sub_20BBB5E14(v28, v27);

      *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset] = 0x3FF0000000000000;
    }

    [v20 setNeedsLayout];
    v29 = *&v20[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey];
    v30 = *&v20[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey + 8];

    sub_20BBB5E14(v29, v30);

    *&v20[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInset] = 0;
  }

  else
  {
    if (a2)
    {
      v12 = OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset;
      sub_20B7BAFD0(*&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey], *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey + 8], 0.0, *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset], a3, a4);
      v13 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey];
      v14 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey + 8];
      v15 = *&v4[v12];
      v16 = 1.0;
LABEL_10:

      sub_20B7BAFD0(v13, v14, v16, v15, a3, a4);
      return;
    }

    v21 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey];
    v22 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey + 8];

    v23 = v21;
    v20 = v4;
    sub_20BBB5E14(v23, v22);

    *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset] = 0;
    [v4 setNeedsLayout];
    v24 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey];
    v25 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey + 8];

    sub_20BBB5E14(v24, v25);

    *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInset] = 0x3FF0000000000000;
  }

  [v20 setNeedsLayout];
}

void sub_20B7BAFD0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = OBJC_IVAR____TtC9SeymourUI7BurnBar_animator;
  v15 = *(v6 + OBJC_IVAR____TtC9SeymourUI7BurnBar_animator);
  swift_beginAccess();
  v16 = *(v15 + 48);
  if (!*(v16 + 16))
  {
    goto LABEL_6;
  }

  v17 = sub_20B65AA60(a1, a2);
  if ((v18 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for SpringAnimation();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = a4;
    *(v20 + 40) = 0;
    *(v20 + 48) = a5;
    *(v20 + 56) = a6;
    *(v20 + 64) = a3;
    *(v20 + 72) = 1;
    v21 = *(v7 + v14);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v21 + 48);
    *(v21 + 48) = 0x8000000000000000;
    sub_20B91DB58(v20, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v21 + 48) = v23;
    swift_endAccess();

    sub_20BBB5ED8();
    goto LABEL_7;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  if (*(v19 + 72) == 1)
  {
    *(v19 + 64) = a3;
    *(v19 + 72) = 1;

    sub_20BBB5ED8();
LABEL_7:

    return;
  }

  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000028, 0x800000020C1999F0);
  type metadata accessor for SpringAnimation();
  sub_20C13DDF4();
  sub_20C13DE24();
  __break(1u);
}

void sub_20B7BB254()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseAnimator);
  v2 = *(v1 + 144);

  [v2 invalidate];
  v3 = *(v1 + 144);
  *(v1 + 144) = 0;

  v4 = *(*(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter) + OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView);
  v5 = [v4 layer];
  v6 = sub_20C13C914();
  [v5 removeAnimationForKey_];
}

id sub_20B7BB340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for BurnBar(0);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for BurnBar(uint64_t a1)
{
  result = qword_27C765778;
  if (!qword_27C765778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7BB54C(uint64_t a1)
{
  sub_20B7BB664();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B7BB664()
{
  if (!qword_27C765788)
  {
    v0 = sub_20C13C164();
    if (!v1)
    {
      atomic_store(v0, &qword_27C765788);
    }
  }
}

unint64_t sub_20B7BB6D8()
{
  result = qword_27C765790;
  if (!qword_27C765790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765790);
  }

  return result;
}

unint64_t sub_20B7BB730()
{
  result = qword_27C765798;
  if (!qword_27C765798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765798);
  }

  return result;
}

void sub_20B7BB784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7657A0, &unk_20C1592D0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - v3;
  *(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_progress) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_expansion) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_scale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_glow) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_summaryInset) = 0;
  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseAnimation);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_displayMode) = 0;
  v6 = OBJC_IVAR____TtC9SeymourUI7BurnBar_visibleBars;
  *(v0 + v6) = sub_20BE8D5A0(&unk_28228D2A8);
  v7 = OBJC_IVAR____TtC9SeymourUI7BurnBar__circleCenterX;
  v24[1] = 0;
  sub_20C13C124();
  (*(v2 + 32))(v0 + v7, v4, v1);
  v8 = OBJC_IVAR____TtC9SeymourUI7BurnBar_barGradient;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for BurnBarGradientContainer()) initWithFrame_];
  v9 = OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseGradient;
  *(v0 + v9) = [objc_allocWithZone(type metadata accessor for BurnBarPulseGradientContainer()) initWithFrame_];
  v10 = OBJC_IVAR____TtC9SeymourUI7BurnBar_barLayer;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v11 = OBJC_IVAR____TtC9SeymourUI7BurnBar_outerBarLayer;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v12 = OBJC_IVAR____TtC9SeymourUI7BurnBar_glowDodgeLayer;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v13 = OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter;
  *(v0 + v13) = [objc_allocWithZone(type metadata accessor for BurnBarModalityIconPlatter()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseRate) = 0x3FB999999999999ALL;
  *(v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_state) = 1;
  v14 = OBJC_IVAR____TtC9SeymourUI7BurnBar_pulseAnimator;
  type metadata accessor for PulseAnimator();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 5;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 96) = 0;
  *(v15 + 112) = 0;
  *(v15 + 120) = 0;
  *(v15 + 104) = 0x300000000;
  *(v15 + 128) = 0;
  *(v15 + 136) = MEMORY[0x277D84F90];
  *(v15 + 144) = 0;
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI7BurnBar_animator;
  type metadata accessor for SpringAnimator();
  v17 = swift_allocObject();
  v17[3] = 0;
  swift_unknownObjectWeakInit();
  v17[4] = 0;
  v17[5] = 0;
  v17[6] = MEMORY[0x277D84F98];
  *(v0 + v16) = v17;
  v18 = (v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey);
  *v18 = 0x73736572676F7270;
  v18[1] = 0xE800000000000000;
  v19 = (v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_expansionKey);
  *v19 = 0x6F69736E61707865;
  v19[1] = 0xE90000000000006ELL;
  v20 = (v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_scaleKey);
  *v20 = 0x656C616373;
  v20[1] = 0xE500000000000000;
  v21 = (v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_glowKey);
  *v21 = 2003790951;
  v21[1] = 0xE400000000000000;
  v22 = (v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey);
  *v22 = 0x736E497468676972;
  v22[1] = 0xEA00000000007465;
  v23 = (v0 + OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey);
  *v23 = 0x65736E497466656CLL;
  v23[1] = 0xE900000000000074;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B7BBBC8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey] == a1 && *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey + 8] == a2;
  if (v5 || (sub_20C13DFF4() & 1) != 0)
  {
    v8 = &OBJC_IVAR____TtC9SeymourUI7BurnBar_progress;
LABEL_7:
    *&v3[*v8] = a3;

    return [v3 setNeedsLayout];
  }

  v10 = *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansionKey] == a1 && *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansionKey + 8] == a2;
  if (v10 || (sub_20C13DFF4() & 1) != 0)
  {
    v8 = &OBJC_IVAR____TtC9SeymourUI7BurnBar_expansion;
    goto LABEL_7;
  }

  v11 = *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_scaleKey] == a1 && *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_scaleKey + 8] == a2;
  if (v11 || (sub_20C13DFF4() & 1) != 0)
  {
    v8 = &OBJC_IVAR____TtC9SeymourUI7BurnBar_scale;
    goto LABEL_7;
  }

  if (*&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_glowKey] == a1 && *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_glowKey + 8] == a2 || (sub_20C13DFF4() & 1) != 0)
  {
    v8 = &OBJC_IVAR____TtC9SeymourUI7BurnBar_glow;
    goto LABEL_7;
  }

  if (*&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey] == a1 && *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInsetKey + 8] == a2 || (sub_20C13DFF4() & 1) != 0)
  {
    v8 = &OBJC_IVAR____TtC9SeymourUI7BurnBar_rightInset;
    goto LABEL_7;
  }

  if (*&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey] == a1 && *&v3[OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInsetKey + 8] == a2 || (result = sub_20C13DFF4(), (result & 1) != 0))
  {
    v8 = &OBJC_IVAR____TtC9SeymourUI7BurnBar_leftInset;
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20B7BBDA8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v108 = a3;
  v4 = sub_20C136594();
  v99 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C137C24();
  v104 = *(v7 - 8);
  v105 = v7;
  MEMORY[0x28223BE20](v7);
  v103 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C136CD4();
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C134E44();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C134014();
  v102 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RootShowcaseItem(0);
  v106 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (a1 >> 57) & 0x78 | a1 & 7;
  switch(v21)
  {
    case '""':
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F20, &qword_20C152E18);
      v98 = a1;
      v54 = swift_projectBox();
      v55 = *v54;
      v100 = *(v54 + 1);
      v101 = v55;
      LODWORD(v102) = v54[v53[16]];
      v56 = v53[12];
      v57 = &v54[v53[20]];
      v58 = *v57;
      v59 = *(v57 + 1);
      v60 = *(v57 + 2);
      v61 = *(v57 + 4);
      v99 = *(v57 + 5);
      v62 = v104;
      (*(v104 + 16))(v103, &v54[v56], v105);

      v63 = v58;
      v64 = v59;
      v65 = v60;

      v66 = [v63 string];
      v67 = sub_20C13C954();
      v96 = v68;
      v97 = v67;

      v69 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v70 = v64;
      v71 = v65;
      v72 = [v69 init];

      v73 = v18[9];
      v74 = v105;
      (*(v62 + 32))(&v20[v73], v103, v105);
      (*(v62 + 56))(&v20[v73], 0, 1, v74);

      v20[16] = 1;
      v75 = v100;
      *v20 = v101;
      *(v20 + 1) = v75;
      *(v20 + 24) = xmmword_20C14F2B0;
      v20[40] = 1;
      v20[v18[12]] = v102;
      v76 = v96;
      *(v20 + 6) = v97;
      *(v20 + 7) = v76;
      *(v20 + 9) = 0;
      *(v20 + 10) = 0;
      *(v20 + 8) = 0;
      *(v20 + 44) = 513;
      *(v20 + 12) = v70;
      *(v20 + 13) = v71;
      *(v20 + 14) = v72;
      *(v20 + 15) = v61;
      v44 = MEMORY[0x277D84F90];
      v45 = v99;
      goto LABEL_7;
    case '!':
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28, &unk_20C1713B0);
      v47 = swift_projectBox();
      v48 = *(v47 + *(v46 + 48));
      v49 = v99;
      (*(v99 + 16))(v6, v47, v4);
      v50 = sub_20C136564();
      v52 = v51;
      (*(v49 + 8))(v6, v4);
      (*(v104 + 56))(&v20[v18[9]], 1, 1, v105);

      v20[16] = 0;
      *v20 = v50;
      *(v20 + 1) = v52;
      *(v20 + 24) = xmmword_20C14F2B0;
      v20[40] = 1;
      v20[v18[12]] = v48;
      *(v20 + 3) = xmmword_20C157520;
      *(v20 + 9) = 0;
      *(v20 + 10) = 0;
      *(v20 + 8) = 0;
      *(v20 + 44) = 0;
      *(v20 + 6) = 0u;
      *(v20 + 7) = 0u;
      *(v20 + 8) = 0u;
LABEL_8:
      v77 = &v20[v18[10]];
      *v77 = 0;
      *(v77 + 1) = 0;
      v78 = v108;
      *&v20[v18[11]] = v107;
      sub_20B659694(v20, v78);
      return (*(v106 + 56))(v78, 0, 1, v18);
    case ' ':
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
      v98 = a1;
      v23 = swift_projectBox();
      LODWORD(v96) = *(v23 + v22[12]);
      v24 = v23 + v22[16];
      v25 = *v24;
      v94 = *(v24 + 8);
      v95 = v25;
      v26 = *(v24 + 16);
      v92 = *(v24 + 24);
      v93 = v26;
      v27 = *(v24 + 32);
      v90 = *(v24 + 40);
      v91 = v27;
      v28 = v23 + v22[20];
      v29 = *(v28 + 8);
      v89 = *v28;
      v30 = v89;
      v83 = v29;
      v31 = *(v28 + 24);
      v82 = *(v28 + 16);
      v103 = v31;
      v99 = *(v28 + 32);
      v32 = *(v102 + 16);
      LODWORD(v97) = *(v28 + 40);
      v32(v17, v23, v15);
      v95 = v95;
      v94 = v94;
      v93 = v93;

      v33 = v83;
      v34 = v82;
      sub_20B6543CC(v30, v83, v82, v103);
      v88 = sub_20C133E44();
      v87 = v35;
      v86 = sub_20C133E84();
      v85 = v36;
      v84 = v37;
      v38 = v18[9];
      sub_20C133F04();
      sub_20C134E34();
      sub_20B62A2AC(v14);
      sub_20C136CB4();
      (*(v100 + 8))(v11, v101);
      (*(v102 + 8))(v17, v15);
      (*(v104 + 56))(&v20[v38], 0, 1, v105);

      v20[16] = 1;
      v39 = v87;
      *v20 = v88;
      *(v20 + 1) = v39;
      v40 = v85;
      *(v20 + 3) = v86;
      *(v20 + 4) = v40;
      v20[40] = v84 & 1;
      v20[v18[12]] = v96;
      *(v20 + 6) = v89;
      *(v20 + 7) = v33;
      v41 = v103;
      *(v20 + 8) = v34;
      *(v20 + 9) = v41;
      *(v20 + 10) = v99;
      *(v20 + 44) = v97;
      v42 = v94;
      *(v20 + 12) = v95;
      *(v20 + 13) = v42;
      v43 = v92;
      *(v20 + 14) = v93;
      *(v20 + 15) = v43;
      v44 = v90;
      v45 = v91;
LABEL_7:
      *(v20 + 16) = v45;
      *(v20 + 17) = v44;
      goto LABEL_8;
  }

  v80 = *(v106 + 56);
  v81 = v108;

  return v80(v81, 1, 1, v18);
}

uint64_t sub_20B7BC670(uint64_t a1)
{
  v42 = type metadata accessor for WorkoutPlanScheduleUpdated(0);
  MEMORY[0x28223BE20](v42);
  v41 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20C1357B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765868, &unk_20C159430);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v31[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765838, &qword_20C1593F8);
  MEMORY[0x28223BE20](v11 - 8);
  v38 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v34 = &v31[-v14];
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v31[-v17];
  v39 = *(v5 + 16);
  v40 = a1;
  v36 = v5 + 16;
  v39(&v31[-v17], a1, v4, v16);
  v35 = *(v5 + 56);
  v35(v18, 0, 1, v4);
  v19 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_schedule;
  swift_beginAccess();
  v20 = *(v8 + 56);
  sub_20B52F9E8(v18, v10, &qword_27C765838, &qword_20C1593F8);
  v37 = v19;
  sub_20B52F9E8(v1 + v19, &v10[v20], &qword_27C765838, &qword_20C1593F8);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) == 1)
  {
    sub_20B520158(v18, &qword_27C765838, &qword_20C1593F8);
    if (v21(&v10[v20], 1, v4) == 1)
    {
      return sub_20B520158(v10, &qword_27C765838, &qword_20C1593F8);
    }

    goto LABEL_6;
  }

  v23 = v34;
  sub_20B52F9E8(v10, v34, &qword_27C765838, &qword_20C1593F8);
  if (v21(&v10[v20], 1, v4) == 1)
  {
    sub_20B520158(v18, &qword_27C765838, &qword_20C1593F8);
    (*(v5 + 8))(v23, v4);
LABEL_6:
    sub_20B520158(v10, &qword_27C765868, &unk_20C159430);
LABEL_7:
    v24 = v38;
    v25 = v39;
    v26 = v40;
    (v39)(v38, v40, v4);
    v35(v24, 0, 1, v4);
    v27 = v37;
    swift_beginAccess();
    sub_20B7C358C(v24, v1 + v27);
    swift_endAccess();
    swift_getObjectType();
    v28 = v41;
    v25(v41, v26, v4);
    sub_20B7C3658(&qword_27C765870, type metadata accessor for WorkoutPlanScheduleUpdated, &unk_20C1644D0);
    sub_20C13A764();
    sub_20B7C35FC(v28);
    return sub_20B7BCC04();
  }

  v29 = v33;
  (*(v5 + 32))(v33, &v10[v20], v4);
  sub_20B7C3658(&qword_27C765878, MEMORY[0x277D51CB0], MEMORY[0x277D51CC0]);
  v32 = sub_20C13C894();
  v30 = *(v5 + 8);
  v30(v29, v4);
  sub_20B520158(v18, &qword_27C765838, &qword_20C1593F8);
  v30(v23, v4);
  result = sub_20B520158(v10, &qword_27C765838, &qword_20C1593F8);
  if ((v32 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20B7BCC04()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20C133154();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765838, &qword_20C1593F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_20C1357B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_schedule;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v14, v9, &qword_27C765838, &qword_20C1593F8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20B520158(v9, &qword_27C765838, &qword_20C1593F8);
  }

  v54 = v11;
  v55 = v10;
  (*(v11 + 32))(v13, v9, v10);
  sub_20C133014();
  v53 = v13;
  v16 = v1;
  sub_20B7BDC0C(v13, v6);
  v56 = v17;
  (*(v60 + 8))(v6, v61);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_workoutPlanStringBuilder);
  v19 = v18[9];
  v20 = v18[10];
  __swift_project_boxed_opaque_existential_1(v18 + 6, v19);
  v21 = sub_20B5E107C(0xD000000000000024, 0x800000020C193710, v19, v20);
  v23 = v22;
  v24 = v18[9];
  v25 = v18[10];
  __swift_project_boxed_opaque_existential_1(v18 + 6, v24);
  v26 = sub_20B5E107C(0xD000000000000027, 0x800000020C199AD0, v24, v25);
  v65 = 0uLL;
  LOBYTE(v66) = 1;
  *(&v66 + 1) = *v64;
  DWORD1(v66) = *&v64[3];
  *(&v66 + 1) = 0;
  *&v67 = 0;
  WORD4(v67) = 128;
  *(&v67 + 10) = *&v62[7];
  HIWORD(v67) = v63;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  LOBYTE(v71) = 0;
  DWORD1(v71) = *&v62[3];
  *(&v71 + 1) = *v62;
  *(&v71 + 1) = v56;
  *&v72 = MEMORY[0x277D84F90];
  *(&v72 + 1) = v26;
  *&v73 = v27;
  *(&v73 + 1) = v21;
  *v74 = v23;
  *&v74[8] = xmmword_20C150190;
  nullsub_1();
  v28 = v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row;
  v29 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 144);
  v75[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 128);
  v75[9] = v29;
  v76 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 160);
  v30 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 80);
  v75[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 64);
  v75[5] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 112);
  v75[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 96);
  v75[7] = v31;
  v32 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 16);
  v75[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row);
  v75[1] = v32;
  v33 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 48);
  v75[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 32);
  v75[3] = v33;
  v34 = v72;
  v35 = *v74;
  *(v28 + 128) = v73;
  *(v28 + 144) = v35;
  *(v28 + 160) = *&v74[16];
  v36 = v70;
  *(v28 + 64) = v69;
  *(v28 + 80) = v36;
  *(v28 + 96) = v71;
  *(v28 + 112) = v34;
  v37 = v66;
  *v28 = v65;
  *(v28 + 16) = v37;
  v38 = v68;
  *(v28 + 32) = v67;
  *(v28 + 48) = v38;
  sub_20B520158(v75, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v54 + 8))(v53, v55);
  }

  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    goto LABEL_5;
  }

  v40 = Strong;
  sub_20B61D0A0(v1, Strong);
  if (!v42)
  {
    sub_20C0C2D50(0);
LABEL_5:
    swift_unknownObjectRelease();
    return (*(v54 + 8))(v53, v55);
  }

  v44 = v41;
  v45 = v42;
  v46 = v43;
  sub_20B5E2E18();
  v47 = sub_20C13D374();
  v49 = v57;
  v48 = v58;
  *v57 = v47;
  v50 = v59;
  (*(v48 + 104))(v49, *MEMORY[0x277D85200], v59);
  v51 = sub_20C13C584();
  result = (*(v48 + 8))(v49, v50);
  if ((v51 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  sub_20B620760(v44, v45, v46, v16, 0, v40);
  swift_unknownObjectRelease();

  return (*(v54 + 8))(v53, v55);
}

uint64_t sub_20B7BD1A8(uint64_t *a1)
{
  v101 = a1;
  v2 = sub_20C13BB84();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x28223BE20](v2);
  v94 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C135214();
  v91 = *(v4 - 8);
  v92 = v4;
  MEMORY[0x28223BE20](v4);
  v90 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = &v83 - v7;
  v8 = sub_20C136864();
  v9 = *(v8 - 8);
  v102 = v8;
  v103 = v9;
  MEMORY[0x28223BE20](v8);
  v98 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v83 - v12;
  v13 = type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765838, &qword_20C1593F8);
  MEMORY[0x28223BE20](v16 - 8);
  v100 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v99 = &v83 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v83 - v21;
  v23 = sub_20C1357B4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v93 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v83 - v27;
  v29 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_schedule;
  swift_beginAccess();
  v30 = v1 + v29;
  v31 = v24;
  sub_20B52F9E8(v30, v22, &qword_27C765838, &qword_20C1593F8);
  v32 = *(v24 + 48);
  v104 = v23;
  if (v32(v22, 1, v23) == 1)
  {
    return sub_20B520158(v22, &qword_27C765838, &qword_20C1593F8);
  }

  v87 = v32;
  v34 = *(v24 + 32);
  v86 = v24 + 32;
  v85 = v34;
  v34(v28, v22, v104);
  v35 = type metadata accessor for WorkoutPlanScheduledItemUpdate(0);
  v36 = v101;
  sub_20B7C3528(v101 + *(v35 + 20), v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = v28;
  if (!EnumCaseMultiPayload)
  {
    v84 = v1;
    v41 = v102;
    v42 = v103;
    v43 = v97;
    (*(v103 + 32))(v97, v15, v102);
    v44 = v99;
    v88 = v38;
    sub_20B623E20(v43, v99);
    (*(v42 + 8))(v43, v41);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v88 = v28;
    v97 = v24;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765860, &qword_20C15A080) + 48);
    v47 = v102;
    v46 = v103;
    v48 = *(v103 + 8);
    v48(v15, v102);
    v49 = &v15[v45];
    v50 = v98;
    (*(v46 + 32))(v98, v49, v47);
    if (v36[1])
    {
      v48(v50, v47);
      return (*(v97 + 8))(v88, v104);
    }

    v63 = v48;
    v84 = v1;
    v64 = *v36;
    sub_20C137F94();
    v65 = v90;
    sub_20C1351F4();
    v66 = sub_20C135754();
    v67 = sub_20C135754();
    if (!*(v67 + 16) || (v68 = sub_20B65B35C(v65), (v69 & 1) == 0))
    {

      (*(v91 + 8))(v65, v92);
      v63(v98, v102);
      v31 = v97;
      goto LABEL_22;
    }

    v70 = *(*(v67 + 56) + 8 * v68);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v64 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = sub_20BF908B4(v70);
      v70 = result;
      if ((v64 & 0x8000000000000000) == 0)
      {
LABEL_17:
        if (v64 < v70[2])
        {
          v71 = v102;
          v72 = v98;
          (*(v103 + 24))(v70 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v64, v98, v102);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106 = v66;
          sub_20B91D86C(v70, v65, isUniquelyReferenced_nonNull_native);
          v44 = v99;
          sub_20C135744();
          (*(v91 + 8))(v65, v92);
          v63(v72, v71);
          v31 = v97;
          goto LABEL_19;
        }

LABEL_32:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v39 = v102;
  v40 = *(v103 + 8);
  v103 += 8;
  v40(v15, v102);
  if (v36[1])
  {
    return (*(v24 + 8))(v38, v104);
  }

  v84 = v1;
  v51 = *v36;
  sub_20C137F94();
  v52 = v89;
  sub_20C1351F4();
  v53 = sub_20C135754();
  v54 = sub_20C135754();
  v55 = *(v54 + 16);
  v88 = v38;
  if (v55)
  {
    v56 = sub_20B65B35C(v52);
    if (v57)
    {
      v58 = v51;
      v59 = *(*(v54 + 56) + 8 * v56);

      v106 = v59;
      v60 = v97;
      sub_20B91F698(v58, v97);
      v40(v60, v39);
      v61 = v106;
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v105 = v53;
      sub_20B91D86C(v61, v52, v62);
      v44 = v99;
      sub_20C135744();
      (*(v91 + 8))(v52, v92);
LABEL_19:
      (*(v31 + 56))(v44, 0, 1, v104);
      goto LABEL_23;
    }
  }

  (*(v91 + 8))(v52, v92);
LABEL_22:
  v44 = v99;
  (*(v31 + 56))(v99, 1, 1, v104);
LABEL_23:
  v74 = v100;
  sub_20B52F9E8(v44, v100, &qword_27C765838, &qword_20C1593F8);
  if (v87(v74, 1, v104) == 1)
  {
    v75 = v88;
    sub_20B520158(v74, &qword_27C765838, &qword_20C1593F8);
    v76 = v94;
    sub_20C13B454();
    v77 = sub_20C13BB74();
    v78 = sub_20C13D1F4();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_20B517000, v77, v78, "[WorkoutPlanSchedulePickerShelf] Failed to apply schedule update", v79, 2u);
      MEMORY[0x20F2F6A40](v79, -1, -1);
    }

    (*(v95 + 8))(v76, v96);
    sub_20B520158(v44, &qword_27C765838, &qword_20C1593F8);
    return (*(v31 + 8))(v75, v104);
  }

  else
  {
    v80 = v93;
    v81 = v104;
    v85(v93, v74, v104);
    sub_20B7BC670(v80);
    v82 = *(v31 + 8);
    v82(v80, v81);
    sub_20B520158(v44, &qword_27C765838, &qword_20C1593F8);
    return (v82)(v88, v81);
  }
}

void sub_20B7BDC0C(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_20C135764();
  sub_20B7C2944(a1);
  v50 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = v4;
  v58 = v3;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765848, &unk_20C179F30);
  sub_20B7C3418();
  sub_20B7C347C();
  v6 = sub_20C13CBF4();

  v7 = *(v6 + 16);
  if (!v7)
  {

    v9 = MEMORY[0x277D84F90];
    v25 = *(MEMORY[0x277D84F90] + 16);
    if (!v25)
    {
LABEL_34:

      return;
    }

LABEL_17:
    v26 = 0;
    v27 = v9 + 32;
    v28 = MEMORY[0x277D84F90];
    while (v26 < *(v9 + 16))
    {
      v29 = v9;
      v30 = *(v27 + 8 * v26);
      v31 = *(v30 + 16);
      v32 = *(v28 + 2);
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v33 > *(v28 + 3) >> 1)
      {
        if (v32 <= v33)
        {
          v35 = v32 + v31;
        }

        else
        {
          v35 = v32;
        }

        v28 = sub_20BC05D3C(isUniquelyReferenced_nonNull_native, v35, 1, v28);
      }

      v9 = v29;
      if (*(v30 + 16))
      {
        if ((*(v28 + 3) >> 1) - *(v28 + 2) < v31)
        {
          goto LABEL_39;
        }

        swift_arrayInitWithCopy();

        if (v31)
        {
          v36 = *(v28 + 2);
          v37 = __OFADD__(v36, v31);
          v38 = v36 + v31;
          if (v37)
          {
            goto LABEL_40;
          }

          *(v28 + 2) = v38;
        }
      }

      else
      {

        if (v31)
        {
          goto LABEL_37;
        }
      }

      if (v25 == ++v26)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v58 = MEMORY[0x277D84F90];
  sub_20BB5D8AC(0, v7, 0);
  if ((v50 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v46 = v6;
    v47 = v6 + 32;
    v9 = v58;
    v45 = v7;
    while (v8 < *(v6 + 16))
    {
      v53 = v8;
      v54 = v9;
      v10 = *(v47 + 16 * v8 + 8);
      v56 = 0;
      v57 = 0;
      MEMORY[0x28223BE20](v10);
      v11 = v50;
      v39[2] = v12;
      v39[3] = v50;
      v39[4] = v48;
      v40 = v13;
      v41 = v49;
      v42 = &v57;
      v43 = v5;
      v44 = &v56;
      v52 = v12;

      v14 = MEMORY[0x277D84F90];
      sub_20BE15860(MEMORY[0x277D84F90], sub_20B7C34D0, v39, 0, v11);
      v51 = v15;
      v16 = v56;
      v55 = v14;
      sub_20BB5D8EC(0, v16 & ~(v16 >> 63), 0);
      v17 = v55;
      if (v16 >= 1)
      {
        do
        {
          if (v16 == 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = 3;
          }

          v19 = swift_allocObject();
          *(v19 + 24) = 0;
          *(v19 + 32) = 0;
          *(v19 + 16) = 0;
          *(v19 + 40) = 3;
          *(v19 + 41) = v18;
          *(v19 + 48) = v5;
          v55 = v17;
          v21 = *(v17 + 16);
          v20 = *(v17 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_20BB5D8EC((v20 > 1), v21 + 1, 1);
            v17 = v55;
          }

          *(v17 + 16) = v21 + 1;
          *(v17 + 8 * v21 + 32) = v19 | 0x8000000000000002;
          --v16;
        }

        while (v16);
      }

      v55 = v51;
      sub_20B8D921C(v17);

      v9 = v54;
      v22 = v55;
      v58 = v54;
      v24 = *(v54 + 16);
      v23 = *(v54 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_20BB5D8AC((v23 > 1), v24 + 1, 1);
        v9 = v58;
      }

      v8 = v53 + 1;
      *(v9 + 16) = v24 + 1;
      *(v9 + 8 * v24 + 32) = v22;
      v6 = v46;
      if (v8 == v45)
      {

        v25 = *(v9 + 16);
        if (!v25)
        {
          goto LABEL_34;
        }

        goto LABEL_17;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_42:
  __break(1u);
}

void sub_20B7BE04C(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X7>, void *a8@<X8>, char w4_0@<W4>, uint64_t a9, void *a10)
{
  v12 = v11;
  v106 = a7;
  v110 = a6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v20 - 8);
  v97 = v95 - v21;
  v102 = sub_20C1365F4();
  v22 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v99 = v95 - v25;
  MEMORY[0x28223BE20](v26);
  v101 = v95 - v27;
  v28 = sub_20C136864();
  v104 = *(v28 - 8);
  v105 = v28;
  MEMORY[0x28223BE20](v28);
  v107 = v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a4 - 1;
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
LABEL_49:
    a1 = sub_20BC05D3C(0, *(a1 + 2) + 1, 1, a1);
LABEL_22:
    v55 = v108;
    v56 = a5 | a4;
    v58 = *(a1 + 2);
    v57 = *(a1 + 3);
    if (v58 >= v57 >> 1)
    {
      a1 = sub_20BC05D3C((v57 > 1), v58 + 1, 1, a1);
    }

    sub_20B7C3288(a8, a2, a3, w4_0);
    *(a1 + 2) = v58 + 1;
    *&a1[8 * v58 + 32] = v56;
    goto LABEL_35;
  }

  v100 = v22;
  v108 = a8;
  v109 = v12;
  v111 = a9;
  a1 = *a1;
  v31 = *a2;
  a4 = 0x8000000000000002;
  v32 = *(a3 + 16);

  if (v31 == v30)
  {
    v103 = v30;
    v33 = sub_20C1330C4();
    v34 = sub_20C137F44();
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v34 < *(v33 + 16))
    {
      v96 = v32;
      v35 = v33 + 16 * v34;
      v36 = *(v35 + 32);
      v37 = *(v35 + 40);

      v112[0] = v36;
      v112[1] = v37;
      sub_20B5F6EB0();
      sub_20C13DA04();

      v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v39 = sub_20C13C914();

      v40 = [v38 initWithString_];

      if ((*v106 * 60) >> 64 == (60 * *v106) >> 63)
      {
        __swift_project_boxed_opaque_existential_1((*(v110 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_workoutPlanStringBuilder) + 48), *(*(v110 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_workoutPlanStringBuilder) + 72));
        sub_20C138CD4();
        v41 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v42 = sub_20C13C914();

        v43 = [v41 initWithString_];

        v44 = swift_allocObject();
        *(v44 + 16) = v40;
        *(v44 + 24) = v43;
        *(v44 + 32) = 0;
        *(v44 + 40) = 1;
        *(v44 + 48) = v111;
        v45 = *(a1 + 2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113 = a1;
        if (!isUniquelyReferenced_nonNull_native || v45 >= *(a1 + 3) >> 1)
        {
          a1 = sub_20BC05D3C(isUniquelyReferenced_nonNull_native, v45 + 1, 1, a1);
          v113 = a1;
        }

        a4 = 0x8000000000000002;
        v32 = v96;
        sub_20B7A3444(0, 0, 1, v44 | 0x8000000000000002);

        v30 = v103;
        goto LABEL_10;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_10:
  if (v31 > v32)
  {
    a8 = 0;
    a2 = 0;
    a3 = 0;
    w4_0 = 3;
    goto LABEL_15;
  }

  if (v31 == v32 && v32 <= 9)
  {
    v47 = *(v110 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_workoutPlanStringBuilder);
    v48 = v47[9];
    v49 = v47[10];
    __swift_project_boxed_opaque_existential_1(v47 + 6, v48);
    sub_20B5E107C(0x4C5449545F444441, 0xE900000000000045, v48, v49);
    v50 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v51 = sub_20C13C914();

    a8 = [v50 initWithString_];

    v52 = a8;
    a2 = 0;
    a3 = 0;
    w4_0 = 0;
    goto LABEL_15;
  }

  if (v31 >= v32)
  {
    goto LABEL_53;
  }

  v103 = v30;
  (*(v104 + 16))(v107, a3 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v31, v105);
  v59 = sub_20C136834();
  v61 = *(v110 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_modalitiesByIdentifier);
  if (!*(v61 + 16))
  {

    goto LABEL_33;
  }

  v62 = sub_20B65AA60(v59, v60);
  a3 = v63;

  if ((a3 & 1) == 0)
  {
    goto LABEL_33;
  }

  v64 = v99;
  v65 = v100;
  v66 = *(v61 + 56) + *(v100 + 72) * v62;
  v67 = v102;
  (*(v100 + 16))(v99, v66, v102);
  a3 = v65 + 32;
  v68 = v101;
  v99 = *(v65 + 32);
  (v99)(v101, v64, v67);
  v69 = sub_20C1365C4();
  if (!*(v69 + 16))
  {

    (*(v65 + 8))(v68, v67);
LABEL_33:
    (*(v104 + 8))(v107, v105);
    if (!__OFADD__(*a10, 1))
    {
      ++*a10;
      v55 = v108;
LABEL_35:
      *v55 = a1;
      return;
    }

    goto LABEL_54;
  }

  v95[1] = v65 + 32;
  a8 = *(v69 + 32);

  v95[0] = *(v110 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_filterPropertyStringBuilder);
  swift_weakInit();
  v70 = sub_20C136834();
  v71 = v97;
  sub_20B7BEC04(v70, v72, v97);
  v73 = v102;

  if ((*(v65 + 48))(v71, 1, v73) == 1)
  {
    sub_20B520158(v71, &qword_27C771090, &qword_20C15A040);
    v99 = MEMORY[0x277D84F90];
LABEL_46:
    swift_weakDestroy();
    sub_20C1365E4();
    v89 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v90 = sub_20C13C914();

    v91 = [v89 initWithString_];

    __swift_project_boxed_opaque_existential_1((v110 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_mediaTagStringBuilder), *(v110 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_mediaTagStringBuilder + 24));
    v92 = sub_20C138544();

    a2 = v91;
    a3 = v92;
    v93 = v107;
    v94 = sub_20C136854();
    (*(v100 + 8))(v101, v102);
    (*(v104 + 8))(v93, v105);
    if (!__OFADD__(*v106, v94))
    {
      *v106 += v94;
      w4_0 = 2;
      v30 = v103;
LABEL_15:
      if (v32 == v31)
      {
        v53 = 2;
      }

      else
      {
        v53 = 3;
      }

      if (v31 == v30)
      {
        v54 = 1;
      }

      else
      {
        v54 = v53;
      }

      a5 = swift_allocObject();
      *(a5 + 16) = a8;
      *(a5 + 24) = a2;
      *(a5 + 32) = a3;
      *(a5 + 40) = w4_0;
      *(a5 + 41) = v54;
      *(a5 + 48) = v111;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_22;
      }

      goto LABEL_49;
    }

    goto LABEL_55;
  }

  (v99)(v98, v71, v73);
  v74 = sub_20C136814();
  v75 = *(v74 + 16);
  v96 = v32;
  if (v75)
  {
    a3 = sub_20BEDEBDC(v75, 0);
    v99 = sub_20BEE25A0(v112, a3 + 32, v75, v74);
    v76 = v112[0];
    v97 = v112[4];

    sub_20B583EDC(v76);
    if (v99 != v75)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }
  }

  else
  {
    a3 = MEMORY[0x277D84F90];
  }

  v112[0] = a3;
  v77 = v109;
  sub_20B7C10A8(v112);
  a3 = v77;
  if (!v77)
  {

    v79 = v112[0];
    MEMORY[0x28223BE20](v78);
    v80 = v98;
    v95[-4] = v95[0];
    v95[-3] = v80;
    LOBYTE(v95[-2]) = 1;
    a3 = sub_20BE15914(MEMORY[0x277D84F90], sub_20B7C3508, &v95[-6], v79);
    v109 = 0;

    v81 = sub_20C136854();
    if ((v81 * 60) >> 64 != (60 * v81) >> 63)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v82 = (60 * v81);
    v83 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
    v84 = *(sub_20C138094() - 8);
    v85 = *(v84 + 72);
    v86 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v87 = swift_allocObject();
    if (v83)
    {
      *(v87 + 16) = xmmword_20C14F320;
      v88 = (v87 + v86);
      *v88 = v82;
      swift_storeEnumTagMultiPayload();
      *(v88 + v85) = 1;
    }

    else
    {
      *(v87 + 16) = xmmword_20C14F980;
      *(v87 + v86) = v82;
    }

    swift_storeEnumTagMultiPayload();
    v112[0] = v87;
    sub_20B8D9328(a3);
    v99 = v112[0];
    (*(v100 + 8))(v98, v102);
    a4 = 0x8000000000000002;
    v32 = v96;
    goto LABEL_46;
  }

LABEL_58:

  __break(1u);
}

uint64_t sub_20B7BEC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_modalitiesByIdentifier);

    if (*(v8 + 16))
    {
      v9 = sub_20B65AA60(a1, a2);
      if (v10)
      {
        v11 = v9;
        v12 = *(v8 + 56);
        v13 = sub_20C1365F4();
        v14 = *(v13 - 8);
        (*(v14 + 16))(a4, v12 + *(v14 + 72) * v11, v13);

        return (*(v14 + 56))(a4, 0, 1, v13);
      }
    }
  }

  v16 = sub_20C1365F4();
  return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
}

void sub_20B7BED9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765838, &qword_20C1593F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_20C1357B4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_schedule;
  swift_beginAccess();
  sub_20B52F9E8(v3 + v17, v12, &qword_27C765838, &qword_20C1593F8);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v52 = v14;
    v53 = v13;
    (*(v14 + 32))(v16, v12, v13);
    v18 = sub_20C135764();
    v19 = *(v18 + 16);
    v20 = v16;
    if (v19)
    {
      v50 = v16;
      v51 = v7;
      v21 = sub_20BEDE9EC(v19, 0);
      v22 = sub_20BEE2178(&v56, (v21 + 4), v19, v18);
      v23 = v56;

      sub_20B583EDC(v23);
      if (v22 != v19)
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v20 = v50;
      v7 = v51;
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v56 = v21;
    sub_20B7C0F2C(&v56);
    v21 = v56;
    sub_20B7C2944(v20);
    v25 = v24;
    v26 = v21 + 3;
    v27 = 1;
    v29 = v52;
    v28 = v53;
    do
    {
      if (v27 - v21[2] == 1)
      {

        (*(v29 + 8))(v20, v28);
        goto LABEL_18;
      }

      v30 = v24 * v27;
      if ((v24 * v27) >> 64 != (v24 * v27) >> 63)
      {
        __break(1u);
        goto LABEL_25;
      }

      v26 += 2;
      ++v27;
    }

    while (v30 < a1);
    v31 = *(v26 - 8);
    v32 = *v26;

    v33 = v25 * (v27 - 2);
    if ((v25 * (v27 - 2)) >> 64 != v33 >> 63)
    {
      goto LABEL_26;
    }

    v34 = __OFSUB__(a1, v33);
    v35 = a1 - v33;
    if (!v34)
    {
      v36 = v35 - 1;
      v37 = v54;
      if (__OFSUB__(v35, 1))
      {
        goto LABEL_28;
      }

      if (v36 >= *(v32 + 16))
      {
        v38 = v7;
        (*(v52 + 8))(v20, v53);

        v39 = sub_20C136864();
        (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
      }

      else
      {
        if (v36 < 0)
        {
          goto LABEL_29;
        }

        v38 = v7;
        v39 = sub_20C136864();
        v40 = *(v39 - 8);
        (*(v40 + 16))(v37, v32 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v36, v39);

        (*(v52 + 8))(v20, v53);
        (*(v40 + 56))(v37, 0, 1, v39);
      }

      sub_20B52F9E8(v37, v38, &qword_27C765810, &qword_20C159480);
      sub_20C136864();
      v42 = (*(*(v39 - 8) + 48))(v38, 1, v39);
      v43 = v42 == 1;
      if (v42 == 1)
      {
        v36 = 0;
      }

      sub_20B520158(v38, &qword_27C765810, &qword_20C159480);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765820, &qword_20C1593D8);
      v45 = v37;
      v46 = v55;
      v47 = v55 + *(v44 + 48);
      v48 = *(v44 + 64);
      sub_20B5DF134(v45, v55, &qword_27C765810, &qword_20C159480);
      *v47 = v36;
      *(v47 + 8) = v43;
      *(v46 + v48) = v31;
      (*(*(v44 - 8) + 56))(v46, 0, 1, v44);
      return;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);

    __break(1u);
    return;
  }

  sub_20B520158(v12, &qword_27C765838, &qword_20C1593F8);
LABEL_18:
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765820, &qword_20C1593D8);
  (*(*(v41 - 8) + 56))(v55, 1, 1, v41);
}

uint64_t sub_20B7BF3D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_20C1352E4();
  v17 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134F24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0;
  (*(v9 + 104))(v12, *MEMORY[0x277D513C0], v8, v10);
  (*(v5 + 104))(v7, *MEMORY[0x277D51768], v4);
  v13 = *MEMORY[0x277D52420];
  v14 = sub_20C135ED4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v3, v13, v14);
  (*(v15 + 56))(v3, 0, 1, v14);
  type metadata accessor for WorkoutPlanSchedulePickerShelf(0);
  sub_20B7C3658(&qword_27C765828, type metadata accessor for WorkoutPlanSchedulePickerShelf, &unk_20C159390);
  sub_20C138D94();
  sub_20B520158(v3, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v5 + 8))(v7, v17);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_20B7BF70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  v5[5] = swift_task_alloc();
  v6 = sub_20C1352E4();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = sub_20C134F24();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B7BF8A4, 0, 0);
}

uint64_t sub_20B7BF8A4(uint64_t a1)
{
  v2 = v1[4];
  v3 = sub_20C136834();
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_modalitiesByIdentifier);
  if (*(v5 + 16))
  {
    v6 = sub_20B65AA60(v3, v4);
    v7 = v1[13];
    if (v8)
    {
      v9 = v6;
      v10 = *(v5 + 56);
      v11 = sub_20C1365F4();
      v12 = *(v11 - 8);
      (*(v12 + 16))(v7, v10 + *(v12 + 72) * v9, v11);
      (*(v12 + 56))(v7, 0, 1, v11);
    }

    else
    {
      v11 = sub_20C1365F4();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    }
  }

  else
  {
    v13 = v1[13];
    v11 = sub_20C1365F4();
    (*(*(v11 - 8) + 56))(v13, 1, 1, v11);
  }

  v15 = v1[12];
  v14 = v1[13];
  v17 = v1[10];
  v16 = v1[11];
  v19 = v1[8];
  v18 = v1[9];
  v20 = v1[6];
  v21 = v1[7];
  v1[2] = v1[4];
  (*(v17 + 104))(v16, *MEMORY[0x277D51488], v18);
  (*(v21 + 104))(v19, *MEMORY[0x277D51768], v20);
  sub_20B52F9E8(v14, v15, &qword_27C771090, &qword_20C15A040);
  sub_20C1365F4();
  v22 = *(v11 - 8);
  v23 = (*(v22 + 48))(v15, 1, v11);
  v24 = v1[12];
  if (v23 == 1)
  {
    sub_20B520158(v1[12], &qword_27C771090, &qword_20C15A040);
  }

  else
  {
    sub_20C1365E4();
    (*(v22 + 8))(v24, v11);
  }

  v37 = v1[13];
  v26 = v1[10];
  v25 = v1[11];
  v27 = v1[8];
  v36 = v1[9];
  v28 = v1[7];
  v29 = v1[5];
  v35 = v1[6];
  v30 = *MEMORY[0x277D52420];
  v31 = sub_20C135ED4();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v29, v30, v31);
  (*(v32 + 56))(v29, 0, 1, v31);
  type metadata accessor for WorkoutPlanSchedulePickerShelf(0);
  sub_20B7C3658(&qword_27C765828, type metadata accessor for WorkoutPlanSchedulePickerShelf, &unk_20C159390);
  sub_20C138D94();

  sub_20B520158(v29, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v28 + 8))(v27, v35);
  (*(v26 + 8))(v25, v36);
  sub_20B520158(v37, &qword_27C771090, &qword_20C15A040);

  v33 = v1[1];

  return v33();
}

uint64_t sub_20B7BFD54()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_catalogClient));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_mediaTagStringBuilder));
  v8 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_metricPage;
  v9 = sub_20C1333A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_schedule, &qword_27C765838, &qword_20C1593F8);
  return v0;
}

uint64_t sub_20B7BFEF8()
{
  sub_20B7BFD54();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanSchedulePickerShelf(uint64_t a1)
{
  result = qword_27C7657F0;
  if (!qword_27C7657F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7BFFA4(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20C1333A4();
    if (v2 <= 0x3F)
    {
      sub_20B7C00F4(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B7C00F4(uint64_t a1)
{
  if (!qword_27C765800)
  {
    sub_20C1357B4();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C765800);
    }
  }
}

double sub_20B7C014C(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B7BD1A8(a1);
  }

  return result;
}

void sub_20B7C01AC(unint64_t a1, uint64_t a2)
{
  v123 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765808, &qword_20C1593C8);
  MEMORY[0x28223BE20](v115);
  v114 = &v93[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v113 = &v93[-v6];
  v7 = sub_20C1365F4();
  v116 = *(v7 - 8);
  v117 = v7;
  MEMORY[0x28223BE20](v7);
  v112 = &v93[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v9 - 8);
  v119 = &v93[-v10];
  v11 = sub_20C136864();
  v121 = *(v11 - 8);
  v122 = v11;
  v12 = *(v121 + 64);
  MEMORY[0x28223BE20](v11);
  v111 = &v93[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v118 = &v93[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v15 - 8);
  v120 = &v93[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v105 = &v93[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765818, &qword_20C1593D0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v93[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765820, &qword_20C1593D8);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v93[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0x42)
  {
    return;
  }

  v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
  v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
  if (v31 > 1)
  {
    if (v31 != 2)
    {
      return;
    }
  }

  else if (v31)
  {
    return;
  }

  v103 = &v93[-v27];
  sub_20B7C3220(v28, v29, v30, v31);
  v102 = v2;
  sub_20B7BED9C(v123, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_20B7C3288(v28, v29, v30, v31);
    v32 = &qword_27C765818;
    v33 = &qword_20C1593D0;
    v34 = v21;
LABEL_36:
    sub_20B520158(v34, v32, v33);
    return;
  }

  v98 = v28;
  v99 = v29;
  v100 = v30;
  v101 = v31;
  v35 = v103;
  sub_20B5DF134(v21, v103, &qword_27C765820, &qword_20C1593D8);
  sub_20B52F9E8(v35, v25, &qword_27C765820, &qword_20C1593D8);
  v36 = &v25[*(v22 + 48)];
  v37 = *v36;
  v96 = v36[8];
  v94 = v25[*(v22 + 64)];
  v38 = v105;
  sub_20B5DF134(v25, v105, &qword_27C765810, &qword_20C159480);
  v39 = v120;
  sub_20B52F9E8(v38, v120, &qword_27C765810, &qword_20C159480);
  v41 = v121;
  v40 = v122;
  if ((*(v121 + 48))(v39, 1, v122) == 1)
  {
    sub_20B520158(v39, &qword_27C765810, &qword_20C159480);
    v42 = v102;
    sub_20B7BF3D4();
  }

  else
  {
    v123 = *(v41 + 32);
    v43 = v118;
    (v123)(v118, v39, v40);
    v44 = sub_20C13CDF4();
    v45 = *(*(v44 - 8) + 56);
    v97 = v37;
    v46 = v119;
    v45(v119, 1, 1, v44);
    v47 = v111;
    (*(v41 + 16))(v111, v43, v40);
    v48 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    (v123)(v49 + v48, v47, v40);
    v42 = v102;
    *(v49 + ((v12 + v48 + 7) & 0xFFFFFFFFFFFFFFF8)) = v102;

    v50 = v46;
    v37 = v97;
    sub_20B6383D0(0, 0, v50, &unk_20C1593E8, v49);

    v51 = v43;
    v38 = v105;
    (*(v41 + 8))(v51, v40);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v53 = v117;
  v95 = Strong;
  if (!Strong)
  {
LABEL_35:
    sub_20B7C3288(v98, v99, v100, v101);
    sub_20B520158(v38, &qword_27C765810, &qword_20C159480);
    v32 = &qword_27C765820;
    v33 = &qword_20C1593D8;
    v34 = v103;
    goto LABEL_36;
  }

  v54 = *(v42 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_modalitiesByIdentifier);
  v55 = *(v54 + 16);
  v123 = MEMORY[0x277D84F90];
  if (!v55)
  {
LABEL_32:
    v86 = v96;
    v87 = sub_20B716430(v123);

    v88 = *(v42 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_selectedModalityReferences);
    v89 = v95;
    v90 = v95 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v91 = *(v90 + 8);
      ObjectType = swift_getObjectType();
      (*(v91 + 376))(v89, v38, v37, v86, v94, v87, v88, ObjectType, v91);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    goto LABEL_35;
  }

  v97 = v37;
  v124 = MEMORY[0x277D84F90];
  sub_20BB5D5C0(0, v55, 0);
  v123 = v124;
  v56 = v54 + 64;
  v57 = sub_20C13DAA4();
  v58 = 0;
  v59 = *(v54 + 36);
  v60 = v116;
  v110 = v116 + 32;
  v111 = (v116 + 16);
  v104 = v54 + 72;
  v106 = v55;
  v107 = v59;
  v108 = v54 + 64;
  v109 = v54;
  while ((v57 & 0x8000000000000000) == 0 && v57 < 1 << *(v54 + 32))
  {
    if ((*(v56 + 8 * (v57 >> 6)) & (1 << v57)) == 0)
    {
      goto LABEL_39;
    }

    if (v59 != *(v54 + 36))
    {
      goto LABEL_40;
    }

    v119 = 1 << v57;
    v120 = v57 >> 6;
    v118 = v58;
    v62 = v115;
    v63 = *(v115 + 48);
    v64 = *(v54 + 56);
    v65 = (*(v54 + 48) + 16 * v57);
    v67 = *v65;
    v66 = v65[1];
    v121 = v60[9];
    v122 = v57;
    v68 = v60[2];
    v69 = v113;
    v68(&v113[v63], v64 + v121 * v57, v53);
    v70 = v53;
    v71 = v114;
    *v114 = v67;
    *(v71 + 8) = v66;
    v72 = *(v62 + 48);
    v73 = v60[4];
    v73(v71 + v72, &v69[v63], v70);
    v74 = v71 + v72;
    v75 = v112;
    v68(v112, v74, v70);

    sub_20B520158(v71, &qword_27C765808, &qword_20C1593C8);
    v124 = v123;
    v77 = *(v123 + 16);
    v76 = *(v123 + 24);
    if (v77 >= v76 >> 1)
    {
      sub_20BB5D5C0((v76 > 1), v77 + 1, 1);
      v123 = v124;
    }

    v78 = v123;
    *(v123 + 16) = v77 + 1;
    v60 = v116;
    v53 = v117;
    v73(v78 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + v77 * v121, v75, v117);
    v54 = v109;
    v61 = 1 << *(v109 + 32);
    if (v122 >= v61)
    {
      goto LABEL_41;
    }

    v56 = v108;
    v79 = *(v108 + 8 * v120);
    if ((v79 & v119) == 0)
    {
      goto LABEL_42;
    }

    LODWORD(v59) = v107;
    if (v107 != *(v109 + 36))
    {
      goto LABEL_43;
    }

    v80 = v79 & (-2 << (v122 & 0x3F));
    if (v80)
    {
      v61 = __clz(__rbit64(v80)) | v122 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v81 = v120 << 6;
      v82 = v120 + 1;
      v83 = (v104 + 8 * v120);
      while (v82 < (v61 + 63) >> 6)
      {
        v85 = *v83++;
        v84 = v85;
        v81 += 64;
        ++v82;
        if (v85)
        {
          sub_20B526EA4(v122, v107, 0);
          v61 = __clz(__rbit64(v84)) + v81;
          goto LABEL_15;
        }
      }

      sub_20B526EA4(v122, v107, 0);
    }

LABEL_15:
    v58 = v118 + 1;
    v57 = v61;
    if (v118 + 1 == v106)
    {
      v42 = v102;
      v38 = v105;
      v37 = v97;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_20B7C0CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B7C0D18@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B7C0DD4()
{
  swift_getObjectType();
  type metadata accessor for WorkoutPlanScheduledItemUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B7C3658(&qword_27C765830, type metadata accessor for WorkoutPlanScheduledItemUpdated, &unk_20C162540);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  return sub_20B7BCC04();
}

void sub_20B7C0F2C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20B6A0EE8(v2);
  }

  v3 = v2[2];
  v18[0] = v2 + 4;
  v18[1] = v3;
  v4 = sub_20C13DF84();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v16 = v1;
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if ((sub_20C137F34() & 1) == 0)
          {
            break;
          }

          v13 = *(v12 + 16);
          v14 = v12[3];
          *(v12 + 1) = *v12;
          *v12 = v13;
          v12[1] = v14;
          v12 -= 2;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
      v1 = v16;
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765840, &qword_20C159400);
      v7 = sub_20C13CCD4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v17[0] = (v7 + 32);
    v17[1] = v6;
    sub_20B7C1400(v17, v19, v18, v5);
    *(v7 + 16) = 0;
  }

  *v1 = v2;
}

void sub_20B7C10A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20B6A0F88(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_20B7C1114(v4);
  *a1 = v2;
}

void sub_20B7C1114(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_20C13CCD4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_20B7C19CC(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20B7C120C(0, v2, 1, a1);
  }
}

void sub_20B7C120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v29 = *a4;
    v4 = *a4 + 24 * a3;
    v5 = a1 - a3;
LABEL_6:
    v27 = v4;
    v28 = a3;
    v26 = v5;
    v6 = v4;
    while (1)
    {
      v7 = *(v4 + 16);
      v9 = *(v6 - 24);
      v6 -= 24;
      v8 = v9;
      v10 = *(v4 - 8);
      v11 = qword_20C159440[v7];
      v12 = qword_20C159440[v10];
      if (v11 == v12)
      {
        v13 = *v4;
        v14 = *(v4 + 8);
        v15 = *(v4 - 16);
        sub_20B6D8740(*v4, v14, v7);
        v30 = v10;
        v31 = v8;
        sub_20B6D8740(v8, v15, v10);
        v16 = sub_20C137914();
        v18 = v17;
        if (v16 == sub_20C137914() && v18 == v19)
        {

          sub_20B6D8768(v31, v15, v30);
          sub_20B6D8768(v13, v14, v7);
LABEL_5:
          a3 = v28 + 1;
          v4 = v27 + 24;
          v5 = v26 - 1;
          if (v28 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v21 = sub_20C13DFF4();

        sub_20B6D8768(v31, v15, v30);
        sub_20B6D8768(v13, v14, v7);
        if ((v21 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v11 >= v12)
      {
        goto LABEL_5;
      }

      if (!v29)
      {
        break;
      }

      v22 = *(v4 + 16);
      v23 = *v4;
      *v4 = *v6;
      *(v4 + 16) = *(v6 + 16);
      *(v4 - 24) = v23;
      *(v4 - 8) = v22;
      v4 = v6;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20B7C1400(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_92:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_124:
      v11 = sub_20B6A07A0(v11);
    }

    v81 = *(v11 + 2);
    if (v81 >= 2)
    {
      while (*v7)
      {
        v82 = *&v11[16 * v81];
        v83 = *&v11[16 * v81 + 24];
        sub_20B7C22C4((*v7 + 16 * v82), (*v7 + 16 * *&v11[16 * v81 + 16]), (*v7 + 16 * v83), v5);
        if (v6)
        {
          goto LABEL_102;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_20B6A07A0(v11);
        }

        if (v81 - 2 >= *(v11 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v11[16 * v81];
        *v84 = v82;
        *(v84 + 1) = v83;
        sub_20B6A0714(v81 - 1);
        v81 = *(v11 + 2);
        if (v81 <= 1)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_128;
    }

LABEL_102:

    return;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v13 >= v9)
    {
      v9 = v13;
    }

    else
    {
      v14 = a1;
      v15 = 16 * v12;
      v5 = *v7 + 16 * v12 + 32;
      v16 = sub_20C137F34();
      v17 = v12 + 2;
      while (v9 != v17)
      {
        v5 += 16;
        ++v17;
        if ((v16 & 1) != (sub_20C137F34() & 1))
        {
          v9 = v17 - 1;
          break;
        }
      }

      v7 = a3;
      if (v16)
      {
        if (v9 < v12)
        {
          goto LABEL_121;
        }

        if (v12 < v9)
        {
          v18 = 0;
          v19 = 16 * v9;
          v20 = v12;
          do
          {
            if (v20 != v9 + v18 - 1)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v21 = (v25 + v15);
              v22 = v25 + v19;
              v23 = *v21;
              v24 = *(v21 + 1);
              *v21 = *(v22 - 16);
              *(v22 - 16) = v23;
              *(v22 - 8) = v24;
            }

            ++v20;
            --v18;
            v19 -= 16;
            v15 += 16;
          }

          while (v20 < v9 + v18);
        }
      }

      a1 = v14;
    }

    v26 = v7[1];
    if (v9 < v26)
    {
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_120;
      }

      if (v9 - v12 < a4)
      {
        if (__OFADD__(v12, a4))
        {
          goto LABEL_122;
        }

        if (v12 + a4 >= v26)
        {
          v5 = v7[1];
        }

        else
        {
          v5 = v12 + a4;
        }

        if (v5 < v12)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v9 != v5)
        {
          break;
        }
      }
    }

    v5 = v9;
    if (v9 < v12)
    {
      goto LABEL_119;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_20BC05740(0, *(v11 + 2) + 1, 1, v11);
    }

    v28 = *(v11 + 2);
    v27 = *(v11 + 3);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v11 = sub_20BC05740((v27 > 1), v28 + 1, 1, v11);
    }

    *(v11 + 2) = v29;
    v30 = &v11[16 * v28];
    *(v30 + 4) = v12;
    *(v30 + 5) = v5;
    v31 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    v88 = v5;
    if (v28)
    {
      v7 = a3;
      while (1)
      {
        v32 = v29 - 1;
        if (v29 >= 4)
        {
          break;
        }

        if (v29 == 3)
        {
          v33 = *(v11 + 4);
          v34 = *(v11 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_51:
          if (v36)
          {
            goto LABEL_108;
          }

          v49 = &v11[16 * v29];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_111;
          }

          v55 = &v11[16 * v32 + 32];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_115;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v32 = v29 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v59 = &v11[16 * v29];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_65:
        if (v54)
        {
          goto LABEL_110;
        }

        v62 = &v11[16 * v32];
        v64 = *(v62 + 4);
        v63 = *(v62 + 5);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v65 < v53)
        {
          goto LABEL_4;
        }

LABEL_72:
        v5 = v32 - 1;
        if (v32 - 1 >= v29)
        {
          __break(1u);
LABEL_104:
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
          __break(1u);
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v70 = *&v11[16 * v5 + 32];
        v71 = *&v11[16 * v32 + 40];
        sub_20B7C22C4((*a3 + 16 * v70), (*a3 + 16 * *&v11[16 * v32 + 32]), (*a3 + 16 * v71), v31);
        if (v6)
        {
          goto LABEL_102;
        }

        if (v71 < v70)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_20B6A07A0(v11);
        }

        if (v5 >= *(v11 + 2))
        {
          goto LABEL_105;
        }

        v72 = &v11[16 * v5];
        *(v72 + 4) = v70;
        *(v72 + 5) = v71;
        sub_20B6A0714(v32);
        v29 = *(v11 + 2);
        if (v29 <= 1)
        {
          goto LABEL_4;
        }
      }

      v37 = &v11[16 * v29 + 32];
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_106;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_107;
      }

      v44 = &v11[16 * v29];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_109;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_112;
      }

      if (v48 >= v40)
      {
        v66 = &v11[16 * v32 + 32];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_116;
        }

        if (v35 < v69)
        {
          v32 = v29 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

    v7 = a3;
LABEL_4:
    v9 = v7[1];
    v10 = v88;
    if (v88 >= v9)
    {
      goto LABEL_92;
    }
  }

  v85 = v12;
  v86 = v6;
  v89 = a1;
  v73 = *v7;
  v74 = *v7 + 16 * v9 - 16;
  v7 = (v12 - v9);
LABEL_83:
  v75 = v5;
  v76 = v7;
  v77 = v74;
  while (1)
  {
    if ((sub_20C137F34() & 1) == 0)
    {
LABEL_82:
      ++v9;
      v74 += 16;
      v7 = (v7 - 1);
      v5 = v75;
      if (v9 != v75)
      {
        goto LABEL_83;
      }

      a1 = v89;
      v12 = v85;
      v6 = v86;
      if (v5 < v85)
      {
        goto LABEL_119;
      }

      goto LABEL_31;
    }

    if (!v73)
    {
      break;
    }

    v78 = *(v77 + 16);
    v79 = *(v77 + 24);
    *(v77 + 16) = *v77;
    *v77 = v78;
    *(v77 + 8) = v79;
    v77 -= 16;
    v80 = __CFADD__(v76, 1);
    v76 = (v76 + 1);
    if (v80)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
}

void sub_20B7C19CC(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      v140 = v7;
      v135 = v6;
      if (v6 + 1 < v5)
      {
        v10 = *v4;
        v11 = *v4 + 24 * v9;
        v12 = *(v11 + 16);
        v13 = *v4 + 24 * v6;
        v14 = *(v13 + 16);
        v15 = qword_20C159440[v12];
        v16 = qword_20C159440[v14];
        v144 = v5;
        if (v15 == v16)
        {
          v17 = *v11;
          v18 = *(v11 + 8);
          v19 = *v13;
          v20 = *(v13 + 8);
          sub_20B6D8740(*v11, v18, v12);
          v150 = v19;
          sub_20B6D8740(v19, v20, v14);
          v21 = sub_20C137914();
          v6 = v22;
          v24 = v21 == sub_20C137914() && v6 == v23;
          v25 = v24 ? 0 : sub_20C13DFF4();

          sub_20B6D8768(v150, v20, v14);
          sub_20B6D8768(v17, v18, v12);
          v7 = v140;
          v8 = v135;
          v5 = v144;
          v26 = v25;
        }

        else
        {
          v26 = v15 < v16;
        }

        v27 = 0;
        v28 = v8 + 2;
        v29 = (v10 + 24 * v8 + 64);
        v136 = 24 * v8;
        v30 = 24 * v8;
        v138 = v26;
        do
        {
          v9 = v28;
          v31 = v27;
          v32 = v30;
          if (v28 >= v5)
          {
            break;
          }

          v33 = *v29;
          v34 = *(v29 - 24);
          v35 = qword_20C159440[v33];
          v36 = qword_20C159440[v34];
          if (v35 == v36)
          {
            v141 = v9;
            v37 = *(v29 - 2);
            v38 = *(v29 - 1);
            v39 = *(v29 - 5);
            v40 = *(v29 - 4);
            sub_20B6D8740(v37, v38, v33);
            v146 = v40;
            v148 = v39;
            sub_20B6D8740(v39, v40, v34);
            v41 = sub_20C137914();
            v43 = v42;
            v45 = v41 == sub_20C137914() && v43 == v44;
            v6 = v45 ? 0 : sub_20C13DFF4();

            sub_20B6D8768(v148, v146, v34);
            sub_20B6D8768(v37, v38, v33);
            v9 = v141;
            v8 = v135;
            v5 = v144;
            v26 = v138;
          }

          else
          {
            v6 = v35 < v36;
          }

          v28 = v9 + 1;
          v29 += 24;
          v27 = v31 + 1;
          v30 = v32 + 24;
          v7 = v140;
        }

        while (((v26 ^ v6) & 1) == 0);
        v4 = a3;
        if (v26)
        {
          if (v9 < v8)
          {
            goto LABEL_140;
          }

          if (v8 < v9)
          {
            v46 = 0;
            v47 = v136;
            do
            {
              if (v8 + v46 != v8 + v31 + 1)
              {
                v54 = *a3;
                if (!*a3)
                {
                  goto LABEL_146;
                }

                v48 = v54 + v47;
                v49 = v54 + v32;
                v50 = *(v48 + 16);
                v51 = *v48;
                v52 = v47;
                v53 = *(v49 + 40);
                *v48 = *(v49 + 24);
                *(v48 + 16) = v53;
                v47 = v52;
                *(v49 + 24) = v51;
                *(v49 + 40) = v50;
              }

              --v31;
              ++v46;
              v32 -= 24;
              v47 += 24;
            }

            while (v46 + v8 < v8 + v31 + 2);
          }
        }
      }

      v55 = v4[1];
      if (v9 >= v55)
      {
        goto LABEL_60;
      }

      if (__OFSUB__(v9, v8))
      {
        goto LABEL_139;
      }

      if (v9 - v8 >= a4)
      {
        goto LABEL_60;
      }

      v56 = v8 + a4;
      if (__OFADD__(v8, a4))
      {
        goto LABEL_141;
      }

      if (v56 >= v55)
      {
        v56 = v4[1];
      }

      if (v56 < v8)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      if (v9 == v56)
      {
        goto LABEL_60;
      }

      v145 = *v4;
      v57 = *v4 + 24 * v9;
      v58 = v8 - v9;
      v134 = v56;
LABEL_46:
      v142 = v9;
      v137 = v58;
      v139 = v57;
      v59 = v57;
      while (1)
      {
        v60 = *(v57 + 16);
        v62 = *(v59 - 24);
        v59 -= 24;
        v61 = v62;
        v63 = *(v57 - 8);
        v64 = qword_20C159440[v60];
        v65 = qword_20C159440[v63];
        if (v64 == v65)
        {
          break;
        }

        if (v64 >= v65)
        {
          goto LABEL_45;
        }

LABEL_55:
        if (!v145)
        {
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        v76 = *(v57 + 16);
        v77 = *v57;
        *v57 = *v59;
        *(v57 + 16) = *(v59 + 16);
        *(v57 - 24) = v77;
        *(v57 - 8) = v76;
        v57 = v59;
        if (__CFADD__(v58++, 1))
        {
          goto LABEL_45;
        }
      }

      v66 = *v57;
      v67 = *(v57 + 8);
      v68 = *(v57 - 16);
      sub_20B6D8740(*v57, v67, v60);
      v151 = v61;
      v149 = v68;
      sub_20B6D8740(v61, v68, v63);
      v69 = sub_20C137914();
      v71 = v70;
      v73 = sub_20C137914();
      v74 = v69;
      v6 = v72;
      if (v74 != v73 || v71 != v72)
      {
        break;
      }

      sub_20B6D8768(v151, v149, v63);
      sub_20B6D8768(v66, v67, v60);
LABEL_45:
      v9 = v142 + 1;
      v57 = v139 + 24;
      v58 = v137 - 1;
      if ((v142 + 1) != v134)
      {
        goto LABEL_46;
      }

      v9 = v134;
      v4 = a3;
      v7 = v140;
      v8 = v135;
LABEL_60:
      if (v9 < v8)
      {
        goto LABEL_138;
      }

      v6 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_20BC05740(0, *(v7 + 2) + 1, 1, v7);
      }

      v80 = *(v7 + 2);
      v79 = *(v7 + 3);
      v81 = v80 + 1;
      if (v80 >= v79 >> 1)
      {
        v7 = sub_20BC05740((v79 > 1), v80 + 1, 1, v7);
      }

      *(v7 + 2) = v81;
      v82 = &v7[16 * v80];
      *(v82 + 4) = v135;
      *(v82 + 5) = v9;
      v83 = *a1;
      if (!*a1)
      {
        goto LABEL_148;
      }

      if (v80)
      {
        while (2)
        {
          v84 = v81 - 1;
          if (v81 >= 4)
          {
            v89 = &v7[16 * v81 + 32];
            v90 = *(v89 - 64);
            v91 = *(v89 - 56);
            v95 = __OFSUB__(v91, v90);
            v92 = v91 - v90;
            if (v95)
            {
              goto LABEL_125;
            }

            v94 = *(v89 - 48);
            v93 = *(v89 - 40);
            v95 = __OFSUB__(v93, v94);
            v87 = v93 - v94;
            v88 = v95;
            if (v95)
            {
              goto LABEL_126;
            }

            v96 = &v7[16 * v81];
            v98 = *v96;
            v97 = *(v96 + 1);
            v95 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v95)
            {
              goto LABEL_128;
            }

            v95 = __OFADD__(v87, v99);
            v100 = v87 + v99;
            if (v95)
            {
              goto LABEL_131;
            }

            if (v100 >= v92)
            {
              v118 = &v7[16 * v84 + 32];
              v120 = *v118;
              v119 = *(v118 + 1);
              v95 = __OFSUB__(v119, v120);
              v121 = v119 - v120;
              if (v95)
              {
                goto LABEL_135;
              }

              if (v87 < v121)
              {
                v84 = v81 - 2;
              }
            }

            else
            {
LABEL_80:
              if (v88)
              {
                goto LABEL_127;
              }

              v101 = &v7[16 * v81];
              v103 = *v101;
              v102 = *(v101 + 1);
              v104 = __OFSUB__(v102, v103);
              v105 = v102 - v103;
              v106 = v104;
              if (v104)
              {
                goto LABEL_130;
              }

              v107 = &v7[16 * v84 + 32];
              v109 = *v107;
              v108 = *(v107 + 1);
              v95 = __OFSUB__(v108, v109);
              v110 = v108 - v109;
              if (v95)
              {
                goto LABEL_133;
              }

              if (__OFADD__(v105, v110))
              {
                goto LABEL_134;
              }

              if (v105 + v110 < v87)
              {
                goto LABEL_94;
              }

              if (v87 < v110)
              {
                v84 = v81 - 2;
              }
            }
          }

          else
          {
            if (v81 == 3)
            {
              v85 = *(v7 + 4);
              v86 = *(v7 + 5);
              v95 = __OFSUB__(v86, v85);
              v87 = v86 - v85;
              v88 = v95;
              goto LABEL_80;
            }

            v111 = &v7[16 * v81];
            v113 = *v111;
            v112 = *(v111 + 1);
            v95 = __OFSUB__(v112, v113);
            v105 = v112 - v113;
            v106 = v95;
LABEL_94:
            if (v106)
            {
              goto LABEL_129;
            }

            v114 = &v7[16 * v84];
            v116 = *(v114 + 4);
            v115 = *(v114 + 5);
            v95 = __OFSUB__(v115, v116);
            v117 = v115 - v116;
            if (v95)
            {
              goto LABEL_132;
            }

            if (v117 < v105)
            {
              break;
            }
          }

          v122 = v84 - 1;
          if (v84 - 1 >= v81)
          {
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
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
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
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          if (!*v4)
          {
            goto LABEL_145;
          }

          v123 = *&v7[16 * v122 + 32];
          v124 = *&v7[16 * v84 + 40];
          sub_20B7C24C8((*v4 + 24 * v123), (*v4 + 24 * *&v7[16 * v84 + 32]), *v4 + 24 * v124, v83);
          if (v143)
          {
            goto LABEL_121;
          }

          if (v124 < v123)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_20B6A07A0(v7);
          }

          if (v122 >= *(v7 + 2))
          {
            goto LABEL_124;
          }

          v125 = &v7[16 * v122];
          *(v125 + 4) = v123;
          *(v125 + 5) = v124;
          sub_20B6A0714(v84);
          v81 = *(v7 + 2);
          if (v81 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v5 = v4[1];
      if (v6 >= v5)
      {
        goto LABEL_111;
      }
    }

    v147 = sub_20C13DFF4();

    sub_20B6D8768(v151, v149, v63);
    sub_20B6D8768(v66, v67, v60);
    if ((v147 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_55;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_111:
  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_149;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_143:
    v7 = sub_20B6A07A0(v7);
  }

  v126 = *(v7 + 2);
  if (v126 < 2)
  {
LABEL_121:

    return;
  }

  while (*v4)
  {
    v127 = v7;
    v7 = (v126 - 1);
    v128 = *&v127[16 * v126];
    v129 = *&v127[16 * v126 + 24];
    sub_20B7C24C8((*v4 + 24 * v128), (*v4 + 24 * *&v127[16 * v126 + 16]), *v4 + 24 * v129, v6);
    if (v143)
    {
      goto LABEL_121;
    }

    if (v129 < v128)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_20B6A07A0(v127);
    }

    if (v126 - 2 >= *(v127 + 2))
    {
      goto LABEL_137;
    }

    v130 = &v127[16 * v126];
    *v130 = v128;
    *(v130 + 1) = v129;
    sub_20B6A0714(v7);
    v7 = v127;
    v126 = *(v127 + 2);
    if (v126 <= 1)
    {
      goto LABEL_121;
    }
  }

LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

uint64_t sub_20B7C22C4(char *__dst, char *__src, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (sub_20C137F34())
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v18 -= 16;
      if (sub_20C137F34())
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_20B7C24C8(char *__dst, uint64_t *a2, unint64_t a3, uint64_t *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = __dst;
  v7 = a2 - __dst;
  v8 = (a2 - __dst) / 24;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 24;
  if (v8 >= v10)
  {
    v30 = 3 * v10;
    if (__src != a2 || &a2[v30] <= __src)
    {
      v31 = a2;
      memmove(__src, a2, 24 * v10);
      a2 = v31;
    }

    v13 = &v4[v30];
    if (v9 >= 24 && a2 > v6)
    {
      v56 = v4;
      v58 = v6;
LABEL_31:
      v53 = a2 - 3;
      v32 = v5;
      v33 = v13;
      v62 = a2;
      do
      {
        v35 = *(v33 - 3);
        v33 -= 3;
        v34 = v35;
        v36 = *(v33 + 16);
        v37 = *(a2 - 8);
        v38 = qword_20C159440[v36];
        v39 = qword_20C159440[v37];
        if (v38 == v39)
        {
          v60 = v13;
          v40 = v33[1];
          v41 = *(a2 - 3);
          v42 = *(a2 - 2);
          sub_20B6D8740(v34, v40, v36);
          v54 = v41;
          sub_20B6D8740(v41, v42, v37);
          v43 = sub_20C137914();
          v45 = v44;
          if (v43 == sub_20C137914() && v45 == v46)
          {
            v48 = 0;
          }

          else
          {
            v48 = sub_20C13DFF4();
          }

          sub_20B6D8768(v54, v42, v37);
          sub_20B6D8768(v34, v40, v36);
          v5 = (v32 - 3);
          a2 = v62;
          v13 = v60;
          if (v48)
          {
LABEL_45:
            v4 = v56;
            if (v32 != a2)
            {
              v50 = *v53;
              *(v5 + 16) = v53[2];
              *v5 = v50;
            }

            if (v13 <= v56 || (a2 = v53, v53 <= v58))
            {
              a2 = v53;
              goto LABEL_51;
            }

            goto LABEL_31;
          }
        }

        else
        {
          v5 = (v32 - 3);
          if (v38 < v39)
          {
            goto LABEL_45;
          }
        }

        v4 = v56;
        if (v13 != v32)
        {
          v49 = *v33;
          *(v5 + 16) = v33[2];
          *v5 = v49;
        }

        v13 = v33;
        v32 = v5;
      }

      while (v33 > v56);
      v13 = v33;
    }
  }

  else
  {
    v11 = 3 * v8;
    if (__src != __dst || &__dst[v11 * 8] <= __src)
    {
      v12 = a2;
      memmove(__src, __dst, v11 * 8);
      a2 = v12;
    }

    v13 = &v4[v11];
    if (v7 >= 24 && a2 < v5)
    {
      v59 = &v4[v11];
      do
      {
        v14 = *(a2 + 16);
        v15 = *(v4 + 16);
        v16 = qword_20C159440[v14];
        v17 = qword_20C159440[v15];
        if (v16 == v17)
        {
          v57 = v6;
          v18 = *a2;
          v19 = a2[1];
          v61 = a2;
          v20 = *v4;
          v21 = v4[1];
          sub_20B6D8740(*a2, v19, v14);
          v55 = v20;
          sub_20B6D8740(v20, v21, v15);
          v22 = sub_20C137914();
          v24 = v23;
          v26 = v22 == sub_20C137914() && v24 == v25;
          if (v26)
          {

            sub_20B6D8768(v55, v21, v15);
            sub_20B6D8768(v18, v19, v14);
            a2 = v61;
            v6 = v57;
            v13 = v59;
LABEL_20:
            v28 = v4;
            v26 = v6 == v4;
            v4 += 3;
            if (v26)
            {
              goto LABEL_22;
            }

LABEL_21:
            v29 = *v28;
            v6[2] = v28[2];
            *v6 = v29;
            goto LABEL_22;
          }

          v27 = sub_20C13DFF4();

          sub_20B6D8768(v55, v21, v15);
          sub_20B6D8768(v18, v19, v14);
          a2 = v61;
          v6 = v57;
          v13 = v59;
          if ((v27 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (v16 >= v17)
        {
          goto LABEL_20;
        }

        v28 = a2;
        v26 = v6 == a2;
        a2 += 3;
        if (!v26)
        {
          goto LABEL_21;
        }

LABEL_22:
        v6 += 3;
      }

      while (v4 < v13 && a2 < v5);
    }

    a2 = v6;
  }

LABEL_51:
  v51 = 3 * ((v13 - v4) / 24);
  if (a2 != v4 || a2 >= &v4[v51])
  {
    memmove(a2, v4, v51 * 8);
  }

  return 1;
}

void sub_20B7C2944(uint64_t a1)
{
  v1 = sub_20C135764();
  v2 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  if (v6)
  {
    v7 = 0;
    v8 = __clz(__rbit64(v6));
    v9 = (v6 - 1) & v6;
    v10 = (v4 + 63) >> 6;
LABEL_9:
    v13 = *(*(v1 + 56) + 8 * v8);

    if (!v9)
    {
      goto LABEL_12;
    }

    do
    {
LABEL_10:
      while (1)
      {
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v15 = *(*(v2 + 56) + ((v7 << 9) | (8 * v14)));
        if (*(v13 + 16) < *(v15 + 16))
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_12;
        }
      }

      v13 = v15;
    }

    while (v9);
LABEL_12:
    while (1)
    {
      v16 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v16 >= v10)
      {

        return;
      }

      v9 = *(v3 + 8 * v16);
      ++v7;
      if (v9)
      {
        v7 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 0;
    v10 = (v4 + 63) >> 6;
    while (v10 - 1 != v6)
    {
      v7 = v6 + 1;
      v12 = *(v1 + 8 * v6 + 72);
      v11 -= 64;
      ++v6;
      if (v12)
      {
        v9 = (v12 - 1) & v12;
        v8 = __clz(__rbit64(v12)) - v11;
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_20B7C2AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_20C1365F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v71 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v56 - v14;
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v15 = v5 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_row;
  sub_20B5D8060(v73);
  v16 = v73[9];
  *(v15 + 128) = v73[8];
  *(v15 + 144) = v16;
  *(v15 + 160) = v74;
  v17 = v73[5];
  *(v15 + 64) = v73[4];
  *(v15 + 80) = v17;
  v18 = v73[7];
  *(v15 + 96) = v73[6];
  *(v15 + 112) = v18;
  v19 = v73[1];
  *v15 = v73[0];
  *(v15 + 16) = v19;
  v20 = v73[3];
  *(v15 + 32) = v73[2];
  *(v15 + 48) = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_schedule;
  v22 = sub_20C1357B4();
  (*(*(v22 - 8) + 56))(v5 + v21, 1, 1, v22);
  *(v5 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_selectedModalityReferences) = a3;
  v23 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_metricPage;
  v24 = sub_20C1333A4();
  v56 = *(v24 - 8);
  v25 = *(v56 + 16);
  v58 = a4;
  v57 = v24;
  v25(v5 + v23, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v72, v5 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_eventHub) = v72[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BF0, &unk_20C152BE0);
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_filterPropertyStringBuilder) = v72[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v72, v5 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_mediaTagStringBuilder);
  type metadata accessor for WorkoutPlanStringBuilder(0);
  v59 = a1;
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_workoutPlanStringBuilder) = *&v72[0];
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v26 = sub_20C13A914();
  v60 = v5;
  *(v5 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_subscriptionToken) = v26;
  v27 = sub_20B6B27E8(MEMORY[0x277D84F90]);
  v28 = a2 + 56;
  v29 = 1 << *(a2 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a2 + 56);
  v32 = (v29 + 63) >> 6;
  v67 = v11 + 16;
  v62 = (v11 + 32);
  v65 = (v11 + 8);
  v68 = v11;
  v61 = (v11 + 40);
  v69 = a2;

  v33 = 0;
  v64 = a2 + 56;
  v63 = v32;
  v66 = v10;
  while (v31)
  {
    v35 = v33;
LABEL_11:
    v36 = *(v68 + 72);
    v37 = *(v68 + 16);
    v38 = v70;
    v37(v70, *(v69 + 48) + v36 * (__clz(__rbit64(v31)) | (v35 << 6)), v10);

    v39 = sub_20C1365A4();
    v41 = v40;
    v37(v71, v38, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v72[0] = v27;
    v44 = sub_20B65AA60(v39, v41);
    v45 = *(v27 + 16);
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_22;
    }

    v48 = v43;
    if (*(v27 + 24) >= v47)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20BA0FBAC();
      }
    }

    else
    {
      sub_20BA08BFC(v47, isUniquelyReferenced_nonNull_native);
      v49 = sub_20B65AA60(v39, v41);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_24;
      }

      v44 = v49;
    }

    v31 &= v31 - 1;
    if (v48)
    {

      v34 = *&v72[0];
      v10 = v66;
      (*v61)(*(*&v72[0] + 56) + v44 * v36, v71, v66);

      (*v65)(v70, v10);
    }

    else
    {
      v34 = *&v72[0];
      *(*&v72[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v51 = (v34[6] + 16 * v44);
      *v51 = v39;
      v51[1] = v41;
      v10 = v66;
      (*v62)(v34[7] + v44 * v36, v71, v66);

      (*v65)(v70, v10);
      v52 = v34[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_23;
      }

      v34[2] = v54;
    }

    v33 = v35;
    v27 = v34;
    v28 = v64;
    v32 = v63;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      (*(v56 + 8))(v58, v57);

      result = v60;
      *(v60 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanSchedulePickerShelf_modalitiesByIdentifier) = v27;
      return result;
    }

    v31 = *(v28 + 8 * v35);
    ++v33;
    if (v31)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

id sub_20B7C3220(id result, id a2, id a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      a3 = a2;
    }

    else
    {
      if (a4 != 2)
      {
        return result;
      }

      result = a2;
    }

    v5 = result;
    result = a3;
  }

  return result;
}

void sub_20B7C3288(id a1, id a2, id a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      a3 = a2;
    }

    else
    {
      if (a4 != 2)
      {
        return;
      }

      a1 = a2;
    }

    a1 = a3;
  }
}

uint64_t sub_20B7C32F0(uint64_t a1)
{
  v4 = *(sub_20C136864() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52A9D4;

  return sub_20B7BF70C(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_20B7C3418()
{
  result = qword_27C765850;
  if (!qword_27C765850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C765848, &unk_20C179F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765850);
  }

  return result;
}

unint64_t sub_20B7C347C()
{
  result = qword_27C765858;
  if (!qword_27C765858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765858);
  }

  return result;
}

uint64_t sub_20B7C3528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B7C358C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765838, &qword_20C1593F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B7C35FC(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanScheduleUpdated(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B7C3658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double WorkoutPlanEditScheduleViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

id WorkoutPlanEditScheduleViewController.preferredContentSize.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_20C138104();
  result = sub_20C138104();
  if (v2 != result)
  {
    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, sel_preferredContentSize);
  }

  return result;
}

id WorkoutPlanEditScheduleViewController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

void (*WorkoutPlanEditScheduleViewController.preferredContentSize.modify(objc_super **a1))(double **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[4].receiver = v2;
  ObjectType = swift_getObjectType();
  v5[4].super_class = ObjectType;
  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
    v8 = 0x4087E00000000000;
    v9 = 0x4083800000000000;
  }

  else
  {
    v5[1].receiver = v2;
    v5[1].super_class = ObjectType;
    objc_msgSendSuper2(v5 + 1, sel_preferredContentSize);
  }

  v5->receiver = v9;
  v5->super_class = v8;
  return sub_20B7C3AA4;
}

void sub_20B7C3AA4(double **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[9];
  v6 = 6;
  if (a2)
  {
    v6 = 4;
  }

  v7 = 7;
  if (a2)
  {
    v7 = 5;
  }

  v2[v6] = (*a1)[8];
  v2[v7] = v5;
  objc_msgSendSuper2(&v2[v6], sel_setPreferredContentSize_, v3, v4);

  free(v2);
}

char *WorkoutPlanEditScheduleViewController.__allocating_init(dependencies:pageContext:pageNavigator:editableItem:modalityReferences:preferredModalityReferences:)(uint64_t a1, __int128 *a2, void (*a3)(char *, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a4[3];
  v16 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v18 = sub_20B7C6340(a1, a2, a3, v17, a5, a6, a7, v7, v15, v16);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v18;
}

char *WorkoutPlanEditScheduleViewController.init(dependencies:pageContext:pageNavigator:editableItem:modalityReferences:preferredModalityReferences:)(uint64_t a1, __int128 *a2, void (*a3)(char *, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a4[3];
  v14 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_20B7C5F28(a1, a2, a3, v19, a5, a6, a7, v23[1], v15, v14);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v21;
}

Swift::Void __swiftcall WorkoutPlanEditScheduleViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_20C133154();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_viewDidLoad, v8);
  sub_20B794920(1);
  sub_20B7C40E0();
  v11 = *&v1[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider];
  v12 = *(*(v11 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v13 = *(v12 + 16);
  if (v13)
  {
    v26 = v7;
    v27 = v6;
    v28 = v5;
    v29 = v1;

    v14 = (v12 + 40);
    do
    {
      v15 = *v14;
      v16 = swift_getObjectType();
      v17 = *(v15 + 48);
      swift_unknownObjectRetain();
      v17(v16, v15);
      swift_unknownObjectRelease();
      v14 += 2;
      --v13;
    }

    while (v13);

    v5 = v28;
    v1 = v29;
    v7 = v26;
    v6 = v27;
  }

  sub_20B7C9D14();
  v18 = v11 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_editableItem;
  v19 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  sub_20C133014();
  v20 = sub_20C1330C4();
  (*(v7 + 8))(v10, v6);
  v21 = sub_20C137F44();
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v21 >= *(v20 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v22 = sub_20C13C914();

  [v1 setTitle_];

  sub_20B7C645C(v18 + *(v19 + 24), v5);
  v23 = sub_20C136864();
  LODWORD(v22) = (*(*(v23 - 8) + 48))(v5, 1, v23);
  sub_20B520158(v5, &qword_27C765810, &qword_20C159480);
  if (v22 != 1)
  {
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_20B7976C4(sub_20B7C64CC, v24, v25);

    sub_20B797A5C();
  }
}

void sub_20B7C40E0()
{
  v1 = sub_20B7C4EA8();
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_primaryActionButton];
  *&v0[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_primaryActionButton] = v1;
  v3 = v1;

  v4 = [v0 navigationItem];
  [v4 setRightBarButtonItem_];

  v5 = [v0 navigationItem];
  v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_onCancelButtonTapped];
  [v5 setLeftBarButtonItem_];
}

void sub_20B7C41DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_20B7C4230();
  }
}

id sub_20B7C4230()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_20C1333A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_20C1352E4();
  v22 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C134F24();
  v13 = *(v23 - 8);
  v14 = MEMORY[0x28223BE20](v23);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1;
  v25 = v1;
  (*(v13 + 104))(v16, *MEMORY[0x277D51430], v14);
  (*(v10 + 104))(v12, *MEMORY[0x277D51768], v9);
  v17 = sub_20C135ED4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  (*(v3 + 16))(v5, *&v1[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_metricPage, v2);
  sub_20B7C6530(&qword_27C7658F8, v18, type metadata accessor for WorkoutPlanEditScheduleViewController, &protocol conformance descriptor for WorkoutPlanEditScheduleViewController);
  sub_20C138D94();
  (*(v3 + 8))(v5, v2);
  sub_20B520158(v8, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v10 + 8))(v12, v22);
  (*(v13 + 8))(v16, v23);
  sub_20B7CAA9C();
  return [v21 dismissViewControllerAnimated:1 completion:0];
}

Swift::Void __swiftcall WorkoutPlanEditScheduleViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1);
  type metadata accessor for WorkoutPlanEditSchedulePageDataProvider(0);
  sub_20B7C6530(&qword_27C7658A0, 255, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider, &unk_20C159F68);
  sub_20C138C54();
  sub_20B7C6530(&qword_27C7658A8, v4, type metadata accessor for WorkoutPlanEditScheduleViewController, &protocol conformance descriptor for WorkoutPlanEditScheduleViewController);
  sub_20B7C6530(&qword_27C7658B0, v5, type metadata accessor for WorkoutPlanEditScheduleViewController, &protocol conformance descriptor for WorkoutPlanEditScheduleViewController);
  sub_20C139364();
}

Swift::Void __swiftcall WorkoutPlanEditScheduleViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewWillDisappear_, a1, v7);
  v15 = v2;
  sub_20C132E84();
  sub_20B7C6530(&qword_27C7658A8, v10, type metadata accessor for WorkoutPlanEditScheduleViewController, &protocol conformance descriptor for WorkoutPlanEditScheduleViewController);
  sub_20C139274();
  (*(v6 + 8))(v9, v5);
  v11 = [v2 navigationController];
  if (v11)
  {
    v12 = v11;
    if ([v11 isBeingDismissed])
    {
      v15 = v2;
      sub_20B7C6530(&qword_27C7658B8, v13, type metadata accessor for WorkoutPlanEditScheduleViewController, &protocol conformance descriptor for WorkoutPlanEditScheduleViewController);
      sub_20C138C74();
    }
  }
}

Swift::Void __swiftcall WorkoutPlanEditScheduleViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1);
  sub_20B7C6530(&qword_27C7658A8, v3, type metadata accessor for WorkoutPlanEditScheduleViewController, &protocol conformance descriptor for WorkoutPlanEditScheduleViewController);
  sub_20B7C6530(&qword_27C7658B0, v4, type metadata accessor for WorkoutPlanEditScheduleViewController, &protocol conformance descriptor for WorkoutPlanEditScheduleViewController);
  sub_20C139374();
}

Swift::Void __swiftcall WorkoutPlanEditScheduleViewController.viewDidLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider] + 48);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v3 = v1;
  [v2 bounds];
  sub_20B9D8614(v4, v5, v6, v7);

  sub_20B798540();
}

Swift::Void __swiftcall WorkoutPlanEditScheduleViewController.viewSafeAreaInsetsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewSafeAreaInsetsDidChange);
  sub_20B798540();
}

id sub_20B7C4EA8()
{
  ObjectType = swift_getObjectType();
  sub_20B7CA924();
  v13[3] = ObjectType;
  v13[0] = v0;
  v2 = v0;
  v3 = sub_20C13C914();

  if (ObjectType)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v13, ObjectType);
    v5 = *(ObjectType - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_20C13DFD4();
    (*(v5 + 8))(v8, ObjectType);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v11 = [v10 initWithTitle:v3 style:2 target:v9 action:{sel_onActionButtonTapped, v13[0]}];

  swift_unknownObjectRelease();
  [v11 setEnabled_];
  return v11;
}

void sub_20B7C505C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_20C1333A4();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v35 - v5;
  v6 = sub_20C1352E4();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = sub_20C134F24();
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v1;
  v36 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider);
  v18 = v36;
  v19 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_editableItem;
  v20 = v19 + *(type metadata accessor for WorkoutPlanScheduleEditableItem(0) + 24);
  sub_20B7C645C(v18 + v20, v13);
  v21 = sub_20C136864();
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v13, 1, v21);
  sub_20B520158(v13, &qword_27C765810, &qword_20C159480);
  v24 = MEMORY[0x277D513C0];
  if (v23 != 1)
  {
    v24 = MEMORY[0x277D51460];
  }

  (*(v15 + 104))(v17, *v24, v14);
  v25 = v38;
  (*(v46 + 104))(v38, *MEMORY[0x277D51768], v47);
  v26 = v36;
  sub_20B7C645C(v36 + v20, v10);
  v27 = v22(v10, 1, v21);
  v28 = 6579265;
  if (v27 != 1)
  {
    v28 = 0x657461647055;
  }

  v37 = v28;
  sub_20B520158(v10, &qword_27C765810, &qword_20C159480);
  v29 = sub_20C135ED4();
  v30 = v41;
  (*(*(v29 - 8) + 56))(v41, 1, 1, v29);
  v32 = v42;
  v31 = v43;
  v33 = v44;
  (*(v43 + 16))(v42, v26 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_metricPage, v44);
  sub_20B7C6530(&qword_27C7658F8, v34, type metadata accessor for WorkoutPlanEditScheduleViewController, &protocol conformance descriptor for WorkoutPlanEditScheduleViewController);
  sub_20C138D94();

  (*(v31 + 8))(v32, v33);
  sub_20B520158(v30, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v46 + 8))(v25, v47);
  (*(v40 + 8))(v17, v39);
  sub_20B7CAE14();
}

id sub_20B7C55E4()
{
  ObjectType = swift_getObjectType();
  v23 = sub_20C1333A4();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_20C1352E4();
  v22 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v0;
  v25 = v0;
  (*(v12 + 104))(v15, *MEMORY[0x277D51468], v11, v13);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v16 = sub_20C135ED4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = v23;
  (*(v1 + 16))(v3, *&v0[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_metricPage, v23);
  sub_20B7C6530(&qword_27C7658F8, v18, type metadata accessor for WorkoutPlanEditScheduleViewController, &protocol conformance descriptor for WorkoutPlanEditScheduleViewController);
  sub_20C138D94();
  (*(v1 + 8))(v3, v17);
  sub_20B520158(v6, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v8 + 8))(v10, v22);
  (*(v12 + 8))(v15, v11);
  return [v21 dismissViewControllerAnimated:1 completion:0];
}

id WorkoutPlanEditScheduleViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WorkoutPlanEditScheduleViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B7C5BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(v3 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_primaryActionButton);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

double sub_20B7C5BF8@<D0>(void *a1@<X8>)
{
  *a1 = *(*v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider);

  return result;
}

uint64_t sub_20B7C5C28@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider) + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20B7C5CD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider);
  v4 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_20B7C5DA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B7C5E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = sub_20B7C6530(&qword_27C7658A8, v5, type metadata accessor for WorkoutPlanEditScheduleViewController, &protocol conformance descriptor for WorkoutPlanEditScheduleViewController);

  return a3(ObjectType, v6, a2);
}

char *sub_20B7C5F28(uint64_t a1, __int128 *a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10)
{
  v41 = a7;
  v42 = a5;
  ObjectType = swift_getObjectType();
  v17 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[3] = a9;
  v47[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a4, a9);
  *&a8[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_resignActiveObserver] = 0;
  a8[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_visibility] = 1;
  *&a8[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_primaryActionButton] = 0;
  *&a8[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a8[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_eventHub] = v48[0];
  sub_20B51CC64(v47, &a8[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_pageNavigator]);
  sub_20C133AA4();
  v21 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_platform;
  a8[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_platform] = v48[0];
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  v22 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_workoutPlanStringBuilder;
  *&a8[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_workoutPlanStringBuilder] = *&v48[0];
  sub_20B7C6578(a5, v19);
  type metadata accessor for WorkoutPlanEditSchedulePageDataProvider(0);
  swift_allocObject();

  v24 = sub_20B7D1AE0(v23, v19, a6, a2, a3, v41);

  *&a8[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider] = v24;
  v25 = *&a8[v22];
  v26 = v25[9];
  v27 = v25[10];
  __swift_project_boxed_opaque_existential_1(v25 + 6, v26);

  v28 = sub_20B5E107C(0x415F4554454C4544, 0xEF59544956495443, v26, v27);
  v30 = v29;

  *&v48[0] = v28;
  *(&v48[0] + 1) = v30;
  memset(&v48[1], 0, 32);
  v49 = 0;
  LOBYTE(v28) = a8[v21];
  v31 = objc_allocWithZone(type metadata accessor for PageActionMagicPocketView());
  v32 = sub_20BA99324(0, v48, v28);
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a8[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_magicPocketView] = v32;
  sub_20C133AA4();
  LOBYTE(v22) = v46;
  v33 = type metadata accessor for PageScrollObserver();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v34[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_behaviors] = 1;
  v34[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_platform] = v22;
  v45.receiver = v34;
  v45.super_class = v33;
  v35 = objc_msgSendSuper2(&v45, sel_init);
  v36 = &a8[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_scrollObserver];
  *v36 = v35;
  v36[1] = &off_2822A5318;
  v44.receiver = a8;
  v44.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0);
  sub_20B7C65DC(v42);
  __swift_destroy_boxed_opaque_existential_1(v47);
  v38 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider;
  *(*&v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider] + 24) = &off_2822A6E78;
  swift_unknownObjectWeakAssign();
  *(*&v37[v38] + 40) = &off_2822A7188;
  swift_unknownObjectWeakAssign();
  *(*&v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_scrollObserver] + OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8) = &off_2822A7178;
  swift_unknownObjectWeakAssign();
  return v37;
}

char *sub_20B7C6340(uint64_t a1, __int128 *a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v22 = a7;
  v15 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a4, a9);
  return sub_20B7C5F28(a1, a2, a3, v17, a5, v21, v22, v19, a9, a10);
}

uint64_t sub_20B7C645C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B7C6530(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20B7C6578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B7C65DC(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B7C6640(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_20B7C6688(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_20B7C66F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20B7C81A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20B7C6720(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6769736564;
  v5 = 0xEE00737469617254;
  v6 = 0x63696C6F626D7973;
  v7 = 0xE700000000000000;
  v8 = 0x746E6169726176;
  if (v2 != 3)
  {
    v8 = 0x746867696577;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x800000020C191770;
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

uint64_t sub_20B7C67C8()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

double sub_20B7C68B4(uint64_t a1)
{
  sub_20C13CA64();

  return result;
}

uint64_t sub_20B7C698C(uint64_t a1)
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

id sub_20B7C6A74(void *a1)
{
  v3 = *(v1 + 8);
  v74[0] = v3;
  if (v3)
  {
    v73 = *(v1 + 48);
    v4 = v73;
    sub_20B52F9E8(v74, v72, &qword_27C765908, &qword_20C159868);
    sub_20B52F9E8(&v73, v72, &qword_27C765910, &unk_20C159870);
    v6 = *(sub_20B7C757C(&unk_282286528, v4, v5) + 16);

    if (v6)
    {
      v7 = *(v1 + 16);
      v8 = *v1;
      v9 = *(v1 + 24);
      v10 = *(v1 + 28);
      v11 = *(v1 + 32);
      v12 = *(v1 + 40);
      v71 = objc_opt_self();
      v13 = [v71 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:a1];
      v14 = v13;
      if ((v10 & 1) == 0)
      {
        v15 = [v13 fontDescriptorWithSymbolicTraits_];
        if (v15)
        {
          v16 = v15;

          v14 = v16;
        }
      }

      if ((v12 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
        inited = swift_initStackObject();
        v69 = xmmword_20C14F980;
        *(inited + 16) = xmmword_20C14F980;
        v70 = v8;
        v18 = v7;
        v19 = *MEMORY[0x277D74380];
        *(inited + 32) = *MEMORY[0x277D74380];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
        v20 = swift_initStackObject();
        v21 = MEMORY[0x277D74430];
        *(v20 + 16) = xmmword_20C14F980;
        v22 = v11;
        v23 = *v21;
        *(v20 + 32) = *v21;
        *(v20 + 40) = v22;
        v24 = v19;
        v7 = v18;
        v25 = v23;
        v26 = sub_20B6B134C(v20);
        swift_setDeallocating();
        sub_20B520158(v20 + 32, &unk_27C773200, qword_20C158A40);
        *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
        *(inited + 40) = v26;
        sub_20B6B143C(inited);
        swift_setDeallocating();
        sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
        type metadata accessor for AttributeName(0);
        sub_20B5E5BD0();
        v27 = sub_20C13C744();

        v28 = [v14 fontDescriptorByAddingAttributes_];

        v14 = v28;
        v8 = v70;
      }

      if (v8)
      {
        v29 = [v14 fontDescriptorWithDesign_];
        if (v29)
        {
          v30 = v29;

          v14 = v30;
        }
      }

      v31 = objc_opt_self();
      v32 = 0.0;
      v33 = [v31 fontWithDescriptor:v14 size:0.0];

      v34 = [v33 fontDescriptor];
      v35 = [a1 preferredContentSizeCategory];
      LOBYTE(v33) = sub_20C13D434();

      if (v33)
      {
        v36 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
        v37 = [v71 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:v36];
        [v37 pointSize];
        v32 = v38;
      }

      v39 = [v31 fontWithDescriptor:v34 size:{v32, v69}];
    }

    else
    {
      if (*v1)
      {
        v66 = sub_20BD8E6AC(*v1);
      }

      else
      {
        v66 = 0;
      }

      v39 = [objc_opt_self() _smu_preferredFontForTextStyle_design_variant_maximumContentSizeCategory_compatibleWithTraitCollection_];
    }

    sub_20B520158(v74, &qword_27C765908, &qword_20C159868);
    return v39;
  }

  else
  {
    v40 = *(v1 + 48);

    v42 = *(sub_20B7C757C(&unk_282286550, v40, v41) + 16);

    if (v42)
    {
      v43 = *v1;
      v44 = *(v1 + 24);
      v45 = *(v1 + 28);
      v46 = *(v1 + 32);
      v47 = *(v1 + 40);
      v48 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*(v1 + 16) compatibleWithTraitCollection:a1];
      v49 = v48;
      if ((v45 & 1) == 0)
      {
        v50 = [v48 fontDescriptorWithSymbolicTraits_];
        if (v50)
        {
          v51 = v50;

          v49 = v51;
        }
      }

      if ((v47 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
        v52 = swift_initStackObject();
        *(v52 + 16) = xmmword_20C14F980;
        v53 = *MEMORY[0x277D74380];
        *(v52 + 32) = *MEMORY[0x277D74380];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
        v54 = swift_initStackObject();
        v55 = MEMORY[0x277D74430];
        *(v54 + 16) = xmmword_20C14F980;
        v56 = *v55;
        *(v54 + 32) = *v55;
        *(v54 + 40) = v46;
        v57 = v53;
        v58 = v56;
        v59 = sub_20B6B134C(v54);
        swift_setDeallocating();
        sub_20B520158(v54 + 32, &unk_27C773200, qword_20C158A40);
        *(v52 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
        *(v52 + 40) = v59;
        sub_20B6B143C(v52);
        swift_setDeallocating();
        sub_20B520158(v52 + 32, &qword_27C773210, &qword_20C159860);
        type metadata accessor for AttributeName(0);
        sub_20B5E5BD0();
        v60 = sub_20C13C744();

        v61 = [v49 fontDescriptorByAddingAttributes_];

        v49 = v61;
      }

      if (v43)
      {
        v62 = [v49 fontDescriptorWithDesign_];
        if (v62)
        {
          v63 = v62;

          v49 = v63;
        }
      }

      v64 = [objc_opt_self() fontWithDescriptor:v49 size:0.0];

      return v64;
    }

    else
    {
      if (*v1)
      {
        v67 = sub_20BD8E6AC(*v1);
      }

      else
      {
        v67 = 0;
      }

      v68 = [objc_opt_self() smu:*(v1 + 16) preferredFontForTextStyle:v67 design:qword_20C159938[*(v1 + 29)] variant:a1 compatibleWithTraitCollection:?];

      return v68;
    }
  }
}

uint64_t sub_20B7C71D4(uint64_t a1)
{
  if (*v1)
  {
    sub_20C13E184();
    sub_20C13C954();
    sub_20C13CA64();

    if (*(v1 + 8))
    {
LABEL_3:
      sub_20C13E184();
      sub_20C13C954();
      sub_20C13CA64();

      goto LABEL_6;
    }
  }

  else
  {
    sub_20C13E184();
    if (*(v1 + 8))
    {
      goto LABEL_3;
    }
  }

  sub_20C13E184();
LABEL_6:
  sub_20C13C954();
  sub_20C13CA64();

  if (*(v1 + 28))
  {
    sub_20C13E184();
  }

  else
  {
    sub_20C13E184();
    sub_20C13E194();
  }

  if (*(v1 + 29) > 8u)
  {
    sub_20C13E184();
  }

  else
  {
    sub_20C13E184();
    sub_20C13CA64();
  }

  if (*(v1 + 40) == 1)
  {
    return sub_20C13E184();
  }

  v3 = *(v1 + 32);
  sub_20C13E184();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x20F2F5910](v4);
}

uint64_t sub_20B7C7448()
{
  sub_20C13E164();
  sub_20B7C71D4(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B7C748C(uint64_t a1)
{
  sub_20C13E164();
  sub_20B7C71D4(v2);
  return sub_20C13E1B4();
}

uint64_t sub_20B7C74C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v3;
  v8[2] = *(a2 + 32);
  v9 = *(a2 + 48);
  sub_20B7C7E30(v6, v8);
  return v4 & 1;
}

unint64_t sub_20B7C7528()
{
  result = qword_27C765900;
  if (!qword_27C765900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765900);
  }

  return result;
}

uint64_t sub_20B7C757C(uint64_t isStackAllocationSafe, uint64_t a2, __n128 a3)
{
  v4 = isStackAllocationSafe;
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = isStackAllocationSafe;
  v5 = *(a2 + 32);
  v6 = v5 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v7 = (1 << v5) + 63;
  v8 = v7 >> 6;
  if (v6 <= 0xD || (v14 = 8 * (v7 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v10 = &v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    sub_20B7C78BC(v10, v8, v4, a2);
    v12 = v11;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    sub_20B7C80A4(v16, v8, v19);
    v12 = v19[0];

    MEMORY[0x20F2F6A40](v16, -1, -1);
  }

  return v12;
}

uint64_t sub_20B7C771C(uint64_t isStackAllocationSafe, uint64_t a2, __n128 a3)
{
  v4 = isStackAllocationSafe;
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = isStackAllocationSafe;
  v5 = *(a2 + 32);
  v6 = v5 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v7 = (1 << v5) + 63;
  v8 = v7 >> 6;
  if (v6 <= 0xD || (v14 = 8 * (v7 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v10 = &v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    sub_20B7C7C44(v10, v8, v4, a2);
    v12 = v11;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    sub_20B7C80D0(v16, v8, v19);
    v12 = v19[0];

    MEMORY[0x20F2F6A40](v16, -1, -1);
  }

  return v12;
}

void sub_20B7C78BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *(a3 + 16);
  if (!v29)
  {
    v26 = 0;
LABEL_46:

    sub_20BC0DFAC(a1, a2, v26, a4);
    return;
  }

  v26 = 0;
  v5 = 0;
  v31 = a4 + 56;
  v28 = a3 + 32;
  while (2)
  {
    v6 = *(v28 + v5++);
    sub_20C13E164();
    sub_20C13CA64();

    v7 = sub_20C13E1B4();
    v8 = -1 << *(a4 + 32);
    v9 = v7 & ~v8;
    v10 = v9 >> 6;
    v11 = 1 << v9;
    if (((1 << v9) & *(v31 + 8 * (v9 >> 6))) == 0)
    {
      goto LABEL_3;
    }

    v30 = v5;
    v12 = ~v8;
    while (1)
    {
      v13 = *(*(a4 + 48) + v9);
      if (v13 <= 1)
      {
        break;
      }

      if (v13 != 2)
      {
        v14 = v13 == 3;
        if (v13 == 3)
        {
          v15 = 0x746E6169726176;
        }

        else
        {
          v15 = 0x746867696577;
        }

        v16 = 0xE600000000000000;
        v17 = 0xE700000000000000;
        goto LABEL_16;
      }

      v15 = 0x63696C6F626D7973;
      v18 = 0xEE00737469617254;
      if (v6 <= 1)
      {
        goto LABEL_33;
      }

LABEL_20:
      v19 = 0x746E6169726176;
      if (v6 != 3)
      {
        v19 = 0x746867696577;
      }

      v20 = 0xE600000000000000;
      if (v6 == 3)
      {
        v20 = 0xE700000000000000;
      }

      if (v6 == 2)
      {
        v21 = 0x63696C6F626D7973;
      }

      else
      {
        v21 = v19;
      }

      if (v6 == 2)
      {
        v22 = 0xEE00737469617254;
      }

      else
      {
        v22 = v20;
      }

      if (v15 == v21)
      {
        goto LABEL_37;
      }

LABEL_38:
      v23 = sub_20C13DFF4();

      if (v23)
      {
        goto LABEL_42;
      }

      v9 = (v9 + 1) & v12;
      v10 = v9 >> 6;
      v11 = 1 << v9;
      if ((*(v31 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        v5 = v30;
        goto LABEL_3;
      }
    }

    v14 = v13 == 0;
    if (*(*(a4 + 48) + v9))
    {
      v15 = 0xD00000000000001ALL;
    }

    else
    {
      v15 = 0x6E6769736564;
    }

    v16 = 0x800000020C191770;
    v17 = 0xE600000000000000;
LABEL_16:
    if (v14)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    if (v6 > 1)
    {
      goto LABEL_20;
    }

LABEL_33:
    if (!v6)
    {
      v22 = 0xE600000000000000;
      if (v15 == 0x6E6769736564)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v22 = 0x800000020C191770;
    if (v15 != 0xD00000000000001ALL)
    {
      goto LABEL_38;
    }

LABEL_37:
    if (v18 != v22)
    {
      goto LABEL_38;
    }

LABEL_42:
    v24 = a1[v10];
    a1[v10] = v24 | v11;
    v5 = v30;
    if ((v24 & v11) != 0)
    {
LABEL_3:
      if (v5 == v29)
      {
        goto LABEL_46;
      }

      continue;
    }

    break;
  }

  if (!__OFADD__(v26, 1))
  {
    ++v26;
    goto LABEL_3;
  }

  __break(1u);
}
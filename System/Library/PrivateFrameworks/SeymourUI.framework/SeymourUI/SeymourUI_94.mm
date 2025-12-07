void sub_20BFBE080(unint64_t a1, char *a2, char *a3, char *a4)
{
  v70 = sub_20C137F24();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = &a2[-a1] / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = &a4[v21];
    if (v21 < 1)
    {
      v43 = &a4[v21];
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = &a4[v21];
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = &a2[v41];
          v68 = &a2[v41];
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_20C137F04();
            v51 = v50;
            if (sub_20C137F04() == v49 && v52 == v51)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_20C13DFF4();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = &a4[v20];
    v71 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_20C137F04();
        v31 = v30;
        if (sub_20C137F04() == v29 && v32 == v31)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_20C13DFF4();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = &v65[v25];
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 = &v65[a4];
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_20B6A0AD4(&v73, &v72, &v71);
}

uint64_t sub_20BFBE714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v5 = v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  sub_20B5D8060(v18);
  v6 = v18[9];
  *(v5 + 128) = v18[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v19;
  v7 = v18[5];
  *(v5 + 64) = v18[4];
  *(v5 + 80) = v7;
  v8 = v18[7];
  *(v5 + 96) = v18[6];
  *(v5 + 112) = v8;
  v9 = v18[1];
  *v5 = v18[0];
  *(v5 + 16) = v9;
  v10 = v18[3];
  *(v5 + 32) = v18[2];
  *(v5 + 48) = v10;
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = 0xF000000000000007;
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = 1;
  v11 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filter;
  v12 = sub_20C133E24();
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterResult;
  v14 = sub_20C135524();
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_eventHub) = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v17, v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder);
  sub_20B52F9E8(a2, v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterRoot, &qword_27C7649E0, &unk_20C1643C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v17, v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v15 = sub_20C13A914();
  sub_20B520158(a2, &qword_27C7649E0, &unk_20C1643C0);
  *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_subscriptionToken) = v15;
  return v3;
}

uint64_t sub_20BFBE9B4()
{
  v0 = sub_20C137F24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C134304();
  v17 = MEMORY[0x277D84F90];
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v8 = *(v6 + 64);
    v14[1] = v4;
    v9 = v4 + ((v8 + 32) & ~v8);
    v15 = *(v6 + 56);
    v16 = v7;
    do
    {
      v16(v3, v9, v0);
      v10 = sub_20C137EE4();
      MEMORY[0x28223BE20](v10);
      v14[-2] = v3;
      sub_20BE15A0C(MEMORY[0x277D84F90], sub_20BFBF8EC, &v14[-4], v10);
      v12 = v11;

      (*(v6 - 8))(v3, v0);
      sub_20B8DB830(v12);
      v9 += v15;
      --v5;
    }

    while (v5);

    return v17;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

void sub_20BFBEB8C(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v112 = *(v2 - 8);
  v113 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13C554();
  v107 = *(v5 - 8);
  v108 = v5;
  MEMORY[0x28223BE20](v5);
  v106 = (&v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_20C132EE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v116 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v110 = *(v10 - 8);
  v111 = v10;
  MEMORY[0x28223BE20](v10);
  v109 = &v98 - v11;
  v114 = sub_20C134F24();
  v12 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v98 - v16;
  v18 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0x13)
  {
    sub_20C13B534();

    v62 = sub_20C13BB74();
    v63 = sub_20C13D1D4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v131[0] = v65;
      *v64 = 136446210;
      *&v122 = a1;

      v66 = sub_20C13C9D4();
      v68 = sub_20B51E694(v66, v67, v131);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_20B517000, v62, v63, "Expanding text shelf action triggered for item: %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x20F2F6A40](v65, -1, -1);
      MEMORY[0x20F2F6A40](v64, -1, -1);
    }

    v112[1](v4, v113);
    return;
  }

  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v113 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v105 = v22;
  LODWORD(v104) = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
  v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
  v101 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
  v102 = v23;
  v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x38);
  LODWORD(v100) = *(v21 + 57);
  v103 = *(v21 + 64);
  v25 = sub_20C136664();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = MEMORY[0x277D513E0];
  if (!v24)
  {
    v26 = MEMORY[0x277D513E8];
  }

  (*(v12 + 104))(v14, *v26, v114);
  v27 = v18[6];
  v28 = sub_20C132C14();
  (*(*(v28 - 8) + 56))(v20 + v27, 1, 1, v28);
  v29 = v18[8];
  v30 = sub_20C135ED4();
  (*(*(v30 - 8) + 56))(v20 + v29, 1, 1, v30);
  v31 = v18[10];
  v32 = *MEMORY[0x277D51768];
  v33 = sub_20C1352E4();
  (*(*(v33 - 8) + 104))(v20 + v31, v32, v33);
  v34 = v18[11];
  v35 = sub_20C136E94();
  (*(*(v35 - 8) + 56))(v20 + v34, 1, 1, v35);
  v36 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  sub_20BABA860(v17, v20);
  (*(v12 + 32))(v20 + v18[5], v14, v114);
  *(v20 + v18[7]) = xmmword_20C16AC20;
  v37 = v20 + v18[9];
  *v37 = 0;
  *(v37 + 1) = 0;
  *(v20 + v18[12]) = v36;
  v38 = v115;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BF9FE38(v38, v20, Strong);
    swift_unknownObjectRelease();
  }

  v112 = v20;
  v40 = swift_allocObject();
  v41 = v113;
  v42 = v105;
  *(v40 + 16) = v113;
  *(v40 + 24) = v42;
  v43 = v104;
  *(v40 + 32) = v104;
  *(v40 + 40) = v101;
  v44 = v103;
  *(v40 + 48) = v102;
  *(v40 + 56) = 1;
  *(v40 + 57) = v100;
  *(v40 + 64) = v44;
  v114 = v40 | 0x2000000000000003;
  v45 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v40 | 0x2000000000000003;

  sub_20B7D4748(v41, v42, v43);
  sub_20B9EAE04(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14F980;
  *(v46 + 32) = v114;
  v47 = v40;
  v48 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow);
  v122 = 0uLL;
  LOBYTE(v123) = 1;
  *(&v123 + 1) = 0;
  *&v124 = 0;
  BYTE8(v124) = 0x80;
  BYTE9(v124) = v48;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  LOBYTE(v128) = 0;
  *(&v128 + 1) = v46;
  *&v129[0] = MEMORY[0x277D84F90];
  *(&v129[1] + 8) = 0u;
  *(v129 + 8) = 0u;
  *(&v129[2] + 1) = 0;
  v130 = 2;
  nullsub_1();
  v49 = v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v50 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v131[8] = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v131[9] = v50;
  v132 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v51 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v131[4] = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v131[5] = v51;
  v52 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v131[6] = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v131[7] = v52;
  v53 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v131[0] = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v131[1] = v53;
  v54 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v131[2] = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v131[3] = v54;
  v55 = v129[2];
  *(v49 + 128) = v129[1];
  *(v49 + 144) = v55;
  *(v49 + 160) = v130;
  v56 = v127;
  *(v49 + 64) = v126;
  *(v49 + 80) = v56;
  v57 = v129[0];
  *(v49 + 96) = v128;
  *(v49 + 112) = v57;
  v58 = v123;
  *v49 = v122;
  *(v49 + 16) = v58;
  v59 = v125;
  *(v49 + 32) = v124;
  *(v49 + 48) = v59;

  sub_20B520158(v131, &qword_27C762340, &unk_20C150290);
  v60 = swift_unknownObjectWeakLoadStrong();
  if (!v60)
  {
    goto LABEL_9;
  }

  if (*&v60[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    swift_unknownObjectRelease();
LABEL_9:

LABEL_10:
    v61 = v112;
LABEL_32:
    sub_20BE9B9EC(v61, type metadata accessor for ShelfMetricAction);
    return;
  }

  v100 = v47;
  v99 = v60;
  v69 = [*&v60[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource];
  v70 = v112;
  if (!v69)
  {
LABEL_31:
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
    v61 = v70;
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v71 = v109;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v72 = v111;
  v73 = sub_20C13BE74();
  v110[1](v71, v72);
  v110 = *(v73 + 16);
  v111 = v73;
  if (!v110)
  {
LABEL_29:

    v70 = v112;
    goto LABEL_31;
  }

  v74 = 0;
  v109 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v104 = (v8 + 16);
  v105 = (v111 + 32);
  v103 = (v8 + 8);
  while (2)
  {
    if (v74 < *(v111 + 16))
    {
      v75 = &v105[24 * v74];
      v76 = v75[1];
      v102 = *v75;
      v77 = v75[2];
      v113 = (v74 + 1);
      (*v104)(v116, &v109[v38], v7);
      v78 = *(v76 + 16);

      v114 = v77;

      v79 = 0;
      do
      {
        if (v78 == v79)
        {
          (*v103)(v116, v7);
          goto LABEL_19;
        }

        v80 = v79 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v81 = sub_20C13C894();
        v79 = v80;
      }

      while ((v81 & 1) == 0);
      (*v103)(v116, v7);
      v82 = *(v49 + 128);
      v83 = *(v49 + 144);
      v84 = *(v49 + 96);
      v118[7] = *(v49 + 112);
      v119 = v82;
      v120 = v83;
      v121 = *(v49 + 160);
      v85 = *(v49 + 80);
      v118[4] = *(v49 + 64);
      v118[5] = v85;
      v118[6] = v84;
      v86 = *(v49 + 16);
      v118[0] = *v49;
      v118[1] = v86;
      v87 = *(v49 + 48);
      v118[2] = *(v49 + 32);
      v118[3] = v87;
      v88 = sub_20B5EAF8C(v118);
      if (v88 == 1)
      {
        v89 = 0;
        v90 = 0;
      }

      else
      {
        v89 = *(&v119 + 1);
        v90 = v120;
      }

      v91 = v114;
      v101 = &v98;
      v117[0] = v89;
      v117[1] = v90;
      MEMORY[0x28223BE20](v88);
      *(&v98 - 2) = v117;
      v92 = sub_20B796758(sub_20B5EAFA4, (&v98 - 4), v91);

      if ((v92 & 1) == 0)
      {
LABEL_19:

        v74 = v113;
        v38 = v115;
        if (v113 == v110)
        {
          goto LABEL_29;
        }

        continue;
      }

      sub_20B5E2E18();
      v93 = sub_20C13D374();
      v95 = v106;
      v94 = v107;
      *v106 = v93;
      v96 = v108;
      (*(v94 + 104))(v95, *MEMORY[0x277D85200], v108);
      v97 = sub_20C13C584();
      (*(v94 + 8))(v95, v96);
      if ((v97 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_20B61F5C0(v102, v76, v114, v115, 1, v99);

      swift_unknownObjectRelease();

      goto LABEL_10;
    }

    break;
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_20BFBF8A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20BFBF908()
{
  result = qword_27C7715A8;
  if (!qword_27C7715A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7715A8);
  }

  return result;
}

unint64_t sub_20BFBF95C()
{
  result = qword_27C7715B0;
  if (!qword_27C7715B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7715B0);
  }

  return result;
}

id sub_20BFBF9B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonAction(0);
  sub_20B64EF10(v3 + *(v9 + 28), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v8;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8, &unk_20C14FB90);
    v12 = *(v11 + 48);
    sub_20B520158(&v8[*(v11 + 64)], &unk_27C768660, &unk_20C152F60);
    sub_20B520158(&v8[v12], &qword_27C7622F0, &unk_20C14FD00);
    if (v10)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 1;
    }

    else
    {
      v13 = v3[4];
      v18 = v3[5];
      v14 = *v3;
      v15 = v3[1];
      v16 = v3[2];
      v17 = v3[3];
    }

    v28[0] = v13;
    v28[1] = v18;
    v28[2] = v14;
    v28[3] = v15;
    v28[4] = v16;
    v28[5] = v17;
    type metadata accessor for ActionLoadingButton();
    v21 = [swift_getObjCClassFromMetadata() buttonWithType_];
    sub_20BAC1A24(v28);
    sub_20BAC1CF0(v13, v18);
  }

  else
  {
    sub_20BFBFCFC(v8);
    v19 = [objc_opt_self() whiteColor];
    type metadata accessor for RoundedButton();
    v20 = [swift_getObjCClassFromMetadata() buttonWithType_];
    [v20 setTitle:0 forState:0];
    v21 = v20;
    v22 = [v21 titleLabel];
    if (v22)
    {
      v23 = v22;
      [v22 setAdjustsFontForContentSizeCategory_];
    }

    sub_20BD4F054(0, 0, 1, 0);
    [v21 setTintColor_];

    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    [v21 setBackgroundColor_];
    [v21 setTintColor_];
    if (v3[5])
    {
      v24 = sub_20C13C914();
    }

    else
    {
      v24 = 0;
    }

    [v21 setTitle:v24 forState:0];

    if (v3[3])
    {
      v25 = sub_20C13C914();
      v26 = [objc_opt_self() systemImageNamed_];

      [v21 setImage:v26 forState:0];
    }
  }

  return v21;
}

uint64_t sub_20BFBFCFC(uint64_t a1)
{
  v2 = type metadata accessor for ButtonAction.ActionType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double SMUTVFocusableTextView.withPadding(_:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_20BFBFE48();

  swift_unknownObjectRetain();
  return result;
}

double SMUTVFocusableTextView.withMaximumNumberOfLines(_:)(uint64_t a1, uint64_t a2)
{
  sub_20BFBFE70(a1);

  swift_unknownObjectRetain();
  return result;
}

double SMUTVFocusableTextView.withDescriptionTextColor(_:)(uint64_t a1)
{
  sub_20BFBFE9C(a1);

  swift_unknownObjectRetain();
  return result;
}

double SMUTVFocusableTextView.withMoreLabelTextColor(_:)(uint64_t a1)
{
  sub_20BFBFEC8(a1);

  swift_unknownObjectRetain();
  return result;
}

double SMUTVFocusableTextView.withDescriptionTextFocusedColor(_:)(uint64_t a1)
{
  sub_20BFBFEF4(a1);

  swift_unknownObjectRetain();
  return result;
}

double SMUTVFocusableTextView.withFocusedBackgroundColor(_:)(uint64_t a1)
{
  sub_20BFBFF20(a1);

  swift_unknownObjectRetain();
  return result;
}

id sub_20BFBFF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PopTransitionAnimator();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_20BFBFFD4(id a1)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI21PopTransitionAnimator_isPresenting) == 1)
  {
    v3 = [a1 viewControllerForKey_];
    if (!v3)
    {
      return;
    }

    v4 = v3;
    v5 = [v3 view];
    if (v5)
    {
      v6 = v5;
      [v5 setTranslatesAutoresizingMaskIntoConstraints_];

      v7 = [a1 containerView];
      v8 = [v4 view];
      if (v8)
      {
        v9 = v8;
        v59 = v1;
        [v7 addSubview_];

        v10 = [v4 view];
        if (v10)
        {
          v11 = v10;
          v61 = objc_opt_self();
          v12 = [a1 containerView];
          v14 = *MEMORY[0x277D768C8];
          v13 = *(MEMORY[0x277D768C8] + 8);
          v15 = *(MEMORY[0x277D768C8] + 16);
          v16 = *(MEMORY[0x277D768C8] + 24);
          v17 = [v11 leadingAnchor];
          v18 = [v12 leadingAnchor];
          v19 = [v17 constraintEqualToAnchor:v18 constant:v13];

          LODWORD(v20) = 1148846080;
          [v19 setPriority_];
          v60 = v19;
          v21 = [v11 trailingAnchor];
          v22 = [v12 trailingAnchor];
          v23 = [v21 &selRef_passwordEntryCancelledHandler + 6];

          LODWORD(v24) = 1148846080;
          [v23 &selRef_meterUnit];
          v25 = v23;
          v26 = [v11 topAnchor];
          v27 = [v12 topAnchor];
          v28 = [v26 &selRef_passwordEntryCancelledHandler + 6];

          LODWORD(v29) = 1148846080;
          [v28 &selRef_meterUnit];
          v30 = [v11 bottomAnchor];
          v31 = [v12 bottomAnchor];
          v32 = [v30 constraintEqualToAnchor:v31 constant:-v15];

          LODWORD(v33) = 1148846080;
          [v32 &selRef_meterUnit];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_20C14FE90;
          *(v34 + 32) = v60;
          *(v34 + 40) = v25;
          *(v34 + 48) = v28;
          *(v34 + 56) = v32;
          v35 = v28;

          sub_20B5E29D0();
          v36 = sub_20C13CC54();

          [v61 activateConstraints_];

          v37 = [v4 view];
          if (v37)
          {
            v38 = v37;
            [v37 setAlpha_];

            v39 = [v4 view];
            if (v39)
            {
              v40 = v39;
              aBlock.a = 1.0;
              aBlock.b = 0.0;
              aBlock.c = 0.0;
              aBlock.d = 1.0;
              aBlock.tx = 0.0;
              aBlock.ty = 0.0;
              [v39 setTransform_];

              v41 = [v4 view];
              if (v41)
              {
                v42 = v41;
                CGAffineTransformMakeScale(&aBlock, 0.88, 0.88);
                [v42 setTransform_];

                [v59 transitionDuration_];
                v44 = v43;
                v45 = objc_opt_self();
                v46 = swift_allocObject();
                *(v46 + 16) = v4;
                *&aBlock.tx = sub_20BFC095C;
                *&aBlock.ty = v46;
                *&aBlock.a = MEMORY[0x277D85DD0];
                *&aBlock.b = 1107296256;
                *&aBlock.c = sub_20B7B548C;
                *&aBlock.d = &block_descriptor_13_3;
                v47 = _Block_copy(&aBlock);
                v48 = v4;

                v49 = swift_allocObject();
                *(v49 + 16) = a1;
                *&aBlock.tx = sub_20BFC0964;
                *&aBlock.ty = v49;
                *&aBlock.a = MEMORY[0x277D85DD0];
                *&aBlock.b = 1107296256;
                *&aBlock.c = sub_20B5E3874;
                *&aBlock.d = &block_descriptor_19_5;
                v50 = _Block_copy(&aBlock);
                swift_unknownObjectRetain();

                [v45 animateWithDuration:v47 animations:v50 completion:v44];
                goto LABEL_12;
              }

LABEL_19:
              __break(1u);
              return;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v51 = [a1 viewControllerForKey_];
  if (!v51)
  {
    return;
  }

  v52 = v51;
  [v1 transitionDuration_];
  v54 = v53;
  v55 = objc_opt_self();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v1;
  *&aBlock.tx = sub_20BFC0954;
  *&aBlock.ty = v56;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20B7B548C;
  *&aBlock.d = &block_descriptor_168;
  v47 = _Block_copy(&aBlock);
  v48 = v52;
  v57 = v1;

  v58 = swift_allocObject();
  *(v58 + 16) = a1;
  *&aBlock.tx = sub_20BFC09D0;
  *&aBlock.ty = v58;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20B5E3874;
  *&aBlock.d = &block_descriptor_7_1;
  v50 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v55 animateWithDuration:v47 animations:v50 completion:v54];
LABEL_12:
  _Block_release(v50);
  _Block_release(v47);
}

void sub_20BFC0778(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 setAlpha_];

    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      v6[0] = 0x3FF0000000000000;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = 0x3FF0000000000000;
      v6[4] = 0;
      v6[5] = 0;
      [v4 setTransform_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BFC0820(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 setAlpha_];

    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      CGAffineTransformMakeScale(&v6, 0.88, 0.88);
      [v5 setTransform_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_20BFC0968()
{
  v1 = *(v0 + 16);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition_];
}

uint64_t ShareSheetError.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BFC0A60()
{
  result = qword_27C7715D0;
  if (!qword_27C7715D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7715D0);
  }

  return result;
}

uint64_t sub_20BFC0AC4(uint64_t a1)
{
  *(v1 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC0B60, 0, 0);
}

uint64_t sub_20BFC0B60()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_20BFC0C50;

    return sub_20BFC5134();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BFC0C50()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_20BFC0DA8;
  v4 = *(v1 + 48);

  return sub_20B523A0C(v4);
}

uint64_t sub_20BFC0DA8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);

  sub_20B520158(v2, &unk_27C76A970, &qword_20C14FC10);

  return MEMORY[0x2822009F8](sub_20BFC54CC, v1, 0);
}

uint64_t sub_20BFC0EE4(uint64_t a1)
{
  *(v1 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC0F80, 0, 0);
}

uint64_t sub_20BFC0F80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_20BFC1070;

    return sub_20BFC5134();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BFC1070()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_20BFC11C8;
  v4 = *(v1 + 48);

  return sub_20B523A0C(v4);
}

uint64_t sub_20BFC11C8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);

  sub_20B520158(v2, &unk_27C76A970, &qword_20C14FC10);

  return MEMORY[0x2822009F8](sub_20BFC1304, v1, 0);
}

uint64_t sub_20BFC1304()
{
  swift_getObjectType();
  sub_20BCD7B4C();
  sub_20C13A764();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BFC13A8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_20C13BB84();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC1468, v1, 0);
}

uint64_t sub_20BFC1468()
{
  v1 = *(v0[12] + 176);
  v0[16] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[17] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    *v2 = v0;
    v2[1] = sub_20BFC15D4;
    v5 = v0[11];
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v5, v1, v3, v4, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_20BFC1768;
    v8 = v0[11];

    return sub_20B523A0C(v8);
  }
}

uint64_t sub_20BFC15D4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_20BFC1878;
  }

  else
  {
    v4 = sub_20BFC1700;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20BFC1700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BFC1768()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BFC1878()
{
  swift_getErrorValue();
  v1 = sub_20C134E24();
  v0[5] = v1;
  v0[6] = sub_20BC04434();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D511A8], v1);
  v3 = sub_20C13E0D4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[18];
  if (v3)
  {
  }

  else
  {
    sub_20C13B454();
    v5 = v4;
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1D4();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[18];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v9;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_20B517000, v6, v7, "[ActiveWorkoutPlanProvider] Failed to query workout plan with error: %@", v10, 0xCu);
      sub_20B520158(v11, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v11, -1, -1);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    else
    {
    }

    (*(v0[14] + 8))(v0[15], v0[13]);
  }

  v14 = v0[11];
  v15 = sub_20C133954();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_20BFC1AFC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20C13BB84();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC1BBC, v1, 0);
}

uint64_t sub_20BFC1BBC()
{
  v1 = *(v0[3] + 184);
  v0[7] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[8] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    *v2 = v0;
    v2[1] = sub_20BFC1D28;
    v5 = v0[2];
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v5, v1, v3, v4, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_20BFC1EBC;
    v8 = v0[2];

    return sub_20BFC3B94(v8);
  }
}

uint64_t sub_20BFC1D28()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_20BFC1FCC;
  }

  else
  {
    v4 = sub_20BFC1E54;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20BFC1E54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BFC1EBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BFC1FCC(uint64_t a1)
{
  v2 = v1[9];
  sub_20C13B454();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20B517000, v4, v5, "[ActiveWorkoutPlanProvider] Failed to query workout plan template with error: %@", v8, 0xCu);
    sub_20B520158(v9, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  else
  {
  }

  v12 = v1[2];
  (*(v1[5] + 8))(v1[6], v1[4]);
  v13 = sub_20C135814();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

  v14 = v1[1];

  return v14();
}

uint64_t sub_20BFC21AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = sub_20C133954();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v2[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[11] = v4;
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_20BFC2338;

  return sub_20BFC13A8(v4);
}

uint64_t sub_20BFC2338()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_20BFC2448, v1, 0);
}

uint64_t sub_20BFC2448()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  sub_20B52F9E8(v0[11], v1, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20B520158(v0[11], &unk_27C76A970, &qword_20C14FC10);
    v4 = v0[2];
    sub_20B520158(v0[10], &unk_27C76A970, &qword_20C14FC10);
    v5 = sub_20C1364E4();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[10], v0[6]);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_20BFC264C;
    v9 = v0[5];

    return sub_20BFC1AFC(v9);
  }
}

uint64_t sub_20BFC264C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_20BFC275C, v1, 0);
}

uint64_t sub_20BFC275C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  (*(v3 + 16))(v0[8], v1, v2);
  sub_20B52F9E8(v4, v5, &unk_27C762300, &unk_20C151350);
  sub_20C1364B4();
  sub_20B520158(v4, &unk_27C762300, &unk_20C151350);
  (*(v3 + 8))(v1, v2);
  v6 = v0[2];
  sub_20B520158(v0[11], &unk_27C76A970, &qword_20C14FC10);
  v7 = sub_20C1364E4();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20BFC28F8()
{
  v1[2] = v0;
  v2 = sub_20C13BB84();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_20C136104();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_20C137294();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_20C132EE4();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v6 = sub_20C133954();
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v1[18] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[19] = v7;
  v8 = swift_task_alloc();
  v1[20] = v8;
  *v8 = v1;
  v8[1] = sub_20BFC2BA4;

  return sub_20BFC13A8(v7);
}

uint64_t sub_20BFC2BA4()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_20BFC2CB4, v1, 0);
}

uint64_t sub_20BFC2CB4()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  sub_20B52F9E8(v0[19], v1, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20B520158(v0[18], &unk_27C76A970, &qword_20C14FC10);
    sub_20B520158(v0[19], &unk_27C76A970, &qword_20C14FC10);

    v4 = v0[1];
    v5 = MEMORY[0x277D84FA0];

    return v4(v5);
  }

  else
  {
    v7 = v0[2];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v8 = v7[20];
    v9 = v7[21];
    __swift_project_boxed_opaque_existential_1(v7 + 17, v8);
    sub_20C133804();
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_20BFC2EC4;
    v11 = v0[14];

    return MEMORY[0x2821ADED8](v11, v8, v9);
  }
}

uint64_t sub_20BFC2EC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 96);
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 16);
  if (v1)
  {
    v9 = sub_20BFC3360;
  }

  else
  {
    v9 = sub_20BFC3054;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

void sub_20BFC3054()
{
  v1 = v0[10];
  v2 = v0[22];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[22] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v27 = (v0[7] + 8);
  v28 = v0[22];

  v10 = 0;
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v10;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = v0[8];
    v13 = v0[6];
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(v1 + 72);
    (*(v1 + 16))(v0[11], *(v28 + 48) + v15 * (v14 | (v10 << 6)), v0[9]);
    sub_20C137264();
    v16 = sub_20C1360F4();
    (*v27)(v12, v13);
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_20BC0825C(0, v26[2] + 1, 1, v26);
      }

      v18 = v26[2];
      v17 = v26[3];
      if (v18 >= v17 >> 1)
      {
        v26 = sub_20BC0825C((v17 > 1), v18 + 1, 1, v26);
      }

      v19 = v0[11];
      v20 = v0[9];
      v26[2] = v18 + 1;
      (*(v1 + 32))(v26 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + v18 * v15, v19, v20);
    }

    else
    {
      (*(v1 + 8))(v0[11], v0[9]);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v22 = v0[16];
  v21 = v0[17];
  v23 = v0[15];

  v24 = sub_20B716824(v26);

  (*(v22 + 8))(v21, v23);
  sub_20B520158(v0[19], &unk_27C76A970, &qword_20C14FC10);

  v25 = v0[1];

  v25(v24);
}

uint64_t sub_20BFC3360(uint64_t a1)
{
  v2 = v1[23];
  sub_20C13B454();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20B517000, v4, v5, "[ActiveWorkoutPlanProvider] Failed to query completed references with error: %@", v7, 0xCu);
    sub_20B520158(v8, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);
  }

  v11 = v1[23];
  v13 = v1[16];
  v12 = v1[17];
  v14 = v1[15];
  v16 = v1[4];
  v15 = v1[5];
  v17 = v1[3];

  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);
  sub_20B520158(v1[19], &unk_27C76A970, &qword_20C14FC10);

  v18 = v1[1];
  v19 = MEMORY[0x277D84FA0];

  return v18(v19);
}

uint64_t sub_20BFC3574()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_20BFC3684, v1, 0);
}

uint64_t sub_20BFC3684()
{
  v1 = v0[18];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *v1;
    swift_getErrorValue();
    v3 = sub_20C134E24();
    v0[5] = v3;
    v0[6] = sub_20BC04434();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D511A8], v3);
    v5 = sub_20C13E0D4();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v5)
    {
      sub_20C13B454();
      v6 = sub_20C13BB74();
      v7 = sub_20C13D1F4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20B517000, v6, v7, "[ActiveWorkoutPlanDataProvider] No active workout plan", v8, 2u);
        MEMORY[0x20F2F6A40](v8, -1, -1);
      }

      else
      {
      }

      v17 = v0[11];
      (*(v0[14] + 8))(v0[16], v0[13]);
    }

    else
    {
      sub_20C13B454();
      v10 = v2;
      v11 = sub_20C13BB74();
      v12 = sub_20C13D1D4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = v2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        _os_log_impl(&dword_20B517000, v11, v12, "[ActiveWorkoutPlanDataProvider] Failed to fetch active workout plan with error: %@", v13, 0xCu);
        sub_20B520158(v14, &unk_27C762E30, &unk_20C150580);
        MEMORY[0x20F2F6A40](v14, -1, -1);
        MEMORY[0x20F2F6A40](v13, -1, -1);
      }

      else
      {
      }

      v18 = v0[12];
      v17 = v0[11];
      (*(v0[14] + 8))(v0[15], v0[13]);
      *(v18 + 176) = 0;
    }

    v19 = sub_20C133954();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  else
  {
    v9 = v0[11];

    sub_20B5DF134(v1, v9, &unk_27C76A970, &qword_20C14FC10);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_20BFC3A1C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20BFC3B30;
  }

  else
  {
    v2 = sub_20B523F48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BFC3B30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BFC3B94(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_20C13BB84();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7715D8, &unk_20C187C78);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC3CD4, v1, 0);
}

uint64_t sub_20BFC3CD4(uint64_t a1)
{
  v2 = v1[19];
  v3 = v1[12];
  sub_20C13CDC4();
  v4 = sub_20C13CDF4();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v7 = sub_20B6157E4(0, 0, v2, &unk_20C187C90, v6);
  v1[20] = v7;
  *(v3 + 184) = v7;

  v8 = swift_task_alloc();
  v1[21] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  *v8 = v1;
  v8[1] = sub_20BFC3E88;
  v11 = v1[18];
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v11, v7, v9, v10, v12);
}

uint64_t sub_20BFC3E88()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_20BFC3F98, v1, 0);
}

uint64_t sub_20BFC3F98()
{
  v1 = v0[18];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *v1;
    swift_getErrorValue();
    v3 = sub_20C134E24();
    v0[5] = v3;
    v0[6] = sub_20BC04434();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D51198], v3);
    v5 = sub_20C13E0D4();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v5)
    {
      sub_20C13B454();
      v6 = sub_20C13BB74();
      v7 = sub_20C13D1F4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20B517000, v6, v7, "[ActiveWorkoutPlanDataProvider] No workout plan template", v8, 2u);
        MEMORY[0x20F2F6A40](v8, -1, -1);
      }

      else
      {
      }

      v17 = v0[11];
      (*(v0[14] + 8))(v0[16], v0[13]);
    }

    else
    {
      sub_20C13B454();
      v10 = v2;
      v11 = sub_20C13BB74();
      v12 = sub_20C13D1D4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = v2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        _os_log_impl(&dword_20B517000, v11, v12, "[ActiveWorkoutPlanDataProvider] Failed to fetch template for active plan with error: %@", v13, 0xCu);
        sub_20B520158(v14, &unk_27C762E30, &unk_20C150580);
        MEMORY[0x20F2F6A40](v14, -1, -1);
        MEMORY[0x20F2F6A40](v13, -1, -1);
      }

      else
      {
      }

      v18 = v0[12];
      v17 = v0[11];
      (*(v0[14] + 8))(v0[15], v0[13]);
      *(v18 + 184) = 0;
    }

    v19 = sub_20C135814();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  else
  {
    v9 = v0[11];

    sub_20B5DF134(v1, v9, &unk_27C762300, &unk_20C151350);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_20BFC4330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  v5 = sub_20C13BB84();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_20C133954();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC4490, 0, 0);
}

uint64_t sub_20BFC4490()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[24] = v2;
    *v2 = v0;
    v2[1] = sub_20BFC493C;
    v3 = v0[22];

    return sub_20BFC13A8(v3);
  }

  (*(v0[19] + 56))(v0[22], 1, 1, v0[18]);
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  sub_20B52F9E8(v0[22], v5, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v0[21], &unk_27C76A970, &qword_20C14FC10);
    sub_20C13B454();
    v8 = sub_20C13BB74();
    v9 = sub_20C13D1F4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20B517000, v8, v9, "[ActiveWorkoutPlanDataProvider] No active workout plan. Returning nil template", v10, 2u);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    v11 = v0[22];
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[15];
    v15 = v0[13];

    (*(v13 + 8))(v12, v14);
    goto LABEL_14;
  }

  (*(v0[19] + 32))(v0[20], v0[21], v0[18]);
  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (!v16)
  {
    v11 = v0[22];
    v15 = v0[13];
    (*(v0[19] + 8))(v0[20], v0[18]);
LABEL_14:
    sub_20B520158(v11, &unk_27C76A970, &qword_20C14FC10);
    v25 = sub_20C135814();
    (*(*(v25 - 8) + 56))(v15, 1, 1, v25);

    v26 = v0[1];

    return v26();
  }

  sub_20B51CC64(v16 + 136, (v0 + 2));

  v17 = v0[5];
  v18 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769650, &unk_20C168BB0);
  v19 = sub_20C132EE4();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20C14F980;
  sub_20C133854();
  v23 = sub_20BE8D710(v22);
  v0[25] = v23;
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v24 = swift_task_alloc();
  v0[26] = v24;
  *v24 = v0;
  v24[1] = sub_20BFC4E34;

  return MEMORY[0x2821ADEF0](v23, v17, v18);
}

uint64_t sub_20BFC493C()
{

  return MEMORY[0x2822009F8](sub_20BFC4A54, 0, 0);
}

uint64_t sub_20BFC4A54()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  sub_20B52F9E8(v0[22], v1, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20B520158(v0[21], &unk_27C76A970, &qword_20C14FC10);
    sub_20C13B454();
    v4 = sub_20C13BB74();
    v5 = sub_20C13D1F4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20B517000, v4, v5, "[ActiveWorkoutPlanDataProvider] No active workout plan. Returning nil template", v6, 2u);
      MEMORY[0x20F2F6A40](v6, -1, -1);
    }

    v7 = v0[22];
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    v11 = v0[13];

    (*(v9 + 8))(v8, v10);
    goto LABEL_10;
  }

  (*(v0[19] + 32))(v0[20], v0[21], v0[18]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v7 = v0[22];
    v11 = v0[13];
    (*(v0[19] + 8))(v0[20], v0[18]);
LABEL_10:
    sub_20B520158(v7, &unk_27C76A970, &qword_20C14FC10);
    v21 = sub_20C135814();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);

    v22 = v0[1];

    return v22();
  }

  sub_20B51CC64(Strong + 136, (v0 + 2));

  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769650, &unk_20C168BB0);
  v15 = sub_20C132EE4();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14F980;
  sub_20C133854();
  v19 = sub_20BE8D710(v18);
  v0[25] = v19;
  swift_setDeallocating();
  (*(v16 + 8))(v18 + v17, v15);
  swift_deallocClassInstance();
  v20 = swift_task_alloc();
  v0[26] = v20;
  *v20 = v0;
  v20[1] = sub_20BFC4E34;

  return MEMORY[0x2821ADEF0](v19, v13, v14);
}

uint64_t sub_20BFC4E34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_20BFC5070;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_20BFC4F80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BFC4F80()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  sub_20BEDD6DC(v0[28], v0[13]);

  (*(v3 + 8))(v2, v4);
  sub_20B520158(v1, &unk_27C76A970, &qword_20C14FC10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BFC5070()
{
  v1 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_20B520158(v1, &unk_27C76A970, &qword_20C14FC10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20BFC5154()
{
  v1 = *(v0 + 16);
  if (*(v1 + 176))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    sub_20C13CE34();
  }

  v2 = *(v0 + 16);
  *(v1 + 176) = 0;

  if (*(v2 + 184))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    sub_20C13CE34();
  }

  *(v2 + 184) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20BFC52A0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20BFC52F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BFC4330(a1, v4, v5, v6);
}

uint64_t sub_20BFC53AC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BFC0AC4(v0);
}

uint64_t sub_20BFC543C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BFC0EE4(v0);
}

id UILabel.withWordWrapping(numberOfLines:)(uint64_t a1)
{
  [v1 setLineBreakMode_];
  [v4 setNumberOfLines_];

  return v4;
}

id UILabel.withTightening()()
{
  [v0 setAllowsDefaultTighteningForTruncation_];

  return v2;
}

id UILabel.withFont(_:)(uint64_t a1)
{
  [v1 setFont_];

  return v3;
}

id UILabel.withTextColor(_:)(uint64_t a1)
{
  [v1 setTextColor_];

  return v3;
}

id UILabel.forDynamicType()()
{
  [v0 setAdjustsFontForContentSizeCategory_];

  return v2;
}

id UILabel.withTextAlignment(_:)(uint64_t a1)
{
  [v1 setTextAlignment_];

  return v3;
}

id UILabel.withNumberOfLines(_:)(uint64_t a1)
{
  [v1 setNumberOfLines_];

  return v3;
}

id UILabel.withLineBreakMode(_:)(uint64_t a1)
{
  [v1 setLineBreakMode_];

  return v3;
}

id UILabel.withText(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_20C13C914();
  }

  else
  {
    v2 = 0;
  }

  [v4 setText_];

  return v4;
}

id UILabel.adjustingFontToFitWidth()()
{
  [v0 setAdjustsFontSizeToFitWidth_];

  return v2;
}

id UILabel.withMinimumScaleFactor(_:)()
{
  [v0 setMinimumScaleFactor_];

  return v2;
}

uint64_t ARUIRingType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 1702260589;
    }

    if (a1 == 3)
    {
      return 7105633;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x646E617473;
    }

    if (a1 == 1)
    {
      return 0x6573696372657865;
    }
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BFC58F8()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x646E617473;
    }

    if (v1 == 1)
    {
      return 0x6573696372657865;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 1702260589;
  }

  if (v1 != 3)
  {
LABEL_11:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  return 7105633;
}

void sub_20BFC59D0(char a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_lazyLockupFetcher);

  sub_20C02F3E0(v8, v7, 0, 0);
  v10 = v9;

  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_decriptorIdentifier);
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_decriptorIdentifier + 8);
  v34 = 0uLL;
  LOBYTE(v35) = 1;
  *(&v35 + 1) = 0;
  *&v36 = 0;
  WORD4(v36) = 128;
  v37 = 0uLL;
  *&v38 = v11;
  *(&v38 + 1) = v12;
  v39 = 0uLL;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = v10;
  *&v41[0] = MEMORY[0x277D84F90];
  *(v41 + 8) = 0u;
  *(&v41[1] + 8) = 0u;
  *(&v41[2] + 1) = 0;
  v42 = 2;
  nullsub_1();
  v13 = v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 144);
  v43[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 128);
  v43[9] = v14;
  v44 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 160);
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 80);
  v43[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 64);
  v43[5] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 112);
  v43[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 96);
  v43[7] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 16);
  v43[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row);
  v43[1] = v17;
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 48);
  v43[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 32);
  v43[3] = v18;
  v19 = v41[2];
  *(v13 + 128) = v41[1];
  *(v13 + 144) = v19;
  *(v13 + 160) = v42;
  v20 = v39;
  *(v13 + 64) = v38;
  *(v13 + 80) = v20;
  v21 = v41[0];
  *(v13 + 96) = v40;
  *(v13 + 112) = v21;
  v22 = v35;
  *v13 = v34;
  *(v13 + 16) = v22;
  v23 = v37;
  *(v13 + 32) = v36;
  *(v13 + 48) = v23;

  sub_20B634408(v43);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61DF90(v1, Strong);
      if (v27)
      {
        v29 = v27;
        v30 = v28;
        v33 = v26;
        v31 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v32 = sub_20C13C584();
        (*(v4 + 8))(v6, v3);
        if ((v32 & 1) == 0)
        {
          __break(1u);
          return;
        }

        if (a1 < 0)
        {
          sub_20C10DDE0(v31, v33, a1 & 1, v25);
        }

        else
        {
          sub_20B621860(v33, v29, v30, v31, a1 & 1, v25);
        }
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BFC5CBC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_20BFC5DC4()
{
  sub_20BFC5CBC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChartGalleryShelf(uint64_t a1)
{
  result = qword_27C7715E8;
  if (!qword_27C7715E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFC5E70(uint64_t a1)
{
  result = sub_20C132EE4();
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

uint64_t sub_20BFC5F40()
{
  sub_20BFC602C(0);
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BFC602C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  sub_20C02BC6C(*(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_placeholders), v10);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20BFC6B48;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B5DF3B8;
  *(v16 + 24) = v15;
  (*(v5 + 16))(v7, v10, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v5 + 32))(v19 + v17, v7, v4);
  v20 = (v19 + v18);
  *v20 = sub_20B66A8B4;
  v20[1] = v16;

  sub_20C137C94();
  v21 = *(v5 + 8);
  v21(v10, v4);
  v22 = sub_20C137CB4();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v22(sub_20B5DF6DC, v23);

  return (v21)(v13, v4);
}

uint64_t sub_20BFC6318(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v7;
    v35 = v10;
    sub_20C13B534();
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20B517000, v17, v18, "[ChartGalleryShelf] archived sessions updated, updating shelf", v19, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    (*(v12 + 8))(v14, v11);

    v20 = sub_20C13AEB4();
    v21 = v34;
    sub_20C02CCD0(v20, v34);

    v22 = swift_allocObject();
    *(v22 + 16) = sub_20BFC6B74;
    *(v22 + 24) = v16;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B849B38;
    *(v23 + 24) = v22;
    v24 = v33;
    (*(v3 + 16))(v33, v21, v2);
    v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v26 = swift_allocObject();
    (*(v3 + 32))(v26 + v25, v24, v2);
    v27 = (v26 + ((v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v27 = sub_20B66A8B4;
    v27[1] = v23;

    v28 = v35;
    sub_20C137C94();
    v29 = *(v3 + 8);
    v29(v21, v2);
    v30 = sub_20C137CB4();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    v30(sub_20B5DF6DC, v31);

    return (v29)(v28, v2);
  }

  return result;
}

uint64_t sub_20BFC6748(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BFC6B38;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20BFC6A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BFC6A84@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
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

uint64_t sub_20BFC6B78()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

void sub_20BFC6BB8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_20C13DFF4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_20C13DFF4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_20BFC6CA8(uint64_t a1)
{
  v2 = sub_20BFC7314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20BFC6CE4(uint64_t a1)
{
  v2 = sub_20BFC7314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20BFC6D2C(uint64_t a1)
{
  v2 = sub_20BFC7420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20BFC6D68(uint64_t a1)
{
  v2 = sub_20BFC7420();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_20BFC6DA4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_20C13DFF4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_20BFC6E24(uint64_t a1)
{
  v2 = sub_20BFC73CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20BFC6E60(uint64_t a1)
{
  v2 = sub_20BFC73CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CatalogTipPlayerConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7715F8, &qword_20C187DC0);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771600, &qword_20C187DC8);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - v5;
  v21 = type metadata accessor for CatalogTipPlaybackContent(0);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771608, &qword_20C187DD0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20BFC7314();
  sub_20C13E1F4();
  sub_20BFC7368(v28, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = 1;
    sub_20BFC73CC();
    v15 = v23;
    sub_20C13DF24();
    v16 = v27;
    sub_20C13DF54();

    (*(v26 + 8))(v15, v16);
  }

  else
  {
    sub_20BFC7A84(v10, v7, type metadata accessor for CatalogTipPlaybackContent);
    v29 = 0;
    sub_20BFC7420();
    v17 = v22;
    sub_20C13DF24();
    sub_20BFC83CC(&qword_27C771628, type metadata accessor for CatalogTipPlaybackContent, &protocol conformance descriptor for CatalogTipPlaybackContent);
    v18 = v25;
    sub_20C13DF64();
    (*(v24 + 8))(v17, v18);
    sub_20BFC87C4(v7, type metadata accessor for CatalogTipPlaybackContent);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t type metadata accessor for CatalogTipPlayerConfiguration(uint64_t a1)
{
  result = qword_281100C10;
  if (!qword_281100C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20BFC7314()
{
  result = qword_27C771610;
  if (!qword_27C771610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771610);
  }

  return result;
}

uint64_t sub_20BFC7368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BFC73CC()
{
  result = qword_27C771618;
  if (!qword_27C771618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771618);
  }

  return result;
}

unint64_t sub_20BFC7420()
{
  result = qword_27C771620;
  if (!qword_27C771620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771620);
  }

  return result;
}

uint64_t CatalogTipPlayerConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771630, &qword_20C187DD8);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771638, &qword_20C187DE0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771640, &qword_20C187DE8);
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v43 - v8;
  v10 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  MEMORY[0x28223BE20](v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v43 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v43 - v17;
  v19 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_20BFC7314();
  v20 = v54;
  sub_20C13E1E4();
  if (!v20)
  {
    v44 = v12;
    v45 = v15;
    v54 = v18;
    v21 = v10;
    v22 = v52;
    v23 = sub_20C13DF14();
    v24 = v9;
    if (*(v23 + 16) == 1)
    {
      v43[0] = v21;
      v43[1] = v23;
      if (*(v23 + 32))
      {
        v57 = 1;
        sub_20BFC73CC();
        v25 = v50;
        sub_20C13DEB4();
        v26 = v53;
        v27 = v54;
        v28 = v22;
        v29 = v25;
        v30 = v49;
        v51 = sub_20C13DEF4();
        v40 = v39;
        (*(v48 + 8))(v29, v30);
        (*(v26 + 8))(v24, v7);
        swift_unknownObjectRelease();
        v41 = v44;
        *v44 = v51;
        v41[1] = v40;
        swift_storeEnumTagMultiPayload();
        v42 = v41;
      }

      else
      {
        v56 = 0;
        sub_20BFC7420();
        v34 = v51;
        sub_20C13DEB4();
        v35 = v53;
        v27 = v54;
        v28 = v22;
        type metadata accessor for CatalogTipPlaybackContent(0);
        v50 = v7;
        sub_20BFC83CC(&qword_27C771650, type metadata accessor for CatalogTipPlaybackContent, &protocol conformance descriptor for CatalogTipPlaybackContent);
        v37 = v45;
        v38 = v47;
        sub_20C13DF04();
        (*(v46 + 8))(v34, v38);
        (*(v35 + 8))(v24, v50);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v42 = v37;
      }

      sub_20BFC7A84(v42, v27, type metadata accessor for CatalogTipPlayerConfiguration);
      sub_20BFC7A84(v27, v28, type metadata accessor for CatalogTipPlayerConfiguration);
    }

    else
    {
      v31 = sub_20C13DCF4();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771648, &qword_20C187DF0);
      *v33 = v21;
      sub_20C13DEC4();
      sub_20C13DCE4();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v53 + 8))(v9, v7);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_20BFC7A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void CatalogTipPlayerConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CatalogTipPlaybackContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BFC7368(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    sub_20BFC7A84(v9, v6, type metadata accessor for CatalogTipPlaybackContent);
    MEMORY[0x20F2F58E0](0);
    CatalogTipPlaybackContent.hash(into:)(a1);
    sub_20BFC87C4(v6, type metadata accessor for CatalogTipPlaybackContent);
  }
}

uint64_t CatalogTipPlayerConfiguration.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CatalogTipPlaybackContent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20BFC7368(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    sub_20BFC7A84(v7, v4, type metadata accessor for CatalogTipPlaybackContent);
    MEMORY[0x20F2F58E0](0);
    CatalogTipPlaybackContent.hash(into:)(v10);
    sub_20BFC87C4(v4, type metadata accessor for CatalogTipPlaybackContent);
  }

  return sub_20C13E1B4();
}

void sub_20BFC7DE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for CatalogTipPlaybackContent(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BFC7368(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    sub_20BFC7A84(v10, v7, type metadata accessor for CatalogTipPlaybackContent);
    MEMORY[0x20F2F58E0](0);
    CatalogTipPlaybackContent.hash(into:)(a1);
    sub_20BFC87C4(v7, type metadata accessor for CatalogTipPlaybackContent);
  }
}

uint64_t sub_20BFC7F2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for CatalogTipPlaybackContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20BFC7368(v3, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    sub_20BFC7A84(v9, v6, type metadata accessor for CatalogTipPlaybackContent);
    MEMORY[0x20F2F58E0](0);
    CatalogTipPlaybackContent.hash(into:)(v12);
    sub_20BFC87C4(v6, type metadata accessor for CatalogTipPlaybackContent);
  }

  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI29CatalogTipPlayerConfigurationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipPlaybackContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7716A8, &unk_20C188250);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v17 = (&v24 + *(v16 + 56) - v14);
  sub_20BFC7368(a1, &v24 - v14);
  sub_20BFC7368(a2, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20BFC7368(v15, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20BFC7A84(v17, v6, type metadata accessor for CatalogTipPlaybackContent);
      v22 = static CatalogTipPlaybackContent.== infix(_:_:)();
      sub_20BFC87C4(v6, type metadata accessor for CatalogTipPlaybackContent);
      sub_20BFC87C4(v12, type metadata accessor for CatalogTipPlaybackContent);
      sub_20BFC87C4(v15, type metadata accessor for CatalogTipPlayerConfiguration);
      return v22 & 1;
    }

    sub_20BFC87C4(v12, type metadata accessor for CatalogTipPlaybackContent);
    goto LABEL_12;
  }

  sub_20BFC7368(v15, v9);
  v19 = *v9;
  v18 = v9[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_20BFC875C(v15);
    goto LABEL_13;
  }

  if (v19 == *v17 && v18 == v17[1])
  {

    goto LABEL_16;
  }

  v21 = sub_20C13DFF4();

  if (v21)
  {
LABEL_16:
    sub_20BFC87C4(v15, type metadata accessor for CatalogTipPlayerConfiguration);
    v22 = 1;
    return v22 & 1;
  }

  sub_20BFC87C4(v15, type metadata accessor for CatalogTipPlayerConfiguration);
LABEL_13:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_20BFC83CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20BFC8448()
{
  result = qword_27C771660;
  if (!qword_27C771660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771660);
  }

  return result;
}

unint64_t sub_20BFC84A0()
{
  result = qword_27C771668;
  if (!qword_27C771668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771668);
  }

  return result;
}

unint64_t sub_20BFC84F8()
{
  result = qword_27C771670;
  if (!qword_27C771670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771670);
  }

  return result;
}

unint64_t sub_20BFC8550()
{
  result = qword_27C771678;
  if (!qword_27C771678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771678);
  }

  return result;
}

unint64_t sub_20BFC85A8()
{
  result = qword_27C771680;
  if (!qword_27C771680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771680);
  }

  return result;
}

unint64_t sub_20BFC8600()
{
  result = qword_27C771688;
  if (!qword_27C771688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771688);
  }

  return result;
}

unint64_t sub_20BFC8658()
{
  result = qword_27C771690;
  if (!qword_27C771690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771690);
  }

  return result;
}

unint64_t sub_20BFC86B0()
{
  result = qword_27C771698;
  if (!qword_27C771698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771698);
  }

  return result;
}

unint64_t sub_20BFC8708()
{
  result = qword_27C7716A0;
  if (!qword_27C7716A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7716A0);
  }

  return result;
}

uint64_t sub_20BFC875C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7716A8, &unk_20C188250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BFC87C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20BFC88A8()
{
  result = qword_27C7716B0;
  if (!qword_27C7716B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7716B0);
  }

  return result;
}

id NotificationConsentViewController.__allocating_init(dependencies:contentAvailability:)(uint64_t a1, __n128 a2, uint64_t a3)
{
  v3 = sub_20BFCBE74(a1, a3);

  return v3;
}

uint64_t sub_20BFC8958@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20B5E0E90;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20B584050(v4, v5);
}

uint64_t sub_20BFC89F8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20BFCC794;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20B584050(v3, v4);
  return sub_20B583ECC(v8, v9);
}

uint64_t NotificationConsentViewController.continueButtonHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_20B584050(*v1, v1[1]);
  return v2;
}

uint64_t NotificationConsentViewController.continueButtonHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_20B583ECC(v6, v7);
}

id NotificationConsentViewController.__allocating_init(contentAvailability:)(uint64_t a1)
{
  v3 = sub_20C135534();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  (*(v4 + 16))(v6, a1, v3);
  v7 = sub_20C1380F4();
  v8 = objc_allocWithZone(v1);
  v9 = sub_20BFC8CFC(v11, v6, v7);
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_20BFC8CFC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v59 = a3;
  v54 = a2;
  v55 = a1;
  ObjectType = swift_getObjectType();
  v58 = sub_20C13A814();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_scrollView;
  v7 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v6] = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_contentView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v9 &selRef_count + 2];
  *&v3[v8] = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_titleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 &selRef_count + 2];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = *MEMORY[0x277D743F8];
  v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  v53 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v15 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v16 = swift_initStackObject();
  v17 = MEMORY[0x277D74430];
  *(v16 + 16) = v53;
  v18 = *v17;
  *(v16 + 32) = *v17;
  *(v16 + 40) = v12;
  v19 = v15;
  v20 = v18;
  v21 = sub_20B6B134C(v16);
  swift_setDeallocating();
  sub_20B520158(v16 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v21;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20BFCC7BC(&qword_27C7618A0, type metadata accessor for AttributeName, &unk_20C14D960);
  v22 = sub_20C13C744();

  v23 = [v13 fontDescriptorByAddingAttributes_];

  v24 = objc_opt_self();
  v25 = [v24 fontWithDescriptor:v23 size:0.0];

  [v11 setFont_];
  v26 = objc_opt_self();
  v27 = [v26 whiteColor];
  [v11 setTextColor_];

  LODWORD(v28) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v29];

  *&v4[v10] = v11;
  v30 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_bodyLabel;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 setAdjustsFontForContentSizeCategory_];
  v32 = [v24 preferredFontForTextStyle_];
  [v31 setFont_];

  v33 = [v26 secondaryLabelColor];
  v34 = v54;
  [v31 setTextColor_];

  LODWORD(v35) = 1148846080;
  [v31 setContentHuggingPriority:1 forAxis:v35];
  LODWORD(v36) = 1148846080;
  [v31 setContentCompressionResistancePriority:1 forAxis:v36];

  *&v4[v30] = v31;
  v37 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButton;
  v38 = [objc_opt_self() boldButton];
  LODWORD(v39) = 1148846080;
  [v38 setContentHuggingPriority:1 forAxis:v39];
  v40 = v55;
  LODWORD(v41) = 1148846080;
  [v38 setContentCompressionResistancePriority:1 forAxis:v41];

  *&v4[v37] = v38;
  v42 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_fallbackLocalizationBundle;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v42] = [objc_opt_self() bundleForClass_];
  v44 = &v4[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler];
  *v44 = 0;
  v44[1] = 0;
  (*(v57 + 104))(v56, *MEMORY[0x277D4F070], v58);
  v62 = 1;
  sub_20C13A384();
  sub_20B52F9E8(v40, &v4[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_storefrontLocalizer], &qword_27C76AB58, &unk_20C16E890);
  v4[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_platform] = v59;
  v45 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_contentAvailability;
  v46 = sub_20C135534();
  v47 = *(v46 - 8);
  (*(v47 + 16))(&v4[v45], v34, v46);
  sub_20C1380F4();
  v48 = sub_20C138104();
  if (v48 == sub_20C138104())
  {
    v49 = type metadata accessor for DynamicHeightImageView();
  }

  else
  {
    type metadata accessor for NoIntrinsicImageView();
    v49 = swift_getObjCClassFromMetadata();
  }

  v50 = [objc_allocWithZone(v49) init];
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView] = v50;
  v61.receiver = v4;
  v61.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v61, sel_initWithNibName_bundle_, 0, 0);
  (*(v47 + 8))(v34, v46);
  sub_20B520158(v40, &qword_27C76AB58, &unk_20C16E890);
  return v51;
}

id NotificationConsentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

double NotificationConsentViewController.onContinue(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_20B583ECC(v6, v7);

  return result;
}

Swift::Void __swiftcall NotificationConsentViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v144 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v144 - v11;
  v154.receiver = v1;
  v154.super_class = ObjectType;
  objc_msgSendSuper2(&v154, sel_viewDidLoad, v10);
  v13 = [v1 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_27;
  }

  v14 = v13;
  v146 = objc_opt_self();
  v15 = [v146 secondarySystemGroupedBackgroundColor];
  [v14 setBackgroundColor_];

  [v1 setModalInPresentation_];
  v16 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView];
  v17 = [v1 traitCollection];
  v18 = sub_20BFCA81C(v17);

  [v16 setImage_];
  [v16 setClipsToBounds_];
  v148 = v16;
  [v16 setContentMode_];
  v19 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_titleLabel];
  v20 = sub_20BFCA908();
  [v19 setAttributedText_];

  [v19 setTextAlignment_];
  v149 = v19;
  [v19 setNumberOfLines_];
  v21 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_bodyLabel];
  v22 = v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_platform];
  v147 = v22;
  if (!v22)
  {
    sub_20BFCB290();
    goto LABEL_6;
  }

  if (v22 == 1)
  {
    sub_20BFCAAE8(0xD00000000000002FLL, 0x800000020C1B9970);
LABEL_6:
    v23 = sub_20C13C914();

    [v21 setText_];

    [v21 setTextAlignment_];
    v150 = v21;
    [v21 setNumberOfLines_];
    v24 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButton];
    [v24 addTarget:v1 action:sel_didTapContinueButton forControlEvents:64];
    sub_20BFCAAE8(0xD00000000000001DLL, 0x800000020C1B99A0);
    v25 = sub_20C13C914();

    [v24 setTitle:v25 forState:0];

    sub_20C13D884();
    v26 = sub_20C13D874();
    v27 = *(*(v26 - 8) + 48);
    if (v27(v12, 1, v26))
    {
      sub_20B52F9E8(v12, v5, &qword_27C764C60, &unk_20C156F50);
      sub_20C13D894();
      sub_20B520158(v12, &qword_27C764C60, &unk_20C156F50);
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      sub_20C13D774();
      sub_20C13D894();
    }

    sub_20C13D884();
    if (v27(v8, 1, v26))
    {
      sub_20B52F9E8(v8, v5, &qword_27C764C60, &unk_20C156F50);
      sub_20C13D894();
      sub_20B520158(v8, &qword_27C764C60, &unk_20C156F50);
    }

    else
    {
      v28 = [v146 secondarySystemBackgroundColor];
      sub_20C13D764();
      sub_20C13D894();
    }

    v29 = v150;
    v30 = [v1 view];
    if (v30)
    {
      v31 = v30;
      v32 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_scrollView];
      [v30 addSubview_];

      v33 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_contentView];
      [v32 addSubview_];
      [v33 addSubview_];
      [v33 addSubview_];
      [v33 addSubview_];
      [v33 addSubview_];
      v34 = [v1 view];
      if (v34)
      {
        v35 = v34;
        v145 = v24;
        [v34 directionalLayoutMargins];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;

        [v33 setDirectionalLayoutMargins_];
        v44 = 24.0;
        if (v147)
        {
          v44 = 74.0;
        }

        [v32 setDirectionalLayoutMargins_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20C1647C0;
        v46 = [v32 topAnchor];
        v47 = [v1 view];
        if (v47)
        {
          v48 = v47;
          v49 = [v47 topAnchor];

          v50 = [v46 constraintEqualToAnchor_];
          *(inited + 32) = v50;
          v51 = [v32 bottomAnchor];
          v52 = [v1 view];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 bottomAnchor];

            v55 = [v51 constraintEqualToAnchor_];
            *(inited + 40) = v55;
            v56 = [v32 leadingAnchor];
            v57 = [v1 view];
            if (v57)
            {
              v58 = v57;
              v59 = [v57 leadingAnchor];

              v60 = [v56 constraintEqualToAnchor_];
              *(inited + 48) = v60;
              v61 = [v32 trailingAnchor];
              v62 = [v1 view];
              v146 = v1;
              if (v62)
              {
                v63 = v62;
                v64 = [v62 trailingAnchor];

                v65 = [v61 constraintEqualToAnchor_];
                *(inited + 56) = v65;
                v66 = [v33 leadingAnchor];
                v67 = [v32 leadingAnchor];
                v68 = [v66 constraintEqualToAnchor_];

                *(inited + 64) = v68;
                v69 = [v33 trailingAnchor];
                v70 = [v32 trailingAnchor];
                v71 = [v69 constraintEqualToAnchor_];

                *(inited + 72) = v71;
                v72 = [v33 topAnchor];
                v73 = [v32 topAnchor];
                v74 = [v72 constraintEqualToAnchor_];

                *(inited + 80) = v74;
                v75 = [v33 bottomAnchor];
                v76 = [v32 bottomAnchor];
                v77 = [v75 constraintEqualToAnchor_];

                *(inited + 88) = v77;
                v78 = [v33 widthAnchor];
                v79 = v146;
                v80 = [v146 view];
                if (v80)
                {
                  v81 = v80;
                  v82 = [v80 widthAnchor];

                  v83 = [v78 constraintEqualToAnchor_];
                  *(inited + 96) = v83;
                  v84 = [v33 heightAnchor];
                  v85 = [v79 view];
                  if (v85)
                  {
                    v86 = v85;
                    v87 = [v85 heightAnchor];

                    v88 = [v84 constraintGreaterThanOrEqualToAnchor_];
                    *(inited + 104) = v88;
                    v89 = v149;
                    v90 = [v149 leadingAnchor];
                    v91 = [v32 layoutMarginsGuide];
                    v92 = [v91 leadingAnchor];

                    v93 = [v90 constraintEqualToAnchor_];
                    *(inited + 112) = v93;
                    v94 = [v89 trailingAnchor];
                    v95 = [v32 &selRef_startPrewarming + 1];
                    v96 = [v95 trailingAnchor];

                    v97 = [v94 constraintEqualToAnchor_];
                    *(inited + 120) = v97;
                    v98 = [v89 firstBaselineAnchor];
                    v99 = [v148 bottomAnchor];
                    v100 = 74.0;
                    if (!v147)
                    {
                      v100 = 64.0;
                    }

                    v101 = [v98 constraintEqualToAnchor:v99 constant:v100];

                    *(inited + 128) = v101;
                    v102 = [v89 centerXAnchor];
                    v103 = [v33 centerXAnchor];
                    v104 = [v102 constraintEqualToAnchor_];

                    *(inited + 136) = v104;
                    v105 = v150;
                    v106 = [v150 leadingAnchor];
                    v107 = [v32 layoutMarginsGuide];
                    v108 = [v107 leadingAnchor];

                    v109 = [v106 constraintEqualToAnchor_];
                    *(inited + 144) = v109;
                    v110 = [v105 trailingAnchor];
                    v111 = [v32 layoutMarginsGuide];
                    v112 = [v111 trailingAnchor];

                    v113 = [v110 constraintEqualToAnchor_];
                    *(inited + 152) = v113;
                    v114 = [v105 firstBaselineAnchor];
                    v115 = [v89 lastBaselineAnchor];
                    v116 = [v114 constraintEqualToAnchor:v115 constant:44.0];

                    *(inited + 160) = v116;
                    v117 = [v105 centerXAnchor];
                    v118 = [v33 centerXAnchor];
                    v119 = [v117 constraintEqualToAnchor_];

                    *(inited + 168) = v119;
                    v120 = v145;
                    v121 = [v145 leadingAnchor];
                    v122 = [v32 layoutMarginsGuide];
                    v123 = [v122 leadingAnchor];

                    v124 = [v121 constraintEqualToAnchor_];
                    *(inited + 176) = v124;
                    v125 = [v120 trailingAnchor];
                    v126 = [v32 layoutMarginsGuide];
                    v127 = [v126 trailingAnchor];

                    v128 = [v125 constraintEqualToAnchor_];
                    *(inited + 184) = v128;
                    v129 = [v120 widthAnchor];
                    v130 = [v129 constraintEqualToConstant_];

                    type metadata accessor for UILayoutPriority(0);
                    v152 = 1148846080;
                    v151 = 1065353216;
                    sub_20BFCC7BC(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
                    sub_20C13BBA4();
                    LODWORD(v131) = v153;
                    [v130 setPriority_];
                    *(inited + 192) = v130;
                    v132 = [v120 bottomAnchor];
                    v133 = [v33 &selRef_startPrewarming + 1];
                    v134 = [v133 bottomAnchor];

                    v135 = [v132 constraintEqualToAnchor:v134 constant:-55.0];
                    *(inited + 200) = v135;
                    v136 = [v120 topAnchor];
                    v137 = [v150 lastBaselineAnchor];
                    v138 = [v136 constraintGreaterThanOrEqualToAnchor:v137 constant:24.0];

                    *(inited + 208) = v138;
                    v139 = [v120 centerXAnchor];
                    v140 = [v146 view];
                    if (v140)
                    {
                      v141 = v140;
                      v142 = [v140 &selRef_handleMenuButtonTapped + 2];

                      v143 = [v139 constraintEqualToAnchor_];
                      *(inited + 216) = v143;
                      sub_20BFCAC54(inited);
                      swift_setDeallocating();
                      swift_arrayDestroy();
                      return;
                    }

                    goto LABEL_35;
                  }

LABEL_34:
                  __break(1u);
LABEL_35:
                  __break(1u);
                  goto LABEL_36;
                }

LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
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

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_36:
  sub_20C13DE24();
  __break(1u);
}

id sub_20BFCA81C(void *a1)
{
  swift_getObjectType();
  v3 = [a1 layoutDirection] == 1;
  _s9SeymourUI30NotificationConsentNameBuilderV08makeFileE08platform11rightToLeftSS0A4Core8PlatformO_SbtFZ_0(*(v1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_platform), v3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_20C13C914();

  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 withConfiguration:0];

  return v7;
}

id sub_20BFCA908()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  LODWORD(v1) = 0.5;
  [v0 setHyphenationFactor_];
  sub_20BFCAAE8(0xD00000000000001ALL, 0x800000020C1B9AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v3 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  *(inited + 64) = sub_20B51C88C(0, &qword_27C769D08, 0x277D74240);
  *(inited + 40) = v0;
  v4 = v3;
  v5 = v0;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C763978, &unk_20C163AF0);
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20BFCC7BC(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
  v8 = sub_20C13C744();

  v9 = [v6 initWithString:v7 attributes:v8];

  return v9;
}

uint64_t sub_20BFCAAE8(uint64_t a1, uint64_t a2)
{
  sub_20B52F9E8(v2 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_storefrontLocalizer, &v10, &qword_27C76AB58, &unk_20C16E890);
  if (v11)
  {
    sub_20B52E424(&v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v3 = sub_20C138D34();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_20B520158(&v10, &qword_27C76AB58, &unk_20C16E890);
    v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_fallbackLocalizationBundle);
    v5 = sub_20C13C914();
    v6 = sub_20C13C914();
    v7 = sub_20C13C914();
    v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

    v3 = sub_20C13C954();
  }

  return v3;
}

void sub_20BFCAC54(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_platform))
  {
    if (*(v1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_platform) != 1)
    {
      sub_20C13DE24();
      __break(1u);
      return;
    }

    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_scrollView);
    [v2 setContentInsetAdjustmentBehavior_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_20C14F580;
    v4 = [*(v1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView) heightAnchor];
    v5 = [v2 heightAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 multiplier:0.5];

    *(v3 + 32) = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C14FE90;
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView);
  v9 = [v8 leadingAnchor];
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_contentView);
  v11 = [v10 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor_];

  *(v7 + 32) = v12;
  v13 = [v8 trailingAnchor];
  v14 = [v10 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v7 + 40) = v15;
  v16 = [v8 topAnchor];
  v17 = [v10 topAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v7 + 48) = v18;
  v19 = [v8 centerXAnchor];
  v20 = [v10 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v7 + 56) = v21;
  v22 = objc_opt_self();

  sub_20B8D9310(v23);
  sub_20B8D9310(v3);
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v24 = sub_20C13CC54();

  [v22 activateConstraints_];
}

Swift::Void __swiftcall NotificationConsentViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v18.receiver = v1;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    v3 = isa;
    v4 = [(objc_class *)v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        v14 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView];
        v15 = sub_20BFCA81C(v13);
        [v14 setImage_];

        v3 = v15;
      }
    }
  }

  else
  {
    v16 = [v1 traitCollection];
    v17 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView];
    v3 = sub_20BFCA81C(v16);
    [v17 setImage_];
  }
}

uint64_t sub_20BFCB290()
{
  v0 = 0xD00000000000002ALL;
  v1 = sub_20C135534();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277D51A28], v1, v3);
  sub_20BFCC7BC(&qword_281103BB0, MEMORY[0x277D51A40], MEMORY[0x277D51A50]);
  sub_20C13CC34();
  sub_20C13CC34();
  if (v9[2] == v9[0] && v9[3] == v9[1])
  {
    (*(v2 + 8))(v5, v1);

    v6 = "NOTIFICATION_CONSENT_SUBTITLE";
  }

  else
  {
    v7 = sub_20C13DFF4();
    (*(v2 + 8))(v5, v1);

    v6 = "continueButtonHandler";
    if (v7)
    {
      v6 = "NOTIFICATION_CONSENT_SUBTITLE";
    }

    else
    {
      v0 = 0xD00000000000001DLL;
    }
  }

  return sub_20BFCAAE8(v0, v6 | 0x8000000000000000);
}

void sub_20BFCB4A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = sub_20C138104();
  if (v6 == sub_20C138104())
  {
    v7 = 39;
  }

  else
  {
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController__fitnessPlusNotificationSettingsEnabled, v2);
    sub_20C13A344();
    (*(v3 + 8))(v5, v2);
    if (LOBYTE(aBlock[0]))
    {
      v7 = 39;
    }

    else
    {
      v7 = 7;
    }
  }

  v8 = [objc_opt_self() currentNotificationCenter];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_20BFCC784;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B906664;
  aBlock[3] = &block_descriptor_169;
  v10 = _Block_copy(aBlock);

  [v8 requestAuthorizationWithOptions:v7 completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_20BFCB6C0(int a1, void *a2, uint64_t a3)
{
  v28 = a1;
  v5 = sub_20C13C4B4();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C4F4();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v15 = a2;
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1F4();

  if (os_log_type_enabled(v16, v17))
  {
    v26 = a3;
    v27 = v5;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 67109378;
    *(v18 + 4) = v28 & 1;
    *(v18 + 8) = 2112;
    if (a2)
    {
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v18 + 10) = v21;
    *v19 = v22;
    _os_log_impl(&dword_20B517000, v16, v17, "Notification authorization completed (granted: %{BOOL}d, error: %@", v18, 0x12u);
    sub_20B520158(v19, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v19, -1, -1);
    MEMORY[0x20F2F6A40](v18, -1, -1);
    a3 = v26;
    v5 = v27;
  }

  (*(v12 + 8))(v14, v11);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v23 = sub_20C13D374();
  aBlock[4] = sub_20BFCC78C;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_4;
  v24 = _Block_copy(aBlock);

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BFCC7BC(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v10, v7, v24);
  _Block_release(v24);

  (*(v31 + 8))(v7, v5);
  return (*(v29 + 8))(v10, v30);
}

void sub_20BFCBB14(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler;
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 8);
      sub_20B584050(v4, v5);

      v4();
      sub_20B583ECC(v4, v5);
    }

    else
    {
    }
  }
}

id NotificationConsentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id NotificationConsentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BFCBE74(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C135534();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20C133AA4();
  v7 = v11[0];
  sub_20B51CC64(v12, v11);
  (*(v4 + 104))(v6, *MEMORY[0x277D51A28], v3);
  v8 = objc_allocWithZone(type metadata accessor for NotificationConsentViewController(0));
  v9 = sub_20BFC8CFC(v11, v6, v7);
  (*(v4 + 8))(a2, v3);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

void _s9SeymourUI33NotificationConsentViewControllerC5coderACSo7NSCoderC_tcfc_0()
{
  v1 = sub_20C13A814();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_scrollView;
  v5 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_contentView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v7 &selRef_count + 2];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 &selRef_count + 2];
  [v9 setAdjustsFontForContentSizeCategory_];
  v10 = *MEMORY[0x277D743F8];
  v11 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  v40 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v13 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v14 = swift_initStackObject();
  *(v14 + 16) = v40;
  v15 = *MEMORY[0x277D74430];
  *(v14 + 32) = *MEMORY[0x277D74430];
  *(v14 + 40) = v10;
  v16 = v13;
  v17 = v15;
  v18 = sub_20B6B134C(v14);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v18;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20BFCC7BC(&qword_27C7618A0, type metadata accessor for AttributeName, &unk_20C14D960);
  v19 = sub_20C13C744();

  v20 = [v11 fontDescriptorByAddingAttributes_];

  v21 = objc_opt_self();
  v22 = [v21 fontWithDescriptor:v20 size:0.0];

  [v9 setFont_];
  v23 = objc_opt_self();
  v24 = [v23 whiteColor];
  [v9 setTextColor_];

  LODWORD(v25) = 1148846080;
  [v9 setContentHuggingPriority:1 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v26];

  *(v0 + v8) = v9;
  v27 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_bodyLabel;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setAdjustsFontForContentSizeCategory_];
  v29 = [v21 preferredFontForTextStyle_];
  [v28 setFont_];

  v30 = [v23 secondaryLabelColor];
  [v28 setTextColor_];

  LODWORD(v31) = 1148846080;
  [v28 setContentHuggingPriority:1 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [v28 setContentCompressionResistancePriority:1 forAxis:v32];

  *(v0 + v27) = v28;
  v33 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButton;
  v34 = [objc_opt_self() boldButton];
  LODWORD(v35) = 1148846080;
  [v34 setContentHuggingPriority:1 forAxis:v35];
  LODWORD(v36) = 1148846080;
  [v34 setContentCompressionResistancePriority:1 forAxis:v36];

  *(v0 + v33) = v34;
  v37 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_fallbackLocalizationBundle;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v37) = [objc_opt_self() bundleForClass_];
  v39 = (v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  *v39 = 0;
  v39[1] = 0;
  (*(v41 + 104))(v3, *MEMORY[0x277D4F070], v42);
  v43 = 1;
  sub_20C13A384();
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for NotificationConsentViewController(uint64_t a1)
{
  result = qword_27C771710;
  if (!qword_27C771710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFCC66C(uint64_t a1)
{
  sub_20C135534();
  if (v1 <= 0x3F)
  {
    sub_20B52432C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BFCC7BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BFCC80C()
{
  v1[18] = v0;
  v2 = sub_20C132C14();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFCC8CC, 0, 0);
}

uint64_t sub_20BFCC8CC()
{
  sub_20BFCCD5C(v0[21]);
  v0[22] = objc_opt_self();
  sub_20C13CDA4();
  v0[23] = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BFCC9CC, v2, v1);
}

uint64_t sub_20BFCC9CC()
{
  v1 = *(v0 + 176);

  *(v0 + 192) = [v1 sharedApplication];

  return MEMORY[0x2822009F8](sub_20BFCCA50, 0, 0);
}

uint64_t sub_20BFCCA50(__n128 a1)
{
  v2 = v1[24];
  v3 = sub_20C132B64();
  v1[25] = v3;
  sub_20B6B3B84(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_20BB0BE80();
  v4 = sub_20C13C744();
  v1[26] = v4;

  v1[2] = v1;
  v1[7] = v1 + 27;
  v1[3] = sub_20BFCCBE0;
  v5 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771720, &unk_20C188470);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_20BFCF9C8;
  v1[13] = &block_descriptor_170;
  v1[14] = v5;
  [v2 openURL:v3 options:v4 completionHandler:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_20BFCCBE0()
{

  return MEMORY[0x2822009F8](sub_20BFCCCC0, 0, 0);
}

uint64_t sub_20BFCCCC0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BFCCD5C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_20C132704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1326F4();
  sub_20C1326D4();
  MEMORY[0x20F2E9E20](7824750, 0xE300000000000000);
  sub_20BFCCFAC();
  sub_20C132674();
  sub_20C132694();
  v9 = sub_20C132C14();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_20B520158(v4, &unk_27C7617F0, &unk_20C151A10);
    sub_20BFD19A0();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_20BFCCFAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EA8, &qword_20C188480);
  MEMORY[0x28223BE20](v2 - 8);
  v332 = &v296 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v331 = &v296 - v5;
  MEMORY[0x28223BE20](v6);
  v330 = &v296 - v7;
  MEMORY[0x28223BE20](v8);
  v327 = &v296 - v9;
  MEMORY[0x28223BE20](v10);
  v324 = &v296 - v11;
  MEMORY[0x28223BE20](v12);
  v321 = &v296 - v13;
  MEMORY[0x28223BE20](v14);
  v320 = &v296 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v296 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v296 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v296 - v23;
  v25 = sub_20C132654();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v299 = &v296 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v298 = &v296 - v29;
  MEMORY[0x28223BE20](v30);
  v315 = &v296 - v31;
  MEMORY[0x28223BE20](v32);
  v314 = &v296 - v33;
  MEMORY[0x28223BE20](v34);
  v351 = &v296 - v35;
  MEMORY[0x28223BE20](v36);
  v313 = &v296 - v37;
  MEMORY[0x28223BE20](v38);
  v350 = &v296 - v39;
  MEMORY[0x28223BE20](v40);
  v349 = &v296 - v41;
  MEMORY[0x28223BE20](v42);
  v312 = &v296 - v43;
  MEMORY[0x28223BE20](v44);
  v348 = &v296 - v45;
  MEMORY[0x28223BE20](v46);
  v329 = &v296 - v47;
  MEMORY[0x28223BE20](v48);
  v328 = &v296 - v49;
  MEMORY[0x28223BE20](v50);
  v347 = &v296 - v51;
  MEMORY[0x28223BE20](v52);
  v311 = &v296 - v53;
  MEMORY[0x28223BE20](v54);
  v346 = &v296 - v55;
  MEMORY[0x28223BE20](v56);
  v345 = &v296 - v57;
  MEMORY[0x28223BE20](v58);
  v310 = &v296 - v59;
  MEMORY[0x28223BE20](v60);
  v344 = &v296 - v61;
  MEMORY[0x28223BE20](v62);
  v343 = &v296 - v63;
  MEMORY[0x28223BE20](v64);
  v309 = &v296 - v65;
  MEMORY[0x28223BE20](v66);
  v342 = &v296 - v67;
  MEMORY[0x28223BE20](v68);
  v341 = &v296 - v69;
  MEMORY[0x28223BE20](v70);
  v308 = &v296 - v71;
  MEMORY[0x28223BE20](v72);
  v340 = &v296 - v73;
  MEMORY[0x28223BE20](v74);
  v326 = &v296 - v75;
  MEMORY[0x28223BE20](v76);
  v325 = &v296 - v77;
  MEMORY[0x28223BE20](v78);
  v352 = &v296 - v79;
  MEMORY[0x28223BE20](v80);
  v307 = &v296 - v81;
  MEMORY[0x28223BE20](v82);
  v339 = &v296 - v83;
  MEMORY[0x28223BE20](v84);
  v338 = &v296 - v85;
  MEMORY[0x28223BE20](v86);
  v306 = &v296 - v87;
  MEMORY[0x28223BE20](v88);
  v337 = &v296 - v89;
  MEMORY[0x28223BE20](v90);
  v336 = &v296 - v91;
  MEMORY[0x28223BE20](v92);
  v305 = &v296 - v93;
  MEMORY[0x28223BE20](v94);
  v335 = &v296 - v95;
  MEMORY[0x28223BE20](v96);
  v323 = &v296 - v97;
  MEMORY[0x28223BE20](v98);
  v322 = &v296 - v99;
  MEMORY[0x28223BE20](v100);
  v334 = &v296 - v101;
  MEMORY[0x28223BE20](v102);
  v304 = &v296 - v103;
  MEMORY[0x28223BE20](v104);
  v333 = &v296 - v105;
  MEMORY[0x28223BE20](v106);
  v303 = &v296 - v107;
  MEMORY[0x28223BE20](v108);
  v302 = &v296 - v109;
  MEMORY[0x28223BE20](v110);
  v301 = &v296 - v111;
  MEMORY[0x28223BE20](v112);
  v300 = &v296 - v113;
  MEMORY[0x28223BE20](v114);
  v319 = &v296 - v115;
  MEMORY[0x28223BE20](v116);
  v318 = &v296 - v117;
  MEMORY[0x28223BE20](v118);
  v317 = &v296 - v119;
  MEMORY[0x28223BE20](v120);
  v316 = &v296 - v121;
  MEMORY[0x28223BE20](v122);
  v124 = &v296 - v123;
  v126 = MEMORY[0x28223BE20](v125);
  v128 = &v296 - v127;
  v356 = v26;
  v357 = MEMORY[0x277D84F90];
  v129 = *(v1 + 24);
  v353 = v1;
  if (!v129)
  {
    v354 = *(v26 + 56);
    v354(v24, 1, 1, v25, v126);
LABEL_5:
    sub_20B520158(v24, &qword_27C767EA8, &qword_20C188480);
    v130 = *(v1 + 48);
    if (!v130)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = v356;
  sub_20C132624();
  v354 = *(v26 + 56);
  (v354)(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v353;
    goto LABEL_5;
  }

  v355 = *(v26 + 32);
  v355(v128, v24, v25);
  (*(v26 + 16))(v124, v128, v25);
  v153 = sub_20BC06654(0, 1, 1, MEMORY[0x277D84F90]);
  v155 = *(v153 + 2);
  v154 = *(v153 + 3);
  v297 = v18;
  if (v155 >= v154 >> 1)
  {
    v153 = sub_20BC06654((v154 > 1), v155 + 1, 1, v153);
  }

  v156 = v356;
  v157 = v356 + 8;
  (*(v356 + 8))(v128, v25);
  *(v153 + 2) = v155 + 1;
  v158 = &v153[((*(v157 + 72) + 32) & ~*(v157 + 72)) + *(v157 + 64) * v155];
  v26 = v156;
  v355(v158, v124, v25);
  v357 = v153;
  v1 = v353;
  v18 = v297;
  v130 = *(v353 + 48);
  if (v130)
  {
LABEL_6:
    v132 = *(v1 + 56);
    v131 = *(v1 + 64);
    v358 = *(v1 + 32);
    v359 = v130;
    v360 = v132;
    v361 = v131;
    v133 = sub_20BFCFA24();
    sub_20B8D9414(v133);
  }

LABEL_7:
  v134 = *(v1 + 88);

  sub_20BFD0D24(v134, v21);

  v355 = *(v26 + 48);
  if (v355(v21, 1, v25) == 1)
  {
    sub_20B520158(v21, &qword_27C767EA8, &qword_20C188480);
  }

  else
  {
    v135 = *(v26 + 32);
    v136 = v316;
    v135(v316, v21, v25);
    (*(v26 + 16))(v317, v136, v25);
    v137 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = sub_20BC06654(0, *(v137 + 2) + 1, 1, v137);
    }

    v139 = *(v137 + 2);
    v138 = *(v137 + 3);
    if (v139 >= v138 >> 1)
    {
      v137 = sub_20BC06654((v138 > 1), v139 + 1, 1, v137);
    }

    (*(v26 + 8))(v316, v25);
    *(v137 + 2) = v139 + 1;
    v135(&v137[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v139], v317, v25);
    v357 = v137;
    v1 = v353;
  }

  v140 = *(v1 + 112);

  sub_20BFD0F18(v140, v18);

  if (v355(v18, 1, v25) == 1)
  {
    sub_20B520158(v18, &qword_27C767EA8, &qword_20C188480);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v141 = v320;
    (v354)(v320, 1, 1, v25);
    goto LABEL_29;
  }

  v148 = *(v26 + 32);
  v149 = v318;
  v148(v318, v18, v25);
  (*(v26 + 16))(v319, v149, v25);
  v150 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v150 = sub_20BC06654(0, *(v150 + 2) + 1, 1, v150);
  }

  v152 = *(v150 + 2);
  v151 = *(v150 + 3);
  if (v152 >= v151 >> 1)
  {
    v150 = sub_20BC06654((v151 > 1), v152 + 1, 1, v150);
  }

  (*(v26 + 8))(v318, v25);
  *(v150 + 2) = v152 + 1;
  v148(&v150[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v152], v319, v25);
  v357 = v150;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v141 = v320;
  sub_20C132624();
  (v354)(v141, 0, 1, v25);

  if (v355(v141, 1, v25) != 1)
  {
    v142 = *(v26 + 32);
    v143 = v300;
    v142(v300, v141, v25);
    (*(v26 + 16))(v301, v143, v25);
    v144 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v144 = sub_20BC06654(0, *(v144 + 2) + 1, 1, v144);
    }

    v146 = *(v144 + 2);
    v145 = *(v144 + 3);
    if (v146 >= v145 >> 1)
    {
      v144 = sub_20BC06654((v145 > 1), v146 + 1, 1, v144);
    }

    (*(v26 + 8))(v300, v25);
    *(v144 + 2) = v146 + 1;
    v142(&v144[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v146], v301, v25);
    v357 = v144;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_20B520158(v141, &qword_27C767EA8, &qword_20C188480);
  if (!*(v1 + 176))
  {
LABEL_22:
    v147 = v321;
    (v354)(v321, 1, 1, v25);
LABEL_31:
    sub_20B520158(v147, &qword_27C767EA8, &qword_20C188480);
    goto LABEL_41;
  }

LABEL_30:

  v147 = v321;
  sub_20C132624();
  (v354)(v147, 0, 1, v25);

  if (v355(v147, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v159 = *(v26 + 32);
  v160 = v302;
  v159(v302, v147, v25);
  (*(v26 + 16))(v303, v160, v25);
  v161 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_20BC06654(0, *(v161 + 2) + 1, 1, v161);
  }

  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  if (v163 >= v162 >> 1)
  {
    v161 = sub_20BC06654((v162 > 1), v163 + 1, 1, v161);
  }

  (*(v26 + 8))(v302, v25);
  *(v161 + 2) = v163 + 1;
  v159(&v161[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v163], v303, v25);
  v357 = v161;
LABEL_41:

  sub_20BFD1848(v164);
  if (v165)
  {
    v166 = v304;
    sub_20C132624();

    v167 = *(v26 + 32);
    v168 = v333;
    v167(v333, v166, v25);
    (*(v26 + 16))(v334, v168, v25);
    v169 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v169 = sub_20BC06654(0, *(v169 + 2) + 1, 1, v169);
    }

    v171 = *(v169 + 2);
    v170 = *(v169 + 3);
    if (v171 >= v170 >> 1)
    {
      v169 = sub_20BC06654((v170 > 1), v171 + 1, 1, v169);
    }

    (*(v26 + 8))(v333, v25);
    *(v169 + 2) = v171 + 1;
    v167(&v169[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v171], v334, v25);
    v357 = v169;
  }

  else
  {
  }

  v172 = type metadata accessor for TapToRadarDraft(0);
  v173 = v324;
  sub_20BFD1070(v324);
  if (v355(v173, 1, v25) == 1)
  {
    sub_20B520158(v173, &qword_27C767EA8, &qword_20C188480);
  }

  else
  {
    v174 = *(v26 + 32);
    v175 = v322;
    v174(v322, v173, v25);
    (*(v26 + 16))(v323, v175, v25);
    v176 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v176 = sub_20BC06654(0, *(v176 + 2) + 1, 1, v176);
    }

    v178 = *(v176 + 2);
    v177 = *(v176 + 3);
    if (v178 >= v177 >> 1)
    {
      v176 = sub_20BC06654((v177 > 1), v178 + 1, 1, v176);
    }

    (*(v26 + 8))(v322, v25);
    *(v176 + 2) = v178 + 1;
    v174(&v176[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v178], v323, v25);
    v357 = v176;
    v1 = v353;
  }

  sub_20BFD1634(v179);
  if (v180)
  {
    v181 = v305;
    sub_20C132624();

    v182 = *(v26 + 32);
    v183 = v335;
    v182(v335, v181, v25);
    (*(v26 + 16))(v336, v183, v25);
    v184 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v184 = sub_20BC06654(0, *(v184 + 2) + 1, 1, v184);
    }

    v186 = *(v184 + 2);
    v185 = *(v184 + 3);
    if (v186 >= v185 >> 1)
    {
      v184 = sub_20BC06654((v185 > 1), v186 + 1, 1, v184);
    }

    (*(v26 + 8))(v335, v25);
    *(v184 + 2) = v186 + 1;
    v182(&v184[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v186], v336, v25);
    v357 = v184;
    v1 = v353;
  }

  else
  {
  }

  sub_20BFD1634(v187);
  if (v188)
  {
    v189 = v306;
    sub_20C132624();

    v190 = *(v26 + 32);
    v191 = v337;
    v190(v337, v189, v25);
    (*(v26 + 16))(v338, v191, v25);
    v192 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v192 = sub_20BC06654(0, *(v192 + 2) + 1, 1, v192);
    }

    v194 = *(v192 + 2);
    v193 = *(v192 + 3);
    if (v194 >= v193 >> 1)
    {
      v192 = sub_20BC06654((v193 > 1), v194 + 1, 1, v192);
    }

    (*(v26 + 8))(v337, v25);
    *(v192 + 2) = v194 + 1;
    v190(&v192[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v194], v338, v25);
    v357 = v192;
    v1 = v353;
  }

  else
  {
  }

  sub_20BFD1504(v195);
  if (v196)
  {
    v197 = v307;
    sub_20C132624();

    v198 = *(v26 + 32);
    v199 = v339;
    v198(v339, v197, v25);
    (*(v26 + 16))(v352, v199, v25);
    v200 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v200 = sub_20BC06654(0, *(v200 + 2) + 1, 1, v200);
    }

    v202 = *(v200 + 2);
    v201 = *(v200 + 3);
    if (v202 >= v201 >> 1)
    {
      v200 = sub_20BC06654((v201 > 1), v202 + 1, 1, v200);
    }

    (*(v26 + 8))(v339, v25);
    *(v200 + 2) = v202 + 1;
    v198(&v200[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v202], v352, v25);
    v357 = v200;
    v1 = v353;
  }

  else
  {
  }

  v203 = v327;
  sub_20C132624();

  v352 = (v26 + 56);
  (v354)(v203, 0, 1, v25);

  if (v355(v203, 1, v25) == 1)
  {
    sub_20B520158(v203, &qword_27C767EA8, &qword_20C188480);
  }

  else
  {
    v204 = *(v26 + 32);
    v205 = v325;
    v204(v325, v203, v25);
    (*(v26 + 16))(v326, v205, v25);
    v206 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v206 = sub_20BC06654(0, *(v206 + 2) + 1, 1, v206);
    }

    v208 = *(v206 + 2);
    v207 = *(v206 + 3);
    if (v208 >= v207 >> 1)
    {
      v206 = sub_20BC06654((v207 > 1), v208 + 1, 1, v206);
    }

    v209 = v356 + 8;
    (*(v356 + 8))(v325, v25);
    *(v206 + 2) = v208 + 1;
    v204(&v206[((*(v209 + 72) + 32) & ~*(v209 + 72)) + *(v209 + 64) * v208], v326, v25);
    v357 = v206;
  }

  sub_20BFD1504(v210);
  if (v211)
  {
    v212 = v308;
    sub_20C132624();

    v213 = v356;
    v214 = *(v356 + 32);
    v215 = v340;
    v214(v340, v212, v25);
    (*(v213 + 16))(v341, v215, v25);
    v216 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v216 = sub_20BC06654(0, *(v216 + 2) + 1, 1, v216);
    }

    v218 = *(v216 + 2);
    v217 = *(v216 + 3);
    if (v218 >= v217 >> 1)
    {
      v216 = sub_20BC06654((v217 > 1), v218 + 1, 1, v216);
    }

    v219 = v356 + 8;
    (*(v356 + 8))(v340, v25);
    *(v216 + 2) = v218 + 1;
    v214(&v216[((*(v219 + 72) + 32) & ~*(v219 + 72)) + *(v219 + 64) * v218], v341, v25);
    v357 = v216;
  }

  else
  {
  }

  sub_20BFD132C(v220);
  if (v221)
  {
    v222 = v309;
    sub_20C132624();

    v223 = v356;
    v224 = *(v356 + 32);
    v225 = v342;
    v224(v342, v222, v25);
    (*(v223 + 16))(v343, v225, v25);
    v226 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v226 = sub_20BC06654(0, *(v226 + 2) + 1, 1, v226);
    }

    v228 = *(v226 + 2);
    v227 = *(v226 + 3);
    if (v228 >= v227 >> 1)
    {
      v226 = sub_20BC06654((v227 > 1), v228 + 1, 1, v226);
    }

    v229 = v356 + 8;
    (*(v356 + 8))(v342, v25);
    *(v226 + 2) = v228 + 1;
    v224(&v226[((*(v229 + 72) + 32) & ~*(v229 + 72)) + *(v229 + 64) * v228], v343, v25);
    v357 = v226;
  }

  else
  {
  }

  sub_20BFD1504(v230);
  if (v231)
  {
    v232 = v310;
    sub_20C132624();

    v233 = v356;
    v234 = *(v356 + 32);
    v235 = v344;
    v234(v344, v232, v25);
    (*(v233 + 16))(v345, v235, v25);
    v236 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v236 = sub_20BC06654(0, *(v236 + 2) + 1, 1, v236);
    }

    v238 = *(v236 + 2);
    v237 = *(v236 + 3);
    if (v238 >= v237 >> 1)
    {
      v236 = sub_20BC06654((v237 > 1), v238 + 1, 1, v236);
    }

    v239 = v356 + 8;
    (*(v356 + 8))(v344, v25);
    *(v236 + 2) = v238 + 1;
    v234(&v236[((*(v239 + 72) + 32) & ~*(v239 + 72)) + *(v239 + 64) * v238], v345, v25);
    v357 = v236;
  }

  else
  {
  }

  v240 = *(v1 + v172[19] + 16);

  sub_20BFD053C(v240);
  if (v241)
  {
    v242 = v311;
    sub_20C132624();

    v243 = v356;
    v244 = *(v356 + 32);
    v245 = v346;
    v244(v346, v242, v25);
    (*(v243 + 16))(v347, v245, v25);
    v246 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v246 = sub_20BC06654(0, *(v246 + 2) + 1, 1, v246);
    }

    v248 = *(v246 + 2);
    v247 = *(v246 + 3);
    if (v248 >= v247 >> 1)
    {
      v246 = sub_20BC06654((v247 > 1), v248 + 1, 1, v246);
    }

    v249 = v356 + 8;
    (*(v356 + 8))(v346, v25);
    *(v246 + 2) = v248 + 1;
    v244(&v246[((*(v249 + 72) + 32) & ~*(v249 + 72)) + *(v249 + 64) * v248], v347, v25);
    v357 = v246;
  }

  else
  {
  }

  v250 = v330;
  sub_20C132624();

  (v354)(v250, 0, 1, v25);
  v251 = v250;

  if (v355(v250, 1, v25) == 1)
  {
    sub_20B520158(v250, &qword_27C767EA8, &qword_20C188480);
  }

  else
  {
    v252 = v356;
    v253 = *(v356 + 32);
    v254 = v328;
    v253(v328, v251, v25);
    (*(v252 + 16))(v329, v254, v25);
    v255 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v255 = sub_20BC06654(0, *(v255 + 2) + 1, 1, v255);
    }

    v257 = *(v255 + 2);
    v256 = *(v255 + 3);
    if (v257 >= v256 >> 1)
    {
      v255 = sub_20BC06654((v256 > 1), v257 + 1, 1, v255);
    }

    v258 = v356 + 8;
    (*(v356 + 8))(v328, v25);
    *(v255 + 2) = v257 + 1;
    v253(&v255[((*(v258 + 72) + 32) & ~*(v258 + 72)) + *(v258 + 64) * v257], v329, v25);
    v357 = v255;
  }

  v259 = *(v1 + v172[21] + 16);

  sub_20BFD08EC(v259);
  if (v260)
  {
    v261 = v312;
    sub_20C132624();

    v262 = v356;
    v263 = *(v356 + 32);
    v264 = v348;
    v263(v348, v261, v25);
    (*(v262 + 16))(v349, v264, v25);
    v265 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v265 = sub_20BC06654(0, *(v265 + 2) + 1, 1, v265);
    }

    v267 = *(v265 + 2);
    v266 = *(v265 + 3);
    if (v267 >= v266 >> 1)
    {
      v265 = sub_20BC06654((v266 > 1), v267 + 1, 1, v265);
    }

    v268 = v356 + 8;
    (*(v356 + 8))(v348, v25);
    *(v265 + 2) = v267 + 1;
    v263(&v265[((*(v268 + 72) + 32) & ~*(v268 + 72)) + *(v268 + 64) * v267], v349, v25);
    v357 = v265;
  }

  else
  {
  }

  sub_20BFD1504(v269);
  if (v270)
  {
    v271 = v313;
    sub_20C132624();

    v272 = v356;
    v273 = *(v356 + 32);
    v274 = v350;
    v273(v350, v271, v25);
    (*(v272 + 16))(v351, v274, v25);
    v275 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v275 = sub_20BC06654(0, *(v275 + 2) + 1, 1, v275);
    }

    v277 = *(v275 + 2);
    v276 = *(v275 + 3);
    if (v277 >= v276 >> 1)
    {
      v275 = sub_20BC06654((v276 > 1), v277 + 1, 1, v275);
    }

    v278 = v356 + 8;
    (*(v356 + 8))(v350, v25);
    *(v275 + 2) = v277 + 1;
    v273(&v275[((*(v278 + 72) + 32) & ~*(v278 + 72)) + *(v278 + 64) * v277], v351, v25);
    v357 = v275;
  }

  else
  {
  }

  if (!*(v1 + v172[23] + 24))
  {
    v279 = v331;
    (v354)(v331, 1, 1, v25);
    v281 = v356;
    goto LABEL_140;
  }

  v279 = v331;
  sub_20C132624();
  (v354)(v279, 0, 1, v25);

  v280 = v355(v279, 1, v25);
  v281 = v356;
  if (v280 == 1)
  {
LABEL_140:
    sub_20B520158(v279, &qword_27C767EA8, &qword_20C188480);
    goto LABEL_141;
  }

  v282 = *(v356 + 32);
  v283 = v314;
  v282(v314, v279, v25);
  (*(v281 + 16))(v315, v283, v25);
  v284 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v284 = sub_20BC06654(0, *(v284 + 2) + 1, 1, v284);
  }

  v286 = *(v284 + 2);
  v285 = *(v284 + 3);
  if (v286 >= v285 >> 1)
  {
    v284 = sub_20BC06654((v285 > 1), v286 + 1, 1, v284);
  }

  v281 = v356;
  v287 = v356 + 8;
  (*(v356 + 8))(v314, v25);
  *(v284 + 2) = v286 + 1;
  v282(&v284[((*(v287 + 72) + 32) & ~*(v287 + 72)) + *(v287 + 64) * v286], v315, v25);
  v357 = v284;
LABEL_141:
  if (!*(v353 + v172[24] + 24))
  {
    v288 = v332;
    (v354)(v332, 1, 1, v25);
    goto LABEL_149;
  }

  v288 = v332;
  sub_20C132624();
  (v354)(v288, 0, 1, v25);

  if (v355(v288, 1, v25) == 1)
  {
LABEL_149:
    sub_20B520158(v288, &qword_27C767EA8, &qword_20C188480);
    return v357;
  }

  v289 = *(v281 + 32);
  v290 = v298;
  v289(v298, v288, v25);
  v291 = v299;
  (*(v281 + 16))(v299, v290, v25);
  v292 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v292 = sub_20BC06654(0, *(v292 + 2) + 1, 1, v292);
  }

  v294 = *(v292 + 2);
  v293 = *(v292 + 3);
  if (v294 >= v293 >> 1)
  {
    v292 = sub_20BC06654((v293 > 1), v294 + 1, 1, v292);
  }

  (*(v281 + 8))(v290, v25);
  *(v292 + 2) = v294 + 1;
  v289(&v292[((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v294], v291, v25);
  return v292;
}

uint64_t sub_20BFCF9C8(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_20BFCFA24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EB0, &qword_20C163FE8);
  sub_20C132654();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C1517D0;
  sub_20C13DFA4();
  sub_20C132624();

  sub_20C132624();
  sub_20C132624();
  return v0;
}

uint64_t sub_20BFCFBA0()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  sub_20C13CA64();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

uint64_t sub_20BFCFC20(uint64_t a1)
{
  MEMORY[0x20F2F58E0](*v1);
  sub_20C13CA64();

  return sub_20C13CA64();
}

uint64_t sub_20BFCFC90(uint64_t a1)
{
  v2 = *v1;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v2);
  sub_20C13CA64();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

uint64_t sub_20BFCFD0C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_20C13DFF4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_20C13DFF4();
}

unint64_t sub_20BFCFDC0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20BFCFF24(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_20BFCFDC0(*a1);
  v5 = v4;
  if (v3 == sub_20BFCFDC0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C13DFF4();
  }

  return v8 & 1;
}

uint64_t sub_20BFCFFAC()
{
  v1 = *v0;
  sub_20C13E164();
  sub_20BFCFDC0(v1);
  sub_20C13CA64();

  return sub_20C13E1B4();
}

double sub_20BFD0010(uint64_t a1)
{
  sub_20BFCFDC0(*v1);
  sub_20C13CA64();

  return result;
}

uint64_t sub_20BFD0064(uint64_t a1)
{
  v2 = *v1;
  sub_20C13E164();
  sub_20BFCFDC0(v2);
  sub_20C13CA64();

  return sub_20C13E1B4();
}

unint64_t sub_20BFD00C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20BFD2AFC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_20BFD00F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_20BFCFDC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_20BFD0134(uint64_t a1)
{
  sub_20C13CA64();

  return result;
}

unint64_t sub_20BFD0238@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20BFD2B48(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20BFD0268(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

double sub_20BFD034C(uint64_t a1)
{
  sub_20C13CA64();

  return result;
}

unint64_t sub_20BFD0448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20BFD2B94(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20BFD0478(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_20BFD053C(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_20BC05BA4(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_20BC05BA4((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_20BC05BA4(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_20BC05BA4((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_20BC05BA4(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_20BC05BA4((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
LABEL_39:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
              sub_20B86A1D4();
              v1 = sub_20C13C824();

              return v1;
            }

LABEL_34:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_20BC05BA4(0, *(v2 + 2) + 1, 1, v2);
            }

            v19 = *(v2 + 2);
            v18 = *(v2 + 3);
            if (v19 >= v18 >> 1)
            {
              v2 = sub_20BC05BA4((v18 > 1), v19 + 1, 1, v2);
            }

            *(v2 + 2) = v19 + 1;
            v20 = &v2[16 * v19];
            *(v20 + 4) = 0x657463656E6E6F43;
            *(v20 + 5) = 0xE900000000000064;
            goto LABEL_39;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_20BC05BA4(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_20BC05BA4((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_20BC05BA4(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_20BC05BA4((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_20BFD08EC(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_20C13DFF4();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

double sub_20BFD0ABC(uint64_t a1)
{
  sub_20C13CA64();

  return result;
}

unint64_t sub_20BFD0BC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20BFD2BE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20BFD0BF0(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000020C191C80;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000020C191CA0;
    }

    v5 = 0x800000020C191C40;
    if (v2 != 3)
    {
      v5 = 0x800000020C191C60;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_20BFD0CC0()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_20BFD0D24@<X0>(unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  if (a2 > 9u)
  {
    v5 = 1;
  }

  else
  {
    sub_20C132624();

    v5 = 0;
  }

  v6 = sub_20C132654();
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, v5, 1, v6);
}

uint64_t sub_20BFD0F18@<X0>(unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  if (a2 > 5u)
  {
    v5 = 1;
  }

  else
  {
    sub_20C132624();

    v5 = 0;
  }

  v6 = sub_20C132654();
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, v5, 1, v6);
}

uint64_t sub_20BFD1070@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_20C132E94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD90, &unk_20C181450);
  sub_20BAC6DEC(v2 + *(v11 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &qword_27C762AC0, &qword_20C14FC90);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_20C13C914();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_20C132DE4();
    v16 = [v13 stringFromDate_];

    sub_20C13C954();
    (*(v8 + 8))(v10, v7);
    sub_20C132624();

    v12 = 0;
  }

  v17 = sub_20C132654();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_20BFD132C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_20BC05BA4(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_20BC05BA4((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
  sub_20B86A1D4();
  v17 = sub_20C13C824();

  return v17;
}

uint64_t sub_20BFD1504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_20BC05BA4(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_20BC05BA4((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
  sub_20B86A1D4();
  v9 = sub_20C13C824();

  return v9;
}

uint64_t sub_20BFD1634(uint64_t a1)
{
  v24 = sub_20C132C14();
  v3.n128_f64[0] = MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v2 + 16);
  v7 = v2 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v22 = *(v7 + 56);
  v23 = v8;
  v10 = (v7 - 8);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v24;
    v13 = v7;
    v23(v5, v9, v24, v3);
    v14 = sub_20C132BC4();
    v16 = v15;
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_20BC05BA4(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_20BC05BA4((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v9 += v22;
    --v6;
    v7 = v13;
  }

  while (v6);
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
  sub_20B86A1D4();
  v20 = sub_20C13C824();

  return v20;
}

uint64_t sub_20BFD1848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v2 += 8;
    v4 = sub_20C13DFA4();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_20BC05BA4(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_20BC05BA4((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
  sub_20B86A1D4();
  v10 = sub_20C13C824();

  return v10;
}

unint64_t sub_20BFD19A0()
{
  result = qword_27C771728[0];
  if (!qword_27C771728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C771728);
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_27C7717B0;
  if (!qword_27C7717B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFD1A50(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20BFD1AD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void sub_20BFD1C54(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_20BFD1EE4(uint64_t a1)
{
  sub_20BFD2308(319, &qword_27C7717C0, &qword_27C767830, &qword_20C15CA20, sub_20BFD223C);
  if (v1 <= 0x3F)
  {
    sub_20BFD22B8();
    if (v2 <= 0x3F)
    {
      sub_20BFD2308(319, &qword_27C7717D8, &qword_27C7717E0, "ʲ\a", sub_20BFD2378);
      if (v3 <= 0x3F)
      {
        sub_20BFD2308(319, &qword_27C7717F0, &qword_27C7717F8, "ʲ\a", sub_20BFD23F4);
        if (v4 <= 0x3F)
        {
          sub_20BFD2308(319, &qword_27C771808, &qword_27C769B38, &qword_20C1884E0, sub_20BFD2470);
          if (v5 <= 0x3F)
          {
            sub_20BFD2308(319, &qword_27C771818, &qword_27C762AC0, &qword_20C14FC90, sub_20BFD24EC);
            if (v6 <= 0x3F)
            {
              sub_20BFD2308(319, &qword_27C771828, &qword_27C771830, &qword_20C1884E8, sub_20BFD2568);
              if (v7 <= 0x3F)
              {
                sub_20BFD2308(319, &qword_27C771840, &qword_27C765218, &qword_20C15F3D0, sub_20BFD25E4);
                if (v8 <= 0x3F)
                {
                  sub_20BFD26DC(319, &qword_27C771850, MEMORY[0x277D839B0], &off_2822FD128);
                  if (v9 <= 0x3F)
                  {
                    sub_20BFD2308(319, &qword_27C771858, &qword_27C771860, &qword_20C1884F0, sub_20BFD2660);
                    if (v10 <= 0x3F)
                    {
                      sub_20BFD26DC(319, &qword_27C771870, &type metadata for TapToRadarDraft.RemoteDeviceSelections, &off_2822FD588);
                      if (v11 <= 0x3F)
                      {
                        sub_20BFD26DC(319, &qword_27C771878, &type metadata for TapToRadarDraft.AutoDiagnostics, &off_2822FD578);
                        if (v12 <= 0x3F)
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

unint64_t sub_20BFD223C()
{
  result = qword_27C7717C8;
  if (!qword_27C7717C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767830, &qword_20C15CA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7717C8);
  }

  return result;
}

void sub_20BFD22B8()
{
  if (!qword_27C7717D0)
  {
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7717D0);
    }
  }
}

void sub_20BFD2308(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_20BFD2378()
{
  result = qword_27C7717E8;
  if (!qword_27C7717E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7717E0, "ʲ\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7717E8);
  }

  return result;
}

unint64_t sub_20BFD23F4()
{
  result = qword_27C771800;
  if (!qword_27C771800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7717F8, "ʲ\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771800);
  }

  return result;
}

unint64_t sub_20BFD2470()
{
  result = qword_27C771810;
  if (!qword_27C771810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C769B38, &qword_20C1884E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771810);
  }

  return result;
}

unint64_t sub_20BFD24EC()
{
  result = qword_27C771820;
  if (!qword_27C771820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C762AC0, &qword_20C14FC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771820);
  }

  return result;
}

unint64_t sub_20BFD2568()
{
  result = qword_27C771838;
  if (!qword_27C771838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C771830, &qword_20C1884E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771838);
  }

  return result;
}

unint64_t sub_20BFD25E4()
{
  result = qword_27C771848;
  if (!qword_27C771848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C765218, &qword_20C15F3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771848);
  }

  return result;
}

unint64_t sub_20BFD2660()
{
  result = qword_27C771868;
  if (!qword_27C771868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C771860, &qword_20C1884F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771868);
  }

  return result;
}

void sub_20BFD26DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for URLParameter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_20BFD2790()
{
  result = qword_27C771880;
  if (!qword_27C771880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771880);
  }

  return result;
}

unint64_t sub_20BFD27E8()
{
  result = qword_27C771888;
  if (!qword_27C771888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771888);
  }

  return result;
}

unint64_t sub_20BFD2840()
{
  result = qword_27C771890;
  if (!qword_27C771890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771890);
  }

  return result;
}

unint64_t sub_20BFD2898()
{
  result = qword_27C771898;
  if (!qword_27C771898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771898);
  }

  return result;
}

unint64_t sub_20BFD28EC()
{
  result = qword_27C7718A0;
  if (!qword_27C7718A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718A0);
  }

  return result;
}

unint64_t sub_20BFD2944()
{
  result = qword_27C7718A8;
  if (!qword_27C7718A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718A8);
  }

  return result;
}

unint64_t sub_20BFD299C()
{
  result = qword_27C7718B0;
  if (!qword_27C7718B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718B0);
  }

  return result;
}

unint64_t sub_20BFD29F4()
{
  result = qword_27C7718B8;
  if (!qword_27C7718B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718B8);
  }

  return result;
}

unint64_t sub_20BFD2A4C()
{
  result = qword_27C7718C0;
  if (!qword_27C7718C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718C0);
  }

  return result;
}

unint64_t sub_20BFD2AA8()
{
  result = qword_27C7718C8;
  if (!qword_27C7718C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718C8);
  }

  return result;
}

unint64_t sub_20BFD2AFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20BFD2B48(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20BFD2B94(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20BFD2BE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

id TVUpNextQueueViewController.__allocating_init(dependencies:pageNavigator:pageContext:)(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = sub_20BFD3A20(a1, v11, a3, a4, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

id TVUpNextQueueViewController.init(dependencies:pageNavigator:pageContext:)(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_20BFD37C4(a1, v14, a3, a4, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

Swift::Void __swiftcall TVUpNextQueueViewController.viewDidLoad()()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_focusedWorkoutController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_listViewController];
  [v0 addChildViewController_];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = v9;
  v11 = [v8 view];
  if (!v11)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v12 = v11;
  [v10 addSubview_];

  [v8 didMoveToParentViewController_];
  v13 = [v8 view];
  if (!v13)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20C14FE90;
  v16 = [v8 view];
  if (!v16)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v18 constraintEqualToAnchor:v21 constant:90.0];
  *(v15 + 32) = v22;
  v23 = [v8 view];
  if (!v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v24 = v23;
  v25 = [v23 trailingAnchor];

  v26 = [v0 view];
  if (!v26)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v27 = v26;
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 trailingAnchor];
  v30 = [v25 constraintEqualToAnchor_];

  *(v15 + 40) = v30;
  v31 = [v8 view];
  if (!v31)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v0 view];
  if (!v34)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v15 + 48) = v37;
  v38 = [v8 view];
  if (!v38)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [v0 view];
  if (!v41)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 constraintEqualToAnchor:v43 constant:110.0];
  *(v15 + 56) = v44;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  v46 = [v1 view];
  if (!v46)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = [v0 view];
  if (!v49)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v50 = v49;
  v51 = [v49 safeAreaLayoutGuide];

  v52 = [v51 leadingAnchor];
  v53 = [v48 constraintEqualToAnchor_];

  *(inited + 32) = v53;
  v54 = [v1 view];
  if (!v54)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v55 = v54;
  v56 = [v54 topAnchor];

  v57 = [v0 view];
  if (!v57)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v58 = v57;
  v59 = [v57 topAnchor];

  v60 = [v56 constraintEqualToAnchor:v59 constant:130.0];
  *(inited + 40) = v60;
  v61 = [v1 view];
  if (!v61)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v62 = v61;
  v63 = [v61 bottomAnchor];

  v64 = [v0 view];
  if (!v64)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v65 = v64;
  v66 = [v64 safeAreaLayoutGuide];

  v67 = [v66 bottomAnchor];
  v68 = [v63 constraintEqualToAnchor_];

  *(inited + 48) = v68;
  v69 = [v1 view];
  if (v69)
  {
    v70 = v69;
    v71 = [v69 widthAnchor];

    v72 = [v71 constraintEqualToConstant_];
    *(inited + 56) = v72;
    v73 = objc_opt_self();
    sub_20B8D9310(inited);
    sub_20B5E29D0();
    v74 = sub_20C13CC54();

    [v73 activateConstraints_];

    return;
  }

LABEL_43:
  __break(1u);
}

id TVUpNextQueueViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id TVUpNextQueueViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BFD37C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v14 = *(a6 - 8);
  MEMORY[0x28223BE20](ObjectType);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  (*(v14 + 32))(&v30 - v19, a2, a6, v18);
  v21 = &a5[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_layout];
  *v21 = xmmword_20C153DC0;
  *(v21 + 1) = xmmword_20C153DD0;
  type metadata accessor for TVUpNextQueuePresenter();
  swift_allocObject();

  v23 = sub_20B91BCA8(v22, a3, a4);
  *&a5[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_presenter] = v23;
  v24 = *(v23 + 24);
  v25 = objc_allocWithZone(type metadata accessor for TVUpNextQueueListViewController(0));
  (*(v14 + 16))(v16, v20, a6);

  v26 = sub_20B9F61F4(a1, v24, v16, v25, a6, a7);

  *&a5[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_listViewController] = v26;
  objc_allocWithZone(type metadata accessor for TVQueueFocusedWorkoutViewController());

  *&a5[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_focusedWorkoutController] = sub_20BC1C728(v27);
  v32.receiver = a5;
  v32.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
  (*(v14 + 8))(v20, a6);
  return v28;
}

id sub_20BFD3A20(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v16);
  (*(v13 + 16))(v15, a2, a6);
  return sub_20BFD37C4(a1, v15, a3, a4, v17, a6, a7);
}

uint64_t sub_20BFD3B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (a5)
    {
      MEMORY[0x20F2F58E0](2, a2, a3, a4);
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](0, a2, a3, a4);
    }

    return sub_20C13D604();
  }

  if (a5 == 2)
  {
    MEMORY[0x20F2F58E0](3);
    MEMORY[0x20F2F58E0](a2);
    sub_20C13D604();
    return sub_20C13D604();
  }

  return MEMORY[0x20F2F58E0](1, a2, a3, a4);
}

uint64_t sub_20BFD3C58()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_20C13E164();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x20F2F58E0](3);
      MEMORY[0x20F2F58E0](v1);
      sub_20C13D604();
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](1);
    }
  }

  else
  {
    if (v2)
    {
      MEMORY[0x20F2F58E0](2);
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
    }

    sub_20C13D604();
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BFD3D3C(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 24) <= 1u)
  {
    if (*(v1 + 24))
    {
      MEMORY[0x20F2F58E0](2);
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
    }

    return sub_20C13D604();
  }

  if (*(v1 + 24) == 2)
  {
    MEMORY[0x20F2F58E0](3);
    MEMORY[0x20F2F58E0](v2);
    sub_20C13D604();
    return sub_20C13D604();
  }

  return MEMORY[0x20F2F58E0](1);
}

uint64_t sub_20BFD3E04(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  sub_20C13E164();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x20F2F58E0](3);
      MEMORY[0x20F2F58E0](v2);
      sub_20C13D604();
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](1);
    }
  }

  else
  {
    if (v3)
    {
      MEMORY[0x20F2F58E0](2);
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
    }

    sub_20C13D604();
  }

  return sub_20C13E1B4();
}

unint64_t sub_20BFD3F0C()
{
  result = qword_27C7718F0;
  if (!qword_27C7718F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718F0);
  }

  return result;
}

BOOL sub_20BFD3F60(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a8 == 1)
      {
        sub_20B63C198();
        if (sub_20C13D5F4())
        {
          return sub_20C13D5F4() & 1;
        }
      }
    }

    else if (!a8)
    {
      sub_20B63C198();
      return sub_20C13D5F4() & 1;
    }

    return 0;
  }

  if (a4 == 2)
  {
    if (a8 == 2 && a1 == a5)
    {
      sub_20B63C198();
      if (sub_20C13D5F4())
      {
        return sub_20C13D5F4() & 1;
      }
    }

    return 0;
  }

  return a8 == 3 && !(a6 | a5 | a7);
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI18WeekdayPlannerItemO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_20BFD40A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20BFD40E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_20BFD4130(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_20BFD4170()
{
  result = qword_27C7718F8;
  if (!qword_27C7718F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718F8);
  }

  return result;
}

uint64_t sub_20BFD41E8()
{
  v1 = [*v0 sourceApplication];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_20C13C954();

  return v3;
}

uint64_t sub_20BFD4274(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  v10 = [*v6 *a3];
  sub_20B51C88C(0, a4, a5);
  sub_20B7187E0(a6, a4, a5);
  v11 = sub_20C13CF74();

  return v11;
}

id PlaceholderViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *PlaceholderViewController.init()()
{
  v1 = OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator;
  v2 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v1] = v2;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PlaceholderViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
  [*&v3[OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator] setHidesWhenStopped_];
  return v3;
}

void sub_20BFD4590()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for PlaceholderViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [objc_opt_self() blackColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator];
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C151490;
  v8 = [v6 centerYAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 centerYAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [v6 centerXAnchor];
  v14 = [v0 view];
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_self();
    v17 = [v15 centerXAnchor];

    v18 = [v13 constraintEqualToAnchor_];
    *(v7 + 40) = v18;
    sub_20B5E29D0();
    v19 = sub_20C13CC54();

    [v16 activateConstraints_];

    return;
  }

LABEL_9:
  __break(1u);
}

id PlaceholderViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id PlaceholderViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_20BFD4964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a1;
  v3[3] = a2;
  v10 = objc_allocWithZone(MEMORY[0x277CEF768]);
  swift_unknownObjectRetain();
  v11 = [v10 init];
  v12 = sub_20C13C914();
  [v11 setIdentifier_];

  [v11 setEventMask_];
  sub_20C13CEC4();
  [v11 setAttentionLostTimeout_];
  v13 = [objc_allocWithZone(MEMORY[0x277CEF760]) init];
  v3[4] = v13;
  [v13 setConfiguration:v11 shouldReset:0];
  v14 = v3[4];
  sub_20B5E2E18();
  v15 = v14;
  v16 = sub_20C13D374();
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_20BFD505C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B762A80;
  aBlock[3] = &block_descriptor_171;
  v18 = _Block_copy(aBlock);

  [v15 setEventHandlerWithQueue:v16 block:v18];
  _Block_release(v18);

  v19 = v3[4];
  aBlock[0] = 0;
  if ([v19 resumeWithError_])
  {
    v20 = aBlock[0];
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = aBlock[0];
    v22 = sub_20C132A44();

    swift_willThrow();
    sub_20C13B534();
    v23 = v22;
    v37 = v9;
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v36 = v7;
      v27 = v26;
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = MEMORY[0x20F2F5860](v38, v39);
      v31 = sub_20B51E694(v29, v30, aBlock);
      v35 = v6;
      v32 = v31;

      *(v27 + 4) = v32;
      _os_log_impl(&dword_20B517000, v24, v25, "Unable to resume awareness client: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v27, -1, -1);

      swift_unknownObjectRelease();
      (*(v36 + 8))(v37, v35);
    }

    else
    {
      swift_unknownObjectRelease();

      (*(v7 + 8))(v37, v6);
    }
  }

  return v3;
}

double sub_20BFD4DAC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BFD4E0C(a1, v3);
  }

  return v3.n128_f64[0];
}

uint64_t sub_20BFD4E0C(void *a1, __n128 a2)
{
  v3 = sub_20C13A974();
  v14 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13A6F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 eventMask];
  swift_getObjectType();
  if (v11 == 1)
  {
    sub_20C13A6E4();
    sub_20C13A764();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_20C13A964();
    sub_20C13A764();
    return (*(v14 + 8))(v5, v3);
  }
}

uint64_t sub_20BFD4FF8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id static UIColor.keyTint.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
}

id static UIColor.background.getter()
{
  v0 = [objc_opt_self() systemBackgroundColor];

  return v0;
}

id static UIColor.focusedBackground.getter()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id static UIColor.meditationTeal.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.419607843 green:0.984313725 blue:0.97254902 alpha:1.0];
}

double sub_20BFD519C(void *a1)
{
  v2 = v1;

  sub_20C13CEC4();
  v4 = v3;
  type metadata accessor for TVSubscribeOnPersonalDevicePresenter();
  swift_allocObject();
  sub_20BC9A1C0(v4);

  v5 = objc_allocWithZone(type metadata accessor for TVSubscribeOnPersonalDeviceViewController());

  v7 = sub_20BD7DB9C(v6);
  v8 = [v2 navigationController];
  if (v8)
  {
    v9 = v8;
    [v8 presentViewController:v7 animated:1 completion:0];
  }

  return result;
}

double sub_20BFD528C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  (*(a3 + 16))(a1, a3);
  sub_20C13CEC4();
  v6 = v5;
  type metadata accessor for TVSubscribeOnPersonalDevicePresenter();
  swift_allocObject();
  sub_20BC9A1C0(v6);

  v7 = objc_allocWithZone(type metadata accessor for TVSubscribeOnPersonalDeviceViewController());

  v9 = sub_20BD7DB9C(v8);
  v10 = [v4 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 presentViewController:v9 animated:1 completion:0];
  }

  return result;
}

uint64_t sub_20BFD5394(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_20C138D34();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_20C138D34();
  v9 = sub_20C13C914();

  v10 = sub_20C13C914();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_20C138D34();
  v12 = sub_20C13C914();

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v12 style:1 handler:0];

  [v11 addAction_];
  if ((a1 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_20C138D34();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v16 = sub_20C13C914();

    aBlock[4] = a4;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B762A80;
    aBlock[3] = a5;
    v17 = _Block_copy(aBlock);

    v18 = [v13 actionWithTitle:v16 style:0 handler:v17];
    _Block_release(v17);

    [v11 addAction_];
  }

  v19 = [v7 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 presentViewController:v11 animated:1 completion:0];
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_20BFD571C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  (*(a4 + 16))(a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();

  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_20C138D34();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_20C138D34();
  v9 = sub_20C13C914();

  v10 = sub_20C13C914();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_20C138D34();
  v12 = sub_20C13C914();

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v12 style:1 handler:0];

  [v11 addAction_];
  if ((a1 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_20C138D34();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a4;
    v16[5] = v15;

    v17 = sub_20C13C914();

    aBlock[4] = sub_20BFDA5C8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B762A80;
    aBlock[3] = &block_descriptor_62_1;
    v18 = _Block_copy(aBlock);

    v19 = [v13 actionWithTitle:v17 style:0 handler:v18];
    _Block_release(v18);

    [v11 addAction_];
  }

  v20 = [v5 navigationController];
  if (v20)
  {
    v21 = v20;
    [v20 presentViewController:v11 animated:1 completion:0];
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20BFD5B08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = type metadata accessor for NavigationRequest(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0, &unk_20C15F290);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  v14 = sub_20C1387E4();
  (*(*(v14 - 8) + 16))(v10, a2, v14);
  v15 = sub_20C1388F4();
  (*(*(v15 - 8) + 16))(&v10[v12], a3, v15);
  v10[v13] = 0;
  type metadata accessor for NavigationResource(0);
  swift_storeEnumTagMultiPayload();
  v10[v8[7]] = 1;
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  v10[v8[9]] = 0;
  v10[v8[10]] = 2;
  *&v10[v8[11]] = 0;
  a4(v10);
  return sub_20BB2C79C(v10);
}

uint64_t sub_20BFD5CC4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v13 = type metadata accessor for NavigationRequest(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0, &unk_20C15F290);
  v18 = *(v17 + 48);
  v19 = *(v17 + 64);
  v20 = sub_20C1387E4();
  (*(*(v20 - 8) + 16))(v16, a2, v20);
  v21 = sub_20C1388F4();
  (*(*(v21 - 8) + 16))(&v16[v18], a3, v21);
  v16[v19] = 0;
  type metadata accessor for NavigationResource(0);
  swift_storeEnumTagMultiPayload();
  v16[v14[7]] = 1;
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  v16[v14[9]] = 0;
  v16[v14[10]] = 2;
  *&v16[v14[11]] = 0;
  sub_20BFD8534(v16, a4, a5, a6, x8_0);
  return sub_20BB2C79C(v16);
}

uint64_t sub_20BFD5EA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_20C13BB84();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v7 = *(v60 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240, &unk_20C184D30);
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v56 - v14;
  MEMORY[0x28223BE20](v15);
  v66 = &v56 - v16;
  v17 = sub_20C138F84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(a1, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771908, &qword_20C188ED8);
  sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  if (swift_dynamicCast())
  {
    v61 = v68[0];
    v62 = a2;
    swift_getObjectType();
    sub_20C138F74();
    sub_20BFDA3D0(&qword_27C76C460, MEMORY[0x277D541F0], MEMORY[0x277D541E8]);
    sub_20C13A764();
    (*(v18 + 8))(v20, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
    sub_20C133AA4();
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v21 = v58;
    sub_20C13B954();
    v22 = v57;
    v23 = v60;
    (*(v7 + 16))(v57, v21, v60);
    v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v25 = swift_allocObject();
    (*(v7 + 32))(v25 + v24, v22, v23);
    v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20BFD8DEC;
    v26[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
    v27 = v65;
    sub_20C137C94();
    (*(v7 + 8))(v21, v23);
    v28 = v63;
    v29 = v64;
    v60 = *(v63 + 16);
    v30 = v59;
    (v60)(v59, v27, v64);
    v31 = *(v28 + 80);
    v58 = ((v31 + 16) & ~v31);
    v32 = &v58[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v57 = *(v28 + 32);
    (v57)(v33 + ((v31 + 16) & ~v31), v30, v29);
    v34 = (v33 + v32);
    *v34 = sub_20BFD8E7C;
    v34[1] = 0;
    v35 = v66;
    sub_20C137C94();
    v63 = *(v28 + 8);
    v36 = v65;
    (v63)(v65, v29);
    v37 = swift_allocObject();
    v38 = v67;
    v39 = v60;
    v40 = v61;
    *(v37 + 16) = v67;
    *(v37 + 24) = v40;
    v39(v36, v35, v29);
    v41 = swift_allocObject();
    (v57)(&v58[v41], v36, v29);
    v42 = (v41 + v32);
    *v42 = sub_20BFDA5D4;
    v42[1] = v37;
    v43 = v38;
    sub_20C137C94();
    (v63)(v66, v29);
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_20C13B534();
    sub_20B51CC64(a1, v70);
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1D4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69 = v48;
      *v47 = 136315138;
      sub_20B51CC64(v70, v68);
      v49 = sub_20C13C9D4();
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_1(v70);
      v52 = sub_20B51E694(v49, v51, &v69);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_20B517000, v45, v46, "Failed to handle purchase with non-AMS buy params: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x20F2F6A40](v48, -1, -1);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v70);
    }

    (*(v61 + 8))(v6, v62);
    v53 = sub_20C138A84();
    sub_20BFDA3D0(&qword_27C771910, MEMORY[0x277D54140], MEMORY[0x277D54148]);
    v54 = swift_allocError();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D54138], v53);
    *(swift_allocObject() + 16) = v54;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BFD6778@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_20C13BB84();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v7 = *(v60 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240, &unk_20C184D30);
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v56 - v14;
  MEMORY[0x28223BE20](v15);
  v66 = &v56 - v16;
  v17 = sub_20C138F84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(a1, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771908, &qword_20C188ED8);
  sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  if (swift_dynamicCast())
  {
    v61 = v68[0];
    v62 = a2;
    swift_getObjectType();
    sub_20C138F74();
    sub_20BFDA3D0(&qword_27C76C460, MEMORY[0x277D541F0], MEMORY[0x277D541E8]);
    sub_20C13A764();
    (*(v18 + 8))(v20, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
    sub_20C133AA4();
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v21 = v58;
    sub_20C13B954();
    v22 = v57;
    v23 = v60;
    (*(v7 + 16))(v57, v21, v60);
    v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v25 = swift_allocObject();
    (*(v7 + 32))(v25 + v24, v22, v23);
    v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20BFD8DEC;
    v26[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
    v27 = v65;
    sub_20C137C94();
    (*(v7 + 8))(v21, v23);
    v28 = v63;
    v29 = v64;
    v60 = *(v63 + 16);
    v30 = v59;
    (v60)(v59, v27, v64);
    v31 = *(v28 + 80);
    v58 = ((v31 + 16) & ~v31);
    v32 = &v58[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v57 = *(v28 + 32);
    (v57)(v33 + ((v31 + 16) & ~v31), v30, v29);
    v34 = (v33 + v32);
    *v34 = sub_20BFD8E7C;
    v34[1] = 0;
    v35 = v66;
    sub_20C137C94();
    v63 = *(v28 + 8);
    v36 = v65;
    (v63)(v65, v29);
    v37 = swift_allocObject();
    v38 = v67;
    v39 = v60;
    v40 = v61;
    *(v37 + 16) = v67;
    *(v37 + 24) = v40;
    v39(v36, v35, v29);
    v41 = swift_allocObject();
    (v57)(&v58[v41], v36, v29);
    v42 = (v41 + v32);
    *v42 = sub_20BFDA6BC;
    v42[1] = v37;
    v43 = v38;
    sub_20C137C94();
    (v63)(v66, v29);
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_20C13B534();
    sub_20B51CC64(a1, v70);
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1D4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69 = v48;
      *v47 = 136315138;
      sub_20B51CC64(v70, v68);
      v49 = sub_20C13C9D4();
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_1(v70);
      v52 = sub_20B51E694(v49, v51, &v69);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_20B517000, v45, v46, "Failed to handle purchase with non-AMS buy params: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x20F2F6A40](v48, -1, -1);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v70);
    }

    (*(v61 + 8))(v6, v62);
    v53 = sub_20C138A84();
    sub_20BFDA3D0(&qword_27C771910, MEMORY[0x277D54140], MEMORY[0x277D54148]);
    v54 = swift_allocError();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D54138], v53);
    *(swift_allocObject() + 16) = v54;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BFD7048@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v77 = a5;
  v74 = a3;
  v76 = a2;
  v69 = sub_20C13BB84();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v9 = *(v70 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v70);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240, &unk_20C184D30);
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  MEMORY[0x28223BE20](v13);
  v67 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = &v63 - v16;
  MEMORY[0x28223BE20](v17);
  v71 = &v63 - v18;
  v19 = sub_20C138F84();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(a1, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771908, &qword_20C188ED8);
  sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  if (swift_dynamicCast())
  {
    v69 = v79[0];
    v23 = *(a4 + 24);
    v68 = v10;
    v24 = v76;
    v23(v76, a4);
    v63 = v25;
    swift_getObjectType();
    sub_20C138F74();
    sub_20BFDA3D0(&qword_27C76C460, MEMORY[0x277D541F0], MEMORY[0x277D541E8]);
    sub_20C13A764();
    swift_unknownObjectRelease();
    (*(v20 + 8))(v22, v19);
    v64 = a4;
    (*(a4 + 16))(v24, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
    sub_20C133AA4();

    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v26 = v66;
    sub_20C13B954();
    v27 = v65;
    v28 = v70;
    (*(v9 + 16))(v65, v26, v70);
    v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v30 = (v68 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v9 + 32))(v31 + v29, v27, v28);
    v32 = (v31 + v30);
    *v32 = sub_20BFD8DEC;
    v32[1] = 0;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
    v33 = v75;
    sub_20C137C94();
    (*(v9 + 8))(v26, v28);
    v34 = v72;
    v35 = v73;
    v70 = *(v72 + 16);
    v36 = v67;
    (v70)(v67, v33, v73);
    v37 = *(v34 + 80);
    v68 = (v37 + 16) & ~v37;
    v38 = (v14 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = v38;
    v39 = swift_allocObject();
    v66 = *(v34 + 32);
    (v66)(v39 + ((v37 + 16) & ~v37), v36, v35);
    v40 = (v39 + v38);
    *v40 = sub_20BFD8E7C;
    v40[1] = 0;
    v41 = v71;
    sub_20C137C94();
    v72 = *(v34 + 8);
    v42 = v75;
    (v72)(v75, v35);
    v43 = swift_allocObject();
    v44 = v74;
    *(v43 + 2) = v76;
    *(v43 + 3) = v44;
    v45 = v78;
    *(v43 + 4) = v64;
    *(v43 + 5) = v45;
    v46 = v70;
    *(v43 + 6) = v69;
    v46(v42, v41, v35);
    v47 = v63;
    v48 = swift_allocObject();
    (v66)(v48 + v68, v42, v35);
    v49 = (v48 + v47);
    *v49 = sub_20BFDA33C;
    v49[1] = v43;
    v50 = v45;
    sub_20C137C94();
    (v72)(v41, v35);
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {
    sub_20C13B534();
    sub_20B51CC64(a1, v81);
    v52 = sub_20C13BB74();
    v53 = sub_20C13D1D4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v80 = v55;
      *v54 = 136315138;
      sub_20B51CC64(v81, v79);
      v56 = sub_20C13C9D4();
      v58 = v57;
      __swift_destroy_boxed_opaque_existential_1(v81);
      v59 = sub_20B51E694(v56, v58, &v80);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_20B517000, v52, v53, "Failed to handle purchase with non-AMS buy params: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x20F2F6A40](v55, -1, -1);
      MEMORY[0x20F2F6A40](v54, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v81);
    }

    (*(v68 + 8))(v8, v69);
    v60 = sub_20C138A84();
    sub_20BFDA3D0(&qword_27C771910, MEMORY[0x277D54140], MEMORY[0x277D54148]);
    v61 = swift_allocError();
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277D54138], v60);
    *(swift_allocObject() + 16) = v61;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BFD7BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v43 = a2;
  v3 = type metadata accessor for NavigationRequest(0);
  v42 = *(v3 - 8);
  v41 = *(v42 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7719A0, &qword_20C155D80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260, &unk_20C155CF0);
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v34 - v15;
  v37 = v2;
  sub_20BD28F0C(*(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dependencies), *(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dynamicOfferCoordinator), *(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_webUserInterfaceCoordinator), v11);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20BFD8A44;
  *(v16 + 24) = 0;
  (*(v6 + 16))(v8, v11, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v17, v8, v5);
  v20 = (v19 + v18);
  *v20 = sub_20BFDB1B8;
  v20[1] = v16;
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v21 = v35;
  sub_20C137C94();
  (*(v6 + 8))(v11, v5);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v40;
  sub_20B65FE58(v36, v40);
  v24 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  sub_20B75B150(v23, v25 + v24);
  v26 = v38;
  v27 = v21;
  v28 = v21;
  v29 = v39;
  (*(v12 + 16))(v38, v27, v39);
  v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v31 = swift_allocObject();
  (*(v12 + 32))(v31 + v30, v26, v29);
  v32 = (v31 + ((v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_20BFDAFEC;
  v32[1] = v25;
  sub_20C137C94();
  return (*(v12 + 8))(v28, v29);
}

uint64_t sub_20BFD8088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v43 = a2;
  v3 = type metadata accessor for NavigationRequest(0);
  v42 = *(v3 - 8);
  v41 = *(v42 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7719A0, &qword_20C155D80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260, &unk_20C155CF0);
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v34 - v15;
  v37 = v2;
  sub_20BD28F0C(*(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dependencies), *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dynamicOfferCoordinator), *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_webUserInterfaceCoordinator), v11);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20BFD8A44;
  *(v16 + 24) = 0;
  (*(v6 + 16))(v8, v11, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v17, v8, v5);
  v20 = (v19 + v18);
  *v20 = sub_20BFDB1B8;
  v20[1] = v16;
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v21 = v35;
  sub_20C137C94();
  (*(v6 + 8))(v11, v5);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v40;
  sub_20B65FE58(v36, v40);
  v24 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  sub_20B75B150(v23, v25 + v24);
  v26 = v38;
  v27 = v21;
  v28 = v21;
  v29 = v39;
  (*(v12 + 16))(v38, v27, v39);
  v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v31 = swift_allocObject();
  (*(v12 + 32))(v31 + v30, v26, v29);
  v32 = (v31 + ((v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_20BFDA670;
  v32[1] = v25;
  sub_20C137C94();
  return (*(v12 + 8))(v28, v29);
}

uint64_t sub_20BFD8534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a3;
  v55 = a5;
  v56 = a1;
  v8 = type metadata accessor for NavigationRequest(0);
  v53 = *(v8 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7719A0, &qword_20C155D80);
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v46);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260, &unk_20C155CF0);
  v16 = *(v50 - 8);
  v49 = *(v16 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v44 = &v43 - v20;
  v45 = v5;
  v21 = *(a4 + 16);
  v47 = a2;
  v22 = v21(a2, a4, v19);
  v23 = (*(a4 + 32))(a2, a4);
  v24 = (*(a4 + 56))(a2, a4);
  sub_20BD28F0C(v22, v23, v24, v15);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_20BFD8A44;
  *(v25 + 24) = 0;
  v26 = v46;
  (*(v10 + 16))(v12, v15, v46);
  v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v28 = swift_allocObject();
  (*(v10 + 32))(v28 + v27, v12, v26);
  v29 = (v28 + ((v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = sub_20BFDA4D0;
  v29[1] = v25;
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v30 = v44;
  sub_20C137C94();
  (*(v10 + 8))(v15, v26);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v51;
  sub_20B65FE58(v56, v51);
  v33 = (*(v53 + 80) + 48) & ~*(v53 + 80);
  v34 = swift_allocObject();
  v35 = v54;
  *(v34 + 2) = v47;
  *(v34 + 3) = v35;
  *(v34 + 4) = a4;
  *(v34 + 5) = v31;
  sub_20B75B150(v32, v34 + v33);
  v36 = v48;
  v37 = v50;
  (*(v16 + 16))(v48, v30, v50);
  v38 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v39 = (v49 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v16 + 32))(v40 + v38, v36, v37);
  v41 = (v40 + v39);
  *v41 = sub_20BFDA500;
  v41[1] = v34;
  sub_20C137C94();
  return (*(v16 + 8))(v30, v37);
}

id sub_20BFD8A44@<X0>(void *a2@<X8>)
{
  sub_20C1380F4();
  result = sub_20B9066DC(v3);
  *a2 = result;
  return result;
}

void sub_20BFD8A84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong navigationController];

    if (v11)
    {
      swift_getObjectType();
      v12 = swift_conformsToProtocol2();
      if (v12)
      {
        v13 = v12;
        swift_beginAccess();
        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          v15 = *(v14 + *a4);
          v16 = v14;

          ObjectType = swift_getObjectType();
          (*(v13 + 56))(a1, a3, v15, ObjectType, v13);

          return;
        }
      }
    }
  }

  sub_20B5D9BA8();
  v18 = swift_allocError();
  *v19 = 11;
  *(swift_allocObject() + 16) = v18;
  sub_20C137CA4();
}

void sub_20BFD8C2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong navigationController];

    if (v12)
    {
      swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        v14 = v13;
        swift_beginAccess();
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          v17 = (*(a6 + 16))(a4, a6);

          ObjectType = swift_getObjectType();
          (*(v14 + 56))(v9, a3, v17, ObjectType, v14);

          return;
        }
      }
    }
  }

  sub_20B5D9BA8();
  v19 = swift_allocError();
  *v20 = 11;
  *(swift_allocObject() + 16) = v19;
  sub_20C137CA4();
}

uint64_t sub_20BFD8DEC(void **a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);

  return sub_20C137CA4();
}

uint64_t sub_20BFD8E7C(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v6 = a1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](v15[2], v15[3]);
    v13 = sub_20B51E694(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v7, v8, "Failed to fetchCurrentAccount: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
  return sub_20C137CA4();
}

uint64_t sub_20BFD90A0(void **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = v11;
  v12[6] = a3;
  v12[7] = v10;
  v13 = v10;
  v14 = a3;

  return sub_20C137C94();
}

double sub_20BFD9178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v11 = sub_20BFD9770(a4, a5, &OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_bag, &OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_purchaseCoordinator), Strong, v12 = [v11 performPurchase], v11, v12))
  {
    v13 = swift_allocObject();
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v15 = v12;

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = sub_20BFDB1E8;
    v16[4] = v9;
    v19[4] = sub_20BFDA620;
    v19[5] = v16;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_20B98FE2C;
    v19[3] = &block_descriptor_98_1;
    v17 = _Block_copy(v19);

    [v15 addFinishBlock_];

    _Block_release(v17);
  }

  else
  {
  }

  return result;
}

double sub_20BFD936C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v11 = sub_20BFD9770(a4, a5, &OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_bag, &OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_purchaseCoordinator), Strong, v12 = [v11 performPurchase], v11, v12))
  {
    v13 = swift_allocObject();
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v15 = v12;

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = sub_20BFDB1E8;
    v16[4] = v9;
    v19[4] = sub_20BFDA750;
    v19[5] = v16;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_20B98FE2C;
    v19[3] = &block_descriptor_164;
    v17 = _Block_copy(v19);

    [v15 addFinishBlock_];

    _Block_release(v17);
  }

  else
  {
  }

  return result;
}

double sub_20BFD9560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v17 = sub_20BFD9850(a4, a5, a6, a7, a8), Strong, v18 = [v17 performPurchase], v17, v18))
  {
    v19 = swift_allocObject();
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v21 = v18;

    v22 = swift_allocObject();
    v22[2] = a6;
    v22[3] = a7;
    v22[4] = a8;
    v22[5] = v19;
    v22[6] = sub_20B8A3EDC;
    v22[7] = v15;
    v25[4] = sub_20BFDA38C;
    v25[5] = v22;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 1107296256;
    v25[2] = sub_20B98FE2C;
    v25[3] = &block_descriptor_172;
    v23 = _Block_copy(v25);

    [v21 addFinishBlock_];

    _Block_release(v23);
  }

  else
  {
  }

  return result;
}

id sub_20BFD9770(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CEE640]) initWithPurchaseType:0 buyParams:a1];
  [v8 setUserInitiated_];
  [v8 setRequiresAccount_];
  [v8 setAccount_];
  v9 = [objc_allocWithZone(MEMORY[0x277CEE660]) initWithPurchase:v8 bag:*(v4 + *a3)];
  [v9 setDelegate_];

  return v9;
}

id sub_20BFD9850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CEE640]) initWithPurchaseType:0 buyParams:a1];
  [v8 setUserInitiated_];
  [v8 setRequiresAccount_];
  [v8 setAccount_];
  v9 = *(a5 + 8);
  v10 = v8;
  v11 = [objc_allocWithZone(MEMORY[0x277CEE660]) initWithPurchase:v10 bag:{v9(a3, a5)}];

  swift_unknownObjectRelease();
  v12 = (*(a5 + 40))(a3, a5);
  [v11 setDelegate_];

  return v11;
}

uint64_t sub_20BFD9988(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v26 = a4;
  v12 = sub_20C13C4B4();
  v31 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C13C4F4();
  v15 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v29 = sub_20C13D374();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a1;
  v20 = v26;
  v19 = v27;
  v18[4] = a2;
  v18[5] = v20;
  v18[6] = a5;
  aBlock[4] = v19;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = v28;
  v21 = _Block_copy(aBlock);

  v22 = a1;
  v23 = a2;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BFDA3D0(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  v24 = v29;
  MEMORY[0x20F2F4AF0](0, v17, v14, v21);
  _Block_release(v21);

  (*(v31 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v30);
}

uint64_t sub_20BFD9C74(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v29 = a4;
  v13 = sub_20C13C4B4();
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C13C4F4();
  v16 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v30 = sub_20C13D374();
  v19 = swift_allocObject();
  v21 = v27;
  v20 = v28;
  v19[2] = a6;
  v19[3] = v21;
  v19[4] = v20;
  v19[5] = a3;
  v19[6] = a1;
  v19[7] = a2;
  v19[8] = v29;
  v19[9] = a5;
  aBlock[4] = sub_20BFDA3BC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_31;
  v22 = _Block_copy(aBlock);

  v23 = a1;
  v24 = a2;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BFDA3D0(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  v25 = v30;
  MEMORY[0x20F2F4AF0](0, v18, v15, v22);
  _Block_release(v22);

  (*(v32 + 8))(v15, v13);
  return (*(v16 + 8))(v18, v31);
}

void sub_20BFD9F80(uint64_t a1, void *a2, void *a3, void (*a4)(void *, void), uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + *a6);

    sub_20C065618(a2, a3, 0);
  }

  v13 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  sub_20C13E1C4();
  a4(v14, v15);
  sub_20B583FB8(v14, v15);
}

void sub_20BFDA07C(uint64_t a1, void *a2, void *a3, void (*a4)(void *, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*(a8 + 48))(a6, a8);

    sub_20C065618(a2, a3, 0);
  }

  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  sub_20C13E1C4();
  a4(v17, v18);
  sub_20B583FB8(v17, v18);
}

double sub_20BFDA194(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20BB2A16C();
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_20BFDA234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(a5 + 24))(a3, a5);

    swift_getObjectType();
    sub_20BB2A16C();
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BFDA3D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BFDA418(void **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = v7;
  v10 = v7;
  v11 = a3;

  return sub_20C137C94();
}

void sub_20BFDA500(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for NavigationRequest(0) - 8);
  v7 = v1[5];
  v8 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  sub_20BFD8C2C(a1, v7, v8, v3, v4, v5);
}
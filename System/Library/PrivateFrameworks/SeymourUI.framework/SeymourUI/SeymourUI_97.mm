void sub_20C00E8D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_20C132E94();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_20C138034();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_20C138004();
            v48 = v66;
            sub_20C138004();
            v68 = sub_20C132DF4();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_20C138004();
        v28 = v66;
        sub_20C138004();
        v68 = sub_20C132DF4();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_20B6A0B04(&v75, &v74, &v73);
}

uint64_t sub_20C00EFB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);

  return sub_20C137C94();
}

uint64_t sub_20C00F060(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v11 = v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row;
  sub_20B5D8060(v34);
  v12 = v34[9];
  *(v11 + 128) = v34[8];
  *(v11 + 144) = v12;
  *(v11 + 160) = v35;
  v13 = v34[5];
  *(v11 + 64) = v34[4];
  *(v11 + 80) = v13;
  v14 = v34[7];
  *(v11 + 96) = v34[6];
  *(v11 + 112) = v14;
  v15 = v34[1];
  *v11 = v34[0];
  *(v11 + 16) = v15;
  v16 = v34[3];
  *(v11 + 32) = v34[2];
  *(v11 + 48) = v16;
  *(v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_bookmarkType) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(v33, v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v33, v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_eventHub) = v33[0];
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_platform) = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v33, v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v33, v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_subscriptionCache);
  v17 = (v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_descriptorIdentifier);
  *v17 = a4;
  v17[1] = a5;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for ShelfLazyLockupFetcher();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D84F90];
  *(v18 + 152) = MEMORY[0x277D84F90];

  v20 = sub_20B6B0C04(v19);
  v21 = MEMORY[0x277D84FA0];
  *(v18 + 160) = v20;
  *(v18 + 168) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  sub_20C133AA4();

  *(v18 + 136) = 20;
  *(v18 + 144) = a3;
  *(v18 + 145) = 0;
  *(v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_lazyLockupFetcher) = v18;
  v22 = sub_20C13C914();
  if (a1)
  {
    v23 = "LIBRARY_YOUR_WORKOUTS";
    v24 = "";
    v25 = 0xD000000000000020;
    v26 = 0xD000000000000015;
  }

  else
  {
    v26 = 0xD000000000000018;
    v23 = "LIBRARY_YOUR_MEDITATIONS";
    v24 = "KOUTS_SUBHEADING";
    v25 = 0xD000000000000023;
  }

  v27 = [objc_opt_self() smm:v22 systemImageNamed:?];

  *(v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_galleryIcon) = v27;
  v28 = (v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_titleText);
  *v28 = v26;
  v28[1] = v24 | 0x8000000000000000;
  v29 = (v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_secondaryText);
  *v29 = v25;
  v29[1] = v23 | 0x8000000000000000;
  type metadata accessor for DownloadSubscriptionCoordinator();
  swift_allocObject();
  v30 = sub_20B8CB478();
  v31 = (v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_downloadSubscriptionCoordinator);
  *v31 = v30;
  v31[1] = &off_2822B2B58;
  v30[3] = &off_2822FFBD0;
  swift_unknownObjectWeakAssign();
  *(*(v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_downloadSubscriptionCoordinator) + 40) = &off_2822FFBB8;
  swift_unknownObjectWeakAssign();
  return v6;
}

uint64_t sub_20C00F524(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320, &unk_20C16C580);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v7;
  v8 = sub_20C136594();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134014();
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767450, &unk_20C16C590);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_20C134A74();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v61 = &v50 - v22;
  v23 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8C702C(v62, v25, type metadata accessor for ShelfItemAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20B8C70F4(v25, type metadata accessor for ShelfItemAction);
  if (EnumCaseMultiPayload == 13)
  {
    sub_20C02C020(v60, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      return sub_20B520158(v16, &qword_27C767450, &unk_20C16C590);
    }

    else
    {
      v28 = v61;
      sub_20B8C6FC8(v16, v61);
      sub_20B8C702C(v28, v20, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v50;
        (*(v50 + 32))(v13, v20, v11);
        v30 = sub_20C133E44();
        v32 = v31;
        (*(v29 + 8))(v13, v11);
      }

      else
      {
        v34 = v51;
        v33 = v52;
        (*(v51 + 32))(v10, v20, v52);
        v30 = sub_20C136564();
        v32 = v35;
        (*(v34 + 8))(v10, v33);
      }

      v36 = v54;
      sub_20B8CA380(v30, v32, v54);
      v37 = swift_allocObject();
      swift_weakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v30;
      *(v38 + 32) = v32;
      *(v38 + 40) = 0;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_20C00FE5C;
      *(v39 + 24) = v38;
      v41 = v56;
      v40 = v57;
      v42 = v53;
      (*(v56 + 16))(v53, v36, v57);
      v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v44 = swift_allocObject();
      (*(v41 + 32))(v44 + v43, v42, v40);
      v45 = (v44 + ((v3 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v45 = sub_20B8C70B8;
      v45[1] = v39;
      v46 = v55;
      sub_20C137C94();
      (*(v41 + 8))(v36, v40);
      v47 = v59;
      v48 = sub_20C137CB4();
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v48(sub_20B52347C, v49);

      (*(v58 + 8))(v46, v47);
      return sub_20B8C70F4(v61, MEMORY[0x277D50C70]);
    }
  }

  return result;
}

uint64_t sub_20C00FC3C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_platform))
  {
    goto LABEL_7;
  }

  v3 = v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 112);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 144);
  v57 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 128);
  v58 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 80);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 48);
  v53 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 64);
  v54 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 80);
  v55 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 96);
  v56 = v4;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 16);
  v50[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row);
  v50[1] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 48);
  v51 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 32);
  v52 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 48);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 80);
  v47 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 64);
  v48 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 16);
  v43 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row);
  v44 = v14;
  v45 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 32);
  v46 = v12;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 144);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 112);
  v40 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 128);
  v41 = v15;
  v39 = v16;
  v60[0] = v50[0];
  v60[1] = v10;
  v60[4] = v53;
  v60[5] = v9;
  v59 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 160);
  v49 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 96);
  v17 = *(&v55 + 1);
  v42 = *(v3 + 160);
  v18 = *(v3 + 96);
  v60[2] = v51;
  v60[3] = v8;
  v19 = *(v3 + 144);
  v66 = *(v3 + 160);
  v64 = v57;
  v65 = v19;
  v63 = v5;
  v61 = v18;
  v62 = *(&v55 + 1);
  if (sub_20B5EAF8C(v60) == 1)
  {
    v31 = v47;
    v32 = v48;
    v27 = v43;
    v28 = v44;
    v29 = v45;
    v30 = v46;
    v33 = v49;
    v34 = *(&v55 + 1);
    v38 = v42;
    v36 = v40;
    v37 = v41;
    v35 = v39;
    sub_20B5EAED4(v50, v26);
    sub_20B520158(&v27, &qword_27C762340, &unk_20C150290);
LABEL_7:
    v24 = 1;
    return v24 & 1;
  }

  v31 = v47;
  v32 = v48;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v33 = v49;
  v34 = *(&v55 + 1);
  v38 = v42;
  v36 = v40;
  v37 = v41;
  v35 = v39;
  sub_20B5EAED4(v50, v26);

  sub_20B520158(&v27, &qword_27C762340, &unk_20C150290);
  v20 = *(v17 + 16);
  if (!v20)
  {

    goto LABEL_7;
  }

  v21 = *(v17 + 8 * v20 + 24);

  sub_20B969AA8(a1, v21);
  v23 = v22;

  v24 = v23 ^ 1;
  return v24 & 1;
}

uint64_t sub_20C00FF74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_20C010054(uint64_t a1, unsigned __int8 a2, double a3)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      sub_20C0104D4(a1, a3);
      return;
    }

    if (a1)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = a3;
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = [objc_opt_self() bundleForClass_];
      v10 = sub_20C132964();
      v12 = v11;

      type metadata accessor for PillConfiguration();
      v13 = swift_allocObject();
      *(v13 + 17) = 0;
      v14 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.109803922 alpha:{1.0, 0xE000000000000000}];
      v15 = [v14 CGColor];

      *(v13 + 128) = v15;
      *(v13 + 136) = xmmword_20C189EF0;
      *(v13 + 152) = xmmword_20C189EF0;
      *(v13 + 48) = v10;
      *(v13 + 56) = v12;
      *(v13 + 32) = sub_20C0110C8;
      *(v13 + 40) = v7;
      *(v13 + 24) = 0;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 16) = 1;
      return;
    }

    goto LABEL_13;
  }

  if (a2 == 2)
  {
    type metadata accessor for ProgressConfiguration();
    v5 = swift_allocObject();
    *(v5 + 24) = a1;
    *(v5 + 32) = a3;
    *(v5 + 16) = 1;
    return;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
LABEL_13:
      type metadata accessor for SeymourLocalizationBundle();
      v18 = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
      v20 = sub_20C132964();
      v22 = v21;

      sub_20C010DB8(v20, v22);

      return;
    }

    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    type metadata accessor for NoBackgroundConfiguration();
    v17 = swift_allocObject();
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 24) = sub_20C0110D0;
    *(v17 + 32) = v25;
    *(v17 + 40) = v26;
  }

  else
  {
    if ((a1 - 2) >= 2)
    {
      type metadata accessor for IndefiniteSpinnerConfiguration();
      v23 = swift_allocObject();
      *(v23 + 32) = 0xD000000000000014;
      *(v23 + 40) = 0x800000020C19A7B0;
      *(v23 + 24) = 0x4000000000000000;
      *(v23 + 16) = 1;
      return;
    }

    v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    type metadata accessor for NoBackgroundConfiguration();
    v17 = swift_allocObject();
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 40) = v16;
  }

  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 112) = 0;
  *(v17 + 16) = 1;
}

double sub_20C0104D4(unsigned __int8 a1, double a2)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v7 = sub_20C132964();
      v9 = v8;

      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:{1.0, 0xE000000000000000}];
      v12 = [v11 CGColor];

      v13 = [objc_opt_self() systemBackgroundColor];
      type metadata accessor for PillConfiguration();
      v14 = swift_allocObject();
      *(v14 + 17) = 0;
      v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.109803922 alpha:1.0];
      v16 = [v15 CGColor];

      v4 = v14;
      *(v14 + 120) = v13;
      *(v14 + 128) = v16;
      *(v14 + 136) = xmmword_20C189EF0;
      *(v14 + 152) = xmmword_20C189EF0;
      *(v14 + 48) = v7;
      *(v14 + 56) = v9;
      *(v14 + 32) = sub_20C011394;
      *(v14 + 40) = v10;
      *(v14 + 24) = v12;
      goto LABEL_9;
    }

    type metadata accessor for SeymourLocalizationBundle();
    v28 = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    v30 = sub_20C132964();
    v32 = v31;

    v33 = swift_allocObject();
    *(v33 + 16) = a2;
    v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:{1.0, 0xE000000000000000}];
    type metadata accessor for PillConfiguration();
    v24 = swift_allocObject();
    *(v24 + 17) = 0;
    v34 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.109803922 alpha:1.0];
    v35 = [v34 CGColor];

    v4 = v24;
    *(v24 + 128) = v35;
    *(v24 + 136) = xmmword_20C189EF0;
    *(v24 + 152) = xmmword_20C189EF0;
    *(v24 + 48) = v30;
    *(v24 + 56) = v32;
    v27 = sub_20C0110D8;
    *(v24 + 40) = v33;
LABEL_8:
    *(v24 + 24) = 0;
    *(v24 + 32) = v27;
    *(v24 + 120) = v23;
    goto LABEL_9;
  }

  if (a1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    type metadata accessor for SeymourLocalizationBundle();
    v18 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v20 = sub_20C132964();
    v22 = v21;

    v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:{1.0, 0xE000000000000000}];
    type metadata accessor for PillConfiguration();
    v24 = swift_allocObject();
    *(v24 + 17) = 0;
    v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.109803922 alpha:1.0];
    v26 = [v25 CGColor];

    v4 = v24;
    *(v24 + 128) = v26;
    *(v24 + 136) = xmmword_20C189EF0;
    *(v24 + 152) = xmmword_20C189EF0;
    *(v24 + 48) = v20;
    *(v24 + 56) = v22;
    v27 = sub_20C0110E0;
    *(v24 + 40) = v17;
    goto LABEL_8;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  type metadata accessor for NoBackgroundConfiguration();
  v4 = swift_allocObject();
  *(v4 + 17) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 24) = sub_20C011394;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
LABEL_9:
  *(v4 + 112) = 0;
  result = 0.0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = 1;
  return result;
}

id sub_20C010A54(void *a1)
{
  v1 = sub_20C0110FC(a1);
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (v3)
  {
    v4 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
    v8 = v3;
    v3 = [v8 imageWithAlignmentRectInsets_];
  }

  return v3;
}

id sub_20C010B38(void *a1)
{
  v1 = sub_20C0110FC(a1);
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() smm:v2 systemImageNamed:v1 withConfiguration:?];

  return v3;
}

id sub_20C010BBC(void *a1)
{
  v1 = sub_20C0110FC(a1);
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() smm:v2 systemImageNamed:?];

  v4 = [v3 imageWithConfiguration_];
  return v4;
}

id sub_20C010C54(void *a1)
{
  v1 = sub_20C0110FC(a1);
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() smm:v2 systemImageNamed:?];

  v4 = [v3 imageWithConfiguration_];
  return v4;
}

id sub_20C010CF8(void *a1)
{
  v1 = sub_20B7C6A74(a1);
  v2 = [objc_opt_self() configurationWithFont_];

  v3 = v2;
  v4 = sub_20C13C914();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  return v5;
}

uint64_t sub_20C010DB8(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D76940];
  v23 = *MEMORY[0x277D743F8];
  v3 = *MEMORY[0x277D76818];
  v30 = MEMORY[0x277D84FA0];
  v21 = v3;
  sub_20B6FF83C(&v26, 1);
  v32 = 1;
  v31 = 0;
  v4 = v30;
  sub_20C13E164();
  v20 = v2;
  sub_20C13CA64();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 >= 4)
      {
        break;
      }

      v10 = sub_20C13DFF4();

      if (v10)
      {
        goto LABEL_7;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26 = v4;
    sub_20B706478(4u, v7, isUniquelyReferenced_nonNull_native);
    v4 = v26;
  }

LABEL_7:
  *&v26 = 0;
  *(&v26 + 1) = v21;
  *&v27 = v20;
  DWORD2(v27) = 0;
  v12 = v32;
  BYTE12(v27) = v32;
  BYTE13(v27) = 9;
  *&v28 = v23;
  v13 = v31;
  BYTE8(v28) = v31;
  v29 = v4;
  v14 = swift_allocObject();
  v15 = v27;
  *(v14 + 16) = v26;
  *(v14 + 32) = v15;
  *(v14 + 48) = v28;
  *(v14 + 64) = v29;
  v16 = objc_opt_self();
  sub_20B7B2490(&v26, v25);
  v17 = [v16 systemGrayColor];
  type metadata accessor for NoBackgroundConfiguration();
  v18 = swift_allocObject();
  *(v18 + 48) = a1;
  *(v18 + 56) = a2;
  *(v18 + 64) = 0;
  *(v18 + 24) = sub_20C01137C;
  *(v18 + 32) = v14;
  *(v18 + 40) = v17;
  *(v18 + 72) = v21;
  *(v18 + 80) = v20;
  *(v18 + 88) = (v12 << 32) | 0x90000000000;
  *(v18 + 96) = v23;
  *(v18 + 104) = v13;
  *(v18 + 112) = v4;
  *(v18 + 16) = 0;

  return v18;
}

id sub_20C0110FC(void *a1)
{
  v1 = *MEMORY[0x277D769D0];
  v16 = *MEMORY[0x277D743F8];
  v2 = *MEMORY[0x277D76818];
  v25 = MEMORY[0x277D84FA0];
  v15 = v2;
  sub_20B6FF83C(v18, 1);
  v27 = 1;
  v26 = 0;
  v3 = v25;
  sub_20C13E164();
  v14 = v1;
  sub_20C13CA64();
  v4 = sub_20C13E1B4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(v3 + 48) + v6);
      if (v8 >= 4)
      {
        break;
      }

      v9 = sub_20C13DFF4();

      if (v9)
      {
        goto LABEL_7;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = v3;
    sub_20B706478(4u, v6, isUniquelyReferenced_nonNull_native);
    v3 = v18[0];
  }

LABEL_7:
  v18[0] = 0;
  v18[1] = v15;
  v18[2] = v14;
  v19 = 0;
  v20 = v27;
  v21 = 9;
  v22 = v16;
  v23 = v26;
  v24 = v3;
  v11 = sub_20B7C6A74(a1);
  v12 = [objc_opt_self() configurationWithFont_];

  sub_20B7B24EC(v18);
  return v12;
}

uint64_t sub_20C01158C()
{
  v0 = sub_20C13C4A4();
  __swift_allocate_value_buffer(v0, qword_27C79CF28);
  *__swift_project_value_buffer(v0, qword_27C79CF28) = 10;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_20C01161C()
{
  result = sub_20C13E204();
  qword_27C79CF40 = result;
  *algn_27C79CF48 = v1;
  return result;
}

uint64_t BrowsingViewController.navigateToUserActivity(_:annotation:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = *a2;
  ObjectType = swift_getObjectType();
  v23 = v13;
  AMSBagProtocol.makeNavigationRequest(with:annotation:)(a1, &v23, ObjectType, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v6);
  v19 = (v18 + v17);
  *v19 = sub_20C0134B8;
  v19[1] = v15;
  v20 = v3;
  sub_20C137C94();
  return (*(v7 + 8))(v12, v6);
}

uint64_t _s9SeymourUI22BrowsingViewControllerC17navigateToRequesty0A4Core7PromiseVyytGAA010NavigationH0VF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v10);
  v38 = &v29 - v11;
  sub_20C011F98(a1, v9);
  v32 = swift_allocObject();
  *(v32 + 16) = v2;
  v36 = *(v5 + 16);
  v12 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v4;
  v36(v12, v9, v4);
  v13 = *(v5 + 80);
  v31 = v5;
  v14 = (v13 + 16) & ~v13;
  v35 = v14;
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v34 = *(v5 + 32);
  v34(v16 + v14, v12, v4);
  v17 = (v16 + v15);
  v18 = v32;
  *v17 = sub_20C012A34;
  v17[1] = v18;
  type metadata accessor for NavigationRequest(0);
  v19 = v33;
  v20 = v38;
  sub_20C137C94();
  v21 = v30;
  v22 = *(v31 + 8);
  v22(v9, v30);
  v23 = *&v19[OBJC_IVAR____TtC9SeymourUI22BrowsingViewController_navigationRouter];
  v24 = v20;
  v25 = v21;
  v36(v9, v24, v21);
  v26 = swift_allocObject();
  v34(v26 + v35, v9, v25);
  v27 = (v26 + v15);
  *v27 = j___s9SeymourUI16NavigationRouterC17navigateToRequesty0A4Core7PromiseVyytGAA0cG0VF;
  v27[1] = v23;

  sub_20C137C94();
  return (v22)(v38, v25);
}

uint64_t BrowsingViewController.navigateToURLContext(_:annotation:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = *a2;
  ObjectType = swift_getObjectType();
  v23 = v13;
  AMSBagProtocol.makeNavigationRequest(with:annotation:)(a1, &v23, ObjectType, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v6);
  v19 = (v18 + v17);
  *v19 = sub_20C0134B8;
  v19[1] = v15;
  v20 = v3;
  sub_20C137C94();
  return (*(v7 + 8))(v12, v6);
}

uint64_t BrowsingViewController.navigateToURL(_:annotation:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = *a2;
  ObjectType = swift_getObjectType();
  v23 = v13;
  AMSBagProtocol.makeNavigationRequest(with:annotation:)(a1, &v23, ObjectType, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v6);
  v19 = (v18 + v17);
  *v19 = sub_20C012A10;
  v19[1] = v15;
  v20 = v3;
  sub_20C137C94();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_20C011F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v44 = a2;
  v43 = type metadata accessor for NavigationRequest(0);
  v41 = *(v43 - 8);
  v40 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764770, &unk_20C180710);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v38 - 8);
  v37 = *(v14 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v35 = &v35 - v17;
  sub_20C13B534();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F970, &qword_20C180678);
  sub_20C137C94();
  v18 = swift_allocObject();
  *(v18 + 16) = nullsub_1;
  *(v18 + 24) = 0;
  (*(v8 + 16))(v10, v13, v7);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v19, v10, v7);
  v22 = (v21 + v20);
  *v22 = sub_20BE70DDC;
  v22[1] = v18;
  v23 = v35;
  sub_20C137C94();
  (*(v8 + 8))(v13, v7);
  v24 = v39;
  sub_20BDC6590(v42, v39, type metadata accessor for NavigationRequest);
  v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v26 = swift_allocObject();
  sub_20B75B150(v24, v26 + v25);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_20C012B8C;
  *(v27 + 24) = v26;
  v28 = v36;
  v29 = v38;
  (*(v14 + 16))(v36, v23, v38);
  v30 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v31 = (v37 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v14 + 32))(v32 + v30, v28, v29);
  v33 = (v32 + v31);
  *v33 = sub_20B64B960;
  v33[1] = v27;
  sub_20C137C94();
  return (*(v14 + 8))(v23, v29);
}

uint64_t sub_20C012548@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = type metadata accessor for NavigationRequest(0);
  v24[0] = *(v5 - 8);
  v6 = *(v24[0] + 64);
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771D18, &qword_20C189FE0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BDC6590(a1, v13, type metadata accessor for NavigationResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 0x10 || ((1 << EnumCaseMultiPayload) & 0x1B980) == 0)
  {
    sub_20C012A64(v13);
  }

  else
  {
    sub_20C012A64(v13);
    v16 = [a2 popToRootViewControllerAnimated_];
    if (v16)
    {
      v17 = v16;
      sub_20B62BB28();
      v18 = sub_20C13CC74();
    }

    else
    {
      v18 = 0;
    }

    *(swift_allocObject() + 16) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D58, &qword_20C157288);
    sub_20C137CA4();
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    v19(sub_20B52E4A0, v20);

    (*(v8 + 8))(v10, v7);
  }

  sub_20BDC6590(a1, v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v21 = (*(v24[0] + 80) + 16) & ~*(v24[0] + 80);
  v22 = swift_allocObject();
  sub_20B75B150(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  return sub_20C137CA4();
}

uint64_t sub_20C0128C4(uint64_t a1)
{
  v2 = type metadata accessor for NavigationRequest(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_20BDC6590(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_20B75B150(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_20C137CA4();
}

uint64_t sub_20C012A64(uint64_t a1)
{
  v2 = type metadata accessor for NavigationResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C012AC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

uint64_t sub_20C012B8C()
{
  v1 = *(type metadata accessor for NavigationRequest(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20C0128C4(v2);
}

uint64_t sub_20C012C24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_29Tm_1()
{
  v1 = type metadata accessor for NavigationRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v9 = sub_20C132C14();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v7 = &unk_27C763FC0;
      v8 = &unk_20C155B00;
      goto LABEL_17;
    case 2u:
      v10 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v17 = sub_20C1387E4();
      (*(*(v17 - 8) + 8))(v0 + v3, v17);
      v7 = &qword_27C7710E0;
      v8 = &unk_20C15F290;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
      v8 = &unk_20C155B10;
LABEL_17:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v8) + 48);
      v19 = sub_20C1388F4();
      (*(*(v19 - 8) + 8))(v5 + v18, v19);
      break;
    case 9u:
      v10 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v10 = sub_20C138204();
LABEL_11:
      (*(*(v10 - 8) + 8))(v0 + v3, v10);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_20C1344C4();
        (*(*(v11 - 8) + 8))(v0 + v3, v11);
        v12 = type metadata accessor for WorkoutSessionConfiguration(0);
        v13 = v12[5];
        v14 = sub_20C137254();
        (*(*(v14 - 8) + 8))(v5 + v13, v14);
        v15 = v12[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = sub_20C137EA4();
          (*(*(v16 - 8) + 8))(v5 + v15, v16);
        }

        else
        {
        }

        v36 = v12[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v12[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v12[11] + 8) >= 0xC)
        {
        }

        v42 = v12[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v20 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
      v24 = sub_20C1344C4();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v20[v23], 1, v24))
      {
        (*(v25 + 8))(&v20[v23], v24);
      }

      break;
    case 4:

      break;
    case 3:
      v22 = sub_20C139144();
      (*(*(v22 - 8) + 8))(v20, v22);
      break;
  }

  v26 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 1)
  {
    v35 = sub_20C135024();
    (*(*(v35 - 8) + 8))(v26, v35);
  }

  else if (!v27)
  {
    v46 = v2;
    v28 = (v2 + 16) & ~v2;
    v29 = v0;
    v30 = v4;
    v31 = sub_20C132C14();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v33(v26, v31);
    v34 = *(type metadata accessor for NavigationSharingURLInfo(0) + 20);
    if (!(*(v32 + 48))(&v26[v34], 1, v31))
    {
      v33(&v26[v34], v31);
    }

    v4 = v30;
    v0 = v29;
    v3 = v28;
    v2 = v46;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20C0134C0@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = type metadata accessor for TabletSessionViewFactory();
      v4 = &off_2822FECC0;
    }

    else
    {
      v3 = type metadata accessor for PhoneSessionViewFactory();
      v4 = &off_28229AE30;
    }

    goto LABEL_7;
  }

  if (a1 == 3)
  {
    v3 = type metadata accessor for TVSessionViewFactory();
    v4 = &off_2822CD260;
LABEL_7:
    result = swift_allocObject();
    a2[3] = v3;
    a2[4] = v4;
    *a2 = result;
    return result;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t AVMediaSelectionOption.languageCodeIdentifier.getter()
{
  v1 = v0;
  v2 = sub_20C132FB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0, &unk_20C166B80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB8, &unk_20C181630);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  v16 = [v1 locale];
  if (v16)
  {
    v17 = v16;
    sub_20C132F84();

    v18 = sub_20C132FD4();
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  }

  else
  {
    v18 = sub_20C132FD4();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  }

  sub_20BE95D00(v8, v11);
  sub_20C132FD4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    v20 = &qword_27C76FEB0;
    v21 = &unk_20C166B80;
    v22 = v11;
LABEL_8:
    sub_20B520158(v22, v20, v21);
    return 0;
  }

  sub_20C132FC4();
  (*(v19 + 8))(v11, v18);
  sub_20C132FA4();
  (*(v3 + 8))(v5, v2);
  v23 = sub_20C132F24();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v15, 1, v23) == 1)
  {
    v20 = &qword_27C76FEB8;
    v21 = &unk_20C181630;
    v22 = v15;
    goto LABEL_8;
  }

  v26 = sub_20C132F14();
  (*(v24 + 8))(v15, v23);
  return v26;
}

uint64_t AVMediaSelectionOption.audioFocusSelection.getter()
{
  if (qword_27C7607D0 != -1)
  {
    swift_once();
  }

  if ([v0 hasMediaCharacteristic_])
  {
    return 0;
  }

  if (qword_27C7607D8 != -1)
  {
    swift_once();
  }

  if ([v0 hasMediaCharacteristic_])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_20C0139F0()
{
  if (*(v0 + 24))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v14.origin.x = v3;
    v14.origin.y = v5;
    v14.size.width = v7;
    v14.size.height = v9;
    Width = CGRectGetWidth(v14);
    v15.origin.x = v3;
    v15.origin.y = v5;
    v15.size.width = v7;
    v15.size.height = v9;
    Height = CGRectGetHeight(v15);
    if (Height >= Width)
    {
      v12 = Width;
    }

    else
    {
      v12 = Height;
    }

    if (qword_27C7606D0 != -1)
    {
      swift_once();
    }

    v13 = *&qword_27C799F40;
    if (qword_27C7606E0 != -1)
    {
      swift_once();
    }

    *(v0 + 16) = (v12 - (v13 + *&qword_27C799F50)) * 0.5;
    *(v0 + 24) = 0;
  }
}

char *sub_20C013B34(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20, &unk_20C15DB90);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v67 - v10;
  v11 = sub_20C13BC44();
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20C13BBC4();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_itemInfo;
  v15 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v4[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_showSeparator] = 1;
  v16 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v17 = 16.0;
  }

  else
  {
    v17 = 4.0;
  }

  v18 = &v4[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView];
  v19 = [v16 layer];
  [v19 setCornerRadius_];

  [v16 setClipsToBounds_];
  *v18 = v16;
  v18[1] = &off_2822B63E8;
  v20 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_downloadButton;
  v21 = [objc_allocWithZone(type metadata accessor for DownloadButton()) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v20] = v21;
  v22 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_separator;
  v23 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v24 = objc_opt_self();
  v25 = [v24 separatorColor];
  [v23 setBackgroundColor_];

  *&v4[v22] = v23;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAdjustsFontForContentSizeCategory_];
  v27 = *MEMORY[0x277D76968];
  v28 = objc_opt_self();
  v29 = [v28 preferredFontDescriptorWithTextStyle:v27 compatibleWithTraitCollection:0];
  v30 = [v29 fontDescriptorWithSymbolicTraits_];
  if (v30)
  {
    v31 = v30;

    v29 = v31;
  }

  v32 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_subtitleLabel;
  v33 = objc_opt_self();
  v34 = [v33 fontWithDescriptor:v29 size:0.0];

  [v26 setFont_];
  [v26 setAllowsDefaultTighteningForTruncation_];
  LODWORD(v35) = 1148846080;
  [v26 setContentCompressionResistancePriority:1 forAxis:v35];

  v36 = [v24 whiteColor];
  [v26 setTextColor_];

  [v26 setLineBreakMode_];
  [v26 setNumberOfLines_];
  *&v4[v32] = v26;
  v37 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  [v37 setAdjustsFontForContentSizeCategory_];
  v38 = [v28 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v39 = [v38 fontDescriptorWithSymbolicTraits_];
  if (v39)
  {
    v40 = v39;

    v38 = v40;
  }

  v41 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_titleLabel;
  v42 = [v33 fontWithDescriptor:v38 size:0.0];

  [v37 setFont_];
  [v37 setAllowsDefaultTighteningForTruncation_];
  LODWORD(v43) = 1148846080;
  [v37 setContentCompressionResistancePriority:1 forAxis:v43];

  v44 = [v24 whiteColor];
  [v37 setTextColor_];

  [v37 setLineBreakMode_];
  [v37 setNumberOfLines_];
  *&v4[v41] = v37;
  v45 = &v4[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_layout];
  __asm { FMOV            V0.2D, #10.0 }

  *v45 = _Q0;
  *(v45 + 2) = 0;
  v45[24] = 1;
  *(v45 + 4) = 0x3FE2000000000000;
  v51 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_textLayoutGuide;
  *&v4[v51] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v52 = type metadata accessor for ActionBrickRowCell(0);
  v75.receiver = v4;
  v75.super_class = v52;
  v53 = objc_msgSendSuper2(&v75, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28, &unk_20C15AA40);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  v55 = v68;
  v54 = v69;
  v56 = v71;
  (*(v69 + 104))(v68, *MEMORY[0x277D74A98], v71);
  v57 = sub_20C13BBF4();
  (*(*(v57 - 8) + 56))(v72, 1, 1, v57);
  v58 = v53;
  v59 = v70;
  sub_20C13BC34();
  sub_20C13BC04();
  (*(v73 + 8))(v59, v74);
  (*(v54 + 8))(v55, v56);
  sub_20C13D464();
  v60 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_downloadButton;
  [*&v58[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_downloadButton] addTarget:v58 action:sel_handleDownloadButtonTapped_ forControlEvents:64];
  v61 = [v58 contentView];
  [v61 addSubview_];

  v62 = [v58 contentView];
  [v62 addSubview_];

  v63 = [v58 contentView];
  [v63 addSubview_];

  v64 = [v58 contentView];
  [v64 addSubview_];

  [v58 addSubview_];
  v65 = [v58 contentView];

  [v65 addLayoutGuide_];
  sub_20C014508();

  return v58;
}

void sub_20C014508()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C151850;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView];
  v4 = [v3 leadingAnchor];
  v5 = [v1 contentView];
  v6 = [v5 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v7 = [v4 constraintEqualToAnchor:v6 constant:*&qword_27C799F40];

  *(v2 + 32) = v7;
  v8 = [v3 widthAnchor];
  v9 = &v1[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_layout];
  swift_beginAccess();
  sub_20C0139F0();
  v11 = v10;
  swift_endAccess();
  v12 = [v8 constraintEqualToConstant_];

  *(v2 + 40) = v12;
  v13 = [v3 heightAnchor];
  v14 = [v3 widthAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 multiplier:v9[4]];

  *(v2 + 48) = v15;
  v16 = [v3 topAnchor];
  v17 = [v1 contentView];
  v18 = [v17 &selRef_setLineBreakMode_];

  v19 = [v16 constraintGreaterThanOrEqualToAnchor:v18 constant:*v9];
  *(v2 + 56) = v19;
  v20 = [v3 bottomAnchor];
  v21 = [v1 contentView];
  v22 = [v21 &selRef_secondaryLabel + 5];

  v23 = [v20 constraintLessThanOrEqualToAnchor:v22 constant:-*v9];
  *(v2 + 64) = v23;
  v105 = v2;
  v24 = [v3 centerYAnchor];
  v25 = [v1 contentView];
  v26 = [v25 centerYAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v2 + 72) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C150040;
  v29 = v28;
  v30 = *&v1[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_textLayoutGuide];
  v31 = [v30 leadingAnchor];
  v32 = [v3 trailingAnchor];
  v103 = v9;
  v33 = [v31 constraintEqualToAnchor:v32 constant:v9[1]];

  v29[4] = v33;
  v34 = [v30 topAnchor];
  v35 = [v1 &selRef_setMaximumFractionDigits_];
  v36 = [v35 topAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:*v9];
  v104 = v29;
  v29[5] = v37;
  v38 = [v30 trailingAnchor];
  v39 = [v1 &selRef_setMaximumFractionDigits_];
  v40 = [v39 trailingAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  v29[6] = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C150040;
  v43 = v42;
  v44 = *&v1[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_titleLabel];
  v45 = [v44 leadingAnchor];
  v46 = [v30 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  v43[4] = v47;
  v48 = [v44 trailingAnchor];
  v49 = [v30 trailingAnchor];
  v50 = [v48 &selRef:v49 alertControllerReleasedDictationButton:? + 5];

  v102 = v43;
  v43[5] = v50;
  v51 = [v44 topAnchor];
  v52 = [v30 topAnchor];
  v53 = [v51 &selRef:v52 alertControllerReleasedDictationButton:? + 5];

  v43[6] = v53;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_20C14FE90;
  v55 = v54;
  v56 = *&v1[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_subtitleLabel];
  v57 = [v56 leadingAnchor];
  v58 = [v30 leadingAnchor];
  v59 = [v57 &selRef:v58 alertControllerReleasedDictationButton:? + 5];

  v55[4] = v59;
  v60 = [v56 trailingAnchor];
  v61 = [v30 trailingAnchor];
  v62 = [v60 &selRef:v61 alertControllerReleasedDictationButton:? + 5];

  v55[5] = v62;
  v63 = [v56 topAnchor];
  v64 = [v44 bottomAnchor];
  v65 = [v63 &selRef:v64 alertControllerReleasedDictationButton:? + 5];

  v55[6] = v65;
  v101 = v55;
  v66 = [v56 bottomAnchor];
  v67 = [v30 bottomAnchor];
  v68 = [v66 &selRef:v67 alertControllerReleasedDictationButton:? + 5];

  v55[7] = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_20C14FE90;
  v70 = *&v1[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_separator];
  v71 = [v70 leadingAnchor];
  v72 = [v30 leadingAnchor];
  v73 = [v71 &selRef:v72 alertControllerReleasedDictationButton:? + 5];

  *(v69 + 32) = v73;
  v74 = [v70 trailingAnchor];
  v75 = [v1 trailingAnchor];
  v76 = [v74 &selRef:v75 alertControllerReleasedDictationButton:? + 5];

  *(v69 + 40) = v76;
  v77 = [v70 bottomAnchor];
  v78 = [v1 bottomAnchor];
  v79 = [v77 &selRef:v78 alertControllerReleasedDictationButton:? + 5];

  *(v69 + 48) = v79;
  v80 = [v70 heightAnchor];
  sub_20C1387F4();
  v81 = [v80 constraintEqualToConstant_];

  *(v69 + 56) = v81;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_20C14FE90;
  v83 = *&v1[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_downloadButton];
  v84 = [v83 leadingAnchor];
  v85 = [v30 leadingAnchor];
  v86 = [v84 &selRef:v85 alertControllerReleasedDictationButton:? + 5];

  *(v82 + 32) = v86;
  v87 = [v83 bottomAnchor];
  v88 = [v1 contentView];
  v89 = [v88 bottomAnchor];

  v90 = [v87 constraintEqualToAnchor:v89 constant:-*v103];
  *(v82 + 40) = v90;
  v91 = [v83 trailingAnchor];
  v92 = [v1 contentView];
  v93 = [v92 trailingAnchor];

  v94 = [v91 constraintLessThanOrEqualToAnchor_];
  *(v82 + 48) = v94;
  v95 = [v83 topAnchor];
  v96 = [v30 bottomAnchor];
  v97 = [v95 constraintGreaterThanOrEqualToAnchor_];

  *(v82 + 56) = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150DB0;
  *(inited + 32) = v105;
  *(inited + 40) = v104;
  *(inited + 48) = v102;
  *(inited + 56) = v101;
  *(inited + 64) = v69;
  *(inited + 72) = v82;
  v99 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v100 = sub_20C13CC54();

  [v99 activateConstraints_];
}

uint64_t sub_20C0151AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for ActionBrickRowCell(0);
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  [*&v0[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_downloadButton] setHidden_];
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

id sub_20C015474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionBrickRowCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActionBrickRowCell(uint64_t a1)
{
  result = qword_2811031C0;
  if (!qword_2811031C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C0155BC(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20C01569C(unint64_t a1, int a2)
{
  v5 = sub_20C13BB84();
  v232 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v185 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v217 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v214 = &v185 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v215 = &v185 - v10;
  v213 = v11;
  MEMORY[0x28223BE20](v12);
  v216 = &v185 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v14 - 8);
  v225 = &v185 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v227 = *(v16 - 8);
  v228 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v185 - v20;
  v223 = sub_20C1391C4();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v224 = &v185 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_20C138A64();
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v226 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v24 - 8);
  v221 = &v185 - v25;
  v26 = sub_20C13C554();
  ObjectType = *(v26 - 8);
  v235 = v26;
  MEMORY[0x28223BE20](v26);
  v233 = (&v185 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20C137C24();
  v239 = *(v28 - 1);
  v240 = v28;
  MEMORY[0x28223BE20](v28);
  v236 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = v29;
  MEMORY[0x28223BE20](v30);
  v238 = &v185 - v31;
  v32 = sub_20C136CD4();
  v230 = *(v32 - 8);
  v231 = v32;
  MEMORY[0x28223BE20](v32);
  v237 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C134E44();
  MEMORY[0x28223BE20](v34 - 8);
  v36 = (&v185 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_20C134014();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v41 = &v185 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v42 == 33)
  {
    sub_20BA1D9A4();
    [*&v2[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_titleLabel] setText_];
    [*&v2[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_subtitleLabel] setText_];
    v126 = *&v2[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView];
    v127 = [v126 layer];
    [v127 setBorderColor_];

    v240 = [v126 layer];
    [v240 setBorderWidth_];
    v128 = v240;
  }

  else if (v42 == 32)
  {
    v195 = v18;
    v197 = v21;
    v208 = a2;
    v43 = v2;
    v44 = v39;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
    v46 = swift_projectBox();
    v47 = v46 + *(v45 + 64);
    v48 = *v47;
    v49 = *(v47 + 8);
    v51 = *(v47 + 16);
    v50 = *(v47 + 24);
    v232 = v36;
    v52 = *(v47 + 32);
    v53 = *(v47 + 40);
    v54 = v46 + *(v45 + 96);
    v210 = *v54;
    v209 = *(v54 + 8);
    v206 = v38;
    v55 = *(v38 + 16);
    v207 = v44;
    v56 = v44;
    v57 = v43;
    v58 = v50;
    v55(v41, v46, v56);
    v59 = *&v57[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_titleLabel];
    v60 = v48;
    v61 = v49;
    v200 = v51;
    v204 = v58;

    v203 = v52;

    v202 = v53;

    [v59 setAttributedText_];
    v62 = *&v57[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_subtitleLabel];
    v201 = v61;
    [v62 setAttributedText_];
    v205 = v41;
    sub_20C133F04();
    v198 = sub_20C138054();
    v211 = v63;
    v64 = v237;
    sub_20C134E34();
    v65 = v238;
    sub_20C136CB4();
    v66 = sub_20C136CC4();
    v68 = v67;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v69 = sub_20C13D374();
    v70 = v233;
    v71 = ObjectType;
    *v233 = v69;
    v72 = v235;
    (*(v71 + 104))(v70, *MEMORY[0x277D85200], v235);
    LOBYTE(v59) = sub_20C13C584();
    (*(v71 + 8))(v70, v72);
    if (v59)
    {
      v233 = v60;
      v74 = *&v57[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView];
      v73 = *&v57[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v74 setContentMode_];
      v75 = sub_20BA66C54();
      v199 = v74;
      v235 = v73;
      if (v75)
      {
        v76 = swift_allocObject();
        v194 = v57;
        swift_unknownObjectWeakInit();
        v77 = v239;
        v78 = *(v239 + 16);
        v196 = v68;
        v79 = v240;
        v191 = v239 + 16;
        v189 = v78;
        v78(v236, v65, v240);
        v80 = *(v77 + 80);
        v81 = (v80 + 24) & ~v80;
        v186 = v229 + 7;
        v82 = v66;
        v83 = (v229 + 7 + v81) & 0xFFFFFFFFFFFFFFF8;
        v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
        v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
        v193 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
        v192 = (v85 + 31) & 0xFFFFFFFFFFFFFFF8;
        v190 = v80;
        v86 = swift_allocObject();
        *(v86 + 16) = v76;
        v87 = v77 + 32;
        v88 = *(v77 + 32);
        v89 = v196;
        v90 = v79;
        v91 = v87;
        v188 = v88;
        v88(v86 + v81, v236, v90);
        v92 = (v86 + v83);
        v187 = v82;
        *v92 = v82;
        v92[1] = v89;
        v93 = (v86 + v84);
        v94 = v211;
        *v93 = v198;
        v93[1] = v94;
        *(v86 + v85) = 2;
        v95 = v86 + v193;
        *v95 = MEMORY[0x277D84F90];
        *(v95 + 8) = 0;
        v96 = (v86 + v192);
        *v96 = 0;
        v96[1] = 0;
        v97 = v235;
        v98 = *(v235 + 152);

        v99 = ObjectType;
        v98(sub_20C016E64, v86, ObjectType, v97);

        [v74 bounds];
        if (v100 <= 0.0 || (v102 = v101, v101 <= 0.0))
        {

          v125 = v231;
          v65 = v238;
          goto LABEL_18;
        }

        v103 = v100;
        v104 = v97;
        v105 = v99;
        v193 = v91;
        v106 = ~v190;
        (*(v97 + 120))(0, v105, v97);
        v107 = v221;
        v65 = v238;
        v108 = v240;
        v189(v221, v238, v240);
        (*(v239 + 56))(v107, 0, 1, v108);
        (*(v104 + 16))(v107, v105, v104);
        sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        sub_20C137BC4();
        v109 = sub_20C13D5A4();
        [v74 setBackgroundColor_];

        v110 = v108;
        (*(v104 + 176))(COERCE_DOUBLE(*&v103), COERCE_DOUBLE(*&v102), 0, v105, v104);
        v192 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v111 = v236;
        v112 = v189;
        v189(v236, v65, v108);
        v185 = v106;
        v113 = (v190 + 16) & v106;
        v114 = (v186 + v113) & 0xFFFFFFFFFFFFFFF8;
        v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
        v116 = (v115 + 23) & 0xFFFFFFFFFFFFFFF8;
        v117 = swift_allocObject();
        v188(v117 + v113, v111, v110);
        *(v117 + v114) = v192;
        v118 = (v117 + v115);
        v119 = v112;
        *v118 = v103;
        v118[1] = v102;
        v221 = v117;
        v120 = (v117 + v116);
        *v120 = 0;
        v120[1] = 0;
        v112(v111, v65, v110);
        (*(v222 + 104))(v224, *MEMORY[0x277D542A8], v223);

        v121 = v226;
        sub_20C138A54();
        v122 = v225;
        sub_20B5F18C0(v121, v225);
        v123 = v227;
        v124 = v228;
        if ((*(v227 + 48))(v122, 1, v228) == 1)
        {
          sub_20B520158(v122, &unk_27C766670, &unk_20C151580);
          sub_20BA1D9A4();

          (*(v219 + 8))(v121, v220);
          v125 = v231;
LABEL_18:
          v141 = v230;
          v64 = v237;
          v142 = v210;
          v143 = v209;
          v140 = v240;
          goto LABEL_19;
        }

        v153 = v124;
        v154 = v190;
        v224 = *(v123 + 32);
        (v224)(v197, v122, v153);
        v155 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v119(v111, v65, v240);
        v156 = (v154 + 40) & v185;
        v157 = v156 + v229;
        v158 = (v156 + v229) & 0xFFFFFFFFFFFFFFF8;
        v159 = swift_allocObject();
        *(v159 + 2) = v155;
        v159[3] = v103;
        v159[4] = v102;
        v188(v159 + v156, v111, v240);
        *(v159 + v157) = 0;
        v160 = v159 + v158;
        *(v160 + 1) = 0;
        *(v160 + 2) = 0;
        v161 = swift_allocObject();
        *(v161 + 16) = sub_20C016FF8;
        *(v161 + 24) = v159;
        v162 = v227;
        v163 = v228;
        v164 = v195;
        (*(v227 + 16))(v195, v197, v228);
        v165 = (*(v162 + 80) + 16) & ~*(v162 + 80);
        v166 = (v212 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
        v167 = swift_allocObject();
        (v224)(v167 + v165, v164, v163);
        v168 = (v167 + v166);
        *v168 = sub_20B5F67A4;
        v168[1] = v161;
        v169 = v215;
        sub_20C137C94();
        v170 = swift_allocObject();
        v171 = v221;
        *(v170 + 16) = sub_20C016F3C;
        *(v170 + 24) = v171;
        v172 = swift_allocObject();
        *(v172 + 16) = sub_20B5F67D4;
        *(v172 + 24) = v170;
        v173 = v217;
        v174 = v214;
        v175 = v218;
        (*(v217 + 16))(v214, v169, v218);
        v176 = (*(v173 + 80) + 16) & ~*(v173 + 80);
        v177 = (v213 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
        v178 = swift_allocObject();
        (*(v173 + 32))(v178 + v176, v174, v175);
        v179 = (v178 + v177);
        *v179 = sub_20B5DF204;
        v179[1] = v172;

        v180 = v216;
        sub_20C137C94();
        v181 = *(v173 + 8);
        v65 = v238;
        v181(v169, v175);
        v182 = sub_20C137CB4();
        v183 = swift_allocObject();
        *(v183 + 16) = 0;
        *(v183 + 24) = 0;
        v182(sub_20B52347C, v183);

        v181(v180, v175);
        v184 = v240;
        (*(v227 + 8))(v197, v228);
        (*(v219 + 8))(v226, v220);
        v140 = v184;
        v141 = v230;
        v125 = v231;
        v64 = v237;
      }

      else
      {

        v140 = v240;
        v141 = v230;
        v125 = v231;
      }

      v142 = v210;
      v143 = v209;
LABEL_19:
      (*(v239 + 8))(v65, v140);
      (*(v141 + 8))(v64, v125);

      sub_20B60B124(v232, MEMORY[0x277D51268]);
      v144 = v205;
      v145 = sub_20C133EB4() > 0;
      v146 = v235;
      (*(v235 + 264))(v145, ObjectType, v235);
      v147 = sub_20C133E54();
      (*(v146 + 296))(v147);

      sub_20B609FDC(v142, v143, v208 & 1);
      v148 = sub_20C133FF4();
      v150 = v149;
      v152 = v151;
      sub_20B5F09A4(v148, v149, v151);
      sub_20B584078(v148, v150, v152);

      (*(v206 + 8))(v144, v207);
      return;
    }

    __break(1u);
  }

  else
  {
    sub_20C13B534();

    v129 = v2;
    v130 = sub_20C13BB74();
    v131 = sub_20C13D1D4();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v241 = a1;
      v242 = v134;
      *v132 = 138543618;
      *(v132 + 4) = v129;
      *v133 = v129;
      *(v132 + 12) = 2082;
      v135 = sub_20B5F66D0();
      v136 = v129;
      v137 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v135);
      v139 = sub_20B51E694(v137, v138, &v242);

      *(v132 + 14) = v139;
      _os_log_impl(&dword_20B517000, v130, v131, "Attempted to configure %{public}@ with item: %{public}s", v132, 0x16u);
      sub_20B520158(v133, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v133, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v134);
      MEMORY[0x20F2F6A40](v134, -1, -1);
      MEMORY[0x20F2F6A40](v132, -1, -1);
    }

    v232[1](v7, v5);
  }
}

double sub_20C016D0C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20C016D58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20C016DB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20C016E14(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_separator) setHidden_];
}

void sub_20C016E64()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA3784C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20C016F3C(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA62FA0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20C016FF8(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F26A8(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

void sub_20C0170AC()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_showSeparator) = 1;
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 4.0;
  }

  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView);
  v6 = [v3 layer];
  [v6 setCornerRadius_];

  [v3 setClipsToBounds_];
  *v5 = v3;
  v5[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_downloadButton;
  v8 = [objc_allocWithZone(type metadata accessor for DownloadButton()) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_separator;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = objc_opt_self();
  v12 = [v11 separatorColor];
  [v10 setBackgroundColor_];

  *(v0 + v9) = v10;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  v14 = *MEMORY[0x277D76968];
  v15 = objc_opt_self();
  v16 = [v15 preferredFontDescriptorWithTextStyle:v14 compatibleWithTraitCollection:0];
  v17 = [v16 fontDescriptorWithSymbolicTraits_];
  if (v17)
  {
    v18 = v17;

    v16 = v18;
  }

  v19 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_subtitleLabel;
  v20 = objc_opt_self();
  v21 = [v20 fontWithDescriptor:v16 size:0.0];

  [v13 setFont_];
  [v13 setAllowsDefaultTighteningForTruncation_];
  LODWORD(v22) = 1148846080;
  [v13 setContentCompressionResistancePriority:1 forAxis:v22];

  v23 = [v11 whiteColor];
  [v13 setTextColor_];

  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  *(v0 + v19) = v13;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setAdjustsFontForContentSizeCategory_];
  v25 = [v15 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v26 = [v25 fontDescriptorWithSymbolicTraits_];
  if (v26)
  {
    v27 = v26;

    v25 = v27;
  }

  v28 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_titleLabel;
  v29 = [v20 fontWithDescriptor:v25 size:0.0];

  [v24 setFont_];
  [v24 setAllowsDefaultTighteningForTruncation_];
  LODWORD(v30) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v30];

  v31 = [v11 whiteColor];
  [v24 setTextColor_];

  [v24 setLineBreakMode_];
  [v24 setNumberOfLines_];
  *(v0 + v28) = v24;
  v32 = v0 + OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_layout;
  __asm { FMOV            V0.2D, #10.0 }

  *v32 = _Q0;
  *(v32 + 16) = 0;
  *(v32 + 24) = 1;
  *(v32 + 32) = 0x3FE2000000000000;
  v38 = OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_textLayoutGuide;
  *(v0 + v38) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C01763C()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    v11 = MEMORY[0x28223BE20](v10);
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B60B124(v7, type metadata accessor for ShelfItemAction);
  }

  return result;
}

double sub_20C017834()
{
  v1 = v0;
  v2 = type metadata accessor for MetadataEntry(0);
  v64 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = (&v50 - v5);
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = (&v50 - v9);
  MEMORY[0x28223BE20](v11);
  v52 = &v50 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (&v50 - v14);
  v16 = sub_20C135A94();
  v62 = OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_audioHintLanguagesTags;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_audioHintLanguagesTags) = v16;

  v17 = sub_20C135A74();
  v18 = OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_audioLanguagesTags;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_audioLanguagesTags) = v17;

  v19 = sub_20C135A84();
  v60 = OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_subtitleLanguagesTags;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_subtitleLanguagesTags) = v19;

  v20 = (v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v51 = sub_20C138D34();
  v58 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v53 = sub_20C138D34();
  v59 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v54 = sub_20C138D34();
  v61 = v23;
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v24 = sub_20C138D34();
  v26 = v25;
  v27 = *(*(v0 + v18) + 16);
  v28 = &qword_27C79C000;
  v65 = v24;
  v63 = v2;
  if (v27)
  {
    v29 = v24;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_mediaTagStringBuilder + 24));

    v30 = sub_20C138544();

    sub_20C132ED4();
    v31 = v52;
    v32 = v58;
    v15[4] = v51;
    v15[5] = v32;
    *v15 = v30;
    v15[1] = 0x4000000000000001;
    v15[2] = v29;
    v15[3] = v26;
    sub_20B9FD7D8(v15, v31, type metadata accessor for MetadataEntry);
    v33 = sub_20BC0741C(0, 1, 1, MEMORY[0x277D84F90]);
    v35 = v33[2];
    v34 = v33[3];
    v36 = v26;
    if (v35 >= v34 >> 1)
    {
      v33 = sub_20BC0741C((v34 > 1), v35 + 1, 1, v33);
    }

    v37 = v64;
    sub_20B9FD758(v15, type metadata accessor for MetadataEntry);
    v33[2] = v35 + 1;
    sub_20B60E3E0(v31, v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35);
    v28 = &qword_27C79C000;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
    v37 = v64;
    v36 = v26;
  }

  if (*(*(v1 + v60) + 16))
  {
    __swift_project_boxed_opaque_existential_1((v1 + v28[491]), *(v1 + v28[491] + 24));

    v38 = sub_20C138544();

    sub_20C132ED4();
    v39 = v59;
    v10[4] = v53;
    v10[5] = v39;
    *v10 = v38;
    v10[1] = 0x4000000000000000;
    v10[2] = v65;
    v10[3] = v36;
    v40 = v55;
    sub_20B9FD7D8(v10, v55, type metadata accessor for MetadataEntry);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_20BC0741C(0, v33[2] + 1, 1, v33);
    }

    v42 = v33[2];
    v41 = v33[3];
    if (v42 >= v41 >> 1)
    {
      v33 = sub_20BC0741C((v41 > 1), v42 + 1, 1, v33);
    }

    sub_20B9FD758(v10, type metadata accessor for MetadataEntry);
    v33[2] = v42 + 1;
    sub_20B60E3E0(v40, v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v42);
    v28 = &qword_27C79C000;
  }

  else
  {
  }

  if (!*(*(v1 + v62) + 16))
  {

    if (!v33[2])
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1((v1 + v28[491]), *(v1 + v28[491] + 24));

  v43 = sub_20C138544();

  v44 = v56;
  sub_20C132ED4();
  v45 = v61;
  v44[4] = v54;
  v44[5] = v45;
  *v44 = v43;
  v44[1] = 0x4000000000000000;
  v44[2] = v65;
  v44[3] = v36;
  v46 = v57;
  sub_20B9FD7D8(v44, v57, type metadata accessor for MetadataEntry);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_20BC0741C(0, v33[2] + 1, 1, v33);
  }

  v48 = v33[2];
  v47 = v33[3];
  if (v48 >= v47 >> 1)
  {
    v33 = sub_20BC0741C((v47 > 1), v48 + 1, 1, v33);
  }

  sub_20B9FD758(v44, type metadata accessor for MetadataEntry);
  v33[2] = v48 + 1;
  sub_20B60E3E0(v46, v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v48);
  if (v33[2])
  {
LABEL_19:
    sub_20C017F50(v33);
  }

LABEL_20:

  return result;
}

void sub_20C017F50(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13C554();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  v7 = v6 | 0x4000000000000004;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_storefrontLocalizer + 24));

  v8 = sub_20C138D34();
  v10 = v9;
  if (sub_20C1380F4() == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20C14F980;
  *(v12 + 32) = v7;
  v41 = 0uLL;
  LOBYTE(v42) = 1;
  *(&v42 + 1) = 0;
  *&v43 = 0;
  WORD4(v43) = 128;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  LOBYTE(v47) = 0;
  *(&v47 + 1) = v12;
  v48 = MEMORY[0x277D84F90];
  *&v49 = 0;
  *(&v49 + 1) = v8;
  v50 = v10;
  v51 = v11;
  nullsub_1();
  v13 = v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row;
  v14 = *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 144);
  v52[8] = *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 128);
  v52[9] = v14;
  v53 = *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 160);
  v15 = *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 80);
  v52[4] = *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 64);
  v52[5] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 112);
  v52[6] = *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 96);
  v52[7] = v16;
  v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 16);
  v52[0] = *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row);
  v52[1] = v17;
  v18 = *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 48);
  v52[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 32);
  v52[3] = v18;
  v19 = v50;
  *(v13 + 128) = v49;
  *(v13 + 144) = v19;
  *(v13 + 160) = v51;
  v20 = v46;
  *(v13 + 64) = v45;
  *(v13 + 80) = v20;
  v21 = v48;
  *(v13 + 96) = v47;
  *(v13 + 112) = v21;
  v22 = v42;
  *v13 = v41;
  *(v13 + 16) = v22;
  v23 = v44;
  *(v13 + 32) = v43;
  *(v13 + 48) = v23;

  sub_20B634408(v52);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v25 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    sub_20B61DEA0(v2, Strong);
    if (v27)
    {
      v29 = v27;
      v30 = v28;
      v37 = v26;
      sub_20B5E2E18();
      v31 = sub_20C13D374();
      v33 = v38;
      v32 = v39;
      *v38 = v31;
      v34 = v40;
      (*(v32 + 104))(v33, *MEMORY[0x277D85200], v40);
      v35 = sub_20C13C584();
      (*(v32 + 8))(v33, v34);
      if ((v35 & 1) == 0)
      {
        __break(1u);
        return;
      }

      sub_20B6216C8(v37, v29, v30, v2, 1, v25);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_20C0182BC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_storefrontLocalizer));
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LanguageDisclaimerShelf(uint64_t a1)
{
  result = qword_27C771D28;
  if (!qword_27C771D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C018444(uint64_t a1)
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

id sub_20C018508@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for MetadataEntry(0);
  v7 = *(v6 + 28);
  if ((sub_20C132EC4() & 1) == 0)
  {
    return sub_20B9FD7D8(a1, a3, type metadata accessor for MetadataEntry);
  }

  v8 = a2[1];
  if (v8 < 0)
  {
    return sub_20B9FD7D8(a1, a3, type metadata accessor for MetadataEntry);
  }

  v10 = a2[2];
  v9 = a2[3];
  v11 = *(v6 + 28);
  v12 = sub_20C132EE4();
  (*(*(v12 - 8) + 16))(&a3[v11], a1 + v7, v12);
  v13 = *a1;
  v14 = a1[4];
  v15 = a1[5];
  *(a3 + 4) = v14;
  *(a3 + 5) = v15;
  *a3 = v13;
  *(a3 + 1) = v8 & 1 ^ 0x4000000000000001;
  *(a3 + 2) = v10;
  *(a3 + 3) = v9;
  sub_20B9FD840(v8, v10, v9);

  return v13;
}

uint64_t sub_20C018620@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C018698@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row + 32);
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

uint64_t sub_20C018748()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_row;
  sub_20B5D8060(v10);
  v2 = v10[9];
  *(v1 + 128) = v10[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v11;
  v3 = v10[5];
  *(v1 + 64) = v10[4];
  *(v1 + 80) = v3;
  v4 = v10[7];
  *(v1 + 96) = v10[6];
  *(v1 + 112) = v4;
  v5 = v10[1];
  *v1 = v10[0];
  *(v1 + 16) = v5;
  v6 = v10[3];
  *(v1 + 32) = v10[2];
  *(v1 + 48) = v6;
  v7 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_audioHintLanguagesTags) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_audioLanguagesTags) = v7;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_subtitleLanguagesTags) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v9, v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v9, v0 + OBJC_IVAR____TtC9SeymourUI23LanguageDisclaimerShelf_storefrontLocalizer);
  return v0;
}

uint64_t sub_20C0188A0(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for MetadataEntry(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B9FD7D8(a2, v6, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v10 = sub_20B60E3E0(v6, v9);
    if (((a1 >> 57) & 0x78 | a1 & 7) == 0x24)
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      MEMORY[0x28223BE20](v10);
      *&v17[-16] = v9;

      sub_20B5E6F7C(sub_20C018A74, &v17[-32], v11);
      v13 = v12;

      sub_20C017F50(v13);
    }

    v14 = type metadata accessor for MetadataEntry;
    v15 = v9;
  }

  else
  {
    v14 = type metadata accessor for ShelfItemAction;
    v15 = v6;
  }

  return sub_20B9FD758(v15, v14);
}

uint64_t sub_20C018A94(uint64_t a1)
{
  v41 = sub_20C134614();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C134A74();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v31[1] = v1;
  v46 = MEMORY[0x277D84F90];
  sub_20BB5D4F4(0, v8, 0);
  v9 = v46;
  v45 = a1 + 56;
  result = sub_20C13DAA4();
  v11 = v3;
  v12 = result;
  v13 = 0;
  v36 = v11 + 16;
  v37 = v11;
  v34 = a1;
  v35 = v11 + 8;
  v32 = a1 + 64;
  v33 = v8;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v42 = v13;
    v43 = v16;
    v17 = *(a1 + 48);
    v44 = v9;
    v18 = v37;
    v19 = v40;
    v20 = v41;
    (*(v37 + 16))(v40, v17 + *(v37 + 72) * v12, v41);
    sub_20C1345E4();
    sub_20C1345D4();
    sub_20C136554();
    swift_storeEnumTagMultiPayload();
    v21 = *(v18 + 8);
    v9 = v44;
    v21(v19, v20);
    v46 = v9;
    v23 = *(v9 + 16);
    v22 = *(v9 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_20BB5D4F4((v22 > 1), v23 + 1, 1);
      v9 = v46;
    }

    *(v9 + 16) = v23 + 1;
    result = sub_20C028990(v7, v9 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v23, MEMORY[0x277D50C70]);
    a1 = v34;
    v14 = 1 << *(v34 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    v24 = *(v45 + 8 * v15);
    if ((v24 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v43 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v25 = v24 & (-2 << (v12 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v15 << 6;
      v27 = v15 + 1;
      v28 = (v32 + 8 * v15);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_20B526EA4(v12, v43, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v12, v43, 0);
    }

LABEL_4:
    v13 = v42 + 1;
    v12 = v14;
    if (v42 + 1 == v33)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20C018E84(uint64_t a1)
{
  v87 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v82);
  v88 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v84 = &v81 - v3;
  v4 = sub_20C138894();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v83 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v81 - v7;
  v95 = sub_20C132E94();
  v90 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C135734();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v81 - v15;
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v89 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v91 = &v81 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - v23;
  sub_20C13B4A4();
  sub_20C13BB64();
  v25 = *(v18 + 8);
  v93 = v18 + 8;
  v94 = v17;
  v92 = v25;
  v25(v24, v17);
  v26 = v96;
  v27 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_serviceSubscription;
  swift_beginAccess();
  sub_20B52F9E8(v26 + v27, v16, &unk_27C762390, &unk_20C15EC90);
  if ((*(v11 + 48))(v16, 1, v10))
  {
    sub_20B520158(v16, &unk_27C762390, &unk_20C15EC90);
    v28 = 0;
  }

  else
  {
    (*(v11 + 16))(v13, v16, v10);
    sub_20B520158(v16, &unk_27C762390, &unk_20C15EC90);
    sub_20C132E84();
    v28 = sub_20C135704();
    (*(v90 + 8))(v9, v95);
    (*(v11 + 8))(v13, v10);
  }

  v29 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_deviceCloudAccount;
  v95 = *(v26 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_deviceCloudAccount);
  v30 = *(v26 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_deviceSubscriberAccount);
  v31 = *(v26 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_matchingDeviceSubscriberAccount);
  v32 = (v26 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_remoteBrowsingSource);
  v33 = v31;
  v34 = v30;
  v35 = sub_20C0262A8(v28 & 1, v30, v31, v32);

  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v36 = v97;
  sub_20C13B184();
  if (*(v26 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_accountHasWatch))
  {
    v37 = 1;
  }

  else
  {
    v38 = sub_20C135174();
    v37 = (*(*(v38 - 8) + 48))(v36, 1, v38) != 1;
  }

  v39 = *(v26 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_accountHasSupportedDevice);
  if (v35)
  {
    v40 = v91;
    sub_20C13B4A4();

    v41 = sub_20C13BB74();
    v42 = sub_20C13D1F4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 67109634;
      *(v43 + 4) = v37;
      *(v43 + 8) = 1024;
      *(v43 + 10) = v39;
      *(v43 + 14) = 2082;
      v98 = *(v26 + v29);
      v99 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
      v45 = sub_20C13D8F4();
      v47 = sub_20B51E694(v45, v46, &v99);

      *(v43 + 16) = v47;
      _os_log_impl(&dword_20B517000, v41, v42, "We should show subscrbe on personal device: watchOwner: %{BOOL}d, supportedDeviceOwner: %{BOOL}d, cloudAccount: %{public}s", v43, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x20F2F6A40](v44, -1, -1);
      MEMORY[0x20F2F6A40](v43, -1, -1);
    }

    v92(v40, v94);
    v48 = v95 != 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
    v49 = (type metadata accessor for ButtonAction(0) - 8);
    v50 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20C14F980;
    v52 = v51 + v50;
    __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v26 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
    goto LABEL_23;
  }

  if ((v28 & 1) == 0)
  {
    v53 = v87;
    v54 = v84;
    sub_20B52F9E8(v87, v84, &unk_27C768660, &unk_20C152F60);
    v56 = v85;
    v55 = v86;
    if ((*(v85 + 48))(v54, 1, v86) == 1)
    {
      sub_20B520158(v54, &unk_27C768660, &unk_20C152F60);
      v58 = v88;
      v57 = v89;
    }

    else
    {
      v59 = v83;
      (*(v56 + 32))(v83, v54, v55);
      v58 = v88;
      v57 = v89;
      if (v95 && (v39 & 1) != 0)
      {
        v60 = sub_20C138824();
        MEMORY[0x28223BE20](v60);
        *(&v81 - 2) = v59;
        sub_20B5E65F0(sub_20C028B7C, (&v81 - 4), v60);
        v51 = v61;

        v36 = v97;
        (*(v56 + 8))(v59, v55);
        goto LABEL_24;
      }

      (*(v56 + 8))(v59, v55);
    }

    sub_20C13B4A4();
    sub_20B52F9E8(v53, v58, &unk_27C768660, &unk_20C152F60);

    v62 = sub_20C13BB74();
    v63 = sub_20C13D1F4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 141559042;
      *(v64 + 4) = 1752392040;
      *(v64 + 12) = 2080;
      v98 = *(v26 + v29);
      v99 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
      v66 = sub_20C13D8F4();
      v68 = v58;
      v69 = sub_20B51E694(v66, v67, &v99);

      *(v64 + 14) = v69;
      *(v64 + 22) = 1026;
      *(v64 + 24) = v39;
      *(v64 + 28) = 2160;
      *(v64 + 30) = 1752392040;
      *(v64 + 38) = 2080;
      v70 = sub_20C13D8F4();
      v72 = v71;
      sub_20B520158(v68, &unk_27C768660, &unk_20C152F60);
      v73 = sub_20B51E694(v70, v72, &v99);

      *(v64 + 40) = v73;
      _os_log_impl(&dword_20B517000, v62, v63, "iCloud Account: %{mask.hash}s. Personal Device: %{BOOL,public}d, Offer: %{mask.hash}s", v64, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v65, -1, -1);
      MEMORY[0x20F2F6A40](v64, -1, -1);

      v74 = v89;
    }

    else
    {

      sub_20B520158(v58, &unk_27C768660, &unk_20C152F60);
      v74 = v57;
    }

    v92(v74, v94);
    v48 = v95 != 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
    v49 = (type metadata accessor for ButtonAction(0) - 8);
    v75 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20C14F980;
    v52 = v51 + v75;
    __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v26 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
LABEL_23:
    v76 = sub_20C138D34();
    v78 = v77;
    v79 = (v52 + v49[9]);
    *v79 = v39;
    v79[1] = v48;
    type metadata accessor for ButtonAction.ActionType(0);
    swift_storeEnumTagMultiPayload();
    *v52 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = v76;
    *(v52 + 40) = v78;
    v36 = v97;
    goto LABEL_24;
  }

  v51 = MEMORY[0x277D84F90];
LABEL_24:
  sub_20B520158(v36, &unk_27C76BC00, &unk_20C1500B0);
  return v51;
}

uint64_t sub_20C019B20(uint64_t a1)
{
  v87 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v82);
  v88 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v84 = &v81 - v3;
  v4 = sub_20C138894();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v83 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v81 - v7;
  v95 = sub_20C132E94();
  v90 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C135734();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v81 - v15;
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v89 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v91 = &v81 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - v23;
  sub_20C13B4A4();
  sub_20C13BB64();
  v25 = *(v18 + 8);
  v93 = v18 + 8;
  v94 = v17;
  v92 = v25;
  v25(v24, v17);
  v26 = v96;
  v27 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_serviceSubscription;
  swift_beginAccess();
  sub_20B52F9E8(v26 + v27, v16, &unk_27C762390, &unk_20C15EC90);
  if ((*(v11 + 48))(v16, 1, v10))
  {
    sub_20B520158(v16, &unk_27C762390, &unk_20C15EC90);
    v28 = 0;
  }

  else
  {
    (*(v11 + 16))(v13, v16, v10);
    sub_20B520158(v16, &unk_27C762390, &unk_20C15EC90);
    sub_20C132E84();
    v28 = sub_20C135704();
    (*(v90 + 8))(v9, v95);
    (*(v11 + 8))(v13, v10);
  }

  v29 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_deviceCloudAccount;
  v95 = *(v26 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_deviceCloudAccount);
  v30 = *(v26 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_deviceSubscriberAccount);
  v31 = *(v26 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_matchingDeviceSubscriberAccount);
  v32 = (v26 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_remoteBrowsingSource);
  v33 = v31;
  v34 = v30;
  v35 = sub_20C0262A8(v28 & 1, v30, v31, v32);

  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v36 = v97;
  sub_20C13B184();
  if (*(v26 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_accountHasWatch))
  {
    v37 = 1;
  }

  else
  {
    v38 = sub_20C135174();
    v37 = (*(*(v38 - 8) + 48))(v36, 1, v38) != 1;
  }

  v39 = *(v26 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_accountHasSupportedDevice);
  if (v35)
  {
    v40 = v91;
    sub_20C13B4A4();

    v41 = sub_20C13BB74();
    v42 = sub_20C13D1F4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 67109634;
      *(v43 + 4) = v37;
      *(v43 + 8) = 1024;
      *(v43 + 10) = v39;
      *(v43 + 14) = 2082;
      v98 = *(v26 + v29);
      v99 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
      v45 = sub_20C13D8F4();
      v47 = sub_20B51E694(v45, v46, &v99);

      *(v43 + 16) = v47;
      _os_log_impl(&dword_20B517000, v41, v42, "We should show subscrbe on personal device: watchOwner: %{BOOL}d, supportedDeviceOwner: %{BOOL}d, cloudAccount: %{public}s", v43, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x20F2F6A40](v44, -1, -1);
      MEMORY[0x20F2F6A40](v43, -1, -1);
    }

    v92(v40, v94);
    v48 = v95 != 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
    v49 = (type metadata accessor for ButtonAction(0) - 8);
    v50 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20C14F980;
    v52 = v51 + v50;
    __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer), *(v26 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer + 24));
    goto LABEL_23;
  }

  if ((v28 & 1) == 0)
  {
    v53 = v87;
    v54 = v84;
    sub_20B52F9E8(v87, v84, &unk_27C768660, &unk_20C152F60);
    v56 = v85;
    v55 = v86;
    if ((*(v85 + 48))(v54, 1, v86) == 1)
    {
      sub_20B520158(v54, &unk_27C768660, &unk_20C152F60);
      v58 = v88;
      v57 = v89;
    }

    else
    {
      v59 = v83;
      (*(v56 + 32))(v83, v54, v55);
      v58 = v88;
      v57 = v89;
      if (v95 && (v39 & 1) != 0)
      {
        v60 = sub_20C138824();
        MEMORY[0x28223BE20](v60);
        *(&v81 - 2) = v59;
        sub_20B5E65F0(sub_20C028B7C, (&v81 - 4), v60);
        v51 = v61;

        v36 = v97;
        (*(v56 + 8))(v59, v55);
        goto LABEL_24;
      }

      (*(v56 + 8))(v59, v55);
    }

    sub_20C13B4A4();
    sub_20B52F9E8(v53, v58, &unk_27C768660, &unk_20C152F60);

    v62 = sub_20C13BB74();
    v63 = sub_20C13D1F4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 141559042;
      *(v64 + 4) = 1752392040;
      *(v64 + 12) = 2080;
      v98 = *(v26 + v29);
      v99 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
      v66 = sub_20C13D8F4();
      v68 = v58;
      v69 = sub_20B51E694(v66, v67, &v99);

      *(v64 + 14) = v69;
      *(v64 + 22) = 1026;
      *(v64 + 24) = v39;
      *(v64 + 28) = 2160;
      *(v64 + 30) = 1752392040;
      *(v64 + 38) = 2080;
      v70 = sub_20C13D8F4();
      v72 = v71;
      sub_20B520158(v68, &unk_27C768660, &unk_20C152F60);
      v73 = sub_20B51E694(v70, v72, &v99);

      *(v64 + 40) = v73;
      _os_log_impl(&dword_20B517000, v62, v63, "iCloud Account: %{mask.hash}s. Personal Device: %{BOOL,public}d, Offer: %{mask.hash}s", v64, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v65, -1, -1);
      MEMORY[0x20F2F6A40](v64, -1, -1);

      v74 = v89;
    }

    else
    {

      sub_20B520158(v58, &unk_27C768660, &unk_20C152F60);
      v74 = v57;
    }

    v92(v74, v94);
    v48 = v95 != 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
    v49 = (type metadata accessor for ButtonAction(0) - 8);
    v75 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20C14F980;
    v52 = v51 + v75;
    __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer), *(v26 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer + 24));
LABEL_23:
    v76 = sub_20C138D34();
    v78 = v77;
    v79 = (v52 + v49[9]);
    *v79 = v39;
    v79[1] = v48;
    type metadata accessor for ButtonAction.ActionType(0);
    swift_storeEnumTagMultiPayload();
    *v52 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = v76;
    *(v52 + 40) = v78;
    v36 = v97;
    goto LABEL_24;
  }

  v51 = MEMORY[0x277D84F90];
LABEL_24:
  sub_20B520158(v36, &unk_27C76BC00, &unk_20C1500B0);
  return v51;
}

uint64_t sub_20C01A7BC(uint64_t a1)
{
  v87 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v82);
  v88 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v84 = &v81 - v3;
  v4 = sub_20C138894();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v83 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v81 - v7;
  v95 = sub_20C132E94();
  v90 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C135734();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v81 - v15;
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v89 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v91 = &v81 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - v23;
  sub_20C13B4A4();
  sub_20C13BB64();
  v25 = *(v18 + 8);
  v93 = v18 + 8;
  v94 = v17;
  v92 = v25;
  v25(v24, v17);
  v26 = v96;
  v27 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_serviceSubscription;
  swift_beginAccess();
  sub_20B52F9E8(v26 + v27, v16, &unk_27C762390, &unk_20C15EC90);
  if ((*(v11 + 48))(v16, 1, v10))
  {
    sub_20B520158(v16, &unk_27C762390, &unk_20C15EC90);
    v28 = 0;
  }

  else
  {
    (*(v11 + 16))(v13, v16, v10);
    sub_20B520158(v16, &unk_27C762390, &unk_20C15EC90);
    sub_20C132E84();
    v28 = sub_20C135704();
    (*(v90 + 8))(v9, v95);
    (*(v11 + 8))(v13, v10);
  }

  v29 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_deviceCloudAccount;
  v95 = *(v26 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_deviceCloudAccount);
  v30 = *(v26 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_deviceSubscriberAccount);
  v31 = *(v26 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_matchingDeviceSubscriberAccount);
  v32 = (v26 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_remoteBrowsingSource);
  v33 = v31;
  v34 = v30;
  v35 = sub_20C0262A8(v28 & 1, v30, v31, v32);

  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v36 = v97;
  sub_20C13B184();
  if (*(v26 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_accountHasWatch))
  {
    v37 = 1;
  }

  else
  {
    v38 = sub_20C135174();
    v37 = (*(*(v38 - 8) + 48))(v36, 1, v38) != 1;
  }

  v39 = *(v26 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_accountHasSupportedDevice);
  if (v35)
  {
    v40 = v91;
    sub_20C13B4A4();

    v41 = sub_20C13BB74();
    v42 = sub_20C13D1F4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 67109634;
      *(v43 + 4) = v37;
      *(v43 + 8) = 1024;
      *(v43 + 10) = v39;
      *(v43 + 14) = 2082;
      v98 = *(v26 + v29);
      v99 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
      v45 = sub_20C13D8F4();
      v47 = sub_20B51E694(v45, v46, &v99);

      *(v43 + 16) = v47;
      _os_log_impl(&dword_20B517000, v41, v42, "We should show subscrbe on personal device: watchOwner: %{BOOL}d, supportedDeviceOwner: %{BOOL}d, cloudAccount: %{public}s", v43, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x20F2F6A40](v44, -1, -1);
      MEMORY[0x20F2F6A40](v43, -1, -1);
    }

    v92(v40, v94);
    v48 = v95 != 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
    v49 = (type metadata accessor for ButtonAction(0) - 8);
    v50 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20C14F980;
    v52 = v51 + v50;
    __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer), *(v26 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer + 24));
    goto LABEL_23;
  }

  if ((v28 & 1) == 0)
  {
    v53 = v87;
    v54 = v84;
    sub_20B52F9E8(v87, v84, &unk_27C768660, &unk_20C152F60);
    v56 = v85;
    v55 = v86;
    if ((*(v85 + 48))(v54, 1, v86) == 1)
    {
      sub_20B520158(v54, &unk_27C768660, &unk_20C152F60);
      v58 = v88;
      v57 = v89;
    }

    else
    {
      v59 = v83;
      (*(v56 + 32))(v83, v54, v55);
      v58 = v88;
      v57 = v89;
      if (v95 && (v39 & 1) != 0)
      {
        v60 = sub_20C138824();
        MEMORY[0x28223BE20](v60);
        *(&v81 - 2) = v59;
        sub_20B5E65F0(sub_20C028B7C, (&v81 - 4), v60);
        v51 = v61;

        v36 = v97;
        (*(v56 + 8))(v59, v55);
        goto LABEL_24;
      }

      (*(v56 + 8))(v59, v55);
    }

    sub_20C13B4A4();
    sub_20B52F9E8(v53, v58, &unk_27C768660, &unk_20C152F60);

    v62 = sub_20C13BB74();
    v63 = sub_20C13D1F4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 141559042;
      *(v64 + 4) = 1752392040;
      *(v64 + 12) = 2080;
      v98 = *(v26 + v29);
      v99 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
      v66 = sub_20C13D8F4();
      v68 = v58;
      v69 = sub_20B51E694(v66, v67, &v99);

      *(v64 + 14) = v69;
      *(v64 + 22) = 1026;
      *(v64 + 24) = v39;
      *(v64 + 28) = 2160;
      *(v64 + 30) = 1752392040;
      *(v64 + 38) = 2080;
      v70 = sub_20C13D8F4();
      v72 = v71;
      sub_20B520158(v68, &unk_27C768660, &unk_20C152F60);
      v73 = sub_20B51E694(v70, v72, &v99);

      *(v64 + 40) = v73;
      _os_log_impl(&dword_20B517000, v62, v63, "iCloud Account: %{mask.hash}s. Personal Device: %{BOOL,public}d, Offer: %{mask.hash}s", v64, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v65, -1, -1);
      MEMORY[0x20F2F6A40](v64, -1, -1);

      v74 = v89;
    }

    else
    {

      sub_20B520158(v58, &unk_27C768660, &unk_20C152F60);
      v74 = v57;
    }

    v92(v74, v94);
    v48 = v95 != 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
    v49 = (type metadata accessor for ButtonAction(0) - 8);
    v75 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20C14F980;
    v52 = v51 + v75;
    __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer), *(v26 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer + 24));
LABEL_23:
    v76 = sub_20C138D34();
    v78 = v77;
    v79 = (v52 + v49[9]);
    *v79 = v39;
    v79[1] = v48;
    type metadata accessor for ButtonAction.ActionType(0);
    swift_storeEnumTagMultiPayload();
    *v52 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = v76;
    *(v52 + 40) = v78;
    v36 = v97;
    goto LABEL_24;
  }

  v51 = MEMORY[0x277D84F90];
LABEL_24:
  sub_20B520158(v36, &unk_27C76BC00, &unk_20C1500B0);
  return v51;
}

uint64_t sub_20C01B458(uint64_t a1)
{
  v87 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v82);
  v88 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v84 = &v81 - v3;
  v4 = sub_20C138894();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v83 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v81 - v7;
  v95 = sub_20C132E94();
  v90 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C135734();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v81 - v15;
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v89 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v91 = &v81 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - v23;
  sub_20C13B4A4();
  sub_20C13BB64();
  v25 = *(v18 + 8);
  v93 = v18 + 8;
  v94 = v17;
  v92 = v25;
  v25(v24, v17);
  v26 = v96;
  v27 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_serviceSubscription;
  swift_beginAccess();
  sub_20B52F9E8(v26 + v27, v16, &unk_27C762390, &unk_20C15EC90);
  if ((*(v11 + 48))(v16, 1, v10))
  {
    sub_20B520158(v16, &unk_27C762390, &unk_20C15EC90);
    v28 = 0;
  }

  else
  {
    (*(v11 + 16))(v13, v16, v10);
    sub_20B520158(v16, &unk_27C762390, &unk_20C15EC90);
    sub_20C132E84();
    v28 = sub_20C135704();
    (*(v90 + 8))(v9, v95);
    (*(v11 + 8))(v13, v10);
  }

  v29 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_deviceCloudAccount;
  v95 = *(v26 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_deviceCloudAccount);
  v30 = *(v26 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_deviceSubscriberAccount);
  v31 = *(v26 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_matchingDeviceSubscriberAccount);
  v32 = (v26 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_remoteBrowsingSource);
  v33 = v31;
  v34 = v30;
  v35 = sub_20C0262A8(v28 & 1, v30, v31, v32);

  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v36 = v97;
  sub_20C13B184();
  if (*(v26 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_accountHasWatch))
  {
    v37 = 1;
  }

  else
  {
    v38 = sub_20C135174();
    v37 = (*(*(v38 - 8) + 48))(v36, 1, v38) != 1;
  }

  v39 = *(v26 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_accountHasSupportedDevice);
  if (v35)
  {
    v40 = v91;
    sub_20C13B4A4();

    v41 = sub_20C13BB74();
    v42 = sub_20C13D1F4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 67109634;
      *(v43 + 4) = v37;
      *(v43 + 8) = 1024;
      *(v43 + 10) = v39;
      *(v43 + 14) = 2082;
      v98 = *(v26 + v29);
      v99 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
      v45 = sub_20C13D8F4();
      v47 = sub_20B51E694(v45, v46, &v99);

      *(v43 + 16) = v47;
      _os_log_impl(&dword_20B517000, v41, v42, "We should show subscrbe on personal device: watchOwner: %{BOOL}d, supportedDeviceOwner: %{BOOL}d, cloudAccount: %{public}s", v43, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x20F2F6A40](v44, -1, -1);
      MEMORY[0x20F2F6A40](v43, -1, -1);
    }

    v92(v40, v94);
    v48 = v95 != 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
    v49 = (type metadata accessor for ButtonAction(0) - 8);
    v50 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20C14F980;
    v52 = v51 + v50;
    __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer), *(v26 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer + 24));
    goto LABEL_23;
  }

  if ((v28 & 1) == 0)
  {
    v53 = v87;
    v54 = v84;
    sub_20B52F9E8(v87, v84, &unk_27C768660, &unk_20C152F60);
    v56 = v85;
    v55 = v86;
    if ((*(v85 + 48))(v54, 1, v86) == 1)
    {
      sub_20B520158(v54, &unk_27C768660, &unk_20C152F60);
      v58 = v88;
      v57 = v89;
    }

    else
    {
      v59 = v83;
      (*(v56 + 32))(v83, v54, v55);
      v58 = v88;
      v57 = v89;
      if (v95 && (v39 & 1) != 0)
      {
        v60 = sub_20C138824();
        MEMORY[0x28223BE20](v60);
        *(&v81 - 2) = v59;
        sub_20B5E65F0(sub_20C0289F8, (&v81 - 4), v60);
        v51 = v61;

        v36 = v97;
        (*(v56 + 8))(v59, v55);
        goto LABEL_24;
      }

      (*(v56 + 8))(v59, v55);
    }

    sub_20C13B4A4();
    sub_20B52F9E8(v53, v58, &unk_27C768660, &unk_20C152F60);

    v62 = sub_20C13BB74();
    v63 = sub_20C13D1F4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 141559042;
      *(v64 + 4) = 1752392040;
      *(v64 + 12) = 2080;
      v98 = *(v26 + v29);
      v99 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
      v66 = sub_20C13D8F4();
      v68 = v58;
      v69 = sub_20B51E694(v66, v67, &v99);

      *(v64 + 14) = v69;
      *(v64 + 22) = 1026;
      *(v64 + 24) = v39;
      *(v64 + 28) = 2160;
      *(v64 + 30) = 1752392040;
      *(v64 + 38) = 2080;
      v70 = sub_20C13D8F4();
      v72 = v71;
      sub_20B520158(v68, &unk_27C768660, &unk_20C152F60);
      v73 = sub_20B51E694(v70, v72, &v99);

      *(v64 + 40) = v73;
      _os_log_impl(&dword_20B517000, v62, v63, "iCloud Account: %{mask.hash}s. Personal Device: %{BOOL,public}d, Offer: %{mask.hash}s", v64, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v65, -1, -1);
      MEMORY[0x20F2F6A40](v64, -1, -1);

      v74 = v89;
    }

    else
    {

      sub_20B520158(v58, &unk_27C768660, &unk_20C152F60);
      v74 = v57;
    }

    v92(v74, v94);
    v48 = v95 != 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
    v49 = (type metadata accessor for ButtonAction(0) - 8);
    v75 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20C14F980;
    v52 = v51 + v75;
    __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer), *(v26 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer + 24));
LABEL_23:
    v76 = sub_20C138D34();
    v78 = v77;
    v79 = (v52 + v49[9]);
    *v79 = v39;
    v79[1] = v48;
    type metadata accessor for ButtonAction.ActionType(0);
    swift_storeEnumTagMultiPayload();
    *v52 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = v76;
    *(v52 + 40) = v78;
    v36 = v97;
    goto LABEL_24;
  }

  v51 = MEMORY[0x277D84F90];
LABEL_24:
  sub_20B520158(v36, &unk_27C76BC00, &unk_20C1500B0);
  return v51;
}

unint64_t sub_20C01C0E8(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    if ((v4 - result) >= 1 && v4 < result)
    {
      __break(1u);
    }

    a3(0);
    return a2;
  }

  return result;
}

void sub_20C01C19C(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X6>, void *a6@<X7>, uint64_t a7@<X8>)
{
  v93 = a6;
  v99 = a5;
  v105 = a4;
  v108 = a7;
  v91 = a3;
  v92 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v92);
  v94 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_20C137254();
  v106 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v104 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v102 = &v89 - v12;
  MEMORY[0x28223BE20](v13);
  v101 = &v89 - v14;
  v15 = sub_20C134104();
  v16 = *(v15 - 8);
  v97 = v15;
  v98 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v89 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60, &unk_20C1512D0);
  MEMORY[0x28223BE20](v22 - 8);
  v95 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v103 = &v89 - v25;
  v26 = sub_20C13BB84();
  v96 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0, &unk_20C14FE60);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v89 - v30;
  v32 = sub_20C134D54();
  MEMORY[0x28223BE20](v32);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v37 = v36;
  v39 = v38;
  sub_20B52F9E8(v35, v31, &unk_27C7623D0, &unk_20C14FE60);
  if ((*(v39 + 48))(v31, 1, v37) == 1)
  {
    sub_20B520158(v31, &unk_27C7623D0, &unk_20C14FE60);
LABEL_13:
    v48 = type metadata accessor for ButtonAction(0);
    v49 = *(*(v48 - 8) + 56);
    v50 = v108;
LABEL_14:
    v49(v50, 1, 1, v48);
    return;
  }

  (*(v39 + 32))(v34, v31, v37);
  v40 = *(a1 + 16);
  v90 = v34;
  if (v40 >= 2)
  {
    v41 = sub_20C134D14();
    v42 = v107;
    if ((v43 & 1) == 0)
    {
      v44 = v41;
      goto LABEL_8;
    }

LABEL_12:
    (*(v39 + 8))(v90, v37);
    goto LABEL_13;
  }

  v42 = v107;
  if (!v40)
  {
    goto LABEL_12;
  }

  v44 = *(a1 + 32);
LABEL_8:
  v89 = v39;
  if (sub_20C13B6D4())
  {
    sub_20C13B4A4();
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1F4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20B517000, v45, v46, "Eligible for group session, removing resume.", v47, 2u);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    (*(v96 + 8))(v28, v26);
    (*(v89 + 8))(v90, v37);
    goto LABEL_13;
  }

  v96 = v44;
  v51 = *v99;
  swift_beginAccess();
  sub_20B52F9E8(v42 + v51, v21, &qword_27C761800, &qword_20C14FDA0);
  v53 = v97;
  v52 = v98;
  v54 = (*(v98 + 48))(v21, 1, v97);
  v105 = v37;
  if (v54)
  {
    sub_20B520158(v21, &qword_27C761800, &qword_20C14FDA0);
    v55 = v106;
    v56 = v103;
    v57 = v100;
    (*(v106 + 56))(v103, 1, 1, v100);
  }

  else
  {
    (*(v52 + 16))(v18, v21, v53);
    sub_20B520158(v21, &qword_27C761800, &qword_20C14FDA0);
    v58 = sub_20C1340B4();
    (*(v52 + 8))(v18, v53);
    v59 = 1 << *(v58 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v58 + 56);
    v62 = (v59 + 63) >> 6;
    v55 = v106;
    v98 = v106 + 16;
    v99 = (v106 + 32);
    v63 = (v106 + 8);

    v64 = 0;
    v57 = v100;
    if (!v61)
    {
LABEL_21:
      while (1)
      {
        v65 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          break;
        }

        if (v65 >= v62)
        {

          v56 = v103;
          (*(v55 + 56))(v103, 1, 1, v57);

          v42 = v107;
          goto LABEL_28;
        }

        v61 = *(v58 + 56 + 8 * v65);
        ++v64;
        if (v61)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      return;
    }

    while (1)
    {
      v65 = v64;
LABEL_24:
      v66 = v101;
      (*(v55 + 16))(v101, *(v58 + 48) + *(v55 + 72) * (__clz(__rbit64(v61)) | (v65 << 6)), v57);
      v67 = *(v55 + 32);
      v68 = v102;
      v67(v102, v66, v57);
      if (sub_20C1371C4() == v96)
      {
        break;
      }

      v61 &= v61 - 1;
      (*v63)(v68, v57);
      v64 = v65;
      v37 = v105;
      v55 = v106;
      if (!v61)
      {
        goto LABEL_21;
      }
    }

    v56 = v103;
    v67(v103, v68, v57);
    v55 = v106;
    (*(v106 + 56))(v56, 0, 1, v57);

    v42 = v107;
    v37 = v105;
  }

LABEL_28:
  v69 = v95;
  sub_20B52F9E8(v56, v95, &unk_27C762A60, &unk_20C1512D0);
  v70 = (*(v55 + 48))(v69, 1, v57);
  v71 = v108;
  if (v70 == 1)
  {
    sub_20B520158(v56, &unk_27C762A60, &unk_20C1512D0);
    (*(v89 + 8))(v90, v37);
    sub_20B520158(v69, &unk_27C762A60, &unk_20C1512D0);
    v48 = type metadata accessor for ButtonAction(0);
    v49 = *(*(v48 - 8) + 56);
    v50 = v71;
    goto LABEL_14;
  }

  (*(v55 + 32))(v104, v69, v57);
  v72 = 0x525F454D55534552;
  v73 = 0x575F454D55534552;
  if (v96 != 52)
  {
    v73 = 0x454D55534552;
  }

  if (v96 != 37)
  {
    v72 = v73;
  }

  v107 = v72;
  v74 = v55;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0, &unk_20C169DE0);
  v76 = v75[12];
  v77 = v75[16];
  v78 = v75[20];
  v79 = v94;
  sub_20C028928(v91, v94, type metadata accessor for StartWorkoutSessionRequest);
  v80 = v90;
  sub_20C134D44();
  *(v79 + v76) = v81;
  v82 = sub_20C135C54();
  (*(*(v82 - 8) + 56))(v79 + v77, 1, 1, v82);
  v83 = v104;
  (*(v74 + 16))(v79 + v78, v104, v57);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v42 + *v93), *(v42 + *v93 + 24));
  v84 = sub_20C138D34();
  v86 = v85;

  (*(v74 + 8))(v83, v57);
  sub_20B520158(v103, &unk_27C762A60, &unk_20C1512D0);
  (*(v89 + 8))(v80, v105);
  v87 = type metadata accessor for ButtonAction(0);
  v88 = v108;
  sub_20C028990(v79, v108 + *(v87 + 28), type metadata accessor for ButtonAction.ActionType);
  *v88 = 0u;
  *(v88 + 16) = 0u;
  *(v88 + 32) = v84;
  *(v88 + 40) = v86;
  (*(*(v87 - 8) + 56))(v88, 0, 1, v87);
}

void sub_20C01CD70(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a5;
  v64 = a4;
  v62 = a3;
  v78 = a1;
  v65 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v65);
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20C137254();
  v7 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v59 - v10;
  MEMORY[0x28223BE20](v11);
  v75 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60, &unk_20C1512D0);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - v18;
  v20 = sub_20C134104();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_config;
  swift_beginAccess();
  v63 = a2;
  sub_20B52F9E8(a2 + v24, v19, &qword_27C761800, &qword_20C14FDA0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20B520158(v19, &qword_27C761800, &qword_20C14FDA0);
    v25 = type metadata accessor for ButtonAction(0);
    (*(*(v25 - 8) + 56))(v71, 1, 1, v25);
  }

  else
  {
    v59 = v21;
    v26 = *(v21 + 32);
    v60 = v20;
    v26(v23, v19, v20);
    v61 = v23;
    v27 = sub_20C1340B4();
    v28 = v27;
    v29 = v27 + 56;
    v30 = 1 << *(v27 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v27 + 56);
    v33 = (v30 + 63) >> 6;
    v77 = (v7 + 32);
    v72 = (v7 + 8);
    v73 = v7 + 16;

    v34 = 0;
    v35 = v70;
    v36 = v7;
    v74 = v7;
    if (v32)
    {
      while (1)
      {
        v37 = v34;
LABEL_10:
        v38 = v28;
        v39 = v75;
        (*(v36 + 16))(v75, *(v28 + 48) + *(v36 + 72) * (__clz(__rbit64(v32)) | (v37 << 6)), v35);
        v40 = *(v36 + 32);
        v41 = v76;
        v40(v76, v39, v35);
        if (sub_20C1371C4() == v78)
        {
          break;
        }

        v32 &= v32 - 1;
        (*v72)(v41, v35);
        v34 = v37;
        v36 = v74;
        v28 = v38;
        if (!v32)
        {
          goto LABEL_7;
        }
      }

      v43 = v69;
      v40(v69, v41, v35);
      v42 = 0;
      v36 = v74;
LABEL_14:
      (*(v36 + 56))(v43, v42, 1, v35);

      v44 = v67;
      sub_20B52F9E8(v43, v67, &unk_27C762A60, &unk_20C1512D0);
      v45 = (*(v36 + 48))(v44, 1, v35);
      v46 = v71;
      v47 = v61;
      if (v45 == 1)
      {
        sub_20B520158(v43, &unk_27C762A60, &unk_20C1512D0);
        (*(v59 + 8))(v47, v60);
        sub_20B520158(v44, &unk_27C762A60, &unk_20C1512D0);
        v48 = type metadata accessor for ButtonAction(0);
        (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
      }

      else
      {
        v49 = *v77;
        (*v77)(v68, v44, v35);
        __swift_project_boxed_opaque_existential_1((v63 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v63 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));

        v50 = sub_20C138D34();
        v52 = v51;

        sub_20B520158(v69, &unk_27C762A60, &unk_20C1512D0);
        (*(v59 + 8))(v61, v60);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0, &unk_20C14FBB0);
        v54 = *(v53 + 48);
        v55 = *(v53 + 64);
        v56 = v66;
        sub_20C028928(v64, v66, type metadata accessor for StartWorkoutSessionRequest);
        v57 = sub_20C135C54();
        (*(*(v57 - 8) + 56))(v56 + v54, 1, 1, v57);
        v49((v56 + v55), v68, v70);
        swift_storeEnumTagMultiPayload();
        v58 = type metadata accessor for ButtonAction(0);
        sub_20C028990(v56, v46 + *(v58 + 28), type metadata accessor for ButtonAction.ActionType);
        *v46 = 0u;
        *(v46 + 16) = 0u;
        *(v46 + 32) = v50;
        *(v46 + 40) = v52;
        (*(*(v58 - 8) + 56))(v46, 0, 1, v58);
      }
    }

    else
    {
LABEL_7:
      while (1)
      {
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v37 >= v33)
        {

          v42 = 1;
          v43 = v69;
          goto LABEL_14;
        }

        v32 = *(v29 + 8 * v37);
        ++v34;
        if (v32)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_20C01D67C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a5;
  v64 = a4;
  v62 = a3;
  v78 = a1;
  v65 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v65);
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20C137254();
  v7 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v59 - v10;
  MEMORY[0x28223BE20](v11);
  v75 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60, &unk_20C1512D0);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - v18;
  v20 = sub_20C134104();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_config;
  swift_beginAccess();
  v63 = a2;
  sub_20B52F9E8(a2 + v24, v19, &qword_27C761800, &qword_20C14FDA0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20B520158(v19, &qword_27C761800, &qword_20C14FDA0);
    v25 = type metadata accessor for ButtonAction(0);
    (*(*(v25 - 8) + 56))(v71, 1, 1, v25);
  }

  else
  {
    v59 = v21;
    v26 = *(v21 + 32);
    v60 = v20;
    v26(v23, v19, v20);
    v61 = v23;
    v27 = sub_20C1340B4();
    v28 = v27;
    v29 = v27 + 56;
    v30 = 1 << *(v27 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v27 + 56);
    v33 = (v30 + 63) >> 6;
    v77 = (v7 + 32);
    v72 = (v7 + 8);
    v73 = v7 + 16;

    v34 = 0;
    v35 = v70;
    v36 = v7;
    v74 = v7;
    if (v32)
    {
      while (1)
      {
        v37 = v34;
LABEL_10:
        v38 = v28;
        v39 = v75;
        (*(v36 + 16))(v75, *(v28 + 48) + *(v36 + 72) * (__clz(__rbit64(v32)) | (v37 << 6)), v35);
        v40 = *(v36 + 32);
        v41 = v76;
        v40(v76, v39, v35);
        if (sub_20C1371C4() == v78)
        {
          break;
        }

        v32 &= v32 - 1;
        (*v72)(v41, v35);
        v34 = v37;
        v36 = v74;
        v28 = v38;
        if (!v32)
        {
          goto LABEL_7;
        }
      }

      v43 = v69;
      v40(v69, v41, v35);
      v42 = 0;
      v36 = v74;
LABEL_14:
      (*(v36 + 56))(v43, v42, 1, v35);

      v44 = v67;
      sub_20B52F9E8(v43, v67, &unk_27C762A60, &unk_20C1512D0);
      v45 = (*(v36 + 48))(v44, 1, v35);
      v46 = v71;
      v47 = v61;
      if (v45 == 1)
      {
        sub_20B520158(v43, &unk_27C762A60, &unk_20C1512D0);
        (*(v59 + 8))(v47, v60);
        sub_20B520158(v44, &unk_27C762A60, &unk_20C1512D0);
        v48 = type metadata accessor for ButtonAction(0);
        (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
      }

      else
      {
        v49 = *v77;
        (*v77)(v68, v44, v35);
        __swift_project_boxed_opaque_existential_1((v63 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer), *(v63 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer + 24));

        v50 = sub_20C138D34();
        v52 = v51;

        sub_20B520158(v69, &unk_27C762A60, &unk_20C1512D0);
        (*(v59 + 8))(v61, v60);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0, &unk_20C14FBB0);
        v54 = *(v53 + 48);
        v55 = *(v53 + 64);
        v56 = v66;
        sub_20C028928(v64, v66, type metadata accessor for StartWorkoutSessionRequest);
        v57 = sub_20C135C54();
        (*(*(v57 - 8) + 56))(v56 + v54, 1, 1, v57);
        v49((v56 + v55), v68, v70);
        swift_storeEnumTagMultiPayload();
        v58 = type metadata accessor for ButtonAction(0);
        sub_20C028990(v56, v46 + *(v58 + 28), type metadata accessor for ButtonAction.ActionType);
        *v46 = 0u;
        *(v46 + 16) = 0u;
        *(v46 + 32) = v50;
        *(v46 + 40) = v52;
        (*(*(v58 - 8) + 56))(v46, 0, 1, v58);
      }
    }

    else
    {
LABEL_7:
      while (1)
      {
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v37 >= v33)
        {

          v42 = 1;
          v43 = v69;
          goto LABEL_14;
        }

        v32 = *(v29 + 8 * v37);
        ++v34;
        if (v32)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

double sub_20C01DFAC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a2();
  }

  return result;
}

void sub_20C01E00C(double *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = a1[2];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_bannerVideoPreviewDurationThresholdInSeconds + 8) & 1) != 0 || *(Strong + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_bannerVideoPreviewDurationThresholdInSeconds) > v9)
    {
      sub_20C01E8A8(128);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_engagementClient), *(Strong + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_engagementClient + 24));
      sub_20C1396F4();
      v11 = sub_20C137CB4();
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      v11(sub_20B5DF6DC, v12);

      (*(v4 + 8))(v6, v3);
      sub_20C01E200(v7, v8);
    }
  }
}

void sub_20C01E200(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C13C554();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766270, &qword_20C152E00);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v67 = &v60 - v10;
  v69 = type metadata accessor for RootShowcaseItem(0);
  v11 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = v2;
  sub_20C01F778();
  v15 = v14;
  v16 = 1;
  v65 = sub_20C01C0E8(1uLL, v14, type metadata accessor for RootShowcaseItem);
  v18 = v17;
  v20 = v19;
  v22 = v21 >> 1;
  v68 = v15;

  if (v20 != v22)
  {
    if (v20 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v20;
    }

    while (v23 != v20)
    {
      sub_20C028928(v18 + *(v11 + 72) * v20, v13, type metadata accessor for RootShowcaseItem);
      if (*v13 == a1 && v13[1] == a2)
      {
        sub_20C0288C8(v13, type metadata accessor for RootShowcaseItem);
        v16 = 0;
        goto LABEL_16;
      }

      v25 = sub_20C13DFF4();
      sub_20C0288C8(v13, type metadata accessor for RootShowcaseItem);
      if (v25)
      {
        goto LABEL_14;
      }

      if (v22 == ++v20)
      {
        v20 = 0;
LABEL_14:
        v16 = v25 ^ 1;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v20 = 0;
LABEL_16:
  v26 = v66;
  v27 = v67;
  swift_unknownObjectRelease();
  v28 = *(v11 + 56);
  v28(v27, 1, 1, v69);
  if (v16)
  {
    goto LABEL_20;
  }

  if (v20 < -1)
  {
    goto LABEL_30;
  }

  if ((v20 + 1) >= *(v68 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_20C028928(v68 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * (v20 + 1), v26, type metadata accessor for RootShowcaseItem);
  sub_20B520158(v27, &qword_27C766270, &qword_20C152E00);
  v28(v26, 0, 1, v69);
  sub_20B5DF134(v26, v27, &qword_27C766270, &qword_20C152E00);
LABEL_20:
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771D90, &qword_20C152E10);
  v30 = swift_allocBox();
  v32 = v31;
  v33 = *(v29 + 48);
  v34 = *(v29 + 64);
  *v31 = v68;
  sub_20B52F9E8(v27, v31 + v33, &qword_27C766270, &qword_20C152E00);
  *(v32 + v34) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C14F980;
  *(v35 + 32) = v30 | 0x6000000000000002;

  v36 = v64;
  v37 = sub_20C135D64();
  v73 = 0uLL;
  LOBYTE(v74) = 1;
  *(&v74 + 1) = *v72;
  DWORD1(v74) = *&v72[3];
  *(&v74 + 1) = 0;
  *&v75 = 0;
  WORD4(v75) = 128;
  *(&v75 + 10) = *&v70[7];
  HIWORD(v75) = v71;
  v76 = 0uLL;
  *&v77 = v37;
  *(&v77 + 1) = v38;
  v78 = 0uLL;
  LOBYTE(v79) = 0;
  *(&v79 + 1) = *v70;
  DWORD1(v79) = *&v70[3];
  *(&v79 + 1) = v35;
  *&v80[0] = MEMORY[0x277D84F90];
  *(v80 + 8) = 0u;
  *(&v80[1] + 8) = 0u;
  *(&v80[2] + 1) = 0;
  v81 = 2;
  nullsub_1();
  v39 = v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row;
  v40 = *(v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 144);
  v82[8] = *(v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 128);
  v82[9] = v40;
  v83 = *(v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 160);
  v41 = *(v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 80);
  v82[4] = *(v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 64);
  v82[5] = v41;
  v42 = *(v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 112);
  v82[6] = *(v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 96);
  v82[7] = v42;
  v43 = *(v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 16);
  v82[0] = *(v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row);
  v82[1] = v43;
  v44 = *(v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 48);
  v82[2] = *(v36 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 32);
  v82[3] = v44;
  v45 = v80[0];
  v46 = v80[2];
  *(v39 + 128) = v80[1];
  *(v39 + 144) = v46;
  *(v39 + 160) = v81;
  v47 = v78;
  *(v39 + 64) = v77;
  *(v39 + 80) = v47;
  *(v39 + 96) = v79;
  *(v39 + 112) = v45;
  v48 = v74;
  *v39 = v73;
  *(v39 + 16) = v48;
  v49 = v76;
  *(v39 + 32) = v75;
  *(v39 + 48) = v49;
  sub_20B520158(v82, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_23:

LABEL_24:
    sub_20B520158(v27, &qword_27C766270, &qword_20C152E00);
    return;
  }

  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v51 = Strong;
  sub_20B61DFE0(v36, Strong);
  if (!v54)
  {
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v68 = v52;
  v69 = v53;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v55 = sub_20C13D374();
  v57 = v61;
  v56 = v62;
  *v61 = v55;
  v58 = v63;
  (*(v56 + 104))(v57, *MEMORY[0x277D85200], v63);
  v59 = sub_20C13C584();
  (*(v56 + 8))(v57, v58);
  if (v59)
  {
    sub_20C10CA44(v36, v68, 1, v51);

    swift_unknownObjectRelease();

    goto LABEL_24;
  }

LABEL_32:
  __break(1u);
}

void sub_20C01E8A8(int a1)
{
  v3 = sub_20C13C554();
  v116 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v115 = (&v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = sub_20C132EE4();
  v134 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v135 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v119 = *(v6 - 8);
  v120 = v6;
  MEMORY[0x28223BE20](v6);
  v118 = &v111 - v7;
  v8 = sub_20C13BB84();
  v123 = *(v8 - 8);
  v124 = v8;
  MEMORY[0x28223BE20](v8);
  v126 = (&v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RootShowcaseItem(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v132 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v111 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766270, &qword_20C152E00);
  MEMORY[0x28223BE20](v16 - 8);
  v127 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v111 - v19;
  sub_20C01F778();
  v22 = *(v21 + 16);
  v130 = v20;
  v131 = v1;
  v133 = v21;
  v114 = a1;
  v117 = v3;
  if (v22)
  {
    v129 = v10;
    v23 = 0;
    v24 = (v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_centerIdentifier);
    v25 = v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    while (v23 < *(v133 + 16))
    {
      sub_20C028928(v25 + *(v11 + 72) * v23, v15, type metadata accessor for RootShowcaseItem);
      v26 = v24[1];
      if (v26)
      {
        v27 = *v15 == *v24 && v26 == v15[1];
        if (v27 || (sub_20C13DFF4() & 1) != 0)
        {
          v20 = v130;
          sub_20C028990(v15, v130, type metadata accessor for RootShowcaseItem);
          v28 = 0;
LABEL_14:
          v10 = v129;
          goto LABEL_15;
        }
      }

      ++v23;
      sub_20C0288C8(v15, type metadata accessor for RootShowcaseItem);
      if (v22 == v23)
      {
        v28 = 1;
        v20 = v130;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  v28 = 1;
LABEL_15:
  v122 = *(v11 + 56);
  v122(v20, v28, 1, v10);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771D90, &qword_20C152E10);
  v129 = swift_allocBox();
  v31 = v30;
  v32 = v11;
  v121 = v29;
  v33 = *(v29 + 48);
  v34 = v133;
  *v30 = v133;
  v35 = v127;
  sub_20B52F9E8(v20, v127, &qword_27C766270, &qword_20C152E00);
  v125 = v32;
  v36 = *(v32 + 48);
  if (v36(v35, 1, v10) == 1)
  {
    v37 = v122;
    if (v22)
    {
      v34 = v133;
      if (!*(v133 + 16))
      {
        goto LABEL_69;
      }

      sub_20C028928(v133 + ((*(v125 + 80) + 32) & ~*(v125 + 80)), v31 + v33, type metadata accessor for RootShowcaseItem);
      v38 = 0;
    }

    else
    {
      v38 = 1;
      v34 = v133;
    }

    v37(v31 + v33, v38, 1, v10);
    v39 = v127;
    v40 = v36(v127, 1, v10);

    if (v40 != 1)
    {
      sub_20B520158(v39, &qword_27C766270, &qword_20C152E00);
    }
  }

  else
  {
    sub_20C028990(v35, v31 + v33, type metadata accessor for RootShowcaseItem);
    v122(v31 + v33, 0, 1, v10);
  }

  *(v31 + *(v121 + 16)) = 0;
  v41 = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C14F980;
  *(v42 + 32) = v41 | 0x6000000000000002;

  v43 = v131;
  v44 = sub_20C135D64();
  v144 = 0uLL;
  LOBYTE(v145) = 1;
  *(&v145 + 1) = *v143;
  DWORD1(v145) = *&v143[3];
  *(&v145 + 1) = 0;
  *&v146 = 0;
  WORD4(v146) = 128;
  *(&v146 + 10) = *&v141[7];
  HIWORD(v146) = v142;
  v147 = 0uLL;
  *&v148 = v44;
  *(&v148 + 1) = v45;
  v149 = 0uLL;
  LOBYTE(v150) = 0;
  *(&v150 + 1) = *v141;
  DWORD1(v150) = *&v141[3];
  *(&v150 + 1) = v42;
  *&v151[0] = MEMORY[0x277D84F90];
  *(v151 + 8) = 0u;
  *(&v151[1] + 8) = 0u;
  *(&v151[2] + 1) = 0;
  v152 = 2;
  nullsub_1();
  v46 = v43;
  v47 = v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row;
  v48 = *(v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 144);
  v153[8] = *(v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 128);
  v153[9] = v48;
  v154 = *(v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 160);
  v49 = *(v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 80);
  v153[4] = *(v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 64);
  v153[5] = v49;
  v50 = *(v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 112);
  v153[6] = *(v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 96);
  v153[7] = v50;
  v51 = *(v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 16);
  v153[0] = *(v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row);
  v153[1] = v51;
  v52 = *(v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 48);
  v153[2] = *(v43 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 32);
  v153[3] = v52;
  v53 = v151[2];
  *(v47 + 128) = v151[1];
  *(v47 + 144) = v53;
  *(v47 + 160) = v152;
  v54 = v149;
  *(v47 + 64) = v148;
  *(v47 + 80) = v54;
  v55 = v151[0];
  *(v47 + 96) = v150;
  *(v47 + 112) = v55;
  v56 = v145;
  *v47 = v144;
  *(v47 + 16) = v56;
  v57 = v147;
  *(v47 + 32) = v146;
  *(v47 + 48) = v57;
  v127 = v47;
  sub_20B520158(v153, &qword_27C762340, &unk_20C150290);
  v58 = v126;
  sub_20C13B4A4();

  v59 = sub_20C13BB74();
  v60 = sub_20C13D1F4();

  v61 = os_log_type_enabled(v59, v60);
  v62 = v130;
  v63 = v128;
  v64 = v125;
  if (v61)
  {
    LODWORD(v122) = v60;
    v65 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *&v137[0] = v113;
    v121 = v65;
    *v65 = 136315138;
    v66 = *(v34 + 16);
    if (v66)
    {
      v112 = v59;
      v136[0] = MEMORY[0x277D84F90];
      sub_20B526D44(0, v66, 0);
      v67 = v136[0];
      v68 = v34 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v69 = *(v64 + 72);
      do
      {
        v70 = v132;
        sub_20C028928(v68, v132, type metadata accessor for RootShowcaseItem);
        if (*(v70 + 16))
        {
          v71 = 1835365481;
        }

        else
        {
          v71 = 0x6C6F686563616C70;
        }

        if (*(v70 + 16))
        {
          v72 = 0xE400000000000000;
        }

        else
        {
          v72 = 0xEB00000000726564;
        }

        sub_20C0288C8(v70, type metadata accessor for RootShowcaseItem);
        v136[0] = v67;
        v74 = *(v67 + 16);
        v73 = *(v67 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_20B526D44((v73 > 1), v74 + 1, 1);
          v67 = v136[0];
        }

        *(v67 + 16) = v74 + 1;
        v75 = v67 + 16 * v74;
        *(v75 + 32) = v71;
        *(v75 + 40) = v72;
        v68 += v69;
        --v66;
      }

      while (v66);

      v76 = v131;
      v63 = v128;
      v58 = v126;
      v59 = v112;
    }

    else
    {

      v67 = MEMORY[0x277D84F90];
      v76 = v46;
    }

    v77 = MEMORY[0x20F2F43F0](v67, MEMORY[0x277D837D0]);
    v79 = v78;

    v80 = sub_20B51E694(v77, v79, v137);

    v81 = v121;
    *(v121 + 4) = v80;
    _os_log_impl(&dword_20B517000, v59, v122, "Showcase updating with items %s", v81, 0xCu);
    v82 = v113;
    __swift_destroy_boxed_opaque_existential_1(v113);
    MEMORY[0x20F2F6A40](v82, -1, -1);
    MEMORY[0x20F2F6A40](v81, -1, -1);

    (*(v123 + 8))(v58, v124);
    v62 = v130;
  }

  else
  {

    (*(v123 + 8))(v58, v124);
    v76 = v46;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_42;
  }

  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    swift_unknownObjectRelease();
LABEL_42:

LABEL_61:
    sub_20B520158(v62, &qword_27C766270, &qword_20C152E00);
    return;
  }

  v121 = Strong;
  if (![*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
LABEL_60:
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
    v62 = v130;
    goto LABEL_61;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_60;
  }

  v84 = v118;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v85 = v120;
  v86 = sub_20C13BE74();
  (*(v119 + 8))(v84, v85);
  v132 = *(v86 + 16);
  v133 = v86;
  if (!v132)
  {
LABEL_58:

    goto LABEL_60;
  }

  v87 = 0;
  v124 = v133 + 32;
  v125 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_identifier;
  v123 = v134 + 16;
  v126 = (v134 + 8);
  while (2)
  {
    if (v87 < *(v133 + 16))
    {
      v88 = v124 + 24 * v87;
      v89 = *(v88 + 8);
      v122 = *v88;
      v90 = *(v88 + 16);
      ++v87;
      (*v123)(v135, v76 + v125, v63);
      v91 = *(v89 + 16);

      v92 = v90;

      v93 = 0;
      do
      {
        if (v91 == v93)
        {
          (*v126)(v135, v63);

          goto LABEL_48;
        }

        v94 = v93 + 1;
        sub_20B914C18(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v95 = sub_20C13C894();
        v93 = v94;
      }

      while ((v95 & 1) == 0);
      (*v126)(v135, v63);
      v96 = *(v127 + 128);
      v97 = *(v127 + 144);
      v98 = *(v127 + 96);
      v137[7] = *(v127 + 112);
      v138 = v96;
      v139 = v97;
      v140 = *(v127 + 160);
      v99 = *(v127 + 80);
      v137[4] = *(v127 + 64);
      v137[5] = v99;
      v137[6] = v98;
      v100 = *(v127 + 16);
      v137[0] = *v127;
      v137[1] = v100;
      v101 = *(v127 + 48);
      v137[2] = *(v127 + 32);
      v137[3] = v101;
      v102 = sub_20B5EAF8C(v137);
      if (v102 == 1)
      {
        v103 = 0;
        v104 = 0;
      }

      else
      {
        v103 = *(&v138 + 1);
        v104 = v139;
      }

      v136[0] = v103;
      v136[1] = v104;
      MEMORY[0x28223BE20](v102);
      *(&v111 - 2) = v136;
      v105 = sub_20B796758(sub_20B5EAFA4, (&v111 - 4), v92);

      if ((v105 & 1) == 0)
      {

        v63 = v128;
LABEL_48:
        v76 = v131;
        if (v87 == v132)
        {
          goto LABEL_58;
        }

        continue;
      }

      sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
      v106 = sub_20C13D374();
      v108 = v115;
      v107 = v116;
      *v115 = v106;
      v109 = v117;
      (*(v107 + 104))(v108, *MEMORY[0x277D85200], v117);
      v110 = sub_20C13C584();
      (*(v107 + 8))(v108, v109);
      if ((v110 & 1) == 0)
      {
        goto LABEL_70;
      }

      v62 = v130;
      if ((v114 & 0x80) != 0)
      {
        sub_20C10CA44(v131, v122, v114 & 1, v121);
      }

      else
      {
        sub_20B61F7E0(v122, v89, v92, v131, v114 & 1, v121);
      }

      swift_unknownObjectRelease();

      goto LABEL_61;
    }

    break;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

void sub_20C01F778()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766270, &qword_20C152E00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for RootShowcaseItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v24 = &v23 - v9;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_lazyLockupFetcher);

  sub_20C0323A4(v10, v1);
  v12 = v11;

  sub_20C020DBC(0);
  v29 = v13;
  sub_20B8D921C(v12);
  sub_20C020DBC(1);
  sub_20B8D921C(v14);
  v15 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_lockupShelfItems;
  *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_lockupShelfItems) = v29;

  v16 = *(v1 + v15);
  v17 = *(v16 + 16);

  v26 = v17;
  if (v17)
  {
    v18 = 0;
    v25 = v16 + 32;
    v23 = v6;
    v19 = MEMORY[0x277D84F90];
    while (v18 < *(v16 + 16))
    {
      v28 = *(v25 + 8 * v18);

      sub_20C01FB78(&v28, v1, v4);

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_20B520158(v4, &qword_27C766270, &qword_20C152E00);
      }

      else
      {
        v20 = v24;
        sub_20C028990(v4, v24, type metadata accessor for RootShowcaseItem);
        sub_20C028990(v20, v27, type metadata accessor for RootShowcaseItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_20BC085B8(0, v19[2] + 1, 1, v19);
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_20BC085B8((v21 > 1), v22 + 1, 1, v19);
        }

        v19[2] = v22 + 1;
        sub_20C028990(v27, v19 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v22, type metadata accessor for RootShowcaseItem);
      }

      if (v26 == ++v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

uint64_t sub_20C01FADC(uint64_t a1)
{
  v1 = sub_20C1345E4();
  v3 = v2;
  if (v1 == sub_20C133E44() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_20C13DFF4();
  }

  return v5 & 1;
}

uint64_t sub_20C01FB78@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v162 = a3;
  v6 = sub_20C132C14();
  v7 = *(v6 - 8);
  v157 = v6;
  v158 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330, &qword_20C1875B0);
  v149 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v151 = v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v150 = v133 - v13;
  MEMORY[0x28223BE20](v14);
  v156 = v133 - v15;
  v148 = sub_20C13BB84();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v17 = v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWorkoutSessionRequest(0);
  MEMORY[0x28223BE20](started);
  v155 = (v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0, &unk_20C14FE60);
  MEMORY[0x28223BE20](v19 - 8);
  v154 = v133 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v133 - v22;
  v24 = type metadata accessor for ButtonAction(0);
  v160 = *(v24 - 8);
  v161 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v133 - v28;
  MEMORY[0x28223BE20](v30);
  v153 = v133 - v31;
  MEMORY[0x28223BE20](v32);
  v152 = (v133 - v33);
  MEMORY[0x28223BE20](v34);
  v145 = v133 - v35;
  MEMORY[0x28223BE20](v36);
  v159 = (v133 - v37);
  v38 = sub_20C134014();
  MEMORY[0x28223BE20](v38);
  v42 = v133 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  v44 = (v43 >> 57) & 0x78 | v43 & 7;
  switch(v44)
  {
    case '""':
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F20, &qword_20C152E18);
      v60 = swift_projectBox();
      v143 = v3;
      v61 = v60[1];
      v159 = *v60;
      v62 = *(v59 + 96);
      v63 = v157;
      v64 = a2;
      v65 = v26;
      v66 = *(v158 + 16);
      v66(v9, v60 + v62, v157);
      v144 = v43;
      __swift_project_boxed_opaque_existential_1((v64 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer), *(v64 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer + 24));

      v67 = sub_20C138D34();
      v69 = v68;
      v70 = &v26[*(v161 + 28)];
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210, &unk_20C169DF0) + 48);
      *v70 = v159;
      *(v70 + 1) = v61;
      v66(&v70[v71], v9, v63);
      type metadata accessor for ButtonAction.ActionType(0);
      swift_storeEnumTagMultiPayload();
      *v65 = 0;
      v65[1] = 0;
      v65[2] = 0xD000000000000010;
      v65[3] = 0x800000020C1A5120;
      v65[4] = v67;
      v65[5] = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
      v72 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_20C14F980;
      sub_20C028928(v65, v73 + v72, type metadata accessor for ButtonAction);
      v74 = v144;

      sub_20B7BBDA8(v74, v73, v162);
      sub_20C0288C8(v65, type metadata accessor for ButtonAction);
      return (*(v158 + 8))(v9, v63);
    case '!':

      return sub_20B7BBDA8(v43, MEMORY[0x277D84F90], v162);
    case ' ':
      v137 = v29;
      v144 = v43;
      v45 = v39;
      v46 = v40;
      v47 = swift_projectBox();
      v140 = v46;
      v48 = *(v46 + 16);
      v157 = v42;
      v141 = v45;
      v139 = v46 + 16;
      v138 = v48;
      v48(v42, v47, v45);
      v49 = v159;
      *(v159 + *(v161 + 28)) = 0;
      v142 = type metadata accessor for ButtonAction.ActionType(0);
      swift_storeEnumTagMultiPayload();
      v49[1] = 0u;
      v49[2] = 0u;
      *v49 = 0u;
      v50 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingOffer;
      swift_beginAccess();
      v158 = a2;
      sub_20B52F9E8(a2 + v50, v23, &unk_27C768660, &unk_20C152F60);
      v51 = sub_20C01B458(v23);
      v52 = v158;
      sub_20B520158(v23, &unk_27C768660, &unk_20C152F60);
      if (*(v52 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_isHandlingAction))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
        v53 = (*(v160 + 80) + 32) & ~*(v160 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_20C14F980;
        sub_20C028928(v49, v51 + v53, type metadata accessor for ButtonAction);
      }

      v54 = &OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_recommendationClient;
      if (*(v51 + 16))
      {
        v55 = v26;
        v56 = v51;
        v57 = v157;
      }

      else
      {
        v135 = v26;
        v133[0] = sub_20C133E44();
        v133[1] = v76;
        v134 = sub_20C133F74();
        v77 = sub_20C133E44();
        v79 = v78;
        v80 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_resumableWorkoutSessions;
        swift_beginAccess();
        v81 = *(v52 + v80);
        v82 = *(v81 + 16);
        v136 = v51;
        v143 = v3;
        if (v82)
        {

          v83 = sub_20B65AA60(v77, v79);
          v85 = v84;

          if (v85)
          {
            v86 = *(v81 + 56);
            v87 = sub_20C134D54();
            v88 = *(v87 - 8);
            v89 = v154;
            (*(v88 + 16))(v154, v86 + *(v88 + 72) * v83, v87);

            (*(v88 + 56))(v89, 0, 1, v87);
          }

          else
          {

            v91 = sub_20C134D54();
            v89 = v154;
            (*(*(v91 - 8) + 56))(v154, 1, 1, v91);
          }

          v52 = v158;
        }

        else
        {

          v90 = sub_20C134D54();
          v89 = v154;
          (*(*(v90 - 8) + 56))(v154, 1, 1, v90);
        }

        v92 = sub_20C133E44();
        v93 = v155;
        *v155 = v92;
        v93[1] = v94;
        swift_storeEnumTagMultiPayload();
        sub_20C13B4A4();
        sub_20C13BB64();
        (*(v147 + 8))(v17, v148);
        v95 = v156;
        v96 = v134;
        sub_20C01C19C(v134, v89, v93, &OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_multiUserEligibilityObserver, &OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_config, &OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer, v156);

        v97 = v161;
        v98 = *(v160 + 48);
        v99 = v98(v95, 1, v161);
        MEMORY[0x28223BE20](v99);
        v133[-4] = v52;
        LOBYTE(v133[-3]) = v100;
        v133[-2] = v93;
        v148 = sub_20B613FF8(sub_20C0288A0, &v133[-6], v96);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A70, &qword_20C169E10);
        v101 = (*(v149 + 80) + 32) & ~*(v149 + 80);
        v102 = swift_allocObject();
        sub_20B52F9E8(v95, v102 + v101, &qword_27C770330, &qword_20C1875B0);
        v103 = v150;
        sub_20B52F9E8(v102 + v101, v150, &qword_27C770330, &qword_20C1875B0);
        v104 = v151;
        sub_20B5DF134(v103, v151, &qword_27C770330, &qword_20C1875B0);
        if (v98(v104, 1, v97) == 1)
        {
          sub_20B520158(v104, &qword_27C770330, &qword_20C1875B0);
          v105 = MEMORY[0x277D84F90];
          v106 = v154;
          v55 = v135;
        }

        else
        {
          v107 = v135;
          v108 = v145;
          sub_20C028990(v104, v145, type metadata accessor for ButtonAction);
          v105 = MEMORY[0x277D84F90];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_20BC05920(0, v105[2] + 1, 1, v105);
          }

          v110 = v105[2];
          v109 = v105[3];
          v106 = v154;
          if (v110 >= v109 >> 1)
          {
            v105 = sub_20BC05920((v109 > 1), v110 + 1, 1, v105);
          }

          v105[2] = v110 + 1;
          sub_20C028990(v108, v105 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v110, type metadata accessor for ButtonAction);
          v55 = v107;
        }

        swift_setDeallocating();
        sub_20B520158(v102 + v101, &qword_27C770330, &qword_20C1875B0);
        swift_deallocClassInstance();
        v163 = v105;
        sub_20B8D9064(v148);
        sub_20B520158(v106, &unk_27C7623D0, &unk_20C14FE60);
        v56 = v163;
        sub_20B520158(v156, &qword_27C770330, &qword_20C1875B0);
        sub_20C0288C8(v155, type metadata accessor for StartWorkoutSessionRequest);
        v111 = v56[2];
        if (v111 < 2)
        {

          v57 = v157;
          v52 = v158;
        }

        else
        {
          v112 = v152;
          swift_storeEnumTagMultiPayload();
          v112[1] = 0u;
          v112[2] = 0u;
          *v112 = 0u;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57 = v157;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v56 = sub_20BC05920(0, v111 + 1, 1, v56);
          }

          v115 = v56[2];
          v114 = v56[3];
          if (v115 >= v114 >> 1)
          {
            v56 = sub_20BC05920((v114 > 1), v115 + 1, 1, v56);
          }

          v56[2] = v115 + 1;
          v116 = (*(v160 + 80) + 32) & ~*(v160 + 80);
          v117 = *(v160 + 72);
          sub_20C028990(v152, v56 + v116 + v117 * v115, type metadata accessor for ButtonAction);
          __swift_project_boxed_opaque_existential_1((v158 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer), *(v158 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer + 24));
          v118 = sub_20C138D34();
          v120 = v119;
          v121 = v153;
          v122 = (v153 + *(v161 + 28));
          *v122 = 0;
          v122[1] = 0;
          v122[2] = v56;
          swift_storeEnumTagMultiPayload();
          *v121 = 0u;
          *(v121 + 16) = 0u;
          *(v121 + 32) = v118;
          *(v121 + 40) = v120;
          sub_20C028928(v121, v137, type metadata accessor for ButtonAction);
          v123 = v136;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_20BC05920(0, v123[2] + 1, 1, v123);
          }

          v125 = v123[2];
          v124 = v123[3];
          if (v125 >= v124 >> 1)
          {
            v123 = sub_20BC05920((v124 > 1), v125 + 1, 1, v123);
          }

          sub_20C0288C8(v153, type metadata accessor for ButtonAction);
          v123[2] = v125 + 1;
          sub_20C028990(v137, v123 + v116 + v125 * v117, type metadata accessor for ButtonAction);
          v56 = v123;
          v52 = v158;
        }

        v54 = &OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_recommendationClient;
      }

      __swift_project_boxed_opaque_existential_1((v52 + v54[1]), *(v52 + v54[1] + 24));
      v126 = sub_20C138D34();
      v128 = v127;
      v129 = v141;
      v138(v55 + *(v161 + 28), v57, v141);
      swift_storeEnumTagMultiPayload();
      *v55 = 0u;
      *(v55 + 16) = 0u;
      *(v55 + 32) = v126;
      *(v55 + 40) = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
      v130 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_20C14F980;
      sub_20C028928(v55, v131 + v130, type metadata accessor for ButtonAction);
      v163 = v56;
      v132 = v144;

      sub_20B8D9064(v131);
      sub_20B7BBDA8(v132, v163, v162);
      sub_20C0288C8(v55, type metadata accessor for ButtonAction);
      sub_20C0288C8(v159, type metadata accessor for ButtonAction);
      return (*(v140 + 8))(v57, v129);
    default:
      v75 = type metadata accessor for RootShowcaseItem(0);
      return (*(*(v75 - 8) + 56))(v162, 1, 1, v75);
  }
}

void sub_20C020DBC(int a1)
{
  v67 = a1;
  v2 = sub_20C137654();
  v71 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = &v54 - v5;
  MEMORY[0x28223BE20](v6);
  v69 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_20C136F94();
  v58 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  v70 = v1;
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_remoteBrowsingSource + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_remoteBrowsingSource), *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_remoteBrowsingSource + 24));
  sub_20C13B174();
  v21 = sub_20C136C64();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_20B520158(v10, &qword_27C768690, &unk_20C14FD90);
    return;
  }

  sub_20C1369E4();
  (*(v22 + 8))(v10, v21);
  v23 = v58;
  (*(v58 + 32))(v19, v16, v11);
  sub_20C136F64();
  sub_20B914C18(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
  v24 = sub_20C13DA74();
  v27 = *(v23 + 8);
  v26 = v23 + 8;
  v25 = v27;
  v27(v13, v11);
  if (v24)
  {
    v55 = v25;
    v56 = v19;
    v58 = v26;
    v57 = v11;
    v28 = *(*(v70 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingContents) + 16);
    v63 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_completedMarketingVideoIdentifiers;

    v30 = MEMORY[0x277D84F90];
    v68 = v2;
    v64 = v28;
    if (v28)
    {
      v31 = 0;
      v61 = v71 + 16;
      v60 = (v71 + 32);
      v59 = (v71 + 8);
      v62 = v29;
      do
      {
        if (v31 >= *(v29 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        v32 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v33 = *(v71 + 72);
        (*(v71 + 16))(v69, v29 + v32 + v33 * v31, v2);
        v20 = *(v70 + v63);

        v34 = sub_20C137614();
        v36 = v35;
        if (*(v20 + 16))
        {
          v28 = v34;
          sub_20C13E164();
          sub_20C13CA64();
          v37 = sub_20C13E1B4();
          v38 = -1 << *(v20 + 32);
          v39 = v37 & ~v38;
          if ((*(v20 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
          {
            v40 = ~v38;
            while (1)
            {
              v41 = (*(v20 + 48) + 16 * v39);
              v42 = *v41 == v28 && v41[1] == v36;
              if (v42 || (sub_20C13DFF4() & 1) != 0)
              {
                break;
              }

              v39 = (v39 + 1) & v40;
              if (((*(v20 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            v2 = v68;
            if (v67)
            {
LABEL_23:
              v43 = *v60;
              (*v60)(v66, v69, v2);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v73 = v30;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_20BB5E9A4(0, *(v30 + 16) + 1, 1);
                v30 = v73;
              }

              v46 = *(v30 + 16);
              v45 = *(v30 + 24);
              v28 = v46 + 1;
              if (v46 >= v45 >> 1)
              {
                sub_20BB5E9A4((v45 > 1), v46 + 1, 1);
                v30 = v73;
              }

              *(v30 + 16) = v28;
              v43((v30 + v32 + v46 * v33), v66, v2);
              goto LABEL_7;
            }
          }

          else
          {
LABEL_18:

            v2 = v68;
            if ((v67 & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {

          if ((v67 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        (*v59)(v69, v2);
LABEL_7:
        v29 = v62;
        ++v31;
      }

      while (v31 != v64);
    }

    v47 = *(v30 + 16);
    if (v47)
    {
      v72 = MEMORY[0x277D84F90];
      sub_20BB5D8EC(0, v47, 0);
      v48 = 0;
      v49 = v72;
      v69 = (v30 + ((*(v71 + 80) + 32) & ~*(v71 + 80)));
      v20 = v71 + 8;
      while (v48 < *(v30 + 16))
      {
        v50 = v65;
        (*(v71 + 16))(v65, &v69[*(v71 + 72) * v48], v2);
        sub_20C0215D8(v70, &v73);
        (*v20)(v50, v2);
        v51 = v73;
        v72 = v49;
        v53 = *(v49 + 16);
        v52 = *(v49 + 24);
        v28 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          sub_20BB5D8EC((v52 > 1), v53 + 1, 1);
          v49 = v72;
        }

        ++v48;
        *(v49 + 16) = v28;
        *(v49 + 8 * v53 + 32) = v51;
        v2 = v68;
        if (v47 == v48)
        {
          v55(v56, v57);

          return;
        }
      }

LABEL_38:
      __break(1u);
      (*v20)(v28, v2);

      __break(1u);
    }

    else
    {

      v55(v56, v57);
    }
  }

  else
  {
    v25(v19, v11);
  }
}

uint64_t sub_20C0215D8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v32 = sub_20C135EB4();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C132C14();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_20C137644();
  v28 = sub_20C138544();

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_20C137634();
  v27 = sub_20C138544();

  v26 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  v25 = sub_20C137644();
  v24 = sub_20C137634();
  sub_20C137604();
  v9 = v7;
  sub_20C135E84();
  v10 = *(v33 + 8);
  v33 += 8;
  v10(v4, v32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F20, &qword_20C152E18);
  v12 = swift_allocBox();
  v14 = v13;
  v15 = v11[16];
  v16 = (v13 + v11[20]);
  v22 = v11[24];
  v23 = v12;
  *v13 = sub_20C137614();
  v14[1] = v17;
  sub_20C137604();
  sub_20C135E94();
  v10(v4, v32);
  *(v14 + v15) = sub_20C137624();
  v18 = v27;
  *v16 = v28;
  v16[1] = v18;
  v19 = v25;
  v16[2] = v26;
  v16[3] = v19;
  v20 = MEMORY[0x277D84F90];
  v16[4] = v24;
  v16[5] = v20;
  result = (*(v29 + 32))(v14 + v22, v9, v30);
  *v31 = v23 | 0x4000000000000002;
  return result;
}

uint64_t sub_20C0218D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v64 = sub_20C134614();
  v3 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C135E24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771DD0, &unk_20C18A2E0);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v49 = &v46 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 0;
    v55 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_recommendations;
    v59 = v3 + 8;
    v60 = v3 + 16;
    v19 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v46 = v6;
    v58 = *(v6 + 72);
    v53 = v11;
    v54 = v5;
    v61 = v3;
    v51 = v17;
    v52 = v8;
    v50 = v19;
    while (1)
    {
      v20 = MEMORY[0x277D52220];
      sub_20C028928(v19 + v58 * v18, v11, MEMORY[0x277D52220]);
      sub_20C028928(v11, v8, v20);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_22;
      }

      sub_20C0288C8(v11, MEMORY[0x277D52220]);
      v40 = sub_20C137654();
      (*(*(v40 - 8) + 8))(v8, v40);
LABEL_4:
      if (++v18 == v17)
      {
        v41 = 1;
        v43 = v49;
LABEL_25:
        v42 = v46;
        goto LABEL_26;
      }
    }

    if (EnumCaseMultiPayload != 1)
    {
LABEL_22:
      sub_20C0288C8(v8, MEMORY[0x277D52220]);
LABEL_23:
      v43 = v49;
      sub_20C028990(v11, v49, MEMORY[0x277D52220]);
      v41 = 0;
      goto LABEL_25;
    }

    v57 = v18;
    v22 = *(v56 + v55);
    v68 = *v8;
    v23 = v22 + 56;
    v24 = 1 << *(v22 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v22 + 56);
    v27 = (v24 + 63) >> 6;
    v63 = v22;
    result = swift_bridgeObjectRetain_n();
    v29 = 0;
    while (v26)
    {
      v30 = v29;
LABEL_17:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v62;
      (*(v3 + 16))(v62, *(v63 + 48) + *(v3 + 72) * (v31 | (v30 << 6)), v64);
      v33 = sub_20C1345C4();
      v35 = v34;
      v65 = v33;
      v66 = v34;
      v37 = v36 & 1;
      v67 = v36 & 1;
      v69 = v68;
      sub_20BF61EF4();
      sub_20BF61F48();
      v38 = sub_20C133C04();
      v39 = v33;
      v3 = v61;
      sub_20B683084(v39, v35, v37);
      result = (*(v3 + 8))(v32, v64);
      if (v38)
      {

        v11 = v53;
        v5 = v54;
        goto LABEL_23;
      }
    }

    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v27)
      {

        v11 = v53;
        sub_20C0288C8(v53, MEMORY[0x277D52220]);
        v5 = v54;
        v17 = v51;
        v8 = v52;
        v18 = v57;
        v19 = v50;
        goto LABEL_4;
      }

      v26 = *(v23 + 8 * v30);
      ++v29;
      if (v26)
      {
        v29 = v30;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = 1;
    v42 = v6;
    v43 = v49;
LABEL_26:
    v44 = v48;
    (*(v42 + 56))(v43, v41, 1, v5, v15);
    sub_20B52F9E8(v43, v44, &qword_27C771DD0, &unk_20C18A2E0);
    if ((*(v42 + 48))(v44, 1, v5) == 1)
    {
      sub_20B520158(v44, &qword_27C771DD0, &unk_20C18A2E0);
      sub_20C02884C();
      swift_allocError();
      *v45 = 0;
      swift_willThrow();
      return sub_20B520158(v43, &qword_27C771DD0, &unk_20C18A2E0);
    }

    else
    {
      sub_20B520158(v43, &qword_27C771DD0, &unk_20C18A2E0);
      return sub_20C028990(v44, v47, MEMORY[0x277D52220]);
    }
  }

  return result;
}

void *sub_20C021EE4(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v64 = sub_20C134614();
  v3 = *(v64 - 1);
  MEMORY[0x28223BE20](v64);
  v63 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C135D04();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C135E24();
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C028928(a1, v11, MEMORY[0x277D52220]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return *v11;
    }

LABEL_38:
    v49 = sub_20C137654();
    (*(*(v49 - 8) + 8))(v11, v49);
    return MEMORY[0x277D84F90];
  }

  if (EnumCaseMultiPayload)
  {
    v5 = &v53;
    v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_recommendations);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    v20 = &v53 - 4;
    v61 = v28;
    *(&v53 - 16) = v28;
    v29 = *(v8 + 32);
    v30 = v29 & 0x3F;
    v22 = ((1 << v29) + 63) >> 6;
    v11 = 8 * v22;

    if (v30 <= 0xD)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

  v13 = *v11;
  v14 = *(*v11 + 16);
  if (!v14)
  {

    return MEMORY[0x277D84F90];
  }

  v16 = *(v6 + 16);
  v15 = v6 + 16;
  v17 = *(v15 + 64);
  v62 = *v11;
  v18 = v13 + ((v17 + 32) & ~v17);
  v63 = *(v15 + 56);
  v64 = v16;
  v65 = v15;
  v3 = v15 - 8;
  v19 = MEMORY[0x277D84F90];
  v16(v8, v18, v5);
  while (1)
  {
    v11 = sub_20C135CF4();
    (*v3)(v8, v5);
    v20 = *(v11 + 16);
    v21 = v19[2];
    v22 = v20 + v21;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_46;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v22 > v19[3] >> 1)
    {
      break;
    }

    if (!*(v11 + 16))
    {
      goto LABEL_5;
    }

LABEL_17:
    v22 = (v19[3] >> 1) - v19[2];
    sub_20C134A74();
    if (v22 < v20)
    {
      goto LABEL_48;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = v19[2];
      v26 = __OFADD__(v25, v20);
      v27 = v20 + v25;
      if (v26)
      {
        goto LABEL_49;
      }

      v19[2] = v27;
    }

LABEL_6:
    v18 += v63;
    if (!--v14)
    {

      return v19;
    }

    v64(v8, v18, v5);
  }

  if (v21 <= v22)
  {
    v24 = v20 + v21;
  }

  else
  {
    v24 = v21;
  }

  v19 = sub_20BC07AB8(isUniquelyReferenced_nonNull_native, v24, 1, v19);
  if (*(v11 + 16))
  {
    goto LABEL_17;
  }

LABEL_5:

  if (!v20)
  {
    goto LABEL_6;
  }

  while (1)
  {
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_24:
    v54 = v22;
    v55 = v5;
    v53 = &v53;
    MEMORY[0x28223BE20](v31);
    v56 = &v53 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v56, v11);
    v57 = 0;
    v32 = 0;
    v62 = v8;
    v5 = (v8 + 56);
    v33 = 1 << *(v8 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v8 + 56);
    v36 = (v33 + 63) >> 6;
    v59 = v3 + 8;
    v60 = v3 + 16;
    v37 = v64;
    while (v35)
    {
      v38 = __clz(__rbit64(v35));
      v65 = (v35 - 1) & v35;
LABEL_34:
      v41 = v38 | (v32 << 6);
      v20 = v63;
      v42 = *(v62 + 48);
      v43 = *(v3 + 72);
      v58 = v41;
      (*(v3 + 16))(v63, v42 + v43 * v41, v37);
      v44 = sub_20C1345C4();
      v22 = v3;
      v46 = v45;
      v67 = v44;
      v68 = v45;
      v8 = v47 & 1;
      v69 = v47 & 1;
      v66 = v61;
      sub_20BF61EF4();
      sub_20BF61F48();
      v11 = sub_20C133C04();
      v48 = v46;
      v3 = v22;
      sub_20B683084(v44, v48, v8);
      (*(v22 + 8))(v20, v37);
      v35 = v65;
      if (v11)
      {
        *&v56[(v58 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v58;
        v26 = __OFADD__(v57++, 1);
        if (v26)
        {
          __break(1u);
          goto LABEL_38;
        }
      }
    }

    v39 = v32;
    while (1)
    {
      v32 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v32 >= v36)
      {
        v50 = sub_20BC12628(v56, v54, v57, v62);
        goto LABEL_40;
      }

      v40 = v5[v32];
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v65 = (v40 - 1) & v40;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
  }

  v52 = swift_slowAlloc();
  v50 = sub_20BF61A50(v52, v22, v8, sub_20C02882C, v20);

  MEMORY[0x20F2F6A40](v52, -1, -1);
LABEL_40:
  v19 = sub_20C018A94(v50);

  return v19;
}

unint64_t sub_20C0225B8(uint64_t a1, char a2)
{
  v2 = sub_20C1345C4();
  v4 = v3;
  v6 = v5 & 1;
  sub_20BF61EF4();
  sub_20BF61F48();
  v7 = sub_20C133C04();
  sub_20B683084(v2, v4, v6);
  return v7 & 1;
}

void sub_20C022658(uint64_t a1@<X8>)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623E0, &unk_20C14FE70);
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v64 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = v50 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v50 - v12;
  v14 = sub_20C02A560();
  v15 = *(v14 + 16);
  if (v15)
  {
    v50[2] = a1;
    v74 = MEMORY[0x277D84F90];
    sub_20BB5EAD0(0, v15, 0);
    v59 = (v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_archivedSessionClient);
    v57 = v4 + 7;
    v58 = v3 + 16;
    v61 = v3;
    v55 = v3 + 8;
    v56 = v3 + 32;
    v16 = v74;
    v54 = v73 + 16;
    v17 = v8 + 7;
    v18 = v1;
    v53 = v17;
    v52 = v73 + 8;
    v50[1] = v14;
    v19 = (v14 + 40);
    v51 = v13;
    v62 = v1;
    v60 = v7;
    v72 = v73 + 32;
    do
    {
      v69 = v19;
      v70 = v15;
      v71 = v16;
      v20 = *(v19 - 1);
      v21 = *v19;
      __swift_project_boxed_opaque_existential_1(v59, v59[3]);

      v22 = v65;
      sub_20C139B74();
      v23 = swift_allocObject();
      v23[2] = v18;
      v23[3] = v20;
      v23[4] = v21;
      v68 = v21;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_20C0287E4;
      *(v24 + 24) = v23;
      v25 = v61;
      v27 = v66;
      v26 = v67;
      (*(v61 + 16))(v66, v22, v67);
      v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
      v29 = (v57 + v28) & 0xFFFFFFFFFFFFFFF8;
      v30 = swift_allocObject();
      v31 = v73;
      (*(v25 + 32))(v30 + v28, v27, v26);
      v32 = (v30 + v29);
      *v32 = sub_20B5DF1D4;
      v32[1] = v24;

      v33 = v63;
      sub_20C137C94();
      v34 = *(v25 + 8);
      v35 = v60;
      v34(v22, v26);
      v36 = swift_allocObject();
      *(v36 + 16) = nullsub_1;
      *(v36 + 24) = 0;
      v37 = v51;
      v38 = v64;
      (*(v31 + 16))(v64, v33, v35);
      v39 = *(v31 + 80);
      v40 = (v39 + 16) & ~v39;
      v41 = (v53 + v40) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      v43 = v42 + v40;
      v44 = v38;
      v45 = *(v31 + 32);
      v16 = v71;
      v45(v43, v44, v35);
      v46 = (v42 + v41);
      *v46 = sub_20B5DF204;
      v46[1] = v36;
      sub_20C137C94();

      (*(v31 + 8))(v33, v35);
      v74 = v16;
      v48 = *(v16 + 16);
      v47 = *(v16 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_20BB5EAD0((v47 > 1), v48 + 1, 1);
        v16 = v74;
      }

      *(v16 + 16) = v48 + 1;
      v45(v16 + ((v39 + 32) & ~v39) + *(v73 + 72) * v48, v37, v35);
      v19 = v69 + 2;
      v15 = v70 - 1;
      v18 = v62;
    }

    while (v70 != 1);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v74 = v16;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v49 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798, &unk_20C171400);
  sub_20BD175B4();
  sub_20C137C84();
}

uint64_t sub_20C022CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0, &unk_20C14FE60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_20C134D54();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_20C0C13F0(v9, a3, a4);
  return swift_endAccess();
}

uint64_t sub_20C022E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v37 = sub_20C137654();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v29 - v6;
  MEMORY[0x28223BE20](v7);
  v38 = &v29 - v8;
  v9 = sub_20C135E24();
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  v30 = a1;
  if (v16)
  {
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    v19 = (v3 + 32);
    v20 = MEMORY[0x277D84F90];
    v33 = v9;
    v34 = v3;
    v32 = &v29 - v14;
    do
    {
      sub_20C028928(v17, v15, MEMORY[0x277D52220]);
      sub_20C028990(v15, v11, MEMORY[0x277D52220]);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v21 = v18;
        v22 = *v19;
        v24 = v36;
        v23 = v37;
        (*v19)(v36, v11, v37);
        v25 = v35;
        v22(v35, v24, v23);
        v22(v38, v25, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20BC08BC0(0, *(v20 + 2) + 1, 1, v20);
        }

        v27 = *(v20 + 2);
        v26 = *(v20 + 3);
        v18 = v21;
        if (v27 >= v26 >> 1)
        {
          v20 = sub_20BC08BC0((v26 > 1), v27 + 1, 1, v20);
        }

        v15 = v32;
        *(v20 + 2) = v27 + 1;
        v22(&v20[((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27], v38, v37);
      }

      else
      {
        sub_20C0288C8(v11, MEMORY[0x277D52220]);
      }

      v17 += v18;
      --v16;
    }

    while (v16);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  *(v29 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingContents) = v20;

  *(swift_allocObject() + 16) = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C028, &qword_20C172B88);
  return sub_20C137CA4();
}

uint64_t sub_20C0231D0()
{
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644B0, &unk_20C161530);
  v197 = *(v198 - 8);
  v196 = *(v197 + 64);
  MEMORY[0x28223BE20](v198);
  v195 = &v168 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v193 = &v168 - v3;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60, &unk_20C152F70);
  v190 = *(v191 - 8);
  v189 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v188 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v187 = &v168 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B90, &qword_20C157D70);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v168 - v12;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764360, &unk_20C155E80);
  v202 = *(v175 - 8);
  v173 = *(v202 + 64);
  MEMORY[0x28223BE20](v175);
  v174 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v199 = &v168 - v16;
  MEMORY[0x28223BE20](v17);
  v176 = &v168 - v18;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644B8, &unk_20C155F50);
  v180 = *(v182 - 8);
  v179 = *(v180 + 64);
  MEMORY[0x28223BE20](v182);
  v178 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v177 = &v168 - v21;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771DA0, &unk_20C171ED0);
  v185 = *(v186 - 8);
  v184 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v183 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v181 = &v168 - v24;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v215 = *(v212 - 8);
  v25 = *(v215 + 64);
  MEMORY[0x28223BE20](v212);
  v194 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v192 = &v168 - v27;
  MEMORY[0x28223BE20](v28);
  v203 = &v168 - v29;
  MEMORY[0x28223BE20](v30);
  v214 = &v168 - v31;
  MEMORY[0x28223BE20](v32);
  v213 = &v168 - v33;
  MEMORY[0x28223BE20](v34);
  v210 = &v168 - v35;
  v36 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_recommendationClient), *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_recommendationClient + 24));
  v209 = v13;
  sub_20C139924();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_20C02857C;
  *(v37 + 24) = v36;
  v38 = v36;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B7F1390;
  *(v39 + 24) = v37;
  (*(v8 + 16))(v10, v13, v7);
  v40 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v41 = (v9 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v7;
  (*(v8 + 32))(v42 + v40, v10, v7);
  v44 = (v42 + v41);
  *v44 = sub_20C028588;
  v44[1] = v39;

  v45 = v214;
  sub_20C137C94();
  (*(v8 + 8))(v209, v43);
  v211 = v38;
  sub_20B51CC64(v38 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_catalogClient, &v216);
  v46 = swift_allocObject();
  sub_20B51C710(&v216, v46 + 16);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20C0285B8;
  *(v47 + 24) = v46;
  v48 = v215;
  v205 = *(v215 + 16);
  v206 = v215 + 16;
  v49 = v203;
  v50 = v45;
  v51 = v212;
  v205(v203, v45, v212);
  v52 = *(v48 + 80);
  v53 = v48;
  v204 = v52;
  v54 = (v52 + 16) & ~v52;
  v209 = v54;
  v55 = (v25 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v201 = v55;
  v56 = swift_allocObject();
  v200 = *(v53 + 32);
  v208 = v53 + 32;
  v200(v56 + v54, v49, v51);
  v57 = (v56 + v55);
  *v57 = sub_20B7F133C;
  v57[1] = v47;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C028, &qword_20C172B88);
  v58 = v199;
  sub_20C137C94();
  v59 = *(v53 + 8);
  v215 = v53 + 8;
  v207 = v59;
  v59(v50, v51);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_20C02862C;
  *(v60 + 24) = v38;
  v61 = v202;
  v172 = *(v202 + 16);
  v62 = v174;
  v63 = v175;
  v172(v174, v58, v175);
  v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v171 = v64;
  v65 = (v173 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v169 = v65;
  v66 = swift_allocObject();
  v173 = *(v61 + 32);
  v173(v66 + v64, v62, v63);
  v67 = (v66 + v65);
  *v67 = sub_20C028B94;
  v67[1] = v60;
  v68 = v211;

  v69 = v176;
  sub_20C137C94();
  v70 = *(v61 + 8);
  v202 = v61 + 8;
  v174 = v70;
  v71 = v199;
  (v70)(v199, v63);
  v72 = swift_allocObject();
  *(v72 + 16) = sub_20C028658;
  *(v72 + 24) = v68;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_20C028670;
  *(v73 + 24) = v72;
  v172(v71, v69, v63);
  v74 = v169;
  v75 = swift_allocObject();
  v173(v75 + v171, v71, v63);
  v76 = (v75 + v74);
  *v76 = sub_20C02869C;
  v76[1] = v73;
  sub_20C135E24();
  v77 = v211;

  v78 = v177;
  sub_20C137C94();
  (v174)(v69, v63);
  v79 = swift_allocObject();
  *(v79 + 16) = sub_20C0286CC;
  *(v79 + 24) = v77;
  v80 = v77;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_20BF69508;
  *(v81 + 24) = v79;
  v82 = v180;
  v83 = v178;
  v84 = v182;
  (*(v180 + 16))(v178, v78, v182);
  v85 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v86 = (v179 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  (*(v82 + 32))(v87 + v85, v83, v84);
  v88 = (v87 + v86);
  *v88 = sub_20C0286D0;
  v88[1] = v81;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771DB0, &unk_20C155F60);
  v89 = v181;
  sub_20C137C94();
  (*(v82 + 8))(v78, v84);
  v90 = *(v80 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_lazyLockupFetcher);
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20C028700;
  *(v91 + 24) = v90;
  v92 = v185;
  v93 = v183;
  v94 = v186;
  (*(v185 + 16))(v183, v89, v186);
  v95 = v92;
  v96 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v97 = (v184 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  (*(v95 + 32))(v98 + v96, v93, v94);
  v99 = (v98 + v97);
  *v99 = sub_20B8A1490;
  v99[1] = v91;

  v100 = v213;
  sub_20C137C94();
  (*(v95 + 8))(v89, v94);
  v101 = swift_allocObject();
  v103 = v211;
  v102 = v212;
  *(v101 + 16) = sub_20C028730;
  *(v101 + 24) = v103;
  v104 = v214;
  v205(v214, v100, v102);
  v105 = v201;
  v106 = swift_allocObject();
  v107 = v200;
  v200(&v209[v106], v104, v102);
  v108 = (v106 + v105);
  *v108 = sub_20B64B960;
  v108[1] = v101;
  v109 = v103;

  sub_20C137C94();
  v207(v100, v102);
  v110 = *(v103 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingItemProvider + 24);
  v111 = *(v103 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingItemProvider + 32);
  __swift_project_boxed_opaque_existential_1((v103 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingItemProvider), v110);
  v112 = v187;
  sub_20BBC5308(9, (v103 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_subscriptionCache), 0, 0, v110, v111, v187);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20C028B98;
  *(v113 + 24) = v103;
  v114 = swift_allocObject();
  *(v114 + 16) = sub_20C028B44;
  *(v114 + 24) = v113;
  v115 = v190;
  v116 = v188;
  v117 = v191;
  (*(v190 + 16))(v188, v112, v191);
  v118 = v115;
  v119 = (*(v115 + 80) + 16) & ~*(v115 + 80);
  v120 = (v189 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v121 = swift_allocObject();
  (*(v118 + 32))(v121 + v119, v116, v117);
  v122 = (v121 + v120);
  *v122 = sub_20C028B40;
  v122[1] = v114;

  v123 = v214;
  sub_20C137C94();
  (*(v118 + 8))(v112, v117);
  v124 = swift_allocObject();
  v124[2] = 0xD00000000000001DLL;
  v124[3] = 0x800000020C1BACB0;
  v124[4] = 345;
  v125 = swift_allocObject();
  *(v125 + 16) = sub_20B5D9EA0;
  *(v125 + 24) = v124;
  v126 = v203;
  v127 = v123;
  v128 = v212;
  v205(v203, v123, v212);
  v129 = v201;
  v130 = swift_allocObject();
  v107(&v209[v130], v126, v128);
  v131 = (v130 + v129);
  *v131 = sub_20B5D9EC0;
  v131[1] = v125;
  sub_20C137C94();
  v132 = v215;
  v207(v127, v128);
  __swift_project_boxed_opaque_existential_1((v109 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_engagementClient), *(v109 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_engagementClient + 24));
  v133 = v193;
  sub_20C139704();
  v134 = swift_allocObject();
  *(v134 + 16) = sub_20C02875C;
  *(v134 + 24) = v109;
  v135 = swift_allocObject();
  *(v135 + 16) = sub_20C028B5C;
  *(v135 + 24) = v134;
  v136 = v197;
  v137 = v195;
  v138 = v198;
  (*(v197 + 16))(v195, v133, v198);
  v139 = v136;
  v140 = (*(v136 + 80) + 16) & ~*(v136 + 80);
  v141 = (v196 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
  v142 = swift_allocObject();
  (*(v139 + 32))(v142 + v140, v137, v138);
  v143 = (v142 + v141);
  *v143 = sub_20C0287A8;
  v143[1] = v135;

  v144 = v214;
  sub_20C137C94();
  (*(v139 + 8))(v133, v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v145 = *(v132 + 64);
  v146 = (v204 + 32) & ~v204;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_20C152DF0;
  v148 = v147 + v146;
  v149 = v212;
  v150 = v205;
  v205((v147 + v146), v210, v212);
  v151 = v211;
  sub_20B59C4E0(v148 + v145);
  v150(v148 + 2 * v145, v213, v149);
  v152 = v148 + 3 * v145;
  v153 = v149;
  v150(v152, v144, v149);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v154 = sub_20C13D374();
  sub_20C13A7C4();
  v155 = v192;
  sub_20C137C74();

  v156 = swift_allocObject();
  *(v156 + 16) = sub_20C028B74;
  *(v156 + 24) = v151;
  v157 = swift_allocObject();
  *(v157 + 16) = sub_20B849B38;
  *(v157 + 24) = v156;
  v158 = v194;
  v150(v194, v155, v153);
  v159 = v201;
  v160 = swift_allocObject();
  v200(&v209[v160], v158, v153);
  v161 = (v160 + v159);
  *v161 = sub_20B66A8B4;
  v161[1] = v157;

  v162 = v203;
  sub_20C137C94();
  v163 = v207;
  v207(v155, v153);
  v164 = v153;
  v165 = sub_20C137CB4();
  v166 = swift_allocObject();
  *(v166 + 16) = 0;
  *(v166 + 24) = 0;
  v165(sub_20B5DF6DC, v166);

  v163(v162, v164);
  v163(v214, v164);
  v163(v213, v164);
  return (v163)(v210, v164);
}

uint64_t sub_20C024838@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0, &unk_20C155EB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = a2[10];
  v13 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v12);
  (*(v13 + 8))(v12, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v6 + 16))(v8, v11, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v15, v8, v5);
  v18 = (v17 + v16);
  *v18 = sub_20B9EA780;
  v18[1] = v14;

  sub_20C137C94();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_20C024A58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60, &unk_20C152F70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v37 - v11;
  MEMORY[0x28223BE20](v12);
  v41 = &v37 - v13;
  v14 = (v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingItemProvider);
  v15 = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingItemProvider + 24);
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_20BBC5308(9, (v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_subscriptionCache), 0, 0, v15, v16, v7);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20C02850C;
  *(v17 + 24) = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20C028528;
  *(v18 + 24) = v17;
  (*(v3 + 16))(&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  v21 = v2;
  (*(v3 + 32))(v20 + v19, &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v22 = (v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_20B80E568;
  v22[1] = v18;

  v23 = v42;
  sub_20C137C94();
  (*(v3 + 8))(v7, v21);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_20C028B74;
  *(v24 + 24) = v1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20B849B38;
  *(v25 + 24) = v24;
  v26 = v38;
  v27 = v39;
  v28 = v40;
  (*(v39 + 16))(v38, v23, v40);
  v29 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v29, v26, v28);
  v31 = (v30 + ((v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_20B66A8B4;
  v31[1] = v25;

  v32 = v41;
  sub_20C137C94();
  v33 = *(v27 + 8);
  v33(v42, v28);
  v34 = sub_20C137CB4();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v34(sub_20B5DF6DC, v35);

  return (v33)(v32, v28);
}

uint64_t sub_20C024F34(void *a1, uint64_t a2)
{
  v4 = sub_20C139594();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C138E94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  (*(v9 + 104))(v11, *MEMORY[0x277D541A8], v8, v13);
  (*(v5 + 104))(v7, *MEMORY[0x277D54408], v4);
  v16 = a1;
  sub_20C138854();
  v17 = sub_20C138894();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  v18 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingOffer;
  swift_beginAccess();
  sub_20B8A944C(v15, a2 + v18);
  return swift_endAccess();
}

uint64_t sub_20C025188()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_accountProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_archivedSessionClient));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_configurationClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_contentAvailabilityClient));

  v8 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_descriptor;
  v9 = sub_20C135E14();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingItemProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_recommendationClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_remoteBrowsingSource));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_engagementClient));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_subscriptionCache));

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingOffer, &unk_27C768660, &unk_20C152F60);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_config, &qword_27C761800, &qword_20C14FDA0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_serviceSubscription, &unk_27C762390, &unk_20C15EC90);

  return v0;
}

uint64_t sub_20C0254B0()
{
  sub_20C025188();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShowcaseShelf(uint64_t a1)
{
  result = qword_27C771D80;
  if (!qword_27C771D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C02555C(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20C135E14();
    if (v2 <= 0x3F)
    {
      sub_20B7EEDEC(319, &qword_281103B50, MEMORY[0x277D540B0]);
      if (v3 <= 0x3F)
      {
        sub_20B7EEDEC(319, &qword_281103BF0, MEMORY[0x277D50560]);
        if (v4 <= 0x3F)
        {
          sub_20B7EEDEC(319, &qword_27C762130, MEMORY[0x277D51C40]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_20C0257E4()
{
  v0 = type metadata accessor for RootShowcaseItem(0);
  v1 = *(v0 - 1);
  MEMORY[0x28223BE20](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13CA04();
  v6 = v5;
  v7 = v0[9];
  v8 = sub_20C137C24();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v3[16] = 0;
  *v3 = v4;
  *(v3 + 1) = v6;
  *(v3 + 24) = xmmword_20C14F2B0;
  v3[40] = 1;
  v3[v0[12]] = 30;
  *(v3 + 3) = xmmword_20C157520;
  *(v3 + 9) = 0;
  *(v3 + 10) = 0;
  *(v3 + 8) = 0;
  *(v3 + 44) = 0;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  v9 = &v3[v0[10]];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v3[v0[11]] = MEMORY[0x277D84F90];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771D90, &qword_20C152E10);
  v35 = swift_allocBox();
  v12 = v11;
  v13 = *(v10 + 48);
  v14 = *(v10 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BEC0, &qword_20C172810);
  v15 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v16 = swift_allocObject();
  v34 = xmmword_20C14F980;
  *(v16 + 16) = xmmword_20C14F980;
  sub_20C028928(v3, v16 + v15, type metadata accessor for RootShowcaseItem);
  *v12 = v16;
  sub_20C028928(v3, v12 + v13, type metadata accessor for RootShowcaseItem);
  (*(v1 + 56))(v12 + v13, 0, 1, v0);
  *(v12 + v14) = 0;
  v17 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v18 = swift_allocObject();
  *(v18 + 16) = v34;
  *(v18 + 32) = v17 | 0x6000000000000002;

  v19 = v36;
  v20 = sub_20C135D64();
  v40 = 0uLL;
  LOBYTE(v41) = 1;
  *(&v41 + 1) = *v39;
  DWORD1(v41) = *&v39[3];
  *(&v41 + 1) = 0;
  *&v42 = 0;
  WORD4(v42) = 128;
  *(&v42 + 10) = *&v37[7];
  HIWORD(v42) = v38;
  v43 = 0uLL;
  *&v44 = v20;
  *(&v44 + 1) = v21;
  v45 = 0uLL;
  LOBYTE(v46) = 0;
  *(&v46 + 1) = *v37;
  DWORD1(v46) = *&v37[3];
  *(&v46 + 1) = v18;
  *&v47[0] = MEMORY[0x277D84F90];
  *(v47 + 8) = 0u;
  *(&v47[1] + 8) = 0u;
  *(&v47[2] + 1) = 0;
  v48 = 2;
  nullsub_1();
  v22 = v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row;
  v23 = *(v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 144);
  v49[8] = *(v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 128);
  v49[9] = v23;
  v50 = *(v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 160);
  v24 = *(v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 80);
  v49[4] = *(v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 64);
  v49[5] = v24;
  v25 = *(v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 112);
  v49[6] = *(v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 96);
  v49[7] = v25;
  v26 = *(v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 16);
  v49[0] = *(v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row);
  v49[1] = v26;
  v27 = *(v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 48);
  v49[2] = *(v19 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 32);
  v49[3] = v27;
  v28 = v47[0];
  v29 = v47[2];
  *(v22 + 128) = v47[1];
  *(v22 + 144) = v29;
  *(v22 + 160) = v48;
  v30 = v45;
  *(v22 + 64) = v44;
  *(v22 + 80) = v30;
  *(v22 + 96) = v46;
  *(v22 + 112) = v28;
  v31 = v41;
  *v22 = v40;
  *(v22 + 16) = v31;
  v32 = v43;
  *(v22 + 32) = v42;
  *(v22 + 48) = v32;
  sub_20B520158(v49, &qword_27C762340, &unk_20C150290);
  sub_20C0231D0();

  return sub_20C0288C8(v3, type metadata accessor for RootShowcaseItem);
}

uint64_t sub_20C025BE8(uint64_t a1)
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
  *(v14 + 16) = sub_20C02843C;
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
  v20(sub_20B5DF6DC, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20C025EAC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C025F24@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row + 32);
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

uint64_t sub_20C0260BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

uint64_t sub_20C026160(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_20C137C94();
}

uint64_t sub_20C026200(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;
  sub_20C135E24();

  return sub_20C137C94();
}

uint64_t sub_20C0262A8(int a1, char *a2, void *a3, void *a4)
{
  v57 = a3;
  v60 = a2;
  v61 = a1;
  v56 = sub_20C135334();
  MEMORY[0x28223BE20](v56);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - v7;
  v9 = sub_20C136C64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v58 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v59 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  sub_20C13B4A4();
  sub_20C13BB64();
  v62 = *(v16 + 8);
  v63 = v15;
  v62(v23, v15);
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_20C13B174();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B520158(v8, &qword_27C768690, &unk_20C14FD90);
    sub_20C13B4A4();
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20B517000, v24, v25, "We are in an anonymous state. Should never show subscribe on personal device", v26, 2u);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    v62(v20, v63);
    goto LABEL_5;
  }

  (*(v10 + 32))(v14, v8, v9);
  if (v60)
  {
    v28 = [v60 ams_altDSID];
    if (v28)
    {
      v29 = v28;
      v30 = sub_20C13C954();
      v32 = v31;

      if (!v57 || (v33 = [v57 ams_altDSID]) == 0)
      {

        (*(v10 + 8))(v14, v9);
        v27 = 0;
        v38 = 0;
        if (v61)
        {
          return v27 & 1;
        }

        goto LABEL_21;
      }

      v34 = v33;
      v35 = sub_20C13C954();
      v37 = v36;

      if (v30 == v35 && v32 == v37)
      {

        (*(v10 + 8))(v14, v9);
        if ((v61 & 1) == 0)
        {
          v38 = 1;
LABEL_21:
          v27 = v38 ^ 1;
          return v27 & 1;
        }
      }

      else
      {
        v38 = sub_20C13DFF4();

        (*(v10 + 8))(v14, v9);
        if ((v61 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

LABEL_5:
      v27 = 0;
      return v27 & 1;
    }
  }

  v39 = v59;
  sub_20C13B4A4();
  v40 = v58;
  (*(v10 + 16))(v58, v14, v9);
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v40;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v60 = v14;
    v46 = v10;
    v57 = v45;
    v64 = v45;
    *v44 = 136446210;
    sub_20C136C24();
    v47 = sub_20C13C9D4();
    v49 = v48;
    v50 = *(v46 + 8);
    v50(v43, v9);
    v51 = sub_20B51E694(v47, v49, &v64);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_20B517000, v41, v42, "Participant has no signed in iCloud account: %{public}s", v44, 0xCu);
    v52 = v57;
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x20F2F6A40](v52, -1, -1);
    MEMORY[0x20F2F6A40](v44, -1, -1);

    v62(v59, v63);
    v50(v60, v9);
  }

  else
  {

    v53 = *(v10 + 8);
    v53(v40, v9);
    v62(v39, v63);
    v53(v14, v9);
  }

  v27 = v61 ^ 1;
  return v27 & 1;
}

uint64_t sub_20C026950(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v9 = result;
    result = sub_20C13DB34();
    v10 = result - v9;
    if (__OFSUB__(result, v9))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v11 = sub_20C13DB34();
    result = sub_20C13DB34();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v10 <= v11)
    {
      v12 = v10 & ~(v10 >> 63);
    }

    else
    {
      v12 = v11;
    }

    if (v11 < 0 || v10 < 1)
    {
      v6 = v10 & ~(v10 >> 63);
    }

    else
    {
      v6 = v12;
    }

    result = sub_20C13DB34();
    if (result >= v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = (v5 - result) & ~((v5 - result) >> 63);
  if (v5 < v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0 && v6)
  {
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      sub_20C13DCB4();
      v7 = v8;
    }

    while (v6 != v8);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_20C13DE54();
}

uint64_t sub_20C026AAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v51 = *(v53 - 8);
  v50 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v44 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v44 - v9;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v10 = v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_row;
  sub_20B5D8060(v57);
  v11 = v57[9];
  *(v10 + 128) = v57[8];
  *(v10 + 144) = v11;
  *(v10 + 160) = v58;
  v12 = v57[5];
  *(v10 + 64) = v57[4];
  *(v10 + 80) = v12;
  v13 = v57[7];
  *(v10 + 96) = v57[6];
  *(v10 + 112) = v13;
  v14 = v57[1];
  *v10 = v57[0];
  *(v10 + 16) = v14;
  v15 = v57[3];
  *(v10 + 32) = v57[2];
  *(v10 + 48) = v15;
  v16 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_lockupShelfItems) = MEMORY[0x277D84F90];
  v17 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingOffer;
  v18 = sub_20C138894();
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_config;
  v20 = sub_20C134104();
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_serviceSubscription;
  v22 = sub_20C135734();
  (*(*(v22 - 8) + 56))(v2 + v21, 1, 1, v22);
  *(v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_matchingDeviceSubscriberAccount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_deviceSubscriberAccount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_deviceCloudAccount) = 0;
  v23 = v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_bannerVideoPreviewDurationThresholdInSeconds;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_centerIdentifier);
  *v24 = 0;
  v24[1] = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40, &unk_20C14D9E0);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_accountProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_bag) = *&v56[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_contentAvailabilityClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_eventHub) = v56[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650, &unk_20C15C0E0);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingItemProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769190, &unk_20C15F8D0);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_recommendationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_subscriptionCache);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DE0, &unk_20C161550);
  sub_20C133AA4();
  sub_20B51C710(v56, v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_engagementClient);
  v25 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_descriptor;
  v46 = sub_20C135E14();
  v47 = *(v46 - 8);
  v26 = *(v47 + 16);
  v45 = a2;
  v26(v3 + v25, a2, v46);
  v27 = MEMORY[0x277D84FA0];
  *(v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_recommendations) = MEMORY[0x277D84FA0];
  *(v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_marketingContents) = v16;
  *(v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_completedMarketingVideoIdentifiers) = v27;

  v28 = sub_20C135D74();
  type metadata accessor for ShelfLazyLockupFetcher();
  v29 = swift_allocObject();
  *(v29 + 152) = v16;
  *(v29 + 160) = sub_20B6B0C04(v16);
  *(v29 + 168) = v27;
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  sub_20C133AA4();

  *(v29 + 136) = 10;
  *(v29 + 144) = v28;
  *(v29 + 145) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_lazyLockupFetcher) = v29;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_subscriptionToken) = sub_20C13A914();
  *(v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_accountHasSupportedDevice) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_accountHasWatch) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_isHandlingAction) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_resumableWorkoutSessions) = sub_20B6B0A18(v16);
  sub_20C13B704();
  *(v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_multiUserEligibilityObserver) = sub_20C13B6F4();
  swift_getObjectType();
  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v56);

  swift_getObjectType();
  sub_20C13AE84();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v56);

  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v56);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_20B880EBC();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_configurationClient), *(v3 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_configurationClient + 24));
  v30 = v48;
  sub_20C1398E4();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_20C028A80;
  *(v31 + 24) = v3;
  v32 = v51;
  v33 = v49;
  v34 = v53;
  (*(v51 + 16))(v49, v30, v53);
  v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v36 = (v50 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v32 + 32))(v37 + v35, v33, v34);
  v38 = (v37 + v36);
  *v38 = sub_20B58D058;
  v38[1] = v31;

  v39 = v52;
  sub_20C137C94();
  (*(v32 + 8))(v30, v34);
  v40 = v54;
  v41 = sub_20C137CB4();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  v41(sub_20B5DF6DC, v42);

  (*(v47 + 8))(v45, v46);
  (*(v55 + 8))(v39, v40);
  return v3;
}

void sub_20C027814(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v4 = type metadata accessor for RootShowcaseItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_20C132C14();
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x28223BE20](v7);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50, &unk_20C14FB70);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v11 - 8);
  v93 = (&v82 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v95 = *(v13 - 8);
  v96 = v13;
  v14 = *(v95 + 64);
  MEMORY[0x28223BE20](v13);
  v88 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v85 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v86 = &v82 - v18;
  MEMORY[0x28223BE20](v19);
  v87 = &v82 - v20;
  v89 = sub_20C134014();
  v21 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_lockupShelfItems);
  if (*(v30 + 16) > a2)
  {
    sub_20C028928(v97, v29, type metadata accessor for ShelfItemAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      sub_20C028990(v29, v6, type metadata accessor for RootShowcaseItem);
      v58 = v6[1];
      v59 = (v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_centerIdentifier);
      *v59 = *v6;
      v59[1] = v58;

      sub_20C01E8A8(128);
      v60 = type metadata accessor for RootShowcaseItem;
      v61 = v6;
LABEL_16:
      sub_20C0288C8(v61, v60);
      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v62 = type metadata accessor for ShelfItemAction;
LABEL_15:
      v60 = v62;
      v61 = v29;
      goto LABEL_16;
    }

    v32 = v29;
    v29 = v26;
    sub_20C028990(v32, v26, type metadata accessor for ButtonAction);
    if (a2 < 0)
    {
      __break(1u);
      return;
    }

    v33 = *(v30 + 8 * a2 + 32);
    v34 = (v33 >> 57) & 0x78 | v33 & 7;
    if (v34 != 34)
    {
      if (v34 == 32)
      {
        v35 = swift_projectBox();
        v83 = v23;
        v84 = v21;
        (*(v21 + 16))(v23, v35, v89);
        *(v2 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_isHandlingAction) = 1;

        v36 = v2;
        sub_20C01E8A8(129);
        v37 = sub_20C133E44();
        v97 = v33;
        v38 = v26;
        v92 = v37;
        v40 = v39;
        v41 = v93;
        CatalogLockup.metricDestination.getter(v93);
        v42 = sub_20C135ED4();
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        v43 = *MEMORY[0x277D51798];
        v44 = sub_20C1352E4();
        v45 = *(v44 - 8);
        v46 = v94;
        (*(v45 + 104))(v94, v43, v44);
        (*(v45 + 56))(v46, 0, 1, v44);
        v47 = v86;
        sub_20B5A7CD8(v38, v92, v40, v41, 0, 0, v46, v86);

        sub_20B520158(v46, &unk_27C765D50, &unk_20C14FB70);
        sub_20B520158(v41, &unk_27C7621D0, &unk_20C14D9B0);
        v49 = v95;
        v48 = v96;
        v50 = v85;
        (*(v95 + 16))(v85, v47, v96);
        v51 = (*(v49 + 80) + 16) & ~*(v49 + 80);
        v52 = swift_allocObject();
        (*(v49 + 32))(v52 + v51, v50, v48);
        v53 = (v52 + ((v14 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v53 = sub_20C0282D8;
        v53[1] = v36;

        v54 = v87;
        sub_20C137C94();
        v55 = *(v49 + 8);
        v55(v47, v48);
        v56 = sub_20C137CB4();
        v57 = swift_allocObject();
        *(v57 + 16) = 0;
        *(v57 + 24) = 0;
        v56(sub_20B5DF6DC, v57);

        v55(v54, v48);
        (*(v84 + 8))(v83, v89);
        sub_20C0288C8(v38, type metadata accessor for ButtonAction);

        return;
      }

      v62 = type metadata accessor for ButtonAction;
      goto LABEL_15;
    }

    v97 = v2;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F20, &qword_20C152E18);
    v64 = swift_projectBox();
    (*(v91 + 16))(v90, v64 + *(v63 + 96), v92);

    sub_20BD09848(v65);
    if (!v67)
    {
      sub_20BD09C88();
      if (!v67)
      {
        v66 = sub_20C132B54();
      }
    }

    v68 = v66;
    v69 = v67;
    v70 = *MEMORY[0x277D523B8];
    v71 = sub_20C135ED4();
    v72 = *(v71 - 8);
    v73 = v93;
    (*(v72 + 104))(v93, v70, v71);
    (*(v72 + 56))(v73, 0, 1, v71);
    v74 = *MEMORY[0x277D51760];
    v75 = sub_20C1352E4();
    v76 = *(v75 - 8);
    v77 = v94;
    (*(v76 + 104))(v94, v74, v75);
    (*(v76 + 56))(v77, 0, 1, v75);
    v78 = v88;
    sub_20B5A7CD8(v29, v68, v69, v73, 0, 0, v77, v88);

    sub_20B520158(v77, &unk_27C765D50, &unk_20C14FB70);
    sub_20B520158(v73, &unk_27C7621D0, &unk_20C14D9B0);
    v79 = v96;
    v80 = sub_20C137CB4();
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    *(v81 + 24) = 0;
    v80(sub_20B52347C, v81);

    (*(v95 + 8))(v78, v79);
    (*(v91 + 8))(v90, v92);
    sub_20C0288C8(v29, type metadata accessor for ButtonAction);
  }
}

uint64_t sub_20C0282EC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_20B51F948(a1, a2, v2 + v6, *v7, v7[1], &qword_27C7621E0, &unk_20C150360, &unk_282300A88, sub_20C0283D8);
}

uint64_t sub_20C0283D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  v2(&v6);
  return v3(&v6);
}

uint64_t sub_20C028444(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

double sub_20C028768(uint64_t a1, void *a2)
{
  *(v2 + *a2) = a1;

  return result;
}

unint64_t sub_20C02884C()
{
  result = qword_27C771DD8;
  if (!qword_27C771DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771DD8);
  }

  return result;
}

uint64_t sub_20C0288C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C028928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C028990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_20C028A80()
{
  sub_20C1340E4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_bannerVideoPreviewDurationThresholdInSeconds;
  *v1 = v2;
  *(v1 + 8) = 0;
}

uint64_t sub_20C028AF4(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(v1 + 16))();
  return v3(a1);
}

char *sub_20C028BA4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_layout];
  *v11 = xmmword_20C18A2F0;
  *(v11 + 1) = xmmword_20C18A300;
  v12 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_platterView;
  type metadata accessor for RoundedPlatterView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_stackView;
  v15 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAlignment_];
  [v15 setAxis_];
  *&v4[v14] = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  v18 = objc_opt_self();
  v19 = [v18 preferredFontForTextStyle_];
  [v17 setFont_];

  v20 = [objc_opt_self() secondaryLabelColor];
  [v17 setTextColor_];

  LODWORD(v21) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v22];

  *&v4[v16] = v17;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsFontForContentSizeCategory_];
  v24 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:0];
  v25 = [v24 fontDescriptorWithSymbolicTraits_];
  if (v25)
  {
    v26 = v25;

    v24 = v26;
  }

  v27 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_themeLabel;
  v28 = [v18 fontWithDescriptor:v24 size:0.0];

  [v23 setFont_];
  *&v4[v27] = v23;
  v80.receiver = v4;
  v80.super_class = type metadata accessor for ThemeFilterCell(0);
  v29 = objc_msgSendSuper2(&v80, sel_initWithFrame_, a1, a2, a3, a4);
  [v29 setBackgroundColor_];
  v30 = [v29 contentView];
  [v30 setMaximumContentSizeCategory_];

  v31 = [v29 contentView];
  v32 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_stackView;
  [v31 addSubview_];

  v33 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_platterView;
  v77 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_themeLabel;
  [*&v29[OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_platterView] addSubview_];
  [*&v29[v32] setSpacing_];
  [*&v29[v32] setDistribution_];
  [*&v29[v32] addArrangedSubview_];
  [*&v29[v32] addArrangedSubview_];
  v78 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20C152A00;
  v35 = [*&v29[v32] leadingAnchor];
  v36 = [v29 contentView];
  v37 = [v36 leadingAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v34 + 32) = v38;
  v39 = [*&v29[v32] trailingAnchor];
  v40 = [v29 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v39 &selRef:v41 alertControllerReleasedDictationButton:? + 5];
  *(v34 + 40) = v42;
  v43 = [*&v29[v32] topAnchor];
  v44 = [v29 contentView];
  v45 = [v44 &selRef_setLineBreakMode_];

  v46 = [v43 &selRef:v45 alertControllerReleasedDictationButton:? + 5];
  *(v34 + 48) = v46;
  v47 = [*&v29[v32] bottomAnchor];
  v48 = [v29 contentView];

  v49 = [v48 &selRef_secondaryLabel + 5];
  v50 = [v47 &selRef:v49 alertControllerReleasedDictationButton:? + 5];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v51) = v79;
  [v50 setPriority_];
  *(v34 + 56) = v50;
  v52 = [*&v29[v33] heightAnchor];
  v53 = [v52 constraintGreaterThanOrEqualToConstant_];

  *(v34 + 64) = v53;
  v54 = [*&v29[v33] heightAnchor];
  v55 = [v54 constraintEqualToConstant_];

  sub_20C13BBA4();
  LODWORD(v56) = v79;
  [v55 setPriority_];
  *(v34 + 72) = v55;
  v57 = [*&v29[v33] widthAnchor];
  v58 = [*&v29[v32] widthAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v34 + 80) = v59;
  v60 = [*&v29[v77] leadingAnchor];
  v61 = [*&v29[v33] leadingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:10.0];

  *(v34 + 88) = v62;
  v63 = [*&v29[v77] trailingAnchor];
  v64 = [*&v29[v33] trailingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:-10.0];

  *(v34 + 96) = v65;
  v66 = [*&v29[v77] topAnchor];
  v67 = [*&v29[v33] topAnchor];
  v68 = [v66 constraintGreaterThanOrEqualToAnchor:v67 constant:5.0];

  *(v34 + 104) = v68;
  v69 = [*&v29[v77] bottomAnchor];
  v70 = [*&v29[v33] bottomAnchor];
  v71 = [v69 constraintLessThanOrEqualToAnchor:v70 constant:-5.0];

  *(v34 + 112) = v71;
  v72 = [*&v29[v77] centerYAnchor];
  v73 = [*&v29[v33] centerYAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v34 + 120) = v74;
  sub_20B5E29D0();
  v75 = sub_20C13CC54();

  [v78 activateConstraints_];

  return v29;
}

uint64_t type metadata accessor for ThemeFilterCell(uint64_t a1)
{
  result = qword_281103648;
  if (!qword_281103648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C0298F0(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_20C0299A8(unint64_t a1, char a2)
{
  LOBYTE(v3) = a2;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v2[OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_titleLabel];
  [v10 setHidden_];
  [v10 setText_];
  v11 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v11 == 57)
  {
    goto LABEL_8;
  }

  if (v11 != 58)
  {
    sub_20C13B534();

    v23 = v2;
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = a1;
      v42 = v40;
      *v26 = 138412546;
      *(v26 + 4) = v23;
      *v27 = v23;
      *(v26 + 12) = 2080;
      v28 = sub_20B5F66D0();
      v29 = v23;
      v30 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v28);
      v32 = sub_20B51E694(v30, v31, &v42);

      *(v26 + 14) = v32;
      _os_log_impl(&dword_20B517000, v24, v25, "Attempted to configure %@ with item: %s", v26, 0x16u);
      sub_20B520158(v27, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      v33 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x20F2F6A40](v33, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }

  a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *&v2[OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_themeLabel];
  v13 = sub_20C13C914();
  [v12 setText_];

  v14 = objc_opt_self();
  if (!a1)
  {
    v34 = v14;
    v35 = [v14 whiteColor];
    [v12 setTextColor_];

    v16 = *&v2[OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_platterView];
    v36 = [v34 systemGray5Color];
LABEL_18:
    v18 = v36;
    goto LABEL_19;
  }

  if (a1 != 1)
  {
    v37 = v14;
    v38 = [v14 darkGrayColor];
    [v12 setTextColor_];

    v16 = *&v2[OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_platterView];
    v36 = [v37 systemGray5Color];
    goto LABEL_18;
  }

  v15 = [v14 blackColor];
  [v12 setTextColor_];

  v16 = *&v2[OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_platterView];
  result = [objc_opt_self() briskColors];
  if (result)
  {
    v3 = result;
    v18 = [result nonGradientTextColor];

    if (!v18)
    {
      __break(1u);
LABEL_8:
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      sub_20C0299A8(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20), v3 & 1);
      if (v19)
      {
        [v10 setHidden_];
        v20 = sub_20C13C914();
        [v10 setText_];
      }

      v21 = sel_setNeedsLayout;
      v22 = v2;

      return [v22 v21];
    }

LABEL_19:
    [v16 setBackgroundColor_];

    v21 = sel_accessibilityApplyState_disabled_;
    v22 = v2;

    return [v22 v21];
  }

  __break(1u);
  return result;
}

double sub_20C029E9C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20C029EE8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20C029F40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_20C029FA4(uint64_t a1)
{
  v1 = sub_20C1380F4();
  result = 160.0;
  if (!v1)
  {
    return 129.0;
  }

  return result;
}

id sub_20C02A180(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20C02A1F4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_layout);
  *v3 = xmmword_20C18A2F0;
  v3[1] = xmmword_20C18A300;
  v4 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_platterView;
  type metadata accessor for RoundedPlatterView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_stackView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAlignment_];
  [v7 setAxis_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontForTextStyle_];
  [v9 setFont_];

  v12 = [objc_opt_self() secondaryLabelColor];
  [v9 setTextColor_];

  LODWORD(v13) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v14];

  *(v0 + v8) = v9;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  v16 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:0];
  v17 = [v16 fontDescriptorWithSymbolicTraits_];
  if (v17)
  {
    v18 = v17;

    v16 = v18;
  }

  v19 = OBJC_IVAR____TtC9SeymourUI15ThemeFilterCell_themeLabel;
  v20 = [v10 fontWithDescriptor:v16 size:0.0];

  [v15 setFont_];
  *(v0 + v19) = v15;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C02A560()
{
  v35 = sub_20C136594();
  v1 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134014();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20C134A74();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = *(v0 + 152);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v38 = MEMORY[0x277D84F90];

    sub_20B526D44(0, v12, 0);
    v13 = v38;
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v27 = v11;
    v15 = v11 + v14;
    v36 = *(v5 + 72);
    v30 = (v1 + 8);
    v31 = (v1 + 32);
    v28 = (v3 + 8);
    v29 = (v3 + 32);
    do
    {
      sub_20B864C34(v15, v10);
      sub_20B864C34(v10, v7);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = v32;
        v17 = v33;
        (*v29)(v32, v7, v33);
        v18 = sub_20C133E44();
        v20 = v19;
        v21 = v28;
      }

      else
      {
        v16 = v34;
        v17 = v35;
        (*v31)(v34, v7, v35);
        v18 = sub_20C136564();
        v20 = v22;
        v21 = v30;
      }

      (*v21)(v16, v17);
      sub_20B864C98(v10);
      v38 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_20B526D44((v23 > 1), v24 + 1, 1);
        v13 = v38;
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v18;
      *(v25 + 40) = v20;
      v15 += v36;
      --v12;
    }

    while (v12);
  }

  return v13;
}

void sub_20C02A8B8(uint64_t a1)
{
  v3 = sub_20C134014();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134A74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v29 = v1;
  v13 = *(v1 + 152);
  v14 = *(v13 + 16);

  if (v14)
  {
    v15 = 0;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        return;
      }

      sub_20B864C34(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v12);
      v16 = MEMORY[0x20F2EC1C0](v12, a1);
      sub_20B864C98(v12);
      if (v16)
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_6;
      }
    }

    sub_20B864C34(a1, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = v27;
      v17 = v28;
      (*(v27 + 32))(v5, v9, v28);
      sub_20C031AF8(v5, *(v29 + 144), v29);
      (*(v18 + 8))(v5, v17);
    }

    else
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28, &unk_20C1713B0);
      swift_allocBox();
      v21 = v20;
      v22 = *(v19 + 48);
      v23 = *(v19 + 64);
      v24 = sub_20C136594();
      (*(*(v24 - 8) + 32))(v21, v9, v24);
      v25 = v29;
      *(v21 + v22) = *(v29 + 144);
      *(v21 + v23) = *(v25 + 145);
    }
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_20C02ABB0(uint64_t a1, void *a2, int a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, __n128), uint64_t a6)
{
  v38 = a1;
  v39 = a6;
  v47 = a5;
  LODWORD(v46) = a3;
  v44 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = a4;
  v45 = a4;
  v11 = a4[15];
  v12 = v10[16];
  __swift_project_boxed_opaque_existential_1(v10 + 12, v11);
  v13 = sub_20C136194();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v9, v11, v12, v48);
  sub_20B520158(v9, &unk_27C765110, &unk_20C152460);
  v14 = v48[0];
  v15 = v48[1];
  v16 = v48[2];
  v42 = v48[4];
  v43 = v48[3];
  v40 = v48[5];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
  v41 = swift_allocBox();
  v19 = v18;
  v20 = v17[12];
  v21 = (v18 + v17[16]);
  v22 = v18 + v17[20];
  v23 = v18 + v17[24];
  v24 = v17[28];
  v25 = v17[32];
  v26 = sub_20C134014();
  (*(*(v26 - 8) + 16))(v19, v44, v26);
  *(v19 + v20) = v46;
  v28 = v42;
  v27 = v43;
  v29 = v40;
  v37 = v14;
  *v21 = v14;
  v21[1] = v15;
  v44 = v15;
  v46 = v16;
  v21[2] = v16;
  v21[3] = v27;
  v21[4] = v28;
  v21[5] = v29;
  v30 = v47;
  *v22 = xmmword_20C157520;
  *(v22 + 24) = 0;
  *(v22 + 32) = 0;
  *(v22 + 16) = 0;
  *(v22 + 40) = 0;
  v31 = v41;
  *(v19 + v24) = v45[145];
  *v23 = 3;
  *(v23 + 8) = 3;
  *(v19 + v25) = sub_20B6B2348(MEMORY[0x277D84F90]);
  v32 = v31 | 0x4000000000000000;
  if (v30)
  {
    v45 = v37;
    v33 = v44;
    v34 = v46;

    v32 = (v30)(v38, v31 | 0x4000000000000000);
  }

  return v32;
}

void sub_20C02AE88(uint64_t (*a1)(unint64_t, char *, void), uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v33 = sub_20C134014();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134A74();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768E58, &unk_20C18A440);
  MEMORY[0x28223BE20](v36);
  v10 = (&v31 - v9);
  v11 = *(v2 + 152);
  v12 = *(v11 + 16);
  v39 = v2;
  v40 = v12;
  v13 = (v3 + 32);
  v14 = (v3 + 8);

  v15 = 0;
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    v16 = v15;
    if (v40 == v15)
    {

      return;
    }

    if (v15 >= *(v11 + 16))
    {
      break;
    }

    v17 = v11 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v15;
    v18 = *(v36 + 48);
    *v10 = v15;
    sub_20B864C34(v17, v10 + v18);
    sub_20B864C34(v10 + v18, v8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28, &unk_20C1713B0);
      v31 = swift_allocBox();
      v23 = v22;
      v24 = *(v21 + 48);
      v25 = *(v21 + 64);
      v26 = sub_20C136594();
      (*(*(v26 - 8) + 32))(v23, v8, v26);
      v27 = v39;
      *(v23 + v24) = *(v39 + 144);
      *(v23 + v25) = *(v27 + 145);
      v20 = v31 | 0x4000000000000001;
      sub_20B520158(v10, &qword_27C768E58, &unk_20C18A440);
      goto LABEL_8;
    }

    v19 = v33;
    (*v13)(v5, v8, v33);
    v20 = v34(v16, v5, *(v39 + 144));
    (*v14)(v5, v19);
    sub_20B520158(v10, &qword_27C768E58, &unk_20C18A440);
    v15 = v16 + 1;
    if ((~v20 & 0xF000000000000007) != 0)
    {
LABEL_8:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_20BC05D3C(0, *(v32 + 2) + 1, 1, v32);
      }

      v29 = *(v32 + 2);
      v28 = *(v32 + 3);
      if (v29 >= v28 >> 1)
      {
        v32 = sub_20BC05D3C((v28 > 1), v29 + 1, 1, v32);
      }

      v15 = v16 + 1;
      v30 = v32;
      *(v32 + 2) = v29 + 1;
      *&v30[8 * v29 + 32] = v20;
    }
  }

  __break(1u);
}

uint64_t sub_20C02B258@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a3;
  v97 = a4;
  v114 = sub_20C136594();
  v96 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v119 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_20C134014();
  v7 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v100 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = &v95 - v10;
  MEMORY[0x28223BE20](v11);
  v108 = &v95 - v12;
  MEMORY[0x28223BE20](v13);
  v107 = &v95 - v14;
  MEMORY[0x28223BE20](v15);
  v117 = &v95 - v16;
  MEMORY[0x28223BE20](v17);
  v106 = &v95 - v18;
  v121 = sub_20C134A74();
  MEMORY[0x28223BE20](v121);
  v118 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v110 = &v95 - v21;
  MEMORY[0x28223BE20](v22);
  v101 = &v95 - v23;
  MEMORY[0x28223BE20](v24);
  v109 = (&v95 - v25);
  MEMORY[0x28223BE20](v26);
  v28 = &v95 - v27;
  MEMORY[0x28223BE20](v29);
  v115 = &v95 - v30;
  MEMORY[0x28223BE20](v31);
  v116 = &v95 - v32;
  MEMORY[0x28223BE20](v33);
  v36 = &v95 - v35;
  v37 = *(a2 + 16);
  v112 = v7;
  v98 = v34;
  if (v37)
  {
    v105 = *a1;
    v113 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v38 = a2 + v113;
    v39 = *(v34 + 72);
    v103 = (v7 + 32);
    v102 = (v7 + 8);
    v40 = MEMORY[0x277D84F90];
    v41 = v115;
    v104 = v39;
    while (1)
    {
      sub_20B864C34(v38, v36);
      sub_20B864C34(v36, v41);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v42 = v40;
      v43 = v28;
      v44 = v106;
      v45 = v120;
      v46 = (*v103)(v106, v41, v120);
      MEMORY[0x28223BE20](v46);
      *(&v95 - 2) = v44;
      sub_20B796808(sub_20BD1670C, (&v95 - 4), v105);
      v48 = v47;
      (*v102)(v44, v45);
      if (v48)
      {
        v28 = v43;
        v40 = v42;
        v41 = v115;
        v39 = v104;
LABEL_9:
        sub_20B8C6FC8(v36, v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D4F4(0, *(v40 + 16) + 1, 1);
          v41 = v115;
          v40 = v122;
        }

        v51 = *(v40 + 16);
        v50 = *(v40 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_20BB5D4F4((v50 > 1), v51 + 1, 1);
          v41 = v115;
          v40 = v122;
        }

        *(v40 + 16) = v51 + 1;
        sub_20B8C6FC8(v28, v40 + v113 + v51 * v39);
        goto LABEL_4;
      }

      sub_20B864C98(v36);
      v28 = v43;
      v40 = v42;
      v41 = v115;
      v39 = v104;
LABEL_4:
      v38 += v39;
      if (!--v37)
      {
        goto LABEL_15;
      }
    }

    sub_20B864C98(v41);
    goto LABEL_9;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_15:
  v52 = *(v40 + 16);
  v53 = MEMORY[0x277D84F90];
  if (v52)
  {
    v54 = v40 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v55 = *(v98 + 72);
    v56 = (v112 + 32);
    v57 = v109;
    v58 = v107;
    do
    {
      v59 = v116;
      sub_20B864C34(v54, v116);
      sub_20B8C6FC8(v59, v57);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v60 = *v56;
        v61 = v108;
        v62 = v57;
        v63 = v120;
        (*v56)(v108, v62, v120);
        v60(v58, v61, v63);
        v60(v117, v58, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_20BC06C30(0, *(v53 + 2) + 1, 1, v53);
        }

        v65 = *(v53 + 2);
        v64 = *(v53 + 3);
        if (v65 >= v64 >> 1)
        {
          v53 = sub_20BC06C30((v64 > 1), v65 + 1, 1, v53);
        }

        *(v53 + 2) = v65 + 1;
        v60(&v53[((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v65], v117, v120);
        v57 = v109;
      }

      else
      {
        sub_20B864C98(v57);
      }

      v54 += v55;
      --v52;
    }

    while (v52);
  }

  v66 = v111;

  v67 = sub_20C033FF8(v53);

  *(v66 + 160) = v67;

  v68 = *(v40 + 16);
  if (!v68)
  {

    v69 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  v122 = MEMORY[0x277D84F90];
  sub_20BB5D4F4(0, v68, 0);
  v69 = v122;
  v70 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v71 = v40 + v70;
  v72 = *(v98 + 72);
  v117 = (v96 + 32);
  v113 = v112 + 16;
  v108 = (v112 + 32);
  v109 = (v96 + 8);
  v73 = v110;
  v74 = v101;
  v115 = v72;
  v116 = v70;
  do
  {
    sub_20B864C34(v71, v73);
    v75 = v118;
    sub_20B864C34(v73, v118);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20B8C6FC8(v73, v74);
      sub_20B864C98(v75);
      goto LABEL_36;
    }

    v76 = *v117;
    v77 = v114;
    (*v117)(v119, v75, v114);
    v78 = sub_20C136564();
    v80 = v79;
    v81 = *(v111 + 160);
    if (!*(v81 + 16))
    {

LABEL_34:
      v73 = v110;
      sub_20B864C98(v110);
      v76(v74, v119, v77);
      goto LABEL_35;
    }

    v82 = v78;

    v83 = sub_20B65AA60(v82, v80);
    v85 = v84;

    if ((v85 & 1) == 0)
    {

      v77 = v114;
      v74 = v101;
      goto LABEL_34;
    }

    v86 = v112;
    v87 = *(v81 + 56) + *(v112 + 72) * v83;
    v88 = v100;
    v89 = v120;
    (*(v112 + 16))(v100, v87, v120);
    v90 = v110;
    sub_20B864C98(v110);

    (*v109)(v119, v114);
    v91 = *(v86 + 32);
    (v91)(v99, v88, v89);
    v73 = v90;
    v74 = v101;
    v91();
LABEL_35:
    swift_storeEnumTagMultiPayload();
    v72 = v115;
    v70 = v116;
LABEL_36:
    v122 = v69;
    v93 = *(v69 + 16);
    v92 = *(v69 + 24);
    if (v93 >= v92 >> 1)
    {
      sub_20BB5D4F4((v92 > 1), v93 + 1, 1);
      v73 = v110;
      v69 = v122;
    }

    *(v69 + 16) = v93 + 1;
    sub_20B8C6FC8(v74, v69 + v70 + v93 * v72);
    v71 += v72;
    --v68;
  }

  while (v68);

LABEL_41:
  *(v111 + 152) = v69;

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20C02BC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_20C134A74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0, &unk_20C155EB0);
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v37 = v11;
  v38 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v39 = &v33 - v13;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v34 = v3;
    v35 = a2;
    v44 = MEMORY[0x277D84F90];
    v36 = v6;
    sub_20BB5D4F4(0, v14, 0);
    v15 = v44;
    v43 = sub_20C136594();
    v16 = *(v43 - 8);
    v42 = *(v16 + 16);
    v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v18 = *(v16 + 72);
    do
    {
      v42(v9, v17, v43);
      swift_storeEnumTagMultiPayload();
      v44 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_20BB5D4F4((v19 > 1), v20 + 1, 1);
        v15 = v44;
      }

      *(v15 + 16) = v20 + 1;
      sub_20B8C6FC8(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20);
      v17 += v18;
      --v14;
    }

    while (v14);
    v3 = v34;
  }

  v21 = v3[10];
  v22 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v21);
  v23 = v39;
  (*(v22 + 8))(v21, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = v15;
  *(v24 + 24) = v3;
  v26 = v40;
  v25 = v41;
  v27 = v38;
  (*(v40 + 16))(v38, v23, v41);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = (v37 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v26 + 32))(v30 + v28, v27, v25);
  v31 = (v30 + v29);
  *v31 = sub_20B9EA780;
  v31[1] = v24;

  sub_20C137C94();
  return (*(v26 + 8))(v23, v25);
}

void sub_20C02C020(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 152);
  if (*(v10 + 16) <= a1)
  {
    sub_20C13B534();

    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349312;
      *(v15 + 4) = a1;
      *(v15 + 12) = 2050;
      *(v15 + 14) = *(*(v3 + 152) + 16);

      _os_log_impl(&dword_20B517000, v13, v14, "[ShelfLazyLockupFetcher] requesting index %{public}ld, only %{public}ld lockups", v15, 0x16u);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v9, v6);
    v16 = sub_20C134A74();
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  else if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_20C134A74();
    v18 = *(v11 - 8);
    sub_20B864C34(v10 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * a1, a2);
    v12 = *(v18 + 56);

    v12(a2, 0, 1, v11);
  }
}
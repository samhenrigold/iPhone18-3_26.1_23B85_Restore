uint64_t sub_20BF68BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a1;
  v8 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v8 - 8);
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionDetail;
  v10 = sub_20C1377C4();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  v11 = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_bookmarks) = v11;
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_playlists) = v11;
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_resumableSessions) = v11;
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_configuration;
  v13 = sub_20C134104();
  (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_activationState) = 0;
  v14 = (v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier);
  *v14 = a1;
  v14[1] = a2;
  v58 = a2;
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_dependencies) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40, &unk_20C14D9E0);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_assetClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_eventHub) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_upNextQueueClient);
  v57 = sub_20C1380F4();
  v15 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v56 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v15 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v16 = sub_20C13C724();
  v17 = type metadata accessor for CatalogPageImpressionTracker();
  v18 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v19 = MEMORY[0x277D221C0];
  v18[2] = sub_20C13C6D4();
  v18[3] = v16;
  v18[4] = v19;
  v71 = v17;
  v20 = sub_20BC4F048(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v72 = v20;
  *&v70 = v18;
  v21 = type metadata accessor for MetricLocationStore();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D84F98];
  v24 = MEMORY[0x277D84F90];
  *(v22 + 16) = MEMORY[0x277D84F90];
  *(v22 + 24) = v23;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v70, v17);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = (&v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  v30 = *v28;
  v69[3] = v17;
  v69[4] = v20;
  v69[0] = v30;
  v68[3] = v21;
  v68[4] = &off_2822B6968;
  v68[0] = v22;
  sub_20B51CC64(v69, v67);
  sub_20B51CC64(v68, v66);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v67, v67[3]);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v66, v66[3]);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = (&v56 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39, v37);
  v41 = *v34;
  v42 = *v39;
  v64 = v17;
  v65 = v20;
  v62 = &off_2822B6968;
  v63[0] = v41;
  v61 = v21;
  v60[0] = v42;
  v43 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v56 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47, v45);
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  v50 = MEMORY[0x28223BE20](v49);
  v52 = (&v56 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52, v50);
  v54 = sub_20BE3AA74(v59, v58, v24, v57, v56, *v47, *v52, 2, v43);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(&v70);
  *(v4 + 32) = v54;
  return v4;
}

uint64_t sub_20BF69508@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_20BF69594(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20BF69784(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UpNextQueuePopOverBackgroundView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20BF697DC()
{
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_20BF69828(char a1)
{
  v3 = *(v1 + 32);
  v4 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_20BF69884(uint64_t a1, float a2, double a3, double a4)
{
  v8 = sub_20C132EE4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_20C1321F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868, &unk_20C16A050);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - v15;
  v17 = *(v4 + 32) + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  swift_beginAccess();
  if (a3 <= 0.0)
  {
    v19 = 0;
    v21 = LODWORD(a2);
  }

  else
  {
    v28 = a2;
    v26[3] = 0;
    v18 = a1;
    v19 = 1;
    v27 = 1;
    (*(v10 + 16))(v12, v18, v9);
    sub_20C132ED4();
    sub_20C132474();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470, &unk_20C16C130);
    v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_20C14F980;
    (*(v14 + 32))(v21 + v20, v16, v13);
  }

  v22 = v17 + *(type metadata accessor for ContainerNodeBuilder(0) + 32);
  v23 = *v22;
  *v22 = v21;
  v24 = *(v22 + 8);
  *(v22 + 8) = v19;
  sub_20B584060(v23, v24);
  return swift_endAccess();
}

unint64_t sub_20BF69B50()
{
  result = qword_27C770D78;
  if (!qword_27C770D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770D78);
  }

  return result;
}

uint64_t sub_20BF69BB4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_20C13E164();
  if ((v6 & 0x4000000000000000) != 0)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13D604();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    v10 = v1;
    v11 = v2;
    if (v6 < 0)
    {
      LOBYTE(v12) = v4 & 1;
      v13 = v3;
      LODWORD(v14) = v5;
      BYTE4(v14) = BYTE4(v5) & 1;
      MEMORY[0x20F2F58E0](1);
      sub_20B992E10(v9);
    }

    else
    {
      v12 = v4;
      LODWORD(v13) = v3;
      BYTE4(v13) = BYTE4(v3) & 1;
      BYTE5(v13) = BYTE5(v3);
      v14 = v5;
      v15 = v6 & 1;
      v16 = v7;
      MEMORY[0x20F2F58E0](0);
      sub_20B7C71D4(v9);
    }
  }

  sub_20C13D604();
  return sub_20C13E1B4();
}

uint64_t sub_20BF69CE4(uint64_t a1)
{
  v3 = *(v1 + 40);
  if ((v3 & 0x4000000000000000) != 0)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13D604();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    if (v3 < 0)
    {
      MEMORY[0x20F2F58E0](1);
      sub_20B992E10(a1);
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
      sub_20B7C71D4(a1);
    }
  }

  return sub_20C13D604();
}

uint64_t sub_20BF69E0C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  sub_20C13E164();
  if ((v7 & 0x4000000000000000) != 0)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13D604();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    v11 = v2;
    v12 = v3;
    if (v7 < 0)
    {
      LOBYTE(v13) = v5 & 1;
      v14 = v4;
      LODWORD(v15) = v6;
      BYTE4(v15) = BYTE4(v6) & 1;
      MEMORY[0x20F2F58E0](1);
      sub_20B992E10(v10);
    }

    else
    {
      v13 = v5;
      LODWORD(v14) = v4;
      BYTE4(v14) = BYTE4(v4) & 1;
      BYTE5(v14) = BYTE5(v4);
      v15 = v6;
      v16 = v7 & 1;
      v17 = v8;
      MEMORY[0x20F2F58E0](0);
      sub_20B7C71D4(v10);
    }
  }

  sub_20C13D604();
  return sub_20C13E1B4();
}

uint64_t sub_20BF69F38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_20BF69FDC(v7, v8) & 1;
}

unint64_t sub_20BF69F88()
{
  result = qword_27C770D80;
  if (!qword_27C770D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770D80);
  }

  return result;
}

uint64_t sub_20BF69FDC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 40);
  if ((v4 & 0x4000000000000000) != 0)
  {
    if ((*(a2 + 47) & 0x40) != 0)
    {
      sub_20B63C198();
      if (sub_20C13D5F4())
      {
        return sub_20C13D5F4() & 1;
      }
    }
  }

  else
  {
    v5 = *(a2 + 40);
    if ((v5 & 0x4000000000000000) == 0)
    {
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = *(a1 + 32);
      v10 = a1;
      v12 = *a2;
      v11 = *(a2 + 8);
      v13 = *(a2 + 16);
      v14 = *(a2 + 24);
      v15 = *(a2 + 32);
      if (v4 < 0)
      {
        if ((v5 & 0x8000000000000000) == 0 || v3 != v12)
        {
          return 0;
        }

        if (v8)
        {
          if ((v13 & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v13 & 1) != 0 || v2 != v11)
        {
          return 0;
        }

        v20 = sub_20C13C954();
        v22 = v21;
        if (v20 == sub_20C13C954() && v22 == v23)
        {
        }

        else
        {
          v24 = sub_20C13DFF4();

          if ((v24 & 1) == 0)
          {
            return 0;
          }
        }

        if ((v9 & 0x100000000) != 0)
        {
          if ((v15 & 0x100000000) != 0)
          {
LABEL_6:
            sub_20B63C198();
            return sub_20C13D5F4() & 1;
          }
        }

        else if ((v15 & 0x100000000) == 0 && v9 == v15)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v16 = *(v10 + 48);
        v17 = *(a2 + 48);
        *v25 = v3;
        *&v25[1] = v2;
        v25[2] = v8;
        v26 = v7;
        v27 = BYTE4(v7) & 1;
        v28 = BYTE5(v7);
        v29 = v9;
        v30 = v4 & 1;
        v31 = v16;
        if ((v5 & 0x8000000000000000) == 0)
        {
          *v32 = v12;
          *&v32[1] = v11;
          v32[2] = v13;
          v33 = v14;
          v34 = BYTE4(v14) & 1;
          v35 = BYTE5(v14);
          v36 = v15;
          v37 = v5 & 1;
          v38 = v17;
          sub_20B7C7E30(v25, v32);
          if (v18)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  return 0;
}

double sub_20BF6A20C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2 * -a2;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20BF6A2A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13C554();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  if (*a1 == 1)
  {
    v53 = 0uLL;
    LOBYTE(v54) = 1;
    *(&v54 + 1) = 0;
    *&v55 = 0;
    WORD4(v55) = 128;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    LOBYTE(v59) = 0;
    *(&v59 + 1) = MEMORY[0x277D84F90];
    *&v60[0] = MEMORY[0x277D84F90];
    *(v60 + 8) = 0u;
    *(&v60[1] + 8) = 0u;
    *(&v60[2] + 1) = 0;
    v61 = 2;
    nullsub_1();
    v9 = v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row;
    v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 144);
    v70 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 128);
    v71 = v10;
    v72 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 160);
    v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 80);
    v66 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 64);
    v67 = v11;
    v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 112);
    v68 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 96);
    v69 = v12;
    v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 16);
    v62 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row);
    v63 = v13;
    v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 48);
    v64 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 32);
    v65 = v14;
    v15 = v60[2];
    *(v9 + 128) = v60[1];
    *(v9 + 144) = v15;
    *(v9 + 160) = v61;
    v16 = v58;
    *(v9 + 64) = v57;
    *(v9 + 80) = v16;
    v17 = v60[0];
    *(v9 + 96) = v59;
    *(v9 + 112) = v17;
    v18 = v54;
    *v9 = v53;
    *(v9 + 16) = v18;
    v19 = v56;
    *(v9 + 32) = v55;
    *(v9 + 48) = v19;
  }

  else
  {
    v51 = v4;
    v52 = v5;
    v21 = *(a1 + 24);
    v20 = *(a1 + 32);
    v22 = v2;
    v23 = v7;
    v25 = *(a1 + 8);
    v24 = *(a1 + 16);
    v26 = v8;
    v50 = v8;
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = v25;
    v7 = v23;
    v2 = v22;
    v27[4] = v24;
    v27[5] = v21;
    v4 = v51;
    v5 = v52;
    v27[6] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C14F980;
    *(v28 + 32) = v27;
    v53 = 0uLL;
    LOBYTE(v54) = 1;
    *(&v54 + 1) = 0;
    *&v55 = 0;
    WORD4(v55) = 128;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    LOBYTE(v59) = 0;
    *(&v59 + 1) = v28;
    *&v60[0] = MEMORY[0x277D84F90];
    *(v60 + 8) = 0u;
    *(&v60[1] + 8) = 0u;
    *(&v60[2] + 1) = 0;
    v61 = 2;
    nullsub_1();
    v29 = v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row;
    v30 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 144);
    v70 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 128);
    v71 = v30;
    v72 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 160);
    v31 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 80);
    v66 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 64);
    v67 = v31;
    v32 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 112);
    v68 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 96);
    v69 = v32;
    v33 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 16);
    v62 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row);
    v63 = v33;
    v34 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 48);
    v64 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 32);
    v65 = v34;
    v35 = v60[2];
    *(v29 + 128) = v60[1];
    *(v29 + 144) = v35;
    *(v29 + 160) = v61;
    v36 = v58;
    *(v29 + 64) = v57;
    *(v29 + 80) = v36;
    v37 = v60[0];
    *(v29 + 96) = v59;
    *(v29 + 112) = v37;
    v38 = v54;
    *v29 = v53;
    *(v29 + 16) = v38;
    v39 = v56;
    *(v29 + 32) = v55;
    *(v29 + 48) = v39;

    v40 = v50;
  }

  sub_20B634408(&v62);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61CFB0(v2, Strong);
      if (v44)
      {
        v46 = v43;
        v47 = v44;
        v48 = v45;
        sub_20B5E2E18();
        *v7 = sub_20C13D374();
        (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
        v49 = sub_20C13C584();
        (*(v5 + 8))(v7, v4);
        if ((v49 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B6205C8(v46, v47, v48, v2, 0, v42);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BF6A6A8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_avatarSettingsProvider));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_storefrontLocalizer));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountSettingAvatarRowShelf(uint64_t a1)
{
  result = qword_27C770DA8;
  if (!qword_27C770DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BF6A820(uint64_t a1)
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

uint64_t sub_20BF6A8E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_avatarSettingsProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_avatarSettingsProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_avatarSettingsProvider), v1);
  (*(v2 + 8))(&v10, v1, v2);
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  v9[4] = v14;
  sub_20BF6A2A4(v9);
  sub_20B8FD958(v3, v4, v5, v6, v7);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BB2AACC();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(&v10);
}

double sub_20BF6AA3C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8[0] = v2;
    v8[1] = v3;
    v8[2] = v4;
    v8[3] = v5;
    v8[4] = v6;
    sub_20B8FD908(v2, v3, v4, v5, v6);
    sub_20BF6A2A4(v8);

    return sub_20B8FD958(v2, v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_20BF6AAF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BF6AB68@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 32);
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

uint64_t sub_20BF6AC1C(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccountSettingLink(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 >> 57) & 0x78 | a1 & 7)
  {
    sub_20C13B534();

    v9 = sub_20C13BB74();
    v10 = sub_20C13D1D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = a1;
      v18 = v12;
      *v11 = 136446210;

      v13 = sub_20C13C9D4();
      v15 = sub_20B51E694(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20B517000, v9, v10, "Shelf lockup navigation triggered for item: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x20F2F6A40](v12, -1, -1);
      MEMORY[0x20F2F6A40](v11, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_storeEnumTagMultiPayload();
      sub_20B64E88C();
      swift_unknownObjectRelease();
      return sub_20BA01E58(v8);
    }
  }

  return result;
}

uint64_t sub_20BF6AE8C()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row;
  sub_20B5D8060(v9);
  v2 = v9[9];
  *(v1 + 128) = v9[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v10;
  v3 = v9[5];
  *(v1 + 64) = v9[4];
  *(v1 + 80) = v3;
  v4 = v9[7];
  *(v1 + 96) = v9[6];
  *(v1 + 112) = v4;
  v5 = v9[1];
  *v1 = v9[0];
  *(v1 + 16) = v5;
  v6 = v9[3];
  *(v1 + 32) = v9[2];
  *(v1 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FBF0, &qword_20C180F90);
  sub_20C133AA4();
  sub_20B51C710(v8, v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_avatarSettingsProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_eventHub) = v8[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v8, v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_subscriptionToken) = sub_20C13A914();
  return v0;
}

unint64_t sub_20BF6B030(uint64_t a1)
{
  result = sub_20BF6B058();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_20BF6B058()
{
  result = qword_27C764A90;
  if (!qword_27C764A90)
  {
    sub_20C134E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764A90);
  }

  return result;
}

uint64_t WorkoutPlanArtworkViewAppearance.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BF6B140()
{
  result = qword_27C770DB8;
  if (!qword_27C770DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770DB8);
  }

  return result;
}

uint64_t sub_20BF6B1A4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13A294();
    sub_20B522414(v4);

    v6 = sub_20C137CB4();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_20B52347C, v7);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_20BF6B33C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();

  v10 = sub_20C13BB74();
  v11 = sub_20C13D1D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v3;
    v15 = v14;
    v25 = v14;
    *v13 = 136446210;
    sub_20B654574();
    v16 = sub_20C13CF94();
    v18 = sub_20B51E694(v16, v17, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20B517000, v10, v11, "[ContentRatingCache] successfully activated with content ratings %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v19 = v15;
    v3 = v23;
    MEMORY[0x20F2F6A40](v19, -1, -1);
    v20 = v13;
    a2 = v24;
    MEMORY[0x20F2F6A40](v20, -1, -1);
  }

  v21 = (*(v7 + 8))(v9, v6);
  MEMORY[0x28223BE20](v21);
  *(&v23 - 4) = v3;
  *(&v23 - 3) = a1;
  *(&v23 - 2) = a2;
  return sub_20C13A294();
}

uint64_t sub_20BF6B574(void *a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v9 = a1;
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v15 = MEMORY[0x20F2F5850](v23, v24);
    v17 = sub_20B51E694(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20B517000, v10, v11, "[ContentRatingCache] failed to activate with error %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F2F6A40](v14, -1, -1);
    v18 = v13;
    a2 = v22;
    MEMORY[0x20F2F6A40](v18, -1, -1);
  }

  v19 = (*(v6 + 8))(v8, v5);
  MEMORY[0x28223BE20](v19);
  *(&v21 - 2) = v2;
  *(&v21 - 1) = a2;
  return sub_20C13A294();
}

uint64_t sub_20BF6B7A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  sub_20B522A60(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI18ContentRatingCacheC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_20BF6B830(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v43 - v9;
  v10 = sub_20C13C4B4();
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13C4F4();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0, &unk_20C155EB0);
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x28223BE20](v16);
  v50 = &v43 - v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;

  sub_20C13A294();
  v19 = aBlock;
  if (v55)
  {
    if (v55 == 1)
    {
      sub_20B5E2E18();
      v20 = sub_20C13D374();
      v21 = swift_allocObject();
      v21[2] = a3;
      v21[3] = sub_20B7E9034;
      v21[4] = v18;
      v58 = sub_20BF6C374;
      v59 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v55 = 1107296256;
      v56 = sub_20B7B548C;
      v57 = &block_descriptor_159;
      v22 = _Block_copy(&aBlock);

      sub_20C13C4D4();
      v53 = MEMORY[0x277D84F90];
      sub_20B7E9080();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
      sub_20B682EA8();
      sub_20C13DA94();
      sub_20C13D2F4();
      _Block_release(v22);

      sub_20B522A60(v19, 1);
      (*(v49 + 8))(v12, v10);
      (*(v47 + 8))(v15, v48);
    }

    else if (aBlock)
    {

      sub_20BF6C2F4();
      v28 = swift_allocError();
      *v29 = 3;
      aBlock = v28;
      LOBYTE(v55) = 1;
      a1(&aBlock);
    }

    else
    {
      v30 = v46;
      sub_20B522414(v46);
      v31 = swift_allocObject();
      *(v31 + 16) = sub_20BF6C348;
      *(v31 + 24) = a3;
      v32 = v43;
      v33 = v44;
      v34 = v45;
      (*(v44 + 16))(v43, v30, v45);
      v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
      v36 = swift_allocObject();
      (*(v33 + 32))(v36 + v35, v32, v34);
      v37 = (v36 + ((v7 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v37 = sub_20B7F133C;
      v37[1] = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665E0, &unk_20C186130);
      v38 = v50;
      sub_20C137C94();
      (*(v33 + 8))(v46, v34);
      v39 = swift_allocObject();
      *(v39 + 16) = sub_20B7E9034;
      *(v39 + 24) = v18;
      v40 = v52;
      v41 = sub_20C137CB4();
      v42 = swift_allocObject();
      *(v42 + 16) = sub_20B5D9BA4;
      *(v42 + 24) = v39;

      v41(sub_20B523484, v42);

      (*(v51 + 8))(v38, v40);
    }
  }

  else
  {
    v23 = v50;
    sub_20BF6BFA4();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_20B7E9034;
    *(v24 + 24) = v18;
    v25 = v52;
    v26 = sub_20C137CB4();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_20BF6C5A4;
    *(v27 + 24) = v24;

    v26(sub_20B52E438, v27);

    sub_20B522A60(v19, 0);
    (*(v51 + 8))(v23, v25);
  }
}

void sub_20BF6BFA4()
{
  sub_20C13A294();
  if (v3)
  {
    sub_20BF6C2F4();
    v0 = swift_allocError();
    *v1 = 0;
    *(swift_allocObject() + 16) = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665E0, &unk_20C186130);
    sub_20C137CA4();
    sub_20B522A60(v2, v3);
  }

  else
  {
    *(swift_allocObject() + 16) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665E0, &unk_20C186130);
    sub_20C137CA4();
  }
}

uint64_t sub_20BF6C0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0, &unk_20C155EB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_20BF6BFA4();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  v10 = sub_20C137CB4();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_20BF6C5A4;
  *(v11 + 24) = v9;

  v10(sub_20B52E438, v11);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20BF6C27C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665E0, &unk_20C186130);

  return sub_20C137C94();
}

unint64_t sub_20BF6C2F4()
{
  result = qword_27C770DC0;
  if (!qword_27C770DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770DC0);
  }

  return result;
}

void sub_20BF6C380(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = v2;
  v3 = *(v1 + 96);
  *(a1 + 8) = v3;
  sub_20BF6C3B8(v2, v3);
}

void sub_20BF6C3B8(void *a1, char a2)
{
  if (a2 == 1)
  {
    v2 = a1;
  }

  else if (!a2)
  {
  }
}

void sub_20BF6C438()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = 0;
  v4 = *(v1 + 96);
  *(v1 + 96) = 2;
  sub_20B522A60(v3, v4);
  dispatch_group_leave(v2);
}

void sub_20BF6C480()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 88);
  *(v2 + 88) = v1;
  v5 = *(v2 + 96);
  *(v2 + 96) = 0;

  sub_20B522A60(v4, v5);
  dispatch_group_leave(v3);
}

void sub_20BF6C4E4()
{
  v1 = *(v0 + 88);
  *(v0 + 88) = 1;
  v2 = *(v0 + 96);
  *(v0 + 96) = 2;
  sub_20B522A60(v1, v2);
}

unint64_t sub_20BF6C538()
{
  result = qword_27C770DC8;
  if (!qword_27C770DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770DC8);
  }

  return result;
}

uint64_t static AppWillTerminateOccurred.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_20BF6C62C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  [a1 setDelegate_];
  [a1 setModalPresentationStyle_];
  v11 = [a1 popoverPresentationController];
  [v11 setPermittedArrowDirections_];

  v12 = [a1 popoverPresentationController];
  if (v12)
  {
    v13 = v12;
    [v12 setDelegate_];
  }

  v14 = [a1 popoverPresentationController];
  if (v14)
  {
    v15 = v14;
    if (a6)
    {
      sub_20B5E5C28();
      v16 = sub_20C13CC54();
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    [v15 setPassthroughViews_];
  }
}

void sub_20BF6C7F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13C554();
  v110 = *(v4 - 8);
  v111 = v4;
  MEMORY[0x28223BE20](v4);
  v109 = (&v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = sub_20C1335F4();
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_20C137F24();
  v7 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1344C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v116 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v108 - v13;
  v15 = (v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer + 24);
  v125 = v15;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v17 = sub_20C138D34();
  v114 = v18;
  v115 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20C14F980;
  v120 = v2;
  *(v19 + 32) = sub_20BF6D298(a1);
  v156 = v19;
  v119 = a1;
  sub_20C135AA4();
  v20 = sub_20C134494();
  v21 = *(v10 + 8);
  v117 = v10 + 8;
  v118 = v9;
  v21(v14, v9);
  v22 = *(v20 + 16);
  if (v22)
  {
    v112 = v20;
    v113 = v21;
    v24 = *(v7 + 16);
    v23 = v7 + 16;
    v25 = v20 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v129 = *(v23 + 56);
    v130 = v24;
    v128 = (v23 - 8);
    v26 = MEMORY[0x277D84F90];
    v28 = v126;
    v27 = v127;
    v124 = v23;
    do
    {
      v131 = v26;
      v130(v28, v25, v27);
      v29 = sub_20C137EF4();
      if (v30)
      {
        v31 = v29;
        v32 = v30;
        v33 = v125;
        __swift_project_boxed_opaque_existential_1(v125, v125[3]);
        v34 = sub_20C138D34();
        v36 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v33[3]);
        v37 = sub_20C138D34();
        v39 = v38;
        v40 = swift_allocObject();
        *(v40 + 16) = v31;
        *(v40 + 24) = v32;
        *(v40 + 32) = v34;
        *(v40 + 40) = v36;
        *(v40 + 48) = v37;
        *(v40 + 56) = v39;
        v28 = v126;
        v27 = v127;
        v41 = sub_20C137F04();
        v43 = v42;
        (*v128)(v28, v27);
        *(v40 + 64) = v41;
        *(v40 + 72) = v43;
        v26 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_20BC05D3C(0, *(v26 + 2) + 1, 1, v26);
        }

        v45 = *(v26 + 2);
        v44 = *(v26 + 3);
        if (v45 >= v44 >> 1)
        {
          v26 = sub_20BC05D3C((v44 > 1), v45 + 1, 1, v26);
        }

        *(v26 + 2) = v45 + 1;
        *&v26[8 * v45 + 32] = v40 | 0x1000000000000002;
      }

      else
      {
        (*v128)(v28, v27);
        v26 = v131;
      }

      v25 += v129;
      --v22;
    }

    while (v22);

    v21 = v113;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  sub_20B8D921C(v26);
  v46 = v116;
  sub_20C135AA4();
  v47 = sub_20C134374();
  v21(v46, v118);
  v48 = v47 + 56;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v47 + 56);
  v52 = (v49 + 63) >> 6;
  v130 = (v121 + 16);
  v131 = v47;
  v53 = (v121 + 8);

  v54 = 0;
  v129 = MEMORY[0x277D84F90];
LABEL_16:
  v55 = v122;
  while (v51)
  {
LABEL_23:
    v57 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    (*(v121 + 16))(v55, *(v131 + 48) + *(v121 + 72) * (v57 | (v54 << 6)), v123);
    v58 = sub_20C1335E4();
    v60 = v59;
    *&v145 = v58;
    *(&v145 + 1) = v59;
    v62 = v61 & 1;
    LOBYTE(v146) = v61 & 1;
    LOBYTE(v135) = 1;
    sub_20BE0D244();
    sub_20BE0D298();
    v63 = sub_20C133C04();
    v64 = v62;
    v55 = v122;
    sub_20B583F4C(v58, v60, v64);
    if (v63)
    {
      v65 = sub_20C1335C4();
      if (v66)
      {
        v67 = v125;
        v68 = v125[3];
        v127 = v66;
        v128 = v65;
        __swift_project_boxed_opaque_existential_1(v125, v68);
        v126 = sub_20C138D34();
        v124 = v69;
        __swift_project_boxed_opaque_existential_1(v67, v67[3]);
        v70 = sub_20C138D34();
        v72 = v71;
        v73 = swift_allocObject();
        v74 = v127;
        *(v73 + 16) = v128;
        *(v73 + 24) = v74;
        v75 = v124;
        *(v73 + 32) = v126;
        *(v73 + 40) = v75;
        *(v73 + 48) = v70;
        *(v73 + 56) = v72;
        v76 = v122;
        v77 = sub_20C1335D4();
        v79 = v78;
        (*v53)(v76, v123);
        *(v73 + 64) = v77;
        *(v73 + 72) = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_20BC05D3C(0, *(v129 + 2) + 1, 1, v129);
        }

        v81 = *(v129 + 2);
        v80 = *(v129 + 3);
        if (v81 >= v80 >> 1)
        {
          v129 = sub_20BC05D3C((v80 > 1), v81 + 1, 1, v129);
        }

        v82 = v129;
        *(v129 + 2) = v81 + 1;
        *&v82[8 * v81 + 32] = v73 | 0x1000000000000002;
        goto LABEL_16;
      }
    }

    (*v53)(v55, v123);
  }

  while (1)
  {
    v56 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v56 >= v52)
    {
      break;
    }

    v51 = *(v48 + 8 * v56);
    ++v54;
    if (v51)
    {
      v54 = v56;
      goto LABEL_23;
    }
  }

  sub_20B8D921C(v129);
  v135 = 0uLL;
  LOBYTE(v136) = 1;
  *(&v136 + 1) = *v134;
  DWORD1(v136) = *&v134[3];
  *(&v136 + 1) = 0;
  *&v137 = 0;
  WORD4(v137) = 128;
  *(&v137 + 10) = *&v132[7];
  HIWORD(v137) = v133;
  LOBYTE(v141) = 0;
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  *(&v141 + 1) = *v132;
  DWORD1(v141) = *&v132[3];
  *(&v141 + 1) = v156;
  v142 = MEMORY[0x277D84F90];
  *&v143 = 0;
  *(&v143 + 1) = v115;
  *v144 = v114;
  *&v144[8] = xmmword_20C150190;
  nullsub_1();
  v83 = v120;
  v84 = v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row;
  v85 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 144);
  v153 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 128);
  v154 = v85;
  v155 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 160);
  v86 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 80);
  v149 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 64);
  v150 = v86;
  v87 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 112);
  v151 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 96);
  v152 = v87;
  v88 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 16);
  v145 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row);
  v146 = v88;
  v89 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 48);
  v147 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 32);
  v148 = v89;
  v90 = v142;
  v91 = *v144;
  *(v84 + 128) = v143;
  *(v84 + 144) = v91;
  *(v84 + 160) = *&v144[16];
  v92 = v140;
  *(v84 + 64) = v139;
  *(v84 + 80) = v92;
  *(v84 + 96) = v141;
  *(v84 + 112) = v90;
  v93 = v136;
  *v84 = v135;
  *(v84 + 16) = v93;
  v94 = v138;
  *(v84 + 32) = v137;
  *(v84 + 48) = v94;
  sub_20B634408(&v145);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v96 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    goto LABEL_36;
  }

  sub_20B61D978(v83, Strong);
  if (!v98)
  {
    sub_20C0C2D50(0);
    goto LABEL_36;
  }

  v100 = v97;
  v101 = v98;
  v102 = v99;
  sub_20B5E2E18();
  v103 = sub_20C13D374();
  v105 = v109;
  v104 = v110;
  *v109 = v103;
  v106 = v111;
  (*(v104 + 104))(v105, *MEMORY[0x277D85200], v111);
  v107 = sub_20C13C584();
  (*(v104 + 8))(v105, v106);
  if (v107)
  {
    sub_20B620E04(v100, v101, v102, v120, 1, v96);

LABEL_36:
    swift_unknownObjectRelease();
    return;
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_20BF6D298(uint64_t a1)
{
  v3 = sub_20C134734();
  v121 = *(v3 - 8);
  v122 = v3;
  MEMORY[0x28223BE20](v3);
  v120 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C1333E4();
  v6 = *(v5 - 8);
  v132 = v5;
  v133 = v6;
  MEMORY[0x28223BE20](v5);
  v131 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_20C138094();
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = (&v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v130 = &v109 - v10;
  MEMORY[0x28223BE20](v11);
  v128 = &v109 - v12;
  MEMORY[0x28223BE20](v13);
  v129 = (&v109 - v14);
  v15 = sub_20C133A74();
  v16 = *(v15 - 8);
  v126 = v15;
  v127 = v16;
  MEMORY[0x28223BE20](v15);
  v125 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C1344C4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v114 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v111 = &v109 - v22;
  MEMORY[0x28223BE20](v23);
  v110 = &v109 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v109 - v26;
  v124 = v1;
  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_mediaTagStringBuilder + 24);
  v117 = (v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_mediaTagStringBuilder), v28);
  sub_20C135AD4();
  v29 = sub_20C138544();
  v30 = v19;

  v31 = [v29 string];

  v32 = sub_20C13C954();
  v34 = v33;

  sub_20C135AA4();
  v35 = sub_20C1344B4();
  v37 = v36;
  LOBYTE(v29) = v38;
  v39 = *(v30 + 8);
  v113 = v27;
  v39(v27, v18);
  v123 = a1;
  v119 = v32;
  v118 = v34;
  v116 = v18;
  v115 = v30 + 8;
  v112 = v39;
  if (v29)
  {
    v109 = v37;
    if (v35 == 2)
    {
      v40 = v110;
      sub_20C135AA4();
      v41 = sub_20C134424();
      v39(v40, v18);
      v42 = *(v41 + 16);
      if (v42)
      {
        v131 = v41;
        v132 = v35;
        v43 = v126;
        v135 = *(v127 + 16);
        v44 = v41 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
        v133 = *(v127 + 72);
        v127 += 16;
        v45 = (v127 - 8);
        v46 = MEMORY[0x277D84F90];
        v47 = v125;
        do
        {
          (v135)(v47, v44, v43);
          *v129 = 1;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_20BC060E4(0, v46[2] + 1, 1, v46);
          }

          v49 = v46[2];
          v48 = v46[3];
          v47 = v125;
          if (v49 >= v48 >> 1)
          {
            v46 = sub_20BC060E4((v48 > 1), v49 + 1, 1, v46);
          }

          v46[2] = v49 + 1;
          v50 = (*(v134 + 80) + 32) & ~*(v134 + 80);
          v51 = *(v134 + 72);
          sub_20BC9EFAC(v129, v46 + v50 + v51 * v49);
          v52 = sub_20C133A54();
          v53 = v128;
          *v128 = v52;
          *(v53 + 8) = v54;
          swift_storeEnumTagMultiPayload();
          v56 = v46[2];
          v55 = v46[3];
          if (v56 >= v55 >> 1)
          {
            v46 = sub_20BC060E4((v55 > 1), v56 + 1, 1, v46);
          }

          v43 = v126;
          (*v45)(v47, v126);
          v46[2] = v56 + 1;
          sub_20BC9EFAC(v128, v46 + v50 + v56 * v51);
          v44 += v133;
          --v42;
        }

        while (v42);

        sub_20B583F4C(v132, v109, 1);
        goto LABEL_25;
      }

LABEL_24:

      v46 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }
  }

  else
  {
    sub_20B583F4C(v35, v37, 0);
  }

  v57 = v111;
  sub_20C135AA4();
  v58 = sub_20C134354();
  v39(v57, v18);
  v59 = *(v58 + 16);
  if (!v59)
  {
    goto LABEL_24;
  }

  v60 = *(v133 + 16);
  v61 = *(v133 + 80);
  v127 = v58;
  v62 = v58 + ((v61 + 32) & ~v61);
  v128 = *(v133 + 72);
  v129 = v60;
  v133 += 16;
  v63 = (v133 - 8);
  v46 = MEMORY[0x277D84F90];
  v64 = v131;
  v65 = v132;
  do
  {
    v129(v64, v62, v65);
    v66 = v130;
    *v130 = 1;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_20BC060E4(0, v46[2] + 1, 1, v46);
    }

    v68 = v46[2];
    v67 = v46[3];
    v69 = v131;
    if (v68 >= v67 >> 1)
    {
      v46 = sub_20BC060E4((v67 > 1), v68 + 1, 1, v46);
    }

    v46[2] = v68 + 1;
    v70 = (*(v134 + 80) + 32) & ~*(v134 + 80);
    v71 = *(v134 + 72);
    sub_20BC9EFAC(v66, v46 + v70 + v71 * v68);
    v72 = sub_20C1333D4();
    v73 = v135;
    *v135 = v72;
    v73[1] = v74;
    swift_storeEnumTagMultiPayload();
    v76 = v46[2];
    v75 = v46[3];
    if (v76 >= v75 >> 1)
    {
      v46 = sub_20BC060E4((v75 > 1), v76 + 1, 1, v46);
    }

    v77 = v69;
    v64 = v69;
    v65 = v132;
    (*v63)(v77, v132);
    v46[2] = v76 + 1;
    sub_20BC9EFAC(v135, v46 + v70 + v76 * v71);
    v62 += v128;
    --v59;
  }

  while (v59);

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
  v78 = *(v134 + 72);
  v79 = (*(v134 + 80) + 32) & ~*(v134 + 80);
  v134 = 2 * v78;
  v80 = swift_allocObject();
  v135 = v80;
  *(v80 + 1) = xmmword_20C1517D0;
  v81 = &v80[v79];
  v82 = v113;
  sub_20C135AA4();
  v83 = v120;
  sub_20C134484();
  v84 = v116;
  v85 = v112;
  v112(v82, v116);
  v86 = sub_20C134704();
  v88 = v87;
  (*(v121 + 8))(v83, v122);
  *v81 = v86;
  v81[1] = v88;
  swift_storeEnumTagMultiPayload();
  *(v81 + v78) = 1;
  swift_storeEnumTagMultiPayload();
  v89 = v114;
  sub_20C135AA4();
  sub_20C134464();
  v91 = v90;
  v85(v89, v84);
  *(v81 + v134) = v91;
  swift_storeEnumTagMultiPayload();
  v92 = v117;
  __swift_project_boxed_opaque_existential_1(v117, v117[3]);
  sub_20C1359E4();
  v93 = sub_20C138544();

  v94 = [v93 string];

  v95 = sub_20C13C954();
  v97 = v96;

  __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  v137 = v135;
  sub_20B8D9328(v46);
  v98 = sub_20C138544();

  v99 = [v98 string];

  v100 = sub_20C13C954();
  v102 = v101;

  __swift_project_boxed_opaque_existential_1((v124 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer), *(v124 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer + 24));
  v103 = sub_20C138D34();
  v105 = v104;
  v106 = swift_allocObject();
  *(v106 + 16) = v95;
  *(v106 + 24) = v97;
  *(v106 + 32) = v103;
  *(v106 + 40) = v105;
  *(v106 + 48) = v100;
  *(v106 + 56) = v102;
  result = v106 | 0x1000000000000002;
  v108 = v118;
  *(v106 + 64) = v119;
  *(v106 + 72) = v108;
  return result;
}

void sub_20BF6DDF8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20C13C554();
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = (&v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_20C1335F4();
  v5 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134314();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer + 24);
  v81 = v12;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v14 = sub_20C138D34();
  v85 = v15;
  v86 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20C14F980;
  v87 = v2;
  *(v16 + 32) = sub_20BF6E56C();
  v118 = v16;
  sub_20C135954();
  v17 = sub_20C1342B4();
  (*(v9 + 8))(v11, v8);
  v18 = v17 + 56;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  v90 = v5 + 16;
  v91 = v5;
  v89 = (v5 + 8);
  v92 = v17;

  v23 = 0;
  for (i = MEMORY[0x277D84F90]; v21; *&v52[8 * v51 + 32] = v46 | 0x1000000000000002)
  {
LABEL_10:
    while (1)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v91 + 16))(v7, *(v92 + 48) + *(v91 + 72) * (v25 | (v23 << 6)), v93);
      v26 = sub_20C1335E4();
      v28 = v27;
      *&v107 = v26;
      *(&v107 + 1) = v27;
      v30 = v29 & 1;
      LOBYTE(v108) = v29 & 1;
      LOBYTE(v97) = 1;
      sub_20BE0D244();
      sub_20BE0D298();
      v31 = sub_20C133C04();
      sub_20B583F4C(v26, v28, v30);
      if (v31)
      {
        v32 = sub_20C1335C4();
        if (v33)
        {
          break;
        }
      }

      (*v89)(v7, v93);
      if (!v21)
      {
        goto LABEL_6;
      }
    }

    v34 = v32;
    v35 = v33;
    v36 = v81;
    v37 = v81[3];
    v80 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v37);
    v38 = sub_20C138D34();
    v79 = v39;
    v80 = v38;
    v40 = v36[3];
    v78 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v40);
    v41 = sub_20C138D34();
    v43 = v42;
    v44 = swift_allocObject();
    v44[2] = v34;
    v44[3] = v35;
    v45 = v79;
    v44[4] = v80;
    v44[5] = v45;
    v44[6] = v41;
    v44[7] = v43;
    v46 = v44;
    v47 = sub_20C1335D4();
    v49 = v48;
    (*v89)(v7, v93);
    *(v46 + 64) = v47;
    *(v46 + 72) = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_20BC05D3C(0, *(i + 2) + 1, 1, i);
    }

    v51 = *(i + 2);
    v50 = *(i + 3);
    if (v51 >= v50 >> 1)
    {
      i = sub_20BC05D3C((v50 > 1), v51 + 1, 1, i);
    }

    v52 = i;
    *(i + 2) = v51 + 1;
  }

  while (1)
  {
LABEL_6:
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  sub_20B8D921C(i);
  v97 = 0uLL;
  LOBYTE(v98) = 1;
  *(&v98 + 1) = *v96;
  DWORD1(v98) = *&v96[3];
  *(&v98 + 1) = 0;
  *&v99 = 0;
  WORD4(v99) = 128;
  *(&v99 + 10) = *&v94[7];
  HIWORD(v99) = v95;
  LOBYTE(v103) = 0;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  *(&v103 + 1) = *v94;
  DWORD1(v103) = *&v94[3];
  *(&v103 + 1) = v118;
  v104 = MEMORY[0x277D84F90];
  *&v105 = 0;
  *(&v105 + 1) = v86;
  *v106 = v85;
  *&v106[8] = xmmword_20C150190;
  nullsub_1();
  v53 = v87;
  v54 = v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row;
  v55 = *(v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 144);
  v115 = *(v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 128);
  v116 = v55;
  v117 = *(v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 160);
  v56 = *(v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 80);
  v111 = *(v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 64);
  v112 = v56;
  v57 = *(v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 112);
  v113 = *(v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 96);
  v114 = v57;
  v58 = *(v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 16);
  v107 = *(v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row);
  v108 = v58;
  v59 = *(v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 48);
  v109 = *(v87 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 32);
  v110 = v59;
  v60 = v104;
  v61 = *v106;
  *(v54 + 128) = v105;
  *(v54 + 144) = v61;
  *(v54 + 160) = *&v106[16];
  v62 = v102;
  *(v54 + 64) = v101;
  *(v54 + 80) = v62;
  *(v54 + 96) = v103;
  *(v54 + 112) = v60;
  v63 = v98;
  *v54 = v97;
  *(v54 + 16) = v63;
  v64 = v100;
  *(v54 + 32) = v99;
  *(v54 + 48) = v64;
  sub_20B634408(&v107);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v66 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    goto LABEL_24;
  }

  sub_20B61D978(v53, Strong);
  if (!v68)
  {
    sub_20C0C2D50(0);
    goto LABEL_24;
  }

  v70 = v67;
  v71 = v68;
  v72 = v69;
  sub_20B5E2E18();
  v73 = sub_20C13D374();
  v75 = v82;
  v74 = v83;
  *v82 = v73;
  v76 = v84;
  (*(v74 + 104))(v75, *MEMORY[0x277D85200], v84);
  v77 = sub_20C13C584();
  (*(v74 + 8))(v75, v76);
  if (v77)
  {
    sub_20B620E04(v70, v71, v72, v53, 1, v66);

LABEL_24:
    swift_unknownObjectRelease();
    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_20BF6E56C()
{
  v1 = v0;
  v27 = sub_20C134314();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_mediaTagStringBuilder), *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_mediaTagStringBuilder + 24));
  sub_20C135964();
  v6 = sub_20C138544();

  v7 = [v6 string];

  v8 = sub_20C13C954();
  v25 = v9;
  v26 = v8;

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_20C135924();
  v10 = sub_20C138544();

  v11 = [v10 string];

  v12 = sub_20C13C954();
  v14 = v13;

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer + 24));
  v15 = sub_20C138D34();
  v17 = v16;
  v18 = swift_allocObject();
  sub_20C135954();
  v19 = sub_20C1342F4();
  v21 = v20;
  (*(v2 + 8))(v4, v27);
  *(v18 + 16) = v19;
  *(v18 + 24) = v21;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v12;
  *(v18 + 56) = v14;
  result = v18 | 0x1000000000000002;
  v23 = v25;
  *(v18 + 64) = v26;
  *(v18 + 72) = v23;
  return result;
}

uint64_t sub_20BF6E7D4()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer));
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVCatalogSummaryShelf(uint64_t a1)
{
  result = qword_27C770DD8;
  if (!qword_27C770DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BF6E92C(uint64_t a1)
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

uint64_t sub_20BF6E9DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BF6EA54@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 32);
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

void sub_20BF6EB04(unint64_t a1)
{
  v3 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v40[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0xA)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v10 = *(v6 + 64);
    v9 = *(v6 + 72);
    v11 = sub_20C136664();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = v3[5];
    v13 = *MEMORY[0x277D513E8];
    v14 = sub_20C134F24();
    (*(*(v14 - 8) + 104))(&v5[v12], v13, v14);
    v15 = v3[6];
    v16 = sub_20C132C14();
    (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
    v17 = v3[8];
    v18 = sub_20C135ED4();
    (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
    v19 = v3[10];
    v20 = *MEMORY[0x277D51768];
    v21 = sub_20C1352E4();
    (*(*(v21 - 8) + 104))(&v5[v19], v20, v21);
    v22 = v3[11];
    v23 = sub_20C136E94();
    (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);

    v24 = MEMORY[0x277D84F90];
    v25 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    *&v5[v3[7]] = xmmword_20C16AC20;
    v26 = &v5[v3[9]];
    *v26 = 0;
    *(v26 + 1) = 0;
    *&v5[v3[12]] = v25;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BFA011C(v1, v5, Strong);
      swift_unknownObjectRelease();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
    v28 = (type metadata accessor for PageAlertAction(0) - 8);
    v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_20C14F980;
    v31 = v30 + v29;
    sub_20C132ED4();
    v32 = (v31 + v28[8]);
    *v32 = 0;
    v32[1] = 0;
    *(v31 + v28[7]) = 2;
    v33 = (v31 + v28[9]);
    *v33 = 0;
    v33[1] = 0;
    v40[0] = v30;
    v40[1] = v24;
    v40[2] = v10;
    v40[3] = v9;
    v40[4] = v8;
    v40[5] = v7;
    v41 = 1;
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = v34;
      v36 = v34 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v37 = *(v36 + 8);
        ObjectType = swift_getObjectType();
        (*(v37 + 232))(v35, v40, ObjectType, v37);
        sub_20B76328C(v40);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_20B76328C(v40);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_20B76328C(v40);
    }

    sub_20B68D110(v5);
  }
}

char *sub_20BF6EF34(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v209 = objc_opt_self();
  v9 = [v209 bundleForClass_];
  sub_20C132964();

  v10 = sub_20C13C914();
  [v8 setText_];

  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  [v8 setTextColor_];

  v13 = *MEMORY[0x277D76A20];
  v14 = *MEMORY[0x277D74368];
  v205 = objc_opt_self();
  v15 = [v205 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
  v16 = [v15 fontDescriptorWithSymbolicTraits_];
  if (v16)
  {
    v17 = v16;

    v15 = v17;
  }

  v18 = [v15 fontDescriptorWithDesign_];
  if (v18)
  {
    v19 = v18;

    v15 = v19;
  }

  v20 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_titleLabel;
  v21 = objc_opt_self();
  v22 = [v21 fontWithDescriptor:v15 size:0.0];

  [v8 setFont_];
  [v8 setNumberOfLines_];
  LODWORD(v23) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v24];
  v25 = sub_20C13C914();
  [v8 setAccessibilityIdentifier_];

  *&v212[v20] = v8;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAdjustsFontForContentSizeCategory_];
  v27 = [v11 secondaryLabelColor];
  [v26 setTextColor_];

  v28 = [v205 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v29 = [v28 fontDescriptorWithSymbolicTraits_];
  if (v29)
  {
    v30 = v29;

    v28 = v30;
  }

  v31 = [v28 fontDescriptorWithDesign_];
  v203 = v11;
  if (v31)
  {
    v32 = v31;

    v28 = v32;
  }

  v33 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_subtitleLabel;
  v34 = [v21 fontWithDescriptor:v28 size:0.0];

  [v26 setFont_];
  [v26 setNumberOfLines_];
  LODWORD(v35) = 1148846080;
  [v26 setContentCompressionResistancePriority:0 forAxis:v35];
  LODWORD(v36) = 1148846080;
  [v26 setContentCompressionResistancePriority:1 forAxis:v36];

  *&v212[v33] = v26;
  v37 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  [v37 setAdjustsFontForContentSizeCategory_];
  v38 = [v209 bundleForClass_];
  sub_20C132964();

  v39 = sub_20C13C914();
  [v37 setText_];

  v40 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:dbl_20C16A500[sub_20C1380F4() == 3] alpha:1.0];
  [v37 setTextColor_];

  v41 = [v205 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:0];
  v42 = [v41 fontDescriptorWithSymbolicTraits_];
  if (v42)
  {
    v43 = v42;

    v41 = v43;
  }

  v44 = [v41 fontDescriptorWithDesign_];
  if (v44)
  {
    v45 = v44;

    v41 = v45;
  }

  v46 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeTitleLabel;
  v47 = [v21 fontWithDescriptor:v41 size:0.0];

  [v37 setFont_];
  [v37 setNumberOfLines_];
  [v37 setLineBreakMode_];
  LODWORD(v48) = 1148846080;
  [v37 setContentCompressionResistancePriority:0 forAxis:v48];
  LODWORD(v49) = 1148846080;
  [v37 setContentCompressionResistancePriority:1 forAxis:v49];

  *&v212[v46] = v37;
  v50 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeDetailLabel;
  v51 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  [v51 setAdjustsFontForContentSizeCategory_];
  LODWORD(v52) = 1148846080;
  [v51 setContentCompressionResistancePriority:0 forAxis:v52];
  LODWORD(v53) = 1148846080;
  [v51 setContentCompressionResistancePriority:1 forAxis:v53];

  *&v212[v50] = v51;
  v54 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v54 &selRef_count + 2];
  [v54 setAdjustsFontForContentSizeCategory_];
  LODWORD(v50) = sub_20C1380F4();
  v55 = objc_allocWithZone(MEMORY[0x277D75348]);
  v56 = 0.921568627;
  if (v50 == 3)
  {
    v57 = 0.607843137;
  }

  else
  {
    v57 = 0.921568627;
  }

  v58 = [v55 initWithWhite:v57 alpha:1.0];
  v59 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyTitleLabel;
  [v54 setTextColor_];

  [v54 setNumberOfLines_];
  [v54 setLineBreakMode_];
  LODWORD(v60) = 1148846080;
  [v54 setContentCompressionResistancePriority:0 forAxis:v60];
  LODWORD(v61) = 1148846080;
  [v54 setContentCompressionResistancePriority:1 forAxis:v61];

  *&v212[v59] = v54;
  v62 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyDetailLabel;
  v63 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v63 &selRef_count + 2];
  [v63 setAdjustsFontForContentSizeCategory_];
  LODWORD(v64) = 1148846080;
  [v63 setContentCompressionResistancePriority:0 forAxis:v64];
  LODWORD(v65) = 1148846080;
  [v63 setContentCompressionResistancePriority:1 forAxis:v65];

  *&v212[v62] = v63;
  v66 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v66 &selRef_count + 2];
  [v66 setAdjustsFontForContentSizeCategory_];
  v67 = [v209 bundleForClass_];
  sub_20C132964();

  v68 = sub_20C13C914();
  [v66 setText_];

  if (sub_20C1380F4() == 3)
  {
    v56 = 0.607843137;
  }

  v69 = [objc_allocWithZone(MEMORY[0x277D75348]) &selRef:v56 setLocations:1.0];
  v70 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalDistanceTitleLabel;
  [v66 setTextColor_];

  [v66 setNumberOfLines_];
  [v66 setLineBreakMode_];
  LODWORD(v71) = 1148846080;
  [v66 setContentCompressionResistancePriority:0 forAxis:v71];
  LODWORD(v72) = 1148846080;
  [v66 setContentCompressionResistancePriority:1 forAxis:v72];

  *&v212[v70] = v66;
  v73 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalDistanceDetailLabel;
  v74 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v74 setTranslatesAutoresizingMaskIntoConstraints_];
  [v74 setAdjustsFontForContentSizeCategory_];
  LODWORD(v75) = 1148846080;
  [v74 setContentCompressionResistancePriority:0 forAxis:v75];
  LODWORD(v76) = 1148846080;
  [v74 setContentCompressionResistancePriority:1 forAxis:v76];

  *&v212[v73] = v74;
  v77 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_doneButton;
  v78 = type metadata accessor for SummaryPlatterButtonView();
  v79 = [objc_allocWithZone(v78) initWithFrame_];
  [v79 setTranslatesAutoresizingMaskIntoConstraints_];
  v80 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v79 setBackgroundColor_];

  v81 = [v209 bundleForClass_];
  sub_20C132964();

  v82 = [v11 blackColor];
  v83 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v84 = *&v79[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v85 = sub_20C13C914();

  [v84 setText_];

  [*&v79[v83] setTextColor_];
  [v79 setNeedsLayout];

  v86 = sub_20C13C914();
  [v79 setAccessibilityIdentifier_];

  *&v212[v77] = v79;
  v87 = [objc_allocWithZone(v78) initWithFrame_];
  [v87 setTranslatesAutoresizingMaskIntoConstraints_];
  if (sub_20C1380F4() == 3)
  {
    v88 = [v11 tertiarySystemFillColor];
  }

  else
  {
    v89 = [v11 tertiarySystemBackgroundColor];
    v90 = [objc_opt_self() currentTraitCollection];
    v91 = sub_20C13D3B4();
    v88 = [v89 resolvedColorWithTraitCollection_];
  }

  v92 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_saveButton;
  [v87 setBackgroundColor_];

  v93 = [v209 bundleForClass_];
  sub_20C132964();

  v94 = [v203 whiteColor];
  v95 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v96 = *&v87[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v97 = sub_20C13C914();

  [v96 setText_];

  [*&v87[v95] setTextColor_];
  [v87 setNeedsLayout];

  v98 = sub_20C13C914();
  [v87 setAccessibilityIdentifier_];

  *&v212[v92] = v87;
  v99 = &v212[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onDoneButtonTapped];
  *v99 = 0;
  *(v99 + 1) = 0;
  v100 = &v212[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onSaveButtonTapped];
  v101 = type metadata accessor for SummaryQueueCompleteView();
  *v100 = 0;
  *(v100 + 1) = 0;
  v214.receiver = v212;
  v214.super_class = v101;
  v102 = objc_msgSendSuper2(&v214, sel_initWithFrame_, a1, a2, a3, a4);
  v103 = [v203 secondarySystemBackgroundColor];
  v104 = [objc_opt_self() currentTraitCollection];
  v105 = sub_20C13D3B4();
  v106 = [v103 resolvedColorWithTraitCollection_];

  [v102 setBackgroundColor_];
  v107 = v102;
  v108 = [v107 layer];
  [v108 setCornerRadius_];

  v109 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeTitleLabel;
  v200 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeTitleLabel;
  [*(v107 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeTitleLabel) setHidden_];
  v204 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeDetailLabel;
  [*(v107 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeDetailLabel) setHidden_];
  v206 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyTitleLabel;
  [*(v107 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyTitleLabel) setHidden_];
  v110 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyDetailLabel;
  v201 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyDetailLabel;
  [*(v107 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyDetailLabel) setHidden_];
  v210 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalDistanceTitleLabel;
  [*(v107 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalDistanceTitleLabel) setHidden_];
  v198 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalDistanceDetailLabel;
  [*(v107 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalDistanceDetailLabel) setHidden_];
  v202 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_doneButton;
  v111 = *(v107 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_doneButton);
  v112 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v113 = &v111[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v114 = *&v111[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v115 = *&v111[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped + 8];
  *v113 = sub_20BF71FF0;
  v113[1] = v112;
  v116 = v111;

  sub_20B583ECC(v114, v115);

  v208 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_saveButton;
  v117 = *(v107 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_saveButton);
  v118 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v119 = v117;

  v120 = &v119[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v121 = *&v119[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v122 = *&v119[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped + 8];
  *v120 = sub_20BF72014;
  v120[1] = v118;

  sub_20B583ECC(v121, v122);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_20C14F580;
  v124 = *(v107 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_titleLabel);
  *(v123 + 32) = v124;
  v125 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v126 = v124;
  v127 = sub_20C13CC54();

  v128 = [v125 initWithArrangedSubviews_];

  v129 = v128;
  [v129 setTranslatesAutoresizingMaskIntoConstraints_];
  [v129 setAxis_];
  [v129 setAlignment_];
  v213 = v129;
  [v129 setDistribution_];
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_20C151DF0;
  *(v130 + 32) = v129;
  v199 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_subtitleLabel;
  v131 = *(v107 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_subtitleLabel);
  *(v130 + 40) = v131;
  v132 = *(v107 + v109);
  *(v130 + 48) = v132;
  v133 = *&v204[v107];
  *(v130 + 56) = v133;
  v134 = *&v206[v107];
  *(v130 + 64) = v134;
  v135 = *(v107 + v110);
  *(v130 + 72) = v135;
  v136 = *&v210[v107];
  *(v130 + 80) = v136;
  v137 = *(v107 + v198);
  *(v130 + 88) = v137;
  v138 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v139 = v131;
  v140 = v132;
  v141 = v133;
  v142 = v134;
  v143 = v135;
  v144 = v136;
  v145 = v137;
  v146 = sub_20C13CC54();

  v147 = [v138 initWithArrangedSubviews_];

  v148 = v147;
  [v148 setTranslatesAutoresizingMaskIntoConstraints_];
  [v148 setAxis_];
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_20C151490;
  v150 = *(v107 + v202);
  *(v149 + 32) = v150;
  v151 = *(v107 + v208);
  *(v149 + 40) = v151;
  v152 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v153 = v150;
  v154 = v151;
  v155 = sub_20C13CC54();

  v156 = [v152 initWithArrangedSubviews_];

  v157 = v156;
  [v157 setTranslatesAutoresizingMaskIntoConstraints_];
  [v157 setSpacing_];
  [v157 setAxis_];
  v158 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v158 setTranslatesAutoresizingMaskIntoConstraints_];
  [v158 setShowsVerticalScrollIndicator_];
  [v158 addSubview_];
  [v107 addSubview_];
  [v107 addSubview_];
  [v148 setCustomSpacing:v213 afterView:0.0];
  [v148 setCustomSpacing:*(v107 + v199) afterView:10.0];
  [v148 setCustomSpacing:*(v107 + v200) afterView:-4.0];
  [v148 setCustomSpacing:*&v204[v107] afterView:6.0];
  [v148 setCustomSpacing:*&v206[v107] afterView:-4.0];
  [v148 setCustomSpacing:*(v107 + v201) afterView:6.0];
  [v148 setCustomSpacing:*&v210[v107] afterView:-4.0];
  v211 = objc_opt_self();
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_20C165CF0;
  v160 = [*(v107 + v202) widthAnchor];
  v161 = [v160 constraintEqualToConstant_];

  *(v159 + 32) = v161;
  v162 = [*(v107 + v208) &selRef_traitCollection + 6];
  v163 = [v162 &selRef_visibleCells + 1];

  *(v159 + 40) = v163;
  v164 = [v158 topAnchor];
  v165 = [v107 topAnchor];
  v166 = [v164 constraintEqualToAnchor:v165 constant:20.0];

  *(v159 + 48) = v166;
  v167 = [v158 leadingAnchor];
  v168 = [v107 leadingAnchor];
  v169 = [v167 constraintEqualToAnchor:v168 constant:20.0];

  *(v159 + 56) = v169;
  v170 = [v158 trailingAnchor];
  v171 = [v107 trailingAnchor];
  v172 = [v170 constraintEqualToAnchor:v171 constant:-20.0];

  *(v159 + 64) = v172;
  v173 = [v158 bottomAnchor];
  v174 = [v157 topAnchor];
  v175 = [v173 constraintEqualToAnchor:v174 constant:-10.0];

  *(v159 + 72) = v175;
  v176 = [v148 topAnchor];
  v177 = [v158 topAnchor];
  v178 = [v176 constraintEqualToAnchor_];

  *(v159 + 80) = v178;
  v179 = [v148 leadingAnchor];
  v180 = [v158 leadingAnchor];
  v181 = [v179 constraintEqualToAnchor_];

  *(v159 + 88) = v181;
  v182 = [v148 widthAnchor];
  v183 = [v182 constraintEqualToConstant_];

  *(v159 + 96) = v183;
  v184 = [v148 bottomAnchor];

  v185 = [v158 bottomAnchor];
  v186 = [v184 constraintEqualToAnchor_];

  *(v159 + 104) = v186;
  v187 = [v157 leadingAnchor];
  v188 = [v158 leadingAnchor];
  v189 = [v187 constraintEqualToAnchor_];

  *(v159 + 112) = v189;
  v190 = [v157 trailingAnchor];
  v191 = [v158 trailingAnchor];

  v192 = [v190 constraintEqualToAnchor_];
  *(v159 + 120) = v192;
  v193 = [v157 bottomAnchor];

  v194 = [v107 bottomAnchor];
  v195 = [v193 constraintEqualToAnchor:v194 constant:-20.0];

  *(v159 + 128) = v195;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v196 = sub_20C13CC54();

  [v211 activateConstraints_];

  return v107;
}

void sub_20BF70B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_subtitleLabel);
  v4 = sub_20C13C914();
  [v3 setText_];
}

void sub_20BF70BF8(uint64_t a1, uint64_t a2)
{
  [*&v2[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyTitleLabel] setAttributedText_];
  [*&v2[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyDetailLabel] setAttributedText_];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v8[4] = sub_20BF70F74;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20B7B548C;
  v8[3] = &block_descriptor_160;
  v6 = _Block_copy(v8);
  v7 = v2;

  [v4 animateWithDuration:v6 animations:0.1];
  _Block_release(v6);
}

id sub_20BF70D30(uint64_t a1, void *a2, void *a3)
{
  [*(a1 + *a2) setHidden_];
  v5 = *(a1 + *a3);

  return [v5 setHidden_];
}

void sub_20BF70D94(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_saveButton);

    [v3 setHidden_];
  }
}

id sub_20BF70E28(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummaryQueueCompleteView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20BF70F74()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyTitleLabel) setHidden_];
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyDetailLabel);

  return [v2 setHidden_];
}

void sub_20BF70FD4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v96 = objc_opt_self();
  v97 = ObjCClassFromMetadata;
  v2 = [v96 bundleForClass_];
  sub_20C132964();

  v3 = sub_20C13C914();
  [v0 setText_];

  v94 = objc_opt_self();
  v4 = [v94 whiteColor];
  [v0 setTextColor_];

  v5 = *MEMORY[0x277D76A20];
  v6 = *MEMORY[0x277D74368];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:0];
  v9 = [v8 fontDescriptorWithSymbolicTraits_];
  if (v9)
  {
    v10 = v9;

    v8 = v10;
  }

  v11 = [v8 fontDescriptorWithDesign_];
  if (v11)
  {
    v12 = v11;

    v8 = v12;
  }

  v13 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_titleLabel;
  v14 = objc_opt_self();
  v15 = [v14 fontWithDescriptor:v8 size:0.0];

  [v0 setFont_];
  [v0 setNumberOfLines_];
  LODWORD(v16) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v17];
  v18 = sub_20C13C914();
  [v0 setAccessibilityIdentifier_];

  *(v95 + v13) = v0;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  v20 = [v94 secondaryLabelColor];
  [v19 setTextColor_];

  v21 = [v7 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v22 = [v21 fontDescriptorWithSymbolicTraits_];
  if (v22)
  {
    v23 = v22;

    v21 = v23;
  }

  v24 = [v21 fontDescriptorWithDesign_];
  if (v24)
  {
    v25 = v24;

    v21 = v25;
  }

  v26 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_subtitleLabel;
  v27 = [v14 fontWithDescriptor:v21 size:0.0];

  [v19 setFont_];
  [v19 setNumberOfLines_];
  LODWORD(v28) = 1148846080;
  [v19 setContentCompressionResistancePriority:0 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v29];

  *(v95 + v26) = v19;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  [v30 setAdjustsFontForContentSizeCategory_];
  v31 = [v96 bundleForClass_];
  sub_20C132964();

  v32 = sub_20C13C914();
  [v30 setText_];

  v33 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:dbl_20C16A500[sub_20C1380F4() == 3] alpha:1.0];
  [v30 setTextColor_];

  v34 = [v7 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:0];
  v35 = [v34 fontDescriptorWithSymbolicTraits_];
  if (v35)
  {
    v36 = v35;

    v34 = v36;
  }

  v37 = [v34 fontDescriptorWithDesign_];
  if (v37)
  {
    v38 = v37;

    v34 = v38;
  }

  v39 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeTitleLabel;
  v40 = [v14 fontWithDescriptor:v34 size:0.0];

  [v30 setFont_];
  [v30 setNumberOfLines_];
  [v30 setLineBreakMode_];
  LODWORD(v41) = 1148846080;
  [v30 setContentCompressionResistancePriority:0 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [v30 setContentCompressionResistancePriority:1 forAxis:v42];

  *(v95 + v39) = v30;
  v43 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeDetailLabel;
  v44 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v44 setTranslatesAutoresizingMaskIntoConstraints_];
  [v44 setAdjustsFontForContentSizeCategory_];
  LODWORD(v45) = 1148846080;
  [v44 setContentCompressionResistancePriority:0 forAxis:v45];
  LODWORD(v46) = 1148846080;
  [v44 setContentCompressionResistancePriority:1 forAxis:v46];

  *(v95 + v43) = v44;
  v47 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v47 &selRef_count + 2];
  [v47 setAdjustsFontForContentSizeCategory_];
  LODWORD(v43) = sub_20C1380F4();
  v48 = objc_allocWithZone(MEMORY[0x277D75348]);
  v49 = 0.921568627;
  if (v43 == 3)
  {
    v50 = 0.607843137;
  }

  else
  {
    v50 = 0.921568627;
  }

  v51 = [v48 initWithWhite:v50 alpha:1.0];
  v52 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyTitleLabel;
  [v47 setTextColor_];

  [v47 setNumberOfLines_];
  [v47 &selRef:4 :? animateUsingSpringWithDuration:? delay:? options:? mass:? stiffness:? damping:? initialVelocity:? animations:? completion:?];
  LODWORD(v53) = 1148846080;
  [v47 setContentCompressionResistancePriority:0 forAxis:v53];
  LODWORD(v54) = 1148846080;
  [v47 setContentCompressionResistancePriority:1 forAxis:v54];

  *(v95 + v52) = v47;
  v55 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalEnergyDetailLabel;
  v56 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v56 &selRef_count + 2];
  [v56 setAdjustsFontForContentSizeCategory_];
  LODWORD(v57) = 1148846080;
  [v56 setContentCompressionResistancePriority:0 forAxis:v57];
  LODWORD(v58) = 1148846080;
  [v56 setContentCompressionResistancePriority:1 forAxis:v58];

  *(v95 + v55) = v56;
  v59 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v59 &selRef_count + 2];
  [v59 setAdjustsFontForContentSizeCategory_];
  v60 = [v96 bundleForClass_];
  sub_20C132964();

  v61 = sub_20C13C914();
  [v59 setText_];

  if (sub_20C1380F4() == 3)
  {
    v49 = 0.607843137;
  }

  v62 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v49 alpha:1.0];
  v63 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalDistanceTitleLabel;
  [v59 setTextColor_];

  [v59 setNumberOfLines_];
  [v59 setLineBreakMode_];
  LODWORD(v64) = 1148846080;
  [v59 setContentCompressionResistancePriority:0 forAxis:v64];
  LODWORD(v65) = 1148846080;
  [v59 setContentCompressionResistancePriority:1 forAxis:v65];

  *(v95 + v63) = v59;
  v66 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalDistanceDetailLabel;
  v67 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v67 setTranslatesAutoresizingMaskIntoConstraints_];
  [v67 setAdjustsFontForContentSizeCategory_];
  LODWORD(v68) = 1148846080;
  [v67 setContentCompressionResistancePriority:0 forAxis:v68];
  LODWORD(v69) = 1148846080;
  [v67 setContentCompressionResistancePriority:1 forAxis:v69];

  *(v95 + v66) = v67;
  v93 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_doneButton;
  v70 = type metadata accessor for SummaryPlatterButtonView();
  v71 = [objc_allocWithZone(v70) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v71 setTranslatesAutoresizingMaskIntoConstraints_];
  v72 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v71 setBackgroundColor_];

  v73 = [v96 bundleForClass_];
  sub_20C132964();

  v74 = [v94 blackColor];
  v75 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v76 = *&v71[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v77 = sub_20C13C914();

  [v76 setText_];

  [*&v71[v75] setTextColor_];
  [v71 setNeedsLayout];

  v78 = sub_20C13C914();
  [v71 setAccessibilityIdentifier_];

  *(v95 + v93) = v71;
  v79 = [objc_allocWithZone(v70) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v79 setTranslatesAutoresizingMaskIntoConstraints_];
  if (sub_20C1380F4() == 3)
  {
    v80 = [v94 tertiarySystemFillColor];
  }

  else
  {
    v81 = [v94 tertiarySystemBackgroundColor];
    v82 = [objc_opt_self() currentTraitCollection];
    v83 = sub_20C13D3B4();
    v80 = [v81 resolvedColorWithTraitCollection_];
  }

  v84 = OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_saveButton;
  [v79 setBackgroundColor_];

  v85 = [v96 bundleForClass_];
  sub_20C132964();

  v86 = [v94 whiteColor];
  v87 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v88 = *&v79[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v89 = sub_20C13C914();

  [v88 setText_];

  [*&v79[v87] setTextColor_];
  [v79 setNeedsLayout];

  v90 = sub_20C13C914();
  [v79 setAccessibilityIdentifier_];

  *(v95 + v84) = v79;
  v91 = (v95 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onDoneButtonTapped);
  *v91 = 0;
  v91[1] = 0;
  v92 = (v95 + OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onSaveButtonTapped);
  *v92 = 0;
  v92[1] = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BF72038()
{
  v1 = sub_20C136484();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B76EA90(v0 + v11, v10);
  v12 = v2[6];
  if (v12(v10, 1, v1))
  {
    v13 = v10;
LABEL_3:
    sub_20B520158(v13, &unk_27C765CB0, &unk_20C1523C0);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v27 = v2[2];
  v28 = v0;
  v27(v4, v10, v1);
  sub_20B520158(v10, &unk_27C765CB0, &unk_20C1523C0);
  v14 = sub_20C136474();
  v16 = v15;
  v26 = v2[1];
  v26(v4, v1);
  v31 = v14;
  LOBYTE(v32) = v16 & 1;
  *&v29 = 1;
  BYTE8(v29) = 1;
  sub_20B64BC70();
  sub_20B64BCC4();
  if ((sub_20C133BF4() & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_20B76EA90(v28 + v11, v7);
  if (v12(v7, 1, v1))
  {
    v13 = v7;
    goto LABEL_3;
  }

  v27(v4, v7, v1);
  sub_20B520158(v7, &unk_27C765CB0, &unk_20C1523C0);
  v17 = sub_20C136464();
  v19 = v18;
  v21 = v20;
  v26(v4, v1);
  v31 = v17;
  v32 = v19;
  v33 = v21 & 1;
  v29 = xmmword_20C1522F0;
  v30 = 1;
  sub_20B64BBC8();
  sub_20B64BC1C();
  v22 = sub_20C133BF4();
  sub_20B583F4C(v31, v32, v33);
  if ((v22 & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = *(v28 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_hasPlaybackBegun) ^ 1;
  return v23 & 1;
}

uint64_t sub_20BF723A8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = *(v2 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v6 = (*(v4 + 24))(ObjectType, v4);
      swift_unknownObjectRelease();
      return *&v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_20BF7246C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_isAppBackgrounded) = 0;
  }

  return result;
}

double sub_20BF724C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_isAppBackgrounded) = 1;
  }

  return result;
}

double sub_20BF72520(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_20BF725B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = sub_20C138564();
    sub_20C138554();
    sub_20C13B574();
    sub_20C13BB64();
    (*(v3 + 8))(v5, v2);
    if (v7 == 2)
    {
      sub_20BF72A50();
    }

    else if (!v7)
    {
      sub_20BF728BC();
    }
  }

  return result;
}

uint64_t sub_20BF7271C(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C136484();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B2E4();
    sub_20BF73620(v5);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

double sub_20BF72828(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_20BF728BC()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    sub_20C13B574();
    sub_20C13BB64();
    (*(v3 + 8))(v6, v2);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v7 + 96))(0, 129, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v1 + 24);
      v10 = swift_getObjectType();
      (*(v9 + 48))(0, 1, v10, v9);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_20BF72A50()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    sub_20C13B574();
    sub_20C13BB64();
    (*(v3 + 8))(v6, v2);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v7 + 96))(0, 128, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v1 + 24);
      v10 = swift_getObjectType();
      (*(v9 + 48))(1, 1, v10, v9);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BF72BE4(uint64_t a1)
{
  v2 = sub_20C13C4B4();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13C4F4();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C132614();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v11 = sub_20C13D374();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  aBlock[4] = sub_20BF75858;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_101_0;
  v14 = _Block_copy(aBlock);

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v7, v4, v14);
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

void sub_20BF72F54(uint64_t a1, uint64_t a2)
{
  sub_20C1325F4();
  if (v7)
  {
    sub_20B51C88C(0, &qword_27C762500, 0x277CD5D38);
    if (swift_dynamicCast())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(a2 + 24);
        ObjectType = swift_getObjectType();
        (*(v3 + 72))(v5, ObjectType, v3);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    sub_20B520158(v6, &unk_27C768A00, &qword_20C152F90);
  }
}

void sub_20BF7312C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
  sub_20C137BC4();
  v11 = sub_20C13D5A4();
  if (v11)
  {
    v12 = v11;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v13 + 32))(v12, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v1 + 24);
    v16 = swift_getObjectType();
    v17 = (*(v15 + 24))(v16, v15);
    v19 = v18;
    swift_unknownObjectRelease();
    if (v17 != 0.0 && v19 != 0.0)
    {
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_artworkImageLoader), *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_artworkImageLoader + 24));
      sub_20C138B14();
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = sub_20BF7583C;
      *(v21 + 24) = v20;
      v22 = v30;
      (*(v30 + 16))(v4, v7, v2);
      v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v24 = swift_allocObject();
      (*(v22 + 32))(v24 + v23, v4, v2);
      v25 = (v24 + ((v3 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v25 = sub_20BAC2FC0;
      v25[1] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
      sub_20C137C94();
      (*(v22 + 8))(v7, v2);
      v26 = v32;
      v27 = sub_20C137CB4();
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      v27(sub_20B52347C, v28);

      (*(v31 + 8))(v10, v26);
    }
  }
}

void sub_20BF73554(uint64_t *a1@<X0>, char *a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v6 = Strong, v7 = swift_unknownObjectWeakLoadStrong(), v8 = *(v6 + 24), , v7))
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 40))(v4, ObjectType, v8);
    swift_unknownObjectRelease();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  *a3 = v10;
}

double sub_20BF73620(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_20C136484();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B76EB20(v6, v2 + v9);
  swift_endAccess();
  sub_20BF73830();
  v10 = sub_20C136464();
  v12 = v11;
  v20 = v10;
  v21 = v11;
  LOBYTE(v8) = v13 & 1;
  v22 = v13 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0, &unk_20C1574C0);
  sub_20C133BD4();
  sub_20B583F4C(v10, v12, v8);
  if (HIBYTE(v19) > 2u)
  {
    if (HIBYTE(v19) - 3 < 2 && swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(ObjectType, v17);
      goto LABEL_8;
    }
  }

  else if (HIBYTE(v19) - 1 < 2 && swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v2 + 24);
    v16 = swift_getObjectType();
    (*(v15 + 16))(v16, v15);
LABEL_8:
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_20BF73830()
{
  v1 = v0;
  v45 = sub_20C13C4B4();
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13C4F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C4C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &ObjectType - v12;
  v14 = sub_20C137C24();
  v42 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    v36 = v9;
    v37 = v8;
    v38 = v6;
    v39 = v4;
    v40 = v5;
    v41 = v2;
    v18 = sub_20BF74328(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_catalogWorkout);
    v19 = sub_20BF75630();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v21 = sub_20BF72038();
      (*(v20 + 80))(v18, v19, v21 & 1, ObjectType, v20);
      swift_unknownObjectRelease();
    }

    v22 = v18;
    sub_20C1344C4();
    sub_20C138D44();
    v23 = v42;
    if ((*(v42 + 48))(v13, 1, v14) == 1)
    {
      sub_20B520158(v13, &unk_27C766680, &unk_20C14F920);
    }

    else
    {
      (*(v23 + 32))(v17, v13, v14);
      sub_20BF7312C(v17);
      (*(v23 + 8))(v17, v14);
    }

    v25 = v38;
    v24 = v39;
    v26 = v22;
    v27 = v19;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v29 = v36;
    v28 = v37;
    v30 = v43;
    (*(v36 + 104))(v43, *MEMORY[0x277D851B8], v37);
    v31 = sub_20C13D3A4();
    (*(v29 + 8))(v30, v28);
    aBlock[4] = sub_20BF75824;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_161;
    v32 = _Block_copy(aBlock);

    v33 = v44;
    sub_20C13C4D4();
    v46 = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
    sub_20B682EA8();
    v34 = v45;
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v33, v24, v32);
    _Block_release(v32);

    (*(v41 + 8))(v24, v34);
    (*(v25 + 8))(v33, v40);
  }

  return result;
}

uint64_t *sub_20BF73DA8()
{
  sub_20B583E6C((v0 + 2));
  sub_20B583ECC(v0[4], v0[5]);
  sub_20B583ECC(v0[6], v0[7]);
  sub_20B583ECC(v0[8], v0[9]);
  sub_20B583ECC(v0[10], v0[11]);
  sub_20B583ECC(v0[12], v0[13]);
  v1 = OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_activityTypeBehavior;
  v2 = sub_20C137254();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_artworkImageLoader));
  v3 = OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_catalogWorkout;
  v4 = sub_20C1344C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_mediaTagStringBuilder));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_storefrontLocalizer));

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_workoutDeviceConnection, &unk_27C765CB0, &unk_20C1523C0);
  return v0;
}

uint64_t sub_20BF73F08()
{
  sub_20BF73DA8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionAudioPlayerPresenter(uint64_t a1)
{
  result = qword_27C770EB0;
  if (!qword_27C770EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF73FB4(uint64_t a1)
{
  sub_20C137254();
  if (v1 <= 0x3F)
  {
    sub_20C1344C4();
    if (v2 <= 0x3F)
    {
      sub_20B76E984(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_20BF7411C()
{
  result = qword_27C770EC0;
  if (!qword_27C770EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770EC0);
  }

  return result;
}

double sub_20BF74170()
{
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_hasPlaybackBegun) = 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v1 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v1 + 88))(1, 1, ObjectType, v1);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v0 + 24);
      v4 = swift_getObjectType();
      (*(v3 + 96))(0, 128, v4, v3);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v0 + 24);
      v6 = swift_getObjectType();
      (*(v5 + 88))(2, 1, v6, v5);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v0 + 24);
      v8 = swift_getObjectType();
      (*(v7 + 64))(1, 1, v8, v7);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v0 + 24);
      v11 = swift_getObjectType();
      (*(v10 + 48))(1, 1, v11, v10);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BF74328(uint64_t a1)
{
  v2 = sub_20C1344B4();
  if (v4)
  {
    if (v2 - 2 >= 2)
    {
      v5 = (v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_storefrontLocalizer);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_storefrontLocalizer + 24));
      v6 = sub_20C138D34();
      v8 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      v9 = sub_20C138D34();
      v11 = v10;
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_mediaTagStringBuilder + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
      v12 = *(sub_20C138094() - 8);
      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_20C14F980;
      v15 = (v14 + v13);
      *v15 = v6;
      v15[1] = v8;
      v15[2] = v9;
      v15[3] = v11;
      swift_storeEnumTagMultiPayload();
      v16 = sub_20C138544();

      return v16;
    }
  }

  else
  {
    sub_20B583F4C(v2, v3, 0);
  }

  return 0;
}

void sub_20BF74598()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_weakInit();
  v3[4] = sub_20BF7582C;
  v3[5] = v1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_20BF74A18;
  v3[3] = &block_descriptor_76_0;
  v2 = _Block_copy(v3);

  [v0 getActiveRouteWithTimeout:v2 completion:1.0];
  _Block_release(v2);
}

uint64_t sub_20BF74688(void *a1, uint64_t a2)
{
  v4 = sub_20C13C4B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13C4F4();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v11 = sub_20C13D374();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_20BF75834;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_82_2;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

double sub_20BF74928(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    v7 = *(v5 + 24);

    if (v6)
    {
      if (a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = [objc_opt_self() systemRoute];
      }

      ObjectType = swift_getObjectType();
      v10 = *(v7 + 72);
      v11 = a2;
      v10(v8, ObjectType, v7);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_20BF74A18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_20BF74A84(uint64_t result)
{
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    if (!(result >> 6) || result >> 6 == 1)
    {
      swift_getObjectType();
      return sub_20C138764();
    }

    if (result == 128)
    {
      v2 = v1[8];
      if (!v2)
      {
        return result;
      }

      v3 = v1[9];
    }

    else
    {
      v2 = v1[10];
      if (!v2)
      {
        return result;
      }

      v3 = v1[11];
    }

    v2(v4);

    return sub_20B583ECC(v2, v3);
  }

  return result;
}

void sub_20BF74B80(uint64_t a1)
{
  v3 = sub_20C136484();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_isAppBackgrounded) & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B76EA90(v1 + v13, v12);
    v14 = v4[6];
    if (v14(v12, 1, v3))
    {
      v15 = v12;
LABEL_4:
      sub_20B520158(v15, &unk_27C765CB0, &unk_20C1523C0);
      return;
    }

    v16 = v4[2];
    v40 = v4 + 2;
    v41 = v14;
    v39 = v16;
    v16(v6, v12, v3);
    sub_20B520158(v12, &unk_27C765CB0, &unk_20C1523C0);
    v43 = v1;
    v17 = sub_20C136464();
    v19 = v18;
    v21 = v20;
    v38 = v4[1];
    v38(v6, v3);
    v45 = v17;
    v46 = v19;
    v42 = a1;
    v22 = v21 & 1;
    v47 = v21 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0, &unk_20C1574C0);
    sub_20C133BD4();
    v23 = v43;
    sub_20B583F4C(v17, v19, v22);
    if (v44 != 5)
    {
      v24 = v23;
      v25 = sub_20C136444();
      v27 = v26;
      if (v25 == sub_20C136444() && v27 == v28)
      {
      }

      else
      {
        v29 = sub_20C13DFF4();

        if ((v29 & 1) == 0)
        {
          return;
        }
      }

      sub_20B76EA90(v24 + v13, v9);
      if (v41(v9, 1, v3))
      {
        v15 = v9;
        goto LABEL_4;
      }

      v39(v6, v9, v3);
      sub_20B520158(v9, &unk_27C765CB0, &unk_20C1523C0);
      v30 = sub_20C136474();
      v32 = v31;
      v38(v6, v3);
      v45 = v30;
      LOBYTE(v46) = v32 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BC10, &qword_20C1724B0);
      sub_20C133BD4();
      if (v44 != 4)
      {
        v33 = sub_20C136404();
        if (v33 == sub_20C136404())
        {
          v34 = sub_20C1344B4();
          if (v36)
          {
            if (v34 - 2 >= 2)
            {
              if (v34)
              {
                AudioServicesPlaySystemSound(0x497u);
              }

              else
              {
                AudioServicesPlaySystemSound(0x496u);
              }
            }
          }

          else
          {
            sub_20B583F4C(v34, v35, 0);
          }
        }
      }
    }
  }
}

void sub_20BF74F98(uint64_t a1)
{
  v3 = sub_20C137C24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    v7 = sub_20BF74328(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_catalogWorkout);
    v8 = sub_20BF75630();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12[1] = a1;
      v9 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v11 = sub_20BF72038();
      (*(v9 + 80))(v7, v8, v11 & 1, ObjectType, v9);
      swift_unknownObjectRelease();
    }

    sub_20C133604();
    sub_20BF7312C(v6);

    (*(v4 + 8))(v6, v3);
  }
}

void sub_20BF75128()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      sub_20C133424();
      v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v6 = sub_20C13C914();

      v7 = [v5 initWithString_];

      sub_20C133434();
      v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v9 = sub_20C13C914();

      v10 = [v8 initWithString_];

      v11 = sub_20BF72038();
      (*(v12 + 80))(v7, v10, v11 & 1, ObjectType);

      swift_unknownObjectRelease();
    }

    sub_20C133444();
    sub_20BF7312C(v4);
    (*(v2 + 8))(v4, v1);
  }
}

void sub_20BF75330(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &ObjectType - v4;
  v6 = sub_20C137C24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    v10 = sub_20BF74328(a1);
    v11 = sub_20BF75630();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = v7;
      v12 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v13 = sub_20BF72038();
      v14 = *(v12 + 80);
      v15 = v12;
      v7 = v17;
      v14(v10, v11, v13 & 1, ObjectType, v15);
      swift_unknownObjectRelease();
    }

    sub_20C1344C4();
    sub_20C138D44();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_20B520158(v5, &unk_27C766680, &unk_20C14F920);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_20BF7312C(v9);

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_20BF75584(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);

  return sub_20C137C94();
}

id sub_20BF75630()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698B0, &qword_20C17F2B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_20C1344B4();
  if (v5)
  {
    if (v3 - 2 >= 2)
    {
      if (v3)
      {
        v11 = sub_20C134374();
        sub_20BEDD510(v11, v2);

        v12 = sub_20C1335F4();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v2, 1, v12) != 1)
        {
          sub_20C1335D4();
          (*(v13 + 8))(v2, v12);
          v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v8 = sub_20C13C914();

          v9 = [v14 initWithString_];
          goto LABEL_12;
        }

        sub_20B520158(v2, &qword_27C7698B0, &qword_20C17F2B0);
      }

      else
      {
        sub_20C134474();
        if (v6)
        {
          v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v8 = sub_20C13C914();

          v9 = [v7 initWithString_];
LABEL_12:
          v15 = v9;

          return v15;
        }
      }
    }
  }

  else
  {
    sub_20B583F4C(v3, v4, 0);
  }

  return 0;
}

void sub_20BF75858()
{
  v1 = *(sub_20C132614() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_20BF72F54(v0 + v2, v3);
}

double sub_20BF758FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = sub_20C138034();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C136594();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v28 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = sub_20BEDEF08(*(a1 + 16), 0);
    sub_20BEE2CD4(v36, &v10[(*(v4 + 80) + 32) & ~*(v4 + 80)], v8, a1);
    v11 = v36[0];
    v31 = v36[3];
    v32 = v12;
    v30 = v36[4];

    sub_20B583EDC(v11);
    if (v32 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = v9;
LABEL_5:
  v36[0] = v10;
  sub_20BF784B4(v36);
  v13 = v36[0];
  v14 = *(v36[0] + 16);
  if (v14)
  {
    v27 = a2;
    v36[0] = v9;
    sub_20BB5D604(0, v14, 0);
    v15 = v36[0];
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v18 = *(v16 + 64);
    v26[1] = v13;
    v19 = v13 + ((v18 + 32) & ~v18);
    v30 = *(v16 + 56);
    v31 = v17;
    v32 = v16;
    v20 = (v16 - 8);
    v21 = v34;
    v29 = v35 + 32;
    v22 = v28;
    do
    {
      v31(v6, v19, v21);
      sub_20C138024();
      sub_20C137FF4();
      sub_20C136554();
      (*v20)(v6, v21);
      v36[0] = v15;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_20BB5D604((v23 > 1), v24 + 1, 1);
        v22 = v28;
        v15 = v36[0];
      }

      *(v15 + 16) = v24 + 1;
      (*(v35 + 32))(v15 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v24, v22, v33);
      v19 += v30;
      --v14;
    }

    while (v14);

    a2 = v27;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  sub_20C02BC6C(v15, a2);

  return result;
}

uint64_t sub_20BF75C90()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v37 - v11;
  v37 = v12;
  MEMORY[0x28223BE20](v13);
  v41 = &v37 - v14;
  v15 = sub_20B716148(&unk_2822864D8);
  sub_20C1380F4();
  v16 = sub_20C138104();
  if (v16 == sub_20C138104())
  {
    v17 = sub_20BE8BF14(&unk_2822864B0);
    sub_20B722BD4(v17, v15);
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_bookmarkClient), *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_bookmarkClient + 24));
  sub_20C13A1B4();

  v18 = swift_allocObject();
  *(v18 + 16) = sub_20BF7A7F8;
  *(v18 + 24) = v1;
  (*(v3 + 16))(v5, v8, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v5, v2);
  v21 = (v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20BF7A7FC;
  v21[1] = v18;

  v22 = v40;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20BF7A8F4;
  *(v23 + 24) = v1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_20B849B38;
  *(v24 + 24) = v23;
  v25 = v38;
  v26 = v39;
  v27 = v42;
  (*(v38 + 16))(v39, v22, v42);
  v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v29 = (v37 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v25 + 32))(v30 + v28, v26, v27);
  v31 = (v30 + v29);
  *v31 = sub_20B66A8B4;
  v31[1] = v24;

  v32 = v41;
  sub_20C137C94();
  v33 = *(v25 + 8);
  v33(v22, v27);
  v34 = sub_20C137CB4();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v34(sub_20B5DF6DC, v35);

  return (v33)(v32, v27);
}

uint64_t sub_20BF76180(int a1)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644D0, &unk_20C1606D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-v6];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v23[-v9];
  v11 = sub_20C02A560();
  sub_20B8CAB64(v11, v7);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v24;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BF7A7B0;
  *(v14 + 24) = v13;
  (*(v2 + 16))(v4, v7, v1);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = (v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v2 + 32))(v17 + v15, v4, v1);
  v18 = (v17 + v16);
  *v18 = sub_20B8C71E8;
  v18[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v19 = v25;
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B5DF6DC, v21);

  return (*(v8 + 8))(v10, v19);
}

void sub_20BF764E8(uint64_t *a1@<X0>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v4 = a3;
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20BF7657C(v4, v6);
  }

  *a4 = Strong == 0;
}

void sub_20BF7657C(int a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v5 = sub_20C13C554();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_lazyLockupFetcher);

  v61 = v7;
  sub_20C032BA8(v7, a2, v3);
  v62 = v8;

  sub_20C135DA4();
  v9 = sub_20C1352B4();
  v11 = v10;
  if (v9 == sub_20C1352B4() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_20C13DFF4();

    if ((v14 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_storefrontLocalizer), *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_storefrontLocalizer + 24));
      v15 = sub_20C138D34();
      v59 = v16;
      v60 = v15;
      goto LABEL_9;
    }
  }

  v59 = 0;
  v60 = 0;
LABEL_9:
  v17 = (v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_mediaTagStringBuilder), *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_mediaTagStringBuilder + 24));
  sub_20C135E04();
  v18 = sub_20C138544();

  v19 = [v18 string];

  v20 = sub_20C13C954();
  v22 = v21;

  __swift_project_boxed_opaque_existential_1(v17, v17[3]);

  sub_20C135D84();
  v23 = sub_20C138544();

  v24 = [v23 string];

  v25 = sub_20C13C954();
  v27 = v26;

  LOBYTE(v24) = (*(v61 + 144) < 0x2FuLL) & (0x4CE7B617E7E2uLL >> *(v61 + 144));
  v28 = sub_20C135D64();
  *&v63 = v60;
  *(&v63 + 1) = v59;
  LOBYTE(v64) = 1;
  *(&v64 + 1) = 0;
  *&v65 = 0;
  BYTE8(v65) = 0x80;
  BYTE9(v65) = v24;
  v66 = 0uLL;
  *&v67 = v28;
  *(&v67 + 1) = v29;
  *&v68 = v20;
  *(&v68 + 1) = v22;
  LOBYTE(v69) = 0;
  *(&v69 + 1) = v62;
  *&v70 = MEMORY[0x277D84F90];
  *(&v70 + 1) = v25;
  *&v71 = v27;
  *(&v71 + 1) = v20;
  *v72 = v22;
  *&v72[8] = xmmword_20C150190;
  nullsub_1();
  v30 = v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row;
  v31 = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 144);
  v73[8] = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 128);
  v73[9] = v31;
  v74 = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 160);
  v32 = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 80);
  v73[4] = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 64);
  v73[5] = v32;
  v33 = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 112);
  v73[6] = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 96);
  v73[7] = v33;
  v34 = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 16);
  v73[0] = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row);
  v73[1] = v34;
  v35 = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 48);
  v73[2] = *(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 32);
  v73[3] = v35;
  v36 = *v72;
  *(v30 + 128) = v71;
  *(v30 + 144) = v36;
  *(v30 + 160) = *&v72[16];
  v37 = v68;
  *(v30 + 64) = v67;
  *(v30 + 80) = v37;
  v38 = v70;
  *(v30 + 96) = v69;
  *(v30 + 112) = v38;
  v39 = v64;
  *v30 = v63;
  *(v30 + 16) = v39;
  v40 = v66;
  *(v30 + 32) = v65;
  *(v30 + 48) = v40;
  sub_20B520158(v73, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61DF68(v3, Strong);
      if (v44)
      {
        v46 = v43;
        v47 = v44;
        v48 = v45;
        sub_20B5E2E18();
        v49 = sub_20C13D374();
        v51 = v56;
        v50 = v57;
        *v56 = v49;
        v52 = v58;
        (*(v50 + 104))(v51, *MEMORY[0x277D85200], v58);
        v53 = sub_20C13C584();
        (*(v50 + 8))(v51, v52);
        if ((v53 & 1) == 0)
        {
          __break(1u);
          return;
        }

        if ((v55 & 0x80) != 0)
        {
          sub_20C10CCC0(v3, v46, v55 & 1, v42);
        }

        else
        {
          sub_20B62181C(v46, v47, v48, v3, v55 & 1, v42);
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

uint64_t sub_20BF76A80()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_bookmarkClient));
  v8 = OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_descriptor;
  v9 = sub_20C135E14();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_storefrontLocalizer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_subscriptionCache));

  return v0;
}

uint64_t sub_20BF76C04()
{
  sub_20BF76A80();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BookmarksShelf(uint64_t a1)
{
  result = qword_27C770F10;
  if (!qword_27C770F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BF76CB0(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = sub_20C135E14();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20BF76DB8()
{
  sub_20B8C9C90();
  sub_20BF75C90();
  swift_getObjectType();
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

double sub_20BF76FB8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BF75C90();
  }

  return result;
}

uint64_t sub_20BF77010(uint64_t a1, uint64_t a2)
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
      _os_log_impl(&dword_20B517000, v17, v18, "[BookmarksShelf] archived sessions updated; updating row", v19, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    (*(v12 + 8))(v14, v11);

    v20 = sub_20C13AEB4();
    v21 = v34;
    sub_20C02CCD0(v20, v34);

    v22 = swift_allocObject();
    *(v22 + 16) = sub_20BF7A8F4;
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

double sub_20BF77440(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BF75C90();
  }

  return result;
}

uint64_t sub_20BF77498(uint64_t a1)
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
  *(v14 + 16) = sub_20BF7A790;
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

void sub_20BF7775C(unsigned int *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, BOOL *a6@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20BF77814(a3, a4, v10 | (v11 << 32), a5 & 1);
  }

  *a6 = Strong == 0;
}

uint64_t sub_20BF77814(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v41 = a1;
  v8 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v42 = a2;
  if ((a3 & 0x100000000) != 0)
  {
    if (a3 > 2)
    {
      if ((a3 - 4) < 2)
      {
        v19 = MEMORY[0x277D51478];
        goto LABEL_11;
      }

      if (a3 != 3)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (!a3)
      {
        v21 = *(v12 + 104);
        if (a4)
        {
          v40 = MEMORY[0x277D51480];
        }

        else
        {
          v40 = MEMORY[0x277D513C0];
        }

        v20 = *v40;
        goto LABEL_12;
      }

      if (a3 != 1)
      {
        v19 = MEMORY[0x277D51480];
        goto LABEL_11;
      }
    }

    v19 = MEMORY[0x277D51440];
    goto LABEL_11;
  }

LABEL_2:
  v19 = MEMORY[0x277D51420];
LABEL_11:
  v20 = *v19;
  v21 = *(v12 + 104);
LABEL_12:
  v21(v14, v20, v11, v16);
  (*(v12 + 32))(v18, v14, v11);
  v22 = sub_20C136664();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  (*(v12 + 16))(&v10[v8[5]], v18, v11);
  v23 = v8[6];
  v24 = sub_20C132C14();
  (*(*(v24 - 8) + 56))(&v10[v23], 1, 1, v24);
  v25 = v8[8];
  v26 = *MEMORY[0x277D52408];
  v27 = sub_20C135ED4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v10[v25], v26, v27);
  (*(v28 + 56))(&v10[v25], 0, 1, v27);
  v29 = v8[10];
  v30 = *MEMORY[0x277D51768];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(&v10[v29], v30, v31);
  v32 = v8[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(&v10[v32], 1, 1, v33);
  v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v35 = &v10[v8[7]];
  v36 = v42;
  *v35 = v41;
  v35[1] = v36;
  v37 = &v10[v8[9]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v10[v8[12]] = v34;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_20BFA0354(v4, v10, Strong);
    swift_unknownObjectRelease();
  }

  sub_20BF7A730(v10, type metadata accessor for ShelfMetricAction);
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_20BF77C60()
{
  v1 = v0;
  v2 = type metadata accessor for ShelfMetricAction(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C136664();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = v3[7];
  v8 = *MEMORY[0x277D51488];
  v9 = sub_20C134F24();
  (*(*(v9 - 8) + 104))(&v5[v7], v8, v9);
  v10 = v3[8];
  v11 = sub_20C132C14();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = sub_20C135D64();
  v14 = v13;
  v15 = v3[10];
  v16 = *MEMORY[0x277D523F0];
  v17 = sub_20C135ED4();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v5[v15], v16, v17);
  (*(v18 + 56))(&v5[v15], 0, 1, v17);
  v19 = v3[12];
  v20 = *MEMORY[0x277D51788];
  v21 = sub_20C1352E4();
  (*(*(v21 - 8) + 104))(&v5[v19], v20, v21);
  v22 = v3[13];
  v23 = sub_20C136E94();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v25 = &v5[v3[9]];
  *v25 = v12;
  v25[1] = v14;
  v26 = &v5[v3[11]];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v5[v3[14]] = v24;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA0354(v1, v5, Strong);
    swift_unknownObjectRelease();
  }

  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = (v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_mediaTagStringBuilder);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_mediaTagStringBuilder + 24));
    sub_20C135D94();
    v31 = sub_20C138544();

    v32 = [v31 string];

    v50 = sub_20C13C954();
    v51 = v33;

    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_20C135DD4();
    v34 = sub_20C138544();

    v35 = [v34 string];

    v49 = sub_20C13C954();
    v37 = v36;

    v38 = sub_20C135D64();
    v40 = v39;
    v41 = sub_20C135DA4();
    v42 = sub_20C135DC4();
    v43 = v29 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      v47 = v42;
      (*(v44 + 96))(v29, v50, v51, v49, v37, v38, v40, v41, v47, MEMORY[0x277D84F90], ObjectType, v44);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return sub_20BF7A730(v5, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20BF78124@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BF7819C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_row + 32);
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

double sub_20BF78260@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = sub_20C134014();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v3 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_lazyLockupFetcher) + 160);
  if (*(v11 + 16))
  {

    v12 = sub_20B65AA60(a1, a2);
    if (v13)
    {
      (*(v8 + 16))(v10, *(v11 + 56) + *(v8 + 72) * v12, v7);

      *(a3 + 24) = v7;
      *(a3 + 32) = &off_2822D8E58;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(v8 + 32))(boxed_opaque_existential_1, v10, v7);
      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_20BF783C4()
{
  v0 = sub_20C02C2CC();
  v1 = sub_20BEF69F4(v0);

  return v1;
}

void sub_20BF7840C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_20C02D360(a3, a4);
  if (v6)
  {

    sub_20BF76180(a5 & 1 | 0xFFFFFF80);
  }
}

void sub_20BF784B4(uint64_t *a1)
{
  v2 = *(sub_20C138034() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A1078(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BF7855C(v5);
  *a1 = v3;
}

void sub_20BF7855C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C138034();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C138034() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20BF78A28(v8, v9, a1, v4);
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
    sub_20BF78688(0, v2, 1, a1);
  }
}

void sub_20BF78688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20C132E94();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_20C138034();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20C138004();
      v32 = v59;
      sub_20C138004();
      v62 = sub_20C132DF4();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BF78A28(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_20C132E94();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_20C138034();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_20B6A07A0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_20BF79628(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20B6A07A0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_20B6A0714(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_20C138004();
      v34 = v159;
      sub_20C138004();
      LODWORD(v149) = sub_20C132DF4();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_20C138004();
        v46 = v159;
        sub_20C138004();
        LOBYTE(v162) = sub_20C132DF4() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_20BC05740(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_20BC05740((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20BF79628(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20B6A07A0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_20B6A0714(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_20C138004();
    v120 = v159;
    sub_20C138004();
    LODWORD(v162) = sub_20C132DF4();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_20BF79628(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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

uint64_t sub_20BF79D04(char *a1, uint64_t a2)
{
  v74 = a2;
  v75 = a1;
  v65 = sub_20C13BB84();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320, &unk_20C16C580);
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v67 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v59 - v8;
  v62 = sub_20C136594();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20C134014();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767450, &unk_20C16C590);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_20C134A74();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8C702C(v75, v25, type metadata accessor for ShelfItemAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20BF7A730(v25, type metadata accessor for ShelfItemAction);
  if (EnumCaseMultiPayload == 13)
  {
    v28 = v73;
    sub_20C02C020(v74, v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      return sub_20B520158(v15, &qword_27C767450, &unk_20C16C590);
    }

    else
    {
      sub_20B8C6FC8(v15, v22);
      v75 = v22;
      sub_20B8C702C(v22, v19, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v59;
        v30 = v60;
        (*(v59 + 32))(v12, v19, v60);
        v31 = sub_20C133E44();
        v33 = v32;
        (*(v29 + 8))(v12, v30);
      }

      else
      {
        v34 = v61;
        v35 = v62;
        (*(v61 + 32))(v10, v19, v62);
        v31 = sub_20C136564();
        v33 = v36;
        (*(v34 + 8))(v10, v35);
      }

      v74 = *(v28 + OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_downloadSubscriptionCoordinator);
      v37 = v67;
      sub_20B8CA380(v31, v33, v67);
      v38 = swift_allocObject();
      swift_weakInit();
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      *(v39 + 24) = v31;
      *(v39 + 32) = v33;
      *(v39 + 40) = 0;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_20BF7A6E4;
      *(v40 + 24) = v39;
      v41 = v31;
      v43 = v69;
      v42 = v70;
      v44 = v66;
      (*(v69 + 16))(v66, v37, v70);
      v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v46 = (v4 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      (*(v43 + 32))(v47 + v45, v44, v42);
      v48 = (v47 + v46);
      *v48 = sub_20B9B7CE0;
      v48[1] = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
      v49 = v68;
      sub_20C137C94();
      (*(v43 + 8))(v37, v42);
      v50 = v41;
      v51 = v72;
      v52 = sub_20C137CB4();
      v53 = swift_allocObject();
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      v52(sub_20B52347C, v53);

      (*(v71 + 8))(v49, v51);
      sub_20B75FBFC(v41, v33, &v76);
      if (v76 == 2)
      {
        v54 = v63;
        sub_20C13B4E4();

        v55 = sub_20C13BB74();
        v56 = sub_20C13D1D4();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v79 = v58;
          *v57 = 136446210;
          *(v57 + 4) = sub_20B51E694(v50, v33, &v79);
          _os_log_impl(&dword_20B517000, v55, v56, "No download entry for identifier: %{public}s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v58);
          MEMORY[0x20F2F6A40](v58, -1, -1);
          MEMORY[0x20F2F6A40](v57, -1, -1);
        }

        (*(v64 + 8))(v54, v65);
      }

      else
      {
        v79 = v76;
        v80 = v77;
        v81[0] = v78[0];
        *(v81 + 9) = *(v78 + 9);
        if (BYTE8(v77) == 255 || (BYTE8(v77) & 1) == 0 || ((1 << v80) & 0x1DD) != 0)
        {
          if (v76)
          {
            sub_20B75DE1C(v41, v33, &v79, 0);
          }

          else
          {
            sub_20B75D680(v41, v33, &v79);
          }
        }

        else if (v80 == 1)
        {
          sub_20B75E1A8(v41, v33, &v79, 0);
        }

        sub_20B520158(&v76, &qword_27C764BC0, &unk_20C1606C0);
      }

      return sub_20BF7A730(v75, MEMORY[0x277D50C70]);
    }
  }

  return result;
}

uint64_t sub_20BF7A730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BF7A82C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BF7A8FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  sub_20C134E84();
  v10 = sub_20C135C84();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &unk_27C7629B0, &unk_20C1510C0);
  }

  else
  {
    sub_20B85D4A8();
    sub_20B6134F0(v9);
    v12 = sub_20C1368B4();
    v14 = v13;
    if (v12 == sub_20C1368B4() && v14 == v15)
    {

      v18 = 0;
      return v18 & 1;
    }

    v17 = sub_20C13DFF4();

    v18 = 0;
    if (v17)
    {
      return v18 & 1;
    }
  }

  if ((sub_20C134EB4() & 1) == 0)
  {
LABEL_15:
    v20 = sub_20BF7AE48();
    v18 = sub_20B8D7B18(a1, v20);

    return v18 & 1;
  }

  sub_20C134E84();
  if (v11(v6, 1, v10) == 1)
  {
    sub_20B520158(v6, &unk_27C7629B0, &unk_20C1510C0);
    goto LABEL_15;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20B6134F0(v6);
  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_15;
  }

  v18 = sub_20BF7ABA4(a1, a2);
  return v18 & 1;
}

uint64_t sub_20BF7ABA4(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  sub_20C134E84();
  v13 = sub_20C135C84();
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) != 1)
  {
    sub_20B52F9E8(v12, v9, &unk_27C7629B0, &unk_20C1510C0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_20B6134F0(v9);
    if (EnumCaseMultiPayload == 4)
    {
      sub_20B52F9E8(a2, v6, &unk_27C7710A0, &unk_20C156800);
      v15 = sub_20C134734();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v6, 1, v15) != 1)
      {
        sub_20C1346E4();
        (*(v16 + 8))(v6, v15);
        v19[15] = a1;
        sub_20B8DCF84();
        sub_20B8DD02C();
        v17 = sub_20C13CF84();

        goto LABEL_6;
      }

      sub_20B520158(v6, &unk_27C7710A0, &unk_20C156800);
    }
  }

  v17 = 0;
LABEL_6:
  sub_20B520158(v12, &unk_27C7629B0, &unk_20C1510C0);
  return v17 & 1;
}

uint64_t sub_20BF7AE48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  if (sub_20C134EB4())
  {
    sub_20C134E84();
    v3 = sub_20C135C84();
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
    {
      sub_20B520158(v2, &unk_27C7629B0, &unk_20C1510C0);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_20B6134F0(v2);
      if (EnumCaseMultiPayload == 4)
      {
        return MEMORY[0x277D84FA0];
      }
    }

    return sub_20BE8D578(&unk_2822883A0);
  }

  else
  {

    return sub_20BE8D578(&unk_2822883C8);
  }
}

unint64_t sub_20BF7AF9C()
{
  result = qword_27C770F20;
  if (!qword_27C770F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770F20);
  }

  return result;
}

char *sub_20BF7AFF0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_gradientLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v10 = OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_gradientView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_layout];
  v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  *v11 = 0x3FD999999999999ALL;
  *(v11 + 1) = v12;
  *(v11 + 1) = xmmword_20C186660;
  *(v11 + 4) = v13;
  __asm { FMOV            V0.2D, #0.5 }

  *(v11 + 40) = _Q0;
  v19 = OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_metalView;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x277CD71F8]) init];
  *&v4[OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_renderer] = 0;
  v79.receiver = v4;
  v79.super_class = type metadata accessor for AnimatedBackgroundView();
  v20 = objc_msgSendSuper2(&v79, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_metalView;
  v22 = *&v20[OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_metalView];
  v23 = qword_27C760668;
  v24 = v20;
  v25 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v80 = xmmword_27C799A18;
  v81 = *algn_27C799A28;
  v26 = qword_27C799A30;
  v82 = qword_27C799A38;
  v27 = xmmword_27C799A18;
  if (xmmword_27C799A18)
  {
    v28 = *(&v80 + 1);
    swift_unknownObjectRetain();
  }

  else
  {
    v28 = 0;
  }

  [v25 setDevice_];

  swift_unknownObjectRelease();
  [*&v20[v21] setPreferredFramesPerSecond_];
  [*&v20[v21] setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = [*&v20[v21] layer];
  [v29 setAllowsDisplayCompositing_];

  if ((sub_20C13A3E4() & 1) != 0 && v27)
  {
    v30 = *(&v81 + 1);
    if (v81)
    {
      v77 = *&v20[v21];
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v31 = v26;
      swift_unknownObjectRetain();
      [v77 setColorPixelFormat_];
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v32 = v26;
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v33 = v24;
  v34 = *&v20[v21];
  v35 = v33;
  [v35 addSubview_];
  v36 = OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_gradientView;
  [*&v35[OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_gradientView] setTranslatesAutoresizingMaskIntoConstraints_];
  v37 = &v35[OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_layout];
  [*&v35[v36] setAlpha_];
  [v35 addSubview_];
  v38 = OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_gradientLayer;
  v39 = *&v35[OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C14F320;
  v41 = *(v37 + 4);
  v42 = v39;
  v43 = [v41 CGColor];
  type metadata accessor for CGColor(0);
  v45 = v44;
  *(v40 + 56) = v44;
  *(v40 + 32) = v43;
  v46 = [*(v37 + 1) CGColor];
  *(v40 + 88) = v45;
  *(v40 + 64) = v46;
  v47 = sub_20C13CC54();

  [v42 setColors_];

  [*&v35[v38] setStartPoint_];
  [*&v35[v38] setEndPoint_];
  v48 = [*&v35[v36] layer];
  [v48 addSublayer_];

  v78 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_20C151DF0;
  v50 = [*&v20[v21] leadingAnchor];
  v51 = [v35 leadingAnchor];

  v52 = [v50 constraintEqualToAnchor_];
  *(v49 + 32) = v52;
  v53 = [*&v20[v21] trailingAnchor];
  v54 = [v35 trailingAnchor];

  v55 = [v53 constraintEqualToAnchor_];
  *(v49 + 40) = v55;
  v56 = [*&v20[v21] topAnchor];
  v57 = [v35 &selRef_setLineBreakMode_];

  v58 = [v56 constraintEqualToAnchor_];
  *(v49 + 48) = v58;
  v59 = [*&v20[v21] bottomAnchor];
  v60 = [v35 bottomAnchor];

  v61 = [v59 constraintEqualToAnchor_];
  *(v49 + 56) = v61;
  v62 = [*&v35[v36] leadingAnchor];
  v63 = [v35 leadingAnchor];

  v64 = [v62 constraintEqualToAnchor_];
  *(v49 + 64) = v64;
  v65 = [*&v35[v36] trailingAnchor];
  v66 = [v35 trailingAnchor];

  v67 = [v65 constraintEqualToAnchor_];
  *(v49 + 72) = v67;
  v68 = [*&v35[v36] topAnchor];
  v69 = [v35 topAnchor];

  v70 = [v68 constraintEqualToAnchor_];
  *(v49 + 80) = v70;
  v71 = [*&v35[v36] bottomAnchor];
  v72 = [v35 bottomAnchor];

  v73 = [v71 constraintEqualToAnchor_];
  *(v49 + 88) = v73;
  sub_20B5E29D0();
  v74 = sub_20C13CC54();

  [v78 activateConstraints_];

  sub_20BF7B930(&v80);
  v75 = *&v20[v21];
  [v75 setEnableSetNeedsDisplay_];

  sub_20BF7BAAC();
  return v35;
}

void sub_20BF7B930(uint64_t *a1)
{
  if (*a1)
  {
    v2 = v1;
    v15 = *a1;
    v3 = *(a1 + 3);
    v16 = *(a1 + 1);
    v17 = v3;
    v4 = v3;
    v6 = objc_allocWithZone(_s17CompositeRendererCMa());
    sub_20BF7BD30(a1, &v14);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v7 = v4;
    swift_unknownObjectRetain();
    v8 = sub_20BC1EF80(&v15);
    *&v8[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_observer + 8] = &off_2822FA758;
    swift_unknownObjectWeakAssign();
    v9 = [objc_opt_self() systemGrayColor];
    sub_20BC214CC(v9);

    v10 = OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_metalView;
    sub_20BC1EE1C([*(v2 + OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_metalView) colorPixelFormat]);
    v11 = *(v2 + v10);
    v12 = v8;
    [v11 setDelegate_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_renderer);
    *(v2 + OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_renderer) = v8;
  }
}

void sub_20BF7BAAC()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277D764C0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v7[4] = sub_20BF7BD28;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20BF3ECF4;
  v7[3] = &block_descriptor_162;
  v4 = _Block_copy(v7);
  v5 = v0;

  v6 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

void sub_20BF7BBDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_metalView);
  [v2 setEnableSetNeedsDisplay_];
}

id sub_20BF7BC38(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AnimatedBackgroundView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20BF7BD30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770F50, &qword_20C1866C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20BF7BDA0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_gradientLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v2 = OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_gradientView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_layout;
  v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  *v3 = 0x3FD999999999999ALL;
  *(v3 + 8) = v4;
  *(v3 + 16) = xmmword_20C186660;
  *(v3 + 32) = v5;
  __asm { FMOV            V0.2D, #0.5 }

  *(v3 + 40) = _Q0;
  v11 = OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_metalView;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x277CD71F8]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_renderer) = 0;
  sub_20C13DE24();
  __break(1u);
}

id sub_20BF7BEE8()
{
  v1 = [*v0 scene];

  return v1;
}

id sub_20BF7BF20()
{
  v1 = [*v0 role];

  return v1;
}

id sub_20BF7BF58()
{
  v1 = [*v0 configuration];

  return v1;
}

uint64_t sub_20BF7BF90()
{
  v1 = [*v0 persistentIdentifier];
  v2 = sub_20C13C954();

  return v2;
}

id sub_20BF7BFE8()
{
  v1 = [*v0 stateRestorationActivity];

  return v1;
}

uint64_t sub_20BF7C020()
{
  v1 = [*v0 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_20C13C754();

  return v3;
}

uint64_t sub_20BF7C108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a1;
  v5 = sub_20C1321F4();
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C132EE4();
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870, &unk_20C1547A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v15);
  v45 = &v43 - v16;
  if (!BYTE5(a3))
  {
    return sub_20C1323A4() & 0xFFFFFFFFFFLL;
  }

  if (BYTE5(a3) == 1)
  {
    v17 = *(a2 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v44 = a3;
      v65 = MEMORY[0x277D84F90];
      sub_20BB5E9E8(0, v17, 0);
      v18 = v65;
      v20 = *(v10 + 16);
      v19 = v10 + 16;
      v49 = (*(v19 + 64) + 32) & ~*(v19 + 64);
      v50 = v20;
      v21 = a2 + v49;
      v22 = *(v19 + 56);
      v47 = (v19 - 8);
      v48 = v22;
      v51 = v19;
      v23 = v45;
      do
      {
        v50(v14, v21, v9);
        sub_20C132464();
        sub_20C1324B4();
        sub_20C132494();
        sub_20C1324A4();
        v24 = sub_20C1323A4();
        v61 = v24;
        v62 = BYTE4(v24);
        v63 = v25;
        v64 = v26;
        sub_20C1324C4();
        v55 = v58;
        v57 = v60;
        v56 = v59;
        sub_20C132484();
        sub_20B7E259C();
        sub_20C132474();
        (*v47)(v14, v9);
        v65 = v18;
        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_20BB5E9E8((v27 > 1), v28 + 1, 1);
          v23 = v45;
          v18 = v65;
        }

        *(v18 + 16) = v28 + 1;
        v29 = v48;
        (*(v19 + 16))(v18 + v49 + v28 * v48, v23, v9);
        v21 += v29;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v30 = *(a2 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v30)
    {
      v44 = a3;
      v65 = MEMORY[0x277D84F90];
      sub_20BB5E9E8(0, v30, 0);
      v18 = v65;
      v32 = *(v10 + 16);
      v31 = v10 + 16;
      v49 = (*(v31 + 64) + 32) & ~*(v31 + 64);
      v50 = v32;
      v33 = a2 + v49;
      v34 = *(v31 + 56);
      v47 = (v31 - 8);
      v48 = v34;
      v51 = v31;
      v35 = v46;
      do
      {
        v50(v14, v33, v9);
        sub_20C132464();
        sub_20C1324B4();
        sub_20C132494();
        sub_20C1324A4();
        v36 = sub_20C1323A4();
        v61 = v36;
        v62 = BYTE4(v36);
        v63 = v37;
        v64 = v38;
        sub_20C1324C4();
        v55 = v58;
        v57 = v60;
        v56 = v59;
        sub_20C132484();
        sub_20B7E259C();
        sub_20C132474();
        (*v47)(v14, v9);
        v65 = v18;
        v40 = *(v18 + 16);
        v39 = *(v18 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_20BB5E9E8((v39 > 1), v40 + 1, 1);
          v35 = v46;
          v18 = v65;
        }

        *(v18 + 16) = v40 + 1;
        v41 = v48;
        (*(v31 + 16))(v18 + v49 + v40 * v48, v35, v9);
        v33 += v41;
        --v30;
      }

      while (v30);
    }
  }

  return v18;
}

id sub_20BF7C700(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PlaybackTimeControl();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackView];
  [v2 bounds];
  if (v4 == 0.0 && v3 == 0.0)
  {
    [v1 bounds];
    Width = CGRectGetWidth(v10);
    Height = 7.0;
  }

  else
  {
    [v2 bounds];
    v7 = CGRectGetWidth(v11);
    [*&v1[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTrackView] bounds];
    Width = v7 + CGRectGetWidth(v12);
    [v2 bounds];
    Height = CGRectGetHeight(v13);
  }

  return [*&v1[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_trackMask] setFrame_];
}

void sub_20BF7C8D8(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PlaybackTimeControl();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  [v1 invalidateIntrinsicContentSize];
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeLabelBottomConstraint];
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = sub_20C13D424();

  v7 = 32;
  if (v6)
  {
    v7 = 8;
  }

  [v3 setConstant_];

  v8 = [v1 traitCollection];
  v9 = sub_20BF7CC28(v8);

  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeLabel];
  v11 = v9;
  [v10 setFont_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTimeLabel] setFont_];
}

id sub_20BF7CAA0(double a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeLabel];
  v6 = [*&v2[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeFormatter] stringFromSeconds_];
  if (!v6)
  {
    sub_20C13C954();
    v6 = sub_20C13C914();
  }

  [v5 setText_];

  v7 = *&v2[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTimeLabel];
  v8 = a2 - a1;
  if (a2 - a1 < 0.0)
  {
    v8 = 0.0;
  }

  v9 = [*&v2[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTimeFormatter] stringFromSeconds_];
  if (!v9)
  {
    sub_20C13C954();
    v9 = sub_20C13C914();
  }

  [v7 setText_];

  v10 = 1.0;
  if (a1 / a2 <= 1.0)
  {
    v10 = a1 / a2;
  }

  if (a1 / a2 < 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  v12 = *&v2[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackViewWidthConstraint];
  [v2 bounds];
  [v12 setConstant_];

  return [v2 setNeedsUpdateConstraints];
}

id sub_20BF7CC28(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = v1 + OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_style;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_style + 8);
  if (sub_20C13D444())
  {
    v5 = v4;

    v2 = v5;
  }

  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v7 = [objc_opt_self() defaultMetrics];
  [v7 scaledValueForValue:v6 compatibleWithTraitCollection:*(v3 + 32)];
  v9 = v8;

  v10 = [objc_opt_self() monospacedDigitSystemFontOfSize:v9 weight:*(v3 + 40)];
  return v10;
}

id sub_20BF7CD3C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaybackTimeControl();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_20BF7CEA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeLabel;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v2] = v3;
  v4 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTimeLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v4] = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeLabelBottomConstraint;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v7 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackViewWidthConstraint;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v8 = &v1[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_layout];
  *v8 = xmmword_20C186700;
  *(v8 + 1) = xmmword_20C186710;
  *(v8 + 2) = xmmword_20C186720;
  *(v8 + 6) = 0x4024000000000000;
  v9 = &v1[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_style];
  v10 = *MEMORY[0x277D76828];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 whiteColor];
  v14 = [v13 colorWithAlphaComponent_];

  v15 = *MEMORY[0x277D74410];
  v16 = [v11 whiteColor];
  v17 = [v16 colorWithAlphaComponent_];

  *v9 = 5;
  v9[1] = v12;
  v9[2] = v14;
  v9[3] = 10;
  v9[4] = 0x4026000000000000;
  v9[5] = v15;
  v9[6] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_trackContainer;
  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeFormatter;
  v21 = [objc_allocWithZone(SMUTimeFormatter) init];
  [v21 setStyle_];
  *&v1[v20] = v21;
  v22 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTimeFormatter;
  v23 = [objc_allocWithZone(SMUTimeFormatter) init];
  [v23 setStyle_];
  *&v1[v22] = v23;
  v24 = *v9;
  v25 = type metadata accessor for PlaybackTrackView();
  v26 = objc_allocWithZone(v25);
  *&v1[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackView] = sub_20BB900D8(v24, 0);
  v28 = v9[2];
  v27 = v9[3];
  v29 = objc_allocWithZone(v25);
  v30 = v28;
  *&v1[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTrackView] = sub_20BB900D8(v27, v28);
  type metadata accessor for PlaybackTrackMask();
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_trackMask] = v31;
  v122.receiver = v1;
  v122.super_class = type metadata accessor for PlaybackTimeControl();
  v32 = objc_msgSendSuper2(&v122, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v33 = *&v32[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_trackContainer];
  v34 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_trackContainer;
  v35 = *&v32[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_trackMask];
  v36 = v32;
  [v33 setMaskView_];
  v37 = v36;
  v38 = *&v32[v34];
  v39 = v37;
  [v39 addSubview_];
  v119 = v32;
  v120 = v34;
  v40 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackView;
  [*&v32[v34] addSubview_];
  v121 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTrackView;
  [*&v32[v34] addSubview_];
  v41 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeLabel;
  v42 = &v39[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_style];
  [*&v39[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeLabel] setTextColor_];
  [v39 addSubview_];
  v43 = *&v39[v41];
  v44 = sub_20C13C914();
  [v43 setText_];

  v45 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTimeLabel;
  [*&v39[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTimeLabel] setTextColor_];
  [v39 addSubview_];
  v46 = v45;
  v117 = v45;
  v47 = *&v39[v45];
  v48 = sub_20C13C914();
  [v47 setText_];

  v49 = [v39 traitCollection];
  v50 = sub_20BF7CC28(v49);

  v51 = *&v39[v41];
  v52 = v50;
  [v51 setFont_];
  [*&v39[v46] setFont_];

  v53 = [v39 traitCollection];
  v54 = [v53 preferredContentSizeCategory];
  LOBYTE(v44) = sub_20C13D424();

  v55 = 32;
  if (v44)
  {
    v55 = 8;
  }

  v56 = *&v39[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_layout + v55];
  v57 = [*&v39[v41] bottomAnchor];
  v58 = [v39 &selRef_secondaryLabel + 5];

  v59 = [v57 constraintEqualToAnchor:v58 constant:v56];
  v60 = *&v39[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeLabelBottomConstraint];
  *&v39[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeLabelBottomConstraint] = v59;

  v61 = [*&v39[v40] widthAnchor];
  v62 = [v61 constraintEqualToConstant_];

  v63 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackViewWidthConstraint;
  v64 = *&v39[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackViewWidthConstraint];
  *&v39[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackViewWidthConstraint] = v62;

  v118 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_20C1530F0;
  v66 = [*&v39[v40] leadingAnchor];
  v67 = [v39 leadingAnchor];

  v68 = [v66 constraintEqualToAnchor_];
  *(v65 + 32) = v68;
  v69 = [*(*&v39[v40] + OBJC_IVAR____TtC9SeymourUI17PlaybackTrackView_trackLayoutGuide) topAnchor];
  v70 = [v39 &selRef_setLineBreakMode_];

  v116 = &v39[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_layout];
  v71 = [v69 constraintEqualToAnchor:v70 constant:*&v39[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_layout + 48]];

  *(v65 + 40) = v71;
  v72 = *&v39[v63];
  *(v65 + 48) = v72;
  v73 = *&v39[v121];
  v74 = v72;
  v75 = [v73 leadingAnchor];
  v76 = [*&v39[v40] trailingAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v65 + 56) = v77;
  v78 = [*&v39[v121] trailingAnchor];
  v79 = [v39 trailingAnchor];

  v80 = [v78 constraintEqualToAnchor_];
  *(v65 + 64) = v80;
  v81 = [*(*&v39[v121] + OBJC_IVAR____TtC9SeymourUI17PlaybackTrackView_trackLayoutGuide) centerYAnchor];
  v82 = [*(*&v39[v40] + OBJC_IVAR____TtC9SeymourUI17PlaybackTrackView_trackLayoutGuide) centerYAnchor];
  v83 = [v81 &selRef:v82 alertControllerReleasedDictationButton:? + 5];

  *(v65 + 72) = v83;
  v84 = [*&v39[v41] leadingAnchor];
  v85 = [*&v39[v40] leadingAnchor];
  v86 = [v84 &selRef:v85 alertControllerReleasedDictationButton:? + 5];

  *(v65 + 80) = v86;
  v87 = [*&v39[v41] bottomAnchor];
  v88 = [v39 bottomAnchor];

  v89 = [v87 &selRef:v88 alertControllerReleasedDictationButton:? + 5];
  *(v65 + 88) = v89;
  v90 = [*&v39[v41] firstBaselineAnchor];
  v91 = [*&v39[v40] bottomAnchor];
  v92 = [v90 constraintEqualToAnchor:v91 constant:v116[2]];

  *(v65 + 96) = v92;
  v93 = [*&v39[v117] trailingAnchor];
  v94 = [*&v39[v121] trailingAnchor];
  v95 = [v93 constraintEqualToAnchor_];

  *(v65 + 104) = v95;
  v96 = [*&v39[v117] &selRef_secondaryLabel + 5];
  v97 = [v39 &selRef_secondaryLabel + 5];

  v98 = [v96 constraintEqualToAnchor_];
  *(v65 + 112) = v98;
  v99 = [*&v39[v117] firstBaselineAnchor];
  v100 = [*&v39[v121] &selRef_secondaryLabel + 5];
  v101 = [v99 constraintEqualToAnchor:v100 constant:v116[2]];

  *(v65 + 120) = v101;
  v102 = [*&v119[v120] leadingAnchor];
  v103 = [*&v39[v40] leadingAnchor];
  v104 = [v102 constraintEqualToAnchor_];

  *(v65 + 128) = v104;
  v105 = [*&v119[v120] trailingAnchor];
  v106 = [*&v39[v121] trailingAnchor];
  v107 = [v105 constraintEqualToAnchor_];

  *(v65 + 136) = v107;
  v108 = [*&v119[v120] topAnchor];
  v109 = [*&v39[v40] topAnchor];
  v110 = [v108 constraintEqualToAnchor_];

  *(v65 + 144) = v110;
  v111 = [*&v119[v120] &selRef_secondaryLabel + 5];
  v112 = [*&v39[v40] &selRef_secondaryLabel + 5];
  v113 = [v111 constraintEqualToAnchor_];

  *(v65 + 152) = v113;
  sub_20B5E29D0();
  v114 = sub_20C13CC54();

  [v118 activateConstraints_];

  return v39;
}

void sub_20BF7DB94()
{
  v1 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTimeLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeLabelBottomConstraint;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v6 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackViewWidthConstraint;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v7 = v0 + OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_layout;
  *v7 = xmmword_20C186700;
  *(v7 + 16) = xmmword_20C186710;
  *(v7 + 32) = xmmword_20C186720;
  *(v7 + 48) = 0x4024000000000000;
  v8 = (v0 + OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_style);
  v9 = *MEMORY[0x277D76828];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 whiteColor];
  v13 = [v12 colorWithAlphaComponent_];

  v14 = *MEMORY[0x277D74410];
  v15 = [v10 whiteColor];
  v16 = [v15 colorWithAlphaComponent_];

  *v8 = 5;
  v8[1] = v11;
  v8[2] = v13;
  v8[3] = 10;
  v8[4] = 0x4026000000000000;
  v8[5] = v14;
  v8[6] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_trackContainer;
  v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v17) = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTimeFormatter;
  v20 = [objc_allocWithZone(SMUTimeFormatter) init];
  [v20 setStyle_];
  *(v0 + v19) = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_remainingTimeFormatter;
  v22 = [objc_allocWithZone(SMUTimeFormatter) init];
  [v22 setStyle_];
  *(v0 + v21) = v22;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20BF7DE50()
{
  result = qword_27C770FB8;
  if (!qword_27C770FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770FB8);
  }

  return result;
}

unint64_t sub_20BF7DEA8()
{
  result = qword_27C770FC0;
  if (!qword_27C770FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770FC0);
  }

  return result;
}

unint64_t sub_20BF7DF00()
{
  result = qword_27C770FC8;
  if (!qword_27C770FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770FC8);
  }

  return result;
}

unint64_t sub_20BF7DF58()
{
  result = qword_27C770FD0;
  if (!qword_27C770FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770FD0);
  }

  return result;
}

id sub_20BF7DFB0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_20C13C914();
  v5 = [v3 BOOLForKey_];

  return v5;
}

void sub_20BF7DFF8(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_20C13C914();
  [v5 setBool:a1 & 1 forKey:v6];
}

void sub_20BF7E060()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764218, &qword_20C155D60);
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v69 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v22 = &v59 - v21;
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_activationState) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_activationState) = 1;
    v60 = v9;
    v61 = v8;
    v23 = *(v1 + 192);
    v64 = v20;
    v65 = v17;
    v62 = v19;
    v63 = v18;
    __swift_project_boxed_opaque_existential_1((v1 + 168), v23);
    v66 = v22;
    v59 = v7;
    sub_20C13A054();
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_20BF81464;
    *(v25 + 24) = v24;
    v26 = v67;
    v27 = v7;
    v28 = v68;
    (*(v67 + 16))(v4, v27, v68);
    v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v30 = (v3 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v26 + 32))(v31 + v29, v4, v28);
    v32 = (v31 + v30);
    *v32 = sub_20BEBDF48;
    v32[1] = v25;
    v33 = v70;
    sub_20C137C94();
    (*(v26 + 8))(v59, v28);
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_20BF814A8;
    *(v35 + 24) = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_20B5D9CB0;
    *(v36 + 24) = v35;
    v37 = v60;
    v38 = v61;
    v39 = v69;
    (*(v60 + 16))(v69, v33, v61);
    v40 = v37;
    v41 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v42 = swift_allocObject();
    (*(v40 + 32))(v42 + v41, v39, v38);
    v43 = (v42 + ((v10 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v43 = sub_20B5D9CCC;
    v43[1] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
    v44 = v62;
    sub_20C137C94();
    (*(v40 + 8))(v70, v38);
    v45 = swift_allocObject();
    swift_weakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_20BF814D8;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_20BB2A35C;
    *(v47 + 24) = v46;
    v48 = v63;
    v49 = v64;
    v50 = v65;
    (*(v63 + 16))(v64, v44, v65);
    v51 = v48;
    v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v53 = swift_allocObject();
    (*(v51 + 32))(v53 + v52, v49, v50);
    v54 = (v53 + ((v14 + v52 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v54 = sub_20B9CF870;
    v54[1] = v47;
    v55 = v66;
    sub_20C137C94();
    v56 = *(v51 + 8);
    v56(v44, v50);
    v57 = sub_20C137CB4();
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    v57(sub_20B52347C, v58);

    v56(v55, v50);
  }
}

void *sub_20BF7E770()
{
  sub_20B583E6C((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 34);
  __swift_destroy_boxed_opaque_existential_1(v0 + 39);

  __swift_destroy_boxed_opaque_existential_1(v0 + 45);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_configuration, &qword_27C761800, &qword_20C14FDA0);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_trainer, &qword_27C7671C0, &qword_20C18A9F0);

  return v0;
}

uint64_t sub_20BF7E8D8()
{
  sub_20BF7E770();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrainerPageDataProvider(uint64_t a1)
{
  result = qword_27C771018;
  if (!qword_27C771018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF7E984(uint64_t a1)
{
  sub_20BF7EB0C(319, &qword_281103BF0, MEMORY[0x277D50560]);
  if (v1 <= 0x3F)
  {
    sub_20BF7EB0C(319, &qword_27C771028, MEMORY[0x277D53B20]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BF7EB0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BF7EB60@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v31 - v5;
  v6 = sub_20C137F24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7671C0, &qword_20C18A9F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  v33 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_selectedFilterShelf);
  v19 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filter;
  swift_beginAccess();
  v20 = sub_20C133E24();
  (*(*(v20 - 8) + 16))(v17, v18 + v19, v20);
  v21 = *MEMORY[0x277D51858];
  v22 = sub_20C1352F4();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v17, v21, v22);
  (*(v23 + 56))(v17, 0, 1, v22);
  v24 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_trainer;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v24, v11, &qword_27C7671C0, &qword_20C18A9F0);
  if ((*(v7 + 48))(v11, 1, v6))
  {

    sub_20B520158(v11, &qword_27C7671C0, &qword_20C18A9F0);
    v25 = 1;
  }

  else
  {
    v26 = v32;
    (*(v7 + 16))(v32, v11, v6);

    sub_20B520158(v11, &qword_27C7671C0, &qword_20C18A9F0);
    sub_20C137EC4();
    (*(v7 + 8))(v26, v6);
    v25 = 0;
  }

  v27 = sub_20C132C14();
  (*(*(v27 - 8) + 56))(v14, v25, 1, v27);
  v28 = sub_20C135ED4();
  (*(*(v28 - 8) + 56))(v34, 1, 1, v28);
  v29 = sub_20C136914();
  (*(*(v29 - 8) + 56))(v35, 1, 1, v29);

  return sub_20C133384();
}

double sub_20BF7F0D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BF7F144(a1);
  }

  return result;
}

void sub_20BF7F144(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1333A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7671C0, &qword_20C18A9F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-v9];
  sub_20C134204();
  v11 = sub_20C137F24();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_trainer;
  swift_beginAccess();
  sub_20BF815D0(v10, v2 + v12);
  swift_endAccess();
  v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page);
  v17 = v2;
  v18 = a1;
  v14 = v13;
  sub_20C0C19E0(1, sub_20BF81640, v16);

  v15 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_shouldPublishPageEventWhenAvailable;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_shouldPublishPageEventWhenAvailable) == 1)
  {
    v19 = v2;
    sub_20BF7EB60(v7);
    type metadata accessor for TrainerPageDataProvider(0);
    sub_20BF81648(&qword_27C7671C8, type metadata accessor for TrainerPageDataProvider, &unk_20C186B38);
    sub_20C138C54();
    (*(v5 + 8))(v7, v4);
    *(v2 + v15) = 0;
  }
}

BOOL sub_20BF7F394(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v6 = Strong;
  if (Strong)
  {
    sub_20B51CC64(Strong + 168, v10);

    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_20C135E34();
    sub_20C139FB4();
    v7 = sub_20C137CB4();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v7(sub_20B52347C, v8);

    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return v6 == 0;
}

double sub_20BF7F53C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BF7F59C(a1);
  }

  return result;
}

double sub_20BF7F59C(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v14(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    sub_20BB5D394((v15 > 1), v8, 1);
    v38 = v87[0];
    goto LABEL_6;
  }

  sub_20C13B534();
  v16 = a1;
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v77 = v4;
    v21 = v20;
    v90[0] = v20;
    *v19 = 136446210;
    swift_getErrorValue();
    v22 = MEMORY[0x20F2F5850](v78, v79);
    v24 = sub_20B51E694(v22, v23, v90);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_20B517000, v17, v18, "TrainerPageDataProvider failed to fetch remote content with %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x20F2F6A40](v21, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v5 + 8))(v7, v77);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for LoadingErrorShelf(0);
  swift_allocObject();

  v11 = sub_20BEFE8F4(v25, 0, 0);

  v26 = v2[5];
  v76 = v2[4];
  v77 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page;
  v27 = *(v2 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page);
  v28 = *(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51CC64(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v90);
  v75 = v26;

  v73 = v28;
  v72 = sub_20C1380F4();
  v13 = type metadata accessor for MetricLocationStore();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F98];
  *(v29 + 16) = MEMORY[0x277D84F90];
  *(v29 + 24) = v31;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  v74 = v71;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = (v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v37 = *v35;
  v4 = type metadata accessor for CatalogPageImpressionTracker();
  v89[3] = v4;
  v7 = sub_20BF81648(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v89[4] = v7;
  v89[0] = v37;
  v88[3] = v13;
  v88[4] = &off_2822B6968;
  v88[0] = v29;
  v87[0] = v30;
  sub_20BB5D394(0, 1, 0);
  v38 = v87[0];
  v5 = *(v87[0] + 16);
  v15 = *(v87[0] + 24);
  v8 = v5 + 1;
  if (v5 >= v15 >> 1)
  {
    goto LABEL_11;
  }

LABEL_6:
  *(v38 + 16) = v8;
  v39 = v38 + 24 * v5;
  *(v39 + 32) = v11;
  *(v39 + 40) = &off_2822F4EF0;
  *(v39 + 48) = 0;
  sub_20B51CC64(v89, v87);
  sub_20B51CC64(v88, v86);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v87, v87[3]);
  v71[0] = v71;
  v41 = MEMORY[0x28223BE20](v40);
  v71[1] = v11;
  v43 = (v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v86, v86[3]);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = *v43;
  v51 = *v48;
  v84 = v4;
  v85 = v7;
  v83[0] = v50;
  v81 = v13;
  v82 = &off_2822B6968;
  v80[0] = v51;
  v52 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v54 = MEMORY[0x28223BE20](v53);
  v56 = (v71 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56, v54);
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (v71 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = sub_20BE3AA74(v76, v75, v38, v72, v73, *v56, *v61, 2, v52);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v90);
  v64 = v77;
  v65 = *(v2 + v77);
  *(v2 + v77) = v63;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v66 = v2[3];
    ObjectType = swift_getObjectType();
    v91 = type metadata accessor for TrainerPageDataProvider(0);
    v92 = &off_2822FAAC0;
    v90[0] = v2;
    v68 = *(v2 + v64);

    v69 = v68;
    sub_20B76FFF8(v90, v69, ObjectType, v66);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  else
  {
  }

  return result;
}

uint64_t sub_20BF7FE74(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0, &unk_20C14FE50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_20C137F24();
  v33 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterHeaderShelf);
  sub_20C134204();
  v16 = sub_20C137F04();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v14, v8);
  v20 = v19;
  v21 = (v15 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_title);
  *v21 = v16;
  v21[1] = v18;

  sub_20C0578C4(1);
  v22 = v32;
  sub_20B944970(v32);
  sub_20C134204();
  sub_20C137F14();
  v23 = v33;
  v20(v11, v33);
  v24 = sub_20C134284();
  LODWORD(v16) = (*(*(v24 - 8) + 48))(v7, 1, v24) == 1;
  sub_20B520158(v7, &unk_27C7623C0, &unk_20C14FE50);
  sub_20BFB4D40(v22, v16);
  sub_20BE99FA8();
  *(*(a1 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterResultHeaderShelf) + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_hasDetail) = 1;
  sub_20BAC3D84();
  sub_20C134204();
  v25 = sub_20C137F04();
  v27 = v26;
  v20(v14, v23);
  v28 = sub_20C134734();
  v29 = v34;
  (*(*(v28 - 8) + 56))(v34, 1, 1, v28);
  sub_20B8437C4(v25, v27, v29);

  return sub_20B520158(v29, &unk_27C7710A0, &unk_20C156800);
}

uint64_t sub_20BF80264@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800, &qword_20C14FDA0);
}

uint64_t sub_20BF802CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v8 - 8);
  v138 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0, &unk_20C1643C0);
  MEMORY[0x28223BE20](v10 - 8);
  v139 = &v130 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v130 - v13);
  v143 = sub_20C134EC4();
  v15 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v17 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v130 - v19;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v21 = MEMORY[0x277D84FA0];
  *(v4 + 400) = MEMORY[0x277D84FA0];
  *(v4 + 408) = v21;
  *(v4 + 416) = v21;
  *(v4 + 424) = v21;
  *(v4 + 432) = MEMORY[0x277D84F90];
  v22 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_configuration;
  v23 = sub_20C134104();
  (*(*(v23 - 8) + 56))(v4 + v22, 1, 1, v23);
  *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_activationState) = 0;
  v24 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_trainer;
  v25 = sub_20C137F24();
  (*(*(v25 - 8) + 56))(v4 + v24, 1, 1, v25);
  *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_shouldPublishPageEventWhenAvailable) = 0;
  *v14 = a1;
  v14[1] = a2;
  v26 = sub_20C135C84();
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v14, 0, 1, v26);

  sub_20C13CA04();
  sub_20C134E94();
  v141 = a1;
  v142 = a2;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 248) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40, &unk_20C14D9E0);
  sub_20C133AA4();
  sub_20B51C710(v168, v4 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  sub_20B51C710(v168, v4 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(v168, v4 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v168, v4 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(v168, v4 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v4 + 256) = v168[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(v168, v4 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v168, v4 + 312);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + 352) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(v168, v4 + 360);
  type metadata accessor for ArtworkHeaderShelf(0);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v28 = OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_artwork;
  v29 = sub_20C137C24();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  v30 = (v27 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_cropCode);
  *v30 = 0;
  v30[1] = 0;
  v31 = v27 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row;
  sub_20B5D8060(v168);
  v32 = v168[9];
  *(v31 + 128) = v168[8];
  *(v31 + 144) = v32;
  *(v31 + 160) = v169;
  v33 = v168[5];
  *(v31 + 64) = v168[4];
  *(v31 + 80) = v33;
  v34 = v168[7];
  *(v31 + 96) = v168[6];
  *(v31 + 112) = v34;
  v35 = v168[1];
  *v31 = v168[0];
  *(v31 + 16) = v35;
  v36 = v168[3];
  *(v31 + 32) = v168[2];
  *(v31 + 48) = v36;
  *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_artworkShelf) = v27;
  v37 = v15;
  v38 = *(v15 + 16);
  v39 = v143;
  v38(v17, v20, v143);
  type metadata accessor for FilterDetailHeaderShelf(0);
  swift_allocObject();

  v41 = sub_20C058B20(v40, v17, 1);

  *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterHeaderShelf) = v41;
  v42 = v139;
  v38(v139, v20, v39);
  v140 = v37;
  (*(v37 + 56))(v42, 0, 1, v39);
  type metadata accessor for ExpandingTextShelf(0);
  swift_allocObject();

  v44 = sub_20BFBE714(v43, v42);

  *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_bioShelf) = v44;
  v38(v17, v20, v39);
  type metadata accessor for FilterResultHeaderShelf(0);
  swift_allocObject();

  v46 = sub_20BAC4F80(v45, v17, 1);

  *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterResultHeaderShelf) = v46;
  v38(v17, v20, v39);
  type metadata accessor for SelectedFilterShelf(0);
  swift_allocObject();

  v48 = sub_20B9585A8(v47, v17);

  *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_selectedFilterShelf) = v48;
  v139 = v20;
  v38(v17, v20, v39);
  type metadata accessor for FilterResultShelf(0);
  swift_allocObject();

  *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterResultShelf) = sub_20B84152C(v49, v17, 1u);

  v50 = sub_20C13CA04();
  v52 = v51;
  type metadata accessor for PreviewVideoLinkShelf(0);
  swift_allocObject();
  v53 = sub_20BE9B2CC(a3, v50, v52);

  *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_previewVideoLinkShelf) = v53;
  *&v155 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_artworkShelf);
  *(&v155 + 1) = &off_2822B81D0;
  v54 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterHeaderShelf);
  v55 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_bioShelf);
  v156 = v54;
  v157 = &off_282302FB0;
  v158 = v55;
  v159 = &off_2822FC7E0;
  v160 = v53;
  v161 = &off_2822F1D40;
  v57 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_selectedFilterShelf);
  v162 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterResultHeaderShelf);
  v56 = v162;
  v163 = &off_2822C9690;
  v164 = v57;
  v165 = &off_2822B8970;
  v166 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterResultShelf);
  v58 = v166;
  v167 = &off_2822AC930;

  v131 = v53;

  v132 = v56;

  v134 = v57;

  v135 = v58;

  v137 = sub_20C1380F4();
  v59 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v136 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v59 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v60 = sub_20C13C724();
  v61 = type metadata accessor for CatalogPageImpressionTracker();
  v62 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v63 = MEMORY[0x277D221C0];
  v62[2] = sub_20C13C6D4();
  v62[3] = v60;
  v62[4] = v63;
  v154[3] = v61;
  v64 = sub_20BF81648(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v154[4] = v64;
  v154[0] = v62;
  v65 = type metadata accessor for MetricLocationStore();
  v66 = swift_allocObject();
  v67 = MEMORY[0x277D84F98];
  v68 = MEMORY[0x277D84F90];
  *(v66 + 16) = MEMORY[0x277D84F90];
  *(v66 + 24) = v67;
  v69 = __swift_mutable_project_boxed_opaque_existential_1(v154, v61);
  v70 = MEMORY[0x28223BE20](v69);
  v72 = (&v130 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v73 + 16))(v72, v70);
  v74 = *v72;
  v138 = v64;
  v153[3] = v61;
  v153[4] = v64;
  v153[0] = v74;
  v152[3] = v65;
  v152[4] = &off_2822B6968;
  v133 = v65;
  v152[0] = v66;
  v151[0] = v68;
  sub_20BB5D394(0, 7, 0);
  v75 = v151[0];
  v77 = *(v151[0] + 16);
  v76 = *(v151[0] + 24);
  v78 = v77 + 1;
  v130 = v155;
  swift_unknownObjectRetain();
  if (v77 >= v76 >> 1)
  {
    sub_20BB5D394((v76 > 1), v77 + 1, 1);
    v75 = v151[0];
  }

  *(v75 + 16) = v78;
  v79 = v75 + 24 * v77;
  *(v79 + 32) = v130;
  *(v79 + 48) = 0;
  v80 = *(v75 + 24);
  v81 = v77 + 2;
  swift_unknownObjectRetain();
  if ((v77 + 2) > (v80 >> 1))
  {
    sub_20BB5D394((v80 > 1), v77 + 2, 1);
    v75 = v151[0];
  }

  *(v75 + 16) = v81;
  v82 = v75 + 24 * v78;
  *(v82 + 32) = v54;
  *(v82 + 40) = &off_282302FB0;
  *(v82 + 48) = 0;
  v83 = *(v75 + 24);
  v84 = v77 + 3;
  swift_unknownObjectRetain();
  if ((v77 + 3) > (v83 >> 1))
  {
    sub_20BB5D394((v83 > 1), v77 + 3, 1);
  }

  v85 = v151[0];
  *(v151[0] + 16) = v84;
  v86 = v85 + 24 * v81;
  *(v86 + 32) = v55;
  *(v86 + 40) = &off_2822FC7E0;
  *(v86 + 48) = 0;
  v87 = *(v85 + 24);
  v88 = v77 + 4;
  v89 = v131;
  swift_unknownObjectRetain();
  v90 = v132;
  if ((v77 + 4) > (v87 >> 1))
  {
    sub_20BB5D394((v87 > 1), v77 + 4, 1);
    v85 = v151[0];
  }

  *(v85 + 16) = v88;
  v91 = v85 + 24 * v84;
  *(v91 + 32) = v89;
  *(v91 + 40) = &off_2822F1D40;
  *(v91 + 48) = 0;
  v92 = *(v85 + 24);
  v93 = v77 + 5;
  swift_unknownObjectRetain();
  if ((v77 + 5) > (v92 >> 1))
  {
    sub_20BB5D394((v92 > 1), v77 + 5, 1);
    v85 = v151[0];
  }

  *(v85 + 16) = v93;
  v94 = v85 + 24 * v88;
  *(v94 + 32) = v90;
  *(v94 + 40) = &off_2822C9690;
  *(v94 + 48) = 0;
  v95 = *(v85 + 24);
  v96 = v77 + 6;
  v97 = v134;
  swift_unknownObjectRetain();
  if ((v77 + 6) > (v95 >> 1))
  {
    sub_20BB5D394((v95 > 1), v77 + 6, 1);
  }

  v98 = v151[0];
  *(v151[0] + 16) = v96;
  v99 = v98 + 24 * v93;
  *(v99 + 32) = v97;
  *(v99 + 40) = &off_2822B8970;
  *(v99 + 48) = 0;
  v100 = *(v98 + 24);
  v101 = v77 + 7;
  v102 = v135;
  swift_unknownObjectRetain();
  if (v101 > (v100 >> 1))
  {
    sub_20BB5D394((v100 > 1), v101, 1);
    v98 = v151[0];
  }

  *(v98 + 16) = v101;
  v103 = v98 + 24 * v96;
  *(v103 + 32) = v102;
  *(v103 + 40) = &off_2822AC930;
  *(v103 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0, &unk_20C15C100);
  swift_arrayDestroy();
  sub_20B51CC64(v153, v151);
  sub_20B51CC64(v152, v150);
  v104 = __swift_mutable_project_boxed_opaque_existential_1(v151, v151[3]);
  v135 = &v130;
  v105 = MEMORY[0x28223BE20](v104);
  v107 = (&v130 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v108 + 16))(v107, v105);
  v109 = __swift_mutable_project_boxed_opaque_existential_1(v150, v150[3]);
  v110 = MEMORY[0x28223BE20](v109);
  v112 = (&v130 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v113 + 16))(v112, v110);
  v114 = *v107;
  v115 = *v112;
  v148 = v61;
  v149 = v138;
  v147[0] = v114;
  v145 = v133;
  v146 = &off_2822B6968;
  v144[0] = v115;
  v116 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v117 = __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
  v118 = MEMORY[0x28223BE20](v117);
  v120 = (&v130 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v121 + 16))(v120, v118);
  v122 = __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
  v123 = MEMORY[0x28223BE20](v122);
  v125 = (&v130 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v126 + 16))(v125, v123);
  v127 = sub_20BE3AA74(v141, v142, v98, v137, v136, *v120, *v125, 2, v116);
  __swift_destroy_boxed_opaque_existential_1(v152);
  __swift_destroy_boxed_opaque_existential_1(v153);
  __swift_destroy_boxed_opaque_existential_1(v144);
  __swift_destroy_boxed_opaque_existential_1(v147);
  __swift_destroy_boxed_opaque_existential_1(v150);
  __swift_destroy_boxed_opaque_existential_1(v151);
  __swift_destroy_boxed_opaque_existential_1(v154);
  *(v4 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page) = v127;
  v128 = sub_20BE12408();
  (*(v140 + 8))(v139, v143, v128);
  return v4;
}

uint64_t sub_20BF81508(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BF815D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7671C0, &qword_20C18A9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BF81648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_20BF81694(uint64_t a1)
{
  v28 = a1;
  v2 = sub_20C138214();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_20C135544();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v26 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = *(v10 + 16);
  v27 = v1;
  v16(&v26 - v14, v1, v9, v13);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == *MEMORY[0x277D51A60])
  {
    (*(v10 + 96))(v15, v9);
    (*(v3 + 32))(v8, v15, v2);
    (*(v3 + 16))(v5, v8, v2);
    v18 = (*(v3 + 88))(v5, v2);
    if (v18 == *MEMORY[0x277D53DC8])
    {
      v19 = v26;
      (v16)(v26, v27, v9);
      sub_20B51CC64(v28, v29);
      v20 = objc_allocWithZone(type metadata accessor for ContentRatingSystemSymbolDescriptionView(0));
      v21 = sub_20BD03C7C(v19, v29);
      (*(v3 + 8))(v8, v2);
      return v21;
    }

    v23 = v18;
    v24 = *MEMORY[0x277D53DD0];
    v25 = *(v3 + 8);
    v25(v8, v2);
    if (v23 != v24)
    {
      v25(v5, v2);
    }
  }

  else if (v17 != *MEMORY[0x277D51A68])
  {
    (*(v10 + 8))(v15, v9);
  }

  return 0;
}

uint64_t sub_20BF819C8()
{
  v1 = v0;
  v2 = sub_20C138214();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_20C135544();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v1, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277D51A60])
  {
    (*(v10 + 96))(v13, v9);
    (*(v3 + 32))(v8, v13, v2);
    (*(v3 + 16))(v5, v8, v2);
    v15 = (*(v3 + 88))(v5, v2);
    if (v15 == *MEMORY[0x277D53DC8])
    {
      (*(v3 + 8))(v8, v2);
      return 85;
    }

    v17 = v15;
    v18 = *MEMORY[0x277D53DD0];
    v19 = *(v3 + 8);
    v19(v8, v2);
    if (v17 != v18)
    {
      v19(v5, v2);
    }
  }

  else if (v14 != *MEMORY[0x277D51A68])
  {
    (*(v10 + 8))(v13, v9);
  }

  return 0;
}

unint64_t sub_20BF81C8C()
{
  v1 = v0;
  v2 = sub_20C138214();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_20C135544();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v1, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277D51A60])
  {
    (*(v10 + 96))(v13, v9);
    (*(v3 + 32))(v8, v13, v2);
    (*(v3 + 16))(v5, v8, v2);
    v15 = (*(v3 + 88))(v5, v2);
    v16 = *(v3 + 8);
    if (v15 == *MEMORY[0x277D53DC8])
    {
      v16(v8, v2);
      return 0xD00000000000001DLL;
    }

    v18 = v15;
    v19 = *MEMORY[0x277D53DD0];
    v16(v8, v2);
    if (v18 != v19)
    {
      v16(v5, v2);
    }
  }

  else if (v14 != *MEMORY[0x277D51A68])
  {
    (*(v10 + 8))(v13, v9);
  }

  return 0;
}

char *sub_20BF81F60(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_layout];
  *v11 = xmmword_20C186B90;
  *(v11 + 2) = 0x4014000000000000;
  v12 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_labelGuide;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v13 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_bannerMessageImageView;
  v144 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_bannerMessageImageView;
  type metadata accessor for NoIntrinsicImageView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v14 setBackgroundColor_];

  [v14 setClipsToBounds_];
  [v14 setContentMode_];

  *&v4[v13] = v14;
  v17 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_playButton;
  type metadata accessor for PlayButton();
  v18 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setUserInteractionEnabled_];

  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_subtitleLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = [v15 whiteColor];
  [v20 setTextColor_];

  [v20 setNumberOfLines_];
  [v20 setLineBreakMode_];
  *&v4[v19] = v20;
  v22 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_titleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v24 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v23 setTextColor_];

  [v23 setNumberOfLines_];
  *&v4[v22] = v23;
  v25 = &v4[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_oldSize];
  v26 = type metadata accessor for ArtworkView(0);
  *v25 = 0;
  *(v25 + 1) = 0;
  v27 = [objc_allocWithZone(v26) initWithFrame_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = &v4[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkView];
  *v28 = v27;
  *(v28 + 1) = &off_2822B63E8;
  v29 = type metadata accessor for EngagementBannerBackgroundView();
  v30 = objc_allocWithZone(v29);
  v31 = v27;
  *&v4[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkBackgroundView] = sub_20BF84F78(v31, v30, &off_2822AA018);
  *&v4[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_bannerMessageBackgroundView] = sub_20BF84F78(*&v4[v144], objc_allocWithZone(v29), &off_2822A9FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771038, qword_20C186C90);
  v32 = swift_allocObject();
  v32[2] = MEMORY[0x277D84F98];
  v32[3] = sub_20BF83150;
  v32[4] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_labelFontUpdater] = v32;
  v147.receiver = v4;
  v147.super_class = type metadata accessor for MarketingHeaderBannerCell(0);
  v33 = objc_msgSendSuper2(&v147, sel_initWithFrame_, a1, a2, a3, a4);
  sub_20BF84868();
  v34 = v33;
  v35 = [v15 systemBackgroundColor];
  [v34 setBackgroundColor_];

  v36 = [v34 contentView];
  v142 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_labelGuide;
  [v36 addLayoutGuide_];

  v37 = [v34 contentView];
  v38 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkBackgroundView;
  [v37 addSubview_];

  v39 = [v34 contentView];
  v40 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_bannerMessageBackgroundView;
  [v39 addSubview_];

  v41 = [v34 contentView];
  v42 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_playButton;
  [v41 addSubview_];

  v43 = [v34 contentView];
  v145 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_subtitleLabel;
  [v43 addSubview_];

  v44 = [v34 contentView];
  v141 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_titleLabel;
  [v44 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20C186BA0;
  v46 = [v34 contentView];
  v47 = [v46 heightAnchor];

  v48 = [v34 contentView];
  v49 = [v48 widthAnchor];

  v50 = sub_20C1380F4();
  v143 = v31;
  v140 = v42;
  if (v50)
  {
    if (v50 != 1)
    {
      goto LABEL_18;
    }

    v51 = 0.2;
  }

  else
  {
    v51 = 0.4;
  }

  v52 = [v47 constraintEqualToAnchor:v49 multiplier:v51];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v53) = v146;
  [v52 setPriority_];
  *(v45 + 32) = v52;
  v54 = [*&v34[v38] leftAnchor];
  v55 = [v34 contentView];
  v56 = [v55 leftAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v45 + 40) = v57;
  v58 = [*&v34[v38] rightAnchor];
  v59 = [v34 contentView];
  v60 = [v59 rightAnchor];

  v61 = [v58 constraintEqualToAnchor_];
  *(v45 + 48) = v61;
  v62 = [*&v34[v38] topAnchor];
  v63 = [v34 contentView];
  v64 = [v63 topAnchor];

  v65 = [v62 constraintEqualToAnchor_];
  *(v45 + 56) = v65;
  v66 = [*&v34[v38] bottomAnchor];
  v67 = [v34 contentView];
  v68 = [v67 &selRef_secondaryLabel + 5];

  v69 = [v66 constraintEqualToAnchor_];
  *(v45 + 64) = v69;
  v70 = [*&v34[v40] leftAnchor];
  v71 = [v34 contentView];
  v72 = [v71 leftAnchor];

  v73 = [v70 constraintEqualToAnchor_];
  *(v45 + 72) = v73;
  v74 = [*&v34[v40] rightAnchor];
  v75 = [v34 contentView];
  v76 = [v75 rightAnchor];

  v77 = [v74 constraintEqualToAnchor_];
  *(v45 + 80) = v77;
  v78 = [*&v34[v40] topAnchor];
  v79 = [v34 contentView];
  v80 = [v79 topAnchor];

  v81 = [v78 constraintEqualToAnchor_];
  *(v45 + 88) = v81;
  v82 = [*&v34[v40] bottomAnchor];
  v83 = [v34 contentView];
  v84 = [v83 bottomAnchor];

  v85 = [v82 constraintEqualToAnchor_];
  *(v45 + 96) = v85;
  v86 = [*&v34[v140] rightAnchor];
  v87 = [v34 contentView];
  v88 = [v87 rightAnchor];

  v89 = [v86 constraintEqualToAnchor:v88 constant:-15.0];
  *(v45 + 104) = v89;
  v90 = [*&v34[v140] bottomAnchor];
  v91 = [v34 contentView];
  v92 = [v91 bottomAnchor];

  v93 = [v90 constraintEqualToAnchor:v92 constant:-15.0];
  *(v45 + 112) = v93;
  v94 = [*&v34[v140] widthAnchor];
  v95 = [v94 constraintEqualToConstant_];

  sub_20C13BBA4();
  LODWORD(v96) = v146;
  [v95 setPriority_];
  *(v45 + 120) = v95;
  v97 = [*&v34[v140] heightAnchor];
  v98 = [v97 constraintEqualToConstant_];

  sub_20C13BBA4();
  LODWORD(v99) = v146;
  [v98 setPriority_];
  *(v45 + 128) = v98;
  v100 = [*&v34[v142] widthAnchor];
  v101 = [v34 contentView];
  v102 = [v101 widthAnchor];

  v103 = sub_20C1380F4();
  v104 = 0.5;
  if (v103)
  {
    if (v103 != 1)
    {
      goto LABEL_18;
    }

    v104 = 0.6;
  }

  v105 = [v100 constraintEqualToAnchor:v102 multiplier:v104];

  *(v45 + 136) = v105;
  v106 = [*&v34[v142] rightAnchor];
  v107 = [v34 contentView];
  v108 = [v107 rightAnchor];

  v109 = [v106 constraintEqualToAnchor_];
  *(v45 + 144) = v109;
  v110 = [*&v34[v141] topAnchor];
  v111 = [v34 contentView];
  v112 = [v111 topAnchor];

  v113 = sub_20C1380F4();
  v114 = 10.0;
  v115 = 10.0;
  if (v113)
  {
    if (v113 != 1)
    {
      goto LABEL_18;
    }

    v115 = 15.0;
  }

  v116 = [v110 constraintEqualToAnchor:v112 constant:v115];

  *(v45 + 152) = v116;
  v117 = [*&v34[v141] leftAnchor];
  v118 = [v34 contentView];
  v119 = [v118 leftAnchor];

  v120 = sub_20C1380F4();
  if (v120)
  {
    if (v120 != 1)
    {
      goto LABEL_18;
    }

    v114 = 15.0;
  }

  v121 = [v117 constraintEqualToAnchor:v119 constant:v114];

  *(v45 + 160) = v121;
  v122 = [*&v34[v141] rightAnchor];
  v123 = [*&v34[v142] leftAnchor];
  v124 = [v122 constraintEqualToAnchor_];

  *(v45 + 168) = v124;
  v125 = [*&v34[v145] topAnchor];
  v126 = [*&v34[v141] bottomAnchor];
  v127 = [v125 constraintEqualToAnchor:v126 constant:5.0];

  *(v45 + 176) = v127;
  v128 = [*&v34[v145] leftAnchor];
  v129 = [v34 contentView];

  v130 = [v129 leftAnchor];
  v131 = 10.0;
  v132 = sub_20C1380F4();
  if (!v132)
  {
LABEL_17:
    v133 = objc_opt_self();
    v134 = [v128 constraintEqualToAnchor:v130 constant:v131];

    *(v45 + 184) = v134;
    v135 = [*&v34[v145] rightAnchor];
    v136 = [*&v34[v142] leftAnchor];
    v137 = [v135 constraintEqualToAnchor_];

    *(v45 + 192) = v137;
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v138 = sub_20C13CC54();

    [v133 activateConstraints_];

    return v34;
  }

  if (v132 == 1)
  {
    v131 = 15.0;
    goto LABEL_17;
  }

LABEL_18:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BF833B0(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for MarketingHeaderBannerCell(0);
  objc_msgSendSuper2(&v17, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  swift_unknownObjectUnownedInit();
  if (v3)
  {
    v4 = v3;
    v5 = [v4 preferredContentSizeCategory];
    v6 = [v1 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v8 = sub_20C13C954();
    v10 = v9;
    if (v8 == sub_20C13C954() && v10 == v11)
    {
    }

    else
    {
      v13 = sub_20C13DFF4();

      if ((v13 & 1) == 0)
      {
        v14 = [v1 traitCollection];
        sub_20BF83560(v14, v16);
      }
    }
  }

  else
  {
    v4 = [v1 traitCollection];
    sub_20BF83560(v4, v16);
  }

  return swift_unknownObjectUnownedDestroy();
}

void sub_20BF83560(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_labelFontUpdater];

  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = *(*(v4 + 48) + 8 * v12);
    v14 = *(v4 + 56) + 56 * v12;
    v16 = *(v14 + 16);
    v15 = *(v14 + 32);
    v17 = *v14;
    v24 = *(v14 + 48);
    v23[1] = v16;
    v23[2] = v15;
    v23[0] = v17;
    v18 = v13;
    sub_20B7B2490(v23, v22);
    v19 = sub_20B7C6A74(a1);
    v20 = *(v3 + 24);

    v20(v18, v19);

    sub_20B7B24EC(v23);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_20BF83768(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v148 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v146 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v147 = &v130 - v7;
  v145 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v130 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v12 - 8);
  v155 = &v130 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v158 = *(v14 - 8);
  v159 = v14;
  MEMORY[0x28223BE20](v14);
  v144 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v15;
  MEMORY[0x28223BE20](v16);
  v156 = &v130 - v17;
  v153 = sub_20C1391C4();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v154 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C138A64();
  v157 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v160 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v21 - 8);
  v151 = &v130 - v22;
  v167 = sub_20C137C24();
  v163 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v162 = v23;
  v166 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20C13C554();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  [*(v1 + OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkBackgroundView) setHidden_];
  [*(v1 + OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_bannerMessageBackgroundView) setHidden_];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v169 = v29;
  swift_retain_n();
  v165 = sub_20C138044();
  v168 = v30;
  v164 = sub_20C138054();
  v32 = v31;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  *v28 = sub_20C13D374();
  (*(v25 + 104))(v28, *MEMORY[0x277D85200], v24);
  v33 = sub_20C13C584();
  (*(v25 + 8))(v28, v24);
  if (v33)
  {
    v35 = *(v2 + OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkView);
    v34 = *(v2 + OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkView + 8);
    ObjectType = swift_getObjectType();
    [v35 setContentMode_];
    if ((sub_20BA66C54() & 1) != 0 && (v130 = v11, v133 = v19, v131 = v4, v37 = swift_allocObject(), v136 = v2, swift_unknownObjectWeakInit(), v142 = v34, v141 = v35, v38 = v163, v39 = *(v163 + 16), v40 = v166, v150 = ObjectType, v41 = v167, v138 = v163 + 16, v137 = v39, v39(v166, a1, v167), v42 = *(v38 + 80), v43 = (v42 + 24) & ~v42, v132 = v162 + 7, v161 = v32, v44 = (v162 + 7 + v43) & 0xFFFFFFFFFFFFFFF8, v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8, v46 = a1, v47 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8, v140 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8, v139 = v42, v48 = swift_allocObject(), v149 = v46, v49 = v48, *(v48 + 16) = v37, v50 = v38, v51 = v142, v135 = *(v50 + 32), v134 = v50 + 32, v135(v48 + v43, v40, v41), v52 = (v49 + v44), v53 = v164, v54 = v168, v55 = v169, *v52 = v165, v52[1] = v54, v56 = (v49 + v45), v57 = v161, *v56 = v53, v56[1] = v57, *(v49 + v47) = 2, v58 = v49 + v140, *v58 = MEMORY[0x277D84F90], *(v58 + 8) = 1, v59 = (v49 + ((v47 + 31) & 0xFFFFFFFFFFFFFFF8)), *v59 = sub_20BF86918, v59[1] = v55, v60 = *(v51 + 152), , , , , v61 = v141, v60(sub_20BF86920, v49, v150, v51), , v62 = [objc_opt_self() mainScreen], objc_msgSend(v62, sel_scale), v64 = v63, v62, v65 = v149, v66 = sub_20C137BF4() / v64, v67 = sub_20C137C04(), v66 > 0.0) && (v68 = v67 / v64, v68 > 0.0))
    {
      v140 = ~v139;
      v69 = v61;
      v70 = v150;
      (*(v51 + 120))(0, v150, v51);
      v71 = v151;
      v72 = v167;
      v137(v151, v65, v167);
      (*(v163 + 56))(v71, 0, 1, v72);
      (*(v51 + 16))(v71, v70, v51);
      sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
      v73 = v65;
      sub_20C137BC4();
      v74 = sub_20C13D5A4();
      [v69 setBackgroundColor_];

      (*(v51 + 176))(COERCE_DOUBLE(*&v66), COERCE_DOUBLE(*&v68), 0, v70, v51);
      v75 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v76 = v166;
      v77 = v72;
      v78 = v137;
      v137(v166, v73, v77);
      v79 = (v139 + 16) & v140;
      v80 = (v132 + v79) & 0xFFFFFFFFFFFFFFF8;
      v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      v83 = v82 + v79;
      v84 = v167;
      v135(v83, v76, v167);
      *(v82 + v80) = v75;
      v85 = (v82 + v81);
      *v85 = v66;
      v85[1] = v68;
      v163 = v82;
      v86 = (v82 + ((v81 + 23) & 0xFFFFFFFFFFFFFFF8));
      v87 = v149;
      v88 = v84;
      *v86 = sub_20BF86918;
      v86[1] = v55;
      v78(v76, v87, v84);
      (*(v152 + 104))(v154, *MEMORY[0x277D542A8], v153);

      v89 = v160;
      sub_20C138A54();
      v90 = v155;
      sub_20B5F1CD0(v89, v155);
      v91 = v158;
      v92 = v159;
      if ((*(v158 + 48))(v90, 1, v159) == 1)
      {
        sub_20B520158(v90, &unk_27C766670, &unk_20C151580);
        sub_20BA1DADC();
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v94 = Strong;
          v95 = *(Strong + OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkBackgroundView);

          [v95 setNeedsLayout];
        }

        else
        {
        }

        (*(v157 + 8))(v89, v133);
      }

      else
      {

        v168 = *(v91 + 32);
        v96 = v156;
        v168(v156, v90, v92);
        v97 = v91;
        v98 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v99 = v166;
        v137(v166, v87, v88);
        v100 = (v139 + 40) & v140;
        v101 = v100 + v162;
        v102 = (v100 + v162) & 0xFFFFFFFFFFFFFFF8;
        v103 = swift_allocObject();
        *(v103 + 16) = v98;
        *(v103 + 24) = v66;
        *(v103 + 32) = v68;
        v135(v103 + v100, v99, v88);
        *(v103 + v101) = 1;
        v104 = v103 + v102;
        v105 = v169;
        *(v104 + 8) = sub_20BF86918;
        *(v104 + 16) = v105;
        v106 = swift_allocObject();
        *(v106 + 16) = sub_20BF86AB4;
        *(v106 + 24) = v103;
        v107 = v97;
        v108 = *(v97 + 16);
        v109 = v144;
        v110 = v159;
        v108(v144, v96, v159);
        v111 = (*(v107 + 80) + 16) & ~*(v107 + 80);
        v112 = (v143 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
        v113 = swift_allocObject();
        v168((v113 + v111), v109, v110);
        v114 = (v113 + v112);
        *v114 = sub_20B5F67A4;
        v114[1] = v106;

        v115 = v147;
        sub_20C137C94();
        v116 = swift_allocObject();
        v117 = v163;
        *(v116 + 16) = sub_20BF869F8;
        *(v116 + 24) = v117;
        v118 = swift_allocObject();
        *(v118 + 16) = sub_20B5F67D4;
        *(v118 + 24) = v116;
        v119 = v148;
        v120 = v146;
        v121 = v131;
        (*(v148 + 16))(v146, v115, v131);
        v122 = (*(v119 + 80) + 16) & ~*(v119 + 80);
        v123 = (v145 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
        v124 = swift_allocObject();
        (*(v119 + 32))(v124 + v122, v120, v121);
        v125 = (v124 + v123);
        *v125 = sub_20B5DF204;
        v125[1] = v118;

        v126 = v130;
        sub_20C137C94();
        v127 = *(v119 + 8);
        v127(v115, v121);
        v128 = sub_20C137CB4();
        v129 = swift_allocObject();
        *(v129 + 16) = 0;
        *(v129 + 24) = 0;
        v128(sub_20B52347C, v129);

        v127(v126, v121);
        (*(v158 + 8))(v156, v110);
        (*(v157 + 8))(v160, v133);
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20BF847F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkBackgroundView);

    [v3 setNeedsLayout];
  }
}

void sub_20BF84868()
{
  v1 = v0;
  [v0 bounds];
  v3 = &v0[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_oldSize];
  if (v4 != *v3 || v2 != v3[1])
  {
    v6 = [v1 window];
    if (v6)
    {
      v7 = v6;
      [v1 bounds];
      *v3 = v8;
      *(v3 + 1) = v9;
      v10 = v7;
      [v10 bounds];
      sub_20BF85964(*MEMORY[0x277D74420], 0, v41);
      [v10 bounds];
      v38 = v10;

      sub_20BF85964(0, 1, v42);
      v11 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_labelFontUpdater;
      v12 = *&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_labelFontUpdater];
      v13 = *&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_titleLabel];
      swift_beginAccess();

      v14 = v13;
      sub_20B7B2490(v41, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v43[0] = *(v12 + 16);
      *(v12 + 16) = 0x8000000000000000;
      sub_20B91ED80(v41, v14, isUniquelyReferenced_nonNull_native);

      *(v12 + 16) = *&v43[0];
      swift_endAccess();

      v16 = *&v1[v11];
      v17 = *&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_subtitleLabel];
      swift_beginAccess();

      v18 = v17;
      sub_20B7B2490(v42, v43);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *&v43[0] = *(v16 + 16);
      *(v16 + 16) = 0x8000000000000000;
      sub_20B91ED80(v42, v18, v19);

      *(v16 + 16) = *&v43[0];
      swift_endAccess();

      v20 = *&v1[v11];

      v39 = [v1 traitCollection];
      swift_beginAccess();
      v21 = *(v20 + 16);
      v22 = 1 << *(v21 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(v21 + 64);
      v25 = (v22 + 63) >> 6;

      v26 = 0;
      while (v24)
      {
        v27 = v26;
LABEL_14:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v29 = v28 | (v27 << 6);
        v30 = *(*(v21 + 48) + 8 * v29);
        v31 = *(v21 + 56) + 56 * v29;
        v33 = *(v31 + 16);
        v32 = *(v31 + 32);
        v34 = *v31;
        v44 = *(v31 + 48);
        v43[1] = v33;
        v43[2] = v32;
        v43[0] = v34;
        v35 = v30;
        sub_20B7B2490(v43, v40);
        v36 = sub_20B7C6A74(v39);
        v37 = *(v20 + 24);

        v37(v35, v36);

        sub_20B7B24EC(v43);
      }

      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v25)
        {

          sub_20B7B24EC(v42);
          sub_20B7B24EC(v41);

          return;
        }

        v24 = *(v21 + 64 + 8 * v27);
        ++v26;
        if (v24)
        {
          v26 = v27;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

id sub_20BF84BE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingHeaderBannerCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MarketingHeaderBannerCell(uint64_t a1)
{
  result = qword_281101638;
  if (!qword_281101638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}
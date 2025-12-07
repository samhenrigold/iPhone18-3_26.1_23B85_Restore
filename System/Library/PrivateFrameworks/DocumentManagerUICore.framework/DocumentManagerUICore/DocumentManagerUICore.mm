uint64_t ImageCache.init()()
{
  v1 = MEMORY[0x277D84F90];
  v2 = sub_249CE21E0(MEMORY[0x277D84F90]);
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  type metadata accessor for ImageCacheActor();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = sub_249CE239C(v1);
  v5 = MEMORY[0x277D84FA0];
  *(v3 + 112) = v4;
  *(v3 + 120) = v5;
  *(v0 + 32) = v3;
  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v0 selector:sel_purge name:*MEMORY[0x277D76670] object:0];

  return v0;
}

unint64_t sub_249CE21E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19950, &qword_249D08060);
    v3 = sub_249D04D1C();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 32);
      v7 = *(v4 + 64);
      v20 = *(v4 + 48);
      v21 = v7;
      v8 = *(v4 + 80);
      v22 = v8;
      v9 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v9;
      v19[2] = v6;
      v25 = v6;
      v26[0] = v20;
      *(v26 + 9) = *(v4 + 57);
      v23 = v19[0];
      v24 = v9;
      sub_249D03320(v19, v18, &qword_27EF19958, &qword_249D08068);
      result = sub_249CE8168(&v23, sub_249CEA370, sub_249CE6DB8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 80 * result);
      v13 = v26[0];
      v12[2] = v25;
      v12[3] = v13;
      *(v12 + 57) = *(v26 + 9);
      v14 = v24;
      *v12 = v23;
      v12[1] = v14;
      *(v3[7] + 8 * result) = v8;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 88;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_249CE239C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198D8, &qword_249D07FB0);
    v3 = sub_249D04D1C();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 32);
      v7 = *(v4 + 64);
      v20 = *(v4 + 48);
      v21 = v7;
      v8 = *(v4 + 80);
      v22 = v8;
      v9 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v9;
      v19[2] = v6;
      v25 = v6;
      v26[0] = v20;
      *(v26 + 9) = *(v4 + 57);
      v23 = v19[0];
      v24 = v9;
      sub_249D03320(v19, v18, &qword_27EF19948, &qword_249D08058);
      result = sub_249CE8168(&v23, sub_249CE93BC, sub_249CE93F4);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 80 * result);
      v13 = v26[0];
      v12[2] = v25;
      v12[3] = v13;
      *(v12 + 57) = *(v26 + 9);
      v14 = v24;
      *v12 = v23;
      v12[1] = v14;
      *(v3[7] + 8 * result) = v8;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 88;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

char *NodeThumbnail.init(node:imageOptions:imageCache:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_249CE2E48(a1, a2, a3);
  swift_unknownObjectRelease();

  return v3;
}

char *sub_249CE2E48(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v7[24] = 2;
  v8 = &v3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners];
  *v8 = 0;
  v9 = MEMORY[0x277D84F90];
  *(v8 + 1) = MEMORY[0x277D84F90];
  v10 = &v3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers];
  *v10 = 0;
  *(v10 + 1) = v9;
  swift_weakInit();
  *&v3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_node] = a1;
  v11 = &v3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options];
  v12 = *(a2 + 48);
  *(v11 + 2) = *(a2 + 32);
  *(v11 + 3) = v12;
  v11[64] = *(a2 + 64);
  v13 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 1) = v13;
  v21.receiver = v3;
  v21.super_class = ObjectType;
  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v21, sel_init);
  swift_weakAssign();
  v15 = *&v14[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 48];
  v19[2] = *&v14[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 32];
  v19[3] = v15;
  v20 = v14[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 64];
  v16 = *&v14[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 16];
  v19[0] = *&v14[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options];
  v19[1] = v16;
  v17 = v14;
  sub_249CE2FA4(a1, v19, v17);

  return v17;
}

void sub_249CE2FA4(void *a1, __int128 *a2, char *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v72 - v9;
  v11 = a2[3];
  v81 = a2[2];
  v82 = v11;
  v83 = *(a2 + 64);
  v12 = a2[1];
  v79 = *a2;
  v80 = v12;
  v13 = [swift_unknownObjectRetain() thumbnailIdentifier];
  v14 = [v13 identifierIgnoringDownloadStatus];
  v15 = a2[3];
  v16 = a2[1];
  v86 = a2[2];
  v87 = v15;
  v88 = *(a2 + 64);
  v103 = v86;
  v104 = v15;
  v17 = *a2;
  v18 = *a2;
  v102 = a2[1];
  v84 = v17;
  v85 = v102;
  v100 = v13;
  v105 = v88;
  v101 = v17;
  v93 = *(a2 + 64);
  v19 = a2[3];
  v91 = v86;
  v92 = v19;
  v89 = v18;
  v90 = v16;
  v94 = v14;
  v95 = v18;
  v99 = v93;
  v98 = v19;
  v97 = v86;
  v96 = v16;
  v20 = v13;
  v77 = v14;
  os_unfair_lock_lock((v4 + 16));
  v21 = *(v4 + 24);
  if (!*(v21 + 16) || (v22 = sub_249CE8168(&v100, sub_249CEA370, sub_249CE6DB8), (v23 & 1) == 0))
  {
    os_unfair_lock_unlock((v4 + 16));
    goto LABEL_7;
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  v25 = v24;
  os_unfair_lock_unlock((v4 + 16));
  if (v25)
  {
    if ([a1 isFolder])
    {

      goto LABEL_7;
    }

    v75 = v20;
    v44 = &a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail];
    v45 = v25;
    os_unfair_lock_lock(v44);
    sub_249CE3970(*(v44 + 1), *(v44 + 2), v44[24]);
    *(v44 + 1) = v24;
    *(v44 + 2) = 2;
    v44[24] = 1;
    v46 = v45;
    os_unfair_lock_unlock(v44);
    v47 = &a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners];
    os_unfair_lock_lock(&a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners]);
    v48 = *(v47 + 1);
    v76 = a1;
    v74 = v46;
    if (v48 >> 62)
    {
      v49 = sub_249D04CEC();
      if (!v49)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v49)
      {
        goto LABEL_39;
      }
    }

    if (v49 < 1)
    {
      __break(1u);
      goto LABEL_48;
    }

    for (i = 0; i != v49; ++i)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FED90](i, v48);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong thumbnailLoaded_];
        swift_unknownObjectRelease();
      }
    }

LABEL_39:
    os_unfair_lock_unlock(v47);
    v62 = &a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers];
    os_unfair_lock_lock(v62);
    v63 = *(v62 + 1);
    v64 = *(v63 + 16);
    if (v64)
    {
      v65 = v63 + 40;
      v66 = v75;
      do
      {
        v67 = *(v65 - 8);

        v67(v68);

        v65 += 16;
        --v64;
      }

      while (v64);
    }

    else
    {
      v66 = v75;
    }

    v69 = MEMORY[0x277D84F90];
    *(v62 + 1) = MEMORY[0x277D84F90];

    os_unfair_lock_unlock(v62);
    os_unfair_lock_lock(v47);
    *(v47 + 1) = v69;

    os_unfair_lock_unlock(v47);
    v70 = v74;

    sub_249CE6DB8(&v94);
    sub_249CE6DB8(&v100);

    goto LABEL_14;
  }

LABEL_7:
  os_unfair_lock_lock((v4 + 16));
  v26 = *(v4 + 24);
  if (!*(v26 + 16) || (v27 = sub_249CE8168(&v94, sub_249CEA370, sub_249CE6DB8), (v28 & 1) == 0))
  {
    os_unfair_lock_unlock((v4 + 16));
    goto LABEL_13;
  }

  v29 = *(*(v26 + 56) + 8 * v27);
  v30 = v29;
  os_unfair_lock_unlock((v4 + 16));
  if (!v30)
  {
LABEL_13:
    sub_249D04B4C();
    v31 = sub_249D04B6C();
    (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = a1;
    v33 = v79;
    *(v32 + 56) = v80;
    v34 = v82;
    *(v32 + 72) = v81;
    *(v32 + 88) = v34;
    *(v32 + 104) = v83;
    *(v32 + 40) = v33;
    *(v32 + 112) = v4;
    *(v32 + 120) = v20;
    v35 = v84;
    v36 = v85;
    v37 = v86;
    v38 = v87;
    *(v32 + 192) = v88;
    *(v32 + 160) = v37;
    *(v32 + 176) = v38;
    *(v32 + 128) = v35;
    *(v32 + 144) = v36;
    v39 = v77;
    *(v32 + 200) = a3;
    *(v32 + 208) = v39;
    v40 = v90;
    *(v32 + 216) = v89;
    v41 = v91;
    v42 = v92;
    *(v32 + 280) = v93;
    *(v32 + 264) = v42;
    *(v32 + 248) = v41;
    *(v32 + 232) = v40;
    swift_unknownObjectRetain();

    sub_249CEA370(&v100, v78);
    v43 = a3;
    sub_249CEA370(&v94, v78);
    sub_249CFA160(0, 0, v10, &unk_249D08098, v32);

    sub_249CE6DB8(&v100);
    sub_249CE6DB8(&v94);

LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  if ([a1 isFolder])
  {

    goto LABEL_13;
  }

  v76 = a1;
  v52 = &a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail];
  v53 = v30;
  os_unfair_lock_lock(v52);
  v54 = v52[24];
  v55 = *(v52 + 2);
  if (v54 != 1 || v55 != 2)
  {
    sub_249CE3970(*(v52 + 1), v55, v54);
    *(v52 + 1) = v29;
    *(v52 + 2) = 1;
    v52[24] = 1;
    v56 = v53;
  }

  os_unfair_lock_unlock(v52);
  v57 = &a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners];
  os_unfair_lock_lock(&a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners]);
  v58 = *(v57 + 1);
  v74 = v53;
  v75 = v20;
  v73 = v57;
  if (!(v58 >> 62))
  {
    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
      goto LABEL_30;
    }

LABEL_46:
    os_unfair_lock_unlock(v73);
    v71 = v74;

    v20 = v75;
    a1 = v76;
    goto LABEL_13;
  }

  v59 = sub_249D04CEC();
  if (!v59)
  {
    goto LABEL_46;
  }

LABEL_30:
  if (v59 >= 1)
  {
    for (j = 0; j != v59; ++j)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FED90](j, v58);
      }

      else
      {
      }

      v61 = swift_unknownObjectWeakLoadStrong();
      if (v61)
      {
        [v61 thumbnailLoaded_];
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_46;
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_249CE368C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 281, 7);
}

uint64_t NodeThumbnail.addListener(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF196F0, &unk_249D076E0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2 = v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners));

  MEMORY[0x24C1FEB80](v3);
  if (*((*(v2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_249D04ABC();
  }

  sub_249D04ACC();
  os_unfair_lock_unlock(v2);
}

id sub_249CE395C(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_249CE3970(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }
}

void NodeThumbnail.thumbnail.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v2 = *(v1 + 24);
  sub_249CE395C(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  os_unfair_lock_unlock(v1);
  if (v2 >= 2)
  {
    if (swift_weakLoadStrong())
    {
      v3 = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_node);
      v4 = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 48);
      v8[2] = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 32);
      v8[3] = v4;
      v9 = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 64);
      v5 = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 16);
      v8[0] = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options);
      v8[1] = v5;
      sub_249CE3AE8(v3, v8);
    }

    else
    {
      v6 = sub_249D04A3C();
      v7 = [objc_opt_self() systemImageNamed_];

      if (!v7)
      {
        __break(1u);
      }
    }
  }
}

Class sub_249CE3AE8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v48 - v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v12 = *(a2 + 40);
  v11 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a2 + 64);
  v62[0] = [a1 thumbnailIdentifier];
  v62[1] = v7;
  v62[2] = v6;
  v62[3] = v8;
  v62[4] = v10;
  v62[5] = v9;
  v62[6] = v12;
  v62[7] = v11;
  v62[8] = v13;
  v63 = v14;
  v51 = v62[0];
  v15 = [a1 thumbnailIdentifier];
  v16 = [v15 identifierIgnoringDownloadStatus];

  v70[0] = v16;
  v70[1] = v7;
  v70[2] = v6;
  v70[3] = v8;
  v50 = v10;
  v70[4] = v10;
  v70[5] = v9;
  v17 = *&v13;
  v18 = *&v9;
  v70[6] = v12;
  v70[7] = v11;
  *&v70[8] = v17;
  v71 = v14;
  v19 = v16;
  if (![a1 isFolder])
  {
    v48 = v19;
    v22 = v11;
    v23 = v52;
    os_unfair_lock_lock(v52 + 4);
    v24 = *&v23[6]._os_unfair_lock_opaque;
    if (*(v24 + 16) && (v25 = sub_249CE8168(v62, sub_249CEA370, sub_249CE6DB8), (v26 & 1) != 0))
    {
      v27 = *(*(v24 + 56) + 8 * v25);
      os_unfair_lock_unlock(v23 + 4);
      if (v27)
      {
LABEL_12:

        sub_249CE6DB8(v62);
        sub_249CE6DB8(v70);
        return v27;
      }
    }

    else
    {
      os_unfair_lock_unlock(v23 + 4);
    }

    os_unfair_lock_lock(v23 + 4);
    v28 = *&v23[6]._os_unfair_lock_opaque;
    if (*(v28 + 16) && (v29 = sub_249CE8168(v70, sub_249CEA370, sub_249CE6DB8), (v30 & 1) != 0))
    {
      v27 = *(*(v28 + 56) + 8 * v29);
      os_unfair_lock_unlock(v23 + 4);
      if (v27)
      {
        goto LABEL_12;
      }
    }

    else
    {
      os_unfair_lock_unlock(v23 + 4);
    }

    v31 = [a1 typeIdentifier];
    v32 = sub_249D04A4C();
    v52 = v32;
    v34 = v33;

    *&v64 = v32;
    *(&v64 + 1) = v34;
    *&v65 = v7;
    *(&v65 + 1) = v6;
    *&v66 = v8;
    v35 = v49;
    v36 = v50;
    *(&v66 + 1) = v50;
    *&v67 = v18;
    *(&v67 + 1) = v12;
    *&v68 = v22;
    *(&v68 + 1) = v17;
    v69 = v14;
    sub_249D04B3C();
    v37 = sub_249D04B6C();
    (*(*(v37 - 8) + 56))(v35, 0, 1, v37);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    v39 = v67;
    *(v38 + 64) = v66;
    *(v38 + 80) = v39;
    *(v38 + 96) = v68;
    *(v38 + 112) = v69;
    v40 = v65;
    *(v38 + 32) = v64;
    *(v38 + 48) = v40;
    sub_249CE40CC(&v64, v60);
    sub_249CFA160(0, 0, v35, &unk_249D080F0, v38);

    *&v53 = v52;
    *(&v53 + 1) = v34;
    *&v54 = v7;
    *(&v54 + 1) = v6;
    *&v55 = v8;
    *(&v55 + 1) = v36;
    *&v56 = v18;
    *(&v56 + 1) = v12;
    *&v57 = v22;
    *(&v57 + 1) = v17;
    v58 = v14;
    sub_249CE4104(&v59);
    sub_249CE6DB8(v70);
    sub_249CE6DB8(v62);

    v60[2] = v55;
    v60[3] = v56;
    v60[4] = v57;
    v61 = v58;
    v60[0] = v53;
    v60[1] = v54;
    sub_249D03208(v60);
    return v59;
  }

  v20 = v52;
  if (v14)
  {
    swift_unknownObjectRetain();
    v21 = 0;
  }

  else
  {
    v41 = objc_allocWithZone(MEMORY[0x277D1B150]);
    swift_unknownObjectRetain();
    v21 = [v41 initWithRed:v18 green:*&v12 blue:*&v11 alpha:v17];
  }

  v64 = a1;
  LOBYTE(v65) = 1;
  *(&v65 + 1) = v7;
  *&v66 = v6;
  *(&v66 + 1) = v8;
  *&v67 = v21;
  result = FolderIconFetcher.fetchAvailableImage()();
  if (result)
  {
    v27 = result;
    os_unfair_lock_lock(v20 + 4);
    v43 = *&v20[6]._os_unfair_lock_opaque;
    if (*(v43 + 16) && (v44 = sub_249CE8168(v62, sub_249CEA370, sub_249CE6DB8), (v45 & 1) != 0))
    {
      v46 = *(*(v43 + 56) + 8 * v44);
      os_unfair_lock_unlock(v20 + 4);
      if (v46)
      {
        v64 = a1;
        LOBYTE(v65) = 1;
        *(&v65 + 1) = v7;
        *&v66 = v6;
        *(&v66 + 1) = v8;
        *&v67 = v21;
        isa = FolderIconFetcher.addImage(overlayImage:to:)(v46, v27).super.isa;

        sub_249CE6DB8(v62);
        sub_249CE6DB8(v70);
        swift_unknownObjectRelease();

        return isa;
      }
    }

    else
    {
      os_unfair_lock_unlock(v20 + 4);
    }

    swift_unknownObjectRelease();

    sub_249CE6DB8(v70);
    sub_249CE6DB8(v62);

    return v27;
  }

  __break(1u);
  return result;
}

void sub_249CE4104(uint64_t a1@<X8>)
{
  v3 = sub_249D049AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v12 = sub_249D04A3C();
  v13 = [v11 initWithType_];

  v14 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v7 scale:{v8, v9}];
  v15 = v14;
  if ((v10 & 1) == 0)
  {
    [v14 setVariantOptions_];
  }

  v16 = [v13 imageForDescriptor_];
  if (v16)
  {
    v17 = v13;
    sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
    v18 = v16;
    v19 = v15;
    v20 = sub_249CE6D10(v16, v19);
    if (v20)
    {
      v21 = v20;
      v22 = [v18 placeholder];

LABEL_10:
      *a1 = v21;
      *(a1 + 8) = v22;
LABEL_14:
      *(a1 + 9) = 0;
      return;
    }

    v13 = v17;
  }

  sub_249D0498C();
  sub_249D0497C();
  (*(v4 + 8))(v6, v3);
  v23 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v24 = sub_249D04A3C();

  v25 = [v23 initWithType_];

  v26 = [v25 imageForDescriptor_];
  if (v26)
  {
    sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
    v27 = v26;
    v28 = v15;
    v29 = v27;
    v30 = sub_249CE6D10(v26, v28);
    if (v30)
    {
      v21 = v30;
      v22 = [v29 placeholder];

      goto LABEL_10;
    }
  }

  v31 = sub_249D04A3C();
  v32 = [objc_opt_self() systemImageNamed_];

  if (v32)
  {

    *a1 = v32;
    *(a1 + 8) = 1;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_249CE4480()
{
  type metadata accessor for IconActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84FA0];
  qword_27EF19698 = v0;
  return result;
}

uint64_t sub_249CE44F0()
{
  v16 = v0;
  v1 = *(v0 + 616);
  swift_beginAccess();
  v2 = *(v1 + 112);

  v3 = sub_249CE4694((v0 + 16), v2);

  if (v3)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 608);
    swift_beginAccess();
    sub_249CE40CC(v0 + 16, v0 + 280);
    sub_249CE6E08(v14, (v0 + 16));
    swift_endAccess();
    v7 = v14[3];
    *(v0 + 224) = v14[2];
    *(v0 + 240) = v7;
    *(v0 + 256) = v14[4];
    *(v0 + 272) = v15;
    v8 = v14[1];
    *(v0 + 192) = v14[0];
    *(v0 + 208) = v8;
    sub_249D031D8(v0 + 192);
    v9 = *(v6 + 16);
    *(v0 + 368) = *v6;
    *(v0 + 384) = v9;
    v10 = *(v6 + 32);
    v11 = *(v6 + 48);
    v12 = *(v6 + 64);
    *(v0 + 448) = *(v6 + 80);
    *(v0 + 416) = v11;
    *(v0 + 432) = v12;
    *(v0 + 400) = v10;
    sub_249CE40CC(v0 + 16, v0 + 456);
    v13 = swift_task_alloc();
    *(v0 + 624) = v13;
    *v13 = v0;
    v13[1] = sub_249CE7FF4;

    return sub_249CE7510(v0 + 592);
  }
}

uint64_t sub_249CE4694(float64x2_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_249D04D7C();
  v4 = a1->f64[0];
  v5 = a1->f64[1];
  v6 = a1[1].f64[0];
  v7 = a1[1].f64[1];
  v8 = a1[2].f64[0];
  v9 = LOBYTE(a1[2].f64[1]);
  sub_249D04A6C();
  if (v6 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v6;
  }

  MEMORY[0x24C1FEE80](*&v10);
  if (v7 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v7;
  }

  MEMORY[0x24C1FEE80](*&v11);
  if (v8 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v8;
  }

  MEMORY[0x24C1FEE80](*&v12);
  v34 = a1[3];
  v35 = a1[4];
  v36 = LOBYTE(a1[5].f64[0]);
  sub_249D04D8C();
  sub_249D01748();
  v13 = sub_249D04DAC();
  v14 = a2 + 56;
  v15 = -1 << *(a2 + 32);
  v16 = v13 & ~v15;
  if ((*(a2 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(a2 + 48);
    do
    {
      v19 = v18 + 88 * v16;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *(v19 + 40);
      v24 = *(v19 + 48);
      v25 = *(v19 + 64);
      v26 = *(v19 + 80);
      v27 = *v19 == *&v4 && *(v19 + 8) == *&v5;
      if (v27 || (v32 = *(v19 + 48), v33 = *(v19 + 64), v28 = sub_249D04D3C(), v24 = v32, v25 = v33, (v28 & 1) != 0))
      {
        v29 = v21 == v6 && v20 == v7;
        v30 = v29 && v22 == v8;
        if (v30 && ((v23 ^ v9) & 1) == 0)
        {
          if (v26)
          {
            if (v36)
            {
              return 1;
            }
          }

          else if ((v36 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v24, v34), vceqq_f64(v25, v35)), xmmword_249D076A0)) & 0xF) == 0)
          {
            return 1;
          }
        }
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  return 0;
}

uint64_t sub_249CE48C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19938, &qword_249D08028);
  result = sub_249D04C8C();
  v5 = result;
  if (*(v3 + 16))
  {
    v45 = v2;
    v46 = result;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v47 = v3;
    while (v10)
    {
      v19 = __clz(__rbit64(v10));
      v49 = (v10 - 1) & v10;
LABEL_15:
      v22 = *(v3 + 48) + 88 * (v19 | (v6 << 6));
      v24 = *(v22 + 48);
      v23 = *(v22 + 64);
      v25 = *(v22 + 32);
      v56 = *(v22 + 80);
      v54 = v24;
      v55 = v23;
      v53 = v25;
      v26 = *(v22 + 16);
      v51 = *v22;
      v52 = v26;
      sub_249D04D7C();
      v27 = v52;
      v28 = *&v53;
      v29 = v54;
      v48 = v55;
      v30 = v56;
      sub_249CE40CC(&v51, v50);
      sub_249D04A6C();
      if (*&v27 == 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = *&v27;
      }

      MEMORY[0x24C1FEE80](*&v31);
      if (*(&v27 + 1) == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = *(&v27 + 1);
      }

      MEMORY[0x24C1FEE80](*&v32);
      if (v28 == 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v28;
      }

      MEMORY[0x24C1FEE80](*&v33);
      sub_249D04D8C();
      if (v30 == 1)
      {
        sub_249D04D8C();
      }

      else
      {
        sub_249D04D8C();
        if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v34 = v29;
        }

        else
        {
          v34 = 0;
        }

        MEMORY[0x24C1FEE80](v34);
        if ((*(&v29 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v35 = *(&v29 + 1);
        }

        else
        {
          v35 = 0;
        }

        MEMORY[0x24C1FEE80](v35);
        if ((v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v36 = v48;
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x24C1FEE80](v36);
        if ((*(&v48 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = *(&v48 + 1);
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x24C1FEE80](v37);
      }

      result = sub_249D04DAC();
      v5 = v46;
      v3 = v47;
      v38 = -1 << *(v46 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v12 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v12 + 8 * v40);
          if (v44 != -1)
          {
            v13 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_52;
      }

      v13 = __clz(__rbit64((-1 << v39) & ~*(v12 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v46 + 48) + 88 * v13;
      v15 = v52;
      *v14 = v51;
      v16 = v53;
      v17 = v54;
      v18 = v55;
      *(v14 + 80) = v56;
      *(v14 + 48) = v17;
      *(v14 + 64) = v18;
      *(v14 + 16) = v15;
      *(v14 + 32) = v16;
      ++*(v46 + 16);
      v10 = v49;
    }

    v20 = v6;
    while (1)
    {
      v6 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v45;
        goto LABEL_50;
      }

      v21 = *(v7 + 8 * v6);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v49 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {

LABEL_50:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_249CE4C34(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_39;
  }

  if (a3)
  {
    sub_249CE7130(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_249D00630();
      goto LABEL_39;
    }

    sub_249CE48C0(v6 + 1);
  }

  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  v12 = *v3;
  sub_249D04D7C();
  v13 = *v5;
  v14 = *(v5 + 8);
  sub_249D04A6C();
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x24C1FEE80](*&v15);
  if (v9 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v9;
  }

  MEMORY[0x24C1FEE80](*&v16);
  if (v10 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v10;
  }

  MEMORY[0x24C1FEE80](*&v17);
  v44 = *(v5 + 48);
  v45 = *(v5 + 64);
  v46 = *(v5 + 80);
  v18 = v11;
  sub_249D04D8C();
  sub_249D01748();
  result = sub_249D04DAC();
  v19 = v12 + 56;
  v20 = -1 << *(v12 + 32);
  a2 = result & ~v20;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v12 + 48);
    do
    {
      v23 = v22 + 88 * a2;
      result = *v23;
      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      v26 = *(v23 + 32);
      v27 = *(v23 + 40);
      v28 = *(v23 + 48);
      v29 = *(v23 + 64);
      v30 = *(v23 + 80);
      v31 = *v23 == v13 && *(v23 + 8) == v14;
      if (v31 || (v42 = *(v23 + 48), v43 = *(v23 + 64), result = sub_249D04D3C(), v28 = v42, v29 = v43, (result & 1) != 0))
      {
        v32 = v25 == v8 && v24 == v9;
        v33 = v32 && v26 == v10;
        if (v33 && ((v27 ^ v18) & 1) == 0)
        {
          if (v30)
          {
            if (v46)
            {
              goto LABEL_38;
            }
          }

          else if ((v46 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v28, v44), vceqq_f64(v29, v45)), xmmword_249D076A0)) & 0xF) == 0)
          {
LABEL_38:
            result = sub_249D04D5C();
            __break(1u);
            break;
          }
        }
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v19 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_39:
  v34 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v35 = *(v34 + 48) + 88 * a2;
  v36 = *(v5 + 16);
  *v35 = *v5;
  *(v35 + 16) = v36;
  *(v35 + 80) = *(v5 + 80);
  v37 = *(v5 + 64);
  *(v35 + 48) = *(v5 + 48);
  *(v35 + 64) = v37;
  *(v35 + 32) = *(v5 + 32);
  v38 = *(v34 + 16);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v40;
  }

  return result;
}

unint64_t sub_249CE4F1C()
{
  result = qword_27EF198B0;
  if (!qword_27EF198B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF198B0);
  }

  return result;
}

uint64_t sub_249CE4F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198D8, &qword_249D07FB0);
  v48 = v4;
  result = sub_249D04D0C();
  v7 = result;
  if (*(v5 + 16))
  {
    v47 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      if (v48)
      {
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 80 * v22;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 24);
        v29 = *(v24 + 32);
        v52[0] = *(v24 + 33);
        *(v52 + 3) = *(v24 + 36);
        v50 = *(v24 + 40);
        v51 = *(v24 + 56);
        v30 = *(v24 + 72);
        v49 = *(v23 + 8 * v22);
      }

      else
      {
        v31 = (*(v5 + 48) + 80 * v22);
        v33 = v31[1];
        v32 = v31[2];
        v34 = v31[3];
        *&v55[25] = *(v31 + 57);
        *&v55[16] = v34;
        v53 = *v31;
        v54 = v33;
        *v55 = v32;
        v35 = *(*(v5 + 56) + 8 * v22);
        sub_249CE93BC(&v53, v52);
        v26 = *(&v53 + 1);
        v28 = *(&v54 + 1);
        v27 = *&v54;
        v29 = v55[0];
        v52[0] = *&v55[1];
        *(v52 + 3) = *&v55[4];
        v50 = *&v55[8];
        v51 = *&v55[24];
        v30 = v55[40];
        v49 = v35;
        v25 = v53;
      }

      sub_249D04D7C();
      sub_249D04C5C();
      if (v26 == 0.0)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = v26;
      }

      MEMORY[0x24C1FEE80](*&v36);
      if (v27 == 0.0)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = v27;
      }

      MEMORY[0x24C1FEE80](*&v37);
      if (v28 == 0.0)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = v28;
      }

      MEMORY[0x24C1FEE80](*&v38);
      v56 = v50;
      v57 = v51;
      v58 = v30 & 1;
      sub_249D04D8C();
      sub_249D01748();
      result = sub_249D04DAC();
      v39 = -1 << *(v7 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v14 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v17 = v50;
        v16 = v51;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v14 + 8 * v41);
          if (v45 != -1)
          {
            v15 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v40) & ~*(v14 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v17 = v50;
      v16 = v51;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v7 + 48) + 80 * v15;
      *v18 = v25;
      *(v18 + 8) = v26;
      *(v18 + 16) = v27;
      *(v18 + 24) = v28;
      *(v18 + 32) = v29;
      *(v18 + 33) = v52[0];
      *(v18 + 36) = *(v52 + 3);
      *(v18 + 56) = v16;
      *(v18 + 40) = v17;
      *(v18 + 72) = v30;
      *(*(v7 + 56) + 8 * v15) = v49;
      ++*(v7 + 16);
      v5 = v47;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_43;
    }

    v46 = 1 << *(v5 + 32);
    v3 = v2;
    if (v46 >= 64)
    {
      bzero(v9, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v46;
    }

    *(v5 + 16) = 0;
  }

LABEL_43:
  *v3 = v7;
  return result;
}

unint64_t sub_249CE53A4()
{
  result = qword_27EF198B8;
  if (!qword_27EF198B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF198B8);
  }

  return result;
}

uint64_t sub_249CE53F8(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E8, &qword_249D07FC0);
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198F0, &qword_249D07FC8);
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198F8, &qword_249D07FD0);
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19900, &qword_249D07FD8);
  v3[40] = v7;
  v3[41] = *(v7 - 8);
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249CE5600, v2, 0);
}

uint64_t sub_249CE5600()
{
  v1 = *(v0 + 240);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = *(v1 + 128);
  if (!(v4 >> 6))
  {
    v15 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
    sub_249CE395C(*(v1 + 112), *(v1 + 120), *(v1 + 128));
    os_unfair_lock_lock(v15);
    sub_249CFE4DC((v15 + 8), v3, v2, v4);
    os_unfair_lock_unlock(v15);
    v17 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
    os_unfair_lock_lock(v17);
    v75 = v17;
    v77 = v3;
    v18 = *(v17 + 8);
    if (v18 >> 62)
    {
      v7 = sub_249D04CEC();
      v19 = v7;
      if (!v7)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_40;
      }
    }

    if (v19 < 1)
    {
      goto LABEL_68;
    }

    for (i = 0; i != v19; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FED90](i, v18);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong thumbnailLoaded_];
        swift_unknownObjectRelease();
      }
    }

LABEL_40:
    os_unfair_lock_unlock(v75);
    if (v4 == 1)
    {
      v35 = v2;
      if (v2 == 1)
      {
LABEL_50:
        v44 = *(v0 + 240);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19910, &qword_249D07FE0);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        v45 = swift_beginAccess();
        MEMORY[0x24C1FEB80](v45);
        if (*((*(v44 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v44 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_249D04ABC();
        }

        sub_249D04ACC();
        swift_endAccess();
        v23 = v77;
        v24 = v35;
        v34 = v4;
        goto LABEL_53;
      }
    }

    else
    {
      v35 = v2;
      if (v4 || (v2 & 0x100) == 0)
      {
        goto LABEL_50;
      }
    }

    v36 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers;
    os_unfair_lock_lock(v36);
    v37 = *(v36 + 8);
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = v4;
      v40 = v37 + 40;
      do
      {
        v41 = *(v40 - 8);

        v41(v42);

        v40 += 16;
        --v38;
      }

      while (v38);
      LOBYTE(v4) = v39;
    }

    v43 = MEMORY[0x277D84F90];
    *(v36 + 8) = MEMORY[0x277D84F90];

    os_unfair_lock_unlock(v36);
    os_unfair_lock_lock(v75);
    *&v75[2]._os_unfair_lock_opaque = v43;

    os_unfair_lock_unlock(v75);
    goto LABEL_50;
  }

  if (v4 >> 6 == 1)
  {
    v5 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
    sub_249CE395C(*(v1 + 112), *(v1 + 120), v4 & 0x3F);
    os_unfair_lock_lock(v5);
    sub_249CFE4DC((v5 + 8), v3, v2, v4 & 0x3F);
    os_unfair_lock_unlock(v5);
    v76 = v3;
    v79 = v2;
    v74 = v4;
    v6 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
    os_unfair_lock_lock(v6);
    lock = v6;
    v11 = *(v6 + 8);
    if (v11 >> 62)
    {
      v7 = sub_249D04CEC();
      v12 = v7;
      if (!v7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_28;
      }
    }

    if (v12 >= 1)
    {
      for (j = 0; j != v12; ++j)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FED90](j, v11);
        }

        else
        {
        }

        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          [v14 thumbnailLoaded_];
          swift_unknownObjectRelease();
        }
      }

LABEL_28:
      os_unfair_lock_unlock(v6);
      if ((v4 & 0x3F) == 1)
      {
        v23 = v76;
        v24 = v79;
        v22 = v4;
        if (v79 == 1)
        {
LABEL_38:
          v34 = v22;
LABEL_53:
          sub_249CE9424(v23, v24, v34);
          goto LABEL_54;
        }
      }

      else
      {
        v22 = v4;
        v23 = v76;
        v24 = v79;
        if ((v4 & 0x3F) != 0 || (v79 & 0x100) == 0)
        {
          goto LABEL_38;
        }
      }

      v25 = v23;
      v26 = v24;
      v27 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers;
      os_unfair_lock_lock(v27);
      v28 = *(v27 + 8);
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = v28 + 40;
        do
        {
          v31 = *(v30 - 8);

          v31(v32);

          v30 += 16;
          --v29;
        }

        while (v29);
        v22 = v74;
      }

      v33 = MEMORY[0x277D84F90];
      *(v27 + 8) = MEMORY[0x277D84F90];

      os_unfair_lock_unlock(v27);
      os_unfair_lock_lock(lock);
      *&lock[2]._os_unfair_lock_opaque = v33;

      os_unfair_lock_unlock(lock);
      v23 = v25;
      v24 = v26;
      goto LABEL_38;
    }

    __break(1u);
LABEL_68:
    __break(1u);
    return MEMORY[0x2822003E8](v7, v8, v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19910, &qword_249D07FE0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v16 = swift_beginAccess();
  MEMORY[0x24C1FEB80](v16);
  if (*((*(v1 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_249D04ABC();
  }

  sub_249D04ACC();
  swift_endAccess();
LABEL_54:
  v46 = *(v1 + 128);
  if ((v46 & 0xC0) == 0x40)
  {
    v67 = *(v0 + 240);
    v68 = *(v0 + 224);
    v69 = *(v67 + 112);
    v70 = *(v67 + 120);
    *v68 = v69;
    *(v68 + 8) = v70;
    *(v68 + 16) = v46 & 0x3F;
    sub_249CE395C(v69, v70, v46 & 0x3F);

    v71 = *(v0 + 8);

    return v71();
  }

  else
  {
    if ((v46 & 0xC0) == 0x80 && v46 == 128)
    {
      v47 = *(v1 + 112);
      v48 = *(v1 + 120);
      if (*(v1 + 112) == 0)
      {
        v50 = *(v0 + 304);
        v49 = *(v0 + 312);
        v51 = *(v0 + 288);
        v78 = *(v0 + 296);
        v53 = *(v0 + 272);
        v52 = *(v0 + 280);
        v54 = *(v0 + 240);
        *(v1 + 112) = xmmword_249D076B0;
        *(v1 + 128) = 0x80;
        sub_249CE9424(v47, v48, 0x80u);
        v55 = *(v54 + 160);
        *(v0 + 16) = *(v54 + 144);
        *(v0 + 32) = v55;
        v56 = *(v54 + 176);
        v57 = *(v54 + 192);
        v58 = *(v54 + 208);
        *(v0 + 96) = *(v54 + 224);
        *(v0 + 64) = v57;
        *(v0 + 80) = v58;
        *(v0 + 48) = v56;
        *(swift_task_alloc() + 16) = v0 + 16;
        (*(v52 + 104))(v51, *MEMORY[0x277D85778], v53);
        sub_249D04BCC();

        sub_249D04BAC();
        (*(v50 + 8))(v49, v78);
        *(v0 + 344) = sub_249CE6C80(&qword_27EF19908, 255, type metadata accessor for ImageRequest, &unk_249D07EF8);
        swift_beginAccess();
        v59 = *(v0 + 344);
        v60 = *(v0 + 240);
        v61 = swift_task_alloc();
        *(v0 + 352) = v61;
        *v61 = v0;
        v61[1] = sub_249CE94B0;
        v10 = *(v0 + 320);
        v7 = v0 + 176;
        v8 = v60;
        v9 = v59;

        return MEMORY[0x2822003E8](v7, v8, v9, v10);
      }
    }

    v62 = *(v0 + 240);
    v63 = sub_249CE6C80(&qword_27EF19908, 255, type metadata accessor for ImageRequest, &unk_249D07EF8);
    v64 = swift_task_alloc();
    *(v0 + 360) = v64;
    *v64 = v0;
    v64[1] = sub_249CFCB78;
    v65 = *(v0 + 240);
    v66 = *(v0 + 224);

    return MEMORY[0x2822007B8](v66, v62, v63, 0xD000000000000015, 0x8000000249D091E0, sub_249D02D94, v65, &type metadata for Thumbnail);
  }
}

uint64_t sub_249CE5F44()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19880, &qword_249D07B20);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_249CE5F74()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19888, &qword_249D07B28);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_249CE5FA4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF19890, &qword_249D07B30);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_249CE5FD4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198A0, &qword_249D07B68);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_249CE6004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = swift_allocObject();
  v9 = *(a2 + 48);
  *(v8 + 48) = *(a2 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a2 + 64);
  *(v8 + 96) = *(a2 + 80);
  v10 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v10;
  sub_249CE9448(a2, aBlock);
  sub_249D04B7C();
  v11 = *(a2 + 72);
  if (v11)
  {
    v12 = objc_opt_self();
    v34 = v11;
    v33 = [v12 sharedGenerator];
    v36 = *(v5 + 16);
    v36(v7, a1, v4);
    v13 = v5;
    v14 = *(v5 + 80);
    v15 = swift_allocObject();
    v30 = a1;
    v16 = v15;
    v35 = *(v13 + 32);
    v35(v15 + ((v14 + 16) & ~v14), v7, v4);
    aBlock[4] = sub_249CEA43C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_249CEA3A8;
    aBlock[3] = &block_descriptor_0;
    v32 = _Block_copy(aBlock);

    v36(v7, a1, v4);
    v17 = (v14 + 104) & ~v14;
    v18 = swift_allocObject();
    v19 = *(a2 + 48);
    *(v18 + 48) = *(a2 + 32);
    *(v18 + 64) = v19;
    *(v18 + 80) = *(a2 + 64);
    *(v18 + 96) = *(a2 + 80);
    v20 = *(a2 + 16);
    *(v18 + 16) = *a2;
    *(v18 + 32) = v20;
    v35(v18 + v17, v7, v4);
    v41 = sub_249D02D9C;
    v42 = v18;
    v37 = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_249CFC810;
    v40 = &block_descriptor_134;
    v31 = _Block_copy(&v37);
    sub_249CE9448(a2, aBlock);

    v36(v7, v30, v4);
    v21 = swift_allocObject();
    v22 = *(a2 + 48);
    *(v21 + 48) = *(a2 + 32);
    *(v21 + 64) = v22;
    *(v21 + 80) = *(a2 + 64);
    *(v21 + 96) = *(a2 + 80);
    v23 = *(a2 + 16);
    *(v21 + 16) = *a2;
    *(v21 + 32) = v23;
    v35(v21 + v17, v7, v4);
    v41 = sub_249CEA894;
    v42 = v21;
    v37 = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_249CEA4D0;
    v40 = &block_descriptor_140;
    v24 = _Block_copy(&v37);
    sub_249CE9448(a2, aBlock);

    v25 = v33;
    v26 = v34;
    v27 = v32;
    v28 = v31;
    [v33 generateThumbnailForRequest:v34 updateHandler:v32 statusHandler:v31 completionHandler:v24];
    _Block_release(v24);
    _Block_release(v28);
    _Block_release(v27);
  }
}

uint64_t sub_249CE64AC()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_249CE64EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249CE6588(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249CE6A30;

  return sub_249CE6640(a1, v4);
}

uint64_t sub_249CE6640(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_249CE6B28;

  return v6(a1);
}

uint64_t sub_249CE6738(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_249CE6A30;

  return sub_249CE68D8(a1, v4, v5, v1 + 32);
}

uint64_t sub_249CE67E8()
{
  if (qword_27EF19420 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  v4 = *(v1 + 48);
  v3 = *(v1 + 64);
  v5 = *(v1 + 32);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 64) = v4;
  *(v0 + 80) = v3;
  *(v0 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_249CE693C;

  return sub_249CE68F8(v0 + 16);
}

uint64_t sub_249CE68F8(uint64_t a1)
{
  *(v2 + 616) = v1;
  *(v2 + 608) = a1;
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  return MEMORY[0x2822009F8](sub_249CE44F0, v1, 0);
}

uint64_t sub_249CE693C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_249CE6A34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_249CE6B2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_249CE6C80(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_249CE6CC8(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_249CE6D10(void *a1, void *a2)
{
  if (a1)
  {
    v4 = [a1 CGImage];
    if (v4)
    {
      v5 = v4;
      v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      [a2 scale];
      v7 = [v6 initWithCGImage:v5 scale:0 orientation:?];

      return v7;
    }
  }

  return 0;
}

uint64_t sub_249CE6E08(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  v7 = *(a2 + 40);
  v8 = *(a2 + 57);
  *v56 = *(a2 + 41);
  *&v56[16] = v8;
  *&v56[32] = *(a2 + 73);
  v9 = *v2;
  sub_249D04D7C();
  v10 = *a2;
  v11 = a2[1];
  v49 = a2;
  sub_249D04A6C();
  if (v4 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v4;
  }

  MEMORY[0x24C1FEE80](*&v12);
  if (v5 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v5;
  }

  MEMORY[0x24C1FEE80](*&v13);
  if (v6 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v6;
  }

  MEMORY[0x24C1FEE80](*&v14);
  v57 = *&v56[7];
  v58 = *&v56[23];
  v59 = v56[39];
  v15 = v7;
  sub_249D04D8C();
  sub_249D01748();
  v16 = sub_249D04DAC();
  v17 = v9 + 56;
  v18 = -1 << *(v9 + 32);
  v19 = v16 & ~v18;
  if ((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    v47 = v9;
    v21 = *(v9 + 48);
    do
    {
      v22 = v21 + 88 * v19;
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      v25 = *(v22 + 32);
      v26 = *(v22 + 40);
      v27 = *(v22 + 48);
      v28 = *(v22 + 64);
      v29 = *(v22 + 80);
      v30 = *v22 == *&v10 && *(v22 + 8) == v11;
      if (v30 || (v51 = *(v22 + 48), v52 = *(v22 + 64), v31 = sub_249D04D3C(), v27 = v51, v28 = v52, (v31 & 1) != 0))
      {
        v32 = v24 == v4 && v23 == v5;
        v33 = v32 && v25 == v6;
        if (v33 && ((v26 ^ v15) & 1) == 0)
        {
          if (v29)
          {
            if (v59)
            {
              goto LABEL_31;
            }
          }

          else if ((v59 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v27, v57), vceqq_f64(v28, v58)), xmmword_249D076A0)) & 0xF) == 0)
          {
LABEL_31:
            sub_249D031D8(v49);
            v34 = *(v47 + 48) + 88 * v19;
            v35 = *(v34 + 16);
            v54[0] = *v34;
            v54[1] = v35;
            v37 = *(v34 + 48);
            v36 = *(v34 + 64);
            v38 = *(v34 + 80);
            v54[2] = *(v34 + 32);
            v55 = v38;
            v54[3] = v37;
            v54[4] = v36;
            v39 = *(v34 + 16);
            *a1 = *v34;
            *(a1 + 16) = v39;
            v40 = *(v34 + 32);
            v41 = *(v34 + 48);
            v42 = *(v34 + 64);
            *(a1 + 80) = *(v34 + 80);
            *(a1 + 48) = v41;
            *(a1 + 64) = v42;
            *(a1 + 32) = v40;
            sub_249CE40CC(v54, v53);
            return 0;
          }
        }
      }

      v19 = (v19 + 1) & v20;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = *v48;
  sub_249CE40CC(v49, v54);
  sub_249CE4C34(v49, v19, isUniquelyReferenced_nonNull_native);
  *v48 = v53[0];
  v45 = *(v49 + 48);
  *(a1 + 32) = *(v49 + 32);
  *(a1 + 48) = v45;
  *(a1 + 64) = *(v49 + 64);
  *(a1 + 80) = *(v49 + 80);
  v46 = *(v49 + 16);
  result = 1;
  *a1 = *v49;
  *(a1 + 16) = v46;
  return result;
}

uint64_t sub_249CE7130(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19938, &qword_249D08028);
  v4 = sub_249D04C8C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v49 = v1;
    v50 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    v51 = v3;
    v52 = v4;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v54 = (v9 - 1) & v9;
LABEL_15:
      v18 = *(v3 + 48) + 88 * (v14 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      v24 = *(v18 + 40);
      *v57 = *(v18 + 41);
      *&v57[3] = *(v18 + 44);
      v25 = *(v18 + 48);
      v26 = *(v18 + 56);
      v27 = *(v18 + 72);
      v56 = *(v18 + 64);
      v28 = *(v18 + 80);
      sub_249D04D7C();
      v53 = v20;
      sub_249D04A6C();
      if (v21 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v21;
      }

      MEMORY[0x24C1FEE80](*&v29);
      if (v22 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v22;
      }

      MEMORY[0x24C1FEE80](*&v30);
      if (v23 == 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v23;
      }

      MEMORY[0x24C1FEE80](*&v31);
      v55 = v24;
      sub_249D04D8C();
      if (v28)
      {
        v32 = v27;
        v33 = v26;
        sub_249D04D8C();
        v34 = v56;
      }

      else
      {
        sub_249D04D8C();
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v35 = v25;
        }

        else
        {
          v35 = 0;
        }

        MEMORY[0x24C1FEE80](v35);
        v33 = v26;
        if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v36 = v26;
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x24C1FEE80](v36);
        v34 = v56;
        if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = v56;
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x24C1FEE80](v37);
        v32 = v27;
        if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v38 = v27;
        }

        else
        {
          v38 = 0;
        }

        MEMORY[0x24C1FEE80](v38);
      }

      result = sub_249D04DAC();
      v5 = v52;
      v39 = -1 << *(v52 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v11 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v11 + 8 * v41);
          if (v45 != -1)
          {
            v12 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_54:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v40) & ~*(v11 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v52 + 48) + 88 * v12;
      *v13 = v19;
      *(v13 + 8) = v53;
      *(v13 + 16) = v21;
      *(v13 + 24) = v22;
      *(v13 + 32) = v23;
      *(v13 + 40) = v55;
      *(v13 + 41) = *v57;
      *(v13 + 44) = *&v57[3];
      *(v13 + 48) = v25;
      *(v13 + 56) = v33;
      *(v13 + 64) = v34;
      *(v13 + 72) = v32;
      *(v13 + 80) = v28;
      ++*(v52 + 16);
      v3 = v51;
      v9 = v54;
    }

    v15 = v6;
    result = v50;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v6 >= v10)
      {
        break;
      }

      v17 = v50[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v54 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v46 = 1 << *(v3 + 32);
    if (v46 >= 64)
    {
      v47 = v5;
      bzero(v50, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v47;
    }

    else
    {
      *v50 = -1 << v46;
    }

    v2 = v49;
    *(v3 + 16) = 0;
  }

  v48 = v5;

  *v2 = v48;
  return result;
}

uint64_t sub_249CE7510(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = *(v1 + 8);
  *(v2 + 32) = *v1;
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v1 + 16);
  *(v2 + 64) = *(v1 + 32);
  *(v2 + 72) = *(v1 + 40);
  return MEMORY[0x2822009F8](sub_249CE7550, 0, 0);
}

id sub_249CE7550()
{
  v38 = v0;
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v6 = sub_249D04A3C();
  v7 = [v5 initWithType_];

  v8 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v4 scale:{v3, v2}];
  v9 = v8;
  if ((v1 & 1) == 0)
  {
    [v8 setVariantOptions_];
  }

  v10 = *(v0 + 72);
  v11 = *(v0 + 64);
  v12 = *(v0 + 40);
  v13 = *(v0 + 24);
  v30 = *(v0 + 32);
  v31 = v12;
  v32 = *(v0 + 48);
  v33 = v11;
  v34 = v10;
  v35 = *(v13 + 41);
  v36 = *(v13 + 57);
  v37 = *(v13 + 73);
  sub_249CE4104(&v27);
  v14 = v27;
  v15 = v28;
  v16 = v29;
  if (v28 == 1 && (v17 = [v7 prepareImageForDescriptor_]) != 0)
  {
    v18 = v17;
    sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
    v19 = v18;
    v20 = v9;
    result = sub_249CE6D10(v18, v20);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v22 = result;
    v23 = *(v0 + 16);
    v24 = [v19 placeholder];

    v16 = 0;
    *v23 = v22;
    *(v23 + 8) = v24;
  }

  else
  {
    v25 = *(v0 + 16);

    *v25 = v14;
    *(v25 + 8) = v15;
  }

  *(*(v0 + 16) + 9) = v16;
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_249CE7780(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19920, &qword_249D07FF0);
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  if (a1)
  {
    v9 = a1;
    v10[1] = [v9 UIImage];
    v10[2] = a2;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
    sub_249D04B8C();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21DocumentManagerUICore9ThumbnailO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_249CE791C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249CE798C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19950, &qword_249D08060);
  v51 = v4;
  result = sub_249D04D0C();
  v7 = result;
  if (*(v5 + 16))
  {
    v49 = v2;
    v50 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      if (v51)
      {
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 80 * v22;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 24);
        v29 = *(v24 + 32);
        v55[0] = *(v24 + 33);
        *(v55 + 3) = *(v24 + 36);
        v53 = *(v24 + 40);
        v54 = *(v24 + 56);
        v30 = *(v24 + 72);
        v52 = *(v23 + 8 * v22);
      }

      else
      {
        v31 = (*(v5 + 48) + 80 * v22);
        v33 = v31[1];
        v32 = v31[2];
        v34 = v31[3];
        *&v58[25] = *(v31 + 57);
        *&v58[16] = v34;
        v56 = *v31;
        v57 = v33;
        *v58 = v32;
        v35 = *(*(v5 + 56) + 8 * v22);
        sub_249CEA370(&v56, v55);
        v26 = *(&v56 + 1);
        v25 = v56;
        v28 = *(&v57 + 1);
        v27 = *&v57;
        v29 = v58[0];
        v55[0] = *&v58[1];
        *(v55 + 3) = *&v58[4];
        v53 = *&v58[8];
        v54 = *&v58[24];
        v36 = v58[40];
        v37 = v35;
        v30 = v36;
        v52 = v37;
      }

      sub_249D04D7C();
      sub_249D04C5C();
      if (v26 == 0.0)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = v26;
      }

      MEMORY[0x24C1FEE80](*&v38);
      if (v27 == 0.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v27;
      }

      MEMORY[0x24C1FEE80](*&v39);
      if (v28 == 0.0)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = v28;
      }

      MEMORY[0x24C1FEE80](*&v40);
      v59 = v53;
      v60 = v54;
      v61 = v30 & 1;
      sub_249D04D8C();
      sub_249D01748();
      result = sub_249D04DAC();
      v41 = -1 << *(v7 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v14 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v17 = v53;
        v16 = v54;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v14 + 8 * v43);
          if (v47 != -1)
          {
            v15 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v42) & ~*(v14 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v17 = v53;
      v16 = v54;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v7 + 48) + 80 * v15;
      *v18 = v25;
      *(v18 + 8) = v26;
      *(v18 + 16) = v27;
      *(v18 + 24) = v28;
      *(v18 + 32) = v29;
      *(v18 + 33) = v55[0];
      *(v18 + 36) = *(v55 + 3);
      *(v18 + 56) = v16;
      *(v18 + 40) = v17;
      *(v18 + 72) = v30;
      *(*(v7 + 56) + 8 * v15) = v52;
      ++*(v7 + 16);
      v5 = v50;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_43;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v49;
    if (v48 >= 64)
    {
      bzero(v9, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

LABEL_43:
  *v3 = v7;
  return result;
}

unint64_t sub_249CE7D88()
{
  result = qword_27EF198A8;
  if (!qword_27EF198A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF198A8);
  }

  return result;
}

unint64_t sub_249CE7DDC(uint64_t *a1, uint64_t a2, void (*a3)(__int128 *, _BYTE *), void (*a4)(__int128 *, double))
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(a1 + 1);
    v11 = *(a1 + 2);
    v12 = *(a1 + 3);
    v18 = *(a1 + 5);
    v19 = *(a1 + 7);
    v22 = *(a1 + 72);
    v23 = *(a1 + 32);
    sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
    while (1)
    {
      v13 = (*(v4 + 48) + 80 * v6);
      v25 = *v13;
      v15 = v13[2];
      v14 = v13[3];
      v16 = v13[1];
      *&v27[25] = *(v13 + 57);
      *&v27[16] = v14;
      v26 = v16;
      *v27 = v15;
      a3(&v25, v24);
      if (sub_249D04C4C() & 1) == 0 || *(&v25 + 1) != v10 || *&v26 != v11 || *(&v26 + 1) != v12 || ((v27[0] ^ v23))
      {
        goto LABEL_4;
      }

      if (v27[40])
      {
        break;
      }

      v20 = *&v27[8];
      v21 = *&v27[24];
      (a4)(&v25);
      if ((v22 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v20, v18), vceqq_f64(v21, v19)), xmmword_249D076A0)) & 0xF) == 0)
      {
        return v6;
      }

LABEL_5:
      v6 = (v6 + 1) & v9;
      if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v22)
    {
      a4(&v25, *(&v26 + 1));
      return v6;
    }

LABEL_4:
    (a4)(&v25);
    goto LABEL_5;
  }

  return v6;
}

uint64_t sub_249CE7FF4()
{
  v1 = *v0;
  v2 = *(*v0 + 616);

  v3 = *(v1 + 416);
  *(v1 + 136) = *(v1 + 400);
  *(v1 + 152) = v3;
  *(v1 + 168) = *(v1 + 432);
  *(v1 + 184) = *(v1 + 448);
  v4 = *(v1 + 384);
  *(v1 + 104) = *(v1 + 368);
  *(v1 + 120) = v4;
  sub_249D03208(v1 + 104);

  return MEMORY[0x2822009F8](sub_249CE8154, v2, 0);
}

unint64_t sub_249CE8168(uint64_t a1, void (*a2)(__int128 *, _BYTE *), void (*a3)(__int128 *, double))
{
  sub_249D04D7C();
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_249D04C5C();
  if (v6 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x24C1FEE80](*&v9);
  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x24C1FEE80](*&v10);
  if (v8 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8;
  }

  MEMORY[0x24C1FEE80](*&v11);
  sub_249D04D8C();
  sub_249D01748();
  v12 = sub_249D04DAC();
  return sub_249CE7DDC(a1, v12, a2, a3);
}

uint64_t sub_249CE8270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[14];
  v8 = v1[25];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_249CE6A34;

  return sub_249CE8358(a1, v4, v5, v6, (v1 + 5), v7, (v1 + 15), v8);
}

uint64_t sub_249CE8358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[88] = v10;
  v8[87] = a8;
  v8[86] = a7;
  v8[85] = a6;
  v8[84] = a5;
  v8[83] = a4;
  return MEMORY[0x2822009F8](sub_249CE8394, 0, 0);
}

uint64_t sub_249CE8394()
{
  if ([swift_unknownObjectRetain() isFolder])
  {
    v1 = *(v0 + 672);
    v2 = *(v0 + 664);
    v3 = *v1;
    v4 = *(v1 + 2);
    if (v1[4])
    {
      v5 = 0;
    }

    else
    {
      v14 = *v1;
      v5 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithRed:*(v1 + 4) green:*(v1 + 5) blue:*(v1 + 6) alpha:*(v1 + 7)];
      v3 = v14;
    }

    *(v0 + 568) = v2;
    *(v0 + 576) = 0;
    *(v0 + 584) = 1;
    *(v0 + 592) = v3;
    *(v0 + 608) = v4;
    *(v0 + 616) = v5;
    v12 = swift_task_alloc();
    *(v0 + 712) = v12;
    *v12 = v0;
    v12[1] = sub_249CFECF8;

    return FolderIconFetcher.fetchImageAndOverlay()(v0 + 648);
  }

  else
  {
    v6 = *(v0 + 680);
    v7 = *(v0 + 672);
    swift_unknownObjectRelease();
    v8 = *(v6 + 32);
    *(v0 + 720) = v8;
    *(v0 + 496) = *v7;
    v9 = *(v7 + 16);
    v10 = *(v7 + 32);
    v11 = *(v7 + 48);
    *(v0 + 560) = *(v7 + 64);
    *(v0 + 528) = v10;
    *(v0 + 544) = v11;
    *(v0 + 512) = v9;

    return MEMORY[0x2822009F8](sub_249CE8558, v8, 0);
  }
}

uint64_t sub_249CE8558()
{
  *(v0 + 728) = sub_249CE8608(*(v0 + 664), (v0 + 496));
  v1 = swift_task_alloc();
  *(v0 + 736) = v1;
  *v1 = v0;
  v1[1] = sub_249CE9DAC;
  v2 = *(v0 + 696);

  return sub_249CE53F8(v0 + 624, v2);
}

uint64_t sub_249CE8608(void *a1, __int128 *a2)
{
  v3 = v2;
  v5 = [a1 thumbnailIdentifier];
  v6 = *a2;
  v31 = a2[1];
  v7 = a2[3];
  v32 = a2[2];
  v33 = v7;
  v34 = *(a2 + 64);
  v30 = v6;
  v29 = v5;
  swift_beginAccess();
  sub_249CE8850(&v29, &v24);
  swift_endAccess();
  v35[2] = v26;
  v36[0] = v27[0];
  *(v36 + 9) = *(v27 + 9);
  v35[0] = v24;
  v35[1] = v25;
  sub_249CE9184(v35, &qword_27EF19978, &qword_249D080A8);
  swift_beginAccess();
  v8 = *(v2 + 112);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = sub_249CE8168(&v29, sub_249CE93BC, sub_249CE93F4);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    v12 = a2[3];
    v22[2] = a2[2];
    v22[3] = v12;
    v23 = *(a2 + 64);
    v13 = a2[1];
    v22[0] = *a2;
    v22[1] = v13;
    v14 = swift_unknownObjectRetain();
    sub_249CE8B3C(v14, v22, &v24);
    type metadata accessor for ImageRequest();
    v11 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v11 + 112) = 0;
    *(v11 + 120) = 0;
    *(v11 + 128) = 0x80;
    v15 = MEMORY[0x277D84F90];
    *(v11 + 136) = MEMORY[0x277D84F90];
    v16 = v27[0];
    v17 = v27[1];
    *(v11 + 176) = v26;
    *(v11 + 192) = v16;
    *(v11 + 208) = v17;
    *(v11 + 224) = v28;
    *(v11 + 232) = v15;
    v18 = v25;
    *(v11 + 144) = v24;
    *(v11 + 160) = v18;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v3 + 112);
    *(v3 + 112) = 0x8000000000000000;
    sub_249CE91E4(v11, &v29, isUniquelyReferenced_nonNull_native);
    sub_249CE93F4(&v29);
    *(v3 + 112) = v21;
    swift_endAccess();
    return v11;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  sub_249CE93F4(&v29);

  return v11;
}

uint64_t sub_249CE8850@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  sub_249D04D7C();
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 32);
  sub_249D04C5C();
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x24C1FEE80](*&v9);
  if (v6 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v6;
  }

  MEMORY[0x24C1FEE80](*&v10);
  if (v7 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v7;
  }

  MEMORY[0x24C1FEE80](*&v11);
  v12 = *(a1 + 7);
  v37 = *(a1 + 5);
  v38 = v12;
  v39 = *(a1 + 72);
  sub_249D04D8C();
  sub_249D01748();
  result = sub_249D04DAC();
  v14 = -1 << *(v4 + 32);
  v15 = result & ~v14;
  if (((*(v4 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_24:
    *(a2 + 57) = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v16 = ~v14;
  sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
  while (1)
  {
    v17 = (*(v4 + 48) + 80 * v15);
    v34 = *v17;
    v19 = v17[2];
    v18 = v17[3];
    v20 = *(v17 + 57);
    v35 = v17[1];
    *v36 = v19;
    *&v36[25] = v20;
    *&v36[16] = v18;
    sub_249CE93BC(&v34, v33);
    if (sub_249D04C4C() & 1) == 0 || *(&v34 + 1) != v5 || *&v35 != v6 || *(&v35 + 1) != v7 || ((v36[0] ^ v8))
    {
      goto LABEL_13;
    }

    v21 = v39;
    if (v36[40])
    {
      break;
    }

    v31 = *&v36[8];
    v32 = *&v36[24];
    v29 = v37;
    v30 = v38;
    result = sub_249CE93F4(&v34);
    if ((v21 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v31, v29), vceqq_f64(v32, v30)), xmmword_249D076A0)) & 0xF) == 0)
    {
      goto LABEL_26;
    }

LABEL_14:
    v15 = (v15 + 1) & v16;
    if (((*(v4 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((v39 & 1) == 0)
  {
LABEL_13:
    result = sub_249CE93F4(&v34);
    goto LABEL_14;
  }

  sub_249CE93F4(&v34);
LABEL_26:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v27;
  v33[0] = *v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_249D007CC();
    v23 = v33[0];
  }

  v24 = (*(v23 + 48) + 80 * v15);
  v25 = v24[3];
  a2[2] = v24[2];
  a2[3] = v25;
  *(a2 + 57) = *(v24 + 57);
  v26 = v24[1];
  *a2 = *v24;
  a2[1] = v26;
  result = sub_249D01334(v15);
  *v27 = v33[0];
  return result;
}

double sub_249CE8B3C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v54 - v6;
  v7 = sub_249D049DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_249D0494C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v65 = *(a2 + 24);
  v66[0] = *(a2 + 40);
  v18 = v66[0];
  *(v66 + 9) = *(a2 + 49);
  v60 = v65;
  v61[0] = v18;
  *(v61 + 9) = *(v66 + 9);
  v19 = [a1 nodeURL];
  if (v19)
  {
    v20 = v19;
    sub_249D0493C();

    v21 = objc_allocWithZone(MEMORY[0x277CDAAD8]);
    v22 = sub_249D0492C();
    v23 = [v21 initWithFileAtURL:v22 size:6 scale:v15 representationTypes:{v16, v17}];

    (*(v12 + 8))(v14, v11);
    v56 = v23;
    if (!v23)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v24 = v8;
  v25 = [a1 fpfs_fpItem];
  if (v25)
  {
    v26 = v25;
    v23 = [objc_allocWithZone(MEMORY[0x277CDAAD8]) initWithFPItem:v25 size:6 scale:v15 representationTypes:{v16, v17}];

    v56 = v23;
    if (v23)
    {
LABEL_6:
      v27 = [objc_opt_self() useBlastDoorThumbnails];
      v28 = [v27 isEnabled];

      [v23 setShouldUseRestrictedExtension_];
    }
  }

  else
  {
    sub_249D049CC();
    swift_unknownObjectRetain();
    v29 = sub_249D049BC();
    v30 = sub_249D04BFC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v55 = v31;
      v56 = swift_slowAlloc();
      *&v62 = v56;
      *v31 = 136446210;
      v32 = [a1 description];
      v33 = sub_249D04A4C();
      v35 = v34;

      v36 = sub_249CFF658(v33, v35, &v62);

      v37 = v55;
      *(v55 + 1) = v36;
      _os_log_impl(&dword_249CE0000, v29, v30, "FAILED TO CREATE QLThumbnailGenerator.Request FOR NODE: %{public}s", v37, 0xCu);
      v38 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x24C1FF880](v38, -1, -1);
      MEMORY[0x24C1FF880](v37, -1, -1);
    }

    (*(v24 + 8))(v10, v7);
    v56 = 0;
  }

LABEL_10:
  v39 = [swift_unknownObjectRetain() typeIdentifier];
  v40 = sub_249D04A4C();
  v42 = v41;

  *&v62 = v40;
  *(&v62 + 1) = v42;
  *&v63 = v15;
  *(&v63 + 1) = v16;
  *v64 = v17;
  *&v64[8] = v65;
  *&v64[24] = v66[0];
  *&v64[33] = *(v66 + 9);
  v43 = v57;
  sub_249D04B3C();
  v44 = sub_249D04B6C();
  v45 = *(*(v44 - 8) + 56);
  v45(v43, 0, 1, v44);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v47 = *&v64[16];
  *(v46 + 64) = *v64;
  *(v46 + 80) = v47;
  *(v46 + 96) = *&v64[32];
  *(v46 + 112) = v64[48];
  v48 = v63;
  *(v46 + 32) = v62;
  *(v46 + 48) = v48;
  sub_249CE40CC(&v62, &v59);
  sub_249CFA160(0, 0, v43, &unk_249D080B8, v46);

  swift_unknownObjectRelease();
  v45(v43, 1, 1, v44);
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  *(v49 + 32) = v40;
  *(v49 + 40) = v42;
  *(v49 + 48) = v15;
  *(v49 + 56) = v16;
  *(v49 + 64) = v17;
  *(v49 + 72) = v65;
  *(v49 + 88) = v66[0];
  *(v49 + 97) = *(v66 + 9);
  v50 = sub_249CFA460(0, 0, v43, &unk_249D080C8, v49);
  swift_unknownObjectRelease();
  v51 = v58;
  *v58 = v15;
  v51[1] = v16;
  v51[2] = v17;
  v52 = v61[0];
  *(v51 + 3) = v60;
  *(v51 + 5) = v52;
  result = *(v61 + 9);
  *(v51 + 49) = *(v61 + 9);
  *(v51 + 9) = v56;
  *(v51 + 10) = v50;
  return result;
}

uint64_t sub_249CE9184(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_249CE91E4(uint64_t a1, _OWORD *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_249CE8168(a2, sub_249CE93BC, sub_249CE93F4);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_249CE4F70(v14, a3 & 1);
      v9 = sub_249CE8168(a2, sub_249CE93BC, sub_249CE93F4);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_249D04D6C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_249D00FD8();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = (v19[6] + 80 * v9);
    *v21 = *a2;
    v22 = a2[1];
    v23 = a2[2];
    v24 = a2[3];
    *(v21 + 57) = *(a2 + 57);
    v21[2] = v23;
    v21[3] = v24;
    v21[1] = v22;
    *(v19[7] + 8 * v9) = a1;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return sub_249CE93BC(a2, &v27);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_249CE9424(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 != 1)
    {
      return;
    }

    a3 &= 0x3Fu;
  }

  sub_249CE3970(a1, a2, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249CE94B0()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_249CE95C0, v1, 0);
}

uint64_t sub_249CE95C0()
{
  v2 = v0 + 22;
  v1 = v0[22];
  v3 = *(v0 + 192);
  if (v3 != 255)
  {
    v4 = v0[23];
    v5 = *(v0[30] + 17);
    v66 = v0[22];
    if (v5 >> 62)
    {
      goto LABEL_75;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = *(v0 + 192);
    if (v6)
    {
      do
      {
        v62 = v2;
        v63 = v0;
        v71 = v5 & 0xC000000000000001;
        v65 = v5 & 0xFFFFFFFFFFFFFF8;
        v7 = 2;
        if (v4 == 2)
        {
          v7 = 3;
        }

        v64 = v7;

        v2 = 0;
        v0 = &selRef__setPickerMode_;
        v70 = v4;
        v67 = v6;
        v68 = v5;
        while (v71)
        {
          MEMORY[0x24C1FED90](v2, v5);
          v9 = __OFADD__(v2, 1);
          v2 = (v2 + 1);
          if (v9)
          {
            goto LABEL_72;
          }

LABEL_16:
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            goto LABEL_9;
          }

          v11 = Strong;
          v12 = Strong + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
          os_unfair_lock_lock((Strong + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
          if (v3)
          {
            if (v3 == 1)
            {
              v13 = v64;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 1;
          }

          v14 = *(v12 + 16);
          v15 = *(v12 + 24);
          if (!*(v12 + 24))
          {
            if (!v13)
            {
              goto LABEL_29;
            }

LABEL_28:
            sub_249CE3970(*(v12 + 8), v14, v15);
            *(v12 + 8) = v66;
            *(v12 + 16) = v4;
            *(v12 + 24) = v3;
            sub_249CE9D08(v66, v4, v3);
            goto LABEL_29;
          }

          if (v15 != 1)
          {
            goto LABEL_28;
          }

          if (v14 == 2)
          {
            if (v13 == 3)
            {
              goto LABEL_28;
            }
          }

          else if (v13 >= 2)
          {
            goto LABEL_28;
          }

LABEL_29:
          os_unfair_lock_unlock(v12);
          v16 = &v11[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners];
          os_unfair_lock_lock(&v11[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners]);
          v17 = *(v16 + 1);
          if (v17 >> 62)
          {
            v4 = sub_249D04CEC();
            if (!v4)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v4 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v4)
            {
              goto LABEL_42;
            }
          }

          if (v4 < 1)
          {
            goto LABEL_73;
          }

          for (i = 0; i != v4; ++i)
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              MEMORY[0x24C1FED90](i, v17);
            }

            else
            {
            }

            v19 = swift_unknownObjectWeakLoadStrong();
            if (v19)
            {
              [v19 thumbnailLoaded_];
              swift_unknownObjectRelease();
            }
          }

LABEL_42:
          os_unfair_lock_unlock(v16);
          v3 = v69;
          if (v69 == 1)
          {
            v4 = v70;
            if (v70 != 1)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v4 = v70;
            if (!v69 && (v70 & 0x100) != 0)
            {
LABEL_47:
              v20 = &v11[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers];
              os_unfair_lock_lock(&v11[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers]);
              v21 = *(v20 + 1);
              v22 = *(v21 + 16);
              if (v22)
              {
                v23 = v21 + 40;
                do
                {
                  v24 = *(v23 - 8);

                  v24(v25);

                  v23 += 16;
                  --v22;
                }

                while (v22);
                v4 = v70;
              }

              v8 = MEMORY[0x277D84F90];
              *(v20 + 1) = MEMORY[0x277D84F90];

              os_unfair_lock_unlock(v20);
              os_unfair_lock_lock(v16);
              *(v16 + 1) = v8;

              os_unfair_lock_unlock(v16);
            }
          }

          v6 = v67;
          v5 = v68;
LABEL_9:

          if (v2 == v6)
          {

            v2 = v62;
            v0 = v63;
            v1 = v66;
            goto LABEL_52;
          }
        }

        if (v2 >= *(v65 + 16))
        {
          goto LABEL_74;
        }

        v9 = __OFADD__(v2, 1);
        v2 = (v2 + 1);
        if (!v9)
        {
          goto LABEL_16;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        v61 = sub_249D04CEC();
        v1 = v66;
        v6 = v61;
        v69 = v3;
      }

      while (v61);
    }

LABEL_52:
    if (v3 == 1)
    {
      if (v4 == 1)
      {
LABEL_55:
        v26 = v0[30];
        v27 = *(v26 + 14);
        v28 = *(v26 + 15);
        *(v26 + 14) = v1;
        *(v26 + 15) = v4;
        v29 = v26[128];
        v26[128] = v3;
        sub_249CE9424(v27, v28, v29);
LABEL_66:
        v52 = v0[43];
        v53 = v0[30];
        v54 = swift_task_alloc();
        v0[44] = v54;
        *v54 = v0;
        *(v54 + 1) = sub_249CE94B0;
        v55 = v0[40];

        return MEMORY[0x2822003E8](v2, v53, v52, v55);
      }
    }

    else if (v3 || (v4 & 0x100) == 0)
    {
      goto LABEL_55;
    }

    v38 = v0[30];
    v40 = *(v38 + 14);
    v39 = *(v38 + 15);
    *(v38 + 14) = v1;
    *(v38 + 15) = v4;
    v41 = v38[128];
    v38[128] = v3 | 0x40;
    sub_249CE395C(v1, v4, v3);
    sub_249CE9424(v40, v39, v41);
    v42 = v0;
    v43 = MEMORY[0x277D84F90];
    *(v38 + 17) = MEMORY[0x277D84F90];

    v44 = *(v38 + 29);
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = v0[32];
      v47 = v44 + ((v46[80] + 32) & ~v46[80]);
      v73 = *(v46 + 9);
      v72 = *(v46 + 2);

      v48 = v2;
      do
      {
        v50 = v42[32];
        v49 = v42[33];
        v51 = v42[31];
        v72(v49, v47, v51);
        v42[25] = v66;
        v42[26] = v4;
        *(v42 + 216) = v69;
        sub_249CE395C(v66, v4, v69);
        sub_249D04B0C();
        (*(v50 + 1))(v49, v51);
        v47 += v73;
        --v45;
      }

      while (v45);

      v2 = v48;
      v43 = MEMORY[0x277D84F90];
    }

    *(v42[30] + 29) = v43;

    sub_249CE9D54(v66, v4, v69);
    v0 = v42;
    goto LABEL_66;
  }

  v30 = v0[30];
  (*(v0[41] + 1))(v0[42], v0[40]);
  v31 = v30[128];
  if ((v31 & 0xC0) == 0x40)
  {
    v32 = v0[30];
    v33 = v0[28];
    v34 = *(v32 + 14);
    v35 = *(v32 + 15);
    *v33 = v34;
    *(v33 + 1) = v35;
    v33[16] = v31 & 0x3F;
    sub_249CE395C(v34, v35, v31 & 0x3F);

    v36 = v0[1];

    return v36();
  }

  else
  {
    v56 = v0[30];
    v57 = sub_249CE6C80(&qword_27EF19908, 255, type metadata accessor for ImageRequest, &unk_249D07EF8);
    v58 = swift_task_alloc();
    v0[45] = v58;
    *v58 = v0;
    *(v58 + 1) = sub_249CFCB78;
    v59 = v0[30];
    v60 = v0[28];

    return MEMORY[0x2822007B8](v60, v56, v57, 0xD000000000000015, 0x8000000249D091E0, sub_249D02D94, v59, &type metadata for Thumbnail);
  }
}

id sub_249CE9D08(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_249CE395C(result, a2, a3);
  }

  return result;
}

uint64_t sub_249CE9D1C()
{
  MEMORY[0x24C1FF940](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_249CE9D54(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_249CE3970(a1, a2, a3);
  }
}

uint64_t sub_249CE9D68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_249CE9DAC()
{

  if (v0)
  {

    v1 = sub_249CFF104;
  }

  else
  {
    v1 = sub_249CE9EC4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_249CE9EC4()
{
  v30 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 632);
  v3 = *(v0 + 640);
  if (v3 == 1)
  {
    v4 = *(v0 + 704);
    v5 = *(v0 + 688);
    v6 = *(v0 + 680);
    os_unfair_lock_lock((v6 + 16));
    *(v0 + 16) = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    *(v0 + 73) = *(v5 + 57);
    *(v0 + 48) = v8;
    *(v0 + 64) = v9;
    *(v0 + 32) = v7;
    sub_249CE395C(v1, v2, 1u);
    sub_249D03320(v5, v0 + 256, &qword_27EF19970, &qword_249D080A0);
    sub_249CE395C(v1, v2, 1u);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v28[0] = *(v6 + 24);
    *(v6 + 24) = 0x8000000000000000;
    sub_249CEA19C(v1, (v0 + 16), isUniquelyReferenced_nonNull_native);
    *(v6 + 24) = *&v28[0];
    *(v0 + 96) = *v4;
    v11 = v4[1];
    v12 = v4[2];
    v13 = v4[3];
    *(v0 + 153) = *(v4 + 57);
    *(v0 + 128) = v12;
    *(v0 + 144) = v13;
    *(v0 + 112) = v11;
    sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
    sub_249D03320(v4, v0 + 336, &qword_27EF19970, &qword_249D080A0);
    v14 = sub_249D04C4C();
    v15 = *(v0 + 688);
    if (v14)
    {
      v16 = *(v0 + 120);
      v17 = *(v0 + 152);
      v26[2] = *(v0 + 136);
      v26[3] = v17;
      v27 = *(v0 + 168);
      v26[0] = *(v0 + 104);
      v26[1] = v16;
      v18 = *(v0 + 40);
      v19 = *(v0 + 72);
      v28[2] = *(v0 + 56);
      v28[3] = v19;
      v29 = *(v0 + 88);
      v28[0] = *(v0 + 24);
      v28[1] = v18;
      v20 = _s21DocumentManagerUICore12ImageOptionsV2eeoiySbAC_ACtFZ_0(v26, v28);
      sub_249CE9184(v15, &qword_27EF19970, &qword_249D080A0);
      if (v20)
      {
        v21 = *(v0 + 704);
        sub_249CE3970(v1, v2, 1u);
        sub_249CE9184(v21, &qword_27EF19970, &qword_249D080A0);
LABEL_8:
        os_unfair_lock_unlock((v6 + 16));
        LOBYTE(v3) = 1;
        goto LABEL_9;
      }
    }

    else
    {
      sub_249CE9184(*(v0 + 688), &qword_27EF19970, &qword_249D080A0);
    }

    v22 = *(v0 + 704);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v28[0] = *(v6 + 24);
    *(v6 + 24) = 0x8000000000000000;
    sub_249CEA19C(v1, (v0 + 96), v23);
    sub_249CE9184(v22, &qword_27EF19970, &qword_249D080A0);
    *(v6 + 24) = *&v28[0];
    goto LABEL_8;
  }

LABEL_9:
  sub_249CE3970(v1, v2, v3);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_249CEA19C(uint64_t a1, _OWORD *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_249CE8168(a2, sub_249CEA370, sub_249CE6DB8);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * v9) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(v9 >> 6) + 8] |= 1 << v9;
    v20 = (v19[6] + 80 * v9);
    *v20 = *a2;
    v21 = a2[1];
    v22 = a2[2];
    v23 = a2[3];
    *(v20 + 57) = *(a2 + 57);
    v20[2] = v22;
    v20[3] = v23;
    v20[1] = v21;
    *(v19[7] + 8 * v9) = a1;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return sub_249CEA370(a2, &v27);
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = v9;
    sub_249D01188();
    v9 = v17;
    goto LABEL_8;
  }

  sub_249CE798C(v14, a3 & 1);
  v9 = sub_249CE8168(a2, sub_249CEA370, sub_249CE6DB8);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_249D04D6C();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

void sub_249CEA3A8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_249CEA43C(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);

  return sub_249CE7780(a1, a2);
}

void sub_249CEA4D0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_249CEA55C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19920, &qword_249D07FF0);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  if (a2 || !a1)
  {
    v22 = sub_249D04B6C();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    (*(v12 + 16))(v14, a4, v11);
    v23 = (*(v12 + 80) + 120) & ~*(v12 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v25 = *(a3 + 48);
    *(v24 + 64) = *(a3 + 32);
    *(v24 + 80) = v25;
    *(v24 + 96) = *(a3 + 64);
    *(v24 + 112) = *(a3 + 80);
    v26 = *(a3 + 16);
    *(v24 + 32) = *a3;
    *(v24 + 48) = v26;
    (*(v12 + 32))(v24 + v23, v14, v11);
    sub_249CE9448(a3, v30);
    sub_249CFA160(0, 0, v17, &unk_249D08000, v24);
  }

  else
  {
    sub_249D04BDC();
    v18 = [a1 UIImage];
    if (v18)
    {
      v19 = v18;
      v20 = [a1 type];
      v30[0] = v19;
      v30[1] = v20;
      v31 = 1;
      sub_249D04B8C();
      (*(v28 + 8))(v10, v29);
    }

    return sub_249D04B9C();
  }
}

uint64_t sub_249CEA894(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8) - 8);
  v6 = v2 + ((*(v5 + 80) + 104) & ~*(v5 + 80));

  return sub_249CEA55C(a1, a2, v2 + 16, v6);
}

uint64_t sub_249CEA954(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249CE6A30;

  return sub_249CEAABC(a1, v4);
}

uint64_t sub_249CEAA0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_249CE6A30;

  return sub_249CEABB4(a1, v4, v5, v1 + 32);
}

uint64_t sub_249CEAABC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_249CE6B2C;

  return v6(a1);
}

uint64_t sub_249CEABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v6;
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = *(a4 + 80);
  v7 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = swift_task_alloc();
  *(v4 + 104) = v8;
  *v8 = v4;
  v8[1] = sub_249CEAC70;

  return sub_249CE7510(a1);
}

uint64_t sub_249CEAC70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_249CEB288()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249CEB2C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249CEB300(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_249CEB310@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_249CEB340()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_249CEB3A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249CEB3EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249CEB424()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249CEB464()
{
  MEMORY[0x24C1FF940](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249CEB4D8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_249CEB538()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF19790, &unk_249D078B8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_249CEB570()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249CEB5A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249CEB5FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_249CEEB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 48), 8);
  objc_sync_exit(v13);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void DOCDocumentPickerExtensionUpdateWithConfiguration(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 _setPickerMode:{objc_msgSend(v3, "interactionMode")}];
  v5 = MEMORY[0x277CE1CB8];
  v7 = [v3 documentContentTypes];

  v6 = [v5 doc_identifiersForContentTypes:v7];
  [v4 _setPickableTypes:v6];
}

id DOCLogHandle()
{
  v0 = MEMORY[0x277D062B8];
  v1 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

DOCOpenLocationIntent *DOCCreateDefaultHomeScreenWidgetIntent()
{
  v0 = [DOCIntentLocation alloc];
  v1 = *MEMORY[0x277D060F8];
  v2 = _DocumentManagerBundle();
  v3 = [v2 localizedStringForKey:@"Recents" value:@"Recents" table:@"Localizable"];
  v4 = [(DOCIntentLocation *)v0 initWithIdentifier:v1 displayString:v3];

  v5 = [MEMORY[0x277CD3D10] systemImageNamed:@"folder"];
  [(DOCIntentLocation *)v4 setDisplayImage:v5];

  [(DOCIntentLocation *)v4 setLocationType:@"recents"];
  [(DOCIntentLocation *)v4 setLocationIdentifier:v1];
  v6 = objc_alloc_init(DOCOpenLocationIntent);
  [(DOCOpenLocationIntent *)v6 _setLaunchId:@"com.apple.DocumentsApp"];
  [(DOCOpenLocationIntent *)v6 _setExtensionBundleId:@"com.apple.DocumentManagerUICore.RecentsAvocadoIntentHandler"];
  [(DOCOpenLocationIntent *)v6 setLocation:v4];

  return v6;
}

id DOCConstraintsToResizeViewsWithSuperview(void *a1, double a2, double a3, double a4, double a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{4 * objc_msgSend(v9, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [v16 superview];
        v18 = DOCConstraintsToResizeWithReferenceView(v16, v17, a2, a3, a4, a5);
        [v10 addObjectsFromArray:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  return v10;
}

id DOCConstraintsToResizeWithReferenceView(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v11 topAnchor];
  v15 = [v12 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:a3];
  [v13 addObject:v16];

  v17 = [v11 leadingAnchor];
  v18 = [v12 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:a4];
  [v13 addObject:v19];

  v20 = [v11 bottomAnchor];
  v21 = [v12 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-a5];
  [v13 addObject:v22];

  v23 = [v11 trailingAnchor];
  v24 = [v12 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-a6];
  [v13 addObject:v25];

  return v13;
}

id DOCConstraintsToResizeWithSuperview(void *a1, double a2, double a3, double a4, double a5)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = a1;
  v9 = MEMORY[0x277CBEA60];
  v10 = a1;
  v11 = [v9 arrayWithObjects:v14 count:1];

  v12 = DOCConstraintsToResizeViewsWithSuperview(v11, a2, a3, a4, a5);

  return v12;
}

id DOCConstraintsToResizeWithSuperviewSafeArea(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v9 topAnchor];
  v12 = [v9 superview];
  v13 = [v12 safeAreaLayoutGuide];
  v14 = [v13 topAnchor];
  v15 = [v11 constraintEqualToAnchor:v14 constant:a2];
  [v10 addObject:v15];

  v16 = [v9 leadingAnchor];
  v17 = [v9 superview];
  v18 = [v17 safeAreaLayoutGuide];
  v19 = [v18 leadingAnchor];
  v20 = [v16 constraintEqualToAnchor:v19 constant:a3];
  [v10 addObject:v20];

  v21 = [v9 bottomAnchor];
  v22 = [v9 superview];
  v23 = [v22 safeAreaLayoutGuide];
  v24 = [v23 bottomAnchor];
  v25 = [v21 constraintEqualToAnchor:v24 constant:-a4];
  [v10 addObject:v25];

  v26 = [v9 trailingAnchor];
  v27 = [v9 superview];
  v28 = [v27 safeAreaLayoutGuide];
  v29 = [v28 trailingAnchor];
  v30 = [v26 constraintEqualToAnchor:v29 constant:-a5];
  [v10 addObject:v30];

  [v10 enumerateObjectsUsingBlock:&__block_literal_global_3];

  return v10;
}

id DOCConstraintWithPriority(void *a1, float a2)
{
  v3 = a1;
  *&v4 = a2;
  [v3 setPriority:v4];

  return v3;
}

id DOCConstraintsWithPriority(void *a1, float a2)
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a1;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __DOCConstraintsWithPriority_block_invoke;
  v8[3] = &unk_278FB3A88;
  v6 = v5;
  v9 = v6;
  v10 = a2;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __DOCConstraintsWithPriority_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  LODWORD(v4) = v3;
  [v5 setPriority:v4];
  [v2 addObject:v5];
}

id DOCUIFolderAnimationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCUIFolderAnimationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DOCUIFolderAnimationView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCUIFolderAnimationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_249CF47F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v21 = a1;
  v22 = sub_249D0496C();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(swift_allocObject() + 16) = v5;
  sub_249CEB300(a4, a5);
  sub_249CEB300(a2, v20);
  v13 = v5;
  v14 = sub_249D0495C();
  MEMORY[0x28223BE20](v14);
  v15 = v22;
  (*(v9 + 16))(&v19 - v11, &v19 - v11, v22);
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19428, &unk_249D07310));
  v17 = sub_249D04A2C();
  [v13 addSubview_];
  [v13 bounds];
  [v17 setFrame_];

  return (*(v9 + 8))(&v19 - v11, v15);
}

uint64_t sub_249CF4A1C(void (*a1)(uint64_t), uint64_t a2)
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    a1(isCurrentExecutor);
  }
}

void sub_249CF4AD8(void *a1, uint64_t a2)
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [a1 window];
  if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
  {
    v6 = [v5 screen];

    [v6 scale];
  }

  else
  {
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id DOCUIFolderAnimationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUIFolderAnimationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_249CF4CE4(uint64_t a1, int a2)
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

uint64_t sub_249CF4D04(uint64_t result, int a2, int a3)
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

void sub_249CF4D54(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

BOOL static FolderAssetType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_249CF4DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

void FolderIconFetcher.init(node:assetType:size:scale:traitCollection:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v12 = *a2;
  v13 = *(a2 + 8);
  if (a3)
  {
    v15 = UITraitCollection._ifColorForIconFolderTint.getter();
  }

  else
  {
    v15 = 0;
  }

  *a4 = a1;
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  *(a4 + 40) = a7;
  *(a4 + 48) = v15;
}

uint64_t static FolderIconFetcher.prewarmGenericFolder()()
{
  if (qword_27EF193F0 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_249CF4EC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = sub_249D04B6C();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  sub_249CFA160(0, 0, v2, &unk_249D07668, v7);
}

uint64_t sub_249CF5018()
{
  v1 = *(v0 + 88);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = vdupq_n_s64(0x4055000000000000uLL);
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_249CF50D8;

  return FolderIconFetcher.fetchImageAndOverlay()(v0 + 72);
}

uint64_t sub_249CF50D8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 64);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v2 + 64);
    swift_unknownObjectRelease();

    v3 = *(v2 + 80);
  }

  return MEMORY[0x2822009F8](sub_249CE8154, 0, 0);
}

id FolderIconFetcher.init(node:assetType:imageOptions:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = *(a3 + 48);
  v11 = *(a3 + 56);
  v12 = *(a3 + 64);
  *a4 = a1;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = *a3;
  *(a4 + 40) = v7;
  if (v12)
  {
    result = 0;
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithRed:v8 green:v9 blue:v10 alpha:v11];
  }

  *(a4 + 48) = result;
  return result;
}

uint64_t FolderIconFetcher.fetchImageAndOverlay()(uint64_t a1)
{
  *(v2 + 472) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D0, &qword_249D074E8);
  *(v2 + 480) = v3;
  *(v2 + 488) = *(v3 - 8);
  *(v2 + 496) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D8, &qword_249D074F0);
  *(v2 + 504) = v4;
  *(v2 + 512) = *(v4 - 8);
  *(v2 + 520) = swift_task_alloc();
  *(v2 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF195E0, &qword_249D074F8);
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  v5 = *v1;
  *(v2 + 672) = *(v1 + 16);
  v6 = *(v1 + 24);
  *(v2 + 552) = v5;
  *(v2 + 568) = v6;
  *(v2 + 584) = *(v1 + 5);
  *(v2 + 592) = *(v1 + 6);

  return MEMORY[0x2822009F8](sub_249CF545C, 0, 0);
}

uint64_t sub_249CF545C()
{
  if (*(v0 + 552))
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = *(v0 + 536);
      v4 = *(v0 + 520);
      v5 = *(v0 + 504);
      v6 = *(v0 + 512);
      *(v0 + 144) = v0;
      *(v0 + 184) = v3;
      *(v0 + 152) = sub_249CF56F8;
      swift_continuation_init();
      *(v0 + 392) = v5;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
      swift_unknownObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195F0, &qword_249D07508);
      sub_249D04AEC();
      (*(v6 + 32))(boxed_opaque_existential_0, v4, v5);
      *(v0 + 336) = MEMORY[0x277D85DD0];
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_249CF74F8;
      *(v0 + 360) = &block_descriptor_7;
      [v2 fetchURL_];
      (*(v6 + 8))(boxed_opaque_existential_0, v5);

      return MEMORY[0x282200938](v0 + 144);
    }

    swift_unknownObjectRetain_n();
    v8 = *(v0 + 552);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 592);
  v10 = *(v0 + 568);
  v11 = *(v0 + 672);
  v12 = *(v0 + 560);
  *(v0 + 400) = v8;
  *(v0 + 408) = v12;
  *(v0 + 416) = v11;
  *(v0 + 424) = v10;
  *(v0 + 432) = *(v0 + 576);
  *(v0 + 448) = v9;
  v13 = swift_task_alloc();
  *(v0 + 608) = v13;
  *v13 = v0;
  v13[1] = sub_249CF5900;

  return sub_249CF76A4();
}

uint64_t sub_249CF56F8()
{
  v1 = *(*v0 + 176);
  *(*v0 + 600) = v1;
  if (v1)
  {
    v2 = sub_249CF6728;
  }

  else
  {
    v2 = sub_249CF5808;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_249CF5808()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  swift_unknownObjectRelease();
  sub_249CF9254(v2, v1);
  sub_249CE9184(v1, &unk_27EF195E0, &qword_249D074F8);
  v3 = *(v0 + 592);
  v4 = *(v0 + 568);
  v5 = *(v0 + 672);
  *(v0 + 400) = *(v0 + 552);
  *(v0 + 416) = v5;
  *(v0 + 424) = v4;
  *(v0 + 432) = *(v0 + 576);
  *(v0 + 448) = v3;
  v6 = swift_task_alloc();
  *(v0 + 608) = v6;
  *v6 = v0;
  v6[1] = sub_249CF5900;

  return sub_249CF76A4();
}

uint64_t sub_249CF5900(uint64_t a1)
{
  *(*v1 + 616) = a1;

  return MEMORY[0x2822009F8](sub_249CF5A00, 0, 0);
}

uint64_t sub_249CF5A00()
{
  v1 = [objc_allocWithZone(DOCThumbnailDescriptor) initWithSize:1 scale:0 style:0 isFolded:1 isInteractive:*(v0 + 568) isFolder:{*(v0 + 576), *(v0 + 584)}];
  *(v0 + 624) = v1;
  v2 = [objc_opt_self() folderOverlays];
  v3 = [v2 isEnabled];

  v4 = *(v0 + 552);
  if (v3)
  {
    swift_unknownObjectRelease();
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

  if (![*(v0 + 552) doc_folderIconType] || objc_msgSend(v4, sel_doc_folderIconType) == 1)
  {
    swift_unknownObjectRelease();
LABEL_8:
    *(v0 + 648) = 0;
    v5 = [v4 fpfs_fpItem];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 fp_appContainerBundleIdentifier];

      if (v7)
      {
        sub_249D04A4C();

        if (sub_249D04A7C() < 1)
        {
        }

        else
        {
          if (*(v0 + 672))
          {

LABEL_20:
            v8 = v0 + 80;
            v18 = *(v0 + 624);
            v19 = *(v0 + 552);
            v10 = *(v0 + 488);
            v20 = *(v0 + 496);
            v11 = *(v0 + 480);
            v21 = objc_opt_self();
            v22 = v18;
            v23 = [v21 sharedGenerator];
            v24 = [v23 thumbnailGenerator];

            v25 = [objc_allocWithZone(DOCRegularNodeThumbnailRequest) initWithNode:v19 descriptor:v22 thumbnailGenerator:v24];
            *(v0 + 656) = v25;

            swift_unknownObjectRelease();
            [v25 setOnlyCallbackOnOverlayImage_];
            *(v0 + 80) = v0;
            *(v0 + 120) = v0 + 464;
            *(v0 + 88) = sub_249CF6518;
            swift_continuation_init();
            *(v0 + 328) = v11;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
            sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195F0, &qword_249D07508);
            sub_249D04AEC();
            (*(v10 + 32))(boxed_opaque_existential_0, v20, v11);
            *(v0 + 272) = MEMORY[0x277D85DD0];
            *(v0 + 280) = 1107296256;
            *(v0 + 288) = sub_249CF809C;
            *(v0 + 296) = &block_descriptor_4;
            [v25 generateThumbnailWithCompletionHandler_];
            goto LABEL_21;
          }

          v14 = *(v0 + 560);

          if (!v14)
          {
            goto LABEL_20;
          }
        }
      }
    }

    swift_unknownObjectRelease();
    v1 = *(v0 + 624);
LABEL_17:

    v15 = *(v0 + 472);
    *v15 = *(v0 + 616);
    v15[1] = 0;

    v16 = *(v0 + 8);

    return v16();
  }

  v8 = v0 + 16;
  v10 = *(v0 + 488);
  v9 = *(v0 + 496);
  v11 = *(v0 + 480);
  v12 = [objc_allocWithZone(DOCStaticBadgedFolderThumbnailRequest) initWithFolderType:objc_msgSend(v4 descriptor:{sel_doc_folderIconType), v1}];
  *(v0 + 632) = v12;
  [v12 setOnlyCallbackOnOverlayImage_];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 456;
  *(v0 + 24) = sub_249CF6008;
  swift_continuation_init();
  *(v0 + 264) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
  sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195F0, &qword_249D07508);
  sub_249D04AEC();
  (*(v10 + 32))(boxed_opaque_existential_0, v9, v11);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_249CF809C;
  *(v0 + 232) = &block_descriptor;
  [v12 generateThumbnailWithCompletionHandler_];
LABEL_21:
  (*(v10 + 8))(boxed_opaque_existential_0, v11);

  return MEMORY[0x282200938](v8);
}

uint64_t sub_249CF6008()
{
  v1 = *(*v0 + 48);
  *(*v0 + 640) = v1;
  if (v1)
  {
    v2 = sub_249CF6870;
  }

  else
  {
    v2 = sub_249CF6118;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_249CF6118()
{
  v1.super.isa = *(v0 + 456);

  swift_unknownObjectRelease();
  v2 = *(v0 + 552);
  *(v0 + 648) = v1;
  v3 = [v2 fpfs_fpItem];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fp_appContainerBundleIdentifier];

    if (v5)
    {
      sub_249D04A4C();

      if (sub_249D04A7C() < 1)
      {
      }

      else
      {
        if (*(v0 + 672))
        {

LABEL_14:
          v13 = *(v0 + 624);
          v14 = *(v0 + 552);
          v16 = *(v0 + 488);
          v15 = *(v0 + 496);
          v17 = *(v0 + 480);
          v18 = objc_opt_self();
          v19 = v13;
          v20 = [v18 sharedGenerator];
          v21 = [v20 thumbnailGenerator];

          v22 = [objc_allocWithZone(DOCRegularNodeThumbnailRequest) initWithNode:v14 descriptor:v19 thumbnailGenerator:v21];
          *(v0 + 656) = v22;

          swift_unknownObjectRelease();
          [v22 setOnlyCallbackOnOverlayImage_];
          *(v0 + 80) = v0;
          *(v0 + 120) = v0 + 464;
          *(v0 + 88) = sub_249CF6518;
          swift_continuation_init();
          *(v0 + 328) = v17;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
          sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195F0, &qword_249D07508);
          sub_249D04AEC();
          (*(v16 + 32))(boxed_opaque_existential_0, v15, v17);
          *(v0 + 272) = MEMORY[0x277D85DD0];
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = sub_249CF809C;
          *(v0 + 296) = &block_descriptor_4;
          [v22 generateThumbnailWithCompletionHandler_];
          (*(v16 + 8))(boxed_opaque_existential_0, v17);

          return MEMORY[0x282200938](v0 + 80);
        }

        v6 = *(v0 + 560);

        if (!v6)
        {
          goto LABEL_14;
        }
      }
    }
  }

  swift_unknownObjectRelease();
  v7 = *(v0 + 624);
  if (v1.super.isa)
  {
    v8 = *(v0 + 616);
    v9.super.isa = FolderIconFetcher.addImage(overlayImage:to:)(v1, v8).super.isa;
  }

  else
  {

    v9.super.isa = *(v0 + 616);
  }

  v10 = *(v0 + 472);
  v10->super.isa = v9.super.isa;
  v10[1].super.isa = v1.super.isa;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_249CF6518()
{
  v1 = *(*v0 + 112);
  *(*v0 + 664) = v1;
  if (v1)
  {
    v2 = sub_249CF6C30;
  }

  else
  {
    v2 = sub_249CF6628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_249CF6628()
{
  v1 = *(v0 + 648);

  v2.super.isa = *(v0 + 464);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  isa = FolderIconFetcher.addImage(overlayImage:to:)(v2, v4).super.isa;

  v6 = *(v0 + 472);
  *v6 = isa;
  v6[1] = v2.super.isa;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_249CF6728()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 544);
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = sub_249D0494C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_249CE9184(v2, &unk_27EF195E0, &qword_249D074F8);
  v4 = *(v0 + 592);
  v5 = *(v0 + 568);
  v6 = *(v0 + 672);
  *(v0 + 400) = *(v0 + 552);
  *(v0 + 416) = v6;
  *(v0 + 424) = v5;
  *(v0 + 432) = *(v0 + 576);
  *(v0 + 448) = v4;
  v7 = swift_task_alloc();
  *(v0 + 608) = v7;
  *v7 = v0;
  v7[1] = sub_249CF5900;

  return sub_249CF76A4();
}

uint64_t sub_249CF6870()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  swift_willThrow();

  swift_unknownObjectRelease();
  v3 = *(v0 + 552);
  *(v0 + 648) = 0;
  v4 = [v3 fpfs_fpItem];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 fp_appContainerBundleIdentifier];

    if (v6)
    {
      sub_249D04A4C();

      if (sub_249D04A7C() < 1)
      {
      }

      else
      {
        if (*(v0 + 672))
        {

LABEL_11:
          v11 = *(v0 + 624);
          v12 = *(v0 + 552);
          v14 = *(v0 + 488);
          v13 = *(v0 + 496);
          v15 = *(v0 + 480);
          v16 = objc_opt_self();
          v17 = v11;
          v18 = [v16 sharedGenerator];
          v19 = [v18 thumbnailGenerator];

          v20 = [objc_allocWithZone(DOCRegularNodeThumbnailRequest) initWithNode:v12 descriptor:v17 thumbnailGenerator:v19];
          *(v0 + 656) = v20;

          swift_unknownObjectRelease();
          [v20 setOnlyCallbackOnOverlayImage_];
          *(v0 + 80) = v0;
          *(v0 + 120) = v0 + 464;
          *(v0 + 88) = sub_249CF6518;
          swift_continuation_init();
          *(v0 + 328) = v15;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
          sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195F0, &qword_249D07508);
          sub_249D04AEC();
          (*(v14 + 32))(boxed_opaque_existential_0, v13, v15);
          *(v0 + 272) = MEMORY[0x277D85DD0];
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = sub_249CF809C;
          *(v0 + 296) = &block_descriptor_4;
          [v20 generateThumbnailWithCompletionHandler_];
          (*(v14 + 8))(boxed_opaque_existential_0, v15);

          return MEMORY[0x282200938](v0 + 80);
        }

        v7 = *(v0 + 560);

        if (!v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  swift_unknownObjectRelease();

  v8 = *(v0 + 472);
  *v8 = *(v0 + 616);
  v8[1] = 0;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_249CF6C30()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[78];
  swift_willThrow();

  v5 = v0[59];
  *v5 = v0[77];
  v5[1] = 0;

  v6 = v0[1];

  return v6();
}

id sub_249CF6D00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) != 1)
  {
    if (!v1)
    {
      return sub_249CF6EDC();
    }

    v5 = [*v0 iconsFromIconPackage];
    if (!v5)
    {
      return sub_249CF6EDC();
    }

    v6 = v5;
    sub_249CE6CC8(0, &qword_27EF19678, 0x277D1B1A8);
    v7 = sub_249D04AAC();

    if (v7 >> 62)
    {
      if (sub_249D04CEC() < 3)
      {
        goto LABEL_9;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
    {
LABEL_9:

      return sub_249CF6EDC();
    }

    if (v2 < 3)
    {
      v8 = qword_249D07678[v2];
      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FED90](v8, v7);
        goto LABEL_17;
      }

      if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v7 + 8 * v8 + 32);
LABEL_17:
        v10 = v9;

        return v10;
      }

      __break(1u);
    }

    type metadata accessor for FolderAnimationAsset(0);
    result = sub_249D04D4C();
    __break(1u);
    return result;
  }

  if (!v1)
  {
    return sub_249CF6EDC();
  }

  v3 = [objc_msgSend(*v0 resolvedNode)];
  swift_unknownObjectRelease();
  result = v3;
  if (!v3)
  {
    return sub_249CF6EDC();
  }

  return result;
}

id sub_249CF6EDC()
{
  v1 = sub_249D049AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16) == 1)
  {
    goto LABEL_7;
  }

  if (!*v0)
  {
    goto LABEL_7;
  }

  v5 = *(v0 + 8);
  v6 = [*v0 iconsFromIconPackage];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  sub_249CE6CC8(0, &qword_27EF19678, 0x277D1B1A8);
  v8 = sub_249D04AAC();

  if (v8 >> 62)
  {
    if (sub_249D04CEC() < 3)
    {
      goto LABEL_6;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
  {
LABEL_6:

LABEL_7:
    sub_249D0499C();
    sub_249D0497C();
    (*(v2 + 8))(v4, v1);
    v9 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v10 = sub_249D04A3C();

    v11 = [v9 initWithType_];

    return v11;
  }

  if (v5 < 3)
  {
    v13 = qword_249D07678[v5];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FED90](v13, v8);
      goto LABEL_14;
    }

    if (v13 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v8 + 8 * v13 + 32);
LABEL_14:
      v11 = v14;

      return v11;
    }

    __break(1u);
  }

  type metadata accessor for FolderAnimationAsset(0);
  v15[1] = v5;
  result = sub_249D04D4C();
  __break(1u);
  return result;
}

id sub_249CF7114()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) != 1)
  {
    if (!v1)
    {
      return sub_249CF6EDC();
    }

    v5 = [*v0 iconsFromIconPackage];
    if (!v5)
    {
      return sub_249CF6EDC();
    }

    v6 = v5;
    sub_249CE6CC8(0, &qword_27EF19678, 0x277D1B1A8);
    v7 = sub_249D04AAC();

    if (v7 >> 62)
    {
      if (sub_249D04CEC() < 3)
      {
        goto LABEL_9;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
    {
LABEL_9:

      return sub_249CF6EDC();
    }

    if (v2 < 3)
    {
      v8 = qword_249D07678[v2];
      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FED90](v8, v7);
        goto LABEL_17;
      }

      if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v7 + 8 * v8 + 32);
LABEL_17:
        v10 = v9;

        return v10;
      }

      __break(1u);
    }

    type metadata accessor for FolderAnimationAsset(0);
    result = sub_249D04D4C();
    __break(1u);
    return result;
  }

  if (!v1)
  {
    return sub_249CF6EDC();
  }

  v3 = [objc_msgSend(*v0 resolvedNode)];
  swift_unknownObjectRelease();
  result = v3;
  if (!v3)
  {
    return sub_249CF6EDC();
  }

  return result;
}

UIImage_optional __swiftcall FolderIconFetcher.fetchAvailableImage()()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0 + 6);
  v5 = objc_allocWithZone(MEMORY[0x277D1B1C8]);
  v6 = v4;
  v7 = [v5 initWithSize:v1 scale:{v2, v3}];
  v8 = v7;
  if (v4)
  {
    [v7 setTintColor_];
  }

  v9 = sub_249CF6D00();
  v10 = [v9 imageForDescriptor_];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    if (![v12 placeholder])
    {

      goto LABEL_11;
    }

    v13 = sub_249CF7114();
    v14 = v8;
    v11 = [v13 imageForDescriptor_];

    if (v11)
    {
      v15 = v11;
      if ([v15 placeholder])
      {
        v16 = v14;
        v11 = [v13 prepareImageForDescriptor_];

        goto LABEL_11;
      }
    }
  }

LABEL_11:
  sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
  v17 = sub_249CE6D10(v11, v8);

  v19 = v17;
  result.value.super.isa = v19;
  result.is_nil = v18;
  return result;
}

void sub_249CF74F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF195E0, &qword_249D074F8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v15[1] = a3;
    v12 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D8, &qword_249D074F0);
    sub_249D04AFC();
  }

  else
  {
    if (a2)
    {
      sub_249D0493C();
      v13 = sub_249D0494C();
      (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    }

    else
    {
      v14 = sub_249D0494C();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    }

    sub_249CF9254(v9, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D8, &qword_249D074F0);
    sub_249D04B0C();
  }
}

uint64_t sub_249CF76A4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19680, &qword_249D07650);
  *(v1 + 288) = v2;
  *(v1 + 296) = *(v2 - 8);
  *(v1 + 304) = swift_task_alloc();
  v3 = *v0;
  *(v1 + 432) = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v1 + 312) = v3;
  *(v1 + 328) = v4;
  *(v1 + 344) = *(v0 + 5);
  *(v1 + 352) = *(v0 + 6);

  return MEMORY[0x2822009F8](sub_249CF7794, 0, 0);
}

uint64_t sub_249CF7794()
{
  v1 = v0[44];
  v3 = *(v0 + 42);
  v2 = *(v0 + 43);
  v4 = *(v0 + 41);
  v5 = objc_allocWithZone(MEMORY[0x277D1B1C8]);
  v6 = v1;
  v7 = [v5 initWithSize:v4 scale:{v3, v2}];
  v8 = v7;
  v0[45] = v7;
  if (v1)
  {
    [v7 setTintColor_];
  }

  v10 = v0[37];
  v9 = v0[38];
  v11 = v0[36];
  v12 = sub_249CF6D00();
  v0[46] = v12;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_249CF7A1C;
  swift_continuation_init();
  v0[25] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
  v14 = v12;
  v0[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19688, &qword_249D07658);
  sub_249D04AEC();
  v15 = *(v10 + 32);
  v0[48] = v15;
  v0[49] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(boxed_opaque_existential_0, v9, v11);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_249CF8798;
  v0[21] = &block_descriptor_54;
  [v14 getImageForImageDescriptor:v8 completion:?];
  v16 = *(v10 + 8);
  v0[50] = v16;
  v0[51] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(boxed_opaque_existential_0, v11);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_249CF7A1C()
{

  return MEMORY[0x2822009F8](sub_249CF7AFC, 0, 0);
}

uint64_t sub_249CF7AFC()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 272);
  *(v0 + 416) = v2;
  v3 = v2;

  if (v2)
  {
    v4 = *(v0 + 368);
    v5 = *(v0 + 416);
    if ([v3 placeholder])
    {
      v6 = *(v0 + 360);
      v7 = [v4 prepareImageForDescriptor_];

      v2 = v7;
    }

    else
    {

      v7 = v3;
    }

    v14 = *(v0 + 360);
    sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
    v15 = v7;
    v16 = sub_249CE6D10(v2, v14);
    v17 = *(v0 + 360);
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    }

    v19 = *(v0 + 8);

    return v19(v18);
  }

  else
  {
    v23 = *(v0 + 400);
    v21 = *(v0 + 384);
    v8 = *(v0 + 368);
    v22 = *(v0 + 360);
    v9 = *(v0 + 304);
    v10 = *(v0 + 288);
    v11 = sub_249CF6EDC();
    *(v0 + 424) = v11;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_249CF7E38;
    swift_continuation_init();
    *(v0 + 264) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    v13 = v11;
    sub_249D04AEC();
    v21(boxed_opaque_existential_0, v9, v10);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_249CF8798;
    *(v0 + 232) = &block_descriptor_57;
    [v13 getImageForImageDescriptor:v22 completion:v0 + 208];
    v23(boxed_opaque_existential_0, v10);

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_249CF7E38()
{

  return MEMORY[0x2822009F8](sub_249CF7F18, 0, 0);
}

uint64_t sub_249CF7F18()
{
  v1 = *(v0 + 280);

  if (v1)
  {
    v2 = *(v0 + 424);
    v3 = *(v0 + 416);
    v4 = v1;
    if ([v4 placeholder])
    {
      v5 = *(v0 + 360);
      v6 = [v2 prepareImageForDescriptor_];
    }

    else
    {

      v6 = v1;
    }
  }

  else
  {
    v6 = 0;
    v2 = *(v0 + 424);
  }

  v7 = *(v0 + 360);
  sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
  v8 = v6;
  v9 = sub_249CE6D10(v6, v7);
  v10 = *(v0 + 360);
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

void sub_249CF809C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D0, &qword_249D074E8);
    sub_249D04AFC();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D0, &qword_249D074E8);
    sub_249D04B0C();
  }

  else
  {
    __break(1u);
  }
}

UIImage __swiftcall FolderIconFetcher.addImage(overlayImage:to:)(UIImage overlayImage, UIImage to)
{
  v5 = v2[2];
  v23 = v2[1];
  v24 = v5;
  v22 = *v2;
  v25 = *(v2 + 6);
  v6 = v5;
  v7 = [objc_allocWithZone(DOCThumbnailDescriptor) initWithSize:1 scale:0 style:0 isFolded:1 isInteractive:*(&v23 + 1) isFolder:v5];
  v8 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v8 setScale_];
  v9 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v8 format:{*(&v23 + 1), *&v6}];
  v10 = [objc_opt_self() folderIconForDescriptor_];
  v11 = swift_allocObject();
  v12 = v2[1];
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = v2[2];
  *(v11 + 64) = *(v2 + 6);
  *(v11 + 72) = to;
  *(v11 + 80) = v10;
  *(v11 + 88) = overlayImage;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_249CF92C4;
  *(v13 + 24) = v11;
  aBlock[4] = sub_249CF92D4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249CF874C;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);
  sub_249CF9314(&v22, v20);
  v15 = to.super.isa;
  v16 = v10;
  v17 = overlayImage.super.isa;

  v18 = [v9 imageWithActions_];

  _Block_release(v14);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t FolderIconFetcher.fetchImageWithOverlays()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  v5[1] = sub_249CF84AC;

  return FolderIconFetcher.fetchImageAndOverlay()(v1 + 72);
}

uint64_t sub_249CF84AC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_249CF8628;
  }

  else
  {
    v2 = sub_249CF85C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_249CF85C0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_249CF8640(void *a1, uint64_t a2, id a3, void *a4, void *a5)
{
  [a3 drawInRect_];
  c = [a1 CGContext];
  CGContextSaveGState(c);
  UIRectCenteredRect();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [a4 bottomInset];
  [a5 drawInRect_];
  CGContextRestoreGState(c);
}

void sub_249CF874C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_249CF8798(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19680, &qword_249D07650);
  return sub_249D04B0C();
}

id DOCFolderIcon.init(node:size:scale:)(uint64_t a1, double a2, double a3, double a4)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNode:a1 size:a2 scale:{a3, a4}];
  swift_unknownObjectRelease();
  return v4;
}

{
  v5 = v4 + OBJC_IVAR___DOCFolderIcon_fetcher;
  *v5 = a1;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = 0;
  v7.super_class = DOCFolderIcon;
  return objc_msgSendSuper2(&v7, sel_init);
}

UIImage_optional __swiftcall DOCFolderIcon.imageWithMinimalIO()()
{
  v1 = *(v0 + OBJC_IVAR___DOCFolderIcon_fetcher + 48);
  swift_unknownObjectRetain();
  v2 = FolderIconFetcher.fetchAvailableImage()();

  swift_unknownObjectRelease();
  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_249CF8A88()
{
  v1 = *(v0 + 88) + OBJC_IVAR___DOCFolderIcon_fetcher;
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 24);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = v5;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_249CF8B58;

  return FolderIconFetcher.fetchImageAndOverlay()(v0 + 72);
}

uint64_t sub_249CF8B58()
{

  if (v0)
  {

    v1 = sub_249CF8CD4;
  }

  else
  {
    v1 = sub_249CF8C70;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_249CF8C70()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_249CF8E60(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_249CF8F08;

  return DOCFolderIcon.fetchImage()();
}

uint64_t sub_249CF8F08(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 24);
    (v7)[2](v7, a1);

    _Block_release(v7);
  }

  else
  {
  }

  v8 = *(v6 + 8);

  return v8();
}

void __swiftcall DOCFolderIcon.init()(DOCFolderIcon *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_249CF91AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_249CF9254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF195E0, &qword_249D074F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FolderAssetType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FolderAssetType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_249CF93B0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249CF93D0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_249CF9400(uint64_t *a1, int a2)
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

uint64_t sub_249CF9448(uint64_t result, int a2, int a3)
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

uint64_t sub_249CF94B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_249CF950C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_249CF9590()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_249CE6A30;

  return sub_249CF8E60(v2, v3);
}

uint64_t sub_249CF963C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_249CE6A30;

  return v6();
}

uint64_t sub_249CF9724()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_249CE6A30;

  return sub_249CF963C(v2, v3, v4);
}

uint64_t sub_249CF97E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_249CE6A34;

  return v7();
}

uint64_t objectdestroy_32Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249CF990C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_249CE6A30;

  return sub_249CF97E4(a1, v4, v5, v6);
}

uint64_t sub_249CF99D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_249CF9CC4(a3, v23 - v10);
  v12 = sub_249D04B6C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_249CE9184(v11, &qword_27EF19670, &qword_249D07600);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_249D04B5C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_249D04ADC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_249D04A5C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);

    return v21;
  }

LABEL_8:
  sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_249CF9CC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249CF9D34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249CE6A30;

  return sub_249CEAABC(a1, v4);
}

uint64_t sub_249CF9DEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249CE6A34;

  return sub_249CEAABC(a1, v4);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_249CF9EE8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_249CE6A34;

  return sub_249CF4FF8(v2);
}

id UITraitCollection._ifColorForIconFolderTint.getter()
{
  sub_249CFA0E0();
  sub_249D04C2C();
  if (!v11)
  {
    return 0;
  }

  v0 = [v11 tintColor];

  if (!v0)
  {
    return 0;
  }

  [v0 red];
  v2 = v1;
  [v0 green];
  v4 = v3;
  [v0 blue];
  v6 = v5;
  [v0 alpha];
  GenericRGB = CGColorCreateGenericRGB(v2, v4, v6, v7);
  v9 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];

  return v9;
}

unint64_t sub_249CFA0E0()
{
  result = qword_27EF196A0;
  if (!qword_27EF196A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF196A0);
  }

  return result;
}

__n128 ImageOptions.init(size:scale:isFolded:folderTintComponents:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v6 = *(a2 + 32);
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a1;
  result = *a2;
  v8 = *(a2 + 16);
  *(a3 + 32) = *a2;
  *(a3 + 48) = v8;
  *(a3 + 64) = v6;
  return result;
}

uint64_t sub_249CFA160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_249D03320(a3, v25 - v10, &qword_27EF19670, &qword_249D07600);
  v12 = sub_249D04B6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_249CE9184(v11, &qword_27EF19670, &qword_249D07600);
  }

  else
  {
    sub_249D04B5C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_249D04ADC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_249D04A5C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_249CFA460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_249D03320(a3, v25 - v10, &qword_27EF19670, &qword_249D07600);
  v12 = sub_249D04B6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_249CE9184(v11, &qword_27EF19670, &qword_249D07600);
  }

  else
  {
    sub_249D04B5C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_249D04ADC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_249D04A5C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id ImageOptions.folderTintColor.getter()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277D1B150]) initWithRed:*(v0 + 32) green:*(v0 + 40) blue:*(v0 + 48) alpha:*(v0 + 56)];
  }
}

uint64_t sub_249CFA7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_249D04B2C();
  v5[5] = sub_249D04B1C();
  v7 = sub_249D04ADC();

  return MEMORY[0x2822009F8](sub_249CFA858, v7, v6);
}

uint64_t sub_249CFA858()
{
  v1 = *(v0 + 24);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_249CFA938()
{
  type metadata accessor for HomeScreenTintObserver();
  v0 = swift_allocObject();
  result = sub_249CFA974();
  qword_27EF19690 = v0;
  return result;
}

uint64_t sub_249CFA974()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277D66AB8]) init];
  *(v0 + 32) = v1;
  v2 = [v1 homeScreenIconStyleConfiguration];
  os_unfair_lock_lock((v0 + 16));

  *(v0 + 24) = v2;
  v3 = v2;
  os_unfair_lock_unlock((v0 + 16));
  v4 = *(v0 + 32);

  v5 = [v4 addHomeScreenIconStyleObserver_];

  *(v0 + 48) = v5;
  swift_unknownObjectRelease();
  return v0;
}

void sub_249CFAA5C()
{
  v1 = sub_249D049FC();
  MEMORY[0x28223BE20](v1);
  os_unfair_lock_lock((v0 + 16));
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  v3 = v2;
  sub_249D04C0C();
  sub_249CFA0E0();
  sub_249D049EC();
  sub_249D04C1C();
}

uint64_t sub_249CFABBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  swift_beginAccess();
  v6 = *(v3 + 40);
  v8 = v6 + 2;
  v7 = v6[2];
  if (!v7)
  {
LABEL_5:
    v10 = *v8;
    v12 = *v8;
    goto LABEL_9;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      break;
    }

    swift_unknownObjectRelease();
    ++v10;
    v9 += 3;
    if (v7 == v10)
    {
      goto LABEL_5;
    }
  }

  v12 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v13 = *v8;
  if (v12 != *v8)
  {
    v24 = v5;
    while (v12 < v13)
    {
      v4 = &v6[v9];
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        result = swift_unknownObjectRelease();
        if (v12 != v10)
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          if (v10 >= *v8)
          {
            goto LABEL_28;
          }

          if (v12 >= *v8)
          {
            goto LABEL_29;
          }

          v18 = &v6[3 * v10 + 4];
          v5 = v18[1];
          v27 = *v18;
          v19 = v18[2];
          v20 = v4[7];
          v21 = v6[v9 + 8];
          v8 = v4[9];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_249D016D0(v6);
          }

          v22 = &v6[3 * v10];
          v4 = v22[5];
          v22[4] = v20;
          v22[5] = v21;
          v22[6] = v8;

          if (v12 >= v6[2])
          {
            goto LABEL_30;
          }

          v23 = &v6[v9];
          v23[7] = v27;
          v23[8] = v5;
          v23[9] = v19;

          v5 = v24;
          *(v24 + 40) = v6;
        }

        ++v10;
      }

      ++v12;
      v8 = v6 + 2;
      v13 = v6[2];
      v9 += 3;
      if (v12 == v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_8:
  if (v12 < v10)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_9:
  sub_249D01EC8(v10, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19988, &qword_249D080F8);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = swift_allocObject();
  v4[2] = a2;
  v4[3] = a3;
  v8 = *(v5 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 40) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_31:
    v8 = sub_249CFF1EC(0, v8[2] + 1, 1, v8);
    *(v5 + 40) = v8;
  }

  v16 = v8[2];
  v15 = v8[3];
  if (v16 >= v15 >> 1)
  {
    v8 = sub_249CFF1EC((v15 > 1), v16 + 1, 1, v8);
  }

  v8[2] = v16 + 1;
  v17 = &v8[3 * v16];
  v17[4] = sub_249D039CC;
  v17[5] = v4;
  v17[6] = v6;
  *(v5 + 40) = v8;
  return swift_endAccess();
}

uint64_t sub_249CFAED4()
{
  sub_249CE9184(v0 + 24, &qword_27EF19940, &qword_249D08050);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_249CFAF34()
{
  result = [objc_opt_self() defaultValue];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      qword_27EF1A4E0 = result;
      return result;
    }

    result = swift_unknownObjectRelease();
  }

  qword_27EF1A4E0 = 0;
  return result;
}

void sub_249CFAFE0(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_249D04A4C();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_249CFB050()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_27EF1A508 = result;
  return result;
}

uint64_t sub_249CFB084@<X0>(uint64_t *a2@<X8>)
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EF19400 != -1)
  {
    swift_once();
  }

  v3 = qword_27EF1A4E0;
  v4 = qword_27EF1A4E0;

  *a2 = v3;
  return result;
}

uint64_t sub_249CFB14C(uint64_t a1, uint64_t a2)
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EF19408 != -1)
  {
    swift_once();
  }

  v2 = qword_27EF1A4E8;

  return v2;
}

uint64_t sub_249CFB21C(uint64_t a1, uint64_t a2)
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EF19410 != -1)
  {
    swift_once();
  }

  v2 = qword_27EF1A4F8;

  return v2;
}

uint64_t sub_249CFB2EC(uint64_t a1, uint64_t a2)
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EF19418 != -1)
  {
    swift_once();
  }

  v2 = byte_27EF1A508;

  return v2;
}

Swift::Bool __swiftcall UITraitCollection.traitCollectionTintEqual(_:)(UITraitCollection_optional a1)
{
  if (a1.value.super.isa)
  {
    isa = a1.value.super.isa;
    sub_249CFA0E0();
    v2 = isa;
    sub_249D04C2C();
    v3 = [v7 tintColor];

    sub_249D04C2C();
    v4 = [v7 tintColor];

    if (v3)
    {
      if (v4)
      {
        sub_249CE6CC8(0, &qword_27EF196A8, 0x277CF0BC8);
        v5 = sub_249D04C4C();
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_12;
    }

    if (v4)
    {
      v5 = 0;
      v2 = v4;
      goto LABEL_12;
    }
  }

  else
  {
    sub_249CFA0E0();
    sub_249D04C2C();
    v2 = [v7 tintColor];

    if (v2)
    {
      v5 = 0;
LABEL_12:

      return v5 & 1;
    }
  }

  v5 = 1;
  return v5 & 1;
}

void UITraitCollection._ifColorForIconFolderTintComponents.getter(uint64_t a1@<X8>)
{
  sub_249CFA0E0();
  sub_249D04C2C();
  v2 = 0uLL;
  if (v14)
  {
    v3 = [v14 tintColor];

    if (v3)
    {
      [v3 red];
      v13 = v4;
      [v3 green];
      v12 = v5;
      [v3 blue];
      v10 = v6;
      [v3 alpha];
      v11 = v7;

      *&v2 = v13;
      v8 = 0;
      *(&v2 + 1) = v12;
      *&v9 = v10;
      *(&v9 + 1) = v11;
    }

    else
    {
      v8 = 1;
      v9 = 0uLL;
      v2 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v9 = 0uLL;
  }

  *a1 = v2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
}

void ImageOptions.ImageOptionsFolderColorComponents.init(red:green:blue:alpha:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t UIViewController.forcefullyRegisterForIconStyleChanges(with:)(uint64_t a1, uint64_t a2)
{
  if (qword_27EF193F8 != -1)
  {
    swift_once();
  }

  sub_249CFAA5C();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;

  sub_249CFABBC(v2, sub_249CFB8B8, v6);
}

void sub_249CFB748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_249D04B6C();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_249D04B2C();
    v11 = v9;

    v12 = sub_249D04B1C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    v13[5] = a2;
    v13[6] = a3;
    sub_249CFA160(0, 0, v7, &unk_249D08118, v13);
  }
}

uint64_t sub_249CFB8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_249D04B2C();
  v6[5] = sub_249D04B1C();
  v8 = sub_249D04ADC();

  return MEMORY[0x2822009F8](sub_249CFB960, v8, v7);
}

uint64_t sub_249CFB960()
{

  if (qword_27EF193F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  sub_249CFAA5C();
  v1();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t UIView.registerForHomeScreenTraitChanges(handler:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF196B0, &unk_249D076D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249D07690;
  v5 = sub_249CFA0E0();
  *(v4 + 32) = &type metadata for _DOCSBSUITraitHomeScreenIconStyle;
  *(v4 + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_249CE6CC8(0, &qword_27EF196B8, 0x277D75D18);

  sub_249D04C3C();
  swift_unknownObjectRelease();
}

uint64_t sub_249CFBB10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a3(a1, a2);
}

uint64_t ImageOptions.ImageOptionsFolderColorComponents.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C1FEE80](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C1FEE80](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C1FEE80](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x24C1FEE80](*&v7);
}

uint64_t ImageOptions.ImageOptionsFolderColorComponents.hashValue.getter()
{
  sub_249D04D7C();
  ImageOptions.ImageOptionsFolderColorComponents.hash(into:)();
  return sub_249D04DAC();
}

uint64_t sub_249CFBCB0()
{
  sub_249D04D7C();
  ImageOptions.ImageOptionsFolderColorComponents.hash(into:)();
  return sub_249D04DAC();
}

uint64_t sub_249CFBD00(uint64_t a1)
{
  sub_249D04D7C();
  ImageOptions.ImageOptionsFolderColorComponents.hash(into:)();
  return sub_249D04DAC();
}

uint64_t ImageOptions.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x24C1FEE80](*&v2);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x24C1FEE80](*&v5);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x24C1FEE80](*&v6);
  sub_249D04D8C();
  return sub_249D01748();
}

uint64_t ImageOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_249D04D7C();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x24C1FEE80](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C1FEE80](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C1FEE80](*&v6);
  sub_249D04D8C();
  sub_249D01748();
  return sub_249D04DAC();
}

uint64_t sub_249CFBEBC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_249D04D7C();
  sub_249D017D0(v2, v3);
  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  MEMORY[0x24C1FEE80](*&v5);
  sub_249D04D8C();
  sub_249D01748();
  return sub_249D04DAC();
}

uint64_t sub_249CFBF60(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_249D04A6C();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C1FEE80](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C1FEE80](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x24C1FEE80](*&v7);
  sub_249D04D8C();
  return sub_249D01748();
}

uint64_t sub_249CFC010()
{
  v1 = v0[3];
  v7 = v0[2];
  v8 = v1;
  v9 = v0[4];
  v10 = *(v0 + 80);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  sub_249D04D7C();
  sub_249CFBF60(v4);
  return sub_249D04DAC();
}

uint64_t sub_249CFC078(uint64_t a1)
{
  v2 = v1[3];
  v8 = v1[2];
  v9 = v2;
  v10 = v1[4];
  v11 = *(v1 + 80);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  sub_249D04D7C();
  sub_249CFBF60(v5);
  return sub_249D04DAC();
}

uint64_t sub_249CFC0D8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_249D04D3C(), v6 = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 64);
    v14[2] = *(a1 + 48);
    v14[3] = v7;
    v15 = *(a1 + 80);
    v8 = *(a1 + 32);
    v14[0] = *(a1 + 16);
    v14[1] = v8;
    v9 = *(a2 + 64);
    v12[2] = *(a2 + 48);
    v12[3] = v9;
    v13 = *(a2 + 80);
    v10 = *(a2 + 32);
    v12[0] = *(a2 + 16);
    v12[1] = v10;
    v6 = _s21DocumentManagerUICore12ImageOptionsV2eeoiySbAC_ACtFZ_0(v14, v12);
  }

  return v6 & 1;
}

uint64_t sub_249CFC170()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

BOOL sub_249CFC1B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 1)
    {
      v2 = 2;
      if (*(a2 + 8) == 2)
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = 2;
  if (*(a1 + 8) == 2)
  {
    v3 = 3;
  }

  if (*(a1 + 16) != 1)
  {
    v3 = 0;
  }

  if (*(a1 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v2 >= v4;
}

BOOL sub_249CFC218(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v2 = 2;
      if (*(a1 + 8) == 2)
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = 2;
  if (*(a2 + 8) == 2)
  {
    v3 = 3;
  }

  if (*(a2 + 16) != 1)
  {
    v3 = 0;
  }

  if (*(a2 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v2 >= v4;
}

BOOL sub_249CFC27C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 1)
    {
      v2 = 2;
      if (*(a2 + 8) == 2)
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = 2;
  if (*(a1 + 8) == 2)
  {
    v3 = 3;
  }

  if (*(a1 + 16) != 1)
  {
    v3 = 0;
  }

  if (*(a1 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v2 < v4;
}

uint64_t sub_249CFC2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  result = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20[-v12 - 8];
  if (a1 == 1)
  {
    v14 = sub_249D04B6C();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    (*(v7 + 16))(v9, a3, v6);
    v15 = (*(v7 + 80) + 120) & ~*(v7 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v17 = *(a2 + 48);
    *(v16 + 64) = *(a2 + 32);
    *(v16 + 80) = v17;
    *(v16 + 96) = *(a2 + 64);
    *(v16 + 112) = *(a2 + 80);
    v18 = *(a2 + 16);
    *(v16 + 32) = *a2;
    *(v16 + 48) = v18;
    (*(v7 + 32))(v16 + v15, v9, v6);
    sub_249CE9448(a2, v20);
    sub_249CFA160(0, 0, v13, &unk_249D08010, v16);
  }

  return result;
}

uint64_t sub_249CFC500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19920, &qword_249D07FF0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *(a4 + 80);
  v5[10] = v8;
  v5[11] = v9;
  v10 = swift_task_alloc();
  v5[12] = v10;
  *v10 = v5;
  v10[1] = sub_249CFC618;

  return MEMORY[0x282200460](v5 + 5, v9, &type metadata for IconImage);
}

uint64_t sub_249CFC618()
{

  return MEMORY[0x2822009F8](sub_249CFC714, 0, 0);
}

uint64_t sub_249CFC714()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 49);
  if (swift_task_isCancelled())
  {
  }

  else
  {
    *(v0 + 16) = v1;
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = 256;
    if (!v3)
    {
      v7 = 0;
    }

    *(v0 + 24) = v7 | v2;
    *(v0 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
    sub_249D04B8C();
    (*(v5 + 8))(v4, v6);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_249CFC810(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_249CFC864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19920, &qword_249D07FF0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *(a4 + 80);
  v5[10] = v8;
  v5[11] = v9;
  v10 = swift_task_alloc();
  v5[12] = v10;
  *v10 = v5;
  v10[1] = sub_249CFC97C;

  return MEMORY[0x282200460](v5 + 5, v9, &type metadata for IconImage);
}

uint64_t sub_249CFC97C()
{

  return MEMORY[0x2822009F8](sub_249CFCA78, 0, 0);
}

uint64_t sub_249CFCA78()
{
  if ((swift_task_isCancelled() & 1) == 0)
  {
    v1 = *(v0 + 40);
    *(v0 + 16) = v1;
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 64);
    *(v0 + 49) = 1;
    *(v0 + 24) = *(v0 + 48) | 0x100;
    *(v0 + 32) = 0;
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
    sub_249D04B8C();
    (*(v3 + 8))(v2, v4);
    sub_249D04B9C();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_249CFCB78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void NodeThumbnail.imageChanged(with:)(void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v18 = v3;
  sub_249CFE4DC((v5 + 8), v2, v3, v4);
  os_unfair_lock_unlock(v5);
  v6 = v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners));
  v7 = *(v6 + 8);
  if (v7 >> 62)
  {
    v8 = sub_249D04CEC();
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FED90](i, v7);
    }

    else
    {
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong thumbnailLoaded_];
      swift_unknownObjectRelease();
    }
  }

LABEL_12:
  os_unfair_lock_unlock(v6);
  if (v4)
  {
    if (v4 != 1 || v18 == 1)
    {
      return;
    }
  }

  else if ((v18 & 0x100) == 0)
  {
    return;
  }

  v11 = v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers));
  v12 = *(v11 + 8);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 40;
    do
    {
      v15 = *(v14 - 8);

      v15(v16);

      v14 += 16;
      --v13;
    }

    while (v13);
  }

  v17 = MEMORY[0x277D84F90];
  *(v11 + 8) = MEMORY[0x277D84F90];

  os_unfair_lock_unlock(v11);
  os_unfair_lock_lock(v6);
  *(v6 + 8) = v17;

  os_unfair_lock_unlock(v6);
}

uint64_t sub_249CFCF08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E8, &qword_249D07FC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v7, a1, v4);
  v8 = *(a2 + 232);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 232) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_249CFF468(0, v8[2] + 1, 1, v8);
    *(a2 + 232) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_249CFF468((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 232) = v8;
  return result;
}

uint64_t sub_249CFD0B8()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 232) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v0 + 136) = v1;

  v2 = *(v0 + 216);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedGenerator];
    [v5 cancelRequest_];
  }

  sub_249CE9424(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  v6 = *(v0 + 216);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249CFD1A0()
{
  v0 = sub_249CFD0B8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_249CFD1C8(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_249D04C5C();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C1FEE80](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C1FEE80](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x24C1FEE80](*&v7);
  sub_249D04D8C();
  return sub_249D01748();
}

uint64_t sub_249CFD280()
{
  v1 = v0[3];
  v7 = v0[2];
  v8[0] = v1;
  *(v8 + 9) = *(v0 + 57);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  sub_249D04D7C();
  sub_249CFD1C8(v4);
  return sub_249D04DAC();
}

uint64_t sub_249CFD2DC(uint64_t a1)
{
  v2 = v1[3];
  v8 = v1[2];
  v9[0] = v2;
  *(v9 + 9) = *(v1 + 57);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  sub_249D04D7C();
  sub_249CFD1C8(v5);
  return sub_249D04DAC();
}

uint64_t sub_249CFD334(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 7);
  v14 = *(a1 + 5);
  v15 = v3;
  v16 = *(a1 + 72);
  v12 = *(a1 + 1);
  v13 = v2;
  v4 = *(a2 + 3);
  v5 = *(a2 + 7);
  v19 = *(a2 + 5);
  v20 = v5;
  v21 = *(a2 + 72);
  v17 = *(a2 + 1);
  v18 = v4;
  sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
  if (sub_249D04C4C())
  {
    v10[2] = v14;
    v10[3] = v15;
    v11 = v16;
    v10[0] = v12;
    v10[1] = v13;
    v8[2] = v19;
    v8[3] = v20;
    v9 = v21;
    v8[0] = v17;
    v8[1] = v18;
    v6 = _s21DocumentManagerUICore12ImageOptionsV2eeoiySbAC_ACtFZ_0(v10, v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_249CFD420(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v17[0] = *v2;
    sub_249CEA19C(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_249CE6DB8(a2);
    *v2 = *&v17[0];
  }

  else
  {
    v8 = sub_249CE8168(a2, sub_249CEA370, sub_249CE6DB8);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v19 = *v3;
      if (!v11)
      {
        sub_249D01188();
        v12 = v19;
      }

      v13 = (*(v12 + 48) + 80 * v10);
      v17[0] = *v13;
      v15 = v13[2];
      v14 = v13[3];
      v16 = *(v13 + 57);
      v17[1] = v13[1];
      v17[2] = v15;
      *&v18[9] = v16;
      *v18 = v14;
      sub_249CE6DB8(v17);

      sub_249D00CCC(v10, v12, sub_249CEA370, sub_249CE6DB8);
      result = sub_249CE6DB8(a2);
      *v3 = v12;
    }

    else
    {

      return sub_249CE6DB8(a2);
    }
  }

  return result;
}

uint64_t sub_249CFD59C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(v3 + 40) = a2[1];
  v5 = a2[3];
  *(v3 + 56) = a2[2];
  *(v3 + 72) = v5;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  *(v3 + 88) = *(a2 + 64);
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_249CFD5DC, v2, 0);
}

uint64_t sub_249CFD5DC()
{
  v1 = *(v0 + 336);
  *(v0 + 16) = [*(v0 + 328) thumbnailIdentifier];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {

    v3 = sub_249CE8168(v0 + 16, sub_249CE93BC, sub_249CE93F4);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);
      *(v0 + 344) = v5;

      return MEMORY[0x2822009F8](sub_249CFD720, v5, 0);
    }

    sub_249CE93F4(v0 + 16);
  }

  else
  {
    sub_249CE93F4(v0 + 16);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_249CFD720()
{
  v2 = v0[42];
  v1 = v0[43];
  swift_beginAccess();
  v0[44] = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_249CFD7A8, v2, 0);
}

uint64_t sub_249CFD7A8()
{
  v16 = v0;
  v1 = *(v0 + 352);
  *&v14[0] = MEMORY[0x277D84F90];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_25:
    v3 = sub_249D04CEC();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v1 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if (v5)
    {
      MEMORY[0x24C1FED90](v4, *(v0 + 352));
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_24;
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v4;
    if (Strong)
    {
      MEMORY[0x24C1FEB80](v8);
      if (*((*&v14[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v14[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_249D04ABC();
      }

      sub_249D04ACC();
      v1 = *&v14[0];
      v4 = v6;
    }
  }

  if (v1 >> 62)
  {
    v9 = sub_249D04CEC();
  }

  else
  {
    v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    sub_249CE93F4(v0 + 16);
  }

  else
  {
    swift_beginAccess();
    sub_249CE93BC(v0 + 16, v0 + 176);
    sub_249CFFC00(v14, v0 + 16);
    swift_endAccess();

    sub_249CE93F4(v0 + 16);
    v10 = v15[0];
    *(v0 + 128) = v14[2];
    *(v0 + 144) = v10;
    *(v0 + 153) = *(v15 + 9);
    v11 = v14[1];
    *(v0 + 96) = v14[0];
    *(v0 + 112) = v11;
    sub_249CE93F4(v0 + 96);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_249CFDA00()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 120);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_11:
    v10 = (*(v2 + 48) + 80 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v27[0] = *v10;
    v12 = v10[2];
    v11 = v10[3];
    v13 = *(v10 + 57);
    v27[1] = v10[1];
    v27[2] = v12;
    *&v28[9] = v13;
    *v28 = v11;
    v14 = sub_249CE93BC(v27, v25);
    v15 = MEMORY[0x24C1FF150](v14);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    swift_beginAccess();
    sub_249CE93BC(v27, v25);
    v16 = sub_249CE8168(v27, sub_249CE93BC, sub_249CE93F4);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v1 + 112);
      *(v1 + 112) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_249D00FD8();
      }

      v21 = (*(v20 + 48) + 80 * v18);
      v25[0] = *v21;
      v23 = v21[2];
      v22 = v21[3];
      v24 = *(v21 + 57);
      v25[1] = v21[1];
      v25[2] = v23;
      *&v26[9] = v24;
      *v26 = v22;
      sub_249CE93F4(v25);

      sub_249D00CCC(v18, v20, sub_249CE93BC, sub_249CE93F4);
      sub_249CE93F4(v27);
      *(v1 + 112) = v20;
    }

    else
    {
      sub_249CE93F4(v27);
    }

    v5 &= v5 - 1;
    swift_endAccess();
    objc_autoreleasePoolPop(v15);
    result = sub_249CE93F4(v27);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      *(v1 + 120) = MEMORY[0x277D84FA0];
    }

    v5 = *(v2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249CFDC90()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

BOOL NodeThumbnail.isLoading.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_249CE395C(v3, v2, *(v1 + 24));
  os_unfair_lock_unlock(v1);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_249CE3970(v3, v2, 1u);
      return v2 == 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_249CE3970(v3, v2, 0);
    return (v2 & 0x100) == 0;
  }
}

BOOL NodeThumbnail.isRepresentativeIcon.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_249CE395C(v2, v3, *(v1 + 24));
  os_unfair_lock_unlock(v1);
  sub_249CE3970(v2, v3, v4);
  return v4 == 1;
}

char *NodeThumbnail.__allocating_init(node:imageOptions:imageCache:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_249CE2E48(a1, a2, a3);
  swift_unknownObjectRelease();

  return v8;
}

UIColor __swiftcall NodeThumbnail.averageColor(inRect:)(CGRect inRect)
{
  v1 = [objc_opt_self() whiteColor];

  return v1;
}

uint64_t NodeThumbnail.removeListener(_:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v3);
  swift_unknownObjectRetain();
  v4 = sub_249D01F88((v3 + 8), a1);
  result = swift_unknownObjectRelease();
  v6 = *(v3 + 8);
  if (v6 >> 62)
  {
    result = sub_249D04CEC();
    v7 = result;
    if (result >= v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 < v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_249D0237C(v4, v7);
  os_unfair_lock_unlock(v3);

  return swift_unknownObjectRelease();
}

BOOL NodeThumbnail.hasFinishedTryingToFetchCorrectThumbnail.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_249CE395C(v3, v2, *(v1 + 24));
  os_unfair_lock_unlock(v1);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_249CE3970(v3, v2, 1u);
      return v2 != 1;
    }

    else
    {
      sub_249CE3970(v3, v2, v4);
      return 0;
    }
  }

  else
  {
    v5 = (v2 >> 8) & 1;
    sub_249CE3970(v3, v2, 0);
  }

  return v5;
}

uint64_t NodeThumbnail.registerGenerationCompletionHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  v8 = *(v5 + 24);
  sub_249CE395C(v7, v6, *(v5 + 24));
  os_unfair_lock_unlock(v5);
  if (v8 == 1)
  {
    sub_249CE3970(v7, v6, 1u);
    if (v6 != 1)
    {
      return 0;
    }
  }

  else if (v8)
  {
    sub_249CE3970(v7, v6, v8);
  }

  else
  {
    sub_249CE3970(v7, v6, 0);
    if ((v6 & 0x100) != 0)
    {
      return 0;
    }
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = v2 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers;

  os_unfair_lock_lock(v11);
  v12 = *(v11 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 8) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_249CFF334(0, v12[2] + 1, 1, v12);
    *(v11 + 8) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_249CFF334((v14 > 1), v15 + 1, 1, v12);
    *(v11 + 8) = v12;
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = sub_249D02454;
  v16[5] = v10;
  os_unfair_lock_unlock(v11);

  return 1;
}

void *sub_249CFE4DC(void *result, void *a2, uint64_t a3, unsigned __int8 a4)
{
  v7 = *(result + 16);
  if (!a4)
  {
    v9 = 1;
    v10 = result[1];
    if (*(result + 16))
    {
      goto LABEL_8;
    }

LABEL_13:
    if (!v9)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = 2;
  if (a3 == 2)
  {
    v8 = 3;
  }

  if (a4 == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = result[1];
  if (!*(result + 16))
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v7 == 1)
  {
    if (v10 == 2)
    {
      if (v9 != 3)
      {
        return result;
      }
    }

    else if (v9 < 2)
    {
      return result;
    }
  }

LABEL_14:
  v11 = result;
  sub_249CE3970(*result, v10, v7);
  *v11 = a2;
  v11[1] = a3;
  *(v11 + 16) = a4;
  return sub_249CE395C(a2, a3, a4);
}

id NodeThumbnail.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *&v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_node];
    v8 = *&v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 48];
    v18 = *&v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 32];
    v19 = v8;
    v20 = v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 64];
    v9 = *&v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 16];
    v16 = *&v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options];
    v17 = v9;
    v10 = sub_249D04B6C();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
    v12 = v19;
    *(v11 + 80) = v18;
    *(v11 + 96) = v12;
    *(v11 + 112) = v20;
    v13 = v17;
    *(v11 + 48) = v16;
    *(v11 + 64) = v13;
    swift_unknownObjectRetain();
    sub_249CFA160(0, 0, v4, &unk_249D07700, v11);
  }

  v15.receiver = v0;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

id NodeThumbnail.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ImageCache.__allocating_init()()
{
  v0 = swift_allocObject();
  ImageCache.init()();
  return v0;
}

Swift::Void __swiftcall ImageCache.purge()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_249D04B6C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_249D04B2C();

  v6 = sub_249D04B1C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_249CFA160(0, 0, v4, &unk_249D07710, v7);

  v10 = MEMORY[0x24C1FF150](v9);
  os_unfair_lock_lock((v1 + 16));

  *(v1 + 24) = sub_249CE21E0(MEMORY[0x277D84F90]);
  os_unfair_lock_unlock((v1 + 16));
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_249CFEA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_249D04B2C();
  v4[3] = sub_249D04B1C();
  v6 = sub_249D04ADC();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_249CFEAEC, v6, v5);
}

uint64_t sub_249CFEAEC()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_249CFEB10, v1, 0);
}

uint64_t sub_249CFEB10()
{
  sub_249CFDA00();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_249CFEB74, v1, v2);
}

uint64_t sub_249CFEB74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_249CFEC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  return MEMORY[0x2822009F8](sub_249CFEC34, 0, 0);
}

uint64_t sub_249CFEC34()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *v1;
  v3 = *(v1 + 32);
  v2 = *(v1 + 48);
  v4 = *(v1 + 16);
  *(v0 + 80) = *(v1 + 64);
  *(v0 + 48) = v3;
  *(v0 + 64) = v2;
  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_249CE693C;
  v6 = *(v0 + 96);

  return sub_249CFD59C(v6, (v0 + 16));
}

uint64_t sub_249CFECF8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 616);
    swift_unknownObjectRelease();

    v4 = sub_249CFF100;
  }

  else
  {
    v5 = *(v2 + 616);
    swift_unknownObjectRelease();

    v4 = sub_249CFEE30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_249CFEE30()
{
  v1 = *(v0 + 648);
  if (!v1)
  {
    goto LABEL_25;
  }

  v2 = *(v0 + 656);
  if (v2)
  {
    v3 = *(v0 + 688);
    v4 = *(v0 + 680);
    v5 = v2;
    v6 = v1;
    os_unfair_lock_lock(v4 + 4);
    *(v0 + 176) = *v3;
    v7 = v3[1];
    v8 = v3[2];
    v9 = v3[3];
    *(v0 + 233) = *(v3 + 57);
    *(v0 + 208) = v8;
    *(v0 + 224) = v9;
    *(v0 + 192) = v7;
    v10 = v5;
    sub_249D03320(v3, v0 + 416, &qword_27EF19970, &qword_249D080A0);
    sub_249CFD420(v2, (v0 + 176));
    os_unfair_lock_unlock(v4 + 4);
  }

  else
  {
    v11 = v1;
  }

  v12 = *(v0 + 696) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  v13 = v1;
  os_unfair_lock_lock(v12);
  v14 = *(v12 + 24);
  if (v14 != 1)
  {
    sub_249CE3970(*(v12 + 8), *(v12 + 16), v14);
    *(v12 + 8) = v1;
    *(v12 + 16) = 256;
    *(v12 + 24) = 0;
    v15 = v13;
  }

  v16 = *(v0 + 696);
  os_unfair_lock_unlock(v12);
  v17 = v16 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
  os_unfair_lock_lock((v16 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners));
  v18 = *(v17 + 8);
  v31 = v13;
  v32 = v2;
  if (v18 >> 62)
  {
    v19 = sub_249D04CEC();
    if (v19)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_9:
      if (v19 >= 1)
      {
        for (i = 0; i != v19; ++i)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FED90](i, v18);
          }

          else
          {
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong thumbnailLoaded_];
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }
  }

LABEL_18:
  v22 = *(v0 + 696);
  os_unfair_lock_unlock(v17);
  v23 = v22 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers;
  os_unfair_lock_lock((v22 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers));
  v24 = *(v23 + 8);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24 + 40;
    do
    {
      v27 = *(v26 - 8);

      v27(v28);

      v26 += 16;
      --v25;
    }

    while (v25);
  }

  v29 = MEMORY[0x277D84F90];
  *(v23 + 8) = MEMORY[0x277D84F90];

  os_unfair_lock_unlock(v23);
  os_unfair_lock_lock(v17);
  *(v17 + 8) = v29;

  os_unfair_lock_unlock(v17);

  sub_249D03388(v1, v32);
  v30 = *(v0 + 8);

  v30();
}

uint64_t sub_249CFF104()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImageCache.deinit()
{
  sub_249CE9184(v0 + 24, &qword_27EF19700, &qword_249D07718);

  return v0;
}

uint64_t ImageCache.__deallocating_deinit()
{
  sub_249CE9184(v0 + 24, &qword_27EF19700, &qword_249D07718);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_249CFF1EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19990, &qword_249D08100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF19998, &qword_249D08108);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_249CFF334(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19960, &qword_249D08080);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19968, &qword_249D08088);
    swift_arrayInitWithCopy();
  }

  return v10;
}
id sub_1D43C4814(id result)
{
  if (result)
  {
    return [*(v1 + 16) resetHoverTimer];
  }

  return result;
}

uint64_t sub_1D43C482C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD98, &qword_1D443B580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43C489C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD98, &qword_1D443B580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D43C4904(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = -1;
  v5 = a3 < a1;
  if (a1 < a3)
  {
    v5 = -1;
  }

  if ((a4 & 1) == 0)
  {
    v4 = v5;
  }

  if (a2)
  {
    return (a4 & 1) == 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1D43C4934(char *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = sub_1D44196C4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  sub_1D430A294(a1, v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v7 = v9;
    goto LABEL_5;
  }

  v25 = v14;
  v26 = a1;
  v18 = *(v11 + 32);
  v18(v16, v9, v10);
  sub_1D430A294(a2, v7);
  if (v17(v7, 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    a1 = v26;
LABEL_5:
    sub_1D41769C4(v7, &unk_1EC7CA3B0, &qword_1D44360C0);
    if (v17(a1, 1, v10) == 1)
    {
      return v17(a2, 1, v10) != 1;
    }

    else
    {
      return -1;
    }
  }

  v20 = v25;
  v18(v25, v7, v10);
  v21 = v20;
  sub_1D417D2DC(&qword_1EC7C9810, MEMORY[0x1E69782D8], MEMORY[0x1E69782E8]);
  if (sub_1D4419BD4())
  {
    v22 = *(v11 + 8);
    v22(v20, v10);
    v22(v16, v10);
    return -1;
  }

  else
  {
    v23 = sub_1D4419BC4();
    v24 = *(v11 + 8);
    v24(v21, v10);
    v24(v16, v10);
    return v23 & 1;
  }
}

double sub_1D43C4C88()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_1D441A874();
    _s5IndexCMa(0);
    sub_1D417D2DC(&qword_1EDE325C0, _s5IndexCMa, &unk_1D4436E38);
    sub_1D441A0A4();
    v2 = v26;
    v3 = v27;
    v4 = v28;
    v5 = v29;
    v6 = v30;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  while ((v2 & 0x8000000000000000) == 0)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          goto LABEL_28;
        }

        v12 = *(v3 + 8 * v13);
        ++v11;
        if (v12)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      goto LABEL_28;
    }

LABEL_18:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_8;
    }

    v18 = Strong;
    swift_beginAccess();
    v19 = objc_getAssociatedObject(v18, &unk_1EC7CA3C0);
    swift_endAccess();
    if (v19)
    {
      sub_1D441A804();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25[0] = v23;
    v25[1] = v24;
    if (!*(&v24 + 1))
    {
      sub_1D41769C4(v25, &qword_1EC7C9720, &qword_1D4436990);
LABEL_26:
      sub_1D41899C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470, &qword_1D4438110);
      swift_allocObject();
      v20 = sub_1D4419924();
      swift_beginAccess();

      objc_setAssociatedObject(v18, &unk_1EC7CA3C0, v20, 1);
      swift_endAccess();

      goto LABEL_27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470, &qword_1D4438110);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_27:
    *&v25[0] = v15;
    sub_1D4419944();

LABEL_8:

    v5 = v13;
    v6 = v14;
  }

  v16 = sub_1D441A8F4();
  if (v16)
  {
    *&v23 = v16;
    _s5IndexCMa(0);
    swift_dynamicCast();
    v15 = *&v25[0];
    v13 = v5;
    v14 = v6;
    if (*&v25[0])
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  sub_1D43300C8(v2);
  swift_unknownObjectWeakAssign();
  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
LABEL_29:
    v21 = MEMORY[0x1E69E7CD0];
    goto LABEL_30;
  }

LABEL_32:
  if (!sub_1D441A8C4())
  {
    goto LABEL_29;
  }

  v21 = sub_1D42D6298(MEMORY[0x1E69E7CC0]);
LABEL_30:
  *(v1 + 32) = v21;

  return result;
}

uint64_t sub_1D43C5084()
{
  v1 = sub_1D43C4C88();
  MEMORY[0x1DA6D8750](v0 + 16, v1);

  return swift_deallocClassInstance();
}

double sub_1D43C50F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_1D441A434();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*(v9 + 16))(v11, *(v2 + 24) + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection, v8);
    v15 = swift_unknownObjectWeakLoadStrong();
    v16 = sub_1D44196C4();
    v17 = *(v16 - 8);
    v21[1] = a1;
    v18 = v17;
    (*(v17 + 16))(v7, a2, v16);
    (*(v18 + 56))(v7, 0, 1, v16);
    _s5IndexCMa(0);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = v19 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 1;
    (*(v9 + 32))(v19 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection, v11, v8);
    swift_unknownObjectWeakAssign();

    sub_1D430A63C(v7, v19 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex);
    swift_beginAccess();

    sub_1D43C5F00(&v22, v19);
    swift_endAccess();

    sub_1D4189834();
    v21[2] = v19;
    sub_1D4419964();
  }

  return result;
}

void sub_1D43C53D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1D441A434();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1D4189834();
    sub_1D4419954();

    v13 = v21;
    if (v21)
    {
      (*(v8 + 16))(v10, *(v2 + 24) + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection, v7);
      v14 = swift_unknownObjectWeakLoadStrong();
      v15 = sub_1D44196C4();
      v16 = a2;
      v17 = *(v15 - 8);
      (*(v17 + 16))(v6, v16, v15);
      (*(v17 + 56))(v6, 0, 1, v15);
      _s5IndexCMa(0);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = v18 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 1;
      (*(v8 + 32))(v18 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection, v10, v7);
      swift_unknownObjectWeakAssign();

      sub_1D430A63C(v6, v18 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex);
      swift_beginAccess();
      sub_1D43CBEBC(v13);

      sub_1D43C5F00(&v20, v18);
      swift_endAccess();

      sub_1D4189834();
      v20 = v18;
      v21 = v13;
      sub_1D4419934();
    }
  }
}

void sub_1D43C56FC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D4189834();
    sub_1D4419954();

    if (v3)
    {
      swift_beginAccess();
      sub_1D43CBEBC(v3);
      swift_endAccess();

      sub_1D4189834();
      sub_1D4419944();
    }

    else
    {
    }
  }
}

void *sub_1D43C57DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_1D4189834();

  return v2;
}

void *sub_1D43C5858(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_1D4189834();

    v3 = sub_1D4419914();

    return v3;
  }

  return result;
}

id sub_1D43C58B8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_1D432A368(a1);

    return v4;
  }

  return result;
}

void sub_1D43C58FC(uint64_t a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1D432A8EC(a2);
  }

  else
  {
    v4 = sub_1D4419654();
    v5 = *(*(v4 - 8) + 56);

    v5(a2, 1, 1, v4);
  }
}

uint64_t sub_1D43C5A30(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D441AEB4();
  sub_1D4419CD4();
  v8 = sub_1D441AF04();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D441AD84() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D43C8F94(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D43C5B80(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1D441A8D4();

    if (v8)
    {

      sub_1D44198E4();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1D441A8C4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1D43C6F10(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1D43C7980(v17 + 1);
    }

    sub_1D43C8A38(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1D44198E4();
  sub_1D417D2DC(&qword_1EC7C9820, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);
  v10 = sub_1D4419B84();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1D43C9114(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1D417D2DC(&qword_1EC7C9828, MEMORY[0x1E69921C8], MEMORY[0x1E69921D8]);
  while ((sub_1D4419BE4() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1D43C5E20(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D441AEA4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D43C930C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D43C5F00(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v70 = sub_1D44196C4();
  v5 = *(v70 - 8);
  v6 = MEMORY[0x1EEE9AC00](v70);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  v21 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    v68 = v18;
    v62 = v17;
    v63 = v11;
    v58 = v8;
    sub_1D441AEB4();
    v64 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
    v25 = v71;
    sub_1D441A424();
    v65 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
    sub_1D430A294(v25 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v20);
    v69 = *(v5 + 48);
    if (v69(v20, 1, v70) == 1)
    {
      sub_1D441AED4();
    }

    else
    {
      v30 = v70;
      (*(v5 + 32))(v13, v20, v70);
      sub_1D441AED4();
      sub_1D417D2DC(&qword_1EC7CA4C0, MEMORY[0x1E69782D8], MEMORY[0x1E69782E0]);
      sub_1D4419B94();
      (*(v5 + 8))(v13, v30);
    }

    v56 = v3;
    v57 = a1;
    v31 = sub_1D441AF04();
    v32 = v21 + 56;
    v33 = -1 << *(v21 + 32);
    v34 = v31 & ~v33;
    if (((*(v21 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
LABEL_29:
      v51 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = *v51;
      v53 = v71;

      sub_1D43C942C(v54, v34, isUniquelyReferenced_nonNull_native);
      *v51 = v72;
      *v57 = v53;
      return 1;
    }

    v35 = ~v33;
    v60 = (v5 + 32);
    v59 = (v5 + 8);
    v61 = v21;
    v66 = ~v33;
    v67 = v21 + 56;
    while (1)
    {
      v36 = *(*(v21 + 48) + 8 * v34);

      if ((sub_1D441A414() & 1) == 0)
      {

        goto LABEL_17;
      }

      v37 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
      v38 = v68;
      sub_1D430A294(v36 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v68);
      v39 = v69;
      if (v69(v38, 1, v70) != 1)
      {
        v40 = v70;
        v41 = *v60;
        v42 = v63;
        (*v60)(v63, v68, v70);
        v43 = v62;
        sub_1D430A294(v71 + v65, v62);
        if (v39(v43, 1, v40) != 1)
        {
          v45 = v58;
          v41(v58, v43, v40);
          sub_1D417D2DC(&qword_1EC7C9810, MEMORY[0x1E69782D8], MEMORY[0x1E69782E8]);
          if (sub_1D4419BD4())
          {

            v46 = *v59;
            v47 = v70;
            (*v59)(v45, v70);
            v46(v42, v47);
            v21 = v61;
            v35 = v66;
            v32 = v67;
          }

          else
          {
            v48 = v70;
            v49 = sub_1D4419BC4();

            v50 = *v59;
            (*v59)(v45, v48);
            v50(v42, v48);
            v21 = v61;
            v35 = v66;
            v32 = v67;
            if ((v49 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_17;
        }

        (*v59)(v42, v40);
        v38 = v43;
        v21 = v61;
        v39 = v69;
      }

      sub_1D41769C4(v38, &unk_1EC7CA3B0, &qword_1D44360C0);
      v44 = v39(v36 + v37, 1, v70);

      v35 = v66;
      v32 = v67;
      if (v44 == 1 && v69((v71 + v65), 1, v70) == 1)
      {
LABEL_28:

        *v57 = *(*(v21 + 48) + 8 * v34);

        return 0;
      }

LABEL_17:
      v34 = (v34 + 1) & v35;
      if (((*(v32 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  if (v21 < 0)
  {
    v22 = *v3;
  }

  else
  {
    v22 = v21 & 0xFFFFFFFFFFFFFF8;
  }

  v23 = sub_1D441A8D4();

  if (v23)
  {

    v73 = v23;
    _s5IndexCMa(0);
    swift_dynamicCast();
    result = 0;
    *a1 = v72;
    return result;
  }

  result = sub_1D441A8C4();
  if (!__OFADD__(result, 1))
  {
    v26 = sub_1D43C7144(v22, result + 1);
    v72 = v26;
    v27 = *(v26 + 16);
    if (*(v26 + 24) <= v27)
    {
      sub_1D43C7C14(v27 + 1);
      v26 = v72;
    }

    v28 = v71;

    sub_1D43C8B20(v29, v26);

    *v3 = v26;
    *a1 = v28;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D43C66A0(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D441AEB4();
  sub_1D441AEE4();
  v6 = sub_1D441AF04();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D43C9AD0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D43C6798(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D4417C84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D417D2DC(&qword_1EC7C97B8, MEMORY[0x1E69B72D8], MEMORY[0x1E69B72E0]);
  v33 = a2;
  v11 = sub_1D4419B84();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D417D2DC(&qword_1EC7C97C0, MEMORY[0x1E69B72D8], MEMORY[0x1E69B72E8]);
      v21 = sub_1D4419BE4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D43C9C2C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D43C6A9C(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1D441A8D4();

    if (v17)
    {

      sub_1D41766C0(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_1D441A8C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_1D43C6D10(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_1D43C8818(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_1D43C8D80(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_1D41766C0(0, a3, a4);
    v19 = sub_1D441A5D4();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_1D441A5E4();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_1D43C8E04(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D43C6D10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1D441A984();
    v23 = v10;
    sub_1D441A874();
    if (sub_1D441A8F4())
    {
      sub_1D41766C0(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_1D43C8818(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_1D441A5D4();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_1D441A8F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1D43C6F10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9818, &qword_1D4435DE8);
    v2 = sub_1D441A984();
    v15 = v2;
    sub_1D441A874();
    if (sub_1D441A8F4())
    {
      sub_1D44198E4();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D43C7980(v9 + 1);
        }

        v2 = v15;
        sub_1D417D2DC(&qword_1EC7C9820, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);
        result = sub_1D4419B84();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D441A8F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D43C7144(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D44196C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9808, &qword_1D4435DD8);
    v10 = sub_1D441A984();
    v31 = v10;
    sub_1D441A874();
    v11 = sub_1D441A8F4();
    if (v11)
    {
      v12 = v11;
      v28 = _s5IndexCMa(0);
      v13 = v12;
      v27 = (v4 + 32);
      do
      {
        v29 = v13;
        swift_dynamicCast();
        v15 = *(v10 + 16);
        if (*(v10 + 24) <= v15)
        {
          sub_1D43C7C14(v15 + 1);
        }

        v16 = v30;
        v10 = v31;
        sub_1D441AEB4();
        sub_1D441A424();
        sub_1D430A294(v16 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v9);
        if ((*(v4 + 48))(v9, 1, v3) == 1)
        {
          sub_1D441AED4();
        }

        else
        {
          (*v27)(v6, v9, v3);
          sub_1D441AED4();
          sub_1D417D2DC(&qword_1EC7CA4C0, MEMORY[0x1E69782D8], MEMORY[0x1E69782E0]);
          sub_1D4419B94();
          (*(v4 + 8))(v6, v3);
        }

        result = sub_1D441AF04();
        v18 = v10 + 56;
        v19 = -1 << *(v10 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v10 + 56 + 8 * (v20 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v20) & ~*(v10 + 56 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = 0;
          v23 = (63 - v19) >> 6;
          do
          {
            if (++v21 == v23 && (v22 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v24 = v21 == v23;
            if (v21 == v23)
            {
              v21 = 0;
            }

            v22 |= v24;
            v25 = *(v18 + 8 * v21);
          }

          while (v25 == -1);
          v14 = __clz(__rbit64(~v25)) + (v21 << 6);
        }

        *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v10 + 48) + 8 * v14) = v16;
        ++*(v10 + 16);
        v13 = sub_1D441A8F4();
      }

      while (v13);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1D43C7520(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97D0, &qword_1D4435DB0);
    v2 = sub_1D441A984();
    v15 = v2;
    sub_1D441A874();
    if (sub_1D441A8F4())
    {
      type metadata accessor for ThumbnailKey();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D43C8818(v9 + 1, &qword_1EC7C97D0, &qword_1D4435DB0);
        }

        v2 = v15;
        result = sub_1D441A5D4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D441A8F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1D43C7720(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9878, &qword_1D4435E08);
  v4 = sub_1D441A974();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D441AEB4();
      sub_1D4419CD4();
      v21 = sub_1D441AF04();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D43C7980(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9818, &qword_1D4435DE8);
  v4 = sub_1D441A974();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1D44198E4();
      sub_1D417D2DC(&qword_1EC7C9820, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);
      v18 = sub_1D4419B84();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D43C7C14(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D44196C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v36 - v7;
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9808, &qword_1D4435DD8);
  v9 = sub_1D441A974();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v1;
    v11 = 0;
    v12 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v42 = (v4 + 48);
    v43 = v3;
    v38 = (v4 + 8);
    v39 = (v4 + 32);
    v17 = v9 + 56;
    v40 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(*(v8 + 48) + 8 * (v19 | (v11 << 6)));
      sub_1D441AEB4();
      sub_1D441A424();
      v23 = v44;
      sub_1D430A294(v22 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v44);
      v24 = v43;
      if ((*v42)(v23, 1, v43) == 1)
      {
        sub_1D441AED4();
      }

      else
      {
        v25 = v41;
        (*v39)(v41, v23, v24);
        sub_1D441AED4();
        sub_1D417D2DC(&qword_1EC7CA4C0, MEMORY[0x1E69782D8], MEMORY[0x1E69782E0]);
        sub_1D4419B94();
        v26 = v25;
        v8 = v40;
        (*v38)(v26, v24);
      }

      v27 = sub_1D441AF04();
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v8 + 32);
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    v2 = v37;
    *(v8 + 16) = 0;
  }

  *v2 = v10;
}

void sub_1D43C8048(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5E8, &qword_1D4439D58);
  v4 = sub_1D441A974();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1D441AEA4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D43C826C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBDB8, &qword_1D443B628);
  v4 = sub_1D441A974();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      sub_1D441AEB4();
      sub_1D441AEE4();
      v18 = sub_1D441AF04();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 2 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D43C84BC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D4417C84();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97B0, &qword_1D4435DA0);
  v6 = sub_1D441A974();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1D417D2DC(&qword_1EC7C97B8, MEMORY[0x1E69B72D8], MEMORY[0x1E69B72E0]);
      v21 = sub_1D4419B84();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1D43C8818(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1D441A974();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_1D441A5D4();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t sub_1D43C8A38(uint64_t a1, uint64_t a2)
{
  sub_1D44198E4();
  sub_1D417D2DC(&qword_1EC7C9820, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);
  sub_1D4419B84();
  result = sub_1D441A854();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D43C8B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D44196C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D441AEB4();
  sub_1D441A424();
  sub_1D430A294(a1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D441AED4();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D441AED4();
    sub_1D417D2DC(&qword_1EC7CA4C0, MEMORY[0x1E69782D8], MEMORY[0x1E69782E0]);
    sub_1D4419B94();
    (*(v5 + 8))(v7, v4);
  }

  sub_1D441AF04();
  result = sub_1D441A854();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D43C8D80(uint64_t a1, uint64_t a2)
{
  sub_1D441A5D4();
  result = sub_1D441A854();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1D43C8E04(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1D43C8818(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D43CA648(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1D418E100(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_1D441A5D4();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_1D41766C0(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_1D441A5E4();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D441ADD4();
  __break(1u);
}

void sub_1D43C8F94(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D43C7720(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1D43C9EF4();
      goto LABEL_16;
    }

    sub_1D43CA788(v8 + 1);
  }

  v10 = *v4;
  sub_1D441AEB4();
  sub_1D4419CD4();
  v11 = sub_1D441AF04();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1D441AD84() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1D441ADD4();
  __break(1u);
}

void sub_1D43C9114(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D43C7980(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D43CA190(&qword_1EC7C9818, &qword_1D4435DE8);
      goto LABEL_12;
    }

    sub_1D43CA9C0(v6 + 1);
  }

  v8 = *v3;
  sub_1D44198E4();
  sub_1D417D2DC(&qword_1EC7C9820, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);
  v9 = sub_1D4419B84();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1D417D2DC(&qword_1EC7C9828, MEMORY[0x1E69921C8], MEMORY[0x1E69921D8]);
    while ((sub_1D4419BE4() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D441ADD4();
  __break(1u);
}

void sub_1D43C930C(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D43C8048(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1D43CA050();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D43CAC38(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1D441AEA4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D441ADD4();
  __break(1u);
}

void sub_1D43C942C(uint64_t a1, unint64_t a2, char a3)
{
  v62 = a1;
  v6 = sub_1D44196C4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v63 = v53 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v59 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v65 = v53 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v53 - v20;
  v22 = *(*v3 + 16);
  v23 = *(*v3 + 24);
  v55 = v3;
  if (v23 > v22 && (a3 & 1) != 0)
  {
    goto LABEL_7;
  }

  v54 = v10;
  if (a3)
  {
    sub_1D43C7C14(v22 + 1);
    goto LABEL_11;
  }

  if (v23 > v22)
  {
    sub_1D43CA190(&qword_1EC7C9808, &qword_1D4435DD8);
LABEL_7:
    v24 = v62;
    goto LABEL_8;
  }

  sub_1D43CAE28(v22 + 1);
LABEL_11:
  v67 = *v3;
  sub_1D441AEB4();
  v29 = &OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
  v30 = v62;
  v66 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
  sub_1D441A424();
  v60 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
  sub_1D430A294(v30 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v21);
  v64 = *(v7 + 48);
  if (v64(v21, 1, v6) == 1)
  {
    sub_1D441AED4();
  }

  else
  {
    (*(v7 + 32))(v14, v21, v6);
    sub_1D441AED4();
    sub_1D417D2DC(&qword_1EC7CA4C0, MEMORY[0x1E69782D8], MEMORY[0x1E69782E0]);
    sub_1D4419B94();
    (*(v7 + 8))(v14, v6);
  }

  v31 = sub_1D441AF04();
  v32 = v67 + 56;
  v33 = -1 << *(v67 + 32);
  a2 = v31 & ~v33;
  v24 = v62;
  if ((*(v67 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v33;
    v53[1] = _s5IndexCMa(0);
    v56 = (v7 + 8);
    v57 = (v7 + 32);
    v58 = v7 + 48;
    v61 = v34;
    do
    {
      v35 = *(*(v67 + 48) + 8 * a2);

      if ((sub_1D441A414() & 1) == 0)
      {

        goto LABEL_17;
      }

      v36 = v29;
      v37 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
      v38 = v6;
      v39 = v65;
      sub_1D430A294(v35 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v65);
      v40 = v64;
      v41 = v64(v39, 1, v38);
      v42 = v39;
      v6 = v38;
      if (v41 != 1)
      {
        v43 = *v57;
        (*v57)(v63, v65, v6);
        v44 = v24 + v60;
        v45 = v59;
        sub_1D430A294(v44, v59);
        if (v40(v45, 1, v6) != 1)
        {
          v47 = v63;
          v48 = v54;
          v43(v54, v45, v6);
          v49 = v47;
          sub_1D417D2DC(&qword_1EC7C9810, MEMORY[0x1E69782D8], MEMORY[0x1E69782E8]);
          if (sub_1D4419BD4())
          {

            v50 = *v56;
            (*v56)(v48, v6);
            v50(v49, v6);
            v34 = v61;
            v24 = v62;
            v29 = &OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
          }

          else
          {
            v51 = sub_1D4419BC4();

            v52 = *v56;
            (*v56)(v48, v6);
            v52(v49, v6);
            v34 = v61;
            v24 = v62;
            v29 = &OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
            if ((v51 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_17;
        }

        (*v56)(v63, v6);
        v42 = v45;
        v24 = v62;
        v36 = &OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
        v40 = v64;
      }

      sub_1D41769C4(v42, &unk_1EC7CA3B0, &qword_1D44360C0);
      v46 = v40(v35 + v37, 1, v6);

      v29 = v36;
      v34 = v61;
      if (v46 == 1 && v64((v24 + v60), 1, v6) == 1)
      {
LABEL_28:
        sub_1D441ADD4();
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

LABEL_17:
      a2 = (a2 + 1) & v34;
    }

    while (((*(v32 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_8:
  v25 = *v55;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + 8 * a2) = v24;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    goto LABEL_29;
  }

  *(v25 + 16) = v28;
}

void sub_1D43C9AD0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D43C826C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1D43CA2D0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D43CB238(v5 + 1);
  }

  v8 = *v3;
  sub_1D441AEB4();
  sub_1D441AEE4();
  v9 = sub_1D441AF04();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for ICAttachmentType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 2 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 2 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D441ADD4();
  __break(1u);
}

uint64_t sub_1D43C9C2C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D4417C84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D43C84BC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D43CA410(MEMORY[0x1E69B72D8], &qword_1EC7C97B0, &qword_1D4435DA0);
      goto LABEL_12;
    }

    sub_1D43CB458(v10 + 1);
  }

  v12 = *v3;
  sub_1D417D2DC(&qword_1EC7C97B8, MEMORY[0x1E69B72D8], MEMORY[0x1E69B72E0]);
  v13 = sub_1D4419B84();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D417D2DC(&qword_1EC7C97C0, MEMORY[0x1E69B72D8], MEMORY[0x1E69B72E8]);
      v21 = sub_1D4419BE4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D441ADD4();
  __break(1u);
  return result;
}

void sub_1D43C9EF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9878, &qword_1D4435E08);
  v2 = *v0;
  v3 = sub_1D441A964();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D43CA050()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5E8, &qword_1D4439D58);
  v2 = *v0;
  v3 = sub_1D441A964();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D43CA190(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D441A964();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1D43CA2D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBDB8, &qword_1D443B628);
  v2 = *v0;
  v3 = sub_1D441A964();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D43CA410(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_1D441A964();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_1D43CA648(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D441A964();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1D43CA788(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9878, &qword_1D4435E08);
  v4 = sub_1D441A974();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D441AEB4();

      sub_1D4419CD4();
      v20 = sub_1D441AF04();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D43CA9C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9818, &qword_1D4435DE8);
  v4 = sub_1D441A974();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1D44198E4();
      sub_1D417D2DC(&qword_1EC7C9820, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);

      v18 = sub_1D4419B84();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
      v10 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v27 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D43CAC38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5E8, &qword_1D4439D58);
  v4 = sub_1D441A974();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1D441AEA4();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1D43CAE28(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D44196C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v35 - v7;
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9808, &qword_1D4435DD8);
  v9 = sub_1D441A974();
  v10 = v9;
  if (*(v8 + 16))
  {
    v42 = v3;
    v36 = v1;
    v11 = 0;
    v12 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v41 = (v4 + 48);
    v37 = (v4 + 8);
    v38 = (v4 + 32);
    v17 = v9 + 56;
    v39 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(*(v8 + 48) + 8 * (v19 | (v11 << 6)));
      sub_1D441AEB4();

      sub_1D441A424();
      v23 = v43;
      sub_1D430A294(v22 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v43);
      v24 = v42;
      if ((*v41)(v23, 1, v42) == 1)
      {
        sub_1D441AED4();
      }

      else
      {
        v25 = v40;
        (*v38)(v40, v23, v24);
        sub_1D441AED4();
        sub_1D417D2DC(&qword_1EC7CA4C0, MEMORY[0x1E69782D8], MEMORY[0x1E69782E0]);
        sub_1D4419B94();
        v26 = v25;
        v8 = v39;
        (*v37)(v26, v24);
      }

      v27 = sub_1D441AF04();
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v36;
        goto LABEL_29;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v10;
  }
}

void sub_1D43CB238(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBDB8, &qword_1D443B628);
  v4 = sub_1D441A974();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
      sub_1D441AEB4();
      sub_1D441AEE4();
      v17 = sub_1D441AF04();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 2 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D43CB458(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1D4417C84();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97B0, &qword_1D4435DA0);
  v7 = sub_1D441A974();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1D417D2DC(&qword_1EC7C97B8, MEMORY[0x1E69B72D8], MEMORY[0x1E69B72E0]);
      v21 = sub_1D4419B84();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

uint64_t sub_1D43CB774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D4417494();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D417D2DC(&qword_1EDE33D40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v31 = a1;
  v10 = sub_1D4419B84();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1D417D2DC(&unk_1EDE33D30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v19 = sub_1D4419BE4();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D43CA410(MEMORY[0x1E69695A8], &qword_1EC7CB5F0, &unk_1D4439D60);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1D43CCF38(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1D43CBA40(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D441AEB4();
  sub_1D4419CD4();
  v6 = sub_1D441AF04();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D441AD84() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D43C9EF4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1D43CD240(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1D43CBB7C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1D441A904();

    if (v6)
    {
      v7 = sub_1D43CC5B0(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_1D41766C0(0, &qword_1EC7CAF48, 0x1E695BAD8);
  v10 = sub_1D441A5D4();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1D441A5E4();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D43CA648(&qword_1EC7CB5E0, &qword_1D4439D50);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1D43CD404(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1D43CBD24(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1D441A904();

    if (v6)
    {
      v7 = sub_1D43CC738(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for ThumbnailKey();
  v10 = sub_1D441A5D4();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1D441A5E4();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D43CA648(&qword_1EC7C97D0, &qword_1D4435DB0);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1D43CD404(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1D43CBEBC(uint64_t a1)
{
  v3 = sub_1D44196C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  v20 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v20 < 0)
    {
      v21 = *v1;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFFFFFFFF8;
    }

    v22 = sub_1D441A904();

    if (v22)
    {
      sub_1D43CC890(v21, a1);
      v24 = v23;

      return v24;
    }

    return 0;
  }

  v62 = v17;
  v55 = v16;
  sub_1D441AEB4();
  v56 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
  sub_1D441A424();
  v63 = a1;
  v58 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
  sub_1D430A294(a1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v19);
  v26 = *(v4 + 48);
  v64 = v4 + 48;
  v66 = v26;
  v27 = v26(v19, 1, v3);
  v61 = v3;
  if (v27 == 1)
  {
    v28 = v4;
    sub_1D441AED4();
  }

  else
  {
    (*(v4 + 32))(v12, v19, v3);
    sub_1D441AED4();
    sub_1D417D2DC(&qword_1EC7CA4C0, MEMORY[0x1E69782D8], MEMORY[0x1E69782E0]);
    sub_1D4419B94();
    v28 = v4;
    (*(v4 + 8))(v12, v3);
  }

  v29 = sub_1D441AF04();
  v30 = v20 + 56;
  v31 = -1 << *(v20 + 32);
  v32 = v29 & ~v31;
  if (((*(v20 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
  {
    return 0;
  }

  v52 = v7;
  v51 = v1;
  v65 = ~v31;
  v54 = (v28 + 32);
  v53 = (v28 + 8);
  v59 = v20;
  v60 = v20 + 56;
  while (1)
  {
    v33 = *(*(v20 + 48) + 8 * v32);

    if ((sub_1D441A414() & 1) == 0)
    {

      goto LABEL_14;
    }

    v34 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
    v35 = v62;
    sub_1D430A294(v33 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v62);
    v36 = v61;
    v37 = v66(v35, 1, v61);
    v38 = v35;
    v39 = v66;
    if (v37 == 1)
    {
      goto LABEL_19;
    }

    v57 = *v54;
    v57(v10, v62, v36);
    v40 = v55;
    sub_1D430A294(v63 + v58, v55);
    if (v39(v40, 1, v36) == 1)
    {
      break;
    }

    v42 = v52;
    v57(v52, v40, v36);
    sub_1D417D2DC(&qword_1EC7C9810, MEMORY[0x1E69782D8], MEMORY[0x1E69782E8]);
    v43 = v36;
    if (sub_1D4419BD4())
    {

      v44 = *v53;
      (*v53)(v42, v36);
      v44(v10, v36);
      v20 = v59;
      v30 = v60;
    }

    else
    {
      v45 = sub_1D4419BC4();

      v46 = *v53;
      (*v53)(v42, v43);
      v46(v10, v43);
      v20 = v59;
      v30 = v60;
      if ((v45 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_14:
    v32 = (v32 + 1) & v65;
    if (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
      return 0;
    }
  }

  (*v53)(v10, v36);
  v38 = v40;
LABEL_19:
  sub_1D41769C4(v38, &unk_1EC7CA3B0, &qword_1D44360C0);
  v41 = v39(v33 + v34, 1, v36);

  v20 = v59;
  v30 = v60;
  if (v41 != 1 || v39(v63 + v58, 1, v61) != 1)
  {
    goto LABEL_14;
  }

LABEL_25:
  v47 = v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v47;
  v67 = *v47;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D43CA190(&qword_1EC7C9808, &qword_1D4435DD8);
    v49 = v67;
  }

  v50 = *(*(v49 + 48) + 8 * v32);
  sub_1D43CD5A4(v32);
  result = v50;
  *v47 = v67;
  return result;
}

uint64_t sub_1D43CC5B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1D441A8C4();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1D43C6D10(v5, v4, &qword_1EC7CB5E0, &qword_1D4439D50, &qword_1EC7CAF48, 0x1E695BAD8);
  v15 = v6;

  v7 = sub_1D441A5D4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1D41766C0(0, &qword_1EC7CAF48, 0x1E695BAD8);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1D441A5E4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_1D43CD404(v9);
  result = sub_1D441A5E4();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D43CC738(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1D441A8C4();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1D43C7520(v5, v4);
  v15 = v6;

  v7 = sub_1D441A5D4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for ThumbnailKey();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1D441A5E4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_1D43CD404(v9);
  result = sub_1D441A5E4();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D43CC890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D44196C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v54 = &v46 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - v17;
  v47 = v2;

  v19 = sub_1D441A8C4();
  v20 = swift_unknownObjectRetain();
  v21 = v19;
  v22 = a2;
  v23 = sub_1D43C7144(v20, v21);
  v61 = v23;
  sub_1D441AEB4();
  v24 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
  v60 = v23;

  sub_1D441A424();
  v55 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
  sub_1D430A294(a2 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v18);
  v25 = *(v5 + 48);
  v59 = v5 + 48;
  if (v25(v18, 1, v4) == 1)
  {
    sub_1D441AED4();
  }

  else
  {
    (*(v5 + 32))(v11, v18, v4);
    sub_1D441AED4();
    sub_1D417D2DC(&qword_1EC7CA4C0, MEMORY[0x1E69782D8], MEMORY[0x1E69782E0]);
    sub_1D4419B94();
    (*(v5 + 8))(v11, v4);
  }

  v26 = sub_1D441AF04();
  v27 = v60 + 56;
  v28 = -1 << *(v60 + 32);
  v29 = v26 & ~v28;
  if (((*(v60 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
    goto LABEL_23;
  }

  v30 = ~v28;
  v48 = (v5 + 8);
  v53 = v22;
  v51 = v24;
  v56 = ~v28;
  v57 = v60 + 56;
  v49 = (v5 + 32);
  while (1)
  {
    v31 = *(*(v60 + 48) + 8 * v29);

    if ((sub_1D441A414() & 1) == 0)
    {

      goto LABEL_7;
    }

    v32 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
    v33 = v58;
    sub_1D430A294(v31 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v58);
    if (v25(v33, 1, v4) == 1)
    {
      goto LABEL_12;
    }

    v34 = v54;
    v35 = v22;
    v36 = *v49;
    (*v49)(v54, v58, v4);
    v37 = v35 + v55;
    v38 = v52;
    sub_1D430A294(v37, v52);
    if (v25(v38, 1, v4) == 1)
    {
      break;
    }

    v36(v50, v38, v4);
    sub_1D417D2DC(&qword_1EC7C9810, MEMORY[0x1E69782D8], MEMORY[0x1E69782E8]);
    if (sub_1D4419BD4())
    {

      v40 = *v48;
      (*v48)(v50, v4);
      v40(v54, v4);
      v22 = v53;
      v30 = v56;
      v27 = v57;
    }

    else
    {
      v41 = v54;
      v42 = v50;
      v43 = sub_1D4419BC4();

      v44 = *v48;
      (*v48)(v42, v4);
      v44(v41, v4);
      v22 = v53;
      v30 = v56;
      v27 = v57;
      if ((v43 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_7:
    v29 = (v29 + 1) & v30;
    if (((*(v27 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  (*v48)(v34, v4);
  v33 = v38;
  v22 = v53;
LABEL_12:
  sub_1D41769C4(v33, &unk_1EC7CA3B0, &qword_1D44360C0);
  v39 = v25((v31 + v32), 1, v4);

  v30 = v56;
  v27 = v57;
  if (v39 != 1 || v25((v22 + v55), 1, v4) != 1)
  {
    goto LABEL_7;
  }

LABEL_18:

  v45 = *(*(v61 + 48) + 8 * v29);
  sub_1D43CD5A4(v29);
  if (sub_1D441A414())
  {
    if (!sub_1D43C4934((v22 + v55), (v45 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex)))
    {
      *v47 = v61;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_23:

  __break(1u);
}

void sub_1D43CCF38(int64_t a1)
{
  v3 = sub_1D4417494();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1D441A834();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1D417D2DC(&qword_1EDE33D40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v23 = sub_1D4419B84();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_1D43CD240(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D441A834();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D441AEB4();

        sub_1D4419CD4();
        v10 = sub_1D441AF04();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_1D43CD404(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D441A834();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1D441A5D4();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

void sub_1D43CD5A4(int64_t a1)
{
  v3 = sub_1D44196C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_1D441A834();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v37 = v10;
      v15 = (v14 + 1) & v13;
      v16 = (v4 + 48);
      v33 = (v4 + 8);
      v34 = (v4 + 32);
      v35 = v9;
      while (1)
      {
        v17 = *(*(v9 + 48) + 8 * v12);
        sub_1D441AEB4();

        sub_1D441A424();
        sub_1D430A294(v17 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v8);
        if ((*v16)(v8, 1, v3) == 1)
        {
          sub_1D441AED4();
        }

        else
        {
          v18 = a1;
          v19 = v16;
          v20 = v15;
          v21 = v13;
          v22 = v3;
          v23 = v36;
          (*v34)(v36, v8, v22);
          sub_1D441AED4();
          sub_1D417D2DC(&qword_1EC7CA4C0, MEMORY[0x1E69782D8], MEMORY[0x1E69782E0]);
          sub_1D4419B94();
          v24 = v23;
          v3 = v22;
          v13 = v21;
          v15 = v20;
          v16 = v19;
          a1 = v18;
          v9 = v35;
          (*v33)(v24, v3);
        }

        v25 = sub_1D441AF04();

        v26 = v25 & v13;
        if (a1 >= v15)
        {
          if (v26 < v15)
          {
            goto LABEL_5;
          }
        }

        else if (v26 >= v15)
        {
          goto LABEL_14;
        }

        if (a1 >= v26)
        {
LABEL_14:
          v27 = *(v9 + 48);
          v28 = (v27 + 8 * a1);
          v29 = (v27 + 8 * v12);
          if (a1 != v12 || v28 >= v29 + 1)
          {
            *v28 = *v29;
            a1 = v12;
          }
        }

LABEL_5:
        v12 = (v12 + 1) & v13;
        if (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          v10 = v37;
          goto LABEL_20;
        }
      }
    }

LABEL_20:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v9 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v32;
    ++*(v9 + 36);
  }
}

uint64_t ActivityStreamItemConvertible.activityItemIdPart(for:)()
{
  MEMORY[0x1DA6D5730](0x2865746144, 0xE500000000000000);
  sub_1D44173D4();
  sub_1D441A044();
  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  return 0;
}

uint64_t ActivityStreamItemConvertible.activityItemIdPart(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1D43CDA50(a1, a2, a3, 0x287463656A624FLL, 0xE700000000000000, MEMORY[0x1E69B71C0]);
}

{
  return sub_1D43CDA50(a1, a2, a3, 0x7069636974726150, 0xEC00000028746E61, MEMORY[0x1E69B72A0]);
}

uint64_t sub_1D43CDA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v6 = a6();
  MEMORY[0x1DA6D5730](v6);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  return a4;
}

Swift::String __swiftcall ActivityStreamItemConvertible.activityItemIdPart(for:)(Swift::OpaquePointer a1)
{
  v32 = v1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9758, &qword_1D443B630);
  v3 = MEMORY[0x1EEE9AC00](v31);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v27 - v5;
  v6 = *(a1._rawValue + 2);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1D418BC38(0, v6, 0);
    v7 = v38;
    v8 = a1._rawValue + 64;
    v9 = sub_1D441A824();
    v28 = a1._rawValue + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1._rawValue + 32))
    {
      if ((*&v8[8 * (v9 >> 6)] & (1 << v9)) == 0)
      {
        goto LABEL_14;
      }

      v35 = v6;
      v36 = *(a1._rawValue + 9);
      v10 = *(a1._rawValue + 6);
      v11 = sub_1D4417AC4();
      v12 = *(v11 - 8);
      v13 = v29;
      (*(v12 + 16))(v29, v10 + *(v12 + 72) * v9, v11);
      v14 = *(*(a1._rawValue + 7) + 8 * v9);
      v15 = v30;
      (*(v12 + 32))(v30, v13, v11);
      *(v15 + *(v31 + 48)) = v14;

      v6 = sub_1D43CE4E8(v15, v14, v34, v32, v33);
      v17 = v16;
      sub_1D43CFC28(v15);
      v38 = v7;
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D418BC38((v18 > 1), v19 + 1, 1);
        v7 = v38;
      }

      *(v7 + 16) = v19 + 1;
      v20 = v7 + 16 * v19;
      *(v20 + 32) = v6;
      *(v20 + 40) = v17;
      if (v9 >= -(-1 << *(a1._rawValue + 32)))
      {
        goto LABEL_15;
      }

      v8 = v28;
      if ((*&v28[8 * (v9 >> 6)] & (1 << v9)) == 0)
      {
        goto LABEL_16;
      }

      if (v36 != *(a1._rawValue + 9))
      {
        goto LABEL_17;
      }

      v9 = sub_1D441A844();
      v6 = v35 - 1;
      if (v35 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_12:
    v38 = 0x287374696445;
    v39 = 0xE600000000000000;
    v37 = v7;

    sub_1D43CE734(&v37);

    v21 = MEMORY[0x1DA6D5890](v37, MEMORY[0x1E69E6158]);
    v23 = v22;

    MEMORY[0x1DA6D5730](v21, v23);

    MEMORY[0x1DA6D5730](41, 0xE100000000000000);
    v24 = v38;
    v25 = v39;
  }

  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t ActivityStreamItemConvertible.activityItemId.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v2 = _s7NotesUI29ActivityStreamItemConvertiblePAAE08activityE2Id3forSSSaySSG_tF_0();

  return v2;
}

uint64_t ActivityStreamItemConvertible.activityItemGroupId.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))();
  v2 = _s7NotesUI29ActivityStreamItemConvertiblePAAE08activityE2Id3forSSSaySSG_tF_0();

  return v2;
}

uint64_t ActivityStreamItemConvertible.grouped(withEarlierActivityItem:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0Tm, v3, a1);
}

uint64_t ActivityStreamItemConvertible.activityItem(resolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (*(a3 + 8))(a2, a3);
  v35 = v9;
  v36 = v8;
  v10 = *(a3 + 24);
  v11 = type metadata accessor for ActivityStream.Item(0);
  v10(a2, a3);
  (*(a3 + 72))(&v37, a1, a2, a3);
  v34 = v37;
  v12 = (*(a3 + 80))(a1, a2, a3);
  v31 = v13;
  v32 = v12;
  v30 = v14;
  v33 = v15;
  v16 = (*(a3 + 88))(a1, a2, a3);
  v28 = v17;
  v29 = v16;
  v19 = v18;
  v21 = v20;
  v22 = (*(a3 + 96))(a1, a2, a3);
  v23 = (*(a3 + 104))(a1, a2, a3);
  result = (*(a3 + 112))(a1, a2, a3);
  *a4 = v36;
  a4[1] = v35;
  *(a4 + v11[6]) = v34;
  v25 = a4 + v11[7];
  *v25 = v32;
  *(v25 + 1) = v31;
  v25[16] = v30 & 1;
  *(v25 + 3) = v33;
  v26 = (a4 + v11[8]);
  *v26 = v29;
  v26[1] = v28;
  v26[2] = v19;
  v26[3] = v21;
  *(a4 + v11[9]) = v22;
  *(a4 + v11[10]) = v23;
  v27 = a4 + v11[12];
  *v27 = 0;
  v27[8] = 1;
  *(a4 + v11[13]) = 0;
  *(a4 + v11[14]) = 4;
  return result;
}

uint64_t sub_1D43CE20C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0Tm, v3, a1);
}

uint64_t sub_1D43CE2BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768, &unk_1D443B660);
  sub_1D418BC58();
  sub_1D4419BB4();
  v3 = sub_1D4419C14();

  v4 = [v3 ic_sha256];

  if (v4)
  {
    v5 = sub_1D4419C54();
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t ActivityStreamItemConvertible.activityItemDestination(resolver:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ActivityStream.Destinations(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ActivityStreamItemConvertible.activityItemIdPart(for:)(void *a1)
{
  [a1 range];
  v1 = sub_1D441A6D4();
  MEMORY[0x1DA6D5730](v1);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  return 0x2874696445;
}

uint64_t sub_1D43CE4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 40;
  v19 = 0xE100000000000000;
  v9 = _s7NotesUI29ActivityStreamItemConvertiblePAAE08activityE6IdPart3forSS0A6Shared08NoteEditC5EventV7ParentsO_tF_0(a1);
  MEMORY[0x1DA6D5730](v9);

  MEMORY[0x1DA6D5730](8250, 0xE200000000000000);
  v10 = sub_1D43CE614(a3, a4, a5);
  sub_1D43CFC90(a2, v10);
  v12 = v11;

  v17 = v12;

  sub_1D43CE734(&v17);

  v13 = MEMORY[0x1DA6D5890](v17, MEMORY[0x1E69E6158]);
  v15 = v14;

  MEMORY[0x1DA6D5730](v13, v15);

  return v18;
}

uint64_t (*sub_1D43CE614(uint64_t a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_1D43D064C;
}

void sub_1D43CE734(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D43886B0(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1D43CE7A0(v4);
  *a1 = v2;
}

void sub_1D43CE7A0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D441AD34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D4419EA4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D43CE968(v7, v8, a1, v4);
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
    sub_1D43CE898(0, v2, 1, a1);
  }
}

uint64_t sub_1D43CE898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D441AD84(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D43CE968(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_1D43880A8(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D43CEF44((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1D441AD84();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_1D441AD84()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D438CD68(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_1D438CD68((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D43CEF44((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D43880A8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_1D438801C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_1D441AD84() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_1D43CEF44(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D441AD84() & 1) != 0)
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
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D441AD84() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

char *sub_1D43CF16C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D43CF424(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D43CF18C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D43CF528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D43CF1AC(void *a1, int64_t a2, char a3)
{
  result = sub_1D417F034(a1, a2, a3, *v3, &qword_1EC7CBDD0, &unk_1D443B690, MEMORY[0x1E69921B8]);
  *v3 = result;
  return result;
}

void *sub_1D43CF1F0(void *a1, int64_t a2, char a3)
{
  result = sub_1D417F034(a1, a2, a3, *v3, &qword_1EC7CB8D0, &qword_1D443A290, type metadata accessor for ActivityStream.Section);
  *v3 = result;
  return result;
}

void *sub_1D43CF234(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D43CF650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D43CF254(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D43CF9DC(a1, a2, a3, *v3, &qword_1EC7CB830, &unk_1D443B6A0, &qword_1EC7C9B48, &unk_1D4436390);
  *v3 = result;
  return result;
}

void *sub_1D43CF294(void *a1, int64_t a2, char a3)
{
  result = sub_1D417F034(a1, a2, a3, *v3, &qword_1EC7CAFC0, &unk_1D4439200, type metadata accessor for ActivityStream.Item);
  *v3 = result;
  return result;
}

void *sub_1D43CF2D8(void *a1, int64_t a2, char a3)
{
  result = sub_1D417F034(a1, a2, a3, *v3, &qword_1EC7CB8E8, &qword_1D443A2A0, MEMORY[0x1E69B7158]);
  *v3 = result;
  return result;
}

void *sub_1D43CF31C(void *a1, int64_t a2, char a3)
{
  result = sub_1D417F034(a1, a2, a3, *v3, &qword_1EC7CBCD8, &qword_1D443B3C0, MEMORY[0x1E69B72C8]);
  *v3 = result;
  return result;
}

void *sub_1D43CF360(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D43CF7EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D43CF380(void *a1, int64_t a2, char a3)
{
  result = sub_1D417F034(a1, a2, a3, *v3, &qword_1EC7CBDC0, &qword_1D443B670, MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

void *sub_1D43CF3C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D43CF9DC(a1, a2, a3, *v3, &qword_1EC7CB898, &qword_1D443A268, &qword_1EC7C9B28, &unk_1D4438360);
  *v3 = result;
  return result;
}

char *sub_1D43CF404(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D43CFB24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D43CF424(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8E0, &qword_1D443A298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D43CF528(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8F8, &qword_1D443B6C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_1D43CF650(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBDD8, &unk_1D443B6B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB838, &qword_1D443A250);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D43CF7EC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBDC8, &qword_1D443B678);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD60, &unk_1D443B680) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD60, &unk_1D443B680) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1D43CF9DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1D43CFB24(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CE0, &qword_1D4436E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D43CFC28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9758, &qword_1D443B630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D43CFC90(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D441A8C4();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D418BC38(0, v3 & ~(v3 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v4 = sub_1D441A864();
    }

    else
    {
      v4 = sub_1D441A824();
      v5 = *(v2 + 36);
    }

    v39 = v4;
    v40 = v5;
    v41 = v35 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v32 = v2 + 56;
      v31 = v2 + 64;
      v33 = v3;
      while (v6 < v3)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v2;
        sub_1D4391400(v39, v40, v41, v2);
        v13 = v12;
        v14 = a2();
        v16 = v15;

        v17 = v37;
        v42 = v37;
        v19 = *(v37 + 16);
        v18 = *(v37 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D418BC38((v18 > 1), v19 + 1, 1);
          v17 = v42;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v37 = v17;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v2 = v11;
          if (sub_1D441A884())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v3 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBDE0, &qword_1D443B6C8);
          v7 = sub_1D441A094();
          sub_1D441A924();
          v7(v38, 0);
          if (v6 == v33)
          {
LABEL_32:
            sub_1D42D74FC(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v2 = v11;
          v21 = 1 << *(v11 + 32);
          if (v9 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v9 >> 6;
          v23 = *(v32 + 8 * (v9 >> 6));
          if (((v23 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v9 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v3 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v3 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1D42D74FC(v9, v36, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1D42D74FC(v9, v36, 0);
          }

LABEL_31:
          v30 = *(v11 + 36);
          v39 = v21;
          v40 = v30;
          v41 = 0;
          if (v6 == v3)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t _s7NotesUI29ActivityStreamItemConvertiblePAAE08activityE6IdPart3forSS0A6Shared08NoteEditC5EventV7ParentsO_tF_0(uint64_t a1)
{
  v2 = sub_1D4417494();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  v9 = sub_1D4417AC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == *MEMORY[0x1E69B7210])
  {
    (*(v10 + 96))(v12, v9);
    v14 = *v12;
    v34 = 0x28746E65726150;
    v35 = 0xE700000000000000;
    v15 = [v14 identifier];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D4419C54();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    MEMORY[0x1DA6D5730](v17, v19);

    MEMORY[0x1DA6D5730](41, 0xE100000000000000);

    return v34;
  }

  if (v13 == *MEMORY[0x1E69B7218])
  {
    (*(v10 + 96))(v12, v9);
    v20 = *v12;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98C8, &qword_1D4435E70);
    v22 = *(v21 + 64);
    v23 = *(v3 + 32);
    v23(v8, v12 + *(v21 + 48), v2);
    v23(v6, v12 + v22, v2);
    v24 = 0xE000000000000000;
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1D441A9C4();

    v34 = 0x28746E65726150;
    v35 = 0xE700000000000000;
    v25 = [v20 identifier];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1D4419C54();
      v24 = v28;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x1DA6D5730](v27, v24);

    MEMORY[0x1DA6D5730](8236, 0xE200000000000000);
    sub_1D43D05F4();
    v30 = sub_1D441AD44();
    MEMORY[0x1DA6D5730](v30);

    MEMORY[0x1DA6D5730](8236, 0xE200000000000000);
    v31 = sub_1D441AD44();
    MEMORY[0x1DA6D5730](v31);

    MEMORY[0x1DA6D5730](41, 0xE100000000000000);

    v29 = v34;
    v32 = *(v3 + 8);
    v32(v6, v2);
    v32(v8, v2);
    return v29;
  }

  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t _s7NotesUI29ActivityStreamItemConvertiblePAAE08activityE2Id3forSSSaySSG_tF_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768, &unk_1D443B660);
  sub_1D418BC58();
  sub_1D4419BB4();
  v0 = sub_1D4419C14();

  v1 = [v0 ic_sha256];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1D4419C54();

  return v2;
}

unint64_t sub_1D43D05F4()
{
  result = qword_1EC7C98D0;
  if (!qword_1EC7C98D0)
  {
    sub_1D4417494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C98D0);
  }

  return result;
}

id NoteObject.append(_:)(uint64_t a1)
{
  v2 = v1;
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D4417014();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D43191DC();
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_1D441A3B4();
  v11[0] = 0;
  LOBYTE(v2) = [v2 appendAttributedString:v8 error:v11];

  if (v2)
  {
    return v11[0];
  }

  v10 = v11[0];
  sub_1D4417104();

  return swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NoteObject.append(_:)(NSAttributedString a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if ([v1 appendAttributedString:a1.super.isa error:v4])
  {
    v2 = v4[0];
  }

  else
  {
    v3 = v4[0];
    sub_1D4417104();

    swift_willThrow();
  }
}

uint64_t sub_1D43D08BC()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityStream.Destinations(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D4417964();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = objc_allocWithZone(type metadata accessor for ActivityEventResolver());
  v10 = ActivityEventResolver.init(object:)(0);
  v12 = v10;
  if (!v10)
  {
    return 0;
  }

  sub_1D43D1164(v1, v4);
  if (swift_getEnumCaseMultiPayload() >= 3)
  {
  }

  (*(v6 + 32))(v8, v4, v5);
  v13 = ActivityEventResolver.resolve(_:)(v8);

  (*(v6 + 8))(v8, v5);
  if (!v13)
  {
    return 0;
  }

  return 1;
}

uint64_t _s7NotesUI14ActivityStreamV12DestinationsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  v2 = sub_1D4417964();
  v3 = *(v2 - 8);
  v59 = v2;
  v60 = v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v55 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - v12;
  v14 = type metadata accessor for ActivityStream.Destinations(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v55 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v55 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE08, &unk_1D443B720);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v55 - v28;
  v30 = &v55 + *(v27 + 56) - v28;
  sub_1D43D1164(v57, &v55 - v28);
  sub_1D43D1164(v58, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D43D1164(v29, v20);
      v33 = swift_getEnumCaseMultiPayload();
      v32 = v60;
      if (v33 != 2)
      {
        v17 = v20;
        goto LABEL_19;
      }

      v34 = v59;
      (*(v60 + 32))(v8, v30, v59);
      v35 = sub_1D4417924();
      v36 = *(v32 + 8);
      v36(v8, v34);
      v36(v20, v34);
LABEL_22:
      sub_1D43D1230(v29);
      return v35 & 1;
    }

    sub_1D43D1164(v29, v17);
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9778, &qword_1D4438B50) + 48);
    v41 = *&v17[v40];
    v42 = swift_getEnumCaseMultiPayload();
    v32 = v60;
    if (v42 != 3)
    {

      goto LABEL_19;
    }

    v43 = *&v30[v40];
    v44 = v56;
    v45 = v30;
    v46 = v59;
    (*(v60 + 32))(v56, v45, v59);
    v47 = sub_1D4417924();
    v48 = *(v32 + 8);
    v48(v17, v46);
    if (v47)
    {
      if (v41)
      {
        if (v43)
        {
          sub_1D43D128C();
          v49 = v41;
          v50 = sub_1D441A5E4();

          v48(v44, v46);
          if ((v50 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_26:
          sub_1D43D1230(v29);
          v35 = 1;
          return v35 & 1;
        }

        v48(v44, v46);
        v43 = v41;
      }

      else
      {
        v48(v44, v46);
        if (!v43)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v48(v44, v46);
    }

LABEL_29:
    sub_1D43D1230(v29);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D43D1164(v29, v23);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v17 = v23;
      v32 = v60;
      goto LABEL_19;
    }

    v38 = v59;
    v37 = v60;
    (*(v60 + 32))(v11, v30, v59);
    v35 = sub_1D4417924();
    v39 = *(v37 + 8);
    v39(v11, v38);
    v39(v23, v38);
    goto LABEL_22;
  }

  sub_1D43D1164(v29, v25);
  if (!swift_getEnumCaseMultiPayload())
  {
    v52 = v59;
    v51 = v60;
    (*(v60 + 32))(v13, v30, v59);
    v35 = sub_1D4417924();
    v53 = *(v51 + 8);
    v53(v13, v52);
    v53(v25, v52);
    goto LABEL_22;
  }

  v17 = v25;
  v32 = v60;
LABEL_19:
  (*(v32 + 8))(v17, v59);
  sub_1D43D11C8(v29);
LABEL_20:
  v35 = 0;
  return v35 & 1;
}

uint64_t type metadata accessor for ActivityStream.Destinations(uint64_t a1)
{
  result = qword_1EC7CBDE8;
  if (!qword_1EC7CBDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D43D1070(uint64_t a1)
{
  sub_1D4417964();
  if (v1 <= 0x3F)
  {
    sub_1D43D10E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D43D10E8(uint64_t a1)
{
  if (!qword_1EC7CBDF8)
  {
    sub_1D4417964();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBE00, &qword_1D443B708);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7CBDF8);
    }
  }
}

uint64_t sub_1D43D1164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStream.Destinations(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43D11C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE08, &unk_1D443B720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D43D1230(uint64_t a1)
{
  v2 = type metadata accessor for ActivityStream.Destinations(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D43D128C()
{
  result = qword_1EC7CBE10;
  if (!qword_1EC7CBE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7CBE10);
  }

  return result;
}

void sub_1D43D12D8()
{
  sub_1D4416E74();
  if (v2)
  {
    sub_1D43D14F0();
    if (swift_dynamicCast())
    {
      [v0 selectAll_];
    }
  }

  else
  {
    sub_1D418D074(v1);
  }
}

uint64_t sub_1D43D1364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE20, &qword_1D443B7A0);
  sub_1D441A4B4();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE28, &qword_1D443B7A8);
  result = (*(*(v6 - 8) + 16))(a2, a1, v6);
  v8 = (a2 + *(v5 + 56));
  *v8 = sub_1D43D12D8;
  v8[1] = 0;
  return result;
}

unint64_t sub_1D43D1470()
{
  result = qword_1EC7CBE18;
  if (!qword_1EC7CBE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBE18);
  }

  return result;
}

unint64_t sub_1D43D14F0()
{
  result = qword_1EC7CBE30;
  if (!qword_1EC7CBE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7CBE30);
  }

  return result;
}

unint64_t sub_1D43D153C()
{
  result = qword_1EC7CBE38;
  if (!qword_1EC7CBE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBE20, &qword_1D443B7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBE38);
  }

  return result;
}

uint64_t static Double.accessibilityElapsedAndTotalString(elapsed:total:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = sub_1D4419C14();
  v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];

  sub_1D4419C54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8, &qword_1D4437F20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D44364A0;
  v8 = [objc_allocWithZone(ICMediaTime) initWithSeconds:1 ignoreFractionalSeconds:a1];
  if (v8 && (v9 = v8, v10 = [v8 durationDescription], v9, v10))
  {
    v11 = sub_1D4419C54();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1D4320054();
  *(v7 + 64) = v15;
  *(v7 + 32) = v11;
  *(v7 + 40) = v13;
  v16 = [objc_allocWithZone(ICMediaTime) initWithSeconds:1 ignoreFractionalSeconds:a2];
  if (v16 && (v17 = v16, v18 = [v16 durationDescription], v17, v18))
  {
    v19 = sub_1D4419C54();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  *(v7 + 96) = v14;
  *(v7 + 104) = v15;
  *(v7 + 72) = v19;
  *(v7 + 80) = v21;
  v22 = sub_1D4419C24();

  return v22;
}

uint64_t static Double.accessibilityElapsedAndRemainingString(elapsed:remaining:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = sub_1D4419C14();
  v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];

  sub_1D4419C54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8, &qword_1D4437F20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D44364A0;
  v8 = [objc_allocWithZone(ICMediaTime) initWithSeconds:1 ignoreFractionalSeconds:a1];
  if (v8 && (v9 = v8, v10 = [v8 durationDescription], v9, v10))
  {
    v11 = sub_1D4419C54();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1D4320054();
  *(v7 + 64) = v15;
  *(v7 + 32) = v11;
  *(v7 + 40) = v13;
  v16 = [objc_allocWithZone(ICMediaTime) initWithSeconds:1 ignoreFractionalSeconds:a2];
  if (v16 && (v17 = v16, v18 = [v16 durationDescription], v17, v18))
  {
    v19 = sub_1D4419C54();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  *(v7 + 96) = v14;
  *(v7 + 104) = v15;
  *(v7 + 72) = v19;
  *(v7 + 80) = v21;
  v22 = sub_1D4419C24();

  return v22;
}

id sub_1D43D19C0(char a1, double a2)
{
  result = [objc_allocWithZone(ICMediaTime) initWithSeconds:a1 & 1 ignoreFractionalSeconds:a2];
  if (result)
  {
    v3 = result;
    v4 = [result durationDescription];

    if (v4)
    {
      v5 = sub_1D4419C54();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ICAuthenticationResult.stringRepresentation.getter(uint64_t a1)
{
  v1 = NSStringFromAuthenticationResult(a1);
  v2 = sub_1D4419C54();

  return v2;
}

uint64_t ICAuthenticationIntent.stringRepresentation.getter(uint64_t a1)
{
  v1 = NSStringFromAuthenticationIntent(a1);
  v2 = sub_1D4419C54();

  return v2;
}

uint64_t ICAuthenticationMechanism.stringRepresentation.getter(uint64_t a1)
{
  v1 = NSStringFromAuthenticationMechanism(a1);
  v2 = sub_1D4419C54();

  return v2;
}

uint64_t sub_1D43D1B68()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_1D43D1F68();
  *v3 = v0;
  v3[1] = sub_1D43D1C64;

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD000000000000010, 0x80000001D4453250, sub_1D43D1F60, v2, v4);
}

uint64_t sub_1D43D1C64()
{

  return MEMORY[0x1EEE6DFA0](sub_1D43D1D7C, 0, 0);
}

void sub_1D43D1D94(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE40, &unk_1D443B7C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1D43D2014;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_25;
  v11 = _Block_copy(aBlock);
  v12 = a2;

  [v12 reloadData_];
  _Block_release(v11);
}

unint64_t sub_1D43D1F68()
{
  result = qword_1EDE32690;
  if (!qword_1EDE32690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE32690);
  }

  return result;
}

uint64_t sub_1D43D1FB4(int a1, id a2)
{
  [a2 newSnapshotFromIndex];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE40, &unk_1D443B7C0);
  return sub_1D4419F24();
}

uint64_t sub_1D43D2014()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE40, &unk_1D443B7C0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D43D1FB4(v0 + v2, v3);
}

uint64_t StaticAuthenticationState.__allocating_init(isAuthenticated:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1D43D2138()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

void sub_1D43D2178(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D43D2288();
  sub_1D4417DE4();

  *a2 = *(v3 + 24);
}

uint64_t sub_1D43D2218()
{
  swift_getKeyPath();
  sub_1D43D2288();
  sub_1D4417DE4();

  return *(v0 + 24);
}

unint64_t sub_1D43D2288()
{
  result = qword_1EC7CBE50;
  if (!qword_1EC7CBE50)
  {
    type metadata accessor for ObjectAuthenticationObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBE50);
  }

  return result;
}

uint64_t type metadata accessor for ObjectAuthenticationObserver(uint64_t a1)
{
  result = qword_1EC7CBE58;
  if (!qword_1EC7CBE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D43D232C(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D43D2288();
    sub_1D4417DD4();
  }
}

uint64_t ObjectAuthenticationObserver.__allocating_init(object:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D43D2848(a1);

  return v2;
}

uint64_t ObjectAuthenticationObserver.init(object:)(void *a1)
{
  v2 = sub_1D43D2848(a1);

  return v2;
}

uint64_t ObjectAuthenticationObserver.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC7NotesUI28ObjectAuthenticationObserver___observationRegistrar;
  v3 = sub_1D4417E24();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t ObjectAuthenticationObserver.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC7NotesUI28ObjectAuthenticationObserver___observationRegistrar;
  v3 = sub_1D4417E24();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_1D43D2600()
{
  v1 = [*(v0 + 16) isAuthenticated];
  if (v1 == *(v0 + 24))
  {
    *(v0 + 24) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D43D2288();
    sub_1D4417DD4();
  }
}

uint64_t sub_1D43D27D8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1D43D2288();
  sub_1D4417DE4();

  return *(v1 + 24);
}

uint64_t sub_1D43D2848(void *a1)
{
  sub_1D4417E14();
  *(v1 + 16) = a1;
  *(v1 + 24) = [a1 isAuthenticated];
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v1 selector:sel_handleNotification_ name:*MEMORY[0x1E69B7470] object:0];

  v5 = [v3 defaultCenter];
  [v5 addObserver:v1 selector:sel_handleNotification_ name:*MEMORY[0x1E69B7478] object:0];

  return v1;
}

uint64_t sub_1D43D29C8(uint64_t a1)
{
  result = sub_1D4417E24();
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

uint64_t LockedNotesSwitchView.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1D43A5684(v8, &v7);
}

__n128 LockedNotesSwitchView.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t LockedNotesSwitchView.body.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE68, &qword_1D443B900);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v45 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39[-v7];
  v9 = v1[3];
  v76[2] = v1[2];
  v76[3] = v9;
  v76[4] = v1[4];
  v10 = v1[1];
  v76[0] = *v1;
  v76[1] = v10;
  v46 = v76;
  sub_1D4418CE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE70, &qword_1D443B908);
  sub_1D43D3268();
  v41 = v8;
  sub_1D44184B4();
  v11 = ICDebugModeEnabled();
  v12 = 0x4034000000000000;
  if (v11)
  {
    v12 = 0x4020000000000000;
  }

  *(&v42 + 1) = v12;
  *&v42 = sub_1D4418A34();
  v74 = 0;
  sub_1D43D33AC(v76, &v64);
  v55 = *&v65[112];
  v56 = *&v65[128];
  v57 = *&v65[144];
  v51 = *&v65[48];
  v52 = *&v65[64];
  v53 = *&v65[80];
  v54 = *&v65[96];
  v47 = v64;
  v48 = *v65;
  v49 = *&v65[16];
  v50 = *&v65[32];
  v58[8] = *&v65[112];
  v58[9] = *&v65[128];
  v58[10] = *&v65[144];
  v58[4] = *&v65[48];
  v58[5] = *&v65[64];
  v58[6] = *&v65[80];
  v58[7] = *&v65[96];
  v58[0] = v64;
  v58[1] = *v65;
  v58[2] = *&v65[16];
  v58[3] = *&v65[32];
  sub_1D417CF94(&v47, &v59, &qword_1EC7CBEA0, &qword_1D443B920);
  sub_1D41769C4(v58, &qword_1EC7CBEA0, &qword_1D443B920);
  *&v73[119] = v54;
  *&v73[135] = v55;
  *&v73[151] = v56;
  *&v73[167] = v57;
  *&v73[55] = v50;
  *&v73[71] = v51;
  *&v73[87] = v52;
  *&v73[103] = v53;
  *&v73[7] = v47;
  *&v73[23] = v48;
  *&v73[39] = v49;
  v13 = v74;
  v40 = v74;
  v14 = sub_1D4418D04();
  sub_1D4418494();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v75 = 0;
  v23 = v45;
  v24 = *(v44 + 16);
  v25 = v8;
  v26 = v43;
  v24(v45, v25, v43);
  v24(a1, v23, v26);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBEA8, &qword_1D443B928) + 48);
  *(&v60[8] + 1) = *&v73[128];
  *(&v60[9] + 1) = *&v73[144];
  *(&v60[10] + 1) = *&v73[160];
  *(&v60[4] + 1) = *&v73[64];
  *(&v60[5] + 1) = *&v73[80];
  *(&v60[6] + 1) = *&v73[96];
  *(&v60[7] + 1) = *&v73[112];
  *(&v60[1] + 1) = *&v73[16];
  *(&v60[2] + 1) = *&v73[32];
  v28 = &a1[v27];
  v29 = v42;
  v59 = v42;
  LOBYTE(v60[0]) = v13;
  *&v60[11] = *&v73[175];
  *(&v60[3] + 1) = *&v73[48];
  *(v60 + 1) = *v73;
  BYTE8(v60[11]) = v14;
  *&v61 = v16;
  *(&v61 + 1) = v18;
  *&v62 = v20;
  *(&v62 + 1) = v22;
  v63 = 0;
  v28[240] = 0;
  v30 = v60[8];
  *(v28 + 8) = v60[7];
  *(v28 + 9) = v30;
  v31 = v60[10];
  *(v28 + 10) = v60[9];
  *(v28 + 11) = v31;
  v32 = v60[4];
  *(v28 + 4) = v60[3];
  *(v28 + 5) = v32;
  v33 = v60[6];
  *(v28 + 6) = v60[5];
  *(v28 + 7) = v33;
  v34 = v60[0];
  *v28 = v59;
  *(v28 + 1) = v34;
  v35 = v60[2];
  *(v28 + 2) = v60[1];
  *(v28 + 3) = v35;
  v36 = v61;
  *(v28 + 12) = v60[11];
  *(v28 + 13) = v36;
  *(v28 + 14) = v62;
  sub_1D417CF94(&v59, &v64, &qword_1EC7CBEB0, &qword_1D443B930);
  v37 = *(v44 + 8);
  v37(v41, v26);
  *&v65[129] = *&v73[128];
  *&v65[145] = *&v73[144];
  *v66 = *&v73[160];
  *&v65[65] = *&v73[64];
  *&v65[81] = *&v73[80];
  *&v65[97] = *&v73[96];
  *&v65[113] = *&v73[112];
  *&v65[1] = *v73;
  *&v65[17] = *&v73[16];
  *&v65[33] = *&v73[32];
  v64 = v29;
  v65[0] = v40;
  *&v66[15] = *&v73[175];
  *&v65[49] = *&v73[48];
  v67 = v14;
  v68 = v16;
  v69 = v18;
  v70 = v20;
  v71 = v22;
  v72 = 0;
  sub_1D41769C4(&v64, &qword_1EC7CBEB0, &qword_1D443B930);
  return (v37)(v45, v26);
}

uint64_t sub_1D43D3058@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE98, &qword_1D443B918);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE88, &qword_1D443B910);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  *v6 = sub_1D4418A34();
  *(v6 + 1) = 0x402C000000000000;
  v6[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBFB0, &qword_1D443BF70);
  sub_1D43D3530(a1, &v6[*(v11 + 44)]);
  LOBYTE(a1) = sub_1D4418CF4();
  [objc_opt_self() deviceIsMac];
  sub_1D4418494();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1D42D742C(v6, v10, &qword_1EC7CBE98, &qword_1D443B918);
  v20 = &v10[*(v8 + 44)];
  *v20 = a1;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = sub_1D4418D04();
  sub_1D4418494();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1D42D742C(v10, a2, &qword_1EC7CBE88, &qword_1D443B910);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE70, &qword_1D443B908);
  v31 = a2 + *(result + 36);
  *v31 = v21;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

unint64_t sub_1D43D3268()
{
  result = qword_1EC7CBE78;
  if (!qword_1EC7CBE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBE70, &qword_1D443B908);
    sub_1D43D32F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBE78);
  }

  return result;
}

unint64_t sub_1D43D32F4()
{
  result = qword_1EC7CBE80;
  if (!qword_1EC7CBE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBE88, &qword_1D443B910);
    sub_1D417645C(&qword_1EC7CBE90, &qword_1EC7CBE98, &qword_1D443B918, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBE80);
  }

  return result;
}

uint64_t sub_1D43D33AC@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[3];
  v34 = a1[2];
  v35 = v5;
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[1];
  v32 = *a1;
  v33 = v8;
  v39 = v34;
  v40 = v6;
  v41 = a1[4];
  v38 = v4;
  v36 = v7;
  v37 = v32;
  sub_1D43D6BF0(a1, v45);
  sub_1D43D6BF0(a1, v45);
  sub_1D4419284();
  v9 = v45[0];
  v10 = *(&v45[0] + 1);
  v42[2] = v34;
  v42[3] = v40;
  v42[4] = v41;
  v42[0] = v32;
  v42[1] = v38;
  v23 = v34;
  v24 = v40;
  v22[6] = v32;
  v22[7] = v38;
  v12 = v35;
  v11 = v36;
  v43[3] = v35;
  v43[4] = v36;
  v43[1] = v33;
  v43[2] = v34;
  v14 = v33;
  v13 = v34;
  v15 = v32;
  v43[0] = v32;
  LOBYTE(v44) = v45[0];
  *(&v44 + 1) = *(&v45[0] + 1);
  v25 = v41;
  v26 = v32;
  v30 = v36;
  v31 = v44;
  v28 = v34;
  v29 = v35;
  v27 = v33;
  v16 = v38;
  *a2 = v32;
  a2[1] = v16;
  v17 = v26;
  a2[4] = v25;
  a2[5] = v17;
  v18 = v24;
  a2[2] = v23;
  a2[3] = v18;
  v19 = v31;
  a2[9] = v30;
  a2[10] = v19;
  v20 = v29;
  a2[7] = v28;
  a2[8] = v20;
  a2[6] = v27;
  v45[2] = v13;
  v45[3] = v12;
  v45[4] = v11;
  v45[0] = v15;
  v45[1] = v14;
  v46 = v9;
  v47 = v10;
  sub_1D43D62A0(v42, v22);
  sub_1D43D6260(v43, v22);
  sub_1D43D6C28(v45);
  v22[2] = v39;
  v22[3] = v40;
  v22[4] = v41;
  v22[0] = v37;
  v22[1] = v38;
  return sub_1D43D6C58(v22);
}

double sub_1D43D3530@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a1;
  v70 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBFB8, &qword_1D443BF78);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v71 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v60 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v60 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2D0, &qword_1D443BF80);
  v68 = *(v69 - 8);
  v9 = MEMORY[0x1EEE9AC00](v69);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v60 - v11;
  v64 = objc_opt_self();
  v12 = [v64 deviceIsMac];
  v13 = objc_opt_self();
  v14 = sub_1D4419C14();
  v15 = [v13 localizedFrameworkStringForKey:v14 value:0 table:0 allowSiri:1];

  v16 = sub_1D4419C54();
  v18 = v17;

  *&v77[0] = v16;
  *(&v77[0] + 1) = v18;
  sub_1D42CC920();
  v19 = sub_1D4418F84();
  v21 = v20;
  v23 = v22;
  if (ICDebugModeEnabled())
  {
    sub_1D4418E14();
  }

  else
  {
    sub_1D4418D74();
  }

  v63 = 0x80000001D444DD30;
  v24 = 0x4038000000000000;
  if (v12)
  {
    v24 = 0x4024000000000000;
  }

  v62 = v24;
  v25 = sub_1D4418F44();
  v27 = v26;
  v29 = v28;

  sub_1D430E564(v19, v21, v23 & 1);

  v30 = sub_1D4418F34();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1D430E564(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  v79 = v34 & 1;
  *&v73 = v30;
  *(&v73 + 1) = v32;
  LOBYTE(v74) = v34 & 1;
  *(&v74 + 1) = v36;
  LOWORD(v75) = 256;
  *(&v75 + 1) = KeyPath;
  v76 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2D8, &unk_1D4437F00);
  sub_1D431FF18();
  v38 = v72;
  sub_1D4419084();
  v77[0] = v73;
  v77[1] = v74;
  v77[2] = v75;
  v78 = v76;
  sub_1D41769C4(v77, &qword_1EC7CA2D8, &unk_1D4437F00);
  v39 = v64;
  v40 = [v64 deviceIsMac];
  v41 = 0x403E000000000000;
  if (!v40)
  {
    v41 = 0x403A000000000000;
  }

  v61 = v41;
  v42 = sub_1D4419374();
  v44 = v43;
  v45 = [v39 deviceIsMac];
  v46 = 0x4040000000000000;
  *v7 = v42;
  *(v7 + 1) = v44;
  if (!v45)
  {
    v46 = 0x403A000000000000;
  }

  *(v7 + 2) = 0x4024000000000000;
  v7[24] = 0;
  *(v7 + 4) = v46;
  v7[40] = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBFC0, &qword_1D443BFB8);
  sub_1D43D3B1C(v65, &v7[*(v47 + 44)]);
  v48 = v67;
  sub_1D43D6C88(v7, v67);
  v49 = v68;
  v50 = *(v68 + 16);
  v51 = v66;
  v52 = v69;
  v50(v66, v38, v69);
  v53 = v71;
  sub_1D417CF94(v48, v71, &qword_1EC7CBFB8, &qword_1D443BF78);
  v54 = v70;
  *v70 = v62;
  *(v54 + 8) = 0;
  v54[2] = 0xD000000000000010;
  v54[3] = v63;
  v54[4] = 0x4054000000000000;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBFC8, &qword_1D443BFC0);
  v50(v54 + v55[16], v51, v52);
  v56 = v54 + v55[20];
  *v56 = v61;
  v56[8] = 0;
  sub_1D417CF94(v53, v54 + v55[24], &qword_1EC7CBFB8, &qword_1D443BF78);
  v57 = v54 + v55[28];
  *v57 = 0x403E000000000000;
  v57[8] = 0;

  sub_1D41769C4(v48, &qword_1EC7CBFB8, &qword_1D443BF78);
  v58 = *(v49 + 8);
  v58(v72, v52);
  sub_1D41769C4(v53, &qword_1EC7CBFB8, &qword_1D443BF78);
  v58(v51, v52);

  return result;
}

uint64_t sub_1D43D3B1C@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBFD0, &unk_1D443BFC8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = a1[1];
  v12 = a1[3];
  v26 = a1[2];
  v27 = v12;
  v13 = a1[3];
  v28 = a1[4];
  v14 = *a1;
  v15 = *a1;
  v25 = a1[1];
  v24 = v14;
  v32 = v26;
  v33 = v13;
  v34 = a1[4];
  v30 = v15;
  v31 = v11;
  *&v29[0] = sub_1D43D3E24();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBFD8, &qword_1D443BFF0);
  sub_1D417645C(&qword_1EC7CBFE0, &qword_1EC7CBFD8, &qword_1D443BFF0, MEMORY[0x1E69E6338]);
  sub_1D43D6CF8();
  sub_1D43D6D4C();
  sub_1D4419314();
  v16 = *(v5 + 16);
  v16(v8, v10, v4);
  v16(a2, v8, v4);
  v17 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBFF8, &qword_1D443BFF8) + 48)];
  v18 = v28;
  v19 = v27;
  v29[3] = v27;
  v29[4] = v28;
  v20 = v25;
  v21 = v24;
  v29[1] = v25;
  v29[2] = v26;
  v29[0] = v24;
  *(v17 + 2) = v26;
  *(v17 + 3) = v19;
  *(v17 + 4) = v18;
  *v17 = v21;
  *(v17 + 1) = v20;
  sub_1D43D6BF0(a1, &v30);
  sub_1D43D682C(v29, &v30);
  v22 = *(v5 + 8);
  v22(v10, v4);
  v32 = v26;
  v33 = v27;
  v34 = v28;
  v30 = v24;
  v31 = v25;
  sub_1D43D6DA0(&v30);
  return (v22)(v8, v4);
}

uint64_t sub_1D43D3E24()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC000, &unk_1D443C000);
  v2 = swift_allocObject();
  if (v1 == 3)
  {
    *(v2 + 16) = xmmword_1D44364A0;
    *(v2 + 32) = sub_1D43D588C();
    *(v2 + 40) = v3;
    *(v2 + 48) = v4;
    *(v2 + 56) = v5;
    *(v2 + 64) = sub_1D43D5FAC();
    *(v2 + 72) = v6;
    *(v2 + 80) = v7;
    *(v2 + 88) = v8;
  }

  else
  {
    *(v2 + 16) = xmmword_1D4435D30;
    *(v2 + 32) = sub_1D43D588C();
    *(v2 + 40) = v9;
    *(v2 + 48) = v10;
    *(v2 + 56) = v11;
    *(v2 + 64) = sub_1D43D5ECC();
    *(v2 + 72) = v12;
    *(v2 + 80) = v13;
    *(v2 + 88) = v14;
    *(v2 + 96) = sub_1D43D5FAC();
    *(v2 + 104) = v15;
    *(v2 + 112) = v16;
    *(v2 + 120) = v17;
  }

  return v2;
}

uint64_t sub_1D43D3FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  *(&v43 + 1) = a2;
  *&v43 = a1;
  v49 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF68, &unk_1D443BED0);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E18, &qword_1D443C230);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF70, &qword_1D443BEE0);
  v13 = v12 - 8;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;

  v18 = sub_1D4419224();
  v19 = sub_1D4419154();
  KeyPath = swift_getKeyPath();
  v21 = sub_1D4418DC4();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = sub_1D4418DF4();
  sub_1D41769C4(v11, &qword_1EC7C9E18, &qword_1D443C230);
  v23 = swift_getKeyPath();
  *&v58 = v18;
  *(&v58 + 1) = KeyPath;
  *&v59 = v19;
  *(&v59 + 1) = v23;
  *&v60 = v22;
  sub_1D4418DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF78, &qword_1D443BF48);
  sub_1D43D68AC();
  sub_1D4418FB4();

  *&v17[*(v13 + 44)] = sub_1D4418A34();
  v58 = v43;
  sub_1D42CC920();

  v24 = sub_1D4418F84();
  v26 = v25;
  LOBYTE(v18) = v27;
  v29 = v28;
  v30 = sub_1D4418D84();
  v31 = swift_getKeyPath();
  v54 = v18 & 1;
  *&v50 = v24;
  *(&v50 + 1) = v26;
  LOBYTE(v51) = v18 & 1;
  *(&v51 + 1) = *v57;
  DWORD1(v51) = *&v57[3];
  *(&v51 + 1) = v29;
  LOWORD(v52) = 256;
  *(&v52 + 2) = v55;
  WORD3(v52) = v56;
  *(&v52 + 1) = v31;
  v53 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF98, &qword_1D443BF58);
  sub_1D43D6A1C();
  v32 = v45;
  sub_1D4419084();
  v58 = v50;
  v59 = v51;
  v60 = v52;
  v61 = v53;
  sub_1D41769C4(&v58, &qword_1EC7CBF98, &qword_1D443BF58);
  v33 = v44;
  sub_1D419D8AC(v17, v44);
  v35 = v46;
  v34 = v47;
  v36 = *(v47 + 16);
  v37 = v48;
  v36(v46, v32, v48);
  v38 = v49;
  sub_1D419D8AC(v33, v49);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBFA8, &qword_1D443BF68);
  v36((v38 + *(v39 + 48)), v35, v37);
  v40 = *(v34 + 8);
  v40(v32, v37);
  sub_1D41769C4(v17, &qword_1EC7CBF70, &qword_1D443BEE0);
  v40(v35, v37);
  return sub_1D41769C4(v33, &qword_1EC7CBF70, &qword_1D443BEE0);
}

uint64_t sub_1D43D44A4@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *a2 = sub_1D4418924();
  *(a2 + 8) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF60, &qword_1D443BEC8);
  return sub_1D43D3FC4(v4, v5, a2 + *(v6 + 36));
}

uint64_t sub_1D43D4518@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = sub_1D4418674();
  v4 = *(v3 - 8);
  v29 = v3;
  v30 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2C8, &unk_1D4437EC0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF50, &qword_1D443BEB8);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  v18 = swift_allocObject();
  v19 = a1[3];
  v18[3] = a1[2];
  v18[4] = v19;
  v18[5] = a1[4];
  v20 = a1[1];
  v18[1] = *a1;
  v18[2] = v20;
  v32 = a1;
  sub_1D43D682C(a1, v33);
  sub_1D44192C4();
  sub_1D4418664();
  sub_1D417645C(&qword_1EDE32B00, &qword_1EC7CA2C8, &unk_1D4437EC0, MEMORY[0x1E697D680]);
  sub_1D43D6864(&qword_1EDE32B80, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v21 = v29;
  sub_1D4418FC4();
  (*(v30 + 8))(v6, v21);
  (*(v8 + 8))(v10, v7);
  v22 = *(v12 + 16);
  v22(v15, v17, v11);
  v23 = v31;
  *v31 = 0;
  *(v23 + 8) = 1;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF58, &qword_1D443BEC0);
  v22(&v24[*(v25 + 48)], v15, v11);
  v26 = *(v12 + 8);
  v26(v17, v11);
  return (v26)(v15, v11);
}

uint64_t sub_1D43D48D8@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v8[2] = v2[2];
  v8[3] = v4;
  v8[4] = v2[4];
  v5 = v2[1];
  v8[0] = *v2;
  v8[1] = v5;
  *a2 = sub_1D4418924();
  *(a2 + 8) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF48, &unk_1D443BEA8);
  return sub_1D43D4518(v8, (a2 + *(v6 + 36)));
}

uint64_t sub_1D43D4948@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v33 = sub_1D4418654();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D4418CB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBEF0, &qword_1D443BDD0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBEF8, &qword_1D443BDD8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v30 - v11;
  v13 = v1[3];
  v36[2] = v1[2];
  v36[3] = v13;
  v36[4] = v1[4];
  v14 = v1[1];
  v36[0] = *v1;
  v36[1] = v14;
  v15 = swift_allocObject();
  v16 = v1[3];
  v15[3] = v1[2];
  v15[4] = v16;
  v15[5] = v1[4];
  v17 = v1[1];
  v15[1] = *v1;
  v15[2] = v17;
  v34 = v36;
  sub_1D43D62A0(v36, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF00, &qword_1D443BDE0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBF08, &qword_1D443BDE8);
  v19 = sub_1D43D62D8();
  v35[0] = v18;
  v35[1] = v19;
  swift_getOpaqueTypeConformance2();
  sub_1D44192C4();
  v20 = sub_1D4419154();
  KeyPath = swift_getKeyPath();
  v35[0] = v20;
  v22 = sub_1D4418564();
  v23 = &v10[*(v8 + 36)];
  *v23 = KeyPath;
  v23[1] = v22;
  sub_1D4418CA4();
  sub_1D43D63DC();
  sub_1D43D6864(&qword_1EDE32B58, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  sub_1D4418FC4();
  (*(v5 + 8))(v7, v4);
  sub_1D41769C4(v10, &qword_1EC7CBEF0, &qword_1D443BDD0);
  v24 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF30, &unk_1D443BE30) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA348, &qword_1D4437FA0);
  sub_1D44186A4();
  *v24 = swift_getKeyPath();
  v25 = &v12[*(v30 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA358, &qword_1D4437FE0) + 28);
  v27 = *MEMORY[0x1E697DC10];
  v28 = sub_1D44184E4();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  sub_1D4418644();
  sub_1D43D6630();
  sub_1D4419064();
  (*(v31 + 8))(v3, v33);
  return sub_1D41769C4(v12, &qword_1EC7CBEF8, &qword_1D443BDD8);
}

uint64_t sub_1D43D4E34(__int128 *a1)
{
  sub_1D431E278();
  sub_1D42CC920();
  v1 = sub_1D4418F84();
  v3 = v2;
  v5 = v4;
  sub_1D44191A4();
  v6 = sub_1D4418EF4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1D430E564(v1, v3, v5 & 1);

  sub_1D4419364();
  sub_1D4418694();
  v25 = v10 & 1;
  *&v14 = v6;
  *(&v14 + 1) = v8;
  LOBYTE(v15) = v10 & 1;
  *(&v15 + 1) = v12;
  sub_1D4418DD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF08, &qword_1D443BDE8);
  sub_1D43D62D8();
  sub_1D4418FB4();
  v23[6] = v20;
  v23[7] = v21;
  v23[8] = v22;
  v24 = 256;
  v23[2] = v16;
  v23[3] = v17;
  v23[4] = v18;
  v23[5] = v19;
  v23[0] = v14;
  v23[1] = v15;
  return sub_1D41769C4(v23, &qword_1EC7CBF08, &qword_1D443BDE8);
}

__n128 sub_1D43D5018@<Q0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1D4419C14();
  v4 = [v2 localizedFrameworkStringForKey:v3 value:0 table:0 allowSiri:1];

  v5 = sub_1D4419C54();
  v7 = v6;

  *&v15 = v5;
  *(&v15 + 1) = v7;
  sub_1D42CC920();
  v8 = sub_1D4418F84();
  v10 = v9;
  LOBYTE(v7) = v11;
  v13 = v12;
  sub_1D4419364();
  sub_1D4418694();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v13;
  *(a1 + 96) = v19;
  *(a1 + 112) = v20;
  *(a1 + 128) = v21;
  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  result = v18;
  *(a1 + 64) = v17;
  *(a1 + 80) = v18;
  return result;
}

uint64_t sub_1D43D5170@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = sub_1D4418654();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBED0, &qword_1D443BDC0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = v1[3];
  v20[2] = v1[2];
  v20[3] = v10;
  v11 = v1[5];
  v20[4] = v1[4];
  v20[5] = v11;
  v12 = v1[1];
  v20[0] = *v1;
  v20[1] = v12;
  v13 = swift_allocObject();
  v14 = v1[3];
  v13[3] = v1[2];
  v13[4] = v14;
  v15 = v1[5];
  v13[5] = v1[4];
  v13[6] = v15;
  v16 = v1[1];
  v13[1] = *v1;
  v13[2] = v16;
  v18[4] = v20;
  sub_1D43D6260(v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBED8, &qword_1D443BDC8);
  sub_1D43D6AF4(&qword_1EC7CBEE0, &qword_1EC7CBED8, &qword_1D443BDC8);
  sub_1D44192C4();
  sub_1D4418634();
  sub_1D417645C(&qword_1EC7CBEE8, &qword_1EC7CBED0, &qword_1D443BDC0, MEMORY[0x1E697D680]);
  sub_1D4419064();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t LockedNotesSwitchView.Configuration.account.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 42);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 42) = v7;
}

__n128 LockedNotesSwitchView.Configuration.account.setter(int *a1)
{
  v2 = *a1;
  v8 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a1 + 42);

  *v1 = v2;
  result = v8;
  *(v1 + 8) = v8;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 42) = v6;
  return result;
}

uint64_t sub_1D43D5514@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D43D6BC4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1D417C7B4(v3, v4);
}

uint64_t sub_1D43D5594(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D43D6B8C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  sub_1D417C7B4(v3, v4);
  result = sub_1D417BCA0(v7, v8);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t LockedNotesSwitchView.Configuration.didSelectMode.getter()
{
  v1 = *(v0 + 48);
  sub_1D417C7B4(v1, *(v0 + 56));
  return v1;
}

uint64_t LockedNotesSwitchView.Configuration.didSelectMode.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D417BCA0(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_1D43D56BC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D418D6E0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1D417C7B4(v3, v4);
}

uint64_t sub_1D43D573C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D43D6B64;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  sub_1D417C7B4(v3, v4);
  result = sub_1D417BCA0(v7, v8);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t LockedNotesSwitchView.Configuration.didPressLearnMore.getter()
{
  v1 = *(v0 + 64);
  sub_1D417C7B4(v1, *(v0 + 72));
  return v1;
}

uint64_t LockedNotesSwitchView.Configuration.didPressLearnMore.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D417BCA0(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_1D43D588C()
{
  if (*v0 == 1)
  {
    v10 = objc_opt_self();
    if ([v10 biometricsType] != 4 && objc_msgSend(v10, sel_biometricsType) != 2)
    {
      [v10 biometricsType];
    }

    goto LABEL_15;
  }

  if (*v0 != 3)
  {
LABEL_15:
    v17 = objc_opt_self();
    v18 = sub_1D4419C14();
    v19 = [v17 localizedFrameworkStringForKey:v18 value:0 table:0 allowSiri:1];

    v9 = sub_1D4419C54();
    return v9;
  }

  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = objc_opt_self();
  if ([v3 biometricsType] == 4)
  {
    v4 = objc_opt_self();
    v5 = sub_1D4419C14();
    v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];
  }

  else
  {
    if ([v3 biometricsType] == 2)
    {
      v11 = objc_opt_self();
      v12 = sub_1D4419C14();
      v13 = [v11 localizedFrameworkStringForKey:v12 value:0 table:0 allowSiri:1];

      sub_1D4419C54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8, &qword_1D4437F20);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D4435D40;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1D4320054();
      *(v14 + 32) = v2;
      *(v14 + 40) = v1;

      v9 = sub_1D4419C24();

      return v9;
    }

    v15 = [v3 biometricsType];
    v16 = objc_opt_self();
    if (v15 != 1)
    {
      v21 = sub_1D4419C14();
      v22 = [v16 localizedFrameworkStringForKey:v21 value:0 table:0 allowSiri:1];

      sub_1D4419C54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8, &qword_1D4437F20);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D4435D40;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1D4320054();
      *(v23 + 32) = v2;
      *(v23 + 40) = v1;

      v9 = sub_1D4419C24();

      return v9;
    }

    v5 = sub_1D4419C14();
    v6 = [v16 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];
  }

  v7 = v6;

  sub_1D4419C54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8, &qword_1D4437F20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D4435D40;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D4320054();
  *(v8 + 32) = v2;
  *(v8 + 40) = v1;

  v9 = sub_1D4419C24();

  return v9;
}

uint64_t sub_1D43D5ECC()
{
  ICInternalSettingsIsAppleAccountBrandingEnabled();
  v0 = objc_opt_self();
  v1 = sub_1D4419C14();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_1D4419C54();
  return v3;
}

uint64_t sub_1D43D5FAC()
{
  v0 = objc_opt_self();
  v1 = sub_1D4419C14();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_1D4419C54();
  return v3;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D43D60A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D43D60E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D43D6194()
{
  result = qword_1EC7CBEC8;
  if (!qword_1EC7CBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBEC8);
  }

  return result;
}

unint64_t sub_1D43D62D8()
{
  result = qword_1EC7CBF10;
  if (!qword_1EC7CBF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBF08, &qword_1D443BDE8);
    sub_1D43D6AF4(&qword_1EC7CBEE0, &qword_1EC7CBED8, &qword_1D443BDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBF10);
  }

  return result;
}

uint64_t sub_1D43D6384@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1DA6D4230]();
  *a1 = result;
  return result;
}

unint64_t sub_1D43D63DC()
{
  result = qword_1EC7CBF18;
  if (!qword_1EC7CBF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBEF0, &qword_1D443BDD0);
    sub_1D417645C(&qword_1EC7CBF20, &qword_1EC7CBF28, &unk_1D443BE20, MEMORY[0x1E697D680]);
    sub_1D417645C(&qword_1EDE32B48, &qword_1EC7CA338, &qword_1D4437F90, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBF18);
  }

  return result;
}

uint64_t sub_1D43D6560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1D43D6630()
{
  result = qword_1EC7CBF38;
  if (!qword_1EC7CBF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBEF8, &qword_1D443BDD8);
    sub_1D43D66E8();
    sub_1D417645C(&qword_1EDE32B50, &qword_1EC7CA358, &qword_1D4437FE0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBF38);
  }

  return result;
}

unint64_t sub_1D43D66E8()
{
  result = qword_1EC7CBF40;
  if (!qword_1EC7CBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBF30, &unk_1D443BE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBEF0, &qword_1D443BDD0);
    sub_1D4418CB4();
    sub_1D43D63DC();
    sub_1D43D6864(&qword_1EDE32B58, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1D417645C(&qword_1EDE32B38, &qword_1EC7CA348, &qword_1D4437FA0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBF40);
  }

  return result;
}

uint64_t sub_1D43D6864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D43D68AC()
{
  result = qword_1EC7CBF80;
  if (!qword_1EC7CBF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBF78, &qword_1D443BF48);
    sub_1D43D6964();
    sub_1D417645C(&qword_1EDE32B20, &qword_1EC7CA380, &unk_1D4438720, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBF80);
  }

  return result;
}

unint64_t sub_1D43D6964()
{
  result = qword_1EC7CBF88;
  if (!qword_1EC7CBF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBF90, &qword_1D443BF50);
    sub_1D417645C(&qword_1EDE32B18, &qword_1EC7CA328, &qword_1D4437F50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBF88);
  }

  return result;
}

unint64_t sub_1D43D6A1C()
{
  result = qword_1EC7CBFA0;
  if (!qword_1EC7CBFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBF98, &qword_1D443BF58);
    sub_1D43D6AF4(&qword_1EDE32C20, &qword_1EC7CA2E0, &qword_1D443BF60);
    sub_1D417645C(&qword_1EDE32B20, &qword_1EC7CA380, &unk_1D4438720, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBFA0);
  }

  return result;
}

uint64_t sub_1D43D6AF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D43D6B8C(__int16 a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1D43D6C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBFB8, &qword_1D443BF78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D43D6CF8()
{
  result = qword_1EC7CBFE8;
  if (!qword_1EC7CBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBFE8);
  }

  return result;
}

unint64_t sub_1D43D6D4C()
{
  result = qword_1EC7CBFF0;
  if (!qword_1EC7CBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBFF0);
  }

  return result;
}

uint64_t ActivityStreamPanelView.controller.getter()
{
  sub_1D43D7048();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D43D6DF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for ActivityStreamPanelView(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  *a3 = sub_1D43D7048();

  return swift_unknownObjectRetain();
}

uint64_t ActivityStreamPanelView.controller.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t ActivityStreamPanelView.init(controller:)@<X0>(uint64_t *a4@<X8>)
{
  result = sub_1D44185C4();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t ActivityStreamPanelView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  v8(v7, v6);
  swift_unknownObjectRelease();
  v9 = swift_allocObject();
  *(v9 + 2) = v7;
  *(v9 + 3) = v6;
  *(v9 + 4) = v5;
  v10 = swift_allocObject();
  *(v10 + 2) = v7;
  *(v10 + 3) = v6;
  *(v10 + 4) = v5;
  v11 = swift_allocObject();
  *(v11 + 2) = v7;
  *(v11 + 3) = v6;
  *(v11 + 4) = v5;
  v12 = type metadata accessor for ActivityStreamView(0);
  v13 = (a3 + v12[5]);
  *v13 = sub_1D43D71BC;
  v13[1] = v9;
  v14 = (a3 + v12[6]);
  *v14 = sub_1D43D7184;
  v14[1] = v10;
  v15 = (a3 + v12[7]);
  *v15 = sub_1D43D714C;
  v15[1] = v11;
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1D43D7094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D43D70F4()
{
  result = qword_1EC7CC098;
  if (!qword_1EC7CC098)
  {
    type metadata accessor for ActivityStreamView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC098);
  }

  return result;
}

void ICActivityStreamCoordinating.show(_:resolver:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v30 = a1;
  v4 = type metadata accessor for ActivityStream.Destinations(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = sub_1D4417964();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2(v12);
  if (!v2)
  {
    v16 = v15;
    v27 = v7;
    v28 = 0;
    v17 = v30;
    sub_1D43D1164(v30, v9);
    if (swift_getEnumCaseMultiPayload() >= 3)
    {
    }

    (*(v11 + 32))(v14, v9, v10);
    v18 = ActivityEventResolver.resolve(_:)(v14);
    v19 = *(v11 + 8);
    v19(v14, v10);
    if (!v18)
    {

      return;
    }

    v20 = v27;
    sub_1D43D1164(v17, v27);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      v22 = v29;
      if (EnumCaseMultiPayload)
      {
        v23 = [v18 objectID];
        [v22 showRecentUpdatesForNoteWithObjectID_];
      }

      else
      {
        v23 = [v18 objectID];
        [v22 showObjectWithObjectID_];
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v23 = [v18 objectID];
      [v29 showActivityStreamForObjectWithObjectID_];
LABEL_13:

      sub_1D43D1230(v20);
      return;
    }

    v24 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9778, &qword_1D4438B50) + 48));
    v25 = [v18 objectID];
    [v29 showAttributionHighlightsForNoteWithObjectID:v25 selection:v24];

    v19(v20, v10);
  }
}

unint64_t sub_1D43D75AC()
{
  result = qword_1EC7CC0A0;
  if (!qword_1EC7CC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC0A0);
  }

  return result;
}

uint64_t sub_1D43D7600()
{
  v188 = *MEMORY[0x1E69E9840];
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0A8, &qword_1D443C188);
  v0 = MEMORY[0x1EEE9AC00](v173);
  v155 = v146 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v166 = v146 - v3;
  MEMORY[0x1EEE9AC00](v2);
  v167 = (v146 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0B0, &qword_1D443C190);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v156 = v146 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v146 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v146 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v146 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v146 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v146 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v169 = v146 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v165 = v146 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v170 = v146 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v172 = v146 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v174 = v146 - v34;
  v176 = sub_1D44198D4();
  v35 = *(v176 - 8);
  v36 = MEMORY[0x1EEE9AC00](v176);
  v182 = v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v183 = v146 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v175 = v146 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = v146 - v42;
  sub_1D4419864();
  v44 = sub_1D4419724();

  if (v44 >> 62)
  {
    goto LABEL_99;
  }

  for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D441A8C4())
  {
    v171 = v16;
    v186 = v35;
    v168 = v25;
    v150 = v8;
    v157 = v13;
    v154 = v19;
    v153 = v22;
    if (i)
    {
      v185 = v44;
      v187 = MEMORY[0x1E69E7CC0];
      sub_1D43CF1AC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_101;
      }

      v46 = 0;
      v19 = v187;
      v47 = v185 & 0xC000000000000001;
      v16 = v35 + 32;
      v8 = v176;
      do
      {
        if (v47)
        {
          MEMORY[0x1DA6D6410](v46);
        }

        else
        {
        }

        sub_1D4419824();

        v187 = v19;
        v13 = *(v19 + 2);
        v48 = *(v19 + 3);
        if (v13 >= v48 >> 1)
        {
          sub_1D43CF1AC((v48 > 1), v13 + 1, 1);
          v19 = v187;
        }

        ++v46;
        *(v19 + 2) = v13 + 1;
        (*(v186 + 4))(&v19[((v186[80] + 32) & ~v186[80]) + *(v186 + 9) * v13], v43, v8);
      }

      while (i != v46);
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
      v8 = v176;
    }

    v35 = v175;
    v181 = *(v19 + 2);
    if (!v181)
    {
      break;
    }

    v22 = 0;
    v180 = (v186 + 16);
    LODWORD(v179) = *MEMORY[0x1E6992140];
    v25 = v186 + 8;
    v177 = (v186 + 32);
    v178 = (v186 + 104);
    v44 = MEMORY[0x1E69E7CC0];
    v43 = v186;
    while (v22 < *(v19 + 2))
    {
      v16 = v44;
      v185 = (v43[80] + 32) & ~v43[80];
      v184 = *(v43 + 9);
      (*(v43 + 2))(v35, &v19[v185 + v184 * v22], v8);
      v13 = v183;
      (*(v43 + 13))(v183, v179, v8);
      sub_1D43DA054();
      v49 = sub_1D4419BE4();
      v50 = *(v43 + 1);
      v50(v13, v8);
      if (v49)
      {
        v50(v35, v8);
        v44 = v16;
      }

      else
      {
        v13 = *v177;
        (*v177)(v182, v35, v8);
        v44 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v187 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D43CF1AC(0, *(v16 + 2) + 1, 1);
          v44 = v187;
        }

        v53 = *(v44 + 16);
        v52 = *(v44 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1D43CF1AC((v52 > 1), v53 + 1, 1);
          v44 = v187;
        }

        *(v44 + 16) = v53 + 1;
        v54 = v44 + v185 + v53 * v184;
        v8 = v176;
        (v13)(v54, v182, v176);
        v35 = v175;
      }

      if (v181 == ++v22)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_99:
    ;
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_26:

  v55 = *(v44 + 16);
  if (v55 >= 2)
  {
    v56 = 2;
  }

  else
  {
    v56 = *(v44 + 16);
  }

  v57 = v186;
  v58 = v186[80];
  v59 = (v58 + 32) & ~v58;
  v180 = v44 + v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBDD0, &unk_1D443B690);
  v61 = *(v57 + 9);
  v164 = v58;
  v162 = v60;
  v160 = v59 + 2 * v61;
  v62 = swift_allocObject();
  v159 = xmmword_1D44364A0;
  *(v62 + 16) = xmmword_1D44364A0;
  v63 = v57 + 104;
  v64 = *(v57 + 13);
  v64(v62 + v59, *MEMORY[0x1E69921A8], v8);
  v65 = *MEMORY[0x1E6992168];
  v185 = v61;
  v177 = (v62 + v59);
  v158 = v65;
  v163 = v63;
  v161 = v64;
  (v64)(v62 + v59 + v61);
  v182 = v44;
  v66 = v168;
  if (v55 <= 1)
  {
    v152 = v56;
    v151 = v55;

    v74 = v44;
    v75 = v171;
    v76 = v153;
    v77 = v169;
    goto LABEL_34;
  }

  if (v44 == v62)
  {
LABEL_44:

    return 1;
  }

  v146[1] = v62;
  v152 = v56;
  v151 = v55;
  v147 = v59;
  v67 = v186;
  v68 = v174;
  v178 = *(v186 + 2);
  v179 = (v186 + 16);
  v178(v174, v180, v8);
  v184 = *(v67 + 7);
  (v184)(v68, 0, 1, v8);
  swift_retain_n();
  v69 = v172;
  sub_1D43DA0AC(v68, v172);
  v70 = v8;
  v71 = *(v67 + 6);
  v72 = v71(v69, 1, v70);
  v73 = v167;
  if (v72 == 1)
  {
LABEL_32:
    sub_1D41769C4(v174, &qword_1EC7CC0B0, &qword_1D443C190);
    sub_1D41769C4(v69, &qword_1EC7CC0B0, &qword_1D443C190);

    goto LABEL_44;
  }

  LODWORD(v181) = 0;
  v103 = 0;
  v148 = (v186 + 32);
  v149 = (v186 + 8);
  while (2)
  {
    sub_1D41769C4(v69, &qword_1EC7CC0B0, &qword_1D443C190);
    if (v103 == 2)
    {
      v107 = 1;
      v108 = v176;
      v109 = v170;
    }

    else
    {
      v108 = v176;
      v109 = v170;
      v178(v170, v177 + v103 * v185, v176);
      v107 = 0;
      ++v103;
    }

    (v184)(v109, v107, 1, v108);
    v110 = *(v173 + 48);
    sub_1D43DA11C(v174, v73);
    sub_1D43DA11C(v109, v73 + v110);
    if (v71(v73, 1, v108) == 1)
    {
      if (v71((v73 + v110), 1, v108) != 1)
      {
        goto LABEL_90;
      }

      sub_1D41769C4(v73, &qword_1EC7CC0B0, &qword_1D443C190);
      goto LABEL_57;
    }

    v111 = v165;
    sub_1D43DA0AC(v73, v165);
    if (v71((v73 + v110), 1, v108) != 1)
    {
      v112 = v73 + v110;
      v113 = v183;
      (*v148)(v183, v112, v108);
      sub_1D43DA054();
      LODWORD(v175) = sub_1D4419BE4();
      v114 = *v149;
      v115 = v113;
      v73 = v167;
      (*v149)(v115, v108);
      v114(v111, v108);
      v44 = v182;
      sub_1D41769C4(v73, &qword_1EC7CC0B0, &qword_1D443C190);
      if ((v175 & 1) == 0)
      {
        goto LABEL_91;
      }

LABEL_57:
      if (v181)
      {
        v106 = 1;
        v105 = v176;
        v69 = v172;
        v104 = v174;
      }

      else
      {
        v104 = v174;
        v105 = v176;
        v178(v174, v180 + v185, v176);
        v106 = 0;
        v69 = v172;
      }

      LODWORD(v181) = 1;
      (v184)(v104, v106, 1, v105);
      sub_1D43DA0AC(v104, v69);
      if (v71(v69, 1, v105) == 1)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  (*v149)(v111, v108);
LABEL_90:
  sub_1D41769C4(v73, &qword_1EC7CC0A8, &qword_1D443C188);
LABEL_91:

  v74 = v44;
  v75 = v171;
  v8 = v176;
  v66 = v168;
  v77 = v169;
  v76 = v153;
  v59 = v147;
LABEL_34:
  if (*(v74 + 16) < v152)
  {
LABEL_101:
    __break(1u);
  }

  v78 = swift_allocObject();
  *(v78 + 16) = v159;
  v79 = v161;
  v161(v78 + v59, *MEMORY[0x1E6992160], v8);
  v174 = (v78 + v59);
  v79(v78 + v59 + v185, v158, v8);
  if (v151 < 2)
  {
    v88 = v182;

    goto LABEL_40;
  }

  if (v182 == v78)
  {
LABEL_59:

LABEL_74:

    return 1;
  }

  v147 = v59;
  v80 = v186;
  v81 = *(v186 + 2);
  v177 = (v186 + 16);
  v175 = v81;
  (v81)(v77, v180, v8);
  v82 = *(v80 + 7);
  (v82)(v77, 0, 1, v8);
  sub_1D43DA0AC(v77, v66);
  v83 = v80;
  v84 = v80 + 56;
  v85 = *(v83 + 6);
  v86 = v8;
  v87 = v82;
  v184 = v83 + 48;
  if (v85(v66, 1, v86) == 1)
  {
LABEL_38:
    sub_1D41769C4(v77, &qword_1EC7CC0B0, &qword_1D443C190);
    sub_1D41769C4(v66, &qword_1EC7CC0B0, &qword_1D443C190);
    goto LABEL_59;
  }

  LODWORD(v181) = 0;
  v116 = 0;
  v167 = (v186 + 32);
  v172 = v186 + 8;
  v170 = v82;
  v178 = v85;
  while (2)
  {
    sub_1D41769C4(v66, &qword_1EC7CC0B0, &qword_1D443C190);
    if (v116 == 2)
    {
      v119 = 1;
      v179 = 2;
      v120 = v176;
    }

    else
    {
      v120 = v176;
      (v175)(v76, &v174[v116 * v185], v176);
      v119 = 0;
      v179 = v116 + 1;
    }

    v87(v76, v119, 1, v120);
    v121 = *(v173 + 48);
    v122 = v166;
    sub_1D43DA11C(v77, v166);
    sub_1D43DA11C(v76, v122 + v121);
    v123 = v178;
    if (v178(v122, 1uLL, v120) == 1)
    {
      if (v123(v122 + v121, 1, v120) != 1)
      {
        goto LABEL_93;
      }

      sub_1D41769C4(v122, &qword_1EC7CC0B0, &qword_1D443C190);
      goto LABEL_71;
    }

    v124 = v76;
    v125 = v154;
    sub_1D43DA0AC(v122, v154);
    if (v123(v122 + v121, 1, v120) != 1)
    {
      v126 = v84;
      v127 = v78;
      v128 = v183;
      (*v167)(v183, v122 + v121, v120);
      sub_1D43DA054();
      v129 = sub_1D4419BE4();
      v130 = *v172;
      v131 = v128;
      v78 = v127;
      v84 = v126;
      v87 = v170;
      (*v172)(v131, v120);
      v130(v125, v120);
      sub_1D41769C4(v122, &qword_1EC7CC0B0, &qword_1D443C190);
      v66 = v168;
      v76 = v124;
      v123 = v178;
      if ((v129 & 1) == 0)
      {
        goto LABEL_94;
      }

LABEL_71:
      if (v181)
      {
        v118 = 1;
        v117 = v176;
        v77 = v169;
      }

      else
      {
        v77 = v169;
        v117 = v176;
        (v175)(v169, v180 + v185, v176);
        v118 = 0;
      }

      v116 = v179;
      LODWORD(v181) = 1;
      v87(v77, v118, 1, v117);
      sub_1D43DA0AC(v77, v66);
      if (v123(v66, 1, v117) == 1)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  (*v172)(v125, v120);
LABEL_93:
  sub_1D41769C4(v122, &qword_1EC7CC0A8, &qword_1D443C188);
LABEL_94:
  v88 = v182;

  v75 = v171;
  v8 = v176;
  v59 = v147;
LABEL_40:
  v89 = *(v88 + 2);
  v90 = swift_allocObject();
  *(v90 + 1) = v159;
  v91 = &v90[v59];
  v92 = &v90[v59];
  v93 = v161;
  v161(v92, *MEMORY[0x1E6992188], v8);
  v177 = v91;
  v93(v91 + v185, v158, v8);
  v94 = v155;
  if (v89 <= 1)
  {
    goto LABEL_45;
  }

  if (v88 == v90)
  {

    goto LABEL_74;
  }

  v172 = v90;
  v95 = v186;
  v96 = *(v186 + 2);
  v181 = v186 + 16;
  v179 = v96;
  v96(v75, v180, v8);
  v97 = (v95 + 56);
  v184 = *(v95 + 7);
  (v184)(v75, 0, 1, v8);
  v98 = v75;
  v99 = v95;
  v100 = v157;
  sub_1D43DA0AC(v98, v157);
  v101 = *(v95 + 6);
  if (v101(v100, 1, v8) == 1)
  {
LABEL_43:
    sub_1D41769C4(v171, &qword_1EC7CC0B0, &qword_1D443C190);
    sub_1D41769C4(v100, &qword_1EC7CC0B0, &qword_1D443C190);

    goto LABEL_74;
  }

  v132 = 0;
  v133 = 0;
  v174 = v99 + 32;
  v175 = v99 + 8;
  v178 = v97;
  while (2)
  {
    sub_1D41769C4(v100, &qword_1EC7CC0B0, &qword_1D443C190);
    if (v133 == 2)
    {
      v137 = 1;
      v138 = v156;
      v139 = v176;
    }

    else
    {
      v139 = v176;
      v138 = v156;
      (v179)(v156, v177 + v133 * v185, v176);
      v137 = 0;
      ++v133;
    }

    (v184)(v138, v137, 1, v139);
    v140 = *(v173 + 48);
    sub_1D43DA11C(v171, v94);
    sub_1D43DA11C(v138, v94 + v140);
    if (v101(v94, 1, v139) == 1)
    {
      if (v101(v94 + v140, 1, v139) != 1)
      {
        goto LABEL_96;
      }

      sub_1D41769C4(v94, &qword_1EC7CC0B0, &qword_1D443C190);
      goto LABEL_87;
    }

    v141 = v150;
    sub_1D43DA0AC(v94, v150);
    if (v101(v94 + v140, 1, v139) != 1)
    {
      v142 = v94 + v140;
      v143 = v183;
      (*v174)(v183, v142, v139);
      sub_1D43DA054();
      LODWORD(v186) = sub_1D4419BE4();
      v144 = *v175;
      v145 = v143;
      v94 = v155;
      (*v175)(v145, v139);
      v144(v141, v139);
      sub_1D41769C4(v94, &qword_1EC7CC0B0, &qword_1D443C190);
      if ((v186 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_87:
      if (v132)
      {
        v136 = 1;
        v134 = v171;
        v135 = v176;
      }

      else
      {
        v134 = v171;
        v135 = v176;
        (v179)(v171, v180 + v185, v176);
        v136 = 0;
      }

      v132 = 1;
      (v184)(v134, v136, 1, v135);
      v100 = v157;
      sub_1D43DA0AC(v134, v157);
      if (v101(v100, 1, v135) == 1)
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  (*v175)(v141, v139);
LABEL_96:
  sub_1D41769C4(v94, &qword_1EC7CC0A8, &qword_1D443C188);
LABEL_45:

  return 0;
}
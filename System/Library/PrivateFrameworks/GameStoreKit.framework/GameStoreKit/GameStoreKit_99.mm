uint64_t type metadata accessor for FocusedAlternativeSelectionButtonModifier(uint64_t a1)
{
  result = qword_27F2371A0;
  if (!qword_27F2371A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F01ADFC(uint64_t a1)
{
  sub_24F01AF4C(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GameControllerObserver(319);
    if (v2 <= 0x3F)
    {
      sub_24F01AF4C(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24E6D74E4(319);
        if (v4 <= 0x3F)
        {
          sub_24F01AF4C(319, &qword_27F21B368, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F01AF4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24F01AFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusedAlternativeSelectionButtonModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F01B038()
{
  v1 = type metadata accessor for FocusedAlternativeSelectionButtonModifier(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v2));
  }

  if (*(v3 + 88))
  {
    if (*(v3 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1((v3 + 48));
    }
  }

  else
  {
  }

  v4 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_24E74C370(*(v3 + *(v1 + 32)), *(v3 + *(v1 + 32) + 8), *(v3 + *(v1 + 32) + 16));

  return swift_deallocObject();
}

uint64_t sub_24F01B1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusedAlternativeSelectionButtonModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24F01B20C(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for FocusedAlternativeSelectionButtonModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_24F01A72C(a1, a2, v6);
}

uint64_t sub_24F01B28C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2371B0, &unk_24F9BE9C0);
  sub_24E602068(&qword_27F2371B8, &qword_27F2371B0, &unk_24F9BE9C0, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t BaseShelfPresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];
  v5 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t BaseShelfPresenter.deinit()
{
  v0 = BasePresenter.deinit();

  return v0;
}

void sub_24F01B470(unsigned __int8 a1)
{
  v3 = swift_beginAccess();
  v4 = v1[32];
  v1[32] = a1;
  v5 = (*(*v1 + 568))(v3);
  v7 = v6;
  if (a1)
  {
    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(*(v7 + 24) + 8))(ObjectType);
LABEL_6:
      swift_unknownObjectRelease();
    }
  }

  else if (v5)
  {
    v9 = swift_getObjectType();
    (*(*(v7 + 24) + 16))(v9);
    goto LABEL_6;
  }

  sub_24F01DFD8(v4);
}

void (*sub_24F01B598(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return sub_24F01B624;
}

void sub_24F01B624(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = v2[32];
  v2[32] = v3;
  v5 = (*(*v2 + 568))();
  v7 = v6;
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24) + 8);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24) + 16);
  }

  (*v9)(ObjectType);
  swift_unknownObjectRelease();
LABEL_7:
  sub_24F01DFD8(v4);

  free(v1);
}

double sub_24F01B71C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = a1;

  return result;
}

void sub_24F01B734(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = a1;
  if (v2 != (a1 & 1))
  {
    if ((a1 & 1) == 0)
    {
      swift_beginAccess();
      if (!*(v1 + 16))
      {
        return;
      }

      sub_24ED6F318();
      goto LABEL_9;
    }

    swift_beginAccess();
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v5 = *(v4 + 48);
      v6 = __OFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        __break(1u);
        return;
      }

      *(v4 + 48) = v7;
      v8 = v7 == 0;
      swift_beginAccess();
      *(v4 + 40) = v8;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        sub_24EA6BFA0();

LABEL_9:
      }
    }
  }
}

uint64_t sub_24F01B85C(unint64_t a1, uint64_t a2)
{
  v71 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v59 - v5;
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v60 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v81 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v73 = OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests;
    swift_beginAccess();
    if (i)
    {
      break;
    }

    v8 = MEMORY[0x277D84F98];
    if (!*(MEMORY[0x277D84F98] + 16))
    {
    }

LABEL_32:
    v6 = (v8 + 64);
    v49 = 1 << *(v8 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(v8 + 64);
    v12 = ((v49 + 63) >> 6);

    v52 = 0;
    while (v51)
    {
      v53 = v52;
LABEL_40:
      v54 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      a1 = *(*(v8 + 56) + ((v53 << 9) | (8 * v54)));

      sub_24E9545A4(v55);
      v7 = v56;

      sub_24F020CB8(v7, v57);
    }

    while (1)
    {
      v53 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v53 >= v12)
      {
      }

      v51 = *&v6[8 * v53];
      ++v52;
      if (v51)
      {
        v52 = v53;
        goto LABEL_40;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  v68 = v12;
  v74 = v2;
  v2 = 0;
  v14 = a1 & 0xC000000000000001;
  v76 = a1 & 0xFFFFFFFFFFFFFF8;
  v59 = a1;
  a1 += 32;
  v75 = (v8 + 48);
  v69 = (v8 + 32);
  v63 = (v8 + 8);
  v62 = (v8 + 16);
  v61 = xmmword_24F93DE60;
  v67 = v6;
  v66 = i;
  v65 = v14;
  v64 = a1;
  while (v14)
  {
    v8 = MEMORY[0x253052270](v2, v59);
    v12 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_28;
    }

LABEL_10:
    sub_24E60169C(v8 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v6, &qword_27F228530, &unk_24F93C6E0);
    if ((*v75)(v6, 1, v7) == 1)
    {

      sub_24E601704(v6, &qword_27F228530, &unk_24F93C6E0);
    }

    else
    {
      v15 = v68;
      (*v69)(v68, v6, v7);
      if (__OFADD__(v71, v2))
      {
        goto LABEL_46;
      }

      v16 = v7;
      v80 = &v2[v71];
      v17 = sub_24F92CD88();
      v19 = v18;
      v20 = *&v74[v73];
      v72 = v17;
      v79[0] = v17;
      v79[1] = v18;

      sub_24F92C7F8();
      if (*(v20 + 16) && (v21 = sub_24F92C7B8(), v22 = -1 << *(v20 + 32), v23 = v21 & ~v22, ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
      {
        v24 = ~v22;
        while (1)
        {
          sub_24E65864C(*(v20 + 48) + 40 * v23, v79);
          v25 = MEMORY[0x253052150](v79, &v80);
          sub_24E6585F8(v79);
          if (v25)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        sub_24E6585F8(&v80);
        v7 = v16;
        (*v63)(v15, v16);
      }

      else
      {
LABEL_17:

        sub_24E6585F8(&v80);
        v26 = (v8 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
        if (v81[2] && (sub_24E76D644(*v26, v26[1]), (v27 & 1) != 0))
        {
          v29 = *v26;
          v28 = v26[1];

          v31 = sub_24F4D64CC(&v80, v29, v28);
          if (*v30)
          {
            v32 = v30;
            v33 = v60;
            (*v62)(v60, v15, v16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v79[0] = *v32;
            *v32 = 0x8000000000000000;
            v35 = v33;
            v36 = v72;
            sub_24E81FF24(v35, v72, v19, isUniquelyReferenced_nonNull_native);
            *v32 = v79[0];

            (v31)(&v80, 0);
          }

          else
          {
            (v31)(&v80, 0);

            v36 = v72;
          }
        }

        else
        {
          v37 = v26[1];
          v70 = *v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED38, &unk_24F9BEA80);
          v38 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2131B8, &qword_24F99AE80) - 8);
          v39 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
          v40 = swift_allocObject();
          *(v40 + 16) = v61;
          v41 = (v40 + v39);
          v42 = v38[14];
          v43 = v72;
          *v41 = v72;
          *(v41 + 1) = v19;
          (*v62)(&v41[v42], v15, v16);

          v44 = sub_24E60E1EC(v40);
          swift_setDeallocating();
          sub_24E601704(v41, &qword_27F2131B8, &qword_24F99AE80);
          swift_deallocClassInstance();
          v45 = v81;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v80 = v45;
          v36 = v43;
          sub_24E820134(v44, v70, v37, v46);

          v81 = v80;
        }

        v47 = v74;
        v48 = v73;
        swift_beginAccess();
        v77 = v36;
        v78 = v19;
        sub_24F92C7F8();
        sub_24F01FE80(&v80, v79);
        sub_24F92C7D8();
        sub_24E6585F8(&v80);
        swift_dynamicCast();
        swift_endAccess();

        sub_24F01B734(*(*&v47[v48] + 16) != 0);

        (*v63)(v15, v16);
        v7 = v16;
      }

      v6 = v67;
      i = v66;
      v14 = v65;
      a1 = v64;
    }

    v2 = v12;
    if (v12 == i)
    {
      goto LABEL_29;
    }
  }

  if (v2 >= *(v76 + 16))
  {
    __break(1u);
    goto LABEL_45;
  }

  v8 = *(a1 + 8 * v2);

  v12 = v2 + 1;
  if (!__OFADD__(v2, 1))
  {
    goto LABEL_10;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  v8 = v81;
  v2 = v74;
  if (v81[2])
  {
    goto LABEL_32;
  }
}

void sub_24F01C174(uint64_t a1, uint64_t a2)
{
  sub_24F92C888();
  sub_24F92D1E8();

  MEMORY[0x253050C20](0xD000000000000027, 0x800000024FA68830);
  MEMORY[0x253050C20](a1, a2);
  sub_24F92CA88();
  __break(1u);
}

void sub_24F01C260(_BYTE *a1@<X8>)
{
  v3 = *((*(*v1 + 752))() + 16);

  *a1 = v3;
}

uint64_t sub_24F01C2B8()
{
  v1 = *((*(*v0 + 752))() + 24);

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_24F01C334()
{
  v1 = *((*(*v0 + 752))() + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);

  return v1;
}

uint64_t sub_24F01C3A0(uint64_t a1, void *a2)
{
  v3 = *((*(*v2 + 752))(a1) + *a2);

  return v3;
}

uint64_t sub_24F01C3FC()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3;
}

uint64_t sub_24F01C494()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 32);
  }

  return v3;
}

uint64_t sub_24F01C51C()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 72);
  }

  return v3;
}

uint64_t sub_24F01C5B4()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  return v3;
}

uint64_t sub_24F01C63C()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 128);
  }

  return v3;
}

uint64_t sub_24F01C6C4()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 112);
  }

  return v3;
}

unint64_t sub_24F01C75C@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_24F91FA18();
  v5 = *((*(*v2 + 752))(v4) + 24);

  result = sub_24F91FA08();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v5 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_24E615E00(v5 + 40 * result + 32, a2);
}

void sub_24F01C824(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(*v2 + 744))() <= a1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x8000;
  }

  else
  {
    v5 = (*(*v2 + 752))(a1);
    v6 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
    v7 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
    v8 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
    v9 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
    v10 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
    sub_24E951F10(v6, v7, v8, v9, v10);
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
}

uint64_t sub_24F01C928@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_24F91FA18();
  result = (*(*v2 + 744))();
  if (v4 < result)
  {
    v6 = sub_24F91FA18();
    v7 = (*v2 + 752);
    v8 = *v7;
    v9 = *((*v7)(v6) + 24);

    v10 = *(v9 + 16);

    result = sub_24F91FA08();
    if ((result & 0x8000000000000000) == 0 && result < v10)
    {
      v11 = sub_24F91FA18();
      v12 = *(v8(v11) + 24);

      result = sub_24F91FA08();
      if (result < 0)
      {
        __break(1u);
      }

      else if (result < *(v12 + 16))
      {
        sub_24E615E00(v12 + 40 * result + 32, v17);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED00, &qword_24F99AAA8);
        if (swift_dynamicCast())
        {
          sub_24E612C80(v15, v18);
          v13 = v19;
          v14 = v20;
          __swift_project_boxed_opaque_existential_1(v18, v19);
          (*(v14 + 8))(v13, v14);
          return __swift_destroy_boxed_opaque_existential_1(v18);
        }

        v16 = 0;
        memset(v15, 0, sizeof(v15));
        result = sub_24E601704(v15, &qword_27F22ED08, &qword_24F99AAB0);
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }
  }

LABEL_9:
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0x8000;
  return result;
}

uint64_t sub_24F01CB58@<X0>(_BYTE *a2@<X8>)
{
  v4 = sub_24F91FA18();
  result = (*(*v2 + 744))();
  if (v4 < result)
  {
    v6 = sub_24F91FA18();
    v7 = (*v2 + 752);
    v8 = *v7;
    v9 = *((*v7)(v6) + 24);

    v10 = *(v9 + 16);

    result = sub_24F91FA08();
    if ((result & 0x8000000000000000) == 0 && result < v10)
    {
      v11 = sub_24F91FA18();
      v12 = *(v8(v11) + 24);

      result = sub_24F91FA08();
      if (result < 0)
      {
        __break(1u);
      }

      else if (result < *(v12 + 16))
      {
        sub_24E615E00(v12 + 40 * result + 32, v17);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232620, &qword_24F9AA150);
        if (swift_dynamicCast())
        {
          sub_24E612C80(v15, v18);
          v13 = v19;
          v14 = v20;
          __swift_project_boxed_opaque_existential_1(v18, v19);
          (*(v14 + 8))(v13, v14);
          return __swift_destroy_boxed_opaque_existential_1(v18);
        }

        v16 = 0;
        memset(v15, 0, sizeof(v15));
        result = sub_24E601704(v15, &unk_27F23A6B0, &qword_24F9BE9D0);
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }
  }

LABEL_9:
  *a2 = 4;
  return result;
}

uint64_t sub_24F01CD80()
{
  v1 = (*(*v0 + 752))();
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  }

  return v2;
}

uint64_t sub_24F01CE20()
{
  v1 = (*(*v0 + 752))();
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  }

  return v2;
}

double sub_24F01CEAC()
{
  v1 = (*(*v0 + 752))();
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  if (v2 && (v3 = v1, (*(*v0 + 568))()))
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v10[3] = type metadata accessor for Shelf(0);
    v10[0] = v3;
    v7 = *(v5 + 8);
    v8 = *(v7 + 8);

    v8(v2, v10, ObjectType, v7);

    swift_unknownObjectRelease();
    sub_24E601704(v10, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
  }

  return result;
}

uint64_t sub_24F01D014()
{
  if (*((*(*v0 + 752))() + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
  {
    v1 = 0;
  }

  else
  {
    v1 = Shelf.seeAllAction.getter();
  }

  return v1;
}

double sub_24F01D090()
{
  v1 = (*(*v0 + 752))();
  v2 = Shelf.seeAllAction.getter();
  if (v2)
  {
    v3 = v2;
    if ((*(*v0 + 568))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v10[3] = type metadata accessor for Shelf(0);
      v10[0] = v1;
      v7 = *(v5 + 8);
      v8 = *(v7 + 8);

      v8(v3, v10, ObjectType, v7);

      swift_unknownObjectRelease();

      sub_24E601704(v10, &qword_27F2129B0, &unk_24F945320);
      return result;
    }
  }

  return result;
}

unint64_t sub_24F01D1FC(__n128 a1)
{
  v2 = sub_24F91FA78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
  v7 = swift_allocObject();
  v27 = xmmword_24F93A400;
  *(v7 + 16) = xmmword_24F93A400;
  *(v7 + 32) = sub_24F91FA18();
  *(v7 + 40) = 0;
  MEMORY[0x253045350](v7);
  v8 = sub_24F91FA18();
  v9 = *((*(*v1 + 752))(v8) + 24);

  result = sub_24F91FA08();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= *(v9 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24E615E00(v9 + 40 * result + 32, v31);

  v11 = *(v3 + 8);
  v11(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ECE8, &qword_24F99AA88);
  if (swift_dynamicCast())
  {
    v26[1] = v6;
    sub_24E612C80(&v28, v33);
    v12 = v34;
    v13 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v14 = sub_24F91FA08();
    v15 = (*(v13 + 8))(&v28, v14, v12, v13);
    if (v28)
    {
      v31[0] = v28;
      v31[1] = v29;
      v32 = v30;
      if ((*(*v1 + 568))(v15))
      {
        v17 = v16;
        ObjectType = swift_getObjectType();
        (*(*(v17 + 8) + 8))(*&v31[0], v31 + 8, ObjectType);
        swift_unknownObjectRelease();
      }

      sub_24E601704(v31, &qword_27F22CE40, &qword_24F99AAA0);
    }

    else
    {
      sub_24E601704(&v28, &qword_27F22ECF8, &unk_24F9AA510);
      v19 = v34;
      v20 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v21 = sub_24F91FA08();
      if (((*(v20 + 16))(v21, v19, v20) & 1) != 0 && (*(*v1 + 568))())
      {
        v23 = v22;
        v24 = swift_getObjectType();
        v25 = swift_allocObject();
        *(v25 + 16) = v27;
        *(v25 + 32) = sub_24F91FA18();
        *(v25 + 40) = 0;
        MEMORY[0x253045350](v25);
        (*(v23 + 56))(v5, v24, v23);
        swift_unknownObjectRelease();
        v11(v5, v2);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    return sub_24E601704(&v28, &qword_27F22ECF0, &unk_24F99AA90);
  }
}

unint64_t sub_24F01D63C(uint64_t a1)
{
  v3 = sub_24F91FA18();
  v4 = *((*(*v1 + 752))(v3) + 24);

  result = sub_24F91FA08();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= *(v4 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24E615E00(v4 + 40 * result + 32, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38, &unk_24F992830);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v19, v22);
    v6 = v23;
    v7 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v8 = (*(v7 + 8))(v6, v7);
    if (v8)
    {
      v9 = v8;
      if ((*(*v1 + 568))())
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = v23;
        v14 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        (*(v14 + 16))(v21, v13, v14);
        (*(*(v11 + 8) + 8))(v9, v21, ObjectType);

        swift_unknownObjectRelease();
        sub_24E601704(v21, &qword_27F2129B0, &unk_24F945320);
      }

      else
      {
      }

      return __swift_destroy_boxed_opaque_existential_1(v22);
    }

    v15 = __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v15 = sub_24E601704(v19, &qword_27F22CE30, &qword_24F99AA80);
  }

  result = (*(*v1 + 568))(v15);
  if (result)
  {
    v17 = v16;
    v18 = swift_getObjectType();
    (*(v17 + 56))(a1, v18, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24F01D910(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v5 = a3 >> 62;
    if (a3 >> 62)
    {
      if (sub_24F92C738() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v6 = objc_allocWithZone(MEMORY[0x277CD3F38]);

      v7 = [v6 init];
      v8 = sub_24F92B098();
      [v7 setWidgetKind_];

      if (v5)
      {
        sub_24E69A5C4(0, &qword_27F2371D0, 0x277CD3F30);

        sub_24F92CA98();
      }

      else
      {

        sub_24F92CEE8();
        sub_24E69A5C4(0, &qword_27F2371D0, 0x277CD3F30);
      }

      sub_24E69A5C4(0, &qword_27F2371D0, 0x277CD3F30);
      v9 = sub_24F92B588();

      [v7 setRelevanceProviders_];

      v10 = [objc_opt_self() defaultStore];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_24F941C80;
      *(v11 + 32) = v7;
      sub_24E69A5C4(0, &qword_27F2371D8, 0x277CD3F38);
      v12 = v7;
      v13 = sub_24F92B588();

      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      v17[4] = sub_24F020654;
      v17[5] = v14;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 1107296256;
      v17[2] = sub_24E9FABA0;
      v17[3] = &block_descriptor_103;
      v15 = _Block_copy(v17);

      [v10 setRelevantShortcuts:v13 completionHandler:v15];
      _Block_release(v15);

      return;
    }
  }

  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v16 = sub_24F92AAE8();
  __swift_project_value_buffer(v16, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();
}

uint64_t sub_24F01DD24()
{
  swift_beginAccess();
  v1 = v0[2];
  if (v1)
  {
    v2 = qword_27F210788;

    if (v2 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_27F230F98;
    v4 = v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v4 = v3;
    *(v4 + 8) = 0;
    v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v5 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  return (*(*v0 + 296))(0);
}

uint64_t BaseShelfPresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];
  v9 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

void sub_24F01DFD8(char a1)
{
  v2 = a1 & 1;
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(*v1 + 264);
  if (((v8)(v5) & 1) != v2)
  {
    if (v8())
    {
      swift_beginAccess();
      v9 = v1[2];
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v11 = *(v10 + 48);
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          __break(1u);
          return;
        }

        *(v10 + 48) = v13;
        v14 = v13 == 0;
        swift_beginAccess();
        *(v10 + 40) = v14;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          sub_24EA6BFA0();

LABEL_10:
        }
      }
    }

    else
    {
      swift_beginAccess();
      if (v1[2])
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v16 = v15;
        (*(v4 + 8))(v7, v3);
        PendingPageRender.initialRequestEndTime.setter(v16, 0);

        if (v1[2])
        {

          sub_24ED6F318();
          goto LABEL_10;
        }
      }
    }
  }
}

void sub_24F01E224(uint64_t *a1, void *a2)
{
  v122 = sub_24F91F648();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v125 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v108 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v106 - v9;
  MEMORY[0x28223BE20](v10);
  v107 = &v106 - v11;
  v111 = sub_24F91F968();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v115 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92A078();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  swift_beginAccess();
  v123 = a2;
  if (a2[3])
  {
    *v16 = 0;
    (*(v14 + 104))(v16, *MEMORY[0x277D22288], v13);

    sub_24F92A0C8();

    (*(v14 + 8))(v16, v13);
  }

  sub_24F91F958();
  v112 = v17;
  v18 = *(v17 + 16);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v116 = OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests;
  v23 = (v20 + 63) >> 6;
  v109 = "mentation required for ";
  v117 = v18;

  v24 = 0;
  v114 = 0;
  v113 = MEMORY[0x277D84F90];
  v118 = xmmword_24F93A400;
  v25 = v7;
  v126 = v7;
  while (v22)
  {
LABEL_11:
    v27 = __clz(__rbit64(v22)) | (v24 << 6);
    v28 = v117;
    sub_24E65864C(*(v117 + 48) + 40 * v27, &v130);
    v29 = *(*(v28 + 56) + 8 * v27);
    v119 = v130;
    v30 = v132;
    v120 = v131;
    v31 = *(&v131 + 1);

    if (!v31)
    {
LABEL_34:

      v54 = v123;
      swift_beginAccess();
      v55 = v112;
      v56 = v113;
      if (*(v54 + 16))
      {
        swift_beginAccess();

        sub_24EA0A8D8(v57);
        swift_endAccess();

        if (*(v54 + 16))
        {
          swift_beginAccess();

          sub_24EA0A904(v58);
          swift_endAccess();
        }
      }

      v59 = sub_24F91F908();
      *&v120 = v54 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      if (v59)
      {
        v60 = v122;
      }

      else
      {
        v59 = (*(*v54 + 568))();
        v60 = v122;
        if (v59)
        {
          v62 = v61;
          ObjectType = swift_getObjectType();
          (*(v62 + 48))(v115, ObjectType, v62);
          v59 = swift_unknownObjectRelease();
        }
      }

      *&v119 = (*(*v54 + 592))(v59);
      if (v119)
      {
        v64 = v56[2];
        if (v64)
        {
          v65 = v56 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
          v66 = *(v108 + 72);
          v67 = (v121 + 48);
          v68 = (v121 + 32);
          v69 = MEMORY[0x277D84F90];
          do
          {
            v70 = v124;
            sub_24E60169C(v65, v124, &unk_27F22EC30, &qword_24F939880);
            v71 = v70;
            v72 = v126;
            sub_24E6C4F90(v71, v126);
            if ((*v67)(v72, 1, v60) == 1)
            {
              sub_24E601704(v72, &unk_27F22EC30, &qword_24F939880);
            }

            else
            {
              v73 = v72;
              v74 = *v68;
              (*v68)(v125, v73, v60);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v69 = sub_24E616878(0, *(v69 + 2) + 1, 1, v69);
              }

              v76 = *(v69 + 2);
              v75 = *(v69 + 3);
              if (v76 >= v75 >> 1)
              {
                v69 = sub_24E616878((v75 > 1), v76 + 1, 1, v69);
              }

              *(v69 + 2) = v76 + 1;
              v60 = v122;
              v74(&v69[((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v76], v125, v122);
            }

            v65 += v66;
            --v64;
          }

          while (v64);

          v54 = v123;
          v55 = v112;
        }

        else
        {

          v69 = MEMORY[0x277D84F90];
        }

        v77 = sub_24ED6555C(v69);

        if (v77)
        {
          v78 = *(*v54 + 600);

          v78(v79);
        }
      }

      else
      {
      }

      v80 = *(v55 + 24);
      v83 = *(v80 + 64);
      v82 = v80 + 64;
      v81 = v83;
      v84 = 1 << *(*(v55 + 24) + 32);
      v85 = -1;
      if (v84 < 64)
      {
        v85 = ~(-1 << v84);
      }

      v86 = v85 & v81;
      v87 = (v84 + 63) >> 6;
      v126 = *(v55 + 24);

      v88 = 0;
      while (v86)
      {
LABEL_65:
        v90 = __clz(__rbit64(v86));
        v86 &= v86 - 1;
        v91 = v90 | (v88 << 6);
        v92 = (*(v126 + 6) + 16 * v91);
        v94 = *v92;
        v93 = v92[1];
        v95 = *(*(v126 + 7) + 8 * v91);
        swift_bridgeObjectRetain_n();
        v96 = v95;
        v98 = sub_24E9EEBE0(v94, v93, v97);
        if (v99)
        {
          if (qword_27F210568 != -1)
          {
            swift_once();
          }

          v125 = sub_24F92AAE8();
          v124 = __swift_project_value_buffer(v125, qword_27F39C398);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
          sub_24F928468();
          *(swift_allocObject() + 16) = v118;
          sub_24F9283A8();
          *(&v131 + 1) = MEMORY[0x277D837D0];
          *&v130 = v94;
          *(&v130 + 1) = v93;
          sub_24F928458();
          sub_24E601704(&v130, &qword_27F2129B0, &unk_24F945320);
          sub_24F92A5A8();

          v54 = v123;
        }

        else
        {
          v100 = v98;

          if ((*(*v54 + 568))(v101))
          {
            v103 = v102;
            v104 = swift_getObjectType();
            v105 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            (*(v103 + 40))(v95, v105, v104, v103);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v89 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          break;
        }

        if (v89 >= v87)
        {
          (*(v110 + 8))(v115, v111);

          return;
        }

        v86 = *(v82 + 8 * v89);
        ++v88;
        if (v86)
        {
          v88 = v89;
          goto LABEL_65;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

    v22 &= v22 - 1;
    v130 = v119;
    v131 = v120;
    v132 = v30;
    v32 = v123;
    v33 = v116;
    swift_beginAccess();
    sub_24F7A58DC(&v130, v129);
    sub_24E601704(v129, &qword_27F235830, &qword_24F93B8C0);
    swift_endAccess();
    sub_24F01B734(*(*(v32 + v33) + 16) != 0);
    sub_24F92C7D8();
    if (swift_dynamicCast() & 1) == 0 || (v35 = sub_24E9EEBE0(v127, v128, v34), (v36))
    {
      if (qword_27F210568 == -1)
      {
        goto LABEL_15;
      }

LABEL_32:
      swift_once();
      goto LABEL_15;
    }

    v38 = v25;
    v39 = v123;
    v40 = v35;
    if ((*(*v123 + 760))())
    {
      v41 = *v39;
      if (v29[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched] != 1)
      {
        (*(v41 + 720))(v40, v29);
        v25 = v38;
        goto LABEL_27;
      }

      v42 = *(v41 + 752);
      *&v120 = v40;
      v42(v40);
      v43 = v114;
      Shelf.mergingWith(_:)(v29);
      v114 = v43;
      if (v43)
      {

        if ((*(*v39 + 568))(v44))
        {
          v46 = v45;
          v47 = swift_getObjectType();
          v48 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          v49 = [v48 initWithInteger_];
          v50 = v114;
          (*(v46 + 40))(v114, v49, v47, v46);

          swift_unknownObjectRelease();

          sub_24E6585F8(&v130);
        }

        else
        {
          sub_24E6585F8(&v130);
        }

        v114 = 0;
        v25 = v126;
      }

      else
      {
        (*(*v39 + 720))();

        v25 = v126;
LABEL_27:
        sub_24F91F8F8();
        sub_24E60169C(&v29[OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate], v107, &unk_27F22EC30, &qword_24F939880);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_24E61923C(0, v113[2] + 1, 1, v113);
        }

        v52 = v113[2];
        v51 = v113[3];
        if (v52 >= v51 >> 1)
        {
          v113 = sub_24E61923C((v51 > 1), v52 + 1, 1, v113);
        }

        sub_24E6585F8(&v130);
        v53 = v113;
        v113[2] = v52 + 1;
        sub_24E6C4F90(v107, v53 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v52);
      }
    }

    else
    {
      if (qword_27F210568 != -1)
      {
        goto LABEL_32;
      }

LABEL_15:
      v37 = sub_24F92AAE8();
      __swift_project_value_buffer(v37, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = v118;
      sub_24F9283A8();
      v129[3] = MEMORY[0x277D84030];
      v129[0] = swift_allocObject();
      sub_24E65864C(&v130, v129[0] + 16);
      sub_24F928458();
      sub_24E601704(v129, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5A8();

      sub_24E6585F8(&v130);
      v25 = v126;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_34;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_11;
    }
  }

LABEL_74:
  __break(1u);
}

uint64_t sub_24F01F3D8(void *a1, void *a2, void *a3)
{
  v6 = sub_24F92A078();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = a2[3];
  if (v10)
  {
    *v9 = a1;
    v9[8] = 0;
    (*(v7 + 104))(v9, *MEMORY[0x277D22278], v6);

    v11 = a1;
    sub_24F92A0C8();

    (*(v7 + 8))(v9, v6);
  }

  v31 = a1;
  v12 = a3 + 8;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & a3[8];
  v16 = OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests;
  v17 = (v13 + 63) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_11:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_24E65864C(a3[6] + 40 * (v20 | (v19 << 6)), v33);
      swift_beginAccess();
      sub_24F7A58DC(v33, v32);
      sub_24E6585F8(v33);
      sub_24E601704(v32, &qword_27F235830, &qword_24F93B8C0);
      swift_endAccess();
      v10 = a2;
      sub_24F01B734(*(*(a2 + v16) + 16) != 0);
      if (!v15)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_22:
      a3 = sub_24E617130(0, a3[2] + 1, 1, a3);
      *(v10 + v18) = a3;
      goto LABEL_15;
    }

    if (v19 >= v17)
    {
      break;
    }

    v15 = v12[v19];
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_11;
    }
  }

  v21 = swift_beginAccess();
  v10 = a2[2];
  v12 = v31;
  if (!v10)
  {
    goto LABEL_18;
  }

  v18 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
  swift_beginAccess();
  a3 = *(v10 + v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + v18) = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v24 = a3[2];
  v23 = a3[3];
  if (v24 >= v23 >> 1)
  {
    a3 = sub_24E617130((v23 > 1), v24 + 1, 1, a3);
  }

  a3[2] = v24 + 1;
  a3[v24 + 4] = v12;
  *(v10 + v18) = a3;
  swift_endAccess();
  v25 = v12;

LABEL_18:
  result = (*(*a2 + 568))(v21);
  if (result)
  {
    v28 = v27;
    ObjectType = swift_getObjectType();
    (*(v28 + 40))(v12, 0, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24F01F828(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928418();
  MEMORY[0x28223BE20](v6 - 8);
  if (a1)
  {
    v7 = a1;
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v8 = sub_24F92AAE8();
    __swift_project_value_buffer(v8, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v14 = MEMORY[0x277D837D0];
    v12 = a2;
    v13 = a3;

    sub_24F9283D8();
    sub_24E601704(&v12, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283F8();
    swift_getErrorValue();
    v14 = v11;
    v9 = __swift_allocate_boxed_opaque_existential_1(&v12);
    (*(*(v11 - 8) + 16))(v9);
    sub_24F9283D8();
    sub_24E601704(&v12, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();
  }

  else
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v10 = sub_24F92AAE8();
    __swift_project_value_buffer(v10, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v14 = MEMORY[0x277D837D0];
    v12 = a2;
    v13 = a3;

    sub_24F9283D8();
    sub_24E601704(&v12, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();
  }
}

uint64_t sub_24F01FC4C()
{
}

uint64_t BaseShelfPresenter.__deallocating_deinit()
{
  BasePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F01FE0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*(*v4 + 752))(a1, a2, a3) + *a4);

  return v5;
}

uint64_t sub_24F01FE80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_24F92C7B8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_24E65864C(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x253052150](v16, a2);
      sub_24E6585F8(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24E6585F8(a2);
    sub_24E65864C(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E65864C(a2, v16);
    v15 = *v3;
    sub_24F01FFCC(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

void sub_24F01FFCC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_61:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v55 = *(i + 48) + 40 * a2;
      v56 = *(a1 + 16);
      *v55 = *a1;
      *(v55 + 16) = v56;
      *(v55 + 32) = *(a1 + 32);
      v57 = *(i + 16);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (!v58)
      {
        *(i + 16) = v59;
        return;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8, &qword_24F95C7A0);
      v60 = sub_24F92C808();
      i = v60;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_83:
    }

    v61 = (v60 + 56);
    v62 = v7 + 56;
    v63 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v61 >= v62 + 8 * v63)
    {
      memmove(v61, (v7 + 56), 8 * v63);
    }

    v64 = 0;
    *(i + 16) = *(v7 + 16);
    v65 = 1 << *(v7 + 32);
    v66 = *(v7 + 56);
    v67 = -1;
    if (v65 < 64)
    {
      v67 = ~(-1 << v65);
    }

    v68 = v67 & v66;
    v69 = (v65 + 63) >> 6;
    if ((v67 & v66) != 0)
    {
      do
      {
        v70 = __clz(__rbit64(v68));
        v68 &= v68 - 1;
LABEL_81:
        v73 = 40 * (v70 | (v64 << 6));
        sub_24E65864C(*(v7 + 48) + v73, &v79);
        v74 = *(i + 48) + v73;
        v75 = v79;
        v76 = v80;
        *(v74 + 32) = v81;
        *v74 = v75;
        *(v74 + 16) = v76;
      }

      while (v68);
    }

    v71 = v64;
    while (1)
    {
      v64 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v64 >= v69)
      {
        goto LABEL_83;
      }

      v72 = *(v62 + 8 * v64);
      ++v71;
      if (v72)
      {
        v70 = __clz(__rbit64(v72));
        v68 = (v72 - 1) & v72;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8, &qword_24F95C7A0);
  if ((a3 & 1) == 0)
  {
    v30 = sub_24F92C818();
    i = v30;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v78 = v4;
    v31 = 0;
    a2 = v7 + 56;
    v32 = 1 << *(v7 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v7 + 56);
    v4 = (v32 + 63) >> 6;
    v35 = v30 + 56;
    while (1)
    {
      if (v34)
      {
        v40 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
      }

      else
      {
        v41 = v31;
        do
        {
          v31 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_64;
          }

          if (v31 >= v4)
          {

            v4 = v78;
            goto LABEL_57;
          }

          v42 = *(a2 + 8 * v31);
          ++v41;
        }

        while (!v42);
        v40 = __clz(__rbit64(v42));
        v34 = (v42 - 1) & v42;
      }

      sub_24E65864C(*(v7 + 48) + 40 * (v40 | (v31 << 6)), &v79);
      v43 = sub_24F92C7B8();
      v44 = -1 << *(i + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v35 + 8 * (v45 >> 6))) != 0)
      {
        v36 = __clz(__rbit64((-1 << v45) & ~*(v35 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        do
        {
          if (++v46 == v48 && (v47 & 1) != 0)
          {
            goto LABEL_66;
          }

          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v35 + 8 * v46);
        }

        while (v50 == -1);
        v36 = __clz(__rbit64(~v50)) + (v46 << 6);
      }

      *(v35 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v37 = *(i + 48) + 40 * v36;
      v38 = v79;
      v39 = v80;
      *(v37 + 32) = v81;
      *v37 = v38;
      *(v37 + 16) = v39;
      ++*(i + 16);
    }
  }

  v10 = sub_24F92C818();
  i = v10;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v77 = v4;
  v11 = 0;
  a2 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v4 = (v12 + 63) >> 6;
  v15 = v10 + 56;
LABEL_12:
  if (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v11 >= v4)
    {
      break;
    }

    v20 = *(a2 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
LABEL_19:
      v21 = *(v7 + 48) + 40 * (v18 | (v11 << 6));
      v79 = *v21;
      v80 = *(v21 + 16);
      v81 = *(v21 + 32);
      v22 = sub_24F92C7B8();
      v23 = -1 << *(i + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        do
        {
          if (++v25 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_65;
          }

          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
        }

        while (v29 == -1);
        v16 = __clz(__rbit64(~v29)) + (v25 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(i + 48) + 40 * v16;
      *v17 = v79;
      *(v17 + 16) = v80;
      *(v17 + 32) = v81;
      ++*(i + 16);
      goto LABEL_12;
    }
  }

  v51 = 1 << *(v7 + 32);
  if (v51 >= 64)
  {
    bzero((v7 + 56), ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *a2 = -1 << v51;
  }

  v4 = v77;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  v52 = sub_24F92C7B8();
  v53 = -1 << *(i + 32);
  a2 = v52 & ~v53;
  if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v7 = ~v53;
  while (1)
  {
    sub_24E65864C(*(i + 48) + 40 * a2, &v79);
    v54 = MEMORY[0x253052150](&v79, a1);
    sub_24E6585F8(&v79);
    if (v54)
    {
      break;
    }

    a2 = (a2 + 1) & v7;
    if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_85:
  sub_24F92CF78();
  __break(1u);
}

uint64_t sub_24F02061C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F020674()
{
  result = qword_27F2371E0;
  if (!qword_27F2371E0)
  {
    type metadata accessor for BaseShelfPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2371E0);
  }

  return result;
}

uint64_t type metadata accessor for BaseShelfPresenter(uint64_t a1)
{
  result = qword_27F2371E8;
  if (!qword_27F2371E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F020718(uint64_t a1)
{
  result = sub_24F020674();
  *(a1 + 8) = result;
  return result;
}

void sub_24F020CB8(uint64_t a1, __n128 a2)
{
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    swift_beginAccess();
    if (*(v2 + 24))
    {
      *v7 = 0;
      (*(v5 + 104))(v7, *MEMORY[0x277D22298], v4);

      sub_24F92A0D8();

      (*(v5 + 8))(v7, v4);
    }

    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24F929C28();

    sub_24F928FE8();

    sub_24F929BF8();

    v8 = sub_24F929C18();

    sub_24EB46264(a1, v8, "GameStoreKit/BaseShelfPresenter.swift", 37, 2);
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = a1;
    v10 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    swift_retain_n();

    v11 = sub_24F92BEF8();
    v12[3] = v10;
    v12[4] = MEMORY[0x277D225C0];
    v12[0] = v11;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v12);
  }
}

uint64_t sub_24F020F80()
{

  return swift_deallocObject();
}

uint64_t sub_24F020FC8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t TopChartsDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v11 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v12 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B018, &unk_24F9BEA90);
  swift_allocObject();
  *(v10 + v12) = sub_24F92ADA8();
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = a1;
  sub_24F929158();
  sub_24F928FD8();

  sub_24F92A758();

  sub_24E911D90(a2, v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v10 + v11) = a3;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = a5;
  return v10;
}

Swift::Void __swiftcall TopChartsDiffablePageContentPresenter.fetchPage()()
{
  v1 = v0;
  v2 = type metadata accessor for TopChartsPageIntent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92A088();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  v15 = *(v0 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage);
  if (v15)
  {
    *(v0 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = v15;
    swift_retain_n();

    v30 = v15;
    v31 = 1;

    sub_24F92AD88();

    sub_24F021EA0(v30, v31);
  }

  *(v0 + v14) = 0;

  v16 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage;
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) & 1) == 0)
  {
    sub_24E99091C(v1 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_24E70E058(v9);
      return;
    }

    (*(v11 + 32))(v13, v9, v10);
    *(v1 + v16) = 1;
    v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender);
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v19 = *(v18 + 48);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        __break(1u);
        return;
      }

      *(v18 + 48) = v21;
      v22 = v21 == 0;
      swift_beginAccess();
      *(v18 + 40) = v22;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    if (*(v1 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics))
    {
      *v6 = 1;
      v23 = v28;
      v28[13](v6, *MEMORY[0x277D222A0], v4);
      sub_24F92A0D8();
      (v23[1])(v6, v4);
    }

    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    v28 = v30;
    v24 = v29;
    (*(v11 + 16))(v29, v13, v10);
    sub_24F929C28();

    sub_24F928FE8();
    sub_24F929BF8();

    v25 = sub_24F929C08();

    sub_24EB45B70(v24, v25, "GameStoreKit/TopChartsDiffablePageContentPresenter.swift", 56, 2);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    v26 = sub_24E74EC40();

    v27 = sub_24F92BEF8();
    v32 = v26;
    v33 = MEMORY[0x277D225C0];
    v30 = v27;
    sub_24F92A958();

    sub_24EDA1EB8(v24);
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_1(&v30);
  }
}

uint64_t TopChartsDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  v9 = sub_24F929158();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v13 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v14 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B018, &unk_24F9BEA90);
  swift_allocObject();
  *(v5 + v14) = sub_24F92ADA8();
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = a1;
  sub_24F928FD8();

  sub_24F92A758();

  (*(v10 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_metricsPipeline, v12, v9);
  sub_24E911D90(a2, v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v5 + v13) = a3;

  v15 = v18;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = v17;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = v15;
  return v5;
}

double sub_24F0218C4(void **a1, uint64_t a2)
{
  v3 = sub_24F92A078();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    *(Strong + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = v7;

    v13 = v7;
    v14 = 0;

    sub_24F92AD88();
    sub_24F021EA0(v13, v14);
    *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
    if (*(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender))
    {

      sub_24ED6F318();
    }

    if (*(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics))
    {
      v11 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
      swift_beginAccess();
      v12 = sub_24F928818();
      (*(*(v12 - 8) + 16))(v6, &v7[v11], v12);
      (*(v4 + 104))(v6, *MEMORY[0x277D22290], v3);
      sub_24F92A0C8();
      (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

void sub_24F021AE4(void *a1, uint64_t a2)
{
  v3 = sub_24F92A078();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v15 = a1;
    v16 = 0x80;
    v7 = a1;
    sub_24F92AD88();

    sub_24F021EA0(v15, v16);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender);

    if (v10)
    {
      sub_24ED6F318();
    }
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics);

    if (v12)
    {
      *v6 = a1;
      (*(v4 + 104))(v6, *MEMORY[0x277D22280], v3);
      v13 = a1;
      sub_24F92A0C8();

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t TopChartsDiffablePageContentPresenter.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_metricsPipeline;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);

  return v0;
}

uint64_t TopChartsDiffablePageContentPresenter.__deallocating_deinit()
{
  TopChartsDiffablePageContentPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F021E58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_24F021EA0(void *a1, char a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

uint64_t type metadata accessor for TopChartsDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_27F237228;
  if (!qword_27F237228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F021F00(uint64_t a1)
{
  sub_24F929158();
  if (v1 <= 0x3F)
  {
    sub_24E6D4C08(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24F02202C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 9))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = ((*(a1 + 8) >> 7) | (2 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 8) >> 1) & 0x3F) << 7)))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F0220A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_24F022120(uint64_t result, char a2)
{
  v2 = *(result + 8) & 1 | (a2 << 7);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 8) = v2;
  return result;
}

GameStoreKit::BadgeLeadingValue_optional __swiftcall BadgeLeadingValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BadgeLeadingValue.rawValue.getter()
{
  v1 = 2003134838;
  if (*v0 != 1)
  {
    v1 = 1954047348;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265666E69;
  }
}

uint64_t sub_24F0221F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 2003134838;
  if (v2 != 1)
  {
    v3 = 1954047348;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7265666E69;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 2003134838;
  if (*a2 != 1)
  {
    v6 = 1954047348;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7265666E69;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}

void sub_24F0222E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 2003134838;
  if (v2 != 1)
  {
    v4 = 1954047348;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7265666E69;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_24F02232C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0223BC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F022438()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

GameStoreKit::BadgeStyle_optional __swiftcall BadgeStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t BadgeStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_24F022568(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x697461746F6E6E61;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v5 = 0x697461746F6E6E61;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F022614@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24F022674(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x697461746F6E6E61;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F0226B8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F022740(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0227B4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

GameStoreKit::BadgeType_optional __swiftcall BadgeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BadgeType.rawValue.getter()
{
  result = 0x676E69746172;
  switch(*v0)
  {
    case 1:
      result = 0x52746E65746E6F63;
      break;
    case 2:
      result = 0x736F507472616863;
      break;
    case 3:
      result = 0x4373726F74696465;
      break;
    case 4:
      result = 0x6B726F77747261;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x69746F4D68676968;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      result = 0x7061726761726170;
      break;
    case 0xC:
      result = 0x5073646E65697266;
      break;
    case 0xD:
      result = 0x6D6F74737563;
      break;
    case 0xE:
      result = 0x726564726F657270;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24F022AE8@<X0>(unint64_t *a1@<X8>)
{
  result = BadgeType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::BadgeKey_optional __swiftcall BadgeKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CF18();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BadgeKey.rawValue.getter()
{
  result = 0x79726F6765746163;
  switch(*v0)
  {
    case 1:
      result = 0x736F507472616863;
      break;
    case 2:
      result = 0x52746E65746E6F63;
      break;
    case 3:
      result = 0x6C6C6F72746E6F63;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x65706F6C65766564;
      break;
    case 7:
      result = 0x4373726F74696465;
      break;
    case 8:
      result = 0x5073646E65697266;
      break;
    case 9:
      result = 0x69746F4D68676968;
      break;
    case 0xA:
      result = 0x65676175676E616CLL;
      break;
    case 0xB:
      result = 0x616C7069746C756DLL;
      break;
    case 0xC:
      result = 0x726564726F657270;
      break;
    case 0xD:
      result = 0x676E69746172;
      break;
    case 0xE:
      result = 0xD00000000000001ELL;
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 1702521203;
      break;
    case 0x11:
      result = 0xD000000000000011;
      break;
    case 0x12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F022E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F022F14@<X0>(unint64_t *a1@<X8>)
{
  result = BadgeKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24F022F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_24F92D068();
  a3(v4);
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F022FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_24F92B218();
}

uint64_t sub_24F02305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_24F92D068();
  a4(v5);
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t Badge.caption.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Badge.heading.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Badge.longCaption.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Badge.accessibilityTitle.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t Badge.accessibilityCaption.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_24F023384(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F2129B0, &unk_24F945320);
  v3 = *a2;
  swift_beginAccess();
  sub_24E8E7708(v5, v3 + 152);
  return swift_endAccess();
}

uint64_t sub_24F023448(uint64_t a1)
{
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + 152);
  return swift_endAccess();
}

uint64_t Badge.__allocating_init(id:type:key:heading:caption:longCaption:content:leadingValue:style:accessibilityTitle:accessibilityCaption:clickAction:artwork:trailingArtwork:isMonochrome:impressionMetrics:)(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21)
{
  v65 = a20;
  v63 = a19;
  v64 = a8;
  v61 = a18;
  v62 = a7;
  v59 = a17;
  v60 = a6;
  v57 = a16;
  v58 = a5;
  v55 = a15;
  v56 = a4;
  v54 = a14;
  v52 = a21;
  v53 = a13;
  v50 = a10;
  v51 = a9;
  v24 = sub_24F91F6B8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v29 = *a2;
  v30 = *a3;
  v31 = *a11;
  v32 = *a12;
  *(v28 + 152) = 0u;
  *(v28 + 168) = 0u;
  sub_24E60169C(a1, &v68, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v69 + 1))
  {
    v33 = v69;
    *(v28 + 184) = v68;
    *(v28 + 200) = v33;
    *(v28 + 216) = v70;
  }

  else
  {
    sub_24F91F6A8();
    v34 = v31;
    v35 = sub_24F91F668();
    v49 = a1;
    v36 = v30;
    v37 = v32;
    v38 = v29;
    v40 = v39;
    (*(v25 + 8))(v27, v24);
    v66 = v35;
    v67 = v40;
    v31 = v34;
    v29 = v38;
    v32 = v37;
    v30 = v36;
    a1 = v49;
    sub_24F92C7F8();
    sub_24E601704(&v68, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v52, v28 + OBJC_IVAR____TtC12GameStoreKit5Badge_impressionMetrics);
  *(v28 + 16) = v29;
  *(v28 + 17) = v30;
  v41 = v58;
  *(v28 + 40) = v56;
  *(v28 + 48) = v41;
  v42 = v62;
  *(v28 + 24) = v60;
  *(v28 + 32) = v42;
  v43 = v50;
  *(v28 + 56) = v64;
  *(v28 + 64) = v51;
  *(v28 + 72) = v43;
  *(v28 + 80) = v31;
  *(v28 + 81) = v32;
  v44 = v54;
  *(v28 + 88) = v53;
  *(v28 + 96) = v44;
  v45 = v57;
  *(v28 + 104) = v55;
  *(v28 + 112) = v45;
  *(v28 + 144) = v59;
  v46 = v63;
  *(v28 + 120) = v61;
  *(v28 + 128) = v46;
  *(v28 + 136) = v65 & 1;
  return v28;
}

uint64_t Badge.init(id:type:key:heading:caption:longCaption:content:leadingValue:style:accessibilityTitle:accessibilityCaption:clickAction:artwork:trailingArtwork:isMonochrome:impressionMetrics:)(uint64_t a1, char *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21)
{
  v22 = v21;
  v63 = a8;
  v61 = a7;
  v59 = a6;
  v57 = a5;
  v55 = a4;
  v51 = a21;
  v64 = a20;
  v62 = a19;
  v60 = a18;
  v58 = a17;
  v56 = a16;
  v54 = a15;
  v53 = a14;
  v52 = a13;
  v49 = a10;
  v50 = a9;
  v26 = sub_24F91F6B8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a2;
  v31 = *a3;
  v32 = *a11;
  v33 = *a12;
  *(v22 + 152) = 0u;
  *(v22 + 168) = 0u;
  sub_24E60169C(a1, &v67, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
  }

  else
  {
    sub_24F91F6A8();
    v34 = v32;
    v35 = sub_24F91F668();
    HIDWORD(v48) = v31;
    v36 = v33;
    v37 = v30;
    v39 = v38;
    (*(v27 + 8))(v29, v26);
    v65 = v35;
    v66 = v39;
    v32 = v34;
    v30 = v37;
    v33 = v36;
    LOBYTE(v31) = BYTE4(v48);
    sub_24F92C7F8();
    sub_24E601704(&v67, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v40 = v71;
  *(v22 + 184) = v70;
  *(v22 + 200) = v40;
  *(v22 + 216) = v72;
  sub_24E65E0D4(v51, v22 + OBJC_IVAR____TtC12GameStoreKit5Badge_impressionMetrics);
  *(v22 + 16) = v30;
  *(v22 + 17) = v31;
  v41 = v57;
  *(v22 + 40) = v55;
  *(v22 + 48) = v41;
  v42 = v61;
  *(v22 + 24) = v59;
  *(v22 + 32) = v42;
  v43 = v49;
  *(v22 + 56) = v63;
  *(v22 + 64) = v50;
  *(v22 + 72) = v43;
  *(v22 + 80) = v32;
  *(v22 + 81) = v33;
  v44 = v53;
  *(v22 + 88) = v52;
  *(v22 + 96) = v44;
  v45 = v56;
  *(v22 + 104) = v54;
  *(v22 + 112) = v45;
  *(v22 + 144) = v58;
  v46 = v62;
  *(v22 + 120) = v60;
  *(v22 + 128) = v46;
  *(v22 + 136) = v64 & 1;
  return v22;
}

unint64_t Badge.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v150 = a2;
  v135 = sub_24F91F6B8();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_24F9285B8();
  v149 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v141 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v143 = &v114 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v7 - 8);
  v138 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v140 = &v114 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v114 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v137 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v136 = &v114 - v18;
  MEMORY[0x28223BE20](v19);
  v139 = &v114 - v20;
  MEMORY[0x28223BE20](v21);
  v146 = &v114 - v22;
  MEMORY[0x28223BE20](v23);
  v147 = &v114 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v114 - v26;
  v28 = sub_24F928E68();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v33 = v28;
  v36 = *(v15 + 8);
  v34 = v15 + 8;
  v35 = v36;
  (v36)(v27, v14);
  if ((*(v29 + 48))(v13, 1, v33) == 1)
  {
    sub_24E601704(v13, qword_27F221C40, &unk_24F967D80);
    v37 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v38 = 0x746E65746E6F63;
    v39 = v148;
    v38[1] = 0xE700000000000000;
    v38[2] = v39;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    (*(v149 + 8))(v150, v157);
    (v35)(v32, v14);
    return v34;
  }

  v144 = v32;
  v145 = v14;
  v142 = v34;
  v34 = v157;
  (*(v29 + 32))(v31, v13, v33);
  v40 = v33;
  v41 = sub_24F928E48();
  if (!v41)
  {
    v48 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v49 = MEMORY[0x277D84F90];
    *v50 = 0x746E65746E6F63;
    v50[1] = 0xE700000000000000;
    v50[2] = v148;
    v50[3] = v49;
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D22540], v48);
    swift_willThrow();
    (*(v149 + 8))(v150, v34);
    (v35)(v144, v145);
    (*(v29 + 8))(v31, v40);
    return v34;
  }

  v130 = v41;
  v131 = v31;
  v132 = v33;
  v42 = v147;
  v43 = v144;
  sub_24F928398();
  sub_24F025168();
  sub_24F928248();
  v44 = v145;
  (v35)(v42, v145);
  if (v156 == 15)
  {
    v45 = v34;

    v34 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v46 = 1701869940;
    v47 = v148;
    v46[1] = 0xE400000000000000;
    v46[2] = v47;
    (*(*(v34 - 8) + 104))(v46, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v149 + 8))(v150, v45);
    (v35)(v43, v44);
    (*(v29 + 8))(v131, v132);
    return v34;
  }

  v128 = v29;
  v126 = v156;
  sub_24F928398();
  sub_24F0251BC();
  sub_24F928248();
  (v35)(v42, v44);
  v125 = v156;
  sub_24F928398();
  v124 = sub_24F928348();
  v129 = v51;
  (v35)(v42, v44);
  sub_24F928398();
  v123 = sub_24F928348();
  v53 = v52;
  (v35)(v42, v44);
  sub_24F928398();
  v122 = sub_24F928348();
  v34 = v54;
  (v35)(v42, v44);
  v55 = v146;
  sub_24F928398();
  sub_24F928348();
  v57 = v56;
  (v35)(v55, v44);
  if (!v57)
  {

    v64 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v66 = v35;
    swift_allocError();
    v67 = v65;
    strcpy(v65, "leadingValue");
    *(v65 + 13) = 0;
    *(v65 + 14) = -5120;
LABEL_16:
    *(v65 + 16) = v148;
    v70 = MEMORY[0x277D22530];
LABEL_17:
    (*(*(v64 - 8) + 104))(v67, *v70, v64);
    swift_willThrow();
    (*(v149 + 8))(v150, v157);
    v66(v43, v44);
    goto LABEL_19;
  }

  v127 = v53;
  v146 = v34;
  v34 = sub_24F92CB88();

  if (v34 >= 3)
  {

    v64 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v66 = v35;
    swift_allocError();
    v67 = v68;
    v69 = MEMORY[0x277D84F90];
    strcpy(v68, "leadingValue");
    *(v68 + 13) = 0;
    *(v68 + 14) = -5120;
    *(v68 + 16) = v148;
    *(v68 + 24) = v69;
    v70 = MEMORY[0x277D22540];
    goto LABEL_17;
  }

  v121 = v34;
  v34 = 0x656C797473;
  v58 = v139;
  sub_24F928398();
  sub_24F928348();
  v60 = v59;
  (v35)(v58, v44);
  if (!v60)
  {

    v64 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v66 = v35;
    swift_allocError();
    v67 = v65;
    *v65 = 0x656C797473;
    *(v65 + 8) = 0xE500000000000000;
    goto LABEL_16;
  }

  v61 = sub_24F92CB88();

  if (v61)
  {
    v63 = v144;
    v62 = v145;
    if (v61 != 1)
    {

      v90 = sub_24F92AC38();
      sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v91 = MEMORY[0x277D84F90];
      *v92 = 0x656C797473;
      v92[1] = 0xE500000000000000;
      v92[2] = v148;
      v92[3] = v91;
      (*(*(v90 - 8) + 104))(v92, *MEMORY[0x277D22540], v90);
      swift_willThrow();
      (*(v149 + 8))(v150, v157);
      (v35)(v63, v62);
      goto LABEL_19;
    }

    v117 = 1;
  }

  else
  {
    v117 = 0;
    v62 = v145;
  }

  v72 = v149;
  v73 = v147;
  sub_24F928398();
  v116 = sub_24F928348();
  v120 = v74;
  (v35)(v73, v62);
  sub_24F928398();
  v115 = sub_24F928348();
  v119 = v75;
  (v35)(v73, v62);
  sub_24F929608();
  sub_24F928398();
  v76 = *(v72 + 16);
  v77 = v150;
  v78 = v157;
  v76(v143, v150, v157);
  sub_24F929548();
  v79 = v141;
  v76(v141, v77, v78);
  type metadata accessor for Action(0);
  sub_24F928398();
  v118 = static Action.tryToMakeInstance(byDeserializing:using:)(v73, v79);
  v139 = v35;
  (v35)(v73, v145);
  v80 = v76;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v76(v143, v79, v78);
  sub_24F025948(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  if (v126 == 4 && !v156)
  {

    v81 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v82 = 0x6B726F77747261;
    v82[1] = 0xE700000000000000;
    v82[2] = v148;
    (*(*(v81 - 8) + 104))(v82, *MEMORY[0x277D22530], v81);
    swift_willThrow();

    v34 = *(v149 + 8);
    (v34)(v150, v78);
    (v139)(v144, v145);
    (v34)(v141, v78);
    sub_24E601704(v140, &qword_27F213E68, &unk_24F93BC80);
LABEL_19:
    (*(v128 + 8))(v131, v132);
    return v34;
  }

  v148 = v156;
  sub_24F928398();
  v80(v143, v141, v78);
  sub_24F929548();
  v147 = v156;
  v83 = v136;
  sub_24F928398();
  v84 = sub_24F928278();
  v85 = v145;
  v86 = v139;
  (v139)(v83, v145);
  v87 = v137;
  sub_24F928398();
  v88 = sub_24F928348();
  if (v89)
  {
    *&v153 = v88;
    *(&v153 + 1) = v89;
  }

  else
  {
    v93 = v133;
    sub_24F91F6A8();
    v94 = sub_24F91F668();
    v96 = v95;
    (*(v134 + 8))(v93, v135);
    *&v153 = v94;
    *(&v153 + 1) = v96;
  }

  sub_24F92C7F8();
  v86(v87, v85);
  LODWORD(v143) = (v84 == 2) | v84;
  v97 = v138;
  sub_24E60169C(v140, v138, &qword_27F213E68, &unk_24F93BC80);
  type metadata accessor for Badge(0);
  v34 = swift_allocObject();
  *(v34 + 152) = 0u;
  *(v34 + 168) = 0u;
  sub_24E60169C(&v156, &v153, &qword_27F235830, &qword_24F93B8C0);
  v98 = v146;
  v99 = v127;
  if (*(&v154 + 1))
  {
    v100 = v154;
    *(v34 + 184) = v153;
    *(v34 + 200) = v100;
    *(v34 + 216) = v155;
  }

  else
  {
    v101 = v133;
    sub_24F91F6A8();
    v102 = sub_24F91F668();
    v104 = v103;
    (*(v134 + 8))(v101, v135);
    v151 = v102;
    v152 = v104;
    sub_24F92C7F8();
    sub_24E601704(&v153, &qword_27F235830, &qword_24F93B8C0);
  }

  v105 = v145;
  v106 = v128;
  v107 = *(v149 + 8);
  v108 = v157;
  v107(v150, v157);
  (v139)(v144, v105);
  sub_24E601704(&v156, &qword_27F235830, &qword_24F93B8C0);
  v107(v141, v108);
  sub_24E601704(v140, &qword_27F213E68, &unk_24F93BC80);
  (*(v106 + 8))(v131, v132);
  sub_24E65E0D4(v97, v34 + OBJC_IVAR____TtC12GameStoreKit5Badge_impressionMetrics);
  *(v34 + 16) = v126;
  *(v34 + 17) = v125;
  v109 = v129;
  *(v34 + 40) = v124;
  *(v34 + 48) = v109;
  *(v34 + 24) = v123;
  *(v34 + 32) = v99;
  v110 = v130;
  *(v34 + 64) = v98;
  *(v34 + 72) = v110;
  *(v34 + 56) = v122;
  *(v34 + 80) = v121;
  *(v34 + 81) = v117;
  v111 = v120;
  *(v34 + 88) = v116;
  *(v34 + 96) = v111;
  v112 = v119;
  *(v34 + 104) = v115;
  *(v34 + 112) = v112;
  *(v34 + 144) = v118;
  v113 = v147;
  *(v34 + 120) = v148;
  *(v34 + 128) = v113;
  *(v34 + 136) = v143 & 1;
  return v34;
}

unint64_t sub_24F025168()
{
  result = qword_27F237238;
  if (!qword_27F237238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237238);
  }

  return result;
}

unint64_t sub_24F0251BC()
{
  result = qword_27F237240;
  if (!qword_27F237240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237240);
  }

  return result;
}

uint64_t type metadata accessor for Badge(uint64_t a1)
{
  result = qword_27F237278;
  if (!qword_27F237278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F02525C()
{
  result = 0x676E69746172;
  switch(*(v0 + 16))
  {
    case 1:
      result = 0x52746E65746E6F63;
      break;
    case 2:
      result = 0x736F507472616863;
      break;
    case 3:
      result = 0x4373726F74696465;
      break;
    case 4:
    case 0xB:
    case 0xD:
      v2 = sub_24F92B198();

      result = v2;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x69746F4D68676968;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x5073646E65697266;
      break;
    case 0xE:
      result = 0x726564726F657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Badge.deinit()
{

  sub_24E601704(v0 + 152, &qword_27F2129B0, &unk_24F945320);
  sub_24E6585F8(v0 + 184);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Badge_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t Badge.__deallocating_deinit()
{
  Badge.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F0255F0()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

unint64_t sub_24F025654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = Badge.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F02568C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 152, a1, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24F0256E8()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

unint64_t sub_24F02575C()
{
  result = qword_27F237248;
  if (!qword_27F237248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237248);
  }

  return result;
}

unint64_t sub_24F0257B4()
{
  result = qword_27F237250;
  if (!qword_27F237250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237250);
  }

  return result;
}

unint64_t sub_24F02580C()
{
  result = qword_27F237258;
  if (!qword_27F237258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237258);
  }

  return result;
}

unint64_t sub_24F025864()
{
  result = qword_27F237260;
  if (!qword_27F237260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237260);
  }

  return result;
}

uint64_t sub_24F025948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F025990()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24F025A24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 152, a2, &qword_27F2129B0, &unk_24F945320);
}

void sub_24F025ACC(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t MetricsPipelineTransformer.__allocating_init(aggregator:recorder:configuration:additionalRecorders:decorators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  v8 = v7 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState;
  v9 = sub_24F929F48();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  v11 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v12 = v11[6];
  v13 = sub_24F9290F8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8 + v12, a3, v13);
  *(v8 + v11[5]) = a2;
  *(v8 + v11[7]) = a4;
  *(v8 + v11[8]) = a5;
  (*(v14 + 8))(a3, v13);
  (*(v10 + 8))(a1, v9);
  v15 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v7 + v15) = MEMORY[0x277D84F90];
  return v7;
}

uint64_t MetricsPipelineTransformer.State.aggregator.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_24F929F48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v2, v4);
}

uint64_t MetricsPipelineTransformer.State.aggregator.setter(uint64_t a1, __n128 a2)
{
  v4 = sub_24F929F48();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t MetricsPipelineTransformer.State.baseRecorder.getter()
{
  type metadata accessor for MetricsPipelineTransformer.State(0);
}

void MetricsPipelineTransformer.State.baseRecorder.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t MetricsPipelineTransformer.State.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 24);
  v4 = sub_24F9290F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MetricsPipelineTransformer.State.configuration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 24);
  v4 = sub_24F9290F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double MetricsPipelineTransformer.State.additionalRecorders.getter()
{
  type metadata accessor for MetricsPipelineTransformer.State(0);

  return result;
}

uint64_t MetricsPipelineTransformer.State.additionalRecorders.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

double MetricsPipelineTransformer.State.decorators.getter()
{
  type metadata accessor for MetricsPipelineTransformer.State(0);

  return result;
}

uint64_t MetricsPipelineTransformer.State.decorators.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPipelineTransformer.init(aggregator:recorder:configuration:additionalRecorders:decorators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  *(v6 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  v9 = v6 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState;
  v10 = sub_24F929F48();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  v12 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v13 = v12[6];
  v14 = sub_24F9290F8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v9 + v13, a3, v14);
  *(v9 + v12[5]) = a2;
  *(v9 + v12[7]) = a4;
  *(v9 + v12[8]) = a5;
  (*(v15 + 8))(a3, v14);
  (*(v11 + 8))(a1, v10);
  v16 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v6 + v16) = MEMORY[0x277D84F90];

  return v6;
}

uint64_t MetricsPipelineTransformer.transform(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24E619A88(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24E619A88((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_24F0266F8;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_24F0266C0()
{

  return swift_deallocObject();
}

uint64_t MetricsPipelineTransformer.objectGraphDependencies()()
{
  v0 = sub_24F928188();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929158();

  sub_24F928158();
  sub_24F928FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8, &qword_24F9BF190);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  (*(v1 + 16))(v5 + v4, v3, v0);
  v6 = sub_24F928F68();
  (*(v1 + 8))(v3, v0);
  return v6;
}

double sub_24F0268BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F929F48();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9290F8();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  MEMORY[0x28223BE20](v12);
  v51 = &v48 - v13;
  v14 = type metadata accessor for MetricsPipelineTransformer.State(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  v17 = sub_24F928FB8();
  sub_24F0270A4(a1 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState, v16);
  v18 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = *(v19 + 16);
  v57 = a1;
  if (v20)
  {

    v21 = v19 + 40;
    do
    {
      v22 = *(v21 - 8);
      v58[0] = v17;

      v22(v16, v58);

      v21 += 16;
      --v20;
    }

    while (v20);
  }

  v23 = swift_allocBox();
  v25 = v24;
  sub_24F027108(v16, v24);

  v26 = sub_24F929DE8();

  v48 = v23;

  swift_beginAccess();
  *(v25 + v14[5]) = v26;

  v27 = *(*(v25 + v14[7]) + 16);
  v52 = a2;
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213998, &unk_24F9BF220);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24F93DE60;
    v29 = *(v25 + v14[5]);
    v30 = sub_24F929E08();
    v31 = MEMORY[0x277D221A8];
    *(v28 + 56) = v30;
    *(v28 + 64) = v31;
    *(v28 + 32) = v29;
    v58[0] = v28;

    sub_24EA0B8E4(v32);
    v33 = sub_24F92A248();
    swift_allocObject();
    v34 = sub_24F92A238();
    v35 = MEMORY[0x277D222E8];
  }

  else
  {
    v34 = *(v25 + v14[5]);
    v33 = sub_24F929E08();

    v35 = MEMORY[0x277D221A8];
  }

  v58[3] = v33;
  v58[4] = v35;
  v58[0] = v34;
  v36 = v14[6];
  v37 = v55;
  v38 = v56;
  v39 = *(v55 + 16);
  v40 = v49;
  v39(v49, v25 + v36, v56);
  v41 = v53;
  v42 = v50;
  v43 = v25;
  v44 = v54;
  (*(v53 + 16))(v50, v43, v54);
  sub_24F9290C8();
  (*(v41 + 8))(v42, v44);
  v45 = *(v37 + 8);
  v45(v40, v38);
  v46 = v51;
  sub_24F9290B8();
  v45(v11, v38);
  *(v57 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 1;
  v39(v11, v46, v38);
  sub_24F929118();

  v45(v46, v38);
  __swift_destroy_boxed_opaque_existential_1(v58);

  return result;
}

id sub_24F026DB4(void *a1, uint64_t a2)
{
  v2 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v3 = swift_projectBox();
  swift_beginAccess();
  v4 = *(v3 + *(v2 + 32));
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = a1;
    v7 = v4 + 40;
    do
    {
      v8 = *(v7 - 8);
      v12 = v6;

      v8(&v11, &v12);

      v6 = v11;
      v7 += 16;
      --v5;
    }

    while (v5);

    return v6;
  }

  else
  {

    return a1;
  }
}

uint64_t MetricsPipelineTransformer.copy()()
{
  v1 = type metadata accessor for MetricsPipelineTransformer.State(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F0270A4(v0 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState, v3);
  v4 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  sub_24F027108(v3, v6 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState);
  v7 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return v6;
}

uint64_t MetricsPipelineTransformer.deinit()
{
  sub_24F02716C(v0 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState);

  return v0;
}

uint64_t MetricsPipelineTransformer.__deallocating_deinit()
{
  sub_24F02716C(v0 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState);

  return swift_deallocClassInstance();
}

uint64_t sub_24F0270A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPipelineTransformer.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F027108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPipelineTransformer.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F02716C(uint64_t a1)
{
  v2 = type metadata accessor for MetricsPipelineTransformer.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F0271F0(uint64_t a1)
{
  result = type metadata accessor for MetricsPipelineTransformer.State(319);
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

uint64_t sub_24F0272D8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_24F929F48();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_24F9290F8();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24F027410(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  result = sub_24F929F48();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v12 = sub_24F9290F8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

void sub_24F027534(uint64_t a1, __n128 a2)
{
  sub_24F929F48();
  if (v2 <= 0x3F)
  {
    sub_24F929E08();
    if (v3 <= 0x3F)
    {
      sub_24F9290F8();
      if (v4 <= 0x3F)
      {
        sub_24F027630(319, &qword_27F2372C0, &qword_27F222260, &unk_24F93B540);
        if (v5 <= 0x3F)
        {
          sub_24F027630(319, &qword_27F2372C8, &qword_27F2372D0, &qword_24F9BF218);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F027630(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24F92B6E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t ProductReviewActions.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v38 = *v4;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v47 = sub_24F928388();
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;

  v51 = a1;
  sub_24F928398();
  v48 = v8;
  v41 = *(v8 + 16);
  v42 = v8 + 16;
  v41(v12, a2, v7);
  type metadata accessor for TapToRate(0);
  swift_allocObject();
  v20 = TapToRate.init(deserializing:using:)(v19, v12);
  v49 = v7;
  if (v3)
  {
    v21 = a2;

    v20 = 0;
    v40 = 0;
  }

  else
  {
    v40 = 0;
    v21 = a2;
  }

  v45 = OBJC_IVAR____TtC12GameStoreKit20ProductReviewActions_tapToRate;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20ProductReviewActions_tapToRate) = v20;
  type metadata accessor for Action(0);
  sub_24F928398();
  v22 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v21);
  v23 = *(v50 + 8);
  v24 = v47;
  v23(v16, v47);
  v39 = OBJC_IVAR____TtC12GameStoreKit20ProductReviewActions_writeReviewAction;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20ProductReviewActions_writeReviewAction) = v22;
  v25 = v45;
  sub_24F928398();
  v26 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v21);
  v46 = v23;
  v23(v16, v24);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20ProductReviewActions_supportAction) = v26;
  if (*(v4 + v25) || *(v4 + v39) || (, , v26))
  {

    v27 = v43;
    v28 = v51;
    (*(v50 + 16))(v43, v51, v24);
    v29 = v44;
    v30 = v49;
    v41(v44, v21, v49);
    v31 = v40;
    v32 = ProductRatingsAndReviewsComponent.init(deserializing:using:)(v27, v29);
    if (v31)
    {
      (*(v48 + 8))(v21, v30);
      return v46(v28, v24);
    }

    else
    {
      v34 = v32;
      (*(v48 + 8))(v21, v30);
      v46(v28, v24);
      return v34;
    }
  }

  else
  {
    v35 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v36 = 0xD000000000000029;
    v36[1] = 0x800000024FA68B70;
    v36[2] = v38;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v48 + 8))(v21, v49);
    v46(v51, v24);

    type metadata accessor for ProductReviewActions(0);
    return swift_deallocPartialClassInstance();
  }
}

uint64_t type metadata accessor for ProductReviewActions(uint64_t a1)
{
  result = qword_27F2372D8;
  if (!qword_27F2372D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24F027CF8()
{

  return result;
}

uint64_t ProductReviewActions.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return v0;
}

uint64_t ProductReviewActions.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t static VideoConfiguration.defaultConfiguration.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_24F922348();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = type metadata accessor for VideoConfiguration(0);
  v8 = v7[5];
  v6(&a1[v8], 1, 1, v5);
  v9 = &a1[v7[12]];
  *a1 = 1;
  result = sub_24F028178(v4, &a1[v8]);
  *&a1[v7[6]] = 15;
  *&a1[v7[7]] = 15;
  a1[v7[8]] = 0;
  a1[v7[9]] = 1;
  a1[v7[10]] = 1;
  a1[v7[11]] = 0;
  *v9 = 0;
  v9[8] = 1;
  return result;
}

uint64_t VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, _BYTE *a9@<X8>, uint64_t a10, char a11)
{
  v14 = *a1;
  v15 = *a3;
  v16 = *a4;
  v17 = type metadata accessor for VideoConfiguration(0);
  v18 = v17[5];
  v19 = sub_24F922348();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[12]];
  *a9 = v14;
  result = sub_24F028178(a2, &a9[v18]);
  *&a9[v17[6]] = v15;
  *&a9[v17[7]] = v16;
  a9[v17[8]] = a5;
  a9[v17[9]] = a6;
  a9[v17[10]] = a7;
  a9[v17[11]] = a8;
  *v20 = a10;
  v20[8] = a11 & 1;
  return result;
}

uint64_t type metadata accessor for VideoConfiguration(uint64_t a1)
{
  result = qword_27F2372F0;
  if (!qword_27F2372F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F028178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VideoFillMode.contentMode.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id VideoFillMode.videoGravity.getter()
{
  v1 = MEMORY[0x277CE5DD8];
  if (!*v0)
  {
    v1 = MEMORY[0x277CE5DD0];
  }

  return *v1;
}

uint64_t VideoFillMode.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t VideoConfiguration.aspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoConfiguration(0) + 20);

  return sub_24F028328(v3, a1);
}

uint64_t sub_24F028328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VideoConfiguration.aspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VideoConfiguration(0) + 20);

  return sub_24F028178(a1, v3);
}

uint64_t VideoConfiguration.playbackControls.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for VideoConfiguration(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t VideoConfiguration.playbackControls.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoConfiguration(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t VideoConfiguration.autoPlayPlaybackControls.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for VideoConfiguration(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t VideoConfiguration.autoPlayPlaybackControls.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoConfiguration(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t VideoConfiguration.canPlayFullScreen.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t VideoConfiguration.allowsAutoPlay.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t VideoConfiguration.looping.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t VideoConfiguration.roundedCorners.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t VideoConfiguration.deviceCornerRadiusFactor.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for VideoConfiguration(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t _s12GameStoreKit18VideoConfigurationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_24F922348();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237308, &qword_24F9BF398);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v25 = type metadata accessor for VideoConfiguration(0);
  v14 = v25[5];
  v15 = *(v11 + 48);
  sub_24F028328(&a1[v14], v13);
  sub_24F028328(&a2[v14], &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24F028328(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24F028F98();
      v17 = sub_24F92AFF8();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_24E601704(v13, &qword_27F214148, &qword_24F93C520);
      if (v17)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_24E601704(v13, &qword_27F237308, &qword_24F9BF398);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_24E601704(v13, &qword_27F214148, &qword_24F93C520);
LABEL_9:
  if (*&a1[v25[6]] != *&a2[v25[6]] || *&a1[v25[7]] != *&a2[v25[7]] || a1[v25[8]] != a2[v25[8]] || a1[v25[9]] != a2[v25[9]] || a1[v25[10]] != a2[v25[10]] || a1[v25[11]] != a2[v25[11]])
  {
    return 0;
  }

  v20 = v25[12];
  v21 = &a1[v20];
  v22 = a1[v20 + 8];
  v23 = &a2[v20];
  result = v23[8];
  if ((v22 & 1) == 0)
  {
    return (*v21 == *v23) & ~result;
  }

  return result;
}

unint64_t sub_24F028C4C()
{
  result = qword_27F2372E8;
  if (!qword_27F2372E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2372E8);
  }

  return result;
}

uint64_t sub_24F028CC4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_24F028D8C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F028E38(uint64_t a1)
{
  sub_24F028EF0(319);
  if (v1 <= 0x3F)
  {
    sub_24F028F48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F028EF0(uint64_t a1)
{
  if (!qword_27F237300)
  {
    sub_24F922348();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F237300);
    }
  }
}

void sub_24F028F48()
{
  if (!qword_27F2191B8)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2191B8);
    }
  }
}

unint64_t sub_24F028F98()
{
  result = qword_27F237310;
  if (!qword_27F237310)
  {
    sub_24F922348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237310);
  }

  return result;
}

double OverlayCardLockup.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double OverlayCardLockup.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OverlayCardLockup(0);
  sub_24E60169C(v1 + *(v3 + 40), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t OverlayCardLockup.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for OverlayCardLockup(0);
  sub_24E60169C(v1 + *(v6 + 44), v5, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v5, a1);
}

uint64_t sub_24F029310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for OverlayCardLockup(0);
  sub_24E60169C(a1 + *(v7 + 44), v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v6, a2);
}

uint64_t sub_24F029458(uint64_t a1)
{
  v2 = sub_24F0298B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F029494(uint64_t a1)
{
  v2 = sub_24F0298B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayCardLockup.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237318, &qword_24F9BF3A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F0298B4();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for OverlayCardLockup(0);
    v8[14] = 1;
    type metadata accessor for OverlayButtonLabelAccessory(0);
    sub_24F029908(&qword_27F232DB8, type metadata accessor for OverlayButtonLabelAccessory, &unk_24F9D7B44);
    sub_24F92CCF8();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F92CCB8();
    v8[10] = 5;
    sub_24F929608();
    sub_24F029908(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[8] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F0298B4()
{
  result = qword_27F237320;
  if (!qword_27F237320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237320);
  }

  return result;
}

uint64_t sub_24F029908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OverlayCardLockup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v43);
  v44 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0, &qword_24F9AB010);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237328, &qword_24F9BF3A8);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v41 - v8;
  v10 = type metadata accessor for OverlayCardLockup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for OverlayButtonLabelAccessory(0);
  v16 = *(*(v15 - 8) + 56);
  v54 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = v10[9];
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v52 = v17;
  v19(&v12[v17], 1, 1, v18);
  v20 = &v12[v10[10]];
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  sub_24E61DA68(&v55, v20, qword_27F21B590, &unk_24F93BE30);
  v21 = v10[11];
  v22 = sub_24F92A6D8();
  v23 = *(*(v22 - 8) + 56);
  v51 = v21;
  v23(&v12[v21], 1, 1, v22);
  v24 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24F0298B4();
  v48 = v9;
  v25 = v50;
  sub_24F92D108();
  if (v25)
  {
    v28 = v54;
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_24E601704(&v12[v28], &qword_27F232DC0, &qword_24F9AB010);
    v29 = v52;

    sub_24E601704(&v12[v29], &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v20, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v12[v51], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v50 = v18;
    v41 = v10;
    v27 = v45;
    v26 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v30 = v56;
    *v12 = v55;
    *(v12 + 1) = v30;
    *(v12 + 4) = v57;
    LOBYTE(v55) = 1;
    sub_24F029908(&qword_27F232DD0, type metadata accessor for OverlayButtonLabelAccessory, &unk_24F9D7B1C);
    sub_24F92CC18();
    v31 = v47;
    sub_24E61DA68(v27, &v12[v54], &qword_27F232DC0, &qword_24F9AB010);
    LOBYTE(v55) = 2;
    v32 = sub_24F92CC28();
    v33 = v41;
    v34 = &v12[v41[6]];
    *v34 = v32;
    v34[1] = v35;
    LOBYTE(v55) = 3;
    v36 = sub_24F92CBC8();
    v37 = &v12[v33[7]];
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v55) = 4;
    v12[v33[8]] = sub_24F92CBD8();
    LOBYTE(v55) = 5;
    sub_24F029908(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v26, &v12[v52], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v58 = 6;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v55, v20, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v55) = 7;
    sub_24E65CAA0();
    v39 = v44;
    sub_24F92CC68();
    (*(v31 + 8))(v48, v49);
    sub_24E61DA68(v39, &v12[v51], &qword_27F215440, &unk_24F942BD0);
    sub_24F02AEC4(v12, v42, type metadata accessor for OverlayCardLockup);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_24F02A1FC(v12);
  }
}

uint64_t sub_24F02A1FC(uint64_t a1)
{
  v2 = type metadata accessor for OverlayCardLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F02A2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 44), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

double sub_24F02A380@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24F02A3D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverlayCardLockup(0);
  sub_24E60169C(a1 + *(v4 + 40), v7, qword_27F24EC90, &unk_24F93C1D0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24F02A4F0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0, &qword_24F9AB010);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24F02A694(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0, &qword_24F9AB010);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

unint64_t sub_24F02A838()
{
  result = qword_27F237348;
  if (!qword_27F237348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237348);
  }

  return result;
}

unint64_t sub_24F02A890()
{
  result = qword_27F237350;
  if (!qword_27F237350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237350);
  }

  return result;
}

unint64_t sub_24F02A8E8()
{
  result = qword_27F237358;
  if (!qword_27F237358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237358);
  }

  return result;
}

double sub_24F02A93C@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for OverlayCardLockup(0);
  v6 = v5[5];
  v7 = type metadata accessor for OverlayButtonLabelView(0);
  sub_24E60169C(a1 + v6, &a2[v7[5]], &qword_27F232DC0, &qword_24F9AB010);
  v8 = (a1 + v5[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (a1 + v5[7]);
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v11) = *(a1 + v5[8]);
  *a2 = 1;
  v14 = &a2[v7[6]];
  *v14 = v9;
  v14[1] = v10;
  v15 = &a2[v7[7]];
  *v15 = v12;
  v15[1] = v13;
  a2[v7[8]] = v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237380, &qword_24F9BF678);
  v17 = MEMORY[0x277CDFC08];
  sub_24F02AEC4(v2, &a2[*(v16 + 36)], MEMORY[0x277CDFC08]);
  v18 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237388, &unk_24F9BF680) + 36)];
  sub_24F02AEC4(v2, v18, v17);
  v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEB8, &qword_24F94FAD8) + 36)] = 0;

  return result;
}

uint64_t sub_24F02AA98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 64) = v3;
  *(a1 + 72) = sub_24F029908(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 40));
  return sub_24F02AEC4(v1, boxed_opaque_existential_1, MEMORY[0x277CDFC08]);
}

uint64_t sub_24F02AB30(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24F02AEC4(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverlayCardLockupComponent);
  sub_24F029908(&qword_27F237370, type metadata accessor for OverlayCardLockupComponent, &unk_24F9BF60C);
  return sub_24F9218E8();
}

uint64_t sub_24F02AC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924258();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F02AC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924258();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F02AD2C(uint64_t a1)
{
  result = sub_24F924258();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F02AEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F02AF30()
{
  result = qword_27F237390;
  if (!qword_27F237390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237388, &unk_24F9BF680);
    sub_24F02AFE8();
    sub_24E602068(&qword_27F21AED8, &qword_27F21AEB8, &qword_24F94FAD8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237390);
  }

  return result;
}

unint64_t sub_24F02AFE8()
{
  result = qword_27F237398[0];
  if (!qword_27F237398[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237380, &qword_24F9BF678);
    sub_24F029908(&qword_27F232E50, type metadata accessor for OverlayButtonLabelView, &unk_24F9D80F0);
    sub_24E602068(&qword_27F217098, &qword_27F2170A0, &unk_24F967B30, &unk_24FA0D448);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F237398);
  }

  return result;
}

uint64_t sub_24F02B0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237420, &qword_24F9BF708);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237428, &unk_24F9BF710);
  v51 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8, &qword_24F9423C0);
  sub_24F924038();
  v50 = *(a1 + 24);
  v82 = v50;
  v83 = sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
  v4 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  v5 = sub_24F924038();
  v6 = sub_24E602068(&qword_27F237430, &qword_27F237420, &qword_24F9BF708, MEMORY[0x277D83980]);
  v77 = v3;
  v78 = MEMORY[0x277D837D0];
  v79 = v5;
  v80 = v6;
  v81 = MEMORY[0x277D837E0];
  sub_24F927248();
  v75 = sub_24F02E700();
  WitnessTable = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v74 = MEMORY[0x277CDFB38];
  v47 = v4;
  v71 = swift_getWitnessTable();
  v72 = MEMORY[0x277CDF690];
  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x277CDF918];
  v67 = swift_getWitnessTable();
  v68 = MEMORY[0x277CDF748];
  v66 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F927128();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237458, &qword_24F9BF730);
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v7 = sub_24F927128();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = sub_24F924038();
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v37 = sub_24F924038();
  v42 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v35 = &v34 - v13;
  v39 = sub_24F924038();
  v45 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v34 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237460, &qword_24F9BF738);
  v44 = sub_24F924038();
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v43 = &v34 - v17;
  v55 = v51;
  v56 = v50;
  v18 = v48;
  v57 = v48;
  sub_24F927618();
  sub_24F927118();
  sub_24F925868();
  v19 = swift_getWitnessTable();
  sub_24F926A48();
  (*(v40 + 8))(v9, v7);
  sub_24F9257F8();
  v64 = v19;
  v20 = MEMORY[0x277CDF918];
  v65 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  v22 = v35;
  sub_24F926A48();
  (*(v41 + 8))(v12, v10);
  v62 = v21;
  v63 = v20;
  v23 = v37;
  v24 = swift_getWitnessTable();
  v25 = v36;
  sub_24F926488();
  (*(v42 + 8))(v22, v23);
  v52 = v51;
  v53 = v50;
  v54 = v18;
  sub_24F927618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237468, &qword_24F9BF740);
  v60 = v24;
  v61 = MEMORY[0x277CE0688];
  v26 = v39;
  v27 = swift_getWitnessTable();
  sub_24F02E8DC();
  v28 = v38;
  sub_24F9268D8();
  (*(v45 + 8))(v25, v26);
  v29 = sub_24E602068(&qword_27F237488, &qword_27F237460, &qword_24F9BF738, MEMORY[0x277CE03E8]);
  v58 = v27;
  v59 = v29;
  v30 = v44;
  swift_getWitnessTable();
  v31 = v43;
  sub_24E7896B8();
  v32 = *(v46 + 8);
  v32(v28, v30);
  sub_24E7896B8();
  return (v32)(v31, v30);
}

uint64_t sub_24F02B98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v37 = a2;
  v38 = a1;
  v42 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237458, &qword_24F9BF730);
  MEMORY[0x28223BE20](v41);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237420, &qword_24F9BF708);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237428, &unk_24F9BF710);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8, &qword_24F9423C0);
  sub_24F924038();
  v9 = sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
  v50 = a3;
  v51 = v9;
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  v10 = sub_24F924038();
  v11 = sub_24E602068(&qword_27F237430, &qword_27F237420, &qword_24F9BF708, MEMORY[0x277D83980]);
  v45 = v8;
  v46 = MEMORY[0x277D837D0];
  v47 = v10;
  v48 = v11;
  v49 = MEMORY[0x277D837E0];
  sub_24F927248();
  v12 = sub_24F02E700();
  WitnessTable = swift_getWitnessTable();
  v44[11] = v12;
  v44[12] = WitnessTable;
  v44[9] = swift_getWitnessTable();
  v44[10] = MEMORY[0x277CDFB38];
  v44[7] = swift_getWitnessTable();
  v44[8] = MEMORY[0x277CDF690];
  v44[5] = swift_getWitnessTable();
  v44[6] = MEMORY[0x277CDF918];
  v44[3] = swift_getWitnessTable();
  v44[4] = MEMORY[0x277CDF748];
  v44[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  v14 = sub_24F927128();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v33 = &v33 - v19;
  v20 = v36;
  v21 = v37;
  v43[8] = v37;
  v43[9] = v36;
  v22 = v38;
  v43[10] = v38;
  sub_24F927618();
  sub_24F927118();
  v34 = swift_getWitnessTable();
  sub_24E7896B8();
  v35 = *(v15 + 8);
  v35(v17, v14);
  v43[2] = v21;
  v43[3] = v20;
  v43[4] = v22;
  v24 = type metadata accessor for AchievementsCardFanView(0, v21, v20, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374C8, &qword_24F9BF770);
  v26 = sub_24E602068(&qword_27F2374D0, &qword_27F2374C8, &qword_24F9BF770, MEMORY[0x277CE1148]);
  v27 = v39;
  sub_24F02DAD4(sub_24F02EB30, v43, v24, v25, v26, v39);
  v28 = v33;
  (*(v15 + 16))(v17, v33, v14);
  v45 = v17;
  v29 = v40;
  sub_24E60169C(v27, v40, &qword_27F237458, &qword_24F9BF730);
  v46 = v29;
  v44[0] = v14;
  v44[1] = v41;
  v43[11] = v34;
  v43[12] = sub_24F02EB3C(&qword_27F2374D8, &qword_27F237458, &qword_24F9BF730, sub_24F02EBC0);
  sub_24F57BA64(&v45, 2uLL, v44);
  sub_24E601704(v27, &qword_27F237458, &qword_24F9BF730);
  v30 = v28;
  v31 = v35;
  v35(v30, v14);
  sub_24E601704(v29, &qword_27F237458, &qword_24F9BF730);
  return v31(v17, v14);
}

uint64_t sub_24F02BF88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v41 = a1;
  v43 = a4;
  v35 = a2;
  v30 = a3;
  v42 = type metadata accessor for AchievementsCardFanView(0, a2, a3, a5);
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237420, &qword_24F9BF708);
  v39 = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237428, &unk_24F9BF710);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8, &qword_24F9423C0);
  sub_24F924038();
  v9 = sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
  v60 = a3;
  v61 = v9;
  swift_getWitnessTable();
  v29[2] = sub_24F924E08();
  v31 = sub_24F924038();
  v32 = sub_24F924038();
  v34 = sub_24F924038();
  v36 = sub_24F924038();
  v10 = sub_24F924038();
  v33 = v10;
  v38 = sub_24E602068(&qword_27F237430, &qword_27F237420, &qword_24F9BF708, MEMORY[0x277D83980]);
  v55 = v8;
  v56 = MEMORY[0x277D837D0];
  v57 = v10;
  v58 = v38;
  v59 = MEMORY[0x277D837E0];
  v11 = sub_24F927248();
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  v17 = v41;
  v55 = *v41;
  v29[1] = swift_getKeyPath();
  v18 = v37;
  v19 = v17;
  v20 = v42;
  (*(v6 + 16))(v37, v19, v42);
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v35;
  *(v22 + 24) = v23;
  (*(v6 + 32))(v22 + v21, v18, v20);
  v24 = sub_24F02E700();

  WitnessTable = swift_getWitnessTable();
  v53 = v24;
  v54 = WitnessTable;
  v51 = swift_getWitnessTable();
  v52 = MEMORY[0x277CDFB38];
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x277CDF690];
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CDF918];
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x277CDF748];
  v28 = swift_getWitnessTable();
  sub_24F927228();
  v44 = v28;
  swift_getWitnessTable();
  sub_24E7896B8();
  v26 = *(v40 + 8);
  v26(v13, v11);
  sub_24E7896B8();
  return (v26)(v16, v11);
}

uint64_t sub_24F02C500@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v83 = a4;
  v87 = a3;
  v75 = a2;
  v102 = a5;
  v8 = type metadata accessor for AchievementCard(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237428, &unk_24F9BF710);
  MEMORY[0x28223BE20](v79);
  v81 = &v73 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8, &qword_24F9423C0);
  v84 = sub_24F924038();
  v13 = sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
  v119 = a4;
  v120 = v13;
  v91 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v89 = sub_24F924E08();
  v86 = sub_24F924038();
  v90 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v73 - v14;
  v88 = sub_24F924038();
  v92 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = &v73 - v15;
  v16 = sub_24F924038();
  v96 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v78 = &v73 - v17;
  v98 = v18;
  v19 = sub_24F924038();
  v97 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v94 = &v73 - v20;
  v99 = v21;
  v101 = sub_24F924038();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v93 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v95 = &v73 - v24;
  v118 = *(a2 + 32);
  v25 = a1[1];
  *&v116[0] = *a1;
  *(&v116[0] + 1) = v25;

  sub_24F92C7F8();
  v26 = a1[3];
  v77 = a1[2];
  v74 = v26;
  v27 = a1[5];
  v76 = a1[4];
  v73 = v27;
  v28 = type metadata accessor for Achievement(0);
  v29 = &v11[v9[9]];
  sub_24E60169C(a1 + v28[7], v29, &qword_27F213FB0, &qword_24F93E6B0);
  v30 = v28[8];
  v31 = type metadata accessor for AchievementBadgeModel(0);
  sub_24F02EF48(a1 + v30, v29 + v31[5], type metadata accessor for AchievementProgressStatus);

  v32 = sub_24F02D02C(a1);
  v34 = v33;
  v35 = sub_24F02D1D4(a1);
  v36 = (v29 + v31[6]);
  *v36 = v32;
  v36[1] = v34;
  v37 = (v29 + v31[7]);
  v38 = v78;
  *v37 = v35;
  v37[1] = v39;
  v40 = *(a1 + v28[10]);
  v41 = v75;
  LOBYTE(v32) = *(v75 + 40);
  sub_24F02EF48(a1 + v30, &v11[v9[12]], type metadata accessor for AchievementProgressStatus);
  v117 = 0;
  memset(v116, 0, sizeof(v116));
  v42 = v9[15];
  v43 = sub_24F92A6D8();
  (*(*(v43 - 8) + 56))(&v11[v42], 1, 1, v43);
  v44 = v9[16];
  v45 = sub_24F929608();
  (*(*(v45 - 8) + 56))(&v11[v44], 1, 1, v45);
  v46 = v74;
  *(v11 + 5) = v77;
  *(v11 + 6) = v46;
  v47 = v73;
  *(v11 + 7) = v76;
  *(v11 + 8) = v47;
  *&v11[v9[10]] = v40;
  v11[v9[11]] = v32;
  v48 = &v11[v9[13]];
  *(v48 + 1) = 0u;
  *(v48 + 2) = 0u;
  *v48 = 0u;
  v49 = &v11[v9[14]];
  *(v49 + 32) = 0;
  *v49 = 0u;
  *(v49 + 16) = 0u;

  sub_24E7D5870(v116, v49);
  sub_24F02E870();
  v50 = v81;
  sub_24F921D38();
  sub_24F02F02C(v11, type metadata accessor for AchievementCard);
  v51 = type metadata accessor for AchievementsCardFanLayoutMetrics.Card(0);
  v52 = *(a1 + *(v51 + 36));
  *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237448, &unk_24F9BF720) + 36)) = v52;
  KeyPath = swift_getKeyPath();
  v54 = v50 + *(v79 + 36);
  *v54 = KeyPath;
  *(v54 + 8) = 0;
  v103 = v87;
  v104 = v83;
  v105 = v41;
  sub_24F927618();
  v55 = sub_24F02E700();
  v56 = v80;
  sub_24F926088();
  sub_24F02EFC4(v50);
  sub_24F9278A8();
  v57 = swift_getWitnessTable();
  v114 = v55;
  v115 = v57;
  v58 = v86;
  v59 = swift_getWitnessTable();
  v60 = v82;
  sub_24F926388();
  (*(v90 + 8))(v56, v58);
  sub_24F9278A8();
  v112 = v59;
  v113 = MEMORY[0x277CDFB38];
  v61 = v88;
  v62 = swift_getWitnessTable();
  sub_24F926228();
  (*(v92 + 8))(v60, v61);
  if (*(a1 + *(v51 + 28)) <= 0.0)
  {
    sub_24F925858();
  }

  else
  {
    sub_24F925838();
  }

  v110 = v62;
  v111 = MEMORY[0x277CDF690];
  v63 = v98;
  v64 = swift_getWitnessTable();
  v65 = v94;
  sub_24F926A48();
  (*(v96 + 8))(v38, v63);
  v108 = v64;
  v109 = MEMORY[0x277CDF918];
  v66 = v99;
  v67 = swift_getWitnessTable();
  v68 = v93;
  sub_24F926978();
  (*(v97 + 8))(v65, v66);
  v106 = v67;
  v107 = MEMORY[0x277CDF748];
  v69 = v101;
  swift_getWitnessTable();
  v70 = v95;
  sub_24E7896B8();
  v71 = *(v100 + 8);
  v71(v68, v69);
  sub_24E7896B8();
  return (v71)(v70, v69);
}

uint64_t sub_24F02D02C(uint64_t a1)
{
  v2 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Achievement(0);
  sub_24F02EF48(a1 + *(v5 + 32), v4, type metadata accessor for AchievementProgressStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v9 = sub_24F91FDF8();
      if (qword_27F211800 != -1)
      {
        swift_once();
      }

      v10 = [qword_27F39F010 stringFromNumber_];
      if (v10)
      {
        v11 = v10;
        v12 = sub_24F92B0D8();

        return v12;
      }
    }

    else
    {
      v8 = sub_24F91F648();
      (*(*(v8 - 8) + 8))(v4, v8);
    }

    return 0;
  }

  return result;
}

uint64_t sub_24F02D1D4(uint64_t a1)
{
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Achievement(0);
  sub_24F02EF48(a1 + *(v9 + 32), v8, type metadata accessor for AchievementProgressStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (!EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v8, v2);
    if (qword_27F211288 != -1)
    {
      swift_once();
    }

    v12 = qword_27F39E5C0;
    v13 = sub_24F91F578();
    v14 = [v12 stringFromDate_];

    v15 = sub_24F92B0D8();
    (*(v3 + 8))(v5, v2);
    return v15;
  }

  return result;
}

uint64_t sub_24F02D3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v37 = a4;
  v7 = sub_24F924258();
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8, &qword_24F9423C0);
  v13 = sub_24F924038();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v21 = type metadata accessor for AchievementsCardFanView(0, a2, a3, v20);
  (*(a1 + *(v21 + 40)))();
  v22 = *(v7 + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_24F924B38();
  (*(*(v24 - 8) + 104))(&v9[v22], v23, v24);
  __asm { FMOV            V0.2D, #26.0 }

  *v9 = _Q0;
  sub_24EB67ED0();
  v30 = v35;
  sub_24F926B58();
  sub_24F02F02C(v9, MEMORY[0x277CDFC08]);
  (*(v36 + 8))(v12, a2);
  v31 = sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
  v38 = v30;
  v39 = v31;
  swift_getWitnessTable();
  sub_24E7896B8();
  v32 = *(v14 + 8);
  v32(v16, v13);
  sub_24E7896B8();
  return (v32)(v19, v13);
}

uint64_t sub_24F02D71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v42 = a4;
  v6 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237510, &qword_24F9BF798);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237518, &qword_24F9BF7A0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - v22;
  v25 = type metadata accessor for AchievementsCardFanView(0, a2, v41, v24);
  sub_24F02EF48(a1 + *(v25 + 36), v8, type metadata accessor for PlayerAvatar);
  LOBYTE(v44[0]) = 7;
  sub_24F8319B8(v8, v44, v11);
  v26 = *(a1 + 32);
  sub_24F927618();
  sub_24F9238C8();
  sub_24F02ECA8(v11, v15, type metadata accessor for PlayerAvatarView);
  v27 = &v15[*(v13 + 44)];
  v28 = v44[1];
  *v27 = v44[0];
  *(v27 + 1) = v28;
  *(v27 + 2) = v44[2];
  sub_24F9278A8();
  v30 = v29;
  v32 = v31;
  sub_24E6009C8(v15, v19, &qword_27F2233D0, &qword_24F958810);
  v33 = &v19[*(v17 + 44)];
  *v33 = 1.0 / v26;
  *(v33 + 1) = 1.0 / v26;
  *(v33 + 2) = v30;
  *(v33 + 3) = v32;
  sub_24E6009C8(v19, v23, &qword_27F237510, &qword_24F9BF798);
  v34 = &v23[*(v21 + 44)];
  *v34 = 0;
  *(v34 + 4) = 1;
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_24F92C888();

  strcpy(v43, "player-avatar-");
  HIBYTE(v43[1]) = -18;
  v35 = sub_24F92BA38();
  MEMORY[0x253050C20](v35);

  v36 = v43[0];
  v37 = v43[1];
  v38 = v42;
  sub_24E6009C8(v23, v42, &qword_27F237518, &qword_24F9BF7A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374C8, &qword_24F9BF770);
  v40 = (v38 + *(result + 52));
  *v40 = v36;
  v40[1] = v37;
  return result;
}

uint64_t sub_24F02DAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a2;
  v21 = a1;
  v28 = a6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2374A0, &unk_24F9BF760);
  v25 = sub_24F9242F8();
  v9 = sub_24F924038();
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v24 = sub_24F924038();
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v20 - v12;
  sub_24F927618();
  sub_24F9238C8();
  v20 = &v20;
  v39 = v44;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  v43 = v48;
  v14 = *(a3 + 24);
  v29 = *(a3 + 16);
  v30 = a4;
  v31 = v14;
  v32 = a5;
  v33 = v21;
  v34 = v22;
  sub_24F927618();
  v15 = sub_24F02E9B8();
  sub_24F926A08();
  sub_24F925838();
  WitnessTable = swift_getWitnessTable();
  v37 = v15;
  v38 = WitnessTable;
  v17 = swift_getWitnessTable();
  sub_24F926A48();
  (*(v26 + 8))(v11, v9);
  sub_24F925818();
  v35 = v17;
  v36 = MEMORY[0x277CDF918];
  v18 = v24;
  swift_getWitnessTable();
  sub_24F926A48();
  return (*(v27 + 8))(v13, v18);
}

void *sub_24F02DEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(*(a1 + 8) + 16))
  {
    v7 = sub_24F927618();
    v9 = v8;
    sub_24F02E054(a2, a3, __src);
    memcpy(__dst, __src, 0x131uLL);
    memcpy(v13, __src, 0x131uLL);
    sub_24E60169C(__dst, v14, &qword_27F237490, &qword_24F9BF750);
    sub_24E601704(v13, &qword_27F237490, &qword_24F9BF750);
    memcpy(&v14[2], __dst, 0x131uLL);
    v14[0] = v7;
    v14[1] = v9;
    sub_24F02E994(v14);
  }

  else
  {
    sub_24F02E99C(v14);
  }

  memcpy(v11, v14, sizeof(v11));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237480, &qword_24F9BF748);
  sub_24E602068(&qword_27F237478, &qword_27F237480, &qword_24F9BF748, MEMORY[0x277CE11A8]);
  sub_24E760430();
  sub_24F924E28();
  return memcpy(a4, __src, 0x142uLL);
}

uint64_t sub_24F02E054@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  sub_24F927898();
  sub_24F927878();
  sub_24F9273D8();
  sub_24F923BD8();
  sub_24F927618();
  sub_24F9242E8();
  v8 = type metadata accessor for AchievementsCardFanView(0, a2, a3, v7);
  v9 = sub_24E7274F0();
  sub_24F02DAD4(CGSizeMake, 0, v8, MEMORY[0x277CE1120], v9, v13);
  *(&__src[16] + 8) = v13[7];
  *(&__src[17] + 8) = v14[0];
  *(&__src[18] + 1) = *(v14 + 9);
  *(&__src[15] + 8) = v13[6];
  *(&__src[11] + 8) = v13[2];
  *(&__src[12] + 8) = v13[3];
  *(&__src[13] + 8) = v13[4];
  *(&__src[14] + 8) = v13[5];
  *(&__src[9] + 8) = v13[0];
  *(&__src[10] + 8) = v13[1];
  v15[6] = v25;
  v15[7] = v26;
  v15[8] = v27;
  v15[2] = v21;
  v15[3] = v22;
  v15[4] = v23;
  v15[5] = v24;
  v15[0] = v19;
  v15[1] = v20;
  __src[6] = v25;
  __src[7] = v26;
  __src[8] = v27;
  __src[2] = v21;
  __src[3] = v22;
  __src[4] = v23;
  __src[5] = v24;
  v16 = v28;
  *&__src[9] = v28;
  __src[0] = v19;
  __src[1] = v20;
  memcpy(a4, __src, 0x131uLL);
  v17[6] = v25;
  v17[7] = v26;
  v17[8] = v27;
  v18 = v28;
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[0] = v19;
  v17[1] = v20;
  sub_24E60169C(v15, v11, &qword_27F237498, &qword_24F9BF758);
  return sub_24E601704(v17, &qword_27F237498, &qword_24F9BF758);
}

uint64_t sub_24F02E2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_24E7896B8();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_24E7896B8();
  return (v13)(v11, a4);
}

uint64_t sub_24F02E404@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v11 = a1[1];
  *a7 = *a1;
  a7[1] = v11;
  v12 = a1[3];
  a7[2] = a1[2];
  a7[3] = v12;
  v13 = type metadata accessor for AchievementsCardFanView(0, a5, a6, a4);
  result = sub_24F02ECA8(a2, a7 + *(v13 + 36), type metadata accessor for PlayerAvatar);
  v15 = (a7 + *(v13 + 40));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

unint64_t sub_24F02E4AC(uint64_t a1)
{
  result = type metadata accessor for PlayerAvatar(319);
  if (v2 <= 0x3F)
  {
    result = sub_24E6C5550();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F02E554(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PlayerAvatar(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24F02E614(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlayerAvatar(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24F02E700()
{
  result = qword_27F237438;
  if (!qword_27F237438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237428, &unk_24F9BF710);
    sub_24F02E7B8();
    sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237438);
  }

  return result;
}

unint64_t sub_24F02E7B8()
{
  result = qword_27F237440;
  if (!qword_27F237440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237448, &unk_24F9BF720);
    sub_24F02E870();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237440);
  }

  return result;
}

unint64_t sub_24F02E870()
{
  result = qword_27F237450;
  if (!qword_27F237450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237450);
  }

  return result;
}

unint64_t sub_24F02E8DC()
{
  result = qword_27F237470;
  if (!qword_27F237470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237468, &qword_24F9BF740);
    sub_24E602068(&qword_27F237478, &qword_27F237480, &qword_24F9BF748, MEMORY[0x277CE11A8]);
    sub_24E760430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237470);
  }

  return result;
}

unint64_t sub_24F02E9B8()
{
  result = qword_27F2374A8;
  if (!qword_27F2374A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2374A0, &unk_24F9BF760);
    sub_24F02EA44();
    sub_24F02EAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2374A8);
  }

  return result;
}

unint64_t sub_24F02EA44()
{
  result = qword_27F2374B0;
  if (!qword_27F2374B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2374B8, &qword_24F9FEF90);
    sub_24E7274F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2374B0);
  }

  return result;
}

unint64_t sub_24F02EAD0()
{
  result = qword_27F2374C0;
  if (!qword_27F2374C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2374C0);
  }

  return result;
}

uint64_t sub_24F02EB3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24F02EBF0()
{
  result = qword_27F2374F0;
  if (!qword_27F2374F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2374F8, &qword_24F9BF780);
    sub_24F02E9B8();
    sub_24E602068(&qword_27F237500, &qword_27F237508, &unk_24F9BF788, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2374F0);
  }

  return result;
}

uint64_t sub_24F02ECA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F02ED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AchievementsCardFanView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  v7 = v6 + *(v5 + 36);

  v8 = type metadata accessor for PlayerAvatar(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v10 - 8) + 48))(v7 + v9, 1, v10) && !swift_getEnumCaseMultiPayload())
  {
    v11 = sub_24F9289E8();
    (*(*(v11 - 8) + 8))(v7 + v9, v11);
  }

  v12 = (v7 + *(v8 + 24));
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return swift_deallocObject();
}

uint64_t sub_24F02EEAC@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for AchievementsCardFanView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_24F02C500(a1, v9, v6, v7, a3);
}

uint64_t sub_24F02EF48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F02EFC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237428, &unk_24F9BF710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F02F02C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F02F08C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237420, &qword_24F9BF708);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237428, &unk_24F9BF710);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8, &qword_24F9423C0);
  sub_24F924038();
  sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24E602068(&qword_27F237430, &qword_27F237420, &qword_24F9BF708, MEMORY[0x277D83980]);
  sub_24F927248();
  sub_24F02E700();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F927128();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237458, &qword_24F9BF730);
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927128();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237460, &qword_24F9BF738);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F237488, &qword_27F237460, &qword_24F9BF738, MEMORY[0x277CE03E8]);
  return swift_getWitnessTable();
}

Swift::Void __swiftcall GuidedSearchQueryStore.adding(queries:)(Swift::OpaquePointer queries)
{

  sub_24F14A664(0, 0, queries._rawValue);
}

Swift::String_optional __swiftcall GuidedSearchQueryStore.optimizationTerm(for:tokens:)(Swift::String a1, Swift::OpaquePointer_optional tokens)
{
  rawValue = tokens.value._rawValue;
  if (!tokens.value._rawValue)
  {
LABEL_16:
    v14 = 0;
LABEL_17:
    v8 = rawValue;
    v9 = v14;
    goto LABEL_20;
  }

  if (!*(tokens.value._rawValue + 2))
  {
LABEL_15:
    rawValue = 0;
    goto LABEL_16;
  }

  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = *v2;

  v17 = sub_24F45D828(v7);

  v10 = *(v6 + 16);
  if (!v10)
  {
LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
  v12 = (v6 + 64);
  while (v11 < *(v6 + 16))
  {
    v13 = *(v12 - 2);
    rawValue = *(v12 - 1);
    v14 = *v12;
    v15 = *(v12 - 4) == countAndFlagsBits && *(v12 - 3) == object;
    if (v15 || (v8 = sub_24F92CE08(), (v8 & 1) != 0))
    {

      if (sub_24EDD4478(v13, v17))
      {

        goto LABEL_17;
      }
    }

    ++v11;
    v12 += 5;
    if (v10 == v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_24F02F6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit14SearchAdAction_action);
  v10[3] = type metadata accessor for Action(0);
  v10[4] = sub_24F02F7E4(&qword_27F216DE8, type metadata accessor for Action);
  v10[0] = v5;
  type metadata accessor for SearchAdActionImplementation(0, a3, v6, v7);

  swift_getWitnessTable();
  v8 = sub_24F1489C4(v10, a2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t sub_24F02F7E4(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

BOOL SearchAdOpportunityProviding.isSearchAdOpportunity.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t SearchAdOpportunityProviding.isSearchAd.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 8))(a1);
  if (result)
  {
    v3 = *(result + 40);

    if (v3)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SearchAdOpportunityProviding.adInstanceId.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 40);

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);

  return v4;
}

uint64_t SearchAdOpportunity.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchAdOpportunity.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchAdOpportunity.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v85 = v3;
  v77 = a2;
  v78 = v5;
  v6 = sub_24F9285B8();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v70 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = v68 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v69 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v72 = v68 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v68 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v68 - v23;
  v79 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  if (v26)
  {
    v80 = v25;
    v81 = v26;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v29 = v28;
    (*(v11 + 8))(v13, v10);
    v80 = v27;
    v81 = v29;
  }

  sub_24F92C7F8();
  v30 = *(v15 + 8);
  v31 = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v24, v14);
  v32 = v83;
  v33 = v85;
  *(v85 + 4) = v82;
  *(v33 + 5) = v32;
  v33[12] = v84;
  v34 = v79;
  sub_24F928398();
  v35 = v74;
  sub_24F9281F8();
  v30(v21, v14);
  v36 = v31;
  v37 = sub_24F928E68();
  v38 = v30;
  v39 = *(v37 - 8);
  v40 = (*(v39 + 48))(v35, 1, v37);
  if (v40 == 1)
  {
    sub_24E9182E0(v35);
    v41 = sub_24F92AC38();
    sub_24F030B54(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    strcpy(v42, "eventPayloads");
    *(v42 + 7) = -4864;
    *(v42 + 2) = v78;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D22530], v41);
    swift_willThrow();
    (*(v75 + 8))(v77, v76);
    v38(v34, v14);
  }

  else
  {
    v68[1] = v36;
    v71 = v38;
    v43 = v14;
    MEMORY[0x28223BE20](v40);
    v68[-2] = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    sub_24F0305EC();
    v44 = v73;
    v45 = sub_24F928E58();
    if (v44)
    {
      (*(v75 + 8))(v77, v76);
      v71(v79, v14);
      (*(v39 + 8))(v35, v37);
      v33 = v85;
    }

    else
    {
      v73 = 0;
      v47 = v45;
      (*(v39 + 8))(v35, v37);
      v48 = v72;
      v49 = v79;
      sub_24F928398();
      v50 = sub_24F928348();
      v52 = v51;
      v53 = v43;
      v54 = v71;
      v71(v48, v43);
      if (v52)
      {
        v33 = v85;
        v85[2] = v50;
        v33[3] = v52;
        v33[4] = v47;
        type metadata accessor for SearchAd();
        v55 = v69;
        sub_24F928398();
        v56 = v75;
        v57 = *(v75 + 16);
        v58 = v77;
        v78 = v53;
        v59 = v76;
        v57(v70, v77, v76);
        sub_24F030B54(&qword_27F2375B0, 255, type metadata accessor for SearchAd, &protocol conformance descriptor for SearchAd);
        sub_24F929548();
        v33[5] = v82;
        sub_24F928398();
        v60 = sub_24F928348();
        v62 = v61;
        (*(v56 + 8))(v58, v59);
        v63 = v49;
        v64 = v78;
        v65 = v71;
        v71(v63, v78);
        v65(v55, v64);
        v33[6] = v60;
        v33[7] = v62;
        return v33;
      }

      v66 = sub_24F92AC38();
      sub_24F030B54(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      *v67 = 0x65636E6174736E69;
      v67[1] = 0xEA00000000006449;
      v67[2] = v78;
      (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277D22530], v66);
      swift_willThrow();
      (*(v75 + 8))(v77, v76);
      v54(v49, v43);
      v33 = v85;
    }
  }

  sub_24E6585F8((v33 + 8));
  swift_deallocPartialClassInstance();
  return v33;
}

uint64_t sub_24F030264(_BYTE *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;

  v14._countAndFlagsBits = a3;
  v14._object = a4;
  SearchAdOpportunity.LifecycleEventType.init(rawValue:)(v14);
  v15 = v30[0];
  if (LOBYTE(v30[0]) == 7)
  {
    v16 = sub_24F92AC38();
    sub_24F030B54(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v18 = v17;
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_24F92C888();

    strcpy(v30, "eventPayloads.");
    HIBYTE(v30[1]) = -18;
    MEMORY[0x253050C20](a3, a4);
    v19 = v30[1];
    *v18 = v30[0];
    v18[1] = v19;
    v18[2] = a6;
    v20 = MEMORY[0x277D22530];
  }

  else
  {
    v29 = a2;
    v31 = a6;
    sub_24F9281F8();
    v21 = sub_24F928E68();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v13, 1, v21) == 1)
    {
      sub_24E9182E0(v13);
    }

    else
    {
      v23 = sub_24F928E48();
      result = (*(v22 + 8))(v13, v21);
      if (v23)
      {
        *a1 = v15;
        *v29 = v23;
        return result;
      }
    }

    v16 = sub_24F92AC38();
    sub_24F030B54(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v18 = v25;
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_24F92C888();

    strcpy(v30, "eventPayloads.");
    HIBYTE(v30[1]) = -18;
    MEMORY[0x253050C20](a3, a4);
    v26 = v30[1];
    v27 = MEMORY[0x277D84F90];
    *v18 = v30[0];
    v18[1] = v26;
    v18[2] = v31;
    v18[3] = v27;
    v20 = MEMORY[0x277D22540];
  }

  (*(*(v16 - 8) + 104))(v18, *v20, v16);
  return swift_willThrow();
}

unint64_t sub_24F0305EC()
{
  result = qword_27F2375A8;
  if (!qword_27F2375A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2375A8);
  }

  return result;
}

GameStoreKit::SearchAdOpportunity::LifecycleEventType_optional __swiftcall SearchAdOpportunity.LifecycleEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SearchAdOpportunity.instanceId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchAdOpportunity.missedOpportunityReason.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SearchAdOpportunity.LifecycleEventType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x646563616C70;
  v3 = 0x656C6269736976;
  if (v1 != 5)
  {
    v3 = 0x6574656C706D6F63;
  }

  v4 = 0x6E65657263536E6FLL;
  if (v1 != 3)
  {
    v4 = 0x656572635366666FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65746E4565676170;
  if (v1 != 1)
  {
    v5 = 0x7469784565676170;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F030810(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F030938@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x646563616C70;
  v5 = 0xE700000000000000;
  v6 = 0x656C6269736976;
  if (v2 != 5)
  {
    v6 = 0x6574656C706D6F63;
    v5 = 0xE900000000000064;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E65657263536E6FLL;
  result = 0x656572635366666FLL;
  if (v2 != 3)
  {
    v8 = 0x656572635366666FLL;
    v7 = 0xE90000000000006ELL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xE900000000000072;
  v11 = 0x65746E4565676170;
  if (v2 != 1)
  {
    v11 = 0x7469784565676170;
    v10 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 2);
  v12 = v2 == 2;
  v13 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t SearchAdOpportunity.deinit()
{

  sub_24E6585F8(v0 + 64);
  return v0;
}

uint64_t SearchAdOpportunity.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_24F030AB8()
{
  result = qword_27F2375B8;
  if (!qword_27F2375B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2375B8);
  }

  return result;
}

uint64_t sub_24F030B54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_24F030BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchAdOpportunity.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t AdvertVisibilityCalculator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 1025;
  *(v0 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 81) = 4;
  *(v0 + 104) = 257;
  return v0;
}

void AdvertVisibilityCalculator.beginTracking(view:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = swift_getObjectType();

  sub_24F031D00(a1, a3, v4, ObjectType, v10, a2, a4);
}

Swift::Void __swiftcall AdvertVisibilityCalculator.endTracking()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v1 = 1;
  sub_24F031124(&v1);
  *(v0 + 81) = 4;
}

Swift::Void __swiftcall AdvertVisibilityCalculator.viewControllerDidAppear()()
{
  v1 = *(v0 + 104);
  *(v0 + 104) = 1;
  if ((v1 & 1) == 0)
  {
    v2 = 3;
    sub_24F031124(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.viewControllerWillDisappear()()
{
  v1 = *(v0 + 104);
  *(v0 + 104) = 0;
  if (v1 == 1)
  {
    v2 = 3;
    sub_24F031124(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.appDidForeground()()
{
  v1 = *(v0 + 105);
  *(v0 + 105) = 1;
  if (v1 & 1) == 0 && (*(v0 + 104))
  {
    v2 = 4;
    sub_24F031124(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.appWillBackground()()
{
  v1 = *(v0 + 105);
  *(v0 + 105) = 0;
  if (v1 == 1 && (*(v0 + 104) & 1) != 0)
  {
    v2 = 4;
    sub_24F031124(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.occludedEdgeInsetsDidChange(to:)(UIEdgeInsets_optional *to)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 64);
  v4 = *(v1 + 80);
  v5 = *&to->value.bottom;
  *(v1 + 48) = *&to->value.top;
  *(v1 + 64) = v5;
  is_nil = to->is_nil;
  *(v1 + 80) = is_nil;
  if (is_nil)
  {
    if (v4)
    {
      return;
    }

LABEL_6:
    v7 = 5;
    sub_24F031124(&v7);
    return;
  }

  if ((v4 & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&to->value.top, v2), vceqq_f64(*&to->value.bottom, v3)))) & 1) == 0)
  {
    goto LABEL_6;
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.scrollViewDidScroll()()
{
  if (*(v0 + 105) == 1 && *(v0 + 104) == 1)
  {
    v1 = 2;
    sub_24F031124(&v1);
  }
}

void *AdvertVisibilityCalculator.orthogonalScrollViewDidScroll(_:)()
{
  if (*(v0 + 105) == 1 && *(v0 + 104) == 1)
  {
    v2 = 2;
    return sub_24F031124(&v2);
  }

  return result;
}

uint64_t AdvertVisibilityCalculator.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 1025;
  *(v0 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 81) = 4;
  *(v0 + 104) = 257;
  return v0;
}

float64x2_t *sub_24F0310A8(float64x2_t *result)
{
  if (*(v1 + 80))
  {
    if (LOBYTE(result[2].f64[0]))
    {
      return result;
    }

LABEL_6:
    v2 = 5;
    return sub_24F031124(&v2);
  }

  if ((LOBYTE(result[2].f64[0]) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v1 + 48), *result), vceqq_f64(*(v1 + 64), result[1])), xmmword_24F997D20)) & 0xF) != 0)
  {
    goto LABEL_6;
  }

  return result;
}

void *sub_24F031124(char *a1)
{
  v2 = *a1;
  result = sub_24F0313B4(v11);
  v4 = v11[0];
  v5 = *(v1 + 81);
  if (v11[0] == 4)
  {
    if (v5 == 4)
    {
      return result;
    }
  }

  else if (v11[0] == v5)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v1 + 96);
    ObjectType = swift_getObjectType();
    v10 = *(v1 + 81);
    v9 = v4;
    v8 = v2;
    (*(v6 + 8))(v1, &v10, &v9, &v8, ObjectType, v6);
    result = swift_unknownObjectRelease();
  }

  *(v1 + 81) = v4;
  return result;
}

uint64_t AdvertVisibilityCalculator.observer.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AdvertVisibilityCalculator.observer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 96);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F031330;
}

void sub_24F031330(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 96) = *(*a1 + 32);
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

uint64_t sub_24F0313B4@<X0>(char *a1@<X8>)
{
  v3 = sub_24F91F968();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355F0, &qword_24F9B77B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v66[-v11];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = *(v1 + 24);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_12;
  }

  if (*(v1 + 105) != 1 || *(v1 + 104) != 1)
  {
    swift_unknownObjectRelease();
LABEL_12:
    result = swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v68 = v4;
  v69 = v3;
  v72 = a1;
  v70 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 8);
  v71 = v1;
  v73.origin.x = v16(ObjectType, v14);
  MinY = CGRectGetMinY(v73);
  v74.origin.x = v16(ObjectType, v14);
  MidY = CGRectGetMidY(v74);
  v75.origin.x = v16(ObjectType, v14);
  MaxY = CGRectGetMaxY(v75);
  v20 = swift_getObjectType();
  v21 = v70;
  v22 = v70[1];
  v76.origin.x = v22(v20, v70);
  v23 = CGRectGetMinY(v76);
  v77.origin.x = v22(v20, v21);
  v24 = CGRectGetMaxY(v77);
  v25 = v23 + *(v71 + 48);
  if (*(v71 + 80))
  {
    v25 = v23;
  }

  else
  {
    v24 = v24 - *(v71 + 64);
  }

  if (v25 > MinY)
  {
    if (v25 <= MidY)
    {
      v27 = 0;
      v29 = 0;
      v26 = MidY <= v24;
LABEL_19:
      a1 = v72;
      if (v25 > MaxY)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v26 = 0;
    v27 = 0;
LABEL_17:
    v29 = 0;
    goto LABEL_19;
  }

  v27 = MinY <= v24;
  if (v25 > MidY)
  {
    v26 = 0;
    goto LABEL_17;
  }

  v26 = MidY <= v24;
  a1 = v72;
  if (v25 > MaxY)
  {
    v29 = 0;
    goto LABEL_24;
  }

LABEL_23:
  v29 = MaxY <= v24;
LABEL_24:
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_34;
      }

LABEL_30:
      if (!v29)
      {
LABEL_35:
        v28 = 2;
        goto LABEL_14;
      }

      goto LABEL_31;
    }

LABEL_36:
    if (v27 || v29)
    {
      goto LABEL_61;
    }

    goto LABEL_13;
  }

  v31 = v30;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    goto LABEL_36;
  }

  LODWORD(v71) = v26;
  LODWORD(v72) = v27;
  v33 = v32;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v70 = v33;
  v34 = [v31 indexPathForCell_];
  if (v34)
  {
    v35 = v34;
    sub_24F91F9E8();

    v36 = sub_24F91FA78();
    (*(*(v36 - 8) + 56))(v9, 0, 1, v36);
  }

  else
  {
    v36 = sub_24F91FA78();
    (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
  }

  sub_24F031F94(v9, v12);
  sub_24F91FA78();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v12, 1, v36) != 1)
  {
    v67 = v29;
    v38 = sub_24F91FA18();
    (*(v37 + 8))(v12, v36);
    v39 = [v31 collectionViewLayout];
    if ([v39 _hasOrthogonalScrollingSections])
    {
      v40 = [v39 _orthogonalScrollingSections];
      sub_24F91F8D8();

      LOBYTE(v40) = sub_24F91F918();
      (*(v68 + 8))(v6, v69);
      v41 = v71;
      if (v40)
      {
        swift_unknownObjectRetain();
        v42 = v70;
        [v70 frame];
        MinX = CGRectGetMinX(v78);
        [v42 frame];
        MidX = CGRectGetMidX(v79);
        [v42 frame];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        swift_unknownObjectRelease();
        v80.origin.x = v46;
        v80.origin.y = v48;
        v80.size.width = v50;
        v80.size.height = v52;
        MaxX = CGRectGetMaxX(v80);
        [v39 _offsetForOrthogonalScrollingSection_];
        v55 = v54;
        [v39 _layoutFrameForSection_];
        Width = CGRectGetWidth(v81);

        swift_unknownObjectRelease_n();
        result = swift_unknownObjectRelease_n();
        v57 = v55 + Width;
        if (v55 > MinX)
        {
          v58 = v72;
          if (v55 > MidX)
          {
            if (v55 > MaxX)
            {
              goto LABEL_13;
            }

            v59 = 0;
            goto LABEL_77;
          }

          if (v55 > MaxX)
          {
            if (MidX <= v57)
            {
              v61 = v41;
            }

            else
            {
              v61 = 0;
            }

            if (v61)
            {
              goto LABEL_61;
            }

            goto LABEL_13;
          }

          v62 = MaxX <= v57;
          if (!v41 || MidX > v57)
          {
            if (((v72 | v67) & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_103;
          }

          if (((v72 | v67) & 1) == 0)
          {
            goto LABEL_61;
          }

LABEL_107:
          if (v62)
          {
            goto LABEL_35;
          }

          goto LABEL_61;
        }

        v59 = MinX <= v57;
        if (v55 > MidX)
        {
          v58 = v72;
          if (v55 <= MaxX)
          {
LABEL_77:
            LOBYTE(v62) = MaxX <= v57;
LABEL_78:
            if (((v58 | v67) & 1) == 0)
            {
              goto LABEL_13;
            }

            if (v59)
            {
              goto LABEL_61;
            }

LABEL_103:
            if (v62)
            {
              goto LABEL_61;
            }

            goto LABEL_13;
          }

LABEL_81:
          if (v58)
          {
            if (MinX <= v57)
            {
              goto LABEL_61;
            }
          }

          else if (MinX <= v57 && v67)
          {
            goto LABEL_61;
          }

          goto LABEL_13;
        }

        v58 = v72;
        if (v55 > MaxX)
        {
          if (v41 && MidX <= v57)
          {
            if (v72)
            {
              if (MinX <= v57)
              {
                goto LABEL_35;
              }
            }

            else if (MinX <= v57 && v67)
            {
              goto LABEL_35;
            }

            goto LABEL_61;
          }

          goto LABEL_81;
        }

        v62 = MaxX <= v57;
        if (MidX <= v57)
        {
          v63 = v41;
        }

        else
        {
          v63 = 0;
        }

        if ((v63 & 1) == 0)
        {
          goto LABEL_78;
        }

        if (v72)
        {
          if (v67)
          {
            if (MinX > v57)
            {
              goto LABEL_107;
            }

            if (MaxX > v57)
            {
              goto LABEL_35;
            }

LABEL_31:
            v28 = 3;
            goto LABEL_14;
          }
        }

        else if (!v67)
        {
          goto LABEL_61;
        }

        if (MinX <= v57)
        {
          goto LABEL_35;
        }

        goto LABEL_107;
      }

      swift_unknownObjectRelease_n();
      result = swift_unknownObjectRelease_n();
      v60 = v67;
      if (v41)
      {
        if (!v72)
        {
LABEL_57:
          if (v60)
          {
            goto LABEL_35;
          }

          goto LABEL_61;
        }

LABEL_53:
        if (!v60)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }
    }

    else
    {

      swift_unknownObjectRelease_n();
      result = swift_unknownObjectRelease_n();
      if (v71)
      {
        LOBYTE(v60) = v67;
        if (!v72)
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      }

      v60 = v67;
    }

    if ((v72 | v60))
    {
      goto LABEL_61;
    }

    goto LABEL_13;
  }

  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease_n();
  result = sub_24F032004(v12);
  if (v71)
  {
    if (!v72)
    {
LABEL_34:
      if (v29)
      {
        goto LABEL_35;
      }

LABEL_61:
      v28 = 1;
      goto LABEL_14;
    }

    goto LABEL_30;
  }

  if ((v72 | v29))
  {
    goto LABEL_61;
  }

LABEL_13:
  v28 = 0;
LABEL_14:
  *a1 = v28;
  return result;
}

uint64_t AdvertVisibilityCalculator.deinit()
{
  sub_24E883630(v0 + 16);
  sub_24E883630(v0 + 32);
  sub_24E883630(v0 + 88);
  return v0;
}

uint64_t AdvertVisibilityCalculator.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);
  sub_24E883630(v0 + 32);
  sub_24E883630(v0 + 88);

  return swift_deallocClassInstance();
}

GameStoreKit::AdvertVisibilityCalculator::VisibilityThreshold_optional __swiftcall AdvertVisibilityCalculator.VisibilityThreshold.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AdvertVisibilityCalculator.UpdateOrigin.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

void sub_24F031D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v12 = Strong, swift_unknownObjectRelease(), v12 != a1))
  {
    *(a3 + 24) = a6;
    swift_unknownObjectWeakAssign();
    *(a3 + 40) = a7;
    swift_unknownObjectWeakAssign();
    v13 = 0;
    sub_24F031124(&v13);
  }
}

unint64_t sub_24F031D94()
{
  result = qword_27F2375C8;
  if (!qword_27F2375C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2375C8);
  }

  return result;
}

unint64_t sub_24F031DEC()
{
  result = qword_27F2375D0;
  if (!qword_27F2375D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2375D0);
  }

  return result;
}

uint64_t sub_24F031E40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 96);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F031E90(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24F031F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355F0, &qword_24F9B77B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F032004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355F0, &qword_24F9B77B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F032070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24F0320C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24F032124(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v83 = a6;
  v82 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219610, &unk_24F9BFEA0);
  v80 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v13 = &v66[-v12];
  v88 = sub_24F923A38();
  v77 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v75 = &v66[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v74 = &v66[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195E0, &qword_24F94C500);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v66[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v66[-v21];
  v23 = sub_24F923BB8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v86 = &v66[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2375E0, &qword_24F9BFEB0);
  MEMORY[0x28223BE20](v26 - 8);
  v76 = &v66[-v27];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2375E8, &qword_24F9BFEB8);
  MEMORY[0x28223BE20](v81);
  v85 = &v66[-v28];
  sub_24F032C50(&qword_27F2195F8, MEMORY[0x277CDF820]);
  sub_24F92BB88();
  result = sub_24F92BC08();
  if (v89[0] == v90)
  {
    return result;
  }

  v67 = a7;
  v30 = *(v8 + 40);
  v31 = *(v8 + 48);
  v32 = a3 - v30 - v31;
  sub_24F92BB88();
  sub_24F92BC08();
  v33 = sub_24F92BBF8();
  v34 = v32 / v33;
  v79 = *v8;
  v87 = v8;
  v78 = *(v8 + 8);
  v73 = v13;
  if (v78)
  {
    v35 = v32 / v33;
    v36 = v75;
  }

  else
  {
    sub_24F92BB88();
    sub_24F92BC08();
    v37 = sub_24F92BBF8();
    v36 = v75;
    if (v37 < 2 || v79 < 0 || (sub_24F92BB88(), sub_24F92BC08(), v79 >= sub_24F92BBF8()))
    {
      v35 = v34;
    }

    else
    {
      v38 = *(v87 + 16);
      sub_24F92BB88();
      sub_24F92BC08();
      result = sub_24F92BBF8();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_47;
      }

      v35 = v34 * v38;
      v34 = (v32 - v35) / (result - 1);
    }
  }

  v39 = v86;
  v40 = v76;
  (*(v24 + 16))(v76, a8, v23);
  (*(v24 + 32))(v39, v40, v23);
  sub_24F032C50(&unk_27F2375F0, MEMORY[0x277CDF810]);
  v41 = v85;
  sub_24F92B3F8();
  v70 = *(v81 + 36);
  *&v41[v70] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C98, &qword_24F96BC40);
  v81 = 0;
  v43 = *(v42 + 36);
  v72 = (v77 + 2);
  v86 = v77 + 4;
  v44 = (v80 + 7);
  v80 += 6;
  ++v77;
  v45 = 0.0;
  LODWORD(v76) = v67 & 1;
  v71 = a8;
  v69 = v22;
  v68 = v44;
  while (1)
  {
    sub_24F92BC08();
    if (*&v41[v43] == v89[0])
    {
      v46 = 1;
      v47 = v84;
    }

    else
    {
      v48 = v19;
      v49 = sub_24F92BC88();
      v50 = v74;
      v51 = v88;
      (*v72)(v74);
      v49(v89, 0);
      v52 = v43;
      v53 = v23;
      sub_24F92BC18();
      v47 = v84;
      v54 = *(v84 + 48);
      v55 = v41;
      v56 = v73;
      v57 = v81;
      *v73 = v81;
      result = (*v86)(v56 + v54, v50, v51);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_44;
      }

      v81 = v59;
      *&v55[v70] = v59;
      v19 = v48;
      sub_24E6009C8(v56, v48, &qword_27F219610, &unk_24F9BFEA0);
      v46 = 0;
      v36 = v75;
      v22 = v69;
      v23 = v53;
      v43 = v52;
      v44 = v68;
    }

    (*v44)(v19, v46, 1, v47);
    sub_24E6009C8(v19, v22, &qword_27F2195E0, &qword_24F94C500);
    if ((*v80)(v22, 1, v47) == 1)
    {
      return sub_24F032C94(v85);
    }

    v60 = *v22;
    (*v86)(v36, v22 + *(v47 + 48), v88);
    if (v79 == v60)
    {
      v61 = v35;
    }

    else
    {
      v61 = v34;
    }

    if (v78)
    {
      v62 = v34;
    }

    else
    {
      v62 = v61;
    }

    sub_24F92BB88();
    sub_24F92BC08();
    if (sub_24F92BBF8() >= 2)
    {
      if (*(v87 + 32))
      {
        sub_24F92BB88();
        sub_24F92BC08();
        result = sub_24F92BBF8();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_45;
        }

        v63 = 0.0;
        if (v60 != result - 1)
        {
          v63 = *(v87 + 24);
        }

        goto LABEL_33;
      }

      if (v60)
      {
        sub_24F92BB88();
        sub_24F92BC08();
        result = sub_24F92BBF8();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_46;
        }

        v63 = *(v87 + 24);
        if (v60 != result - 1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v63 = *(v87 + 24);
      }

      v63 = v63 * 0.5;
LABEL_33:
      v62 = v62 + v63;
    }

    sub_24F92BB88();
    sub_24F92BC08();
    result = sub_24F92BBF8();
    if (__OFSUB__(result, 1))
    {
      break;
    }

    v64 = v30 + v62;
    if (v60)
    {
      v64 = v62;
    }

    if (v60 == result - 1)
    {
      v65 = v31 + v64;
    }

    else
    {
      v65 = v64;
    }

    sub_24F927828();
    LOBYTE(v89[0]) = 0;
    LOBYTE(v90) = v76;
    sub_24F923A28();
    (*v77)(v36, v88);
    v45 = v45 + v65 - *(v87 + 24);
    v41 = v85;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void (*sub_24F032B70(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

unint64_t sub_24F032BFC()
{
  result = qword_27F2375D8;
  if (!qword_27F2375D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2375D8);
  }

  return result;
}

uint64_t sub_24F032C50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24F923BB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F032C94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2375E8, &qword_24F9BFEB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24F032CFC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24F92C6F8();
    sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
    sub_24EAEAB48();
    sub_24F92BAE8();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v21 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_24F92C778() || (sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8), swift_dynamicCast(), (v11 = v27) == 0))
    {
LABEL_24:
      sub_24E6586B4(v1);
      return;
    }

LABEL_17:
    v12 = [v11 type];
    v13 = v12 - 1;
    if ((v12 - 1) <= 2)
    {
      v14 = [v11 value];
      v19 = sub_24F92B0D8();
      v20 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24E6189EC(0, *(v21 + 2) + 1, 1, v21);
      }

      v17 = *(v21 + 2);
      v16 = *(v21 + 3);
      if (v17 >= v16 >> 1)
      {
        v21 = sub_24E6189EC((v16 > 1), v17 + 1, 1, v21);
      }

      *(v21 + 2) = v17 + 1;
      v18 = &v21[24 * v17];
      v18[32] = v13;
      *(v18 + 5) = v19;
      *(v18 + 6) = v20;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_24F032FB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F03304C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

void sub_24F033100(char a1, SEL *a2)
{
  v5 = type metadata accessor for OverlayCall(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  v11 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  swift_beginAccess();
  sub_24F038F8C(v2 + v11, v10, type metadata accessor for OverlayCall);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24F038FF4(v10, type metadata accessor for OverlayCall);
  }

  else
  {
    v12 = *v10;
    [v12 *a2];
    *v7 = v12;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_24F036E50(v7, v2 + v11);
    swift_endAccess();
    type metadata accessor for OverlayActiveCall(0);
    sub_24F036EB4(&qword_27F2376F0, type metadata accessor for OverlayActiveCall, &unk_24F9BFFD4);
    sub_24F922FA8();
    sub_24F923008();
  }
}

uint64_t sub_24F0332E8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v3;
}

uint64_t sub_24F03337C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v3;
}

uint64_t sub_24F0333E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[16] = type metadata accessor for OverlayCall(0);
  v5[17] = swift_task_alloc();
  sub_24F92B7F8();
  v5[18] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0334B0, v7, v6);
}

uint64_t sub_24F0334B0()
{

  sub_24F91EB38();
  sub_24E94E17C(v0 + 16, v0 + 48);
  if (*(v0 + 72))
  {
    sub_24E69A5C4(0, &qword_27F2376C0, 0x277D6EDE0);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 104);
      v2 = [v1 isUplinkMuted];
      sub_24F033100(v2, &selRef_setUplinkMuted_);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 153) = v2;

      sub_24F9230A8();

      goto LABEL_8;
    }
  }

  else
  {
    sub_24E601704(v0 + 48, &qword_27F2129B0, &unk_24F945320);
  }

  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  swift_beginAccess();
  sub_24F038F8C(v4 + v5, v3, type metadata accessor for OverlayCall);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 136);
  if (EnumCaseMultiPayload == 1)
  {
    sub_24E601704(v0 + 16, &qword_27F2129B0, &unk_24F945320);
    sub_24F038FF4(v7, type metadata accessor for OverlayCall);
    goto LABEL_9;
  }

  v8 = *v7;
  v9 = [*v7 isUplinkMuted];
  sub_24F033100(v9, &selRef_setUplinkMuted_);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 152) = v9;

  sub_24F9230A8();

LABEL_8:
  sub_24E601704(v0 + 16, &qword_27F2129B0, &unk_24F945320);
LABEL_9:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24F033728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24F91EB58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = sub_24F92B858();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    sub_24F92B7F8();

    v15 = sub_24F92B7E8();
    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    (*(v7 + 32))(v17 + v16, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    sub_24F1F2908(0, 0, v11, a4, v17);

    return sub_24E601704(v11, &unk_27F21B570, &qword_24F93B020);
  }

  return result;
}

uint64_t sub_24F03397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[16] = type metadata accessor for OverlayCall(0);
  v5[17] = swift_task_alloc();
  sub_24F92B7F8();
  v5[18] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F033A44, v7, v6);
}

uint64_t sub_24F033A44()
{

  sub_24F91EB38();
  sub_24E94E17C(v0 + 16, v0 + 48);
  if (*(v0 + 72))
  {
    sub_24E69A5C4(0, &qword_27F2376C0, 0x277D6EDE0);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 104);
      if ([v1 isVideo])
      {
        v2 = 1;
      }

      else
      {
        v2 = [v1 isThirdPartyVideo];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 154) = v2;

      sub_24F9230A8();
      v10 = [v1 isSendingVideo];
      sub_24F033100(v10, &selRef_setIsSendingVideo_);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 155) = v10;

      goto LABEL_14;
    }
  }

  else
  {
    sub_24E601704(v0 + 48, &qword_27F2129B0, &unk_24F945320);
  }

  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  swift_beginAccess();
  sub_24F038F8C(v4 + v5, v3, type metadata accessor for OverlayCall);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 136);
  if (EnumCaseMultiPayload == 1)
  {
    sub_24E601704(v0 + 16, &qword_27F2129B0, &unk_24F945320);
    sub_24F038FF4(v7, type metadata accessor for OverlayCall);
    goto LABEL_15;
  }

  v1 = *v7;
  if ([*v7 isVideo])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v1 isThirdPartyVideo];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 152) = v8;

  sub_24F9230A8();
  v9 = [v1 isSendingVideo];
  sub_24F033100(v9, &selRef_setIsSendingVideo_);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 153) = v9;

LABEL_14:
  sub_24F9230A8();

  sub_24E601704(v0 + 16, &qword_27F2129B0, &unk_24F945320);
LABEL_15:

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F033D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[16] = type metadata accessor for OverlayCall(0);
  v5[17] = swift_task_alloc();
  sub_24F92B7F8();
  v5[18] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0390C8, v7, v6);
}

uint64_t sub_24F033E4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24F93A400;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD000000000000027;
    *(v3 + 40) = 0x800000024FA68F10;
    *(v3 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    v4 = swift_allocObject();
    *(v3 + 64) = v4;
    sub_24E94E17C(v5, v4 + 16);
    sub_24F92D038();

    return sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

uint64_t sub_24F033F84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24F93A400;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD000000000000029;
    *(v3 + 40) = 0x800000024FA68EE0;
    *(v3 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    v4 = swift_allocObject();
    *(v3 + 64) = v4;
    sub_24E94E17C(v5, v4 + 16);
    sub_24F92D038();

    return sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

uint64_t sub_24F0340BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24F93A400;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD00000000000002DLL;
    *(v3 + 40) = 0x800000024FA68EB0;
    *(v3 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    v4 = swift_allocObject();
    *(v3 + 64) = v4;
    sub_24E94E17C(v5, v4 + 16);
    sub_24F92D038();

    return sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

uint64_t sub_24F0341F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24F93A400;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD00000000000002ELL;
    *(v3 + 40) = 0x800000024FA68E80;
    *(v3 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    v4 = swift_allocObject();
    *(v3 + 64) = v4;
    sub_24E94E17C(v5, v4 + 16);
    sub_24F92D038();

    return sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

uint64_t sub_24F03432C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24F93A400;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD000000000000028;
    *(v3 + 40) = 0x800000024FA68E50;
    *(v3 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    v4 = swift_allocObject();
    *(v3 + 64) = v4;
    sub_24E94E17C(v5, v4 + 16);
    sub_24F92D038();

    return sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

uint64_t sub_24F034464(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24F93A400;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD000000000000021;
    *(v3 + 40) = 0x800000024FA68E20;
    *(v3 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    v4 = swift_allocObject();
    *(v3 + 64) = v4;
    sub_24E94E17C(v5, v4 + 16);
    sub_24F92D038();

    return sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

uint64_t sub_24F03459C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[17] = type metadata accessor for OverlayCall(0);
  v5[18] = swift_task_alloc();
  sub_24F92B7F8();
  v5[19] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F034664, v7, v6);
}

uint64_t sub_24F034664()
{
  sub_24F91EB38();
  sub_24E94E17C((v0 + 2), (v0 + 6));
  if (v0[9])
  {
    sub_24E69A5C4(0, &qword_27F2376C0, 0x277D6EDE0);
    if (swift_dynamicCast())
    {
      v1 = v0[18];
      v2 = v0[16];
      v3 = v0[13];
      v4 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
      swift_beginAccess();
      sub_24F038F8C(v2 + v4, v1, type metadata accessor for OverlayCall);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v5 = v0[18];
        sub_24E601704((v0 + 2), &qword_27F2129B0, &unk_24F945320);

        sub_24F038FF4(v5, type metadata accessor for OverlayCall);
        goto LABEL_31;
      }

      v7 = *v0[18];
      v8 = [v3 callUUID];
      v9 = sub_24F92B0D8();
      v11 = v10;

      v12 = [v7 callUUID];
      v13 = sub_24F92B0D8();
      v15 = v14;

      if (v9 == v13 && v11 == v15)
      {

LABEL_12:
        if (qword_27F210FD0 != -1)
        {
          swift_once();
        }

        v17 = off_27F23BE70;
        v18 = [v3 remoteParticipantHandles];
        sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
        sub_24EAEAB48();
        v19 = sub_24F92BAA8();

        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = sub_24F92C738();
        }

        else
        {
          v20 = *(v19 + 16);
        }

        if (v17[6] == v20)
        {

          v17[6] = v20;
        }

        else
        {
          swift_getKeyPath();
          v21 = swift_task_alloc();
          *(v21 + 16) = v17;
          *(v21 + 24) = v20;
          v0[14] = v17;
          sub_24F036EB4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
          sub_24F91FD78();
        }

        if (qword_27F2113B0 != -1)
        {
          swift_once();
        }

        v22 = sub_24F9220D8();
        __swift_project_value_buffer(v22, qword_27F39E760);
        v23 = v3;
        v24 = sub_24F9220B8();
        v25 = sub_24F92BDA8();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          v27 = [v23 remoteParticipantHandles];
          v28 = sub_24F92BAA8();

          if ((v28 & 0xC000000000000001) != 0)
          {
            v29 = sub_24F92C738();
          }

          else
          {
            v29 = *(v28 + 16);
          }

          *(v26 + 4) = v29;

          _os_log_impl(&dword_24E5DD000, v24, v25, "Remote participant count updated to %ld participants", v26, 0xCu);
          MEMORY[0x2530542D0](v26, -1, -1);
        }

        else
        {
        }

        v6 = (v0 + 2);
        goto LABEL_30;
      }

      v16 = sub_24F92CE08();

      if (v16)
      {
        goto LABEL_12;
      }

      sub_24E601704((v0 + 2), &qword_27F2129B0, &unk_24F945320);
    }

    else
    {
      sub_24E601704((v0 + 2), &qword_27F2129B0, &unk_24F945320);
    }

    goto LABEL_31;
  }

  sub_24E601704((v0 + 2), &qword_27F2129B0, &unk_24F945320);

  v6 = (v0 + 6);
LABEL_30:
  sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
LABEL_31:

  v30 = v0[1];

  return v30();
}

uint64_t sub_24F034C18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24F93A400;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD00000000000002CLL;
    *(v3 + 40) = 0x800000024FA68DF0;
    *(v3 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    v4 = swift_allocObject();
    *(v3 + 64) = v4;
    sub_24E94E17C(v5, v4 + 16);
    sub_24F92D038();

    return sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

uint64_t sub_24F034D50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24F93A400;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD00000000000001ELL;
    *(v3 + 40) = 0x800000024FA68DD0;
    *(v3 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    v4 = swift_allocObject();
    *(v3 + 64) = v4;
    sub_24E94E17C(v5, v4 + 16);
    sub_24F92D038();

    return sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

uint64_t sub_24F034E88(void *a1)
{
  [a1 status];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  if (([a1 isVideo] & 1) == 0)
  {
    [a1 isThirdPartyVideo];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

void sub_24F034F9C()
{
  v1 = v0;
  v97 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for OverlayCall(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  swift_beginAccess();
  sub_24F038F8C(v0 + v5, v4, type metadata accessor for OverlayCall);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24F038FF4(v4, type metadata accessor for OverlayCall);
    return;
  }

  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F96E2B0;
  v8 = *MEMORY[0x277CBD018];
  v9 = *MEMORY[0x277CBD098];
  v10 = MEMORY[0x277CBCFC0];
  *(v7 + 32) = *MEMORY[0x277CBD018];
  *(v7 + 40) = v9;
  v11 = *v10;
  *(v7 + 48) = *v10;
  v95 = v7;
  v12 = objc_opt_self();
  v13 = v8;
  v14 = v9;
  v15 = v11;
  v16 = [v12 descriptorForRequiredKeysForStyle_];
  MEMORY[0x253050F00]();
  if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  v17 = [v6 remoteParticipantHandles];
  sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
  sub_24EAEAB48();
  v18 = sub_24F92BAA8();

  v19 = sub_24E6B8E34(v18);

  v20 = sub_24E60F6DC(MEMORY[0x277D84F90]);
  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    if (sub_24F92C738())
    {
      goto LABEL_8;
    }

LABEL_15:
    v82 = v6;

    goto LABEL_16;
  }

  if (!*(v19 + 16))
  {
    goto LABEL_15;
  }

LABEL_8:

  v21 = [*(v1 + 16) contactStore];
  v22 = sub_24F92B588();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
  v23 = sub_24F92B588();

  v96[0] = 0;
  v24 = [v21 tu:v22 contactsForHandles:v23 keyDescriptors:v96 error:?];

  v25 = v96[0];
  if (!v24)
  {
    v28 = v96[0];
    KeyPath = sub_24F91F278();

    swift_willThrow();
    if (qword_27F2113B0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

  v82 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFE0, &qword_24F974D08);
  v26 = sub_24F92AE38();
  v27 = v25;
  v20 = v26;

LABEL_16:
  KeyPath = sub_24E60F704(MEMORY[0x277D84F90]);
  swift_getKeyPath();
  swift_getKeyPath();
  v96[0] = KeyPath;

  sub_24F9230A8();
  v38 = 0;
  v39 = v20 + 64;
  v40 = 1 << *(v20 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v6 = v41 & *(v20 + 64);
  v42 = (v40 + 63) >> 6;
  v43 = &selRef_systemBackgroundColor;
  v86 = v1;
  for (i = v20; v6; v43 = &selRef_systemBackgroundColor)
  {
LABEL_25:
    while (1)
    {
      v45 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v46 = (v38 << 9) | (8 * v45);
      KeyPath = *(*(v20 + 56) + v46);
      v47 = *(*(v20 + 48) + v46);

      v48 = [v47 v43[139]] - 1;
      if (v48 < 3)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_21;
      }
    }

    v91 = v47;
    v49 = [v47 value];
    v93 = sub_24F92B0D8();
    v51 = v50;

    if (KeyPath >> 62)
    {
      v55 = sub_24F92C738();
      v92 = v51;
      if (!v55)
      {
LABEL_33:

        v54 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v52 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
      v92 = v51;
      if (!v52)
      {
        goto LABEL_33;
      }
    }

    if ((KeyPath & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x253052270](0, KeyPath);
    }

    else
    {
      if (!*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v53 = *(KeyPath + 32);
    }

    v54 = v53;

LABEL_34:
    KeyPath = swift_getKeyPath();
    v88 = swift_getKeyPath();
    v89 = KeyPath;
    v90 = sub_24F923088();
    v57 = v56;
    if (!v54)
    {
      v93 = sub_24E76E5D8(v48, v93, v92);
      v72 = v71;

      KeyPath = v91;
      if (v72)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = *v57;
        v94 = *v57;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_24E8B4FE0();
          v74 = v94;
        }

        v75 = v93;

        sub_24EB55734(v75, v74);
        *v57 = v74;
      }

      goto LABEL_52;
    }

    v84 = v54;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v57;
    v94 = *v57;
    v59 = v94;
    v85 = v48;
    v60 = v48;
    v61 = v92;
    v63 = sub_24E76E5D8(v60, v93, v92);
    v64 = v59[2];
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      goto LABEL_56;
    }

    v67 = v62;
    if (v59[3] >= v66)
    {
      if (v58)
      {
        v70 = v94;
        if ((v62 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_24E8B4FE0();
        v70 = v94;
        if ((v67 & 1) == 0)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      sub_24E8A6038(v66, v58);
      v68 = sub_24E76E5D8(v85, v93, v61);
      if ((v67 & 1) != (v69 & 1))
      {
        sub_24F92CF88();
        __break(1u);
        return;
      }

      v63 = v68;
      v70 = v94;
      if ((v67 & 1) == 0)
      {
LABEL_49:
        v70[(v63 >> 6) + 8] |= 1 << v63;
        v78 = v70[6] + 24 * v63;
        *v78 = v85;
        *(v78 + 8) = v93;
        *(v78 + 16) = v61;
        *(v70[7] + 8 * v63) = v84;
        v79 = v70[2];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          goto LABEL_58;
        }

        v70[2] = v81;
        goto LABEL_51;
      }
    }

    v76 = v70[7];
    v77 = *(v76 + 8 * v63);
    *(v76 + 8 * v63) = v84;

LABEL_51:
    *v83 = v70;
    KeyPath = v91;
LABEL_52:
    v90(v96, 0);

    v20 = i;
  }

LABEL_21:
  while (1)
  {
    v44 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v44 >= v42)
    {

      return;
    }

    v6 = *(v39 + 8 * v44);
    ++v38;
    if (v6)
    {
      v38 = v44;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_11:
  v30 = sub_24F9220D8();
  __swift_project_value_buffer(v30, qword_27F39E760);
  v31 = KeyPath;
  v32 = sub_24F9220B8();
  v33 = sub_24F92BDB8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = KeyPath;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_24E5DD000, v32, v33, "Failed to fetch contact information for call handles: %@", v34, 0xCu);
    sub_24E601704(v35, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v35, -1, -1);
    MEMORY[0x2530542D0](v34, -1, -1);
  }

  else
  {
  }
}
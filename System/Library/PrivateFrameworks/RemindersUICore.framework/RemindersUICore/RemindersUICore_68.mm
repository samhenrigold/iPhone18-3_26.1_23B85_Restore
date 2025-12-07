void sub_21D74D844(uint64_t a1, uint64_t a2)
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + qword_27CE60FF8 + 8);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 48))(a2, ObjectType, v9);
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = *(v2 + qword_27CE60F78);
    v34 = sub_21DBF5C6C();
    v37.origin.x = v14;
    v37.origin.y = v16;
    v37.size.width = v18;
    v37.size.height = v20;
    MidX = CGRectGetMidX(v37);
    v38.origin.x = v14;
    v38.origin.y = v16;
    v38.size.width = v18;
    v38.size.height = v20;
    v23 = [v21 dropItem:a1 intoItemAtIndexPath:v34 rect:{MidX, CGRectGetMidY(v38), 0.0, 0.0}];
    swift_unknownObjectRelease();
    v24 = v34;
  }

  else
  {
    if (qword_27CE56C78 != -1)
    {
      swift_once();
    }

    v25 = sub_21DBF84BC();
    __swift_project_value_buffer(v25, qword_27CE60F60);
    (*(v6 + 16))(v8, a2, v5);
    v26 = sub_21DBF84AC();
    v27 = sub_21DBFAEBC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      sub_21D23894C(&qword_27CE59FD0, MEMORY[0x277CC9B38]);
      v30 = sub_21DBFC5BC();
      v32 = v31;
      (*(v6 + 8))(v8, v5);
      v33 = sub_21D0CDFB4(v30, v32, &v35);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_21D0C9000, v26, v27, "TTRICollectionViewDropCommitCoordinator: layout attributes for the item doesn't exist. {indexPath: %s}", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223D46520](v29, -1, -1);
      MEMORY[0x223D46520](v28, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }
}

void TTRICollectionViewDropCommitCoordinator.drop(_:toItem:orIntoCenterOfItem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a1;
  v48 = *(*v3 + 80);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](a1);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = sub_21DBF5D5C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v45 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v44 - v17;
  v52 = v3;
  v18 = *(v3 + qword_27CE60FF8 + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 32);
  v20(a2, ObjectType, v18);
  v21 = *(v14 + 48);
  v54 = v13;
  if (v21(v12, 1, v13) == 1)
  {
    sub_21D31DD48(v12);
    v22 = v53;
    v23 = v50;
    v20(v50, ObjectType, v18);
    v24 = v54;
    if (v21(v22, 1, v54) == 1)
    {
      sub_21D31DD48(v53);
      if (qword_27CE56C78 != -1)
      {
        swift_once();
      }

      v25 = sub_21DBF84BC();
      __swift_project_value_buffer(v25, qword_27CE60F60);
      v27 = v46;
      v26 = v47;
      v28 = *(v47 + 16);
      v29 = v48;
      v28(v46, v23, v48);
      v30 = sub_21DBF84AC();
      v31 = sub_21DBFAEBC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v55 = v33;
        *v32 = 136315138;
        v28(v44, v27, v29);
        v34 = sub_21DBFA1AC();
        v36 = v35;
        (*(v26 + 8))(v27, v29);
        v37 = sub_21D0CDFB4(v34, v36, &v55);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_21D0C9000, v30, v31, "TTRICollectionViewDropCommitCoordinator: row for the fallbackItemID doesn't exist. {itemID: %s}", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x223D46520](v33, -1, -1);
        MEMORY[0x223D46520](v32, -1, -1);
      }

      else
      {

        (*(v26 + 8))(v27, v29);
      }
    }

    else
    {
      v43 = v45;
      (*(v14 + 32))(v45, v53, v24);
      sub_21D74D844(v51, v43);
      (*(v14 + 8))(v43, v24);
    }
  }

  else
  {
    v38 = v49;
    v39 = v54;
    (*(v14 + 32))(v49, v12, v54);
    v40 = *(v52 + qword_27CE60F78);
    v41 = sub_21DBF5C6C();
    v42 = [v40 dropItem:v51 toItemAtIndexPath:v41];
    swift_unknownObjectRelease();

    (*(v14 + 8))(v38, v39);
  }
}

uint64_t *TTRICollectionViewDropCommitCoordinator.deinit()
{
  v1 = *v0;
  v2 = qword_27CE61000;
  v3 = sub_21DBF56BC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = *(*v0 + 120);
  v9.val[0] = *(v1 + 80);
  v9.val[1] = v9.val[0];
  v5 = v8;
  vst2q_f64(v5, v9);
  type metadata accessor for TTRICollectionViewDropProposal(255, v8);
  v6 = sub_21DBFBA8C();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  return v0;
}

uint64_t TTRICollectionViewDropCommitCoordinator.__deallocating_deinit()
{
  TTRICollectionViewDropCommitCoordinator.deinit();

  return swift_deallocClassInstance();
}

void TTRICollectionViewDropCommitCoordinator.draggedItemsForCommitting<A>(transformItemID:)(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a1;
  v80 = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v74 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v78 = &v60 - v9;
  v71 = sub_21DBFBA8C();
  v63 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v11 = &v60 - v10;
  v72 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v70 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = &v60 - v15;
  v16 = *(v7 + 88);
  v82 = v8;
  v83 = v16;
  v18 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem(0, v8, v16, v17);
  v81 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v68 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v62 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v60 - v25;
  v86 = TTRICollectionViewDropCommitCoordinator.localDropItems.getter();
  v87 = v86;
  v27 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83988], v27);
  v28 = sub_21DBFACFC();
  if (v28)
  {

    v86 = TTRICollectionViewDropCommitCoordinator.items.getter();
    MEMORY[0x28223BE20](v86);
    v29 = v82;
    v30 = v83;
    *(&v60 - 4) = v82;
    *(&v60 - 3) = a3;
    *(&v60 - 2) = v30;
    type metadata accessor for TTRICollectionViewDropCommitCoordinator.DropItem(255, v29, v30, v31);
    v32 = sub_21DBFA74C();
    v33 = sub_21D74EC8C();
    WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v32);
    v36 = sub_21D0E5014(sub_21D1574EC, (&v60 - 6), v32, v33, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v35);

    *a4 = v36;
    *(a4 + 8) = 0;
    *(a4 + 16) = 1;
    return;
  }

  v61 = a4;
  *&v37 = MEMORY[0x28223BE20](v28).n128_u64[0];
  v38 = v83;
  *(&v60 - 4) = v82;
  *(&v60 - 3) = a3;
  *(&v60 - 2) = v38;
  swift_getWitnessTable(MEMORY[0x277D83960], v27, v37);
  swift_getWitnessTable(MEMORY[0x277D83980], v27);
  v67 = v27;
  sub_21DBFA0EC();
  v86 = sub_21DBF9E3C();
  v85 = sub_21DBF9E3C();
  v39 = v87;
  if (sub_21DBFA6DC())
  {
    v40 = 0;
    v83 = (v81 + 16);
    ++v74;
    v75 = (v81 + 32);
    v73 = (v72 + 6);
    v66 = (v72 + 4);
    v65 = (v72 + 2);
    v64 = v72 + 1;
    v72 = (v81 + 8);
    ++v63;
    v76 = v39;
    v77 = v26;
    do
    {
      v42 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v42)
      {
        v43 = *(v81 + 16);
        v43(v26, v39 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v40, v18);
        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v57 = sub_21DBFBF7C();
        if (v62 != 8)
        {
          __break(1u);
          return;
        }

        v84 = v57;
        v43 = *v83;
        (*v83)(v26, &v84, v18);
        swift_unknownObjectRelease();
        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      (*v75)(v22, v26, v18);
      v45 = v22;
      v46 = v11;
      v47 = a3;
      v48 = &v45[*(v18 + 36)];
      v49 = *(v18 + 16);
      v52 = &v48[*(type metadata accessor for TTRICollectionViewDragItemUserInfo(0, v49, v50, v51) + 32)];
      a3 = v47;
      v53 = v82;
      v54 = v78;
      (*(*(v49 - 8) + 16))(v78, v52, v49);
      v79(v54);
      v55 = v54;
      v11 = v46;
      (*v74)(v55, v53);
      if ((*v73)(v46, 1, a3) == 1)
      {
        (*v72)(v45, v18);
        (*v63)(v46, v71);
      }

      else
      {
        v56 = v69;
        (*v66)(v69, v46, a3);
        (*v65)(v70, v56, a3);
        sub_21DBFA74C();
        sub_21DBFA6FC();
        v43(v68, v45, v18);
        sub_21DBFA6FC();
        (*v64)(v56, a3);
        (*v72)(v45, v18);
      }

      v22 = v45;
      v39 = v76;
      v41 = sub_21DBFA6DC();
      ++v40;
      v26 = v77;
    }

    while (v44 != v41);
  }

  v58 = v86;
  v59 = v61;
  *v61 = v85;
  v59[1] = v58;
  *(v59 + 16) = 0;
}

uint64_t sub_21D74EAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D74EB48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D74EBB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D74EC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem(0, v5, *(v4 + 32), a4);
  type metadata accessor for TTRICollectionViewDragItemUserInfo(0, v5, v6, v7);
  return sub_21DBF5C8C() & 1;
}

unint64_t sub_21D74EC8C()
{
  result = qword_27CE61010[0];
  if (!qword_27CE61010[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CE61010);
  }

  return result;
}

uint64_t sub_21D74ECD8(uint64_t a1)
{
  result = sub_21DBF56BC();
  if (v3 <= 0x3F)
  {
    v6[4] = *(result - 8) + 64;
    v6[5] = "\b";
    v6[6] = &unk_21DC26880;
    v7.val[0] = *(a1 + 80);
    v7.val[1] = v7.val[0];
    v4 = v6;
    vst2q_f64(v4, v7);
    type metadata accessor for TTRICollectionViewDropProposal(255, v6);
    result = sub_21DBFBA8C();
    if (v5 <= 0x3F)
    {
      v6[7] = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21D74EE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRICollectionViewDragItemUserInfo(255, *(a1 + 16), a3, a4);
  result = sub_21DBFBA8C();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **sub_21D74EED0(void **a1, char **a2, uint64_t a3)
{
  v50 = sub_21DBF56BC();
  v6 = *(v50 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 80) | v8;
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v14 + 80);
  v18 = v12 | *(v14 + 80);
  v19 = (v12 | *(v14 + 80));
  v20 = *(v6 + 84);
  v21 = *(v10 + 84);
  if (v21 <= v20)
  {
    v22 = *(v6 + 84);
  }

  else
  {
    v22 = *(v10 + 84);
  }

  if (v16 > v22)
  {
    v22 = *(v14 + 84);
  }

  if (v22 <= 0xFE)
  {
    v23 = 254;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v6 + 64) + v11;
  v51 = *(*(v9 - 8) + 64) + v17;
  v25 = *(v14 + 64);
  v26 = v25 + ((v51 + (v24 & ~v11)) & ~v17) + 1;
  v27 = *a2;
  *a1 = *a2;
  if (v19 <= 7 && (v18 & 0x100000) == 0 && ((v26 + ((v19 + 8) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18)
  {
    v45 = v9;
    v46 = v7;
    v42 = v25;
    v43 = v13;
    v44 = v10;
    v31 = ~v11;
    v47 = ~v17;
    __dst = ((a1 + v19 + 8) & ~v19);
    v49 = a1;
    v32 = ((a2 + v19 + 8) & ~v19);
    v33 = v27;
    if (v20 == v23)
    {
      v34 = v31;
      v35 = (*(v46 + 48))(v32, v20, v50);
    }

    else
    {
      v34 = v31;
      v36 = (v32 + v24) & v31;
      if (v21 == v23)
      {
        v35 = (*(v44 + 48))((v32 + v24) & v31, v21, v45);
      }

      else
      {
        v37 = (v51 + v36) & v47;
        if (v16 != v23)
        {
          v30 = v49;
          if (*(v37 + v42) >= 2u)
          {
            goto LABEL_25;
          }

          goto LABEL_27;
        }

        v35 = (*(v15 + 48))((v51 + v36) & v47, v16, v43);
      }
    }

    v30 = v49;
    if (v35)
    {
LABEL_25:
      v38 = __dst;
      memcpy(__dst, v32, v26);
LABEL_28:
      *((v38 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v32 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
      return v30;
    }

    v31 = v34;
    v36 = (v32 + v24) & v34;
    v37 = (v51 + v36) & v47;
LABEL_27:
    v38 = __dst;
    (*(v46 + 16))(__dst, v32, v50);
    v39 = (__dst + v24) & v31;
    (*(v44 + 16))(v39, v36, v45);
    v40 = (v51 + v39) & v47;
    (*(v15 + 16))(v40, v37, v43);
    *(v40 + v42) = *(v37 + v42);
    goto LABEL_28;
  }

  v30 = &v27[(v19 & 0xF8 ^ 0x1F8) & (v19 + 16)];

  return v30;
}

uint64_t sub_21D74F278(id *a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  result = sub_21DBF5D5C();
  v9 = *(result - 8);
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = (*(v9 + 80) | v7 | *(v11 + 80));
  v15 = *(v9 + 80);
  v16 = *(v11 + 80);
  v17 = (a1 + v14 + 8) & ~v14;
  v18 = *(v5 + 84);
  v19 = *(v9 + 84);
  if (v19 <= v18)
  {
    v20 = *(v5 + 84);
  }

  else
  {
    v20 = *(v9 + 84);
  }

  if (v13 > v20)
  {
    v20 = *(v11 + 84);
  }

  v21 = *(v5 + 64);
  v33 = *(*(result - 8) + 64);
  v22 = *(v11 + 64);
  if (v20 <= 0xFE)
  {
    v23 = 254;
  }

  else
  {
    v23 = v20;
  }

  v24 = ~v15;
  v25 = ~v16;
  v31 = result;
  v32 = v4;
  v29 = v12;
  v30 = v10;
  if (v18 == v23)
  {
    result = (*(v5 + 48))(v17, v18, v4);
  }

  else
  {
    v26 = (v21 + v15 + v17) & v24;
    if (v19 == v23)
    {
      result = (*(v9 + 48))((v21 + v15 + v17) & v24, v19, result);
      if (result)
      {
        return result;
      }

      goto LABEL_15;
    }

    v27 = (v33 + v16 + v26) & v25;
    if (v13 != v23)
    {
      if (*(v27 + v22) >= 2u)
      {
        return result;
      }

      goto LABEL_16;
    }

    result = (*(v12 + 48))((v33 + v16 + v26) & v25, v13, v10);
  }

  if (result)
  {
    return result;
  }

LABEL_15:
  v26 = (v21 + v15 + v17) & v24;
  v27 = (v33 + v16 + v26) & v25;
LABEL_16:
  (*(v6 + 8))(v17, v32);
  (*(v9 + 8))(v26, v31);
  v28 = *(v29 + 8);

  return v28(v27, v30);
}

void **sub_21D74F540(void **a1, void **a2, uint64_t a3)
{
  v42 = *a2;
  *a1 = *a2;
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v40 = sub_21DBF5D5C();
  v10 = *(v40 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 80) | v9;
  v38 = *(a3 + 16);
  v39 = v10;
  v13 = *(v38 - 8);
  v14 = *(v13 + 84);
  v37 = v13;
  v15 = *(v13 + 80);
  v16 = (v12 | *(v13 + 80));
  __dst = ((a1 + v16 + 8) & ~v16);
  v45 = a1;
  v17 = ((a2 + v16 + 8) & ~v16);
  v18 = *(v7 + 84);
  v19 = *(v10 + 84);
  if (v19 <= v18)
  {
    v20 = *(v7 + 84);
  }

  else
  {
    v20 = *(v10 + 84);
  }

  if (v14 > v20)
  {
    v20 = *(v13 + 84);
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  v22 = ~v11;
  v23 = *(v7 + 64) + v11;
  v24 = *(*(v40 - 8) + 64);
  v41 = ~v15;
  v25 = v24 + v15;
  v36 = *(*(v38 - 8) + 64);
  __n = v36 + ((v24 + v15 + (v23 & ~v11)) & ~v15) + 1;
  v26 = v42;
  if (v18 == v21)
  {
    v27 = (*(v8 + 48))(v17, v18, v6);
  }

  else
  {
    v28 = (v17 + v23) & v22;
    if (v19 == v21)
    {
      v27 = (*(v39 + 48))((v17 + v23) & v22, v19, v40);
    }

    else
    {
      v29 = (v25 + v28) & v41;
      if (v14 != v21)
      {
        v30 = v6;
        v31 = __dst;
        if (*(v29 + v36) >= 2u)
        {
          goto LABEL_16;
        }

LABEL_18:
        (*(v8 + 16))(v31, v17, v30);
        v33 = (v31 + v23) & v22;
        (*(v39 + 16))(v33, v28, v40);
        v34 = (v25 + v33) & v41;
        (*(v37 + 16))(v34, v29, v38);
        *(v34 + v36) = *(v29 + v36);
        v32 = __n;
        goto LABEL_19;
      }

      v27 = (*(v37 + 48))((v25 + v28) & v41, v14, v38);
    }
  }

  v30 = v6;
  v31 = __dst;
  if (!v27)
  {
    v28 = (v17 + v23) & v22;
    v29 = (v25 + v28) & v41;
    goto LABEL_18;
  }

LABEL_16:
  v32 = __n;
  memcpy(v31, v17, __n);
LABEL_19:
  *((v31 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v17 + v32 + 7) & 0xFFFFFFFFFFFFFFF8);
  return v45;
}

void **sub_21D74F874(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = sub_21DBF56BC();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 80);
  v68 = sub_21DBF5D5C();
  v13 = *(v68 - 8);
  v14 = *(v13 + 80);
  v70 = *(a3 + 16);
  v15 = *(v70 - 8);
  v16 = *(v15 + 84);
  v69 = v15;
  v17 = *(v15 + 80);
  v18 = (*(v13 + 80) | v12 | *(v15 + 80));
  v73 = a1;
  v19 = (a1 + v18 + 8) & ~v18;
  v20 = (a2 + v18 + 8) & ~v18;
  v21 = *(v10 + 84);
  v22 = *(v13 + 84);
  if (v22 <= v21)
  {
    v23 = *(v10 + 84);
  }

  else
  {
    v23 = *(v13 + 84);
  }

  if (v16 > v23)
  {
    v23 = *(v15 + 84);
  }

  if (v23 <= 0xFE)
  {
    v24 = 254;
  }

  else
  {
    v24 = v23;
  }

  v25 = ~v14;
  v26 = *(v10 + 64) + v14;
  v27 = *(*(v68 - 8) + 64);
  v72 = ~v17;
  v28 = v27 + v17;
  v62 = *(v68 - 8);
  v63 = *(*(v70 - 8) + 64);
  v29 = v63 + ((v27 + v17 + (v26 & ~v14)) & ~v17) + 1;
  v60 = v11;
  v61 = v9;
  __n = v29;
  if (v21 == v24)
  {
    v64 = v26;
    v66 = ~v14;
    v30 = *(v11 + 48);
    v31 = v30(v19, v21, v9);
    v32 = v30(v20, v21, v9);
    v33 = v19;
    v34 = v20;
    goto LABEL_13;
  }

  v59 = v19;
  v35 = (v26 + v19) & v25;
  if (v22 == v24)
  {
    v36 = *(v13 + 48);
    v37 = ~v14;
    v38 = v26;
    v31 = v36((v26 + v19) & v25, v22, v68);
    v34 = v20;
    v64 = v38;
    v66 = v37;
    v32 = v36((v38 + v20) & v37, v22, v68);
    v33 = v59;
LABEL_13:
    v39 = v72;
    v40 = v28;
    if (v31)
    {
      v42 = v64;
      v41 = v66;
      if (v32)
      {
LABEL_15:
        v43 = v33;
        v44 = v34;
        v29 = __n;
LABEL_28:
        memcpy(v43, v44, v29);
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    goto LABEL_25;
  }

  v40 = v27 + v17;
  v39 = ~v17;
  v45 = (v28 + v35) & v72;
  v34 = v20;
  if (v16 == v24)
  {
    v46 = ~v14;
    v47 = v26;
    v48 = (*(v15 + 48))(v45, v16, v70);
    v26 = v47;
    v25 = v46;
    if (v48)
    {
      goto LABEL_18;
    }

LABEL_23:
    v52 = (v34 + v26) & v25;
    v53 = (v40 + v52) & v72;
    if (v16 != v24)
    {
      v33 = v59;
      v55 = v60;
      v54 = v61;
      if (*(v53 + v63) >= 2u)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v64 = v26;
    v66 = v25;
    v32 = (*(v69 + 48))((v40 + v52) & v72, v16, v70);
    v33 = v59;
LABEL_25:
    v35 = (v33 + v64) & v66;
    if (v32)
    {
      v55 = v60;
      v54 = v61;
      v29 = __n;
LABEL_27:
      (*(v55 + 8))(v33, v54);
      (*(v62 + 8))(v35, v68);
      (*(v69 + 8))((v40 + v35) & v39, v70);
      v43 = v33;
      v44 = v34;
      goto LABEL_28;
    }

    v52 = (v34 + v64) & v66;
    v53 = (v40 + v52) & v39;
    v55 = v60;
    v54 = v61;
    v29 = __n;
LABEL_30:
    (*(v55 + 24))(v33, v34, v54);
    (*(v62 + 24))(v35, v52, v68);
    (*(v69 + 24))((v40 + v35) & v39, v53, v70);
    *(((v40 + v35) & v39) + v63) = *(v53 + v63);
    goto LABEL_31;
  }

  if (*(v45 + v63) < 2u)
  {
    goto LABEL_23;
  }

LABEL_18:
  v49 = (v34 + v26) & v25;
  v50 = (v40 + v49) & v72;
  if (v16 == v24)
  {
    v65 = v26;
    v67 = v25;
    v51 = (*(v69 + 48))((v40 + v49) & v72, v16, v70);
    v33 = v59;
    v42 = v65;
    v41 = v67;
    if (v51)
    {
      goto LABEL_15;
    }

LABEL_20:
    v35 = (v33 + v42) & v41;
    v49 = (v34 + v42) & v41;
    v50 = (v40 + v49) & v39;
    goto LABEL_21;
  }

  v33 = v59;
  if (*(v50 + v63) >= 2u)
  {
    goto LABEL_15;
  }

LABEL_21:
  (*(v60 + 16))(v33, v34, v61);
  (*(v62 + 16))(v35, v49, v68);
  (*(v69 + 16))((v40 + v35) & v39, v50, v70);
  *(((v40 + v35) & v39) + v63) = *(v50 + v63);
  v29 = __n;
LABEL_31:
  v56 = ((v33 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  v57 = ((v34 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v56 = *v57;
  v56[1] = v57[1];
  return v73;
}

void *sub_21D74FDF0(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = sub_21DBF5D5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v14 + 80);
  v18 = (*(v11 + 80) | v9 | *(v14 + 80));
  v43 = a1;
  v19 = ((a1 + v18 + 8) & ~v18);
  v20 = ((a2 + v18 + 8) & ~v18);
  v21 = *(v7 + 84);
  v22 = *(v11 + 84);
  if (v22 <= v21)
  {
    v23 = *(v7 + 84);
  }

  else
  {
    v23 = *(v11 + 84);
  }

  if (v16 > v23)
  {
    v23 = *(v14 + 84);
  }

  if (v23 <= 0xFE)
  {
    v23 = 254;
  }

  v24 = *(v7 + 64);
  v25 = ~v12;
  v26 = v24 + v12;
  v27 = *(*(v10 - 8) + 64);
  v41 = ~v17;
  v28 = v27 + v17;
  v29 = *(v14 + 64);
  __n = v29 + ((v27 + v17 + ((v24 + v12) & ~v12)) & ~v17) + 1;
  v38 = v10;
  v39 = v6;
  v37 = v13;
  v40 = ~v12;
  if (v21 == v23)
  {
    v30 = (*(v8 + 48))(v20, v21, v6);
    goto LABEL_10;
  }

  v31 = (v20 + v26) & v25;
  if (v22 != v23)
  {
    v32 = (v28 + v31) & v41;
    if (v16 != v23)
    {
      if (*(v32 + v29) < 2u)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    v30 = (*(v14 + 48))((v28 + v31) & v41, v16, v13);
LABEL_10:
    if (!v30)
    {
      goto LABEL_14;
    }

LABEL_19:
    v35 = __n;
    memcpy(v19, v20, __n);
    goto LABEL_20;
  }

  if ((*(v11 + 48))((v20 + v26) & v25, v22, v10))
  {
    goto LABEL_19;
  }

LABEL_14:
  v31 = (v20 + v26) & v40;
  v32 = (v28 + v31) & v41;
LABEL_15:
  (*(v8 + 32))(v19, v20, v39);
  v33 = (v19 + v26) & v40;
  (*(v11 + 32))(v33, v31, v38);
  v34 = (v28 + v33) & v41;
  (*(v15 + 32))(v34, v32, v37);
  *(v34 + v29) = *(v32 + v29);
  v35 = __n;
LABEL_20:
  *((v19 + v35 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v35 + 7) & 0xFFFFFFFFFFFFFFF8);
  return v43;
}

void **sub_21D75011C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  v66 = sub_21DBF5D5C();
  v11 = *(v66 - 8);
  v12 = *(v11 + 80);
  v68 = *(a3 + 16);
  v13 = *(v68 - 8);
  v14 = *(v13 + 84);
  v67 = v13;
  v15 = *(v13 + 80);
  v16 = (*(v11 + 80) | v10 | *(v13 + 80));
  v71 = a1;
  v17 = (a1 + v16 + 8) & ~v16;
  v18 = (a2 + v16 + 8) & ~v16;
  v19 = *(v8 + 84);
  v20 = *(v11 + 84);
  if (v20 <= v19)
  {
    v21 = *(v8 + 84);
  }

  else
  {
    v21 = *(v11 + 84);
  }

  if (v14 > v21)
  {
    v21 = *(v13 + 84);
  }

  if (v21 <= 0xFE)
  {
    v22 = 254;
  }

  else
  {
    v22 = v21;
  }

  v23 = ~v12;
  v24 = *(v8 + 64) + v12;
  v25 = *(*(v66 - 8) + 64);
  v70 = ~v15;
  v26 = v25 + v15;
  v60 = *(v66 - 8);
  v61 = *(*(v68 - 8) + 64);
  v27 = v61 + ((v25 + v15 + (v24 & ~v12)) & ~v15) + 1;
  v58 = v9;
  v59 = v7;
  __n = v27;
  if (v19 == v22)
  {
    v62 = v24;
    v64 = ~v12;
    v28 = *(v9 + 48);
    v29 = v28(v17, v19, v7);
    v30 = v28(v18, v19, v7);
    v31 = v17;
    v32 = v18;
    goto LABEL_13;
  }

  v57 = v17;
  v33 = (v24 + v17) & v23;
  if (v20 == v22)
  {
    v34 = *(v11 + 48);
    v35 = ~v12;
    v36 = v24;
    v29 = v34((v24 + v17) & v23, v20, v66);
    v32 = v18;
    v62 = v36;
    v64 = v35;
    v30 = v34((v36 + v18) & v35, v20, v66);
    v31 = v57;
LABEL_13:
    v37 = v70;
    v38 = v26;
    if (v29)
    {
      v40 = v62;
      v39 = v64;
      if (v30)
      {
LABEL_15:
        v41 = v31;
        v42 = v32;
        v27 = __n;
LABEL_28:
        memcpy(v41, v42, v27);
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    goto LABEL_25;
  }

  v38 = v25 + v15;
  v37 = ~v15;
  v43 = (v26 + v33) & v70;
  v32 = v18;
  if (v14 == v22)
  {
    v44 = ~v12;
    v45 = v24;
    v46 = (*(v13 + 48))(v43, v14, v68);
    v24 = v45;
    v23 = v44;
    if (v46)
    {
      goto LABEL_18;
    }

LABEL_23:
    v50 = (v32 + v24) & v23;
    v51 = (v38 + v50) & v70;
    if (v14 != v22)
    {
      v31 = v57;
      v53 = v58;
      v52 = v59;
      if (*(v51 + v61) >= 2u)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v62 = v24;
    v64 = v23;
    v30 = (*(v67 + 48))((v38 + v50) & v70, v14, v68);
    v31 = v57;
LABEL_25:
    v33 = (v31 + v62) & v64;
    if (v30)
    {
      v53 = v58;
      v52 = v59;
      v27 = __n;
LABEL_27:
      (*(v53 + 8))(v31, v52);
      (*(v60 + 8))(v33, v66);
      (*(v67 + 8))((v38 + v33) & v37, v68);
      v41 = v31;
      v42 = v32;
      goto LABEL_28;
    }

    v50 = (v32 + v62) & v64;
    v51 = (v38 + v50) & v37;
    v53 = v58;
    v52 = v59;
    v27 = __n;
LABEL_30:
    (*(v53 + 40))(v31, v32, v52);
    (*(v60 + 40))(v33, v50, v66);
    (*(v67 + 40))((v38 + v33) & v37, v51, v68);
    *(((v38 + v33) & v37) + v61) = *(v51 + v61);
    goto LABEL_31;
  }

  if (*(v43 + v61) < 2u)
  {
    goto LABEL_23;
  }

LABEL_18:
  v47 = (v32 + v24) & v23;
  v48 = (v38 + v47) & v70;
  if (v14 == v22)
  {
    v63 = v24;
    v65 = v23;
    v49 = (*(v67 + 48))((v38 + v47) & v70, v14, v68);
    v31 = v57;
    v40 = v63;
    v39 = v65;
    if (v49)
    {
      goto LABEL_15;
    }

LABEL_20:
    v33 = (v31 + v40) & v39;
    v47 = (v32 + v40) & v39;
    v48 = (v38 + v47) & v37;
    goto LABEL_21;
  }

  v31 = v57;
  if (*(v48 + v61) >= 2u)
  {
    goto LABEL_15;
  }

LABEL_21:
  (*(v58 + 32))(v31, v32, v59);
  (*(v60 + 32))(v33, v47, v66);
  (*(v67 + 32))((v38 + v33) & v37, v48, v68);
  *(((v38 + v33) & v37) + v61) = *(v48 + v61);
  v27 = __n;
LABEL_31:
  v54 = ((v31 + v27 + 7) & 0xFFFFFFFFFFFFFFF8);
  v55 = ((v32 + v27 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v54 = *v55;
  v54[1] = v55[1];
  return v71;
}

uint64_t sub_21D750694(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(sub_21DBF5D5C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = *(*(a3 + 16) - 8);
  if (v11 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = *(v12 + 80);
  v15 = *(v12 + 84);
  if (v15 > v13)
  {
    v13 = *(v12 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  if (v13 - 1 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v13 - 1;
  }

  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v12 + 64);
  if (!a2)
  {
    return 0;
  }

  v20 = *(v9 + 80);
  v21 = v14;
  v22 = (v17 | *(v7 + 80) | v14);
  v23 = *(v7 + 64) + v17;
  v24 = v18 + v14;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v25 = ((v19 + ((v24 + (v23 & ~v20)) & ~v21) + ((v22 + 8) & ~v22) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = v25 & 0xFFFFFFF8;
  if ((v25 & 0xFFFFFFF8) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = a2 - v16 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v29 = *(a1 + v25);
      if (v29)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v29 = *(a1 + v25);
      if (v29)
      {
        goto LABEL_30;
      }
    }

LABEL_33:
    if (((v13 - 1) & 0x80000000) == 0)
    {
      v32 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }

    v34 = (a1 + v22 + 8) & ~v22;
    if (v8 == v13)
    {
      v35 = (*(v7 + 48))(v34, v8, v6, v24, v23, v18);
      goto LABEL_47;
    }

    v36 = (v23 + v34) & ~v20;
    if (v11 == v13)
    {
      v35 = (*(v10 + 48))(v36);
      goto LABEL_47;
    }

    v37 = (v24 + v36) & ~v21;
    if (v15 == v13)
    {
      v35 = (*(*(*(a3 + 16) - 8) + 48))(v37, v15);
      goto LABEL_47;
    }

    v38 = *(v37 + v19);
    if (v38 >= 2)
    {
      v35 = ((v38 + 2147483646) & 0x7FFFFFFF) + 1;
LABEL_47:
      v39 = v35 != 0;
      result = (v35 - 1);
      if (result != 0 && v39)
      {
        return result;
      }
    }

    return 0;
  }

  if (!v28)
  {
    goto LABEL_33;
  }

  v29 = *(a1 + v25);
  if (!v29)
  {
    goto LABEL_33;
  }

LABEL_30:
  v30 = v29 - 1;
  if (v18)
  {
    v30 = 0;
    v31 = *a1;
  }

  else
  {
    v31 = 0;
  }

  return v16 + (v31 | v30) + 1;
}

void sub_21D7509A8(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(sub_21DBF5D5C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(a4 + 16);
  v16 = *(v15 - 8);
  v17 = *(v11 + 80);
  v18 = *(v16 + 84);
  v19 = *(v11 + 64);
  v20 = *(v16 + 64);
  if (v18 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v16 + 84);
  }

  if (v21 <= 0xFE)
  {
    v22 = 254;
  }

  else
  {
    v22 = v21;
  }

  v23 = v22 - 1;
  if (v22 - 1 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v22 - 1;
  }

  v25 = v17;
  v26 = *(v16 + 80);
  v27 = (v17 | *(v9 + 80) | *(v16 + 80));
  v28 = *(v9 + 64) + v17;
  v29 = v19 + v26;
  v30 = v20 + ((v19 + v26 + (v28 & ~v17)) & ~v26) + 1;
  v31 = ((((v27 + 8) & ~v27) + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v24 >= a3)
  {
    v34 = 0;
    v35 = a2 - v24;
    if (a2 <= v24)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (((((v27 + 8) & ~v27) + v30 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 1;
    }

    if (((((v27 + 8) & ~v27) + v30 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v37 = ~v24 + a2;
      bzero(a1, ((((v27 + 8) & ~v27) + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v37;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        *(a1 + v31) = v36;
      }

      else
      {
        *(a1 + v31) = v36;
      }
    }

    else if (v34)
    {
      *(a1 + v31) = v36;
    }

    return;
  }

  if (((((v27 + 8) & ~v27) + v30 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v32 = a3 - v24 + 1;
  }

  else
  {
    v32 = 2;
  }

  if (v32 >= 0x10000)
  {
    v33 = 4;
  }

  else
  {
    v33 = 2;
  }

  if (v32 < 0x100)
  {
    v33 = 1;
  }

  if (v32 >= 2)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = a2 - v24;
  if (a2 > v24)
  {
    goto LABEL_31;
  }

LABEL_26:
  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(a1 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v31) = 0;
  }

  else if (v34)
  {
    *(a1 + v31) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v23 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v38 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v38 = a2 - 1;
    }

    *a1 = v38;
    return;
  }

  v39 = ((a1 + v27 + 8) & ~v27);
  if (v23 >= a2)
  {
    if (a2 < v22)
    {
      if (v10 == v22)
      {
        v43 = *(v9 + 56);
        v44 = a2 + 1;
        v45 = v39;
        v46 = v10;
        v15 = v8;
      }

      else
      {
        v48 = &v39[v28] & ~v25;
        if (v13 == v22)
        {
          v49 = *(v12 + 56);

          v49(v48, a2 + 1);
          return;
        }

        v45 = ((v29 + v48) & ~v26);
        if (v18 != v22)
        {
          v45[v20] = a2 + 2;
          return;
        }

        v43 = *(v16 + 56);
        v44 = a2 + 1;
        v46 = v18;
      }

      v43(v45, v44, v46, v15);
      return;
    }

    if (v30 <= 3)
    {
      v47 = ~(-1 << (8 * v30));
    }

    else
    {
      v47 = -1;
    }

    if (v30)
    {
      v41 = v47 & (a2 - v22);
      if (v30 <= 3)
      {
        v42 = v30;
      }

      else
      {
        v42 = 4;
      }

      bzero(v39, v30);
      if (v42 <= 2)
      {
        if (v42 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_79;
      }

LABEL_80:
      if (v42 == 3)
      {
        *v39 = v41;
        v39[2] = BYTE2(v41);
      }

      else
      {
        *v39 = v41;
      }
    }
  }

  else
  {
    if (v30 <= 3)
    {
      v40 = ~(-1 << (8 * v30));
    }

    else
    {
      v40 = -1;
    }

    if (v30)
    {
      v41 = v40 & (a2 - v22);
      if (v30 <= 3)
      {
        v42 = v30;
      }

      else
      {
        v42 = 4;
      }

      bzero(v39, v30);
      if (v42 <= 2)
      {
        if (v42 == 1)
        {
LABEL_60:
          *v39 = v41;
          return;
        }

LABEL_79:
        *v39 = v41;
        return;
      }

      goto LABEL_80;
    }
  }
}

uint64_t sub_21D750DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TTRICollectionViewDragItemUserInfo(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char **sub_21D750E9C(char **a1, char **a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = sub_21DBF5D5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) | v9;
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = v13 | *(v15 + 80);
  v18 = (v13 | *(v15 + 80));
  v19 = *(v7 + 64) + v12;
  v20 = *(v11 + 64) + v16;
  v21 = *(v15 + 64);
  if (v18 > 7 || (v17 & 0x100000) != 0 || v21 - ((-9 - v18) | v18) + ((v20 + (v19 & ~v12)) & ~v16) > 0x18)
  {
    v24 = *a2;
    *a1 = *a2;
    v34 = &v24[(v18 & 0xF8 ^ 0x1F8) & (v18 + 16)];
  }

  else
  {
    v36 = v10;
    v37 = v6;
    v25 = ~v12;
    v39 = ~v16;
    v40 = a1;
    v26 = *a2;
    *a1 = *a2;
    v27 = a2 + v18;
    v28 = (a1 + v18 + 8) & ~v18;
    v29 = (v27 + 8) & ~v18;
    v30 = *(v8 + 16);
    v38 = v14;
    v31 = v26;
    v30(v28, v29, v37);
    (*(v11 + 16))((v19 + v28) & v25, (v19 + v29) & v25, v36);
    v32 = (v20 + ((v19 + v28) & v25)) & v39;
    v33 = (v20 + ((v19 + v29) & v25)) & v39;
    (*(v15 + 16))(v32, v33, v38);
    *(v32 + v21) = *(v33 + v21);
    return v40;
  }

  return v34;
}

uint64_t sub_21D75110C(id *a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  v9 = *(a2 + 16);
  v18 = *(v9 - 8);
  v10 = (*(v8 + 80) | v6 | *(v18 + 80));
  v11 = *(v8 + 80);
  v12 = *(v18 + 80);
  v13 = (a1 + v10 + 8) & ~v10;
  (*(v5 + 8))(v13, v4);
  v14 = (*(v5 + 64) + v11 + v13) & ~v11;
  (*(v8 + 8))(v14, v7);
  v15 = *(v18 + 8);
  v16 = (*(v8 + 64) + v12 + v14) & ~v12;

  return v15(v16, v9);
}

void **sub_21D75128C(void **a1, void **a2, uint64_t a3)
{
  v27 = *a2;
  *a1 = *a2;
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v28 = *(a3 + 16);
  v12 = *(v28 - 8);
  v13 = *(v12 + 80);
  v14 = (*(v10 + 80) | v8 | *(v12 + 80));
  v15 = (a1 + v14 + 8) & ~v14;
  v16 = (a2 + v14 + 8) & ~v14;
  v17 = *(v7 + 16);
  v18 = v27;
  v17(v15, v16, v6);
  v19 = *(v7 + 64) + v11;
  v20 = (v19 + v15) & ~v11;
  v21 = (v19 + v16) & ~v11;
  (*(v10 + 16))(v20, v21, v9);
  v22 = *(v10 + 64) + v13;
  v23 = (v22 + v20) & ~v13;
  v24 = (v22 + v21) & ~v13;
  (*(v12 + 16))(v23, v24, v28);
  *(*(v12 + 64) + v23) = *(*(v12 + 64) + v24);
  return a1;
}

void **sub_21D75144C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = sub_21DBF56BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = sub_21DBF5D5C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v27 = *(a3 + 16);
  v15 = *(v27 - 8);
  v16 = *(v15 + 80);
  v17 = (*(v13 + 80) | v11 | *(v15 + 80));
  v18 = (a1 + v17 + 8) & ~v17;
  v19 = (a2 + v17 + 8) & ~v17;
  (*(v10 + 24))(v18, v19, v9);
  v20 = *(v10 + 64) + v14;
  v21 = (v20 + v18) & ~v14;
  v22 = (v20 + v19) & ~v14;
  (*(v13 + 24))(v21, v22, v12);
  v23 = *(v13 + 64) + v16;
  v24 = (v23 + v21) & ~v16;
  v25 = (v23 + v22) & ~v16;
  (*(v15 + 24))(v24, v25, v27);
  *(*(v15 + 64) + v24) = *(*(v15 + 64) + v25);
  return a1;
}

void *sub_21D75160C(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v24 = *(a3 + 16);
  v12 = *(v24 - 8);
  v13 = *(v12 + 80);
  v14 = (*(v10 + 80) | v8 | *(v12 + 80));
  v15 = (a1 + v14 + 8) & ~v14;
  v16 = (a2 + v14 + 8) & ~v14;
  (*(v7 + 32))(v15, v16, v6);
  v17 = *(v7 + 64) + v11;
  v18 = (v17 + v15) & ~v11;
  v19 = (v17 + v16) & ~v11;
  (*(v10 + 32))(v18, v19, v9);
  v20 = *(v10 + 64) + v13;
  v21 = (v20 + v18) & ~v13;
  v22 = (v20 + v19) & ~v13;
  (*(v12 + 32))(v21, v22, v24);
  *(*(v12 + 64) + v21) = *(*(v12 + 64) + v22);
  return a1;
}

void **sub_21D7517C0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = sub_21DBF5D5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v25 = *(a3 + 16);
  v13 = *(v25 - 8);
  v14 = *(v13 + 80);
  v15 = (*(v11 + 80) | v9 | *(v13 + 80));
  v16 = (a1 + v15 + 8) & ~v15;
  v17 = (a2 + v15 + 8) & ~v15;
  (*(v8 + 40))(v16, v17, v7);
  v18 = *(v8 + 64) + v12;
  v19 = (v18 + v16) & ~v12;
  v20 = (v18 + v17) & ~v12;
  (*(v11 + 40))(v19, v20, v10);
  v21 = *(v11 + 64) + v14;
  v22 = (v21 + v19) & ~v14;
  v23 = (v21 + v20) & ~v14;
  (*(v13 + 40))(v22, v23, v25);
  *(*(v13 + 64) + v22) = *(*(v13 + 64) + v23);
  return a1;
}

uint64_t sub_21D75197C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  if (*(v14 + 84) <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  if (v15 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v15;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v10 + 80);
  v19 = *(v14 + 80);
  v20 = (*(v10 + 80) | *(v7 + 80) | *(v14 + 80));
  v21 = *(v7 + 64) + v18;
  v22 = *(*(v9 - 8) + 64) + v19;
  if (a2 <= v17)
  {
    goto LABEL_37;
  }

  v23 = *(v14 + 64) + ((v22 + (v21 & ~v18)) & ~v19) + ((v20 + 8) & ~v20) + 1;
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_16;
  }

  v27 = ((a2 - v17 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v27))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_37;
      }

LABEL_16:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_37;
      }

LABEL_24:
      v28 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v28 = 0;
      }

      if (*(v14 + 64) + ((v22 + (v21 & ~v18)) & ~v19) + ((v20 + 8) & ~v20) == -1)
      {
        v30 = 0;
      }

      else
      {
        if (v23 <= 3)
        {
          v29 = *(v14 + 64) + ((v22 + (v21 & ~v18)) & ~v19) + ((v20 + 8) & ~v20) + 1;
        }

        else
        {
          v29 = 4;
        }

        if (v29 > 2)
        {
          if (v29 == 3)
          {
            v30 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v30 = *a1;
          }
        }

        else if (v29 == 1)
        {
          v30 = *a1;
        }

        else
        {
          v30 = *a1;
        }
      }

      return v17 + (v30 | v28) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_24;
    }
  }

LABEL_37:
  if ((v15 & 0x80000000) == 0)
  {
    v31 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v31) = -1;
    }

    return (v31 + 1);
  }

  if (v8 == v16)
  {
    v32 = *(v7 + 48);
    v33 = (a1 + v20 + 8) & ~v20;
    v34 = v8;
    v13 = v6;
LABEL_48:

    return v32(v33, v34, v13);
  }

  if (v11 != v16)
  {
    v32 = *(v14 + 48);
    v33 = (v22 + ((v21 + ((a1 + v20 + 8) & ~v20)) & ~v18)) & ~v19;
    v34 = *(v14 + 84);
    goto LABEL_48;
  }

  v35 = *(v10 + 48);

  return v35((v21 + ((a1 + v20 + 8) & ~v20)) & ~v18);
}

void sub_21D751CEC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(sub_21DBF5D5C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(a4 + 16);
  v16 = *(v15 - 8);
  v17 = *(v11 + 80);
  v18 = *(v16 + 84);
  v19 = *(v11 + 64);
  if (v18 <= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = *(v16 + 84);
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v20;
  }

  v23 = *(v11 + 80);
  v24 = *(v16 + 80);
  v25 = (v17 | *(v9 + 80) | *(v16 + 80));
  v26 = *(v9 + 64) + v17;
  v27 = v19 + v24;
  v28 = *(v16 + 64) + ((v19 + v24 + (v26 & ~v17)) & ~v24) + 1;
  v29 = v28 + ((v25 + 8) & ~v25);
  if (a3 <= v22)
  {
    v30 = 0;
  }

  else if (v29 <= 3)
  {
    v33 = ((a3 - v22 + ~(-1 << (8 * v29))) >> (8 * v29)) + 1;
    if (HIWORD(v33))
    {
      v30 = 4;
    }

    else
    {
      if (v33 < 0x100)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      if (v33 >= 2)
      {
        v30 = v34;
      }

      else
      {
        v30 = 0;
      }
    }
  }

  else
  {
    v30 = 1;
  }

  if (v22 < a2)
  {
    v31 = ~v22 + a2;
    if (v29 < 4)
    {
      v32 = (v31 >> (8 * v29)) + 1;
      if (v29)
      {
        v35 = v31 & ~(-1 << (8 * v29));
        bzero(a1, v28 + ((v25 + 8) & ~v25));
        if (v29 != 3)
        {
          if (v29 == 2)
          {
            *a1 = v35;
            if (v30 > 1)
            {
LABEL_66:
              if (v30 == 2)
              {
                *&a1[v29] = v32;
              }

              else
              {
                *&a1[v29] = v32;
              }

              return;
            }
          }

          else
          {
            *a1 = v31;
            if (v30 > 1)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_63;
        }

        *a1 = v35;
        a1[2] = BYTE2(v35);
      }

      if (v30 > 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      bzero(a1, v28 + ((v25 + 8) & ~v25));
      *a1 = v31;
      v32 = 1;
      if (v30 > 1)
      {
        goto LABEL_66;
      }
    }

LABEL_63:
    if (v30)
    {
      a1[v29] = v32;
    }

    return;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&a1[v29] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v29] = 0;
  }

  else if (v30)
  {
    a1[v29] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if ((v20 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v36 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v36 = (a2 - 1);
    }

    *a1 = v36;
    return;
  }

  v37 = (&a1[v25 + 8] & ~v25);
  if (v21 < a2)
  {
    if (v28 <= 3)
    {
      v38 = ~(-1 << (8 * v28));
    }

    else
    {
      v38 = -1;
    }

    if (v28)
    {
      v39 = v38 & (~v21 + a2);
      if (v28 <= 3)
      {
        v40 = v28;
      }

      else
      {
        v40 = 4;
      }

      bzero(v37, v28);
      if (v40 > 2)
      {
        if (v40 == 3)
        {
          *v37 = v39;
          v37[2] = BYTE2(v39);
        }

        else
        {
          *v37 = v39;
        }
      }

      else if (v40 == 1)
      {
        *v37 = v39;
      }

      else
      {
        *v37 = v39;
      }
    }

    return;
  }

  if (v10 == v21)
  {
    v41 = *(v9 + 56);
    v42 = v37;
    v43 = a2;
    v44 = v10;
    v15 = v8;
LABEL_77:

    v41(v42, v43, v44, v15);
    return;
  }

  v45 = &v37[v26] & ~v23;
  if (v13 != v21)
  {
    v41 = *(v16 + 56);
    v42 = ((v27 + v45) & ~v24);
    v43 = a2;
    v44 = v18;
    goto LABEL_77;
  }

  v46 = *(v12 + 56);

  v46(v45, a2);
}

double sub_21D752164(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_21DBF8E0C();
    v3 = vars8;
  }

  sub_21DBF8E0C();
  return result;
}

double sub_21D7521B0(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21D7521FC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D752164(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t sub_21D752248(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D752164(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21D7521B0(v6, v7, v8);
  return a1;
}

uint64_t sub_21D7522A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21D7521B0(v4, v5, v6);
  return a1;
}

uint64_t static TTRICollectionViewDragItemUserInfo.dragItemLocalObjectKey.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRICollectionViewDragItemUserInfo(0, a1, a3, a4);

  return sub_21DBFC8EC();
}

uint64_t TTRICollectionViewDragItemUserInfo.coordinatorID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF56BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRICollectionViewDragItemUserInfo.indexPath.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_21DBF5D5C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21D7524A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_21DBF56BC();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v15 = type metadata accessor for TTRICollectionViewDragItemUserInfo(0, a5, v13, v14);
  v16 = v15[7];
  v17 = sub_21DBF5D5C();
  (*(*(v17 - 8) + 32))(a6 + v16, a2, v17);
  result = (*(*(a5 - 8) + 32))(a6 + v15[8], a3, a5);
  *(a6 + v15[9]) = a4;
  return result;
}

double TTRICollectionViewDropProposal.dragItemSources.getter@<D0>(void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  swift_unknownObjectRetain();
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

uint64_t TTRICollectionViewDropProposal.dropDestination.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v5;
  type metadata accessor for TTRTreeViewDropDestination(255, v8);
  v6 = sub_21DBFBA8C();
  return (*(*(v6 - 8) + 16))(a2, v2 + v4, v6);
}

uint64_t TTRICollectionViewDropProposal.init(dragItemSources:dropOperation:dropIntent:dropDestination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *a1;
  *(a9 + 8) = *(a1 + 8);
  *(a9 + 24) = a2;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v16 = type metadata accessor for TTRICollectionViewDropProposal(0, &v20);
  sub_21D759568(a3, a9 + *(v16 + 56), type metadata accessor for TTRICollectionViewDropIntent);
  v17 = *(v16 + 60);
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  type metadata accessor for TTRTreeViewDropDestination(255, &v20);
  v18 = sub_21DBFBA8C();
  return (*(*(v18 - 8) + 32))(a9 + v17, a4, v18);
}

id TTRICollectionViewDropProposal.dropProposalForCollectionView.getter(uint64_t a1, __n128 a2)
{
  v3 = *(v2 + 24);
  v4 = sub_21D75283C(a1, a2);
  v5 = objc_allocWithZone(MEMORY[0x277D752E8]);

  return [v5 initWithDropOperation:v3 intent:v4];
}

uint64_t sub_21D75283C(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D752D6C(v2 + *(a1 + 56), v6, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = type metadata accessor for TTRUnadjustedIndexPath;
  if (!EnumCaseMultiPayload)
  {
    v10 = v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220, &unk_21DC26970) + 48)];
    v24[1] = *(v2 + 8);
    type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(255, *(a1 + 24), v11, v12);
    v13 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83988], v13);
    v14 = v2;
    v15 = sub_21DBFACFC();
    v16 = sub_21DBFA6DC();
    v17 = *(v14 + 16);
    if (v17 >> 62)
    {
      v23 = v16;
      v18 = sub_21DBFBD7C();
      v16 = v23;
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v18 != 0;
    if ((v15 & 1) == 0)
    {
      if (v10)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18 == 0;
      }

      v19 = v20 && v16 < 2;
    }

    v9 = v19;
    v8 = type metadata accessor for TTRAdjustedIndexPath;
    goto LABEL_17;
  }

  v9 = 0;
  if (EnumCaseMultiPayload == 1)
  {
    v9 = 2;
LABEL_17:
    sub_21D7595D0(v6, v8);
  }

  return v9;
}

uint64_t TTRICollectionViewDropProposal.indexPathForCustomInsertionIndicator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v33 - v16;
  sub_21D752D6C(v3 + *(a1 + 56), v11, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220, &unk_21DC26970) + 48)];
    sub_21D759568(v11, v14, type metadata accessor for TTRAdjustedIndexPath);
    v23 = sub_21D75283C(a1, v22);
    if ((v23 - 1) >= 2 && !v23 && !v21)
    {
      sub_21D759568(v14, v17, type metadata accessor for TTRAdjustedIndexPath);
      v27 = *v3;
      v28 = v3[1];
      v29 = v3[2];
      v33[1] = v27;
      v33[2] = v28;
      v33[3] = v29;
      sub_21D752D6C(v17, v8, type metadata accessor for TTRAdjustedIndexPath);
      swift_storeEnumTagMultiPayload();
      v32 = type metadata accessor for TTRICollectionViewDragItemSources(0, *(a1 + 24), v30, v31);
      swift_unknownObjectRetain();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D76ABB8(v8, v32, a2);
      sub_21D7595D0(v8, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);

      swift_unknownObjectRelease();
      sub_21D7595D0(v17, type metadata accessor for TTRAdjustedIndexPath);
      v24 = 0;
      goto LABEL_10;
    }

    v19 = type metadata accessor for TTRAdjustedIndexPath;
    v20 = v14;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v19 = type metadata accessor for TTRUnadjustedIndexPath;
    v20 = v11;
LABEL_8:
    sub_21D7595D0(v20, v19);
  }

  v24 = 1;
LABEL_10:
  v25 = type metadata accessor for TTRUnadjustedIndexPath(0);
  return (*(*(v25 - 8) + 56))(a2, v24, 1, v25);
}

uint64_t sub_21D752D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t TTRICollectionViewDropProposal.sectionIndexForCustomDropHighlight.getter(uint64_t a1)
{
  v3 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D752D6C(v1 + *(a1 + 56), v8, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v12 = v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220, &unk_21DC26970) + 48)];
    sub_21D759568(v8, v5, type metadata accessor for TTRAdjustedIndexPath);
    v14 = sub_21D75283C(a1, v13);
    if ((v14 - 1) >= 2 && !v14 && v12 == 2)
    {
      v15 = sub_21DBF5D0C();
      sub_21D7595D0(v5, type metadata accessor for TTRAdjustedIndexPath);
      return v15;
    }

    v10 = type metadata accessor for TTRAdjustedIndexPath;
    v11 = v5;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for TTRUnadjustedIndexPath;
    v11 = v8;
LABEL_9:
    sub_21D7595D0(v11, v10);
  }

  return 0;
}

uint64_t sub_21D752FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TTRICollectionViewDragItemSources(0, *(a1 + 24), a3, a4);
  v9 = sub_21D76ADA4(v5, v6, v7, v8);
  MEMORY[0x223D42AA0](v9);

  v10 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_21D210A84((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = 0x203A67617244;
  *(v13 + 5) = 0xE600000000000000;
  sub_21DBFBEEC();

  v14 = *(v4 + 24);
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      if (v14 == 3)
      {
        v15 = 0xE400000000000000;
        v16 = 1702260557;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v15 = 0xE400000000000000;
    v16 = 2037411651;
  }

  else
  {
    if (v14)
    {
      if (v14 == 1)
      {
        v15 = 0xE90000000000006ELL;
        v16 = 0x6564646962726F46;
        goto LABEL_13;
      }

LABEL_10:
      v15 = 0xE300000000000000;
      v16 = 4144959;
      goto LABEL_13;
    }

    v15 = 0xE600000000000000;
    v16 = 0x6C65636E6143;
  }

LABEL_13:
  MEMORY[0x223D42AA0](v16, v15);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  v17 = TTRICollectionViewDropIntent.description.getter();
  MEMORY[0x223D42AA0](v17);

  v19 = *(v10 + 2);
  v18 = *(v10 + 3);
  if (v19 >= v18 >> 1)
  {
    v10 = sub_21D210A84((v18 > 1), v19 + 1, 1, v10);
  }

  *(v10 + 2) = v19 + 1;
  v20 = &v10[16 * v19];
  *(v20 + 4) = 0x6C61736F706F7250;
  *(v20 + 5) = 0xEA0000000000203ALL;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v21 = sub_21DBFA07C();

  return v21;
}

uint64_t TTRICollectionViewDropContext.__allocating_init(session:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TTRICollectionViewDropContext.init(session:)(a1);
  return v2;
}

char *TTRICollectionViewDropContext.init(session:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 120);
  v7 = v4[11];
  v8 = v4[12];
  v9 = v4[13];
  v14 = v4[10];
  v6 = v14;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = type metadata accessor for TTRICollectionViewDropProposal(0, &v14);
  (*(*(v10 - 8) + 56))(&v2[v5], 1, 1, v10);
  v11 = *(*v2 + 128);
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  type metadata accessor for TTRICollectionViewDropContext.DebugInfo(0, &v14);
  v12 = swift_allocObject();
  sub_21D753FD4();
  *&v2[v11] = v12;
  *(v2 + 2) = a1;
  return v2;
}

uint64_t TTRICollectionViewDropContext.lastDropProposal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  type metadata accessor for TTRICollectionViewDropProposal(255, v8);
  v6 = sub_21DBFBA8C();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t TTRICollectionViewDropContext.lastDropProposal.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  type metadata accessor for TTRICollectionViewDropProposal(255, v8);
  v6 = sub_21DBFBA8C();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_21D7535E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE61450, &unk_21DC26B48);
  MEMORY[0x28223BE20](v2 - 8);
  v71 = &v68 - v3;
  v4 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61448, &qword_21DC26B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v68 - v7;
  v9 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v68 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_21DBFBEEC();

  v77 = 0xD000000000000021;
  v78 = 0x800000021DC6A1B0;
  v15 = qword_27CE8EAB8;
  swift_beginAccess();
  sub_21D0D3954(v1 + v15, v14, &unk_27CE58E70, &unk_21DC0A930);
  v16 = sub_21DBFBA5C();
  v18 = v17;
  sub_21D0CF7E0(v14, &unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x223D42AA0](v16, v18);

  v19 = v77;
  v20 = v78;
  v21 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    v21 = sub_21D210A84((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v24;
  v25 = &v21[16 * v23];
  *(v25 + 4) = v19;
  *(v25 + 5) = v20;
  v26 = qword_27CE8EAC0;
  swift_beginAccess();
  sub_21D0D3954(v1 + v26, v8, &qword_27CE61448, &qword_21DC26B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE61448, &qword_21DC26B40);
  }

  else
  {
    v27 = v68;
    sub_21D759568(v8, v68, type metadata accessor for TTRICollectionViewHitTestResult);
    v29 = *(v21 + 3);
    if ((v23 + 2) > (v29 >> 1))
    {
      v21 = sub_21D210A84((v29 > 1), v23 + 2, 1, v21);
    }

    *(v21 + 2) = v23 + 2;
    v30 = &v21[16 * v24];
    *(v30 + 4) = 0xD000000000000015;
    *(v30 + 5) = 0x800000021DC6A220;
    v31 = TTRICollectionViewHitTestResult.debugHUDInfo.getter(v28);
    v33 = v32;
    v35 = *(v21 + 2);
    v34 = *(v21 + 3);
    if (v35 >= v34 >> 1)
    {
      v21 = sub_21D210A84((v34 > 1), v35 + 1, 1, v21);
    }

    sub_21D7595D0(v27, type metadata accessor for TTRICollectionViewHitTestResult);
    *(v21 + 2) = v35 + 1;
    v36 = &v21[16 * v35];
    *(v36 + 4) = v31;
    *(v36 + 5) = v33;
  }

  v37 = *(v1 + qword_27CE8EAC8);
  if (v37 != 5)
  {
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_21DBFBEEC();

    v75 = 0xD000000000000013;
    v76 = 0x800000021DC6A200;
    if (v37 <= 1)
    {
      if (v37)
      {
        v38 = 0xE700000000000000;
        v39 = 0x6E776F6E6B6E75;
      }

      else
      {
        v38 = 0xE500000000000000;
        v39 = 0x7061476F6ELL;
      }
    }

    else if (v37 == 2)
    {
      v38 = 0xE500000000000000;
      v39 = 0x65766F6261;
    }

    else if (v37 == 3)
    {
      v38 = 0xEF6E6F697461636FLL;
      v39 = 0x4C746E6572727563;
    }

    else
    {
      v38 = 0xE500000000000000;
      v39 = 0x776F6C6562;
    }

    MEMORY[0x223D42AA0](v39, v38);

    v40 = v75;
    v41 = v76;
    v43 = *(v21 + 2);
    v42 = *(v21 + 3);
    if (v43 >= v42 >> 1)
    {
      v21 = sub_21D210A84((v42 > 1), v43 + 1, 1, v21);
    }

    *(v21 + 2) = v43 + 1;
    v44 = &v21[16 * v43];
    *(v44 + 4) = v40;
    *(v44 + 5) = v41;
  }

  v45 = qword_27CE8EAD0;
  swift_beginAccess();
  v46 = v1 + v45;
  v47 = v71;
  sub_21D0D3954(v46, v71, &unk_27CE61450, &unk_21DC26B48);
  if ((*(v69 + 48))(v47, 1, v70) == 1)
  {
    sub_21D0CF7E0(v47, &unk_27CE61450, &unk_21DC26B48);
  }

  else
  {
    sub_21D759568(v47, v72, type metadata accessor for TTRICollectionViewEmptySpaceType);
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_21DBFBEEC();

    v73 = 0xD000000000000017;
    v74 = 0x800000021DC6A1E0;
    v48 = TTRICollectionViewEmptySpaceType.description.getter();
    MEMORY[0x223D42AA0](v48);

    v49 = v73;
    v50 = v74;
    v52 = *(v21 + 2);
    v51 = *(v21 + 3);
    if (v52 >= v51 >> 1)
    {
      v21 = sub_21D210A84((v51 > 1), v52 + 1, 1, v21);
    }

    sub_21D7595D0(v72, type metadata accessor for TTRICollectionViewEmptySpaceType);
    *(v21 + 2) = v52 + 1;
    v53 = &v21[16 * v52];
    *(v53 + 4) = v49;
    *(v53 + 5) = v50;
  }

  v54 = *(v1 + qword_27CE8EAD8);
  if (v54)
  {
    v73 = 0;
    v74 = 0xE000000000000000;
    v55 = v54;
    sub_21DBFBEEC();

    v73 = 0x6F7270207473616CLL;
    v74 = 0xEF203A6C61736F70;
    v56 = [v55 operation];
    if (v56 > 1)
    {
      if (v56 == 2)
      {
        v57 = 0xE400000000000000;
        v58 = 2037411651;
        goto LABEL_39;
      }

      if (v56 == 3)
      {
        v57 = 0xE400000000000000;
        v58 = 1702260557;
        goto LABEL_39;
      }
    }

    else
    {
      if (!v56)
      {
        v57 = 0xE600000000000000;
        v58 = 0x6C65636E6143;
        goto LABEL_39;
      }

      if (v56 == 1)
      {
        v57 = 0xE90000000000006ELL;
        v58 = 0x6564646962726F46;
LABEL_39:
        MEMORY[0x223D42AA0](v58, v57);

        MEMORY[0x223D42AA0](8236, 0xE200000000000000);
        v59 = [v55 intent];
        if (v59 > 2)
        {
          v60 = 1061109567;
        }

        else
        {
          v60 = *&aUnsp[8 * v59];
        }

        MEMORY[0x223D42AA0](v60, 0xE400000000000000);

        v61 = v73;
        v62 = v74;
        v64 = *(v21 + 2);
        v63 = *(v21 + 3);
        if (v64 >= v63 >> 1)
        {
          v21 = sub_21D210A84((v63 > 1), v64 + 1, 1, v21);
        }

        *(v21 + 2) = v64 + 1;
        v65 = &v21[16 * v64];
        *(v65 + 4) = v61;
        *(v65 + 5) = v62;
        goto LABEL_45;
      }
    }

    v57 = 0xE300000000000000;
    v58 = 4144959;
    goto LABEL_39;
  }

LABEL_45:
  v73 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v66 = sub_21DBFA07C();

  return v66;
}

uint64_t sub_21D753EBC()
{
  sub_21D0CF7E0(v0 + qword_27CE8EAB8, &unk_27CE58E70, &unk_21DC0A930);
  sub_21D0CF7E0(v0 + qword_27CE8EAC0, &qword_27CE61448, &qword_21DC26B40);
  sub_21D0CF7E0(v0 + qword_27CE8EAD0, &unk_27CE61450, &unk_21DC26B48);

  return v0;
}

uint64_t sub_21D753F44()
{
  sub_21D753EBC();

  return swift_deallocClassInstance();
}

uint64_t sub_21D753F9C()
{
  v0 = swift_allocObject();
  sub_21D753FD4();
  return v0;
}

uint64_t sub_21D753FD4()
{
  v1 = qword_27CE8EAB8;
  v2 = sub_21DBF5D5C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = qword_27CE8EAC0;
  v4 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + qword_27CE8EAC8) = 5;
  v5 = qword_27CE8EAD0;
  v6 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + qword_27CE8EAD8) = 0;
  return v0;
}

char *TTRICollectionViewDropContext.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease();
  v2 = *(*v0 + 120);
  v3 = *(v1 + 96);
  v6[0] = *(v1 + 80);
  v6[1] = v3;
  type metadata accessor for TTRICollectionViewDropProposal(255, v6);
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return v0;
}

uint64_t TTRICollectionViewDropContext.__deallocating_deinit()
{
  TTRICollectionViewDropContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRICollectionViewDropContext.debugHUDInfo.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 96);
  v39[0] = *(*v0 + 80);
  v39[1] = v3;
  v4 = type metadata accessor for TTRICollectionViewDropProposal(255, v39);
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v38 - v11;
  v13 = *(v2 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v13, v5);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v9 + 32))(v12, v8, v4);
    v18 = sub_21D752FA4(v4, v15, v16, v17);
    v20 = v19;
    v14 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v22 = *(v14 + 2);
    v21 = *(v14 + 3);
    if (v22 >= v21 >> 1)
    {
      v14 = sub_21D210A84((v21 > 1), v22 + 1, 1, v14);
    }

    (*(v9 + 8))(v12, v4);
    *(v14 + 2) = v22 + 1;
    v23 = &v14[16 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
  }

  v24 = sub_21D7535E4();
  v26 = v25;
  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_21D210A84(0, *(v14 + 2) + 1, 1, v14);
    }

    v30 = *(v14 + 2);
    v29 = *(v14 + 3);
    v31 = v29 >> 1;
    v32 = v30 + 1;
    if (v29 >> 1 <= v30)
    {
      v14 = sub_21D210A84((v29 > 1), v30 + 1, 1, v14);
      v29 = *(v14 + 3);
      v31 = v29 >> 1;
    }

    *(v14 + 2) = v32;
    v33 = &v14[16 * v30];
    *(v33 + 4) = 0xD00000000000002BLL;
    *(v33 + 5) = 0x800000021DC6A0D0;
    v34 = v30 + 2;
    if (v31 < v34)
    {
      v14 = sub_21D210A84((v29 > 1), v34, 1, v14);
    }

    *(v14 + 2) = v34;
    v35 = &v14[16 * v32];
    *(v35 + 4) = v28;
    *(v35 + 5) = v26;
  }

  else
  {
  }

  v38[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v36 = sub_21DBFA07C();

  return v36;
}

id TTRICollectionViewDropContext.debugIndicatorColor.getter(__n128 a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(v2 + 120);
  swift_beginAccess();
  v8 = *(v3 + 96);
  v15[0] = *(v3 + 80);
  v15[1] = v8;
  v9 = type metadata accessor for TTRICollectionViewDropProposal(0, v15);
  if (!(*(*(v9 - 8) + 48))(v7, 1, v9))
  {
    sub_21D752D6C(&v7[*(v9 + 56)], v6, type metadata accessor for TTRICollectionViewDropIntent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_2;
      }

      v13 = [objc_opt_self() greenColor];
      v14 = type metadata accessor for TTRUnadjustedIndexPath;
    }

    else
    {
      v13 = [objc_opt_self() orangeColor];
      v14 = type metadata accessor for TTRAdjustedIndexPath;
    }

    sub_21D7595D0(v6, v14);
    return v13;
  }

LABEL_2:
  v10 = [objc_opt_self() grayColor];

  return v10;
}

uint64_t sub_21D754880(uint64_t a1)
{
  result = sub_21DBF56BC();
  if (v2 <= 0x3F)
  {
    result = sub_21DBF5D5C();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_21D754990(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_21DBF56BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 64);
  v16 = (*(v9 + 80) | *(v6 + 80) | *(v13 + 80));
  if (v16 <= 7 && v15 + ((*(v9 + 64) + (v11 & ~v10) + v14) & ~v14) + 1 <= 0x18 && ((*(v9 + 80) | *(v6 + 80) | *(v13 + 80)) & 0x100000) == 0)
  {
    v21 = ~v10;
    v31 = v12;
    v32 = a1;
    v30 = v8;
    v22 = a1;
    v23 = *(v9 + 64);
    (*(v6 + 16))(v22, a2, v5);
    v24 = (v32 + v11) & v21;
    v25 = (a2 + v11) & v21;
    (*(v9 + 16))(v24, v25, v30);
    v26 = v25 + v23;
    v27 = (v24 + v23 + v14) & ~v14;
    v28 = (v26 + v14) & ~v14;
    v20 = v32;
    (*(v13 + 16))(v27, v28, v31);
    *(v27 + v15) = *(v28 + v15);
  }

  else
  {
    v19 = *a2;
    *a1 = *a2;
    v20 = (v19 + ((v16 + 16) & ~v16));
  }

  return v20;
}

uint64_t sub_21D754BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8) + 8;
  (*v5)(a1, v4);
  v6 = *(v5 + 56) + a1;
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  v9 = v8 + 8;
  v10 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v8 + 8))(v10, v7);
  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (v10 + *(v9 + 56) + *(v11 + 80)) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t sub_21D754CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8) + 16;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 48);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 16))(v14, v15, v9);
  v16 = *(v11 + 48);
  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 16;
  v19 = *(v17 + 80);
  v20 = v16 + v19;
  v21 = (v20 + v14) & ~v19;
  v22 = (v20 + v15) & ~v19;
  (*(v17 + 16))(v21, v22);
  *(*(v18 + 48) + v21) = *(*(v18 + 48) + v22);
  return a1;
}

uint64_t sub_21D754E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8) + 24;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 40);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 24))(v14, v15, v9);
  v16 = *(v11 + 40);
  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 24;
  v19 = *(v17 + 80);
  v20 = v16 + v19;
  v21 = (v20 + v14) & ~v19;
  v22 = (v20 + v15) & ~v19;
  (*(v17 + 24))(v21, v22);
  *(*(v18 + 40) + v21) = *(*(v18 + 40) + v22);
  return a1;
}

uint64_t sub_21D754F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 32);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 32))(v14, v15, v9);
  v16 = *(v11 + 32);
  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 32;
  v19 = *(v17 + 80);
  v20 = v16 + v19;
  v21 = (v20 + v14) & ~v19;
  v22 = (v20 + v15) & ~v19;
  (*(v17 + 32))(v21, v22);
  *(*(v18 + 32) + v21) = *(*(v18 + 32) + v22);
  return a1;
}

uint64_t sub_21D75505C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8) + 40;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 24);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 40))(v14, v15, v9);
  v16 = *(v11 + 24);
  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 40;
  v19 = *(v17 + 80);
  v20 = v16 + v19;
  v21 = (v20 + v14) & ~v19;
  v22 = (v20 + v15) & ~v19;
  (*(v17 + 40))(v21, v22);
  *(*(v18 + 24) + v21) = *(*(v18 + 24) + v22);
  return a1;
}

uint64_t sub_21D755188(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(sub_21DBF5D5C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (v15 <= v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = *(v14 + 84);
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(v7 + 64) + v16;
  if (a2 > v21)
  {
    v23 = v19 + ((v17 + (v22 & ~v16) + v18) & ~v18) + 1;
    v24 = 8 * v23;
    if (v23 > 3)
    {
      goto LABEL_13;
    }

    v26 = ((a2 - v21 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v26))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v26 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v26 >= 2)
    {
LABEL_13:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_33;
      }

LABEL_20:
      v27 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v27 = 0;
      }

      if (v19 + ((v17 + (v22 & ~v16) + v18) & ~v18) == -1)
      {
        v29 = 0;
      }

      else
      {
        if (v23 <= 3)
        {
          v28 = v19 + ((v17 + (v22 & ~v16) + v18) & ~v18) + 1;
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v29 = *a1;
          }
        }

        else if (v28 == 1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *a1;
        }
      }

      v37 = v21 + (v29 | v27);
      return (v37 + 1);
    }
  }

LABEL_33:
  if (v8 == v21)
  {
    v30 = *(v7 + 48);
    v31 = a1;
    v32 = v8;
    v13 = v6;
LABEL_35:

    return v30(v31, v32, v13);
  }

  v34 = (a1 + v22) & ~v16;
  if (v11 != v21)
  {
    v31 = ((v34 + v17 + v18) & ~v18);
    if (v15 == v21)
    {
      v30 = *(v14 + 48);
      v32 = *(v14 + 84);
      goto LABEL_35;
    }

    v36 = *(v31 + v19);
    if (v36 < 2)
    {
      return 0;
    }

    v37 = (v36 + 2147483646) & 0x7FFFFFFF;
    return (v37 + 1);
  }

  v35 = *(v10 + 48);

  return v35(v34);
}

void sub_21D7554C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = sub_21DBF5D5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a4 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(*(v11 - 8) + 64);
  v21 = *(v16 + 80);
  v22 = *(v16 + 64);
  if (v17 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v16 + 84);
  }

  if (v23 <= 0xFE)
  {
    v24 = 254;
  }

  else
  {
    v24 = v23;
  }

  v25 = v22 + ((v20 + ((v18 + v19) & ~v19) + v21) & ~v21) + 1;
  if (a3 <= v24)
  {
    v26 = 0;
  }

  else if (v25 <= 3)
  {
    v29 = ((a3 - v24 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
    if (HIWORD(v29))
    {
      v26 = 4;
    }

    else
    {
      if (v29 < 0x100)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      if (v29 >= 2)
      {
        v26 = v30;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v26 = 1;
  }

  if (v24 < a2)
  {
    v27 = ~v24 + a2;
    if (v25 < 4)
    {
      v28 = (v27 >> (8 * v25)) + 1;
      if (v22 + ((v20 + ((v18 + v19) & ~v19) + v21) & ~v21) != -1)
      {
        v31 = v27 & ~(-1 << (8 * v25));
        bzero(a1, v22 + ((v20 + ((v18 + v19) & ~v19) + v21) & ~v21) + 1);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *a1 = v31;
            if (v26 > 1)
            {
LABEL_56:
              if (v26 == 2)
              {
                *&a1[v25] = v28;
              }

              else
              {
                *&a1[v25] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v26 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(a1, v22 + ((v20 + ((v18 + v19) & ~v19) + v21) & ~v21) + 1);
      *a1 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v26)
    {
      a1[v25] = v28;
    }

    return;
  }

  if (v26 <= 1)
  {
    if (v26)
    {
      a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (v26 == 2)
  {
    *&a1[v25] = 0;
    goto LABEL_36;
  }

  *&a1[v25] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 == v24)
  {
    v32 = *(v9 + 56);
    v33 = a1;
    v34 = a2;
    v35 = v10;
    v15 = v8;
LABEL_39:

    v32(v33, v34, v35, v15);
    return;
  }

  if (v13 != v24)
  {
    v33 = (((&a1[v18 + v19] & ~v19) + v20 + v21) & ~v21);
    if (v17 != v24)
    {
      v33[v22] = a2 + 1;
      return;
    }

    v32 = *(v16 + 56);
    v34 = a2;
    v35 = v17;
    goto LABEL_39;
  }

  v36 = *(v12 + 56);

  v36(&a1[v18 + v19] & ~v19, a2);
}

uint64_t sub_21D755878(uint64_t a1, __n128 a2)
{
  v8 = &unk_21DC26A50;
  v9 = MEMORY[0x277D83410] + 64;
  result = type metadata accessor for TTRICollectionViewDropIntent(319);
  if (v4 <= 0x3F)
  {
    v10 = *(result - 8) + 64;
    v5 = *(a1 + 32);
    v7[0] = *(a1 + 16);
    v7[1] = v5;
    type metadata accessor for TTRTreeViewDropDestination(255, v7);
    result = sub_21DBFBA8C();
    if (v6 <= 0x3F)
    {
      v11 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_21D755970(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8;
  v10 = *(v7 + 64);
  if (v10 >= v10 + 1)
  {
    v11 = *(*(v6 - 8) + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = *(a3 + 24);
  v13 = *(*(a3 + 16) - 8);
  v14 = *(v12 - 8);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = *(v13 + 80) & 0xF8 | v16 | 7;
  v18 = *(v13 + 64) + v16;
  v19 = *(v14 + 84);
  v20 = *(v14 + 64);
  if (v19)
  {
    v21 = *(v14 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = (((v18 & ~v16) + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v22 + v16) & ~v16) + v20 <= v22)
  {
    v23 = (((v18 & ~v16) + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v23 = ((v22 + v16) & ~v16) + v20;
  }

  v24 = v17 | v8;
  v25 = (*(v13 + 80) | v8 | *(v14 + 80)) & 0x100000;
  v26 = ((((-33 - v8) | v8) + ~v11 - v17) | v17) - (v23 + 1);
  v27 = *a2;
  *a1 = *a2;
  if ((v17 | v9) != 7 || v25 != 0 || v26 < 0xFFFFFFFFFFFFFFE7)
  {
    v30 = (v27 + ((v24 + 16) & ~v24));

    return v30;
  }

  v67 = v23 + 1;
  v68 = v6;
  v63 = v18;
  v64 = v13;
  v65 = v15;
  v60 = v19;
  v61 = v20;
  __n = v21;
  v66 = v12;
  v69 = v23;
  v31 = a2[2];
  a1[1] = a2[1];
  a1[2] = v31;
  v72 = a1;
  v32 = a1 + 31;
  v71 = (a2 + 31) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v71 + 8);
  v34 = v32 & 0xFFFFFFFFFFFFFFF8;
  *(v32 & 0xFFFFFFFFFFFFFFF8) = *v71;
  v35 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 8);
  v36 = *(v71 + 8 + v11);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v36 < 2)
  {
    v39 = v69;
    goto LABEL_34;
  }

  if (v11 <= 3)
  {
    v37 = v11;
  }

  else
  {
    v37 = 4;
  }

  if (v37 <= 1)
  {
    v39 = v69;
    if (!v37)
    {
      goto LABEL_34;
    }

    v38 = *v33;
    if (v11 >= 4)
    {
      goto LABEL_33;
    }

LABEL_29:
    v36 = (v38 | ((v36 - 2) << (8 * v11))) + 2;
    goto LABEL_34;
  }

  if (v37 == 2)
  {
    v38 = *v33;
  }

  else if (v37 == 3)
  {
    v38 = *(v71 + 8) | (*(v71 + 10) << 16);
  }

  else
  {
    v38 = *v33;
  }

  v39 = v69;
  if (v11 < 4)
  {
    goto LABEL_29;
  }

LABEL_33:
  v36 = v38 + 2;
LABEL_34:
  v40 = v11 + 1;
  if (v36 == 1)
  {
    (*(v7 + 16))(v35, v33, v68);
    v35[v11] = 1;
  }

  else if (v36)
  {
    memcpy(v35, v33, v11 + 1);
  }

  else
  {
    (*(v7 + 16))(v35, v33, v68);
    v35[v10] = v33[v10];
    v35[v11] = 0;
  }

  v41 = ((v34 + v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v71 + v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v43 = v42[v39];
  v30 = v72;
  if (v43 > 3)
  {
    goto LABEL_58;
  }

  if (v43 == 3)
  {
    if (v39 >= 4)
    {
      v44 = 4;
    }

    else
    {
      v44 = v39;
    }

    if (v44 <= 1)
    {
      if (!v44)
      {
        goto LABEL_58;
      }

      v45 = *v42;
    }

    else if (v44 == 2)
    {
      v45 = *v42;
    }

    else if (v44 == 3)
    {
      v45 = *v42 | (v42[2] << 16);
    }

    else
    {
      v45 = *v42;
    }

    v43 = v45 + 3;
  }

  v46 = ~v16;
  switch(v43)
  {
    case 2u:
      (*(v64 + 16))(v41);
      v54 = (&v41[v63] & v46);
      v55 = ((v63 + ((v71 + v40 + 15) & 0xFFFFFFFFFFFFFFF8)) & v46);
      if ((*(v65 + 48))(v55, 1, v66))
      {
        memcpy(v54, v55, __n);
      }

      else
      {
        (*(v65 + 16))(v54, v55, v66);
        (*(v65 + 56))(v54, 0, 1, v66);
      }

      v58 = 7;
      if (!v60)
      {
        v58 = 8;
      }

      *((v54 + v61 + v58) & 0xFFFFFFFFFFFFFFF8) = *((v55 + v61 + v58) & 0xFFFFFFFFFFFFFFF8);
      v41[v39] = 2;
      break;
    case 1u:
      (*(v64 + 16))(v41);
      v50 = &v41[v63] & v46;
      v51 = ((v63 + ((v71 + v40 + 15) & 0xFFFFFFFFFFFFFFF8)) & v46);
      if ((*(v65 + 48))(v51, 1, v66))
      {
        v52 = __n;
        memcpy((&v41[v63] & v46), v51, __n);
        v53 = *(v65 + 16);
      }

      else
      {
        v70 = *(v65 + 16);
        v70(v50, v51, v66);
        (*(v65 + 56))(v50, 0, 1, v66);
        v53 = v70;
        v52 = __n;
      }

      v56 = (((&v41[v63] & v46) + v52 + 7) & 0xFFFFFFFFFFFFFFF8);
      v57 = ((v51 + v52 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v56 = *v57;
      v53((v56 + v16 + 8) & v46, (v57 + v16 + 8) & v46, v66);
      v41[v39] = 1;
      break;
    case 0u:
      (*(v64 + 16))(v41);
      v47 = (&v41[v63] & v46);
      v48 = ((v63 + ((v71 + v40 + 15) & 0xFFFFFFFFFFFFFFF8)) & v46);
      if ((*(v65 + 48))(v48, 1, v66))
      {
        memcpy(v47, v48, __n);
      }

      else
      {
        (*(v65 + 16))(v47, v48, v66);
        (*(v65 + 56))(v47, 0, 1, v66);
      }

      v59 = 7;
      if (!v60)
      {
        v59 = 8;
      }

      *((v47 + v61 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v48 + v61 + v59) & 0xFFFFFFFFFFFFFFF8);
      v41[v39] = 0;
      return v30;
    default:
LABEL_58:
      memcpy(v41, v42, v67);
      return v30;
  }

  return v30;
}

uint64_t sub_21D756054(void *a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = ((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80));
  v7 = *(v5 + 64);
  if (v7 >= v7 + 1)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = v6[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      v12 = *v6;
    }

    else if (v11 == 2)
    {
      v12 = *v6;
    }

    else if (v11 == 3)
    {
      v12 = *v6 | (v6[2] << 16);
    }

    else
    {
      v12 = *v6;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_18:
  if (v9 <= 1)
  {
    (*(v5 + 8))(v6, v4);
  }

  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(v14 - 8);
  result = *(v15 - 8);
  v18 = *(result + 80);
  v19 = *(result + 64);
  v20 = *(v16 + 80) & 0xF8 | v18 | 7;
  v21 = &v6[v8 + 1 + v20];
  v22 = (v21 & ~v20);
  v23 = *(v16 + 64) + v18;
  if (*(result + 84))
  {
    v24 = *(*(v15 - 8) + 64);
  }

  else
  {
    v24 = v19 + 1;
  }

  v25 = v24 + 7;
  v26 = ((v24 + 7 + (v23 & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v27 = ((v26 + v18) & ~v18) + v19;
  if (v27 <= v26)
  {
    v27 = ((v24 + 7 + (v23 & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v28 = v22[v27];
  if (v28 <= 3)
  {
    if (v28 == 3)
    {
      if (v27 >= 4)
      {
        v29 = 4;
      }

      else
      {
        v29 = v27;
      }

      if (v29 <= 1)
      {
        if (!v29)
        {
          return result;
        }

        v30 = *v22;
      }

      else if (v29 == 2)
      {
        v30 = *v22;
      }

      else if (v29 == 3)
      {
        v30 = *v22 | (*((v21 & ~v20) + 2) << 16);
      }

      else
      {
        v30 = *v22;
      }

      v28 = v30 + 3;
    }

    v38 = *(v15 - 8);
    v31 = ~v18;
    if (v28 == 2)
    {
LABEL_42:
      (*(v16 + 8))(v21 & ~v20);
      v32 = &v22[v23];
      result = (*(v38 + 48))(v32 & v31, 1, v15);
      if (!result)
      {
        v36 = *(v38 + 8);

        return v36(v32 & v31, v15);
      }

      return result;
    }

    if (v28 != 1)
    {
      if (v28)
      {
        return result;
      }

      goto LABEL_42;
    }

    (*(v16 + 8))(v21 & ~v20);
    v33 = &v22[v23] & v31;
    v34 = (*(v38 + 48))(v33, 1, v15);
    v35 = *(v38 + 8);
    if (!v34)
    {
      v37 = *(v38 + 8);
      v35(v33, v15);
      v35 = v37;
    }

    return (v35)((v18 + ((v25 + v33) & 0xFFFFFFFFFFFFFFF8) + 8) & v31, v15);
  }

  return result;
}

uint64_t *sub_21D756438(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  v4 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 8) & ~v8);
  v10 = ((v5 + v8 + 8) & ~v8);
  v11 = *(v7 + 64);
  if (v11 >= v11 + 1)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = *(v10 + v12);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v13 < 2)
  {
    v16 = a3;
  }

  else
  {
    if (v12 <= 3)
    {
      v14 = v12;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *v10;
      }

      else if (v14 == 3)
      {
        v15 = *v10 | (*(v10 + 2) << 16);
      }

      else
      {
        v15 = *v10;
      }

      v16 = a3;
      goto LABEL_18;
    }

    v16 = a3;
    if (v14)
    {
      v15 = *v10;
LABEL_18:
      v17 = (v15 | ((v13 - 2) << (8 * v12))) + 2;
      v18 = v15 + 2;
      if (v12 >= 4)
      {
        v13 = v18;
      }

      else
      {
        v13 = v17;
      }
    }
  }

  if (v13 == 1)
  {
    (*(v7 + 16))(v9, v10, v6);
    v9[v12] = 1;
  }

  else if (v13)
  {
    memcpy(v9, v10, v12 + 1);
  }

  else
  {
    (*(v7 + 16))(v9, v10, v6);
    v9[v11] = *(v10 + v11);
    v9[v12] = 0;
  }

  v19 = *(*(v16 + 16) - 8);
  v20 = *(*(v16 + 24) - 8);
  v21 = v20;
  v22 = *(v20 + 80);
  v23 = *(v19 + 80) & 0xF8 | v22 | 7;
  v24 = v12 + v23 + 1;
  v25 = (&v9[v24] & ~v23);
  v26 = v10 + v24;
  v27 = (v26 & ~v23);
  v28 = *(v19 + 64) + v22;
  v29 = *(v20 + 84);
  v30 = *(v20 + 64);
  if (v29)
  {
    v31 = *(v20 + 64);
  }

  else
  {
    v31 = v30 + 1;
  }

  v32 = (((v28 & ~v22) + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v32 + v22) & ~v22) + v30 <= v32)
  {
    v33 = (((v28 & ~v22) + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v33 = ((v32 + v22) & ~v22) + v30;
  }

  v34 = v27[v33];
  if (v34 > 3)
  {
    goto LABEL_51;
  }

  if (v34 == 3)
  {
    if (v33 >= 4)
    {
      v35 = 4;
    }

    else
    {
      v35 = v33;
    }

    if (v35 <= 1)
    {
      if (!v35)
      {
        goto LABEL_51;
      }

      v36 = *v27;
    }

    else if (v35 == 2)
    {
      v36 = *v27;
    }

    else if (v35 == 3)
    {
      v36 = *v27 | (*((v26 & ~v23) + 2) << 16);
    }

    else
    {
      v36 = *v27;
    }

    v34 = v36 + 3;
  }

  v56 = *(v16 + 24);
  v37 = ~v22;
  switch(v34)
  {
    case 2u:
      v46 = v26 & ~v23;
      (*(v19 + 16))(v25);
      v47 = (&v25[v28] & v37);
      v48 = ((v28 + v46) & v37);
      if ((*(v21 + 48))(v48, 1, v56))
      {
        memcpy(v47, v48, v31);
      }

      else
      {
        (*(v21 + 16))(v47, v48, v56);
        (*(v21 + 56))(v47, 0, 1, v56);
      }

      v51 = 7;
      if (!v29)
      {
        v51 = 8;
      }

      *((v47 + v30 + v51) & 0xFFFFFFFFFFFFFFF8) = *((v48 + v30 + v51) & 0xFFFFFFFFFFFFFFF8);
      v25[v33] = 2;
      break;
    case 1u:
      v42 = v26 & ~v23;
      (*(v19 + 16))(v25);
      v53 = v25;
      v43 = &v25[v28] & v37;
      v44 = ((v28 + v42) & v37);
      if ((*(v21 + 48))(v44, 1, v56))
      {
        memcpy((&v25[v28] & v37), v44, v31);
        v45 = *(v21 + 16);
      }

      else
      {
        v45 = *(v21 + 16);
        v45(v43, v44, v56);
        (*(v21 + 56))(v43, 0, 1, v56);
      }

      v49 = ((v31 + 7 + v43) & 0xFFFFFFFFFFFFFFF8);
      v50 = ((v44 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v49 = *v50;
      v45((v49 + v22 + 8) & v37, ((v50 + v22 + 8) & v37), v56);
      v53[v33] = 1;
      break;
    case 0u:
      v38 = v26 & ~v23;
      (*(v19 + 16))(v25);
      v39 = (&v25[v28] & v37);
      v40 = ((v28 + v38) & v37);
      if ((*(v21 + 48))(v40, 1, v56))
      {
        memcpy(v39, v40, v31);
      }

      else
      {
        (*(v21 + 16))(v39, v40, v56);
        (*(v21 + 56))(v39, 0, 1, v56);
      }

      v52 = 7;
      if (!v29)
      {
        v52 = 8;
      }

      *((v39 + v30 + v52) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v30 + v52) & 0xFFFFFFFFFFFFFFF8);
      v25[v33] = 0;
      return a1;
    default:
LABEL_51:
      memcpy(v25, v27, v33 + 1);
      return a1;
  }

  return a1;
}

uint64_t *sub_21D756A54(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  sub_21DBF8E0C();

  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 8) & ~v10);
  v12 = ((v7 + v10 + 8) & ~v10);
  v13 = *(v9 + 64);
  if (v13 >= v13 + 1)
  {
    v14 = *(v9 + 64);
  }

  else
  {
    v14 = v13 + 1;
  }

  if (v11 == v12)
  {
    goto LABEL_40;
  }

  v15 = v8;
  v16 = v11[v14];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v14 <= 3)
    {
      v18 = v14;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_19;
      }

      v19 = *v11;
    }

    else if (v18 == 2)
    {
      v19 = *v11;
    }

    else if (v18 == 3)
    {
      v19 = *v11 | (v11[2] << 16);
    }

    else
    {
      v19 = *v11;
    }

    v20 = (v19 | (v17 << (8 * v14))) + 2;
    v16 = v19 + 2;
    if (v14 < 4)
    {
      v16 = v20;
    }
  }

LABEL_19:
  if (v16 <= 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  v21 = *(v12 + v14);
  v22 = v21 - 2;
  if (v21 < 2)
  {
    goto LABEL_35;
  }

  if (v14 <= 3)
  {
    v23 = v14;
  }

  else
  {
    v23 = 4;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *v12;
    }

    else if (v23 == 3)
    {
      v24 = *v12 | (*(v12 + 2) << 16);
    }

    else
    {
      v24 = *v12;
    }

LABEL_33:
    v25 = (v24 | (v22 << (8 * v14))) + 2;
    v21 = v24 + 2;
    if (v14 < 4)
    {
      v21 = v25;
    }

    goto LABEL_35;
  }

  if (v23)
  {
    v24 = *v12;
    goto LABEL_33;
  }

LABEL_35:
  if (v21 == 1)
  {
    (*(v9 + 16))(v11, v12, v15);
    v11[v14] = 1;
  }

  else if (v21)
  {
    memcpy(v11, v12, v14 + 1);
  }

  else
  {
    (*(v9 + 16))(v11, v12, v15);
    v11[v13] = *(v12 + v13);
    v11[v14] = 0;
  }

LABEL_40:
  v26 = *(a3 + 16);
  v27 = *(v26 - 8);
  v132 = *(a3 + 24);
  v28 = *(v132 - 8);
  v29 = v28;
  v30 = *(v28 + 80);
  v31 = *(v27 + 80) & 0xF8 | v30 | 7;
  v32 = v14 + v31 + 1;
  v33 = (&v11[v32] & ~v31);
  v34 = ((v12 + v32) & ~v31);
  v35 = *(v27 + 64);
  v36 = ~v30;
  v37 = v35 + v30;
  v38 = (v35 + v30) & ~v30;
  v39 = *(v28 + 84);
  v40 = *(v28 + 64);
  if (v39)
  {
    v41 = *(v28 + 64);
  }

  else
  {
    v41 = v40 + 1;
  }

  v42 = ((v41 + 7 + v38) & 0xFFFFFFFFFFFFFFF8) + 8;
  v43 = (v42 + v30) & ~v30;
  v44 = v43 + v40;
  if (v43 + v40 <= v42)
  {
    v45 = ((v41 + 7 + v38) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v45 = v43 + v40;
  }

  v46 = v33[v45];
  v47 = v34[v45];
  if (v46 <= 3)
  {
    if (v47 > 3)
    {
      if (v46 == 3)
      {
        if (v45 >= 4)
        {
          v52 = 4;
        }

        else
        {
          v52 = v45;
        }

        if (v52 <= 1)
        {
          if (!v52)
          {
            goto LABEL_155;
          }

          v53 = *v33;
        }

        else if (v52 == 2)
        {
          v53 = *v33;
        }

        else if (v52 == 3)
        {
          v53 = *v33 | (v33[2] << 16);
        }

        else
        {
          v53 = *v33;
        }

        v46 = v53 + 3;
      }

      switch(v46)
      {
        case 2u:
          goto LABEL_96;
        case 1u:
          v120 = v41 + 7;
          v74 = v33;
          (*(v27 + 8))(v33, v26);
          v75 = v74;
          v76 = &v74[v37] & ~v30;
          v77 = (*(v29 + 48))(v76, 1, v132);
          v78 = *(v29 + 8);
          if (!v77)
          {
            v78(v76, v132);
          }

          v78((v30 + ((v120 + v76) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v30, v132);
          v33 = v75;
          break;
        case 0u:
LABEL_96:
          v70 = v33;
          v71 = v36;
          (*(v27 + 8))(v33, v26);
          v72 = &v70[v37];
          v73 = (*(v29 + 48))(v72 & v71, 1, v132);
          v33 = v70;
          if (!v73)
          {
            (*(v29 + 8))(v72 & v71, v132);
            v33 = v70;
          }

          break;
      }

LABEL_155:
      memcpy(v33, v34, v45 + 1);
      return a1;
    }

    if (v33 == v34)
    {
      return a1;
    }

    v130 = ~v30;
    v131 = v33;
    v124 = v38;
    __n = v41;
    v117 = v26;
    v118 = v41 + 7;
    v121 = v39;
    if (v46 == 3)
    {
      if (v45 >= 4)
      {
        v48 = 4;
      }

      else
      {
        v48 = v45;
      }

      if (v48 <= 1)
      {
        if (!v48)
        {
          goto LABEL_134;
        }

        v49 = *v33;
      }

      else if (v48 == 2)
      {
        v49 = *v33;
      }

      else if (v48 == 3)
      {
        v49 = *v33 | (v33[2] << 16);
      }

      else
      {
        v49 = *v33;
      }

      v46 = v49 + 3;
    }

    if (v46 != 2)
    {
      if (v46 == 1)
      {
        (*(v27 + 8))(v33, v26);
        v116 = &v131[v37] & v130;
        v88 = (*(v29 + 48))();
        v89 = *(v29 + 8);
        if (!v88)
        {
          v115 = *(v29 + 8);
          v89(v116, v132);
          v89 = v115;
        }

        v89((v30 + ((v118 + v116) & 0xFFFFFFFFFFFFFFF8) + 8) & v130, v132);
        goto LABEL_133;
      }

      if (v46)
      {
        goto LABEL_134;
      }
    }

    (*(v27 + 8))(v33, v26);
    v90 = (*(v29 + 48))(&v131[v37] & v130, 1, v132);
    v33 = v131;
    if (v90)
    {
      goto LABEL_134;
    }

    (*(v29 + 8))(&v131[v37] & v130, v132);
LABEL_133:
    v33 = v131;
LABEL_134:
    v91 = v34[v45];
    v92 = v91 - 3;
    if (v91 < 3)
    {
      v95 = v117;
    }

    else
    {
      if (v45 <= 3)
      {
        v93 = v45;
      }

      else
      {
        v93 = 4;
      }

      if (v93 > 1)
      {
        if (v93 == 2)
        {
          v94 = *v34;
        }

        else if (v93 == 3)
        {
          v94 = *v34 | (v34[2] << 16);
        }

        else
        {
          v94 = *v34;
        }

        v95 = v117;
LABEL_148:
        v96 = (v94 | (v92 << (8 * v45))) + 3;
        v91 = v94 + 3;
        if (v45 < 4)
        {
          v91 = v96;
        }

        goto LABEL_150;
      }

      v95 = v117;
      if (v93)
      {
        v94 = *v34;
        goto LABEL_148;
      }
    }

LABEL_150:
    if (v91 != 2)
    {
      if (v91 != 1)
      {
        if (!v91)
        {
          v97 = v33;
          (*(v27 + 16))(v33, v34, v95);
          v98 = (&v97[v37] & v130);
          v99 = (&v34[v37] & v130);
          if ((*(v29 + 48))(v99, 1, v132))
          {
            v100 = __n;
            memcpy(v98, v99, __n);
          }

          else
          {
            (*(v29 + 16))(v98, v99, v132);
            (*(v29 + 56))(v98, 0, 1, v132);
            v100 = __n;
          }

          v113 = 7;
          if (!v121)
          {
            v113 = 8;
          }

          *((v98 + v40 + v113) & 0xFFFFFFFFFFFFFFF8) = *((v99 + v40 + v113) & 0xFFFFFFFFFFFFFFF8);
          v114 = ((v124 + v100 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v44 > v114)
          {
            v114 = v44;
          }

          if (v42 > v114)
          {
            v114 = v42;
          }

          v97[v114] = 0;
          return a1;
        }

        goto LABEL_155;
      }

      v102 = v33;
      (*(v27 + 16))(v33, v34, v95);
      v103 = (&v102[v37] & v130);
      v83 = ~v30;
      v104 = (&v34[v37] & v130);
      v63 = v132;
      if ((*(v29 + 48))(v104, 1, v132))
      {
        memcpy(v103, v104, __n);
        v64 = *(v29 + 16);
      }

      else
      {
        v64 = *(v29 + 16);
        v64(v103, v104, v132);
        (*(v29 + 56))(v103, 0, 1, v132);
      }

      v109 = ((v103 + v118) & 0xFFFFFFFFFFFFFFF8);
      v110 = ((v104 + v118) & 0xFFFFFFFFFFFFFFF8);
      *v109 = *v110;
      v81 = v109 + v30 + 8;
      v82 = v110 + v30 + 8;
LABEL_163:
      v64((v81 & v83), (v82 & v83), v63);
      v131[v45] = 1;
      return a1;
    }

    v105 = v33;
    (*(v27 + 16))(v33, v34, v95);
    v106 = (&v105[v37] & v130);
    v107 = (&v34[v37] & v130);
    if ((*(v29 + 48))(v107, 1, v132))
    {
      v108 = __n;
      memcpy(v106, v107, __n);
    }

    else
    {
      (*(v29 + 16))(v106, v107, v132);
      (*(v29 + 56))(v106, 0, 1, v132);
      v108 = __n;
    }

    v111 = 7;
    if (!v121)
    {
      v111 = 8;
    }

    *((v106 + v40 + v111) & 0xFFFFFFFFFFFFFFF8) = *((v107 + v40 + v111) & 0xFFFFFFFFFFFFFFF8);
    v112 = ((v124 + v108 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v112)
    {
      v112 = v44;
    }

    if (v42 > v112)
    {
      v112 = v42;
    }

    v105[v112] = 2;
    return a1;
  }

  if (v47 > 3)
  {
    goto LABEL_155;
  }

  if (v47 == 3)
  {
    if (v45 >= 4)
    {
      v50 = 4;
    }

    else
    {
      v50 = v45;
    }

    if (v50 <= 1)
    {
      if (!v50)
      {
        goto LABEL_155;
      }

      v51 = *v34;
    }

    else if (v50 == 2)
    {
      v51 = *v34;
    }

    else if (v50 == 3)
    {
      v51 = *v34 | (v34[2] << 16);
    }

    else
    {
      v51 = *v34;
    }

    v47 = v51 + 3;
  }

  if (v47 == 2)
  {
    v123 = v39;
    v126 = v38;
    __nb = v41;
    v65 = v33;
    v66 = ~v30;
    (*(v27 + 16))(v33, v34);
    v67 = (&v65[v37] & v66);
    v68 = (&v34[v37] & v66);
    if ((*(v29 + 48))(v68, 1, v132))
    {
      v69 = __nb;
      memcpy(v67, v68, __nb);
    }

    else
    {
      (*(v29 + 16))(v67, v68, v132);
      (*(v29 + 56))(v67, 0, 1, v132);
      v69 = __nb;
    }

    v84 = 7;
    if (!v123)
    {
      v84 = 8;
    }

    *((v67 + v40 + v84) & 0xFFFFFFFFFFFFFFF8) = *((v68 + v40 + v84) & 0xFFFFFFFFFFFFFFF8);
    v85 = ((v126 + v69 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v85)
    {
      v85 = v44;
    }

    if (v42 > v85)
    {
      v85 = v42;
    }

    v65[v85] = 2;
  }

  else
  {
    if (v47 == 1)
    {
      v119 = v41 + 7;
      v59 = v41;
      v60 = v33;
      (*(v27 + 16))(v33, v34);
      v131 = v60;
      v61 = (&v60[v37] & ~v30);
      v62 = (&v34[v37] & ~v30);
      v63 = v132;
      if ((*(v29 + 48))(v62, 1, v132))
      {
        memcpy(v61, v62, v59);
        v64 = *(v29 + 16);
      }

      else
      {
        v64 = *(v29 + 16);
        v64(v61, v62, v132);
        (*(v29 + 56))(v61, 0, 1, v132);
      }

      v79 = ((v61 + v119) & 0xFFFFFFFFFFFFFFF8);
      v80 = ((v62 + v119) & 0xFFFFFFFFFFFFFFF8);
      *v79 = *v80;
      v81 = v79 + v30 + 8;
      v82 = v80 + v30 + 8;
      v83 = ~v30;
      goto LABEL_163;
    }

    if (v47)
    {
      goto LABEL_155;
    }

    v122 = v39;
    v125 = v38;
    __na = v41;
    v54 = v33;
    v55 = ~v30;
    (*(v27 + 16))(v33, v34);
    v56 = (&v54[v37] & v55);
    v57 = (&v34[v37] & v55);
    if ((*(v29 + 48))(v57, 1, v132))
    {
      v58 = __na;
      memcpy(v56, v57, __na);
    }

    else
    {
      (*(v29 + 16))(v56, v57, v132);
      (*(v29 + 56))(v56, 0, 1, v132);
      v58 = __na;
    }

    v86 = 7;
    if (!v122)
    {
      v86 = 8;
    }

    *((v56 + v40 + v86) & 0xFFFFFFFFFFFFFFF8) = *((v57 + v40 + v86) & 0xFFFFFFFFFFFFFFF8);
    v87 = ((v125 + v58 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v87)
    {
      v87 = v44;
    }

    if (v42 > v87)
    {
      v87 = v42;
    }

    v54[v87] = 0;
  }

  return a1;
}

uint64_t sub_21D7578E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 8) & ~v9);
  v11 = ((v6 + v9 + 8) & ~v9);
  v12 = *(v8 + 64);
  if (v12 >= v12 + 1)
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = v11[v13];
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_18;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = *v11;
  }

  else if (v16 == 2)
  {
    v17 = *v11;
  }

  else if (v16 == 3)
  {
    v17 = *v11 | (v11[2] << 16);
  }

  else
  {
    v17 = *v11;
  }

  v18 = (v17 | (v15 << (8 * v13))) + 2;
  v14 = v17 + 2;
  if (v13 < 4)
  {
    v14 = v18;
  }

LABEL_18:
  if (v14 == 1)
  {
    (*(v8 + 32))(v10, v11, v7);
    v10[v13] = 1;
  }

  else if (v14)
  {
    memcpy(v10, v11, v13 + 1);
  }

  else
  {
    (*(v8 + 32))(v10, v11, v7);
    v10[v12] = v11[v12];
    v10[v13] = 0;
  }

  v19 = *(a3 + 24);
  v20 = *(*(a3 + 16) - 8);
  v21 = v20;
  v22 = *(v19 - 8);
  v23 = v22;
  v24 = *(v22 + 80);
  v25 = *(v20 + 80) & 0xF8 | v24 | 7;
  v26 = v13 + v25 + 1;
  v27 = (&v10[v26] & ~v25);
  v28 = &v11[v26];
  v29 = (v28 & ~v25);
  v30 = *(v20 + 64) + v24;
  v31 = *(v22 + 84);
  v32 = *(v22 + 64);
  if (v31)
  {
    v33 = *(v22 + 64);
  }

  else
  {
    v33 = v32 + 1;
  }

  v34 = (((v30 & ~v24) + v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v34 + v24) & ~v24) + v32 <= v34)
  {
    v35 = (((v30 & ~v24) + v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v35 = ((v34 + v24) & ~v24) + v32;
  }

  v36 = v29[v35];
  if (v36 > 3)
  {
    goto LABEL_48;
  }

  if (v36 == 3)
  {
    if (v35 >= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = v35;
    }

    if (v37 <= 1)
    {
      if (!v37)
      {
LABEL_48:
        memcpy(v27, v29, v35 + 1);
        return a1;
      }

      v38 = *v29;
    }

    else if (v37 == 2)
    {
      v38 = *v29;
    }

    else if (v37 == 3)
    {
      v38 = *v29 | (*((v28 & ~v25) + 2) << 16);
    }

    else
    {
      v38 = *v29;
    }

    v36 = v38 + 3;
  }

  v62 = v19;
  v39 = ~v24;
  if (v36 == 2)
  {
    v49 = v27;
    v50 = v28 & ~v25;
    (*(v21 + 32))();
    v61 = v49;
    v51 = (&v49[v30] & v39);
    v52 = ((v30 + v50) & v39);
    if ((*(v23 + 48))(v52, 1, v62))
    {
      memcpy(v51, v52, v33);
    }

    else
    {
      (*(v23 + 32))(v51, v52, v62);
      (*(v23 + 56))(v51, 0, 1, v62);
    }

    v56 = 7;
    if (!v31)
    {
      v56 = 8;
    }

    *((v51 + v32 + v56) & 0xFFFFFFFFFFFFFFF8) = *((v52 + v32 + v56) & 0xFFFFFFFFFFFFFFF8);
    v55 = 2;
    goto LABEL_59;
  }

  if (v36 == 1)
  {
    v44 = v27;
    v45 = v28 & ~v25;
    (*(v21 + 32))();
    v61 = v44;
    v46 = (&v44[v30] & v39);
    v47 = ((v30 + v45) & v39);
    if ((*(v23 + 48))(v47, 1, v62))
    {
      memcpy(v46, v47, v33);
      v48 = *(v23 + 32);
    }

    else
    {
      v59 = *(v23 + 32);
      v59(v46, v47, v62);
      (*(v23 + 56))(v46, 0, 1, v62);
      v48 = v59;
    }

    v53 = ((v46 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
    v54 = ((v47 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v53 = *v54;
    v48((v53 + v24 + 8) & v39, (v54 + v24 + 8) & v39, v62);
    v55 = 1;
LABEL_59:
    v61[v35] = v55;
    return a1;
  }

  if (v36)
  {
    goto LABEL_48;
  }

  v40 = v27;
  v41 = v28 & ~v25;
  (*(v21 + 32))();
  v60 = v40;
  v42 = (&v40[v30] & v39);
  v43 = ((v30 + v41) & v39);
  if ((*(v23 + 48))(v43, 1, v62))
  {
    memcpy(v42, v43, v33);
  }

  else
  {
    (*(v23 + 32))(v42, v43, v62);
    (*(v23 + 56))(v42, 0, 1, v62);
  }

  v57 = 7;
  if (!v31)
  {
    v57 = 8;
  }

  *((v42 + v32 + v57) & 0xFFFFFFFFFFFFFFF8) = *((v43 + v32 + v57) & 0xFFFFFFFFFFFFFFF8);
  v60[v35] = 0;
  return a1;
}

uint64_t *sub_21D757EE4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  a1[1] = a2[1];

  a1[2] = a2[2];

  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 8) & ~v10);
  v12 = ((v7 + v10 + 8) & ~v10);
  v13 = *(v9 + 64);
  if (v13 >= v13 + 1)
  {
    v14 = *(v9 + 64);
  }

  else
  {
    v14 = v13 + 1;
  }

  if (v11 == v12)
  {
    goto LABEL_40;
  }

  v15 = v8;
  v16 = v11[v14];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v14 <= 3)
    {
      v18 = v14;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_19;
      }

      v19 = *v11;
    }

    else if (v18 == 2)
    {
      v19 = *v11;
    }

    else if (v18 == 3)
    {
      v19 = *v11 | (v11[2] << 16);
    }

    else
    {
      v19 = *v11;
    }

    v20 = (v19 | (v17 << (8 * v14))) + 2;
    v16 = v19 + 2;
    if (v14 < 4)
    {
      v16 = v20;
    }
  }

LABEL_19:
  if (v16 <= 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  v21 = *(v12 + v14);
  v22 = v21 - 2;
  if (v21 < 2)
  {
    goto LABEL_35;
  }

  if (v14 <= 3)
  {
    v23 = v14;
  }

  else
  {
    v23 = 4;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *v12;
    }

    else if (v23 == 3)
    {
      v24 = *v12 | (*(v12 + 2) << 16);
    }

    else
    {
      v24 = *v12;
    }

LABEL_33:
    v25 = (v24 | (v22 << (8 * v14))) + 2;
    v21 = v24 + 2;
    if (v14 < 4)
    {
      v21 = v25;
    }

    goto LABEL_35;
  }

  if (v23)
  {
    v24 = *v12;
    goto LABEL_33;
  }

LABEL_35:
  if (v21 == 1)
  {
    (*(v9 + 32))(v11, v12, v15);
    v11[v14] = 1;
  }

  else if (v21)
  {
    memcpy(v11, v12, v14 + 1);
  }

  else
  {
    (*(v9 + 32))(v11, v12, v15);
    v11[v13] = *(v12 + v13);
    v11[v14] = 0;
  }

LABEL_40:
  v26 = *(a3 + 16);
  v27 = *(v26 - 8);
  v132 = *(a3 + 24);
  v28 = *(v132 - 8);
  v29 = v28;
  v30 = *(v28 + 80);
  v31 = *(v27 + 80) & 0xF8 | v30 | 7;
  v32 = v14 + v31 + 1;
  v33 = (&v11[v32] & ~v31);
  v34 = ((v12 + v32) & ~v31);
  v35 = *(v27 + 64);
  v36 = ~v30;
  v37 = v35 + v30;
  v38 = (v35 + v30) & ~v30;
  v39 = *(v28 + 84);
  v40 = *(v28 + 64);
  if (v39)
  {
    v41 = *(v28 + 64);
  }

  else
  {
    v41 = v40 + 1;
  }

  v42 = ((v41 + 7 + v38) & 0xFFFFFFFFFFFFFFF8) + 8;
  v43 = (v42 + v30) & ~v30;
  v44 = v43 + v40;
  if (v43 + v40 <= v42)
  {
    v45 = ((v41 + 7 + v38) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v45 = v43 + v40;
  }

  v46 = v33[v45];
  v47 = v34[v45];
  if (v46 <= 3)
  {
    if (v47 > 3)
    {
      if (v46 == 3)
      {
        if (v45 >= 4)
        {
          v52 = 4;
        }

        else
        {
          v52 = v45;
        }

        if (v52 <= 1)
        {
          if (!v52)
          {
            goto LABEL_155;
          }

          v53 = *v33;
        }

        else if (v52 == 2)
        {
          v53 = *v33;
        }

        else if (v52 == 3)
        {
          v53 = *v33 | (v33[2] << 16);
        }

        else
        {
          v53 = *v33;
        }

        v46 = v53 + 3;
      }

      switch(v46)
      {
        case 2u:
          goto LABEL_96;
        case 1u:
          v120 = v41 + 7;
          v74 = v33;
          (*(v27 + 8))(v33, v26);
          v75 = v74;
          v76 = &v74[v37] & ~v30;
          v77 = (*(v29 + 48))(v76, 1, v132);
          v78 = *(v29 + 8);
          if (!v77)
          {
            v78(v76, v132);
          }

          v78((v30 + ((v120 + v76) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v30, v132);
          v33 = v75;
          break;
        case 0u:
LABEL_96:
          v70 = v33;
          v71 = v36;
          (*(v27 + 8))(v33, v26);
          v72 = &v70[v37];
          v73 = (*(v29 + 48))(v72 & v71, 1, v132);
          v33 = v70;
          if (!v73)
          {
            (*(v29 + 8))(v72 & v71, v132);
            v33 = v70;
          }

          break;
      }

LABEL_155:
      memcpy(v33, v34, v45 + 1);
      return a1;
    }

    if (v33 == v34)
    {
      return a1;
    }

    v130 = ~v30;
    v131 = v33;
    v124 = v38;
    __n = v41;
    v117 = v26;
    v118 = v41 + 7;
    v121 = v39;
    if (v46 == 3)
    {
      if (v45 >= 4)
      {
        v48 = 4;
      }

      else
      {
        v48 = v45;
      }

      if (v48 <= 1)
      {
        if (!v48)
        {
          goto LABEL_134;
        }

        v49 = *v33;
      }

      else if (v48 == 2)
      {
        v49 = *v33;
      }

      else if (v48 == 3)
      {
        v49 = *v33 | (v33[2] << 16);
      }

      else
      {
        v49 = *v33;
      }

      v46 = v49 + 3;
    }

    if (v46 != 2)
    {
      if (v46 == 1)
      {
        (*(v27 + 8))(v33, v26);
        v116 = &v131[v37] & v130;
        v88 = (*(v29 + 48))();
        v89 = *(v29 + 8);
        if (!v88)
        {
          v115 = *(v29 + 8);
          v89(v116, v132);
          v89 = v115;
        }

        v89((v30 + ((v118 + v116) & 0xFFFFFFFFFFFFFFF8) + 8) & v130, v132);
        goto LABEL_133;
      }

      if (v46)
      {
        goto LABEL_134;
      }
    }

    (*(v27 + 8))(v33, v26);
    v90 = (*(v29 + 48))(&v131[v37] & v130, 1, v132);
    v33 = v131;
    if (v90)
    {
      goto LABEL_134;
    }

    (*(v29 + 8))(&v131[v37] & v130, v132);
LABEL_133:
    v33 = v131;
LABEL_134:
    v91 = v34[v45];
    v92 = v91 - 3;
    if (v91 < 3)
    {
      v95 = v117;
    }

    else
    {
      if (v45 <= 3)
      {
        v93 = v45;
      }

      else
      {
        v93 = 4;
      }

      if (v93 > 1)
      {
        if (v93 == 2)
        {
          v94 = *v34;
        }

        else if (v93 == 3)
        {
          v94 = *v34 | (v34[2] << 16);
        }

        else
        {
          v94 = *v34;
        }

        v95 = v117;
LABEL_148:
        v96 = (v94 | (v92 << (8 * v45))) + 3;
        v91 = v94 + 3;
        if (v45 < 4)
        {
          v91 = v96;
        }

        goto LABEL_150;
      }

      v95 = v117;
      if (v93)
      {
        v94 = *v34;
        goto LABEL_148;
      }
    }

LABEL_150:
    if (v91 != 2)
    {
      if (v91 != 1)
      {
        if (!v91)
        {
          v97 = v33;
          (*(v27 + 32))(v33, v34, v95);
          v98 = (&v97[v37] & v130);
          v99 = (&v34[v37] & v130);
          if ((*(v29 + 48))(v99, 1, v132))
          {
            v100 = __n;
            memcpy(v98, v99, __n);
          }

          else
          {
            (*(v29 + 32))(v98, v99, v132);
            (*(v29 + 56))(v98, 0, 1, v132);
            v100 = __n;
          }

          v113 = 7;
          if (!v121)
          {
            v113 = 8;
          }

          *((v98 + v40 + v113) & 0xFFFFFFFFFFFFFFF8) = *((v99 + v40 + v113) & 0xFFFFFFFFFFFFFFF8);
          v114 = ((v124 + v100 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v44 > v114)
          {
            v114 = v44;
          }

          if (v42 > v114)
          {
            v114 = v42;
          }

          v97[v114] = 0;
          return a1;
        }

        goto LABEL_155;
      }

      v102 = v33;
      (*(v27 + 32))(v33, v34, v95);
      v103 = (&v102[v37] & v130);
      v83 = ~v30;
      v104 = (&v34[v37] & v130);
      v63 = v132;
      if ((*(v29 + 48))(v104, 1, v132))
      {
        memcpy(v103, v104, __n);
        v64 = *(v29 + 32);
      }

      else
      {
        v64 = *(v29 + 32);
        v64(v103, v104, v132);
        (*(v29 + 56))(v103, 0, 1, v132);
      }

      v109 = ((v103 + v118) & 0xFFFFFFFFFFFFFFF8);
      v110 = ((v104 + v118) & 0xFFFFFFFFFFFFFFF8);
      *v109 = *v110;
      v81 = v109 + v30 + 8;
      v82 = v110 + v30 + 8;
LABEL_163:
      v64((v81 & v83), (v82 & v83), v63);
      v131[v45] = 1;
      return a1;
    }

    v105 = v33;
    (*(v27 + 32))(v33, v34, v95);
    v106 = (&v105[v37] & v130);
    v107 = (&v34[v37] & v130);
    if ((*(v29 + 48))(v107, 1, v132))
    {
      v108 = __n;
      memcpy(v106, v107, __n);
    }

    else
    {
      (*(v29 + 32))(v106, v107, v132);
      (*(v29 + 56))(v106, 0, 1, v132);
      v108 = __n;
    }

    v111 = 7;
    if (!v121)
    {
      v111 = 8;
    }

    *((v106 + v40 + v111) & 0xFFFFFFFFFFFFFFF8) = *((v107 + v40 + v111) & 0xFFFFFFFFFFFFFFF8);
    v112 = ((v124 + v108 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v112)
    {
      v112 = v44;
    }

    if (v42 > v112)
    {
      v112 = v42;
    }

    v105[v112] = 2;
    return a1;
  }

  if (v47 > 3)
  {
    goto LABEL_155;
  }

  if (v47 == 3)
  {
    if (v45 >= 4)
    {
      v50 = 4;
    }

    else
    {
      v50 = v45;
    }

    if (v50 <= 1)
    {
      if (!v50)
      {
        goto LABEL_155;
      }

      v51 = *v34;
    }

    else if (v50 == 2)
    {
      v51 = *v34;
    }

    else if (v50 == 3)
    {
      v51 = *v34 | (v34[2] << 16);
    }

    else
    {
      v51 = *v34;
    }

    v47 = v51 + 3;
  }

  if (v47 == 2)
  {
    v123 = v39;
    v126 = v38;
    __nb = v41;
    v65 = v33;
    v66 = ~v30;
    (*(v27 + 32))(v33, v34);
    v67 = (&v65[v37] & v66);
    v68 = (&v34[v37] & v66);
    if ((*(v29 + 48))(v68, 1, v132))
    {
      v69 = __nb;
      memcpy(v67, v68, __nb);
    }

    else
    {
      (*(v29 + 32))(v67, v68, v132);
      (*(v29 + 56))(v67, 0, 1, v132);
      v69 = __nb;
    }

    v84 = 7;
    if (!v123)
    {
      v84 = 8;
    }

    *((v67 + v40 + v84) & 0xFFFFFFFFFFFFFFF8) = *((v68 + v40 + v84) & 0xFFFFFFFFFFFFFFF8);
    v85 = ((v126 + v69 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v85)
    {
      v85 = v44;
    }

    if (v42 > v85)
    {
      v85 = v42;
    }

    v65[v85] = 2;
  }

  else
  {
    if (v47 == 1)
    {
      v119 = v41 + 7;
      v59 = v41;
      v60 = v33;
      (*(v27 + 32))(v33, v34);
      v131 = v60;
      v61 = (&v60[v37] & ~v30);
      v62 = (&v34[v37] & ~v30);
      v63 = v132;
      if ((*(v29 + 48))(v62, 1, v132))
      {
        memcpy(v61, v62, v59);
        v64 = *(v29 + 32);
      }

      else
      {
        v64 = *(v29 + 32);
        v64(v61, v62, v132);
        (*(v29 + 56))(v61, 0, 1, v132);
      }

      v79 = ((v61 + v119) & 0xFFFFFFFFFFFFFFF8);
      v80 = ((v62 + v119) & 0xFFFFFFFFFFFFFFF8);
      *v79 = *v80;
      v81 = v79 + v30 + 8;
      v82 = v80 + v30 + 8;
      v83 = ~v30;
      goto LABEL_163;
    }

    if (v47)
    {
      goto LABEL_155;
    }

    v122 = v39;
    v125 = v38;
    __na = v41;
    v54 = v33;
    v55 = ~v30;
    (*(v27 + 32))(v33, v34);
    v56 = (&v54[v37] & v55);
    v57 = (&v34[v37] & v55);
    if ((*(v29 + 48))(v57, 1, v132))
    {
      v58 = __na;
      memcpy(v56, v57, __na);
    }

    else
    {
      (*(v29 + 32))(v56, v57, v132);
      (*(v29 + 56))(v56, 0, 1, v132);
      v58 = __na;
    }

    v86 = 7;
    if (!v122)
    {
      v86 = 8;
    }

    *((v56 + v40 + v86) & 0xFFFFFFFFFFFFFFF8) = *((v57 + v40 + v86) & 0xFFFFFFFFFFFFFFF8);
    v87 = ((v125 + v58 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v87)
    {
      v87 = v44;
    }

    if (v42 > v87)
    {
      v87 = v42;
    }

    v54[v87] = 0;
  }

  return a1;
}

uint64_t sub_21D758D60(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v6 = *(sub_21DBF5D5C() - 8);
  v7 = *(v6 + 64);
  if (v7 >= v7 + 1)
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = *(*(a3 + 24) - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  if (*(v9 + 84))
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = ((v12 + ((*(*(*(a3 + 16) - 8) + 64) + v10) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = ((v13 + v10) & ~v10) + v11;
  if (v14 <= v13)
  {
    v14 = ((v12 + ((*(*(*(a3 + 16) - 8) + 64) + v10) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  v17 = v10 | *(*(*(a3 + 16) - 8) + 80) & 0xF8 | 7;
  v18 = v14 + ((v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v17 + 1) & ~v17) + 1;
  v19 = 8 * v18;
  if (v18 > 3)
  {
    goto LABEL_16;
  }

  v21 = (a2 - 0x7FFFFFFF + ~(-1 << v19)) >> v19;
  if (v21 > 0xFFFE)
  {
    v20 = *(a1 + v18);
    if (!v20)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (v21 <= 0xFE)
  {
    if (!v21)
    {
      goto LABEL_11;
    }

LABEL_16:
    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
LABEL_11:
    v15 = *(a1 + 1);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

LABEL_25:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return (v18 | v22) ^ 0x80000000;
}

void sub_21D758FC4(unsigned int *a1, int a2, int a3, uint64_t a4)
{
  v8 = *(sub_21DBF5D5C() - 8);
  v9 = *(v8 + 64);
  if (v9 >= v9 + 1)
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = *(*(a4 + 24) - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  if (*(v11 + 84))
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  v15 = ((v14 + ((*(*(*(a4 + 16) - 8) + 64) + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = ((v15 + v12) & ~v12) + v13;
  if (v16 <= v15)
  {
    v16 = ((v14 + ((*(*(*(a4 + 16) - 8) + 64) + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = v12 | *(*(*(a4 + 16) - 8) + 80) & 0xF8 | 7;
  v18 = v16 + ((v10 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v17 + 1) & ~v17) + 1;
  if ((a3 & 0x80000000) == 0)
  {
    v19 = 0;
    if (a2 < 0)
    {
      goto LABEL_23;
    }

LABEL_32:
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

LABEL_39:
        *(a1 + 1) = (a2 - 1);
        return;
      }

      *(a1 + v18) = 0;
    }

    else if (v19)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v18 <= 3)
  {
    v20 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v18))) >> (8 * v18);
    if (v20 > 0xFFFE)
    {
      v19 = 4;
      if (a2 < 0)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    if (v20 < 0xFF)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20)
    {
      v19 = v21;
    }

    else
    {
      v19 = 0;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v19 = 1;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_23:
  v22 = a2 & 0x7FFFFFFF;
  if (v18 >= 4)
  {
    bzero(a1, v18);
    *a1 = v22;
    v23 = 1;
    if (v19 > 1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v23 = (v22 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_44:
    if (v19 > 1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v24 = a2 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v24;
    *(a1 + 2) = BYTE2(v24);
    goto LABEL_44;
  }

  if (v18 == 2)
  {
    *a1 = v24;
    if (v19 > 1)
    {
LABEL_48:
      if (v19 == 2)
      {
        *(a1 + v18) = v23;
      }

      else
      {
        *(a1 + v18) = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = a2;
    if (v19 > 1)
    {
      goto LABEL_48;
    }
  }

LABEL_45:
  if (v19)
  {
    *(a1 + v18) = v23;
  }
}

uint64_t sub_21D7592A8(uint64_t a1)
{
  v5 = "\b";
  v1 = *(a1 + 96);
  v4[0] = *(a1 + 80);
  v4[1] = v1;
  type metadata accessor for TTRICollectionViewDropProposal(255, v4);
  result = sub_21DBFBA8C();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v7 = MEMORY[0x277D83428] + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21D7593AC(uint64_t a1)
{
  sub_21D759514(319, &qword_27CE61428, MEMORY[0x277CC9AF8]);
  if (v1 <= 0x3F)
  {
    sub_21D759514(319, &qword_27CE61430, type metadata accessor for TTRICollectionViewHitTestResult);
    if (v2 <= 0x3F)
    {
      sub_21D759514(319, &unk_27CE61438, type metadata accessor for TTRICollectionViewEmptySpaceType);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_21D759514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D759568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7595D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D7597EC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61460);
  v1 = __swift_project_value_buffer(v0, qword_27CE61460);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void (*TTRICollectionViewDragAndDropCoordinator.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.__allocating_init(rootView:)(void *a1)
{
  v2 = swift_allocObject();
  TTRICollectionViewDragAndDropCoordinator.init(rootView:)(a1);
  return v2;
}

uint64_t sub_21D759A30(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = a1[3];
    ObjectType = swift_getObjectType();
    v7 = type metadata accessor for TTRICollectionViewDragAndDropCoordinator(255, *(v2 + 80), *(v2 + 88), v6);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropCoordinator<A>, v7);
    (*(v4 + 96))(a1, WitnessTable, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRICollectionViewDragAndDropCoordinator.resetAfterDataSourceReload()()
{
  v1 = v0;
  v2 = sub_21DBF56BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_280D0F018))
  {
    if (qword_27CE56C80 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE61460);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16[0] = v10;
      *v9 = 136315138;
      v11 = sub_21D759D64();
      v13 = sub_21D0CDFB4(v11, v12, v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "%s: regenerating coordinatorID while having an active drop session", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }
  }

  sub_21DBF56AC();
  v14 = qword_280D0F010;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v14, v5, v2);
  swift_endAccess();
}

unint64_t sub_21D759D64()
{
  sub_21DBFBEEC();

  swift_getMetatypeMetadata();
  v0 = sub_21DBFA1AC();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](62, 0xE100000000000000);
  return 0xD000000000000029;
}

uint64_t sub_21D759E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13[0] = a3;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a4;
  type metadata accessor for TTRTreeViewDropDestination(255, v13);
  v10 = sub_21DBFBA8C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for TTRICollectionViewDragAndDropCoordinator.DropValidationResult(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_21D759EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = a5;
  v22 = a3;
  v8 = *(*v5 + 80);
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  ObjectType = swift_getObjectType();
  (*(a2 + 24))(a4, ObjectType, a2);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v13 + 32))(v16, v12, v8);
    v18 = sub_21D75A130(v22, a4, v16, v23 & 1);
    if (v18)
    {
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21DC09CF0;
      *(v20 + 32) = v19;
      (*(v13 + 8))(v16, v8);
      return v20;
    }

    (*(v13 + 8))(v16, v8);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D75A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v46 = a1;
  v47 = a3;
  v41 = a2;
  v44 = *v4;
  v6 = *(v44 + 80);
  v7 = type metadata accessor for TTRICollectionViewDragItemUserInfo(255, v6, a3, a4);
  v8 = sub_21DBFBA8C();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v33 - v9;
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v10);
  v39 = &v33 - v11;
  v12 = sub_21DBF5D5C();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF56BC();
  v36 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v34 = v8;
  v35 = v7;
  v22 = v5[3];
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropCoordinator<A>, v44);
  v25 = (*(v22 + 24))(v5, WitnessTable, v47, v46, v45 & 1, ObjectType, v22);
  swift_unknownObjectRelease();
  if (v25)
  {
    v26 = qword_280D0F010;
    swift_beginAccess();
    (*(v36 + 16))(v17, v5 + v26, v15);
    (*(v37 + 16))(v14, v41, v38);
    v27 = v39;
    (*(v40 + 16))(v39, v47, v6);
    sub_21D7524A4(v17, v14, v27, 0, v6, v21);
    v28 = v42;
    v29 = v35;
    (*(v18 + 16))(v42, v21, v35);
    (*(v18 + 56))(v28, 0, 1, v29);
    sub_21D75A5D4(v28, v6, v30, v31);
    (*(v43 + 8))(v28, v34);
    (*(v18 + 8))(v21, v29);
  }

  return v25;
}

uint64_t sub_21D75A5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TTRICollectionViewDragItemUserInfo(255, a2, a3, a4);
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  (*(v8 + 16))(v19 - v10, a1, v7, v9);
  v12 = *(v6 - 8);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v22 + 1) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
    (*(v12 + 32))(boxed_opaque_existential_0, v11, v6);
  }

  v19[1] = static TTRICollectionViewDragItemUserInfo.dragItemLocalObjectKey.getter(a2, v13, v14, v15);
  v19[2] = v17;
  sub_21DBFBE2C();
  UIDragItem.setLocalObject(_:forKey:)(&v21, v20);
  sub_21D181D3C(v20);
  return sub_21D0CF7E0(&v21, &qword_27CE5C690, &unk_21DC11AB0);
}

uint64_t sub_21D75A7A8(void *a1)
{
  v2 = *v1;
  v3 = [a1 items];
  sub_21D0D8CF0(0, qword_27CE61010, 0x277D75470);
  v4 = sub_21DBFA5EC();

  v17 = v4;
  v14 = *(v2 + 80);
  v15 = sub_21D763180;
  v16 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61478, &unk_21DC26D40);
  type metadata accessor for TTRICollectionViewDragItemUserInfo(255, v14, v6, v7);
  sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_21D0D0F1C(&qword_27CE61480, &qword_27CE61478, &unk_21DC26D40, MEMORY[0x277D83988]);
  v11 = sub_21D0E5014(sub_21D763188, v13, v5, TupleTypeMetadata2, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);

  return v11;
}

id sub_21D75A944(char *a1, void *a2, char *a3)
{
  v6 = *a3;
  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_280D0F010;
  swift_beginAccess();
  (*(v8 + 16))(v10, &a3[v11], v7);
  v12 = *(v6 + 80);
  v13 = a2;
  sub_21D75AA8C(v12, v14, v15, a1);
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_21D75AA8C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v28[0] = a5;
  v6 = type metadata accessor for TTRICollectionViewDragItemUserInfo(0, a2, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - v8;
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v28 - v15;
  v28[1] = static TTRICollectionViewDragItemUserInfo.dragItemLocalObjectKey.getter(a2, v17, v18, v19);
  v28[2] = v20;
  sub_21DBFBE2C();
  UIDragItem.localObject<A>(ofType:forKey:)(v29, v6, v16);
  sub_21D181D3C(v29);
  (*(v11 + 16))(v13, v16, v10);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    v21 = *(v11 + 8);
    v21(v16, v10);
    v21(v13, v10);
LABEL_6:
    v26 = 1;
    v25 = v28[0];
    return (*(v7 + 56))(v25, v26, 1, v6);
  }

  v22 = *(v7 + 32);
  v22(v9, v13, v6);
  v23 = _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0();
  (*(v11 + 8))(v16, v10);
  if ((v23 & 1) == 0)
  {
    (*(v7 + 8))(v9, v6);
    goto LABEL_6;
  }

  v24 = v28[0];
  v22(v28[0], v9, v6);
  v25 = v24;
  v26 = 0;
  return (*(v7 + 56))(v25, v26, 1, v6);
}

uint64_t sub_21D75AD5C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v7 = *a1;
  sub_21D0D8CF0(255, qword_27CE61010, 0x277D75470);
  type metadata accessor for TTRICollectionViewDragItemUserInfo(255, a3, v8, v9);
  sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(&a4[*(TupleTypeMetadata2 + 48)], v7);
  *a4 = result;
  return result;
}

void sub_21D75AE18(uint64_t a1@<X0>, void *a2@<X8>)
{
  v51 = a2;
  v4 = *(*v2 + 80);
  v68 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v63 = &v50 - v5;
  v62 = sub_21DBF5D5C();
  v55 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(0, v4, v7, v8);
  MEMORY[0x28223BE20](v60);
  v59 = &v50 - v9;
  v12 = type metadata accessor for TTRICollectionViewDragItemUserInfo(255, v4, v10, v11);
  v13 = sub_21DBFBA8C();
  v52 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v69 = &v50 - v14;
  v53 = *(v12 - 1);
  MEMORY[0x28223BE20](v15);
  v58 = &v50 - v16;
  sub_21D0D8CF0(255, qword_27CE61010, 0x277D75470);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = sub_21DBFBA8C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v50 - v23);
  v28 = sub_21D76B0CC(v4, v25, v26, v27);
  v64 = v4;
  sub_21D76B0FC(a1, v28, MEMORY[0x277D84F90], &v74);
  v29 = swift_unknownObjectRetain();
  v30 = sub_21D75A7A8(v29);
  v71 = TupleTypeMetadata2 - 8;
  v72 = 0;
  v70 = (v19 + 32);
  v67 = (v52 + 4);
  v66 = (v53 + 6);
  v56 = (v53 + 4);
  v55 += 2;
  v54 = (v68 + 16);
  ++v53;
  ++v52;
  v68 = v30;
  v57 = v21;
  v65 = v24;
  while (1)
  {
    v38 = sub_21DBFA6DC();
    v39 = v72;
    if (v72 == v38)
    {
      v40 = *(TupleTypeMetadata2 - 8);
      (*(v40 + 56))(v21, 1, 1, TupleTypeMetadata2);
      goto LABEL_9;
    }

    v41 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v41)
    {
      v42 = *(TupleTypeMetadata2 - 8);
      (*(v42 + 16))(v21, v30 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39, TupleTypeMetadata2);
      v43 = __OFADD__(v39, 1);
      v44 = v39 + 1;
      if (v43)
      {
        break;
      }

      goto LABEL_8;
    }

    v48 = sub_21DBFBF7C();
    v42 = *(TupleTypeMetadata2 - 8);
    if (*(v42 + 64) != 8)
    {
      goto LABEL_20;
    }

    v73 = v48;
    (*(v42 + 16))(v21, &v73, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    v44 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

LABEL_8:
    v72 = v44;
    v40 = v42;
    (*(v42 + 56))(v21, 0, 1, TupleTypeMetadata2);
LABEL_9:
    v45 = v69;
    (*v70)(v24, v21, v18);
    if ((*(v40 + 48))(v24, 1, TupleTypeMetadata2) == 1)
    {

      v49 = v51;
      *v51 = v74;
      *(v49 + 1) = v75;
      return;
    }

    v46 = *v24;
    (*v67)(v45, v24 + *(TupleTypeMetadata2 + 48), v13);
    if ((*v66)(v45, 1, v12) == 1)
    {
      (*v52)(v45, v13);
      v47 = v46;
      MEMORY[0x223D42D80]();
      if (*((*(&v75 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v75 + 1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
    }

    else
    {
      v31 = v58;
      (*v56)(v58, v45, v12);
      v32 = v13;
      v33 = v61;
      (*v55)(v61, &v31[v12[7]], v62);
      v35 = v63;
      v34 = v64;
      (*v54)(v63, &v31[v12[8]], v64);
      v36 = v33;
      v13 = v32;
      sub_21D76B108(v36, v35, v31[v12[9]], v34, v59);
      sub_21DBFA74C();
      sub_21DBFA6FC();

      v37 = v31;
      v21 = v57;
      (*v53)(v37, v12);
    }

    v24 = v65;
    v30 = v68;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_21D75B654@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v154 = a3;
  v155 = a4;
  v158 = a5;
  v8 = *v5;
  v9 = *v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61488, &unk_21DC26D50);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = &v121 - v11;
  v12 = v8;
  v123 = v9;
  v13 = (v9 + 88);
  v14 = *(v12 + 80);
  v17 = type metadata accessor for TTRRelativeInsertionPosition(255, v14, v15, v16);
  v126 = sub_21DBFBA8C();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v127 = &v121 - v18;
  v129 = v17;
  v128 = *(v17 - 8);
  MEMORY[0x28223BE20](v19);
  v124 = &v121 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
  MEMORY[0x28223BE20](v21 - 8);
  v131 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v133 = &v121 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE61450, &unk_21DC26B48);
  MEMORY[0x28223BE20](v25 - 8);
  v138 = &v121 - v26;
  v139 = v14;
  *&v167.val[0].f64[0] = v14;
  v167.val[0].f64[1] = *v13;
  v167.val[1] = v167.val[0];
  v27 = &v164;
  vst2q_f64(v27, v167);
  v28 = type metadata accessor for TTRICollectionViewDropProposal(255, &v164);
  v149 = sub_21DBFBA8C();
  v140 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v148 = &v121 - v29;
  v136 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v137 = (&v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v147 = &v121 - v32;
  v145 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  v130 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v132 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v144 = &v121 - v35;
  v36 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v36 - 8);
  v143 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TTRICollectionViewGapHit(0);
  MEMORY[0x28223BE20](v38 - 8);
  v134 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v28;
  v150 = *(v28 - 8);
  MEMORY[0x28223BE20](v40);
  v142 = &v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v121 - v43;
  v45 = type metadata accessor for TTRICollectionViewItemHit(0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v121 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  MEMORY[0x28223BE20](v48);
  v50 = &v121 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v53 = &v121 - v52;
  v146 = a1;
  v54 = *(a1 + 16);
  v152 = v5;
  sub_21D75AE18(v54, &v164);
  v55 = v164;
  v56 = v165;
  v57 = v166;
  ObjectType = swift_getObjectType();
  v156 = v56;
  v157 = v55;
  v164 = v55;
  v165 = v56;
  v59 = v57;
  v166 = v57;
  v60 = *(v154 + 88);
  v61 = v54;
  v62 = v154;
  v153 = a2;
  v141 = ObjectType;
  v60(v61, &v164, v155);
  v155 = v53;
  sub_21D763428(v53, v50, type metadata accessor for TTRICollectionViewHitTestResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v75 = v44;
    sub_21D763490(v50, v47, type metadata accessor for TTRICollectionViewItemHit);
    v76 = v146;
    v77 = *(v76 + *(*v76 + 128));
    v79 = v156;
    v78 = v157;
    v164 = v157;
    v165 = v156;
    v166 = v57;
    v80 = v153;
    (*(v62 + 96))(v163, v47, &v164, v141, v62);
    *(v77 + qword_27CE8EAC8) = v163[0];
    v164 = v78;
    v165 = v79;
    v166 = v59;
    v83 = type metadata accessor for TTRICollectionViewDragItemSources(0, v139, v81, v82);
    if (sub_21D76B1D4(v83, v84, v85, v86))
    {
      v164 = v78;
      v165 = v79;
      v166 = v59;
      sub_21D75C8E0(v80, v62, v47, &v164, v76, v75);
    }

    else
    {
      v164 = v78;
      v165 = v79;
      v166 = v59;
      sub_21D75D97C(v80, v62, v47, &v164, v75);
    }

    sub_21D7633B0(v47, type metadata accessor for TTRICollectionViewItemHit);
    sub_21D7633B0(v155, type metadata accessor for TTRICollectionViewHitTestResult);

    swift_unknownObjectRelease();
    v70 = v150;
    v71 = *(v150 + 32);
    v72 = v158;
    v73 = v158;
    v74 = v75;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v87 = v147;
    sub_21D763490(v50, v147, type metadata accessor for TTRICollectionViewEmptySpaceType);
    v88 = v146;
    v89 = *(*v146 + 120);
    swift_beginAccess();
    v90 = v140;
    (*(v140 + 16))(v148, v88 + v89, v149);
    v91 = *(v88 + *(*v88 + 128));
    v92 = v138;
    sub_21D763428(v87, v138, type metadata accessor for TTRICollectionViewEmptySpaceType);
    (*(v135 + 56))(v92, 0, 1, v136);
    v93 = qword_27CE8EAD0;
    swift_beginAccess();
    sub_21D0F02F4(v92, v91 + v93, &unk_27CE61450, &unk_21DC26B48);
    swift_endAccess();
    v94 = v137;
    sub_21D763428(v87, v137, type metadata accessor for TTRICollectionViewEmptySpaceType);
    v95 = swift_getEnumCaseMultiPayload();
    if (!v95)
    {
      v102 = v143;
      MEMORY[0x223D3E490](0, *v94);
      v163[0] = v157;
      v163[1] = v156;
      v163[2] = v59;
      v103 = v144;
      sub_21D763428(v102, v144, type metadata accessor for TTRAdjustedIndexPath);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v160) = 2;
      v104 = v158;
      sub_21D75E3F4(v153, v62, v163, v103, &v160, v158);
      sub_21D7633B0(v103, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
      sub_21D7633B0(v102, type metadata accessor for TTRAdjustedIndexPath);
      (*(v90 + 8))(v148, v149);
      sub_21D7633B0(v147, type metadata accessor for TTRICollectionViewEmptySpaceType);
      sub_21D7633B0(v155, type metadata accessor for TTRICollectionViewHitTestResult);

      swift_unknownObjectRelease();
      return (*(v150 + 56))(v104, 0, 1, v151);
    }

    v96 = v156;
    v97 = v157;
    if (v95 != 1)
    {

      swift_unknownObjectRelease();
      sub_21D7633B0(v147, type metadata accessor for TTRICollectionViewEmptySpaceType);
      sub_21D7633B0(v155, type metadata accessor for TTRICollectionViewHitTestResult);
      return (*(v90 + 32))(v158, v148, v149);
    }

    v98 = v133;
    sub_21D76321C(v94, v133);
    v99 = v131;
    sub_21D0D3954(v98, v131, &qword_27CE61600, &qword_21DC26F40);
    if ((*(v130 + 48))(v99, 1, v145) == 1)
    {

      swift_unknownObjectRelease();
      sub_21D0CF7E0(v98, &qword_27CE61600, &qword_21DC26F40);
      sub_21D7633B0(v147, type metadata accessor for TTRICollectionViewEmptySpaceType);
      sub_21D7633B0(v155, type metadata accessor for TTRICollectionViewHitTestResult);
      sub_21D0CF7E0(v99, &qword_27CE61600, &qword_21DC26F40);
      return (*(v90 + 32))(v158, v148, v149);
    }

    v146 = v59;
    sub_21D763490(v99, v132, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    v105 = v152;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v106 = v105[3];
      v107 = swift_getObjectType();
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropCoordinator<A>, v123);
      v160 = v97;
      v161 = v96;
      v162 = v146;
      v109 = v127;
      v110 = v107;
      v98 = v133;
      (*(v106 + 64))(v105, WitnessTable, &v160, v110, v106);
      swift_unknownObjectRelease();
      v111 = v128;
      v112 = v129;
      v113 = (*(v128 + 48))(v109, 1, v129);
      v114 = v153;
      if (v113 != 1)
      {
        (*(v111 + 32))(v124, v109, v112);
        v115 = v122;
        v116 = v124;
        (*(v62 + 40))(v124, v141, v62);
        (*(v111 + 8))(v116, v112);
        v117 = type metadata accessor for TTRUnadjustedIndexPath(0);
        if ((*(*(v117 - 8) + 48))(v115, 1, v117) == 1)
        {
          sub_21D0CF7E0(v115, qword_27CE61488, &unk_21DC26D50);
        }

        else
        {
          v118 = v132;
          sub_21D7633B0(v132, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
          sub_21D763490(v115, v118, type metadata accessor for TTRUnadjustedIndexPath);
          swift_storeEnumTagMultiPayload();
        }

        v114 = v153;
        goto LABEL_25;
      }
    }

    else
    {
      v109 = v127;
      (*(v128 + 56))(v127, 1, 1, v129);
      v114 = v153;
    }

    (*(v125 + 8))(v109, v126);
LABEL_25:
    v160 = v97;
    v161 = v96;
    v162 = v146;
    v159 = 1;
    v119 = v142;
    v120 = v132;
    sub_21D75E3F4(v114, v62, &v160, v132, &v159, v142);
    sub_21D7633B0(v120, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    sub_21D0CF7E0(v98, &qword_27CE61600, &qword_21DC26F40);
    (*(v90 + 8))(v148, v149);
    sub_21D7633B0(v147, type metadata accessor for TTRICollectionViewEmptySpaceType);
    sub_21D7633B0(v155, type metadata accessor for TTRICollectionViewHitTestResult);

    swift_unknownObjectRelease();
    v70 = v150;
    v71 = *(v150 + 32);
    v72 = v158;
    v73 = v158;
    v74 = v119;
    goto LABEL_12;
  }

  v64 = v134;
  sub_21D763490(v50, v134, type metadata accessor for TTRICollectionViewGapHit);
  v65 = *(type metadata accessor for TTRICollectionViewHitIndexPaths(0) + 20);
  v66 = sub_21DBF5D5C();
  v67 = v143;
  (*(*(v66 - 8) + 16))(v143, v64 + v65, v66);
  v164 = v157;
  v165 = v156;
  v166 = v57;
  v68 = v144;
  sub_21D763428(v67, v144, type metadata accessor for TTRAdjustedIndexPath);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v163[0]) = 0;
  v69 = v142;
  sub_21D75E3F4(v153, v62, &v164, v68, v163, v142);
  sub_21D7633B0(v68, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  sub_21D7633B0(v67, type metadata accessor for TTRAdjustedIndexPath);
  sub_21D7633B0(v64, type metadata accessor for TTRICollectionViewGapHit);
  sub_21D7633B0(v155, type metadata accessor for TTRICollectionViewHitTestResult);

  swift_unknownObjectRelease();
  v70 = v150;
  v71 = *(v150 + 32);
  v72 = v158;
  v73 = v158;
  v74 = v69;
LABEL_12:
  v100 = v151;
  v71(v73, v74, v151);
  return (*(v70 + 56))(v72, 0, 1, v100);
}

uint64_t sub_21D75C8E0@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v186 = a3;
  v180 = a6;
  v196.val[0] = *(*v6 + 80);
  v196.val[1] = v196.val[0];
  v190 = v196.val[0];
  v191 = v196.val[0];
  v11 = &v194;
  vst2q_f64(v11, v196);
  v171 = type metadata accessor for TTRTreeViewDropDestination(255, &v194);
  v12 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v12 - 8);
  v170 = &v160 - v13;
  v168 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v168);
  v169 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = v190.i64[1];
  v183 = v190.i64[0];
  v194 = vdupq_lane_s64(v190.i64[0], 0);
  v195 = vdupq_laneq_s64(v190, 1);
  v187 = type metadata accessor for TTRICollectionViewDropProposal(255, &v194);
  v190.i64[0] = sub_21DBFBA8C();
  v181 = *(v190.i64[0] - 8);
  MEMORY[0x28223BE20](v190.i64[0]);
  v172 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v160 - v17;
  MEMORY[0x28223BE20](v19);
  v176 = &v160 - v20;
  MEMORY[0x28223BE20](v21);
  v184 = &v160 - v22;
  v23 = type metadata accessor for TTRICollectionViewItemHit(0);
  v174 = *(v23 - 8);
  v24 = *(v174 + 64);
  MEMORY[0x28223BE20](v23);
  v173 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v175 = &v160 - v26;
  v27 = *a4;
  v28 = a4[1];
  v29 = a4[2];
  v30 = v186;
  ObjectType = swift_getObjectType();
  v177 = v27;
  v194.i64[0] = v27;
  v194.i64[1] = v28;
  v188 = v28;
  v182 = v29;
  v195.i64[0] = v29;
  v32 = *(a2 + 96);
  v192 = a1;
  v185 = a2;
  v32(&v193, v30, &v194, ObjectType, a2);
  v33 = v193;
  *(*(a5 + *(*a5 + 128)) + qword_27CE8EAC8) = v193;
  v179 = v18;
  if (v33 > 2)
  {
    if (v33 != 3)
    {
      v81 = *(v30 + *(v23 + 20));
      v82 = v187;
      FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
      sub_21DBFC5CC();
      v83 = v24 + 7;
      if (v81 != 1)
      {
        swift_allocObject();
        v173 = sub_21DBFA60C();
        v38 = v128;
        v129 = v175;
        sub_21D763428(v30, v175, type metadata accessor for TTRICollectionViewItemHit);
        v130 = (*(v174 + 80) + 32) & ~*(v174 + 80);
        v131 = (v83 + v130) & 0xFFFFFFFFFFFFFFF8;
        v132 = (v131 + 15) & 0xFFFFFFFFFFFFFFF8;
        v43 = swift_allocObject();
        v44 = v82;
        v45 = v183;
        v133 = v189;
        *(v43 + 16) = v183;
        *(v43 + 24) = v133;
        sub_21D763490(v129, v43 + v130, type metadata accessor for TTRICollectionViewItemHit);
        *(v43 + v131) = v178;
        v134 = (v43 + v132);
        v135 = v185;
        *v134 = v192;
        v134[1] = v135;
        v136 = (v43 + ((v132 + 23) & 0xFFFFFFFFFFFFFFF8));
        v50 = v177;
        v137 = v188;
        *v136 = v177;
        v136[1] = v137;
        v136[2] = v182;
        v52 = sub_21D76328C;
        goto LABEL_12;
      }

      swift_allocObject();
      v166 = sub_21DBFA60C();
      v85 = v84;
      v165 = type metadata accessor for TTRICollectionViewItemHit;
      v86 = v175;
      sub_21D763428(v30, v175, type metadata accessor for TTRICollectionViewItemHit);
      v87 = *(v174 + 80);
      v174 = (v87 + 32) & ~v87;
      v88 = ((v83 + v174) & 0xFFFFFFFFFFFFFFF8);
      v163 = v88;
      v164 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v164 + 23) & 0xFFFFFFFFFFFFFFF8;
      v90 = swift_allocObject();
      v91 = v183;
      v92 = v189;
      *(v90 + 16) = v183;
      *(v90 + 24) = v92;
      v162 = type metadata accessor for TTRICollectionViewItemHit;
      sub_21D763490(v86, v90 + ((v87 + 32) & ~v87), type metadata accessor for TTRICollectionViewItemHit);
      v93 = v178;
      *(v88 + v90) = v178;
      v94 = (v90 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8));
      v95 = v185;
      *v94 = v192;
      v94[1] = v95;
      v96 = (v90 + v89);
      v97 = v177;
      v98 = v188;
      *v96 = v177;
      v96[1] = v98;
      v99 = v182;
      v96[2] = v182;
      v161 = v85;
      *v85 = sub_21D7632C4;
      v85[1] = v90;
      v61 = v91;
      v100 = v173;
      sub_21D763428(v186, v173, v165);
      v101 = swift_allocObject();
      *(v101 + 16) = v61;
      *(v101 + 24) = v92;
      v102 = v100;
      v80 = v187;
      sub_21D763490(v102, v101 + v174, v162);
      *(v163 + v101) = v93;
      v103 = (v101 + v164);
      v104 = v185;
      *v103 = v192;
      v103[1] = v104;
      v105 = (v101 + v89);
      *v105 = v97;
      v105[1] = v98;
      v105[2] = v99;
LABEL_10:
      v126 = v161;
      v161[2] = sub_21D765E7C;
      v126[3] = v101;
      v50 = v97;
      sub_21D23C8B4(v166, FunctionTypeMetadata0);
      v79 = v127;
      swift_unknownObjectRetain();
      sub_21DBF8E0C();
      sub_21DBF8E0C();

      swift_unknownObjectRetain();
      goto LABEL_13;
    }

LABEL_6:
    FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
    sub_21DBFC5CC();
    swift_allocObject();
    v166 = sub_21DBFA60C();
    v54 = v53;
    v165 = type metadata accessor for TTRICollectionViewItemHit;
    v55 = v175;
    sub_21D763428(v30, v175, type metadata accessor for TTRICollectionViewItemHit);
    v56 = (*(v174 + 80) + 32) & ~*(v174 + 80);
    v57 = (v24 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v164 = v57;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v174 = v58;
    v59 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    v61 = v183;
    v62 = v189;
    *(v60 + 16) = v183;
    *(v60 + 24) = v62;
    v163 = type metadata accessor for TTRICollectionViewItemHit;
    sub_21D763490(v55, v60 + v56, type metadata accessor for TTRICollectionViewItemHit);
    v63 = v178;
    *(v60 + v57) = v178;
    v64 = (v60 + v58);
    v65 = v185;
    *v64 = v192;
    v64[1] = v65;
    v66 = (v60 + v59);
    v67 = v177;
    v68 = v188;
    *v66 = v177;
    v66[1] = v68;
    v69 = v182;
    v66[2] = v182;
    v162 = v54;
    *v54 = sub_21D765E7C;
    *(v54 + 8) = v60;
    v70 = v173;
    sub_21D763428(v186, v173, v165);
    v71 = swift_allocObject();
    v72 = v189;
    *(v71 + 16) = v61;
    *(v71 + 24) = v72;
    v73 = v70;
    v50 = v67;
    sub_21D763490(v73, v71 + v56, v163);
    *(v71 + v164) = v63;
    v74 = (v71 + v174);
    v75 = v185;
    *v74 = v192;
    v74[1] = v75;
    v76 = (v71 + v59);
    *v76 = v67;
    v76[1] = v68;
    v76[2] = v69;
    v77 = v162;
    *(v162 + 2) = sub_21D765E80;
    *(v77 + 3) = v71;
    sub_21D23C8B4(v166, FunctionTypeMetadata0);
    v79 = v78;
    swift_unknownObjectRetain();
    v80 = v187;
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    swift_unknownObjectRetain();
    goto LABEL_13;
  }

  if (v33 < 2)
  {
    goto LABEL_6;
  }

  v34 = *(v30 + *(v23 + 20));
  v35 = v187;
  FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
  sub_21DBFC5CC();
  v36 = v24 + 7;
  if ((v34 & 1) == 0)
  {
    swift_allocObject();
    v166 = sub_21DBFA60C();
    v107 = v106;
    v165 = type metadata accessor for TTRICollectionViewItemHit;
    v108 = v175;
    sub_21D763428(v30, v175, type metadata accessor for TTRICollectionViewItemHit);
    v109 = *(v174 + 80);
    v174 = (v109 + 32) & ~v109;
    v110 = ((v36 + v174) & 0xFFFFFFFFFFFFFFF8);
    v163 = v110;
    v164 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
    v111 = (v164 + 23) & 0xFFFFFFFFFFFFFFF8;
    v112 = swift_allocObject();
    v113 = v183;
    v114 = v189;
    *(v112 + 16) = v183;
    *(v112 + 24) = v114;
    v162 = type metadata accessor for TTRICollectionViewItemHit;
    sub_21D763490(v108, v112 + ((v109 + 32) & ~v109), type metadata accessor for TTRICollectionViewItemHit);
    v115 = v178;
    *(v110 + v112) = v178;
    v116 = (v112 + ((v110 + 15) & 0xFFFFFFFFFFFFFFF8));
    v117 = v185;
    *v116 = v192;
    v116[1] = v117;
    v118 = (v112 + v111);
    v97 = v177;
    v119 = v188;
    *v118 = v177;
    v118[1] = v119;
    v120 = v182;
    v118[2] = v182;
    v161 = v107;
    *v107 = sub_21D765E80;
    v107[1] = v112;
    v61 = v113;
    v121 = v173;
    sub_21D763428(v186, v173, v165);
    v101 = swift_allocObject();
    *(v101 + 16) = v61;
    *(v101 + 24) = v114;
    v122 = v121;
    v80 = v187;
    sub_21D763490(v122, v101 + v174, v162);
    *(v163 + v101) = v115;
    v123 = (v101 + v164);
    v124 = v185;
    *v123 = v192;
    v123[1] = v124;
    v125 = (v101 + v111);
    *v125 = v97;
    v125[1] = v119;
    v125[2] = v120;
    goto LABEL_10;
  }

  swift_allocObject();
  v173 = sub_21DBFA60C();
  v38 = v37;
  v39 = v175;
  sub_21D763428(v30, v175, type metadata accessor for TTRICollectionViewItemHit);
  v40 = (*(v174 + 80) + 32) & ~*(v174 + 80);
  v41 = (v36 + v40) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v35;
  v45 = v183;
  v46 = v189;
  *(v43 + 16) = v183;
  *(v43 + 24) = v46;
  sub_21D763490(v39, v43 + v40, type metadata accessor for TTRICollectionViewItemHit);
  *(v43 + v41) = v178;
  v47 = (v43 + v42);
  v48 = v185;
  *v47 = v192;
  v47[1] = v48;
  v49 = (v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8));
  v50 = v177;
  v51 = v188;
  *v49 = v177;
  v49[1] = v51;
  v49[2] = v182;
  v52 = sub_21D765E7C;
LABEL_12:
  *v38 = v52;
  v38[1] = v43;
  v61 = v45;
  v80 = v44;
  sub_21D23C8B4(v173, FunctionTypeMetadata0);
  v79 = v138;
LABEL_13:
  v139 = v184;
  v140 = *(v80 - 1);
  v141 = (*(v140 + 56))(v184, 1, 1, v80);
  v187 = &v160;
  v194.i64[0] = v79;
  MEMORY[0x28223BE20](v141);
  v142 = v189;
  *(&v160 - 4) = v61;
  *(&v160 - 3) = v142;
  *(&v160 - 2) = v139;
  swift_getFunctionTypeMetadata0();
  v143 = sub_21DBFA74C();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v144 = v188;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  swift_getWitnessTable(MEMORY[0x277D83970], v143);
  v145 = v80;
  v146 = v50;
  v147 = v176;
  sub_21DBFA48C();

  v148 = v181;
  v149 = v179;
  (*(v181 + 32))(v179, v147, v190.i64[0]);
  v150 = *(v140 + 48);
  if (v150(v149, 1, v145) == 1)
  {
    v151 = v146;
    v152 = v150;
    v153 = v172;
    (*(v148 + 16))(v172, v139, v190.i64[0]);
    if (v152(v153, 1, v145) == 1)
    {
      v194.i64[0] = v151;
      v194.i64[1] = v144;
      v195.i64[0] = v182;
      v154 = v169;
      swift_storeEnumTagMultiPayload();
      v155 = v170;
      (*(*(v171 - 8) + 56))(v170, 1, 1);
      v156 = v155;
      v157 = v172;
      TTRICollectionViewDropProposal.init(dragItemSources:dropOperation:dropIntent:dropDestination:)(&v194, 0, v154, v156, v183, v183, v189, v189, v180);
      v158 = v152;
      if (v152(v157, 1, v145) == 1)
      {
        swift_unknownObjectRetain();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
      }

      else
      {
        v192 = *(v148 + 8);
        swift_unknownObjectRetain();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v192(v157, v190.i64[0]);
      }
    }

    else
    {
      v158 = v152;
      (*(v140 + 32))(v180, v153, v145);
    }

    v139 = v184;
    if (v158(v149, 1, v145) != 1)
    {
      (*(v148 + 8))(v149, v190.i64[0]);
    }
  }

  else
  {
    (*(v140 + 32))(v180, v149, v145);
  }

  return (*(v148 + 8))(v139, v190.i64[0]);
}

uint64_t sub_21D75D97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a1;
  v105 = a2;
  v98 = a5;
  v109.val[0] = *(*v5 + 80);
  v109.val[1] = v109.val[0];
  v102 = v109.val[0];
  v103 = v109.val[0];
  v8 = &v107;
  vst2q_f64(v8, v109);
  type metadata accessor for TTRTreeViewDropDestination(255, &v107);
  v80 = sub_21DBFBA8C();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v74 - v9;
  v76 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v76);
  v77 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v102.i64[1];
  v87 = v102.i64[0];
  v86 = type metadata accessor for TTRICollectionViewDragAndDropCoordinator.DropValidationResult(0, v102.i64[0], v102.i64[1], v13);
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v88 = &v74 - v14;
  v90 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v90);
  v85 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v74 - v17;
  v107 = vdupq_lane_s64(v102.i64[0], 0);
  v108 = vdupq_laneq_s64(v102, 1);
  v102.i64[0] = type metadata accessor for TTRICollectionViewDropProposal(0, &v107);
  v100 = *(v102.i64[0] - 8);
  MEMORY[0x28223BE20](v102.i64[0]);
  v84 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - v20;
  v22 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v22 - 8);
  v93 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v74 - v25;
  v27 = sub_21DBF5D5C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a4;
  v33 = a4[1];
  v34 = a4[2];
  v91 = v28;
  v35 = *(v28 + 16);
  v35(v31, a3, v27, v29);
  v96 = v31;
  v97 = v27;
  (v35)(v26, v31, v27);
  v99 = v32;
  v107.i64[0] = v32;
  v107.i64[1] = v33;
  v101 = v33;
  v89 = v34;
  v108.i64[0] = v34;
  v92 = v26;
  sub_21D75EB28(v104, v105, v107.i64, v26, v21);
  v94 = v21;
  v36 = *(v21 + 3);
  v37 = type metadata accessor for TTRICollectionViewItemHit(0);
  v81 = a3;
  if (v36 < 2)
  {
    v38 = v85;
    v40 = v96;
    v39 = v97;
    (v35)(v85, v96, v97);
    swift_storeEnumTagMultiPayload();
    v107.i64[0] = v99;
    v107.i64[1] = v101;
    v108.i64[0] = v89;
    v106 = 0;
    sub_21D75E3F4(v104, v105, v107.i64, v38, &v106, v98);
    sub_21D7633B0(v38, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    (*(v100 + 8))(v94, v102.i64[0]);
    sub_21D7633B0(v92, type metadata accessor for TTRUnadjustedIndexPath);
    return (*(v91 + 8))(v40, v39);
  }

  v85 = v37;
  v42 = v92;
  v43 = v95;
  sub_21D763428(v92, v95, type metadata accessor for TTRUnadjustedIndexPath);
  swift_storeEnumTagMultiPayload();
  v44 = v99;
  v45 = v101;
  v107.i64[0] = v99;
  v107.i64[1] = v101;
  v46 = v89;
  v108.i64[0] = v89;
  v49 = type metadata accessor for TTRICollectionViewDragItemSources(0, v87, v47, v48);
  v50 = v93;
  sub_21D76ABB8(v43, v49, v93);
  v51 = v44;
  v107.i64[0] = v44;
  v107.i64[1] = v45;
  v108.i64[0] = v46;
  v52 = v88;
  sub_21D75EF88(v104, v105, v107.i64, v50, v88);
  v53 = v100;
  v54 = v84;
  v55 = v94;
  v56 = v102.i64[0];
  (*(v100 + 16))(v84, v94, v102.i64[0]);
  v57 = *(v52 + *(v86 + 36));
  v58 = v53;
  v59 = v52;
  v60 = v55;
  if (v57 < 2)
  {
    (*(v83 + 8))(v59);
    sub_21D7633B0(v93, type metadata accessor for TTRUnadjustedIndexPath);
    sub_21D7633B0(v95, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    (*(v53 + 8))(v55, v56);
    sub_21D7633B0(v42, type metadata accessor for TTRUnadjustedIndexPath);
    v61 = v91;
LABEL_8:
    (*(v61 + 8))(v96, v97);
    return (*(v58 + 32))(v98, v54, v56);
  }

  v62 = v46;
  v63 = v42;
  v64 = v95;
  v65 = (v53 + 8);
  v61 = v91;
  if (*(v81 + *(v85 + 6)) == 1)
  {
    (*(v83 + 8))(v88);
    sub_21D7633B0(v93, type metadata accessor for TTRUnadjustedIndexPath);
    sub_21D7633B0(v64, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    v56 = v102.i64[0];
    (*v65)(v60, v102.i64[0]);
    sub_21D7633B0(v63, type metadata accessor for TTRUnadjustedIndexPath);
    goto LABEL_8;
  }

  v107.i64[0] = v51;
  v107.i64[1] = v101;
  v108.i64[0] = v62;
  sub_21D76B268(v95, v49, v82);
  v66 = *v65;
  v67 = v102.i64[0];
  (*v65)(v54, v102.i64[0]);
  sub_21D7633B0(v93, type metadata accessor for TTRUnadjustedIndexPath);
  sub_21D7633B0(v64, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  v66(v60, v67);
  sub_21D7633B0(v63, type metadata accessor for TTRUnadjustedIndexPath);
  (*(v61 + 8))(v96, v97);
  v107.i64[0] = v99;
  v107.i64[1] = v101;
  v108.i64[0] = v62;
  v68 = v88;
  v69 = *(v88 + *(v86 + 36));
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220, &unk_21DC26970) + 48);
  v71 = v77;
  sub_21D763490(v82, v77, type metadata accessor for TTRAdjustedIndexPath);
  *(v71 + v70) = 0;
  v58 = v100;
  swift_storeEnumTagMultiPayload();
  v72 = v78;
  v73 = v68;
  v56 = v67;
  (*(v79 + 32))(v78, v73, v80);
  TTRICollectionViewDropProposal.init(dragItemSources:dropOperation:dropIntent:dropDestination:)(&v107, v69, v71, v72, v87, v87, v75, v75, v54);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return (*(v58 + 32))(v98, v54, v56);
}

double sub_21D75E3F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v46 = a1;
  v47 = a2;
  v54 = a6;
  v45 = v7;
  v59.val[0] = *(*v7 + 80);
  v59.val[1] = v59.val[0];
  v55 = v59.val[0];
  v56 = v59.val[0];
  v11 = &v57;
  vst2q_f64(v11, v59);
  type metadata accessor for TTRTreeViewDropDestination(255, &v57);
  v12 = sub_21DBFBA8C();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x28223BE20](v12);
  v53 = &v40[-v13];
  v48 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v48);
  v50 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = v55.i64[1];
  v18 = v55.i64[0];
  v20 = type metadata accessor for TTRICollectionViewDragAndDropCoordinator.DropValidationResult(0, v55.i64[0], v55.i64[1], v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v40[-v21];
  v23 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v40[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = vdupq_lane_s64(v55.i64[0], 0);
  v58 = vdupq_laneq_s64(v55, 1);
  v26 = type metadata accessor for TTRICollectionViewDropProposal(0, &v57);
  v43 = *(v26 - 8);
  v44 = v26;
  MEMORY[0x28223BE20](v26);
  v42 = &v40[-v27];
  v28 = *a3;
  v29 = a3[1];
  v30 = a3[2];
  v41 = *a5;
  v57.i64[0] = v28;
  v57.i64[1] = v29;
  v58.i64[0] = v30;
  v55.i64[0] = v18;
  v33 = type metadata accessor for TTRICollectionViewDragItemSources(0, v18, v31, v32);
  sub_21D76ABB8(a4, v33, v25);
  v57.i64[0] = v28;
  v57.i64[1] = v29;
  v58.i64[0] = v30;
  sub_21D75EF88(v46, v47, v57.i64, v25, v22);
  if (*&v22[*(v20 + 36)] >= 2uLL)
  {
    v57.i64[0] = v28;
    v57.i64[1] = v29;
    v58.i64[0] = v30;
    sub_21D76B268(a4, v33, v17);
    sub_21D7633B0(v25, type metadata accessor for TTRUnadjustedIndexPath);
    v57.i64[0] = v28;
    v57.i64[1] = v29;
    v58.i64[0] = v30;
    v34 = *&v22[*(v20 + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220, &unk_21DC26970) + 48);
    v35 = v50;
    sub_21D763490(v17, v50, type metadata accessor for TTRAdjustedIndexPath);
    v35[v36] = v41;
  }

  else
  {
    sub_21D7633B0(v25, type metadata accessor for TTRUnadjustedIndexPath);
    v57.i64[0] = v28;
    v57.i64[1] = v29;
    v58.i64[0] = v30;
    v34 = *&v22[*(v20 + 36)];
    v35 = v50;
  }

  swift_storeEnumTagMultiPayload();
  v37 = v53;
  (*(v51 + 32))(v53, v22, v52);
  v38 = v42;
  TTRICollectionViewDropProposal.init(dragItemSources:dropOperation:dropIntent:dropDestination:)(&v57, v34, v35, v37, v55.i64[0], v55.i64[0], v49, v49, v42);
  (*(v43 + 32))(v54, v38, v44);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D75E8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v21 = a3;
  v14 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for TTRICollectionViewHitIndexPaths(0) + 20);
  v18 = sub_21DBF5D5C();
  (*(*(v18 - 8) + 16))(v16, a1 + v17, v18);
  swift_storeEnumTagMultiPayload();
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v22 = 0;
  sub_21D75E3F4(a2, v21, v23, v16, &v22, a7);
  return sub_21D7633B0(v16, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
}

uint64_t sub_21D75EA04@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v15 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF5D5C();
  (*(*(v18 - 8) + 16))(v17, a1, v18);
  v21[0] = a5;
  v21[1] = a6;
  v21[2] = a7;
  sub_21D75EB28(a3, a4, v21, v17, x8_0);
  return sub_21D7633B0(v17, type metadata accessor for TTRUnadjustedIndexPath);
}

double sub_21D75EB28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a1;
  v27 = a2;
  v31 = a5;
  v35.val[0] = *(*v5 + 80);
  v35.val[1] = v35.val[0];
  v24[0] = v35.val[0];
  v24[1] = v35.val[0];
  v8 = &v32;
  vst2q_f64(v8, v35);
  type metadata accessor for TTRTreeViewDropDestination(255, &v32);
  v9 = sub_21DBFBA8C();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v28 = v24 - v10;
  v25 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v25);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v24[0];
  v15 = type metadata accessor for TTRICollectionViewDragAndDropCoordinator.DropValidationResult(0, *&v24[0], *(&v24[0] + 1), v14);
  MEMORY[0x28223BE20](v15);
  v17 = v24 - v16;
  v18 = *a3;
  v19 = a3[1];
  v20 = a3[2];
  v32 = v18;
  v33 = v19;
  v34 = v20;
  sub_21D75F4A0(v26, v27, &v32, a4, v24 - v16);
  if (*&v17[*(v15 + 36)] >= 2uLL)
  {
    sub_21D763428(a4, v12, type metadata accessor for TTRUnadjustedIndexPath);
  }

  swift_storeEnumTagMultiPayload();
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v21 = *&v17[*(v15 + 36)];
  v22 = v28;
  (*(v29 + 32))(v28, v17, v30);
  TTRICollectionViewDropProposal.init(dragItemSources:dropOperation:dropIntent:dropDestination:)(&v32, v21, v12, v22, v13, v13, *(&v13 + 1), *(&v13 + 1), v31);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D75EDC4@<X0>(void (**a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[0] = a3;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a4;
  v8 = type metadata accessor for TTRICollectionViewDropProposal(0, v17);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  (*a1)(v10);
  v13 = sub_21DBFBA8C();
  (*(*(v13 - 8) + 8))(a2, v13);
  (*(v9 + 16))(a2, v12, v8);
  v14 = *(v9 + 56);
  v14(a2, 0, 1, v8);
  if (*(v12 + 3) > 1uLL)
  {
    (*(v9 + 32))(a5, v12, v8);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v15 = 1;
  }

  return v14(a5, v15, 1, v8);
}

uint64_t sub_21D75EF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v52 = a4;
  v53 = a2;
  v50 = *v6;
  v51 = a1;
  v65.val[0] = *(v50 + 80);
  v65.val[1] = v65.val[0];
  v55 = v65.val[0];
  v56 = v65.val[0];
  v9 = v64;
  vst2q_f64(v9, v65);
  v10 = type metadata accessor for TTRTreeViewDropDestination(255, v64);
  v11 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v41 - v12;
  v59 = *(v10 - 8);
  MEMORY[0x28223BE20](v13);
  v49 = &v41 - v14;
  v15 = v55;
  v64[0] = vdupq_lane_s64(v55.i64[0], 0);
  v64[1] = vdupq_laneq_s64(v55, 1);
  v16 = type metadata accessor for TTRNormalizedItemLocationForInsertAt(255, v64);
  v47 = sub_21DBFBA8C();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v18 = &v41 - v17;
  v19 = *(v16 - 8);
  MEMORY[0x28223BE20](v20);
  v48 = &v41 - v21;
  v22 = *a3;
  v54 = a3[1];
  v55.i64[0] = v22;
  v23 = a3[2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = v15.i64[1];
  v58 = v15.i64[0];
  if (Strong)
  {
    v44 = v10;
    v45 = a5;
    v42 = v6[3];
    ObjectType = swift_getObjectType();
    v61 = v55.i64[0];
    v62 = v54;
    v43 = v23;
    v63 = v23;
    v28 = type metadata accessor for TTRICollectionViewDragItemSources(0, v15.i64[0], v26, v27);
    v31 = sub_21D76AAEC(v28, v15.i64[1], v29, v30);
    (*(v53 + 72))(v52, v31, ObjectType);

    if ((*(v19 + 48))(v18, 1, v16) != 1)
    {
      v36 = v48;
      (*(v19 + 32))(v48, v18, v16);
      v37 = v49;
      (*(v19 + 16))(v49, v36, v16);
      v10 = v44;
      swift_storeEnumTagMultiPayload();
      v38 = swift_getObjectType();
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropCoordinator<A>, v50);
      v61 = v55.i64[0];
      v62 = v54;
      v63 = v43;
      v32 = (*(v42 + 72))(v6, WitnessTable, &v61, v37, v38);
      swift_unknownObjectRelease();
      (*(v19 + 8))(v36, v16);
      v35 = v59;
      v34 = v60;
      (*(v59 + 32))(v60, v37, v10);
      v33 = 0;
      a5 = v45;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    (*(v46 + 8))(v18, v47);
    v32 = 0;
    v33 = 1;
    a5 = v45;
    v10 = v44;
  }

  else
  {
    v32 = 0;
    v33 = 1;
  }

  v35 = v59;
  v34 = v60;
LABEL_7:
  (*(v35 + 56))(v34, v33, 1, v10);
  return sub_21D759E04(v34, v32, v58, v57, a5);
}

uint64_t sub_21D75F4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v52 = a4;
  v53 = a2;
  v50 = *v6;
  v51 = a1;
  v65.val[0] = *(v50 + 80);
  v65.val[1] = v65.val[0];
  v55 = v65.val[0];
  v56 = v65.val[0];
  v9 = v64;
  vst2q_f64(v9, v65);
  v10 = type metadata accessor for TTRTreeViewDropDestination(255, v64);
  v11 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v41 - v12;
  v59 = *(v10 - 8);
  MEMORY[0x28223BE20](v13);
  v49 = &v41 - v14;
  v15 = v55;
  v64[0] = vdupq_lane_s64(v55.i64[0], 0);
  v64[1] = vdupq_laneq_s64(v55, 1);
  v16 = type metadata accessor for TTRNormalizedItemLocation(255, v64);
  v47 = sub_21DBFBA8C();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v18 = &v41 - v17;
  v19 = *(v16 - 8);
  MEMORY[0x28223BE20](v20);
  v48 = &v41 - v21;
  v22 = *a3;
  v54 = a3[1];
  v55.i64[0] = v22;
  v23 = a3[2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = v15.i64[1];
  v58 = v15.i64[0];
  if (Strong)
  {
    v44 = v10;
    v45 = a5;
    v42 = v6[3];
    ObjectType = swift_getObjectType();
    v61 = v55.i64[0];
    v62 = v54;
    v43 = v23;
    v63 = v23;
    v28 = type metadata accessor for TTRICollectionViewDragItemSources(0, v15.i64[0], v26, v27);
    v31 = sub_21D76AAEC(v28, v15.i64[1], v29, v30);
    (*(v53 + 64))(v52, v31, ObjectType);

    if ((*(v19 + 48))(v18, 1, v16) != 1)
    {
      v36 = v48;
      (*(v19 + 32))(v48, v18, v16);
      v37 = v49;
      (*(v19 + 16))(v49, v36, v16);
      v10 = v44;
      swift_storeEnumTagMultiPayload();
      v38 = swift_getObjectType();
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropCoordinator<A>, v50);
      v61 = v55.i64[0];
      v62 = v54;
      v63 = v43;
      v32 = (*(v42 + 72))(v6, WitnessTable, &v61, v37, v38);
      swift_unknownObjectRelease();
      (*(v19 + 8))(v36, v16);
      v35 = v59;
      v34 = v60;
      (*(v59 + 32))(v60, v37, v10);
      v33 = 0;
      a5 = v45;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    (*(v46 + 8))(v18, v47);
    v32 = 0;
    v33 = 1;
    a5 = v45;
    v10 = v44;
  }

  else
  {
    v32 = 0;
    v33 = 1;
  }

  v35 = v59;
  v34 = v60;
LABEL_7:
  (*(v35 + 56))(v34, v33, 1, v10);
  return sub_21D759E04(v34, v32, v58, v57, a5);
}

void sub_21D75F9B8(void *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = qword_280D0F018;
  if (*(v6 + qword_280D0F018))
  {
    if (qword_27CE56C80 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE61460);
    sub_21DBF8E0C();
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAE9C();

    if (os_log_type_enabled(v13, v14))
    {
      v26 = a6;
      v15 = swift_slowAlloc();
      v25 = result;
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315394;
      v17 = sub_21D759D64();
      v19 = sub_21D0CDFB4(v17, v18, &v29);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_21D0CDFB4(a2, a3, &v29);
      _os_log_impl(&dword_21D0C9000, v13, v14, "%s: session ended - %s", v15, 0x16u);
      swift_arrayDestroy();
      v20 = v16;
      result = v25;
      MEMORY[0x223D46520](v20, -1, -1);
      v21 = v15;
      a6 = v26;
      MEMORY[0x223D46520](v21, -1, -1);
    }

    *(v6 + v7) = 0;

    sub_21D75FBF8(a4, a5);
    sub_21D75FC70();
    if (a6)
    {

      sub_21D75FDEC(result, v22, v23, v24);
    }
  }
}

uint64_t sub_21D75FBF8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + qword_280D0F038);
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  ObjectType = swift_getObjectType();
  return (*(a2 + 112))(0, 1, ObjectType, a2);
}

void sub_21D75FC70()
{
  v1 = v0;
  v2 = *(v0 + qword_280D0F018);
  if (v2)
  {
    v3 = *v0;
    v4 = *(v0 + qword_280D0F020);

    v5 = [v4 window];
    if (v5)
    {

      swift_beginAccess();
      if (byte_27CE64978 == 1)
      {
        v6 = *(v1 + qword_280D0F040);
        if (v6)
        {
          v7 = *(v1 + qword_280D0F040);
        }

        else
        {
          v7 = sub_21D7612A8(v1);
        }

        v10 = *(v2 + 16);
        v15 = v2;

        v11 = v6;
        v16.val[0] = *(v3 + 80);
        v16.val[1] = v16.val[0];
        v12 = v14;
        vst2q_f64(v12, v16);
        v13 = type metadata accessor for TTRICollectionViewDropContext(0, v14);
        sub_21D9EE598(v4, v10, &v15, v7, v13, &protocol witness table for TTRICollectionViewDropContext<A, B>);

        return;
      }
    }
  }

  v8 = *(v1 + qword_280D0F040);
  if (v8)
  {
    v9 = v8;
    TTRIDebugDropIndicatorView.stopShowing()();
  }
}

void sub_21D75FDEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *v4;
  v6 = v49;
  v7 = *(v49 + 10);
  v8 = type metadata accessor for TTRICollectionViewDragItemUserInfo(255, v7, a3, a4);
  v9 = sub_21DBFBA8C();
  v47 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v54 = v45 - v10;
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = v45 - v12;
  sub_21D0D8CF0(255, qword_27CE61010, 0x277D75470);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = sub_21DBFBA8C();
  v50 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (v45 - v17);
  v66[0] = sub_21D75A7A8(a1);
  v63 = v7;
  v51 = v4;
  v64 = *(v6 + 11);
  v57 = v7;
  v58 = v7;
  v59 = v64;
  v52 = v64;
  v60 = sub_21D76313C;
  v61 = &v62;
  v55 = v9;
  swift_getTupleTypeMetadata2();
  v19 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83970], v19);
  v20 = sub_21DBFA4EC();

  v66[0] = v20;
  v21 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83988], v21);
  v22 = sub_21DBFACFC();
  if (v22)
  {
LABEL_2:

    return;
  }

  v23 = v20;
  v48 = v45;
  v66[0] = v20;
  MEMORY[0x28223BE20](v22);
  v45[1] = 0;
  v24 = v52;
  v45[-2] = v57;
  v45[-1] = v24;
  sub_21DBF8E0C();
  swift_getWitnessTable(MEMORY[0x277D83970], v21);
  v25 = sub_21DBFA49C();
  v52 = v23;

  v26 = v51;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = v26[3];
    ObjectType = swift_getObjectType();
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropCoordinator<A>, v49);
    (*(v27 + 5))(v26, WitnessTable, v25, ObjectType, v27);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v30 = 0;
  v51 = (v50 + 4);
  v50 = (v46 + 32);
  v49 = (v46 + 16);
  v48 = (v46 + 56);
  ++v47;
  v31 = (v46 + 8);
  v32 = v52;
  while (1)
  {
    if (v30 == sub_21DBFA6DC())
    {
      v33 = *(TupleTypeMetadata2 - 8);
      (*(v33 + 56))(v15, 1, 1, TupleTypeMetadata2);
      goto LABEL_12;
    }

    v34 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v34)
    {
      v35 = *(TupleTypeMetadata2 - 8);
      (*(v35 + 16))(v15, v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, TupleTypeMetadata2);
      v36 = __OFADD__(v30++, 1);
      if (v36)
      {
        break;
      }

      goto LABEL_11;
    }

    v44 = sub_21DBFBF7C();
    v35 = *(TupleTypeMetadata2 - 8);
    if (*(v35 + 64) != 8)
    {
      goto LABEL_18;
    }

    v65 = v44;
    (*(v35 + 16))(v15, &v65, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    v36 = __OFADD__(v30++, 1);
    if (v36)
    {
      break;
    }

LABEL_11:
    v33 = v35;
    (*(v35 + 56))(v15, 0, 1, TupleTypeMetadata2);
LABEL_12:
    (*v51)(v18, v15, v56);
    if ((*(v33 + 48))(v18, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_2;
    }

    v37 = *v18;
    v38 = v15;
    v39 = v53;
    (*v50)(v53, v18 + *(TupleTypeMetadata2 + 48), v8);
    v39[*(v8 + 36)] = 0;
    v40 = v54;
    (*v49)(v54, v39, v8);
    (*v48)(v40, 0, 1, v8);
    sub_21D75A5D4(v40, v57, v41, v42);

    (*v47)(v40, v55);
    v43 = v39;
    v15 = v38;
    v32 = v52;
    (*v31)(v43, v8);
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_21D76062C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v24 = a1;
  v7 = type metadata accessor for TTRICollectionViewDragItemUserInfo(255, a3, a3, a4);
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = *(v7 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  (*(v9 + 16))(v11, a2, v8, v14);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
LABEL_8:
    sub_21D0D8CF0(255, qword_27CE61010, 0x277D75470);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a5, 1, 1, TupleTypeMetadata2);
  }

  v17 = *(v12 + 32);
  v17(v16, v11, v7);
  if (v16[*(v7 + 36)] != 1)
  {
    (*(v12 + 8))(v16, v7);
    goto LABEL_8;
  }

  sub_21D0D8CF0(255, qword_27CE61010, 0x277D75470);
  v18 = swift_getTupleTypeMetadata2();
  v19 = *(v18 + 48);
  *a5 = v24;
  v17(&a5[v19], v16, v7);
  (*(*(v18 - 8) + 56))(a5, 0, 1, v18);
  v20 = v24;

  return v20;
}

uint64_t sub_21D760940(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  sub_21D0D8CF0(255, qword_27CE61010, 0x277D75470);
  type metadata accessor for TTRICollectionViewDragItemUserInfo(255, a4, v8, v9);
  sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_21D760A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21D0D8CF0(255, qword_27CE61010, 0x277D75470);
  v8 = type metadata accessor for TTRICollectionViewDragItemUserInfo(255, a2, v6, v7);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = (v16 - v11);
  (*(v13 + 16))(v16 - v11, a1, TupleTypeMetadata2, v10);

  v14 = v12 + *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 16))(a3, &v14[*(v8 + 32)], a2);
  return (*(*(v8 - 8) + 8))(v14, v8);
}

uint64_t sub_21D760B94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31.val[0] = *(*v2 + 80);
  v31.val[1] = v31.val[0];
  v6 = v30;
  vst2q_f64(v6, v31);
  v7 = type metadata accessor for TTRICollectionViewDropProposal(0, v30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61488, &unk_21DC26D50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = *(v3 + qword_280D0F018);
  if (v14)
  {
    v29 = a2;
    v15 = *(*v14 + 120);
    swift_beginAccess();
    v16 = *(v8 + 48);
    v17 = v16(v14 + v15, 1, v7);
    v28 = a1;
    if (v17)
    {
      v18 = type metadata accessor for TTRUnadjustedIndexPath(0);
      (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    }

    else
    {
      (*(v8 + 16))(v10, v14 + v15, v7);

      TTRICollectionViewDropProposal.indexPathForCustomInsertionIndicator.getter(v7, v13);
      (*(v8 + 8))(v10, v7);
    }

    v22 = *(*v14 + 120);
    swift_beginAccess();
    v20 = 1;
    if (v16(v14 + v22, 1, v7))
    {
      v21 = 0;
    }

    else
    {
      (*(v8 + 16))(v10, v14 + v22, v7);
      v21 = TTRICollectionViewDropProposal.sectionIndexForCustomDropHighlight.getter(v7);
      v20 = v23;
      (*(v8 + 8))(v10, v7);
    }

    a1 = v28;
    a2 = v29;
  }

  else
  {
    v19 = type metadata accessor for TTRUnadjustedIndexPath(0);
    v20 = 1;
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v21 = 0;
  }

  if ((sub_21D760F48(v3, v13, a1, a2) & 1) == 0)
  {
    v24 = *(v3 + qword_280D0F038);
    if (v24)
    {
      [v24 removeFromSuperview];
    }
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 112))(v21, v20 & 1, ObjectType, a2);

  return sub_21D0CF7E0(v13, qword_27CE61488, &unk_21DC26D50);
}

uint64_t sub_21D760F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61488, &unk_21DC26D50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30[-1] - v8;
  v10 = type metadata accessor for TTRUnadjustedIndexPath(0);
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + qword_280D0F020);
  result = [v15 window];
  if (result)
  {

    sub_21D0D3954(a2, v9, qword_27CE61488, &unk_21DC26D50);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_21D0CF7E0(v9, qword_27CE61488, &unk_21DC26D50);
      return 0;
    }

    else
    {
      sub_21D763490(v9, v14, type metadata accessor for TTRUnadjustedIndexPath);
      ObjectType = swift_getObjectType();
      (*(a4 + 104))(v30, v14, v15, ObjectType, a4);
      if (v31)
      {
        sub_21D7633B0(v14, type metadata accessor for TTRUnadjustedIndexPath);
        return 0;
      }

      else
      {
        v18 = *v30;
        v19 = *&v30[1];
        v20 = *&v30[2];
        v21 = *&v30[3];
        v22 = *(a1 + qword_280D0F038);
        if (v22)
        {
          v23 = *(a1 + qword_280D0F038);
        }

        else
        {
          v23 = sub_21D761240(a1);
        }

        v24 = v23;
        v25 = v22;
        v26 = [v24 superview];
        v27 = &selRef_addSubview_;
        if (v26)
        {
          v28 = v26;

          if (v28 == v15)
          {
            v27 = &selRef_bringSubviewToFront_;
          }
        }

        [v15 *v27];
        [v24 setFrame_];

        sub_21D7633B0(v14, type metadata accessor for TTRUnadjustedIndexPath);
        return 1;
      }
    }
  }

  return result;
}

id sub_21D761240(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView()) initWithFrame_];
  v3 = *(a1 + qword_280D0F038);
  *(a1 + qword_280D0F038) = v2;
  v4 = v2;

  return v4;
}

id sub_21D7612A8(uint64_t a1)
{
  type metadata accessor for TTRIDebugDropIndicatorView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(a1 + qword_280D0F040);
  *(a1 + qword_280D0F040) = v2;
  v4 = v2;

  return v4;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.deinit()
{
  sub_21D157444(v0 + 16);

  v1 = qword_280D0F010;
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.__deallocating_deinit()
{
  TTRICollectionViewDragAndDropCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRICollectionViewDragAndDropCoordinator.dragAndDropProvider(_:itemsForBeginning:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(v4 + qword_280D0F008) + 32))
  {
    if (qword_27CE56C80 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE61460);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAE9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      v11 = sub_21D759D64();
      v13 = sub_21D0CDFB4(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "%s: disallow starting a drag because there is an in-progress drag", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {

    return sub_21D759EB8(a1, a2, a3, a4, 1);
  }
}

BOOL sub_21D7615E8(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(255, qword_27CE61010, 0x277D75470);
  v6 = type metadata accessor for TTRICollectionViewDragItemUserInfo(255, a2, v4, v5);
  sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return (*(*(v6 - 8) + 48))(a1 + *(TupleTypeMetadata2 + 48), 1, v6) != 1;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.dragAndDropProvider(_:dropSessionDidEnter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *v3;
  TTRICollectionViewDragAndDropActivityTracker.dropSessionDidEnter(_:)(a3);
  v14.val[0] = *(v7 + 80);
  v14.val[1] = v14.val[0];
  v8 = v13;
  vst2q_f64(v8, v14);
  type metadata accessor for TTRICollectionViewDropContext(0, v13);
  *(v3 + qword_280D0F018) = TTRICollectionViewDropContext.__allocating_init(session:)(a3);
  swift_unknownObjectRetain();

  sub_21D760B94(a1, a2);
  sub_21D75FC70();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = v3[3];
    ObjectType = swift_getObjectType();
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropCoordinator<A>, v7);
    (*(v10 + 56))(v3, WitnessTable, a3, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.dragAndDropProvider(_:dropSessionDidEnd:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *v3;
  TTRICollectionViewDragAndDropActivityTracker.dropSessionDidEnd(_:)(a3);
  sub_21D75F9B8(a3, 0xD000000000000016, 0x800000021DC6A240, a1, a2, 1);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = v3[3];
    ObjectType = swift_getObjectType();
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropCoordinator<A>, v7);
    (*(v9 + 88))(v3, WitnessTable, a3, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.dragAndDropProvider(_:performDropWith:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v38 = a3;
  v33 = *v4;
  v40.val[0] = *(v33 + 80);
  v40.val[1] = v40.val[0];
  v7 = v39;
  v34 = v40.val[0];
  v35 = v40.val[0];
  vst2q_f64(v7, v40);
  v8 = type metadata accessor for TTRICollectionViewDropProposal(255, v39);
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = sub_21DBF56BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  v37 = a1;
  sub_21D75FBF8(a1, a2);
  v17 = qword_280D0F010;
  swift_beginAccess();
  (*(v14 + 16))(v16, &v4[v17], v13);
  v18 = *&v4[qword_280D0F018];
  if (v18)
  {
    v19 = *(*v18 + 120);
    swift_beginAccess();
    (*(v10 + 16))(v12, v18 + v19, v9);
  }

  else
  {
    (*(*(v8 - 8) + 56))(v12, 1, 1, v8);
  }

  type metadata accessor for TTRICollectionViewDropCommitCoordinator(0, *&v34.f64[0], *&v34.f64[1], v20);
  v21 = v38;
  v22 = TTRICollectionViewDropCommitCoordinator.__allocating_init(dropCoordinator:dragAndDropCoordinatorID:dragAndDropProvider:lastDropProposal:)(v38, v16, v37, v36, v12);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v4 + 3);
    ObjectType = swift_getObjectType();
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropCoordinator<A>, v33);
    v26 = *(v23 + 80);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v26(v4, WitnessTable, v22, ObjectType, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  v27 = [v21 session];
  sub_21D75FDEC(v27, v28, v29, v30);

  return swift_unknownObjectRelease();
}

void sub_21D761D40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = *v4;
  v53 = *(v54 + 80);
  v7 = type metadata accessor for TTRICollectionViewDragItemUserInfo(0, v53, a3, a4);
  v58 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v55 = &v50 - v8;
  sub_21D0D8CF0(255, qword_27CE61010, 0x277D75470);
  v9 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_21DBFBA8C();
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = (&v50 - v12);
  v14 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v14);
  v16 = (&v50 - v15);
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v17);
  v52 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v22);
  v59 = &v50 - v23;
  TTRICollectionViewDragAndDropActivityTracker.dragSessionWillBegin(_:)(a1, v24, v25, v26, v27, v28, v29, v30, v50);
  v31 = sub_21D75A7A8(a1);
  if (sub_21DBFA6DC() == 1)
  {
    v51 = v7;
    v61[0] = v31;
    v32 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83988], v32);
    sub_21DBFACEC();

    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      (*(v56 + 8))(v13, v57);
    }

    else
    {
      v33 = *(TupleTypeMetadata2 + 48);
      v34 = *(v14 + 48);
      *v16 = *v13;
      v35 = v60;
      v36 = *(v60 + 32);
      v36(v16 + v34, v13 + v33, v9);
      v37 = *v16;
      v38 = v59;
      v36(v59, v16 + *(v14 + 48), v9);
      (*(v35 + 16))(v21, v38, v9);
      v39 = v58;
      v40 = v51;
      if ((*(v58 + 48))(v21, 1, v51) == 1)
      {
        v41 = *(v35 + 8);
        v41(v38, v9);

        v41(v21, v9);
      }

      else
      {
        v42 = v55;
        (*(v39 + 32))(v55, v21, v40);
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v43 = v5[3];
          ObjectType = swift_getObjectType();
          WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropCoordinator<A>, v54);
          if ((*(v43 + 32))(v5, WitnessTable, &v42[*(v40 + 32)], ObjectType, v43))
          {
            v42[*(v40 + 36)] = 1;
            v46 = v52;
            (*(v39 + 16))(v52, v42, v40);
            (*(v39 + 56))(v46, 0, 1, v40);
            sub_21D75A5D4(v46, v53, v47, v48);
            swift_unknownObjectRelease();

            v49 = *(v60 + 8);
            v49(v46, v9);
            (*(v39 + 8))(v42, v40);
            v49(v59, v9);
          }

          else
          {
            swift_unknownObjectRelease();

            (*(v39 + 8))(v42, v40);
            (*(v60 + 8))(v59, v9);
          }
        }

        else
        {

          (*(v39 + 8))(v42, v40);
          (*(v60 + 8))(v38, v9);
        }
      }
    }
  }

  else
  {
  }
}

uint64_t _s15RemindersUICore40TTRICollectionViewDragAndDropCoordinatorC04dragfG8Provider_16itemsForAddingTo2at5pointSaySo10UIDragItemCGAA0cdefG9Providing_px0R2IDRts_XP_So0Q7Session_p10Foundation9IndexPathVSo7CGPointVtF_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *v4;
  sub_21D75A7A8(a3);
  v15 = *(v9 + 80);
  sub_21D0D8CF0(255, qword_27CE61010, 0x277D75470);
  type metadata accessor for TTRICollectionViewDragItemUserInfo(255, v15, v10, v11);
  sub_21DBFBA8C();
  swift_getTupleTypeMetadata2();
  v12 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83970], v12);
  v13 = sub_21DBFA58C();

  if (v13)
  {
    return sub_21D759EB8(a1, a2, a3, a4, 0);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_21D762564(void *a1)
{
  v3 = *v1;
  v4 = [a1 items];
  sub_21D0D8CF0(0, qword_27CE61010, 0x277D75470);
  v5 = sub_21DBFA5EC();

  if (v5 >> 62)
  {
    v6 = sub_21DBFBD7C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  if (*(*(v1 + qword_280D0F008) + 32))
  {
    sub_21D75AE18(a1, &v27);
    v9 = type metadata accessor for TTRICollectionViewDragItemSources(0, *(v3 + 80), v7, v8);
    v13 = sub_21D76B498(v9, v10, v11, v12);

    swift_unknownObjectRelease();
    if (!v13)
    {
      if (qword_27CE56C80 != -1)
      {
        swift_once();
      }

      v18 = sub_21DBF84BC();
      __swift_project_value_buffer(v18, qword_27CE61460);
      v19 = sub_21DBF84AC();
      v20 = sub_21DBFAE9C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v27 = v22;
        *v21 = 136315138;
        v23 = sub_21D759D64();
        v25 = sub_21D0CDFB4(v23, v24, &v27);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_21D0C9000, v19, v20, "%s: reject external drop session because there is an in-progress local drag", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x223D46520](v22, -1, -1);
        MEMORY[0x223D46520](v21, -1, -1);
      }

      goto LABEL_13;
    }
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  v14 = v1[3];
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropCoordinator<A>, v3);
  v17 = (*(v14 + 48))(v1, WitnessTable, a1, ObjectType, v14);
  swift_unknownObjectRelease();
  return v17 & 1;
}

void *sub_21D76284C(void (*a1)(char *, uint64_t), uint64_t a2, char *a3)
{
  v76 = a1;
  v77 = a2;
  v79.val[0] = *(*v3 + 80);
  v79.val[1] = v79.val[0];
  v5 = v78;
  vst2q_f64(v5, v79);
  v6 = type metadata accessor for TTRICollectionViewDropProposal(0, v78);
  v75 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v71 = &v64 - v7;
  v72 = sub_21DBFBA8C();
  v8 = *(v72 - 1);
  MEMORY[0x28223BE20](v72);
  v73 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE61450, &unk_21DC26B48);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61448, &qword_21DC26B40);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v64 - v20;
  v22 = *(v3 + qword_280D0F018);
  if (v22)
  {
    v23 = *v22;
    v67 = v6;
    v24 = *(v23 + 128);
    v25 = *(v22 + v24);
    v74 = v8;
    v26 = qword_27CE8EAB8;
    swift_beginAccess();

    sub_21D7631AC(a3, v25 + v26);
    swift_endAccess();

    v27 = *(v22 + v24);
    v28 = type metadata accessor for TTRICollectionViewHitTestResult(0);
    (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
    v29 = qword_27CE8EAC0;
    swift_beginAccess();

    sub_21D0F02F4(v21, v27 + v29, &qword_27CE61448, &qword_21DC26B40);
    swift_endAccess();

    v68 = v24;
    v30 = *(v22 + v24);
    *(v30 + qword_27CE8EAC8) = 5;
    v31 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
    (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
    v32 = qword_27CE8EAD0;
    swift_beginAccess();

    sub_21D0F02F4(v18, v30 + v32, &unk_27CE61450, &unk_21DC26B48);
    swift_endAccess();

    v70 = v3;
    sub_21D75B654(v22, v76, v77, a3, v15);
    v33 = *(*v22 + 120);
    swift_beginAccess();
    v34 = v22 + v33;
    v35 = v74;
    v36 = v72;
    (*(v74 + 24))(v34, v15, v72);
    swift_endAccess();
    v37 = *(v35 + 16);
    v69 = v15;
    v66 = v37;
    v37(v12, v15, v36);
    v38 = v75;
    v39 = v67;
    v65 = *(v75 + 48);
    if (v65(v12, 1, v67) == 1)
    {
      (*(v35 + 8))(v12, v36);
      v41 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];
    }

    else
    {
      v41 = TTRICollectionViewDropProposal.dropProposalForCollectionView.getter(v39, v40);
      (*(v38 + 8))(v12, v39);
    }

    v51 = *(v22 + v68);
    v52 = *(v51 + qword_27CE8EAD8);
    *(v51 + qword_27CE8EAD8) = v41;

    v72 = v41;

    v54 = v76;
    v53 = v77;
    sub_21D760B94(v76, v77);
    sub_21D75FC70();
    v55 = v73;
    v56 = v69;
    v66(v73, v69, v36);
    v57 = v36;
    if (v65(v55, 1, v39) == 1)
    {
      v58 = *(v74 + 8);
      v58(v56, v57);

      v58(v55, v57);
    }

    else
    {
      v59 = v75;
      v60 = v55;
      v61 = v71;
      v62 = (*(v75 + 32))(v71, v60, v39);
      sub_21D35A1C8(v54, v53, v61, v62, v63);

      (*(v59 + 8))(v61, v39);
      (*(v74 + 8))(v56, v36);
    }

    return v72;
  }

  else
  {
    if (qword_27CE56C80 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF84BC();
    __swift_project_value_buffer(v42, qword_27CE61460);
    v43 = sub_21DBF84AC();
    v44 = sub_21DBFAE9C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v78[0] = v46;
      *v45 = 136315138;
      v47 = sub_21D759D64();
      v49 = sub_21D0CDFB4(v47, v48, v78);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_21D0C9000, v43, v44, "%s: missing activeDropContext", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x223D46520](v46, -1, -1);
      MEMORY[0x223D46520](v45, -1, -1);
    }

    return [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];
  }
}
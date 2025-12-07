uint64_t sub_24A72DE28(void *a1, uint64_t a2, void (*a3)(uint64_t *, void, void, void, uint64_t), uint64_t a4)
{
  v8 = qword_281515DC8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPItemActionsController: performing assign safe location action", v12, 2u);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24A8327A0;
  v14 = a1[47];
  *(v13 + 32) = a1[46];
  *(v13 + 40) = v14;
  memcpy(v17, a1 + 2, sizeof(v17));
  type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
  v15 = swift_allocObject();
  memcpy((v15 + 16), a1 + 2, 0x160uLL);
  *(v15 + 368) = v13;

  sub_24A6CC988(v17, __dst);
  sub_24A72D738(v15, a2, a3, a4);

  swift_setDeallocating();
  memcpy(__dst, (v15 + 16), sizeof(__dst));

  sub_24A6CC294(__dst);

  swift_deallocClassInstance();
}

uint64_t sub_24A72E02C(uint64_t a1, void *a2, void (*a3)(uint64_t *, void, void, void, uint64_t), uint64_t a4)
{
  v71 = a3;
  v69 = a1;
  v6 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v67 - v7;
  v82 = type metadata accessor for FMIPDevice(0);
  v9 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v11 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FMIPItem(0);
  v74 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  v18 = qword_281515DC8;
  v72 = a4;

  if (v18 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v77 = v11;
    v78 = v9;
    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);
    v20 = sub_24A82CD94();
    v21 = sub_24A82D504();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24A675000, v20, v21, "FMIPItemActionsController: performing assign safe location to all supported beacons action", v22, 2u);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    v70 = a2;
    v23 = a2[4];
    swift_beginAccess();
    v24 = *(v23 + 280);
    v25 = *(v24 + 16);
    v75 = v8;
    if (v25)
    {
      v83 = v24;
      v84 = v23;
      v26 = v24 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v27 = *(v74 + 72);

      v28 = MEMORY[0x277D84F90];
      do
      {
        sub_24A69F0CC(v26, v17, type metadata accessor for FMIPItem);
        if ((*(v17 + 304) & 0x10) != 0)
        {
          v29 = *(v17 + 352);
          v30 = *(v17 + 360);

          sub_24A69F264(v17, type metadata accessor for FMIPItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_24A780414(0, *(v28 + 2) + 1, 1, v28);
          }

          v32 = *(v28 + 2);
          v31 = *(v28 + 3);
          v33 = v28;
          if (v32 >= v31 >> 1)
          {
            v33 = sub_24A780414((v31 > 1), v32 + 1, 1, v28);
          }

          *(v33 + 2) = v32 + 1;
          v28 = v33;
          v34 = &v33[16 * v32];
          *(v34 + 4) = v29;
          *(v34 + 5) = v30;
        }

        else
        {
          sub_24A69F264(v17, type metadata accessor for FMIPItem);
        }

        v26 += v27;
        --v25;
      }

      while (v25);
      v68 = v28;

      v8 = v75;
      v23 = v84;
    }

    else
    {
      v68 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    v35 = *(v23 + 80);
    v17 = *(v35 + 16);
    v11 = MEMORY[0x277D84F90];
    a2 = v77;
    v9 = v78;
    if (!v17)
    {
      break;
    }

    v83 = v35 + ((*(v78 + 80) + 32) & ~*(v78 + 80));

    v36 = 0;
    v73 = xmmword_24A8327A0;
    v79 = v17;
    v80 = v35;
    while (v36 < *(v35 + 16))
    {
      v37 = *(v9 + 72);
      v84 = v36;
      sub_24A69F0CC(v83 + v37 * v36, a2, type metadata accessor for FMIPDevice);
      if ((*(a2 + 242) & 4) != 0)
      {
        sub_24A67E964(a2 + *(v82 + 128), v8, &unk_27EF5E0B0, &qword_24A8338B0);
        v38 = type metadata accessor for FMIPItemGroup(0);
        if ((*(*(v38 - 8) + 48))(v8, 1, v38) != 1)
        {
          v81 = v11;
          v42 = *(v8 + 40);

          sub_24A69F264(v8, type metadata accessor for FMIPItemGroup);
          v43 = *(v42 + 16);
          if (v43)
          {
            v86[0] = MEMORY[0x277D84F90];
            sub_24A6FC900(0, v43, 0);
            v41 = v86[0];
            v44 = *(v74 + 80);
            v76 = v42;
            v45 = v42 + ((v44 + 32) & ~v44);
            v46 = *(v74 + 72);
            do
            {
              sub_24A69F0CC(v45, v15, type metadata accessor for FMIPItem);
              v48 = *(v15 + 44);
              v47 = *(v15 + 45);

              sub_24A69F264(v15, type metadata accessor for FMIPItem);
              v86[0] = v41;
              v50 = v41[2];
              v49 = v41[3];
              if (v50 >= v49 >> 1)
              {
                sub_24A6FC900((v49 > 1), v50 + 1, 1);
                v41 = v86[0];
              }

              v41[2] = v50 + 1;
              v51 = &v41[2 * v50];
              v51[4] = v48;
              v51[5] = v47;
              v45 += v46;
              --v43;
            }

            while (v43);
            a2 = v77;
            sub_24A69F264(v77, type metadata accessor for FMIPDevice);

            v8 = v75;
          }

          else
          {

            a2 = v77;
            sub_24A69F264(v77, type metadata accessor for FMIPDevice);
            v41 = MEMORY[0x277D84F90];
          }

          v9 = v78;
          v11 = v81;
          goto LABEL_33;
        }

        sub_24A67F378(v8, &unk_27EF5E0B0, &qword_24A8338B0);
        v39 = a2[3];
        if (v39)
        {
          v40 = a2[2];
          sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
          v41 = swift_allocObject();
          *(v41 + 1) = v73;
          v41[4] = v40;
          v41[5] = v39;

          sub_24A69F264(a2, type metadata accessor for FMIPDevice);
LABEL_33:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_24A780520(0, v11[2] + 1, 1, v11);
          }

          v53 = v11[2];
          v52 = v11[3];
          if (v53 >= v52 >> 1)
          {
            v11 = sub_24A780520((v52 > 1), v53 + 1, 1, v11);
          }

          v11[2] = v53 + 1;
          v11[v53 + 4] = v41;
          v17 = v79;
          v35 = v80;
          goto LABEL_19;
        }
      }

      sub_24A69F264(a2, type metadata accessor for FMIPDevice);
LABEL_19:
      v36 = v84 + 1;
      if (v84 + 1 == v17)
      {

        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

LABEL_39:
  v9 = v11[2];
  if (v9)
  {
    v8 = 0;
    v54 = v11;
    v11 += 4;
    v55 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v8 >= v54[2])
      {
        goto LABEL_60;
      }

      a2 = v11[v8];
      v15 = a2[2];
      v17 = *(v55 + 2);
      v56 = &v15[v17];
      if (__OFADD__(v17, v15))
      {
        goto LABEL_61;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v56 <= *(v55 + 3) >> 1)
      {
        if (!a2[2])
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v17 <= v56)
        {
          v58 = &v15[v17];
        }

        else
        {
          v58 = v17;
        }

        v55 = sub_24A780414(isUniquelyReferenced_nonNull_native, v58, 1, v55);
        if (!a2[2])
        {
LABEL_41:

          if (v15)
          {
            goto LABEL_62;
          }

          goto LABEL_42;
        }
      }

      if ((*(v55 + 3) >> 1) - *(v55 + 2) < v15)
      {
        goto LABEL_63;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v59 = *(v55 + 2);
        v60 = __OFADD__(v59, v15);
        v61 = &v15[v59];
        if (v60)
        {
          goto LABEL_64;
        }

        *(v55 + 2) = v61;
      }

LABEL_42:
      if (v9 == ++v8)
      {
        goto LABEL_58;
      }
    }
  }

  v55 = MEMORY[0x277D84F90];
LABEL_58:

  v86[0] = v68;
  sub_24A77EA14(v55);
  v62 = v86[0];
  v63 = v69;
  memcpy(v85, (v69 + 16), sizeof(v85));
  type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
  v64 = swift_allocObject();
  memcpy((v64 + 16), (v63 + 16), 0x160uLL);
  *(v64 + 368) = v62;
  v65 = v72;

  sub_24A6CC988(v85, v86);
  sub_24A72D738(v64, v70, v71, v65);

  swift_setDeallocating();
  memcpy(v86, (v64 + 16), sizeof(v86));

  sub_24A6CC294(v86);

  swift_deallocClassInstance();
}

uint64_t sub_24A72E988(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, void, void, void *, uint64_t), void *a4)
{
  v55 = a2;
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_24A82CAA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v52 - v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v58 = v15;
  v16 = qword_281515DC8;
  v56 = a4;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24A675000, v18, v19, "FMIPItemActionsController: performing edit safe location action", v20, 2u);
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  sub_24A82CA44();
  v21 = v10;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v22 = a3;
    sub_24A67F378(v9, &qword_27EF5D020, &qword_24A830E40);
    v23 = sub_24A82CD94();
    v24 = sub_24A82D504();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24A675000, v23, v24, "FMIPItemActionsController: cannot edit safe location for an item with an invalid safe location identifier", v25, 2u);
      MEMORY[0x24C21E1D0](v25, -1, -1);
    }

    sub_24A72A0CC();
    v26 = swift_allocError();
    *v27 = 0;
    v28 = v26;
    v29 = sub_24A82CD94();
    v30 = sub_24A82D504();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315394;
      aBlock[6] = v26;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v33 = sub_24A82D624();
      v35 = sub_24A68761C(v33, v34, aBlock);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2048;
      *(v31 + 14) = 500;
      _os_log_impl(&dword_24A675000, v29, v30, "FMIPManager: performed safe location action with error?: %s status?: %ld", v31, 0x16u);
      sub_24A6876E8(v32);
      MEMORY[0x24C21E1D0](v32, -1, -1);
      MEMORY[0x24C21E1D0](v31, -1, -1);
    }

    LOBYTE(aBlock[0]) = 4;
    v22(aBlock, 0, 0, v26, 2);
  }

  else
  {
    v36 = *(v11 + 32);
    v37 = v57;
    v36(v57, v9, v10);
    v53 = a1;
    v38 = v54;
    v39 = v55;
    v56 = *(v55 + 24);
    (*(v11 + 16))(v54, v37, v21);
    v40 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v41 = (v12 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = v21;
    v45 = v43;
    v46 = v38;
    v47 = v44;
    (v36)(v43 + v40, v46);
    v48 = (v45 + v41);
    v49 = v58;
    *v48 = sub_24A72FA38;
    v48[1] = v49;
    *(v45 + v42) = v53;
    *(v45 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
    aBlock[4] = sub_24A72F84C;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A72032C;
    aBlock[3] = &unk_285DC52A8;
    v50 = _Block_copy(aBlock);

    [v56 safeLocationsForSeparationMonitoring_];
    _Block_release(v50);
    (*(v11 + 8))(v57, v47);
  }
}

uint64_t sub_24A72EF54(uint64_t a1, void *a2, void (*a3)(uint64_t *, void, void, void *, uint64_t), void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  type metadata accessor for FMIPAddSafeLocationItemAction();

  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    swift_retain_n();

    sub_24A726084(v9, sub_24A72F820, v7);
LABEL_19:

    goto LABEL_20;
  }

  type metadata accessor for FMIPAddMultipleSafeLocationsItemAction();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    swift_retain_n();

    sub_24A72626C(v11, sub_24A72F820, v7);
    goto LABEL_19;
  }

  type metadata accessor for FMIPRemoveSafeLocationItemAction();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_retain_n();

    sub_24A72751C(v13, sub_24A72F820, v7);
    goto LABEL_19;
  }

  type metadata accessor for FMIPRemoveMultipleSafeLocationItemsAction();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    swift_retain_n();

    sub_24A7276C0(v15, sub_24A72F820, v7);
    goto LABEL_19;
  }

  type metadata accessor for FMIPAssignSafeLocationItemAction();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    swift_retain_n();

    sub_24A72DE28(v17, a2, a3, a4);
    goto LABEL_19;
  }

  type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    swift_retain_n();

    sub_24A72D738(v19, a2, a3, a4);
    goto LABEL_19;
  }

  type metadata accessor for FMIPAssignSafeLocationToAllSupportedBeaconsAction();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    swift_retain_n();

    sub_24A72E02C(v21, a2, a3, a4);
    goto LABEL_19;
  }

  type metadata accessor for FMIPEditSafeLocationItemAction();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    swift_retain_n();

    sub_24A72E988(v23, a2, a3, a4);
    goto LABEL_19;
  }

  type metadata accessor for FMIPAddSafeLocationToAllSupportedBeaconsAction();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = v24;
    swift_retain_n();

    sub_24A725744(v25, sub_24A72F820, v7);
    goto LABEL_19;
  }

  v27 = qword_281515DC8;
  swift_retain_n();
  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_24A82CDC4();
  sub_24A6797D0(v28, qword_281518F88);
  v29 = sub_24A82CD94();
  v30 = sub_24A82D504();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24A675000, v29, v30, "FMIPItemActionsController: cannot map safe location action to request", v31, 2u);
    MEMORY[0x24C21E1D0](v31, -1, -1);
  }

  sub_24A72A0CC();
  v32 = swift_allocError();
  *v33 = 6;
  v34 = v32;
  v35 = sub_24A82CD94();
  v36 = sub_24A82D504();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v37 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v39 = sub_24A82D624();
    v41 = sub_24A68761C(v39, v40, &v42);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2048;
    *(v37 + 14) = -1;
    _os_log_impl(&dword_24A675000, v35, v36, "FMIPManager: performed safe location action with error?: %s status?: %ld", v37, 0x16u);
    sub_24A6876E8(v38);
    MEMORY[0x24C21E1D0](v38, -1, -1);
    MEMORY[0x24C21E1D0](v37, -1, -1);
  }

  LOBYTE(v42) = 0;
  a3(&v42, 0, 0, v32, 2);

LABEL_20:
}

unint64_t sub_24A72F4B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5D4B0, &qword_24A832860);
    v3 = sub_24A82D974();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A67E964(v4, &v13, &qword_27EF5DE80, &qword_24A836A90);
      v5 = v13;
      v6 = v14;
      result = sub_24A6A2D48(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24A6A50DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A72F650()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A72F6C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A72F700()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A72F7B0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_24A72F84C(uint64_t a1)
{
  v3 = *(sub_24A82CAA4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24A7284B0(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_24A72F948(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (a1)
  {
    v6 = 0;
    v4 = &v6;
  }

  else
  {
    v7 = 2;
    v4 = &v7;
  }

  return v3(v4, a1);
}

uint64_t sub_24A72FB64()
{
  v0 = sub_24A67CBF4(&unk_285DBE278);
  result = swift_arrayDestroy();
  qword_27EF5DE88 = v0;
  return result;
}

uint64_t FMIPURLUniversalLinkHostSharedItemList.getter()
{
  if (qword_27EF5CBB0 != -1)
  {
    swift_once();
  }
}

uint64_t FMIPURLInfo.originalURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A82C8B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FMIPURLInfo.action.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPURLInfo(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for FMIPURLInfo(uint64_t a1)
{
  result = qword_27EF5DE98;
  if (!qword_27EF5DE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMIPURLInfo.action.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FMIPURLInfo(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t FMIPURLInfo.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPURLInfo(0) + 24));

  return v1;
}

uint64_t FMIPURLInfo.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FMIPURLInfo(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FMIPURLInfo.partIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPURLInfo(0) + 28));

  return v1;
}

uint64_t FMIPURLInfo.partIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FMIPURLInfo(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FMIPURLInfo.returnAppName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPURLInfo(0) + 36));

  return v1;
}

uint64_t FMIPURLInfo.returnAppName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FMIPURLInfo(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FMIPURLInfo.manufacturer.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPURLInfo(0) + 40));

  return v1;
}

uint64_t FMIPURLInfo.manufacturer.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FMIPURLInfo(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_24A730298(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A6BBA94(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t FMIPURLInfo.isPartnerURL.setter(char a1)
{
  result = type metadata accessor for FMIPURLInfo(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

FMIPCore::FMIPURLAction_optional __swiftcall FMIPURLAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82DC24();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMIPURLAction.rawValue.getter()
{
  result = 0x65646F4D74736F6CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6E756F5379616C70;
      break;
    case 2:
      result = 0x6E776F6E6B6E75;
      break;
    case 3:
      result = 0x7463656C6573;
      break;
    case 4:
      result = 0x736E6F69746361;
      break;
    case 5:
      result = 0x446C6C41776F6873;
      break;
    case 6:
      result = 0x74497463656C6573;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6574746142776F6CLL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0x796669746F6ELL;
      break;
    case 0xB:
      result = 0x496C6C41776F6873;
      break;
    case 0xC:
      result = 0x65766F6D6572;
      break;
    case 0xD:
      result = 0x52556E7275746572;
      break;
    case 0xE:
      result = 0x7075746573;
      break;
    case 0xF:
      result = 0x6974617261706573;
      break;
    case 0x10:
      result = 0x61636F4C65666173;
      break;
    case 0x11:
      result = 0x6572616853646461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A73065C()
{
  v0 = FMIPURLAction.rawValue.getter();
  v2 = v1;
  if (v0 == FMIPURLAction.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24A82DC04();
  }

  return v5 & 1;
}

unint64_t sub_24A7306FC()
{
  result = qword_27EF5DE90;
  if (!qword_27EF5DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DE90);
  }

  return result;
}

uint64_t sub_24A730750()
{
  sub_24A82DCC4();
  FMIPURLAction.rawValue.getter();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7307B8(uint64_t a1)
{
  FMIPURLAction.rawValue.getter();
  sub_24A82D094();
}

uint64_t sub_24A73081C(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPURLAction.rawValue.getter();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A73088C@<X0>(unint64_t *a1@<X8>)
{
  result = FMIPURLAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_24A7308DC(uint64_t a1)
{
  sub_24A82C8B4();
  if (v1 <= 0x3F)
  {
    sub_24A730A14(319, &qword_27EF5DEA8, &type metadata for FMIPURLAction);
    if (v2 <= 0x3F)
    {
      sub_24A730A14(319, &qword_27EF5D8F0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_24A730A60(319, &qword_281514678, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          sub_24A730A60(319, &qword_27EF5D9C8, MEMORY[0x277CC95F0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24A730A14(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24A82D634();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A730A60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A82D634();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24A730AC4(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4)
{
  v134 = a4;
  v141 = a2;
  v142 = a3;
  v5 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  MEMORY[0x28223BE20](v5 - 8);
  v136 = v131 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5DEB8, &qword_24A836C38);
  MEMORY[0x28223BE20](v7 - 8);
  v138 = v131 - v8;
  v144 = sub_24A82C6C4();
  v140 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v146 = v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82C8B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPURLInfo(0);
  v143 = swift_allocBox();
  v16 = v15;
  v17 = *(v11 + 16);
  v17(v15, a1, v10);
  (*(v11 + 56))(v16 + v14[8], 1, 1, v10);
  v18 = v14[11];
  v19 = sub_24A82CAA4();
  (*(*(v19 - 8) + 56))(v16 + v18, 1, 1, v19);
  v135 = v14[5];
  *(v16 + v135) = 18;
  v20 = (v16 + v14[6]);
  *v20 = 0;
  v20[1] = 0;
  v133 = v20;
  v21 = (v16 + v14[7]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v16 + v14[9]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v16 + v14[10]);
  *v23 = 0;
  v23[1] = 0;
  v24 = v14[12];
  v137 = v16;
  *(v16 + v24) = 0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v25 = sub_24A82CDC4();
  v26 = sub_24A6797D0(v25, qword_281518F88);
  v139 = a1;
  v17(v13, a1, v10);
  v27 = sub_24A82CD94();
  v28 = sub_24A82D504();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v132 = v14;
    v30 = v29;
    v31 = swift_slowAlloc();
    v145[0] = v31;
    *v30 = 136315138;
    v32 = sub_24A82C834();
    v131[1] = v26;
    v34 = v33;
    (*(v11 + 8))(v13, v10);
    v35 = sub_24A68761C(v32, v34, v145);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_24A675000, v27, v28, "FMIPURLHandler: handle url %s", v30, 0xCu);
    sub_24A6876E8(v31);
    MEMORY[0x24C21E1D0](v31, -1, -1);
    v36 = v30;
    v14 = v132;
    MEMORY[0x24C21E1D0](v36, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v37 = v138;
  sub_24A82C674();
  v38 = v140;
  v39 = v144;
  v40 = (*(v140 + 48))(v37, 1, v144);
  v41 = v146;
  if (v40 == 1)
  {
    sub_24A67F378(v37, &qword_27EF5DEB8, &qword_24A836C38);
    v42 = sub_24A82CD94();
    v43 = sub_24A82D4E4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_24A675000, v42, v43, "FMIPURLHandler: invalid URL", v44, 2u);
      MEMORY[0x24C21E1D0](v44, -1, -1);
    }

    v45 = v136;
    sub_24A732300(v137, v136);
    (*(*(v14 - 1) + 56))(v45, 0, 1, v14);
    sub_24A732364();
    v46 = swift_allocError();
    *v47 = 2;
    v141(v45, v46);

    sub_24A67F378(v45, &qword_27EF5DEB0, &qword_24A836C30);
  }

  (*(v38 + 32))(v146, v37, v39);
  v48 = sub_24A82C6B4();
  if (!v49)
  {
    goto LABEL_78;
  }

  if (v48 == 0x3170696D66 && v49 == 0xE500000000000000)
  {
    goto LABEL_25;
  }

  v50 = sub_24A82DC04();

  if ((v50 & 1) == 0)
  {
LABEL_78:
    v51 = sub_24A82C6B4();
    if (!v52)
    {
      goto LABEL_18;
    }

    if (v51 == 0x796D646E6966 && v52 == 0xE600000000000000)
    {
      goto LABEL_25;
    }

    v53 = sub_24A82DC04();

    if ((v53 & 1) == 0)
    {
LABEL_18:
      v54 = sub_24A82C6B4();
      if (!v55)
      {
        goto LABEL_22;
      }

      if (v54 == 0x7370747468 && v55 == 0xE500000000000000)
      {
        goto LABEL_25;
      }

      v56 = sub_24A82DC04();

      if ((v56 & 1) == 0)
      {
LABEL_22:
        v57 = sub_24A82C6B4();
        if (v58)
        {
          if (v57 == 1886680168 && v58 == 0xE400000000000000)
          {
LABEL_25:

            goto LABEL_26;
          }

          v89 = sub_24A82DC04();

          if (v89)
          {
            goto LABEL_26;
          }
        }

        v90 = sub_24A82CD94();
        v91 = sub_24A82D4E4();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_24A675000, v90, v91, "FMIPURLHandler: scheme not supported", v92, 2u);
          MEMORY[0x24C21E1D0](v92, -1, -1);
        }

        v93 = v136;
        sub_24A732300(v137, v136);
        (*(*(v14 - 1) + 56))(v93, 0, 1, v14);
        sub_24A732364();
        v94 = swift_allocError();
        *v95 = 3;
        v141(v93, v94);

        sub_24A67F378(v93, &qword_27EF5DEB0, &qword_24A836C30);
        goto LABEL_59;
      }
    }
  }

LABEL_26:
  v59 = sub_24A82C694();
  if (!v60)
  {
    goto LABEL_30;
  }

  if (v59 == 0x73656369766564 && v60 == 0xE700000000000000)
  {
    goto LABEL_33;
  }

  v61 = sub_24A82DC04();

  if ((v61 & 1) == 0)
  {
LABEL_30:
    v62 = sub_24A82C694();
    if (v63)
    {
      if (v62 == 1769105779 && v63 == 0xE400000000000000)
      {
LABEL_33:

        goto LABEL_34;
      }

      v74 = sub_24A82DC04();

      if (v74)
      {
        goto LABEL_34;
      }
    }

    v75 = sub_24A82C694();
    if (v76)
    {
      if (v75 == 0x736D657469 && v76 == 0xE500000000000000)
      {

LABEL_43:
        v78 = sub_24A82CD94();
        v79 = sub_24A82D504();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&dword_24A675000, v78, v79, "FMIPURLHandler: processURL generic items action", v80, 2u);
          MEMORY[0x24C21E1D0](v80, -1, -1);
        }

        v81 = v137;
        *(v137 + v135) = 11;
        v82 = sub_24A82C694();
        v84 = v83;
        goto LABEL_46;
      }

      v77 = sub_24A82DC04();

      if (v77)
      {
        goto LABEL_43;
      }
    }

    v87 = sub_24A82C694();
    if (v88)
    {
      if (v87 == 0xD000000000000010 && v88 == 0x800000024A8469B0)
      {

LABEL_56:
        v97 = sub_24A82CD94();
        v98 = sub_24A82D504();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&dword_24A675000, v97, v98, "FMIPURLHandler: process universal link action", v99, 2u);
          MEMORY[0x24C21E1D0](v99, -1, -1);
        }

        sub_24A735B14(v41, v141, v142);
LABEL_59:
        (*(v38 + 8))(v41, v39);
      }

      v96 = sub_24A82DC04();

      if (v96)
      {
        goto LABEL_56;
      }
    }

    v101 = sub_24A82C514();
    v145[3] = v101;
    v145[4] = sub_24A6789D4(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
    v102 = sub_24A697E3C(v145);
    (*(*(v101 - 8) + 104))(v102, *MEMORY[0x277D089F0], v101);
    LOBYTE(v101) = sub_24A82C4D4();
    sub_24A6876E8(v145);
    if (v101)
    {
      v103 = sub_24A82C694();
      if (v104)
      {
        if (qword_27EF5CBB0 != -1)
        {
          v129 = v103;
          v130 = v104;
          swift_once();
          v103 = v129;
          v104 = v130;
        }

        v105 = sub_24A67A190(v103, v104, qword_27EF5DE88);

        if (v105)
        {
          v106 = sub_24A82CD94();
          v107 = sub_24A82D504();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            *v108 = 0;
            _os_log_impl(&dword_24A675000, v106, v107, "FMIPURLHandler: process universal link action", v108, 2u);
            MEMORY[0x24C21E1D0](v108, -1, -1);
          }

          sub_24A7323B8(v41, v141, v142);
          goto LABEL_59;
        }
      }
    }

    v109 = sub_24A82C694();
    if (v110)
    {
      if (v109 == 0x72756769666E6F63 && v110 == 0xE900000000000065)
      {

LABEL_74:
        *(v137 + v135) = 6;
        v112 = sub_24A82C6A4();
        v114 = sub_24A7F8AA4(1uLL, v112, v113);
        v116 = v115;
        v118 = v117;
        v120 = v119;

        v121 = MEMORY[0x24C21C960](v114, v116, v118, v120);
        v123 = v122;

        v124 = v133;
        *v133 = v121;
        v124[1] = v123;

        v82 = sub_24A82C694();
        v84 = v125;
        v81 = v137;
LABEL_46:
        v85 = v136;
        sub_24A732300(v81, v136);
        v86 = *(*(v14 - 1) + 56);
        v86(v85, 0, 1, v14);
        _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v82, v84, v85);

        sub_24A67F378(v85, &qword_27EF5DEB0, &qword_24A836C30);
        sub_24A732300(v81, v85);
        v86(v85, 0, 1, v14);
        v141(v85, 0);
        sub_24A67F378(v85, &qword_27EF5DEB0, &qword_24A836C30);
        (*(v38 + 8))(v146, v39);
      }

      v111 = sub_24A82DC04();

      if (v111)
      {
        goto LABEL_74;
      }
    }

    v126 = v142;

    v127 = v143;

    v128 = v134;

    sub_24A7353B8(v41, v128, v141, v126, v127, v128);

    (*(v38 + 8))(v41, v39);
  }

LABEL_34:
  v64 = v14;
  v65 = sub_24A82CD94();
  v66 = sub_24A82D504();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_24A675000, v65, v66, "FMIPURLHandler: processURL generic devices action", v67, 2u);
    MEMORY[0x24C21E1D0](v67, -1, -1);
  }

  v68 = v137;
  *(v137 + v135) = 5;
  v69 = sub_24A82C694();
  v71 = v70;
  v72 = v136;
  sub_24A732300(v68, v136);
  v73 = *(*(v64 - 1) + 56);
  v73(v72, 0, 1, v64);
  _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v69, v71, v72);

  sub_24A67F378(v72, &qword_27EF5DEB0, &qword_24A836C30);
  sub_24A732300(v68, v72);
  v73(v72, 0, 1, v64);
  v141(v72, 0);
  sub_24A67F378(v72, &qword_27EF5DEB0, &qword_24A836C30);
  (*(v38 + 8))(v146, v144);
}

uint64_t sub_24A731AD8(void *a1, void *a2, void (*a3)(char *, void *), uint64_t a4)
{
  v66 = a4;
  v70 = a3;
  v6 = sub_24A6BBA94(&qword_27EF5DEB8, &qword_24A836C38);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v61 - v10;
  v12 = sub_24A82C6C4();
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v15 - 8);
  v67 = &v61 - v16;
  v64 = sub_24A82C8B4();
  v69 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v68 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  v19 = sub_24A6797D0(v18, qword_281518F88);

  v65 = v19;
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v63 = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v62 = a2;
    v72 = a1;
    v25 = v24;
    *v23 = 136315138;
    v73 = v72;
    v74 = v24;
    sub_24A6BBA94(&qword_27EF5DED8, &qword_24A836C48);
    v26 = sub_24A82D624();
    v28 = sub_24A68761C(v26, v27, &v74);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_24A675000, v20, v21, "FMIPURLHandler: getURLInfo response received: %s", v23, 0xCu);
    sub_24A6876E8(v25);
    v29 = v25;
    a1 = v72;
    a2 = v62;
    MEMORY[0x24C21E1D0](v29, -1, -1);
    v30 = v23;
    v9 = v63;
    MEMORY[0x24C21E1D0](v30, -1, -1);
  }

  v31 = v68;
  v32 = v69;
  v33 = v67;
  if (a2 || !a1)
  {
    v40 = a2;
    v41 = sub_24A82CD94();
    v42 = sub_24A82D504();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = a2;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v73 = v43;
      v74 = v45;
      *v44 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v46 = sub_24A82D624();
      v48 = v12;
      v49 = sub_24A68761C(v46, v47, &v74);

      *(v44 + 4) = v49;
      v12 = v48;
      _os_log_impl(&dword_24A675000, v41, v42, "FMIPURLHandler: error received for getURLInfo request: %s", v44, 0xCu);
      sub_24A6876E8(v45);
      MEMORY[0x24C21E1D0](v45, -1, -1);
      v50 = v44;
      a2 = v43;
      MEMORY[0x24C21E1D0](v50, -1, -1);
    }

    (*(v71 + 56))(v9, 1, 1, v12);
    v70(v9, a2);
    return sub_24A67F378(v9, &qword_27EF5DEB8, &qword_24A836C38);
  }

  sub_24A67E964(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPGetURLInfoResponse_url, v67, &unk_27EF5CCB8, &qword_24A82FDB0);
  v34 = v64;
  v35 = (*(v32 + 48))(v33, 1, v64);
  v36 = v71;
  if (v35 == 1)
  {
    v72 = a1;

    v37 = &unk_27EF5CCB8;
    v38 = &qword_24A82FDB0;
    v39 = v33;
LABEL_14:
    sub_24A67F378(v39, v37, v38);
    v51 = sub_24A82CD94();
    v52 = sub_24A82D504();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v73 = 0;
      v74 = v54;
      *v53 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v55 = sub_24A82D624();
      v57 = sub_24A68761C(v55, v56, &v74);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_24A675000, v51, v52, "FMIPURLHandler: error received for getURLInfo request: %s", v53, 0xCu);
      sub_24A6876E8(v54);
      MEMORY[0x24C21E1D0](v54, -1, -1);
      v36 = v71;
      MEMORY[0x24C21E1D0](v53, -1, -1);
    }

    (*(v36 + 56))(v9, 1, 1, v12);
    sub_24A732364();
    v58 = swift_allocError();
    *v59 = 2;
    v70(v9, v58);

    return sub_24A67F378(v9, &qword_27EF5DEB8, &qword_24A836C38);
  }

  (*(v32 + 32))(v31, v33, v34);

  sub_24A82C674();
  if ((*(v36 + 48))(v11, 1, v12) == 1)
  {
    v72 = a1;
    (*(v32 + 8))(v31, v34);
    v37 = &qword_27EF5DEB8;
    v38 = &qword_24A836C38;
    v39 = v11;
    goto LABEL_14;
  }

  (*(v36 + 32))(v14, v11, v12);
  (*(v36 + 16))(v9, v14, v12);
  (*(v36 + 56))(v9, 0, 1, v12);
  v70(v9, 0);

  sub_24A67F378(v9, &qword_27EF5DEB8, &qword_24A836C38);
  (*(v36 + 8))(v14, v12);
  return (*(v32 + 8))(v31, v34);
}

uint64_t sub_24A7322C8()
{
  sub_24A6876E8((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_24A732300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPURLInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A732364()
{
  result = qword_27EF5DEC0;
  if (!qword_27EF5DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DEC0);
  }

  return result;
}

uint64_t sub_24A7323B8(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v136 - v7;
  v9 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v9 - 8);
  v141 = &v136 - v10;
  v11 = sub_24A82CAA4();
  v146 = *(v11 - 8);
  v147 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v145 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v142 = &v136 - v14;
  v15 = sub_24A82C644();
  v16 = *(v15 - 1);
  v161 = v15;
  v162 = v16;
  MEMORY[0x28223BE20](v15);
  v163 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A6BBA94(&qword_27EF5DEC8, &qword_24A836C40);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v144 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v143 = &v136 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v148 = &v136 - v24;
  MEMORY[0x28223BE20](v23);
  v154 = &v136 - v25;
  v160 = type metadata accessor for FMIPURLInfo(0);
  v150 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v155 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v136 - v28;
  v30 = sub_24A82C8B4();
  v157 = *(v30 - 8);
  v158 = v30;
  MEMORY[0x28223BE20](v30);
  v149 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24A82C6C4();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v36 = sub_24A82CDC4();
    v37 = sub_24A6797D0(v36, qword_281518F88);
    v38 = *(v33 + 16);
    v156 = a1;
    v38(v35, a1, v32);
    v159 = v37;
    v39 = sub_24A82CD94();
    v40 = sub_24A82D504();
    v41 = os_log_type_enabled(v39, v40);
    v152 = a2;
    v153 = v8;
    v151 = a3;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v164[0] = v43;
      *v42 = 136315138;
      sub_24A6789D4(&qword_27EF5DED0, MEMORY[0x277CC8958], MEMORY[0x277CC8968]);
      v44 = sub_24A82DB84();
      v46 = v45;
      (*(v33 + 8))(v35, v32);
      v47 = sub_24A68761C(v44, v46, v164);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_24A675000, v39, v40, "FMIPURLHandler: processUniversalURL: %s", v42, 0xCu);
      sub_24A6876E8(v43);
      MEMORY[0x24C21E1D0](v43, -1, -1);
      a2 = v152;
      v8 = v153;
      MEMORY[0x24C21E1D0](v42, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v35, v32);
    }

    sub_24A82C684();
    v49 = v157;
    v48 = v158;
    if ((*(v157 + 48))(v29, 1, v158) == 1)
    {
      break;
    }

    v56 = v149;
    (*(v49 + 32))(v149, v29, v48);
    v57 = v155;
    (*(v49 + 16))(v155, v56, v48);
    v58 = v160;
    (*(v49 + 56))(v57 + *(v160 + 32), 1, 1, v48);
    v59 = *(v146 + 56);
    v136 = v58[11];
    v138 = v146 + 56;
    v137 = v59;
    v59(v57 + v136, 1, 1, v147);
    v139 = v58[5];
    *(v57 + v139) = 18;
    v60 = (v57 + v58[6]);
    *v60 = 0;
    v60[1] = 0;
    v61 = (v57 + v58[7]);
    *v61 = 0;
    v61[1] = 0;
    v62 = (v57 + v58[9]);
    *v62 = 0;
    v62[1] = 0;
    v63 = (v57 + v58[10]);
    *v63 = 0;
    v63[1] = 0;
    v140 = v58[12];
    *(v57 + v140) = 0;
    if (sub_24A82C6A4() == 0x6D6574692FLL && v64 == 0xE500000000000000)
    {
      a2 = v154;
      v8 = v161;
      a3 = v148;
LABEL_12:

      goto LABEL_14;
    }

    v65 = sub_24A82DC04();

    a2 = v154;
    v8 = v161;
    a3 = v148;
    if ((v65 & 1) == 0)
    {
      if (sub_24A82C6A4() == 0x72656E747261702FLL && v71 == 0xE800000000000000)
      {
        goto LABEL_12;
      }

      v72 = sub_24A82DC04();

      if ((v72 & 1) == 0)
      {
        v73 = sub_24A82CD94();
        v74 = sub_24A82D4E4();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_24A675000, v73, v74, "FMIPURLHandler: processUniversalURL: invalid action", v75, 2u);
          MEMORY[0x24C21E1D0](v75, -1, -1);
        }

        v76 = v155;
        v77 = v153;
        sub_24A732300(v155, v153);
        (*(v150 + 56))(v77, 0, 1, v160);
        sub_24A732364();
        v78 = swift_allocError();
        *v79 = 0;
        (v152)(v77, v78);

        v80 = &qword_27EF5DEB0;
        v81 = &qword_24A836C30;
        v82 = v77;
LABEL_50:
        sub_24A67F378(v82, v80, v81);
        (*(v49 + 8))(v149, v48);
        v113 = v76;
        return sub_24A7378B8(v113);
      }
    }

LABEL_14:
    v66 = sub_24A82C654();
    if (!v66)
    {
      (*(v162 + 56))(a2, 1, 1, v8);
      goto LABEL_33;
    }

    v32 = v66;
    v33 = *(v66 + 16);
    a1 = v162;
    if (!v33)
    {
LABEL_22:

      a2 = v154;
      (*(a1 + 56))(v154, 1, 1, v8);
LABEL_32:
      v49 = v157;
      v48 = v158;
LABEL_33:
      sub_24A67E964(a2, a3, &qword_27EF5DEC8, &qword_24A836C40);
      v84 = sub_24A82CD94();
      v85 = sub_24A82D504();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v164[0] = v87;
        *v86 = 136315138;
        v88 = v143;
        sub_24A67E964(a3, v143, &qword_27EF5DEC8, &qword_24A836C40);
        v89 = v162;
        if ((*(v162 + 48))(v88, 1, v8) == 1)
        {
          sub_24A67F378(v88, &qword_27EF5DEC8, &qword_24A836C40);
          goto LABEL_39;
        }

        v163 = sub_24A82C634();
        v91 = v90;
        (*(v89 + 8))(v88, v8);
        if (v91)
        {
          sub_24A67F378(v148, &qword_27EF5DEC8, &qword_24A836C40);
          v92 = v163;
        }

        else
        {
LABEL_39:
          sub_24A67F378(v148, &qword_27EF5DEC8, &qword_24A836C40);

          v91 = 0xE300000000000000;
          v92 = 7104878;
        }

        v93 = sub_24A68761C(v92, v91, v164);

        *(v86 + 4) = v93;
        _os_log_impl(&dword_24A675000, v84, v85, "FMIPURLHandler: processUniversalURLForSharedItem: parameter sharing id: %s", v86, 0xCu);
        sub_24A6876E8(v87);
        MEMORY[0x24C21E1D0](v87, -1, -1);
        MEMORY[0x24C21E1D0](v86, -1, -1);

        a2 = v154;
        v8 = v161;
      }

      else
      {

        sub_24A67F378(a3, &qword_27EF5DEC8, &qword_24A836C40);
      }

      v94 = v162;
      v95 = v144;
      sub_24A67E964(a2, v144, &qword_27EF5DEC8, &qword_24A836C40);
      v96 = (*(v94 + 48))(v95, 1, v8);
      v97 = v145;
      if (v96 == 1)
      {
        v98 = &qword_27EF5DEC8;
        v99 = &qword_24A836C40;
        v100 = v95;
        goto LABEL_46;
      }

      v101 = v94;
      sub_24A82C634();
      v103 = v102;
      (*(v101 + 8))(v95, v8);
      if (v103)
      {
        v104 = v141;
        sub_24A82CA44();

        v106 = v146;
        v105 = v147;
        if ((*(v146 + 48))(v104, 1, v147) != 1)
        {
          v114 = v104;
          v115 = v142;
          (*(v106 + 32))(v142, v114, v105);
          v162 = *(v106 + 16);
          (v162)(v97, v115, v105);
          v116 = sub_24A82CD94();
          v117 = sub_24A82D504();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = v97;
            v119 = swift_slowAlloc();
            v159 = v119;
            v161 = swift_slowAlloc();
            v164[0] = v161;
            *v119 = 136315138;
            sub_24A6789D4(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v120 = v118;
            v121 = sub_24A82DB84();
            v123 = v122;
            v163 = *(v106 + 8);
            (v163)(v120, v105);
            v124 = sub_24A68761C(v121, v123, v164);

            v125 = v159;
            *(v159 + 1) = v124;
            _os_log_impl(&dword_24A675000, v116, v117, "FMIPURLHandler: processUniversalURLForSharedItem: returning item with id %s", v125, 0xCu);
            v126 = v161;
            sub_24A6876E8(v161);
            a2 = v154;
            MEMORY[0x24C21E1D0](v126, -1, -1);
            MEMORY[0x24C21E1D0](v125, -1, -1);
          }

          else
          {

            v163 = *(v106 + 8);
            (v163)(v97, v105);
          }

          v127 = v137;
          v128 = v136;
          v129 = v155;
          sub_24A67F378(v155 + v136, &qword_27EF5D020, &qword_24A830E40);
          (v162)(v129 + v128, v142, v105);
          v127(v129 + v128, 0, 1, v105);
          *(v129 + v139) = 17;
          if (sub_24A82C6A4() == 0x72656E747261702FLL && v130 == 0xE800000000000000)
          {

            v131 = 1;
          }

          else
          {
            v131 = sub_24A82DC04();
          }

          v133 = v152;
          v132 = v153;
          v134 = v131 & 1;
          v135 = v155;
          *(v155 + v140) = v134;
          sub_24A732300(v135, v132);
          (*(v150 + 56))(v132, 0, 1, v160);
          (v133)(v132, 0);
          sub_24A67F378(v132, &qword_27EF5DEB0, &qword_24A836C30);
          (v163)(v142, v147);
          sub_24A67F378(a2, &qword_27EF5DEC8, &qword_24A836C40);
          (*(v49 + 8))(v149, v48);
          v113 = v135;
          return sub_24A7378B8(v113);
        }

        v98 = &qword_27EF5D020;
        v99 = &qword_24A830E40;
        v100 = v104;
LABEL_46:
        sub_24A67F378(v100, v98, v99);
      }

      v107 = sub_24A82CD94();
      v108 = sub_24A82D4E4();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_24A675000, v107, v108, "FMIPURLHandler: processUniversalURLForSharedItem: sharing id not found", v109, 2u);
        MEMORY[0x24C21E1D0](v109, -1, -1);
      }

      v76 = v155;
      v110 = v153;
      sub_24A732300(v155, v153);
      (*(v150 + 56))(v110, 0, 1, v160);
      sub_24A732364();
      v111 = swift_allocError();
      *v112 = 4;
      (v152)(v110, v111);

      sub_24A67F378(v110, &qword_27EF5DEB0, &qword_24A836C30);
      v80 = &qword_27EF5DEC8;
      v81 = &qword_24A836C40;
      v82 = a2;
      goto LABEL_50;
    }

    v29 = 0;
    v35 = (v162 + 16);
    v67 = (v162 + 8);
    while (v29 < *(v32 + 16))
    {
      (*(a1 + 16))(v163, v32 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v29, v8);
      sub_24A82C624();
      a2 = sub_24A82D034();
      v69 = v68;

      if (a2 == 105 && v69 == 0xE100000000000000)
      {

LABEL_31:

        v83 = v162;
        a2 = v154;
        v8 = v161;
        (*(v162 + 32))(v154, v163, v161);
        (*(v83 + 56))(a2, 0, 1, v8);
        goto LABEL_32;
      }

      v70 = sub_24A82DC04();

      if (v70)
      {
        goto LABEL_31;
      }

      ++v29;
      v8 = v161;
      (*v67)(v163, v161);
      a1 = v162;
      if (v33 == v29)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_61:
    swift_once();
  }

  sub_24A67F378(v29, &unk_27EF5CCB8, &qword_24A82FDB0);
  v50 = sub_24A82CD94();
  v51 = sub_24A82D4E4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_24A675000, v50, v51, "FMIPURLHandler: processUniversalURL: Invalid Universal URL", v52, 2u);
    MEMORY[0x24C21E1D0](v52, -1, -1);
  }

  (*(v150 + 56))(v8, 1, 1, v160);
  sub_24A732364();
  v53 = swift_allocError();
  *v54 = 2;
  (a2)(v8, v53);

  return sub_24A67F378(v8, &qword_27EF5DEB0, &qword_24A836C30);
}

uint64_t sub_24A73371C(unint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v201 = a3;
  v202 = a2;
  v4 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  MEMORY[0x28223BE20](v4 - 8);
  v203 = &v188 - v5;
  v216 = sub_24A82C644();
  v6 = *(v216 - 8);
  v7 = MEMORY[0x28223BE20](v216);
  v213 = &v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v214 = (&v188 - v10);
  MEMORY[0x28223BE20](v9);
  v215 = &v188 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5DEC8, &qword_24A836C40);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v193 = &v188 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v191 = &v188 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v190 = &v188 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v194 = &v188 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v195 = &v188 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v197 = &v188 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v198 = &v188 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v207 = &v188 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v204 = &v188 - v30;
  MEMORY[0x28223BE20](v29);
  v210 = &v188 - v31;
  v211 = type metadata accessor for FMIPURLInfo(0);
  v200 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v206 = &v188 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v188 - v34;
  v36 = sub_24A82C8B4();
  v209 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v212 = &v188 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24A82C6C4();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    goto LABEL_101;
  }

  while (1)
  {
    v42 = sub_24A82CDC4();
    v43 = sub_24A6797D0(v42, qword_281518F88);
    (*(v39 + 16))(v41, a1, v38);
    v199 = v43;
    v44 = sub_24A82CD94();
    v45 = sub_24A82D504();
    v46 = os_log_type_enabled(v44, v45);
    v217 = v6;
    v205 = a1;
    v208 = v36;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v218 = v48;
      *v47 = 136315138;
      v49 = MEMORY[0x24C21BF70]();
      v51 = v50;
      (*(v39 + 8))(v41, v38);
      v52 = sub_24A68761C(v49, v51, &v218);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_24A675000, v44, v45, "FMIPURLHandler: processing urlComponents %s", v47, 0xCu);
      sub_24A6876E8(v48);
      v53 = v48;
      v6 = v217;
      MEMORY[0x24C21E1D0](v53, -1, -1);
      v54 = v47;
      v36 = v208;
      MEMORY[0x24C21E1D0](v54, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v41, v38);
    }

    sub_24A82C684();
    v55 = v209;
    result = (*(v209 + 48))(v35, 1, v36);
    v57 = v206;
    if (result == 1)
    {
      break;
    }

    v58 = v212;
    (*(v55 + 32))(v212, v35, v36);
    (*(v55 + 16))(v57, v58, v36);
    v59 = v211;
    (*(v55 + 56))(v57 + *(v211 + 32), 1, 1, v36);
    v60 = v59[11];
    v61 = sub_24A82CAA4();
    (*(*(v61 - 8) + 56))(v57 + v60, 1, 1, v61);
    v62 = v59[5];
    *(v57 + v62) = 18;
    v63 = (v57 + v59[6]);
    *v63 = 0;
    v63[1] = 0;
    v196 = v63;
    v64 = (v57 + v59[7]);
    *v64 = 0;
    v64[1] = 0;
    v192 = v64;
    v65 = (v57 + v59[9]);
    *v65 = 0;
    v65[1] = 0;
    v66 = (v57 + v59[10]);
    *v66 = 0;
    v66[1] = 0;
    *(v57 + v59[12]) = 0;
    v67 = sub_24A82C694();
    if (v68)
    {
      if (v67 == 0x73656369766564 && v68 == 0xE700000000000000)
      {

LABEL_11:
        v70 = sub_24A82CD94();
        v71 = sub_24A82D504();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = v62;
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_24A675000, v70, v71, "FMIPURLHandler: processURL generic devices action", v73, 2u);
          v74 = v73;
          v62 = v72;
          MEMORY[0x24C21E1D0](v74, -1, -1);
        }

        *(v57 + v62) = 5;
        v75 = v203;
        sub_24A732300(v57, v203);
        (*(v200 + 56))(v75, 0, 1, v211);
        v202(v75, 0);
        v76 = v75;
LABEL_14:
        sub_24A67F378(v76, &qword_27EF5DEB0, &qword_24A836C30);
        (*(v55 + 8))(v212, v208);
        return sub_24A7378B8(v57);
      }

      v69 = sub_24A82DC04();

      if (v69)
      {
        goto LABEL_11;
      }
    }

    v36 = 0x6563697665642FLL;
    if (sub_24A82C6A4() == 0x6563697665642FLL && v77 == 0xE700000000000000)
    {
LABEL_17:

      goto LABEL_19;
    }

    v36 = sub_24A82DC04();

    if ((v36 & 1) == 0)
    {
      v36 = 0x6D6574692FLL;
      if (sub_24A82C6A4() == 0x6D6574692FLL && v83 == 0xE500000000000000)
      {
        goto LABEL_17;
      }

      v36 = sub_24A82DC04();

      if ((v36 & 1) == 0)
      {
        v36 = 0x72656E747261702FLL;
        if (sub_24A82C6A4() == 0x72656E747261702FLL && v84 == 0xE800000000000000)
        {
          goto LABEL_17;
        }

        v36 = sub_24A82DC04();

        if ((v36 & 1) == 0)
        {
          v85 = sub_24A82CD94();
          v86 = sub_24A82D4E4();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&dword_24A675000, v85, v86, "FMIPURLHandler: processURL invalid action", v87, 2u);
            MEMORY[0x24C21E1D0](v87, -1, -1);
          }

          v88 = v203;
          sub_24A732300(v57, v203);
          (*(v200 + 56))(v88, 0, 1, v211);
          sub_24A732364();
          v89 = swift_allocError();
          *v90 = 0;
          v202(v88, v89);

          v76 = v88;
          goto LABEL_14;
        }
      }
    }

LABEL_19:
    v189 = v62;
    v78 = sub_24A82C654();
    if (v78)
    {
      v38 = v78;
      v39 = *(v78 + 16);
      v36 = v216;
      if (v39)
      {
        a1 = 0;
        v6 = v217 + 16;
        v79 = (v217 + 8);
        v35 = 25705;
        v41 = 0xE200000000000000;
        while (a1 < *(v38 + 16))
        {
          (*(v217 + 16))(v215, v38 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * a1, v36);
          if (sub_24A82C624() == 25705 && v80 == 0xE200000000000000)
          {

LABEL_39:

            v91 = v216;
            v6 = v217;
            v36 = v210;
            (*(v217 + 32))(v210, v215, v216);
            v82 = *(v6 + 56);
            (v82)(v36, 0, 1, v91);
            goto LABEL_40;
          }

          v81 = sub_24A82DC04();

          if (v81)
          {
            goto LABEL_39;
          }

          ++a1;
          v36 = v216;
          (*v79)(v215, v216);
          if (v39 == a1)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_99;
      }

LABEL_27:

      v6 = v217;
      v82 = *(v217 + 56);
      (v82)(v210, 1, 1, v36);
    }

    else
    {
      v82 = *(v6 + 56);
      (v82)(v210, 1, 1, v216);
    }

LABEL_40:
    v92 = sub_24A82C654();
    v215 = v82;
    if (v92)
    {
      v39 = v92;
      v6 = *(v92 + 16);
      v93 = v216;
      if (v6)
      {
        v41 = 0;
        v38 = 0x644974726170;
        v35 = v217 + 16;
        v94 = (v217 + 8);
        a1 = 0xE600000000000000;
        while (v41 < *(v39 + 16))
        {
          (*(v217 + 16))(v214, v39 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v41, v93);
          v95 = sub_24A82C624();
          v36 = v96;
          if (v95 == 0x644974726170 && v96 == 0xE600000000000000)
          {

LABEL_51:

            v93 = v216;
            v6 = v217;
            (*(v217 + 32))(v204, v214, v216);
            v98 = 0;
            goto LABEL_52;
          }

          v97 = sub_24A82DC04();

          if (v97)
          {
            goto LABEL_51;
          }

          ++v41;
          v93 = v216;
          (*v94)(v214, v216);
          if (v6 == v41)
          {
            goto LABEL_48;
          }
        }

LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

LABEL_48:

      v98 = 1;
      v6 = v217;
LABEL_52:
      v82 = v215;
    }

    else
    {
      v98 = 1;
      v93 = v216;
    }

    v38 = v6 + 56;
    v36 = 1;
    (v82)(v204, v98, 1, v93);
    v99 = sub_24A82C654();
    if (!v99)
    {
      v100 = v216;
      v104 = v198;
      goto LABEL_66;
    }

    v39 = v99;
    v6 = *(v99 + 16);
    v100 = v216;
    if (!v6)
    {
LABEL_61:

      v36 = 1;
      v57 = v206;
      v6 = v217;
LABEL_65:
      v104 = v198;
      v82 = v215;
LABEL_66:
      (v82)(v207, v36, 1, v100);
      sub_24A67E964(v210, v104, &qword_27EF5DEC8, &qword_24A836C40);
      v105 = *(v6 + 48);
      if (v105(v104, 1, v100) == 1)
      {
        sub_24A67F378(v104, &qword_27EF5DEC8, &qword_24A836C40);
        goto LABEL_71;
      }

      v106 = sub_24A82C634();
      v107 = v216;
      v108 = v6;
      v109 = v106;
      v110 = v104;
      v112 = v111;
      v113 = *(v108 + 8);
      v217 = v108 + 8;
      v113(v110, v216);
      if (v112)
      {
        v114 = v197;
        sub_24A67E964(v207, v197, &qword_27EF5DEC8, &qword_24A836C40);
        if (v105(v114, 1, v107) == 1)
        {
          sub_24A67F378(v114, &qword_27EF5DEC8, &qword_24A836C40);
          goto LABEL_79;
        }

        v122 = sub_24A82C634();
        v123 = v109;
        v125 = v124;
        v113(v114, v107);
        v126 = v125;
        v109 = v123;
        if (v126)
        {
          v127 = v122;
          FMIPURLAction.init(rawValue:)(*(&v126 - 1));
          LODWORD(v128) = v218;
          if (v218 != 18)
          {
            sub_24A67E964(v210, v195, &qword_27EF5DEC8, &qword_24A836C40);
            v149 = v194;
            sub_24A67E964(v207, v194, &qword_27EF5DEC8, &qword_24A836C40);
            v150 = sub_24A82CD94();
            v151 = sub_24A82D4E4();
            if (os_log_type_enabled(v150, v151))
            {
              LODWORD(v206) = v128;
              LODWORD(v213) = v151;
              v214 = v150;
              v152 = swift_slowAlloc();
              v205 = swift_slowAlloc();
              v220 = v205;
              v215 = v152;
              *v152 = 136315394;
              v153 = v190;
              sub_24A67E964(v195, v190, &qword_27EF5DEC8, &qword_24A836C40);
              v154 = v216;
              if (v105(v153, 1, v216) == 1)
              {
                sub_24A67F378(v153, &qword_27EF5DEC8, &qword_24A836C40);
                v155 = 0;
                v156 = 0;
              }

              else
              {
                v158 = v154;
                v159 = v153;
                v155 = sub_24A82C634();
                v156 = v160;
                v161 = v159;
                v154 = v158;
                v113(v161, v158);
              }

              v218 = v155;
              v219 = v156;
              v162 = sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
              v163 = sub_24A82D024();
              v165 = v164;
              sub_24A67F378(v195, &qword_27EF5DEC8, &qword_24A836C40);
              v166 = sub_24A68761C(v163, v165, &v220);

              v167 = v215;
              *(v215 + 4) = v166;
              *(v167 + 6) = 2080;
              v168 = v191;
              sub_24A67E964(v194, v191, &qword_27EF5DEC8, &qword_24A836C40);
              if (v105(v168, 1, v154) == 1)
              {
                sub_24A67F378(v168, &qword_27EF5DEC8, &qword_24A836C40);
                v169 = 0;
                v170 = 0;
              }

              else
              {
                v199 = v162;
                v171 = v154;
                v172 = v168;
                v169 = sub_24A82C634();
                v170 = v173;
                v113(v172, v171);
              }

              v157 = v193;
              v218 = v169;
              v219 = v170;
              v174 = sub_24A82D024();
              v176 = v175;
              sub_24A67F378(v194, &qword_27EF5DEC8, &qword_24A836C40);
              v177 = sub_24A68761C(v174, v176, &v220);

              v178 = v215;
              *(v215 + 14) = v177;
              v179 = v214;
              _os_log_impl(&dword_24A675000, v214, v213, "FMIPURLHandler: processURL default action device: %s operation: %s", v178, 0x16u);
              v128 = v205;
              swift_arrayDestroy();
              MEMORY[0x24C21E1D0](v128, -1, -1);
              MEMORY[0x24C21E1D0](v178, -1, -1);

              LOBYTE(v128) = v206;
            }

            else
            {

              sub_24A67F378(v149, &qword_27EF5DEC8, &qword_24A836C40);
              sub_24A67F378(v195, &qword_27EF5DEC8, &qword_24A836C40);
              v157 = v193;
            }

            v180 = v196;
            *v196 = v109;
            v180[1] = v112;
            sub_24A67E964(v204, v157, &qword_27EF5DEC8, &qword_24A836C40);
            v181 = v216;
            if (v105(v157, 1, v216) == 1)
            {
              sub_24A67F378(v157, &qword_27EF5DEC8, &qword_24A836C40);
              v182 = 0;
              v183 = 0;
            }

            else
            {
              v182 = sub_24A82C634();
              v183 = v184;
              v113(v157, v181);
            }

            v185 = v209;
            v186 = v192;
            *v192 = v182;
            v186[1] = v183;
            *(v57 + v189) = v128;
            v187 = v203;
            sub_24A732300(v57, v203);
            (*(v200 + 56))(v187, 0, 1, v211);
            v202(v187, 0);
            sub_24A67F378(v187, &qword_27EF5DEB0, &qword_24A836C30);
            sub_24A67F378(v207, &qword_27EF5DEC8, &qword_24A836C40);
            sub_24A67F378(v204, &qword_27EF5DEC8, &qword_24A836C40);
            sub_24A67F378(v210, &qword_27EF5DEC8, &qword_24A836C40);
            (*(v185 + 8))(v212, v208);
            return sub_24A7378B8(v57);
          }

          v129 = sub_24A82CD94();
          v130 = sub_24A82D4E4();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            *v131 = 0;
            _os_log_impl(&dword_24A675000, v129, v130, "FMIPURLHandler: processURL invalid action", v131, 2u);
            MEMORY[0x24C21E1D0](v131, -1, -1);
          }

          v132 = sub_24A82C694();
          v134 = v133;
          v135 = v203;
          sub_24A732300(v57, v203);
          v136 = *(v200 + 56);
          v137 = v211;
          v136(v135, 0, 1, v211);
          _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v132, v134, v135);

          sub_24A67F378(v135, &qword_27EF5DEB0, &qword_24A836C30);
          sub_24A732300(v57, v135);
          v136(v135, 0, 1, v137);
          sub_24A732364();
          v138 = swift_allocError();
          *v139 = 0;
          v202(v135, v138);
        }

        else
        {
LABEL_79:
          v140 = sub_24A82CD94();
          v141 = sub_24A82D504();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            *v142 = 0;
            _os_log_impl(&dword_24A675000, v140, v141, "FMIPURLHandler: processURL no further operation", v142, 2u);
            MEMORY[0x24C21E1D0](v142, -1, -1);
          }

          v143 = v196;
          *v196 = v109;
          v143[1] = v112;
          *(v57 + v189) = 3;
          v144 = sub_24A82C694();
          v146 = v145;
          v135 = v203;
          sub_24A732300(v57, v203);
          v147 = *(v200 + 56);
          v148 = v211;
          v147(v135, 0, 1, v211);
          _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v144, v146, v135);

          sub_24A67F378(v135, &qword_27EF5DEB0, &qword_24A836C30);
          sub_24A732300(v57, v135);
          v147(v135, 0, 1, v148);
          v202(v135, 0);
        }

        v121 = v135;
      }

      else
      {
LABEL_71:
        v115 = sub_24A82CD94();
        v116 = sub_24A82D4E4();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_24A675000, v115, v116, "FMIPURLHandler: processURL invalid device identifier", v117, 2u);
          MEMORY[0x24C21E1D0](v117, -1, -1);
        }

        v118 = v203;
        sub_24A732300(v57, v203);
        (*(v200 + 56))(v118, 0, 1, v211);
        sub_24A732364();
        v119 = swift_allocError();
        *v120 = 1;
        v202(v118, v119);

        v121 = v118;
      }

      sub_24A67F378(v121, &qword_27EF5DEB0, &qword_24A836C30);
      sub_24A67F378(v207, &qword_27EF5DEC8, &qword_24A836C40);
      sub_24A67F378(v204, &qword_27EF5DEC8, &qword_24A836C40);
      sub_24A67F378(v210, &qword_27EF5DEC8, &qword_24A836C40);
      (*(v209 + 8))(v212, v208);
      return sub_24A7378B8(v57);
    }

    v41 = 0;
    v35 = v217 + 8;
    a1 = 0xE200000000000000;
    while (v41 < *(v39 + 16))
    {
      (*(v217 + 16))(v213, v39 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v41, v100);
      v101 = sub_24A82C624();
      v36 = v102;
      if (v101 == 28783 && v102 == 0xE200000000000000)
      {

LABEL_64:

        v100 = v216;
        v6 = v217;
        (*(v217 + 32))(v207, v213, v216);
        v36 = 0;
        v57 = v206;
        goto LABEL_65;
      }

      v103 = sub_24A82DC04();

      if (v103)
      {
        goto LABEL_64;
      }

      ++v41;
      v100 = v216;
      (*v35)(v213, v216);
      if (v6 == v41)
      {
        goto LABEL_61;
      }
    }

LABEL_100:
    __break(1u);
LABEL_101:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_24A735108(uint64_t a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v8 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5DEB8, &qword_24A836C38);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_24A82C6C4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPURLInfo(0);
  v19 = swift_projectBox();
  if (!a2)
  {
    sub_24A67E964(v21, v13, &qword_27EF5DEB8, &qword_24A836C38);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v17, v13, v14);
      sub_24A73371C(v17, a3, a4);
      return (*(v15 + 8))(v17, v14);
    }

    sub_24A67F378(v13, &qword_27EF5DEB8, &qword_24A836C38);
  }

  swift_beginAccess();
  sub_24A732300(v19, v10);
  (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  a3(v10, a2);
  return sub_24A67F378(v10, &qword_27EF5DEB0, &qword_24A836C30);
}

uint64_t sub_24A7353B8(uint64_t a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a2;
  v11 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v53 - v15;
  v16 = sub_24A82C6C4();
  v55 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v53 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A6BBA94(&qword_27EF5DEB8, &qword_24A836C38);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v24 = swift_allocObject();
  v56 = a3;
  v24[2] = a3;
  v24[3] = a4;
  v25 = a1;
  v24[4] = a5;
  v24[5] = a6;
  v58 = a4;

  v57 = a5;

  v26 = sub_24A82C694();
  if (v27)
  {
    if (v26 == 0x737361707962 && v27 == 0xE600000000000000)
    {

LABEL_6:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v29 = sub_24A82CDC4();
      sub_24A6797D0(v29, qword_281518F88);
      v30 = sub_24A82CD94();
      v31 = sub_24A82D504();
      v32 = os_log_type_enabled(v30, v31);
      v33 = v55;
      if (v32)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_24A675000, v30, v31, "FMIPURLHandler: fetch bypassed", v34, 2u);
        MEMORY[0x24C21E1D0](v34, -1, -1);
      }

      (*(v33 + 16))(v23, v25, v16);
      (*(v33 + 56))(v23, 0, 1, v16);
      v35 = type metadata accessor for FMIPURLInfo(0);
      v36 = swift_projectBox();
      sub_24A67E964(v23, v21, &qword_27EF5DEB8, &qword_24A836C38);
      if ((*(v33 + 48))(v21, 1, v16) == 1)
      {
        sub_24A67F378(v21, &qword_27EF5DEB8, &qword_24A836C38);
        swift_beginAccess();
        v37 = v54;
        sub_24A732300(v36, v54);
        (*(*(v35 - 8) + 56))(v37, 0, 1, v35);
        v56(v37, 0);
        sub_24A67F378(v37, &qword_27EF5DEB0, &qword_24A836C30);
      }

      else
      {
        v51 = v53;
        (*(v33 + 32))(v53, v21, v16);
        sub_24A73371C(v51, v56, v58);
        (*(v33 + 8))(v51, v16);
      }

      sub_24A67F378(v23, &qword_27EF5DEB8, &qword_24A836C38);
    }

    v28 = sub_24A82DC04();

    if (v28)
    {
      goto LABEL_6;
    }
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v38 = sub_24A82CDC4();
  sub_24A6797D0(v38, qword_281518F88);
  v39 = sub_24A82CD94();
  v40 = sub_24A82D504();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_24A675000, v39, v40, "FMIPURLHandler: Fetching url infos...", v41, 2u);
    MEMORY[0x24C21E1D0](v41, -1, -1);
  }

  sub_24A82C684();
  v42 = sub_24A82C8B4();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v13, 1, v42) != 1)
  {
    type metadata accessor for FMIPGetURLInfoRequest(0);
    v44 = swift_allocObject();
    (*(v43 + 16))(v44 + qword_27EF78C70, v13, v42);
    v45 = sub_24A6A183C(0x6E496C7255746567, 0xEA00000000006F66, 0, 0, 1);
    (*(v43 + 8))(v13, v42);
    v46 = v59[5];
    v47 = v59[6];
    sub_24A67DF6C(v59 + 2, v46);
    v48 = swift_allocObject();
    *(v48 + 16) = sub_24A737914;
    *(v48 + 24) = v24;
    v49 = *(v47 + 56);
    v50 = type metadata accessor for FMIPGetURLInfoResponse(0);

    v49(v45, sub_24A737920, v48, v50, v46, v47);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A735B14(unint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v215 = a3;
  v216 = a2;
  v4 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  MEMORY[0x28223BE20](v4 - 8);
  v217 = &v200 - v5;
  v6 = sub_24A82C644();
  v229 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v225 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v226 = &v200 - v10;
  MEMORY[0x28223BE20](v9);
  v227 = (&v200 - v11);
  v12 = sub_24A6BBA94(&qword_27EF5DEC8, &qword_24A836C40);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v203 = &v200 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v204 = &v200 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v207 = &v200 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v208 = &v200 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v206 = &v200 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v211 = &v200 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v205 = &v200 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v210 = &v200 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v220 = &v200 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v219 = &v200 - v32;
  MEMORY[0x28223BE20](v31);
  v222 = &v200 - v33;
  v221 = type metadata accessor for FMIPURLInfo(0);
  v212 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v214 = &v200 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v35 - 8);
  v218 = &v200 - v36;
  v37 = sub_24A82C8B4();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v213 = &v200 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24A82C6C4();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v200 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    goto LABEL_114;
  }

  while (1)
  {
    v44 = sub_24A82CDC4();
    v45 = sub_24A6797D0(v44, qword_281518F88);
    (*(v41 + 16))(v43, a1, v40);
    v224 = v45;
    v46 = sub_24A82CD94();
    v47 = sub_24A82D504();
    v48 = os_log_type_enabled(v46, v47);
    v223 = a1;
    v228 = v6;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v230[0] = v202;
      *v49 = 136315138;
      sub_24A6789D4(&qword_27EF5DED0, MEMORY[0x277CC8958], MEMORY[0x277CC8968]);
      v50 = sub_24A82DB84();
      v51 = v38;
      v52 = v37;
      v54 = v53;
      (*(v41 + 8))(v43, v40);
      v55 = sub_24A68761C(v50, v54, v230);
      v37 = v52;
      v38 = v51;

      *(v49 + 4) = v55;
      _os_log_impl(&dword_24A675000, v46, v47, "FMIPURLHandler: processUniversalURL: %s", v49, 0xCu);
      v56 = v202;
      sub_24A6876E8(v202);
      MEMORY[0x24C21E1D0](v56, -1, -1);
      v57 = v49;
      v6 = v228;
      MEMORY[0x24C21E1D0](v57, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v43, v40);
    }

    v58 = v218;
    sub_24A82C684();
    v59 = (*(v38 + 48))(v58, 1, v37);
    v60 = v229;
    if (v59 == 1)
    {
      break;
    }

    v68 = v213;
    (*(v38 + 32))(v213, v58, v37);
    v69 = v214;
    (*(v38 + 16))(v214, v68, v37);
    v70 = v221;
    (*(v38 + 56))(v69 + *(v221 + 32), 1, 1, v37);
    v71 = v70[11];
    v72 = sub_24A82CAA4();
    (*(*(v72 - 8) + 56))(v69 + v71, 1, 1, v72);
    v218 = v70[5];
    *(v69 + v218) = 18;
    v73 = (v69 + v70[6]);
    *v73 = 0;
    v73[1] = 0;
    v202 = v73;
    v74 = (v69 + v70[7]);
    *v74 = 0;
    v74[1] = 0;
    v75 = (v69 + v70[9]);
    *v75 = 0;
    v75[1] = 0;
    v76 = (v69 + v70[10]);
    *v76 = 0;
    v76[1] = 0;
    v200 = v76;
    *(v69 + v70[12]) = 0;
    if (sub_24A82C6A4() == 0x6D6574692FLL && v77 == 0xE500000000000000)
    {
LABEL_11:

      goto LABEL_13;
    }

    v78 = sub_24A82DC04();

    if ((v78 & 1) == 0)
    {
      if (sub_24A82C6A4() == 0x72656E747261702FLL && v86 == 0xE800000000000000)
      {
        goto LABEL_11;
      }

      v87 = sub_24A82DC04();

      if ((v87 & 1) == 0)
      {
        v88 = sub_24A82CD94();
        v89 = sub_24A82D4E4();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_24A675000, v88, v89, "FMIPURLHandler: processUniversalURL: invalid action", v90, 2u);
          MEMORY[0x24C21E1D0](v90, -1, -1);
        }

        v91 = v214;
        v92 = v217;
        sub_24A732300(v214, v217);
        (*(v212 + 56))(v92, 0, 1, v221);
        sub_24A732364();
        v93 = swift_allocError();
        *v94 = 0;
        v216(v92, v93);

        sub_24A67F378(v92, &qword_27EF5DEB0, &qword_24A836C30);
        (*(v38 + 8))(v213, v37);
        v95 = v91;
        return sub_24A7378B8(v95);
      }
    }

LABEL_13:
    v79 = sub_24A82C654();
    v209 = v37;
    v201 = v38;
    if (v79)
    {
      v43 = v79;
      v41 = *(v79 + 16);
      if (v41)
      {
        a1 = 0;
        v38 = 0x6C6169726573;
        v40 = v229 + 16;
        v80 = (v229 + 8);
        v37 = 0xE600000000000000;
        while (a1 < *(v43 + 2))
        {
          (*(v229 + 16))(v227, &v43[((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * a1], v6);
          sub_24A82C624();
          v81 = sub_24A82D034();
          v83 = v82;

          if (v81 == 0x6C6169726573 && v83 == 0xE600000000000000)
          {

LABEL_30:
            v6 = v228;

            v60 = v229;
            v96 = v222;
            (*(v229 + 32))(v222, v227, v6);
            v85 = *(v60 + 56);
            (v85)(v96, 0, 1, v6);
            goto LABEL_31;
          }

          v84 = sub_24A82DC04();

          if (v84)
          {
            goto LABEL_30;
          }

          ++a1;
          v6 = v228;
          (*v80)(v227, v228);
          if (v41 == a1)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_112;
      }

LABEL_21:

      v60 = v229;
      v85 = *(v229 + 56);
      (v85)(v222, 1, 1, v6);
LABEL_31:
      v37 = v209;
    }

    else
    {
      v85 = *(v60 + 56);
      (v85)(v222, 1, 1, v6);
    }

    v97 = sub_24A82C654();
    v227 = v85;
    if (v97)
    {
      v43 = v97;
      v40 = *(v97 + 16);
      if (v40)
      {
        v37 = 0;
        v41 = 0xEC00000072657275;
        v38 = 0x74636166756E616DLL;
        a1 = v229 + 8;
        while (v37 < *(v43 + 2))
        {
          (*(v229 + 16))(v226, &v43[((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v37], v6);
          sub_24A82C624();
          v98 = sub_24A82D034();
          v100 = v99;

          if (v98 == 0x74636166756E616DLL && v100 == 0xEC00000072657275)
          {

LABEL_43:
            v6 = v228;

            v60 = v229;
            (*(v229 + 32))(v219, v226, v6);
            v102 = 0;
            v37 = v209;
            goto LABEL_44;
          }

          v101 = sub_24A82DC04();

          if (v101)
          {
            goto LABEL_43;
          }

          ++v37;
          v6 = v228;
          (*a1)(v226, v228);
          if (v40 == v37)
          {
            goto LABEL_40;
          }
        }

LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

LABEL_40:

      v102 = 1;
      v37 = v209;
      v60 = v229;
LABEL_44:
      v85 = v227;
    }

    else
    {
      v102 = 1;
    }

    v38 = v60 + 56;
    v103 = 1;
    (v85)(v219, v102, 1, v6);
    v104 = sub_24A82C654();
    if (!v104)
    {
      v109 = v220;
      v110 = v210;
      goto LABEL_58;
    }

    v43 = v104;
    v40 = *(v104 + 16);
    if (!v40)
    {
LABEL_53:

      v103 = 1;
      v37 = v209;
      v109 = v220;
      v60 = v229;
LABEL_57:
      v110 = v210;
      v85 = v227;
LABEL_58:
      v111 = v228;
      (v85)(v109, v103, 1, v228);
      sub_24A67E964(v109, v110, &qword_27EF5DEC8, &qword_24A836C40);
      v112 = sub_24A82CD94();
      v113 = sub_24A82D504();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v230[0] = v115;
        *v114 = 136315138;
        v116 = v110;
        v117 = v205;
        sub_24A67E964(v116, v205, &qword_27EF5DEC8, &qword_24A836C40);
        if ((*(v60 + 48))(v117, 1, v111) == 1)
        {
          sub_24A67F378(v117, &qword_27EF5DEC8, &qword_24A836C40);
          goto LABEL_64;
        }

        v119 = sub_24A82C634();
        v121 = v120;
        (*(v60 + 8))(v117, v111);
        if (v121)
        {
          sub_24A67F378(v210, &qword_27EF5DEC8, &qword_24A836C40);
        }

        else
        {
LABEL_64:
          v119 = 7104878;
          sub_24A67F378(v210, &qword_27EF5DEC8, &qword_24A836C40);

          v121 = 0xE300000000000000;
        }

        v118 = v211;
        v122 = sub_24A68761C(v119, v121, v230);

        *(v114 + 4) = v122;
        _os_log_impl(&dword_24A675000, v112, v113, "FMIPURLHandler: processUniversalURL: parameter action: %s", v114, 0xCu);
        sub_24A6876E8(v115);
        MEMORY[0x24C21E1D0](v115, -1, -1);
        MEMORY[0x24C21E1D0](v114, -1, -1);

        v109 = v220;
      }

      else
      {

        sub_24A67F378(v110, &qword_27EF5DEC8, &qword_24A836C40);
        v118 = v211;
      }

      sub_24A67E964(v222, v118, &qword_27EF5DEC8, &qword_24A836C40);
      v123 = sub_24A82CD94();
      v124 = sub_24A82D504();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v230[0] = v126;
        *v125 = 136315138;
        v127 = v206;
        sub_24A67E964(v118, v206, &qword_27EF5DEC8, &qword_24A836C40);
        v128 = v228;
        if ((*(v60 + 48))(v127, 1, v228) == 1)
        {
          sub_24A67F378(v127, &qword_27EF5DEC8, &qword_24A836C40);
          goto LABEL_72;
        }

        v129 = sub_24A82C634();
        v131 = v130;
        (*(v60 + 8))(v127, v128);
        if (v131)
        {
          sub_24A67F378(v211, &qword_27EF5DEC8, &qword_24A836C40);
        }

        else
        {
LABEL_72:
          v129 = 7104878;
          sub_24A67F378(v211, &qword_27EF5DEC8, &qword_24A836C40);

          v131 = 0xE300000000000000;
        }

        v132 = sub_24A68761C(v129, v131, v230);

        *(v125 + 4) = v132;
        _os_log_impl(&dword_24A675000, v123, v124, "FMIPURLHandler: processUniversalURL: parameter serial: %s", v125, 0xCu);
        sub_24A6876E8(v126);
        MEMORY[0x24C21E1D0](v126, -1, -1);
        MEMORY[0x24C21E1D0](v125, -1, -1);

        v37 = v209;
      }

      else
      {

        sub_24A67F378(v118, &qword_27EF5DEC8, &qword_24A836C40);
      }

      v133 = v208;
      sub_24A67E964(v109, v208, &qword_27EF5DEC8, &qword_24A836C40);
      v134 = *(v60 + 48);
      v135 = v228;
      if (v134(v133, 1, v228) == 1)
      {
        sub_24A67F378(v133, &qword_27EF5DEC8, &qword_24A836C40);
        goto LABEL_85;
      }

      v136 = sub_24A82C634();
      v138 = v137;
      (*(v60 + 8))(v133, v135);
      if (v138)
      {
        if (v136 == 0x7075746573 && v138 == 0xE500000000000000)
        {

          goto LABEL_81;
        }

        v139 = sub_24A82DC04();

        if (v139)
        {
LABEL_81:
          v140 = sub_24A82CD94();
          v141 = sub_24A82D504();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            *v142 = 0;
            _os_log_impl(&dword_24A675000, v140, v141, "FMIPURLHandler: processUniversalURL: action received to setup an item", v142, 2u);
            MEMORY[0x24C21E1D0](v142, -1, -1);
          }

          v143 = v214;
          *(v214 + v218) = 14;
LABEL_84:
          v144 = sub_24A82C694();
          v146 = v145;
          v147 = v217;
          sub_24A732300(v143, v217);
          v148 = *(v212 + 56);
          v149 = v221;
          v148(v147, 0, 1, v221);
          _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v144, v146, v147);

          sub_24A67F378(v147, &qword_27EF5DEB0, &qword_24A836C30);
          sub_24A732300(v143, v147);
          v148(v147, 0, 1, v149);
          v216(v147, 0);
          sub_24A67F378(v147, &qword_27EF5DEB0, &qword_24A836C30);
          sub_24A67F378(v220, &qword_27EF5DEC8, &qword_24A836C40);
          sub_24A67F378(v219, &qword_27EF5DEC8, &qword_24A836C40);
          sub_24A67F378(v222, &qword_27EF5DEC8, &qword_24A836C40);
          (*(v201 + 8))(v213, v37);
          v95 = v143;
          return sub_24A7378B8(v95);
        }
      }

LABEL_85:
      v150 = v207;
      sub_24A67E964(v222, v207, &qword_27EF5DEC8, &qword_24A836C40);
      v151 = v228;
      if (v134(v150, 1, v228) == 1)
      {
LABEL_89:
        sub_24A67F378(v150, &qword_27EF5DEC8, &qword_24A836C40);
      }

      else
      {
        v152 = sub_24A82C634();
        v154 = v153;
        v155 = *(v60 + 8);
        v155(v150, v151);
        if (v154)
        {
          v150 = v204;
          sub_24A67E964(v219, v204, &qword_27EF5DEC8, &qword_24A836C40);
          if (v134(v150, 1, v151) == 1)
          {

            goto LABEL_89;
          }

          v229 = sub_24A82C634();
          v169 = v168;
          v155(v150, v151);
          if (v169)
          {
            v227 = v152;
            v170 = v203;
            sub_24A67E964(v220, v203, &qword_27EF5DEC8, &qword_24A836C40);
            if (v134(v170, 1, v151) == 1)
            {
              sub_24A67F378(v170, &qword_27EF5DEC8, &qword_24A836C40);
              v171 = v202;
            }

            else
            {
              v172 = v170;
              v173 = sub_24A82C634();
              v175 = v174;
              v155(v172, v151);
              v171 = v202;
              if (v175)
              {
                if (v173 == 0x65766F6D6572 && v175 == 0xE600000000000000)
                {
                }

                else
                {
                  v176 = sub_24A82DC04();

                  if ((v176 & 1) == 0)
                  {
                    goto LABEL_105;
                  }
                }

                v177 = sub_24A82CD94();
                v178 = sub_24A82D504();

                if (os_log_type_enabled(v177, v178))
                {
                  v179 = swift_slowAlloc();
                  v180 = swift_slowAlloc();
                  v230[0] = v180;
                  *v179 = 136315138;
                  v181 = v227;
                  *(v179 + 4) = sub_24A68761C(v227, v154, v230);
                  _os_log_impl(&dword_24A675000, v177, v178, "FMIPURLHandler: processUniversalURL: action received to remove %s", v179, 0xCu);
                  sub_24A6876E8(v180);
                  MEMORY[0x24C21E1D0](v180, -1, -1);
                  MEMORY[0x24C21E1D0](v179, -1, -1);

                  v182 = v218;
                  v183 = v200;
                }

                else
                {

                  v182 = v218;
                  v183 = v200;
                  v181 = v227;
                }

                v192 = v229;
                v193 = v214;
                *(v214 + v182) = 12;
                *v171 = v181;
                v171[1] = v154;
                *v183 = v192;
                v183[1] = v169;
                v194 = sub_24A82C694();
                v196 = v195;
                v197 = v217;
                sub_24A732300(v193, v217);
                v198 = *(v212 + 56);
                v199 = v221;
                v198(v197, 0, 1, v221);
                _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v194, v196, v197);

                sub_24A67F378(v197, &qword_27EF5DEB0, &qword_24A836C30);
                sub_24A732300(v193, v197);
                v198(v197, 0, 1, v199);
                v216(v197, 0);
                sub_24A67F378(v197, &qword_27EF5DEB0, &qword_24A836C30);
                sub_24A67F378(v220, &qword_27EF5DEC8, &qword_24A836C40);
                sub_24A67F378(v219, &qword_27EF5DEC8, &qword_24A836C40);
                sub_24A67F378(v222, &qword_27EF5DEC8, &qword_24A836C40);
                (*(v201 + 8))(v213, v37);
                v95 = v193;
                return sub_24A7378B8(v95);
              }
            }

LABEL_105:

            v184 = sub_24A82CD94();
            v185 = sub_24A82D504();

            if (os_log_type_enabled(v184, v185))
            {
              v186 = swift_slowAlloc();
              v187 = swift_slowAlloc();
              v230[0] = v187;
              *v186 = 136315138;
              v188 = v227;
              *(v186 + 4) = sub_24A68761C(v227, v154, v230);
              _os_log_impl(&dword_24A675000, v184, v185, "FMIPURLHandler: processUniversalURL: selecting item for serial %s", v186, 0xCu);
              sub_24A6876E8(v187);
              MEMORY[0x24C21E1D0](v187, -1, -1);
              MEMORY[0x24C21E1D0](v186, -1, -1);

              v189 = v218;
              v190 = v200;
            }

            else
            {

              v189 = v218;
              v190 = v200;
              v188 = v227;
            }

            v191 = v229;
            *v171 = v188;
            v171[1] = v154;
            *v190 = v191;
            v190[1] = v169;
            v143 = v214;
            *(v214 + v189) = 7;
            goto LABEL_84;
          }
        }
      }

      v156 = sub_24A82CD94();
      v157 = sub_24A82D4E4();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&dword_24A675000, v156, v157, "FMIPURLHandler: processUniversalURL: invalid serial number", v158, 2u);
        MEMORY[0x24C21E1D0](v158, -1, -1);
      }

      v159 = sub_24A82C694();
      v161 = v160;
      v162 = v214;
      v163 = v217;
      sub_24A732300(v214, v217);
      v164 = *(v212 + 56);
      v165 = v221;
      v164(v163, 0, 1, v221);
      _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(v159, v161, v163);

      sub_24A67F378(v163, &qword_27EF5DEB0, &qword_24A836C30);
      sub_24A732300(v162, v163);
      v164(v163, 0, 1, v165);
      sub_24A732364();
      v166 = swift_allocError();
      *v167 = 1;
      v216(v163, v166);

      sub_24A67F378(v163, &qword_27EF5DEB0, &qword_24A836C30);
      sub_24A67F378(v220, &qword_27EF5DEC8, &qword_24A836C40);
      sub_24A67F378(v219, &qword_27EF5DEC8, &qword_24A836C40);
      sub_24A67F378(v222, &qword_27EF5DEC8, &qword_24A836C40);
      (*(v201 + 8))(v213, v37);
      v95 = v162;
      return sub_24A7378B8(v95);
    }

    v37 = 0;
    v41 = 0x6E6F69746361;
    a1 = v229 + 8;
    while (v37 < *(v43 + 2))
    {
      (*(v229 + 16))(v225, &v43[((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v37], v6);
      sub_24A82C624();
      v105 = sub_24A82D034();
      v107 = v106;

      if (v105 == 0x6E6F69746361 && v107 == 0xE600000000000000)
      {

LABEL_56:

        v60 = v229;
        v109 = v220;
        (*(v229 + 32))(v220, v225, v228);
        v103 = 0;
        v37 = v209;
        goto LABEL_57;
      }

      v108 = sub_24A82DC04();

      if (v108)
      {
        goto LABEL_56;
      }

      ++v37;
      v6 = v228;
      (*a1)(v225, v228);
      if (v40 == v37)
      {
        goto LABEL_53;
      }
    }

LABEL_113:
    __break(1u);
LABEL_114:
    swift_once();
  }

  sub_24A67F378(v58, &unk_27EF5CCB8, &qword_24A82FDB0);
  v61 = sub_24A82CD94();
  v62 = sub_24A82D4E4();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_24A675000, v61, v62, "FMIPURLHandler: processUniversalURL: Invalid Universal URL", v63, 2u);
    MEMORY[0x24C21E1D0](v63, -1, -1);
  }

  v64 = v217;
  (*(v212 + 56))(v217, 1, 1, v221);
  sub_24A732364();
  v65 = swift_allocError();
  *v66 = 2;
  v216(v64, v65);

  return sub_24A67F378(v64, &qword_27EF5DEB0, &qword_24A836C30);
}

uint64_t sub_24A7378B8(uint64_t a1)
{
  v2 = type metadata accessor for FMIPURLInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A73793C()
{
  result = qword_27EF5DEE0;
  if (!qword_27EF5DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DEE0);
  }

  return result;
}

unint64_t sub_24A737994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for FMIPURLInfo(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  sub_24A7380AC(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24A73811C(v6);
  }

  else
  {
    sub_24A738290(v6, v10);
    v12 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v13 = sub_24A82CF94();
    v14 = [v12 initWithString_];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v11;
    sub_24A6AE690(v14, 0x747865746E6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v11 = v26;
    if (v10[*(v7 + 20)] != 18)
    {
      LOBYTE(v26) = v10[*(v7 + 20)];
      FMIPURLAction.rawValue.getter();
      v16 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v17 = sub_24A82CF94();

      v18 = [v16 initWithString_];

      v19 = swift_isUniquelyReferenced_nonNull_native();
      v26 = v11;
      sub_24A6AE690(v18, 0x6E6F69746361, 0xE600000000000000, v19);
      v11 = v26;
    }

    if (*&v10[*(v7 + 40) + 8])
    {
      v20 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v21 = sub_24A82CF94();
      v22 = [v20 initWithString_];

      v23 = swift_isUniquelyReferenced_nonNull_native();
      v26 = v11;
      sub_24A6AE690(v22, 0x74636166756E616DLL, 0xEC00000072657275, v23);
      v11 = v26;
    }

    sub_24A7378B8(v10);
  }

  return v11;
}

void _s8FMIPCore13FMIPAnalyticsV19sendLaunchAnalytics7context4infoySSSg_AA11FMIPURLInfoVSgtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  if (a2)
  {
    v16 = qword_281515DC8;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);
    sub_24A7380AC(a3, v15);

    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();

    v20 = os_log_type_enabled(v18, v19);
    v36 = a1;
    if (!v20)
    {

      sub_24A73811C(v15);
LABEL_12:
      v28 = sub_24A82CF94();
      sub_24A7380AC(a3, v10);
      v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v30 = swift_allocObject();
      sub_24A738184(v10, v30 + v29);
      v31 = (v30 + ((v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v31 = v36;
      v31[1] = a2;
      aBlock[4] = sub_24A7381F4;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A6AEADC;
      aBlock[3] = &unk_285DC55F8;
      v32 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v32);

      return;
    }

    v34 = v7;
    v35 = a3;
    v21 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v21 = 136315394;
    *(v21 + 4) = sub_24A68761C(a1, a2, aBlock);
    *(v21 + 12) = 2080;
    sub_24A7380AC(v15, v13);
    v22 = type metadata accessor for FMIPURLInfo(0);
    if ((*(*(v22 - 8) + 48))(v13, 1, v22) == 1)
    {
      sub_24A73811C(v13);
    }

    else
    {
      v23 = &v13[*(v22 + 36)];
      v24 = *v23;
      v25 = v23[1];

      sub_24A7378B8(v13);
      if (v25)
      {
        sub_24A73811C(v15);
LABEL_11:
        v26 = sub_24A68761C(v24, v25, aBlock);

        *(v21 + 14) = v26;
        _os_log_impl(&dword_24A675000, v18, v19, "FMIPAnalytics: sendLaunchEvent (%s, returnAppName: %s", v21, 0x16u);
        v27 = v33;
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v27, -1, -1);
        MEMORY[0x24C21E1D0](v21, -1, -1);

        v7 = v34;
        a3 = v35;
        goto LABEL_12;
      }
    }

    sub_24A73811C(v15);

    v25 = 0xE300000000000000;
    v24 = 7104878;
    goto LABEL_11;
  }
}

uint64_t sub_24A7380AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A73811C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A738184(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A7381F4()
{
  v1 = *(sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_24A737994(v0 + v2, v4, v5);
}

uint64_t sub_24A738290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPURLInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7382F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24A67E964(a3, v25 - v10, &qword_27EF5CF08, &qword_24A830D80);
  v12 = sub_24A82D354();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24A67F378(v11, &qword_27EF5CF08, &qword_24A830D80);
  }

  else
  {
    sub_24A82D344();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24A82D324();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24A82D044() + 32;
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

      sub_24A67F378(a3, &qword_27EF5CF08, &qword_24A830D80);

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

  sub_24A67F378(a3, &qword_27EF5CF08, &qword_24A830D80);
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

uint64_t sub_24A7385F4(uint64_t a1, uint64_t a2)
{
  v2 = *sub_24A67DF6C((a1 + 32), *(a1 + 56));
  sub_24A679170(0, &qword_27EF5CF10, 0x277D49640);
  sub_24A6AB7EC(&unk_27EF5CF18, &qword_27EF5CF10, 0x277D49640);
  **(*(v2 + 64) + 40) = sub_24A82D3A4();

  return MEMORY[0x282200948](v2);
}

void sub_24A7386BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t FMIPBundleIdsAllowedToUseCache.getter()
{
  if (qword_27EF5CBB8 != -1)
  {
    swift_once();
  }
}

void sub_24A7387A4()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  LOBYTE(v0) = [v0 BOOLForKey:v1 inDomain:v2];

  byte_27EF5DEF0 = v0;
}

uint64_t sub_24A7388B4(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

unint64_t FMIPContentObservation.description.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  v3 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v3 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A7389D8()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  if (*v0 != 3)
  {
    v2 = 0xD000000000000019;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000017;
  }

  if (v1 == 1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return v2;
  }
}

void sub_24A738A48()
{
  v3[3] = &type metadata for KoreaFeatureFlag;
  v3[4] = sub_24A6AF8B0();
  v0 = sub_24A82C4D4();
  sub_24A6876E8(v3);
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v2 = sub_24A82CF94();
    v1 = MGGetBoolAnswer();
  }

  byte_27EF5DEF3 = v1;
}

uint64_t FMIPManager.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_identifier;
  v4 = sub_24A82CAA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_24A738B58(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  swift_unknownObjectWeakAssign();
  FMIPManager.initialize()();
}

void (*FMIPManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A738C60;
}

void sub_24A738C60(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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
    FMIPManager.initialize()();
  }

  free(v3);
}

uint64_t FMIPManager.siriDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*FMIPManager.siriDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A738E54;
}

void sub_24A738E54(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t FMIPManager.isUTAppAlertDisabled.getter()
{
  v1 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_isUTAppAlertDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FMIPManager.isUTAppAlertDisabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_isUTAppAlertDisabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24A73917C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24A7391A8, v1, 0);
}

uint64_t sub_24A7391A8()
{
  *(v0 + 32) = *(*(v0 + 24) + 144);

  return MEMORY[0x2822009F8](sub_24A73921C, 0, 0);
}

uint64_t sub_24A73921C()
{
  v9 = v0;
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_24A74DDDC(*(v1 + 16), 0, &qword_27EF5DF88, &unk_24A8371B0, type metadata accessor for FMIPBeaconShare);
    v4 = *(type metadata accessor for FMIPBeaconShare(0) - 8);
    v5 = sub_24A74E32C(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
    sub_24A6BAFBC(v8);
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = *(v0 + 8);

  return v6(v3);
}

void FMIPManager.rangingParameters.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_rangingParameters);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 == 0;
}

uint64_t FMIPManager.selectedDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice;
  swift_beginAccess();
  return sub_24A67E964(v1 + v3, a1, &qword_27EF5DF08, &qword_24A837770);
}

uint64_t sub_24A7393E0(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24A67E964(a1, &v6 - v3, &qword_27EF5DF08, &qword_24A837770);
  return FMIPManager.selectedDevice.setter(v4);
}

uint64_t FMIPManager.selectedDevice.setter(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice;
  swift_beginAccess();
  sub_24A74E590(a1, v1 + v6);
  swift_endAccess();
  result = sub_24A67F378(a1, &qword_27EF5DF08, &qword_24A837770);
  v8 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (v8)
  {
    sub_24A67E964(v1 + v6, v5, &qword_27EF5DF08, &qword_24A837770);
    v9 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_selectedDevice;
    swift_beginAccess();

    sub_24A730298(v5, v8 + v9, &qword_27EF5DF08, &qword_24A837770);
    swift_endAccess();
  }

  return result;
}

uint64_t (*FMIPManager.selectedDevice.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice;
  *(v5 + 56) = v7;
  *(v5 + 64) = v8;
  swift_beginAccess();
  return sub_24A739694;
}

void sub_24A739694(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = *(v4 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
    if (v5)
    {
      v6 = v3[7];
      sub_24A67E964(v4 + v3[8], v6, &qword_27EF5DF08, &qword_24A837770);
      v7 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_selectedDevice;
      swift_beginAccess();

      sub_24A730298(v6, v5 + v7, &qword_27EF5DF08, &qword_24A837770);
      swift_endAccess();
    }
  }

  free(v3[7]);

  free(v3);
}

uint64_t FMIPManager.initializedSubsystems.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24A7397CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_24A6ADCC4(&v7);
}

uint64_t sub_24A739830(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FMIPManager.__allocating_init(configuration:ownerSession:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  FMIPManager.init(configuration:ownerSession:)(a1, a2);
  return v4;
}

uint64_t FMIPManager.deinit()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    v7 = sub_24A82CA54();
    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v23);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPManager<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v20 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_identifier;
  v21 = sub_24A82CAA4();
  (*(*(v21 - 8) + 8))(v1 + v20, v21);
  sub_24A6BAF88(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate);
  sub_24A6BAF88(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate);

  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_authenticationUIProvider, &qword_27EF5D608, &qword_24A837E90);

  sub_24A6876E8((v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController));

  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_stopRefreshTimestamp, &qword_27EF5E0E0, &qword_24A836D90);

  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice, &qword_27EF5DF08, &qword_24A837770);

  return v1;
}

uint64_t FMIPManager.__deallocating_deinit()
{
  FMIPManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A739D20(uint64_t a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A82CE54();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  v10 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  swift_beginAccess();
  v11 = *(a1 + v10);
  *(a1 + v10) = v9;
  aBlock[0] = v11;
  sub_24A6ADCC4(aBlock);
  v14 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  aBlock[4] = sub_24A753C90;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC7000;
  v12 = _Block_copy(aBlock);

  sub_24A82CE24();
  v16 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v8, v5, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15);
}

uint64_t sub_24A73A018(uint64_t a1)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPManager: loaded cached data", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a1, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A73A174()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24A6CADE0;

  return sub_24A6BD084();
}

Swift::Void __swiftcall FMIPManager.forceStartRefreshing()()
{
  v1 = v0;
  v2 = sub_24A82CDF4();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A82CE54();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPManager: force start refreshing", v11, 2u);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  v12 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (v12 && (v13 = *(v12 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue), v14 = swift_allocObject(), *(v14 + 16) = sub_24A753E64, *(v14 + 24) = v12, v25 = sub_24A680674, v26 = v14, aBlock = MEMORY[0x277D85DD0], v22 = 1107296256, v23 = sub_24A6805E4, v24 = &unk_285DC58C8, v15 = _Block_copy(&aBlock), swift_retain_n(), , , dispatch_sync(v13, v15), _Block_release(v15), LOBYTE(v13) = swift_isEscapingClosureAtFileLocation(), , , (v13 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v25 = sub_24A74EF2C;
    v26 = v1;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_24A699BA0;
    v24 = &unk_285DC58F0;
    v16 = _Block_copy(&aBlock);

    sub_24A82CE24();
    v20 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v7, v4, v16);
    _Block_release(v16);
    (*(v19 + 8))(v4, v2);
    (*(v5 + 8))(v7, v18);
  }
}

uint64_t sub_24A73A688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
  sub_24A82D574();
  v5 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v6 + 32))(a1, v13, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v5 + 8);
    v9 = swift_getObjectType();
    (*(v8 + 112))(a1, v14, v9, v8);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v5 + 8);
    v11 = swift_getObjectType();
    sub_24A6BBA94(&qword_27EF5E170, &qword_24A836D58);
    sub_24A82D574();
    (*(v10 + 152))(a1, v13, v11, v10);

    swift_unknownObjectRelease();
  }

  *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = v14;

  return sub_24A69CA60();
}

Swift::Void __swiftcall FMIPManager.stopRefreshing(subsystems:)(FMIPCore::FMIPManagerSubsystem subsystems)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CE54();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v16 = *subsystems.rawValue;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24A675000, v18, v19, "FMIPManager: stop refreshing", v20, 2u);
    MEMORY[0x24C21E1D0](v20, -1, -1);

    if ((v16 & 1) == 0)
    {
LABEL_5:
      if ((v16 & 3) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {

    if ((v16 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController))
  {

    sub_24A7CB038();
  }

  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingDevices) = 0;
  if ((v16 & 3) != 0)
  {
LABEL_11:
    if ((*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isDevicesSnapshotMode) & 1) == 0 && (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode) & 1) == 0)
    {

      sub_24A8013D8();

      *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingItems) = 0;
      v21 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
      v22 = sub_24A82D354();
      (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v21;

      sub_24A7382F4(0, 0, v15, &unk_24A836DB0, v23);
    }
  }

LABEL_14:

  sub_24A6F1674();

  [*(*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager) stopUpdatingLocation];
  sub_24A82CA24();
  v24 = sub_24A82CA34();
  (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  v25 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_stopRefreshTimestamp;
  swift_beginAccess();
  sub_24A730298(v12, v2 + v25, &qword_27EF5E0E0, &qword_24A836D90);
  swift_endAccess();
  aBlock[4] = sub_24A74F048;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC5918;
  v26 = _Block_copy(aBlock);

  sub_24A82CE24();
  v30 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v6, v26);
  _Block_release(v26);
  (*(v29 + 8))(v6, v4);
  (*(v27 + 8))(v9, v28);
}

uint64_t sub_24A73AF10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24A69BD40;

  return sub_24A6BDB0C();
}

uint64_t sub_24A73AFA0(uint64_t a1)
{
  sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
  sub_24A82D574();
  v2 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v3 + 32))(a1, v10, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v2 + 8);
    v6 = swift_getObjectType();
    sub_24A82D574();
    (*(v5 + 112))(a1, v10, v6, v5);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v2 + 8);
    v8 = swift_getObjectType();
    sub_24A6BBA94(&qword_27EF5E170, &qword_24A836D58);
    sub_24A82D574();
    (*(v7 + 152))(a1, v10, v8, v7);

    swift_unknownObjectRelease();
  }

  *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = v11;

  return sub_24A69CA60();
}

Swift::Void __swiftcall FMIPManager.updateLastActiveTimestamp()()
{
  v1 = v0;
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController;
  swift_beginAccess();
  sub_24A698230(v1 + v6, v11);
  v7 = v12;
  v8 = v13;
  sub_24A67DF6C(v11, v12);
  (*(v8 + 64))(v7, v8);
  sub_24A6876E8(v11);
  v9 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);

  sub_24A82CA24();
  v10 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastActiveTimestamp;
  swift_beginAccess();
  (*(v3 + 40))(v9 + v10, v5, v2);
  swift_endAccess();
}

Swift::Void __swiftcall FMIPManager.refresh(subsystems:)(FMIPCore::FMIPManagerSubsystem subsystems)
{
  v2 = v1;
  v3 = *subsystems.rawValue;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: forced refresh", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_24A74F104;
  *(v10 + 24) = v9;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC59B8;
  v21 = _Block_copy(aBlock);
  v11 = _Block_copy(v21);
  v12 = qword_281513E40;
  swift_retain_n();

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = _os_activity_create(&dword_24A675000, "FMIPRefreshingController.refresh", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v14 = _Block_copy(v11);
  v20 = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24A6A9A80;
  *(v16 + 24) = v15;
  v22[4] = sub_24A680674;
  v22[5] = v16;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_24A6805E4;
  v22[3] = &unk_285DC5A30;
  v17 = _Block_copy(v22);

  os_activity_apply(v13, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  _Block_release(v21);
  _Block_release(v20);
  swift_unknownObjectRelease();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
LABEL_15:
    __break(1u);
    return;
  }

LABEL_11:
  if ((v3 & 3) != 0)
  {

    sub_24A6A7D7C(0, 0);
  }
}

uint64_t FMIPManager.refreshBeacons(completion:)(uint64_t a1, uint64_t a2)
{

  sub_24A6A7D7C(a1, a2);
}

void sub_24A73B840(uint64_t a1, id a2)
{
  if (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isDevicesSnapshotMode) != 1 || (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotDevicesResponseReceived) & 1) != 0)
  {
    return;
  }

  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotDevicesResponseReceived) = 1;
  if (a2)
  {
    v5 = a2;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v6 = sub_24A82CDC4();
    sub_24A6797D0(v6, qword_281518F88);

    v7 = a2;

    v8 = v2;
    v9 = sub_24A82CD94();
    v10 = sub_24A82D504();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446722;
      v80 = v12;
      sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
      v13 = sub_24A82D024();
      v15 = sub_24A68761C(v13, v14, &v80);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      v16 = *(a1 + 16);

      *(v11 + 14) = v16;

      *(v11 + 22) = 2080;
      swift_getErrorValue();
      v17 = sub_24A82DC74();
      v2 = v8;
      v19 = sub_24A68761C(v17, v18, &v80);

      *(v11 + 24) = v19;
      _os_log_impl(&dword_24A675000, v9, v10, "%{public}s: received %ld devices (error=%s)", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v12, -1, -1);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v39 = *(*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
    if (v39)
    {
      v40 = *(v39 + 32);
      if (v40)
      {
        v41 = *(v39 + 40);
        v42 = a2;
        sub_24A6A7314(v40, v41);
        v40(v2, MEMORY[0x277D84F90], MEMORY[0x277D84F90], a2);

        sub_24A6AFFE8(v40, v41);
      }
    }

    return;
  }

  v20 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  v21 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers;
  v22 = *(v20 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
  if (v22)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v22 + 24);

      v25 = v23(v2, a1);
      if (*(v25 + 16))
      {
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v26 = sub_24A82CDC4();
        sub_24A6797D0(v26, qword_281518F88);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v27 = sub_24A82CD94();
        v28 = sub_24A82D504();

        if (os_log_type_enabled(v27, v28))
        {
          v78 = v23;
          v29 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v76 = v21;
          *v29 = 136446722;
          v80 = v75;
          sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
          v30 = sub_24A82D024();
          v31 = v2;
          v32 = v24;
          v33 = v20;
          v35 = sub_24A68761C(v30, v34, &v80);

          *(v29 + 4) = v35;
          *(v29 + 12) = 2048;
          v36 = *(a1 + 16);

          *(v29 + 14) = v36;
          v20 = v33;
          v24 = v32;
          v2 = v31;

          *(v29 + 22) = 2048;
          v37 = *(v25 + 16);

          *(v29 + 24) = v37;

          _os_log_impl(&dword_24A675000, v27, v28, "%{public}s: received %ld devices incl. %ld locations asked", v29, 0x20u);
          sub_24A6876E8(v75);
          v21 = v76;
          MEMORY[0x24C21E1D0](v75, -1, -1);
          v38 = v29;
          v23 = v78;
          MEMORY[0x24C21E1D0](v38, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v66 = *(v20 + v21);
        if (v66 && (v67 = *(v66 + 32)) != 0)
        {
          v68 = *(v66 + 40);

          v67(v2, v25, v25, 0);
          sub_24A6AFFE8(v23, v24);
          v69 = v67;
          v70 = v68;
        }

        else
        {
          v69 = v23;
          v70 = v24;
        }

        sub_24A6AFFE8(v69, v70);

        return;
      }

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v55 = sub_24A82CDC4();
      sub_24A6797D0(v55, qword_281518F88);
      swift_bridgeObjectRetain_n();

      v56 = sub_24A82CD94();
      v57 = sub_24A82D504();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v79 = v23;
        *v58 = 136446466;
        v80 = v77;
        sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
        v59 = sub_24A82D024();
        v61 = v2;
        v62 = v24;
        v63 = v21;
        v64 = sub_24A68761C(v59, v60, &v80);

        *(v58 + 4) = v64;
        v21 = v63;
        v24 = v62;
        v2 = v61;
        *(v58 + 12) = 2048;
        v65 = *(a1 + 16);

        *(v58 + 14) = v65;

        _os_log_impl(&dword_24A675000, v56, v57, "%{public}s: received %ld devices but no location asked", v58, 0x16u);
        sub_24A6876E8(v77);
        v23 = v79;
        MEMORY[0x24C21E1D0](v77, -1, -1);
        MEMORY[0x24C21E1D0](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v71 = *(v20 + v21);
      if (v71)
      {
        v72 = *(v71 + 32);
        if (v72)
        {
          v73 = *(v71 + 40);

          v72(v2, MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0);
          sub_24A6AFFE8(v23, v24);
          v54 = v72;
          v74 = v73;
LABEL_45:
          sub_24A6AFFE8(v54, v74);
          return;
        }
      }

      v54 = v23;
LABEL_44:
      v74 = v24;
      goto LABEL_45;
    }
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v43 = sub_24A82CDC4();
  sub_24A6797D0(v43, qword_281518F88);
  swift_bridgeObjectRetain_n();

  v44 = sub_24A82CD94();
  v45 = sub_24A82D504();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 136446466;
    v80 = v47;
    sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
    v48 = sub_24A82D024();
    v50 = sub_24A68761C(v48, v49, &v80);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2048;
    v51 = *(a1 + 16);

    *(v46 + 14) = v51;

    _os_log_impl(&dword_24A675000, v44, v45, "%{public}s: received %ld devices", v46, 0x16u);
    sub_24A6876E8(v47);
    MEMORY[0x24C21E1D0](v47, -1, -1);
    MEMORY[0x24C21E1D0](v46, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v52 = *(v20 + v21);
  if (v52)
  {
    v53 = *(v52 + 32);
    if (v53)
    {
      v24 = *(v52 + 40);

      v53(v2, a1, a1, 0);
      v54 = v53;
      goto LABEL_44;
    }
  }
}

uint64_t FMIPManager.refreshUnknownBeacons(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  sub_24A6A7314(a1, a2);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 == 0;
    sub_24A6AFFE8(a1, a2);
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPManager: refreshUnknownBeacons, isCompletionNil? %{BOOL}d", v9, 8u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  else
  {
    sub_24A6AFFE8(a1, a2);
  }

  v10 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_24A74F110;
  *(v12 + 24) = v11;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC5AA8;
  v13 = _Block_copy(aBlock);
  v14 = _Block_copy(v13);

  sub_24A6A7314(a1, a2);
  v15 = qword_281513E40;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshUnknownBeacons", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v17 = _Block_copy(v14);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_24A6A9A80;
  *(v19 + 24) = v18;
  v23[4] = sub_24A680674;
  v23[5] = v19;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_24A6805E4;
  v23[3] = &unk_285DC5B20;
  v20 = _Block_copy(v23);

  os_activity_apply(v16, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v13);
  _Block_release(v14);
  result = swift_unknownObjectRelease();
  if (v20)
  {
    __break(1u);
    goto LABEL_12;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

void sub_24A73C60C(void (*a1)(char *), void *a2)
{
  v3 = v2;
  v6 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v113 - v7;
  v9 = sub_24A82CAA4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v113 - v14;
  v16 = type metadata accessor for FMIPItem(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = a2;
    if (qword_281515DC8 == -1)
    {
LABEL_3:
      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);

      v22 = a2;

      v23 = sub_24A82CD94();
      v24 = sub_24A82D504();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 136446722;
        v124 = *v3;
        v125[0] = v26;
        sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
        v27 = sub_24A82D024();
        v29 = sub_24A68761C(v27, v28, v125);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2048;
        v30 = *(a1 + 2);

        *(v25 + 14) = v30;

        *(v25 + 22) = 2080;
        swift_getErrorValue();
        v31 = sub_24A82DC74();
        v33 = sub_24A68761C(v31, v32, v125);

        *(v25 + 24) = v33;
        _os_log_impl(&dword_24A675000, v23, v24, "%{public}s: received %ld items (error=%s)", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v26, -1, -1);
        MEMORY[0x24C21E1D0](v25, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v51 = *(*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
      if (v51)
      {
        v52 = *(v51 + 64);
        if (v52)
        {
          v53 = *(v51 + 72);
          v54 = a2;
          sub_24A6A7314(v52, v53);
          v52(v3, MEMORY[0x277D84F90], MEMORY[0x277D84F90], a2);

          sub_24A6AFFE8(v52, v53);
        }
      }

      return;
    }

LABEL_59:
    swift_once();
    goto LABEL_3;
  }

  v121 = v15;
  v122 = v13;
  v123 = v9;
  v34 = v3;
  v35 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  v36 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers;
  v37 = *(v35 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
  if (v37)
  {
    v38 = *(v37 + 48);
    if (v38)
    {
      v113 = v35;
      v114 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers;
      v39 = *(v37 + 56);

      v116 = v38;
      v117 = a1;
      v115 = v39;
      v40 = v38(v34, a1);
      v41 = *(v40 + 16);
      v120 = v10;
      v118 = v34;
      if (v41)
      {
        v125[0] = MEMORY[0x277D84F90];
        sub_24A6FC900(0, v41, 0);
        v42 = v125[0];
        v43 = *(v17 + 80);
        v119 = v40;
        v44 = v40 + ((v43 + 32) & ~v43);
        v45 = *(v17 + 72);
        do
        {
          sub_24A69F134(v44, v19, type metadata accessor for FMIPItem);
          v47 = *(v19 + 44);
          v46 = *(v19 + 45);

          sub_24A69F2C4(v19, type metadata accessor for FMIPItem);
          v125[0] = v42;
          v49 = v42[2];
          v48 = v42[3];
          a1 = (v49 + 1);
          if (v49 >= v48 >> 1)
          {
            sub_24A6FC900((v48 > 1), v49 + 1, 1);
            v42 = v125[0];
          }

          v42[2] = a1;
          v50 = &v42[2 * v49];
          v50[4] = v47;
          v50[5] = v46;
          v44 += v45;
          --v41;
        }

        while (v41);

        v10 = v120;
        v69 = v42[2];
        if (v69)
        {
LABEL_28:
          v70 = 0;
          v3 = (v10 + 48);
          v71 = (v10 + 32);
          a2 = v42 + 5;
          v72 = MEMORY[0x277D84F90];
          v119 = v3;
          while (v70 < v42[2])
          {
            a1 = *(a2 - 1);

            sub_24A82CA44();
            v73 = v123;

            if ((*v3)(v8, 1, v73) == 1)
            {
              sub_24A67F378(v8, &qword_27EF5D020, &qword_24A830E40);
            }

            else
            {
              v74 = v8;
              v75 = v69;
              a1 = *v71;
              v76 = v121;
              v77 = v74;
              (*v71)(v121);
              (a1)(v122, v76, v73);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v72 = sub_24A78029C(0, v72[2] + 1, 1, v72);
              }

              v78 = v72;
              v79 = v72[2];
              v80 = v78;
              v81 = v78[3];
              v69 = v75;
              if (v79 >= v81 >> 1)
              {
                v80 = sub_24A78029C((v81 > 1), v79 + 1, 1, v80);
              }

              v8 = v77;
              v80[2] = v79 + 1;
              v82 = v80 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v79;
              v72 = v80;
              (a1)(v82, v122, v123);
              v3 = v119;
            }

            ++v70;
            a2 += 2;
            if (v69 == v70)
            {
              goto LABEL_40;
            }
          }

          __break(1u);
          goto LABEL_59;
        }
      }

      else
      {

        v42 = MEMORY[0x277D84F90];
        v69 = *(MEMORY[0x277D84F90] + 16);
        if (v69)
        {
          goto LABEL_28;
        }
      }

      v72 = MEMORY[0x277D84F90];
LABEL_40:

      v83 = v114;
      v84 = v118;
      if (v72[2])
      {
        v85 = v72;
        v86 = v117;
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v87 = sub_24A82CDC4();
        sub_24A6797D0(v87, qword_281518F88);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v88 = sub_24A82CD94();
        v89 = sub_24A82D504();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *v90 = 136446722;
          v124 = *v84;
          v125[0] = v91;
          sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
          v92 = sub_24A82D024();
          v94 = sub_24A68761C(v92, v93, v125);

          *(v90 + 4) = v94;
          *(v90 + 12) = 2048;
          v95 = *(v86 + 2);

          *(v90 + 14) = v95;

          *(v90 + 22) = 2048;
          v96 = *(v85 + 16);

          *(v90 + 24) = v96;

          _os_log_impl(&dword_24A675000, v88, v89, "🥑 %{public}s: received %ld items but asking for %ld locations…", v90, 0x20u);
          sub_24A6876E8(v91);
          MEMORY[0x24C21E1D0](v91, -1, -1);
          MEMORY[0x24C21E1D0](v90, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v107 = v116;

        v108 = sub_24A713EE8(v85);

        v109 = sub_24A696F50(MEMORY[0x277D84F90]);
        LOBYTE(v125[0]) = 1;
        v125[1] = 2;
        v125[2] = v108;
        v125[3] = v109;
        v126 = 1;
        sub_24A808850(v125);

        v67 = v107;
        v68 = v115;
        goto LABEL_56;
      }

      v97 = v117;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v98 = sub_24A82CDC4();
      sub_24A6797D0(v98, qword_281518F88);
      swift_bridgeObjectRetain_n();

      v99 = sub_24A82CD94();
      v100 = sub_24A82D504();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = 136446466;
        v124 = *v84;
        v125[0] = v102;
        sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
        v103 = sub_24A82D024();
        v105 = sub_24A68761C(v103, v104, v125);

        *(v101 + 4) = v105;
        *(v101 + 12) = 2048;
        v106 = *(v97 + 2);

        *(v101 + 14) = v106;

        _os_log_impl(&dword_24A675000, v99, v100, "%{public}s: received %ld items but no location asked", v101, 0x16u);
        sub_24A6876E8(v102);
        MEMORY[0x24C21E1D0](v102, -1, -1);
        MEMORY[0x24C21E1D0](v101, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v111 = v115;
      v110 = v116;
      v112 = *(v113 + v83);
      if (!v112 || (v65 = *(v112 + 64)) == 0)
      {
        v67 = v116;
        v68 = v115;
        goto LABEL_56;
      }

      v66 = *(v112 + 72);

      v65(v84, MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0);
      sub_24A6AFFE8(v110, v111);
LABEL_26:
      v67 = v65;
      v68 = v66;
LABEL_56:
      sub_24A6AFFE8(v67, v68);
      return;
    }
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v55 = sub_24A82CDC4();
  sub_24A6797D0(v55, qword_281518F88);
  swift_bridgeObjectRetain_n();

  v56 = sub_24A82CD94();
  v57 = sub_24A82D504();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 136446466;
    v124 = *v34;
    v125[0] = v59;
    sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
    v60 = sub_24A82D024();
    v62 = sub_24A68761C(v60, v61, v125);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2048;
    v63 = *(a1 + 2);

    *(v58 + 14) = v63;

    _os_log_impl(&dword_24A675000, v56, v57, "%{public}s: received %ld items", v58, 0x16u);
    sub_24A6876E8(v59);
    MEMORY[0x24C21E1D0](v59, -1, -1);
    MEMORY[0x24C21E1D0](v58, -1, -1);

    v64 = *(v35 + v36);
    if (!v64)
    {
      return;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v64 = *(v35 + v36);
    if (!v64)
    {
      return;
    }
  }

  v65 = *(v64 + 64);
  if (v65)
  {
    v66 = *(v64 + 72);

    v65(v34, a1, a1, 0);
    goto LABEL_26;
  }
}

void sub_24A73D388(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  v7 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers;
  v8 = *(v6 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
  if (v8)
  {
    v9 = *(v8 + 48);
    if (v9)
    {
      v10 = *(v8 + 56);

      a1 = v9(v3, a1);
      sub_24A6AFFE8(v9, v10);
      if (!a2)
      {
        goto LABEL_4;
      }

LABEL_10:
      v21 = a2;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v22 = sub_24A82CDC4();
      sub_24A6797D0(v22, qword_281518F88);
      v23 = a2;

      v24 = sub_24A82CD94();
      v25 = sub_24A82D504();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v26 = 136446722;
        v43 = v42;
        sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
        v27 = sub_24A82D024();
        v29 = v7;
        v30 = v6;
        v31 = sub_24A68761C(v27, v28, &v43);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2048;
        v32 = *(a1 + 16);

        *(v26 + 14) = v32;

        *(v26 + 22) = 2080;
        swift_getErrorValue();
        v33 = sub_24A82DC74();
        v35 = sub_24A68761C(v33, v34, &v43);

        *(v26 + 24) = v35;
        _os_log_impl(&dword_24A675000, v24, v25, "%{public}s: received %ld items (with locations asked) (error=%s)", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v42, -1, -1);
        MEMORY[0x24C21E1D0](v26, -1, -1);

        v36 = *(v30 + v29);
        if (!v36)
        {
          goto LABEL_18;
        }
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v36 = *(v6 + v7);
        if (!v36)
        {
LABEL_18:

          return;
        }
      }

      v37 = *(v36 + 64);
      if (v37)
      {
        v38 = *(v36 + 72);
        v39 = a2;
        sub_24A6A7314(v37, v38);
        v37(v3, MEMORY[0x277D84F90], MEMORY[0x277D84F90], a2);

        sub_24A6AFFE8(v37, v38);
      }

      goto LABEL_18;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518F88);
  swift_bridgeObjectRetain_n();

  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446466;
    v43 = v15;
    sub_24A6BBA94(&qword_27EF5DF30, &qword_24A837150);
    v16 = sub_24A82D024();
    v18 = sub_24A68761C(v16, v17, &v43);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    v19 = *(a1 + 16);

    *(v14 + 14) = v19;

    _os_log_impl(&dword_24A675000, v12, v13, "%{public}s: received %ld items with locations", v14, 0x16u);
    sub_24A6876E8(v15);
    MEMORY[0x24C21E1D0](v15, -1, -1);
    MEMORY[0x24C21E1D0](v14, -1, -1);

    v20 = *(v6 + v7);
    if (!v20)
    {
      goto LABEL_22;
    }

LABEL_20:
    v40 = *(v20 + 64);
    if (v40)
    {
      v41 = *(v20 + 72);

      v40(v3, a1, a1, 0);
      sub_24A6AFFE8(v40, v41);
    }

    goto LABEL_22;
  }

  swift_bridgeObjectRelease_n();
  v20 = *(v6 + v7);
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_22:
}

uint64_t FMIPManager.refreshSafeLocations(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  sub_24A6A7314(a1, a2);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 == 0;
    sub_24A6AFFE8(a1, a2);
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: refreshSafeLocations, isCompletionNil? %{BOOL}d", v7, 8u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  else
  {
    sub_24A6AFFE8(a1, a2);
  }

  sub_24A6F176C(a1, a2);
}

uint64_t FMIPManager.refreshShares(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPManager: refreshShares", v12, 2u);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  v13 = sub_24A82D354();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;

  sub_24A7382F4(0, 0, v8, &unk_24A836DC0, v14);
}

uint64_t sub_24A73DBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  return MEMORY[0x2822009F8](sub_24A73DC04, 0, 0);
}

uint64_t sub_24A73DC04()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
  *(v0 + 176) = v1;
  return MEMORY[0x2822009F8](sub_24A73DC30, v1, 0);
}

uint64_t sub_24A73DC30()
{
  v1 = *(v0[22] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24A73DD50;
  v2 = swift_continuation_init();
  v0[17] = sub_24A6BBA94(&qword_27EF5DF80, &unk_24A837190);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24A7385F4;
  v0[13] = &unk_285DC6A10;
  v0[14] = v2;
  [v1 allSharesWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24A73DD50()
{
  v1 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_24A73DE44, v1, 0);
}

uint64_t sub_24A73DE44()
{
  v1 = v0[22];
  sub_24A6B1D48(v0[18]);

  v0[23] = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_24A73DECC, 0, 0);
}

uint64_t sub_24A73DECC()
{
  (*(v0 + 160))(*(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

void FMIPManager.unknownBeacons(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_ownerSession);
  sub_24A82CAA4();
  v7 = sub_24A82D224();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A73E030;
  v9[3] = &unk_285DC5B70;
  v8 = _Block_copy(v9);

  [v6 unknownBeaconsForUUIDs:v7 completion:v8];
  _Block_release(v8);
}

uint64_t sub_24A73E030(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
  v3 = sub_24A82D244();

  v2(v3);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, void (*a2)(__int128 *, void, void *, uint64_t), uint64_t a3)
{
  if (!*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController))
  {
    LOBYTE(v58) = 0;
    sub_24A6EE8A0();
    v30 = swift_allocError();
    *v31 = 5;
    a2(&v58, 0, v30, a1);

    return;
  }

  v7 = v3;
  v8 = qword_281515DC8;
  v49 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController);

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v58 = v14;
    *v13 = 136315138;
    v15 = (*(*v12 + 344))();
    v17 = sub_24A68761C(v15, v16, &v58);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPManager: perform device action %s", v13, 0xCu);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    v18 = v13;
    a1 = v12;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  v19 = sub_24A73E6E8(a1, &v58);
  v20 = *(&v58 + 1);
  if (*(&v58 + 1))
  {
    v21 = v58;
    v22 = *(&v59 + 1);
    v23 = v59;
    LODWORD(v19) = v60;
    v24 = vmovl_u8(*&v19).u64[0];
    v25 = *(&v60 + 1);
    v27 = *(&v61 + 1);
    v28 = v61;
    v26 = *v62;
    v29 = *&v62[8];
  }

  else
  {
    sub_24A6BBA94(&qword_27EF5DEF8, &unk_24A836D40);
    sub_24A82D574();
    v20 = *(&v58 + 1);
    if (!*(&v58 + 1))
    {
LABEL_18:
      __break(1u);
      return;
    }

    v32.i32[0] = v60;
    v24 = vmovl_u8(v32).u64[0];
    v29 = *&v62[8];
    v27 = *(&v61 + 1);
    v26 = *v62;
    v25 = *(&v60 + 1);
    v28 = v61;
    v22 = *(&v59 + 1);
    v23 = v59;
    v21 = v58;
  }

  *&v53 = v21;
  *(&v53 + 1) = v20;
  *&v54 = v23;
  *(&v54 + 1) = v22;
  v33 = vand_s8(v24, 0x1000100010001);
  LODWORD(v55) = vuzp1_s8(v33, v33).u32[0];
  *(&v55 + 1) = v25;
  *&v56 = v28;
  *(&v56 + 1) = v27;
  *v57 = v26;
  *&v57[8] = v29;
  *&v62[16] = *(&v29 + 1);
  v58 = v53;
  v59 = v54;
  v61 = v56;
  *v62 = *v57;
  v60 = v55;
  v34 = swift_allocObject();
  v34[2] = v7;
  v34[3] = a1;
  v34[4] = a2;
  v34[5] = a3;
  v35 = qword_281513E40;

  if (v35 != -1)
  {
    swift_once();
  }

  activity = _os_activity_create(&dword_24A675000, "FMIPDeviceActionsController.perform", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v36 = swift_allocObject();
  v37 = v61;
  *(v36 + 48) = v60;
  *(v36 + 64) = v37;
  *(v36 + 80) = *v62;
  v38 = *&v62[16];
  v39 = v59;
  *(v36 + 16) = v58;
  *(v36 + 32) = v39;
  *(v36 + 96) = v38;
  *(v36 + 104) = v49;
  *(v36 + 112) = a1;
  *(v36 + 120) = sub_24A74F274;
  *(v36 + 128) = v34;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_24A74F280;
  *(v40 + 24) = v36;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC5C10;
  v41 = _Block_copy(aBlock);
  v42 = _Block_copy(v41);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_24A6A9A80;
  *(v44 + 24) = v43;
  v51[4] = sub_24A680674;
  v51[5] = v44;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 1107296256;
  v51[2] = sub_24A6805E4;
  v51[3] = &unk_285DC5C88;
  v45 = _Block_copy(v51);

  sub_24A6EF948(&v53, v50);

  os_activity_apply(activity, v45);
  _Block_release(v45);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  sub_24A6EF9B4(&v53);
  _Block_release(v41);
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRelease();

  v47 = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

double sub_24A73E6E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A6BBA94(&qword_27EF5E260, &qword_24A837850);
  sub_24A82D574();
  v4 = v17;
  v5 = *(v17 + 16);
  if (v5)
  {
    v6 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
    v7 = 32;
    while (1)
    {
      v8 = *(v4 + v7 + 80);
      v9 = *(v4 + v7 + 64);
      v10 = *(v4 + v7 + 32);
      v20 = *(v4 + v7 + 48);
      v21 = v9;
      v11 = *(v4 + v7 + 16);
      v17 = *(v4 + v7);
      v18 = v11;
      v22 = v8;
      v19 = v10;
      if (*(&v20 + 1) == *(v6 + 32) && v21 == *(v6 + 40))
      {
        break;
      }

      if (sub_24A82DC04())
      {
        break;
      }

      v7 += 88;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    sub_24A6EF948(&v17, v16);

    v13 = v20;
    v14 = v21;
    *(a2 + 32) = v19;
    *(a2 + 48) = v13;
    *(a2 + 64) = v14;
    *(a2 + 80) = v22;
    result = *&v17;
    v15 = v18;
    *a2 = v17;
    *(a2 + 16) = v15;
  }

  else
  {
LABEL_7:

    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_24A73E844(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a7;
  v38 = a8;
  v35 = a6;
  v41 = a4;
  v42 = a2;
  v11 = sub_24A82CE54();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24A82CDF4();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v36 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  v17 = a3;
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v15;
    v21 = v20;
    v22 = swift_slowAlloc();
    v46 = a3;
    aBlock[0] = v22;
    *v21 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v23 = sub_24A82D624();
    v25 = sub_24A68761C(v23, v24, aBlock);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2048;
    *(v21 + 14) = qword_24A837250[v34];
    _os_log_impl(&dword_24A675000, v18, v19, "FMIPManager: performed action with error?: %s status?: %ld", v21, 0x16u);
    sub_24A6876E8(v22);
    MEMORY[0x24C21E1D0](v22, -1, -1);
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }

  v26 = v39;
  sub_24A82CDE4();
  v27 = swift_allocObject();
  v28 = v41;
  *(v27 + 16) = v42;
  *(v27 + 24) = a5;
  v29 = v37;
  v30 = v38;
  *(v27 + 32) = v35;
  *(v27 + 40) = v29;
  *(v27 + 48) = v30;
  *(v27 + 56) = v36;
  *(v27 + 64) = a3;
  *(v27 + 72) = v28;
  aBlock[4] = sub_24A7531A0;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC68A8;
  v31 = _Block_copy(aBlock);
  v32 = a3;

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v13, v26, v31);
  _Block_release(v31);
  (*(v44 + 8))(v13, v45);
  (*(v43 + 8))(v26, v40);
}

void sub_24A73EC30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t), uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {

    v15 = sub_24A757C70(a1);

    if (*(v15 + 16))
    {
      v16 = "FMIPManager: updateDevices";
      v17 = &unk_285DC6980;
      v18 = &unk_285DC6998;
      v19 = sub_24A7531EC;
    }

    else
    {

      sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
      v20 = *(type metadata accessor for FMIPDevice(0) - 8);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_24A8327A0;
      sub_24A69F134(a3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v15 + v21, type metadata accessor for FMIPDevice);
      v16 = "FMIPManager: removeDevices";
      v17 = &unk_285DC68E0;
      v18 = &unk_285DC68F8;
      v19 = sub_24A7531B8;
    }

    sub_24A73EE40(v15, v16, v17, v19, v18);
  }

  v23 = a6;
  a4(&v23, a1, a7, a8);
  v22 = *(*(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  FMIPManager.refresh(subsystems:)(&v22);
}

uint64_t sub_24A73EE40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v6 = v5;
  v8 = sub_24A82CE54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CDF4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v6;
    v20 = v13;
    v21 = v9;
    v22 = a1;
    v23 = v12;
    v24 = v8;
    v25 = v19;
    *v19 = 0;
    _os_log_impl(&dword_24A675000, v17, v18, v32, v19, 2u);
    v26 = v25;
    v8 = v24;
    v12 = v23;
    a1 = v22;
    v9 = v21;
    v13 = v20;
    v6 = v31;
    MEMORY[0x24C21E1D0](v26, -1, -1);
  }

  sub_24A82CDE4();
  v27 = swift_allocObject();
  *(v27 + 16) = v6;
  *(v27 + 24) = a1;
  aBlock[4] = v34;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v35;
  v28 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v11, v15, v28);
  _Block_release(v28);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, void (*a2)(char *, void *), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {
    v8 = qword_281515DC8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A82CDC4();
    sub_24A6797D0(v9, qword_281518F88);
    v10 = sub_24A82CD94();
    v11 = sub_24A82D504();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A675000, v10, v11, "FMIPManager: perform item action FMIPPlayUTSoundAction", v12, 2u);
      MEMORY[0x24C21E1D0](v12, -1, -1);
    }

    v14 = MEMORY[0x24C21D990](v13);
    sub_24A720E6C(a1, v6, a2, a3);
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v17 = 0;
    sub_24A72A0CC();
    v15 = swift_allocError();
    *v16 = 11;
    a2(&v17, v15);
  }
}

uint64_t sub_24A73F314(char *a1, void *a2, uint64_t (*a3)(void, void))
{
  v5 = *a1;
  v6 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = a2;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v18 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v13 = sub_24A82D624();
    v15 = sub_24A68761C(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = qword_24A8372E0[v5];
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPManager: performed item action with error?: %s status?: %ld", v11, 0x16u);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    v16 = v11;
    a3 = v18;
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  LOBYTE(v19) = v6;
  return a3(&v19, a2);
}

uint64_t FMIPManager.perform(action:completion:)(uint64_t a1, void (*a2)(char *, char *, void *), uint64_t a3)
{
  v7 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v10)
  {
    v11 = qword_281515DC8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_24A82CDC4();
    sub_24A6797D0(v12, qword_281518F88);
    v13 = sub_24A82CD94();
    v14 = sub_24A82D504();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24A675000, v13, v14, "FMIPManager: perform item action FMIPPlayUTSoundAction", v15, 2u);
      MEMORY[0x24C21E1D0](v15, -1, -1);
    }

    sub_24A7295F4(a1, v10, a2, a3);
  }

  else
  {
    v21 = 0;
    v17 = sub_24A82C8B4();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    sub_24A72A0CC();
    v18 = swift_allocError();
    *v19 = 11;
    a2(&v21, v9, v18);

    return sub_24A67F378(v9, &unk_27EF5CCB8, &qword_24A82FDB0);
  }
}

uint64_t sub_24A73F72C(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void, void))
{
  v7 = *a1;
  v8 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = a3;
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();

  if (os_log_type_enabled(v11, v12))
  {
    v20 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v15 = sub_24A82D624();
    v17 = sub_24A68761C(v15, v16, &v21);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = qword_24A8372E0[v7];
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: performed item action with error?: %s status?: %ld", v13, 0x16u);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    v18 = v13;
    a4 = v20;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  LOBYTE(v21) = v8;
  return a4(&v21, a2, a3);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, void (*a2)(uint64_t *, void, void, void *, uint64_t), void *a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {

    sub_24A72EF54(a1, v6, a2, a3);
  }

  else
  {
    v10 = 0;
    sub_24A72A0CC();
    v8 = swift_allocError();
    *v9 = 11;
    a2(&v10, 0, 0, v8, 2);
  }
}

uint64_t sub_24A73FA14(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void **, uint64_t, uint64_t, void *, uint64_t))
{
  v24 = *a1;
  v11 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = a4;
  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();

  if (os_log_type_enabled(v14, v15))
  {
    v23 = v11;
    v16 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v16 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v17 = sub_24A82D624();
    v19 = sub_24A68761C(v17, v18, &v25);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2048;
    *(v16 + 14) = qword_24A8372E0[v24];
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPManager: performed safe location action with error?: %s status?: %ld", v16, 0x16u);
    sub_24A6876E8(v22);
    MEMORY[0x24C21E1D0](v22, -1, -1);
    v20 = v16;
    v11 = v23;
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  LOBYTE(v25) = v11;
  return a6(&v25, a2, a3, a4, a5);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {
    v8 = qword_281515DC8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A82CDC4();
    sub_24A6797D0(v9, qword_281518F88);
    v10 = sub_24A82CD94();
    v11 = sub_24A82D504();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A675000, v10, v11, "FMIPManager: perform item action FMIPDisableTagSafetyAlertAction", v12, 2u);
      MEMORY[0x24C21E1D0](v12, -1, -1);
    }

    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a2;
    v14[4] = a3;
    v15 = *(v6 + 24);
    v16 = *(a1 + 16);
    v20[4] = sub_24A74F2D8;
    v20[5] = v14;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 1107296256;
    v20[2] = sub_24A7386AC;
    v20[3] = &unk_285DC5CD8;
    v17 = _Block_copy(v20);

    [v15 disableUTAppAlert:v16 completion:v17];
    _Block_release(v17);
  }

  else
  {
    sub_24A72A0CC();
    v18 = swift_allocError();
    *v19 = 11;
    a2();
  }
}

uint64_t sub_24A73FEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24A6A7448(0, 0);
  }

  return a3(a1);
}

void FMIPManager.perform(action:completion:)(void *a1, void (*a2)(uint64_t *, uint64_t, void *), void **a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {
    v7 = v3;
    v9 = qword_281515DC8;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);

    v11 = sub_24A82CD94();
    v12 = sub_24A82D504();

    if (os_log_type_enabled(v11, v12))
    {
      v23 = a2;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136315138;
      v15 = FMIPItemAction.debugDescription.getter();
      v17 = sub_24A68761C(v15, v16, v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: perform item action %s", v13, 0xCu);
      sub_24A6876E8(v14);
      MEMORY[0x24C21E1D0](v14, -1, -1);
      v18 = v13;
      a2 = v23;
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    v20 = MEMORY[0x24C21D990](v19);
    sub_24A72135C(a1, v6, v7, a1, a2, a3);
    objc_autoreleasePoolPop(v20);
  }

  else
  {
    LOBYTE(v24[0]) = 0;
    sub_24A72A0CC();
    v21 = swift_allocError();
    *v22 = 11;
    a2(v24, 0, v21);
  }
}

uint64_t sub_24A7401BC(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, void))
{
  v9 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = v9;
  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518F88);
  v12 = a3;
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();

  v28 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v17 = sub_24A82D624();
    v19 = a6;
    v20 = sub_24A68761C(v17, v18, &v29);

    *(v15 + 4) = v20;
    a6 = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = qword_24A8372E0[v9];
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPManager: performed item action with error?: %s status?: %ld", v15, 0x16u);
    sub_24A6876E8(v16);
    v21 = v16;
    v10 = v9;
    MEMORY[0x24C21E1D0](v21, -1, -1);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  if (a2 && !*(a2 + 16))
  {
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v22 = *(type metadata accessor for FMIPItem(0) - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = v10;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24A8327A0;
    sub_24A69F134(a5 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v25 + v23, type metadata accessor for FMIPItem);
    sub_24A751A34(v25, "FMIPManager: removeItems %@", &unk_285DC67C8, sub_24A753164, &unk_285DC67E0);
    v10 = v24;
  }

  LOBYTE(v29) = v10;
  return a6(&v29, a2, v28);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, void (*a2)(void, void, void), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {
    v7 = qword_281515DC8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_24A82CDC4();
    sub_24A6797D0(v8, qword_281518F88);

    v9 = sub_24A82CD94();
    v10 = sub_24A82D504();

    if (os_log_type_enabled(v9, v10))
    {
      v30 = a2;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v11 = 136315138;
      v13 = FMIPPrewarmAction.debugDescription.getter();
      v15 = sub_24A68761C(v13, v14, &v31);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPManager: perform item action %s", v11, 0xCu);
      sub_24A6876E8(v12);
      MEMORY[0x24C21E1D0](v12, -1, -1);
      v16 = v11;
      a2 = v30;
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }

    v18 = MEMORY[0x24C21D990](v17);
    type metadata accessor for FMIPPrewarmConnectAction();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;

      sub_24A72A134(v20, v6, a2, a3);
    }

    else
    {
      type metadata accessor for FMIPPrewarmDisconnectAction();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        swift_retain_n();
        v25 = sub_24A82CD94();
        v26 = sub_24A82D4E4();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_24A675000, v25, v26, "FMIPItemGroupAction: cannot map action to request", v27, 2u);
          MEMORY[0x24C21E1D0](v27, -1, -1);
        }

        v32 = 0;
        sub_24A72A0CC();
        v28 = swift_allocError();
        *v29 = 6;
        sub_24A74087C(&v32, 0, v28, a2);

        goto LABEL_14;
      }

      v24 = v23;

      sub_24A72A4C4(v24, v6, a2, a3);
    }

LABEL_14:
    objc_autoreleasePoolPop(v18);

    return;
  }

  v33 = 0;
  sub_24A72A0CC();
  v21 = swift_allocError();
  *v22 = 11;
  a2(&v33, 0, v21);
}

uint64_t sub_24A74087C(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void, void))
{
  v7 = *a1;
  v8 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = a3;
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();

  if (os_log_type_enabled(v11, v12))
  {
    v20 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446466;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v15 = sub_24A82D624();
    v17 = sub_24A68761C(v15, v16, &v21);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = qword_24A8372E0[v7];
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: performed item action with error?: %{public}s status?: %ld", v13, 0x16u);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    v18 = v13;
    a4 = v20;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  LOBYTE(v21) = v8;
  return a4(&v21, a2, a3);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, void (*a2)(char *, void, void *), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {
    v8 = qword_281515DC8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A82CDC4();
    sub_24A6797D0(v9, qword_281518F88);

    v10 = sub_24A82CD94();
    v11 = sub_24A82D504();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = FMIPItemGroupAction.description.getter();
      v16 = sub_24A68761C(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_24A675000, v10, v11, "FMIPManager: perform item group action %s", v12, 0xCu);
      sub_24A6876E8(v13);
      MEMORY[0x24C21E1D0](v13, -1, -1);
      MEMORY[0x24C21E1D0](v12, -1, -1);
    }

    sub_24A729F08(a1, v6, a2, a3);
  }

  else
  {
    v20 = 0;
    sub_24A72A0CC();
    v17 = swift_allocError();
    *v18 = 11;
    a2(&v20, 0, v17);
  }
}

uint64_t sub_24A740C90(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void, void))
{
  v7 = *a1;
  v8 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = a3;
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();

  if (os_log_type_enabled(v11, v12))
  {
    v20 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v15 = sub_24A82D624();
    v17 = sub_24A68761C(v15, v16, &v21);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = qword_24A8372E0[v7];
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: performed item group action with error?: %s status?: %ld", v13, 0x16u);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    v18 = v13;
    a4 = v20;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  LOBYTE(v21) = v8;
  return a4(&v21, a2, a3);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24A6C2474(a1, a2, a3);
}

{
  sub_24A6C2C34(a1, a2, a3);
}

{
  sub_24A6C1F58(a1, a2, a3);
}

Swift::Void __swiftcall FMIPManager.updateLastLocationStatus(enabled:)(Swift::Bool enabled)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    aBlock = 0;
    *v9 = 136315138;
    v31 = 0xE000000000000000;
    if (enabled)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (enabled)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x24C21C9E0](v11, v12);

    v13 = sub_24A68761C(aBlock, v31, &v29);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPManager: updateLastLocationStatus enabled?: %s", v9, 0xCu);
    sub_24A6876E8(v10);
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v14 = objc_opt_self();
  v15 = sub_24A82CF94();
  v16 = sub_24A82CF94();
  v17 = [v14 integerForKey:v15 inDomain:v16];

  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    sub_24A82CA24();
    v19 = sub_24A82CF94();
    v20 = sub_24A82CF94();
    [v14 setInteger:v18 forKey:v19 inDomain:v20];

    v21 = sub_24A82C994();
    v22 = sub_24A82CF94();
    v23 = sub_24A82CF94();
    [v14 setDate:v21 forKey:v22 inDomain:v23];

    v24 = sub_24A82CF94();
    v25 = sub_24A82CF94();
    [v14 setBool:enabled forKey:v24 inDomain:v25];

    v26 = [objc_opt_self() sharedInstance];
    v34 = sub_24A7413E4;
    v35 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_24A7386AC;
    v33 = &unk_285DC5D00;
    v27 = _Block_copy(&aBlock);
    [v26 setLowBatteryLocateEnabled:enabled withCompletion:v27];
    _Block_release(v27);

    (*(v3 + 8))(v5, v2);
  }
}

void sub_24A7413E4(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v3 = sub_24A82CDC4();
    sub_24A6797D0(v3, qword_281518F88);
    v4 = a1;
    v5 = sub_24A82CD94();
    v6 = sub_24A82D504();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_24A82DC74();
      v11 = sub_24A68761C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: updateLastLocationStatus error setting low battery state in FMIP: %s", v7, 0xCu);
      sub_24A6876E8(v8);
      MEMORY[0x24C21E1D0](v8, -1, -1);
      MEMORY[0x24C21E1D0](v7, -1, -1);
    }

    else
    {
    }
  }
}

void FMIPManager.isCompanion(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_ownerSession);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_24A74F2E4;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A7386B4;
  v8[3] = &unk_285DC5D50;
  v7 = _Block_copy(v8);

  [v5 activeCompanionWithCompletion_];
  _Block_release(v7);
}

void FMIPManager.handle(url:completion:)(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v4 = v3;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPManager: handle URL", v11, 2u);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  v12 = *(v4 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_urlHandler);
  v13 = MEMORY[0x24C21D990]();
  sub_24A730AC4(a1, a2, a3, v12);

  objc_autoreleasePoolPop(v13);
}

uint64_t sub_24A7417C4(uint64_t a1, uint64_t a2)
{
  v79 = sub_24A82CDF4();
  v4 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_24A82CE54();
  v6 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v66 = (&v59 - v10);
  v11 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v59 - v15);
  v17 = type metadata accessor for FMIPDevice(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v74 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = (&v59 - v21);
  v84 = a1;
  v64 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v23 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  result = swift_beginAccess();
  v61 = *(a2 + 16);
  if (!v61)
  {
    return result;
  }

  v25 = *(v23 + 80);
  v26 = v6;
  v27 = *(v25 + 16);
  v73 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue;
  v28 = *(v18 + 80);
  v29 = (v28 + 32) & ~v28;
  v60 = a2 + v29;
  v63 = v29;
  v65 = v25 + v29;
  v80 = *(v18 + 72);
  v81 = (v9 + 48);
  v82 = (v9 + 56);
  v72 = v28;
  v71 = (v28 + 24) & ~v28;
  v70 = v89;
  v69 = (v4 + 8);
  v68 = (v26 + 8);
  v67 = v25;

  v30 = 0;
  v86 = v22;
  v83 = v27;
  while (2)
  {
    v62 = v30 + 1;
    result = sub_24A69F134(v60 + v80 * v30, v22, type metadata accessor for FMIPDevice);
    v31 = 0;
    while (1)
    {
      if (v31 == v83)
      {
        v44 = 1;
        v31 = v83;
      }

      else
      {
        if ((v31 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return result;
        }

        if (v31 >= *(v67 + 16))
        {
          goto LABEL_31;
        }

        v45 = v65 + v31 * v80;
        v46 = *(v8 + 48);
        v47 = v66;
        *v66 = v31;
        sub_24A69F134(v45, v47 + v46, type metadata accessor for FMIPDevice);
        sub_24A67E8FC(v47, v14, &unk_27EF5E0C0, &unk_24A837180);
        v44 = 0;
        ++v31;
      }

      (*v82)(v14, v44, 1, v8);
      sub_24A67E8FC(v14, v16, &qword_27EF5DF70, &unk_24A837730);
      if ((*v81)(v16, 1, v8) == 1)
      {
        break;
      }

      v48 = *v16;
      v49 = (v16 + *(v8 + 48));
      v50 = *v86;
      v51 = v86[1];
      v53 = *v49;
      v52 = v49[1];

      sub_24A69F2C4(v49, type metadata accessor for FMIPDevice);
      if (v50 == v53 && v51 == v52)
      {

        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_6;
        }

LABEL_21:
        v56 = *(v84 + v64);
        swift_beginAccess();
        v57 = *(v56 + 80);
        if (v48 < v57[2])
        {
          swift_beginAccess();

          result = swift_isUniquelyReferenced_nonNull_native();
          *(v56 + 80) = v57;
          if ((result & 1) == 0)
          {
            result = sub_24A766CD4(v57);
            v57 = result;
            *(v56 + 80) = result;
          }

          if (v48 >= v57[2])
          {
            goto LABEL_32;
          }

          sub_24A753990(v86, v57 + v63 + v48 * v80);
          *(v56 + 80) = v57;
          swift_endAccess();
          if (*(v56 + 24) == 1)
          {
            if (*(v56 + 328))
            {

              sub_24A761CBC(v58);
            }
          }
        }

LABEL_6:
        v32 = v84;
        v85 = *(v84 + v73);
        v33 = v74;
        sub_24A69F134(v86, v74, type metadata accessor for FMIPDevice);
        v34 = v71;
        v35 = swift_allocObject();
        *(v35 + 16) = v32;
        sub_24A6A2390(v33, v35 + v34, type metadata accessor for FMIPDevice);
        v89[2] = sub_24A7538E4;
        v89[3] = v35;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v89[0] = sub_24A699BA0;
        v89[1] = &unk_285DC69E8;
        v36 = _Block_copy(aBlock);

        v37 = v16;
        v38 = v8;
        v39 = v14;
        v40 = v76;
        sub_24A82CE24();
        v87 = MEMORY[0x277D84F90];
        sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
        sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
        v41 = v78;
        v42 = v79;
        sub_24A82D6B4();
        MEMORY[0x24C21CE90](0, v40, v41, v36);
        _Block_release(v36);
        (*v69)(v41, v42);
        v43 = v40;
        v14 = v39;
        v8 = v38;
        v16 = v37;
        (*v68)(v43, v77);
      }

      else
      {
        v55 = sub_24A82DC04();

        if (v55)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_6;
          }

          goto LABEL_21;
        }
      }
    }

    v22 = v86;
    sub_24A69F2C4(v86, type metadata accessor for FMIPDevice);
    v30 = v62;
    if (v62 != v61)
    {
      continue;
    }
  }
}

uint64_t sub_24A7420F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A742194(uint64_t a1, uint64_t a2)
{
  v82 = sub_24A82CDF4();
  v4 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_24A82CE54();
  v6 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v69 = (&v62 - v10);
  v11 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v62 - v15);
  v65 = type metadata accessor for FMIPDevice(0);
  v17 = *(v65 - 8);
  v18 = MEMORY[0x28223BE20](v65);
  v77 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v19;
  MEMORY[0x28223BE20](v18);
  v83 = &v62 - v20;
  v88 = a1;
  v67 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v21 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  result = swift_beginAccess();
  v63 = *(a2 + 16);
  if (!v63)
  {
    return result;
  }

  v23 = *(v21 + 80);
  v24 = *(v23 + 16);
  v76 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue;
  v25 = *(v17 + 80);
  v26 = (v25 + 32) & ~v25;
  v62 = a2 + v26;
  v66 = v26;
  v68 = v23 + v26;
  v27 = *(v17 + 72);
  v86 = (v9 + 56);
  v84 = v27;
  v85 = (v9 + 48);
  v75 = v25;
  v74 = (v25 + 24) & ~v25;
  v73 = v92;
  v72 = (v4 + 8);
  v71 = (v6 + 8);
  v70 = v23;

  v28 = 0;
  v29 = v83;
  v87 = v24;
  while (2)
  {
    v64 = v28 + 1;
    result = sub_24A69F134(v62 + v84 * v28, v29, type metadata accessor for FMIPDevice);
    v89 = 0;
    while (1)
    {
      if (v89 == v87)
      {
        v43 = 1;
        v44 = v87;
      }

      else
      {
        if ((v89 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        if (v89 >= *(v70 + 16))
        {
          goto LABEL_36;
        }

        v44 = v89 + 1;
        v45 = v68 + v89 * v84;
        v46 = *(v8 + 48);
        v47 = v69;
        *v69 = v89;
        sub_24A69F134(v45, v47 + v46, type metadata accessor for FMIPDevice);
        sub_24A67E8FC(v47, v14, &unk_27EF5E0C0, &unk_24A837180);
        v43 = 0;
      }

      (*v86)(v14, v43, 1, v8);
      sub_24A67E8FC(v14, v16, &qword_27EF5DF70, &unk_24A837730);
      if ((*v85)(v16, 1, v8) == 1)
      {
        break;
      }

      v89 = v44;
      v48 = *v16;
      v49 = (v16 + *(v8 + 48));
      v50 = *v29;
      v51 = v29[1];
      v53 = *v49;
      v52 = v49[1];

      sub_24A69F2C4(v49, type metadata accessor for FMIPDevice);
      if (v50 == v53 && v51 == v52)
      {

        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_6;
        }

LABEL_21:
        v56 = *(v88 + v67);
        swift_beginAccess();
        v57 = *(v56 + 80);
        if (v48 < v57[2])
        {
          swift_beginAccess();

          result = swift_isUniquelyReferenced_nonNull_native();
          *(v56 + 80) = v57;
          if ((result & 1) == 0)
          {
            result = sub_24A766CD4(v57);
            v57 = result;
            *(v56 + 80) = result;
          }

          v58 = v57[2];
          if (v48 >= v58)
          {
            goto LABEL_37;
          }

          v59 = v58 - 1;
          v60 = v57 + v66 + v48 * v84;
          sub_24A69F2C4(v60, type metadata accessor for FMIPDevice);
          if (v84 > 0 || v60 >= v60 + v84 + (v59 - v48) * v84)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57[2] = v59;
          *(v56 + 80) = v57;
          swift_endAccess();
          if (*(v56 + 24))
          {
            if (*(v56 + 328))
            {

              sub_24A761CBC(v61);
            }
          }
        }

LABEL_6:
        v30 = v88;
        v31 = v29;
        v32 = v77;
        sub_24A69F134(v31, v77, type metadata accessor for FMIPDevice);
        v33 = v74;
        v34 = swift_allocObject();
        *(v34 + 16) = v30;
        sub_24A6A2390(v32, v34 + v33, type metadata accessor for FMIPDevice);
        v92[2] = sub_24A7531C0;
        v92[3] = v34;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v92[0] = sub_24A699BA0;
        v92[1] = &unk_285DC6948;
        v35 = _Block_copy(aBlock);

        v36 = v16;
        v37 = v8;
        v38 = v14;
        v39 = v79;
        sub_24A82CE24();
        v90 = MEMORY[0x277D84F90];
        sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
        sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
        v40 = v81;
        v41 = v82;
        sub_24A82D6B4();
        MEMORY[0x24C21CE90](0, v39, v40, v35);
        _Block_release(v35);
        (*v72)(v40, v41);
        v42 = v39;
        v14 = v38;
        v8 = v37;
        v16 = v36;
        v29 = v83;
        (*v71)(v42, v80);
      }

      else
      {
        v55 = sub_24A82DC04();

        if (v55)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_6;
          }

          goto LABEL_21;
        }
      }
    }

    sub_24A69F2C4(v29, type metadata accessor for FMIPDevice);
    v28 = v64;
    if (v64 != v63)
    {
      continue;
    }
  }
}

uint64_t sub_24A742B28(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 48))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A742BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0F0, &unk_24A837170);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v88 = (&v77 - v6);
  v103 = sub_24A82CDF4();
  v7 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_24A82CE54();
  v9 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A6BBA94(&qword_27EF5DF68, &unk_24A837750);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v77 - v15);
  v83 = type metadata accessor for FMIPItem(0);
  v17 = *(v83 - 8);
  v18 = MEMORY[0x28223BE20](v83);
  v97 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v99 = &v77 - v21;
  v98 = v22;
  MEMORY[0x28223BE20](v20);
  v24 = &v77 - v23;
  v109 = a1;
  v86 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v25 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  swift_beginAccess();
  v81 = *(a2 + 16);
  if (v81)
  {
    v26 = *(v25 + 280);
    v107 = *(v26 + 16);
    v95 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue;
    v27 = *(v17 + 80);
    v28 = (v27 + 32) & ~v27;
    v80 = a2 + v28;
    v84 = v28;
    v87 = v26 + v28;
    v29 = *(v17 + 72);
    v106 = (v5 + 56);
    v104 = v29;
    v105 = (v5 + 48);
    v94 = v27;
    v93 = (v27 + 24) & ~v27;
    v92 = &v113;
    v79 = v7;
    v91 = (v7 + 8);
    v78 = v9;
    v90 = (v9 + 8);
    v89 = v26;

    v30 = 0;
    *&v31 = 136315394;
    v85 = v31;
    v96 = v4;
    v108 = v14;
LABEL_4:
    v82 = v30 + 1;
    result = sub_24A69F134(v80 + v104 * v30, v24, type metadata accessor for FMIPItem);
    v33 = 0;
    while (1)
    {
      if (v33 == v107)
      {
        v42 = 1;
        v33 = v107;
        v43 = v108;
      }

      else
      {
        v43 = v108;
        if ((v33 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        if (v33 >= *(v89 + 16))
        {
          goto LABEL_41;
        }

        v44 = v87 + v33 * v104;
        v45 = *(v4 + 48);
        v46 = v88;
        *v88 = v33;
        sub_24A69F134(v44, v46 + v45, type metadata accessor for FMIPItem);
        sub_24A67E8FC(v46, v43, &unk_27EF5E0F0, &unk_24A837170);
        v42 = 0;
        ++v33;
      }

      (*v106)(v43, v42, 1, v4);
      sub_24A67E8FC(v43, v16, &qword_27EF5DF68, &unk_24A837750);
      if ((*v105)(v16, 1, v4) == 1)
      {
        sub_24A69F2C4(v24, type metadata accessor for FMIPItem);
        v30 = v82;
        if (v82 != v81)
        {
          goto LABEL_4;
        }

        v7 = v79;
        v9 = v78;
        goto LABEL_39;
      }

      v47 = *v16;
      v48 = v16 + *(v4 + 48);
      v49 = *(v24 + 44);
      v50 = *(v24 + 45);
      v52 = *(v48 + 352);
      v51 = *(v48 + 360);

      sub_24A69F2C4(v48, type metadata accessor for FMIPItem);
      if (v49 == v52 && v50 == v51)
      {
        break;
      }

      v54 = sub_24A82DC04();

      if (v54)
      {
LABEL_20:
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v55 = sub_24A82CDC4();
        sub_24A6797D0(v55, qword_281518F88);
        v56 = v99;
        sub_24A69F134(v24, v99, type metadata accessor for FMIPItem);
        v57 = sub_24A82CD94();
        v58 = sub_24A82D504();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          aBlock = v60;
          *v59 = v85;
          v61 = FMIPItem.debugDescription.getter();
          v62 = v56;
          v64 = v63;
          sub_24A69F2C4(v62, type metadata accessor for FMIPItem);
          v65 = sub_24A68761C(v61, v64, &aBlock);

          *(v59 + 4) = v65;
          *(v59 + 12) = 2048;
          *(v59 + 14) = v47;
          _os_log_impl(&dword_24A675000, v57, v58, "FMIPManager: removeItems item removed %s at index %ld", v59, 0x16u);
          sub_24A6876E8(v60);
          MEMORY[0x24C21E1D0](v60, -1, -1);
          MEMORY[0x24C21E1D0](v59, -1, -1);

          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_6;
          }
        }

        else
        {

          sub_24A69F2C4(v56, type metadata accessor for FMIPItem);
          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_6;
          }
        }

        v66 = *(v109 + v86);
        swift_beginAccess();
        if (v47 < *(*(v66 + 80) + 16))
        {
          swift_beginAccess();
          v67 = *(v66 + 280);

          result = swift_isUniquelyReferenced_nonNull_native();
          *(v66 + 280) = v67;
          if ((result & 1) == 0)
          {
            result = sub_24A766CE8(v67);
            v67 = result;
            *(v66 + 280) = result;
          }

          v68 = v104;
          v69 = v67[2];
          if (v47 >= v69)
          {
            goto LABEL_42;
          }

          v70 = v69 - 1;
          v71 = v67 + v84 + v47 * v104;
          sub_24A69F2C4(v71, type metadata accessor for FMIPItem);
          if (v68 > 0 || v71 >= v71 + v68 + (v70 - v47) * v68)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v68)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v67[2] = v70;
          *(v66 + 280) = v67;
          swift_endAccess();
          if (*(v66 + 24))
          {
            if (*(v66 + 312))
            {

              sub_24A7620A4(v72);
            }
          }
        }

LABEL_6:
        v34 = v109;
        v35 = v97;
        sub_24A69F134(v24, v97, type metadata accessor for FMIPItem);
        v36 = v93;
        v37 = swift_allocObject();
        *(v37 + 16) = v34;
        sub_24A6A2390(v35, v37 + v36, type metadata accessor for FMIPItem);
        v115 = sub_24A753174;
        v116 = v37;
        aBlock = MEMORY[0x277D85DD0];
        v112 = 1107296256;
        v113 = sub_24A699BA0;
        v114 = &unk_285DC6858;
        v38 = _Block_copy(&aBlock);

        v39 = v100;
        sub_24A82CE24();
        v110 = MEMORY[0x277D84F90];
        sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
        sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
        v40 = v102;
        v41 = v103;
        sub_24A82D6B4();
        MEMORY[0x24C21CE90](0, v39, v40, v38);
        _Block_release(v38);
        (*v91)(v40, v41);
        (*v90)(v39, v101);

        v4 = v96;
      }
    }

    goto LABEL_20;
  }

LABEL_39:
  v115 = sub_24A75316C;
  v116 = v109;
  aBlock = MEMORY[0x277D85DD0];
  v112 = 1107296256;
  v113 = sub_24A699BA0;
  v114 = &unk_285DC6808;
  v73 = _Block_copy(&aBlock);

  v74 = v100;
  sub_24A82CE24();
  v110 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v75 = v102;
  v76 = v103;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v74, v75, v73);
  _Block_release(v73);
  (*(v7 + 8))(v75, v76);
  (*(v9 + 8))(v74, v101);
}

uint64_t sub_24A7438B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 128))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A743954(uint64_t a1)
{
  sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
  sub_24A82D574();
  v2 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 112))(a1, v6, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = v6;

  return sub_24A69CA60();
}

uint64_t FMIPManager.debugDescription.getter()
{
  v0 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v0);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v1 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v1);

  return 60;
}

uint64_t FMIPManager.hash(into:)(uint64_t a1)
{
  sub_24A82CAA4();
  sub_24A679FDC(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_24A82CF64();
}

uint64_t sub_24A743BB8()
{
  v0 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v0);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v1 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v1);

  return 60;
}

void sub_24A743CA4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v3 = sub_24A82CDC4();
    sub_24A6797D0(v3, qword_281518F88);
    oslog = sub_24A82CD94();
    v4 = sub_24A82D504();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24A675000, oslog, v4, "FMIPManager: error getting status of lowBatteryLocateEnabled", v5, 2u);
      MEMORY[0x24C21E1D0](v5, -1, -1);
    }
  }

  else if ((a1 & 1) == 0)
  {
    v6 = a3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 88))(a3, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24A743E14(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = v3 | 1;
  v5 = v3;
  return sub_24A6ADCC4(&v5);
}

uint64_t sub_24A743E70(uint64_t a1)
{
  sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
  sub_24A82D574();
  sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
  sub_24A82D574();
  sub_24A6BBA94(&qword_27EF5E170, &qword_24A836D58);
  sub_24A82D574();
  sub_24A69D570(v7, v7, v7);

  v2 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    sub_24A82D574();
    (*(v3 + 32))(a1, v6, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  sub_24A82D574();
  sub_24A73B840(v6, 0);
}

uint64_t sub_24A744094(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 64))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A744130(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = *(a2 + 48);
    v10[2] = *(a2 + 32);
    v10[3] = v8;
    v10[4] = *(a2 + 64);
    v11 = *(a2 + 80);
    v9 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v9;
    (*(v6 + 56))(a1, v10, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7441EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = *(a2 + 48);
    v12[2] = *(a2 + 32);
    v12[3] = v10;
    v12[4] = *(a2 + 64);
    v13 = *(a2 + 80);
    v11 = *(a2 + 16);
    v12[0] = *a2;
    v12[1] = v11;
    (*(v8 + 16))(a1, v12, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7442B8(uint64_t a1, uint64_t (**a2)(uint64_t a1))
{
  v321 = a2;
  v298 = sub_24A82CDF4();
  v297 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v296 = &v284 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_24A82CE54();
  v295 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v294 = &v284 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_24A82CA34();
  v323 = *(v320 - 8);
  v5 = MEMORY[0x28223BE20](v320);
  v319 = &v284 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v318 = &v284 - v7;
  v291 = type metadata accessor for FMIPItem(0);
  v8 = *(v291 - 8);
  v9 = MEMORY[0x28223BE20](v291);
  v288 = &v284 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v285 = &v284 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v287 = &v284 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v292 = &v284 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v293 = &v284 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v284 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v284 - v22;
  v290 = *(*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision);
  v301 = a1;
  v300 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v24 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  v25 = *(v24 + 192);
  swift_beginAccess();
  v26 = *(v24 + 280);
  v27 = *(v26 + 16);
  v326 = v8;
  v316 = v25;
  v325 = v27;
  if (v27)
  {
    v324 = (v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
    swift_bridgeObjectRetain_n();

    v28 = 0;
    v29 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v28 >= *(v26 + 16))
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        result = sub_24A82DC44();
        __break(1u);
        return result;
      }

      v30 = *(v8 + 72);
      sub_24A69F134(v324 + v30 * v28, v23, type metadata accessor for FMIPItem);
      v32 = *(v23 + 44);
      v31 = *(v23 + 45);
      sub_24A69F134(v23, v21, type metadata accessor for FMIPItem);
      v33 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v33;
      v35 = sub_24A6A2D48(v32, v31);
      v37 = v33[1].n128_u64[0];
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        goto LABEL_171;
      }

      v41 = v36;
      if (v33[1].n128_u64[1] < v40)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v46 = v35;
      sub_24A786CD4();
      v35 = v46;
      v29 = aBlock;
      if ((v41 & 1) == 0)
      {
LABEL_12:
        v29[4].n128_u64[v35 >> 6] |= 1 << v35;
        v43 = (v29[3].n128_u64[0] + 16 * v35);
        *v43 = v32;
        v43[1] = v31;
        sub_24A6A2390(v21, v29[3].n128_u64[1] + v35 * v30, type metadata accessor for FMIPItem);
        v44 = v29[1].n128_u64[0];
        v39 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v39)
        {
          goto LABEL_172;
        }

        v29[1].n128_u64[0] = v45;

        goto LABEL_4;
      }

LABEL_3:
      sub_24A751378(v21, v29[3].n128_u64[1] + v35 * v30);
LABEL_4:
      ++v28;
      sub_24A69F2C4(v23, type metadata accessor for FMIPItem);
      v8 = v326;
      if (v325 == v28)
      {

        v47 = v316;
        goto LABEL_18;
      }
    }

    sub_24A782768(v40, isUniquelyReferenced_nonNull_native);
    v35 = sub_24A6A2D48(v32, v31);
    if ((v41 & 1) != (v42 & 1))
    {
      goto LABEL_175;
    }

LABEL_11:
    v29 = aBlock;
    if ((v41 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  swift_bridgeObjectRetain_n();
  v29 = MEMORY[0x277D84F98];
  v47 = v25;
LABEL_18:
  v48 = v321 + 8;
  v49 = 1 << *(v321 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v321[8];
  v289 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_useRealtimeForItems;
  v52 = (v49 + 63) >> 6;
  v317 = (v323 + 8);

  v53 = 0;
  *&v54 = 136315651;
  v303 = v54;
  *&v54 = 136315394;
  v286 = v54;
  *&v54 = 136315138;
  v299 = v54;
  v304 = v47;
  v307 = v48;
  v306 = v52;
  v305 = v29;
  while (v51)
  {
LABEL_26:
    v56 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v57 = v56 | (v53 << 6);
    v58 = (v321[6] + 16 * v57);
    v59 = *v58;
    v60 = v58[1];
    v61 = v321[7] + 24 * v57;
    v315 = *v61;
    v314 = v61[1];
    v313 = v61[2];
    v312 = v61[3];
    v62 = *(v61 + 1);
    v63 = *(v61 + 2);
    v64 = v316;
    v65 = v316[1].n128_u64[0];

    v66 = v62;
    v323 = v59;
    if (v65 && (v67 = sub_24A6A2D48(v59, v60), (v68 & 1) != 0))
    {
      v69 = (v64[3].n128_u64[1] + 24 * v67);
      v310 = *v69;
      v308 = v69[1];
      v309 = v69[2];
      v70 = v69[3];
      v71 = *(v69 + 2);
      v72 = qword_281515DC8;
      v73 = *(v69 + 1);
      if (v72 != -1)
      {
        swift_once();
      }

      v74 = sub_24A82CDC4();
      v75 = sub_24A6797D0(v74, qword_281518F88);

      v76 = v66;
      v77 = v73;
      v311 = v75;
      v78 = v60;
      v79 = sub_24A82CD94();
      v80 = sub_24A82D504();

      v81 = os_log_type_enabled(v79, v80);
      v324 = v77;
      v325 = v76;
      v322 = v78;
      if (v81)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v334 = v83;
        *v82 = v303;
        *(v82 + 4) = sub_24A68761C(v323, v78, &v334);
        *(v82 + 12) = 2081;
        LOBYTE(aBlock) = v315;
        BYTE1(aBlock) = v314;
        BYTE2(aBlock) = v313;
        BYTE3(aBlock) = v312;
        v329 = v325;
        v330 = *&v63;
        v84 = FMIPLocation.debugDescription.getter();
        v86 = sub_24A68761C(v84, v85, &v334);

        *(v82 + 14) = v86;
        *(v82 + 22) = 2081;
        v77 = v324;
        LOBYTE(aBlock) = v310;
        BYTE1(aBlock) = v308;
        BYTE2(aBlock) = v309;
        BYTE3(aBlock) = v70;
        v329 = v324;
        v330 = *&v71;
        v87 = FMIPLocation.debugDescription.getter();
        v89 = sub_24A68761C(v87, v88, &v334);

        *(v82 + 24) = v89;
        _os_log_impl(&dword_24A675000, v79, v80, "FMIPManager: didReceive location for identifier: %s new %{private}s, old: %{private}s", v82, 0x20u);
        swift_arrayDestroy();
        v90 = v83;
        v76 = v325;
        MEMORY[0x24C21E1D0](v90, -1, -1);
        MEMORY[0x24C21E1D0](v82, -1, -1);
      }

      v91 = v305;
      v92 = [v76 timestamp];
      v93 = v318;
      sub_24A82C9F4();

      v94 = [v77 timestamp];
      v95 = v319;
      sub_24A82C9F4();

      LOBYTE(v94) = sub_24A82C9A4();
      v96 = *v317;
      v97 = v95;
      v98 = v320;
      (*v317)(v97, v320);
      v96(v93, v98);
      if (v94)
      {
        LOBYTE(aBlock) = v70;
        if (FMIPLocationType.rawValue.getter() == 0x656D69746C616572 && v99 == 0xE800000000000000)
        {

          v100 = v325;
LABEL_42:
          v105 = [v100 timestamp];
          v106 = v318;
          sub_24A82C9F4();

          sub_24A82C9D4();
          v108 = v107;
          v109 = v320;
          v96(v106, v320);
          v110 = [v324 timestamp];
          v111 = v319;
          sub_24A82C9F4();

          sub_24A82C9D4();
          v113 = v112;
          v96(v111, v109);
          v114 = v322;

          v115 = sub_24A82CD94();
          v116 = sub_24A82D504();

          v117 = os_log_type_enabled(v115, v116);
          if (v108 - v113 > 15.0)
          {
            if (v117)
            {
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              aBlock = v135;
              *v134 = v286;
              v136 = v323;
              *(v134 + 4) = sub_24A68761C(v323, v114, &aBlock);
              *(v134 + 12) = 2048;
              *(v134 + 14) = 0x402E000000000000;
              _os_log_impl(&dword_24A675000, v115, v116, "FMIPManager: Overriding realtime location for %s because %f miliseconds threshold is expired", v134, 0x16u);
              sub_24A6876E8(v135);
              MEMORY[0x24C21E1D0](v135, -1, -1);
              MEMORY[0x24C21E1D0](v134, -1, -1);
            }

            else
            {

              v136 = v323;
            }

            v168 = v325;
            v169 = v304;
            v170 = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v169;
            if (v314)
            {
              v171 = 256;
            }

            else
            {
              v171 = 0;
            }

            v172 = v171 | v315;
            if (v313)
            {
              v173 = 0x10000;
            }

            else
            {
              v173 = 0;
            }

            sub_24A784C04(v172 | v173 | (v312 << 24), v168, v136, v114, v170, v63);

            v304 = aBlock;
          }

          else
          {
            if (v117)
            {
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              aBlock = v119;
              *v118 = v299;
              v120 = sub_24A68761C(v323, v114, &aBlock);

              *(v118 + 4) = v120;
              _os_log_impl(&dword_24A675000, v115, v116, "FMIPManager: Keeping realtime location for %s ", v118, 0xCu);
              sub_24A6876E8(v119);
              MEMORY[0x24C21E1D0](v119, -1, -1);
              MEMORY[0x24C21E1D0](v118, -1, -1);
            }

            else
            {
            }
          }

          goto LABEL_47;
        }

        v104 = sub_24A82DC04();

        v100 = v325;
        if (v104)
        {
          goto LABEL_42;
        }

        v160 = v325;
        v161 = v322;

        v162 = sub_24A82CD94();
        v163 = sub_24A82D504();

        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          v165 = swift_slowAlloc();
          aBlock = v165;
          *v164 = v299;
          v166 = v323;
          *(v164 + 4) = sub_24A68761C(v323, v161, &aBlock);
          _os_log_impl(&dword_24A675000, v162, v163, "FMIPManager: Overriding location because it's newer: %s ", v164, 0xCu);
          sub_24A6876E8(v165);
          MEMORY[0x24C21E1D0](v165, -1, -1);
          v167 = v164;
          v160 = v325;
          MEMORY[0x24C21E1D0](v167, -1, -1);
        }

        else
        {

          v166 = v323;
        }

        v203 = v160;
        v204 = v304;
        v205 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v204;
        if (v314)
        {
          v206 = 256;
        }

        else
        {
          v206 = 0;
        }

        v207 = v206 | v315;
        if (v313)
        {
          v208 = 0x10000;
        }

        else
        {
          v208 = 0;
        }

        sub_24A784C04(v207 | v208 | (v312 << 24), v203, v166, v161, v205, v63);

        goto LABEL_127;
      }

      v101 = v322;
      if (!v91[1].n128_u64[0] || (v102 = sub_24A6A2D48(v323, v322), (v103 & 1) == 0))
      {

        goto LABEL_39;
      }

      v137 = v292;
      sub_24A69F134(v91[3].n128_u64[1] + *(v326 + 72) * v102, v292, type metadata accessor for FMIPItem);
      v138 = v137;
      v139 = v293;
      sub_24A6A2390(v138, v293, type metadata accessor for FMIPItem);
      if ((*(v301 + v289) & 1) == 0)
      {
        v174 = v304;
        if (!v304[1].n128_u64[0] || (v175 = sub_24A6A2D48(v323, v101), (v176 & 1) == 0) || (v177 = (v174[3].n128_u64[1] + 24 * v175), v178 = *v177, v179 = v177[1], v180 = v177[2], v181 = v177[3], v182 = *(v177 + 1), v183 = *(v177 + 2), v184 = v182, !v182))
        {
          v190 = v325;
          if (v325)
          {
            v151 = 0;
            v159 = v288;
LABEL_96:
            v191 = v190;
LABEL_97:

LABEL_98:
            sub_24A69F134(v293, v159, type metadata accessor for FMIPItem);
            v192 = sub_24A82CD94();
            v193 = sub_24A82D504();
            if (os_log_type_enabled(v192, v193))
            {
              v194 = swift_slowAlloc();
              v195 = swift_slowAlloc();
              aBlock = v195;
              *v194 = v299;
              v196 = (v159 + *(v291 + 56));
              v197 = *v196;
              v198 = v196[1];

              sub_24A69F2C4(v159, type metadata accessor for FMIPItem);
              v199 = sub_24A68761C(v197, v198, &aBlock);

              *(v194 + 4) = v199;
              v200 = v193;
              v201 = v192;
              v202 = "FMIPManager: using BA Location for %s with because BA provides live locations.";
              goto LABEL_117;
            }

            goto LABEL_118;
          }

          goto LABEL_128;
        }

        v151 = v184;
        v185 = v325;
        if (!v325)
        {
          v159 = v288;
          v190 = 0;
          goto LABEL_96;
        }

        sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
        v153 = v185;
        v151 = v151;
        if (sub_24A82D5E4() & 1) == 0 || v183 != v63 || ((v315 ^ v178) & 1) != 0 || ((v314 ^ v179) & 1) != 0 || ((v313 ^ v180))
        {

          v159 = v288;
          goto LABEL_97;
        }

        LOBYTE(aBlock) = v181;
        LOBYTE(v334) = v312;
        v186 = FMIPLocationType.rawValue.getter();
        v188 = v187;
        if (v186 != FMIPLocationType.rawValue.getter() || v188 != v189)
        {
          v262 = sub_24A82DC04();

          v159 = v288;
          if ((v262 & 1) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_161;
        }

        goto LABEL_93;
      }

      if (((*(v139 + *(v291 + 76)) & 0x40) == 0) | v290 & 1)
      {
        v140 = v304;
        if (!v304[1].n128_u64[0] || (v141 = sub_24A6A2D48(v323, v101), (v142 & 1) == 0) || (v143 = (v140[3].n128_u64[1] + 24 * v141), v144 = *v143, v145 = v143[1], v146 = v143[2], v147 = v143[3], v148 = *(v143 + 1), v149 = *(v143 + 2), v150 = v148, !v148))
        {
          v212 = v325;
          if (v325)
          {
            v151 = 0;
            v159 = v287;
LABEL_113:
            v213 = v212;
LABEL_114:

LABEL_115:
            sub_24A69F134(v293, v159, type metadata accessor for FMIPItem);
            v192 = sub_24A82CD94();
            v214 = sub_24A82D504();
            if (os_log_type_enabled(v192, v214))
            {
              v194 = swift_slowAlloc();
              v195 = swift_slowAlloc();
              aBlock = v195;
              *v194 = v299;
              v215 = (v159 + *(v291 + 56));
              v216 = *v215;
              v217 = v215[1];

              sub_24A69F2C4(v159, type metadata accessor for FMIPItem);
              v218 = sub_24A68761C(v216, v217, &aBlock);

              *(v194 + 4) = v218;
              v200 = v214;
              v201 = v192;
              v202 = "FMIPManager: overriding location for %s with new BA location because it's not connected";
LABEL_117:
              _os_log_impl(&dword_24A675000, v201, v200, v202, v194, 0xCu);
              sub_24A6876E8(v195);
              MEMORY[0x24C21E1D0](v195, -1, -1);
              MEMORY[0x24C21E1D0](v194, -1, -1);

LABEL_119:
              v219 = v322;
              v220 = v304;
              v221 = swift_isUniquelyReferenced_nonNull_native();
              aBlock = v220;
              if (v314)
              {
                v222 = 256;
              }

              else
              {
                v222 = 0;
              }

              v223 = v222 | v315;
              if (v313)
              {
                v224 = 0x10000;
              }

              else
              {
                v224 = 0;
              }

              v225 = v325;
              sub_24A784C04(v223 | v224 | (v312 << 24), v325, v323, v219, v221, v63);

              goto LABEL_126;
            }

LABEL_118:

            sub_24A69F2C4(v159, type metadata accessor for FMIPItem);
            goto LABEL_119;
          }

LABEL_128:

          v48 = v307;
          v52 = v306;
          goto LABEL_129;
        }

        v151 = v150;
        v152 = v325;
        if (!v325)
        {
          v159 = v287;
          v212 = 0;
          goto LABEL_113;
        }

        sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
        v153 = v152;
        v151 = v151;
        if (sub_24A82D5E4() & 1) == 0 || v149 != v63 || ((v315 ^ v144) & 1) != 0 || ((v314 ^ v145) & 1) != 0 || ((v313 ^ v146))
        {

          v159 = v287;
          goto LABEL_114;
        }

        LOBYTE(aBlock) = v147;
        LOBYTE(v334) = v312;
        v154 = FMIPLocationType.rawValue.getter();
        v156 = v155;
        if (v154 != FMIPLocationType.rawValue.getter() || v156 != v157)
        {
          v158 = sub_24A82DC04();

          v159 = v287;
          if ((v158 & 1) == 0)
          {
            goto LABEL_115;
          }

          goto LABEL_161;
        }

LABEL_93:

LABEL_161:

        v48 = v307;
        v52 = v306;
LABEL_129:
        sub_24A69F2C4(v293, type metadata accessor for FMIPItem);
      }

      else
      {
        LOBYTE(aBlock) = v70;
        v209 = FMIPLocationType.rawValue.getter();
        v211 = v325;
        if (v209 == 0x656D69746C616572 && v210 == 0xE800000000000000)
        {

LABEL_131:
          sub_24A69F2C4(v293, type metadata accessor for FMIPItem);

LABEL_39:
          goto LABEL_40;
        }

        v226 = sub_24A82DC04();

        if (v226)
        {
          goto LABEL_131;
        }

        v227 = v304;
        if (v304[1].n128_u64[0] && (v228 = sub_24A6A2D48(v323, v322), (v229 & 1) != 0) && (v230 = (v227[3].n128_u64[1] + 24 * v228), v231 = *v230, v232 = v230[1], v233 = v230[2], v234 = v230[3], v236 = *(v230 + 1), v235 = *(v230 + 2), v237 = v236, v236))
        {
          v238 = v237;
          v239 = 0x10000;
          if (!v233)
          {
            v239 = 0;
          }

          v240 = 256;
          if (!v232)
          {
            v240 = 0;
          }

          aBlock = (v240 | v231 | v239 | (v234 << 24));
          v329 = v237;
          v330 = v235;
          v241 = v324;
          if (!v324)
          {
            v245 = v285;
            v246 = v322;
            goto LABEL_144;
          }

          LOBYTE(v334) = v310;
          BYTE1(v334) = v308;
          BYTE2(v334) = v309;
          BYTE3(v334) = v70;
          v335 = v324;
          v336 = v71;
          v242 = v324;
          v243 = v238;
          v244 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(&aBlock, &v334);

          v245 = v285;
          v246 = v322;
          if ((v244 & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else
        {
          v245 = v285;
          v246 = v322;
          v241 = v324;
          if (v324)
          {
            v247 = v324;
            v238 = 0;
LABEL_144:

LABEL_145:
            sub_24A69F134(v293, v245, type metadata accessor for FMIPItem);
            v248 = sub_24A82CD94();
            v249 = sub_24A82D504();
            if (os_log_type_enabled(v248, v249))
            {
              v250 = swift_slowAlloc();
              v251 = swift_slowAlloc();
              aBlock = v251;
              *v250 = v299;
              v252 = (v245 + *(v291 + 56));
              v253 = *v252;
              v254 = v252[1];

              sub_24A69F2C4(v245, type metadata accessor for FMIPItem);
              v255 = sub_24A68761C(v253, v254, &aBlock);

              *(v250 + 4) = v255;
              v246 = v322;
              _os_log_impl(&dword_24A675000, v248, v249, "FMIPManager: overriding location for %s with realtime location because it's connected", v250, 0xCu);
              sub_24A6876E8(v251);
              MEMORY[0x24C21E1D0](v251, -1, -1);
              MEMORY[0x24C21E1D0](v250, -1, -1);
            }

            else
            {

              sub_24A69F2C4(v245, type metadata accessor for FMIPItem);
            }

            v256 = v304;
            v257 = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v256;
            if (v308)
            {
              v258 = 256;
            }

            else
            {
              v258 = 0;
            }

            v259 = v258 | v310;
            if (v309)
            {
              v260 = 0x10000;
            }

            else
            {
              v260 = 0;
            }

            v261 = v324;
            sub_24A784C04(v259 | v260 | (v70 << 24), v324, v323, v246, v257, v71);

LABEL_126:
            sub_24A69F2C4(v293, type metadata accessor for FMIPItem);
LABEL_127:
            v304 = aBlock;
            goto LABEL_40;
          }
        }

        sub_24A69F2C4(v293, type metadata accessor for FMIPItem);
LABEL_40:
        v48 = v307;
        v52 = v306;
      }
    }

    else
    {
      v121 = v66;
      v122 = v304;
      v123 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v122;
      v124 = sub_24A6A2D48(v59, v60);
      v126 = v122[1].n128_u64[0];
      v127 = (v125 & 1) == 0;
      v39 = __OFADD__(v126, v127);
      v128 = v126 + v127;
      if (v39)
      {
        goto LABEL_173;
      }

      v129 = v125;
      if (v122[1].n128_u64[1] >= v128)
      {
        if ((v123 & 1) == 0)
        {
          v263 = v124;
          sub_24A78629C();
          v124 = v263;
          if (v129)
          {
LABEL_54:
            v131 = v124;

            v304 = aBlock;
            v132 = aBlock[3].n128_u64[1] + 24 * v131;
            v133 = *(v132 + 8);
            *v132 = v315;
            *(v132 + 1) = v314;
            *(v132 + 2) = v313;
            *(v132 + 3) = v312;
            *(v132 + 8) = v121;
            *(v132 + 16) = v63;

            goto LABEL_47;
          }

          goto LABEL_164;
        }
      }

      else
      {
        sub_24A781610(v128, v123);
        v124 = sub_24A6A2D48(v323, v60);
        if ((v129 & 1) != (v130 & 1))
        {
          goto LABEL_175;
        }
      }

      if (v129)
      {
        goto LABEL_54;
      }

LABEL_164:
      v264 = aBlock;
      aBlock[4].n128_u64[v124 >> 6] |= 1 << v124;
      v265 = (v264[3].n128_u64[0] + 16 * v124);
      *v265 = v323;
      v265[1] = v60;
      v266 = v264[3].n128_u64[1] + 24 * v124;
      *v266 = v315;
      *(v266 + 1) = v314;
      *(v266 + 2) = v313;
      *(v266 + 3) = v312;
      *(v266 + 8) = v121;
      *(v266 + 16) = v63;

      v267 = v264[1].n128_u64[0];
      v39 = __OFADD__(v267, 1);
      v268 = v267 + 1;
      if (v39)
      {
        goto LABEL_174;
      }

      v304 = v264;
      v264[1].n128_u64[0] = v268;
LABEL_47:
      v48 = v307;
      v52 = v306;
    }
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_170;
    }

    if (v55 >= v52)
    {
      break;
    }

    v51 = v48[v55];
    ++v53;
    if (v51)
    {
      v53 = v55;
      goto LABEL_26;
    }
  }

  v269 = v321;

  v270 = v301;
  v271 = v300;

  v272 = v304;
  LOBYTE(v269) = sub_24A7556C0(v304, v269);

  if ((v269 & 1) == 0)
  {
  }

  v273 = *(v270 + v271);
  swift_beginAccess();
  v304 = v272;
  v274 = *(v273 + 280);
  v324 = *(v270 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  v332 = sub_24A6A04A0;
  v333 = v270;
  aBlock = MEMORY[0x277D85DD0];
  v329 = 1107296256;
  v321 = &v330;
  v330 = sub_24A699BA0;
  v331 = &unk_285DC6010;
  v275 = _Block_copy(&aBlock);

  v276 = v294;
  sub_24A82CE24();
  v327 = MEMORY[0x277D84F90];
  v323 = sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v322 = sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  v325 = sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v277 = v296;
  v278 = v298;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v276, v277, v275);
  _Block_release(v275);
  v326 = *(v297 + 8);
  (v326)(v277, v278);
  v279 = *(v295 + 8);
  v279(v276, v302);

  sub_24A82CDE4();
  v280 = swift_allocObject();
  *(v280 + 16) = v270;
  *(v280 + 24) = v274;
  v332 = sub_24A75131C;
  v333 = v280;
  aBlock = MEMORY[0x277D85DD0];
  v329 = 1107296256;
  v330 = sub_24A699BA0;
  v331 = &unk_285DC6060;
  v281 = _Block_copy(&aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v276, v277, v281);
  _Block_release(v281);
  v279(v276, v302);
  (v326)(v277, v278);

  v332 = sub_24A6A09FC;
  v333 = v270;
  aBlock = MEMORY[0x277D85DD0];
  v329 = 1107296256;
  v330 = sub_24A699BA0;
  v331 = &unk_285DC6088;
  v282 = _Block_copy(&aBlock);

  sub_24A82CE24();
  v327 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v276, v277, v282);
  _Block_release(v282);
  (v326)(v277, v278);
  v279(v276, v302);
}

void sub_24A74643C(uint64_t a1, uint64_t a2)
{
  v57 = sub_24A82CDF4();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_24A82CE54();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v63 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  *&v12 = 136315394;
  v58 = v12;
  v62 = v10;
  v59 = a1;
  v60 = a2;
  while (v9)
  {
    v13 = v11;
LABEL_11:
    v14 = __clz(__rbit64(v9)) | (v13 << 6);
    v15 = *(*(a1 + 48) + v14);
    v16 = *(*(a1 + 56) + 8 * v14);
    v17 = qword_281515DC8;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_24A82CDC4();
    sub_24A6797D0(v18, qword_281518F88);

    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = v58;
      LOBYTE(v64) = v15;
      v23 = sub_24A82D024();
      v25 = sub_24A68761C(v23, v24, aBlock);
      v61 = v15;
      v26 = v25;

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      sub_24A82CAA4();
      sub_24A679FDC(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v27 = sub_24A82CF04();
      v29 = sub_24A68761C(v27, v28, aBlock);

      *(v21 + 14) = v29;
      v15 = v61;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPManager: didReceive updating state: %s: %s", v21, 0x16u);
      swift_arrayDestroy();
      v30 = v22;
      a2 = v60;
      MEMORY[0x24C21E1D0](v30, -1, -1);
      v31 = v21;
      a1 = v59;
      MEMORY[0x24C21E1D0](v31, -1, -1);
    }

    v9 &= v9 - 1;
    v32 = *(a2 + v63);
    if (v15)
    {
      if (v15 == 1)
      {
        v33 = v32[28];

        v34 = sub_24A7B6DF0(v16, v33);

        if (v34)
        {
          goto LABEL_4;
        }

        swift_beginAccess();

        sub_24A76A8F4(v35, v16);
        v37 = v36;

        v32[10] = v37;

        v32[28] = v16;
      }

      else
      {
        v43 = v32[27];

        v44 = sub_24A7B6DF0(v16, v43);

        if (v44)
        {
LABEL_4:

          goto LABEL_5;
        }

        swift_beginAccess();

        sub_24A76A0B0(v45, v16);
        v47 = v46;

        v32[10] = v47;

        v32[27] = v16;
      }
    }

    else
    {
      v38 = v32[25];

      v39 = sub_24A7B6DF0(v16, v38);

      if (v39)
      {
        goto LABEL_4;
      }

      swift_beginAccess();

      sub_24A769874(v40, v16);
      v42 = v41;

      v32[10] = v42;
    }

LABEL_5:
    v11 = v13;
    v10 = v62;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      aBlock[4] = sub_24A6A09FC;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A699BA0;
      aBlock[3] = &unk_285DC6380;
      v48 = _Block_copy(aBlock);

      v49 = v52;
      sub_24A82CE24();
      v64 = MEMORY[0x277D84F90];
      sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v50 = v55;
      v51 = v57;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v49, v50, v48);
      _Block_release(v48);
      (*(v56 + 8))(v50, v51);
      (*(v53 + 8))(v49, v54);

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_24A746B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = sub_24A82CDF4();
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A82CE54();
  v13 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  LOBYTE(a2) = a3(a2);

  if (a2)
  {
    aBlock[4] = a4;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = a5;
    v17 = _Block_copy(aBlock);

    sub_24A82CE24();
    v21 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v15, v12, v17);
    _Block_release(v17);
    (*(v20 + 8))(v12, v10);
    (*(v13 + 8))(v15, v19);
  }

  return result;
}

uint64_t sub_24A746E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24A82CDF4();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82CE54();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;

  LOBYTE(a5) = sub_24A755F74(a2, a3, a4, a5);

  if (a5)
  {
    v18 = *(a1 + v16);
    swift_beginAccess();
    v19 = *(v18 + 80);

    v20 = sub_24A6A30A8(v19, 1);

    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v27[1] = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
      v36 = sub_24A6A09FC;
      v37 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_24A699BA0;
      v35 = &unk_285DC6218;
      v22 = _Block_copy(&aBlock);

      sub_24A82CE24();
      v38 = v21;
      sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v21 = MEMORY[0x277D84F90];
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v15, v12, v22);
      _Block_release(v22);
      (*(v30 + 8))(v12, v10);
      (*(v28 + 8))(v15, v29);
    }

    v23 = *(a1 + v16);
    swift_beginAccess();
    v24 = *(v23 + 280);

    v25 = sub_24A75633C(v24, 2, 1);

    if (v25)
    {
      v36 = sub_24A6A04A0;
      v37 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_24A699BA0;
      v35 = &unk_285DC61F0;
      v26 = _Block_copy(&aBlock);

      sub_24A82CE24();
      v31 = v21;
      sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v15, v12, v26);
      _Block_release(v26);
      (*(v30 + 8))(v12, v10);
      (*(v28 + 8))(v15, v29);
    }
  }

  return result;
}
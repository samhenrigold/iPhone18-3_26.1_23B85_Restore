uint64_t sub_1D12A4E44(void *a1, __int128 *a2, uint64_t a3)
{
  v50 = a1;
  v5 = a2[3];
  v71 = a2[2];
  v72 = v5;
  v73 = *(a2 + 8);
  v6 = a2[1];
  v69 = *a2;
  v70 = v6;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  *(v3 + 48) = sub_1D138D1CC();
  *(v3 + 56) = v7;
  v8 = sub_1D138D1CC();
  v9 = MEMORY[0x1E69E7CD0];
  *(v3 + 80) = v8;
  *(v3 + 88) = v10;
  *(v3 + 104) = 0;
  *(v3 + 112) = v9;
  v46 = 0xE000000000000000;
  *(v3 + 120) = sub_1D138D1CC();
  *(v3 + 128) = v11;
  v47 = OBJC_IVAR____TtC15HealthRecordsUI26PDFConfigurationDataSource_configuration;
  sub_1D10921C4(a3, v3 + OBJC_IVAR____TtC15HealthRecordsUI26PDFConfigurationDataSource_configuration);
  sub_1D12A8D98(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v3 + 96) = v12;
  v13 = v50;
  if (v50)
  {
    sub_1D10DCFE8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E810;
    *(inited + 32) = v13;
    v15 = v13;
    sub_1D1265480(inited);
    v17 = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v3 + 112) = v17;
  }

  v48 = a3;
  v49 = v3;
  v68 = MEMORY[0x1E69E7CC0];
  sub_1D10FD8EC(0, 8, 0);
  v18 = v68;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  for (i = 0; ; ++i)
  {
    swift_beginAccess();
    v20 = off_1EE069F80;
    if (*(off_1EE069F80 + 2))
    {
      v21 = sub_1D12A2F78();
      if (v22)
      {
        v23 = v20[7] + 72 * v21;
        v58 = *v23;
        v25 = *(v23 + 32);
        v24 = *(v23 + 48);
        v26 = *(v23 + 64);
        v59 = *(v23 + 16);
        v60 = v25;
        v62 = v26;
        v61 = v24;
        swift_endAccess();
        v65 = v60;
        v66 = v61;
        v67 = v62;
        v63 = v58;
        v64 = v59;
        sub_1D1082914(&v58, v51);
        goto LABEL_13;
      }
    }

    swift_endAccess();
    v27 = [objc_opt_self() unknownRecordCategory];
    if (!v27)
    {
      break;
    }

    sub_1D123E1C4(v27, &v63);
LABEL_13:
    v62 = v67;
    v60 = v65;
    v61 = v66;
    v58 = v63;
    v59 = v64;
    v68 = v18;
    v29 = *(v18 + 16);
    v28 = *(v18 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1D10FD8EC((v28 > 1), v29 + 1, 1);
      v18 = v68;
    }

    *(v18 + 16) = v29 + 1;
    v30 = v18 + 72 * v29;
    *(v30 + 32) = v58;
    v31 = v59;
    v32 = v60;
    v33 = v61;
    *(v30 + 96) = v62;
    *(v30 + 64) = v32;
    *(v30 + 80) = v33;
    *(v30 + 48) = v31;
    if (i == 7)
    {
      v57 = v18;

      sub_1D12A4298(&v57);

      v35 = v57;
      v37 = v48;
      v36 = v49;
      *(v49 + 64) = v57;
      v38 = v69;
      v53 = v70;
      v54 = v71;
      v55 = v72;
      v56 = v73;
      if (*(&v69 + 1))
      {
        v51[0] = v69;
        v51[1] = v70;
        v51[2] = v71;
        v51[3] = v72;
        v52 = v73;
        MEMORY[0x1EEE9AC00](v34);
        v46 = v51;

        if (sub_1D10F1AE8(sub_1D12A8DFC, &v45, v35))
        {

          sub_1D10DCFE8(0, &qword_1EE06B698, &type metadata for DisplayCategory, MEMORY[0x1E69E6F90]);
          v39 = swift_initStackObject();
          *(v39 + 16) = xmmword_1D139E700;
          *(v39 + 32) = v38;
          v40 = v39 + 32;
          v41 = v54;
          *(v39 + 48) = v53;
          *(v39 + 64) = v41;
          *(v39 + 80) = v55;
          *(v39 + 96) = v56;
          v42 = sub_1D1265764(v39);
          swift_setDeallocating();
          sub_1D1080D98(v40);

LABEL_23:
          sub_1D1092890(v37);
          *(v36 + 72) = v42;
          return v36;
        }

        sub_1D12A8D38(&v69, &unk_1EC609AC8, &type metadata for DisplayCategory, MEMORY[0x1E69E6720], sub_1D10DCFE8);
      }

      else
      {
      }

      v43 = v50;
      v42 = sub_1D12DE968(v35);

      goto LABEL_23;
    }
  }

  __break(1u);

  sub_1D1092890(v49 + v47);
  type metadata accessor for PDFConfigurationDataSource(0);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_1D12A54C4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_1D138F0BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1D12A5784(a1);
    if (!a4)
    {
      return;
    }

LABEL_11:
    a4();
    return;
  }

  sub_1D138F06C();

  v14 = a2;
  v15 = sub_1D138F0AC();
  v16 = sub_1D13907FC();

  if (os_log_type_enabled(v15, v16))
  {
    v26[1] = a5;
    v17 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    v26[6] = a3;
    v27 = v26[0];
    *v17 = 136315394;
    type metadata accessor for PDFConfigurationDataSource(0);

    v18 = sub_1D13901EC();
    v20 = sub_1D11DF718(v18, v19, &v27);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v21 = sub_1D13916FC();
      v23 = v22;
    }

    else
    {
      v23 = 0xEB000000007D726FLL;
      v21 = 0x727265206C696E7BLL;
    }

    v24 = sub_1D11DF718(v21, v23, &v27);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_1D101F000, v15, v16, "%s failed to load all accounts: %s)", v17, 0x16u);
    v25 = v26[0];
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v25, -1, -1);
    MEMORY[0x1D38882F0](v17, -1, -1);

    (*(v11 + 8))(v13, v10);
    if (a4)
    {
      goto LABEL_11;
    }
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    if (a4)
    {
      goto LABEL_11;
    }
  }
}

void sub_1D12A5784(uint64_t a1)
{
  v2 = v1[12];

  os_unfair_lock_lock(v2 + 4);

  if (v1[13])
  {
    goto LABEL_18;
  }

  v4 = sub_1D12DEEFC(v3);

  v5 = v1[14];
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_1D13910DC();

    v5 = v1[14];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else if (!*(v5 + 16))
  {
LABEL_7:
    v1[14] = v4;

    goto LABEL_8;
  }

  sub_1D12A59C0(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_1D12E1828(v9, v4);

  v21 = sub_1D1113278(v11, v10);
  sub_1D12A4304(&v21);

  v12 = v21;
  v13 = v1[13];
  v1[13] = v21;

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    if (sub_1D13910DC() == 1 && sub_1D13910DC())
    {
      goto LABEL_11;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (*(v12 + 16) != 1)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1D3886B70](0, v12);
  }

  else
  {
    if (!*(v12 + 16))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v16 = [v15 title];
  v17 = sub_1D139016C();
  v19 = v18;

  v1[15] = v17;
  v1[16] = v19;

LABEL_18:
  v20 = v1[12];

  os_unfair_lock_unlock(v20 + 4);
}

void sub_1D12A59C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_1D13910DC();
    v6 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(a1 + 16) < v5)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = *(a2 + 16);
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (sub_1D13910DC() < v5)
  {
    return;
  }

LABEL_7:
  if (v4)
  {

    sub_1D139108C();
    sub_1D106F934(0, &qword_1EC609A00, 0x1E69A3F00);
    sub_1D12A8CD0();
    sub_1D139070C();
    v2 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
    v10 = v36;
  }

  else
  {
    v11 = -1 << *(v2 + 32);
    v7 = v2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v2 + 56);

    v9 = 0;
  }

  sub_1D106F934(0, &qword_1EC609A00, 0x1E69A3F00);
  v28 = v7;
  v14 = (v8 + 64) >> 6;
  v29 = v2;
  v15 = a1 + 56;
  while (1)
  {
    while (v2 < 0)
    {
      if (!sub_1D139110C())
      {
LABEL_35:
        sub_1D102CC30(v2);
        return;
      }

      swift_dynamicCast();
      v20 = v10;
      v18 = v31;
      v30 = v20;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_21:
      v19 = sub_1D139111C();

      v10 = v30;
      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v16 = v10;
    if (!v10)
    {
      break;
    }

LABEL_20:
    v30 = (v16 - 1) & v16;
    v31 = *(*(v2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v31;
    if (v6)
    {
      goto LABEL_21;
    }

LABEL_25:
    v27 = v6;
    if (!*(a1 + 16) || (v21 = sub_1D1390D7C(), v22 = -1 << *(a1 + 32), v23 = v21 & ~v22, ((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
    {
LABEL_32:

      v2 = v29;
LABEL_33:
      sub_1D102CC30(v2);
      return;
    }

    v24 = ~v22;
    while (1)
    {
      v25 = *(*(a1 + 48) + 8 * v23);
      v26 = sub_1D1390D8C();

      if (v26)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v7 = v28;
    v2 = v29;
    v6 = v27;
    v10 = v30;
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_35;
    }

    v16 = *(v7 + 8 * v9);
    ++v17;
    if (v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

id sub_1D12A5CF4(__n128 a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_1D138D7FC();
  if (v6 == 2)
  {
    v20 = v3[14];
    if (v4[13])
    {
      v21 = v4[13];
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    swift_getObjectType();
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v23 = a3;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v24 = v22;
      v25 = a3;
    }

    else
    {
      v24 = 0;
    }

    v30 = type metadata accessor for AccountSelectionViewController();
    v31 = objc_allocWithZone(v30);
    v32 = &v31[OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_preferredSize];
    *(v32 + 1) = 0;
    *(v32 + 2) = 0;
    *v32 = 0;
    v32[24] = 1;
    *&v31[OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_accountIcons] = 0;
    *&v31[OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_delegate + 8] = 0;
    v33 = swift_unknownObjectWeakInit();
    *&v31[OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_allAccounts] = v21;
    *&v31[OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_selectedAccounts] = v20;
    *(v33 + 8) = v24;
    swift_unknownObjectWeakAssign();
    v41.receiver = v31;
    v41.super_class = v30;

    v29 = objc_msgSendSuper2(&v41, sel_initWithStyle_, 2);
    goto LABEL_28;
  }

  if (v6 == 1)
  {
    v15 = v3[8];
    v14 = v3[9];
    swift_getObjectType();
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      v17 = a3;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v18 = v16;
      v19 = a3;
    }

    else
    {
      v18 = 0;
    }

    v26 = type metadata accessor for CategorySelectionViewController();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_delegate + 8] = 0;
    v28 = swift_unknownObjectWeakInit();
    *&v27[OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_allCategories] = v15;
    *&v27[OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_selectedCategories] = v14;
    *(v28 + 8) = v18;
    swift_unknownObjectWeakAssign();
    v40.receiver = v27;
    v40.super_class = v26;

    v29 = objc_msgSendSuper2(&v40, sel_initWithStyle_, 2);
LABEL_28:
    v13 = v29;
LABEL_32:
    swift_unknownObjectRelease();
    return v13;
  }

  if (v6)
  {
    return 0;
  }

  v7 = v3[5];
  if (!v7)
  {
    return 0;
  }

  v8 = *(v4 + 33);
  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
    v12 = a3;
  }

  else
  {
    v11 = 0;
  }

  v34 = type metadata accessor for YearRangePickerViewController();
  v35 = objc_allocWithZone(v34);
  v36 = &v35[OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_defaultCellIdentifier];
  *v36 = 1819043139;
  v36[1] = 0xE400000000000000;
  *&v35[OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_delegate + 8] = 0;
  v37 = swift_unknownObjectWeakInit();
  *&v35[OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_dataSource] = v7;
  v35[OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_selectedRow] = v8;
  *(v37 + 8) = v11;
  swift_unknownObjectWeakAssign();
  v39.receiver = v35;
  v39.super_class = v34;
  swift_retain_n();
  result = objc_msgSendSuper2(&v39, sel_initWithUsingInsetStyling_, 1);
  if (result)
  {
    v13 = result;

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

void sub_1D12A6014(uint64_t a1)
{
  v3 = _s13ConfigurationVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12A8B50(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = sub_1D138D57C();
  v16 = *(v15 - 8);
  v64 = v15;
  v65 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = sub_1D129FB90(*(a1 + 16), 0);
    v20 = sub_1D12A22B0(v73, v19 + 4, v18, a1);
    v21 = v73[0];
    v69 = v73[4];
    v70 = v20;

    sub_1D102CC30(v21);
    if (v70 == v18)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_5:
  sub_1D12A3FC4(v19);
  v23 = v22;

  if (v23 >> 62)
  {
    goto LABEL_26;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v61 = v7;
  for (i = v1; v24; i = v1)
  {
    v25 = 0;
    v69 = v23 & 0xFFFFFFFFFFFFFF8;
    v70 = v23 & 0xC000000000000001;
    v7 = v64;
    v67 = (v65 + 48);
    v68 = (v65 + 56);
    v66 = (v65 + 32);
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v70)
      {
        v27 = MEMORY[0x1D3886B70](v25, v23);
      }

      else
      {
        if (v25 >= *(v69 + 16))
        {
          goto LABEL_25;
        }

        v27 = *(v23 + 8 * v25 + 32);
      }

      v1 = v27;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = [v27 meaningfulDate];
      if (v29)
      {
        v30 = v71;
        v31 = v29;
        sub_1D138D52C();

        v32 = 0;
      }

      else
      {
        v32 = 1;
        v30 = v71;
      }

      (*v68)(v30, v32, 1, v7);
      sub_1D112A184(v30, v14);
      if ((*v67)(v14, 1, v7) == 1)
      {
        sub_1D12A8D38(v14, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D12A8B50);
      }

      else
      {
        v33 = *v66;
        (*v66)(v72, v14, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1D10F90B0(0, v26[2] + 1, 1, v26);
        }

        v35 = v26[2];
        v34 = v26[3];
        v1 = (v35 + 1);
        if (v35 >= v34 >> 1)
        {
          v26 = sub_1D10F90B0((v34 > 1), v35 + 1, 1, v26);
        }

        v26[2] = v1;
        v36 = v26 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v35;
        v7 = v64;
        v33(v36, v72, v64);
      }

      ++v25;
      if (v28 == v24)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v24 = sub_1D13910DC();
    v61 = v7;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v7 = v64;
LABEL_28:

  v37 = v63;
  sub_1D12A67B0(v26, v63);
  v38 = v65;
  v39 = *(v65 + 48);
  if (v39(v37, 1, v7) == 1)
  {

    v40 = MEMORY[0x1E6969530];
    v41 = MEMORY[0x1E69E6720];
    v42 = v37;
LABEL_30:
    sub_1D12A8D38(v42, &qword_1EE06B500, v40, v41, sub_1D12A8B50);
    return;
  }

  v43 = i;
  v44 = sub_1D12A6A60();
  v46 = v45;
  v47 = *(v38 + 8);
  v47(v37, v7);
  if (v46)
  {

    return;
  }

  v48 = v7;
  v49 = v61;
  sub_1D12A6D48(v26, v61);

  if (v39(v49, 1, v48) == 1)
  {
    v40 = MEMORY[0x1E6969530];
    v41 = MEMORY[0x1E69E6720];
    v42 = v49;
    goto LABEL_30;
  }

  v50 = sub_1D12A6A60();
  v52 = v51;
  v47(v49, v48);
  if ((v52 & 1) == 0)
  {
    v53 = v43;
    if (v44 == v50)
    {
      v53 = v43;
      v43[6] = sub_1D11F3C64(v44);
      v43[7] = v54;
    }

    v55 = v60;
    sub_1D10921C4(v53 + OBJC_IVAR____TtC15HealthRecordsUI26PDFConfigurationDataSource_configuration, v60);
    type metadata accessor for YearRangePickerDataSource(0);
    v56 = swift_allocObject();
    *(v56 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v57 = v50 - v44;
    if (v50 < v44)
    {
      __break(1u);
    }

    else if (!__OFSUB__(v50, v44))
    {
      v58 = v57 + 1;
      if (!__OFADD__(v57, 1))
      {
        if (v57 != -1)
        {
          v59 = sub_1D129FB08(v57 + 1, 0);
          if (sub_1D12A21F8(v73, v59 + 4, v58, v44, v50) == v58)
          {
LABEL_46:
            *(v56 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_pickerRange) = v59;
            *(v56 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear) = v44;
            *(v56 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear) = v50;
            sub_1D109238C(v55, v56 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_configuration);
            v53[5] = v56;

            return;
          }

          __break(1u);
        }

        v59 = MEMORY[0x1E69E7CC0];
        goto LABEL_46;
      }

LABEL_49:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_49;
  }
}

uint64_t sub_1D12A67B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_1D12A8C88(&qword_1EC60D430, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v21 = sub_1D13900AC();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_1D12A6A60()
{
  v15 = sub_1D138D18C();
  v0 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D138D76C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  sub_1D138D6EC();

  sub_1D12A8B50(0, &qword_1EC609C80, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v8 = sub_1D138D75C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139E700;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E6969A68], v8);
  sub_1D1265AC0(v11);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  sub_1D138D6CC();

  v12 = sub_1D138D13C();
  (*(v0 + 8))(v2, v15);
  (*(v4 + 8))(v6, v3);
  return v12;
}

uint64_t sub_1D12A6D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_1D12A8C88(&qword_1EC60D430, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v21 = sub_1D13900AC();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

void *sub_1D12A6FF8()
{

  sub_1D1092890(v0 + OBJC_IVAR____TtC15HealthRecordsUI26PDFConfigurationDataSource_configuration);
  return v0;
}

uint64_t sub_1D12A7068()
{
  sub_1D12A6FF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PDFConfigurationDataSource(uint64_t a1)
{
  result = qword_1EC60EAB8;
  if (!qword_1EC60EAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D12A7114(uint64_t a1)
{
  result = _s13ConfigurationVMa(319);
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

void sub_1D12A71F4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
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
        v5 = sub_1D13904DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D12A7684(v7, v8, a1, v4);
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
    sub_1D12A7400(0, v2, 1, a1);
  }
}

void sub_1D12A72EC(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D106F934(0, &qword_1EC609A00, 0x1E69A3F00);
        v6 = sub_1D13904DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D12A7CC4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1D12A7508(0, v2, 1, a1);
  }
}

uint64_t sub_1D12A7400(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 32);
      v11 = result == *(v10 - 40) && *(v10 + 40) == *(v10 - 32);
      if (v11 || (result = sub_1D139162C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 72;
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

      v12 = v10 - 72;
      v18 = *(v10 + 32);
      v19 = *(v10 + 48);
      v20 = *(v10 + 64);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 24);
      *(v10 + 32) = *(v10 - 40);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 8);
      v14 = *(v10 - 56);
      *v10 = *(v10 - 72);
      *(v10 + 16) = v14;
      *(v12 + 64) = v20;
      *(v12 + 32) = v18;
      *(v12 + 48) = v19;
      v10 -= 72;
      *v12 = v16;
      *(v12 + 16) = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D12A7508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 title];
      v11 = sub_1D139016C();
      v13 = v12;

      v14 = [v9 title];
      v15 = sub_1D139016C();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v19 = sub_1D139162C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D12A7684(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_1D1245848(v8);
    }

    v84 = v8 + 16;
    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      do
      {
        v86 = *v5;
        if (!*v5)
        {
          goto LABEL_142;
        }

        v87 = &v8[16 * v85];
        v5 = *v87;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1D12A84C4((v86 + 72 * *v87), (v86 + 72 * *v88), (v86 + 72 * v89), a1);
        if (v4)
        {
          break;
        }

        if (v89 < v5)
        {
          goto LABEL_130;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_131;
        }

        *v87 = v5;
        *(v87 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_132;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        v5 = a3;
      }

      while (v85 > 1);
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
      v10 = *v5;
      v11 = *v5 + 72 * v7;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *v5 + 72 * v9;
      if (v12 == *(v14 + 32) && v13 == *(v14 + 40))
      {
        v16 = 0;
      }

      else
      {
        v16 = sub_1D139162C();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v17 = (v10 + 72 * v9 + 184);
        do
        {
          if (*(v17 - 1) == *(v17 - 10) && *v17 == *(v17 - 9))
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else if ((v16 ^ sub_1D139162C()))
          {
            goto LABEL_23;
          }

          v17 += 9;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 72 * v7 - 72;
          v20 = v9;
          v21 = 72 * v9;
          v22 = v7;
          v91 = v20;
          do
          {
            if (v20 != --v22)
            {
              v24 = *v5;
              if (!*v5)
              {
                goto LABEL_141;
              }

              v23 = v24 + v19;
              v100 = *(v24 + v21 + 32);
              v102 = *(v24 + v21 + 48);
              v104 = *(v24 + v21 + 64);
              v96 = *(v24 + v21);
              v98 = *(v24 + v21 + 16);
              memmove((v24 + v21), (v24 + v19), 0x48uLL);
              *(v23 + 32) = v100;
              *(v23 + 48) = v102;
              *(v23 + 64) = v104;
              *v23 = v96;
              *(v23 + 16) = v98;
            }

            ++v20;
            v19 -= 72;
            v21 += 72;
          }

          while (v20 < v22);
          v9 = v91;
        }
      }
    }

    v25 = v5[1];
    if (v7 < v25)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_136;
        }

        if (v9 + a4 >= v25)
        {
          v26 = v5[1];
        }

        else
        {
          v26 = v9 + a4;
        }

        if (v26 < v9)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v7 != v26)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D10F7610(0, *(v8 + 2) + 1, 1, v8);
    }

    v38 = *(v8 + 2);
    v37 = *(v8 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v8 = sub_1D10F7610((v37 > 1), v38 + 1, 1, v8);
    }

    *(v8 + 2) = v39;
    v40 = &v8[16 * v38];
    *(v40 + 4) = v9;
    *(v40 + 5) = v7;
    v41 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v8 + 4);
          v44 = *(v8 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_75:
          if (v46)
          {
            goto LABEL_121;
          }

          v59 = &v8[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_124;
          }

          v65 = &v8[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_128;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v69 = &v8[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_89:
        if (v64)
        {
          goto LABEL_123;
        }

        v72 = &v8[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_126;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_96:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
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

        if (!*v5)
        {
          goto LABEL_140;
        }

        v81 = *&v8[16 * v80 + 32];
        v82 = *&v8[16 * v42 + 40];
        sub_1D12A84C4((*v5 + 72 * v81), (*v5 + 72 * *&v8[16 * v42 + 32]), (*v5 + 72 * v82), v41);
        if (v4)
        {
          goto LABEL_115;
        }

        if (v82 < v81)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1245848(v8);
        }

        if (v80 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v83 = &v8[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        sub_1D12457BC(v42);
        v39 = *(v8 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v8[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_119;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_120;
      }

      v54 = &v8[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_122;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_125;
      }

      if (v58 >= v50)
      {
        v76 = &v8[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_129;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  v27 = *v5;
  v28 = *v5 + 72 * v7;
  v92 = v9;
  v29 = v9 - v7;
LABEL_44:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 32) == *(v31 - 40) && *(v31 + 40) == *(v31 - 32);
    if (v32 || (sub_1D139162C() & 1) == 0)
    {
LABEL_43:
      ++v7;
      v28 += 72;
      --v29;
      if (v7 != v26)
      {
        goto LABEL_44;
      }

      v7 = v26;
      v5 = a3;
      v9 = v92;
      goto LABEL_55;
    }

    if (!v27)
    {
      break;
    }

    v33 = v31 - 72;
    v101 = *(v31 + 32);
    v103 = *(v31 + 48);
    v105 = *(v31 + 64);
    v97 = *v31;
    v99 = *(v31 + 16);
    v34 = *(v31 - 24);
    *(v31 + 32) = *(v31 - 40);
    *(v31 + 48) = v34;
    *(v31 + 64) = *(v31 - 8);
    v35 = *(v31 - 56);
    *v31 = *(v31 - 72);
    *(v31 + 16) = v35;
    *(v33 + 64) = v105;
    *(v33 + 32) = v101;
    *(v33 + 48) = v103;
    v31 -= 72;
    *v33 = v97;
    *(v33 + 16) = v99;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_43;
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

void sub_1D12A7CC4(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_1D12A8764((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1D1245848(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_1D12457BC(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_1D1245848(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 title];
      v16 = sub_1D139016C();
      v18 = v17;

      v19 = [v14 title];
      v20 = sub_1D139016C();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_1D139162C();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 title];
          v5 = sub_1D139016C();
          v29 = v28;

          v30 = [v26 title];
          v31 = sub_1D139016C();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_1D139162C();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_1D10F7610(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_1D10F7610((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_1D12A8764((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1D1245848(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_1D12457BC(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 title];
    v5 = sub_1D139016C();
    v51 = v50;

    v52 = [v48 title];
    v53 = sub_1D139016C();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_1D139162C();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_1D12A84C4(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 72;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 72;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[72 * v9] <= __dst)
    {
      memmove(__dst, __src, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 < 72 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = *(v6 + 4) == *(v4 + 4) && *(v6 + 5) == *(v4 + 5);
      if (v13 || (sub_1D139162C() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 72;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 72;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 72;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v14, 0x48uLL);
    goto LABEL_17;
  }

  if (__dst != a2 || &a2[72 * v11] <= __dst)
  {
    memmove(__dst, a2, 72 * v11);
  }

  v12 = &v4[72 * v11];
  if (v10 >= 72 && v6 > v7)
  {
    do
    {
      v5 -= 72;
      while (1)
      {
        v15 = *(v12 - 5) == *(v6 - 5) && *(v12 - 4) == *(v6 - 4);
        if (!v15 && (sub_1D139162C() & 1) != 0)
        {
          break;
        }

        v16 = (v12 - 72);
        if (v5 + 72 != v12)
        {
          memmove(v5, v12 - 72, 0x48uLL);
        }

        v5 -= 72;
        v12 -= 72;
        if (v16 <= v4)
        {
          v12 = v16;
          goto LABEL_41;
        }
      }

      v17 = v6 - 72;
      if (v5 + 72 != v6)
      {
        memmove(v5, v6 - 72, 0x48uLL);
      }

      if (v12 <= v4)
      {
        break;
      }

      v6 -= 72;
    }

    while (v17 > v7);
    v6 = v17;
  }

LABEL_41:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_1D12A8764(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 title];
        v38 = sub_1D139016C();
        v40 = v39;

        v41 = [v36 title];
        v42 = sub_1D139016C();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = v31 - 1;
        }

        else
        {
          v46 = sub_1D139162C();

          v4 = v31 - 1;
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 title];
        v18 = sub_1D139016C();
        v20 = v19;

        v21 = [v16 title];
        v22 = sub_1D139016C();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_1D139162C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v54 - v13));
  }

  return 1;
}

void sub_1D12A8B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D12A8BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v10 = *(a1 + 64);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v8 = *(a2 + 64);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return _s15HealthRecordsUI15DisplayCategoryV2eeoiySbAC_ACtFZ_0(v9, v7) & 1;
}

void sub_1D12A8C20(uint64_t a1)
{
  if (!qword_1EC609E90)
  {
    sub_1D106F934(255, &qword_1EE06B0E0, 0x1E696C250);
    v1 = sub_1D139052C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC609E90);
    }
  }
}

uint64_t sub_1D12A8C88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D12A8CD0()
{
  result = qword_1EC60A950;
  if (!qword_1EC60A950)
  {
    sub_1D106F934(255, &qword_1EC609A00, 0x1E69A3F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A950);
  }

  return result;
}

uint64_t sub_1D12A8D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D12A8D98(uint64_t a1)
{
  if (!qword_1EC60EAC8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1D139127C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60EAC8);
    }
  }
}

uint64_t sub_1D12A8DFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v3;
  v11 = *(a1 + 64);
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v5 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v5;
  v9 = *(v2 + 64);
  v6 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v6;
  return _s15HealthRecordsUI15DisplayCategoryV2eeoiySbAC_ACtFZ_0(v10, v8) & 1;
}

uint64_t sub_1D12A8E6C(__n128 a1)
{
  v1 = sub_1D138D7FC();
  switch(v1)
  {
    case 2:
      if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }

LABEL_11:
      swift_once();
      return sub_1D138D1CC();
    case 1:
      if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_11;
    case 0:
      if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_11;
  }

  return 0;
}

double sub_1D12A900C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1D12A9060()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60EAD0 = v1;
  *algn_1EC60EAD8 = v3;
}

void sub_1D12A9138()
{
  v0 = objc_opt_self();
  v1 = sub_1D139012C();
  v2 = [v0 modelSpecificLocalizedStringKeyForKey_];

  if (v2)
  {
    sub_1D139016C();

    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE069F98;

    v4 = sub_1D138D1CC();
    v6 = v5;

    qword_1EC60EAE0 = v4;
    *algn_1EC60EAE8 = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_1D12A9280()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___doneButton;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___doneButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___doneButton);
  }

  else
  {
    v4 = sub_1D12A92E4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D12A92E4(uint64_t a1)
{
  v2 = [objc_opt_self() boldButton];
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v3 = sub_1D139012C();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:a1 action:sel_doneButtonTapped_ forControlEvents:64];
  return v2;
}

id sub_1D12A93FC()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = [objc_opt_self() systemWhiteColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 startAnimating];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1D12A94D8(void *a1, void *a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss] = 0;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_cancellable] = 0;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___doneButton] = 0;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner] = 0;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_onboardingSession] = a1;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account] = a2;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_selectedItems] = a3;
  v5 = qword_1EC608DF0;
  v6 = a1;
  v7 = a2;
  if (v5 != -1)
  {
    swift_once();
  }

  v8 = sub_1D139012C();
  if (qword_1EC608DF8 != -1)
  {
    swift_once();
  }

  sub_1D10C68DC(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E700;
  v10 = [v7 title];
  v11 = sub_1D139016C();
  v13 = v12;

  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D1089930();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_1D13901AC();
  v14 = sub_1D139012C();

  v17.receiver = v3;
  v17.super_class = type metadata accessor for ClinicalSharingOnboardingSharingHealthDataViewController();
  v15 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_icon_contentLayout_, v8, v14, 0, 3);

  return v15;
}

void sub_1D12A97D0()
{
  v0 = sub_1D12A9280();
  sub_1D10A5C9C(0, &qword_1EE06B560, MEMORY[0x1E69E6158]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D139EAB0;
  *(v1 + 32) = sub_1D139016C();
  *(v1 + 40) = v2;
  *(v1 + 48) = 0xD000000000000010;
  *(v1 + 56) = 0x80000001D13B8B50;
  *(v1 + 64) = 1701736260;
  *(v1 + 72) = 0xE400000000000000;
  v3 = sub_1D139044C();

  v4 = HKUIJoinStringsForAutomationIdentifier();

  [v0 setAccessibilityIdentifier_];
}

void sub_1D12A98D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE06B6C8;
  v11 = sub_1D139012C();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10];

  if (!v12)
  {
    sub_1D138F06C();
    v45 = sub_1D138F0AC();
    v46 = sub_1D139081C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v64 = v48;
      v65 = ObjectType;
      *v47 = 136315138;
      swift_getMetatypeMetadata();
      v49 = sub_1D13901EC();
      v51 = sub_1D11DF718(v49, v50, &v64);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1D101F000, v45, v46, "[%s]: couldn't find image 'HealthLink_Onboarding_SharingInProgressWithSpinnerPlaceholder'", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1D38882F0](v48, -1, -1);
      MEMORY[0x1D38882F0](v47, -1, -1);
    }

    v52 = *(v4 + 8);
    v53 = v6;
LABEL_14:
    v52(v53, v3);
    return;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = sub_1D12A93FC();
  [v13 addSubview_];

  v15 = [v1 headerView];
  v16 = [v15 customIconContainerView];

  if (!v16)
  {

    sub_1D138F06C();
    v54 = sub_1D138F0AC();
    v55 = sub_1D139081C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v64 = v57;
      v65 = ObjectType;
      *v56 = 136315138;
      swift_getMetatypeMetadata();
      v58 = sub_1D13901EC();
      v60 = sub_1D11DF718(v58, v59, &v64);
      v63 = v3;
      v61 = v60;

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1D101F000, v54, v55, "[%s]: there is no customIconContainerView", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x1D38882F0](v57, -1, -1);
      MEMORY[0x1D38882F0](v56, -1, -1);

      (*(v4 + 8))(v9, v63);
      return;
    }

    v52 = *(v4 + 8);
    v53 = v9;
    goto LABEL_14;
  }

  [v16 addSubview_];
  v62 = objc_opt_self();
  sub_1D10A5C9C(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D13A72C0;
  v18 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner;
  v19 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner] centerXAnchor];
  v20 = [v13 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:106.0];

  *(v17 + 32) = v21;
  v22 = [*&v1[v18] centerYAnchor];
  v23 = [v13 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:60.5];

  *(v17 + 40) = v24;
  v25 = [*&v1[v18] heightAnchor];
  v26 = [v25 constraintEqualToConstant_];

  *(v17 + 48) = v26;
  v27 = [*&v1[v18] widthAnchor];
  v28 = [v27 constraintEqualToConstant_];

  *(v17 + 56) = v28;
  v29 = [v13 centerYAnchor];
  v30 = [v16 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v17 + 64) = v31;
  v32 = [v13 centerXAnchor];
  v33 = [v16 centerXAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v17 + 72) = v34;
  v35 = [v13 heightAnchor];
  v36 = [v16 heightAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v17 + 80) = v37;
  v38 = [v13 widthAnchor];

  v39 = [v16 heightAnchor];
  [v12 size];
  v41 = v40;
  [v12 size];
  v43 = [v38 constraintEqualToAnchor:v39 multiplier:v41 / v42];

  *(v17 + 88) = v43;
  sub_1D106F934(0, &qword_1EC609690, 0x1E696ACD8);
  v63 = sub_1D139044C();

  [v62 activateConstraints_];

  v44 = v63;
}

void sub_1D12AA0D8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE06B6C8;
  v7 = sub_1D139012C();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  if (v8)
  {
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    v9 = sub_1D138D1CC();
    v11 = v10;
    sub_1D138D1CC();
    sub_1D10C68DC(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D139E700;
    v13 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account] title];
    v14 = sub_1D139016C();
    v16 = v15;

    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1D1089930();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    v17 = sub_1D13901AC();
    v19 = v18;

    sub_1D12AAA74(v8, v9, v11, v17, v19, v0);
  }

  else
  {
    sub_1D138F06C();
    v20 = sub_1D138F0AC();
    v21 = sub_1D13907FC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      v27[1] = ObjectType;
      *v22 = 136315138;
      swift_getMetatypeMetadata();
      v24 = sub_1D13901EC();
      v26 = sub_1D11DF718(v24, v25, v27);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1D101F000, v20, v21, "[%s] Could not load image HealthLink_Onboarding_SharingCompleted", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1D38882F0](v23, -1, -1);
      MEMORY[0x1D38882F0](v22, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_1D12AA510(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE06B6C8;
  v10 = sub_1D139012C();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  if (v11)
  {
    v44 = a1;
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    v48 = v11;
    v46 = sub_1D138D1CC();
    v47 = v12;
    v13 = objc_opt_self();
    v14 = sub_1D139012C();
    v15 = [v13 modelSpecificLocalizedStringKeyForKey_];

    if (v15)
    {
      sub_1D139016C();

      sub_1D138D1CC();

      sub_1D10C68DC(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D139E710;
      v17 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account;
      v18 = [*&v2[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account] title];
      v19 = sub_1D139016C();
      v21 = v20;

      v22 = MEMORY[0x1E69E6158];
      *(v16 + 56) = MEMORY[0x1E69E6158];
      v23 = sub_1D1089930();
      *(v16 + 64) = v23;
      *(v16 + 32) = v19;
      *(v16 + 40) = v21;
      v45 = v2;
      v24 = [*&v2[v17] title];
      v25 = sub_1D139016C();
      v27 = v26;

      *(v16 + 96) = v22;
      *(v16 + 104) = v23;
      *(v16 + 72) = v25;
      *(v16 + 80) = v27;
      v28 = sub_1D13901AC();
      v30 = v29;

      if ([objc_opt_self() isAppleInternalInstall])
      {
        v49 = v28;
        v50 = v30;

        MEMORY[0x1D3885C10](0xD000000000000012, 0x80000001D13C8CF0);

        v31 = v49;
        v32 = v50;
        swift_getErrorValue();
        v33 = sub_1D13916FC();
        v35 = v34;
        v49 = v31;
        v50 = v32;

        MEMORY[0x1D3885C10](v33, v35);

        v28 = v49;
        v30 = v50;
      }

      v36 = v48;
      sub_1D12AAA74(v48, v46, v47, v28, v30, v45);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D138F06C();
    v37 = sub_1D138F0AC();
    v38 = sub_1D13907FC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51 = v40;
      *v39 = 136315138;
      v49 = ObjectType;
      swift_getMetatypeMetadata();
      v41 = sub_1D13901EC();
      v43 = sub_1D11DF718(v41, v42, &v51);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1D101F000, v37, v38, "[%s] Could not load image HealthLink_Onboarding_Error", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1D38882F0](v40, -1, -1);
      MEMORY[0x1D38882F0](v39, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_1D12AAA74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6)
{
  v6 = a6;
  v8 = [a6 headerView];
  v9 = [v8 customIconContainerView];

  if (!v9)
  {
LABEL_14:
    sub_1D13911EC();
    MEMORY[0x1D3885C10](0xD00000000000003BLL, 0x80000001D13C9EB0);
    v42 = [v6 headerView];
    v43 = [v42 description];
    v44 = sub_1D139016C();
    v46 = v45;

    MEMORY[0x1D3885C10](v44, v46);

    sub_1D13913BC();
    __break(1u);
    return;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAlpha_];
  [v9 addSubview_];
  v11 = [v10 centerXAnchor];
  v12 = [v9 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  [v13 setActive_];
  v14 = [v10 centerYAnchor];
  v15 = [v9 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  [v16 setActive_];
  v17 = [v10 heightAnchor];
  v18 = [v9 heightAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  [v19 setActive_];
  v20 = [v10 widthAnchor];

  v21 = [v9 heightAnchor];
  [a1 size];
  v23 = v22;
  [a1 size];
  v25 = [v20 constraintEqualToAnchor:v21 multiplier:v23 / v24];

  [v25 setActive_];
  v26 = swift_allocObject();
  v26[2] = v10;
  v26[3] = v6;
  v26[4] = a2;
  v26[5] = a3;
  v26[6] = a4;
  v26[7] = a5;
  v26[8] = nullsub_1;
  v26[9] = 0;
  v27 = v10;

  v6 = v6;
  v28 = [v9 subviews];
  sub_1D106F934(0, &qword_1EC609680, 0x1E69DD250);
  v29 = sub_1D139045C();

  if (v29 >> 62)
  {
    if (sub_1D13910DC())
    {
      goto LABEL_4;
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1D3886B70](0, v29);
      goto LABEL_7;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v29 + 32);
LABEL_7:
      v31 = v30;

      v32 = objc_opt_self();
      v33 = swift_allocObject();
      v33[2] = v31;
      v33[3] = sub_1D12AFF70;
      v33[4] = v26;
      v56 = sub_1D12AFFD0;
      v57 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = sub_1D10CBD3C;
      v55 = &block_descriptor_116;
      v34 = _Block_copy(&aBlock);
      v35 = v31;

      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      v56 = sub_1D11B6CAC;
      v57 = v36;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = sub_1D12A900C;
      v55 = &block_descriptor_122;
      v37 = _Block_copy(&aBlock);
      v38 = v35;

      [v32 animateWithDuration:v34 animations:v37 completion:0.3];

      _Block_release(v37);
      _Block_release(v34);

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  [v27 setAlpha_];
  v39 = [v6 headerView];
  v40 = sub_1D139012C();
  [v39 setTitle_];

  v41 = [v6 &selRef_providerServiceStore];
  v51 = sub_1D139012C();
  [v41 setDetailText_];
}

uint64_t sub_1D12AB1A8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  [a1 setAlpha_];
  v9 = [a2 headerView];
  v10 = sub_1D139012C();
  [v9 setTitle_];

  v11 = [a2 headerView];
  v12 = sub_1D139012C();
  [v11 setDetailText_];

  return a7();
}

void sub_1D12AB2A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1D12AF874(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v53 - v4;
  sub_1D12AF9CC(0);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12AFA8C(0, v7);
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12AFAF4(0, &qword_1EC60EB88, sub_1D12AFA8C, sub_1D12AFBE0);
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v53 - v13;
  sub_1D12AFC14(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D138FF3C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  *v21 = sub_1D1390A7C();
  (*(v19 + 104))(v21, *MEMORY[0x1E69E8020], v18);
  v22 = sub_1D138FF5C();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    sub_1D12A98D8();
    v23 = [v1 navigationItem];
    [v23 setRightBarButtonItem_];

    v24 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss;
    v1[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss] = 0;
    v25 = sub_1D12A9280();
    [v25 setEnabled_];

    [v1 setModalInPresentation_];
    v26 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account];
    v27 = sub_1D12AC84C(v26);
    v55 = v16;
    v28 = v27;

    v66 = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = v1;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D12AFD68;
    *(v30 + 24) = v29;
    v31 = v1;
    sub_1D138F61C();
    v53 = ObjectType;
    v32 = MEMORY[0x1E695BED0];
    sub_1D12AF750(0, &qword_1EC60EB68, MEMORY[0x1E695BED0]);
    sub_1D106F934(0, &qword_1EC609A00, 0x1E69A3F00);
    v54 = v15;
    sub_1D12AF7E8(&qword_1EC60EB70, &qword_1EC60EB68, v32, MEMORY[0x1E695BED8]);
    sub_1D138F8AC();

    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1D12AFDA4;
    *(v34 + 24) = v33;
    v35 = v31;
    sub_1D138F61C();
    sub_1D12AFAC0();
    v36 = v58;
    v37 = v59;
    sub_1D138F8AC();

    (*(v57 + 8))(v9, v36);
    v38 = swift_allocObject();
    *(v38 + 16) = v35;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1D12AFDAC;
    *(v39 + 24) = v38;
    v40 = v35;
    sub_1D138F61C();
    sub_1D12AFBE0();
    v41 = v61;
    v42 = v62;
    sub_1D138F8AC();

    (*(v60 + 8))(v37, v41);
    v43 = sub_1D1390A7C();
    v66 = v43;
    v44 = sub_1D1390A2C();
    (*(*(v44 - 8) + 56))(v5, 1, 1, v44);
    sub_1D12AFCE0();
    sub_1D10EDC58();
    v45 = v64;
    v46 = v65;
    sub_1D138F8BC();
    sub_1D10D5C04(v5);

    (*(v63 + 8))(v42, v45);
    v47 = swift_allocObject();
    v48 = v53;
    *(v47 + 16) = v40;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    *(v49 + 16) = v40;
    *(v49 + 24) = v48;
    sub_1D12AFDC4(&qword_1EC60EBA8, sub_1D12AFC14, MEMORY[0x1E695BE98]);
    v50 = v40;
    v51 = v54;
    v52 = sub_1D138F85C();

    (*(v55 + 8))(v46, v51);
    *&v50[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_cancellable] = v52;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D12ABB70(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  sub_1D12AF69C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = ObjectType;
  v11 = MEMORY[0x1E695C028];
  sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
  sub_1D12AF7E8(&qword_1EC60EB48, &qword_1EC60EB40, v11, MEMORY[0x1E695C038]);
  v12 = a1;
  v13 = a2;
  sub_1D138F75C();
  sub_1D12AFDC4(&qword_1EC60EB58, sub_1D12AF69C, MEMORY[0x1E695C058]);
  v14 = sub_1D138F80C();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_1D12ABD48(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  sub_1D12AF69C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a1;
  v10[4] = ObjectType;
  v11 = MEMORY[0x1E695C028];
  sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
  sub_1D12AF7E8(&qword_1EC60EB48, &qword_1EC60EB40, v11, MEMORY[0x1E695C038]);
  v12 = a2;
  v13 = a1;
  sub_1D138F75C();
  sub_1D12AFDC4(&qword_1EC60EB58, sub_1D12AF69C, MEMORY[0x1E695C058]);
  v14 = sub_1D138F80C();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_1D12ABF20(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D12AF69C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = ObjectType;
  v9 = MEMORY[0x1E695C028];
  sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
  sub_1D12AF7E8(&qword_1EC60EB48, &qword_1EC60EB40, v9, MEMORY[0x1E695C038]);
  v10 = a1;
  sub_1D138F75C();
  sub_1D12AFDC4(&qword_1EC60EB58, sub_1D12AF69C, MEMORY[0x1E695C058]);
  v11 = sub_1D138F80C();
  (*(v5 + 8))(v7, v4);
  return v11;
}

void sub_1D12AC0E4(void **a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss;
  a2[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss] = 1;
  v11 = sub_1D12A9280();
  [v11 setEnabled_];

  [a2 setModalInPresentation_];
  if (v9)
  {
    sub_1D138F06C();
    v12 = v9;
    v13 = sub_1D138F0AC();
    v14 = sub_1D13907FC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v5;
      v17 = v16;
      v28 = v16;
      *v15 = 136446466;
      v18 = sub_1D139184C();
      v20 = sub_1D11DF718(v18, v19, &v28);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2082;
      v27 = v9;
      v21 = v9;
      sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
      v22 = sub_1D139020C();
      v24 = sub_1D11DF718(v22, v23, &v28);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_1D101F000, v13, v14, "[%{public}s]: Error during sharing initiation: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v17, -1, -1);
      MEMORY[0x1D38882F0](v15, -1, -1);

      (*(v6 + 8))(v8, v26);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    sub_1D12AA510(v9);
  }
}

void sub_1D12AC380(void **a1, _BYTE *a2, uint64_t a3)
{
  v41 = a3;
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138F0BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1D138F04C();
  v13 = v12;
  v14 = sub_1D138F0AC();
  v15 = sub_1D139081C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = v5;
    v17 = v16;
    v40 = swift_slowAlloc();
    v44 = v40;
    *v17 = 136315394;
    v18 = sub_1D139184C();
    v20 = sub_1D11DF718(v18, v19, &v44);
    v41 = v8;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = [v13 identifier];
    v23 = v43;
    sub_1D138D5CC();

    sub_1D12AFDC4(&qword_1EC60D1C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v24 = sub_1D13915CC();
    v26 = v25;
    (*(v6 + 8))(v23, v42);
    v27 = sub_1D11DF718(v24, v26, &v44);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1D101F000, v14, v15, "[%s] Successfully started sharing for account %s)", v17, 0x16u);
    v28 = v40;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v28, -1, -1);
    v29 = v17;
    v5 = v42;
    MEMORY[0x1D38882F0](v29, -1, -1);

    (*(v9 + 8))(v11, v41);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v30 = [*(*&a2[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_onboardingSession] + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile) ingestionStore];
  v31 = sub_1D139012C();
  sub_1D12AF874(0, &qword_1EC60EBB0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6F90]);
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D139E700;
  v34 = [*&a2[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account] identifier];
  v35 = v43;
  sub_1D138D5CC();

  (*(v6 + 32))(v33 + v32, v35, v5);
  v36 = sub_1D139044C();

  [v30 ingestHealthRecordsWithOptions:0 reason:v31 accountIdentifiers:v36 completion:0];

  v37 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss;
  a2[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss] = 1;
  v38 = sub_1D12A9280();
  [v38 setEnabled_];

  [a2 setModalInPresentation_];
  sub_1D12AA0D8();
}

uint64_t sub_1D12AC84C(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D12AF634(0);
  v4 = v3;
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12AF750(0, &qword_1EC60EB30, MEMORY[0x1E695C0C0]);
  v8 = v7;
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  sub_1D12AF69C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = swift_allocObject();
    v18[2] = v1;
    v18[3] = v17;
    v18[4] = ObjectType;
    v19 = MEMORY[0x1E695C028];
    sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
    sub_1D12AF7E8(&qword_1EC60EB48, &qword_1EC60EB40, v19, MEMORY[0x1E695C038]);
    v20 = a1;
    v21 = v1;
    sub_1D138F75C();
    sub_1D12AFDC4(&qword_1EC60EB58, sub_1D12AF69C, MEMORY[0x1E695C058]);
    v22 = sub_1D138F80C();
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v28 = a1;
    sub_1D106F934(0, &qword_1EC609A00, 0x1E69A3F00);
    v23 = a1;
    sub_1D138F71C();
    sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    sub_1D138F6FC();
    (*(v25 + 8))(v6, v4);
    sub_1D12AF7E8(&qword_1EC60EB50, &qword_1EC60EB30, MEMORY[0x1E695C0C0], MEMORY[0x1E695C0C8]);
    v22 = sub_1D138F80C();
    (*(v26 + 8))(v10, v8);
  }

  return v22;
}

double sub_1D12ACC44(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5)
{
  sub_1D12AF874(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = &v36 - v11;
  v12 = sub_1D138F0BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  sub_1D138F06C();
  v17 = sub_1D138F0AC();
  v18 = sub_1D139081C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v12;
    v21 = v20;
    v41 = v20;
    *v19 = 136315138;
    v22 = sub_1D139184C();
    v39 = a5;
    v24 = sub_1D11DF718(v22, v23, &v41);
    v38 = v16;
    v25 = v13;
    v26 = v24;
    a5 = v39;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_1D101F000, v17, v18, "[%s] Persisting newly logged in account...", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1D38882F0](v21, -1, -1);
    MEMORY[0x1D38882F0](v19, -1, -1);

    (*(v25 + 8))(v15, v37);
    v16 = v38;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v27 = *&a3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_onboardingSession];
  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = sub_1D12AF8D8;
  v28[4] = v16;
  v28[5] = a5;
  v29 = sub_1D13905DC();
  v30 = v40;
  (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v27;
  *(v31 + 40) = a4;
  *(v31 + 48) = 1;
  *(v31 + 56) = sub_1D12AF8E4;
  *(v31 + 64) = v28;
  v32 = a3;
  v33 = v27;
  v34 = a4;
  sub_1D107877C(0, 0, v30, &unk_1D13ADBC0, v31);

  return result;
}

void sub_1D12ACFD0(void *a1, void *a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  v61 = a6;
  v11 = sub_1D138D5EC();
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D138F0BC();
  v63 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  if (a1)
  {
    v62 = v14;
    v20 = *(a3 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account);
    *(a3 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account) = a1;
    v21 = a1;

    sub_1D138F06C();
    v22 = v21;
    v23 = sub_1D138F0AC();
    v24 = sub_1D139081C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v59 = a4;
      v26 = v25;
      v58 = swift_slowAlloc();
      v65 = v58;
      *v26 = 136315394;
      v27 = sub_1D139184C();
      v29 = sub_1D11DF718(v27, v28, &v65);
      v61 = a5;
      v30 = v29;

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = [v22 identifier];
      sub_1D138D5CC();

      sub_1D12AFDC4(&qword_1EC60D1C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v32 = sub_1D13915CC();
      v34 = v33;
      (*(v60 + 8))(v13, v11);
      v35 = sub_1D11DF718(v32, v34, &v65);

      *(v26 + 14) = v35;
      _os_log_impl(&dword_1D101F000, v23, v24, "[%s] Successfully persisted newly logged in account %s", v26, 0x16u);
      v36 = v58;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v36, -1, -1);
      v37 = v26;
      a4 = v59;
      MEMORY[0x1D38882F0](v37, -1, -1);
    }

    (*(v63 + 8))(v19, v62);
    v38 = v22;
    a4(a1, 0);
  }

  else
  {
    sub_1D138F06C();
    v39 = a2;
    v40 = sub_1D138F0AC();
    v41 = sub_1D13907FC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v62 = v14;
      v43 = a4;
      v44 = v42;
      v45 = swift_slowAlloc();
      v65 = v45;
      *v44 = 136315394;
      v46 = sub_1D139184C();
      v48 = sub_1D11DF718(v46, v47, &v65);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v64 = a2;
      v49 = a2;
      sub_1D10C68DC(0, &qword_1EE06B078, &qword_1EE06B690, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v50 = sub_1D139020C();
      v52 = sub_1D11DF718(v50, v51, &v65);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_1D101F000, v40, v41, "[%s] Error persisting newly logged in account: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v45, -1, -1);
      v53 = v44;
      a4 = v43;
      MEMORY[0x1D38882F0](v53, -1, -1);

      (*(v63 + 8))(v16, v62);
    }

    else
    {

      (*(v63 + 8))(v16, v14);
    }

    v54 = a2;
    if (!a2)
    {
      v55 = objc_opt_self();
      v56 = sub_1D139012C();
      v54 = [v55 hk:11 error:v56 description:?];
    }

    v57 = a2;
    a4(v54, 1);
  }
}

void sub_1D12AD584(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v82 = a5;
  v92 = sub_1D138ED5C();
  v9 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v79 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v97 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem(0);
  v91 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v79 - v19;
  v20 = sub_1D138D5EC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v81 = v24;

  v83 = a3;
  v25 = [a3 identifier];
  sub_1D138D5CC();

  sub_1D138D59C();
  (*(v21 + 8))(v23, v20);
  v26 = objc_allocWithZone(MEMORY[0x1E696C438]);
  v27 = sub_1D139012C();

  v28 = [v26 initForClinicalAccountIdentifier_];

  v29 = [*(*(a4 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_onboardingSession) + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile) healthStore];
  v30 = objc_allocWithZone(MEMORY[0x1E696C430]);
  v80 = v28;
  v79 = [v30 initWithHealthStore:v29 recipientIdentifier:v28];

  v31 = *(a4 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_selectedItems);
  v89 = *(v31 + 16);
  if (v89)
  {
    v32 = 0;
    v33 = v90;
    v84 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v85 = v16;
    v87 = v31;
    v88 = v31 + v84;
    v34 = (v9 + 16);
    v96 = v9 + 32;
    v94 = MEMORY[0x1E69E7CC0];
    v35 = v93;
    v36 = v9;
    v37 = v97;
    v38 = v91;
    v86 = v11;
    while (v32 < *(v31 + 16))
    {
      v39 = *(v38 + 72);
      sub_1D111EC40(v88 + v39 * v32, v33);
      v40 = *(v33 + *(v37 + 52));
      v93 = v32;
      if (v40)
      {
        v41 = *(v40 + 16);
        if (v41)
        {
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1D10FDD9C(0, v41, 0);
          v42 = aBlock[0];
          v43 = v40 + v84;
          v44 = v92;
          do
          {
            v45 = v95;
            sub_1D111EC40(v43, v95);
            (*v34)(v35, v45 + *(v97 + 48), v44);
            sub_1D111ECA4(v45);
            aBlock[0] = v42;
            v47 = *(v42 + 16);
            v46 = *(v42 + 24);
            if (v47 >= v46 >> 1)
            {
              sub_1D10FDD9C((v46 > 1), v47 + 1, 1);
              v42 = aBlock[0];
            }

            *(v42 + 16) = v47 + 1;
            (*(v36 + 32))(v42 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v47, v35, v44);
            v43 += v39;
            --v41;
          }

          while (v41);
          v16 = v85;
          v11 = v86;
        }

        else
        {
          v42 = MEMORY[0x1E69E7CC0];
        }

        v53 = *(v42 + 16);
        v54 = v94[2];
        v55 = v54 + v53;
        v37 = v97;
        if (__OFADD__(v54, v53))
        {
          goto LABEL_38;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v94;
        if (!isUniquelyReferenced_nonNull_native || v55 > v94[3] >> 1)
        {
          if (v54 <= v55)
          {
            v58 = v54 + v53;
          }

          else
          {
            v58 = v54;
          }

          v57 = sub_1D10F78B8(isUniquelyReferenced_nonNull_native, v58, 1, v94);
        }

        v48 = v92;
        v59 = *(v42 + 16);
        v94 = v57;
        if (v59)
        {
          if ((v57[3] >> 1) - v57[2] < v53)
          {
            goto LABEL_40;
          }

          v60 = v57;
          swift_arrayInitWithCopy();

          if (v53)
          {
            v61 = v60[2];
            v62 = __OFADD__(v61, v53);
            v63 = v61 + v53;
            if (v62)
            {
              goto LABEL_41;
            }

            v60[2] = v63;
          }
        }

        else
        {

          if (v53)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v48 = v92;
        (*v34)(v16, v33 + *(v37 + 48), v92);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v49 = v94;
        }

        else
        {
          v49 = sub_1D10F78B8(0, v94[2] + 1, 1, v94);
        }

        v51 = v49[2];
        v50 = v49[3];
        if (v51 >= v50 >> 1)
        {
          v49 = sub_1D10F78B8((v50 > 1), v51 + 1, 1, v49);
        }

        v49[2] = v51 + 1;
        v52 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v94 = v49;
        (*(v36 + 32))(v49 + v52 + *(v36 + 72) * v51, v16, v48);
      }

      v32 = (v93 + 1);
      v33 = v90;
      sub_1D111ECA4(v90);
      v38 = v91;
      v31 = v87;
      if (v32 == v89)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v94 = MEMORY[0x1E69E7CC0];
    v48 = v92;
    v36 = v9;
LABEL_33:
    v64 = v94[2];
    if (v64)
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v65 = v94;
      sub_1D13912DC();
      v67 = *(v36 + 16);
      v66 = v36 + 16;
      v97 = v67;
      v68 = v65 + ((*(v66 + 64) + 32) & ~*(v66 + 64));
      v69 = v11;
      v70 = *(v66 + 56);
      do
      {
        (v97)(v69, v68, v48);
        sub_1D138ED2C();
        (*(v66 - 8))(v69, v48);
        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
        v68 += v70;
        --v64;
      }

      while (v64);
    }

    sub_1D106F934(0, &qword_1EC60B5A0, 0x1E696C428);
    v71 = sub_1D139044C();

    v72 = swift_allocObject();
    v73 = v81;
    v72[2] = sub_1D12B0030;
    v72[3] = v73;
    v74 = v83;
    v75 = v82;
    v72[4] = v83;
    v72[5] = v75;
    aBlock[4] = sub_1D12AFF40;
    aBlock[5] = v72;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D112A218;
    aBlock[3] = &block_descriptor_107;
    v76 = _Block_copy(aBlock);
    v77 = v74;

    v78 = v79;
    [v79 addSharingAuthorizations:v71 completion:v76];

    _Block_release(v76);
  }
}

uint64_t sub_1D12ADE44@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a6@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
  swift_allocObject();
  v11 = a1;
  v12 = a2;
  result = sub_1D138F73C();
  *a6 = result;
  return result;
}

void sub_1D12ADEEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v35 = a5;
  v33 = a4;
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138D5EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = *(a3 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_onboardingSession);
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v18 = *(v17 + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile);

  v34 = [v18 clinicalAccountStore];
  v19 = v33;
  v20 = [v33 identifier];
  sub_1D138D5CC();

  v21 = sub_1D138D5AC();
  (*(v13 + 8))(v15, v12);
  sub_1D138D46C();
  v22 = sub_1D138D4EC();
  v23 = *(v9 + 8);
  v23(v11, v8);
  sub_1D138D46C();
  v24 = sub_1D138D4EC();
  v23(v11, v8);
  v25 = sub_1D139072C();
  v26 = sub_1D139072C();
  v27 = swift_allocObject();
  v27[2] = sub_1D12B0030;
  v27[3] = v16;
  v28 = v35;
  v27[4] = v19;
  v27[5] = v28;
  aBlock[4] = sub_1D12AFE88;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D112A218;
  aBlock[3] = &block_descriptor_91;
  v29 = _Block_copy(aBlock);
  v30 = v19;

  v31 = v34;
  [v34 updateClinicalSharingStatusForAccountWithIdentifier:v21 firstSharedDate:v22 lastSharedDate:v24 userStatus:v25 multiDeviceStatus:v26 primaryDeviceName:0 completion:v29];
  _Block_release(v29);
}

void sub_1D12AE240(uint64_t a1, void *a2, void (*a3)(void, void), const char *a4, uint64_t a5, uint64_t a6, const char *a7, const char *a8)
{
  v50 = a7;
  v13 = sub_1D138F0BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  if (a2)
  {
    v20 = a2;
    sub_1D138F06C();
    v21 = a2;
    v22 = sub_1D138F0AC();
    v23 = sub_1D13907FC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49 = a3;
      v26 = v25;
      v52 = v25;
      *v24 = 136315394;
      v27 = sub_1D139184C();
      v29 = sub_1D11DF718(v27, v28, &v52);
      v48 = v13;
      v30 = v29;

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      v51 = a2;
      v31 = a2;
      sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
      v32 = sub_1D139020C();
      v34 = sub_1D11DF718(v32, v33, &v52);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_1D101F000, v22, v23, v50, v24, 0x16u);
      swift_arrayDestroy();
      v35 = v26;
      a3 = v49;
      MEMORY[0x1D38882F0](v35, -1, -1);
      MEMORY[0x1D38882F0](v24, -1, -1);

      (*(v14 + 8))(v19, v48);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
    }

    v46 = a2;
    a3(a2, 1);
  }

  else
  {
    sub_1D138F06C();
    v36 = sub_1D138F0AC();
    v37 = sub_1D139081C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v49 = a3;
      v39 = v38;
      v40 = swift_slowAlloc();
      v50 = a4;
      v41 = v40;
      v52 = v40;
      *v39 = 136315138;
      v42 = sub_1D139184C();
      v48 = v13;
      v44 = sub_1D11DF718(v42, v43, &v52);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1D101F000, v36, v37, a8, v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x1D38882F0](v41, -1, -1);
      v45 = v39;
      a3 = v49;
      MEMORY[0x1D38882F0](v45, -1, -1);

      (*(v14 + 8))(v16, v48);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    a3(a5, 0);
  }
}

uint64_t sub_1D12AE618@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
  swift_allocObject();
  v7 = a1;
  result = sub_1D138F73C();
  *a3 = result;
  return result;
}

void sub_1D12AE6C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_allocWithZone(MEMORY[0x1E69A3F78]);

  v10 = [v9 init];
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = sub_1D12B0030;
  v11[4] = v8;
  v11[5] = a4;
  v14[4] = sub_1D12AFE1C;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D1135F2C;
  v14[3] = &block_descriptor_56;
  v12 = _Block_copy(v14);
  v13 = a3;

  [v10 shareHealthDataWithOptions:0 reason:1 completion:v12];

  _Block_release(v12);
}

void sub_1D12AE814(unint64_t a1, uint64_t a2, void *a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6)
{
  v92 = a6;
  v99 = a3;
  v98 = sub_1D138D5EC();
  v94 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v85 - v12;
  v13 = sub_1D138F0BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85 - v21;
  if (a1)
  {
    sub_1D138F06C();
    v23 = sub_1D138F0AC();
    v24 = sub_1D139081C();
    v25 = os_log_type_enabled(v23, v24);
    v89 = v13;
    v90 = a5;
    v91 = a4;
    if (v25)
    {
      v26 = swift_slowAlloc();
      LODWORD(i) = v24;
      v27 = v26;
      v93 = swift_slowAlloc();
      v101 = v93;
      *v27 = 136315138;
      v28 = sub_1D139184C();
      v30 = sub_1D11DF718(v28, v29, &v101);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_1D101F000, v23, i, "[%s] Successfully completed sync to clinicalSharingClient", v27, 0xCu);
      v31 = v93;
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x1D38882F0](v31, -1, -1);
      MEMORY[0x1D38882F0](v27, -1, -1);
    }

    v86 = *(v14 + 8);
    v86(v22, v13);
    v87 = v19;
    v88 = v14;
    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
    {
      v33 = 0;
      v34 = (a1 & 0xC000000000000001);
      v35 = v92;
      v36 = i;
      do
      {
        if (v34)
        {
          v37 = MEMORY[0x1D3886B70](v33, a1);
        }

        else
        {
          if (v33 >= *(v32 + 16))
          {
            goto LABEL_34;
          }

          v37 = *(a1 + 8 * v33 + 32);
        }

        v38 = v37;
        v39 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v101 = v37;
        sub_1D12AF094(&v101, a2, v35);

        ++v33;
      }

      while (v39 != v36);
      v40 = 0;
      v93 = (a1 & 0xC000000000000001);
      ++v94;
      while (1)
      {
        if (v34)
        {
          v41 = MEMORY[0x1D3886B70](v40, a1);
        }

        else
        {
          if (v40 >= *(v32 + 16))
          {
            goto LABEL_36;
          }

          v41 = *(a1 + 8 * v40 + 32);
        }

        v42 = v41;
        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        v44 = v32;
        v45 = a1;
        v46 = [v41 accountID];
        v47 = v96;
        sub_1D138D5CC();

        v48 = [v99 identifier];
        v49 = v97;
        sub_1D138D5CC();

        a2 = sub_1D138D5BC();
        v50 = *v94;
        v51 = v49;
        v52 = v98;
        (*v94)(v51, v98);
        v50(v47, v52);
        if (a2)
        {
          v66 = [v42 error];

          if (!v66)
          {
            goto LABEL_38;
          }

          v67 = v66;
          v91(v66, 1);

          v68 = v87;
          sub_1D138F06C();
          v69 = v67;
          v70 = sub_1D138F0AC();
          v71 = sub_1D139081C();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v101 = v73;
            *v72 = 136315394;
            v74 = sub_1D139184C();
            v76 = sub_1D11DF718(v74, v75, &v101);

            *(v72 + 4) = v76;
            *(v72 + 12) = 2080;
            v100 = v69;
            sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
            v77 = v69;
            v78 = sub_1D139020C();
            v80 = sub_1D11DF718(v78, v79, &v101);

            *(v72 + 14) = v80;
            _os_log_impl(&dword_1D101F000, v70, v71, "[%s] Error sharing to clinicalSharingClient: %s", v72, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D38882F0](v73, -1, -1);
            MEMORY[0x1D38882F0](v72, -1, -1);
          }

          else
          {
          }

          v86(v68, v89);
          return;
        }

        ++v40;
        a1 = v45;
        v32 = v44;
        v34 = v93;
        if (v43 == i)
        {
          goto LABEL_38;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

LABEL_38:
    v91(v99, 0);
  }

  else
  {
    v53 = v14;
    sub_1D138F06C();
    v54 = a2;
    v55 = sub_1D138F0AC();
    v56 = sub_1D13907FC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v101 = v58;
      *v57 = 136315394;
      v59 = sub_1D139184C();
      v90 = a5;
      v91 = a4;
      v61 = sub_1D11DF718(v59, v60, &v101);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v100 = a2;
      v62 = a2;
      sub_1D10C68DC(0, &qword_1EE06B078, &qword_1EE06B690, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v63 = sub_1D139020C();
      v65 = sub_1D11DF718(v63, v64, &v101);

      *(v57 + 14) = v65;
      _os_log_impl(&dword_1D101F000, v55, v56, "[%s] Error sharing to clinicalSharingClient: %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v58, -1, -1);
      MEMORY[0x1D38882F0](v57, -1, -1);

      a4 = v91;
    }

    else
    {
    }

    (*(v53 + 8))(v16, v13);
    v81 = a2;
    if (!a2)
    {
      v82 = objc_opt_self();
      v83 = sub_1D139012C();
      v81 = [v82 hk:11 error:v83 description:?];
    }

    v84 = a2;
    a4(v81, 1);
  }
}

uint64_t sub_1D12AF094(void **a1, void *a2, uint64_t a3)
{
  v42 = a3;
  v6 = sub_1D138D5EC();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138F0BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_1D138F06C();
  v14 = v13;
  v15 = a2;
  v16 = sub_1D138F0AC();
  v17 = sub_1D139081C();

  v45 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v38 = v16;
    v39 = v10;
    v40 = v9;
    v41 = v3;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47 = v19;
    *v18 = 136315650;
    v20 = sub_1D139184C();
    v22 = sub_1D11DF718(v20, v21, &v47);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = [v14 accountID];
    sub_1D138D5CC();

    sub_1D12AFDC4(&qword_1EC60D1C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v24 = v44;
    v25 = sub_1D13915CC();
    v27 = v26;
    (*(v43 + 8))(v8, v24);
    v28 = sub_1D11DF718(v25, v27, &v47);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    if (a2)
    {
      v46 = a2;
      v29 = a2;
      sub_1D10C68DC(0, &qword_1EE06B078, &qword_1EE06B690, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v30 = sub_1D13901EC();
      v32 = v31;
    }

    else
    {
      v32 = 0xEA00000000006C75;
      v30 = 0x6673736563637553;
    }

    v34 = v39;
    v35 = sub_1D11DF718(v30, v32, &v47);

    *(v18 + 24) = v35;
    v36 = v38;
    _os_log_impl(&dword_1D101F000, v38, v45, "[%s] Sync Result. Account: %s %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v19, -1, -1);
    MEMORY[0x1D38882F0](v18, -1, -1);

    return (*(v34 + 8))(v12, v40);
  }

  else
  {

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1D12AF47C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_1D139101C();
  swift_unknownObjectRelease();
  [v4 dismissViewControllerAnimated:1 completion:0];

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

id sub_1D12AF550(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClinicalSharingOnboardingSharingHealthDataViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D12AF634(uint64_t a1)
{
  if (!qword_1EC60EB28)
  {
    sub_1D106F934(255, &qword_1EC609A00, 0x1E69A3F00);
    v1 = sub_1D138F70C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60EB28);
    }
  }
}

void sub_1D12AF69C(uint64_t a1)
{
  if (!qword_1EC60EB38)
  {
    v1 = MEMORY[0x1E695C028];
    sub_1D12AF750(255, &qword_1EC60EB40, MEMORY[0x1E695C028]);
    sub_1D12AF7E8(&qword_1EC60EB48, &qword_1EC60EB40, v1, MEMORY[0x1E695C038]);
    v2 = sub_1D138F76C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC60EB38);
    }
  }
}

void sub_1D12AF750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1D106F934(255, &qword_1EC609A00, 0x1E69A3F00);
    v7 = sub_1D1080EA4(255, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D12AF7E8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D12AF750(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D12AF874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D12AF8F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D108077C;

  return sub_1D1367254(a1, v4, v5, v6, v7, v8, v10, v9);
}

void sub_1D12AF9CC(uint64_t a1)
{
  if (!qword_1EC60EB60)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1D12AF750(255, &qword_1EC60EB68, MEMORY[0x1E695BED0]);
    sub_1D12AF7E8(&qword_1EC60EB70, &qword_1EC60EB68, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1D138F59C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC60EB60);
    }
  }
}

void sub_1D12AFAF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    v7 = MEMORY[0x1E695BED0];
    sub_1D12AF750(255, &qword_1EC60EB68, MEMORY[0x1E695BED0]);
    a3(255);
    sub_1D12AF7E8(&qword_1EC60EB70, &qword_1EC60EB68, v7, MEMORY[0x1E695BED8]);
    a4();
    v8 = sub_1D138F59C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D12AFC14(uint64_t a1)
{
  if (!qword_1EC60EB98)
  {
    sub_1D12AFAF4(255, &qword_1EC60EB88, sub_1D12AFA8C, sub_1D12AFBE0);
    sub_1D106F934(255, &qword_1EE06B760, 0x1E69E9610);
    sub_1D12AFCE0();
    sub_1D10EDC58();
    v1 = sub_1D138F5FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60EB98);
    }
  }
}

unint64_t sub_1D12AFCE0()
{
  result = qword_1EC60EBA0;
  if (!qword_1EC60EBA0)
  {
    sub_1D12AFAF4(255, &qword_1EC60EB88, sub_1D12AFA8C, sub_1D12AFBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EBA0);
  }

  return result;
}

uint64_t sub_1D12AFD70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D12AFDC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_87Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_31Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

id sub_1D12B003C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView);
  }

  else
  {
    v4 = sub_1D12B009C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D12B009C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setEditable_];
  [v0 setAlwaysBounceVertical_];
  [v0 setDataDetectorTypes_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];
  [v1 lineHeight];
  [v0 setTextContainerInset_];

  return v0;
}

void sub_1D12B0198()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for TextViewController();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = sub_1D12B003C();
  [v6 addSubview_];

  v8 = OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView;
  v9 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView] leadingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToSystemSpacingAfterAnchor:v12 multiplier:1.0];
  [v13 setActive_];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [*&v0[v8] trailingAnchor];
  v18 = [v16 constraintEqualToSystemSpacingAfterAnchor:v17 multiplier:1.0];

  [v18 setActive_];
  v19 = [*&v0[v8] topAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v19 constraintEqualToSystemSpacingBelowAnchor:v22 multiplier:1.0];
  [v23 setActive_];

  v24 = [v0 view];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 bottomAnchor];

    v27 = [*&v0[v8] bottomAnchor];
    v28 = [v26 constraintEqualToSystemSpacingBelowAnchor:v27 multiplier:1.0];

    [v28 setActive_];
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_1D12B069C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D12B0704()
{
  if ((*(v0 + 120) & 1) == 0)
  {
    return *(v0 + 112);
  }

  sub_1D12B09F0(v0);
  *(v0 + 112) = result;
  *(v0 + 120) = 0;
  return result;
}

uint64_t sub_1D12B073C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1D10FDC5C(0, v6, 0);
  result = v29;
  v28 = v4;
  v26 = a1;
  v27 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_34;
      }

      v13 = *v9;
      if (*v8 > *v9)
      {
        v13 = *v8;
      }

      if (*v8 <= 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v13;
      }

      v30 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v25 = v12;
        sub_1D10FDC5C((v15 > 1), v16 + 1, 1);
        v12 = v25;
        result = v30;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 8 * v16 + 32) = v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = v5;
LABEL_18:
  if (v28 > v12)
  {
    v17 = v26 + 32;
    while (v6 < v28)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_36;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_37;
        }

        v19 = *(v17 + 8 * v6);
        v20 = *(v27 + 32 + 8 * v6);
        if (v19 > v20)
        {
          v20 = *(v17 + 8 * v6);
        }

        v21 = v19 <= 0.0 ? 0.0 : v20;
        v31 = result;
        v23 = *(result + 16);
        v22 = *(result + 24);
        if (v23 >= v22 >> 1)
        {
          v24 = v12;
          sub_1D10FDC5C((v22 > 1), v23 + 1, 1);
          v12 = v24;
          result = v31;
        }

        *(result + 16) = v23 + 1;
        *(result + 8 * v23 + 32) = v21;
        ++v6;
        if (v18 != v28)
        {
          continue;
        }
      }

      return result;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D12B0938(unint64_t result)
{
  v2 = result;
  v3 = *(v1 + 104);
  if (*(v3 + 16))
  {
    result = sub_1D129E4DC(result);
    if (v4)
    {
      v5 = *(*(v3 + 56) + 24 * result);

      return v5;
    }
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = sub_1D13904DC();
    *(v5 + 16) = v2;
    bzero((v5 + 32), 8 * v2);
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D12B09F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >> 62)
  {
LABEL_24:
    if (sub_1D13910DC())
    {
      result = sub_1D13910DC();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_32;
      }
    }

    v2 = sub_1D13910DC();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
LABEL_14:
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_15;
    }
  }

  v3 = 0;
  v4 = 0.0;
  while ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D3886B70](v3, v1);
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = sub_1D121C7E4();

    v4 = v4 + v6;
    ++v3;
    if (v5 == v2)
    {
      goto LABEL_12;
    }
  }

  if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  if (!(v1 >> 62))
  {
    goto LABEL_14;
  }

LABEL_13:
  result = sub_1D13910DC();
LABEL_15:
  if (!result)
  {
    return result;
  }

  if (__OFSUB__(result--, 1))
  {
    __break(1u);
LABEL_29:
    v9 = MEMORY[0x1D3886B70](result, v1);
LABEL_21:
    sub_1D1072E70(v9 + 72, v12);

    v10 = v13;
    v11 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    (*(v11 + 48))(v10, v11);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v1 + 8 * result + 32);

    goto LABEL_21;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D12B0C3C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D12B0CC8()
{

  v1 = sub_1D12B1958(v0, sub_1D12B192C, 0, -INFINITY);

  return v1;
}

void sub_1D12B0D24(unint64_t *a2@<X8>)
{

  v4 = sub_1D12B1958(v3, sub_1D12B192C, 0, -INFINITY);

  *a2 = v4;
}

uint64_t *sub_1D12B0D90@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *result;
  if (a2 >> 62)
  {
    goto LABEL_29;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      if (v5 < 1)
      {
        goto LABEL_31;
      }

      v19 = a3;
      v6 = 0;
      a3 = (a2 & 0xC000000000000001);
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        if (a3)
        {
          MEMORY[0x1D3886B70](v6, a2);
        }

        else
        {
        }

        v9 = sub_1D12B1958(v8, sub_1D12B192C, 0, -INFINITY);

        if (*(v9 + 16) == v20)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D10F9B50(0, v7[2] + 1, 1, v7);
          }

          v11 = v7[2];
          v10 = v7[3];
          if (v11 >= v10 >> 1)
          {
            v7 = sub_1D10F9B50((v10 > 1), v11 + 1, 1, v7);
          }

          v7[2] = v11 + 1;
          v7[v11 + 4] = v9;
        }

        else
        {
        }

        ++v6;
      }

      while (v5 != v6);
      v18 = sub_1D12B1C5C(v7, -INFINITY);
      v12 = 0;
      while (a3)
      {
        v13 = MEMORY[0x1D3886B70](v12, a2);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_27;
        }

LABEL_23:

        v16 = sub_1D12B1958(v15, sub_1D12B192C, 0, -INFINITY);

        v17 = *(v16 + 16);

        if (v17 == v20)
        {
          goto LABEL_26;
        }

        ++v12;
        if (v14 == v5)
        {
          __break(1u);
LABEL_26:

          sub_1D1072E70(v13 + 72, v21);

          *v19 = v20;
          v19[1] = v18;
          return sub_1D102CC18(v21, (v19 + 2));
        }
      }

      if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v13 = *(a2 + 8 * v12 + 32);

      v14 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_23;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_1D13910DC();
      v5 = result;
    }

    while (result);
  }

  result = sub_1D12B1C5C(MEMORY[0x1E69E7CC0], -INFINITY);
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1D12B107C(uint64_t a1, void *a2, double a3)
{
  v3 = a2;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v6);
  v8 = 28.0;
  if ((*(v7 + 8))(v6, v7))
  {
    v9 = v3[3];
    v10 = v3[4];
    __swift_project_boxed_opaque_existential_1Tm(v3, v9);
    v8 = (*(v10 + 16))(v9, v10) + a3 + 28.0;
  }

  v11 = v3[3];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v11);
  v13 = ((*(v12 + 56))(v11, v12) & 1) - 1;
  v14 = *(a1 + 16);
  v79 = a1;
  if (v14)
  {
    v15 = (a1 + 32);
    v16 = MEMORY[0x1E69E7CC0];
    v17 = *(a1 + 16);
    do
    {
      v20 = *v15;
      if (*v15 > 0.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D10FDC5C(0, *(v16 + 16) + 1, 1);
        }

        v19 = *(v16 + 16);
        v18 = *(v16 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D10FDC5C((v18 > 1), v19 + 1, 1);
        }

        *(v16 + 16) = v19 + 1;
        *(v16 + 8 * v19 + 32) = v20;
      }

      ++v15;
      --v17;
    }

    while (v17);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v21 = 540.0 - v8;
  v22 = *(v16 + 16);

  v23 = (v22 + v13);
  v24 = v3[3];
  v25 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v24);
  v26 = (*(v25 + 16))(v24, v25) * v23;
  v27 = v3[3];
  v28 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v27);
  v29 = *(v28 + 72);

  v30 = v29(v27, v28);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = v21 - v26;
    v34 = v30 + 32;
    v35 = v79;
    v80 = v30 + 32;
    v81 = v3;
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v36 = *(v34 + 8 * v32);
      if (v36 < v14)
      {
        break;
      }

LABEL_16:
      if (++v32 == v31)
      {
        goto LABEL_43;
      }
    }

    if (v36 < 0)
    {
      goto LABEL_65;
    }

    if (v36 >= *(v35 + 2))
    {
      goto LABEL_66;
    }

    v37 = v30;
    v38 = v35;
    v39 = v35 + 32;
    v40 = *&v35[8 * v36 + 32];
    v41 = v81[3];
    v42 = v81[4];
    __swift_project_boxed_opaque_existential_1Tm(v81, v41);
    v43 = (*(v42 + 80))(v41, v42);
    if (v36 >= *(v43 + 16))
    {
      goto LABEL_67;
    }

    v44 = *(v43 + 8 * v36 + 32);

    if (v44 >= v40)
    {
      v35 = v38;
      v30 = v37;
      v34 = v80;
      goto LABEL_16;
    }

    v35 = v38;
    v45 = *(v38 + 16);
    if (!v45)
    {
      v47 = 0.0;
      if (v33 >= 0.0)
      {
        goto LABEL_43;
      }

LABEL_34:
      if (v36 >= v45)
      {
        goto LABEL_68;
      }

      v53 = *&v39[8 * v36];
      v54 = v81[3];
      v55 = v81[4];
      __swift_project_boxed_opaque_existential_1Tm(v81, v54);
      v56 = (*(v55 + 80))(v54, v55);
      if (v36 >= *(v56 + 16))
      {
        goto LABEL_69;
      }

      v57 = v33 + v53 - v47;
      v58 = *(v56 + 8 * v36 + 32);

      if (v57 <= v58)
      {
        v57 = v58;
      }

      v35 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1D12FFA8C(v38);
      }

      v30 = v37;
      v34 = v80;
      if (v36 >= *(v35 + 2))
      {
        goto LABEL_70;
      }

      *&v35[8 * v36 + 32] = v57;
      goto LABEL_16;
    }

    if (v45 > 3)
    {
      v46 = v45 & 0x7FFFFFFFFFFFFFFCLL;
      v48 = (v38 + 48);
      v47 = 0.0;
      v49 = v45 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v47 = v47 + *(v48 - 2) + *(v48 - 1) + *v48 + v48[1];
        v48 += 4;
        v49 -= 4;
      }

      while (v49);
      if (v45 == v46)
      {
LABEL_33:
        if (v33 >= v47)
        {
LABEL_43:

          v3 = v81;
          goto LABEL_44;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v46 = 0;
      v47 = 0.0;
    }

    v50 = v45 - v46;
    v51 = (v38 + 8 * v46 + 32);
    do
    {
      v52 = *v51++;
      v47 = v47 + v52;
      --v50;
    }

    while (v50);
    goto LABEL_33;
  }

  v35 = v79;
LABEL_44:
  v59 = *(v35 + 2);
  v60 = 0.0;
  if (v59)
  {
    if (v59 < 4)
    {
      v61 = 0;
LABEL_50:
      v64 = v59 - v61;
      v65 = &v35[8 * v61 + 32];
      do
      {
        v66 = *v65++;
        v60 = v60 + v66;
        --v64;
      }

      while (v64);
      goto LABEL_52;
    }

    v61 = v59 & 0x7FFFFFFFFFFFFFFCLL;
    v62 = (v35 + 48);
    v63 = v59 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v60 = v60 + *(v62 - 2) + *(v62 - 1) + *v62 + v62[1];
      v62 += 4;
      v63 -= 4;
    }

    while (v63);
    if (v59 != v61)
    {
      goto LABEL_50;
    }
  }

LABEL_52:
  v67 = v3[3];
  v68 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v67);
  v69 = (*(v68 + 88))(v67, v68);
  if (v70)
  {
    return;
  }

  v71 = v69 + 1;
  if (__OFADD__(v69, 1))
  {
    goto LABEL_71;
  }

  v72 = *(v35 + 2);
  if (v72 < v71)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v71 == v72)
  {
    return;
  }

  if (v71 >= v72)
  {
    goto LABEL_73;
  }

  if (v71 < 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (!v72)
  {
LABEL_75:
    __break(1u);
    return;
  }

  v73 = ~v69 + v72;
  v74 = &v35[8 * v69 + 40];
  v75 = 0.0;
  do
  {
    v76 = *v74;
    if (*v74 > 0.0)
    {
      v77 = v3[3];
      v78 = v3[4];
      __swift_project_boxed_opaque_existential_1Tm(v3, v77);
      v75 = v75 + v76 + (*(v78 + 16))(v77, v78);
    }

    ++v74;
    --v73;
  }

  while (v73);
}

uint64_t sub_1D12B1680()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v3 = 0;
    v24 = v1 & 0xC000000000000001;
    v20 = v1 + 32;
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x1E69E7CC0];
    v22 = i;
    v23 = v1;
    while (1)
    {
      if (v24)
      {
        v5 = MEMORY[0x1D3886B70](v3, v1);
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          break;
        }

        goto LABEL_11;
      }

      if (v3 >= *(v21 + 16))
      {
        goto LABEL_29;
      }

      v5 = *(v20 + 8 * v3);

      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

LABEL_11:
      v7 = *(v5 + 48);
      if (v7 >> 62)
      {
        v8 = sub_1D13910DC();
        if (!v8)
        {
          goto LABEL_25;
        }

LABEL_13:
        if (v8 < 1)
        {
          goto LABEL_28;
        }

        v9 = 0;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1D3886B70](v9, v7);
          }

          else
          {
            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = *(v10 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D10F9B50(0, v4[2] + 1, 1, v4);
          }

          v13 = v4[2];
          v12 = v4[3];
          if (v13 >= v12 >> 1)
          {
            v4 = sub_1D10F9B50((v12 > 1), v13 + 1, 1, v4);
          }

          ++v9;

          v4[2] = v13 + 1;
          v4[v13 + 4] = v11;
        }

        while (v8 != v9);

        i = v22;
        v1 = v23;
        if (v3 == v22)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
          goto LABEL_13;
        }

LABEL_25:

        if (v3 == i)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v14 = sub_1D12B1C5C(v4, -INFINITY);
  v15 = *(v19 + 72);
  if (v15)
  {
    v16 = *(v15 + 24);

    v17 = sub_1D12B073C(v14, v16);

    return v17;
  }

  else
  {
  }

  return v14;
}

uint64_t sub_1D12B192C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D12B1680();
  *a1 = result;
  return result;
}

unint64_t sub_1D12B1958(unint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, double a4)
{
  result = sub_1D1268740(a1, a2);
  if (!result)
  {
    goto LABEL_51;
  }

  v5 = *(result + 16);

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = sub_1D13904DC();
    v8 = v7;
    *(v7 + 16) = v5;
    v9 = (v7 + 32);
    if (v5 > 3)
    {
      v10 = v5 & 0x7FFFFFFFFFFFFFFCLL;
      v9 += v5 & 0x7FFFFFFFFFFFFFFCLL;
      v11 = a4;
      v12 = vdupq_lane_s64(*&a4, 0);
      v13 = (v7 + 48);
      v14 = v5 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v13[-1] = v12;
        *v13 = v12;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v5 == v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
      v11 = a4;
    }

    v15 = v5 - v10;
    do
    {
      *v9++ = v11;
      --v15;
    }

    while (v15);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_11:

  sub_1D12B22B4();
  if (!v16)
  {
LABEL_44:

    return v8;
  }

  v17 = v16;
  v18 = v8;
  while (1)
  {
    v20 = *(v17 + 16) >= *(v18 + 16) ? *(v18 + 16) : *(v17 + 16);
    v21 = v18;

    sub_1D10FDC5C(0, v20, 0);
    v8 = v6;
    if (v20)
    {
      break;
    }

    result = v21;
LABEL_32:
    v30 = *(result + 16);
    if (v20 != v30)
    {
      v31 = result + 32;
      v6 = MEMORY[0x1E69E7CC0];
      while (v20 < v30)
      {
        v32 = *(v17 + 16);
        if (v20 == v32)
        {
          goto LABEL_14;
        }

        if (v20 >= v32)
        {
          goto LABEL_50;
        }

        if (*(v31 + 8 * v20) > *(v17 + 32 + 8 * v20))
        {
          v33 = *(v31 + 8 * v20);
        }

        else
        {
          v33 = *(v17 + 32 + 8 * v20);
        }

        v39 = v8;
        v35 = *(v8 + 16);
        v34 = *(v8 + 24);
        if (v35 >= v34 >> 1)
        {
          v36 = result;
          sub_1D10FDC5C((v34 > 1), v35 + 1, 1);
          result = v36;
          v8 = v39;
        }

        ++v20;
        *(v8 + 16) = v35 + 1;
        *(v8 + 8 * v35 + 32) = v33;
        v30 = *(result + 16);
        if (v20 == v30)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_49;
    }

    v6 = MEMORY[0x1E69E7CC0];
LABEL_14:

    swift_bridgeObjectRelease_n();
    sub_1D12B22B4();
    v17 = v19;
    v18 = v8;
    if (!v19)
    {
      goto LABEL_44;
    }
  }

  v22 = 0;
  v23 = *(v21 + 16);
  v24 = v21 + 32;
  result = v21;
  while (v23 != v22)
  {
    if (v22 >= *(result + 16))
    {
      goto LABEL_46;
    }

    v25 = *(v17 + 16);
    if (v22 == v25)
    {
      goto LABEL_47;
    }

    if (v22 >= v25)
    {
      goto LABEL_48;
    }

    if (*(v24 + 8 * v22) > *(v17 + 32 + 8 * v22))
    {
      v26 = *(v24 + 8 * v22);
    }

    else
    {
      v26 = *(v17 + 32 + 8 * v22);
    }

    v38 = v8;
    v28 = *(v8 + 16);
    v27 = *(v8 + 24);
    if (v28 >= v27 >> 1)
    {
      v29 = result;
      sub_1D10FDC5C((v27 > 1), v28 + 1, 1);
      result = v29;
      v8 = v38;
    }

    ++v22;
    *(v8 + 16) = v28 + 1;
    *(v8 + 8 * v28 + 32) = v26;
    if (v20 == v22)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1D12B1C5C(uint64_t result, double a2)
{
  v31 = *(result + 16);
  if (!v31)
  {
    goto LABEL_49;
  }

  v2 = result + 32;
  v3 = *(*(result + 32) + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  result = sub_1D13904DC();
  v5 = result;
  *(result + 16) = v3;
  v6 = (result + 32);
  if (v3 <= 3)
  {
    v7 = 0;
    v8 = a2;
LABEL_9:
    v12 = v3 - v7;
    do
    {
      *v6++ = v8;
      --v12;
    }

    while (v12);
    goto LABEL_11;
  }

  v7 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v6 += v3 & 0x7FFFFFFFFFFFFFFCLL;
  v8 = a2;
  v9 = vdupq_lane_s64(*&a2, 0);
  v10 = (result + 48);
  v11 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v10[-1] = v9;
    *v10 = v9;
    v10 += 2;
    v11 -= 4;
  }

  while (v11);
  if (v3 != v7)
  {
    goto LABEL_9;
  }

LABEL_11:
  v13 = 0;
  v30 = v2;
  while (!__OFADD__(v13, 1))
  {
    v14 = v5;
    v33 = v13 + 1;
    v15 = *(v2 + 8 * v13);
    if (*(v15 + 16) >= *(v5 + 16))
    {
      v16 = *(v5 + 16);
    }

    else
    {
      v16 = *(v15 + 16);
    }

    swift_bridgeObjectRetain_n();
    result = sub_1D10FDC5C(0, v16, 0);
    v5 = v4;
    if (v16)
    {
      v17 = 0;
      v18 = *(v14 + 16);
      v19 = v15 + 32;
      while (v18 != v17)
      {
        if (v17 >= *(v14 + 16))
        {
          goto LABEL_43;
        }

        v20 = *(v15 + 16);
        if (v17 == v20)
        {
          goto LABEL_44;
        }

        if (v17 >= v20)
        {
          goto LABEL_45;
        }

        if (*(v14 + 32 + 8 * v17) > *(v19 + 8 * v17))
        {
          v21 = *(v14 + 32 + 8 * v17);
        }

        else
        {
          v21 = *(v19 + 8 * v17);
        }

        v23 = *(v4 + 16);
        v22 = *(v4 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_1D10FDC5C((v22 > 1), v23 + 1, 1);
        }

        ++v17;
        *(v4 + 16) = v23 + 1;
        *(v4 + 8 * v23 + 32) = v21;
        if (v16 == v17)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_29:
    v24 = *(v14 + 16);
    if (v16 != v24)
    {
      v25 = v15 + 32;
      while (v16 < v24)
      {
        v26 = *(v15 + 16);
        if (v16 == v26)
        {
          goto LABEL_12;
        }

        if (v16 >= v26)
        {
          goto LABEL_47;
        }

        if (*(v14 + 32 + 8 * v16) > *(v25 + 8 * v16))
        {
          v27 = *(v14 + 32 + 8 * v16);
        }

        else
        {
          v27 = *(v25 + 8 * v16);
        }

        v29 = *(v4 + 16);
        v28 = *(v4 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_1D10FDC5C((v28 > 1), v29 + 1, 1);
        }

        ++v16;
        *(v4 + 16) = v29 + 1;
        *(v4 + 8 * v29 + 32) = v27;
        v24 = *(v14 + 16);
        if (v16 == v24)
        {
          goto LABEL_12;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      break;
    }

LABEL_12:

    result = swift_bridgeObjectRelease_n();
    v13 = v33;
    v2 = v30;
    v4 = MEMORY[0x1E69E7CC0];
    if (v33 == v31)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

void sub_1D12B1F1C(void *a1, char a2, void *a3)
{
  v49 = a1[2];
  if (!v49)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = *a3;
  v11 = sub_1D129E4DC(v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v11;
  v17 = v12;
  v18 = v10[3];

  if (v18 >= v15)
  {
    if (a2)
    {
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D1182430();
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  sub_1D117C750(v15, a2 & 1);
  v19 = sub_1D129E4DC(v7);
  if ((v17 & 1) == (v20 & 1))
  {
    v16 = v19;
    if ((v17 & 1) == 0)
    {
LABEL_12:
      v23 = *a3;
      *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
      *(v23[6] + 8 * v16) = v7;
      v24 = (v23[7] + 24 * v16);
      *v24 = v6;
      v24[1] = v8;
      v24[2] = v9;
      v25 = v23[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (!v26)
      {
        v23[2] = v27;
        if (v49 != 1)
        {
          v28 = a1 + 11;
          v29 = 1;
          while (v29 < a1[2])
          {
            v31 = *(v28 - 3);
            v30 = *(v28 - 2);
            v32 = *(v28 - 1);
            v33 = *v28;
            v34 = *a3;
            v35 = sub_1D129E4DC(v31);
            v37 = v34[2];
            v38 = (v36 & 1) == 0;
            v39 = v37 + v38;
            if (__OFADD__(v37, v38))
            {
              goto LABEL_24;
            }

            v40 = v35;
            v41 = v36;
            v42 = v34[3];

            if (v42 < v39)
            {
              sub_1D117C750(v39, 1);
              v43 = sub_1D129E4DC(v31);
              if ((v41 & 1) != (v44 & 1))
              {
                goto LABEL_27;
              }

              v40 = v43;
            }

            if (v41)
            {
              goto LABEL_9;
            }

            v45 = *a3;
            *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
            *(v45[6] + 8 * v40) = v31;
            v46 = (v45[7] + 24 * v40);
            *v46 = v30;
            v46[1] = v32;
            v46[2] = v33;
            v47 = v45[2];
            v26 = __OFADD__(v47, 1);
            v48 = v47 + 1;
            if (v26)
            {
              goto LABEL_25;
            }

            ++v29;
            v45[2] = v48;
            v28 += 4;
            if (v49 == v29)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_9:
    v21 = swift_allocError();
    swift_willThrow();
    v22 = v21;
    sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_1D13916CC();
  __break(1u);
LABEL_28:
  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD00000000000001BLL, 0x80000001D13B9110);
  sub_1D139133C();
  MEMORY[0x1D3885C10](39, 0xE100000000000000);
  sub_1D13913BC();
  __break(1u);
}

void sub_1D12B22B4()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_1D13910DC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 != v2)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1D3886B70](v0[1], v1);
      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_14:
        __break(1u);
        return;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
LABEL_8:
        v0[1] = v5;
        v6 = v0[2];
        v8 = v4;
        v6(&v7, &v8);

        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_1D12B239C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D10FDC1C(0, v3, 0);
    v4 = v31;
    v27 = a1 + 56;
    v5 = sub_1D139104C();
    v6 = a1;
    v7 = 0;
    v24 = v3;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v27 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      v10 = *(v6 + 36);
      v28 = *(*(v6 + 48) + 8 * v5);
      sub_1D12B0D90(&v28, a2, v29);
      if (v2)
      {
        goto LABEL_26;
      }

      v31 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D10FDC1C((v11 > 1), v12 + 1, 1);
        v4 = v31;
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 56 * v12;
      v14 = v29[0];
      v15 = v29[1];
      v16 = v29[2];
      *(v13 + 80) = v30;
      *(v13 + 48) = v15;
      *(v13 + 64) = v16;
      *(v13 + 32) = v14;
      v6 = a1;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v17 = *(v27 + 8 * v9);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (a1 + 64 + 8 * v9);
        while (v20 < (v8 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1D1105004(v5, v10, 0);
            v6 = a1;
            v8 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_1D1105004(v5, v10, 0);
        v6 = a1;
      }

LABEL_4:
      ++v7;
      v5 = v8;
      v2 = 0;
      if (v7 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:

    __break(1u);
  }
}

uint64_t sub_1D12B2610(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 >> 62)
  {
    goto LABEL_108;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = MEMORY[0x1E69E7CC0];
  v9 = v7 & ~(v7 >> 63);
  v125 = v7;
  if (v7)
  {
    v10 = v7;
    *&v134 = MEMORY[0x1E69E7CC0];
    sub_1D10FDC5C(0, v9, 0);
    if (v10 < 0)
    {
      goto LABEL_110;
    }

    v11 = v10;
    v12 = v134;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        MEMORY[0x1D3886B70](v13, a1);
        v14 = sub_1D121CC80();
        swift_unknownObjectRelease();
        *&v134 = v12;
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D10FDC5C((v15 > 1), v16 + 1, 1);
          v12 = v134;
        }

        ++v13;
        *(v12 + 16) = v16 + 1;
        *(v12 + 8 * v16 + 32) = v14;
      }

      while (v125 != v13);
    }

    else
    {
      v19 = a1 + 32;
      do
      {

        v20 = sub_1D121CC80();

        *&v134 = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D10FDC5C((v21 > 1), v22 + 1, 1);
          v12 = v134;
        }

        *(v12 + 16) = v22 + 1;
        *(v12 + 8 * v22 + 32) = v20;
        v19 += 8;
        --v11;
      }

      while (v11);
    }

    v8 = MEMORY[0x1E69E7CC0];
    v17 = *(v12 + 16);
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_12:
    v18 = 0.0;
    goto LABEL_22;
  }

  v12 = MEMORY[0x1E69E7CC0];
  v17 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_18:
  v23 = (v12 + 32);
  v18 = 0.0;
  do
  {
    v24 = *v23++;
    v25 = v24;
    if (v18 <= v24)
    {
      v18 = v25;
    }

    --v17;
  }

  while (v17);
LABEL_22:

  swift_getKeyPath();
  if (v125)
  {
    *&v134 = v8;
    sub_1D10FDC3C(0, v9, 0);
    if (v125 < 0)
    {
      goto LABEL_111;
    }

    v26 = v134;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v125; ++i)
      {
        v136 = MEMORY[0x1D3886B70](i, a1);
        swift_getAtKeyPath();
        swift_unknownObjectRelease();
        v28 = v137;
        *&v134 = v26;
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D10FDC3C((v29 > 1), v30 + 1, 1);
          v26 = v134;
        }

        *(v26 + 16) = v30 + 1;
        *(v26 + 8 * v30 + 32) = v28;
      }
    }

    else
    {
      v31 = (a1 + 32);
      v32 = v125;
      do
      {
        v136 = *v31;

        swift_getAtKeyPath();

        v33 = v137;
        *&v134 = v26;
        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1D10FDC3C((v34 > 1), v35 + 1, 1);
          v26 = v134;
        }

        *(v26 + 16) = v35 + 1;
        *(v26 + 8 * v35 + 32) = v33;
        ++v31;
        --v32;
      }

      while (v32);
    }

    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v36 = sub_1D12DEF2C(v26);

  sub_1D12B239C(v36, a1);
  v38 = v37;

  v39 = *(v38 + 16);
  if (v39)
  {
    v137 = v8;
    sub_1D10FDBFC(0, v39, 0);
    v40 = 0;
    v41 = v137;
    v42 = v38 + 32;
    do
    {
      if (v40 >= *(v38 + 16))
      {
        goto LABEL_101;
      }

      sub_1D12B31C8(v42, &v134);
      v43 = v134;
      sub_1D12B107C(*(&v134 + 1), v135, v18);
      v45 = v44;
      v47 = v46;
      v49 = v48;
      sub_1D12B322C(&v134);
      v137 = v41;
      v51 = *(v41 + 16);
      v50 = *(v41 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1D10FDBFC((v50 > 1), v51 + 1, 1);
        v41 = v137;
      }

      ++v40;
      *(v41 + 16) = v51 + 1;
      v52 = (v41 + 32 * v51);
      v52[4] = v43;
      v52[5] = v45;
      v52[6] = v47;
      v52[7] = v49;
      v42 += 56;
    }

    while (v39 != v40);

    v8 = MEMORY[0x1E69E7CC0];
    if (*(v41 + 16))
    {
      goto LABEL_43;
    }
  }

  else
  {

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_43:
      sub_1D12B3288();
      v53 = sub_1D139144C();
      goto LABEL_46;
    }
  }

  v53 = MEMORY[0x1E69E7CC8];
LABEL_46:
  *&v134 = v53;

  sub_1D12B1F1C(v54, 1, &v134);

  v120 = v134;
  if (!v125)
  {

    v111 = MEMORY[0x1E69E7CC0];
    goto LABEL_95;
  }

  v137 = v8;
  sub_1D13912DC();
  if (v125 < 0)
  {
    goto LABEL_112;
  }

  v55 = 0;
  while (1)
  {
    if (__OFADD__(v55, 1))
    {
      goto LABEL_104;
    }

    v121 = v55 + 1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v66 = MEMORY[0x1D3886B70]();
    }

    else
    {
      if (v55 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v66 = *(a1 + 32 + 8 * v55);
    }

    v67 = sub_1D121CDA8();
    if (!*(v120 + 16))
    {
      goto LABEL_105;
    }

    v68 = sub_1D129E4DC(v67);
    if ((v69 & 1) == 0)
    {
      goto LABEL_106;
    }

    v70 = *(v120 + 56) + 24 * v68;
    v132 = *v70;
    v71 = *(v70 + 16);
    v72 = v66[8];
    v122 = v72;
    if (v72 >> 62)
    {
      break;
    }

    v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
      goto LABEL_60;
    }

LABEL_93:
    v56 = v8;
LABEL_50:
    v57 = v66[2];
    v58 = v66[3];
    v59 = v66[4];
    v60 = v66[5];
    v61 = v66[6];
    v62 = v66[7];
    sub_1D1072E70((v66 + 9), &v134);
    v63 = v57;
    v64 = v60;

    _s12SizedSectionCMa();
    v65 = swift_allocObject();
    *(v65 + 112) = 0;
    *(v65 + 120) = 1;
    *(v65 + 128) = 0;
    *(v65 + 136) = 1;
    *(v65 + 144) = 0;
    *(v65 + 152) = 1;
    *(v65 + 16) = v63;
    *(v65 + 24) = v58;
    *(v65 + 32) = v59;
    *(v65 + 40) = v64;
    *(v65 + 48) = v61;
    *(v65 + 56) = v62;
    *(v65 + 64) = v56;
    sub_1D102CC18(&v134, v65 + 72);
    sub_1D13912AC();
    sub_1D13912EC();
    sub_1D13912FC();
    sub_1D13912BC();
    v55 = v121;
    if (v121 == v125)
    {
      goto LABEL_99;
    }
  }

  v73 = sub_1D13910DC();
  if (!v73)
  {
    goto LABEL_93;
  }

LABEL_60:
  v136 = v8;
  swift_bridgeObjectRetain_n();
  sub_1D13912DC();
  if (v73 < 0)
  {
    goto LABEL_107;
  }

  v74 = 0;
  v124 = v66;
  v123 = v73;
  while (1)
  {
    if (__OFADD__(v74, 1))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
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
      v7 = sub_1D13910DC();
      goto LABEL_3;
    }

    v128 = v74 + 1;
    if ((v122 & 0xC000000000000001) != 0)
    {
      v76 = MEMORY[0x1D3886B70]();
      v75 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v75 = MEMORY[0x1E69E7CC0];
      if (v74 >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_103;
      }

      v76 = *(v122 + 32 + 8 * v74);
    }

    v89 = v66[12];
    v90 = v66[13];
    __swift_project_boxed_opaque_existential_1Tm(v66 + 9, v89);
    (*(v90 + 16))(v89, v90);
    v91 = v66[12];
    v92 = v66[13];
    __swift_project_boxed_opaque_existential_1Tm(v66 + 9, v91);
    v93 = (*(v92 + 88))(v91, v92);
    v95 = v94;
    v96 = v76[10];
    v129 = v96;
    if (!(v96 >> 62))
    {
      v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v97)
      {
        break;
      }

      goto LABEL_63;
    }

    v97 = sub_1D13910DC();
    if (v97)
    {
      break;
    }

LABEL_63:
    v77 = v76;
    v78 = v76[2];
    v79 = v76[3];
    v80 = v76[4];
    v81 = v76[5];
    v82 = v76[6];
    v83 = v77[7];
    v84 = *(v77 + 64);
    v85 = v77[9];
    sub_1D1072E70((v77 + 11), &v134);

    v86 = v78;
    v87 = v81;

    _s11SizedRecordCMa();
    v88 = swift_allocObject();
    *(v88 + 128) = 0;
    *(v88 + 136) = 1;
    *(v88 + 16) = v86;
    *(v88 + 24) = v79;
    *(v88 + 32) = v80;
    *(v88 + 40) = v81;
    *(v88 + 48) = v82;
    *(v88 + 56) = v83;
    *(v88 + 64) = v84;
    *(v88 + 72) = v85;
    *(v88 + 80) = v75;
    sub_1D102CC18(&v134, v88 + 88);
    sub_1D13912AC();
    sub_1D13912EC();
    sub_1D13912FC();
    sub_1D13912BC();
    v74 = v128;
    v66 = v124;
    if (v128 == v123)
    {
      swift_bridgeObjectRelease_n();
      v56 = v136;
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_50;
    }
  }

  v127 = v76;
  *&v134 = v75;
  sub_1D13912DC();
  if (v97 < 0)
  {
    goto LABEL_102;
  }

  v98 = 0;
  v130 = v97;
  while (2)
  {
    v106 = v98 + 1;
    if (!__OFADD__(v98, 1))
    {
      if ((v129 & 0xC000000000000001) != 0)
      {
        v107 = MEMORY[0x1D3886B70]();
      }

      else
      {
        if (v98 >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_98;
        }

        v107 = *(v129 + 32 + 8 * v98);
      }

      v108 = *(v107 + 48);
      if (v108 >> 62)
      {
        v109 = sub_1D13910DC();
        v131 = v106;
        if (!v109)
        {
          goto LABEL_89;
        }

LABEL_82:
        v133 = MEMORY[0x1E69E7CC0];
        sub_1D13912DC();
        if (v109 < 0)
        {
          goto LABEL_97;
        }

        v110 = 0;
        do
        {
          if ((v108 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1D3886B70](v110, v108);
          }

          else
          {
          }

          ++v110;
          sub_1D121EABC(v132, v93, v95 & 1, v71);

          sub_1D13912AC();
          sub_1D13912EC();
          sub_1D13912FC();
          sub_1D13912BC();
        }

        while (v109 != v110);
        v99 = v133;
      }

      else
      {
        v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v131 = v106;
        if (v109)
        {
          goto LABEL_82;
        }

LABEL_89:
        v99 = MEMORY[0x1E69E7CC0];
      }

      v100 = *(v107 + 16);
      v101 = *(v107 + 24);
      v102 = *(v107 + 32);
      v103 = *(v107 + 40);
      v104 = v100;

      _s15SizedValueGroupCMa();
      v105 = swift_allocObject();
      *(v105 + 16) = v100;
      *(v105 + 24) = v101;
      *(v105 + 32) = v102;
      *(v105 + 40) = v103;
      *(v105 + 48) = v99;
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      v98 = v131;
      if (v131 == v130)
      {
        v75 = v134;
        v76 = v127;
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:

  v111 = v137;
LABEL_95:
  v112 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  _s4PageCMa();
  result = swift_allocObject();
  *(result + 120) = 1;
  *(result + 16) = v111;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 72) = v112;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = v18;
  *(result + 104) = v120;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1D12B31C8(uint64_t a1, uint64_t a2)
{
  sub_1D1104738(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D12B322C(uint64_t a1)
{
  sub_1D1104738(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D12B3288()
{
  if (!qword_1EC60C2B0)
  {
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C2B0);
    }
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D12B3324(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1D12B336C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void AccountStatusSummaryTileFeedItemData.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D12B3834(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138D5EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12336A0(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  sub_1D11292FC(v14, 0, 0, 0, v13);
  v15 = type metadata accessor for ClinicalAccountLoginUpgradeAction(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {

    sub_1D12B54F0(v13, sub_1D12336A0);
    v16 = type metadata accessor for AccountStatusSummaryTileFeedItemData(0);
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  else
  {
    v48 = v7;
    sub_1D12B54F0(v13, sub_1D12336A0);
    v17 = [v14 identifier];
    sub_1D138D5CC();
    v18 = [v14 provenance];
    v19 = [v18 brand];

    if (v19)
    {

      v20 = [v19 externalID];
      v21 = sub_1D139016C();
      v46 = v22;
      v47 = v21;

      v23 = [v19 batchID];
      v24 = sub_1D139016C();
      v44 = v25;
      v45 = v24;

      v26 = [v14 provenance];
      v27 = [v26 title];

      v28 = sub_1D139016C();
      v30 = v29;

      v31 = [v14 provenance];
      v32 = [v31 subtitle];

      if (v32)
      {
        v33 = sub_1D139016C();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0xE000000000000000;
      }

      v36 = [v14 state];
      HKClinicalAccount.summaryTileType.getter(v6);

      (*(v8 + 32))(a2, v10, v48);
      v37 = type metadata accessor for AccountStatusSummaryTileFeedItemData(0);
      v38 = (a2 + v37[5]);
      v39 = v46;
      *v38 = v47;
      v38[1] = v39;
      v40 = v44;
      v38[2] = v45;
      v38[3] = v40;
      v41 = (a2 + v37[6]);
      *v41 = v28;
      v41[1] = v30;
      v42 = (a2 + v37[7]);
      *v42 = v33;
      v42[1] = v35;
      *(a2 + v37[8]) = v36;
      sub_1D12B3918(v6, a2 + v37[9]);
      *(a2 + v37[10]) = 0;
      (*(*(v37 - 1) + 56))(a2, 0, 1, v37);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D12B3868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for AccountStatusSummaryTileFeedItemData(uint64_t a1)
{
  result = qword_1EE069AB8;
  if (!qword_1EE069AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D12B3918(uint64_t a1, uint64_t a2)
{
  sub_1D12B3834(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AccountStatusSummaryTileFeedItemData.accountId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D138D5EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double AccountStatusSummaryTileFeedItemData.brandId.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AccountStatusSummaryTileFeedItemData(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;

  return result;
}

uint64_t AccountStatusSummaryTileFeedItemData.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccountStatusSummaryTileFeedItemData(0) + 24));

  return v1;
}

uint64_t AccountStatusSummaryTileFeedItemData.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccountStatusSummaryTileFeedItemData(0) + 28));

  return v1;
}

double AccountStatusSummaryTileFeedItemData.accounts.getter()
{
  type metadata accessor for AccountStatusSummaryTileFeedItemData(0);

  return result;
}

uint64_t sub_1D12B3B64()
{
  v1 = *v0;
  v2 = 0x49746E756F636361;
  v3 = 1701869940;
  if (v1 != 5)
  {
    v3 = 0x73746E756F636361;
  }

  v4 = 0x656C746974627573;
  if (v1 != 3)
  {
    v4 = 0x6574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6449646E617262;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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

uint64_t sub_1D12B3C2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D12B591C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D12B3C60(uint64_t a1)
{
  v2 = sub_1D12B53B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D12B3C9C(uint64_t a1)
{
  v2 = sub_1D12B53B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountStatusSummaryTileFeedItemData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D12B548C(0, &qword_1EC60EBC0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D12B53B0();
  sub_1D139181C();
  LOBYTE(v18) = 0;
  sub_1D138D5EC();
  sub_1D12B5B64(&qword_1EC609DC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D139158C();
  if (!v2)
  {
    v10 = type metadata accessor for AccountStatusSummaryTileFeedItemData(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    v18 = *v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v17 = 1;
    sub_1D12B5404();

    sub_1D139158C();

    LOBYTE(v18) = 2;
    sub_1D139155C();
    LOBYTE(v18) = 3;
    sub_1D139155C();
    v18 = *(v3 + v10[8]);
    v17 = 4;
    type metadata accessor for HKClinicalAccountState(0);
    sub_1D12B5B64(&qword_1EC60EBD8, type metadata accessor for HKClinicalAccountState, &protocol conformance descriptor for HKClinicalAccountState);
    sub_1D139158C();
    LOBYTE(v18) = 5;
    sub_1D138EDCC();
    sub_1D12B5B64(&qword_1EC60EBE0, MEMORY[0x1E69A3E90], MEMORY[0x1E69A3E98]);
    sub_1D139154C();
    v18 = *(v3 + v10[10]);
    v17 = 6;
    sub_1D12B5458(0);
    sub_1D12B55A4(&qword_1EC60EBE8, &qword_1EC609DC8, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
    sub_1D139154C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t AccountStatusSummaryTileFeedItemData.hash(into:)(uint64_t a1)
{
  v2 = sub_1D138D5EC();
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D138EDCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12B3834(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12B5B64(&qword_1EE06B4F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D139007C();
  v10 = type metadata accessor for AccountStatusSummaryTileFeedItemData(0);
  sub_1D139027C();
  v11 = v4;
  v12 = v5;
  sub_1D139027C();
  sub_1D139027C();
  sub_1D139027C();
  MEMORY[0x1D38870E0](*(v1 + v10[8]));
  sub_1D12B5634(v1 + v10[9], v9, sub_1D12B3834);
  if ((*(v5 + 48))(v9, 1, v11) == 1)
  {
    sub_1D139179C();
  }

  else
  {
    v13 = *(v5 + 32);
    v14 = v24;
    v13(v24, v9, v11);
    sub_1D139179C();
    sub_1D12B5B64(&qword_1EC60EBF0, MEMORY[0x1E69A3E90], MEMORY[0x1E69A3EA0]);
    sub_1D139007C();
    (*(v12 + 8))(v14, v11);
  }

  v15 = *(v1 + v10[10]);
  if (!v15)
  {
    return sub_1D139179C();
  }

  sub_1D139179C();
  result = MEMORY[0x1D38870E0](*(v15 + 16));
  v17 = *(v15 + 16);
  v18 = v25;
  if (v17)
  {
    v19 = *(v26 + 16);
    v20 = v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v21 = *(v26 + 72);
    v22 = (v26 + 8);
    do
    {
      v19(v18, v20, v2);
      sub_1D139007C();
      result = (*v22)(v18, v2);
      v20 += v21;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t AccountStatusSummaryTileFeedItemData.hashValue.getter()
{
  sub_1D139177C();
  AccountStatusSummaryTileFeedItemData.hash(into:)(v1);
  return sub_1D13917CC();
}

void AccountStatusSummaryTileFeedItemData.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1D12B3834(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138D5EC();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12B548C(0, &qword_1EC60EBF8, MEMORY[0x1E69E6F48]);
  v32 = v8;
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AccountStatusSummaryTileFeedItemData(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D12B53B0();
  v33 = v10;
  v14 = v34;
  sub_1D13917FC();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v34 = v5;
    v15 = v30;
    LOBYTE(v35) = 0;
    sub_1D12B5B64(&qword_1EC609DB8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v16 = v31;
    sub_1D13914FC();
    (*(v29 + 32))(v13, v16, v6);
    v38 = 1;
    sub_1D12B5550();
    sub_1D13914FC();
    v17 = v36;
    v18 = v37;
    v19 = &v13[v11[5]];
    *v19 = v35;
    *(v19 + 2) = v17;
    *(v19 + 3) = v18;
    LOBYTE(v35) = 2;
    v20 = sub_1D13914CC();
    v21 = &v13[v11[6]];
    *v21 = v20;
    v21[1] = v22;
    LOBYTE(v35) = 3;
    v23 = sub_1D13914CC();
    v24 = &v13[v11[7]];
    *v24 = v23;
    v24[1] = v25;
    type metadata accessor for HKClinicalAccountState(0);
    v38 = 4;
    sub_1D12B5B64(&qword_1EC60EC08, type metadata accessor for HKClinicalAccountState, &protocol conformance descriptor for HKClinicalAccountState);
    sub_1D13914FC();
    *&v13[v11[8]] = v35;
    sub_1D138EDCC();
    LOBYTE(v35) = 5;
    sub_1D12B5B64(&qword_1EC60EC10, MEMORY[0x1E69A3E90], MEMORY[0x1E69A3EB0]);
    v26 = v34;
    sub_1D13914BC();
    sub_1D12B3918(v26, &v13[v11[9]]);
    sub_1D12B5458(0);
    v38 = 6;
    sub_1D12B55A4(&qword_1EC60EC18, &qword_1EC609DB8, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
    sub_1D13914BC();
    (*(v15 + 8))(v33, v32);
    *&v13[v11[10]] = v35;
    sub_1D12B5634(v13, v28, type metadata accessor for AccountStatusSummaryTileFeedItemData);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1D12B54F0(v13, type metadata accessor for AccountStatusSummaryTileFeedItemData);
  }
}

uint64_t sub_1D12B4BFC()
{
  sub_1D139177C();
  AccountStatusSummaryTileFeedItemData.hash(into:)(v1);
  return sub_1D13917CC();
}

uint64_t sub_1D12B4C40(uint64_t a1)
{
  sub_1D139177C();
  AccountStatusSummaryTileFeedItemData.hash(into:)(v2);
  return sub_1D13917CC();
}

uint64_t AccountStatusSummaryTileFeedItemData.init(accountId:type:accounts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4, a1, v8);
  (*(v9 + 8))(a1, v8);
  v10 = type metadata accessor for AccountStatusSummaryTileFeedItemData(0);
  v11 = v10[9];
  v12 = sub_1D138EDCC();
  v13 = *(v12 - 8);
  (*(v13 + 32))(a4 + v11, a2, v12);
  result = (*(v13 + 56))(a4 + v11, 0, 1, v12);
  v15 = (a4 + v10[5]);
  *v15 = 1162760014;
  v15[1] = 0xE400000000000000;
  v15[2] = 1162760014;
  v15[3] = 0xE400000000000000;
  v16 = (a4 + v10[6]);
  *v16 = 0xD000000000000019;
  v16[1] = 0x80000001D13CA1B0;
  v17 = (a4 + v10[7]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(a4 + v10[8]) = 3;
  *(a4 + v10[10]) = a3;
  return result;
}

uint64_t _s15HealthRecordsUI36AccountStatusSummaryTileFeedItemDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138EDCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12B3834(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10C9CD0(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D138D5BC() & 1) == 0)
  {
    return 0;
  }

  v47 = v5;
  v48 = v4;
  v49 = type metadata accessor for AccountStatusSummaryTileFeedItemData(0);
  v15 = v49[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = *(a1 + v15 + 16);
  v19 = *(a1 + v15 + 24);
  v20 = (a2 + v15);
  v22 = v20[2];
  v21 = v20[3];
  v23 = v16 == *v20 && v17 == v20[1];
  if (!v23 && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  v24 = v18 == v22 && v19 == v21;
  if (!v24 && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  v25 = v49;
  v26 = v49[6];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  v30 = v25[7];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v25[8]) != *(a2 + v25[8]))
  {
    return 0;
  }

  v34 = v25[9];
  v35 = *(v12 + 48);
  sub_1D12B5634(a1 + v34, v14, sub_1D12B3834);
  sub_1D12B5634(a2 + v34, &v14[v35], sub_1D12B3834);
  v37 = v47;
  v36 = v48;
  v38 = *(v47 + 48);
  if (v38(v14, 1, v48) != 1)
  {
    sub_1D12B5634(v14, v10, sub_1D12B3834);
    if (v38(&v14[v35], 1, v36) != 1)
    {
      (*(v37 + 32))(v7, &v14[v35], v36);
      sub_1D12B5B64(&qword_1EC60A648, MEMORY[0x1E69A3E90], MEMORY[0x1E69A3EA8]);
      v40 = sub_1D139011C();
      v41 = *(v37 + 8);
      v41(v7, v36);
      v41(v10, v36);
      sub_1D12B54F0(v14, sub_1D12B3834);
      if ((v40 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    (*(v37 + 8))(v10, v36);
LABEL_24:
    sub_1D12B54F0(v14, sub_1D10C9CD0);
    return 0;
  }

  if (v38(&v14[v35], 1, v36) != 1)
  {
    goto LABEL_24;
  }

  sub_1D12B54F0(v14, sub_1D12B3834);
LABEL_28:
  v42 = v49[10];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  if (v43)
  {
    if (v44)
    {

      v45 = sub_1D1334E2C(v43, v44);

      if (v45)
      {
        return 1;
      }
    }
  }

  else if (!v44)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D12B53B0()
{
  result = qword_1EC60EBC8;
  if (!qword_1EC60EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EBC8);
  }

  return result;
}

unint64_t sub_1D12B5404()
{
  result = qword_1EC60EBD0;
  if (!qword_1EC60EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EBD0);
  }

  return result;
}

void sub_1D12B548C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D12B53B0();
    v7 = a3(a1, &type metadata for AccountStatusSummaryTileFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D12B54F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D12B5550()
{
  result = qword_1EC60EC00;
  if (!qword_1EC60EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC00);
  }

  return result;
}

uint64_t sub_1D12B55A4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D12B5458(255);
    sub_1D12B5B64(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D12B5634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D12B570C(uint64_t a1)
{
  sub_1D138D5EC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKClinicalAccountState(319);
    if (v2 <= 0x3F)
    {
      sub_1D12B3834(319);
      if (v3 <= 0x3F)
      {
        sub_1D12B3868(319, &qword_1EE0695D8, sub_1D12B5458, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D12B5818()
{
  result = qword_1EC60EC28;
  if (!qword_1EC60EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC28);
  }

  return result;
}

unint64_t sub_1D12B5870()
{
  result = qword_1EC60EC30;
  if (!qword_1EC60EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC30);
  }

  return result;
}

unint64_t sub_1D12B58C8()
{
  result = qword_1EC60EC38;
  if (!qword_1EC60EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC38);
  }

  return result;
}

uint64_t sub_1D12B591C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000064;
  if (v4 || (sub_1D139162C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449646E617262 && a2 == 0xE700000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D139162C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D12B5B64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D12B5BAC(uint64_t a1, char a2)
{
  *(v3 + 49) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  *(v3 + 72) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D12B5BF8, 0, 0);
}

uint64_t sub_1D12B5BF8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v3 + 16);
    v6 = *(v3 + 64);
    v7 = *(v3 + 48);
    *(v0 + 16) = *(v3 + 32);
    *(v0 + 32) = v7;
    *(v0 + 48) = v6;
    v8 = v4;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = *(v0 + 56);
      v12 = swift_task_alloc();
      *(v0 + 80) = v12;
      *v12 = v0;
      v12[1] = sub_1D12B5E60;
      v13 = *(v0 + 49);

      return sub_1D12B6C70(v10, v5, v13, v0 + 16);
    }

    else
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v19 = *(v0 + 56);
        v20 = swift_task_alloc();
        *(v0 + 104) = v20;
        *v20 = v0;
        v20[1] = sub_1D12B6034;

        return sub_1D12B9150(v18, v0 + 16);
      }

      else
      {
        v21 = swift_task_alloc();
        *(v0 + 120) = v21;
        *v21 = v0;
        v21[1] = sub_1D12B61C0;
        v22 = *(v0 + 49);

        return sub_1D12B7C10(v2, v5, v22, v0 + 16);
      }
    }
  }

  else
  {
    v15 = *(v0 + 8);
    v16 = MEMORY[0x1E69E7CC0];

    return v15(v16);
  }
}

uint64_t sub_1D12B5E60(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B5F60, 0, 0);
}

uint64_t sub_1D12B5F60()
{
  *(v0 + 96) = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D12B5FD0, 0, 0);
}

uint64_t sub_1D12B5FD0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D12B6034(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B6134, 0, 0);
}

uint64_t sub_1D12B6134()
{
  v1 = v0[7];
  v2 = sub_1D110A99C(v0[14]);

  v0[12] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D12B5FD0, 0, 0);
}

uint64_t sub_1D12B61C0(uint64_t a1)
{
  v3 = *v1;

  *(v3 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B5FD0, 0, 0);
}

uint64_t sub_1D12B62C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(a2 + 16))(a1, a2, v6);
  v10 = [v9 UUID];

  sub_1D138D5CC();
  v11 = sub_1D138D59C();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  v16[0] = v11;
  v16[1] = v13;
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v14 = (*(a2 + 32))(a1, a2);
  MEMORY[0x1D3885C10](v14);

  return v16[0];
}

uint64_t sub_1D12B6444(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 16))(a3, a4);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    v6 = [v8 meaningfulDateDisplayStringWithPreferredForm:a1 showTime:a2 & 1];
    v10 = sub_1D139016C();
  }

  else
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v10 = sub_1D138D1CC();
  }

  return v10;
}

uint64_t sub_1D12B6584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D12B9874(0, &qword_1EE06B500, MEMORY[0x1E6969530]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  v10 = *(a2 + 16);
  v11 = v10(a1, a2, v7);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = [v12 meaningfulDate];
    if (v13)
    {
      v14 = v13;
      sub_1D138D52C();

      v15 = sub_1D138D57C();
      (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
    }

    else
    {

      v21 = sub_1D138D57C();
      (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    }

    return sub_1D112A184(v9, a3);
  }

  else
  {

    v16 = (v10)(a1, a2);
    v17 = [v16 startDate];

    sub_1D138D52C();
    v18 = sub_1D138D57C();
    v19 = *(*(v18 - 8) + 56);

    return v19(a3, 0, 1, v18);
  }
}

void *sub_1D12B6804()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v1;
    v4 = [v2 results];
    if (!v4 || ((v5 = v4, sub_1D106F934(0, &qword_1EC60B898, 0x1E696C138), v6 = sub_1D139045C(), v5, v6 >> 62) ? (v7 = sub_1D13910DC()) : (v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v7))
    {

      return 0;
    }
  }

  return v2;
}

void *sub_1D12B68E0()
{
  v1 = *v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v1;
    v4 = [v2 results];
    if (!v4 || ((v5 = v4, sub_1D106F934(0, &qword_1EC60B898, 0x1E696C138), v6 = sub_1D139045C(), v5, v6 >> 62) ? (v7 = sub_1D13910DC()) : (v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v7))
    {

      return 0;
    }
  }

  return v2;
}

void *sub_1D12B69BC()
{
  v1 = *v0;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    v5 = [v3 FHIRIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 identifier];

      v8 = sub_1D139016C();
      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_1D12B6ACC()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    v5 = [v3 FHIRIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 identifier];

      v8 = sub_1D139016C();
      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D12B6B88()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_1D12B6C1C()
{
  result = qword_1EC60EC48;
  if (!qword_1EC60EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC48);
  }

  return result;
}

uint64_t sub_1D12B6C70(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 432) = a4;
  *(v5 + 440) = v4;
  *(v5 + 185) = a3;
  *(v5 + 416) = a1;
  *(v5 + 424) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D12B6C98, 0, 0);
}

uint64_t sub_1D12B6C98()
{
  v1 = *(v0 + 416);
  v2 = sub_1D12B8D50(v1);
  *(v0 + 186) = v2 & 1;
  *(v0 + 448) = v3;
  *(v0 + 456) = v4;
  v5 = [v1 value];
  if (!v5 || (v6 = v5, v7 = [v5 inspectableValue], v6, !v7) || (v8 = objc_msgSend(v7, sel_codedValueCollection), *(v0 + 464) = v8, v7, !v8))
  {
LABEL_6:
    v9 = [*(v0 + 416) value];
    *(v0 + 504) = v9;
    if (v9)
    {
      v10 = v9;
      v11 = *(v0 + 416);
      v12 = [v11 displayNameForGroupByConcept];
      v13 = sub_1D139016C();
      v15 = v14;

      *(v0 + 512) = v13;
      *(v0 + 520) = v15;
      v16 = [v11 meaningfulDateTitle];
      v17 = sub_1D139016C();
      v19 = v18;

      *(v0 + 528) = v17;
      *(v0 + 536) = v19;
      v20 = objc_opt_self();
      v21 = [v11 referenceRanges];
      *(v0 + 544) = v21;
      v22 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
      v23 = [objc_allocWithZone(MEMORY[0x1E696C1A8]) initWithHealthStore_];
      *(v0 + 552) = v23;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1D12B7498;
      v24 = swift_continuation_init();
      sub_1D12B9328(0);
      *(v0 + 136) = v25;
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D12B814C;
      *(v0 + 104) = &block_descriptor_57;
      *(v0 + 112) = v24;
      [v20 parseValueCollection:v10 referenceRanges:v21 healthRecordsStore:v23 withCompletion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    else
    {

      v26 = *(v0 + 8);
      v27 = MEMORY[0x1E69E7CC0];

      return v26(v27);
    }
  }

  if (v2)
  {

    goto LABEL_6;
  }

  v28 = *(v0 + 432);
  v29 = *(v0 + 440);
  v30 = *(v0 + 185);
  v32 = *(v0 + 416);
  v31 = *(v0 + 424);

  v33 = [v8 codedValues];
  v34 = sub_1D106F934(0, &qword_1EC60B128, 0x1E696C008);
  v35 = sub_1D139045C();
  *(v0 + 472) = v35;

  *(v0 + 272) = *(v28 + 8);
  *(v0 + 280) = *(v28 + 16);
  *(v0 + 288) = *(v28 + 24);
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  *(v36 + 24) = v32;
  *(v36 + 32) = v31;
  *(v36 + 40) = v30;
  v37 = *(v28 + 32);
  v38 = *(v28 + 16);
  *(v36 + 48) = *v28;
  *(v36 + 64) = v38;
  *(v36 + 80) = v37;
  v39 = swift_allocObject();
  *(v0 + 480) = v39;
  *(v39 + 16) = &unk_1D13AE090;
  *(v39 + 24) = v36;
  v40 = v32;
  v41 = v31;
  sub_1D12B95C4(v0 + 272, v0 + 392, sub_1D12B955C);
  sub_1D12B95C4(v0 + 280, v0 + 400, sub_1D116BC24);
  sub_1D12B95C4(v0 + 288, v0 + 408, sub_1D12B962C);
  v42 = swift_task_alloc();
  *(v0 + 488) = v42;
  sub_1D10E3C10(0);
  *v42 = v0;
  v42[1] = sub_1D12B7194;

  return MEMORY[0x1EEE0DDB0](&unk_1D13AE0A0, v39, v35, v34, v43);
}

uint64_t sub_1D12B7194(uint64_t a1)
{
  *(*v1 + 496) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B72D0, 0, 0);
}

void sub_1D12B72D0()
{
  v1 = v0[62];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v14 = v0[58];

    v15 = v0[1];

    v15(v4);
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v1 + 32 + 8 * v3);
    v6 = *(v5 + 16);
    v7 = v4[2];
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= v4[3] >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_1D10F7434(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_15:
        if ((v4[3] >> 1) - v4[2] < v6)
        {
          goto LABEL_27;
        }

        sub_1D1080EA4(0, &qword_1EC609E28, &protocol descriptor for TimelineViewData);
        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = v4[2];
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_28;
          }

          v4[2] = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_26;
    }

LABEL_4:
    if (v2 == ++v3)
    {
      v0 = v16;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1D12B7498()
{

  return MEMORY[0x1EEE6DFA0](sub_1D12B7578, 0, 0);
}

uint64_t sub_1D12B7578()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v9 = *(v0 + 144);
  *(v0 + 560) = v9;
  v3 = *(v0 + 168);
  *(v0 + 576) = *(v0 + 160);
  *(v0 + 584) = v3;
  *(v0 + 592) = *(v0 + 176);
  *(v0 + 187) = *(v0 + 184);

  v4 = v9;

  v5 = swift_task_alloc();
  *(v0 + 600) = v5;
  *v5 = v0;
  v5[1] = sub_1D12B7688;
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);

  return sub_1D10B7244(v7, v6);
}

uint64_t sub_1D12B7688(uint64_t a1)
{
  *(*v1 + 608) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B7788, 0, 0);
}

uint64_t sub_1D12B7788()
{
  v49 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 185);
  HKMedicalRecord.categoryKind.getter(&v48);
  v3 = v48;
  if (v2 == 3)
  {
    v46 = v48;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 187);
    v5 = *(v0 + 584);
    v6 = (v0 + 568);
    v42 = *(v0 + 608);
    v44 = *(v0 + 560);
    v38 = *(v0 + 512);
    v40 = *(v0 + 528);
    v7 = *(v0 + 432);
    v8 = *(v0 + 416);
    if (*(v0 + 186))
    {
      v9 = *(v0 + 456);
    }

    else
    {
      v9 = *(v0 + 576);
    }

    if (*(v0 + 186))
    {
      v6 = (v0 + 448);
    }

    v10 = *v6;
    v11 = sub_1D138D1CC();
    v35 = v12;
    v36 = v11;
    v13 = sub_1D12B8E98(v10, v9, v5, v1, v4);
    v15 = v14;

    sub_1D12B9494(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D139E700;
    *(v0 + 320) = *(v7 + 1);
    *(v0 + 328) = *(v7 + 2);
    *(v0 + 336) = *(v7 + 3);
    v18 = *v7;
    v17 = v7[1];
    *(v0 + 264) = *(v7 + 32);
    *(v0 + 232) = v18;
    *(v0 + 248) = v17;
    sub_1D12B94FC();
    swift_allocObject();
    sub_1D12B95C4(v0 + 320, v0 + 368, sub_1D12B955C);
    sub_1D12B95C4(v0 + 328, v0 + 376, sub_1D116BC24);
    sub_1D12B95C4(v0 + 336, v0 + 384, sub_1D12B962C);
    v19 = sub_1D138F6EC();
    *(v16 + 56) = &type metadata for MedicalRecordTimelineChartValueViewData;
    *(v16 + 64) = sub_1D12B9694();
    v20 = swift_allocObject();
    *(v16 + 32) = v20;
    *(v20 + 16) = v8;
    *(v20 + 24) = v46;
    *(v20 + 32) = v38;
    *(v20 + 48) = v40;
    *(v20 + 64) = v42;
    *(v20 + 72) = v36;
    *(v20 + 80) = v35;
    *(v20 + 88) = v13;
    *(v20 + 96) = v15;
    *(v20 + 104) = v19;
    v21 = v8;
  }

  else
  {
    v47 = *(v0 + 187);
    v43 = *(v0 + 584);
    v45 = *(v0 + 608);
    v22 = (v0 + 568);
    v41 = *(v0 + 560);
    v37 = *(v0 + 512);
    v39 = *(v0 + 528);
    v23 = *(v0 + 432);
    v24 = *(v0 + 416);
    if (*(v0 + 186))
    {
      v25 = *(v0 + 456);
    }

    else
    {
      v25 = *(v0 + 576);
    }

    if (*(v0 + 186))
    {
      v22 = (v0 + 448);
    }

    v26 = *v22;
    sub_1D12B9494(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D139E700;
    *(v0 + 296) = *(v23 + 1);
    *(v0 + 304) = *(v23 + 2);
    *(v0 + 312) = *(v23 + 3);
    v28 = *v23;
    v27 = v23[1];
    *(v0 + 224) = *(v23 + 32);
    *(v0 + 192) = v28;
    *(v0 + 208) = v27;
    sub_1D12B94FC();
    swift_allocObject();
    sub_1D12B95C4(v0 + 296, v0 + 344, sub_1D12B955C);
    sub_1D12B95C4(v0 + 304, v0 + 352, sub_1D116BC24);
    sub_1D12B95C4(v0 + 312, v0 + 360, sub_1D12B962C);
    v29 = sub_1D138F6EC();
    *(v16 + 56) = &type metadata for MedicalRecordTimelineViewData;
    *(v16 + 64) = sub_1D1116170();
    v30 = swift_allocObject();
    *(v16 + 32) = v30;
    *(v30 + 16) = 5;
    *(v30 + 24) = v3;
    *(v30 + 32) = v24;
    *(v30 + 40) = v37;
    *(v30 + 56) = v39;
    *(v30 + 72) = v45;
    *(v30 + 80) = v26;
    *(v30 + 88) = v25;
    *(v30 + 96) = v43;
    *(v30 + 104) = v1;
    *(v30 + 112) = v41;
    *(v30 + 120) = v47;
    *(v30 + 128) = v29;
    v31 = v24;
  }

  v32 = *(v0 + 504);

  v33 = *(v0 + 8);

  return v33(v16);
}

uint64_t sub_1D12B7C10(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 49) = a3;
  *(v4 + 192) = a1;
  *(v4 + 200) = a4;
  v7 = swift_task_alloc();
  *(v4 + 208) = v7;
  *v7 = v4;
  v7[1] = sub_1D12B7CBC;

  return sub_1D10B7244(a1, a2);
}

uint64_t sub_1D12B7CBC(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B7DBC, 0, 0);
}

uint64_t sub_1D12B7DBC()
{
  v30 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  if (*(v0 + 49) == 3)
  {
    HKMedicalRecord.categoryKind.getter(&v29);
    v27 = v29;
    v4 = [v2 preferredDisplayName];
    v5 = sub_1D139016C();
    v7 = v6;

    v8 = [v2 meaningfulDateTitle];
    v9 = sub_1D139016C();
    v11 = v10;

    *(v0 + 120) = *(v3 + 1);
    *(v0 + 128) = *(v3 + 2);
    *(v0 + 136) = *(v3 + 3);
    v12 = *v3;
    v13 = v3[1];
    *(v0 + 88) = *(v3 + 32);
    *(v0 + 72) = v13;
    *(v0 + 56) = v12;
    sub_1D12B94FC();
    swift_allocObject();
    v14 = v1;
    sub_1D12B95C4(v0 + 120, v0 + 168, sub_1D12B955C);
    sub_1D12B95C4(v0 + 128, v0 + 176, sub_1D116BC24);
    sub_1D12B95C4(v0 + 136, v0 + 184, sub_1D12B962C);
    v15 = sub_1D138F6EC();
    sub_1D12B9494(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D139E700;
  }

  else
  {
    HKMedicalRecord.categoryKind.getter(&v28);
    v27 = v28;
    v17 = [v2 displayNameForGroupByConcept];
    v5 = sub_1D139016C();
    v7 = v18;

    v19 = [v2 meaningfulDateTitle];
    v9 = sub_1D139016C();
    v11 = v20;

    sub_1D12B9494(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D139E700;
    *(v0 + 96) = *(v3 + 1);
    *(v0 + 104) = *(v3 + 2);
    *(v0 + 112) = *(v3 + 3);
    v22 = *v3;
    v21 = v3[1];
    *(v0 + 48) = *(v3 + 32);
    *(v0 + 16) = v22;
    *(v0 + 32) = v21;
    sub_1D12B94FC();
    swift_allocObject();
    v14 = v1;
    sub_1D12B95C4(v0 + 96, v0 + 144, sub_1D12B955C);
    sub_1D12B95C4(v0 + 104, v0 + 152, sub_1D116BC24);
    sub_1D12B95C4(v0 + 112, v0 + 160, sub_1D12B962C);
    v15 = sub_1D138F6EC();
  }

  *(v16 + 56) = &type metadata for MedicalRecordTimelineViewData;
  *(v16 + 64) = sub_1D1116170();
  v23 = swift_allocObject();
  *(v16 + 32) = v23;
  *(v23 + 16) = 4;
  *(v23 + 24) = v27;
  *(v23 + 32) = v2;
  *(v23 + 40) = v5;
  *(v23 + 48) = v7;
  *(v23 + 56) = v9;
  *(v23 + 64) = v11;
  *(v23 + 72) = v1;
  *(v23 + 80) = 0u;
  *(v23 + 96) = 0u;
  *(v23 + 105) = 0u;
  *(v23 + 128) = v15;
  v24 = *(v0 + 192);

  v25 = *(v0 + 8);

  return v25(v16);
}

uint64_t sub_1D12B814C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v8 = sub_1D139016C();
  v10 = v9;
  v11 = sub_1D139016C();
  v12 = *(*(v7 + 64) + 40);
  *v12 = a2;
  *(v12 + 8) = v8;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  *(v12 + 32) = v13;
  *(v12 + 40) = a5;
  v14 = a2;

  return MEMORY[0x1EEE6DED8](v7);
}

uint64_t sub_1D12B81F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 392) = a4;
  *(v6 + 400) = a6;
  *(v6 + 185) = a5;
  *(v6 + 376) = a2;
  *(v6 + 384) = a3;
  *(v6 + 368) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D12B821C, 0, 0);
}

uint64_t sub_1D12B821C()
{
  v1 = [*(v0 + 368) codings];
  sub_1D106F934(0, &qword_1EC609D38, 0x1E696C230);
  v2 = sub_1D139045C();

  if (v2 >> 62)
  {
    v3 = sub_1D13910DC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = *(v0 + 368);
    v5 = [v4 value];
    v6 = objc_opt_self();
    v7 = [v6 inspectableValueCollectionSingleWithValue_];
    *(v0 + 408) = v7;

    v8 = [v4 referenceRanges];
    *(v0 + 416) = v8;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1D12B8470;
    v9 = swift_continuation_init();
    sub_1D12B9328(0);
    *(v0 + 136) = v10;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D12B814C;
    *(v0 + 104) = &block_descriptor_25_1;
    *(v0 + 112) = v9;
    [v6 parseUncodedValueCollection:v7 referenceRanges:v8 withCompletion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v11 = *(v0 + 8);
    v12 = MEMORY[0x1E69E7CC0];

    return v11(v12);
  }
}

uint64_t sub_1D12B8470()
{

  return MEMORY[0x1EEE6DFA0](sub_1D12B8550, 0, 0);
}

uint64_t sub_1D12B8550()
{
  v1 = *(v0 + 416);
  v8 = *(v0 + 144);
  *(v0 + 424) = v8;
  v2 = *(v0 + 168);
  *(v0 + 440) = *(v0 + 160);
  *(v0 + 448) = v2;
  *(v0 + 456) = *(v0 + 176);
  *(v0 + 186) = *(v0 + 184);

  v3 = v8;
  v4 = swift_task_alloc();
  *(v0 + 464) = v4;
  *v4 = v0;
  v4[1] = sub_1D12B8648;
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);

  return sub_1D10B7244(v6, v5);
}

uint64_t sub_1D12B8648(uint64_t a1)
{
  *(*v1 + 472) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B8748, 0, 0);
}

uint64_t sub_1D12B8748()
{
  v60 = v0;
  v1 = *(v0 + 368);
  HKMedicalRecord.categoryKind.getter(&v59);
  v2 = v59;
  v3 = [v1 ontologyConcept];
  v4 = [v3 localizedPreferredName];

  if (!v4)
  {
    sub_1D106F934(0, &qword_1EC60B0A8, 0x1E696C0F8);
    v4 = [swift_getObjCClassFromMetadata() defaultDisplayString];
  }

  v5 = sub_1D139016C();
  v7 = v6;

  v8 = *(v0 + 456);
  v9 = *(v0 + 440);
  v10 = *(v0 + 185);
  v11 = [*(v0 + 384) meaningfulDateTitle];
  v12 = sub_1D139016C();
  v14 = v13;

  v58 = v14;
  if (v10 == 3)
  {
    v50 = v12;
    v52 = v5;
    v54 = v7;
    v56 = v2;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 186);
    v16 = *(v0 + 448);
    v17 = *(v0 + 432);
    v47 = *(v0 + 472);
    v49 = *(v0 + 424);
    v18 = *(v0 + 400);
    v19 = *(v0 + 384);
    v20 = sub_1D138D1CC();
    v45 = v21;
    v46 = v20;
    v22 = sub_1D12B8E98(v17, v9, v16, v8, v15);
    v24 = v23;

    sub_1D12B9494(0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D139E700;
    *(v0 + 296) = *(v18 + 1);
    *(v0 + 304) = *(v18 + 2);
    *(v0 + 312) = *(v18 + 3);
    v27 = *v18;
    v26 = v18[1];
    *(v0 + 264) = *(v18 + 32);
    *(v0 + 232) = v27;
    *(v0 + 248) = v26;
    sub_1D12B94FC();
    swift_allocObject();
    sub_1D12B95C4(v0 + 296, v0 + 344, sub_1D12B955C);
    sub_1D12B95C4(v0 + 304, v0 + 352, sub_1D116BC24);
    sub_1D12B95C4(v0 + 312, v0 + 360, sub_1D12B962C);
    v28 = sub_1D138F6EC();
    *(v25 + 56) = &type metadata for MedicalRecordTimelineChartValueViewData;
    *(v25 + 64) = sub_1D12B9694();
    v29 = swift_allocObject();
    *(v25 + 32) = v29;
    *(v29 + 16) = v19;
    *(v29 + 24) = v56;
    *(v29 + 32) = v52;
    *(v29 + 40) = v54;
    *(v29 + 48) = v50;
    *(v29 + 56) = v58;
    *(v29 + 64) = v47;
    *(v29 + 72) = v46;
    *(v29 + 80) = v45;
    *(v29 + 88) = v22;
    *(v29 + 96) = v24;
    *(v29 + 104) = v28;
    v30 = v47;
    v31 = v19;
  }

  else
  {
    v57 = *(v0 + 186);
    v53 = *(v0 + 472);
    v55 = *(v0 + 448);
    v48 = *(v0 + 432);
    v51 = *(v0 + 424);
    v32 = *(v0 + 400);
    v33 = v7;
    v34 = *(v0 + 384);
    sub_1D12B9494(0);
    v35 = v12;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D139E700;
    *(v0 + 272) = *(v32 + 1);
    *(v0 + 280) = *(v32 + 2);
    *(v0 + 288) = *(v32 + 3);
    v37 = *v32;
    v36 = v32[1];
    *(v0 + 224) = *(v32 + 32);
    *(v0 + 192) = v37;
    *(v0 + 208) = v36;
    sub_1D12B94FC();
    swift_allocObject();
    sub_1D12B95C4(v0 + 272, v0 + 320, sub_1D12B955C);
    sub_1D12B95C4(v0 + 280, v0 + 328, sub_1D116BC24);
    sub_1D12B95C4(v0 + 288, v0 + 336, sub_1D12B962C);
    v38 = sub_1D138F6EC();
    *(v25 + 56) = &type metadata for MedicalRecordTimelineViewData;
    *(v25 + 64) = sub_1D1116170();
    v39 = swift_allocObject();
    *(v25 + 32) = v39;
    *(v39 + 16) = 5;
    *(v39 + 24) = v2;
    *(v39 + 32) = v34;
    *(v39 + 40) = v5;
    *(v39 + 48) = v33;
    *(v39 + 56) = v35;
    *(v39 + 64) = v58;
    *(v39 + 72) = v53;
    *(v39 + 80) = v48;
    *(v39 + 88) = v9;
    *(v39 + 96) = v55;
    *(v39 + 104) = v8;
    *(v39 + 112) = v51;
    *(v39 + 120) = v57;
    *(v39 + 128) = v38;
    v40 = v34;
  }

  v41 = *(v0 + 424);
  v42 = *(v0 + 408);

  v43 = *(v0 + 8);

  return v43(v25);
}
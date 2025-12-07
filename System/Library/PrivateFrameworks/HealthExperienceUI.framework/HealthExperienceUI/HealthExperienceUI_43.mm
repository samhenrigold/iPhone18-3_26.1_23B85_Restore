void sub_1BA39C7CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v10 = *a1;
  sub_1BA4A3E28();

  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136315394;
    v16 = sub_1BA4A85D8();
    v18 = sub_1B9F0B82C(v16, v17, v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = type metadata accessor for CategoryMetadata(0);
    v20 = MEMORY[0x1BFAF1560](v10, v19);
    v22 = sub_1B9F0B82C(v20, v21, v25);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Received categories: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);

    (*(v6 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v23 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_categoriesMetadata;
  swift_beginAccess();
  *(a2 + v23) = v10;

  swift_beginAccess();
  sub_1BA268864((a2 + v23));
  swift_endAccess();
  sub_1BA24F418();
}

void sub_1BA39CAA0(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D788(0, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v48 - v15;
  v17 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (v17)
  {
    v18 = v17;
    v19 = v2;
    sub_1BA4A3A38();
    v20 = sub_1BA4A3A28();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {

LABEL_4:
      sub_1BA39EB64(v16, &qword_1EBBEA078, MEMORY[0x1E69A3910]);
      return;
    }

    sub_1BA39EBD4(v16, v12);
    v22 = (*(v21 + 88))(v12, v20);
    if (v22 == *MEMORY[0x1E69A38E8])
    {
      (*(v21 + 96))(v12, v20);
      v23 = *v12;
      v24 = [v18 displayTypeForObjectType_];
      if (v24)
      {
        v25 = v24;
        [v24 displayCategory];
      }

      else
      {
        sub_1BA4A3E28();
        v30 = v23;
        v31 = sub_1BA4A3E88();
        v32 = sub_1BA4A6FA8();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v49 = v32;
          v34 = v33;
          v50 = swift_slowAlloc();
          v51 = v50;
          *v34 = 136315394;
          v35 = sub_1BA4A85D8();
          v37 = sub_1B9F0B82C(v35, v36, &v51);

          *(v34 + 4) = v37;
          *(v34 + 12) = 2080;
          v38 = v30;
          v39 = [v38 description];
          v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v48 = v31;
          v41 = v40;
          v43 = v42;

          v44 = sub_1B9F0B82C(v41, v43, &v51);

          *(v34 + 14) = v44;
          v45 = v48;
          _os_log_impl(&dword_1B9F07000, v48, v49, "[%s] Received object type with no corresponding display type: %s", v34, 0x16u);
          v46 = v50;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v46, -1, -1);
          MEMORY[0x1BFAF43A0](v34, -1, -1);
        }

        else
        {
        }

        (*(v5 + 8))(v8, v4);
      }

      goto LABEL_4;
    }

    if (v22 == *MEMORY[0x1E69A38F8])
    {
      (*(v21 + 8))(v12, v20);
      v26 = sub_1BA4A6DC8();
      v27 = [v18 displayTypeWithIdentifier_];

      if (v27)
      {
LABEL_11:
        [v27 displayCategory];

        goto LABEL_4;
      }

      __break(1u);
    }

    else
    {
      if (v22 != *MEMORY[0x1E69A38F0])
      {
        if (v22 != *MEMORY[0x1E69A3900])
        {

          (*(v21 + 8))(v12, v20);
          goto LABEL_4;
        }

        (*(v21 + 8))(v12, v20);
        v47 = sub_1BA4A6DC8();
        v27 = [v18 displayTypeWithIdentifier_];

        if (v27)
        {
          goto LABEL_11;
        }

        goto LABEL_25;
      }

      v28 = [objc_opt_self() menstrualFlowType];
      v29 = [v18 displayTypeForObjectType_];

      if (v29)
      {
        [v29 displayCategory];

        (*(v21 + 8))(v12, v20);
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_1BA39D0CC@<X0>(void *a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 16);

  if (v6)
  {
    v7 = sub_1B9FDA96C(v5);
    if (v8)
    {
      v9 = *(*(v4 + 56) + 8 * v7);
      v10 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_7;
      }

      __break(1u);
    }
  }

  v10 = 1;
LABEL_7:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = sub_1B9FF250C(v10, v5, isUniquelyReferenced_nonNull_native);
  *a3 = v4;
  return result;
}

uint64_t sub_1BA39D1B0(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(0);
  sub_1BA39E2B4(a3, a4, a5);
  return sub_1BA4A6A18();
}

id sub_1BA39D230@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 8);
  v7 = *a1;
  v4 = *(type metadata accessor for CategoryMetadata(0) + 24);
  v5 = sub_1BA4A1728();
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  *a2 = v7;
  *(a2 + 1) = v3;

  return v7;
}

id PendingSummarySharingProfileGradientProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PendingSummarySharingProfileGradientProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PendingSummarySharingProfileGradientProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA39D3D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BA08FD3C;
  *(v7 + 24) = v6;
  v9[4] = sub_1BA114968;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA112CEC;
  v9[3] = &block_descriptor_104;
  v8 = _Block_copy(v9);

  [a3 fetchSharingAuthorizationsWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_1BA39D4E0(uint64_t a1, void *a2)
{
  sub_1BA39E2FC(0);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39E544(0);
  v52 = v8;
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39E600(0);
  v13 = *(v12 - 8);
  v57 = v12;
  v58 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v47 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39E75C(0);
  v17 = *(v16 - 8);
  v59 = v16;
  v60 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v51 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39E9E8(0);
  v21 = *(v20 - 8);
  v61 = v20;
  v62 = v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v53 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39EA94(0);
  v25 = *(v24 - 8);
  v63 = v24;
  v64 = v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v56 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_allocWithZone(MEMORY[0x1E696C438]);
  v29 = sub_1BA4A1758();
  v30 = [v28 initForInvitationUUID_];
  v55 = v30;

  v31 = [objc_allocWithZone(MEMORY[0x1E696C430]) initWithHealthStore:a2 recipientIdentifier:v30];
  *(swift_allocObject() + 16) = v31;
  sub_1BA39E4D4(0);
  swift_allocObject();
  v48 = v31;
  v65 = sub_1BA4A4EA8();
  sub_1BA4A4D08();
  sub_1BA39E424(0);
  sub_1BA39E2B4(&qword_1EBBEC1E0, sub_1BA39E4D4, MEMORY[0x1E695C038]);
  v32 = MEMORY[0x1E695BE60];
  sub_1BA39E2B4(&qword_1EBBF17F8, sub_1BA39E424, MEMORY[0x1E695BE60]);
  sub_1BA4A5078();

  *(swift_allocObject() + 16) = a2;
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0, 0x1E69A4368);
  v33 = MEMORY[0x1E695BE40];
  sub_1BA39E2B4(&qword_1EBBF1810, sub_1BA39E2FC, MEMORY[0x1E695BE40]);
  v34 = a2;
  v35 = v49;
  sub_1BA4A4FA8();

  (*(v50 + 8))(v7, v35);
  v65 = MEMORY[0x1E69E7CC8];
  sub_1BA39E6AC(0);
  sub_1BA39E2B4(&qword_1EBBF1828, sub_1BA39E544, MEMORY[0x1E695BC80]);
  v36 = v47;
  v37 = v52;
  sub_1BA4A5048();
  (*(v54 + 8))(v11, v37);
  sub_1BA4A4D08();
  sub_1BA39E938(0);
  sub_1BA39E2B4(&qword_1EBBF1860, sub_1BA39E600, MEMORY[0x1E695BE18]);
  sub_1BA39E2B4(&qword_1EBBF1850, sub_1BA39E938, v32);
  v38 = v51;
  v39 = v57;
  sub_1BA4A5078();
  (*(v58 + 8))(v36, v39);
  type metadata accessor for CategoryMetadata(0);
  sub_1BA39E2B4(&qword_1EBBF1870, sub_1BA39E75C, v33);
  v40 = v53;
  v41 = v59;
  sub_1BA4A4FE8();
  (*(v60 + 8))(v38, v41);
  sub_1BA39E2B4(&qword_1EBBF1880, sub_1BA39E9E8, MEMORY[0x1E695BD60]);
  v42 = v56;
  v43 = v61;
  sub_1BA4A5068();
  (*(v62 + 8))(v40, v43);
  sub_1BA39E2B4(&qword_1EBBF1888, sub_1BA39EA94, MEMORY[0x1E695BE38]);
  v44 = v63;
  v45 = sub_1BA4A4F98();

  (*(v64 + 8))(v42, v44);
  return v45;
}

void *sub_1BA39DD2C(uint64_t a1, void *a2)
{
  v3 = v2;
  v27 = a1;
  ObjectType = swift_getObjectType();
  v26 = MEMORY[0x1E69E8050];
  sub_1B9F3D788(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v25 - v8;
  sub_1BA39E104(0);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PendingSummarySharingProfileGradientProvider();
  v33.receiver = v3;
  v33.super_class = v15;
  v25 = objc_msgSendSuper2(&v33, sel_init);
  v32 = sub_1BA39D4E0(a1, a2);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v16 = sub_1BA4A7308();
  v31 = v16;
  v17 = sub_1BA4A72A8();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_1BA39E204(0);
  sub_1BA39E2B4(&qword_1EBBF17C8, sub_1BA39E204, MEMORY[0x1E695BED8]);
  sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0, 0x1E69E9610, MEMORY[0x1E69E8028]);
  sub_1BA4A50A8();
  sub_1BA39EB64(v9, &qword_1EDC6B5B8, v26);

  v18 = swift_allocObject();
  v19 = ObjectType;
  *(v18 + 16) = ObjectType;
  v20 = swift_allocObject();
  v21 = v25;
  *(v20 + 16) = v25;
  *(v20 + 24) = v19;
  sub_1BA39E2B4(&qword_1EBBF17D0, sub_1BA39E104, MEMORY[0x1E695BE98]);
  v22 = v29;
  sub_1BA4A4F88();

  v23 = sub_1BA4A1798();
  (*(*(v23 - 8) + 8))(v27, v23);
  (*(v30 + 8))(v14, v22);
  return v21;
}

void sub_1BA39E104(uint64_t a1)
{
  if (!qword_1EBBF17B0)
  {
    sub_1BA39E204(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA39E2B4(&qword_1EBBF17C8, sub_1BA39E204, MEMORY[0x1E695BED8]);
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0, 0x1E69E9610, MEMORY[0x1E69E8028]);
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF17B0);
    }
  }
}

void sub_1BA39E204(uint64_t a1)
{
  if (!qword_1EBBF17B8)
  {
    sub_1B9F3D788(255, &qword_1EBBF17C0, type metadata accessor for CategoryMetadata, MEMORY[0x1E69E62F8]);
    sub_1B9FED358();
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF17B8);
    }
  }
}

uint64_t sub_1BA39E2B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA39E2FC(uint64_t a1)
{
  if (!qword_1EBBF17D8)
  {
    sub_1BA39E3E8(255);
    sub_1BA39E4D4(255);
    sub_1BA39E2B4(&qword_1EBBF1800, sub_1BA39E3E8, MEMORY[0x1E695BCF8]);
    sub_1BA39E2B4(&qword_1EBBEC1E0, sub_1BA39E4D4, MEMORY[0x1E695C038]);
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF17D8);
    }
  }
}

void sub_1BA39E424(uint64_t a1)
{
  if (!qword_1EBBF17E8)
  {
    sub_1BA11468C(255);
    sub_1BA39E2B4(&qword_1EBBF17F0, sub_1BA11468C, MEMORY[0x1E69E6328]);
    v1 = sub_1BA4A4C98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF17E8);
    }
  }
}

void sub_1BA39E4D4(uint64_t a1)
{
  if (!qword_1EBBEC1D8)
  {
    sub_1BA11468C(255);
    sub_1B9FED358();
    v1 = sub_1BA4A4E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC1D8);
    }
  }
}

void sub_1BA39E544(uint64_t a1)
{
  if (!qword_1EBBF1808)
  {
    sub_1BA39E2FC(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5C0, 0x1E69A4368);
    sub_1BA39E2B4(&qword_1EBBF1810, sub_1BA39E2FC, MEMORY[0x1E695BE40]);
    v1 = sub_1BA4A4AC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1808);
    }
  }
}

void sub_1BA39E600(uint64_t a1)
{
  if (!qword_1EBBF1818)
  {
    sub_1BA39E544(255);
    sub_1BA39E6AC(255);
    sub_1BA39E2B4(&qword_1EBBF1828, sub_1BA39E544, MEMORY[0x1E695BC80]);
    v1 = sub_1BA4A4BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1818);
    }
  }
}

void sub_1BA39E6AC(uint64_t a1)
{
  if (!qword_1EBBF1820)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B5C0, 0x1E69A4368);
    sub_1B9F3E1E0(&qword_1EBBEBEA8, &qword_1EDC6B5C0, 0x1E69A4368, MEMORY[0x1E69E81B8]);
    v1 = sub_1BA4A6688();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1820);
    }
  }
}

void sub_1BA39E75C(uint64_t a1)
{
  if (!qword_1EBBF1830)
  {
    sub_1BA39E848(255);
    sub_1BA39E600(255);
    sub_1BA39E2B4(&qword_1EBBF1858, sub_1BA39E848, MEMORY[0x1E695BCF8]);
    sub_1BA39E2B4(&qword_1EBBF1860, sub_1BA39E600, MEMORY[0x1E695BE18]);
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1830);
    }
  }
}

void sub_1BA39E884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9FED358();
    sub_1BA39E2B4(a4, a5, MEMORY[0x1E695BE60]);
    v8 = sub_1BA4A4B38();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA39E938(uint64_t a1)
{
  if (!qword_1EBBF1840)
  {
    sub_1BA39E6AC(255);
    sub_1BA39E2B4(&qword_1EBBF1848, sub_1BA39E6AC, MEMORY[0x1E69E5E50]);
    v1 = sub_1BA4A4C98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1840);
    }
  }
}

void sub_1BA39E9E8(uint64_t a1)
{
  if (!qword_1EBBF1868)
  {
    sub_1BA39E75C(255);
    type metadata accessor for CategoryMetadata(255);
    sub_1BA39E2B4(&qword_1EBBF1870, sub_1BA39E75C, MEMORY[0x1E695BE40]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1868);
    }
  }
}

void sub_1BA39EA94(uint64_t a1)
{
  if (!qword_1EBBF1878)
  {
    sub_1BA39E9E8(255);
    sub_1BA39E2B4(&qword_1EBBF1880, sub_1BA39E9E8, MEMORY[0x1E695BD60]);
    v1 = sub_1BA4A4C18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1878);
    }
  }
}

uint64_t sub_1BA39EB64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F3D788(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA39EBD4(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D788(0, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1BA39EC7C()
{
  result = sub_1BA39EC9C();
  off_1EBBF1890 = result;
  return result;
}

unint64_t sub_1BA39EC9C()
{
  sub_1B9FED290(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4BAF00;
  *(inited + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x80000001BA504610;
  *(inited + 64) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001BA504630;
  *(inited + 96) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 104) = v3;
  *(inited + 112) = 0xD00000000000001BLL;
  *(inited + 120) = 0x80000001BA504650;
  *(inited + 128) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 136) = v4;
  *(inited + 144) = 0xD00000000000001CLL;
  *(inited + 152) = 0x80000001BA504670;
  *(inited + 160) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 168) = v5;
  *(inited + 176) = 0xD000000000000023;
  *(inited + 184) = 0x80000001BA504690;
  *(inited + 192) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 200) = v6;
  *(inited + 208) = 0xD00000000000001BLL;
  *(inited + 216) = 0x80000001BA5046C0;
  *(inited + 224) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 232) = v7;
  *(inited + 240) = 0xD00000000000001FLL;
  *(inited + 248) = 0x80000001BA5046E0;
  *(inited + 256) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 264) = v8;
  *(inited + 272) = 0xD000000000000017;
  *(inited + 280) = 0x80000001BA504700;
  v9 = sub_1B9F12744(inited);
  swift_setDeallocating();
  sub_1B9F1D284();
  swift_arrayDestroy();
  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9F248E4(0xD000000000000023, 0x80000001BA504690, v10, v12, isUniquelyReferenced_nonNull_native);

  return v9;
}

id sub_1BA39EEFC(void *a1)
{
  if (qword_1EBBE88F0 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = off_1EBBF1890;
  v2 = [a1 identifier];
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  if (!v1[2])
  {

    return 0;
  }

  sub_1B9F24A34(v3, v5);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = qword_1EDC5E100;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDC84A30;
  v10 = sub_1BA4A6758();

  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  return v11;
}

uint64_t EndSharingRelationshipNotificationUserInfo.init(profileUUID:profileType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BA4A1798();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for EndSharingRelationshipNotificationUserInfo(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for EndSharingRelationshipNotificationUserInfo(uint64_t a1)
{
  result = qword_1EBBF18B0;
  if (!qword_1EBBF18B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t EndSharingRelationshipNotificationUserInfo.asUserInfoDictionary()()
{
  sub_1BA39FEE4(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v2 = MEMORY[0x1E69E6158];
  sub_1BA4A7D58();
  v3 = sub_1BA4A1748();
  *(inited + 96) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = v4;
  sub_1BA4A7D58();
  v5 = *(v0 + *(type metadata accessor for EndSharingRelationshipNotificationUserInfo(0) + 20));
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = v5;
  v6 = sub_1B9FDB524(inited);
  swift_setDeallocating();
  sub_1BA1284D4();
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_1BA39F280()
{
  result = sub_1BA4A6758();
  qword_1EDC5E440 = result;
  return result;
}

uint64_t sub_1BA39F2DC()
{
  result = sub_1BA4A6758();
  qword_1EDC5E418 = result;
  return result;
}

uint64_t EndSharingRelationshipNotificationUserInfo.UserInfoDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

HealthExperienceUI::EndSharingRelationshipNotificationUserInfo::UserInfoKeys_optional __swiftcall EndSharingRelationshipNotificationUserInfo.UserInfoKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

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

uint64_t EndSharingRelationshipNotificationUserInfo.UserInfoKeys.rawValue.getter()
{
  if (*v0)
  {
    return 0x54656C69666F7270;
  }

  else
  {
    return 0x55656C69666F7270;
  }
}

uint64_t sub_1BA39F470(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x54656C69666F7270;
  }

  else
  {
    v3 = 0x55656C69666F7270;
  }

  if (v2)
  {
    v4 = 0xEB00000000444955;
  }

  else
  {
    v4 = 0xEB00000000657079;
  }

  if (*a2)
  {
    v5 = 0x54656C69666F7270;
  }

  else
  {
    v5 = 0x55656C69666F7270;
  }

  if (*a2)
  {
    v6 = 0xEB00000000657079;
  }

  else
  {
    v6 = 0xEB00000000444955;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();
  }

  return v8 & 1;
}

uint64_t sub_1BA39F528()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA39F5BC(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA39F63C(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA39F6CC(char *a2@<X8>)
{
  v3 = sub_1BA4A8108();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1BA39F72C(uint64_t *a1@<X8>)
{
  v2 = 0x55656C69666F7270;
  if (*v1)
  {
    v2 = 0x54656C69666F7270;
  }

  v3 = 0xEB00000000444955;
  if (*v1)
  {
    v3 = 0xEB00000000657079;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t EndSharingRelationshipNotificationUserInfo.profileUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A1798();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EndSharingRelationshipNotificationUserInfo.profileUUID.setter(uint64_t a1)
{
  v3 = sub_1BA4A1798();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EndSharingRelationshipNotificationUserInfo.profileType.setter(uint64_t a1)
{
  result = type metadata accessor for EndSharingRelationshipNotificationUserInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t EndSharingRelationshipNotificationUserInfo.init(notification:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1BA39FEE4(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v35 - v6;
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A1008();
  if (!v13)
  {
    sub_1BA39FF48();
    swift_allocError();
    *v21 = 0;
    goto LABEL_9;
  }

  v14 = v13;
  *&v37[0] = 0x55656C69666F7270;
  *(&v37[0] + 1) = 0xEB00000000444955;
  sub_1BA4A7D58();
  if (!*(v14 + 16) || (v15 = sub_1B9FDA8E4(v38), (v16 & 1) == 0))
  {

    sub_1B9FDC768(v38);
    sub_1BA39FF48();
    swift_allocError();
    *v20 = 1;
LABEL_9:
    swift_willThrow();
    v22 = sub_1BA4A1018();
    return (*(*(v22 - 8) + 8))(a1, v22);
  }

  sub_1B9F0AD9C(*(v14 + 56) + 32 * v15, v37);
  sub_1B9FDC768(v38);
  sub_1B9F46920(v37, v39);
  sub_1B9F0AD9C(v39, v38);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1BA39FF48();
    swift_allocError();
    v19 = 2;
    goto LABEL_11;
  }

  sub_1BA4A1738();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1BA29D560(v7, v17);
    sub_1BA39FF48();
    swift_allocError();
    v19 = 3;
LABEL_11:
    *v18 = v19;
    swift_willThrow();
    v24 = sub_1BA4A1018();
    (*(*(v24 - 8) + 8))(a1, v24);
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v25 = v7;
  v26 = *(v9 + 32);
  v26(v12, v25, v8);
  *&v36[0] = 0x54656C69666F7270;
  *(&v36[0] + 1) = 0xEB00000000657079;
  sub_1BA4A7D58();
  if (*(v14 + 16) && (v27 = sub_1B9FDA8E4(v38), (v28 & 1) != 0))
  {
    sub_1B9F0AD9C(*(v14 + 56) + 32 * v27, v36);
    sub_1B9FDC768(v38);

    sub_1B9F46920(v36, v37);
    sub_1B9F0AD9C(v37, v38);
    if (swift_dynamicCast())
    {
      v29 = *&v36[0];
      v30 = sub_1BA4A1018();
      (*(*(v30 - 8) + 8))(a1, v30);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v26(a2, v12, v8);
      result = type metadata accessor for EndSharingRelationshipNotificationUserInfo(0);
      *&a2[*(result + 20)] = v29;
      return result;
    }

    sub_1BA39FF48();
    swift_allocError();
    *v33 = 5;
    swift_willThrow();
    v34 = sub_1BA4A1018();
    (*(*(v34 - 8) + 8))(a1, v34);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {

    sub_1B9FDC768(v38);
    sub_1BA39FF48();
    swift_allocError();
    *v31 = 4;
    swift_willThrow();
    v32 = sub_1BA4A1018();
    (*(*(v32 - 8) + 8))(a1, v32);
  }

  (*(v9 + 8))(v12, v8);
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

void sub_1BA39FEE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA39FF48()
{
  result = qword_1EBBF1898;
  if (!qword_1EBBF1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1898);
  }

  return result;
}

unint64_t sub_1BA39FFA0()
{
  result = qword_1EBBF18A0;
  if (!qword_1EBBF18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF18A0);
  }

  return result;
}

unint64_t sub_1BA39FFF8()
{
  result = qword_1EBBF18A8;
  if (!qword_1EBBF18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF18A8);
  }

  return result;
}

void sub_1BA3A0074(uint64_t a1)
{
  sub_1BA4A1798();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKProfileType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id HealthToolboxProviding<>.providedHealthToolbox.getter(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = (*(a2 + 8))(a1, a2);
  v6 = [v4 sharedInstanceForHealthStore_];

  return v6;
}

uint64_t HealthExperienceStoreIncrementalCoreSpotlightOperation.__allocating_init(store:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B9F0A534(a1, v6);
  v4 = sub_1BA4A3AB8();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id HealthExperienceStoreIncrementalCoreSpotlightOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA3A0260()
{
  v1 = *(v0 + 144);

  return v1;
}

void sub_1BA3A0290(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
}

uint64_t sub_1BA3A02C8()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t sub_1BA3A02F8(uint64_t a1)
{
  v2 = sub_1B9FE9354();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA3A0344()
{
  sub_1BA3A1F4C(v0, &v11, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  if (!v12)
  {
    v4 = &qword_1EBBF18D8;
    v5 = &qword_1EBBF18E0;
    v6 = &protocol descriptor for RecentSamplesItemModel;
    v7 = &v11;
LABEL_6:
    sub_1BA3A1FD0(v7, v4, v5, v6, sub_1B9F0D950);
    v3 = 0;
    return v3 & 1;
  }

  sub_1B9F1134C(&v11, v14);
  sub_1BA3A1F4C(v0 + 96, &v9, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
  if (!v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v4 = &unk_1EBBEC650;
    v5 = &qword_1EBBF18D0;
    v6 = &protocol descriptor for SampleDescriptionItemTextProviding;
    v7 = &v9;
    goto LABEL_6;
  }

  sub_1B9F1134C(&v9, &v11);
  v1 = v12;
  v2 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, v12);
  v3 = (*(v2 + 24))(v14, v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(&v11);
  return v3 & 1;
}

uint64_t sub_1BA3A04A4()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3A1F4C(v0 + 96, v22, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
  v6 = v23;
  sub_1BA3A1FD0(v22, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding, sub_1B9F0D950);
  if (v6)
  {
    sub_1BA3A1F4C(v0, &v19, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
    if (v20)
    {
      sub_1B9F1134C(&v19, v22);
      sub_1BA3A1F4C(v0 + 96, &v19, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
      v7 = v20;
      if (v20)
      {
        v8 = v21;
        __swift_project_boxed_opaque_existential_1(&v19, v20);
        v9 = (*(v8 + 8))(v22, v7, v8);
        __swift_destroy_boxed_opaque_existential_1(v22);
        __swift_destroy_boxed_opaque_existential_1(&v19);
        return v9;
      }

      __swift_destroy_boxed_opaque_existential_1(v22);
      v16 = &unk_1EBBEC650;
      v17 = &qword_1EBBF18D0;
      v18 = &protocol descriptor for SampleDescriptionItemTextProviding;
      goto LABEL_10;
    }

LABEL_8:
    v16 = &qword_1EBBF18D8;
    v17 = &qword_1EBBF18E0;
    v18 = &protocol descriptor for RecentSamplesItemModel;
LABEL_10:
    sub_1BA3A1FD0(&v19, v16, v17, v18, sub_1B9F0D950);
    return 0;
  }

  sub_1BA3A1F4C(v0, &v19, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  if (!v20)
  {
    goto LABEL_8;
  }

  sub_1B9F1134C(&v19, v22);
  v11 = v23;
  v12 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v12 + 24))(v11, v12);
  v13 = sub_1BA4A16B8();
  (*(v2 + 8))(v5, v1);
  v14 = HKLocalizedStringForDateAndTemplate();

  if (v14)
  {
    v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v15 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v15;
}

uint64_t sub_1BA3A079C()
{
  sub_1BA3A1F4C(v0 + 96, v12, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
  v1 = v12[3];
  sub_1BA3A1FD0(v12, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding, sub_1B9F0D950);
  if (!v1)
  {
    return sub_1BA3A0954();
  }

  sub_1BA3A1F4C(v0, &v9, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  if (v10)
  {
    sub_1B9F1134C(&v9, v12);
    sub_1BA3A1F4C(v0 + 96, &v9, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
    v2 = v10;
    if (v10)
    {
      v3 = v11;
      __swift_project_boxed_opaque_existential_1(&v9, v10);
      v4 = (*(v3 + 16))(v12, v2, v3);
      __swift_destroy_boxed_opaque_existential_1(v12);
      __swift_destroy_boxed_opaque_existential_1(&v9);
      return v4;
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    v6 = &unk_1EBBEC650;
    v7 = &qword_1EBBF18D0;
    v8 = &protocol descriptor for SampleDescriptionItemTextProviding;
  }

  else
  {
    v6 = &qword_1EBBF18D8;
    v7 = &qword_1EBBF18E0;
    v8 = &protocol descriptor for RecentSamplesItemModel;
  }

  sub_1BA3A1FD0(&v9, v6, v7, v8, sub_1B9F0D950);
  return 0;
}

uint64_t sub_1BA3A0954()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v112 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v112 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v112 - v16;
  sub_1BA3A1F4C(v0, &v118, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  if (!v119)
  {
    sub_1BA3A1FD0(&v118, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel, sub_1B9F0D950);
    return 0;
  }

  sub_1B9F1134C(&v118, v120);
  v18 = v121;
  v19 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  v20 = (*(v19 + 8))(v18, v19);
  if (!v20)
  {
LABEL_47:
    __swift_destroy_boxed_opaque_existential_1(v120);
    return 0;
  }

  v21 = v20;
  v113 = v9;
  v114 = v2;
  v115 = v1;
  v22 = objc_opt_self();
  v23 = *(v0 + 40);
  v24 = [v22 sharedInstanceForHealthStore_];
  v116 = [v24 createHKUnitPreferenceController];

  v25 = [v21 hk:v23 metadataValueDisplayTypeInStore:?];
  if (v25)
  {
    v26 = v25;
    v27 = [v21 hk_primaryMetadataKey];
    if (!v27)
    {
      goto LABEL_15;
    }

    v112 = v21;
    v28 = v27;
    v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v31 = v30;

    v33 = v121;
    v32 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    v34 = (*(v32 + 32))(v33, v32);
    if (v34)
    {
      v35 = v34;
      if (*(v34 + 16))
      {
        v36 = sub_1B9F24A34(v29, v31);
        v38 = v37;

        if (v38)
        {
          sub_1B9F0AD9C(*(v35 + 56) + 32 * v36, &v118);

          sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
          v39 = swift_dynamicCast();
          v21 = v112;
          if (v39)
          {
            v40 = v117;
            v41 = [v112 hk:v117 formatMetadataValue:v26 displayType:v116 unitPreferencesController:?];
            if (v41)
            {
              v42 = v40;
              v43 = v41;
              v113 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

              sub_1BA4A3DD8();
              v44 = v21;
              v45 = sub_1BA4A3E88();
              v46 = v21;
              v47 = sub_1BA4A6F88();

              if (os_log_type_enabled(v45, v47))
              {
                v48 = swift_slowAlloc();
                v49 = swift_slowAlloc();
                *v48 = 138477827;
                *(v48 + 4) = v44;
                *v49 = v46;
                v50 = v44;
                _os_log_impl(&dword_1B9F07000, v45, v47, "SampleDescriptionItem contains primary metadata value for type %{private}@!", v48, 0xCu);
                sub_1BA3A1FD0(v49, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
                MEMORY[0x1BFAF43A0](v49, -1, -1);
                MEMORY[0x1BFAF43A0](v48, -1, -1);
                v44 = v26;
                v51 = v116;
              }

              else
              {
                v50 = v45;
                v45 = v116;
                v51 = v42;
                v42 = v26;
              }

              (*(v114 + 8))(v17, v115);
              __swift_destroy_boxed_opaque_existential_1(v120);
              return v113;
            }

            goto LABEL_16;
          }

LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    v21 = v112;
    goto LABEL_15;
  }

LABEL_16:
  sub_1B9F0A534(v120, &v118);
  sub_1B9F0D950(0, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  sub_1B9F0ADF8(0, &qword_1EBBF18E8, 0x1E696BF88);
  if (swift_dynamicCast())
  {
    v52 = v117;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v54 = Strong;
      if ([Strong respondsToSelector_])
      {
        v55 = v21;
        v56 = [v54 displayTypeController];
        swift_unknownObjectRelease();
        v57 = v121;
        v58 = v122;
        __swift_project_boxed_opaque_existential_1(v120, v121);
        v59 = (*(v58 + 8))(v57, v58);
        v60 = [v56 displayTypeForObjectType_];

        if (v60)
        {
          v61 = [v60 hk_enumeratedValueLabels];

          if (v61)
          {
            sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
            sub_1B9F2D594();
            v62 = sub_1BA4A6628();

            v63 = [v52 value];
            v64 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            v65 = v64;
            if (*(v62 + 16))
            {
              v66 = sub_1B9FDAA0C(v64);
              if (v67)
              {
                v68 = *(*(v62 + 56) + 16 * v66);

                sub_1BA4A3DD8();
                v69 = v55;
                v70 = v55;
                v71 = sub_1BA4A3E88();
                v72 = sub_1BA4A6F88();

                if (os_log_type_enabled(v71, v72))
                {
                  v73 = swift_slowAlloc();
                  v74 = swift_slowAlloc();
                  *v73 = 138477827;
                  *(v73 + 4) = v70;
                  *v74 = v69;
                  v75 = v70;
                  _os_log_impl(&dword_1B9F07000, v71, v72, "SampleDescriptionItem contains enumerated labels for sample %{private}@", v73, 0xCu);
                  sub_1BA3A1FD0(v74, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
                  MEMORY[0x1BFAF43A0](v74, -1, -1);
                  MEMORY[0x1BFAF43A0](v73, -1, -1);
                }

                else
                {
                  v75 = v71;
                  v71 = v70;
                }

                v110 = v116;

                (*(v114 + 8))(v13, v115);
                __swift_destroy_boxed_opaque_existential_1(v120);
                return v68;
              }
            }
          }
        }

        v21 = v55;
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  sub_1B9F0A534(v120, &v118);
  sub_1B9F0ADF8(0, &unk_1EDC5E2C0, 0x1E69A4208);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v78 = v115;
LABEL_43:
    sub_1BA4A3DD8();
    v101 = v21;
    v102 = sub_1BA4A3E88();
    v103 = v21;
    v104 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v102, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v105 = 138477827;
      *(v105 + 4) = v101;
      *v106 = v103;
      v107 = v101;
      _os_log_impl(&dword_1B9F07000, v102, v104, "SampleDescriptionItem is missing value string parameters for type %{private}@", v105, 0xCu);
      sub_1BA3A1FD0(v106, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v106, -1, -1);
      MEMORY[0x1BFAF43A0](v105, -1, -1);
    }

    else
    {
      v107 = v102;
      v102 = v101;
    }

    v108 = v116;

    (*(v114 + 8))(v5, v78);
    goto LABEL_47;
  }

  v76 = v117;
  v77 = swift_unknownObjectWeakLoadStrong();
  v78 = v115;
  if (!v77)
  {

    goto LABEL_43;
  }

  v79 = v77;
  if (([v77 respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v80 = v21;
  v81 = [v79 displayTypeController];
  swift_unknownObjectRelease();
  v82 = v121;
  v83 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  v84 = (*(v83 + 8))(v82, v83);
  v85 = [v81 displayTypeForObjectType_];

  if (!v85)
  {
    goto LABEL_42;
  }

  v86 = [v85 hk_enumeratedValueLabels];

  if (!v86)
  {
    goto LABEL_42;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
  sub_1B9F2D594();
  v87 = sub_1BA4A6628();

  v88 = [v76 categoryValue];
  v89 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v90 = v89;
  if (!*(v87 + 16) || (v91 = sub_1B9FDAA0C(v89), (v92 & 1) == 0))
  {

LABEL_42:

    v21 = v80;
    goto LABEL_43;
  }

  v93 = *(*(v87 + 56) + 16 * v91);

  sub_1BA4A3DD8();
  v94 = v80;
  v95 = v80;
  v96 = sub_1BA4A3E88();
  v97 = sub_1BA4A6F88();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v98 = 138477827;
    *(v98 + 4) = v95;
    *v99 = v94;
    v100 = v95;
    _os_log_impl(&dword_1B9F07000, v96, v97, "SampleDescriptionItem contains enumerated labels for sample %{private}@", v98, 0xCu);
    sub_1BA3A1FD0(v99, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
    MEMORY[0x1BFAF43A0](v99, -1, -1);
    MEMORY[0x1BFAF43A0](v98, -1, -1);
  }

  else
  {
    v100 = v96;
    v96 = v95;
  }

  v111 = v116;

  (*(v114 + 8))(v113, v78);
  __swift_destroy_boxed_opaque_existential_1(v120);
  return v93;
}

uint64_t sub_1BA3A15DC()
{
  v1 = v0;
  sub_1BA001B68(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23[-1] - v4;
  v6 = sub_1BA4A3FB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A3F18();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v23[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3A1F4C(v1, v23, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  v16 = v24;
  if (v24)
  {
    v22 = v7;
    v17 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v18 = (*(v17 + 48))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v23);
    if (v18)
    {

      if (*(v1 + 136) == 1)
      {
        sub_1BA001B68(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
        sub_1BA4A3FE8();
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1BA4B5480;
        (*(v12 + 104))(v15, *MEMORY[0x1E69DBF28], v11);
        v20 = sub_1BA4A3F48();
        (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
        sub_1BA4A3FA8();
        sub_1BA4A3F78();
        (*(v22 + 8))(v10, v6);
        (*(v12 + 8))(v15, v11);
        return v19;
      }
    }
  }

  else
  {
    sub_1BA3A1FD0(v23, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel, sub_1B9F0D950);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BA3A19B8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + 136) == 1)
  {
    v4 = result;
    v5 = swift_allocObject();
    result = sub_1B9FE92F8(v2, v5 + 16);
    v6 = &off_1F381AEC8;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v4;
  a2[4] = v6;
  *a2 = v5;
  return result;
}

uint64_t sub_1BA3A1A38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BA3A0344())
  {
    sub_1BA4A4198();
  }

  else
  {
    sub_1BA4A4418();
  }

  sub_1BA3A04A4();
  sub_1BA4A43B8();
  sub_1BA3A079C();
  sub_1BA4A41A8();
  v7 = MEMORY[0x1E69DC110];
  a1[3] = v2;
  a1[4] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v3 + 32))(boxed_opaque_existential_1, v6, v2);
}

void sub_1BA3A1B50(void *a1@<X0>, char *a2@<X8>)
{
  sub_1BA3A1F4C(v2, v20, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  v5 = v21;
  if (!v21)
  {
    v14 = &qword_1EBBF18D8;
    v15 = &qword_1EBBF18E0;
    v16 = &protocol descriptor for RecentSamplesItemModel;
    v17 = v20;
LABEL_10:
    sub_1BA3A1FD0(v17, v14, v15, v16, sub_1B9F0D950);
    goto LABEL_11;
  }

  v6 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v7 = (*(v6 + 48))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v20);
  if (!v7)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  sub_1BA3A1F4C(v2 + 48, &v18, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  if (!v19)
  {

    v14 = &qword_1EBBF18F0;
    v15 = &qword_1EBBEC590;
    v16 = &protocol descriptor for SampleMetadataViewControllerProviding;
    v17 = &v18;
    goto LABEL_10;
  }

  sub_1B9F1134C(&v18, v20);
  v8 = v21;
  v9 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v10 = (*(v9 + 8))(v7, v8, v9);

  __swift_destroy_boxed_opaque_existential_1(v20);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [a1 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 == 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

LABEL_12:
  *a2 = v13;
}

id sub_1BA3A1D40(uint64_t a1)
{
  v2 = WDGetProfileNameForHealthStore();
  if (!v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    goto LABEL_5;
  }

  v3 = v2;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = sub_1BA4A6758();

LABEL_6:
  v8 = [objc_allocWithZone(MEMORY[0x1E69A4350]) initWithSample:a1 usingInsetStyling:1 profileName:v7 delegate:Strong];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1BA3A1E10()
{
  sub_1B9FAB600(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1BA3A1E9C()
{
  result = qword_1EBBF18C0;
  if (!qword_1EBBF18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF18C0);
  }

  return result;
}

void sub_1BA3A1EF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA3A1F4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1BA3A1EF0(0, a3, a4, a5, sub_1B9F0D950);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1BA3A1FD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1BA3A1EF0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA3A202C()
{
  sub_1BA3A1F4C(v0, v14, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  v1 = v15;
  if (!v15)
  {
    v8 = &qword_1EBBF18D8;
    v9 = &qword_1EBBF18E0;
    v10 = &protocol descriptor for RecentSamplesItemModel;
    v11 = v14;
LABEL_7:
    sub_1BA3A1FD0(v11, v8, v9, v10, sub_1B9F0D950);
    return 0;
  }

  v2 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v3 = (*(v2 + 48))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v3)
  {
    sub_1BA3A1F4C(v0 + 48, &v12, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
    if (v13)
    {
      sub_1B9F1134C(&v12, v14);
      v4 = v15;
      v5 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v6 = (*(v5 + 8))(v3, v4, v5);

      __swift_destroy_boxed_opaque_existential_1(v14);
      return v6;
    }

    v8 = &qword_1EBBF18F0;
    v9 = &qword_1EBBEC590;
    v10 = &protocol descriptor for SampleMetadataViewControllerProviding;
    v11 = &v12;
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1BA3A21BC(void *a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_unknownObjectWeakLoadStrong();
  v8 = sub_1BA3A202C();
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_1B9FE92F8(v1, v22);
    v9 = v8;
    [a1 showAdaptively:v9 sender:sub_1BA4A8398()];

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BA4A3DD8();
    sub_1B9FE92F8(v1, v22);
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6F88();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1B9F0B82C(0xD000000000000015, 0x80000001BA4D6970, &v21);
      *(v13 + 12) = 2080;
      sub_1BA3A1F4C(v22, v20, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
      sub_1BA3A1EF0(0, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel, sub_1B9F0D950);
      v15 = sub_1BA4A6808();
      v17 = v16;
      sub_1B9FE93A8(v22);
      v18 = sub_1B9F0B82C(v15, v17, &v21);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1B9F07000, v11, v12, "%s unable to make metadata view controller for %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    else
    {

      sub_1B9FE93A8(v22);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1BA3A24A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA3A24EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 176) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall UITextField.setInputAccessoryViewToToolbar(items:)(Swift::OpaquePointer items)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD180]) init];
  [v2 setBarStyle_];
  sub_1BA1E8C50();
  v3 = sub_1BA4A6AE8();
  [v2 setItems_];

  v4 = v2;
  [v4 sizeToFit];
  [v1 setInputAccessoryView_];
}

uint64_t AddDataViewControllerProvider.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id sub_1BA3A268C(void *a1)
{
  v3 = sub_1BA4A1728();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v9 = [objc_opt_self() sharedInstanceForHealthStore_];
  sub_1BA4A1718();
  v10 = sub_1BA4A16B8();
  (*(v4 + 8))(v7, v3);
  v11 = [a1 wd:v8 addDataViewControllerWithHealthStore:v9 healthToolBox:v10 initialStartDate:?];

  return v11;
}

uint64_t AddDataViewControllerProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id RoundedImageCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RoundedImageCollectionViewCell.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v17.receiver = v5;
  v17.super_class = type metadata accessor for RoundedImageCollectionViewCell();
  v10 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a2, a3, a4, a5);
  v11 = *MEMORY[0x1E69796E8];
  v12 = v10;
  v13 = [v12 layer];
  [v13 setCornerCurve_];

  v14 = [v12 layer];
  [v14 setCornerRadius_];

  v15 = [v12 layer];
  [v15 setMaskedCorners_];

  [v12 setClipsToBounds_];
  return v12;
}

id RoundedImageCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RoundedImageCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedImageCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSCollectionLayoutGroup __swiftcall CollectionViewLayoutSectionProviding.gridGroup(numberOfItemsInRow:itemHeightDimension:interItemSpacing:)(Swift::Int numberOfItemsInRow, NSCollectionLayoutDimension itemHeightDimension, NSCollectionLayoutSpacing interItemSpacing)
{
  v6 = 1.0 / numberOfItemsInRow;
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension_];
  v9 = objc_opt_self();
  v10 = [v9 sizeWithWidthDimension:v8 heightDimension:itemHeightDimension.super.isa];

  v11 = [objc_opt_self() itemWithLayoutSize_];
  v12 = [v7 fractionalWidthDimension_];
  [(objc_class *)itemHeightDimension.super.isa dimension];
  v13 = [v7 estimatedDimension_];
  v14 = [v9 sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() horizontalGroupWithLayoutSize:v14 repeatingSubitem:v11 count:numberOfItemsInRow];
  [v15 setInterItemSpacing_];

  return v15;
}

id static CollectionViewLayoutSectionProviding.defaultItemHeight.getter()
{
  v0 = [objc_opt_self() uniformAcrossSiblingsWithEstimate_];

  return v0;
}

uint64_t SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a1;
  type metadata accessor for DataSourceWithLayout(0, a4, a5, a4);
  swift_unknownObjectRetain();

  v10 = sub_1BA3A3DD4(v6, v9, a2, a3);
  swift_unknownObjectRelease();
  return v10;
}

{
  v6 = v5;
  v11 = a1;
  type metadata accessor for DataSourceWithLayout(0, a4, a5, a4);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = v6;
  swift_unknownObjectRetain_n();

  v13 = sub_1BA3A3DD4(v6, v11, sub_1BA3A3EA4, v12);
  swift_unknownObjectRelease();
  return v13;
}

uint64_t SnapshotDataSource.withLayoutConfiguration(_:collapseEmptySections:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a2;
  v8 = a1[5];
  v20[4] = a1[4];
  v20[5] = v8;
  v9 = a1[7];
  v20[6] = a1[6];
  v20[7] = v9;
  v10 = a1[1];
  v20[0] = *a1;
  v20[1] = v10;
  v11 = a1[3];
  v20[2] = a1[2];
  v20[3] = v11;
  type metadata accessor for DataSourceWithLayout(0, a3, a4, a4);
  v12 = swift_allocObject();
  v13 = a1[5];
  v12[5] = a1[4];
  v12[6] = v13;
  v14 = a1[7];
  v12[7] = a1[6];
  v12[8] = v14;
  v15 = a1[1];
  v12[1] = *a1;
  v12[2] = v15;
  v16 = a1[3];
  v12[3] = a1[2];
  v12[4] = v16;
  swift_unknownObjectRetain();
  sub_1B9F1D9A4(v20, &v19);
  v17 = sub_1BA3A3DD4(v5, v6, sub_1BA2637B4, v12);
  swift_unknownObjectRelease();
  return v17;
}

uint64_t DataSourceWithLayout.wrappedDataSource.getter()
{
  sub_1BA3A3D14();

  return swift_unknownObjectRetain();
}

uint64_t DataSourceWithLayout.identifier.getter()
{
  v0 = sub_1B9F1E1B4();

  return v0;
}

uint64_t DataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutSectionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = sub_1BA3A3DD4(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t *DataSourceWithLayout.init(_:collapseEmptySections:layoutSectionProvider:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BA3A3D24(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t *DataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutSectionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  swift_allocObject();
  v8 = sub_1BA3A3ED0(a1, v6, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t *DataSourceWithLayout.init(_:collapseEmptySections:layoutSectionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BA3A3ED0(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

id sub_1BA3A3380(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = type metadata accessor for DataSourceWithLayout(0, *(*v4 + 80), *(*v4 + 88), a4);
  v9 = *(SnapshotDataSource.sectionIdentifiers.getter(v8, &protocol witness table for DataSourceWithLayout<A>) + 16);

  v10 = SnapshotDataSource.sectionIdentifiers.getter(v8, &protocol witness table for DataSourceWithLayout<A>);
  if (v5 >= v9)
  {
    v17 = *(v10 + 16);

    sub_1B9FF806C();
    swift_allocError();
    *v18 = v5;
    *(v18 + 8) = v17;
    *(v18 + 16) = 0;
    return swift_willThrow();
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 >= *(v10 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 + 16 * v5;
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);

  v14 = SnapshotDataSource.itemIdentifiers(in:)(v12, v13, v8, &protocol witness table for DataSourceWithLayout<A>);

  v15 = *(v14 + 16);

  if (!v15 && *(v4 + 40) == 1)
  {
    if (qword_1EDC6D2F0 == -1)
    {
LABEL_7:
      v26 = xmmword_1EDC6D338;
      v27 = unk_1EDC6D348;
      v28 = xmmword_1EDC6D358;
      v29 = unk_1EDC6D368;
      v22 = xmmword_1EDC6D2F8;
      v23 = *&qword_1EDC6D308;
      v24 = xmmword_1EDC6D318;
      v25 = unk_1EDC6D328;
      sub_1BA0117AC();
      v21[4] = xmmword_1EDC6D338;
      v21[5] = unk_1EDC6D348;
      v21[6] = xmmword_1EDC6D358;
      v21[7] = unk_1EDC6D368;
      v21[0] = xmmword_1EDC6D2F8;
      v21[1] = *&qword_1EDC6D308;
      v21[2] = xmmword_1EDC6D318;
      v21[3] = unk_1EDC6D328;
      sub_1B9F1D9A4(&v22, &v20);
      return sub_1B9F293A8(v21);
    }

LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v19 = *(v4 + 48);
  *&v22 = v5;
  *(&v22 + 1) = v6;
  *&v23 = v7;
  return v19(&v22);
}

uint64_t sub_1BA3A35AC()
{
  sub_1BA3A3FD4();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v0 = *(&v5 + 1);
    v1 = v6;
    __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
    v2 = (*(v1 + 8))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(&v4);
    return v2;
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_1B9F3BB6C(&v4);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1BA3A3684(uint64_t a1, uint64_t a2)
{
  sub_1BA3A3FD4();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v4 = *(&v8 + 1);
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    (*(v5 + 16))(a1, a2, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    return sub_1B9F3BB6C(&v7);
  }
}

void *DataSourceWithLayout.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DataSourceWithLayout.__deallocating_deinit()
{
  DataSourceWithLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3A37C8()
{
  sub_1BA3A3D14();

  return swift_unknownObjectRetain();
}

uint64_t DataSourceWithLayout<>.supplementaryItem(ofKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v10 = *(*v4 + 80);
  swift_unknownObjectRetain();
  v9(a1, a2, a3, v10, a4);
  return swift_unknownObjectRelease();
}

uint64_t DataSourceWithLayout<>.applyReorder(sectionTransactions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

uint64_t sub_1BA3A3B74(void *a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = a2(*a1, a1[1]);
  if (!result)
  {
    sub_1BA4A7DF8();

    v6 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v6);

    MEMORY[0x1BFAF1350](0xD00000000000002ALL, 0x80000001BA4EB020);
    swift_unknownObjectRetain();
    v7 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v7);

    sub_1B9FF806C();
    swift_allocError();
    *v8 = 91;
    *(v8 + 8) = 0xE100000000000000;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

id sub_1BA3A3C98(uint64_t a1, __int128 *a2)
{
  sub_1BA0117AC();
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  sub_1B9F1D9A4(a2, &v8);
  return sub_1B9F293A8(v9);
}

uint64_t *sub_1BA3A3D24(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v4[2] = a1;
  v9 = *(v8 + 88);
  v10 = *(v9 + 8);
  v11 = *(v8 + 80);
  swift_unknownObjectRetain();
  v4[3] = v10(v11, v9);
  v4[4] = v12;
  *(v4 + 40) = a2;
  v4[6] = a3;
  v4[7] = a4;
  return v4;
}

uint64_t sub_1BA3A3DD4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DataSourceWithLayout(0, *(v4 + 80), *(v4 + 88), a4);
  v9 = swift_allocObject();
  v10 = *v9;
  *(v9 + 16) = a1;
  v11 = *(v10 + 88);
  v12 = *(v11 + 8);
  v13 = *(v10 + 80);
  swift_unknownObjectRetain();
  *(v9 + 24) = v12(v13, v11);
  *(v9 + 32) = v14;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *(v9 + 56) = a4;
  return v9;
}

uint64_t *sub_1BA3A3ED0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *v4;
  v4[2] = a1;
  *(v4 + 40) = a2;
  v9 = v8;
  v10 = *(v7 + 88);
  v11 = *(v10 + 8);
  v12 = *(v7 + 80);
  swift_unknownObjectRetain();
  v4[3] = v11(v12, v10);
  v4[4] = v13;
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v10;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = v9;
  v4[6] = sub_1BA3A4180;
  v4[7] = v14;
  return v4;
}

unint64_t sub_1BA3A3FD4()
{
  result = qword_1EDC63A40;
  if (!qword_1EDC63A40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC63A40);
  }

  return result;
}

uint64_t dispatch thunk of DataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutSectionProvider:)()
{
  return (*(v0 + 128))();
}

{
  return (*(v0 + 136))();
}

uint64_t static UICollectionLayoutListConfiguration.healthGroupedList()()
{
  v0 = sub_1BA4A47D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A47B8();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69DC238], v7);
  sub_1BA4A47E8();
  (*(v1 + 104))(v4, *MEMORY[0x1E69DC280], v0);
  sub_1BA4A4808();
  v10 = [objc_opt_self() clearColor];
  return sub_1BA4A4818();
}

void *static NSCollectionLayoutSection.healthStandardList(configuration:environment:)(uint64_t a1, id a2)
{
  v2 = [a2 traitCollection];
  sub_1BA4A7368();

  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v3 = sub_1BA4A7638();
  [v3 setContentInsetsReference_];
  sub_1BA4A65A8();
  [v3 setInterGroupSpacing_];
  return v3;
}

id static NSCollectionLayoutBoundarySupplementaryItem.healthFullWidthHeader(height:alignment:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() fractionalWidthDimension_];
  v5 = [objc_opt_self() sizeWithWidthDimension:v4 heightDimension:a1];

  v6 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v5 elementKind:*MEMORY[0x1E69DDC08] alignment:a2];
  return v6;
}

id static NSCollectionLayoutItem.healthFullWidth(heightDimension:)(uint64_t a1)
{
  v2 = [objc_opt_self() fractionalWidthDimension_];
  v3 = [objc_opt_self() sizeWithWidthDimension:v2 heightDimension:a1];

  v4 = [objc_opt_self() itemWithLayoutSize_];
  return v4;
}

id static NSCollectionLayoutGroup.healthOneUp(item:)(void *a1)
{
  v2 = [a1 layoutSize];
  v3 = [objc_opt_self() horizontalGroupWithLayoutSize:v2 repeatingSubitem:a1 count:1];

  return v3;
}

id static NSCollectionLayoutSection.healthStandard(group:widthDesignation:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sectionWithGroup_];
  sub_1BA4A75C8();
  [v2 setContentInsets_];
  sub_1BA4A65A8();
  [v2 setInterGroupSpacing_];
  [v2 setContentInsetsReference_];
  [v2 setSupplementaryContentInsetsReference_];
  return v2;
}

id static NSCollectionLayoutSection.healthStandardOneUp(heightDimension:widthDesignation:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() fractionalWidthDimension_];
  v4 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:a1];

  v5 = [objc_opt_self() itemWithLayoutSize_];
  v6 = [v5 layoutSize];
  v7 = [objc_opt_self() horizontalGroupWithLayoutSize:v6 repeatingSubitem:v5 count:1];

  v8 = [objc_opt_self() sectionWithGroup_];
  sub_1BA4A75C8();
  [v8 setContentInsets_];
  sub_1BA4A65A8();
  [v8 setInterGroupSpacing_];
  [v8 setContentInsetsReference_];
  [v8 setSupplementaryContentInsetsReference_];

  return v8;
}

void *static NSCollectionLayoutSection.healthStandardGroupedList(environment:)(void *a1)
{
  v2 = sub_1BA4A47D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A47B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A4848();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69DC238], v7, v15);
  sub_1BA4A47E8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69DC280], v2);
  sub_1BA4A4808();
  v18 = [objc_opt_self() clearColor];
  sub_1BA4A4818();
  v19 = [a1 traitCollection];
  sub_1BA4A7368();

  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v20 = sub_1BA4A7638();
  [v20 setContentInsetsReference_];
  sub_1BA4A65A8();
  [v20 setInterGroupSpacing_];
  (*(v13 + 8))(v17, v12);
  return v20;
}

id AllDataDataSourceConstructor.makeFetchedResultsController(with:sectionIdentifier:segment:sourceProfiles:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a1;
  v11 = sub_1BA4A0FA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0CC30(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v26 - v18;
  sub_1BA4A0F18();
  sub_1BA4A3C18();
  (*(v12 + 8))(v15, v11);
  v20 = (*(a6 + 32))(a2, v19, a3 & 1, 0, a4, a5, a6);
  sub_1BA4A27B8();
  v21 = MEMORY[0x1BFAED110]();
  [v21 setPredicate_];
  (*(a6 + 8))(a5, a6);
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v22 = sub_1BA4A6AE8();

  [v21 setSortDescriptors_];

  v23 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v24 = [v23 initWithFetchRequest:v21 managedObjectContext:v27 sectionNameKeyPath:0 cacheName:0];

  sub_1B9F1C1B0(v19);
  return v24;
}

id sub_1BA3A4DC8(uint64_t a1, void *a2, char a3, char a4, uint64_t a5)
{
  sub_1B9F0CC30(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v32 - v11;
  v13 = 0;
  if (a4)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    sub_1B9F0CC30(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5460;
    v15 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1B9F1BE20();
    *(v14 + 64) = v16;
    *(v14 + 32) = 0xD000000000000016;
    *(v14 + 40) = 0x80000001BA4F41D0;
    v17 = sub_1BA4A2738();
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 72) = v17;
    *(v14 + 80) = v18;
    v13 = sub_1BA4A6EE8();
  }

  sub_1BA4A27B8();
  v19 = sub_1BA4A0FA8();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = MEMORY[0x1BFAED020](a1, 0, v12, a5);
  sub_1B9F1C1B0(v12);
  v21 = v20;
  v22 = sub_1BA4A2608();
  v34[4] = v20;
  v34[5] = a2;
  v34[6] = v13;
  v34[7] = v22;
  v33 = MEMORY[0x1E69E7CC0];
  v23 = v13;
  v24 = v22;
  result = a2;
  v26 = 0;
LABEL_4:
  if (v26 <= 4)
  {
    v27 = 4;
  }

  else
  {
    v27 = v26;
  }

  while (1)
  {
    if (v26 == 4)
    {
      sub_1B9F8AE1C(0);
      swift_arrayDestroy();
      sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
      v30 = sub_1BA4A6AE8();

      v31 = [objc_opt_self() andPredicateWithSubpredicates_];

      return v31;
    }

    if (v27 == v26)
    {
      break;
    }

    v28 = v34[v26++ + 4];
    if (v28)
    {
      v29 = v28;
      MEMORY[0x1BFAF1510]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      result = sub_1BA4A6BB8();
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

id sub_1BA3A5128(char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a5;
  v67 = a6;
  v65 = a4;
  v64 = a3;
  v61 = a2;
  v7 = sub_1BA4A1728();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v57 = &v54 - v12;
  sub_1B9F0CC30(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v54 - v15;
  v68 = sub_1BA4A0FA8();
  v63 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v17);
  v62 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A3BD8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v55 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v54 - v26;
  v28 = *(v20 + 16);
  v56 = a1;
  v28(&v54 - v26, a1, v19, v25);
  v29 = (*(v20 + 88))(v27, v19);
  v30 = *MEMORY[0x1E69A3E30];
  sub_1B9F0CC30(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v31 = sub_1BA4A1C68();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v69 = swift_allocObject();
  v54 = xmmword_1BA4B5480;
  *(v69 + 16) = xmmword_1BA4B5480;
  v34 = *(v32 + 104);
  if (v29 == v30)
  {
    v34(v69 + v33, *MEMORY[0x1E69A3BB8], v31);
  }

  else
  {
    v34(v69 + v33, *MEMORY[0x1E69A3BB0], v31);
    (*(v20 + 8))(v27, v19);
  }

  sub_1BA1FA3F8(v61, v16);
  v35 = v63;
  if ((*(v63 + 48))(v16, 1, v68) == 1)
  {
    sub_1B9F1C1B0(v16);
    v36 = v55;
    (*(v20 + 104))(v55, *MEMORY[0x1E69A3E48], v19);
    sub_1BA3A5D6C();
    sub_1BA4A6A58();
    sub_1BA4A6A58();
    if (v72 == v70 && v73 == v71)
    {
      (*(v20 + 8))(v36, v19);
    }

    else
    {
      v49 = sub_1BA4A8338();
      (*(v20 + 8))(v36, v19);

      if ((v49 & 1) == 0)
      {
        v48 = 0;
        goto LABEL_12;
      }
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    sub_1B9F0CC30(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v50 = swift_allocObject();
    *(v50 + 16) = v54;
    *(v50 + 56) = MEMORY[0x1E69E6158];
    *(v50 + 64) = sub_1B9F1BE20();
    *(v50 + 32) = 0x746E6176656C6572;
    *(v50 + 40) = 0xEF65746144646E45;
    v48 = sub_1BA4A6EE8();
  }

  else
  {
    (*(v35 + 32))();
    v61 = sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    v56 = "tAllDataDataSource";
    sub_1B9F0CC30(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BA4C9870;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    v38 = sub_1B9F1BE20();
    *(v37 + 64) = v38;
    *(v37 + 32) = 0x746E6176656C6572;
    *(v37 + 40) = 0xEF65746144646E45;
    v39 = v57;
    sub_1BA4A0F88();
    v40 = sub_1BA4A16B8();
    v41 = v60;
    v42 = *(v59 + 8);
    v42(v39, v60);
    v43 = sub_1B9F0ADF8(0, &qword_1EDC6B4C0, 0x1E695DF00);
    *(v37 + 96) = v43;
    v44 = sub_1B9F6A24C();
    *(v37 + 72) = v40;
    *(v37 + 136) = MEMORY[0x1E69E6158];
    *(v37 + 144) = v38;
    *(v37 + 104) = v44;
    *(v37 + 112) = 0x746E6176656C6572;
    *(v37 + 120) = 0xEF65746144646E45;
    v45 = v58;
    v46 = v62;
    sub_1BA4A0F58();
    v47 = sub_1BA4A16B8();
    v42(v45, v41);
    *(v37 + 176) = v43;
    *(v37 + 184) = v44;
    *(v37 + 152) = v47;
    v48 = sub_1BA4A6EE8();
    (*(v35 + 8))(v46, v68);
  }

  v51 = v48;
LABEL_12:
  v52 = sub_1BA3A4DC8(v69, v48, v64 & 1, 0, v65);

  return v52;
}

uint64_t _s18HealthExperienceUI07AllDataE17SourceConstructorPAAE15sortDescriptorsSaySo16NSSortDescriptorCGvg_0()
{
  sub_1B9F109F8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B7510;
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = sub_1BA4A6758();
  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = sub_1BA4A6758();
  v6 = [v4 initWithKey:v5 ascending:1 selector:sel_localizedStandardCompare_];

  *(v0 + 40) = v6;
  return v0;
}

id _s18HealthExperienceUI07AllDataE17SourceConstructorPAAE016makePredicateForA14RecordsSegment14sourceProfilesSo11NSPredicateCSay0A8Platform0F7ProfileOGSg_tF_0(uint64_t a1)
{
  sub_1B9F0CC30(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v2 = sub_1BA4A1C68();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  (*(v3 + 104))(v5 + v4, *MEMORY[0x1E69A3BB0], v2);
  v6 = sub_1BA3A4DC8(v5, 0, 1, 0, a1);

  return v6;
}

id _s18HealthExperienceUI07AllDataE17SourceConstructorPAAE04makeA31RecordsFetchedResultsController4with14sourceProfilesSo09NSFetchedkL0Cy0A8Platform8FeedItemCGSo22NSManagedObjectContextC_SayAI0F7ProfileOGSgtF_0(uint64_t a1, uint64_t a2)
{
  sub_1BA4A27B8();
  v4 = MEMORY[0x1BFAED110]();
  v5 = _s18HealthExperienceUI07AllDataE17SourceConstructorPAAE016makePredicateForA14RecordsSegment14sourceProfilesSo11NSPredicateCSay0A8Platform0F7ProfileOGSg_tF_0(a2);
  [v4 setPredicate_];

  sub_1B9F109F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5470;
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithKey:v8 ascending:1 selector:sel_localizedStandardCompare_];

  *(v6 + 32) = v9;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v10 = sub_1BA4A6AE8();

  [v4 setSortDescriptors_];

  v11 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v4 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  return v11;
}

unint64_t sub_1BA3A5D6C()
{
  result = qword_1EBBEFB08;
  if (!qword_1EBBEFB08)
  {
    sub_1BA4A3BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFB08);
  }

  return result;
}

void sub_1BA3A5DC4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BA442EBC(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1BA3A5FDC(v4);
  *a1 = v2;
}

uint64_t sub_1BA3A5E3C(uint64_t a1, void *a2)
{
  sub_1BA3A7E84(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA3A7CFC(a1 + *(v8 + 40), v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v9 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1BA3A7D7C(v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  v10 = *(v7 + 7);
  v11 = v10;
  sub_1BA3A7DEC(v7, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v10)
  {
    goto LABEL_5;
  }

  sub_1B9FD8844();
  v12 = a2;
  v13 = sub_1BA4A7798();

  return v13 & 1;
}

void sub_1BA3A5FDC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BA4A82B8();
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
        sub_1BA025410(0);
        v5 = sub_1BA4A6B98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1BA3A6278(v7, v8, a1, v4);
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
    sub_1BA3A60D8(0, v2, 1, a1);
  }
}

void sub_1BA3A60D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = a1 - a3;
LABEL_5:
    v18 = a3;
    v6 = *(v19 + 16 * a3);
    v16 = v5;
    v17 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;

      v9 = v7;

      v10 = [v8 displayName];
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      v11 = [v9 displayName];
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1B9F252FC();
      v12 = sub_1BA4A7B78();

      if (v12 != -1)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 16;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v13 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v13;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BA3A6278(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v9;
      v107 = v9;
      if (v9 + 1 >= v8)
      {
        v20 = v9 + 1;
      }

      else
      {
        v113 = v8;
        v102 = v10;
        v104 = v5;
        v12 = (*v6 + 16 * (v9 + 1));
        v108 = 16 * v9;
        v13 = (*v6 + 16 * v9);
        v14 = *v13;
        v15 = *v12;

        v9 = v14;

        v16 = [v15 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        v17 = [v9 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        sub_1B9F252FC();
        v111 = sub_1BA4A7B78();

        v18 = v11 + 2;
        v19 = v13 + 3;
        while (1)
        {
          v20 = v113;
          if (v113 == v18)
          {
            break;
          }

          v9 = *v19;
          v21 = v19 + 2;
          v22 = *(v19 - 1);
          v23 = v19[1];

          v24 = v22;

          v25 = [v23 displayName];
          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

          v26 = [v24 displayName];
          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

          v27 = sub_1BA4A7B78();

          ++v18;
          v19 = v21;
          if ((v111 == -1) == (v27 != -1))
          {
            v20 = v18 - 1;
            break;
          }
        }

        v10 = v102;
        v5 = v104;
        v6 = a3;
        v7 = a1;
        v11 = v107;
        if (v111 == -1)
        {
          if (v20 < v107)
          {
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
            return;
          }

          if (v107 < v20)
          {
            v28 = 16 * v20 - 16;
            v29 = v107;
            v30 = v20;
            v31 = v108;
            do
            {
              if (v29 != --v30)
              {
                v33 = *a3;
                if (!*a3)
                {
                  goto LABEL_128;
                }

                v32 = *(v33 + v31);
                *(v33 + v31) = *(v33 + v28);
                *(v33 + v28) = v32;
              }

              ++v29;
              v28 -= 16;
              v31 += 16;
            }

            while (v29 < v30);
            v11 = v107;
          }
        }
      }

      v34 = v6[1];
      if (v20 >= v34)
      {
        break;
      }

      if (__OFSUB__(v20, v11))
      {
        goto LABEL_120;
      }

      if (v20 - v11 >= a4)
      {
        v9 = v20;
        if (v20 < v107)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v11 = v107;
        if (__OFADD__(v107, a4))
        {
          goto LABEL_121;
        }

        if (v107 + a4 >= v34)
        {
          v9 = v6[1];
        }

        else
        {
          v9 = v107 + a4;
        }

        if (v9 < v107)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v20 == v9)
        {
          break;
        }

        v103 = v10;
        v105 = v5;
        v115 = *v6;
        v35 = *v6 + 16 * v20 - 16;
        v36 = v107 - v20;
        v109 = v9;
        do
        {
          v112 = v35;
          v114 = v20;
          v37 = *(v115 + 16 * v20);
          v110 = v36;
          do
          {
            v38 = *v35;
            v39 = v37;

            v40 = v38;

            v41 = [v39 displayName];
            _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

            v42 = [v40 displayName];
            _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

            sub_1B9F252FC();
            v43 = sub_1BA4A7B78();

            if (v43 != -1)
            {
              break;
            }

            if (!v115)
            {
              goto LABEL_125;
            }

            v44 = *v35;
            v37 = *(v35 + 16);
            *v35 = v37;
            *(v35 + 16) = v44;
            v35 -= 16;
          }

          while (!__CFADD__(v36++, 1));
          v20 = v114 + 1;
          v35 = v112 + 16;
          v9 = v109;
          v36 = v110 - 1;
        }

        while ((v114 + 1) != v109);
        v10 = v103;
        v5 = v105;
        v6 = a3;
        v7 = a1;
        if (v109 < v107)
        {
          goto LABEL_119;
        }
      }

LABEL_41:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1BA27F470(0, *(v10 + 16) + 1, 1, v10);
      }

      v47 = *(v10 + 16);
      v46 = *(v10 + 24);
      v48 = v47 + 1;
      v49 = v107;
      if (v47 >= v46 >> 1)
      {
        v94 = sub_1BA27F470((v46 > 1), v47 + 1, 1, v10);
        v49 = v107;
        v10 = v94;
      }

      *(v10 + 16) = v48;
      v50 = v10 + 16 * v47;
      *(v50 + 32) = v49;
      *(v50 + 40) = v9;
      v51 = *v7;
      if (!*v7)
      {
        goto LABEL_129;
      }

      if (v47)
      {
        while (1)
        {
          v52 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v53 = *(v10 + 32);
            v54 = *(v10 + 40);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_60:
            if (v56)
            {
              goto LABEL_108;
            }

            v69 = (v10 + 16 * v48);
            v71 = *v69;
            v70 = v69[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_111;
            }

            v75 = (v10 + 32 + 16 * v52);
            v77 = *v75;
            v76 = v75[1];
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_114;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_115;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v48 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v79 = (v10 + 16 * v48);
          v81 = *v79;
          v80 = v79[1];
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_74:
          if (v74)
          {
            goto LABEL_110;
          }

          v82 = v10 + 16 * v52;
          v84 = *(v82 + 32);
          v83 = *(v82 + 40);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_113;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_81:
          v90 = v52 - 1;
          if (v52 - 1 >= v48)
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
            goto LABEL_122;
          }

          if (!*v6)
          {
            goto LABEL_126;
          }

          v91 = *(v10 + 32 + 16 * v90);
          v92 = *(v10 + 32 + 16 * v52 + 8);
          sub_1BA3A6AF8((*v6 + 16 * v91), (*v6 + 16 * *(v10 + 32 + 16 * v52)), (*v6 + 16 * v92), v51);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v92 < v91)
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1BA442D80(v10);
          }

          if (v90 >= *(v10 + 16))
          {
            goto LABEL_105;
          }

          v93 = v10 + 16 * v90;
          *(v93 + 32) = v91;
          *(v93 + 40) = v92;
          sub_1BA442CF4(v52);
          v48 = *(v10 + 16);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = v10 + 32 + 16 * v48;
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_106;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_107;
        }

        v64 = (v10 + 16 * v48);
        v66 = *v64;
        v65 = v64[1];
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_109;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_112;
        }

        if (v68 >= v60)
        {
          v86 = (v10 + 32 + 16 * v52);
          v88 = *v86;
          v87 = v86[1];
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_116;
          }

          if (v55 < v89)
          {
            v52 = v48 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v8 = v6[1];
      v7 = a1;
      if (v9 >= v8)
      {
        goto LABEL_92;
      }
    }

    v9 = v20;
    if (v20 < v11)
    {
      goto LABEL_119;
    }

    goto LABEL_41;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_130;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_123:
    v10 = sub_1BA442D80(v10);
  }

  v95 = *(v10 + 16);
  if (v95 >= 2)
  {
    while (*v6)
    {
      v96 = *(v10 + 16 * v95);
      v97 = v10;
      v98 = *(v10 + 16 * (v95 - 1) + 32);
      v10 = *(v10 + 16 * (v95 - 1) + 40);
      sub_1BA3A6AF8((*v6 + 16 * v96), (*v6 + 16 * v98), (*v6 + 16 * v10), v9);
      if (v5)
      {
        goto LABEL_102;
      }

      if (v10 < v96)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_1BA442D80(v97);
      }

      if (v95 - 2 >= *(v97 + 2))
      {
        goto LABEL_118;
      }

      v99 = &v97[16 * v95];
      *v99 = v96;
      *(v99 + 1) = v10;
      sub_1BA442CF4(v95 - 1);
      v10 = v97;
      v95 = *(v97 + 2);
      if (v95 <= 1)
      {
        goto LABEL_102;
      }
    }

    goto LABEL_127;
  }

LABEL_102:
}

uint64_t sub_1BA3A6AF8(char *__src, id *__dst, char *a3, void **a4)
{
  v4 = a4;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v12] <= a4)
    {
      v22 = a3;
      memmove(a4, __dst, 16 * v12);
      a3 = v22;
    }

    v40 = &v4[2 * v12];
    if (v10 >= 16 && v5 > v6)
    {
      v35 = v6;
LABEL_26:
      v34 = v5 - 2;
      v23 = a3 - 16;
      v24 = v40;
      v39 = v5;
      do
      {
        v37 = v23;
        v25 = v23 + 16;
        v26 = *(v24 - 2);
        v24 -= 2;
        v27 = *(v5 - 2);
        v28 = v26;

        v29 = v27;

        v30 = [v28 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        v31 = [v29 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        sub_1B9F252FC();
        v32 = sub_1BA4A7B78();

        if (v32 == -1)
        {
          a3 = v37;
          if (v25 != v39)
          {
            *v37 = *v34;
          }

          if (v40 <= v4 || (v5 = v34, v34 <= v35))
          {
            v5 = v34;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        if (v25 != v40)
        {
          *v37 = *v24;
        }

        v23 = v37 - 16;
        v40 = v24;
        v5 = v39;
      }

      while (v24 > v4);
      v40 = v24;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v9] <= a4)
    {
      v13 = a3;
      memmove(a4, __src, 16 * v9);
      a3 = v13;
    }

    v40 = &v4[2 * v9];
    if (v7 >= 16 && v5 < a3)
    {
      v36 = a3;
      while (1)
      {
        v38 = v5;
        v14 = *v4;
        v15 = *v5;

        v16 = v14;

        v17 = [v15 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        v18 = [v16 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v4;

        sub_1B9F252FC();
        v20 = sub_1BA4A7B78();

        if (v20 != -1)
        {
          break;
        }

        v21 = v38;
        v5 = v38 + 2;
        if (v6 != v38)
        {
          goto LABEL_14;
        }

LABEL_15:
        v6 += 16;
        if (v4 >= v40 || v5 >= v36)
        {
          goto LABEL_36;
        }
      }

      v21 = v4;
      v4 += 2;
      v5 = v38;
      if (v6 == v19)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v6 = *v21;
      goto LABEL_15;
    }

LABEL_36:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v4 || v5 >= (v4 + ((v40 - v4 + (v40 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v5, v4, 16 * ((v40 - v4) / 16));
  }

  return 1;
}

void _s18HealthExperienceUI031SummarySharingSelectedDataTypesG6SourceC31withCategorySectionsIfNecessary5items5storeSayACGSayAA0de10SelectableG8TypeItemVG_0A8Platform0aB5Store_ptFZ_0(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1BA3A7E84(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v86 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v87 = &v85 - v9;
  sub_1BA3A7E84(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, v3);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v85 - v12;
  v14 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v23 = &v85 - v22;
  v24 = *(a1 + 16);
  v91 = v21;
  v92 = v20;
  if (v24)
  {
    v25 = *(v20 + 40);
    v90 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v26 = a1 + v90;
    v27 = MEMORY[0x1E69E7CC8];
    v28 = *(v21 + 72);
    v89 = v25;
    v93 = v28;
    while (1)
    {
      sub_1BA025290(v26, v23);
      sub_1BA3A7CFC(&v23[v25], v13, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v29 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      if ((*(*(v29 - 8) + 48))(v13, 1, v29) == 1)
      {
        sub_1BA3A7D7C(v13, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      }

      else
      {
        v30 = *(v13 + 7);
        v94 = v30;
        sub_1BA3A7DEC(v13, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v30)
        {
          if (v27[2] && (v31 = sub_1B9FDA96C(v94), (v32 & 1) != 0))
          {
            v33 = *(v27[7] + 8 * v31);
          }

          else
          {
            v33 = MEMORY[0x1E69E7CC0];
          }

          sub_1BA025290(v23, v17);
          v34 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1BA27F5C8(0, v33[2] + 1, 1, v33);
          }

          v36 = v33[2];
          v35 = v33[3];
          if (v36 >= v35 >> 1)
          {
            v33 = sub_1BA27F5C8((v35 > 1), v36 + 1, 1, v33);
          }

          v33[2] = v36 + 1;
          v37 = v17;
          sub_1BA025350(v17, v33 + v90 + v36 * v93);
          v38 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95 = v34;
          v41 = sub_1B9FDA96C(v94);
          v42 = *(v34 + 16);
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_59;
          }

          v45 = v40;
          if (*(v38 + 24) >= v44)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v27 = v95;
              if ((v40 & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            else
            {
              sub_1BA0F1E00();
              v27 = v95;
              if ((v45 & 1) == 0)
              {
                goto LABEL_19;
              }
            }
          }

          else
          {
            sub_1BA0F3F54(v44, isUniquelyReferenced_nonNull_native);
            sub_1B9FD8844();
            v46 = sub_1B9FDA96C(v94);
            if ((v45 & 1) != (v47 & 1))
            {
              sub_1BA4A83B8();
              __break(1u);

              __break(1u);
              return;
            }

            v41 = v46;
            v27 = v95;
            if ((v45 & 1) == 0)
            {
LABEL_19:
              v27[(v41 >> 6) + 8] |= 1 << v41;
              *(v27[6] + 8 * v41) = v94;
              *(v27[7] + 8 * v41) = v33;
              v48 = v27[2];
              v49 = __OFADD__(v48, 1);
              v50 = v48 + 1;
              if (v49)
              {
                goto LABEL_62;
              }

              v27[2] = v50;
              goto LABEL_24;
            }
          }

          *(v27[7] + 8 * v41) = v33;

LABEL_24:
          v17 = v37;
          v25 = v89;
          v28 = v93;
        }
      }

      sub_1BA3A7DEC(v23, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v26 += v28;
      if (!--v24)
      {
        goto LABEL_28;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC8];
LABEL_28:
  v51 = v27;
  v52 = v27[2];
  v94 = v51;
  if (v52)
  {
    v53 = sub_1BA021A00(v52, 0);
    v54 = sub_1BA023510(&v95, v53 + 4, v52, v51);
    v55 = v95;

    sub_1B9F52E48(v55);
    if (v54 == v52)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v53 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v95 = v53;
  sub_1BA3A5DC4(&v95);
  v58 = v95;
  v24 = v95[2];
  v59 = v24 + 1;
  v60 = 5;
  while (--v59)
  {
    v61 = v95[v60];
    v60 += 2;
    if (*(v61 + 16) >= 5uLL)
    {
      MEMORY[0x1EEE9AC00](v56, v57);
      *(&v85 - 2) = v88;
      sub_1BA24A8A4(sub_1BA3A7E4C, (&v85 - 4), v58);

      return;
    }
  }

  sub_1B9F109F8();
  v13 = swift_allocObject();
  *(v13 + 1) = xmmword_1BA4B5470;
  if (!v24)
  {
LABEL_54:

    v73 = type metadata accessor for SummarySharingSelectionFlow(0);
    v24 = v87;
    (*(*(v73 - 8) + 56))(v87, 1, 1, v73);
    sub_1B9F0A534(v88, &v95);
    if (qword_1EBBE83D8 != -1)
    {
      goto LABEL_63;
    }

    goto LABEL_55;
  }

  v62 = 0;
  v63 = v58 + 40;
  v64 = MEMORY[0x1E69E7CC0];
  while (v62 < *(v58 + 16))
  {
    v65 = *v63;
    v66 = *(*v63 + 16);
    v67 = v64[2];
    v68 = v67 + v66;
    if (__OFADD__(v67, v66))
    {
      goto LABEL_57;
    }

    v69 = swift_isUniquelyReferenced_nonNull_native();
    if (v69 && v68 <= v64[3] >> 1)
    {
      if (*(v65 + 16))
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v67 <= v68)
      {
        v70 = v67 + v66;
      }

      else
      {
        v70 = v67;
      }

      v64 = sub_1BA27F5C8(v69, v70, 1, v64);
      if (*(v65 + 16))
      {
LABEL_50:
        if ((v64[3] >> 1) - v64[2] < v66)
        {
          goto LABEL_60;
        }

        swift_arrayInitWithCopy();

        if (v66)
        {
          v71 = v64[2];
          v49 = __OFADD__(v71, v66);
          v72 = v71 + v66;
          if (v49)
          {
            goto LABEL_61;
          }

          v64[2] = v72;
        }

        goto LABEL_39;
      }
    }

    if (v66)
    {
      goto LABEL_58;
    }

LABEL_39:
    ++v62;
    v63 += 16;
    if (v24 == v62)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  swift_once();
LABEL_55:
  v75 = qword_1EBBEC9F8;
  v74 = unk_1EBBECA00;
  v76 = v86;
  sub_1BA3A7CFC(v24, v86, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  sub_1BA3A7E84(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v77 = sub_1BA4A1C68();
  v78 = *(v77 - 8);
  v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1BA4B5480;
  (*(v78 + 104))(v80 + v79, *MEMORY[0x1E69A3B68], v77);
  type metadata accessor for SummarySharingSelectedDataTypesDataSource(0);
  v81 = swift_allocObject();
  *(v81 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = 1;
  *(v81 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(&v95, v81 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);
  *(v81 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isEditable) = 0;
  v82 = (v81 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  *v82 = v75;
  v82[1] = v74;
  sub_1BA3A7CFC(v76, v81 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  *(v81 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds) = v80;
  *(v81 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) = 0;
  v83 = (v81 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter);
  *v83 = 0;
  v83[1] = 0;

  v84 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA146B8C, 0);
  sub_1BA3A7D7C(v76, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(&v95);
  sub_1BA3A7D7C(v24, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  *(v13 + 4) = v84;
}

uint64_t sub_1BA3A7984(void *a1, uint64_t a2)
{
  sub_1BA3A7E84(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25[-1] - v6;
  sub_1B9F0A534(a2, v25);
  v8 = [a1 displayName];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  v12 = type metadata accessor for SummarySharingSelectionFlow(0);
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  sub_1BA3A7E84(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v13 = sub_1BA4A1C68();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5480;
  (*(v14 + 104))(v16 + v15, *MEMORY[0x1E69A3B68], v13);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  type metadata accessor for SummarySharingSelectedDataTypesDataSource(0);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = 1;
  *(v18 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v25, v18 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);
  *(v18 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isEditable) = 0;
  v19 = (v18 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  *v19 = v9;
  v19[1] = v11;
  sub_1BA3A7CFC(v7, v18 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  *(v18 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds) = v16;
  *(v18 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) = 0;
  v20 = (v18 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter);
  *v20 = sub_1BA3A7CF4;
  v20[1] = v17;
  v21 = a1;
  v22 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA146B8C, 0);
  sub_1BA3A7D7C(v7, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v22;
}

uint64_t sub_1BA3A7CFC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA3A7E84(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA3A7D7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA3A7E84(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA3A7DEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA3A7E4C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA3A7984(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

void sub_1BA3A7E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1BA3A7EE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12[0] = *a1;
  v12[1] = v3;
  v13 = *(a1 + 16);
  v14 = v4;
  v15 = v5;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1BA4A4F28();

  v6 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  sub_1B9F0A534(a2 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager, v10);
  v7 = objc_allocWithZone(type metadata accessor for CategoryViewController());
  v8 = sub_1BA2F93F4(v12, v6, &v11, v10);

  return v8;
}

uint64_t HKTCategoryViewFactory.createViewController(hkTypeGroup:pluginName:context:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v8 = sub_1BA4A3EA8();
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v34 = a1[3];
  v35 = *(a1 + 2);
  sub_1BA44E67C(a2, a3, v42);
  if (!v4)
  {
    v30 = v11;
    v31 = v8;
    v32 = a3;
    v15 = v43;
    v16 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v37 = v13;
    v38 = v12;
    v39 = v14;
    v40 = v34;
    v41 = v35;
    v17 = (*(v16 + 8))(&v37, v36, v15, v16);
    if (v17)
    {
      v8 = v17;
      __swift_destroy_boxed_opaque_existential_1(v42);
    }

    else
    {
      v19 = v30;
      sub_1BA4A3E08();
      v20 = v32;

      v21 = sub_1BA4A3E88();
      v22 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v45 = v24;
        *v23 = 136315394;
        *(v23 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA5048D0, &v45);
        *(v23 + 12) = 2082;
        v37 = a2;
        v38 = v20;
        LOBYTE(v39) = 0;

        v25 = sub_1BA4A6808();
        v27 = sub_1B9F0B82C(v25, v26, &v45);
        v20 = v32;

        *(v23 + 14) = v27;
        _os_log_impl(&dword_1B9F07000, v21, v22, "[%s]: %{public}s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v24, -1, -1);
        MEMORY[0x1BFAF43A0](v23, -1, -1);
      }

      (*(v33 + 8))(v19, v31);
      sub_1B9FCB51C();
      v8 = swift_allocError();
      *v28 = a2;
      *(v28 + 8) = v20;
      *(v28 + 16) = 0;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v42);
    }
  }

  return v8;
}

void sub_1BA3A833C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, uint64_t), void (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v12[0] = v10 + 32;
  v12[1] = v11;
  sub_1BA3AEDB8(v12, a3, a4, a5);
  *a1 = v10;
}

id InternalSettingsFeatureStateViewController.__allocating_init(featureIdentifier:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1BA3B0820(a1);

  return v4;
}

id InternalSettingsFeatureStateViewController.init(featureIdentifier:)(void *a1)
{
  v2 = sub_1BA3B0820(a1);

  return v2;
}

Swift::Void __swiftcall InternalSettingsFeatureStateViewController.viewDidLoad()()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_viewDidLoad);
  sub_1BA4A7DF8();
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI42InternalSettingsFeatureStateViewController_featureIdentifier];
  v3 = NSStringFromHKFeatureIdentifier();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0x6572757461654620, 0xEE00657461745320);
  v4 = sub_1BA4A6758();

  [v0 setTitle_];

  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI42InternalSettingsFeatureStateViewController_host];
  [v1 addChildViewController_];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v5 view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v7 addSubview_];

  v10 = [v5 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1BA3B3030(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5890;
  v13 = [v5 view];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v1 view];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v12 + 32) = v19;
  v20 = [v5 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v12 + 40) = v26;
  v27 = [v5 view];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v1 view];
  if (!v30)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v12 + 48) = v33;
  v34 = [v5 view];
  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = v34;
  v36 = [v34 trailingAnchor];

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    v39 = objc_opt_self();
    v40 = [v38 trailingAnchor];

    v41 = [v36 constraintEqualToAnchor_];
    *(v12 + 56) = v41;
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v42 = sub_1BA4A6AE8();

    [v39 activateConstraints_];

    [v5 didMoveToParentViewController_];
    return;
  }

LABEL_23:
  __break(1u);
}

id InternalSettingsFeatureStateViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id InternalSettingsFeatureStateViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InternalSettingsFeatureStateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v33 = sub_1BA4A5938();
  v2 = *(v33 - 8);
  v4 = MEMORY[0x1EEE9AC00](v33, v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B0B28(0, v4);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B1DBC(0, &qword_1EBBF1978, sub_1BA3B0B28, &qword_1EBBF1980, sub_1BA3B0B28);
  v14 = *(v13 - 8);
  v30 = v13;
  v31 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v30 - v16;
  v18 = v1[1];
  v34 = *v1;
  v35 = v18;
  sub_1BA3B0BA4();
  sub_1BA4A5D88();
  sub_1BA4A5928();
  v19 = sub_1BA3B0C00(&qword_1EBBF1980, sub_1BA3B0B28, MEMORY[0x1E697CD20]);
  v20 = v33;
  sub_1BA4A6018();
  (*(v2 + 8))(v6, v20);
  (*(v9 + 8))(v12, v8);
  v21 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
  v22 = v18;
  v23 = [v21 featureIdentifier];
  v24 = NSStringFromHKFeatureIdentifier();
  v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v27 = v26;

  v40 = v25;
  v41 = v27;
  v36 = v8;
  v37 = v33;
  v38 = v19;
  v39 = MEMORY[0x1E697C750];
  swift_getOpaqueTypeConformance2();
  sub_1B9F252FC();
  v28 = v30;
  sub_1BA4A5F58();

  return (*(v31 + 8))(v17, v28);
}

__n128 sub_1BA3A8ED4@<Q0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for InternalSettingsFeatureStateModel(0);
  sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D5320);
  v4 = a1;
  v5 = sub_1BA4A5348();
  v7 = v6;
  sub_1BA3B3030(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1BA4A61A8();
  result = v9;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  return result;
}

void InternalSettingsFeatureStateView.init(featureIdentifier:healthStore:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  objc_allocWithZone(type metadata accessor for InternalSettingsFeatureStateModel(0));
  v7 = a1;
  v8 = a2;
  sub_1BA3818AC(v7, v8);
  if (v3)
  {
  }

  else
  {
    sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D5320);
    v9 = sub_1BA4A5348();
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
  }
}

uint64_t sub_1BA3A90B4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v168 = a1;
  sub_1BA3B0CF0(0);
  v166 = *(v3 - 8);
  v167 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v158 = v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B128C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v154 = v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E6981148];
  sub_1BA3B2BE4(0, &qword_1EBBF19C8, sub_1BA3B10C0, MEMORY[0x1E6981148], MEMORY[0x1E6981148]);
  v153 = v10;
  v151 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v150 = v145 - v13;
  sub_1BA3B0FC4(0, v12);
  v157 = v14;
  v156 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v155 = v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v152 = v145 - v20;
  sub_1BA3B0E68(0, v19);
  v148 = v21;
  v147 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21, v22);
  v146 = v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B0DD0(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v149 = v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v159 = v145 - v29;
  sub_1BA3B0E04(0, &qword_1EBBF1A00, sub_1BA3B0CF0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v173 = v145 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v172 = v145 - v35;
  v36 = type metadata accessor for InternalSettingsFeatureState(0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v162 = v145 - v42;
  sub_1BA3B2BE4(0, &qword_1EBBF1A08, sub_1BA3B12C0, v9, v9);
  v165 = v43;
  v164 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v44);
  v171 = v145 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v175 = v145 - v48;
  sub_1BA3B1394(0);
  v170 = v49;
  v163 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v50);
  v169 = v145 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v56 = MEMORY[0x1EEE9AC00](v52, v53).n128_u64[0];
  v174 = v145 - v57;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  LODWORD(v160) = *(v2 + 16);
  if (v160)
  {
    v62 = [*(v2[1] + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
    v63 = NSStringFromHKFeatureIdentifier();
    v64 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v66 = v65;

    v180 = v64;
    v181 = v66;
    sub_1B9F252FC();
    v67 = sub_1BA4A5E18();
    v69 = v68;
    LOBYTE(v63) = v70;
    sub_1BA4A5D58();
    v71 = sub_1BA4A5DE8();
    v161 = v2;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v145[1] = v77;

    sub_1BA102AF4(v67, v69, v63 & 1);

    v58 = sub_1BA4A5DD8();
    v59 = v78;
    LOBYTE(v67) = v79;
    v61 = v80;
    v81 = v72;
    v2 = v161;
    sub_1BA102AF4(v81, v74, v76 & 1);

    v60 = v67 & 1;
  }

  v180 = v58;
  v181 = v59;
  v182 = v60;
  v183 = v61;
  MEMORY[0x1EEE9AC00](v54, v55);
  sub_1BA3B3030(0, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  sub_1BA3B1428();
  sub_1BA3B14BC();
  sub_1BA4A6338();
  sub_1BA4A57F8();
  v180 = sub_1BA4A5DF8();
  v181 = v82;
  LOBYTE(v182) = v83 & 1;
  v183 = v84;
  sub_1BA4A57F8();
  v176 = sub_1BA4A5DF8();
  v177 = v85;
  v178 = v86 & 1;
  v179 = v87;
  MEMORY[0x1EEE9AC00](v176, v85);
  sub_1BA3B12C0(0);
  sub_1BA3B0C00(&qword_1EBBF1A40, sub_1BA3B12C0, MEMORY[0x1E6981F48]);
  sub_1BA4A6348();
  v88 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v162;
  sub_1BA4A4F28();

  v90 = *(v89 + *(v36 + 36));
  v91 = v90;
  sub_1BA3B1520(v89, type metadata accessor for InternalSettingsFeatureState);
  if (v90)
  {
    v92 = [v91 localAttributes];
    v93 = [v92 UDIDeviceIdentifier];

    if (!v93)
    {

      v90 = 0;
      v95 = sub_1BA383854();
      if (!v95)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    v94 = v91;
  }

  v95 = sub_1BA383854();
  if (!v95)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!v95[2])
  {

    v95 = 0;
  }

LABEL_10:
  v161 = v95;
  v162 = v90;
  if (v160)
  {
    v96 = 1;
    v97 = v172;
  }

  else
  {
    v160 = v88;
    if (sub_1BA384224())
    {
      sub_1BA4A57F8();
      v180 = sub_1BA4A5DF8();
      v181 = v98;
      LOBYTE(v182) = v99 & 1;
      v183 = v100;
      MEMORY[0x1EEE9AC00](v180, v98);
      sub_1BA3B0EF4(0, &qword_1EBBF19A8, sub_1BA3B0F70, &type metadata for InternalSettingsFeatureRequirementsByContext);
      sub_1BA3B1D6C(&qword_1EBBF1A60, &qword_1EBBF19A8, sub_1BA3B0F70, &type metadata for InternalSettingsFeatureRequirementsByContext);
      v101 = v146;
      sub_1BA4A6338();
      v102 = v147;
      v103 = v148;
      (v147)[4](v159, v101, v148);
      v104 = 0;
    }

    else
    {
      v104 = 1;
      v103 = v148;
      v102 = v147;
    }

    v105 = v159;
    (v102[7])(v159, v104, 1, v103);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BA4A4F28();

    v147 = *&v39[*(v36 + 40)];
    v106 = v147;
    sub_1BA3B1520(v39, type metadata accessor for InternalSettingsFeatureState);
    v148 = v106;
    sub_1BA4A57F8();
    v180 = sub_1BA4A5DF8();
    v181 = v107;
    LOBYTE(v182) = v108 & 1;
    v183 = v109;
    sub_1BA4A57F8();
    v176 = sub_1BA4A5DF8();
    v177 = v110;
    v178 = v111 & 1;
    v179 = v112;
    MEMORY[0x1EEE9AC00](v176, v110);
    sub_1BA3B10C0(0);
    sub_1BA3B0C00(&qword_1EBBF19E8, sub_1BA3B10C0, MEMORY[0x1E6981F48]);
    v113 = v150;
    sub_1BA4A6348();
    type metadata accessor for InternalSettingsFeatureStateModel(0);
    sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D5320);
    v114 = sub_1BA4A5358();
    swift_getKeyPath();
    v115 = v154;
    sub_1BA4A5368();

    type metadata accessor for ErrorMessage(0);
    sub_1BA3B11B0(v116);
    sub_1BA3B0C00(&qword_1EBBF19F0, type metadata accessor for ErrorMessage, &unk_1BA4D51B0);
    v117 = v152;
    v118 = v153;
    sub_1BA4A5FC8();
    sub_1BA3B1520(v115, sub_1BA3B128C);
    (*(v151 + 8))(v113, v118);
    v119 = v149;
    sub_1BA3B2180(v105, v149, sub_1BA3B0DD0);
    v120 = v156;
    v121 = *(v156 + 16);
    v122 = v155;
    v123 = v157;
    v121(v155, v117, v157);
    v124 = v158;
    sub_1BA3B2180(v119, v158, sub_1BA3B0DD0);
    sub_1BA3B0D24(0, v125);
    *(v124 + *(v126 + 48)) = v147;
    v121((v124 + *(v126 + 64)), v122, v123);
    v127 = *(v120 + 8);
    v127(v117, v123);
    sub_1BA3B1520(v105, sub_1BA3B0DD0);
    v127(v122, v123);

    sub_1BA3B1520(v119, sub_1BA3B0DD0);
    v97 = v172;
    sub_1B9FA4C68(v124, v172);
    v96 = 0;
  }

  (*(v166 + 56))(v97, v96, 1, v167);
  v128 = v163;
  v129 = *(v163 + 16);
  v131 = v169;
  v130 = v170;
  v129(v169, v174, v170);
  v132 = v164;
  v133 = *(v164 + 16);
  v134 = v165;
  v133(v171, v175, v165);
  sub_1B9FA4CCC(v97, v173);
  v135 = v168;
  v129(v168, v131, v130);
  sub_1BA3B1580(0);
  v137 = v136;
  v138 = v171;
  v133(&v135[v136[12]], v171, v134);
  v139 = v162;
  *&v135[v137[16]] = v162;
  *&v135[v137[20]] = v161;
  v140 = v173;
  sub_1B9FA4CCC(v173, &v135[v137[24]]);

  sub_1B9FA4D60(v172);
  v141 = *(v132 + 8);
  v141(v175, v134);
  v142 = *(v128 + 8);
  v143 = v170;
  v142(v174, v170);
  sub_1B9FA4D60(v140);

  v141(v138, v134);
  return (v142)(v169, v143);
}

void sub_1BA3AA2B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [*(*(a1 + 8) + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  *a2 = 0x696669746E656449;
  a2[1] = 0xEA00000000007265;
  a2[2] = v4;
  a2[3] = v6;
}

double sub_1BA3AA338@<D0>(uint64_t a2@<X8>)
{
  v43 = type metadata accessor for InternalSettingsFeatureState(0);
  MEMORY[0x1EEE9AC00](v43, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v37 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v10 = *v9;
  sub_1BA3B1520(v9, type metadata accessor for InternalSettingsFeatureState);
  sub_1BA3831CC(v11);
  v45 = v14;
  if (v14)
  {
    v44 = v12;
    v15 = sub_1BA382F5C(v13);
    v16 = 0xD000000000000011;
    if (v15 > 1)
    {
      v16 = 0xD000000000000013;
    }

    v42 = v16;
    if (v15 <= 1)
    {
      v17 = "Country Code State";
    }

    else
    {
      v17 = "Onboarded Country";
    }

    v18 = v17 | 0x8000000000000000;
  }

  else
  {
    v42 = 0;
    v18 = 0;
    v44 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v19 = *(v5 + 1);
  v20 = v5[16];
  sub_1BA3B1520(v5, type metadata accessor for InternalSettingsFeatureState);
  if (v20)
  {
    v40 = 7104878;
    v41 = 0xE300000000000000;
  }

  else
  {
    v46 = v19;
    sub_1BA0CC87C();
    v40 = sub_1BA4A7BE8();
    v41 = v21;
  }

  if (v10)
  {
    v22 = 0xE300000000000000;
  }

  else
  {
    v22 = 0xE200000000000000;
  }

  if (v10)
  {
    v23 = 5457241;
  }

  else
  {
    v23 = 20302;
  }

  v24 = sub_1BA383574();
  v38 = v25;
  v39 = v24;
  v37 = 0x80000001BA504C20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  sub_1BA3B1520(v9, type metadata accessor for InternalSettingsFeatureState);
  v26 = NSStringFromHKFeatureAvailabilityOnboardedCountrySupportedState();
  v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v29 = v28;

  *a2 = 0xD000000000000019;
  *(a2 + 8) = 0x80000001BA504BE0;
  *(a2 + 16) = v23;
  *(a2 + 24) = v22;
  v30 = v42;
  *(a2 + 32) = v42;
  *(a2 + 40) = v18;
  v32 = v44;
  v31 = v45;
  *(a2 + 48) = v44;
  *(a2 + 56) = v31;
  *(a2 + 64) = 0xD000000000000019;
  *(a2 + 72) = 0x80000001BA504C00;
  v33 = v41;
  *(a2 + 80) = v40;
  *(a2 + 88) = v33;
  strcpy((a2 + 96), "Earliest Date");
  *(a2 + 110) = -4864;
  v34 = v38;
  *(a2 + 112) = v39;
  *(a2 + 120) = v34;
  v35 = v37;
  *(a2 + 128) = 0xD000000000000012;
  *(a2 + 136) = v35;
  *(a2 + 144) = v27;
  *(a2 + 152) = v29;

  sub_1BA3B1874(v30, v18, v32, v31);

  sub_1BA34A198(v30, v18, v32, v31);

  return result;
}

uint64_t sub_1BA3AA750(uint64_t a1)
{
  sub_1BA4A57F8();
  v2 = *(a1 + 8);
  type metadata accessor for InternalSettingsFeatureStateModel(0);
  sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D5320);
  v3 = v2;
  sub_1BA4A5348();
  sub_1BA3B0F70();
  return sub_1BA4A5318();
}

uint64_t sub_1BA3AA848@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  sub_1BA3B1158();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v43 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v37 = &v36 - v16;
  sub_1BA4A57F8();
  v42 = v17;
  v39 = v18;
  v40 = v19;
  v20 = *a1;
  v49 = *(a1 + 24);
  v50 = v20;
  v48 = *(a1 + 5);
  v21 = swift_allocObject();
  v22 = a1[1];
  v21[1] = *a1;
  v21[2] = v22;
  v21[3] = a1[2];
  v41 = sub_1BA3B16E0;
  sub_1BA3B2180(&v50, v47, sub_1BA3B16E0);
  v38 = MEMORY[0x1E69E6720];
  sub_1BA3B1774(&v49, v47, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1BA3B3030);
  v23 = MEMORY[0x1E69E6720];
  sub_1BA3B1774(&v48, v47, &unk_1EBBF1A78, sub_1BA3B17E8, MEMORY[0x1E69E6720], sub_1BA3B0E04);
  sub_1BA4A61D8();
  v42 = sub_1BA4A57F8();
  v40 = v24;
  v25 = swift_allocObject();
  v26 = a1[1];
  v25[1] = *a1;
  v25[2] = v26;
  v25[3] = a1[2];
  sub_1BA3B2180(&v50, v47, v41);
  sub_1BA3B1774(&v49, v47, &qword_1EDC6E410, MEMORY[0x1E69E6158], v38, sub_1BA3B3030);
  sub_1BA3B1774(&v48, v47, &unk_1EBBF1A78, sub_1BA3B17E8, v23, sub_1BA3B0E04);
  v27 = v43;
  sub_1BA4A61D8();
  v28 = *(v5 + 16);
  v29 = v44;
  v30 = v37;
  v28(v44, v37, v4);
  v31 = v45;
  v28(v45, v27, v4);
  v32 = v46;
  v28(v46, v29, v4);
  sub_1BA3B10F4(0);
  v28(&v32[*(v33 + 48)], v31, v4);
  v34 = *(v5 + 8);
  v34(v27, v4);
  v34(v30, v4);
  v34(v31, v4);
  return (v34)(v29, v4);
}

void sub_1BA3AAC9C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v6[4] = sub_1BA3B186C;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BA454240;
  v6[3] = &block_descriptor_105;
  v4 = _Block_copy(v6);
  v5 = v1;

  [v2 resetOnboardingWithCompletion_];
  _Block_release(v4);
}

uint64_t sub_1BA3AAD98(uint64_t a1, void **a2, __n128 a3)
{
  sub_1BA385CB0(0, a3);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;
  sub_1BA3B2180(a1, &v16 - v11, sub_1BA385CB0);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA3B2180(v12, v8, sub_1BA385CB0);
  v14 = v13;
  sub_1BA4A4F38();
  return sub_1BA3B1520(v12, sub_1BA385CB0);
}

uint64_t sub_1BA3AAEC0(uint64_t a1)
{
  sub_1BA3B0E04(0, &qword_1EBBF1A68, MEMORY[0x1E697D628], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = (a1 + *(type metadata accessor for ErrorMessage(0) + 24));
  v7 = v6[1];
  v12 = *v6;
  v13 = v7;
  sub_1B9F252FC();

  sub_1BA4A5E18();
  swift_getErrorValue();
  v12 = sub_1BA4A8418();
  v13 = v8;
  sub_1BA4A5E18();
  v9 = sub_1BA4A6038();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  return sub_1BA4A6028();
}

uint64_t sub_1BA3AB0C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1BA021DA0(*(a1 + 16), 0);
  v4 = sub_1BA023E7C(&v12, v3 + 4, v1, a1);
  v5 = v12;

  sub_1B9F52E48(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v12 = v3;
  sub_1BA3A833C(&v12, sub_1BA442F20, sub_1BA3B2020, sub_1BA3AF1A4, sub_1BA3AEED4);
  KeyPath = swift_getKeyPath();
  sub_1BA3B1FEC(0);
  v8 = v7;
  v9 = sub_1BA3B0C00(&qword_1EBBF1B10, sub_1BA3B1FEC, MEMORY[0x1E69E6338]);
  v10 = sub_1BA3B14BC();
  return sub_1BA4A62F8(&v12, KeyPath, sub_1BA3AB298, 0, v8, &type metadata for InternalSettingsTitleValueItem, v9, MEMORY[0x1E69E6168], v10);
}

double sub_1BA3AB298@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;

  return result;
}

uint64_t sub_1BA3AB2E0()
{
  sub_1BA4A57F8();
  sub_1BA4A5DF8();
  sub_1BA3B1F30(0);
  sub_1BA3B2830(&qword_1EBBF1B18, sub_1BA3B1F30, sub_1BA3B14BC);
  return sub_1BA4A6338();
}

id sub_1BA3AB3D8@<X0>(void *a1@<X0>, char *a2@<X8>, __n128 a3@<Q0>)
{
  v43 = a2;
  sub_1BA3B2080(0, a3);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v42 - v10;
  sub_1BA3B24E8(0, &qword_1EBBF1B28, MEMORY[0x1E6981148], &type metadata for InternalSettingsFeatureAttributes);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v42 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v42 - v23;
  sub_1BA4A57F8();
  v45 = sub_1BA4A5DF8();
  v46 = v25;
  v47 = v26 & 1;
  v48 = v27;
  v44 = a1;
  sub_1BA3B212C();
  sub_1BA4A6338();
  v28 = [a1 pairedAttributes];
  if (!v28)
  {
    v36 = 1;
    goto LABEL_5;
  }

  v29 = v28;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v31 = result;
    [result isAppleWatch];

    sub_1BA4A57F8();
    v45 = sub_1BA4A5DF8();
    v46 = v32;
    v47 = v33 & 1;
    v48 = v34;
    MEMORY[0x1EEE9AC00](v45, v32);
    v35 = v42;
    sub_1BA4A6338();

    (*(v14 + 32))(v11, v35, v13);
    v36 = 0;
LABEL_5:
    (*(v14 + 56))(v11, v36, 1, v13);
    v37 = *(v14 + 16);
    v37(v17, v24, v13);
    sub_1BA3B2180(v11, v7, sub_1BA3B2080);
    v38 = v43;
    v39.n128_f64[0] = v37(v43, v17, v13);
    sub_1BA3B21E8(0, v39);
    sub_1BA3B2180(v7, &v38[*(v40 + 48)], sub_1BA3B2080);
    sub_1BA3B1520(v11, sub_1BA3B2080);
    v41 = *(v14 + 8);
    v41(v24, v13);
    sub_1BA3B1520(v7, sub_1BA3B2080);
    return (v41)(v17, v13);
  }

  __break(1u);
  return result;
}

double sub_1BA3AB86C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 featureVersion];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v29 = v6;

  v7 = [a1 updateVersion];
  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v28 = v9;

  v10 = [a1 UDIDeviceIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v26 = v13;
    v27 = v12;

    v14 = 0xE300000000000000;
    v15 = 4801621;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v26 = 0;
    v27 = 0;
  }

  v16 = [a1 yearOfRelease];
  if (v16)
  {
    v17 = v16;
    v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v24 = v19;
    v25 = v18;

    v20 = 0xEF657361656C6552;
    v21 = 0x20666F2072616559;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v24 = 0;
    v25 = 0;
  }

  *a2 = 0x2065727574616546;
  *(a2 + 8) = 0xEF6E6F6973726556;
  *(a2 + 16) = v5;
  *(a2 + 24) = v29;
  strcpy((a2 + 32), "Update Version");
  *(a2 + 47) = -18;
  *(a2 + 48) = v8;
  *(a2 + 56) = v28;
  *(a2 + 64) = v15;
  *(a2 + 72) = v14;
  *(a2 + 80) = v27;
  *(a2 + 88) = v26;
  *(a2 + 96) = v21;
  *(a2 + 104) = v20;
  *(a2 + 112) = v25;
  *(a2 + 120) = v24;
  v22 = v20;

  sub_1BA3B1874(v15, v14, v27, v26);
  sub_1BA3B1874(v21, v22, v25, v24);
  sub_1BA34A198(v21, v22, v25, v24);
  sub_1BA34A198(v15, v14, v27, v26);

  return result;
}

uint64_t sub_1BA3ABAF4(uint64_t a1, uint64_t a2)
{
  sub_1BA4A57F8();
  sub_1BA4A5DF8();
  sub_1BA4A57F8();
  sub_1BA4A5DF8();
  sub_1BA3B1A6C(0);
  sub_1BA3B1CC8();
  return sub_1BA4A6348();
}

void sub_1BA3ABC1C(uint64_t a1, void *a2)
{
  v3 = sub_1BA383AC4();
  sub_1BA3AEAF4(v3);
  v5 = v4;

  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v23 = v7;
    sub_1BA3A833C(&v23, sub_1BA442F34, sub_1B9FE97A4, sub_1BA3AF934, sub_1BA3AF018);

    v10 = sub_1B9FE6A4C(v23);

    v23 = v10;
    KeyPath = swift_getKeyPath();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1BA3B1E98;
    *(v13 + 24) = v12;
    sub_1BA3B1B94(0);
    v15 = v14;
    sub_1BA3B0EF4(0, &qword_1EBBF1AC0, sub_1BA3B1BC8, &type metadata for InternalSettingsFeatureRequirementEvaluations);
    v17 = v16;
    v18 = sub_1BA3B0C00(&qword_1EBBF1AD0, sub_1BA3B1B94, MEMORY[0x1E69E6338]);
    v19 = sub_1BA3B0C00(&qword_1EBBE9420, type metadata accessor for HKFeatureAvailabilityContext, &unk_1BA4B50C0);
    v20 = sub_1BA3B1D6C(&qword_1EBBF1AE8, &qword_1EBBF1AC0, sub_1BA3B1BC8, &type metadata for InternalSettingsFeatureRequirementEvaluations);
    v21 = a2;
    sub_1BA4A62F8(&v23, KeyPath, sub_1BA3B1EA0, v13, v15, v17, v18, v19, v20);
    return;
  }

  v7 = sub_1BA021E34(v6, 0);
  v8 = sub_1BA023510(&v23, v7 + 4, v6, v5);
  v9 = v23;

  sub_1B9F52E48(v9);
  if (v8 == v6)
  {
    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1BA3ABF0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA3ABFC8(v6, v7);

  sub_1BA3B1BC8();
  sub_1B9F252FC();
  v8 = a4;

  v9 = a1;
  return sub_1BA4A5328();
}

void sub_1BA3ABFC8(unint64_t a1, unint64_t a2)
{
  v4 = sub_1B9FF6B78(&unk_1F37FD540);
  swift_arrayDestroy();
  v5 = sub_1BA3AE370(a1, a2);
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_22:

    v31 = MEMORY[0x1E69E6158];
    sub_1BA3B3030(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1BA3B1ED0(&qword_1EDC6B660, &qword_1EDC6B670, v31, MEMORY[0x1E69E6310]);
    sub_1BA4A66D8();

    return;
  }

  v38 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v6, 0);
  v7 = 0;
  v32 = v5;
  v33 = v5 + 32;
  v35 = *(v5 + 16);
  v36 = v4 + 56;
  v8 = v4;
  v37 = v4;
  v34 = v6;
  while (v7 != v35)
  {
    if (v7 >= *(v5 + 16))
    {
      goto LABEL_24;
    }

    v9 = (v33 + 32 * v7);
    v10 = *v9;
    v11 = v9[1];
    v13 = v9[2];
    v12 = v9[3];

    if (v7)
    {
      v14 = sub_1BA4A7AC8();
      v16 = v15;
      if (*(v8 + 16))
      {
        v17 = v14;
        sub_1BA4A8488();
        sub_1BA4A68C8();
        v18 = sub_1BA4A84D8();
        v19 = -1 << *(v37 + 32);
        v20 = v18 & ~v19;
        if ((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          while (1)
          {
            v22 = (*(v37 + 48) + 16 * v20);
            v23 = *v22 == v17 && v22[1] == v16;
            if (v23 || (sub_1BA4A8338() & 1) != 0)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v24 = sub_1BA4A7AC8();
          v26 = v30;
          v8 = v37;
          v5 = v32;
          goto LABEL_17;
        }
      }

LABEL_15:

      v8 = v37;
      v5 = v32;
    }

    v24 = MEMORY[0x1BFAF12A0](v10, v11, v13, v12);
    v26 = v25;
LABEL_17:

    v28 = *(v38 + 16);
    v27 = *(v38 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1B9F1C360((v27 > 1), v28 + 1, 1);
      v8 = v37;
    }

    ++v7;
    *(v38 + 16) = v28 + 1;
    v29 = v38 + 16 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
    if (v7 == v34)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_1BA3AC31C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_1BA4A5938();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B19C4(0, v5);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B1DBC(0, &qword_1EBBF1AF0, sub_1BA3B19C4, &qword_1EBBF1AF8, sub_1BA3B19C4);
  v15 = *(v14 - 8);
  v26 = v14;
  v27 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v25 - v17;
  v19 = v1[1];
  v29 = *v1;
  v30 = v19;
  sub_1BA3B2BE4(0, &qword_1EBBF1AA8, sub_1BA3B1A6C, MEMORY[0x1E6981148], MEMORY[0x1E6981148]);
  sub_1BA3B1C1C(v20);
  sub_1BA4A5D88();
  sub_1BA4A5928();
  v21 = sub_1BA3B0C00(&qword_1EBBF1AF8, sub_1BA3B19C4, MEMORY[0x1E697CD20]);
  v22 = MEMORY[0x1E697C750];
  sub_1BA4A6018();
  (*(v3 + 8))(v7, v2);
  (*(v10 + 8))(v13, v9);
  sub_1BA4A57F8();
  v31 = v9;
  v32 = v2;
  v33 = v21;
  v34 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_1BA4A5F48();

  return (*(v27 + 8))(v18, v23);
}

uint64_t sub_1BA3AC698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v33 = a3;
  v31[1] = a2;
  v35 = a4;
  v5 = sub_1BA4A5938();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B23F0(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B1DBC(0, &qword_1EBBF1BB0, sub_1BA3B23F0, &qword_1EBBF1BB8, sub_1BA3B23F0);
  v34 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v31 - v19;
  v36 = v32;
  v37 = a2;
  v38 = v33;
  sub_1BA3B242C(0);
  sub_1BA3B0C00(&qword_1EBBF1BA8, sub_1BA3B242C, MEMORY[0x1E6981F48]);
  sub_1BA4A5D88();
  sub_1BA4A5928();
  v21 = sub_1BA3B0C00(&qword_1EBBF1BB8, sub_1BA3B23F0, MEMORY[0x1E697CD20]);
  v22 = MEMORY[0x1E697C750];
  sub_1BA4A6018();
  (*(v6 + 8))(v9, v5);
  (*(v12 + 8))(v15, v11);
  v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA3ABFC8(v23, v24);
  v26 = v25;
  v28 = v27;

  v43 = v26;
  v44 = v28;
  v39 = v11;
  v40 = v5;
  v41 = v21;
  v42 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1B9F252FC();
  v29 = v34;
  sub_1BA4A5F58();

  return (*(v17 + 8))(v20, v29);
}

uint64_t sub_1BA3ACA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v46 = a4;
  sub_1BA3B2544(0);
  v45 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  sub_1BA3B24E8(0, &qword_1EBBF1B78, MEMORY[0x1E6981E70], &type metadata for InternalSettingsTitleValueItem);
  v16 = v15;
  v43 = *(v15 - 8);
  v17 = v43;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v39 - v23;
  v50 = a1;
  v51 = a2;
  v52 = a3;
  sub_1BA3B14BC();
  v42 = v24;
  sub_1BA4A6358();
  sub_1BA4A57F8();
  v56 = sub_1BA4A5DF8();
  v57 = v25;
  v58 = v26 & 1;
  v59 = v27;
  sub_1BA3ACE70(a3, v55);
  v53 = v55[0];
  v54 = v55[1];
  v47 = a1;
  v48 = a2;
  v49 = a3;
  sub_1BA3B25E0(0);
  sub_1BA3B3030(0, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  sub_1BA3B2830(&qword_1EBBF1BC0, sub_1BA3B25E0, sub_1BA3B28AC);
  sub_1BA3B1428();
  v40 = v14;
  sub_1BA4A6348();
  v28 = *(v17 + 16);
  v41 = v20;
  v28(v20, v24, v16);
  v29 = *(v8 + 16);
  v30 = v44;
  v31 = v14;
  v32 = v45;
  v29(v44, v31, v45);
  v33 = v46;
  v34.n128_f64[0] = v28(v46, v20, v16);
  sub_1BA3B2460(0, v34);
  v29(&v33[*(v35 + 48)], v30, v32);
  v36 = *(v8 + 8);
  v36(v40, v32);
  v37 = *(v43 + 8);
  v37(v42, v16);
  v36(v30, v32);
  return (v37)(v41, v16);
}

uint64_t sub_1BA3ACE70@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = (a1 + 41);
  v4 = *(a1 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v3 += 16;
    if (v5)
    {
      sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);

      sub_1BA4A57F8();
      result = sub_1BA4A5DF8();
      v4 = v9 & 1;
      goto LABEL_6;
    }
  }

  result = 0;
  v7 = 0;
  v8 = 0;
LABEL_6:
  *a2 = result;
  a2[1] = v7;
  a2[2] = v4;
  a2[3] = v8;
  return result;
}

uint64_t sub_1BA3ACF48(void *a1, void *a2, uint64_t a3)
{
  v18 = a3;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  sub_1BA3B3030(0, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation, MEMORY[0x1E69E62F8]);
  v9 = v8;
  sub_1BA3B2704(0);
  v11 = v10;
  v12 = sub_1BA3B1ED0(&qword_1EBBF1BA0, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation, MEMORY[0x1E69E6338]);
  v13 = sub_1BA3B0C00(&qword_1EBBE9498, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_1BA4B5340);
  v14 = sub_1BA3B28AC();
  swift_bridgeObjectRetain_n();
  v15 = a1;
  v16 = a2;
  return sub_1BA4A62F8(&v18, KeyPath, sub_1BA3B28E0, v7, v9, v11, v12, v13, v14);
}

id sub_1BA3AD0CC@<X0>(void *a1@<X8>)
{
  swift_getObjectType();
  result = [swift_getObjCClassFromMetadata() requirementIdentifier];
  *a1 = result;
  return result;
}

uint64_t sub_1BA3AD110(uint64_t *a1, void *a2, __n128 a3)
{
  sub_1BA3B14BC();
  sub_1BA3B2780();
  v4 = a2;
  swift_unknownObjectRetain();
  return sub_1BA4A5308();
}

void sub_1BA3AD1C8(__int16 a1@<W1>, void *a2@<X8>)
{
  v2 = a1;
  v4 = HIBYTE(a1);
  swift_getObjectType();
  v5 = [swift_getObjCClassFromMetadata() requirementIdentifier];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;

  sub_1BA3ABFC8(v6, v8);
  v10 = v9;
  v12 = v11;

  v13 = 0xE000000000000000;
  v14 = sub_1BA368BAC(v4, 0);
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 539568680;
  }

  if (v15)
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x1BFAF1350](v16, v13);

  if (v2)
  {
    v17 = 5457241;
  }

  else
  {
    v17 = 20302;
  }

  if (v2)
  {
    v18 = 0xE300000000000000;
  }

  else
  {
    v18 = 0xE200000000000000;
  }

  MEMORY[0x1BFAF1350](v17, v18);

  *a2 = v10;
  a2[1] = v12;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
}

uint64_t sub_1BA3AD2E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, char *a4@<X8>)
{
  v5 = a3;
  v68 = a4;
  v8 = a3 >> 8;
  v9 = MEMORY[0x1E6981148];
  sub_1BA3B2BE4(0, &qword_1EBBF1C18, sub_1BA3B2CE0, MEMORY[0x1E6981148], MEMORY[0x1E6981148]);
  v67 = v10;
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v71 = &v62 - v15;
  v16 = sub_1BA4A57E8();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  sub_1BA3B2BE4(0, &qword_1EBBF1C00, sub_1BA3B2C50, MEMORY[0x1E6981E70], v9);
  v70 = v18;
  v64 = *(v18 - 8);
  v19 = v64;
  MEMORY[0x1EEE9AC00](v18, v20);
  v69 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v62 - v24;
  sub_1BA4A57D8();
  sub_1BA4A57C8();
  v26 = a2;
  v27 = [a2 requirementDescription];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A57B8();

  sub_1BA4A57C8();
  sub_1BA4A5808();
  v88 = sub_1BA4A5DF8();
  v89 = v28;
  v90 = v29 & 1;
  v91 = v30;
  v76 = a1;
  v77 = v26;
  v78 = v5 & 1;
  v79 = v8;
  sub_1BA3B2C50(0);
  sub_1BA3B0C00(&unk_1EBBF1C70, sub_1BA3B2C50, MEMORY[0x1E6981F48]);
  v63 = v25;
  sub_1BA4A6368();
  sub_1BA4A57F8();
  v88 = sub_1BA4A5DF8();
  v89 = v31;
  v90 = v32 & 1;
  v91 = v33;
  v84 = sub_1BA3B3170(a1);
  v85 = v34;
  sub_1B9F252FC();
  v84 = sub_1BA4A5E18();
  v85 = v35;
  v86 = v36 & 1;
  v87 = v37;
  v72 = a1;
  v73 = v26;
  v74 = v5 & 1;
  v75 = v8;
  sub_1BA3B2CE0(0);
  sub_1BA3B2DE4(255);
  v39 = v38;
  sub_1BA3B2EB8(255);
  v41 = v40;
  v42 = sub_1BA4A5918();
  v43 = sub_1BA3B0C00(&qword_1EBBF1C58, sub_1BA3B2EB8, MEMORY[0x1E697D690]);
  v80 = v41;
  v81 = v42;
  v82 = v43;
  v83 = MEMORY[0x1E697C6A0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = v39;
  v81 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v45 = v71;
  sub_1BA4A6348();
  v46 = *(v19 + 16);
  v47 = v69;
  v48 = v25;
  v49 = v70;
  v46(v69, v48, v70);
  v50 = v65;
  v51 = *(v65 + 16);
  v52 = v66;
  v53 = v45;
  v54 = v67;
  v51(v66, v53, v67);
  v55 = v68;
  v56.n128_f64[0] = v46(v68, v47, v49);
  sub_1BA3B2B18(0, v56);
  v51(&v55[*(v57 + 48)], v52, v54);
  v58 = *(v50 + 8);
  v58(v71, v54);
  v59 = *(v64 + 8);
  v60 = v70;
  v59(v63, v70);
  v58(v52, v54);
  return (v59)(v69, v60);
}

double sub_1BA3AD940@<D0>(__int16 a1@<W2>, void *a2@<X8>)
{
  v2 = a1;
  v4 = HIBYTE(a1);
  swift_getObjectType();
  v5 = [swift_getObjCClassFromMetadata() requirementIdentifier];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;

  v9 = 0xE000000000000000;
  v10 = sub_1BA368BAC(v4, 0);
  v11 = (v10 & 1) == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = 539568680;
  }

  if (v11)
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1BFAF1350](v12, v9);

  if (v2)
  {
    v13 = 5457241;
  }

  else
  {
    v13 = 20302;
  }

  if (v2)
  {
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = 0xE200000000000000;
  }

  MEMORY[0x1BFAF1350](v13, v14);

  *a2 = 0x696669746E656449;
  a2[1] = 0xEA00000000007265;
  a2[2] = v6;
  a2[3] = v8;
  a2[4] = 0x6569667369746153;
  a2[5] = 0xE900000000000064;
  a2[6] = 0;
  a2[7] = 0xE000000000000000;

  return result;
}

uint64_t sub_1BA3ADA88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v51 = a4;
  v7 = a3 >> 8;
  v8 = sub_1BA4A5918();
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B2DE4(0);
  v14 = *(v13 - 8);
  v49 = v13;
  v50 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v44 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B2EB8(0);
  v18 = *(v17 - 8);
  v45 = v17;
  v46 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A57F8();
  v42 = v23;
  v43 = v22;
  v40[1] = v24;
  v41 = v25;
  sub_1BA4A6C68();
  v26 = a1;
  swift_unknownObjectRetain();
  v27 = sub_1BA4A6C58();
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E85E0];
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;
  *(v28 + 32) = v26;
  *(v28 + 40) = a2;
  LOBYTE(v27) = v4 & 1;
  *(v28 + 48) = v4 & 1;
  *(v28 + 49) = v7;
  v30 = v26;
  swift_unknownObjectRetain();
  v31 = sub_1BA4A6C58();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v29;
  *(v32 + 32) = v30;
  *(v32 + 40) = a2;
  *(v32 + 48) = v27;
  *(v32 + 49) = v7;
  sub_1BA4A62B8();
  sub_1BA3B2F54(0);
  sub_1BA3B3080();
  sub_1BA3B30D4();
  sub_1BA4A6238();
  sub_1BA4A5908();
  v33 = sub_1BA3B0C00(&qword_1EBBF1C58, sub_1BA3B2EB8, MEMORY[0x1E697D690]);
  v34 = MEMORY[0x1E697C6A0];
  v36 = v44;
  v35 = v45;
  v37 = v47;
  sub_1BA4A5EC8();
  (*(v48 + 8))(v12, v37);
  v52 = v35;
  v53 = v37;
  v54 = v33;
  v55 = v34;
  swift_getOpaqueTypeConformance2();
  v38 = v49;
  sub_1BA4A5EF8();
  (*(v50 + 8))(v36, v38);
  return (*(v46 + 8))(v21, v35);
}

uint64_t sub_1BA3ADEAC()
{
  v6 = &unk_1F37FD5E0;
  KeyPath = swift_getKeyPath();
  sub_1BA3B3030(0, &qword_1EBBF1628, &type metadata for FeatureRequirementEvaluation.Method, MEMORY[0x1E69E62F8]);
  v2 = v1;
  v3 = sub_1BA3B1ED0(&qword_1EBBF1C40, &qword_1EBBF1628, &type metadata for FeatureRequirementEvaluation.Method, MEMORY[0x1E69E6338]);
  v4 = sub_1BA3B3080();
  return sub_1BA4A62F8(&v6, KeyPath, sub_1BA3ADFB0, 0, v2, MEMORY[0x1E6981148], v3, v4, MEMORY[0x1E6981138]);
}

uint64_t sub_1BA3ADFB0@<X0>(uint64_t a2@<X8>)
{
  sub_1B9F252FC();
  result = sub_1BA4A5E18();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_1BA3AE064(_BYTE *a1@<X8>)
{
  swift_getObjectType();
  v2 = [swift_getObjCClassFromMetadata() requirementIdentifier];
  v3 = sub_1BA385658(v2);

  *a1 = v3;
}

void sub_1BA3AE0C4(char *a1)
{
  v1 = *a1;
  swift_getObjectType();
  v2 = [swift_getObjCClassFromMetadata() requirementIdentifier];
  sub_1BA385724(v2, v1);
}

uint64_t sub_1BA3AE130()
{
  v1 = sub_1BA4A5938();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA3B29F8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v10) = *(v0 + 16);
  v12 = *(v0 + 17);
  v15 = *v0;
  v16 = v10;
  v17 = v12;
  sub_1BA3B2AE4(0);
  sub_1BA3B0C00(&qword_1EBBF1C60, sub_1BA3B2AE4, MEMORY[0x1E6981F48]);
  sub_1BA4A5D88();
  sub_1BA4A5928();
  sub_1BA3B0C00(&qword_1EBBF1C68, sub_1BA3B29F8, MEMORY[0x1E697CD20]);
  sub_1BA4A6018();
  (*(v2 + 8))(v5, v1);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1BA3AE370(unint64_t a1, unint64_t a2)
{
  v52 = sub_1BA4A8588();
  MEMORY[0x1EEE9AC00](v52, v6);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v56 = MEMORY[0x1E69E7CC0];
    v53 = 15;
LABEL_65:

    v41 = sub_1B9F5F260(v53, a1, a2);
    v2 = v44;
    if ((v41 ^ v42) >= 0x4000)
    {
      a1 = v41;
      v3 = v42;
      v12 = v43;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v45 = v56;
      }

      else
      {
LABEL_76:
        v45 = sub_1BA280158(0, *(v56 + 2) + 1, 1, v56);
      }

      v47 = *(v45 + 2);
      v46 = *(v45 + 3);
      if (v47 >= v46 >> 1)
      {
        v45 = sub_1BA280158((v46 > 1), v47 + 1, 1, v45);
      }

      *(v45 + 2) = v47 + 1;
      v48 = &v45[32 * v47];
      *(v48 + 4) = a1;
      *(v48 + 5) = v3;
      *(v48 + 6) = v12;
      *(v48 + 7) = v2;
    }

    else
    {

      return v56;
    }

    return v45;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v55 = 4 * v9;
  v50 = (v7 + 8);
  v56 = MEMORY[0x1E69E7CC0];
  v13 = 15;
  v53 = 15;
  v54 = a2;
  while (1)
  {
    v14 = v12;
    v12 = sub_1BA4A69B8();
    v16 = v15;
    if (!v11)
    {
      goto LABEL_7;
    }

    if ((v11 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if ((v11 & 0x1000000000000000) != 0)
    {
      v22 = sub_1BA4A6898();
    }

    else
    {
      if ((v11 & 0x2000000000000000) != 0)
      {
        v19 = v14;
      }

      else
      {
        if ((v14 & 0x1000000000000000) != 0)
        {
          v18 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v18 = sub_1BA4A7EB8();
        }

        v19 = *v18;
      }

      v20 = v19;
      v21 = (__clz(~v19) - 24) << 16;
      if (v20 < 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 65541;
      }
    }

    v3 = 4 * v17;
    if (4 * v17 != v22 >> 14)
    {
      goto LABEL_25;
    }

    result = sub_1BA22A280(v14, v11);
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    v2 = v51;
    sub_1BA4A8598();
    v24 = sub_1BA4A8558();
    (*v50)(v2, v52);
    if (v24)
    {
      goto LABEL_35;
    }

LABEL_25:
    if ((sub_1BA4A66B8() & 1) == 0)
    {

      goto LABEL_6;
    }

    if ((v11 & 0x1000000000000000) != 0)
    {
      if (v3 != sub_1BA4A6898() >> 14)
      {
        goto LABEL_32;
      }
    }

    else if (v3 != ((4 * sub_1BA4A7DD8()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_32;
    }

    result = sub_1BA22A280(v14, v11);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_79;
    }

    v2 = v51;
    sub_1BA4A8598();
    v25 = sub_1BA4A8578();
    (*v50)(v2, v52);
    if (v25)
    {
LABEL_35:

      goto LABEL_36;
    }

LABEL_32:
    if ((sub_1BA4A66C8() & 1) == 0)
    {
      goto LABEL_35;
    }

    v26 = sub_1BA4A66B8();

    if (v26)
    {
      goto LABEL_6;
    }

LABEL_36:
    if ((v16 & 0x2000000000000000) != 0)
    {
      v27 = HIBYTE(v16) & 0xF;
    }

    else
    {
      v27 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
      goto LABEL_74;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v28 = sub_1BA4A6898();
    }

    else
    {
      v28 = sub_1BA4A7DD8() << 16;
    }

    v3 = 4 * v27;
    if (4 * v27 == v28 >> 14)
    {
      result = sub_1BA22A280(v12, v16);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_78;
      }

      v2 = v51;
      sub_1BA4A8598();
      v29 = sub_1BA4A8568();
      (*v50)(v2, v52);
      if (v29)
      {
LABEL_54:
        if (v10 < v53 >> 14)
        {
          goto LABEL_75;
        }

        v31 = sub_1BA4A69E8();
        v33 = v32;
        v35 = v34;
        v37 = v36;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v38 = v56;
        }

        else
        {
          v38 = sub_1BA280158(0, *(v56 + 2) + 1, 1, v56);
        }

        v3 = *(v38 + 2);
        v39 = *(v38 + 3);
        v2 = (v3 + 1);
        if (v3 >= v39 >> 1)
        {
          v38 = sub_1BA280158((v39 > 1), v3 + 1, 1, v38);
        }

        *(v38 + 2) = v2;
        v56 = v38;
        v40 = &v38[32 * v3];
        *(v40 + 4) = v31;
        *(v40 + 5) = v33;
        *(v40 + 6) = v35;
        *(v40 + 7) = v37;
        v53 = v13;
        goto LABEL_6;
      }
    }

    if (sub_1BA4A66C8())
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        if (v3 != sub_1BA4A6898() >> 14)
        {
LABEL_52:
          if ((sub_1BA4A66C8() & 1) == 0 || (sub_1BA4A66B8() & 1) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_6;
        }
      }

      else if (v3 != ((4 * sub_1BA4A7DD8()) & 0x3FFFFFFFFFFFFLL))
      {
        goto LABEL_52;
      }

      result = sub_1BA22A280(v12, v16);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_80;
      }

      v2 = v51;
      sub_1BA4A8598();
      v30 = sub_1BA4A8578();
      (*v50)(v2, v52);
      if (v30)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_6:
    a2 = v54;
LABEL_7:
    v13 = sub_1BA4A68E8();
    v10 = v13 >> 14;
    v11 = v16;
    if (v13 >> 14 >= v55)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

double sub_1BA3AE954()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return result;
}

uint64_t sub_1BA3AE9CC(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for InternalSettingsFeatureState(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  sub_1BA3B2180(a1, &v15 - v10, type metadata accessor for InternalSettingsFeatureState);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA3B2180(v11, v7, type metadata accessor for InternalSettingsFeatureState);
  v13 = v12;
  sub_1BA4A4F38();
  return sub_1BA3B1520(v11, type metadata accessor for InternalSettingsFeatureState);
}

void sub_1BA3AEAF4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 > 0xD)
  {
    v11 = 8 * (v6 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      sub_1BA3AED40(v12, v7, v3);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
      return;
    }

    v8 = v11;
  }

  MEMORY[0x1EEE9AC00](a1, v8);
  v10 = v13 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v10, v9);
  sub_1BA3AEC54(v10, v7, v3);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_1BA3AEC54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(a1 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1BA202850(a1, a2, v4, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1BA3AED40(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1BA3AEC54(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_1BA3AEDB8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_1BA4A82B8();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      if (v8 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v11 = sub_1BA4A6B98();
        *(v11 + 16) = v8 / 2;
      }

      v13[0] = v11 + 32;
      v13[1] = v8 / 2;
      v12 = v11;
      a3(v13, v14, a1, v10);
      *(v12 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

uint64_t sub_1BA3AEED4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = (*a4 + 32 * a3 - 32);
    v5 = result - a3;
LABEL_5:
    v19 = v4;
    v20 = a3;
    v6 = (v22 + 32 * a3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v18 = v5;
    while (1)
    {
      v11 = v4[2];
      v12 = v4[3];
      v13 = v7 == *v4 && v8 == v4[1];
      if (v13 || (v21 = v4[2], result = sub_1BA4A8338(), v11 = v21, (result)) && (v9 == v11 ? (v14 = v10 == v12) : (v14 = 0), v14) || (result = sub_1BA4A8338(), (result & 1) == 0))
      {
LABEL_4:
        a3 = v20 + 1;
        v4 = v19 + 4;
        v5 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v7 = v4[4];
      v8 = v4[5];
      v9 = v4[6];
      v10 = v4[7];
      v15 = *(v4 + 1);
      *(v4 + 2) = *v4;
      *(v4 + 3) = v15;
      *v4 = v7;
      v4[1] = v8;
      v4[2] = v9;
      v4[3] = v10;
      v4 -= 4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BA3AF018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v24 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = a1 - a3;
LABEL_6:
    v22 = v4;
    v23 = a3;
    v8 = *(v24 + 16 * a3);
    v21 = v5;
    while (1)
    {
      v9 = *v4;
      v10 = v8;
      v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v13 = v12;
      if (v11 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v13 == v14)
      {
        v6 = v10;

        v7 = v9;

LABEL_5:
        a3 = v23 + 1;
        v4 = v22 + 16;
        v5 = v21 - 1;
        if (v23 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v16 = sub_1BA4A8338();
      v17 = v10;

      v18 = v9;

      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v24)
      {
        break;
      }

      v8 = *(v4 + 16);
      *(v4 + 16) = *v4;
      *v4 = v8;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1BA3AF1A4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_121:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_159;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_153:
      v5 = sub_1BA442D80(v5);
    }

    v103 = *(v5 + 2);
    if (v103 >= 2)
    {
      do
      {
        v104 = *v7;
        if (!*v7)
        {
          goto LABEL_157;
        }

        v7 = (v103 - 1);
        v105 = *&v5[16 * v103];
        v106 = *&v5[16 * v103 + 24];
        sub_1BA3B011C((v104 + 32 * v105), (v104 + 32 * *&v5[16 * v103 + 16]), (v104 + 32 * v106), v10);
        if (v6)
        {
          break;
        }

        if (v106 < v105)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1BA442D80(v5);
        }

        if (v103 - 2 >= *(v5 + 2))
        {
          goto LABEL_147;
        }

        v107 = &v5[16 * v103];
        *v107 = v105;
        *(v107 + 1) = v106;
        sub_1BA442CF4(v103 - 1);
        v103 = *(v5 + 2);
        v7 = a3;
      }

      while (v103 > 1);
    }

LABEL_131:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v113 = v10;
    if (v9 + 1 < v8)
    {
      v121 = v8;
      v13 = (*v7 + 32 * v12);
      v14 = v13[2];
      v15 = v13[3];
      v109 = v9;
      v16 = (*v7 + 32 * v9);
      v5 = v16[1];
      v17 = v16[2];
      v18 = v16[3];
      v19 = *v13 == *v16 && v13[1] == v5;
      if (v19 || (sub_1BA4A8338()) && (v14 == v17 ? (v20 = v15 == v18) : (v20 = 0), v20))
      {
        v123 = 0;
      }

      else
      {
        v123 = sub_1BA4A8338();
      }

      v7 = a3;
      v11 = v109;
      v12 = v109 + 2;
      if (v109 + 2 < v121)
      {
        v21 = v16 + 6;
        v22 = v16 + 6;
        while (1)
        {
          v117 = v6;
          v24 = v22[4];
          v22 += 4;
          v23 = v24;
          v25 = v21[5];
          v5 = *(v21 - 2);
          v27 = *v21;
          v26 = v21[1];
          v28 = v21[2] == v5 && v21[3] == *(v21 - 1);
          if (v28 || (sub_1BA4A8338()) && (v23 == v27 ? (v29 = v25 == v26) : (v29 = 0), v29))
          {
            v6 = v117;
            v10 = v113;
            v7 = a3;
            if (v123)
            {
              v11 = v109;
              if (v12 < v109)
              {
                goto LABEL_150;
              }

              goto LABEL_36;
            }
          }

          else
          {
            v6 = v117;
            v10 = v113;
            v7 = a3;
            if ((v123 ^ sub_1BA4A8338()))
            {
              goto LABEL_33;
            }
          }

          ++v12;
          v21 = v22;
          if (v121 == v12)
          {
            v12 = v121;
LABEL_33:
            v11 = v109;
            break;
          }
        }
      }

      if (v123)
      {
        if (v12 < v11)
        {
          goto LABEL_150;
        }

LABEL_36:
        if (v11 < v12)
        {
          v30 = 32 * v12 - 16;
          v31 = (32 * v11) | 0x18;
          v32 = v12;
          v33 = v11;
          do
          {
            if (v33 != --v32)
            {
              v34 = *v7;
              if (!*v7)
              {
                goto LABEL_156;
              }

              v35 = (v34 + v31);
              v36 = v34 + v30;
              v37 = *(v35 - 3);
              v38 = *(v35 - 1);
              v39 = *v35;
              v40 = *v36;
              *(v35 - 3) = *(v36 - 16);
              *(v35 - 1) = v40;
              *(v36 - 16) = v37;
              *v36 = v38;
              *(v36 + 8) = v39;
            }

            ++v33;
            v30 -= 32;
            v31 += 32;
          }

          while (v33 < v32);
        }
      }
    }

    v41 = v7[1];
    if (v12 < v41)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_149;
      }

      if (v12 - v11 < a4)
      {
        v42 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_151;
        }

        if (v42 >= v41)
        {
          v42 = v7[1];
        }

        if (v42 < v11)
        {
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (v12 != v42)
        {
          break;
        }
      }
    }

LABEL_68:
    if (v12 < v11)
    {
      goto LABEL_148;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1BA27F470(0, *(v10 + 2) + 1, 1, v10);
    }

    v58 = *(v10 + 2);
    v57 = *(v10 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v10 = sub_1BA27F470((v57 > 1), v58 + 1, 1, v10);
    }

    *(v10 + 2) = v59;
    v60 = &v10[16 * v58];
    *(v60 + 4) = v11;
    *(v60 + 5) = v12;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_158;
    }

    v120 = v12;
    if (v58)
    {
      while (1)
      {
        v61 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v10 + 4);
          v63 = *(v10 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_88:
          if (v65)
          {
            goto LABEL_137;
          }

          v78 = &v10[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_140;
          }

          v84 = &v10[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_143;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_144;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v59 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        v88 = &v10[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_102:
        if (v83)
        {
          goto LABEL_139;
        }

        v91 = &v10[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_142;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_109:
        v99 = v61 - 1;
        if (v61 - 1 >= v59)
        {
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
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v7)
        {
          goto LABEL_155;
        }

        v100 = *&v10[16 * v99 + 32];
        v101 = *&v10[16 * v61 + 40];
        sub_1BA3B011C((*v7 + 32 * v100), (*v7 + 32 * *&v10[16 * v61 + 32]), (*v7 + 32 * v101), v5);
        if (v6)
        {
          goto LABEL_131;
        }

        if (v101 < v100)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1BA442D80(v10);
        }

        if (v99 >= *(v10 + 2))
        {
          goto LABEL_134;
        }

        v102 = &v10[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        sub_1BA442CF4(v61);
        v59 = *(v10 + 2);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v10[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_135;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_136;
      }

      v73 = &v10[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_138;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_141;
      }

      if (v77 >= v69)
      {
        v95 = &v10[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_145;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_88;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v120;
    if (v120 >= v8)
    {
      goto LABEL_121;
    }
  }

  v118 = v6;
  v124 = *v7;
  v43 = *v7 + 32 * v12 - 32;
  v110 = v11;
  v44 = v11 - v12;
  v112 = v42;
LABEL_52:
  v119 = v12;
  v45 = v124 + 32 * v12;
  v5 = *v45;
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v115 = v44;
  v116 = v43;
  v49 = v43;
  while (1)
  {
    v50 = v49[2];
    v51 = v49[3];
    v52 = v5 == *v49 && v46 == v49[1];
    if (v52 || (v122 = v49[2], v53 = sub_1BA4A8338(), v50 = v122, (v53)) && (v47 == v50 ? (v54 = v48 == v51) : (v54 = 0), v54) || (sub_1BA4A8338() & 1) == 0)
    {
LABEL_51:
      v12 = v119 + 1;
      v43 = v116 + 32;
      v44 = v115 - 1;
      if (v119 + 1 != v112)
      {
        goto LABEL_52;
      }

      v12 = v112;
      v6 = v118;
      v10 = v113;
      v7 = a3;
      v11 = v110;
      goto LABEL_68;
    }

    if (!v124)
    {
      break;
    }

    v5 = v49[4];
    v46 = v49[5];
    v47 = v49[6];
    v48 = v49[7];
    v55 = *(v49 + 1);
    *(v49 + 2) = *v49;
    *(v49 + 3) = v55;
    *v49 = v5;
    v49[1] = v46;
    v49[2] = v47;
    v49[3] = v48;
    v49 -= 4;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
}

void sub_1BA3AF934(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v5 = v8;
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v109 = *(v5 + 2);
      if (v109 >= 2)
      {
        while (*a3)
        {
          v110 = *&v5[16 * v109];
          v111 = *&v5[16 * v109 + 24];
          sub_1BA3B0480((*a3 + 16 * v110), (*a3 + 16 * *&v5[16 * v109 + 16]), (*a3 + 16 * v111), v8);
          if (v4)
          {
            goto LABEL_117;
          }

          if (v111 < v110)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1BA442D80(v5);
          }

          if (v109 - 2 >= *(v5 + 2))
          {
            goto LABEL_133;
          }

          v112 = &v5[16 * v109];
          *v112 = v110;
          *(v112 + 1) = v111;
          sub_1BA442CF4(v109 - 1);
          v109 = *(v5 + 2);
          if (v109 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_143;
      }

LABEL_117:

      return;
    }

LABEL_139:
    v5 = sub_1BA442D80(v5);
    goto LABEL_109;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v124 = v8;
    if (v7 + 1 < v6)
    {
      v120 = v6;
      v122 = (v7 + 1);
      v11 = *a3;
      v12 = *(*a3 + 16 * v10);
      v118 = 16 * v7;
      v13 = *(*a3 + 16 * v7);
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v16 = v15;
      if (v14 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v16 == v17)
      {
        v126 = 0;
      }

      else
      {
        v126 = sub_1BA4A8338();
      }

      v19 = v12;

      v20 = v13;

      v114 = v9;
      v21 = v9 + 2;
      v22 = v11 + v118 + 40;
      v23 = v118 + 16;
      v24 = v122;
      v8 = v124;
      do
      {
        v28 = v21;
        v5 = v24;
        v29 = v23;
        if (v21 >= v120)
        {
          break;
        }

        v128 = v21;
        v30 = *(v22 - 8);
        v31 = *(v22 - 24);
        v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v34 = v33;
        v36 = v32 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v34 == v35;
        v25 = v36 ? 0 : sub_1BA4A8338();
        v26 = v30;

        v27 = v31;

        v28 = v128;
        v21 = v128 + 1;
        v22 += 16;
        v24 = v5 + 1;
        v23 = v29 + 16;
        v8 = v124;
      }

      while (((v126 ^ v25) & 1) == 0);
      if (v126)
      {
        v9 = v114;
        if (v28 < v114)
        {
          goto LABEL_136;
        }

        if (v114 < v28)
        {
          v37 = v114;
          v38 = v118;
          do
          {
            if (v37 != v5)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              v41 = *(v40 + v38);
              *(v40 + v38) = *(v40 + v29);
              *(v40 + v29) = v41;
            }

            ++v37;
            v29 -= 16;
            v38 += 16;
          }

          while (v37 < v5--);
        }

        v10 = v28;
      }

      else
      {
        v10 = v28;
        v9 = v114;
      }
    }

    v42 = a3[1];
    if (v10 >= v42)
    {
      v7 = v10;
LABEL_54:
      if (v7 < v9)
      {
        goto LABEL_134;
      }

      goto LABEL_55;
    }

    v7 = v10;
    v78 = __OFSUB__(v10, v9);
    v43 = v10 - v9;
    if (v78)
    {
      goto LABEL_135;
    }

    if (v43 >= a4)
    {
      goto LABEL_54;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_137;
    }

    if (v9 + a4 >= v42)
    {
      v44 = a3[1];
    }

    else
    {
      v44 = v9 + a4;
    }

    if (v44 < v9)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v7 == v44)
    {
      goto LABEL_54;
    }

    v127 = *a3;
    v45 = *a3 + 16 * v7 - 16;
    v115 = v9;
    v46 = v9 - v7;
    v47 = v7;
    v117 = v44;
LABEL_43:
    v121 = v45;
    v123 = v47;
    v50 = *(v127 + 16 * v47);
    v119 = v46;
LABEL_44:
    v51 = *v45;
    v52 = v50;
    v53 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v55 = v54;
    v56 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v57;
    if (v53 != v56 || v55 != v57)
    {
      break;
    }

    v48 = v52;

    v49 = v51;

LABEL_42:
    v47 = v123 + 1;
    v45 = v121 + 16;
    v46 = v119 - 1;
    if (v123 + 1 != v117)
    {
      goto LABEL_43;
    }

    v7 = v117;
    v8 = v124;
    v9 = v115;
    if (v117 < v115)
    {
      goto LABEL_134;
    }

LABEL_55:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1BA27F470(0, *(v8 + 2) + 1, 1, v8);
    }

    v64 = *(v8 + 2);
    v63 = *(v8 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v8 = sub_1BA27F470((v63 > 1), v64 + 1, 1, v8);
    }

    *(v8 + 2) = v65;
    v66 = &v8[16 * v64];
    *(v66 + 4) = v9;
    *(v66 + 5) = v7;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v64)
    {
      while (2)
      {
        v67 = v65 - 1;
        if (v65 >= 4)
        {
          v72 = &v8[16 * v65 + 32];
          v73 = *(v72 - 64);
          v74 = *(v72 - 56);
          v78 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          if (v78)
          {
            goto LABEL_121;
          }

          v77 = *(v72 - 48);
          v76 = *(v72 - 40);
          v78 = __OFSUB__(v76, v77);
          v70 = v76 - v77;
          v71 = v78;
          if (v78)
          {
            goto LABEL_122;
          }

          v79 = &v8[16 * v65];
          v81 = *v79;
          v80 = *(v79 + 1);
          v78 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v78)
          {
            goto LABEL_124;
          }

          v78 = __OFADD__(v70, v82);
          v83 = v70 + v82;
          if (v78)
          {
            goto LABEL_127;
          }

          if (v83 >= v75)
          {
            v101 = &v8[16 * v67 + 32];
            v103 = *v101;
            v102 = *(v101 + 1);
            v78 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v78)
            {
              goto LABEL_131;
            }

            if (v70 < v104)
            {
              v67 = v65 - 2;
            }
          }

          else
          {
LABEL_74:
            if (v71)
            {
              goto LABEL_123;
            }

            v84 = &v8[16 * v65];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_126;
            }

            v90 = &v8[16 * v67 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_129;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_130;
            }

            if (v88 + v93 < v70)
            {
              goto LABEL_88;
            }

            if (v70 < v93)
            {
              v67 = v65 - 2;
            }
          }
        }

        else
        {
          if (v65 == 3)
          {
            v68 = *(v8 + 4);
            v69 = *(v8 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
            goto LABEL_74;
          }

          v94 = &v8[16 * v65];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_88:
          if (v89)
          {
            goto LABEL_125;
          }

          v97 = &v8[16 * v67];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_128;
          }

          if (v100 < v88)
          {
            break;
          }
        }

        v105 = v67 - 1;
        if (v67 - 1 >= v65)
        {
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
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v106 = *&v8[16 * v105 + 32];
        v107 = *&v8[16 * v67 + 40];
        sub_1BA3B0480((*a3 + 16 * v106), (*a3 + 16 * *&v8[16 * v67 + 32]), (*a3 + 16 * v107), v5);
        if (v4)
        {
          goto LABEL_117;
        }

        if (v107 < v106)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1BA442D80(v8);
        }

        if (v105 >= *(v8 + 2))
        {
          goto LABEL_120;
        }

        v108 = &v8[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        sub_1BA442CF4(v67);
        v65 = *(v8 + 2);
        if (v65 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_107;
    }
  }

  v59 = sub_1BA4A8338();
  v60 = v52;

  v61 = v51;

  if ((v59 & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v127)
  {
    v50 = *(v45 + 16);
    *(v45 + 16) = *v45;
    *v45 = v50;
    v45 -= 16;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_1BA3B011C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - a2;
  v12 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (__dst != a2 || &a2[32 * v13] <= __dst)
    {
      memmove(__dst, a2, 32 * v13);
    }

    v14 = &v4[32 * v13];
    if (v11 < 32 || v6 <= v7)
    {
      v30 = v6;
    }

    else
    {
      v31 = v6;
      __srca = v4;
LABEL_35:
      v32 = 0;
      v33 = v14;
      __dstb = v31;
      v47 = v31 - 32;
      v55 = v5;
      v52 = v14;
      do
      {
        v34 = &v33[v32];
        v35 = &v33[v32 - 32];
        v36 = *&v33[v32 - 16];
        v37 = *&v33[v32 - 8];
        v38 = *(__dstb - 2);
        v39 = *(__dstb - 1);
        v40 = *v35 == *(__dstb - 4) && *&v33[v32 - 24] == *(__dstb - 3);
        if (!v40 && (v48 = *(__dstb - 2), v49 = *&v33[v32 - 8], v41 = sub_1BA4A8338(), v38 = v48, v37 = v49, (v41 & 1) == 0) || (v36 == v38 ? (v42 = v37 == v39) : (v42 = 0), !v42))
        {
          if (sub_1BA4A8338())
          {
            v5 = &v55[v32 - 32];
            v30 = v47;
            if (&v55[v32] != __dstb)
            {
              v45 = *(v47 + 1);
              *v5 = *v47;
              *&v55[v32 - 16] = v45;
            }

            v14 = &v52[v32];
            v4 = __srca;
            if (&v52[v32] <= __srca || (v31 = v47, v47 <= v7))
            {
              v14 = &v52[v32];
              goto LABEL_56;
            }

            goto LABEL_35;
          }
        }

        v43 = &v55[v32];
        v33 = v52;
        if (&v55[v32] != v34)
        {
          v44 = *(v35 + 16);
          *(v43 - 2) = *v35;
          *(v43 - 1) = v44;
        }

        v32 -= 32;
        v14 = &v52[v32];
        v4 = __srca;
      }

      while (&v52[v32] > __srca);
      v30 = __dstb;
    }
  }

  else
  {
    if (__dst != __src || &__src[32 * v10] <= __dst)
    {
      memmove(__dst, __src, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      v54 = v5;
      v51 = &v4[32 * v10];
      while (1)
      {
        v53 = v7;
        v15 = *v6;
        v16 = *(v6 + 1);
        __dsta = v6;
        v17 = *(v6 + 2);
        v18 = *(v6 + 3);
        v19 = *v4;
        v20 = *(v4 + 1);
        v21 = v4;
        v22 = *(v4 + 2);
        v23 = *(v4 + 3);
        v24 = v15 == v19 && v16 == v20;
        if (v24 || (sub_1BA4A8338()) && v17 == v22 && v18 == v23)
        {
          break;
        }

        if ((sub_1BA4A8338() & 1) == 0)
        {
          break;
        }

        v26 = __dsta;
        v6 = __dsta + 32;
        v27 = v53;
        v28 = v54;
        v4 = v21;
        if (v53 != __dsta)
        {
          goto LABEL_25;
        }

LABEL_26:
        v7 = v27 + 32;
        v14 = v51;
        if (v4 >= v51 || v6 >= v28)
        {
          goto LABEL_28;
        }
      }

      v26 = v21;
      v4 = v21 + 32;
      v27 = v53;
      v28 = v54;
      v6 = __dsta;
      if (v53 == v21)
      {
        goto LABEL_26;
      }

LABEL_25:
      v29 = *(v26 + 1);
      *v27 = *v26;
      *(v27 + 1) = v29;
      goto LABEL_26;
    }

LABEL_28:
    v30 = v7;
  }

LABEL_56:
  if (v30 != v4 || v30 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v30, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_1BA3B0480(void **__dst, void **__src, void **a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 4;
  v9 = a3 - __src;
  v10 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 4;
  if (v8 >= v10 >> 4)
  {
    v28 = __src;
    if (a4 != __src || &__src[2 * v11] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 16 * v11);
      a4 = v29;
    }

    v45 = a4;
    v48 = &a4[2 * v11];
    if (v9 < 16)
    {
      v13 = a4;
    }

    else
    {
      v13 = a4;
      if (v28 > v5)
      {
LABEL_30:
        v47 = v28;
        v30 = v28 - 2;
        v4 -= 2;
        v31 = v48;
        v44 = v28 - 2;
        do
        {
          v32 = *(v31 - 2);
          v31 -= 16;
          v33 = *v30;
          v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v36 = v35;
          if (v34 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v36 == v37)
          {
            v39 = 0;
          }

          else
          {
            v39 = sub_1BA4A8338();
          }

          v40 = v32;

          v41 = v33;

          v42 = (v4 + 2);
          if (v39)
          {
            if (v42 != v47)
            {
              *v4 = *v44;
            }

            v13 = v45;
            if (v48 <= v45 || (v28 = v44, v44 <= v5))
            {
              v28 = v44;
              goto LABEL_48;
            }

            goto LABEL_30;
          }

          if (v42 != v48)
          {
            *v4 = *v31;
          }

          v4 -= 2;
          v48 = v31;
          v30 = v44;
        }

        while (v31 > v45);
        v48 = v31;
        v13 = v45;
        v28 = v47;
      }
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[2 * v8] <= a4)
    {
      memmove(a4, __dst, 16 * v8);
    }

    v48 = &v13[2 * v8];
    if (v6 >= 16 && __src < v4)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v14;
        v46 = v14;
        v16 = *v13;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v18;
        v21 = v17 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v19 == v20;
        if (v21)
        {
          break;
        }

        v22 = sub_1BA4A8338();
        v23 = v15;

        v24 = v16;

        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        v25 = v46;
        v14 = v46 + 2;
        if (v5 != v46)
        {
          goto LABEL_21;
        }

LABEL_22:
        v5 += 2;
        if (v13 >= v48 || v14 >= v4)
        {
          goto LABEL_24;
        }
      }

      v26 = v15;

      v27 = v16;

LABEL_20:
      v25 = v13;
      v21 = v5 == v13;
      v13 += 2;
      v14 = v46;
      if (v21)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v5 = *v25;
      goto LABEL_22;
    }

LABEL_24:
    v28 = v5;
  }

LABEL_48:
  if (v28 != v13 || v28 >= (v13 + ((v48 - v13 + (v48 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v28, v13, 16 * ((v48 - v13) / 16));
  }

  return 1;
}

id sub_1BA3B0820(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A57E8();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI42InternalSettingsFeatureStateViewController_featureIdentifier] = a1;
  v7 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
  v8 = a1;
  v9 = [v7 init];
  v10 = objc_allocWithZone(type metadata accessor for InternalSettingsFeatureStateModel(0));
  v11 = sub_1BA3818AC(v8, v9);
  sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D5320);
  v12 = v11;
  v19 = sub_1BA4A5348();
  v20 = v13;
  sub_1BA3B18B8();
  sub_1BA4A6288();

  v14 = sub_1BA4A5A08();

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    *&v2[OBJC_IVAR____TtC18HealthExperienceUI42InternalSettingsFeatureStateViewController_host] = v15;
    v18.receiver = v2;
    v18.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);

    return v16;
  }

  else
  {

    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

void sub_1BA3B0B28(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF1968)
  {
    sub_1BA3B0BA4();
    v2 = sub_1BA4A5D98();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF1968);
    }
  }
}

unint64_t sub_1BA3B0BA4()
{
  result = qword_1EBBF1970;
  if (!qword_1EBBF1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1970);
  }

  return result;
}

uint64_t sub_1BA3B0C00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA3B0D24(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF1990)
  {
    sub_1BA3B0DD0(255);
    sub_1BA3B3030(255, &qword_1EBBF19B8, &type metadata for InternalSettingsRegionAvailabilitySection, MEMORY[0x1E69E6720]);
    sub_1BA3B0FC4(255, v2);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBBF1990);
    }
  }
}

void sub_1BA3B0E04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA3B0E68(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF19A0)
  {
    sub_1BA3B0EF4(255, &qword_1EBBF19A8, sub_1BA3B0F70, &type metadata for InternalSettingsFeatureRequirementsByContext);
    v2 = sub_1BA4A6378();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF19A0);
    }
  }
}

void sub_1BA3B0EF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1BA4A5338();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1BA3B0F70()
{
  result = qword_1EBBF19B0;
  if (!qword_1EBBF19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF19B0);
  }

  return result;
}

void sub_1BA3B0FC4(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF19C0)
  {
    sub_1BA3B2BE4(255, &qword_1EBBF19C8, sub_1BA3B10C0, MEMORY[0x1E6981148], MEMORY[0x1E6981148]);
    type metadata accessor for ErrorMessage(255);
    sub_1BA3B11B0(v2);
    sub_1BA3B0C00(&qword_1EBBF19F0, type metadata accessor for ErrorMessage, &unk_1BA4D51B0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF19C0);
    }
  }
}

void sub_1BA3B10F4(uint64_t a1)
{
  if (!qword_1EBBF19D8)
  {
    sub_1BA3B1158();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF19D8);
    }
  }
}

void sub_1BA3B1158()
{
  if (!qword_1EBBEBAD8)
  {
    v0 = sub_1BA4A61F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBAD8);
    }
  }
}

unint64_t sub_1BA3B11B0(__n128 a1)
{
  result = qword_1EBBF19E0;
  if (!qword_1EBBF19E0)
  {
    sub_1BA3B2BE4(255, &qword_1EBBF19C8, sub_1BA3B10C0, MEMORY[0x1E6981148], MEMORY[0x1E6981148]);
    sub_1BA3B0C00(&qword_1EBBF19E8, sub_1BA3B10C0, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF19E0);
  }

  return result;
}

void sub_1BA3B12F4(uint64_t a1)
{
  if (!qword_1EBBF1A18)
  {
    sub_1BA3B3030(255, &qword_1EBBF1A20, &type metadata for InternalSettingsTitleValueItem, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBF1A18);
    }
  }
}

void sub_1BA3B1394(uint64_t a1)
{
  if (!qword_1EBBF1A28)
  {
    sub_1BA3B3030(255, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    v1 = sub_1BA4A6378();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1A28);
    }
  }
}

unint64_t sub_1BA3B1428()
{
  result = qword_1EBBF1A30;
  if (!qword_1EBBF1A30)
  {
    sub_1BA3B3030(255, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1A30);
  }

  return result;
}

unint64_t sub_1BA3B14BC()
{
  result = qword_1EBBF1A38;
  if (!qword_1EBBF1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1A38);
  }

  return result;
}

uint64_t sub_1BA3B1520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA3B1580(uint64_t a1)
{
  if (!qword_1EBBF1A48)
  {
    sub_1BA3B1394(255);
    sub_1BA3B2BE4(255, &qword_1EBBF1A08, sub_1BA3B12C0, MEMORY[0x1E6981148], MEMORY[0x1E6981148]);
    v1 = MEMORY[0x1E69E6720];
    sub_1BA3B3030(255, &qword_1EBBF1A50, &type metadata for InternalSettingsPairedFeatureAttributes, MEMORY[0x1E69E6720]);
    sub_1BA3B3030(255, &qword_1EBBF1A58, &type metadata for InternalSettingsFeatureSettings, v1);
    sub_1BA3B0E04(255, &qword_1EBBF1A00, sub_1BA3B0CF0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBF1A48);
    }
  }
}

void sub_1BA3B16E0(uint64_t a1)
{
  if (!qword_1EBBF1A70)
  {
    type metadata accessor for InternalSettingsFeatureStateModel(255);
    sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D5320);
    v1 = sub_1BA4A5378();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1A70);
    }
  }
}

uint64_t sub_1BA3B1774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1BA3B17E8(uint64_t a1)
{
  if (!qword_1EBBF1A80)
  {
    sub_1BA3B3030(255, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = sub_1BA4A51A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1A80);
    }
  }
}

double sub_1BA3B1874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1BA3B18B8()
{
  result = qword_1EBBF1A88;
  if (!qword_1EBBF1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1A88);
  }

  return result;
}

void sub_1BA3B19C4(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF1AA0)
  {
    sub_1BA3B2BE4(255, &qword_1EBBF1AA8, sub_1BA3B1A6C, MEMORY[0x1E6981148], MEMORY[0x1E6981148]);
    sub_1BA3B1C1C(v2);
    v3 = sub_1BA4A5D98();
    if (!v4)
    {
      atomic_store(v3, &qword_1EBBF1AA0);
    }
  }
}

void sub_1BA3B1A6C(uint64_t a1)
{
  if (!qword_1EBBF1AB0)
  {
    sub_1BA3B1B94(255);
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_1BA3B0EF4(255, &qword_1EBBF1AC0, sub_1BA3B1BC8, &type metadata for InternalSettingsFeatureRequirementEvaluations);
    sub_1BA3B0C00(&qword_1EBBF1AD0, sub_1BA3B1B94, MEMORY[0x1E69E6338]);
    sub_1BA3B0C00(&qword_1EBBE9420, type metadata accessor for HKFeatureAvailabilityContext, &unk_1BA4B50C0);
    v1 = sub_1BA4A6318();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1AB0);
    }
  }
}

unint64_t sub_1BA3B1BC8()
{
  result = qword_1EBBF1AC8;
  if (!qword_1EBBF1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1AC8);
  }

  return result;
}

unint64_t sub_1BA3B1C1C(__n128 a1)
{
  result = qword_1EBBF1AD8;
  if (!qword_1EBBF1AD8)
  {
    sub_1BA3B2BE4(255, &qword_1EBBF1AA8, sub_1BA3B1A6C, MEMORY[0x1E6981148], MEMORY[0x1E6981148]);
    sub_1BA3B1CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1AD8);
  }

  return result;
}

unint64_t sub_1BA3B1CC8()
{
  result = qword_1EBBF1AE0;
  if (!qword_1EBBF1AE0)
  {
    sub_1BA3B1A6C(255);
    sub_1BA3B1D6C(&qword_1EBBF1AE8, &qword_1EBBF1AC0, sub_1BA3B1BC8, &type metadata for InternalSettingsFeatureRequirementEvaluations);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1AE0);
  }

  return result;
}

uint64_t sub_1BA3B1D6C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA3B0EF4(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA3B1DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1BA4A5938();
    sub_1BA3B0C00(a4, a5, MEMORY[0x1E697CD20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1BA3B1ED0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA3B3030(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA3B1F30(uint64_t a1)
{
  if (!qword_1EBBF1B00)
  {
    sub_1BA3B1FEC(255);
    sub_1BA3B0C00(&qword_1EBBF1B10, sub_1BA3B1FEC, MEMORY[0x1E69E6338]);
    v1 = sub_1BA4A6318();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1B00);
    }
  }
}

void sub_1BA3B2020()
{
  if (!qword_1EBBEA6A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEA6A0);
    }
  }
}

void sub_1BA3B2080(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF1B20)
  {
    sub_1BA3B24E8(255, &qword_1EBBF1B28, MEMORY[0x1E6981148], &type metadata for InternalSettingsFeatureAttributes);
    v2 = sub_1BA4A7AA8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF1B20);
    }
  }
}

id sub_1BA3B20F0@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) localAttributes];
  *a1 = result;
  return result;
}

unint64_t sub_1BA3B212C()
{
  result = qword_1EBBF1B30;
  if (!qword_1EBBF1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1B30);
  }

  return result;
}

uint64_t sub_1BA3B2180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA3B21E8(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF1B38)
  {
    sub_1BA3B24E8(255, &qword_1EBBF1B28, MEMORY[0x1E6981148], &type metadata for InternalSettingsFeatureAttributes);
    sub_1BA3B2080(255, v2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF1B38);
    }
  }
}

id sub_1BA3B2270@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_1BA3B229C(__n128 a1)
{
  result = qword_1EBBF1B40;
  if (!qword_1EBBF1B40)
  {
    sub_1BA3B2BE4(255, &qword_1EBBF1B48, sub_1BA3B1F30, MEMORY[0x1E6981148], MEMORY[0x1E6981E70]);
    sub_1BA3B2830(&qword_1EBBF1B18, sub_1BA3B1F30, sub_1BA3B14BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1B40);
  }

  return result;
}

void sub_1BA3B2460(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF1B70)
  {
    sub_1BA3B24E8(255, &qword_1EBBF1B78, MEMORY[0x1E6981E70], &type metadata for InternalSettingsTitleValueItem);
    sub_1BA3B2544(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF1B70);
    }
  }
}

void sub_1BA3B24E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1BA4A6378();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA3B2544(uint64_t a1)
{
  if (!qword_1EBBF1B80)
  {
    sub_1BA3B25E0(255);
    sub_1BA3B3030(255, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    v1 = sub_1BA4A6378();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1B80);
    }
  }
}

void sub_1BA3B25E0(uint64_t a1)
{
  if (!qword_1EBBF1B88)
  {
    sub_1BA3B3030(255, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation, MEMORY[0x1E69E62F8]);
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    sub_1BA3B2704(255);
    sub_1BA3B1ED0(&qword_1EBBF1BA0, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation, MEMORY[0x1E69E6338]);
    sub_1BA3B0C00(&qword_1EBBE9498, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_1BA4B5340);
    v1 = sub_1BA4A6318();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1B88);
    }
  }
}

void sub_1BA3B2704(uint64_t a1)
{
  if (!qword_1EBBF1B90)
  {
    sub_1BA3B14BC();
    sub_1BA3B2780();
    v1 = sub_1BA4A5338();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1B90);
    }
  }
}

unint64_t sub_1BA3B2780()
{
  result = qword_1EBBF1B98;
  if (!qword_1EBBF1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1B98);
  }

  return result;
}

uint64_t sub_1BA3B27E0@<X0>(void *a1@<X8>)
{
  result = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *a1 = 0x747865746E6F43;
  a1[1] = 0xE700000000000000;
  a1[2] = result;
  a1[3] = v3;
  return result;
}

uint64_t sub_1BA3B2830(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA3B2944(uint64_t a1)
{
  if (!qword_1EBBF1BE0)
  {
    sub_1BA3B3030(255, &qword_1EBBF1A20, &type metadata for InternalSettingsTitleValueItem, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBF1BE0);
    }
  }
}

void sub_1BA3B2A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1BA3B0C00(a4, a5, MEMORY[0x1E6981F48]);
    v8 = sub_1BA4A5D98();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA3B2B18(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF1BF8)
  {
    v2 = MEMORY[0x1E6981148];
    sub_1BA3B2BE4(255, &qword_1EBBF1C00, sub_1BA3B2C50, MEMORY[0x1E6981E70], MEMORY[0x1E6981148]);
    sub_1BA3B2BE4(255, &qword_1EBBF1C18, sub_1BA3B2CE0, v2, v2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF1BF8);
    }
  }
}

void sub_1BA3B2BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1BA4A6378();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA3B2C84()
{
  if (!qword_1EBBF1C10)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF1C10);
    }
  }
}

void sub_1BA3B2CE0(uint64_t a1)
{
  if (!qword_1EBBF1C20)
  {
    sub_1BA3B2DE4(255);
    sub_1BA3B2EB8(255);
    sub_1BA4A5918();
    sub_1BA3B0C00(&qword_1EBBF1C58, sub_1BA3B2EB8, MEMORY[0x1E697D690]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF1C20);
    }
  }
}

void sub_1BA3B2DE4(uint64_t a1)
{
  if (!qword_1EBBF1C28)
  {
    sub_1BA3B2EB8(255);
    sub_1BA4A5918();
    sub_1BA3B0C00(&qword_1EBBF1C58, sub_1BA3B2EB8, MEMORY[0x1E697D690]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF1C28);
    }
  }
}

void sub_1BA3B2EB8(uint64_t a1)
{
  if (!qword_1EBBF1C30)
  {
    sub_1BA3B2F54(255);
    sub_1BA3B3080();
    sub_1BA3B30D4();
    v1 = sub_1BA4A6248();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1C30);
    }
  }
}

void sub_1BA3B2F54(uint64_t a1)
{
  if (!qword_1EBBF1C38)
  {
    sub_1BA3B3030(255, &qword_1EBBF1628, &type metadata for FeatureRequirementEvaluation.Method, MEMORY[0x1E69E62F8]);
    sub_1BA3B1ED0(&qword_1EBBF1C40, &qword_1EBBF1628, &type metadata for FeatureRequirementEvaluation.Method, MEMORY[0x1E69E6338]);
    sub_1BA3B3080();
    v1 = sub_1BA4A6318();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1C38);
    }
  }
}

void sub_1BA3B3030(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1BA3B3080()
{
  result = qword_1EBBF1C48;
  if (!qword_1EBBF1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1C48);
  }

  return result;
}

unint64_t sub_1BA3B30D4()
{
  result = qword_1EBBF1C50;
  if (!qword_1EBBF1C50)
  {
    sub_1BA3B2F54(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1C50);
  }

  return result;
}

uint64_t sub_1BA3B3170(uint64_t a1)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000051, 0x80000001BA504E30);
  v2 = [*(a1 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  MEMORY[0x1BFAF1350](v3, v5);

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);
  return 0;
}

uint64_t objectdestroy_70Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 50, 7);
}

uint64_t sub_1BA3B3338(uint64_t a1)
{
  sub_1B9F0C700(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F39FD0(a1, v5, sub_1B9F0C700);
  return DefaultCloudSyncStateStore.lastKnownFirstRestoreState.setter(v5);
}

void (*DefaultCloudSyncStateStore.lastKnownFirstRestoreState.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1B9F0C700(0);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  DefaultCloudSyncStateStore.lastKnownFirstRestoreState.getter(v5);
  return sub_1BA3B3498;
}

void sub_1BA3B3498(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B9F39FD0(*(a1 + 16), v2, sub_1B9F0C700);
    DefaultCloudSyncStateStore.lastKnownFirstRestoreState.setter(v2);
    sub_1B9F0DF80(v3, sub_1B9F0C700);
  }

  else
  {
    DefaultCloudSyncStateStore.lastKnownFirstRestoreState.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

void (*sub_1BA3B3534(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1B9F0C700(0);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  DefaultCloudSyncStateStore.lastKnownFirstRestoreState.getter(v5);
  return sub_1BA3B3498;
}

uint64_t sub_1BA3B35F8@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1BA3B4D98;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1BA3B3698(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA3B4DA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);
  sub_1B9F0F1B8(v3, v4);
  return v7(v6, v5);
}

uint64_t sub_1BA3B37C0@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1BA3B4D70;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1BA3B3860(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA3B4D48;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB8);
  sub_1B9F0F1B8(v3, v4);
  return v7(v6, v5);
}

void sub_1BA3B39C8(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver);
  if (v3)
  {
    v4 = [v3 status];
    if (v4)
    {
      v7 = v4;
      sub_1BA4A7628();
    }

    else
    {
      v5 = sub_1BA4A1728();
      v6 = *(*(v5 - 8) + 56);

      v6(a1, 1, 1, v5);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA3B3A98()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E68();
  v6 = v0;
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v9 = 136446466;
    v10 = v6;
    v11 = [v10 description];
    v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v1;
    v14 = v13;

    v15 = sub_1B9F0B82C(v12, v14, &v21);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1B9F0B82C(0xD00000000000001CLL, 0x80000001BA504ED0, &v21);
    _os_log_impl(&dword_1B9F07000, v7, v8, "%{public}s - %{public}s", v9, 0x16u);
    v16 = v20;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v16, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);

    (*(v2 + 8))(v5, v19);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  result = *&v6[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver];
  if (result)
  {
    return [result startObservingSyncStatus];
  }

  __break(1u);
  return result;
}

id CloudSyncStateObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudSyncStateObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncStateObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s18HealthExperienceUI22CloudSyncStateObserverC05cloudeG0_16syncDidStartWithySo07HKCloudeG0C_So10NSProgressCtF_0()
{
  v1 = sub_1BA4A2D28();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3E68();
  v11 = v0;
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v42 = v2;
    v15 = v14;
    v40 = swift_slowAlloc();
    v43 = v40;
    *v15 = 136446466;
    v16 = v11;
    v38 = v13;
    v17 = v16;
    v18 = [v16 description];
    v41 = v6;
    v19 = v18;
    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v39 = v7;
    v21 = v1;
    v22 = v20;
    v24 = v23;

    v25 = v22;
    v1 = v21;
    v26 = sub_1B9F0B82C(v25, v24, &v43);

    *(v15 + 4) = v26;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA505090, &v43);
    _os_log_impl(&dword_1B9F07000, v12, v38, "%{public}s - %{public}s", v15, 0x16u);
    v27 = v40;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    v28 = v15;
    v2 = v42;
    MEMORY[0x1BFAF43A0](v28, -1, -1);

    (*(v39 + 8))(v10, v41);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v29 = (*(v2 + 104))(v5, *MEMORY[0x1E69A32D8], v1);
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v37[-16] = v11;
  *&v37[-8] = v5;

  sub_1BA4A24E8();

  v32 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x98))(v31);
  if (v32)
  {
    v34 = v32;
    v35 = v33;
    v32(v5);
    sub_1B9F0E310(v34, v35);
  }

  return (*(v2 + 8))(v5, v1);
}
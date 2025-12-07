uint64_t sub_1BA139AF0(uint64_t a1)
{
  result = sub_1BA4A0FA8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1BA139CB4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1B9F0ADF8(0, &qword_1EDC5E570, 0x1E696C3D0);
    sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
    sub_1B9F3E1E0(&unk_1EDC5E560, &qword_1EDC5E570, 0x1E696C3D0, MEMORY[0x1E69E81B8]);
    v5 = sub_1BA4A6628();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);

  return result;
}

double sub_1BA139DD4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1B9F0ADF8(0, &qword_1EDC5E1C0, 0x1E696C3A8);
    v5 = sub_1BA4A6B08();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);

  return result;
}

unint64_t *sub_1BA139E8C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1BA13B280(v6, a2, a3);
    v8 = v7;

    return v8;
  }

  return result;
}

unint64_t sub_1BA139F30()
{
  result = qword_1EBBEC648;
  if (!qword_1EBBEC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC648);
  }

  return result;
}

uint64_t sub_1BA139F8C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F224CC(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1BA139FFC(uint64_t a1)
{
  if (!qword_1EDC69040)
  {
    v2 = type metadata accessor for MutableArrayDataSourceWithLayout(255);
    v4 = type metadata accessor for CellRegistering(a1, v2, &protocol witness table for MutableArrayDataSource, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDC69040);
    }
  }
}

uint64_t sub_1BA13A0B8(void *a1, void *a2, void *a3, char a4)
{
  v5 = v4;
  v10 = sub_1BA4A1798();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_cancellables) = MEMORY[0x1E69E7CD0];
  v15 = v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleType) = a1;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_healthStore) = a2;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_unitController) = a3;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_detailMode) = a4;
  v16 = type metadata accessor for DataMetadataDelegate();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC18HealthExperienceUIP33_32BBCFBB356028961E4520309C3A50C420DataMetadataDelegate_healthStore] = a2;
  *&v17[OBJC_IVAR____TtC18HealthExperienceUIP33_32BBCFBB356028961E4520309C3A50C420DataMetadataDelegate_unitPreferencesController] = a3;
  v40.receiver = v17;
  v40.super_class = v16;
  v18 = a2;
  v19 = a3;
  v20 = v18;
  v21 = v19;
  v22 = a1;
  v23 = objc_msgSendSuper2(&v40, sel_init);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_dataMetadataDelegate) = v23;
  v24 = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_dataSourceItems) = MEMORY[0x1E69E7CC0];
  sub_1BA13BAA0(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v38 = v23;
  v26 = sub_1B9FE4F98(v24);
  sub_1BA4A1788();
  v27 = sub_1BA4A1748();
  v29 = v28;
  v30 = *(v11 + 8);
  v30(v14, v10);
  *(inited + 48) = v24;
  *(inited + 56) = sub_1B9F1C5F0(v24);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v26;
  v31 = Array<A>.identifierToIndexDict()(v26);

  *(inited + 56) = v31;
  *(inited + 64) = v27;
  *(inited + 72) = v29;
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v39, "MutableArray<");
  HIWORD(v39[1]) = -4864;
  sub_1BA4A1788();
  v32 = sub_1BA4A1748();
  v34 = v33;
  v30(v14, v10);
  MEMORY[0x1BFAF1350](v32, v34);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v35 = MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v39[0], v39[1]);

  return v35;
}

uint64_t sub_1BA13A3EC(void *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  sub_1B9F3D5A4(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v59 = &v54 - v12;
  v13 = sub_1BA4A6F48();
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA13B894(0);
  v57 = *(v17 - 8);
  v58 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA13B98C(0);
  v61 = *(v21 - 8);
  v62 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v60 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataTypeMostRecentSamplesDisclosureItemsDataSource(0);
  swift_allocObject();
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = sub_1BA13A0B8(v24, v25, v26, a5);

  v63 = a4;
  sub_1B9F37558(a4, &v65, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  if (v66)
  {
    sub_1B9F1134C(&v65, &v67);
  }

  else
  {
    v28 = type metadata accessor for SampleMetadataViewControllerProvider();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v29 + 16) = v25;
    swift_unknownObjectWeakAssign();
    v69 = v28;
    v70 = &off_1F381AEB8;
    v67 = v29;
    v30 = v66;
    v31 = v25;

    if (v30)
    {
      sub_1BA139F8C(&v65, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
    }
  }

  v32 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider;
  swift_beginAccess();
  sub_1BA13B70C(&v67, v27 + v32, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  swift_endAccess();
  sub_1BA1356D4();
  sub_1BA13BAA0(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1BA4B5470;
  *(v33 + 32) = v24;
  v67 = 0;
  v68 = 0xE000000000000000;
  v34 = v24;
  sub_1BA4A7DF8();
  v35 = sub_1BA4A85D8();
  v37 = v36;

  v67 = v35;
  v68 = v37;
  MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4ED310);
  sub_1BA4A6F58();

  v38 = swift_allocObject();
  v38[2] = v34;
  v38[3] = v25;
  v38[4] = v26;
  v39 = v34;
  v40 = v25;
  v41 = v26;
  sub_1BA4A4D08();
  sub_1BA130D70(0);
  sub_1BA132AB4(0, &qword_1EDC5F4C8, sub_1BA130D70);
  sub_1BA13C020(&qword_1EBBEC688, MEMORY[0x1E69A3960], MEMORY[0x1E69A3958]);
  sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
  v42 = v56;
  sub_1BA4A5088();

  (*(v55 + 8))(v16, v42);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v43 = sub_1BA4A7308();
  v67 = v43;
  v44 = sub_1BA4A72A8();
  v45 = v59;
  (*(*(v44 - 8) + 56))(v59, 1, 1, v44);
  sub_1BA13C020(&unk_1EBBEC698, sub_1BA13B894, MEMORY[0x1E695BE40]);
  sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v46 = v60;
  v47 = v58;
  sub_1BA4A50A8();
  sub_1B9F829D4(v45, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

  (*(v57 + 8))(v20, v47);
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  v50 = v64;
  *(v49 + 16) = v48;
  *(v49 + 24) = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1BA13BA98;
  *(v51 + 24) = v49;
  sub_1BA13C020(&unk_1EBBEC6A8, sub_1BA13B98C, MEMORY[0x1E695BE98]);
  v52 = v62;
  sub_1BA4A5008();

  (*(v61 + 8))(v46, v52);
  swift_beginAccess();
  sub_1BA4A4D28();
  swift_endAccess();

  sub_1BA139F8C(v63, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  return v27;
}

id sub_1BA13AC4C(unint64_t a1, unint64_t a2)
{
  result = [objc_allocWithZone(MEMORY[0x1E69A41C0]) init];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v21 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_22:
    v11 = result;
    v5 = sub_1BA4A7CC8();
    result = v11;
    v19 = a2;
    v20 = v11;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_23:
    a2 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = a2;
  v20 = result;
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_4:
  v6 = 0;
  a2 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1BFAF2860](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        result = *(a1 + 8 * v7 + 32);
      }

      v8 = result;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        break;
      }

LABEL_7:
      ++v7;
      if (v6 == v5)
      {
        goto LABEL_24;
      }
    }

    v10 = [v9 codableECG];

    if (!v10)
    {
      goto LABEL_7;
    }

    MEMORY[0x1BFAF1510]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    result = sub_1BA4A6BB8();
    a2 = v21;
  }

  while (v6 != v5);
LABEL_24:
  sub_1B9FE5ED4(a2);
  v12 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  v13 = sub_1BA4A6AE8();

  v14 = [v12 initWithArray_];

  [v20 setSamples_];
  if (a2 >> 62)
  {
    v15 = sub_1BA4A7CC8();
  }

  else
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v20 setCount_];
  [v20 setActiveAlgorithmVersionRawValue_];
  v16 = [v20 data];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BA4A1608();
  }

  else
  {

    return 0;
  }

  return v18;
}

id sub_1BA13AF24(void *a1, void *a2)
{
  v4 = sub_1BA4A2338();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v12, v13).n128_u64[0];
  v16 = &v40 - v15;
  v17 = [a2 identifier];
  v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v20 = v19;

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == v18 && v21 == v20)
  {
    goto LABEL_13;
  }

  v23 = sub_1BA4A8338();

  if (v23)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == v18 && v24 == v20)
  {
LABEL_13:

    goto LABEL_14;
  }

  v26 = sub_1BA4A8338();

  if (v26)
  {
    goto LABEL_14;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == v18 && v27 == v20)
  {
    goto LABEL_13;
  }

  v35 = sub_1BA4A8338();

  if (v35)
  {
    goto LABEL_14;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == v18 && v36 == v20)
  {
    goto LABEL_13;
  }

  v37 = sub_1BA4A8338();

  if ((v37 & 1) == 0)
  {
    sub_1B9F0ADF8(0, &unk_1EDC5E2C0, 0x1E69A4208);
    v38 = a1;
    v39 = a2;
    sub_1BA4A2308();
    v32 = sub_1BA081600(v38, v39, v7);
    goto LABEL_16;
  }

LABEL_15:
  sub_1B9F0ADF8(0, &unk_1EDC5E2C0, 0x1E69A4208);
  v28 = a1;
  v29 = a2;
  v30 = [v28 startDate];
  sub_1BA4A16F8();

  v31 = [v28 _creationDate];
  sub_1BA4A16F8();

  sub_1BA4A2308();
  v32 = sub_1BA081A50(v28, v29, v16, v11, v7);
LABEL_16:
  v33 = v32;

  return v33;
}

void sub_1BA13B280(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v24 = 0;
  v25 = a3;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v25 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = v12;
    sub_1B9F0AD9C(*(v25 + 56) + 32 * v12, v30);
    v28[0] = v15;
    v28[1] = v14;
    sub_1B9F0AD9C(v30, &v29);
    swift_bridgeObjectRetain_n();
    v17 = sub_1BA131178();
    v27[0] = v15;
    v27[1] = v14;
    MEMORY[0x1EEE9AC00](v17, v18);
    v21[2] = v27;
    v19 = v31;
    LOBYTE(v15) = sub_1B9F13ED8(sub_1B9F13FDC, v21, v17);
    v31 = v19;

    sub_1BA13B6AC(v28, sub_1BA0009D8);
    __swift_destroy_boxed_opaque_existential_1(v30);

    v7 = v26;
    if (v15)
    {
      *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1BA2023C8(v23, v22, v24, v25);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1BA13B484(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_1BA139E8C(v15, v8, a1, a2);
      MEMORY[0x1BFAF43A0](v15, -1, -1);

      return v13;
    }
  }

  MEMORY[0x1EEE9AC00](v10, v11);
  bzero(v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  sub_1BA13B280((v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1);
  v13 = v12;

  if (v3)
  {
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_1BA13B644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA13B6AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA13B70C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1B9F224CC(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

void sub_1BA13B7A8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA13B810()
{
  result = qword_1EBBEC678;
  if (!qword_1EBBEC678)
  {
    sub_1B9F224CC(255, &qword_1EBBEC670, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC678);
  }

  return result;
}

void sub_1BA13B894(uint64_t a1)
{
  if (!qword_1EBBEC680)
  {
    sub_1BA132AB4(255, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA4A6F48();
    sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA13C020(&qword_1EBBEC688, MEMORY[0x1E69A3960], MEMORY[0x1E69A3958]);
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC680);
    }
  }
}

void sub_1BA13B98C(uint64_t a1)
{
  if (!qword_1EBBEC690)
  {
    sub_1BA13B894(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA13C020(&unk_1EBBEC698, sub_1BA13B894, MEMORY[0x1E695BE40]);
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0, 0x1E69E9610, MEMORY[0x1E69E8028]);
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC690);
    }
  }
}

void sub_1BA13BAA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BA13BB28()
{
  result = qword_1EBBEC6B8;
  if (!qword_1EBBEC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC6B8);
  }

  return result;
}

void sub_1BA13BB88(uint64_t a1)
{
  if (!qword_1EDC5F568)
  {
    sub_1BA13B7A8(255, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    sub_1BA13BC34();
    v1 = sub_1BA4A4C98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F568);
    }
  }
}

unint64_t sub_1BA13BC34()
{
  result = qword_1EDC5E610;
  if (!qword_1EDC5E610)
  {
    sub_1BA13B7A8(255, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E610);
  }

  return result;
}

void sub_1BA13BCB8(uint64_t a1)
{
  if (!qword_1EDC5F598)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1BA13BDC4(255, &qword_1EDC5F480, MEMORY[0x1E695BED0]);
    sub_1BA13BE60(255);
    sub_1BA13C0C8(&qword_1EDC5F488, &qword_1EDC5F480, v1, MEMORY[0x1E695BED8]);
    sub_1BA13C020(&qword_1EDC5F6C0, sub_1BA13BE60, MEMORY[0x1E695BCF8]);
    v2 = sub_1BA4A4C28();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC5F598);
    }
  }
}

void sub_1BA13BDC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1B9F0ADF8(255, &qword_1EDC5E1C0, 0x1E696C3A8);
    v7 = sub_1B9F0D9AC(255, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA13BE60(uint64_t a1)
{
  if (!qword_1EDC5F6B8)
  {
    sub_1BA13BB88(255);
    sub_1B9F0D9AC(255, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    sub_1BA13C020(&qword_1EDC5F570, sub_1BA13BB88, MEMORY[0x1E695BE60]);
    v1 = sub_1BA4A4B38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F6B8);
    }
  }
}

void sub_1BA13BF30(uint64_t a1)
{
  if (!qword_1EDC5F5A8)
  {
    sub_1BA13BCB8(255);
    sub_1BA13C020(&qword_1EDC5F5A0, sub_1BA13BCB8, MEMORY[0x1E695BE40]);
    v1 = sub_1BA4A4C18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F5A8);
    }
  }
}

uint64_t sub_1BA13C020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_120Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1BA13C0C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA13BDC4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void FormSheetPresenting<>.presentViewControllerAsFormSheet(_:animated:)(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  [v4 setModalInPresentation_];
  [v4 setModalPresentationStyle_];
  [v2 presentViewController:v4 animated:a2 & 1 completion:0];
}

uint64_t sub_1BA13C274()
{
  swift_getObjectType();
  v1 = UIViewController.resolvedHealthStore.getter();
  if (v1)
  {
    v2 = v1;
    sub_1B9F1DEA0(0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BA4B5480;
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35UninstalledAppSourcesViewController_uninstalledApps);
    type metadata accessor for UninstalledAppSourcesDataSource(0);
    swift_allocObject();
    v5 = v2;

    *(v3 + 32) = sub_1BA422A8C(v5, v4);
    *(v3 + 40) = &protocol witness table for MutableArrayDataSource;

    return v3;
  }

  else
  {
    sub_1BA4A7DF8();

    swift_getMetatypeMetadata();
    v7 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v7);

    MEMORY[0x1BFAF1350](0xD000000000000020, 0x80000001BA4E7E20);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

id sub_1BA13C420(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UninstalledAppSourcesViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA13C4D4(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA13C530(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

id SharingPausedCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *SharingPausedCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item];
  type metadata accessor for MessageWithActionTileView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_tileView] = v11;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for SharingPausedCell();
  v12 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_tileView];
  v14 = v12;
  [v14 addSubview_];
  [v13 hk:v14 alignConstraintsWithView:?];
  v15 = *MEMORY[0x1E69796E8];
  v16 = [v14 layer];
  [v16 setCornerCurve_];

  v17 = [v14 layer];
  [v17 setCornerRadius_];

  v18 = [v14 layer];
  [v18 setMaskedCorners_];

  [v14 setClipsToBounds_];
  v19 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v14 setBackgroundColor_];

  return v14;
}

id SharingPausedCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SharingPausedCell.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA13CA4C()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_tileView];
  [v0 addSubview_];
  [v1 hk:v0 alignConstraintsWithView:?];
  v2 = *MEMORY[0x1E69796E8];
  v3 = [v0 layer];
  [v3 setCornerCurve_];

  v4 = [v0 layer];
  [v4 setCornerRadius_];

  v5 = [v0 layer];
  [v5 setMaskedCorners_];

  [v0 setClipsToBounds_];
  v6 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v0 setBackgroundColor_];
}

uint64_t sub_1BA13CBA0(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA13CD9C();
  return sub_1B9F43DE0(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA13CC28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA13CC80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA13CD9C();
  return sub_1B9F43DE0(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

void (*sub_1BA13CD04(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA13CD68;
}

void sub_1BA13CD68(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA13CD9C();
  }
}

void sub_1BA13CD9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_tileView);
  v2 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v2, v45);
  if (v46)
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    sub_1B9F0D9AC(0, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem, 1);
    if (swift_dynamicCast())
    {
      v3 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v4 = v43;
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
        v5 = (*(v4 + 3))(v3, v4);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        goto LABEL_8;
      }
    }

    else
    {
      v43 = 0;
      aBlock = 0u;
      v42 = 0u;
    }
  }

  else
  {
    sub_1B9F43DE0(v45, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    aBlock = 0u;
    v42 = 0u;
    v43 = 0;
  }

  sub_1B9F43DE0(&aBlock, &qword_1EBBEC718, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem);
  v5 = 0;
LABEL_8:
  sub_1B9F68124(v0 + v2, v45);
  if (v46)
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    sub_1B9F0D9AC(0, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem, 1);
    if (swift_dynamicCast())
    {
      v6 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v7 = v43;
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
        (*(v7 + 6))(v6, v7);
        v9 = v8;
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        goto LABEL_15;
      }
    }

    else
    {
      v43 = 0;
      aBlock = 0u;
      v42 = 0u;
    }
  }

  else
  {
    sub_1B9F43DE0(v45, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    aBlock = 0u;
    v42 = 0u;
    v43 = 0;
  }

  sub_1B9F43DE0(&aBlock, &qword_1EBBEC718, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem);
  v9 = 0;
LABEL_15:
  sub_1B9F68124(v0 + v2, v45);
  if (v46)
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    sub_1B9F0D9AC(0, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem, 1);
    if (swift_dynamicCast())
    {
      v10 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v11 = v43;
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
        v12 = (*(v11 + 9))(v10, v11);
        v14 = v13;
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        goto LABEL_22;
      }
    }

    else
    {
      v43 = 0;
      aBlock = 0u;
      v42 = 0u;
    }
  }

  else
  {
    sub_1B9F43DE0(v45, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    aBlock = 0u;
    v42 = 0u;
    v43 = 0;
  }

  sub_1B9F43DE0(&aBlock, &qword_1EBBEC718, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem);
  v12 = 0;
  v14 = 0;
LABEL_22:
  v15 = [objc_opt_self() systemGray5Color];
  [*&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel] setAttributedText_];
  v16 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
  v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v40 = v5;
  v38 = v15;
  if (v9)
  {
    v18 = sub_1BA4A6758();
  }

  else
  {
    v18 = 0;
  }

  [v17 setText_];

  [*&v1[v16] setHidden_];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
  v20 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v12;
  v22[4] = v14;
  v22[5] = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B9F7B15C;
  *(v23 + 24) = v22;
  v43 = sub_1B9F7B0CC;
  v44 = v23;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_1B9F7B0FC;
  *(&v42 + 1) = &block_descriptor_31_0;
  v24 = _Block_copy(&aBlock);

  v25 = v20;

  [v21 performWithoutAnimation_];
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v27 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v27 = v12 & 0xFFFFFFFFFFFFLL;
    }

    v28 = v27 == 0;
    if (v14)
    {
      v29 = v28;
    }

    else
    {
      v29 = 1;
    }

    [*&v1[v19] setHidden_];
    [v1 setBackgroundColor_];
    [v1 updateConstraints];
    v30 = sub_1BA42FCF0();
    [v30 setHidden_];

    v31 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
    if (v31)
    {
      [v31 setConstant_];
    }

    v32 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
    if (v32)
    {
      [v32 setConstant_];
    }

    v33.value._object = 0x80000001BA4ED5D0;
    v33.value._countAndFlagsBits = 0xD000000000000011;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v33);

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton];
    swift_beginAccess();
    v36 = *v35;
    v37 = v35[1];
    *v35 = sub_1BA13FDE4;
    v35[1] = v34;

    sub_1B9F0E310(v36, v37);
  }
}

void *sub_1BA13D4C8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v2 = result;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (!v4)
    {

      Strong = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  swift_beginAccess();
  sub_1B9F68124(v2 + v5, v12);
  if (!v13)
  {

    swift_unknownObjectRelease();
    sub_1B9F43DE0(v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    return sub_1B9F43DE0(&v14, &qword_1EBBEC718, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem);
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
  sub_1B9F0D9AC(0, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem, 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_14;
  }

  v6 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
LABEL_14:

    swift_unknownObjectRelease();
    return sub_1B9F43DE0(&v14, &qword_1EBBEC718, &unk_1EBBEC720, &protocol descriptor for SharingPausedItem);
  }

  v7 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  v8 = (*(v7 + 96))(v6, v7);
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v8(Strong, v4);
    sub_1B9F0E310(v10, v11);
  }

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v14);
}

id SharingPausedCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingPausedCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA13D798(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t SummarySharingPausedItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SummarySharingPausedItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *SummarySharingPausedItem.titleText.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t SummarySharingPausedItem.bodyText.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void SummarySharingPausedItem.bodyText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t SummarySharingPausedItem.actionText.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void SummarySharingPausedItem.actionText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_1BA13DA14@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA13FBE0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3, v4);
}

uint64_t sub_1BA13DA94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA13FBA8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  sub_1B9F0F1B8(v3, v4);
  result = sub_1B9F0E310(v7, v8);
  *(a2 + 72) = v6;
  *(a2 + 80) = v5;
  return result;
}

uint64_t SummarySharingPausedItem.action.getter()
{
  v1 = *(v0 + 72);
  sub_1B9F0F1B8(v1, *(v0 + 80));
  return v1;
}

uint64_t SummarySharingPausedItem.action.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t SummarySharingPausedItem.init(titleText:bodyText:actionText:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v25 = a6;
  v26 = a7;
  v24 = a5;
  v13 = sub_1BA4A1798();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SharingPausedCell();
  sub_1BA13F514();
  *a8 = sub_1BA4A6808();
  a8[1] = v18;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v27 = 0xD000000000000019;
  v28 = 0x80000001BA4ED4E0;
  sub_1BA4A1788();
  sub_1B9F2A9CC(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v19 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v19);

  result = (*(v14 + 8))(v17, v13);
  v21 = v28;
  a8[2] = v27;
  a8[3] = v21;
  a8[4] = a1;
  a8[5] = a2;
  a8[6] = a3;
  a8[7] = a4;
  v22 = v25;
  a8[8] = v24;
  a8[9] = v22;
  a8[10] = v26;
  return result;
}

uint64_t SummarySharingPausedItem.init(profileInformation:summarySharingEntryStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v5 = sub_1BA4A1798();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A33C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v13 = sub_1BA4A1318();
  _sSS18HealthExperienceUIE34attributedTextWithLeadingPauseIcon4textSo18NSAttributedStringCSS_tFZ_0(v13, v14);
  v40 = v15;

  sub_1BA4A33A8();
  v16 = sub_1BA13F558();
  v38 = v17;
  v39 = v16;

  v18 = sub_1BA4A1318();
  v36 = v19;
  v37 = v18;
  (*(v9 + 16))(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v20, v12, v8);
  v23 = v41;
  *(v22 + v21) = v41;
  v45 = type metadata accessor for SharingPausedCell();
  sub_1BA13F514();
  v24 = v23;
  v41 = sub_1BA4A6808();
  v35 = v25;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v45 = 0xD000000000000019;
  v46 = 0x80000001BA4ED4E0;
  v26 = v42;
  sub_1BA4A1788();
  sub_1B9F2A9CC(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v27 = v44;
  v28 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v28);

  (*(v43 + 8))(v26, v27);

  v29 = v45;
  v30 = v46;
  result = (*(v9 + 8))(a1, v8);
  v32 = v35;
  *a3 = v41;
  a3[1] = v32;
  a3[2] = v29;
  a3[3] = v30;
  v33 = v39;
  a3[4] = v40;
  a3[5] = v33;
  v34 = v37;
  a3[6] = v38;
  a3[7] = v34;
  a3[8] = v36;
  a3[9] = sub_1BA13F740;
  a3[10] = v22;
  return result;
}

void sub_1BA13E194(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v57 = a2;
  v7 = sub_1BA4A1798();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v52 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BA4A33C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v53 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v44[-v16];
  v18 = sub_1BA4A3EA8();
  v48 = *(v18 - 8);
  v49 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v44[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3DD8();
  v22 = *(v11 + 16);
  v56 = a3;
  v50 = v22;
  v22(v17, a3, v10);
  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v47 = a4;
    v26 = v25;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v26 = 136315394;
    *(v26 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4C0250, aBlock);
    *(v26 + 12) = 2080;
    sub_1B9F2A9CC(&qword_1EBBE9818, MEMORY[0x1E69A3430], MEMORY[0x1E69A3448]);
    v27 = sub_1BA4A82D8();
    v45 = v24;
    v28 = a1;
    v30 = v29;
    (*(v11 + 8))(v17, v10);
    v31 = sub_1B9F0B82C(v27, v30, aBlock);
    a1 = v28;

    *(v26 + 14) = v31;
    _os_log_impl(&dword_1B9F07000, v23, v45, "[%s]: Unpausing profile information: %s", v26, 0x16u);
    v32 = v46;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    v33 = v26;
    a4 = v47;
    MEMORY[0x1BFAF43A0](v33, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v17, v10);
  }

  (*(v48 + 8))(v21, v49);
  v34 = v52;
  v35 = v56;
  sub_1BA4A3358();
  v36 = sub_1BA4A1758();
  (*(v54 + 8))(v34, v55);
  v37 = v53;
  v50(v53, v35, v10);
  v38 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v39 = (v51 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v11 + 32))(v40 + v38, v37, v10);
  v41 = (v40 + v39);
  v42 = v57;
  *v41 = a1;
  v41[1] = v42;
  aBlock[4] = sub_1BA13FC64;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA454240;
  aBlock[3] = &block_descriptor_30;
  v43 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [a4 unpauseInvitationWithUUID:v36 completion:v43];
  _Block_release(v43);
}

uint64_t sub_1BA13E6B4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a5;
  v69 = a4;
  v67 = sub_1BA4A6478();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v9);
  v72 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1BA4A64C8();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v11);
  v70 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A33C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v66 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v60 - v19;
  v21 = sub_1BA4A3EA8();
  v74 = *(v21 - 8);
  v75 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v60 - v27;
  if (a1)
  {
    v65 = v8;
    sub_1BA4A3DD8();
    v29 = *(v14 + 16);
    v29(v20, a3, v13);
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v63 = v29;
      v64 = a3;
      v61 = v30;
      v33 = v32;
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v33 = 136315394;
      *(v33 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4C0250, aBlock);
      *(v33 + 12) = 2080;
      sub_1B9F2A9CC(&qword_1EBBE9818, MEMORY[0x1E69A3430], MEMORY[0x1E69A3448]);
      v34 = v31;
      v35 = sub_1BA4A82D8();
      v37 = v36;
      (*(v14 + 8))(v20, v13);
      v38 = sub_1B9F0B82C(v35, v37, aBlock);

      *(v33 + 14) = v38;
      v39 = v61;
      _os_log_impl(&dword_1B9F07000, v61, v34, "[%s]: Successfully unpaused profile information: %s", v33, 0x16u);
      v40 = v62;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      v29 = v63;
      a3 = v64;
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v20, v13);
    }

    (*(v74 + 8))(v28, v75);
    sub_1B9F38BF4();
    v51 = sub_1BA4A7308();
    v52 = v66;
    v29(v66, a3, v13);
    v53 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v54 = swift_allocObject();
    v55 = v68;
    *(v54 + 16) = v69;
    *(v54 + 24) = v55;
    (*(v14 + 32))(v54 + v53, v52, v13);
    aBlock[4] = sub_1BA13FD14;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_22;
    v56 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v57 = v70;
    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F2A9CC(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F3F378(0);
    sub_1B9F2A9CC(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
    v58 = v72;
    v59 = v67;
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v57, v58, v56);
    _Block_release(v56);

    (*(v65 + 8))(v58, v59);
    return (*(v71 + 8))(v57, v73);
  }

  else
  {
    sub_1BA4A3DD8();
    v41 = a2;
    v42 = sub_1BA4A3E88();
    v43 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136315394;
      *(v44 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4C0250, aBlock);
      *(v44 + 12) = 2080;
      aBlock[6] = a2;
      v46 = a2;
      sub_1B9F0D144(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v47 = sub_1BA4A6808();
      v49 = sub_1B9F0B82C(v47, v48, aBlock);

      *(v44 + 14) = v49;
      _os_log_impl(&dword_1B9F07000, v42, v43, "[%s]: Unable to unpause profile information, got error: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v45, -1, -1);
      MEMORY[0x1BFAF43A0](v44, -1, -1);
    }

    return (*(v74 + 8))(v24, v75);
  }
}

uint64_t sub_1BA13EE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  swift_unknownObjectRetain();
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();
  swift_unknownObjectRelease();
  v13 = os_log_type_enabled(v11, v12);
  v26 = a2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v25 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4C0250, &v27);
    *(v15 + 12) = 2080;
    v28[0] = a1;
    v28[1] = a2;
    sub_1BA13FD78(0);
    swift_unknownObjectRetain();
    v17 = sub_1BA4A6808();
    v19 = sub_1B9F0B82C(v17, v18, &v27);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%s]: Notifying delegate: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v16, -1, -1);
    v20 = v15;
    a3 = v25;
    MEMORY[0x1BFAF43A0](v20, -1, -1);
  }

  result = (*(v7 + 8))(v10, v6);
  if (a1)
  {
    ObjectType = swift_getObjectType();
    v23 = sub_1BA4A33C8();
    v28[3] = v23;
    v28[4] = MEMORY[0x1E69A3418];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, a3, v23);
    (*(v26 + 8))(v28, ObjectType);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

void sub_1BA13F16C(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void sub_1BA13F1C4(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_1BA13F21C()
{
  v1 = *(v0 + 72);
  sub_1B9F0F1B8(v1, *(v0 + 80));
  return v1;
}

uint64_t sub_1BA13F250(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_1BA13F2A8(uint64_t a1)
{
  v2 = sub_1BA13FC10();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void _sSS18HealthExperienceUIE34attributedTextWithLeadingPauseIcon4textSo18NSAttributedStringCSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v3 = sub_1BA4A6758();
  v4 = [v2 initWithString_];

  v5 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  v6 = sub_1BA4A6758();
  v7 = [objc_opt_self() _systemImageNamed_];

  if (v7)
  {
    v8 = [v7 imageWithRenderingMode_];

    [v5 setImage_];
    v9 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v10 = sub_1BA4A6758();
    v11 = [v9 initWithString_];

    v12 = [objc_opt_self() attributedStringWithAttachment_];
    [v4 appendAttributedString_];

    v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v14 = sub_1BA4A6758();
    v15 = [v13 initWithString_];

    [v4 appendAttributedString_];
    [v4 appendAttributedString_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BA13F514()
{
  result = qword_1EBBE9E78;
  if (!qword_1EBBE9E78)
  {
    type metadata accessor for SharingPausedCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E78);
  }

  return result;
}

uint64_t sub_1BA13F558()
{
  v0 = sub_1BA4A6878();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1B9F0D144(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5480;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B9F1BE20();
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    v5 = sub_1BA4A6768();

    return v5;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    return sub_1BA4A1318();
  }
}

void sub_1BA13F740(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1BA4A33C8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA13E194(a1, a2, v2 + v6, v7);
}

unint64_t sub_1BA13F7F0()
{
  result = qword_1EBBF25C0;
  if (!qword_1EBBF25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF25C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI25SharingPausedItemDelegate_pSgIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BA13FAFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA13FB44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA13FBA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

unint64_t sub_1BA13FC10()
{
  result = qword_1EBBEC700;
  if (!qword_1EBBEC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC700);
  }

  return result;
}

uint64_t sub_1BA13FC64(char a1, void *a2)
{
  v5 = *(sub_1BA4A33C8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1BA13E6B4(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1BA13FD14()
{
  v1 = *(sub_1BA4A33C8() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1BA13EE94(v2, v3, v4);
}

void sub_1BA13FD78(uint64_t a1)
{
  if (!qword_1EBBEC708)
  {
    sub_1B9F0D9AC(255, &qword_1EBBEC710, &protocol descriptor for SharingPausedItemDelegate, 0);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC708);
    }
  }
}

uint64_t sub_1BA13FE74()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore);
  sub_1B9F0A534(v0 + OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_pinnedContentManager, v8);
  sub_1B9F0A534(v0 + OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthExperienceStore, v7);
  type metadata accessor for ProvidedViewContext(0);
  v2 = swift_allocObject();
  swift_beginAccess();
  v5 = v1;
  sub_1B9F0ADF8(0, &qword_1EDC6B620, 0x1E696C1C0);
  v3 = v1;
  sub_1BA4A4EE8();
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManagerProvider) = 0;
  sub_1B9F0A534(v8, v2 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager);
  sub_1B9F0A534(v7, v6);
  swift_beginAccess();
  sub_1B9F0A534(v6, &v5);
  sub_1B9F0D950(0, &qword_1EDC6E248, MEMORY[0x1E69A3B40]);
  sub_1BA4A4EE8();
  __swift_destroy_boxed_opaque_existential_1(v6);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v2;
}

uint64_t sub_1BA13FFEC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA140030(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CoreDataTabGroup.__allocating_init(predicate:healthStore:healthExperienceStore:pinnedContentManager:title:image:identifier:viewControllerProvider:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(v11);
  v15[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding] = 0;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v16 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B8B60;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v19 = sub_1BA4A6758();
  v20 = [v18 initWithKey:v19 ascending:1];

  *(v17 + 32) = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1BA4A6758();
  v23 = [v21 initWithKey:v22 ascending:0];

  *(v17 + 40) = v23;
  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v25 = sub_1BA4A6758();
  v26 = [v24 initWithKey:v25 ascending:1 selector:sel_localizedStandardCompare_];

  *(v17 + 48) = v26;
  v27 = a1;
  v28 = sub_1BA4A7558();

  v40 = v27;

  *&v15[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_fetchedResultsController] = v28;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore] = a2;
  sub_1B9F0A534(a3, &v15[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthExperienceStore]);
  sub_1B9F0A534(a4, &v15[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_pinnedContentManager]);
  v29 = v28;
  v38 = a2;
  v30 = sub_1BA4A6758();

  v31 = sub_1BA4A6758();

  sub_1B9F0ADF8(0, &qword_1EDC5E230, 0x1E69DCFE0);
  v32 = sub_1BA4A6AE8();
  if (a10)
  {
    aBlock[4] = a10;
    aBlock[5] = a11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_31;
    v33 = _Block_copy(aBlock);
  }

  else
  {
    v33 = 0;
  }

  v44.receiver = v15;
  v44.super_class = v41;
  v34 = objc_msgSendSuper2(&v44, sel_initWithTitle_image_identifier_children_viewControllerProvider_, v30, a7, v31, v32, v33, v38);
  _Block_release(v33);

  v35 = v34;
  [v29 setDelegate_];
  sub_1B9F1FF84();

  sub_1B9F0E310(a10, a11);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);

  return v35;
}

id CoreDataTabGroup.__allocating_init(fetchedResultsController:healthStore:healthExperienceStore:pinnedContentManager:title:image:identifier:viewControllerProvider:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = objc_allocWithZone(v11);
  v16[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding] = 0;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_fetchedResultsController] = a1;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore] = a2;
  sub_1B9F0A534(a3, &v16[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthExperienceStore]);
  sub_1B9F0A534(a4, &v16[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_pinnedContentManager]);
  v17 = a1;
  v25 = a2;
  v18 = sub_1BA4A6758();

  v19 = sub_1BA4A6758();

  sub_1B9F0ADF8(0, &qword_1EDC5E230, 0x1E69DCFE0);
  v20 = sub_1BA4A6AE8();
  if (a10)
  {
    aBlock[4] = a10;
    aBlock[5] = a11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_3;
    v21 = _Block_copy(aBlock);
  }

  else
  {
    v21 = 0;
  }

  v28.receiver = v16;
  v28.super_class = v11;
  v22 = objc_msgSendSuper2(&v28, sel_initWithTitle_image_identifier_children_viewControllerProvider_, v18, a7, v19, v20, v21, a10);
  _Block_release(v21);

  v23 = v22;
  [v17 setDelegate_];
  sub_1B9F1FF84();

  sub_1B9F0E310(a10, a11);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v23;
}

id CoreDataTabGroup.init(fetchedResultsController:healthStore:healthExperienceStore:pinnedContentManager:title:image:identifier:viewControllerProvider:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding] = 0;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_fetchedResultsController] = a1;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore] = a2;
  sub_1B9F0A534(a3, &v11[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthExperienceStore]);
  v26 = a4;
  sub_1B9F0A534(a4, &v11[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_pinnedContentManager]);
  v15 = a1;
  v16 = a2;
  v17 = sub_1BA4A6758();

  v18 = sub_1BA4A6758();

  sub_1B9F0ADF8(0, &qword_1EDC5E230, 0x1E69DCFE0);
  v19 = sub_1BA4A6AE8();
  if (a10)
  {
    aBlock[4] = a10;
    aBlock[5] = a11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_6_2;
    v20 = _Block_copy(aBlock);
  }

  else
  {
    v20 = 0;
  }

  v21 = type metadata accessor for CoreDataTabGroup();
  v29.receiver = v11;
  v29.super_class = v21;
  v22 = objc_msgSendSuper2(&v29, sel_initWithTitle_image_identifier_children_viewControllerProvider_, v17, a7, v18, v19, v20);
  _Block_release(v20);

  v23 = v22;
  [v15 setDelegate_];
  sub_1B9F1FF84();

  sub_1B9F0E310(a10, a11);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v23;
}

uint64_t sub_1BA140968()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  v2 = *((*v1 & *v0) + 0xB8);

  return v2();
}

id sub_1BA1409F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [a3 actionHandlerClassName];
    if (v11)
    {
      v12 = v11;
      v13 = NSClassFromString(v11);

      if (v13)
      {
        ObjCClassMetadata = swift_getObjCClassMetadata();
        v15 = swift_conformsToProtocol2();
        if (v15 && ObjCClassMetadata != 0)
        {
          v17 = v15;
          v18 = [v10 tabBarController];
          if (v18)
          {
            v19 = v18;
            v20 = [a3 objectID];
            v21 = [a3 actionHandlerUserData];
            if (v21)
            {
              v22 = v21;
              v23 = sub_1BA4A1608();
              v25 = v24;
            }

            else
            {
              v23 = 0;
              v25 = 0xF000000000000000;
            }

            v30 = sub_1BA13FE74();
            memset(v34, 0, sizeof(v34));
            v35 = 0u;
            v36 = 0xF000000000000000;
            v33 = v20;
            sub_1BA05DF98(v32, v34);
            sub_1B9F6AC8C(*(&v35 + 1), v36);
            *(&v35 + 1) = v23;
            v36 = v25;
            v37 = v30;
            v38 = v19;
            sub_1BA00D78C(&v33, v32);
            (*(ObjCClassMetadata + 88))(v32);
            v31 = (*(v17 + 24))(ObjCClassMetadata, v17);

            sub_1BA00D7E8(&v33);
            return v31;
          }
        }
      }
    }
  }

  sub_1BA4A3DD8();
  v26 = sub_1BA4A3E88();
  v27 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1B9F07000, v26, v27, "A tab bar item did not have an actionHandlerClass that conforms to TabActionHandler", v28, 2u);
    MEMORY[0x1BFAF43A0](v28, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
}

id sub_1BA140D1C@<X0>(id *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  sub_1B9F2B074(0, &qword_1EDC69258, type metadata accessor for TabActionModel);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for TabActionModel(0);
  v12 = *(v11 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v11, v13).n128_u64[0];
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  result = [*a1 userData];
  if (result)
  {
    v42 = a2;
    v44 = a3;
    v19 = result;
    v20 = sub_1BA4A1608();
    v22 = v21;

    sub_1B9F206D4(v20, v22);
    v43 = v20;
    sub_1B9F2B0C8(v20, v22);
    if (v3)
    {

      sub_1B9F2BB4C(v43, v22);
      (*(v12 + 56))(v10, 1, 1, v11);
      result = sub_1B9F20C20(v10, &qword_1EDC69258, type metadata accessor for TabActionModel);
      v23 = 0;
LABEL_10:
      a3 = v44;
      goto LABEL_11;
    }

    v41 = v22;
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_1B9F2BBA0(v10, v16, type metadata accessor for TabActionModel);
    v24 = swift_allocObject();
    v25 = v42;
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v17;
    v27 = *(v11 + 24);
    v28 = *&v25[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore];
    v29 = v17;
    sub_1B9F2BC34(v16 + v27, v28);
    v31 = v30;
    v40 = sub_1B9F0ADF8(0, &unk_1EDC5E0B0, 0x1E69DC628);
    v32 = *v16;
    v33 = v16[1];

    v34 = [v29 uniqueIdentifier];
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1BA141998;
    *(v35 + 24) = v26;
    v42 = v31;

    v23 = sub_1BA4A77E8();
    v36 = [v29 baseAutomationIdentifier];
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1BA4B5460;
      *(v38 + 32) = 6447444;
      *(v38 + 40) = 0xE300000000000000;
      *(v38 + 48) = v32;
      *(v38 + 56) = v33;

      v39 = sub_1BA4A6AE8();

      v37 = HKUIJoinStringsForAutomationIdentifier();

      if (!v37)
      {
LABEL_9:
        [v23 setAccessibilityIdentifier_];

        sub_1B9F2BB4C(v43, v41);
        result = sub_1B9F20C7C(v16, type metadata accessor for TabActionModel);
        goto LABEL_10;
      }
    }

    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    v37 = sub_1BA4A6758();

    goto LABEL_9;
  }

  v23 = 0;
LABEL_11:
  *a3 = v23;
  return result;
}

void sub_1BA1411D4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong tabBarController];
    if (v6)
    {
      v7 = v6;
      v8 = [a3 actionHandlerClassName];
      if (v8 && (v9 = v8, v10 = NSClassFromString(v8), v9, v10) && (ObjCClassMetadata = swift_getObjCClassMetadata(), (v12 = swift_conformsToProtocol2()) != 0) && ObjCClassMetadata)
      {
        v13 = v12;
        v14 = [a3 objectID];
        v15 = [a3 actionHandlerUserData];
        if (v15)
        {
          v16 = v15;
          v17 = sub_1BA4A1608();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0xF000000000000000;
        }

        v20 = sub_1BA13FE74();
        memset(v23, 0, sizeof(v23));
        v24 = 0u;
        v25 = 0xF000000000000000;
        v22 = v14;
        sub_1BA05DF98(&v21, v23);
        sub_1B9F6AC8C(*(&v24 + 1), v25);
        *(&v24 + 1) = v17;
        v25 = v19;
        v26 = v20;
        v27 = v7;
        sub_1BA00D78C(&v22, &v21);
        (*(ObjCClassMetadata + 88))(&v21);
        (*(v13 + 40))(ObjCClassMetadata, v13);

        sub_1BA00D7E8(&v22);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

id CoreDataTabGroup.__allocating_init(title:image:identifier:children:viewControllerProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = sub_1BA4A6758();

  v14 = sub_1BA4A6758();

  sub_1B9F0ADF8(0, &qword_1EDC5E230, 0x1E69DCFE0);
  v15 = sub_1BA4A6AE8();

  if (a7)
  {
    v19[4] = a7;
    v19[5] = a8;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1B9F7EBBC;
    v19[3] = &block_descriptor_9;
    v16 = _Block_copy(v19);
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_allocWithZone(v9) initWithTitle:v13 image:a3 identifier:v14 children:v15 viewControllerProvider:v16];
  _Block_release(v16);

  return v17;
}

id CoreDataTabGroup.__allocating_init(title:image:identifier:viewControllerProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  v13 = sub_1BA4A6758();

  if (a6)
  {
    v17[4] = a6;
    v17[5] = a7;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1B9F7EBBC;
    v17[3] = &block_descriptor_12_0;
    v14 = _Block_copy(v17);
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(v8) initWithTitle:v12 image:a3 identifier:v13 viewControllerProvider:v14];
  _Block_release(v14);

  return v15;
}

id CoreDataTabGroup.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataTabGroup();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_16Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t ProfileContextNavigationBarConfiguring.configureProfileContextNavigationBar(context:healthStore:profileIdentifier:mode:title:)(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v119 = a5;
  v120 = a8;
  v121 = a6;
  v122 = a7;
  v116 = a3;
  v102 = a2;
  v117 = a1;
  sub_1BA142AEC();
  v114 = v9;
  v112 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v110 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A3EA8();
  v104 = *(v12 - 8);
  v105 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142B40(0);
  v109 = v16;
  v107 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142C90(0);
  v108 = v20;
  v106 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142EF8(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v100 - v26;
  sub_1BA142D3C(0);
  v29 = v28;
  v103 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142F4C(0);
  v115 = v33;
  v113 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v111 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1431B4(0);
  v37 = v36;
  v101 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = &v100 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BA4A1798();
  *&v43 = MEMORY[0x1EEE9AC00](v41 - 8, v42).n128_u64[0];
  v45 = &v100 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v52 = objc_allocWithZone(MEMORY[0x1E696C408]);
      v53 = [v52 initWithHealthStore_];
      v54 = HKSharedSummaryCloudSyncManager.fetchProfileInformation()();

      v124 = v54;
      sub_1B9F38BF4();
      v55 = sub_1BA4A7308();
      v123 = v55;
      v56 = sub_1BA4A72A8();
      (*(*(v56 - 8) + 56))(v27, 1, 1, v56);
      sub_1BA143038(0, &qword_1EBBEC770, type metadata accessor for CloudProfileInformation, MEMORY[0x1E695C028]);
      sub_1BA142E28();
      sub_1BA142EB0(&qword_1EDC6B5B0, sub_1B9F38BF4, MEMORY[0x1E69E8028]);
      sub_1BA4A50A8();
      sub_1BA143CE4(v27, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

      sub_1BA142C28(0);
      sub_1BA142EB0(&qword_1EBBEC780, sub_1BA142D3C, MEMORY[0x1E695BE98]);
      sub_1BA4A4FE8();
      sub_1BA142EB0(&qword_1EBBEC7C8, sub_1BA142C90, MEMORY[0x1E695BD60]);
      v57 = v108;
      v58 = sub_1BA4A4F98();
      (*(v106 + 8))(v23, v57);
      (*(v103 + 8))(v32, v29);
      v124 = v58;
      v59 = swift_allocObject();
      v60 = v122;
      v61 = v120;
      v59[2] = v122;
      v59[3] = v61;
      v63 = v116;
      v62 = v117;
      v59[4] = v117;
      v59[5] = v63;
      sub_1BA143038(0, &qword_1EBBEC790, sub_1BA142C28, MEMORY[0x1E695BED0]);
      sub_1BA1430C4(0);
      sub_1BA14312C();
      sub_1BA142EB0(&qword_1EBBEC7A8, sub_1BA1430C4, MEMORY[0x1E695BED8]);
      v64 = v62;
      v65 = v63;
      v66 = v111;
      sub_1BA4A5018();

      sub_1BA142EB0(&qword_1EBBEC7D0, sub_1BA142F4C, MEMORY[0x1E695BDA0]);
      v67 = v115;
      v51 = sub_1BA4A4F98();
      (*(v113 + 8))(v66, v67);

      v68 = &selRef_systemWhiteColor;
LABEL_14:
      v86 = [objc_opt_self() *v68];
      v87 = [v118 navigationItem];
      v88 = objc_allocWithZone(type metadata accessor for TitleWithSubHeadingView());
      v89 = v86;
      v90 = [v88 initWithFrame_];
      v91 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
      [*&v90[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel] setText_];
      v92 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
      [*&v90[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel] setText_];
      v93 = *&v90[v91];
      v94 = v89;
      [v93 setTextColor_];
      v95 = *&v90[v92];
      [v95 setTextColor_];

      [v87 setTitleView_];
      v124 = v51;
      v96 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v97 = swift_allocObject();
      v97[2] = v60;
      v97[3] = v61;
      v98 = v119;
      v97[4] = v96;
      v97[5] = v98;
      v97[6] = v121;
      sub_1BA1430C4(0);
      sub_1BA142EB0(&qword_1EBBEC7A8, sub_1BA1430C4, MEMORY[0x1E695BED8]);

      v80 = sub_1BA4A5148();

      return v80;
    }

    v81 = [v116 identifier];
    sub_1BA4A1778();

    type metadata accessor for SharingEntryProfileInformationDataSource(0);
    swift_allocObject();
    v124 = *(sub_1BA19BEB8(v117, v45, 0, 0, 0, 0) + qword_1EDC6A560);
    v82 = MEMORY[0x1E69A3430];
    v83 = MEMORY[0x1E695BF98];
    sub_1BA143C08(0, &qword_1EBBEE020, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BF98]);
    sub_1BA143C80(&qword_1EBBEB080, &qword_1EBBEE020, v83, MEMORY[0x1E695BFB0]);
    v124 = sub_1BA4A4F98();
    v84 = MEMORY[0x1E695BED0];
    sub_1BA143C08(0, &unk_1EBBEE000, &qword_1EBBEA318, v82, MEMORY[0x1E695BED0]);
    sub_1BA142C28(0);
    sub_1BA143C80(&qword_1EBBEE010, &unk_1EBBEE000, v84, MEMORY[0x1E695BED8]);
    sub_1BA4A4FE8();
    sub_1BA142EB0(&qword_1EBBEC7D8, sub_1BA1431B4, MEMORY[0x1E695BD60]);
    v51 = sub_1BA4A4F98();

    (*(v101 + 8))(v40, v37);
LABEL_10:
    v60 = v122;
    v85 = sub_1BA4A8338();

    if (v85)
    {
      v68 = &selRef_systemWhiteColor;
    }

    else
    {
      v68 = &selRef_labelColor;
    }

    v61 = v120;
    goto LABEL_14;
  }

  if (!a4)
  {
    type metadata accessor for HealthKitProfileInformationDataSource(0);
    swift_allocObject();
    v46 = v117;
    v124 = *(sub_1BA2B8F0C(v46, v116, 0, 0, 0, 0) + qword_1EDC6A560);
    v47 = MEMORY[0x1E69A3108];
    v48 = MEMORY[0x1E695BF98];
    sub_1BA143C08(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
    sub_1BA143B88(&qword_1EDC6B730, &qword_1EDC6B720, v48, MEMORY[0x1E695BFB0]);
    v124 = sub_1BA4A4F98();
    v49 = MEMORY[0x1E695BED0];
    sub_1BA143C08(0, &qword_1EDC6B738, &qword_1EDC6E200, v47, MEMORY[0x1E695BED0]);
    sub_1BA142C28(0);
    sub_1BA143B88(&qword_1EDC6B740, &qword_1EDC6B738, v49, MEMORY[0x1E695BED8]);
    sub_1BA4A4FE8();
    sub_1BA142EB0(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
    v50 = v109;
    v51 = sub_1BA4A4F98();

    (*(v107 + 8))(v19, v50);
    goto LABEL_10;
  }

  sub_1BA4A3DD8();
  v69 = sub_1BA4A3E88();
  v70 = sub_1BA4A6FA8();
  v71 = os_log_type_enabled(v69, v70);
  v72 = v122;
  if (v71)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v123 = v72;
    v124 = v74;
    *v73 = 136315138;
    swift_getMetatypeMetadata();
    v75 = sub_1BA4A6808();
    v77 = sub_1B9F0B82C(v75, v76, &v124);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_1B9F07000, v69, v70, "[%s]: Asking for profile context for the primary profile; why?", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x1BFAF43A0](v74, -1, -1);
    MEMORY[0x1BFAF43A0](v73, -1, -1);
  }

  (*(v104 + 8))(v15, v105);
  v78 = v110;
  sub_1BA4A4E78();
  sub_1BA142EB0(&qword_1EBBEC7B8, sub_1BA142AEC, MEMORY[0x1E695C008]);
  v79 = v114;
  v80 = sub_1BA4A5148();
  (*(v112 + 8))(v78, v79);
  return v80;
}

void sub_1BA142AEC()
{
  if (!qword_1EBBEC758)
  {
    v0 = sub_1BA4A4E68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC758);
    }
  }
}

void sub_1BA142B40(uint64_t a1)
{
  if (!qword_1EDC6B760)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1BA143C08(255, &qword_1EDC6B738, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BED0]);
    sub_1BA142C28(255);
    sub_1BA143B88(&qword_1EDC6B740, &qword_1EDC6B738, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1BA4A4B78();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC6B760);
    }
  }
}

void sub_1BA142C28(uint64_t a1)
{
  if (!qword_1EDC6E1E0)
  {
    sub_1B9F0D950(255, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6E1E0);
    }
  }
}

void sub_1BA142C90(uint64_t a1)
{
  if (!qword_1EBBEC760)
  {
    sub_1BA142D3C(255);
    sub_1BA142C28(255);
    sub_1BA142EB0(&qword_1EBBEC780, sub_1BA142D3C, MEMORY[0x1E695BE98]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC760);
    }
  }
}

void sub_1BA142D3C(uint64_t a1)
{
  if (!qword_1EBBEC768)
  {
    sub_1BA143038(255, &qword_1EBBEC770, type metadata accessor for CloudProfileInformation, MEMORY[0x1E695C028]);
    sub_1B9F38BF4();
    sub_1BA142E28();
    sub_1BA142EB0(&qword_1EDC6B5B0, sub_1B9F38BF4, MEMORY[0x1E69E8028]);
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC768);
    }
  }
}

unint64_t sub_1BA142E28()
{
  result = qword_1EBBEC778;
  if (!qword_1EBBEC778)
  {
    sub_1BA143038(255, &qword_1EBBEC770, type metadata accessor for CloudProfileInformation, MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC778);
  }

  return result;
}

uint64_t sub_1BA142EB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA142EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA142F4C(uint64_t a1)
{
  if (!qword_1EBBEC788)
  {
    sub_1BA143038(255, &qword_1EBBEC790, sub_1BA142C28, MEMORY[0x1E695BED0]);
    sub_1BA1430C4(255);
    sub_1BA14312C();
    sub_1BA142EB0(&qword_1EBBEC7A8, sub_1BA1430C4, MEMORY[0x1E695BED8]);
    v1 = sub_1BA4A4BB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC788);
    }
  }
}

void sub_1BA143038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v9 = a4(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA1430C4(uint64_t a1)
{
  if (!qword_1EBBEC798)
  {
    sub_1BA142C28(255);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC798);
    }
  }
}

unint64_t sub_1BA14312C()
{
  result = qword_1EBBEC7A0;
  if (!qword_1EBBEC7A0)
  {
    sub_1BA143038(255, &qword_1EBBEC790, sub_1BA142C28, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC7A0);
  }

  return result;
}

void sub_1BA1431B4(uint64_t a1)
{
  if (!qword_1EBBEC7B0)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1BA143C08(255, &unk_1EBBEE000, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BED0]);
    sub_1BA142C28(255);
    sub_1BA143C80(&qword_1EBBEE010, &unk_1EBBEE000, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1BA4A4B78();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEC7B0);
    }
  }
}

uint64_t sub_1BA14329C@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1BA142B40(0);
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A3EA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_1BA4A3E28();
  v19 = v18;
  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v47 = a5;
    v23 = v22;
    v24 = swift_slowAlloc();
    v46 = a2;
    v25 = v24;
    v51 = a4;
    v52 = v24;
    *v23 = 136315394;
    swift_getMetatypeMetadata();
    v26 = sub_1BA4A6808();
    v28 = sub_1B9F0B82C(v26, v27, &v52);
    v45 = v13;
    v29 = a3;
    v30 = v28;

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    v51 = v18;
    v31 = v18;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v32 = sub_1BA4A6808();
    v34 = sub_1B9F0B82C(v32, v33, &v52);
    a3 = v29;

    *(v23 + 14) = v34;
    _os_log_impl(&dword_1B9F07000, v20, v21, "[%s]: Unable to fetch iCloud name for profile context: %s", v23, 0x16u);
    swift_arrayDestroy();
    v35 = v25;
    a2 = v46;
    MEMORY[0x1BFAF43A0](v35, -1, -1);
    v36 = v23;
    a5 = v47;
    MEMORY[0x1BFAF43A0](v36, -1, -1);

    (*(v14 + 8))(v17, v45);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  type metadata accessor for HealthKitProfileInformationDataSource(0);
  swift_allocObject();
  v52 = *(sub_1BA2B8F0C(a2, a3, 0, 0, 0, 0) + qword_1EDC6A560);
  v37 = MEMORY[0x1E69A3108];
  v38 = MEMORY[0x1E695BF98];
  sub_1BA143C08(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
  sub_1BA143B88(&qword_1EDC6B730, &qword_1EDC6B720, v38, MEMORY[0x1E695BFB0]);

  v39 = sub_1BA4A4F98();

  v52 = v39;
  v40 = MEMORY[0x1E695BED0];
  sub_1BA143C08(0, &qword_1EDC6B738, &qword_1EDC6E200, v37, MEMORY[0x1E695BED0]);
  sub_1BA142C28(0);
  sub_1BA143B88(&qword_1EDC6B740, &qword_1EDC6B738, v40, MEMORY[0x1E695BED8]);
  v41 = v48;
  sub_1BA4A4FE8();
  sub_1BA142EB0(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
  v42 = v50;
  v43 = sub_1BA4A4F98();

  result = (*(v49 + 8))(v41, v42);
  *a5 = v43;
  return result;
}

double sub_1BA143794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  sub_1BA142EF8(0, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v26[-1] - v8;
  v10 = sub_1BA4A33C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA071040(a1, v26);
  v15 = v27;
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v16 = sub_1BA4A2AB8();
    v15 = v17;
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_1BA071124(v26);
    v16 = 0;
  }

  sub_1BA071040(a1, v26);
  if (!v27)
  {
    sub_1BA071124(v26);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_8;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
  v18 = swift_dynamicCast();
  (*(v11 + 56))(v9, v18 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_8:
    sub_1BA143CE4(v9, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
    goto LABEL_9;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = sub_1BA4A3328();
  v15 = v19;
  (*(v11 + 8))(v14, v10);
LABEL_9:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = [Strong navigationItem];

    v23 = [v22 titleView];
    if (v23)
    {
      type metadata accessor for TitleWithSubHeadingView();
      if (swift_dynamicCastClass())
      {
        sub_1BA31BD44(a3, v25, v16, v15);
      }
    }
  }

  return result;
}

uint64_t ProfileContextNavigationBarConfiguring.configureDetailRoomProfileContextNavigationBar(context:healthStore:profileIdentifier:title:mode:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, unsigned __int8 a6, void *a7, uint64_t a8)
{
  v9 = a5;
  if (a6 != 1)
  {
    return ProfileContextNavigationBarConfiguring.configureProfileContextNavigationBar(context:healthStore:profileIdentifier:mode:title:)(a1, a2, a3, a6, a4, a5, a7, a8);
  }

  v10 = [v8 navigationItem];
  if (v9)
  {
    v9 = sub_1BA4A6758();
  }

  [v10 setTitle_];

  return 0;
}

uint64_t sub_1BA143B88(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA143C08(255, a2, &qword_1EDC6E200, MEMORY[0x1E69A3108], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA143C08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA142EF8(255, a3, a4);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA143C80(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA143C08(255, a2, &qword_1EBBEA318, MEMORY[0x1E69A3430], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA143CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA142EF8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t HostedProminentMessageWithActionTileViewWithImage.Padding.init(imageTopPadding:imageWidth:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  return result;
}

void static HostedProminentMessageWithActionTileViewWithImage.Padding.defaultConfiguration.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1BA143D64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA143DB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t HostedProminentMessageWithActionTileViewWithImage.Padding.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HostedProminentMessageWithActionTileViewWithImage.Padding.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v6 = sub_1BA4A8298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  v11 = *v4;
  v16 = v4[1];
  v15 = *(v4 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8548();
  v18 = v11;
  v20 = 0;
  sub_1BA013730();
  v12 = v17;
  sub_1BA4A8288();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    sub_1BA4A8238();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t HostedProminentMessageWithActionTileViewWithImage.Padding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  type metadata accessor for HostedProminentMessageWithActionTileViewWithImage.Padding.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = sub_1BA4A81E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8528();
  if (!v5)
  {
    v12 = v18;
    v21 = 0;
    sub_1BA013994();
    sub_1BA4A81C8();
    v13 = v19;
    v21 = 1;
    sub_1BA4A8178();
    (*(v8 + 8))(v11, v7);
    v15 = v19;
    v16 = v20;
    *v12 = v13;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BA1442B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t HostedProminentMessageWithActionTileViewWithImage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = (a4 + *(type metadata accessor for HostedProminentMessageWithActionTileViewWithImage(0, a2, a3, a5) + 36));
  sub_1BA14483C(0, qword_1EBBEC7E0, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel, type metadata accessor for ViewModelState);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  sub_1BA1442B0(a1 + *(v8 + 28), a4, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);

  return sub_1BA14441C(a1);
}

uint64_t sub_1BA14441C(uint64_t a1)
{
  sub_1BA14483C(0, qword_1EBBEC7E0, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel, type metadata accessor for ViewModelState);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HostedProminentMessageWithActionTileViewWithImage.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = type metadata accessor for ProminentMessageWithActionTileViewWithImage(0);
  sub_1BA1442B0(v4, a3 + v9[6], type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a1);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(a1 + 16);
  (*(v7 + 32))(v11 + v10, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v12 = v9[5];
  *(a3 + v12) = swift_getKeyPath();
  sub_1BA14483C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  v14 = (a3 + v9[7]);
  *v14 = sub_1BA144728;
  v14[1] = v11;
  return result;
}

double sub_1BA14467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HostedProminentMessageWithActionTileViewWithImage(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  if (PluginView.actionHandler.getter(v6, WitnessTable))
  {
    (*(a3 + 16))(a2, a3);
  }

  return result;
}

double sub_1BA144728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for HostedProminentMessageWithActionTileViewWithImage(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1BA14467C(v9, v5, v6, v7);
}

void (*sub_1BA1447C0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = HostedProminentMessageWithActionTileViewWithImage.actionHandlerContent.modify();
  return sub_1B9FCDD98;
}

void sub_1BA14483C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA1448AC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA1448E8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1BA14497C(uint64_t a1)
{
  type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1B9F80148();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BA144A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BA144A7C()
{
  result = qword_1EBBEC8E8[0];
  if (!qword_1EBBEC8E8[0])
  {
    type metadata accessor for ProminentMessageWithActionTileViewWithImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBEC8E8);
  }

  return result;
}

double LoggingResponsePillView.viewModel.getter@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;

  return result;
}

__n128 LoggingResponsePillView.init(viewModel:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = a1->n128_u64[0];
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  return result;
}

double LoggingResponsePillView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = sub_1BA4A5798();
  v42 = 0;
  sub_1BA144E4C(v4, v6, v5, &v34);
  v48 = v38;
  v49 = v39;
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v50 = v40;
  v51[0] = v34;
  v51[1] = v35;
  v51[2] = v36;
  v51[3] = v37;
  v51[4] = v38;
  v51[5] = v39;
  v51[6] = v40;
  sub_1BA146558(&v44, v33, sub_1BA1451DC);
  sub_1BA1465D0(v51, sub_1BA1451DC);
  *&v41[55] = v47;
  *&v41[71] = v48;
  *&v41[87] = v49;
  *&v41[103] = v50;
  *&v41[7] = v44;
  *&v41[23] = v45;
  *&v41[39] = v46;
  v8 = v42;
  sub_1BA4A63C8();
  sub_1BA4A5448();
  v9 = sub_1BA4A5B78();
  sub_1BA4A5188();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v43 = 0;
  v18 = sub_1BA4A60D8();
  LOBYTE(v4) = sub_1BA4A5B78();
  sub_1BA145364(0);
  v20 = (a1 + *(v19 + 36));
  v21 = *(sub_1BA4A5438() + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1BA4A5818();
  (*(*(v23 - 8) + 104))(&v20->i8[v21], v22, v23);
  *v20 = vdupq_n_s64(0x4049000000000000uLL);
  sub_1B9F80620(0);
  *(v20->i16 + *(v24 + 36)) = 256;
  v25 = *&v41[80];
  *(a1 + 81) = *&v41[64];
  *(a1 + 97) = v25;
  *(a1 + 113) = *&v41[96];
  v26 = *&v41[16];
  *(a1 + 17) = *v41;
  *(a1 + 33) = v26;
  v27 = *&v41[48];
  *(a1 + 49) = *&v41[32];
  *(a1 + 65) = v27;
  v28 = v38;
  *(a1 + 184) = v37;
  *(a1 + 200) = v28;
  v29 = v40;
  *(a1 + 216) = v39;
  *(a1 + 232) = v29;
  *(a1 + 136) = v34;
  result = *&v35;
  v31 = v36;
  *(a1 + 152) = v35;
  *a1 = v7;
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = v8;
  *(a1 + 128) = *&v41[111];
  *(a1 + 168) = v31;
  *(a1 + 248) = v9;
  *(a1 + 249) = v33[0];
  *(a1 + 252) = *(v33 + 3);
  *(a1 + 256) = v11;
  *(a1 + 264) = v13;
  *(a1 + 272) = v15;
  *(a1 + 280) = v17;
  *(a1 + 288) = 0;
  *(a1 + 292) = *&v32[3];
  *(a1 + 289) = *v32;
  *(a1 + 296) = v18;
  *(a1 + 304) = v4;
  return result;
}

uint64_t sub_1BA144E4C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v41 = a5;
  v7 = sub_1BA4A6138();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x1E6981630], v7, v10);
  v40 = sub_1BA4A6198();
  (*(v8 + 8))(v12, v7);
  sub_1BA4A63C8();
  sub_1BA4A5278();
  *&v43[3] = *&v43[27];
  *&v43[11] = *&v43[35];
  *&v43[19] = *&v43[43];
  v46 = a2;
  v47 = a3;
  sub_1B9F252FC();

  v13 = sub_1BA4A5E18();
  v15 = v14;
  LOBYTE(v7) = v16;
  sub_1BA4A5C18();
  v17 = sub_1BA4A5DE8();
  v19 = v18;
  LOBYTE(v8) = v20;

  sub_1BA102AF4(v13, v15, v7 & 1);

  sub_1BA4A5C48();
  v21 = sub_1BA4A5DA8();
  v23 = v22;
  LOBYTE(v13) = v24;
  sub_1BA102AF4(v17, v19, v8 & 1);

  v25 = v39;
  v26 = sub_1BA4A5DB8();
  v28 = v27;
  LOBYTE(v19) = v29;
  v31 = v30;
  sub_1BA102AF4(v21, v23, v13 & 1);

  v32 = v40;
  v44[0] = v40;
  v44[1] = 0;
  LOWORD(v45[0]) = 1;
  *(v45 + 2) = *v43;
  *(&v45[1] + 2) = *&v43[8];
  *(&v45[2] + 2) = *&v43[16];
  *&v45[3] = *&v43[23];
  *(&v45[3] + 1) = v25;
  v42 = v19 & 1;
  v33 = v40;
  v34 = v45[0];
  v35 = v45[3];
  v36 = v41;
  v37 = v45[1];
  *(v41 + 48) = v45[2];
  *(v36 + 64) = v35;
  *(v36 + 16) = v34;
  *(v36 + 32) = v37;
  *v36 = v33;
  *(v36 + 80) = v26;
  *(v36 + 88) = v28;
  *(v36 + 96) = v19 & 1;
  *(v36 + 104) = v31;
  sub_1BA146558(v44, &v46, sub_1BA14529C);
  sub_1BA1465C0(v26, v28, v19 & 1);

  sub_1BA102AF4(v26, v28, v19 & 1);

  v46 = v32;
  v47 = 0;
  v48 = 1;
  v49 = *v43;
  v50 = *&v43[8];
  *v51 = *&v43[16];
  *&v51[14] = *&v43[23];
  v52 = v25;
  return sub_1BA1465D0(&v46, sub_1BA14529C);
}

void sub_1BA1451DC(uint64_t a1)
{
  if (!qword_1EBBEC970)
  {
    sub_1BA145234(255);
    v1 = sub_1BA4A6428();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC970);
    }
  }
}

void sub_1BA145234(uint64_t a1)
{
  if (!qword_1EBBEC978)
  {
    sub_1BA14529C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEC978);
    }
  }
}

void sub_1BA1452D8(uint64_t a1)
{
  if (!qword_1EDC5F018)
  {
    sub_1BA1455E0(255, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F018);
    }
  }
}

void sub_1BA145364(uint64_t a1)
{
  if (!qword_1EBBEC990)
  {
    sub_1BA145404(255, &qword_1EBBEC998, sub_1BA145498, &qword_1EDC5ECD0, MEMORY[0x1E6980460]);
    sub_1B9F80620(255);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC990);
    }
  }
}

void sub_1BA145404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1BA1455E0(255, a4, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], a5);
    v8 = sub_1BA4A5418();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA1454C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1BA4A5418();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA14554C(uint64_t a1)
{
  if (!qword_1EBBEC9B0)
  {
    sub_1BA1451DC(255);
    sub_1B9F8A89C(&qword_1EBBEC9B8, sub_1BA1451DC, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC9B0);
    }
  }
}

void sub_1BA1455E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

double LoggingResponsePillView.icon.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A6138();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + 24);
  (*(v4 + 104))(v8, *MEMORY[0x1E6981630], v3, v6);
  v10 = sub_1BA4A6198();
  (*(v4 + 8))(v8, v3);
  sub_1BA4A63C8();
  sub_1BA4A5278();
  *&v13[8] = v15;
  *&v13[24] = v16;
  *&v13[40] = v17;
  v11 = *&v13[18];
  *(a1 + 18) = *&v13[2];
  v14 = 1;
  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v11;
  *(a1 + 50) = *&v13[34];
  *(a1 + 64) = *&v13[48];
  *(a1 + 72) = v9;

  return result;
}

void LoggingResponsePillView.title.getter(uint64_t a1@<X8>)
{
  sub_1B9F252FC();

  v2 = sub_1BA4A5E18();
  v4 = v3;
  v6 = v5;
  sub_1BA4A5C18();
  v7 = sub_1BA4A5DE8();
  v9 = v8;
  v11 = v10;

  sub_1BA102AF4(v2, v4, v6 & 1);

  sub_1BA4A5C48();
  v12 = sub_1BA4A5DA8();
  v14 = v13;
  v16 = v15;
  sub_1BA102AF4(v7, v9, v11 & 1);

  v17 = sub_1BA4A5DB8();
  v19 = v18;
  LOBYTE(v7) = v20;
  v22 = v21;
  sub_1BA102AF4(v12, v14, v16 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v22;
}

uint64_t LoggingResponsePillView.ViewModel.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void LoggingResponsePillView.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t static LoggingResponsePillView.ViewModel.positive(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A6128();

  result = sub_1BA4A60B8();
  *a3 = v6;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.ViewModel.negative(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A6128();

  result = sub_1BA4A6098();
  *a3 = v6;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.ViewModel.logged.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A60B8();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.ViewModel.taken.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A60B8();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.ViewModel.skipped.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A6098();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.logged.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A60B8();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.taken.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A60B8();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t static LoggingResponsePillView.skipped.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = sub_1BA4A6128();
  result = sub_1BA4A6098();
  *a1 = v5;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t sub_1BA146074(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BA1460BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BA14610C()
{
  result = qword_1EBBEC9C0;
  if (!qword_1EBBEC9C0)
  {
    sub_1BA145364(255);
    sub_1BA1461BC();
    sub_1B9F8A89C(&qword_1EDC5F338, sub_1B9F80620, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC9C0);
  }

  return result;
}

unint64_t sub_1BA1461BC()
{
  result = qword_1EBBEC9C8;
  if (!qword_1EBBEC9C8)
  {
    v1 = MEMORY[0x1E6980460];
    sub_1BA145404(255, &qword_1EBBEC998, sub_1BA145498, &qword_1EDC5ECD0, MEMORY[0x1E6980460]);
    sub_1BA1464D8(&qword_1EBBEC9D0, sub_1BA145498, sub_1BA1462E0);
    sub_1BA146390(&qword_1EDC5ECD8, &qword_1EDC5ECD0, v1, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC9C8);
  }

  return result;
}

unint64_t sub_1BA1462E0()
{
  result = qword_1EBBEC9D8;
  if (!qword_1EBBEC9D8)
  {
    sub_1BA145524(255);
    sub_1B9F8A89C(&qword_1EBBEC9E0, sub_1BA14554C, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC9D8);
  }

  return result;
}

uint64_t sub_1BA146390(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA1455E0(255, a2, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA1463E8()
{
  result = qword_1EBBEC9E8;
  if (!qword_1EBBEC9E8)
  {
    sub_1BA14529C(255);
    sub_1BA1464D8(&qword_1EDC5F020, sub_1BA1452D8, sub_1BA0D6A80);
    sub_1BA146390(&qword_1EBBEC9F0, &qword_1EBBEC988, MEMORY[0x1E6980480], MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC9E8);
  }

  return result;
}

uint64_t sub_1BA1464D8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1BA146558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1BA1465C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1BA1465D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall UICollectionView.registerFakeCells()()
{
  sub_1B9F23D88();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E38(v0, v1);

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E38(v2, v3);
}

double sub_1BA1466BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  UICollectionView.register<A>(_:elementKind:)(v6, v6, v7, a2, a3);

  return result;
}

id static ReusableNibView.nib.getter(uint64_t a1)
{
  swift_getMetatypeMetadata();
  sub_1BA4A6808();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1BA4A6758();

  v4 = [objc_opt_self() nibWithNibName:v3 bundle:v2];

  return v4;
}

void UICollectionView.register<A>(_:elementKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = swift_conformsToProtocol2();
  if (v9 && a4)
  {
    v10 = v9;
    v11 = (*(v9 + 24))(a4, v9);
    v12 = sub_1BA4A6758();
    (*(*(v10 + 16) + 8))(a4);
    v14 = sub_1BA4A6758();

    [v6 registerNib:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v14];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = sub_1BA4A6758();
    (*(a5 + 8))(a4, a5);
    v14 = sub_1BA4A6758();

    [v6 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v12 withReuseIdentifier:v14];
  }
}

uint64_t sub_1BA146988()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC9F8 = result;
  unk_1EBBECA00 = v1;
  return result;
}

uint64_t sub_1BA146A34()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECA08 = result;
  unk_1EBBECA10 = v1;
  return result;
}

uint64_t sub_1BA146AE0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECA18 = result;
  unk_1EBBECA20 = v1;
  return result;
}

void *sub_1BA146B8C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CBB0 != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  v8 = __swift_project_value_buffer(v5, qword_1EDC6CBB8);
  sub_1BA14DCE4(v8, v7, type metadata accessor for ListLayoutConfiguration);
  *(v7 + 3) = xmmword_1BA4C07B0;
  *(v7 + 4) = xmmword_1BA4C07C0;
  v9 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA14DD4C(v7, type metadata accessor for ListLayoutConfiguration);
  return v9;
}

uint64_t sub_1BA146CA4()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1BA14D7C8(0, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v163 = &v162 - v5;
  sub_1BA14D7C8(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v2);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v164 = &v162 - v8;
  sub_1BA14D7C8(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, v2);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v162 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v174 = &v162 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v181 = &v162 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v186 = &v162 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v162 - v28;
  v30 = sub_1BA4A1C68();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v171 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v162 - v36;
  v192 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v182 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192, v38);
  v194 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v193 = &v162 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v191 = &v162 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v187 = &v162 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  *&v172 = &v162 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v162 - v54;
  v56 = v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v58 = result;
  v183 = v55;
  v165 = v16;
  v185 = v12;
  v59 = *(v56 + 8);
  ObjectType = swift_getObjectType();
  v61 = *(v59 + 8);
  v170 = v58;
  v184 = v59;
  v62 = v61(ObjectType, v59);
  swift_beginAccess();
  v63 = *(v62 + 24);
  v64 = v63[2];
  if (v64)
  {
    v65 = sub_1BA0219CC(v63[2], 0);
    sub_1BA023688(&v196, v65 + ((*(v182 + 80) + 32) & ~*(v182 + 80)), v64, v63);
    v190 = v66;
    v189 = *(&v196 + 1);
    v67 = v196;
    v180 = *(&v197 + 1);
    v188 = v197;
    v179 = v198;

    result = sub_1B9F52E48(v67);
    if (v190 != v64)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
  }

  v68 = sub_1BA024284(v65);

  v69 = v68[2];
  v70 = v183;
  if (v69)
  {
    v71 = sub_1BA0219CC(v68[2], 0);
    sub_1BA023688(&v196, &v71[(*(v182 + 80) + 32) & ~*(v182 + 80)], v69, v68);
    v73 = v72;
    sub_1B9F52E48(v196);
    if (v73 == v69)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v71 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v74 = *(v71 + 2);
  v179 = OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds;
  v180 = v1;
  v178 = v74;
  if (v74)
  {
    v75 = 0;
    v190 = v1 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter;
    v169 = (v31 + 16);
    v168 = (v31 + 32);
    v167 = *MEMORY[0x1E69A3B68];
    v166 = (v31 + 104);
    v175 = (v31 + 8);
    v173 = MEMORY[0x1E69E7CC0];
    v177 = v29;
    v176 = v71;
    while (1)
    {
      if (v75 >= *(v71 + 2))
      {
        __break(1u);
        goto LABEL_96;
      }

      v189 = (*(v182 + 80) + 32) & ~*(v182 + 80);
      v188 = *(v182 + 72);
      sub_1BA14DCE4(&v71[v189 + v188 * v75], v70, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v76 = *(v1 + v179);
      v69 = &qword_1EBBE9CB0;
      sub_1BA14DDAC(v70 + *(v192 + 40), v29, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v77 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      if ((*(*(v77 - 8) + 48))(v29, 1, v77) == 1)
      {
        sub_1BA14D988(v29, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        (*v166)(v37, v167, v30);
      }

      else
      {
        v78 = &v29[*(v77 + 40)];
        v79 = v171;
        (*v169)(v171, v78, v30);
        sub_1BA14DD4C(v29, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        (*v168)(v37, v79, v30);
      }

      v80 = 0;
      ++v75;
      v81 = *(v76 + 16);
      do
      {
        v82 = v80;
        if (v81 == v80)
        {
          break;
        }

        ++v80;
        sub_1BA14D82C();
        v69 = v30;
      }

      while ((sub_1BA4A6728() & 1) == 0);
      (*v175)(v37, v30);
      v83 = *v190;
      v70 = v183;
      if (*v190)
      {
        if (v81 != v82)
        {
          v69 = *(v190 + 8);

          v84 = v83(v70);
          sub_1B9F0E310(v83, v69);
          if (v84)
          {
LABEL_26:
            sub_1BA14D9F8(v70, v172, type metadata accessor for SummarySharingSelectableDataTypeItem);
            v85 = v173;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v196 = v85;
            v1 = v180;
            v29 = v177;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v69 = &v196;
              sub_1BA066E50(0, *(v85 + 16) + 1, 1);
              v85 = v196;
            }

            v88 = *(v85 + 16);
            v87 = *(v85 + 24);
            v89 = v85;
            if (v88 >= v87 >> 1)
            {
              v69 = &v196;
              sub_1BA066E50((v87 > 1), v88 + 1, 1);
              v89 = v196;
            }

            *(v89 + 16) = v88 + 1;
            v173 = v89;
            sub_1BA14D9F8(v172, v89 + v189 + v88 * v188, type metadata accessor for SummarySharingSelectableDataTypeItem);
            goto LABEL_13;
          }
        }
      }

      else if (v81 != v82)
      {
        goto LABEL_26;
      }

      sub_1BA14DD4C(v70, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v1 = v180;
      v29 = v177;
LABEL_13:
      v71 = v176;
      if (v75 == v178)
      {
        goto LABEL_32;
      }
    }
  }

  v173 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v90 = v173;
  v91 = *(v173 + 16);
  if (v91)
  {
    goto LABEL_33;
  }

  v150 = v164;
  sub_1BA14DDAC(v1 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, v164, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v151 = type metadata accessor for SummarySharingSelectionFlow(0);
  if ((*(*(v151 - 8) + 48))(v150, 1, v151) == 1)
  {
    sub_1BA14D988(v150, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
    v90 = v173;
    v91 = *(v173 + 16);
    if (v91)
    {
LABEL_33:
      *&v196 = MEMORY[0x1E69E7CC0];
      v92 = v90;
      sub_1BA066E50(0, v91, 0);
      v69 = v196;
      v188 = (*(v182 + 80) + 32) & ~*(v182 + 80);
      v93 = v92 + v188;
      v176 = "LOGGING_RESPONSE_SKIPPED_TITLE";
      v183 = *(v182 + 72);
      v171 = "HEALTH_ALERT_TITLE_%@";
      v175 = *MEMORY[0x1E696B5F0];
      v172 = xmmword_1BA4B5480;
      while (1)
      {
        v190 = v91;
        v189 = v69;
        v94 = v191;
        sub_1BA14DCE4(v93, v191, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v95 = v94;
        v96 = v193;
        sub_1BA14DCE4(v95, v193, type metadata accessor for SummarySharingSelectableDataTypeItem);
        *(v96 + 48) = 0;
        *(v96 + 40) = v184;
        swift_unknownObjectWeakAssign();
        v97 = v96;
        v98 = v194;
        sub_1BA14DCE4(v97, v194, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v99 = *(v192 + 40);
        v100 = v98 + v99;
        v101 = v186;
        sub_1BA14DDAC(v100, v186, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v102 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
        v103 = *(*(v102 - 8) + 48);
        if (v103(v101, 1, v102) == 1)
        {
          sub_1BA14D988(v101, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        else
        {
          v104 = *(v101 + 8);
          v105 = v104;
          sub_1BA14DD4C(v101, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          if (v104)
          {
            if (qword_1EBBE88F0 != -1)
            {
              swift_once();
            }

            v106 = off_1EBBF1890;
            v107 = [v105 identifier];
            v108 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v110 = v109;

            if (v106[2])
            {
              sub_1B9F24A34(v108, v110);
              v112 = v111;

              if (v112)
              {
                v113 = qword_1EDC5E100;

                if (v113 != -1)
                {
                  swift_once();
                }

                v114 = qword_1EDC84A30;
                v115 = sub_1BA4A6758();

                v116 = [objc_opt_self() imageNamed:v115 inBundle:v114];

                if (v116)
                {
                  goto LABEL_57;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }
        }

        v117 = v181;
        sub_1BA14DDAC(v194 + v99, v181, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v103(v117, 1, v102) == 1)
        {
          sub_1BA14D988(v117, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        else
        {
          v116 = *(v117 + 48);
          v118 = v116;
          sub_1BA14DD4C(v117, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          if (v116)
          {
            goto LABEL_57;
          }
        }

        v119 = v174;
        sub_1BA14DDAC(v194 + v99, v174, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v103(v119, 1, v102) == 1)
        {
          sub_1BA14D988(v119, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          v120 = 0;
        }

        else
        {
          v120 = *(v119 + 56);
          sub_1BA14DD4C(v119, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        v116 = [v120 largeListIcon];

        if (!v116)
        {
          v121 = v165;
          sub_1BA14DDAC(v194 + v99, v165, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          if (v103(v121, 1, v102) == 1)
          {
            sub_1BA14D988(v121, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
            v116 = 0;
          }

          else
          {
            v122 = *(v121 + 56);
            sub_1BA14DD4C(v121, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
            v116 = [v122 listIcon];
          }
        }

LABEL_57:
        sub_1BA14DD4C(v194, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v123 = (v193 + *(v192 + 40));
        if (!v103(v123, 1, v102))
        {
          v124 = v123[6];
          v123[6] = v116;
          v116 = v124;
        }

        v125 = v185;
        sub_1BA14DDAC(v123, v185, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v103(v125, 1, v102) != 1)
        {
          v128 = *(v125 + 16);
          v127 = *(v125 + 24);

          sub_1BA14DD4C(v125, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          if (v127)
          {
            if (!v103(v123, 1, v102))
            {
              v132 = v123[1];
              if (v132)
              {
                v179 = v128;
                sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], 1);
                v133 = swift_allocObject();
                *(v133 + 16) = v172;
                v134 = v132;
                v135 = [v134 identifier];
                v136 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
                v178 = v137;

                *(v133 + 56) = MEMORY[0x1E69E6158];
                *(v133 + 64) = sub_1B9F1BE20();
                v138 = v178;
                *(v133 + 32) = v136;
                *(v133 + 40) = v138;
                v177 = sub_1BA4A67D8();
                v178 = v139;
                v140 = [v134 identifier];
                v141 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
                v143 = v142;

                if (v141 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v143 == v144)
                {

                  goto LABEL_75;
                }

                v145 = sub_1BA4A8338();

                if (v145)
                {
LABEL_75:
                  if (qword_1EDC5E100 == -1)
                  {
LABEL_78:
                    v179 = sub_1BA4A1318();
                    v147 = v146;

                    sub_1BA14DD4C(v191, type metadata accessor for SummarySharingSelectableDataTypeItem);
                    if (!v103(v123, 1, v102))
                    {
                      v123[2] = v179;
                      v123[3] = v147;
                    }

                    goto LABEL_65;
                  }
                }

                else if (qword_1EDC5E100 == -1)
                {
                  goto LABEL_78;
                }

                swift_once();
                goto LABEL_78;
              }
            }
          }

          sub_1BA14DD4C(v191, type metadata accessor for SummarySharingSelectableDataTypeItem);
LABEL_65:
          v126 = v187;
          v69 = v189;
          goto LABEL_66;
        }

        sub_1BA14DD4C(v191, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA14D988(v125, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v126 = v187;
        v69 = v189;
LABEL_66:
        sub_1BA14D9F8(v193, v126, type metadata accessor for SummarySharingSelectableDataTypeItem);
        *&v196 = v69;
        v130 = v69[2];
        v129 = v69[3];
        if (v130 >= v129 >> 1)
        {
          sub_1BA066E50((v129 > 1), v130 + 1, 1);
          v69 = v196;
        }

        v69[2] = v130 + 1;
        v131 = v183;
        sub_1BA14D9F8(v126, v69 + v188 + v130 * v183, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v93 += v131;
        v91 = v190 - 1;
        if (v190 == 1)
        {

          goto LABEL_83;
        }
      }
    }

    v69 = MEMORY[0x1E69E7CC0];
LABEL_83:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_96:
      v69 = sub_1BA2F67E8(v69);
    }

    v148 = v69[2];
    *&v196 = v69 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
    *(&v196 + 1) = v148;
    sub_1BA14B0D4(&v196);
    v149 = sub_1B9FE53EC(v69);

    sub_1BA0EB668(0, v149, 1);

    return swift_unknownObjectRelease();
  }

  else
  {

    sub_1BA14D988(v150, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
    v152 = *(v1 + v179);

    v154 = sub_1B9F866AC(v153);

    v155 = *(v154 + 16);

    if (v155 == 1)
    {
      v156 = v163;
      if (*(v152 + 16))
      {
        (*(v31 + 16))(v163, v152 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v30);
        v157 = 0;
      }

      else
      {
        v157 = 1;
      }
    }

    else
    {
      v157 = 1;
      v156 = v163;
    }

    (*(v31 + 56))(v156, v157, 1, v30);
    sub_1BA38B674(v156, &v196);
    sub_1B9F1B4AC(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_1BA4B5480;
    *(v158 + 56) = &type metadata for SummarySharingIconWithNameItem;
    *(v158 + 64) = sub_1BA14D884();
    v159 = swift_allocObject();
    *(v158 + 32) = v159;
    v160 = v197;
    v159[1] = v196;
    v159[2] = v160;
    v161 = v199;
    v159[3] = v198;
    v159[4] = v161;
    sub_1BA14D8D8(&v196, v195);
    sub_1BA0EB668(0, v158, 1);
    swift_unknownObjectRelease();

    sub_1BA14D934(&v196);
    return sub_1BA14D988(v156, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
  }
}

BOOL sub_1BA148504(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  sub_1BA14D7C8(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - v16;
  v18 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v19 = *(v18 + 40);
  v60 = a1;
  sub_1BA14DDAC(a1 + v19, v17, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v20 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v17, 1, v20) == 1)
  {
    goto LABEL_2;
  }

  v23 = *(v17 + 7);
  v58 = v23;
  sub_1BA14DD4C(v17, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v23)
  {
    return 0;
  }

  v24 = *(v18 + 40);
  sub_1BA14DDAC(v61 + v24, v13, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v21(v13, 1, v20) == 1)
  {

    v22 = v13;
    goto LABEL_6;
  }

  v26 = *(v13 + 7);
  v27 = v26;
  sub_1BA14DD4C(v13, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v26)
  {
LABEL_28:

    return 0;
  }

  v55 = v24;
  v28 = [v58 displayName];
  v56 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v30 = v29;

  v57 = v27;
  v31 = [v27 displayName];
  v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v34 = v33;

  if (v56 == v32 && v30 == v34)
  {
  }

  else
  {
    v36 = sub_1BA4A8338();

    if ((v36 & 1) == 0)
    {
      v37 = v58;
      v38 = [v58 displayName];
      v39 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v41 = v40;

      v64 = v39;
      v65 = v41;
      v42 = v57;
      v43 = [v57 displayName];
      v44 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v46 = v45;

      v62 = v44;
      v63 = v46;
      sub_1B9F252FC();
      v47 = sub_1BA4A7B78();

      return v47 == -1;
    }
  }

  sub_1BA14DDAC(v60 + v19, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v21(v9, 1, v20) == 1)
  {

    v22 = v9;
    goto LABEL_6;
  }

  v49 = *(v9 + 2);
  v50 = *(v9 + 3);

  sub_1BA14DD4C(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v50)
  {
LABEL_27:

    goto LABEL_28;
  }

  v17 = v59;
  sub_1BA14DDAC(v61 + v55, v59, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v21(v17, 1, v20) == 1)
  {

LABEL_2:
    v22 = v17;
LABEL_6:
    sub_1BA14D988(v22, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  v52 = *(v17 + 2);
  v51 = *(v17 + 3);

  sub_1BA14DD4C(v17, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v51)
  {

    goto LABEL_27;
  }

  v64 = v49;
  v65 = v50;
  v62 = v52;
  v63 = v51;
  sub_1B9F252FC();
  v53 = sub_1BA4A7B78();

  return v53 == -1;
}

uint64_t sub_1BA148B18()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore));

  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter + 8));
  sub_1BA14D988(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate;

  return sub_1B9FAB600(v1);
}

uint64_t SummarySharingSelectedDataTypesDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore));

  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter + 8));
  sub_1BA14D988(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate);
  return v0;
}

uint64_t SummarySharingSelectedDataTypesDataSource.__deallocating_deinit()
{
  SummarySharingSelectedDataTypesDataSource.deinit();

  return swift_deallocClassInstance();
}

void SummarySharingSelectedDataTypesDataSource.supplementaryItem(ofKind:at:)(uint64_t *a1@<X8>)
{
  v2 = v1;
  v104 = *v1;
  v4 = sub_1BA4A3EA8();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA14D7C8(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v99 - v10;
  v12 = type metadata accessor for SummarySharingSelectionFlow(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v102 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v103 = &v99 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v99 - v21;
  sub_1BA14DDAC(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, v11, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BA14D988(v11, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
    v23 = v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle;
    v25 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
    v24 = *(v23 + 1);
    a1[3] = &type metadata for CollectionViewHeaderItem;
    a1[4] = sub_1BA0473B0();
    v26 = swift_allocObject();
    *a1 = v26;
    v111 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA14DB00(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v26 + 16) = sub_1BA4A6808();
    *(v26 + 24) = v27;
    *(v26 + 32) = v25;
    *(v26 + 40) = v24;
    *(v26 + 48) = sub_1BA09AE24;
    *(v26 + 56) = 0;
    *(v26 + 64) = 1;
    *(v26 + 72) = 1;
    *(v26 + 144) = 0;
    *(v26 + 80) = 0u;
    *(v26 + 96) = 0u;
    *(v26 + 112) = 0u;
    *(v26 + 121) = 0u;
    v111 = v25;
    v112 = v24;
    v109 = 32;
    v110 = 0xE100000000000000;
    v107 = 0;
    v108 = 0xE000000000000000;
    sub_1B9F252FC();

    v28 = MEMORY[0x1E69E6158];
    v29 = sub_1BA4A7B58();
    v31 = v30;
    sub_1B9F1C048(0, &qword_1EDC6E330, v28);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BA4B5480;
    *(v32 + 32) = v29;
    *(v32 + 40) = v31;

    v33 = sub_1BA4A6AE8();

    v34 = HKUIJoinStringsForAutomationIdentifier();

    if (v34)
    {

      v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v37 = v36;

      *(v26 + 152) = v35;
      *(v26 + 160) = v37;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  v101 = a1;
  sub_1BA14D9F8(v11, v22, type metadata accessor for SummarySharingSelectionFlow);
  if (*(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) != 1 || (v38 = , v39 = sub_1B9F866AC(v38), , v40 = *(v39 + 16), , v40 != 1))
  {
    sub_1BA4A3D88();
    v61 = sub_1BA4A3E88();
    v62 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = v22;
      v65 = swift_slowAlloc();
      v111 = v65;
      *v63 = 136315138;
      v66 = sub_1BA4A85D8();
      v68 = sub_1B9F0B82C(v66, v67, &v111);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_1B9F07000, v61, v62, "[%s] Data source contains multiple content kinds; we do not want to provide an edit button here", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v69 = v65;
      v22 = v64;
      MEMORY[0x1BFAF43A0](v69, -1, -1);
      MEMORY[0x1BFAF43A0](v63, -1, -1);
    }

    (*(v105 + 8))(v7, v106);
    v71 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
    v70 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle + 8);
    v72 = v101;
    v101[3] = &type metadata for CollectionViewHeaderItem;
    v72[4] = sub_1BA0473B0();
    v73 = swift_allocObject();
    *v72 = v73;
    v111 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA14DB00(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v73 + 16) = sub_1BA4A6808();
    *(v73 + 24) = v74;
    *(v73 + 32) = v71;
    *(v73 + 40) = v70;
    *(v73 + 48) = sub_1BA09AE24;
    *(v73 + 56) = 0;
    *(v73 + 64) = 1;
    *(v73 + 72) = 1;
    *(v73 + 144) = 0;
    *(v73 + 80) = 0u;
    *(v73 + 96) = 0u;
    *(v73 + 112) = 0u;
    *(v73 + 121) = 0u;
    v111 = v71;
    v112 = v70;
    v109 = 32;
    v110 = 0xE100000000000000;
    v107 = 0;
    v108 = 0xE000000000000000;
    sub_1B9F252FC();

    v75 = MEMORY[0x1E69E6158];
    v76 = sub_1BA4A7B58();
    v78 = v77;
    sub_1B9F1C048(0, &qword_1EDC6E330, v75);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1BA4B5480;
    *(v79 + 32) = v76;
    *(v79 + 40) = v78;

    v80 = sub_1BA4A6AE8();

    v81 = HKUIJoinStringsForAutomationIdentifier();

    if (!v81)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v82 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v84 = v83;

    *(v73 + 152) = v82;
    *(v73 + 160) = v84;
    v85 = v22;
LABEL_14:
    sub_1BA14DD4C(v85, type metadata accessor for SummarySharingSelectionFlow);
    return;
  }

  v41 = v103;
  sub_1BA14DCE4(v22, v103, type metadata accessor for SummarySharingSelectionFlow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  v44 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle + 8);
  if (EnumCaseMultiPayload != 2)
  {
    v86 = v101;
    v101[3] = &type metadata for CollectionViewHeaderItem;
    v86[4] = sub_1BA0473B0();
    v87 = swift_allocObject();
    *v86 = v87;
    v111 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA14DB00(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v87 + 16) = sub_1BA4A6808();
    *(v87 + 24) = v88;
    *(v87 + 32) = v43;
    *(v87 + 40) = v44;
    *(v87 + 48) = sub_1BA09AE24;
    *(v87 + 56) = 0;
    *(v87 + 64) = 1;
    *(v87 + 72) = 1;
    *(v87 + 144) = 0;
    *(v87 + 80) = 0u;
    *(v87 + 96) = 0u;
    *(v87 + 112) = 0u;
    *(v87 + 121) = 0u;
    v111 = v43;
    v112 = v44;
    v109 = 32;
    v110 = 0xE100000000000000;
    v107 = 0;
    v108 = 0xE000000000000000;
    sub_1B9F252FC();

    v89 = MEMORY[0x1E69E6158];
    v90 = sub_1BA4A7B58();
    v92 = v91;
    sub_1B9F1C048(0, &qword_1EDC6E330, v89);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1BA4B5480;
    *(v93 + 32) = v90;
    *(v93 + 40) = v92;

    v94 = sub_1BA4A6AE8();

    v95 = HKUIJoinStringsForAutomationIdentifier();

    if (!v95)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v96 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v98 = v97;

    *(v87 + 152) = v96;
    *(v87 + 160) = v98;
    sub_1BA14DD4C(v22, type metadata accessor for SummarySharingSelectionFlow);
    v85 = v41;
    goto LABEL_14;
  }

  v106 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  v45 = v22;
  v46 = v101;
  if (qword_1EBBE83E8 != -1)
  {
    swift_once();
  }

  v47 = unk_1EBBECA20;
  v103 = qword_1EBBECA18;
  LODWORD(v105) = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled);
  v48 = swift_allocObject();
  swift_weakInit();
  v100 = v45;
  v49 = v102;
  sub_1BA14DCE4(v45, v102, type metadata accessor for SummarySharingSelectionFlow);
  v50 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v48;
  sub_1BA14D9F8(v49, v51 + v50, type metadata accessor for SummarySharingSelectionFlow);
  *(v51 + ((v14 + v50 + 7) & 0xFFFFFFFFFFFFFFF8)) = v104;
  v46[3] = &type metadata for CollectionViewHeaderWithLinkItem;
  v46[4] = sub_1BA09A7A4();
  v52 = swift_allocObject();
  *v46 = v52;
  v111 = type metadata accessor for CollectionViewHeaderWithLinkCell();
  sub_1BA14DB00(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);

  v53 = sub_1BA4A6808();
  v55 = v54;
  v111 = 0;
  v112 = 0xE000000000000000;

  v56 = v47;

  sub_1BA4A7DF8();

  v111 = 0xD000000000000013;
  v112 = 0x80000001BA4E76C0;
  v57 = v106;
  MEMORY[0x1BFAF1350](v106, v44);
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v58 = v103;
  MEMORY[0x1BFAF1350](v103, v56);

  v59 = v111;
  v60 = v112;
  *(v52 + 16) = v53;
  *(v52 + 24) = v55;
  *(v52 + 32) = v59;
  *(v52 + 40) = v60;
  *(v52 + 48) = v57;
  *(v52 + 56) = v44;
  *(v52 + 64) = sub_1BA09AE24;
  *(v52 + 72) = 0;
  *(v52 + 80) = 1;
  *(v52 + 88) = 1;
  *(v52 + 96) = 0u;
  *(v52 + 112) = 0u;
  *(v52 + 128) = 0u;
  *(v52 + 137) = 0u;
  *(v52 + 160) = 0;
  *(v52 + 168) = v58;
  *(v52 + 176) = v56;
  *(v52 + 184) = v105;
  *(v52 + 192) = sub_1BA14DA60;
  *(v52 + 200) = v51;
  *(v52 + 208) = 0;
  *(v52 + 216) = 0;
  sub_1BA14DD4C(v100, type metadata accessor for SummarySharingSelectionFlow);
}

void sub_1BA14999C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v144 = a4;
  v148 = a3;
  v151 = sub_1BA4A3EA8();
  v149 = *(v151 - 1);
  MEMORY[0x1EEE9AC00](v151, v5);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for SummarySharingSelectionFlow(0);
  v143 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v8);
  v10 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v150 = &v139 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v147 = &v139 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v139 - v19;
  v21 = MEMORY[0x1E69E6720];
  sub_1BA14D7C8(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v139 - v24;
  sub_1BA14D7C8(0, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08], v21);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v139 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v139 - v36;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!a1)
    {

      return;
    }

    v140 = v20;
    v146 = v37;
    v145 = a1;
    v142 = Strong;
    v141 = OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds;
    v39 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds);
    v40 = *(v39 + 16);
    v41 = sub_1BA4A1C68();
    v42 = *(v41 - 8);
    v43 = v42;
    if (v40)
    {
      v44 = v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v45 = v146;
      (*(v42 + 16))(v146, v44, v41);
      (*(v43 + 56))(v45, 0, 1, v41);
      sub_1BA14DDAC(v45, v33, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
      v46 = (*(v43 + 88))(v33, v41);
      if (v46 == *MEMORY[0x1E69A3B68])
      {
        v47 = v142;
        sub_1B9F0A534(v142 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore, v158);
        v48 = v47 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate;
        v49 = swift_unknownObjectWeakLoadStrong();
        v50 = v152;
        v144 = v48;
        if (v49)
        {
          v51 = *(v48 + 8);
          ObjectType = swift_getObjectType();
          v53 = *(v51 + 8);
          v54 = v145;
          v55 = v53(ObjectType, v51);
          swift_unknownObjectRelease();
          v56 = v148;
        }

        else
        {
          v56 = v148;
          sub_1BA14DCE4(v148, v25, type metadata accessor for SummarySharingSelectionFlow);
          (*(v143 + 56))(v25, 0, 1, v50);
          type metadata accessor for SummarySharingSelectedDataTypesContext(0);
          swift_allocObject();
          v79 = v145;
          v55 = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(MEMORY[0x1E69E7CC0], v25);
        }

        v80 = v150;
        sub_1BA14DCE4(v56, v150, type metadata accessor for SummarySharingSelectionFlow);
        v81 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
        v82 = objc_allocWithZone(type metadata accessor for SummarySharingDataTypeSelectionViewController(0));
        *&v82[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v82[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
        sub_1B9F0A534(v158, &v82[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore]);
        *&v82[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories] = 0;
        sub_1BA14DCE4(v80, &v82[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow], type metadata accessor for SummarySharingSelectionFlow);
        v83 = &v82[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact];
        *v83 = 0u;
        *(v83 + 1) = 0u;
        *(v83 + 4) = 0;
        *&v82[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher] = 0;
        *&v82[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext] = v55;
        sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_1BA4B5470;
        sub_1B9F0A534(v158, &v157);
        v85 = v147;
        sub_1BA14DCE4(v80, v147, type metadata accessor for SummarySharingSelectionFlow);
        v153 = 1;
        type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
        v155 = 0u;
        memset(v156, 0, sizeof(v156));
        v154 = 0u;
        swift_allocObject();
        v149 = v55;

        v148 = v81;
        *(v84 + 32) = sub_1BA3094BC(&v157, v81, MEMORY[0x1E69E7CC0], 1, 0, v85, MEMORY[0x1E69E7CC0], 0, 0, &v153, 1u);
        sub_1BA14DCE4(v80, v10, type metadata accessor for SummarySharingSelectionFlow);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1BA14DD4C(v10, type metadata accessor for SummarySharingSelectionFlow);
        }

        *&v82[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources] = v84;

        v86 = sub_1B9FE98D4();

        v153 = v86;
        sub_1B9FE20B8(MEMORY[0x1E69E7CC0]);
        v87 = v153;
        type metadata accessor for CompoundSectionedDataSource(0);
        swift_allocObject();
        v88 = CompoundSectionedDataSource.init(_:)(v87);
        v89 = CompoundDataSourceCollectionViewController.init(dataSource:)(v88);
        v153 = v149[6];
        v90 = MEMORY[0x1E695BF70];
        sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
        sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v90, MEMORY[0x1E695BF88]);
        v91 = v89;
        v153 = sub_1BA4A4F98();
        v92 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v93 = swift_allocObject();
        *(v93 + 16) = sub_1BA10E0DC;
        *(v93 + 24) = v92;
        v94 = MEMORY[0x1E695BED0];
        sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
        sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v94, MEMORY[0x1E695BED8]);
        sub_1BA4A5148();

        swift_beginAccess();
        sub_1BA14D7C8(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
        sub_1BA091D04();
        sub_1BA4A4D38();
        swift_endAccess();

        v95 = *&v91[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
        if (v95 >> 62)
        {
LABEL_44:
          v96 = sub_1BA4A7CC8();
        }

        else
        {
          v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v96)
        {
          v97 = 0;
          v152 = v95 & 0xC000000000000001;
          v151 = (v95 & 0xFFFFFFFFFFFFFF8);
          do
          {
            if (v152)
            {
              v98 = MEMORY[0x1BFAF2860](v97, v95);
              v99 = v97 + 1;
              if (__OFADD__(v97, 1))
              {
LABEL_31:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v97 >= v151[2])
              {
                __break(1u);
                goto LABEL_44;
              }

              v98 = *(v95 + 8 * v97 + 32);

              v99 = v97 + 1;
              if (__OFADD__(v97, 1))
              {
                goto LABEL_31;
              }
            }

            *(*(v98 + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
            swift_unknownObjectWeakAssign();
            type metadata accessor for SummarySharingSelectionContextDelegate();
            v100 = swift_allocObject();
            *(v100 + 24) = 0;
            swift_unknownObjectWeakInit();
            *(v100 + 24) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
            swift_unknownObjectWeakAssign();
            v101 = v91;
            sub_1BA29AAC4(v100);
            sub_1BA2FE7FC();

            ++v97;
          }

          while (v99 != v96);
        }

        sub_1BA14DD4C(v150, type metadata accessor for SummarySharingSelectionFlow);
        __swift_destroy_boxed_opaque_existential_1(v158);
        v102 = v144;
        swift_unknownObjectWeakLoadStrong();
        v103 = *(v102 + 8);
        v104 = &v91[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate];
        swift_beginAccess();
        *(v104 + 1) = v103;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        v105 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
        v106 = v145;
        [v145 presentViewController:v105 animated:1 completion:0];

        goto LABEL_41;
      }

      if (v46 == *MEMORY[0x1E69A3B90])
      {
        v58 = v142;
        sub_1B9F0A534(v142 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore, &v153);
        v59 = v58 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v60 = *(v59 + 8);
          v61 = swift_getObjectType();
          v62 = *(v60 + 8);
          v63 = v145;
          v64 = v145;
          v65 = v62(v61, v60);
          swift_unknownObjectRelease();
          v66 = v140;
          v67 = v148;
        }

        else
        {
          v113 = v148;
          sub_1BA14DCE4(v148, v25, type metadata accessor for SummarySharingSelectionFlow);
          (*(v143 + 56))(v25, 0, 1, v152);
          type metadata accessor for SummarySharingSelectedDataTypesContext(0);
          swift_allocObject();
          v63 = v145;
          v114 = v145;
          v65 = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(MEMORY[0x1E69E7CC0], v25);
          v67 = v113;
          v66 = v140;
        }

        sub_1BA14DCE4(v67, v66, type metadata accessor for SummarySharingSelectionFlow);
        v151 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
        v115 = objc_allocWithZone(type metadata accessor for SummarySharingAlertsSelectionViewController());
        *&v115[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v116 = MEMORY[0x1E69E7CC0];
        *&v115[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
        sub_1B9F0A534(&v153, v158);
        swift_beginAccess();
        v152 = v65;
        v117 = v65[3];
        v118 = v117[2];
        if (v118)
        {
          v150 = v115;
          v119 = v59;
          v116 = sub_1BA0219CC(v118, 0);
          v120 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
          sub_1BA023688(&v157, v116 + ((*(v120 + 80) + 32) & ~*(v120 + 80)), v118, v117);
          v122 = v121;
          v123 = v157;

          sub_1B9F52E48(v123);
          if (v122 != v118)
          {
            __break(1u);
            return;
          }

          v63 = v145;
          v66 = v140;
          v124 = v147;
          v59 = v119;
          v115 = v150;
        }

        else
        {
          v124 = v147;
        }

        sub_1BA14DCE4(v66, v124, type metadata accessor for SummarySharingSelectionFlow);
        type metadata accessor for SummarySharingAlertsSelectionDataSource(0);
        swift_allocObject();
        v125 = sub_1BA16AC90(v158, v116, v124, 0);
        *&v115[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_alertsDataSource] = v125;
        v126 = v152;
        *&v115[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_selectedDataTypesContext] = v152;
        sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_1BA4B5480;
        *(v127 + 32) = v125;
        *(v127 + 40) = &protocol witness table for MutableArrayDataSource;
        type metadata accessor for CompoundSectionedDataSource(0);
        swift_allocObject();

        v128 = CompoundSectionedDataSource.init(_:)(v127);
        v129 = CompoundDataSourceCollectionViewController.init(dataSource:)(v128);
        v158[0] = *(v126 + 48);
        v130 = MEMORY[0x1E695BF70];
        sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
        sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v130, MEMORY[0x1E695BF88]);
        v131 = v129;
        v158[0] = sub_1BA4A4F98();
        v132 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v133 = swift_allocObject();
        *(v133 + 16) = sub_1BA14DE2C;
        *(v133 + 24) = v132;
        v134 = MEMORY[0x1E695BED0];
        sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
        sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v134, MEMORY[0x1E695BED8]);
        sub_1BA4A5148();

        swift_beginAccess();
        sub_1BA14D7C8(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
        sub_1BA091D04();
        sub_1BA4A4D38();
        swift_endAccess();

        *(*(*&v131[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_alertsDataSource] + qword_1EBBECE80) + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingAlertsSelectionViewController;
        swift_unknownObjectWeakAssign();
        type metadata accessor for SummarySharingSelectionContextDelegate();
        v135 = swift_allocObject();
        *(v135 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v135 + 24) = &protocol witness table for SummarySharingAlertsSelectionViewController;
        swift_unknownObjectWeakAssign();

        sub_1BA29AAC4(v135);
        sub_1BA16CA30();

        sub_1BA14DD4C(v66, type metadata accessor for SummarySharingSelectionFlow);
        __swift_destroy_boxed_opaque_existential_1(&v153);

        swift_unknownObjectWeakLoadStrong();
        v136 = *(v59 + 8);
        v137 = &v131[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate];
        swift_beginAccess();
        *(v137 + 1) = v136;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        v138 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
        [v63 presentViewController:v138 animated:1 completion:0];

        goto LABEL_41;
      }

      v68 = *(v43 + 8);
      v69 = v145;
      v68(v33, v41);
    }

    else
    {
      (*(v42 + 56))(v146, 1, 1, v41);
      v57 = v145;
    }

    sub_1BA4A3D88();
    v70 = v142;

    v71 = sub_1BA4A3E88();
    v72 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v71, v72))
    {
      LODWORD(v152) = v72;
      v73 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v153 = v150;
      *v73 = 136315394;
      v74 = sub_1BA4A85D8();
      v76 = sub_1B9F0B82C(v74, v75, &v153);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2080;
      v77 = *(v70 + v141);
      if (*(v77 + 16))
      {
        (*(v43 + 16))(v29, v77 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v41);
        v78 = 0;
      }

      else
      {
        v78 = 1;
      }

      v107 = v151;
      v108 = v149;
      (*(v43 + 56))(v29, v78, 1, v41);
      v109 = sub_1BA4A6808();
      v111 = sub_1B9F0B82C(v109, v110, &v153);

      *(v73 + 14) = v111;
      _os_log_impl(&dword_1B9F07000, v71, v152, "[%s] Received unexpected content kind: %s", v73, 0x16u);
      v112 = v150;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v112, -1, -1);
      MEMORY[0x1BFAF43A0](v73, -1, -1);

      (v108[1])(v7, v107);
    }

    else
    {

      (v149[1])(v7, v151);
    }

LABEL_41:
    sub_1BA14D988(v146, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
  }
}

Swift::Void __swiftcall SummarySharingSelectedDataTypesDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_1B9FF52C8();
  sub_1B9FF51C4();
  v1 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F08(v1, v2);

  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162ED4(v3, v4);

  sub_1B9FF5294();
}

void sub_1BA14B064()
{
  sub_1B9FF52C8();
  sub_1B9FF51C4();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F08(v0, v1);

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162ED4(v2, v3);

  sub_1B9FF5294();
}

void sub_1BA14B0D4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BA4A82B8();
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
        type metadata accessor for SummarySharingSelectableDataTypeItem(0);
        v6 = sub_1BA4A6B98();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BA14BABC(v8, v9, a1, v4);
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
    sub_1BA14B200(0, v2, 1, a1);
  }
}

void sub_1BA14B200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1BA14D7C8(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v81[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v94 = &v81[-v14];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v81[-v17];
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v81[-v21];
  v101 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v101, v23);
  v91 = &v81[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25, v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v100 = &v81[-v31];
  v83 = a2;
  if (a3 != a2)
  {
    v32 = v30;
    v33 = *a4;
    v34 = *(v29 + 72);
    v35 = *a4 + v34 * (a3 - 1);
    v89 = -v34;
    v90 = v33;
    v36 = a1 - a3;
    v82 = v34;
    v37 = v33 + v34 * a3;
    v88 = v11;
    v92 = v18;
    v93 = v22;
    v99 = v30;
LABEL_7:
    v87 = a3;
    v84 = v37;
    v85 = v36;
    v38 = v36;
    v86 = v35;
    v107 = v35;
    while (1)
    {
      v97 = v38;
      v98 = v37;
      v39 = v100;
      sub_1BA14DCE4(v37, v100, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DCE4(v107, v32, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v40 = *(v101 + 40);
      sub_1BA14DDAC(&v39[v40], v22, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v41 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      v42 = *(*(v41 - 8) + 48);
      if (v42(v22, 1, v41) == 1)
      {
        sub_1BA14D988(v22, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
LABEL_5:
        sub_1BA14DD4C(v32, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA14DD4C(v100, type metadata accessor for SummarySharingSelectableDataTypeItem);
LABEL_6:
        a3 = v87 + 1;
        v35 = v86 + v82;
        v36 = v85 - 1;
        v37 = v84 + v82;
        if (v87 + 1 == v83)
        {
          return;
        }

        goto LABEL_7;
      }

      v95 = v40;
      v43 = *(v22 + 7);
      v102 = v43;
      sub_1BA14DD4C(v22, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (!v43)
      {
        goto LABEL_5;
      }

      v44 = *(v101 + 40);
      sub_1BA14DDAC(v32 + v44, v18, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v42(v18, 1, v41) == 1)
      {

        sub_1BA14D988(v18, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v22 = v93;
        goto LABEL_5;
      }

      v45 = *(v18 + 7);
      v46 = v45;
      sub_1BA14DD4C(v18, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (!v45)
      {

        v22 = v93;
        goto LABEL_5;
      }

      v47 = [v102 displayName];
      v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v50 = v49;

      v96 = v46;
      v51 = [v46 displayName];
      v52 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v54 = v53;

      if (v48 == v52 && v50 == v54)
      {
      }

      else
      {
        v55 = sub_1BA4A8338();

        if ((v55 & 1) == 0)
        {
          v66 = v102;
          v67 = [v102 displayName];
          v68 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v70 = v69;

          v105 = v68;
          v106 = v70;
          v71 = v96;
          v72 = [v96 displayName];
          v73 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v75 = v74;

          v103 = v73;
          v104 = v75;
          sub_1B9F252FC();
          v65 = sub_1BA4A7B78();

          v22 = v93;
          goto LABEL_22;
        }
      }

      v56 = v94;
      sub_1BA14DDAC(&v100[v95], v94, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v57 = v42(v56, 1, v41);
      v58 = v88;
      if (v57 == 1)
      {

        sub_1BA14D988(v94, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v18 = v92;
        v22 = v93;
        v32 = v99;
        goto LABEL_5;
      }

      v59 = v94;
      v60 = *(v94 + 2);
      v61 = *(v94 + 3);

      sub_1BA14DD4C(v59, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v32 = v99;
      if (!v61)
      {

LABEL_32:
        v18 = v92;
        v22 = v93;
        goto LABEL_5;
      }

      sub_1BA14DDAC(v99 + v44, v58, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v42(v58, 1, v41) == 1)
      {

        sub_1BA14D988(v58, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        goto LABEL_32;
      }

      v62 = *(v58 + 16);
      v63 = *(v58 + 24);

      sub_1BA14DD4C(v58, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v22 = v93;
      v64 = v96;
      if (!v63)
      {

        v18 = v92;
        v32 = v99;
        goto LABEL_5;
      }

      v105 = v60;
      v106 = v61;
      v103 = v62;
      v104 = v63;
      sub_1B9F252FC();
      v65 = sub_1BA4A7B78();

LABEL_22:
      v32 = v99;
      sub_1BA14DD4C(v99, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DD4C(v100, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v18 = v92;
      v77 = v97;
      v76 = v98;
      if (v65 != -1)
      {
        goto LABEL_6;
      }

      if (!v90)
      {
        __break(1u);
        return;
      }

      v78 = v91;
      sub_1BA14D9F8(v98, v91, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v79 = v107;
      swift_arrayInitWithTakeFrontToBack();
      sub_1BA14D9F8(v78, v79, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v107 = v79 + v89;
      v37 = v76 + v89;
      v80 = __CFADD__(v77, 1);
      v38 = v77 + 1;
      v32 = v99;
      if (v80)
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_1BA14BABC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v232 = a4;
  v229 = a1;
  sub_1BA14D7C8(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v241 = &v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v242 = &v224 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v224 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v224 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v224 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v227 = (&v224 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v231 = (&v224 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v239 = (&v224 - v31);
  v32 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v240 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v235 = &v224 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v245 = &v224 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v224 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v261 = &v224 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v250 = &v224 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v248 = &v224 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v226 = &v224 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v225 = &v224 - v56;
  v246 = a3;
  v57 = *(a3 + 8);
  if (v57 < 1)
  {
    v59 = MEMORY[0x1E69E7CC0];
LABEL_144:
    a3 = *v229;
    if (!*v229)
    {
      goto LABEL_184;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_178:
      v59 = sub_1BA442D80(v59);
    }

    v267 = v59;
    v219 = *(v59 + 2);
    if (v219 >= 2)
    {
      while (*v246)
      {
        v220 = *&v59[16 * v219];
        v221 = *&v59[16 * v219 + 24];
        v222 = v251;
        sub_1BA14D198(*v246 + *(v240 + 72) * v220, *v246 + *(v240 + 72) * *&v59[16 * v219 + 16], *v246 + *(v240 + 72) * v221, a3);
        v251 = v222;
        if (v222)
        {
          goto LABEL_156;
        }

        if (v221 < v220)
        {
          goto LABEL_171;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1BA442D80(v59);
        }

        if (v219 - 2 >= *(v59 + 2))
        {
          goto LABEL_172;
        }

        v223 = &v59[16 * v219];
        *v223 = v220;
        *(v223 + 1) = v221;
        v267 = v59;
        sub_1BA442CF4(v219 - 1);
        v59 = v267;
        v219 = *(v267 + 2);
        if (v219 <= 1)
        {
          goto LABEL_156;
        }
      }

      goto LABEL_182;
    }

LABEL_156:

    return;
  }

  v224 = v22;
  v58 = 0;
  v59 = MEMORY[0x1E69E7CC0];
  v247 = v14;
  v252 = v18;
  v253 = v41;
  v256 = v32;
  while (1)
  {
    v60 = v58;
    v228 = v59;
    v230 = v58;
    if (v58 + 1 >= v57)
    {
      v74 = v58 + 1;
      v75 = v232;
      goto LABEL_49;
    }

    v61 = v18;
    v249 = v57;
    v62 = v58;
    v63 = *v246;
    v64 = *(v240 + 72);
    v65 = *v246 + v64 * (v58 + 1);
    v66 = v225;
    sub_1BA14DCE4(v65, v225, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v67 = v62;
    v68 = v63 + v64 * v62;
    v69 = v226;
    sub_1BA14DCE4(v68, v226, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v70 = v251;
    LODWORD(v260) = sub_1BA148504(v66, v69);
    v251 = v70;
    if (v70)
    {
      sub_1BA14DD4C(v69, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DD4C(v66, type metadata accessor for SummarySharingSelectableDataTypeItem);
      goto LABEL_156;
    }

    a3 = type metadata accessor for SummarySharingSelectableDataTypeItem;
    sub_1BA14DD4C(v69, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA14DD4C(v66, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v71 = v67 + 2;
    v72 = v63 + v64 * (v67 + 2);
    v73 = v64;
    v262 = v64;
    v18 = v61;
    v32 = v256;
    while (1)
    {
      v74 = v249;
      if (v249 == v71)
      {
        break;
      }

      v88 = v248;
      sub_1BA14DCE4(v72, v248, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DCE4(v65, v250, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v89 = *(v32 + 40);
      v90 = v239;
      sub_1BA14DDAC(v88 + v89, v239, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v91 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      v92 = *(*(v91 - 8) + 48);
      if (v92(v90, 1, v91) == 1)
      {
        goto LABEL_16;
      }

      v259 = v89;
      v93 = v90;
      v94 = v90[7];
      v95 = v94;
      sub_1BA14DD4C(v93, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (!v94)
      {
        goto LABEL_23;
      }

      v257 = *(v256 + 40);
      v90 = v231;
      sub_1BA14DDAC(v257 + v250, v231, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v92(v90, 1, v91) == 1)
      {

        goto LABEL_16;
      }

      v96 = v90[7];
      v258 = v96;
      sub_1BA14DD4C(v90, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (!v96)
      {

LABEL_23:
        v87 = 0;
        v18 = v252;
        v32 = v256;
        goto LABEL_10;
      }

      v255 = v95;
      v97 = [v95 displayName];
      v254 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v244 = v98;

      v99 = [v258 &selRef_builderFromDataFile_startDate_];
      v100 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v102 = v101;

      if (v254 == v100 && v244 == v102)
      {

LABEL_25:
        v90 = v227;
        sub_1BA14DDAC(v248 + v259, v227, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v92(v90, 1, v91) == 1)
        {

LABEL_16:
          sub_1BA14D988(v90, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        else
        {
          v104 = v90[3];
          v259 = v90[2];

          sub_1BA14DD4C(v90, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          if (v104)
          {
            v105 = v224;
            sub_1BA14DDAC(v257 + v250, v224, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
            if (v92(v105, 1, v91) == 1)
            {

              sub_1BA14D988(v105, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
              v87 = 0;
              v18 = v252;
              v32 = v256;
            }

            else
            {
              v107 = *(v105 + 16);
              v106 = *(v105 + 24);

              sub_1BA14DD4C(v105, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
              v18 = v252;
              v32 = v256;
              if (v106)
              {
                v265 = v259;
                v266 = v104;
                v263 = v107;
                v264 = v106;
                sub_1B9F252FC();
                v108 = sub_1BA4A7B78();

                v87 = v108 == -1;
              }

              else
              {

                v87 = 0;
              }
            }

            goto LABEL_10;
          }
        }

        v87 = 0;
        goto LABEL_9;
      }

      v103 = sub_1BA4A8338();

      if (v103)
      {
        goto LABEL_25;
      }

      v76 = v255;
      v77 = [v255 displayName];
      v78 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v80 = v79;

      v265 = v78;
      v266 = v80;
      v81 = v258;
      v82 = [v258 displayName];
      v83 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v85 = v84;

      v263 = v83;
      v264 = v85;
      sub_1B9F252FC();
      v86 = sub_1BA4A7B78();

      v87 = v86 == -1;
LABEL_9:
      v18 = v252;
      v32 = v256;
LABEL_10:
      a3 = type metadata accessor for SummarySharingSelectableDataTypeItem;
      sub_1BA14DD4C(v250, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DD4C(v248, type metadata accessor for SummarySharingSelectableDataTypeItem);
      ++v71;
      v73 = v262;
      v72 += v262;
      v65 += v262;
      if ((v260 ^ v87))
      {
        v74 = v71 - 1;
        break;
      }
    }

    v75 = v232;
    v59 = v228;
    v41 = v253;
    v60 = v230;
    if ((v260 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (v74 < v230)
    {
      goto LABEL_177;
    }

    if (v230 < v74)
    {
      v109 = v74;
      v110 = v73 * (v74 - 1);
      v111 = v74 * v73;
      v249 = v74;
      v112 = v230;
      v113 = v230 * v73;
      do
      {
        if (v112 != --v109)
        {
          v114 = *v246;
          if (!*v246)
          {
            goto LABEL_181;
          }

          a3 = v114 + v113;
          sub_1BA14D9F8(v114 + v113, v235, type metadata accessor for SummarySharingSelectableDataTypeItem);
          if (v113 < v110 || a3 >= v114 + v111)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v113 != v110)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1BA14D9F8(v235, v114 + v110, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v75 = v232;
          v73 = v262;
        }

        ++v112;
        v110 -= v73;
        v111 -= v73;
        v113 += v73;
      }

      while (v112 < v109);
      v32 = v256;
      v41 = v253;
      v60 = v230;
      v74 = v249;
    }

LABEL_49:
    v115 = v246[1];
    if (v74 >= v115)
    {
      goto LABEL_58;
    }

    if (__OFSUB__(v74, v60))
    {
      goto LABEL_174;
    }

    if (v74 - v60 >= v75)
    {
LABEL_58:
      v58 = v74;
      if (v74 < v60)
      {
        goto LABEL_173;
      }

      goto LABEL_59;
    }

    if (__OFADD__(v60, v75))
    {
      goto LABEL_175;
    }

    if (v60 + v75 >= v115)
    {
      v116 = v246[1];
    }

    else
    {
      v116 = v60 + v75;
    }

    if (v116 < v60)
    {
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    if (v74 == v116)
    {
      goto LABEL_58;
    }

    v163 = v41;
    v164 = v18;
    v165 = v32;
    v166 = *v246;
    v167 = *(v240 + 72);
    v168 = (*v246 + v167 * (v74 - 1));
    v243 = -v167;
    v169 = v60 - v74;
    v244 = v166;
    v233 = v167;
    v170 = v166 + v74 * v167;
    v234 = v116;
LABEL_113:
    v249 = v74;
    v236 = v170;
    v172 = v170;
    v237 = v169;
    v238 = v168;
LABEL_114:
    v259 = v169;
    v260 = v172;
    v173 = v261;
    sub_1BA14DCE4(v172, v261, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v258 = v168;
    v174 = v168;
    v175 = v163;
    sub_1BA14DCE4(v174, v163, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v176 = *(v165 + 40);
    sub_1BA14DDAC(v176 + v173, v164, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v177 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    v178 = *(*(v177 - 8) + 48);
    v179 = v165;
    if (v178(v164, 1, v177) == 1)
    {
      v171 = v164;
      goto LABEL_110;
    }

    v255 = v176;
    v180 = *(v164 + 56);
    v262 = v180;
    sub_1BA14DD4C(v164, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v181 = v247;
    if (!v180)
    {
      goto LABEL_111;
    }

    v182 = *(v179 + 40);
    sub_1BA14DDAC(v163 + v182, v247, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v178(v181, 1, v177) == 1)
    {

      v171 = v181;
LABEL_110:
      sub_1BA14D988(v171, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      goto LABEL_111;
    }

    v254 = v182;
    v183 = *(v181 + 56);
    v184 = v183;
    sub_1BA14DD4C(v181, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (!v183)
    {

      goto LABEL_111;
    }

    v185 = [v262 displayName];
    v186 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v188 = v187;

    v257 = v184;
    v189 = [v184 displayName];
    v190 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v192 = v191;

    if (v186 == v190 && v188 == v192)
    {

      goto LABEL_122;
    }

    v193 = sub_1BA4A8338();

    if ((v193 & 1) == 0)
    {
      break;
    }

LABEL_122:
    v194 = v242;
    sub_1BA14DDAC(v255 + v261, v242, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v195 = v178(v194, 1, v177);
    v179 = v256;
    if (v195 == 1)
    {

      sub_1BA14D988(v194, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v164 = v252;
      v175 = v253;
    }

    else
    {
      v196 = *(v194 + 16);
      v197 = *(v194 + 24);

      sub_1BA14DD4C(v194, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v175 = v253;
      if (!v197)
      {

        goto LABEL_140;
      }

      v198 = v241;
      sub_1BA14DDAC(&v253[v254], v241, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v178(v198, 1, v177) == 1)
      {

        sub_1BA14D988(v198, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v164 = v252;
      }

      else
      {
        v199 = v198;
        v201 = *(v198 + 16);
        v200 = *(v198 + 24);

        sub_1BA14DD4C(v199, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v202 = v257;
        if (v200)
        {
          v265 = v196;
          v266 = v197;
          v263 = v201;
          v264 = v200;
          sub_1B9F252FC();
          v203 = sub_1BA4A7B78();

          goto LABEL_128;
        }

LABEL_140:
        v164 = v252;
      }
    }

LABEL_111:
    a3 = type metadata accessor for SummarySharingSelectableDataTypeItem;
    v163 = v175;
    sub_1BA14DD4C(v175, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA14DD4C(v261, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v165 = v179;
LABEL_112:
    v74 = v249 + 1;
    v168 = &v238[v233];
    v169 = v237 - 1;
    v170 = v236 + v233;
    v58 = v234;
    if (v249 + 1 != v234)
    {
      goto LABEL_113;
    }

    v32 = v165;
    v18 = v164;
    v41 = v163;
    v59 = v228;
    if (v234 < v230)
    {
      goto LABEL_173;
    }

LABEL_59:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_1BA27F470(0, *(v59 + 2) + 1, 1, v59);
    }

    a3 = *(v59 + 2);
    v117 = *(v59 + 3);
    v118 = a3 + 1;
    if (a3 >= v117 >> 1)
    {
      v59 = sub_1BA27F470((v117 > 1), a3 + 1, 1, v59);
    }

    *(v59 + 2) = v118;
    v119 = &v59[16 * a3];
    *(v119 + 4) = v230;
    *(v119 + 5) = v58;
    v120 = *v229;
    if (!*v229)
    {
      goto LABEL_183;
    }

    if (a3)
    {
      while (2)
      {
        v121 = v118 - 1;
        if (v118 >= 4)
        {
          v126 = &v59[16 * v118 + 32];
          v127 = *(v126 - 64);
          v128 = *(v126 - 56);
          v132 = __OFSUB__(v128, v127);
          v129 = v128 - v127;
          if (v132)
          {
            goto LABEL_160;
          }

          v131 = *(v126 - 48);
          v130 = *(v126 - 40);
          v132 = __OFSUB__(v130, v131);
          v124 = v130 - v131;
          v125 = v132;
          if (v132)
          {
            goto LABEL_161;
          }

          v133 = &v59[16 * v118];
          v135 = *v133;
          v134 = *(v133 + 1);
          v132 = __OFSUB__(v134, v135);
          v136 = v134 - v135;
          if (v132)
          {
            goto LABEL_163;
          }

          v132 = __OFADD__(v124, v136);
          v137 = v124 + v136;
          if (v132)
          {
            goto LABEL_166;
          }

          if (v137 >= v129)
          {
            v155 = &v59[16 * v121 + 32];
            v157 = *v155;
            v156 = *(v155 + 1);
            v132 = __OFSUB__(v156, v157);
            v158 = v156 - v157;
            if (v132)
            {
              goto LABEL_170;
            }

            if (v124 < v158)
            {
              v121 = v118 - 2;
            }
          }

          else
          {
LABEL_78:
            if (v125)
            {
              goto LABEL_162;
            }

            v138 = &v59[16 * v118];
            v140 = *v138;
            v139 = *(v138 + 1);
            v141 = __OFSUB__(v139, v140);
            v142 = v139 - v140;
            v143 = v141;
            if (v141)
            {
              goto LABEL_165;
            }

            v144 = &v59[16 * v121 + 32];
            v146 = *v144;
            v145 = *(v144 + 1);
            v132 = __OFSUB__(v145, v146);
            v147 = v145 - v146;
            if (v132)
            {
              goto LABEL_168;
            }

            if (__OFADD__(v142, v147))
            {
              goto LABEL_169;
            }

            if (v142 + v147 < v124)
            {
              goto LABEL_92;
            }

            if (v124 < v147)
            {
              v121 = v118 - 2;
            }
          }
        }

        else
        {
          if (v118 == 3)
          {
            v122 = *(v59 + 4);
            v123 = *(v59 + 5);
            v132 = __OFSUB__(v123, v122);
            v124 = v123 - v122;
            v125 = v132;
            goto LABEL_78;
          }

          v148 = &v59[16 * v118];
          v150 = *v148;
          v149 = *(v148 + 1);
          v132 = __OFSUB__(v149, v150);
          v142 = v149 - v150;
          v143 = v132;
LABEL_92:
          if (v143)
          {
            goto LABEL_164;
          }

          v151 = &v59[16 * v121];
          v153 = *(v151 + 4);
          v152 = *(v151 + 5);
          v132 = __OFSUB__(v152, v153);
          v154 = v152 - v153;
          if (v132)
          {
            goto LABEL_167;
          }

          if (v154 < v142)
          {
            break;
          }
        }

        a3 = v121 - 1;
        if (v121 - 1 >= v118)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
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
          __break(1u);
          goto LABEL_176;
        }

        if (!*v246)
        {
          goto LABEL_180;
        }

        v159 = *&v59[16 * a3 + 32];
        v160 = *&v59[16 * v121 + 40];
        v161 = v251;
        sub_1BA14D198(*v246 + *(v240 + 72) * v159, *v246 + *(v240 + 72) * *&v59[16 * v121 + 32], *v246 + *(v240 + 72) * v160, v120);
        v251 = v161;
        if (v161)
        {
          goto LABEL_156;
        }

        if (v160 < v159)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1BA442D80(v59);
        }

        if (a3 >= *(v59 + 2))
        {
          goto LABEL_159;
        }

        v162 = &v59[16 * a3];
        *(v162 + 4) = v159;
        *(v162 + 5) = v160;
        v267 = v59;
        sub_1BA442CF4(v121);
        v59 = v267;
        v118 = *(v267 + 2);
        v41 = v253;
        if (v118 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v57 = v246[1];
    if (v58 >= v57)
    {
      goto LABEL_144;
    }
  }

  v204 = v262;
  v205 = [v262 displayName];
  v206 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v208 = v207;

  v265 = v206;
  v266 = v208;
  v209 = v257;
  v210 = [v257 displayName];
  v211 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v213 = v212;

  v263 = v211;
  v264 = v213;
  sub_1B9F252FC();
  v203 = sub_1BA4A7B78();

  v179 = v256;
  v175 = v253;
LABEL_128:
  v165 = v179;
  a3 = type metadata accessor for SummarySharingSelectableDataTypeItem;
  sub_1BA14DD4C(v175, type metadata accessor for SummarySharingSelectableDataTypeItem);
  sub_1BA14DD4C(v261, type metadata accessor for SummarySharingSelectableDataTypeItem);
  v164 = v252;
  v214 = v260;
  if (v203 != -1)
  {
    v163 = v175;
    goto LABEL_112;
  }

  v215 = v259;
  if (v244)
  {
    v163 = v175;
    a3 = type metadata accessor for SummarySharingSelectableDataTypeItem;
    v216 = v245;
    sub_1BA14D9F8(v260, v245, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v217 = v258;
    swift_arrayInitWithTakeFrontToBack();
    sub_1BA14D9F8(v216, v217, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v168 = &v217[v243];
    v172 = v214 + v243;
    v218 = __CFADD__(v215, 1);
    v169 = v215 + 1;
    if (v218)
    {
      goto LABEL_112;
    }

    goto LABEL_114;
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
}

void sub_1BA14D198(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v67 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v67, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v56 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_64;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v26 = (a2 - a1) / v24;
  v70 = a1;
  v69 = a4;
  v66 = v24;
  if (v26 >= v25 / v24)
  {
    v29 = v25 / v24 * v24;
    v62 = v20;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v30 = v13;
    }

    else
    {
      v30 = v13;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v39 = a4 + v29;
    v40 = v4;
    if (v29 >= 1)
    {
      v41 = -v66;
      v42 = a4 + v29;
      v59 = a4;
      v60 = a1;
      v58 = -v66;
      do
      {
        v56 = v39;
        v43 = a2 + v41;
        v61 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v70 = a2;
            v68 = v56;
            goto LABEL_62;
          }

          v65 = a3;
          v66 = v42;
          v57 = v39;
          v64 = (v42 + v41);
          sub_1BA14DCE4(v42 + v41, v30, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v46 = v30;
          v47 = v62;
          sub_1BA14DCE4(v43, v62, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v48 = sub_1BA148504(v46, v47);
          if (v40)
          {
            sub_1BA14DD4C(v47, type metadata accessor for SummarySharingSelectableDataTypeItem);
            sub_1BA14DD4C(v46, type metadata accessor for SummarySharingSelectableDataTypeItem);
            v70 = v61;
            v68 = v57;
            goto LABEL_62;
          }

          v49 = v48;
          v63 = 0;
          v50 = v43;
          v51 = v65;
          v52 = v65 + v41;
          sub_1BA14DD4C(v47, type metadata accessor for SummarySharingSelectableDataTypeItem);
          sub_1BA14DD4C(v46, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v30 = v46;
          if (v49)
          {
            break;
          }

          v53 = v64;
          v39 = v64;
          a3 = v51 + v41;
          if (v51 < v66 || v52 >= v66)
          {
            v44 = v64;
            swift_arrayInitWithTakeFrontToBack();
            v39 = v44;
            v43 = v50;
            v40 = v63;
          }

          else
          {
            v54 = v51 == v66;
            v43 = v50;
            v40 = v63;
            if (!v54)
            {
              v55 = v64;
              swift_arrayInitWithTakeBackToFront();
              v39 = v55;
            }
          }

          v42 = v39;
          a1 = v60;
          v45 = v53 > v59;
          v41 = v58;
          a2 = v61;
          if (!v45)
          {
            goto LABEL_58;
          }
        }

        a3 = v51 + v41;
        if (v51 < v61 || v52 >= v61)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v40 = v63;
          v41 = v58;
        }

        else
        {
          a2 = v50;
          v40 = v63;
          v41 = v58;
          if (v51 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v60;
        v42 = v66;
        v39 = v57;
      }

      while (v66 > v59);
    }

LABEL_58:
    v70 = a2;
    v68 = v39;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v28 = v4;
    }

    else
    {
      v28 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v65 = a4 + v27;
    v68 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v32 = v66;
      v63 = v22;
      v64 = v17;
      while (1)
      {
        v33 = a3;
        sub_1BA14DCE4(a2, v22, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA14DCE4(a4, v17, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v34 = sub_1BA148504(v22, v17);
        if (v28)
        {
          break;
        }

        v35 = v34;
        v36 = v17;
        v37 = a4;
        sub_1BA14DD4C(v36, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA14DD4C(v22, type metadata accessor for SummarySharingSelectableDataTypeItem);
        if (v35)
        {
          v38 = a2 + v32;
          if (a1 < a2 || a1 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v38;
            a3 = v33;
          }

          else
          {
            a3 = v33;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v38;
          }
        }

        else
        {
          a4 += v32;
          if (a1 < v37 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v33;
          }

          else
          {
            a3 = v33;
            if (a1 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v69 = v37 + v32;
        }

        v17 = v64;
        v32 = v66;
        a1 += v66;
        v70 = a1;
        v22 = v63;
        if (a4 >= v65 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1BA14DD4C(v17, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA14DD4C(v22, type metadata accessor for SummarySharingSelectableDataTypeItem);
    }
  }

LABEL_62:
  sub_1BA26BB68(&v70, &v69, &v68);
}

void sub_1BA14D7C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA14D82C()
{
  result = qword_1EDC6E230;
  if (!qword_1EDC6E230)
  {
    sub_1BA4A1C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6E230);
  }

  return result;
}

unint64_t sub_1BA14D884()
{
  result = qword_1EBBECA28;
  if (!qword_1EBBECA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECA28);
  }

  return result;
}

uint64_t sub_1BA14D988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA14D7C8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA14D9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BA14DA60(void *a1)
{
  v3 = *(type metadata accessor for SummarySharingSelectionFlow(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA14999C(a1, v5, (v1 + v4), v6);
}

uint64_t sub_1BA14DB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for SummarySharingSelectedDataTypesDataSource(uint64_t a1)
{
  result = qword_1EBBECA30;
  if (!qword_1EBBECA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA14DBA0(uint64_t a1)
{
  sub_1BA14D7C8(319, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA14DCE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA14DD4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA14DDAC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA14D7C8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA14DE54(void *a1)
{
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 profileIdentifier];
  v9 = [v8 type];

  if (v9 == 1 && ([objc_opt_self() isRunningStoreDemoMode] & 1) == 0)
  {
    sub_1B9FF6758();
    inited = swift_initStackObject();
    v22 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F28360(0);
    v12 = swift_allocObject();
    *(v12 + 16) = v22;
    v13 = type metadata accessor for ExportDataSourceItem();
    swift_allocObject();
    v14 = a1;
    v15 = sub_1BA420FA0(v14);
    *(v12 + 56) = v13;
    *(v12 + 64) = sub_1BA14E3C8();
    *(v12 + 32) = v15;
    sub_1BA4A1788();
    v16 = sub_1BA4A1748();
    v18 = v17;
    (*(v3 + 8))(v7, v2);
    v19 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = sub_1B9F1C5F0(v19);
    *(inited + 32) = 0;
    *(inited + 40) = 0;

    *(inited + 48) = v12;
    v20 = Array<A>.identifierToIndexDict()(v12);

    *(inited + 56) = v20;
    *(inited + 64) = v16;
    *(inited + 72) = v18;
    v21 = sub_1B9F1DAFC(inited, 1, sub_1BA14E0F4, 0);

    return v21;
  }

  else
  {

    type metadata accessor for ExportDataSource(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void *sub_1BA14E0F4(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB88 != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  v8 = __swift_project_value_buffer(v5, qword_1EDC6CB90);
  sub_1B9F37E38(v8, v7);
  *(v7 + 6) = 0x4034000000000000;
  *(v7 + 8) = 0x4014000000000000;
  v9 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v7);
  return v9;
}

uint64_t sub_1BA14E240()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExportDataSource(uint64_t a1)
{
  result = qword_1EBBECA40;
  if (!qword_1EBBECA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA14E3C8()
{
  result = qword_1EBBECA50;
  if (!qword_1EBBECA50)
  {
    type metadata accessor for ExportDataSourceItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECA50);
  }

  return result;
}

double Keyword.typeGroup.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EDC6EA18 != -1)
  {
    swift_once();
  }

  v3 = off_1EDC6EA20;
  v4 = [v1 identifier];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  sub_1BA03E804(v5, v7, v3, a1);

  return result;
}

uint64_t sub_1BA14E568(uint64_t a1, void **a2)
{
  sub_1BA04B338(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context;
  swift_beginAccess();
  sub_1BA0BACD4(v6, v3 + v4);
  swift_endAccess();
  if ([v3 isViewLoaded])
  {
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x98))();
  }

  return sub_1BA0BD670(v6);
}

uint64_t sub_1BA14E61C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context;
  swift_beginAccess();
  return sub_1BA04B338(v1 + v3, a1);
}

uint64_t sub_1BA14E674(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  swift_endAccess();
  if ([v1 isViewLoaded])
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  }

  return sub_1BA0BD670(a1);
}

id (*sub_1BA14E724(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA14E788;
}

id sub_1BA14E788(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x98))();
    }
  }

  return result;
}

id sub_1BA14E800()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView);
  }

  else
  {
    type metadata accessor for MessageWithSeparatedActionTileView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1BA14E8E0()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for TipWithActionViewController();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BA14E800();
    [v2 addSubview_];

    v4 = OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView;
    v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView);
    v6 = [v0 view];
    [v5 hk:v6 alignConstraintsWithView:?];

    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
    v7 = *(v0 + v4);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = &v7[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton];
    swift_beginAccess();
    v10 = *v9;
    v11 = v9[1];
    *v9 = sub_1BA14EB24;
    v9[1] = v8;
    v12 = v7;

    sub_1B9F0E310(v10, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA14EAA0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xC8))();
  }
}

void sub_1BA14EB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1BA4A6758();
  [v6 setTitle_];

  v10 = sub_1BA14E800();
  v11 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_bodyLabel];
  v12 = sub_1BA4A6758();
  [v11 setText_];

  v13 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton];
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B9F7B15C;
  *(v16 + 24) = v15;
  v19[4] = sub_1B9F7B0CC;
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1B9F7B0FC;
  v19[3] = &block_descriptor_32;
  v17 = _Block_copy(v19);
  v18 = v13;

  [v14 performWithoutAnimation_];
  _Block_release(v17);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }
}

uint64_t sub_1BA14ED6C()
{
  type metadata accessor for TileHeaderDetailKind(0);

  return swift_storeEnumTagMultiPayload();
}

id TipWithActionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id TipWithActionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView] = 0;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for TipWithActionViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id TipWithActionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TipWithActionViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TipWithActionViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id TipWithActionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipWithActionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1BA14F1F0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA14F254;
}

uint64_t sub_1BA14F254(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x98))();
    }
  }

  return result;
}

uint64_t sub_1BA14F300()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v3;
}

id LabelWithSpinner.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_1BA14F69C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___visibleSpinnerConstraints;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___visibleSpinnerConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___visibleSpinnerConstraints);
  }

  else
  {
    sub_1B9F109F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B5470;
    v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label) leadingAnchor];
    v4 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner) trailingAnchor];
    v5 = [v3 constraintEqualToAnchor:v4 constant:4.0];

    *(v2 + 32) = v5;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BA14F79C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___hiddenSpinnerConstraints;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___hiddenSpinnerConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___hiddenSpinnerConstraints);
  }

  else
  {
    sub_1B9F109F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B7510;
    v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label) leadingAnchor];
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner);
    v5 = [v4 trailingAnchor];
    v6 = [v3 constraintEqualToAnchor:v5 constant:0.0];

    *(v2 + 32) = v6;
    v7 = [v4 widthAnchor];
    v8 = [v7 constraintEqualToConstant_];

    *(v2 + 40) = v8;
    *(v0 + v1) = v2;
  }

  return v2;
}

char *LabelWithSpinner.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v16 = [objc_opt_self() secondaryLabelColor];
  [v15 setTextColor_];

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = *MEMORY[0x1E69DDD08];
  v18 = objc_opt_self();
  v19 = [v18 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
  if (v19)
  {
    v20 = v19;
    v21 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
  }

  else
  {
    v52 = v11;
    sub_1BA4A3DD8();
    v22 = v17;
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FB8();

    v51 = v24;
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55 = v49;
      *v25 = 136315906;
      v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v28 = sub_1B9F0B82C(v26, v27, &v55);
      v50 = v22;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v53 = 0;
      v54 = 1;
      sub_1BA1508E8(0);
      v30 = sub_1BA4A6808();
      v32 = sub_1B9F0B82C(v30, v31, &v55);

      *(v25 + 14) = v32;
      *(v25 + 22) = 2080;
      LODWORD(v53) = 0;
      type metadata accessor for SymbolicTraits(0);
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v55);
      v22 = v50;

      *(v25 + 24) = v35;
      *(v25 + 32) = 2112;
      v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v25 + 34) = v36;
      v37 = v48;
      *v48 = v36;
      _os_log_impl(&dword_1B9F07000, v23, v51, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v25, 0x2Au);
      sub_1B9F8C6C8(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      v38 = v49;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v52 + 8))(v14, v10);
    v39 = [v18 preferredFontDescriptorWithTextStyle_];
    v21 = [objc_opt_self() fontWithDescriptor:v39 size:0.0];
  }

  v40 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label;
  [v15 setFont_];

  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setTextAlignment_];
  *&v5[v40] = v15;
  v41 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner;
  v42 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v41] = v42;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___visibleSpinnerConstraints] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___hiddenSpinnerConstraints] = 0;
  v43 = type metadata accessor for LabelWithSpinner();
  v56.receiver = v5;
  v56.super_class = v43;
  v44 = objc_msgSendSuper2(&v56, sel_initWithFrame_, a1, a2, a3, a4);
  v45 = *&v44[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner];
  v46 = v44;
  [v46 addSubview_];
  [v46 addSubview_];
  sub_1BA150534();

  return v46;
}

id LabelWithSpinner.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *LabelWithSpinner.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v10 = [objc_opt_self() secondaryLabelColor];
  [v9 setTextColor_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = *MEMORY[0x1E69DDD08];
  v12 = objc_opt_self();
  v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v16 = v11;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v49 = a1;
      v20 = v19;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52 = v47;
      *v20 = 136315906;
      v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v48 = v16;
      v23 = sub_1B9F0B82C(v21, v22, &v52);
      HIDWORD(v45) = v18;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v50 = 0;
      v51 = 1;
      sub_1BA1508E8(0);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v52);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2080;
      LODWORD(v50) = 0;
      type metadata accessor for SymbolicTraits(0);
      v28 = sub_1BA4A6808();
      v30 = sub_1B9F0B82C(v28, v29, &v52);
      v16 = v48;

      *(v20 + 24) = v30;
      *(v20 + 32) = 2112;
      v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v20 + 34) = v31;
      v32 = v46;
      *v46 = v31;
      _os_log_impl(&dword_1B9F07000, v17, BYTE4(v45), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
      sub_1B9F8C6C8(v32);
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      v33 = v47;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      v34 = v20;
      a1 = v49;
      MEMORY[0x1BFAF43A0](v34, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v35 = [v12 preferredFontDescriptorWithTextStyle_];
    v15 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
  }

  v36 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label;
  [v9 setFont_];

  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setTextAlignment_];
  *&v2[v36] = v9;
  v37 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner;
  v38 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v37] = v38;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___visibleSpinnerConstraints] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner____lazy_storage___hiddenSpinnerConstraints] = 0;
  v39 = type metadata accessor for LabelWithSpinner();
  v53.receiver = v2;
  v53.super_class = v39;
  v40 = objc_msgSendSuper2(&v53, sel_initWithCoder_, a1);
  v41 = v40;
  if (v40)
  {
    v42 = *&v40[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner];
    v43 = v40;
    [v43 addSubview_];
    [v43 addSubview_];
    sub_1BA150534();
  }

  return v41;
}

void sub_1BA150394(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner);
  if (a1)
  {
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner) startAnimating];
    [v2 setHidden_];
    v3 = objc_opt_self();
    sub_1BA14F79C();
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v4 = sub_1BA4A6AE8();

    [v3 deactivateConstraints_];

    sub_1BA14F69C();
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner) stopAnimating];
    [v2 setHidden_];
    v3 = objc_opt_self();
    sub_1BA14F69C();
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v5 = sub_1BA4A6AE8();

    [v3 deactivateConstraints_];

    sub_1BA14F79C();
  }

  v6 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

void sub_1BA150534()
{
  v1 = objc_opt_self();
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5880;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner];
  v4 = [v3 leadingAnchor];
  v5 = [v0 layoutMarginsGuide];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [v3 centerYAnchor];
  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v11;
  v12 = [v0 layoutMarginsGuide];
  v13 = [v12 trailingAnchor];

  v14 = [v9 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 48) = v15;
  v16 = [v0 bottomAnchor];
  v17 = [v9 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v2 + 56) = v18;
  v19 = [v0 topAnchor];
  v20 = [v9 topAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v2 + 64) = v21;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v22 = sub_1BA4A6AE8();

  [v1 activateConstraints_];
}

id LabelWithSpinner.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LabelWithSpinner();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA1508E8(uint64_t a1)
{
  if (!qword_1EBBECB00)
  {
    type metadata accessor for Weight(255);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBECB00);
    }
  }
}

uint64_t BirthdayPickerItem.__allocating_init(initialValue:defaultAge:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar;
  v10 = sub_1BA4A18A8();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue;
  v12 = sub_1BA4A1148();
  (*(*(v12 - 8) + 56))(v8 + v11, 1, 1, v12);
  swift_beginAccess();
  sub_1BA15209C(a1, v8 + v11, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  swift_endAccess();
  *(v8 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_defaultAge) = a2;
  v13 = (v8 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_dateGenerator);
  *v13 = a3;
  v13[1] = a4;
  return v8;
}

uint64_t sub_1BA150AEC()
{
  type metadata accessor for CalendarPickerTableViewCell();
  sub_1BA15110C(0, &qword_1EBBE9710, type metadata accessor for CalendarPickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA150BF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA150C54(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  return sub_1BA0970B4;
}

uint64_t sub_1BA150CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A17D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1E6969AE8];
  sub_1BA151A10(0, &unk_1EDC6AE30, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v23[-v15];
  v17 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar;
  swift_beginAccess();
  sub_1BA152030(v1 + v17, v16, &unk_1EDC6AE30, v8);
  v18 = sub_1BA4A18A8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    return (*(v19 + 32))(a1, v16, v18);
  }

  v20 = v16;
  v21 = MEMORY[0x1E6969AE8];
  sub_1BA151230(v20, &unk_1EDC6AE30, MEMORY[0x1E6969AE8]);
  (*(v4 + 104))(v7, *MEMORY[0x1E6969868], v3);
  sub_1BA4A17E8();
  (*(v4 + 8))(v7, v3);
  (*(v19 + 16))(v12, a1, v18);
  (*(v19 + 56))(v12, 0, 1, v18);
  swift_beginAccess();
  sub_1BA15209C(v12, v1 + v17, &unk_1EDC6AE30, v21);
  return swift_endAccess();
}

uint64_t BirthdayPickerItem.init(initialValue:defaultAge:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar;
  v10 = sub_1BA4A18A8();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue;
  v12 = sub_1BA4A1148();
  (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
  swift_beginAccess();
  sub_1BA15209C(a1, v4 + v11, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_defaultAge) = a2;
  v13 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_dateGenerator);
  *v13 = a3;
  v13[1] = a4;
  return v4;
}

uint64_t sub_1BA15110C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for BirthdayPickerItem(uint64_t a1)
{
  result = qword_1EBBECAB8;
  if (!qword_1EBBECAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BirthdayPickerItem.deinit()
{
  sub_1B9FAB600(v0 + 16);
  sub_1BA151230(v0 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar, &unk_1EDC6AE30, MEMORY[0x1E6969AE8]);
  sub_1BA151230(v0 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue, &qword_1EBBEA478, MEMORY[0x1E6968278]);

  return v0;
}

uint64_t sub_1BA151230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA151A10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t BirthdayPickerItem.__deallocating_deinit()
{
  sub_1B9FAB600(v0 + 16);
  sub_1BA151230(v0 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar, &unk_1EDC6AE30, MEMORY[0x1E6969AE8]);
  sub_1BA151230(v0 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue, &qword_1EBBEA478, MEMORY[0x1E6968278]);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1513C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t BirthdayPickerItem.initialDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_1BA4A1728();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A1898();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A18A8();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA151A10(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v44 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v43 - v18;
  v20 = MEMORY[0x1E6968278];
  sub_1BA151A10(0, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v43 - v23;
  v25 = sub_1BA4A1148();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue;
  swift_beginAccess();
  sub_1BA152030(v2 + v30, v24, &qword_1EBBEA478, v20);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1BA151230(v24, &qword_1EBBEA478, MEMORY[0x1E6968278]);
    v32 = v50;
    v31 = v51;
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
    sub_1BA150CE8(v12);
    sub_1BA4A1838();
    (*(v52 + 8))(v12, v53);
    (*(v26 + 8))(v29, v25);
    v32 = v50;
    v31 = v51;
    if ((*(v50 + 48))(v19, 1, v51) != 1)
    {
      return (*(v32 + 32))(v49, v19, v31);
    }

    sub_1BA151230(v19, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  }

  v33 = v2;
  sub_1BA150CE8(v12);
  v35 = v47;
  v34 = v48;
  v36 = v12;
  v37 = v46;
  result = (*(v47 + 104))(v46, *MEMORY[0x1E6969A68], v48);
  if (__OFSUB__(0, *(v33 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_defaultAge)))
  {
    __break(1u);
  }

  else
  {
    v39 = *(v33 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_dateGenerator);
    v40 = v45;
    v50 = *(v33 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_dateGenerator + 8);
    v51 = v39;
    (v39)(result);
    v41 = v44;
    sub_1BA4A1848();
    (*(v32 + 8))(v40, v31);
    (*(v35 + 8))(v37, v34);
    (*(v52 + 8))(v36, v53);
    v42 = *(v32 + 48);
    if (v42(v41, 1, v31) == 1)
    {
      v51();
      result = v42(v41, 1, v31);
      if (result != 1)
      {
        return sub_1BA151230(v41, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      }
    }

    else
    {
      return (*(v32 + 32))(v49, v41, v31);
    }
  }

  return result;
}

void sub_1BA151A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA151AB8(uint64_t a1)
{
  v2 = v1;
  v24[1] = a1;
  v25 = MEMORY[0x1E6968278];
  sub_1BA151A10(0, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v24 - v5;
  v7 = sub_1BA4A18A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A1148();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA150CE8(v11);
  v17 = sub_1BA4A1818();
  (*(v8 + 8))(v11, v7);
  v18 = sub_1BA4A16B8();
  v19 = [v17 hk:v18 dateOfBirthDateComponentsWithDate:?];

  sub_1BA4A1108();
  (*(v13 + 16))(v6, v16, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue;
  swift_beginAccess();
  sub_1BA15209C(v6, v2 + v20, &qword_1EBBEA478, v25);
  swift_endAccess();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(v2, v16, ObjectType, v21);
    swift_unknownObjectRelease();
  }

  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_1BA151DB4()
{
  result = qword_1EBBECAB0;
  if (!qword_1EBBECAB0)
  {
    type metadata accessor for BirthdayPickerItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECAB0);
  }

  return result;
}

void sub_1BA151E28(uint64_t a1)
{
  sub_1BA151A10(319, &unk_1EDC6AE30, MEMORY[0x1E6969AE8]);
  if (v1 <= 0x3F)
  {
    sub_1BA151A10(319, &qword_1EBBEA478, MEMORY[0x1E6968278]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1BA152030(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA151A10(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA15209C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA151A10(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void PDFPageBreak.render(context:document:)(void *a1, uint64_t a2)
{
  PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = *(a2 + 120);
  if (v4)
  {
    v5 = &unk_1EBBE8000;
    v6 = &OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView;
    v33 = xmmword_1BA4C0AD0;
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v7 == *(a2 + 104))
      {
        if (*(a2 + 201))
        {
          if (v7 >= 2)
          {
            type metadata accessor for PDFBuilder.Document();
            v18 = 1;
            do
            {
              swift_initStackObject();
              v19 = sub_1BA20F244(a2);
              *(v19 + 168) = PDFBuilder.Document.bodyBox.getter();
              *(v19 + 176) = v20;
              *(v19 + 184) = v21;
              *(v19 + 192) = v22;
              *(v19 + 200) = 0;
              v38.origin.x = PDFBuilder.Document.bodyBox.getter();
              v23 = (CGRectGetWidth(v38) + (*(a2 + 104) + -1.0) * -36.0) / *(a2 + 104) * v18 + 18.0;
              v39.origin.x = PDFBuilder.Document.drawingContext.getter();
              x = v39.origin.x;
              y = v39.origin.y;
              width = v39.size.width;
              height = v39.size.height;
              v28 = CGRectGetMinX(v39) + v23;
              v40.origin.x = x;
              v40.origin.y = y;
              v40.size.width = width;
              v40.size.height = height;
              v29 = CGRectGetMinY(v40) + 0.0;
              v41.origin.x = x;
              v41.origin.y = y;
              v41.size.width = width;
              v41.size.height = height;
              v30 = CGRectGetWidth(v41) - v23;
              v42.origin.x = x;
              v42.origin.y = y;
              v42.size.width = width;
              v42.size.height = height;
              v31 = CGRectGetHeight(v42);
              *(v19 + 168) = v28;
              *(v19 + 176) = v29;
              *(v19 + 184) = v30;
              *(v19 + 192) = v31;
              *(v19 + 200) = 0;
              if (*(a2 + 112) == 1)
              {
                if (v5[141] != -1)
                {
                  swift_once();
                }

                v32 = [v6[80] CGColor];
                v34 = v33;
                v35 = v32;
                PDFVerticalSeparator.render(context:document:)(a1, v19);
              }

              else
              {
              }

              ++v18;
            }

            while (v18 - v4 != 1);
          }

          [a1 beginPage];
          v8 = *(a2 + 160);
          v9 = __OFADD__(v8, 1);
          v10 = v8 + 1;
          if (v9)
          {
            goto LABEL_25;
          }

          *(a2 + 160) = v10;
          type metadata accessor for PDFBuilder.Document();
          swift_allocObject();
          v11 = sub_1BA20F244(a2);
          v12 = *(v11 + 48);
          *(v11 + 168) = *(v11 + 32);
          *(v11 + 184) = v12;
          *(v11 + 200) = 0;
          v13 = *(a2 + 208);
          v14 = *(v13 + 16);
          if (v14)
          {
            v15 = v13 + 32;

            do
            {
              sub_1B9F0A534(v15, &v34);
              v16 = v36;
              v17 = v37;
              __swift_project_boxed_opaque_existential_1(&v34, v36);
              (*(v17 + 16))(a1, v11, v16, v17);
              __swift_destroy_boxed_opaque_existential_1(&v34);
              v15 += 40;
              --v14;
            }

            while (v14);

            v5 = &unk_1EBBE8000;
          }

          else
          {
          }

          *(a2 + 120) = 0;
          sub_1BA20F060();
          sub_1BA20DE40(a1);
          v6 = &OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView;
        }
      }

      else
      {
        *(a2 + 120) = v7;
        sub_1BA20F060();
      }

      v4 = *(a2 + 120);
      if (!v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }
}

void PDFPageBreak.boundingRectForContent(in:)(uint64_t a1, __n128 a2)
{
  v7.origin.x = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(v7);
  CGRectGetHeight(*(a1 + 168));
  v3 = *(a1 + 120);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(a1 + 104);
  if (v3 + 1 == v4)
  {
    return;
  }

  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
    goto LABEL_8;
  }

  if (__OFSUB__(v6, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8.size.width = *(a1 + 16);
  v8.size.height = *(a1 + 24);
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  CGRectGetHeight(v8);
}

void DataTypeDetailDescriptionCell.Item.init(typeText:summaryText:attributionText:hasAttributionLink:baseIdentifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25 = a7;
  v26 = a8;
  v16 = sub_1BA4A1798();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a9 + 32) = a1;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  v21 = v26;
  *(a9 + 16) = v25;
  *(a9 + 24) = v21;
  v27 = 0x5F6D657449;
  v28 = 0xE500000000000000;
  v22 = a5;
  sub_1BA4A1788();
  sub_1B9F2AA14(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v23 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v23);

  (*(v17 + 8))(v20, v16);

  v24 = v28;
  *a9 = v27;
  *(a9 + 8) = v24;
}

uint64_t DataTypeDetailDescriptionCell.Item.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void DataTypeDetailDescriptionCell.Item.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t DataTypeDetailDescriptionCell.Item.baseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void DataTypeDetailDescriptionCell.Item.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t DataTypeDetailDescriptionCell.Item.typeText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void DataTypeDetailDescriptionCell.Item.typeText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t DataTypeDetailDescriptionCell.Item.summaryText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void DataTypeDetailDescriptionCell.Item.summaryText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void *DataTypeDetailDescriptionCell.Item.attributionText.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t DataTypeDetailDescriptionCell.Item.reuseIdentifier.getter()
{
  type metadata accessor for DataTypeDetailDescriptionCell();
  sub_1BA152A50();
  return sub_1BA4A6808();
}

unint64_t sub_1BA152A50()
{
  result = qword_1EDC6C318;
  if (!qword_1EDC6C318)
  {
    type metadata accessor for DataTypeDetailDescriptionCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC6C318);
  }

  return result;
}

uint64_t DataTypeDetailDescriptionCell.Item.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  sub_1BA4A68C8();
  sub_1BA4A84A8();
  if (v2)
  {
    sub_1BA4A68C8();
  }

  sub_1BA4A68C8();
  sub_1BA4A68C8();
  if (v3)
  {
    sub_1BA4A84A8();
    v5 = v3;
    sub_1BA4A77A8();

    if (v4 == 2)
    {
      return sub_1BA4A84A8();
    }
  }

  else
  {
    sub_1BA4A84A8();
    if (v4 == 2)
    {
      return sub_1BA4A84A8();
    }
  }

  sub_1BA4A84A8();
  return sub_1BA4A84A8();
}

uint64_t DataTypeDetailDescriptionCell.Item.hashValue.getter()
{
  sub_1BA4A8488();
  DataTypeDetailDescriptionCell.Item.hash(into:)(v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA152C08()
{
  type metadata accessor for DataTypeDetailDescriptionCell();
  sub_1BA152A50();
  return sub_1BA4A6808();
}

uint64_t sub_1BA152C64()
{
  sub_1BA4A8488();
  DataTypeDetailDescriptionCell.Item.hash(into:)(v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA152CA8(uint64_t a1)
{
  sub_1BA4A8488();
  DataTypeDetailDescriptionCell.Item.hash(into:)(v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA152CE4(uint64_t a1)
{
  v2 = sub_1BA1553B8();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

char *sub_1BA152D34()
{
  v1 = sub_1BA4A64F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell____lazy_storage___textView;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell____lazy_storage___textView);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell____lazy_storage___textView);
LABEL_5:
    v14 = v7;
    return v8;
  }

  v9 = [objc_allocWithZone(type metadata accessor for CoreTextView()) init];
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_delegate + 8] = &off_1F3809010;
  v10 = v0;
  swift_unknownObjectWeakAssign();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v5 = sub_1BA4A7308();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v11 = sub_1BA4A6528();
  result = (*(v2 + 8))(v5, v1);
  if (v11)
  {
    v13 = *(v10 + v6);
    *(v10 + v6) = v9;
    v8 = v9;

    v7 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA152ED8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA1537C0();
  return sub_1B9F43E50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

uint64_t sub_1BA152F74@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA152FCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA1537C0();
  return sub_1B9F43E50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

void (*sub_1BA153064(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1530C8;
}

void sub_1BA1530C8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA1537C0();
  }
}

id sub_1BA1530FC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell____lazy_storage___textView] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_textInsets];
  __asm { FMOV            V0.2D, #16.0 }

  *v9 = _Q0;
  *(v9 + 1) = _Q0;
  v15 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item];
  v16 = type metadata accessor for DataTypeDetailDescriptionCell();
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v32.receiver = v4;
  v32.super_class = v16;
  v17 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = [v17 contentView];
  v19 = sub_1BA152D34();
  [v18 addSubview_];

  v20 = [v17 contentView];
  v21 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v20 setBackgroundColor_];

  v22 = *MEMORY[0x1E69796E8];
  v23 = [v17 layer];
  [v23 setCornerCurve_];

  v24 = [v17 layer];
  [v24 setCornerRadius_];

  v25 = [v17 layer];
  [v25 setMaskedCorners_];

  [v17 setClipsToBounds_];
  sub_1BA15534C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B5460;
  v27 = sub_1BA4A4858();
  v28 = MEMORY[0x1E69DC2B0];
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  v29 = sub_1BA4A4438();
  v30 = MEMORY[0x1E69DC130];
  *(v26 + 48) = v29;
  *(v26 + 56) = v30;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7708();

  swift_unknownObjectRelease();

  return v17;
}

void sub_1BA1533E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BA1537C0();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 invalidateIntrinsicContentSize];
  }
}

void sub_1BA153678(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    MEMORY[0x1BFAF1350](0x706972637365442ELL, 0xEC0000006E6F6974);
    v3 = sub_1BA4A6758();

    [v2 setAccessibilityIdentifier_];

    v4 = sub_1BA152D34();

    MEMORY[0x1BFAF1350](0x656956747865542ELL, 0xE900000000000077);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v5 = sub_1BA152D34();
    [v5 setAccessibilityIdentifier_];
  }
}

void sub_1BA1537C0()
{
  v1 = v0;
  v2 = sub_1BA4A64F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = sub_1BA4A3EA8();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v7);
  v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v131 = (&v123 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v123 - v15;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v17[v1], v153);
  if (!v153[3])
  {
LABEL_36:
    sub_1B9F43E50(v153, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    goto LABEL_37;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (swift_dynamicCast())
  {
    v137 = v145;
    v135 = v146;
    v138 = v147;
    v18 = v149;
    v136 = v148;
    v19 = v150;
    v142 = v151;
    LODWORD(v132) = v152;
    v143 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
    v20 = *MEMORY[0x1E69DDCF8];
    v140 = objc_opt_self();
    v21 = [v140 preferredFontDescriptorWithTextStyle:v20 compatibleWithTraitCollection:0];
    v139 = v6;
    v141 = v19;
    v130 = v9;
    if (v21)
    {
      v22 = v21;
      v23 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v24 = v20;
      v25 = sub_1BA4A3E88();
      v26 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v126 = v2;
        v28 = v27;
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v153[0] = v129;
        *v28 = 136315906;
        v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v31 = sub_1B9F0B82C(v29, v30, v153);
        v125 = v3;
        v32 = v31;

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v144 = 0;
        LOBYTE(v145) = 1;
        sub_1BA15534C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v33 = sub_1BA4A6808();
        v35 = sub_1B9F0B82C(v33, v34, v153);

        *(v28 + 14) = v35;
        *(v28 + 22) = 2080;
        LODWORD(v144) = 0;
        type metadata accessor for SymbolicTraits(0);
        v36 = sub_1BA4A6808();
        v38 = sub_1B9F0B82C(v36, v37, v153);

        *(v28 + 24) = v38;
        v3 = v125;
        *(v28 + 32) = 2112;
        v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v28 + 34) = v39;
        v40 = v128;
        *v128 = v39;
        _os_log_impl(&dword_1B9F07000, v25, v26, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v28, 0x2Au);
        sub_1B9F43E50(v40, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v40, -1, -1);
        v41 = v129;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v41, -1, -1);
        v42 = v28;
        v2 = v126;
        MEMORY[0x1BFAF43A0](v42, -1, -1);
      }

      (*(v133 + 8))(v16, v134);
      v22 = [v140 preferredFontDescriptorWithTextStyle_];
      v23 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
      v19 = v141;
    }

    v43 = v23;

    v44 = objc_opt_self();
    v45 = [v44 labelColor];
    v46 = sub_1BA15540C(v18, v19, v43, v45);

    [v143 appendAttributedString_];
    v47 = &selRef_didTapSave_;
    v48 = v142;
    if (v142)
    {
      v49 = v142;
      if ([v49 length] >= 1)
      {
        v128 = v46;
        if (v132 == 2 || (v132 & 1) == 0)
        {
          v50 = &selRef_secondaryLabelColor;
        }

        else
        {
          v50 = &selRef_linkColor;
        }

        v51 = [v44 *v50];
        v52 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        v53 = v49;
        v54 = *MEMORY[0x1E69DB650];
        v127 = v53;
        v55 = [v53 length];
        v129 = v52;
        v132 = v51;
        [v52 addAttribute:v54 value:v51 range:{0, v55}];
        v56 = [v140 preferredFontDescriptorWithTextStyle:v20 compatibleWithTraitCollection:0];
        if (v56)
        {
          v57 = v56;
          v58 = [objc_opt_self() fontWithDescriptor:v56 size:0.0];
          v59 = v140;
        }

        else
        {
          v60 = v131;
          sub_1BA4A3DD8();
          v61 = v20;
          v62 = sub_1BA4A3E88();
          v63 = sub_1BA4A6FB8();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v126 = v2;
            v65 = v64;
            v124 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v153[0] = v66;
            *v65 = 136315906;
            v67 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v69 = sub_1B9F0B82C(v67, v68, v153);
            v125 = v3;
            v70 = v69;

            *(v65 + 4) = v70;
            *(v65 + 12) = 2080;
            v144 = 0;
            LOBYTE(v145) = 1;
            sub_1BA15534C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
            v71 = sub_1BA4A6808();
            v73 = sub_1B9F0B82C(v71, v72, v153);

            *(v65 + 14) = v73;
            *(v65 + 22) = 2080;
            LODWORD(v144) = 0;
            type metadata accessor for SymbolicTraits(0);
            v74 = sub_1BA4A6808();
            v76 = sub_1B9F0B82C(v74, v75, v153);

            *(v65 + 24) = v76;
            v3 = v125;
            *(v65 + 32) = 2112;
            v77 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
            *(v65 + 34) = v77;
            v78 = v124;
            *v124 = v77;
            _os_log_impl(&dword_1B9F07000, v62, v63, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v65, 0x2Au);
            sub_1B9F43E50(v78, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
            MEMORY[0x1BFAF43A0](v78, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v66, -1, -1);
            v79 = v65;
            v2 = v126;
            MEMORY[0x1BFAF43A0](v79, -1, -1);

            (*(v133 + 8))(v131, v134);
          }

          else
          {

            (*(v133 + 8))(v60, v134);
          }

          v59 = v140;
          v57 = [v140 preferredFontDescriptorWithTextStyle_];
          v58 = [objc_opt_self() fontWithDescriptor:v57 size:0.0];
        }

        v80 = v58;

        v81 = [v44 labelColor];
        v82 = sub_1BA15540C(10, 0xE100000000000000, v80, v81);

        [v143 appendAttributedString_];
        v83 = *MEMORY[0x1E69DDD80];
        v84 = [v59 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
        if (v84)
        {
          v85 = v84;
          v86 = v3;
          v87 = [objc_opt_self() fontWithDescriptor:v84 size:0.0];
        }

        else
        {
          v88 = v130;
          sub_1BA4A3DD8();
          v89 = v83;
          v90 = sub_1BA4A3E88();
          v91 = sub_1BA4A6FB8();

          v86 = v3;
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v126 = v2;
            v93 = v92;
            v131 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v153[0] = v94;
            *v93 = 136315906;
            v95 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            LODWORD(v125) = v91;
            v97 = sub_1B9F0B82C(v95, v96, v153);

            *(v93 + 4) = v97;
            *(v93 + 12) = 2080;
            v144 = 0;
            LOBYTE(v145) = 1;
            sub_1BA15534C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
            v98 = sub_1BA4A6808();
            v100 = sub_1B9F0B82C(v98, v99, v153);

            *(v93 + 14) = v100;
            *(v93 + 22) = 2080;
            LODWORD(v144) = 0;
            type metadata accessor for SymbolicTraits(0);
            v101 = sub_1BA4A6808();
            v103 = sub_1B9F0B82C(v101, v102, v153);

            *(v93 + 24) = v103;
            *(v93 + 32) = 2112;
            v104 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
            *(v93 + 34) = v104;
            v105 = v131;
            *v131 = v104;
            _os_log_impl(&dword_1B9F07000, v90, v125, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v93, 0x2Au);
            sub_1B9F43E50(v105, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
            MEMORY[0x1BFAF43A0](v105, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v94, -1, -1);
            v106 = v93;
            v2 = v126;
            MEMORY[0x1BFAF43A0](v106, -1, -1);
          }

          (*(v133 + 8))(v88, v134);
          v85 = [v140 preferredFontDescriptorWithTextStyle_];
          v87 = [objc_opt_self() fontWithDescriptor:v85 size:0.0];
        }

        v107 = v87;

        v108 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v109 = v129;
        v49 = [v108 initWithAttributedString_];
        [v49 addAttribute:*MEMORY[0x1E69DB648] value:v107 range:{0, objc_msgSend(v109, sel_length)}];

        v47 = &selRef_didTapSave_;
        [v143 appendAttributedString_];

        v3 = v86;
        v46 = v128;
      }

      v48 = v142;
    }

    v110 = [v1 traitCollection];
    v111 = [v110 horizontalSizeClass];

    if (v111 == 1)
    {
      v17 = sub_1BA152D34();
      v112 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
      swift_beginAccess();
      *&v17[v112] = 1;
      sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
      v113 = sub_1BA4A7308();
      v47 = v139;
      *v139 = v113;
      (*(v3 + 104))(v47, *MEMORY[0x1E69E8020], v2);
      LOBYTE(v112) = sub_1BA4A6528();
      v114 = *(v3 + 8);
      v3 += 8;
      v114(v47, v2);
      if (v112)
      {
LABEL_34:
        [v17 setNeedsLayout];
        [v17 invalidateIntrinsicContentSize];

        v119 = sub_1BA152D34();
        v120 = v143;
        v121 = v143;
        sub_1BA22A980(v120);

        sub_1BA153678(v135, v138);
        [v1 invalidateIntrinsicContentSize];

        return;
      }

      __break(1u);
    }

    if ([v143 v47[448]] <= 500)
    {
      v115 = 1;
    }

    else
    {
      v115 = 2;
    }

    v17 = sub_1BA152D34();
    v116 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
    swift_beginAccess();
    *&v17[v116] = v115;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v117 = sub_1BA4A7308();
    v118 = v139;
    *v139 = v117;
    (*(v3 + 104))(v118, *MEMORY[0x1E69E8020], v2);
    LOBYTE(v116) = sub_1BA4A6528();
    (*(v3 + 8))(v118, v2);
    if (v116)
    {
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  v144 = 0;
  v145 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v153[0] = 0x6D65746920646162;
  v153[1] = 0xEF203A646E696B20;
  sub_1B9F68124(&v17[v1], &v144);
  sub_1B9F0D1B0(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
  v122 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v122);

  sub_1BA4A8018();
  __break(1u);
}

id DataTypeDetailDescriptionCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailDescriptionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA154A40()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_1BA4A1548();
    sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
    v3 = sub_1BA4A6618();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }
}

uint64_t DataTypeDetailDescriptionCell.description.getter()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v1, v13);
  if (v13[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    if (swift_dynamicCast())
    {
      v9 = 0xE000000000000000;
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](60, 0xE100000000000000);
      v13[0] = swift_getObjectType();
      sub_1BA152A50();
      v2 = sub_1BA4A6808();
      MEMORY[0x1BFAF1350](v2);

      MEMORY[0x1BFAF1350](32, 0xE100000000000000);
      v13[0] = v0;
      sub_1BA4A7FB8();
      MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EDC00);

      MEMORY[0x1BFAF1350](v10, v11);

      MEMORY[0x1BFAF1350](0xD000000000000018, 0x80000001BA4EDC20);
      v13[0] = v12;
      sub_1B9F0D1B0(0, &qword_1EDC6B578, &qword_1EDC6B580, 0x1E696AAB0, sub_1B9F0ADF8);
      v3 = v12;
      v4 = sub_1BA4A6808();
      MEMORY[0x1BFAF1350](v4);

      MEMORY[0x1BFAF1350](62, 0xE100000000000000);

      return 0;
    }
  }

  else
  {
    sub_1B9F43E50(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
  }

  v9 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  MEMORY[0x1BFAF1350](60, 0xE100000000000000);
  swift_getObjectType();
  sub_1BA152A50();
  v6 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v6);

  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  v8 = v0;
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0x203A6D65746920, 0xE700000000000000);
  sub_1B9F68124(v0 + v1, &v8);
  sub_1B9F0D1B0(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
  v7 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v7);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return v13[0];
}